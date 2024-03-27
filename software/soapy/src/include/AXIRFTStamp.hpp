#pragma once

#include <cstdint>
#include <unistd.h>
#include <mutex>
#include "AXIPeripheral.hpp"
#include "AXIIRQCtrl.hpp"
#include "Utils.hpp"

#define AXI_RF_TSTAMP_REG_VERSION                 0x00
#define AXI_RF_TSTAMP_REG_CTL_STAT                0x04
#define AXI_RF_TSTAMP_REG_IRQ_ENABLE              0x08
#define AXI_RF_TSTAMP_REG_IRQ_PENDING             0x0C
#define AXI_RF_TSTAMP_REG_CNT_LOW                 0x10
#define AXI_RF_TSTAMP_REG_CNT_HIGH                0x14
#define AXI_RF_TSTAMP_REG_CH_CTL_STAT_ALL         0x20
#define AXI_RF_TSTAMP_REG_CH_OVR_ALL              0x24
#define AXI_RF_TSTAMP_REG_CH_CTL_STAT(c)          (0x40 + (c) * 0x20)
#define AXI_RF_TSTAMP_REG_CH_OVR(c)               (0x44 + (c) * 0x20)
#define AXI_RF_TSTAMP_REG_CH_CNT_TX_LOW(c)        (0x48 + (c) * 0x20)
#define AXI_RF_TSTAMP_REG_CH_CNT_TX_HIGH(c)       (0x4C + (c) * 0x20)
#define AXI_RF_TSTAMP_REG_CH_CNT_RX_LOW(c)        (0x50 + (c) * 0x20)
#define AXI_RF_TSTAMP_REG_CH_CNT_RX_HIGH(c)       (0x54 + (c) * 0x20)
#define AXI_RF_TSTAMP_REG_CH_CNT_LATCH_LOW(c)     (0x58 + (c) * 0x20)
#define AXI_RF_TSTAMP_REG_CH_CNT_LATCH_HIGH(c)    (0x5C + (c) * 0x20)


#define AXI_RF_TSTAMP_REG_CTL_STAT_CNT_EN                   BIT(0)
#define AXI_RF_TSTAMP_REG_CTL_STAT_CNT_DIS                  BIT(1)
#define AXI_RF_TSTAMP_REG_CTL_STAT_CLK_SYNC_BYPASS_EN       BIT(8)
#define AXI_RF_TSTAMP_REG_CTL_STAT_CLK_SYNC_BYPASS_DIS      BIT(9)
#define AXI_RF_TSTAMP_REG_CTL_STAT_CLK_RESYNC_REQ           BIT(10)
#define AXI_RF_TSTAMP_REG_CTL_STAT_CNT_STAT                 BIT(16)
#define AXI_RF_TSTAMP_REG_CTL_STAT_CNT_WR_REQ_STAT          BIT(17)
#define AXI_RF_TSTAMP_REG_CTL_STAT_CLK_SYNC_BYPASS_STAT     BIT(24)
#define AXI_RF_TSTAMP_REG_CTL_STAT_CLK_RESYNC_REQ_STAT      BIT(25)
#define AXI_RF_TSTAMP_REG_CTL_STAT_CLK_TX_SYNCED            BIT(26)
#define AXI_RF_TSTAMP_REG_CTL_STAT_CLK_RX_SYNCED            BIT(27)
#define AXI_RF_TSTAMP_REG_CTL_STAT_TS_RESETN                BIT(31)

#define AXI_RF_TSTAMP_REG_IRQ_x_IRQ_TX0_CNT_MATCH           BIT(0)
#define AXI_RF_TSTAMP_REG_IRQ_x_IRQ_TX1_CNT_MATCH           BIT(1)
#define AXI_RF_TSTAMP_REG_IRQ_x_IRQ_RX0_CNT_MATCH           BIT(2)
#define AXI_RF_TSTAMP_REG_IRQ_x_IRQ_RX1_CNT_MATCH           BIT(3)
#define AXI_RF_TSTAMP_REG_IRQ_x_IRQ_RX0_CNT_LATCH_VALID     BIT(4)
#define AXI_RF_TSTAMP_REG_IRQ_x_IRQ_RX1_CNT_LATCH_VALID     BIT(5)
#define AXI_RF_TSTAMP_REG_IRQ_x_IRQ_CNT_WR_DONE             BIT(6)
#define AXI_RF_TSTAMP_REG_IRQ_x_IRQ_AXI_TO_TS_CLK_SYNC_DONE BIT(7)
#define AXI_RF_TSTAMP_REG_IRQ_x_IRQ_TS_TO_AXI_CLK_SYNC_DONE BIT(8)

