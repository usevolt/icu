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



#define WIDTH1_AIN		ADC0_3
#define WIDTH2_AIN		ADC0_4

#define SAW_IN			P0_30
#define LEN_IN			P0_28


#define BLADEOPEN_A		P0_24
#define BLADEOPEN_B		P1_8
#define BLADEOPEN_SENSE	ADC1_11

#define SAW_A			P0_29
#define SAW_B			P0_26
#define SAW_SENSE		ADC1_10

#define TILT_A			P0_1
#define TILT_B			P0_0
#define TILT_SENSE		ADC1_8

#define FEEDOPEN_A		P0_3
#define FEEDOPEN_B		P0_2
#define FEEDOPEN_SENSE	ADC1_9

#define FEED_SERIES		P0_18
#define FEED_SENSE		ADC0_0




#endif /* UW_MB_SRC_PIN_MAPPINGS_H_ */
