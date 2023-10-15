#include "AXIXADC.hpp"

double AXIXADC::toTemperature(uint16_t code)
{
    return (double)code * 503.975 / 4096.0 - 273.15;
}
uint16_t AXIXADC::fromTemperature(double val)
{
    return (val + 273.15) * 4096.0 / 503.975;
}
double AXIXADC::toVoltage(uint16_t code)
{
    return (double)code * 3.0 / 4096.0;
}
uint16_t AXIXADC::fromVoltage(double val)
{
    return val * 4096.0 / 3.0;
}

AXIXADC::AXIXADC(void *base_address): AXIPeripheral(base_address)
{
    // TODO: Configure things
}

double AXIXADC::readTemperature()
{
    return AXIXADC::toTemperature(this->readReg(AXI_XADC_REG_TEMP) >> 4);
}
double AXIXADC::readVCCINT()
{
    return AXIXADC::toVoltage(this->readReg(AXI_XADC_REG_VCCINT) >> 4);
}
double AXIXADC::readVCCAUX()
{
    return AXIXADC::toVoltage(this->readReg(AXI_XADC_REG_VCCAUX) >> 4);
}
double AXIXADC::readVBRAM()
{
    return AXIXADC::toVoltage(this->readReg(AXI_XADC_REG_VBRAM) >> 4);
}

double AXIXADC::readMaxTemperature()
{
    return AXIXADC::toTemperature(this->readReg(AXI_XADC_REG_MAX_TEMP) >> 4);
}
double AXIXADC::readMaxVCCINT()
{
    return AXIXADC::toVoltage(this->readReg(AXI_XADC_REG_MAX_VCCINT) >> 4);
}
double AXIXADC::readMaxVCCAUX()
{
    return AXIXADC::toVoltage(this->readReg(AXI_XADC_REG_MAX_VCCAUX) >> 4);
}
double AXIXADC::readMaxVBRAM()
{
    return AXIXADC::toVoltage(this->readReg(AXI_XADC_REG_MAX_VBRAM) >> 4);
}

double AXIXADC::readMinTemperature()
{
    return AXIXADC::toTemperature(this->readReg(AXI_XADC_REG_MIN_TEMP) >> 4);
}
double AXIXADC::readMinVCCINT()
{
    return AXIXADC::toVoltage(this->readReg(AXI_XADC_REG_MIN_VCCINT) >> 4);
}
double AXIXADC::readMinVCCAUX()
{
    return AXIXADC::toVoltage(this->readReg(AXI_XADC_REG_MIN_VCCAUX) >> 4);
}
double AXIXADC::readMinVBRAM()
{
    return AXIXADC::toVoltage(this->readReg(AXI_XADC_REG_MIN_VBRAM) >> 4);
}