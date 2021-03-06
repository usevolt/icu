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


#ifndef INC_MODULES_FEEDOPEN_H_
#define INC_MODULES_FEEDOPEN_H_

#include <uv_utilities.h>
#include <uv_dual_solenoid_output.h>
#include <uv_dual_output.h>
#include "remote_valve.h"
#include "input.h"


/// @brief: Boom fold configuration settings. Should be stored in non-volatile memory
typedef struct {
	icu_conf_st out_conf;
} feedopen_conf_st;

/// @brief: Resets the non-volatile settings to defaults
void feedopen_conf_reset(feedopen_conf_st *this);


typedef struct {
	// input module from the CAN-bus
	input_st input;

	uv_dual_output_st out;

	uv_dual_output_dir_e dir_req;

	feedopen_conf_st *conf;

} feedopen_st;


/// @brief: Initializes the module
void feedopen_init(feedopen_st *this, feedopen_conf_st *conf_ptr);


/// @brief: Step function
void feedopen_step(feedopen_st *this, uint16_t step_ms);


static inline int16_t feedopen_get_current(feedopen_st *this) {
	return uv_dual_output_get_current(&this->out);
}

/// @brief: Sets the feedopen manual request
static inline void feedopen_set_dir_req(feedopen_st *this, uv_dual_output_dir_e value) {
	this->dir_req = value;
}

static inline int8_t feedopen_get_request(feedopen_st *this) {
	return input_get_request(&this->input, &this->conf->out_conf);
}


static inline void feedopen_disable(feedopen_st *this) {
	uv_dual_output_disable(&this->out);
}


static inline void feedopen_enable(feedopen_st *this) {
	uv_dual_output_enable(&this->out);
}



#endif /* INC_MODULES_FEEDOPEN_H_ */
