#include "AXIAD9361.hpp"

// ADC
AXIAD9361::ADC::ADC(void *base_address, AXIAD9361 *parent): AXIPeripheral(base_address)
{
    this->parent = parent;

    // TODO: Version check
}
AXIAD9361::ADC::~ADC()
{
    this->deinit();
}

void AXIAD9361::ADC::init()
{
    this->writeReg(AXI_ADC_REG_RSTN, 0);
    this->writeReg(AXI_ADC_REG_RSTN, AXI_ADC_REG_RSTN_MMCM_RSTN | AXI_ADC_REG_RSTN_RSTN);

    for(uint8_t i = 0; i < AXIAD9361::ADC::Channel::CH_MAX; i++)
    {
        this->writeReg(AXI_ADC_CHAN_REG_CHAN_CNTRL_1(i), AXI_ADC_CHAN_REG_CHAN_CNTRL_1_DCFILT_OFFSET(0)); // DC Offset = 0
        this->writeReg(AXI_ADC_CHAN_REG_CHAN_CNTRL_2(i), (i & 1) ? 0x00004000 : 0x40000000); // I/Q Gain = 1
        this->writeReg(AXI_ADC_CHAN_REG_CHAN_CNTRL(i), AXI_ADC_CHAN_REG_CHAN_CNTRL_IQCOR_ENB | AXI_ADC_CHAN_REG_CHAN_CNTRL_FORMAT_SIGNEXT | AXI_ADC_CHAN_REG_CHAN_CNTRL_FORMAT_ENABLE);
    }

    this->updateActiveChannels();

    usleep(100000);

    uint32_t status = this->readReg(AXI_ADC_REG_STATUS);

    if(!status)
        throw std::runtime_error("AXI AD9361: Failed to initialize ADC: Status = " + std::to_string(status));
}
void AXIAD9361::ADC::deinit()
{
    this->writeReg(AXI_ADC_REG_RSTN, 0);
}

uint32_t AXIAD9361::ADC::getIPVersion()
{
    return this->readReg(AXI_ADC_REG_VERSION);
}

uint64_t AXIAD9361::ADC::getInterfaceClockFrequency(uint64_t input_freq)
{
    return ((uint64_t)this->readReg(AXI_ADC_REG_CLK_FREQ) * this->readReg(AXI_ADC_REG_CLK_RATIO) * input_freq) >> 16;
}
uint64_t AXIAD9361::ADC::getSamplingFrequency(uint64_t input_freq)
{
    return this->getInterfaceClockFrequency(input_freq) / this->parent->getSamplingFrequencyRatio();
}

void AXIAD9361::ADC::updateActiveChannels()
{
    uint8_t n = this->parent->getChannelCount();

    // Update R! mode
    uint32_t reg = this->readReg(AXI_ADC_REG_CNTRL);

    if(n > 2)
        reg &= ~AXI_ADC_REG_CNTRL_R1_MODE;
    else
        reg |= AXI_ADC_REG_CNTRL_R1_MODE;

    this->writeReg(AXI_ADC_REG_CNTRL, reg);

    // Enable/disable channels
    for(uint8_t i = 0; i < AXIAD9361::ADC::Channel::CH_MAX; i++)
    {
        if(i < n)
            this->enableChannel(static_cast<AXIAD9361::ADC::Channel>(i));
        else
            this->disableChannel(static_cast<AXIAD9361::ADC::Channel>(i));
    }
}

void AXIAD9361::ADC::enableChannel(AXIAD9361::ADC::Channel ch, bool enable)
{
    if(ch >= AXIAD9361::ADC::Channel::CH_MAX)
        throw std::invalid_argument("AXI AD9361: Invalid channel number: " + std::to_string(ch) + " (Max = " + std::to_string(AXIAD9361::ADC::Channel::CH_MAX) + ")");

    uint32_t reg = this->readReg(AXI_ADC_CHAN_REG_CHAN_CNTRL(ch));

    if(enable)
        reg |= AXI_ADC_CHAN_REG_CHAN_CNTRL_ENABLE;
    else
        reg &= ~AXI_ADC_CHAN_REG_CHAN_CNTRL_ENABLE;

    this->writeReg(AXI_ADC_CHAN_REG_CHAN_CNTRL(ch), reg);
}

void AXIAD9361::ADC::setDataSource(AXIAD9361::ADC::Channel ch, AXIAD9361::ADC::DataSource src)
{
    if(ch >= AXIAD9361::ADC::Channel::CH_MAX)
        throw std::invalid_argument("AXI AD9361: Invalid channel number: " + std::to_string(ch) + " (Max = " + std::to_string(AXIAD9361::ADC::Channel::CH_MAX) + ")");

    uint32_t reg = this->readReg(AXI_ADC_CHAN_REG_CHAN_CNTRL_3(ch));

    reg &= ~AXI_ADC_CHAN_REG_CHAN_CNTRL_3_ADC_DATA_SEL(~0);
    reg |= AXI_ADC_CHAN_REG_CHAN_CNTRL_3_ADC_DATA_SEL(src);

    this->writeReg(AXI_ADC_CHAN_REG_CHAN_CNTRL_3(ch), reg);
}
AXIAD9361::ADC::DataSource AXIAD9361::ADC::getDataSource(AXIAD9361::ADC::Channel ch)
{
    if(ch >= AXIAD9361::ADC::Channel::CH_MAX)
        throw std::invalid_argument("AXI AD9361: Invalid channel number: " + std::to_string(ch) + " (Max = " + std::to_string(AXIAD9361::ADC::Channel::CH_MAX) + ")");

    uint32_t reg = this->readReg(AXI_ADC_CHAN_REG_CHAN_CNTRL_3(ch));

    reg &= AXI_ADC_CHAN_REG_CHAN_CNTRL_3_ADC_DATA_SEL(~0);
    reg >>= Utils::FindFirstSetBit(AXI_ADC_CHAN_REG_CHAN_CNTRL_3_ADC_DATA_SEL(~0));

    return (AXIAD9361::ADC::DataSource)reg;
}

void AXIAD9361::ADC::setPNSource(AXIAD9361::ADC::Channel ch, AXIAD9361::ADC::PNSource src)
{
    if(ch >= AXIAD9361::ADC::Channel::CH_MAX)
        throw std::invalid_argument("AXI AD9361: Invalid channel number: " + std::to_string(ch) + " (Max = " + std::to_string(AXIAD9361::ADC::Channel::CH_MAX) + ")");

    uint32_t reg = this->readReg(AXI_ADC_CHAN_REG_CHAN_CNTRL_3(ch));

    reg &= ~AXI_ADC_CHAN_REG_CHAN_CNTRL_3_ADC_PN_SEL(~0);
    reg |= AXI_ADC_CHAN_REG_CHAN_CNTRL_3_ADC_PN_SEL(src);

    this->writeReg(AXI_ADC_CHAN_REG_CHAN_CNTRL_3(ch), reg);
}
AXIAD9361::ADC::PNSource AXIAD9361::ADC::getPNSource(AXIAD9361::ADC::Channel ch)
{
    if(ch >= AXIAD9361::ADC::Channel::CH_MAX)
        throw std::invalid_argument("AXI AD9361: Invalid channel number: " + std::to_string(ch) + " (Max = " + std::to_string(AXIAD9361::ADC::Channel::CH_MAX) + ")");

    uint32_t reg = this->readReg(AXI_ADC_CHAN_REG_CHAN_CNTRL_3(ch));

    reg &= AXI_ADC_CHAN_REG_CHAN_CNTRL_3_ADC_PN_SEL(~0);
    reg >>= Utils::FindFirstSetBit(AXI_ADC_CHAN_REG_CHAN_CNTRL_3_ADC_PN_SEL(~0));

    return (AXIAD9361::ADC::PNSource)reg;
}

