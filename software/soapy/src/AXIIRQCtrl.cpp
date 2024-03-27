#include "AXIIRQCtrl.hpp"

void AXIIRQCtrl::handleIRQ(AXIIRQCtrl::IRQNumber irq, AXIIRQCtrl::ISRInfo isr_info)
{
    try
    {
        if(isr_info.isr != nullptr)
            isr_info.isr(isr_info.arg);
    }
    catch(...)
    {
        // Do nothing
    }

    this->writeReg(AXI_IRQ_CTRL_REG_IRQ_PEND_CLR, BIT(irq));

    this->busy_mask.fetch_and(~BIT(irq));
}
void AXIIRQCtrl::handleIRQs(size_t thread_id)
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

        std::lock_guard<std::recursive_mutex> lock(this->mutex);

        uint32_t pend = this->readReg(AXI_IRQ_CTRL_REG_IRQ_PEND) & this->mask;

        for(uint8_t i = 0; i < AXIIRQCtrl::IRQNumber::MAX; i++)
        {
            if((pend & BIT(i)) && !(this->busy_mask.fetch_or(BIT(i)) & BIT(i)))
            {
                std::thread t(&AXIIRQCtrl::handleIRQ, this, (AXIIRQCtrl::IRQNumber)i, this->isr_info[i]);

                t.detach();
            }
        }
    }
}

AXIIRQCtrl::AXIIRQCtrl(void *base_address, size_t nthreads, int fd): AXIPeripheral(base_address)
{
    if(nthreads < 1)
        throw std::invalid_argument("AXI IRQ Controller: Invalid number of handler threads");

    uint32_t version = this->getIPVersion();

    if(AXI_CORE_VERSION_MAJOR(version) < 1)
        throw std::runtime_error("AXI IRQ Controller Core v" + std::to_string(AXI_CORE_VERSION_MAJOR(version)) + "." + std::to_string(AXI_CORE_VERSION_MINOR(version)) + "." + std::to_string(AXI_CORE_VERSION_PATCH(version)) + " is not supported");

    this->fd = -1;
    this->mask = 0x00000000;

    for(uint8_t i = 0; i < AXIIRQCtrl::IRQNumber::MAX; i++)
        this->isr_info[i].isr = nullptr;

    this->poll_threads = std::vector<std::thread>();
    this->nthreads = nthreads;
    this->busy_mask = 0x00000000;

    this->init(fd);
}
AXIIRQCtrl::~AXIIRQCtrl()
{
    if(this->fd < 0)
        return;

    this->writeReg(AXI_IRQ_CTRL_REG_IRQ_ENABLE_CLR, 0xFFFFFFFF); // Disable all IRQs

    ioctl(this->fd, ICYRADIO_IOCTL_IRQ_FLUSH); // Ask kernel to enable IRQ flush mode (this will cause every poll() call to return with POLLHUP)

    for(auto &thread : this->poll_threads)
    {
        if(thread.joinable())
            thread.join();
    }

    ioctl(this->fd, ICYRADIO_IOCTL_IRQ_NOFLUSH); // Ask kernel to disable IRQ flush mode

    while(this->busy_mask.load()) // Wait for all IRQs to be handled (detached threads to finish)
        std::this_thread::yield();
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

    for(size_t i = 0; i < this->nthreads; i++)
        this->poll_threads.emplace_back(&AXIIRQCtrl::handleIRQs, this, i);
}

uint32_t AXIIRQCtrl::getIPVersion()
{
    return this->readReg(AXI_IRQ_CTRL_REG_VERSION);
}

void AXIIRQCtrl::configIRQ(AXIIRQCtrl::IRQNumber irq, AXIIRQCtrl::IRQMode mode, uint8_t dest, bool enable)
{
    if(irq >= AXIIRQCtrl::IRQNumber::MAX)
        throw std::invalid_argument("AXI IRQ Controller: Invalid IRQ number");

    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->writeReg(AXI_IRQ_CTRL_REG_IRQ_CONFIG(irq), mode | (enable ? AXI_IRQ_CTRL_REG_IRQ_CONFIG_IRQ_ENABLE : 0) | AXI_IRQ_CTRL_REG_IRQ_CONFIG_IRQ_DEST(dest));
}
void AXIIRQCtrl::setISR(AXIIRQCtrl::IRQNumber irq, AXIIRQCtrl::ISR isr, void *arg)
{
    if(irq >= AXIIRQCtrl::IRQNumber::MAX)
        throw std::invalid_argument("AXI IRQ Controller: Invalid IRQ number");

    std::lock_guard<std::recursive_mutex> lock(this->mutex);

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

    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    return !!(this->readReg(AXI_IRQ_CTRL_REG_IRQ_PEND) & BIT(irq));
}
void AXIIRQCtrl::setIRQPending(AXIIRQCtrl::IRQNumber irq, bool pending)
{
    if(irq >= AXIIRQCtrl::IRQNumber::MAX)
        throw std::invalid_argument("AXI IRQ Controller: Invalid IRQ number");

    if(this->busy_mask.load() & BIT(irq))
        throw std::runtime_error("AXI IRQ Controller: IRQ currently being handled");

    uint32_t reg;

    if(pending)
        reg = AXI_IRQ_CTRL_REG_IRQ_PEND_SET;
    else
        reg = AXI_IRQ_CTRL_REG_IRQ_PEND_CLR;

    this->writeReg(reg, BIT(irq));
}
bool AXIIRQCtrl::isIRQEnabled(AXIIRQCtrl::IRQNumber irq)
{
    if(irq >= AXIIRQCtrl::IRQNumber::MAX)
        throw std::invalid_argument("AXI IRQ Controller: Invalid IRQ number");

    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    return !!(this->readReg(AXI_IRQ_CTRL_REG_IRQ_ENABLE) & BIT(irq));
}
void AXIIRQCtrl::setIRQEnabled(AXIIRQCtrl::IRQNumber irq, bool enabled)
{
    if(irq >= AXIIRQCtrl::IRQNumber::MAX)
        throw std::invalid_argument("AXI IRQ Controller: Invalid IRQ number");

    uint32_t reg;

    if(enabled)
        reg = AXI_IRQ_CTRL_REG_IRQ_ENABLE_SET;
    else
        reg = AXI_IRQ_CTRL_REG_IRQ_ENABLE_CLR;

    this->writeReg(reg, BIT(irq));
}
bool AXIIRQCtrl::isIRQBeingHandled(AXIIRQCtrl::IRQNumber irq)
{
    if(irq >= AXIIRQCtrl::IRQNumber::MAX)
        throw std::invalid_argument("AXI IRQ Controller: Invalid IRQ number");

    return !!(this->busy_mask.load() & BIT(irq));
}