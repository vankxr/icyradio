#include "AXISPI.hpp"

AXISPI::AXISPI(void *base_address): AXIPeripheral(base_address)
{
    uint32_t version = this->getIPVersion();

    if(AXI_CORE_VERSION_MAJOR(version) < 1)
        throw std::runtime_error("AXI SPI Core v" + std::to_string(AXI_CORE_VERSION_MAJOR(version)) + "." + std::to_string(AXI_CORE_VERSION_MINOR(version)) + "." + std::to_string(AXI_CORE_VERSION_PATCH(version)) + " is not supported");

    // Detect max number of slaves
    this->writeReg(AXI_SPI_REG_SLAVE_SEL, 0xFFFFFFFF);

    this->ss_mask = this->readReg(AXI_SPI_REG_SLAVE_SEL);

    // Detect max clock divider
    this->writeReg(AXI_SPI_REG_SCK_DIV, 0xFFFFFFFF);

    this->max_sck_div = ((uint64_t)this->readReg(AXI_SPI_REG_SCK_DIV) + 1) << 1;

    // Detect capabilities
    uint32_t reg_restore = this->readReg(AXI_SPI_REG_CTRL);

    this->writeReg(AXI_SPI_REG_CTRL, AXI_SPI_REG_CTRL_IO_MODE_DUAL);

    if(this->readReg(AXI_SPI_REG_CTRL) & AXI_SPI_REG_CTRL_IO_MODE_DUAL)
        this->capabilities.dual_io_supported = true;
    else
        this->capabilities.dual_io_supported = false;

    this->writeReg(AXI_SPI_REG_CTRL, AXI_SPI_REG_CTRL_IO_MODE_QUAD);

    if(this->readReg(AXI_SPI_REG_CTRL) & AXI_SPI_REG_CTRL_IO_MODE_QUAD)
        this->capabilities.quad_io_supported = true;
    else
        this->capabilities.quad_io_supported = false;

    this->writeReg(AXI_SPI_REG_CTRL, AXI_SPI_REG_CTRL_MMIO_EN_REQ);

    if(this->readReg(AXI_SPI_REG_CTRL) & AXI_SPI_REG_CTRL_MMIO_EN_REQ)
        this->capabilities.mmio_supported = true;
    else
        this->capabilities.mmio_supported = false;

    this->writeReg(AXI_SPI_REG_CTRL, reg_restore);
}

uint32_t AXISPI::getIPVersion()
{
    return this->readReg(AXI_SPI_REG_VERSION);
}

void AXISPI::setMode(AXISPI::Mode mode)
{
    uint32_t val;

    switch(mode)
    {
        case AXISPI::Mode::MODE_0:
            val = AXI_SPI_REG_CTRL_SPI_MODE(0);
        break;
        case AXISPI::Mode::MODE_1:
            val = AXI_SPI_REG_CTRL_SPI_MODE(1);
        break;
        case AXISPI::Mode::MODE_2:
            val = AXI_SPI_REG_CTRL_SPI_MODE(2);
        break;
        case AXISPI::Mode::MODE_3:
            val = AXI_SPI_REG_CTRL_SPI_MODE(3);
        break;
        default:
            throw std::invalid_argument("AXI SPI: Invalid mode");
    }

    if(this->enabled())
        throw std::runtime_error("AXI SPI: Cannot configure mode while enabled");

    this->writeReg(AXI_SPI_REG_CTRL, (this->readReg(AXI_SPI_REG_CTRL) & ~AXI_SPI_REG_CTRL_SPI_MODE(3)) | val);
}
AXISPI::Mode AXISPI::getMode()
{
    switch((this->readReg(AXI_SPI_REG_CTRL) & AXI_SPI_REG_CTRL_SPI_MODE(3)) >> 2)
    {
        case 0:
            return AXISPI::Mode::MODE_0;
        case 1:
            return AXISPI::Mode::MODE_1;
        case 2:
            return AXISPI::Mode::MODE_2;
        case 3:
            return AXISPI::Mode::MODE_3;
        default:
            throw std::runtime_error("AXI SPI: Invalid mode");
    }
}

