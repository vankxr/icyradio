#include "IDT8V97003.hpp"

void IDT8V97003::readReg(uint8_t reg, uint8_t *dst, uint8_t count)
{
    if(this->spi.controller == nullptr)
        throw std::runtime_error("8V97003: SPI not initialized");

    if(reg + count > 0x49)
        throw std::runtime_error("8V97003: Invalid register address");

    if(!count)
        return;

    if(dst == nullptr)
        throw std::runtime_error("8V97003: Invalid destination buffer");

    this->spi.controller->slaveSelect(this->spi.ss_mask, true); // This locks mutex

    this->spi.controller->write(BIT(7), false);
    this->spi.controller->write(reg, true);
    this->spi.controller->read(dst, count);

    this->spi.controller->slaveSelect(this->spi.ss_mask, false); // This unlocks mutex
}
void IDT8V97003::writeReg(uint8_t reg, uint8_t *src, uint8_t count)
{
    if(this->spi.controller == nullptr)
        throw std::runtime_error("8V97003: SPI not initialized");

    if(reg + count > 0x49)
        throw std::runtime_error("8V97003: Invalid register address");

    if(!count)
        return;

    if(src == nullptr)
        throw std::runtime_error("8V97003: Invalid source buffer");

    this->spi.controller->slaveSelect(this->spi.ss_mask, true); // This locks mutex

    this->spi.controller->write(0x00, false);
    this->spi.controller->write(reg, false);
    this->spi.controller->write(src, count, true);

    this->spi.controller->slaveSelect(this->spi.ss_mask, false); // This unlocks mutex
}

IDT8V97003::IDT8V97003(IDT8V97003::SPIConfig spi, IDT8V97003::GPIOConfig ce_gpio, IDT8V97003::GPIOConfig mute_gpio, IDT8V97003::GPIOConfig sync_gpio, IDT8V97003::GPIOConfig ld_gpio, IDT8V97003::GPIOConfig reset_gpio)
{
    this->spi = spi;
    this->ce_gpio = ce_gpio;
    this->mute_gpio = mute_gpio;
    this->sync_gpio = sync_gpio;
    this->ld_gpio = ld_gpio;
    this->reset_gpio = reset_gpio;

    this->ref_freq = 0;
    this->cached_rfout_pwr[IDT8V97003::RFOutput::RFOUT_A] = 0;
    this->cached_rfout_pwr[IDT8V97003::RFOutput::RFOUT_B] = 0;

    if(this->spi.controller == nullptr)
        throw std::runtime_error("8V97003: SPI not initialized");

    this->writeReg(IDT8V97003_REG_INTF_CONFIG, IDT8V97003_REG_INTF_CONFIG_ADDR_ASC | IDT8V97003_REG_INTF_CONFIG_SDO_ACTIVE);

    uint8_t chip_type = this->readReg(IDT8V97003_REG_CHIP_TYPE);

    if(chip_type != 0x06)
        throw std::runtime_error("8V97003: Invalid chip type (" + std::to_string(chip_type) + " != " + std::to_string(0x06) + ")");

    uint16_t chip_id = this->readReg16(IDT8V97003_REG_CHIP_ID_LOW);

    if(chip_id != 0x0001)
        throw std::runtime_error("8V97003: Invalid chip ID (" + std::to_string(chip_id) + " != " + std::to_string(0x0001) + ")");

    uint16_t vendor_id = this->readReg16(IDT8V97003_REG_VENDOR_ID_LOW);

    if(vendor_id != 0x0426)
        throw std::runtime_error("8V97003: Invalid vendor ID (" + std::to_string(vendor_id) + " != " + std::to_string(0x0426) + ")");
}
IDT8V97003::~IDT8V97003()
{
    this->mute();
    this->powerDown();
}

void IDT8V97003::init()
{
    this->reset();

    this->writeReg(IDT8V97003_REG_INTF_CONFIG, IDT8V97003_REG_INTF_CONFIG_ADDR_ASC | IDT8V97003_REG_INTF_CONFIG_SDO_ACTIVE);
    this->writeReg(IDT8V97003_REG_BUF_READ, 0x00); // Reads target the active register, not the buffer
    this->writeReg(IDT8V97003_REG_DSM_CTL, IDT8V97003_REG_DSM_CTL_SHAPE_DITHER_EN);
    this->writeReg(IDT8V97003_REG_MANUAL_VCO, 0x00);
    this->writeReg(IDT8V97003_REG_MANUAL_DIGITAL, 0x00);
    this->writeReg(IDT8V97003_REG_MANUAL_CTL, IDT8V97003_REG_MANUAL_CTL_BAND_SEL_ACC_8X);
    this->writeReg(0x24, 0x80);
    this->writeReg(0x25, 0x00);
    this->writeReg(IDT8V97003_REG_MULT_CTL0, 0x00);
    this->writeReg(IDT8V97003_REG_MULT_CTL1, IDT8V97003_REG_MULT_CTL1_MULT_FORCE_VCLOW);
    this->writeReg(IDT8V97003_REG_ICP_BLEEDER, 0x00);
    this->writeReg(IDT8V97003_REG_PFD_PULSE_WIDTH, IDT8V97003_REG_PFD_PULSE_WIDTH_VCO_BUF_LOW_V);
    this->writeReg(IDT8V97003_REG_RESYNC_TIME_LOW, 0x88); // resync_time = 5000
    this->writeReg(IDT8V97003_REG_RESYNC_TIME_HIGH, 0x13);
    this->writeReg(IDT8V97003_REG_RFOUTA_PWR, 0x00);
    this->writeReg(IDT8V97003_REG_RFOUTA_ENA, IDT8V97003_REG_RFOUTA_ENA_REF_VOLTAGE | IDT8V97003_REG_RFOUTA_ENA_MUTE_UNTIL_LD | IDT8V97003_REG_RFOUTA_ENA_DAC_BIAS(14));
    this->writeReg(IDT8V97003_REG_RFOUTB_PWR, 0x00);
    this->writeReg(IDT8V97003_REG_RFOUTB_ENA, IDT8V97003_REG_RFOUTB_ENA_REF_VOLTAGE | IDT8V97003_REG_RFOUTB_ENA_DAC_BIAS(14));
    this->writeReg(IDT8V97003_REG_VCO_CAL_VOLTAGE, IDT8V97003_REG_VCO_CAL_VOLTAGE_0V82);
    this->writeReg(IDT8V97003_REG_PTAT_PWR_CONFIG, IDT8V97003_REG_PTAT_PWR_CONFIG_PTAT_MODE_NORMAL);
    this->writeReg(IDT8V97003_REG_CURRENT_CONFIG1, 0x00);
    this->writeReg(IDT8V97003_REG_CURRENT_CONFIG2, 0x00);
    this->writeReg(IDT8V97003_REG_TRIM_CONFIG1, IDT8V97003_REG_TRIM_CONFIG1_VCO_REG_TRIM_2V09 | IDT8V97003_REG_TRIM_CONFIG1_OUT_REG_TRIM_2V62);
    this->writeReg(IDT8V97003_REG_TRIM_CONFIG2, IDT8V97003_REG_TRIM_CONFIG2_PDCP_REG_TRIM_2V62 | IDT8V97003_REG_TRIM_CONFIG2_FB_REG_TRIM_2V62);
    this->writeReg(IDT8V97003_REG_TRIM_CONFIG3, IDT8V97003_REG_TRIM_CONFIG3_DIG_REG_TRIM_1V5 | IDT8V97003_REG_TRIM_CONFIG3_REF_REG_TRIM_2V62);

    this->transferDoubleBuffer();
}

