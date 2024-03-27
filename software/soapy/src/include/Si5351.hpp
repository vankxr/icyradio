#pragma once

#include <cstdint>
#include <vector>
#include <algorithm>
#include <unistd.h>
#include <mutex>
#include "AXIIIC.hpp"
#include "AXIGPIO.hpp"
#include "AXIIRQCtrl.hpp"
#include "Utils.hpp"

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

// SI5351_REG_IRQ_FLAGS/MASK
#define SI5351_REG_IRQ_SYS_INIT   0x80
#define SI5351_REG_IRQ_LOL_B      0x40
#define SI5351_REG_IRQ_LOL_A      0x20
#define SI5351_REG_IRQ_CLKIN_LOS  0x10
#define SI5351_REG_IRQ_XO_LOS     0x08

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

class Si5351
{
public:
    enum CLKINDivider : int8_t
    {
        CLKIN_DIV_AUTO = -1,

        CLKIN_DIV_DIV1 = 1,
        CLKIN_DIV_DIV2 = 2,
        CLKIN_DIV_DIV4 = 4,
        CLKIN_DIV_DIV8 = 8,
    };
    enum XTALCapacitance : uint8_t
    {
        C_6pF = 6,
        C_8pF = 8,
        C_10pF = 10,
    };
    enum PLLSource
    {
        PLL_SRC_AUTO = -1,

        PLL_SRC_XTAL = 0,
        PLL_SRC_CLKIN = 1,
    };
    enum PLL
    {
        PLL_AUTO = -1,

        PLLA = 0,
        PLLB = 1,
    };
    enum MultiSynth : uint8_t
    {
        MS0 = 0,
        MS1 = 1,
        MS2 = 2,
        MS3 = 3,
        MS4 = 4,
        MS5 = 5,
        MS6 = 6,
        MS7 = 7,
        // Named aliases
        MS_FPGA_CLK2 = 0,
        MS_FPGA_CLK3 = 1,
        MS_FPGA_CLK0 = 2,
        MS_FPGA_CLK1 = 3,
        MS_TRX_REF_CLK = 4,
        MS_SYNTH_REF_CLK = 5,
        MS_EXT_CLK_2_3 = 6,
        MS_EXT_CLK_OUT = 7,
    };
    struct MultiSynthDivider
    {
        uint32_t a;
        uint32_t b;
        uint32_t c;
    };
    enum ClockOutput : uint8_t
    {
        CLK0 = 0,
        CLK1 = 1,
        CLK2 = 2,
        CLK3 = 3,
        CLK4 = 4,
        CLK5 = 5,
        CLK6 = 6,
        CLK7 = 7,
        // Named aliases
        CLK_FPGA_CLK2 = 0,
        CLK_FPGA_CLK3 = 1,
        CLK_FPGA_CLK0 = 2,
        CLK_FPGA_CLK1 = 3,
        CLK_TRX_REF_CLK = 4,
        CLK_SYNTH_REF_CLK = 5,
        CLK_EXT_CLK_2_3 = 6,
        CLK_EXT_CLK_OUT = 7,
    };
    enum ClockOutputSource
    {
        CLK_SRC_XTAL = 0,
        CLK_SRC_CLKIN = 1,
        CLK_SRC_MS0_MS4 = 2,
        CLK_SRC_MSn = 3,
    };
    enum ClockOutputDivider : uint8_t
    {
        CLK_DIV_DIV1 = 1,
        CLK_DIV_DIV2 = 2,
        CLK_DIV_DIV4 = 4,
        CLK_DIV_DIV8 = 8,
        CLK_DIV_DIV16 = 16,
        CLK_DIV_DIV32 = 32,
        CLK_DIV_DIV64 = 64,
        CLK_DIV_DIV128 = 128,
    };
    enum ClockOutputDriveCurrent : uint8_t
    {
        I_2mA = 2,
        I_4mA = 4,
        I_6mA = 6,
        I_8mA = 8,
    };
    enum ClockOutputDisableState
    {
        LOW = 0,
        HIGH = 1,
        HI_Z = 2,
        NO_DISABLE = 3,
    };
    struct IRQConfig
    {
        AXIIRQCtrl *controller;     // The IRQ controller to use
        AXIIRQCtrl::IRQNumber irq;  // The IRQ number to use
    };
    struct IICConfig
    {
        AXIIIC *controller;
        uint8_t addr;
    };
    struct GPIOConfig
    {
        AXIGPIO *controller;
        uint8_t gpio;
        bool invert;
    };

public:
    // Helper method to calculate the optimal PLL frequency to obtain
    // the maximum number of integer dividers possible given a set of output clocks
    static uint32_t CalcOptPLLFreq(std::vector<uint32_t> freqs, uint32_t src_freq, std::vector<bool> &achieved);
    static std::vector<uint32_t> CalcOptPLLFreqs(std::vector<uint32_t> freqs, uint32_t src_freq, std::vector<int8_t> &assigned_pll);

private:
    static Si5351::MultiSynthDivider CalculateMSDivider(uint32_t f1, uint32_t f2);
    static void ValidatePLLMSDivider(Si5351::MultiSynthDivider div);
    static void ValidateIntClockMSDivider(Si5351::MultiSynthDivider div);
    static void ValidateFracClockMSDivider(Si5351::MultiSynthDivider div);

