#ifndef __FPGA_H__
#define __FPGA_H__

#include <em_device.h>
#include <stdlib.h>
#include "utils.h"
#include "rle.h"
#include "systick.h"
#include "atomic.h"
#include "gpio.h"
#include "si5351.h"
#include "usart.h"

#define FPGA_BITSTREAM_SIZE 135100

// Registers
#define FPGA_REG_ID                     0x00
#define FPGA_REG_RST_CNTRL              0x01
#define FPGA_REG_IRQ_STATE              0x02
#define FPGA_REG_IRQ_MASK               0x03
#define FPGA_REG_IRQ_SET_CLEAR          0x04
#define FPGA_REG_LED_CNTRL              0x10
#define FPGA_REG_RED_LED_DUTY           0x11
#define FPGA_REG_GREEN_LED_DUTY         0x12
#define FPGA_REG_BLUE_LED_DUTY          0x13
#define FPGA_REG_ADC_DPRAM_CNTRL        0x20
#define FPGA_REG_ADC_DPRAM_ADDR         0x21
#define FPGA_REG_ADC_DPRAM_DATA         0x22
#define FPGA_REG_QDDC_CNTRL             0x30
#define FPGA_REG_QDDC_LO_FREQ           0x31
#define FPGA_REG_QDUC_CNTRL             0x35
#define FPGA_REG_QDUC_LO_FREQ           0x36
#define FPGA_REG_AUDIO_I2S_MUX_SEL      0x40
#define FPGA_REG_QSPI_MEM_CNTRL         0x50
#define FPGA_REG_QSPI_MEM_ADDR          0x51
#define FPGA_REG_QSPI_MEM_START_ADDR    0x52
#define FPGA_REG_QSPI_MEM_END_ADDR      0x53
#define FPGA_REG_QSPI_DPRAM_CNTRL       0x54
#define FPGA_REG_QSPI_DPRAM_ADDR        0x55
#define FPGA_REG_QSPI_DPRAM_DATA        0x56

// FPGA_REG_ID
#define FPGA_REG_ID_DESIGN_ID       0xFFFF0000
#define FPGA_REG_ID_DESIGN_VERSION  0x0000FFFF

// FPGA_REG_RST_CNTRL
#define FPGA_REG_RST_CNTRL_PLL1_SOFT_RST        BIT(0)
#define FPGA_REG_RST_CNTRL_PLL2_SOFT_RST        BIT(1)
#define FPGA_REG_RST_CNTRL_ADC_DPRAM_SOFT_RST   BIT(2)
#define FPGA_REG_RST_CNTRL_ADC_SOFT_RST         BIT(3)
#define FPGA_REG_RST_CNTRL_QDDC_SOFT_RST        BIT(4)
#define FPGA_REG_RST_CNTRL_BB_I2S_SOFT_RST      BIT(5)
#define FPGA_REG_RST_CNTRL_QDUC_SOFT_RST        BIT(6)
#define FPGA_REG_RST_CNTRL_DAC_SOFT_RST         BIT(7)
#define FPGA_REG_RST_CNTRL_AUDIO_I2S_SOFT_RST   BIT(8)
#define FPGA_REG_RST_CNTRL_QSPI_SOFT_RST        BIT(9)
#define FPGA_REG_RST_CNTRL_LED_SOFT_RST         BIT(10)
#define FPGA_REG_RST_CNTRL_LED_SOFT_RST         BIT(10)
#define FPGA_REG_RST_CNTRL_PLL1_SLEEP           BIT(16)
#define FPGA_REG_RST_CNTRL_PLL2_SLEEP           BIT(17)
#define FPGA_REG_RST_CNTRL_PLL1_BYPASS          BIT(18)
#define FPGA_REG_RST_CNTRL_PLL2_BYPASS          BIT(19)
#define FPGA_REG_RST_CNTRL_PLL1_LOCKED          BIT(20)
#define FPGA_REG_RST_CNTRL_PLL2_LOCKED          BIT(21)

// FPGA_REG_IRQ_STATE
#define FPGA_REG_IRQ_STATE_CLEAR_ON_READ    BIT(0)

