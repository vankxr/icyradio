#include "usb_impl.h"

#include "debug_macros.h" // FIXME: Remove me after debug

usb_device_descriptor_t *pHSDeviceDescriptor = NULL;
usb_device_qualifier_descriptor_t *pHSDeviceQualifierDescriptor = NULL;
usb_configuration_descriptor_t *pHSConfigurationDescriptors = NULL;
usb_device_descriptor_t *pFSDeviceDescriptor = NULL;
usb_device_qualifier_descriptor_t *pFSDeviceQualifierDescriptor = NULL;
usb_configuration_descriptor_t *pFSConfigurationDescriptors = NULL;
usb_string_descriptor_t *pStringDescriptors = NULL;
uint32_t ulStringDescriptorsCount = 0;
uint8_t ubCurrentConfiguration = 0;
uint16_t usDeviceStatus = 0;
usb_endpoint_buffer_t *pEndpointBuffer[10] = {NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL};
usb_endpoint_ready_isr_t pfEndpointReadyISR = NULL;
usb_vendor_request_handler_t pfVendorRequestHandler = NULL;

static void usb_impl_config_descriptors();
static void usb_impl_config_endpoints();

static uint8_t usb_impl_handle_control_transfer(uint8_t ubEndpoint, usb_setup_packet_t *pSetupPacket);


