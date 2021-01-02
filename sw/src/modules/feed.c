/* 
 * This file is part of the uv_hal distribution (www.usevolt.fi).
 * Copyright (c) 2017 Usevolt Oy.
 * 
 * This program is free software: you can redistribute it and/or modify  
 * it under the terms of the GNU General Public License as published by  
 * the Free Software Foundation, version 3.
 *
 * This program is distributed in the hope that it will be useful, but 
 * WITHOUT ANY WARRANTY; without even the implied warranty of 
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU 
 * General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License 
 * along with this program. If not, see <http://www.gnu.org/licenses/>.
*/





#include "feed.h"
#include "can_icu.h"
#include "main.h"
#include "pin_mappings.h"
#include "saw.h"
#include "tilt.h"
#include "feedopen.h"
#include "measurement.h"
#include <string.h>

#define FEEDOPEN_DELAY_OFF_MS		1000
#define FEEDOPEN_DELAY_ON_MS		60
#define LEN_CALIB_DEF				66


#define GET_FEEDOPEN_TIME(this) ((this->feedopen_state == FEED_FEEDOPEN_STATE_ON) ? \
						this->conf->feedopen_on_time_ms : this->conf->feedopen_off_time_ms)

static const icu_feed_fl_st fl_def[FEED_FL_COUNT] = {
		{
				.dist_mm = 500,
				.max_speed = INPUT_MAX_REQ
		},
		{
				.dist_mm = 10,
				.max_speed = 75
		},
		{
				.dist_mm = 5,
				.max_speed = 35
		}
};


void feed_conf_reset(feed_conf_st *this) {
	this->out_conf.acc = ICU_CONF_ACC_MAX;
	this->out_conf.dec = ICU_CONF_DEC_MAX;
	this->out_conf.invert = true;
	this->out_conf.assembly_invert = false;
	this->out_conf.max_speed_a = ICU_CONF_SPEED_MAX;
	this->out_conf.max_speed_b = ICU_CONF_SPEED_MAX;
	this->feedopen_on_time_ms = FEEDOPEN_DELAY_ON_MS;
	this->feedopen_off_time_ms = FEEDOPEN_DELAY_OFF_MS;
	this->len_calib = LEN_CALIB_DEF;
	memcpy(this->fl, fl_def, sizeof(this->fl));
}


void feed_init(feed_st *this, feed_conf_st *conf_ptr) {
	input_init(&this->input);
	this->conf = conf_ptr;
	this->len_um = 0;
	this->last_len_um = this->len_um;
	this->feed_dir = FEED_DIR_NONE;
	this->target_len_um = 3000000;
	this->len_to_target_mm = this->target_len_um;
	this->state = ICU_FEED_STATE_OFF;
	this->fl_index = 0;
	this->parallel_on = false;
	this->parallel_req = 0;
	this->last_input_dir = 0;

	uv_output_init(&this->series_out, FEED_SENSE, FEED_SERIES,
			VND5050_CURRENT_AMPL_UA, 5000, 8000, SOLENOID_AVG_COUNT,
			ICU_EMCY_FEEDSERIES_OVERCURRENT, ICU_EMCY_FEEDSERIES_FAULT);

	this->feedopen_state = FEED_FEEDOPEN_STATE_ON;
	uv_delay_init(&this->feedopen_delay, this->conf->feedopen_on_time_ms);

	uv_gpio_init_input(LEN1_IN, PULL_UP_ENABLED);
	uv_gpio_init_int(LEN1_IN, INT_BOTH_EDGES);
	uv_gpio_init_input(LEN2_IN, PULL_UP_ENABLED);
	uv_gpio_init_int(LEN2_IN, INT_BOTH_EDGES);

}


#define LEN_CALIB	3
void feed_len_int(feed_st *this, uv_gpios_e gpio) {
	uint8_t len1 = !!uv_gpio_get(LEN1_IN),
			len2 = !!uv_gpio_get(LEN2_IN);
	if (gpio == LEN1_IN) {
		this->len_um += this->conf->len_calib * ((len1 == len2) ? LEN_CALIB : -LEN_CALIB) *
				(this->conf->out_conf.invert ? -1 : 1);
	}
	else if (gpio == LEN2_IN) {
		this->len_um -= this->conf->len_calib * ((len1 == len2) ? LEN_CALIB : -LEN_CALIB) *
				(this->conf->out_conf.invert ? -1 : 1);
	}
	else {

	}
}


#define VOL_MIN_LEN_UM			80000

void feed_clear_len(feed_st *this) {
	// If at least the minimum length is feeded in positive direction,
	// add the volume to the total volume
	if (this->len_um > VOL_MIN_LEN_UM) {
		measurement_add_log_volume(&dev.meas);
	}

	this->len_um = 0;
}


