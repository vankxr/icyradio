#include "ldma.h"

static ldma_ch_isr_t ppfChannelISR[DMA_CHAN_COUNT];

void _ldma_isr()
{
    uint32_t ulFlags = LDMA->IFC;

    if(ulFlags & LDMA_IFC_ERROR)
    {
        uint8_t ubErrorChannel = (LDMA->STATUS & _LDMA_STATUS_CHERROR_MASK) << _LDMA_STATUS_CHERROR_SHIFT;

        if(ppfChannelISR[ubErrorChannel])
            ppfChannelISR[ubErrorChannel](1);
    }

    for(uint8_t ubChannel = 0; ubChannel < DMA_CHAN_COUNT; ubChannel++)
    {
        if(!(ulFlags & BIT(ubChannel)))
            continue;

        if(ppfChannelISR[ubChannel])
            ppfChannelISR[ubChannel](0);
    }
}

void ldma_init()
{
    CMU->HFBUSCLKEN0 |= CMU_HFBUSCLKEN0_LDMA;

    LDMA->IFC = _LDMA_IFC_MASK; // Clear all flags
    IRQ_CLEAR(LDMA_IRQn); // Clear pending vector
    IRQ_SET_PRIO(LDMA_IRQn, 2, 0); // Set priority 2,0
    IRQ_ENABLE(LDMA_IRQn); // Enable vector
    LDMA->IEN = _LDMA_IEN_MASK; // Enable all channel flags
}

void ldma_sync_set(uint8_t ubMask)
{
    PERI_REG_BIT_SET(&(LDMA->SYNC)) = ubMask;
}
void ldma_sync_clear(uint8_t ubMask)
{
    PERI_REG_BIT_CLEAR(&(LDMA->SYNC)) = ubMask;
}

void ldma_ch_config(uint8_t ubChannel, uint32_t ulSource, uint32_t ulSrcIncSign, uint32_t ulDstIncSign, uint32_t ulArbitrationSlots, uint8_t ubLoopCount)
{
    if(ubChannel >= DMA_CHAN_COUNT)
        return;

    LDMA->CH[ubChannel].REQSEL = ulSource;
    LDMA->CH[ubChannel].CFG = ulDstIncSign | ulSrcIncSign | ulArbitrationSlots;
    LDMA->CH[ubChannel].LOOP = ubLoopCount;
}
void ldma_ch_set_isr(uint8_t ubChannel, ldma_ch_isr_t pfISR)
{
    if(ubChannel >= DMA_CHAN_COUNT)
        return;

    ppfChannelISR[ubChannel] = pfISR;
}
void ldma_ch_load(uint8_t ubChannel, ldma_descriptor_t *pDescriptor)
{
    if(ubChannel >= DMA_CHAN_COUNT)
        return;

    if(!pDescriptor)
        return;

    if((uint32_t)pDescriptor & 3) // Descriptors must be word aligned
        return;

    LDMA->CH[ubChannel].LINK = (uint32_t)pDescriptor | LDMA_CH_LINK_LINK;

    PERI_REG_BIT_CLEAR(&(LDMA->CHDONE)) = BIT(ubChannel);
    LDMA->LINKLOAD = BIT(ubChannel);
}
void ldma_ch_sw_req(uint8_t ubChannel)
{
    if(ubChannel >= DMA_CHAN_COUNT)
        return;

    LDMA->SWREQ = BIT(ubChannel);
}
void ldma_ch_enable(uint8_t ubChannel)
{
    if(ubChannel >= DMA_CHAN_COUNT)
        return;

    PERI_REG_BIT_SET(&(LDMA->CHEN)) = BIT(ubChannel);
}
void ldma_ch_disable(uint8_t ubChannel)
{
    if(ubChannel >= DMA_CHAN_COUNT)
        return;

    PERI_REG_BIT_CLEAR(&(LDMA->CHEN)) = BIT(ubChannel);
}
void ldma_ch_peri_req_enable(uint8_t ubChannel)
{
    if(ubChannel >= DMA_CHAN_COUNT)
        return;

    PERI_REG_BIT_CLEAR(&(LDMA->REQDIS)) = BIT(ubChannel);
}
void ldma_ch_peri_req_disable(uint8_t ubChannel)
{
    if(ubChannel >= DMA_CHAN_COUNT)
        return;

    PERI_REG_BIT_SET(&(LDMA->REQDIS)) = BIT(ubChannel);
}
void ldma_ch_req_clear(uint8_t ubChannel)
{
    if(ubChannel >= DMA_CHAN_COUNT)
        return;

    LDMA->REQCLEAR = BIT(ubChannel);
}
uint8_t ldma_ch_get_busy(uint8_t ubChannel)
{
    if(ubChannel >= DMA_CHAN_COUNT)
        return 0;

    return PERI_REG_BIT(&(LDMA->CHBUSY), ubChannel);
}
uint16_t ldma_ch_get_remaining_xfers(uint8_t ubChannel)
{
    if(ubChannel >= DMA_CHAN_COUNT)
        return 0;

    ATOMIC_BLOCK(ATOMIC_RESTORESTATE)
    {
        uint16_t usRemaining = (LDMA->CH[ubChannel].CTRL & _LDMA_CH_CTRL_XFERCNT_MASK) >> _LDMA_CH_CTRL_XFERCNT_SHIFT;

        if(PERI_REG_BIT(&(LDMA->CHDONE), ubChannel) || (!usRemaining && (LDMA->IF & BIT(ubChannel))))
            return 0;

        return usRemaining + 1;
    }
}
void* ldma_ch_get_next_src_addr(uint8_t ubChannel)
{
    if(ubChannel >= DMA_CHAN_COUNT)
        return NULL;

    return (void *)(LDMA->CH[ubChannel].SRC);
}
void* ldma_ch_get_next_dst_addr(uint8_t ubChannel)
{
    if(ubChannel >= DMA_CHAN_COUNT)
        return NULL;

    return (void *)(LDMA->CH[ubChannel].DST);
}