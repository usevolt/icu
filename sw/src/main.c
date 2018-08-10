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

}


void init(dev_st* me) {
	// load non-volatile data
	if (uv_memory_load()) {
		printf("*****\nresetting defaults\n*****\n");

		bladeopen_conf_reset(&this->bladeopen_conf);

		uv_memory_save();
	}

	this->fsb.ignkey_state = FSB_IGNKEY_STATE_OFF;
	this->fsb.emcy = 0;
	this->fsb.door_sw1 = 0;
	this->fsb.door_sw2 = 0;
	this->fsb.seat_sw = 0;


	remote_valve_init(&this->impl1, REMOTE_VALVE_DELAY_MS, false);
	remote_valve_init(&this->impl2, REMOTE_VALVE_DELAY_MS, true);

	bladeopen_init(&this->bladeopen, &this->bladeopen_conf);

	uv_gpio_interrupt_init(&gpio_callback);


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

		remote_valve_step(&this->impl1, step_ms);
		remote_valve_step(&this->impl2, step_ms);

		this->total_current = 0;

		// if FSB, left keypad or right keypad heartbeat message is not received in a given time,
		// it indicates that FSB is not in the system. As FSB takes care of the EMCY switch,
		// the best practice would be to assume that the EMCY switch is turned on.
//		if (uv_canopen_heartbeat_producer_is_expired(FSB_NODE_ID)) {
//			this->fsb.ignkey_state = FSB_IGNKEY_STATE_OFF;
//			this->fsb.emcy = 1;
//		}

		// outputs are disables if FSB is not found, ignition key is not in ON state,
		// or emergency switch is pressed
		if (uv_canopen_heartbeat_producer_is_expired(FSB_NODE_ID) ||
				(this->fsb.ignkey_state != FSB_IGNKEY_STATE_ON) ||
				this->fsb.emcy ||
				!this->fsb.seat_sw) {
			// disable all outputs
			bladeopen_disable(&this->bladeopen);
		}
		else {
			// enable outputs
			bladeopen_enable(&this->bladeopen);
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



