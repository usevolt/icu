/*
===============================================================================
 Name        : main.c
 Author      : Olli Usenius
 Version     :
 Copyright   : $(copyright)
 Description :
===============================================================================
*/

#include "main.h"
#include "messages.h"
#include "pin_mappings.h"
#include "can_fsb.h"
#include "can_keypad.h"

#include <uv_utilities.h>
#include <uv_rtos.h>
#include <uv_eeprom.h>
#include <string.h>

dev_st dev = {};
static bool initialized = false;
#define this ((dev_st*) &dev)



void gpio_callback(uv_gpios_e gpio) {
	if (gpio == LEN_IN) {
		feed_len_int(&this->feed);
	}
}


void init(dev_st* me) {
	// load non-volatile data
	if (uv_memory_load(MEMORY_APP_PARAMS)) {

		allopen_conf_reset(&this->allopen_conf);
		bladeopen_conf_reset(&this->bladeopen_conf);
		feedopen_conf_reset(&this->feedopen_conf);
		saw_conf_reset(&this->saw_conf);
		tilt_conf_reset(&this->tilt_conf);
		feed_conf_reset(&this->feed_conf);
		measurement_reset(&this->meas_conf);

		uv_memory_save();
	}

	this->fsb.ignkey_state = FSB_IGNKEY_STATE_OFF;
	this->fsb.emcy = 0;
	this->fsb.door_sw1 = 0;
	this->fsb.door_sw2 = 0;
	this->fsb.seat_sw = 0;

	this->hcu.hydr_pressure = 0;

	uv_gpio_interrupt_init(&gpio_callback);

	remote_valve_init(&this->impl1, REMOTE_VALVE_DELAY_MS, false);
	remote_valve_init(&this->impl2, REMOTE_VALVE_DELAY_MS, true);

	bladeopen_init(&this->bladeopen, &this->bladeopen_conf);
	feedopen_init(&this->feedopen, &this->feedopen_conf);
	saw_init(&this->saw, &this->saw_conf);
	tilt_init(&this->tilt, &this->tilt_conf);
	feed_init(&this->feed, &this->feed_conf);
	allopen_init(&this->allopen, &this->allopen_conf);

	measurement_init(&this->meas, &this->meas_conf);

	//init terminal and pass application terminal commands array as a parameter
	uv_terminal_init(terminal_commands, commands_size());

	uv_canopen_set_state(CANOPEN_OPERATIONAL);

	initialized = true;
}




void step(void* me) {

	init(this);

	while (true) {
		unsigned int step_ms = 20;
		// update watchdog timer value to prevent a hard reset
		// uw_wdt_update();

		// terminal step function
		uv_terminal_step();

		bladeopen_step(&this->bladeopen, step_ms);
		feedopen_step(&this->feedopen, step_ms);
		saw_step(&this->saw, step_ms);
		tilt_step(&this->tilt, step_ms);
		feed_step(&this->feed, step_ms);
		allopen_step(&this->allopen, step_ms);

		measurement_step(&this->meas, step_ms, uv_adc_read(WIDTH1_AIN), uv_adc_read(WIDTH2_AIN));

		remote_valve_step(&this->impl1, step_ms);
		remote_valve_step(&this->impl2, step_ms);

		this->total_current = abs(bladeopen_get_current(&this->bladeopen)) +
				abs(feedopen_get_current(&this->feedopen)) +
				abs(saw_get_current(&this->saw)) +
				abs(tilt_get_current(&this->tilt)) +
				abs(feed_get_current(&this->feed));


		// outputs are disables if FSB is not found, ignition key is not in ON state,
		// or emergency switch is pressed
		if (
//				these are disabled to prevent unintended disabling of outputs since
//				not all CAN messages are received
//				uv_canopen_heartbeat_producer_is_expired(FSB_NODE_ID) ||
//				uv_canopen_heartbeat_producer_is_expired(RKEYPAD_NODE_ID) ||
//				uv_canopen_heartbeat_producer_is_expired(LKEYPAD_NODE_ID) ||
				(this->fsb.ignkey_state != FSB_IGNKEY_STATE_ON) ||
				this->fsb.emcy ||
				!this->fsb.seat_sw) {
			// disable all outputs
			bladeopen_disable(&this->bladeopen);
			feedopen_disable(&this->feedopen);
			saw_disable(&this->saw);
			tilt_disable(&this->tilt);
			feed_disable(&this->feed);
		}
		else {
			// enable outputs
			bladeopen_enable(&this->bladeopen);
			feedopen_enable(&this->feedopen);
			saw_enable(&this->saw);
			tilt_enable(&this->tilt);
			feed_enable(&this->feed);
		}

		uv_rtos_task_delay(step_ms);
	}
}




int main(void) {

	// init the watchdog timer
//	uw_wdt_init(5);

	uv_init(&dev);

	uv_rtos_task_create(&step, "step", UV_RTOS_MIN_STACK_SIZE * 2,
			&dev, UV_RTOS_IDLE_PRIORITY + 1, NULL);

	uv_rtos_start_scheduler();


    // Enter an infinite loop
	// never should end up here
    while(1) {
    }
    return 0;
}



