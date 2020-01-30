#include "i2c.h"

void i2c0_init(uint8_t ubMode, uint8_t ubSCLLocation, uint8_t ubSDALocation)
{
    if(ubSCLLocation > AFCHANLOC_MAX)
        return;

    if(ubSDALocation > AFCHANLOC_MAX)
        return;

    cmu_hfper0_clock_gate(CMU_HFPERCLKEN0_I2C0, 1);

    I2C0->CTRL = I2C_CTRL_CLHR_STANDARD | I2C_CTRL_TXBIL_EMPTY;
    I2C0->ROUTEPEN = I2C_ROUTEPEN_SCLPEN | I2C_ROUTEPEN_SDAPEN;
    I2C0->ROUTELOC0 = ((uint32_t)ubSCLLocation << _I2C_ROUTELOC0_SCLLOC_SHIFT) | ((uint32_t)ubSDALocation << _I2C_ROUTELOC0_SDALOC_SHIFT);

    if(ubMode == I2C_NORMAL)
        I2C0->CLKDIV = (((HFPERC_CLOCK_FREQ / 100000) - 8) / 8) - 1;
    else if(ubMode == I2C_FAST)
        I2C0->CLKDIV = (((HFPERC_CLOCK_FREQ / 400000) - 8) / 8) - 1;

    I2C0->CTRL |= I2C_CTRL_EN;
    I2C0->CMD = I2C_CMD_ABORT;

    while(I2C0->STATE & I2C_STATE_BUSY);
}
uint8_t i2c0_transmit(uint8_t ubAddress, uint8_t *pubSrc, uint32_t ulCount, uint8_t ubStop)
{
    I2C0->IFC = _I2C_IFC_MASK;

    I2C0->CMD = I2C_CMD_START;

    while(!(I2C0->IF & (I2C_IF_START | I2C_IF_RSTART | I2C_IF_ARBLOST | I2C_IF_BUSERR)));

    if(I2C0->IF & (I2C_IF_ARBLOST | I2C_IF_BUSERR))
    {
        I2C0->CMD = I2C_CMD_ABORT;

        return 0;
    }

    I2C0->TXDATA = ubAddress;

    while(!(I2C0->IF & (I2C_IF_ACK | I2C_IF_NACK | I2C_IF_ARBLOST | I2C_IF_BUSERR)));

    if(I2C0->IF & (I2C_IF_ARBLOST | I2C_IF_BUSERR))
    {
        I2C0->CMD = I2C_CMD_ABORT;

        return 0;
    }
    else if(I2C0->IF & I2C_IF_NACK)
    {
        I2C0->CMD = I2C_CMD_STOP;

        while(I2C0->IFC & (I2C_IFC_MSTOP | I2C_IFC_ARBLOST | I2C_IF_BUSERR));

        if(I2C0->IF & (I2C_IF_ARBLOST | I2C_IF_BUSERR))
            I2C0->CMD = I2C_CMD_ABORT;

        return 0;
    }

    if(ulCount)
        do
        {
            if(ubAddress & 1) // Read
            {
                while(!(I2C0->IF & (I2C_IF_RXDATAV | I2C_IF_ARBLOST | I2C_IF_BUSERR)));

                if(I2C0->IF & (I2C_IF_ARBLOST | I2C_IF_BUSERR))
                {
                    I2C0->CMD = I2C_CMD_ABORT;

                    return 0;
                }

                *pubSrc++ = I2C0->RXDATA;

                if(ulCount > 1)
                    I2C0->CMD = I2C_CMD_ACK;
                else
                    I2C0->CMD = I2C_CMD_NACK;
            }
            else // Write
            {
                I2C0->IFC = I2C_IFC_ACK;

                I2C0->TXDATA = *pubSrc++;

                while(!(I2C0->IF & (I2C_IF_ACK | I2C_IF_NACK | I2C_IF_ARBLOST | I2C_IF_BUSERR)));

                if(I2C0->IF & (I2C_IF_ARBLOST | I2C_IF_BUSERR))
                {
                    I2C0->CMD = I2C_CMD_ABORT;

                    return 0;
                }
                else if(I2C0->IF & I2C_IF_NACK)
                {
                    I2C0->CMD = I2C_CMD_STOP;

                    while(I2C0->IFC & (I2C_IFC_MSTOP | I2C_IFC_ARBLOST | I2C_IF_BUSERR));

                    if(I2C0->IF & (I2C_IF_ARBLOST | I2C_IF_BUSERR))
                        I2C0->CMD = I2C_CMD_ABORT;

                    return 0;
                }
            }
        } while(--ulCount);

    if(ubStop)
    {
        I2C0->CMD = I2C_CMD_STOP;

        while(I2C0->IFC & (I2C_IFC_MSTOP | I2C_IFC_ARBLOST | I2C_IF_BUSERR));

        if(I2C0->IF & (I2C_IF_ARBLOST | I2C_IF_BUSERR))
        {
            I2C0->CMD = I2C_CMD_ABORT;

            return 0;
        }
    }

    return 1;
}


