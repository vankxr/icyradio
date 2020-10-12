#ifndef __RLE_H__
#define __RLE_H__

#include <stdint.h>

uint8_t rle_encode(const uint8_t *pubInput, const uint32_t ulInputSize, uint8_t *pubOutput, const uint32_t ulOutputMaxSize, uint32_t *pulOutputSize);
uint8_t rle_decode(const uint8_t *pubInput, const uint32_t ulInputSize, uint8_t *pubOutput, const uint32_t ulOutputMaxSize, uint32_t *pulOutputSize);

#endif  // __RLE_H__
