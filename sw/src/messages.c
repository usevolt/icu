/*
 * uw_messages.c
 *
 *  Created on: Feb 19, 2015
 *      Author: usenius
 */


#include "main.h"
#include "messages.h"
#include "can_icu.h"
#include "pin_mappings.h"
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <uv_timer.h>
#include <uv_utilities.h>

extern dev_st dev;
#define this (&dev)




canopen_object_st obj_dict[] = {
		{
				.main_index = ICU_TOTAL_CURRENT_INDEX,
				.sub_index = ICU_TOTAL_CURRENT_SUBINDEX,
				.type = ICU_TOTAL_CURRENT_TYPE,
				.permissions = ICU_TOTAL_CURRENT_PERMISSIONS,
				.data_ptr = &this->total_current
		},
		{
				.main_index = ICU_BLADE_OPEN_CONF_INDEX,
				.array_max_size = ICU_BLADE_OPEN_CONF_ARRAY_MAX_SIZE,
				.type = ICU_BLADE_OPEN_CONF_TYPE,
				.permissions = ICU_BLADE_OPEN_CONF_PERMISSIONS,
				.data_ptr = &this->blades_open.confs
		},
		{
				.main_index = ICU_BLADE_OPEN_REQ_INDEX,
				.sub_index = ICU_BLADE_OPEN_REQ_SUBINDEX,
				.type = ICU_BLADE_OPEN_REQ_TYPE,
				.permissions = ICU_BLADE_OPEN_REQ_PERMISSIONS,
				.data_ptr = &this->blades_open.req
		},
		{
				.main_index = ICU_FEED_OPEN_CONF_INDEX,
				.array_max_size = ICU_FEED_OPEN_CONF_ARRAY_MAX_SIZE,
				.type = ICU_FEED_OPEN_CONF_TYPE,
				.permissions = ICU_FEED_OPEN_CONF_PERMISSIONS,
				.data_ptr = &this->feed_open.confs
		},
		{
				.main_index = ICU_FEED_OPEN_REQ_INDEX,
				.sub_index = ICU_FEED_OPEN_REQ_SUBINDEX,
				.type = ICU_FEED_OPEN_REQ_TYPE,
				.permissions = ICU_FEED_OPEN_REQ_PERMISSIONS,
				.data_ptr = &this->feed_open.req
		},
		{
				.main_index = ICU_FEED_CONF_INDEX,
				.array_max_size = ICU_FEED_CONF_ARRAY_MAX_SIZE,
				.type = ICU_FEED_CONF_TYPE,
				.permissions = ICU_FEED_CONF_PERMISSIONS,
				.data_ptr = &this->feed.confs
		},
		{
				.main_index = ICU_FEED_REQ_INDEX,
				.sub_index = ICU_FEED_REQ_SUBINDEX,
				.type = ICU_FEED_REQ_TYPE,
				.permissions = ICU_FEED_REQ_PERMISSIONS,
				.data_ptr = &this->feed.req
		},
		{
				.main_index = ICU_SAW_CONF_INDEX,
				.array_max_size = ICU_SAW_CONF_ARRAY_MAX_SIZE,
				.type = ICU_SAW_CONF_TYPE,
				.permissions = ICU_SAW_CONF_PERMISSIONS,
				.data_ptr = &this->saw.confs
		},
		{
				.main_index = ICU_SAW_REQ_INDEX,
				.sub_index = ICU_SAW_REQ_SUBINDEX,
				.type = ICU_SAW_REQ_TYPE,
				.permissions = ICU_SAW_REQ_PERMISSIONS,
				.data_ptr = &this->saw.req
		},
		{
				.main_index = ICU_SAW_OUT_SPEED_INDEX,
				.sub_index = ICU_SAW_OUT_SPEED_SUBINDEX,
				.type = ICU_SAW_OUT_SPEED_TYPE,
				.permissions = ICU_SAW_OUT_SPEED_PERMISSIONS,
				.data_ptr = &this->saw_out_speed
		},
		{
				.main_index = ICU_SAW_IN_SPEED_INDEX,
				.sub_index = ICU_SAW_IN_SPEED_SUBINDEX,
				.type = ICU_SAW_IN_SPEED_TYPE,
				.permissions = ICU_SAW_IN_SPEED_PERMISSIONS,
				.data_ptr = &this->saw_in_speed
		},
		{
				.main_index = ICU_TILT_CONF_INDEX,
				.array_max_size = ICU_TILT_CONF_ARRAY_MAX_SIZE,
				.type = ICU_TILT_CONF_TYPE,
				.permissions = ICU_TILT_CONF_PERMISSIONS,
				.data_ptr = &this->tilt.confs
		},
		{
				.main_index = ICU_TILT_REQ_INDEX,
				.sub_index = ICU_TILT_REQ_SUBINDEX,
				.type = ICU_TILT_REQ_TYPE,
				.permissions = ICU_TILT_REQ_PERMISSIONS,
				.data_ptr = &this->tilt.req
		},
		{
				.main_index = ICU_ALL_OPEN_CONF_INDEX,
				.array_max_size = ICU_ALL_OPEN_CONF_ARRAY_MAX_SIZE,
				.type = ICU_ALL_OPEN_CONF_TYPE,
				.permissions = ICU_ALL_OPEN_CONF_PERMISSIONS,
				.data_ptr = &this->all_open.confs
		},
		{
				.main_index = ICU_ALL_OPEN_REQ_INDEX,
				.sub_index = ICU_ALL_OPEN_REQ_SUBINDEX,
				.type = ICU_ALL_OPEN_REQ_TYPE,
				.permissions = ICU_ALL_OPEN_REQ_PERMISSIONS,
				.data_ptr = &this->all_open.req
		},
		{
				.main_index = ICU_IMPL1_REQ_INDEX,
				.sub_index = ICU_IMPL1_REQ_SUBINDEX,
				.type = ICU_IMPL1_REQ_TYPE,
				.permissions = ICU_IMPL1_REQ_PERMISSIONS,
				.data_ptr = &dev.impl1.req_ma
		},
		{
				.main_index = ICU_IMPL2_REQ_INDEX,
				.sub_index = ICU_IMPL2_REQ_SUBINDEX,
				.type = ICU_IMPL2_REQ_TYPE,
				.permissions = ICU_IMPL2_REQ_PERMISSIONS,
				.data_ptr = &dev.impl2.req_ma
		},
		{
				.main_index = ICU_TARGET_LEN_UM_INDEX,
				.sub_index = ICU_TARGET_LEN_UM_SUBINDEX,
				.type = ICU_TARGET_LEN_UM_TYPE,
				.permissions = ICU_TARGET_LEN_UM_PERMISSIONS,
				.data_ptr = &dev.target_length_um
		},
		{
				.main_index = ICU_LEN_CALIB_INDEX,
				.sub_index = ICU_LEN_CALIB_SUBINDEX,
				.type = ICU_LEN_CALIB_TYPE,
				.permissions = ICU_LEN_CALIB_PERMISSIONS,
				.data_ptr = &dev.len_calib
		},
		{
				.main_index = ICU_TARGET_REACHED_INDEX,
				.sub_index = ICU_TARGET_REACHED_SUBINDEX,
				.type = ICU_TARGET_REACHED_TYPE,
				.permissions = ICU_TARGET_REACHED_PERMISSIONS,
				.data_ptr = &dev.target_length_reached
		},
		{
				.main_index = ICU_LEN_UM_INDEX,
				.sub_index = ICU_LEN_UM_SUBINDEX,
				.type = ICU_LEN_UM_TYPE,
				.permissions = ICU_LEN_UM_PERMISSIONS,
				.data_ptr = &dev.len_um
		},
		{
				.main_index = ICU_WIDTH_MM_INDEX,
				.sub_index = ICU_WIDTH_MM_SUBINDEX,
				.type = ICU_WIDTH_MM_TYPE,
				.permissions = ICU_WIDTH_MM_PERMISSIONS,
				.data_ptr = &dev.width_mm
		},
		{
				.main_index = ICU_VOLUME_INDEX,
				.sub_index = ICU_VOLUME_SUBINDEX,
				.type = ICU_VOLUME_TYPE,
				.permissions = ICU_VOLUME_PERMISSIONS,
				.data_ptr = &dev.total_volume
		},
		{
				.main_index = ICU_FEED_FINETUNE_WAIT_INDEX,
				.sub_index = ICU_FEED_FINETUNE_WAIT_SUBINDEX,
				.type = ICU_FEED_FINETUNE_WAIT_TYPE,
				.permissions = ICU_FEED_FINETUNE_WAIT_PERMISSIONS,
				.data_ptr = &dev.feed_finetune_wait_ms
		},
		{
				.main_index = ICU_FEED_FINETUNE_FEED_INDEX,
				.sub_index = ICU_FEED_FINETUNE_FEED_SUBINDEX,
				.type = ICU_FEED_FINETUNE_FEED_TYPE,
				.permissions = ICU_FEED_FINETUNE_FEED_PERMISSIONS,
				.data_ptr = &dev.feed_finetune_feed_ms
		},
		{
				.main_index = ICU_FEED_PARALLEL_WAIT_INDEX,
				.sub_index = ICU_FEED_PARALLEL_WAIT_SUBINDEX,
				.type = ICU_FEED_PARALLEL_WAIT_TYPE,
				.permissions = ICU_FEED_PARALLEL_WAIT_PERMISSIONS,
				.data_ptr = &dev.feed_parallel_wait_ms
		},
		{
				.main_index = ICU_FEED_PARALLEL_FEED_INDEX,
				.sub_index = ICU_FEED_PARALLEL_FEED_SUBINDEX,
				.type = ICU_FEED_PARALLEL_FEED_TYPE,
				.permissions = ICU_FEED_PARALLEL_FEED_PERMISSIONS,
				.data_ptr = &dev.feed_parallel_feed_ms
		},
		{
				.main_index = ICU_SAW_POSITION_INDEX,
				.sub_index = ICU_SAW_POSITION_SUBINDEX,
				.type = ICU_SAW_POSITION_TYPE,
				.permissions = ICU_SAW_POSITION_PERMISSIONS,
				.data_ptr = &dev.saw_rel_pos
		},
		{
				.main_index = ICU_SAW_POS_UNKNOWN_INDEX,
				.sub_index = ICU_SAW_POS_UNKNOWN_SUBINDEX,
				.type = ICU_SAW_POS_UNKNOWN_TYPE,
				.permissions = ICU_SAW_POS_UNKNOWN_PERMISSIONS,
				.data_ptr = &dev.saw_position_unknown
		},
		{
				.main_index = ICU_RESET_VOL_INDEX,
				.sub_index = ICU_RESET_VOL_SUBINDEX,
				.type = ICU_RESET_VOL_TYPE,
				.permissions = ICU_RESET_VOL_PERMISSIONS,
				.data_ptr = &dev.vol_reset
		},
		{
				.main_index = ICU_SAVE_INDEX,
				.sub_index = ICU_SAVE_SUBINDEX,
				.type = ICU_SAVE_TYPE,
				.permissions = ICU_SAVE_PERMISSIONS,
				.data_ptr = &dev.save_req
		},


		// other node's parameters
		{
				.main_index = ICU_FSB_IGNKEY_INDEX,
				.sub_index = ICU_FSB_IGNKEY_SUBINDEX,
				.type = FSB_IGNKEY_TYPE,
				.permissions = ICU_FSB_IGNKEY_PERMISSIONS,
				.data_ptr = &this->fsb.ignkey_state
		},
		{
				.main_index = ICU_FSB_EMCY_INDEX,
				.sub_index = ICU_FSB_EMCY_SUBINDEX,
				.type = FSB_EMCY_TYPE,
				.permissions = ICU_FSB_EMCY_PERMISSIONS,
				.data_ptr = &this->fsb.emcy
		},
		{
				.main_index = ICU_ECU_HYDR_PRESSURE_INDEX,
				.sub_index = ICU_ECU_HYDR_PRESSURE_SUBINDEX,
				.type = ICU_ECU_HYDR_PRESSURE_TYPE,
				.permissions = ICU_ECU_HYDR_PRESSURE_PERMISSIONS,
				.data_ptr = &this->ecu.hydr_pressure
		}
};

