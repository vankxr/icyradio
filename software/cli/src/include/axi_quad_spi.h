#ifndef __AXI_QUAD_SPI_H__
#define __AXI_QUAD_SPI_H__

#include <stdint.h>
#include <unistd.h>
#include <pthread.h>
#include "utils.h"

#define AXI_QUAD_SPI_NUM_INSTANCES 3

#define AXI_QUAD_SPI_REG_SRR     0x40
#define AXI_QUAD_SPI_REG_SPICR   0x60
#define AXI_QUAD_SPI_REG_SPISR   0x64
#define AXI_QUAD_SPI_REG_SPI_DTR 0x68
#define AXI_QUAD_SPI_REG_SPI_DRR 0x6C
#define AXI_QUAD_SPI_REG_SPISSR  0x70
#define AXI_QUAD_SPI_REG_SPITFOR 0x74
#define AXI_QUAD_SPI_REG_SPIRFOR 0x78
#define AXI_QUAD_SPI_REG_DGIER   0x1C
#define AXI_QUAD_SPI_REG_IPISR   0x20
#define AXI_QUAD_SPI_REG_IPIER   0x28

#define AXI_QUAD_SPI_REG_SRR_RESET_VALUE 0x0A

#define AXI_QUAD_SPI_REG_SPICR_LOOP           BIT(0)
#define AXI_QUAD_SPI_REG_SPICR_SPE            BIT(1)
#define AXI_QUAD_SPI_REG_SPICR_MASTER         BIT(2)
#define AXI_QUAD_SPI_REG_SPICR_CPOL           BIT(3)
#define AXI_QUAD_SPI_REG_SPICR_CPHA           BIT(4)
#define AXI_QUAD_SPI_REG_SPICR_TXFIFO_RESET   BIT(5)
#define AXI_QUAD_SPI_REG_SPICR_RXFIFO_RESET   BIT(6)
#define AXI_QUAD_SPI_REG_SPICR_MANUAL_SS      BIT(7)
#define AXI_QUAD_SPI_REG_SPICR_MASTER_INHIBIT BIT(8)
#define AXI_QUAD_SPI_REG_SPICR_LSB_FIRST      BIT(9)

#define AXI_QUAD_SPI_REG_SPISR_RX_EMPTY       BIT(0)
#define AXI_QUAD_SPI_REG_SPISR_RX_FULL        BIT(1)
#define AXI_QUAD_SPI_REG_SPISR_TX_EMPTY       BIT(2)
#define AXI_QUAD_SPI_REG_SPISR_TX_FULL        BIT(3)
#define AXI_QUAD_SPI_REG_SPISR_MODE_FAULT     BIT(4)
#define AXI_QUAD_SPI_REG_SPISR_SLAVE_MODE     BIT(5)
#define AXI_QUAD_SPI_REG_SPISR_CPOL_CPHA_ERR  BIT(6)
#define AXI_QUAD_SPI_REG_SPISR_SLAVE_MODE_ERR BIT(7)
#define AXI_QUAD_SPI_REG_SPISR_MSB_ERR        BIT(8)
#define AXI_QUAD_SPI_REG_SPISR_LOOPBACK_ERR   BIT(9)
#define AXI_QUAD_SPI_REG_SPISR_CMD_ERR        BIT(10)

#define AXI_QUAD_SPI_REG_DGIER_GIE            BIT(31)

#define AXI_QUAD_SPI_REG_IPIxR_MODE_FAULT         BIT(0)
#define AXI_QUAD_SPI_REG_IPIxR_SLAVE_MODE_FAULT   BIT(1)
#define AXI_QUAD_SPI_REG_IPIxR_DTR_EMPTY          BIT(2)
#define AXI_QUAD_SPI_REG_IPIxR_DTR_UNDERRUN       BIT(3)
#define AXI_QUAD_SPI_REG_IPIxR_DRR_FULL           BIT(4)
#define AXI_QUAD_SPI_REG_IPIxR_DRR_OVERRUN        BIT(5)
#define AXI_QUAD_SPI_REG_IPIxR_TX_FIFO_HALF_EMPTY BIT(6)
#define AXI_QUAD_SPI_REG_IPIxR_SS_MODE            BIT(7)
#define AXI_QUAD_SPI_REG_IPIxR_DRR_NOT_EMPTY      BIT(8)
#define AXI_QUAD_SPI_REG_IPIxR_CPOL_CPHA_ERR      BIT(9)
#define AXI_QUAD_SPI_REG_IPIxR_SLAVE_MODE_ERR     BIT(10)
#define AXI_QUAD_SPI_REG_IPIxR_MSB_ERR            BIT(11)
#define AXI_QUAD_SPI_REG_IPIxR_LOOPBACK_ERR       BIT(12)
#define AXI_QUAD_SPI_REG_IPIxR_CMD_ERR            BIT(13)

#define AXI_QUAD_SPI_LSB_FIRST 0
#define AXI_QUAD_SPI_MSB_FIRST 1

#define AXI_QUAD_SPI_MODE_0 0
#define AXI_QUAD_SPI_MODE_1 1
#define AXI_QUAD_SPI_MODE_2 2
#define AXI_QUAD_SPI_MODE_3 3

extern void *pAXIQuadSPIBase[AXI_QUAD_SPI_NUM_INSTANCES];

void axi_quad_spi_init(uint8_t ubInst, uint8_t ubMode, uint8_t ubBitMode);
void axi_quad_spi_slave_select(uint8_t ubInst, uint32_t ubSelectMask, uint8_t ubSelect);
uint8_t axi_quad_spi_transfer_byte(uint8_t ubInst, const uint8_t ubData);
void axi_quad_spi_write_byte(uint8_t ubInst, const uint8_t ubData, const uint8_t ubWait);
static inline void axi_quad_spi_transfer(uint8_t ubInst, const uint8_t *pubSrc, uint32_t ulSize, uint8_t *pubDst)
{
    if(!pubSrc)
        return;

    if(!pubDst)
        return;

    while(ulSize--)
        *pubDst++ = axi_quad_spi_transfer_byte(ubInst, *pubSrc++);
}
static inline void axi_quad_spi_write(uint8_t ubInst, const uint8_t *pubSrc, uint32_t ulSize, const uint8_t ubWait)
{
    if(!pubSrc)
        return;

    while(ulSize--)
        axi_quad_spi_write_byte(ubInst, *pubSrc++, ubWait && !ulSize);
}
static inline void axi_quad_spi_read(uint8_t ubInst, uint8_t *pubDst, uint32_t ulSize, uint8_t ubSendData)
{
    if(!pubDst)
        return;

    while(ulSize--)
        *pubDst++ = axi_quad_spi_transfer_byte(ubInst, ubSendData);
}

// Instance 0 - axi_quad_spi_0 - QSPI Flash
#define AXI_QUAD_SPI_FLASH_INST 0

#define AXI_QUAD_SPI0_FLASH_SS BIT(0)

// Instance 1 - axi_quad_spi_1 - Transceiver
#define AXI_QUAD_SPI_TRX_INST 1

#define AXI_QUAD_SPI1_TRX_SS BIT(0)

// Instance 2 - axi_quad_spi_2 - mmWave Synthesizer
#define AXI_QUAD_SPI_SYNTH_INST 2

#define AXI_QUAD_SPI2_SYNTH_SS BIT(0)

#endif // __AXI_QUAD_SPI_H__