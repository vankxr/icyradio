#pragma once

#include <cstdint>
#include <unistd.h>
#include <sys/poll.h>
#include <thread>
#include <mutex>
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
        AXI_DMAC_RF_RX = 0,
        AXI_DMAC_RF_TX = 1,

        AXI_IIC0 = 3,
        AXI_QUAD_SPI0 = 4,
        AXI_PCIE0 = 5,
        AXI_DMAC_I2S_RX = 6,
        AXI_DMAC_I2S_TX = 7,

        AXI_XADC_WIZ = 9,
        AXI_QUAD_SPI1 = 10,
        AXI_IIC1 = 11,
        AXI_QUAD_SPI2 = 12,
        VIN_REG_ALERTn = 13,
        CLK_MNGR_IRQn = 14,
        AXI_AD9361_GPS_PPS = 15,

        AXI_DNA_READY = 18,
        AXI_IIC2 = 19,

        MAX = 20,
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

    static void PollThreadEntry(AXIIRQCtrl *_this);
    void handleIRQs();
public:
    AXIIRQCtrl(void *base_address, int fd = -1);
    ~AXIIRQCtrl();

    void init(int fd = -1);

    uint32_t getIPVersion();

    void configIRQ(AXIIRQCtrl::IRQNumber irq, AXIIRQCtrl::IRQMode mode, uint8_t dest, bool enable);
    void setISR(AXIIRQCtrl::IRQNumber irq, AXIIRQCtrl::ISR isr, void *arg = nullptr);
    bool isIRQPending(AXIIRQCtrl::IRQNumber irq);
    void setIRQPending(AXIIRQCtrl::IRQNumber irq, bool pending);
    bool isIRQEnabled(AXIIRQCtrl::IRQNumber irq);
    void setIRQEnabled(AXIIRQCtrl::IRQNumber irq, bool enabled);
private:
    int fd;
    uint32_t mask;
    AXIIRQCtrl::ISRInfo isr_info[AXIIRQCtrl::IRQNumber::MAX];
    std::thread poll_thread;
    std::mutex mutex;
};