#pragma once

#include <cstdint>
#include <unistd.h>
#include <sys/poll.h>
#include <thread>
#include <mutex>
#include <atomic>
#include "ioctl.hpp"
#include "AXIPeripheral.hpp"
#include "Utils.hpp"

#define AXI_IRQ_CTRL_REG_VERSION        0x00
#define AXI_IRQ_CTRL_REG_IRQ_ENABLE     0x04
#define AXI_IRQ_CTRL_REG_IRQ_ENABLE_SET 0x08
#define AXI_IRQ_CTRL_REG_IRQ_ENABLE_CLR 0x0C
#define AXI_IRQ_CTRL_REG_IRQ_PEND       0x10
#define AXI_IRQ_CTRL_REG_IRQ_PEND_SET   0x14
#define AXI_IRQ_CTRL_REG_IRQ_PEND_CLR   0x18
#define AXI_IRQ_CTRL_REG_IRQ_CONFIG(n)  (0x80 + (n) * 4)

#define AXI_IRQ_CTRL_REG_IRQ_CONFIG_IRQ_DEST(n)             (((n) & 0x3F) << 0)
#define AXI_IRQ_CTRL_REG_IRQ_CONFIG_IRQ_DEST_PCIE_MSI(n)    AXI_IRQ_CTRL_REG_IRQ_CONFIG_IRQ_DEST((n) + 0)
#define AXI_IRQ_CTRL_REG_IRQ_CONFIG_IRQ_DEST_CPU(n)         AXI_IRQ_CTRL_REG_IRQ_CONFIG_IRQ_DEST((n) + 32)
#define AXI_IRQ_CTRL_REG_IRQ_CONFIG_IRQ_ENABLE              BIT(8)
#define AXI_IRQ_CTRL_REG_IRQ_CONFIG_IRQ_PEND                BIT(9)
#define AXI_IRQ_CTRL_REG_IRQ_CONFIG_IRQ_MODE_LEVEL_HIGH     0
#define AXI_IRQ_CTRL_REG_IRQ_CONFIG_IRQ_MODE_LEVEL_LOW      BIT(10)
#define AXI_IRQ_CTRL_REG_IRQ_CONFIG_IRQ_MODE_EDGE_RISING    BIT(11)
#define AXI_IRQ_CTRL_REG_IRQ_CONFIG_IRQ_MODE_EDGE_FALLING   (BIT(11) | BIT(10))

class AXIIRQCtrl: public AXIPeripheral
{
public:
    typedef void (* ISR)(void *);

    enum IRQNumber
    {
        AXI_DMAC_RF_TX0 = 0,
        AXI_DMAC_RF_TX1 = 1,
        AXI_DMAC_RF_RX0 = 2,
        AXI_DMAC_RF_RX1 = 3,
        AXI_DMAC_I2S_TX = 4,
        AXI_DMAC_I2S_RX = 5,
        AXI_IIC0 = 6,
        AXI_IIC1 = 7,
        AXI_IIC2 = 8,
        AXI_QUAD_SPI_MM0 = 9,
        AXI_SPI0 = 10,
        AXI_SPI1 = 11,

        AXI_PCIE0 = 15,
        AXI_RF_TSTAMP = 16,

        AXI_XADC_WIZ = 19,
        CLK_MNGR_IRQn = 20,
        VIN_REG_ALERTn = 21,

        MAX = 22,
    };
    enum IRQMode
    {
        LEVEL_HIGH = AXI_IRQ_CTRL_REG_IRQ_CONFIG_IRQ_MODE_LEVEL_HIGH,
        LEVEL_LOW = AXI_IRQ_CTRL_REG_IRQ_CONFIG_IRQ_MODE_LEVEL_LOW,
        EDGE_RISING = AXI_IRQ_CTRL_REG_IRQ_CONFIG_IRQ_MODE_EDGE_RISING,
        EDGE_FALLING = AXI_IRQ_CTRL_REG_IRQ_CONFIG_IRQ_MODE_EDGE_FALLING,
    };
private:
    struct ISRInfo
    {
        AXIIRQCtrl::ISR isr;
        void *arg;
    };

    void handleIRQ(AXIIRQCtrl::IRQNumber irq, AXIIRQCtrl::ISRInfo isr_info);
    void handleIRQs(size_t thread_id);

public:
    AXIIRQCtrl(void *base_address, size_t nthreads = 4, int fd = -1);
    ~AXIIRQCtrl();

    void init(int fd);

    uint32_t getIPVersion();

    void configIRQ(AXIIRQCtrl::IRQNumber irq, AXIIRQCtrl::IRQMode mode, uint8_t dest, bool enable);
    void setISR(AXIIRQCtrl::IRQNumber irq, AXIIRQCtrl::ISR isr, void *arg = nullptr);
    bool isIRQPending(AXIIRQCtrl::IRQNumber irq);
    void setIRQPending(AXIIRQCtrl::IRQNumber irq, bool pending);
    bool isIRQEnabled(AXIIRQCtrl::IRQNumber irq);
    void setIRQEnabled(AXIIRQCtrl::IRQNumber irq, bool enabled);
    bool isIRQBeingHandled(AXIIRQCtrl::IRQNumber irq);

private:
    int fd;
    uint32_t mask;
    AXIIRQCtrl::ISRInfo isr_info[AXIIRQCtrl::IRQNumber::MAX];
    std::vector<std::thread> poll_threads;
    size_t nthreads;
    std::atomic<uint32_t> busy_mask;

    std::recursive_mutex mutex;
};