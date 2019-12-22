/*
 * measurement.c
 *
 *  Created on: Oct 16, 2015
 *      Author: usevolt
 */


#include <stdio.h>
#include <stdlib.h>
#include <uv_memory.h>
#include <uv_eeprom.h>
#include "measurement.h"
#include "main.h"



void measurement_init(measurement_st *this, measurement_conf_st *conf) {
	this->conf = conf;
	uv_moving_aver_init(&this->rel_width_aver, 10);
	this->width_calib_length = 0;
	this->calib_min_req = 0;
	this->calib_max_req = 0;
	this->calib_len_um = 0;
	this->last_len_um = 0;
	this->width_raw1 = 0;
	this->width_raw2 = 0;
	this->width_rel = 0;
	uv_eeprom_read(&this->volume_dm3, sizeof(this->volume_dm3), VOLUME_EEPROM_ADDR);
	this->volume_reset_req = 0;
	this->log_volume_cm3 = 0;
}

// default values after reset. These were measured with Lauri Lassila CM_6.3.2
static const uint16_t relw_def[6] = {
		57,
		80,
		251,
		318,
		664,
		915
};

#define RELW_COUNT		(sizeof(relw_def) / sizeof(relw_def[0]))
//static const uint16_t w_def[sizeof(relw_def) / sizeof(relw_def[0])] = {
//		42,
//		60,
//		95,
//		107,
//		185,
//		250
//};
// relative values between min_width_mm & max_width_mm
static const uint16_t w_def[sizeof(relw_def) / sizeof(relw_def[0])] = {
		0,
		86,
		254,
		312,
		687,
		1000
};


void measurement_reset(measurement_conf_st *this) {
	this->width_prefs.width1_min = 0;
	this->width_prefs.width1_max = 5000;
	this->width_prefs.width2_min = 0;
	this->width_prefs.width2_max = 5000;
	this->max_width_mm = 250;
	this->min_width_mm = 40;
}

void measurement_step(measurement_st *this, uint16_t step_ms,
		int32_t raw_data1, int32_t raw_data2) {
	this->width_raw1 = raw_data1;
	this->width_raw2 = raw_data2;

	int32_t rel1 = 0, rel2 = 0;
	rel1 = abs(uv_reli(raw_data1,
			this->conf->width_prefs.width1_min,
			this->conf->width_prefs.width1_max));
	rel2 = abs(uv_reli(raw_data2,
			this->conf->width_prefs.width2_min,
			this->conf->width_prefs.width2_max));

	if (rel1 > 1000) {
		rel1 = 1000;
	}
	if (rel2 > 1000) {
		rel2 = 1000;
	}
	// sum up the relative widths
	uint16_t rel_value = (rel1 + rel2) / 2;
	rel_value = uv_moving_aver_step(&this->rel_width_aver, rel_value);
	this->width_rel = rel_value;


	if (this->calib_min_req) {
		this->conf->width_prefs.width1_min = raw_data1;
		this->conf->width_prefs.width2_min = raw_data2;
		//save settings to the object dictionary
		uv_memory_save();
		this->calib_min_req = 0;
	}
	else if (this->calib_max_req) {
		this->conf->width_prefs.width1_max = raw_data1;
		this->conf->width_prefs.width2_max = raw_data2;
		//save settings to the object dictionary
		uv_memory_save();
		this->calib_max_req = 0;
	}
	else {
		// calculate current width
		int32_t ret = 0;

		int16_t rel_d1, rel_d2;
		// find nearest smaller value
		for (rel_d1 = RELW_COUNT - 1; rel_d1 >= 0; rel_d1--) {
			if (rel_value > relw_def[rel_d1]) {
				break;
			}
		}
		// find nearest bigger value
		for (rel_d2 = 0; rel_d2 < RELW_COUNT; rel_d2++) {
			if (rel_value < relw_def[rel_d2]) {
				break;
			}
		}
		// bigger values than the biggest found point are ignored
		// and the biggest point value is returned
		if (rel_value >= relw_def[RELW_COUNT - 1]) {
			ret = this->conf->max_width_mm;
		}
		// smaller values than the smallest point return the smallest point value
		else if (rel_value <= relw_def[0]) {
			ret = this->conf->min_width_mm;
		}
		else {
			// now we should have the two smallest distance indexes
			// get the k value from those two points
			int32_t k = uv_reli(rel_value, relw_def[rel_d1], relw_def[rel_d2]);

			// linearly interpolate with k from those points' widths to get
			// the geometrically compensated relative value between min & max width
			k = uv_lerpi(k, w_def[rel_d1], w_def[rel_d2]);

			// get the absolute width
			ret = uv_lerpi(k, this->conf->min_width_mm, this->conf->max_width_mm);

			if (ret > this->conf->max_width_mm) {
				ret = this->conf->max_width_mm;
			}
			else if (ret < this->conf->min_width_mm) {
				ret = this->conf->min_width_mm;
			}
			else {

			}
		}
		this->width_mm = ret;
	}

	// volume
	if (this->volume_reset_req) {
		this->volume_reset_req = 0;
		this->volume_dm3 = 0;
		uv_eeprom_write(&this->volume_dm3, sizeof(this->volume_dm3), VOLUME_EEPROM_ADDR);
	}
	int32_t len_um = feed_get_len_um(&dev.feed) - this->last_len_um;
	int32_t vol_cm3 = (int64_t) len_um * (this->width_mm / 2) *
			(this->width_mm / 2) * 3141 / 1000000000;
	this->log_volume_cm3 += vol_cm3;
	if (this->log_volume_cm3 < 0) {
		this->log_volume_cm3 = 0;
	}

	this->last_len_um = feed_get_len_um(&dev.feed);
}


void measurement_add_log_volume(measurement_st *this) {
	int32_t last_vol = this->volume_dm3;

	this->volume_dm3 += this->log_volume_cm3 / 1000;
	// write the volume to EEPROM once per every 10th of cubic meter
	if ((last_vol / 100) != (this->volume_dm3 / 100)) {
		uv_eeprom_write(&this->volume_dm3, sizeof(this->volume_dm3), VOLUME_EEPROM_ADDR);
	}

	this->log_volume_cm3 = 0;
}