void IDT8V97003::reset()
{
    if(this->reset_gpio.controller != nullptr) // Hardware reset
    {
        this->reset_gpio.controller->setValue(this->reset_gpio.gpio, this->reset_gpio.invert ? true : false);
        usleep(1000);
        this->reset_gpio.controller->setValue(this->reset_gpio.gpio, this->reset_gpio.invert ? false : true);

        return;
    }

    this->writeReg(IDT8V97003_REG_INTF_CONFIG, IDT8V97003_REG_INTF_CONFIG_SOFT_RESET);

    while(this->readReg(IDT8V97003_REG_INTF_CONFIG) & IDT8V97003_REG_INTF_CONFIG_SOFT_RESET)
        usleep(1000);
}

void IDT8V97003::powerUp(IDT8V97003::PowerFlags flags)
{
    std::lock_guard<std::mutex> lock(this->mutex);

    if((flags & IDT8V97003::PowerFlags::PWR_CHIP_ENABLE) && this->ce_gpio.controller != nullptr)
        this->ce_gpio.controller->setValue(this->ce_gpio.gpio, this->ce_gpio.invert ? false : true);

    uint8_t reg = this->readReg(IDT8V97003_REG_PWR_CTL);

    reg &= (flags & IDT8V97003::PowerFlags::PWR_REF_VREG) ? ~IDT8V97003_REG_PWR_CTL_REF_VREG_PDOWN : 0xFF;
    reg &= (flags & IDT8V97003::PowerFlags::PWR_PDCP_VREG) ? ~IDT8V97003_REG_PWR_CTL_PDCP_VREG_PDOWN : 0xFF;
    reg &= (flags & IDT8V97003::PowerFlags::PWR_FB_VREG) ? ~IDT8V97003_REG_PWR_CTL_FB_VREG_PDOWN : 0xFF;
    reg &= (flags & IDT8V97003::PowerFlags::PWR_OUTA_VREG) ? ~IDT8V97003_REG_PWR_CTL_OUTA_VREG_PDOWN : 0xFF;
    reg &= (flags & IDT8V97003::PowerFlags::PWR_OUTB_BUF_VREG) ? ~IDT8V97003_REG_PWR_CTL_OUTB_BUF_VREG_PDOWN : 0xFF;
    reg &= (flags & IDT8V97003::PowerFlags::PWR_ANA_VREG) ? ~IDT8V97003_REG_PWR_CTL_ANA_PDOWN : 0xFF;
    reg |= (flags & IDT8V97003::PowerFlags::PWR_VCO) ? IDT8V97003_REG_PWR_CTL_VCO_EN : 0; // VCO is inverted

    this->writeReg(IDT8V97003_REG_PWR_CTL, reg);
}
void IDT8V97003::powerDown(IDT8V97003::PowerFlags flags)
{
    std::lock_guard<std::mutex> lock(this->mutex);

    uint8_t reg = this->readReg(IDT8V97003_REG_PWR_CTL);

    reg |= (flags & IDT8V97003::PowerFlags::PWR_REF_VREG) ? IDT8V97003_REG_PWR_CTL_REF_VREG_PDOWN : 0;
    reg |= (flags & IDT8V97003::PowerFlags::PWR_PDCP_VREG) ? IDT8V97003_REG_PWR_CTL_PDCP_VREG_PDOWN : 0;
    reg |= (flags & IDT8V97003::PowerFlags::PWR_FB_VREG) ? IDT8V97003_REG_PWR_CTL_FB_VREG_PDOWN : 0;
    reg |= (flags & IDT8V97003::PowerFlags::PWR_OUTA_VREG) ? IDT8V97003_REG_PWR_CTL_OUTA_VREG_PDOWN : 0;
    reg |= (flags & IDT8V97003::PowerFlags::PWR_OUTB_BUF_VREG) ? IDT8V97003_REG_PWR_CTL_OUTB_BUF_VREG_PDOWN : 0;
    reg |= (flags & IDT8V97003::PowerFlags::PWR_ANA_VREG) ? IDT8V97003_REG_PWR_CTL_ANA_PDOWN : 0;
    reg &= (flags & IDT8V97003::PowerFlags::PWR_VCO) ? ~IDT8V97003_REG_PWR_CTL_VCO_EN : 0xFF; // VCO is inverted

    this->writeReg(IDT8V97003_REG_PWR_CTL, reg);

    if((flags & IDT8V97003::PowerFlags::PWR_CHIP_ENABLE) && this->ce_gpio.controller != nullptr)
        this->ce_gpio.controller->setValue(this->ce_gpio.gpio, this->ce_gpio.invert ? true : false);
}