void AXIAD9361::ADC::enableCalibration(AXIAD9361::ADC::Channel ch, bool enable)
{
    if(ch >= AXIAD9361::ADC::Channel::CH_MAX)
        throw std::invalid_argument("AXI AD9361: Invalid channel number: " + std::to_string(ch) + " (Max = " + std::to_string(AXIAD9361::ADC::Channel::CH_MAX) + ")");

    uint32_t reg = this->readReg(AXI_ADC_CHAN_REG_CHAN_CNTRL(ch));

    if(enable)
        reg |= AXI_ADC_CHAN_REG_CHAN_CNTRL_IQCOR_ENB;
    else
        reg &= ~AXI_ADC_CHAN_REG_CHAN_CNTRL_IQCOR_ENB;

    this->writeReg(AXI_ADC_CHAN_REG_CHAN_CNTRL(ch), reg);
}
bool AXIAD9361::ADC::isCalibrationEnabled(AXIAD9361::ADC::Channel ch)
{
    if(ch >= AXIAD9361::ADC::Channel::CH_MAX)
        throw std::invalid_argument("AXI AD9361: Invalid channel number: " + std::to_string(ch) + " (Max = " + std::to_string(AXIAD9361::ADC::Channel::CH_MAX) + ")");

    return !!(this->readReg(AXI_ADC_CHAN_REG_CHAN_CNTRL(ch)) & AXI_ADC_CHAN_REG_CHAN_CNTRL_IQCOR_ENB);
}
void AXIAD9361::ADC::setCalibrationPhaseScale(AXIAD9361::ADC::Channel ch, double val, bool is_phase)
{
    if(ch >= AXIAD9361::ADC::Channel::CH_MAX)
        throw std::invalid_argument("AXI AD9361: Invalid channel number: " + std::to_string(ch) + " (Max = " + std::to_string(AXIAD9361::ADC::Channel::CH_MAX) + ")");

    uint32_t reg = this->readReg(AXI_ADC_CHAN_REG_CHAN_CNTRL_2(ch));

    if(!((ch + (is_phase ? 1 : 0)) % 2))
    {
        reg &= ~AXI_ADC_CHAN_REG_CHAN_CNTRL_2_IQCOR_COEFF_1(~0);
        reg |= AXI_ADC_CHAN_REG_CHAN_CNTRL_2_IQCOR_COEFF_1(Utils::ToSIF1_1_14(val));
    }
    else
    {
        reg &= ~AXI_ADC_CHAN_REG_CHAN_CNTRL_2_IQCOR_COEFF_2(~0);
        reg |= AXI_ADC_CHAN_REG_CHAN_CNTRL_2_IQCOR_COEFF_2(Utils::ToSIF1_1_14(val));
    }

    this->writeReg(AXI_ADC_CHAN_REG_CHAN_CNTRL_2(ch), reg);
}
double AXIAD9361::ADC::getCalibrationPhaseScale(AXIAD9361::ADC::Channel ch, bool is_phase)
{
    if(ch >= AXIAD9361::ADC::Channel::CH_MAX)
        throw std::invalid_argument("AXI AD9361: Invalid channel number: " + std::to_string(ch) + " (Max = " + std::to_string(AXIAD9361::ADC::Channel::CH_MAX) + ")");

    uint32_t reg = this->readReg(AXI_ADC_CHAN_REG_CHAN_CNTRL_2(ch));

    if(!((ch + (is_phase ? 1 : 0)) % 2))
    {
        reg &= AXI_ADC_CHAN_REG_CHAN_CNTRL_2_IQCOR_COEFF_1(~0);
        reg >>= Utils::FindFirstSetBit(AXI_ADC_CHAN_REG_CHAN_CNTRL_2_IQCOR_COEFF_1(~0));
    }
    else
    {
        reg &= AXI_ADC_CHAN_REG_CHAN_CNTRL_2_IQCOR_COEFF_2(~0);
        reg >>= Utils::FindFirstSetBit(AXI_ADC_CHAN_REG_CHAN_CNTRL_2_IQCOR_COEFF_2(~0));
    }

    return Utils::FromSIF1_1_14(reg);
}

void AXIAD9361::ADC::enableDCFilter(AXIAD9361::ADC::Channel ch, bool enable)
{
    if(ch >= AXIAD9361::ADC::Channel::CH_MAX)
        throw std::invalid_argument("AXI AD9361: Invalid channel number: " + std::to_string(ch) + " (Max = " + std::to_string(AXIAD9361::ADC::Channel::CH_MAX) + ")");

    uint32_t reg = this->readReg(AXI_ADC_CHAN_REG_CHAN_CNTRL(ch));

    if(enable)
        reg |= AXI_ADC_CHAN_REG_CHAN_CNTRL_DCFILT_ENB;
    else
        reg &= ~AXI_ADC_CHAN_REG_CHAN_CNTRL_DCFILT_ENB;

    this->writeReg(AXI_ADC_CHAN_REG_CHAN_CNTRL(ch), reg);
}
bool AXIAD9361::ADC::isDCFilterEnabled(AXIAD9361::ADC::Channel ch)
{
    if(ch >= AXIAD9361::ADC::Channel::CH_MAX)
        throw std::invalid_argument("AXI AD9361: Invalid channel number: " + std::to_string(ch) + " (Max = " + std::to_string(AXIAD9361::ADC::Channel::CH_MAX) + ")");

    return !!(this->readReg(AXI_ADC_CHAN_REG_CHAN_CNTRL(ch)) & AXI_ADC_CHAN_REG_CHAN_CNTRL_DCFILT_ENB);
}
void AXIAD9361::ADC::setDCFilterCoefficient(AXIAD9361::ADC::Channel ch, double val)
{
    if(ch >= AXIAD9361::ADC::Channel::CH_MAX)
        throw std::invalid_argument("AXI AD9361: Invalid channel number: " + std::to_string(ch) + " (Max = " + std::to_string(AXIAD9361::ADC::Channel::CH_MAX) + ")");

    uint32_t reg = this->readReg(AXI_ADC_CHAN_REG_CHAN_CNTRL_1(ch));

    reg &= ~AXI_ADC_CHAN_REG_CHAN_CNTRL_1_DCFILT_COEFF(~0);
    reg |= AXI_ADC_CHAN_REG_CHAN_CNTRL_1_DCFILT_COEFF(Utils::ToSIF1_1_14(val));

    this->writeReg(AXI_ADC_CHAN_REG_CHAN_CNTRL_1(ch), reg);

}
double AXIAD9361::ADC::getDCFilterCoefficient(AXIAD9361::ADC::Channel ch)
{
    if(ch >= AXIAD9361::ADC::Channel::CH_MAX)
        throw std::invalid_argument("AXI AD9361: Invalid channel number: " + std::to_string(ch) + " (Max = " + std::to_string(AXIAD9361::ADC::Channel::CH_MAX) + ")");

    uint32_t reg = this->readReg(AXI_ADC_CHAN_REG_CHAN_CNTRL_1(ch));

    reg &= AXI_ADC_CHAN_REG_CHAN_CNTRL_1_DCFILT_COEFF(~0);
    reg >>= Utils::FindFirstSetBit(AXI_ADC_CHAN_REG_CHAN_CNTRL_1_DCFILT_COEFF(~0));

    return Utils::FromSIF1_1_14(reg);
}