static void ITCM_CODE usb_impl_reset_isr(uint8_t ubCurrentSpeed)
{
    //DBGPRINTLN_CTX("eorst spd%hhu", ubCurrentSpeed);

    // Configure default control endpoint
    USBHS->USBHS_DEVIDR = USBHS_DEVIDR_PEP_0; // Disable Global Endpoint interrupt

    // Endpoint #0
    {
        USBHS->USBHS_DEVEPT |= USBHS_DEVEPT_EPEN0 | USBHS_DEVEPT_EPRST0; // Enable but keep in Reset state
        USBHS->USBHS_DEVEPT &= ~USBHS_DEVEPT_EPRST0; // Release endpoint from Reset state

        USBHS->USBHS_DEVEPTCFG[0] = USBHS_DEVEPTCFG_NBTRANS_0_TRANS | USBHS_DEVEPTCFG_EPTYPE_CTRL | USBHS_DEVEPTCFG_EPSIZE_64_BYTE | USBHS_DEVEPTCFG_EPBK_1_BANK | USBHS_DEVEPTCFG_ALLOC;

        while(!(USBHS->USBHS_DEVEPTISR[0] & USBHS_DEVEPTISR_CFGOK)); // Wait for configuration validation

        // Buffer
        {
            if(pEndpointBuffer[0])
            {
                if(pEndpointBuffer[0]->pubData)
                    free((void *)pEndpointBuffer[0]->pubData);

                free(pEndpointBuffer[0]);
            }

            pEndpointBuffer[0] = (usb_endpoint_buffer_t *)malloc(sizeof(usb_endpoint_buffer_t));

            if(!pEndpointBuffer[0])
                return;

            pEndpointBuffer[0]->usSize = 512;
            pEndpointBuffer[0]->usUsedSize = 0;
            pEndpointBuffer[0]->usWritePointer = 0;
            pEndpointBuffer[0]->usReadPointer = 0;
            pEndpointBuffer[0]->pubData = (volatile uint8_t *)malloc(pEndpointBuffer[0]->usSize);

            if(!pEndpointBuffer[0]->pubData)
                return;
        }

        USBHS->USBHS_DEVEPTICR[0] = USBHS_DEVEPTICR_CTRL_RXSTPIC; // Clear interrupt flags
        USBHS->USBHS_DEVEPTIER[0] = USBHS_DEVEPTIER_CTRL_RXSTPES; // Enable Endpoint interrupts
    }

    USBHS->USBHS_DEVIER = USBHS_DEVIER_PEP_0; // Enable Global Endpoint interrupt

    if(pfEndpointReadyISR)
        pfEndpointReadyISR(0);
}
static void ITCM_CODE usb_impl_ep0_isr(uint8_t ubEndpoint)
{
    if(ubEndpoint != 0)
        return;

    static usb_setup_packet_t sLastSetupPacket;
    static uint8_t ubZLPState;
    static uint16_t usDataStageTotalLength;
    static uint16_t usDataStageDoneLength;

    uint16_t usEndpointSize = BIT(3 + ((USBHS->USBHS_DEVEPTCFG[ubEndpoint] & USBHS_DEVEPTCFG_EPSIZE_Msk) >> USBHS_DEVEPTCFG_EPSIZE_Pos));

    uint32_t ulFlags = USBHS->USBHS_DEVEPTISR[ubEndpoint] & USBHS->USBHS_DEVEPTIMR[ubEndpoint];

    if(ulFlags & USBHS_DEVEPTISR_CTRL_RXSTPI) // SETUP Packet received
    {
        uint16_t usPacketSize = (USBHS->USBHS_DEVEPTISR[ubEndpoint] & USBHS_DEVEPTISR_BYCT_Msk) >> USBHS_DEVEPTISR_BYCT_Pos;

        //DBGPRINTLN_CTX("rx stp ep%hhu sz%hu", ubEndpoint, usPacketSize);

        if(usPacketSize == sizeof(usb_setup_packet_t))
        {
            usb_fifo_read(ubEndpoint, (uint8_t *)&sLastSetupPacket, usPacketSize);

            uint16_t usEndpointBufferSize = usb_impl_endpoint_buffer_get_size(ubEndpoint);

            if(sLastSetupPacket.usLength > usEndpointBufferSize)
                sLastSetupPacket.usLength = usEndpointBufferSize;

            usDataStageTotalLength = sLastSetupPacket.usLength;
            usDataStageDoneLength = 0;
            ubZLPState = 0;

            USBHS->USBHS_DEVEPTICR[ubEndpoint] = USBHS_DEVEPTICR_CTRL_RXSTPIC;

            /*DBGPRINTLN_CTX(
                "setup rt%02X, req%02X, val%04X, idx%04X, len%04X",
                sLastSetupPacket.ubRequestType,
                sLastSetupPacket.ubRequest,
                sLastSetupPacket.usValue,
                sLastSetupPacket.usIndex,
                sLastSetupPacket.usLength);*/

            if(sLastSetupPacket.usLength == 0 || (sLastSetupPacket.ubRequestType & USB_SETUP_REQUEST_TYPE_DIR_MASK) == USB_SETUP_REQUEST_TYPE_DIR_D2H)
            {
                uint8_t ubStall = usb_impl_handle_control_transfer(ubEndpoint, &sLastSetupPacket);

                //DBGPRINTLN_CTX("stall%hhu", ubStall);

                if(ubStall)
                {
                    USBHS->USBHS_DEVEPTIER[ubEndpoint] = USBHS_DEVEPTIER_CTRL_STALLRQS;
                }
                else
                {
                    usDataStageTotalLength = usb_impl_endpoint_buffer_get_used_size(ubEndpoint);

                    USBHS->USBHS_DEVEPTIER[ubEndpoint] = USBHS_DEVEPTIER_TXINES;
                }
            }
            else
            {
                USBHS->USBHS_DEVEPTICR[ubEndpoint] = USBHS_DEVEPTICR_RXOUTIC;
                USBHS->USBHS_DEVEPTIER[ubEndpoint] = USBHS_DEVEPTIER_RXOUTES;
            }
        }
    }

    if(ulFlags & USBHS_DEVEPTISR_TXINI)
    {
        if((sLastSetupPacket.ubRequestType & USB_SETUP_REQUEST_TYPE_DIR_MASK) == USB_SETUP_REQUEST_TYPE_DIR_D2H && usDataStageDoneLength < usDataStageTotalLength)
        {
            //DBGPRINTLN_CTX("tx data ep%hhu max%hu total%hu done%hu", ubEndpoint, sLastSetupPacket.usLength, usDataStageTotalLength, usDataStageDoneLength);

            uint16_t usPacketSize = usEndpointSize;

            //DBGPRINTLN_CTX("pkt sz%hu", usPacketSize);

            if(usPacketSize > usDataStageTotalLength - usDataStageDoneLength)
                usPacketSize = usDataStageTotalLength - usDataStageDoneLength;

            //DBGPRINTLN_CTX("pkt sz%hu", usPacketSize);

            uint8_t ubBuffer[usEndpointSize];

            usPacketSize = usb_impl_endpoint_buffer_read(ubEndpoint, ubBuffer, usPacketSize);

            //DBGPRINTLN_CTX("pkt sz%hu rem%hu", usPacketSize, usb_impl_endpoint_buffer_get_used_size(ubEndpoint));

            usb_fifo_write(ubEndpoint, ubBuffer, usPacketSize);

            usDataStageDoneLength += usPacketSize;

            USBHS->USBHS_DEVEPTICR[ubEndpoint] = USBHS_DEVEPTICR_TXINIC;
        }
        else if(usDataStageDoneLength >= usDataStageTotalLength)
        {
            ubZLPState |= !!(usDataStageTotalLength % usEndpointSize);

            switch(sLastSetupPacket.ubRequestType & USB_SETUP_REQUEST_TYPE_DIR_MASK)
            {
                case USB_SETUP_REQUEST_TYPE_DIR_H2D:
                {
                    if(!ubZLPState)
                    {
                        //DBGPRINTLN_CTX("rx status started ep%hhu", ubEndpoint);
                    }
                    else
                    {
                        //DBGPRINTLN_CTX("rx status done ep%hhu", ubEndpoint);

                        USBHS->USBHS_DEVCTRL |= USBHS_DEVCTRL_ADDEN;
                    }
                }
                break;
                case USB_SETUP_REQUEST_TYPE_DIR_D2H:
                {
                    if(ubZLPState);
                        //DBGPRINTLN_CTX("tx data done ep%hhu max%hu total%hu rem%hu", ubEndpoint, sLastSetupPacket.usLength, usDataStageTotalLength, usb_impl_endpoint_buffer_get_used_size(ubEndpoint));
                }
                break;
            }

            if(!ubZLPState)
            {
                //DBGPRINTLN_CTX("zlp sent ep%hhu", ubEndpoint);

                USBHS->USBHS_DEVEPTICR[ubEndpoint] = USBHS_DEVEPTICR_TXINIC;

                ubZLPState = 1;
            }
            else
            {
                USBHS->USBHS_DEVEPTIDR[ubEndpoint] = USBHS_DEVEPTIDR_TXINEC;
            }
        }
    }

    if(ulFlags & USBHS_DEVEPTISR_RXOUTI)
    {
        if((sLastSetupPacket.ubRequestType & USB_SETUP_REQUEST_TYPE_DIR_MASK) == USB_SETUP_REQUEST_TYPE_DIR_H2D && usDataStageDoneLength < usDataStageTotalLength)
        {
            uint16_t usPacketSize = (USBHS->USBHS_DEVEPTISR[ubEndpoint] & USBHS_DEVEPTISR_BYCT_Msk) >> USBHS_DEVEPTISR_BYCT_Pos;

            //DBGPRINTLN_CTX("rx data ep%hhu sz%hu max%hu total%hu done%hu", ubEndpoint, usPacketSize, sLastSetupPacket.usLength, usDataStageTotalLength, usDataStageDoneLength);

            uint8_t ubBuffer[usPacketSize];

            usb_fifo_read(ubEndpoint, ubBuffer, usPacketSize);
            usb_impl_endpoint_buffer_write(ubEndpoint, ubBuffer, usPacketSize);

            usDataStageDoneLength += usPacketSize;

            if(usPacketSize < usEndpointSize)
                usDataStageTotalLength = usDataStageDoneLength;

            USBHS->USBHS_DEVEPTICR[ubEndpoint] = USBHS_DEVEPTICR_RXOUTIC;
        }

        if(usDataStageDoneLength >= usDataStageTotalLength)
        {
            USBHS->USBHS_DEVEPTIDR[ubEndpoint] = USBHS_DEVEPTIDR_RXOUTEC;

            switch(sLastSetupPacket.ubRequestType & USB_SETUP_REQUEST_TYPE_DIR_MASK)
            {
                case USB_SETUP_REQUEST_TYPE_DIR_H2D:
                {
                    //DBGPRINTLN_CTX("rx data done ep%hhu", ubEndpoint);

                    uint8_t ubStall = usb_impl_handle_control_transfer(ubEndpoint, &sLastSetupPacket);

                    //DBGPRINTLN_CTX("stall%hhu", ubStall);

                    if(ubStall)
                        USBHS->USBHS_DEVEPTIER[ubEndpoint] = USBHS_DEVEPTIER_CTRL_STALLRQS;
                    else
                        USBHS->USBHS_DEVEPTICR[ubEndpoint] = USBHS_DEVEPTICR_CTRL_NAKINIC | USBHS_DEVEPTICR_TXINIC;
                }
                break;
            }
        }
    }
}
static void ITCM_CODE usb_impl_epx_isr(uint8_t ubEndpoint)
{
    uint16_t usEndpointSize = BIT(3 + ((USBHS->USBHS_DEVEPTCFG[ubEndpoint] & USBHS_DEVEPTCFG_EPSIZE_Msk) >> USBHS_DEVEPTCFG_EPSIZE_Pos));
    uint16_t usFIFOCount = (USBHS->USBHS_DEVEPTISR[ubEndpoint] & USBHS_DEVEPTISR_BYCT_Msk) >> USBHS_DEVEPTISR_BYCT_Pos;

    uint32_t ulFlags = USBHS->USBHS_DEVEPTISR[ubEndpoint] & USBHS->USBHS_DEVEPTIMR[ubEndpoint];

    if(ulFlags & USBHS_DEVEPTISR_TXINI)
    {
        //DBGPRINTLN_CTX("tx data ep%hhu sz%hu fifo%hu", ubEndpoint, usEndpointSize, usFIFOCount);

        if(usFIFOCount >= usEndpointSize)
        {
            //DBGPRINTLN_CTX("tx data ack ep%hhu sz%hu fifo%hu", ubEndpoint, usEndpointSize, usFIFOCount);

            USBHS->USBHS_DEVEPTICR[ubEndpoint] = USBHS_DEVEPTICR_TXINIC;
            USBHS->USBHS_DEVEPTIDR[ubEndpoint] = USBHS_DEVEPTIDR_FIFOCONC;
        }
    }

    if(ulFlags & USBHS_DEVEPTISR_RXOUTI)
    {
        //DBGPRINTLN_CTX("rx data ep%hhu sz%hu fifo%hu", ubEndpoint, usEndpointSize, usFIFOCount);

        if(!usFIFOCount)
        {
            //DBGPRINTLN_CTX("rx data ack ep%hhu sz%hu fifo%hu", ubEndpoint, usEndpointSize, usFIFOCount);

            USBHS->USBHS_DEVEPTICR[ubEndpoint] = USBHS_DEVEPTICR_RXOUTIC;
            USBHS->USBHS_DEVEPTIDR[ubEndpoint] = USBHS_DEVEPTIDR_FIFOCONC;
        }
    }
}
static void ITCM_CODE usb_impl_epx_dma_isr(uint8_t ubEndpoint)
{
    //DBGPRINTLN_CTX("dma isr ep%hhu", ubEndpoint);

    while(USBHS->UsbhsDevdma[ubEndpoint - 1].USBHS_DEVDMASTATUS & (USBHS_DEVDMASTATUS_CHANN_ACT | USBHS_DEVDMASTATUS_CHANN_ENB));

    //DBGPRINTLN_CTX("dma ch clr ep%hhu", ubEndpoint);

    usb_endpoint_buffer_t *pBuffer = pEndpointBuffer[ubEndpoint];

    if(!pBuffer)
        return;

    //DBGPRINTLN_CTX("ep buf ok ep%hhu", ubEndpoint);

    uint32_t ulDirection = USBHS->USBHS_DEVEPTCFG[ubEndpoint] & USBHS_DEVEPTCFG_EPDIR_Msk;
    uint16_t usTransferred = USBHS->UsbhsDevdma[ubEndpoint - 1].USBHS_DEVDMAADDRESS - (uint32_t)pBuffer->pubData;

    //DBGPRINTLN_CTX("dma xfr sz%hu ep%hhu", usTransferred, ubEndpoint);

    if(ulDirection == USBHS_DEVEPTCFG_EPDIR_OUT)
    {
        dcache_addr_invalidate((void *)pBuffer->pubData, usTransferred);

        pBuffer->usReadPointer = 0;
        pBuffer->usWritePointer = usTransferred;
        pBuffer->usUsedSize = usTransferred;

        USBHS->USBHS_DEVEPTIDR[ubEndpoint] = USBHS_DEVEPTIDR_RXOUTEC;
    }
    else
    {
        pBuffer->usWritePointer = 0;
        pBuffer->usReadPointer = 0;
        pBuffer->usUsedSize = 0;

        USBHS->USBHS_DEVEPTIDR[ubEndpoint] = USBHS_DEVEPTIDR_TXINEC;
    }
}