void feed_step(feed_st *this, uint16_t step_ms) {
	input_step(&this->input, step_ms);

	int8_t req = 0;
	bool series_feed = true;

	// update the length to target length all the time
	this->len_to_target_mm = (this->target_len_um - this->len_um) / 1000;


	if (!saw_is_in(&dev.saw)) {
		req = 0;
		this->feed_dir = FEED_DIR_NONE;
	}
	else {
		req = input_get_request(&this->input, &this->conf->out_conf);


		// todo: make parallel feed request toggleable
		if (req == 0) {
			this->parallel_on = false;
		}
		else {
			if (abs(this->parallel_req) > INT8_MAX / 2) {
				this->parallel_on = true;
			}
		}

		// feeding direction
		// todo: implement logic for better direction algorithm
		if (req) {
			if (this->len_um > this->last_len_um) {
				this->feed_dir = FEED_DIR_FORWARD;
			}
			else if (this->len_um < this->last_len_um) {
				this->feed_dir = FEED_DIR_BACKWARD;
			}
			else {
				this->feed_dir = FEED_DIR_STUCK;
			}
		}
		else {
			this->feed_dir = FEED_DIR_NONE;
		}


		// feeding logic
		// the most important thing: always stop if button feed request is not on
		if (req == 0) {
			if (this->state != ICU_FEED_STATE_TARGET_REACHED &&
					this->state != ICU_FEED_STATE_TARGET_UNREACHED) {
				this->state = ICU_FEED_STATE_OFF;
			}
		}
		else {
			if (input_pressed(&this->input)) {
				this->start_len_to_target_mm = this->len_to_target_mm;

				// if the target length was already reached, or we are moving away from target,
				// feeding starts in manual mode
				if ((abs(this->len_to_target_mm) < this->conf->fl[FEED_FL_COUNT - 1].dist_mm) ||
						(this->len_to_target_mm < 0 && req > 0) ||
						(this->len_to_target_mm > 0 && req < 0)) {
					this->state = ICU_FEED_STATE_MANUAL;
				}
				// or if we are pass the target
				// otherwise in normal mode
				else {
					this->state = ICU_FEED_STATE_ON;
					this->fl_index = 0;
				}
			}

			if (this->state == ICU_FEED_STATE_ON) {
				// check if it's time to increase the fuzzy logic level
				if (abs(this->len_to_target_mm) < this->conf->fl[this->fl_index].dist_mm) {
					this->fl_index++;
					// target reached
					if (this->fl_index == FEED_FL_COUNT) {
						this->fl_index--;
						this->state = ICU_FEED_STATE_TARGET_REACHED;
						req = 0;
					}
				}
				else if (this->fl_index != 0 &&
						abs(this->len_to_target_mm) > this->conf->fl[this->fl_index - 1].dist_mm) {
					this->fl_index--;
				}
				else {

				}

				// update request to match the required speed from fuzzy logic
				req = (this->len_to_target_mm < 0) ?
						- this->conf->fl[this->fl_index].max_speed :
						this->conf->fl[this->fl_index].max_speed;
			}
			// dont move when the target was either reached or lost
			else if (this->state == ICU_FEED_STATE_TARGET_REACHED ||
					this->state == ICU_FEED_STATE_TARGET_UNREACHED ||
					this->state == ICU_FEED_STATE_OFF) {
				req = 0;
			}
			else {

			}
		}

		// parallel feeding
		if (allopen_get_request(&dev.allopen)) {
			series_feed = false;
		}

		if (req != 0) {
			this->last_input_dir = req;
		}


		// close feeders while feeding
		if (req) {
			// if feedopen on time is zero, repowering the accumulator is disabled
			if (this->conf->feedopen_on_time_ms == 0) {
				this->feedopen_state = FEED_FEEDOPEN_STATE_OFF;
			}
			else {
				if (uv_delay(&this->feedopen_delay, step_ms)) {
					// toggle feedopen state
					this->feedopen_state = (this->feedopen_state == FEED_FEEDOPEN_STATE_ON) ?
							FEED_FEEDOPEN_STATE_OFF : FEED_FEEDOPEN_STATE_ON;
					// init delay again
					uv_delay_init(&this->feedopen_delay, GET_FEEDOPEN_TIME(this));
				}
			}

			if (this->feedopen_state == FEED_FEEDOPEN_STATE_ON) {
				feedopen_set_dir_req(&dev.feedopen, DUAL_OUTPUT_NEG);
				remote_valve_set_request(&dev.impl1, this, INPUT_MAX_REQ, &dev.feedopen_conf.out_conf);
			}
			else {
				feedopen_set_dir_req(&dev.feedopen, DUAL_OUTPUT_OFF);
				remote_valve_set_request(&dev.impl1, this, 0, &dev.feedopen_conf.out_conf);
			}
		}
		else {
			if (this->feedopen_state == FEED_FEEDOPEN_STATE_ON) {
				// remote valve request was forgotten on when it should be cleared
				remote_valve_set_request(&dev.impl1, this, 0, &dev.feedopen_conf.out_conf);
			}
			// defaults to OFF state
			this->feedopen_state = FEED_FEEDOPEN_STATE_OFF;
			uv_delay_init(&this->feedopen_delay, this->conf->feedopen_on_time_ms);
		}
	}


	// update last length
	this->last_len_um = this->len_um;


	uv_output_state_e s;
	if (!req) {
		s = OUTPUT_STATE_OFF;
	}
	else {
		s = (series_feed == this->conf->out_conf.assembly_invert) ?
				OUTPUT_STATE_ON : OUTPUT_STATE_OFF;
	}
	uv_output_set(&this->series_out, s);
	uv_output_step(&this->series_out, step_ms);

	remote_valve_set_request(&dev.impl2, this, req, &this->conf->out_conf);

}