bool IDT8V97003::isMuted()
{
    std::lock_guard<std::mutex> lock(this->mutex);

    if(this->mute_gpio.controller != nullptr)
    {
        bool muted = this->mute_gpio.controller->getValue(this->mute_gpio.gpio);

        if(this->mute_gpio.invert)
            muted = !muted;

        if(muted)
            return true;
    }

    return this->_isMuted(IDT8V97003::RFOutput::RFOUT_A) && this->_isMuted(IDT8V97003::RFOutput::RFOUT_B);
}
void IDT8V97003::mute(bool mute)
{
    std::lock_guard<std::mutex> lock(this->mutex);

    if(this->mute_gpio.controller != nullptr)
    {
        if(this->mute_gpio.invert)
            mute = !mute;

        this->mute_gpio.controller->setValue(this->mute_gpio.gpio, mute);

        return;
    }

    this->_mute(IDT8V97003::RFOutput::RFOUT_A, mute);
    this->_mute(IDT8V97003::RFOutput::RFOUT_B, mute);
}
bool IDT8V97003::_isMuted(IDT8V97003::RFOutput output)
{
    uint8_t reg;

    switch(output)
    {
        case IDT8V97003::RFOutput::RFOUT_A:
            reg = IDT8V97003_REG_RFOUTA_PWR;
        break;
        case IDT8V97003::RFOutput::RFOUT_B:
            reg = IDT8V97003_REG_RFOUTB_PWR;
        break;
        default:
            throw std::runtime_error("8V97003: Invalid RF output");
    }

    if(this->mute_gpio.controller != nullptr)
    {
        bool muted = this->mute_gpio.controller->getValue(this->mute_gpio.gpio);

        if(this->mute_gpio.invert)
            muted = !muted;

        if(muted)
            return true;
    }

    uint8_t val = this->readReg(reg) & 0x0F;

    if(!val)
        return true;

    return false;
}
void IDT8V97003::_mute(IDT8V97003::RFOutput output, bool mute)
{
    uint8_t reg;

    switch(output)
    {
        case IDT8V97003::RFOutput::RFOUT_A:
            reg = IDT8V97003_REG_RFOUTA_PWR;
        break;
        case IDT8V97003::RFOutput::RFOUT_B:
            reg = IDT8V97003_REG_RFOUTB_PWR;
        break;
        default:
            throw std::runtime_error("8V97003: Invalid RF output");
    }

    if(mute && this->cached_rfout_pwr[output])
        return; // Already muted

    if(!mute && !this->cached_rfout_pwr[output])
        return; // Already unmuted

    uint8_t val = this->readReg(reg);
    uint8_t pwr = val & 0x0F;

    if(mute)
    {
        if(!pwr)
            return; // Already muted

        this->cached_rfout_pwr[output] = pwr;

        pwr = 0;
    }
    else
    {
        if(pwr)
            return; // Already unmuted

        pwr = this->cached_rfout_pwr[output];

        this->cached_rfout_pwr[output] = 0;
    }

    this->writeReg(reg, (val & 0xF0) | pwr);
}
void IDT8V97003::setMuteUntilLocked(bool mute)
{
    std::lock_guard<std::mutex> lock(this->mutex);

    this->rmwReg(IDT8V97003_REG_RFOUTA_ENA, IDT8V97003_REG_RFOUTA_ENA_MUTE_UNTIL_LD, mute ? IDT8V97003_REG_RFOUTA_ENA_MUTE_UNTIL_LD : 0);
}

void IDT8V97003::enableRFOutput(IDT8V97003::RFOutput output, bool enable)
{
    uint8_t reg;

    switch(output)
    {
        case IDT8V97003::RFOutput::RFOUT_A:
            reg = IDT8V97003_REG_RFOUTA_ENA;
        break;
        case IDT8V97003::RFOutput::RFOUT_B:
            reg = IDT8V97003_REG_RFOUTB_ENA;
        break;
        default:
            throw std::runtime_error("8V97003: Invalid RF output");
    }

    std::lock_guard<std::mutex> lock(this->mutex);

    this->rmwReg(reg, IDT8V97003_REG_RFOUTA_ENA_RFOUTA_ENA, enable ? IDT8V97003_REG_RFOUTA_ENA_RFOUTA_ENA : 0);
}
void IDT8V97003::setRFOutputPower(IDT8V97003::RFOutput output, uint8_t power)
{
    if(power > 12)
        throw std::invalid_argument("8V97003: Invalid RF output power (Valid: 0-12)");

    uint8_t reg;

    switch(output)
    {
        case IDT8V97003::RFOutput::RFOUT_A:
            reg = IDT8V97003_REG_RFOUTA_PWR;
        break;
        case IDT8V97003::RFOutput::RFOUT_B:
            reg = IDT8V97003_REG_RFOUTB_PWR;
        break;
        default:
            throw std::runtime_error("8V97003: Invalid RF output");
    }

    std::lock_guard<std::mutex> lock(this->mutex);

    this->writeReg(reg, power & 0x0F);

    this->cached_rfout_pwr[output] = 0;
}
uint8_t IDT8V97003::getRFOutputPower(IDT8V97003::RFOutput output)
{
    uint8_t reg;

    switch(output)
    {
        case IDT8V97003::RFOutput::RFOUT_A:
            reg = IDT8V97003_REG_RFOUTA_PWR;
        break;
        case IDT8V97003::RFOutput::RFOUT_B:
            reg = IDT8V97003_REG_RFOUTB_PWR;
        break;
        default:
            throw std::runtime_error("8V97003: Invalid RF output");
    }

    std::lock_guard<std::mutex> lock(this->mutex);

    uint8_t pwr = this->readReg(reg) & 0x0F;

    if(!pwr)
        return this->cached_rfout_pwr[output];

    return pwr;
}

double IDT8V97003::getTemperature()
{
    // TODO
    return 0.0;

    // static bool once = false;

    // if(!once)
    // {
    //     this->init();
    //     this->powerUp();

    //     this->configReferenceInput(25000000UL);
    //     this->configPFD(250000000UL);
    //     this->setLockDetectPrecision(IDT8V97003::LDPrecision::LD_PREC_6p4ns);
    //     this->enableAutoRecal();
    //     this->enableLockDetect();
    //     this->setChargePumpPositiveCurrent(9);
    //     this->setChargePumpNegativeCurrent(9);
    //     this->setFrequency(1000000000ULL);
    // }

    // once = true;

    // this->writeReg(IDT8V97003_REG_PTAT_PWR_CONFIG, IDT8V97003_REG_PTAT_PWR_CONFIG_SENSOR_POWER | BIT(0));
    // uint16_t temp = this->readReg(IDT8V97003_REG_TEMP_HIGH);

    // uint32_t to = 10000;
    // while(--to && !(temp & 0x20))
    // {
    //     usleep(1000);

    //     temp = this->readReg(IDT8V97003_REG_TEMP_HIGH);
    // }

    // temp = this->readReg16(IDT8V97003_REG_TEMP_LOW);

    // this->writeReg(IDT8V97003_REG_PTAT_PWR_CONFIG, IDT8V97003_REG_PTAT_PWR_CONFIG_SENSOR_POWER);
    // this->writeReg(IDT8V97003_REG_PTAT_PWR_CONFIG, IDT8V97003_REG_PTAT_PWR_CONFIG_SENSOR_POWER | BIT(0));

    // if(!to)
    //     return -1;

    // // static bool once = false;

    // // if(once)
    // //     this->powerUp();
    // // else
    // //     this->powerDown();

    // // once = !once;

    // // temp &= 0xFFF;

    // // if(temp & 0x08000)
    // //     temp |= 0xF000;

    // // int16_t stemp;
    // // *((uint16_t *)&stemp) = temp;

    // return (double)(temp & 0x3FF); // TODO: Calibrate
}

