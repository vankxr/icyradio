#include "AXIRFTStamp.hpp"

void AXIRFTStamp::ISR(void *_this)
{
    if(_this == nullptr)
        return;

    (static_cast<AXIRFTStamp *>(_this))->handleIRQ();
}
void AXIRFTStamp::handleIRQ()
{
    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    uint32_t pend = this->readReg(AXI_RF_TSTAMP_REG_IRQ_PENDING);
    this->writeReg(AXI_RF_TSTAMP_REG_IRQ_PENDING, pend); // Clear pending IRQs

    // TODO:
}

AXIRFTStamp::AXIRFTStamp(void *base_address, AXIRFTStamp::IRQConfig irq_config): AXIPeripheral(base_address)
{
    uint32_t version = this->getIPVersion();

    if(AXI_CORE_VERSION_MAJOR(version) < 1)
        throw std::runtime_error("AXI RF Timestamping Core v" + std::to_string(AXI_CORE_VERSION_MAJOR(version)) + "." + std::to_string(AXI_CORE_VERSION_MINOR(version)) + "." + std::to_string(AXI_CORE_VERSION_PATCH(version)) + " is not supported");

    this->writeReg(AXI_RF_TSTAMP_REG_CTL_STAT, AXI_RF_TSTAMP_REG_CTL_STAT_CNT_DIS);
    this->writeReg(AXI_RF_TSTAMP_REG_CH_CTL_STAT_ALL, AXI_RF_TSTAMP_REG_CH_CTL_STAT_TX_DIS | AXI_RF_TSTAMP_REG_CH_CTL_STAT_RX_DIS | AXI_RF_TSTAMP_REG_CH_CTL_STAT_CNT_TX_DIS | AXI_RF_TSTAMP_REG_CH_CTL_STAT_CNT_RX_DIS | AXI_RF_TSTAMP_REG_CH_CTL_STAT_CNT_LATCH_ARM_UNREQ);

    this->irq_config.controller = nullptr;

    this->init(irq_config);
}
AXIRFTStamp::~AXIRFTStamp()
{
    this->writeReg(AXI_RF_TSTAMP_REG_IRQ_ENABLE, 0); // Disable all IRQs

    if(this->irq_config.controller != nullptr)
    {
        this->irq_config.controller->setISR(this->irq_config.irq, nullptr);
        this->irq_config.controller->setIRQEnabled(this->irq_config.irq, false);
    }
}

void AXIRFTStamp::init(AXIRFTStamp::IRQConfig irq_config)
{
    if(this->irq_config.controller != nullptr)
        throw std::runtime_error("AXI RF Timestamping: Already initialized");

    if(irq_config.controller == nullptr) // Current implementation requires IRQ support
        return;

    this->irq_config = irq_config;

    this->irq_config.controller->setISR(this->irq_config.irq, AXIRFTStamp::ISR, static_cast<void *>(this));
    this->irq_config.controller->setIRQEnabled(this->irq_config.irq, true);
    this->irq_config.controller->setIRQPending(this->irq_config.irq, false);

    this->writeReg(AXI_RF_TSTAMP_REG_IRQ_PENDING, 0xFFFFFFFF); // Clear all IRQs
    this->writeReg(AXI_RF_TSTAMP_REG_IRQ_ENABLE, 0);
}

uint32_t AXIRFTStamp::getIPVersion()
{
    return this->readReg(AXI_RF_TSTAMP_REG_VERSION);
}