int obj_dict_len() {
	return sizeof(obj_dict) / sizeof(canopen_object_st);
}


void stat_callb(void* me, unsigned int cmd, unsigned int args, argument_st *argv);
void out_callb(void* me, unsigned int cmd, unsigned int args, argument_st *argv);
void cmd_callb(void* me, unsigned int cmd, unsigned int args, argument_st *argv);
void allopen_callb(void* me, unsigned int cmd, unsigned int args, argument_st *argv);
void feed_callb(void* me, unsigned int cmd, unsigned int args, argument_st *argv);
void w_callb(void* me, unsigned int cmd, unsigned int args, argument_st *argv);
void saw_callb(void* me, unsigned int cmd, unsigned int args, argument_st *argv);


const uv_command_st terminal_commands[] = {
		{
				.id = CMD_STAT,
				.str = "stat",
				.instructions = "Displays the system status information.\n"
						"Usage: stat",
				.callback = &stat_callb
		},
		{
				.id = CMD_OUT,
				.str = "out",
				.instructions = "Sets the output on for the given solenoid output.\n"
						"Usage: out <output_index> <direction(1/0)>",
				.callback = &out_callb
		},
		{
				.id = CMD_CMD,
				.str = "cmd",
				.instructions = "Gets or sets command confs.\n"
						"Usage: cmd <\"blade open\"/\"feed open\"/\"feed\"/\"saw\"/\"tilt\"/\"all open\">\n"
						"      (\"max speed p\"/\"min speed p\"/\"max speed n\"/\"min speed n\"/\"invert\")\n"
						"      (value)",
				.callback = &cmd_callb
		},
		{
				.id = CMD_ALL_OPEN,
				.str = "allopen",
				.instructions = "Gets or sets All Open command parameters.\n"
						"Usage: allopen (\"delay\") (value)",
				.callback = &allopen_callb
		},
		{
				.id = CMD_FEED,
				.str = "feed",
				.instructions = "Gets or sets the Feeding command parameters.\n"
						"Usage: feed (\"finetune start dist\"/\"finetune end dist\"/\"finetune wait\"/\"finetune feed\"/\n"
						"\"parallel wait\"/\"parallel feed\") (value)",
				.callback = &feed_callb
		},
		{
				.id = CMD_WIDTH,
				.str = "w",
				.instructions = "Interface for width measurement. Usage: \n"
						"w (\"add\"/\"rm\"/\"clear\")",
				.callback = &w_callb
		},
		{
				.id = CMD_SAW,
				.str = "saw",
				.instructions = "Gets or sets saw command parameter.\n"
						"Usage: saw (\"in\"/\"out\")",
				.callback = &saw_callb
		}
};




