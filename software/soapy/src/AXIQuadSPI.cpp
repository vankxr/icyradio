#include "AXIQuadSPI.hpp"

AXIQuadSPI::AXIQuadSPI(void *base_address): AXIPeripheral(base_address)
{
    // Nothing to do here
}
AXIQuadSPI::AXIQuadSPI(void *base_address, AXIQuadSPI::Mode mode, AXIQuadSPI::BitOrder bit_order): AXIPeripheral(base_address)
{
    this->init(mode, bit_order);
}

void AXIQuadSPI::init(AXIQuadSPI::Mode mode, AXIQuadSPI::BitOrder bit_order)
{
    this->writeReg(AXI_QUAD_SPI_REG_SRR, AXI_QUAD_SPI_REG_SRR_RESET_VALUE); // Reset

    this->writeReg(AXI_QUAD_SPI_REG_SPICR, AXI_QUAD_SPI_REG_SPICR_MASTER_INHIBIT | AXI_QUAD_SPI_REG_SPICR_RXFIFO_RESET | AXI_QUAD_SPI_REG_SPICR_TXFIFO_RESET);
    this->writeReg(AXI_QUAD_SPI_REG_SPICR, (bit_order == AXIQuadSPI::LSB_FIRST ? AXI_QUAD_SPI_REG_SPICR_LSB_FIRST : 0) | AXI_QUAD_SPI_REG_SPICR_MANUAL_SS | ((mode & BIT(0)) ? AXI_QUAD_SPI_REG_SPICR_CPHA : 0) | ((mode & BIT(1)) ? AXI_QUAD_SPI_REG_SPICR_CPOL : 0) | AXI_QUAD_SPI_REG_SPICR_MASTER | AXI_QUAD_SPI_REG_SPICR_SPE);
}

void AXIQuadSPI::slaveSelect(uint32_t mask, AXIQuadSPI::Select select)
{
    if(!mask)
        return; // Nothing to do

    if(select == AXIQuadSPI::SELECT) // Always take the mutex when selecting a slave
        this->mutex.lock();

    uint32_t reg_value = this->readReg(AXI_QUAD_SPI_REG_SPISSR);

    if(select == AXIQuadSPI::SELECT)
        reg_value &= ~mask;
    else
        reg_value |= mask;

    this->writeReg(AXI_QUAD_SPI_REG_SPISSR, reg_value);

    if(!reg_value) // Only release the lock if all slaves are deselected
        this->mutex.unlock();
}

uint8_t AXIQuadSPI::transferByte(const uint8_t data)
{
    this->writeReg(AXI_QUAD_SPI_REG_SPICR, this->readReg(AXI_QUAD_SPI_REG_SPICR) | AXI_QUAD_SPI_REG_SPICR_RXFIFO_RESET);

    this->writeReg(AXI_QUAD_SPI_REG_SPI_DTR, data);

    while(this->readReg(AXI_QUAD_SPI_REG_SPISR) & AXI_QUAD_SPI_REG_SPISR_RX_EMPTY)
        usleep(0);

    return (uint8_t)this->readReg(AXI_QUAD_SPI_REG_SPI_DRR);
}
void AXIQuadSPI::writeByte(const uint8_t data, const AXIQuadSPI::Wait wait)
{
    this->writeReg(AXI_QUAD_SPI_REG_SPICR, this->readReg(AXI_QUAD_SPI_REG_SPICR) | AXI_QUAD_SPI_REG_SPICR_RXFIFO_RESET);

    while(this->readReg(AXI_QUAD_SPI_REG_SPISR) & AXI_QUAD_SPI_REG_SPISR_TX_FULL)
        usleep(0);

    this->writeReg(AXI_QUAD_SPI_REG_SPI_DTR, data);

    while(wait == AXIQuadSPI::Wait::WAIT && !(this->readReg(AXI_QUAD_SPI_REG_SPISR) & AXI_QUAD_SPI_REG_SPISR_TX_EMPTY))
        usleep(0);
}