void AXISPI::setBitOrder(AXISPI::BitOrder bit_order)
{
    uint32_t val;

    switch(bit_order)
    {
        case AXISPI::BitOrder::MSB_FIRST:
            val = 0;
        break;
        case AXISPI::BitOrder::LSB_FIRST:
            val = AXI_SPI_REG_CTRL_LSB_FIRST;
        break;
        default:
            throw std::invalid_argument("AXI SPI: Invalid bit order");
    }

    if(this->enabled())
        throw std::runtime_error("AXI SPI: Cannot configure bit order while enabled");

    this->writeReg(AXI_SPI_REG_CTRL, (this->readReg(AXI_SPI_REG_CTRL) & ~AXI_SPI_REG_CTRL_LSB_FIRST) | val);
}
AXISPI::BitOrder AXISPI::getBitOrder()
{
    if(this->readReg(AXI_SPI_REG_CTRL) & AXI_SPI_REG_CTRL_LSB_FIRST)
        return AXISPI::BitOrder::LSB_FIRST;
    else
        return AXISPI::BitOrder::MSB_FIRST;
}

void AXISPI::setIOMode(AXISPI::IOMode io_mode)
{
    uint32_t val;

    switch(io_mode)
    {
        case AXISPI::IOMode::SINGLE:
            val = AXI_SPI_REG_CTRL_IO_MODE_SINGLE;
        break;
        case AXISPI::IOMode::DUAL:
            if(!this->capabilities.dual_io_supported)
                throw std::invalid_argument("AXI SPI: Dual IO mode not supported");

            val = AXI_SPI_REG_CTRL_IO_MODE_DUAL;
        break;
        case AXISPI::IOMode::QUAD:
            if(!this->capabilities.quad_io_supported)
                throw std::invalid_argument("AXI SPI: Quad IO mode not supported");

            val = AXI_SPI_REG_CTRL_IO_MODE_QUAD;
        break;
        default:
            throw std::invalid_argument("AXI SPI: Invalid IO mode");
    }

    if(this->enabled())
        throw std::runtime_error("AXI SPI: Cannot configure IO mode while enabled");

    this->writeReg(AXI_SPI_REG_CTRL, (this->readReg(AXI_SPI_REG_CTRL) & ~(AXI_SPI_REG_CTRL_IO_MODE_QUAD | AXI_SPI_REG_CTRL_IO_MODE_DUAL | AXI_SPI_REG_CTRL_IO_MODE_SINGLE)) | val);
}
AXISPI::IOMode AXISPI::getIOMode()
{
    switch(this->readReg(AXI_SPI_REG_CTRL) & (AXI_SPI_REG_CTRL_IO_MODE_QUAD | AXI_SPI_REG_CTRL_IO_MODE_DUAL | AXI_SPI_REG_CTRL_IO_MODE_SINGLE))
    {
        case AXI_SPI_REG_CTRL_IO_MODE_SINGLE:
            return AXISPI::IOMode::SINGLE;
        case AXI_SPI_REG_CTRL_IO_MODE_DUAL:
            return AXISPI::IOMode::DUAL;
        case AXI_SPI_REG_CTRL_IO_MODE_QUAD:
            return AXISPI::IOMode::QUAD;
        default:
            throw std::runtime_error("AXI SPI: Invalid IO mode");
    }
}

