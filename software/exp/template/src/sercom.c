#include "sercom.h"

void _putchar(char ch)
{
    sercom3_write_byte((uint8_t)ch);
}

#if defined(SERCOM0_MODE_SPI) && !defined(SERCOM0_MODE_I2C) && !defined(SERCOM0_MODE_UART)
void sercom0_init(uint32_t ulBaud, uint8_t ubMode, uint8_t ubBitMode, uint8_t ubDIPO, uint8_t ubDOPO)
{
    pm_apbc_clock_gate(PM_APBCMASK_SERCOM0_Msk, 1);

    while(SERCOM0_REGS->SPIM.SERCOM_SYNCBUSY);

    SERCOM0_REGS->SPIM.SERCOM_CTRLA |= SERCOM_SPIM_CTRLA_SWRST_Msk;

    while(SERCOM0_REGS->SPIM.SERCOM_CTRLA & SERCOM_SPIM_CTRLA_SWRST_Msk);

    SERCOM0_REGS->SPIM.SERCOM_CTRLA = (ubBitMode == SERCOM_SPI_MSB_FIRST ? 0 : SERCOM_SPIM_CTRLA_DORD_Msk) | (ubMode & 2 ? SERCOM_SPIM_CTRLA_CPOL_Msk : 0) | (ubMode & 1 ? SERCOM_SPIM_CTRLA_CPHA_Msk : 0) | SERCOM_SPIM_CTRLA_DIPO(ubDIPO) | SERCOM_SPIM_CTRLA_DOPO(ubDOPO) | SERCOM_SPIM_CTRLA_MODE_SPI_MASTER;

    while(SERCOM0_REGS->SPIM.SERCOM_SYNCBUSY);

    SERCOM0_REGS->SPIM.SERCOM_CTRLB = SERCOM_SPIM_CTRLB_CHSIZE_8_BIT;
    SERCOM0_REGS->SPIM.SERCOM_BAUD = GCLK_CLOCK_FREQ[GCLK_CLKCTRL_ID_SERCOM0_CORE_Val] / (ulBaud << 1) - 1;

    while(SERCOM0_REGS->SPIM.SERCOM_SYNCBUSY);

    SERCOM0_REGS->SPIM.SERCOM_CTRLA |= SERCOM_SPIM_CTRLA_ENABLE_Msk;

    while(SERCOM0_REGS->SPIM.SERCOM_SYNCBUSY);
}
uint8_t sercom0_spi_transfer_byte(const uint8_t ubData)
{
    while(!(SERCOM0_REGS->SPIM.SERCOM_INTFLAG & SERCOM_SPIM_INTFLAG_DRE_Msk));

    if(!(SERCOM0_REGS->SPIM.SERCOM_CTRLB & SERCOM_SPIM_CTRLB_RXEN_Msk))
    {
        SERCOM0_REGS->SPIM.SERCOM_CTRLB |= SERCOM_SPIM_CTRLB_RXEN_Msk;

        while(SERCOM0_REGS->SPIM.SERCOM_SYNCBUSY);
    }

    SERCOM0_REGS->SPIM.SERCOM_DATA = ubData;

    while(!(SERCOM0_REGS->SPIM.SERCOM_INTFLAG & SERCOM_SPIM_INTFLAG_RXC_Msk));

    return SERCOM0_REGS->SPIM.SERCOM_DATA;
}
void sercom0_spi_write_byte(const uint8_t ubData, const uint8_t ubWait)
{
    while(!(SERCOM0_REGS->SPIM.SERCOM_INTFLAG & SERCOM_SPIM_INTFLAG_DRE_Msk));

    if(SERCOM0_REGS->SPIM.SERCOM_CTRLB & SERCOM_SPIM_CTRLB_RXEN_Msk)
        SERCOM0_REGS->SPIM.SERCOM_CTRLB &= ~SERCOM_SPIM_CTRLB_RXEN_Msk;

    SERCOM0_REGS->SPIM.SERCOM_DATA = ubData;

    while(ubWait && !(SERCOM0_REGS->SPIM.SERCOM_INTFLAG & SERCOM_SPIM_INTFLAG_TXC_Msk));
}
#elif !defined(SERCOM0_MODE_SPI) && defined(SERCOM0_MODE_I2C) && !defined(SERCOM0_MODE_UART)
void sercom0_init(uint8_t ubMode)
{
    pm_apbc_clock_gate(PM_APBCMASK_SERCOM0_Msk, 1);

    while(SERCOM0_REGS->I2CM.SERCOM_SYNCBUSY);

    SERCOM0_REGS->I2CM.SERCOM_CTRLA |= SERCOM_I2CM_CTRLA_SWRST_Msk;

    while(SERCOM0_REGS->I2CM.SERCOM_CTRLA & SERCOM_I2CM_CTRLA_SWRST_Msk);

    SERCOM0_REGS->I2CM.SERCOM_CTRLA = SERCOM_I2CM_CTRLA_LOWTOUT_Msk | SERCOM_I2CM_CTRLA_INACTOUT_55US | SERCOM_I2CM_CTRLA_MODE_I2C_MASTER;

    float fI2CFreq = ubMode == SERCOM_I2C_FAST ? 400000.f : 100000.f;
    float fSrcFreq = (float)GCLK_CLOCK_FREQ[GCLK_CLKCTRL_ID_SERCOM0_CORE_Val];
    float fBaud = (fSrcFreq / fI2CFreq) - ((fSrcFreq * (100.0f / 1000000000.0f)) + 10.0f);
    uint32_t ulBaud = (uint32_t)fBaud;

    if(ulBaud > (0xFF * 2))
        ulBaud = 0xFF;
    else if(ulBaud <= 1)
        ulBaud = 1;
    else
        ulBaud /= 2;

    SERCOM0_REGS->I2CM.SERCOM_BAUD = ulBaud;

    while(SERCOM0_REGS->I2CM.SERCOM_SYNCBUSY);

    SERCOM0_REGS->I2CM.SERCOM_CTRLA |= SERCOM_I2CM_CTRLA_ENABLE_Msk;

    while(SERCOM0_REGS->I2CM.SERCOM_SYNCBUSY);

    SERCOM0_REGS->I2CM.SERCOM_STATUS = SERCOM_I2CM_STATUS_LOWTOUT_Msk | (0x01 << SERCOM_I2CM_STATUS_BUSSTATE_Pos) | SERCOM_I2CM_STATUS_ARBLOST_Msk | SERCOM_I2CM_STATUS_BUSERR_Msk;

    while(SERCOM0_REGS->I2CM.SERCOM_SYNCBUSY);
}
uint8_t sercom0_i2c_transmit(uint8_t ubAddress, uint8_t *pubSrc, uint32_t ulCount, uint8_t ubStop)
{
    if((ubAddress & 1) && !ulCount)
        return 0;

    if((SERCOM0_REGS->I2CM.SERCOM_STATUS & SERCOM_I2CM_STATUS_BUSSTATE_Msk) == SERCOM_I2CM_STATUS_BUSSTATE(3))
        return 0;

    SERCOM0_REGS->I2CM.SERCOM_ADDR = ubAddress;

    if(!ulCount)
    {
        while(!(SERCOM0_REGS->I2CM.SERCOM_INTFLAG & SERCOM_I2CM_INTFLAG_MB_Msk));

        if(SERCOM0_REGS->I2CM.SERCOM_STATUS & (SERCOM_I2CM_STATUS_ARBLOST_Msk | SERCOM_I2CM_STATUS_BUSERR_Msk))
            return 0;

        if(SERCOM0_REGS->I2CM.SERCOM_STATUS & SERCOM_I2CM_STATUS_RXNACK_Msk)
        {
            SERCOM0_REGS->I2CM.SERCOM_CTRLB = SERCOM_I2CM_CTRLB_CMD(3);

            while(SERCOM0_REGS->I2CM.SERCOM_SYNCBUSY);

            return 0;
        }
    }
    else
    {
        do
        {
            if(ubAddress & 1) // Read
            {
                while(!(SERCOM0_REGS->I2CM.SERCOM_INTFLAG & (SERCOM_I2CM_INTFLAG_MB_Msk | SERCOM_I2CM_INTFLAG_SB_Msk)));

                if(SERCOM0_REGS->I2CM.SERCOM_STATUS & (SERCOM_I2CM_STATUS_ARBLOST_Msk | SERCOM_I2CM_STATUS_BUSERR_Msk))
                    return 0;

                if(SERCOM0_REGS->I2CM.SERCOM_INTFLAG & SERCOM_I2CM_INTFLAG_SB_Msk)
                {
                    *pubSrc++ = SERCOM0_REGS->I2CM.SERCOM_DATA;

                    if(ulCount > 1)
                        SERCOM0_REGS->I2CM.SERCOM_CTRLB = SERCOM_I2CM_CTRLB_CMD(2);
                }
            }
            else // Write
            {
                while(!(SERCOM0_REGS->I2CM.SERCOM_INTFLAG & SERCOM_I2CM_INTFLAG_MB_Msk));

                if(SERCOM0_REGS->I2CM.SERCOM_STATUS & (SERCOM_I2CM_STATUS_ARBLOST_Msk | SERCOM_I2CM_STATUS_BUSERR_Msk))
                    return 0;

                if(SERCOM0_REGS->I2CM.SERCOM_STATUS & SERCOM_I2CM_STATUS_RXNACK_Msk)
                {
                    SERCOM0_REGS->I2CM.SERCOM_CTRLB = SERCOM_I2CM_CTRLB_CMD(3);

                    while(SERCOM0_REGS->I2CM.SERCOM_SYNCBUSY);

                    return 0;
                }

                SERCOM0_REGS->I2CM.SERCOM_DATA = *pubSrc++;

                while(!(SERCOM0_REGS->I2CM.SERCOM_INTFLAG & SERCOM_I2CM_INTFLAG_MB_Msk));
            }
        } while(--ulCount);
    }

    if(ubStop)
    {
        if(SERCOM0_REGS->I2CM.SERCOM_STATUS & (SERCOM_I2CM_STATUS_ARBLOST_Msk | SERCOM_I2CM_STATUS_BUSERR_Msk))
            return 0;

        SERCOM0_REGS->I2CM.SERCOM_CTRLB = SERCOM_I2CM_CTRLB_ACKACT_Msk | SERCOM_I2CM_CTRLB_CMD(3);

        while(SERCOM0_REGS->I2CM.SERCOM_SYNCBUSY);
    }

    return 1;
}
#elif !defined(SERCOM0_MODE_SPI) && !defined(SERCOM0_MODE_I2C) && defined(SERCOM0_MODE_UART)
static volatile uint8_t *pubSERCOM0FIFO = NULL;
static volatile uint16_t usSERCOM0FIFOWritePos, usSERCOM0FIFOReadPos;

