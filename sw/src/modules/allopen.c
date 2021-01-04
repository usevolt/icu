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





#include "../../inc/modules/allopen.h"
#include "can_icu.h"
#include "main.h"
#include "pin_mappings.h"


#define TILT_DELAY_MS		2000
#define TILT_PRESS_LIMIT	150


void allopen_conf_reset(allopen_conf_st *this) {
	this->out_conf.acc = ICU_CONF_ACC_MAX;
	this->out_conf.dec = ICU_CONF_DEC_MAX;
	this->out_conf.invert = true;
	this->out_conf.assembly_invert = false;
	this->out_conf.max_speed_a = 30;
	this->out_conf.max_speed_b = 40;
	this->close_delay_ms = 500;
}


void allopen_init(allopen_st *this, allopen_conf_st *conf_ptr) {
	input_init(&this->input);
	this->conf = conf_ptr;
	uv_delay_init(&this->close_delay, this->conf->close_delay_ms);
	this->tilt_state = ALLOPEN_TILT_STATE_NONE;
	uv_delay_init(&this->tilt_delay, TILT_DELAY_MS);
}


void allopen_step(allopen_st *this, uint16_t step_ms) {
	input_step(&this->input, step_ms);

	int32_t req = input_get_request(&this->input, &this->conf->out_conf);
	icu_conf_st *conf = &this->conf->out_conf;

	// allopen disabled if feed is on, since it is used to control the series/parallel feeding
	if (feed_get_request(&dev.feed)) {
		req = 0;
	}

	tilt_set_dir_req(&dev.tilt, DUAL_OUTPUT_OFF);

	if (req * ((this->conf->out_conf.assembly_invert) ? -1 : 1) > 0) {
		// all open
		bladeopen_set_dir_req(&dev.bladeopen, DUAL_OUTPUT_POS);
		feedopen_set_dir_req(&dev.feedopen, DUAL_OUTPUT_POS);

		// TILT LOGIC UP
		if (this->tilt_state == ALLOPEN_TILT_STATE_NONE) {
			if (dev.hcu.hydr_pressure > TILT_PRESS_LIMIT) {
				if (uv_delay(&this->tilt_delay, step_ms)) {
					this->tilt_state = ALLOPEN_TILT_STATE_WAIT;
					uv_delay_init(&this->tilt_delay, TILT_DELAY_MS);
				}
			}
			else {
				uv_delay_init(&this->tilt_delay, TILT_DELAY_MS);
			}
		}
		else if (this->tilt_state == ALLOPEN_TILT_STATE_WAIT) {
			req = 0;
			if (uv_delay(&this->tilt_delay, step_ms)) {
				this->tilt_state = ALLOPEN_TILT_STATE_UP;
			}
		}
		else if (this->tilt_state == ALLOPEN_TILT_STATE_UP) {
			tilt_set_dir_req(&dev.tilt, (dev.tilt_conf.out_conf.assembly_invert) ?
					DUAL_OUTPUT_NEG : DUAL_OUTPUT_POS);
			// use tilt speed settings
			conf = &dev.tilt_conf.out_conf;
			uv_delay_init(&this->tilt_delay, TILT_DELAY_MS);
		}
		else {
			this->tilt_state = ALLOPEN_TILT_STATE_NONE;
			uv_delay_init(&this->tilt_delay, TILT_DELAY_MS);
		}

		uv_delay_init(&this->close_delay, this->conf->close_delay_ms);
	}
	else if ((req * ((this->conf->out_conf.assembly_invert) ? -1 : 1)) < 0) {
		// all close
		bladeopen_set_dir_req(&dev.bladeopen, DUAL_OUTPUT_NEG);

		// TILT LOGIC DOWN
		// TILT LOGIC
		if (this->tilt_state == ALLOPEN_TILT_STATE_NONE) {
			if (dev.hcu.hydr_pressure > TILT_PRESS_LIMIT) {
				if (uv_delay(&this->tilt_delay, step_ms)) {
					this->tilt_state = ALLOPEN_TILT_STATE_WAIT;
					uv_delay_init(&this->tilt_delay, TILT_DELAY_MS);
				}
			}
			else {
				uv_delay_init(&this->tilt_delay, TILT_DELAY_MS);
			}
		}
		else if (this->tilt_state == ALLOPEN_TILT_STATE_WAIT) {
			req = 0;
			if (uv_delay(&this->tilt_delay, step_ms)) {
				this->tilt_state = ALLOPEN_TILT_STATE_DOWN;
			}
		}
		else if (this->tilt_state == ALLOPEN_TILT_STATE_DOWN) {
			tilt_set_dir_req(&dev.tilt, (dev.tilt_conf.out_conf.assembly_invert) ?
					DUAL_OUTPUT_POS : DUAL_OUTPUT_NEG);
			// use tilt speed settings
			conf = &dev.tilt_conf.out_conf;
			uv_delay_init(&this->tilt_delay, TILT_DELAY_MS);
		}
		else {
			this->tilt_state = ALLOPEN_TILT_STATE_NONE;
			uv_delay_init(&this->tilt_delay, TILT_DELAY_MS);
		}


		uv_delay(&this->close_delay, step_ms);
		if (uv_delay_has_ended(&this->close_delay)) {
			feedopen_set_dir_req(&dev.feedopen, DUAL_OUTPUT_NEG);
		}
	}
	else {
		// do nothing
		uv_delay_init(&this->close_delay, this->conf->close_delay_ms);
		this->tilt_state = ALLOPEN_TILT_STATE_NONE;
		uv_delay_init(&this->tilt_delay, TILT_DELAY_MS);
	}


	remote_valve_set_request(&dev.impl1, this, req, conf);

}

