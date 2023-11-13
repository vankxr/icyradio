#include "axi_iic.h"

static pthread_mutex_t tMutex[AXI_IIC_NUM_INSTANCES] = { PTHREAD_MUTEX_INITIALIZER }; // Used by external code to lock the bus so they can do, for example, repeated starts
static pthread_mutex_t tBusMutex[AXI_IIC_NUM_INSTANCES] = { PTHREAD_MUTEX_INITIALIZER }; // Used internally to ensure an I2C transaction happens atomically
// static pthread_mutex_t tGPOMutex[AXI_IIC_NUM_INSTANCES] = { PTHREAD_MUTEX_INITIALIZER }; // Used internally to ensure GPOs are set atomically

static void axi_iic_reg_write(uint8_t ubInst, uint32_t ulRegister, uint32_t ulValue)
{
    *(volatile uint32_t *)((uintptr_t)pAXIIICBase[ubInst] + ulRegister) = ulValue;
}
static uint32_t axi_iic_reg_read(uint8_t ubInst, uint32_t ulRegister)
{
    return *(volatile uint32_t *)((uintptr_t)pAXIIICBase[ubInst] + ulRegister);
}

void axi_iic_init(uint8_t ubInst, uint64_t ullInputFrequency, uint8_t ubMode)
{
    axi_iic_reg_write(ubInst, AXI_IIC_REG_SOFTR, AXI_IIC_REG_SOFTR_RESET_VALUE); // Reset

    uint32_t ulFreqMhz = (uint32_t)(ullInputFrequency / 1000000UL);

    if(ubMode == AXI_IIC_FAST)
    {
        axi_iic_reg_write(ubInst, AXI_IIC_REG_TSUSTA, (900 * ulFreqMhz) / 1000);
        axi_iic_reg_write(ubInst, AXI_IIC_REG_TSUSTO, (900 * ulFreqMhz) / 1000);
        axi_iic_reg_write(ubInst, AXI_IIC_REG_THDSTA, (900 * ulFreqMhz) / 1000);
        axi_iic_reg_write(ubInst, AXI_IIC_REG_TSUDAT, (400 * ulFreqMhz) / 1000);
        axi_iic_reg_write(ubInst, AXI_IIC_REG_TBUF, (1600 * ulFreqMhz) / 1000);
        axi_iic_reg_write(ubInst, AXI_IIC_REG_THIGH, DIV_CEIL(ullInputFrequency, 2 * 400000) - 7);
        axi_iic_reg_write(ubInst, AXI_IIC_REG_TLOW, DIV_CEIL(ullInputFrequency, 2 * 400000) - 7);
        axi_iic_reg_write(ubInst, AXI_IIC_REG_THDDAT, 1);
    }
    else
    {
        axi_iic_reg_write(ubInst, AXI_IIC_REG_TSUSTA, (5700 * ulFreqMhz) / 1000);
        axi_iic_reg_write(ubInst, AXI_IIC_REG_TSUSTO, (5000 * ulFreqMhz) / 1000);
        axi_iic_reg_write(ubInst, AXI_IIC_REG_THDSTA, (4300 * ulFreqMhz) / 1000);
        axi_iic_reg_write(ubInst, AXI_IIC_REG_TSUDAT, (550 * ulFreqMhz) / 1000);
        axi_iic_reg_write(ubInst, AXI_IIC_REG_TBUF, (5000 * ulFreqMhz) / 1000);
        axi_iic_reg_write(ubInst, AXI_IIC_REG_THIGH, DIV_CEIL(ullInputFrequency, 2 * 100000) - 7);
        axi_iic_reg_write(ubInst, AXI_IIC_REG_TLOW, DIV_CEIL(ullInputFrequency, 2 * 100000) - 7);
        axi_iic_reg_write(ubInst, AXI_IIC_REG_THDDAT, 1);
    }

    axi_iic_reg_write(ubInst, AXI_IIC_REG_RX_FIFO_PIRQ, 0x0000000F);

    axi_iic_reg_write(ubInst, AXI_IIC_REG_CR, AXI_IIC_REG_CR_TXFIFO_RESET);
    axi_iic_reg_write(ubInst, AXI_IIC_REG_CR, AXI_IIC_REG_CR_EN);

    axi_iic_reg_write(ubInst, AXI_IIC_REG_ISR, axi_iic_reg_read(ubInst, AXI_IIC_REG_ISR)); // Clear IRQs

    // DBGPRINTLN_CTX("----------------");
    // DBGPRINTLN_CTX("TSUSTA: %08X", axi_iic_reg_read(ubInst, AXI_IIC_REG_TSUSTA));
    // DBGPRINTLN_CTX("TSUSTO: %08X", axi_iic_reg_read(ubInst, AXI_IIC_REG_TSUSTO));
    // DBGPRINTLN_CTX("THDSTA: %08X", axi_iic_reg_read(ubInst, AXI_IIC_REG_THDSTA));
    // DBGPRINTLN_CTX("TSUDAT: %08X", axi_iic_reg_read(ubInst, AXI_IIC_REG_TSUDAT));
    // DBGPRINTLN_CTX("TBUF: %08X", axi_iic_reg_read(ubInst, AXI_IIC_REG_TBUF));
    // DBGPRINTLN_CTX("THIGH: %08X", axi_iic_reg_read(ubInst, AXI_IIC_REG_THIGH));
    // DBGPRINTLN_CTX("TLOW: %08X", axi_iic_reg_read(ubInst, AXI_IIC_REG_TLOW));
    // DBGPRINTLN_CTX("THDDAT: %08X", axi_iic_reg_read(ubInst, AXI_IIC_REG_THDDAT));
    // DBGPRINTLN_CTX("----------------");
}
static void axi_iic_reinit(uint8_t ubInst)
{
    volatile uint32_t ulTSUSTA = axi_iic_reg_read(ubInst, AXI_IIC_REG_TSUSTA);
    volatile uint32_t ulTSUSTO = axi_iic_reg_read(ubInst, AXI_IIC_REG_TSUSTO);
    volatile uint32_t ulTHDSTA = axi_iic_reg_read(ubInst, AXI_IIC_REG_THDSTA);
    volatile uint32_t ulTSUDAT = axi_iic_reg_read(ubInst, AXI_IIC_REG_TSUDAT);
    volatile uint32_t ulTBUF = axi_iic_reg_read(ubInst, AXI_IIC_REG_TBUF);
    volatile uint32_t ulTHIGH = axi_iic_reg_read(ubInst, AXI_IIC_REG_THIGH);
    volatile uint32_t ulTLOW = axi_iic_reg_read(ubInst, AXI_IIC_REG_TLOW);
    volatile uint32_t ulTHDDAT = axi_iic_reg_read(ubInst, AXI_IIC_REG_THDDAT);

    axi_iic_reg_write(ubInst, AXI_IIC_REG_SOFTR, AXI_IIC_REG_SOFTR_RESET_VALUE); // Reset

    axi_iic_reg_write(ubInst, AXI_IIC_REG_TSUSTA, ulTSUSTA);
    axi_iic_reg_write(ubInst, AXI_IIC_REG_TSUSTO, ulTSUSTO);
    axi_iic_reg_write(ubInst, AXI_IIC_REG_THDSTA, ulTHDSTA);
    axi_iic_reg_write(ubInst, AXI_IIC_REG_TSUDAT, ulTSUDAT);
    axi_iic_reg_write(ubInst, AXI_IIC_REG_TBUF, ulTBUF);
    axi_iic_reg_write(ubInst, AXI_IIC_REG_THIGH, ulTHIGH);
    axi_iic_reg_write(ubInst, AXI_IIC_REG_TLOW, ulTLOW);
    axi_iic_reg_write(ubInst, AXI_IIC_REG_THDDAT, ulTHDDAT);

    axi_iic_reg_write(ubInst, AXI_IIC_REG_RX_FIFO_PIRQ, 0x0000000F);

    axi_iic_reg_write(ubInst, AXI_IIC_REG_CR, AXI_IIC_REG_CR_TXFIFO_RESET);
    axi_iic_reg_write(ubInst, AXI_IIC_REG_CR, AXI_IIC_REG_CR_EN);

    axi_iic_reg_write(ubInst, AXI_IIC_REG_ISR, axi_iic_reg_read(ubInst, AXI_IIC_REG_ISR)); // Clear IRQs
}
void axi_iic_lock(uint8_t ubInst)
{
    pthread_mutex_lock(&tMutex[ubInst]);
}
void axi_iic_unlock(uint8_t ubInst)
{
    pthread_mutex_unlock(&tMutex[ubInst]);
}
uint8_t axi_iic_transmit(uint8_t ubInst, uint8_t ubAddress, uint8_t *pubSrc, uint8_t ubCount, uint8_t ubStop)
{
    if((ubAddress & 1) && !ubCount)
        return 0;

    uint32_t ulFlags;

    pthread_mutex_lock(&tBusMutex[ubInst]);
    // DBGPRINTLN_CTX("status %02X, intr %02X", (uint8_t)axi_iic_reg_read(ubInst, AXI_IIC_REG_SR), (uint8_t)axi_iic_reg_read(ubInst, AXI_IIC_REG_ISR));

    if((axi_iic_reg_read(ubInst, AXI_IIC_REG_SR) & AXI_IIC_REG_SR_BB) && !(axi_iic_reg_read(ubInst, AXI_IIC_REG_ISR) & AXI_IIC_REG_IxR_INT2_TX_EMPTY)) // Bus busy and not owner
    {
        pthread_mutex_unlock(&tBusMutex[ubInst]);

        return 0;
    }

    // DBGPRINTLN_CTX("bus ok");

    if(!(axi_iic_reg_read(ubInst, AXI_IIC_REG_SR) & AXI_IIC_REG_SR_TX_FIFO_EMPTY)) // Clear TX FIFO
    {
        uint32_t ulReg = axi_iic_reg_read(ubInst, AXI_IIC_REG_CR);

        axi_iic_reg_write(ubInst, AXI_IIC_REG_CR, ulReg | AXI_IIC_REG_CR_TXFIFO_RESET);
        axi_iic_reg_write(ubInst, AXI_IIC_REG_CR, ulReg & ~AXI_IIC_REG_CR_TXFIFO_RESET);
    }

    // DBGPRINTLN_CTX("tx fifo cleared");

    while(!(axi_iic_reg_read(ubInst, AXI_IIC_REG_SR) & AXI_IIC_REG_SR_RX_FIFO_EMPTY)) // Clear RX FIFO
        (void)axi_iic_reg_read(ubInst, AXI_IIC_REG_RX_FIFO);

    // DBGPRINTLN_CTX("rx fifo cleared");
    // DBGPRINTLN_CTX("status %02X", (uint8_t)axi_iic_reg_read(ubInst, AXI_IIC_REG_SR));

    axi_iic_reg_write(ubInst, AXI_IIC_REG_ISR, axi_iic_reg_read(ubInst, AXI_IIC_REG_ISR)); // Clear IRQs
    // DBGPRINTLN_CTX("irq cleared, intr %02X", (uint8_t)axi_iic_reg_read(ubInst, AXI_IIC_REG_ISR));

    axi_iic_reg_write(ubInst, AXI_IIC_REG_TX_FIFO, ((ubStop && !ubCount) ? AXI_IIC_REG_TX_FIFO_STOP : 0) | AXI_IIC_REG_TX_FIFO_START | ubAddress);
    // DBGPRINTLN_CTX("addr written");

    if(ubAddress & 1) // Read
    {
        axi_iic_reg_write(ubInst, AXI_IIC_REG_TX_FIFO, (ubStop ? AXI_IIC_REG_TX_FIFO_STOP : 0) | ubCount);
    }
    else
    {
        uint32_t ulTimeout = 50;

        ulFlags = axi_iic_reg_read(ubInst, AXI_IIC_REG_ISR);

        while(--ulTimeout && (ulFlags & AXI_IIC_REG_IxR_INT4_BUS_NOT_BUSY))
        {
            axi_iic_reg_write(ubInst, AXI_IIC_REG_ISR, ulFlags & AXI_IIC_REG_IxR_INT4_BUS_NOT_BUSY);
            ulFlags = axi_iic_reg_read(ubInst, AXI_IIC_REG_ISR);

            usleep(1);
        }

        // DBGPRINTLN_CTX("not busy irq cleared, intr %02X", (uint8_t)ulFlags);

        if(!ulTimeout)
        {
            axi_iic_reinit(ubInst);

            pthread_mutex_unlock(&tBusMutex[ubInst]);

            return 0; // Timeout waiting for start condition
        }
    }

    if(ubCount)
    {
        do
        {
            if(ubAddress & 1) // Read
            {
                // DBGPRINTLN_CTX("wait for rx data (%hhu), status %02X", ubCount, (uint8_t)axi_iic_reg_read(ubInst, AXI_IIC_REG_SR));

                uint32_t ulTimeout = 500;

                while(--ulTimeout)
                {
                    ulFlags = axi_iic_reg_read(ubInst, AXI_IIC_REG_ISR);

                    if(!(axi_iic_reg_read(ubInst, AXI_IIC_REG_SR) & AXI_IIC_REG_SR_RX_FIFO_EMPTY))
                        break;

                    if(ulFlags & (AXI_IIC_REG_IxR_INT1_TERR_STC | AXI_IIC_REG_IxR_INT0_ARB_LOST))
                    {
                        axi_iic_reinit(ubInst);

                        pthread_mutex_unlock(&tBusMutex[ubInst]);

                        return 0; // Early read termination OR Arbitration lost
                    }

                    usleep(1);
                }

                if(!ulTimeout)
                {
                    axi_iic_reinit(ubInst);

                    pthread_mutex_unlock(&tBusMutex[ubInst]);

                    return 0; // Timeout waiting for data RX
                }

                *pubSrc++ = (uint8_t)axi_iic_reg_read(ubInst, AXI_IIC_REG_RX_FIFO);
            }
            else // Write
            {
                // DBGPRINTLN_CTX("wait for tx empty or error");

                uint32_t ulTimeout = 500;

                while(--ulTimeout)
                {
                    ulFlags = axi_iic_reg_read(ubInst, AXI_IIC_REG_ISR);

                    if(axi_iic_reg_read(ubInst, AXI_IIC_REG_SR) & AXI_IIC_REG_SR_TX_FIFO_EMPTY)
                        break;

                    if(ulFlags & (AXI_IIC_REG_IxR_INT1_TERR_STC | AXI_IIC_REG_IxR_INT0_ARB_LOST))
                    {
                        axi_iic_reinit(ubInst);

                        pthread_mutex_unlock(&tBusMutex[ubInst]);

                        return 0; // Slave NACK OR Arbitration lost
                    }

                    usleep(1);
                }

                if(!ulTimeout)
                {
                    axi_iic_reinit(ubInst);

                    pthread_mutex_unlock(&tBusMutex[ubInst]);

                    return 0; // Timeout waiting for data TX
                }

                axi_iic_reg_write(ubInst, AXI_IIC_REG_ISR, axi_iic_reg_read(ubInst, AXI_IIC_REG_ISR) & AXI_IIC_REG_IxR_INT2_TX_EMPTY);

                // DBGPRINTLN_CTX("tx throttle irq cleared, intr %02X", (uint8_t)axi_iic_reg_read(ubInst, AXI_IIC_REG_ISR));

                // DBGPRINTLN_CTX("write tx data (%hhu), stop %hhu", ubCount, ubStop);

                axi_iic_reg_write(ubInst, AXI_IIC_REG_TX_FIFO, ((ubCount == 1 && ubStop) ? AXI_IIC_REG_TX_FIFO_STOP : 0) | *pubSrc++);
            }
        } while(--ubCount);
    }

    if(ubAddress & 1) // Read
        axi_iic_reg_write(ubInst, AXI_IIC_REG_ISR, axi_iic_reg_read(ubInst, AXI_IIC_REG_ISR) & AXI_IIC_REG_IxR_INT4_BUS_NOT_BUSY); // Clear NOT_BUSY IRQ, so that if we encounter it set again it is really not busy

    uint32_t ulTimeout = 500;

    while(--ulTimeout)
    {
        ulFlags = axi_iic_reg_read(ubInst, AXI_IIC_REG_ISR);

        if(ulFlags & AXI_IIC_REG_IxR_INT0_ARB_LOST)
        {
            axi_iic_reinit(ubInst);

            pthread_mutex_unlock(&tBusMutex[ubInst]);

            return 0; // Arbitration lost
        }

        if(!(ubAddress & 1) && (ulFlags & AXI_IIC_REG_IxR_INT1_TERR_STC))
        {
            axi_iic_reinit(ubInst);

            pthread_mutex_unlock(&tBusMutex[ubInst]);

            return 0; // Slave NACK
        }

        if(ubStop && (ulFlags & AXI_IIC_REG_IxR_INT4_BUS_NOT_BUSY))
            break; // Stop was requested and bus is free, we are done!

        if(!ubStop && !(ubAddress & 1) && (ulFlags & AXI_IIC_REG_IxR_INT2_TX_EMPTY))
            break; // No stop was requested and bus is throttled by the master, waiting for another transaction, we are done!

        if(!ubStop && (ubAddress & 1))
            break; // No stop was requested and we already read all the bytes we wanted, no need to wait for the bus to be free, we are done!

        usleep(1);

        ulFlags = axi_iic_reg_read(ubInst, AXI_IIC_REG_ISR);
    }

    if(!ulTimeout)
    {
        axi_iic_reinit(ubInst);

        pthread_mutex_unlock(&tBusMutex[ubInst]);

        return 0; // Timeout waiting for stop condition
    }

    // DBGPRINTLN_CTX("status %02X, intr %02X", (uint8_t)axi_iic_reg_read(ubInst, AXI_IIC_REG_SR), (uint8_t)axi_iic_reg_read(ubInst, AXI_IIC_REG_ISR));
    pthread_mutex_unlock(&tBusMutex[ubInst]);

    return 1;
}
// void axi_iic_gpo_set_value(uint8_t ubInst, uint8_t ubGPO, uint8_t ubValue)
// {
//     if(ubGPO > 31)
//         return;

//     pthread_mutex_lock(&tGPOMutex[ubInst]);

//     uint32_t ulRegValue = axi_iic_reg_read(ubInst, AXI_IIC_REG_GPO);

//     if(ubValue)
//         ulRegValue |= BIT(ubGPO);
//     else
//         ulRegValue &= ~BIT(ubGPO);

//     axi_iic_reg_write(ubInst, AXI_IIC_REG_GPO, ulRegValue);

//     pthread_mutex_unlock(&tGPOMutex[ubInst]);
// }
// uint8_t axi_iic_gpo_get_value(uint8_t ubInst, uint8_t ubGPO)
// {
//     if(ubGPO > 31)
//         return 0;

//     return axi_iic_reg_read(ubInst, AXI_IIC_REG_GPO) & BIT(ubGPO) ? 1 : 0;
// }