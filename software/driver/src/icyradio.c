#include <linux/init.h>
#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/pci.h>
#include <linux/delay.h>
#include <linux/cdev.h>
#include <linux/fs.h>
#include "structs.h"
#include "debug_macros.h"
#include "utils.h"


#define ICYRADIO_PCI_VENDOR_ID       0x10EE
#define ICYRADIO_PCI_DEVICE_ID       0x7021
#define ICYRADIO_PCI_SUBVENDOR_ID    0x10EE
#define ICYRADIO_PCI_SUBDEVICE_ID    0x0007

#define ICYRADIO_DEV_NAME       "icyradio"
#define ICYRADIO_CLASS_NAME     "IcyRadio"
#define ICYRADIO_MAX_DEVICES    16

#define ICYRADIO_PCIE_NUM_BARS       3
#define ICYRADIO_PCIE_BAR0_AXI_XLATE 0x40000000 // Registers, 32 MB (End at 0x41FFFFFF)
#define ICYRADIO_PCIE_BAR1_AXI_XLATE 0x20000000 // DDR3, 512 MB (End at 0x3FFFFFFF)
#define ICYRADIO_PCIE_BAR2_AXI_XLATE 0x00000000 // SPI Flash, 8 MB (End at 0x007FFFFF)


static dev_t icyradio_dev_num;
static struct class *icyradio_class = NULL;
static icyradio_dev_t *icyradio_devs[ICYRADIO_MAX_DEVICES] = { NULL };
static const uint32_t icyradio_pci_bar_axi_xlate[ICYRADIO_PCIE_NUM_BARS] = { ICYRADIO_PCIE_BAR0_AXI_XLATE, ICYRADIO_PCIE_BAR1_AXI_XLATE, ICYRADIO_PCIE_BAR2_AXI_XLATE };
static const struct pci_device_id icyradio_pci_tbl[] = {
	{
        .vendor = ICYRADIO_PCI_VENDOR_ID,
        .device = ICYRADIO_PCI_DEVICE_ID,
        .subvendor = ICYRADIO_PCI_SUBVENDOR_ID,
        .subdevice = ICYRADIO_PCI_SUBDEVICE_ID,
        .class = 0,
        .class_mask = 0,
        .driver_data = 0,
    },
    {}
};