void AXISPI::configMMIOMode(uint8_t addr_bytes, uint8_t dummy_bytes, uint8_t mode_bits, uint8_t cs_high_wait)
{
    if(!this->capabilities.mmio_supported)
        throw std::runtime_error("AXI SPI: MMIO mode not supported");

    if(addr_bytes < 1 || addr_bytes > 4)
        throw std::invalid_argument("AXI SPI: Address bytes must be between 1 and 4");

    if(dummy_bytes > 3)
        throw std::invalid_argument("AXI SPI: Dummy bytes must be between 0 and 3");

    if(this->MMIOenabled())
        throw std::runtime_error("AXI SPI: Cannot configure MMIO mode while MMIO enabled");

    this->writeReg(AXI_SPI_REG_MMIO_CTRL, AXI_SPI_REG_MMIO_CTRL_ADDR_SIZE(addr_bytes - 1) | AXI_SPI_REG_MMIO_CTRL_DUMMY_SIZE(dummy_bytes) | AXI_SPI_REG_MMIO_CTRL_MODE_BITS(mode_bits) | AXI_SPI_REG_MMIO_CTRL_CS_HIGH_WAIT(cs_high_wait));
}

void AXISPI::configClockDivider(uint64_t sck_div)
{
    if(sck_div < 2 || sck_div > this->max_sck_div)
        throw std::invalid_argument("AXI SPI: SCK divider must be between 2 and " + std::to_string(this->max_sck_div));

    if(sck_div & 1)
        throw std::invalid_argument("AXI SPI: SCK divider must be even");

    if(this->clockEnabled())
        throw std::runtime_error("AXI SPI: Cannot configure clock dividers while enabled");

    this->writeReg(AXI_SPI_REG_SCK_DIV, (sck_div >> 1) - 1);
}
void AXISPI::configClock(uint64_t input_freq, uint64_t sck_freq)
{
    uint64_t sck_div = input_freq / sck_freq;

    this->configClockDivider(sck_div);
}

void AXISPI::enableClock(bool enable)
{
    uint32_t ctrl = this->readReg(AXI_SPI_REG_CTRL);

    if(enable && (ctrl & AXI_SPI_REG_CTRL_SCK_DIV_EN)) // Already enabled
        throw std::runtime_error("AXI SPI: Already enabled");

    if(!enable && !(ctrl & AXI_SPI_REG_CTRL_SCK_DIV_EN)) // Already disabled
        throw std::runtime_error("AXI SPI: Already disabled");

    if(!enable && (ctrl & AXI_SPI_REG_CTRL_SPI_EN)) // SPI enabled, can't disable clock
        throw std::runtime_error("AXI SPI: Cannot disable clock while SPI is enabled");

    if(enable)
        ctrl |= AXI_SPI_REG_CTRL_SCK_DIV_EN;
    else
        ctrl &= ~AXI_SPI_REG_CTRL_SCK_DIV_EN;

    this->writeReg(AXI_SPI_REG_CTRL, ctrl);
}
bool AXISPI::clockEnabled()
{
    return this->readReg(AXI_SPI_REG_CTRL) & AXI_SPI_REG_CTRL_SCK_DIV_EN;
}
void AXISPI::enable(bool enable)
{
    uint32_t ctrl = this->readReg(AXI_SPI_REG_CTRL);

    if(enable && (ctrl & AXI_SPI_REG_CTRL_SPI_EN)) // Already enabled
        throw std::runtime_error("AXI SPI: Already enabled");

    if(!enable && !(ctrl & AXI_SPI_REG_CTRL_SPI_EN)) // Already disabled
        throw std::runtime_error("AXI SPI: Already disabled");

    if(enable && !(ctrl & AXI_SPI_REG_CTRL_SCK_DIV_EN)) // Clock disabled, can't enable SPI
        throw std::runtime_error("AXI SPI: Cannot enable SPI while clock is disabled");

    if(!enable && (ctrl & (AXI_SPI_REG_CTRL_MMIO_EN | AXI_SPI_REG_CTRL_MMIO_EN_REQ))) // MMIO enabled, can't disable SPI
        throw std::runtime_error("AXI SPI: Cannot disable SPI while MMIO is enabled");

    if(enable)
        ctrl |= AXI_SPI_REG_CTRL_SPI_EN;
    else
        ctrl &= ~AXI_SPI_REG_CTRL_SPI_EN;

    this->writeReg(AXI_SPI_REG_CTRL, ctrl);
}
bool AXISPI::enabled()
{
    return this->readReg(AXI_SPI_REG_CTRL) & AXI_SPI_REG_CTRL_SPI_EN;
}
void AXISPI::enableMMIO(bool enable)
{
    uint32_t ctrl = this->readReg(AXI_SPI_REG_CTRL);

    if(enable && (ctrl & AXI_SPI_REG_CTRL_MMIO_EN_REQ)) // Already requested to be enabled
        throw std::runtime_error("AXI SPI: Already requested to be enabled");

    if(!enable && !(ctrl & AXI_SPI_REG_CTRL_MMIO_EN_REQ)) // Already requested to be disabled
        throw std::runtime_error("AXI SPI: Already requested to be disabled");

    if(enable && !(ctrl & AXI_SPI_REG_CTRL_SPI_EN)) // SPI disabled, can't enable MMIO
        throw std::runtime_error("AXI SPI: Cannot enable MMIO while SPI is disabled");

    if(enable)
        ctrl |= AXI_SPI_REG_CTRL_MMIO_EN_REQ;
    else
        ctrl &= ~AXI_SPI_REG_CTRL_MMIO_EN_REQ;

    this->writeReg(AXI_SPI_REG_CTRL, ctrl);
}
bool AXISPI::MMIOenabled()
{
    return this->readReg(AXI_SPI_REG_CTRL) & AXI_SPI_REG_CTRL_MMIO_EN;
}