void AXIRFTStamp::enableClockSyncBypass(bool enable)
{
    this->writeReg(AXI_RF_TSTAMP_REG_CTL_STAT, enable ? AXI_RF_TSTAMP_REG_CTL_STAT_CLK_SYNC_BYPASS_EN : AXI_RF_TSTAMP_REG_CTL_STAT_CLK_SYNC_BYPASS_DIS);
}
bool AXIRFTStamp::isClockSyncBypassEnabled()
{
    return !!(this->readReg(AXI_RF_TSTAMP_REG_CTL_STAT) & AXI_RF_TSTAMP_REG_CTL_STAT_CLK_SYNC_BYPASS_STAT);
}
bool AXIRFTStamp::isClockSynced()
{
    return (this->readReg(AXI_RF_TSTAMP_REG_CTL_STAT) & (AXI_RF_TSTAMP_REG_CTL_STAT_CLK_TX_SYNCED | AXI_RF_TSTAMP_REG_CTL_STAT_CLK_RX_SYNCED)) == (AXI_RF_TSTAMP_REG_CTL_STAT_CLK_TX_SYNCED | AXI_RF_TSTAMP_REG_CTL_STAT_CLK_RX_SYNCED);
}
void AXIRFTStamp::waitForClockSync(uint32_t timeout_ms)
{
    uint64_t timeout = (uint64_t)timeout_ms * 100ULL;

    while(--timeout && !this->isClockSynced())
        usleep(10);

    if(!this->isClockSynced())
        throw std::runtime_error("AXI RF Timestamping: Timed out waiting for clock synchronization");
}
void AXIRFTStamp::triggerClockResync(bool wait, uint32_t timeout_ms)
{
    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->writeReg(AXI_RF_TSTAMP_REG_CTL_STAT, AXI_RF_TSTAMP_REG_CTL_STAT_CLK_RESYNC_REQ);

    if(wait)
    {
        uint64_t timeout = (uint64_t)timeout_ms * 100ULL;
        uint32_t reg = this->readReg(AXI_RF_TSTAMP_REG_CTL_STAT);

        while(--timeout)
        {
            if(!(reg & AXI_RF_TSTAMP_REG_CTL_STAT_CLK_RESYNC_REQ_STAT) && (reg & AXI_RF_TSTAMP_REG_CTL_STAT_CLK_TX_SYNCED) && (reg & AXI_RF_TSTAMP_REG_CTL_STAT_CLK_RX_SYNCED))
                break;

            usleep(10);

            reg = this->readReg(AXI_RF_TSTAMP_REG_CTL_STAT);
        }

        if(reg & AXI_RF_TSTAMP_REG_CTL_STAT_CLK_RESYNC_REQ_STAT)
            throw std::runtime_error("AXI RF Timestamping: Timed out waiting for clock resync request");

        if(!(reg & AXI_RF_TSTAMP_REG_CTL_STAT_CLK_TX_SYNCED))
            throw std::runtime_error("AXI RF Timestamping: Timed out waiting for TX clock synchronization");

        if(!(reg & AXI_RF_TSTAMP_REG_CTL_STAT_CLK_RX_SYNCED))
            throw std::runtime_error("AXI RF Timestamping: Timed out waiting for RX clock synchronization");
    }
}

