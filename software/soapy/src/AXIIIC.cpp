#include "AXIIIC.hpp"

AXIIIC::AXIIIC(void *base_address): AXIPeripheral(base_address)
{
    // Cache default timing registers
    this->timing_regs[0] = this->readReg(AXI_IIC_REG_TSUSTA);
    this->timing_regs[1] = this->readReg(AXI_IIC_REG_TSUSTO);
    this->timing_regs[2] = this->readReg(AXI_IIC_REG_THDSTA);
    this->timing_regs[3] = this->readReg(AXI_IIC_REG_TSUDAT);
    this->timing_regs[4] = this->readReg(AXI_IIC_REG_TBUF);
    this->timing_regs[5] = this->readReg(AXI_IIC_REG_THIGH);
    this->timing_regs[6] = this->readReg(AXI_IIC_REG_TLOW);
    this->timing_regs[7] = this->readReg(AXI_IIC_REG_THDDAT);
}
AXIIIC::AXIIIC(void *base_address, uint64_t input_freq, AXIIIC::Speed speed): AXIIIC(base_address)
{
    this->init(input_freq, speed);
}

void AXIIIC::init(uint64_t input_freq, AXIIIC::Speed speed)
{
    uint32_t freq_mhz = input_freq / 1000000UL;

    switch(speed)
    {
        case AXIIIC::Speed::NORMAL:
        {
            this->timing_regs[0] = (5700 * freq_mhz) / 1000;
            this->timing_regs[1] = (5000 * freq_mhz) / 1000;
            this->timing_regs[2] = (4300 * freq_mhz) / 1000;
            this->timing_regs[3] = (550 * freq_mhz) / 1000;
            this->timing_regs[4] = (5000 * freq_mhz) / 1000;
        }
        break;
        case AXIIIC::Speed::FAST:
        {
            this->timing_regs[0] = (900 * freq_mhz) / 1000;
            this->timing_regs[1] = (900 * freq_mhz) / 1000;
            this->timing_regs[2] = (900 * freq_mhz) / 1000;
            this->timing_regs[3] = (400 * freq_mhz) / 1000;
            this->timing_regs[4] = (1600 * freq_mhz) / 1000;
        }
        break;
        case AXIIIC::Speed::FAST_PLUS:
        {
            this->timing_regs[0] = (380 * freq_mhz) / 1000;
            this->timing_regs[1] = (380 * freq_mhz) / 1000;
            this->timing_regs[2] = (380 * freq_mhz) / 1000;
            this->timing_regs[3] = (170 * freq_mhz) / 1000;
            this->timing_regs[4] = (620 * freq_mhz) / 1000;
        }
        break;
        default:
            throw std::invalid_argument("AXI IIC: Invalid speed");
    }

    this->timing_regs[5] = DIV_CEIL(input_freq, 2 * speed) - 7;
    this->timing_regs[6] = DIV_CEIL(input_freq, 2 * speed) - 7;
    this->timing_regs[7] = 1;

    if(!this->timing_regs[5])
        throw std::runtime_error("AXI IIC: Speed not supported");

    this->reinit();
}
void AXIIIC::reinit()
{
    this->writeReg(AXI_IIC_REG_SOFTR, AXI_IIC_REG_SOFTR_RESET_VALUE); // Reset

    this->writeReg(AXI_IIC_REG_TSUSTA, this->timing_regs[0]);
    this->writeReg(AXI_IIC_REG_TSUSTO, this->timing_regs[1]);
    this->writeReg(AXI_IIC_REG_THDSTA, this->timing_regs[2]);
    this->writeReg(AXI_IIC_REG_TSUDAT, this->timing_regs[3]);
    this->writeReg(AXI_IIC_REG_TBUF, this->timing_regs[4]);
    this->writeReg(AXI_IIC_REG_THIGH, this->timing_regs[5]);
    this->writeReg(AXI_IIC_REG_TLOW, this->timing_regs[6]);
    this->writeReg(AXI_IIC_REG_THDDAT, this->timing_regs[7]);

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

std::vector<uint8_t> AXIIIC::scan()
{
    std::vector<uint8_t> ret;

    for(uint8_t a = 0x08; a < 0x78; a++)
    {
        if(!this->scan(a))
            continue;

        ret.push_back(a);
    }

    return ret;
}
bool AXIIIC::scan(uint8_t address)
{
    try
    {
        this->write(address, nullptr, 0, AXIIIC::Stop::STOP);
    }
    catch(...)
    {
        return false;
    }

    return true;
}

void AXIIIC::transmit(uint8_t address, uint8_t *buf, uint8_t count, AXIIIC::Stop stop)
{
    if((address & 1) && !count)
        throw std::invalid_argument("AXI IIC: Cannot receive 0 bytes");

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
    this->writeReg(AXI_IIC_REG_TX_FIFO, ((stop == AXIIIC::Stop::STOP && !count) ? AXI_IIC_REG_TX_FIFO_STOP : 0) | AXI_IIC_REG_TX_FIFO_START | address);

    uint32_t flags;

    if(address & 1) // Read
    {
        this->writeReg(AXI_IIC_REG_TX_FIFO, (stop == AXIIIC::Stop::STOP ? AXI_IIC_REG_TX_FIFO_STOP : 0) | count);
    }
    else
    {
        uint32_t timeout = 50;

        flags = this->readReg(AXI_IIC_REG_ISR);

        while(--timeout && (flags & AXI_IIC_REG_IxR_INT4_BUS_NOT_BUSY))
        {
            this->writeReg(AXI_IIC_REG_ISR, flags & AXI_IIC_REG_IxR_INT4_BUS_NOT_BUSY);
            flags = this->readReg(AXI_IIC_REG_ISR);

            usleep(1);
        }

        if(!timeout)
        {
            this->reinit();

            throw std::runtime_error("AXI IIC: Timeout while waiting for start condition");
        }
    }

    if(count)
    {
        do
        {
            if(address & 1) // Read
            {
                uint32_t timeout = 500;

                while(--timeout)
                {
                    flags = this->readReg(AXI_IIC_REG_ISR);

                    if(!(this->readReg(AXI_IIC_REG_SR) & AXI_IIC_REG_SR_RX_FIFO_EMPTY))
                        break;

                    if(flags & (AXI_IIC_REG_IxR_INT1_TERR_STC | AXI_IIC_REG_IxR_INT0_ARB_LOST))
                        this->reinit();

                    if(flags & AXI_IIC_REG_IxR_INT1_TERR_STC)
                        throw std::runtime_error("AXI IIC: Early read termination while reading (" + std::to_string(count) + " bytes left)");

                    if(flags & AXI_IIC_REG_IxR_INT0_ARB_LOST)
                        throw std::runtime_error("AXI IIC: Arbitration lost while reading (" + std::to_string(count) + " bytes left)");

                    usleep(1);
                }

                if(!timeout)
                {
                    this->reinit();

                    throw std::runtime_error("AXI IIC: Timeout while reading (" + std::to_string(count) + " bytes left)");
                }

                *buf++ = (uint8_t)this->readReg(AXI_IIC_REG_RX_FIFO);
            }
            else // Write
            {
                uint32_t timeout = 500;

                while(--timeout)
                {
                    flags = this->readReg(AXI_IIC_REG_ISR);

                    if(this->readReg(AXI_IIC_REG_SR) & AXI_IIC_REG_SR_TX_FIFO_EMPTY)
                        break;

                    if(flags & (AXI_IIC_REG_IxR_INT1_TERR_STC | AXI_IIC_REG_IxR_INT0_ARB_LOST))
                        this->reinit();

                    if(flags & AXI_IIC_REG_IxR_INT1_TERR_STC)
                        throw std::runtime_error("AXI IIC: Slave NACK while writing (" + std::to_string(count) + " bytes left)");

                    if(flags & AXI_IIC_REG_IxR_INT0_ARB_LOST)
                        throw std::runtime_error("AXI IIC: Arbitration lost while writing (" + std::to_string(count) + " bytes left)");

                    usleep(1);
                }

                if(!timeout)
                {
                    this->reinit();

                    throw std::runtime_error("AXI IIC: Timeout while writing (" + std::to_string(count) + " bytes left)");
                }

                this->writeReg(AXI_IIC_REG_ISR, this->readReg(AXI_IIC_REG_ISR) & AXI_IIC_REG_IxR_INT2_TX_EMPTY);
                this->writeReg(AXI_IIC_REG_TX_FIFO, ((count == 1 && stop == AXIIIC::Stop::STOP) ? AXI_IIC_REG_TX_FIFO_STOP : 0) | *buf++);
            }
        } while(--count);

        if(address & 1) // Read
            this->writeReg(AXI_IIC_REG_ISR, this->readReg(AXI_IIC_REG_ISR) & AXI_IIC_REG_IxR_INT4_BUS_NOT_BUSY); // Clear NOT_BUSY IRQ, so that if we encounter it set again it is really not busy
    }

    uint32_t timeout = 500;

    while(--timeout)
    {
        flags = this->readReg(AXI_IIC_REG_ISR);

        if(flags & AXI_IIC_REG_IxR_INT0_ARB_LOST)
        {
            this->reinit();

            throw std::runtime_error("AXI IIC: Arbitration lost");
        }

        if(!(address & 1) && (flags & AXI_IIC_REG_IxR_INT1_TERR_STC))
        {
            this->reinit();

            throw std::runtime_error("AXI IIC: Slave NACK");
        }

        if(stop == AXIIIC::Stop::STOP && (flags & AXI_IIC_REG_IxR_INT4_BUS_NOT_BUSY))
            break; // Stop was requested and bus is free, we are done!

        if(stop == AXIIIC::Stop::RESTART && !(address & 1) && (flags & AXI_IIC_REG_IxR_INT2_TX_EMPTY))
            break; // No stop was requested and bus is throttled by the master, waiting for another transaction, we are done!

        if(stop == AXIIIC::Stop::RESTART && (address & 1))
            break; // No stop was requested and we already read all the bytes we wanted, no need to wait for the bus to be free, we are done!

        usleep(1);

        flags = this->readReg(AXI_IIC_REG_ISR);
    }

    if(!timeout)
    {
        this->reinit();

        throw std::runtime_error("AXI IIC: Timeout");
    }
}

// void AXIIIC::setGPOValue(uint8_t gpo, AXIIIC::GPOValue value)
// {
//     if(gpo > 31)
//         throw std::invalid_argument("AXI IIC: GPO number must be between 0 and 31");

//     std::lock_guard<std::mutex> lock(this->gpo_mutex);

//     uint32_t reg_val = this->readReg(AXI_IIC_REG_GPO);

//     if(value == AXIIIC::GPOValue::HIGH)
//         reg_val |= BIT(gpo);
//     else
//         reg_val &= ~BIT(gpo);

//     this->writeReg(AXI_IIC_REG_GPO, reg_val);
// }
// AXIIIC::GPOValue AXIIIC::getGPOValue(uint8_t gpo)
// {
//     if(gpo > 31)
//         throw std::invalid_argument("AXI IIC: GPO number must be between 0 and 31");

//     std::lock_guard<std::mutex> lock(this->gpo_mutex);

//     return (this->readReg(AXI_IIC_REG_GPO) & BIT(gpo)) ? AXIIIC::GPOValue::HIGH : AXIIIC::GPOValue::LOW;
// }