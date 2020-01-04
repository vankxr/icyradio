#include "cmu.h"

uint32_t HFRCO_VALUE = 19000000UL;
uint32_t USHFRCO_VALUE = 48000000UL;
uint32_t AUXHFRCO_VALUE = 19000000UL;
uint32_t LFRCO_VALUE = 32768UL;
uint32_t ULFRCO_VALUE = 1000UL;

uint32_t HFSRC_CLOCK_FREQ;
uint32_t HF_CLOCK_FREQ;
uint32_t HFBUS_CLOCK_FREQ;
uint32_t HFCORE_CLOCK_FREQ;
uint32_t HFEXP_CLOCK_FREQ;
uint32_t HFPER_CLOCK_FREQ;
uint32_t HFPERB_CLOCK_FREQ;
uint32_t HFPERC_CLOCK_FREQ;
uint32_t HFLE_CLOCK_FREQ;
uint32_t QSPI_CLOCK_FREQ;
uint32_t SDIO_CLOCK_FREQ;
uint32_t USB_CLOCK_FREQ;
uint32_t ADC0_CLOCK_FREQ;
uint32_t ADC1_CLOCK_FREQ;
uint32_t DBG_CLOCK_FREQ;
uint32_t AUX_CLOCK_FREQ;
uint32_t LFA_CLOCK_FREQ;
uint32_t LESENSE_CLOCK_FREQ;
uint32_t RTC_CLOCK_FREQ;
uint32_t LCD_CLOCK_FREQ;
uint32_t LETIMER0_CLOCK_FREQ;
uint32_t LETIMER1_CLOCK_FREQ;
uint32_t LFB_CLOCK_FREQ;
uint32_t LEUART0_CLOCK_FREQ;
uint32_t LEUART1_CLOCK_FREQ;
uint32_t SYSTICK_CLOCK_FREQ;
uint32_t CSEN_CLOCK_FREQ;
uint32_t LFC_CLOCK_FREQ;
uint32_t LFE_CLOCK_FREQ;
uint32_t RTCC_CLOCK_FREQ;

