#pragma once

#include <cstdint>
#include <mutex>
#include "AXIPeripheral.hpp"
#include "Utils.hpp"

#define AXI_GPIO_NUM_INSTANCES 3

#define AXI_GPIO_REG_VERSION        0x00
#define AXI_GPIO_REG_GPIO_DIR       0x04
#define AXI_GPIO_REG_GPIO_DIR_SET   0x08
#define AXI_GPIO_REG_GPIO_DIR_CLR   0x0C
#define AXI_GPIO_REG_GPIO_OUT       0x10
#define AXI_GPIO_REG_GPIO_OUT_SET   0x14
#define AXI_GPIO_REG_GPIO_OUT_CLR   0x18
#define AXI_GPIO_REG_GPIO_IN        0x1C

class AXIGPIO: public AXIPeripheral
{
public:
    enum Direction
    {
        OUTPUT = 0,
        INPUT = 1
    };
    enum Value : bool
    {
        LOW = false,
        HIGH = true
    };

    AXIGPIO(void *base_address);

    uint32_t getIPVersion();

    void setDirection(uint8_t gpio, AXIGPIO::Direction direction);
    AXIGPIO::Direction getDirection(uint8_t gpio);
    void setValue(uint8_t gpio, AXIGPIO::Value value);
    inline void setValue(uint8_t gpio, bool value)
    {
        this->setValue(gpio, value ? AXIGPIO::Value::HIGH : AXIGPIO::Value::LOW);
    }
    AXIGPIO::Value getValue(uint8_t gpio);

private:
    std::mutex mutex;
};

// Instance 0 - axi_gpio_0 - Transceiver control
#define AXI_GPIO_TRX_INST      0

#define AXI_GPIO_TRX_CTRL_IN0_BIT                   0 // BIT  0: TRX_CTRL_IN[0] (Fixed output)
#define AXI_GPIO_TRX_CTRL_IN1_BIT                   1 // BIT  1: TRX_CTRL_IN[1] (Fixed output)
#define AXI_GPIO_TRX_CTRL_IN2_BIT                   2 // BIT  2: TRX_CTRL_IN[2] (Fixed output)
#define AXI_GPIO_TRX_CTRL_IN3_BIT                   3 // BIT  3: TRX_CTRL_IN[3] (Fixed output)
#define AXI_GPIO_TRX_EN_AGC_BIT                     4 // BIT  4: TRX_EN_AGC (Fixed output)
#define AXI_GPIO_TRX_SYNC_IN_BIT                    5 // BIT  5: TRX_SYNC_IN (Fixed output)
#define AXI_GPIO_UP_ENABLE_BIT                      6 // BIT  6: axi_ad9361 up_enable (Fixed output)
#define AXI_GPIO_UP_TXNRX_BIT                       7 // BIT  7: axi_ad9361 up_txnrx (Fixed output)
#define AXI_GPIO_TRX_CTRL_OUT0_BIT                  8 // BIT  8: TRX_CTRL_OUT[0] (Fixed input)
#define AXI_GPIO_TRX_CTRL_OUT1_BIT                  9 // BIT  9: TRX_CTRL_OUT[1] (Fixed input)
#define AXI_GPIO_TRX_CTRL_OUT2_BIT                 10 // BIT 10: TRX_CTRL_OUT[2] (Fixed input)
#define AXI_GPIO_TRX_CTRL_OUT3_BIT                 11 // BIT 11: TRX_CTRL_OUT[3] (Fixed input)
#define AXI_GPIO_TRX_CTRL_OUT4_BIT                 12 // BIT 12: TRX_CTRL_OUT[4] (Fixed input)
#define AXI_GPIO_TRX_CTRL_OUT5_BIT                 13 // BIT 13: TRX_CTRL_OUT[5] (Fixed input)
#define AXI_GPIO_TRX_CTRL_OUT6_BIT                 14 // BIT 14: TRX_CTRL_OUT[6] (Fixed input)
#define AXI_GPIO_TRX_CTRL_OUT7_BIT                 15 // BIT 15: TRX_CTRL_OUT[7] (Fixed input)
#define AXI_GPIO_5V0_TRX_BIAS_T1_OCn_BIT           16 // BIT 16: 5V0_TRX_BIAS_T1_OCn (Fixed input)
#define AXI_GPIO_5V0_TRX_BIAS_T2_OCn_BIT           17 // BIT 17: 5V0_TRX_BIAS_T2_OCn (Fixed input)
#define AXI_GPIO_5V0_TRX_PA1_OCn_BIT               18 // BIT 18: 5V0_TRX_PA1_OCn (Fixed input)
#define AXI_GPIO_5V0_TRX_PA2_OCn_BIT               19 // BIT 19: 5V0_TRX_PA2_OCn (Fixed input)
// BIT 20: RSVD
// BIT 21: RSVD
#define AXI_GPIO_ADC_R1_MODE_BIT                   22 // BIT 22: axi_ad9361 adc_r1_mode (Fixed input)
#define AXI_GPIO_DAC_R1_MODE_BIT                   23 // BIT 23: axi_ad9361 dac_r1_mode (Fixed input)
// BIT 24: RSVD
// BIT 25: RSVD
#define AXI_GPIO_RST_AD9361_61M44_PERI_ARESETn_BIT 26 // BIT 26: rst_axi_ad9361_61M44 peripheral_aresetn (Fixed input)
// BIT 27: RSVD
// BIT 28: RSVD
// BIT 29: RSVD
// BIT 30: RSVD
#define AXI_GPIO_TRX_RESETn_BIT                    31 // BIT 31: TRX_RESETn (Fixed output)

