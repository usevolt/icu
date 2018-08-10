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


#ifndef INC_MODULES_FEED_H_
#define INC_MODULES_FEED_H_

#include <uv_utilities.h>
#include <uv_dual_solenoid_output.h>
#include <uv_dual_output.h>
#include "remote_valve.h"
#include "input.h"


/// @brief: Boom fold configuration settings. Should be stored in non-volatile memory
typedef struct {
	icu_conf_st out_conf;
} feed_conf_st;

/// @brief: Resets the non-volatile settings to defaults
void feed_conf_reset(feed_conf_st *this);


typedef struct {
	// input module from the CAN-bus
	input_st input;

	uv_output_st series_out;

	feed_conf_st *conf;

} feed_st;


/// @brief: Initializes the module
void feed_init(feed_st *this, feed_conf_st *conf_ptr);


/// @brief: Step function
void feed_step(feed_st *this, uint16_t step_ms);


static inline int16_t feed_get_current(feed_st *this) {
	return uv_output_get_current(&this->series_out);
}


static inline int8_t feed_get_request(feed_st *this) {
	return input_get_request(&this->input);
}


static inline void feed_disable(feed_st *this) {
	uv_output_disable(&this->series_out);
}


static inline void feed_enable(feed_st *this) {
	uv_output_enable(&this->series_out);
}



#endif /* INC_MODULES_FEED_H_ */
