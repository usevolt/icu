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
				.data_ptr = &this->bladeopen_conf
		},
		{
				.main_index = ICU_BLADEOPEN_CURRENT_INDEX,
				.sub_index = ICU_BLADEOPEN_CURRENT_SUBINDEX,
				.type = ICU_BLADEOPEN_CURRENT_TYPE,
				.permissions = ICU_BLADEOPEN_CURRENT_PERMISSIONS,
				.data_ptr = &this->bladeopen.out.current
		},
		{
				.main_index = ICU_FEEDOPEN_REQ_INDEX,
				.sub_index = ICU_FEEDOPEN_REQ_SUBINDEX,
				.type = ICU_FEEDOPEN_REQ_TYPE,
				.permissions = ICU_FEEDOPEN_REQ_PERMISSIONS,
				.data_ptr = &this->feedopen.input.request
		},
		{
				.main_index = ICU_FEEDOPEN_PARAM_INDEX,
				.array_max_size = ICU_FEEDOPEN_PARAM_ARRAY_MAX_SIZE,
				.type = ICU_FEEDOPEN_PARAM_TYPE,
				.permissions = ICU_FEEDOPEN_PARAM_PERMISSIONS,
				.data_ptr = &this->feedopen_conf
		},
		{
				.main_index = ICU_FEEDOPEN_CURRENT_INDEX,
				.sub_index = ICU_FEEDOPEN_CURRENT_SUBINDEX,
				.type = ICU_FEEDOPEN_CURRENT_TYPE,
				.permissions = ICU_FEEDOPEN_CURRENT_PERMISSIONS,
				.data_ptr = &this->feedopen.out.current
		},
		{
				.main_index = ICU_TILT_REQ_INDEX,
				.sub_index = ICU_TILT_REQ_SUBINDEX,
				.type = ICU_TILT_REQ_TYPE,
				.permissions = ICU_TILT_REQ_PERMISSIONS,
				.data_ptr = &this->tilt.input.request
		},
		{
				.main_index = ICU_TILT_REQ2_INDEX,
				.sub_index = ICU_TILT_REQ2_SUBINDEX,
				.type = ICU_TILT_REQ2_TYPE,
				.permissions = ICU_TILT_REQ2_PERMISSIONS,
				.data_ptr = &this->tilt.input2.request
		},
		{
				.main_index = ICU_TILT_PARAM_INDEX,
				.array_max_size = ICU_TILT_PARAM_ARRAY_MAX_SIZE,
				.type = ICU_TILT_PARAM_TYPE,
				.permissions = ICU_TILT_PARAM_PERMISSIONS,
				.data_ptr = &this->tilt_conf
		},
		{
				.main_index = ICU_TILT_CURRENT_INDEX,
				.sub_index = ICU_TILT_CURRENT_SUBINDEX,
				.type = ICU_TILT_CURRENT_TYPE,
				.permissions = ICU_TILT_CURRENT_PERMISSIONS,
				.data_ptr = &this->tilt.out.current
		},
		{
				.main_index = ICU_TILT_DIR_INDEX,
				.sub_index = ICU_TILT_DIR_SUBINDEX,
				.type = ICU_TILT_DIR_TYPE,
				.permissions = ICU_TILT_DIR_PERMISSIONS,
				.data_ptr = &this->tilt.dir
		},
		{
				.main_index = ICU_TILTFLOAT_STATUS_INDEX,
				.sub_index = ICU_TILTFLOAT_STATUS_SUBINDEX,
				.type = ICU_TILTFLOAT_STATUS_TYPE,
				.permissions = ICU_TILTFLOAT_STATUS_PERMISSIONS,
				.data_ptr = &this->tilt.float_out.state
		},
		{
				.main_index = ICU_TILTFLOAT_CURRENT_INDEX,
				.sub_index = ICU_TILTFLOAT_CURRENT_SUBINDEX,
				.type = ICU_TILTFLOAT_CURRENT_TYPE,
				.permissions = ICU_TILTFLOAT_CURRENT_PERMISSIONS,
				.data_ptr = &this->tilt.float_out.current
		},
		{
				.main_index = ICU_TILTFLOAT_ENABLE_INDEX,
				.sub_index = ICU_TILTFLOAT_ENABLE_SUBINDEX,
				.type = ICU_TILTFLOAT_ENABLE_TYPE,
				.permissions = ICU_TILTFLOAT_ENABLE_PERMISSIONS,
				.data_ptr = &this->tilt_conf.float_enable
		},
		{
				.main_index = ICU_TILT_ONTHUMB_STATUS_INDEX,
				.sub_index = ICU_TILT_ONTHUMB_STATUS_SUBINDEX,
				.type = ICU_TILT_ONTHUMB_STATUS_TYPE,
				.permissions = ICU_TILT_ONTHUMB_STATUS_PERMISSIONS,
				.data_ptr = &this->tilt_conf.on_thumb
		},
		{
				.main_index = ICU_SAW_REQ_INDEX,
				.sub_index = ICU_SAW_REQ_SUBINDEX,
				.type = ICU_SAW_REQ_TYPE,
				.permissions = ICU_SAW_REQ_PERMISSIONS,
				.data_ptr = &this->saw.input.request
		},
		{
				.main_index = ICU_SAW_PARAM_INDEX,
				.array_max_size = ICU_SAW_PARAM_ARRAY_MAX_SIZE,
				.type = ICU_SAW_PARAM_TYPE,
				.permissions = ICU_SAW_PARAM_PERMISSIONS,
				.data_ptr = &this->saw_conf
		},
		{
				.main_index = ICU_SAW_CURRENT_INDEX,
				.sub_index = ICU_SAW_CURRENT_SUBINDEX,
				.type = ICU_SAW_CURRENT_TYPE,
				.permissions = ICU_SAW_CURRENT_PERMISSIONS,
				.data_ptr = &this->saw.out.current
		},
		{
				.main_index = ICU_SAW_IN_INDEX,
				.sub_index = ICU_SAW_IN_SUBINDEX,
				.type = ICU_SAW_IN_TYPE,
				.permissions = ICU_SAW_IN_PERMISSIONS,
				.data_ptr = &this->saw.in
		},
		{
				.main_index = ICU_FEED_REQ_INDEX,
				.sub_index = ICU_FEED_REQ_SUBINDEX,
				.type = ICU_FEED_REQ_TYPE,
				.permissions = ICU_FEED_REQ_PERMISSIONS,
				.data_ptr = &this->feed.input.request
		},
		{
				.main_index = ICU_FEED_PARAM_INDEX,
				.array_max_size = ICU_FEED_PARAM_ARRAY_MAX_SIZE,
				.type = ICU_FEED_PARAM_TYPE,
				.permissions = ICU_FEED_PARAM_PERMISSIONS,
				.data_ptr = &this->feed_conf
		},
		{
				.main_index = ICU_FEED_CURRENT_INDEX,
				.sub_index = ICU_FEED_CURRENT_SUBINDEX,
				.type = ICU_FEED_CURRENT_TYPE,
				.permissions = ICU_FEED_CURRENT_PERMISSIONS,
				.data_ptr = &this->feed.series_out.current
		},
		{
				.main_index = ICU_LEN_CALIB_INDEX,
				.sub_index = ICU_LEN_CALIB_SUBINDEX,
				.type = ICU_LEN_CALIB_TYPE,
				.permissions = ICU_LEN_CALIB_PERMISSIONS,
				.data_ptr = &this->feed_conf.len_calib
		},
		{
				.main_index = ICU_LENGTH_UM_INDEX,
				.sub_index = ICU_LENGTH_UM_SUBINDEX,
				.type = ICU_LENGTH_UM_TYPE,
				.permissions = ICU_LENGTH_UM_PERMISSIONS,
				.data_ptr = &this->feed.len_um
		},
		{
				.main_index = ICU_TARGET_LEN_UM_INDEX,
				.sub_index = ICU_TARGET_LEN_UM_SUBINDEX,
				.type = ICU_TARGET_LEN_UM_TYPE,
				.permissions = ICU_TARGET_LEN_UM_PERMISSIONS,
				.data_ptr = &this->feed.target_len_um
		},
		{
				.main_index = ICU_LEN_STATE_INDEX,
				.sub_index = ICU_LEN_STATE_SUBINDEX,
				.type = ICU_LEN_STATE_TYPE,
				.permissions = ICU_LEN_STATE_PERMISSIONS,
				.data_ptr = &this->feed.state
		},
		{
				.main_index = ICU_LEN_FL_INDEX,
				.array_max_size = ICU_LEN_FL_ARRAY_SIZE,
				.type = ICU_LEN_FL_TYPE,
				.permissions = ICU_LEN_FL_PERMISSIONS,
				.data_ptr = &this->feed_conf.fl
		},
		{
				.main_index = ICU_ALLOPEN_REQ_INDEX,
				.sub_index = ICU_ALLOPEN_REQ_SUBINDEX,
				.type = ICU_ALLOPEN_REQ_TYPE,
				.permissions = ICU_ALLOPEN_REQ_PERMISSIONS,
				.data_ptr = &this->allopen.input.request
		},
		{
				.main_index = ICU_ALLOPEN_PARAM_INDEX,
				.array_max_size = ICU_ALLOPEN_PARAM_ARRAY_MAX_SIZE,
				.type = ICU_ALLOPEN_PARAM_TYPE,
				.permissions = ICU_ALLOPEN_PARAM_PERMISSIONS,
				.data_ptr = &this->allopen_conf
		},
		{
				.main_index = ICU_WIDTH_MM_INDEX,
				.sub_index = ICU_WIDTH_MM_SUBINDEX,
				.type = ICU_WIDTH_MM_TYPE,
				.permissions = ICU_WIDTH_MM_PERMISSIONS,
				.data_ptr = &this->meas.width_mm
		},
		{
				.main_index = ICU_WIDTH_RAW1_INDEX,
				.sub_index = ICU_WIDTH_RAW1_SUBINDEX,
				.type = ICU_WIDTH_RAW1_TYPE,
				.permissions = ICU_WIDTH_RAW1_PERMISSIONS,
				.data_ptr = &this->meas.width_raw1
		},
		{
				.main_index = ICU_WIDTH_RAW2_INDEX,
				.sub_index = ICU_WIDTH_RAW2_SUBINDEX,
				.type = ICU_WIDTH_RAW2_TYPE,
				.permissions = ICU_WIDTH_RAW2_PERMISSIONS,
				.data_ptr = &this->meas.width_raw2
		},
		{
				.main_index = ICU_WIDTH_REL_INDEX,
				.sub_index = ICU_WIDTH_REL_SUBINDEX,
				.type = ICU_WIDTH_REL_TYPE,
				.permissions = ICU_WIDTH_REL_PERMISSIONS,
				.data_ptr = &this->meas.width_rel
		},
		{
				.main_index = ICU_WIDTH_CALIB_MIN_REQ_INDEX,
				.sub_index = ICU_WIDTH_CALIB_MIN_REQ_SUBINDEX,
				.type = ICU_WIDTH_CALIB_MIN_REQ_TYPE,
				.permissions = ICU_WIDTH_CALIB_MIN_REQ_PERMISSIONS,
				.data_ptr = &this->meas.calib_min_req
		},
		{
				.main_index = ICU_WIDTH_CALIB_MAX_REQ_INDEX,
				.sub_index = ICU_WIDTH_CALIB_MAX_REQ_SUBINDEX,
				.type = ICU_WIDTH_CALIB_MAX_REQ_TYPE,
				.permissions = ICU_WIDTH_CALIB_MAX_REQ_PERMISSIONS,
				.data_ptr = &this->meas.calib_max_req
		},
		{
				.main_index = ICU_WIDTH_CALIB_REQ_INDEX,
				.sub_index = ICU_WIDTH_CALIB_REQ_SUBINDEX,
				.type = ICU_WIDTH_CALIB_REQ_TYPE,
				.permissions = ICU_WIDTH_CALIB_REQ_PERMISSIONS,
				.data_ptr = &this->meas.calib_req
		},
		{
				.main_index = ICU_WIDTH_CALIB_ADD_REQ_INDEX,
				.sub_index = ICU_WIDTH_CALIB_ADD_REQ_SUBINDEX,
				.type = ICU_WIDTH_CALIB_ADD_REQ_TYPE,
				.permissions = ICU_WIDTH_CALIB_ADD_REQ_PERMISSIONS,
				.data_ptr = &this->meas.add_req
		},
		{
				.main_index = ICU_WIDTH_CALIB_CLEAR_REQ_INDEX,
				.sub_index = ICU_WIDTH_CALIB_CLEAR_REQ_SUBINDEX,
				.type = ICU_WIDTH_CALIB_CLEAR_REQ_TYPE,
				.permissions = ICU_WIDTH_CALIB_CLEAR_REQ_PERMISSIONS,
				.data_ptr = &this->meas.clear_req
		},
		{
				.main_index = ICU_VOL_DM3_INDEX,
				.sub_index = ICU_VOL_DM3_SUBINDEX,
				.type = ICU_VOL_DM3_TYPE,
				.permissions = ICU_VOL_DM3_PERMISSIONS,
				.data_ptr = &this->meas.volume_dm3
		},
		{
				.main_index = ICU_VOL_RESET_INDEX,
				.sub_index = ICU_VOL_RESET_SUBINDEX,
				.type = ICU_VOL_RESET_TYPE,
				.permissions = ICU_VOL_RESET_PERMISSIONS,
				.data_ptr = &this->meas.volume_reset_req
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
		{
				.main_index = ICU_HCU_INDEX_OFFSET + HCU_PRESSURE_INDEX,
				.sub_index = HCU_PRESSURE_SUBINDEX,
				.type = HCU_PRESSURE_TYPE,
				.permissions = HCU_PRESSURE_PERMISSIONS,
				.data_ptr = &this->hcu.hydr_pressure
		}
};