/*
void spi_init(void *pBase)
{
    // Reset
    iowrite32(0x0000000A, pBase + 0x40);

    iowrite32(BIT(7) | BIT(6) | BIT(5) | BIT(2) | BIT(1), pBase + 0x60);
}
void spi_select(void *pBase, uint8_t ubSelect)
{
    iowrite32(ubSelect ? 0 : BIT(0), pBase + 0x70);
}
uint8_t spi_xfer(void *pBase, uint8_t ubData)
{
    iowrite32(ioread32(pBase + 0x60) | BIT(6), pBase + 0x60); // Clear RX FIFO
    iowrite32(ubData, pBase + 0x68);

    while(ioread32(pBase + 0x64) & BIT(0)) // Wait for RX FIFO to be not empty
        msleep(0);

    return (uint8_t)ioread32(pBase + 0x6C);
}

void i2c_init(void *pBase)
{
    // Reset
    iowrite32(0x0000000A, pBase + 0x040);

    iowrite32(0x0000000F, pBase + 0x120);
    iowrite32((ioread32(pBase + 0x100) & ~(BIT(6) | BIT(0))) | BIT(1), pBase + 0x100);
    iowrite32((ioread32(pBase + 0x100) & ~(BIT(6) | BIT(1))) | BIT(0), pBase + 0x100);

    iowrite32(ioread32(pBase + 0x020), pBase + 0x020); // Clear IRQs
}
uint8_t i2c_transmit(void *pBase, uint8_t ubAddress, uint8_t *pubSrc, uint8_t ubCount, uint8_t ubStop)
{
    uint32_t ulFlags;

    if(!ubCount)
        return 0;

    // DBGPRINTLN_CTX("status %02X, intr %02X", (uint8_t)ioread32(pBase + 0x104), (uint8_t)ioread32(pBase + 0x020));

    if((ioread32(pBase + 0x104) & BIT(2)) && !(ioread32(pBase + 0x020) & BIT(2))) // Bus busy and not owner
        return 0;

    // DBGPRINTLN_CTX("bus ok");

    if(!(ioread32(pBase + 0x104) & BIT(7))) // Clear TX FIFO
    {
        iowrite32(ioread32(pBase + 0x100) | BIT(1), pBase + 0x100);
        iowrite32(ioread32(pBase + 0x100) & ~BIT(1), pBase + 0x100);
    }

    // DBGPRINTLN_CTX("tx fifo cleared");

    while(!(ioread32(pBase + 0x104) & BIT(6))) // Clear RX FIFO
        (void)ioread32(pBase + 0x10C);

    // DBGPRINTLN_CTX("rx fifo cleared");
    // DBGPRINTLN_CTX("status %02X", (uint8_t)ioread32(pBase + 0x104));

    iowrite32(ioread32(pBase + 0x020), pBase + 0x020); // Clear IRQs
    // DBGPRINTLN_CTX("irq cleared, intr %02X", (uint8_t)ioread32(pBase + 0x020));

    iowrite32(BIT(8) | ubAddress, pBase + 0x108);
    // DBGPRINTLN_CTX("addr written");

    ulFlags = ioread32(pBase + 0x020);

    if(ubAddress & 1) // Read
    {
        iowrite32((ubStop ? BIT(9) : 0) | ubCount, pBase + 0x108);
    }
    else
    {
        while(ulFlags & BIT(4))
        {
            iowrite32(ulFlags & BIT(4), pBase + 0x020);
            ulFlags = ioread32(pBase + 0x020);

            msleep(0);
        }

        // DBGPRINTLN_CTX("not busy irq cleared, intr %02X", (uint8_t)ulFlags);
    }

    do
    {
        if(ubAddress & 1) // Read
        {
            // DBGPRINTLN_CTX("wait for rx data (%hhu), status %02X", ubCount, (uint8_t)ioread32(pBase + 0x104));

            while(ioread32(pBase + 0x104) & BIT(6))
            {
                ulFlags = ioread32(pBase + 0x020);

                if(ulFlags & (BIT(1) | BIT(0)))
                    return 0; // Early read termination OR Arbitration lost

                msleep(0);
            }

            *pubSrc++ = (uint8_t)ioread32(pBase + 0x10C);
        }
        else // Write
        {
            // DBGPRINTLN_CTX("wait for tx empty or error");

            while(!(ioread32(pBase + 0x104) & BIT(7)))
            {
                ulFlags = ioread32(pBase + 0x020);

                if(ulFlags & (BIT(1) | BIT(0)))
                    return 0; // Slave NACK OR Arbitration lost

                msleep(0);
            }

            iowrite32(ioread32(pBase + 0x020) & BIT(2), pBase + 0x020);

            // DBGPRINTLN_CTX("tx throttle irq cleared, intr %02X", (uint8_t)ioread32(pBase + 0x020));

            // DBGPRINTLN_CTX("write tx data (%hhu), stop %hhu", ubCount, ubStop);

            iowrite32(((ubCount == 1 && ubStop) ? BIT(9) : 0) | *pubSrc++, pBase + 0x108);
        }
    } while(--ubCount);

    if(ubAddress & 1) // Read
        iowrite32(ioread32(pBase + 0x020) & BIT(4), pBase + 0x020); // Clear NOT_BUSY IRQ, so that if we encounter it set again it is really not busy

    while(1)
    {
        ulFlags = ioread32(pBase + 0x020);

        if(ulFlags & BIT(0))
            return 0; // Arbitration lost

        if(!(ubAddress & 1) && (ulFlags & BIT(1)))
            return 0; // Slave NACK

        if(ubStop && (ulFlags & BIT(4)))
            break; // Stop was requested and bus is free, we are done!

        if(!ubStop && !(ubAddress & 1) && (ulFlags & BIT(2)))
            break; // No stop was requested and bus is throttled by the master, waiting for another transaction, we are done!

        if(!ubStop && (ubAddress & 1))
            break; // No stop was requested and we already read all the bytes we wanted, no need to wait for the bus to be free, we are done!

        msleep(0);

        ulFlags = ioread32(pBase + 0x020);
    }

    // DBGPRINTLN_CTX("status %02X, intr %02X", (uint8_t)ioread32(pBase + 0x104), (uint8_t)ioread32(pBase + 0x020));

    return 1;
}
uint8_t i2c_write(void *pBase, uint8_t ubAddress, uint8_t *pubSrc, uint8_t ubCount, uint8_t ubStop)
{
    return i2c_transmit(pBase, (ubAddress << 1) & ~0x01, pubSrc, ubCount, ubStop);
}
uint8_t i2c_read(void *pBase, uint8_t ubAddress, uint8_t *pubDst, uint8_t ubCount, uint8_t ubStop)
{
    return i2c_transmit(pBase, (ubAddress << 1) | 0x01, pubDst, ubCount, ubStop);
}
uint8_t i2c_write_byte(void *pBase, uint8_t ubAddress, uint8_t ubData, uint8_t ubStop)
{
    return i2c_transmit(pBase, (ubAddress << 1) & ~0x01, &ubData, 1, ubStop);
}
uint8_t i2c_read_byte(void *pBase, uint8_t ubAddress, uint8_t ubStop)
{
    uint8_t ubData;

    if(!i2c_transmit(pBase, (ubAddress << 1) | 0x01, &ubData, 1, ubStop))
        return 0;

    return ubData;
}
*/