void AXIRFTStamp::enableTX(bool enable)
{
    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    if(this->isTXCounterEnabled())
        throw std::runtime_error("AXI RF Timestamping: Cannot enable TX while TX counter is enabled");

    this->writeReg(AXI_RF_TSTAMP_REG_CH_CTL_STAT_ALL, enable ? AXI_RF_TSTAMP_REG_CH_CTL_STAT_TX_EN : AXI_RF_TSTAMP_REG_CH_CTL_STAT_TX_DIS);
}
void AXIRFTStamp::enableTX(AXIRFTStamp::Channel ch, bool enable)
{
    if(ch >= AXIRFTStamp::Channel::CH_MAX)
        throw std::invalid_argument("AXI RF Timestamping: Invalid channel number: " + std::to_string(ch) + " (Max = " + std::to_string(AXIRFTStamp::Channel::CH_MAX) + ")");

    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    if(this->isTXCounterEnabled(ch))
        throw std::runtime_error("AXI RF Timestamping: Cannot enable TX while TX counter is enabled");

    this->writeReg(AXI_RF_TSTAMP_REG_CH_CTL_STAT(ch), enable ? AXI_RF_TSTAMP_REG_CH_CTL_STAT_TX_EN : AXI_RF_TSTAMP_REG_CH_CTL_STAT_TX_DIS);
}
bool AXIRFTStamp::isTXEnabled()
{
    return !!(this->readReg(AXI_RF_TSTAMP_REG_CH_CTL_STAT_ALL) & AXI_RF_TSTAMP_REG_CH_CTL_STAT_TX_STAT);
}
bool AXIRFTStamp::isTXEnabled(AXIRFTStamp::Channel ch)
{
    if(ch >= AXIRFTStamp::Channel::CH_MAX)
        throw std::invalid_argument("AXI RF Timestamping: Invalid channel number: " + std::to_string(ch) + " (Max = " + std::to_string(AXIRFTStamp::Channel::CH_MAX) + ")");

    return !!(this->readReg(AXI_RF_TSTAMP_REG_CH_CTL_STAT(ch)) & AXI_RF_TSTAMP_REG_CH_CTL_STAT_TX_STAT);
}
void AXIRFTStamp::enableRX(bool enable)
{
    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    if(this->isRXCounterEnabled())
        throw std::runtime_error("AXI RF Timestamping: Cannot enable RX while RX counter is enabled");

    this->writeReg(AXI_RF_TSTAMP_REG_CH_CTL_STAT_ALL, enable ? AXI_RF_TSTAMP_REG_CH_CTL_STAT_RX_EN : AXI_RF_TSTAMP_REG_CH_CTL_STAT_RX_DIS);
}
void AXIRFTStamp::enableRX(AXIRFTStamp::Channel ch, bool enable)
{
    if(ch >= AXIRFTStamp::Channel::CH_MAX)
        throw std::invalid_argument("AXI RF Timestamping: Invalid channel number: " + std::to_string(ch) + " (Max = " + std::to_string(AXIRFTStamp::Channel::CH_MAX) + ")");

    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    if(this->isRXCounterEnabled(ch))
        throw std::runtime_error("AXI RF Timestamping: Cannot enable RX while RX counter is enabled");

    this->writeReg(AXI_RF_TSTAMP_REG_CH_CTL_STAT(ch), enable ? AXI_RF_TSTAMP_REG_CH_CTL_STAT_RX_EN : AXI_RF_TSTAMP_REG_CH_CTL_STAT_RX_DIS);
}
bool AXIRFTStamp::isRXEnabled()
{
    return !!(this->readReg(AXI_RF_TSTAMP_REG_CH_CTL_STAT_ALL) & AXI_RF_TSTAMP_REG_CH_CTL_STAT_RX_STAT);
}
bool AXIRFTStamp::isRXEnabled(AXIRFTStamp::Channel ch)
{
    if(ch >= AXIRFTStamp::Channel::CH_MAX)
        throw std::invalid_argument("AXI RF Timestamping: Invalid channel number: " + std::to_string(ch) + " (Max = " + std::to_string(AXIRFTStamp::Channel::CH_MAX) + ")");

    return !!(this->readReg(AXI_RF_TSTAMP_REG_CH_CTL_STAT(ch)) & AXI_RF_TSTAMP_REG_CH_CTL_STAT_RX_STAT);
}

void AXIRFTStamp::enableCounter(bool enable)
{
    this->writeReg(AXI_RF_TSTAMP_REG_CTL_STAT, enable ? AXI_RF_TSTAMP_REG_CTL_STAT_CNT_EN : AXI_RF_TSTAMP_REG_CTL_STAT_CNT_DIS);
}
bool AXIRFTStamp::isCounterEnabled()
{
    return !!(this->readReg(AXI_RF_TSTAMP_REG_CTL_STAT) & AXI_RF_TSTAMP_REG_CTL_STAT_CNT_STAT);
}

