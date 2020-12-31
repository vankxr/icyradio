#include <errno.h>
#include <signal.h>
#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <libusb.h>

#define ICYRADIO_USB_VENDOR_ID  0x10C4
#define ICYRADIO_USB_PRODUCT_ID 0x8C67

#define ICYRADIO_USB_CTRL_INTERFACE     0
#define ICYRADIO_USB_CTRL_IN_ENDPOINT   (LIBUSB_ENDPOINT_IN | LIBUSB_REQUEST_TYPE_VENDOR)
#define ICYRADIO_USB_CTRL_OUT_ENDPOINT  (LIBUSB_ENDPOINT_OUT | LIBUSB_REQUEST_TYPE_VENDOR)
#define ICYRADIO_USB_RX_INTERFACE       1
#define ICYRADIO_USB_RX_ENDPOINT        (LIBUSB_ENDPOINT_IN | (1 & 0xF))
#define ICYRADIO_USB_TX_INTERFACE       2
#define ICYRADIO_USB_TX_ENDPOINT        (LIBUSB_ENDPOINT_OUT | (2 & 0xF))

#define LIBUSB_BUF_NUMBER   15
#define LIBUSB_BUF_LENGTH   16 * 1024

static volatile int iShutdown = 0;
static uint8_t ubZeroCopy = 1;
static uint32_t ulTransferErrors = 0;
static libusb_context *pLibUSBContext = NULL;
static libusb_device *pLibUSBDevice = NULL;
static struct libusb_device_handle *pLibUSBDeviceHandle = NULL;
static struct libusb_transfer **ppLibUSBTransfer = NULL;
static uint8_t **ppubLibUSBTransferBuffer = NULL;

void sig_handler(int signal)
{
    iShutdown = 1;

    fprintf(stderr, "Got signal %d, cancelling...\r\n", signal);
}

int alloc_async_buffers()
{
    if(!pLibUSBDevice)
        return -1;

    if(!ppLibUSBTransfer)
    {
        ppLibUSBTransfer = malloc(LIBUSB_BUF_NUMBER * sizeof(struct libusb_transfer *));

        for(uint32_t i = 0; i < LIBUSB_BUF_NUMBER; i++)
            ppLibUSBTransfer[i] = libusb_alloc_transfer(0);
    }

    if(ppubLibUSBTransferBuffer)
        return -2;

    ppubLibUSBTransferBuffer = malloc(LIBUSB_BUF_NUMBER * sizeof(uint8_t *));
    memset(ppubLibUSBTransferBuffer, 0, LIBUSB_BUF_NUMBER * sizeof(unsigned char *));

    fprintf(stderr, "Allocating %d zero-copy buffers\r\n", LIBUSB_BUF_NUMBER);

    for(uint32_t i = 0; i < LIBUSB_BUF_NUMBER; i++)
    {
        ppubLibUSBTransferBuffer[i] = libusb_dev_mem_alloc(pLibUSBDeviceHandle, LIBUSB_BUF_LENGTH);

        if(ppubLibUSBTransferBuffer[i])
        {
            if(ppubLibUSBTransferBuffer[i][0] || memcmp(ppubLibUSBTransferBuffer[i], ppubLibUSBTransferBuffer[i] + 1, LIBUSB_BUF_LENGTH - 1))
            {
                fprintf(stderr, "Detected Kernel usbfs mmap() bug, falling back to buffers in userspace\r\n");

                ubZeroCopy = 0;

                break;
            }
        }
        else
        {
            fprintf(stderr, "Failed to allocate zero-copy buffer for transfer %d, falling back to buffers in userspace\r\n", i);

            ubZeroCopy = 0;

            break;
        }
    }

    if(!ubZeroCopy)
    {
        for(uint32_t i = 0; i < LIBUSB_BUF_NUMBER; i++)
            if(ppubLibUSBTransferBuffer[i])
                libusb_dev_mem_free(pLibUSBDeviceHandle, ppubLibUSBTransferBuffer[i], LIBUSB_BUF_LENGTH);

        for(uint32_t i = 0; i < LIBUSB_BUF_NUMBER; i++)
        {
            ppubLibUSBTransferBuffer[i] = malloc(LIBUSB_BUF_LENGTH);

            if(!ppubLibUSBTransferBuffer[i])
                return -ENOMEM;
        }
    }

    return 0;
}
int free_async_buffers()
{
    if(!pLibUSBDevice)
        return -1;

    if(ppLibUSBTransfer)
    {
        for(uint32_t i = 0; i < LIBUSB_BUF_NUMBER; i++)
            if(ppLibUSBTransfer[i])
                libusb_free_transfer(ppLibUSBTransfer[i]);

        free(ppLibUSBTransfer);
        ppLibUSBTransfer = NULL;
    }

    if(ppubLibUSBTransferBuffer)
    {
        for(uint32_t i = 0; i < LIBUSB_BUF_NUMBER; i++)
            if(ppubLibUSBTransferBuffer[i])
                if(ubZeroCopy)
                    libusb_dev_mem_free(pLibUSBDeviceHandle, ppubLibUSBTransferBuffer[i], LIBUSB_BUF_LENGTH);
                else
                    free(ppubLibUSBTransferBuffer[i]);

        free(ppubLibUSBTransferBuffer);
        ppubLibUSBTransferBuffer = NULL;
    }

    return 0;
}

