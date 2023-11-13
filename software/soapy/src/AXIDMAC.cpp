#include "AXIDMAC.hpp"

void AXIDMAC::ISR(void *_this)
{
    if(_this == nullptr)
        return;

    (static_cast<AXIDMAC *>(_this))->handleIRQ();
}
void AXIDMAC::handleIRQ()
{
    std::lock_guard<std::mutex> lock(this->mutex);

    uint32_t pend = this->readReg(AXI_DMAC_REG_IRQ_PENDING);
    this->writeReg(AXI_DMAC_REG_IRQ_PENDING, pend); // Clear pending IRQs

    if(!(pend & AXI_DMAC_REG_IRQ_x_IRQ_XFER_COMPLETED))
        return;

    uint32_t done = this->readReg(AXI_DMAC_REG_XFER_DONE);

    for(uint8_t i = 0; i < AXI_DMAC_NUM_TRANSFERS; i++)
    {
        if((done & AXI_DMAC_REG_XFER_DONE_XFER_n_DONE(i)) && !this->transfers[i].done)
        {
            this->transfers[i].done = true;

            if(this->transfers[i].callback)
                this->transfers[i].callback(this->transfers[i]);
        }
    }
}

AXIDMAC::AXIDMAC(void *base_address, AXIDMAC::IRQConfig irq_config): AXIPeripheral(base_address)
{
    uint32_t version = this->getIPVersion();

    if(AXI_CORE_VERSION_MAJOR(version) < 4)
        throw std::runtime_error("AXI DMAC Core v" + std::to_string(AXI_CORE_VERSION_MAJOR(version)) + "." + std::to_string(AXI_CORE_VERSION_MINOR(version)) + "." + std::to_string(AXI_CORE_VERSION_PATCH(version)) + " is not supported");

    this->irq_config = irq_config;

    for(uint8_t i = 0; i < AXI_DMAC_NUM_TRANSFERS; i++)
        this->transfers[i].done = true;

    // Detect capabilities
    uint32_t caps = this->readReg(AXI_DMAC_REG_INTF_DESC);

    this->capabilities.dest_data_width = 1 << (((caps >> 0) & 0x0F) + 3);
    this->capabilities.dest_interface = (AXIDMAC::InterfaceType)((caps >> 4) & 0x03);
    this->capabilities.src_data_width = 1 << (((caps >> 8) & 0x0F) + 3);
    this->capabilities.src_interface = (AXIDMAC::InterfaceType)((caps >> 12) & 0x03);
    this->capabilities.bytes_per_burst = 1 << ((caps >> 16) & 0x0F);

    uint32_t reg_restore;
    uint32_t reg_val;

    // Cyclic transfers
    reg_restore = this->readReg(AXI_DMAC_REG_FLAGS);
    this->writeReg(AXI_DMAC_REG_FLAGS, AXI_DMAC_REG_FLAGS_CYCLIC);
    reg_val = this->readReg(AXI_DMAC_REG_FLAGS);
    this->writeReg(AXI_DMAC_REG_FLAGS, reg_restore);

    this->capabilities.cyclic_support = (reg_val == AXI_DMAC_REG_FLAGS_CYCLIC) ? true : false;

    // Maximum transfer size
    reg_restore = this->readReg(AXI_DMAC_REG_X_LENGTH);
    this->writeReg(AXI_DMAC_REG_X_LENGTH, 0xFFFFFFFF);
    reg_val = this->readReg(AXI_DMAC_REG_X_LENGTH);
    this->writeReg(AXI_DMAC_REG_X_LENGTH, reg_restore);

    this->capabilities.max_transfer_size = reg_val + 1;

    // Address masks
    uint8_t mode = 0;

    reg_restore = this->readReg(AXI_DMAC_REG_DEST_ADDRESS);
    this->writeReg(AXI_DMAC_REG_DEST_ADDRESS, 0xFFFFFFFC);
    reg_val = this->readReg(AXI_DMAC_REG_DEST_ADDRESS);
    this->writeReg(AXI_DMAC_REG_DEST_ADDRESS, reg_restore);

    this->capabilities.dest_addr_mask = 0;

    if(reg_val)
    {
        mode |= BIT(0);

        this->capabilities.dest_addr_mask = reg_val;
    }

    reg_restore = this->readReg(AXI_DMAC_REG_SRC_ADDRESS);
    this->writeReg(AXI_DMAC_REG_SRC_ADDRESS, 0xFFFFFFFC);
    reg_val = this->readReg(AXI_DMAC_REG_SRC_ADDRESS);
    this->writeReg(AXI_DMAC_REG_SRC_ADDRESS, reg_restore);

    this->capabilities.src_addr_mask = 0;

    if(reg_val)
    {
        mode |= BIT(1);

        this->capabilities.src_addr_mask = reg_val;
    }

    this->capabilities.transfer_mode = (AXIDMAC::TransferMode)mode;

    this->init(irq_config);
}
AXIDMAC::~AXIDMAC()
{
    if(this->irq_config.controller != nullptr)
    {
        this->irq_config.controller->setISR(this->irq_config.irq, nullptr);
        this->irq_config.controller->setIRQEnabled(this->irq_config.irq, false);
    }
}

