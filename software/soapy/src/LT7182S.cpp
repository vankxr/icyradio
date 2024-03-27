#include "LT7182S.hpp"

static const float R_ITH_LUT[8] = {5.f, 10.f, 20.f, 40.f, 60.f, 80.f, 100.f, 120.f};
static const float Pos_ILim_LUT[4] = {3.f, 4.5f, 6.5f, 8.5f};
static const float Neg_ILim_LUT[4] = {-2.3f, -3.4f, -4.f, -4.25f};
static const float EAmp_GM_LUT[2][8] = {
    {37.5f, 75.f, 112.5f, 150.f, 187.5f, 225.f, 262.5f, 300.f}, // Standard Mode
    {150.f, 300.f, 450.f, 600.f, 750.f, 900.f, 1050.f, 1200.f} // Low VOUT Mode
};

float LT7182S::Pow2(int8_t e)
{
    switch(e)
    {
        case -16:
            return 0.0000152587890625f;
        case -15:
            return 0.000030517578125f;
        case -14:
            return 0.00006103515625f;
        case -13:
            return 0.0001220703125f;
        case -12:
            return 0.000244140625f;
        case -11:
            return 0.00048828125f;
        case -10:
            return 0.0009765625f;
        case -9:
            return 0.001953125f;
        case -8:
            return 0.00390625f;
        case -7:
            return 0.0078125f;
        case -6:
            return 0.015625f;
        case -5:
            return 0.03125f;
        case -4:
            return 0.0625f;
        case -3:
            return 0.125f;
        case -2:
            return 0.25f;
        case -1:
            return 0.5f;
        case 0:
            return 1.f;
        case 1:
            return 2.f;
        case 2:
            return 4.f;
        case 3:
            return 8.f;
        case 4:
            return 16.f;
        case 5:
            return 32.f;
        case 6:
            return 64.f;
        case 7:
            return 128.f;
        case 8:
            return 256.f;
        case 9:
            return 512.f;
        case 10:
            return 1024.f;
        case 11:
            return 2048.f;
        case 12:
            return 4096.f;
        case 13:
            return 8192.f;
        case 14:
            return 16384.f;
        case 15:
            return 32768.f;
    }

    return 0.f;
}
uint8_t LT7182S::FindClosest(float val, const float *arr, uint8_t size)
{
    if(arr == nullptr || size == 0)
        throw std::runtime_error("LT7182S: Invalid array");

    uint8_t idx = 0;
    float diff = ABS(val - arr[0]);

    for(uint8_t i = 1; i < size; i++)
    {
        float _diff = ABS(val - arr[i]);

        if(_diff < diff)
        {
            idx = i;
            diff = _diff;
        }
    }

    return idx;
}

void LT7182S::ISR(void *_this)
{
    if(_this == nullptr)
        return;

    (static_cast<LT7182S *>(_this))->handleIRQ();
}
void LT7182S::handleIRQ()
{
    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    // TODO:
}

