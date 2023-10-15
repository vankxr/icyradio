#ifndef __AD9361_UTIL_H__
#define __AD9361_UTIL_H__

#include <stdint.h>
#include <inttypes.h>
#include <unistd.h>
#include "axi_ad9361.h"
#include "ad9361.h"
#include "utils.h"
#include "debug_macros.h"

enum ad9361_util_dig_tune_flags
{
    DO_HDL_RX_ADC = BIT(0),
    DO_HDL_TX_DAC = BIT(1),
    DO_CHIP_RX = BIT(2),
    DO_CHIP_TX = BIT(3),

    FORCE_TUNING = BIT(29),
    SKIP_STORE_RESULT = BIT(30),
    RESTORE_PREVIOUS = BIT(31),
};

uint8_t ad9361_util_dig_timing_analysis(char* pszBuf, uint32_t ulBufSize);
uint8_t ad9361_util_dig_tune(uint8_t ubTestFreqs, enum ad9361_util_dig_tune_flags eFlags);


#endif // __AD9361_UTIL_H__