void AXIAD9361::ADC::setDCOffset(AXIAD9361::ADC::Channel ch, double offset)
{
    if(ch >= AXIAD9361::ADC::Channel::CH_MAX)
        throw std::invalid_argument("AXI AD9361: Invalid channel number: " + std::to_string(ch) + " (Max = " + std::to_string(AXIAD9361::ADC::Channel::CH_MAX) + ")");

    int32_t _offset = offset * 32768;

    if(_offset > 32767)
        _offset = 32767;
    else if(_offset < -32768)
        _offset = -32768;

    uint32_t reg = this->readReg(AXI_ADC_CHAN_REG_CHAN_CNTRL_1(ch));

    reg &= ~AXI_ADC_CHAN_REG_CHAN_CNTRL_1_DCFILT_OFFSET(~0);
    reg |= AXI_ADC_CHAN_REG_CHAN_CNTRL_1_DCFILT_OFFSET((int16_t)_offset);

    this->writeReg(AXI_ADC_CHAN_REG_CHAN_CNTRL_1(ch), reg);
}
double AXIAD9361::ADC::getDCOffset(AXIAD9361::ADC::Channel ch)
{
    if(ch >= AXIAD9361::ADC::Channel::CH_MAX)
        throw std::invalid_argument("AXI AD9361: Invalid channel number: " + std::to_string(ch) + " (Max = " + std::to_string(AXIAD9361::ADC::Channel::CH_MAX) + ")");

    uint32_t reg = this->readReg(AXI_ADC_CHAN_REG_CHAN_CNTRL_1(ch));

    reg &= AXI_ADC_CHAN_REG_CHAN_CNTRL_1_DCFILT_OFFSET(~0);
    reg >>= Utils::FindFirstSetBit(AXI_ADC_CHAN_REG_CHAN_CNTRL_1_DCFILT_OFFSET(~0));

    return (int16_t)reg / 32768.0;
}

bool AXIAD9361::ADC::checkPN(bool check_channels, uint32_t delay)
{
    // Clear flags
    for(uint8_t i = 0; i < this->parent->getChannelCount(); i++)
        this->writeReg(AXI_ADC_CHAN_REG_CHAN_STATUS(i), AXI_ADC_CHAN_REG_CHAN_STATUS_PN_ERR | AXI_ADC_CHAN_REG_CHAN_STATUS_PN_OOS);

    usleep(delay * 1000);

    if(!check_channels && !(this->readReg(AXI_ADC_REG_STATUS) & AXI_ADC_REG_STATUS_STATUS))
        return false; // Failed

    for(uint8_t i = 0; i < this->parent->getChannelCount(); i++)
    {
        if(this->readReg(AXI_ADC_CHAN_REG_CHAN_STATUS(i)))
            return false; // Failed
    }

    return true; // Passed
}

void AXIAD9361::ADC::setLaneDelay(uint8_t lane, uint8_t delay) // Lane 0-6 for AD9361, Delay 0-31
{
    if(lane > 6)
        throw std::invalid_argument("AXI AD9361: Invalid lane number: " + std::to_string(lane));

    if(delay > 31)
        throw std::invalid_argument("AXI AD9361: Invalid delay value: " + std::to_string(delay));

    this->writeReg(AXI_ADC_REG_DELAY(lane), delay);
}
uint32_t AXIAD9361::ADC::getLaneDelay(uint8_t lane) // Lane 0-6 for AD9361
{
    if(lane > 6)
        throw std::invalid_argument("AXI AD9361: Invalid lane number: " + std::to_string(lane));

    return this->readReg(AXI_ADC_REG_DELAY(lane));
}

// DAC
AXIAD9361::DAC::DAC(void *base_address, AXIAD9361 *parent): AXIPeripheral(base_address)
{
    this->parent = parent;

    //TODO: Version check
}
AXIAD9361::DAC::~DAC()
{
    this->deinit();
}

void AXIAD9361::DAC::init()
{
    this->writeReg(AXI_DAC_REG_RSTN, 0);
    this->writeReg(AXI_DAC_REG_RSTN, AXI_DAC_REG_RSTN_MMCM_RSTN | AXI_DAC_REG_RSTN_RSTN);

    this->updateActiveChannels();

    usleep(100000);

    uint32_t status = this->readReg(AXI_DAC_REG_STATUS);

    if(!status)
        throw std::runtime_error("AXI AD9361: Failed to initialize DAC: Status = " + std::to_string(status));

    for(uint8_t i = 0; i < AXIAD9361::DAC::Channel::CH_MAX; i++)
    {
        this->writeReg(AXI_DAC_CHAN_REG_CHAN_CNTRL_1(i), 0); // Mute tone 1
        this->writeReg(AXI_DAC_CHAN_REG_CHAN_CNTRL_2(i), 1); // Set tone 1 to min frequency
        this->writeReg(AXI_DAC_CHAN_REG_CHAN_CNTRL_3(i), 0); // Mute tone 2
        this->writeReg(AXI_DAC_CHAN_REG_CHAN_CNTRL_4(i), 1); // Set tone 2 to min frequency
        this->writeReg(AXI_DAC_CHAN_REG_CHAN_CNTRL_7(i), AXI_DAC_CHAN_REG_CHAN_CNTRL_7_DAC_DDS_SEL_ZERO); // Select no data source
        this->writeReg(AXI_DAC_CHAN_REG_CHAN_CNTRL_8(i), (i & 1) ? 0x00004000 : 0x40000000); // I/Q Gain = 1
        this->writeReg(AXI_DAC_CHAN_REG_CHAN_CNTRL_6(i), AXI_DAC_CHAN_REG_CHAN_CNTRL_6_IQCOR_ENB);
    }

    this->sync();
}
void AXIAD9361::DAC::deinit()
{
    this->writeReg(AXI_DAC_REG_RSTN, 0);
}

uint32_t AXIAD9361::DAC::getIPVersion()
{
    return this->readReg(AXI_DAC_REG_VERSION);
}

