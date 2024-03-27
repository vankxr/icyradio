#pragma once

#include <cstdint>
#include <string>
#include <vector>
#include <unistd.h>
#include <thread>
#include <mutex>
#include <atomic>
#include "AXIPeripheral.hpp"
#include "AXIIRQCtrl.hpp"
#include "Utils.hpp"

#define AXI_DMAC_NUM_INSTANCES 6
#define AXI_DMAC_NUM_TRANSFERS 4

#define AXI_DMAC_REG_VERSION                0x000
#define AXI_DMAC_REG_PERI_ID                0x004
#define AXI_DMAC_REG_SCRATCH                0x008
#define AXI_DMAC_REG_ID                     0x00C
#define AXI_DMAC_REG_INTF_DESC              0x010
#define AXI_DMAC_REG_IRQ_MASK               0x080
#define AXI_DMAC_REG_IRQ_PENDING            0x084
#define AXI_DMAC_REG_IRQ_SOURCE             0x088
#define AXI_DMAC_REG_CONTROL                0x400
#define AXI_DMAC_REG_XFER_ID                0x404
#define AXI_DMAC_REG_XFER_SUBMIT            0x408
#define AXI_DMAC_REG_FLAGS                  0x40C
#define AXI_DMAC_REG_DEST_ADDRESS           0x410
#define AXI_DMAC_REG_SRC_ADDRESS            0x414
#define AXI_DMAC_REG_X_LENGTH               0x418
#define AXI_DMAC_REG_Y_LENGTH               0x41C
#define AXI_DMAC_REG_DEST_STRIDE            0x420
#define AXI_DMAC_REG_SRC_STRIDE             0x424
#define AXI_DMAC_REG_XFER_DONE              0x428
#define AXI_DMAC_REG_ACT_XFER_ID            0x42C
#define AXI_DMAC_REG_STATUS                 0x430
#define AXI_DMAC_REG_CUR_DEST_ADDRESS       0x434
#define AXI_DMAC_REG_CUR_SRC_ADDRESS        0x438
#define AXI_DMAC_REG_XFER_PROGRESS          0x448
#define AXI_DMAC_REG_PARTIAL_LENGTH         0x44C
#define AXI_DMAC_REG_PARTIAL_ID             0x450
#define AXI_DMAC_REG_DEST_ADDRESS_HIGH      0x490
#define AXI_DMAC_REG_SRC_ADDRESS_HIGH       0x494
#define AXI_DMAC_REG_CUR_DEST_ADDRESS_HIGH  0x498
#define AXI_DMAC_REG_CUR_SRC_ADDRESS_HIGH   0x49C

// AXI_DMAC_REG_IRQ_MASK/PENDING/SOURCE
#define AXI_DMAC_REG_IRQ_x_IRQ_XFER_QUEUED    BIT(0)
#define AXI_DMAC_REG_IRQ_x_IRQ_XFER_COMPLETED BIT(1)

// AXI_DMAC_REG_CONTROL
#define AXI_DMAC_REG_CONTROL_ENABLE BIT(0)
#define AXI_DMAC_REG_CONTROL_PAUSE  BIT(1)

// AXI_DMAC_REG_FLAGS
#define AXI_DMAC_REG_FLAGS_CYCLIC               BIT(0)
#define AXI_DMAC_REG_FLAGS_TLAST                BIT(1)
#define AXI_DMAC_REG_FLAGS_PARTIAL_REPORTING_EN BIT(2)

// AXI_DMAC_REG_XFER_DONE
#define AXI_DMAC_REG_XFER_DONE_XFER_n_DONE(n)       BIT(n)
#define AXI_DMAC_REG_XFER_DONE_PARTIAL_XFER_DONE    BIT(31)

class AXIDMAC: public AXIPeripheral
{
public:
    struct Transfer
    {
        typedef void (* Callback)(void *);

        enum Flags
        {
            NONE = 0,
            CYCLIC = AXI_DMAC_REG_FLAGS_CYCLIC,
            TLAST = AXI_DMAC_REG_FLAGS_TLAST,
            PARTIAL_REPORTING_EN = AXI_DMAC_REG_FLAGS_PARTIAL_REPORTING_EN,
        };

