#include "pio.h"

void ITCM_CODE _pioa_isr()
{
    uint32_t ulFlags = PIOA->PIO_ISR & PIOA->PIO_IMR;
}
void ITCM_CODE _piob_isr()
{
    uint32_t ulFlags = PIOB->PIO_ISR & PIOB->PIO_IMR;
}
void ITCM_CODE _pioc_isr()
{
    extern void fpga_isr();

    uint32_t ulFlags = PIOC->PIO_ISR & PIOC->PIO_IMR;

    if(ulFlags & BIT(30))
        fpga_isr();
}
void ITCM_CODE _piod_isr()
{
    uint32_t ulFlags = PIOD->PIO_ISR & PIOD->PIO_IMR;
}
void ITCM_CODE _pioe_isr()
{
    uint32_t ulFlags = PIOE->PIO_ISR & PIOE->PIO_IMR;
}

void pio_init()
{
    // NC - Not Connected (not available in mcu package)
    // NR - Not routed (no routing to pin on pcb, floating)
    // NU - Not used (not currently in use)

    // Port A
    pmc_peripheral_clock_gate(PIOA_CLOCK_ID, 1); // Enable peripheral clock
    //// OUTPUT ////
    ////// Multi-drive (open-drain) enable (ER) or disable (DR)
    PIOA->PIO_MDDR = 0xFFFFFFFF;
    PIOA->PIO_MDER = 0;
    ////// Output set enable (ER) or disable (DR)
    PIOA->PIO_OWDR = 0xFFFFFFFF;
    PIOA->PIO_OWER = BIT(0) | BIT(4) | BIT(30);
    ////// Output set (S) or clear (C)
    PIOA->PIO_SODR = BIT(4);
    PIOA->PIO_CODR = BIT(0) | BIT(30);
    ////// Output enable (ER) or disable (DR)
    PIOA->PIO_ODR = 0xFFFFFFFF;
    PIOA->PIO_OER = BIT(0) | BIT(4) | BIT(30);
    ////// High drive enable
    PIOA->PIO_DRIVER = BIT(0) | BIT(4) | BIT(30);
    //// INPUT ////
    ////// Input filter enable (ER) or disable (DR)
    PIOA->PIO_IFDR = 0xFFFFFFFF;
    PIOA->PIO_IFER = 0;
    ////// Slow filter enable (ER) or disable (DR)
    PIOA->PIO_IFSCDR = 0xFFFFFFFF;
    PIOA->PIO_IFSCER = 0;
    PIOA->PIO_SCDR = 0;
    ////// Schmitt trigger enable
    PIOA->PIO_SCHMITT = 0xFFFFFFFF;
    //// PULL ////
    ////// Pull-up enable (ER) or disable (DR)
    PIOA->PIO_PUDR = 0xFFFFFFFF;
    PIOA->PIO_PUER = 0;
    ////// Pull-down enable (ER) or disable (DR)
    PIOA->PIO_PPDDR = 0xFFFFFFFF;
    PIOA->PIO_PPDER = BIT(1) | BIT(15) | BIT(16) | BIT(20);
    //// PERIPHERALS ////
    ////// Peripheral mux select
    PIO_PERI_MUX_SELECT(PIOA,  0, 3); // I2SC0_MCK
    PIO_PERI_MUX_SELECT(PIOA,  1, 3); // I2SC0_CK
    PIO_PERI_MUX_SELECT(PIOA, 15, 3); // I2SC0_WS
    PIO_PERI_MUX_SELECT(PIOA, 16, 3); // I2SC0_DI
    PIO_PERI_MUX_SELECT(PIOA, 20, 3); // I2SC1_CK
    PIO_PERI_MUX_SELECT(PIOA, 30, 3); // I2SC0_DO
    ////// GPIO (ER) or Peripheral control (DR)
    PIOA->PIO_PER = 0xFFFFFFFF;
    PIOA->PIO_PDR = BIT(0) | BIT(1) | BIT(15) | BIT(16) | BIT(20) | BIT(30);
    //// INTERRUPTS ////
    ////// Advanced interrupt enable (ER) or disable (DR)
    PIOA->PIO_AIMDR = 0xFFFFFFFF;
    PIOA->PIO_AIMER = 0;
    ////// Advanced interrupt edge (E) or level (L) triggered
    PIOA->PIO_ESR = 0;
    PIOA->PIO_LSR = 0;
    ////// Advanced interrupt falling-edge/low-level (FELL) or rising-edge/high-level (REHL)
    PIOA->PIO_FELLSR = 0;
    PIOA->PIO_REHLSR = 0;
    ////// NVIC configuration
    REG_DISCARD(&PIOA->PIO_ISR); // Clear pending IRQs
    IRQ_CLEAR(PIOA_IRQn); // Clear pending vector
    IRQ_SET_PRIO(PIOA_IRQn, 0, 0); // Set priority 0,0 (max)
    IRQ_ENABLE(PIOA_IRQn); // Enable vector
    ////// Interrupt enable (ER) or disable (DR)
    PIOA->PIO_IDR = 0xFFFFFFFF;
    PIOA->PIO_IER = 0;

    // Port B
    pmc_peripheral_clock_gate(PIOB_CLOCK_ID, 1); // Enable peripheral clock
    //// OUTPUT ////
    ////// Multi-drive (open-drain) enable (ER) or disable (DR)
    PIOB->PIO_MDDR = 0xFFFFFFFF;
    PIOB->PIO_MDER = 0;
    ////// Output set enable (ER) or disable (DR)
    PIOB->PIO_OWDR = 0xFFFFFFFF;
    PIOB->PIO_OWER = BIT(4);
    ////// Output set (S) or clear (C)
    PIOB->PIO_SODR = 0;
    PIOB->PIO_CODR = BIT(4);
    ////// Output enable (ER) or disable (DR)
    PIOB->PIO_ODR = 0xFFFFFFFF;
    PIOB->PIO_OER = BIT(4);
    ////// High drive enable
    PIOB->PIO_DRIVER = BIT(4);
    //// INPUT ////
    ////// Input filter enable (ER) or disable (DR)
    PIOB->PIO_IFDR = 0xFFFFFFFF;
    PIOB->PIO_IFER = 0;
    ////// Slow filter enable (ER) or disable (DR)
    PIOB->PIO_IFSCDR = 0xFFFFFFFF;
    PIOB->PIO_IFSCER = 0;
    PIOB->PIO_SCDR = 0;
    ////// Schmitt trigger enable
    PIOB->PIO_SCHMITT = 0xFFFFFFFF;
    //// PULL ////
    ////// Pull-up enable (ER) or disable (DR)
    PIOB->PIO_PUDR = 0xFFFFFFFF;
    PIOB->PIO_PUER = BIT(2);
    ////// Pull-down enable (ER) or disable (DR)
    PIOB->PIO_PPDDR = 0xFFFFFFFF;
    PIOB->PIO_PPDER = 0;
    //// PERIPHERALS ////
    ////// Peripheral mux select
    PIO_PERI_MUX_SELECT(PIOB,  2, 3); // SPI0_NPCS0
    ////// GPIO (ER) or Peripheral control (DR)
    PIOB->PIO_PER = 0xFFFFFFFF;
    PIOB->PIO_PDR = BIT(2);
    //// INTERRUPTS ////
    ////// Advanced interrupt enable (ER) or disable (DR)
    PIOB->PIO_AIMDR = 0xFFFFFFFF;
    PIOB->PIO_AIMER = 0;
    ////// Advanced interrupt edge (E) or level (L) triggered
    PIOB->PIO_ESR = 0;
    PIOB->PIO_LSR = 0;
    ////// Advanced interrupt falling-edge/low-level (FELL) or rising-edge/high-level (REHL)
    PIOB->PIO_FELLSR = 0;
    PIOB->PIO_REHLSR = 0;
    ////// NVIC configuration
    REG_DISCARD(&PIOB->PIO_ISR); // Clear pending IRQs
    IRQ_CLEAR(PIOB_IRQn); // Clear pending vector
    IRQ_SET_PRIO(PIOB_IRQn, 0, 0); // Set priority 0,0 (max)
    IRQ_ENABLE(PIOB_IRQn); // Enable vector
    ////// Interrupt enable (ER) or disable (DR)
    PIOB->PIO_IDR = 0xFFFFFFFF;
    PIOB->PIO_IER = 0;

    // Port C
    pmc_peripheral_clock_gate(PIOC_CLOCK_ID, 1); // Enable peripheral clock
    //// OUTPUT ////
    ////// Multi-drive (open-drain) enable (ER) or disable (DR)
    PIOC->PIO_MDDR = 0xFFFFFFFF;
    PIOC->PIO_MDER = 0;
    ////// Output set enable (ER) or disable (DR)
    PIOC->PIO_OWDR = 0xFFFFFFFF;
    PIOC->PIO_OWER = 0;
    ////// Output set (S) or clear (C)
    PIOC->PIO_SODR = 0;
    PIOC->PIO_CODR = 0;
    ////// Output enable (ER) or disable (DR)
    PIOC->PIO_ODR = 0xFFFFFFFF;
    PIOC->PIO_OER = 0;
    ////// High drive enable
    PIOC->PIO_DRIVER = 0;
    //// INPUT ////
    ////// Input filter enable (ER) or disable (DR)
    PIOC->PIO_IFDR = 0xFFFFFFFF;
    PIOC->PIO_IFER = BIT(30);
    ////// Slow filter enable (ER) or disable (DR)
    PIOC->PIO_IFSCDR = 0xFFFFFFFF;
    PIOC->PIO_IFSCER = 0;
    PIOC->PIO_SCDR = 0;
    ////// Schmitt trigger enable
    PIOC->PIO_SCHMITT = 0xFFFFFFFF;
    //// PULL ////
    ////// Pull-up enable (ER) or disable (DR)
    PIOC->PIO_PUDR = 0xFFFFFFFF;
    PIOC->PIO_PUER = BIT(30);
    ////// Pull-down enable (ER) or disable (DR)
    PIOC->PIO_PPDDR = 0xFFFFFFFF;
    PIOC->PIO_PPDER = 0;
    //// PERIPHERALS ////
    ////// Peripheral mux select
    ////// GPIO (ER) or Peripheral control (DR)
    PIOC->PIO_PER = 0xFFFFFFFF;
    PIOC->PIO_PDR = 0;
    //// INTERRUPTS ////
    ////// Advanced interrupt enable (ER) or disable (DR)
    PIOC->PIO_AIMDR = 0xFFFFFFFF;
    PIOC->PIO_AIMER = BIT(30);
    ////// Advanced interrupt edge (E) or level (L) triggered
    PIOC->PIO_ESR = BIT(30);
    PIOC->PIO_LSR = 0;
    ////// Advanced interrupt falling-edge/low-level (FELL) or rising-edge/high-level (REHL)
    PIOC->PIO_FELLSR = BIT(30);
    PIOC->PIO_REHLSR = 0;
    ////// NVIC configuration
    REG_DISCARD(&PIOC->PIO_ISR); // Clear pending IRQs
    IRQ_CLEAR(PIOC_IRQn); // Clear pending vector
    IRQ_SET_PRIO(PIOC_IRQn, 0, 0); // Set priority 0,0 (max)
    IRQ_ENABLE(PIOC_IRQn); // Enable vector
    ////// Interrupt enable (ER) or disable (DR)
    PIOC->PIO_IDR = 0xFFFFFFFF;
    PIOC->PIO_IER = BIT(30);

    // Port D
    pmc_peripheral_clock_gate(PIOD_CLOCK_ID, 1); // Enable peripheral clock
    //// OUTPUT ////
    ////// Multi-drive (open-drain) enable (ER) or disable (DR)
    PIOD->PIO_MDDR = 0xFFFFFFFF;
    PIOD->PIO_MDER = 0;
    ////// Output set enable (ER) or disable (DR)
    PIOD->PIO_OWDR = 0xFFFFFFFF;
    PIOD->PIO_OWER = BIT(20);
    ////// Output set (S) or clear (C)
    PIOD->PIO_SODR = 0;
    PIOD->PIO_CODR = BIT(20);
    ////// Output enable (ER) or disable (DR)
    PIOD->PIO_ODR = 0xFFFFFFFF;
    PIOD->PIO_OER = BIT(20);
    ////// High drive enable
    PIOD->PIO_DRIVER = BIT(20);
    //// INPUT ////
    ////// Input filter enable (ER) or disable (DR)
    PIOD->PIO_IFDR = 0xFFFFFFFF;
    PIOD->PIO_IFER = 0;
    ////// Slow filter enable (ER) or disable (DR)
    PIOD->PIO_IFSCDR = 0xFFFFFFFF;
    PIOD->PIO_IFSCER = 0;
    PIOD->PIO_SCDR = 0;
    ////// Schmitt trigger enable
    PIOD->PIO_SCHMITT = 0xFFFFFFFF;
    //// PULL ////
    ////// Pull-up enable (ER) or disable (DR)
    PIOD->PIO_PUDR = 0xFFFFFFFF;
    PIOD->PIO_PUER = 0;
    ////// Pull-down enable (ER) or disable (DR)
    PIOD->PIO_PPDDR = 0xFFFFFFFF;
    PIOD->PIO_PPDER = BIT(21) | BIT(22);
    //// PERIPHERALS ////
    ////// Peripheral mux select
    PIO_PERI_MUX_SELECT(PIOD, 20, 1); // SPI0_MISO
    PIO_PERI_MUX_SELECT(PIOD, 21, 1); // SPI0_MOSI
    PIO_PERI_MUX_SELECT(PIOD, 22, 1); // SPI0_SPCK
    ////// GPIO (ER) or Peripheral control (DR)
    PIOD->PIO_PER = 0xFFFFFFFF;
    PIOD->PIO_PDR = BIT(20) | BIT(21) | BIT(22);
    //// INTERRUPTS ////
    ////// Advanced interrupt enable (ER) or disable (DR)
    PIOD->PIO_AIMDR = 0xFFFFFFFF;
    PIOD->PIO_AIMER = 0;
    ////// Advanced interrupt edge (E) or level (L) triggered
    PIOD->PIO_ESR = 0;
    PIOD->PIO_LSR = 0;
    ////// Advanced interrupt falling-edge/low-level (FELL) or rising-edge/high-level (REHL)
    PIOD->PIO_FELLSR = 0;
    PIOD->PIO_REHLSR = 0;
    ////// NVIC configuration
    REG_DISCARD(&PIOD->PIO_ISR); // Clear pending IRQs
    IRQ_CLEAR(PIOD_IRQn); // Clear pending vector
    IRQ_SET_PRIO(PIOD_IRQn, 0, 0); // Set priority 0,0 (max)
    IRQ_ENABLE(PIOD_IRQn); // Enable vector
    ////// Interrupt enable (ER) or disable (DR)
    PIOD->PIO_IDR = 0xFFFFFFFF;
    PIOD->PIO_IER = 0;

    // Port E
    pmc_peripheral_clock_gate(PIOE_CLOCK_ID, 1); // Enable peripheral clock
    //// OUTPUT ////
    ////// Multi-drive (open-drain) enable (ER) or disable (DR)
    PIOE->PIO_MDDR = 0xFFFFFFFF;
    PIOE->PIO_MDER = 0;
    ////// Output set enable (ER) or disable (DR)
    PIOE->PIO_OWDR = 0xFFFFFFFF;
    PIOE->PIO_OWER = BIT(1);
    ////// Output set (S) or clear (C)
    PIOE->PIO_SODR = 0;
    PIOE->PIO_CODR = BIT(1);
    ////// Output enable (ER) or disable (DR)
    PIOE->PIO_ODR = 0xFFFFFFFF;
    PIOE->PIO_OER = BIT(1);
    ////// High drive enable
    PIOE->PIO_DRIVER = BIT(1);
    //// INPUT ////
    ////// Input filter enable (ER) or disable (DR)
    PIOE->PIO_IFDR = 0xFFFFFFFF;
    PIOE->PIO_IFER = 0;
    ////// Slow filter enable (ER) or disable (DR)
    PIOE->PIO_IFSCDR = 0xFFFFFFFF;
    PIOE->PIO_IFSCER = 0;
    PIOE->PIO_SCDR = 0;
    ////// Schmitt trigger enable
    PIOE->PIO_SCHMITT = 0xFFFFFFFF;
    //// PULL ////
    ////// Pull-up enable (ER) or disable (DR)
    PIOE->PIO_PUDR = 0xFFFFFFFF;
    PIOE->PIO_PUER = 0;
    ////// Pull-down enable (ER) or disable (DR)
    PIOE->PIO_PPDDR = 0xFFFFFFFF;
    PIOE->PIO_PPDER = BIT(0) | BIT(2);
    //// PERIPHERALS ////
    ////// Peripheral mux select
    PIO_PERI_MUX_SELECT(PIOE,  0, 2); // I2SC1_WS
    PIO_PERI_MUX_SELECT(PIOE,  1, 2); // I2SC1_DO
    PIO_PERI_MUX_SELECT(PIOE,  2, 2); // I2SC1_DI
    ////// GPIO (ER) or Peripheral control (DR)
    PIOE->PIO_PER = 0xFFFFFFFF;
    PIOE->PIO_PDR = BIT(0) | BIT(1) | BIT(2);
    //// INTERRUPTS ////
    ////// Advanced interrupt enable (ER) or disable (DR)
    PIOE->PIO_AIMDR = 0xFFFFFFFF;
    PIOE->PIO_AIMER = 0;
    ////// Advanced interrupt edge (E) or level (L) triggered
    PIOE->PIO_ESR = 0;
    PIOE->PIO_LSR = 0;
    ////// Advanced interrupt falling-edge/low-level (FELL) or rising-edge/high-level (REHL)
    PIOE->PIO_FELLSR = 0;
    PIOE->PIO_REHLSR = 0;
    ////// NVIC configuration
    REG_DISCARD(&PIOE->PIO_ISR); // Clear pending IRQs
    IRQ_CLEAR(PIOE_IRQn); // Clear pending vector
    IRQ_SET_PRIO(PIOE_IRQn, 0, 0); // Set priority 0,0 (max)
    IRQ_ENABLE(PIOE_IRQn); // Enable vector
    ////// Interrupt enable (ER) or disable (DR)
    PIOE->PIO_IDR = 0xFFFFFFFF;
    PIOE->PIO_IER = 0;
}