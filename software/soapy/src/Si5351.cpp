#include "Si5351.hpp"

uint32_t Si5351::CalcOptPLLFreq(std::vector<uint32_t> freqs, uint32_t src_freq, std::vector<bool> &achieved)
{
    // Validate and remove duplicates
    std::vector<uint32_t> _freqs;

    for(uint32_t freq : freqs)
    {
        bool found = false;

        for(uint32_t _freq : _freqs)
        {
            if(freq < 500000UL / 128)
                throw std::invalid_argument("Si5351: Invalid frequency (" + std::to_string(freq) + ", Valid: > 500 kHz / 128)");

            if(freq > 150000000UL)
                throw std::invalid_argument("Si5351: Invalid frequency (" + std::to_string(freq) + ", Valid: < 150 MHz)");

            if(freq == _freq)
            {
                found = true;

                break;
            }
        }

        if(!found)
            _freqs.push_back(freq);
    }

    // Generate all possible combinations of frequencies
    std::vector<std::vector<uint32_t>> combs;

    size_t max_msk = BIT(_freqs.size()) - 1;

    while(max_msk)
    {
        std::vector<uint32_t> c;

        for(size_t i = 0; i < _freqs.size(); i++)
        {
            if(max_msk & BIT(i))
                c.push_back(_freqs[i]);
        }

        combs.push_back(c);

        max_msk--;
    }

    // Sort to get the combinations with most frequencies first
    std::sort(
        combs.begin(),
        combs.end(),
        [](const std::vector<uint32_t> &a, const std::vector<uint32_t> &b) -> bool
        {
            return a.size() > b.size();
        }
    );

    // Iterate through all combinations and find the best one
    uint32_t best_pll_freq = 0;
    size_t best_comb_idx = 0;

    for(size_t i = 0; i < combs.size(); i++)
    {
        std::vector<uint32_t> comb = combs[i];

        if(best_pll_freq > 0 && comb.size() <= combs[best_comb_idx].size())
            continue; // Don't bother with combinations that have less frequencies than the current best one

        // Calculate the PLL frequency
        uint64_t pll_freq = src_freq;

        for(uint32_t freq : comb)
            pll_freq = Utils::GetLCM(pll_freq, freq);

        while(pll_freq < 600000000ULL)
            pll_freq <<= 1;

        if(pll_freq > 900000000ULL)
            continue;

        // Check if all dividers are valid
        bool valid = true;

        for(uint32_t freq : comb)
        {
            Si5351::MultiSynthDivider div = Si5351::CalculateMSDivider(pll_freq, freq);

            if(div.b > 0 || div.a < 4 || div.a > 2048 || div.a & 1)
            {
                valid = false;

                break;
            }
        }

        if(!valid)
            continue;

        best_pll_freq = pll_freq;
        best_comb_idx = i;
    }

    // Set which frequencies were achieved
    achieved.clear();

    for(size_t i = 0; i < _freqs.size(); i++)
    {
        bool found = false;

        if(best_pll_freq > 0)
        {
            for(size_t j = 0; j < combs[best_comb_idx].size(); j++)
            {
                if(_freqs[i] == combs[best_comb_idx][j])
                {
                    found = true;

                    break;
                }
            }
        }

        achieved.push_back(found);
    }

    return best_pll_freq;
}
std::vector<uint32_t> Si5351::CalcOptPLLFreqs(std::vector<uint32_t> freqs, uint32_t src_freq, std::vector<int8_t> &assigned_pll)
{
    std::vector<uint32_t> pll_freqs;

    // Try one PLL with all frequencies
    std::vector<uint32_t> plla_freqs = freqs;
    std::vector<bool> plla_achieved;

    uint32_t plla_freq = Si5351::CalcOptPLLFreq(plla_freqs, src_freq, plla_achieved);

    pll_freqs.push_back(plla_freq);

    // Check achieved frequencies and build a list of frequencies to try with the second PLL
    std::vector<uint32_t> pllb_freqs;
    std::vector<bool> pllb_achieved;

    assigned_pll.clear();

    for(size_t i = 0; i < freqs.size(); i++)
    {
        if(plla_achieved[i])
        {
            assigned_pll.push_back(0);

            continue;
        }

        assigned_pll.push_back(-1);
        pllb_freqs.push_back(freqs[i]);
    }

    if(pllb_freqs.size() == 0)
        return pll_freqs;

    // Try the second PLL with the remaining frequencies
    uint32_t pllb_freq = Si5351::CalcOptPLLFreq(pllb_freqs, src_freq, pllb_achieved);

    pll_freqs.push_back(pllb_freq);

    // Check achieved frequencies
    for(size_t i = 0; i < freqs.size(); i++)
    {
        if(assigned_pll[i] != -1)
            continue;

        for(size_t j = 0; j < pllb_freqs.size(); j++)
        {
            if(freqs[i] == pllb_freqs[j] && pllb_achieved[j])
            {
                assigned_pll[i] = 1;

                break;
            }
        }
    }

    return pll_freqs;
}

Si5351::MultiSynthDivider Si5351::CalculateMSDivider(uint32_t f1, uint32_t f2)
{
    uint64_t b = f1;
    uint64_t c = f2;
    uint64_t a = Utils::GetMixedNumber(b, c);

    while(c >= BIT(20))
    {
        b >>= 1;
        c >>= 1;
    }

    Si5351::MultiSynthDivider div;

    div.a = a;
    div.b = b;
    div.c = c;

    return div;
}
void Si5351::ValidatePLLMSDivider(Si5351::MultiSynthDivider div)
{
    if(div.a < 15 || div.a > 90) // Integer part limits
        throw std::invalid_argument("Si5351: Invalid integer feedback divider (" + std::to_string(div.a) + ", Valid: 15-90)");

    if(div.a == 90 && div.b > 0) // If the integer part is 90, check if the fractional part is null
        throw std::invalid_argument("Si5351: Invalid feedback divider (" + std::to_string(div.a) + " + (" + std::to_string(div.b) + " / " + std::to_string(div.c) + "), Valid: 15-90)");
}
void Si5351::ValidateIntClockMSDivider(Si5351::MultiSynthDivider div)
{
    if(div.a < 6 || div.a > 254 || (div.a & 1))
        throw std::invalid_argument("Si5351: Invalid integer divider (" + std::to_string(div.a) + ", Valid: 6-254, Even)");

    if(div.b > 0)
        throw std::invalid_argument("Si5351: Fractional part not supported (Div: " + std::to_string(div.a) + " + (" + std::to_string(div.b) + " / " + std::to_string(div.c) + "))");
}
void Si5351::ValidateFracClockMSDivider(Si5351::MultiSynthDivider div)
{
    if(div.a < 4 || div.a > 2048) // Integer part limits
        throw std::invalid_argument("Si5351: Invalid integer divider (" + std::to_string(div.a) + ", Valid: 4, 6, 8-2048)");

    if(div.a < 8 && div.a != 4 && div.a != 6) // Integer part limits
        throw std::invalid_argument("Si5351: Invalid integer divider (" + std::to_string(div.a) + ", Valid: 4, 6, 8-2048)");

    if(div.a < 8 && div.b > 0) // Fractional dividers below 8 are not supported
        throw std::invalid_argument("Si5351: Fractional part not supported for integer < 8 (Div: " + std::to_string(div.a) + " + (" + std::to_string(div.b) + " / " + std::to_string(div.c) + "))");

    if(div.a == 2048 && div.b > 0) // If the integer part is 2048, check if the fractional part is null
        throw std::invalid_argument("Si5351: Invalid feedback divider (" + std::to_string(div.a) + " + (" + std::to_string(div.b) + " / " + std::to_string(div.c) + "), Valid: 4, 6, 8-2048)");
}

void Si5351::ISR(void *_this)
{
    if(_this == nullptr)
        return;

    (static_cast<Si5351 *>(_this))->handleIRQ();
}
void Si5351::handleIRQ()
{
    std::lock_guard<std::mutex> lock(this->mutex);

    uint8_t flags = this->readReg(SI5351_REG_IRQ_FLAGS);
    this->writeReg(SI5351_REG_IRQ_FLAGS, 0x00);

    (void)flags;
    // TODO:
}

void Si5351::readReg(uint8_t reg, uint8_t *dst, uint8_t count)
{
    if(this->iic.controller == nullptr)
        throw std::runtime_error("Si5351: IIC not initialized");

    if(!count)
        return;

    if(dst == nullptr)
        throw std::runtime_error("Si5351: Invalid destination buffer");

    this->iic.controller->lock(); // Lock the I2C bus so the next two transactions are not interrupted

    this->iic.controller->write(this->iic.addr, reg, AXIIIC::Stop::RESTART);
    this->iic.controller->read(this->iic.addr, dst, count, AXIIIC::Stop::STOP);

    this->iic.controller->unlock(); // Unlock the I2C bus
}
void Si5351::writeReg(uint8_t reg, uint8_t *src, uint8_t count)
{
    if(this->iic.controller == nullptr)
        throw std::runtime_error("Si5351: IIC not initialized");

    if(!count)
        return;

    if(src == nullptr)
        throw std::runtime_error("Si5351: Invalid destination buffer");

    uint8_t buf[256];

    buf[0] = reg;

    for(uint16_t i = 0; i < count; i++)
        buf[i + 1] = src[i];

    // No need to lock the I2C bus here, since I2C transactions are guaranteed to be atomic
    this->iic.controller->write(this->iic.addr, buf, count + 1, AXIIIC::Stop::STOP);
}