        uint8_t id;
        uint32_t size;
        AXIDMAC::Transfer::Flags flags;
        uint32_t src_addr;
        uint32_t dest_addr;
        AXIDMAC::Transfer::Callback cb;
        void *cb_arg;
    };
    enum InterfaceType
    {
        AXI_MM = 0,
        AXI_STREAM = 1,
        FIFO = 2,
    };
    enum TransferMode
    {
        DEV_TO_DEV = 0,
        DEV_TO_MEM = 1,
        MEM_TO_DEV = 2,
        MEM_TO_MEM = 3,
    };
    struct Capabilities
    {
        uint32_t dest_data_width;
        AXIDMAC::InterfaceType dest_interface;
        uint32_t src_data_width;
        AXIDMAC::InterfaceType src_interface;
        uint16_t bytes_per_burst;
        bool cyclic_support;
        uint32_t max_transfer_size;
        uint32_t dest_addr_mask;
        uint32_t src_addr_mask;
        AXIDMAC::TransferMode transfer_mode;
    };
    struct IRQConfig
    {
        AXIIRQCtrl *controller;     // The IRQ controller to use
        AXIIRQCtrl::IRQNumber irq;  // The IRQ number to use
    };

public:
    static inline std::string InterfaceTypeToString(AXIDMAC::InterfaceType type)
    {
        switch(type)
        {
            case AXIDMAC::InterfaceType::AXI_MM:
                return "AXI Memory Mapped";
            case AXIDMAC::InterfaceType::AXI_STREAM:
                return "AXI Stream";
            case AXIDMAC::InterfaceType::FIFO:
                return "FIFO";
            default:
                return "Unknown";
        }
    }

private:
    static void ISR(void *_this);

    void handleIRQ();
    void callTransferCallback(AXIDMAC::Transfer xfer);

public:
    AXIDMAC(void *base_address, AXIDMAC::IRQConfig irq_config = {nullptr, AXIIRQCtrl::IRQNumber::MAX});
    ~AXIDMAC();

    void init(AXIDMAC::IRQConfig irq_config = {nullptr, AXIIRQCtrl::IRQNumber::MAX});

    uint32_t getIPVersion();
    uint32_t getPeripheralID();

    AXIDMAC::Capabilities getCapabilities();

    void enable(bool enable = true);
    inline void disable()
    {
        this->enable(false);
    }
    bool enabled();
    void pause(bool pause = true);
    inline void unpause()
    {
        this->pause(false);
    }
    bool paused();
    bool idle();
    void waitIdle(uint32_t timeout_ms = 0);

    void setTransferCallback(uint8_t id, AXIDMAC::Transfer::Callback callback, void *arg = nullptr);
    inline void clearTransferCallback(uint8_t id)
    {
        this->setTransferCallback(id, nullptr);
    }
    void submitTransfer(AXIDMAC::Transfer &transfer);
    void waitTransferCompletion(uint8_t id, uint32_t timeout_ms = 0);

private:
    AXIDMAC::IRQConfig irq_config;
    AXIDMAC::Capabilities capabilities;
    AXIDMAC::Transfer transfers[AXI_DMAC_NUM_TRANSFERS];
    std::atomic<bool> transfer_done[AXI_DMAC_NUM_TRANSFERS];
    std::atomic<bool> transfer_callback_done[AXI_DMAC_NUM_TRANSFERS];

    std::recursive_mutex mutex;
};

// Instance 0 - axi_dmac_rf_tx0 - AXI DMA Controller for RF TX channel 0
#define AXI_DMAC_RF_TX0_INST 0

// Instance 1 - axi_dmac_rf_tx1 - AXI DMA Controller for RF TX channel 1
#define AXI_DMAC_RF_TX1_INST 1

// Instance 2 - axi_dmac_rf_rx0 - AXI DMA Controller for RF RX channel 0
#define AXI_DMAC_RF_RX0_INST 2

// Instance 3 - axi_dmac_rf_rx1 - AXI DMA Controller for RF RX channel 1
#define AXI_DMAC_RF_RX1_INST 3

// Instance 4 - axi_dmac_i2s_tx - AXI DMA Controller for I2S TX
#define AXI_DMAC_I2S_TX_INST 4

// Instance 5 - axi_dmac_i2s_rx - AXI DMA Controller for I2S RX
#define AXI_DMAC_I2S_RX_INST 5