void _sercom0_isr()
{
    while(SERCOM0_REGS->USART_INT.SERCOM_INTFLAG & SERCOM_USART_INT_INTFLAG_RXC_Msk)
    {
        pubSERCOM0FIFO[usSERCOM0FIFOWritePos++] = SERCOM0_REGS->USART_INT.SERCOM_DATA;

        if(usSERCOM0FIFOWritePos >= SERCOM0_FIFO_SIZE)
            usSERCOM0FIFOWritePos = 0;
    }
}

void sercom0_init(uint32_t ulBaud, uint32_t ulFrameSettings, uint8_t ubRXPO, uint8_t ubTXPO)
{
    pm_apbc_clock_gate(PM_APBCMASK_SERCOM0_Msk, 1);

    while(SERCOM0_REGS->USART_INT.SERCOM_SYNCBUSY);

    free((uint8_t *)pubSERCOM0FIFO);

    pubSERCOM0FIFO = (volatile uint8_t *)malloc(SERCOM0_FIFO_SIZE);

    if(!pubSERCOM0FIFO)
        return;

    memset((uint8_t *)pubSERCOM0FIFO, 0, SERCOM0_FIFO_SIZE);

    usSERCOM0FIFOWritePos = 0;
    usSERCOM0FIFOReadPos = 0;

    SERCOM0_REGS->USART_INT.SERCOM_CTRLA |= SERCOM_USART_INT_CTRLA_SWRST_Msk;

    while(SERCOM0_REGS->USART_INT.SERCOM_CTRLA & SERCOM_USART_INT_CTRLA_SWRST_Msk);

    SERCOM0_REGS->USART_INT.SERCOM_CTRLA = (ulFrameSettings & SERCOM_USART_INT_CTRLA_DORD_Msk) | SERCOM_USART_INT_CTRLA_CMODE_ASYNC | (ulFrameSettings & SERCOM_USART_INT_CTRLA_FORM_Msk) | SERCOM_USART_INT_CTRLA_RXPO(ubRXPO) | SERCOM_USART_INT_CTRLA_TXPO(ubTXPO) | SERCOM_USART_INT_CTRLA_MODE_USART_INT_CLK;
    SERCOM0_REGS->USART_INT.SERCOM_CTRLB = SERCOM_USART_INT_CTRLB_RXEN_Msk | SERCOM_USART_INT_CTRLB_TXEN_Msk | (ulFrameSettings & SERCOM_USART_INT_CTRLB_PMODE_Msk) | (ulFrameSettings & SERCOM_USART_INT_CTRLB_SBMODE_Msk) | (ulFrameSettings & SERCOM_USART_INT_CTRLB_CHSIZE_Msk);
    SERCOM0_REGS->USART_INT.SERCOM_BAUD = (uint16_t)(65536 * (1 - 16 * ((float)ulBaud / GCLK_CLOCK_FREQ[GCLK_CLKCTRL_ID_SERCOM0_CORE_Val])));

    while(SERCOM0_REGS->USART_INT.SERCOM_SYNCBUSY);

    IRQ_CLEAR(SERCOM0_IRQn); // Clear pending vector
    IRQ_SET_PRIO(SERCOM0_IRQn, 2, 1); // Set priority 2,1
    IRQ_ENABLE(SERCOM0_IRQn); // Enable vector
    SERCOM0_REGS->USART_INT.SERCOM_INTENSET = SERCOM_USART_INT_INTENSET_RXC_Msk; // Enable RXC flag

    SERCOM0_REGS->USART_INT.SERCOM_CTRLA |= SERCOM_USART_INT_CTRLA_ENABLE_Msk;

    while(SERCOM0_REGS->USART_INT.SERCOM_SYNCBUSY);
}
void sercom0_write_byte(const uint8_t ubData)
{
    while(!(SERCOM0_REGS->USART_INT.SERCOM_INTFLAG & SERCOM_USART_INT_INTFLAG_DRE_Msk));

    SERCOM0_REGS->USART_INT.SERCOM_DATA = ubData;
}
uint8_t sercom0_read_byte()
{
    if(!sercom0_available())
        return 0;

    uint8_t ubData;

    ATOMIC_BLOCK(ATOMIC_RESTORESTATE)
    {
        ubData = pubSERCOM0FIFO[usSERCOM0FIFOReadPos++];

        if(usSERCOM0FIFOReadPos >= SERCOM0_FIFO_SIZE)
            usSERCOM0FIFOReadPos = 0;
    }

    return ubData;
}
uint32_t sercom0_available()
{
    return (SERCOM0_FIFO_SIZE + usSERCOM0FIFOWritePos - usSERCOM0FIFOReadPos) % SERCOM0_FIFO_SIZE;
}
void sercom0_flush()
{
    usSERCOM0FIFOReadPos = usSERCOM0FIFOWritePos = 0;
}
#endif  // SERCOM0_MODE

