#include "SPIFlash.hpp"

SPIFlash::SPIFlash(SPIFlash::SPIConfig spi)
{
    this->spi = spi;

    if(this->spi.controller == nullptr)
        throw std::runtime_error("SPI Flash: SPI not initialized");

    this->dev = SPIFlash::DeviceID::UNKNOWN;
    this->dev_size = 0;

    this->resetContinuousRead();
    this->detectDevice();
}

void SPIFlash::detectDevice()
{
    uint32_t jedec = this->readJEDECID();

    switch(jedec)
    {
        case 0xEF4017:
        {
            uint16_t mf_dev = this->readMFDeviceID();

            if(mf_dev != 0xEF16)
                break;

            this->dev_size = 8 * 1024 * 1024;

            // Distinguish between BV and JV/FV variants
            uint16_t mf_dev_dual = this->readMFDeviceIDDual();
            uint16_t mf_dev_quad = this->readMFDeviceIDQuad();

            if(mf_dev_dual != 0xEF16 && mf_dev_quad != 0xEF16)
            {
                this->dev = SPIFlash::DeviceID::W25Q64BV; // BV does not have dual/quad I/O ID read support
            }
            else
            {
                // Distinguish between JV and FV variants
                uint8_t data = this->read(0x00FFFFFF);
                uint8_t data_dual = this->readDualIO(0x00FFFFFF, false, true);
                uint8_t data_dual_cont = this->readDualIO(0x00FFFFFF, true, false);

                if(data == data_dual)
                {
                    if(data_dual != data_dual_cont)
                        this->dev = SPIFlash::DeviceID::W25Q64JV; // JV does not support continuous read
                    else
                        this->dev = SPIFlash::DeviceID::W25Q64FV; // FV supports continuous read
                }
            }
        }
        break;
    }
}

void SPIFlash::resetContinuousRead()
{
    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    if(this->spi.controller == nullptr)
        throw std::runtime_error("SPI Flash: SPI not initialized");

    this->spi.controller->selectSlave(this->spi.ss_mask, true); // This locks mutex

    this->spi.controller->setIOMode(AXISPI::IOMode::SINGLE);

    this->spi.controller->write(0xFF, true);

    this->spi.controller->selectSlave(this->spi.ss_mask, false); // This unlocks mutex
}

std::string SPIFlash::getDeviceName()
{
    switch(this->dev)
    {
        case SPIFlash::DeviceID::W25Q32JV:
            return "W25Q32JV";
        case SPIFlash::DeviceID::W25Q64JV:
            return "W25Q64JV";
        case SPIFlash::DeviceID::W25Q64BV:
            return "W25Q64BV";
        case SPIFlash::DeviceID::W25Q64FV:
            return "W25Q64FV";
        case SPIFlash::DeviceID::SST26VF016B:
            return "SST26VF016B";
        case SPIFlash::DeviceID::SST26VF064B:
            return "SST26VF064B";
        default:
            return "Unknown";
    }
}

uint32_t SPIFlash::readJEDECID()
{
    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    if(this->spi.controller == nullptr)
        throw std::runtime_error("SPI Flash: SPI not initialized");

    uint8_t buf[3];

    this->spi.controller->selectSlave(this->spi.ss_mask, true); // This locks mutex

    this->spi.controller->setIOMode(AXISPI::IOMode::SINGLE);

    this->spi.controller->write(SPI_FLASH_CMD_JEDEC_READ_ID, true);
    this->spi.controller->read(buf, 3);

    this->spi.controller->selectSlave(this->spi.ss_mask, false); // This unlocks mutex

    return ((uint32_t)buf[0] << 16) | ((uint32_t)buf[1] << 8) | (uint32_t)buf[2];
}
uint16_t SPIFlash::readMFDeviceID()
{
    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    if(this->spi.controller == nullptr)
        throw std::runtime_error("SPI Flash: SPI not initialized");

    uint8_t buf[2];

    this->spi.controller->selectSlave(this->spi.ss_mask, true); // This locks mutex

    this->spi.controller->setIOMode(AXISPI::IOMode::SINGLE);

    this->spi.controller->write(SPI_FLASH_CMD_READ_MF_DEV_ID, false);
    this->spi.controller->write(0x00, false);
    this->spi.controller->write(0x00, false);
    this->spi.controller->write(0x00, true);
    this->spi.controller->read(buf, 2);

    this->spi.controller->selectSlave(this->spi.ss_mask, false); // This unlocks mutex

    return ((uint16_t)buf[0] << 8) | (uint16_t)buf[1];
}
uint16_t SPIFlash::readMFDeviceIDDual()
{
    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    if(this->spi.controller == nullptr)
        throw std::runtime_error("SPI Flash: SPI not initialized");

    uint8_t buf[2];

    this->spi.controller->selectSlave(this->spi.ss_mask, true); // This locks mutex

    this->spi.controller->setIOMode(AXISPI::IOMode::SINGLE);

    this->spi.controller->write(SPI_FLASH_CMD_READ_MF_DEV_ID_DIO, true);

    this->spi.controller->setIOMode(AXISPI::IOMode::DUAL);

    this->spi.controller->write(0x00, false);
    this->spi.controller->write(0x00, false);
    this->spi.controller->write(0x00, false);
    this->spi.controller->write(0xF0, true);
    this->spi.controller->read(buf, 2);

    this->spi.controller->selectSlave(this->spi.ss_mask, false); // This unlocks mutex

    return ((uint16_t)buf[0] << 8) | (uint16_t)buf[1];
}
uint16_t SPIFlash::readMFDeviceIDQuad()
{
    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    if(this->spi.controller == nullptr)
        throw std::runtime_error("SPI Flash: SPI not initialized");

    uint8_t buf[4];

    this->spi.controller->selectSlave(this->spi.ss_mask, true); // This locks mutex

    this->spi.controller->setIOMode(AXISPI::IOMode::SINGLE);

    this->spi.controller->write(SPI_FLASH_CMD_READ_MF_DEV_ID_QIO, false);

    this->spi.controller->setIOMode(AXISPI::IOMode::QUAD);

    this->spi.controller->write(0x00, false);
    this->spi.controller->write(0x00, false);
    this->spi.controller->write(0x00, false);
    this->spi.controller->write(0xF0, true);
    this->spi.controller->read(buf, 4);

    this->spi.controller->selectSlave(this->spi.ss_mask, false); // This unlocks mutex

    return ((uint16_t)buf[2] << 8) | (uint16_t)buf[3];
}

