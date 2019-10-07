#include <sam.h>

extern void _estack(); // Not really a function, just to be compatible with array later

extern uint32_t _svect; // ISR Vectors
extern uint32_t _evect;

extern uint32_t _stext; // Main program
extern uint32_t _etext;

extern uint32_t _siiram0; // ITCM code source
extern uint32_t _siram0; // ITCM code destination
extern uint32_t _eiram0;

extern uint32_t _sidram0; // DTCM data source
extern uint32_t _sdram0; // DTCM data destination
extern uint32_t _edram0;

extern uint32_t _sidram2; // SDRAM data source
extern uint32_t _sdram2; // SDRAM data destination
extern uint32_t _edram2;

extern uint32_t _sidata; // Data source
extern uint32_t _sdata; // Data destination
extern uint32_t _edata;

extern uint32_t _sbss; // BSS destination
extern uint32_t _ebss;

extern uint32_t _end;


void _default_isr()
{
    while(1);
}

void __attribute__ ((weak)) __libc_init_array()
{

}

extern int init();
extern int main();

#define DEFAULT_ISR "_default_isr"

void _reset_isr()
{
    uint32_t *src, *dst;

    SCB->ITCMCR |= SCB_ITCMCR_EN_Msk; // Enable ITCM

    src = &_siiram0;
    dst = &_siram0;

    while (dst < &_eiram0) // Copy ITCM code
        *(dst++) = *(src++);

    SCB->DTCMCR |= SCB_DTCMCR_EN_Msk; // Enable DTCM

    src = &_sidram0;
    dst = &_sdram0;

    while (dst < &_edram0) // Copy DTCM data
        *(dst++) = *(src++);

    src = &_sidata;
    dst = &_sdata;

    while (dst < &_edata) // Copy data
        *(dst++) = *(src++);

    src = 0;
    dst = &_sbss;

    while (dst < &_ebss) // Zero BSS
        *(dst++) = 0;

    __libc_init_array();

    SCB->VTOR = (uint32_t)&_svect; // ISR Vectors offset
    SCB->
    SCB->AIRCR = 0x05FA0000 | (5 << 8); // Interrupt priority - 2 bits Group, 1 bit Sub-group
    SCB->SHCSR = SCB_SHCSR_USGFAULTENA_Msk | SCB_SHCSR_BUSFAULTENA_Msk | SCB_SHCSR_MEMFAULTENA_Msk; // Enable separate fault handlers
    SCB->SCR |= SCB_SCR_SEVONPEND_Msk; // Pending disabled interrupt generates event
    SCB->CCR |= SCB_CCR_DIV_0_TRP_Msk; // Enable division by zero faults
    SCB->CPACR |= 0xF << 20; // Enable CP10 & CP11 (FPU) in priv. and non priv. mode

    init();
    main();

    __disable_irq();
    while(1);
}

void _nmi_isr()                           __attribute__ ((weak,  alias (DEFAULT_ISR)));
void _hardfault_isr()                     __attribute__ ((weak,  alias (DEFAULT_ISR)));
void _memmanage_isr()                     __attribute__ ((weak,  alias (DEFAULT_ISR)));
void _busfault_isr()                      __attribute__ ((weak,  alias (DEFAULT_ISR)));
void _usagefault_isr()                    __attribute__ ((weak,  alias (DEFAULT_ISR)));
void _svc_isr()                           __attribute__ ((weak,  alias (DEFAULT_ISR)));
void _debugmon_isr()                      __attribute__ ((weak,  alias (DEFAULT_ISR)));
void _pendsv_isr()                        __attribute__ ((weak,  alias (DEFAULT_ISR)));
void _systick_isr()                       __attribute__ ((weak,  alias (DEFAULT_ISR)));
void _emu_isr()                           __attribute__ ((weak,  alias (DEFAULT_ISR)));
void _wdog0_isr()                         __attribute__ ((weak,  alias (DEFAULT_ISR)));
void _ldma_isr()                          __attribute__ ((weak,  alias (DEFAULT_ISR)));
void _gpio_even_isr()                     __attribute__ ((weak,  alias (DEFAULT_ISR)));
void _timer0_isr()                        __attribute__ ((weak,  alias (DEFAULT_ISR)));
void _usart0_rx_isr()                     __attribute__ ((weak,  alias (DEFAULT_ISR)));
void _usart0_tx_isr()                     __attribute__ ((weak,  alias (DEFAULT_ISR)));
void _acmp0_1_isr()                       __attribute__ ((weak,  alias (DEFAULT_ISR)));
void _adc0_isr()                          __attribute__ ((weak,  alias (DEFAULT_ISR)));
void _idac0_isr()                         __attribute__ ((weak,  alias (DEFAULT_ISR)));
void _i2c0_isr()                          __attribute__ ((weak,  alias (DEFAULT_ISR)));
void _gpio_odd_isr()                      __attribute__ ((weak,  alias (DEFAULT_ISR)));
void _timer1_isr()                        __attribute__ ((weak,  alias (DEFAULT_ISR)));
void _usart1_rx_isr()                     __attribute__ ((weak,  alias (DEFAULT_ISR)));
void _usart1_tx_isr()                     __attribute__ ((weak,  alias (DEFAULT_ISR)));
void _leuart0_isr()                       __attribute__ ((weak,  alias (DEFAULT_ISR)));
void _pcnt0_isr()                         __attribute__ ((weak,  alias (DEFAULT_ISR)));
void _cmu_isr()                           __attribute__ ((weak,  alias (DEFAULT_ISR)));
void _msc_isr()                           __attribute__ ((weak,  alias (DEFAULT_ISR)));
void _crypto_isr()                       __attribute__ ((weak,  alias (DEFAULT_ISR)));
void _letimer0_isr()                      __attribute__ ((weak,  alias (DEFAULT_ISR)));
void _rtcc_isr()                          __attribute__ ((weak,  alias (DEFAULT_ISR)));
void _cryotimer_isr()                     __attribute__ ((weak,  alias (DEFAULT_ISR)));
void _fpueh_isr()                         __attribute__ ((weak,  alias (DEFAULT_ISR)));

__attribute__ ((section(".isr_vector"))) void (* const g_pfnVectors[])() = {
    _estack,
    _reset_isr,
    _nmi_isr,
    _hardfault_isr,
    _memmanage_isr,
    _busfault_isr,
    _usagefault_isr,
    0,
    0,
    0,
    0,
    _svc_isr,
    _debugmon_isr,
    0,
    _pendsv_isr,
    _systick_isr,
    _emu_isr,
    0,
    _wdog0_isr,
    0,
    0,
    0,
    0,
    0,
    _ldma_isr,
    _gpio_even_isr,
    _timer0_isr,
    _usart0_rx_isr,
    _usart0_tx_isr,
    _acmp0_1_isr,
    _adc0_isr,
    _idac0_isr,
    _i2c0_isr,
    _gpio_odd_isr,
    _timer1_isr,
    _usart1_rx_isr,
    _usart1_tx_isr,
    _leuart0_isr,
    _pcnt0_isr,
    _cmu_isr,
    _msc_isr,
    _crypto_isr,
    _letimer0_isr,
    0,
    0,
    _rtcc_isr,
    0,
    _cryotimer_isr,
    0,
    _fpueh_isr
};
