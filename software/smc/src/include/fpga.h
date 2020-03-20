#ifndef __FPGA_H__
#define __FPGA_H__

#include <em_device.h>
#include <stdlib.h>
#include "utils.h"
#include "systick.h"
#include "atomic.h"
#include "gpio.h"
#include "si5351.h"
#include "usart.h"

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
#define FPGA_REG_DDC_CNTRL              0x30
#define FPGA_REG_DDC_LO_FREQ            0x31
#define FPGA_REG_QDUC_CNTRL             0x35
#define FPGA_REG_AUDIO_I2S_MUX_SEL      0x40
#define FPGA_REG_QSPI_MEM_CNTRL         0x50
#define FPGA_REG_QSPI_MEM_ADDR          0x51
#define FPGA_REG_QSPI_MEM_START_ADDR    0x52
#define FPGA_REG_QSPI_MEM_END_ADDR      0x53
#define FPGA_REG_QSPI_MEM_DATA          0x54

// FPGA_REG_ID
#define FPGA_REG_ID_DESIGN_ID       0xFFFF0000
#define FPGA_REG_ID_DESIGN_VERSION  0x0000FFFF

// FPGA_REG_RST_CNTRL
#define FPGA_REG_RST_CNTRL_ADC_DPRAM_SOFT_RST   BIT(0)
#define FPGA_REG_RST_CNTRL_ADC_SOFT_RST         BIT(1)
#define FPGA_REG_RST_CNTRL_DDC_SOFT_RST         BIT(2)
#define FPGA_REG_RST_CNTRL_BB_I2S_SOFT_RST      BIT(3)
#define FPGA_REG_RST_CNTRL_QDUC_SOFT_RST        BIT(4)
#define FPGA_REG_RST_CNTRL_DAC_SOFT_RST         BIT(5)
#define FPGA_REG_RST_CNTRL_AUDIO_I2S_SOFT_RST   BIT(6)
#define FPGA_REG_RST_CNTRL_QSPI_SOFT_RST        BIT(7)
#define FPGA_REG_RST_CNTRL_LED_SOFT_RST         BIT(8)

// FPGA_REG_IRQ_STATE
#define FPGA_REG_IRQ_STATE_CLEAR_ON_READ    BIT(0)

// FPGA_REG_LED_CNTRL
#define FPGA_REG_LED_CNTRL_RED_LED_EN   BIT(0)
#define FPGA_REG_LED_CNTRL_GREEN_LED_EN BIT(1)
#define FPGA_REG_LED_CNTRL_BLUE_LED_EN  BIT(2)

// FPGA_REG_ADC_DPRAM_CNTRL
#define FPGA_REG_ADC_DPRAM_CNTRL_WR_REQUEST     BIT(0)
#define FPGA_REG_ADC_DPRAM_CNTRL_WR_EN          BIT(1)
#define FPGA_REG_ADC_DPRAM_CNTRL_RD_ADDR_INC    BIT(2)

// FPGA_REG_DDC_CNTRL
#define FPGA_REG_DDC_CNTRL_LO_NS_EN     BIT(0)
#define FPGA_REG_DDC_CNTRL_IQ_SWAP      BIT(1)

// FPGA_REG_QDUC_CNTRL

// FPGA_REG_AUDIO_I2S_MUX_SEL
#define FPGA_REG_AUDIO_I2S_MUX_SEL_DSP_CLK_SEL_INPUT        0x00000000
#define FPGA_REG_AUDIO_I2S_MUX_SEL_DSP_CLK_SEL_BRIDGE       0x00000002
#define FPGA_REG_AUDIO_I2S_MUX_SEL_DSP_CLK_SEL_FPGA         0x00000003
#define FPGA_REG_AUDIO_I2S_MUX_SEL_CODEC_CLK_SEL_DSP        0x00000000
#define FPGA_REG_AUDIO_I2S_MUX_SEL_CODEC_CLK_SEL_DISABLED   0x00000004
#define FPGA_REG_AUDIO_I2S_MUX_SEL_CODEC_CLK_SEL_BRIDGE     0x00000008
#define FPGA_REG_AUDIO_I2S_MUX_SEL_CODEC_CLK_SEL_FPGA       0x0000000C
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


#define FPGA_ADC_DPRAM_SIZE     4096 // Words
#define FPGA_QSPI_RAM_SIZE      4194304 // Words
#define FPGA_DDC_LO_CLK_FREQ    SI5351_CLK_FREQ[SI5351_FPGA_CLK1]
#define FPGA_DDC_LO_FSZ         26 // Bits

#define FPGA_IRQ_SMC    0
#define FPGA_IRQ_DSP    1

#define FPGA_IRQ_ADC_DPRAM_WR_EN    BIT(0)
#define FPGA_IRQ_nADC_DPRAM_WR_EN   BIT(1)
#define FPGA_IRQ_DDC_VALID          BIT(2)
#define FPGA_IRQ_ADC_OVERFLOW       BIT(3)
#define FPGA_IRQ_QSPI_MEM_WR_VALID  BIT(4)
#define FPGA_IRQ_QSPI_MEM_RD_VALID  BIT(5)

#define FPGA_LED_RED    0
#define FPGA_LED_GREEN  1
#define FPGA_LED_BLUE   2

uint8_t fpga_load_bitstream(const uint8_t *pubBitstream, const uint32_t ulBitstreamSize);

uint8_t fpga_init();
void fpga_isr();

uint16_t fpga_read_design_id();
uint16_t fpga_read_design_version();

void fpga_reset_module(uint32_t ulModule, uint8_t ubReset);

void fpga_irq_set_mask(uint8_t ubID, uint8_t ubMask);
uint8_t fpga_irq_get_state();
void fpga_irq_set(uint8_t ubMask);
void fpga_irq_clear(uint8_t ubMask);

void fpga_rgb_led_enable(uint8_t ubColor);
void fpga_rgb_led_disable(uint8_t ubColor);
void fpga_rgb_led_set_duty(uint8_t ubColor, uint16_t usDuty);
uint16_t fpga_rgb_led_get_duty(uint8_t ubColor);

void fpga_adc_dpram_sample(int16_t *psData, uint16_t usSize);

void fpga_ddc_set_iq_swap(uint8_t ubEnable);
void fpga_ddc_set_lo_noise_shaping(uint8_t ubEnable);
void fpga_ddc_set_lo_freq(uint32_t ulFrequency);
uint32_t fpga_ddc_get_lo_freq();

void fpga_i2s_mux_set_dsp_clock(uint32_t ulSource);
uint32_t fpga_i2s_mux_get_dsp_clock();
void fpga_i2s_mux_set_codec_clock(uint32_t ulSource);
uint32_t fpga_i2s_mux_get_codec_clock();
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