// FPGA_REG_LED_CNTRL
#define FPGA_REG_LED_CNTRL_RED_LED_EN   BIT(0)
#define FPGA_REG_LED_CNTRL_GREEN_LED_EN BIT(1)
#define FPGA_REG_LED_CNTRL_BLUE_LED_EN  BIT(2)

// FPGA_REG_ADC_DPRAM_CNTRL
#define FPGA_REG_ADC_DPRAM_CNTRL_RD_ADDR_INC    BIT(0)
#define FPGA_REG_ADC_DPRAM_CNTRL_WR_REQUEST     BIT(1)
#define FPGA_REG_ADC_DPRAM_CNTRL_WR_EN          BIT(2)

// FPGA_REG_QDDC_CNTRL
#define FPGA_REG_QDDC_CNTRL_LO_NS_EN    BIT(0)
#define FPGA_REG_QDDC_CNTRL_IQ_SWAP     BIT(1)

// FPGA_REG_QDUC_CNTRL
#define FPGA_REG_QDUC_CNTRL_LO_NS_EN    BIT(0)
#define FPGA_REG_QDUC_CNTRL_IQ_SWAP     BIT(1)
#define FPGA_REG_QDUC_CNTRL_TUNER_BYP   BIT(2)

// FPGA_REG_AUDIO_I2S_MUX_SEL
#define FPGA_REG_AUDIO_I2S_MUX_SEL_CODEC_MCLK_SEL_DSP       0x00000000
#define FPGA_REG_AUDIO_I2S_MUX_SEL_CODEC_MCLK_SEL_DISABLED  0x00000001
#define FPGA_REG_AUDIO_I2S_MUX_SEL_CODEC_MCLK_SEL_BRIDGE    0x00000002
#define FPGA_REG_AUDIO_I2S_MUX_SEL_CODEC_MCLK_SEL_FPGA      0x00000003
#define FPGA_REG_AUDIO_I2S_MUX_SEL_DSP_DCLK_SEL_INPUT       0x00000000
#define FPGA_REG_AUDIO_I2S_MUX_SEL_DSP_DCLK_SEL_BRIDGE      0x00000008
#define FPGA_REG_AUDIO_I2S_MUX_SEL_DSP_DCLK_SEL_FPGA        0x0000000C
#define FPGA_REG_AUDIO_I2S_MUX_SEL_CODEC_DCLK_SEL_DSP       0x00000000
#define FPGA_REG_AUDIO_I2S_MUX_SEL_CODEC_DCLK_SEL_DISABLED  0x00000010
#define FPGA_REG_AUDIO_I2S_MUX_SEL_CODEC_DCLK_SEL_BRIDGE    0x00000020
#define FPGA_REG_AUDIO_I2S_MUX_SEL_CODEC_DCLK_SEL_FPGA      0x00000030
#define FPGA_REG_AUDIO_I2S_MUX_SEL_DSP_SDIN_SEL_DSP         0x00000000
#define FPGA_REG_AUDIO_I2S_MUX_SEL_DSP_SDIN_SEL_CODEC       0x00000100
#define FPGA_REG_AUDIO_I2S_MUX_SEL_DSP_SDIN_SEL_BRIDGE      0x00000200
#define FPGA_REG_AUDIO_I2S_MUX_SEL_DSP_SDIN_SEL_FPGA        0x00000300
#define FPGA_REG_AUDIO_I2S_MUX_SEL_CODEC_SDIN_SEL_DSP       0x00000000
#define FPGA_REG_AUDIO_I2S_MUX_SEL_CODEC_SDIN_SEL_CODEC     0x00000400
#define FPGA_REG_AUDIO_I2S_MUX_SEL_CODEC_SDIN_SEL_BRIDGE    0x00000800
#define FPGA_REG_AUDIO_I2S_MUX_SEL_CODEC_SDIN_SEL_FPGA      0x00000C00
#define FPGA_REG_AUDIO_I2S_MUX_SEL_BRIDGE_SDIN_SEL_DSP      0x00000000
#define FPGA_REG_AUDIO_I2S_MUX_SEL_BRIDGE_SDIN_SEL_CODEC    0x00001000
#define FPGA_REG_AUDIO_I2S_MUX_SEL_BRIDGE_SDIN_SEL_BRIDGE   0x00002000
#define FPGA_REG_AUDIO_I2S_MUX_SEL_BRIDGE_SDIN_SEL_FPGA     0x00003000
#define FPGA_REG_AUDIO_I2S_MUX_SEL_FPGA_SDIN_SEL_DSP        0x00000000
#define FPGA_REG_AUDIO_I2S_MUX_SEL_FPGA_SDIN_SEL_CODEC      0x00004000
#define FPGA_REG_AUDIO_I2S_MUX_SEL_FPGA_SDIN_SEL_BRIDGE     0x00008000
#define FPGA_REG_AUDIO_I2S_MUX_SEL_FPGA_SDIN_SEL_FPGA       0x0000C000