void LT7182S::writeCommand(uint8_t cmd)
{
    if(this->iic.controller == nullptr)
        throw std::runtime_error("LT7182S: IIC not initialized");

    this->iic.controller->write(this->iic.addr, cmd, AXIIIC::Stop::STOP);
}
void LT7182S::writeByte(uint8_t cmd, uint8_t data)
{
    if(this->iic.controller == nullptr)
        throw std::runtime_error("LT7182S: IIC not initialized");

    uint8_t buf[2];

    buf[0] = cmd;
    buf[1] = data;

    this->iic.controller->write(this->iic.addr, buf, 2, AXIIIC::Stop::STOP);
}
void LT7182S::writeWord(uint8_t cmd, uint16_t data)
{
    if(this->iic.controller == nullptr)
        throw std::runtime_error("LT7182S: IIC not initialized");

    uint8_t buf[3];

    buf[0] = cmd;
    buf[1] = data & 0xFF;
    buf[2] = data >> 8;

    this->iic.controller->write(this->iic.addr, buf, 3, AXIIIC::Stop::STOP);
}
void LT7182S::writeL11(uint8_t cmd, float data)
{
    int8_t exp = -16;
    int32_t mant = (int32_t)(data / LT7182S::Pow2(exp));

    // Search for an exponent that produces valid 11-bit mantissa
    do
    {
        if(mant >= -1024 && mant <= 1023)
            break;

        mant = (int32_t)(data / LT7182S::Pow2(++exp));
    } while(exp < 15);

    if(mant < -1024 || mant > 1023)
        throw std::runtime_error("LT7182S: Invalid L11 mantissa");

    if(exp < -16 || exp > 15)
        throw std::runtime_error("LT7182S: Invalid L11 exponent");

    uint16_t exp16 = exp << 11;
    uint16_t mant16 = mant & 0x07FF;

    this->writeWord(cmd, exp16 | mant16);
}
void LT7182S::writeUL16(uint8_t cmd, float data)
{
    if(data < 0.f || data > 16.f)
        throw std::runtime_error("LT7182S: Invalid UL16 data");

    uint16_t data16 = (uint16_t)(data * 4096.f);

    this->writeWord(cmd, data16);
}
uint8_t LT7182S::readByte(uint8_t cmd)
{
    if(this->iic.controller == nullptr)
        throw std::runtime_error("LT7182S: IIC not initialized");

    uint8_t buf[1];

    this->iic.controller->startAtomicTransaction(); // Lock the I2C bus so the next two transactions are not interrupted

    this->iic.controller->write(this->iic.addr, cmd, AXIIIC::Stop::RESTART);
    this->iic.controller->read(this->iic.addr, buf, 1, AXIIIC::Stop::STOP);

    this->iic.controller->endAtomicTransaction(); // Unlock the I2C bus

    return buf[0];
}
uint16_t LT7182S::readWord(uint8_t cmd)
{
    if(this->iic.controller == nullptr)
        throw std::runtime_error("LT7182S: IIC not initialized");

    uint8_t buf[2];

    this->iic.controller->startAtomicTransaction(); // Lock the I2C bus so the next two transactions are not interrupted

    this->iic.controller->write(this->iic.addr, cmd, AXIIIC::Stop::RESTART);
    this->iic.controller->read(this->iic.addr, buf, 2, AXIIIC::Stop::STOP);

    this->iic.controller->endAtomicTransaction(); // Unlock the I2C bus

    return (((uint16_t)buf[1]) << 8) | buf[0];
}
float LT7182S::readL11(uint8_t cmd)
{
    uint16_t data = this->readWord(cmd);

    int8_t exp = (data >> 11) & 0xF;

    if(data & BIT(15))
        exp = -1 * (exp ^ 0xF) - 1;

    int16_t mant = data & 0x7FF;

    if(data & BIT(10))
        mant = -1 * (mant ^ 0x7FF) - 1;

    return (float)mant * LT7182S::Pow2(exp);
}
float LT7182S::readUL16(uint8_t cmd)
{
    uint16_t data = this->readWord(cmd);

    return (float)data / 4096.f;
}
uint8_t LT7182S::readBlock(uint8_t cmd, uint8_t *buf, uint8_t max_size)
{
    if(this->iic.controller == nullptr)
        throw std::runtime_error("LT7182S: IIC not initialized");

    if(max_size > 254)
        max_size = 254;

    uint8_t _buf[255];

    this->iic.controller->startAtomicTransaction(); // Lock the I2C bus so the next two transactions are not interrupted

    this->iic.controller->write(this->iic.addr, cmd, AXIIIC::Stop::RESTART);
    this->iic.controller->read(this->iic.addr, _buf, max_size + 1, AXIIIC::Stop::STOP);

    this->iic.controller->endAtomicTransaction(); // Unlock the I2C bus

    uint8_t size = _buf[0];

    if(size > max_size)
        size = max_size;

    for(uint16_t i = 0; i < size; i++)
        buf[i] = _buf[i + 1];

    return size;
}

