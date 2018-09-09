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


#ifndef INC_MODULES_SAW_H_
#define INC_MODULES_SAW_H_

#include <uv_utilities.h>
#include <uv_dual_solenoid_output.h>
#include <uv_dual_output.h>
#include "remote_valve.h"
#include "input.h"


/// @brief: Boom fold configuration settings. Should be stored in non-volatile memory
typedef struct {
	icu_conf_st out_conf;
	// if 1, saw in dir is negative direction. Otherwise positive.
	int16_t saw_in_dir_invert;
} saw_conf_st;

/// @brief: Resets the non-volatile settings to defaults
void saw_conf_reset(saw_conf_st *this);

#define SAW_IN_DELAY_MS				4000

typedef struct {
	// input module from the CAN-bus
	input_st input;

	uv_dual_output_st out;

	uint8_t in;
	bool saw_moved;
	uv_delay_st in_delay;

	saw_conf_st *conf;

} saw_st;


/// @brief: Initializes the module
void saw_init(saw_st *this, saw_conf_st *conf_ptr);


/// @brief: Step function
void saw_step(saw_st *this, uint16_t step_ms);


static inline int16_t saw_get_current(saw_st *this) {
	return uv_dual_output_get_current(&this->out);
}


static inline int8_t saw_get_request(saw_st *this) {
	return input_get_request(&this->input, &this->conf->out_conf);
}


static inline void saw_disable(saw_st *this) {
	uv_dual_output_disable(&this->out);
	this->saw_moved = false;
}


static inline void saw_enable(saw_st *this) {
	uv_dual_output_enable(&this->out);
}


static inline uint8_t saw_is_in(saw_st *this) {
	return this->in;
}


#endif /* INC_MODULES_SAW_H_ */