#if defined(SERCOM1_MODE_SPI) && !defined(SERCOM1_MODE_I2C) && !defined(SERCOM1_MODE_UART)
void sercom1_init(uint32_t ulBaud, uint8_t ubMode, uint8_t ubBitMode, uint8_t ubDIPO, uint8_t ubDOPO)
{
    pm_apbc_clock_gate(PM_APBCMASK_SERCOM1_Msk, 1);

    while(SERCOM1_REGS->SPIM.SERCOM_SYNCBUSY);

    SERCOM1_REGS->SPIM.SERCOM_CTRLA |= SERCOM_SPIM_CTRLA_SWRST_Msk;

    while(SERCOM1_REGS->SPIM.SERCOM_CTRLA & SERCOM_SPIM_CTRLA_SWRST_Msk);

    SERCOM1_REGS->SPIM.SERCOM_CTRLA = (ubBitMode == SERCOM_SPI_MSB_FIRST ? 0 : SERCOM_SPIM_CTRLA_DORD_Msk) | (ubMode & 2 ? SERCOM_SPIM_CTRLA_CPOL_Msk : 0) | (ubMode & 1 ? SERCOM_SPIM_CTRLA_CPHA_Msk : 0) | SERCOM_SPIM_CTRLA_DIPO(ubDIPO) | SERCOM_SPIM_CTRLA_DOPO(ubDOPO) | SERCOM_SPIM_CTRLA_MODE_SPI_MASTER;

    while(SERCOM1_REGS->SPIM.SERCOM_SYNCBUSY);

    SERCOM1_REGS->SPIM.SERCOM_CTRLB = SERCOM_SPIM_CTRLB_CHSIZE_8_BIT;
    SERCOM1_REGS->SPIM.SERCOM_BAUD = GCLK_CLOCK_FREQ[GCLK_CLKCTRL_ID_SERCOM1_CORE_Val] / (ulBaud << 1) - 1;

    while(SERCOM1_REGS->SPIM.SERCOM_SYNCBUSY);

    SERCOM1_REGS->SPIM.SERCOM_CTRLA |= SERCOM_SPIM_CTRLA_ENABLE_Msk;

    while(SERCOM1_REGS->SPIM.SERCOM_SYNCBUSY);
}
uint8_t sercom1_spi_transfer_byte(const uint8_t ubData)
{
    while(!(SERCOM1_REGS->SPIM.SERCOM_INTFLAG & SERCOM_SPIM_INTFLAG_DRE_Msk));

    if(!(SERCOM1_REGS->SPIM.SERCOM_CTRLB & SERCOM_SPIM_CTRLB_RXEN_Msk))
    {
        SERCOM1_REGS->SPIM.SERCOM_CTRLB |= SERCOM_SPIM_CTRLB_RXEN_Msk;

        while(SERCOM1_REGS->SPIM.SERCOM_SYNCBUSY);
    }

    SERCOM1_REGS->SPIM.SERCOM_DATA = ubData;

    while(!(SERCOM1_REGS->SPIM.SERCOM_INTFLAG & SERCOM_SPIM_INTFLAG_RXC_Msk));

    return SERCOM1_REGS->SPIM.SERCOM_DATA;
}
void sercom1_spi_write_byte(const uint8_t ubData, const uint8_t ubWait)
{
    while(!(SERCOM1_REGS->SPIM.SERCOM_INTFLAG & SERCOM_SPIM_INTFLAG_DRE_Msk));

    if(SERCOM1_REGS->SPIM.SERCOM_CTRLB & SERCOM_SPIM_CTRLB_RXEN_Msk)
        SERCOM1_REGS->SPIM.SERCOM_CTRLB &= ~SERCOM_SPIM_CTRLB_RXEN_Msk;

    SERCOM1_REGS->SPIM.SERCOM_DATA = ubData;

    while(ubWait && !(SERCOM1_REGS->SPIM.SERCOM_INTFLAG & SERCOM_SPIM_INTFLAG_TXC_Msk));
}
#elif !defined(SERCOM1_MODE_SPI) && defined(SERCOM1_MODE_I2C) && !defined(SERCOM1_MODE_UART)
static sercom_i2c_slave_addr_isr_t pfSERCOM1I2CSlaveAddrISR = NULL;
static sercom_i2c_slave_tx_data_isr_t pfSERCOM1I2CSlaveTXDataISR = NULL;
static sercom_i2c_slave_rx_data_isr_t pfSERCOM1I2CSlaveRXDataISR = NULL;

void _sercom1_isr()
{
    uint32_t ulFlags = SERCOM1_REGS->I2CS.SERCOM_INTFLAG;

    if(ulFlags & SERCOM_I2CS_INTFLAG_AMATCH_Msk)
    {
        volatile uint8_t ubAddress = SERCOM1_REGS->I2CS.SERCOM_DATA;

        if(pfSERCOM1I2CSlaveAddrISR && pfSERCOM1I2CSlaveAddrISR(ubAddress))
            SERCOM1_REGS->I2CS.SERCOM_CTRLB &= ~SERCOM_I2CS_CTRLB_ACKACT_Msk;
        else
            SERCOM1_REGS->I2CS.SERCOM_CTRLB |= SERCOM_I2CS_CTRLB_ACKACT_Msk;

        SERCOM1_REGS->I2CS.SERCOM_INTFLAG = SERCOM_I2CS_INTFLAG_AMATCH_Msk;
    }

    if(ulFlags & SERCOM_I2CS_INTFLAG_DRDY_Msk)
    {
        if(SERCOM1_REGS->I2CS.SERCOM_STATUS & SERCOM_I2CS_STATUS_DIR_Msk) // Master is trying to read from us
        {
            if(SERCOM1_REGS->I2CS.SERCOM_STATUS & SERCOM_I2CM_STATUS_RXNACK_Msk)
                SERCOM1_REGS->I2CS.SERCOM_CTRLB |= SERCOM_I2CS_CTRLB_CMD(2);
            else
                SERCOM1_REGS->I2CS.SERCOM_DATA = pfSERCOM1I2CSlaveTXDataISR ? pfSERCOM1I2CSlaveTXDataISR() : 0xFF;
        }
        else // Master is trying to write to us, there is data available
        {
            volatile uint8_t ubData = SERCOM1_REGS->I2CS.SERCOM_DATA;

            if(pfSERCOM1I2CSlaveRXDataISR && pfSERCOM1I2CSlaveRXDataISR(ubData))
                SERCOM1_REGS->I2CS.SERCOM_CTRLB = (SERCOM1_REGS->I2CS.SERCOM_CTRLB & ~SERCOM_I2CS_CTRLB_ACKACT_Msk) | SERCOM_I2CS_CTRLB_CMD(3);
            else
                SERCOM1_REGS->I2CS.SERCOM_CTRLB |= SERCOM_I2CS_CTRLB_ACKACT_Msk | SERCOM_I2CS_CTRLB_CMD(2);
        }
    }
}

