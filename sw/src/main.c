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

#include <uv_utilities.h>
#include <uv_rtos.h>
#include <uv_eeprom.h>
#include <string.h>

dev_st dev = {};
#define this ((dev_st*) &dev)

#define VND5050_CURRENT_AMPL_UA		4173
#define OUT_AVG_COUNT				10



void gpio_callback(uv_gpios_e gpio) {
	// length measurement
	if (gpio == DIN5) {
		this->len_um += (UV_GPIO_GET(DIN5) == UV_GPIO_GET(DIN7)) ? this->len_calib : -this->len_calib;
	}
	else if (gpio == DIN7) {
		this->len_um += (UV_GPIO_GET(DIN5) == UV_GPIO_GET(DIN7)) ? -this->len_calib : this->len_calib;
	}
	else if ((gpio == DIN2) || (gpio == DIN3)) {
		if (gpio == DIN2) {
			this->saw_abs_pos += (UV_GPIO_GET(DIN2) == UV_GPIO_GET(DIN3)) ? -1 : 1;
		}
		else if (gpio == DIN3) {
			this->saw_abs_pos += (UV_GPIO_GET(DIN2) == UV_GPIO_GET(DIN3)) ? 1 : -1;
		}
		else {

		}
		// saw position cannot be negative
		if (this->saw_abs_pos < 0) {
			this->saw_abs_pos = 0;
		}
		// saw maximum position is calculated on-the-go
		else if (this->saw_abs_pos > this->saw_max_pos) {
			this->saw_max_pos = this->saw_abs_pos;
		}
		else {
			// calculate saw relative position
			this->saw_rel_pos = 100 * this->saw_abs_pos / this->saw_max_pos;
		}
	}
	else if (gpio == DIN1) {
		this->width_pulses += (UV_GPIO_GET(DIN4) == UV_GPIO_GET(DIN1)) ? 1 : -1;
	}
	else if (gpio == DIN4) {
		this->width_pulses += (UV_GPIO_GET(DIN4) == UV_GPIO_GET(DIN1)) ? -1 : 1;
	}
	else {

	}
}


void init(dev_st* me) {
	// load non-volatile data
	if (uv_memory_load()) {
		printf("*****\nresetting defaults\n*****\n");
		command_reset(&this->blades_open);
		command_reset(&this->feed_open);
		command_reset(&this->feed);
		command_reset(&this->saw);
		command_reset(&this->tilt);
		command_reset(&this->all_open);

		this->all_open_blade_open_time_ms = ALL_OPEN_BLADE_OPEN_TIME_MS_DEF;
		this->len_calib = LEN_CALIB_DEFAULT_UM;
		this->feed_finetune_start_dist_um = FEED_FINETUNE_START_DIST_UM_DEF;
		this->feed_finetune_end_dist_um = FEED_FINETUNE_END_DIST_UM_DEF;
		this->feed_finetune_feed_ms = FEED_FINETUNE_FEED_MS_DEF;
		this->feed_finetune_wait_ms = FEED_FINETUNE_WAIT_MS_DEF;
		this->feed_parallel_feed_ms = FEED_PARALLEL_FEED_MS_DEF;
		this->feed_parallel_wait_ms = FEED_PARALLEL_WAIT_MS_DEF;

		this->total_volume = 0;
		uv_eeprom_write(&this->total_volume, sizeof(this->total_volume), VOLUME_EEPROM_ADDR);

		measurement_reset(&this->meas);
		this->saw_in_speed = SAW_IN_SPEED_DEF;
		this->saw_out_speed = SAW_OUT_SPEED_DEF;

		uv_memory_save();
	}

	measurement_init(&this->meas);

	uv_mutex_init(&this->mutex);

	command_init(&this->blades_open);
	command_init(&this->feed_open);
	command_init(&this->feed);
	command_init(&this->saw);
	command_init(&this->tilt);
	command_init(&this->all_open);

	// initialize outputs
	for (uint8_t i = 0; i < OUT_COUNT; i++) {
		uv_dual_output_init(&this->out[i], outs[i].gpioa, outs[i].gpiob, outs[i].adc,
				VND5050_CURRENT_AMPL_UA, 4000, 6000, OUT_AVG_COUNT,
				ICU_EMCY_OUT1_OVERCURRENT + i * 2, ICU_EMCY_OUT1_FAULT + i * 2);
	}
	uv_dual_output_set_invert(&this->out[BLADES_OPEN_OUT], true);
	uv_dual_output_set_invert(&this->out[FEED_OPEN_OUT], true);

	this->len_um = 0;
	this->target_length_um = 3000000;
	this->target_length_reached = 0;
	this->saw_abs_pos = 0;
	this->saw_position_unknown = 1;

	this->width_mm = 0;
	this->width_pulses = 0;

	this->log_volume = 0;
	this->vol_reset = 0;
	uv_eeprom_read(&this->total_volume, sizeof(this->total_volume), VOLUME_EEPROM_ADDR);

	this->fsb.ignkey_state = FSB_IGNKEY_STATE_OFF;
	this->fsb.emcy = 0;
	this->ecu.hydr_pressure = 0;

	remote_valve_init(&this->impl1, REMOTE_VALVE_DELAY_MS, &this->mutex, false);
	remote_valve_init(&this->impl2, REMOTE_VALVE_DELAY_MS, &this->mutex, true);

	uv_gpio_add_interrupt_callback(&gpio_callback);

	uv_gpio_init_input(DIN1, PULL_UP_ENABLED);
	uv_gpio_init_int(DIN1, INT_BOTH_EDGES);

	uv_gpio_init_input(DIN2, PULL_UP_ENABLED);
	uv_gpio_init_int(DIN2, INT_BOTH_EDGES);

	uv_gpio_init_input(DIN3, PULL_UP_ENABLED);
	uv_gpio_init_int(DIN3, INT_BOTH_EDGES);

	uv_gpio_init_input(DIN4, PULL_UP_ENABLED);
	uv_gpio_init_int(DIN4, INT_BOTH_EDGES);

	uv_gpio_init_input(DIN5, PULL_UP_ENABLED);
	uv_gpio_init_int(DIN5, INT_BOTH_EDGES);

	uv_gpio_init_input(DIN7, PULL_UP_ENABLED);
	uv_gpio_init_int(DIN7, INT_BOTH_EDGES);

	//init terminal and pass application terminal commands array as a parameter
	uv_terminal_init(terminal_commands, commands_size());

	uv_canopen_set_state(CANOPEN_OPERATIONAL);
}



