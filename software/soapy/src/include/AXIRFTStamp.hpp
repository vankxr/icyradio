#pragma once

#include <cstdint>
#include <unistd.h>
#include <mutex>
#include <functional>
#include "AXIPeripheral.hpp"
#include "Utils.hpp"

#define AXI_RF_TSTAMP_REG_VERSION         0x00
#define AXI_RF_TSTAMP_REG_CTL_STAT        0x04
#define AXI_RF_TSTAMP_REG_OVR             0x08
#define AXI_RF_TSTAMP_REG_CNT_LOW         0x20
#define AXI_RF_TSTAMP_REG_CNT_HIGH        0x24
#define AXI_RF_TSTAMP_REG_CNT_TX_LOW      0x28
#define AXI_RF_TSTAMP_REG_CNT_TX_HIGH     0x2C
#define AXI_RF_TSTAMP_REG_CNT_RX_LOW      0x30
#define AXI_RF_TSTAMP_REG_CNT_RX_HIGH     0x34
#define AXI_RF_TSTAMP_REG_CNT_LATCH_LOW   0x38
#define AXI_RF_TSTAMP_REG_CNT_LATCH_HIGH  0x3C

#define AXI_RF_TSTAMP_REG_CTL_STAT_TX_EN                     BIT(0)
#define AXI_RF_TSTAMP_REG_CTL_STAT_TX_DIS                    BIT(1)
#define AXI_RF_TSTAMP_REG_CTL_STAT_RX_EN                     BIT(2)
#define AXI_RF_TSTAMP_REG_CTL_STAT_RX_DIS                    BIT(3)
#define AXI_RF_TSTAMP_REG_CTL_STAT_CNT_TX_EN                 BIT(4)
#define AXI_RF_TSTAMP_REG_CTL_STAT_CNT_TX_DIS                BIT(5)
#define AXI_RF_TSTAMP_REG_CTL_STAT_CNT_RX_EN                 BIT(6)
#define AXI_RF_TSTAMP_REG_CTL_STAT_CNT_RX_DIS                BIT(7)
#define AXI_RF_TSTAMP_REG_CTL_STAT_CNT_EN                    BIT(8)
#define AXI_RF_TSTAMP_REG_CTL_STAT_CNT_DIS                   BIT(9)
#define AXI_RF_TSTAMP_REG_CTL_STAT_CNT_LATCH_ARM_REQ         BIT(10)
#define AXI_RF_TSTAMP_REG_CTL_STAT_CNT_LATCH_ARM_UNREQ       BIT(11)
#define AXI_RF_TSTAMP_REG_CTL_STAT_TX_STAT                   BIT(16)
#define AXI_RF_TSTAMP_REG_CTL_STAT_RX_STAT                   BIT(17)
#define AXI_RF_TSTAMP_REG_CTL_STAT_CNT_TX_STAT               BIT(18)
#define AXI_RF_TSTAMP_REG_CTL_STAT_CNT_RX_STAT               BIT(19)
#define AXI_RF_TSTAMP_REG_CTL_STAT_CNT_STAT                  BIT(24)
#define AXI_RF_TSTAMP_REG_CTL_STAT_CNT_LATCH_ARM_REQ_STAT    BIT(25)
#define AXI_RF_TSTAMP_REG_CTL_STAT_CNT_LATCH_ARMED           BIT(26)
#define AXI_RF_TSTAMP_REG_CTL_STAT_CNT_LATCH_VALID           BIT(27)

#define AXI_RF_TSTAMP_REG_OVR_TX_DMA_RDY_OVR_EN        BIT(0)
#define AXI_RF_TSTAMP_REG_OVR_TX_DMA_RDY_OVR_VAL       BIT(1)
#define AXI_RF_TSTAMP_REG_OVR_RX_DMA_XFER_REQ_OVR_EN   BIT(2)
#define AXI_RF_TSTAMP_REG_OVR_RX_DMA_XFER_REQ_OVR_VAL  BIT(3)
#define AXI_RF_TSTAMP_REG_OVR_TX_DATA_RDY_OVR_EN       BIT(4)
#define AXI_RF_TSTAMP_REG_OVR_TX_DATA_RDY_OVR_VAL      BIT(5)
#define AXI_RF_TSTAMP_REG_OVR_RX_DATA_RDY_OVR_EN       BIT(6)
#define AXI_RF_TSTAMP_REG_OVR_RX_DATA_RDY_OVR_VAL      BIT(7)
#define AXI_RF_TSTAMP_REG_OVR_TX_DMA_RDY               BIT(8)
#define AXI_RF_TSTAMP_REG_OVR_RX_DMA_XFER_REQ          BIT(9)
#define AXI_RF_TSTAMP_REG_OVR_TX_DATA_RDY              BIT(10)
#define AXI_RF_TSTAMP_REG_OVR_RX_DATA_RDY              BIT(11)
#define AXI_RF_TSTAMP_REG_OVR_TX_DMA_RDY_OVR           BIT(12)
#define AXI_RF_TSTAMP_REG_OVR_RX_DMA_XFER_REQ_OVR      BIT(13)
#define AXI_RF_TSTAMP_REG_OVR_TX_DATA_RDY_OVR          BIT(14)
#define AXI_RF_TSTAMP_REG_OVR_RX_DATA_RDY_OVR          BIT(15)
#define AXI_RF_TSTAMP_REG_OVR_TX_DMA_RDY_STKY          BIT(16)
#define AXI_RF_TSTAMP_REG_OVR_RX_DMA_XFER_REQ_STKY     BIT(17)
#define AXI_RF_TSTAMP_REG_OVR_TX_DATA_RDY_STKY         BIT(18)
#define AXI_RF_TSTAMP_REG_OVR_RX_DATA_RDY_STKY         BIT(19)
#define AXI_RF_TSTAMP_REG_OVR_TX_FIFO_UNDERFLOW_STKY   BIT(20)
#define AXI_RF_TSTAMP_REG_OVR_RX_FIFO_OVERFLOW_STKY    BIT(21)

class AXIRFTStamp: public AXIPeripheral
{
public:
    enum CounterLatchStatus
    {
        LATCH_UNARMED = 0,
        LATCH_ARM_REQUESTED = 1,
        LATCH_ARMED = 2,
        LATCH_VALID = 3
    };

    AXIRFTStamp(void *base_address, std::function<bool()> access_allowed_fn = nullptr);

    void init(std::function<bool()> access_allowed_fn);

    uint32_t getIPVersion();

    void enableTX(bool enable);
    bool isTXEnabled();
    void enableRX(bool enable);
    bool isRXEnabled();

    void enableCounter(bool enable);
    bool isCounterEnabled();
    void enableTXCounter(bool enable);
    bool isTXCounterEnabled();
    void enableRXCounter(bool enable);
    bool isRXCounterEnabled();

    void armCounterLatch(bool req_arm);
    AXIRFTStamp::CounterLatchStatus getCounterLatchStatus();

    uint64_t getCounter();
    void setCounter(uint64_t val);
    uint64_t getTXCounter();
    void setTXCounter(uint64_t val);
    uint64_t getRXCounter();
    void setRXCounter(uint64_t val);
    uint64_t getCounterLatch();

protected:
    // Overload these functions to implement custom access control
    uint32_t readReg(uint32_t offset);
    uint64_t readReg64(uint32_t offset);
    void writeReg(uint32_t offset, uint32_t value);
    void writeReg64(uint32_t offset, uint64_t value);

private:
    std::mutex mutex;
    std::function<bool()> access_allowed_fn;
};