void AXISPI::slaveSelect(uint32_t mask, const bool select)
{
    if(!mask)
        return; // Nothing to do

    if(select) // Always take the mutex when selecting a slave
        this->mutex.lock();

    uint32_t reg_value = this->readReg(AXI_SPI_REG_SLAVE_SEL);

    if(select)
        reg_value &= ~mask;
    else
        reg_value |= mask;

    this->writeReg(AXI_SPI_REG_SLAVE_SEL, reg_value);

    if(reg_value == this->ss_mask) // Only release the lock if all slaves are deselected
        this->mutex.unlock();
}

uint8_t AXISPI::transfer(const uint8_t data)
{
    while(this->readReg(AXI_SPI_REG_RD_DATA) & AXI_SPI_REG_RD_DATA_VALID)
        usleep(0);

    this->writeReg(AXI_SPI_REG_CMD, AXI_SPI_REG_CMD_START_WRITE | AXI_SPI_REG_CMD_WR_DATA(data));

    uint32_t rd_data = this->readReg(AXI_SPI_REG_RD_DATA);

    while(!(rd_data & AXI_SPI_REG_RD_DATA_VALID))
    {
        usleep(0);

        rd_data = this->readReg(AXI_SPI_REG_RD_DATA);
    }

    return rd_data & 0xFF;
}
void AXISPI::write(const uint8_t data, const bool wait)
{
    while(this->readReg(AXI_SPI_REG_CTRL) & AXI_SPI_REG_CTRL_OUT_BUF_VALID)
        usleep(0);

    this->writeReg(AXI_SPI_REG_CMD, AXI_SPI_REG_CMD_START_WRITE | AXI_SPI_REG_CMD_WR_DATA(data));

    while(wait && !(this->readReg(AXI_SPI_REG_CTRL) & AXI_SPI_REG_CTRL_SPI_IDLE))
        usleep(0);
}
uint8_t AXISPI::read()
{
    while(this->readReg(AXI_SPI_REG_RD_DATA) & AXI_SPI_REG_RD_DATA_VALID)
        usleep(0);

    this->writeReg(AXI_SPI_REG_CMD, AXI_SPI_REG_CMD_START_READ);

    uint32_t rd_data = this->readReg(AXI_SPI_REG_RD_DATA);

    while(!(rd_data & AXI_SPI_REG_RD_DATA_VALID))
    {
        usleep(0);

        rd_data = this->readReg(AXI_SPI_REG_RD_DATA);
    }

    return rd_data & 0xFF;
}