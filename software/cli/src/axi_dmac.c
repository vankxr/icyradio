#include "axi_dmac.h"

static enum axi_irq_ctrl_irq_num eAXIDMACIRQNum[AXI_DMAC_NUM_INSTANCES] = {AXI_IRQ_CTRL_IRQ_NUM_AXI_DMAC_RF_RX, AXI_IRQ_CTRL_IRQ_NUM_AXI_DMAC_RF_TX, AXI_IRQ_CTRL_IRQ_NUM_AXI_DMAC_I2S_RX, AXI_IRQ_CTRL_IRQ_NUM_AXI_DMAC_I2S_TX};
static axi_dmac_transfer_t sAXIDMACTransfer[AXI_DMAC_NUM_INSTANCES][AXI_DMAC_NUM_TRANSFERS];
static axi_dmac_caps_t sAXIDMACCaps[AXI_DMAC_NUM_INSTANCES];

static void axi_dmac_reg_write(uint8_t ubInst, uint32_t ulRegister, uint32_t ulValue)
{
    *(volatile uint32_t *)((uintptr_t)pAXIDMACBase[ubInst] + ulRegister) = ulValue;
}
static uint32_t axi_dmac_reg_read(uint8_t ubInst, uint32_t ulRegister)
{
    return *(volatile uint32_t *)((uintptr_t)pAXIDMACBase[ubInst] + ulRegister);
}

static void axi_dmac_isr(void *pArg)
{
    uint8_t ubInst = (uint8_t)(uintptr_t)pArg;

    if(ubInst >= AXI_DMAC_NUM_INSTANCES)
        return;

    uint32_t ulSource = axi_dmac_reg_read(ubInst, AXI_DMAC_REG_IRQ_PENDING);
    axi_dmac_reg_write(ubInst, AXI_DMAC_REG_IRQ_PENDING, ulSource); // Clear pending IRQs

    if(ulSource & AXI_DMAC_REG_IRQ_x_IRQ_XFER_COMPLETED)
    {
        uint32_t ulXferDone = axi_dmac_reg_read(ubInst, AXI_DMAC_REG_XFER_DONE);

        for(uint8_t i = 0; i < AXI_DMAC_NUM_TRANSFERS; i++)
        {
            if((ulXferDone & AXI_DMAC_REG_XFER_DONE_XFER_n_DONE(i)) && !sAXIDMACTransfer[ubInst][i].ubDone)
            {
                sAXIDMACTransfer[ubInst][i].ubDone = 1;

                if(sAXIDMACTransfer[ubInst][i].pfCallback)
                    sAXIDMACTransfer[ubInst][i].pfCallback(sAXIDMACTransfer[ubInst][i].pCallbackArg);
            }
        }
    }
}