// Character device functions
static int icyradio_mmap(struct file *pFile, struct vm_area_struct *pVMA)
{
    icyradio_dev_t *pDev = (icyradio_dev_t *)pFile->private_data;
    unsigned long ulOffset, ulLength;
    uint8_t ubFound = 0;

    DBGPRINTLN_CTX("VMA start: 0x%016lX, end: 0x%016lX, pgoff: 0x%016lX", pVMA->vm_start, pVMA->vm_end, pVMA->vm_pgoff);

    if(pVMA->vm_pgoff > (~0UL >> PAGE_SHIFT))
        return -EINVAL;

    ulOffset = pVMA->vm_pgoff << PAGE_SHIFT;
    ulLength = pVMA->vm_end - pVMA->vm_start;

    for(int i = 0; i < ICYRADIO_PCIE_NUM_BARS; i++)
    {
        uint32_t ulAXIStart, ulAXIEnd;

        if(!pci_resource_len(pDev->pPCIDev, i))
            continue;

        ulAXIStart = icyradio_pci_bar_axi_xlate[i];
        ulAXIEnd = icyradio_pci_bar_axi_xlate[i] + pci_resource_len(pDev->pPCIDev, i);

        if(ulOffset >= ulAXIStart && ulOffset + ulLength <= ulAXIEnd)
        {
            ulOffset = ulOffset - ulAXIStart + pci_resource_start(pDev->pPCIDev, i);
            ubFound = 1;

            DBGPRINTLN_CTX("BAR %d, AXI offset: 0x%08lX, offset: 0x%016lX, len: 0x%08lX", i, ulOffset - (unsigned long)pci_resource_start(pDev->pPCIDev, i), ulOffset, ulLength);

            break;
        }
    }

    if(!ubFound)
    {
        DBGPRINTLN_CTX("Region 0x%08lX to 0x%08lX not found in AXI address space, aborting", ulOffset, ulOffset + ulLength - 1);

        return -EINVAL;
    }

    pVMA->vm_pgoff = ulOffset >> PAGE_SHIFT;
    pVMA->vm_page_prot = pgprot_noncached(pVMA->vm_page_prot);
    pVMA->vm_flags |= VM_IO;

    if(io_remap_pfn_range(pVMA, pVMA->vm_start, pVMA->vm_pgoff, ulLength, pVMA->vm_page_prot))
    {
        DBGPRINTLN_CTX("Can't remap IO range, aborting");

        return -EAGAIN;
    }

    return 0;
}
static int icyradio_open(struct inode *pInode, struct file *pFile)
{
    icyradio_dev_t *pDev = container_of(pInode->i_cdev, icyradio_dev_t, cdev);

    DBGPRINTLN_CTX("Opening device file of device %u", pDev->ulDevID);

    pFile->private_data = pDev;

    return 0;
}
static int icyradio_release(struct inode *pInode, struct file *pFile)
{
    icyradio_dev_t *pDev = (icyradio_dev_t *)pFile->private_data;

    DBGPRINTLN_CTX("Releasing device file of device %u", pDev->ulDevID);

    pFile->private_data = NULL;

    return 0;
}

