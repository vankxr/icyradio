#include "usb_util.h"

uint16_t* usb_util_ascii_to_unicode(const char *pszString)
{
    if(!pszString)
        return NULL;

    uint32_t ulStrSize = strlen(pszString);
    uint16_t *pusUnicodeString = (uint16_t *)malloc(ulStrSize * sizeof(uint16_t));

    if(!pusUnicodeString)
        return NULL;

    for(uint32_t i = 0; i < ulStrSize; i++)
        pusUnicodeString[i] = pszString[i];

    return pusUnicodeString;
}
char* usb_util_unicode_to_ascii(const uint16_t *pusString, uint32_t ulUnicodeLength)
{
    if(!pusString)
        return NULL;

    if(!ulUnicodeLength)
        return NULL;

    char *pszAsciiString = (char *)malloc(ulUnicodeLength + 1);

    if(!pszAsciiString)
        return NULL;

    for(uint32_t i = 0; i < ulUnicodeLength; i++)
    {
        uint16_t usChar = pusString[i];

        if(usChar > 255)
            pszAsciiString[i] = '?';
        else
            pszAsciiString[i] = usChar & 0xFF;
    }

    pszAsciiString[ulUnicodeLength] = 0;

    return pszAsciiString;
}

uint32_t usb_util_serialize_device_descriptor(const usb_device_descriptor_t *pDescriptor, uint8_t *pubBuffer, uint32_t ulBufferSize)
{
    if(!pDescriptor)
        return 0;

    if(!pubBuffer)
        return 0;

    if(!ulBufferSize)
        return 0;

    uint8_t *pubDescriptor = (uint8_t *)pDescriptor;
    uint32_t ulDescriptorSize = sizeof(usb_device_descriptor_t);
    uint32_t ulWrittenBytes = 0;

    while(ulDescriptorSize--)
    {
        if(!ulBufferSize)
            break;

        *(pubBuffer++) = *(pubDescriptor++);

        ulWrittenBytes++;
        ulBufferSize--;
    }

    return ulWrittenBytes;
}
uint32_t usb_util_serialize_device_qualifier_descriptor(const usb_device_qualifier_descriptor_t *pDescriptor, uint8_t *pubBuffer, uint32_t ulBufferSize)
{
    if(!pDescriptor)
        return 0;

    if(!pubBuffer)
        return 0;

    if(!ulBufferSize)
        return 0;

    uint8_t *pubDescriptor = (uint8_t *)pDescriptor;
    uint32_t ulDescriptorSize = sizeof(usb_device_qualifier_descriptor_t);
    uint32_t ulWrittenBytes = 0;

    while(ulDescriptorSize--)
    {
        if(!ulBufferSize)
            break;

        *(pubBuffer++) = *(pubDescriptor++);

        ulWrittenBytes++;
        ulBufferSize--;
    }

    return ulWrittenBytes;
}
uint32_t usb_util_serialize_configuration_descriptor(const usb_configuration_descriptor_t *pDescriptor, uint8_t *pubBuffer, uint32_t ulBufferSize)
{
    if(!pDescriptor)
        return 0;

    if(!pubBuffer)
        return 0;

    if(!ulBufferSize)
        return 0;

    uint8_t *pubDescriptor = (uint8_t *)pDescriptor;
    uint32_t ulDescriptorSize = sizeof(usb_configuration_descriptor_t) - sizeof(usb_interface_descriptor_t *);
    uint32_t ulWrittenBytes = 0;

    while(ulDescriptorSize--)
    {
        if(!ulBufferSize)
            break;

        *(pubBuffer++) = *(pubDescriptor++);

        ulWrittenBytes++;
        ulBufferSize--;
    }

    for(uint32_t i = 0; i < pDescriptor->ubNumInterfaces; i++)
    {
        uint32_t ulLocalWrittenBytes = usb_util_serialize_interface_descriptor(&pDescriptor->pInterfaces[i], pubBuffer, ulBufferSize);

        pubBuffer += ulLocalWrittenBytes;
        ulWrittenBytes += ulLocalWrittenBytes;
    }

    return ulWrittenBytes;
}
uint32_t usb_util_serialize_interface_descriptor(const usb_interface_descriptor_t *pDescriptor, uint8_t *pubBuffer, uint32_t ulBufferSize)
{
    if(!pDescriptor)
        return 0;

    if(!pubBuffer)
        return 0;

    if(!ulBufferSize)
        return 0;

    uint8_t *pubDescriptor = (uint8_t *)pDescriptor;
    uint32_t ulDescriptorSize = sizeof(usb_interface_descriptor_t) - sizeof(usb_endpoint_descriptor_t *);
    uint32_t ulWrittenBytes = 0;

    while(ulDescriptorSize--)
    {
        if(!ulBufferSize)
            break;

        *(pubBuffer++) = *(pubDescriptor++);

        ulWrittenBytes++;
        ulBufferSize--;
    }

    for(uint32_t i = 0; i < pDescriptor->ubNumEndpoints; i++)
    {
        uint32_t ulLocalWrittenBytes = usb_util_serialize_endpoint_descriptor(&pDescriptor->pEndpoints[i], pubBuffer, ulBufferSize);

        pubBuffer += ulLocalWrittenBytes;
        ulWrittenBytes += ulLocalWrittenBytes;
    }

    return ulWrittenBytes;
}
uint32_t usb_util_serialize_endpoint_descriptor(const usb_endpoint_descriptor_t *pDescriptor, uint8_t *pubBuffer, uint32_t ulBufferSize)
{
    if(!pDescriptor)
        return 0;

    if(!pubBuffer)
        return 0;

    if(!ulBufferSize)
        return 0;

    uint8_t *pubDescriptor = (uint8_t *)pDescriptor;
    uint32_t ulDescriptorSize = sizeof(usb_endpoint_descriptor_t);
    uint32_t ulWrittenBytes = 0;

    while(ulDescriptorSize--)
    {
        if(!ulBufferSize)
            break;

        *(pubBuffer++) = *(pubDescriptor++);

        ulWrittenBytes++;
        ulBufferSize--;
    }

    return ulWrittenBytes;
}
uint32_t usb_util_serialize_string_descriptor(const usb_string_descriptor_t *pDescriptor, uint8_t *pubBuffer, uint32_t ulBufferSize)
{
    if(!pDescriptor)
        return 0;

    if(!pubBuffer)
        return 0;

    if(!ulBufferSize)
        return 0;

    uint8_t *pubDescriptor = (uint8_t *)pDescriptor;
    uint8_t *pubString = (uint8_t *)pDescriptor->pusString;
    uint32_t ulDescriptorSize = sizeof(usb_string_descriptor_t) - sizeof(uint16_t *);
    uint32_t ulStringSize = pDescriptor->ubLength - ulDescriptorSize;
    uint32_t ulWrittenBytes = 0;

    while(ulDescriptorSize--)
    {
        if(!ulBufferSize)
            break;

        *(pubBuffer++) = *(pubDescriptor++);

        ulWrittenBytes++;
        ulBufferSize--;
    }

    while(ulStringSize--)
    {
        if(!ulBufferSize)
            break;

        *(pubBuffer++) = *(pubString++);

        ulWrittenBytes++;
        ulBufferSize--;
    }

    return ulWrittenBytes;
}