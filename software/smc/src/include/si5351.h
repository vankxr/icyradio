#ifndef __SI5351_H__
#define __SI5351_H__

#include <em_device.h>
#include <stdlib.h>
#include <string.h>
#include "systick.h"
#include "atomic.h"
#include "gpio.h"
#include "i2c.h"

#define SI5351_I2C_ADDR 0x60

// Registers
#define SI5351_REG_STATUS                 0x00
#define SI5351_REG_IRQ_FLAGS              0x01
#define SI5351_REG_IRQ_MASK               0x02
#define SI5351_REG_CLK_OEB                0x03
#define SI5351_REG_OEB_MASK               0x09
#define SI5351_REG_PLL_SRC                0x0F
#define SI5351_REG_CLKn_CFG(i)            (0x10 + (i))
#define SI5351_REG_CLK3_0_DIS             0x18
#define SI5351_REG_CLK7_4_DIS             0x19
#define SI5351_REG_MSNn_P3_MID(i)         (0x1A + (i) * 8)
#define SI5351_REG_MSNn_P3_LSB(i)         (0x1B + (i) * 8)
#define SI5351_REG_MSNn_P1_MSB(i)         (0x1C + (i) * 8)
#define SI5351_REG_MSNn_P1_MID(i)         (0x1D + (i) * 8)
#define SI5351_REG_MSNn_P1_LSB(i)         (0x1E + (i) * 8)
#define SI5351_REG_MSNn_P3_2_MSB(i)       (0x1F + (i) * 8)
#define SI5351_REG_MSNn_P2_MID(i)         (0x20 + (i) * 8)
#define SI5351_REG_MSNn_P2_LSB(i)         (0x21 + (i) * 8)
#define SI5351_REG_MSn_P3_MID(i)          (0x2A + (i) * 8)
#define SI5351_REG_MSn_P3_LSB(i)          (0x2B + (i) * 8)
#define SI5351_REG_MSn_P1_MSB_DIV(i)      (0x2C + (i) * 8)
#define SI5351_REG_MSn_P1_MID(i)          (0x2D + (i) * 8)
#define SI5351_REG_MSn_P1_LSB(i)          (0x2E + (i) * 8)
#define SI5351_REG_MSn_P3_2_MSB(i)        (0x2F + (i) * 8)
#define SI5351_REG_MSn_P2_MID(i)          (0x30 + (i) * 8)
#define SI5351_REG_MSn_P2_LSB(i)          (0x31 + (i) * 8)
#define SI5351_REG_MS6_P1                 0x5A
#define SI5351_REG_MS7_P1                 0x5B
#define SI5351_REG_MS6_7_DIV              0x5C
#define SI5351_REG_CLKn_PHOFF(i)          (0xA5 + (i))
#define SI5351_REG_PLL_RST                0xB1
#define SI5351_REG_XTAL_CL                0xB7
#define SI5351_REG_FANOUT_EN              0xBB

// SI5351_REG_STATUS
#define SI5351_REG_STATUS_SYS_INIT  0x80
#define SI5351_REG_STATUS_LOL_B     0x40
#define SI5351_REG_STATUS_LOL_A     0x20
#define SI5351_REG_STATUS_CLKIN_LOS 0x10
#define SI5351_REG_STATUS_XO_LOS    0x08
#define SI5351_REG_STATUS_REVID     0x03

// SI5351_REG_IRQ_FLAGS
#define SI5351_REG_IRQ_FLAGS_SYS_INIT   0x80
#define SI5351_REG_IRQ_FLAGS_LOL_B      0x40
#define SI5351_REG_IRQ_FLAGS_LOL_A      0x20
#define SI5351_REG_IRQ_FLAGS_CLKIN_LOS  0x10
#define SI5351_REG_IRQ_FLAGS_XO_LOS     0x08

// SI5351_REG_IRQ_FLAGS
#define SI5351_REG_IRQ_MASK_SYS_INIT   0x80
#define SI5351_REG_IRQ_MASK_LOL_B      0x40
#define SI5351_REG_IRQ_MASK_LOL_A      0x20
#define SI5351_REG_IRQ_MASK_CLKIN_LOS  0x10
#define SI5351_REG_IRQ_MASK_XO_LOS     0x08