    static void ISR(void *_this);
    void handleIRQ();

    void readReg(uint8_t reg, uint8_t *dst, uint8_t count);
    inline uint8_t readReg(uint8_t reg)
    {
        uint8_t val;

        this->readReg(reg, &val, 1);

        return val;
    }
    void writeReg(uint8_t reg, uint8_t *src, uint8_t count);
    inline void writeReg(uint8_t reg, uint8_t val)
    {
        this->writeReg(reg, &val, 1);
    }
    inline void rmwReg(uint8_t reg, uint8_t mask, uint8_t val)
    {
        this->writeReg(reg, (this->readReg(reg) & mask) | val);
    }

public:
    Si5351(Si5351::IICConfig iic, Si5351::GPIOConfig oe_gpio = {nullptr, 0, false}, Si5351::IRQConfig irq_config = {nullptr, AXIIRQCtrl::IRQNumber::MAX});
    ~Si5351();

    void init();

    uint8_t getRevisionID()
    {
        std::lock_guard<std::recursive_mutex> lock(this->mutex);

        return this->readReg(SI5351_REG_STATUS) & SI5351_REG_STATUS_REVID;
    }

    bool isGlobalOutputEnabled();
    void globalOutputEnable(bool enable = true);
    inline void globalOutputDisable()
    {
        this->globalOutputEnable(false);
    }

    bool isCLKINDetected()
    {
        std::lock_guard<std::recursive_mutex> lock(this->mutex);

        return !(this->readReg(SI5351_REG_STATUS) & SI5351_REG_STATUS_CLKIN_LOS);
    }
    void configCLKIN(uint32_t freq, Si5351::CLKINDivider divider = Si5351::CLKINDivider::CLKIN_DIV_AUTO);
    inline uint32_t getCLKINFrequency()
    {
        std::lock_guard<std::recursive_mutex> lock(this->mutex);

        return this->clkin_freq;
    }
    uint32_t getDividedCLKINFrequency();

    inline bool isXTALDetected()
    {
        return !(this->readReg(SI5351_REG_STATUS) & SI5351_REG_STATUS_XO_LOS);
    }
    void configXTAL(uint32_t freq, Si5351::XTALCapacitance cap);
    inline uint32_t getXTALFrequency()
    {
        std::lock_guard<std::recursive_mutex> lock(this->mutex);

        return this->xtal_freq;
    }


    bool isPLLLocked(Si5351::PLL pll);
    void resetPLL(Si5351::PLL pll);
    void configPLL(Si5351::PLL pll, uint32_t freq, Si5351::PLLSource src = Si5351::PLLSource::PLL_SRC_AUTO);
    void setPLLSource(Si5351::PLL pll, Si5351::PLLSource src);
    Si5351::PLLSource getPLLSource(Si5351::PLL pll);
    uint32_t getPLLSourceFrequency(Si5351::PLL pll);
    void setPLLFrequency(Si5351::PLL pll, uint32_t freq);
    uint32_t getPLLFrequency(Si5351::PLL pll);

    void configMultiSynth(Si5351::MultiSynth ms, uint32_t freq, float phase = 0.f, Si5351::PLL src = Si5351::PLL::PLL_AUTO);
    void setMultiSynthSource(Si5351::MultiSynth ms, Si5351::PLL src);
    Si5351::PLL getMultiSynthSource(Si5351::MultiSynth ms);
    uint32_t getMultiSynthSourceFrequency(Si5351::MultiSynth ms);
    void setMultiSynthFrequency(Si5351::MultiSynth ms, uint32_t freq);
    uint32_t getMultiSynthFrequency(Si5351::MultiSynth ms);
    void setMultiSynthPhaseOffset(Si5351::MultiSynth ms, float phase);
    float getMultiSynthPhaseOffset(Si5351::MultiSynth ms);