void cmu_init()
{
    // Disable DPLL if enabled
    if(CMU->STATUS & CMU_STATUS_DPLLENS)
    {
        CMU->OSCENCMD = CMU_OSCENCMD_DPLLDIS;
        while(CMU->STATUS & CMU_STATUS_DPLLENS);
    }

    // Disable HFXO if enabled
    if(CMU->STATUS & CMU_STATUS_HFXOENS)
    {
        CMU->OSCENCMD = CMU_OSCENCMD_HFXODIS;
        while(CMU->STATUS & CMU_STATUS_HFXOENS);
    }

    // Config peripherals for the new frequency
    cmu_config_waitstates(36000000);
    msc_config_waitstates(72000000);

    // Set prescalers
    CMU->HFPRESC = CMU_HFPRESC_HFCLKLEPRESC_DIV2 | CMU_HFPRESC_PRESC_NODIVISION;
    CMU->HFBUSPRESC = 1 << _CMU_HFBUSPRESC_PRESC_SHIFT;
    CMU->HFCOREPRESC = 0 << _CMU_HFCOREPRESC_PRESC_SHIFT;
    CMU->HFPERPRESC = 1 << _CMU_HFPERPRESC_PRESC_SHIFT;
    CMU->HFEXPPRESC = 0 << _CMU_HFEXPPRESC_PRESC_SHIFT;
    CMU->HFPERPRESCB = 0 << _CMU_HFPERPRESCB_PRESC_SHIFT;
    CMU->HFPERPRESCC = 1 << _CMU_HFPERPRESCC_PRESC_SHIFT;

    // Calibrate HFRCO for 72MHz and enable tunning by PLL
    cmu_hfrco_calib(HFRCO_CALIB_72M | CMU_HFRCOCTRL_FINETUNINGEN, 72000000);

    // Switch main clock to HFRCO and wait for it to be selected
    CMU->HFCLKSEL = CMU_HFCLKSEL_HF_HFRCO;
    while((CMU->HFCLKSTATUS & _CMU_HFCLKSTATUS_SELECTED_MASK) != CMU_HFCLKSTATUS_SELECTED_HFRCO);

    // Enable clock to peripherals
    CMU->CTRL |= CMU_CTRL_HFPERCLKEN;

    // Disable LFXO if enabled
    if(CMU->STATUS & CMU_STATUS_LFXOENS)
    {
        CMU->OSCENCMD = CMU_OSCENCMD_LFXODIS;
        while(CMU->STATUS & CMU_STATUS_LFXOENS);
    }

    // Setup LFXO
    CMU->LFXOCTRL = (CMU->LFXOCTRL & (CMU_LFXOCTRL_GAIN_DEFAULT | _CMU_LFXOCTRL_TUNING_MASK)) | CMU_LFXOCTRL_TIMEOUT_2KCYCLES | CMU_LFXOCTRL_AGC | CMU_LFXOCTRL_MODE_XTAL;

    // Enable LFXO and wait for it to be ready
    CMU->OSCENCMD = CMU_OSCENCMD_LFXOEN;
    while(!(CMU->STATUS & CMU_STATUS_LFXORDY));

    // LFE Clock
    CMU->LFECLKSEL = CMU_LFECLKSEL_LFE_LFXO;
}
void cmu_update_clocks()
{
    if((CMU->STATUS & CMU_STATUS_DPLLRDY) == CMU_STATUS_DPLLRDY)
    {
        float fPLLMul = (float)(((CMU->DPLLCTRL1 & _CMU_DPLLCTRL1_N_MASK) >> _CMU_DPLLCTRL1_N_SHIFT) + 1) / (((CMU->DPLLCTRL1 & _CMU_DPLLCTRL1_M_MASK) >> _CMU_DPLLCTRL1_M_SHIFT) + 1);

        switch(CMU->DPLLCTRL & _CMU_DPLLCTRL_REFSEL_MASK)
        {
            case CMU_DPLLCTRL_REFSEL_HFXO:
                HFRCO_VALUE = HFXO_VALUE * fPLLMul;
            break;
            case CMU_DPLLCTRL_REFSEL_LFXO:
                HFRCO_VALUE = LFXO_VALUE * fPLLMul;
            break;
            case CMU_DPLLCTRL_REFSEL_USHFRCO:
                HFRCO_VALUE = USHFRCO_VALUE * fPLLMul;
            break;
            case CMU_DPLLCTRL_REFSEL_CLKIN0:
                HFRCO_VALUE = 0 * fPLLMul; // TODO: Support external clock
            break;
        }
    }

    AUX_CLOCK_FREQ = AUXHFRCO_VALUE;

    switch(CMU->HFCLKSTATUS & _CMU_HFCLKSTATUS_SELECTED_MASK)
    {
        case CMU_HFCLKSTATUS_SELECTED_HFRCO:
            HFSRC_CLOCK_FREQ = HFRCO_VALUE;
        break;
        case CMU_HFCLKSTATUS_SELECTED_HFXO:
            HFSRC_CLOCK_FREQ = HFXO_VALUE;
        break;
        case CMU_HFCLKSTATUS_SELECTED_LFRCO:
            HFSRC_CLOCK_FREQ = LFRCO_VALUE;
        break;
        case CMU_HFCLKSTATUS_SELECTED_LFXO:
            HFSRC_CLOCK_FREQ = LFXO_VALUE;
        break;
        case CMU_HFCLKSTATUS_SELECTED_HFRCODIV2:
            HFSRC_CLOCK_FREQ = HFRCO_VALUE >> 1;
        break;
        case CMU_HFCLKSTATUS_SELECTED_USHFRCO:
            HFSRC_CLOCK_FREQ = USHFRCO_VALUE;
        break;
        case CMU_HFCLKSTATUS_SELECTED_CLKIN0:
            HFSRC_CLOCK_FREQ = 0; // TODO: Support external clock
        break;
    }

    HF_CLOCK_FREQ = HFSRC_CLOCK_FREQ / (((CMU->HFPRESC & _CMU_HFPRESC_PRESC_MASK) >> _CMU_HFPRESC_PRESC_SHIFT) + 1);

    switch(CMU->HFPRESC & _CMU_HFPRESC_HFCLKLEPRESC_MASK)
    {
        case CMU_HFPRESC_HFCLKLEPRESC_DIV2:
            HFLE_CLOCK_FREQ = HF_CLOCK_FREQ >> 1;
        break;
        case CMU_HFPRESC_HFCLKLEPRESC_DIV4:
            HFLE_CLOCK_FREQ = HF_CLOCK_FREQ >> 2;
        break;
        case CMU_HFPRESC_HFCLKLEPRESC_DIV8:
            HFLE_CLOCK_FREQ = HF_CLOCK_FREQ >> 3;
        break;
    }

    HFBUS_CLOCK_FREQ = HF_CLOCK_FREQ / (((CMU->HFBUSPRESC & _CMU_HFBUSPRESC_PRESC_MASK) >> _CMU_HFBUSPRESC_PRESC_SHIFT) + 1);
    HFCORE_CLOCK_FREQ = HF_CLOCK_FREQ / (((CMU->HFCOREPRESC & _CMU_HFCOREPRESC_PRESC_MASK) >> _CMU_HFCOREPRESC_PRESC_SHIFT) + 1);
    HFEXP_CLOCK_FREQ = HF_CLOCK_FREQ / (((CMU->HFEXPPRESC & _CMU_HFEXPPRESC_PRESC_MASK) >> _CMU_HFEXPPRESC_PRESC_SHIFT) + 1);
    HFPER_CLOCK_FREQ = HF_CLOCK_FREQ / (((CMU->HFPERPRESC & _CMU_HFPERPRESC_PRESC_MASK) >> _CMU_HFPERPRESC_PRESC_SHIFT) + 1);
    HFPERB_CLOCK_FREQ = HF_CLOCK_FREQ / (((CMU->HFPERPRESCB & _CMU_HFPERPRESCB_PRESC_MASK) >> _CMU_HFPERPRESCB_PRESC_SHIFT) + 1);
    HFPERC_CLOCK_FREQ = HF_CLOCK_FREQ / (((CMU->HFPERPRESCC & _CMU_HFPERPRESCC_PRESC_MASK) >> _CMU_HFPERPRESCC_PRESC_SHIFT) + 1);

    switch(CMU->SDIOCTRL & _CMU_SDIOCTRL_SDIOCLKSEL_MASK)
    {
        case CMU_SDIOCTRL_SDIOCLKSEL_HFRCO:
            SDIO_CLOCK_FREQ = HFRCO_VALUE;
        break;
        case CMU_SDIOCTRL_SDIOCLKSEL_HFXO:
            SDIO_CLOCK_FREQ = HFXO_VALUE;
        break;
        case CMU_SDIOCTRL_SDIOCLKSEL_AUXHFRCO:
            SDIO_CLOCK_FREQ = AUX_CLOCK_FREQ;
        break;
        case CMU_SDIOCTRL_SDIOCLKSEL_USHFRCO:
            SDIO_CLOCK_FREQ = USHFRCO_VALUE;
        break;
    }

    switch(CMU->QSPICTRL & _CMU_QSPICTRL_QSPI0CLKSEL_MASK)
    {
        case CMU_QSPICTRL_QSPI0CLKSEL_HFRCO:
            QSPI_CLOCK_FREQ = HFRCO_VALUE;
        break;
        case CMU_QSPICTRL_QSPI0CLKSEL_HFXO:
            QSPI_CLOCK_FREQ = HFXO_VALUE;
        break;
        case CMU_QSPICTRL_QSPI0CLKSEL_AUXHFRCO:
            QSPI_CLOCK_FREQ = AUX_CLOCK_FREQ;
        break;
        case CMU_QSPICTRL_QSPI0CLKSEL_USHFRCO:
            QSPI_CLOCK_FREQ = USHFRCO_VALUE;
        break;
    }

    switch(CMU->USBCTRL & _CMU_USBCTRL_USBCLKSEL_MASK)
    {
        case CMU_USBCTRL_USBCLKSEL_USHFRCO:
            USB_CLOCK_FREQ = USHFRCO_VALUE;
        break;
        case CMU_USBCTRL_USBCLKSEL_HFXO:
            USB_CLOCK_FREQ = HFXO_VALUE;
        break;
        case CMU_USBCTRL_USBCLKSEL_HFXOX2:
        {
            if(CMU->HFXOCTRL & CMU_HFXOCTRL_HFXOX2EN)
                USB_CLOCK_FREQ = HFXO_VALUE << 1;
            else
                USB_CLOCK_FREQ = HFXO_VALUE;
        }
        break;
        case CMU_USBCTRL_USBCLKSEL_HFRCO:
            USB_CLOCK_FREQ = HFRCO_VALUE;
        break;
        case CMU_USBCTRL_USBCLKSEL_LFXO:
            USB_CLOCK_FREQ = LFXO_VALUE;
        break;
        case CMU_USBCTRL_USBCLKSEL_LFRCO:
            USB_CLOCK_FREQ = LFRCO_VALUE;
        break;
    }

    switch(CMU->DBGCLKSEL & _CMU_DBGCLKSEL_DBG_MASK)
    {
        case CMU_DBGCLKSEL_DBG_AUXHFRCO:
            DBG_CLOCK_FREQ = AUX_CLOCK_FREQ;
        break;
        case CMU_DBGCLKSEL_DBG_HFCLK:
            DBG_CLOCK_FREQ = HF_CLOCK_FREQ;
        break;
        case CMU_DBGCLKSEL_DBG_HFRCODIV2:
            DBG_CLOCK_FREQ = HFRCO_VALUE >> 1;
        break;
    }

    switch(CMU->ADCCTRL & _CMU_ADCCTRL_ADC0CLKSEL_MASK)
    {
        case CMU_ADCCTRL_ADC0CLKSEL_DISABLED:
            ADC0_CLOCK_FREQ = 0;
        break;
        case CMU_ADCCTRL_ADC0CLKSEL_AUXHFRCO:
            ADC0_CLOCK_FREQ = AUX_CLOCK_FREQ;
        break;
        case CMU_ADCCTRL_ADC0CLKSEL_HFXO:
            ADC0_CLOCK_FREQ = HFXO_VALUE;
        break;
        case CMU_ADCCTRL_ADC0CLKSEL_HFSRCCLK:
            ADC0_CLOCK_FREQ = HFSRC_CLOCK_FREQ;
        break;
    }

    ADC0_CLOCK_FREQ /= (((CMU->ADCCTRL & _CMU_ADCCTRL_ADC0CLKDIV_MASK) >> _CMU_ADCCTRL_ADC0CLKDIV_SHIFT) + 1);

    switch(CMU->ADCCTRL & _CMU_ADCCTRL_ADC1CLKSEL_MASK)
    {
        case CMU_ADCCTRL_ADC1CLKSEL_DISABLED:
            ADC1_CLOCK_FREQ = 0;
        break;
        case CMU_ADCCTRL_ADC1CLKSEL_AUXHFRCO:
            ADC1_CLOCK_FREQ = AUX_CLOCK_FREQ;
        break;
        case CMU_ADCCTRL_ADC1CLKSEL_HFXO:
            ADC1_CLOCK_FREQ = HFXO_VALUE;
        break;
        case CMU_ADCCTRL_ADC1CLKSEL_HFSRCCLK:
            ADC1_CLOCK_FREQ = HFSRC_CLOCK_FREQ;
        break;
    }

    ADC1_CLOCK_FREQ /= (((CMU->ADCCTRL & _CMU_ADCCTRL_ADC1CLKDIV_MASK) >> _CMU_ADCCTRL_ADC1CLKDIV_SHIFT) + 1);

    switch(CMU->LFACLKSEL & _CMU_LFACLKSEL_LFA_MASK)
    {
        case CMU_LFACLKSEL_LFA_DISABLED:
            LFA_CLOCK_FREQ = 0;
        break;
        case CMU_LFACLKSEL_LFA_LFRCO:
            LFA_CLOCK_FREQ = LFRCO_VALUE;
        break;
        case CMU_LFACLKSEL_LFA_LFXO:
            LFA_CLOCK_FREQ = LFXO_VALUE;
        break;
        case CMU_LFACLKSEL_LFA_ULFRCO:
            LFA_CLOCK_FREQ = ULFRCO_VALUE;
        break;
    }

    LESENSE_CLOCK_FREQ = LFA_CLOCK_FREQ << ((CMU->LFAPRESC0 & _CMU_LFAPRESC0_LESENSE_MASK) >> _CMU_LFAPRESC0_LESENSE_SHIFT);
    RTC_CLOCK_FREQ = LFA_CLOCK_FREQ << ((CMU->LFAPRESC0 & _CMU_LFAPRESC0_RTC_MASK) >> _CMU_LFAPRESC0_RTC_SHIFT);
    LCD_CLOCK_FREQ = LFA_CLOCK_FREQ << ((CMU->LFAPRESC0 & _CMU_LFAPRESC0_LCD_MASK) >> _CMU_LFAPRESC0_LCD_SHIFT);
    LETIMER0_CLOCK_FREQ = LFA_CLOCK_FREQ << ((CMU->LFAPRESC0 & _CMU_LFAPRESC0_LETIMER0_MASK) >> _CMU_LFAPRESC0_LETIMER0_SHIFT);
    LETIMER1_CLOCK_FREQ = LFA_CLOCK_FREQ << ((CMU->LFAPRESC0 & _CMU_LFAPRESC0_LETIMER1_MASK) >> _CMU_LFAPRESC0_LETIMER1_SHIFT);

    switch(CMU->LFBCLKSEL & _CMU_LFBCLKSEL_LFB_MASK)
    {
        case CMU_LFBCLKSEL_LFB_DISABLED:
            LFB_CLOCK_FREQ = 0;
        break;
        case CMU_LFBCLKSEL_LFB_LFRCO:
            LFB_CLOCK_FREQ = LFRCO_VALUE;
        break;
        case CMU_LFBCLKSEL_LFB_LFXO:
            LFB_CLOCK_FREQ = LFXO_VALUE;
        break;
        case CMU_LFBCLKSEL_LFB_HFCLKLE:
            LFB_CLOCK_FREQ = HFLE_CLOCK_FREQ;
        break;
        case CMU_LFBCLKSEL_LFB_ULFRCO:
            LFB_CLOCK_FREQ = ULFRCO_VALUE;
        break;
    }

    LEUART0_CLOCK_FREQ = LFB_CLOCK_FREQ << ((CMU->LFBPRESC0 & _CMU_LFBPRESC0_LEUART0_MASK) >> _CMU_LFBPRESC0_LEUART0_SHIFT);
    LEUART1_CLOCK_FREQ = LFB_CLOCK_FREQ << ((CMU->LFBPRESC0 & _CMU_LFBPRESC0_LEUART1_MASK) >> _CMU_LFBPRESC0_LEUART1_SHIFT);
    SYSTICK_CLOCK_FREQ = LFB_CLOCK_FREQ << ((CMU->LFBPRESC0 & _CMU_LFBPRESC0_SYSTICK_MASK) >> _CMU_LFBPRESC0_SYSTICK_SHIFT);
    CSEN_CLOCK_FREQ = LFB_CLOCK_FREQ << (((CMU->LFBPRESC0 & _CMU_LFBPRESC0_CSEN_MASK) >> _CMU_LFBPRESC0_CSEN_SHIFT) + 4);

    switch(CMU->LFCCLKSEL & _CMU_LFCCLKSEL_LFC_MASK)
    {
        case CMU_LFCCLKSEL_LFC_DISABLED:
            LFC_CLOCK_FREQ = 0;
        break;
        case CMU_LFCCLKSEL_LFC_LFRCO:
            LFC_CLOCK_FREQ = LFRCO_VALUE;
        break;
        case CMU_LFCCLKSEL_LFC_LFXO:
            LFC_CLOCK_FREQ = LFXO_VALUE;
        break;
        case CMU_LFCCLKSEL_LFC_ULFRCO:
            LFC_CLOCK_FREQ = ULFRCO_VALUE;
        break;
    }

    switch(CMU->LFECLKSEL & _CMU_LFECLKSEL_LFE_MASK)
    {
        case CMU_LFECLKSEL_LFE_DISABLED:
            LFE_CLOCK_FREQ = 0;
        break;
        case CMU_LFECLKSEL_LFE_LFRCO:
            LFE_CLOCK_FREQ = LFRCO_VALUE;
        break;
        case CMU_LFECLKSEL_LFE_LFXO:
            LFE_CLOCK_FREQ = LFXO_VALUE;
        break;
        case CMU_LFECLKSEL_LFE_ULFRCO:
            LFE_CLOCK_FREQ = ULFRCO_VALUE;
        break;
    }

    RTCC_CLOCK_FREQ = LFE_CLOCK_FREQ << ((CMU->LFEPRESC0 & _CMU_LFEPRESC0_RTCC_MASK) >> _CMU_LFEPRESC0_RTCC_SHIFT);
}
void cmu_config_waitstates(uint32_t ulFrequency)
{
    if(ulFrequency <= 32000000)
        CMU->CTRL &= ~CMU_CTRL_WSHFLE;
    else
        CMU->CTRL |= CMU_CTRL_WSHFLE;
}

