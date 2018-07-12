/*
 * measurement.h
 *
 *  Created on: Oct 16, 2015
 *      Author: usevolt
 */

#ifndef MEASUREMENT_H_
#define MEASUREMENT_H_



#define WIDTH_LOOK_UP_TABLE_SIZE	24


typedef struct {
	// the pulse count for this point
	uint32_t pulse_count;
	// the corresponding tree diameter in millimeters
	uint32_t width_mm;
} width_point_st;

typedef struct {
	width_point_st points_buffer[WIDTH_LOOK_UP_TABLE_SIZE];
	uv_vector_st points;
} measurement_st;



/// @brief: Reset's all data to default values
void measurement_reset(measurement_st *this);

/// @brief: Init
void measurement_init(measurement_st *this);

/// @brief: Returns the interpolated millimeter value corresponding to 'rel_value'
/// from the width look up table.
int get_width_mm(measurement_st *this, uint32_t pulse_count);


/// @brief: Can be used to add a width and corresponding rel_width "by hand", if necessary
void add_raw_point(measurement_st *this, uint32_t width, uint32_t pulse_count);


/// @brief: Removes the *index*'th data point
void remove_data_point(measurement_st *this, uint16_t index);


static inline void clear_data_points(measurement_st *this) {
	uv_vector_clear(&this->points);
}


#endif /* MEASUREMENT_H_ */
