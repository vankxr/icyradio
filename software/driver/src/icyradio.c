#include <linux/init.h>
#include <linux/version.h>
#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/printk.h>
#include <linux/pci.h>
#include <linux/delay.h>
#include <linux/cdev.h>
#include <linux/fs.h>
#include <linux/poll.h>
#include <linux/spinlock.h>
#include <linux/mutex.h>
#include "structs.h"
#include "ioctl.h"
#include "dna.h"
#include "utils.h"

#ifdef pr_fmt
    #undef pr_fmt
#endif
#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt

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
#define ICYRADIO_PCIE_BAR2_AXI_XLATE 0x00000000 // SPI Flash + BRAM + DNA (ROM), 32 MB (End at 0x01FFFFFF)

#define ICYRADIO_PCIE_MSI_MAX_VECTORS   1 // 32

static dev_t icyradio_dev_num;
static struct class *icyradio_class = NULL;
static struct mutex icyradio_devs_mutex;
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
    unsigned long ulIRQFlags;

    spin_lock_irqsave(&pDev->sIRQLock, ulIRQFlags);
    pDev->ullIRQCount++;
    spin_unlock_irqrestore(&pDev->sIRQLock, ulIRQFlags);

    pr_devel("IRQ for device %u Count: %llu", pDev->ulDevID, pDev->ullIRQCount);

    wake_up_interruptible(&pDev->sIRQWaitQueue);

	return IRQ_HANDLED;
}