static struct file_operations icyradio_fops = {
    .owner = THIS_MODULE,
    // .read = icyradio_read,
    // .write = icyradio_write,
    .mmap = icyradio_mmap,
    .open = icyradio_open,
    .release = icyradio_release,
};

// PCI Express functions
static int icyradio_pci_probe(struct pci_dev *pPCIDev, const struct pci_device_id *pPCIDevID)
{
    dev_t devNum;
    uint32_t ulDevID = 0;
    icyradio_dev_t *pDev;
    struct device *pUDevDevice;

    DBGPRINTLN_CTX("Probing PCI device %04X:%04X", pPCIDev->vendor, pPCIDev->device);

    if(pPCIDev->vendor != ICYRADIO_PCI_VENDOR_ID || pPCIDev->device != ICYRADIO_PCI_DEVICE_ID)
    {
        DBGPRINTLN_CTX("Not an IcyRadio device, aborting");

        return -EINVAL;
    }

    // Find a free device ID
    while(ulDevID < ICYRADIO_MAX_DEVICES && icyradio_devs[ulDevID])
        ulDevID++;

    if(ulDevID == ICYRADIO_MAX_DEVICES)
    {
        DBGPRINTLN_CTX("Too many IcyRadio devices, aborting");

        return -ENOMEM;
    }

    DBGPRINTLN_CTX("Found free device ID %u", ulDevID);

    pDev = (icyradio_dev_t *)kzalloc(sizeof(icyradio_dev_t), GFP_KERNEL);

    if(!pDev)
    {
        DBGPRINTLN_CTX("Can't allocate device, aborting");

        return -ENOMEM;
    }

    pDev->ulDevID = ulDevID;
    pDev->pPCIDev = pPCIDev;

    cdev_init(&pDev->cdev, &icyradio_fops);
    pDev->cdev.owner = THIS_MODULE;

    devNum = MKDEV(MAJOR(icyradio_dev_num), MINOR(icyradio_dev_num) + ulDevID);

    DBGPRINTLN_CTX("Registering device with major %u and minor %u", MAJOR(devNum), MINOR(devNum));

    if(cdev_add(&pDev->cdev, devNum, 1))
    {
        DBGPRINTLN_CTX("Can't add cdev device, aborting");

        kfree(pDev);

        return -ENODEV;
    }

    pUDevDevice = device_create(icyradio_class, &pPCIDev->dev, devNum, pDev, "%s%u", ICYRADIO_DEV_NAME, ulDevID);

    if(IS_ERR(pUDevDevice))
    {
        DBGPRINTLN_CTX("Can't create udev device, aborting");

        cdev_del(&pDev->cdev);
        kfree(pDev);

        return PTR_ERR(pUDevDevice);
    }

    DBGPRINTLN_CTX("Device created at /dev/%s%u", ICYRADIO_DEV_NAME, ulDevID);

    if(pci_enable_device(pPCIDev))
    {
        DBGPRINTLN_CTX("Can't enable PCI device, aborting");

        device_destroy(icyradio_class, devNum);
        cdev_del(&pDev->cdev);
        kfree(pDev);

        return -EFAULT;
    }

    DBGPRINTLN_CTX("BARs:");

    for(int i = 0; i < ICYRADIO_PCIE_NUM_BARS; i++)
    {
        if(!pci_resource_len(pPCIDev, i))
            continue;

        DBGPRINTLN_CTX("  BAR %d: start: 0x%016lX, end: 0x%016lX, AXI start: 0x%08lX, AXI end: 0x%08lX, len: 0x%08lX, flags: 0x%016lX", i, (unsigned long)pci_resource_start(pPCIDev, i), (unsigned long)pci_resource_end(pPCIDev, i), (unsigned long)icyradio_pci_bar_axi_xlate[i], (unsigned long)icyradio_pci_bar_axi_xlate[i] + (unsigned long)pci_resource_len(pPCIDev, i) - 1, (unsigned long)pci_resource_len(pPCIDev, i), (unsigned long)pci_resource_flags(pPCIDev, i));
    }

    if(pci_request_regions(pPCIDev, "icyradio"))
    {
        DBGPRINTLN_CTX("Can't request PCI regions, aborting");

        pci_disable_device(pPCIDev);
        device_destroy(icyradio_class, devNum);
        cdev_del(&pDev->cdev);
        kfree(pDev);

        return -EFAULT;
    }

    pci_set_master(pPCIDev); // Set as bus master so it can initiate DMA transfers

    // After all configuration is successful, register the device in the array and set its drvdata
    icyradio_devs[ulDevID] = pDev;
    pci_set_drvdata(pPCIDev, pDev);


    //void *pBAR0;
    // pBAR0 = pci_iomap(pPCIDev, 0, 0);

    // if(!pBAR0)
    // {
    //     DBGPRINTLN_CTX("Can't map BAR0, aborting");

    //     return -EFAULT;
    // }

    // DBGPRINTLN_CTX("BAR0 mapped at %p", pBAR0);

    // DBGPRINTLN_CTX("AXI SPI #0 - SPICR: 0x%08X", ioread32(pBAR0 + 0x00008000 + 0x60));
    // DBGPRINTLN_CTX("AXI SPI #0 - SPISR: 0x%08X", ioread32(pBAR0 + 0x00008000 + 0x64));
    // DBGPRINTLN_CTX("AXI SPI #1 - SPICR: 0x%08X", ioread32(pBAR0 + 0x00014000 + 0x60));
    // DBGPRINTLN_CTX("AXI SPI #1 - SPISR: 0x%08X", ioread32(pBAR0 + 0x00014000 + 0x64));
    // DBGPRINTLN_CTX("AXI SPI #2 - SPICR: 0x%08X", ioread32(pBAR0 + 0x00018000 + 0x60));
    // DBGPRINTLN_CTX("AXI SPI #2 - SPISR: 0x%08X", ioread32(pBAR0 + 0x00018000 + 0x64));
    // DBGPRINTLN_CTX("AXI GPIO #0 - DATA: 0x%08X", ioread32(pBAR0 + 0x00004000 + 0x00));
    // DBGPRINTLN_CTX("AXI GPIO #0 - TRI: 0x%08X", ioread32(pBAR0 + 0x00004000 + 0x04));
    // DBGPRINTLN_CTX("AXI GPIO #1 - DATA: 0x%08X", ioread32(pBAR0 + 0x0001A000 + 0x00));
    // DBGPRINTLN_CTX("AXI GPIO #1 - TRI: 0x%08X", ioread32(pBAR0 + 0x0001A000 + 0x04));
    // DBGPRINTLN_CTX("AXI AD9361 Version: 0x%08X", ioread32(pBAR0 + 0x00100000 + 0x0000));
    // DBGPRINTLN_CTX("AXI DMA RF RX Version: 0x%08X", ioread32(pBAR0 + 0x00000000 + 0x0000));
    // DBGPRINTLN_CTX("AXI DMA RF TX Version: 0x%08X", ioread32(pBAR0 + 0x00002000 + 0x0000));
    // DBGPRINTLN_CTX("AXI DMA I2S RX Version: 0x%08X", ioread32(pBAR0 + 0x0000C000 + 0x0000));
    // DBGPRINTLN_CTX("AXI DMA I2S TX Version: 0x%08X", ioread32(pBAR0 + 0x0000E000 + 0x0000));

    // DBGPRINTLN_CTX("BRAM First Word: 0x%08X", ioread32(pBAR0 + 0x01000000));
    // DBGPRINTLN_CTX("BRAM Last Word: 0x%08X", ioread32(pBAR0 + 0x01001FFC));

    // iowrite32(0xDEADBEEF, pBAR0 + 0x01000000);
    // iowrite32(0xDEADCAFE, pBAR0 + 0x01001FFC);

    // DBGPRINTLN_CTX("BRAM First Word: 0x%08X", ioread32(pBAR0 + 0x01000000));
    // DBGPRINTLN_CTX("BRAM Last Word: 0x%08X", ioread32(pBAR0 + 0x01001FFC));

    return 0;

    // dma_set_mask_and_coherent
    // pci_enable_msix_range
}
static void icyradio_pci_remove(struct pci_dev *pPCIDev)
{
    icyradio_dev_t *pDev = pci_get_drvdata(pPCIDev);

    pci_clear_master(pPCIDev);
    pci_release_regions(pPCIDev);
    pci_disable_device(pPCIDev);

    if(pDev)
    {
        if(pDev->pPCIDev != pPCIDev)
            DBGPRINTLN_CTX("PCI Device ptr mismatch");

        device_destroy(icyradio_class, MKDEV(MAJOR(icyradio_dev_num), MINOR(icyradio_dev_num) + pDev->ulDevID));
        cdev_del(&pDev->cdev);

        icyradio_devs[pDev->ulDevID] = NULL;

        kfree(pDev);
    }
    else
    {
        DBGPRINTLN_CTX("Can't find IcyRadio device struct");
    }

    DBGPRINTLN_CTX("IcyRadio device removed");

    return;
}