uint64_t AXIAD9361::DAC::getInterfaceClockFrequency(uint64_t input_freq)
{
    return ((uint64_t)this->readReg(AXI_DAC_REG_CLK_FREQ) * this->readReg(AXI_DAC_REG_CLK_RATIO) * input_freq) >> 16;
}
uint64_t AXIAD9361::DAC::getSamplingFrequency(uint64_t input_freq)
{
    return this->getInterfaceClockFrequency(input_freq) / this->parent->getSamplingFrequencyRatio();
}

void AXIAD9361::DAC::updateActiveChannels()
{
    uint8_t n = this->parent->getChannelCount();

    // Update R! mode
    uint32_t reg = this->readReg(AXI_DAC_REG_CNTRL_2);

    if(n > 2)
        reg &= ~AXI_DAC_REG_CNTRL_2_R1_MODE;
    else
        reg |= AXI_DAC_REG_CNTRL_2_R1_MODE;

    this->writeReg(AXI_DAC_REG_CNTRL_2, reg);

    // Update rate for DDS
    this->writeReg(AXI_DAC_REG_RATECNTRL, this->parent->getSamplingFrequencyRatio() - 1);
}

void AXIAD9361::DAC::sync()
{
    this->writeReg(AXI_DAC_REG_CNTRL_1, 0);
    this->writeReg(AXI_DAC_REG_CNTRL_1, AXI_DAC_REG_CNTRL_1_SYNC);
}

void AXIAD9361::DAC::setDataSource(AXIAD9361::DAC::Channel ch, AXIAD9361::DAC::DataSource src)
{
    if(ch >= AXIAD9361::DAC::Channel::CH_MAX)
        throw std::invalid_argument("AXI AD9361: Invalid channel number: " + std::to_string(ch) + " (Max = " + std::to_string(AXIAD9361::DAC::Channel::CH_MAX) + ")");

    this->writeReg(AXI_DAC_CHAN_REG_CHAN_CNTRL_7(ch), AXI_DAC_CHAN_REG_CHAN_CNTRL_7_DAC_DDS_SEL(src));
}
AXIAD9361::DAC::DataSource AXIAD9361::DAC::getDataSource(AXIAD9361::DAC::Channel ch)
{
    if(ch >= AXIAD9361::DAC::Channel::CH_MAX)
        throw std::invalid_argument("AXI AD9361: Invalid channel number: " + std::to_string(ch) + " (Max = " + std::to_string(AXIAD9361::DAC::Channel::CH_MAX) + ")");

    return (AXIAD9361::DAC::DataSource)(this->readReg(AXI_DAC_CHAN_REG_CHAN_CNTRL_7(ch)) & AXI_DAC_CHAN_REG_CHAN_CNTRL_7_DAC_DDS_SEL(~0));
}

void AXIAD9361::DAC::enableCalibration(AXIAD9361::DAC::Channel ch, bool enable)
{
    if(ch >= AXIAD9361::DAC::Channel::CH_MAX)
        throw std::invalid_argument("AXI AD9361: Invalid channel number: " + std::to_string(ch) + " (Max = " + std::to_string(AXIAD9361::DAC::Channel::CH_MAX) + ")");

    uint32_t reg = this->readReg(AXI_DAC_CHAN_REG_CHAN_CNTRL_6(ch));

    if(enable)
        reg |= AXI_DAC_CHAN_REG_CHAN_CNTRL_6_IQCOR_ENB;
    else
        reg &= ~AXI_DAC_CHAN_REG_CHAN_CNTRL_6_IQCOR_ENB;

    this->writeReg(AXI_DAC_CHAN_REG_CHAN_CNTRL_6(ch), reg);
}
bool AXIAD9361::DAC::isCalibrationEnabled(AXIAD9361::DAC::Channel ch)
{
    if(ch >= AXIAD9361::DAC::Channel::CH_MAX)
        throw std::invalid_argument("AXI AD9361: Invalid channel number: " + std::to_string(ch) + " (Max = " + std::to_string(AXIAD9361::DAC::Channel::CH_MAX) + ")");

    return !!(this->readReg(AXI_DAC_CHAN_REG_CHAN_CNTRL_6(ch)) & AXI_DAC_CHAN_REG_CHAN_CNTRL_6_IQCOR_ENB);
}
void AXIAD9361::DAC::setCalibrationPhaseScale(AXIAD9361::DAC::Channel ch, double val, bool is_phase)
{
    if(ch >= AXIAD9361::DAC::Channel::CH_MAX)
        throw std::invalid_argument("AXI AD9361: Invalid channel number: " + std::to_string(ch) + " (Max = " + std::to_string(AXIAD9361::DAC::Channel::CH_MAX) + ")");

    uint32_t reg = this->readReg(AXI_DAC_CHAN_REG_CHAN_CNTRL_8(ch));

    if(!((ch + (is_phase ? 1 : 0)) % 2))
    {
        reg &= ~AXI_DAC_CHAN_REG_CHAN_CNTRL_8_IQCOR_COEFF_1(~0);
        reg |= AXI_DAC_CHAN_REG_CHAN_CNTRL_8_IQCOR_COEFF_1(Utils::ToSIF1_1_14(val));
    }
    else
    {
        reg &= ~AXI_DAC_CHAN_REG_CHAN_CNTRL_8_IQCOR_COEFF_2(~0);
        reg |= AXI_DAC_CHAN_REG_CHAN_CNTRL_8_IQCOR_COEFF_2(Utils::ToSIF1_1_14(val));
    }

    this->writeReg(AXI_DAC_CHAN_REG_CHAN_CNTRL_8(ch), reg);
}
double AXIAD9361::DAC::getCalibrationPhaseScale(AXIAD9361::DAC::Channel ch, bool is_phase)
{
    uint32_t reg = this->readReg(AXI_DAC_CHAN_REG_CHAN_CNTRL_8(ch));

    if(!((ch + (is_phase ? 1 : 0)) % 2))
    {
        reg &= AXI_DAC_CHAN_REG_CHAN_CNTRL_8_IQCOR_COEFF_1(~0);
        reg >>= Utils::FindFirstSetBit(AXI_DAC_CHAN_REG_CHAN_CNTRL_8_IQCOR_COEFF_1(~0));
    }
    else
    {
        reg &= AXI_DAC_CHAN_REG_CHAN_CNTRL_8_IQCOR_COEFF_2(~0);
        reg >>= Utils::FindFirstSetBit(AXI_DAC_CHAN_REG_CHAN_CNTRL_8_IQCOR_COEFF_2(~0));
    }

    return Utils::FromSIF1_1_14(reg);
}