void sercom1_init(uint8_t ubAddress)
{
    pm_apbc_clock_gate(PM_APBCMASK_SERCOM1_Msk, 1);

    while(SERCOM1_REGS->I2CS.SERCOM_SYNCBUSY);

    SERCOM1_REGS->I2CS.SERCOM_CTRLA |= SERCOM_I2CS_CTRLA_SWRST_Msk;

    while(SERCOM1_REGS->I2CS.SERCOM_CTRLA & SERCOM_I2CS_CTRLA_SWRST_Msk);

    SERCOM1_REGS->I2CS.SERCOM_CTRLA = SERCOM_I2CS_CTRLA_SPEED_STANDARD_AND_FAST_MODE | SERCOM_I2CS_CTRLA_SDAHOLD_450NS | SERCOM_I2CS_CTRLA_RUNSTDBY_Msk | SERCOM_I2CS_CTRLA_MODE_I2C_SLAVE;
    SERCOM1_REGS->I2CS.SERCOM_CTRLB = (0 << SERCOM_I2CS_CTRLB_AMODE_Pos);
    SERCOM1_REGS->I2CS.SERCOM_ADDR = SERCOM_I2CS_ADDR_ADDR(ubAddress);

    SERCOM1_REGS->I2CS.SERCOM_INTFLAG = SERCOM_I2CS_INTFLAG_Msk; // Clear all flags
    IRQ_CLEAR(SERCOM1_IRQn); // Clear pending vector
    IRQ_SET_PRIO(SERCOM1_IRQn, 2, 0); // Set priority 2,0
    IRQ_ENABLE(SERCOM1_IRQn); // Enable vector
    SERCOM1_REGS->I2CS.SERCOM_INTENSET = SERCOM_I2CS_INTFLAG_DRDY_Msk | SERCOM_I2CS_INTFLAG_AMATCH_Msk; // Enable DRDY and AMATCH flags

    SERCOM1_REGS->I2CS.SERCOM_CTRLA |= SERCOM_I2CS_CTRLA_ENABLE_Msk;

    while(SERCOM1_REGS->I2CS.SERCOM_SYNCBUSY);

    SERCOM1_REGS->I2CS.SERCOM_STATUS = SERCOM_I2CS_STATUS_Msk;

    while(SERCOM1_REGS->I2CS.SERCOM_SYNCBUSY);
}
void sercom1_set_slave_addr_isr(sercom_i2c_slave_addr_isr_t pfISR)
{
    pfSERCOM1I2CSlaveAddrISR = pfISR;
}
void sercom1_set_slave_tx_data_isr(sercom_i2c_slave_tx_data_isr_t pfISR)
{
    pfSERCOM1I2CSlaveTXDataISR = pfISR;
}
void sercom1_set_slave_rx_data_isr(sercom_i2c_slave_rx_data_isr_t pfISR)
{
    pfSERCOM1I2CSlaveRXDataISR = pfISR;
}
#elif !defined(SERCOM1_MODE_SPI) && !defined(SERCOM1_MODE_I2C) && defined(SERCOM1_MODE_UART)
static volatile uint8_t *pubSERCOM1FIFO = NULL;
static volatile uint16_t usSERCOM1FIFOWritePos, usSERCOM1FIFOReadPos;

void _sercom1_isr()
{
    while(SERCOM1_REGS->USART_INT.SERCOM_INTFLAG & SERCOM_USART_INT_INTFLAG_RXC_Msk)
    {
        pubSERCOM1FIFO[usSERCOM1FIFOWritePos++] = SERCOM1_REGS->USART_INT.SERCOM_DATA;

        if(usSERCOM1FIFOWritePos >= SERCOM1_FIFO_SIZE)
            usSERCOM1FIFOWritePos = 0;
    }
}

void sercom1_init(uint32_t ulBaud, uint32_t ulFrameSettings, uint8_t ubRXPO, uint8_t ubTXPO)
{
    pm_apbc_clock_gate(PM_APBCMASK_SERCOM1_Msk, 1);

    while(SERCOM1_REGS->USART_INT.SERCOM_SYNCBUSY);

    free((uint8_t *)pubSERCOM1FIFO);

    pubSERCOM1FIFO = (volatile uint8_t *)malloc(SERCOM1_FIFO_SIZE);

    if(!pubSERCOM1FIFO)
        return;

    memset((uint8_t *)pubSERCOM1FIFO, 0, SERCOM1_FIFO_SIZE);

    usSERCOM1FIFOWritePos = 0;
    usSERCOM1FIFOReadPos = 0;

    SERCOM1_REGS->USART_INT.SERCOM_CTRLA |= SERCOM_USART_INT_CTRLA_SWRST_Msk;

    while(SERCOM1_REGS->USART_INT.SERCOM_CTRLA & SERCOM_USART_INT_CTRLA_SWRST_Msk);

    SERCOM1_REGS->USART_INT.SERCOM_CTRLA = (ulFrameSettings & SERCOM_USART_INT_CTRLA_DORD_Msk) | SERCOM_USART_INT_CTRLA_CMODE_ASYNC | (ulFrameSettings & SERCOM_USART_INT_CTRLA_FORM_Msk) | SERCOM_USART_INT_CTRLA_RXPO(ubRXPO) | SERCOM_USART_INT_CTRLA_TXPO(ubTXPO) | SERCOM_USART_INT_CTRLA_MODE_USART_INT_CLK;
    SERCOM1_REGS->USART_INT.SERCOM_CTRLB = SERCOM_USART_INT_CTRLB_RXEN_Msk | SERCOM_USART_INT_CTRLB_TXEN_Msk | (ulFrameSettings & SERCOM_USART_INT_CTRLB_PMODE_Msk) | (ulFrameSettings & SERCOM_USART_INT_CTRLB_SBMODE_Msk) | (ulFrameSettings & SERCOM_USART_INT_CTRLB_CHSIZE_Msk);
    SERCOM1_REGS->USART_INT.SERCOM_BAUD = (uint16_t)(65536 * (1 - 16 * ((float)ulBaud / GCLK_CLOCK_FREQ[GCLK_CLKCTRL_ID_SERCOM1_CORE_Val])));

    while(SERCOM1_REGS->USART_INT.SERCOM_SYNCBUSY);

    IRQ_CLEAR(SERCOM1_IRQn); // Clear pending vector
    IRQ_SET_PRIO(SERCOM1_IRQn, 2, 1); // Set priority 2,1
    IRQ_ENABLE(SERCOM1_IRQn); // Enable vector
    SERCOM1_REGS->USART_INT.SERCOM_INTENSET = SERCOM_USART_INT_INTENSET_RXC_Msk; // Enable RXC flag

    SERCOM1_REGS->USART_INT.SERCOM_CTRLA |= SERCOM_USART_INT_CTRLA_ENABLE_Msk;

    while(SERCOM1_REGS->USART_INT.SERCOM_SYNCBUSY);
}
void sercom1_write_byte(const uint8_t ubData)
{
    while(!(SERCOM1_REGS->USART_INT.SERCOM_INTFLAG & SERCOM_USART_INT_INTFLAG_DRE_Msk));

    SERCOM1_REGS->USART_INT.SERCOM_DATA = ubData;
}
uint8_t sercom1_read_byte()
{
    if(!sercom1_available())
        return 0;

    uint8_t ubData;

    ATOMIC_BLOCK(ATOMIC_RESTORESTATE)
    {
        ubData = pubSERCOM1FIFO[usSERCOM1FIFOReadPos++];

        if(usSERCOM1FIFOReadPos >= SERCOM1_FIFO_SIZE)
            usSERCOM1FIFOReadPos = 0;
    }

    return ubData;
}
uint32_t sercom1_available()
{
    return (SERCOM1_FIFO_SIZE + usSERCOM1FIFOWritePos - usSERCOM1FIFOReadPos) % SERCOM1_FIFO_SIZE;
}
void sercom1_flush()
{
    usSERCOM1FIFOReadPos = usSERCOM1FIFOWritePos = 0;
}
#endif  // SERCOM1_MODE