static struct pci_driver icyradio_pci_driver = {
	.name = ICYRADIO_DEV_NAME,
	.id_table = icyradio_pci_tbl,
	.probe = icyradio_pci_probe,
	.remove = icyradio_pci_remove,
};

// Main module functions
static int __init icyradio_init(void)
{
    int status;

    icyradio_class = class_create(THIS_MODULE, ICYRADIO_CLASS_NAME);

    if(IS_ERR(icyradio_class))
    {
        DBGPRINTLN_CTX("Can't create IcyRadio class, aborting");

        return PTR_ERR(icyradio_class);
    }

    status = alloc_chrdev_region(&icyradio_dev_num, 0, ICYRADIO_MAX_DEVICES, ICYRADIO_DEV_NAME);

    if(status < 0)
    {
        DBGPRINTLN_CTX("Can't allocate device number (%d), aborting", status);

        class_destroy(icyradio_class);

        return -1;
    }

    DBGPRINTLN_CTX("Allocated major number %d, minor numbers %d-%d", MAJOR(icyradio_dev_num), MINOR(icyradio_dev_num), MINOR(icyradio_dev_num) + ICYRADIO_MAX_DEVICES - 1);

    status = pci_register_driver(&icyradio_pci_driver);

    if(status < 0)
    {
        DBGPRINTLN_CTX("Can't register PCI driver (%d), aborting", status);

        unregister_chrdev_region(icyradio_dev_num, ICYRADIO_MAX_DEVICES);
        class_destroy(icyradio_class);

        return status;
    }

    DBGPRINTLN_CTX("IcyRadio kernel module loaded");

    return 0;
}
static void __exit icyradio_exit(void)
{
    pci_unregister_driver(&icyradio_pci_driver);

    unregister_chrdev_region(icyradio_dev_num, ICYRADIO_MAX_DEVICES);
    class_destroy(icyradio_class);

    DBGPRINTLN_CTX("IcyRadio kernel module unloaded");
}

module_init(icyradio_init);
module_exit(icyradio_exit);

MODULE_LICENSE("GPL");
MODULE_AUTHOR("João Silva");
MODULE_DESCRIPTION("IcyRadio SDR v2 Kernel driver.");
MODULE_VERSION("1.0.0");
MODULE_DEVICE_TABLE(pci, icyradio_pci_tbl);