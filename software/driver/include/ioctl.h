#ifndef __IOCTL_H__
#define __IOCTL_H__

#include <linux/ioctl.h>

typedef struct
{
    uint64_t ullPhysAddr;
    uint32_t ulBufSize;
} icyradio_ioctl_dma_buffer_query_t;

#define ICYRADIO_IOCTL_DMA_ALLOC    _IOWR('B', 64, uint64_t *)
#define ICYRADIO_IOCTL_DMA_QUERY    _IOR('B', 65, icyradio_ioctl_dma_buffer_query_t *)
#define ICYRADIO_IOCTL_DMA_FREE     _IO('B', 66)
#define ICYRADIO_IOCTL_IRQ_QUERY    _IOR('B', 67, uint8_t *)
#define ICYRADIO_IOCTL_IRQ_FLUSH    _IO('B', 68)

#define ICYRADIO_IOCTL_SERIAL_QUERY _IOR('B', 96, uint64_t *)

#endif // __IOCTL_H__