void usb_impl_config_descriptors()
{
    // Device
    {
        // High-Speed
        {
            free(pHSDeviceDescriptor);

            pHSDeviceDescriptor = (usb_device_descriptor_t *)malloc(sizeof(usb_device_descriptor_t));

            if(!pHSDeviceDescriptor)
                return;

            pHSDeviceDescriptor->ubLength = sizeof(usb_device_descriptor_t);
            pHSDeviceDescriptor->ubDescriptorType = USB_DESCRIPTOR_TYPE_DEVICE;
            pHSDeviceDescriptor->usUSBSpec = USB_SPEC_2p00;
            pHSDeviceDescriptor->ubDeviceClass = 0x00; // Class specified at interface level
            pHSDeviceDescriptor->ubDeviceSubClass = 0x00; // Subclass specified at interface level
            pHSDeviceDescriptor->ubDeviceProtocol = 0x00; // Protocol specified at interface level
            pHSDeviceDescriptor->ubMaxPacketSize = 64; // EP0 max packet size
            pHSDeviceDescriptor->usVendorID = 0x10C4;
            pHSDeviceDescriptor->usProductID = 0x8C67;
            pHSDeviceDescriptor->usReleaseNumber = 0x0100;
            pHSDeviceDescriptor->ubManufacturerStringIndex = 1; // String #1
            pHSDeviceDescriptor->ubProductStringIndex = 2; // String #2
            pHSDeviceDescriptor->ubSerialNumberStringIndex = 3; // String #3
            pHSDeviceDescriptor->ubNumConfigurations = 1;
        }
        // Full-Speed
        {
            free(pFSDeviceDescriptor);

            pFSDeviceDescriptor = pHSDeviceDescriptor; // Same as High-Speed
        }
    }
    // Device Qualifier
    {
        // High-Speed
        {
            free(pHSDeviceQualifierDescriptor);

            pHSDeviceQualifierDescriptor = (usb_device_qualifier_descriptor_t *)malloc(sizeof(usb_device_qualifier_descriptor_t));

            if(!pHSDeviceQualifierDescriptor)
                return;

            pHSDeviceQualifierDescriptor->ubLength = sizeof(usb_device_qualifier_descriptor_t);
            pHSDeviceQualifierDescriptor->ubDescriptorType = USB_DESCRIPTOR_TYPE_DEVICE_QUALIFIER;
            pHSDeviceQualifierDescriptor->usUSBSpec = USB_SPEC_2p00;
            pHSDeviceQualifierDescriptor->ubDeviceClass = 0x00; // Class specified at the interface level
            pHSDeviceQualifierDescriptor->ubDeviceSubClass = 0x00; // Subclass specified at the interface level
            pHSDeviceQualifierDescriptor->ubDeviceProtocol = 0x00; // Protocol specified at the interface level
            pHSDeviceQualifierDescriptor->ubMaxPacketSize = 64; // EP0 max packet size
            pHSDeviceQualifierDescriptor->ubNumConfigurations = 1;
            pHSDeviceQualifierDescriptor->ubReserved = 0; // Must be zero
        }
        // Full-Speed
        {
            free(pFSDeviceQualifierDescriptor);

            pFSDeviceQualifierDescriptor = pHSDeviceQualifierDescriptor; // Same as High-Speed
        }
    }
    // Configurations
    {
        // High-Speed
        {
            free(pHSConfigurationDescriptors);

            pHSConfigurationDescriptors = (usb_configuration_descriptor_t *)malloc(1 * sizeof(usb_configuration_descriptor_t));

            if(!pHSConfigurationDescriptors)
                return;

            // Configuration #0
            {
                pHSConfigurationDescriptors[0].ubLength = sizeof(usb_configuration_descriptor_t) // Configuration descriptor size
                                                        - sizeof(usb_interface_descriptor_t *); // Remove size of interface pointer
                pHSConfigurationDescriptors[0].ubDescriptorType = USB_DESCRIPTOR_TYPE_CONFIGURATION;
                pHSConfigurationDescriptors[0].usTotalLength = pHSConfigurationDescriptors[0].ubLength; // Init total length to the size of this descriptor
                pHSConfigurationDescriptors[0].ubNumInterfaces = 3;
                pHSConfigurationDescriptors[0].ubConfigurationValue = 1; // Mode 1 for this configuration
                pHSConfigurationDescriptors[0].ubConfigurationStringIndex = 0;
                pHSConfigurationDescriptors[0].ubAttributes = USB_CONFIGURATION_DESCRIPTOR_ATTR_RESERVED;
                pHSConfigurationDescriptors[0].ubMaxPower = USB_CONFIGURATION_DESCRIPTOR_POWER(500); // mA

                // Interfaces
                {
                    pHSConfigurationDescriptors[0].pInterfaces = (usb_interface_descriptor_t *)malloc(pHSConfigurationDescriptors[0].ubNumInterfaces * sizeof(usb_interface_descriptor_t));

                    if(!pHSConfigurationDescriptors[0].pInterfaces)
                        return;

                    // Interface #0
                    {
                        pHSConfigurationDescriptors[0].pInterfaces[0].ubLength = sizeof(usb_interface_descriptor_t) // Interface descriptor size
                                                                               - sizeof(usb_endpoint_descriptor_t *); // Remove size of endpoint pointer
                        pHSConfigurationDescriptors[0].pInterfaces[0].ubDescriptorType = USB_DESCRIPTOR_TYPE_INTERFACE;
                        pHSConfigurationDescriptors[0].pInterfaces[0].ubInterfaceNumber = 0;
                        pHSConfigurationDescriptors[0].pInterfaces[0].ubAlternateSetting = 0; // Mode 0 for this interface
                        pHSConfigurationDescriptors[0].pInterfaces[0].ubNumEndpoints = 0;
                        pHSConfigurationDescriptors[0].pInterfaces[0].ubInterfaceClass = 0xFF; // Vendor specific class
                        pHSConfigurationDescriptors[0].pInterfaces[0].ubInterfaceSubClass = 0xFF; // Vendor specific subclass
                        pHSConfigurationDescriptors[0].pInterfaces[0].ubInterfaceProtocol = 0xFF; // Vendor specific protocol
                        pHSConfigurationDescriptors[0].pInterfaces[0].ubInterfaceStringIndex = 4; // String #4

                        // Endpoints
                        {
                            pHSConfigurationDescriptors[0].pInterfaces[0].pEndpoints = NULL;
                        }

                        pHSConfigurationDescriptors[0].usTotalLength += pHSConfigurationDescriptors[0].pInterfaces[0].ubLength;
                    }
                    // Interface #1
                    {
                        pHSConfigurationDescriptors[0].pInterfaces[1].ubLength = sizeof(usb_interface_descriptor_t) // Interface descriptor size
                                                                               - sizeof(usb_endpoint_descriptor_t *); // Remove size of endpoint pointer
                        pHSConfigurationDescriptors[0].pInterfaces[1].ubDescriptorType = USB_DESCRIPTOR_TYPE_INTERFACE;
                        pHSConfigurationDescriptors[0].pInterfaces[1].ubInterfaceNumber = 1;
                        pHSConfigurationDescriptors[0].pInterfaces[1].ubAlternateSetting = 0; // Mode 0 for this interface
                        pHSConfigurationDescriptors[0].pInterfaces[1].ubNumEndpoints = 1;
                        pHSConfigurationDescriptors[0].pInterfaces[1].ubInterfaceClass = 0xFF; // Vendor specific class
                        pHSConfigurationDescriptors[0].pInterfaces[1].ubInterfaceSubClass = 0xFF; // Vendor specific subclass
                        pHSConfigurationDescriptors[0].pInterfaces[1].ubInterfaceProtocol = 0xFF; // Vendor specific protocol
                        pHSConfigurationDescriptors[0].pInterfaces[1].ubInterfaceStringIndex = 5; // String #5

                        // Endpoints
                        {
                            pHSConfigurationDescriptors[0].pInterfaces[1].pEndpoints = (usb_endpoint_descriptor_t *)malloc(pHSConfigurationDescriptors[0].pInterfaces[1].ubNumEndpoints * sizeof(usb_endpoint_descriptor_t));

                            if(!pHSConfigurationDescriptors[0].pInterfaces[1].pEndpoints)
                                return;

                            // Endpoint #1
                            {
                                pHSConfigurationDescriptors[0].pInterfaces[1].pEndpoints[0].ubLength = sizeof(usb_endpoint_descriptor_t);
                                pHSConfigurationDescriptors[0].pInterfaces[1].pEndpoints[0].ubDescriptorType = USB_DESCRIPTOR_TYPE_ENDPOINT;
                                pHSConfigurationDescriptors[0].pInterfaces[1].pEndpoints[0].ubEndpointAddress = USB_ENDPOINT_ADDR_IN | 1;
                                pHSConfigurationDescriptors[0].pInterfaces[1].pEndpoints[0].ubAttributes = USB_ENDPOINT_ATTR_BULK;
                                pHSConfigurationDescriptors[0].pInterfaces[1].pEndpoints[0].usMaxPacketSize = 512;
                                pHSConfigurationDescriptors[0].pInterfaces[1].pEndpoints[0].ubInterval = 12000 / 125; // Polling interval in frames (125 us for HS, 1 ms for FS)

                                pHSConfigurationDescriptors[0].usTotalLength += pHSConfigurationDescriptors[0].pInterfaces[1].pEndpoints[0].ubLength;
                            }
                        }

                        pHSConfigurationDescriptors[0].usTotalLength += pHSConfigurationDescriptors[0].pInterfaces[1].ubLength;
                    }
                    // Interface #2
                    {
                        pHSConfigurationDescriptors[0].pInterfaces[2].ubLength = sizeof(usb_interface_descriptor_t) // Interface descriptor size
                                                                               - sizeof(usb_endpoint_descriptor_t *); // Remove size of endpoint pointer
                        pHSConfigurationDescriptors[0].pInterfaces[2].ubDescriptorType = USB_DESCRIPTOR_TYPE_INTERFACE;
                        pHSConfigurationDescriptors[0].pInterfaces[2].ubInterfaceNumber = 2;
                        pHSConfigurationDescriptors[0].pInterfaces[2].ubAlternateSetting = 0; // Mode 0 for this interface
                        pHSConfigurationDescriptors[0].pInterfaces[2].ubNumEndpoints = 1;
                        pHSConfigurationDescriptors[0].pInterfaces[2].ubInterfaceClass = 0xFF; // Vendor specific class
                        pHSConfigurationDescriptors[0].pInterfaces[2].ubInterfaceSubClass = 0xFF; // Vendor specific subclass
                        pHSConfigurationDescriptors[0].pInterfaces[2].ubInterfaceProtocol = 0xFF; // Vendor specific protocol
                        pHSConfigurationDescriptors[0].pInterfaces[2].ubInterfaceStringIndex = 6; // String #6

                        // Endpoints
                        {
                            pHSConfigurationDescriptors[0].pInterfaces[2].pEndpoints = (usb_endpoint_descriptor_t *)malloc(pHSConfigurationDescriptors[0].pInterfaces[2].ubNumEndpoints * sizeof(usb_endpoint_descriptor_t));

                            if(!pHSConfigurationDescriptors[0].pInterfaces[2].pEndpoints)
                                return;

                            // Endpoint #2
                            {
                                pHSConfigurationDescriptors[0].pInterfaces[2].pEndpoints[0].ubLength = sizeof(usb_endpoint_descriptor_t);
                                pHSConfigurationDescriptors[0].pInterfaces[2].pEndpoints[0].ubDescriptorType = USB_DESCRIPTOR_TYPE_ENDPOINT;
                                pHSConfigurationDescriptors[0].pInterfaces[2].pEndpoints[0].ubEndpointAddress = USB_ENDPOINT_ADDR_OUT | 2;
                                pHSConfigurationDescriptors[0].pInterfaces[2].pEndpoints[0].ubAttributes = USB_ENDPOINT_ATTR_BULK;
                                pHSConfigurationDescriptors[0].pInterfaces[2].pEndpoints[0].usMaxPacketSize = 512;
                                pHSConfigurationDescriptors[0].pInterfaces[2].pEndpoints[0].ubInterval = 12000 / 125; // Polling interval in frames (125 us for HS, 1 ms for FS)

                                pHSConfigurationDescriptors[0].usTotalLength += pHSConfigurationDescriptors[0].pInterfaces[2].pEndpoints[0].ubLength;
                            }
                        }

                        pHSConfigurationDescriptors[0].usTotalLength += pHSConfigurationDescriptors[0].pInterfaces[2].ubLength;
                    }
                }
            }
        }
        // Full-Speed
        {
            free(pFSConfigurationDescriptors);

            pFSConfigurationDescriptors = (usb_configuration_descriptor_t *)malloc(1 * sizeof(usb_configuration_descriptor_t));

            if(!pFSConfigurationDescriptors)
                return;

            // Configuration #0
            {
                pFSConfigurationDescriptors[0].ubLength = sizeof(usb_configuration_descriptor_t) // Configuration descriptor size
                                                        - sizeof(usb_interface_descriptor_t *); // Remove size of interface pointer
                pFSConfigurationDescriptors[0].ubDescriptorType = USB_DESCRIPTOR_TYPE_CONFIGURATION;
                pFSConfigurationDescriptors[0].usTotalLength = pFSConfigurationDescriptors[0].ubLength; // Init total length to the size of this descriptor
                pFSConfigurationDescriptors[0].ubNumInterfaces = 3;
                pFSConfigurationDescriptors[0].ubConfigurationValue = 1; // Mode 1 for this configuration
                pFSConfigurationDescriptors[0].ubConfigurationStringIndex = 0;
                pFSConfigurationDescriptors[0].ubAttributes = USB_CONFIGURATION_DESCRIPTOR_ATTR_RESERVED;
                pFSConfigurationDescriptors[0].ubMaxPower = USB_CONFIGURATION_DESCRIPTOR_POWER(500); // mA

                // Interfaces
                {
                    pFSConfigurationDescriptors[0].pInterfaces = (usb_interface_descriptor_t *)malloc(pFSConfigurationDescriptors[0].ubNumInterfaces * sizeof(usb_interface_descriptor_t));

                    if(!pFSConfigurationDescriptors[0].pInterfaces)
                        return;

                    // Interface #0
                    {
                        pFSConfigurationDescriptors[0].pInterfaces[0].ubLength = sizeof(usb_interface_descriptor_t) // Interface descriptor size
                                                                               - sizeof(usb_endpoint_descriptor_t *); // Remove size of endpoint pointer
                        pFSConfigurationDescriptors[0].pInterfaces[0].ubDescriptorType = USB_DESCRIPTOR_TYPE_INTERFACE;
                        pFSConfigurationDescriptors[0].pInterfaces[0].ubInterfaceNumber = 0;
                        pFSConfigurationDescriptors[0].pInterfaces[0].ubAlternateSetting = 0; // Mode 0 for this interface
                        pFSConfigurationDescriptors[0].pInterfaces[0].ubNumEndpoints = 0;
                        pFSConfigurationDescriptors[0].pInterfaces[0].ubInterfaceClass = 0xFF; // Vendor specific class
                        pFSConfigurationDescriptors[0].pInterfaces[0].ubInterfaceSubClass = 0xFF; // Vendor specific subclass
                        pFSConfigurationDescriptors[0].pInterfaces[0].ubInterfaceProtocol = 0xFF; // Vendor specific protocol
                        pFSConfigurationDescriptors[0].pInterfaces[0].ubInterfaceStringIndex = 4; // String #4

                        // Endpoints
                        {
                            pFSConfigurationDescriptors[0].pInterfaces[0].pEndpoints = NULL;
                        }

                        pFSConfigurationDescriptors[0].usTotalLength += pFSConfigurationDescriptors[0].pInterfaces[0].ubLength;
                    }
                    // Interface #1
                    {
                        pFSConfigurationDescriptors[0].pInterfaces[1].ubLength = sizeof(usb_interface_descriptor_t) // Interface descriptor size
                                                                               - sizeof(usb_endpoint_descriptor_t *); // Remove size of endpoint pointer
                        pFSConfigurationDescriptors[0].pInterfaces[1].ubDescriptorType = USB_DESCRIPTOR_TYPE_INTERFACE;
                        pFSConfigurationDescriptors[0].pInterfaces[1].ubInterfaceNumber = 1;
                        pFSConfigurationDescriptors[0].pInterfaces[1].ubAlternateSetting = 0; // Mode 0 for this interface
                        pFSConfigurationDescriptors[0].pInterfaces[1].ubNumEndpoints = 1;
                        pFSConfigurationDescriptors[0].pInterfaces[1].ubInterfaceClass = 0xFF; // Vendor specific class
                        pFSConfigurationDescriptors[0].pInterfaces[1].ubInterfaceSubClass = 0xFF; // Vendor specific subclass
                        pFSConfigurationDescriptors[0].pInterfaces[1].ubInterfaceProtocol = 0xFF; // Vendor specific protocol
                        pFSConfigurationDescriptors[0].pInterfaces[1].ubInterfaceStringIndex = 5; // String #5

                        // Endpoints
                        {
                            pFSConfigurationDescriptors[0].pInterfaces[1].pEndpoints = (usb_endpoint_descriptor_t *)malloc(pFSConfigurationDescriptors[0].pInterfaces[1].ubNumEndpoints * sizeof(usb_endpoint_descriptor_t));

                            if(!pFSConfigurationDescriptors[0].pInterfaces[1].pEndpoints)
                                return;

                            // Endpoint #1
                            {
                                pFSConfigurationDescriptors[0].pInterfaces[1].pEndpoints[0].ubLength = sizeof(usb_endpoint_descriptor_t);
                                pFSConfigurationDescriptors[0].pInterfaces[1].pEndpoints[0].ubDescriptorType = USB_DESCRIPTOR_TYPE_ENDPOINT;
                                pFSConfigurationDescriptors[0].pInterfaces[1].pEndpoints[0].ubEndpointAddress = USB_ENDPOINT_ADDR_IN | 1;
                                pFSConfigurationDescriptors[0].pInterfaces[1].pEndpoints[0].ubAttributes = USB_ENDPOINT_ATTR_BULK;
                                pFSConfigurationDescriptors[0].pInterfaces[1].pEndpoints[0].usMaxPacketSize = 64;
                                pFSConfigurationDescriptors[0].pInterfaces[1].pEndpoints[0].ubInterval = 12000 / 1000; // Polling interval in frames (125 us for HS, 1 ms for FS)

                                pFSConfigurationDescriptors[0].usTotalLength += pFSConfigurationDescriptors[0].pInterfaces[1].pEndpoints[0].ubLength;
                            }
                        }

                        pFSConfigurationDescriptors[0].usTotalLength += pFSConfigurationDescriptors[0].pInterfaces[1].ubLength;
                    }
                    // Interface #2
                    {
                        pFSConfigurationDescriptors[0].pInterfaces[2].ubLength = sizeof(usb_interface_descriptor_t) // Interface descriptor size
                                                                               - sizeof(usb_endpoint_descriptor_t *); // Remove size of endpoint pointer
                        pFSConfigurationDescriptors[0].pInterfaces[2].ubDescriptorType = USB_DESCRIPTOR_TYPE_INTERFACE;
                        pFSConfigurationDescriptors[0].pInterfaces[2].ubInterfaceNumber = 2;
                        pFSConfigurationDescriptors[0].pInterfaces[2].ubAlternateSetting = 0; // Mode 0 for this interface
                        pFSConfigurationDescriptors[0].pInterfaces[2].ubNumEndpoints = 1;
                        pFSConfigurationDescriptors[0].pInterfaces[2].ubInterfaceClass = 0xFF; // Vendor specific class
                        pFSConfigurationDescriptors[0].pInterfaces[2].ubInterfaceSubClass = 0xFF; // Vendor specific subclass
                        pFSConfigurationDescriptors[0].pInterfaces[2].ubInterfaceProtocol = 0xFF; // Vendor specific protocol
                        pFSConfigurationDescriptors[0].pInterfaces[2].ubInterfaceStringIndex = 6; // String #6

                        // Endpoints
                        {
                            pFSConfigurationDescriptors[0].pInterfaces[2].pEndpoints = (usb_endpoint_descriptor_t *)malloc(pFSConfigurationDescriptors[0].pInterfaces[2].ubNumEndpoints * sizeof(usb_endpoint_descriptor_t));

                            if(!pFSConfigurationDescriptors[0].pInterfaces[2].pEndpoints)
                                return;

                            // Endpoint #2
                            {
                                pFSConfigurationDescriptors[0].pInterfaces[2].pEndpoints[0].ubLength = sizeof(usb_endpoint_descriptor_t);
                                pFSConfigurationDescriptors[0].pInterfaces[2].pEndpoints[0].ubDescriptorType = USB_DESCRIPTOR_TYPE_ENDPOINT;
                                pFSConfigurationDescriptors[0].pInterfaces[2].pEndpoints[0].ubEndpointAddress = USB_ENDPOINT_ADDR_OUT | 2;
                                pFSConfigurationDescriptors[0].pInterfaces[2].pEndpoints[0].ubAttributes = USB_ENDPOINT_ATTR_BULK;
                                pFSConfigurationDescriptors[0].pInterfaces[2].pEndpoints[0].usMaxPacketSize = 64;
                                pFSConfigurationDescriptors[0].pInterfaces[2].pEndpoints[0].ubInterval = 12000 / 1000; // Polling interval in frames (125 us for HS, 1 ms for FS)

                                pFSConfigurationDescriptors[0].usTotalLength += pFSConfigurationDescriptors[0].pInterfaces[2].pEndpoints[0].ubLength;
                            }
                        }

                        pFSConfigurationDescriptors[0].usTotalLength += pFSConfigurationDescriptors[0].pInterfaces[2].ubLength;
                    }
                }
            }
        }
    }

    // Strings
    {
        ulStringDescriptorsCount = 7;

        free(pStringDescriptors);

        pStringDescriptors = (usb_string_descriptor_t *)malloc(ulStringDescriptorsCount * sizeof(usb_string_descriptor_t));

        if(!pStringDescriptors)
            return;

        // String #0 - Supported Language Codes
        {
            pStringDescriptors[0].ubLength = sizeof(usb_string_descriptor_t) // String descriptor size
                                           - sizeof(uint16_t *) // Remove size of unicode pointer
                                           + 1 * sizeof(uint16_t); // Add size of string
            pStringDescriptors[0].ubDescriptorType = USB_DESCRIPTOR_TYPE_STRING;
            pStringDescriptors[0].pusString = (uint16_t *)malloc(1 * sizeof(uint16_t));

            if(!pStringDescriptors[0].pusString)
                return;

            pStringDescriptors[0].pusString[0] = USB_LANG_CODE_EN_US;
        }
        // String #1 - Manufacturer
        {
            static const char szManufacturer[] = "Joao Silva (vankxr)";

            pStringDescriptors[1].ubLength = sizeof(usb_string_descriptor_t) // String descriptor size
                                           - sizeof(uint16_t *) // Remove size of unicode pointer
                                           + strlen(szManufacturer) * sizeof(uint16_t); // Add size of string
            pStringDescriptors[1].ubDescriptorType = USB_DESCRIPTOR_TYPE_STRING;
            pStringDescriptors[1].pusString = usb_util_ascii_to_unicode(szManufacturer);
        }
        // String #2 - Product
        {
            static const char szProduct[] = "IcyRadio Software Defined Radio";

            pStringDescriptors[2].ubLength = sizeof(usb_string_descriptor_t) // String descriptor size
                                           - sizeof(uint16_t *) // Remove size of unicode pointer
                                           + strlen(szProduct) * sizeof(uint16_t); // Add size of string
            pStringDescriptors[2].ubDescriptorType = USB_DESCRIPTOR_TYPE_STRING;
            pStringDescriptors[2].pusString = usb_util_ascii_to_unicode(szProduct);
        }
        // String #3 - Serial Number
        {
            char szSerialNumber[36];
            uint32_t ulUniqueID[4];

            eefc_get_unique_id(ulUniqueID);

            snprintf(szSerialNumber, 36, "%08X-%08X-%08X-%08X", ulUniqueID[0], ulUniqueID[1], ulUniqueID[2], ulUniqueID[3]);

            pStringDescriptors[3].ubLength = sizeof(usb_string_descriptor_t) // String descriptor size
                                           - sizeof(uint16_t *) // Remove size of unicode pointer
                                           + strlen(szSerialNumber) * sizeof(uint16_t); // Add size of string
            pStringDescriptors[3].ubDescriptorType = USB_DESCRIPTOR_TYPE_STRING;
            pStringDescriptors[3].pusString = usb_util_ascii_to_unicode(szSerialNumber);
        }
        // String #4 - Control Interface
        {
            static const char szControlInterface[] = "Control Interface";

            pStringDescriptors[4].ubLength = sizeof(usb_string_descriptor_t) // String descriptor size
                                           - sizeof(uint16_t *) // Remove size of unicode pointer
                                           + strlen(szControlInterface) * sizeof(uint16_t); // Add size of string
            pStringDescriptors[4].ubDescriptorType = USB_DESCRIPTOR_TYPE_STRING;
            pStringDescriptors[4].pusString = usb_util_ascii_to_unicode(szControlInterface);
        }
        // String #5 - RX Interface
        {
            static const char szRXInterface[] = "Receive Data Interface";

            pStringDescriptors[5].ubLength = sizeof(usb_string_descriptor_t) // String descriptor size
                                           - sizeof(uint16_t *) // Remove size of unicode pointer
                                           + strlen(szRXInterface) * sizeof(uint16_t); // Add size of string
            pStringDescriptors[5].ubDescriptorType = USB_DESCRIPTOR_TYPE_STRING;
            pStringDescriptors[5].pusString = usb_util_ascii_to_unicode(szRXInterface);
        }
        // String #6 - TX Interface
        {
            static const char szTXInterface[] = "Transmit Data Interface";

            pStringDescriptors[6].ubLength = sizeof(usb_string_descriptor_t) // String descriptor size
                                           - sizeof(uint16_t *) // Remove size of unicode pointer
                                           + strlen(szTXInterface) * sizeof(uint16_t); // Add size of string
            pStringDescriptors[6].ubDescriptorType = USB_DESCRIPTOR_TYPE_STRING;
            pStringDescriptors[6].pusString = usb_util_ascii_to_unicode(szTXInterface);
        }
    }
}
void usb_impl_config_endpoints()
{
    USBHS->USBHS_DEVIDR = USBHS_DEVIDR_DMA_2 | USBHS_DEVIDR_DMA_1; // Disable Global DMA interrupts
    USBHS->USBHS_DEVIDR = USBHS_DEVIDR_PEP_2 | USBHS_DEVIDR_PEP_1; // Disable Global Endpoint interrupts

    // Endpoint #0 is configured in the reset ISR

    // Endpoint #1
    {
        USBHS->USBHS_DEVEPT |= USBHS_DEVEPT_EPEN1 | USBHS_DEVEPT_EPRST1; // Enable but keep in Reset state
        USBHS->USBHS_DEVEPT &= ~USBHS_DEVEPT_EPRST1; // Release endpoint from Reset state

        USBHS->USBHS_DEVEPTCFG[1] = USBHS_DEVEPTCFG_NBTRANS_0_TRANS | USBHS_DEVEPTCFG_EPTYPE_BLK | USBHS_DEVEPTCFG_EPDIR_IN | USBHS_DEVEPTCFG_EPSIZE_512_BYTE | USBHS_DEVEPTCFG_EPBK_2_BANK | USBHS_DEVEPTCFG_ALLOC;

        while(!(USBHS->USBHS_DEVEPTISR[1] & USBHS_DEVEPTISR_CFGOK)); // Wait for configuration validation

        // Buffer
        {
            if(pEndpointBuffer[1])
            {
                if(pEndpointBuffer[1]->pubData)
                    vPortFreeAligned((void *)pEndpointBuffer[1]->pubData);

                free(pEndpointBuffer[1]);
            }

            pEndpointBuffer[1] = (usb_endpoint_buffer_t *)malloc(sizeof(usb_endpoint_buffer_t));

            if(!pEndpointBuffer[1])
                return;

            pEndpointBuffer[1]->usSize = 16384;
            pEndpointBuffer[1]->usUsedSize = 0;
            pEndpointBuffer[1]->usWritePointer = 0;
            pEndpointBuffer[1]->usReadPointer = 0;
            pEndpointBuffer[1]->pubData = (volatile uint8_t *)pvPortMallocAligned(32, pEndpointBuffer[1]->usSize);

            if(!pEndpointBuffer[1]->pubData)
                return;
        }

        // DMA
        {
            USBHS->UsbhsDevdma[0].USBHS_DEVDMACONTROL = 0x00000000; // Disable DMA channel

            while(USBHS->UsbhsDevdma[0].USBHS_DEVDMASTATUS & (USBHS_DEVDMASTATUS_CHANN_ACT | USBHS_DEVDMASTATUS_CHANN_ENB)); // Wait until disabled
        }
    }

    // Endpoint #2
    {
        USBHS->USBHS_DEVEPT |= USBHS_DEVEPT_EPEN2 | USBHS_DEVEPT_EPRST2; // Enable but keep in Reset state
        USBHS->USBHS_DEVEPT &= ~USBHS_DEVEPT_EPRST2; // Release endpoint from Reset state

        USBHS->USBHS_DEVEPTCFG[2] = USBHS_DEVEPTCFG_NBTRANS_0_TRANS | USBHS_DEVEPTCFG_EPTYPE_BLK | USBHS_DEVEPTCFG_EPDIR_OUT | USBHS_DEVEPTCFG_EPSIZE_512_BYTE | USBHS_DEVEPTCFG_EPBK_2_BANK | USBHS_DEVEPTCFG_ALLOC;

        while(!(USBHS->USBHS_DEVEPTISR[2] & USBHS_DEVEPTISR_CFGOK)); // Wait for configuration validation

        // Buffer
        {
            if(pEndpointBuffer[2])
            {
                if(pEndpointBuffer[2]->pubData)
                    vPortFreeAligned((void *)pEndpointBuffer[2]->pubData);

                free(pEndpointBuffer[2]);
            }

            pEndpointBuffer[2] = (usb_endpoint_buffer_t *)malloc(sizeof(usb_endpoint_buffer_t));

            if(!pEndpointBuffer[2])
                return;

            pEndpointBuffer[2]->usSize = 16384;
            pEndpointBuffer[2]->usUsedSize = 0;
            pEndpointBuffer[2]->usWritePointer = 0;
            pEndpointBuffer[2]->usReadPointer = 0;
            pEndpointBuffer[2]->pubData = (volatile uint8_t *)pvPortMallocAligned(32, pEndpointBuffer[2]->usSize);

            if(!pEndpointBuffer[2]->pubData)
                return;
        }

        // DMA
        {
            USBHS->UsbhsDevdma[1].USBHS_DEVDMACONTROL = 0x00000000; // Disable DMA channel

            while(USBHS->UsbhsDevdma[1].USBHS_DEVDMASTATUS & (USBHS_DEVDMASTATUS_CHANN_ACT | USBHS_DEVDMASTATUS_CHANN_ENB)); // Wait until disabled
        }
    }

    USBHS->USBHS_DEVIER = USBHS_DEVIER_PEP_2 | USBHS_DEVIER_PEP_1; // Enable Global Endpoint interrupts
    USBHS->USBHS_DEVIER = USBHS_DEVIER_DMA_2 | USBHS_DEVIER_DMA_1; // Enable Global DMA interrupts

    if(pfEndpointReadyISR)
    {
        pfEndpointReadyISR(1);
        pfEndpointReadyISR(2);
    }
}

