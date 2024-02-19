#pragma once

#include <cstdint>
#include <vector>
#include <algorithm>
#include <unistd.h>
#include <mutex>
#include "AXISPI.hpp"
#include "AXIGPIO.hpp"
#include "Utils.hpp"

#define IDT8V97003_REG_INTF_CONFIG        0x00
#define IDT8V97003_REG_BUF_READ           0x01
#define IDT8V97003_REG_CHIP_TYPE          0x03
#define IDT8V97003_REG_CHIP_ID_LOW        0x04
#define IDT8V97003_REG_CHIP_ID_HIGH       0x05
#define IDT8V97003_REG_CHIP_VERSION       0x06
#define IDT8V97003_REG_CHIP_OPTION        0x07
#define IDT8V97003_REG_VENDOR_ID_LOW      0x0C
#define IDT8V97003_REG_VENDOR_ID_HIGH     0x0D
#define IDT8V97003_REG_BUF_TRANSFER       0x0F
#define IDT8V97003_REG_NINT_LOW           0x10
#define IDT8V97003_REG_NINT_HIGH          0x11
#define IDT8V97003_REG_NFRAC_LOW          0x12
#define IDT8V97003_REG_NFRAC_MID0         0x13
#define IDT8V97003_REG_NFRAC_MID1         0x14
#define IDT8V97003_REG_NFRAC_HIGH         0x15
#define IDT8V97003_REG_NMOD_LOW           0x16
#define IDT8V97003_REG_NMOD_MID0          0x17
#define IDT8V97003_REG_NMOD_MID1          0x18
#define IDT8V97003_REG_NMOD_HIGH          0x19
#define IDT8V97003_REG_PHASE_LOW          0x1A
#define IDT8V97003_REG_PHASE_MID0         0x1B
#define IDT8V97003_REG_PHASE_MID1         0x1C
#define IDT8V97003_REG_PHASE_HIGH         0x1D
#define IDT8V97003_REG_DSM_CTL            0x1E
#define IDT8V97003_REG_MANUAL_VCO         0x1F
#define IDT8V97003_REG_MANUAL_DIGITAL     0x20
#define IDT8V97003_REG_MANUAL_CTL         0x21
#define IDT8V97003_REG_BAND_SEL_DIV_LOW   0x22
#define IDT8V97003_REG_BAND_SEL_DIV_HIGH  0x23
// #define IDT8V97003_REG_VCO_BAND_UNK1      0x24 // (Undocumented)
// #define IDT8V97003_REG_VCO_BAND_UNK2      0x25 // (Undocumented)
#define IDT8V97003_REG_LD_CTL0            0x26
#define IDT8V97003_REG_LD_CTL1            0x27
#define IDT8V97003_REG_PWR_CTL            0x28
#define IDT8V97003_REG_RDIV_LOW           0x29
#define IDT8V97003_REG_RDIV_HIGH          0x2A
#define IDT8V97003_REG_MULT_CTL0          0x2B
#define IDT8V97003_REG_MULT_CTL1          0x2C
#define IDT8V97003_REG_ICP_PMOS           0x2D
#define IDT8V97003_REG_ICP_NMOS           0x2E
#define IDT8V97003_REG_ICP_BLEEDER        0x2F
#define IDT8V97003_REG_PFD_PULSE_WIDTH    0x30
#define IDT8V97003_REG_RESYNC_TIME_LOW    0x31 // (Undocumented) resync_time = (0x32[6:0] << 8) + 0x31[7:0]
#define IDT8V97003_REG_RESYNC_TIME_HIGH   0x32 // (Undocumented) Time from re-lock to re-sync -> Tsync = resync_time * band_sel_div * Tpfd
#define IDT8V97003_REG_RFOUTA_PWR         0x33
#define IDT8V97003_REG_RFOUTA_ENA         0x34
#define IDT8V97003_REG_RFOUTB_PWR         0x35
#define IDT8V97003_REG_RFOUTB_ENA         0x36
#define IDT8V97003_REG_OUT_DIV_DBL        0x3B
#define IDT8V97003_REG_VCO_CAL_VOLTAGE    0x3C // (Undocumented)
#define IDT8V97003_REG_PTAT_PWR_CONFIG    0x3D // (Undocumented)
#define IDT8V97003_REG_CURRENT_CONFIG1    0x3F // (Undocumented)
#define IDT8V97003_REG_CURRENT_CONFIG2    0x40 // (Undocumented)
#define IDT8V97003_REG_TRIM_CONFIG1       0x41 // (Undocumented)
#define IDT8V97003_REG_TRIM_CONFIG2       0x42 // (Undocumented)
#define IDT8V97003_REG_TRIM_CONFIG3       0x43 // (Undocumented)
#define IDT8V97003_REG_LD_CAL_VCO_STATUS  0x44
#define IDT8V97003_REG_DIG_BAND_STATUS    0x45
#define IDT8V97003_REG_TEMP_LOW           0x46 // (Undocumented) temp = (0x47[4:0] << 8) + 0x46[7:0]
#define IDT8V97003_REG_TEMP_HIGH          0x47 // (Undocumented)
#define IDT8V97003_REG_LOSS_LOCK          0x49

