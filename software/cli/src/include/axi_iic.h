#ifndef __AXI_IIC_H__
#define __AXI_IIC_H__

#include <stdint.h>
#include <unistd.h>
#include "utils.h"

#define AXI_IIC_NUM_INSTANCES 2

#define AXI_IIC_REG_GIE          0x01C
#define AXI_IIC_REG_ISR          0x020
#define AXI_IIC_REG_IER          0x028
#define AXI_IIC_REG_SOFTR        0x040
#define AXI_IIC_REG_CR           0x100
#define AXI_IIC_REG_SR           0x104
#define AXI_IIC_REG_TX_FIFO      0x108
#define AXI_IIC_REG_RX_FIFO      0x10C
#define AXI_IIC_REG_ADR          0x110
#define AXI_IIC_REG_TX_FIFO_OCY  0x114
#define AXI_IIC_REG_RX_FIFO_OCY  0x118
#define AXI_IIC_REG_TEN_ADR      0x11C
#define AXI_IIC_REG_RX_FIFO_PIRQ 0x120
#define AXI_IIC_REG_GPO          0x124
#define AXI_IIC_REG_TSUSTA       0x128
#define AXI_IIC_REG_TSUSTO       0x12C
#define AXI_IIC_REG_THDSTA       0x130
#define AXI_IIC_REG_TSUDAT       0x134
#define AXI_IIC_REG_TBUF         0x138
#define AXI_IIC_REG_THIGH        0x13C
#define AXI_IIC_REG_TLOW         0x140
#define AXI_IIC_REG_THDDAT       0x144

#define AXI_IIC_REG_GIE_GIE      BIT(31)

#define AXI_IIC_REG_ISR_INT0_ARB_LOST      BIT(0)
#define AXI_IIC_REG_ISR_INT1_TERR_STC      BIT(1)
#define AXI_IIC_REG_ISR_INT2_TX_EMPTY      BIT(2)
#define AXI_IIC_REG_ISR_INT3_RX_FULL       BIT(3)
#define AXI_IIC_REG_ISR_INT4_BUS_NOT_BUSY  BIT(4)
#define AXI_IIC_REG_ISR_INT5_ADR_AS_SLAVE  BIT(5)
#define AXI_IIC_REG_ISR_INT6_NADR_AS_SLAVE BIT(6)
#define AXI_IIC_REG_ISR_INT7_TX_HALF_EMPTY BIT(7)

#define AXI_IIC_REG_IER_INT0_ARB_LOST      BIT(0)
#define AXI_IIC_REG_IER_INT1_TERR_STC      BIT(1)
#define AXI_IIC_REG_IER_INT2_TX_EMPTY      BIT(2)
#define AXI_IIC_REG_IER_INT3_RX_FULL       BIT(3)
#define AXI_IIC_REG_IER_INT4_BUS_NOT_BUSY  BIT(4)
#define AXI_IIC_REG_IER_INT5_ADR_AS_SLAVE  BIT(5)
#define AXI_IIC_REG_IER_INT6_NADR_AS_SLAVE BIT(6)
#define AXI_IIC_REG_IER_INT7_TX_HALF_EMPTY BIT(7)

#define AXI_IIC_REG_SOFTR_RESET_VALUE 0x0A

#define AXI_IIC_REG_CR_EN           BIT(0)
#define AXI_IIC_REG_CR_TXFIFO_RESET BIT(1)
#define AXI_IIC_REG_CR_MSMS         BIT(2)
#define AXI_IIC_REG_CR_TX           BIT(3)
#define AXI_IIC_REG_CR_TXAK         BIT(4)
#define AXI_IIC_REG_CR_RSTA         BIT(5)
#define AXI_IIC_REG_CR_GC_EN        BIT(6)

#define AXI_IIC_REG_SR_ABGC          BIT(0)
#define AXI_IIC_REG_SR_AAS           BIT(1)
#define AXI_IIC_REG_SR_BB            BIT(2)
#define AXI_IIC_REG_SR_SRW           BIT(3)
#define AXI_IIC_REG_SR_TX_FIFO_FULL  BIT(4)
#define AXI_IIC_REG_SR_RX_FIFO_FULL  BIT(5)
#define AXI_IIC_REG_SR_RX_FIFO_EMPTY BIT(6)
#define AXI_IIC_REG_SR_TX_FIFO_EMPTY BIT(7)

#define AXI_IIC_REG_TX_FIFO_START BIT(8)
#define AXI_IIC_REG_TX_FIFO_STOP  BIT(9)

#define AXI_IIC_RESTART 0
#define AXI_IIC_STOP 1

extern void *pAXIIICBase[AXI_IIC_NUM_INSTANCES];

