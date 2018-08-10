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


void feed_conf_reset(feed_conf_st *this) {
	this->out_conf.acc = ICU_CONF_ACC_MAX;
	this->out_conf.dec = ICU_CONF_DEC_MAX;
	this->out_conf.invert = true;
	this->out_conf.max_speed_a = ICU_CONF_SPEED_MAX;
	this->out_conf.max_speed_b = ICU_CONF_SPEED_MAX;
}


void feed_init(feed_st *this, feed_conf_st *conf_ptr) {
	input_init(&this->input);
	this->conf = conf_ptr;

	uv_output_init(&this->series_out, FEED_SENSE, FEED_SERIES,
			VND5050_CURRENT_AMPL_UA, 5000, 8000, SOLENOID_AVG_COUNT,
			ICU_EMCY_FEEDSERIES_OVERCURRENT, ICU_EMCY_FEEDSERIES_FAULT);

}


void feed_step(feed_st *this, uint16_t step_ms) {
	input_step(&this->input, step_ms);

	remote_valve_set_request(&dev.impl2, this,
			input_get_request(&this->input) * ((this->conf->out_conf.invert) ? -1 : 1), &this->conf->out_conf);

}

