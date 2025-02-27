/*
 * torque_command.h
 *
 *  Created on: Feb 16, 2019
 *      Author: f002ccx
 */

#ifndef INC_TORQUE_COMMAND_H_
#define INC_TORQUE_COMMAND_H_

#include <stdint.h>
#include "cvc_can.h"

#define THROTTLE_ZERO_1 (97) // Volts * 100
#define THROTTLE_ZERO_2 (90) // Volts * 100
#define THROTTLE_ONE_1 (486) // Volts * 100
#define THROTTLE_ONE_2 (485) // Volts * 100
#define MAX_THROTTLE_ERROR (0.1f) // 0-1
#define MAX_ERROR_COUNT (50) // x10ms
#define UPPER_TORQUE_LIMIT (121.0f) // Max torque Nm
#define LOWER_TORQUE_LIMIT (0.0f)
#define TORQUE_MULTIPLIER_FORWARD (0.25f) // Throttle percentage. 1 = 100%
#define TORQUE_MULTIPLIER_REVERSE (0.1f) // Throttle percentage. 1 = 100%


int32_t intmap(int32_t x, int32_t in_min, int32_t in_max, int32_t out_min, int32_t out_max);

float floatmap(float x, float in_min, float in_max, float out_min, float out_max);

void torque_command();

void process_throttle();

uint32_t clamp_throttle(uint32_t d, uint32_t min, uint32_t max);

uint16_t torque_int(float torque);

void torque_linear(float multiplier);

#endif /* INC_TORQUE_COMMAND_H_ */