IDT8V97003::VCOBand IDT8V97003::getCurrentVCOBand()
{
    std::lock_guard<std::mutex> lock(this->mutex);

    uint8_t buf[2];

    this->readReg(IDT8V97003_REG_LD_CAL_VCO_STATUS, buf, 2);

    return {
        .vco = buf[0],
        .dig_band = buf[1]
    };
}
void IDT8V97003::forceVCOBand(bool force, IDT8V97003::VCOBand band)
{
    // TODO
}

void IDT8V97003::configReferenceInput(uint32_t freq, bool diff)
{
    if(freq < 10000000UL)
        throw std::runtime_error("8V97003: Reference frequency too low (Valid: >= 10 MHz)");

    if(freq > 1600000000UL)
        throw std::runtime_error("8V97003: Reference frequency too high (Valid: <= 1600 MHz)");

    std::lock_guard<std::mutex> lock(this->mutex);

    this->rmwReg(IDT8V97003_REG_RDIV_HIGH, (uint8_t)~(IDT8V97003_REG_RDIV_HIGH_REF_DBL_DELAY | IDT8V97003_REG_RDIV_HIGH_INPUT_TYPE), ((freq < 50000000UL) ? IDT8V97003_REG_RDIV_HIGH_REF_DBL_DELAY : 0) | (diff ? IDT8V97003_REG_RDIV_HIGH_INPUT_TYPE : 0));

    this->ref_freq = freq;
}
void IDT8V97003::configPFD(uint32_t freq, IDT8V97003::PFDPulseWidth pw)
{
    if(freq > 500000000UL)
        throw std::invalid_argument("8V97003: PFD frequency too high (Valid: <= 500 MHz)");

    if(this->ref_freq < 10000000UL)
        throw std::runtime_error("8V97003: Reference frequency too low (Valid: >= 10 MHz)");

    bool found = false;
    IDT8V97003::RefPathConfig ref_cfg;

    for(uint8_t dbl = 2; dbl > 0; dbl--) // First try with the doubler enabled
    {
        for(uint8_t mult = 1; mult < 64; mult++)
        {
            if(mult == 2)
                continue;

            uint32_t mult_out_freq = this->ref_freq * dbl * mult;

            if(mult > 1 && (mult_out_freq < 160000000UL || mult_out_freq > 250000000UL))
                continue;

            for(uint16_t r_div = 1; r_div < 1024; r_div++)
            {
                uint32_t pfd_freq = mult_out_freq / r_div;

                if(pfd_freq == freq)
                {
                    ref_cfg.doubler_en = (dbl == 2);
                    ref_cfg.mult = mult;
                    ref_cfg.r_div = r_div;

                    found = true;

                    break;
                }
            }

            if(found)
                break;
        }

        if(found)
            break;
    }

    if(!found)
        throw std::runtime_error("8V97003: Could not find a suitable PFD configuration");

    this->configPFD(ref_cfg, pw);
}
void IDT8V97003::configPFD(IDT8V97003::RefPathConfig ref_cfg, IDT8V97003::PFDPulseWidth pw)
{
    uint8_t pw_val;

    switch(pw)
    {
        case IDT8V97003::PFDPulseWidth::PFD_PW_260ps:
            pw_val = IDT8V97003_REG_PFD_PULSE_WIDTH_PW_260ps;
        break;
        case IDT8V97003::PFDPulseWidth::PFD_PW_348ps:
            pw_val = IDT8V97003_REG_PFD_PULSE_WIDTH_PW_348ps;
        break;
        case IDT8V97003::PFDPulseWidth::PFD_PW_487ps:
            pw_val = IDT8V97003_REG_PFD_PULSE_WIDTH_PW_487ps;
        break;
        case IDT8V97003::PFDPulseWidth::PFD_PW_583ps:
            pw_val = IDT8V97003_REG_PFD_PULSE_WIDTH_PW_583ps;
        break;
        default:
            throw std::runtime_error("8V97003: Invalid PFD pulse width");
    }

    if(this->ref_freq < 10000000UL)
        throw std::runtime_error("8V97003: Reference frequency too low (Valid: >= 10 MHz)");

    if(ref_cfg.mult < 1 || ref_cfg.mult == 2 || ref_cfg.mult > 63)
        throw std::invalid_argument("8V97003: Invalid multiplier (Valid: 1, 3-63)");

    if(ref_cfg.r_div < 1 || ref_cfg.r_div > 1023)
        throw std::invalid_argument("8V97003: Invalid R divider (Valid: 1-1023)");

    if(this->ref_freq > (ref_cfg.doubler_en ? 250000000UL : 1600000000UL))
        throw std::runtime_error("8V97003: Reference frequency too high (Valid: <= " + std::to_string(ref_cfg.doubler_en ? 250 : 1600) + " MHz)");

    uint32_t mult_out_freq = this->ref_freq * (ref_cfg.doubler_en ? 2 : 1) * ref_cfg.mult;

    if(ref_cfg.mult > 1 && (mult_out_freq < 160000000UL || mult_out_freq > 250000000UL))
            throw std::runtime_error("8V97003: Multiplier output frequency out of range (Valid: 160-250 MHz)");

    uint32_t pfd_freq = mult_out_freq / ref_cfg.r_div;

    if(pfd_freq > 500000000UL)
        throw std::runtime_error("8V97003: PFD frequency too high (Valid: <= 500 MHz)");

    // Calculate band select clock divider
    uint32_t band_sel_clock = pfd_freq;
    uint16_t band_sel_div = 1;

    while(band_sel_div < 8192)
    {
        if(band_sel_clock >= 50000UL && band_sel_clock <= 100000UL)
            break;

        band_sel_div++;
        band_sel_clock = pfd_freq / band_sel_div;
    }

    if(band_sel_div >= 8192)
        throw std::runtime_error("8V97003: Could not find a suitable band select clock divider");

    std::lock_guard<std::mutex> lock(this->mutex);

    if(ref_cfg.mult > 1)
    {
        // Multiplier enabled, enable and reset
        this->rmwReg(IDT8V97003_REG_MULT_CTL1, 0x07, IDT8V97003_REG_MULT_CTL1_MULT_MUX_ENA | IDT8V97003_REG_MULT_CTL1_MULT_D2S_ENA | IDT8V97003_REG_MULT_CTL1_MULT_CP_ENA);
        this->writeReg(IDT8V97003_REG_MULT_CTL0, IDT8V97003_REG_MULT_CTL0_MULT_EN | IDT8V97003_REG_MULT_CTL0_MULT_RESET);

        this->transferDoubleBuffer(); // Ensure it is enabled and properly reset

        // Program the multiplication value (does not apply until the next buffer transfer)
        this->writeReg(IDT8V97003_REG_MULT_CTL0, IDT8V97003_REG_MULT_CTL0_MULT_EN | (ref_cfg.mult & 0x3F));
    }
    else
    {
        // Multiplier disabled, disable and force low control voltage (does not apply until the next buffer transfer)
        this->writeReg(IDT8V97003_REG_MULT_CTL0, 0);
        this->rmwReg(IDT8V97003_REG_MULT_CTL1, 0x07, IDT8V97003_REG_MULT_CTL1_MULT_FORCE_VCLOW);
    }

    this->writeReg(IDT8V97003_REG_RDIV_LOW, ref_cfg.r_div & 0xFF);
    this->rmwReg(IDT8V97003_REG_RDIV_HIGH, IDT8V97003_REG_RDIV_HIGH_REF_DBL_DELAY | IDT8V97003_REG_RDIV_HIGH_INPUT_TYPE, (ref_cfg.doubler_en ? IDT8V97003_REG_RDIV_HIGH_REF_DBL_EN : 0) | ((ref_cfg.r_div >> 8) & 0x03));

    this->writeReg16(IDT8V97003_REG_BAND_SEL_DIV_LOW, band_sel_div & 0x1FFF);

    this->transferDoubleBuffer();

    this->rmwReg(IDT8V97003_REG_PFD_PULSE_WIDTH, ~0x0C, (pw_val & 0x0C));
}
uint32_t IDT8V97003::_getReferenceDoublerInputFrequency()
{
    uint8_t reg = this->readReg(IDT8V97003_REG_RDIV_HIGH);

    if(!(reg & IDT8V97003_REG_RDIV_HIGH_REF_DBL_EN))
        return 0;

    return this->ref_freq;
}
uint32_t IDT8V97003::_getReferenceMultiplierInputFrequency()
{
    uint8_t reg[2];

    this->readReg(IDT8V97003_REG_MULT_CTL0, reg, 2);

    if(!(reg[1] & IDT8V97003_REG_MULT_CTL1_MULT_MUX_ENA))
        return 0;

    if(!(reg[1] & IDT8V97003_REG_MULT_CTL1_MULT_D2S_ENA))
        return 0;

    if(!(reg[1] & IDT8V97003_REG_MULT_CTL1_MULT_CP_ENA))
        return 0;

    if(reg[1] & IDT8V97003_REG_MULT_CTL1_MULT_FORCE_VCLOW)
        return 0;

    if(reg[1] & IDT8V97003_REG_MULT_CTL1_MULT_FORCE_VCHI)
        return 0;

    if(!(reg[0] & IDT8V97003_REG_MULT_CTL0_MULT_EN))
        return 0;

    if(reg[0] & IDT8V97003_REG_MULT_CTL0_MULT_RESET)
        return 0;

    uint32_t mult_in = this->_getReferenceDoublerOutputFrequency();

    if(!mult_in)
        mult_in = this->ref_freq;

    return mult_in;
}
uint32_t IDT8V97003::_getReferenceMultiplierOutputFrequency()
{
    uint8_t mult = this->readReg(IDT8V97003_REG_MULT_CTL0) & 0x3F;

    if(!mult)
        return 0;

    return this->_getReferenceMultiplierInputFrequency() * mult;
}
uint32_t IDT8V97003::_getReferenceDividerInputFrequency()
{
    uint32_t ref_div_in = this->_getReferenceMultiplierOutputFrequency();

    if(!ref_div_in)
        ref_div_in = this->_getReferenceDoublerOutputFrequency();

    if(!ref_div_in)
        ref_div_in = this->ref_freq;

    return ref_div_in;
}
uint32_t IDT8V97003::_getReferenceDividerOutputFrequency()
{
    uint16_t r_div = this->readReg16(IDT8V97003_REG_RDIV_LOW) & 0x3FF;

    if(!r_div)
        r_div = 1;

    return this->_getReferenceDividerInputFrequency() / r_div;
}

