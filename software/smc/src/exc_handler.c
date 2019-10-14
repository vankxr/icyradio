#include <em_device.h>
#include "debug_macros.h"

void trace_stack(uint32_t *pulFaultStackAddress);

void __attribute__ ((naked)) _hardfault_isr()
{
    __asm__ volatile
    (
        " tst lr, #4                                                \n"
        " ite eq                                                    \n"
        " mrseq r0, msp                                             \n"
        " mrsne r0, psp                                             \n"
        " ldr r1, [r0, #24]                                         \n"
        " ldr r2, hardfault_trace_stack_addr                        \n"
        " bx r2                                                     \n"
        " hardfault_trace_stack_addr: .word hardfault_trace_stack   \n"
    );
}

void __attribute__ ((naked)) _memmanage_isr()
{
    __asm__ volatile
    (
        " tst lr, #4                                                \n"
        " ite eq                                                    \n"
        " mrseq r0, msp                                             \n"
        " mrsne r0, psp                                             \n"
        " ldr r1, [r0, #24]                                         \n"
        " ldr r2, memmanage_trace_stack_addr                        \n"
        " bx r2                                                     \n"
        " memmanage_trace_stack_addr: .word memmanage_trace_stack   \n"
    );
}

void __attribute__ ((naked)) _busfault_isr()
{
    __asm__ volatile
    (
        " tst lr, #4                                                \n"
        " ite eq                                                    \n"
        " mrseq r0, msp                                             \n"
        " mrsne r0, psp                                             \n"
        " ldr r1, [r0, #24]                                         \n"
        " ldr r2, busfault_trace_stack_addr                         \n"
        " bx r2                                                     \n"
        " busfault_trace_stack_addr: .word busfault_trace_stack     \n"
    );
}

void __attribute__ ((naked)) _usagefault_isr()
{
    __asm__ volatile
    (
        " tst lr, #4                                                \n"
        " ite eq                                                    \n"
        " mrseq r0, msp                                             \n"
        " mrsne r0, psp                                             \n"
        " ldr r1, [r0, #24]                                         \n"
        " ldr r2, usagefault_trace_stack_addr                       \n"
        " bx r2                                                     \n"
        " usagefault_trace_stack_addr: .word usagefault_trace_stack \n"
    );
}

void hardfault_trace_stack(uint32_t *pulFaultStackAddress)
{
    volatile uint32_t r0 = pulFaultStackAddress[0];
    volatile uint32_t r1 = pulFaultStackAddress[1];
    volatile uint32_t r2 = pulFaultStackAddress[2];
    volatile uint32_t r3 = pulFaultStackAddress[3];
    volatile uint32_t r12 = pulFaultStackAddress[4];
    volatile uint32_t lr = pulFaultStackAddress[5];
    volatile uint32_t pc = pulFaultStackAddress[6];
    volatile uint32_t psr = pulFaultStackAddress[7];

    DBGPRINTLN_CTX("Hard fault! Stack trace:");
    DBGPRINTLN_CTX("R0 [0x%08X]", r0);
    DBGPRINTLN_CTX("R1 [0x%08X]", r1);
    DBGPRINTLN_CTX("R2 [0x%08X]", r2);
    DBGPRINTLN_CTX("R3 [0x%08X]", r3);
    DBGPRINTLN_CTX("R12 [0x%08X]", r12);
    DBGPRINTLN_CTX("LR [R14] [0x%08X] call return", lr);
    DBGPRINTLN_CTX("PC [R15] [0x%08X] program counter", pc);
    DBGPRINTLN_CTX("PSR [0x%08X] program status register", psr);
    DBGPRINTLN_CTX("------------------------------");
    DBGPRINTLN_CTX("HFSR [0x%08X]", SCB->HFSR);
    DBGPRINTLN_CTX("ICSR [0x%08X]", SCB->ICSR);
    DBGPRINTLN_CTX("MSP [0x%08X]", __get_MSP());

    while(1);
}

