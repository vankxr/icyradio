#pragma once

#include <cstdint>
#include <mutex>
#include <unistd.h>
#include "AXIPeripheral.hpp"
#include "Utils.hpp"

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

#define AXI_IIC_NORMAL 0
#define AXI_IIC_FAST 1

#define AXI_IIC_RESTART 0
#define AXI_IIC_STOP 1

class AXIIIC: public AXIPeripheral
{
public:
    enum Speed
    {
        NORMAL = 0, // 100 kHz
        FAST = 1 // 400 kHz
    };
    enum Stop
    {
        RESTART = 0,
        STOP = 1
    };
    enum GPOValue
    {
        LOW = 0,
        HIGH = 1
    };

    AXIIIC(void *base_address);
    AXIIIC(void *base_address, uint64_t input_freq, AXIIIC::Speed speed = AXIIIC::NORMAL);

    void init(uint64_t input_freq, AXIIIC::Speed speed = AXIIIC::NORMAL);

    void lock();
    void unlock();

    void transmit(uint8_t address, uint8_t *buf, uint8_t count, AXIIIC::Stop stop = AXIIIC::STOP);

    inline void write(uint8_t address, uint8_t *src, uint32_t count, AXIIIC::Stop stop = AXIIIC::STOP)
    {
        this->transmit((address << 1) & ~0x01, src, count, stop);
    }
    inline void read(uint8_t address, uint8_t *dst, uint32_t count, AXIIIC::Stop stop = AXIIIC::STOP)
    {
        this->transmit((address << 1) | 0x01, dst, count, stop);
    }
    inline void writeByte(uint8_t address, uint8_t data, AXIIIC::Stop stop = AXIIIC::STOP)
    {
        this->transmit((address << 1) & ~0x01, &data, 1, stop);
    }
    inline uint8_t readByte(uint8_t address, AXIIIC::Stop stop = AXIIIC::STOP)
    {
        uint8_t data;

        this->transmit((address << 1) | 0x01, &data, 1, stop);

        return data;
    }

    void setGPOValue(uint8_t gpo, AXIIIC::GPOValue value);
    AXIIIC::GPOValue getGPOValue(uint8_t gpo);

private:
    std::mutex mutex;
    std::mutex bus_mutex;
    std::mutex gpo_mutex;
};

// Instance 0 - axi_iic_0 - Audio CODEC control
#define AXI_IIC_CODEC_INST      0

#define AXI_IIC_CODEC_RSTn_BIT      0 // BIT  0: CODEC_RSTn

// Instance 1 - axi_iic_1 - System control (clock manager, power manager, etc...)
#define AXI_IIC_SYS_INST        1

#define AXI_IIC_GPO_PM_I2C_EN_BIT      0 // BIT  0: PM_I2C_EN
#define AXI_IIC_GPO_CLK_MNGR_OEn_BIT   1 // BIT  1: CLK_MNGR_OEn