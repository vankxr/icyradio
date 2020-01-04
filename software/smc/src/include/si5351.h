#ifndef __SI5351_H__
#define __SI5351_H__

#include <em_device.h>
#include <stdlib.h>
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
#define SI5351_REG_CLK_DIS_0              0x18
#define SI5351_REG_CLK_DIS_1              0x19
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
#define SI5351_REG_CLKn_CFG_SRC_MSYNTH  0x0C
#define SI5351_REG_CLKn_CFG_IDRV_2MA    0x00
#define SI5351_REG_CLKn_CFG_IDRV_4MA    0x01
#define SI5351_REG_CLKn_CFG_IDRV_6MA    0x02
#define SI5351_REG_CLKn_CFG_IDRV_8MA    0x03

// SI5351_REG_CLK_DIS_x
#define SI5351_REG_CLK_DIS_x_DISn_LOW   0x00
#define SI5351_REG_CLK_DIS_x_DISn_HIGH  0x01
#define SI5351_REG_CLK_DIS_x_DISn_HIZ   0x02
#define SI5351_REG_CLK_DIS_x_DISn_NODIS 0x03

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

// Clock assignment
#define SI5351_FPGA_CLK3    0 // 20 MHz
#define SI5351_FPGA_CLK2    1 // 80 MHz
#define SI5351_FPGA_CLK1    2 // 49.152 MHz
#define SI5351_FPGA_CLK4    3 // 147.456 MHz
#define SI5351_SMC_MAIN_CLK 5 // 50 MHz
#define SI5351_DSP_MAIN_CLK 6 // 12 MHz

typedef struct si5351_register_t si5351_register_t;

struct si5351_register_t
{
    uint8_t ubRegister;
    uint8_t ubValue;
};

uint8_t si5351_init();
void si5351_isr();

void si5351_load_registers(const si5351_register_t *pRegisterMap);

void si5351_pll_reset(uint8_t ubA, uint8_t ubB);

uint8_t si5351_read_revision_id();

uint8_t si5351_read_status();

uint8_t si5351_read_irq_mask();
void si5351_write_irq_mask(uint8_t ubMask);

uint8_t si5351_read_clock_enable(uint8_t ubID);
void si5351_write_clock_enable(uint8_t ubID, uint8_t ubOEB);

uint8_t si5351_read_clock_oeb_mask();
void si5351_write_clock_oeb_mask(uint8_t ubMask);

uint8_t si5351_read_pll_src();
void si5351_write_pll_src(uint8_t ubPLLSource);

uint8_t si5351_read_clock_config(uint8_t ubID);
void si5351_write_clock_config(uint8_t ubID, uint8_t ubConfig);

uint8_t si5351_read_clock_disable_state(uint8_t ubID);
void si5351_write_clock_disable_state(uint8_t ubID, uint8_t ubDisableState);

uint8_t si5351_read_clock_phase(uint8_t ubID);
void si5351_write_clock_phase(uint8_t ubID, uint8_t ubPhase);

uint8_t si5351_read_xtal_cload();
void si5351_write_xtal_cload(uint8_t ubCLoad);

uint8_t si5351_read_fanout_enable();
void si5351_write_fanout_enable(uint8_t ubEnable);

#endif // __SI5351_H__