// Instance 1 - axi_gpio_1 - mmWave Synthesizer control
#define AXI_GPIO_SYNTH_INST    1

#define AXI_GPIO_SYNTH_CE_BIT      0 // BIT  0: SYNTH_CE (Fixed output)
#define AXI_GPIO_SYNTH_MUTE_BIT    1 // BIT  1: SYNTH_MUTE (Fixed output)
#define AXI_GPIO_SYNTH_SYNC_BIT    2 // BIT  2: SYNTH_SYNC (Fixed output)
// BIT  3: RSVD
// BIT  4: RSVD
// BIT  5: RSVD
// BIT  6: RSVD
// BIT  7: RSVD
#define AXI_GPIO_SYNTH_LD_BIT      8 // BIT  8: SYNTH_LD (Fixed input)
// BIT  9: RSVD
// BIT 10: RSVD
// BIT 11: RSVD
// BIT 12: RSVD
// BIT 13: RSVD
// BIT 14: RSVD
// BIT 15: RSVD
// BIT 16: RSVD
// BIT 17: RSVD
// BIT 18: RSVD
// BIT 19: RSVD
// BIT 20: RSVD
// BIT 21: RSVD
// BIT 22: RSVD
// BIT 23: RSVD
// BIT 24: RSVD
// BIT 25: RSVD
// BIT 26: RSVD
// BIT 27: RSVD
// BIT 28: RSVD
// BIT 29: RSVD
// BIT 30: RSVD
#define AXI_GPIO_SYNTH_RESETn_BIT  31 // BIT 31: SYNTH_RESETn (Fixed output)

// Instance 2 - axi_gpio_2 - System control
#define AXI_GPIO_SYS_INST      2

#define AXI_GPIO_CLK_WIZ0_LOCKED_BIT                    0 // BIT  0: clk_wiz_0 locked (Fixed input)
#define AXI_GPIO_MIG_MMCM_LOCKED_BIT                    1 // BIT  1: mig_7series_0 mmcm_locked (Fixed input)
#define AXI_GPIO_PCIE_MMCM_LOCKED_BIT                   2 // BIT  2: axi_pcie_0 mmcm_lock (Fixed input)
// BIT  3: RSVD
#define AXI_GPIO_MIG_INIT_CALIB_COMPLETE_BIT            4 // BIT  4: mig_7series_0 init_calib_complete (Fixed input)
#define AXI_GPIO_PCIE_USER_LINK_UP_BIT                  5 // BIT  5: axi_pcie_0 user_link_up (Fixed input)
#define AXI_GPIO_RV32_TRAPPED_BIT                       6 // BIT  6: picorv32_0 trap (Fixed input)
// BIT  7: RSVD
#define AXI_GPIO_CM4_WAKE_BIT                           8 // BIT 8: CM4_WAKE (Fixed output)
#define AXI_GPIO_CODEC_RSTn_BIT                         9 // BIT 9: CODEC_RSTn (Fixed output)
#define AXI_GPIO_PM_I2C_EN_BIT                         10 // BIT 10: PM_I2C_EN (Fixed output)
#define AXI_GPIO_CLK_MNGR_OEn_BIT                      11 // BIT 11: CLK_MNGR_OEn (Fixed output)
// BIT 12: RSVD
// BIT 13: RSVD
// BIT 14: RSVD
// BIT 15: RSVD
#define AXI_GPIO_RST_MIG_166M_PERI_ARESETn_BIT         16 // BIT 16: rst_mig_7series_0_166M peripheral_aresetn (Fixed input) - This is the reset for the DDR3 controller AXI interface only
#define AXI_GPIO_RST_CLK_WIZ0_250M_PERI_ARESETn_BIT    17 // BIT 17: rst_clk_wiz_0_250M peripheral_aresetn (Fixed input) - This is the reset for the DDR3 controller, known as sys_rst_n in the Xilinx IP
#define AXI_GPIO_RST_FPGA_CLK1_49M152_PERI_ARESETn_BIT 18 // BIT 18: rst_FPGA_CLK1_49M152 peripheral_aresetn (Fixed input) - This is the reset for the I2S module
// BIT 19: RSVD
// BIT 20: RSVD
// BIT 21: RSVD
// BIT 22: RSVD
// BIT 23: RSVD
#define AXI_GPIO_RST_MIG_166M_AUX_RESET_IN_BIT         24 // BIT 24: rst_mig_7series_0_166M aux_reset_in (Fixed output) - Asserting this will reset the DDR3 controller AXI interface only
#define AXI_GPIO_RST_CLK_WIZ0_250M_AUX_RESET_IN_BIT    25 // BIT 25: rst_clk_wiz_0_250M aux_reset_in (Fixed output) - Asserting this will reset the DDR3 controller, known as sys_rst_n in the Xilinx IP
#define AXI_GPIO_RST_FPGA_CLK1_49M152_AUX_RESET_IN_BIT 26 // BIT 26: rst_FPGA_CLK1_49M152 aux_reset_in (Fixed output) - Asserting this will reset the I2S module
// BIT 27: RSVD
// BIT 28: RSVD
// BIT 29: RSVD
#define AXI_GPIO_RV32_RESETN_BIT                       30 // BIT 30: picorv32_0 resetn (Fixed output) - Asserting this will reset the PicoRV32 CPU
#define AXI_GPIO_SYS_AUX_RESET_BIT                     31 // BIT 31: sys_aux_reset (Fixed output) - Asserting this will reset the entire system, including the DDR3 controller since the 250 MHz DDR3 source clock MMCM is reset