void step(void* me) {

	init(this);

	while (true) {
		unsigned int step_ms = 10;
		// update watchdog timer value to prevent a hard reset
		// uw_wdt_update();

		// terminal step function
		uv_terminal_step();

		if (this->save_req) {
			uv_memory_save();
			this->save_req = 0;
		}

		remote_valve_step(&this->impl1, step_ms);
		remote_valve_step(&this->impl2, step_ms);

		uint16_t current = 0;
		for (uint8_t i = 0; i < OUT_COUNT; i++) {
			uv_dual_output_step(&this->out[i], step_ms);

			current += abs(uv_dual_output_get_current(&this->out[i]));
		}
		this->total_current = current;

		// if FSB, left keypad or right keypad heartbeat message is not received in a given time,
		// it indicates that FSB is not in the system. As FSB takes care of the EMCY switch,
		// the best practice would be to assume that the EMCY switch is turned on.
//		if (uv_canopen_heartbeat_producer_is_expired(FSB_NODE_ID)) {
//			this->fsb.ignkey_state = FSB_IGNKEY_STATE_OFF;
//			this->fsb.emcy = 1;
//		}

		// emcy
		if (this->fsb.emcy || uv_canopen_heartbeat_producer_is_expired(0x3) ||
				uv_canopen_heartbeat_producer_is_expired(0x4)) {
			for (uint8_t i = 0; i < OUT_COUNT; i++) {
				uv_dual_output_disable(&this->out[i]);
			}
			this->blades_open.req = 0;
			this->feed_open.req = 0;
			this->feed.req = 0;
			this->saw.req = 0;
			this->tilt.req = 0;
			this->all_open.req = 0;
		}
		else {
			for (uint8_t i = 0; i < OUT_COUNT; i++) {
				uv_dual_output_enable(&this->out[i]);
			}
		}

		if (this->width_pulses < 0) {
			this->width_pulses = 0;
		}
		this->width_mm = get_width_mm(&this->meas, this->width_pulses);


		// calculate volume change in microcubicmeters
		static int32_t vol_last_len = 0;
		static uint32_t vol_last_width = 500;
		if ((this->len_um - vol_last_len) / 1000 >= 100) {
			uint32_t w = (this->width_mm < vol_last_width) ? this->width_mm : vol_last_width;
			uint32_t vol = (3.1415 * w / 2 * w / 2) / 1000 *
					((this->len_um - vol_last_len) / 1000);
			this->log_volume += vol;

			vol_last_len = this->len_um;
			vol_last_width = this->width_mm;
		}
		// the log was cut
		if (command_get_req(&this->saw) && this->log_volume) {
			static uint32_t last_tot_vol = 0;

			this->total_volume += this->log_volume;

			// write to eeprom when volume increases by 0.1 cubic meters
			if ((this->total_volume / 100000) != (last_tot_vol / 100000)) {
				uv_eeprom_write(&this->total_volume, sizeof(this->total_volume), VOLUME_EEPROM_ADDR);
				last_tot_vol = this->total_volume;
			}

			this->log_volume = 0;
			vol_last_len = 0;
			vol_last_width = 500;
		}

		// volume reset
		if (this->vol_reset) {
			this->vol_reset = 0;
			this->total_volume = 0;
			uv_eeprom_write(&this->total_volume, sizeof(this->total_volume), VOLUME_EEPROM_ADDR);
		}


		uv_rtos_task_delay(step_ms);
	}
}


