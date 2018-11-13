/*
 * measurement.h
 *
 *  Created on: Oct 16, 2015
 *      Author: usevolt
 */

#ifndef MEASUREMENT_H_
#define MEASUREMENT_H_


#include "messages.h"
#include <uv_filters.h>


#define CALIB_DELTA_LENGTH_MM	500
#define WIDTH_LOOK_UP_TABLE_SIZE	100

/// @brief: Configuration structure which should be stored in non-volatile memory
typedef struct {
	uint16_t width_buffer[WIDTH_LOOK_UP_TABLE_SIZE];
	uint16_t rel_width_buffer[WIDTH_LOOK_UP_TABLE_SIZE];
	uv_vector_st widths;
	uv_vector_st rel_widths;
	struct {
		uint16_t width1_min;
		uint16_t width1_max;
		uint16_t width2_min;
		uint16_t width2_max;
	} width_prefs;
} measurement_conf_st;


typedef struct {
	measurement_conf_st *conf;

	uv_moving_aver_st rel_width_aver;
	int32_t width_calib_length;
	// canopen calibration requests
	uint16_t add_req;
	uint8_t clear_req;
	uint8_t calib_req;
	uint8_t last_calib_req;
	uint8_t calib_min_req;
	uint8_t calib_max_req;

	int32_t calib_len_um;
	int32_t last_len_um;
	// raw values
	uint16_t width_raw1;
	uint16_t width_raw2;
	uint16_t width_rel;
	// the width output value
	int16_t width_mm;
	// the volume output value
	int32_t volume_dm3;
	uint8_t volume_reset_req;
	int32_t log_volume_cm3;
} measurement_st;



/// @brief: Reset's all data to default values
void measurement_reset(measurement_conf_st *this);

/// @brief: Init
void measurement_init(measurement_st *this, measurement_conf_st *conf);

void measurement_step(measurement_st *this, uint16_t step_ms,
		int32_t raw_data1, int32_t raw_data2);

static inline int16_t measurement_get_width_mm(measurement_st *this) {
	return this->width_mm;
}

/// @brief: Adds the current log volume to the total volume
void measurement_add_log_volume(measurement_st *this);


#endif /* MEASUREMENT_H_ */