Si5351::Si5351(Si5351::IICConfig iic, Si5351::GPIOConfig oe_gpio, Si5351::IRQConfig irq_config)
{
    this->iic = iic;
    this->oe_gpio = oe_gpio;
    this->irq_config = irq_config;

    this->clkin_freq = 0;
    this->xtal_freq = 0;

    this->pll_fb_div[Si5351::PLL::PLLA] = {0, 0, 0};
    this->pll_fb_div[Si5351::PLL::PLLB] = {0, 0, 0};

    this->ms_div[Si5351::MultiSynth::MS0] = {0, 0, 0};
    this->ms_div[Si5351::MultiSynth::MS1] = {0, 0, 0};
    this->ms_div[Si5351::MultiSynth::MS2] = {0, 0, 0};
    this->ms_div[Si5351::MultiSynth::MS3] = {0, 0, 0};
    this->ms_div[Si5351::MultiSynth::MS4] = {0, 0, 0};
    this->ms_div[Si5351::MultiSynth::MS5] = {0, 0, 0};
    this->ms_div[Si5351::MultiSynth::MS6] = {0, 0, 0};
    this->ms_div[Si5351::MultiSynth::MS7] = {0, 0, 0};
}
Si5351::~Si5351()
{
    if(this->irq_config.controller != nullptr)
    {
        this->irq_config.controller->setISR(this->irq_config.irq, nullptr);
        this->irq_config.controller->setIRQEnabled(this->irq_config.irq, false);
    }
}

void Si5351::init()
{
    if(this->iic.controller == nullptr)
        throw std::runtime_error("Si5351: IIC not initialized");

    if(!this->iic.controller->scan(this->iic.addr))
        throw std::runtime_error("Si5351: Device not found on IIC bus");

    uint8_t rev = this->readRevisionID();

    if(rev < 1)
        throw std::runtime_error("Si5351 Rev" + std::to_string(rev) + " is not supported");

    while(this->readStatus() & SI5351_REG_STATUS_SYS_INIT)
        usleep(10);

    this->writeReg(SI5351_REG_CLK_OEB, 0xFF); // Disable all outputs by software

    if(this->oe_gpio.controller == nullptr) // No OE pin control available
    {
        this->writeReg(SI5351_REG_OEB_MASK, 0xFF); // Control all output enables via software
    }
    else
    {
        this->writeReg(SI5351_REG_OEB_MASK, 0x00); // Control all output enables via the OEB pad

        this->globalOutputDisable(); // Disable all outputs by hardware
    }

    this->writeReg(SI5351_REG_IRQ_FLAGS, 0x00); // Clear all IRQs
    this->writeReg(SI5351_REG_IRQ_MASK, 0xFF); // Disable all IRQs

    if(this->irq_config.controller != nullptr) // IRQ support available
    {
        this->irq_config.controller->setISR(this->irq_config.irq, Si5351::ISR, static_cast<void *>(this));
        this->irq_config.controller->setIRQEnabled(this->irq_config.irq, true);
        this->irq_config.controller->setIRQPending(this->irq_config.irq, false);

        this->writeReg(SI5351_REG_IRQ_MASK, 0x00); // Enable all IRQs
    }

    // Enable fanout of XTAL, CLKIN and MS0/4 to all clock outputs
    this->writeReg(SI5351_REG_FANOUT_EN, SI5351_REG_FANOUT_EN_CLKIN_EN | SI5351_REG_FANOUT_EN_XO_EN | SI5351_REG_FANOUT_EN_MS_EN);

    // Power down all clock buffers
    this->powerDownClockOutput(Si5351::ClockOutput::CLK0);
    this->powerDownClockOutput(Si5351::ClockOutput::CLK1);
    this->powerDownClockOutput(Si5351::ClockOutput::CLK2);
    this->powerDownClockOutput(Si5351::ClockOutput::CLK3);
    this->powerDownClockOutput(Si5351::ClockOutput::CLK4);
    this->powerDownClockOutput(Si5351::ClockOutput::CLK5);
    this->powerDownClockOutput(Si5351::ClockOutput::CLK6);
    this->powerDownClockOutput(Si5351::ClockOutput::CLK7);
}

uint8_t Si5351::readRevisionID()
{
    return this->readReg(SI5351_REG_STATUS) & SI5351_REG_STATUS_REVID;
}
uint8_t Si5351::readStatus()
{
    return this->readReg(SI5351_REG_STATUS) & 0xF8;
}

bool Si5351::isGlobalOutputEnabled()
{
    if(this->oe_gpio.controller == nullptr)
        throw std::runtime_error("Si5351: OE GPIO not initialized");

    bool val = this->oe_gpio.controller->getValue(this->oe_gpio.gpio);

    if(this->oe_gpio.invert)
        return val;

    return !val;
}
void Si5351::globalOutputEnable(bool enable)
{
    if(this->oe_gpio.controller == nullptr)
        throw std::runtime_error("Si5351: OE GPIO not initialized");

    if(this->oe_gpio.invert)
        enable = !enable;

    this->oe_gpio.controller->setValue(this->oe_gpio.gpio, !enable);
}

void Si5351::_configCLKIN(uint32_t freq, Si5351::CLKINDivider divider)
{
    if(divider == Si5351::CLKINDivider::CLKIN_DIV_AUTO)
    {
        // Determine the best divider
        divider = Si5351::CLKINDivider::CLKIN_DIV_DIV1;

        while(freq / divider > 40000000UL)
        {
            divider = static_cast<Si5351::CLKINDivider>(divider << 1);

            if(divider == Si5351::CLKINDivider::CLKIN_DIV_DIV8)
                break;
        }
    }

    if(freq / divider < 10000000UL)
        throw std::invalid_argument("Si5351: Divided CLKIN frequency too low (Valid: 10-40 MHz)");

    if(freq / divider > 40000000UL)
        throw std::invalid_argument("Si5351: Divided CLKIN frequency too high (Valid: 10-40 MHz)");

    uint8_t val;

    switch(divider)
    {
        case Si5351::CLKINDivider::CLKIN_DIV_DIV1:
            val = SI5351_REG_PLL_SRC_CLKIN_DIV1;
        break;
        case Si5351::CLKINDivider::CLKIN_DIV_DIV2:
            val = SI5351_REG_PLL_SRC_CLKIN_DIV2;
        break;
        case Si5351::CLKINDivider::CLKIN_DIV_DIV4:
            val = SI5351_REG_PLL_SRC_CLKIN_DIV4;
        break;
        case Si5351::CLKINDivider::CLKIN_DIV_DIV8:
            val = SI5351_REG_PLL_SRC_CLKIN_DIV8;
        break;
        default:
            throw std::invalid_argument("Si5351: Invalid CLKIN divider (Valid: 1, 2, 4, 8)");
    }

    this->rmwReg(SI5351_REG_PLL_SRC, (uint8_t)~0xC0, val);

    this->clkin_freq = freq;
}
uint32_t Si5351::_getDividedCLKINFrequency()
{
    uint8_t val = this->readReg(SI5351_REG_PLL_SRC) & 0xC0;

    switch(val)
    {
        case SI5351_REG_PLL_SRC_CLKIN_DIV1:
            return this->clkin_freq;
        case SI5351_REG_PLL_SRC_CLKIN_DIV2:
            return this->clkin_freq / 2;
        case SI5351_REG_PLL_SRC_CLKIN_DIV4:
            return this->clkin_freq / 4;
        case SI5351_REG_PLL_SRC_CLKIN_DIV8:
            return this->clkin_freq / 8;
        default:
            throw std::runtime_error("Si5351: Invalid CLKIN divider");
    }
}

void Si5351::_configXTAL(uint32_t freq, Si5351::XTALCapacitance cap)
{
    if(freq < 25000000UL)
        throw std::invalid_argument("Si5351: XTAL frequency too low (Valid: 25-27 MHz)");

    if(freq > 27000000UL)
        throw std::invalid_argument("Si5351: XTAL frequency too high (Valid: 25-27 MHz)");

    uint8_t val;

    switch(cap)
    {
        case Si5351::XTALCapacitance::C_6pF:
            val = SI5351_REG_XTAL_CL_6PF;
        break;
        case Si5351::XTALCapacitance::C_8pF:
            val = SI5351_REG_XTAL_CL_8PF;
        break;
        case Si5351::XTALCapacitance::C_10pF:
            val = SI5351_REG_XTAL_CL_10PF;
        break;
        default:
            throw std::invalid_argument("Si5351: Invalid XTAL capacitance (Valid: 6, 8, 10 pF)");
    }

    this->writeReg(SI5351_REG_XTAL_CL, val);

    this->xtal_freq = freq;
}