LT7182S::LT7182S(LT7182S::IICConfig iic, LT7182S::IRQConfig irq_config)
{
    this->iic = iic;
    this->irq_config = irq_config;

    if(this->iic.controller == nullptr)
        throw std::runtime_error("LT7182S: IIC not initialized");

    bool found = false;
    uint32_t timeout = 1000UL;

    while(--timeout)
    {
        if(this->iic.controller->scan(this->iic.addr))
        {
            found = true;

            break;
        }

        usleep(1000);
    }

    if(!found)
        throw std::runtime_error("LT7182S: Device not found on IIC bus");

    if(this->readManufacturerSpecialID() != 0x1C1D)
        throw std::runtime_error("LT7182S: Invalid manufacturer special ID");
}
LT7182S::~LT7182S()
{
    if(this->irq_config.controller != nullptr)
    {
        this->irq_config.controller->setISR(this->irq_config.irq, nullptr);
        this->irq_config.controller->setIRQEnabled(this->irq_config.irq, false);
    }
}

void LT7182S::init()
{
    if(this->getStatusManufacturerCommon() & BIT(0)) // Device is Write Protected by hardware pin
        throw std::runtime_error("LT7182S: Device is write protected");

    this->writeWord(0xD1, BIT(7) | BIT(1)); // Disable IEEE half-precision floats (use L11 and UL16 instead). Enable clock stretching.
    this->writeByte(0xD8, BIT(0)); // Enable debug telemetry
}

void LT7182S::reset()
{
    // Disabled to prevent accidental resets
    return;

    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->writeCommand(0xFD);

    usleep(50000);
}

void LT7182S::_selectChannel(LT7182S::Chan ch)
{
    switch(ch)
    {
        case LT7182S::Chan::CH0:
            this->writeByte(0x00, 0x00);
        break;
        case LT7182S::Chan::CH1:
            this->writeByte(0x00, 0x01);
        break;
        case LT7182S::Chan::CH_NO_CHANGE:
        break;
        default:
            throw std::invalid_argument("LT7182S: Invalid channel");
    }
}
void LT7182S::selectChannel(LT7182S::Chan ch)
{
    switch(ch)
    {
        case LT7182S::Chan::CH0:
        case LT7182S::Chan::CH1:
        break;
        case LT7182S::Chan::CH_NO_CHANGE:
            return;
        break;
        default:
            throw std::invalid_argument("LT7182S: Invalid channel");
    }

    std::lock_guard<std::recursive_mutex> lock(this->lock_mutex);

    this->_selectChannel(ch);
}
void LT7182S::lockChannelSelection(LT7182S::Chan ch)
{
    switch(ch)
    {
        case LT7182S::Chan::CH0:
        case LT7182S::Chan::CH1:
        case LT7182S::Chan::CH_NO_CHANGE:
        break;
        default:
            throw std::invalid_argument("LT7182S: Invalid channel");
    }

    this->lock_mutex.lock();

    this->_selectChannel(ch);
}
void LT7182S::unlockChannelSelection()
{
    this->lock_mutex.unlock();
}

std::string LT7182S::readManufacturerID()
{
    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    return this->readString(0x99);
}
std::string LT7182S::readManufacturerModel()
{
    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    return this->readString(0x9A);
}
uint8_t LT7182S::readManufacturerRevision()
{
    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    uint8_t rev;

    this->readBlock(0x9B, &rev, 1);

    return rev;
}
std::string LT7182S::readManufacturerSerial()
{
    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    uint8_t buf[255];
    uint8_t size = this->readBlock(0x9E, buf, 255);

    std::stringstream s;

    for(uint16_t i = 0; i < size; i++)
        s << std::hex << std::setw(2) << std::setfill('0') << std::uppercase << (uint16_t)buf[i];

    return s.str();
}
uint16_t LT7182S::readManufacturerSpecialID()
{
    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    return this->readWord(0xE7);
}