static void blades_open(void* me) {
	uint16_t step_ms = 20;
	// make sure that main task initializes commands
	uv_rtos_task_delay(step_ms);

	while (true) {
		command_step(&this->blades_open, step_ms);

		if (command_is_released(&this->blades_open)) {
			uv_dual_output_set_dir(&this->out[BLADES_OPEN_OUT], DUAL_OUTPUT_OFF);
		}
		else if (command_get_req(&this->blades_open) != 0) {
			remote_valve_set_request(&this->impl1, &this->blades_open,
					command_get_current_ma(&this->blades_open));

			uv_dual_output_set_dir(&this->out[BLADES_OPEN_OUT],
					(command_get_req(&this->blades_open) > 0) ?
							DUAL_OUTPUT_POS : DUAL_OUTPUT_NEG);
		}
		else {

		}

		uv_rtos_task_delay(step_ms);
	}
}


static void feed_open(void *me) {
	uint16_t step_ms = 20;
	// make sure that main task initializes commands
	uv_rtos_task_delay(step_ms);

	while (true) {
		command_step(&this->feed_open, step_ms);

		if (command_is_released(&this->feed_open)) {
			remote_valve_set_request(&this->impl1, &this->feed_open, 0);

			uv_dual_output_set_dir(&this->out[FEED_OPEN_OUT], DUAL_OUTPUT_OFF);
		}
		else if (command_get_req(&this->feed_open) != 0) {
			remote_valve_set_request(&this->impl1, &this->feed_open,
					command_get_current_ma(&this->feed_open));

			uv_dual_output_set_dir(&this->out[FEED_OPEN_OUT],
					(command_get_req(&this->feed_open) > 0) ?
							DUAL_OUTPUT_POS : DUAL_OUTPUT_NEG);
		}
		else {

		}

		uv_rtos_task_delay(step_ms);
	}
}


static void tilt(void *me) {
	uint16_t step_ms = 20;
	// make sure that main task initializes commands
	uv_rtos_task_delay(step_ms);

	while (true) {
		command_step(&this->tilt, step_ms);

		if (command_is_released(&this->tilt)) {
			remote_valve_set_request(&this->impl1, &this->tilt, 0);

			uv_dual_output_set_dir(&this->out[TILT_OUT], DUAL_OUTPUT_OFF);
		}
		else if (command_get_req(&this->tilt) != 0) {
			remote_valve_set_request(&this->impl1, &this->tilt,
					command_get_current_ma(&this->tilt));

			uv_dual_output_set_dir(&this->out[TILT_OUT],
					(command_get_req(&this->tilt) > 0) ?
							DUAL_OUTPUT_POS : DUAL_OUTPUT_NEG);
		}

		uv_rtos_task_delay(step_ms);
	}
}


