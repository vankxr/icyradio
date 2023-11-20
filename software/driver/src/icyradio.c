#include <linux/init.h>
#include <linux/version.h>
#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/pci.h>
#include <linux/delay.h>
#include <linux/cdev.h>
#include <linux/fs.h>
#include <linux/poll.h>
#include "structs.h"
#include "ioctl.h"
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
#define ICYRADIO_PCIE_BAR0_AXI_XLATE 0x40000000 // Registers, 2 MB (End at 0x401FFFFF)
#define ICYRADIO_PCIE_BAR1_AXI_XLATE 0x20000000 // DDR3, 512 MB (End at 0x3FFFFFFF)
#define ICYRADIO_PCIE_BAR2_AXI_XLATE 0x00000000 // SPI Flash & BRAM, 32 MB (End at 0x01FFFFFF)

#define ICYRADIO_AXI_DNA_BASE        0x40022000
#define ICYRADIO_AXI_DNA_OFFSET      (ICYRADIO_AXI_DNA_BASE - ICYRADIO_PCIE_BAR0_AXI_XLATE)


static dev_t icyradio_dev_num;
static struct class *icyradio_class = NULL;
static icyradio_dev_t *icyradio_devs[ICYRADIO_MAX_DEVICES] = { NULL };
static const uint32_t icyradio_pci_bar_axi_xlate[ICYRADIO_PCIE_NUM_BARS] = {
    ICYRADIO_PCIE_BAR0_AXI_XLATE,
    ICYRADIO_PCIE_BAR1_AXI_XLATE,
    ICYRADIO_PCIE_BAR2_AXI_XLATE
};
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

// IRQ handlers
static irqreturn_t icyradio_irq_handler(int iIRQ, void *pArg)
{
    icyradio_dev_t *pDev = (icyradio_dev_t *)pArg;

    pDev->ullIRQCount++;

    // DBGPRINTLN_CTX("IRQ for device %u Count: %llu", pDev->ulDevID, pDev->ullIRQCount);

    wake_up_interruptible(&pDev->sIRQWaitQueue);

	return IRQ_HANDLED;
}

