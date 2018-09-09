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


#ifndef INC_MODULES_ALLOPEN_H_
#define INC_MODULES_ALLOPEN_H_

#include <uv_utilities.h>
#include <uv_dual_solenoid_output.h>
#include <uv_dual_output.h>
#include "remote_valve.h"
#include "input.h"



/// @brief: Boom fold configuration settings. Should be stored in non-volatile memory
typedef struct {
	icu_conf_st out_conf;
	// if 1, negative value is considered all-open and positive all-close

	uint16_t close_delay_ms;
} allopen_conf_st;

/// @brief: Resets the non-volatile settings to defaults
void allopen_conf_reset(allopen_conf_st *this);


typedef struct {
	// input module from the CAN-bus
	input_st input;

	allopen_conf_st *conf;

	uv_delay_st close_delay;

} allopen_st;


/// @brief: Initializes the module
void allopen_init(allopen_st *this, allopen_conf_st *conf_ptr);


/// @brief: Step function
void allopen_step(allopen_st *this, uint16_t step_ms);



static inline int8_t allopen_get_request(allopen_st *this) {
	return input_get_request(&this->input, &this->conf->out_conf);
}




#endif /* INC_MODULES_ALLOPEN_H_ */