bool Si5351::isPLLLocked(Si5351::PLL pll)
{
    uint8_t mask;

    switch(pll)
    {
        case Si5351::PLL::PLLA:
            mask = SI5351_REG_STATUS_LOL_A;
        break;
        case Si5351::PLL::PLLB:
            mask = SI5351_REG_STATUS_LOL_B;
        break;
        default:
            throw std::invalid_argument("Si5351: Invalid PLL");
    }

    uint8_t status = this->readStatus();

    return !(status & mask);
}
void Si5351::_resetPLL(Si5351::PLL pll)
{
    uint8_t val;

    switch(pll)
    {
        case Si5351::PLL::PLLA:
            val = SI5351_REG_PLL_RST_PLLA_RESET;
        break;
        case Si5351::PLL::PLLB:
            val = SI5351_REG_PLL_RST_PLLB_RESET;
        break;
        default:
            throw std::invalid_argument("Si5351: Invalid PLL");
    }

    this->writeReg(SI5351_REG_PLL_RST, val);

    while(this->readReg(SI5351_REG_PLL_RST) & val)
        usleep(10);

    while(this->readStatus() & SI5351_REG_STATUS_SYS_INIT) // Somehow the SYS_INIT bit gets set when the PLLs are reset
        usleep(10);
}
void Si5351::_configPLL(Si5351::PLL pll, uint32_t freq, Si5351::PLLSource src)
{
    switch(pll)
    {
        case Si5351::PLL::PLLA:
        case Si5351::PLL::PLLB:
        break;
        default:
            throw std::invalid_argument("Si5351: Invalid PLL");
    }

    if(freq < 600000000UL)
        throw std::invalid_argument("Si5351: VCO frequency too low (Valid: 600-900 MHz)");

    if(freq > 900000000UL)
        throw std::invalid_argument("Si5351: VCO frequency too high (Valid: 600-900 MHz)");

    if(src == Si5351::PLLSource::PLL_SRC_AUTO)
    {
        do
        {
            uint32_t xtal_freq = this->xtal_freq;
            uint32_t clkin_freq = this->_getDividedCLKINFrequency();

            // Find out if both sources are configured
            if(!xtal_freq && !clkin_freq)
                throw std::runtime_error("Si5351: No valid source for PLL could be determined");
            else if(!xtal_freq)
                src = Si5351::PLLSource::PLL_SRC_CLKIN;
            else if(!clkin_freq)
                src = Si5351::PLLSource::PLL_SRC_XTAL;

            if(src != Si5351::PLLSource::PLL_SRC_AUTO)
                break; // Source is already decided

            // Find out if both sources are detected
            bool xtal_detected = this->isXTALDetected();
            bool clkin_detected = this->isCLKINDetected();

            if(!xtal_detected && !clkin_detected)
                throw std::runtime_error("Si5351: No valid source for PLL could be determined");
            else if(!xtal_detected)
                src = Si5351::PLLSource::PLL_SRC_CLKIN;
            else if(!clkin_detected)
                src = Si5351::PLLSource::PLL_SRC_XTAL;

            if(src != Si5351::PLLSource::PLL_SRC_AUTO)
                break; // Source is already decided

            // Find out if both sources are valid
            Si5351::MultiSynthDivider xtal_div = Si5351::CalculateMSDivider(freq, xtal_freq);
            Si5351::MultiSynthDivider clkin_div = Si5351::CalculateMSDivider(freq, clkin_freq);

            bool xtal_valid;
            bool clkin_valid;

            try
            {
                Si5351::ValidatePLLMSDivider(xtal_div);

                xtal_valid = true;
            }
            catch(...)
            {
                xtal_valid = false;
            }

            try
            {
                Si5351::ValidatePLLMSDivider(clkin_div);

                clkin_valid = true;
            }
            catch(...)
            {
                clkin_valid = false;
            }

            if(!xtal_valid && !clkin_valid)
                throw std::runtime_error("Si5351: No valid source for PLL could be determined");
            else if(!xtal_valid)
                src = Si5351::PLLSource::PLL_SRC_CLKIN;
            else if(!clkin_valid)
                src = Si5351::PLLSource::PLL_SRC_XTAL;

            if(src != Si5351::PLLSource::PLL_SRC_AUTO)
                break; // Source is already decided

            // Not decided yet, check both dividers
            if(xtal_div.b && clkin_div.b)
            {
                // Both are fractional, use whichever has the highest frequency
                if(xtal_freq > clkin_freq)
                    src = Si5351::PLLSource::PLL_SRC_XTAL;
                else if(clkin_freq > xtal_freq)
                    src = Si5351::PLLSource::PLL_SRC_CLKIN;

                if(src != Si5351::PLLSource::PLL_SRC_AUTO)
                    break; // Source is already decided

                // Use whichever has the highest modulus (reduces jitter)
                if(xtal_div.c > clkin_div.c)
                    src = Si5351::PLLSource::PLL_SRC_XTAL;
                else if(clkin_div.c > xtal_div.c)
                    src = Si5351::PLLSource::PLL_SRC_CLKIN;
            }
            else if(xtal_div.b)
            {
                // Only XTAL is fractional, use CLKIN
                src = Si5351::PLLSource::PLL_SRC_CLKIN;
            }
            else if(clkin_div.b)
            {
                // Only CLKIN is fractional, use XTAL
                src = Si5351::PLLSource::PLL_SRC_XTAL;
            }
            else
            {
                // Both are integer, use whichever has the highest frequency
                if(xtal_freq > clkin_freq)
                    src = Si5351::PLLSource::PLL_SRC_XTAL;
                else if(clkin_freq > xtal_freq)
                    src = Si5351::PLLSource::PLL_SRC_CLKIN;
            }
        } while(0);

        // Last resort, use XTAL
        if(src == Si5351::PLLSource::PLL_SRC_AUTO)
            src = Si5351::PLLSource::PLL_SRC_XTAL;
    }

    this->_setPLLSource(pll, src);
    this->_setPLLFrequency(pll, freq);
}
void Si5351::_setPLLSource(Si5351::PLL pll, Si5351::PLLSource src)
{
    uint8_t mask;

    switch(pll)
    {
        case Si5351::PLL::PLLA:
            mask = SI5351_REG_PLL_SRC_SRCA_CLKIN;
        break;
        case Si5351::PLL::PLLB:
            mask = SI5351_REG_PLL_SRC_SRCB_CLKIN;
        break;
        default:
            throw std::invalid_argument("Si5351: Invalid PLL");
    }

    switch(src)
    {
        case Si5351::PLLSource::PLL_SRC_XTAL:
            this->rmwReg(SI5351_REG_PLL_SRC, ~mask, 0x00);
        break;
        case Si5351::PLLSource::PLL_SRC_CLKIN:
            this->rmwReg(SI5351_REG_PLL_SRC, ~mask, mask);
        break;
        default:
            throw std::invalid_argument("Si5351: Invalid PLL source");
    }
}
Si5351::PLLSource Si5351::_getPLLSource(Si5351::PLL pll)
{
    uint8_t mask;

    switch(pll)
    {
        case Si5351::PLL::PLLA:
            mask = SI5351_REG_PLL_SRC_SRCA_CLKIN;
        break;
        case Si5351::PLL::PLLB:
            mask = SI5351_REG_PLL_SRC_SRCB_CLKIN;
        break;
        default:
            throw std::invalid_argument("Si5351: Invalid PLL");
    }

    uint8_t val = this->readReg(SI5351_REG_PLL_SRC) & mask;

    if(val == mask)
        return Si5351::PLLSource::PLL_SRC_CLKIN;

    return Si5351::PLLSource::PLL_SRC_XTAL;
}
uint32_t Si5351::_getPLLSourceFrequency(Si5351::PLL pll)
{
    switch(this->_getPLLSource(pll))
    {
        case Si5351::PLLSource::PLL_SRC_XTAL:
            return this->xtal_freq;
        case Si5351::PLLSource::PLL_SRC_CLKIN:
            return this->_getDividedCLKINFrequency();
        default:
            throw std::runtime_error("Si5351: Invalid PLL source");
    }
}
void Si5351::_setPLLFrequency(Si5351::PLL pll, uint32_t freq)
{
    switch(pll)
    {
        case Si5351::PLL::PLLA:
        case Si5351::PLL::PLLB:
        break;
        default:
            throw std::invalid_argument("Si5351: Invalid PLL");
    }

    if(freq < 600000000UL)
        throw std::invalid_argument("Si5351: VCO frequency too low (Valid: 600-900 MHz)");

    if(freq > 900000000UL)
        throw std::invalid_argument("Si5351: VCO frequency too high (Valid: 600-900 MHz)");

    Si5351::MultiSynthDivider div = Si5351::CalculateMSDivider(freq, this->_getPLLSourceFrequency(pll));

    Si5351::ValidatePLLMSDivider(div);

    uint32_t p1 = 128 * div.a + ((128 * div.b) / div.c) - 512;
    uint32_t p2 = 128 * div.b - div.c * ((128 * div.b) / div.c);
    uint32_t p3 = div.c;

    if(!div.b && !(div.a & 1)) // If multiplier is an even integer, turn on integer mode
        this->rmwReg(SI5351_REG_CLKn_CFG(6 + pll), ~SI5351_REG_CLKn_CFG_MS_INT, SI5351_REG_CLKn_CFG_MS_INT);
    else
        this->rmwReg(SI5351_REG_CLKn_CFG(6 + pll), ~SI5351_REG_CLKn_CFG_MS_INT, SI5351_REG_CLKn_CFG_MS_FRAC);

    uint8_t buf[8];

    buf[0] = (p3 >> 8) & 0xFF;
    buf[1] = (p3 >> 0) & 0xFF;
    buf[2] = (p1 >> 16) & 0x03;
    buf[3] = (p1 >> 8) & 0xFF;
    buf[4] = (p1 >> 0) & 0xFF;
    buf[5] = ((p3 >> 12) & 0xF0) | ((p2 >> 16) & 0x0F);
    buf[6] = (p2 >> 8) & 0xFF;
    buf[7] = (p2 >> 0) & 0xFF;

    this->writeReg(SI5351_REG_MSNn_P3_MID(pll), buf, 8);

    this->_resetPLL(pll);

    this->pll_fb_div[pll] = div;
}
uint32_t Si5351::_getPLLFrequency(Si5351::PLL pll)
{
    switch(pll)
    {
        case Si5351::PLL::PLLA:
        case Si5351::PLL::PLLB:
        break;
        default:
            throw std::invalid_argument("Si5351: Invalid PLL");
    }

    Si5351::MultiSynthDivider div = this->pll_fb_div[pll];

    if(!div.a && !div.b) // If multiplier is zero, return zero
        return 0;

    if(!div.c) // Division by zero
        throw std::runtime_error("Si5351: Invalid PLL divider");

    uint64_t src_freq = this->_getPLLSourceFrequency(pll);

    return src_freq * div.a + ((src_freq * div.b) / div.c);
}

