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



#include "remote_valve.h"
#include "input.h"


void remote_valve_init(remote_valve_st *this, uint16_t delay_time_ms, bool dual_dir) {
	this->delay_time_ms = delay_time_ms;
	this->req = 0;
	this->stopped = true;
	this->drive_to_zero = false;
	this->dual_dir = dual_dir;
	this->requester_priority_ptr = NULL;
}


void remote_valve_step(remote_valve_st *this, uint16_t step_ms) {

	if (this->drive_to_zero) {

		this->req = 0;
		if (uv_delay(&this->delay, step_ms)) {
			this->drive_to_zero = 0;
			this->requester_priority_ptr = NULL;
			this->stopped = 1;
		}

	}

}


void remote_valve_set_request(remote_valve_st *this,
		void *requester, int8_t request, icu_conf_st *conf) {


	// only accept higher request than the last one
	if (!this->drive_to_zero) {
		int32_t req = (int32_t) request *
				((request > 0) ? (int32_t) conf->max_speed_a : (int32_t) conf->max_speed_b) / 100;
		if (req < INPUT_MIN_REQ) {
			req = INPUT_MIN_REQ;
		}
		if (req > INPUT_MAX_REQ) {
			req = INPUT_MAX_REQ;
		}
		request = req;
		// todo: acc and dec as a PID controller

		if ((int32_t) requester == (int32_t) this->requester_priority_ptr) {
			this->requester_priority_ptr = (request == 0) ? NULL : requester;
			this->req = (this->dual_dir) ? request : abs(request);
		}
		else if (((int32_t) requester > (int32_t) this->requester_priority_ptr) &&
				(request != 0)) {
			this->requester_priority_ptr = requester;
			this->req = (this->dual_dir) ? request : abs(request);
		}
		else {

		}

	}
}



void remote_valve_drive_to_zero(remote_valve_st *this) {
	if (!this->drive_to_zero) {
		this->drive_to_zero = true;
		this->stopped = false;
		uv_delay_init(&this->delay, this->delay_time_ms);
	}
}