void i2c1_init(uint8_t ubMode, uint8_t ubSCLLocation, uint8_t ubSDALocation)
{
    if(ubSCLLocation > AFCHANLOC_MAX)
        return;

    if(ubSDALocation > AFCHANLOC_MAX)
        return;

    cmu_hfper0_clock_gate(CMU_HFPERCLKEN0_I2C1, 1);

    I2C1->CTRL = I2C_CTRL_CLHR_STANDARD | I2C_CTRL_TXBIL_EMPTY;
    I2C1->ROUTEPEN = I2C_ROUTEPEN_SCLPEN | I2C_ROUTEPEN_SDAPEN;
    I2C1->ROUTELOC0 = ((uint32_t)ubSCLLocation << _I2C_ROUTELOC0_SCLLOC_SHIFT) | ((uint32_t)ubSDALocation << _I2C_ROUTELOC0_SDALOC_SHIFT);

    if(ubMode == I2C_NORMAL)
        I2C1->CLKDIV = (((HFPERC_CLOCK_FREQ / 100000) - 8) / 8) - 1;
    else if(ubMode == I2C_FAST)
        I2C1->CLKDIV = (((HFPERC_CLOCK_FREQ / 400000) - 8) / 8) - 1;

    I2C1->CTRL |= I2C_CTRL_EN;
    I2C1->CMD = I2C_CMD_ABORT;

    while(I2C1->STATE & I2C_STATE_BUSY);
}
uint8_t i2c1_transmit(uint8_t ubAddress, uint8_t *pubSrc, uint32_t ulCount, uint8_t ubStop)
{
    I2C1->IFC = _I2C_IFC_MASK;

    I2C1->CMD = I2C_CMD_START;

    while(!(I2C1->IF & (I2C_IF_START | I2C_IF_RSTART | I2C_IF_ARBLOST | I2C_IF_BUSERR)));

    if(I2C1->IF & (I2C_IF_ARBLOST | I2C_IF_BUSERR))
    {
        I2C1->CMD = I2C_CMD_ABORT;

        return 0;
    }

    I2C1->TXDATA = ubAddress;

    while(!(I2C1->IF & (I2C_IF_ACK | I2C_IF_NACK | I2C_IF_ARBLOST | I2C_IF_BUSERR)));

    if(I2C1->IF & (I2C_IF_ARBLOST | I2C_IF_BUSERR))
    {
        I2C1->CMD = I2C_CMD_ABORT;

        return 0;
    }
    else if(I2C1->IF & I2C_IF_NACK)
    {
        I2C1->CMD = I2C_CMD_STOP;

        while(I2C1->IFC & (I2C_IFC_MSTOP | I2C_IFC_ARBLOST | I2C_IF_BUSERR));

        if(I2C1->IF & (I2C_IF_ARBLOST | I2C_IF_BUSERR))
            I2C1->CMD = I2C_CMD_ABORT;

        return 0;
    }

    if(ulCount)
        do
        {
            if(ubAddress & 1) // Read
            {
                while(!(I2C1->IF & (I2C_IF_RXDATAV | I2C_IF_ARBLOST | I2C_IF_BUSERR)));

                if(I2C1->IF & (I2C_IF_ARBLOST | I2C_IF_BUSERR))
                {
                    I2C1->CMD = I2C_CMD_ABORT;

                    return 0;
                }

                *pubSrc++ = I2C1->RXDATA;

                if(ulCount > 1)
                    I2C1->CMD = I2C_CMD_ACK;
                else
                    I2C1->CMD = I2C_CMD_NACK;
            }
            else // Write
            {
                I2C1->IFC = I2C_IFC_ACK;

                I2C1->TXDATA = *pubSrc++;

                while(!(I2C1->IF & (I2C_IF_ACK | I2C_IF_NACK | I2C_IF_ARBLOST | I2C_IF_BUSERR)));

                if(I2C1->IF & (I2C_IF_ARBLOST | I2C_IF_BUSERR))
                {
                    I2C1->CMD = I2C_CMD_ABORT;

                    return 0;
                }
                else if(I2C1->IF & I2C_IF_NACK)
                {
                    I2C1->CMD = I2C_CMD_STOP;

                    while(I2C1->IFC & (I2C_IFC_MSTOP | I2C_IFC_ARBLOST | I2C_IF_BUSERR));

                    if(I2C1->IF & (I2C_IF_ARBLOST | I2C_IF_BUSERR))
                        I2C1->CMD = I2C_CMD_ABORT;

                    return 0;
                }
            }
        } while(--ulCount);

    if(ubStop)
    {
        I2C1->CMD = I2C_CMD_STOP;

        while(I2C1->IFC & (I2C_IFC_MSTOP | I2C_IFC_ARBLOST | I2C_IF_BUSERR));

        if(I2C1->IF & (I2C_IF_ARBLOST | I2C_IF_BUSERR))
        {
            I2C1->CMD = I2C_CMD_ABORT;

            return 0;
        }
    }

    return 1;
}


