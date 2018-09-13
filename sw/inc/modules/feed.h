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


/// Feeding fuzzy logic level count
#define FEED_FL_COUNT		ICU_LEN_FL_ARRAY_SIZE



typedef enum {
	FEED_FEEDOPEN_STATE_OFF = 0,
	FEED_FEEDOPEN_STATE_ON
} feed_feedopen_states_e;


/// @brief: Feed direction
typedef enum {
	FEED_DIR_NONE = 0,
	FEED_DIR_FORWARD,
	FEED_DIR_BACKWARD,
	FEED_DIR_STUCK
}feed_dir_e;



/// @brief: Boom fold configuration settings. Should be stored in non-volatile memory
typedef struct {
	icu_conf_st out_conf;
	uint16_t feedopen_on_time_ms;
	uint16_t feedopen_off_time_ms;
	int16_t len_calib;
	icu_feed_fl_st fl[FEED_FL_COUNT];
} feed_conf_st;

/// @brief: Resets the non-volatile settings to defaults
void feed_conf_reset(feed_conf_st *this);


typedef struct {
	// input module from the CAN-bus
	input_st input;

	uv_output_st series_out;

	uv_delay_st feedopen_delay;
	feed_feedopen_states_e feedopen_state;

	int32_t len_um;
	int32_t target_len_um;
	int32_t len_to_target_mm;
	int32_t last_len_um;
	feed_dir_e feed_dir;
	// tells which fuzzy logic level is currently used
	uint8_t fl_index;
	icu_feed_states_e state;

	feed_conf_st *conf;

} feed_st;


/// @brief: Initializes the module
void feed_init(feed_st *this, feed_conf_st *conf_ptr);


/// @brief: Step function
void feed_step(feed_st *this, uint16_t step_ms);


/// @brief: Interrupt function which should be called when length
/// sensor gives a pulse
void feed_len_int(feed_st *this);


static inline void feed_clear_len(feed_st *this) {
	this->len_um = 0;
}

static inline int16_t feed_get_current(feed_st *this) {
	return uv_output_get_current(&this->series_out);
}


static inline int8_t feed_get_request(feed_st *this) {
	return input_get_request(&this->input, &this->conf->out_conf);
}


static inline void feed_disable(feed_st *this) {
	uv_output_disable(&this->series_out);
}


static inline void feed_enable(feed_st *this) {
	uv_output_enable(&this->series_out);
}



#endif /* INC_MODULES_FEED_H_ */