uint8_t usb_impl_handle_control_transfer(uint8_t ubEndpoint, usb_setup_packet_t *pSetupPacket)
{
    if(!pSetupPacket)
        return 1;

    switch(pSetupPacket->ubRequestType & USB_SETUP_REQUEST_TYPE_TYPE_MASK)
    {
        case USB_SETUP_REQUEST_TYPE_TYPE_STANDARD:
        {
            switch(pSetupPacket->ubRequestType & USB_SETUP_REQUEST_TYPE_RECIPIENT_MASK)
            {
                case USB_SETUP_REQUEST_TYPE_RECIPIENT_DEVICE:
                {
                    switch(pSetupPacket->ubRequest)
                    {
                        case USB_SETUP_STD_REQUEST_GET_STATUS:
                        {
                            if(usb_impl_endpoint_buffer_write(ubEndpoint, (uint8_t *)&usDeviceStatus, sizeof(uint16_t)) != sizeof(uint16_t))
                                return 1;

                            return 0;
                        }
                        break;
                        case USB_SETUP_STD_REQUEST_CLEAR_FEATURE:
                        {
                            uint16_t usFeature = pSetupPacket->usValue;

                            switch(usFeature)
                            {
                                case USB_FEATURE_DEVICE_REMOTE_WAKEUP:
                                {
                                    usDeviceStatus &= ~USB_DEVICE_STATUS_REMOTE_WAKEUP;

                                    return 0;
                                }
                                break;
                                case USB_FEATURE_TEST_MODE:
                                {
                                    // Not supported

                                    return 1;
                                }
                                break;
                                case USB_FEATURE_OTG_A_HNP_ENABLE:
                                {
                                    // Not supported

                                    return 1;
                                }
                                break;
                                case USB_FEATURE_OTG_A_HNP_SUPPORT:
                                {
                                    // Not supported

                                    return 1;
                                }
                                break;
                                case USB_FEATURE_OTG_A_ALT_HNP_SUPPORT:
                                {
                                    // Not supported

                                    return 1;
                                }
                                break;
                                case USB_FEATURE_DEBUG_MODE:
                                {
                                    // Not supported

                                    return 1;
                                }
                                break;
                            }
                        }
                        break;
                        case USB_SETUP_STD_REQUEST_SET_FEATURE:
                        {
                            uint16_t usFeature = pSetupPacket->usValue;

                            switch(usFeature)
                            {
                                case USB_FEATURE_DEVICE_REMOTE_WAKEUP:
                                {
                                    usDeviceStatus |= USB_DEVICE_STATUS_REMOTE_WAKEUP;

                                    return 0;
                                }
                                break;
                                case USB_FEATURE_TEST_MODE:
                                {
                                    // Not supported

                                    return 1;
                                }
                                break;
                                case USB_FEATURE_OTG_A_HNP_ENABLE:
                                {
                                    // Not supported

                                    return 1;
                                }
                                break;
                                case USB_FEATURE_OTG_A_HNP_SUPPORT:
                                {
                                    // Not supported

                                    return 1;
                                }
                                break;
                                case USB_FEATURE_OTG_A_ALT_HNP_SUPPORT:
                                {
                                    // Not supported

                                    return 1;
                                }
                                break;
                                case USB_FEATURE_DEBUG_MODE:
                                {
                                    // Not supported

                                    return 1;
                                }
                                break;
                            }
                        }
                        break;
                        case USB_SETUP_STD_REQUEST_SET_ADDRESS:
                        {
                            uint8_t ubAddress = pSetupPacket->usValue & 0x7F;

                            //DBGPRINTLN_CTX("req set addr%hhu", ubAddress);

                            USBHS->USBHS_DEVCTRL = (USBHS->USBHS_DEVCTRL & ~(USBHS_DEVCTRL_ADDEN_Msk | USBHS_DEVCTRL_UADD_Msk)) | (ubAddress << USBHS_DEVCTRL_UADD_Pos);

                            return 0;
                        }
                        break;
                        case USB_SETUP_STD_REQUEST_GET_DESCRIPTOR:
                        {
                            uint8_t ubDescriptorType = (pSetupPacket->usValue >> 8) & 0xFF;
                            uint8_t ubDescriptorIndex = (pSetupPacket->usValue >> 0) & 0xFF;

                            switch(ubDescriptorType)
                            {
                                case USB_DESCRIPTOR_TYPE_DEVICE:
                                {
                                    //DBGPRINTLN_CTX("req dev descr");

                                    usb_device_descriptor_t *pDescriptor = pFSDeviceDescriptor;

                                    if((USBHS->USBHS_SR & USBHS_SR_SPEED_Msk) == USBHS_SR_SPEED_HIGH_SPEED)
                                        pDescriptor = pHSDeviceDescriptor;

                                    uint8_t ubBuffer[pSetupPacket->usLength];
                                    uint32_t ulBufferUsedSize = usb_util_serialize_device_descriptor(pDescriptor, ubBuffer, pSetupPacket->usLength);

                                    if(usb_impl_endpoint_buffer_write(ubEndpoint, ubBuffer, ulBufferUsedSize) != ulBufferUsedSize)
                                        return 1;

                                    return 0;
                                }
                                break;
                                case USB_DESCRIPTOR_TYPE_CONFIGURATION:
                                {
                                    //DBGPRINTLN_CTX("req conf%hhu descr", ubDescriptorIndex);

                                    usb_device_descriptor_t *pDeviceDescriptor = pFSDeviceDescriptor;

                                    if((USBHS->USBHS_SR & USBHS_SR_SPEED_Msk) == USBHS_SR_SPEED_HIGH_SPEED)
                                        pDeviceDescriptor = pHSDeviceDescriptor;

                                    if(ubDescriptorIndex > pDeviceDescriptor->ubNumConfigurations - 1)
                                        ubDescriptorIndex = pDeviceDescriptor->ubNumConfigurations - 1;

                                    usb_configuration_descriptor_t *pDescriptor = &pFSConfigurationDescriptors[ubDescriptorIndex];

                                    if((USBHS->USBHS_SR & USBHS_SR_SPEED_Msk) == USBHS_SR_SPEED_HIGH_SPEED)
                                        pDescriptor = &pHSConfigurationDescriptors[ubDescriptorIndex];

                                    pDescriptor->ubDescriptorType = USB_DESCRIPTOR_TYPE_CONFIGURATION;

                                    uint8_t ubBuffer[pSetupPacket->usLength];
                                    uint32_t ulBufferUsedSize = usb_util_serialize_configuration_descriptor(pDescriptor, ubBuffer, pSetupPacket->usLength);

                                    if(usb_impl_endpoint_buffer_write(ubEndpoint, ubBuffer, ulBufferUsedSize) != ulBufferUsedSize)
                                        return 1;

                                    return 0;
                                }
                                break;
                                case USB_DESCRIPTOR_TYPE_STRING:
                                {
                                    //DBGPRINTLN_CTX("req str%hhu descr", ubDescriptorIndex);

                                    usb_string_descriptor_t *pDescriptor = &pStringDescriptors[0];

                                    if(ubDescriptorIndex > 0 && ubDescriptorIndex < ulStringDescriptorsCount)
                                    {
                                        pDescriptor = &pStringDescriptors[ubDescriptorIndex];

                                        // TODO: Support multiple languages
                                    }

                                    uint8_t ubBuffer[pSetupPacket->usLength];
                                    uint32_t ulBufferUsedSize = usb_util_serialize_string_descriptor(pDescriptor, ubBuffer, pSetupPacket->usLength);

                                    if(usb_impl_endpoint_buffer_write(ubEndpoint, ubBuffer, ulBufferUsedSize) != ulBufferUsedSize)
                                        return 1;

                                    return 0;
                                }
                                break;
                                case USB_DESCRIPTOR_TYPE_DEVICE_QUALIFIER:
                                {
                                    //DBGPRINTLN_CTX("req dev qual descr");

                                    usb_device_qualifier_descriptor_t *pDescriptor = pHSDeviceQualifierDescriptor;

                                    if((USBHS->USBHS_SR & USBHS_SR_SPEED_Msk) == USBHS_SR_SPEED_HIGH_SPEED)
                                        pDescriptor = pFSDeviceQualifierDescriptor;

                                    uint8_t ubBuffer[pSetupPacket->usLength];
                                    uint32_t ulBufferUsedSize = usb_util_serialize_device_qualifier_descriptor(pDescriptor, ubBuffer, pSetupPacket->usLength);

                                    if(usb_impl_endpoint_buffer_write(ubEndpoint, ubBuffer, ulBufferUsedSize) != ulBufferUsedSize)
                                        return 1;

                                    return 0;
                                }
                                break;
                                case USB_DESCRIPTOR_TYPE_OTHER_SPEED_CONFIGURATION:
                                {
                                    //DBGPRINTLN_CTX("req ospd conf descr");

                                    usb_configuration_descriptor_t *pDescriptor = pHSConfigurationDescriptors;

                                    if((USBHS->USBHS_SR & USBHS_SR_SPEED_Msk) == USBHS_SR_SPEED_HIGH_SPEED)
                                        pDescriptor = pFSConfigurationDescriptors;

                                    pDescriptor->ubDescriptorType = USB_DESCRIPTOR_TYPE_OTHER_SPEED_CONFIGURATION;

                                    uint8_t ubBuffer[pSetupPacket->usLength];
                                    uint32_t ulBufferUsedSize = usb_util_serialize_configuration_descriptor(pDescriptor, ubBuffer, pSetupPacket->usLength);

                                    if(usb_impl_endpoint_buffer_write(ubEndpoint, ubBuffer, ulBufferUsedSize) != ulBufferUsedSize)
                                        return 1;

                                    return 0;
                                }
                                break;
                                case USB_DESCRIPTOR_TYPE_INTERFACE_POWER:
                                {
                                    //DBGPRINTLN_CTX("req intf pwr descr");

                                    // Obsolete - Not supported

                                    return 1;
                                }
                                break;
                                case USB_DESCRIPTOR_TYPE_DEBUG:
                                {
                                    //DBGPRINTLN_CTX("req debug descr");

                                    // Not supported

                                    return 1;
                                }
                                break;
                            }
                        }
                        break;
                        case USB_SETUP_STD_REQUEST_SET_DESCRIPTOR:
                        {
                            uint8_t ubDescriptorType = (pSetupPacket->usValue >> 8) & 0xFF;
                            uint8_t ubDescriptorIndex = (pSetupPacket->usValue >> 0) & 0xFF;

                            // Not supported

                            return 1;
                        }
                        break;
                        case USB_SETUP_STD_REQUEST_GET_CONFIGURATION:
                        {
                            if(usb_impl_endpoint_buffer_write(ubEndpoint, &ubCurrentConfiguration, sizeof(uint8_t)) != sizeof(uint8_t))
                                return 1;

                            return 0;
                        }
                        break;
                        case USB_SETUP_STD_REQUEST_SET_CONFIGURATION:
                        {
                            uint8_t ubConfigurationValue = pSetupPacket->usValue & 0xFF;

                            ubCurrentConfiguration = ubConfigurationValue;

                            usb_impl_config_endpoints(); // Init endpoints associated with this configuration

                            // TODO: Support multiple configurations

                            return 0;
                        }
                        break;
                    }
                }
                break;
                case USB_SETUP_REQUEST_TYPE_RECIPIENT_INTERFACE:
                {
                    uint8_t ubInterfaceNumber = pSetupPacket->usIndex & 0xFF;

                    switch(pSetupPacket->ubRequest)
                    {
                        case USB_SETUP_STD_REQUEST_GET_STATUS:
                        {
                            uint16_t usInterfaceStatus = 0x0000; // All Reserved

                            if(usb_impl_endpoint_buffer_write(ubEndpoint, (uint8_t *)&usInterfaceStatus, sizeof(uint16_t)) != sizeof(uint16_t))
                                return 1;

                            return 0;
                        }
                        break;
                        case USB_SETUP_STD_REQUEST_CLEAR_FEATURE:
                        {
                            uint16_t usFeature = pSetupPacket->usValue;

                            // No interface features

                            return 0;
                        }
                        break;
                        case USB_SETUP_STD_REQUEST_SET_FEATURE:
                        {
                            uint16_t usFeature = pSetupPacket->usValue;

                            // No interface features

                            return 0;
                        }
                        break;
                        case USB_SETUP_STD_REQUEST_GET_INTERFACE:
                        {
                            uint8_t ubInterfaceAlternateSetting = 0x0000; // TODO: Support multiple interface alternate settings

                            if(usb_impl_endpoint_buffer_write(ubEndpoint, &ubInterfaceAlternateSetting, sizeof(uint8_t)) != sizeof(uint8_t))
                                return 1;

                            return 0;
                        }
                        break;
                        case USB_SETUP_STD_REQUEST_SET_INTERFACE:
                        {
                            uint8_t ubAlternateSetting = pSetupPacket->usValue & 0xFF;

                            // TODO: Support multiple interface alternate settings

                            return 0;
                        }
                        break;
                    }
                }
                break;
                case USB_SETUP_REQUEST_TYPE_RECIPIENT_ENDPOINT:
                {
                    uint8_t ubEndpointNumber = pSetupPacket->usIndex & 0x0F;
                    uint8_t ubEndpointDirection = pSetupPacket->usIndex & 0x80;

                    if(ubEndpointNumber > 9)
                        return 1;

                    switch(pSetupPacket->ubRequest)
                    {
                        case USB_SETUP_STD_REQUEST_GET_STATUS:
                        {
                            uint16_t usEndpointStatus = (USBHS->USBHS_DEVEPTIMR[ubEndpointNumber] & USBHS_DEVEPTIMR_CTRL_STALLRQ_Msk) >> USBHS_DEVEPTIMR_CTRL_STALLRQ_Pos;

                            if(usb_impl_endpoint_buffer_write(ubEndpoint, (uint8_t *)&usEndpointStatus, sizeof(uint16_t)) != sizeof(uint16_t))
                                return 1;

                            return 0;
                        }
                        break;
                        case USB_SETUP_STD_REQUEST_CLEAR_FEATURE:
                        {
                            uint16_t usFeature = pSetupPacket->usValue;

                            switch(usFeature)
                            {
                                case USB_FEATURE_ENDPOINT_HALT:
                                {
                                    USBHS->USBHS_DEVEPTIDR[ubEndpointNumber] = USBHS_DEVEPTIDR_CTRL_STALLRQC;

                                    return 0;
                                }
                                break;
                            }
                        }
                        break;
                        case USB_SETUP_STD_REQUEST_SET_FEATURE:
                        {
                            uint16_t usFeature = pSetupPacket->usValue;

                            switch(usFeature)
                            {
                                case USB_FEATURE_ENDPOINT_HALT:
                                {
                                    USBHS->USBHS_DEVEPTIER[ubEndpointNumber] = USBHS_DEVEPTIER_CTRL_STALLRQS;

                                    return 0;
                                }
                                break;
                            }
                        }
                        break;
                        case USB_SETUP_STD_REQUEST_SYNC_FRAME:
                        {
                            // TODO: Support isochronous sync frames

                            return 1;
                        }
                        break;
                    }
                }
                break;
            }
        }
        break;
        case USB_SETUP_REQUEST_TYPE_TYPE_CLASS:
        {
            // Not supported

            return 1;
        }
        break;
        case USB_SETUP_REQUEST_TYPE_TYPE_VENDOR:
        {
            if(pfVendorRequestHandler)
                return pfVendorRequestHandler(ubEndpoint, pSetupPacket);

            return 1;
        }
        break;
    }

    return 1;
}


