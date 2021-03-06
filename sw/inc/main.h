/*
 * main.h
 *
 *  Created on: Apr 26, 2015
 *      Author: usevolt
 */

#ifndef MAIN_H_
#define MAIN_H_


#include <uv_memory.h>
#include <uv_output.h>
#include <uv_dual_output.h>
#include <can_fsb.h>
#include <uv_rtos.h>
#include "remote_valve.h"
#include "bladeopen.h"
#include "feedopen.h"
#include "tilt.h"
#include "saw.h"
#include "feed.h"
#include "allopen.h"
#include "measurement.h"


#define VND5050_CURRENT_AMPL_UA			1619
#define VN5E01_CURRENT_AMPL_UA			5600

#define SOLENOID_MAX_CURRENT_MA			4000
#define SOLENOID_FAULT_CURRENT_MA		6000
#define SOLENOID_AVG_COUNT				4

#define REMOTE_VALVE_DELAY_MS			1200

#define VOLUME_EEPROM_ADDR				0


/// @brief: Harvester head states
typedef enum {
	STATE_UNKNOWN = -1,
	STATE_NORMAL = 0,
	STATE_TILTED,
} states_e;


/// @brief: main data structure.
/// This struct can be save to non-volatile flash memory with
/// a terminal command 'save'.
typedef struct _dev_st {

	struct {
		fsb_ignkey_states_e ignkey_state;
		uint8_t emcy;
		uint8_t door_sw1;
		uint8_t door_sw2;
		uint8_t seat_sw;
	} fsb;
	struct {
		int16_t hydr_pressure;
	} hcu;

	uint16_t total_current;

	// the priority order is determined by the order of modules here. First one is the least priority.
	allopen_st allopen;
	feed_st feed;
	bladeopen_st bladeopen;
	feedopen_st feedopen;
	saw_st saw;
	tilt_st tilt;

	// impl1 is for blades, feed open & tilt
	remote_valve_st impl1;
	// impl2 is for feed & saw
	remote_valve_st impl2;

	measurement_st meas;

	uv_data_start_t data_start;

	allopen_conf_st allopen_conf;
	bladeopen_conf_st bladeopen_conf;
	feedopen_conf_st feedopen_conf;
	feed_conf_st feed_conf;
	saw_conf_st saw_conf;
	tilt_conf_st tilt_conf;

	measurement_conf_st meas_conf;

	uv_data_end_t data_end;

} dev_st;


void step(void* me);

void init(dev_st* me);





#endif /* MAIN_H_ */
