#include "systick.h"

volatile uint64_t g_ullSystemTick = 0;

void _systick_isr()
{
    g_ullSystemTick++;
}
void systick_init()
{
    SysTick->LOAD = (PM_CPU_CLOCK_FREQ / 1000) - 1;
    SysTick->VAL = 0;
    SysTick->CTRL = SysTick_CTRL_TICKINT_Msk | SysTick_CTRL_ENABLE_Msk | SysTick_CTRL_CLKSOURCE_Msk;

    SCB->SHP[11] = 7 << (8 - __NVIC_PRIO_BITS); // Set priority 3,1 (min)
}
void delay_ms(uint64_t ullTicks)
{
    NONATOMIC_BLOCK(NONATOMIC_RESTORESTATE)
    {
        uint64_t ullStartTick = g_ullSystemTick;

        while(g_ullSystemTick - ullStartTick < ullTicks);
    }
}
