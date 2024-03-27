#include "AXIDMAC.hpp"

void AXIDMAC::ISR(void *_this)
{
    if(_this == nullptr)
        return;

    (static_cast<AXIDMAC *>(_this))->handleIRQ();
}

void AXIDMAC::handleIRQ()
{
    std::unique_lock<std::recursive_mutex> lock(this->mutex);

    uint32_t pend = this->readReg(AXI_DMAC_REG_IRQ_PENDING);
    this->writeReg(AXI_DMAC_REG_IRQ_PENDING, pend); // Clear pending IRQs

    if(!(pend & AXI_DMAC_REG_IRQ_x_IRQ_XFER_COMPLETED))
        return;

    uint32_t done = this->readReg(AXI_DMAC_REG_XFER_DONE);

    for(uint8_t i = 0; i < AXI_DMAC_NUM_TRANSFERS; i++)
    {
        if((done & AXI_DMAC_REG_XFER_DONE_XFER_n_DONE(i)) && !this->transfer_done[i].exchange(true))
        {
            if(this->transfer_callback_done[i].exchange(false))
            {
                std::thread t(&AXIDMAC::callTransferCallback, this, this->transfers[i]);

                t.detach();
            }
        }
    }
}
void AXIDMAC::callTransferCallback(AXIDMAC::Transfer xfer)
{
    try
    {
        if(xfer.cb != nullptr)
            xfer.cb(xfer.cb_arg);
    }
    catch(...)
    {
        // Do nothing
    }

    this->transfer_callback_done[xfer.id] = true;
}

