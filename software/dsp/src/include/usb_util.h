#ifndef __USB_UTIL_H__
#define __USB_UTIL_H__

#include <stdint.h>
#include <stdlib.h>
#include <string.h>

#define USB_SETUP_REQUEST_TYPE_DIR_H2D              0x00
#define USB_SETUP_REQUEST_TYPE_DIR_D2H              0x80
#define USB_SETUP_REQUEST_TYPE_DIR_MASK             0x80
#define USB_SETUP_REQUEST_TYPE_TYPE_STANDARD        0x00
#define USB_SETUP_REQUEST_TYPE_TYPE_CLASS           0x20
#define USB_SETUP_REQUEST_TYPE_TYPE_VENDOR          0x40
#define USB_SETUP_REQUEST_TYPE_TYPE_MASK            0x60
#define USB_SETUP_REQUEST_TYPE_RECIPIENT_DEVICE     0x00
#define USB_SETUP_REQUEST_TYPE_RECIPIENT_INTERFACE  0x01
#define USB_SETUP_REQUEST_TYPE_RECIPIENT_ENDPOINT   0x02
#define USB_SETUP_REQUEST_TYPE_RECIPIENT_OTHER      0x03
#define USB_SETUP_REQUEST_TYPE_RECIPIENT_MASK       0x03

#define USB_SETUP_STD_REQUEST_GET_STATUS        0x00
#define USB_SETUP_STD_REQUEST_CLEAR_FEATURE     0x01
#define USB_SETUP_STD_REQUEST_SET_FEATURE       0x03
#define USB_SETUP_STD_REQUEST_SET_ADDRESS       0x05
#define USB_SETUP_STD_REQUEST_GET_DESCRIPTOR    0x06
#define USB_SETUP_STD_REQUEST_SET_DESCRIPTOR    0x07
#define USB_SETUP_STD_REQUEST_GET_CONFIGURATION 0x08
#define USB_SETUP_STD_REQUEST_SET_CONFIGURATION 0x09
#define USB_SETUP_STD_REQUEST_GET_INTERFACE     0x0A
#define USB_SETUP_STD_REQUEST_SET_INTERFACE     0x0B
#define USB_SETUP_STD_REQUEST_SYNC_FRAME        0x0C

#define USB_DESCRIPTOR_TYPE_DEVICE                      0x01
#define USB_DESCRIPTOR_TYPE_CONFIGURATION               0x02
#define USB_DESCRIPTOR_TYPE_STRING                      0x03
#define USB_DESCRIPTOR_TYPE_INTERFACE                   0x04
#define USB_DESCRIPTOR_TYPE_ENDPOINT                    0x05
#define USB_DESCRIPTOR_TYPE_DEVICE_QUALIFIER            0x06
#define USB_DESCRIPTOR_TYPE_OTHER_SPEED_CONFIGURATION   0x07
#define USB_DESCRIPTOR_TYPE_INTERFACE_POWER             0x08
#define USB_DESCRIPTOR_TYPE_OTG                         0x09
#define USB_DESCRIPTOR_TYPE_DEBUG                       0x0A

#define USB_SPEC_1p00   0x0100
#define USB_SPEC_1p10   0x0110
#define USB_SPEC_2p00   0x0200

#define USB_CONFIGURATION_DESCRIPTOR_ATTR_RESERVED      0x80
#define USB_CONFIGURATION_DESCRIPTOR_ATTR_SELF_POWERED  0x40
#define USB_CONFIGURATION_DESCRIPTOR_ATTR_REMOTE_WAKEUP 0x20
#define USB_CONFIGURATION_DESCRIPTOR_POWER(p)           ((uint32_t)(p) >> 1)

#define USB_ENDPOINT_ADDR_OUT   0x00
#define USB_ENDPOINT_ADDR_IN    0x80

#define USB_ENDPOINT_ATTR_CONTROL           0x00
#define USB_ENDPOINT_ATTR_ISOCHRONOUS       0x01
#define USB_ENDPOINT_ATTR_BULK              0x02
#define USB_ENDPOINT_ATTR_INTERRUPT         0x03
#define USB_ENDPOINT_ATTR_ISO_NO_SYNC       0x00
#define USB_ENDPOINT_ATTR_ISO_ASYNC         0x04
#define USB_ENDPOINT_ATTR_ISO_ADAPTIVE      0x08
#define USB_ENDPOINT_ATTR_ISO_SYNC          0x0C
#define USB_ENDPOINT_ATTR_ISO_USAGE_DATA    0x00
#define USB_ENDPOINT_ATTR_ISO_USAGE_FB      0x10
#define USB_ENDPOINT_ATTR_ISO_USAGE_EXP_FB  0x20

#define USB_ENDPOINT_TT_CONTROL     0x00
#define USB_ENDPOINT_TT_ISOCHRONOUS 0x01
#define USB_ENDPOINT_TT_BULK        0x02
#define USB_ENDPOINT_TT_INTERRUPT   0x03

#define USB_LANG_CODE_EN_US 0x0409

#define USB_DEVICE_STATUS_SELF_POWERED  0x01
#define USB_DEVICE_STATUS_REMOTE_WAKEUP 0x02