void AXIRFTStamp::enableTXCounter(bool enable)
{
    this->writeReg(AXI_RF_TSTAMP_REG_CH_CTL_STAT_ALL, enable ? AXI_RF_TSTAMP_REG_CH_CTL_STAT_CNT_TX_EN : AXI_RF_TSTAMP_REG_CH_CTL_STAT_CNT_TX_DIS);
}
void AXIRFTStamp::enableTXCounter(AXIRFTStamp::Channel ch, bool enable)
{
    if(ch >= AXIRFTStamp::Channel::CH_MAX)
        throw std::invalid_argument("AXI RF Timestamping: Invalid channel number: " + std::to_string(ch) + " (Max = " + std::to_string(AXIRFTStamp::Channel::CH_MAX) + ")");

    this->writeReg(AXI_RF_TSTAMP_REG_CH_CTL_STAT(ch), enable ? AXI_RF_TSTAMP_REG_CH_CTL_STAT_CNT_TX_EN : AXI_RF_TSTAMP_REG_CH_CTL_STAT_CNT_TX_DIS);
}
bool AXIRFTStamp::isTXCounterEnabled()
{
    return !!(this->readReg(AXI_RF_TSTAMP_REG_CH_CTL_STAT_ALL) & AXI_RF_TSTAMP_REG_CH_CTL_STAT_CNT_TX_STAT);
}
bool AXIRFTStamp::isTXCounterEnabled(AXIRFTStamp::Channel ch)
{
    if(ch >= AXIRFTStamp::Channel::CH_MAX)
        throw std::invalid_argument("AXI RF Timestamping: Invalid channel number: " + std::to_string(ch) + " (Max = " + std::to_string(AXIRFTStamp::Channel::CH_MAX) + ")");

    return !!(this->readReg(AXI_RF_TSTAMP_REG_CH_CTL_STAT(ch)) & AXI_RF_TSTAMP_REG_CH_CTL_STAT_CNT_TX_STAT);
}
void AXIRFTStamp::enableRXCounter(bool enable)
{
    this->writeReg(AXI_RF_TSTAMP_REG_CH_CTL_STAT_ALL, enable ? AXI_RF_TSTAMP_REG_CH_CTL_STAT_CNT_RX_EN : AXI_RF_TSTAMP_REG_CH_CTL_STAT_CNT_RX_DIS);
}
void AXIRFTStamp::enableRXCounter(AXIRFTStamp::Channel ch, bool enable)
{
    if(ch >= AXIRFTStamp::Channel::CH_MAX)
        throw std::invalid_argument("AXI RF Timestamping: Invalid channel number: " + std::to_string(ch) + " (Max = " + std::to_string(AXIRFTStamp::Channel::CH_MAX) + ")");

    this->writeReg(AXI_RF_TSTAMP_REG_CH_CTL_STAT(ch), enable ? AXI_RF_TSTAMP_REG_CH_CTL_STAT_CNT_RX_EN : AXI_RF_TSTAMP_REG_CH_CTL_STAT_CNT_RX_DIS);
}
bool AXIRFTStamp::isRXCounterEnabled()
{
    return !!(this->readReg(AXI_RF_TSTAMP_REG_CH_CTL_STAT_ALL) & AXI_RF_TSTAMP_REG_CH_CTL_STAT_CNT_RX_STAT);
}
bool AXIRFTStamp::isRXCounterEnabled(AXIRFTStamp::Channel ch)
{
    if(ch >= AXIRFTStamp::Channel::CH_MAX)
        throw std::invalid_argument("AXI RF Timestamping: Invalid channel number: " + std::to_string(ch) + " (Max = " + std::to_string(AXIRFTStamp::Channel::CH_MAX) + ")");

    return !!(this->readReg(AXI_RF_TSTAMP_REG_CH_CTL_STAT(ch)) & AXI_RF_TSTAMP_REG_CH_CTL_STAT_CNT_RX_STAT);
}

