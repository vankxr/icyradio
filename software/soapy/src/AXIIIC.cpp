#include "AXIIIC.hpp"

AXIIIC::AXIIIC(void *base_address): AXIPeripheral(base_address)
{
    // Nothing to do here
}
AXIIIC::AXIIIC(void *base_address, uint64_t input_freq, AXIIIC::Speed speed): AXIPeripheral(base_address)
{
    this->init(input_freq, speed);
}

void AXIIIC::init(uint64_t input_freq, AXIIIC::Speed speed)
{
    this->writeReg(AXI_IIC_REG_SOFTR, AXI_IIC_REG_SOFTR_RESET_VALUE); // Reset

    uint32_t freq_mhz = (uint32_t)(input_freq / 1000000UL);

    if(speed == AXIIIC::Speed::FAST)
    {
        this->writeReg(AXI_IIC_REG_TSUSTA, (900 * freq_mhz) / 1000);
        this->writeReg(AXI_IIC_REG_TSUSTO, (900 * freq_mhz) / 1000);
        this->writeReg(AXI_IIC_REG_THDSTA, (900 * freq_mhz) / 1000);
        this->writeReg(AXI_IIC_REG_TSUDAT, (400 * freq_mhz) / 1000);
        this->writeReg(AXI_IIC_REG_TBUF, (1600 * freq_mhz) / 1000);
        this->writeReg(AXI_IIC_REG_THIGH, DIV_CEIL(input_freq, 2 * 400000) - 7);
        this->writeReg(AXI_IIC_REG_TLOW, DIV_CEIL(input_freq, 2 * 400000) - 7);
        this->writeReg(AXI_IIC_REG_THDDAT, 1);
    }
    else
    {
        this->writeReg(AXI_IIC_REG_TSUSTA, (5700 * freq_mhz) / 1000);
        this->writeReg(AXI_IIC_REG_TSUSTO, (5000 * freq_mhz) / 1000);
        this->writeReg(AXI_IIC_REG_THDSTA, (4300 * freq_mhz) / 1000);
        this->writeReg(AXI_IIC_REG_TSUDAT, (550 * freq_mhz) / 1000);
        this->writeReg(AXI_IIC_REG_TBUF, (5000 * freq_mhz) / 1000);
        this->writeReg(AXI_IIC_REG_THIGH, DIV_CEIL(input_freq, 2 * 100000) - 7);
        this->writeReg(AXI_IIC_REG_TLOW, DIV_CEIL(input_freq, 2 * 100000) - 7);
        this->writeReg(AXI_IIC_REG_THDDAT, 1);
    }

    this->writeReg(AXI_IIC_REG_RX_FIFO_PIRQ, 0x0000000F);

    this->writeReg(AXI_IIC_REG_CR, AXI_IIC_REG_CR_TXFIFO_RESET);
    this->writeReg(AXI_IIC_REG_CR, AXI_IIC_REG_CR_EN);

    this->writeReg(AXI_IIC_REG_ISR, this->readReg(AXI_IIC_REG_ISR)); // Clear IRQs
}

void AXIIIC::lock()
{
    this->mutex.lock();
}
void AXIIIC::unlock()
{
    this->mutex.unlock();
}

