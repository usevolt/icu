/* 
 * This file is part of the uv_hal distribution (www.usevolt.fi).
 * Copyright (c) 2017 Usevolt Oy.
 * 
 * This program is free software: you can redistribute it and/or modify  
 * it under the terms of the GNU General Public License as published by  
 * the Free Software Foundation, version 3.
 *
 * This program is distributed in the hope that it will be useful, but 
 * WITHOUT ANY WARRANTY; without even the implied warranty of 
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU 
 * General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License 
 * along with this program. If not, see <http://www.gnu.org/licenses/>.
*/



#include "pin_mappings.h"


out_st outs[7] = {
		{
				.adc = OUT1_SENSE,
				.gpioa = OUT1_A,
				.gpiob = OUT1_B
		},
		{
				.adc = OUT2_SENSE,
				.gpioa = OUT2_A,
				.gpiob = OUT2_B
		},
		{
				.adc = OUT3_SENSE,
				.gpioa = OUT3_A,
				.gpiob = OUT3_B
		},
		{
				.adc = OUT4_SENSE,
				.gpioa = OUT4_A,
				.gpiob = OUT4_B
		},
		{
				.adc = OUT5_SENSE,
				.gpioa = OUT5_A,
				.gpiob = OUT5_B
		},
		{
				.adc = OUT6_SENSE,
				.gpioa = OUT6_A,
				.gpiob = OUT6_B
		},
		{
				.adc = OUT7_SENSE,
				.gpioa = OUT7_A,
				.gpiob = OUT7_B
		}
};
