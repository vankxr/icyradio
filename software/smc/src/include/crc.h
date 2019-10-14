#ifndef __CRC_H__
#define __CRC_H__

#include <em_device.h>

//#define CRC_IMPL_SOFTWARE

void crc_init();
uint32_t calc_crc32(uint8_t *pData, uint32_t ulSize);

#endif  // __CRC_H__