void SPIFlash::read(uint32_t addr, uint8_t *dst, uint32_t size)
{
    if(!size)
        return;

    if(!dst)
        throw std::invalid_argument("SPI Flash: Destination buffer cannot be null");

    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    if(this->spi.controller == nullptr)
        throw std::runtime_error("SPI Flash: SPI not initialized");

    this->spi.controller->selectSlave(this->spi.ss_mask, true); // This locks mutex

    this->spi.controller->setIOMode(AXISPI::IOMode::SINGLE);

    this->spi.controller->write(SPI_FLASH_CMD_READ_FAST, false);
    this->spi.controller->write((addr >> 16) & 0xFF, false);
    this->spi.controller->write((addr >> 8) & 0xFF, false);
    this->spi.controller->write((addr >> 0) & 0xFF, false);
    this->spi.controller->write(0x00, true);
    this->spi.controller->read(dst, size);

    this->spi.controller->selectSlave(this->spi.ss_mask, false); // This unlocks mutex
}
void SPIFlash::readDualIO(uint32_t addr, uint8_t *dst, uint32_t size, bool cont, bool set_cont)
{
    if(!size)
        return;

    if(!dst)
        throw std::invalid_argument("SPI Flash: Destination buffer cannot be null");

    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    if(this->spi.controller == nullptr)
        throw std::runtime_error("SPI Flash: SPI not initialized");

    this->spi.controller->selectSlave(this->spi.ss_mask, true); // This locks mutex

    if(!cont)
    {
        this->spi.controller->setIOMode(AXISPI::IOMode::SINGLE);

        this->spi.controller->write(SPI_FLASH_CMD_READ_FAST_DIO, false);
    }

    this->spi.controller->setIOMode(AXISPI::IOMode::DUAL);

    this->spi.controller->write((addr >> 16) & 0xFF, false);
    this->spi.controller->write((addr >> 8) & 0xFF, false);
    this->spi.controller->write((addr >> 0) & 0xFF, false);
    this->spi.controller->write(set_cont ? 0xA0 : 0xF0, true);
    this->spi.controller->read(dst, size);

    this->spi.controller->selectSlave(this->spi.ss_mask, false); // This unlocks mutex
}
void SPIFlash::readQuadIO(uint32_t addr, uint8_t *dst, uint32_t size, bool cont, bool set_cont)
{
    if(!size)
        return;

    if(!dst)
        throw std::invalid_argument("SPI Flash: Destination buffer cannot be null");

    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    if(this->spi.controller == nullptr)
        throw std::runtime_error("SPI Flash: SPI not initialized");

    this->spi.controller->selectSlave(this->spi.ss_mask, true); // This locks mutex

    if(!cont)
    {
        this->spi.controller->setIOMode(AXISPI::IOMode::SINGLE);

        this->spi.controller->write(SPI_FLASH_CMD_READ_FAST_QIO, false);
    }

    this->spi.controller->setIOMode(AXISPI::IOMode::QUAD);

    this->spi.controller->write((addr >> 16) & 0xFF, false);
    this->spi.controller->write((addr >> 8) & 0xFF, false);
    this->spi.controller->write((addr >> 0) & 0xFF, false);
    this->spi.controller->write(set_cont ? 0xA0 : 0xF0, false);
    this->spi.controller->write(0x00, false);
    this->spi.controller->write(0x00, true);
    this->spi.controller->read(dst, size);

    this->spi.controller->selectSlave(this->spi.ss_mask, false); // This unlocks mutex
}