unsigned int commands_size(void) {
	return sizeof(terminal_commands) / sizeof(uv_command_st);
}



static void command_print(command_st *cmd, char *name) {
	printf("Command %s req: %i\n", name, cmd->req);
}


void stat_callb(void* me, unsigned int cmd, unsigned int args, argument_st *argv) {
	printf("SYSTEM STATUS:\n");
	printf("Total current: %u mA\n", (unsigned int) this->total_current);
	printf("Left keypad hearbeat expired: %u\n", uv_canopen_heartbeat_producer_is_expired(0x3));
	printf("Right keypad hearbeat expired: %u\n", uv_canopen_heartbeat_producer_is_expired(0x4));
	printf("FSB EMCY: %u\n", dev.fsb.emcy);
	printf("ECU pressure: %u\n", dev.ecu.hydr_pressure);
	command_print(&dev.all_open, "All Open");
	command_print(&dev.blades_open, "Blades Open");
	command_print(&dev.feed_open, "Feed Open");
	command_print(&dev.feed, "Feed");
	command_print(&dev.saw, "Saw");
	command_print(&dev.tilt, "Tilt");
	printf("impl1 request: %i\n", dev.impl1.req_ma);
	printf("impl2 request: %i\n", dev.impl2.req_ma);
	printf("width: %u pulses => %u mm\n", (unsigned int) this->width_pulses, (unsigned int) this->width_mm);
	printf("length: %i um, target length: %i um\n", (int) this->len_um, (int) this->target_length_um);
	printf("Total volume: %i mm3\n", (int) this->total_volume);
	printf("saw pos: %i (Unknown: %u)\n", (int) this->saw_abs_pos, this->saw_position_unknown);
}