uint32_t obj_dict_len(void) {
	return sizeof(obj_dict) / sizeof(canopen_object_st);
}


void stat_callb(void* me, unsigned int cmd, unsigned int args, argument_st *argv);
void set_callb(void* me, unsigned int cmd, unsigned int args, argument_st *argv);
void feed_callb(void* me, unsigned int cmd, unsigned int args, argument_st *argv);
void meas_callb(void* me, unsigned int cmd, unsigned int args, argument_st *argv);
void tiltonthumb_callb(void* me, unsigned int cmd, unsigned int args, argument_st *argv);


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
						"Usage: set <\"bladeopen\"/\"feedopen\"/\"feed\"/\"saw\"/\"tilt\"/\"allop\"> "
						"<\"maxa\"/\"maxb\"/\"acc\"/\"dec\"/\"invert\"/\"assinv\">"
						"<value>",
				.callback = &set_callb
		},
		{
				.id = CMD_FEED,
				.str = "feed",
				.instructions = "Sets the feed fuzzy logic parameters.\n"
						"Usage: feed <0/1/2> <\"speed\"/\"dist\"> <value>",
				.callback = &feed_callb
		},
		{
				.id = CMD_MEAS,
				.str = "meas",
				.instructions = "Prints the width measurement points\n"
						"Usage: meas",
				.callback = &meas_callb
		},
		{
				.id = CMD_TILTONTHUMB,
				.str = "tiltonthumb",
				.instructions = "Sets the tilt to operate on left thumb.\n"
						"Usage: tiltonthumpb <1/0>",
				.callback = &tiltonthumb_callb
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
	printf("Feed open: request: %i, current: %u\n",
			feedopen_get_request(&this->feedopen),
			feedopen_get_current(&this->feedopen));
	printf("Tilt: request: %i, current: %u\n",
			tilt_get_request(&this->tilt),
			tilt_get_current(&this->tilt));
	printf("Tilt dir: %s\n",
			(tilt_get_dir(&dev.tilt) == ICU_TILT_DIR_UP) ? "UP" : "DOWN");
	printf("Tilt float state: %u, current: %i\n",
			uv_output_get_state(&dev.tilt.float_out),
			tilt_get_float_current(&dev.tilt));
	printf("Saw: request: %i, current: %u In: %u\n",
			saw_get_request(&this->saw),
			saw_get_current(&this->saw),
			saw_is_in(&this->saw));
	printf("Feed: request: %i, current: %u, state: %u, feedopen close time: %u ms\n",
			feed_get_request(&this->feed),
			feed_get_current(&this->feed),
			this->feed.state,
			this->feed_conf.feedopen_on_time_ms);
	printf("Length: %i um\nTarget length: %i um\nLength calib %i\n",
			(int) this->feed.len_um,
			(int) this->feed.target_len_um,
			(int) this->feed_conf.len_calib);
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
		else if (strcmp(str, "feedopen") == 0) {
			conf = &this->feedopen_conf.out_conf;
		}
		else if (strcmp(str, "tilt") == 0) {
			conf = &this->tilt_conf.out_conf;
		}
		else if (strcmp(str, "saw") == 0) {
			conf = &this->saw_conf.out_conf;
		}
		else if (strcmp(str, "feed") == 0) {
			conf = &this->feed_conf.out_conf;
		}
		else if (strcmp(str, "allop") == 0) {
			conf = &this->allopen_conf.out_conf;
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
					else if (strcmp(s, "assinv") == 0) {
						conf->assembly_invert = value;
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
					"   Invert: %u\n"
					"   Assembly invert: %u\n",
					str,
					conf->max_speed_a,
					conf->max_speed_b,
					conf->acc,
					conf->dec,
					conf->invert,
					conf->assembly_invert);
		}
	}
}


