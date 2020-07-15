#ifndef __DSP_H__
#define __DSP_H__

#include <em_device.h>
#include <stdlib.h>
#include "utils.h"
#include "systick.h"
#include "atomic.h"
#include "gpio.h"
#include "usart.h"

#define DSP_REG_ID                      0x00

// DSP_REG_ID
#define DSP_REG_ID_FIRMWARE_ID          0xFFFF0000
#define DSP_REG_ID_FIRMWARE_VERSION     0x0000FFFF

uint8_t dsp_init();
void dsp_isr();

uint16_t dsp_read_firmware_id();
uint16_t dsp_read_firmware_version();

#endif // __DSP_H__