#define AXI_RF_TSTAMP_REG_CH_CTL_STAT_TX_EN                     BIT(0)
#define AXI_RF_TSTAMP_REG_CH_CTL_STAT_TX_DIS                    BIT(1)
#define AXI_RF_TSTAMP_REG_CH_CTL_STAT_RX_EN                     BIT(2)
#define AXI_RF_TSTAMP_REG_CH_CTL_STAT_RX_DIS                    BIT(3)
#define AXI_RF_TSTAMP_REG_CH_CTL_STAT_CNT_TX_EN                 BIT(4)
#define AXI_RF_TSTAMP_REG_CH_CTL_STAT_CNT_TX_DIS                BIT(5)
#define AXI_RF_TSTAMP_REG_CH_CTL_STAT_CNT_RX_EN                 BIT(6)
#define AXI_RF_TSTAMP_REG_CH_CTL_STAT_CNT_RX_DIS                BIT(7)
#define AXI_RF_TSTAMP_REG_CH_CTL_STAT_CNT_LATCH_ARM_REQ         BIT(8)
#define AXI_RF_TSTAMP_REG_CH_CTL_STAT_CNT_LATCH_ARM_UNREQ       BIT(9)
#define AXI_RF_TSTAMP_REG_CH_CTL_STAT_TX_STAT                   BIT(16)
#define AXI_RF_TSTAMP_REG_CH_CTL_STAT_RX_STAT                   BIT(17)
#define AXI_RF_TSTAMP_REG_CH_CTL_STAT_CNT_TX_STAT               BIT(18)
#define AXI_RF_TSTAMP_REG_CH_CTL_STAT_CNT_RX_STAT               BIT(19)
#define AXI_RF_TSTAMP_REG_CH_CTL_STAT_TX_MAN_STAT               BIT(20)
#define AXI_RF_TSTAMP_REG_CH_CTL_STAT_RX_MAN_STAT               BIT(21)
#define AXI_RF_TSTAMP_REG_CH_CTL_STAT_CNT_LATCH_ARM_REQ_STAT    BIT(24)
#define AXI_RF_TSTAMP_REG_CH_CTL_STAT_CNT_LATCH_ARMED           BIT(25)
#define AXI_RF_TSTAMP_REG_CH_CTL_STAT_CNT_LATCH_VALID           BIT(26)
#define AXI_RF_TSTAMP_REG_CH_CTL_STAT_CNT_LATCH_VALID_RD        BIT(27)

#define AXI_RF_TSTAMP_REG_CH_OVR_TX_DMA_RDY_OVR_EN          BIT(0)
#define AXI_RF_TSTAMP_REG_CH_OVR_TX_DMA_RDY_OVR_VAL         BIT(1)
#define AXI_RF_TSTAMP_REG_CH_OVR_RX_DMA_XFER_REQ_OVR_EN     BIT(2)
#define AXI_RF_TSTAMP_REG_CH_OVR_RX_DMA_XFER_REQ_OVR_VAL    BIT(3)
#define AXI_RF_TSTAMP_REG_CH_OVR_TX_DATA_RDY_OVR_EN         BIT(4)
#define AXI_RF_TSTAMP_REG_CH_OVR_TX_DATA_RDY_OVR_VAL        BIT(5)
#define AXI_RF_TSTAMP_REG_CH_OVR_RX_DATA_RDY_OVR_EN         BIT(6)
#define AXI_RF_TSTAMP_REG_CH_OVR_RX_DATA_RDY_OVR_VAL        BIT(7)
#define AXI_RF_TSTAMP_REG_CH_OVR_TX_DMA_RDY                 BIT(8)
#define AXI_RF_TSTAMP_REG_CH_OVR_RX_DMA_XFER_REQ            BIT(9)
#define AXI_RF_TSTAMP_REG_CH_OVR_TX_DATA_RDY                BIT(10)
#define AXI_RF_TSTAMP_REG_CH_OVR_RX_DATA_RDY                BIT(11)
#define AXI_RF_TSTAMP_REG_CH_OVR_TX_DMA_RDY_OVR             BIT(12)
#define AXI_RF_TSTAMP_REG_CH_OVR_RX_DMA_XFER_REQ_OVR        BIT(13)
#define AXI_RF_TSTAMP_REG_CH_OVR_TX_DATA_RDY_OVR            BIT(14)
#define AXI_RF_TSTAMP_REG_CH_OVR_RX_DATA_RDY_OVR            BIT(15)
#define AXI_RF_TSTAMP_REG_CH_OVR_TX_DMA_RDY_STKY            BIT(16)
#define AXI_RF_TSTAMP_REG_CH_OVR_RX_DMA_XFER_REQ_STKY       BIT(17)
#define AXI_RF_TSTAMP_REG_CH_OVR_TX_DATA_RDY_STKY           BIT(18)
#define AXI_RF_TSTAMP_REG_CH_OVR_RX_DATA_RDY_STKY           BIT(19)
#define AXI_RF_TSTAMP_REG_CH_OVR_TX_FIFO_UNDERFLOW_STKY     BIT(20)
#define AXI_RF_TSTAMP_REG_CH_OVR_RX_FIFO_OVERFLOW_STKY      BIT(21)

class AXIRFTStamp: public AXIPeripheral
{
public:
    enum Channel : uint8_t
    {
        CH0 = 0,
        CH1 = 1,
        CH_MAX,

