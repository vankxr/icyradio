#include "AXII2S.hpp"

AXII2S::AXII2S(void *base_address, std::function<bool()> access_allowed_fn): AXIPeripheral(base_address)
{
    this->init(access_allowed_fn);
}

void AXII2S::init(std::function<bool()> access_allowed_fn)
{
    if(this->access_allowed_fn != nullptr)
        throw std::runtime_error("AXI RF Timestamping: Already initialized");

    if(access_allowed_fn == nullptr)
        return;

    this->access_allowed_fn = access_allowed_fn;

    uint32_t version = this->getIPVersion();

    if(AXI_CORE_VERSION_MAJOR(version) < 1)
        throw std::runtime_error("AXI I2S Core v" + std::to_string(AXI_CORE_VERSION_MAJOR(version)) + "." + std::to_string(AXI_CORE_VERSION_MINOR(version)) + "." + std::to_string(AXI_CORE_VERSION_PATCH(version)) + " is not supported");

}

uint32_t AXII2S::getIPVersion()
{
    return this->readReg(AXI_I2S_REG_VERSION);
}

void AXII2S::configClockDividers(uint32_t mclk_div, uint32_t bclk_div, uint32_t lrclk_div)
{
    if(this->clocksEnabled())
        throw std::runtime_error("AXI I2S: Cannot configure clock dividers while enabled");

    if(!mclk_div || mclk_div > 256)
        throw std::invalid_argument("AXI I2S: MCLK divider must be between 1 and 256");

    if(!bclk_div || bclk_div > 256)
        throw std::invalid_argument("AXI I2S: BCLK divider must be between 1 and 256");

    if(!lrclk_div || lrclk_div > 65536)
        throw std::invalid_argument("AXI I2S: LRCLK divider must be between 1 and 65536");

    this->writeReg(AXI_I2S_REG_MCLK_DIV, mclk_div - 1);
    this->writeReg(AXI_I2S_REG_BCLK_DIV, bclk_div - 1);
    this->writeReg(AXI_I2S_REG_LRCLK_DIV, lrclk_div - 1);
}
void AXII2S::configClocks(uint32_t input_freq, uint32_t mclk_freq, uint32_t bclk_freq, uint32_t lrclk_freq)
{
    uint32_t mclk_div = input_freq / mclk_freq;
    uint32_t bclk_div = mclk_freq / bclk_freq;
    uint32_t lrclk_div = bclk_freq / lrclk_freq;

    this->configClockDividers(mclk_div, bclk_div, lrclk_div);
}
uint32_t AXII2S::autoConfigClocks(uint32_t input_freq, uint32_t mclk_freq, uint32_t samp_rate)
{
    // Determine BCLK based on the sample rate, number of channels and channel bit size
    uint32_t bclk_freq = samp_rate;

    switch(this->getSampleSize())
    {
        case AXII2S::ChannelBitSize::BIT_SZ_16:
            bclk_freq *= 16;
        break;
        case AXII2S::ChannelBitSize::BIT_SZ_32:
            bclk_freq *= 32;
        break;
    }

    bclk_freq *= this->getNumChannels();

    this->configClocks(input_freq, mclk_freq, bclk_freq, samp_rate);

    return bclk_freq;
}

