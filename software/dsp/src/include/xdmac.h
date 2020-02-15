#ifndef __XDMAC_H__
#define __XDMAC_H__

#include <sam.h>
#include <stdlib.h>
#include "pmc.h"
#include "atomic.h"
#include "nvic.h"
#include "utils.h"

#define XDMAC_CHAN_COUNT ((XDMAC->XDMAC_GTYPE & XDMAC_GTYPE_NB_CH_Msk) >> XDMAC_GTYPE_NB_CH_Pos)
#define XDMAC_FIFO_SIZE  ((XDMAC->XDMAC_GTYPE & XDMAC_GTYPE_FIFO_SZ_Msk) >> XDMAC_GTYPE_FIFO_SZ_Pos)
#define XDMAC_MAX_REQ    ((XDMAC->XDMAC_GTYPE & XDMAC_GTYPE_NB_REQ_Msk) >> XDMAC_GTYPE_NB_REQ_Pos)

typedef struct xdmac_view0_descriptor_t xdmac_view0_descriptor_t;
typedef struct xdmac_view1_descriptor_t xdmac_view1_descriptor_t;
typedef struct xdmac_view2_descriptor_t xdmac_view2_descriptor_t;
typedef struct xdmac_view3_descriptor_t xdmac_view3_descriptor_t;
typedef void (* xdmac_ch_isr_t)(uint32_t);

struct xdmac_view0_descriptor_t
{
    volatile void * volatile NDA;
    volatile uint32_t UBC;
    volatile void * volatile TA;
};
struct xdmac_view1_descriptor_t
{
    volatile void * volatile NDA;
    volatile uint32_t UBC;
    volatile void * volatile SA;
    volatile void * volatile DA;
};
struct xdmac_view2_descriptor_t
{
    volatile void * volatile NDA;
    volatile uint32_t UBC;
    volatile void * volatile SA;
    volatile void * volatile DA;
    volatile uint32_t CFG;
};
struct xdmac_view3_descriptor_t
{
    volatile void * volatile NDA;
    volatile uint32_t UBC;
    volatile void * volatile SA;
    volatile void * volatile DA;
    volatile uint32_t CFG;
    volatile uint32_t BC;
    volatile uint32_t DS;
    volatile uint32_t SUS;
    volatile uint32_t DUS;
};

void xdmac_init();

void xdmac_ch_set_isr(uint8_t ubChannel, xdmac_ch_isr_t pfISR);
void xdmac_ch_load(uint8_t ubChannel, void *pDescriptor, uint8_t ubDescriptorView, uint8_t ubFetchInterface);
void xdmac_ch_sw_req(uint8_t ubChannel);
void xdmac_ch_flush(uint8_t ubChannel);
void xdmac_ch_enable(uint8_t ubChannel);
void xdmac_ch_disable(uint8_t ubChannel);
void xdmac_ch_resume(uint8_t ubChannel);
void xdmac_ch_suspend(uint8_t ubChannel);
uint8_t xdmac_ch_get_busy(uint8_t ubChannel);
uint16_t xdmac_ch_get_remaining_xfers(uint8_t ubChannel);
void* xdmac_ch_get_next_src_addr(uint8_t ubChannel);
void* xdmac_ch_get_next_dst_addr(uint8_t ubChannel);

#endif  // __XDMAC_H__