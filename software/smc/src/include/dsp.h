#ifndef __DSP_H__
#define __DSP_H__

#include <em_device.h>
#include <stdlib.h>
#include "utils.h"
#include "systick.h"
#include "atomic.h"
#include "gpio.h"
#include "usart.h"

#define DSP_REG_DEVICE_ID       0x00 // 8-bit
#define DSP_REG_USB_REQUEST     0x50 // 8-bit
#define DSP_REG_USB_VALUE       0x51 // 16-bit
#define DSP_REG_USB_INDEX       0x53 // 16-bit
#define DSP_REG_USB_LENGTH      0x55 // 8-bit
#define DSP_REG_USB_DATA        0x56 // 24 * 8-bit
#define DSP_REG_SW_VERSION      0x6E // 16-bit
#define DSP_REG_DEV_UID0        0x70 // 32-bit
#define DSP_REG_DEV_UID1        0x74 // 32-bit
#define DSP_REG_DEV_UID2        0x78 // 32-bit
#define DSP_REG_DEV_UID3        0x7C // 32-bit

uint8_t dsp_init();
void dsp_isr();

uint8_t dsp_read_device_id();
uint16_t dsp_read_firmware_version();
void dsp_read_unique_id(uint32_t *pulUID);

#endif // __DSP_H__