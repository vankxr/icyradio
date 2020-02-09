#include "gpio.h"

static void gpio_isr(uint32_t ulFlags)
{
    extern void fpga_isr();
    extern void ft6x36_isr();
    extern void si5351_isr();

    if(ulFlags & BIT(1))
        fpga_isr();

    if(ulFlags & BIT(2))
        ft6x36_isr();

    if(ulFlags & BIT(4))
        si5351_isr();
}
void _gpio_even_isr()
{
    uint32_t ulFlags = GPIO->IF;

    gpio_isr(ulFlags & 0x55555555);

    GPIO->IFC = 0x55555555; // Clear all even flags
}
void _gpio_odd_isr()
{
    uint32_t ulFlags = GPIO->IF;

    gpio_isr(ulFlags & 0xAAAAAAAA);

    GPIO->IFC = 0xAAAAAAAA; // Clear all odd flags
}

void gpio_init()
{
    cmu_hfbus_clock_gate(CMU_HFBUSCLKEN0_GPIO, 1);

    // NC - Not Connected (not available in mcu package)
    // NR - Not routed (no routing to pin on pcb, floating)
    // NU - Not used (not currently in use)

    // Port A
    GPIO->P[0].CTRL   = GPIO_P_CTRL_DRIVESTRENGTHALT_STRONG | (5 << _GPIO_P_CTRL_SLEWRATEALT_SHIFT)
                      | GPIO_P_CTRL_DRIVESTRENGTH_STRONG | (5 << _GPIO_P_CTRL_SLEWRATE_SHIFT);
    GPIO->P[0].MODEL  = GPIO_P_MODEL_MODE0_PUSHPULL                 // DSP_SPI_MOSI - USART3 - Location 0
                      | GPIO_P_MODEL_MODE1_INPUTPULL                // DSP_SPI_MISO - USART3 - Location 0
                      | GPIO_P_MODEL_MODE2_PUSHPULL                 // DSP_SPI_SCK - USART3 - Location 0
                      | GPIO_P_MODEL_MODE3_PUSHPULL                 // DSP_SPI_CS - USART3 - Location 0
                      | GPIO_P_MODEL_MODE4_DISABLED                 // NR
                      | GPIO_P_MODEL_MODE5_PUSHPULL                 // FPGA_SRESET
                      | GPIO_P_MODEL_MODE6_DISABLED                 // NR
                      | GPIO_P_MODEL_MODE7_PUSHPULL;                // TFT_SPI_MOSI - USART2 - Location 2
    GPIO->P[0].MODEH  = GPIO_P_MODEH_MODE8_INPUTPULL                // TFT_SPI_MISO - USART2 - Location 2
                      | GPIO_P_MODEH_MODE9_PUSHPULL                 // TFT_SPI_SCK - USART2 - Location 2
                      | GPIO_P_MODEH_MODE10_PUSHPULL                // TFT_SPI_CS - USART2 - Location 2
                      | GPIO_P_MODEH_MODE11_DISABLED                // NR
                      | GPIO_P_MODEH_MODE12_PUSHPULL                // RXADC_SHDN
                      | GPIO_P_MODEH_MODE13_PUSHPULL                // RXADC_DITH
                      | GPIO_P_MODEH_MODE14_PUSHPULL                // RXADC_GAIN
                      | GPIO_P_MODEH_MODE15_PUSHPULL;               // SMC_LED - TIM3 Channel 2 - Location 0
    GPIO->P[0].DOUT   = BIT(3) | BIT(5) | BIT(10) | BIT(12);
    GPIO->P[0].OVTDIS = 0;

    // Port B
    GPIO->P[1].CTRL   = GPIO_P_CTRL_DRIVESTRENGTHALT_STRONG | (5 << _GPIO_P_CTRL_SLEWRATEALT_SHIFT)
                      | GPIO_P_CTRL_DRIVESTRENGTH_STRONG | (5 << _GPIO_P_CTRL_SLEWRATE_SHIFT);
    GPIO->P[1].MODEL  = GPIO_P_MODEL_MODE0_DISABLED                 // NR
                      | GPIO_P_MODEL_MODE1_INPUTPULLFILTER          // FPGA_CDONE
                      | GPIO_P_MODEL_MODE2_INPUTPULLFILTER          // FPGA_SMC_IRQ
                      | GPIO_P_MODEL_MODE3_DISABLED                 // NR
                      | GPIO_P_MODEL_MODE4_DISABLED                 // NR
                      | GPIO_P_MODEL_MODE5_INPUTPULLFILTER          // FPGA_CBSEL1
                      | GPIO_P_MODEL_MODE6_PUSHPULL                 // FPGA_CRESET
                      | GPIO_P_MODEL_MODE7_DISABLED;                // SMC_LFXTAL_P
    GPIO->P[1].MODEH  = GPIO_P_MODEH_MODE8_DISABLED                 // SMC_LFXTAL_N
                      | GPIO_P_MODEH_MODE9_DISABLED                 // NR
                      | GPIO_P_MODEH_MODE10_DISABLED                // DSP_RESET - TODO: Put this back to PUSHPULL
                      | GPIO_P_MODEH_MODE11_DISABLED                // RXTUNER_IF_VAGC
                      | GPIO_P_MODEH_MODE12_PUSHPULL                // I2S_BRG_CFG
                      | GPIO_P_MODEH_MODE13_PUSHPULL                // I2S_BRG_RST
                      | GPIO_P_MODEH_MODE14_DISABLED                // SMC_MAIN_CLK
                      | GPIO_P_MODEH_MODE15_DISABLED;               // NR
    GPIO->P[1].DOUT   = BIT(1) | BIT(2) | BIT(5) | BIT(12);
    GPIO->P[1].OVTDIS = BIT(11);

    // Port C
    GPIO->P[2].CTRL   = GPIO_P_CTRL_DRIVESTRENGTHALT_STRONG | (5 << _GPIO_P_CTRL_SLEWRATEALT_SHIFT)
                      | GPIO_P_CTRL_DRIVESTRENGTH_STRONG | (5 << _GPIO_P_CTRL_SLEWRATE_SHIFT);
    GPIO->P[2].MODEL  = GPIO_P_MODEL_MODE0_PUSHPULL                 // FPGA_SPI_CS - USART1 - Location 4
                      | GPIO_P_MODEL_MODE1_PUSHPULL                 // FPGA_SPI_SDI - USART1 - Location 4
                      | GPIO_P_MODEL_MODE2_INPUTPULL                // FPGA_SPI_SDO - USART1 - Location 4
                      | GPIO_P_MODEL_MODE3_PUSHPULL                 // FPGA_SPI_SCK - USART1 - Location 4
                      | GPIO_P_MODEL_MODE4_WIREDANDPULLUPFILTER     // RXTUNER_I2C_SDA - I2C1 - Location 0
                      | GPIO_P_MODEL_MODE5_WIREDANDPULLUPFILTER     // RXTUNER_I2C_SCL - I2C1 - Location 0
                      | GPIO_P_MODEL_MODE6_DISABLED                 // NR
                      | GPIO_P_MODEL_MODE7_DISABLED;                // NR
    GPIO->P[2].MODEH  = GPIO_P_MODEH_MODE8_INPUTPULLFILTER          // 3V3_PGOOD
                      | GPIO_P_MODEH_MODE9_DISABLED                 // NR
                      | GPIO_P_MODEH_MODE10_INPUTPULLFILTER         // 3V6_ANA_PGOOD
                      | GPIO_P_MODEH_MODE11_INPUTPULLFILTER         // 1V2_PGOOD
                      | GPIO_P_MODEH_MODE12_DISABLED                // NC
                      | GPIO_P_MODEH_MODE13_DISABLED                // NC
                      | GPIO_P_MODEH_MODE14_DISABLED                // NC
                      | GPIO_P_MODEH_MODE15_DISABLED;               // NC
    GPIO->P[2].DOUT   = BIT(0) | BIT(2) | BIT(8) | BIT(10) | BIT(11);
    GPIO->P[2].OVTDIS = 0;

    // Port D
    GPIO->P[3].CTRL   = GPIO_P_CTRL_DRIVESTRENGTHALT_STRONG | (5 << _GPIO_P_CTRL_SLEWRATEALT_SHIFT)
                      | GPIO_P_CTRL_DRIVESTRENGTH_STRONG | (5 << _GPIO_P_CTRL_SLEWRATE_SHIFT);
    GPIO->P[3].MODEL  = GPIO_P_MODEL_MODE0_PUSHPULL                 // CODEC_RST
                      | GPIO_P_MODEL_MODE1_PUSHPULL                 // TFT_BL_PWM - TIM0 Channel 0 - Location 2
                      | GPIO_P_MODEL_MODE2_INPUTPULLFILTER          // TFT_TOUCH_IRQ
                      | GPIO_P_MODEL_MODE3_PUSHPULL                 // TFT_TOUCH_RESET
                      | GPIO_P_MODEL_MODE4_PUSHPULL                 // TFT_DC
                      | GPIO_P_MODEL_MODE5_DISABLED                 // NR
                      | GPIO_P_MODEL_MODE6_DISABLED                 // TXMIXER_TEMP
                      | GPIO_P_MODEL_MODE7_PUSHPULL;                // TFT_RESET
    GPIO->P[3].MODEH  = GPIO_P_MODEH_MODE8_DISABLED                 // NR
                      | GPIO_P_MODEH_MODE9_PUSHPULL                 // TXPLL_SDATA - USART4 - Location 1
                      | GPIO_P_MODEH_MODE10_DISABLED                // TXPLL_MUXOUT
                      | GPIO_P_MODEH_MODE11_PUSHPULL                // TXPLL_SCLK - USART4 - Location 1
                      | GPIO_P_MODEH_MODE12_PUSHPULL                // TXPLL_LE - USART4 - Location 1
                      | GPIO_P_MODEH_MODE13_PUSHPULL                // TXDAC_SCLK - USART5 - Location 1
                      | GPIO_P_MODEH_MODE14_DISABLED                // NR
                      | GPIO_P_MODEH_MODE15_PUSHPULL;               // RXTUNER_REFCLK_SEL
    GPIO->P[3].DOUT   = BIT(2) | BIT(12);
    GPIO->P[3].OVTDIS = BIT(6) | BIT(10);

    // Port E
    GPIO->P[4].CTRL   = GPIO_P_CTRL_DRIVESTRENGTHALT_STRONG | (5 << _GPIO_P_CTRL_SLEWRATEALT_SHIFT)
                      | GPIO_P_CTRL_DRIVESTRENGTH_STRONG | (5 << _GPIO_P_CTRL_SLEWRATE_SHIFT);
    GPIO->P[4].MODEL  = GPIO_P_MODEL_MODE0_DISABLED                 // NR
                      | GPIO_P_MODEL_MODE1_DISABLED                 // NR
                      | GPIO_P_MODEL_MODE2_DISABLED                 // NR
                      | GPIO_P_MODEL_MODE3_DISABLED                 // NR
                      | GPIO_P_MODEL_MODE4_WIREDANDPULLUPFILTER     // SYS_I2C_SDA - I2C0 - Location 7
                      | GPIO_P_MODEL_MODE5_WIREDANDPULLUPFILTER     // SYS_I2C_SCL - I2C0 - Location 7
                      | GPIO_P_MODEL_MODE6_INPUTPULLFILTER          // CLK_MNGR_IRQ
                      | GPIO_P_MODEL_MODE7_DISABLED;                // NR
    GPIO->P[4].MODEH  = GPIO_P_MODEH_MODE8_PUSHPULL                 // TXDAC_SDIO - USART5 - Location 0
                      | GPIO_P_MODEH_MODE9_PUSHPULL                 // TXDAC_CS
                      | GPIO_P_MODEH_MODE10_PUSHPULL                // TXPA_BIAS_EN
                      | GPIO_P_MODEH_MODE11_INPUTPULLFILTER         // TXPA_OC
                      | GPIO_P_MODEH_MODE12_PUSHPULL                // TXDAC_RESET
                      | GPIO_P_MODEH_MODE13_INPUTPULLFILTER         // DSP_IRQ
                      | GPIO_P_MODEH_MODE14_DISABLED                // NR
                      | GPIO_P_MODEH_MODE15_PUSHPULL;               // TXMIXER_EN
    GPIO->P[4].DOUT   = BIT(6) | BIT(9) | BIT(11) | BIT(12) | BIT(13);
    GPIO->P[4].OVTDIS = 0;

    // Port F
    GPIO->P[5].CTRL   = GPIO_P_CTRL_DRIVESTRENGTHALT_STRONG | (5 << _GPIO_P_CTRL_SLEWRATEALT_SHIFT)
                      | GPIO_P_CTRL_DRIVESTRENGTH_STRONG | (5 << _GPIO_P_CTRL_SLEWRATE_SHIFT);
    GPIO->P[5].MODEL  = GPIO_P_MODEL_MODE0_PUSHPULL                 // DBG_SWCLK - Location 0
                      | GPIO_P_MODEL_MODE1_PUSHPULL                 // DBG_SWDIO - Location 0
                      | GPIO_P_MODEL_MODE2_PUSHPULL                 // DBG_SWO - Location 0
                      | GPIO_P_MODEL_MODE3_DISABLED                 // NC
                      | GPIO_P_MODEL_MODE4_DISABLED                 // NC
                      | GPIO_P_MODEL_MODE5_DISABLED                 // NR
                      | GPIO_P_MODEL_MODE6_PUSHPULL                 // CLK_MNGR_REFCLK_STDBY
                      | GPIO_P_MODEL_MODE7_PUSHPULL;                // TXPLL_EN
    GPIO->P[5].MODEH  = GPIO_P_MODEH_MODE8_PUSHPULL                 // TXPLL_MUTE
                      | GPIO_P_MODEH_MODE9_INPUTPULLFILTER          // TXPLL_LOCK
                      | GPIO_P_MODEH_MODE10_WIREDANDPULLUPFILTER    // AUDIO_I2C_SDA - I2C2 - Location 2
                      | GPIO_P_MODEH_MODE11_WIREDANDPULLUPFILTER    // AUDIO_I2C_SCL - I2C2 - Location 2
                      | GPIO_P_MODEH_MODE12_PUSHPULL                // CLK_MNGR_OE
                      | GPIO_P_MODEH_MODE13_DISABLED                // NC
                      | GPIO_P_MODEH_MODE14_DISABLED                // NC
                      | GPIO_P_MODEH_MODE15_DISABLED;               // NC
    GPIO->P[5].DOUT   = BIT(9) | BIT(12);
    GPIO->P[5].OVTDIS = 0;

    // Debugger Route
    GPIO->ROUTEPEN &= ~(GPIO_ROUTEPEN_TDIPEN | GPIO_ROUTEPEN_TDOPEN);   // Disable JTAG
    GPIO->ROUTEPEN |= GPIO_ROUTEPEN_SWVPEN;                             // Enable SWO
    GPIO->ROUTELOC0 = GPIO_ROUTELOC0_SWVLOC_LOC0;                       // SWO on PF2

    // External interrupts
    GPIO->EXTIPSELL = GPIO_EXTIPSELL_EXTIPSEL0_PORTB            // FPGA_CDONE
                    | GPIO_EXTIPSELL_EXTIPSEL1_PORTB            // FPGA_SMC_IRQ
                    | GPIO_EXTIPSELL_EXTIPSEL2_PORTD            // TFT_TOUCH_IRQ
                    | GPIO_EXTIPSELL_EXTIPSEL3_PORTA            // NU
                    | GPIO_EXTIPSELL_EXTIPSEL4_PORTE            // CLK_MNGR_IRQ
                    | GPIO_EXTIPSELL_EXTIPSEL5_PORTA            // NU
                    | GPIO_EXTIPSELL_EXTIPSEL6_PORTA            // NU
                    | GPIO_EXTIPSELL_EXTIPSEL7_PORTA;           // NU
    GPIO->EXTIPSELH = GPIO_EXTIPSELH_EXTIPSEL8_PORTC            // 3V6_ANA_PGOOD
                    | GPIO_EXTIPSELH_EXTIPSEL9_PORTD            // TXPLL_MUXOUT
                    | GPIO_EXTIPSELH_EXTIPSEL10_PORTE           // TXPA_OC
                    | GPIO_EXTIPSELH_EXTIPSEL11_PORTF           // TXPLL_LOCK
                    | GPIO_EXTIPSELH_EXTIPSEL12_PORTE           // DSP_IRQ
                    | GPIO_EXTIPSELH_EXTIPSEL13_PORTA           // NU
                    | GPIO_EXTIPSELH_EXTIPSEL14_PORTA           // NU
                    | GPIO_EXTIPSELH_EXTIPSEL15_PORTA;          // NU

    GPIO->EXTIPINSELL = GPIO_EXTIPINSELL_EXTIPINSEL0_PIN1       // FPGA_CDONE
                      | GPIO_EXTIPINSELL_EXTIPINSEL1_PIN2       // FPGA_SMC_IRQ
                      | GPIO_EXTIPINSELL_EXTIPINSEL2_PIN2       // TFT_TOUCH_IRQ
                      | GPIO_EXTIPINSELL_EXTIPINSEL3_PIN1       // NU
                      | GPIO_EXTIPINSELL_EXTIPINSEL4_PIN6       // CLK_MNGR_IRQ
                      | GPIO_EXTIPINSELL_EXTIPINSEL5_PIN4       // NU
                      | GPIO_EXTIPINSELL_EXTIPINSEL6_PIN4       // NU
                      | GPIO_EXTIPINSELL_EXTIPINSEL7_PIN4;      // NU
    GPIO->EXTIPINSELH = GPIO_EXTIPINSELH_EXTIPINSEL8_PIN10      // 3V6_ANA_PGOOD
                      | GPIO_EXTIPINSELH_EXTIPINSEL9_PIN10      // TXPLL_MUXOUT
                      | GPIO_EXTIPINSELH_EXTIPINSEL10_PIN11     // TXPA_OC
                      | GPIO_EXTIPINSELH_EXTIPINSEL11_PIN9      // TXPLL_LOCK
                      | GPIO_EXTIPINSELH_EXTIPINSEL12_PIN13     // DSP_IRQ
                      | GPIO_EXTIPINSELH_EXTIPINSEL13_PIN12     // NU
                      | GPIO_EXTIPINSELH_EXTIPINSEL14_PIN12     // NU
                      | GPIO_EXTIPINSELH_EXTIPINSEL15_PIN12;    // NU

    GPIO->EXTIRISE = 0; // N/A
    GPIO->EXTIFALL = BIT(1) | BIT(2) | BIT(4); // FPGA_SMC_IRQ, TFT_TOUCH_IRQ, CLK_MNGR_IRQ

    GPIO->IFC = _GPIO_IFC_MASK; // Clear pending IRQs
    IRQ_CLEAR(GPIO_EVEN_IRQn); // Clear pending vector
    IRQ_CLEAR(GPIO_ODD_IRQn); // Clear pending vector
    IRQ_SET_PRIO(GPIO_EVEN_IRQn, 0, 0); // Set priority 0,0 (max)
    IRQ_SET_PRIO(GPIO_ODD_IRQn, 0, 0); // Set priority 0,0 (max)
    IRQ_ENABLE(GPIO_EVEN_IRQn); // Enable vector
    IRQ_ENABLE(GPIO_ODD_IRQn); // Enable vector
    GPIO->IEN = BIT(1) | BIT(2) | BIT(4); // Enable interrupts
}