void feed_callb(void* me, unsigned int cmd, unsigned int args, argument_st *argv) {
	if (args >= 3 &&
			argv[0].type == ARG_INTEGER &&
			argv[1].type == ARG_STRING &&
			argv[2].type == ARG_INTEGER) {
		uint8_t i = argv[0].number;
		char *str = argv[1].str;
		int32_t value = argv[2].number;
		if (i >= FEED_FL_COUNT) {
			printf("Fuzzy logic doesnt have that much levels\n");
		}
		else {
			if (strcmp(str, "speed") == 0) {
				dev.feed.conf->fl[i].max_speed = value;
			}
			else if (strcmp(str, "dist") == 0) {
				dev.feed.conf->fl[i].dist_mm = value;
			}
			else {
				printf("Unknown fuzzy logic parameter '%s'\n", str);
			}
		}
	}
	printf("Feed fuzzy logic parameters:\n");
	for (uint8_t i = 0; i < FEED_FL_COUNT; i++) {
		printf("%u:\n"
				"   distance: %u mm\n"
				"   Speed: %u\n",
				i,
				dev.feed.conf->fl[i].dist_mm,
				dev.feed.conf->fl[i].max_speed);
	}
	printf("Feed close time: %i\n", dev.feed.conf->feedopen_on_time_ms);
}


