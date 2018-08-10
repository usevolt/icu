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


void saw_conf_reset(saw_conf_st *this) {
	this->out_conf.acc = ICU_CONF_ACC_MAX;
	this->out_conf.dec = ICU_CONF_DEC_MAX;
	this->out_conf.invert = true;
	this->out_conf.max_speed_a = ICU_CONF_SPEED_MAX;
	this->out_conf.max_speed_b = ICU_CONF_SPEED_MAX;
}


void saw_init(saw_st *this, saw_conf_st *conf_ptr) {
	input_init(&this->input);
	this->conf = conf_ptr;

	uv_dual_output_init(&this->out, SAW_A, SAW_B, SAW_SENSE,
			VND5050_CURRENT_AMPL_UA, SOLENOID_MAX_CURRENT_MA,
			SOLENOID_FAULT_CURRENT_MA, SOLENOID_AVG_COUNT,
			ICU_EMCY_SAW_OVERCURRENT, ICU_EMCY_SAW_FAULT);

}


void saw_step(saw_st *this, uint16_t step_ms) {
	input_step(&this->input, step_ms);

	uv_dual_output_set_invert(&this->out, this->conf->out_conf.invert);

	uv_dual_output_set(&this->out, input_get_dir(&this->input));

	remote_valve_set_request(&dev.impl1, this, input_get_request(&this->input), NULL);

}