// Character device functions
static ssize_t icyradio_read(struct file *pFile, char __user *pBuf, size_t ulCount, loff_t *pOffset)
{
    icyradio_dev_t *pDev = (icyradio_dev_t *)pFile->private_data;

    DBGPRINTLN_CTX("Reading device %u Count: %lu", pDev->ulDevID, ulCount);

    // TODO: Use read syscall to read the last IRQ vector, if we ever need more than one

    return 0;
}
static ssize_t icyradio_write(struct file *pFile, const char __user *pBuf, size_t ulCount, loff_t *pOffset)
{
    icyradio_dev_t *pDev = (icyradio_dev_t *)pFile->private_data;

    DBGPRINTLN_CTX("Writing device %u Count: %lu", pDev->ulDevID, ulCount);

    return 0;
}
static unsigned int icyradio_poll(struct file *pFile, poll_table *pPollTable)
{
    icyradio_dev_t *pDev = (icyradio_dev_t *)pFile->private_data;
    unsigned int ulMask = 0;

    // DBGPRINTLN_CTX("Polling device %u IRQ Count: %llu", pDev->ulDevID, pDev->ullIRQCount);

    poll_wait(pFile, &pDev->sIRQWaitQueue, pPollTable);

    if(pDev->ullIRQCount)
    {
        pDev->ullIRQCount--;

        ulMask |= POLLIN | POLLRDNORM;
    }

    if(pDev->ubIRQFlush)
    {
        pDev->ubIRQFlush = 0;

        ulMask |= POLLHUP;
    }

    return ulMask;
}
static long icyradio_ioctl(struct file *pFile, unsigned int ulCmd, unsigned long ulArg)
{
    icyradio_dev_t *pDev = (icyradio_dev_t *)pFile->private_data;
    int iErr = 0;

    DBGPRINTLN_CTX("IOCTL on device %u, cmd: 0x%08X, arg: 0x%016lX", pDev->ulDevID, ulCmd, ulArg);

    if(_IOC_DIR(ulCmd) & _IOC_READ)
    {
#if(LINUX_VERSION_CODE < KERNEL_VERSION(5, 0, 0))
        iErr = !access_ok(VERIFY_WRITE, (void __user *)ulArg, _IOC_SIZE(ulCmd));
#else
        iErr = !access_ok((void __user *)ulArg, _IOC_SIZE(ulCmd));
#endif
    }
    else if(_IOC_DIR(ulCmd) & _IOC_WRITE)
    {
#if(LINUX_VERSION_CODE < KERNEL_VERSION(5, 0, 0))
        iErr = !access_ok(VERIFY_WRITE, (void __user *)ulArg, _IOC_SIZE(ulCmd));
#else
        iErr = !access_ok((void __user *)ulArg, _IOC_SIZE(ulCmd));
#endif
    }

    if(iErr)
    {
        DBGPRINTLN_CTX("Invalid user space pointer, aborting");

        return -EFAULT;
    }

    switch(ulCmd)
    {
        case ICYRADIO_IOCTL_DMA_ALLOC:
        {
            void *pVirtAddr = NULL;
            dma_addr_t ulPhysAddr = 0;
            uint64_t ullPhysAddr = 0;
            uint64_t ullSize = 0;

            if(pDev->pDMAVirtAddr)
            {
                DBGPRINTLN_CTX("DMA buffer already allocated, aborting");

                return -EBUSY;
            }

            if(copy_from_user(&ullSize, (void __user *)ulArg, sizeof(uint32_t)))
            {
                DBGPRINTLN_CTX("Can't copy from user space, aborting");

                return -EFAULT;
            }

            if(!ullSize)
            {
                DBGPRINTLN_CTX("Invalid size, aborting");

                return -EINVAL;
            }

            DBGPRINTLN_CTX("Allocating DMA buffer of size 0x%08X", (uint32_t)ullSize);

            pVirtAddr = dma_alloc_coherent(&pDev->pPCIDev->dev, (uint32_t)ullSize, &ulPhysAddr, GFP_USER | GFP_ATOMIC);

            if(!pVirtAddr)
            {
                DBGPRINTLN_CTX("Can't allocate DMA buffer, aborting");

                return -ENOMEM;
            }

            DBGPRINTLN_CTX("DMA buffer for device %u allocated at virt 0x%016lX and phys 0x%016llX", pDev->ulDevID, (uintptr_t)pVirtAddr, ulPhysAddr);

            ullPhysAddr = ulPhysAddr; // Copy to 64-bit variable to avoid warnings

            if(copy_to_user((void __user *)ulArg, &ullPhysAddr, sizeof(uint64_t)))
            {
                DBGPRINTLN_CTX("Can't copy to user space, aborting");

                dma_free_coherent(&pDev->pPCIDev->dev, (uint32_t)ullSize, pVirtAddr, ulPhysAddr);

                return -EFAULT;
            }

            pDev->pDMAVirtAddr = pVirtAddr;
            pDev->ulDMAPhysAddr = ulPhysAddr;
            pDev->ulDMABufSize = (uint32_t)ullSize;

            pci_set_master(pDev->pPCIDev); // Set as bus master so it can initiate DMA transfers
        }
        break;
        case ICYRADIO_IOCTL_DMA_QUERY:
        {
            icyradio_ioctl_dma_buffer_query_t sQuery;

            if(!pDev->pDMAVirtAddr)
            {
                DBGPRINTLN_CTX("DMA buffer not allocated, aborting");

                return -ENODEV;
            }

            DBGPRINTLN_CTX("DMA buffer of size 0x%08X for device %u is at virt 0x%016lX and phys 0x%016llX", pDev->ulDMABufSize, pDev->ulDevID, (uintptr_t)pDev->pDMAVirtAddr, pDev->ulDMAPhysAddr);

            sQuery.ullPhysAddr = (uint64_t)pDev->ulDMAPhysAddr;
            sQuery.ulBufSize = pDev->ulDMABufSize;

            if(copy_to_user((void __user *)ulArg, &sQuery, sizeof(icyradio_ioctl_dma_buffer_query_t)))
            {
                DBGPRINTLN_CTX("Can't copy to user space, aborting");

                return -EFAULT;
            }
        }
        break;
        case ICYRADIO_IOCTL_DMA_FREE:
        {
            if(!pDev->pDMAVirtAddr)
            {
                DBGPRINTLN_CTX("DMA buffer not allocated, aborting");

                return -ENODEV;
            }

            DBGPRINTLN_CTX("Freeing DMA buffer for device %u at virt 0x%016lX and phys 0x%016llX", pDev->ulDevID, (uintptr_t)pDev->pDMAVirtAddr, pDev->ulDMAPhysAddr);

            pci_clear_master(pDev->pPCIDev); // Clear bus master so it can't initiate DMA transfers

            dma_free_coherent(&pDev->pPCIDev->dev, pDev->ulDMABufSize, pDev->pDMAVirtAddr, pDev->ulDMAPhysAddr);

            pDev->pDMAVirtAddr = NULL;
            pDev->ulDMAPhysAddr = 0;
            pDev->ulDMABufSize = 0;
        }
        break;
        case ICYRADIO_IOCTL_IRQ_QUERY:
        {
            uint8_t ubIRQs = 0;

            if(pDev->iNumIRQs <= 0)
            {
                DBGPRINTLN_CTX("No IRQs allocated, aborting");

                return -ENODEV;
            }

            ubIRQs = pDev->iNumIRQs;

            if(copy_to_user((void __user *)ulArg, &ubIRQs, sizeof(uint8_t)))
            {
                DBGPRINTLN_CTX("Can't copy to user space, aborting");

                return -EFAULT;
            }
        }
        break;
        case ICYRADIO_IOCTL_IRQ_FLUSH:
        {
            if(pDev->iNumIRQs <= 0)
            {
                DBGPRINTLN_CTX("No IRQs allocated, aborting");

                return -ENODEV;
            }

            if(pDev->ubIRQFlush)
            {
                DBGPRINTLN_CTX("IRQ flush already pending, aborting");

                return -EBUSY;
            }

            DBGPRINTLN_CTX("Set IRQ flush pending for device %u and waking up wait queue", pDev->ulDevID);

            pDev->ubIRQFlush = 1;

            wake_up_interruptible(&pDev->sIRQWaitQueue);
        }
        break;

        case ICYRADIO_IOCTL_SERIAL_QUERY:
        {
            DBGPRINTLN_CTX("Serial number query for device %u (%015llX)", pDev->ulDevID, pDev->ullSerialNumber);

            if(copy_to_user((void __user *)ulArg, &pDev->ullSerialNumber, sizeof(uint64_t)))
            {
                DBGPRINTLN_CTX("Can't copy to user space, aborting");

                return -EFAULT;
            }
        }
        break;
        default:
        {
            DBGPRINTLN_CTX("Invalid IOCTL command, aborting");

            return -EINVAL;
        }
        break;
    }

    return 0;
}
static int icyradio_mmap(struct file *pFile, struct vm_area_struct *pVMA)
{
    icyradio_dev_t *pDev = (icyradio_dev_t *)pFile->private_data;
    unsigned long ulOffset, ulLength;

    DBGPRINTLN_CTX("Memory map on device %u VMA start: 0x%016lX, end: 0x%016lX, pgoff: 0x%016lX", pDev->ulDevID, pVMA->vm_start, pVMA->vm_end, pVMA->vm_pgoff);

    if(pVMA->vm_pgoff > (~0UL >> PAGE_SHIFT))
        return -EINVAL;

    ulOffset = pVMA->vm_pgoff << PAGE_SHIFT;
    ulLength = pVMA->vm_end - pVMA->vm_start;

    if(!ulLength)
        return -EINVAL;

    if(ulOffset >= BIT(48)) // Above 48 bits is the DMA buffer space
    {
        if(!pDev->pDMAVirtAddr)
        {
            DBGPRINTLN_CTX("DMA buffer not allocated yet, aborting");

            return -EINVAL;
        }

        ulOffset &= BIT(48) - 1;

        if(ulOffset - pDev->ulDMAPhysAddr + ulLength > pDev->ulDMABufSize)
        {
            DBGPRINTLN_CTX("Requested range exceeds DMA buffer size, aborting");

            return -EINVAL;
        }

        DBGPRINTLN_CTX("DMA Buffer, Phys start: 0x%016llX, Phys offset: 0x%016llX, map offset: 0x%016lX, map len: 0x%08lX", pDev->ulDMAPhysAddr, ulOffset - pDev->ulDMAPhysAddr, ulOffset, ulLength);

#if defined(__aarch64__) || defined(__arm__)
        DBGPRINTLN_CTX("Running on ARM, using dma_mmap_coherent");

        ulOffset -= pDev->ulDMAPhysAddr;

        pVMA->vm_pgoff = ulOffset >> PAGE_SHIFT;

        if(dma_mmap_coherent(&pDev->pPCIDev->dev, pVMA, pDev->pDMAVirtAddr + ulOffset, pDev->ulDMAPhysAddr + ulOffset, ulLength))
#else
        DBGPRINTLN_CTX("Running on x86, using io_remap_pfn_range");

        pVMA->vm_pgoff = ulOffset >> PAGE_SHIFT;
        pVMA->vm_page_prot = pgprot_noncached(pVMA->vm_page_prot);
        pVMA->vm_flags |= VM_IO;

        if(io_remap_pfn_range(pVMA, pVMA->vm_start, pVMA->vm_pgoff, ulLength, pVMA->vm_page_prot))
#endif
        {
            DBGPRINTLN_CTX("Can't remap DMA buffer range, aborting");

            return -EAGAIN;
        }
    }
    else
    {
        uint8_t ubFound = 0;

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

                DBGPRINTLN_CTX("BAR %d, AXI start: 0x%08X, AXI offset: 0x%08lX, map offset: 0x%016lX, map len: 0x%08lX", i, ulAXIStart, ulOffset - (unsigned long)pci_resource_start(pDev->pPCIDev, i), ulOffset, ulLength);

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
    }

    return 0;
}
static int icyradio_open(struct inode *pInode, struct file *pFile)
{
    icyradio_dev_t *pDev = container_of(pInode->i_cdev, icyradio_dev_t, sCharDev);

    if(!pDev)
    {
        DBGPRINTLN_CTX("Can't find IcyRadio device struct, aborting");

        return -ENODEV;
    }

    DBGPRINTLN_CTX("Opening device %u", pDev->ulDevID);

    if(pDev->pFile)
    {
        DBGPRINTLN_CTX("Device file already open, aborting");

        return -EBUSY;
    }

    pDev->pFile = pFile;
    pFile->private_data = pDev;

    init_waitqueue_head(&pDev->sIRQWaitQueue);

    pDev->ullIRQCount = 0;
    pDev->ubIRQFlush = 0;

    return 0;
}
static int icyradio_release(struct inode *pInode, struct file *pFile)
{
    icyradio_dev_t *pDev = (icyradio_dev_t *)pFile->private_data;

    DBGPRINTLN_CTX("Releasing device %u", pDev->ulDevID);

    pDev->pFile = NULL;
    pFile->private_data = NULL;

    return 0;
}