void meas_callb(void* me, unsigned int cmd, unsigned int args, argument_st *argv) {
	if (args && argv[0].type == ARG_STRING) {
		char *s = argv[0].str;
		if (strcmp(s, "del") == 0) {
			if (args < 2) {
				printf("Give index number of the width point to be deleted\n");
			}
			else {
				uv_vector_remove(&dev.meas.conf->rel_widths, argv[1].number, 1);
				uv_vector_remove(&dev.meas.conf->widths, argv[1].number, 1);
			}
		}
		else if (strcmp(s, "add") == 0) {
			if (args < 3) {
				printf("Give relative width and actual width as integer parameters\n");
			}
			else {
				uint8_t i = 0;
				// find the right place to insert the new value
				for (i = 0; i < uv_vector_size(&dev.meas.conf->rel_widths); i++) {
					if (argv[1].number < *((uint16_t*) uv_vector_at(&dev.meas.conf->rel_widths, i))) {
						break;
					}
				}
				int16_t relw = argv[1].number;
				int16_t w = argv[2].number;
				uv_vector_insert(&dev.meas.conf->rel_widths, i, &relw);
				uv_vector_insert(&dev.meas.conf->widths, i, &w);
			}
		}
	}
	for (uint32_t i = 0; i < uv_vector_size(&dev.meas.conf->widths); i++) {
		printf("%u: %u, %u mm\n",
				(unsigned int) i,
				*((uint16_t*) uv_vector_at(&dev.meas.conf->rel_widths, i)),
				*((uint16_t*) uv_vector_at(&dev.meas.conf->widths, i)));
	}
}


void tiltonthumb_callb(void* me, unsigned int cmd, unsigned int args, argument_st *argv) {
	if (args && argv[0].type == ARG_INTEGER) {
		dev.tilt_conf.on_thumb = !!argv[0].number;
	}
	printf("Tilt on thumb: %u\n", dev.tilt_conf.on_thumb);
}



