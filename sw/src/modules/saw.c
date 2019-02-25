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
	this->out_conf.assembly_invert = false;
	this->out_conf.max_speed_a = 20;
	this->out_conf.max_speed_b = ICU_CONF_SPEED_MAX;
	this->saw_in_dir_invert = 1;
}


void saw_init(saw_st *this, saw_conf_st *conf_ptr) {
	input_init(&this->input);
	this->conf = conf_ptr;

	this->in = 0;
	this->returned = 0;
	this->saw_moved = false;
	uv_gpio_init_input(SAW_IN, PULL_DOWN_ENABLED);

	uv_dual_output_init(&this->out, SAW_A, SAW_B, SAW_SENSE,
			VND5050_CURRENT_AMPL_UA, SOLENOID_MAX_CURRENT_MA,
			SOLENOID_FAULT_CURRENT_MA, SOLENOID_AVG_COUNT,
			ICU_EMCY_SAW_OVERCURRENT, ICU_EMCY_SAW_FAULT);

	uv_delay_init(&this->in_delay, SAW_IN_DELAY_MS);
	uv_delay_init(&this->afterfeed_delay, SAW_AFTERFEED_DELAY_MS);
	uv_delay_end(&this->afterfeed_delay);

}


void saw_step(saw_st *this, uint16_t step_ms) {
	input_step(&this->input, step_ms);

	uv_dual_output_set_invert(&this->out, this->conf->out_conf.assembly_invert);

	int8_t req = input_get_request(&this->input, &this->conf->out_conf);

	if (uv_gpio_get(SAW_IN) &&
			!this->in) {
		this->returned = 1;
	}
	else {
		this->returned = 0;
	}
	this->in = uv_gpio_get(SAW_IN);

	if (req != 0) {
		this->saw_moved = true;
	}

	if (req && (feed_get_request(&dev.feed) == 0)) {
		feed_clear_len(&dev.feed);
	}

	if (feed_get_request(&dev.feed) != 0) {
		// feeding, saw is disabled
		req = 0;
	}
	else if (feed_get_request(&dev.feed) == 0) {
		if (this->feed_last_req) {
			// when feeding has been stopped, pull saw in for a couple milliseconds
			uv_delay_init(&this->afterfeed_delay, SAW_AFTERFEED_DELAY_MS);
		}
	}
	else {

	}

	if (!saw_is_in(this) &&
			(req == 0) &&
			!uv_delay_has_ended(&this->in_delay) &&
			this->saw_moved) {
		uv_delay(&this->in_delay, step_ms);
		// pull saw in
		req = this->conf->saw_in_dir_invert ? INPUT_MAX_REQ : INPUT_MIN_REQ;
	}
	else {
		uv_delay_init(&this->in_delay, SAW_IN_DELAY_MS);
	}

	uv_delay(&this->afterfeed_delay, step_ms);
	if (!uv_delay_has_ended(&this->afterfeed_delay)) {
		// if afterfeed delay is not ended, it means that it has been started
		// and we should pull saw in
		// pull saw in
		req = this->conf->saw_in_dir_invert ? INPUT_MAX_REQ : INPUT_MIN_REQ;
	}

	this->feed_last_req = feed_get_request(&dev.feed);

	uv_dual_output_set(&this->out, input_get_dir_from_req(req));
	uv_dual_output_step(&this->out, step_ms);

	remote_valve_set_request(&dev.impl1, this, req, &this->conf->out_conf);

}

