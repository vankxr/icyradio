#include "afec.h"

volatile float g_fInternalTemperature;

void _afec0_isr()
{
    uint32_t ulFlags = AFEC0->AFEC_ISR & AFEC0->AFEC_IMR;

    if(ulFlags & BIT(AFEC_TEMP_SENSOR_CHANNEL))
    {
        AFEC0->AFEC_CSELR = AFEC_TEMP_SENSOR_CHANNEL;

        g_fInternalTemperature = (((float)AFEC0->AFEC_CDR * AFEC_REF_VOLTAGE / 65535.f) - AFEC_TEMP_SENSOR_INTERCEPT_VOLTAGE) / AFEC_TEMP_SENSOR_SLOPE + AFEC_TEMP_SENSOR_INTERCEPT_TEMP;
    }
}

void afec_init()
{
    pmc_peripheral_clock_gate(AFEC0_CLOCK_ID, 1); // Enable peripheral clock

    AFEC0->AFEC_CR = AFEC_CR_SWRST; // Reset peripheral

    AFEC0->AFEC_MR = AFEC_MR_USEQ_NUM_ORDER | (1 << AFEC_MR_TRANSFER_Pos) | (2 << AFEC_MR_TRACKTIM_Pos) | AFEC_MR_ONE | AFEC_MR_STARTUP_SUT64 | AFEC_MR_FREERUN_OFF | AFEC_MR_FWUP_ON | AFEC_MR_SLEEP_NORMAL | AFEC_MR_TRGSEL_AFEC_TRIG1 | AFEC_MR_TRGEN_DIS;
    AFEC0->AFEC_MR |= (((MCK_CLOCK_FREQ / 20000000) - 1) << AFEC_MR_PRESCAL_Pos) & AFEC_MR_PRESCAL_Msk; // 4MHz < AFE Clock < 40 MHz
    AFEC0->AFEC_EMR = AFEC_EMR_SIGNMODE_ALL_UNSIGNED | AFEC_EMR_STM | AFEC_EMR_TAG | AFEC_EMR_RES_OSR256;
    AFEC0->AFEC_ACR = (1 << AFEC_ACR_IBCTL_Pos) | AFEC_ACR_PGA1EN | AFEC_ACR_PGA0EN;

    // Channel configuration
    AFEC0->AFEC_SEQ1R = 0;
    AFEC0->AFEC_SEQ2R = 0;
    AFEC0->AFEC_CGR = 0;
    AFEC0->AFEC_DIFFR = 0;
    AFEC0->AFEC_SHMR = 0;
    AFEC0->AFEC_CECR = 0;

    // Digital offset and gain correction
    AFEC0->AFEC_COSR = 0;
    AFEC0->AFEC_CVR = 0;
    AFEC0->AFEC_COSR = 1;
    AFEC0->AFEC_CVR = 0;

    // Configure Temperature sensor
    AFEC0->AFEC_CSELR = AFEC_TEMP_SENSOR_CHANNEL;
    AFEC0->AFEC_COCR = 512 + AFEC_TEMP_SENSOR_OFFSET / AFEC_REF_VOLTAGE;
    AFEC0->AFEC_CHER = BIT(AFEC_TEMP_SENSOR_CHANNEL);

    // Interrupts
    REG_DISCARD(&AFEC0->AFEC_ISR); // Clear pending IRQs
    IRQ_CLEAR(AFEC0_IRQn); // Clear pending vector
    IRQ_SET_PRIO(AFEC0_IRQn, 5, 0); // Set priority 5.0
    IRQ_ENABLE(AFEC0_IRQn); // Enable vector
    AFEC0->AFEC_IER = BIT(AFEC_TEMP_SENSOR_CHANNEL);

    // Enable conversion triggers
    AFEC0->AFEC_MR |= AFEC_MR_TRGEN_EN;
}
void afec_trigger_timer_init(uint32_t ulPeriod)
{
    if(!ulPeriod)
        return;

    pmc_pck_clock_config(PMC_PCK_TC, 1, PMC_PCK_CSS_SLOW_CLK, 10); // Enable debug clock = SLCK / 10

    pmc_peripheral_clock_gate(TC0_CLOCK_ID_CHANNEL0, 1); // Enable peripheral clock

    TC0->TcChannel[0].TC_CCR = TC_CCR_CLKDIS;

    TC0->TcChannel[0].TC_CMR = TC_CMR_WAVEFORM_ACPC_CLEAR | TC_CMR_WAVEFORM_ACPA_SET | TC_CMR_WAVE | TC_CMR_WAVEFORM_WAVSEL_UP_RC | TC_CMR_TCCLKS_TIMER_CLOCK1;
    TC0->TcChannel[0].TC_RA = (pmc_pck_clock_get_freq(PMC_PCK_TC) * ulPeriod) - 2;
    TC0->TcChannel[0].TC_RC = (pmc_pck_clock_get_freq(PMC_PCK_TC) * ulPeriod) - 1;

    TC0->TcChannel[0].TC_CCR = TC_CCR_SWTRG | TC_CCR_CLKEN;
}
