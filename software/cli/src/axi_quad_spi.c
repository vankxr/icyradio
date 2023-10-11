#include "axi_quad_spi.h"

static pthread_mutex_t tMutex[AXI_QUAD_SPI_NUM_INSTANCES] = { PTHREAD_MUTEX_INITIALIZER };

static void axi_quad_spi_reg_write(uint8_t ubInst, uint32_t ulRegister, uint32_t ulValue)
{
    *(volatile uint32_t *)((uintptr_t)pAXIQuadSPIBase[ubInst] + ulRegister) = ulValue;
}
static uint32_t axi_quad_spi_reg_read(uint8_t ubInst, int32_t ulRegister)
{
    return *(volatile uint32_t *)((uintptr_t)pAXIQuadSPIBase[ubInst] + ulRegister);
}

void axi_quad_spi_init(uint8_t ubInst, uint8_t ubMode, uint8_t ubBitMode)
{
    axi_quad_spi_reg_write(ubInst, AXI_QUAD_SPI_REG_SRR, AXI_QUAD_SPI_REG_SRR_RESET_VALUE);

    axi_quad_spi_reg_write(ubInst, AXI_QUAD_SPI_REG_SPICR, AXI_QUAD_SPI_REG_SPICR_MASTER_INHIBIT | AXI_QUAD_SPI_REG_SPICR_RXFIFO_RESET | AXI_QUAD_SPI_REG_SPICR_TXFIFO_RESET);
    axi_quad_spi_reg_write(ubInst, AXI_QUAD_SPI_REG_SPICR, (ubBitMode == AXI_QUAD_SPI_LSB_FIRST ? AXI_QUAD_SPI_REG_SPICR_LSB_FIRST : 0) | AXI_QUAD_SPI_REG_SPICR_MANUAL_SS | ((ubMode & BIT(0)) ? AXI_QUAD_SPI_REG_SPICR_CPHA : 0) | ((ubMode & BIT(1)) ? AXI_QUAD_SPI_REG_SPICR_CPOL : 0) | AXI_QUAD_SPI_REG_SPICR_MASTER | AXI_QUAD_SPI_REG_SPICR_SPE);
}
void axi_quad_spi_slave_select(uint8_t ubInst, uint32_t ubSelectMask, uint8_t ubSelect)
{
    if(!ubSelectMask)
        return;

    if(ubSelect) // Always take the mutex when selecting a slave
        pthread_mutex_lock(&tMutex[ubInst]);

    uint32_t ulRegValue = axi_quad_spi_reg_read(ubInst, AXI_QUAD_SPI_REG_SPISSR);

    if(ubSelect)
        ulRegValue &= ~ubSelectMask;
    else
        ulRegValue |= ubSelectMask;

    axi_quad_spi_reg_write(ubInst, AXI_QUAD_SPI_REG_SPISSR, ulRegValue);

    if(!ulRegValue) // Only release the lock if all slaves are deselected
        pthread_mutex_unlock(&tMutex[ubInst]);
}
uint8_t axi_quad_spi_transfer_byte(uint8_t ubInst, const uint8_t ubData)
{
    axi_quad_spi_reg_write(ubInst, AXI_QUAD_SPI_REG_SPICR, axi_quad_spi_reg_read(ubInst, AXI_QUAD_SPI_REG_SPICR) | AXI_QUAD_SPI_REG_SPICR_RXFIFO_RESET);

    axi_quad_spi_reg_write(ubInst, AXI_QUAD_SPI_REG_SPI_DTR, ubData);

    while(axi_quad_spi_reg_read(ubInst, AXI_QUAD_SPI_REG_SPISR) & AXI_QUAD_SPI_REG_SPISR_RX_EMPTY)
        usleep(0);

    return (uint8_t)axi_quad_spi_reg_read(ubInst, AXI_QUAD_SPI_REG_SPI_DRR);
}
void axi_quad_spi_write_byte(uint8_t ubInst, const uint8_t ubData, const uint8_t ubWait)
{
    axi_quad_spi_reg_write(ubInst, AXI_QUAD_SPI_REG_SPICR, axi_quad_spi_reg_read(ubInst, AXI_QUAD_SPI_REG_SPICR) | AXI_QUAD_SPI_REG_SPICR_RXFIFO_RESET);

    while(axi_quad_spi_reg_read(ubInst, AXI_QUAD_SPI_REG_SPISR) & AXI_QUAD_SPI_REG_SPISR_TX_FULL)
        usleep(0);

    axi_quad_spi_reg_write(ubInst, AXI_QUAD_SPI_REG_SPI_DTR, ubData);

    while(ubWait && !(axi_quad_spi_reg_read(ubInst, AXI_QUAD_SPI_REG_SPISR) & AXI_QUAD_SPI_REG_SPISR_TX_EMPTY))
        usleep(0);
}