// Character device functions
static ssize_t icyradio_read(struct file *pFile, char __user *pBuf, size_t ulCount, loff_t *pOffset)
{
    icyradio_dev_t *pDev = (icyradio_dev_t *)pFile->private_data;

    pr_debug("Reading device %u Count: %lu", pDev->ulDevID, ulCount);

    // TODO: Use read syscall to read the last IRQ vector, if we ever need more than one

    return 0;
}
static ssize_t icyradio_write(struct file *pFile, const char __user *pBuf, size_t ulCount, loff_t *pOffset)
{
    icyradio_dev_t *pDev = (icyradio_dev_t *)pFile->private_data;

    pr_debug("Writing device %u Count: %lu", pDev->ulDevID, ulCount);

    return 0;
}
static unsigned int icyradio_poll(struct file *pFile, poll_table *pPollTable)
{
    icyradio_dev_t *pDev = (icyradio_dev_t *)pFile->private_data;
    unsigned int ulMask = 0;
    unsigned long ulIRQFlags;

    spin_lock_irqsave(&pDev->sIRQLock, ulIRQFlags);

    pr_devel("Polling device %u IRQ Count: %llu", pDev->ulDevID, pDev->ullIRQCount);

    poll_wait(pFile, &pDev->sIRQWaitQueue, pPollTable);

    if(pDev->ubIRQFlush)
        ulMask |= POLLHUP;

    if(ulMask)
    {
        spin_unlock_irqrestore(&pDev->sIRQLock, ulIRQFlags);

        return ulMask;
    }

    if(pDev->ullIRQCount)
    {
        pDev->ullIRQCount--;

        ulMask |= POLLIN | POLLRDNORM;
    }

    spin_unlock_irqrestore(&pDev->sIRQLock, ulIRQFlags);

    return ulMask;
}
static long icyradio_ioctl(struct file *pFile, unsigned int ulCmd, unsigned long ulArg)
{
    icyradio_dev_t *pDev = (icyradio_dev_t *)pFile->private_data;
    int iErr = 0;

    pr_debug("ioctl on device %u, cmd: 0x%08X, arg: 0x%016lX", pDev->ulDevID, ulCmd, ulArg);

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
        pr_warn("Invalid user space pointer for ioctl, aborting");

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
                pr_warn("DMA buffer for device %u already allocated, aborting", pDev->ulDevID);

                return -EBUSY;
            }

            if(copy_from_user(&ullSize, (void __user *)ulArg, sizeof(uint32_t)))
            {
                pr_warn("Can't copy DMA buffer size for device %u from user space, aborting", pDev->ulDevID);

                return -EFAULT;
            }

            if(!ullSize)
            {
                pr_warn("Invalid DMA buffer size for device %u, aborting", pDev->ulDevID);

                return -EINVAL;
            }

            pr_notice("Allocating DMA buffer for device %u of size 0x%08X", pDev->ulDevID, (uint32_t)ullSize);

            pVirtAddr = dma_alloc_coherent(&pDev->pPCIDev->dev, (uint32_t)ullSize, &ulPhysAddr, GFP_USER | GFP_ATOMIC | GFP_DMA);

            if(!pVirtAddr)
            {
                pr_warn("Can't allocate DMA buffer for device %u, aborting", pDev->ulDevID);

                return -ENOMEM;
            }

            pr_notice("DMA buffer for device %u allocated at virt 0x%016lX and phys 0x%016llX", pDev->ulDevID, (uintptr_t)pVirtAddr, ulPhysAddr);

            ullPhysAddr = ulPhysAddr; // Copy to 64-bit variable to avoid warnings

            if(copy_to_user((void __user *)ulArg, &ullPhysAddr, sizeof(uint64_t)))
            {
                pr_warn("Can't copy DMA buffer phys address for device %u to user space, aborting", pDev->ulDevID);

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
                pr_warn("DMA buffer not allocated for device %u, aborting", pDev->ulDevID);

                return -ENODEV;
            }

            pr_notice("DMA buffer of size 0x%08X for device %u is at virt 0x%016lX and phys 0x%016llX", pDev->ulDMABufSize, pDev->ulDevID, (uintptr_t)pDev->pDMAVirtAddr, pDev->ulDMAPhysAddr);

            sQuery.ullPhysAddr = (uint64_t)pDev->ulDMAPhysAddr;
            sQuery.ulBufSize = pDev->ulDMABufSize;

            if(copy_to_user((void __user *)ulArg, &sQuery, sizeof(icyradio_ioctl_dma_buffer_query_t)))
            {
                pr_warn("Can't copy DMA buffer phys address for device %u to user space, aborting", pDev->ulDevID);

                return -EFAULT;
            }
        }
        break;
        case ICYRADIO_IOCTL_DMA_FREE:
        {
            if(!pDev->pDMAVirtAddr)
            {
                pr_warn("DMA buffer not allocated for device %u, aborting", pDev->ulDevID);

                return -ENODEV;
            }

            pr_notice("Freeing DMA buffer for device %u at virt 0x%016lX and phys 0x%016llX", pDev->ulDevID, (uintptr_t)pDev->pDMAVirtAddr, pDev->ulDMAPhysAddr);

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
                pr_warn("No IRQs allocated for device %u, aborting", pDev->ulDevID);

                return -ENODEV;
            }

            ubIRQs = pDev->iNumIRQs;

            if(copy_to_user((void __user *)ulArg, &ubIRQs, sizeof(uint8_t)))
            {
                pr_warn("Can't copy IRQ count for device %u to user space, aborting", pDev->ulDevID);

                return -EFAULT;
            }
        }
        break;
        case ICYRADIO_IOCTL_IRQ_FLUSH:
        {
            unsigned long ulIRQFlags;

            if(pDev->iNumIRQs <= 0)
            {
                pr_warn("No IRQs allocated for device %u, aborting", pDev->ulDevID);

                return -ENODEV;
            }

            spin_lock_irqsave(&pDev->sIRQLock, ulIRQFlags);

            if(pDev->ubIRQFlush)
            {
                pr_warn("IRQ flush already pending for device %u, aborting", pDev->ulDevID);

                spin_unlock_irqrestore(&pDev->sIRQLock, ulIRQFlags);

                return -EBUSY;
            }

            pr_notice("Set IRQ flush mode for device %u and waking up wait queue", pDev->ulDevID);

            pDev->ubIRQFlush = 1;

            spin_unlock_irqrestore(&pDev->sIRQLock, ulIRQFlags);

            wake_up_interruptible(&pDev->sIRQWaitQueue);
        }
        break;
        case ICYRADIO_IOCTL_IRQ_NOFLUSH:
        {
            unsigned long ulIRQFlags;

            if(pDev->iNumIRQs <= 0)
            {
                pr_warn("No IRQs allocated for device %u, aborting", pDev->ulDevID);

                return -ENODEV;
            }

            spin_lock_irqsave(&pDev->sIRQLock, ulIRQFlags);

            if(!pDev->ubIRQFlush)
            {
                pr_warn("IRQ flush already not pending for device %u, aborting", pDev->ulDevID);

                spin_unlock_irqrestore(&pDev->sIRQLock, ulIRQFlags);

                return -EBUSY;
            }

            pr_notice("Unset IRQ flush mode for device %u and waking up wait queue", pDev->ulDevID);

            pDev->ubIRQFlush = 0;

            spin_unlock_irqrestore(&pDev->sIRQLock, ulIRQFlags);

            wake_up_interruptible(&pDev->sIRQWaitQueue);
        }
        break;

        case ICYRADIO_IOCTL_SERIAL_QUERY:
        {
            pr_notice("Serial number query for device %u (%015llX)", pDev->ulDevID, pDev->ullSerialNumber);

            if(copy_to_user((void __user *)ulArg, &pDev->ullSerialNumber, sizeof(uint64_t)))
            {
                pr_warn("Can't copy serial number for device %u to user space, aborting", pDev->ulDevID);

                return -EFAULT;
            }
        }
        break;
        default:
        {
            pr_warn("Invalid ioctl command 0x%08X for device %u, aborting", ulCmd, pDev->ulDevID);

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

    pr_debug("Memory map on device %u VMA start: 0x%016lX, end: 0x%016lX, pgoff: 0x%016lX", pDev->ulDevID, pVMA->vm_start, pVMA->vm_end, pVMA->vm_pgoff);

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
            pr_warn("mmap to DMA buffer for device %u but no memory allocated, aborting", pDev->ulDevID);

            return -EINVAL;
        }

        ulOffset &= BIT(48) - 1;

        if(ulOffset - pDev->ulDMAPhysAddr + ulLength > pDev->ulDMABufSize)
        {
            pr_warn("Requested range exceeds DMA buffer size for device %u, aborting", pDev->ulDevID);

            return -EINVAL;
        }

        pr_notice("DMA Buffer, Phys start: 0x%016llX, Phys offset: 0x%016llX, map offset: 0x%016lX, map len: 0x%08lX", pDev->ulDMAPhysAddr, ulOffset - pDev->ulDMAPhysAddr, ulOffset, ulLength);