void IDT8V97003::configChargePump(IDT8V97003::ChargePumpConfig cfg)
{
    cfg.icp_pmos = cfg.icp_pmos * 6.0 - 1;

    if(cfg.icp_pmos < 0 || cfg.icp_pmos > 63)
        throw std::invalid_argument("8V97003: Invalid PMOS charge pump current (Valid: 0.167-10.67 mA)");

    cfg.icp_nmos = cfg.icp_nmos * 6.0 - 1;

    if(cfg.icp_nmos < 0 || cfg.icp_nmos > 63)
        throw std::invalid_argument("8V97003: Invalid NMOS charge pump current (Valid: 0.167-10.67 mA)");

    cfg.icp_bleeder = cfg.icp_bleeder / 0.02;

    if(cfg.icp_bleeder < 0 || cfg.icp_bleeder > 127)
        throw std::invalid_argument("8V97003: Invalid bleeder charge pump current (Valid: 0-2.54 mA)");

    uint8_t buf[3];

    buf[0] = (uint8_t)cfg.icp_pmos & 0x3F;
    buf[1] = (uint8_t)cfg.icp_nmos & 0x3F;
    buf[2] = (uint8_t)cfg.icp_bleeder & 0x7F;

    std::lock_guard<std::mutex> lock(this->mutex);

    this->writeReg(IDT8V97003_REG_ICP_PMOS, buf, 3);
}
IDT8V97003::ChargePumpConfig IDT8V97003::getChargePumpConfig()
{
    uint8_t buf[3];

    std::lock_guard<std::mutex> lock(this->mutex);

    this->readReg(IDT8V97003_REG_ICP_PMOS, buf, 3);

    return {
        .icp_pmos = (double)(buf[0] & 0x3F) / 6.0 + 1,
        .icp_nmos = (double)(buf[1] & 0x3F) / 6.0 + 1,
        .icp_bleeder = (double)(buf[2] & 0x7F) * 0.02
    };
}
double IDT8V97003::getChargePumpPositiveCurrent()
{
    std::lock_guard<std::mutex> lock(this->mutex);

    uint8_t reg = this->readReg(IDT8V97003_REG_ICP_PMOS);

    return (double)(reg & 0x3F) / 6.0 + 1;
}
void IDT8V97003::setChargePumpPositiveCurrent(double current)
{
    current = current * 6.0 - 1;

    if(current < 0 || current > 63)
        throw std::invalid_argument("8V97003: Invalid PMOS charge pump current (Valid: 0.167-10.67 mA)");

    std::lock_guard<std::mutex> lock(this->mutex);

    this->writeReg(IDT8V97003_REG_ICP_PMOS, (uint8_t)current & 0x3F);
}
double IDT8V97003::getChargePumpNegativeCurrent()
{
    std::lock_guard<std::mutex> lock(this->mutex);

    uint8_t reg = this->readReg(IDT8V97003_REG_ICP_NMOS);

    return (double)(reg & 0x3F) / 6.0 + 1;
}
void IDT8V97003::setChargePumpNegativeCurrent(double current)
{
    current = current * 6.0 - 1;

    if(current < 0 || current > 63)
        throw std::invalid_argument("8V97003: Invalid NMOS charge pump current (Valid: 0.167-10.67 mA)");

    std::lock_guard<std::mutex> lock(this->mutex);

    this->writeReg(IDT8V97003_REG_ICP_NMOS, (uint8_t)current & 0x3F);
}
double IDT8V97003::getChargePumpBleederCurrent()
{
    std::lock_guard<std::mutex> lock(this->mutex);

    uint8_t reg = this->readReg(IDT8V97003_REG_ICP_BLEEDER);

    return (double)(reg & 0x7F) * 0.02;
}
void IDT8V97003::setChargePumpBleederCurrent(double current)
{
    current = current / 0.02;

    if(current < 0 || current > 127)
        throw std::invalid_argument("8V97003: Invalid bleeder charge pump current (Valid: 0-2.54 mA)");

    std::lock_guard<std::mutex> lock(this->mutex);

    this->writeReg(IDT8V97003_REG_ICP_BLEEDER, (uint8_t)current & 0x7F);
}

