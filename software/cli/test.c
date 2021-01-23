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

int main(int argc, char *argv[])
{
    int e = 0;
    libusb_context *pLibUSBContext = NULL;
    libusb_device **ppLibUSBDeviceList = NULL;
    libusb_device *pLibUSBDevice = NULL;
    struct libusb_device_handle *pLibUSBDeviceHandle = NULL;
    uint32_t ulDeviceIndex = 0;

    e = libusb_init(&pLibUSBContext);

    if(e)
        return e;

    int iDeviceCount = libusb_get_device_list(pLibUSBContext, &ppLibUSBDeviceList);
    uint32_t ulFoundDeviceCount = 0;

    for(int i = 0; i < iDeviceCount; i++)
    {
        pLibUSBDevice = ppLibUSBDeviceList[i];

        struct libusb_device_descriptor sDeviceDescriptor;

        libusb_get_device_descriptor(pLibUSBDevice, &sDeviceDescriptor);

        if(sDeviceDescriptor.idVendor == ICYRADIO_USB_VENDOR_ID && sDeviceDescriptor.idProduct == ICYRADIO_USB_PRODUCT_ID)
        {
            ulFoundDeviceCount++;

            if(ulDeviceIndex == ulFoundDeviceCount - 1)
                break;
        }

        pLibUSBDevice = NULL;
    }

    if(!pLibUSBDevice)
        return -1;

    e = libusb_open(pLibUSBDevice, &pLibUSBDeviceHandle);

    libusb_free_device_list(ppLibUSBDeviceList, 1);

    if(e)
    {
        if(e == LIBUSB_ERROR_ACCESS)
            fprintf(stderr, "LIBUSB_ERROR_ACCESS - Are udev rules installed?\r\n");

        return e;
    }

    e = libusb_claim_interface(pLibUSBDeviceHandle, ICYRADIO_USB_RX_INTERFACE);

    if(e)
    {
        if(e == LIBUSB_ERROR_BUSY)
            fprintf(stderr, "LIBUSB_ERROR_BUSY - Is this the only instance?\r\n");

        return e;
    }

    uint8_t ubBuf[1024];
    int act_len = 0;

    memset(ubBuf, 0xA5, sizeof(ubBuf));

    #include <sys/time.h>

    struct timeval stop, start;
    gettimeofday(&start, NULL);
    for(int i = 0; i < 100*1024*1024/sizeof(ubBuf); i++)
    {
        e = libusb_bulk_transfer(pLibUSBDeviceHandle, ICYRADIO_USB_TX_ENDPOINT, ubBuf, sizeof(ubBuf), &act_len, 1000);

        if(e < 0)
            fprintf(stderr, "libusb_bulk_transfer failed with %d\r\n", e);
    }
    gettimeofday(&stop, NULL);
    long unsigned int len = (stop.tv_sec - start.tv_sec) * 1000000 + stop.tv_usec - start.tv_usec;
    float datarate = 100.f * 1024.f * 1024.f  / len; // MB/s
    float bitrate = datarate * 8;
    float samplerate = bitrate / 32 * 1000;

    fprintf(stderr, "USB Bulk OUT 100 MB transfer time: %lu us\r\n", len);
    fprintf(stderr, "USB Bulk OUT data rate: %.3f MB/s\r\n", datarate);
    fprintf(stderr, "USB Bulk OUT data rate: %.3f Mbps\r\n", bitrate);
    fprintf(stderr, "USB Bulk OUT data rate: %.3f ksps\r\n", samplerate);

    memset(ubBuf, 0xA5, sizeof(ubBuf));

    gettimeofday(&start, NULL);
    for(int i = 0; i < 100*1024*1024/sizeof(ubBuf); i++)
    {
        e = libusb_bulk_transfer(pLibUSBDeviceHandle, ICYRADIO_USB_RX_ENDPOINT, ubBuf, sizeof(ubBuf), &act_len, 1000);

        if(e < 0)
            fprintf(stderr, "libusb_bulk_transfer failed with %d\r\n", e);
    }
    gettimeofday(&stop, NULL);
    len = (stop.tv_sec - start.tv_sec) * 1000000 + stop.tv_usec - start.tv_usec;
    datarate = 100.f * 1024.f * 1024.f / len; // MB/s
    bitrate = datarate * 8;
    samplerate = bitrate / 32 * 1000;

    fprintf(stderr, "USB Bulk IN 100 MB transfer time: %lu us\r\n", len);
    fprintf(stderr, "USB Bulk IN data rate: %.3f MB/s\r\n", datarate);
    fprintf(stderr, "USB Bulk IN data rate: %.3f Mbps\r\n", bitrate);
    fprintf(stderr, "USB Bulk IN data rate: %.3f ksps\r\n", samplerate);

    libusb_release_interface(pLibUSBDeviceHandle, ICYRADIO_USB_RX_INTERFACE);
    libusb_close(pLibUSBDeviceHandle);
    libusb_exit(pLibUSBContext);

    return 0;
}