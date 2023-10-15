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
#define AXI_IRQ_CTRL_REG_IRQ_CONFIG_IRQ_EN                  BIT(8)
#define AXI_IRQ_CTRL_REG_IRQ_CONFIG_IRQ_DIS                 BIT(9)
#define AXI_IRQ_CTRL_REG_IRQ_CONFIG_IRQ_SET                 BIT(10)
#define AXI_IRQ_CTRL_REG_IRQ_CONFIG_IRQ_CLR                 BIT(11)
#define AXI_IRQ_CTRL_REG_IRQ_CONFIG_IRQ_EN_STAT             BIT(16)
#define AXI_IRQ_CTRL_REG_IRQ_CONFIG_IRQ_PEND                BIT(17)

class AXIIRQCtrl: public AXIPeripheral
{
public:
    typedef void (* ISR)(void *);

    enum IRQNumber
    {
        AXI_DMAC_RF_RX = 0,
        AXI_DMAC_RF_TX = 1,
        AXI_AD9361_GPS_PPS = 2,

        AXI_IIC0 = 4,
        AXI_QUAD_SPI0 = 5,
        AXI_PCIE0 = 6,
        AXI_DMAC_I2S_RX = 7,
        AXI_DMAC_I2S_TX = 8,

        AXI_XADC_WIZ = 10,
        AXI_QUAD_SPI1 = 11,
        AXI_IIC1 = 12,
        AXI_QUAD_SPI2 = 13,

        MAX = 16,
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

    void configIRQ(AXIIRQCtrl::IRQNumber irq, uint8_t dest, bool enable);
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