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


static void vector_reorganize(uv_vector_st *this) {
	// reorganizes the vector so that all values are in increasing order
	for (uint16_t i = 1; i < uv_vector_size(this); i++) {
		uint16_t ival = *((uint16_t*) uv_vector_at(this, i));
		for (uint16_t j = 0; j < i; j++) {
			uint16_t jval = *((uint16_t*) uv_vector_at(this, j));
			if (ival < jval) {
				uv_vector_remove(this, i, 1);
				uv_vector_insert(this, j, &ival);
				break;
			}
		}
	}
}


void measurement_init(measurement_st *this, measurement_conf_st *conf) {
	this->conf = conf;
	uv_moving_aver_init(&this->rel_width_aver, 10);
	this->width_calib_length = 0;
	this->calib_req = 0;
	this->last_calib_req = 0;
	this->add_req = 0;
	this->clear_req = 0;
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


void measurement_reset(measurement_conf_st *this) {
	this->width_prefs.width1_min = 0;
	this->width_prefs.width1_max = 5000;
	this->width_prefs.width2_min = 0;
	this->width_prefs.width2_max = 5000;
	uv_vector_init(&this->widths, this->width_buffer,
			WIDTH_LOOK_UP_TABLE_SIZE, sizeof(this->width_buffer[0]));
	uv_vector_init(&this->rel_widths, this->rel_width_buffer,
			WIDTH_LOOK_UP_TABLE_SIZE, sizeof(this->rel_width_buffer[0]));

}

void measurement_step(measurement_st *this, uint16_t step_ms,
		int32_t raw_data1, int32_t raw_data2) {

	this->width_raw1 = raw_data1;
	this->width_raw2 = raw_data2;
	// first calculate the relative value from min & max widths
	int32_t rel1 = abs(uv_reli(raw_data1, this->conf->width_prefs.width1_min, this->conf->width_prefs.width1_max));
	int32_t rel2 = abs(uv_reli(raw_data2, this->conf->width_prefs.width2_min, this->conf->width_prefs.width2_max));
	if (rel1 < 0) {
		rel1 = 0;
	}
	else if (rel1 > 1000) {
		rel1 = 1000;
	}
	else {

	}
	if (rel2 < 0) {
		rel2 = 0;
	}
	else if (rel2 > 1000) {
		rel2 = 0;
	}
	else {

	}
	// sum up the relative widths
	uint16_t rel_value = (rel1 + rel2) / 2;
	rel_value = uv_moving_aver_step(&this->rel_width_aver, rel_value);
	this->width_rel = rel_value;


	if (this->calib_req) {
		// calibration started
		if (!this->last_calib_req) {
			this->calib_len_um = 0;
		}
		// continue with the calibration
		this->calib_len_um += feed_get_len_um(&dev.feed) - this->last_len_um;
		if (this->calib_len_um > (CALIB_DELTA_LENGTH_MM * 1000)) {
			this->calib_len_um = 0;
			printf("added %u\n", rel_value);
			// add new relative calib point
			uv_vector_push_back(&this->conf->rel_widths, &rel_value);
		}


	}
	else if (!this->calib_req && this->last_calib_req) {
		// calibration sequence was finished,
		// reorganize the vectors
		vector_reorganize(&this->conf->widths);
		vector_reorganize(&this->conf->rel_widths);

		// mare sure there's same amount of values in the vectors
		int16_t diff = uv_vector_size(&this->conf->widths) - uv_vector_size(&this->conf->rel_widths);
		if (diff > 0) {
			// more values in widths
			uint16_t scale = uv_vector_size(&this->conf->widths) / (diff + 1);
			for (uint16_t i = 0; i < diff; i++) {
				uint16_t del = (i + 1) * scale;
				if (del < uv_vector_size(&this->conf->widths) - 1 &&
						del > 0) {
					uv_vector_remove(&this->conf->widths, del, 1);
				}
				else if (uv_vector_size(&this->conf->widths) != 0) {
					uv_vector_remove(&this->conf->widths,
							uv_vector_size(&this->conf->widths) / 2, 1);
				}
				else {
					break;
				}
			}
		}
		else if (diff < 0) {
			diff *= -1;
			// more values in rel widths
			uint16_t scale = uv_vector_size(&this->conf->rel_widths) / (diff + 1);
			for (uint16_t i = 0; i < diff; i++) {
				uint16_t del = (i + 1) * scale;
				if (del < uv_vector_size(&this->conf->rel_widths) - 1 &&
						del > 0) {
					uv_vector_remove(&this->conf->rel_widths, del, 1);
				}
				else if (uv_vector_size(&this->conf->rel_widths) != 0) {
					uv_vector_remove(&this->conf->rel_widths,
							uv_vector_size(&this->conf->rel_widths) / 2, 1);
				}
				else {
					break;
				}
			}
		}
		else {
			// same amount of values, do nothing
		}
		// lastly save the settings
		uv_memory_save();


	}
	if (this->clear_req) {
		uv_vector_clear(&this->conf->rel_widths);
		uv_vector_clear(&this->conf->widths);
		this->clear_req = 0;
	}
	else if (this->add_req) {
		uv_vector_push_back(&this->conf->widths, &this->add_req);
		this->add_req = 0;
	}
	else if (this->calib_min_req) {
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

		if (this->calib_req) {
			ret = 0;
		}
		else {
			// two points is the minimum
				// widths and relative widths MUST have same amount of points
			if ((uv_vector_size(&this->conf->widths) >= 2) &&
					(uv_vector_size(&this->conf->widths) == uv_vector_size(&this->conf->rel_widths))) {

				int16_t rel_d1, rel_d2;
				// find nearest smaller value
				for (rel_d1 = uv_vector_size(&this->conf->rel_widths) - 1; rel_d1 >= 0; rel_d1--) {
					if (rel_value > *((uint16_t*) uv_vector_at(&this->conf->rel_widths, rel_d1))) {
						break;
					}
				}
				// find nearest bigger value
				for (rel_d2 = 0; rel_d2 < uv_vector_size(&this->conf->rel_widths); rel_d2++) {
					if (rel_value < *((uint16_t*) uv_vector_at(&this->conf->rel_widths, rel_d2))) {
						break;
					}
				}
				// bigger values than the biggest found point are ignored and the biggest point value is returned
				if (rel_value >= *((int16_t*) uv_vector_at(&this->conf->rel_widths,
						uv_vector_size(&this->conf->rel_widths) - 1))) {
					ret = *((int16_t*) uv_vector_at(&this->conf->widths,
							uv_vector_size(&this->conf->rel_widths) - 1));
				}
				// smaller values than the smallest point return the smallest point value
				else if (rel_value <= *((int16_t*) uv_vector_at(&this->conf->rel_widths, 0))) {
					ret = *((int16_t*) uv_vector_at(&this->conf->widths, 0));
				}
				else {
					// now we should have the two smallest distance indexes
					// get the k value from those two points
					int32_t k = uv_reli(rel_value, *((int16_t*) uv_vector_at(&this->conf->rel_widths, rel_d1)),
							*((int16_t*) uv_vector_at(&this->conf->rel_widths, rel_d2)));

					// linearly interpolate with k from those points' widths
					ret = uv_lerpi(k, *((int16_t*) uv_vector_at(&this->conf->widths, rel_d1)),
							*((int16_t*) uv_vector_at(&this->conf->widths, rel_d2)));

					if (ret < *((int16_t*) uv_vector_at(&this->conf->widths, rel_d1))) {
						ret = *((int16_t*) uv_vector_at(&this->conf->widths, rel_d1));
					}
					else if (ret > *((int16_t*) uv_vector_at(&this->conf->widths, rel_d2))) {
						ret = *((int16_t*) uv_vector_at(&this->conf->widths,rel_d2));
					}
					else {

					}
				}
			}
		}
		this->width_mm = (this->calib_req) ? 0 : ret;
	}
	this->last_calib_req = this->calib_req;

	// volume
	if (this->volume_reset_req) {
		this->volume_reset_req = 0;
		this->volume_dm3 = 0;
		uv_eeprom_write(&this->volume_dm3, sizeof(this->volume_dm3), VOLUME_EEPROM_ADDR);
	}
	int32_t len_um = feed_get_len_um(&dev.feed) - this->last_len_um;
	int32_t vol_cm3 = (int64_t) len_um * (this->width_mm / 2) * (this->width_mm / 2) * 3141 / 1000000000;
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