// IDT8V97003_REG_INTF_CONFIG
#define IDT8V97003_REG_INTF_CONFIG_SOFT_RESET (BIT(7) | BIT(0))
#define IDT8V97003_REG_INTF_CONFIG_LSB_FIRST  (BIT(6) | BIT(1))
#define IDT8V97003_REG_INTF_CONFIG_ADDR_ASC   (BIT(5) | BIT(2))
#define IDT8V97003_REG_INTF_CONFIG_SDO_ACTIVE (BIT(4) | BIT(3))

// IDT8V97003_REG_BUF_READ
#define IDT8V97003_REG_BUF_READ_BUF_READ_MODE BIT(5)

// IDT8V97003_REG_BUF_TRANSFER
#define IDT8V97003_REG_BUF_TRANSFER_TRANSFER_ON   BIT(0)

// IDT8V97003_REG_DSM_CTL
#define IDT8V97003_REG_DSM_CTL_DSM_TYPE           BIT(7) // (Undocumented) 0 = Feed-Forward SSMF-II, 1 = MASH
#define IDT8V97003_REG_DSM_CTL_DSM_ORDER_OFF      0x00
#define IDT8V97003_REG_DSM_CTL_DSM_ORDER_1ST      0x10
#define IDT8V97003_REG_DSM_CTL_DSM_ORDER_2ND      0x20
#define IDT8V97003_REG_DSM_CTL_DSM_ORDER_3RD      0x30
#define IDT8V97003_REG_DSM_CTL_DSM_ORDER_4TH      0x70 // (Undocumented) 4th order only when DSM_TYPE = 1 (MASH), else 3rd order
#define IDT8V97003_REG_DSM_CTL_DITHER_G_LSB       0x00
#define IDT8V97003_REG_DSM_CTL_DITHER_G_LSB_X2    0x04
#define IDT8V97003_REG_DSM_CTL_DITHER_G_LSB_X4    0x08
#define IDT8V97003_REG_DSM_CTL_DITHER_G_LSB_X8    0x0C
#define IDT8V97003_REG_DSM_CTL_SHAPE_DITHER_EN    BIT(1)
#define IDT8V97003_REG_DSM_CTL_DITHER_EN          BIT(0)

// IDT8V97003_REG_MANUAL_VCO
#define IDT8V97003_REG_MANUAL_VCO_MANU_BAND_EN    BIT(7)
#define IDT8V97003_REG_MANUAL_VCO_CLK_CALI        BIT(6) // (Undocumented) 0 = fvco / 128, 1 = fvco / 64

// IDT8V97003_REG_MANUAL_CTL
#define IDT8V97003_REG_MANUAL_CTL_FORCE_RELOCK    BIT(7)
#define IDT8V97003_REG_MANUAL_CTL_PH_ADJ          BIT(6)
#define IDT8V97003_REG_MANUAL_CTL_BAND_SEL_DIS    BIT(5)
#define IDT8V97003_REG_MANUAL_CTL_MANUAL_RESYNC   BIT(4)
#define IDT8V97003_REG_MANUAL_CTL_SW_WAIT_1_T_CAL 0x00 // (Undocumented) Wait for 1 ref_cali period
#define IDT8V97003_REG_MANUAL_CTL_SW_WAIT_2_T_CAL 0x04 // (Undocumented) Wait for 2 ref_cali periods
#define IDT8V97003_REG_MANUAL_CTL_SW_WAIT_3_T_CAL 0x08 // (Undocumented) Wait for 3 ref_cali periods
#define IDT8V97003_REG_MANUAL_CTL_SW_WAIT_4_T_CAL 0x0C // (Undocumented) Wait for 4 ref_cali periods
#define IDT8V97003_REG_MANUAL_CTL_BAND_SEL_ACC_1X 0x00
#define IDT8V97003_REG_MANUAL_CTL_BAND_SEL_ACC_1X 0x00
#define IDT8V97003_REG_MANUAL_CTL_BAND_SEL_ACC_2X 0x01
#define IDT8V97003_REG_MANUAL_CTL_BAND_SEL_ACC_4X 0x02
#define IDT8V97003_REG_MANUAL_CTL_BAND_SEL_ACC_8X 0x03

