/*
 * pin_mappings.h
 *
 *  Created on: Jan 27, 2015
 *      Author: usenius
 *
 *  Defines keypad pin mappings for different pcb revisions used
 */

#ifndef UW_MB_SRC_PIN_MAPPINGS_H_
#define UW_MB_SRC_PIN_MAPPINGS_H_

#include <uv_gpio.h>
#include <uv_timer.h>
#include <uv_adc.h>


// Analog inputs
#define OUT1_SENSE	ADC1_11
#define OUT2_SENSE	ADC1_10
#define OUT3_SENSE	ADC1_8
#define OUT4_SENSE	ADC1_9
#define OUT5_SENSE	ADC1_5
#define OUT6_SENSE	ADC0_1
#define OUT7_SENSE	ADC0_0

// Digital inputs
#define DIN1	P0_30
#define DIN2	P0_28
#define DIN3	P0_27
#define DIN4	P1_7
#define DIN5	P0_5
#define DIN6	P0_4
#define DIN7	P1_0
#define DIN8	P0_31

// Digital outputs
#define OUT1_A	P0_24
#define OUT1_B	P1_8
#define OUT2_A	P0_29
#define OUT2_B	P0_26
#define OUT3_A	P0_1
#define OUT3_B	P0_0
#define OUT4_A	P0_3
#define OUT4_B	P0_2
#define OUT5_A	P0_14
#define OUT5_B	P0_6
#define OUT6_A	P0_10
#define OUT6_B	P0_12
#define OUT7_A	P0_18
#define OUT7_B	P0_9


#define BLADES_OPEN_OUT		1
#define FEED_OPEN_OUT		2
#define TILT_OUT			0
#define FEED_SAW_OUT		3
#define SAW_MOVE_OUT		4
#define SAW_IN_DIR			DUAL_OUTPUT_NEG
#define SAW_OUT_DIR			DUAL_OUTPUT_POS
#define FEED_SERIES_DIR		DUAL_OUTPUT_NEG
#define SAW_DIR				DUAL_OUTPUT_POS



typedef struct {
	uv_adc_channels_e adc;
	uv_gpios_e gpioa;
	uv_gpios_e gpiob;
} out_st;

extern out_st outs[7];


#endif /* UW_MB_SRC_PIN_MAPPINGS_H_ */
