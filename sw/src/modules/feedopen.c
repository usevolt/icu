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





#include "../../inc/modules/feedopen.h"
#include "can_icu.h"
#include "main.h"
#include "pin_mappings.h"


void feedopen_conf_reset(feedopen_conf_st *this) {
	this->out_conf.acc = ICU_CONF_ACC_MAX;
	this->out_conf.dec = ICU_CONF_DEC_MAX;
	this->out_conf.invert = true;
	this->out_conf.max_speed_a = 30;
	this->out_conf.max_speed_b = 30;
}


void feedopen_init(feedopen_st *this, feedopen_conf_st *conf_ptr) {
	input_init(&this->input);
	this->conf = conf_ptr;
	this->dir_req = DUAL_OUTPUT_OFF;

	uv_dual_output_init(&this->out, FEEDOPEN_A, FEEDOPEN_B, FEEDOPEN_SENSE,
			VND5050_CURRENT_AMPL_UA, SOLENOID_MAX_CURRENT_MA,
			SOLENOID_FAULT_CURRENT_MA, SOLENOID_AVG_COUNT,
			ICU_EMCY_FEEDOPEN_OVERCURRENT, ICU_EMCY_FEEDOPEN_FAULT);

}


void feedopen_step(feedopen_st *this, uint16_t step_ms) {
	input_step(&this->input, step_ms);

	uv_dual_output_set_invert(&this->out, this->conf->out_conf.invert);

	uv_dual_output_dir_e dir = input_get_dir(&this->input);

	if ((this->dir_req != DUAL_OUTPUT_OFF) &&
			input_get_request(&this->input) == 0) {

		// manual direction request is active, probably from all open or feeding
		dir = this->dir_req;
		// manual request has to be updates every step cycle
		this->dir_req = DUAL_OUTPUT_OFF;
	}
	else {
	}

	uv_dual_output_set(&this->out, dir);
	remote_valve_set_request(&dev.impl1, this, input_get_request(&this->input), &this->conf->out_conf);

}