uint8_t axi_dmac_init(uint8_t ubInst)
{
    uint32_t ulVersion = axi_dmac_get_core_version(ubInst);
    uint32_t ulID = axi_dmac_reg_read(ubInst, AXI_DMAC_REG_PERI_ID);

    DBGPRINTLN_CTX("Found AXI DMAC Core v%d.%d.%d (ID: %u)", AXI_CORE_VERSION_MAJOR(ulVersion), AXI_CORE_VERSION_MINOR(ulVersion), AXI_CORE_VERSION_PATCH(ulVersion), ulID);

    uint32_t ulName = axi_dmac_reg_read(ubInst, AXI_DMAC_REG_ID);

    if(ulName != 0x444D4143) // 'D' 'M' 'A' 'C'
    {
        DBGPRINTLN_CTX("Unrecognized AXI DMAC Core (ID: %08X - %c%c%c%c)", ulName, (ulName >> 24) & 0xFF, (ulName >> 16) & 0xFF, (ulName >> 8) & 0xFF, ulName & 0xFF);

        return 0;
    }

    uint32_t ulCaps = axi_dmac_reg_read(ubInst, AXI_DMAC_REG_INTF_DESC);
    static const char* ppszInterfaceType[] = {"AXI MM", "AXI Stream", "FIFO"};

    sAXIDMACCaps[ubInst].ulDestDataWidth = 1 << (((ulCaps >> 0) & 0x0F) + 3);
    sAXIDMACCaps[ubInst].eDestInterface = (enum axi_dmac_interface_type)((ulCaps >> 4) & 0x03);
    sAXIDMACCaps[ubInst].ulSrcDataWidth = 1 << (((ulCaps >> 8) & 0x0F) + 3);
    sAXIDMACCaps[ubInst].eSrcInterface = (enum axi_dmac_interface_type)((ulCaps >> 12) & 0x03);
    sAXIDMACCaps[ubInst].usBytesPerBurst = 1 << ((ulCaps >> 16) & 0x0F);

    DBGPRINTLN_CTX("Configuration / Capabilities:");
    DBGPRINTLN_CTX("  Destination data bus width: %u bits", sAXIDMACCaps[ubInst].ulDestDataWidth);
    DBGPRINTLN_CTX("  Destination interface: %s", ppszInterfaceType[sAXIDMACCaps[ubInst].eDestInterface]);
    DBGPRINTLN_CTX("  Source data bus width: %u bits", sAXIDMACCaps[ubInst].ulSrcDataWidth);
    DBGPRINTLN_CTX("  Source interface: %s", ppszInterfaceType[sAXIDMACCaps[ubInst].eSrcInterface]);
    DBGPRINTLN_CTX("  Bytes per burst: %u", sAXIDMACCaps[ubInst].usBytesPerBurst);

    uint32_t ulRegRestore;
    uint32_t ulRegVal;

    ulRegRestore = axi_dmac_reg_read(ubInst, AXI_DMAC_REG_FLAGS);
    axi_dmac_reg_write(ubInst, AXI_DMAC_REG_FLAGS, AXI_DMAC_REG_FLAGS_CYCLIC);
    ulRegVal = axi_dmac_reg_read(ubInst, AXI_DMAC_REG_FLAGS);
    axi_dmac_reg_write(ubInst, AXI_DMAC_REG_FLAGS, ulRegRestore);

    sAXIDMACCaps[ubInst].ubCyclicSupport = (ulRegVal == AXI_DMAC_REG_FLAGS_CYCLIC) ? 1 : 0;

    DBGPRINTLN_CTX("  Cyclic transfers: %s", sAXIDMACCaps[ubInst].ubCyclicSupport ? "Supported" : "Not supported");

    ulRegRestore = axi_dmac_reg_read(ubInst, AXI_DMAC_REG_X_LENGTH);
    axi_dmac_reg_write(ubInst, AXI_DMAC_REG_X_LENGTH, 0xFFFFFFFF);
    ulRegVal = axi_dmac_reg_read(ubInst, AXI_DMAC_REG_X_LENGTH);
    axi_dmac_reg_write(ubInst, AXI_DMAC_REG_X_LENGTH, ulRegRestore);

    sAXIDMACCaps[ubInst].ulMaxTransferSize = ulRegVal + 1;

    DBGPRINTLN_CTX("  Maximum transfer length: %u bytes", sAXIDMACCaps[ubInst].ulMaxTransferSize);

    uint8_t ubMode = 0;
    static const char* ppszMode[] = {"Device to Device", "Device to Memory", "Memory to Device", "Memory to Memory"};

    ulRegRestore = axi_dmac_reg_read(ubInst, AXI_DMAC_REG_DEST_ADDRESS);
    axi_dmac_reg_write(ubInst, AXI_DMAC_REG_DEST_ADDRESS, 0xFFFFFFFC);
    ulRegVal = axi_dmac_reg_read(ubInst, AXI_DMAC_REG_DEST_ADDRESS);
    axi_dmac_reg_write(ubInst, AXI_DMAC_REG_DEST_ADDRESS, ulRegRestore);

    sAXIDMACCaps[ubInst].ulDestAddressMask = 0;

    if(ulRegVal)
    {
        ubMode |= BIT(0);

        sAXIDMACCaps[ubInst].ulDestAddressMask = ulRegVal;

        DBGPRINTLN_CTX("  Destination address mask: 0x%08X", sAXIDMACCaps[ubInst].ulDestAddressMask);
    }

    ulRegRestore = axi_dmac_reg_read(ubInst, AXI_DMAC_REG_SRC_ADDRESS);
    axi_dmac_reg_write(ubInst, AXI_DMAC_REG_SRC_ADDRESS, 0xFFFFFFFC);
    ulRegVal = axi_dmac_reg_read(ubInst, AXI_DMAC_REG_SRC_ADDRESS);
    axi_dmac_reg_write(ubInst, AXI_DMAC_REG_SRC_ADDRESS, ulRegRestore);

    sAXIDMACCaps[ubInst].ulSrcAddressMask = 0;

    if(ulRegVal)
    {
        ubMode |= BIT(1);

        sAXIDMACCaps[ubInst].ulSrcAddressMask = ulRegVal;

        DBGPRINTLN_CTX("  Source address mask: 0x%08X", sAXIDMACCaps[ubInst].ulSrcAddressMask);
    }

    sAXIDMACCaps[ubInst].eTransferMode = (enum axi_dmac_transfer_mode)ubMode;

    DBGPRINTLN_CTX("  Transfer mode: %s", ppszMode[ubMode]);

    if(ubMode == 0)
    {
        DBGPRINTLN_CTX("AXI DMAC Core does not support AXI MM in source neither destination");

        return 0;
    }

    for(uint8_t i = 0; i < AXI_DMAC_NUM_TRANSFERS; i++)
        sAXIDMACTransfer[ubInst][i].ubDone = 1;

    if(!axi_irq_ctrl_irq_set_isr(eAXIDMACIRQNum[ubInst], axi_dmac_isr, (void *)(uintptr_t)ubInst))
    {
        DBGPRINTLN_CTX("Failed to set IRQ handler");

        return 0;
    }

    axi_dmac_reg_write(ubInst, AXI_DMAC_REG_IRQ_MASK, AXI_DMAC_REG_IRQ_x_IRQ_XFER_QUEUED); // Mask only the transfer queued IRQ

    return 1;
}