// IDT8V97003_REG_LD_CTL0
#define IDT8V97003_REG_LD_CTL0_LD_DISABLE        BIT(4)
#define IDT8V97003_REG_LD_CTL0_AUTO_RECAL_EN     BIT(3)
#define IDT8V97003_REG_LD_CTL0_WAIT_1_TBAND_SEL  0x00 // (Undocumented) Wait for 1 fPFD/band_sel_div period
#define IDT8V97003_REG_LD_CTL0_WAIT_2_TBAND_SEL  0x01 // (Undocumented) Wait for 2 fPFD/band_sel_div periods
#define IDT8V97003_REG_LD_CTL0_WAIT_3_TBAND_SEL  0x02 // (Undocumented) Wait for 3 fPFD/band_sel_div periods
#define IDT8V97003_REG_LD_CTL0_WAIT_4_TBAND_SEL  0x03 // (Undocumented) Wait for 4 fPFD/band_sel_div periods
#define IDT8V97003_REG_LD_CTL0_WAIT_5_TBAND_SEL  0x04 // (Undocumented) Wait for 5 fPFD/band_sel_div periods
#define IDT8V97003_REG_LD_CTL0_WAIT_6_TBAND_SEL  0x05 // (Undocumented) Wait for 6 fPFD/band_sel_div periods
#define IDT8V97003_REG_LD_CTL0_WAIT_7_TBAND_SEL  0x06 // (Undocumented) Wait for 7 fPFD/band_sel_div periods
#define IDT8V97003_REG_LD_CTL0_WAIT_8_TBAND_SEL  0x07 // (Undocumented) Wait for 8 fPFD/band_sel_div periods

// IDT8V97003_REG_LD_CTL1
#define IDT8V97003_REG_LD_CTL1_LD_PIN_MODE_LD         0x00
#define IDT8V97003_REG_LD_CTL1_LD_PIN_MODE_CAL_DONE   0x10
#define IDT8V97003_REG_LD_CTL1_LD_PIN_MODE_LOW        0x20
#define IDT8V97003_REG_LD_CTL1_LD_PIN_MODE_HIGH       0x30
#define IDT8V97003_REG_LD_CTL1_LD_PRECISION_0p5ns     0x00
#define IDT8V97003_REG_LD_CTL1_LD_PRECISION_1p0ns     0x01
#define IDT8V97003_REG_LD_CTL1_LD_PRECISION_1p8ns     0x02
#define IDT8V97003_REG_LD_CTL1_LD_PRECISION_3p0ns     0x03
#define IDT8V97003_REG_LD_CTL1_LD_PRECISION_6p4ns     0x04
#define IDT8V97003_REG_LD_CTL1_LD_PRECISION_10p4ns    0x06

// IDT8V97003_REG_PWR_CTL
#define IDT8V97003_REG_PWR_CTL_REF_VREG_PDOWN         BIT(6)
#define IDT8V97003_REG_PWR_CTL_PDCP_VREG_PDOWN        BIT(5)
#define IDT8V97003_REG_PWR_CTL_FB_VREG_PDOWN          BIT(4)
#define IDT8V97003_REG_PWR_CTL_OUTA_VREG_PDOWN        BIT(3)
#define IDT8V97003_REG_PWR_CTL_OUTB_BUF_VREG_PDOWN    BIT(2)
#define IDT8V97003_REG_PWR_CTL_ANA_PDOWN              BIT(1)
#define IDT8V97003_REG_PWR_CTL_VCO_EN                 BIT(0)

// IDT8V97003_REG_RDIV_HIGH
#define IDT8V97003_REG_RDIV_HIGH_REF_DBL_DELAY        BIT(4)
#define IDT8V97003_REG_RDIV_HIGH_INPUT_TYPE           BIT(3)
#define IDT8V97003_REG_RDIV_HIGH_REF_DBL_EN           BIT(2)

// IDT8V97003_REG_MULT_CTL0
#define IDT8V97003_REG_MULT_CTL0_MULT_EN              BIT(7)
#define IDT8V97003_REG_MULT_CTL0_MULT_RESET           BIT(6)

// IDT8V97003_REG_MULT_CTL1
#define IDT8V97003_REG_MULT_CTL1_MULT_MUX_ENA         BIT(7)
#define IDT8V97003_REG_MULT_CTL1_MULT_D2S_ENA         BIT(6)
#define IDT8V97003_REG_MULT_CTL1_MULT_CP_ENA          BIT(5)
#define IDT8V97003_REG_MULT_CTL1_MULT_FORCE_VCHI      BIT(4)
#define IDT8V97003_REG_MULT_CTL1_MULT_FORCE_VCLOW     BIT(3)
#define IDT8V97003_REG_MULT_CTL1_MULT_ICP_125uA       0x00 // (Undocumented) Multiplier charge pump current
#define IDT8V97003_REG_MULT_CTL1_MULT_ICP_250uA       0x01 // (Undocumented) Multiplier charge pump current

// IDT8V97003_REG_ICP_BLEEDER
#define IDT8V97003_REG_ICP_BLEEDER_CP_HIZ             BIT(7)

// IDT8V97003_REG_PFD_PULSE_WIDTH
#define IDT8V97003_REG_PFD_PULSE_WIDTH_PW_260ps       0x00
#define IDT8V97003_REG_PFD_PULSE_WIDTH_PW_348ps       0x04
#define IDT8V97003_REG_PFD_PULSE_WIDTH_PW_487ps       0x08
#define IDT8V97003_REG_PFD_PULSE_WIDTH_PW_583ps       0x0C
#define IDT8V97003_REG_PFD_PULSE_WIDTH_VCO_BUF_LOW_V  BIT(1) // (Undocumented) 0 = High voltage, 1 = Low voltage

