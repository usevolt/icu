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


#ifndef INC_MODULES_TILT_H_
#define INC_MODULES_TILT_H_

#include <uv_utilities.h>
#include <uv_dual_solenoid_output.h>
#include <uv_dual_output.h>
#include "remote_valve.h"
#include "input.h"


/// @brief: Boom fold configuration settings. Should be stored in non-volatile memory
typedef struct {
	icu_conf_st out_conf;
	uint8_t float_enable;
} tilt_conf_st;

/// @brief: Resets the non-volatile settings to defaults
void tilt_conf_reset(tilt_conf_st *this);


typedef struct {
	// input module from the CAN-bus
	input_st input;

	uv_dual_output_st out;

	uv_output_st float_out;

	tilt_conf_st *conf;

	uv_delay_st liftup_delay;
	bool lifted_up;

	icu_tilt_dir_e dir;

} tilt_st;


/// @brief: Initializes the module
void tilt_init(tilt_st *this, tilt_conf_st *conf_ptr);


/// @brief: Step function
void tilt_step(tilt_st *this, uint16_t step_ms);


static inline int16_t tilt_get_current(tilt_st *this) {
	return uv_dual_output_get_current(&this->out);
}

static inline icu_tilt_dir_e tilt_get_dir(tilt_st *this) {
	return this->dir;
}

static inline int16_t tilt_get_float_current(tilt_st *this) {
	return uv_output_get_current(&this->float_out);
}


static inline int8_t tilt_get_request(tilt_st *this) {
	return input_get_request(&this->input, &this->conf->out_conf);
}


static inline void tilt_disable(tilt_st *this) {
	uv_dual_output_disable(&this->out);
	uv_output_disable(&this->float_out);
}


static inline void tilt_enable(tilt_st *this) {
	uv_dual_output_enable(&this->out);
	uv_output_enable(&this->float_out);
}


#endif /* INC_MODULES_TILT_H_ */
