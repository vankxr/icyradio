#pragma once

#include <cstdint>
#include <unistd.h>
#include <mutex>
#include <functional>
#include "AXIPeripheral.hpp"
#include "Utils.hpp"

#define AXI_I2S_REG_VERSION     0x00
#define AXI_I2S_REG_CTRL        0x04
#define AXI_I2S_REG_MCLK_DIV    0x08
#define AXI_I2S_REG_BCLK_DIV    0x0C
#define AXI_I2S_REG_LRCLK_DIV   0x10

#define AXI_I2S_REG_CTRL_I2S_CLK_DIV_EN     BIT(0)
#define AXI_I2S_REG_CTRL_I2S_EN             BIT(1)
#define AXI_I2S_REG_CTRL_I2S_PAUSE          BIT(2)
#define AXI_I2S_REG_CTRL_I2S_PAUSED         BIT(3)
#define AXI_I2S_REG_CTRL_I2S_LB_EN          BIT(4)
#define AXI_I2S_REG_CTRL_I2S_CHAN_EN(n)     BIT((n) + 8)
#define AXI_I2S_REG_CTRL_I2S_CHAN_MAX(n)    (((n) & 0x07) << 16)
#define AXI_I2S_REG_CTRL_I2S_CHAN_BIT_SZ    BIT(20)

class AXII2S: public AXIPeripheral
{
public:
    enum ChannelBitSize
    {
        BIT_SZ_16 = 0,
        BIT_SZ_24 = 1, // 24-bit samples are packed into 32-bit words, padded with 8 zeros
        BIT_SZ_32 = 1,
    };

    AXII2S(void *base_address, std::function<bool()> access_allowed_fn = nullptr);

    void init(std::function<bool()> access_allowed_fn);

    uint32_t getIPVersion();

    void configClockDividers(uint64_t mclk_div, uint64_t bclk_div, uint64_t lrclk_div);
    void configClocks(uint64_t input_freq, uint64_t mclk_freq, uint64_t bclk_freq, uint64_t lrclk_freq);
    uint64_t configClocks(uint64_t input_freq, uint64_t mclk_freq, uint64_t samp_rate);

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

protected:
    // Overload these functions to implement custom access control
    uint32_t readReg(uint32_t offset);
    uint64_t readReg64(uint32_t offset);
    void writeReg(uint32_t offset, uint32_t value);
    void writeReg64(uint32_t offset, uint64_t value);

private:
    std::mutex mutex;
    std::function<bool()> access_allowed_fn;

    uint64_t max_mclk_div;
    uint64_t max_bclk_div;
    uint64_t max_lrclk_div;
};