// FPGA_REG_QSPI_MEM_CNTRL
#define FPGA_REG_QSPI_MEM_CNTRL_WR_REQUEST                      BIT(0)
#define FPGA_REG_QSPI_MEM_CNTRL_WR_REQUEST_Q                    BIT(1)
#define FPGA_REG_QSPI_MEM_CNTRL_RD_REQUEST                      BIT(2)
#define FPGA_REG_QSPI_MEM_CNTRL_RD_REQUEST_Q                    BIT(3)
#define FPGA_REG_QSPI_MEM_CNTRL_DATA_IN_SEL_AUDIO_I2S_LEFT      0x00000000
#define FPGA_REG_QSPI_MEM_CNTRL_DATA_IN_SEL_AUDIO_I2S_RIGHT     0x00000100
#define FPGA_REG_QSPI_MEM_CNTRL_DATA_IN_SEL_QDDC_OUT            0x00000200
#define FPGA_REG_QSPI_MEM_CNTRL_DATA_IN_SEL_QDUC_IN             0x00000300

// FPGA_REG_QSPI_DPRAM_CNTRL
#define FPGA_REG_QSPI_DPRAM_CNTRL_RD_ADDR_INC    BIT(0)


#define FPGA_CLK1_FREQ  SI5351_CLK_FREQ[SI5351_FPGA_CLK1]
#define FPGA_CLK2_FREQ  SI5351_CLK_FREQ[SI5351_FPGA_CLK2]
#define FPGA_CLK3_FREQ  SI5351_CLK_FREQ[SI5351_FPGA_CLK3]
#define FPGA_CLK4_FREQ  SI5351_CLK_FREQ[SI5351_FPGA_CLK4]
#define FPGA_CLK5_FREQ  (FPGA_CLK3_FREQ * 2)
#define FPGA_CLK6_FREQ  (FPGA_CLK3_FREQ * 4)
#define FPGA_CLK7_FREQ  0 // From PLL2, not implemented
#define FPGA_CLK8_FREQ  0 // From PLL2, not implemented

#define FPGA_RST_CLK            FPGA_CLK1_FREQ
#define FPGA_ADC_DPRAM_RD_CLK   FPGA_CLK1_FREQ
#define FPGA_ADC_DPRAM_WR_CLK   FPGA_CLK5_FREQ
#define FPGA_ADC_CLK            FPGA_CLK5_FREQ
#define FPGA_QDDC_CLK           FPGA_CLK6_FREQ
#define FPGA_BB_I2S_CLK         FPGA_CLK6_FREQ
#define FPGA_QDUC_CLK           FPGA_CLK6_FREQ
#define FPGA_DAC_CLK            FPGA_CLK6_FREQ
#define FPGA_AUDIO_I2S_CLK      FPGA_CLK6_FREQ
#define FPGA_AUDIO_I2S_MCLK     FPGA_CLK4_FREQ
#define FPGA_QSPI_DPRAM_RD_CLK  FPGA_CLK1_FREQ
#define FPGA_QSPI_DPRAM_WR_CLK  FPGA_CLK6_FREQ
#define FPGA_QSPI_MEM_CLK       FPGA_CLK6_FREQ
#define FPGA_IRQ_CLK            FPGA_CLK1_FREQ
#define FPGA_LED_CLK            FPGA_CLK1_FREQ
#define FPGA_CNTRL_SPI_CLK      FPGA_CLK1_FREQ

#define FPGA_ADC_DPRAM_SIZE     4096 // Words
#define FPGA_QSPI_DPRAM_SIZE    256 // Words
#define FPGA_QSPI_RAM_SIZE      4194304 // Words
#define FPGA_QDDC_LO_FSZ        31 // Bits
#define FPGA_QDUC_LO_FSZ        31 // Bits

