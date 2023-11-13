#include "AXIXADC.hpp"

double AXIXADC::ToTemperature(uint16_t code)
{
    return (double)code * 503.975 / 4096.0 - 273.15;
}
uint16_t AXIXADC::FromTemperature(double val)
{
    return (val + 273.15) * 4096.0 / 503.975;
}
double AXIXADC::ToVoltage(uint16_t code)
{
    return (double)code * 3.0 / 4096.0;
}
uint16_t AXIXADC::FromVoltage(double val)
{
    return val * 4096.0 / 3.0;
}

AXIXADC::AXIXADC(void *base_address): AXIPeripheral(base_address)
{
    // TODO: Configure things
}

double AXIXADC::readTemperature()
{
    return AXIXADC::ToTemperature(this->readReg(AXI_XADC_REG_TEMP) >> 4);
}
double AXIXADC::readVCCINT()
{
    return AXIXADC::ToVoltage(this->readReg(AXI_XADC_REG_VCCINT) >> 4);
}
double AXIXADC::readVCCAUX()
{
    return AXIXADC::ToVoltage(this->readReg(AXI_XADC_REG_VCCAUX) >> 4);
}
double AXIXADC::readVBRAM()
{
    return AXIXADC::ToVoltage(this->readReg(AXI_XADC_REG_VBRAM) >> 4);
}

double AXIXADC::readMaxTemperature()
{
    return AXIXADC::ToTemperature(this->readReg(AXI_XADC_REG_MAX_TEMP) >> 4);
}
double AXIXADC::readMaxVCCINT()
{
    return AXIXADC::ToVoltage(this->readReg(AXI_XADC_REG_MAX_VCCINT) >> 4);
}
double AXIXADC::readMaxVCCAUX()
{
    return AXIXADC::ToVoltage(this->readReg(AXI_XADC_REG_MAX_VCCAUX) >> 4);
}
double AXIXADC::readMaxVBRAM()
{
    return AXIXADC::ToVoltage(this->readReg(AXI_XADC_REG_MAX_VBRAM) >> 4);
}

double AXIXADC::readMinTemperature()
{
    return AXIXADC::ToTemperature(this->readReg(AXI_XADC_REG_MIN_TEMP) >> 4);
}
double AXIXADC::readMinVCCINT()
{
    return AXIXADC::ToVoltage(this->readReg(AXI_XADC_REG_MIN_VCCINT) >> 4);
}
double AXIXADC::readMinVCCAUX()
{
    return AXIXADC::ToVoltage(this->readReg(AXI_XADC_REG_MIN_VCCAUX) >> 4);
}
double AXIXADC::readMinVBRAM()
{
    return AXIXADC::ToVoltage(this->readReg(AXI_XADC_REG_MIN_VBRAM) >> 4);
}