void IDT8V97003::enableLockDetect(bool enable)
{
    std::lock_guard<std::mutex> lock(this->mutex);

    // Yes, it looks like it is inverted (DISABLE = 1 is actually enabled...)
    this->rmwReg(IDT8V97003_REG_LD_CTL0, (uint8_t)~IDT8V97003_REG_LD_CTL0_LD_DISABLE, enable ? IDT8V97003_REG_LD_CTL0_LD_DISABLE : 0);
}
void IDT8V97003::enableAutoRecal(bool enable)
{
    std::lock_guard<std::mutex> lock(this->mutex);

    this->rmwReg(IDT8V97003_REG_LD_CTL0, (uint8_t)~IDT8V97003_REG_LD_CTL0_AUTO_RECAL_EN, enable ? IDT8V97003_REG_LD_CTL0_AUTO_RECAL_EN : 0);
}
IDT8V97003::LDPrecision IDT8V97003::getLockDetectPrecision()
{
    std::lock_guard<std::mutex> lock(this->mutex);

    uint8_t reg = this->readReg(IDT8V97003_REG_LD_CTL1) & 0x07;

    switch(reg)
    {
        case IDT8V97003_REG_LD_CTL1_LD_PRECISION_0p5ns:
            return IDT8V97003::LDPrecision::LD_PREC_0p5ns;
        break;
        case IDT8V97003_REG_LD_CTL1_LD_PRECISION_1p0ns:
            return IDT8V97003::LDPrecision::LD_PREC_1p0ns;
        break;
        case IDT8V97003_REG_LD_CTL1_LD_PRECISION_1p8ns:
            return IDT8V97003::LDPrecision::LD_PREC_1p8ns;
        break;
        case IDT8V97003_REG_LD_CTL1_LD_PRECISION_3p0ns:
            return IDT8V97003::LDPrecision::LD_PREC_3p0ns;
        break;
        case IDT8V97003_REG_LD_CTL1_LD_PRECISION_6p4ns:
        case 0x05: // Repeated setting
            return IDT8V97003::LDPrecision::LD_PREC_6p4ns;
        break;
        case IDT8V97003_REG_LD_CTL1_LD_PRECISION_10p4ns:
        case 0x07: // Repeated setting
            return IDT8V97003::LDPrecision::LD_PREC_10p4ns;
        break;
        default:
            throw std::runtime_error("8V97003: Invalid lock detect precision");
    }
}
void IDT8V97003::setLockDetectPrecision(IDT8V97003::LDPrecision prec)
{
    uint8_t reg;

    switch(prec)
    {
        case IDT8V97003::LDPrecision::LD_PREC_0p5ns:
            reg = IDT8V97003_REG_LD_CTL1_LD_PRECISION_0p5ns;
        break;
        case IDT8V97003::LDPrecision::LD_PREC_1p0ns:
            reg = IDT8V97003_REG_LD_CTL1_LD_PRECISION_1p0ns;
        break;
        case IDT8V97003::LDPrecision::LD_PREC_1p8ns:
            reg = IDT8V97003_REG_LD_CTL1_LD_PRECISION_1p8ns;
        break;
        case IDT8V97003::LDPrecision::LD_PREC_3p0ns:
            reg = IDT8V97003_REG_LD_CTL1_LD_PRECISION_3p0ns;
        break;
        case IDT8V97003::LDPrecision::LD_PREC_6p4ns:
            reg = IDT8V97003_REG_LD_CTL1_LD_PRECISION_6p4ns;
        break;
        case IDT8V97003::LDPrecision::LD_PREC_10p4ns:
            reg = IDT8V97003_REG_LD_CTL1_LD_PRECISION_10p4ns;
        break;
        default:
            throw std::runtime_error("8V97003: Invalid lock detect precision");
    }

    std::lock_guard<std::mutex> lock(this->mutex);

    this->rmwReg(IDT8V97003_REG_LD_CTL1, ~0x07, reg);
}
IDT8V97003::LDPinMode IDT8V97003::getLockDetectPinMode()
{
    std::lock_guard<std::mutex> lock(this->mutex);

    uint8_t reg = this->readReg(IDT8V97003_REG_LD_CTL1) & 0x30;

    switch(reg)
    {
        case IDT8V97003_REG_LD_CTL1_LD_PIN_MODE_LD:
            return IDT8V97003::LDPinMode::LD_MODE_LD;
        break;
        case IDT8V97003_REG_LD_CTL1_LD_PIN_MODE_CAL_DONE:
            return IDT8V97003::LDPinMode::LD_MODE_CAL_DONE;
        break;
        case IDT8V97003_REG_LD_CTL1_LD_PIN_MODE_LOW:
            return IDT8V97003::LDPinMode::LD_MODE_LOW;
        break;
        case IDT8V97003_REG_LD_CTL1_LD_PIN_MODE_HIGH:
            return IDT8V97003::LDPinMode::LD_MODE_HIGH;
        break;
        default:
            throw std::runtime_error("8V97003: Invalid lock detect pin mode");
    }
}
void IDT8V97003::setLockDetectPinMode(IDT8V97003::LDPinMode mode)
{
    uint8_t reg;

    switch(mode)
    {
        case IDT8V97003::LDPinMode::LD_MODE_LD:
            reg = IDT8V97003_REG_LD_CTL1_LD_PIN_MODE_LD;
        break;
        case IDT8V97003::LDPinMode::LD_MODE_CAL_DONE:
            reg = IDT8V97003_REG_LD_CTL1_LD_PIN_MODE_CAL_DONE;
        break;
        case IDT8V97003::LDPinMode::LD_MODE_LOW:
            reg = IDT8V97003_REG_LD_CTL1_LD_PIN_MODE_LOW;
        break;
        case IDT8V97003::LDPinMode::LD_MODE_HIGH:
            reg = IDT8V97003_REG_LD_CTL1_LD_PIN_MODE_HIGH;
        break;
        default:
            throw std::runtime_error("8V97003: Invalid lock detect pin mode");
    }

    std::lock_guard<std::mutex> lock(this->mutex);

    this->rmwReg(IDT8V97003_REG_LD_CTL1, ~0x30, reg);
}