void AXIAD9361::DAC::setDDSToneFrequency(AXIAD9361::DAC::Channel ch, AXIAD9361::DAC::Tone tone, uint64_t input_freq, uint32_t freq)
{
    if(ch >= AXIAD9361::DAC::Channel::CH_MAX)
        throw std::invalid_argument("AXI AD9361: Invalid channel number: " + std::to_string(ch) + " (Max = " + std::to_string(AXIAD9361::DAC::Channel::CH_MAX) + ")");

    if(tone >= AXIAD9361::DAC::Tone::TONE_MAX)
        throw std::invalid_argument("AXI AD9361: Invalid tone number: " + std::to_string(tone) + " (Max = " + std::to_string(AXIAD9361::DAC::Tone::TONE_MAX) + ")");

    uint32_t addr = (tone == 0) ? AXI_DAC_CHAN_REG_CHAN_CNTRL_2(ch) : AXI_DAC_CHAN_REG_CHAN_CNTRL_4(ch);
    uint32_t reg = this->readReg(addr);

    uint16_t df = ((uint64_t)freq << 16) / this->getSamplingFrequency(input_freq);

    reg &= ~AXI_DAC_CHAN_REG_CHAN_CNTRL_2_DDS_INCR_1(~0);
    reg |= AXI_DAC_CHAN_REG_CHAN_CNTRL_2_DDS_INCR_1(df);

    this->writeReg(addr, reg);
    this->sync();
}
uint32_t AXIAD9361::DAC::getDDSToneFrequency(AXIAD9361::DAC::Channel ch, AXIAD9361::DAC::Tone tone, uint64_t input_freq)
{
    if(ch >= AXIAD9361::DAC::Channel::CH_MAX)
        throw std::invalid_argument("AXI AD9361: Invalid channel number: " + std::to_string(ch) + " (Max = " + std::to_string(AXIAD9361::DAC::Channel::CH_MAX) + ")");

    if(tone >= AXIAD9361::DAC::Tone::TONE_MAX)
        throw std::invalid_argument("AXI AD9361: Invalid tone number: " + std::to_string(tone) + " (Max = " + std::to_string(AXIAD9361::DAC::Tone::TONE_MAX) + ")");

    uint32_t addr = (tone == 0) ? AXI_DAC_CHAN_REG_CHAN_CNTRL_2(ch) : AXI_DAC_CHAN_REG_CHAN_CNTRL_4(ch);
    uint32_t reg = this->readReg(addr);

    reg &= AXI_DAC_CHAN_REG_CHAN_CNTRL_2_DDS_INCR_1(~0);
    reg >>= Utils::FindFirstSetBit(AXI_DAC_CHAN_REG_CHAN_CNTRL_2_DDS_INCR_1(~0));

    return ((uint64_t)reg * this->getSamplingFrequency(input_freq)) >> 16;
}
void AXIAD9361::DAC::setDDSTonePhase(AXIAD9361::DAC::Channel ch, AXIAD9361::DAC::Tone tone, double phase)
{
    if(ch >= AXIAD9361::DAC::Channel::CH_MAX)
        throw std::invalid_argument("AXI AD9361: Invalid channel number: " + std::to_string(ch) + " (Max = " + std::to_string(AXIAD9361::DAC::Channel::CH_MAX) + ")");

    if(tone >= AXIAD9361::DAC::Tone::TONE_MAX)
        throw std::invalid_argument("AXI AD9361: Invalid tone number: " + std::to_string(tone) + " (Max = " + std::to_string(AXIAD9361::DAC::Tone::TONE_MAX) + ")");

    uint32_t addr = (tone == 0) ? AXI_DAC_CHAN_REG_CHAN_CNTRL_2(ch) : AXI_DAC_CHAN_REG_CHAN_CNTRL_4(ch);
    uint32_t reg = this->readReg(addr);

    uint16_t init = (phase * BIT(16)) / 360.0;

    reg &= ~AXI_DAC_CHAN_REG_CHAN_CNTRL_2_DDS_INIT_1(~0);
    reg |= AXI_DAC_CHAN_REG_CHAN_CNTRL_2_DDS_INIT_1(init);

    this->writeReg(addr, reg);
    this->sync();
}
double AXIAD9361::DAC::getDDSTonePhase(AXIAD9361::DAC::Channel ch, AXIAD9361::DAC::Tone tone)
{
    if(ch >= AXIAD9361::DAC::Channel::CH_MAX)
        throw std::invalid_argument("AXI AD9361: Invalid channel number: " + std::to_string(ch) + " (Max = " + std::to_string(AXIAD9361::DAC::Channel::CH_MAX) + ")");

    if(tone >= AXIAD9361::DAC::Tone::TONE_MAX)
        throw std::invalid_argument("AXI AD9361: Invalid tone number: " + std::to_string(tone) + " (Max = " + std::to_string(AXIAD9361::DAC::Tone::TONE_MAX) + ")");

    uint32_t addr = (tone == 0) ? AXI_DAC_CHAN_REG_CHAN_CNTRL_2(ch) : AXI_DAC_CHAN_REG_CHAN_CNTRL_4(ch);
    uint32_t reg = this->readReg(addr);

    reg &= AXI_DAC_CHAN_REG_CHAN_CNTRL_2_DDS_INIT_1(~0);
    reg >>= Utils::FindFirstSetBit(AXI_DAC_CHAN_REG_CHAN_CNTRL_2_DDS_INIT_1(~0));

    return (reg * 360.0) / BIT(16);
}
void AXIAD9361::DAC::setDDSToneScale(AXIAD9361::DAC::Channel ch, AXIAD9361::DAC::Tone tone, double scale)
{
    if(ch >= AXIAD9361::DAC::Channel::CH_MAX)
        throw std::invalid_argument("AXI AD9361: Invalid channel number: " + std::to_string(ch) + " (Max = " + std::to_string(AXIAD9361::DAC::Channel::CH_MAX) + ")");

    if(tone >= AXIAD9361::DAC::Tone::TONE_MAX)
        throw std::invalid_argument("AXI AD9361: Invalid tone number: " + std::to_string(tone) + " (Max = " + std::to_string(AXIAD9361::DAC::Tone::TONE_MAX) + ")");

    uint32_t addr = (tone == 0) ? AXI_DAC_CHAN_REG_CHAN_CNTRL_1(ch) : AXI_DAC_CHAN_REG_CHAN_CNTRL_3(ch);
    uint32_t reg = this->readReg(addr);

    reg &= ~AXI_DAC_CHAN_REG_CHAN_CNTRL_1_DDS_SCALE_1(~0);
    reg |= AXI_DAC_CHAN_REG_CHAN_CNTRL_1_DDS_SCALE_1(Utils::ToSIF1_1_14(scale));

    this->writeReg(addr, reg);
    this->sync();
}
double AXIAD9361::DAC::getDDSToneScale(AXIAD9361::DAC::Channel ch, AXIAD9361::DAC::Tone tone)
{
    if(ch >= AXIAD9361::DAC::Channel::CH_MAX)
        throw std::invalid_argument("AXI AD9361: Invalid channel number: " + std::to_string(ch) + " (Max = " + std::to_string(AXIAD9361::DAC::Channel::CH_MAX) + ")");

    if(tone >= AXIAD9361::DAC::Tone::TONE_MAX)
        throw std::invalid_argument("AXI AD9361: Invalid tone number: " + std::to_string(tone) + " (Max = " + std::to_string(AXIAD9361::DAC::Tone::TONE_MAX) + ")");

    uint32_t addr = (tone == 0) ? AXI_DAC_CHAN_REG_CHAN_CNTRL_1(ch) : AXI_DAC_CHAN_REG_CHAN_CNTRL_3(ch);
    uint32_t reg = this->readReg(addr);

    reg &= AXI_DAC_CHAN_REG_CHAN_CNTRL_1_DDS_SCALE_1(~0);
    reg >>= Utils::FindFirstSetBit(AXI_DAC_CHAN_REG_CHAN_CNTRL_1_DDS_SCALE_1(~0));

    return Utils::FromSIF1_1_14(reg);

}