void AXIRFTStamp::armCounterLatch(bool req_arm)
{
    this->writeReg(AXI_RF_TSTAMP_REG_CH_CTL_STAT_ALL, req_arm ? AXI_RF_TSTAMP_REG_CH_CTL_STAT_CNT_LATCH_ARM_REQ : AXI_RF_TSTAMP_REG_CH_CTL_STAT_CNT_LATCH_ARM_UNREQ);
}
void AXIRFTStamp::armCounterLatch(AXIRFTStamp::Channel ch, bool req_arm)
{
    if(ch >= AXIRFTStamp::Channel::CH_MAX)
        throw std::invalid_argument("AXI RF Timestamping: Invalid channel number: " + std::to_string(ch) + " (Max = " + std::to_string(AXIRFTStamp::Channel::CH_MAX) + ")");

    this->writeReg(AXI_RF_TSTAMP_REG_CH_CTL_STAT(ch), req_arm ? AXI_RF_TSTAMP_REG_CH_CTL_STAT_CNT_LATCH_ARM_REQ : AXI_RF_TSTAMP_REG_CH_CTL_STAT_CNT_LATCH_ARM_UNREQ);
}
AXIRFTStamp::CounterLatchStatus AXIRFTStamp::getCounterLatchStatus(AXIRFTStamp::Channel ch)
{
    if(ch >= AXIRFTStamp::Channel::CH_MAX)
        throw std::invalid_argument("AXI RF Timestamping: Invalid channel number: " + std::to_string(ch) + " (Max = " + std::to_string(AXIRFTStamp::Channel::CH_MAX) + ")");

    uint32_t ctrl = this->readReg(AXI_RF_TSTAMP_REG_CH_CTL_STAT(ch));

    if(ctrl & AXI_RF_TSTAMP_REG_CH_CTL_STAT_CNT_LATCH_VALID) // Latch valid
    {
        if(ctrl & AXI_RF_TSTAMP_REG_CH_CTL_STAT_CNT_LATCH_VALID_RD) // Reading synchronization
            return AXIRFTStamp::CounterLatchStatus::LATCH_VALID_READING;

        return AXIRFTStamp::CounterLatchStatus::LATCH_VALID;
    }

    if(ctrl & AXI_RF_TSTAMP_REG_CH_CTL_STAT_CNT_LATCH_ARMED) // Already armed
        return AXIRFTStamp::CounterLatchStatus::LATCH_ARMED;

    if(ctrl & AXI_RF_TSTAMP_REG_CH_CTL_STAT_CNT_LATCH_ARM_REQ_STAT) // Arm requested
        return AXIRFTStamp::CounterLatchStatus::LATCH_ARM_REQUESTED;

    return AXIRFTStamp::CounterLatchStatus::LATCH_UNARMED;
}

uint64_t AXIRFTStamp::getCounter()
{
    return this->readReg64(AXI_RF_TSTAMP_REG_CNT_LOW);
}
void AXIRFTStamp::setCounter(uint64_t val)
{
    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    uint32_t ctrl = this->readReg(AXI_RF_TSTAMP_REG_CTL_STAT);

    if(ctrl & AXI_RF_TSTAMP_REG_CTL_STAT_CNT_WR_REQ_STAT)
        throw std::runtime_error("AXI RF Timestamping: There is a write request pending already");

    if(ctrl & AXI_RF_TSTAMP_REG_CTL_STAT_CNT_STAT)
        throw std::runtime_error("AXI RF Timestamping: Cannot set counter while counter is enabled");

    this->writeReg64(AXI_RF_TSTAMP_REG_CNT_LOW, val);
}

