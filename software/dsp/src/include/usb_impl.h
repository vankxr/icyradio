#ifndef __USB_IMPL_H__
#define __USB_IMPL_H__

#include <sam.h>
#include <malloc.h>
#include "pmc.h"
#include "atomic.h"
#include "cache.h"
#include "nvic.h"
#include "utils.h"
#include "eefc.h"
#include "usb.h"
#include "usb_util.h"

typedef struct usb_endpoint_buffer_t usb_endpoint_buffer_t;

struct usb_endpoint_buffer_t
{
    uint16_t usSize;
    volatile uint16_t usUsedSize;
    volatile uint16_t usWritePointer;
    volatile uint16_t usReadPointer;
    volatile uint8_t *pubData;
};

void usb_impl_init();

uint16_t usb_impl_endpoint_buffer_get_size(uint8_t ubEndpoint);
uint16_t usb_impl_endpoint_buffer_get_used_size(uint8_t ubEndpoint);
void usb_impl_endpoint_buffer_flush(uint8_t ubEndpoint);
uint16_t usb_impl_endpoint_buffer_read(uint8_t ubEndpoint, uint8_t *pubData, uint16_t usLength);
uint16_t usb_impl_endpoint_buffer_write(uint8_t ubEndpoint, const uint8_t *pubData, uint16_t usLength);
uint8_t usb_impl_endpoint_buffer_dma_trigger(uint8_t ubEndpoint, uint16_t usLength);

#endif  // __USB_IMPL_H__
