#ifndef __USB_H__
#define __USB_H__

#include <sam.h>
#include <stdlib.h>
#include "FreeRTOS.h"
#include "task.h"
#include "pmc.h"
#include "nvic.h"
#include "utils.h"

#define USB_FIFO_BASE_ADDR      0xA0100000
#define USB_FIFO_EPT_SIZE       0x8000
#define USB_FIFO_EPT_ADDR(e)    (USB_FIFO_BASE_ADDR + (e) * USB_FIFO_EPT_SIZE)

typedef void (* usb_reset_isr_t)(uint8_t);
typedef void (* usb_endpoint_isr_t)(uint8_t);
typedef void (* usb_endpoint_dma_isr_t)(uint8_t);

void usb_init(uint32_t ulForceSpeed);

void usb_attach();
void usb_detach();

void usb_set_reset_isr(usb_reset_isr_t pfISR);
void usb_set_endpoint_isr(uint8_t ubEndpoint, usb_endpoint_isr_t pfISR);
void usb_set_endpoint_dma_isr(uint8_t ubEndpoint, usb_endpoint_dma_isr_t pfISR);

void usb_fifo_write(uint8_t ubEndpoint, const uint8_t *pubData, uint32_t ulSize);
void usb_fifo_read(uint8_t ubEndpoint, uint8_t *pubData, uint32_t ulSize);

#endif  // __USB_H__