uint8_t LT7182S::getStatusByte(LT7182S::Chan ch)
{
    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->selectChannel(ch);

    return this->readByte(0x78);
}
void LT7182S::clearStatusByte(uint8_t mask, LT7182S::Chan ch)
{
    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->selectChannel(ch);

    this->writeByte(0x78, mask);
}
uint16_t LT7182S::getStatusWord(LT7182S::Chan ch)
{
    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->selectChannel(ch);

    return this->readWord(0x79);
}
void LT7182S::clearStatusWord(uint16_t mask, LT7182S::Chan ch)
{
    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->selectChannel(ch);

    this->writeWord(0x79, mask);
}
uint8_t LT7182S::getStatusVOUT(LT7182S::Chan ch)
{
    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->selectChannel(ch);

    return this->readByte(0x7A);
}
void LT7182S::clearStatusVOUT(uint8_t mask, LT7182S::Chan ch)
{
    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->selectChannel(ch);

    this->writeByte(0x7A, mask);
}
uint8_t LT7182S::getStatusIOUT(LT7182S::Chan ch)
{
    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->selectChannel(ch);

    return this->readByte(0x7B);
}
void LT7182S::clearStatusIOUT(uint8_t mask, LT7182S::Chan ch)
{
    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->selectChannel(ch);

    this->writeByte(0x7B, mask);
}
uint8_t LT7182S::getStatusInput(LT7182S::Chan ch)
{
    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->selectChannel(ch);

    return this->readByte(0x7C);
}
void LT7182S::clearStatusInput(uint8_t mask, LT7182S::Chan ch)
{
    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->selectChannel(ch);

    this->writeByte(0x7C, mask);
}
uint8_t LT7182S::getStatusTemperature()
{
    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    return this->readByte(0x7D);
}
void LT7182S::clearStatusTemperature(uint8_t mask)
{
    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->writeByte(0x7D, mask);
}
uint8_t LT7182S::getStatusCML()
{
    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    return this->readByte(0x7E);
}
void LT7182S::clearStatusCML(uint8_t mask)
{
    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->writeByte(0x7E, mask);
}
uint8_t LT7182S::getStatusManufacturerSpecific(LT7182S::Chan ch)
{
    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->selectChannel(ch);

    return this->readByte(0x80);
}
void LT7182S::clearStatusManufacturerSpecific(uint8_t mask, LT7182S::Chan ch)
{
    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->selectChannel(ch);

    this->writeByte(0x80, mask);
}
uint8_t LT7182S::getStatusManufacturerCommon()
{
    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    return this->readByte(0xEF);
}
uint16_t LT7182S::getStatusManufacturerPads()
{
    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    return this->readWord(0xE5);
}
uint8_t LT7182S::getStatusManufacturerPinConfig()
{
    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    return this->readByte(0xF7);
}

void LT7182S::clearFaults()
{
    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->writeCommand(0x03);
}
void LT7182S::clearPeaks()
{
    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->writeCommand(0xE3);
}

LT7182S::ChanState LT7182S::getChannelState(LT7182S::Chan ch)
{
    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->selectChannel(ch);

    uint8_t state = this->readByte(0xF1);

    switch(state)
    {
        case 0:
        case 7:
            return LT7182S::ChanState::STATE_OFF;
        case 2:
            return LT7182S::ChanState::STATE_TON_DELAY;
        case 3:
            return LT7182S::ChanState::STATE_TON_RISE;
        case 4:
        case 5:
            return LT7182S::ChanState::STATE_ON;
        case 6:
            return LT7182S::ChanState::STATE_TOFF_DELAY;
        case 8:
            return LT7182S::ChanState::STATE_TOFF_FALL;
        default:
            throw std::runtime_error("LT7182S: Invalid channel state");
    }
}
LT7182S::ChanOperation LT7182S::getChannelOperation(LT7182S::Chan ch)
{
    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->selectChannel(ch);

    uint8_t op = this->readByte(0x01);

    switch(op)
    {
        case 0x00:
            return LT7182S::ChanOperation::OP_TURN_OFF;
        case 0x80:
            return LT7182S::ChanOperation::OP_ON;
        case 0x98:
            return LT7182S::ChanOperation::OP_MARGIN_LOW;
        case 0xA8:
            return LT7182S::ChanOperation::OP_MARGIN_HIGH;
        case 0x40:
            return LT7182S::ChanOperation::OP_SEQUENCE_OFF;
        default:
            throw std::invalid_argument("LT7182S: Invalid channel operation");
    }
}
void LT7182S::setChannelOperation(LT7182S::ChanOperation op, LT7182S::Chan ch)
{
    switch(op)
    {
        case LT7182S::ChanOperation::OP_TURN_OFF:
        case LT7182S::ChanOperation::OP_ON:
        case LT7182S::ChanOperation::OP_MARGIN_LOW:
        case LT7182S::ChanOperation::OP_MARGIN_HIGH:
        case LT7182S::ChanOperation::OP_SEQUENCE_OFF:
        break;
        default:
            throw std::invalid_argument("LT7182S: Invalid channel operation");
    }

    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->selectChannel(ch);

    this->writeByte(0x01, static_cast<uint8_t>(op));
}