void libusb_callback(struct libusb_transfer *pLibUSBTransfer)
{
    if(pLibUSBTransfer->status == LIBUSB_TRANSFER_COMPLETED)
    {
        fwrite(pLibUSBTransfer->buffer, 1, pLibUSBTransfer->actual_length, stdout);

        libusb_submit_transfer(pLibUSBTransfer);

        ulTransferErrors = 0;
    }
    else if(pLibUSBTransfer->status != LIBUSB_TRANSFER_CANCELLED)
    {
        if(pLibUSBTransfer->status == LIBUSB_TRANSFER_ERROR)
            ulTransferErrors++;

        if(pLibUSBTransfer->status == LIBUSB_TRANSFER_NO_DEVICE || ulTransferErrors >= LIBUSB_BUF_NUMBER)
        {
            iShutdown = 2;

            fprintf(stderr, "libusb callback transfer status: %d, cancelling...\r\n", pLibUSBTransfer->status);
        }
    }
}

int main(int argc, char *argv[])
{
    // Signal handlers
    signal(SIGINT, sig_handler);
    signal(SIGTERM, sig_handler);

    int e = 0;
    libusb_device **ppLibUSBDeviceList = NULL;
    uint32_t ulDeviceIndex = 0; // TODO: Pass device index thru parameter

    // Init LibUSB
    e = libusb_init(&pLibUSBContext);

    if(e)
        return e;

    // Find device
    int iDeviceCount = libusb_get_device_list(pLibUSBContext, &ppLibUSBDeviceList);
    uint32_t ulFoundDeviceCount = 0;

    fprintf(stderr, "List IcyRadio devices...\r\n");

    for(uint32_t i = 0; i < iDeviceCount; i++)
    {
        libusb_device *pCurrentLibUSBDevice = ppLibUSBDeviceList[i];

        struct libusb_device_descriptor sDeviceDescriptor;

        e = libusb_get_device_descriptor(pCurrentLibUSBDevice, &sDeviceDescriptor);

        if(e)
            continue;

        if(sDeviceDescriptor.idVendor == ICYRADIO_USB_VENDOR_ID && sDeviceDescriptor.idProduct == ICYRADIO_USB_PRODUCT_ID)
        {
            if(!sDeviceDescriptor.iSerialNumber)
            {
                fprintf(stderr, "\tDevice %u has no S/N (?), skipping.\r\n", i);

                continue;
            }

            struct libusb_device_handle *pCurrentLibUSBDeviceHandle = NULL;

            e = libusb_open(pCurrentLibUSBDevice, &pCurrentLibUSBDeviceHandle);

            if(e)
            {
                fprintf(stderr, "\tError opening device %u, skipping.\r\n", i);

                continue;
            }

            char szSerialNumber[64];

            memset(szSerialNumber, 0, sizeof(szSerialNumber));

            e = libusb_get_string_descriptor_ascii(pCurrentLibUSBDeviceHandle, sDeviceDescriptor.iSerialNumber, (unsigned char *)szSerialNumber, sizeof(szSerialNumber));

            libusb_close(pCurrentLibUSBDeviceHandle);

            if(e < 0)
            {
                fprintf(stderr, "\tError getting device %u S/N, skipping.\r\n", i);

                continue;
            }

            fprintf(stderr, "\tFound IcyRadio #%u (device %u) with S/N %s\r\n", ulFoundDeviceCount, i, szSerialNumber);

            pLibUSBDeviceHandle = NULL;

            ulFoundDeviceCount++;

            if(ulDeviceIndex == ulFoundDeviceCount - 1)
                pLibUSBDevice = pCurrentLibUSBDevice;
        }
    }

    fprintf(stderr, "Found %u IcyRadio devices\r\n", ulFoundDeviceCount);

    if(!pLibUSBDevice)
    {
        fprintf(stderr, "No device with index %u found\r\n", ulDeviceIndex);

        libusb_exit(pLibUSBContext);

        return -1;
    }

    // Open device
    e = libusb_open(pLibUSBDevice, &pLibUSBDeviceHandle);

    libusb_free_device_list(ppLibUSBDeviceList, 1);

    if(e)
    {
        if(e == LIBUSB_ERROR_ACCESS)
            fprintf(stderr, "LIBUSB_ERROR_ACCESS - Are udev rules installed?\r\n");

        libusb_exit(pLibUSBContext);

        return e;
    }

    // Claim interface
    e = libusb_claim_interface(pLibUSBDeviceHandle, ICYRADIO_USB_RX_INTERFACE);

    if(e)
    {
        if(e == LIBUSB_ERROR_BUSY)
            fprintf(stderr, "LIBUSB_ERROR_BUSY - Is this the only instance?\r\n");

        libusb_close(pLibUSBDeviceHandle);
        libusb_exit(pLibUSBContext);

        return e;
    }

    // Alloc async buffers
    e = alloc_async_buffers();

    if(e)
    {
        if(e == -ENOMEM)
            fprintf(stderr, "ENOMEM - No memory in userspace\r\n");

        libusb_release_interface(pLibUSBDeviceHandle, ICYRADIO_USB_RX_INTERFACE);
        libusb_close(pLibUSBDeviceHandle);
        libusb_exit(pLibUSBContext);

        return e;
    }

    // Submit transfers
    for(uint32_t i = 0; i < LIBUSB_BUF_NUMBER; i++)
    {
        libusb_fill_bulk_transfer(ppLibUSBTransfer[i], pLibUSBDeviceHandle, ICYRADIO_USB_RX_ENDPOINT, ppubLibUSBTransferBuffer[i], LIBUSB_BUF_LENGTH, libusb_callback, NULL, 0);

        e = libusb_submit_transfer(ppLibUSBTransfer[i]);

        if(e)
        {
            fprintf(stderr, "Failed to submit transfer %i\r\n", i);
            fprintf(stderr, "Please increase your allowed usbfs buffer size with the following command:\r\n");
            fprintf(stderr, "echo 0 > /sys/module/usbcore/parameters/usbfs_memory_mb\r\n");

            free_async_buffers();

            libusb_release_interface(pLibUSBDeviceHandle, ICYRADIO_USB_RX_INTERFACE);
            libusb_close(pLibUSBDeviceHandle);
            libusb_exit(pLibUSBContext);

            return e;
        }
    }

    struct timeval tv = {
        .tv_sec = 1,
        .tv_usec = 0
    };
    struct timeval zerotv = {
        .tv_sec = 0,
        .tv_usec = 0
    };

    while(iShutdown < 3)
    {
        e = libusb_handle_events_timeout_completed(pLibUSBContext, &tv, (int *)&iShutdown);

        if(e)
        {
            if(e == LIBUSB_ERROR_INTERRUPTED)
                continue;

            break;
        }

        if(iShutdown == 1)
        {
            iShutdown = 2;

            if(!ppLibUSBTransfer)
                break;

            for(uint32_t i = 0; i < LIBUSB_BUF_NUMBER; i++)
            {
                if(!ppLibUSBTransfer[i])
                    continue;

                if(ppLibUSBTransfer[i]->status != LIBUSB_TRANSFER_CANCELLED)
                {
                    e = libusb_cancel_transfer(ppLibUSBTransfer[i]);

                    libusb_handle_events_timeout_completed(pLibUSBContext, &zerotv, NULL);

                    if(e < 0)
                        continue;

                    iShutdown = 1;
                }
            }

            if(iShutdown == 2)
            {
                libusb_handle_events_timeout_completed(pLibUSBContext, &zerotv, NULL);

                iShutdown = 3;
            }
        }
    }

    // Cleanup
    fprintf(stderr, "Cleanup...\r\n");

    free_async_buffers();

    libusb_release_interface(pLibUSBDeviceHandle, ICYRADIO_USB_RX_INTERFACE);
    libusb_close(pLibUSBDeviceHandle);
    libusb_exit(pLibUSBContext);

    return 0;
}