void AXIAD9361::DAC::setLaneDelay(uint8_t lane, uint8_t delay) // Lane 0-6 for AD9361, Delay 0-31
{
    if(lane > 6)
        throw std::invalid_argument("AXI AD9361: Invalid lane number: " + std::to_string(lane));

    if(delay > 31)
        throw std::invalid_argument("AXI AD9361: Invalid delay value: " + std::to_string(delay));

    this->writeReg(AXI_DAC_REG_DELAY(lane), delay);
}
uint32_t AXIAD9361::DAC::getLaneDelay(uint8_t lane) // Lane 0-6 for AD9361
{
    if(lane > 6)
        throw std::invalid_argument("AXI AD9361: Invalid lane number: " + std::to_string(lane));

    return this->readReg(AXI_DAC_REG_DELAY(lane));
}

// Base
AXIAD9361::AXIAD9361(void *base_address, AD9361 *phy): AXIPeripheral(base_address)
{
    uint32_t version = this->getIPVersion();

    if(AXI_CORE_VERSION_MAJOR(version) < 10)
        throw std::runtime_error("AXI AD9361 Core v" + std::to_string(AXI_CORE_VERSION_MAJOR(version)) + "." + std::to_string(AXI_CORE_VERSION_MINOR(version)) + "." + std::to_string(AXI_CORE_VERSION_PATCH(version)) + " is not supported");

    for(uint8_t i = 0; i < AXIAD9361::ADC::Channel::CH_MAX; i++)
        this->prev_adc_data_src[i] = AXIAD9361::ADC::DataSource::DATA_SRC_MAX;

    for(uint8_t i = 0; i < AXIAD9361::DAC::Channel::CH_MAX; i++)
        this->prev_dac_data_src[i] = AXIAD9361::DAC::DataSource::DATA_SRC_MAX;

    // Detect capabilities
    uint32_t caps = this->readReg(AXI_AD9361_REG_CONFIG);

    this->is_cmos_interface = !!(caps & AXI_AD9361_REG_CONFIG_CMOS_OR_LVDS_N);

    // Instantiate ADC and DAC submodules
    this->adc = new AXIAD9361::ADC(reinterpret_cast<void *>(reinterpret_cast<uintptr_t>(base_address) + AXI_ADC_BASE_OFFSET), this);
    this->dac = new AXIAD9361::DAC(reinterpret_cast<void *>(reinterpret_cast<uintptr_t>(base_address) + AXI_DAC_BASE_OFFSET), this);

    this->phy = nullptr;

    this->init(phy);
}
AXIAD9361::~AXIAD9361()
{
    if(this->adc != nullptr)
        delete this->adc;

    if(this->dac != nullptr)
        delete this->dac;
}

void AXIAD9361::init(AD9361 *phy)
{
    if(this->phy != nullptr)
        throw std::runtime_error("AXI AD9361: Already initialized");

    if(phy == nullptr)
        return;

    this->phy = phy;

    this->adc->init();
    this->dac->init();
}
void AXIAD9361::deinit()
{
    if(this->phy == nullptr)
        return;

    this->dac->deinit();
    this->adc->deinit();

    this->phy = nullptr;
}

uint32_t AXIAD9361::getIPVersion()
{
    return this->readReg(AXI_AD9361_REG_VERSION);
}

uint8_t AXIAD9361::getChannelCount()
{
    // Number of data channels is double the number of RF channels (I + Q)
    return this->phy->getChannelCount() * 2;
}
uint8_t AXIAD9361::getSamplingFrequencyRatio()
{
    // LVDS ports are half the width of CMOS ports, so the clock must be doubled to achieve the same data rate
    uint8_t ratio = this->is_cmos_interface ? 1 : 2;

    // When in 2x2 MIMO mode, the data rate is doubled so both channels can be transfered
    if(this->phy->getChannelCount() == 2)
        ratio *= 2;

    return ratio;
}

void AXIAD9361::updateActiveChannels()
{
    this->adc->updateActiveChannels();
    this->dac->updateActiveChannels();
}

void AXIAD9361::enableHDLLoopback(bool enable) // Phy RX port -> HDL -> Phy TX port
{
    for(uint8_t i = 0; i < this->getChannelCount(); i++)
    {
        if(enable && this->prev_dac_data_src[i] != AXIAD9361::DAC::DataSource::DATA_SRC_MAX)
        {
            this->prev_dac_data_src[i] = this->dac->getDataSource(static_cast<AXIAD9361::DAC::Channel>(i));

            this->dac->setDataSource(static_cast<AXIAD9361::DAC::Channel>(i), AXIAD9361::DAC::DataSource::DATA_SRC_LOOPBACK);
        }
        else if(!enable && this->prev_dac_data_src[i] != AXIAD9361::DAC::DataSource::DATA_SRC_MAX)
        {
            this->dac->setDataSource(static_cast<AXIAD9361::DAC::Channel>(i), this->prev_dac_data_src[i]);

            this->prev_dac_data_src[i] = AXIAD9361::DAC::DataSource::DATA_SRC_MAX;
        }
    }
}
void AXIAD9361::enableDMALoopback(bool enable) // TX DMA -> HDL -> RX DMA
{
    for(uint8_t i = 0; i < this->getChannelCount(); i++)
    {
        if(enable && this->prev_adc_data_src[i] != AXIAD9361::ADC::DataSource::DATA_SRC_MAX)
        {
            this->prev_adc_data_src[i] = this->adc->getDataSource(static_cast<AXIAD9361::ADC::Channel>(i));

            this->adc->setDataSource(static_cast<AXIAD9361::ADC::Channel>(i), AXIAD9361::ADC::DataSource::DATA_SRC_LOOPBACK);
        }
        else if(!enable && this->prev_adc_data_src[i] != AXIAD9361::ADC::DataSource::DATA_SRC_MAX)
        {
            this->adc->setDataSource(static_cast<AXIAD9361::ADC::Channel>(i), this->prev_adc_data_src[i]);

            this->prev_adc_data_src[i] = AXIAD9361::ADC::DataSource::DATA_SRC_MAX;
        }
    }
}