uint32_t axi_dmac_get_core_version(uint8_t ubInst)
{
    return axi_dmac_reg_read(ubInst, AXI_DMAC_REG_VERSION);
}
axi_dmac_caps_t axi_dmac_get_capabilities(uint8_t ubInst)
{
    return sAXIDMACCaps[ubInst];
}

uint8_t axi_dmac_enable(uint8_t ubInst, uint8_t ubEnable)
{
    uint32_t ulReg = axi_dmac_reg_read(ubInst, AXI_DMAC_REG_CONTROL);

    if(ubEnable)
    {
        if(ulReg & AXI_DMAC_REG_CONTROL_ENABLE)
            return 0;

        ulReg |= AXI_DMAC_REG_CONTROL_ENABLE;
    }
    else
    {
        if(!(ulReg & AXI_DMAC_REG_CONTROL_ENABLE))
            return 0;

        ulReg &= ~AXI_DMAC_REG_CONTROL_ENABLE;
    }

    axi_dmac_reg_write(ubInst, AXI_DMAC_REG_CONTROL, ulReg);

    return 1;
}
uint8_t axi_dmac_enabled(uint8_t ubInst)
{
    return axi_dmac_reg_read(ubInst, AXI_DMAC_REG_CONTROL) & AXI_DMAC_REG_CONTROL_ENABLE;
}
uint8_t axi_dmac_pause(uint8_t ubInst, uint8_t ubPause)
{
    uint32_t ulReg = axi_dmac_reg_read(ubInst, AXI_DMAC_REG_CONTROL);

    if(ubPause)
    {
        if(ulReg & AXI_DMAC_REG_CONTROL_PAUSE)
            return 0;

        ulReg |= AXI_DMAC_REG_CONTROL_PAUSE;
    }
    else
    {
        if(!(ulReg & AXI_DMAC_REG_CONTROL_PAUSE))
            return 0;

        ulReg &= ~AXI_DMAC_REG_CONTROL_PAUSE;
    }

    axi_dmac_reg_write(ubInst, AXI_DMAC_REG_CONTROL, ulReg);

    return 1;
}
uint8_t axi_dmac_paused(uint8_t ubInst)
{
    return axi_dmac_reg_read(ubInst, AXI_DMAC_REG_CONTROL) & AXI_DMAC_REG_CONTROL_PAUSE;
}
uint8_t axi_dmac_idle(uint8_t ubInst)
{
    return axi_dmac_reg_read(ubInst, AXI_DMAC_REG_ACT_XFER_ID) == axi_dmac_reg_read(ubInst, AXI_DMAC_REG_XFER_ID);
}