static struct file_operations icyradio_fops = {
    .owner = THIS_MODULE,
    .read = icyradio_read,
    .write = icyradio_write,
    .poll = icyradio_poll,
    .unlocked_ioctl = icyradio_ioctl,
    .mmap = icyradio_mmap,
    .open = icyradio_open,
    .release = icyradio_release,
};

// PCI Express functions
static int icyradio_pci_probe(struct pci_dev *pPCIDev, const struct pci_device_id *pPCIDevID)
{
    dev_t ulDevNum;
    uint32_t ulDevID = 0;
    icyradio_dev_t *pDev;
    struct device *pUDevDevice;
    void *pBAR;
    uint32_t ulTimeout;

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

    // Allocate and initialize device struct
    pDev = (icyradio_dev_t *)kzalloc(sizeof(icyradio_dev_t), GFP_KERNEL);

    if(!pDev)
    {
        DBGPRINTLN_CTX("Can't allocate device, aborting");

        return -ENOMEM;
    }

    pDev->ulDevID = ulDevID;
    pDev->pPCIDev = pPCIDev;

    // Enable device
    if(pci_enable_device(pPCIDev))
    {
        DBGPRINTLN_CTX("Can't enable PCI device, aborting");

        kfree(pDev);

        return -EFAULT;
    }

    // Enumerate PCI resources
    DBGPRINTLN_CTX("BARs:");

    for(int i = 0; i < ICYRADIO_PCIE_NUM_BARS; i++)
    {
        if(!pci_resource_len(pPCIDev, i))
            continue;

        DBGPRINTLN_CTX("  BAR #%d: start: 0x%08llX, end: 0x%08llX, AXI start: 0x%08X, AXI end: 0x%08llX, len: 0x%08llX, flags: 0x%08lX", i, pci_resource_start(pPCIDev, i), pci_resource_end(pPCIDev, i), icyradio_pci_bar_axi_xlate[i], icyradio_pci_bar_axi_xlate[i] + pci_resource_len(pPCIDev, i) - 1, pci_resource_len(pPCIDev, i), pci_resource_flags(pPCIDev, i));
    }

    // Request PCI resources
    if(pci_request_regions(pPCIDev, "icyradio"))
    {
        DBGPRINTLN_CTX("Can't request PCI regions, aborting");

        pci_disable_device(pPCIDev);
        kfree(pDev);

        return -EFAULT;
    }

    // Query the serial number (FPGA DNA)
    pBAR = pci_iomap(pPCIDev, 0, 0);

    if(!pBAR)
    {
        DBGPRINTLN_CTX("Can't map BAR #0, aborting");

        pci_release_regions(pPCIDev);
        pci_disable_device(pPCIDev);
        kfree(pDev);

        return -EFAULT;
    }

    DBGPRINTLN_CTX("BAR0 mapped at %p", pBAR);

    ulTimeout = 100;
    while(--ulTimeout && !(ioread32((void *)((uintptr_t)pBAR + ICYRADIO_AXI_DNA_OFFSET + 0x04)) & BIT(31))) // Wait for the DNA to be ready
        udelay(10);

    if(!ulTimeout)
    {
        DBGPRINTLN_CTX("Timed out waiting for DNA to be ready, aborting");

        pci_iounmap(pPCIDev, pBAR);
        pci_release_regions(pPCIDev);
        pci_disable_device(pPCIDev);
        kfree(pDev);

        return -EFAULT;
    }

    pDev->ullSerialNumber = (uint64_t)(ioread32((void *)((uintptr_t)pBAR + ICYRADIO_AXI_DNA_OFFSET + 0x04)) & 0x01FFFFFF) << 32;
    pDev->ullSerialNumber |= (uint64_t)ioread32((void *)((uintptr_t)pBAR + ICYRADIO_AXI_DNA_OFFSET + 0x00));

    DBGPRINTLN_CTX("Device serial number: %015llX", pDev->ullSerialNumber);

    pci_iounmap(pPCIDev, pBAR);

    // Set DMA mask
    if(dma_set_mask_and_coherent(&pPCIDev->dev, DMA_BIT_MASK(48)))
    {
        DBGPRINTLN_CTX("Can't set DMA mask to 48 bits, trying 32 bits");

        if(dma_set_mask_and_coherent(&pPCIDev->dev, DMA_BIT_MASK(32)))
        {
            DBGPRINTLN_CTX("Can't set DMA mask to 32 bits, aborting");

            pci_release_regions(pPCIDev);
            pci_disable_device(pPCIDev);
            kfree(pDev);

            return -EFAULT;
        }
        else
        {
            DBGPRINTLN_CTX("DMA mask set to 32 bits");
        }
	}
    else
    {
        DBGPRINTLN_CTX("DMA mask set to 48 bits");
    }

    // Setup interrupts
    pDev->iNumIRQs = pci_alloc_irq_vectors(pPCIDev, 1, 32, PCI_IRQ_MSI | PCI_IRQ_MSIX | PCI_IRQ_AFFINITY); // Allocate up to 32 MSI-X vectors

    if(pDev->iNumIRQs < 0)
    {
        DBGPRINTLN_CTX("Can't allocate MSI-X vectors, aborting");

        pci_release_regions(pPCIDev);
        pci_disable_device(pPCIDev);
        kfree(pDev);

        return -EFAULT;
    }

    DBGPRINTLN_CTX("Allocated %d MSI-X vectors", pDev->iNumIRQs);

    for(int i = 0; i < pDev->iNumIRQs; i++)
    {
        int iVec = pci_irq_vector(pPCIDev, i);

        DBGPRINTLN_CTX("  MSI-X vector %d: IRQ %d", i, iVec);

        if(request_irq(iVec, icyradio_irq_handler, 0, ICYRADIO_DEV_NAME, pDev))
        {
            DBGPRINTLN_CTX("Can't request IRQ %d, aborting", iVec);

            for(int j = 0; j < i; j++)
                free_irq(pci_irq_vector(pPCIDev, j), pDev);

            pci_free_irq_vectors(pPCIDev);
            pci_release_regions(pPCIDev);
            pci_disable_device(pPCIDev);
            kfree(pDev);

            return -EFAULT;
        }
    }

    // Initialize character device
    cdev_init(&pDev->sCharDev, &icyradio_fops);
    pDev->sCharDev.owner = THIS_MODULE;

    ulDevNum = MKDEV(MAJOR(icyradio_dev_num), MINOR(icyradio_dev_num) + ulDevID);

    DBGPRINTLN_CTX("Registering device with major %u and minor %u", MAJOR(ulDevNum), MINOR(ulDevNum));

    if(cdev_add(&pDev->sCharDev, ulDevNum, 1))
    {
        DBGPRINTLN_CTX("Can't add cdev device, aborting");

        for(int i = 0; i < pDev->iNumIRQs; i++)
            free_irq(pci_irq_vector(pPCIDev, i), pDev);

        pci_free_irq_vectors(pPCIDev);
        pci_release_regions(pPCIDev);
        pci_disable_device(pPCIDev);
        kfree(pDev);

        return -ENODEV;
    }

    pUDevDevice = device_create(icyradio_class, &pPCIDev->dev, ulDevNum, pDev, "%s%u", ICYRADIO_DEV_NAME, ulDevID);

    if(IS_ERR(pUDevDevice))
    {
        DBGPRINTLN_CTX("Can't create udev device, aborting");

        cdev_del(&pDev->sCharDev);

        for(int i = 0; i < pDev->iNumIRQs; i++)
            free_irq(pci_irq_vector(pPCIDev, i), pDev);

        pci_free_irq_vectors(pPCIDev);
        pci_release_regions(pPCIDev);
        pci_disable_device(pPCIDev);
        kfree(pDev);

        return PTR_ERR(pUDevDevice);
    }

    DBGPRINTLN_CTX("Device created at /dev/%s%u", ICYRADIO_DEV_NAME, ulDevID);

    // After all configuration is successful, register the device in the array and set its drvdata
    icyradio_devs[ulDevID] = pDev;
    pci_set_drvdata(pPCIDev, pDev);

    DBGPRINTLN_CTX("IcyRadio device %u probed", ulDevID);

    return 0;
}
static void icyradio_pci_remove(struct pci_dev *pPCIDev)
{
    icyradio_dev_t *pDev = pci_get_drvdata(pPCIDev);
    int iDevID = -1;

    if(pDev)
    {
        iDevID = pDev->ulDevID;

        if(pDev->pDMAVirtAddr)
            dmam_free_coherent(&pPCIDev->dev, pDev->ulDMABufSize, pDev->pDMAVirtAddr, pDev->ulDMAPhysAddr);

        if(pDev->pPCIDev != pPCIDev)
            DBGPRINTLN_CTX("PCI Device ptr mismatch");

        device_destroy(icyradio_class, MKDEV(MAJOR(icyradio_dev_num), MINOR(icyradio_dev_num) + pDev->ulDevID));
        cdev_del(&pDev->sCharDev);

        icyradio_devs[pDev->ulDevID] = NULL;

        kfree(pDev);
    }
    else
    {
        DBGPRINTLN_CTX("Can't find IcyRadio device struct");
    }

    for(int i = 0; i < pDev->iNumIRQs; i++)
        free_irq(pci_irq_vector(pPCIDev, i), pDev);

    pci_free_irq_vectors(pPCIDev);
    pci_clear_master(pPCIDev);
    pci_release_regions(pPCIDev);
    pci_disable_device(pPCIDev);

    DBGPRINTLN_CTX("IcyRadio device %d removed", iDevID);
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