LT7182S::ChanOnOffConfig LT7182S::getChannelOnOffConfig(LT7182S::Chan ch)
{
    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->selectChannel(ch);

    uint8_t reg = this->readByte(0x02);

    LT7182S::ChanOnOffConfig ret;

    ret.check_operation = !!(reg & BIT(3));
    ret.check_run_pin = !!(reg & BIT(2));
    ret.immed_shutdown = !!(reg & BIT(0));

    return ret;
}
void LT7182S::setChannelOnOffConfig(LT7182S::ChanOnOffConfig config, LT7182S::Chan ch)
{
    if(config.immed_shutdown && !config.check_run_pin)
        throw std::invalid_argument("LT7182S: Immediate shutdown requires run pin check");

    uint8_t reg = 0;

    if(config.check_operation)
        reg |= BIT(3);
    if(config.check_run_pin)
        reg |= BIT(2);
    if(config.immed_shutdown)
        reg |= BIT(0);

    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->selectChannel(ch);

    this->writeByte(0x02, reg | 0x12);
}
LT7182S::ChanPWMConfig LT7182S::getChannelPWMConfig(LT7182S::Chan ch)
{
    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->selectChannel(ch);

    uint16_t reg = this->readWord(0xD4);

    LT7182S::ChanPWMConfig ret;

    ret.pulse_skipping = !!(reg & BIT(0));
    ret.low_vout_mode = !!(reg & BIT(1));
    ret.fcm_at_toff = !!(reg & BIT(2));
    ret.rith = R_ITH_LUT[(reg & 0x0038) >> 3];
    ret.cith = (((reg & 0x01C0) >> 6) + 1) * 10.f;
    ret.neg_ilim = Neg_ILim_LUT[(reg & 0x0600) >> 9];
    ret.pos_ilim = Pos_ILim_LUT[(reg & 0x0600) >> 9];
    ret.ea_gm = EAmp_GM_LUT[ret.low_vout_mode ? 1 : 0][(reg & 0x3800) >> 11];

    return ret;
}
void LT7182S::setChannelPWMConfig(LT7182S::ChanPWMConfig config, LT7182S::Chan ch)
{
    if(config.rith < 5.f || config.rith > 120.f)
        throw std::runtime_error("LT7182S: Invalid internal compensation resistor");

    if(config.cith < 10.f || config.cith > 80.f)
        throw std::runtime_error("LT7182S: Invalid internal compensation capacitor");

    if(config.neg_ilim < -4.25f || config.neg_ilim > -2.3f)
        throw std::runtime_error("LT7182S: Invalid negative current limit");

    if(config.pos_ilim < 3.f || config.pos_ilim > 8.5f)
        throw std::runtime_error("LT7182S: Invalid positive current limit");

    float ea_gm_min = config.low_vout_mode ? 37.5f : 150.f;
    float ea_gm_max = config.low_vout_mode ? 1200.f : 300.f;

    if(config.ea_gm < ea_gm_min || config.ea_gm > ea_gm_max)
        throw std::runtime_error("LT7182S: Invalid error amplifier transconductance");

    uint16_t reg = 0;

    if(config.pulse_skipping)
        reg |= BIT(0);
    if(config.low_vout_mode)
        reg |= BIT(1);
    if(config.fcm_at_toff)
        reg |= BIT(2);

    reg |= (LT7182S::FindClosest(config.rith, R_ITH_LUT, 8) << 3) & 0x0038;
    reg |= (((uint8_t)(config.cith / 10.f) - 1) << 6) & 0x01C0;
    reg |= (LT7182S::FindClosest(config.neg_ilim, Neg_ILim_LUT, 4) << 9) & 0x0600;
    reg |= (LT7182S::FindClosest(config.pos_ilim, Pos_ILim_LUT, 4) << 9) & 0x0600;
    reg |= (LT7182S::FindClosest(config.ea_gm, EAmp_GM_LUT[config.low_vout_mode ? 1 : 0], 8) << 11) & 0x3800;

    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->selectChannel(ch);

    this->writeWord(0xD4, reg & 0x3FFF);
}
float LT7182S::getChannelPWMPhase(LT7182S::Chan ch)
{
    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->selectChannel(ch);

    return this->readL11(0xF5);
}
void LT7182S::setChannelPWMPhase(float phase, LT7182S::Chan ch)
{
    while(phase >= 360.f)
        phase -= 360.f;

    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->selectChannel(ch);

    this->writeL11(0xF5, phase);
}
float LT7182S::getPWMFrequency()
{
    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    return this->readL11(0x33) * 1000.f;
}
void LT7182S::setPWMFrequency(float freq)
{
    if(freq < 400000.f || freq > 4000000.f)
        throw std::runtime_error("LT7182S: Invalid PWM frequency (400 kHz - 4 MHz)");

    if((uint32_t)(freq / 100000.f) != (freq / 100000.f))
        throw std::runtime_error("LT7182S: Invalid PWM frequency (must be multiple of 100 KHz)");

    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->writeL11(0x33, freq / 1000.f);
}