void i2c2_init(uint8_t ubMode, uint8_t ubSCLLocation, uint8_t ubSDALocation)
{
    if(ubSCLLocation > AFCHANLOC_MAX)
        return;

    if(ubSDALocation > AFCHANLOC_MAX)
        return;

    cmu_hfper0_clock_gate(CMU_HFPERCLKEN0_I2C2, 1);

    I2C2->CTRL = I2C_CTRL_CLHR_STANDARD | I2C_CTRL_TXBIL_EMPTY;
    I2C2->ROUTEPEN = I2C_ROUTEPEN_SCLPEN | I2C_ROUTEPEN_SDAPEN;
    I2C2->ROUTELOC0 = ((uint32_t)ubSCLLocation << _I2C_ROUTELOC0_SCLLOC_SHIFT) | ((uint32_t)ubSDALocation << _I2C_ROUTELOC0_SDALOC_SHIFT);

    if(ubMode == I2C_NORMAL)
        I2C2->CLKDIV = (((HFPERC_CLOCK_FREQ / 100000) - 8) / 8) - 1;
    else if(ubMode == I2C_FAST)
        I2C2->CLKDIV = (((HFPERC_CLOCK_FREQ / 400000) - 8) / 8) - 1;

    I2C2->CTRL |= I2C_CTRL_EN;
    I2C2->CMD = I2C_CMD_ABORT;

    while(I2C2->STATE & I2C_STATE_BUSY);
}
uint8_t i2c2_transmit(uint8_t ubAddress, uint8_t *pubSrc, uint32_t ulCount, uint8_t ubStop)
{
    I2C2->IFC = _I2C_IFC_MASK;

    I2C2->CMD = I2C_CMD_START;

    while(!(I2C2->IF & (I2C_IF_START | I2C_IF_RSTART | I2C_IF_ARBLOST | I2C_IF_BUSERR)));

    if(I2C2->IF & (I2C_IF_ARBLOST | I2C_IF_BUSERR))
    {
        I2C2->CMD = I2C_CMD_ABORT;

        return 0;
    }

    I2C2->TXDATA = ubAddress;

    while(!(I2C2->IF & (I2C_IF_ACK | I2C_IF_NACK | I2C_IF_ARBLOST | I2C_IF_BUSERR)));

    if(I2C2->IF & (I2C_IF_ARBLOST | I2C_IF_BUSERR))
    {
        I2C2->CMD = I2C_CMD_ABORT;

        return 0;
    }
    else if(I2C2->IF & I2C_IF_NACK)
    {
        I2C2->CMD = I2C_CMD_STOP;

        while(I2C2->IFC & (I2C_IFC_MSTOP | I2C_IFC_ARBLOST | I2C_IF_BUSERR));

        if(I2C2->IF & (I2C_IF_ARBLOST | I2C_IF_BUSERR))
            I2C2->CMD = I2C_CMD_ABORT;

        return 0;
    }

    if(ulCount)
        do
        {
            if(ubAddress & 1) // Read
            {
                while(!(I2C2->IF & (I2C_IF_RXDATAV | I2C_IF_ARBLOST | I2C_IF_BUSERR)));

                if(I2C2->IF & (I2C_IF_ARBLOST | I2C_IF_BUSERR))
                {
                    I2C2->CMD = I2C_CMD_ABORT;

                    return 0;
                }

                *pubSrc++ = I2C2->RXDATA;

                if(ulCount > 1)
                    I2C2->CMD = I2C_CMD_ACK;
                else
                    I2C2->CMD = I2C_CMD_NACK;
            }
            else // Write
            {
                I2C2->IFC = I2C_IFC_ACK;

                I2C2->TXDATA = *pubSrc++;

                while(!(I2C2->IF & (I2C_IF_ACK | I2C_IF_NACK | I2C_IF_ARBLOST | I2C_IF_BUSERR)));

                if(I2C2->IF & (I2C_IF_ARBLOST | I2C_IF_BUSERR))
                {
                    I2C2->CMD = I2C_CMD_ABORT;

                    return 0;
                }
                else if(I2C2->IF & I2C_IF_NACK)
                {
                    I2C2->CMD = I2C_CMD_STOP;

                    while(I2C2->IFC & (I2C_IFC_MSTOP | I2C_IFC_ARBLOST | I2C_IF_BUSERR));

                    if(I2C2->IF & (I2C_IF_ARBLOST | I2C_IF_BUSERR))
                        I2C2->CMD = I2C_CMD_ABORT;

                    return 0;
                }
            }
        } while(--ulCount);

    if(ubStop)
    {
        I2C2->CMD = I2C_CMD_STOP;

        while(I2C2->IFC & (I2C_IFC_MSTOP | I2C_IFC_ARBLOST | I2C_IF_BUSERR));

        if(I2C2->IF & (I2C_IF_ARBLOST | I2C_IF_BUSERR))
        {
            I2C2->CMD = I2C_CMD_ABORT;

            return 0;
        }
    }

    return 1;
}