#if defined(__aarch64__) || defined(__arm__)
        pr_notice("Running on ARM, using dma_mmap_coherent");

        ulOffset -= pDev->ulDMAPhysAddr;

        pVMA->vm_pgoff = ulOffset >> PAGE_SHIFT;

        if(dma_mmap_coherent(&pDev->pPCIDev->dev, pVMA, pDev->pDMAVirtAddr + ulOffset, pDev->ulDMAPhysAddr + ulOffset, ulLength))
#else
        pr_notice("Running on x86, using io_remap_pfn_range");

        pVMA->vm_pgoff = ulOffset >> PAGE_SHIFT;
        pVMA->vm_page_prot = pgprot_noncached(pVMA->vm_page_prot);
#if(LINUX_VERSION_CODE < KERNEL_VERSION(6, 3, 0))
        pVMA->vm_flags |= VM_IO;
#else
        vm_flags_set(pVMA, VM_IO);
#endif

        if(io_remap_pfn_range(pVMA, pVMA->vm_start, pVMA->vm_pgoff, ulLength, pVMA->vm_page_prot))
#endif
        {
            pr_warn("Can't remap DMA buffer range for device %u, aborting", pDev->ulDevID);

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

                pr_notice("Map memory for device %u (BAR %d, AXI start: 0x%08X, AXI offset: 0x%08lX, map offset: 0x%016lX, map len: 0x%08lX)", pDev->ulDevID, i, ulAXIStart, ulOffset - (unsigned long)pci_resource_start(pDev->pPCIDev, i), ulOffset, ulLength);

                break;
            }
        }

        if(!ubFound)
        {
            pr_warn("Region 0x%08lX to 0x%08lX not found in AXI address space for device %u, aborting", ulOffset, ulOffset + ulLength - 1, pDev->ulDevID);

            return -EINVAL;
        }

        pVMA->vm_pgoff = ulOffset >> PAGE_SHIFT;
        pVMA->vm_page_prot = pgprot_noncached(pVMA->vm_page_prot);