void axi_iic_init(void *pBase);
uint8_t axi_iic_transmit(void *pBase, uint8_t ubAddress, uint8_t *pubSrc, uint8_t ubCount, uint8_t ubStop);
static inline uint8_t axi_iic_write(void *pBase, uint8_t ubAddress, uint8_t *pubSrc, uint32_t ulCount, uint8_t ubStop)
{
    return axi_iic_transmit(pBase, (ubAddress << 1) & ~0x01, pubSrc, ulCount, ubStop);
}
static inline uint8_t axi_iic_read(void *pBase, uint8_t ubAddress, uint8_t *pubDst, uint32_t ulCount, uint8_t ubStop)
{
    return axi_iic_transmit(pBase, (ubAddress << 1) | 0x01, pubDst, ulCount, ubStop);
}
static inline uint8_t axi_iic_write_byte(void *pBase, uint8_t ubAddress, uint8_t ubData, uint8_t ubStop)
{
    return axi_iic_transmit(pBase, (ubAddress << 1) & ~0x01, &ubData, 1, ubStop);
}
static inline uint8_t axi_iic_read_byte(void *pBase, uint8_t ubAddress, uint8_t ubStop)
{
    uint8_t ubData;

    if(!axi_iic_transmit(pBase, (ubAddress << 1) | 0x01, &ubData, 1, ubStop))
        return 0;

    return ubData;
}
void axi_iic_gpo_set_value(void *pBase, uint8_t ubGPO, uint8_t ubValue);
uint8_t axi_iic_gpo_get_value(void *pBase, uint8_t ubGPO);

static inline void axi_iic0_init()
{
    axi_iic_init(pAXIIICBase[0]);
}
static inline uint8_t axi_iic0_transmit(uint8_t ubAddress, uint8_t *pubSrc, uint8_t ubCount, uint8_t ubStop)
{
    return axi_iic_transmit(pAXIIICBase[0], ubAddress, pubSrc, ubCount, ubStop);
}
static inline uint8_t axi_iic0_write(uint8_t ubAddress, uint8_t *pubSrc, uint32_t ulCount, uint8_t ubStop)
{
    return axi_iic_write(pAXIIICBase[0], ubAddress, pubSrc, ulCount, ubStop);
}
static inline uint8_t axi_iic0_read(uint8_t ubAddress, uint8_t *pubDst, uint32_t ulCount, uint8_t ubStop)
{
    return axi_iic_read(pAXIIICBase[0], ubAddress, pubDst, ulCount, ubStop);
}
static inline uint8_t axi_iic0_write_byte(uint8_t ubAddress, uint8_t ubData, uint8_t ubStop)
{
    return axi_iic_write_byte(pAXIIICBase[0], ubAddress, ubData, ubStop);
}
static inline uint8_t axi_iic0_read_byte(uint8_t ubAddress, uint8_t ubStop)
{
    return axi_iic_read_byte(pAXIIICBase[0], ubAddress, ubStop);
}
static inline void axi_iic0_gpo_set_value(uint8_t ubGPO, uint8_t ubValue)
{
    axi_iic_gpo_set_value(pAXIIICBase[0], ubGPO, ubValue);
}
static inline uint8_t axi_iic0_gpo_get_value(uint8_t ubGPO)
{
    return axi_iic_gpo_get_value(pAXIIICBase[0], ubGPO);
}

static inline void axi_iic1_init()
{
    axi_iic_init(pAXIIICBase[1]);
}
static inline uint8_t axi_iic1_transmit(uint8_t ubAddress, uint8_t *pubSrc, uint8_t ubCount, uint8_t ubStop)
{
    return axi_iic_transmit(pAXIIICBase[1], ubAddress, pubSrc, ubCount, ubStop);
}
static inline uint8_t axi_iic1_write(uint8_t ubAddress, uint8_t *pubSrc, uint32_t ulCount, uint8_t ubStop)
{
    return axi_iic_write(pAXIIICBase[1], ubAddress, pubSrc, ulCount, ubStop);
}
static inline uint8_t axi_iic1_read(uint8_t ubAddress, uint8_t *pubDst, uint32_t ulCount, uint8_t ubStop)
{
    return axi_iic_read(pAXIIICBase[1], ubAddress, pubDst, ulCount, ubStop);
}
static inline uint8_t axi_iic1_write_byte(uint8_t ubAddress, uint8_t ubData, uint8_t ubStop)
{
    return axi_iic_write_byte(pAXIIICBase[1], ubAddress, ubData, ubStop);
}
static inline uint8_t axi_iic1_read_byte(uint8_t ubAddress, uint8_t ubStop)
{
    return axi_iic_read_byte(pAXIIICBase[1], ubAddress, ubStop);
}
static inline void axi_iic1_gpo_set_value(uint8_t ubGPO, uint8_t ubValue)
{
    axi_iic_gpo_set_value(pAXIIICBase[1], ubGPO, ubValue);
}
static inline uint8_t axi_iic1_gpo_get_value(uint8_t ubGPO)
{
    return axi_iic_gpo_get_value(pAXIIICBase[1], ubGPO);
}

#endif // __AXI_IIC_H__