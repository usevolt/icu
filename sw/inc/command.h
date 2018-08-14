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


#ifndef COMMAND_H_
#define COMMAND_H_

#include <uv_utilities.h>

/// @file: Command module for controlling the machine


#define COMMAND_MIN_CURRENT_DEF		170
#define COMMAND_MAX_CURRENT_DEF		600


#define COMMAND_REQ_MAX_VAL			INT8_MAX
#define COMMAND_REQ_MIN_VAL			(INT8_MIN + 1)

typedef struct {
	// request is control request from CAN bus. values should be int8_t,
	// but for object dictionary all of these should be of same size
	int8_t req;
	struct {
		uint16_t invert;
		uint16_t max_current_p;
		uint16_t max_current_n;
		uint16_t min_current_p;
		uint16_t min_current_n;
	} confs;
	// true for one step cycle when speed differs from zero
	bool pressed;
	// true for one tep cycle when speed returns back to zero
	bool released;
	int8_t last_req;
} command_st;



void command_init(command_st *this);

void command_reset(command_st *this);

void command_step(command_st *this, uint16_t step_ms);


static inline void command_set_req(command_st *this, int8_t req) {
	this->req = req;
}

/// @brief: Sets the maximum positive current in milliamps
static inline void command_set_max_current_p(command_st *this, uint16_t value) {
	this->confs.max_current_p = value;
}

/// @brief: Sets the maximum negative current in milliamps
static inline void command_set_max_current_n(command_st *this, uint16_t value) {
	this->confs.max_current_n = value;
}

/// @brief: Sets the positive minimum current in milliamps
static inline void command_set_min_current_p(command_st *this, uint16_t value) {
	this->confs.min_current_p = value;
}

/// @brief: Sets the negative min current in milliamps
static inline void command_set_min_current_n(command_st *this, uint16_t value) {
	this->confs.min_current_n = value;
}

/// @brief: Returns the current request
static inline int8_t command_get_req(command_st *this) {
	return (this->confs.invert) ? -this->req : this->req;
}

/// @brief: Sets the invertion value
static inline void command_set_invert(command_st *this, uint16_t value) {
	this->confs.invert = value;
}

/// @brief: Returns true if speed was just set to non-zero
static inline bool command_is_pressed(command_st *this) {
	return this->pressed;
}

/// @brief: Returns true if speed was just set back to zero
static inline bool command_is_released(command_st *this) {
	return this->released;
}

/// @brief: Returns the request current in milliamps. This is calculated
/// from the request and min & max currents
int16_t command_get_current_ma(command_st *this);


#endif /* COMMAND_H_ */
