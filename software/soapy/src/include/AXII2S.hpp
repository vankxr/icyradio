#pragma once

#include <cstdint>
#include <mutex>
#include <stdexcept>
#include "AXIPeripheral.hpp"
#include "Utils.hpp"

#define AXI_I2S_REG_VERSION     0x00
#define AXI_I2S_REG_CTRL        0x04
#define AXI_I2S_REG_IRQ_ENABLE  0x08
#define AXI_I2S_REG_IRQ_PENDING 0x0C
#define AXI_I2S_REG_MCLK_DIV    0x10
#define AXI_I2S_REG_BCLK_DIV    0x14
#define AXI_I2S_REG_LRCLK_DIV   0x18

#define AXI_I2S_REG_CTRL_I2S_CLK_DIV_EN         BIT(0)
#define AXI_I2S_REG_CTRL_I2S_EN                 BIT(1)
#define AXI_I2S_REG_CTRL_I2S_PAUSE              BIT(2)
#define AXI_I2S_REG_CTRL_I2S_PAUSED             BIT(3)
#define AXI_I2S_REG_CTRL_I2S_LB_EN              BIT(4)
#define AXI_I2S_REG_CTRL_I2S_CHAN_EN(n)         BIT((n) + 8)
#define AXI_I2S_REG_CTRL_I2S_CHAN_MAX(n)        (((n) & 0x07) << 16)
#define AXI_I2S_REG_CTRL_I2S_CHAN_BIT_SZ_8BIT   0x00000000
#define AXI_I2S_REG_CTRL_I2S_CHAN_BIT_SZ_16BIT  BIT(20)
#define AXI_I2S_REG_CTRL_I2S_CHAN_BIT_SZ_24BIT  BIT(21)
#define AXI_I2S_REG_CTRL_I2S_CHAN_BIT_SZ_32BIT  (BIT(20) | BIT(21))
#define AXI_I2S_REG_CTRL_I2S_SRC_RESETN         BIT(31)

#define AXI_I2S_REG_IRQ_x_IRQ_ACLK_I2S_SYNC_DONE    BIT(7)
#define AXI_I2S_REG_IRQ_x_IRQ_I2S_ACLK_SYNC_DONE    BIT(8)

class AXII2S: public AXIPeripheral
{
public:
    enum ChannelBitSize
    {
        BIT_SZ_8 = 0,
        BIT_SZ_16 = 1,
        BIT_SZ_24 = 2,
        BIT_SZ_32 = 3,
    };

    AXII2S(void *base_address);

    uint32_t getIPVersion();

    void setMCLKClockDivider(uint64_t mclk_div);
    uint64_t getMCLKClockDivider();
    void setMCLKClockFrequency(uint64_t input_freq, uint64_t mclk_freq);
    uint64_t getMCLKClockFrequency(uint64_t input_freq);
    void setBCLKClockDivider(uint64_t bclk_div);
    uint64_t getBCLKClockDivider();
    void setBCLKClockFrequency(uint64_t input_freq, uint64_t bclk_freq);
    uint64_t getBCLKClockFrequency(uint64_t input_freq);
    void setLRCLKClockDivider(uint64_t lrclk_div);
    uint64_t getLRCLKClockDivider();
    void setLRCLKClockFrequency(uint64_t input_freq, uint64_t lrclk_freq);
    uint64_t getLRCLKClockFrequency(uint64_t input_freq);
    void setClockDividers(uint64_t mclk_div, uint64_t bclk_div, uint64_t lrclk_div);
    void setClockFrequencies(uint64_t input_freq, uint64_t mclk_freq, uint64_t bclk_freq, uint64_t lrclk_freq);
    uint64_t setClockFrequencies(uint64_t input_freq, uint64_t mclk_freq, uint64_t samp_rate);

    void enableClocks(bool enable = true);
    inline void disableClocks()
    {
        this->enableClocks(false);
    }
    bool clocksEnabled();
    void enable(bool enable = true);
    inline void disable()
    {
        this->enable(false);
    }
    bool enabled();
    void pause(bool pause = true);
    inline void unpause()
    {
        this->pause(false);
    }
    bool paused();
    void enableLoopback(bool enable = true);
    inline void disableLoopback()
    {
        this->enableLoopback(false);
    }
    bool loopbackEnabled();

    void setNumChannels(uint8_t num_chans);
    uint8_t getNumChannels();

    void enableChannel(uint8_t chan, bool enable = true);
    inline void disableChannel(uint8_t chan)
    {
        this->enableChannel(chan, false);
    }
    bool channelEnabled(uint8_t chan);

    void setSampleSize(enum AXII2S::ChannelBitSize bit_sz);
    enum AXII2S::ChannelBitSize getSampleSize();

private:
    std::recursive_mutex mutex;

    uint64_t max_mclk_div;
    uint64_t max_bclk_div;
    uint64_t max_lrclk_div;
};