AXIDMAC::AXIDMAC(void *base_address, AXIDMAC::IRQConfig irq_config): AXIPeripheral(base_address)
{
    uint32_t version = this->getIPVersion();

    if(AXI_CORE_VERSION_MAJOR(version) < 4)
        throw std::runtime_error("AXI DMAC Core v" + std::to_string(AXI_CORE_VERSION_MAJOR(version)) + "." + std::to_string(AXI_CORE_VERSION_MINOR(version)) + "." + std::to_string(AXI_CORE_VERSION_PATCH(version)) + " is not supported");

    for(uint8_t i = 0; i < AXI_DMAC_NUM_TRANSFERS; i++)
    {
        this->transfers[i].cb = nullptr;
        this->transfer_done[i] = true;
        this->transfer_callback_done[i] = true;
    }

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

    this->irq_config.controller = nullptr;

    this->init(irq_config);
}
AXIDMAC::~AXIDMAC()
{
    if(this->irq_config.controller != nullptr)
    {
        this->irq_config.controller->setISR(this->irq_config.irq, nullptr);
        this->irq_config.controller->setIRQEnabled(this->irq_config.irq, false);
    }

    if(this->enabled())
    {
        this->unpause();
        this->waitIdle();
        this->disable();
    }

    for(uint8_t i = 0; i < AXI_DMAC_NUM_TRANSFERS; i++)
    {
        while(!this->transfer_callback_done[i].load())
            std::this_thread::yield();
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

    this->writeReg(AXI_DMAC_REG_IRQ_PENDING, 0xFFFFFFFF); // Clear all IRQs
    this->writeReg(AXI_DMAC_REG_IRQ_MASK, AXI_DMAC_REG_IRQ_x_IRQ_XFER_QUEUED); // Mask only the transfer queued IRQ
}

uint32_t AXIDMAC::getIPVersion()
{
    return this->readReg(AXI_DMAC_REG_VERSION);
}
uint32_t AXIDMAC::getPeripheralID()
{
    return this->readReg(AXI_DMAC_REG_PERI_ID);
}

AXIDMAC::Capabilities AXIDMAC::getCapabilities()
{
    return this->capabilities;
}

void AXIDMAC::enable(bool enable)
{
    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    uint32_t ctrl = this->readReg(AXI_DMAC_REG_CONTROL);

    if(enable)
        ctrl |= AXI_DMAC_REG_CONTROL_ENABLE;
    else
        ctrl &= ~(AXI_DMAC_REG_CONTROL_PAUSE | AXI_DMAC_REG_CONTROL_ENABLE);

    this->writeReg(AXI_DMAC_REG_CONTROL, ctrl);

    if(!enable)
    {
        for(uint8_t i = 0; i < AXI_DMAC_NUM_TRANSFERS; i++)
            this->transfer_done[i] = true;
    }
}
bool AXIDMAC::enabled()
{
    return !!(this->readReg(AXI_DMAC_REG_CONTROL) & AXI_DMAC_REG_CONTROL_ENABLE);
}
void AXIDMAC::pause(bool pause)
{
    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    uint32_t ctrl = this->readReg(AXI_DMAC_REG_CONTROL);

    if(pause)
        ctrl |= AXI_DMAC_REG_CONTROL_PAUSE;
    else
        ctrl &= ~AXI_DMAC_REG_CONTROL_PAUSE;

    this->writeReg(AXI_DMAC_REG_CONTROL, ctrl);
}
bool AXIDMAC::paused()
{
    return !!(this->readReg(AXI_DMAC_REG_CONTROL) & AXI_DMAC_REG_CONTROL_PAUSE);
}
bool AXIDMAC::idle()
{
    if(this->readReg(AXI_DMAC_REG_XFER_SUBMIT)) // No transfer slots available, means it is certainly not idle
        return false;

    return this->readReg(AXI_DMAC_REG_ACT_XFER_ID) == this->readReg(AXI_DMAC_REG_XFER_ID);
}
void AXIDMAC::waitIdle(uint32_t timeout_ms)
{
    uint64_t timeout = (uint64_t)timeout_ms * 10ULL;

    while(--timeout && !this->idle())
        usleep(100);

    if(!this->idle())
        throw std::runtime_error("AXI DMAC: Timed out waiting for controller to be idle");

    // Wait for all transfer callbacks to complete
    bool all_complete = false;

    while(--timeout && !all_complete)
    {
        all_complete = true;

        for(uint8_t i = 0; i < AXI_DMAC_NUM_TRANSFERS; i++)
        {
            if(!this->transfer_callback_done[i].load())
            {
                all_complete = false;

                break;
            }
        }

        if(all_complete)
            break;

        usleep(100);
    }

    if(!all_complete)
        throw std::runtime_error("AXI DMAC: Timed out waiting for transfer callbacks to complete");
}

void AXIDMAC::setTransferCallback(uint8_t id, AXIDMAC::Transfer::Callback callback, void *arg)
{
    if(id >= AXI_DMAC_NUM_TRANSFERS)
        throw std::invalid_argument("AXI DMAC: Invalid transfer ID");

    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    this->transfers[id].cb = callback;
    this->transfers[id].cb_arg = arg;
}
void AXIDMAC::submitTransfer(AXIDMAC::Transfer &transfer)
{
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

    std::lock_guard<std::recursive_mutex> lock(this->mutex);

    if(!this->enabled())
        throw std::runtime_error("AXI DMAC: Cannot submit transfer while disabled");

    bool available = !this->readReg(AXI_DMAC_REG_XFER_SUBMIT);

    if(!available)
        throw std::runtime_error("AXI DMAC: No available transfer slots");

    uint8_t id = this->readReg(AXI_DMAC_REG_XFER_ID);

    if(!this->transfer_callback_done[id].load())
        throw std::runtime_error("AXI DMAC: Transfer callback for transfer " + std::to_string(id) + " is still running");

    AXIDMAC::Transfer *xfer = &this->transfers[id];

    if(!this->transfer_done[id].load())
        throw std::runtime_error("AXI DMAC: Coherency error: transfer " + std::to_string(id) + " was not marked done in software");

    this->transfer_done[id] = false;

    xfer->id = id;
    xfer->size = transfer.size;
    xfer->flags = transfer.flags;
    xfer->src_addr = transfer.src_addr;
    xfer->dest_addr = transfer.dest_addr;
    xfer->cb = transfer.cb;
    xfer->cb_arg = transfer.cb_arg;

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

    transfer.id = id;
}
void AXIDMAC::waitTransferCompletion(uint8_t id, uint32_t timeout_ms)
{
    if(id >= AXI_DMAC_NUM_TRANSFERS)
        throw std::invalid_argument("AXI DMAC: Invalid transfer ID");

    uint64_t timeout = (uint64_t)timeout_ms * 1000ULL;

    bool done = this->transfer_done[id].load();

    while(--timeout && !done)
    {
        usleep(1);

        done = this->transfer_done[id].load();
    }

    if(!done)
        throw std::runtime_error("AXI DMAC: Timed out waiting for transfer " + std::to_string(id));
}