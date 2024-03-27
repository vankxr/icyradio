#include "AXIDNA.hpp"

AXIDNA::AXIDNA(void *base_address): AXIPeripheral(base_address)
{
    std::string id = this->getDesignID();

    if(id != "ICYRADIO")
        throw std::runtime_error("Invalid FPGA design ID: " + id);
}

std::string AXIDNA::getDesignID()
{
    uint64_t id = this->readReg64(AXI_DNA_REG_DESIGN_ID_LOW);
    std::string ret = "";

    for(uint8_t i = 0; i < 8; i++)
        ret += (char)((id >> (i * 8)) & 0xFF);

    return ret;
}
uint32_t AXIDNA::getDesignVersion()
{
    return this->readReg(AXI_DNA_REG_DESIGN_VERSION);
}

std::string AXIDNA::getDeviceInfo()
{
    uint32_t info = this->readReg(AXI_DNA_REG_DEVICE_INFO);

    std::string ret = "Xilinx";

    switch((info >> 24) & 0xFF)
    {
        case 'A':
            ret += "Artix";
        break;
        default:
            ret += "?";
        break;
    }

    ret += " ";

    switch((info >> 8) & 0xFFFF)
    {
        case 100:
            ret += "100T";
        break;
        case 200:
            ret += "200T";
        break;
        default:
            ret += "?";
        break;
    }

    switch(info & 0xFF)
    {
        case 1:
            ret += "-1";
        break;
        case 2:
            ret += "-2";
        break;
        case 3:
            ret += "-3";
        break;
        default:
            ret += "-?";
    }

    return ret;
}

bool AXIDNA::isSerialNumberReady()
{
    return !!(this->readReg(AXI_DNA_REG_DNA_HIGH) & BIT(31));
}
uint64_t AXIDNA::getSerialNumber()
{
    return this->readReg64(AXI_DNA_REG_DNA_LOW) & 0x01FFFFFFFFFFFFFF; // 57 bits
}