void Si5351::_configMultiSynth(Si5351::MultiSynth ms, uint32_t freq, float phase, Si5351::PLL src)
{
    bool integer;

    switch(ms)
    {
        case Si5351::MultiSynth::MS0:
        case Si5351::MultiSynth::MS1:
        case Si5351::MultiSynth::MS2:
        case Si5351::MultiSynth::MS3:
        case Si5351::MultiSynth::MS4:
        case Si5351::MultiSynth::MS5:
            integer = false;
        break;
        case Si5351::MultiSynth::MS6:
        case Si5351::MultiSynth::MS7:
            integer = true;
        break;
        default:
            throw std::invalid_argument("Si5351: Invalid MultiSynth");
    }

    if(freq < 500000UL)
        throw std::invalid_argument("Si5351: Frequency too low (Valid: 0.5-200 MHz)");

    if(freq > 200000000UL)
        throw std::invalid_argument("Si5351: Frequency too high (Valid: 0.5-200 MHz)");

    if(src == Si5351::PLL::PLL_AUTO)
    {
        do
        {
            uint32_t plla_freq;
            uint32_t pllb_freq;

            // Find out if both sources are configured
            try
            {
                plla_freq = this->_getPLLFrequency(Si5351::PLL::PLLA);
            }
            catch(...)
            {
                plla_freq = 0;
            }

            try
            {
                pllb_freq = this->_getPLLFrequency(Si5351::PLL::PLLB);
            }
            catch(...)
            {
                pllb_freq = 0;
            }

            if(!plla_freq && !pllb_freq)
                throw std::runtime_error("Si5351: No valid source for MultiSynth could be determined");
            else if(!plla_freq)
                src = Si5351::PLL::PLLB;
            else if(!pllb_freq)
                src = Si5351::PLL::PLLA;

            if(src != Si5351::PLL::PLL_AUTO)
                break; // Source is already decided

            // Find out if both sources are valid
            Si5351::MultiSynthDivider plla_div = Si5351::CalculateMSDivider(plla_freq, freq);
            Si5351::MultiSynthDivider pllb_div = Si5351::CalculateMSDivider(pllb_freq, freq);

            bool plla_valid;
            bool pllb_valid;

            try
            {
                if(integer)
                    Si5351::ValidateIntClockMSDivider(plla_div);
                else
                    Si5351::ValidateFracClockMSDivider(plla_div);

                plla_valid = true;
            }
            catch(...)
            {
                plla_valid = false;
            }

            try
            {
                if(integer)
                    Si5351::ValidateIntClockMSDivider(pllb_div);
                else
                    Si5351::ValidateFracClockMSDivider(pllb_div);

                pllb_valid = true;
            }
            catch(...)
            {
                pllb_valid = false;
            }

            if(!plla_valid && !pllb_valid)
                throw std::runtime_error("Si5351: No valid source for MultiSynth could be determined");
            else if(!plla_valid)
                src = Si5351::PLL::PLLB;
            else if(!pllb_valid)
                src = Si5351::PLL::PLLA;

            if(src != Si5351::PLL::PLL_AUTO)
                break; // Source is already decided

            // Not decided yet, check both dividers
            if(plla_div.b && pllb_div.b)
            {
                // Both are fractional, use whichever has the highest frequency
                if(pllb_freq > plla_freq)
                    src = Si5351::PLL::PLLB;
                else if(plla_freq > pllb_freq)
                    src = Si5351::PLL::PLLA;

                if(src != Si5351::PLL::PLL_AUTO)
                    break; // Source is already decided

                // Use whichever has the highest modulus (reduces jitter)
                if(pllb_div.c > plla_div.c)
                    src = Si5351::PLL::PLLB;
                else if(plla_div.c > pllb_div.c)
                    src = Si5351::PLL::PLLA;
            }
            else if(plla_div.b)
            {
                // Only PLLA is fractional, use PLLB
                src = Si5351::PLL::PLLB;
            }
            else if(pllb_div.b)
            {
                // Only PLLB is fractional, use PLLA
                src = Si5351::PLL::PLLA;
            }
            else
            {
                // Both are integer, use whichever has the highest frequency
                if(pllb_freq > plla_freq)
                    src = Si5351::PLL::PLLB;
                else if(plla_freq > pllb_freq)
                    src = Si5351::PLL::PLLA;
            }
        } while(0);

        // Last resort, use PLLA
        if(src == Si5351::PLL::PLL_AUTO)
            src = Si5351::PLL::PLLA;
    }

    this->_setMultiSynthSource(ms, src);
    this->_setMultiSynthFrequency(ms, freq);
    this->_setMultiSynthPhaseOffset(ms, phase);
}
void Si5351::_setMultiSynthSource(Si5351::MultiSynth ms, Si5351::PLL src)
{
    switch(ms)
    {
        case Si5351::MultiSynth::MS0:
        case Si5351::MultiSynth::MS1:
        case Si5351::MultiSynth::MS2:
        case Si5351::MultiSynth::MS3:
        case Si5351::MultiSynth::MS4:
        case Si5351::MultiSynth::MS5:
        case Si5351::MultiSynth::MS6:
        case Si5351::MultiSynth::MS7:
        break;
        default:
            throw std::invalid_argument("Si5351: Invalid MultiSynth");
    }

    switch(src)
    {
        case Si5351::PLL::PLLA:
            this->rmwReg(SI5351_REG_CLKn_CFG(ms), ~SI5351_REG_CLKn_CFG_MS_SRC_PLLB, SI5351_REG_CLKn_CFG_MS_SRC_PLLA);
        break;
        case Si5351::PLL::PLLB:
            this->rmwReg(SI5351_REG_CLKn_CFG(ms), ~SI5351_REG_CLKn_CFG_MS_SRC_PLLB, SI5351_REG_CLKn_CFG_MS_SRC_PLLB);
        break;
        default:
            throw std::invalid_argument("Si5351: Invalid MultiSynth source");
    }
}
Si5351::PLL Si5351::_getMultiSynthSource(Si5351::MultiSynth ms)
{
    switch(ms)
    {
        case Si5351::MultiSynth::MS0:
        case Si5351::MultiSynth::MS1:
        case Si5351::MultiSynth::MS2:
        case Si5351::MultiSynth::MS3:
        case Si5351::MultiSynth::MS4:
        case Si5351::MultiSynth::MS5:
        case Si5351::MultiSynth::MS6:
        case Si5351::MultiSynth::MS7:
        break;
        default:
            throw std::invalid_argument("Si5351: Invalid MultiSynth");
    }

    uint8_t val = this->readReg(SI5351_REG_CLKn_CFG(ms)) & SI5351_REG_CLKn_CFG_MS_SRC_PLLB;

    if(val == SI5351_REG_CLKn_CFG_MS_SRC_PLLB)
        return Si5351::PLL::PLLB;

    return Si5351::PLL::PLLA;
}
uint32_t Si5351::_getMultiSynthSourceFrequency(Si5351::MultiSynth ms)
{
    return this->_getPLLFrequency(this->_getMultiSynthSource(ms));
}
void Si5351::_setMultiSynthFrequency(Si5351::MultiSynth ms, uint32_t freq)
{
    bool integer;

    switch(ms)
    {
        case Si5351::MultiSynth::MS0:
        case Si5351::MultiSynth::MS1:
        case Si5351::MultiSynth::MS2:
        case Si5351::MultiSynth::MS3:
        case Si5351::MultiSynth::MS4:
        case Si5351::MultiSynth::MS5:
            integer = false;
        break;
        case Si5351::MultiSynth::MS6:
        case Si5351::MultiSynth::MS7:
            integer = true;
        break;
        default:
            throw std::invalid_argument("Si5351: Invalid MultiSynth");
    }

    if(freq < 500000UL)
        throw std::invalid_argument("Si5351: Frequency too low (Valid: 0.5-200 MHz)");

    if(!integer && freq > 200000000UL)
        throw std::invalid_argument("Si5351: Frequency too high (Valid: 0.5-200 MHz)");

    if(integer && freq > 150000000UL)
        throw std::invalid_argument("Si5351: Frequency too high (Valid: 0.5-150 MHz)");

    Si5351::MultiSynthDivider div = Si5351::CalculateMSDivider(this->_getMultiSynthSourceFrequency(ms), freq);

    if(integer)
    {
        Si5351::ValidateIntClockMSDivider(div);

        this->writeReg(SI5351_REG_MS6_P1 + (ms - Si5351::MultiSynth::MS6), div.a);
    }
    else
    {
        Si5351::ValidateFracClockMSDivider(div);

        // Frequencies greater than 150 MHz require divide by 4
        if(freq > 150000000UL && (div.a != 4 || div.b > 0))
            throw std::runtime_error("Si5351: Cannot achieve requested frequency");

        uint32_t p1 = 128 * div.a + ((128 * div.b) / div.c) - 512;
        uint32_t p2 = 128 * div.b - div.c * ((128 * div.b) / div.c);
        uint32_t p3 = div.c;

        if(!div.b && !(div.a & 1)) // If multiplier is an even integer, turn on integer mode
            this->rmwReg(SI5351_REG_CLKn_CFG(ms), ~SI5351_REG_CLKn_CFG_MS_INT, SI5351_REG_CLKn_CFG_MS_INT);
        else
            this->rmwReg(SI5351_REG_CLKn_CFG(ms), ~SI5351_REG_CLKn_CFG_MS_INT, SI5351_REG_CLKn_CFG_MS_FRAC);

        uint8_t buf[8];

        buf[2] = this->readReg(SI5351_REG_MSn_P1_MSB_DIV(ms)) & 0x70;

        buf[0] = (p3 >> 8) & 0xFF;
        buf[1] = (p3 >> 0) & 0xFF;
        buf[2] |= ((div.a == 4) ? SI5351_REG_MSn_P1_MSB_DIV_MSn_DIV4 : 0x00) | ((p1 >> 16) & 0x03);
        buf[3] = (p1 >> 8) & 0xFF;
        buf[4] = (p1 >> 0) & 0xFF;
        buf[5] = ((p3 >> 12) & 0xF0) | ((p2 >> 16) & 0x0F);
        buf[6] = (p2 >> 8) & 0xFF;
        buf[7] = (p2 >> 0) & 0xFF;

        this->writeReg(SI5351_REG_MSn_P3_MID(ms), buf, 8);
    }

    this->ms_div[ms] = div;
}
uint32_t Si5351::_getMultiSynthFrequency(Si5351::MultiSynth ms)
{
    switch(ms)
    {
        case Si5351::MultiSynth::MS0:
        case Si5351::MultiSynth::MS1:
        case Si5351::MultiSynth::MS2:
        case Si5351::MultiSynth::MS3:
        case Si5351::MultiSynth::MS4:
        case Si5351::MultiSynth::MS5:
        case Si5351::MultiSynth::MS6:
        case Si5351::MultiSynth::MS7:
        break;
        default:
            throw std::invalid_argument("Si5351: Invalid MultiSynth");
    }

    Si5351::MultiSynthDivider div = this->ms_div[ms];

    if(!div.a && !div.b) // If multiplier is zero, return zero
        return 0;

    if(!div.c) // Division by zero
        throw std::runtime_error("Si5351: Invalid MultiSynth divider");

    uint64_t src_freq = this->_getMultiSynthSourceFrequency(ms);

    return (src_freq * div.c) / (((uint64_t)div.a * div.c) + div.b);
}
void Si5351::_setMultiSynthPhaseOffset(Si5351::MultiSynth ms, float phase)
{
    switch(ms)
    {
        case Si5351::MultiSynth::MS0:
        case Si5351::MultiSynth::MS1:
        case Si5351::MultiSynth::MS2:
        case Si5351::MultiSynth::MS3:
        case Si5351::MultiSynth::MS4:
        case Si5351::MultiSynth::MS5:
        break;
        case Si5351::MultiSynth::MS6:
        case Si5351::MultiSynth::MS7:
            if(phase > 0.f)
                throw std::invalid_argument("Si5351: MultiSynth does not support phase offset");

            return;
        break;
        default:
            throw std::invalid_argument("Si5351: Invalid MultiSynth");
    }

    if(phase < 0.f || phase >= 360.f)
        throw std::invalid_argument("Si5351: Invalid phase offset (Valid: 0-360)");

    float time = (phase / 360.f) * 1000000.f / this->_getMultiSynthFrequency(ms); // In microsseconds
    float code = (this->_getMultiSynthSourceFrequency(ms) * 4.f / 1000000.f) * time;

    code += 0.5f; // Round to nearest

    if(code > 127)
        throw std::runtime_error("Si5351: Cannot achieve requested phase offset");

    this->rmwReg(SI5351_REG_CLKn_CFG(ms), ~SI5351_REG_CLKn_CFG_MS_INT, SI5351_REG_CLKn_CFG_MS_FRAC); // Fractional mode is required to use phase offsets
    this->writeReg(SI5351_REG_CLKn_PHOFF(ms), (uint8_t)code);
}
float Si5351::_getMultiSynthPhaseOffset(Si5351::MultiSynth ms)
{
    switch(ms)
    {
        case Si5351::MultiSynth::MS0:
        case Si5351::MultiSynth::MS1:
        case Si5351::MultiSynth::MS2:
        case Si5351::MultiSynth::MS3:
        case Si5351::MultiSynth::MS4:
        case Si5351::MultiSynth::MS5:
        break;
        case Si5351::MultiSynth::MS6:
        case Si5351::MultiSynth::MS7:
            return 0.f;
        break;
        default:
            throw std::invalid_argument("Si5351: Invalid MultiSynth");
    }

    float code = this->readReg(SI5351_REG_CLKn_PHOFF(ms));
    float time = code / (this->_getMultiSynthSourceFrequency(ms) * 4.f / 1000000.f);

    return time * 360.f / (1000000.f / this->_getMultiSynthFrequency(ms));
}