uint64_t AXIRFTStamp::getTXCounter(AXIRFTStamp::Channel ch)
{
    if(ch >= AXIRFTStamp::Channel::CH_MAX)
        throw std::invalid_argument("AXI RF Timestamping: Invalid channel number: " + std::to_string(ch) + " (Max = " + std::to_string(AXIRFTStamp::Channel::CH_MAX) + ")");

    return this->readReg64(AXI_RF_TSTAMP_REG_CH_CNT_TX_LOW(ch));
}
void AXIRFTStamp::setTXCounter(AXIRFTStamp::Channel ch, uint64_t val)
{
    if(ch >= AXIRFTStamp::Channel::CH_MAX)
        throw std::invalid_argument("AXI RF Timestamping: Invalid channel number: " + std::to_string(ch) + " (Max = " + std::to_string(AXIRFTStamp::Channel::CH_MAX) + ")");

    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    if(this->isTXCounterEnabled(ch))
        throw std::runtime_error("AXI RF Timestamping: Cannot set TX counter while TX counter is enabled");

    this->writeReg64(AXI_RF_TSTAMP_REG_CH_CNT_TX_LOW(ch), val);
}
uint64_t AXIRFTStamp::getRXCounter(AXIRFTStamp::Channel ch)
{
    if(ch >= AXIRFTStamp::Channel::CH_MAX)
        throw std::invalid_argument("AXI RF Timestamping: Invalid channel number: " + std::to_string(ch) + " (Max = " + std::to_string(AXIRFTStamp::Channel::CH_MAX) + ")");

    return this->readReg64(AXI_RF_TSTAMP_REG_CH_CNT_RX_LOW(ch));
}
void AXIRFTStamp::setRXCounter(AXIRFTStamp::Channel ch, uint64_t val)
{
    if(ch >= AXIRFTStamp::Channel::CH_MAX)
        throw std::invalid_argument("AXI RF Timestamping: Invalid channel number: " + std::to_string(ch) + " (Max = " + std::to_string(AXIRFTStamp::Channel::CH_MAX) + ")");

    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    if(this->isRXCounterEnabled(ch))
        throw std::runtime_error("AXI RF Timestamping: Cannot set RX counter while RX counter is enabled");

    this->writeReg64(AXI_RF_TSTAMP_REG_CH_CNT_RX_LOW(ch), val);
}
uint64_t AXIRFTStamp::getCounterLatch(AXIRFTStamp::Channel ch)
{
    if(ch >= AXIRFTStamp::Channel::CH_MAX)
        throw std::invalid_argument("AXI RF Timestamping: Invalid channel number: " + std::to_string(ch) + " (Max = " + std::to_string(AXIRFTStamp::Channel::CH_MAX) + ")");

    return this->readReg64(AXI_RF_TSTAMP_REG_CH_CNT_LATCH_LOW(ch));
}

bool AXIRFTStamp::isTXDMAReady(AXIRFTStamp::Channel ch)
{
    if(ch >= AXIRFTStamp::Channel::CH_MAX)
        throw std::invalid_argument("AXI RF Timestamping: Invalid channel number: " + std::to_string(ch) + " (Max = " + std::to_string(AXIRFTStamp::Channel::CH_MAX) + ")");

    return !!(this->readReg(AXI_RF_TSTAMP_REG_CH_OVR(ch)) & AXI_RF_TSTAMP_REG_CH_OVR_TX_DMA_RDY);
}
bool AXIRFTStamp::isRXDMAReady(AXIRFTStamp::Channel ch)
{
    if(ch >= AXIRFTStamp::Channel::CH_MAX)
        throw std::invalid_argument("AXI RF Timestamping: Invalid channel number: " + std::to_string(ch) + " (Max = " + std::to_string(AXIRFTStamp::Channel::CH_MAX) + ")");

    return !!(this->readReg(AXI_RF_TSTAMP_REG_CH_OVR(ch)) & AXI_RF_TSTAMP_REG_CH_OVR_RX_DMA_XFER_REQ);
}
bool AXIRFTStamp::isTXDataReady(AXIRFTStamp::Channel ch)
{
    if(ch >= AXIRFTStamp::Channel::CH_MAX)
        throw std::invalid_argument("AXI RF Timestamping: Invalid channel number: " + std::to_string(ch) + " (Max = " + std::to_string(AXIRFTStamp::Channel::CH_MAX) + ")");

    return !!(this->readReg(AXI_RF_TSTAMP_REG_CH_OVR(ch)) & AXI_RF_TSTAMP_REG_CH_OVR_TX_DATA_RDY);
}
bool AXIRFTStamp::isRXDataReady(AXIRFTStamp::Channel ch)
{
    if(ch >= AXIRFTStamp::Channel::CH_MAX)
        throw std::invalid_argument("AXI RF Timestamping: Invalid channel number: " + std::to_string(ch) + " (Max = " + std::to_string(AXIRFTStamp::Channel::CH_MAX) + ")");

    return !!(this->readReg(AXI_RF_TSTAMP_REG_CH_OVR(ch)) & AXI_RF_TSTAMP_REG_CH_OVR_RX_DATA_RDY);
}