// SI5351_REG_PLL_SRC
#define SI5351_REG_PLL_SRC_CLKIN_DIV1   0x00
#define SI5351_REG_PLL_SRC_CLKIN_DIV2   0x40
#define SI5351_REG_PLL_SRC_CLKIN_DIV4   0x80
#define SI5351_REG_PLL_SRC_CLKIN_DIV8   0xC0
#define SI5351_REG_PLL_SRC_SRCB_XTAL    0x00
#define SI5351_REG_PLL_SRC_SRCB_CLKIN   0x08
#define SI5351_REG_PLL_SRC_SRCA_XTAL    0x00
#define SI5351_REG_PLL_SRC_SRCA_CLKIN   0x04

// SI5351_REG_CLKn_CFG
#define SI5351_REG_CLKn_CFG_POWER_UP    0x00
#define SI5351_REG_CLKn_CFG_POWER_DOWN  0x80
#define SI5351_REG_CLKn_CFG_MS_FRAC     0x00
#define SI5351_REG_CLKn_CFG_MS_INT      0x40
#define SI5351_REG_CLKn_CFG_MS_SRC_PLLA 0x00
#define SI5351_REG_CLKn_CFG_MS_SRC_PLLB 0x20
#define SI5351_REG_CLKn_CFG_CLK_INV     0x10
#define SI5351_REG_CLKn_CFG_SRC_XTAL    0x00
#define SI5351_REG_CLKn_CFG_SRC_CLKIN   0x04
#define SI5351_REG_CLKn_CFG_SRC_MSYNTH0 0x08
#define SI5351_REG_CLKn_CFG_SRC_MSYNTH4 0x08
#define SI5351_REG_CLKn_CFG_SRC_MSYNTHn 0x0C
#define SI5351_REG_CLKn_CFG_IDRV_2MA    0x00
#define SI5351_REG_CLKn_CFG_IDRV_4MA    0x01
#define SI5351_REG_CLKn_CFG_IDRV_6MA    0x02
#define SI5351_REG_CLKn_CFG_IDRV_8MA    0x03

// SI5351_REG_CLKm_n_DIS
#define SI5351_REG_CLKm_n_DIS_DISn_LOW   0x00
#define SI5351_REG_CLKm_n_DIS_DISn_HIGH  0x01
#define SI5351_REG_CLKm_n_DIS_DISn_HIZ   0x02
#define SI5351_REG_CLKm_n_DIS_DISn_NODIS 0x03

// SI5351_REG_MSn_P1_MSB_DIV
#define SI5351_REG_MSn_P1_MSB_DIV_Rn_DIV_DIV1       0x00
#define SI5351_REG_MSn_P1_MSB_DIV_Rn_DIV_DIV2       0x10
#define SI5351_REG_MSn_P1_MSB_DIV_Rn_DIV_DIV4       0x20
#define SI5351_REG_MSn_P1_MSB_DIV_Rn_DIV_DIV8       0x30
#define SI5351_REG_MSn_P1_MSB_DIV_Rn_DIV_DIV16      0x40
#define SI5351_REG_MSn_P1_MSB_DIV_Rn_DIV_DIV32      0x50
#define SI5351_REG_MSn_P1_MSB_DIV_Rn_DIV_DIV64      0x60
#define SI5351_REG_MSn_P1_MSB_DIV_Rn_DIV_DIV128     0x70
#define SI5351_REG_MSn_P1_MSB_DIV_MSn_DIV4          0x0C

// SI5351_REG_MS6_7_DIV
#define SI5351_REG_MS6_7_DIV_R7_DIV_DIV1        0x00
#define SI5351_REG_MS6_7_DIV_R7_DIV_DIV2        0x10
#define SI5351_REG_MS6_7_DIV_R7_DIV_DIV4        0x20
#define SI5351_REG_MS6_7_DIV_R7_DIV_DIV8        0x30
#define SI5351_REG_MS6_7_DIV_R7_DIV_DIV16       0x40
#define SI5351_REG_MS6_7_DIV_R7_DIV_DIV32       0x50
#define SI5351_REG_MS6_7_DIV_R7_DIV_DIV64       0x60
#define SI5351_REG_MS6_7_DIV_R7_DIV_DIV128      0x70
#define SI5351_REG_MS6_7_DIV_R6_DIV_DIV1        0x00
#define SI5351_REG_MS6_7_DIV_R6_DIV_DIV2        0x01
#define SI5351_REG_MS6_7_DIV_R6_DIV_DIV4        0x02
#define SI5351_REG_MS6_7_DIV_R6_DIV_DIV8        0x03
#define SI5351_REG_MS6_7_DIV_R6_DIV_DIV16       0x04
#define SI5351_REG_MS6_7_DIV_R6_DIV_DIV32       0x05
#define SI5351_REG_MS6_7_DIV_R6_DIV_DIV64       0x06
#define SI5351_REG_MS6_7_DIV_R6_DIV_DIV128      0x07