#if(LINUX_VERSION_CODE < KERNEL_VERSION(6, 3, 0))
        pVMA->vm_flags |= VM_IO;
#else
        vm_flags_set(pVMA, VM_IO);
#endif

        if(io_remap_pfn_range(pVMA, pVMA->vm_start, pVMA->vm_pgoff, ulLength, pVMA->vm_page_prot))
        {
            pr_warn("Can't remap IO range for device %u, aborting", pDev->ulDevID);

            return -EAGAIN;
        }
    }

    return 0;
}
static int icyradio_open(struct inode *pInode, struct file *pFile)
{
    icyradio_dev_t *pDev = container_of(pInode->i_cdev, icyradio_dev_t, sCharDev);
    unsigned long ulIRQFlags;

    if(!pDev)
    {
        pr_err("Can't find IcyRadio device struct, aborting");

        return -ENODEV;
    }

    pr_debug("Opening device %u", pDev->ulDevID);

    if(mutex_lock_interruptible(&pDev->sMutex))
    {
        pr_warn("Can't lock device %u mutex, aborting", pDev->ulDevID);

        return -EINTR;
    }

    if(pDev->pFile)
    {
        pr_warn("Device %u file already open, aborting", pDev->ulDevID);

        mutex_unlock(&pDev->sMutex);

        return -EBUSY;
    }

    pDev->pFile = pFile;
    pFile->private_data = pDev;

    init_waitqueue_head(&pDev->sIRQWaitQueue);

    spin_lock_irqsave(&pDev->sIRQLock, ulIRQFlags);

    pDev->ullIRQCount = 0;
    pDev->ubIRQFlush = 0;

    spin_unlock_irqrestore(&pDev->sIRQLock, ulIRQFlags);

    mutex_unlock(&pDev->sMutex);

    return 0;
}
static int icyradio_release(struct inode *pInode, struct file *pFile)
{
    icyradio_dev_t *pDev = (icyradio_dev_t *)pFile->private_data;

    pr_debug("Releasing device %u", pDev->ulDevID);

    if(mutex_lock_interruptible(&pDev->sMutex))
    {
        pr_warn("Can't lock device %u mutex, aborting", pDev->ulDevID);

        return -EINTR;
    }

    if(!pDev->pFile)
        pr_err("Releasing device %u while not open", pDev->ulDevID);

    pDev->pFile = NULL;
    pFile->private_data = NULL;

    mutex_unlock(&pDev->sMutex);

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
    void *pDNABase;
    char szDesignID[9];
    uint32_t ulDesignVersion;
    uint32_t ulTimeout;

    pr_debug("Probing PCI device %04X:%04X", pPCIDev->vendor, pPCIDev->device);

    if(pPCIDev->vendor != ICYRADIO_PCI_VENDOR_ID || pPCIDev->device != ICYRADIO_PCI_DEVICE_ID)
    {
        pr_warn("Not an IcyRadio device, aborting");

        return -EINVAL;
    }

    // Lock the device table mutex
    if(mutex_lock_interruptible(&icyradio_devs_mutex))
    {
        pr_warn("Can't lock device table mutex, aborting");

        return -EINTR;
    }

    // Find a free device ID
    while(ulDevID < ICYRADIO_MAX_DEVICES && icyradio_devs[ulDevID])
        ulDevID++;

    if(ulDevID == ICYRADIO_MAX_DEVICES)
    {
        pr_warn("Too many IcyRadio devices, not registering new, aborting");

        mutex_unlock(&icyradio_devs_mutex);

        return -ENOMEM;
    }

    pr_info("Registering new IcyRadio device with ID %u", ulDevID);

    // Allocate and initialize device struct
    pDev = (icyradio_dev_t *)kzalloc(sizeof(icyradio_dev_t), GFP_KERNEL);

    if(!pDev)
    {
        pr_err("Can't allocate memory for device %u, aborting", ulDevID);

        return -ENOMEM;
    }

    mutex_init(&pDev->sMutex);
    mutex_lock(&pDev->sMutex); // Use non-interruptible lock since it should never block

    pDev->ulDevID = ulDevID;
    pDev->pPCIDev = pPCIDev;

    // Enable device
    if(pci_enable_device(pPCIDev))
    {
        pr_err("Can't enable PCI device %u, aborting", ulDevID);

        mutex_unlock(&pDev->sMutex);
        kfree(pDev);
        mutex_unlock(&icyradio_devs_mutex);

        return -EFAULT;
    }

#ifdef DEBUG
    // Enumerate PCI resources
    pr_devel("BARs:");

    for(int i = 0; i < ICYRADIO_PCIE_NUM_BARS; i++)
    {
        if(!pci_resource_len(pPCIDev, i))
            continue;

        pr_devel("  BAR #%d: start: 0x%08llX, end: 0x%08llX, AXI start: 0x%08X, AXI end: 0x%08llX, len: 0x%08llX, flags: 0x%08lX", i, pci_resource_start(pPCIDev, i), pci_resource_end(pPCIDev, i), icyradio_pci_bar_axi_xlate[i], icyradio_pci_bar_axi_xlate[i] + pci_resource_len(pPCIDev, i) - 1, pci_resource_len(pPCIDev, i), pci_resource_flags(pPCIDev, i));
    }
#endif

    // Request PCI resources
    if(pci_request_regions(pPCIDev, "icyradio"))
    {
        pr_err("Can't request PCI regions for device %u, aborting", ulDevID);

        pci_disable_device(pPCIDev);
        mutex_unlock(&pDev->sMutex);
        kfree(pDev);
        mutex_unlock(&icyradio_devs_mutex);

        return -EFAULT;
    }

    // Query the DNA (ROM) info
    pBAR = pci_iomap(pPCIDev, 2, 0); // Map BAR #2 (ROM)

    if(!pBAR)
    {
        pr_err("Can't map BAR #2 on device %u to access DNA, aborting", ulDevID);

        pci_release_regions(pPCIDev);
        pci_disable_device(pPCIDev);
        mutex_unlock(&pDev->sMutex);
        kfree(pDev);
        mutex_unlock(&icyradio_devs_mutex);

        return -EFAULT;
    }

    pDNABase = (void *)((uintptr_t)pBAR + (AXI_DNA_BASE - ICYRADIO_PCIE_BAR2_AXI_XLATE));

    icyradio_axi_dna_get_design_id(pDNABase, szDesignID);

    pr_info("Device %u design ID: %s", ulDevID, szDesignID);

    if(strcmp(szDesignID, "ICYRADIO"))
    {
        pr_err("Device %u is not an IcyRadio, aborting", ulDevID);

        pci_iounmap(pPCIDev, pBAR);
        pci_release_regions(pPCIDev);
        pci_disable_device(pPCIDev);
        mutex_unlock(&pDev->sMutex);
        kfree(pDev);
        mutex_unlock(&icyradio_devs_mutex);

        return -EINVAL;
    }

    ulDesignVersion = icyradio_axi_dna_get_design_version(pDNABase);

    pr_info("Device %u design version: v%u.%u.%u", ulDevID, AXI_DNA_DESIGN_VERSION_MAJOR(ulDesignVersion), AXI_DNA_DESIGN_VERSION_MINOR(ulDesignVersion), AXI_DNA_DESIGN_VERSION_PATCH(ulDesignVersion));

    if(ulDesignVersion < AXI_DNA_DESIGN_VERSION(1, 0, 0))
    {
        pr_err("Unsupported design version for device %u, aborting", ulDevID);

        pci_iounmap(pPCIDev, pBAR);
        pci_release_regions(pPCIDev);
        pci_disable_device(pPCIDev);
        mutex_unlock(&pDev->sMutex);
        kfree(pDev);
        mutex_unlock(&icyradio_devs_mutex);

        return -EINVAL;
    }

    pr_info("Device %u info: 0x%08X", ulDevID, icyradio_axi_dna_get_device_info(pDNABase));
    pr_info("Device %u User Access: 0x%08X", ulDevID, icyradio_axi_dna_get_usr_access(pDNABase));
    pr_info("Device %u EFUSE USR: 0x%08X", ulDevID, icyradio_axi_dna_get_efuse_usr(pDNABase));

    ulTimeout = 100;

    while(--ulTimeout && !icyradio_axi_dna_get_dna_ready(pDNABase)) // Wait for the DNA to be ready
        udelay(10);

    if(!ulTimeout)
    {
        pr_err("Timed out waiting for DNA of device %u to be ready, aborting", ulDevID);

        pci_iounmap(pPCIDev, pBAR);
        pci_release_regions(pPCIDev);
        pci_disable_device(pPCIDev);
        mutex_unlock(&pDev->sMutex);
        kfree(pDev);
        mutex_unlock(&icyradio_devs_mutex);

        return -EFAULT;
    }

    pDev->ullSerialNumber = icyradio_axi_dna_get_dna(pDNABase);

    pr_info("Device %u serial number: %015llX", ulDevID, pDev->ullSerialNumber);

    pDNABase = NULL;
    pci_iounmap(pPCIDev, pBAR);
    pBAR = NULL;

    // Set DMA mask
    if(dma_set_mask_and_coherent(&pPCIDev->dev, DMA_BIT_MASK(48)))
    {
        pr_warn("Can't set device %u DMA mask to 48 bits, trying 32 bits", ulDevID);

        if(dma_set_mask_and_coherent(&pPCIDev->dev, DMA_BIT_MASK(32)))
        {
            pr_err("Can't set device %u DMA mask to 32 bits, aborting", ulDevID);

            pci_release_regions(pPCIDev);
            pci_disable_device(pPCIDev);
            mutex_unlock(&pDev->sMutex);
            kfree(pDev);
            mutex_unlock(&icyradio_devs_mutex);

            return -EFAULT;
        }
        else
        {
            pr_info("Device %u DMA mask set to 32 bits", ulDevID);
        }
	}
    else
    {
        pr_info("Device %u DMA mask set to 48 bits", ulDevID);
    }

    // Setup interrupts
    pDev->iNumIRQs = pci_alloc_irq_vectors(pPCIDev, 1, ICYRADIO_PCIE_MSI_MAX_VECTORS, PCI_IRQ_MSI | PCI_IRQ_MSIX | PCI_IRQ_AFFINITY); // Allocate up to ICYRADIO_PCIE_MSI_MAX_VECTORS MSI-X vectors

    if(pDev->iNumIRQs < 0)
    {
        pr_err("Can't allocate MSI-X vectors for device %u, aborting", ulDevID);

        pci_release_regions(pPCIDev);
        pci_disable_device(pPCIDev);
        mutex_unlock(&pDev->sMutex);
        kfree(pDev);
        mutex_unlock(&icyradio_devs_mutex);

        return -EFAULT;
    }

    pr_info("Allocated %d MSI-X vectors for device %u", pDev->iNumIRQs, ulDevID);

    spin_lock_init(&pDev->sIRQLock);

    for(int i = 0; i < pDev->iNumIRQs; i++)
    {
        int iVec = pci_irq_vector(pPCIDev, i);

        pr_debug("  MSI-X vector %d: IRQ %d", i, iVec);

        if(request_irq(iVec, icyradio_irq_handler, 0, ICYRADIO_DEV_NAME, pDev))
        {
            pr_err("Can't request vector %d (IRQ %d) for device %u, aborting", i, iVec, ulDevID);

            for(int j = 0; j < i; j++)
                free_irq(pci_irq_vector(pPCIDev, j), pDev);

            pci_free_irq_vectors(pPCIDev);
            pci_release_regions(pPCIDev);
            pci_disable_device(pPCIDev);
            mutex_unlock(&pDev->sMutex);
            kfree(pDev);
            mutex_unlock(&icyradio_devs_mutex);

            return -EFAULT;
        }
    }

    // Initialize character device
    cdev_init(&pDev->sCharDev, &icyradio_fops);
    pDev->sCharDev.owner = THIS_MODULE;

    ulDevNum = MKDEV(MAJOR(icyradio_dev_num), MINOR(icyradio_dev_num) + ulDevID);

    pr_debug("Registering cdev for device %u with major %u and minor %u", ulDevID, MAJOR(ulDevNum), MINOR(ulDevNum));

    if(cdev_add(&pDev->sCharDev, ulDevNum, 1))
    {
        pr_err("Can't add cdev for device %u, aborting", ulDevID);

        for(int i = 0; i < pDev->iNumIRQs; i++)
            free_irq(pci_irq_vector(pPCIDev, i), pDev);

        pci_free_irq_vectors(pPCIDev);
        pci_release_regions(pPCIDev);
        pci_disable_device(pPCIDev);
        mutex_unlock(&pDev->sMutex);
        kfree(pDev);
        mutex_unlock(&icyradio_devs_mutex);

        return -ENODEV;
    }

    pUDevDevice = device_create(icyradio_class, &pPCIDev->dev, ulDevNum, pDev, "%s%u", ICYRADIO_DEV_NAME, ulDevID);

    if(IS_ERR(pUDevDevice))
    {
        pr_err("Can't create udev device for device %u, aborting", ulDevID);

        cdev_del(&pDev->sCharDev);

        for(int i = 0; i < pDev->iNumIRQs; i++)
            free_irq(pci_irq_vector(pPCIDev, i), pDev);

        pci_free_irq_vectors(pPCIDev);
        pci_release_regions(pPCIDev);
        pci_disable_device(pPCIDev);
        mutex_unlock(&pDev->sMutex);
        kfree(pDev);
        mutex_unlock(&icyradio_devs_mutex);

        return PTR_ERR(pUDevDevice);
    }

    pr_info("Device %u file created at /dev/%s%u", ulDevID, ICYRADIO_DEV_NAME, ulDevID);

    // After all configuration is successful, register the device in the array and set its drvdata
    icyradio_devs[ulDevID] = pDev;
    pci_set_drvdata(pPCIDev, pDev);

    pr_notice("IcyRadio device %u successfully probed", ulDevID);

    mutex_unlock(&pDev->sMutex);
    mutex_unlock(&icyradio_devs_mutex);

    return 0;
}
static void icyradio_pci_remove(struct pci_dev *pPCIDev)
{
    icyradio_dev_t *pDev = pci_get_drvdata(pPCIDev);
    int iDevID = -1;

    pr_debug("Removing PCI device %04X:%04X", pPCIDev->vendor, pPCIDev->device);

    if(pPCIDev->vendor != ICYRADIO_PCI_VENDOR_ID || pPCIDev->device != ICYRADIO_PCI_DEVICE_ID)
    {
        pr_warn("Not an IcyRadio device, aborting");

        return;
    }

    if(pDev)
    {
        pr_info("Removing IcyRadio device %u", pDev->ulDevID);

        if(pDev->pPCIDev != pPCIDev)
            pr_warn("PCI device ptr mismatch for device %u", pDev->ulDevID);

        iDevID = pDev->ulDevID;

        mutex_lock(&pDev->sMutex); // Use non-interruptible lock since we can't return an error from here

        if(pDev->pFile)
            pr_warn("Device %u file still open, processes may be using it", pDev->ulDevID);

        // Free IRQs first so that we don't try to access the device in the ISR after it's removed
        for(int i = 0; i < pDev->iNumIRQs; i++)
            free_irq(pci_irq_vector(pPCIDev, i), pDev);

        if(pDev->pDMAVirtAddr)
            dmam_free_coherent(&pPCIDev->dev, pDev->ulDMABufSize, pDev->pDMAVirtAddr, pDev->ulDMAPhysAddr);

        device_destroy(icyradio_class, MKDEV(MAJOR(icyradio_dev_num), MINOR(icyradio_dev_num) + pDev->ulDevID));
        cdev_del(&pDev->sCharDev);

        mutex_lock(&icyradio_devs_mutex);
        icyradio_devs[pDev->ulDevID] = NULL;
        mutex_unlock(&icyradio_devs_mutex);

        mutex_unlock(&pDev->sMutex);

        kfree(pDev);
    }
    else
    {
        pr_err("Can't find IcyRadio device struct");

        // Free IRQs anway
        for(int i = 0; i < pDev->iNumIRQs; i++)
            free_irq(pci_irq_vector(pPCIDev, i), pDev);
    }

    pci_free_irq_vectors(pPCIDev);
    pci_clear_master(pPCIDev);
    pci_release_regions(pPCIDev);
    pci_disable_device(pPCIDev);

    if(iDevID >= 0)
        pr_info("IcyRadio device %d removed", iDevID);
    else
        pr_warn("Unknown IcyRadio device removed");
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

    mutex_init(&icyradio_devs_mutex);

#if(LINUX_VERSION_CODE < KERNEL_VERSION(6, 4, 0))
    icyradio_class = class_create(THIS_MODULE, ICYRADIO_CLASS_NAME);
#else
    icyradio_class = class_create(ICYRADIO_CLASS_NAME);
#endif

    if(IS_ERR(icyradio_class))
    {
        pr_err("Can't create IcyRadio class, aborting");

        return PTR_ERR(icyradio_class);
    }

    status = alloc_chrdev_region(&icyradio_dev_num, 0, ICYRADIO_MAX_DEVICES, ICYRADIO_DEV_NAME);

    if(status < 0)
    {
        pr_err("Can't allocate device number (%d), aborting", status);

        class_destroy(icyradio_class);

        return status;
    }

    pr_info("Allocated major number %d, minor numbers %d-%d", MAJOR(icyradio_dev_num), MINOR(icyradio_dev_num), MINOR(icyradio_dev_num) + ICYRADIO_MAX_DEVICES - 1);

    status = pci_register_driver(&icyradio_pci_driver);

    if(status < 0)
    {
        pr_err("Can't register PCI driver (%d), aborting", status);

        unregister_chrdev_region(icyradio_dev_num, ICYRADIO_MAX_DEVICES);
        class_destroy(icyradio_class);

        return status;
    }

    pr_info("IcyRadio kernel module loaded");

    return 0;
}
static void __exit icyradio_exit(void)
{
    pci_unregister_driver(&icyradio_pci_driver);

    unregister_chrdev_region(icyradio_dev_num, ICYRADIO_MAX_DEVICES);
    class_destroy(icyradio_class);

    pr_info("IcyRadio kernel module unloaded");
}

module_init(icyradio_init);
module_exit(icyradio_exit);

MODULE_LICENSE("GPL");
MODULE_AUTHOR("João Silva");
MODULE_DESCRIPTION("IcyRadio SDR v2 Kernel driver.");
MODULE_VERSION("1.0.0");
MODULE_DEVICE_TABLE(pci, icyradio_pci_tbl);