uint64_t IDT8V97003::_getVCOFrequency()
{
    uint64_t pfd_freq = this->_getPFDFrequency();

    if(!pfd_freq)
        return 0;

    uint8_t buf[10];

    this->readReg(IDT8V97003_REG_NINT_LOW, buf, 10);

    uint16_t a = buf[0] | ((uint16_t)buf[1] << 8);
    uint32_t b = buf[2] | ((uint32_t)buf[3] << 8) | ((uint32_t)buf[4] << 16) | ((uint32_t)buf[5] << 24);
    uint32_t c = buf[6] | ((uint32_t)buf[7] << 8) | ((uint32_t)buf[8] << 16) | ((uint32_t)buf[9] << 24);

    return pfd_freq * a + ((pfd_freq * b) / c);
}
uint64_t IDT8V97003::getFrequency()
{
    std::lock_guard<std::mutex> lock(this->mutex);

    uint64_t vco_freq = this->_getVCOFrequency();

    if(!vco_freq)
        return 0;

    uint8_t reg = this->readReg(IDT8V97003_REG_OUT_DIV_DBL);

    if(reg & IDT8V97003_REG_OUT_DIV_DBL_OUT_DBL_ENA)
        return vco_freq * 2;

    if(reg & IDT8V97003_REG_OUT_DIV_DBL_OUT_DIV_ENA)
    {
        uint8_t div = reg & 0x07;

        if(div == 0 || div > 5)
            throw std::runtime_error("8V97003: Invalid output divider");

        return vco_freq >> div;
    }

    return vco_freq;
}
void IDT8V97003::setFrequency(uint64_t freq, int32_t cal_timeout, int32_t lock_timeout)
{
    if(freq < 171875000ULL)
        throw std::invalid_argument("8V97003: Frequency too low (Valid: >= 171.875 MHz)");

    if(freq > 18000000000ULL)
        throw std::invalid_argument("8V97003: Frequency too high (Valid: <= 18 GHz)");

    // VCO works from 5.5 GHz to 11 GHz
    // For frequencies below 5.5 GHz, the VCO divider must be used
    // For frequencies above 11 GHz, the VCO doubler must be used
    uint8_t m0_div = 0;
    bool out_dbl_en = false;
    uint64_t vco_freq;

    if(freq < 5500000000ULL)
    {
        for(uint8_t i = 1; i < 6; i++)
        {
            vco_freq = freq << i;

            if(vco_freq >= 5500000000ULL && vco_freq <= 11000000000ULL) // VCO operating range
            {
                m0_div = i;

                break;
            }
        }

        if(!m0_div)
            throw std::runtime_error("8V97003: Could not find a suitable VCO output divider");
    }
    else if(freq > 11000000000ULL)
    {
        vco_freq = freq / 2;
        out_dbl_en = true;
    }
    else
    {
        vco_freq = freq;
    }

    std::lock_guard<std::mutex> lock(this->mutex);

    uint32_t pfd_freq = this->_getPFDFrequency();

    if(!pfd_freq)
        throw std::runtime_error("8V97003: Invalid PFD frequency (Did you configure the PFD first?)");

    uint64_t b = vco_freq;
    uint64_t c = pfd_freq;
    uint64_t a = Utils::GetMixedNumber(b, c);

    while(c >= BIT(32))
    {
        b >>= 1;
        c >>= 1;
    }

    if(b > 0 && pfd_freq > 250000000UL)
        throw std::runtime_error("8V97003: Fractional mode not supported with PFD above 250 MHz");

    if(b >= c) // Sanity check
        throw std::runtime_error("8V97003: Fractional part out of range (" + std::to_string(b) + " / " + std::to_string(c) + ", Valid: < 1)");

    if(a > (BIT(16) - 1) || a < 12) // Integer limits (min 12, 16-bit wide)
        throw std::runtime_error("8V97003: Integer part out of range (" + std::to_string(a) + ", Valid: 12-65535)");

    if(b > 0)
    {
        // Optional: Check if the fractional part is too close to the integer boundary
        /*
        double dFrac = (double)b / (double)c;

        if(dFrac < 0.1)
            throw std::runtime_error("8V97003: PLL operating close to integer-boundary mode (" + std::to_string(b) + " / " + std::to_string(c) + " = " + std::to_string(dFrac) + ")");
        */

        while(!(c & BIT(31))) // Maximise MOD and FRAC to improve phase noise
        {
            c <<= 1;
            b <<= 1;
        }
    }
    else
    {
        c = 2;
    }

    uint8_t man_ctl_reg = IDT8V97003_REG_MANUAL_CTL_FORCE_RELOCK | IDT8V97003_REG_MANUAL_CTL_MANUAL_RESYNC;

    uint8_t buf[10];

    buf[0] = (a >> 0) & 0xFF;
    buf[1] = (a >> 8) & 0xFF;
    buf[2] = (b >> 0) & 0xFF;
    buf[3] = (b >> 8) & 0xFF;
    buf[4] = (b >> 16) & 0xFF;
    buf[5] = (b >> 24) & 0xFF;
    buf[6] = (c >> 0) & 0xFF;
    buf[7] = (c >> 8) & 0xFF;
    buf[8] = (c >> 16) & 0xFF;
    buf[9] = (c >> 24) & 0xFF;

    this->writeReg(IDT8V97003_REG_NINT_LOW, buf, 10);

    if(b > 0)
    {
        // Re-calculate the phase word since it depends and is limited by MOD
        uint32_t prev_c = this->readReg32(IDT8V97003_REG_NMOD_LOW); // Its ok to read after write because the register is buffered
        uint64_t phase = this->readReg32(IDT8V97003_REG_PHASE_LOW);

        phase = ((phase * (uint64_t)c) / prev_c);

        if(phase >= c)
            phase = c - 1;

        this->writeReg32(IDT8V97003_REG_PHASE_LOW, phase & 0xFFFFFFFF);

        man_ctl_reg |= IDT8V97003_REG_MANUAL_CTL_PH_ADJ;
    }

    this->transferDoubleBuffer();

    this->rmwReg(IDT8V97003_REG_DSM_CTL, 0x0F, (b > 0) ? IDT8V97003_REG_DSM_CTL_DSM_ORDER_3RD : IDT8V97003_REG_DSM_CTL_DSM_ORDER_OFF);

    uint8_t out_reg = 0;

    if(out_dbl_en)
    {
        out_reg |= IDT8V97003_REG_OUT_DIV_DBL_OUT_DBL_ENA;

        if(vco_freq < 7000000000ULL)
            out_reg |= IDT8V97003_REG_OUT_DIV_DBL_OUT_DBL_FREQ;
    }

    if(m0_div > 0)
        out_reg |= IDT8V97003_REG_OUT_DIV_DBL_OUT_DIV_ENA | (m0_div & 0x07);

    this->writeReg(IDT8V97003_REG_OUT_DIV_DBL, out_reg);
    this->rmwReg(IDT8V97003_REG_MANUAL_CTL, 0x0F, man_ctl_reg);

    // Check if the calibration (band selection) completes
    if(cal_timeout >= 0)
    {
        uint8_t status = this->readReg(IDT8V97003_REG_LD_CAL_VCO_STATUS);

        while(cal_timeout > 0 && !(status & IDT8V97003_REG_LD_CAL_VCO_STATUS_BAND_SEL_DONE))
        {
            usleep(10);

            cal_timeout -= 10;
            status = this->readReg(IDT8V97003_REG_LD_CAL_VCO_STATUS);
        }

        if(!(status & IDT8V97003_REG_LD_CAL_VCO_STATUS_BAND_SEL_DONE))
            throw std::runtime_error("8V97003: Calibration timeout (Status: " + std::to_string(status) + ")");
    }

    // Check if the PLL locks
    if(this->readReg(IDT8V97003_REG_LD_CTL0) & IDT8V97003_REG_LD_CTL0_LD_DISABLE)
    {
        if(lock_timeout >= 0)
        {
            uint8_t status = this->readReg(IDT8V97003_REG_LD_CAL_VCO_STATUS);

            while(lock_timeout > 0 && !(status & IDT8V97003_REG_LD_CAL_VCO_STATUS_DIG_LOCK))
            {
                usleep(10);

                lock_timeout -= 10;
                status = this->readReg(IDT8V97003_REG_LD_CAL_VCO_STATUS);
            }

            if(!(status & IDT8V97003_REG_LD_CAL_VCO_STATUS_DIG_LOCK))
                throw std::runtime_error("8V97003: Lock timeout (Status: " + std::to_string(status) + ")");
        }
    }
    else
    {
        // throw std::runtime_error("8V97003: Lock detect circuit disabled, PLL may not be locked");
    }
}