// SI5351_REG_PLL_RST
#define SI5351_REG_PLL_RST_PLLA_RESET   0x20
#define SI5351_REG_PLL_RST_PLLB_RESET   0x80

// SI5351_REG_XTAL_CL
#define SI5351_REG_XTAL_CL_6PF  0x40
#define SI5351_REG_XTAL_CL_8PF  0x80
#define SI5351_REG_XTAL_CL_10PF 0xC0

// SI5351_REG_FANOUT_EN
#define SI5351_REG_FANOUT_EN_CLKIN_EN   0x80
#define SI5351_REG_FANOUT_EN_XO_EN      0x40
#define SI5351_REG_FANOUT_EN_MS_EN      0x10

// PLL assignment
#define SI5351_PLLA     0
#define SI5351_PLLB     1

// PLL source assignment
#define SI5351_PLL_SRC_XTAL     0
#define SI5351_PLL_SRC_CLKIN    1

// MultiSynth source assignment
#define SI5351_MS_SRC_PLLA      0
#define SI5351_MS_SRC_PLLB      1

// Clock source assignment
#define SI5351_CLK_SRC_XTAL     0
#define SI5351_CLK_SRC_CLKIN    1
#define SI5351_CLK_SRC_MS04     2
#define SI5351_CLK_SRC_MSn      3

// Clock assignment
#define SI5351_FPGA_CLK3    0
#define SI5351_FPGA_CLK2    1
#define SI5351_FPGA_CLK1    2
#define SI5351_FPGA_CLK4    3
#define SI5351_SMC_MAIN_CLK 5
#define SI5351_DSP_MAIN_CLK 6

typedef struct si5351_mixed_number_t si5351_mixed_number_t;

struct si5351_mixed_number_t
{
    uint32_t ulInt; // Integer part
    uint32_t ulNum; // Fractional part numerator
    uint32_t ulDen; // Fractional part denominator
};

extern uint32_t SI5351_XTAL_FREQ;
extern uint32_t SI5351_CLKIN_FREQ;
extern uint32_t SI5351_CLKIN_DIV_FREQ;
extern uint32_t SI5351_PLL_SRC_FREQ[2];
extern uint32_t SI5351_PLL_FREQ[2];
extern uint32_t SI5351_MS_SRC_FREQ[8];
extern uint32_t SI5351_MS_FREQ[8];
extern uint32_t SI5351_CLK_SRC_FREQ[8];
extern uint32_t SI5351_CLK_FREQ[8];

uint8_t si5351_init();
void si5351_isr();

uint8_t si5351_read_revision_id();
uint8_t si5351_read_status();

uint8_t si5351_set_clkin_divider(uint8_t ubDivider);

uint8_t si5351_pll_reset(uint8_t ubPLL);
uint8_t si5351_pll_set_source(uint8_t ubPLL, uint8_t ubSource);
uint8_t si5351_pll_set_freq(uint8_t ubPLL, uint32_t ulFreq);

uint8_t si5351_multisynth_set_source(uint8_t ubMS, uint8_t ubSource);
uint8_t si5351_multisynth_set_freq(uint8_t ubMS, uint32_t ulFreq);
uint8_t si5351_multisynth_set_phase_offset(uint8_t ubMS, float fOffset);

uint8_t si5351_clock_power_up(uint8_t ubClock);
uint8_t si5351_clock_power_down(uint8_t ubClock);
uint8_t si5351_clock_enable(uint8_t ubClock);
uint8_t si5351_clock_disable(uint8_t ubClock);
uint8_t si5351_clock_set_disable_state(uint8_t ubClock, uint8_t ubDisableState);
uint8_t si5351_clock_set_drive_current(uint8_t ubClock, uint8_t ubDriveCurrent);
uint8_t si5351_clock_set_invert(uint8_t ubClock, uint8_t ubInvert);
uint8_t si5351_clock_set_source(uint8_t ubClock, uint8_t ubSource);
uint8_t si5351_clock_set_output_divider(uint8_t ubClock, uint8_t ubDivider);

#endif // __SI5351_H__