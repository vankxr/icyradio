#ifndef __LDMA_H__
#define __LDMA_H__

#include <em_device.h>
#include <stdlib.h>
#include "cmu.h"
#include "atomic.h"
#include "nvic.h"
#include "utils.h"

#define LDMA_CHAN_COUNT (LDMA->STATUS)

typedef struct ldma_descriptor_t ldma_descriptor_t;
typedef void (* ldma_ch_isr_t)(uint8_t);

struct ldma_descriptor_t
{
    volatile uint32_t CTRL;
    union
    {
        volatile void * volatile SRC;
        volatile uint32_t IMMVAL;
        volatile uint16_t SYNC;
    };

    union
    {
        volatile void * volatile DST;
        volatile uint16_t MATCH;
    };

    volatile uint32_t LINK;
};

void ldma_init();

void ldma_sync_set(uint8_t ubMask);
void ldma_sync_clear(uint8_t ubMask);

void ldma_ch_config(uint8_t ubChannel, uint32_t ulSource, uint32_t ulSrcIncSign, uint32_t ulDstIncSign, uint32_t ulArbitrationSlots, uint8_t ubLoopCount);
void ldma_ch_set_isr(uint8_t ubChannel, ldma_ch_isr_t pfISR);
void ldma_ch_load(uint8_t ubChannel, ldma_descriptor_t *pDescriptor);
void ldma_ch_sw_req(uint8_t ubChannel);
void ldma_ch_enable(uint8_t ubChannel);
void ldma_ch_disable(uint8_t ubChannel);
void ldma_ch_peri_req_enable(uint8_t ubChannel);
void ldma_ch_peri_req_disable(uint8_t ubChannel);
void ldma_ch_req_clear(uint8_t ubChannel);
uint8_t ldma_ch_get_busy(uint8_t ubChannel);
uint16_t ldma_ch_get_remaining_xfers(uint8_t ubChannel);
void* ldma_ch_get_next_src_addr(uint8_t ubChannel);
void* ldma_ch_get_next_dst_addr(uint8_t ubChannel);

#endif  // __LDMA_H__