void out_callb(void* me, unsigned int cmd, unsigned int args, argument_st *argv) {
	if (args >= 2) {
		if (argv[0].type == ARG_INTEGER) {
			if (argv[0].number >= OUT_COUNT) {
				printf("Argument too big. %u outputs available.\n", OUT_COUNT);
			}
			else {
				uv_dual_output_dir_e dir;
				char str[4];
				if (argv[1].number == 0) {
					dir = DUAL_OUTPUT_OFF;
					strcpy(str, "OFF");
				}
				else if (
						argv[1].number == 1) {
					dir = DUAL_OUTPUT_POS;
					strcpy(str, "POS");
				}
				else {
					dir = DUAL_OUTPUT_NEG;
					strcpy(str, "NEG");
				}
				uv_dual_output_set_dir(&this->out[argv[0].number], dir);
				printf("Output %u set to %s.\n", (unsigned int) argv[0].number, str);
			}
		}
	}
	else {
		printf("Give output index number as an argument\n");
	}
}


void cmd_callb(void* me, unsigned int cmd, unsigned int args, argument_st *argv) {
	if (!args || argv[0].type != ARG_STRING) {
		printf("Give command name as a string parameter\n");
	}
	else {
		command_st *cmd = NULL;
		if (strcmp(argv[0].str, "blade open") == 0) {
			cmd = &dev.blades_open;
		}
		else if (strcmp(argv[0].str, "feed open") == 0) {
			cmd = &dev.feed_open;
		}
		else if (strcmp(argv[0].str, "feed") == 0) {
			cmd = &dev.feed;
		}
		else if (strcmp(argv[0].str, "tilt") == 0) {
			cmd = &dev.tilt;
		}
		else if (strcmp(argv[0].str, "saw") == 0) {
			cmd = &dev.saw;
		}
		else if (strcmp(argv[0].str, "all open") == 0) {
			cmd = &dev.all_open;
		}
		else {
			printf("Unknown command '%s'.\n", argv[0].str);
		}
		if (cmd) {
			if (args >= 3) {
				if (argv[1].type != ARG_STRING) {
					printf("Second argument should define the parameter as a string argument\n");
				}
				else {
					if (strcmp(argv[1].str, "max speed p") == 0) {
						cmd->confs.max_current_p = argv[2].number;
					}
					else if (strcmp(argv[1].str, "min speed p") == 0) {
						cmd->confs.min_current_p = argv[2].number;
					}
					else if (strcmp(argv[1].str, "max speed n") == 0) {
						cmd->confs.max_current_n = argv[2].number;
					}
					else if (strcmp(argv[1].str, "min speed n") == 0) {
						cmd->confs.min_current_n = argv[2].number;
					}
					else if (strcmp(argv[1].str, "invert") == 0) {
						cmd->confs.invert = argv[2].number;
					}
					else {
						printf("Unknown conf '%s'\n", argv[1].str);
					}
				}
			}
			printf("%s:\nmax speed p: %u\nmin speed p: %u\nmax speed n: %u\nmin speed n: %u\ninvert: %u\n",
					argv[0].str, cmd->confs.max_current_p, cmd->confs.min_current_p,
					cmd->confs.max_current_n, cmd->confs.min_current_n, cmd->confs.invert);
		}
	}
}