void cmu_hfrco_calib(uint32_t ulCalibration, uint32_t ulTargetFrequency)
{
    if(CMU->STATUS & CMU_STATUS_DPLLENS)
        return;

    while(CMU->SYNCBUSY & CMU_SYNCBUSY_HFRCOBSY);

    CMU->HFRCOCTRL = ulCalibration;

    while(CMU->SYNCBUSY & CMU_SYNCBUSY_HFRCOBSY);

    HFRCO_VALUE = ulTargetFrequency;
}

void cmu_ushfrco_calib(uint8_t ubEnable, uint32_t ulCalibration, uint32_t ulTargetFrequency)
{
    if(CMU->USBCRCTRL & CMU_USBCRCTRL_USBCREN)
        return;

    if(!ubEnable)
    {
        CMU->OSCENCMD = CMU_OSCENCMD_USHFRCODIS;
        while(CMU->STATUS & CMU_STATUS_USHFRCOENS);

        return;
    }

    while(CMU->SYNCBUSY & CMU_SYNCBUSY_USHFRCOBSY);

    CMU->USHFRCOCTRL = ulCalibration;

    while(CMU->SYNCBUSY & CMU_SYNCBUSY_USHFRCOBSY);

    if(ubEnable && !(CMU->STATUS & CMU_STATUS_USHFRCOENS))
    {
        CMU->OSCENCMD = CMU_OSCENCMD_USHFRCOEN;

        while(!(CMU->STATUS & CMU_STATUS_USHFRCORDY));
    }

    USHFRCO_VALUE = ulTargetFrequency;
}