#if defined(SERCOM2_MODE_SPI) && !defined(SERCOM2_MODE_I2C) && !defined(SERCOM2_MODE_UART)
void sercom2_init(uint32_t ulBaud, uint8_t ubMode, uint8_t ubBitMode, uint8_t ubDIPO, uint8_t ubDOPO)
{
    pm_apbc_clock_gate(PM_APBCMASK_SERCOM2_Msk, 1);

    while(SERCOM2_REGS->SPIM.SERCOM_SYNCBUSY);

    SERCOM2_REGS->SPIM.SERCOM_CTRLA |= SERCOM_SPIM_CTRLA_SWRST_Msk;

    while(SERCOM2_REGS->SPIM.SERCOM_CTRLA & SERCOM_SPIM_CTRLA_SWRST_Msk);

    SERCOM2_REGS->SPIM.SERCOM_CTRLA = (ubBitMode == SERCOM_SPI_MSB_FIRST ? 0 : SERCOM_SPIM_CTRLA_DORD_Msk) | (ubMode & 2 ? SERCOM_SPIM_CTRLA_CPOL_Msk : 0) | (ubMode & 1 ? SERCOM_SPIM_CTRLA_CPHA_Msk : 0) | SERCOM_SPIM_CTRLA_DIPO(ubDIPO) | SERCOM_SPIM_CTRLA_DOPO(ubDOPO) | SERCOM_SPIM_CTRLA_MODE_SPI_MASTER;

    while(SERCOM2_REGS->SPIM.SERCOM_SYNCBUSY);

    SERCOM2_REGS->SPIM.SERCOM_CTRLB = SERCOM_SPIM_CTRLB_CHSIZE_8_BIT;
    SERCOM2_REGS->SPIM.SERCOM_BAUD = GCLK_CLOCK_FREQ[GCLK_CLKCTRL_ID_SERCOM2_CORE_Val] / (ulBaud << 1) - 1;

    while(SERCOM2_REGS->SPIM.SERCOM_SYNCBUSY);

    SERCOM2_REGS->SPIM.SERCOM_CTRLA |= SERCOM_SPIM_CTRLA_ENABLE_Msk;

    while(SERCOM2_REGS->SPIM.SERCOM_SYNCBUSY);
}
uint8_t sercom2_spi_transfer_byte(const uint8_t ubData)
{
    while(!(SERCOM2_REGS->SPIM.SERCOM_INTFLAG & SERCOM_SPIM_INTFLAG_DRE_Msk));

    if(!(SERCOM2_REGS->SPIM.SERCOM_CTRLB & SERCOM_SPIM_CTRLB_RXEN_Msk))
    {
        SERCOM2_REGS->SPIM.SERCOM_CTRLB |= SERCOM_SPIM_CTRLB_RXEN_Msk;

        while(SERCOM2_REGS->SPIM.SERCOM_SYNCBUSY);
    }

    SERCOM2_REGS->SPIM.SERCOM_DATA = ubData;

    while(!(SERCOM2_REGS->SPIM.SERCOM_INTFLAG & SERCOM_SPIM_INTFLAG_RXC_Msk));

    return SERCOM2_REGS->SPIM.SERCOM_DATA;
}
void sercom2_spi_write_byte(const uint8_t ubData, const uint8_t ubWait)
{
    while(!(SERCOM2_REGS->SPIM.SERCOM_INTFLAG & SERCOM_SPIM_INTFLAG_DRE_Msk));

    if(SERCOM2_REGS->SPIM.SERCOM_CTRLB & SERCOM_SPIM_CTRLB_RXEN_Msk)
        SERCOM2_REGS->SPIM.SERCOM_CTRLB &= ~SERCOM_SPIM_CTRLB_RXEN_Msk;

    SERCOM2_REGS->SPIM.SERCOM_DATA = ubData;

    while(ubWait && !(SERCOM2_REGS->SPIM.SERCOM_INTFLAG & SERCOM_SPIM_INTFLAG_TXC_Msk));
}
#elif !defined(SERCOM2_MODE_SPI) && defined(SERCOM2_MODE_I2C) && !defined(SERCOM2_MODE_UART)
void sercom2_init(uint8_t ubMode)
{
    pm_apbc_clock_gate(PM_APBCMASK_SERCOM2_Msk, 1);

    while(SERCOM2_REGS->I2CM.SERCOM_SYNCBUSY);

    SERCOM2_REGS->I2CM.SERCOM_CTRLA |= SERCOM_I2CM_CTRLA_SWRST_Msk;

    while(SERCOM2_REGS->I2CM.SERCOM_CTRLA & SERCOM_I2CM_CTRLA_SWRST_Msk);

    SERCOM2_REGS->I2CM.SERCOM_CTRLA = SERCOM_I2CM_CTRLA_LOWTOUT_Msk | SERCOM_I2CM_CTRLA_INACTOUT_55US | SERCOM_I2CM_CTRLA_MODE_I2C_MASTER;

    float fI2CFreq = ubMode == SERCOM_I2C_FAST ? 400000.f : 100000.f;
    float fSrcFreq = (float)GCLK_CLOCK_FREQ[GCLK_CLKCTRL_ID_SERCOM2_CORE_Val];
    float fBaud = (fSrcFreq / fI2CFreq) - ((fSrcFreq * (100.0f / 1000000000.0f)) + 10.0f);
    uint32_t ulBaud = (uint32_t)fBaud;

    if(ulBaud > (0xFF * 2))
        ulBaud = 0xFF;
    else if(ulBaud <= 1)
        ulBaud = 1;
    else
        ulBaud /= 2;

    SERCOM2_REGS->I2CM.SERCOM_BAUD = ulBaud;

    while(SERCOM2_REGS->I2CM.SERCOM_SYNCBUSY);

    SERCOM2_REGS->I2CM.SERCOM_CTRLA |= SERCOM_I2CM_CTRLA_ENABLE_Msk;

    while(SERCOM2_REGS->I2CM.SERCOM_SYNCBUSY);

    SERCOM2_REGS->I2CM.SERCOM_STATUS = SERCOM_I2CM_STATUS_LOWTOUT_Msk | (0x01 << SERCOM_I2CM_STATUS_BUSSTATE_Pos) | SERCOM_I2CM_STATUS_ARBLOST_Msk | SERCOM_I2CM_STATUS_BUSERR_Msk;

    while(SERCOM2_REGS->I2CM.SERCOM_SYNCBUSY);
}
uint8_t sercom2_i2c_transmit(uint8_t ubAddress, uint8_t *pubSrc, uint32_t ulCount, uint8_t ubStop)
{
    if((ubAddress & 1) && !ulCount)
        return 0;

    if((SERCOM2_REGS->I2CM.SERCOM_STATUS & SERCOM_I2CM_STATUS_BUSSTATE_Msk) == SERCOM_I2CM_STATUS_BUSSTATE(3))
        return 0;

    SERCOM2_REGS->I2CM.SERCOM_ADDR = ubAddress;

    if(!ulCount)
    {
        while(!(SERCOM2_REGS->I2CM.SERCOM_INTFLAG & SERCOM_I2CM_INTFLAG_MB_Msk));

        if(SERCOM2_REGS->I2CM.SERCOM_STATUS & (SERCOM_I2CM_STATUS_ARBLOST_Msk | SERCOM_I2CM_STATUS_BUSERR_Msk))
            return 0;

        if(SERCOM2_REGS->I2CM.SERCOM_STATUS & SERCOM_I2CM_STATUS_RXNACK_Msk)
        {
            SERCOM2_REGS->I2CM.SERCOM_CTRLB = SERCOM_I2CM_CTRLB_CMD(3);

            while(SERCOM2_REGS->I2CM.SERCOM_SYNCBUSY);

            return 0;
        }
    }
    else
    {
        do
        {
            if(ubAddress & 1) // Read
            {
                while(!(SERCOM2_REGS->I2CM.SERCOM_INTFLAG & (SERCOM_I2CM_INTFLAG_MB_Msk | SERCOM_I2CM_INTFLAG_SB_Msk)));

                if(SERCOM2_REGS->I2CM.SERCOM_STATUS & (SERCOM_I2CM_STATUS_ARBLOST_Msk | SERCOM_I2CM_STATUS_BUSERR_Msk))
                    return 0;

                if(SERCOM2_REGS->I2CM.SERCOM_INTFLAG & SERCOM_I2CM_INTFLAG_SB_Msk)
                {
                    *pubSrc++ = SERCOM2_REGS->I2CM.SERCOM_DATA;

                    if(ulCount > 1)
                        SERCOM2_REGS->I2CM.SERCOM_CTRLB = SERCOM_I2CM_CTRLB_CMD(2);
                }
            }
            else // Write
            {
                while(!(SERCOM2_REGS->I2CM.SERCOM_INTFLAG & SERCOM_I2CM_INTFLAG_MB_Msk));

                if(SERCOM2_REGS->I2CM.SERCOM_STATUS & (SERCOM_I2CM_STATUS_ARBLOST_Msk | SERCOM_I2CM_STATUS_BUSERR_Msk))
                    return 0;

                if(SERCOM2_REGS->I2CM.SERCOM_STATUS & SERCOM_I2CM_STATUS_RXNACK_Msk)
                {
                    SERCOM2_REGS->I2CM.SERCOM_CTRLB = SERCOM_I2CM_CTRLB_CMD(3);

                    while(SERCOM2_REGS->I2CM.SERCOM_SYNCBUSY);

                    return 0;
                }

                SERCOM2_REGS->I2CM.SERCOM_DATA = *pubSrc++;

                while(!(SERCOM2_REGS->I2CM.SERCOM_INTFLAG & SERCOM_I2CM_INTFLAG_MB_Msk));
            }
        } while(--ulCount);
    }

    if(ubStop)
    {
        if(SERCOM2_REGS->I2CM.SERCOM_STATUS & (SERCOM_I2CM_STATUS_ARBLOST_Msk | SERCOM_I2CM_STATUS_BUSERR_Msk))
            return 0;

        SERCOM2_REGS->I2CM.SERCOM_CTRLB = SERCOM_I2CM_CTRLB_ACKACT_Msk | SERCOM_I2CM_CTRLB_CMD(3);

        while(SERCOM2_REGS->I2CM.SERCOM_SYNCBUSY);
    }

    return 1;
}
#elif !defined(SERCOM2_MODE_SPI) && !defined(SERCOM2_MODE_I2C) && defined(SERCOM2_MODE_UART)
static volatile uint8_t *pubSERCOM2FIFO = NULL;
static volatile uint16_t usSERCOM2FIFOWritePos, usSERCOM2FIFOReadPos;

