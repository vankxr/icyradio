#ifndef __AXI_QUAD_SPI_H__
#define __AXI_QUAD_SPI_H__

#include <stdint.h>
#include <unistd.h>
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

#define AXI_QUAD_SPI_REG_IPISR_MODE_FAULT         BIT(0)
#define AXI_QUAD_SPI_REG_IPISR_SLAVE_MODE_FAULT   BIT(1)
#define AXI_QUAD_SPI_REG_IPISR_DTR_EMPTY          BIT(2)
#define AXI_QUAD_SPI_REG_IPISR_DTR_UNDERRUN       BIT(3)
#define AXI_QUAD_SPI_REG_IPISR_DRR_FULL           BIT(4)
#define AXI_QUAD_SPI_REG_IPISR_DRR_OVERRUN        BIT(5)
#define AXI_QUAD_SPI_REG_IPISR_TX_FIFO_HALF_EMPTY BIT(6)
#define AXI_QUAD_SPI_REG_IPISR_SS_MODE            BIT(7)
#define AXI_QUAD_SPI_REG_IPISR_DRR_NOT_EMPTY      BIT(8)
#define AXI_QUAD_SPI_REG_IPISR_CPOL_CPHA_ERR      BIT(9)
#define AXI_QUAD_SPI_REG_IPISR_SLAVE_MODE_ERR     BIT(10)
#define AXI_QUAD_SPI_REG_IPISR_MSB_ERR            BIT(11)
#define AXI_QUAD_SPI_REG_IPISR_LOOPBACK_ERR       BIT(12)
#define AXI_QUAD_SPI_REG_IPISR_CMD_ERR            BIT(13)

#define AXI_QUAD_SPI_REG_IPIER_MODE_FAULT         BIT(0)
#define AXI_QUAD_SPI_REG_IPIER_SLAVE_MODE_FAULT   BIT(1)
#define AXI_QUAD_SPI_REG_IPIER_DTR_EMPTY          BIT(2)
#define AXI_QUAD_SPI_REG_IPIER_DTR_UNDERRUN       BIT(3)
#define AXI_QUAD_SPI_REG_IPIER_DRR_FULL           BIT(4)
#define AXI_QUAD_SPI_REG_IPIER_DRR_OVERRUN        BIT(5)
#define AXI_QUAD_SPI_REG_IPIER_TX_FIFO_HALF_EMPTY BIT(6)
#define AXI_QUAD_SPI_REG_IPIER_SS_MODE            BIT(7)
#define AXI_QUAD_SPI_REG_IPIER_DRR_NOT_EMPTY      BIT(8)
#define AXI_QUAD_SPI_REG_IPIER_CPOL_CPHA_ERR      BIT(9)
#define AXI_QUAD_SPI_REG_IPIER_SLAVE_MODE_ERR     BIT(10)
#define AXI_QUAD_SPI_REG_IPIER_MSB_ERR            BIT(11)
#define AXI_QUAD_SPI_REG_IPIER_LOOPBACK_ERR       BIT(12)
#define AXI_QUAD_SPI_REG_IPIER_CMD_ERR            BIT(13)

#define AXI_QUAD_SPI_LSB_FIRST 0
#define AXI_QUAD_SPI_MSB_FIRST 1

#define AXI_QUAD_SPI_MODE_0 0
#define AXI_QUAD_SPI_MODE_1 1
#define AXI_QUAD_SPI_MODE_2 2
#define AXI_QUAD_SPI_MODE_3 3

extern void *pAXIQuadSPIBase[AXI_QUAD_SPI_NUM_INSTANCES];

void axi_quad_spi_init(void *pBase, uint8_t ubMode, uint8_t ubBitMode);
void axi_quad_spi_slave_select(void *pBase, uint32_t ubSelectMask, uint8_t ubSelect);
uint8_t axi_quad_spi_transfer_byte(void *pBase, const uint8_t ubData);
void axi_quad_spi_write_byte(void *pBase, const uint8_t ubData, const uint8_t ubWait);
static inline void axi_quad_spi_transfer(void *pBase, const uint8_t *pubSrc, uint32_t ulSize, uint8_t *pubDst)
{
    if(!pubSrc)
        return;

    if(!pubDst)
        return;

    while(ulSize--)
        *pubDst++ = axi_quad_spi_transfer_byte(pBase, *pubSrc++);
}
static inline void axi_quad_spi_write(void *pBase, const uint8_t *pubSrc, uint32_t ulSize, const uint8_t ubWait)
{
    if(!pubSrc)
        return;

    while(ulSize--)
        axi_quad_spi_write_byte(pBase, *pubSrc++, ubWait && !ulSize);
}
static inline void axi_quad_spi_read(void *pBase, uint8_t *pubDst, uint32_t ulSize, uint8_t ubSendData)
{
    if(!pubDst)
        return;

    while(ulSize--)
        *pubDst++ = axi_quad_spi_transfer_byte(pBase, ubSendData);
}