void memmanage_trace_stack(uint32_t *pulFaultStackAddress)
{
    volatile uint32_t r0 = pulFaultStackAddress[0];
    volatile uint32_t r1 = pulFaultStackAddress[1];
    volatile uint32_t r2 = pulFaultStackAddress[2];
    volatile uint32_t r3 = pulFaultStackAddress[3];
    volatile uint32_t r12 = pulFaultStackAddress[4];
    volatile uint32_t lr = pulFaultStackAddress[5];
    volatile uint32_t pc = pulFaultStackAddress[6];
    volatile uint32_t psr = pulFaultStackAddress[7];

    DBGPRINTLN_CTX("Memory management fault! Stack trace:");
    DBGPRINTLN_CTX("R0 [0x%08X]", r0);
    DBGPRINTLN_CTX("R1 [0x%08X]", r1);
    DBGPRINTLN_CTX("R2 [0x%08X]", r2);
    DBGPRINTLN_CTX("R3 [0x%08X]", r3);
    DBGPRINTLN_CTX("R12 [0x%08X]", r12);
    DBGPRINTLN_CTX("LR [R14] [0x%08X] call return", lr);
    DBGPRINTLN_CTX("PC [R15] [0x%08X] program counter", pc);
    DBGPRINTLN_CTX("PSR [0x%08X] program status register", psr);
    DBGPRINTLN_CTX("------------------------------");
    DBGPRINTLN_CTX("MMFSR [0x%02X]", (SCB->CFSR >> 0) & 0xFF);
    DBGPRINTLN_CTX("MMFAR [0x%08X]", SCB->MMFAR);
    DBGPRINTLN_CTX("ICSR [0x%08X]", SCB->ICSR);
    DBGPRINTLN_CTX("MSP [0x%08X]", __get_MSP());

    while(1);
}

void busfault_trace_stack(uint32_t *pulFaultStackAddress)
{
    volatile uint32_t r0 = pulFaultStackAddress[0];
    volatile uint32_t r1 = pulFaultStackAddress[1];
    volatile uint32_t r2 = pulFaultStackAddress[2];
    volatile uint32_t r3 = pulFaultStackAddress[3];
    volatile uint32_t r12 = pulFaultStackAddress[4];
    volatile uint32_t lr = pulFaultStackAddress[5];
    volatile uint32_t pc = pulFaultStackAddress[6];
    volatile uint32_t psr = pulFaultStackAddress[7];

    DBGPRINTLN_CTX("Bus fault! Stack trace:");
    DBGPRINTLN_CTX("R0 [0x%08X]", r0);
    DBGPRINTLN_CTX("R1 [0x%08X]", r1);
    DBGPRINTLN_CTX("R2 [0x%08X]", r2);
    DBGPRINTLN_CTX("R3 [0x%08X]", r3);
    DBGPRINTLN_CTX("R12 [0x%08X]", r12);
    DBGPRINTLN_CTX("LR [R14] [0x%08X] call return", lr);
    DBGPRINTLN_CTX("PC [R15] [0x%08X] program counter", pc);
    DBGPRINTLN_CTX("PSR [0x%08X] program status register", psr);
    DBGPRINTLN_CTX("------------------------------");
    DBGPRINTLN_CTX("BFSR [0x%02X]", (SCB->CFSR >> 8) & 0xFF);
    DBGPRINTLN_CTX("BFAR [0x%08X]", SCB->BFAR);
    DBGPRINTLN_CTX("ICSR [0x%08X]", SCB->ICSR);
    DBGPRINTLN_CTX("MSP [0x%08X]", __get_MSP());

    MSC->CACHECMD = MSC_CACHECMD_INVCACHE;

    while(1);
}

void usagefault_trace_stack(uint32_t *pulFaultStackAddress)
{
    volatile uint32_t r0 = pulFaultStackAddress[0];
    volatile uint32_t r1 = pulFaultStackAddress[1];
    volatile uint32_t r2 = pulFaultStackAddress[2];
    volatile uint32_t r3 = pulFaultStackAddress[3];
    volatile uint32_t r12 = pulFaultStackAddress[4];
    volatile uint32_t lr = pulFaultStackAddress[5];
    volatile uint32_t pc = pulFaultStackAddress[6];
    volatile uint32_t psr = pulFaultStackAddress[7];

    DBGPRINTLN_CTX("Usage fault! Stack trace:");
    DBGPRINTLN_CTX("R0 [0x%08X]", r0);
    DBGPRINTLN_CTX("R1 [0x%08X]", r1);
    DBGPRINTLN_CTX("R2 [0x%08X]", r2);
    DBGPRINTLN_CTX("R3 [0x%08X]", r3);
    DBGPRINTLN_CTX("R12 [0x%08X]", r12);
    DBGPRINTLN_CTX("LR [R14] [0x%08X] call return", lr);
    DBGPRINTLN_CTX("PC [R15] [0x%08X] program counter", pc);
    DBGPRINTLN_CTX("PSR [0x%08X] program status register", psr);
    DBGPRINTLN_CTX("------------------------------");
    DBGPRINTLN_CTX("UFSR [0x%04X]", (SCB->CFSR >> 15) & 0xFFFF);
    DBGPRINTLN_CTX("ICSR [0x%08X]", SCB->ICSR);
    DBGPRINTLN_CTX("MSP [0x%08X]", __get_MSP());

    while(1);
}