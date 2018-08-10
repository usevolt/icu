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




void allopen_conf_reset(allopen_conf_st *this) {
	this->out_conf.acc = ICU_CONF_ACC_MAX;
	this->out_conf.dec = ICU_CONF_DEC_MAX;
	this->out_conf.invert = true;
	this->out_conf.max_speed_a = 30;
	this->out_conf.max_speed_b = 40;
	this->dir_invert = 0;
	this->close_delay_ms = 500;
}


void allopen_init(allopen_st *this, allopen_conf_st *conf_ptr) {
	input_init(&this->input);
	this->conf = conf_ptr;
	uv_delay_init(&this->close_delay, this->conf->close_delay_ms);
}


void allopen_step(allopen_st *this, uint16_t step_ms) {
	input_step(&this->input, step_ms);

	if ((input_get_request(&this->input) * ((this->conf->out_conf.invert) ? -1 : 1)) > 0) {
		// all open
		bladeopen_set_dir_req(&dev.bladeopen, this->conf->dir_invert ? DUAL_OUTPUT_NEG : DUAL_OUTPUT_POS);
		feedopen_set_dir_req(&dev.feedopen, this->conf->dir_invert ? DUAL_OUTPUT_NEG : DUAL_OUTPUT_POS);

		uv_delay_init(&this->close_delay, this->conf->close_delay_ms);
	}
	else if ((input_get_request(&this->input) * ((this->conf->out_conf.invert) ? -1 : 1)) < 0) {
		// all close
		bladeopen_set_dir_req(&dev.bladeopen, this->conf->dir_invert ? DUAL_OUTPUT_POS : DUAL_OUTPUT_NEG);

		uv_delay(&this->close_delay, step_ms);
		if (uv_delay_has_ended(&this->close_delay)) {
			feedopen_set_dir_req(&dev.feedopen, this->conf->dir_invert ? DUAL_OUTPUT_POS : DUAL_OUTPUT_NEG);
		}
	}
	else {
		// do nothing
		bladeopen_set_dir_req(&dev.bladeopen, DUAL_OUTPUT_OFF);
		feedopen_set_dir_req(&dev.feedopen, DUAL_OUTPUT_OFF);

		uv_delay_init(&this->close_delay, this->conf->close_delay_ms);
	}

	remote_valve_set_request(&dev.impl1, this, input_get_request(&this->input), &this->conf->out_conf);

}