float LT7182S::readChannelInputVoltage(LT7182S::Chan ch)
{
    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->selectChannel(ch);

    return this->readL11(0x88);
}
float LT7182S::readChannelPeakInputVoltage(LT7182S::Chan ch)
{
    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->selectChannel(ch);

    return this->readL11(0xDE);
}
float LT7182S::getChannelOnInputVoltage(LT7182S::Chan ch)
{
    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->selectChannel(ch);

    return this->readL11(0x35);
}
void LT7182S::setChannelOnInputVoltage(float voltage, LT7182S::Chan ch)
{
    if(voltage < 1.4f || voltage > 20.f)
        throw std::runtime_error("LT7182S: Invalid input ON voltage (1.4 V - 20 V)");

    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->selectChannel(ch);

    this->writeL11(0x35, voltage);
}
float LT7182S::getChannelOffInputVoltage(LT7182S::Chan ch)
{
    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->selectChannel(ch);

    return this->readL11(0x36);
}
void LT7182S::setChannelOffInputVoltage(float voltage, LT7182S::Chan ch)
{
    if(voltage < 1.35f || voltage > 20.f)
        throw std::runtime_error("LT7182S: Invalid input OFF voltage (1.35 V - 20 V)");

    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->selectChannel(ch);

    this->writeL11(0x36, voltage);
}
float LT7182S::getChannelInputUnderVoltageWarn(LT7182S::Chan ch)
{
    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->selectChannel(ch);

    return this->readL11(0x58);
}
void LT7182S::setChannelInputUnderVoltageWarn(float voltage, LT7182S::Chan ch)
{
    if(voltage < -1.f || voltage > 22.f)
        throw std::runtime_error("LT7182S: Invalid input under voltage warning (-1 V - 22 V)");

    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->selectChannel(ch);

    this->writeL11(0x58, voltage);
}