void cmu_auxhfrco_calib(uint8_t ubEnable, uint32_t ulCalibration, uint32_t ulTargetFrequency)
{
    if(!ubEnable)
    {
        CMU->OSCENCMD = CMU_OSCENCMD_AUXHFRCODIS;
        while(CMU->STATUS & CMU_STATUS_AUXHFRCOENS);

        return;
    }

    while(CMU->SYNCBUSY & CMU_SYNCBUSY_AUXHFRCOBSY);

    CMU->AUXHFRCOCTRL = ulCalibration;

    while(CMU->SYNCBUSY & CMU_SYNCBUSY_AUXHFRCOBSY);

    if(ubEnable && !(CMU->STATUS & CMU_STATUS_AUXHFRCOENS))
    {
        CMU->OSCENCMD = CMU_OSCENCMD_AUXHFRCOEN;

        while(!(CMU->STATUS & CMU_STATUS_AUXHFRCORDY));
    }

    AUXHFRCO_VALUE = ulTargetFrequency;
}

void cmu_hfxo_startup_calib(uint16_t usIBTrim, uint16_t usCTune)
{
    if(CMU->STATUS & CMU_STATUS_HFXOENS)
        return;

    CMU->HFXOSTARTUPCTRL = (CMU->HFXOSTARTUPCTRL & ~(_CMU_HFXOSTARTUPCTRL_CTUNE_MASK | _CMU_HFXOSTARTUPCTRL_IBTRIMXOCORE_MASK)) | (((uint32_t)usCTune << _CMU_HFXOSTARTUPCTRL_CTUNE_SHIFT) & _CMU_HFXOSTARTUPCTRL_CTUNE_MASK) | (((uint32_t)usIBTrim << _CMU_HFXOSTARTUPCTRL_IBTRIMXOCORE_SHIFT) & _CMU_HFXOSTARTUPCTRL_IBTRIMXOCORE_MASK);
}
float cmu_hfxo_get_startup_current()
{
    return HFXO_IBTRIM_TO_UA((CMU->HFXOSTARTUPCTRL & _CMU_HFXOSTARTUPCTRL_IBTRIMXOCORE_MASK) >> _CMU_HFXOSTARTUPCTRL_IBTRIMXOCORE_SHIFT);
}
float cmu_hfxo_get_startup_cap()
{
    return HFXO_CTUNE_TO_PF((CMU->HFXOSTARTUPCTRL & _CMU_HFXOSTARTUPCTRL_CTUNE_MASK) >> _CMU_HFXOSTARTUPCTRL_CTUNE_SHIFT);
}
void cmu_hfxo_steady_calib(uint16_t usIBTrim, uint16_t usCTune)
{
    if(CMU->STATUS & CMU_STATUS_HFXOENS)
        return;

    CMU->HFXOSTEADYSTATECTRL = (CMU->HFXOSTEADYSTATECTRL & ~(_CMU_HFXOSTEADYSTATECTRL_CTUNE_MASK | _CMU_HFXOSTEADYSTATECTRL_IBTRIMXOCORE_MASK)) | (((uint32_t)usCTune << _CMU_HFXOSTEADYSTATECTRL_CTUNE_SHIFT) & _CMU_HFXOSTEADYSTATECTRL_CTUNE_MASK) | (((uint32_t)usIBTrim << _CMU_HFXOSTEADYSTATECTRL_IBTRIMXOCORE_SHIFT) & _CMU_HFXOSTEADYSTATECTRL_IBTRIMXOCORE_MASK);
}
float cmu_hfxo_get_steady_current()
{
    return HFXO_IBTRIM_TO_UA((CMU->HFXOSTEADYSTATECTRL & _CMU_HFXOSTEADYSTATECTRL_IBTRIMXOCORE_MASK) >> _CMU_HFXOSTEADYSTATECTRL_IBTRIMXOCORE_SHIFT);
}
float cmu_hfxo_get_steady_cap()
{
    return HFXO_CTUNE_TO_PF((CMU->HFXOSTEADYSTATECTRL & _CMU_HFXOSTEADYSTATECTRL_CTUNE_MASK) >> _CMU_HFXOSTEADYSTATECTRL_CTUNE_SHIFT);
}
uint16_t cmu_hfxo_get_pda_ibtrim(uint8_t ubTrigger)
{
    if(!(CMU->STATUS & CMU_STATUS_HFXOENS))
        return 0;

    if(ubTrigger)
    {
        CMU->CMD = CMU_CMD_HFXOPEAKDETSTART;
        while(!(CMU->STATUS & CMU_STATUS_HFXOPEAKDETRDY));
    }

    return (CMU->HFXOTRIMSTATUS & _CMU_HFXOTRIMSTATUS_IBTRIMXOCORE_MASK) >> _CMU_HFXOTRIMSTATUS_IBTRIMXOCORE_SHIFT;
}
float cmu_hfxo_get_pda_current(uint8_t ubTrigger)
{
    if(!(CMU->STATUS & CMU_STATUS_HFXOENS))
        return 0;
    
    return HFXO_IBTRIM_TO_UA(cmu_hfxo_get_pda_ibtrim(ubTrigger));
}
uint16_t cmu_hfxo_get_pma_ibtrim()
{
    if(!(CMU->STATUS & CMU_STATUS_HFXOENS))
        return 0;

    return (CMU->HFXOTRIMSTATUS & _CMU_HFXOTRIMSTATUS_IBTRIMXOCOREMON_MASK) >> _CMU_HFXOTRIMSTATUS_IBTRIMXOCOREMON_SHIFT;
}
float cmu_hfxo_get_pma_current()
{
    if(!(CMU->STATUS & CMU_STATUS_HFXOENS))
        return 0;
    
    return HFXO_IBTRIM_TO_UA(cmu_hfxo_get_pma_ibtrim());
}