#define FPGA_PLL1_ID    0
#define FPGA_PLL2_ID    1

#define FPGA_IRQ_SMC    0
#define FPGA_IRQ_DSP    1

#define FPGA_IRQ_ADC_DPRAM_WR_EN        BIT(0)
#define FPGA_IRQ_nADC_DPRAM_WR_EN       BIT(1)
#define FPGA_IRQ_ADC_OVERFLOW           BIT(2)
#define FPGA_IRQ_QSPI_MEM_WR_REQUEST_Q  BIT(3)
#define FPGA_IRQ_nQSPI_MEM_WR_REQUEST_Q BIT(4)
#define FPGA_IRQ_QSPI_MEM_RD_REQUEST_Q  BIT(5)
#define FPGA_IRQ_nQSPI_MEM_RD_REQUEST_Q BIT(6)

#define FPGA_LED_RED    0
#define FPGA_LED_GREEN  1
#define FPGA_LED_BLUE   2

uint8_t fpga_load_bitstream(const uint8_t *pubBitstream, const uint32_t ulBitstreamSize);

uint8_t fpga_init();
void fpga_isr();

uint16_t fpga_read_design_id();
uint16_t fpga_read_design_version();

void fpga_reset_module(uint32_t ulModule, uint8_t ubReset);

void fpga_pll_config(uint8_t ubID, uint8_t ubEnable, uint8_t ubSleep, uint8_t ubBypass);
uint8_t fpga_pll_get_lock_state(uint8_t ubID);

void fpga_irq_set_mask(uint8_t ubID, uint8_t ubMask);
uint8_t fpga_irq_get_state();
void fpga_irq_set(uint8_t ubMask);
void fpga_irq_clear(uint8_t ubMask);

void fpga_rgb_led_enable(uint8_t ubColor);
void fpga_rgb_led_disable(uint8_t ubColor);
void fpga_rgb_led_set_duty(uint8_t ubColor, uint16_t usDuty);
uint16_t fpga_rgb_led_get_duty(uint8_t ubColor);

void fpga_adc_dpram_sample(int16_t *psData, uint16_t usSize);

void fpga_qddc_set_iq_swap(uint8_t ubEnable);
void fpga_qddc_set_lo_noise_shaping(uint8_t ubEnable);
void fpga_qddc_set_lo_freq(int32_t lFrequency);
int32_t fpga_qddc_get_lo_freq();

void fpga_qduc_set_tuner_bypass(uint8_t ubEnable);
void fpga_qduc_set_iq_swap(uint8_t ubEnable);
void fpga_qduc_set_lo_noise_shaping(uint8_t ubEnable);
void fpga_qduc_set_lo_freq(int32_t lFrequency);
int32_t fpga_qduc_get_lo_freq();

void fpga_i2s_mux_set_codec_master_clock(uint32_t ulSource);
uint32_t fpga_i2s_mux_get_codec_master_clock();
void fpga_i2s_mux_set_dsp_data_clock(uint32_t ulSource);
uint32_t fpga_i2s_mux_get_dsp_data_clock();
void fpga_i2s_mux_set_codec_data_clock(uint32_t ulSource);
uint32_t fpga_i2s_mux_get_codec_data_clock();
void fpga_i2s_mux_set_dsp_sdin(uint32_t ulSource);
uint32_t fpga_i2s_mux_get_dsp_sdin();
void fpga_i2s_mux_set_codec_sdin(uint32_t ulSource);
uint32_t fpga_i2s_mux_get_codec_sdin();
void fpga_i2s_mux_set_bridge_sdin(uint32_t ulSource);
uint32_t fpga_i2s_mux_get_bridge_sdin();
void fpga_i2s_mux_set_fpga_sdin(uint32_t ulSource);
uint32_t fpga_i2s_mux_get_fpga_sdin();

void fpga_qspi_mux_set_data_in(uint32_t ulSource);
uint32_t fpga_qspi_mux_get_data_in();
void fpga_qspi_mem_write(uint32_t ulAddress, uint32_t ulSize);
void fpga_qspi_mem_read(uint32_t ulAddress, int16_t *psData, uint32_t ulSize);

#endif // __FPGA_H__