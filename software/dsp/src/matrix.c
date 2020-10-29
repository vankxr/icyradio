#include "matrix.h"

void matrix_init()
{
    // AHB Master Configuration
    MATRIX->MATRIX_MCFG[0] =  MATRIX_MCFG_ULBT_UNLTD_LENGTH; // Cortex-M7 #0 (ROM, Flash)
    MATRIX->MATRIX_MCFG[1] =  MATRIX_MCFG_ULBT_UNLTD_LENGTH; // Cortex-M7 #1 (USB HS DPRAM, EBI)
    MATRIX->MATRIX_MCFG[2] =  MATRIX_MCFG_ULBT_UNLTD_LENGTH; // Cortex-M7 Peripheral Port
    MATRIX->MATRIX_MCFG[3] =  MATRIX_MCFG_ULBT_UNLTD_LENGTH; // ICM
    MATRIX->MATRIX_MCFG[4] =  MATRIX_MCFG_ULBT_UNLTD_LENGTH; // XDMAC #0 (SRAM #0, EBI, AHB Slave)
    MATRIX->MATRIX_MCFG[5] =  MATRIX_MCFG_ULBT_UNLTD_LENGTH; // XDMAC #1 (SRAM #1, Flash, EBI, QSPI, Peripherals)
    MATRIX->MATRIX_MCFG[6] =  MATRIX_MCFG_ULBT_UNLTD_LENGTH; // ISI DMA
    MATRIX->MATRIX_MCFG[7] =  MATRIX_MCFG_ULBT_UNLTD_LENGTH; // MediaLB DMA
    MATRIX->MATRIX_MCFG[8] =  MATRIX_MCFG_ULBT_UNLTD_LENGTH; // USB DMA
    MATRIX->MATRIX_MCFG[9] =  MATRIX_MCFG_ULBT_UNLTD_LENGTH; // GMAC DMA
    MATRIX->MATRIX_MCFG[10] = MATRIX_MCFG_ULBT_UNLTD_LENGTH; // CAN0 DMA
    MATRIX->MATRIX_MCFG[11] = MATRIX_MCFG_ULBT_UNLTD_LENGTH; // CAN1 DMA
    MATRIX->MATRIX_MCFG[12] = MATRIX_MCFG_ULBT_UNLTD_LENGTH; // Cortex-M7 #2 (QSPI)

    // AHB Slave Configuration
    MATRIX->MATRIX_SCFG[0] = (4  << MATRIX_SCFG_FIXED_DEFMSTR_Pos) | MATRIX_SCFG_DEFMSTR_TYPE_FIXED | (255 << MATRIX_SCFG_SLOT_CYCLE_Pos); // SRAM #0
    MATRIX->MATRIX_SCFG[1] = (0  << MATRIX_SCFG_FIXED_DEFMSTR_Pos) | MATRIX_SCFG_DEFMSTR_TYPE_LAST  | (255 << MATRIX_SCFG_SLOT_CYCLE_Pos); // SRAM #1
    MATRIX->MATRIX_SCFG[2] = (0  << MATRIX_SCFG_FIXED_DEFMSTR_Pos) | MATRIX_SCFG_DEFMSTR_TYPE_LAST  | (255 << MATRIX_SCFG_SLOT_CYCLE_Pos); // ROM
    MATRIX->MATRIX_SCFG[3] = (0  << MATRIX_SCFG_FIXED_DEFMSTR_Pos) | MATRIX_SCFG_DEFMSTR_TYPE_LAST  | (255 << MATRIX_SCFG_SLOT_CYCLE_Pos); // Flash
    MATRIX->MATRIX_SCFG[4] = (1  << MATRIX_SCFG_FIXED_DEFMSTR_Pos) | MATRIX_SCFG_DEFMSTR_TYPE_FIXED | (255 << MATRIX_SCFG_SLOT_CYCLE_Pos); // USBHS DPRAM
    MATRIX->MATRIX_SCFG[5] = (0  << MATRIX_SCFG_FIXED_DEFMSTR_Pos) | MATRIX_SCFG_DEFMSTR_TYPE_LAST  | (255 << MATRIX_SCFG_SLOT_CYCLE_Pos); // EBI
    MATRIX->MATRIX_SCFG[6] = (12 << MATRIX_SCFG_FIXED_DEFMSTR_Pos) | MATRIX_SCFG_DEFMSTR_TYPE_FIXED | (255 << MATRIX_SCFG_SLOT_CYCLE_Pos); // QSPI
    MATRIX->MATRIX_SCFG[7] = (0  << MATRIX_SCFG_FIXED_DEFMSTR_Pos) | MATRIX_SCFG_DEFMSTR_TYPE_LAST  | (255 << MATRIX_SCFG_SLOT_CYCLE_Pos); // Peripheral Bridge
    MATRIX->MATRIX_SCFG[8] = (0  << MATRIX_SCFG_FIXED_DEFMSTR_Pos) | MATRIX_SCFG_DEFMSTR_TYPE_NONE  | (255 << MATRIX_SCFG_SLOT_CYCLE_Pos); // AHB Slave (Internal Cortex-M7 registers)

    // AHB Slaves Priority Configuration
    //// SRAM #0
    MATRIX->MatrixPr[0].MATRIX_PRBS = MATRIX_MASTER_PRIORITY(12, 0)  // NC
                                    | MATRIX_MASTER_PRIORITY(11, 0)  // NC
                                    | MATRIX_MASTER_PRIORITY(10, 0)  // NC
                                    | MATRIX_MASTER_PRIORITY( 9, 0)  // NC
                                    | MATRIX_MASTER_PRIORITY( 8, 0); // NC
    MATRIX->MatrixPr[0].MATRIX_PRAS = MATRIX_MASTER_PRIORITY( 7, 0)  // NC
                                    | MATRIX_MASTER_PRIORITY( 6, 0)  // NC
                                    | MATRIX_MASTER_PRIORITY( 5, 0)  // NC
                                    | MATRIX_MASTER_PRIORITY( 4, 2)  // XDMAC #0
                                    | MATRIX_MASTER_PRIORITY( 3, 0)  // ICM
                                    | MATRIX_MASTER_PRIORITY( 2, 0)  // NC
                                    | MATRIX_MASTER_PRIORITY( 1, 0)  // NC
                                    | MATRIX_MASTER_PRIORITY( 0, 0); // NC
    //// SRAM #1
    MATRIX->MatrixPr[1].MATRIX_PRBS = MATRIX_MASTER_PRIORITY(12, 0)  // NC
                                    | MATRIX_MASTER_PRIORITY(11, 0)  // CAN1 DMA
                                    | MATRIX_MASTER_PRIORITY(10, 0)  // CAN0 DMA
                                    | MATRIX_MASTER_PRIORITY( 9, 0)  // GMAC DMA
                                    | MATRIX_MASTER_PRIORITY( 8, 2); // USB DMA
    MATRIX->MatrixPr[1].MATRIX_PRAS = MATRIX_MASTER_PRIORITY( 7, 0)  // MediaLB DMA
                                    | MATRIX_MASTER_PRIORITY( 6, 0)  // ISI DMA
                                    | MATRIX_MASTER_PRIORITY( 5, 1)  // XDMAC #1
                                    | MATRIX_MASTER_PRIORITY( 4, 0)  // NC
                                    | MATRIX_MASTER_PRIORITY( 3, 0)  // NC
                                    | MATRIX_MASTER_PRIORITY( 2, 0)  // NC
                                    | MATRIX_MASTER_PRIORITY( 1, 0)  // NC
                                    | MATRIX_MASTER_PRIORITY( 0, 0); // NC
    //// ROM
    MATRIX->MatrixPr[2].MATRIX_PRBS = MATRIX_MASTER_PRIORITY(12, 0)  // NC
                                    | MATRIX_MASTER_PRIORITY(11, 0)  // NC
                                    | MATRIX_MASTER_PRIORITY(10, 0)  // NC
                                    | MATRIX_MASTER_PRIORITY( 9, 0)  // NC
                                    | MATRIX_MASTER_PRIORITY( 8, 0); // NC
    MATRIX->MatrixPr[2].MATRIX_PRAS = MATRIX_MASTER_PRIORITY( 7, 0)  // NC
                                    | MATRIX_MASTER_PRIORITY( 6, 0)  // NC
                                    | MATRIX_MASTER_PRIORITY( 5, 0)  // NC
                                    | MATRIX_MASTER_PRIORITY( 4, 0)  // NC
                                    | MATRIX_MASTER_PRIORITY( 3, 0)  // NC
                                    | MATRIX_MASTER_PRIORITY( 2, 0)  // NC
                                    | MATRIX_MASTER_PRIORITY( 1, 0)  // NC
                                    | MATRIX_MASTER_PRIORITY( 0, 0); // Cortex-M7 #0
    //// Flash
    MATRIX->MatrixPr[3].MATRIX_PRBS = MATRIX_MASTER_PRIORITY(12, 0)  // NC
                                    | MATRIX_MASTER_PRIORITY(11, 0)  // NC
                                    | MATRIX_MASTER_PRIORITY(10, 0)  // NC
                                    | MATRIX_MASTER_PRIORITY( 9, 0)  // GMAC DMA
                                    | MATRIX_MASTER_PRIORITY( 8, 0); // USB DMA
    MATRIX->MatrixPr[3].MATRIX_PRAS = MATRIX_MASTER_PRIORITY( 7, 0)  // NC
                                    | MATRIX_MASTER_PRIORITY( 6, 0)  // NC
                                    | MATRIX_MASTER_PRIORITY( 5, 0)  // XDMAC #1
                                    | MATRIX_MASTER_PRIORITY( 4, 0)  // NC
                                    | MATRIX_MASTER_PRIORITY( 3, 0)  // ICM
                                    | MATRIX_MASTER_PRIORITY( 2, 0)  // NC
                                    | MATRIX_MASTER_PRIORITY( 1, 0)  // NC
                                    | MATRIX_MASTER_PRIORITY( 0, 2); // Cortex-M7 #0
    //// USBHS DPRAM
    MATRIX->MatrixPr[4].MATRIX_PRBS = MATRIX_MASTER_PRIORITY(12, 0)  // NC
                                    | MATRIX_MASTER_PRIORITY(11, 0)  // NC
                                    | MATRIX_MASTER_PRIORITY(10, 0)  // NC
                                    | MATRIX_MASTER_PRIORITY( 9, 0)  // NC
                                    | MATRIX_MASTER_PRIORITY( 8, 0); // NC
    MATRIX->MatrixPr[4].MATRIX_PRAS = MATRIX_MASTER_PRIORITY( 7, 0)  // NC
                                    | MATRIX_MASTER_PRIORITY( 6, 0)  // NC
                                    | MATRIX_MASTER_PRIORITY( 5, 0)  // NC
                                    | MATRIX_MASTER_PRIORITY( 4, 2)  // NC
                                    | MATRIX_MASTER_PRIORITY( 3, 0)  // NC
                                    | MATRIX_MASTER_PRIORITY( 2, 0)  // NC
                                    | MATRIX_MASTER_PRIORITY( 1, 0)  // Cortex-M7 #1
                                    | MATRIX_MASTER_PRIORITY( 0, 0); // NC
    //// EBI
    MATRIX->MatrixPr[5].MATRIX_PRBS = MATRIX_MASTER_PRIORITY(12, 0)  // NC
                                    | MATRIX_MASTER_PRIORITY(11, 0)  // NC
                                    | MATRIX_MASTER_PRIORITY(10, 0)  // NC
                                    | MATRIX_MASTER_PRIORITY( 9, 0)  // NC
                                    | MATRIX_MASTER_PRIORITY( 8, 0); // NC
    MATRIX->MatrixPr[5].MATRIX_PRAS = MATRIX_MASTER_PRIORITY( 7, 0)  // NC
                                    | MATRIX_MASTER_PRIORITY( 6, 0)  // NC
                                    | MATRIX_MASTER_PRIORITY( 5, 0)  // NC
                                    | MATRIX_MASTER_PRIORITY( 4, 2)  // XDMAC #0 > SRAM #0
                                    | MATRIX_MASTER_PRIORITY( 3, 0)  // ICM > SRAM #0
                                    | MATRIX_MASTER_PRIORITY( 2, 0)  // NC
                                    | MATRIX_MASTER_PRIORITY( 1, 0)  // NC
                                    | MATRIX_MASTER_PRIORITY( 0, 0); // NC
    //// QSPI
    MATRIX->MatrixPr[6].MATRIX_PRBS = MATRIX_MASTER_PRIORITY(12, 0)  // NC
                                    | MATRIX_MASTER_PRIORITY(11, 0)  // CAN1 DMA
                                    | MATRIX_MASTER_PRIORITY(10, 0)  // CAN0 DMA
                                    | MATRIX_MASTER_PRIORITY( 9, 0)  // GMAC DMA
                                    | MATRIX_MASTER_PRIORITY( 8, 0); // USB DMA
    MATRIX->MatrixPr[6].MATRIX_PRAS = MATRIX_MASTER_PRIORITY( 7, 0)  // MediaLB DMA
                                    | MATRIX_MASTER_PRIORITY( 6, 0)  // ISI
                                    | MATRIX_MASTER_PRIORITY( 5, 0)  // XDMAC #1
                                    | MATRIX_MASTER_PRIORITY( 4, 0)  // XDMAC #0
                                    | MATRIX_MASTER_PRIORITY( 3, 0)  // ICM
                                    | MATRIX_MASTER_PRIORITY( 2, 0)  // NC
                                    | MATRIX_MASTER_PRIORITY( 1, 2)  // Cortex-M7 #1
                                    | MATRIX_MASTER_PRIORITY( 0, 0); // NC
    //// Peripheral Bridge
    MATRIX->MatrixPr[7].MATRIX_PRBS = MATRIX_MASTER_PRIORITY(12, 0)  // NC
                                    | MATRIX_MASTER_PRIORITY(11, 0)  // NC
                                    | MATRIX_MASTER_PRIORITY(10, 0)  // NC
                                    | MATRIX_MASTER_PRIORITY( 9, 0)  // NC
                                    | MATRIX_MASTER_PRIORITY( 8, 0); // NC
    MATRIX->MatrixPr[7].MATRIX_PRAS = MATRIX_MASTER_PRIORITY( 7, 0)  // NC
                                    | MATRIX_MASTER_PRIORITY( 6, 0)  // NC
                                    | MATRIX_MASTER_PRIORITY( 5, 2)  // XDMAC #1
                                    | MATRIX_MASTER_PRIORITY( 4, 0)  // NC
                                    | MATRIX_MASTER_PRIORITY( 3, 0)  // NC
                                    | MATRIX_MASTER_PRIORITY( 2, 1)  // Cortex-M7 Peripheral Port
                                    | MATRIX_MASTER_PRIORITY( 1, 1)  // Cortex-M7 #1
                                    | MATRIX_MASTER_PRIORITY( 0, 0); // NC
    //// AHB Slave (Internal Cortex-M7 registers)
    MATRIX->MatrixPr[8].MATRIX_PRBS = MATRIX_MASTER_PRIORITY(12, 0)  // NC
                                    | MATRIX_MASTER_PRIORITY(11, 0)  // CAN1 DMA
                                    | MATRIX_MASTER_PRIORITY(10, 0)  // CAN0 DMA
                                    | MATRIX_MASTER_PRIORITY( 9, 0)  // GMAC DMA
                                    | MATRIX_MASTER_PRIORITY( 8, 0); // USB DMA
    MATRIX->MatrixPr[8].MATRIX_PRAS = MATRIX_MASTER_PRIORITY( 7, 0)  // MediaLB DMA
                                    | MATRIX_MASTER_PRIORITY( 6, 0)  // ISI
                                    | MATRIX_MASTER_PRIORITY( 5, 0)  // NC
                                    | MATRIX_MASTER_PRIORITY( 4, 0)  // XDMAC #0
                                    | MATRIX_MASTER_PRIORITY( 3, 0)  // ICM
                                    | MATRIX_MASTER_PRIORITY( 2, 0)  // NC
                                    | MATRIX_MASTER_PRIORITY( 1, 0)  // NC
                                    | MATRIX_MASTER_PRIORITY( 0, 0); // NC

    // AHB Master Address remapping
    MATRIX->MATRIX_MRCR = 0x00000000;

    // CAN DMA base addresses
    MATRIX->CCFG_CAN0  = (IRAM_ADDR & CCFG_CAN0_CAN0DMABA_Msk) | 0x019D; // CAN 0
    MATRIX->CCFG_SYSIO = (IRAM_ADDR & CCFG_SYSIO_CAN1DMABA_Msk);         // CAN 1

    // System IO
    MATRIX->CCFG_SYSIO |= CCFG_SYSIO_SYSIO12; // Disable ERASE
    MATRIX->CCFG_SYSIO &= ~CCFG_SYSIO_SYSIO7; // Enable TCK/SWCLK
    MATRIX->CCFG_SYSIO &= ~CCFG_SYSIO_SYSIO6; // Enable TMS/SWDIO
    MATRIX->CCFG_SYSIO &= ~CCFG_SYSIO_SYSIO5; // Enable TDO/TRACESWO
    MATRIX->CCFG_SYSIO |= CCFG_SYSIO_SYSIO4;  // Disable TDI

    // Peripheral clock mux
    MATRIX->CCFG_PCCR &= ~CCFG_PCCR_I2SC1CC; // I2SC1 uses Peripheral Clock
    MATRIX->CCFG_PCCR &= ~CCFG_PCCR_I2SC0CC; // I2SC0 uses Peripheral Clock
    MATRIX->CCFG_PCCR &= ~CCFG_PCCR_TC0CC;   // TC0 uses PCK6

    // Dynamic clock gating
    MATRIX->CCFG_DYNCKG |= CCFG_DYNCKG_EFCCKG;  // EEFC clock always enabled
    MATRIX->CCFG_DYNCKG |= CCFG_DYNCKG_BRIDCKG; // Bridge clock always enabled
    MATRIX->CCFG_DYNCKG |= CCFG_DYNCKG_MATCKG;  // Matrix clock always enabled

    // SMC NAND Flash CS configuration
    MATRIX->CCFG_SMCNFCS &= CCFG_SMCNFCS_SDRAMEN;   // NCS1 not for SDRAM
    MATRIX->CCFG_SMCNFCS &= CCFG_SMCNFCS_SMC_NFCS3; // NCS3 not for NAND
    MATRIX->CCFG_SMCNFCS &= CCFG_SMCNFCS_SMC_NFCS2; // NCS2 not for NAND
    MATRIX->CCFG_SMCNFCS &= CCFG_SMCNFCS_SMC_NFCS1; // NCS1 not for NAND
    MATRIX->CCFG_SMCNFCS &= CCFG_SMCNFCS_SMC_NFCS0; // NCS0 not for NAND
}