void AXII2S::enableClocks(bool enable)
{
    std::lock_guard<std::mutex> lock(this->mutex);

    uint32_t ctrl = this->readReg(AXI_I2S_REG_CTRL);

    if(enable && (ctrl & AXI_I2S_REG_CTRL_I2S_CLK_DIV_EN)) // Already enabled
        throw std::runtime_error("AXI I2S: Clocks already enabled");

    if(!enable && !(ctrl & AXI_I2S_REG_CTRL_I2S_CLK_DIV_EN)) // Already disabled
        throw std::runtime_error("AXI I2S: Clocks already disabled");

    if(!enable && (ctrl & AXI_I2S_REG_CTRL_I2S_EN)) // I2S SERDES enabled, can't disable clock
        throw std::runtime_error("AXI I2S: Cannot disable clocks while I2S SERDES is enabled");

    if(enable)
        ctrl |= AXI_I2S_REG_CTRL_I2S_CLK_DIV_EN;
    else
        ctrl &= ~AXI_I2S_REG_CTRL_I2S_CLK_DIV_EN;

    this->writeReg(AXI_I2S_REG_CTRL, ctrl);
}
bool AXII2S::clocksEnabled()
{
    std::lock_guard<std::mutex> lock(this->mutex);

    return !!(this->readReg(AXI_I2S_REG_CTRL) & AXI_I2S_REG_CTRL_I2S_CLK_DIV_EN);
}
void AXII2S::enable(bool enable)
{
    std::lock_guard<std::mutex> lock(this->mutex);

    uint32_t ctrl = this->readReg(AXI_I2S_REG_CTRL);

    if(enable && (ctrl & AXI_I2S_REG_CTRL_I2S_EN)) // Already enabled
        throw std::runtime_error("AXI I2S: Already enabled");

    if(!enable && !(ctrl & AXI_I2S_REG_CTRL_I2S_EN)) // Already disabled
        throw std::runtime_error("AXI I2S: Already disabled");

    if(enable && !(ctrl & AXI_I2S_REG_CTRL_I2S_CLK_DIV_EN)) // Clock disabled, can't enable I2S SERDES
        throw std::runtime_error("AXI I2S: Cannot enable I2S SERDES while clocks are disabled");

    if(enable)
        ctrl |= AXI_I2S_REG_CTRL_I2S_EN;
    else
        ctrl &= ~AXI_I2S_REG_CTRL_I2S_EN;

    this->writeReg(AXI_I2S_REG_CTRL, ctrl);
}
bool AXII2S::enabled()
{
    std::lock_guard<std::mutex> lock(this->mutex);

    return !!(this->readReg(AXI_I2S_REG_CTRL) & AXI_I2S_REG_CTRL_I2S_EN);
}
void AXII2S::pause(bool pause)
{
    std::lock_guard<std::mutex> lock(this->mutex);

    uint32_t ctrl = this->readReg(AXI_I2S_REG_CTRL);

    if(pause && (ctrl & AXI_I2S_REG_CTRL_I2S_PAUSE)) // Already paused
        throw std::runtime_error("AXI I2S: Already paused");

    if(!pause && !(ctrl & AXI_I2S_REG_CTRL_I2S_PAUSE)) // Already unpaused
        throw std::runtime_error("AXI I2S: Already unpaused");

    if(pause)
        ctrl |= AXI_I2S_REG_CTRL_I2S_PAUSE;
    else
        ctrl &= ~AXI_I2S_REG_CTRL_I2S_PAUSE;

    this->writeReg(AXI_I2S_REG_CTRL, ctrl);
}
bool AXII2S::paused()
{
    std::lock_guard<std::mutex> lock(this->mutex);

    uint32_t ctrl = this->readReg(AXI_I2S_REG_CTRL);

    if(ctrl & AXI_I2S_REG_CTRL_I2S_PAUSE) // Pause requested
    {
        if(ctrl & AXI_I2S_REG_CTRL_I2S_PAUSED) // Already paused
            return true;

        return false;
    }

    return false;
}
void AXII2S::enableLoopback(bool enable)
{
    std::lock_guard<std::mutex> lock(this->mutex);

    uint32_t ctrl = this->readReg(AXI_I2S_REG_CTRL);

    if(enable && (ctrl & AXI_I2S_REG_CTRL_I2S_LB_EN)) // Already enabled
        throw std::runtime_error("AXI I2S: Loopback already enabled");

    if(!enable && !(ctrl & AXI_I2S_REG_CTRL_I2S_LB_EN)) // Already disabled
        throw std::runtime_error("AXI I2S: Loopback already disabled");

    if(enable)
        ctrl |= AXI_I2S_REG_CTRL_I2S_LB_EN;
    else
        ctrl &= ~AXI_I2S_REG_CTRL_I2S_LB_EN;

    this->writeReg(AXI_I2S_REG_CTRL, ctrl);
}
bool AXII2S::loopbackEnabled()
{
    std::lock_guard<std::mutex> lock(this->mutex);

    return !!(this->readReg(AXI_I2S_REG_CTRL) & AXI_I2S_REG_CTRL_I2S_LB_EN);
}

void AXII2S::setNumChannels(uint8_t num_chans)
{
    switch(num_chans)
    {
        case 2:
        case 4:
        case 8:
            break;
        default:
            throw std::invalid_argument("AXI I2S: Number of channels must be 2, 4 or 8");
    }

    std::lock_guard<std::mutex> lock(this->mutex);

    uint32_t ctrl = this->readReg(AXI_I2S_REG_CTRL);

    ctrl &= ~AXI_I2S_REG_CTRL_I2S_CHAN_MAX(~0UL);
    ctrl |= AXI_I2S_REG_CTRL_I2S_CHAN_MAX(num_chans - 1);

    this->writeReg(AXI_I2S_REG_CTRL, ctrl);
}
uint8_t AXII2S::getNumChannels()
{
    std::lock_guard<std::mutex> lock(this->mutex);

    return ((this->readReg(AXI_I2S_REG_CTRL) & AXI_I2S_REG_CTRL_I2S_CHAN_MAX(~0UL)) >> 16) + 1;
}