static void all_open(void *me) {
	uint16_t step_ms = 20;
	uv_delay_st delay;
	uv_delay_init(&delay, this->all_open_blade_open_time_ms);

	// make sure that main task initializes commands
	uv_rtos_task_delay(step_ms);

	while (true) {
		command_step(&this->all_open, step_ms);

		if (command_is_pressed(&this->all_open)) {
			uv_delay_init(&delay, this->all_open_blade_open_time_ms);
		}

		if (command_get_req(&this->all_open) > 0) {
			// opening is easy
			remote_valve_set_request(&this->impl1, &this->all_open,
					command_get_current_ma(&this->all_open));
			uv_dual_output_set_dir(&this->out[BLADES_OPEN_OUT], DUAL_OUTPUT_POS);
			uv_dual_output_set_dir(&this->out[FEED_OPEN_OUT], DUAL_OUTPUT_POS);
		}
		else if (command_get_req(&this->all_open) < 0) {
			// closing need some logic
			uv_dual_output_set_dir(&this->out[BLADES_OPEN_OUT], DUAL_OUTPUT_NEG);

			// delay is calculated via time which is normalized to command speed
			uint16_t step = step_ms * abs(command_get_req(&this->all_open)) / COMMAND_REQ_MAX_VAL;
			if (uv_delay(&delay, step) ||
					uv_delay_has_ended(&delay) ||
					(this->ecu.hydr_pressure > this->all_open_pressure_limit)) {
				uv_dual_output_set_dir(&this->out[FEED_OPEN_OUT], DUAL_OUTPUT_NEG);
			}

			remote_valve_set_request(&this->impl1, &this->all_open,
					command_get_current_ma(&this->all_open));
		}
		else {

		}

		if (command_is_released(&this->all_open)) {
			remote_valve_set_request(&this->impl1, &this->all_open, 0);
			uv_dual_output_set_dir(&this->out[BLADES_OPEN_OUT], DUAL_OUTPUT_OFF);
			uv_dual_output_set_dir(&this->out[FEED_OPEN_OUT], DUAL_OUTPUT_OFF);
		}

		uv_rtos_task_delay(step_ms);
	}
}





typedef enum {
	FEED_STATE_NORMAL = 0,
	FEED_STATE_FINETUNE,
	FEED_STATE_DEBRANCH,
	FEED_STATE_REACHED,
	FEED_STATE_COUNT
} feed_state_e;


typedef struct {
	feed_state_e state;
	int32_t last_length;
	uv_delay_st parallel_delay;
	uv_delay_st finetune_delay;
	bool parallel_feeding;
} feed_st;


/// @brief: Returns true if parallel feeding should be on
/// (feeding havent moved enough)
static bool feed_get_parallel_req(feed_st *feed, uint16_t step_ms) {
	bool ret = false;
	if (feed->parallel_feeding) {
		// parallel feeding is on. Wait for a while and then stop the feeding
		if (uv_delay(&feed->parallel_delay, step_ms)) {
			feed->parallel_feeding = false;
			uv_delay_init(&feed->parallel_delay, this->feed_parallel_wait_ms);
		}
		else {
			ret = true;
		}
	}
	else {
		if (((this->len_um + FEED_PARALLEL_TOLERANCE_UM) > feed->last_length) &&
				((this->len_um - FEED_PARALLEL_TOLERANCE_UM) < feed->last_length)) {
			// feeding is stopped because of too big branches
			if (uv_delay(&feed->parallel_delay, step_ms)) {
				// feeding was stopped too long time, switch on parallel feeding
				uv_delay_init(&feed->parallel_delay, this->feed_parallel_feed_ms);
				feed->parallel_feeding = true;
				ret = true;
			}
		}
		else {
			// reset parallel feeding time since feeding is proceeding
			uv_delay_init(&feed->parallel_delay, this->feed_parallel_wait_ms);
		}
	}
	return ret;
}

static bool feed_finetune_distance_reached(feed_st *feed) {
	return (abs(this->len_um - this->target_length_um) < this->feed_finetune_start_dist_um);
}

static bool feed_target_reached(feed_st *feed) {
	return (abs(this->len_um - this->target_length_um) < this->feed_finetune_end_dist_um);
}


static void feed_set_state(feed_st *feed, feed_state_e state) {
	feed->state = state;
	if (state == FEED_STATE_NORMAL) {
		// parallel feeding initialization
		uv_delay_init(&feed->parallel_delay, this->feed_parallel_wait_ms);
		feed->parallel_feeding = false;
	}
	else if (state == FEED_STATE_FINETUNE) {
	}
	else {

	}
}