void cmu_lfxo_calib(uint8_t ubCTune)
{
    if(CMU->STATUS & CMU_STATUS_LFXOENS)
        return;

    float fCLoad = LFXO_CTUNE_TO_PF(ubCTune) / 2.f;
    uint8_t ubGain = 0;

    if(fCLoad <= 6.f)
        ubGain = 0;
    else if(fCLoad <= 8.f)
        ubGain = 1;
    else if(fCLoad <= 12.5f)
        ubGain = 2;
    else if(fCLoad <= 18.f)
        ubGain = 3;
    else
        return;

    CMU->LFXOCTRL = (CMU->LFXOCTRL & ~(_CMU_LFXOCTRL_GAIN_MASK | _CMU_LFXOCTRL_TUNING_MASK)) | ((uint32_t)ubGain << _CMU_LFXOCTRL_GAIN_SHIFT) | (((uint32_t)ubCTune << _CMU_LFXOCTRL_TUNING_SHIFT) & _CMU_LFXOCTRL_TUNING_MASK);
}
float cmu_lfxo_get_cap()
{
    return LFXO_CTUNE_TO_PF((CMU->LFXOCTRL & _CMU_LFXOCTRL_TUNING_MASK) >> _CMU_LFXOCTRL_TUNING_SHIFT);
}