void Si5351::_setClockOutputSource(Si5351::ClockOutput clk, Si5351::ClockOutputSource src)
{
    switch(clk)
    {
        case Si5351::ClockOutput::CLK0:
        case Si5351::ClockOutput::CLK1:
        case Si5351::ClockOutput::CLK2:
        case Si5351::ClockOutput::CLK3:
        case Si5351::ClockOutput::CLK4:
        case Si5351::ClockOutput::CLK5:
        case Si5351::ClockOutput::CLK6:
        case Si5351::ClockOutput::CLK7:
        break;
        default:
            throw std::invalid_argument("Si5351: Invalid clock output");
    }

    uint8_t val;

    switch(src)
    {
        case Si5351::ClockOutputSource::CLK_SRC_XTAL:
            val = SI5351_REG_CLKn_CFG_SRC_XTAL;
        break;
        case Si5351::ClockOutputSource::CLK_SRC_CLKIN:
            val = SI5351_REG_CLKn_CFG_SRC_CLKIN;
        break;
        case Si5351::ClockOutputSource::CLK_SRC_MS0_MS4:
            if(clk == Si5351::ClockOutput::CLK0 || clk == Si5351::ClockOutput::CLK4)
                val = SI5351_REG_CLKn_CFG_SRC_MSYNTHn;
            else
                val = SI5351_REG_CLKn_CFG_SRC_MSYNTH0;
        break;
        case Si5351::ClockOutputSource::CLK_SRC_MSn:
            val = SI5351_REG_CLKn_CFG_SRC_MSYNTHn;
        break;
        default:
            throw std::invalid_argument("Si5351: Invalid clock output source");
    }

    this->rmwReg(SI5351_REG_CLKn_CFG(clk), ~SI5351_REG_CLKn_CFG_SRC_MSYNTHn, val);
}
Si5351::ClockOutputSource Si5351::_getClockOutputSource(Si5351::ClockOutput clk)
{
    switch(clk)
    {
        case Si5351::ClockOutput::CLK0:
        case Si5351::ClockOutput::CLK1:
        case Si5351::ClockOutput::CLK2:
        case Si5351::ClockOutput::CLK3:
        case Si5351::ClockOutput::CLK4:
        case Si5351::ClockOutput::CLK5:
        case Si5351::ClockOutput::CLK6:
        case Si5351::ClockOutput::CLK7:
        break;
        default:
            throw std::invalid_argument("Si5351: Invalid clock output");
    }

    uint8_t val = this->readReg(SI5351_REG_CLKn_CFG(clk)) & SI5351_REG_CLKn_CFG_SRC_MSYNTHn;

    switch(val)
    {
        case SI5351_REG_CLKn_CFG_SRC_XTAL:
            return Si5351::ClockOutputSource::CLK_SRC_XTAL;
        case SI5351_REG_CLKn_CFG_SRC_CLKIN:
            return Si5351::ClockOutputSource::CLK_SRC_CLKIN;
        case SI5351_REG_CLKn_CFG_SRC_MSYNTH0:
            return Si5351::ClockOutputSource::CLK_SRC_MS0_MS4;
        case SI5351_REG_CLKn_CFG_SRC_MSYNTHn:
            return Si5351::ClockOutputSource::CLK_SRC_MSn;
        default:
            throw std::runtime_error("Si5351: Invalid clock output source");
    }
}
void Si5351::_setClockOutputDivider(Si5351::ClockOutput clk, Si5351::ClockOutputDivider divider)
{
    uint8_t reg;
    uint8_t shift;

    switch(clk)
    {
        case Si5351::ClockOutput::CLK0:
        case Si5351::ClockOutput::CLK1:
        case Si5351::ClockOutput::CLK2:
        case Si5351::ClockOutput::CLK3:
        case Si5351::ClockOutput::CLK4:
        case Si5351::ClockOutput::CLK5:
            reg = SI5351_REG_MSn_P1_MSB_DIV(clk);
            shift = 0;
        break;
        case Si5351::ClockOutput::CLK6:
            reg = SI5351_REG_MS6_7_DIV;
            shift = 4;
        break;
        case Si5351::ClockOutput::CLK7:
            reg = SI5351_REG_MS6_7_DIV;
            shift = 0;
        break;
        default:
            throw std::invalid_argument("Si5351: Invalid clock output");
    }

    uint8_t val;

    switch(divider)
    {
        case Si5351::ClockOutputDivider::CLK_DIV_DIV1:
            val = SI5351_REG_MSn_P1_MSB_DIV_Rn_DIV_DIV1;
        break;
        case Si5351::ClockOutputDivider::CLK_DIV_DIV2:
            val = SI5351_REG_MSn_P1_MSB_DIV_Rn_DIV_DIV2;
        break;
        case Si5351::ClockOutputDivider::CLK_DIV_DIV4:
            val = SI5351_REG_MSn_P1_MSB_DIV_Rn_DIV_DIV4;
        break;
        case Si5351::ClockOutputDivider::CLK_DIV_DIV8:
            val = SI5351_REG_MSn_P1_MSB_DIV_Rn_DIV_DIV8;
        break;
        case Si5351::ClockOutputDivider::CLK_DIV_DIV16:
            val = SI5351_REG_MSn_P1_MSB_DIV_Rn_DIV_DIV16;
        break;
        case Si5351::ClockOutputDivider::CLK_DIV_DIV32:
            val = SI5351_REG_MSn_P1_MSB_DIV_Rn_DIV_DIV32;
        break;
        case Si5351::ClockOutputDivider::CLK_DIV_DIV64:
            val = SI5351_REG_MSn_P1_MSB_DIV_Rn_DIV_DIV64;
        break;
        case Si5351::ClockOutputDivider::CLK_DIV_DIV128:
            val = SI5351_REG_MSn_P1_MSB_DIV_Rn_DIV_DIV128;
        break;
        default:
            throw std::invalid_argument("Si5351: Invalid clock output divider");
    }

    this->rmwReg(reg, ~(SI5351_REG_MSn_P1_MSB_DIV_Rn_DIV_DIV128 >> shift), val >> shift);
}
Si5351::ClockOutputDivider Si5351::_getClockOutputDivider(Si5351::ClockOutput clk)
{
    uint8_t reg;
    uint8_t shift;

    switch(clk)
    {
        case Si5351::ClockOutput::CLK0:
        case Si5351::ClockOutput::CLK1:
        case Si5351::ClockOutput::CLK2:
        case Si5351::ClockOutput::CLK3:
        case Si5351::ClockOutput::CLK4:
        case Si5351::ClockOutput::CLK5:
            reg = SI5351_REG_MSn_P1_MSB_DIV(clk);
            shift = 0;
        break;
        case Si5351::ClockOutput::CLK6:
            reg = SI5351_REG_MS6_7_DIV;
            shift = 4;
        break;
        case Si5351::ClockOutput::CLK7:
            reg = SI5351_REG_MS6_7_DIV;
            shift = 0;
        break;
        default:
            throw std::invalid_argument("Si5351: Invalid clock output");
    }

    uint8_t val = this->readReg(reg) & (SI5351_REG_MSn_P1_MSB_DIV_Rn_DIV_DIV128 >> shift);

    val <<= shift;

    switch(val)
    {
        case SI5351_REG_MSn_P1_MSB_DIV_Rn_DIV_DIV1:
            return Si5351::ClockOutputDivider::CLK_DIV_DIV1;
        case SI5351_REG_MSn_P1_MSB_DIV_Rn_DIV_DIV2:
            return Si5351::ClockOutputDivider::CLK_DIV_DIV2;
        case SI5351_REG_MSn_P1_MSB_DIV_Rn_DIV_DIV4:
            return Si5351::ClockOutputDivider::CLK_DIV_DIV4;
        case SI5351_REG_MSn_P1_MSB_DIV_Rn_DIV_DIV8:
            return Si5351::ClockOutputDivider::CLK_DIV_DIV8;
        case SI5351_REG_MSn_P1_MSB_DIV_Rn_DIV_DIV16:
            return Si5351::ClockOutputDivider::CLK_DIV_DIV16;
        case SI5351_REG_MSn_P1_MSB_DIV_Rn_DIV_DIV32:
            return Si5351::ClockOutputDivider::CLK_DIV_DIV32;
        case SI5351_REG_MSn_P1_MSB_DIV_Rn_DIV_DIV64:
            return Si5351::ClockOutputDivider::CLK_DIV_DIV64;
        case SI5351_REG_MSn_P1_MSB_DIV_Rn_DIV_DIV128:
            return Si5351::ClockOutputDivider::CLK_DIV_DIV128;
        default:
            throw std::runtime_error("Si5351: Invalid clock output divider");
    }
}
void Si5351::_setClockOutputInvert(Si5351::ClockOutput clk, bool invert)
{
    switch(clk)
    {
        case Si5351::ClockOutput::CLK0:
        case Si5351::ClockOutput::CLK1:
        case Si5351::ClockOutput::CLK2:
        case Si5351::ClockOutput::CLK3:
        case Si5351::ClockOutput::CLK4:
        case Si5351::ClockOutput::CLK5:
        case Si5351::ClockOutput::CLK6:
        case Si5351::ClockOutput::CLK7:
        break;
        default:
            throw std::invalid_argument("Si5351: Invalid clock output");
    }

    this->rmwReg(SI5351_REG_CLKn_CFG(clk), ~SI5351_REG_CLKn_CFG_CLK_INV, invert ? SI5351_REG_CLKn_CFG_CLK_INV : 0x00);
}
bool Si5351::_getClockOutputInvert(Si5351::ClockOutput clk)
{
    switch(clk)
    {
        case Si5351::ClockOutput::CLK0:
        case Si5351::ClockOutput::CLK1:
        case Si5351::ClockOutput::CLK2:
        case Si5351::ClockOutput::CLK3:
        case Si5351::ClockOutput::CLK4:
        case Si5351::ClockOutput::CLK5:
        case Si5351::ClockOutput::CLK6:
        case Si5351::ClockOutput::CLK7:
        break;
        default:
            throw std::invalid_argument("Si5351: Invalid clock output");
    }

    uint8_t val = this->readReg(SI5351_REG_CLKn_CFG(clk)) & SI5351_REG_CLKn_CFG_CLK_INV;

    if(val == SI5351_REG_CLKn_CFG_CLK_INV)
        return true;

    return false;

}
void Si5351::_setClockOutputDriveCurrent(Si5351::ClockOutput clk, Si5351::ClockOutputDriveCurrent current)
{
    switch(clk)
    {
        case Si5351::ClockOutput::CLK0:
        case Si5351::ClockOutput::CLK1:
        case Si5351::ClockOutput::CLK2:
        case Si5351::ClockOutput::CLK3:
        case Si5351::ClockOutput::CLK4:
        case Si5351::ClockOutput::CLK5:
        case Si5351::ClockOutput::CLK6:
        case Si5351::ClockOutput::CLK7:
        break;
        default:
            throw std::invalid_argument("Si5351: Invalid clock output");
    }

    uint8_t val;

    switch(current)
    {
        case Si5351::ClockOutputDriveCurrent::I_2mA:
            val = SI5351_REG_CLKn_CFG_IDRV_2MA;
        break;
        case Si5351::ClockOutputDriveCurrent::I_4mA:
            val = SI5351_REG_CLKn_CFG_IDRV_4MA;
        break;
        case Si5351::ClockOutputDriveCurrent::I_6mA:
            val = SI5351_REG_CLKn_CFG_IDRV_6MA;
        break;
        case Si5351::ClockOutputDriveCurrent::I_8mA:
            val = SI5351_REG_CLKn_CFG_IDRV_8MA;
        break;
        default:
            throw std::invalid_argument("Si5351: Invalid clock output drive current");
    }

    this->rmwReg(SI5351_REG_CLKn_CFG(clk), ~SI5351_REG_CLKn_CFG_IDRV_8MA, val);
}
Si5351::ClockOutputDriveCurrent Si5351::_getClockOutputDriveCurrent(Si5351::ClockOutput clk)
{
    switch(clk)
    {
        case Si5351::ClockOutput::CLK0:
        case Si5351::ClockOutput::CLK1:
        case Si5351::ClockOutput::CLK2:
        case Si5351::ClockOutput::CLK3:
        case Si5351::ClockOutput::CLK4:
        case Si5351::ClockOutput::CLK5:
        case Si5351::ClockOutput::CLK6:
        case Si5351::ClockOutput::CLK7:
        break;
        default:
            throw std::invalid_argument("Si5351: Invalid clock output");
    }

    uint8_t val = this->readReg(SI5351_REG_CLKn_CFG(clk)) & SI5351_REG_CLKn_CFG_IDRV_8MA;

    switch(val)
    {
        case SI5351_REG_CLKn_CFG_IDRV_2MA:
            return Si5351::ClockOutputDriveCurrent::I_2mA;
        case SI5351_REG_CLKn_CFG_IDRV_4MA:
            return Si5351::ClockOutputDriveCurrent::I_4mA;
        case SI5351_REG_CLKn_CFG_IDRV_6MA:
            return Si5351::ClockOutputDriveCurrent::I_6mA;
        case SI5351_REG_CLKn_CFG_IDRV_8MA:
            return Si5351::ClockOutputDriveCurrent::I_8mA;
        default:
            throw std::runtime_error("Si5351: Invalid clock output drive current");
    }
}
void Si5351::_setClockOutputDisableState(Si5351::ClockOutput clk, Si5351::ClockOutputDisableState state)
{
    uint8_t reg;
    uint8_t shift;

    switch(clk)
    {
        case Si5351::ClockOutput::CLK0:
            reg = SI5351_REG_CLK3_0_DIS;
            shift = 0;
        break;
        case Si5351::ClockOutput::CLK1:
            reg = SI5351_REG_CLK3_0_DIS;
            shift = 2;
        break;
        case Si5351::ClockOutput::CLK2:
            reg = SI5351_REG_CLK3_0_DIS;
            shift = 4;
        break;
        case Si5351::ClockOutput::CLK3:
            reg = SI5351_REG_CLK3_0_DIS;
            shift = 6;
        break;
        case Si5351::ClockOutput::CLK4:
            reg = SI5351_REG_CLK7_4_DIS;
            shift = 0;
        break;
        case Si5351::ClockOutput::CLK5:
            reg = SI5351_REG_CLK7_4_DIS;
            shift = 2;
        break;
        case Si5351::ClockOutput::CLK6:
            reg = SI5351_REG_CLK7_4_DIS;
            shift = 4;
        break;
        case Si5351::ClockOutput::CLK7:
            reg = SI5351_REG_CLK7_4_DIS;
            shift = 6;
        break;
        default:
            throw std::invalid_argument("Si5351: Invalid clock output");
    }

    uint8_t val;

    switch(state)
    {
        case Si5351::ClockOutputDisableState::LOW:
            val = SI5351_REG_CLKm_n_DIS_DISn_LOW;
        break;
        case Si5351::ClockOutputDisableState::HIGH:
            val = SI5351_REG_CLKm_n_DIS_DISn_HIGH;
        break;
        case Si5351::ClockOutputDisableState::HI_Z:
            val = SI5351_REG_CLKm_n_DIS_DISn_HIZ;
        break;
        case Si5351::ClockOutputDisableState::NO_DISABLE:
            val = SI5351_REG_CLKm_n_DIS_DISn_NODIS;
        break;
        default:
            throw std::invalid_argument("Si5351: Invalid clock output disable state");
    }

    this->rmwReg(reg, ~(SI5351_REG_CLKm_n_DIS_DISn_NODIS << shift), val << shift);
}
Si5351::ClockOutputDisableState Si5351::_getClockOutputDisableState(Si5351::ClockOutput clk)
{
    uint8_t reg;
    uint8_t shift;

    switch(clk)
    {
        case Si5351::ClockOutput::CLK0:
            reg = SI5351_REG_CLK3_0_DIS;
            shift = 0;
        break;
        case Si5351::ClockOutput::CLK1:
            reg = SI5351_REG_CLK3_0_DIS;
            shift = 2;
        break;
        case Si5351::ClockOutput::CLK2:
            reg = SI5351_REG_CLK3_0_DIS;
            shift = 4;
        break;
        case Si5351::ClockOutput::CLK3:
            reg = SI5351_REG_CLK3_0_DIS;
            shift = 6;
        break;
        case Si5351::ClockOutput::CLK4:
            reg = SI5351_REG_CLK7_4_DIS;
            shift = 0;
        break;
        case Si5351::ClockOutput::CLK5:
            reg = SI5351_REG_CLK7_4_DIS;
            shift = 2;
        break;
        case Si5351::ClockOutput::CLK6:
            reg = SI5351_REG_CLK7_4_DIS;
            shift = 4;
        break;
        case Si5351::ClockOutput::CLK7:
            reg = SI5351_REG_CLK7_4_DIS;
            shift = 6;
        break;
        default:
            throw std::invalid_argument("Si5351: Invalid clock output");
    }

    uint8_t val = this->readReg(reg) & (SI5351_REG_CLKm_n_DIS_DISn_NODIS << shift);

    val >>= shift;

    switch(val)
    {
        case SI5351_REG_CLKm_n_DIS_DISn_LOW:
            return Si5351::ClockOutputDisableState::LOW;
        case SI5351_REG_CLKm_n_DIS_DISn_HIGH:
            return Si5351::ClockOutputDisableState::HIGH;
        case SI5351_REG_CLKm_n_DIS_DISn_HIZ:
            return Si5351::ClockOutputDisableState::HI_Z;
        case SI5351_REG_CLKm_n_DIS_DISn_NODIS:
            return Si5351::ClockOutputDisableState::NO_DISABLE;
        default:
            throw std::runtime_error("Si5351: Invalid clock output disable state");
    }
}
bool Si5351::_isClockOutputPoweredUp(Si5351::ClockOutput clk)
{
    switch(clk)
    {
        case Si5351::ClockOutput::CLK0:
        case Si5351::ClockOutput::CLK1:
        case Si5351::ClockOutput::CLK2:
        case Si5351::ClockOutput::CLK3:
        case Si5351::ClockOutput::CLK4:
        case Si5351::ClockOutput::CLK5:
        case Si5351::ClockOutput::CLK6:
        case Si5351::ClockOutput::CLK7:
        break;
        default:
            throw std::invalid_argument("Si5351: Invalid clock output");
    }

    uint8_t val = this->readReg(SI5351_REG_CLKn_CFG(clk)) & SI5351_REG_CLKn_CFG_POWER_DOWN;

    if(val == SI5351_REG_CLKn_CFG_POWER_DOWN)
        return false;

    return true;
}
void Si5351::_powerUpClockOutput(Si5351::ClockOutput clk, bool power_up)
{
    switch(clk)
    {
        case Si5351::ClockOutput::CLK0:
        case Si5351::ClockOutput::CLK1:
        case Si5351::ClockOutput::CLK2:
        case Si5351::ClockOutput::CLK3:
        case Si5351::ClockOutput::CLK4:
        case Si5351::ClockOutput::CLK5:
        case Si5351::ClockOutput::CLK6:
        case Si5351::ClockOutput::CLK7:
        break;
        default:
            throw std::invalid_argument("Si5351: Invalid clock output");
    }

    this->rmwReg(SI5351_REG_CLKn_CFG(clk), (uint8_t)~SI5351_REG_CLKn_CFG_POWER_DOWN, power_up ? SI5351_REG_CLKn_CFG_POWER_UP : SI5351_REG_CLKn_CFG_POWER_DOWN);
}
bool Si5351::_isClockOutputEnabled(Si5351::ClockOutput clk)
{
    switch(clk)
    {
        case Si5351::ClockOutput::CLK0:
        case Si5351::ClockOutput::CLK1:
        case Si5351::ClockOutput::CLK2:
        case Si5351::ClockOutput::CLK3:
        case Si5351::ClockOutput::CLK4:
        case Si5351::ClockOutput::CLK5:
        case Si5351::ClockOutput::CLK6:
        case Si5351::ClockOutput::CLK7:
        break;
        default:
            throw std::invalid_argument("Si5351: Invalid clock output");
    }

    uint8_t val = this->readReg(SI5351_REG_CLK_OEB) & BIT(clk);

    if(val == BIT(clk))
        return false;

    return true;
}
void Si5351::_enableClockOutput(Si5351::ClockOutput clk, bool enable)
{
    switch(clk)
    {
        case Si5351::ClockOutput::CLK0:
        case Si5351::ClockOutput::CLK1:
        case Si5351::ClockOutput::CLK2:
        case Si5351::ClockOutput::CLK3:
        case Si5351::ClockOutput::CLK4:
        case Si5351::ClockOutput::CLK5:
        case Si5351::ClockOutput::CLK6:
        case Si5351::ClockOutput::CLK7:
        break;
        default:
            throw std::invalid_argument("Si5351: Invalid clock output");
    }

    this->rmwReg(SI5351_REG_CLK_OEB, ~BIT(clk), enable ? 0x00 : BIT(clk));
}