static void feed(void *me) {
	uint16_t step_ms = 20;
	feed_st feed;
	feed_set_state(&feed, FEED_STATE_NORMAL);
	// make sure that main task initializes commands
	uv_rtos_task_delay(step_ms);


	// after start up feed command is disabled until saw position is known
	while (this->saw_position_unknown) {
		uv_rtos_task_delay(step_ms);
	}
	uv_rtos_task_delay(1000);


	while (true) {
		command_step(&this->feed, step_ms);

		// feeding started
		if (command_is_pressed(&this->feed)) {
			// on start determine the state where we are
			feed_set_state(&feed, FEED_STATE_NORMAL);
		}

		// feeding is disabled while sawing
		while (uv_dual_output_get_dir(&this->out[SAW_MOVE_OUT]) != DUAL_OUTPUT_OFF) {
			uv_rtos_task_delay(step_ms);
		}

		if (command_get_req(&this->feed)) {
			if (feed.state == FEED_STATE_NORMAL) {

				remote_valve_set_request(&this->impl2, &this->feed,
						command_get_current_ma(&this->feed));

				// parallel feeding
				bool parallel = feed_get_parallel_req(&feed, step_ms);
				uv_dual_output_set_dir(&this->out[FEED_SAW_OUT],
						parallel ? DUAL_OUTPUT_OFF : FEED_SERIES_DIR);

				// wait until we are close to target length, then change to fine tuning
				if (feed_finetune_distance_reached(&feed)) {
					remote_valve_set_request(&this->impl2, &this->feed, 0);
					uv_rtos_task_delay(this->feed_finetune_wait_ms);
					feed_set_state(&feed, FEED_STATE_FINETUNE);
				}
			}
			else if (feed.state == FEED_STATE_FINETUNE) {
				// when finetuning, parallel feeding is always on
				uv_dual_output_set_dir(&this->out[FEED_SAW_OUT], FEED_SERIES_DIR);
				// feed towards the target with reduced speed
				remote_valve_set_request(&this->impl2, &this->feed,
						(this->target_length_um > this->len_um) ?
								(command_get_current_ma(&this->feed) / 8) :
								-(command_get_current_ma(&this->feed) / 8));
				// time to finetune
				if (feed_target_reached(&feed)) {
					while (true) {
						remote_valve_set_request(&this->impl2, &this->feed, 0);

						uv_rtos_task_delay(this->feed_finetune_wait_ms);

						if (feed_target_reached(&feed) || command_get_req(&this->saw)) {
							uv_dual_output_set_dir(&this->out[FEED_SAW_OUT], DUAL_OUTPUT_OFF);
							break;
						}
						else {
							remote_valve_set_request(&this->impl2, &this->feed,
									(this->target_length_um > this->len_um) ?
											(command_get_current_ma(&this->feed) / 8) :
											-(command_get_current_ma(&this->feed) / 8));
							uv_rtos_task_delay(this->feed_finetune_feed_ms);
						}
					}
				}
			}
			else {

			}

			// update last length
			feed.last_length = this->len_um;
		}
		else {
		}


		// feeding ended
		if (command_is_released(&this->feed)) {
			feed_set_state(&feed, FEED_STATE_NORMAL);
			uv_dual_output_set_dir(&this->out[FEED_SAW_OUT], DUAL_OUTPUT_OFF);

			remote_valve_set_request(&this->impl2, &this->feed, 0);
		}

		uv_rtos_task_delay(step_ms);
	}
}


static inline bool saw_is_home(int32_t saw_pos) {
	return (saw_pos < SAW_HOME_VAL);
}


