#include "xdmac.h"

static xdmac_ch_isr_t ppfChannelISR[XDMACCHID_NUMBER];

void ITCM_CODE _xdmac_isr()
{
    uint32_t ulFlags = XDMAC->XDMAC_GIS & XDMAC->XDMAC_GIM;

    for(uint8_t ubChannel = 0; ubChannel < XDMACCHID_NUMBER; ubChannel++)
    {
        if(!(ulFlags & BIT(ubChannel)))
            continue;

        uint32_t ulChannelFlags = XDMAC->XdmacChid[ubChannel].XDMAC_CIS & XDMAC->XdmacChid[ubChannel].XDMAC_CIM;

        if(ppfChannelISR[ubChannel])
            ppfChannelISR[ubChannel](ulChannelFlags);
    }
}

void xdmac_init()
{
    pmc_peripheral_clock_gate(XDMAC_CLOCK_ID, 1); // Enable peripheral clock

    for(uint8_t ubChannel = 0; ubChannel < XDMACCHID_NUMBER; ubChannel++)
    {
        REG_DISCARD(&(XDMAC->XdmacChid[ubChannel].XDMAC_CIS)); // Clear pensing interrupts
    }

    IRQ_CLEAR(XDMAC_IRQn); // Clear pending vector
    IRQ_SET_PRIO(XDMAC_IRQn, 4, 0); // Set priority 4,0
    IRQ_ENABLE(XDMAC_IRQn); // Enable vector
}

void xdmac_ch_set_isr(uint8_t ubChannel, xdmac_ch_isr_t pfISR)
{
    if(ubChannel >= XDMACCHID_NUMBER)
        return;

    ppfChannelISR[ubChannel] = pfISR;

    if(pfISR)
    {
        XDMAC->XdmacChid[ubChannel].XDMAC_CIE = XDMAC_CIE_MASK;
        XDMAC->XDMAC_GIE |= BIT(ubChannel);
    }
    else
    {
        XDMAC->XdmacChid[ubChannel].XDMAC_CIE = 0;
        XDMAC->XDMAC_GIE &= ~BIT(ubChannel);
    }
}
void xdmac_ch_load(uint8_t ubChannel, void *pDescriptor, uint8_t ubDescriptorView, uint8_t ubFetchInterface)
{
    if(ubChannel >= XDMACCHID_NUMBER)
        return;

    if(!pDescriptor)
        return;

    if(ubFetchInterface > 1)
        return;

    if(ubDescriptorView > 3)
        return;

    if((uint32_t)pDescriptor & 3) // Descriptors must be word aligned
        return;

    XDMAC->XdmacChid[ubChannel].XDMAC_CNDA = (uint32_t)pDescriptor | ubFetchInterface;
    XDMAC->XdmacChid[ubChannel].XDMAC_CNDC = (ubDescriptorView << 3) | XDMAC_CNDC_NDDUP | XDMAC_CNDC_NDSUP | XDMAC_CNDC_NDE;
}
void xdmac_ch_sw_req(uint8_t ubChannel)
{
    if(ubChannel >= XDMACCHID_NUMBER)
        return;

    XDMAC->XDMAC_GSWR = BIT(ubChannel);
}
void xdmac_ch_flush(uint8_t ubChannel)
{
    if(ubChannel >= XDMACCHID_NUMBER)
        return;

    XDMAC->XDMAC_GSWF = BIT(ubChannel);
}
void xdmac_ch_enable(uint8_t ubChannel)
{
    if(ubChannel >= XDMACCHID_NUMBER)
        return;

    if(XDMAC->XDMAC_GS & BIT(ubChannel))
        return;

    XDMAC->XDMAC_GE = BIT(ubChannel);

    while(!(XDMAC->XDMAC_GS & BIT(ubChannel)));
}
void xdmac_ch_disable(uint8_t ubChannel)
{
    if(ubChannel >= XDMACCHID_NUMBER)
        return;

    XDMAC->XDMAC_GD = BIT(ubChannel);

    while(XDMAC->XDMAC_GS & BIT(ubChannel));
}
void xdmac_ch_resume(uint8_t ubChannel)
{
    if(ubChannel >= XDMACCHID_NUMBER)
        return;

    XDMAC->XDMAC_GRWR = BIT(ubChannel);
}
void xdmac_ch_suspend(uint8_t ubChannel)
{
    if(ubChannel >= XDMACCHID_NUMBER)
        return;

    XDMAC->XDMAC_GRWS = BIT(ubChannel);
}
uint8_t xdmac_ch_get_busy(uint8_t ubChannel)
{
    if(ubChannel >= XDMACCHID_NUMBER)
        return 0;

    return !!(XDMAC->XdmacChid[ubChannel].XDMAC_CC & (XDMAC_CC_WRIP | XDMAC_CC_RDIP));
}
uint16_t xdmac_ch_get_remaining_xfers(uint8_t ubChannel)
{
    if(ubChannel >= XDMACCHID_NUMBER)
        return 0;

    while(1)
    {
        uint32_t ulNDA0 = XDMAC->XdmacChid[ubChannel].XDMAC_CNDA;
        uint32_t ulINITD0 = XDMAC->XdmacChid[ubChannel].XDMAC_CC & XDMAC_CC_INITD;
        uint32_t ulUBLEN = XDMAC->XdmacChid[ubChannel].XDMAC_CUBC;
        uint32_t ulINITD1 = XDMAC->XdmacChid[ubChannel].XDMAC_CC & XDMAC_CC_INITD;
        uint32_t ulNDA1 = XDMAC->XdmacChid[ubChannel].XDMAC_CNDA;

        if(ulNDA0 == ulNDA1 && ulINITD0 && ulINITD1)
            return ulUBLEN;
    }
}
void* xdmac_ch_get_next_src_addr(uint8_t ubChannel)
{
    if(ubChannel >= XDMACCHID_NUMBER)
        return NULL;

    return (void *)(XDMAC->XdmacChid[ubChannel].XDMAC_CSA);
}
void* xdmac_ch_get_next_dst_addr(uint8_t ubChannel)
{
    if(ubChannel >= XDMACCHID_NUMBER)
        return NULL;

    return (void *)(XDMAC->XdmacChid[ubChannel].XDMAC_CDA);
}