void _sercom2_isr()
{
    while(SERCOM2_REGS->USART_INT.SERCOM_INTFLAG & SERCOM_USART_INT_INTFLAG_RXC_Msk)
    {
        pubSERCOM2FIFO[usSERCOM2FIFOWritePos++] = SERCOM2_REGS->USART_INT.SERCOM_DATA;

        if(usSERCOM2FIFOWritePos >= SERCOM2_FIFO_SIZE)
            usSERCOM2FIFOWritePos = 0;
    }
}

void sercom2_init(uint32_t ulBaud, uint32_t ulFrameSettings, uint8_t ubRXPO, uint8_t ubTXPO)
{
    pm_apbc_clock_gate(PM_APBCMASK_SERCOM2_Msk, 1);

    while(SERCOM2_REGS->USART_INT.SERCOM_SYNCBUSY);

    free((uint8_t *)pubSERCOM2FIFO);

    pubSERCOM2FIFO = (volatile uint8_t *)malloc(SERCOM2_FIFO_SIZE);

    if(!pubSERCOM2FIFO)
        return;

    memset((uint8_t *)pubSERCOM2FIFO, 0, SERCOM2_FIFO_SIZE);

    usSERCOM2FIFOWritePos = 0;
    usSERCOM2FIFOReadPos = 0;

    SERCOM2_REGS->USART_INT.SERCOM_CTRLA |= SERCOM_USART_INT_CTRLA_SWRST_Msk;

    while(SERCOM2_REGS->USART_INT.SERCOM_CTRLA & SERCOM_USART_INT_CTRLA_SWRST_Msk);

    SERCOM2_REGS->USART_INT.SERCOM_CTRLA = (ulFrameSettings & SERCOM_USART_INT_CTRLA_DORD_Msk) | SERCOM_USART_INT_CTRLA_CMODE_ASYNC | (ulFrameSettings & SERCOM_USART_INT_CTRLA_FORM_Msk) | SERCOM_USART_INT_CTRLA_RXPO(ubRXPO) | SERCOM_USART_INT_CTRLA_TXPO(ubTXPO) | SERCOM_USART_INT_CTRLA_MODE_USART_INT_CLK;
    SERCOM2_REGS->USART_INT.SERCOM_CTRLB = SERCOM_USART_INT_CTRLB_RXEN_Msk | SERCOM_USART_INT_CTRLB_TXEN_Msk | (ulFrameSettings & SERCOM_USART_INT_CTRLB_PMODE_Msk) | (ulFrameSettings & SERCOM_USART_INT_CTRLB_SBMODE_Msk) | (ulFrameSettings & SERCOM_USART_INT_CTRLB_CHSIZE_Msk);
    SERCOM2_REGS->USART_INT.SERCOM_BAUD = (uint16_t)(65536 * (1 - 16 * ((float)ulBaud / GCLK_CLOCK_FREQ[GCLK_CLKCTRL_ID_SERCOM2_CORE_Val])));

    while(SERCOM2_REGS->USART_INT.SERCOM_SYNCBUSY);

    IRQ_CLEAR(SERCOM2_IRQn); // Clear pending vector
    IRQ_SET_PRIO(SERCOM2_IRQn, 2, 1); // Set priority 2,1
    IRQ_ENABLE(SERCOM2_IRQn); // Enable vector
    SERCOM2_REGS->USART_INT.SERCOM_INTENSET = SERCOM_USART_INT_INTENSET_RXC_Msk; // Enable RXC flag

    SERCOM2_REGS->USART_INT.SERCOM_CTRLA |= SERCOM_USART_INT_CTRLA_ENABLE_Msk;

    while(SERCOM2_REGS->USART_INT.SERCOM_SYNCBUSY);
}
void sercom2_write_byte(const uint8_t ubData)
{
    while(!(SERCOM2_REGS->USART_INT.SERCOM_INTFLAG & SERCOM_USART_INT_INTFLAG_DRE_Msk));

    SERCOM2_REGS->USART_INT.SERCOM_DATA = ubData;
}
uint8_t sercom2_read_byte()
{
    if(!sercom2_available())
        return 0;

    uint8_t ubData;

    ATOMIC_BLOCK(ATOMIC_RESTORESTATE)
    {
        ubData = pubSERCOM2FIFO[usSERCOM2FIFOReadPos++];

        if(usSERCOM2FIFOReadPos >= SERCOM2_FIFO_SIZE)
            usSERCOM2FIFOReadPos = 0;
    }

    return ubData;
}
uint32_t sercom2_available()
{
    return (SERCOM2_FIFO_SIZE + usSERCOM2FIFOWritePos - usSERCOM2FIFOReadPos) % SERCOM2_FIFO_SIZE;
}
void sercom2_flush()
{
    usSERCOM2FIFOReadPos = usSERCOM2FIFOWritePos = 0;
}
#endif  // SERCOM2_MODE

