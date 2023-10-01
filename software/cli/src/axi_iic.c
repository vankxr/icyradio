#include "axi_iic.h"

static void axi_iic_reg_write(void *pBase, uint32_t ulRegister, uint32_t ulValue)
{
    *(volatile uint32_t *)((uintptr_t)pBase + ulRegister) = ulValue;
}
static uint32_t axi_iic_reg_read(void *pBase, uint32_t ulRegister)
{
    return *(volatile uint32_t *)((uintptr_t)pBase + ulRegister);
}

void axi_iic_init(void *pBase)
{
    axi_iic_reg_write(pBase, AXI_IIC_REG_SOFTR, AXI_IIC_REG_SOFTR_RESET_VALUE); // Reset

    axi_iic_reg_write(pBase, AXI_IIC_REG_RX_FIFO_PIRQ, 0x0000000F);
    axi_iic_reg_write(pBase, AXI_IIC_REG_CR, axi_iic_reg_read(pBase, AXI_IIC_REG_CR) & ~(AXI_IIC_REG_CR_GC_EN | AXI_IIC_REG_CR_EN) | AXI_IIC_REG_CR_TXFIFO_RESET);
    axi_iic_reg_write(pBase, AXI_IIC_REG_CR, axi_iic_reg_read(pBase, AXI_IIC_REG_CR) & ~(AXI_IIC_REG_CR_GC_EN | AXI_IIC_REG_CR_TXFIFO_RESET) | AXI_IIC_REG_CR_EN);

    axi_iic_reg_write(pBase, AXI_IIC_REG_ISR, axi_iic_reg_read(pBase, AXI_IIC_REG_ISR)); // Clear IRQs
}
uint8_t axi_iic_transmit(void *pBase, uint8_t ubAddress, uint8_t *pubSrc, uint8_t ubCount, uint8_t ubStop)
{
    uint32_t ulFlags;

    if(!ubCount)
        return 0;

    // DBGPRINTLN_CTX("status %02X, intr %02X", (uint8_t)axi_iic_reg_read(pBase, AXI_IIC_REG_SR), (uint8_t)axi_iic_reg_read(pBase, AXI_IIC_REG_ISR));

    if((axi_iic_reg_read(pBase, AXI_IIC_REG_SR) & BIT(2)) && !(axi_iic_reg_read(pBase, AXI_IIC_REG_ISR) & BIT(2))) // Bus busy and not owner
        return 0;

    // DBGPRINTLN_CTX("bus ok");

    if(!(axi_iic_reg_read(pBase, AXI_IIC_REG_SR) & BIT(7))) // Clear TX FIFO
    {
        axi_iic_reg_write(pBase, AXI_IIC_REG_CR, axi_iic_reg_read(pBase, AXI_IIC_REG_CR) | BIT(1));
        axi_iic_reg_write(pBase, AXI_IIC_REG_CR, axi_iic_reg_read(pBase, AXI_IIC_REG_CR) & ~BIT(1));
    }

    // DBGPRINTLN_CTX("tx fifo cleared");

    while(!(axi_iic_reg_read(pBase, AXI_IIC_REG_SR) & BIT(6))) // Clear RX FIFO
        (void)axi_iic_reg_read(pBase, AXI_IIC_REG_RX_FIFO);

    // DBGPRINTLN_CTX("rx fifo cleared");
    // DBGPRINTLN_CTX("status %02X", (uint8_t)axi_iic_reg_read(pBase, AXI_IIC_REG_SR));

    axi_iic_reg_write(pBase, AXI_IIC_REG_ISR, axi_iic_reg_read(pBase, AXI_IIC_REG_ISR)); // Clear IRQs
    // DBGPRINTLN_CTX("irq cleared, intr %02X", (uint8_t)axi_iic_reg_read(pBase, AXI_IIC_REG_ISR));

    axi_iic_reg_write(pBase, AXI_IIC_REG_TX_FIFO, BIT(8) | ubAddress);
    // DBGPRINTLN_CTX("addr written");

    ulFlags = axi_iic_reg_read(pBase, AXI_IIC_REG_ISR);

    if(ubAddress & 1) // Read
    {
        axi_iic_reg_write(pBase, AXI_IIC_REG_TX_FIFO, (ubStop ? BIT(9) : 0) | ubCount);
    }
    else
    {
        while(ulFlags & BIT(4))
        {
            axi_iic_reg_write(pBase, AXI_IIC_REG_ISR, ulFlags & BIT(4));
            ulFlags = axi_iic_reg_read(pBase, AXI_IIC_REG_ISR);

            usleep(0);
        }

        // DBGPRINTLN_CTX("not busy irq cleared, intr %02X", (uint8_t)ulFlags);
    }

    do
    {
        if(ubAddress & 1) // Read
        {
            // DBGPRINTLN_CTX("wait for rx data (%hhu), status %02X", ubCount, (uint8_t)axi_iic_reg_read(pBase, AXI_IIC_REG_SR));

            while(axi_iic_reg_read(pBase, AXI_IIC_REG_SR) & BIT(6))
            {
                ulFlags = axi_iic_reg_read(pBase, AXI_IIC_REG_ISR);

                if(ulFlags & (BIT(1) | BIT(0)))
                    return 0; // Early read termination OR Arbitration lost

                usleep(0);
            }

            *pubSrc++ = (uint8_t)axi_iic_reg_read(pBase, AXI_IIC_REG_RX_FIFO);
        }
        else // Write
        {
            // DBGPRINTLN_CTX("wait for tx empty or error");

            while(!(axi_iic_reg_read(pBase, AXI_IIC_REG_SR) & BIT(7)))
            {
                ulFlags = axi_iic_reg_read(pBase, AXI_IIC_REG_ISR);

                if(ulFlags & (BIT(1) | BIT(0)))
                    return 0; // Slave NACK OR Arbitration lost

                usleep(0);
            }

            axi_iic_reg_write(pBase, AXI_IIC_REG_ISR, axi_iic_reg_read(pBase, AXI_IIC_REG_ISR) & BIT(2));

            // DBGPRINTLN_CTX("tx throttle irq cleared, intr %02X", (uint8_t)axi_iic_reg_read(pBase, AXI_IIC_REG_ISR));

            // DBGPRINTLN_CTX("write tx data (%hhu), stop %hhu", ubCount, ubStop);

            axi_iic_reg_write(pBase, AXI_IIC_REG_TX_FIFO, ((ubCount == 1 && ubStop) ? BIT(9) : 0) | *pubSrc++);
        }
    } while(--ubCount);

    if(ubAddress & 1) // Read
        axi_iic_reg_write(pBase, AXI_IIC_REG_ISR, axi_iic_reg_read(pBase, AXI_IIC_REG_ISR) & BIT(4)); // Clear NOT_BUSY IRQ, so that if we encounter it set again it is really not busy

    while(1)
    {
        ulFlags = axi_iic_reg_read(pBase, AXI_IIC_REG_ISR);

        if(ulFlags & BIT(0))
            return 0; // Arbitration lost

        if(!(ubAddress & 1) && (ulFlags & BIT(1)))
            return 0; // Slave NACK

        if(ubStop && (ulFlags & BIT(4)))
            break; // Stop was requested and bus is free, we are done!

        if(!ubStop && !(ubAddress & 1) && (ulFlags & BIT(2)))
            break; // No stop was requested and bus is throttled by the master, waiting for another transaction, we are done!

        if(!ubStop && (ubAddress & 1))
            break; // No stop was requested and we already read all the bytes we wanted, no need to wait for the bus to be free, we are done!

        usleep(0);

        ulFlags = axi_iic_reg_read(pBase, AXI_IIC_REG_ISR);
    }

    // DBGPRINTLN_CTX("status %02X, intr %02X", (uint8_t)axi_iic_reg_read(pBase, AXI_IIC_REG_SR), (uint8_t)axi_iic_reg_read(pBase, AXI_IIC_REG_ISR));

    return 1;
}
void axi_iic_gpo_set_value(void *pBase, uint8_t ubGPO, uint8_t ubValue)
{
    if(ubGPO > 31)
        return;

    uint32_t ulRegValue = axi_iic_reg_read(pBase, AXI_IIC_REG_GPO);

    if(ubValue)
        ulRegValue |= BIT(ubGPO);
    else
        ulRegValue &= ~BIT(ubGPO);

    axi_iic_reg_write(pBase, AXI_IIC_REG_GPO, ulRegValue);
}
uint8_t axi_iic_gpo_get_value(void *pBase, uint8_t ubGPO)
{
    if(ubGPO > 31)
        return 0;

    return axi_iic_reg_read(pBase, AXI_IIC_REG_GPO) & BIT(ubGPO) ? 1 : 0;
}