void AXII2S::enableChannel(uint8_t chan, bool enable)
{
    std::lock_guard<std::mutex> lock(this->mutex);

    uint32_t ctrl = this->readReg(AXI_I2S_REG_CTRL);

    if(chan > ((ctrl & AXI_I2S_REG_CTRL_I2S_CHAN_MAX(~0UL)) >> 16))
        throw std::invalid_argument("AXI I2S: Channel number must be between 0 and " + std::to_string(((ctrl & AXI_I2S_REG_CTRL_I2S_CHAN_MAX(~0UL)) >> 16)));

    if(enable && (ctrl & AXI_I2S_REG_CTRL_I2S_CHAN_EN(chan))) // Already enabled
        throw std::runtime_error("AXI I2S: Channel already enabled");

    if(!enable && !(ctrl & AXI_I2S_REG_CTRL_I2S_CHAN_EN(chan))) // Already disabled
        throw std::runtime_error("AXI I2S: Channel already disabled");

    if(enable)
        ctrl |= AXI_I2S_REG_CTRL_I2S_CHAN_EN(chan);
    else
        ctrl &= ~AXI_I2S_REG_CTRL_I2S_CHAN_EN(chan);

    this->writeReg(AXI_I2S_REG_CTRL, ctrl);
}
bool AXII2S::channelEnabled(uint8_t chan)
{
    std::lock_guard<std::mutex> lock(this->mutex);

    uint32_t ctrl = this->readReg(AXI_I2S_REG_CTRL);

    if(chan > ((ctrl & AXI_I2S_REG_CTRL_I2S_CHAN_MAX(~0UL)) >> 16))
        throw std::invalid_argument("AXI I2S: Channel number must be between 0 and " + std::to_string(((ctrl & AXI_I2S_REG_CTRL_I2S_CHAN_MAX(~0UL)) >> 16)));

    return !!(ctrl & AXI_I2S_REG_CTRL_I2S_CHAN_EN(chan));
}

void AXII2S::setSampleSize(enum AXII2S::ChannelBitSize bit_sz)
{
    std::lock_guard<std::mutex> lock(this->mutex);

    uint32_t ctrl = this->readReg(AXI_I2S_REG_CTRL);

    if(bit_sz == AXII2S::ChannelBitSize::BIT_SZ_32)
        ctrl |= AXI_I2S_REG_CTRL_I2S_CHAN_BIT_SZ;
    else
        ctrl &= ~AXI_I2S_REG_CTRL_I2S_CHAN_BIT_SZ;

    this->writeReg(AXI_I2S_REG_CTRL, ctrl);
}
enum AXII2S::ChannelBitSize AXII2S::getSampleSize()
{
    std::lock_guard<std::mutex> lock(this->mutex);

    return (this->readReg(AXI_I2S_REG_CTRL) & AXI_I2S_REG_CTRL_I2S_CHAN_BIT_SZ) ? AXII2S::ChannelBitSize::BIT_SZ_32 : AXII2S::ChannelBitSize::BIT_SZ_16;
}

uint32_t AXII2S::readReg(uint32_t offset)
{
    if(this->access_allowed_fn == nullptr || !this->access_allowed_fn())
        throw std::runtime_error("AXI I2S: Register access not allowed");

    return AXIPeripheral::readReg(offset);
}
uint64_t AXII2S::readReg64(uint32_t offset)
{
    if(this->access_allowed_fn == nullptr || !this->access_allowed_fn())
        throw std::runtime_error("AXI I2S: Register access not allowed");

    return AXIPeripheral::readReg64(offset);
}
void AXII2S::writeReg(uint32_t offset, uint32_t value)
{
    if(this->access_allowed_fn == nullptr || !this->access_allowed_fn())
        throw std::runtime_error("AXI I2S: Register access not allowed");

    AXIPeripheral::writeReg(offset, value);
}
void AXII2S::writeReg64(uint32_t offset, uint64_t value)
{
    if(this->access_allowed_fn == nullptr || !this->access_allowed_fn())
        throw std::runtime_error("AXI I2S: Register access not allowed");

    AXIPeripheral::writeReg64(offset, value);
}