// IDT8V97003_REG_RESYNC_TIME_HIGH
#define IDT8V97003_REG_RESYNC_TIME_HIGH_AUTO_RESYNC_EN BIT(7)

// IDT8V97003_REG_RFOUTA_ENA
#define IDT8V97003_REG_RFOUTA_ENA_REF_VOLTAGE         BIT(7) // (Undocumented) 0 = 2.5V, 1 = 3.3V
#define IDT8V97003_REG_RFOUTA_ENA_MUTE_UNTIL_LD       BIT(5)
#define IDT8V97003_REG_RFOUTA_ENA_RFOUTA_ENA          BIT(4)
#define IDT8V97003_REG_RFOUTA_ENA_DAC_BIAS(n)         ((n) & 0x0F) // (Undocumented) Bias DAC setting

// IDT8V97003_REG_RFOUTB_ENA
#define IDT8V97003_REG_RFOUTB_ENA_REF_VOLTAGE         BIT(7) // (Undocumented) 0 = 2.5V, 1 = 3.3V
#define IDT8V97003_REG_RFOUTB_ENA_RFOUTB_ENA          BIT(4)
#define IDT8V97003_REG_RFOUTB_ENA_DAC_BIAS(n)         ((n) & 0x0F) // (Undocumented) Bias DAC setting

// IDT8V97003_REG_OUT_DIV_DBL
#define IDT8V97003_REG_OUT_DIV_DBL_OUT_DBL_ENA        BIT(7)
#define IDT8V97003_REG_OUT_DIV_DBL_OUT_DIV_ENA        BIT(6)
#define IDT8V97003_REG_OUT_DIV_DBL_OUT_DBL_FREQ       BIT(5)
#define IDT8V97003_REG_OUT_DIV_DBL_OUT_DIV_DIV2       0x01
#define IDT8V97003_REG_OUT_DIV_DBL_OUT_DIV_DIV4       0x02
#define IDT8V97003_REG_OUT_DIV_DBL_OUT_DIV_DIV8       0x03
#define IDT8V97003_REG_OUT_DIV_DBL_OUT_DIV_DIV16      0x04
#define IDT8V97003_REG_OUT_DIV_DBL_OUT_DIV_DIV32      0x05

// IDT8V97003_REG_VCO_CAL_VOLTAGE
#define IDT8V97003_REG_VCO_CAL_VOLTAGE_0V49          0x00 // (Undocumented) VCO calibration voltage = 0.49V
#define IDT8V97003_REG_VCO_CAL_VOLTAGE_0V584         0x01 // (Undocumented) VCO calibration voltage = 0.584V
#define IDT8V97003_REG_VCO_CAL_VOLTAGE_0V82          0x02 // (Undocumented) VCO calibration voltage = 0.82V
#define IDT8V97003_REG_VCO_CAL_VOLTAGE_0V938         0x03 // (Undocumented) VCO calibration voltage = 0.938V
#define IDT8V97003_REG_VCO_CAL_VOLTAGE_1V056         0x04 // (Undocumented) VCO calibration voltage = 1.056V
#define IDT8V97003_REG_VCO_CAL_VOLTAGE_1V174         0x05 // (Undocumented) VCO calibration voltage = 1.174V
#define IDT8V97003_REG_VCO_CAL_VOLTAGE_1V410         0x06 // (Undocumented) VCO calibration voltage = 1.410V
#define IDT8V97003_REG_VCO_CAL_VOLTAGE_1V882         0x07 // (Undocumented) VCO calibration voltage = 1.882V
#define IDT8V97003_REG_VCO_CAL_VOLTAGE_HI_Z          0x08 // (Undocumented) VCO calibration voltage = Hi-Z

// IDT8V97003_REG_PTAT_PWR_CONFIG
#define IDT8V97003_REG_PTAT_PWR_CONFIG_PTAT_MODE_NORMAL 0x00 // (Undocumented) PTAT mode = Normal
#define IDT8V97003_REG_PTAT_PWR_CONFIG_PTAT_MODE_LOW_I  0x08 // (Undocumented) PTAT mode = Low Current
#define IDT8V97003_REG_PTAT_PWR_CONFIG_PTAT_MODE_HIGH_I 0x10 // (Undocumented) PTAT mode = High Current
#define IDT8V97003_REG_PTAT_PWR_CONFIG_PTAT_BYPASS      BIT(2) // (Undocumented) PTAT bypass used for initial vtune setting (0 = enabled, 1 = disabled)
#define IDT8V97003_REG_PTAT_PWR_CONFIG_SENSOR_POWER     BIT(1) // (Undocumented) Temperature sensor power (0 = power down, 1 = power up)
// #define IDT8V97003_REG_PTAT_PWR_CONFIG_RSVD0            BIT(0) // (Undocumented) Reserved (0 = disabled, 1 = enabled)

// IDT8V97003_REG_CURRENT_CONFIG1
#define IDT8V97003_REG_CURRENT_CONFIG1_INPUT_LOW_I      BIT(0) // (Undocumented) Low current setting for input path