int8_t axi_dmac_transfer_submit(uint8_t ubInst, axi_dmac_transfer_t *pTransfer)
{
    if(!pTransfer)
        return -1;

    if(!axi_dmac_enabled(ubInst))
    {
        DBGPRINTLN_CTX("(#%hhu) DMA is not enabled", ubInst);

        return -1;
    }

    axi_dmac_caps_t sCaps = axi_dmac_get_capabilities(ubInst);

    // Validate transfer parameters
    if((pTransfer->eFlags & AXI_DMAC_FLAGS_CYCLIC))
    {
        if(!sCaps.ubCyclicSupport)
        {
            DBGPRINTLN_CTX("(#%hhu) Cyclic transfers are not supported", ubInst);

            return -1;
        }

        if(sCaps.eTransferMode != AXI_DMAC_MODE_MEM_TO_DEV)
        {
            DBGPRINTLN_CTX("(#%hhu) Cyclic transfers are only supported in memory to device mode", ubInst);

            return -1;
        }
    }

    if((sCaps.eTransferMode & AXI_DMAC_MODE_DEV_TO_MEM) && pTransfer->ulDestAddress & ~sCaps.ulDestAddressMask)
    {
        DBGPRINTLN_CTX("(#%hhu) Destination address 0x%08X is out of range (mask: 0x%08X)", ubInst, pTransfer->ulDestAddress, sCaps.ulDestAddressMask);

        return -1;
    }

    if((sCaps.eTransferMode & AXI_DMAC_MODE_MEM_TO_DEV) && pTransfer->ulSrcAddress & ~sCaps.ulSrcAddressMask)
    {
        DBGPRINTLN_CTX("(#%hhu) Source address 0x%08X is out of range (mask: 0x%08X)", ubInst, pTransfer->ulSrcAddress, sCaps.ulSrcAddressMask);

        return -1;
    }

    if(pTransfer->ulSize > sCaps.ulMaxTransferSize)
    {
        DBGPRINTLN_CTX("(#%hhu) Transfer length %u is out of range (max: %u)", ubInst, pTransfer->ulSize, sCaps.ulMaxTransferSize);

        return -1;
    }

    // Find an available transfer slot
    uint8_t ubAvailable = !axi_dmac_reg_read(ubInst, AXI_DMAC_REG_XFER_SUBMIT);

    if(!ubAvailable)
    {
        DBGPRINTLN_CTX("(#%hhu) No available transfer slots", ubInst);

        return -1;
    }

    uint8_t ubXferID = axi_dmac_reg_read(ubInst, AXI_DMAC_REG_XFER_ID);

    axi_dmac_transfer_t *pXfer = &sAXIDMACTransfer[ubInst][ubXferID];

    if(!pXfer->ubDone)
    {
        DBGPRINTLN_CTX("(#%hhu) Coherency error: transfer %u was not marked done in software", ubInst, ubXferID);

        return -1;
    }

    pXfer->ulSize = pTransfer->ulSize;
    pXfer->eFlags = pTransfer->eFlags;
    pXfer->ulSrcAddress = pTransfer->ulSrcAddress;
    pXfer->ulDestAddress = pTransfer->ulDestAddress;
    pXfer->pfCallback = pTransfer->pfCallback;
    pXfer->pCallbackArg = pTransfer->pCallbackArg;

    axi_dmac_reg_write(ubInst, AXI_DMAC_REG_FLAGS, pTransfer->eFlags);

    if(sCaps.eTransferMode & AXI_DMAC_MODE_DEV_TO_MEM)
    {
        axi_dmac_reg_write(ubInst, AXI_DMAC_REG_DEST_ADDRESS, pTransfer->ulDestAddress);
        axi_dmac_reg_write(ubInst, AXI_DMAC_REG_DEST_STRIDE, 0);
    }

    if(sCaps.eTransferMode & AXI_DMAC_MODE_MEM_TO_DEV)
    {
        axi_dmac_reg_write(ubInst, AXI_DMAC_REG_SRC_ADDRESS, pTransfer->ulSrcAddress);
        axi_dmac_reg_write(ubInst, AXI_DMAC_REG_SRC_STRIDE, 0);
    }

    axi_dmac_reg_write(ubInst, AXI_DMAC_REG_X_LENGTH, pTransfer->ulSize - 1);
    axi_dmac_reg_write(ubInst, AXI_DMAC_REG_Y_LENGTH, 0);

    axi_dmac_reg_write(ubInst, AXI_DMAC_REG_XFER_SUBMIT, 1); // Submit the transfer
    pXfer->ubDone = 0;

    return ubXferID;
}
uint8_t axi_dmac_transfer_wait_completion(uint8_t ubInst, uint8_t ubTransferID, uint32_t ulTimeoutMs)
{
    if(ubTransferID >= AXI_DMAC_NUM_TRANSFERS)
        return 0;

    axi_dmac_transfer_t *pXfer = &sAXIDMACTransfer[ubInst][ubTransferID];

    // if(pXfer->ubDone)
    //     return 1;

    // uint32_t ulReg = axi_dmac_reg_read(ubInst, AXI_DMAC_REG_XFER_DONE);
    uint64_t ullTimeoutUs = (uint64_t)ulTimeoutMs * 1000ULL;

    // while(--ullTimeoutUs && !(ulReg & AXI_DMAC_REG_XFER_DONE_XFER_n_DONE(ubTransferID)))
    while(--ullTimeoutUs && !pXfer->ubDone)
    {
        usleep(1);

        // ulReg = axi_dmac_reg_read(ubInst, AXI_DMAC_REG_XFER_DONE);
    }

    // if(!(ulReg & AXI_DMAC_REG_XFER_DONE_XFER_n_DONE(ubTransferID)))
    if(!pXfer->ubDone)
    {
        DBGPRINTLN_CTX("(#%hhu) Timed out waiting for transfer %u", ubInst, ubTransferID);

        return 0;
    }

    // pXfer->ubDone = 1;

    return 1;
}