float LT7182S::readChannelInputCurrent(LT7182S::Chan ch)
{
    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->selectChannel(ch);

    return this->readL11(0x89);
}
float LT7182S::getChannelInputOverCurrentWarn(LT7182S::Chan ch)
{
    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->selectChannel(ch);

    return this->readL11(0x5D);
}
void LT7182S::setChannelInputOverCurrentWarn(float current, LT7182S::Chan ch)
{
    if(current < 0.f || current > 20.f)
        throw std::runtime_error("LT7182S: Invalid input over current warning (0 A - 20 A)");

    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->selectChannel(ch);

    this->writeL11(0x5D, current);
}

float LT7182S::readChannelOutputVoltage(LT7182S::Chan ch)
{
    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->selectChannel(ch);

    return this->readUL16(0x8B);
}
float LT7182S::readChannelPeakOutputVoltage(LT7182S::Chan ch)
{
    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->selectChannel(ch);

    return this->readUL16(0xDD);
}
float LT7182S::getChannelOutputVoltage(LT7182S::Chan ch)
{
    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->selectChannel(ch);

    return this->readUL16(0x21);
}
void LT7182S::setChannelOutputVoltage(float voltage, LT7182S::Chan ch)
{
    if(voltage < 0.4f || voltage > 5.5f)
        throw std::runtime_error("LT7182S: Invalid output voltage (0.4 V - 5.5 V)");

    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->selectChannel(ch);

    this->writeUL16(0x21, voltage);
}
float LT7182S::getChannelMaxOutputVoltage(LT7182S::Chan ch)
{
    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->selectChannel(ch);

    return this->readUL16(0x24);
}
void LT7182S::setChannelMaxOutputVoltage(float voltage, LT7182S::Chan ch)
{
    if(voltage < 0.4f || voltage > 5.5f)
        throw std::runtime_error("LT7182S: Invalid maximum output voltage (0.4 V - 5.5 V)");

    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->selectChannel(ch);

    this->writeUL16(0x24, voltage);
}
float LT7182S::getChannelHighMarginOutputVoltage(LT7182S::Chan ch)
{
    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->selectChannel(ch);

    return this->readUL16(0x25);
}
void LT7182S::setChannelHighMarginOutputVoltage(float voltage, LT7182S::Chan ch)
{
    if(voltage < 0.4f || voltage > 5.5f)
        throw std::runtime_error("LT7182S: Invalid high margin output voltage (0.4 V - 5.5 V)");

    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->selectChannel(ch);

    this->writeUL16(0x25, voltage);
}
float LT7182S::getChannelLowMarginOutputVoltage(LT7182S::Chan ch)
{
    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->selectChannel(ch);

    return this->readUL16(0x26);
}
void LT7182S::setChannelLowMarginOutputVoltage(float voltage, LT7182S::Chan ch)
{
    if(voltage < 0.4f || voltage > 5.5f)
        throw std::runtime_error("LT7182S: Invalid low margin output voltage (0.4 V - 5.5 V)");

    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->selectChannel(ch);

    this->writeUL16(0x26, voltage);
}
float LT7182S::getChannelOutputVoltageTransitionRate(LT7182S::Chan ch)
{
    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->selectChannel(ch);

    return this->readL11(0x27);
}
void LT7182S::setChannelOutputVoltageTransitionRate(float rate, LT7182S::Chan ch)
{
    if(rate < 0.01f || rate > 25.f)
        throw std::runtime_error("LT7182S: Invalid output voltage transition rate (0.01 V/ms - 25 V/ms)");

    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->selectChannel(ch);

    this->writeL11(0x27, rate);
}
float LT7182S::getChannelOutputOverVoltageFault(LT7182S::Chan ch)
{
    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->selectChannel(ch);

    return this->readUL16(0x40);
}
void LT7182S::setChannelOutputOverVoltageFault(float voltage, LT7182S::Chan ch)
{
    if(voltage < 0.4f || voltage > 6.f)
        throw std::runtime_error("LT7182S: Invalid output over voltage fault (0.4 V - 6 V)");

    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->selectChannel(ch);

    this->writeUL16(0x40, voltage);
}
float LT7182S::getChannelOutputOverVoltageWarn(LT7182S::Chan ch)
{
    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->selectChannel(ch);

    return this->readUL16(0x42);
}
void LT7182S::setChannelOutputOverVoltageWarn(float voltage, LT7182S::Chan ch)
{
    if(voltage < 0.f || voltage > 6.f)
        throw std::runtime_error("LT7182S: Invalid output over voltage warning (0 V - 6 V)");

    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->selectChannel(ch);

    this->writeUL16(0x42, voltage);
}
float LT7182S::getChannelOutputUnderVoltageFault(LT7182S::Chan ch)
{
    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->selectChannel(ch);

    return this->readUL16(0x44);
}
void LT7182S::setChannelOutputUnderVoltageFault(float voltage, LT7182S::Chan ch)
{
    if(voltage < 0.36f || voltage > 5.5f)
        throw std::runtime_error("LT7182S: Invalid output under voltage fault (0 V - 5.5 V)");

    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->selectChannel(ch);

    this->writeUL16(0x44, voltage);
}
float LT7182S::getChannelOutputUnderVoltageWarn(LT7182S::Chan ch)
{
    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->selectChannel(ch);

    return this->readUL16(0x43);
}
void LT7182S::setChannelOutputUnderVoltageWarn(float voltage, LT7182S::Chan ch)
{
    if(voltage < 0.f || voltage > 5.5f)
        throw std::runtime_error("LT7182S: Invalid output under voltage warning (0 V - 5.5 V)");

    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->selectChannel(ch);

    this->writeUL16(0x43, voltage);
}

