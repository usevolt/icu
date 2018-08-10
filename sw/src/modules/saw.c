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





#include "../../inc/modules/saw.h"
#include "can_icu.h"
#include "main.h"
#include "pin_mappings.h"
#include "feed.h"


void saw_conf_reset(saw_conf_st *this) {
	this->out_conf.acc = ICU_CONF_ACC_MAX;
	this->out_conf.dec = ICU_CONF_DEC_MAX;
	this->out_conf.invert = false;
	this->out_conf.max_speed_a = 20;
	this->out_conf.max_speed_b = ICU_CONF_SPEED_MAX;
	this->saw_in_dir_invert = 1;
}


void saw_init(saw_st *this, saw_conf_st *conf_ptr) {
	input_init(&this->input);
	this->conf = conf_ptr;

	this->in = 0;
	this->saw_moved = false;
	uv_gpio_init_input(SAW_IN, PULL_DOWN_ENABLED);

	uv_dual_output_init(&this->out, SAW_A, SAW_B, SAW_SENSE,
			VND5050_CURRENT_AMPL_UA, SOLENOID_MAX_CURRENT_MA,
			SOLENOID_FAULT_CURRENT_MA, SOLENOID_AVG_COUNT,
			ICU_EMCY_SAW_OVERCURRENT, ICU_EMCY_SAW_FAULT);

	uv_delay_init(&this->in_delay, SAW_IN_DELAY_MS);

}


void saw_step(saw_st *this, uint16_t step_ms) {
	input_step(&this->input, step_ms);

	this->in = uv_gpio_get(SAW_IN);
	if (input_get_request(&this->input)) {
		this->saw_moved = true;
	}

	int8_t req = 0;

	if (remote_valve_get_request(&dev.impl2) != 0) {
		// feeding, saw is disaled
		req = 0;
	}
	else if (!saw_is_in(this) &&
			(input_get_request(&this->input) == 0) &&
			!uv_delay_has_ended(&this->in_delay) &&
			this->saw_moved) {
		uv_delay(&this->in_delay, step_ms);
		// pull saw in
		req = this->conf->saw_in_dir_invert ? INPUT_MAX_REQ : INPUT_MIN_REQ;
	}
	else {
		uv_delay_init(&this->in_delay, SAW_IN_DELAY_MS);

		req = input_get_request(&this->input);
	}

	uv_dual_output_set_invert(&this->out, this->conf->out_conf.invert);

	uv_dual_output_set(&this->out, input_get_dir_from_req(req));

	remote_valve_set_request(&dev.impl1, this, req, &this->conf->out_conf);

}