static void saw(void *me) {
	uint16_t step_ms = 20;
	// make sure that main task initializes commands
	uv_rtos_task_delay(step_ms);

	int32_t saw_out_speed = 0;

	while (true) {
		command_step(&this->saw, step_ms);

		// length is cleared when saw starts
		if (command_is_pressed(&this->saw)) {
			saw_out_speed = this->saw_out_speed;
			this->len_um = 0;
			// accelerate the saw
			if (command_get_req(&this->saw) < 0) {
				uv_dual_output_set_dir(&this->out[FEED_SAW_OUT], SAW_DIR);
				remote_valve_set_request(&this->impl2, &this->saw,
						command_get_current_ma(&this->saw));

				uv_rtos_task_delay(SAW_ACC_DELAY_MS);
			}
		}

		// saw in request
		if (command_get_req(&this->saw) > 0) {
			// saw is coming in
			// set saw position to known. Operator is responsible for
			// taking the saw in at start up
			this->saw_position_unknown = 0;
			uv_dual_output_set_dir(&this->out[SAW_MOVE_OUT], SAW_IN_DIR);
			remote_valve_set_request(&this->impl1, &this->saw, this->saw_in_speed);
		}

		// saw out request
		// active only if saw position is known
		else if ((command_get_req(&this->saw) < 0) && (!this->saw_position_unknown)) {
			// small fuzzy controller limiting the out speed when sawing wood
			if (this->ecu.hydr_pressure > 230) {
				if (saw_out_speed > 40) {
					saw_out_speed -= 20;
				}
			}
			uv_dual_output_set_dir(&this->out[FEED_SAW_OUT], SAW_DIR);

			remote_valve_set_request(&this->impl2, &this->saw,
					command_get_current_ma(&this->saw));

			uv_dual_output_set_dir(&this->out[SAW_MOVE_OUT], SAW_OUT_DIR);
			remote_valve_set_request(&this->impl1, &this->saw, saw_out_speed);
		}
		else {
		}


		// if command was released when the saw is home,
		// stop valves and drive remote valve to zero
		if (command_is_released(&this->saw)) {
			remote_valve_drive_to_zero(&this->impl2);
			if (!this->saw_position_unknown) {
				uv_delay_st delay;
				uv_delay_init(&delay, SAW_IN_WAIT_MS);
				// wait a little when changing saw direction
				if (!saw_is_home(this->saw_abs_pos)) {
					uv_dual_output_set_dir(&this->out[SAW_MOVE_OUT], SAW_IN_DIR);
					uv_rtos_task_delay(100);
				}
				while (!saw_is_home(this->saw_abs_pos)) {
					uv_dual_output_set_dir(&this->out[SAW_MOVE_OUT], SAW_IN_DIR);
					remote_valve_set_request(&this->impl1, &this->saw, this->saw_in_speed);

					// time delay so that we dont end in an infinite loop is saw doesnt come in
					if (uv_delay(&delay, step_ms)) {
						break;
					}

					uv_rtos_task_delay(step_ms);
				}
			}
			remote_valve_set_request(&this->impl1, &this->saw, 0);
			uv_dual_output_set_dir(&this->out[SAW_MOVE_OUT], DUAL_OUTPUT_OFF);
			// wait for oil flow to stop. Otherwise the oil rotates
			// the feed rollers when saw stops
			while (!remote_valve_is_zero(&this->impl2)) {
				uv_rtos_task_delay(10);
			}
			// put off the valve control
			uv_dual_output_set_dir(&this->out[FEED_SAW_OUT], DUAL_OUTPUT_OFF);
		}

		uv_rtos_task_delay(step_ms);
	}
}


int main(void) {

	// init the watchdog timer
//	uw_wdt_init(5);

	uv_init(&dev);

	uv_rtos_task_create(&step, "step", UV_RTOS_MIN_STACK_SIZE * 3,
			&dev, UV_RTOS_IDLE_PRIORITY + 2, NULL);

	uv_rtos_task_create(&blades_open, "blades_open", UV_RTOS_MIN_STACK_SIZE,
			&dev, UV_RTOS_IDLE_PRIORITY + 1, NULL);

	uv_rtos_task_create(&feed_open, "feed_open", UV_RTOS_MIN_STACK_SIZE,
			&dev, UV_RTOS_IDLE_PRIORITY + 1, NULL);

	uv_rtos_task_create(&tilt, "tilt", UV_RTOS_MIN_STACK_SIZE,
			&dev, UV_RTOS_IDLE_PRIORITY + 1, NULL);

	uv_rtos_task_create(&all_open, "all_open", UV_RTOS_MIN_STACK_SIZE,
			&dev, UV_RTOS_IDLE_PRIORITY + 1, NULL);

	uv_rtos_task_create(&saw, "saw", UV_RTOS_MIN_STACK_SIZE,
			&dev, UV_RTOS_IDLE_PRIORITY + 1, NULL);

	uv_rtos_task_create(&feed, "feed", UV_RTOS_MIN_STACK_SIZE * 2,
			&dev, UV_RTOS_IDLE_PRIORITY + 1, NULL);

	uv_rtos_start_scheduler();


    // Enter an infinite loop
	// never should end up here
    while(1) {
    }
    return 0;
}



