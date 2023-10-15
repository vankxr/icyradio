#include "AXIRFTStamp.hpp"

AXIRFTStamp::AXIRFTStamp(void *base_address, std::function<bool()> access_allowed_fn): AXIPeripheral(base_address)
{
    uint32_t version = this->getIPVersion();

    if(AXI_CORE_VERSION_MAJOR(version) < 1)
        throw std::runtime_error("AXI RF Timestamping Core v" + std::to_string(AXI_CORE_VERSION_MAJOR(version)) + "." + std::to_string(AXI_CORE_VERSION_MINOR(version)) + "." + std::to_string(AXI_CORE_VERSION_PATCH(version)) + " is not supported");

    this->init(access_allowed_fn);
}

void AXIRFTStamp::init(std::function<bool()> access_allowed_fn)
{
    this->access_allowed_fn = access_allowed_fn;
}

uint32_t AXIRFTStamp::getIPVersion()
{
    return this->readReg(AXI_RF_TSTAMP_REG_VERSION);
}

void AXIRFTStamp::enableTX(bool enable)
{
    std::lock_guard<std::mutex> lock(this->mutex);

    if(this->isTXCounterEnabled())
        throw std::runtime_error("AXI RF Timestamping: Cannot enable TX while TX counter is enabled");

    this->writeReg(AXI_RF_TSTAMP_REG_CTL_STAT, enable ? AXI_RF_TSTAMP_REG_CTL_STAT_TX_EN : AXI_RF_TSTAMP_REG_CTL_STAT_TX_DIS);
}
bool AXIRFTStamp::isTXEnabled()
{
    return !!(this->readReg(AXI_RF_TSTAMP_REG_CTL_STAT) & AXI_RF_TSTAMP_REG_CTL_STAT_TX_STAT);
}
void AXIRFTStamp::enableRX(bool enable)
{
    std::lock_guard<std::mutex> lock(this->mutex);

    if(this->isRXCounterEnabled())
        throw std::runtime_error("AXI RF Timestamping: Cannot enable RX while RX counter is enabled");

    this->writeReg(AXI_RF_TSTAMP_REG_CTL_STAT, enable ? AXI_RF_TSTAMP_REG_CTL_STAT_RX_EN : AXI_RF_TSTAMP_REG_CTL_STAT_RX_DIS);
}
bool AXIRFTStamp::isRXEnabled()
{
    return !!(this->readReg(AXI_RF_TSTAMP_REG_CTL_STAT) & AXI_RF_TSTAMP_REG_CTL_STAT_RX_STAT);
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
    this->writeReg(AXI_RF_TSTAMP_REG_CTL_STAT, enable ? AXI_RF_TSTAMP_REG_CTL_STAT_CNT_TX_EN : AXI_RF_TSTAMP_REG_CTL_STAT_CNT_TX_DIS);
}
bool AXIRFTStamp::isTXCounterEnabled()
{
    return !!(this->readReg(AXI_RF_TSTAMP_REG_CTL_STAT) & AXI_RF_TSTAMP_REG_CTL_STAT_CNT_TX_STAT);
}
void AXIRFTStamp::enableRXCounter(bool enable)
{
    this->writeReg(AXI_RF_TSTAMP_REG_CTL_STAT, enable ? AXI_RF_TSTAMP_REG_CTL_STAT_CNT_RX_EN : AXI_RF_TSTAMP_REG_CTL_STAT_CNT_RX_DIS);
}
bool AXIRFTStamp::isRXCounterEnabled()
{
    return !!(this->readReg(AXI_RF_TSTAMP_REG_CTL_STAT) & AXI_RF_TSTAMP_REG_CTL_STAT_CNT_RX_STAT);
}

