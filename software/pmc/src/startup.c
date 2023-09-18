#include <sam.h>

extern void _estack(); // Not really a function, just to be compatible with array later

extern uint32_t _svect; // ISR Vectors
extern uint32_t _evect;

extern uint32_t _stext; // Main program
extern uint32_t _etext;

extern uint32_t _siiram0; // RAM code source
extern uint32_t _siram0; // RAM code destination
extern uint32_t _eiram0;

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
    volatile uint32_t *src, *dst;

    src = &_siiram0;
    dst = &_siram0;

    while (dst < &_eiram0) // Copy RAM code
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
    SCB->AIRCR = 0x05FA0000 | (5 << 8); // Interrupt priority - 2 bits Group, 0 bits Sub-group

    init();
    main();

    __disable_irq();
    while(1);
}

void _nmi_isr()                           __attribute__ ((weak,  alias (DEFAULT_ISR)));
void _hardfault_isr()                     __attribute__ ((weak,  alias (DEFAULT_ISR)));
void _svc_isr()                           __attribute__ ((weak,  alias (DEFAULT_ISR)));
void _pendsv_isr()                        __attribute__ ((weak,  alias (DEFAULT_ISR)));
void _systick_isr()                       __attribute__ ((weak,  alias (DEFAULT_ISR)));
void _pm_isr()                            __attribute__ ((weak,  alias (DEFAULT_ISR)));
void _sysctrl_isr()                       __attribute__ ((weak,  alias (DEFAULT_ISR)));
void _wdt_isr()                           __attribute__ ((weak,  alias (DEFAULT_ISR)));
void _rtc_isr()                           __attribute__ ((weak,  alias (DEFAULT_ISR)));
void _eic_isr()                           __attribute__ ((weak,  alias (DEFAULT_ISR)));
void _nvmctrl_isr()                       __attribute__ ((weak,  alias (DEFAULT_ISR)));
void _evsys_isr()                         __attribute__ ((weak,  alias (DEFAULT_ISR)));
void _sercom0_isr()                       __attribute__ ((weak,  alias (DEFAULT_ISR)));
void _sercom1_isr()                       __attribute__ ((weak,  alias (DEFAULT_ISR)));
void _sercom2_isr()                       __attribute__ ((weak,  alias (DEFAULT_ISR)));
void _sercom3_isr()                       __attribute__ ((weak,  alias (DEFAULT_ISR)));
void _tc0_isr()                           __attribute__ ((weak,  alias (DEFAULT_ISR)));
void _tc1_isr()                           __attribute__ ((weak,  alias (DEFAULT_ISR)));
void _tc2_isr()                           __attribute__ ((weak,  alias (DEFAULT_ISR)));
void _tc3_isr()                           __attribute__ ((weak,  alias (DEFAULT_ISR)));
void _tc4_isr()                           __attribute__ ((weak,  alias (DEFAULT_ISR)));
void _tc5_isr()                           __attribute__ ((weak,  alias (DEFAULT_ISR)));
void _adc_isr()                           __attribute__ ((weak,  alias (DEFAULT_ISR)));
void _ac_isr()                            __attribute__ ((weak,  alias (DEFAULT_ISR)));
void _dac_isr()                           __attribute__ ((weak,  alias (DEFAULT_ISR)));
void _ptc_isr()                           __attribute__ ((weak,  alias (DEFAULT_ISR)));

__attribute__ ((section(".isr_vector"))) void (* const g_pfnVectors[])() = {
    _estack,
    _reset_isr,
    _nmi_isr,
    _hardfault_isr,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    _svc_isr,
    0,
    0,
    _pendsv_isr,
    _systick_isr,
    _pm_isr,
    _sysctrl_isr,
    _wdt_isr,
    _rtc_isr,
    _eic_isr,
    _nvmctrl_isr,
    _evsys_isr,
    _sercom0_isr,
    _sercom1_isr,
    _sercom2_isr,
    _sercom3_isr,
    0,
    0,
    _tc0_isr,
    _tc1_isr,
    _tc2_isr,
    _tc3_isr,
    _tc4_isr,
    _tc5_isr,
    0,
    0,
    _adc_isr,
    _ac_isr,
    _dac_isr,
    _ptc_isr
};