#define USB_FEATURE_ENDPOINT_HALT           0
#define USB_FEATURE_DEVICE_REMOTE_WAKEUP    1
#define USB_FEATURE_TEST_MODE               2
#define USB_FEATURE_OTG_A_HNP_ENABLE        3
#define USB_FEATURE_OTG_A_HNP_SUPPORT       4
#define USB_FEATURE_OTG_A_ALT_HNP_SUPPORT   5
#define USB_FEATURE_DEBUG_MODE              6

typedef struct usb_setup_packet_t usb_setup_packet_t;
typedef struct usb_device_descriptor_t usb_device_descriptor_t;
typedef struct usb_device_qualifier_descriptor_t usb_device_qualifier_descriptor_t;
typedef struct usb_configuration_descriptor_t usb_configuration_descriptor_t;
typedef struct usb_interface_descriptor_t usb_interface_descriptor_t;
typedef struct usb_endpoint_descriptor_t usb_endpoint_descriptor_t;
typedef struct usb_string_descriptor_t usb_string_descriptor_t;

struct __attribute__((packed)) usb_setup_packet_t
{
    uint8_t ubRequestType;
    uint8_t ubRequest;
    uint16_t usValue;
    uint16_t usIndex;
    uint16_t usLength;
};
struct __attribute__((packed)) usb_device_descriptor_t
{
    uint8_t ubLength;
    uint8_t ubDescriptorType;
    uint16_t usUSBSpec;
    uint8_t ubDeviceClass;
    uint8_t ubDeviceSubClass;
    uint8_t ubDeviceProtocol;
    uint8_t ubMaxPacketSize;
    uint16_t usVendorID;
    uint16_t usProductID;
    uint16_t usReleaseNumber;
    uint8_t ubManufacturerStringIndex;
    uint8_t ubProductStringIndex;
    uint8_t ubSerialNumberStringIndex;
    uint8_t ubNumConfigurations;
};
struct __attribute__((packed)) usb_device_qualifier_descriptor_t
{
    uint8_t ubLength;
    uint8_t ubDescriptorType;
    uint16_t usUSBSpec;
    uint8_t ubDeviceClass;
    uint8_t ubDeviceSubClass;
    uint8_t ubDeviceProtocol;
    uint8_t ubMaxPacketSize;
    uint8_t ubNumConfigurations;
    uint8_t ubReserved;
};
struct __attribute__((packed)) usb_configuration_descriptor_t
{
    uint8_t ubLength;
    uint8_t ubDescriptorType;
    uint16_t usTotalLength;
    uint8_t ubNumInterfaces;
    uint8_t ubConfigurationValue;
    uint8_t ubConfigurationStringIndex;
    uint8_t ubAttributes;
    uint8_t ubMaxPower;
    usb_interface_descriptor_t *pInterfaces;
};
struct __attribute__((packed)) usb_interface_descriptor_t
{
    uint8_t ubLength;
    uint8_t ubDescriptorType;
    uint8_t ubInterfaceNumber;
    uint8_t ubAlternateSetting;
    uint8_t ubNumEndpoints;
    uint8_t ubInterfaceClass;
    uint8_t ubInterfaceSubClass;
    uint8_t ubInterfaceProtocol;
    uint8_t ubInterfaceStringIndex;
    usb_endpoint_descriptor_t *pEndpoints;
};
struct __attribute__((packed)) usb_endpoint_descriptor_t
{
    uint8_t ubLength;
    uint8_t ubDescriptorType;
    uint8_t ubEndpointAddress;
    uint8_t ubAttributes;
    uint16_t usMaxPacketSize;
    uint8_t ubInterval;
};
struct __attribute__((packed)) usb_string_descriptor_t
{
    uint8_t ubLength;
    uint8_t ubDescriptorType;
    uint16_t *pusString;
};

uint16_t* usb_util_ascii_to_unicode(const char *pszString);
char* usb_util_unicode_to_ascii(const uint16_t *pusString, uint32_t ulUnicodeLength);

uint32_t usb_util_serialize_device_descriptor(const usb_device_descriptor_t *pDescriptor, uint8_t *pubBuffer, uint32_t ulBufferSize);
uint32_t usb_util_serialize_device_qualifier_descriptor(const usb_device_qualifier_descriptor_t *pDescriptor, uint8_t *pubBuffer, uint32_t ulBufferSize);
uint32_t usb_util_serialize_configuration_descriptor(const usb_configuration_descriptor_t *pDescriptor, uint8_t *pubBuffer, uint32_t ulBufferSize);
uint32_t usb_util_serialize_interface_descriptor(const usb_interface_descriptor_t *pDescriptor, uint8_t *pubBuffer, uint32_t ulBufferSize);
uint32_t usb_util_serialize_endpoint_descriptor(const usb_endpoint_descriptor_t *pDescriptor, uint8_t *pubBuffer, uint32_t ulBufferSize);
uint32_t usb_util_serialize_string_descriptor(const usb_string_descriptor_t *pDescriptor, uint8_t *pubBuffer, uint32_t ulBufferSize);

#endif  // __USB_UTIL_H__
