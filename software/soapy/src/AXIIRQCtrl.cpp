#include "AXIIRQCtrl.hpp"

void AXIIRQCtrl::PollThreadEntry(AXIIRQCtrl *_this)
{
    _this->handleIRQs();
}
void AXIIRQCtrl::handleIRQs()
{
    while(this->fd < 0) // Wait for initialization
        std::this_thread::yield();

    while(1)
    {
        struct pollfd poll_fd;

        poll_fd.fd = this->fd;
        poll_fd.events = POLLIN;

        if(poll(&poll_fd, 1, -1) < 0)
            break;

        if(poll_fd.revents & (POLLERR | POLLHUP))
            break;

        if(!(poll_fd.revents & POLLIN))
            continue;

        std::lock_guard<std::mutex> lock(this->mutex);

        uint32_t pend = this->readReg(AXI_IRQ_CTRL_REG_IRQ_PEND) & this->mask;

        for(uint8_t i = 0; i < AXIIRQCtrl::IRQNumber::MAX; i++)
        {
            if(pend & BIT(i))
            {
                // Call ISR inside try-catch block to prevent exceptions from breaking the loop
                try
                {
                    if(this->isr_info[i].isr)
                        this->isr_info[i].isr(this->isr_info[i].arg);
                }
                catch(std::exception &e)
                {
                    // Do nothing
                }
            }
        }

        this->writeReg(AXI_IRQ_CTRL_REG_IRQ_PEND_CLR, pend);
    }
}

AXIIRQCtrl::AXIIRQCtrl(void *base_address, int fd): AXIPeripheral(base_address)
{
    uint32_t version = this->getIPVersion();

    if(AXI_CORE_VERSION_MAJOR(version) < 1)
        throw std::runtime_error("AXI IRQ Controller Core v" + std::to_string(AXI_CORE_VERSION_MAJOR(version)) + "." + std::to_string(AXI_CORE_VERSION_MINOR(version)) + "." + std::to_string(AXI_CORE_VERSION_PATCH(version)) + " is not supported");

    this->fd = -1;
    this->mask = 0x00000000;

    for(uint8_t i = 0; i < AXIIRQCtrl::IRQNumber::MAX; i++)
        this->isr_info[i].isr = nullptr;

    this->init(fd);
}
AXIIRQCtrl::~AXIIRQCtrl()
{
    if(this->fd < 0)
        return;

    ioctl(this->fd, ICYRADIO_IOCTL_IRQ_FLUSH); // Ask kernel to flush IRQs (this will cause the poll() call to return with POLLHUP)

    if(this->poll_thread.joinable())
        this->poll_thread.join();
}

void AXIIRQCtrl::init(int fd)
{
    if(this->fd >= 0)
        throw std::runtime_error("AXI IRQ Controller: Already initialized");

    if(fd < 0)
        return;

    this->writeReg(AXI_IRQ_CTRL_REG_IRQ_ENABLE_CLR, 0xFFFFFFFF); // Disable all IRQs
    this->writeReg(AXI_IRQ_CTRL_REG_IRQ_PEND_CLR, 0xFFFFFFFF); // Clear all pending IRQs

    this->fd = fd;
    this->poll_thread = std::thread(AXIIRQCtrl::PollThreadEntry, this);
}

uint32_t AXIIRQCtrl::getIPVersion()
{
    return this->readReg(AXI_IRQ_CTRL_REG_VERSION);
}

void AXIIRQCtrl::configIRQ(AXIIRQCtrl::IRQNumber irq, AXIIRQCtrl::IRQMode mode, uint8_t dest, bool enable)
{
    if(irq >= AXIIRQCtrl::IRQNumber::MAX)
        throw std::invalid_argument("AXI IRQ Controller: Invalid IRQ number");

    std::lock_guard<std::mutex> lock(this->mutex);

    this->writeReg(AXI_IRQ_CTRL_REG_IRQ_CONFIG(irq), mode | (enable ? AXI_IRQ_CTRL_REG_IRQ_CONFIG_IRQ_ENABLE : 0) | AXI_IRQ_CTRL_REG_IRQ_CONFIG_IRQ_DEST(dest));
}
void AXIIRQCtrl::setISR(AXIIRQCtrl::IRQNumber irq, AXIIRQCtrl::ISR isr, void *arg)
{
    if(irq >= AXIIRQCtrl::IRQNumber::MAX)
        throw std::invalid_argument("AXI IRQ Controller: Invalid IRQ number");

    std::lock_guard<std::mutex> lock(this->mutex);

    if(isr != nullptr)
        this->mask |= BIT(irq);
    else
        this->mask &= ~BIT(irq);

    this->isr_info[irq].isr = isr;
    this->isr_info[irq].arg = arg;
}
bool AXIIRQCtrl::isIRQPending(AXIIRQCtrl::IRQNumber irq)
{
    if(irq >= AXIIRQCtrl::IRQNumber::MAX)
        throw std::invalid_argument("AXI IRQ Controller: Invalid IRQ number");

    std::lock_guard<std::mutex> lock(this->mutex);

    return !!(this->readReg(AXI_IRQ_CTRL_REG_IRQ_PEND) & BIT(irq));
}
void AXIIRQCtrl::setIRQPending(AXIIRQCtrl::IRQNumber irq, bool pending)
{
    if(irq >= AXIIRQCtrl::IRQNumber::MAX)
        throw std::invalid_argument("AXI IRQ Controller: Invalid IRQ number");

    std::lock_guard<std::mutex> lock(this->mutex);

    if(pending)
        this->writeReg(AXI_IRQ_CTRL_REG_IRQ_PEND_SET, BIT(irq));
    else
        this->writeReg(AXI_IRQ_CTRL_REG_IRQ_PEND_CLR, BIT(irq));
}
bool AXIIRQCtrl::isIRQEnabled(AXIIRQCtrl::IRQNumber irq)
{
    if(irq >= AXIIRQCtrl::IRQNumber::MAX)
        throw std::invalid_argument("AXI IRQ Controller: Invalid IRQ number");

    std::lock_guard<std::mutex> lock(this->mutex);

    return !!(this->readReg(AXI_IRQ_CTRL_REG_IRQ_ENABLE) & BIT(irq));
}
void AXIIRQCtrl::setIRQEnabled(AXIIRQCtrl::IRQNumber irq, bool enabled)
{
    if(irq >= AXIIRQCtrl::IRQNumber::MAX)
        throw std::invalid_argument("AXI IRQ Controller: Invalid IRQ number");

    std::lock_guard<std::mutex> lock(this->mutex);

    if(enabled)
        this->writeReg(AXI_IRQ_CTRL_REG_IRQ_ENABLE_SET, BIT(irq));
    else
        this->writeReg(AXI_IRQ_CTRL_REG_IRQ_ENABLE_CLR, BIT(irq));
}