double IDT8V97003::getPhase()
{
    std::lock_guard<std::mutex> lock(this->mutex);

    uint32_t b = this->readReg32(IDT8V97003_REG_NFRAC_LOW);

    if(!b)
        return 0; // Phase adjustment not supported in integer mode (FRAC = 0)

    uint8_t buf[8];

    this->readReg(IDT8V97003_REG_NMOD_LOW, buf, 8);

    uint32_t c = buf[0] | ((uint32_t)buf[1] << 8) | ((uint32_t)buf[2] << 16) | ((uint32_t)buf[3] << 24);

    if(c < 2)
        throw std::runtime_error("8V97003: Invalid modulus");

    uint32_t phase = buf[4] | ((uint32_t)buf[5] << 8) | ((uint32_t)buf[6] << 16) | ((uint32_t)buf[7] << 24);

    if(phase > c)
        throw std::runtime_error("8V97003: Phase out of range (" + std::to_string(phase) + " > " + std::to_string(c) + ")");

    return (double)phase / (double)c * 360.0;
}
void IDT8V97003::setPhase(double phase)
{
    while(phase >= 360.0)
        phase -= 360.0;

    while(phase < 0.0)
        phase += 360.0;

    std::lock_guard<std::mutex> lock(this->mutex);

    uint32_t b = this->readReg32(IDT8V97003_REG_NFRAC_LOW);

    if(!b)
        throw std::runtime_error("8V97003: Phase adjustment not supported in integer mode");

    uint32_t c = this->readReg32(IDT8V97003_REG_NMOD_LOW);

    if(c < 2)
        throw std::runtime_error("8V97003: Invalid modulus");

    uint32_t phase_word = (uint32_t)((double)c * phase / 360.0);

    this->writeReg32(IDT8V97003_REG_PHASE_LOW, phase_word);
    this->transferDoubleBuffer();

    this->rmwReg(IDT8V97003_REG_MANUAL_CTL, (uint8_t)~IDT8V97003_REG_MANUAL_CTL_PH_ADJ, IDT8V97003_REG_MANUAL_CTL_PH_ADJ);
}