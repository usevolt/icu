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



#include "command.h"

void command_reset(command_st *this) {
	this->confs.invert = 0;
	this->confs.min_current_p = COMMAND_MIN_CURRENT_DEF;
	this->confs.min_current_n = COMMAND_MIN_CURRENT_DEF;
	this->confs.max_current_p = COMMAND_MAX_CURRENT_DEF;
	this->confs.max_current_n = COMMAND_MAX_CURRENT_DEF;
}


void command_init(command_st *this) {
	this->req = 0;
	this->last_req = 0;
	this->pressed = false;
	this->released = false;
}


void command_step(command_st *this, uint16_t step_ms) {
	this->pressed = false;
	this->released = false;

	if (this->req && !this->last_req) {
		this->pressed = true;
	}
	else if (!this->req && this->last_req) {
		this->released = true;
	}
	this->last_req = this->req;
}


int16_t command_get_current_ma(command_st *this) {
	int16_t ret = 0;

	if (this->req > COMMAND_REQ_MAX_VAL) {
		this->req = COMMAND_REQ_MAX_VAL;
	}
	else if (this->req < COMMAND_REQ_MIN_VAL) {
		this->req = COMMAND_REQ_MIN_VAL;
	}
	else {

	}

	int16_t req = command_get_req(this);

	if (req > 0) {
		ret = uv_reli(req, 0, INT8_MAX);
		ret = uv_lerpi(ret, this->confs.min_current_p, this->confs.max_current_p);
	}
	else {
		ret = uv_reli(req, INT8_MIN, 0);
		ret = -uv_lerpi(ret, this->confs.max_current_n, this->confs.min_current_n);
	}

	return ret;
}