// IDT8V97003_REG_CURRENT_CONFIG2
#define IDT8V97003_REG_CURRENT_CONFIG2_IBUF_LOW_I        BIT(7) // (Undocumented) Low current setting for input buffer
#define IDT8V97003_REG_CURRENT_CONFIG2_OUTA_LOW_I        BIT(6) // (Undocumented) Low current setting for OutputA path
#define IDT8V97003_REG_CURRENT_CONFIG2_OUTB_LOW_I        BIT(5) // (Undocumented) Low current setting for OutputB path
#define IDT8V97003_REG_CURRENT_CONFIG2_OUT_DBL_LOW_I     BIT(4) // (Undocumented) Low current setting for output path & doubler
#define IDT8V97003_REG_CURRENT_CONFIG2_OUT_DIV_LOW_I     BIT(3) // (Undocumented) Low current setting for output divider
#define IDT8V97003_REG_CURRENT_CONFIG2_CP_LOW_I          BIT(2) // (Undocumented) Low current setting for charge pump
#define IDT8V97003_REG_CURRENT_CONFIG2_FB_DIV_LOW_I      BIT(1) // (Undocumented) Low current setting for feedback divider
#define IDT8V97003_REG_CURRENT_CONFIG2_CP_OTA_LOW_I      BIT(0) // (Undocumented) Low current setting for charge pump OTA

// IDT8V97003_REG_TRIM_CONFIG1
#define IDT8V97003_REG_TRIM_CONFIG1_VCO_REG_TRIM_1V65    0x00 // (Undocumented) VCO regulator trim = 1.65V
#define IDT8V97003_REG_TRIM_CONFIG1_VCO_REG_TRIM_1V73    0x10 // (Undocumented) VCO regulator trim = 1.73V
#define IDT8V97003_REG_TRIM_CONFIG1_VCO_REG_TRIM_1V80    0x20 // (Undocumented) VCO regulator trim = 1.80V
#define IDT8V97003_REG_TRIM_CONFIG1_VCO_REG_TRIM_1V87    0x30 // (Undocumented) VCO regulator trim = 1.87V
#define IDT8V97003_REG_TRIM_CONFIG1_VCO_REG_TRIM_1V94    0x40 // (Undocumented) VCO regulator trim = 1.94V
#define IDT8V97003_REG_TRIM_CONFIG1_VCO_REG_TRIM_2V02    0x50 // (Undocumented) VCO regulator trim = 2.02V
#define IDT8V97003_REG_TRIM_CONFIG1_VCO_REG_TRIM_2V09    0x60 // (Undocumented) VCO regulator trim = 2.09V
#define IDT8V97003_REG_TRIM_CONFIG1_VCO_REG_TRIM_2V16    0x70 // (Undocumented) VCO regulator trim = 2.16V
#define IDT8V97003_REG_TRIM_CONFIG1_VCO_REG_TRIM_2V23    0x80 // (Undocumented) VCO regulator trim = 2.23V
#define IDT8V97003_REG_TRIM_CONFIG1_VCO_REG_TRIM_2V31    0x90 // (Undocumented) VCO regulator trim = 2.31V
#define IDT8V97003_REG_TRIM_CONFIG1_VCO_REG_TRIM_2V38    0xA0 // (Undocumented) VCO regulator trim = 2.38V
#define IDT8V97003_REG_TRIM_CONFIG1_VCO_REG_TRIM_2V45    0xB0 // (Undocumented) VCO regulator trim = 2.45V
#define IDT8V97003_REG_TRIM_CONFIG1_VCO_REG_TRIM_2V53    0xC0 // (Undocumented) VCO regulator trim = 2.53V
#define IDT8V97003_REG_TRIM_CONFIG1_VCO_REG_TRIM_2V60    0xD0 // (Undocumented) VCO regulator trim = 2.60V
#define IDT8V97003_REG_TRIM_CONFIG1_VCO_REG_TRIM_2V67    0xE0 // (Undocumented) VCO regulator trim = 2.67V
#define IDT8V97003_REG_TRIM_CONFIG1_VCO_REG_TRIM_2V74    0xF0 // (Undocumented) VCO regulator trim = 2.74V
#define IDT8V97003_REG_TRIM_CONFIG1_OUT_REG_TRIM_2V85    0x00 // (Undocumented) Output Path regulator trim = 2.85V
#define IDT8V97003_REG_TRIM_CONFIG1_OUT_REG_TRIM_2V73    0x01 // (Undocumented) Output Path regulator trim = 2.73V
#define IDT8V97003_REG_TRIM_CONFIG1_OUT_REG_TRIM_2V62    0x02 // (Undocumented) Output Path regulator trim = 2.62V
#define IDT8V97003_REG_TRIM_CONFIG1_OUT_REG_TRIM_2V45    0x03 // (Undocumented) Output Path regulator trim = 2.45V