void usb_impl_init()
{
    usb_impl_config_descriptors();

    usb_set_reset_isr(usb_impl_reset_isr);
    usb_set_endpoint_isr(0, usb_impl_ep0_isr);
    usb_set_endpoint_isr(1, usb_impl_epx_isr);
    usb_set_endpoint_isr(2, usb_impl_epx_isr);
    usb_set_endpoint_dma_isr(1, usb_impl_epx_dma_isr);
    usb_set_endpoint_dma_isr(2, usb_impl_epx_dma_isr);
}

void usb_impl_set_endpoint_ready_isr(usb_endpoint_ready_isr_t pfISR)
{
    pfEndpointReadyISR = pfISR;
}

void usb_impl_set_vendor_request_handler(usb_vendor_request_handler_t pfHandler)
{
    pfVendorRequestHandler = pfHandler;
}

uint16_t usb_impl_endpoint_buffer_get_size(uint8_t ubEndpoint)
{
    if(ubEndpoint > 9)
        return 0;

    usb_endpoint_buffer_t *pBuffer = pEndpointBuffer[ubEndpoint];

    if(!pBuffer)
        return 0;

    return pBuffer->usSize;
}
uint16_t usb_impl_endpoint_buffer_get_used_size(uint8_t ubEndpoint)
{
    if(ubEndpoint > 9)
        return 0;

    usb_endpoint_buffer_t *pBuffer = pEndpointBuffer[ubEndpoint];

    if(!pBuffer)
        return 0;

    return pBuffer->usUsedSize;
}
void usb_impl_endpoint_buffer_flush(uint8_t ubEndpoint)
{
    if(ubEndpoint > 9)
        return;

    usb_endpoint_buffer_t *pBuffer = pEndpointBuffer[ubEndpoint];

    if(!pBuffer)
        return;

    taskENTER_CRITICAL();
    {
        pBuffer->usWritePointer = 0;
        pBuffer->usReadPointer = 0;
        pBuffer->usUsedSize = 0;
    }
    taskEXIT_CRITICAL();
}
uint16_t usb_impl_endpoint_buffer_read(uint8_t ubEndpoint, uint8_t *pubData, uint16_t usLength)
{
    if(ubEndpoint > 9)
        return 0;

    if(!pubData)
        return 0;

    if(!usLength)
        return 0;

    usb_endpoint_buffer_t *pBuffer = pEndpointBuffer[ubEndpoint];

    if(!pBuffer)
        return 0;

    uint16_t usReadBytes = 0;

    taskENTER_CRITICAL();
    {
        while(usReadBytes < usLength)
        {
            if(!pBuffer->usUsedSize)
                break;

            pubData[usReadBytes++] = pBuffer->pubData[pBuffer->usReadPointer++];
            pBuffer->usUsedSize--;

            if(pBuffer->usReadPointer >= pBuffer->usSize)
                pBuffer->usReadPointer = 0;
        }
    }
    taskEXIT_CRITICAL();

    return usReadBytes;
}
uint16_t usb_impl_endpoint_buffer_write(uint8_t ubEndpoint, const uint8_t *pubData, uint16_t usLength)
{
    if(ubEndpoint > 9)
        return 0;

    if(!pubData)
        return 0;

    if(!usLength)
        return 0;

    usb_endpoint_buffer_t *pBuffer = pEndpointBuffer[ubEndpoint];

    if(!pBuffer)
        return 0;

    uint16_t usWrittenBytes = 0;

    taskENTER_CRITICAL();
    {
        while(usWrittenBytes < usLength)
        {
            if(pBuffer->usUsedSize >= pBuffer->usSize)
                break;

            pBuffer->pubData[pBuffer->usWritePointer++] = pubData[usWrittenBytes++];
            pBuffer->usUsedSize++;

            if(pBuffer->usWritePointer >= pBuffer->usSize)
                pBuffer->usWritePointer = 0;
        }

        if(usWrittenBytes)
            dcache_addr_clean((void *)pBuffer->pubData, pBuffer->usSize);
    }
    taskEXIT_CRITICAL();

    return usWrittenBytes;
}
uint8_t usb_impl_endpoint_buffer_dma_trigger(uint8_t ubEndpoint, uint16_t usLength)
{
    if(ubEndpoint < 1 || ubEndpoint > 7)
        return 0;

    if(!usLength)
        return 0;

    usb_endpoint_buffer_t *pBuffer = pEndpointBuffer[ubEndpoint];

    if(!pBuffer)
        return 0;

    taskENTER_CRITICAL();
    {
        if(usLength > pBuffer->usSize)
        {
            taskEXIT_CRITICAL();

            return 0;
        }

        uint32_t ulDirection = USBHS->USBHS_DEVEPTCFG[ubEndpoint] & USBHS_DEVEPTCFG_EPDIR_Msk;

        if(ulDirection == USBHS_DEVEPTCFG_EPDIR_OUT && (pBuffer->usUsedSize || pBuffer->usWritePointer)) // Fail if we try to receive and there is something in the buffer or the write ptr is not at zero
        {
            taskEXIT_CRITICAL();

            return 0;
        }

        if(ulDirection == USBHS_DEVEPTCFG_EPDIR_IN && (usLength > pBuffer->usUsedSize || pBuffer->usReadPointer)) // Fail if we try to send more than we have in the buffer or the read ptr is not at zero
        {
            taskEXIT_CRITICAL();

            return 0;
        }

        USBHS->UsbhsDevdma[ubEndpoint - 1].USBHS_DEVDMAADDRESS = (uint32_t)pBuffer->pubData;

        if(ulDirection == USBHS_DEVEPTCFG_EPDIR_OUT)
            USBHS->UsbhsDevdma[ubEndpoint - 1].USBHS_DEVDMACONTROL = ((usLength << USBHS_DEVDMACONTROL_BUFF_LENGTH_Pos) & USBHS_DEVDMACONTROL_BUFF_LENGTH_Msk) | USBHS_DEVDMACONTROL_END_BUFFIT | USBHS_DEVDMACONTROL_END_TR_IT | USBHS_DEVDMACONTROL_END_TR_EN | USBHS_DEVDMACONTROL_CHANN_ENB;
        else
            USBHS->UsbhsDevdma[ubEndpoint - 1].USBHS_DEVDMACONTROL = ((usLength << USBHS_DEVDMACONTROL_BUFF_LENGTH_Pos) & USBHS_DEVDMACONTROL_BUFF_LENGTH_Msk) | USBHS_DEVDMACONTROL_END_BUFFIT | USBHS_DEVDMACONTROL_CHANN_ENB;

        while(!(USBHS->UsbhsDevdma[ubEndpoint - 1].USBHS_DEVDMASTATUS & USBHS_DEVDMASTATUS_CHANN_ENB));

        if(ulDirection == USBHS_DEVEPTCFG_EPDIR_OUT)
            USBHS->USBHS_DEVEPTIER[ubEndpoint] = USBHS_DEVEPTIER_RXOUTES;
        else
            USBHS->USBHS_DEVEPTIER[ubEndpoint] = USBHS_DEVEPTIER_TXINES;
    }
    taskEXIT_CRITICAL();

    return 1;
}