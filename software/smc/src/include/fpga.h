#ifndef __FPGA_H__
#define __FPGA_H__

#include <em_device.h>
#include <stdlib.h>
#include "systick.h"
#include "atomic.h"
#include "gpio.h"
#include "usart.h"

uint8_t fpga_load_bitstream(const uint8_t *pubBitstream, const uint32_t ulBitstreamSize);

uint8_t fpga_init();


#endif // __FPGA_H__