// IDT8V97003_REG_TRIM_CONFIG2
#define IDT8V97003_REG_TRIM_CONFIG2_PDCP_REG_TRIM_2V85   0x00 // (Undocumented) Phase detector / Charge pump regulator trim = 2.85V
#define IDT8V97003_REG_TRIM_CONFIG2_PDCP_REG_TRIM_2V73   0x10 // (Undocumented) Phase detector / Charge pump regulator trim = 2.73V
#define IDT8V97003_REG_TRIM_CONFIG2_PDCP_REG_TRIM_2V62   0x20 // (Undocumented) Phase detector / Charge pump regulator trim = 2.62V
#define IDT8V97003_REG_TRIM_CONFIG2_PDCP_REG_TRIM_2V45   0x30 // (Undocumented) Phase detector / Charge pump regulator trim = 2.45V
#define IDT8V97003_REG_TRIM_CONFIG2_FB_REG_TRIM_2V85     0x00 // (Undocumented) Feedback Path regulator trim = 2.85V
#define IDT8V97003_REG_TRIM_CONFIG2_FB_REG_TRIM_2V73     0x01 // (Undocumented) Feedback Path regulator trim = 2.73V
#define IDT8V97003_REG_TRIM_CONFIG2_FB_REG_TRIM_2V62     0x02 // (Undocumented) Feedback Path regulator trim = 2.62V
#define IDT8V97003_REG_TRIM_CONFIG2_FB_REG_TRIM_2V45     0x03 // (Undocumented) Feedback Path regulator trim = 2.45V

// IDT8V97003_REG_TRIM_CONFIG3
#define IDT8V97003_REG_TRIM_CONFIG3_DIG_REG_TRIM_1V7     0x00 // (Undocumented) Digital regulator trim = 1.7V
#define IDT8V97003_REG_TRIM_CONFIG3_DIG_REG_TRIM_1V6     0x10 // (Undocumented) Digital regulator trim = 1.6V
#define IDT8V97003_REG_TRIM_CONFIG3_DIG_REG_TRIM_1V5     0x20 // (Undocumented) Digital regulator trim = 1.5V
#define IDT8V97003_REG_TRIM_CONFIG3_DIG_REG_TRIM_1V35    0x30 // (Undocumented) Digital regulator trim = 1.35V
#define IDT8V97003_REG_TRIM_CONFIG3_REF_REG_TRIM_2V85    0x00 // (Undocumented) Reference Input Path regulator trim = 2.85V
#define IDT8V97003_REG_TRIM_CONFIG3_REF_REG_TRIM_2V73    0x01 // (Undocumented) Reference Input Path regulator trim = 2.73V
#define IDT8V97003_REG_TRIM_CONFIG3_REF_REG_TRIM_2V62    0x02 // (Undocumented) Reference Input Path regulator trim = 2.62V
#define IDT8V97003_REG_TRIM_CONFIG3_REF_REG_TRIM_2V45    0x03 // (Undocumented) Reference Input Path regulator trim = 2.45V

// IDT8V97003_REG_LD_CAL_VCO_STATUS
#define IDT8V97003_REG_LD_CAL_VCO_STATUS_DIG_LOCK         BIT(7)
#define IDT8V97003_REG_LD_CAL_VCO_STATUS_BAND_SEL_DONE    BIT(6)
#define IDT8V97003_REG_LD_CAL_VCO_STATUS_VCO_STS          0x0F

// IDT8V97003_REG_LOSS_LOCK
#define IDT8V97003_REG_LOSS_LOCK_LOSS_LOCK               BIT(2)

class IDT8V97003
{
public:
    enum RFOutput : uint8_t
    {
        RFOUT_A = 0,
        RFOUT_B = 1
    };
    enum PowerFlags : uint8_t
    {
        PWR_REF_VREG = BIT(0),
        PWR_PDCP_VREG = BIT(1),
        PWR_FB_VREG = BIT(2),
        PWR_OUTA_VREG = BIT(3),
        PWR_OUTB_BUF_VREG = BIT(4),
        PWR_ANA_VREG = BIT(5),
        PWR_VCO = BIT(6),
        PWR_CHIP_ENABLE = BIT(7),
        PWR_ALL = 0xFF
    };
    struct VCOBand
    {
        uint8_t vco;
        uint8_t dig_band;
    };
    enum PFDPulseWidth : uint16_t
    {
        PFD_PW_260ps = 260,
        PFD_PW_348ps = 348,
        PFD_PW_487ps = 487,
        PFD_PW_583ps = 583
    };
    struct RefPathConfig
    {
        bool doubler_en;
        uint8_t mult;
        uint16_t r_div;
    };
    struct ChargePumpConfig
    {
        double icp_pmos;
        double icp_nmos;
        double icp_bleeder;
    };
    enum LDPinMode
    {
        LD_MODE_LD = 0,
        LD_MODE_CAL_DONE = 1,
        LD_MODE_LOW = 2,
        LD_MODE_HIGH = 3
    };
    enum LDPrecision : uint16_t
    {
        LD_PREC_0p5ns = 500,
        LD_PREC_1p0ns = 1000,
        LD_PREC_1p8ns = 1800,
        LD_PREC_3p0ns = 3000,
        LD_PREC_6p4ns = 6400,
        LD_PREC_10p4ns = 10400
    };

