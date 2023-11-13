#pragma once

#include <cstdint>
#include <vector>
#include <mutex>
#include <unistd.h>
#include "AXIPeripheral.hpp"
#include "Utils.hpp"

#define AXI_IIC_NUM_INSTANCES 3

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

#define AXI_IIC_REG_IxR_INT0_ARB_LOST      BIT(0)
#define AXI_IIC_REG_IxR_INT1_TERR_STC      BIT(1)
#define AXI_IIC_REG_IxR_INT2_TX_EMPTY      BIT(2)
#define AXI_IIC_REG_IxR_INT3_RX_FULL       BIT(3)
#define AXI_IIC_REG_IxR_INT4_BUS_NOT_BUSY  BIT(4)
#define AXI_IIC_REG_IxR_INT5_ADR_AS_SLAVE  BIT(5)
#define AXI_IIC_REG_IxR_INT6_NADR_AS_SLAVE BIT(6)
#define AXI_IIC_REG_IxR_INT7_TX_HALF_EMPTY BIT(7)

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


class AXIIIC: public AXIPeripheral
{
public:
    enum Speed : uint32_t
    {
        NORMAL = 100000, // 100 kHz
        FAST = 400000, // 400 kHz
        FAST_PLUS = 1000000 // 1 MHz
    };
    enum Stop : bool
    {
        RESTART = false,
        STOP = true
    };
    // enum GPOValue : bool
    // {
    //     LOW = false,
    //     HIGH = true
    // };

private:
    void reinit();

public:
    AXIIIC(void *base_address);
    AXIIIC(void *base_address, uint64_t input_freq, AXIIIC::Speed speed = AXIIIC::Speed::NORMAL);

    void init(uint64_t input_freq, AXIIIC::Speed speed = AXIIIC::NORMAL);

    void lock();
    void unlock();

    std::vector<uint8_t> scan();
    bool scan(uint8_t address);

    void transmit(uint8_t address, uint8_t *buf, uint8_t count, AXIIIC::Stop stop = AXIIIC::Stop::STOP);

    inline void write(uint8_t address, uint8_t *src, uint32_t count, AXIIIC::Stop stop = AXIIIC::Stop::STOP)
    {
        this->transmit((address << 1) & ~0x01, src, count, stop);
    }
    inline void read(uint8_t address, uint8_t *dst, uint32_t count, AXIIIC::Stop stop = AXIIIC::Stop::STOP)
    {
        this->transmit((address << 1) | 0x01, dst, count, stop);
    }
    inline void write(uint8_t address, uint8_t data, AXIIIC::Stop stop = AXIIIC::Stop::STOP)
    {
        this->transmit((address << 1) & ~0x01, &data, 1, stop);
    }
    inline uint8_t read(uint8_t address, AXIIIC::Stop stop = AXIIIC::Stop::STOP)
    {
        uint8_t data;

        this->transmit((address << 1) | 0x01, &data, 1, stop);

        return data;
    }

    /* FIXME: Disable GPOs because they are not reliable enough
     * since the IP core has some problems that require it to be soft reset
     * thus restoring the default GPO value, making them useless
     */
    // void setGPOValue(uint8_t gpo, AXIIIC::GPOValue value);
    // inline void setGPOValue(uint8_t gpo, bool value)
    // {
    //     this->setGPOValue(gpo, value ? AXIIIC::GPOValue::HIGH : AXIIIC::GPOValue::LOW);
    // }
    // AXIIIC::GPOValue getGPOValue(uint8_t gpo);

private:
    std::mutex mutex;
    std::mutex bus_mutex;
    // std::mutex gpo_mutex;

    uint32_t timing_regs[8];
};

// Instance 0 - axi_iic_0 - Audio CODEC control
#define AXI_IIC_CODEC_INST      0

// Instance 1 - axi_iic_1 - System control (clock manager, power manager, etc...)
#define AXI_IIC_SYS_INST        1

// Instance 2 - axi_iic_2 - Expansion card control
#define AXI_IIC_EXP_INST        2