void allopen_callb(void* me, unsigned int cmd, unsigned int args, argument_st *argv) {
	if (args >= 2) {
		if (argv[0].type != ARG_STRING) {
			printf("First argument should be string\n");
		}
		else {
			if (strcmp(argv[0].str, "delay") == 0) {
				this->all_open_blade_open_time_ms = argv[1].number;
			}
			else {
				printf("Unknown argument '%s'\n", argv[0].str);
			}
		}
	}
	printf("All Open:\nClose delay: %u ms\n", this->all_open_blade_open_time_ms);
}

void feed_callb(void* me, unsigned int cmd, unsigned int args, argument_st *argv) {
	if (args >= 2) {
		if (argv[0].type != ARG_STRING) {
			printf("First argument should be string\n");
		}
		else {
			if (strcmp(argv[0].str, "finetune start dist") == 0) {
				this->feed_finetune_start_dist_um = argv[1].number;
			}
			else if (strcmp(argv[0].str, "finetune end dist") == 0) {
				this->feed_finetune_end_dist_um = argv[1].number;
			}
			else if (strcmp(argv[0].str, "finetune wait") == 0) {
				this->feed_finetune_wait_ms = argv[1].number;
			}
			else if (strcmp(argv[0].str, "finetune feed") == 0) {
				this->feed_finetune_feed_ms = argv[1].number;
			}
			else if (strcmp(argv[0].str, "parallel wait") == 0) {
				this->feed_parallel_wait_ms = argv[1].number;
			}
			else if (strcmp(argv[0].str, "parallel feed") == 0) {
				this->feed_parallel_feed_ms = argv[1].number;
			}
			else {
				printf("Unknown argument '%s'\n", argv[0].str);
			}
		}
	}
	printf("Feed:\nFinetune start distance: %u um\nFinetune end distance: %u um\n"
			"Finetune wait time: %u ms\nFinetune feed time: %u ms\n"
			"Parallel wait time: %u ms\nParallel feed time: %u ms\n",
			(unsigned int) this->feed_finetune_start_dist_um,
			(unsigned int) this->feed_finetune_end_dist_um,
			this->feed_finetune_wait_ms, this->feed_finetune_feed_ms,
			this->feed_parallel_wait_ms, this->feed_parallel_feed_ms);
}