void AXIIIC::transmit(uint8_t address, uint8_t *buf, uint8_t count, AXIIIC::Stop stop)
{
    if(!count)
        throw std::invalid_argument("AXI IIC: Cannot transmit 0 bytes");

    std::lock_guard<std::mutex> lock(this->bus_mutex);

    if((this->readReg(AXI_IIC_REG_SR) & AXI_IIC_REG_SR_BB) && !(this->readReg(AXI_IIC_REG_ISR) & AXI_IIC_REG_IxR_INT2_TX_EMPTY)) // Bus busy and not owner
        throw std::runtime_error("AXI IIC: Bus busy");

    if(!(this->readReg(AXI_IIC_REG_SR) & AXI_IIC_REG_SR_TX_FIFO_EMPTY)) // Clear TX FIFO
    {
        uint32_t reg = this->readReg(AXI_IIC_REG_CR);

        this->writeReg(AXI_IIC_REG_CR, reg | AXI_IIC_REG_CR_TXFIFO_RESET);
        this->writeReg(AXI_IIC_REG_CR, reg & ~AXI_IIC_REG_CR_TXFIFO_RESET);
    }

    while(!(this->readReg(AXI_IIC_REG_SR) & AXI_IIC_REG_SR_RX_FIFO_EMPTY)) // Clear RX FIFO
        (void)this->readReg(AXI_IIC_REG_RX_FIFO);

    this->writeReg(AXI_IIC_REG_ISR, this->readReg(AXI_IIC_REG_ISR)); // Clear IRQs
    this->writeReg(AXI_IIC_REG_TX_FIFO, AXI_IIC_REG_TX_FIFO_START | address);

    uint32_t flags = this->readReg(AXI_IIC_REG_ISR);

    if(address & 1) // Read
    {
        this->writeReg(AXI_IIC_REG_TX_FIFO, (stop == AXIIIC::Stop::STOP ? AXI_IIC_REG_TX_FIFO_STOP : 0) | count);
    }
    else
    {
        while(flags & AXI_IIC_REG_IxR_INT4_BUS_NOT_BUSY)
        {
            this->writeReg(AXI_IIC_REG_ISR, flags & AXI_IIC_REG_IxR_INT4_BUS_NOT_BUSY);
            flags = this->readReg(AXI_IIC_REG_ISR);

            usleep(0);
        }
    }

    do
    {
        if(address & 1) // Read
        {
            while(this->readReg(AXI_IIC_REG_SR) & AXI_IIC_REG_SR_RX_FIFO_EMPTY)
            {
                flags = this->readReg(AXI_IIC_REG_ISR);

                if(flags & (AXI_IIC_REG_IxR_INT1_TERR_STC | AXI_IIC_REG_IxR_INT0_ARB_LOST))
                    throw std::runtime_error("AXI IIC: Early read termination OR Arbitration lost");

                usleep(0);
            }

            *buf++ = (uint8_t)this->readReg(AXI_IIC_REG_RX_FIFO);
        }
        else // Write
        {
            while(!(this->readReg(AXI_IIC_REG_SR) & AXI_IIC_REG_SR_TX_FIFO_EMPTY))
            {
                flags = this->readReg(AXI_IIC_REG_ISR);

                if(flags & (AXI_IIC_REG_IxR_INT1_TERR_STC | AXI_IIC_REG_IxR_INT0_ARB_LOST))
                    throw std::runtime_error("AXI IIC: Slave NACK OR Arbitration lost");

                usleep(0);
            }

            this->writeReg(AXI_IIC_REG_ISR, this->readReg(AXI_IIC_REG_ISR) & AXI_IIC_REG_IxR_INT2_TX_EMPTY);
            this->writeReg(AXI_IIC_REG_TX_FIFO, ((count == 1 && stop == AXIIIC::Stop::STOP) ? AXI_IIC_REG_TX_FIFO_STOP : 0) | *buf++);
        }
    } while(--count);

    if(address & 1) // Read
        this->writeReg(AXI_IIC_REG_ISR, this->readReg(AXI_IIC_REG_ISR) & AXI_IIC_REG_IxR_INT4_BUS_NOT_BUSY); // Clear NOT_BUSY IRQ, so that if we encounter it set again it is really not busy

    while(1)
    {
        flags = this->readReg(AXI_IIC_REG_ISR);

        if(flags & AXI_IIC_REG_IxR_INT0_ARB_LOST)
            throw std::runtime_error("AXI IIC: Arbitration lost");

        if(!(address & 1) && (flags & AXI_IIC_REG_IxR_INT1_TERR_STC))
            throw std::runtime_error("AXI IIC: Slave NACK");

        if(stop == AXIIIC::Stop::STOP && (flags & AXI_IIC_REG_IxR_INT4_BUS_NOT_BUSY))
            break; // Stop was requested and bus is free, we are done!

        if(stop == AXIIIC::Stop::RESTART && !(address & 1) && (flags & AXI_IIC_REG_IxR_INT2_TX_EMPTY))
            break; // No stop was requested and bus is throttled by the master, waiting for another transaction, we are done!

        if(stop == AXIIIC::Stop::RESTART && (address & 1))
            break; // No stop was requested and we already read all the bytes we wanted, no need to wait for the bus to be free, we are done!

        usleep(0);

        flags = this->readReg(AXI_IIC_REG_ISR);
    }
}

void AXIIIC::setGPOValue(uint8_t gpo, AXIIIC::GPOValue value)
{
    if(gpo > 31)
        throw std::invalid_argument("AXI IIC: GPO number must be between 0 and 31");

    std::lock_guard<std::mutex> lock(this->gpo_mutex);

    uint32_t reg_val = this->readReg(AXI_IIC_REG_GPO);

    if(value == AXIIIC::GPOValue::HIGH)
        reg_val |= BIT(gpo);
    else
        reg_val &= ~BIT(gpo);

    this->writeReg(AXI_IIC_REG_GPO, reg_val);
}
AXIIIC::GPOValue AXIIIC::getGPOValue(uint8_t gpo)
{
    if(gpo > 31)
        throw std::invalid_argument("AXI IIC: GPO number must be between 0 and 31");

    std::lock_guard<std::mutex> lock(this->gpo_mutex);

    return (this->readReg(AXI_IIC_REG_GPO) & BIT(gpo)) ? AXIIIC::GPOValue::HIGH : AXIIIC::GPOValue::LOW;
}