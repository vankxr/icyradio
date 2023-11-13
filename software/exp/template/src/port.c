#include "port.h"

void port_init()
{
    // NC - Not Connected (not available in mcu package)
    // NR - Not routed (no routing to pin on pcb, floating)
    // NU - Not used (not currently in use)

    // Port A
    // PA00 - Broken out to header
    // PA01 - Broken out to header
    // PA02 - Broken out to header
    // PA03 - Broken out to header
    // PA04 - Broken out to header
    // PA05 - Broken out to header
    // PA06 - Broken out to header
    // PA07 - Broken out to header
    // PA08 - Broken out to header
    // PA09 - Broken out to header
    // PA10 - Broken out to header
    // PA11 - Broken out to header
    // PA12 - NC
    // PA13 - NC
    // PA14 - Broken out to header
    // PA15 - Broken out to header
    // PA16 - I2C_SDA - PIOMUX C - (SERCOM 1 - PAD 0)
    // PA17 - I2C_SCL - PIOMUX C - (SERCOM 1 - PAD 1)
    // PA18 - PMC_SWO - PIOMUX D - (SERCOM 3 - PAD 2)
    // PA19 - LED
    // PA20 - NC
    // PA21 - NC
    // PA22 - Broken out to header
    // PA23 - Broken out to header
    // PA24 - Broken out to header
    // PA25 - Broken out to header
    // PA26 - NC
    // PA27 - Broken out to header
    // PA28 - Broken out to header
    // PA29 - NC
    // PA30 - SWCLK
    // PA31 - SWDIO
    PORT_REGS->GROUP[0].PORT_DIR = BIT(19) | BIT(18);
    PORT_REGS->GROUP[0].PORT_OUT = BIT(17) | BIT(16);
    PORT_REGS->GROUP[0].PORT_PINCFG[0] = 0;
    PORT_REGS->GROUP[0].PORT_PINCFG[1] = 0;
    PORT_REGS->GROUP[0].PORT_PINCFG[2] = 0;
    PORT_REGS->GROUP[0].PORT_PINCFG[3] = 0;
    PORT_REGS->GROUP[0].PORT_PINCFG[4] = 0;
    PORT_REGS->GROUP[0].PORT_PINCFG[5] = 0;
    PORT_REGS->GROUP[0].PORT_PINCFG[6] = 0;
    PORT_REGS->GROUP[0].PORT_PINCFG[7] = 0;
    PORT_REGS->GROUP[0].PORT_PINCFG[8] = 0;
    PORT_REGS->GROUP[0].PORT_PINCFG[9] = 0;
    PORT_REGS->GROUP[0].PORT_PINCFG[10] = 0;
    PORT_REGS->GROUP[0].PORT_PINCFG[11] = 0;
    PORT_REGS->GROUP[0].PORT_PINCFG[14] = 0;
    PORT_REGS->GROUP[0].PORT_PINCFG[15] = 0;
    PORT_PERI_MUX_SELECT(0, 16, 2);
    PORT_REGS->GROUP[0].PORT_PINCFG[16] = PORT_PINCFG_DRVSTR_Msk | PORT_PINCFG_INEN_Msk | PORT_PINCFG_PMUXEN_Msk;
    PORT_PERI_MUX_SELECT(0, 17, 2);
    PORT_REGS->GROUP[0].PORT_PINCFG[17] = PORT_PINCFG_DRVSTR_Msk | PORT_PINCFG_INEN_Msk | PORT_PINCFG_PMUXEN_Msk;
    PORT_PERI_MUX_SELECT(0, 18, 3);
    PORT_REGS->GROUP[0].PORT_PINCFG[18] = PORT_PINCFG_DRVSTR_Msk | PORT_PINCFG_PMUXEN_Msk;
    PORT_REGS->GROUP[0].PORT_PINCFG[19] = PORT_PINCFG_DRVSTR_Msk;
    PORT_REGS->GROUP[0].PORT_PINCFG[22] = 0;
    PORT_REGS->GROUP[0].PORT_PINCFG[23] = 0;
    PORT_REGS->GROUP[0].PORT_PINCFG[24] = 0;
    PORT_REGS->GROUP[0].PORT_PINCFG[25] = 0;
    PORT_REGS->GROUP[0].PORT_PINCFG[27] = 0;
    PORT_REGS->GROUP[0].PORT_PINCFG[28] = 0;
    PORT_PERI_MUX_SELECT(0, 30, 6);
    PORT_REGS->GROUP[0].PORT_PINCFG[30] = PORT_PINCFG_INEN_Msk | PORT_PINCFG_PMUXEN_Msk;
    PORT_PERI_MUX_SELECT(0, 31, 6);
    PORT_REGS->GROUP[0].PORT_PINCFG[31] = PORT_PINCFG_DRVSTR_Msk | PORT_PINCFG_INEN_Msk | PORT_PINCFG_PMUXEN_Msk;
}