static inline void axi_quad_spi0_init(uint8_t ubMode, uint8_t ubBitMode)
{
    axi_quad_spi_init(pAXIQuadSPIBase[0], ubMode, ubBitMode);
}
static inline void axi_quad_spi0_slave_select(uint32_t ubSelectMask, uint8_t ubSelect)
{
    axi_quad_spi_slave_select(pAXIQuadSPIBase[0], ubSelectMask, ubSelect);
}
static inline uint8_t axi_quad_spi0_transfer_byte(const uint8_t ubData)
{
    return axi_quad_spi_transfer_byte(pAXIQuadSPIBase[0], ubData);
}
static inline void axi_quad_spi0_write_byte(const uint8_t ubData, const uint8_t ubWait)
{
    axi_quad_spi_write_byte(pAXIQuadSPIBase[0], ubData, ubWait);
}
static inline void axi_quad_spi0_transfer(const uint8_t *pubSrc, uint32_t ulSize, uint8_t *pubDst)
{
    axi_quad_spi_transfer(pAXIQuadSPIBase[0], pubSrc, ulSize, pubDst);
}
static inline void axi_quad_spi0_write(const uint8_t *pubSrc, uint32_t ulSize, const uint8_t ubWait)
{
    axi_quad_spi_write(pAXIQuadSPIBase[0], pubSrc, ulSize, ubWait);
}
static inline void axi_quad_spi0_read(uint8_t *pubDst, uint32_t ulSize, uint8_t ubSendData)
{
    axi_quad_spi_read(pAXIQuadSPIBase[0], pubDst, ulSize, ubSendData);
}

static inline void axi_quad_spi1_init(uint8_t ubMode, uint8_t ubBitMode)
{
    axi_quad_spi_init(pAXIQuadSPIBase[1], ubMode, ubBitMode);
}
static inline void axi_quad_spi1_slave_select(uint32_t ubSelectMask, uint8_t ubSelect)
{
    axi_quad_spi_slave_select(pAXIQuadSPIBase[1], ubSelectMask, ubSelect);
}
static inline uint8_t axi_quad_spi1_transfer_byte(const uint8_t ubData)
{
    return axi_quad_spi_transfer_byte(pAXIQuadSPIBase[1], ubData);
}
static inline void axi_quad_spi1_write_byte(const uint8_t ubData, const uint8_t ubWait)
{
    axi_quad_spi_write_byte(pAXIQuadSPIBase[1], ubData, ubWait);
}
static inline void axi_quad_spi1_transfer(const uint8_t *pubSrc, uint32_t ulSize, uint8_t *pubDst)
{
    axi_quad_spi_transfer(pAXIQuadSPIBase[1], pubSrc, ulSize, pubDst);
}
static inline void axi_quad_spi1_write(const uint8_t *pubSrc, uint32_t ulSize, const uint8_t ubWait)
{
    axi_quad_spi_write(pAXIQuadSPIBase[1], pubSrc, ulSize, ubWait);
}
static inline void axi_quad_spi1_read(uint8_t *pubDst, uint32_t ulSize, uint8_t ubSendData)
{
    axi_quad_spi_read(pAXIQuadSPIBase[1], pubDst, ulSize, ubSendData);
}

static inline void axi_quad_spi2_init(uint8_t ubMode, uint8_t ubBitMode)
{
    axi_quad_spi_init(pAXIQuadSPIBase[2], ubMode, ubBitMode);
}
static inline void axi_quad_spi2_slave_select(uint32_t ubSelectMask, uint8_t ubSelect)
{
    axi_quad_spi_slave_select(pAXIQuadSPIBase[2], ubSelectMask, ubSelect);
}
static inline uint8_t axi_quad_spi2_transfer_byte(const uint8_t ubData)
{
    return axi_quad_spi_transfer_byte(pAXIQuadSPIBase[2], ubData);
}
static inline void axi_quad_spi2_write_byte(const uint8_t ubData, const uint8_t ubWait)
{
    axi_quad_spi_write_byte(pAXIQuadSPIBase[2], ubData, ubWait);
}
static inline void axi_quad_spi2_transfer(const uint8_t *pubSrc, uint32_t ulSize, uint8_t *pubDst)
{
    axi_quad_spi_transfer(pAXIQuadSPIBase[2], pubSrc, ulSize, pubDst);
}
static inline void axi_quad_spi2_write(const uint8_t *pubSrc, uint32_t ulSize, const uint8_t ubWait)
{
    axi_quad_spi_write(pAXIQuadSPIBase[2], pubSrc, ulSize, ubWait);
}
static inline void axi_quad_spi2_read(uint8_t *pubDst, uint32_t ulSize, uint8_t ubSendData)
{
    axi_quad_spi_read(pAXIQuadSPIBase[2], pubDst, ulSize, ubSendData);
}

#endif // __AXI_QUAD_SPI_H__