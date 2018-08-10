/*
 * uw_messages.c
 *
 *  Created on: Feb 19, 2015
 *      Author: usenius
 */


#include "main.h"
#include "messages.h"
#include "can_icu.h"
#include "can_fsb.h"
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
				.main_index = ICU_IMPL1_REQ_INDEX,
				.sub_index = ICU_IMPL1_REQ_SUBINDEX,
				.type = ICU_IMPL1_REQ_TYPE,
				.permissions = ICU_IMPL1_REQ_PERMISSIONS,
				.data_ptr = &dev.impl1.req
		},
		{
				.main_index = ICU_IMPL2_REQ_INDEX,
				.sub_index = ICU_IMPL2_REQ_SUBINDEX,
				.type = ICU_IMPL2_REQ_TYPE,
				.permissions = ICU_IMPL2_REQ_PERMISSIONS,
				.data_ptr = &dev.impl2.req
		},
		{
				.main_index = ICU_BLADEOPEN_REQ_INDEX,
				.sub_index = ICU_BLADEOPEN_REQ_SUBINDEX,
				.type = ICU_BLADEOPEN_REQ_TYPE,
				.permissions = ICU_BLADEOPEN_REQ_PERMISSIONS,
				.data_ptr = &this->bladeopen.input.request
		},
		{
				.main_index = ICU_BLADEOPEN_PARAM_INDEX,
				.array_max_size = ICU_BLADEOPEN_PARAM_ARRAY_MAX_SIZE,
				.type = ICU_BLADEOPEN_PARAM_TYPE,
				.permissions = ICU_BLADEOPEN_PARAM_PERMISSIONS,
				.data_ptr = &this->bladeopen_conf.out_conf
		},
		{
				.main_index = ICU_BLADEOPEN_CURRENT_INDEX,
				.sub_index = ICU_BLADEOPEN_CURRENT_SUBINDEX,
				.type = ICU_BLADEOPEN_CURRENT_TYPE,
				.permissions = ICU_BLADEOPEN_CURRENT_PERMISSIONS,
				.data_ptr = &this->bladeopen.out.current
		},


		// other node's parameters
		{
				.main_index = ICU_FSB_INDEX_OFFSET + FSB_IGNKEY_INDEX,
				.sub_index = FSB_IGNKEY_SUBINDEX,
				.type = FSB_IGNKEY_TYPE,
				.permissions = FSB_IGNKEY_PERMISSIONS,
				.data_ptr = &this->fsb.ignkey_state
		},
		{
				.main_index = ICU_FSB_INDEX_OFFSET + FSB_EMCY_INDEX,
				.sub_index = FSB_EMCY_SUBINDEX,
				.type = FSB_EMCY_TYPE,
				.permissions = FSB_EMCY_PERMISSIONS,
				.data_ptr = &this->fsb.emcy
		},
		{
				.main_index = ICU_FSB_INDEX_OFFSET + FSB_DOORSW1_INDEX,
				.sub_index = FSB_DOORSW1_SUBINDEX,
				.type = FSB_DOORSW1_TYPE,
				.permissions = FSB_DOORSW1_PERMISSIONS,
				.data_ptr = &this->fsb.door_sw1
		},
		{
				.main_index = ICU_FSB_INDEX_OFFSET + FSB_DOORSW2_INDEX,
				.sub_index = FSB_DOORSW2_SUBINDEX,
				.type = FSB_DOORSW2_TYPE,
				.permissions = FSB_DOORSW2_PERMISSIONS,
				.data_ptr = &this->fsb.door_sw2
		},
		{
				.main_index = ICU_FSB_INDEX_OFFSET + FSB_SEATSW_INDEX,
				.sub_index = FSB_SEATSW_SUBINDEX,
				.type = FSB_SEATSW_TYPE,
				.permissions = FSB_SEATSW_PERMISSIONS,
				.data_ptr = &this->fsb.seat_sw
		},
};

int obj_dict_len() {
	return sizeof(obj_dict) / sizeof(canopen_object_st);
}


void stat_callb(void* me, unsigned int cmd, unsigned int args, argument_st *argv);
void set_callb(void* me, unsigned int cmd, unsigned int args, argument_st *argv);


const uv_command_st terminal_commands[] = {
		{
				.id = CMD_STAT,
				.str = "stat",
				.instructions = "Displays the system status information.\n"
						"Usage: stat",
				.callback = &stat_callb
		},
		{
				.id = CMD_SET,
				.str = "set",
				.instructions = "Sets the configurations for output modules.\n"
						"Usage: set <\"bladeopen\"/\"feedopen\"/\"feed\"/\"saw\"/\"tilt\"> "
						"<\"maxa\"/\"maxb\"/\"acc\"/\"dec\"/\"invert\">"
						"<value>",
				.callback = &set_callb
		}
};




unsigned int commands_size(void) {
	return sizeof(terminal_commands) / sizeof(uv_command_st);
}



void stat_callb(void* me, unsigned int cmd, unsigned int args, argument_st *argv) {
	printf("SYSTEM STATUS:\n");
	printf("Total current: %u mA\n", (unsigned int) this->total_current);
	printf("Blade open: request: %i, current: %u\n",
			bladeopen_get_request(&this->bladeopen),
			bladeopen_get_current(&this->bladeopen));
}


void set_callb(void* me, unsigned int cmd, unsigned int args, argument_st *argv) {
	if ((args < 1) || (argv[0].type != ARG_STRING)) {
		printf("Give module name as an argument.\n");
	}
	else {
		icu_conf_st *conf = NULL;
		const char *str = argv[0].str;

		if (strcmp(str, "bladeopen") == 0) {
			conf = &this->bladeopen_conf.out_conf;
		}
		else {
			printf("Unknown module '%s'\n", str);
		}

		if (conf) {
			if (args > 2) {
				if ((argv[1].type == ARG_STRING) &&
					(argv[2].type == ARG_INTEGER)) {
					const char *s = argv[1].str;
					int16_t value = argv[2].number;
					if (strcmp(s, "maxa") == 0) {
						conf->max_speed_a = value;
					}
					else if (strcmp(s, "maxb") == 0) {
						conf->max_speed_b = value;
					}
					else if (strcmp(s, "acc") == 0) {
						conf->acc = value;
					}
					else if (strcmp(s, "dec") == 0) {
						conf->dec = value;
					}
					else if (strcmp(s, "invert") == 0) {
						conf->invert = value;
					}
					else {
						printf("Unknown parameter '%s'\n", s);
					}
				}
				else {
					printf("Wrong type of arguments. Arguments has to be:\n"
							"   String, string and integer.\n");
				}
			}
			printf("%s parameters:\n"
					"   Max Speed A: %u\n"
					"   Max Speed B: %u\n"
					"   Acceleration: %u\n"
					"   Deceleration: %u\n"
					"   Invert: %u\n",
					str,
					conf->max_speed_a,
					conf->max_speed_b,
					conf->acc,
					conf->dec,
					conf->invert);
		}
	}
}



