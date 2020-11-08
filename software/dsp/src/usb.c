#include "usb.h"

usb_reset_isr_t pfResetISR = NULL;
usb_endpoint_isr_t pfEndpointISR[10] = {NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL};
usb_endpoint_dma_isr_t pfEndpointDMAISR[7] = {NULL, NULL, NULL, NULL, NULL, NULL, NULL};

void ITCM_CODE _usbhs_isr()
{
    uint32_t ubGlobalFlags = USBHS->USBHS_DEVISR & USBHS->USBHS_DEVIMR;

    if(ubGlobalFlags & USBHS_DEVISR_SUSP)
    {
        USBHS->USBHS_DEVIDR = USBHS_DEVIDR_SUSPEC;
        USBHS->USBHS_DEVIER = USBHS_DEVIER_WAKEUPES;
        USBHS->USBHS_DEVICR = USBHS_DEVICR_SUSPC;

        USBHS->USBHS_CTRL |= USBHS_CTRL_FRZCLK;
    }

    if(ubGlobalFlags & USBHS_DEVISR_WAKEUP)
    {
        USBHS->USBHS_CTRL &= ~USBHS_CTRL_FRZCLK;

        USBHS->USBHS_DEVIDR = USBHS_DEVIDR_WAKEUPEC;
        USBHS->USBHS_DEVIER = USBHS_DEVIER_SUSPES;
        USBHS->USBHS_DEVICR = USBHS_DEVICR_WAKEUPC;
    }

    if(ubGlobalFlags & USBHS_DEVISR_EORST)
    {
        uint8_t ubSpeed = (USBHS->USBHS_SR & USBHS_SR_SPEED_Msk) >> USBHS_SR_SPEED_Pos;

        if(pfResetISR)
            pfResetISR(ubSpeed);

        USBHS->USBHS_DEVICR = USBHS_DEVICR_EORSTC;
    }

    for(uint8_t i = 0; i < 10; i++)
    {
        if(pfEndpointISR[i] && (ubGlobalFlags & BIT(USBHS_DEVISR_PEP_0_Pos + i)))
            pfEndpointISR[i](i);

        if(i < 1 || i > 7) // Endponts 0, 8 and 9 do not have DMA
            continue;

        if(pfEndpointDMAISR[i - 1] && (ubGlobalFlags & BIT(USBHS_DEVISR_DMA_1_Pos + i - 1)))
            pfEndpointDMAISR[i - 1](i);
    }
}

void usb_init(uint32_t ulForceSpeed)
{
    pmc_peripheral_clock_gate(USBHS_CLOCK_ID, 1); // Enable peripheral clock

    UTMI->UTMI_OHCIICR = 0x00000000;

    USBHS->USBHS_CTRL = USBHS_CTRL_UIMOD_DEVICE | USBHS_CTRL_USBE | USBHS_CTRL_VBUSHWC;
    USBHS->USBHS_DEVCTRL = (ulForceSpeed & USBHS_DEVCTRL_SPDCONF_Msk) | USBHS_DEVCTRL_DETACH;

    pmc_usb_clock_config(1, 1, 1, PMC_USB_USBS, 5); // Enable UPLL and set divider to 2 (HS Clock = 480 MHz), Set FS clock source to UPLL/2, divide by 5 (FS Clock = 48 MHz)
    pmc_update_clocks();

    USBHS->USBHS_DEVIER = USBHS_DEVIER_EORSTES | USBHS_DEVIER_SUSPES; // Enable interrupts

    USBHS->USBHS_SCR = USBHS_SCR_MASK; // Clear pending IRQs
    USBHS->USBHS_DEVICR = USBHS_DEVICR_MASK; // Clear pending IRQs
    IRQ_CLEAR(USBHS_IRQn); // Clear pending vector
    IRQ_SET_PRIO(USBHS_IRQn, 2, 0); // Set priority 2,0
    IRQ_ENABLE(USBHS_IRQn); // Enable vector
}

void usb_attach()
{
    USBHS->USBHS_DEVCTRL &= ~USBHS_DEVCTRL_DETACH;
}
void usb_detach()
{
    USBHS->USBHS_DEVCTRL |= USBHS_DEVCTRL_DETACH;
}

void usb_set_reset_isr(usb_reset_isr_t pfISR)
{
    pfResetISR = pfISR;
}
void usb_set_endpoint_isr(uint8_t ubEndpoint, usb_endpoint_isr_t pfISR)
{
    if(ubEndpoint > 9)
        return;

    pfEndpointISR[ubEndpoint] = pfISR;
}
void usb_set_endpoint_dma_isr(uint8_t ubEndpoint, usb_endpoint_dma_isr_t pfISR)
{
    if(ubEndpoint < 1 || ubEndpoint > 7)
        return;

    pfEndpointDMAISR[ubEndpoint - 1] = pfISR;
}

void usb_fifo_write(uint8_t ubEndpoint, const uint8_t *pubData, uint32_t ulSize)
{
    if(ubEndpoint > 9)
        return;

    if(!pubData)
        return;

    if(!ulSize)
        return;

    if(ulSize > USB_FIFO_EPT_SIZE)
        return;

    __DSB();
    __ISB();

    for(uint32_t i = 0; i < ulSize; i++)
        *(uint8_t *)(USB_FIFO_EPT_ADDR(ubEndpoint) + i) = pubData[i];

    __DSB();
    __ISB();
}
void usb_fifo_read(uint8_t ubEndpoint, uint8_t *pubData, uint32_t ulSize)
{
    if(ubEndpoint > 9)
        return;

    if(!pubData)
        return;

    if(!ulSize)
        return;

    if(ulSize > USB_FIFO_EPT_SIZE)
        return;

    __DSB();
    __ISB();

    for(uint32_t i = 0; i < ulSize; i++)
        pubData[i] = *(uint8_t *)(USB_FIFO_EPT_ADDR(ubEndpoint) + i);

    __DSB();
    __ISB();
}