void AXIDMAC::init(AXIDMAC::IRQConfig irq_config)
{
    if(this->irq_config.controller != nullptr)
        throw std::runtime_error("AXI DMAC: Already initialized");

    if(irq_config.controller == nullptr) // Current implementation requires IRQ support
        return;

    this->irq_config = irq_config;

    this->irq_config.controller->setISR(this->irq_config.irq, AXIDMAC::ISR, static_cast<void *>(this));
    this->irq_config.controller->setIRQEnabled(this->irq_config.irq, true);
    this->irq_config.controller->setIRQPending(this->irq_config.irq, false);

    this->writeReg(AXI_DMAC_REG_IRQ_MASK, AXI_DMAC_REG_IRQ_x_IRQ_XFER_QUEUED); // Mask only the transfer queued IRQ
}

uint32_t AXIDMAC::getIPVersion()
{
    return this->readReg(AXI_DMAC_REG_VERSION);
}

AXIDMAC::Capabilities AXIDMAC::getCapabilities()
{
    return this->capabilities;
}

void AXIDMAC::enable(bool enable)
{
    std::lock_guard<std::mutex> lock(this->mutex);

    uint32_t ctrl = this->readReg(AXI_DMAC_REG_CONTROL);

    if(enable)
    {
        if(ctrl & AXI_DMAC_REG_CONTROL_ENABLE)
            throw std::runtime_error("AXI DMAC: Already enabled");

        ctrl |= AXI_DMAC_REG_CONTROL_ENABLE;
    }
    else
    {
        if(!(ctrl & AXI_DMAC_REG_CONTROL_ENABLE))
            throw std::runtime_error("AXI DMAC: Already disabled");

        ctrl &= ~AXI_DMAC_REG_CONTROL_ENABLE;
    }

    this->writeReg(AXI_DMAC_REG_CONTROL, ctrl);
}
bool AXIDMAC::enabled()
{
    std::lock_guard<std::mutex> lock(this->mutex);

    return !!(this->readReg(AXI_DMAC_REG_CONTROL) & AXI_DMAC_REG_CONTROL_ENABLE);
}
void AXIDMAC::pause(bool pause)
{
    std::lock_guard<std::mutex> lock(this->mutex);

    uint32_t ctrl = this->readReg(AXI_DMAC_REG_CONTROL);

    if(pause)
    {
        if(ctrl & AXI_DMAC_REG_CONTROL_PAUSE)
            throw std::runtime_error("AXI DMAC: Already paused");

        ctrl |= AXI_DMAC_REG_CONTROL_PAUSE;
    }
    else
    {
        if(!(ctrl & AXI_DMAC_REG_CONTROL_PAUSE))
            throw std::runtime_error("AXI DMAC: Already unpaused");

        ctrl &= ~AXI_DMAC_REG_CONTROL_PAUSE;
    }

    this->writeReg(AXI_DMAC_REG_CONTROL, ctrl);
}
bool AXIDMAC::paused()
{
    std::lock_guard<std::mutex> lock(this->mutex);

    return !!(this->readReg(AXI_DMAC_REG_CONTROL) & AXI_DMAC_REG_CONTROL_PAUSE);
}
bool AXIDMAC::idle()
{
    std::lock_guard<std::mutex> lock(this->mutex);

    return this->readReg(AXI_DMAC_REG_ACT_XFER_ID) == this->readReg(AXI_DMAC_REG_XFER_ID);
}