    struct SPIConfig
    {
        AXISPI *controller;
        uint32_t ss_mask;
    };
    struct GPIOConfig
    {
        AXIGPIO *controller;
        uint8_t gpio;
        bool invert;
    };

private:
    void readReg(uint8_t reg, uint8_t *dst, uint8_t count);
    inline uint8_t readReg(uint8_t reg)
    {
        uint8_t val;

        this->readReg(reg, &val, 1);

        return val;
    }
    inline uint16_t readReg16(uint8_t reg)
    {
        uint8_t val[2];

        this->readReg(reg, val, 2);

        return ((uint16_t)val[1] << 8) | val[0];
    }
    inline uint32_t readReg32(uint8_t reg)
    {
        uint8_t val[4];

        this->readReg(reg, val, 4);

        return ((uint32_t)val[3] << 24) | ((uint32_t)val[2] << 16) | ((uint32_t)val[1] << 8) | val[0];
    }
    void writeReg(uint8_t reg, uint8_t *src, uint8_t count);
    inline void writeReg(uint8_t reg, uint8_t val)
    {
        this->writeReg(reg, &val, 1);
    }
    inline void writeReg16(uint8_t reg, uint16_t val)
    {
        uint8_t buf[2];

        buf[0] = val & 0xFF;
        buf[1] = (val >> 8) & 0xFF;

        this->writeReg(reg, buf, 2);
    }
    inline void writeReg32(uint8_t reg, uint32_t val)
    {
        uint8_t buf[4];

        buf[0] = val & 0xFF;
        buf[1] = (val >> 8) & 0xFF;
        buf[2] = (val >> 16) & 0xFF;
        buf[3] = (val >> 24) & 0xFF;

        this->writeReg(reg, buf, 4);
    }
    inline void rmwReg(uint8_t reg, uint8_t mask, uint8_t val)
    {
        this->writeReg(reg, (this->readReg(reg) & mask) | val);
    }

    void transferDoubleBuffer()
    {
        this->writeReg(IDT8V97003_REG_BUF_TRANSFER, IDT8V97003_REG_BUF_TRANSFER_TRANSFER_ON);
    }

    bool _isMuted(IDT8V97003::RFOutput output);
    void _mute(IDT8V97003::RFOutput output, bool mute = true);

    uint32_t _getReferenceDoublerInputFrequency();
    inline uint32_t _getReferenceDoublerOutputFrequency()
    {
        return this->_getReferenceDoublerInputFrequency() * 2;
    }
    uint32_t _getReferenceMultiplierInputFrequency();
    uint32_t _getReferenceMultiplierOutputFrequency();
    uint32_t _getReferenceDividerInputFrequency();
    uint32_t _getReferenceDividerOutputFrequency();
    inline uint32_t _getPFDFrequency()
    {
        return this->_getReferenceDividerOutputFrequency();
    }

    uint64_t _getVCOFrequency();
public:
    IDT8V97003(IDT8V97003::SPIConfig spi, IDT8V97003::GPIOConfig ce_gpio = {nullptr, 0, false}, IDT8V97003::GPIOConfig mute_gpio = {nullptr, 0, false}, IDT8V97003::GPIOConfig sync_gpio = {nullptr, 0, false}, IDT8V97003::GPIOConfig ld_gpio = {nullptr, 0, false}, IDT8V97003::GPIOConfig reset_gpio = {nullptr, 0, false});
    ~IDT8V97003();

    void init();

    uint8_t getChipVersion()
    {
        return this->readReg(IDT8V97003_REG_CHIP_VERSION);
    }
    uint8_t getChipOption()
    {
        return this->readReg(IDT8V97003_REG_CHIP_OPTION);
    }

    void reset();

    void powerUp(IDT8V97003::PowerFlags flags = IDT8V97003::PowerFlags::PWR_ALL);
    void powerDown(IDT8V97003::PowerFlags flags = IDT8V97003::PowerFlags::PWR_ALL);

    bool isMuted();
    void mute(bool mute = true);
    inline void unmute()
    {
        this->mute(false);
    }
    inline bool isMuted(IDT8V97003::RFOutput output)
    {
        std::lock_guard<std::mutex> lock(this->mutex);

        return this->_isMuted(output);
    }
    inline void mute(IDT8V97003::RFOutput output, bool mute = true)
    {
        std::lock_guard<std::mutex> lock(this->mutex);

        this->_mute(output, mute);
    }
    inline void unmute(IDT8V97003::RFOutput output)
    {
        this->mute(output, false);
    }
    bool getMuteUntilLocked()
    {
        return !!(this->readReg(IDT8V97003_REG_RFOUTA_ENA) & IDT8V97003_REG_RFOUTA_ENA_MUTE_UNTIL_LD);
    }
    void setMuteUntilLocked(bool mute);