void Si5351::configClock(Si5351::ClockOutput clk, uint32_t freq, float phase, Si5351::PLL src)
{
    std::lock_guard<std::mutex> lock(this->mutex);

    switch(clk)
    {
        case Si5351::ClockOutput::CLK0:
        case Si5351::ClockOutput::CLK1:
        case Si5351::ClockOutput::CLK2:
        case Si5351::ClockOutput::CLK3:
        case Si5351::ClockOutput::CLK4:
        case Si5351::ClockOutput::CLK5:
        case Si5351::ClockOutput::CLK6:
        case Si5351::ClockOutput::CLK7:
        break;
        default:
            throw std::invalid_argument("Si5351: Invalid clock output");
    }

    Si5351::ClockOutputDivider out_div = Si5351::ClockOutputDivider::CLK_DIV_DIV1;

    while(freq < 500000UL && out_div != Si5351::ClockOutputDivider::CLK_DIV_DIV128)
    {
        freq <<= 1;
        out_div = static_cast<Si5351::ClockOutputDivider>(out_div << 1);
    }

    if(freq < 500000UL)
        throw std::invalid_argument("Si5351: Frequency too low");

    bool invert = false;

    if(phase >= 180.f)
    {
        phase -= 180.f;
        invert = true;
    }

    this->_configMultiSynth(static_cast<Si5351::MultiSynth>(clk), freq, phase, src);
    this->_setClockOutputSource(clk, Si5351::ClockOutputSource::CLK_SRC_MSn);
    this->_setClockOutputDivider(clk, out_div);
    this->_setClockOutputInvert(clk, invert);
}
void Si5351::setClockFrequency(Si5351::ClockOutput clk, uint32_t freq)
{
    std::lock_guard<std::mutex> lock(this->mutex);

    switch(clk)
    {
        case Si5351::ClockOutput::CLK0:
        case Si5351::ClockOutput::CLK1:
        case Si5351::ClockOutput::CLK2:
        case Si5351::ClockOutput::CLK3:
        case Si5351::ClockOutput::CLK4:
        case Si5351::ClockOutput::CLK5:
        case Si5351::ClockOutput::CLK6:
        case Si5351::ClockOutput::CLK7:
        break;
        default:
            throw std::invalid_argument("Si5351: Invalid clock output");
    }

    Si5351::ClockOutputDivider out_div = Si5351::ClockOutputDivider::CLK_DIV_DIV1;

    while(freq < 500000UL && out_div != Si5351::ClockOutputDivider::CLK_DIV_DIV128)
    {
        freq <<= 1;
        out_div = static_cast<Si5351::ClockOutputDivider>(out_div << 1);
    }

    if(freq < 500000UL)
        throw std::invalid_argument("Si5351: Frequency too low");

    this->_setMultiSynthFrequency(static_cast<Si5351::MultiSynth>(clk), freq);
    this->_setClockOutputSource(clk, Si5351::ClockOutputSource::CLK_SRC_MSn);
    this->_setClockOutputDivider(clk, out_div);
}
uint32_t Si5351::getClockFrequency(Si5351::ClockOutput clk)
{
    std::lock_guard<std::mutex> lock(this->mutex);

    Si5351::MultiSynth fanout_ms;

    switch(clk)
    {
        case Si5351::ClockOutput::CLK0:
        case Si5351::ClockOutput::CLK1:
        case Si5351::ClockOutput::CLK2:
        case Si5351::ClockOutput::CLK3:
            fanout_ms = Si5351::MultiSynth::MS0;
        break;
        case Si5351::ClockOutput::CLK4:
        case Si5351::ClockOutput::CLK5:
        case Si5351::ClockOutput::CLK6:
        case Si5351::ClockOutput::CLK7:
            fanout_ms = Si5351::MultiSynth::MS4;
        break;
        default:
            throw std::invalid_argument("Si5351: Invalid clock output");
    }

    uint32_t src_freq;

    switch(this->_getClockOutputSource(clk))
    {
        case Si5351::ClockOutputSource::CLK_SRC_XTAL:
            src_freq = this->xtal_freq;
        break;
        case Si5351::ClockOutputSource::CLK_SRC_CLKIN:
            src_freq = this->_getDividedCLKINFrequency(); // TODO: Check if CLKIN or the divided version is routed to output buffer
        break;
        case Si5351::ClockOutputSource::CLK_SRC_MS0_MS4:
            src_freq = this->_getMultiSynthFrequency(fanout_ms);
        break;
        case Si5351::ClockOutputSource::CLK_SRC_MSn:
            src_freq = this->_getMultiSynthFrequency(static_cast<Si5351::MultiSynth>(clk));
        break;
        default:
            throw std::runtime_error("Si5351: Invalid clock output source");
    }

    return src_freq / this->_getClockOutputDivider(clk);
}
void Si5351::setClockPhaseOffset(Si5351::ClockOutput clk, float phase)
{
    std::lock_guard<std::mutex> lock(this->mutex);

    Si5351::MultiSynth fanout_ms;

    switch(clk)
    {
        case Si5351::ClockOutput::CLK0:
        case Si5351::ClockOutput::CLK1:
        case Si5351::ClockOutput::CLK2:
        case Si5351::ClockOutput::CLK3:
            fanout_ms = Si5351::MultiSynth::MS0;
        break;
        case Si5351::ClockOutput::CLK4:
        case Si5351::ClockOutput::CLK5:
        case Si5351::ClockOutput::CLK6:
        case Si5351::ClockOutput::CLK7:
            fanout_ms = Si5351::MultiSynth::MS4;
        break;
        default:
            throw std::invalid_argument("Si5351: Invalid clock output");
    }

    Si5351::MultiSynth src_ms;

    switch(this->_getClockOutputSource(clk))
    {
        case Si5351::ClockOutputSource::CLK_SRC_XTAL:
        {
            if(phase == 0.f)
                this->_setClockOutputInvert(clk, false);
            else if(phase == 180.f)
                this->_setClockOutputInvert(clk, true);
            else
                throw std::runtime_error("Si5351: Cannot set phase offset of XTAL source");

            return;
        }
        break;
        case Si5351::ClockOutputSource::CLK_SRC_CLKIN:
        {
            if(phase == 0.f)
                this->_setClockOutputInvert(clk, false);
            else if(phase == 180.f)
                this->_setClockOutputInvert(clk, true);
            else
                throw std::runtime_error("Si5351: Cannot set phase offset of CLKIN source");

            return;
        }
        break;
        case Si5351::ClockOutputSource::CLK_SRC_MS0_MS4:
            src_ms = fanout_ms;
        break;
        case Si5351::ClockOutputSource::CLK_SRC_MSn:
        {
            if(clk == Si5351::ClockOutput::CLK6 || clk == Si5351::ClockOutput::CLK7)
            {
                if(phase == 0.f)
                    this->_setClockOutputInvert(clk, false);
                else if(phase == 180.f)
                    this->_setClockOutputInvert(clk, true);
                else
                    throw std::invalid_argument("Si5351: MultiSynth does not support phase offset");

                return;
            }

            src_ms = static_cast<Si5351::MultiSynth>(clk);
        }
        break;
        default:
            throw std::runtime_error("Si5351: Invalid clock output source");
    }

    bool invert = false;

    if(phase >= 180.f)
    {
        phase -= 180.f;

        invert = true;
    }

    this->_setMultiSynthPhaseOffset(src_ms, phase);
    this->_setClockOutputInvert(clk, invert);
}
float Si5351::getClockPhaseOffset(Si5351::ClockOutput clk)
{
    std::lock_guard<std::mutex> lock(this->mutex);

    Si5351::MultiSynth fanout_ms;

    switch(clk)
    {
        case Si5351::ClockOutput::CLK0:
        case Si5351::ClockOutput::CLK1:
        case Si5351::ClockOutput::CLK2:
        case Si5351::ClockOutput::CLK3:
            fanout_ms = Si5351::MultiSynth::MS0;
        break;
        case Si5351::ClockOutput::CLK4:
        case Si5351::ClockOutput::CLK5:
        case Si5351::ClockOutput::CLK6:
        case Si5351::ClockOutput::CLK7:
            fanout_ms = Si5351::MultiSynth::MS4;
        break;
        default:
            throw std::invalid_argument("Si5351: Invalid clock output");
    }

    Si5351::MultiSynth src_ms;

    switch(this->_getClockOutputSource(clk))
    {
        case Si5351::ClockOutputSource::CLK_SRC_XTAL:
        case Si5351::ClockOutputSource::CLK_SRC_CLKIN:
        {
            if(this->_getClockOutputInvert(clk))
                return 180.f;

            return 0.f;
        }
        break;
        case Si5351::ClockOutputSource::CLK_SRC_MS0_MS4:
            src_ms = fanout_ms;
        break;
        case Si5351::ClockOutputSource::CLK_SRC_MSn:
        {
            if(clk == Si5351::ClockOutput::CLK6 || clk == Si5351::ClockOutput::CLK7)
            {
                if(this->_getClockOutputInvert(clk))
                    return 180.f;

                return 0.f;
            }

            src_ms = static_cast<Si5351::MultiSynth>(clk);
        }
        break;
        default:
            throw std::runtime_error("Si5351: Invalid clock output source");
    }

    float phase = this->_getMultiSynthPhaseOffset(src_ms);

    if(this->_getClockOutputInvert(clk))
        phase += 180.f;

    return phase;
}