uint8_t AXIDMAC::submitTransfer(AXIDMAC::Transfer transfer)
{
    if(!this->enabled())
        throw std::runtime_error("AXI DMAC: Cannot submit transfer while disabled");

    if(transfer.flags & AXIDMAC::Transfer::Flags::CYCLIC)
    {
        if(!this->capabilities.cyclic_support)
            throw std::runtime_error("AXI DMAC: Cyclic transfers are not supported");

        if(this->capabilities.transfer_mode != AXIDMAC::TransferMode::MEM_TO_DEV)
            throw std::runtime_error("AXI DMAC: Cyclic transfers are only supported in memory to device mode");
    }

    if((this->capabilities.transfer_mode & AXIDMAC::TransferMode::DEV_TO_MEM) && (transfer.dest_addr & ~this->capabilities.dest_addr_mask))
        throw std::runtime_error("AXI DMAC: Destination address 0x" + std::to_string(transfer.dest_addr) + " is out of range (mask: 0x" + std::to_string(this->capabilities.dest_addr_mask) + ")");

    if((this->capabilities.transfer_mode & AXIDMAC::TransferMode::MEM_TO_DEV) && (transfer.src_addr & ~this->capabilities.src_addr_mask))
        throw std::runtime_error("AXI DMAC: Source address 0x" + std::to_string(transfer.src_addr) + " is out of range (mask: 0x" + std::to_string(this->capabilities.src_addr_mask) + ")");

    if(transfer.size > this->capabilities.max_transfer_size)
        throw std::runtime_error("AXI DMAC: Transfer length " + std::to_string(transfer.size) + " is out of range (max: " + std::to_string(this->capabilities.max_transfer_size) + ")");

    std::lock_guard<std::mutex> lock(this->mutex);

    bool available = !!this->readReg(AXI_DMAC_REG_XFER_SUBMIT);

    if(!available)
        throw std::runtime_error("AXI DMAC: No available transfer slots");

    uint8_t id = this->readReg(AXI_DMAC_REG_XFER_ID);
    AXIDMAC::Transfer *xfer = &this->transfers[id];

    if(!xfer->done)
        throw std::runtime_error("AXI DMAC: Coherency error: transfer " + std::to_string(id) + " was not marked done in software");

    xfer->id = id;
    xfer->done = false;
    xfer->size = transfer.size;
    xfer->flags = transfer.flags;
    xfer->src_addr = transfer.src_addr;
    xfer->dest_addr = transfer.dest_addr;
    xfer->callback = transfer.callback;
    xfer->arg = transfer.arg;

    this->writeReg(AXI_DMAC_REG_FLAGS, transfer.flags);

    if(this->capabilities.transfer_mode & AXIDMAC::TransferMode::DEV_TO_MEM)
    {
        this->writeReg(AXI_DMAC_REG_DEST_ADDRESS, transfer.dest_addr);
        this->writeReg(AXI_DMAC_REG_DEST_STRIDE, 0);
    }

    if(this->capabilities.transfer_mode & AXIDMAC::TransferMode::MEM_TO_DEV)
    {
        this->writeReg(AXI_DMAC_REG_SRC_ADDRESS, transfer.src_addr);
        this->writeReg(AXI_DMAC_REG_SRC_STRIDE, 0);
    }

    this->writeReg(AXI_DMAC_REG_X_LENGTH, transfer.size - 1);
    this->writeReg(AXI_DMAC_REG_Y_LENGTH, 0);

    this->writeReg(AXI_DMAC_REG_XFER_SUBMIT, 1); // Submit the transfer

    return id;
}
void AXIDMAC::waitTransferCompletion(uint8_t id, uint32_t timeout_ms)
{
    if(id >= AXI_DMAC_NUM_TRANSFERS)
        throw std::invalid_argument("AXI DMAC: Invalid transfer ID");

    AXIDMAC::Transfer *xfer = &this->transfers[id];

    uint64_t timeout = (uint64_t)timeout_ms * 10ULL;

    while(--timeout && !xfer->done)
        usleep(100);

    if(!xfer->done)
        throw std::runtime_error("AXI DMAC: Timed out waiting for transfer " + std::to_string(id));
}