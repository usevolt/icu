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



void remote_valve_init(remote_valve_st *this, uint16_t delay_time_ms, uv_mutex_st *mutex, bool dual_dir) {
	this->mutex = mutex;
	this->delay_time_ms = delay_time_ms;
	this->req_ma = 0;
	this->stopped = true;
	this->drive_to_zero = false;
	this->dual_dir = dual_dir;
	this->requester_priority_ptr = NULL;
}


void remote_valve_step(remote_valve_st *this, uint16_t step_ms) {

	if (this->drive_to_zero) {
		uv_mutex_lock(this->mutex);

		this->req_ma = 0;
		if (uv_delay(&this->delay, step_ms)) {
			this->drive_to_zero = 0;
			this->requester_priority_ptr = NULL;
			this->stopped = 1;
		}

		uv_mutex_unlock(this->mutex);
	}

}


void remote_valve_set_request(remote_valve_st *this, void *requester, int16_t request_ma) {
	uv_mutex_lock(this->mutex);
	// only accept higher request than the last one
	if ((uint32_t) requester >= (uint32_t) this->requester_priority_ptr) {
		if (!this->drive_to_zero) {
				this->requester_priority_ptr = (request_ma == 0) ? NULL : requester;
				this->req_ma = (this->dual_dir) ? request_ma : abs(request_ma);
		}
	}
	uv_mutex_unlock(this->mutex);
}



void remote_valve_drive_to_zero(remote_valve_st *this) {
	uv_mutex_lock(this->mutex);
	if (!this->drive_to_zero) {
		this->drive_to_zero = true;
		this->stopped = false;
		uv_delay_init(&this->delay, this->delay_time_ms);
	}
	uv_mutex_unlock(this->mutex);
}