    void setClockOutputSource(Si5351::ClockOutput clk, Si5351::ClockOutputSource src);
    void setClockOutputSource(Si5351::ClockOutput clk, Si5351::MultiSynth src)
    {
        if(static_cast<uint8_t>(clk) == static_cast<uint8_t>(src))
        {
            this->setClockOutputSource(clk, Si5351::ClockOutputSource::CLK_SRC_MSn);

            return;
        }

        if(clk > Si5351::ClockOutput::CLK0 && clk <= Si5351::ClockOutput::CLK3 && src == Si5351::MultiSynth::MS0)
        {
            this->setClockOutputSource(clk, Si5351::ClockOutputSource::CLK_SRC_MS0_MS4);

            return;
        }

        if(clk > Si5351::ClockOutput::CLK4 && clk <= Si5351::ClockOutput::CLK7 && src == Si5351::MultiSynth::MS4)
        {
            this->setClockOutputSource(clk, Si5351::ClockOutputSource::CLK_SRC_MS0_MS4);

            return;
        }

        throw std::invalid_argument("Si5351: Invalid clock output source");
    }
    Si5351::ClockOutputSource getClockOutputSource(Si5351::ClockOutput clk);
    void setClockOutputDivider(Si5351::ClockOutput clk, Si5351::ClockOutputDivider divider);
    Si5351::ClockOutputDivider getClockOutputDivider(Si5351::ClockOutput clk);
    void setClockOutputInvert(Si5351::ClockOutput clk, bool invert);
    bool getClockOutputInvert(Si5351::ClockOutput clk);
    void setClockOutputDriveCurrent(Si5351::ClockOutput clk, Si5351::ClockOutputDriveCurrent current);
    Si5351::ClockOutputDriveCurrent getClockOutputDriveCurrent(Si5351::ClockOutput clk);
    void setClockOutputDisableState(Si5351::ClockOutput clk, Si5351::ClockOutputDisableState state);
    Si5351::ClockOutputDisableState getClockOutputDisableState(Si5351::ClockOutput clk);
    bool isClockOutputPoweredUp(Si5351::ClockOutput clk);
    void powerUpClockOutput(Si5351::ClockOutput clk, bool power_up = true);
    inline void powerDownClockOutput(Si5351::ClockOutput clk)
    {
        this->powerUpClockOutput(clk, false);
    }
    bool isClockOutputEnabled(Si5351::ClockOutput clk);
    void enableClockOutput(Si5351::ClockOutput clk, bool enable = true);
    inline void disableClockOutput(Si5351::ClockOutput clk)
    {
        this->enableClockOutput(clk, false);
    }
    void setClockOutputEnableMode(Si5351::ClockOutput clk, bool hard = true);

    // Convenience methods that abstract the internal clock tree (MS -> Output Buffer mapping, output dividers for lower frequencies, etc...)
    void configClock(Si5351::ClockOutput clk, uint32_t freq, float phase = 0.f, Si5351::PLL src = Si5351::PLL::PLL_AUTO);
    void setClockFrequency(Si5351::ClockOutput clk, uint32_t freq);
    uint32_t getClockFrequency(Si5351::ClockOutput clk);
    void setClockPhaseOffset(Si5351::ClockOutput clk, float phase);
    float getClockPhaseOffset(Si5351::ClockOutput clk);
    inline void setClockDriveCurrent(Si5351::ClockOutput clk, Si5351::ClockOutputDriveCurrent current)
    {
        this->setClockOutputDriveCurrent(clk, current);
    }
    inline Si5351::ClockOutputDriveCurrent getClockDriveCurrent(Si5351::ClockOutput clk)
    {
        return this->getClockOutputDriveCurrent(clk);
    }
    inline void setClockDisableState(Si5351::ClockOutput clk, Si5351::ClockOutputDisableState state)
    {
        this->setClockOutputDisableState(clk, state);
    }
    inline Si5351::ClockOutputDisableState getClockDisableState(Si5351::ClockOutput clk)
    {
        return this->getClockOutputDisableState(clk);
    }
    inline bool isClockPoweredUp(Si5351::ClockOutput clk)
    {
        return this->isClockOutputPoweredUp(clk);
    }
    inline void powerUpClock(Si5351::ClockOutput clk, bool power_up = true)
    {
        this->powerUpClockOutput(clk, power_up);
    }
    inline void powerDownClock(Si5351::ClockOutput clk)
    {
        this->powerUpClockOutput(clk, false);
    }
    inline bool isClockEnabled(Si5351::ClockOutput clk)
    {
        return this->isClockOutputEnabled(clk);
    }
    inline void enableClock(Si5351::ClockOutput clk, bool enable = true)
    {
        this->enableClockOutput(clk, enable);
    }
    inline void disableClock(Si5351::ClockOutput clk)
    {
        this->enableClockOutput(clk, false);
    }

private:
    Si5351::IRQConfig irq_config;
    Si5351::IICConfig iic;
    Si5351::GPIOConfig oe_gpio;
    std::recursive_mutex mutex;

    uint32_t clkin_freq;
    uint32_t xtal_freq;

    Si5351::MultiSynthDivider pll_fb_div[2];
    Si5351::MultiSynthDivider ms_div[8];
};
