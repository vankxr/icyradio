#ifndef __STRUCTS_H__
#define __STRUCTS_H__

#include <linux/kernel.h>
#include <linux/pci.h>
#include <linux/cdev.h>
#include <linux/fs.h>
#include <linux/spinlock.h>
#include <linux/mutex.h>

typedef struct
{
    struct mutex sMutex;
    uint32_t ulDevID;
    uint64_t ullSerialNumber;
    struct pci_dev *pPCIDev;
    struct file *pFile;
    struct cdev sCharDev;
    void *pDMAVirtAddr;
    dma_addr_t ulDMAPhysAddr;
    uint32_t ulDMABufSize;
    int iNumIRQs;
    wait_queue_head_t sIRQWaitQueue;
    spinlock_t sIRQLock;
    uint64_t ullIRQCount;
    uint8_t ubIRQFlush;
} icyradio_dev_t;

#endif  // __STRUCTS_H__
