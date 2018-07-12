/*
 * measurement.c
 *
 *  Created on: Oct 16, 2015
 *      Author: usevolt
 */


#include <stdio.h>
#include <stdlib.h>
#include <uv_memory.h>
#include "measurement.h"




// default points measured roughly 120718
#define DEF_POINT_COUNT	7
width_point_st def_points[DEF_POINT_COUNT] = {
		{
				.pulse_count = 0,
				.width_mm = 30
		},
		{
				.pulse_count = 102,
				.width_mm = 70
		},
		{
				.pulse_count = 162,
				.width_mm = 86
		},
		{
				.pulse_count = 190,
				.width_mm = 105
		},
		{
				.pulse_count = 334,
				.width_mm = 185
		},
		{
				.pulse_count = 484,
				.width_mm = 300
		},
		{
				.pulse_count = 685,
				.width_mm = 470
		},

};


void measurement_init(measurement_st *this) {
}



void measurement_reset(measurement_st *this) {
	uv_vector_init(&this->points, &this->points_buffer,
			WIDTH_LOOK_UP_TABLE_SIZE, sizeof(this->points_buffer[0]));

	// populate point vector with default points
	for (uint32_t i = 0; i < DEF_POINT_COUNT; i++) {
		uv_vector_push_back(&this->points, &def_points[i]);
	}
}



int get_width_mm(measurement_st *this, uint32_t pulse_count) {

	// two points is the minimum
	if (uv_vector_size(&this->points) < 2) {
		return 0;
	}
	int16_t rel_d1, rel_d2;
	// find nearest smaller value
	for (rel_d1 = uv_vector_size(&this->points) - 1; rel_d1 >= 0; rel_d1--) {
		if (pulse_count > (*((width_point_st *) uv_vector_at(&this->points, rel_d1))).pulse_count) {
			break;
		}
	}
	// find nearest bigger value
	for (rel_d2 = 0; rel_d2 < uv_vector_size(&this->points); rel_d2++) {
		if (pulse_count < (*((width_point_st *) uv_vector_at(&this->points, rel_d2))).pulse_count) {
			break;
		}
	}
	// bigger values than the biggest found point are ignored and the biggest point value is returned
	if (pulse_count >=
			(*((width_point_st *) uv_vector_at(&this->points, uv_vector_size(&this->points) - 1))).pulse_count) {
		return (*((width_point_st *) uv_vector_at(&this->points, uv_vector_size(&this->points) - 1))).width_mm;
	}

	// now we should have the two smallest distance indexes
	// get the k value from those two points
	float k = uv_relf(pulse_count, (*((width_point_st*) uv_vector_at(&this->points, rel_d1))).pulse_count,
			(*((width_point_st*) uv_vector_at(&this->points, rel_d2))).pulse_count);
	if (k < 0) {
		k = 0.0f;
	}
	else if (k > 1.0f) {
		k = 1.0f;
	}
	else {

	}

	// linearly interpolate with k from those points' widths
	float result = uv_lerpf(k, (*((width_point_st *) uv_vector_at(&this->points, rel_d1))).width_mm,
			(*((width_point_st *) uv_vector_at(&this->points, rel_d2))).width_mm);

	return (int) result;

}


static void add_to_width_vec(uv_vector_st *vec, width_point_st *p) {
	uint16_t i;
	bool found = false;
	for (i = 0; i < uv_vector_size(vec); i++) {
		if ((*((width_point_st*) uv_vector_at(vec, i))).pulse_count > p->pulse_count) {
			uv_vector_insert(vec, i, p);
			found = true;
			break;
		}
	}
	if (!found) {
		uv_vector_push_back(vec, p);
	}
}




void add_raw_point(measurement_st *this, uint32_t width, uint32_t pulse_count) {
	width_point_st p;
	p.pulse_count = pulse_count;
	p.width_mm = width;
	add_to_width_vec(&this->points, &p);
	printf("Added width %u and rel width %u\n\r",
			(unsigned int) p.width_mm, (unsigned int) p.pulse_count);
}




void remove_data_point(measurement_st *this, uint16_t index) {
	uv_vector_remove(&this->points, index, 1);
}