    void enableRFOutput(IDT8V97003::RFOutput output, bool enable = true);
    inline void disableRFOutput(IDT8V97003::RFOutput output)
    {
        this->enableRFOutput(output, false);
    }
    void setRFOutputPower(IDT8V97003::RFOutput output, uint8_t power);
    uint8_t getRFOutputPower(IDT8V97003::RFOutput output);

    double getTemperature();

    uint8_t getCurrentVCO()
    {
        return this->readReg(IDT8V97003_REG_LD_CAL_VCO_STATUS) & IDT8V97003_REG_LD_CAL_VCO_STATUS_VCO_STS;
    }
    uint8_t getCurrentDigitalBand()
    {
        return this->readReg(IDT8V97003_REG_DIG_BAND_STATUS) & 0x7F;
    }
    IDT8V97003::VCOBand getCurrentVCOBand();
    void forceVCOBand(bool force, IDT8V97003::VCOBand band = {0, 0});

    bool isPLLLocked()
    {
        return !!(this->readReg(IDT8V97003_REG_LD_CAL_VCO_STATUS) & IDT8V97003_REG_LD_CAL_VCO_STATUS_DIG_LOCK);
    }
    bool isBandSelectDone()
    {
        return !!(this->readReg(IDT8V97003_REG_LD_CAL_VCO_STATUS) & IDT8V97003_REG_LD_CAL_VCO_STATUS_BAND_SEL_DONE);
    }

    void configReferenceInput(uint32_t freq, bool diff = false);
    void configPFD(uint32_t freq, IDT8V97003::PFDPulseWidth pw = IDT8V97003::PFDPulseWidth::PFD_PW_260ps);
    void configPFD(IDT8V97003::RefPathConfig ref_cfg, IDT8V97003::PFDPulseWidth pw = IDT8V97003::PFDPulseWidth::PFD_PW_260ps);
    inline uint32_t getReferenceFrequency()
    {
        std::lock_guard<std::mutex> lock(this->mutex);

        return this->ref_freq;
    }
    inline uint32_t getReferenceDoublerInputFrequency()
    {
        std::lock_guard<std::mutex> lock(this->mutex);

        return this->_getReferenceDoublerInputFrequency();
    }
    inline uint32_t getReferenceDoublerOutputFrequency()
    {
        std::lock_guard<std::mutex> lock(this->mutex);

        return this->_getReferenceDoublerOutputFrequency();
    }
    inline uint32_t getReferenceMultiplierInputFrequency()
    {
        std::lock_guard<std::mutex> lock(this->mutex);

        return this->_getReferenceMultiplierInputFrequency();
    }
    inline uint32_t getReferenceMultiplierOutputFrequency()
    {
        std::lock_guard<std::mutex> lock(this->mutex);

        return this->_getReferenceMultiplierOutputFrequency();
    }
    inline uint32_t getReferenceDividerInputFrequency()
    {
        std::lock_guard<std::mutex> lock(this->mutex);

        return this->_getReferenceDividerInputFrequency();
    }
    inline uint32_t getReferenceDividerOutputFrequency()
    {
        std::lock_guard<std::mutex> lock(this->mutex);

        return this->_getReferenceDividerOutputFrequency();
    }
    inline uint32_t getPFDFrequency()
    {
        return this->getReferenceDividerOutputFrequency();
    }

    void configChargePump(IDT8V97003::ChargePumpConfig cfg);
    IDT8V97003::ChargePumpConfig getChargePumpConfig();
    double getChargePumpPositiveCurrent();
    void setChargePumpPositiveCurrent(double current);
    double getChargePumpNegativeCurrent();
    void setChargePumpNegativeCurrent(double current);
    double getChargePumpBleederCurrent();
    void setChargePumpBleederCurrent(double current);

    void enableLockDetect(bool enable = true);
    inline void disableLockDetect()
    {
        this->enableLockDetect(false);
    }
    void enableAutoRecal(bool enable = true);
    inline void disableAutoRecal()
    {
        this->enableAutoRecal(false);
    }
    IDT8V97003::LDPrecision getLockDetectPrecision();
    void setLockDetectPrecision(IDT8V97003::LDPrecision prec);
    IDT8V97003::LDPinMode getLockDetectPinMode();
    void setLockDetectPinMode(IDT8V97003::LDPinMode mode);

    inline uint64_t getVCOFrequency()
    {
        std::lock_guard<std::mutex> lock(this->mutex);

        return this->_getVCOFrequency();
    }
    uint64_t getFrequency();
    void setFrequency(uint64_t freq, int32_t cal_timeout = 5000, int32_t lock_timeout = 5000);

    double getPhase();
    void setPhase(double phase);

private:
    IDT8V97003::SPIConfig spi;
    IDT8V97003::GPIOConfig ce_gpio;
    IDT8V97003::GPIOConfig mute_gpio;
    IDT8V97003::GPIOConfig sync_gpio;
    IDT8V97003::GPIOConfig ld_gpio;
    IDT8V97003::GPIOConfig reset_gpio;
    std::mutex mutex;

    uint32_t ref_freq;

    uint8_t cached_rfout_pwr[2];
};