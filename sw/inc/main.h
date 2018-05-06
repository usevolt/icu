/*
 * main.h
 *
 *  Created on: Apr 26, 2015
 *      Author: usevolt
 */

#ifndef MAIN_H_
#define MAIN_H_


#include <uv_memory.h>
#include <uv_filters.h>
#include <uv_output.h>
#include <uv_dual_output.h>
#include <can_fsb.h>
#include <uv_rtos.h>
#include "remote_valve.h"
#include "command.h"


#define OUT_COUNT						7
#define KEYPAD_BUTTON_COUNT				10

#define REMOTE_VALVE_DELAY_MS			1000
#define ALL_OPEN_BLADE_OPEN_TIME_MS_DEF	500
#define ALL_OPEN_PRESSURE_LIMIT_DEF		180

#define LEN_CALIB_DEFAULT_UM			700

/// @brief: Length tolerance for checking if the feeding has stopped
#define FEED_PARALLEL_TOLERANCE_UM		1000
#define FEED_PARALLEL_WAIT_MS_DEF		300
#define FEED_PARALLEL_FEED_MS_DEF		500
#define FEED_FINETUNE_START_DIST_UM_DEF	100000
#define FEED_FINETUNE_WAIT_MS_DEF		400
#define FEED_FINETUNE_FEED_MS_DEF		400

/// @brief: Maximum saw absolute position value which is calculated as "saw home"
#define SAW_HOME_VAL					20



/// @brief: main data structure.
/// This struct can be save to non-volatile flash memory with
/// a terminal command 'save'.
typedef struct _dev_st {

	struct {
		fsb_ignkey_states_e ignkey_state;
		uint8_t emcy;
	} fsb;
	struct {
		uint16_t hydr_pressure;
	} ecu;

	uint8_t save_req;

	uv_mutex_st mutex;

	uv_dual_output_st out[OUT_COUNT];

	uint16_t total_current;

	// impl1 is for blades, feed open & tilt
	remote_valve_st impl1;
	// impl2 is for feed & saw
	remote_valve_st impl2;

	/// @brief: Feeding length in micrometers
	int32_t len_um;
	/// @brief: Target length in micrometers
	int32_t target_length_um;
	/// @brief: true when the target length is reached
	uint8_t target_length_reached;

	/// @brief: Saw position calculated from the pulse sensor
	int32_t saw_abs_pos;
	/// @brief: maximum position for the saw
	int32_t saw_max_pos;
	/// @brief: Saw position as percentage
	uint8_t saw_rel_pos;
	/// @brief: if 1, saw position is unknown as is in start up.
	/// Saw should be pulled in before usage.
	uint8_t saw_position_unknown;


	uv_data_start_t data_start;

	/// @brief: Length calibration value: How many micrometers
	/// the length increases on every pulse
	uint16_t len_calib;

	command_st blades_open;
	command_st feed_open;
	command_st saw;
	command_st feed;
	command_st all_open;
	command_st tilt;

	int16_t all_open_blade_open_time_ms;
	uint16_t all_open_pressure_limit;


	/// how far away fine tuning is started from the target length
	uint32_t feed_finetune_start_dist_um;
	// how long finetuning waits for the length to settle
	uint16_t feed_finetune_wait_ms;
	// how long finetuning feed pulses last
	uint16_t feed_finetune_feed_ms;
	// how long has the length to be the same before parallel
	// feeding is set on
	uint16_t feed_parallel_wait_ms;
	// how long parallel feeding is on
	uint16_t feed_parallel_feed_ms;

	uv_data_end_t data_end;

} dev_st;


void step(void* me);

void init(dev_st* me);





#endif /* MAIN_H_ */