#if defined(SERCOM3_MODE_SPI) && !defined(SERCOM3_MODE_I2C) && !defined(SERCOM3_MODE_UART)
void sercom3_init(uint32_t ulBaud, uint8_t ubMode, uint8_t ubBitMode, uint8_t ubDIPO, uint8_t ubDOPO)
{
    pm_apbc_clock_gate(PM_APBCMASK_SERCOM3_Msk, 1);

    while(SERCOM3_REGS->SPIM.SERCOM_SYNCBUSY);

    SERCOM3_REGS->SPIM.SERCOM_CTRLA |= SERCOM_SPIM_CTRLA_SWRST_Msk;

    while(SERCOM3_REGS->SPIM.SERCOM_CTRLA & SERCOM_SPIM_CTRLA_SWRST_Msk);

    SERCOM3_REGS->SPIM.SERCOM_CTRLA = (ubBitMode == SERCOM_SPI_MSB_FIRST ? 0 : SERCOM_SPIM_CTRLA_DORD_Msk) | (ubMode & 2 ? SERCOM_SPIM_CTRLA_CPOL_Msk : 0) | (ubMode & 1 ? SERCOM_SPIM_CTRLA_CPHA_Msk : 0) | SERCOM_SPIM_CTRLA_DIPO(ubDIPO) | SERCOM_SPIM_CTRLA_DOPO(ubDOPO) | SERCOM_SPIM_CTRLA_MODE_SPI_MASTER;

    while(SERCOM3_REGS->SPIM.SERCOM_SYNCBUSY);

    SERCOM3_REGS->SPIM.SERCOM_CTRLB = SERCOM_SPIM_CTRLB_CHSIZE_8_BIT;
    SERCOM3_REGS->SPIM.SERCOM_BAUD = GCLK_CLOCK_FREQ[GCLK_CLKCTRL_ID_SERCOM3_CORE_Val] / (ulBaud << 1) - 1;

    while(SERCOM3_REGS->SPIM.SERCOM_SYNCBUSY);

    SERCOM3_REGS->SPIM.SERCOM_CTRLA |= SERCOM_SPIM_CTRLA_ENABLE_Msk;

    while(SERCOM3_REGS->SPIM.SERCOM_SYNCBUSY);
}
uint8_t sercom3_spi_transfer_byte(const uint8_t ubData)
{
    while(!(SERCOM3_REGS->SPIM.SERCOM_INTFLAG & SERCOM_SPIM_INTFLAG_DRE_Msk));

    if(!(SERCOM3_REGS->SPIM.SERCOM_CTRLB & SERCOM_SPIM_CTRLB_RXEN_Msk))
    {
        SERCOM3_REGS->SPIM.SERCOM_CTRLB |= SERCOM_SPIM_CTRLB_RXEN_Msk;

        while(SERCOM3_REGS->SPIM.SERCOM_SYNCBUSY);
    }

    SERCOM3_REGS->SPIM.SERCOM_DATA = ubData;

    while(!(SERCOM3_REGS->SPIM.SERCOM_INTFLAG & SERCOM_SPIM_INTFLAG_RXC_Msk));

    return SERCOM3_REGS->SPIM.SERCOM_DATA;
}
void sercom3_spi_write_byte(const uint8_t ubData, const uint8_t ubWait)
{
    while(!(SERCOM3_REGS->SPIM.SERCOM_INTFLAG & SERCOM_SPIM_INTFLAG_DRE_Msk));

    if(SERCOM3_REGS->SPIM.SERCOM_CTRLB & SERCOM_SPIM_CTRLB_RXEN_Msk)
        SERCOM3_REGS->SPIM.SERCOM_CTRLB &= ~SERCOM_SPIM_CTRLB_RXEN_Msk;

    SERCOM3_REGS->SPIM.SERCOM_DATA = ubData;

    while(ubWait && !(SERCOM3_REGS->SPIM.SERCOM_INTFLAG & SERCOM_SPIM_INTFLAG_TXC_Msk));
}
#elif !defined(SERCOM3_MODE_SPI) && defined(SERCOM3_MODE_I2C) && !defined(SERCOM3_MODE_UART)
void sercom3_init(uint8_t ubMode)
{
    pm_apbc_clock_gate(PM_APBCMASK_SERCOM3_Msk, 1);

    while(SERCOM3_REGS->I2CM.SERCOM_SYNCBUSY);

    SERCOM3_REGS->I2CM.SERCOM_CTRLA |= SERCOM_I2CM_CTRLA_SWRST_Msk;

    while(SERCOM3_REGS->I2CM.SERCOM_CTRLA & SERCOM_I2CM_CTRLA_SWRST_Msk);

    SERCOM3_REGS->I2CM.SERCOM_CTRLA = SERCOM_I2CM_CTRLA_LOWTOUT_Msk | SERCOM_I2CM_CTRLA_INACTOUT_55US | SERCOM_I2CM_CTRLA_MODE_I2C_MASTER;

    float fI2CFreq = ubMode == SERCOM_I2C_FAST ? 400000.f : 100000.f;
    float fSrcFreq = (float)GCLK_CLOCK_FREQ[GCLK_CLKCTRL_ID_SERCOM3_CORE_Val];
    float fBaud = (fSrcFreq / fI2CFreq) - ((fSrcFreq * (100.0f / 1000000000.0f)) + 10.0f);
    uint32_t ulBaud = (uint32_t)fBaud;

    if(ulBaud > (0xFF * 2))
        ulBaud = 0xFF;
    else if(ulBaud <= 1)
        ulBaud = 1;
    else
        ulBaud /= 2;

    SERCOM3_REGS->I2CM.SERCOM_BAUD = ulBaud;

    while(SERCOM3_REGS->I2CM.SERCOM_SYNCBUSY);

    SERCOM3_REGS->I2CM.SERCOM_CTRLA |= SERCOM_I2CM_CTRLA_ENABLE_Msk;

    while(SERCOM3_REGS->I2CM.SERCOM_SYNCBUSY);

    SERCOM3_REGS->I2CM.SERCOM_STATUS = SERCOM_I2CM_STATUS_LOWTOUT_Msk | (0x01 << SERCOM_I2CM_STATUS_BUSSTATE_Pos) | SERCOM_I2CM_STATUS_ARBLOST_Msk | SERCOM_I2CM_STATUS_BUSERR_Msk;

    while(SERCOM3_REGS->I2CM.SERCOM_SYNCBUSY);
}
uint8_t sercom3_i2c_transmit(uint8_t ubAddress, uint8_t *pubSrc, uint32_t ulCount, uint8_t ubStop)
{
    if((ubAddress & 1) && !ulCount)
        return 0;

    if((SERCOM3_REGS->I2CM.SERCOM_STATUS & SERCOM_I2CM_STATUS_BUSSTATE_Msk) == SERCOM_I2CM_STATUS_BUSSTATE(3))
        return 0;

    SERCOM3_REGS->I2CM.SERCOM_ADDR = ubAddress;

    if(!ulCount)
    {
        while(!(SERCOM3_REGS->I2CM.SERCOM_INTFLAG & SERCOM_I2CM_INTFLAG_MB_Msk));

        if(SERCOM3_REGS->I2CM.SERCOM_STATUS & (SERCOM_I2CM_STATUS_ARBLOST_Msk | SERCOM_I2CM_STATUS_BUSERR_Msk))
            return 0;

        if(SERCOM3_REGS->I2CM.SERCOM_STATUS & SERCOM_I2CM_STATUS_RXNACK_Msk)
        {
            SERCOM3_REGS->I2CM.SERCOM_CTRLB = SERCOM_I2CM_CTRLB_CMD(3);

            while(SERCOM3_REGS->I2CM.SERCOM_SYNCBUSY);

            return 0;
        }
    }
    else
    {
        do
        {
            if(ubAddress & 1) // Read
            {
                while(!(SERCOM3_REGS->I2CM.SERCOM_INTFLAG & (SERCOM_I2CM_INTFLAG_MB_Msk | SERCOM_I2CM_INTFLAG_SB_Msk)));

                if(SERCOM3_REGS->I2CM.SERCOM_STATUS & (SERCOM_I2CM_STATUS_ARBLOST_Msk | SERCOM_I2CM_STATUS_BUSERR_Msk))
                    return 0;

                if(SERCOM3_REGS->I2CM.SERCOM_INTFLAG & SERCOM_I2CM_INTFLAG_SB_Msk)
                {
                    *pubSrc++ = SERCOM3_REGS->I2CM.SERCOM_DATA;

                    if(ulCount > 1)
                        SERCOM3_REGS->I2CM.SERCOM_CTRLB = SERCOM_I2CM_CTRLB_CMD(2);
                }
            }
            else // Write
            {
                while(!(SERCOM3_REGS->I2CM.SERCOM_INTFLAG & SERCOM_I2CM_INTFLAG_MB_Msk));

                if(SERCOM3_REGS->I2CM.SERCOM_STATUS & (SERCOM_I2CM_STATUS_ARBLOST_Msk | SERCOM_I2CM_STATUS_BUSERR_Msk))
                    return 0;

                if(SERCOM3_REGS->I2CM.SERCOM_STATUS & SERCOM_I2CM_STATUS_RXNACK_Msk)
                {
                    SERCOM3_REGS->I2CM.SERCOM_CTRLB = SERCOM_I2CM_CTRLB_CMD(3);

                    while(SERCOM3_REGS->I2CM.SERCOM_SYNCBUSY);

                    return 0;
                }

                SERCOM3_REGS->I2CM.SERCOM_DATA = *pubSrc++;

                while(!(SERCOM3_REGS->I2CM.SERCOM_INTFLAG & SERCOM_I2CM_INTFLAG_MB_Msk));
            }
        } while(--ulCount);
    }

    if(ubStop)
    {
        if(SERCOM3_REGS->I2CM.SERCOM_STATUS & (SERCOM_I2CM_STATUS_ARBLOST_Msk | SERCOM_I2CM_STATUS_BUSERR_Msk))
            return 0;

        SERCOM3_REGS->I2CM.SERCOM_CTRLB = SERCOM_I2CM_CTRLB_ACKACT_Msk | SERCOM_I2CM_CTRLB_CMD(3);

        while(SERCOM3_REGS->I2CM.SERCOM_SYNCBUSY);
    }

    return 1;
}
#elif !defined(SERCOM3_MODE_SPI) && !defined(SERCOM3_MODE_I2C) && defined(SERCOM3_MODE_UART)
static volatile uint8_t *pubSERCOM3FIFO = NULL;
static volatile uint16_t usSERCOM3FIFOWritePos, usSERCOM3FIFOReadPos;