void AXIRFTStamp::armCounterLatch(bool req_arm)
{
    this->writeReg(AXI_RF_TSTAMP_REG_CTL_STAT, req_arm ? AXI_RF_TSTAMP_REG_CTL_STAT_CNT_LATCH_ARM_REQ : AXI_RF_TSTAMP_REG_CTL_STAT_CNT_LATCH_ARM_UNREQ);
}
AXIRFTStamp::CounterLatchStatus AXIRFTStamp::getCounterLatchStatus()
{
    std::lock_guard<std::mutex> lock(this->mutex);

    uint32_t ctrl = this->readReg(AXI_RF_TSTAMP_REG_CTL_STAT);

    if(ctrl & AXI_RF_TSTAMP_REG_CTL_STAT_CNT_LATCH_VALID) // Latch valid
        return AXIRFTStamp::CounterLatchStatus::LATCH_VALID;

    if(ctrl & AXI_RF_TSTAMP_REG_CTL_STAT_CNT_LATCH_ARM_REQ_STAT) // Arm requested
    {
        if(ctrl & AXI_RF_TSTAMP_REG_CTL_STAT_CNT_LATCH_ARMED) // Already armed
            return AXIRFTStamp::CounterLatchStatus::LATCH_ARMED;

        return AXIRFTStamp::CounterLatchStatus::LATCH_ARM_REQUESTED;
    }

    return AXIRFTStamp::CounterLatchStatus::LATCH_UNARMED;
}

uint64_t AXIRFTStamp::getCounter()
{
    return this->readReg64(AXI_RF_TSTAMP_REG_CNT_LOW);
}
void AXIRFTStamp::setCounter(uint64_t val)
{
    std::lock_guard<std::mutex> lock(this->mutex);

    if(this->isCounterEnabled())
        throw std::runtime_error("AXI RF Timestamping: Cannot set counter while counter is enabled");

    this->writeReg64(AXI_RF_TSTAMP_REG_CNT_LOW, val);
}
uint64_t AXIRFTStamp::getTXCounter()
{
    return this->readReg64(AXI_RF_TSTAMP_REG_CNT_TX_LOW);
}
void AXIRFTStamp::setTXCounter(uint64_t val)
{
    std::lock_guard<std::mutex> lock(this->mutex);

    if(this->isTXCounterEnabled())
        throw std::runtime_error("AXI RF Timestamping: Cannot set TX counter while TX counter is enabled");

    this->writeReg64(AXI_RF_TSTAMP_REG_CNT_TX_LOW, val);
}
uint64_t AXIRFTStamp::getRXCounter()
{
    return this->readReg64(AXI_RF_TSTAMP_REG_CNT_RX_LOW);
}
void AXIRFTStamp::setRXCounter(uint64_t val)
{
    std::lock_guard<std::mutex> lock(this->mutex);

    if(this->isRXCounterEnabled())
        throw std::runtime_error("AXI RF Timestamping: Cannot set RX counter while RX counter is enabled");

    this->writeReg64(AXI_RF_TSTAMP_REG_CNT_RX_LOW, val);
}
uint64_t AXIRFTStamp::getCounterLatch()
{
    return this->readReg64(AXI_RF_TSTAMP_REG_CNT_LATCH_LOW);
}

uint32_t AXIRFTStamp::readReg(uint32_t offset)
{
    if(this->access_allowed_fn == nullptr || !this->access_allowed_fn())
        throw std::runtime_error("AXI RF Timestamping: Register access not allowed");

    return AXIPeripheral::readReg(offset);
}
uint64_t AXIRFTStamp::readReg64(uint32_t offset)
{
    if(this->access_allowed_fn == nullptr || !this->access_allowed_fn())
        throw std::runtime_error("AXI RF Timestamping: Register access not allowed");

    return AXIPeripheral::readReg64(offset);
}
void AXIRFTStamp::writeReg(uint32_t offset, uint32_t value)
{
    if(this->access_allowed_fn == nullptr || !this->access_allowed_fn())
        throw std::runtime_error("AXI RF Timestamping: Register access not allowed");

    AXIPeripheral::writeReg(offset, value);
}
void AXIRFTStamp::writeReg64(uint32_t offset, uint64_t value)
{
    if(this->access_allowed_fn == nullptr || !this->access_allowed_fn())
        throw std::runtime_error("AXI RF Timestamping: Register access not allowed");

    AXIPeripheral::writeReg64(offset, value);
}