float LT7182S::readChannelOutputCurrent(LT7182S::Chan ch)
{
    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->selectChannel(ch);

    return this->readL11(0x8C);
}
float LT7182S::readChannelPeakOutputCurrent(LT7182S::Chan ch)
{
    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->selectChannel(ch);

    return this->readL11(0xD7);
}
float LT7182S::getChannelOutputOverCurrentWarn(LT7182S::Chan ch)
{
    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->selectChannel(ch);

    return this->readL11(0x4A);
}
void LT7182S::setChannelOutputOverCurrentWarn(float current, LT7182S::Chan ch)
{
    if(current < 0.f || current > 20.f)
        throw std::runtime_error("LT7182S: Invalid output over current warning (0 A - 20 A)");

    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->selectChannel(ch);

    this->writeL11(0x4A, current);
}

float LT7182S::readChannelFrequency(LT7182S::Chan ch)
{
    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->selectChannel(ch);

    return this->readL11(0x95) * 1000.f;
}
float LT7182S::readChannelOutputPower(LT7182S::Chan ch)
{
    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->selectChannel(ch);

    return this->readL11(0x96);
}
float LT7182S::readChannelITHVoltage(LT7182S::Chan ch)
{
    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->selectChannel(ch);

    return this->readL11(0xCE);
}

float LT7182S::readExternalVCCVoltage()
{
    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    return this->readL11(0xCD);
}
float LT7182S::readTemperature()
{
    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    return this->readL11(0x8D);
}
float LT7182S::readPeakTemperature()
{
    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    return this->readL11(0xDF);
}
float LT7182S::getOverTemperatureFault()
{
    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    return this->readL11(0x4F);
}
void LT7182S::setOverTemperatureFault(float temp)
{
    if(temp < -60.f || temp > 160.f)
        throw std::runtime_error("LT7182S: Invalid over temperature fault (-60 C - 160 C)");

    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->writeL11(0x4F, temp);
}
float LT7182S::getOverTemperatureWarn()
{
    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    return this->readL11(0x51);
}
void LT7182S::setOverTemperatureWarn(float temp)
{
    if(temp < -60.f || temp > 160.f)
        throw std::runtime_error("LT7182S: Invalid over temperature warning (-60 C - 160 C)");

    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->writeL11(0x51, temp);
}