void AXIAD9361::setHDLIODelay(bool adc, bool dac, uint8_t val)
{
    if(!adc && !dac)
        return;

    for(uint8_t i = 0; i < 7; i++)
    {
        if(adc)
            this->adc->setLaneDelay(i, val);

        if(dac)
            this->dac->setLaneDelay(i, val);
    }
}
std::vector<std::pair<std::string, uint8_t>> AXIAD9361::tuneHDLTiming(bool dac, std::vector<uint32_t> &freqs, bool restore)
{
    std::vector<std::pair<std::string, uint8_t>> ret;

    // TODO: Implement when needed

    if(dac)
    {
        for(uint8_t i = 0; i < 7; i++)
            ret.push_back({"DAC Lane #" + std::to_string(i) + " Delay", 15});
    }
    else
    {
        for(uint8_t i = 0; i < 7; i++)
            ret.push_back({"ADC Lane #" + std::to_string(i) + " Delay", 15});
    }

    return ret;
}
std::vector<std::pair<std::string, uint8_t>> AXIAD9361::tuneChipTiming(bool tx, std::vector<uint32_t> &freqs, bool restore)
{
    if(freqs.empty())
        throw std::invalid_argument("AXI AD9361: Frequency list is empty");

    // Save current clock chains if we will change them
    uint32_t rx_clocks[6];
    uint32_t tx_clocks[6];

    if(freqs[0] > 0)
        this->phy->getClockChain(rx_clocks, tx_clocks);

    // Save current delay if restore is enabled
    AD9361::InterfaceDelay delay;

    if(restore)
        delay = tx ? this->phy->getTXInterfaceDelay() : this->phy->getRXInterfaceDelay();

    // Use half rate if 2 channels are present and CMOS interface is used
    bool half_rate = false;

    if(this->phy->getChannelCount() == 2 && this->is_cmos_interface)
        half_rate = true;

    AD9361::InterfaceDelay tdelay;
    bool pass;
    std::vector<bool> pn_status_clk_ahead(16, true);
    std::vector<bool> pn_status_clk_behind(16, true);

    for(uint32_t r : freqs)
    {
        if(r > 0)
            this->phy->setClockChainFreq(half_rate ? r / 2 : r);

        for(uint8_t c = 0; c < 2; c++)
        {
            for(uint8_t d = 0; d < 16; d++)
            {
                /*
                * i == 0: clock delay = 0 (min), data delay from 0 to 15, i.e., clock is ahead of data
                * i == 1: clock delay = 15 (max), data delay from 15 to 0, i.e., clock is behind data
                */

                tdelay.data = (uint8_t)(c ? 15 - d : d);
                tdelay.clk = (uint8_t)(c ? 15 : 0);

                tx ? this->phy->setTXInterfaceDelay(tdelay) : this->phy->setRXInterfaceDelay(tdelay);

                pass = this->adc->checkPN(tx, 4);

                if(!c)
                    pn_status_clk_ahead[d] = pn_status_clk_ahead[d] && pass;
                else
                    pn_status_clk_behind[d] = pn_status_clk_behind[d] && pass;
            }
        }

        if(r == 0)
            break;
    }

    auto r_clk_ahead = Utils::FindLongestSequence<bool>(pn_status_clk_ahead, true);
    auto r_clk_behind = Utils::FindLongestSequence<bool>(pn_status_clk_behind, true);

    if(r_clk_ahead.second == 0 && r_clk_behind.second == 0)
        throw std::runtime_error("AXI AD9361: No good delay found");

    AD9361::InterfaceDelay ndelay;

    if(r_clk_behind.second > r_clk_ahead.second) // Best results with clock behind data
    {
        ndelay.data = 0;
        ndelay.clk = (uint8_t)(r_clk_behind.first + r_clk_behind.second / 2);
    }
    else // Best results with clock ahead of data
    {
        ndelay.data = (uint8_t)(r_clk_ahead.first + r_clk_ahead.second / 2);
        ndelay.clk = 0;
    }

    if(restore)
        tx ? this->phy->setTXInterfaceDelay(delay) : this->phy->setRXInterfaceDelay(delay);
    else
        tx ? this->phy->setTXInterfaceDelay(ndelay) : this->phy->setRXInterfaceDelay(ndelay);

    std::vector<std::pair<std::string, uint8_t>> ret;

    if(tx)
    {
        ret.push_back({"TX Data Delay", ndelay.data});
        ret.push_back({"TX Clock (FB_CLK) Delay", ndelay.clk});
    }
    else
    {
        ret.push_back({"RX Data Delay", ndelay.data});
        ret.push_back({"RX Clock (DATA_CLK) Delay", ndelay.clk});
    }

    if(freqs[0] > 0)
        this->phy->setClockChain(rx_clocks, tx_clocks);

    return ret;
}
std::string AXIAD9361::analyzeInterfaceTiming()
{
    //TODO:
    return "Not implemented";
}
std::vector<std::pair<std::string, uint8_t>> AXIAD9361::tuneInterfaceTiming(AXIAD9361::InterfaceTuneFlags flags, std::vector<uint32_t> freqs)
{
    std::vector<std::pair<std::string, uint8_t>> ret;

    if(!(flags & (AXIAD9361::InterfaceTuneFlags::DO_HDL_RX_ADC | AXIAD9361::InterfaceTuneFlags::DO_HDL_TX_DAC | AXIAD9361::InterfaceTuneFlags::DO_CHIP_RX | AXIAD9361::InterfaceTuneFlags::DO_CHIP_TX)))
    {
        // Nothing to do...
        return ret;
    }

    // Set default frequencies if not present
    if(freqs.empty())
    {
        if(flags & AXIAD9361::InterfaceTuneFlags::DONT_CHANGE_CLK)
        {
            freqs.push_back(0);
        }
        else
        {
            freqs.push_back(25000000UL);
            freqs.push_back(40000000UL);
            freqs.push_back(61440000UL);
        }
    }

    // Save current chip state
    uint8_t phy_ensm_state = this->phy->getENSMState();
    AD9361::BISTConfig phy_bist_config = this->phy->getBISTConfig();

    // Save current AXI ADC state
    bool adc_iq_corr_en[4]; // Max number of channels for AD9361
    bool adc_dc_filt_en[4];
    double adc_dc_offset[4];
    AXIAD9361::ADC::PNSource adc_pn_src[4];

    for(uint8_t i = 0; i < this->getChannelCount(); i++)
    {
        adc_iq_corr_en[i] = this->adc->isCalibrationEnabled(static_cast<AXIAD9361::ADC::Channel>(i));
        adc_dc_filt_en[i] = this->adc->isDCFilterEnabled(static_cast<AXIAD9361::ADC::Channel>(i));
        adc_dc_offset[i] = this->adc->getDCOffset(static_cast<AXIAD9361::ADC::Channel>(i));
        adc_pn_src[i] = this->adc->getPNSource(static_cast<AXIAD9361::ADC::Channel>(i));
    }

    this->phy->muteTX(true); // Mute TX

    // if(!g_pAD9361Phy->pdata->fdd) // TODO: Get FDD state with accessor methods
    //     this->phy->setENSMMode(true, false);

    this->setHDLIODelay(!!(flags & AXIAD9361::InterfaceTuneFlags::DO_HDL_RX_ADC), !!(flags & AXIAD9361::InterfaceTuneFlags::DO_HDL_TX_DAC), 15);

    std::string err = "";

    if(flags & AXIAD9361::InterfaceTuneFlags::DO_CHIP_RX)
    {
        this->phy->disableParallelPortLoopback(); // Disable loopback
        this->phy->setBISTConfig(
            {
                .enable = true, // Inject PRBS into RX datapath
                .mode = AD9361::BISTConfig::Mode::PRBS,
                .injection_point = AD9361::BISTConfig::InjectionPoint::INJ_RX,
            }
        );

        for(uint8_t i = 0; i < this->getChannelCount(); i++)
        {
            this->adc->enableCalibration(static_cast<AXIAD9361::ADC::Channel>(i), 0); // Disable IQ correction
            this->adc->enableDCFilter(static_cast<AXIAD9361::ADC::Channel>(i), 0); // Disable DC filter
            this->adc->setDCOffset(static_cast<AXIAD9361::ADC::Channel>(i), 0); // Set DC offset to 0
            this->adc->setPNSource(static_cast<AXIAD9361::ADC::Channel>(i), AXIAD9361::ADC::PNSource::PN9A); // Select PN9A
        }

        try
        {
            auto _ret = this->tuneChipRXTiming(freqs, !!(flags & RESTORE_PREVIOUS));

            ret.insert(ret.end(), _ret.begin(), _ret.end());
        }
        catch(const std::exception &e)
        {
            err = "Chip RX tuning failed: " + std::string(e.what());
        }

        if(!err.length() && (flags & AXIAD9361::InterfaceTuneFlags::DO_HDL_RX_ADC))
        {
            try
            {
                auto _ret = this->tuneADCTiming(freqs, !!(flags & RESTORE_PREVIOUS));

                ret.insert(ret.end(), _ret.begin(), _ret.end());
            }
            catch(const std::exception &e)
            {
                err = "HDL RX ADC tuning failed: " + std::string(e.what());
            }
        }

        // Maybe reset the ADC Core here?
    }

    if(err.length() > 0)
    {
        // DBGPRINTLN_CTX("There were errors during RX tuning, aborting");

        // Restore AXI ADC state
        for(uint8_t i = 0; i < this->getChannelCount(); i++)
        {
            this->adc->enableCalibration(static_cast<AXIAD9361::ADC::Channel>(i), adc_iq_corr_en[i]);
            this->adc->enableDCFilter(static_cast<AXIAD9361::ADC::Channel>(i), adc_dc_filt_en[i]);
            this->adc->setDCOffset(static_cast<AXIAD9361::ADC::Channel>(i), adc_dc_offset[i]);
            this->adc->setPNSource(static_cast<AXIAD9361::ADC::Channel>(i), adc_pn_src[i]);
        }

        // Restore chip state
        this->phy->setBISTConfig(phy_bist_config);

        // if(!g_pAD9361Phy->pdata->fdd)
        //     ad9361_set_ensm_mode(g_pAD9361Phy->pdata->fdd, g_pAD9361Phy->pdata->ensm_pin_ctrl);

        this->phy->restoreENSMState(phy_ensm_state);
        this->phy->muteTX(false); // Unmute TX

        throw std::runtime_error("AXI AD9361: " + err);
    }

    if(flags & AXIAD9361::InterfaceTuneFlags::DO_CHIP_TX)
    {
        // Save current AXI DAC state
        bool dac_iq_corr_en[4]; // Max number of channels for AD9361
        AXIAD9361::DAC::DataSource dac_data_src[4];

        for(uint8_t i = 0; i < this->getChannelCount(); i++)
        {
            dac_iq_corr_en[i] = this->dac->isCalibrationEnabled(static_cast<AXIAD9361::DAC::Channel>(i));
            dac_data_src[i] = this->dac->getDataSource(static_cast<AXIAD9361::DAC::Channel>(i));
        }

        this->phy->setBISTConfig(
            {
                .enable = false, // Disable PRBS injection
            }
        );
        this->phy->enableParallelPortLoopback(); // Enable chip internal loopback TX -> RX

        for(uint8_t i = 0; i < this->getChannelCount(); i++)
        {
            this->adc->enableCalibration(static_cast<AXIAD9361::ADC::Channel>(i), 0); // Disable ADC IQ correction
            this->dac->enableCalibration(static_cast<AXIAD9361::DAC::Channel>(i), 0); // Disable DAC IQ correction
            this->adc->enableDCFilter(static_cast<AXIAD9361::ADC::Channel>(i), 0); // Disable DC filter
            this->adc->setDCOffset(static_cast<AXIAD9361::ADC::Channel>(i), 0); // Set DC offset to 0
            this->adc->setPNSource(static_cast<AXIAD9361::ADC::Channel>(i), AXIAD9361::ADC::PNSource::PNX); // Select device specific PN
            this->dac->setDataSource(static_cast<AXIAD9361::DAC::Channel>(i), AXIAD9361::DAC::DataSource::DATA_SRC_PNX); // Select device specific PN
        }

        this->dac->sync(); // Sync DAC

        try
        {
            auto _ret = this->tuneChipTXTiming(freqs, !!(flags & RESTORE_PREVIOUS));

            ret.insert(ret.end(), _ret.begin(), _ret.end());
        }
        catch(const std::exception &e)
        {
            err = "Chip TX tuning failed: " + std::string(e.what());
        }


        if(!err.length() && (flags & AXIAD9361::InterfaceTuneFlags::DO_HDL_TX_DAC))
        {
            try
            {
                auto _ret = this->tuneDACTiming(freqs, !!(flags & RESTORE_PREVIOUS));

                ret.insert(ret.end(), _ret.begin(), _ret.end());
            }
            catch(const std::exception &e)
            {
                err = "HDL TX DAC tuning failed: " + std::string(e.what());
            }
        }

        // Restore AXI DAC state
        for(uint8_t i = 0; i < this->getChannelCount(); i++)
        {
            this->dac->enableCalibration(static_cast<AXIAD9361::DAC::Channel>(i), dac_iq_corr_en[i]);
            this->dac->setDataSource(static_cast<AXIAD9361::DAC::Channel>(i), dac_data_src[i]);
        }

        this->dac->sync(); // Sync DAC

        // Maybe reset the ADC Core here?
    }

    // Restore AXI ADC state
    for(uint8_t i = 0; i < this->getChannelCount(); i++)
    {
        this->adc->enableCalibration(static_cast<AXIAD9361::ADC::Channel>(i), adc_iq_corr_en[i]);
        this->adc->enableDCFilter(static_cast<AXIAD9361::ADC::Channel>(i), adc_dc_filt_en[i]);
        this->adc->setDCOffset(static_cast<AXIAD9361::ADC::Channel>(i), adc_dc_offset[i]);
        this->adc->setPNSource(static_cast<AXIAD9361::ADC::Channel>(i), adc_pn_src[i]);
    }

    // Restore chip state
    this->phy->setBISTConfig(phy_bist_config);

    // if(!g_pAD9361Phy->pdata->fdd)
    //     ad9361_set_ensm_mode(g_pAD9361Phy->pdata->fdd, g_pAD9361Phy->pdata->ensm_pin_ctrl);

    this->phy->restoreENSMState(phy_ensm_state);
    this->phy->muteTX(false); // Unmute TX

    if(err.length() > 0)
        throw std::runtime_error("AXI AD9361: " + err);

    return ret;
}
