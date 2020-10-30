#ifndef __USB_IMPL_H__
#define __USB_IMPL_H__

#include <sam.h>
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
    uint16_t usUsedSize;
    uint16_t usWritePointer;
    uint16_t usReadPointer;
    uint8_t *pubData;
};

void usb_impl_init();

uint16_t usb_impl_endpoint_buffer_get_size(uint8_t ubEndpoint);
uint16_t usb_impl_endpoint_buffer_get_used_size(uint8_t ubEndpoint);
uint16_t usb_impl_endpoint_buffer_read(uint8_t ubEndpoint, uint8_t *pubData, uint16_t usLength);
uint16_t usb_impl_endpoint_buffer_write(uint8_t ubEndpoint, const uint8_t *pubData, uint16_t usLength);

#endif  // __USB_IMPL_H__