void w_callb(void* me, unsigned int cmd, unsigned int args, argument_st *argv) {
	if (args && (argv[0].type == ARG_STRING)) {
		const char *str = argv[0].str;
		if (strcmp(str, "add") == 0) {
			if (args < 3) {
				printf("Give pulse count and width in mm as arguments\n");
			}
			else {
				add_raw_point(&this->meas, argv[2].number, argv[1].number);
			}
		}
		else if (strcmp(str, "rm") == 0) {
			if (args < 2) {
				printf("Give index which is to be removed as an argument\n");
			}
			else {
				remove_data_point(&this->meas, argv[1].number);
			}
		}
		else if (strcmp(str, "clear") == 0) {
			clear_data_points(&this->meas);
		}

	}
	else {
		printf("Width points: %u\n", uv_vector_size(&this->meas.points));
		for (uint32_t i = 0; i < uv_vector_size(&this->meas.points); i++) {
			printf("%u:  %u => %u mm\n",
					(unsigned int) i,
					(unsigned int) (*((width_point_st*) uv_vector_at(&this->meas.points, i))).pulse_count,
					(unsigned int) (*((width_point_st*) uv_vector_at(&this->meas.points, i))).width_mm);
		}
	}
}


void saw_callb(void* me, unsigned int cmd, unsigned int args, argument_st *argv) {
	if (args >= 2) {
		if (argv[0].type != ARG_STRING) {
			printf("First argument should be string\n");
		}
		else {
			if (strcmp(argv[0].str, "in") == 0) {
				this->saw_in_speed = argv[1].number;
			}
			else if (strcmp(argv[0].str, "out") == 0) {
				this->saw_out_speed = argv[1].number;
			}
			else {
				printf("Unknown argument '%s'\n", argv[0].str);
			}
		}
	}
	printf("Saw:\n  In speed: %u\n  Out speed: %u\n",
			this->saw_in_speed, this->saw_out_speed);
}