void _sercom3_isr()
{
    while(SERCOM3_REGS->USART_INT.SERCOM_INTFLAG & SERCOM_USART_INT_INTFLAG_RXC_Msk)
    {
        pubSERCOM3FIFO[usSERCOM3FIFOWritePos++] = SERCOM3_REGS->USART_INT.SERCOM_DATA;

        if(usSERCOM3FIFOWritePos >= SERCOM3_FIFO_SIZE)
            usSERCOM3FIFOWritePos = 0;
    }
}

void sercom3_init(uint32_t ulBaud, uint32_t ulFrameSettings, uint8_t ubRXPO, uint8_t ubTXPO)
{
    pm_apbc_clock_gate(PM_APBCMASK_SERCOM3_Msk, 1);

    while(SERCOM3_REGS->USART_INT.SERCOM_SYNCBUSY);

    free((uint8_t *)pubSERCOM3FIFO);

    pubSERCOM3FIFO = (volatile uint8_t *)malloc(SERCOM3_FIFO_SIZE);

    if(!pubSERCOM3FIFO)
        return;

    memset((uint8_t *)pubSERCOM3FIFO, 0, SERCOM3_FIFO_SIZE);

    usSERCOM3FIFOWritePos = 0;
    usSERCOM3FIFOReadPos = 0;

    SERCOM3_REGS->USART_INT.SERCOM_CTRLA |= SERCOM_USART_INT_CTRLA_SWRST_Msk;

    while(SERCOM3_REGS->USART_INT.SERCOM_CTRLA & SERCOM_USART_INT_CTRLA_SWRST_Msk);

    SERCOM3_REGS->USART_INT.SERCOM_CTRLA = (ulFrameSettings & SERCOM_USART_INT_CTRLA_DORD_Msk) | SERCOM_USART_INT_CTRLA_CMODE_ASYNC | (ulFrameSettings & SERCOM_USART_INT_CTRLA_FORM_Msk) | SERCOM_USART_INT_CTRLA_RXPO(ubRXPO) | SERCOM_USART_INT_CTRLA_TXPO(ubTXPO) | SERCOM_USART_INT_CTRLA_MODE_USART_INT_CLK;
    SERCOM3_REGS->USART_INT.SERCOM_CTRLB = SERCOM_USART_INT_CTRLB_RXEN_Msk | SERCOM_USART_INT_CTRLB_TXEN_Msk | (ulFrameSettings & SERCOM_USART_INT_CTRLB_PMODE_Msk) | (ulFrameSettings & SERCOM_USART_INT_CTRLB_SBMODE_Msk) | (ulFrameSettings & SERCOM_USART_INT_CTRLB_CHSIZE_Msk);
    SERCOM3_REGS->USART_INT.SERCOM_BAUD = (uint16_t)(65536 * (1 - 16 * ((float)ulBaud / GCLK_CLOCK_FREQ[GCLK_CLKCTRL_ID_SERCOM3_CORE_Val])));

    while(SERCOM3_REGS->USART_INT.SERCOM_SYNCBUSY);

    IRQ_CLEAR(SERCOM3_IRQn); // Clear pending vector
    IRQ_SET_PRIO(SERCOM3_IRQn, 2, 1); // Set priority 2,1
    IRQ_ENABLE(SERCOM3_IRQn); // Enable vector
    SERCOM3_REGS->USART_INT.SERCOM_INTENSET = SERCOM_USART_INT_INTENSET_RXC_Msk; // Enable RXC flag

    SERCOM3_REGS->USART_INT.SERCOM_CTRLA |= SERCOM_USART_INT_CTRLA_ENABLE_Msk;

    while(SERCOM3_REGS->USART_INT.SERCOM_SYNCBUSY);
}
void sercom3_write_byte(const uint8_t ubData)
{
    while(!(SERCOM3_REGS->USART_INT.SERCOM_INTFLAG & SERCOM_USART_INT_INTFLAG_DRE_Msk));

    SERCOM3_REGS->USART_INT.SERCOM_DATA = ubData;
}
uint8_t sercom3_read_byte()
{
    if(!sercom3_available())
        return 0;

    uint8_t ubData;

    ATOMIC_BLOCK(ATOMIC_RESTORESTATE)
    {
        ubData = pubSERCOM3FIFO[usSERCOM3FIFOReadPos++];

        if(usSERCOM3FIFOReadPos >= SERCOM3_FIFO_SIZE)
            usSERCOM3FIFOReadPos = 0;
    }

    return ubData;
}
uint32_t sercom3_available()
{
    return (SERCOM3_FIFO_SIZE + usSERCOM3FIFOWritePos - usSERCOM3FIFOReadPos) % SERCOM3_FIFO_SIZE;
}
void sercom3_flush()
{
    usSERCOM3FIFOReadPos = usSERCOM3FIFOWritePos = 0;
}
#endif  // SERCOM3_MODE