        // Named aliases
        TX0 = 0,
        TX1 = 1,
        RX0 = 0,
        RX1 = 1,
    };
    enum CounterLatchStatus
    {
        LATCH_UNARMED = 0,
        LATCH_ARM_REQUESTED = 1,
        LATCH_ARMED = 2,
        LATCH_VALID = 3,
        LATCH_VALID_READING = 4,
    };
    struct IRQConfig
    {
        AXIIRQCtrl *controller;     // The IRQ controller to use
        AXIIRQCtrl::IRQNumber irq;  // The IRQ number to use
    };

private:
    static void ISR(void *_this);
    void handleIRQ();

public:
    AXIRFTStamp(void *base_address, AXIRFTStamp::IRQConfig irq_config = {nullptr, AXIIRQCtrl::IRQNumber::MAX});
    ~AXIRFTStamp();

    void init(AXIRFTStamp::IRQConfig irq_config = {nullptr, AXIIRQCtrl::IRQNumber::MAX});

    uint32_t getIPVersion();

    void enableClockSyncBypass(bool enable = true);
    inline void disableClockSyncBypass()
    {
        this->enableClockSyncBypass(false);
    }
    bool isClockSyncBypassEnabled();
    bool isClockSynced();
    void waitForClockSync(uint32_t timeout_ms = 0);
    void triggerClockResync(bool wait = false, uint32_t timeout_ms = 0);

    void enableTX(bool enable = true);
    void enableTX(AXIRFTStamp::Channel ch, bool enable = true);
    inline void disableTX()
    {
        this->enableTX(false);
    }
    inline void disableTX(AXIRFTStamp::Channel ch)
    {
        this->enableTX(ch, false);
    }
    bool isTXEnabled();
    bool isTXEnabled(AXIRFTStamp::Channel ch);
    void enableRX(bool enable = true);
    void enableRX(AXIRFTStamp::Channel ch, bool enable = true);
    inline void disableRX()
    {
        this->enableRX(false);
    }
    inline void disableRX(AXIRFTStamp::Channel ch)
    {
        this->enableRX(ch, false);
    }
    bool isRXEnabled();
    bool isRXEnabled(AXIRFTStamp::Channel ch);

    void enableCounter(bool enable = true);
    inline void disableCounter()
    {
        this->enableCounter(false);
    }
    bool isCounterEnabled();

    void enableTXCounter(bool enable = true);
    void enableTXCounter(AXIRFTStamp::Channel ch, bool enable = true);
    inline void disableTXCounter()
    {
        this->enableTXCounter(false);
    }
    inline void disableTXCounter(AXIRFTStamp::Channel ch)
    {
        this->enableTXCounter(ch, false);
    }
    bool isTXCounterEnabled();
    bool isTXCounterEnabled(AXIRFTStamp::Channel ch);
    void enableRXCounter(bool enable = true);
    void enableRXCounter(AXIRFTStamp::Channel ch, bool enable = true);
    inline void disableRXCounter()
    {
        this->enableRXCounter(false);
    }
    inline void disableRXCounter(AXIRFTStamp::Channel ch)
    {
        this->enableRXCounter(ch, false);
    }
    bool isRXCounterEnabled();
    bool isRXCounterEnabled(AXIRFTStamp::Channel ch);

    void armCounterLatch(bool req_arm = true);
    void armCounterLatch(AXIRFTStamp::Channel ch, bool req_arm = true);
    inline void disarmCounterLatch()
    {
        this->armCounterLatch(false);
    }
    inline void disarmCounterLatch(AXIRFTStamp::Channel ch)
    {
        this->armCounterLatch(ch, false);
    }
    AXIRFTStamp::CounterLatchStatus getCounterLatchStatus(AXIRFTStamp::Channel ch);

    uint64_t getCounter();
    void setCounter(uint64_t val);

    uint64_t getTXCounter(AXIRFTStamp::Channel ch);
    void setTXCounter(AXIRFTStamp::Channel ch, uint64_t val);
    uint64_t getRXCounter(AXIRFTStamp::Channel ch);
    void setRXCounter(AXIRFTStamp::Channel ch, uint64_t val);
    uint64_t getCounterLatch(AXIRFTStamp::Channel ch);

    bool isTXDMAReady(AXIRFTStamp::Channel ch);
    bool isRXDMAReady(AXIRFTStamp::Channel ch);
    bool isTXDataReady(AXIRFTStamp::Channel ch);
    bool isRXDataReady(AXIRFTStamp::Channel ch);

    void waitTXDMAReady(AXIRFTStamp::Channel ch, uint32_t timeout_ms = 0);
    void waitRXDMAReady(AXIRFTStamp::Channel ch, uint32_t timeout_ms = 0);
    void waitTXDataReady(AXIRFTStamp::Channel ch, uint32_t timeout_ms = 0);
    void waitRXDataReady(AXIRFTStamp::Channel ch, uint32_t timeout_ms = 0);

    bool wasTXDMAReady(AXIRFTStamp::Channel ch);
    bool wasRXDMAReady(AXIRFTStamp::Channel ch);
    bool wasTXDataReady(AXIRFTStamp::Channel ch);
    bool wasRXDataReady(AXIRFTStamp::Channel ch);

private:
    AXIRFTStamp::IRQConfig irq_config;

    std::recursive_mutex mutex;
};