#ifndef __STRUCTS_H__
#define __STRUCTS_H__

#include <linux/kernel.h>
#include <linux/pci.h>
#include <linux/cdev.h>

typedef struct
{
    uint32_t ulDevID;
    struct pci_dev *pPCIDev;
    struct cdev cdev;
} icyradio_dev_t;

#endif  // __STRUCTS_H__
