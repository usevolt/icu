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


#ifndef REMOTE_VALVE_H_
#define REMOTE_VALVE_H_


/// @file: Remote valve module is an hydraulic valve which is controlled over CAN-bus,
/// such as impl1 and impl2 valves supplying the oil flow to harvester head.


#include <uv_utilities.h>
#include <uv_rtos.h>

typedef struct {
	bool drive_to_zero;
	bool stopped;
	uv_delay_st delay;
	uint16_t delay_time_ms;
	int16_t req_ma;
	uv_mutex_st *mutex;
	bool dual_dir;
	// stores the pointer of the requester. This pointer
	// is used as priority. If two or more requesters make a request
	// at the same time, the one with bigger priority wins.
	void *requester_priority_ptr;
} remote_valve_st;


void remote_valve_init(remote_valve_st *this, uint16_t delay_time_ms, uv_mutex_st *mutex, bool dual_dir);


void remote_valve_step(remote_valve_st *this, uint16_t step_ms);


/// @brief: Sets the oil flow request in milliamps. The request is accepted only if
/// the last request was zero or bigger than new one.
void remote_valve_set_request(remote_valve_st *this, void *requester, int16_t request_ma);


void remote_valve_drive_to_zero(remote_valve_st *this);

/// @brief: Returns true after the **remote_valve_drive_to_zero** request has called and
/// the valve has driven itself to zero. Note that this returns true even if some normal request
/// sets the valve to non-zero again.
static inline bool remote_valve_is_zero(remote_valve_st *this) {
	return this->stopped;
}



#endif /* REMOTE_VALVE_H_ */
