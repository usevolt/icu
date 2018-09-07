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





#include "../../inc/modules/feed.h"
#include "can_icu.h"
#include "main.h"
#include "pin_mappings.h"
#include "saw.h"
#include "tilt.h"
#include "feedopen.h"

#define FEEDOPEN_DELAY_OFF_MS		1000
#define FEEDOPEN_DELAY_ON_MS		60

#define GET_FEEDOPEN_TIME(this) ((this->feedopen_state == FEED_FEEDOPEN_STATE_ON) ? \
						this->conf->feedopen_on_time_ms : this->conf->feedopen_off_time_ms)


void feed_conf_reset(feed_conf_st *this) {
	this->out_conf.acc = ICU_CONF_ACC_MAX;
	this->out_conf.dec = ICU_CONF_DEC_MAX;
	this->out_conf.invert = true;
	this->out_conf.max_speed_a = ICU_CONF_SPEED_MAX;
	this->out_conf.max_speed_b = ICU_CONF_SPEED_MAX;
	this->feedopen_on_time_ms = FEEDOPEN_DELAY_ON_MS;
	this->feedopen_off_time_ms = FEEDOPEN_DELAY_OFF_MS;
}


void feed_init(feed_st *this, feed_conf_st *conf_ptr) {
	input_init(&this->input);
	this->conf = conf_ptr;

	uv_output_init(&this->series_out, FEED_SENSE, FEED_SERIES,
			VND5050_CURRENT_AMPL_UA, 5000, 8000, SOLENOID_AVG_COUNT,
			ICU_EMCY_FEEDSERIES_OVERCURRENT, ICU_EMCY_FEEDSERIES_FAULT);

	this->feedopen_state = FEED_FEEDOPEN_STATE_ON;
	uv_delay_init(&this->feedopen_delay, this->conf->feedopen_on_time_ms);

}


void feed_step(feed_st *this, uint16_t step_ms) {
	input_step(&this->input, step_ms);

	int8_t req = 0;
	bool series_feed = true;

	if (!saw_is_in(&dev.saw)) {
		req = 0;
	}
	else {
		req = input_get_request(&this->input) * ((this->conf->out_conf.invert) ? -1 : 1);

		// parallel feeding
		if (tilt_get_request(&dev.tilt)) {
			series_feed = false;
		}
		// close feeders while feeding
		if (req) {
			if (uv_delay(&this->feedopen_delay, step_ms)) {
				// toggle feedopen state
				this->feedopen_state = (this->feedopen_state == FEED_FEEDOPEN_STATE_ON) ?
						FEED_FEEDOPEN_STATE_OFF : FEED_FEEDOPEN_STATE_ON;
				// init delay again
				uv_delay_init(&this->feedopen_delay, GET_FEEDOPEN_TIME(this));
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
			// defaults to ON state so that feeders are closed when starting the feeding
			this->feedopen_state = FEED_FEEDOPEN_STATE_ON;
			uv_delay_init(&this->feedopen_delay, this->conf->feedopen_on_time_ms);
		}
	}



	// series feeding
	uv_output_set(&this->series_out, series_feed ? OUTPUT_STATE_OFF : OUTPUT_STATE_ON);

	uv_output_step(&this->series_out, step_ms);

	remote_valve_set_request(&dev.impl2, this, req, &this->conf->out_conf);

}