void AXIRFTStamp::waitTXDMAReady(AXIRFTStamp::Channel ch, uint32_t timeout_ms)
{
    uint64_t timeout = (uint64_t)timeout_ms * 100ULL;

    while(--timeout && !this->isTXDMAReady(ch))
        usleep(10);

    if(!this->isTXDMAReady(ch))
        throw std::runtime_error("AXI RF Timestamping: Timed out waiting for TX DMA ready");
}
void AXIRFTStamp::waitRXDMAReady(AXIRFTStamp::Channel ch, uint32_t timeout_ms)
{
    uint64_t timeout = (uint64_t)timeout_ms * 100ULL;

    while(--timeout && !this->isRXDMAReady(ch))
        usleep(10);

    if(!this->isRXDMAReady(ch))
        throw std::runtime_error("AXI RF Timestamping: Timed out waiting for RX DMA ready");
}
void AXIRFTStamp::waitTXDataReady(AXIRFTStamp::Channel ch, uint32_t timeout_ms)
{
    uint64_t timeout = (uint64_t)timeout_ms * 100ULL;

    while(--timeout && !this->isTXDataReady(ch))
        usleep(10);

    if(!this->isTXDataReady(ch))
        throw std::runtime_error("AXI RF Timestamping: Timed out waiting for TX data ready");
}
void AXIRFTStamp::waitRXDataReady(AXIRFTStamp::Channel ch, uint32_t timeout_ms)
{
    uint64_t timeout = (uint64_t)timeout_ms * 100ULL;

    while(--timeout && !this->isRXDataReady(ch))
        usleep(10);

    if(!this->isRXDataReady(ch))
        throw std::runtime_error("AXI RF Timestamping: Timed out waiting for RX data ready");
}

bool AXIRFTStamp::wasTXDMAReady(AXIRFTStamp::Channel ch)
{
    if(ch >= AXIRFTStamp::Channel::CH_MAX)
        throw std::invalid_argument("AXI RF Timestamping: Invalid channel number: " + std::to_string(ch) + " (Max = " + std::to_string(AXIRFTStamp::Channel::CH_MAX) + ")");

    return !!(this->readReg(AXI_RF_TSTAMP_REG_CH_OVR(ch)) & AXI_RF_TSTAMP_REG_CH_OVR_TX_DMA_RDY_STKY);
}
bool AXIRFTStamp::wasRXDMAReady(AXIRFTStamp::Channel ch)
{
    if(ch >= AXIRFTStamp::Channel::CH_MAX)
        throw std::invalid_argument("AXI RF Timestamping: Invalid channel number: " + std::to_string(ch) + " (Max = " + std::to_string(AXIRFTStamp::Channel::CH_MAX) + ")");

    return !!(this->readReg(AXI_RF_TSTAMP_REG_CH_OVR(ch)) & AXI_RF_TSTAMP_REG_CH_OVR_RX_DMA_XFER_REQ_STKY);
}
bool AXIRFTStamp::wasTXDataReady(AXIRFTStamp::Channel ch)
{
    if(ch >= AXIRFTStamp::Channel::CH_MAX)
        throw std::invalid_argument("AXI RF Timestamping: Invalid channel number: " + std::to_string(ch) + " (Max = " + std::to_string(AXIRFTStamp::Channel::CH_MAX) + ")");

    return !!(this->readReg(AXI_RF_TSTAMP_REG_CH_OVR(ch)) & AXI_RF_TSTAMP_REG_CH_OVR_TX_DATA_RDY_STKY);
}
bool AXIRFTStamp::wasRXDataReady(AXIRFTStamp::Channel ch)
{
    if(ch >= AXIRFTStamp::Channel::CH_MAX)
        throw std::invalid_argument("AXI RF Timestamping: Invalid channel number: " + std::to_string(ch) + " (Max = " + std::to_string(AXIRFTStamp::Channel::CH_MAX) + ")");

    return !!(this->readReg(AXI_RF_TSTAMP_REG_CH_OVR(ch)) & AXI_RF_TSTAMP_REG_CH_OVR_RX_DATA_RDY_STKY);
}