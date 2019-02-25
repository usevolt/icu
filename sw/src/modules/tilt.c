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





#include "../../inc/modules/tilt.h"
#include "can_icu.h"
#include "main.h"
#include "pin_mappings.h"
#include "feed.h"


#define LIFTUP_DELAY_MS			5000


void tilt_conf_reset(tilt_conf_st *this) {
	this->out_conf.acc = ICU_CONF_ACC_MAX;
	this->out_conf.dec = ICU_CONF_DEC_MAX;
	this->out_conf.invert = false;
	this->out_conf.assembly_invert = false;
	this->out_conf.max_speed_a = 8;
	this->out_conf.max_speed_b = 8;
	this->float_enable = 1;
}


void tilt_init(tilt_st *this, tilt_conf_st *conf_ptr) {
	input_init(&this->input);
	this->conf = conf_ptr;

	uv_dual_output_init(&this->out, TILT_A, TILT_B, TILT_SENSE,
			VND5050_CURRENT_AMPL_UA, SOLENOID_MAX_CURRENT_MA,
			SOLENOID_FAULT_CURRENT_MA, SOLENOID_AVG_COUNT,
			ICU_EMCY_TILT_OVERCURRENT, ICU_EMCY_TILT_FAULT);

	uv_output_init(&this->float_out, TILTFLOAT_SENSE, TILTFLOAT, VND5050_CURRENT_AMPL_UA,
			4000, 6000, 10, ICU_EMCY_TILTFLOAT_OVERCURRENT, ICU_EMCY_TILTFLOAT_FAULT);

	uv_delay_init(&this->liftup_delay, LIFTUP_DELAY_MS);
	this->lifted_up = true;
	this->dir = ICU_TILT_DIR_UP;

}


void tilt_step(tilt_st *this, uint16_t step_ms) {
	input_step(&this->input, step_ms);

//	uv_dual_output_set_invert(&this->out, this->conf->out_conf.assembly_invert);

	int8_t req = input_get_request(&this->input, &this->conf->out_conf);

	if (feed_get_request(&dev.feed)) {
		req = 0;
	}

	// float logic
	if (saw_returned(&dev.saw) &&
			this->lifted_up &&
			req == 0) {
		if (this->conf->float_enable) {
			uv_output_set_state(&this->float_out, OUTPUT_STATE_ON);
		}
		this->lifted_up = false;
	}
	else {
		int16_t r = uv_dual_output_get_current(&this->out) *
				((this->conf->out_conf.assembly_invert) ? -1 : 1);
		if (r > 0) {
			this->dir = ICU_TILT_DIR_UP;
			uv_output_set_state(&this->float_out, OUTPUT_STATE_OFF);

			if (uv_delay(&this->liftup_delay, step_ms)) {
				this->lifted_up = true;
			}
		}
		else if (r < 0) {
			this->dir = ICU_TILT_DIR_DOWN;
			if (this->conf->float_enable) {
				uv_output_set_state(&this->float_out, OUTPUT_STATE_ON);
			}
		}
		else {
			uv_delay_init(&this->liftup_delay, LIFTUP_DELAY_MS);
		}
	}


	uv_dual_output_set(&this->out, input_get_dir_from_req(req));
	uv_dual_output_step(&this->out, step_ms);

	uv_output_step(&this->float_out, step_ms);

	remote_valve_set_request(&dev.impl1, this, req, &this->conf->out_conf);

}

