#pragma once

#include <cstdint>
#include <unistd.h>
#include <mutex>
#include "AXIQuadSPI.hpp"
#include "AXIGPIO.hpp"
#include "Utils.hpp"

#define REG_SPI_CONF                               0x000 /* SPI Configuration */
#define REG_MULTICHIP_SYNC_AND_TX_MON_CTRL         0x001 /* Multi-Chip Sync and TX Mon Control */
#define REG_TX_ENABLE_FILTER_CTRL                  0x002 /* TX Enable & Filter Control */
#define REG_RX_ENABLE_FILTER_CTRL                  0x003 /* RX Enable & Filter  Control */
#define REG_INPUT_SELECT                           0x004 /* Input Select */
#define REG_RFPLL_DIVIDERS                         0x005 /* RFPLL Dividers */
#define REG_RX_CLOCK_DATA_DELAY                    0x006 /* RX Clock & Data  Delay */
#define REG_TX_CLOCK_DATA_DELAY                    0x007 /* TX Clock & Data Delay */
#define REG_CLOCK_ENABLE                           0x009 /* Clock Enable */
#define REG_BBPLL                                  0x00A /* BBPLL */
#define REG_TEMP_OFFSET                            0x00B /* Offset */
#define REG_START_TEMP_READING                     0x00C /* Start Temp Reading */
#define REG_TEMP_SENSE2                            0x00D /* Temp Sense2 */
#define REG_TEMPERATURE                            0x00E /* Temperature */
#define REG_TEMP_SENSOR_CONFIG                     0x00F /* Temp Sensor Config */
#define REG_PARALLEL_PORT_CONF_1                   0x010 /* Parallel Port Configuration 1 */
#define REG_PARALLEL_PORT_CONF_2                   0x011 /* Parallel Port Configuration 2 */
#define REG_PARALLEL_PORT_CONF_3                   0x012 /* Parallel Port Configuration 3 */
#define REG_ENSM_MODE                              0x013 /* ENSM Mode */
#define REG_ENSM_CONFIG_1                          0x014 /* ENSM Config 1 */
#define REG_ENSM_CONFIG_2                          0x015 /* ENSM Config 2 */
#define REG_CALIBRATION_CTRL                       0x016 /* Calibration Control */
#define REG_STATE                                  0x017 /* State */
#define REG_AUXDAC_1_WORD                          0x018 /* AuxDAC 1 Word */
#define REG_AUXDAC_2_WORD                          0x019 /* AuxDAC 2 Word */
#define REG_AUXDAC_1_CONFIG                        0x01A /* AuxDAC 1 Config */
#define REG_AUXDAC_2_CONFIG                        0x01B /* AuxDAC 2 Config */
#define REG_AUXADC_CLOCK_DIVIDER                   0x01C /* AuxADC Clock Divider */
#define REG_AUXADC_CONFIG                          0x01D /* Aux ADC Config */
#define REG_AUXADC_WORD_MSB                        0x01E /* AuxADC Word MSB */
#define REG_AUXADC_LSB                             0x01F /* AuxADC LSB */
#define REG_AUTO_GPO                               0x020 /* Auto GPO */
#define REG_AGC_GAIN_LOCK_DELAY                    0x021 /* AGC Gain Lock Delay */
#define REG_AGC_ATTACK_DELAY                       0x022 /* AGC Attack Delay */
#define REG_AUXDAC_ENABLE_CTRL                     0x023 /* AuxDAC Enable Control */
#define REG_RX_LOAD_SYNTH_DELAY                    0x024 /* RX Load Synth Delay */
#define REG_TX_LOAD_SYNTH_DELAY                    0x025 /* TX Load Synth Delay */
#define REG_EXTERNAL_LNA_CTRL                      0x026 /* External LNA control */
#define REG_GPO_FORCE_AND_INIT                     0x027 /* GPO Force and Init */
#define REG_GPO0_RX_DELAY                          0x028 /* GPO0 RX delay */
#define REG_GPO1_RX_DELAY                          0x029 /* GPO1 RX delay */
#define REG_GPO2_RX_DELAY                          0x02A /* GPO2 RX delay */
#define REG_GPO3_RX_DELAY                          0x02B /* GPO3 RX delay */
#define REG_GPO0_TX_DELAY                          0x02C /* GPO0 TX Delay */
#define REG_GPO1_TX_DELAY                          0x02D /* GPO1 TX Delay */
#define REG_GPO2_TX_DELAY                          0x02E /* GPO2 TX Delay */
#define REG_GPO3_TX_DELAY                          0x02F /* GPO3 TX Delay */
#define REG_AUXDAC1_RX_DELAY                       0x030 /* AuxDAC1 RX Delay */
#define REG_AUXDAC1_TX_DELAY                       0x031 /* AuxDAC1 TX Delay */
#define REG_AUXDAC2_RX_DELAY                       0x032 /* AuxDAC2 RX Delay */
#define REG_AUXDAC2_TX_DELAY                       0x033 /* AuxDAC2 TX Delay */
#define REG_CTRL_OUTPUT_POINTER                    0x035 /* Control Output Pointer */
#define REG_CTRL_OUTPUT_ENABLE                     0x036 /* Control Output Enable */
#define REG_PRODUCT_ID                             0x037 /* Product ID */
#define REG_REFERENCE_CLOCK_CYCLES                 0x03A /* Reference Clock Cycles */
#define REG_DIGITAL_IO_CTRL                        0x03B /* Digital I/O Control */
#define REG_LVDS_BIAS_CTRL                         0x03C /* LVDS Bias control */
#define REG_LVDS_INVERT_CTRL1                      0x03D /* LVDS Invert control1 */
#define REG_LVDS_INVERT_CTRL2                      0x03E /* LVDS Invert control2 */
#define REG_SDM_CTRL_1                             0x03F /* SDM Control 1 */
#define REG_FRACT_BB_FREQ_WORD_1                   0x041 /* Fractional BB Freq Word 1 */
#define REG_FRACT_BB_FREQ_WORD_2                   0x042 /* Fractional BB Freq Word 2 */
#define REG_FRACT_BB_FREQ_WORD_3                   0x043 /* Fractional BB Freq Word 3 */
#define REG_INTEGER_BB_FREQ_WORD                   0x044 /* Integer BB Freq Word */
#define REG_CLOCK_CTRL                             0x045 /* Clock Control */
#define REG_CP_CURRENT                             0x046 /* CP Current */
#define REG_CP_BLEED_CURRENT                       0x047 /* CP Bleed Current */
#define REG_LOOP_FILTER_1                          0x048 /* Loop Filter 1 */
#define REG_LOOP_FILTER_2                          0x049 /* Loop Filter 2 */
#define REG_LOOP_FILTER_3                          0x04A /* Loop Filter 3 */
#define REG_VCO_CTRL                               0x04B /* VCO Control */
#define REG_VCO_PROGRAM_1                          0x04C
#define REG_VCO_PROGRAM_2                          0x04D
#define REG_SDM_CTRL                               0x04E /* SDM Control */
#define REG_RX_SYNTH_POWER_DOWN_OVERRIDE           0x050 /* RX Synth Power Down Override */
#define REG_TX_SYNTH_POWER_DOWN_OVERRIDE           0x051 /* TX Synth Power Down Override */
#define REG_RX_ANALOG_POWER_DOWN_OVERRIDE_1        0x052 /* RX Analog Power Down Override 1 */
#define REG_RX_ANALOG_POWER_DOWN_OVERRIDE_2        0x053 /* RX Analog Power Down Override 2 */
#define REG_RX1_ADC_POWER_DOWN_OVERRIDE            0x054 /* RX1 ADC Power Down Override */
#define REG_RX2_ADC_POWER_DOWN_OVERRIDE            0x055 /* RX2 ADC Power Down Override */
#define REG_TX_ANALOG_POWER_DOWN_OVERRIDE_1        0x056 /* TX Analog Power Down Override 1 */
#define REG_ANALOG_POWER_DOWN_OVERRIDE             0x057 /* Analog Power Down Override */
#define REG_MISC_POWER_DOWN_OVERRIDE               0x058 /* Misc Power Down Override */
#define REG_CH_1_OVERFLOW                          0x05E /* CH 1 Overflow */
#define REG_CH_2_OVERFLOW                          0x05F /* CH 2 Overflow */
#define REG_TX_FILTER_COEF_ADDR                    0x060 /* TX Filter Coefficient Address */
#define REG_TX_FILTER_COEF_WRITE_DATA_1            0x061 /* TX Filter Coefficient Write Data 1 */
#define REG_TX_FILTER_COEF_WRITE_DATA_2            0x062 /* TX Filter Coefficient Write Data 2 */
#define REG_TX_FILTER_COEF_READ_DATA_1             0x063 /* TX Filter Coefficient Read Data 1 */
#define REG_TX_FILTER_COEF_READ_DATA_2             0x064 /* TX Filter Coefficient Read Data 2 */
#define REG_TX_FILTER_CONF                         0x065 /* TX Filter Configuration */
#define REG_TX_MON_LOW_GAIN                        0x067 /* TX Mon Low Gain */
#define REG_TX_MON_HIGH_GAIN                       0x068 /* TX Mon High Gain */
#define REG_TX_MON_DELAY                           0x069 /* TX Mon Delay */
#define REG_TX_LEVEL_THRESH                        0x06A /* TX Level Threshold */
#define REG_TX_RSSI1                               0x06B /* TX RSSI1 */
#define REG_TX_RSSI2                               0x06C /* TX RSSI2 */
#define REG_TX_RSSI_LSB                            0x06D /* TX RSSI LSB */
#define REG_TPM_MODE_ENABLE                        0x06E /* TPM Mode Enable */
#define REG_TX_MON_TEMP_GAIN_COEF                  0x06F /* Temp Gain Coefficient */
#define REG_TX_MON_1_CONFIG                        0x070 /* TX Mon 1 Config */
#define REG_TX_MON_2_CONFIG                        0x071 /* TX Mon 2 Config */
#define REG_TX1_ATTEN_0                            0x073 /* TX1 Atten 0 */
#define REG_TX1_ATTEN_1                            0x074 /* TX1 Atten 1 */
#define REG_TX2_ATTEN_0                            0x075 /* TX2 Atten 0 */
#define REG_TX2_ATTEN_1                            0x076 /* TX2 Atten 1 */
#define REG_TX_ATTEN_OFFSET                        0x077 /* TX Atten Offset */
#define REG_TX_ATTEN_THRESH                        0x078 /* TX Atten Threshold */
#define REG_TX1_DIG_ATTEN                          0x079 /* TX1 Dig Attenuation */
#define REG_TX2_DIG_ATTEN                          0x07C /* TX2 Dig Attenuation */
#define REG_TX1_SYMBOL_ATTEN                       0x07F /* TX1 Symbol Attenuation */
#define REG_TX2_SYMBOL_ATTEN                       0x080 /* TX2 Symbol Attenuation */
#define REG_TX_SYMBOL_ATTEN_CONFIG                 0x081 /* TX Symbol Atten Config */
#define REG_TX1_OUT_1_PHASE_CORR                   0x08E /* TX1 Out 1 Phase Corr */
#define REG_TX1_OUT_1_GAIN_CORR                    0x08F /* TX1 Out 1 Gain Corr */
#define REG_TX2_OUT_1_PHASE_CORR                   0x090 /* TX2 Out 1 Phase Corr */
#define REG_TX2_OUT_1_GAIN_CORR                    0x091 /* TX2 Out 1 Gain Corr */
#define REG_TX1_OUT_1_OFFSET_I                     0x092 /* TX1 Out 1 Offset I */
#define REG_TX1_OUT_1_OFFSET_Q                     0x093 /* TX1 Out 1 Offset Q */
#define REG_TX2_OUT_1_OFFSET_I                     0x094 /* TX2 Out 1 Offset I */
#define REG_TX2_OUT_1_OFFSET_Q                     0x095 /* TX2 Out 1 Offset Q */
#define REG_TX1_OUT_2_PHASE_CORR                   0x096 /* TX1 Out 2 Phase Corr */
#define REG_TX1_OUT_2_GAIN_CORR                    0x097 /* TX1 Out 2 Gain Corr */
#define REG_TX2_OUT_2_PHASE_CORR                   0x098 /* TX2 Out 2 Phase Corr */
#define REG_TX2_OUT_2_GAIN_CORR                    0x099 /* TX2 Out 2 Gain Corr */
#define REG_TX1_OUT_2_OFFSET_I                     0x09A /* TX1 Out 2 Offset I */
#define REG_TX1_OUT_2_OFFSET_Q                     0x09B /* TX1 Out 2 Offset Q */
#define REG_TX2_OUT_2_OFFSET_I                     0x09C /* TX2 Out 2 Offset I */
#define REG_TX2_OUT_2_OFFSET_Q                     0x09D /* TX2 Out 2 Offset Q */
#define REG_TX_FORCE_BITS                          0x09F /* Force Bits */
#define REG_QUAD_CAL_NCO_FREQ_PHASE_OFFSET         0x0A0 /* Quad Cal NCO Freq & Phase Offset */
#define REG_QUAD_CAL_CTRL                          0x0A1 /* Quad Cal Control */
#define REG_KEXP_1                                 0x0A2 /* Kexp 1 */
#define REG_KEXP_2                                 0x0A3 /* Kexp 2 */
#define REG_QUAD_SETTLE_COUNT                      0x0A4 /* QUAD Settle count */
#define REG_MAG_FTEST_THRESH                       0x0A5 /* Mag. Ftest Thresh */
#define REG_MAG_FTEST_THRESH_2                     0x0A6 /* Mag. Ftest Thresh 2 */
#define REG_QUAD_CAL_STATUS_TX1                    0x0A7 /* Quad cal status TX1 */
#define REG_QUAD_CAL_STATUS_TX2                    0x0A8 /* Quad cal status TX2 */
#define REG_QUAD_CAL_COUNT                         0x0A9 /* Quad cal Count */
#define REG_TX_QUAD_FULL_LMT_GAIN                  0x0AA /* TX Quad Full/LMT Gain */
#define REG_SQUARER_CONFIG                         0x0AB /* Squarer Config */
#define REG_TX_QUAD_CAL_ATTEN                      0x0AC /* TX Quad Cal Atten */
#define REG_THRESH_ACCUM                           0x0AD /* Thresh Accum */
#define REG_TX_QUAD_LPF_GAIN                       0x0AE /* TX Quad LPF Gain */
#define REG_TXDAC_VDS_I                            0x0B0 /* TXDAC Vds I */
#define REG_TXDAC_VDS_Q                            0x0B1 /* TXDAC Vds Q */
#define REG_TXDAC_GN_I                             0x0B2 /* TXDAC gn I */
#define REG_TXDAC_GN_Q                             0x0B3 /* TXDAC gn Q */
#define REG_TXBBF_OPAMP_A                          0x0C0 /* TXBBF OpAmp A */
#define REG_TXBBF_OPAMP_B                          0x0C1 /* TXBBF OpAmp B */
#define REG_TX_BBF_R1                              0x0C2 /* TX BBF R1 */
#define REG_TX_BBF_R2                              0x0C3 /* TX BBF R2 */
#define REG_TX_BBF_R3                              0x0C4 /* TX BBF R3 */
#define REG_TX_BBF_R4                              0x0C5 /* TX BBF R4 */
#define REG_TX_BBF_RP                              0x0C6 /* TX BBF RP */
#define REG_TX_BBF_C1                              0x0C7 /* TX BBF C1 */
#define REG_TX_BBF_C2                              0x0C8 /* TX BBF C2 */
#define REG_TX_BBF_CP                              0x0C9 /* TX BBF Cp */
#define REG_TX_TUNE_CTRL                           0x0CA /* TX Tune Control */
#define REG_TX_BBF_R2B                             0x0CB /* TX BBF R2b */
#define REG_TX_BBF_TUNE                            0x0CC /* TX BBF Tune */
#define REG_CONFIG0                                0x0D0 /* Config0 */
#define REG_RESISTOR                               0x0D1 /* Resistor */
#define REG_CAPACITOR                              0x0D2 /* Capacitor */
#define REG_LO_CM                                  0x0D3 /* LO CM */
#define REG_TX_BBF_TUNE_DIVIDER                    0x0D6 /* TX BBF Tune Divider */
#define REG_TX_BBF_TUNE_MODE                       0x0D7 /* TX BBF Tune Mode */
#define REG_RX_FILTER_COEF_ADDR                    0x0F0 /* RX Filter Coeff Addr */
#define REG_RX_FILTER_COEF_DATA_1                  0x0F1 /* RX Filter Coeff Data 1 */
#define REG_RX_FILTER_COEF_DATA_2                  0x0F2 /* RX Filter Coeff Data 2 */
#define REG_RX_FILTER_COEF_READ_DATA_1             0x0F3 /* RX Filter Coeff Read Data 1 */
#define REG_RX_FILTER_COEF_READ_DATA_2             0x0F4 /* RX Filter Coeff Read Data 2 */
#define REG_RX_FILTER_CONFIG                       0x0F5 /* RX Filter Config */
#define REG_RX_FILTER_GAIN                         0x0F6 /* RX Filter Gain */
#define REG_AGC_CONFIG_1                           0x0FA /* AGC Config1 */
#define REG_AGC_CONFIG_2                           0x0FB /* AGC config2 */
#define REG_AGC_CONFIG_3                           0x0FC /* AGC Config3 */
#define REG_MAX_LMT_FULL_GAIN                      0x0FD /* Max LMT/Full Gain */
#define REG_PEAK_WAIT_TIME                         0x0FE /* Peak Wait Time */
#define REG_DIGITAL_GAIN                           0x100 /* Digital Gain */
#define REG_AGC_LOCK_LEVEL                         0x101 /* AGC Lock Level */
#define REG_ADC_NOISE_CORRECTION_FACTOR            0x102 /* ADC noise Correction Factor */
#define REG_GAIN_STP_CONFIG1                       0x103 /* Gain Step Config1 */
#define REG_ADC_SMALL_OVERLOAD_THRESH              0x104 /* ADC Small Overload Threshold */
#define REG_ADC_LARGE_OVERLOAD_THRESH              0x105 /* ADC Large Overload Threshold */
#define REG_GAIN_STP_CONFIG_2                      0x106 /* Gain Step Config 2 */
#define REG_SMALL_LMT_OVERLOAD_THRESH              0x107 /* Small LMT Overload Threshold */
#define REG_LARGE_LMT_OVERLOAD_THRESH              0x108 /* Large LMT Overload Threshold */
#define REG_RX1_MANUAL_LMT_FULL_GAIN               0x109 /* RX1 Manual LMT/Full Gain */
#define REG_RX1_MANUAL_LPF_GAIN                    0x10A /* RX1 Manual LPF gain */
#define REG_RX1_MANUAL_DIGITALFORCED_GAIN          0x10B /* RX1 Manual Digital/Forced Gain */
#define REG_RX2_MANUAL_LMT_FULL_GAIN               0x10C /* RX2 Manual LMT/Full Gain */
#define REG_RX2_MANUAL_LPF_GAIN                    0x10D /* RX2 Manual LPF Gain */
#define REG_RX2_MANUAL_DIGITALFORCED_GAIN          0x10E /* RX2 Manual Digital/Forced Gain */
#define REG_FAST_CONFIG_1                          0x110 /* Config 1 */
#define REG_FAST_CONFIG_2_SETTLING_DELAY           0x111 /* Config 2 & Settling Delay */
#define REG_FAST_ENERGY_LOST_THRESH                0x112 /* Energy Lost Threshold */
#define REG_FAST_STRONGER_SIGNAL_THRESH            0x113 /* Stronger Signal Threshold */
#define REG_FAST_LOW_POWER_THRESH                  0x114 /* Low Power Threshold */
#define REG_FAST_STRONG_SIGNAL_FREEZE              0x115 /* Strong Signal Freeze */
#define REG_FAST_FINAL_OVER_RANGE_AND_OPT_GAIN     0x116 /* Final Over Range and Opt Gain */
#define REG_FAST_ENERGY_DETECT_COUNT               0x117 /* Energy Detect Count */
#define REG_FAST_AGCLL_UPPER_LIMIT                 0x118 /* AGCLL Upper Limit */
#define REG_FAST_GAIN_LOCK_EXIT_COUNT              0x119 /* Gain Lock Exit Count */
#define REG_FAST_INITIAL_LMT_GAIN_LIMIT            0x11A /* Initial LMT Gain Limit */
#define REG_FAST_INCREMENT_TIME                    0x11B /* Increment Time */
#define REG_AGC_INNER_LOW_THRESH                   0x120 /* AGC Inner Low Threshold */
#define REG_LMT_OVERLOAD_COUNTERS                  0x121 /* LMT Overload Counters */
#define REG_ADC_OVERLOAD_COUNTERS                  0x122 /* ADC Overload Counters */
#define REG_GAIN_STP1                              0x123 /* Gain Step1 */
#define REG_GAIN_UPDATE_COUNTER1                   0x124 /* Gain Update Counter1 */
#define REG_GAIN_UPDATE_COUNTER2                   0x125 /* Gain Update Counter2 */
#define REG_DIGITAL_SAT_COUNTER                    0x128 /* Digital Sat Counter */
#define REG_OUTER_POWER_THRESHS                    0x129 /* Outer Power Thresholds */
#define REG_GAIN_STP_2                             0x12A /* Gain Step 2 */
#define REG_EXT_LNA_HIGH_GAIN                      0x12C /* Ext LNA High Gain */
#define REG_EXT_LNA_LOW_GAIN                       0x12D /* Ext LNA Low Gain */
#define REG_GAIN_TABLE_ADDRESS                     0x130 /* Gain Table Address */
#define REG_GAIN_TABLE_WRITE_DATA1                 0x131 /* Gain Table Write Data1 */
#define REG_GAIN_TABLE_WRITE_DATA2                 0x132 /* Gain Table Write Data2 */
#define REG_GAIN_TABLE_WRITE_DATA3                 0x133 /* Gain Table Write Data 3 */
#define REG_GAIN_TABLE_READ_DATA1                  0x134 /* Gain Table Read Data 1 */
#define REG_GAIN_TABLE_READ_DATA2                  0x135 /* Gain Table Read Data 2 */
#define REG_GAIN_TABLE_READ_DATA3                  0x136 /* Gain Table Read Data 3 */
#define REG_GAIN_TABLE_CONFIG                      0x137 /* Gain Table Config */
#define REG_GM_SUB_TABLE_ADDRESS                   0x138 /* Gm Sub Table Address */
#define REG_GM_SUB_TABLE_GAIN_WRITE                0x139 /* Gm Sub Table Gain Word Write */
#define REG_GM_SUB_TABLE_BIAS_WRITE                0x13A /* Gm Sub Table Bias Word Write */
#define REG_GM_SUB_TABLE_CTRL_WRITE                0x13B /* Gm Sub Table Control Word Write */
#define REG_GM_SUB_TABLE_GAIN_READ                 0x13C /* Gm Sub Table Gain Word Read */
#define REG_GM_SUB_TABLE_BIAS_READ                 0x13D /* Gm Sub Table Bias Word Read */
#define REG_GM_SUB_TABLE_CTRL_READ                 0x13E /* Gm Sub Table Control Word Read */
#define REG_GM_SUB_TABLE_CONFIG                    0x13F /* Gm Sub Table Config */
#define REG_WORD_ADDRESS                           0x140 /* Word Address */
#define REG_GAIN_DIFF_WORDERROR_WRITE              0x141 /* Gain Diff Word/Error Write */
#define REG_GAIN_ERROR_READ                        0x142 /* Gain Error Read */
#define REG_CONFIG                                 0x143 /* Config */
#define REG_LNA_GAIN_DIFF_READ_BACK                0x144 /* LNA Gain Diff Read Back */
#define REG_MAX_MIXER_CALIBRATION_GAIN_INDEX       0x145 /* Max Mixer Calibration Gain Index */
#define REG_TEMP_GAIN_COEF                         0x146 /* Temp Gain Coefficient */
#define REG_SETTLE_TIME                            0x147 /* Settle Time */
#define REG_MEASURE_DURATION                       0x148 /* Measure Duration */
#define REG_CAL_TEMP_SENSOR_WORD                   0x149 /* Cal Temp sensor word */
#define REG_MEASURE_DURATION_01                    0x150 /* Measure Duration 0&1 */
#define REG_MEASURE_DURATION_23                    0x151 /* Measure Duration 2&3 */
#define REG_RSSI_WEIGHT_0                          0x152 /* RSSI Weight 0 */
#define REG_RSSI_WEIGHT_1                          0x153 /* RSSI Weight 1 */
#define REG_RSSI_WEIGHT_2                          0x154 /* RSSI Weight 2 */
#define REG_RSSI_WEIGHT_3                          0x155 /* RSSI Weight 3 */
#define REG_RSSI_DELAY                             0x156 /* RSSI delay */
#define REG_RSSI_WAIT_TIME                         0x157 /* RSSI wait time */
#define REG_RSSI_CONFIG                            0x158 /* RSSI Config */
#define REG_ADC_MEASURE_DURATION_01                0x159 /* ADC Measure Duration 0&1 */
#define REG_ADC_WEIGHT_0                           0x15A /* ADC Weight 0 */
#define REG_ADC_WEIGHT_1                           0x15B /* ADC Weight 1 */
#define REG_DEC_POWER_MEASURE_DURATION_0           0x15C /* Dec Power Measure Duration 0 */
#define REG_LNA_GAIN                               0x15D /* LNA Gain */
#define REG_CH1_ADC_POWER                          0x160 /* CH1 ADC Power */
#define REG_CH1_RX_FILTER_POWER                    0x161 /* CH1 RX filter Power */
#define REG_CH2_ADC_POWER                          0x162 /* CH2 ADC Power */
#define REG_CH2_RX_FILTER_POWER                    0x163 /* CH2 RX filter Power */
#define REG_RX_QUAD_CAL_LEVEL                      0x168 /* RX Quad Cal Level */
#define REG_CALIBRATION_CONFIG_1                   0x169 /* Calibration Config 1 */
#define REG_CALIBRATION_CONFIG_2                   0x16A /* Calibration config2 */
#define REG_CALIBRATION_CONFIG_3                   0x16B /* Calibration config3 */
#define REG_CALIB_COUNT                            0x16C /* Calib count */
#define REG_SETTLE_COUNT                           0x16D /* Settle count */
#define REG_RX_QUAD_GAIN1                          0x16E /* RX Quad gain1 */
#define REG_RX_QUAD_GAIN2                          0x16F /* RX Quad gain2 */
#define REG_RX1_INPUT_A_PHASE_CORR                 0x170 /* RX1 Input A Phase Corr */
#define REG_RX1_INPUT_A_GAIN_CORR                  0x171 /* RX1 Input A Gain Corr */
#define REG_RX2_INPUT_A_PHASE_CORR                 0x172 /* RX2 Input A Phase Corr */
#define REG_RX2_INPUT_A_GAIN_CORR                  0x173 /* RX2 Input A Gain Corr */
#define REG_RX1_INPUT_A_Q_OFFSET                   0x174 /* RX1 Input A Q" Offset */
#define REG_RX1_INPUT_A_OFFSETS                    0x175 /* RX1 Input A Offsets */
#define REG_INPUT_A_OFFSETS_1                      0x176 /* Input A Offsets 1 */
#define REG_RX2_INPUT_A_OFFSETS                    0x177 /* RX2 Input A Offsets */
#define REG_RX2_INPUT_A_I_OFFSET                   0x178 /* RX2 Input A "I" Offset */
#define REG_RX1_INPUT_BC_PHASE_CORR                0x179 /* RX1 Input B&C Phase Corr */
#define REG_RX1_INPUT_BC_GAIN_CORR                 0x17A /* RX1 Input B&C Gain Corr */
#define REG_RX2_INPUT_BC_PHASE_CORR                0x17B /* RX2 Input B&C Phase Corr */
#define REG_RX2_INPUT_BC_GAIN_CORR                 0x17C /* RX2 Input B&C Gain Corr */
#define REG_RX1_INPUT_BC_Q_OFFSET                  0x17D /* RX1 Input B&C "Q" Offset */
#define REG_RX1_INPUT_BC_OFFSETS                   0x17E /* RX1 Input B&C Offsets */
#define REG_INPUT_BC_OFFSETS_1                     0x17F /* Input B&C Offsets 1 */
#define REG_RX2_INPUT_BC_OFFSETS                   0x180 /* RX2 Input B&C Offsets */
#define REG_RX2_INPUT_BC_I_OFFSET                  0x181 /* RX2 Input B&C "I" Offset */
#define REG_FORCE_BITS                             0x182 /* Force Bits */
#define REG_WAIT_COUNT                             0x185 /* Wait Count */
#define REG_RF_DC_OFFSET_COUNT                     0x186 /* RF DC Offset Count */
#define REG_RF_DC_OFFSET_CONFIG_1                  0x187 /* RF DC Offset Config1 */
#define REG_RF_DC_OFFSET_ATTEN                     0x188 /* RF DC Offset Attenuation */
#define REG_INVERT_BITS                            0x189 /* Invert Bits */
#define REG_DC_OFFSET_CONFIG2                      0x18B /* DC Offset Config2 */
#define REG_RF_CAL_GAIN_INDEX                      0x18C /* RF Cal Gain Index */
#define REG_SOI_THRESH                             0x18D /* SOI Threshold */
#define REG_BB_DC_OFFSET_SHIFT                     0x190 /* BB DC Offset Shift */
#define REG_BB_DC_OFFSET_FAST_SETTLE_SHIFT         0x191 /* BB DC Offset Fast Settle Shift */
#define REG_BB_FAST_SETTLE_DUR                     0x192 /* BB Fast Settle Dur */
#define REG_BB_DC_OFFSET_COUNT                     0x193 /* BB DC Offset Count */
#define REG_BB_DC_OFFSET_ATTEN                     0x194 /* BB DC Offset Attenuation */
#define REG_RX1_BB_DC_WORD_I_MSB                   0x19A /* RX1 BB DC word I MSB */
#define REG_RX1_BB_DC_WORD_I_LSB                   0x19B /* RX1 BB DC word I LSB */
#define REG_RX1_BB_DC_WORD_Q_MSB                   0x19C /* RX1 BB DC word Q MSB */
#define REG_RX1_BB_DC_WORD_Q_LSB                   0x19D /* RX1 BB DC word Q LSB */
#define REG_RX2_BB_DC_WORD_I_MSB                   0x19E /* RX2 BB DC word I MSB */
#define REG_RX2_BB_DC_WORD_I_LSB                   0x19F /* RX2 BB DC word I LSB */
#define REG_RX2_BB_DC_WORD_Q_MSB                   0x1A0 /* RX2 BB DC word Q MSB */
#define REG_RX2_BB_DC_WORD_Q_LSB                   0x1A1 /* RX2 BB DC word Q LSB */
#define REG_BB_TRACK_CORR_WORD_I_MSB               0x1A2 /* BB Track corr word I MSB */
#define REG_BB_TRACK_CORR_WORD_I_LSB               0x1A3 /* BB Track corr word I LSB */
#define REG_BB_TRACK_CORR_WORD_Q_MSB               0x1A4 /* BB Track corr word Q MSB */
#define REG_BB_TRACK_CORR_WORD_Q_LSB               0x1A5 /* BB Track corr word Q LSB */
#define REG_RX1_RSSI_SYMBOL                        0x1A7 /* RX1 RSSI Symbol */
#define REG_RX1_RSSI_PREAMBLE                      0x1A8 /* RX1 RSSI preamble */
#define REG_RX2_RSSI_SYMBOL                        0x1A9 /* RX2 RSSI symbol */
#define REG_RX2_RSSI_PREAMBLE                      0x1AA /* RX2 RSSI preamble */
#define REG_SYMBOL_LSB                             0x1AB /* Symbol LSB */
#define REG_PREAMBLE_LSB                           0x1AC /* Preamble LSB */
#define REG_RX_PATH_GAIN_MSB                       0x1AD /* RX Path Gain */
#define REG_RX_PATH_GAIN_LSB                       0x1AE /* RX Path Gain */
#define REG_RX_DIFF_LNA_FORCE                      0x1B0 /* RX Diff LNA Force */
#define REG_RX_LNA_BIAS_COARSE                     0x1B1 /* RX LNA Bias Coarse */
#define REG_RX_LNA_BIAS_FINE_0                     0x1B2 /* RX LNA Bias Fine 0 */
#define REG_RX_LNA_BIAS_FINE_1                     0x1B3 /* RX LNA Bias Fine 1 */
#define REG_RX_MIX_GM_CONFIG                       0x1C0 /* RX Mix Gm Config */
#define REG_RX1_MIX_GM_FORCE                       0x1C1 /* RX1 Mix Gm Force */
#define REG_RX1_MIX_GM_BIAS_FORCE                  0x1C2 /* RX1 Mix Gm Bias (Force) */
#define REG_RX2_MIX_GM_FORCE                       0x1C3 /* RX2 Mix Gm Force */
#define REG_RX2_MIX_GM_BIAS_FORCE                  0x1C4 /* RX2 Mix Gm Bias (Force) */
#define REG_INPUT_A_MSBS                           0x1C8 /* Input A MSBs */
#define REG_INPUT_A_RX1_I                          0x1C9 /* Input A RX1 I */
#define REG_INPUT_A_RX1_Q                          0x1CA /* Input A RX1 Q */
#define REG_INPUT_A_RX2_I                          0x1CB /* Input A RX2 I */
#define REG_INPUT_A_RX2_Q                          0x1CC /* Input A RX2 Q */
#define REG_INPUTS_BC_RX1_I                        0x1CD /* Inputs B&C RX1 I */
#define REG_BAND1_RX1_Q                            0x1CE /* Band1 RX1 Q */
#define REG_INPUTS_BC_RX2_I                        0x1CF /* Inputs B&C RX2 I */
#define REG_INPUTS_BC_RX2_Q                        0x1D0 /* Inputs B&C RX2 Q */
#define REG_INPUTS_BC_MSBS                         0x1D1 /* Inputs B&C MSBs */
#define REG_FORCE_OS_DAC                           0x1D2 /* Force OS DAC */
#define REG_RX_MIX_LO_CM                           0x1D5 /* RX Mix LO CM */
#define REG_RX_CGB_SEG_ENABLE                      0x1D6 /* RX CGB Seg Enable */
#define REG_RX_MIX_INPUTBIAS                       0x1D7 /* RX Mix Input/Bias */
#define REG_RX_TIA_CONFIG                          0x1DB /* RX TIA Config */
#define REG_TIA1_C_LSB                             0x1DC /* TIA1 C LSB */
#define REG_TIA1_C_MSB                             0x1DD /* TIA1 C MSB */
#define REG_TIA2_C_LSB                             0x1DE /* TIA2 C LSB */
#define REG_TIA2_C_MSB                             0x1DF /* TIA2 C MSB */
#define REG_RX1_BBF_R1A                            0x1E0 /* RX1 BBF R1A */
#define REG_RX2_BBF_R1A                            0x1E1 /* RX2 BBF R1A */
#define REG_RX1_TUNE_CTRL                          0x1E2 /* RX1 Tune Control */
#define REG_RX2_TUNE_CTRL                          0x1E3 /* RX2 Tune Control */
#define REG_RX1_BBF_R5                             0x1E4 /* RX1 BBF R5 */
#define REG_RX2_BBF_R5                             0x1E5 /* RX2 BBF R5 */
#define REG_RX_BBF_R2346                           0x1E6 /* RX BBF R2346 */
#define REG_RX_BBF_C1_MSB                          0x1E7 /* RX BBF C1 MSB */
#define REG_RX_BBF_C1_LSB                          0x1E8 /* RX BBF C1 LSB */
#define REG_RX_BBF_C2_MSB                          0x1E9 /* RX BBF C2 MSB */
#define REG_RX_BBF_C2_LSB                          0x1EA /* RX BBF C2 LSB */
#define REG_RX_BBF_C3_MSB                          0x1EB /* RX BBF C3 MSB */
#define REG_RX_BBF_C3_LSB                          0x1EC /* RX BBF C3 LSB */
#define REG_RX_BBF_CC1_CTR                         0x1ED /* RX BBF CC1 Ctr */
#define REG_RX_BBF_POW_RZ_BYTE0                    0x1EE /* RX BBF Pow Rz Byte0 */
#define REG_RX_BBF_CC2_CTR                         0x1EF /* RX BBF CC2 Ctr */
#define REG_RX_BBF_POW_RZ_BYTE1                    0x1F0 /* RX BBF Pow Rz Byte1 */
#define REG_RX_BBF_CC3_CTR                         0x1F1 /* RX BBF CC3 Ctr */
#define REG_RX_BBF_R5_TUNE                         0x1F2 /* RX BBF R5 Tune */
#define REG_RX_BBF_TUNE                            0x1F3 /* RX BBF Tune */
#define REG_RX1_BBF_MAN_GAIN                       0x1F4 /* RX1 BBF Man Gain */
#define REG_RX2_BBF_MAN_GAIN                       0x1F5 /* RX2 BBF Man Gain */
#define REG_RX_BBF_TUNE_DIVIDE                     0x1F8 /* RX BBF Tune Divide */
#define REG_RX_BBF_TUNE_CONFIG                     0x1F9 /* RX BBF Tune Config */
#define REG_POLE_GAIN                              0x1FA /* Pole gain */
#define REG_RX_BBBW_MHZ                            0x1FB /* RX BBBW MHz */
#define REG_RX_BBBW_KHZ                            0x1FC /* RX BBBW kHz */
#define REG_FB_DAC_CLK_DELAY1                      0x201 /* FB DAC Clk Delay1 */
#define REG_FB_DAC_CLK_DELAY2                      0x202 /* FB DAC Clk Delay2 */
#define REG_FLASH_SAMPLE_CLK_DELAY_3P              0x203 /* Flash Sample Clk Delay 3p */
#define REG_FLASH_SAMPLE_CLK_DELAY_3N              0x204 /* Flash Sample Clk Delay 3n */
#define REG_TEST_MUX_2I                            0x205 /* Test MUX 2i */
#define REG_TEST_MUX_2Q                            0x206 /* Test MUX 2q */
#define REG_INTEGRATOR_1_RESISTANCE                0x207 /* Integrator 1 Resistance */
#define REG_INTEGRATOR_1_CAPACITANCE               0x208 /* Integrator 1 Capacitance */
#define REG_INTEGRATOR_23_RESISTANCE               0x209 /* Integrator 23 Resistance */
#define REG_INTEGRATOR_2_RESISTANCE                0x20A /* Integrator 2 Resistance */
#define REG_INTEGRATOR_2_CAPACITANCE               0x20B /* Integrator 2 Capacitance */
#define REG_INTEGRATOR_3_RESISTANCE                0x20C /* Integrator 3 Resistance */
#define REG_INTEGRATOR_3_CAPACITANCE               0x20D /* Integrator 3 Capacitance */
#define REG_INTEGRATOR_AMP_CC                      0x20E /* Integrator Amp Cc */
#define REG_INT_1_FB_DAC_NMOS_CURRENT_SOURCE       0x20F /* Int 1 FB DAC NMOS Current Source */
#define REG_INT_1_FB_DAC_NMOS_CASOADE_BIAS_CURRENT 0x210 /* Int 1 FB DAC NMOS Casoade Bias Current */
#define REG_INT_1_FB_DAC_PMOS_CURRENT_SOURCE       0x211 /* Int 1 FB DAC PMOS Current Source */
#define REG_INT_2_FB_DAC_NMOS_CURRENT_SOURCE       0x212 /* Int 2 FB DAC NMOS Current Source */
#define REG_INT_2_FB_DAC_NMOS_CASCODE_BIAS_CURRENT 0x213 /* Int 2 FB DAC NMOS Cascode Bias Current */
#define REG_INT_2_FB_DAC_PMOS_CURRENT_SOURCE       0x214 /* Int 2 FB DAC PMOS Current Source */
#define REG_INT_3_FB_DAC_NMOS_CURRENT_SOURCE       0x215 /* Int 3 FB DAC NMOS Current Source */
#define REG_INT_3_FB_DAC_NMOS_CASCODE_BIAS_CURRENT 0x216 /* Int 3 FB DAC NMOS Cascode Bias Current */
#define REG_INT_3_FB_DAC_PMOS_CURRENT_SOURCE       0x217 /* Int 3 FB DAC PMOS Current Source */
#define REG_FB_DAC_BIAS_CURRENT                    0x218 /* FB DAC Bias Current */
#define REG_INT_1_1ST_STAGE_CURRENT                0x219 /* Int 1 1st Stage Current */
#define REG_INT_1_1ST_STAGE_CASCODE_CURRENT        0x21A /* Int 1 1st Stage Cascode Current */
#define REG_INT_1_2ND_STAGE_CURRENT                0x21B /* Int 1 2nd Stage Current */
#define REG_INTEGRATOR_2_1ST_STAGE_CURRENT         0x21C /* Integrator 2 1st Stage Current */
#define REG_INT_2_1ST_STAGE_CASCODE_CURRENT        0x21D /* Int 2 1st Stage Cascode Current */
#define REG_INT_2_2ND_STAGE_CURRENT                0x21E /* Int 2 2nd Stage Current */
#define REG_INT_3_1ST_STAGE_CURRENT                0x21F /* Int 3 1st Stage Current */
#define REG_INT_3_1ST_STAGE_CASCODE_CURRENT        0x220 /* Int 3 1st Stage Cascode Current */
#define REG_INT_3_2ND_STAGE_CURRENT                0x221 /* Int 3 2nd Stage Current */
#define REG_FLASH_BIAS_CURRENT                     0x222 /* Flash Bias Current */
#define REG_FLASH_LADDER_BIAS                      0x223 /* Flash Ladder Bias */
#define REG_FLASH_LADDER_CASCODE_CURRENT           0x224 /* Flash Ladder Cascode Current */
#define REG_FLASH_LADDER_BIAS2                     0x225 /* Flash Ladder Bias2 */
#define REG_RESET                                  0x226 /* Reset */
#define REG_RX_PFD_CONFIG                          0x230 /* RX PFD Config */
#define REG_RX_INTEGER_BYTE_0                      0x231 /* RX Integer Byte 0 */
#define REG_RX_INTEGER_BYTE_1                      0x232 /* RX Integer Byte 1 */
#define REG_RX_FRACT_BYTE_0                        0x233 /* RX Fractional Byte 0 */
#define REG_RX_FRACT_BYTE_1                        0x234 /* RX Fractional Byte 1 */
#define REG_RX_FRACT_BYTE_2                        0x235 /* RX Fractional Byte 2 */
#define REG_RX_FORCE_ALC                           0x236 /* RX Force ALC */
#define REG_RX_FORCE_VCO_TUNE_0                    0x237 /* RX Force VCO Tune 0 */
#define REG_RX_FORCE_VCO_TUNE_1                    0x238 /* RX Force VCO Tune 1 */
#define REG_RX_ALC_VARACTOR                        0x239 /* RX ALC/Varactor */
#define REG_RX_VCO_OUTPUT                          0x23A /* RX VCO Output */
#define REG_RX_CP_CURRENT                          0x23B /* RX CP Current */
#define REG_RX_CP_OFFSET                           0x23C /* RX CP Offset */
#define REG_RX_CP_CONFIG                           0x23D /* RX CP Config */
#define REG_RX_LOOP_FILTER_1                       0x23E /* RX Loop Filter 1 */
#define REG_RX_LOOP_FILTER_2                       0x23F /* RX Loop Filter 2 */
#define REG_RX_LOOP_FILTER_3                       0x240 /* RX Loop Filter 3 */
#define REG_RX_DITHERCP_CAL                        0x241 /* RX Dither/CP Cal */
#define REG_RX_VCO_BIAS_1                          0x242 /* RX VCO Bias 1 */
#define REG_RX_CAL_STATUS                          0x244 /* RX Cal Status */
#define REG_RX_VCO_CAL_REF                         0x245 /* RX VCO Cal Ref */
#define REG_RX_VCO_PD_OVERRIDES                    0x246 /* RX VCO Pd Overrides */
#define REG_RX_CP_OVERRANGE_VCO_LOCK               0x247 /* RX CP Over Range/VCO Lock */
#define REG_RX_VCO_LDO                             0x248 /* RX VCO LDO */
#define REG_RX_VCO_CAL                             0x249 /* RX VCO Cal */
#define REG_RX_LOCK_DETECT_CONFIG                  0x24A /* RX Lock Detect Config */
#define REG_RX_CP_LEVEL_DETECT                     0x24B /* RX CP Level Detect */
#define REG_RX_DSM_SETUP_0                         0x24C /* RX DSM Setup 0 */
#define REG_RX_DSM_SETUP_1                         0x24D /* RX DSM Setup 1 */
#define REG_RX_CORRECTION_WORD0                    0x24E /* RX Correction Word0 */
#define REG_RX_CORRECTION_WORD1                    0x24F /* RX Correction Word1 */
#define REG_RX_VCO_VARACTOR_CTRL_0                 0x250 /* RX VCO Varactor Control 0 */
#define REG_RX_VCO_VARACTOR_CTRL_1                 0x251 /* RX VCO Varactor Control 1 */
#define REG_RX_FAST_LOCK_SETUP                     0x25A /* RX Fast Lock Setup */
#define REG_RX_FAST_LOCK_SETUP_INIT_DELAY          0x25B /* RX Fast Lock Setup Init Delay */
#define REG_RX_FAST_LOCK_PROGRAM_ADDR              0x25C /* RX Fast Lock Program Addr */
#define REG_RX_FAST_LOCK_PROGRAM_DATA              0x25D /* RX Fast Lock Program Data */
#define REG_RX_FAST_LOCK_PROGRAM_READ              0x25E /* RX Fast Lock Program Read */
#define REG_RX_FAST_LOCK_PROGRAM_CTRL              0x25F /* RX Fast Lock Program Control */
#define REG_RX_LO_GEN_POWER_MODE                   0x261 /* RX LO Gen Power Mode */
#define REG_TX_PFD_CONFIG                          0x270 /* TX PFD Config */
#define REG_TX_INTEGER_BYTE_0                      0x271 /* TX Integer Byte 0 */
#define REG_TX_INTEGER_BYTE_1                      0x272 /* TX Integer Byte 1 */
#define REG_TX_FRACT_BYTE_0                        0x273 /* TX Fractional Byte 0 */
#define REG_TX_FRACT_BYTE_1                        0x274 /* TX Fractional Byte 1 */
#define REG_TX_FRACT_BYTE_2                        0x275 /* TX Fractional Byte 2 */
#define REG_TX_FORCE_ALC                           0x276 /* TX Force ALC */
#define REG_TX_FORCE_VCO_TUNE_0                    0x277 /* TX Force VCO Tune 0 */
#define REG_TX_FORCE_VCO_TUNE_1                    0x278 /* TX Force VCO Tune 1 */
#define REG_TX_ALCVARACT_OR                        0x279 /* TX ALC/Varact or */
#define REG_TX_VCO_OUTPUT                          0x27A /* TX VCO Output */
#define REG_TX_CP_CURRENT                          0x27B /* TX CP Current */
#define REG_TX_CP_OFFSET                           0x27C /* TX CP Offset */
#define REG_TX_CP_CONFIG                           0x27D /* TX CP Config */
#define REG_TX_LOOP_FILTER_1                       0x27E /* TX Loop Filter 1 */
#define REG_TX_LOOP_FILTER_2                       0x27F /* TX Loop Filter 2 */
#define REG_TX_LOOP_FILTER_3                       0x280 /* TX Loop Filter 3 */
#define REG_TX_DITHERCP_CAL                        0x281 /* TX Dither/CP Cal */
#define REG_TX_VCO_BIAS_1                          0x282 /* TX VCO Bias 1 */
#define REG_TX_VCO_BIAS_2                          0x283 /* TX VCO Bias 2 */
#define REG_TX_CAL_STATUS                          0x284 /* TX Cal Status */
#define REG_TX_VCO_CAL_REF                         0x285 /* TX VCO Cal Ref */
#define REG_TX_VCO_PD_OVERRIDES                    0x286 /* TX VCO Pd Overrides */
#define REG_TX_CP_OVERRANGE_VCO_LOCK               0x287 /* TX CP Over Range/VCO Lock */
#define REG_TX_VCO_LDO                             0x288 /* TX VCO LDO */
#define REG_TX_VCO_CAL                             0x289 /* TX VCO Cal */
#define REG_TX_LOCK_DETECT_CONFIG                  0x28A /* TX Lock Detect Config */
#define REG_TX_CP_LEVEL_DETECT                     0x28B /* TX CP Level Detect */
#define REG_TX_DSM_SETUP_0                         0x28C /* TX DSM Setup 0 */
#define REG_TX_DSM_SETUP_1                         0x28D /* TX DSM Setup 1 */
#define REG_TX_CORRECTION_WORD0                    0x28E /* TX Correction Word0 */
#define REG_TX_CORRECTION_WORD1                    0x28F /* TX Correction Word1 */
#define REG_TX_VCO_VARACTOR_CTRL_0                 0x290 /* TX VCO Varactor Control 0 */
#define REG_TX_VCO_VARACTOR_CTRL_1                 0x291 /* TX VCO Varactor Control 1 */
#define REG_DCXO_COARSE_TUNE                       0x292 /* DCXO Coarse Tune */
#define REG_DCXO_FINE_TUNE_HIGH                    0x293 /* DCXO Fine Tune2 */
#define REG_DCXO_FINE_TUNE_LOW                     0x294 /* DCXO Fine Tune1 */
#define REG_DCXO_CONFIG                            0x295 /* DCXO Config */
#define REG_DCXO_TEMPCO_WRITE                      0x296 /* DCXO Tempco Write */
#define REG_DCXO_TEMPCO_READ                       0x297 /* DCXO Tempco Read */
#define REG_DCXO_TEMPCO_ADDR                       0x298 /* DCXO Tempco Addr */
#define REG_DELTA_T_READ                           0x299 /* Delta T Read */
#define REG_TX_FAST_LOCK_SETUP                     0x29A /* TX Fast Lock Setup */
#define REG_TX_FAST_LOCK_SETUP_INIT_DELAY          0x29B /* TX Fast Lock Setup Init Delay */
#define REG_TX_FAST_LOCK_PROGRAM_ADDR              0x29C /* TX Fast Lock Program Addr */
#define REG_TX_FAST_LOCK_PROGRAM_DATA              0x29D /* TX Fast Lock Program Data */
#define REG_TX_FAST_LOCK_PROGRAM_READ              0x29E /* TX Fast Lock Program Read */
#define REG_TX_FAST_LOCK_PROGRAM_CTRL              0x29F /* TX Fast Lock Program Ctrl */
#define REG_TX_LO_GEN_POWER_MODE                   0x2A1 /* TX LO Gen Power Mode */
#define REG_BANDGAP_CONFIG0                        0x2A6 /* Bandgap Config0 */
#define REG_BANDGAP_CONFIG1                        0x2A8 /* Bandgap Config1 */
#define REG_REF_DIVIDE_CONFIG_1                    0x2AB /* Ref Divide Config 1 */
#define REG_REF_DIVIDE_CONFIG_2                    0x2AC /* Ref Divide Config 2 */
#define REG_GAIN_RX1                               0x2B0 /* Gain RX1 */
#define REG_LPF_GAIN_RX1                           0x2B1 /* LPF Gain RX1 */
#define REG_DIG_GAIN_RX1                           0x2B2 /* Dig gain RX1 */
#define REG_FAST_ATTACK_STATE                      0x2B3 /* Fast Attack State */
#define REG_SLOW_LOOP_STATE                        0x2B4 /* Slow Loop State */
#define REG_GAIN_RX2                               0x2B5 /* Gain RX2 */
#define REG_LPF_GAIN_RX2                           0x2B6 /* LPF Gain RX2 */
#define REG_DIG_GAIN_RX2                           0x2B7 /* Dig Gain RX2 */
#define REG_OVRG_SIGS_RX1                          0x2B8 /* Ovrg Sigs RX1 */
#define REG_OVRG_SIGS_RX2                          0x2B9 /* Ovrg Sigs RX2 */
#define REG_CTRL                                   0x3DF /* Control */
#define REG_BIST_CONFIG                            0x3F4 /* BIST Config */
#define REG_OBSERVE_CONFIG                         0x3F5 /* Observe Config */
#define REG_BIST_AND_DATA_PORT_TEST_CONFIG         0x3F6 /* BIST and Data Port Test Config */
#define REG_DAC_TEST_0                             0x3FC /* DAC Test 0 */
#define REG_DAC_TEST_1                             0x3FD /* DAC Test 1 */
#define REG_DAC_TEST_2                             0x3FE /* DAC Test 2 */

// REG_SPI_CONF
#define SOFT_RESET                 BIT(7) /* Soft Reset */
#define WIRE3_SPI                  BIT(6) /* 3-Wire SPI */
#define LSB_FIRST                  BIT(5) /* LSB First */
#define _LSB_FIRST                 BIT(2) /* LSB First */
#define _WIRE3_SPI                 BIT(1) /* 3-Wire SPI */
#define _SOFT_RESET                BIT(0) /* Soft reset */

// REG_MULTICHIP_SYNC_AND_TX_MON_CTRL
#define TX2_MONITOR_ENABLE         BIT(6) /* TX2 Monitor Enable */
#define TX1_MONITOR_ENABLE         BIT(5) /* TX1 Monitor Enable */
#define MCS_RF_ENABLE              BIT(3) /* MCS RF Enable */
#define MCS_BBPLL_ENABLE           BIT(2) /* MCS BBPLL enable */
#define MCS_DIGITAL_CLK_ENABLE     BIT(1) /* MCS Digital CLK Enable */
#define MCS_BB_ENABLE              BIT(0) /* MCS BB Enable */

// REG_TX_ENABLE_FILTER_CTRL
#define THB2_EN                        BIT(3) /* THB2 Enable */
#define THB1_EN                        BIT(2) /* THB1 Enable */
#define TX_CHANNEL_ENABLE(x)           (((x) & 0x3) << 6) /* TX channel Enable<1:0> */
#define THB3_ENABLE_INTERP(x)          (((x) & 0x3) << 4) /* THB3 Enable & Interp<1:0> */
#define TX_FIR_ENABLE_INTERPOLATION(x) (((x) & 0x3) << 0) /* TX FIR Enable & Interpolation<1:0> */
#define TX_1                           1
#define TX_2                           2
#define TX_ENABLE                      1
#define TX_DISABLE                     0

// REG_RX_ENABLE_FILTER_CTRL
#define RHB2_EN                        BIT(3) /* RHB2 Enable */
#define RHB1_EN                        BIT(2) /* RHB1 Enable */
#define RX_CHANNEL_ENABLE(x)           (((x) & 0x3) << 6) /* RX channel Enable<1:0> */
#define DEC3_ENABLE_DECIMATION(x)      (((x) & 0x3) << 4) /* DEC3 Enable & Decimation<1:0> */
#define RX_FIR_ENABLE_DECIMATION(x)    (((x) & 0x3) << 0) /* RX FIR Enable & Decimation<1:0> */
#define RX_1                           1
#define RX_2                           2
#define RX_ENABLE                      1
#define RX_DISABLE                     0

// REG_INPUT_SELECT
#define TX_OUTPUT                      BIT(6) /* TX Output */
#define RX_INPUT(x)                    (((x) & 0x3F) << 0) /* RX Input <5:0> */

// REG_RFPLL_DIVIDERS
#define TX_VCO_DIVIDER(x)              (((x) & 0xF) << 4) /* TX VCO  Divider<3:0> */
#define RX_VCO_DIVIDER(x)              (((x) & 0xF) << 0) /* RX VCO  Divider<3:0> */

// REG_RX_CLOCK_DATA_DELAY
#define DATA_CLK_DELAY(x)              (((x) & 0xF) << 4) /* DATA_CLK Delay<3:0> */
#define RX_DATA_DELAY(x)               (((x) & 0xF) << 0) /* RX Data Delay <3:0> */

// REG_TX_CLOCK_DATA_DELAY
#define FB_CLK_DELAY(x)                (((x) & 0xF) << 4) /* FB_CLK Delay<3:0> */
#define TX_DATA_DELAY(x)               (((x) & 0xF) << 0) /* TX Data Delay <3:0> */

// REG_CLOCK_ENABLE
#define XO_BYPASS                      BIT(4) /* XO Bypass */
#define DIGITAL_POWER_UP               BIT(2) /* Digital Power Up */
#define CLOCK_ENABLE_DFLT              BIT(1) /* Set to 1 */
#define BBPLL_ENABLE                   BIT(0) /* BBPLL Enable */

// REG_BBPLL
#define CLKOUT_ENABLE                  BIT(4) /* CLKOUT Enable */
#define DAC_CLK_DIV2                   BIT(3) /* DAC Clk div2 */
#define CLKOUT_SELECT(x)               (((x) & 0x7) << 5) /* CLKOUT  Select<2:0> */
#define BBPLL_DIVIDER(x)               (((x) & 0x7) << 0) /* BBPLL Divider <2:0> */

// REG_START_TEMP_READING
#define START_TEMP_READING             BIT(0) /* Start Temp Reading */

// REG_TEMP_SENSE2
#define TEMP_SENSE_PERIODIC_ENABLE     BIT(0) /* Temp Sense Periodic Enable */
#define MEASUREMENT_TIME_INTERVAL(x)   (((x) & 0x7F) << 1) /* Measurement Time Interval<6:0> */

// REG_TEMP_SENSOR_CONFIG
#define TEMP_SENSOR_DECIMATION(x)      (((x) & 0x7) << 0) /* Temp Sensor Decimation<2:0> */

// REG_PARALLEL_PORT_CONF_1
#define PP_TX_SWAP_IQ                  BIT(7) /* PP TX Swap IQ */
#define PP_RX_SWAP_IQ                  BIT(6) /* PP RX Swap IQ */
#define TX_CHANNEL_SWAP                BIT(5) /* TX Channel swap */
#define RX_CHANNEL_SWAP                BIT(4) /* RX Channel swap */
#define RX_FRAME_PULSE_MODE            BIT(3) /* RX Frame Pulse Mode */
#define R2T2_TIMING                    BIT(2) /* 2R2T Timing */
#define INVERT_DATA_BUS                BIT(1) /* Invert data bus */
#define INVERT_DATA_CLK                BIT(0) /* Invert DATA CLK */

// REG_PARALLEL_PORT_CONF_2
#define FDD_ALT_WORD_ORDER             BIT(7) /* FDD Alt Word Order */
#define INVERT_RX1                     BIT(6) /* Invert RX1 */
#define INVERT_RX2                     BIT(5) /* Invert RX2 */
#define INVERT_TX1                     BIT(4) /* Invert TX1 */
#define INVERT_TX2                     BIT(3) /* Invert TX2 */
#define INVERT_RX_FRAME                BIT(2) /* Invert RX Frame */
#define DELAY_RX_DATA(x)               (((x) & 0x3) << 0) /* Delay RX Data<1:0> */

// REG_PARALLEL_PORT_CONF_3
#define FDD_RX_RATE_2TX_RATE           BIT(7) /* FDD RX Rate = 2*TX Rate */
#define SWAP_PORTS                     BIT(6) /* Swap Ports */
#define SINGLE_DATA_RATE               BIT(5) /* Single Data Rate */
#define LVDS_MODE                      BIT(4) /* LVDS Mode */
#define HALF_DUPLEX_MODE               BIT(3) /* Half Duplex Mode */
#define SINGLE_PORT_MODE               BIT(2) /* Single Port Mode */
#define FULL_PORT                      BIT(1) /* Full Port */
#define FULL_DUPLEX_SWAP_BITS          BIT(0) /* Full Duplex Swap Bits */

// REG_ENSM_MODE
#define FDD_MODE                       BIT(0) /* FDD Mode */

// REG_ENSM_CONFIG_1
#define ENABLE_RX_DATA_PORT_FOR_CAL    BIT(7) /* Enable RX Data Port for Cal */
#define FORCE_RX_ON                    BIT(6) /* Force RX On */
#define FORCE_TX_ON                    BIT(5) /* Force TX On */
#define ENABLE_ENSM_PIN_CTRL           BIT(4) /* Enable ENSM Pin Control */
#define LEVEL_MODE                     BIT(3) /* Level Mode */
#define FORCE_ALERT_STATE              BIT(2) /* Force Alert State */
#define AUTO_GAIN_LOCK                 BIT(1) /* Auto Gain Lock */
#define TO_ALERT                       BIT(0) /* To Alert */

// REG_ENSM_CONFIG_2
#define FDD_EXTERNAL_CTRL_ENABLE       BIT(7) /* FDD External Control Enable */
#define POWER_DOWN_RX_SYNTH            BIT(6) /* Power Down RX Synth */
#define POWER_DOWN_TX_SYNTH            BIT(5) /* Power Down TX Synth */
#define TXNRX_SPI_CTRL                 BIT(4) /* TXNRX SPI Control */
#define SYNTH_ENABLE_PIN_CTRL_MODE     BIT(3) /* Synth Enable Pin Control Mode */
#define DUAL_SYNTH_MODE                BIT(2) /* Dual Synth Mode */
#define RX_SYNTH_READY_MASK            BIT(1) /* RX Synth Ready Mask */
#define TX_SYNTH_READY_MASK            BIT(0) /* TX Synth Ready Mask */

// REG_CALIBRATION_CTRL
#define RX_BB_TUNE_CAL                 BIT(7) /* RX BB Tune */
#define TX_BB_TUNE_CAL                 BIT(6) /* TX BB Tune */
#define RX_QUAD_CAL                    BIT(5) /* RX Quad Cal */
#define TX_QUAD_CAL                    BIT(4) /* TX Quad Cal */
#define RX_GAIN_STEP_CAL               BIT(3) /* RX Gain Step Cal */
#define TXMON_CAL                      BIT(2)
#define RFDC_CAL                       BIT(1) /* DC Cal RF Start */
#define BBDC_CAL                       BIT(0) /* DC cal BB Start */

// REG_STATE
#define CALIBRATION_SEQUENCE_STATE(x)  (((x) & 0xF) << 4) /* Calibration Sequence State<3:0> */
#define ENSM_STATE(x)                  (((x) & 0xF) << 0) /* ENSM State<3:0> */
#define ENSM_STATE_SLEEP_WAIT          0x0
#define ENSM_STATE_ALERT               0x5
#define ENSM_STATE_TX                  0x6
#define ENSM_STATE_TX_FLUSH            0x7
#define ENSM_STATE_RX                  0x8
#define ENSM_STATE_RX_FLUSH            0x9
#define ENSM_STATE_FDD                 0xA
#define ENSM_STATE_FDD_FLUSH           0xB
#define ENSM_STATE_INVALID             0xFF
#define ENSM_STATE_SLEEP               0x80

// REG_AUXDAC_2_WORD
#define AUXDAC_2_WORD_MSB(x)           (((x) & 0x3F) << 2) /* AuxDAC 2 Word<9:2> */
#define AUXDAC_1_WORD(x)               (((x) & 0x3) << 0) /* AuxDAC 1 Word <1:0> */

// REG_AUXDAC_1_CONFIG
#define COMP_CTRL_1                    BIT(5) /* Comp Ctrl 1 */
#define AUXDAC1_STP_FACTOR             BIT(4) /* AuxDAC1 Step Factor */
#define AUXDAC_1_VREF(x)               (((x) & 0x3) << 2) /* AuxDAC 1 Vref<1:0> */
#define AUXDAC_1_WORD_LSB(x)           (((x) & 0x3) << 0) /* AuxDAC 2 Word <1:0> */

// REG_AUXDAC_2_CONFIG
#define COMP_CTRL_2                    BIT(5) /* Comp Ctrl 2 */
#define AUXDAC2_STP_FACTOR             BIT(4) /* AuxDAC2 Step Factor */
#define AUXDAC_2_VREF(x)               (((x) & 0xF) << 2) /* AuxDAC 2 Vref<1:0> */
#define AUXDAC_2_WORD_LSB(x)           (((x) & 0x3) << 0) /* AuxDAC 2 Word <1:0> */

// REG_AUXADC_CLOCK_DIVIDER
#define AUXADC_CLOCK_DIVIDER(x)        (((x) & 0x3F) << 0) /* AuxADC Clock Divider<5:0> */

// REG_AUXADC_CONFIG
#define AUXADC_POWER_DOWN              BIT(0) /* AuxADC Power Down */
#define AUX_ADC_DECIMATION(x)          (((x) & 0x7) << 1) /* Aux ADC Decimation<2:0> */

// REG_AUXADC_LSB
#define AUXADC_WORD_LSB(x)             (((x) & 0xF) << 0) /* AuxADC Word LSB<3:0> */

// REG_AUTO_GPO
#define GPO_ENABLE_AUTO_RX(x)          (((x) & 0xF) << 4) /* GPO Enable Auto RX<3:0> */
#define GPO_ENABLE_AUTO_TX(x)          (((x) & 0xF) << 0) /* GPO Enable Auto TX<3:0> */

// REG_AGC_ATTACK_DELAY
#define INVERT_BYPASSED_LNA_POLARITY   BIT(6) /* Invert Bypassed LNA Polarity */
#define AGC_ATTACK_DELAY(x)            (((x) & 0x3F) << 0) /* AGC Attack Delay<5:0> */

// REG_AUXDAC_ENABLE_CTRL
#define AUXDAC_MANUAL_BAR(x)           (((x) & 0x3) << 6) /* AuxDac Manual Bar<1:0> */
#define AUXDAC_AUTO_TX_BAR(x)          (((x) & 0x3) << 4) /* AuxDAC Auto TX Bar<1:0> */
#define AUXDAC_AUTO_RX_BAR(x)          (((x) & 0x3) << 2) /* AuxDAC Auto RX Bar<1:0> */
#define AUXDAC_INIT_BAR(x)             (((x) & 0x3) << 0) /* AuxDAC Init Bar<1:0> */

// REG_EXTERNAL_LNA_CTRL
#define AUXDAC_MANUAL_SELECT           BIT(7) /* AuxDAC Manual Select */
#define EXTERNAL_LNA2_CTRL             BIT(6) /* External LNA2 control */
#define EXTERNAL_LNA1_CTRL             BIT(5) /* External LNA1 control */
#define GPO_MANUAL_SELECT              BIT(4) /* GPO manual select */
#define OPEN(x)                        (((x) & 0xF) << 0) /* Open<3:0> */

// REG_GPO_FORCE_AND_INIT
#define GPO_MANUAL_CTRL(x)             (((x) & 0xF) << 4) /* GPO Manual Control<3:0> */
#define GPO_INIT_STATE(x)              (((x) & 0xF) << 0) /* GPO Init State<3:0> */

// REG_CTRL_OUTPUT_ENABLE
#define EN_CTRL7                       BIT(7) /* En ctrl7 */
#define EN_CTRL6                       BIT(6) /* En ctrl6 */
#define EN_CTRL5                       BIT(5) /* En ctrl5 */
#define EN_CTRL4                       BIT(4) /* En ctrl4 */
#define EN_CTRL3                       BIT(3) /* En ctrl3 */
#define EN_CTRL2                       BIT(2) /* En ctrl2 */
#define EN_CTRL1                       BIT(1) /* En ctrl1 */
#define EN_CTRL0                       BIT(0) /* En ctrl0 */

// REG_PRODUCT_ID
#define PRODUCT_ID_MASK                0xF8
#define PRODUCT_ID_9361                0x08
#define REV_MASK                       0x07

// REG_REFERENCE_CLOCK_CYCLES
#define REFERENCE_CLOCK_CYCLES_PER_US(x)     (((x) & 0x7F) << 0) /* Reference Clock Cycles per us<6:0> */

// REG_DIGITAL_IO_CTRL
#define CLK_OUT_DRIVE                  BIT(7) /* CLK Out Drive */
#define DATACLK_DRIVE                  BIT(6) /* DATACLK drive */
#define DATA_PORT_DRIVE                BIT(2) /* Data Port Drive */
#define DATACLK_SLEW(x)                (((x) & 0x3) << 4) /* DATACLK slew <1:0> */
#define DATA_PORT_SLEW(x)              (((x) & 0x3) << 0) /* Data Port Slew<1:0> */

// REG_LVDS_BIAS_CTRL
#define RX_ON_CHIP_TERM                BIT(5) /* RX On Chip Term */
#define LVDS_BYPASS_BIAS_R             BIT(4) /* Bypass Bias R */
#define LVDS_TX_LO_VCM                 BIT(3) /* LVDS TX LO VCM */
#define CLK_OUT_SLEW(x)                (((x) & 0x3) << 6) /* CLK Out Slew<1:0> */
#define LVDS_BIAS(x)                   (((x) & 0x7) << 0) /* LVDS Bias <2:0> */

// REG_SDM_CTRL_1
#define INIT_BB_FO_CAL                 BIT(2) /* Init BB FO CAL */
#define BBPLL_RESET_BAR                BIT(0) /* BBPLL Reset Bar */

// REG_CLOCK_CTRL
#define REF_FREQ_SCALER(x)             (((x) & 0x3) << 0) /* Ref Frequency Scaler */

// REG_CP_CURRENT
#define CHARGE_PUMP_CURRENT(x)         (((x) & 0x3F) << 0) /* Charge Pump Current<5:0> */

// REG_CP_BLEED_CURRENT
#define MCS_REFCLK_SCALE_EN            BIT(7) /* MCS refclk Scale En */

// REG_LOOP_FILTER_1
#define C1_WORD(x)                     (((x) & 0x7) << 5) /* C1 Word<2:0> */
#define R1_WORD(x)                     (((x) & 0x1F) << 0) /* R1 Word<4:0> */

// REG_LOOP_FILTER_2
#define R2_WORD                        BIT(7) /* R2 Word<0> */
#define C2_WORD(x)                     (((x) & 0x1F) << 2) /* C2 Word<4:0> */
#define C1_WORD_LSB(x)                 (((x) & 0x3) << 0) /* C1 Word<4:3> */

// REG_LOOP_FILTER_3
#define BYPASS_C3                      BIT(7) /* Bypass C3 */
#define BYPASS_R2                      BIT(6) /* Bypass R2 */
#define C3_WORD(x)                     (((x) & 0xF) << 2) /* C3 Word<3:0> */
#define R2_WORD_LSB(x)                 (((x) & 0x3) << 0) /* R2 Word<2:1> */

// REG_VCO_CTRL
#define FREQ_CAL_ENABLE                BIT(7) /* Freq Cal Enable */
#define FREQ_CAL_RESET                 BIT(4) /* Freq Cal Reset */
#define FREQ_CAL_COUNT_LENGTH(x)       (((x) & 0x3) << 5) /* Freq Cal Count Length<1:0> */

// REG_SDM_CTRL
#define CAL_CLOCK_DIV_4                BIT(4) /* Cal Clock div 4 */

// REG_RX_SYNTH_POWER_DOWN_OVERRIDE
#define RX_LO_POWER_DOWN               BIT(4) /* RX LO Power Down */
#define RX_SYNTH_VCO_ALC_POWER_DOWN    BIT(3) /* RX Synth VCO ALC Power Down */
#define RX_SYNTH_PTAT_POWER_DOWN       BIT(2) /* RX Synth PTAT Power Down */
#define RX_SYNTH_VCO_POWER_DOWN        BIT(1) /* RX Synth VCO Power Down */
#define RX_SYNTH_VCO_LDO_POWER_DOWN    BIT(0) /* RX Synth VCO LDO Power Down */

// REG_TX_SYNTH_POWER_DOWN_OVERRIDE
#define TX_LO_POWER_DOWN               BIT(4) /* TX LO Power Down */
#define TX_SYNTH_VCO_ALC_POWER_DOWN    BIT(3) /* TX Synth VCO ALC Power Down */
#define TX_SYNTH_PTAT_POWER_DOWN       BIT(2) /* TX Synth PTAT Power Down */
#define TX_SYNTH_VCO_POWER_DOWN        BIT(1) /* TX Synth VCO Power Down */
#define TX_SYNTH_VCO_LDO_POWER_DOWN    BIT(0) /* TX Synth VCO LDO Power Down */

// REG_RX_ANALOG_POWER_DOWN_OVERRIDE_1
#define RX_OFFSET_DAC_CGIN_POWER_DOWN(x)    (((x) & 0x3) << 6) /* RX Offset DAC CGin Power Down<1:0> */
#define RX_LMT_OVERLOAD_POWER_DOWN(x)       (((x) & 0x3) << 4) /* RX LMT Overload Power Down<1:0> */
#define RX_MIXER_GM_POWER_DOWN(x)           (((x) & 0x3) << 2) /* RX Mixer Gm Power Down<1:0> */
#define RX_CGB_POWER_DOWN(x)                (((x) & 0x3) << 0) /* RX CGB Power Down<1:0> */

// REG_RX_ANALOG_POWER_DOWN_OVERRIDE_2
#define RX_BBF_POWER_DOWN(x)                (((x) & 0x3) << 6) /* RX BBF Power Down<1:0> */
#define RX_TIA_POWER_DOWN(x)                (((x) & 0x3) << 4) /* RX TIA Power Down<1:0> */
#define RX_MIXER_POWER_DOWN(x)              (((x) & 0x3) << 2) /* RX Mixer Power Down<1:0> */
#define RX_OFFSET_DAC_CGOUT_POWER_DOWN(x)   (((x) & 0x3) << 0) /* RX Offset DAC CGOut Power Down<1:0> */

// REG_TX_ANALOG_POWER_DOWN_OVERRIDE_1
#define TX_SECONDARY_FILTER_POWER_DOWN(x)   (((x) & 0x3) << 6) /* TX Secondary Filter Power Down<1:0> */
#define TX_BBF_POWER_DOWN(x)                (((x) & 0x3) << 4) /* TX BBF Power Down<1:0> */
#define TX_DAC_POWER_DOWN(x)                (((x) & 0x3) << 2) /* TX DAC Power Down<1:0> */
#define TX_DAC_BIAS_POWER_DOWN(x)           (((x) & 0x3) << 0) /* TX DAC Bias Power Down<1:0> */

// REG_ANALOG_POWER_DOWN_OVERRIDE
#define RX_EXT_VCO_BUFFER_POWER_DOWN   BIT(5) /* RX Ext VCO Buffer Power Down */
#define TX_EXT_VCO_BUFFER_POWER_DOWN   BIT(4) /* TX Ext VCO Buffer Power Down */
#define TX_MONITOR_POWER_DOWN(x)       (((x) & 0x3) << 2) /* TX Monitor Power Down<1:0> */
#define TX_UPCONVERTER_POWER_DOWN(x)   (((x) & 0x3) << 0) /* TX Upconverter Power Down<1:0> */

// REG_MISC_POWER_DOWN_OVERRIDE
#define RX_LNA_POWER_DOWN              BIT(6) /* RX LNA Power Down */
#define DCXO_POWER_DOWN                BIT(1) /* DCXO Power Down */
#define MASTER_BIAS_POWER_DOWN         BIT(0) /* Master Bias Power Down */
#define RX_CALIBRATION_POWER_DOWN(x)   (((x) & 0x3) << 2) /* RX Calibration Power Down<1:0> */

// REG_CH_1_OVERFLOW
#define BBPLL_LOCK                     BIT(7) /* BBPLL Lock */
#define CH_1_INT3                      BIT(6) /* CH 1 INT3 */
#define CH1_HB3                        BIT(5) /* CH1 HB3 */
#define CH1_HB2                        BIT(4) /* CH1 HB2 */
#define CH1_QEC                        BIT(3) /* CH1 QEC */
#define CH1_HB1                        BIT(2) /* CH1 HB1 */
#define CH1_TFIR                       BIT(1) /* CH1 TFIR */
#define CH1_RFIR                       BIT(0) /* CH1 RFIR */

// REG_CH_2_OVERFLOW
#define CH2_INT3                       BIT(6) /* CH2 INT3 */
#define CH2_HB3                        BIT(5) /* CH2 HB3 */
#define CH2_HB2                        BIT(4) /* CH2 HB2 */
#define CH2_QEC                        BIT(3) /* CH2 QEC */
#define CH2_HB1                        BIT(2) /* CH2 HB1 */
#define CH2_TFIR                       BIT(1) /* CH2 TFIR */
#define CH2_RFIR                       BIT(0) /* CH2 RFIR */

// REG_TX_FILTER_CONF
#define TX_FIR_GAIN_6DB                BIT(0) /* Filter Gain */
#define FIR_START_CLK                  BIT(1) /* Start TX/RX Clock */
#define FIR_WRITE                      BIT(2) /* Write TX/RX */
#define FIR_SELECT(x)                  (((x) & 0x3) << 3) /* Select TX/RX CH<1:0> */
#define FIR_NUM_TAPS(x)                (((x) & 0x7) << 5) /* Number of Taps<2:0> */

// REG_TX_MON_LOW_GAIN
#define TX_MON_TRACK                   BIT(5) /* TX Mon Track */
#define TX_MON_LOW_GAIN(x)             (((x) & 0x1F) << 0) /* TX Mon Low Gain<4:0> */

// REG_TX_MON_HIGH_GAIN
#define TX_MON_HIGH_GAIN(x)            (((x) & 0x1F) << 0) /* TX Mon High Gain<4:0> */

// REG_TX_LEVEL_THRESH
#define TX_LEVEL_THRESH(x)             (((x) & 0x3F) << 2) /* TX Level Threshold<5:0> */
#define TX_MON_DELAY_COUNTER(x)        (((x) & 0x3) << 0) /* TX Mon Delay Counter<9:8> */

// REG_TX_RSSI_LSB
#define TX_RSSI_2                      BIT(1) /* TX RSSI 2<0> */
#define TX_RSSI_1                      BIT(0) /* TX RSSI 1<0> */

// REG_TPM_MODE_ENABLE
#define TX2_MON_ENABLE                 BIT(7) /* TX2 Monitor Enable */
#define TX1_MON_ENABLE                 BIT(5) /* TX1 Monitor Enable */
#define ONE_SHOT_MODE                  BIT(6) /* One Shot Mode */
#define TX_MON_DURATION(x)             (((x) & 0xF) << 0) /* TX Mon Duration<3:0> */

// REG_TX_MON_1_CONFIG
#define TX_MON_1_LO_CM(x)              (((x) & 0x3F) << 2) /* TX Mon 1 LO CM<5:0> */
#define TX_MON_1_GAIN(x)               (((x) & 0x3) << 0) /* TX Mon 1 Gain<1:0> */

// REG_TX_MON_2_CONFIG
#define TX_MON_2_LO_CM(x)              (((x) & 0x3F) << 2) /* TX Mon 2 LO CM<5:0> */
#define TX_MON_2_GAIN(x)               (((x) & 0x3) << 0) /* TX Mon 2 Gain<1:0> */

// REG_TX1_ATTEN_1
#define TX_1_ATTEN                     BIT(0) /* TX 1 Atten <8> */

// REG_TX2_ATTEN_1
#define TX_2_ATTEN                     BIT(0) /* TX 2 Atten <8> */

// REG_TX_ATTEN_OFFSET
#define MASK_CLR_ATTEN_UPDATE          BIT(6) /* Mask Clr Atten Update */
#define TX_ATTEN_OFFSET(x)             (((x) & 0x3F) << 0) /* TX Atten Offset<5:0> */

// REG_TX1_DIG_ATTEN
#define SEL_TX1_TX2                    BIT(6) /* Sel TX1 & Ttx2 */

// REG_TX2_DIG_ATTEN
#define IMMEDIATELY_UPDATE_TPC_ATTEN   BIT(6) /* Immediately Update TPC Atten */

// REG_TX1_SYMBOL_ATTEN
#define TX_1_SYMBOL_ATTEN(x)           (((x) & 0x7F) << 0) /* TX 1 Symbol Attenuation<6:0> */

// REG_TX2_SYMBOL_ATTEN
#define TX_2_SYMBOL_ATTEN(x)           (((x) & 0x7F) << 0) /* TX 2 Symbol Attenuation<6:0> */

// REG_TX_SYMBOL_ATTEN_CONFIG
#define USE_TX1_PIN_SYMBOL_ATTEN       BIT(3) /* Use TX1 Pin & Symbol Atten */
#define USE_CTRL_IN_FOR_SYMBOL_ATTEN   BIT(1) /* Use CTRL IN for symbol Atten */
#define ENABLE_SYMBOL_ATTEN            BIT(0) /* Enable Symbol Atten */

// REG_TX_FORCE_BITS
#define FORCE_OUT_2_TX2_OFFSET         BIT(7) /* Force Out 2 TX2 Offset */
#define FORCE_OUT_2_TX1_OFFSET         BIT(6) /* Force Out 2 TX1 Offset */
#define FORCE_OUT_2_TX2_PHASE_GAIN     BIT(5) /* Force Out 2 TX2 Phase & Gain */
#define FORCE_OUT_2_TX1_PHASE_GAIN     BIT(4) /* Force Out 2 TX1 Phase & Gain */
#define FORCE_OUT_1_TX2_OFFSET         BIT(3) /* Force Out 1 TX2 Offset */
#define FORCE_OUT_1_TX1_OFFSET         BIT(2) /* Force Out 1 TX1 Offset */
#define FORCE_OUT_1_TX2_PHASE_GAIN     BIT(1) /* Force Out 1 TX2 Phase & Gain */
#define FORCE_OUT_1_TX1_PHASE_GAIN     BIT(0) /* Force Out 1 TX1 Phase & Gain */

// REG_QUAD_CAL_NCO_FREQ_PHASE_OFFSET
#define RX_NCO_FREQ(x)                 (((x) & 0x3) << 5) /* RX NCO Frequency<1:0> */
#define RX_NCO_PHASE_OFFSET(x)         (((x) & 0x1F) << 0) /* RX NCO Phase Offset<4:0> */

// REG_QUAD_CAL_CTRL
#define FREE_RUN_ENABLE                BIT(7) /* Free Run Enable */
#define SETTLE_MAIN_ENABLE             BIT(6) /* Settle Main Enable */
#define DC_OFFSET_ENABLE               BIT(5) /* DC Offset Enable */
#define GAIN_ENABLE                    BIT(4) /* Gain Enable */
#define PHASE_ENABLE                   BIT(3) /* Phase Enable */
#define QUAD_CAL_SOFT_RESET            BIT(2) /* Quad Cal Soft Reset */
#define M_DECIM(x)                     (((x) & 0x3) << 0) /* M<1:0> */

// REG_KEXP_1
#define KEXP_TX(x)                     (((x) & 0x3) << 6) /* Kexp TX<1:0> */
#define KEXP_TX_COMP(x)                (((x) & 0x3) << 4) /* Kexp TX_comp <1:0> */
#define KEXP_DC_I(x)                   (((x) & 0x3) << 2) /* Kexp DC I <1:0> */
#define KEXP_DC_Q(x)                   (((x) & 0x3) << 0) /* Kexp DC Q <1:0> */

// REG_KEXP_2
#define INVERT_I_DATA                  BIT(5) /* Invert I data */
#define INVERT_Q_DATA                  BIT(4) /* Invert Q data */
#define TX_NCO_FREQ(x)                 (((x) & 0x3) << 6) /* TX NCO frequency<1:0> */
#define KEXP_PHASE(x)                  (((x) & 0x3) << 2) /* Kexp Phase <1:0> */
#define KEXP_AMP(x)                    (((x) & 0x3) << 0) /* Kexp Amp <1:0> */

// REG_QUAD_CAL_STATUS_TX1
#define TX1_LO_CONV                    BIT(1) /* TX1 LO Conv */
#define TX1_SSB_CONV                   BIT(0) /* TX1 SSB Conv */
#define TX1_CONVERGENCE_COUNT(x)       (((x) & 0x3F) << 2) /* TX1 Convergence Count<5:0> */

// REG_QUAD_CAL_STATUS_TX2
#define TX2_LO_CONV                    BIT(1) /* TX2 LO Conv */
#define TX2_SSB_CONV                   BIT(0) /* TX2 SSB Conv */
#define TX2_CONVERGENCE_COUNT(x)       (((x) & 0x3F) << 2) /* TX2 Convergence Count<5:0> */

// REG_TX_QUAD_FULL_LMT_GAIN
#define RX_FULL_TABLELMT_TABLE_GAIN(x) (((x) & 0x7F) << 0) /* RX Full table/LMT table gain<6:0> */

// REG_SQUARER_CONFIG
#define GM_STAGE_TIME_CON_OVERRIDE     BIT(5) /* Gm Stage Time Con Override */
#define GM_STAGE_MV_HP_POLE            BIT(4) /* Gm Stage MV HP Pole */
#define GM_STAGE_LOWER_CM              BIT(3) /* Gm Stage Lower CM */
#define BYPASS_BIAS_R                  BIT(0) /* Bypass Bias R */
#define VBIAS_CTRL(x)                  (((x) & 0x3) << 1) /* Vbias     Control<1:0> */

// REG_THRESH_ACCUM
#define THRESH_ACCUMULATOR(x)          (((x) & 0xF) << 0) /* Threshold Accumulator<3:0> */

// REG_TX_QUAD_LPF_GAIN
#define RX_LPF_GAIN(x)                 (((x) & 0x1F) << 0) /* RX LPF gain<4:0> */

// REG_TXDAC_VDS_I
#define TXDAC_VDS_I(x)                 (((x) & 0x3F) << 0) /* TXDAC Vds I<5:0> */

// REG_TXDAC_VDS_Q
#define TXDAC_VDS_Q(x)                 (((x) & 0x3F) << 0) /* TXDAC Vds Q<5:0> */

// REG_TXDAC_GN_I
#define TXDAC_GN_I(x)                  (((x) & 0x3F) << 0) /* txDAC_gn_I<5:0> */

// REG_TXDAC_GN_Q
#define TXDAC_GN_Q(x)                  (((x) & 0x3F) << 0) /* txDAC_gn_Q<5:0> */

// REG_TXBBF_OPAMP_A
#define OPAMPA_OUTPUT_BIAS(x)          (((x) & 0x3) << 5) /* OpAmpA Output Bias<1:0> */
#define OPAMPA_RZ(x)                   (((x) & 0x3) << 3) /* OpAmpA RZ<1:0> */
#define OPAMP_A_CC(x)                  (((x) & 0x7) << 0) /* OpAmp A CC<2:0> */

// REG_TXBBF_OPAMP_B
#define OPAMPB_OUTPUT_BIAS(x)          (((x) & 0x3) << 5) /* OpAmpB Output Bias<1:0> */
#define OPAMPB_RZ(x)                   (((x) & 0x3) << 3) /* OpAmpB RZ<1:0> */
#define OPAMP_B_CC(x)                  (((x) & 0x7) << 0) /* OpAmp B CC<2:0> */

// REG_TX_BBF_R1
#define OVERRIDE_ENABLE                BIT(7) /* Override enable */
#define R1(x)                          (((x) & 0x1F) << 0) /* R1<4:0> */

// REG_TX_BBF_R2
#define R2(x)                          (((x) & 0x1F) << 0) /* R2<4:0> */

// REG_TX_BBF_R3
#define R3(x)                          (((x) & 0x1F) << 0) /* R3<4:0> */

// REG_TX_BBF_R4
#define R4(x)                          (((x) & 0x1F) << 0) /* R4<4:0> */

// REG_TX_BBF_RP
#define RP(x)                          (((x) & 0x1F) << 0) /* Rp<4:0> */

// REG_TX_BBF_C1
#define C1(x)                          (((x) & 0x3F) << 0) /* C1<5:0> */

// REG_TX_BBF_C2
#define C2(x)                          (((x) & 0x3F) << 0) /* C2<5:0> */

// REG_TX_BBF_CP
#define CP(x)                          (((x) & 0x3F) << 0) /* Cp<5:0> */

// REG_TX_TUNE_CTRL
#define PD_TUNE                        BIT(2) /* PD Tune */
#define TUNER_RESAMPLE                 BIT(1) /* Tuner Resample */
#define TUNER_RESAMPLE_PHASE           BIT(0) /* Tuner Resample Phase */
#define TUNE_CTRL(x)                   (((x) & 0x3) << 5) /* Tune Control<1:0> */

// REG_TX_BBF_R2B
#define TX_BBF_BYPASS_BIAS_R           BIT(7) /* Bypass Bias R */
#define R2B_OVR                        BIT(5) /* R2b Ovr */
#define R2B(x)                         (((x) & 0x1F) << 0) /* R2b<4:0> */

// REG_TX_BBF_TUNE
#define BBF1_COMP_I                    BIT(3) /* BBF1 Comp I */
#define BBF1_COMP_Q                    BIT(2) /* BBF1 Comp Q */
#define BBF2_COMP_I                    BIT(1) /* BBF2 Comp I */
#define BBF2_COMP_Q                    BIT(0) /* BBF2 Comp Q */

// REG_CONFIG0
#define BIAS(x)                        (((x) & 0x3) << 6) /* Bias<1:0> */
#define RGM(x)                         (((x) & 0x3) << 4) /* Rgm<1:0> */
#define CC(x)                          (((x) & 0x3) << 2) /* Cc<1:0> */
#define AMPBIAS(x)                     (((x) & 0x3) << 0) /* AmpBias<1:0> */

// REG_RESISTOR
#define RESISTOR(x)                    (((x) & 0xF) << 0) /* Resistor<3:0> */

// REG_CAPACITOR
#define CAPACITOR(x)                   (((x) & 0x3F) << 0) /* Capacitor<5:0> */

// REG_LO_CM
#define LO_COMMON_MODE(x)              (((x) & 0x3) << 5) /* LO Common Mode<1:0> */

// REG_TX_BBF_TUNE_MODE
#define EVALTIME                       BIT(4) /* EvalTime */
#define TX_BBF_TUNE_DIVIDER            BIT(0) /* TX BBF Tune Divider<8> */
#define TUNE_COMP_MASK(x)              (((x) & 0x3) << 5) /* Tune Comp Mask<1:0> */
#define TUNER_MODE(x)                  (((x) & 0x7) << 1) /* Tuner Mode<2:0> */

// REG_RX_FILTER_CONFIG
#define WRITE_RX                       BIT(2) /* Write RX */
#define START_RX_CLOCK                 BIT(1) /* Start RX Clock */
#define NUMBER_OF_TAPS(x)              (((x) & 0x7) << 5) /* Number of Taps */
#define SELECT_RX_CH(x)                (((x) & 0x3) << 3) /* Select RX Ch<1:0> */

// REG_RX_FILTER_GAIN
#define FILTER_GAIN(x)                 (((x) & 0x3) << 0) /* Filter gain<1:0> */

// REG_AGC_CONFIG_1
#define DEC_PWR_FOR_LOW_PWR            BIT(7) /* Dec Pwr for Low Pwr */
#define DEC_PWR_FOR_LOCK_LEVEL         BIT(6) /* Dec Pwr for Lock Level */
#define DEC_PWR_FOR_GAIN_LOCK_EXIT     BIT(5) /* Dec Pwr for Gain Lock Exit */
#define SLOW_ATTACK_HYBRID_MODE        BIT(4) /* Slow Attack Hybrid Mode */
#define RX2_GAIN_CTRL_SETUP(x)         (((x) & 0x3) << 2) /* RX 2 Gain Control Setup<1:0> */
#define RX1_GAIN_CTRL_SETUP(x)         (((x) & 0x3) << 0) /* RX 1 Gain Control Setup<1:0> */
#define RX_GAIN_CTL_MASK               0x03
#define RX2_GAIN_CTRL_SHIFT            2
#define RX1_GAIN_CTRL_SHIFT            0
#define RX_GAIN_CTL_MGC                0x00
#define RX_GAIN_CTL_AGC_FAST_ATK       0x01
#define RX_GAIN_CTL_AGC_SLOW_ATK       0x02
#define RX_GAIN_CTL_AGC_SLOW_ATK_HYBD  0x03

// REG_AGC_CONFIG_2
#define AGC_SOFT_RESET                 BIT(7) /* Soft Reset */
#define AGC_GAIN_UNLOCK_CTRL           BIT(6) /* Gain Unlock Control */
#define AGC_USE_FULL_GAIN_TABLE        BIT(3) /* Use Full Gain Table */
#define DIG_GAIN_EN                    BIT(2) /* Enable Digital Gain */
#define MAN_GAIN_CTRL_RX2              BIT(1) /* Manual Gain Control RX 2 */
#define MAN_GAIN_CTRL_RX1              BIT(0) /* Manual Gain Control RX 1 */

// REG_AGC_CONFIG_3
#define INCDEC_LMT_GAIN                BIT(4) /* Inc/Dec LMT Gain */
#define USE_AGC_FOR_LMTLPF_GAIN        BIT(3) /* Use AGC for LMT/LPF Gain */
#define MANUAL_INCR_STEP_SIZE(x)       (((x) & 0x7) << 5) /* Manual (CTRL_IN) Incr Gain Step Size<2:0> */
#define ADC_OVERRANGE_SAMPLE_SIZE(x)   (((x) & 0x7) << 0) /* ADC Overrange Sample Size<2:0> */

// REG_MAX_LMT_FULL_GAIN
#define MAXIMUM_FULL_TABLELMT_TABLE_INDEX(x) (((x) & 0x7F) << 0) /* Maximum Full Table/LMT Table Index<6:0> */

// REG_PEAK_WAIT_TIME
#define MANUAL_CTRL_IN_DECR_GAIN_STP_SIZE(x) (((x) & 0x7) << 5) /* Manual (CTRL_IN) Decr Gain Step Size<2:0> */
#define PEAK_OVERLOAD_WAIT_TIME(x)           (((x) & 0x1F) << 0) /* Peak Overload Wait Time<4:0> */

// REG_DIGITAL_GAIN
#define DIG_GAIN_STP_SIZE(x)           (((x) & 0x7) << 5) /* Dig Gain Step Size<2:0> */
#define MAXIMUM_DIGITAL_GAIN(x)        (((x) & 0x1F) << 0) /* Maximum Digital Gain<4:0> */

// REG_AGC_LOCK_LEVEL
#define ENABLE_DIG_SAT_OVRG                               BIT(7) /* Enable Dig Sat Ovrg */
#define AGC_LOCK_LEVEL_FAST_AGC_INNER_HIGH_THRESH_SLOW(x) (((x) & 0x7F) << 0) /* AGC Lock Level (Fast)/ AGC Inner High Threshold (Slow) <6:0> */

// REG_GAIN_STP_CONFIG1
#define LMT_DETECTOR_SETTLING_TIME(x)          (((x) & 0x7) << 5) /* LMT Detector Settling Time<2:0> */
#define DEC_STP_SIZE_FOR_LARGE_LMT_OVERLOAD(x) (((x) & 0x7) << 2) /* Dec Step Size for: Large LMT Overload/ Full Table Case #3 <2:0> */
#define ADC_NOISE_CORRECTION_FACTOR(x)         (((x) & 0x3) << 0) /* ADC Noise Correction Factor<1:0> */

// REG_GAIN_STP_CONFIG_2
#define DECREMENT_STP_SIZE_FOR_SMALL_LPF_GAIN_CHANGE(x) (((x) & 0x7) << 4) /* Fast Attack Only. Decrement Step Size for: Small LPF Gain Change / Full Table Case #2 <2:0> */
#define LARGE_LPF_GAIN_STEP(x)                          (((x) & 0xF) << 0) /* Decrement Step Size for: Large LPF Gain Change / Full Table Case #1<3:0> */

// REG_SMALL_LMT_OVERLOAD_THRESH
#define FORCE_PD_RESET_RX2             BIT(7) /* Force PD Reset RX2 */
#define FORCE_PD_RESET_RX1             BIT(6) /* Force PD Reset RX1 */
#define SMALL_LMT_OVERLOAD_THRESH(x)   (((x) & 0x3F) << 0) /* Small LMT Overload Threshold<5:0> */

// REG_LARGE_LMT_OVERLOAD_THRESH
#define LARGE_LMT_OVERLOAD_THRESH(x)   (((x) & 0x3F) << 0) /* Large LMT Overload Threshold<5:0> */

// REG_RX1_MANUAL_LMT_FULL_GAIN
#define POWER_MEAS_IN_STATE_5_MSB                       BIT(7) /* Power Meas in State 5 <3> */
#define RX1_MANUAL_FULL_TABLE_LMT_TABLE_GAIN_INDEX(x)   (((x) & 0x7F) << 0) /* RX1 Manual Full table/LMT table Gain Index<6:0> */
#define RX_FULL_TBL_IDX_MASK                            RX1_MANUAL_FULL_TABLE_LMT_TABLE_GAIN_INDEX(~0)

// REG_RX1_MANUAL_LPF_GAIN
#define POWER_MEAS_IN_STATE_5(x)       (((x) & 0x7) << 5) /* Power Meas in State 5<2:0> */
#define RX1_MANUAL_LPF_GAIN(x)         (((x) & 0x1F) << 0) /* RX1 Manual LPF Gain <4:0> */
#define RX_LPF_IDX_MASK                RX1_MANUAL_LPF_GAIN(~0)

// REG_RX1_MANUAL_DIGITALFORCED_GAIN
#define FORCE_RX1_DIGITAL_GAIN           BIT(5) /* Force RX1 Digital Gain */
#define RX1_MANUALFORCED_DIGITAL_GAIN(x) (((x) & 0x1F) << 0) /* RX1 Manual/Forced Digital Gain<4:0> */
#define RX_DIGITAL_IDX_MASK              RX1_MANUALFORCED_DIGITAL_GAIN(~0)
// REG_RX2_MANUAL_LMT_FULL_GAIN
#define RX2_MANUAL_FULL_TABLE_LMT_TABLE_GAIN_INDEX(x) (((x) & 0x7F) << 0) /* RX2 Manual Full table/ LMT table Gain Index<6:0> */

// REG_RX2_MANUAL_LPF_GAIN
#define RX2_MANUAL_LPF_GAIN(x)         (((x) & 0x1F) << 0) /* RX2 Manual LPF Gain<4:0> */

// REG_RX2_MANUAL_DIGITALFORCED_GAIN
#define FORCE_RX2_DIGITAL_GAIN           BIT(5) /* Force RX2 Digital Gain */
#define RX2_MANUALFORCED_DIGITAL_GAIN(x) (((x) & 0x1F) << 0) /* RX2 Manual/Forced Digital Gain<4:0> */

// REG_FAST_CONFIG_1
#define ENABLE_GAIN_INC_AFTER_GAIN_LOCK             BIT(7) /* Enable Gain Inc after Gain Lock */
#define GOTO_OPT_GAIN_IF_ENERGY_LOST_OR_EN_AGC_HIGH BIT(6) /* Goto Opt Gain if Energy Lost or EN_AGC High */
#define GOTO_SET_GAIN_IF_EN_AGC_HIGH                BIT(5) /* Goto Set Gain if EN_AGC High */
#define GOTO_SET_GAIN_IF_EXIT_RX_STATE              BIT(4) /* Goto Set Gain if Exit RX State */
#define DONT_UNLOCK_GAIN_IF_ENERGY_LOST             BIT(3) /* Don't Unlock Gain if Energy Lost */
#define GOTO_OPTIMIZED_GAIN_IF_EXIT_RX_STATE        BIT(2) /* Goto Optimized Gain if Exit RX State */
#define DONT_UNLOCK_GAIN_IF_LG_ADC_OR_LMT_OVRG      BIT(1) /* Don't Unlock Gain If Lg ADC or LMT Ovrg */
#define ENABLE_INCR_GAIN                            BIT(0) /* Enable Incr Gain */

// REG_FAST_CONFIG_2_SETTLING_DELAY
#define USE_LAST_LOCK_LEVEL_FOR_SET_GAIN         BIT(7) /* Use Last Lock Level for Set Gain */
#define ENABLE_LMT_GAIN_INC_FOR_LOCK_LEVEL       BIT(6) /* Enable LMT Gain Inc for Lock Level */
#define GOTO_MAX_GAIN_OR_OPT_GAIN_IF_EN_AGC_HIGH BIT(5) /* Goto Max Gain or Opt Gain if EN_AGC High */
#define SETTLING_DELAY(x)                        (((x) & 0x1F) << 0) /* Settling Delay<4:0> */

// REG_FAST_ENERGY_LOST_THRESH
#define POST_LOCK_LEVEL_STP_SIZE_FOR_LPF_TABLE_FULL_TABLE(x) (((x) & 0x3) << 6) /* Post Lock Level Step Size for: LPF Table/ Full Table <1:0> */
#define ENERGY_LOST_THRESH(x)                                (((x) & 0x3F) << 0) /* Energy lost threshold<5:0> */

// REG_FAST_STRONGER_SIGNAL_THRESH
#define POST_LOCK_LEVEL_STP_FOR_LMT_TABLE(x) (((x) & 0x3) << 6) /* Post Lock Level Step for LMT     Table <1:0> */
#define STRONGER_SIGNAL_THRESH(x)            (((x) & 0x3F) << 0) /* Stronger Signal Threshold<5:0> */

// REG_FAST_LOW_POWER_THRESH
#define DONT_UNLOCK_GAIN_IF_ADC_OVRG   BIT(7) /* Don't unlock gain if ADC Ovrg */
#define LOW_POWER_THRESH(x)            (((x) & 0x7F) << 0) /* Low Power Threshold<6:0> */

// REG_FAST_STRONG_SIGNAL_FREEZE
#define DONT_UNLOCK_GAIN_IF_STRONGER_SIGNAL BIT(7) /* Don't unlock gain if Stronger Signal */

// REG_FAST_FINAL_OVER_RANGE_AND_OPT_GAIN
#define FINAL_OVER_RANGE_COUNT(x)      (((x) & 0x7) << 5) /* Final Over Range Count<2:0> */
#define OPTIMIZE_GAIN_OFFSET(x)        (((x) & 0xF) << 0) /* Optimize Gain Offset<3:0> */

// REG_FAST_ENERGY_DETECT_COUNT
#define INCREMENT_GAIN_STP_LPFLMT(x)   (((x) & 0x7) << 5) /* Increment Gain Step (LPF/LMT)<2:0> */
#define ENERGY_DETECT_COUNT(x)         (((x) & 0x1F) << 0) /* Energy Detect count<4:0> */

// REG_FAST_AGCLL_UPPER_LIMIT
#define AGCLL_MAX_INCREASE(x)          (((x) & 0x3F) << 0) /* AGCLL Max Increase<5:0> */

// REG_FAST_GAIN_LOCK_EXIT_COUNT
#define GAIN_LOCK_EXIT_COUNT(x)        (((x) & 0x3F) << 0) /* Gain Lock Exit Count<5:0> */

// REG_FAST_INITIAL_LMT_GAIN_LIMIT
#define INITIAL_LMT_GAIN_LIMIT(x)      (((x) & 0x7F) << 0) /* Initial LMT Gain Limit<6:0> */

// REG_AGC_INNER_LOW_THRESH
#define PREVENT_GAIN_INC               BIT(7) /* Prevent Gain Inc */
#define AGC_INNER_LOW_THRESH(x)        (((x) & 0x7F) << 0) /* AGC Inner Low Threshold<6:0> */

// REG_LMT_OVERLOAD_COUNTERS
#define LARGE_LMT_OVERLOAD_EXED_COUNTER(x)   (((x) & 0xF) << 4) /* Large LMT Overload Exceeded Counter<3:0> */
#define SMALL_LMT_OVERLOAD_EXED_COUNTER(x)   (((x) & 0xF) << 0) /* Small LMT Overload Exceeded Counter<3:0> */

// REG_ADC_OVERLOAD_COUNTERS
#define LARGE_ADC_OVERLOAD_EXED_COUNTER(x)   (((x) & 0xF) << 4) /* Large ADC Overload Exceeded Counter<3:0> */
#define SMALL_ADC_OVERLOAD_EXED_COUNTER(x)   (((x) & 0xF) << 0) /* Small ADC Overload Exceeded Counter<3:0> */

// REG_GAIN_STP1
#define IMMED_GAIN_CHANGE_IF_LG_LMT_OVERLOAD   BIT(7) /* Immed. Gain Change if Lg LMT Overload */
#define IMMED_GAIN_CHANGE_IF_LG_ADC_OVERLOAD   BIT(3) /* Immed. Gain Change if Lg ADC Overload */
#define AGC_INNER_HIGH_THRESH_EXED_STP_SIZE(x) (((x) & 0x7) << 4) /* AGC Inner High Threshold Exceeded Step Size<2:0> */
#define AGC_INNER_LOW_THRESH_EXED_STP_SIZE(x)  (((x) & 0x7) << 0) /* AGC Inner Low Threshold Exceeded Step Size<2:0> */

// REG_DIGITAL_SAT_COUNTER
#define DOUBLE_GAIN_COUNTER            BIT(5) /* Double Gain Counter */
#define ENABLE_SYNC_FOR_GAIN_COUNTER   BIT(4) /* Enable Sync for Gain Counter */
#define DIG_SATURATION_EXED_COUNTER(x) (((x) & 0xF) << 0) /* Dig Saturation Exceeded Counter<3:0> */

// REG_OUTER_POWER_THRESHS
#define AGC_OUTER_HIGH_THRESH(x)       (((x) & 0xF) << 4) /* AGC Outer High Threshold<3:0> */
#define AGC_OUTER_LOW_THRESH(x)        (((x) & 0xF) << 0) /* AGC Outer Low Threshold<3:0> */

// REG_GAIN_STP_2
#define AGC_OUTER_HIGH_THRESH_EXED_STP_SIZE(x) (((x) & 0xF) << 4) /* AGC outer High Threshold Exceeded Step Size<3:0> */
#define AGC_OUTER_LOW_THRESH_EXED_STP_SIZE(x)  (((x) & 0xF) << 0) /* AGC Outer Low Threshold Exceeded Step Size<3:0> */

// REG_EXT_LNA_HIGH_GAIN
#define EXT_LNA_HIGH_GAIN(x)           (((x) & 0x3F) << 0) /* Ext LNA High Gain<5:0> */

// REG_EXT_LNA_LOW_GAIN
#define EXT_LNA_LOW_GAIN(x)            (((x) & 0x3F) << 0) /* Ext LNA Low Gain<5:0> */

// REG_GAIN_TABLE_ADDRESS
#define GAIN_TABLE_ADDRESS(x)          (((x) & 0x7F) << 0) /* Gain Table Address<6:0> */

// REG_GAIN_TABLE_WRITE_DATA1
#define EXT_LNA_CTRL                   BIT(7) /* Ext LNA Ctrl */
#define LNA_GAIN(x)                    (((x) & 0x3) << 5) /* LNA Gain <1:0> */
#define MIXER_GM_GAIN(x)               (((x) & 0x1F) << 0) /* Mixer Gm Gain <4:0> */

// REG_GAIN_TABLE_WRITE_DATA2
#define TIA_GAIN                       BIT(5) /* TIA Gain */
#define LPF_GAIN(x)                    (((x) & 0x1F) << 0) /* LPF Gain <4:0> */

// REG_GAIN_TABLE_WRITE_DATA_3
#define RF_DC_CAL                      BIT(5) /* RF DC Cal */
#define DIGITAL_GAIN(x)                (((x) & 0x1F) << 0) /* Digital Gain <4:0> */

// REG_GAIN_TABLE_READ_DATA_1
#define TO_LNA_GAIN(x)                 (((x) >> 5) & 0x3) /* LNA Gain <1:0> */
#define TO_MIXER_GM_GAIN(x)            (((x) >> 0) & 0x1F) /* Mixer Gm Gain <4:0> */

// REG_GAIN_TABLE_READ_DATA_2
#define TO_LPF_GAIN(x)                 (((x) >> 0) & 0x1F) /* LPF Gain <4:0> */

// REG_GAIN_TABLE_READ_DATA_3
#define TO_DIGITAL_GAIN(x)             (((x) >> 0) & 0x1F) /* Digital Gain <4:0> */

// REG_GAIN_TABLE_CONFIG
#define WRITE_GAIN_TABLE               BIT(2) /* Write Gain Table */
#define START_GAIN_TABLE_CLOCK         BIT(1) /* Start Gain Table Clock */
#define RECEIVER_SELECT(x)             (((x) & 0x3) << 3) /* Receiver Select<1:0> */
#define GT_RX1                         1
#define GT_RX2                         2

// REG_GM_SUB_TABLE_GAIN_WRITE
#define GM_SUB_TABLE_GAIN_WRITE(x)     (((x) & 0x7F) << 0) /* Gm Sub Table Gain Word Write<6:0> */

// REG_GM_SUB_TABLE_BIAS_WRITE
#define GM_SUB_TABLE_BIAS_WRITE(x)     (((x) & 0x1F) << 0) /* Gm Sub Table Bias Word Write<4:0> */

// REG_GM_SUB_TABLE_CTRL_WRITE
#define GM_SUB_TABLE_CTRL_WRITE(x)     (((x) & 0x3F) << 0) /* Gm Sub Table Control Word Write<5:0> */

// REG_GM_SUB_TABLE_GAIN_READ
#define GM_SUB_TABLE_GAIN_READ(x)      (((x) & 0x7F) << 0) /* Gm Sub Table Gain Word Read<6:0> */

// REG_GM_SUB_TABLE_BIAS_READ
#define GM_SUB_TABLE_BIAS_READ(x)      (((x) & 0x1F) << 0) /* Gm Sub Table Bias Word Read<4:0> */

// REG_GM_SUB_TABLE_CTRL_READ
#define GM_SUB_TABLE_CTRL_READ(x)      (((x) & 0x3F) << 0) /* Gm Sub Table Control Word Read<5:0> */

// REG_GM_SUB_TABLE_CONFIG
#define WRITE_GM_SUB_TABLE             BIT(2) /* Write Gm Sub Table */
#define START_GM_SUB_TABLE_CLOCK       BIT(1) /* Start Gm Sub Table Clock */

// REG_GAIN_DIFF_WORDERROR_WRITE
#define CALIB_TABLE_GAIN_DIFFERROR_WORD(x)   (((x) & 0x3F) << 0) /* Calib Table Gain Diff/Error Word<5:0> */

// REG_GAIN_ERROR_READ
#define CALIB_TABLE_GAIN_ERROR(x)      (((x) & 0x1F) << 0) /* Calib Table Gain Error<4:0> */

// REG_CONFIG
#define READ_SELECT                    BIT(4) /* Read Select */
#define WRITE_MIXER_ERROR_TABLE        BIT(3) /* Write Mixer Error Table */
#define WRITE_LNA_ERROR_TABLE          BIT(2) /* Write LNA Error Table */
#define WRITE_LNA_GAIN_DIFF            BIT(1) /* Write LNA Gain Diff */
#define START_CALIB_TABLE_CLOCK        BIT(0) /* Start Calib Table Clock */
#define CALIB_TABLE_SELECT(x)          (((x) & 0x3) << 5) /* Calib Table Select<1:0> */

// REG_LNA_GAIN_DIFF_READ_BACK
#define LNA_CALIB_TABLE_GAIN_DIFFERENCE_WORD(x) (((x) & 0x3F) << 0) /* LNA Calib Table Gain Difference Word<5:0> */

// REG_MAX_MIXER_CALIBRATION_GAIN_INDEX
#define MAX_MIXER_CALIBRATION_GAIN_INDEX(x)  (((x) & 0x1F) << 0) /* Max Mixer Calibration Gain Index<4:0> */

// REG_SETTLE_TIME
#define ENABLE_DIG_GAIN_CORR           BIT(7) /* Enable Dig Gain Corr */
#define FORCE_TEMP_SENSOR_FOR_CAL      BIT(6) /* Force Temp Sensor for Cal */
#define SETTLE_TIME(x)                 (((x) & 0x3F) << 0) /* Settle Time<5:0> */

// REG_MEASURE_DURATION
#define GAIN_CAL_MEAS_DURATION(x)      (((x) & 0xF) << 0) /* Gain Cal Meas Duration<3:0> */

// REG_MEASURE_DURATION_01
#define MEASUREMENT_DURATION_1(x)      (((x) & 0xF) << 4) /* Measurement duration 1 <3:0> */
#define MEASUREMENT_DURATION_0(x)      (((x) & 0xF) << 0) /* Measurement duration 0 <3:0> */

// REG_MEASURE_DURATION_23
#define MEASUREMENT_DURATION_3(x)      (((x) & 0xF) << 4) /* Measurement duration 3 <3:0> */
#define MEASUREMENT_DURATION_2(x)      (((x) & 0xF) << 0) /* Measurement duration 2 <3:0> */

// REG_RSSI_CONFIG
#define START_RSSI_MEAS                BIT(5) /* Start RSSI Meas (Mode 4) */
#define ENABLE_ADC_POWER_MEAS          BIT(1) /* Enable ADC Power Meas. */
#define DEFAULT_RSSI_MEAS_MODE         BIT(0) /* Default RSSI Meas Mode */
#define RFIR_FOR_RSSI_MEASUREMENT(x)   (((x) & 0x3) << 6) /* RFIR for RSSI measurement<1:0> */
#define RSSI_MODE_SELECT(x)            (((x) & 0x7) << 2) /* RSSI Mode Select<2:0> */

// REG_ADC_MEASURE_DURATION_01
#define ADC_POWER_MEASUREMENT_DURATION_1(x) (((x) & 0xF) << 4) /* ADC Power Measurement Duration 1<3:0> */
#define ADC_POWER_MEASUREMENT_DURATION_0(x) (((x) & 0xF) << 0) /* ADC Power Measurement Duration 0 <3:0> */

// REG_DEC_POWER_MEASURE_DURATION_0
#define USE_HB3_OUT_FOR_ADC_PWR_MEAS      BIT(7) /* Use HB3 Out for ADC Pwr Meas */
#define USE_HB1_OUT_FOR_DEC_PWR_MEAS      BIT(6) /* Use HB1 Out for Dec pwr Meas */
#define ENABLE_DEC_PWR_MEAS               BIT(5) /* Enable Dec Pwr Meas */
#define DEFAULT_MODE_ADC_POWER            BIT(4) /* Default Mode ADC Power */
#define DEC_POWER_MEASUREMENT_DURATION(x) (((x) & 0xF) << 0) /* Dec Power Measurement Duration <3:0> */

// REG_LNA_GAIN
#define DB_GAIN_READBACK_CHANNEL       BIT(0) /* dB Gain Read-back Channel */
#define MAX_LNA_GAIN(x)                (((x) & 0x7F) << 1) /* Max LNA Gain<6:0> */

// REG_RX_QUAD_CAL_LEVEL
#define RX_QUAD_CAL_LEVEL(x)           (((x) & 0xF) << 0) /* RX Quad Cal Level <3 :0> */

// REG_CALIBRATION_CONFIG_1
#define ENABLE_PHASE_CORR                BIT(7) /* Enable Phase Corr */
#define ENABLE_GAIN_CORR                 BIT(6) /* Enable Gain Corr */
#define USE_SETTLE_COUNT_FOR_DC_CAL_WAIT BIT(5) /* Use Settle Count for DC Cal Wait */
#define FIXED_DC_CAL_WAIT_TIME           BIT(4) /* Fixed DC Cal Wait Time */
#define FREE_RUN_MODE                    BIT(3) /* Free Run Mode */
#define ENABLE_CORR_WORD_DECIMATION      BIT(2) /* Enable Corr Word Decimation */
#define ENABLE_TRACKING_MODE_CH2         BIT(1) /* Enable Tracking Mode CH2 */
#define ENABLE_TRACKING_MODE_CH1         BIT(0) /* Enable Tracking Mode CH1 */

// REG_CALIBRATION_CONFIG_2
#define SOFT_RESET                     BIT(7) /* Soft Reset */
#define CALIBRATION_CONFIG2_DFLT       (0x3 << 5) /* Must be 2'b11 */
#define K_EXP_PHASE(x)                 (((x) & 0x1F) << 0) /* K exp Phase<4:0> */

// REG_CALIBRATION_CONFIG_3
#define PREVENT_POS_LOOP_GAIN          BIT(7) /* Prevent Pos Loop Gain */
#define K_EXP_AMPLITUDE(x)             (((x) & 0x1F) << 0) /* K exp Amplitude<4:0> */

// REG_RX_QUAD_GAIN1
#define RX_FULL_TABLELMT_TABLE_GAIN(x) (((x) & 0x7F) << 0) /* RX Full table/LMT table gain<6:0> */

// REG_RX_QUAD_GAIN2
#define CORRECTION_WORD_DECIMATION_M(x) (((x) & 0x7) << 5) /* Correction Word Decimation M<2:0> */
#define RX_LPF_GAIN(x)                  (((x) & 0x1F) << 0) /* RX LPF gain<4:0> */

// REG_RX1_INPUT_A_OFFSETS
#define RX1_INPUT_A_I_DC_OFFSET_LSB(x) (((x) & 0x3F) << 2) /* RX1 Input A "I" DC Offset<5:0> */
#define RX1_INPUT_A_Q_DC_OFFSET(x)     (((x) & 0x3) << 0) /* RX1 Input A "Q" DC Offset<9:8> */

// REG_INPUT_A_OFFSETS_1
#define RX2_INPUT_A_Q_DC_OFFSET_LSB(x) (((x) & 0xF) << 4) /* RX2 Input A "Q" DC Offset<3:0> */
#define RX1_INPUT_A_I_DC_OFFSET_MSB(x) (((x) & 0xF) << 0) /* RX1 Input A "I" DC Offset<9:6> */

// REG_RX2_INPUT_A_OFFSETS
#define RX2_INPUT_A_I_DC_OFFSET(x)     (((x) & 0x3) << 6) /* RX2 Input A "I" DC Offset<1:0> */
#define RX2_INPUT_A_Q_DC_OFFSET_MSB(x) (((x) & 0x3F) << 0) /* RX2 Input A "Q" DC Offset<9:4> */

// REG_RX1_INPUT_BC_OFFSETS
#define RX1_INPUT_BC_I_DC_OFFSET_LSB(x) (((x) & 0x3F) << 2) /* RX1 Input B&C "I" DC Offset<5:0> */
#define RX1_INPUT_BC_Q_DC_OFFSET(x)     (((x) & 0x3) << 0) /* RX1 Input B&C "Q" DC Offset<9:8> */

// REG_INPUT_BC_OFFSETS_1
#define RX2_INPUT_BC_Q_DC_OFFSET_LSB(x) (((x) & 0xF) << 4) /* RX2 Input B&C "Q" DC Offset<3:0> */
#define RX1_INPUT_BC_I_DC_OFFSET_MSB(x) (((x) & 0xF) << 0) /* RX1 Input B&C "I" DC Offset<9:6> */

// REG_RX2_INPUT_BC_OFFSETS
#define RX2_INPUT_BC_I_DC_OFFSET(x)     (((x) & 0x3) << 6) /* RX2 Input B&C "I" DC Offset<1:0> */
#define RX2_INPUT_BC_Q_DC_OFFSET_MSB(x) (((x) & 0x3F) << 0) /* RX2 Input B&C "Q" DC Offset<9:4> */

// REG_FORCE_BITS
#define RX2_INPUT_BC_FORCE_OFFSET      BIT(7) /* RX2 Input B&C Force offset */
#define RX1_INPUT_BC_FORCE_OFFSET      BIT(6) /* RX1 Input B&C Force offset */
#define RX2_INPUT_BC_FORCE_PHGAIN      BIT(5) /* RX2 Input B&C Force Ph/Gain */
#define RX1_INPUT_BC_FORCE_PHGAIN      BIT(4) /* RX1 Input B&C Force Ph/Gain */
#define RX2_INPUT_A_FORCE_OFFSET       BIT(3) /* RX2 Input A Force offset */
#define RX1_INPUT_A_FORCE_OFFSET       BIT(2) /* RX1 Input A Force offset */
#define RX2_INPUT_A_FORCE_PHGAIN       BIT(1) /* RX2 Input A Force Ph/Gain */
#define RX1_INPUT_A_FORCE_PHGAIN       BIT(0) /* RX1 Input A Force Ph/Gain */

// REG_RF_DC_OFFSET_CONFIG_1
#define DAC_FS(x)                      (((x) & 0x3) << 4) /* DAC FS<1:0> */
#define RF_DC_CALIBRATION_COUNT(x)     (((x) & 0xF) << 0) /* RF DC Calibration Count<3:0> */

// REG_RF_DC_OFFSET_ATTEN
#define RF_DC_OFFSET_TABLE_UPDATE_COUNT(x) (((x) & 0x7) << 5) /* RF DC Offset Table Update Count<2:0> */
#define RF_DC_OFFSET_ATTEN(x)              (((x) & 0x1F) << 0) /* RF DC Offset Attenuation<4:0> */

// REG_INVERT_BITS
#define INVERT_RX2_RF_DC_CGIN_WORD     BIT(7) /* Invert RX2 RF DC  CGin Word */
#define INVERT_RX1_RF_DC_CGIN_WORD     BIT(6) /* Invert RX1 RF DC  CGin Word */
#define INVERT_RX2_RF_DC_CGOUT_WORD    BIT(5) /* Invert RX2 RF DC  CGout Word */
#define INVERT_RX1_RF_DC_CGOUT_WORD    BIT(4) /* Invert RX1 RF DC  CGout Word */

// REG_DC_OFFSET_CONFIG2
#define USE_WAIT_COUNTER_FOR_RF_DC_INIT_CAL BIT(7) /* Use Wait Counter for RF DC Init Cal */
#define ENABLE_FAST_SETTLE_MODE             BIT(6) /* Enable Fast Settle Mode */
#define ENABLE_BB_DC_OFFSET_TRACKING        BIT(5) /* Enable BB DC Offset Tracking */
#define RESET_ACC_ON_GAIN_CHANGE            BIT(4) /* Reset Acc on Gain Change */
#define ENABLE_RF_OFFSET_TRACKING           BIT(3) /* Enable RF Offset Tracking */
#define DC_OFFSET_UPDATE(x)                 (((x) & 0x7) << 0) /* DC Offset Update<2:0> */

// REG_RF_CAL_GAIN_INDEX
#define RF_MINIMUM_CALIBRATION_GAIN_INDEX(x) (((x) & 0x7F) << 0) /* RF Minimum Calibration Gain Index<6:0> */

// REG_SOI_THRESH
#define RF_SOI_THRESH(x)               (((x) & 0x7F) << 0) /* RF SOI Threshold<6:0> */

// REG_BB_DC_OFFSET_SHIFT
#define INCREASE_COUNT_DURATION        BIT(7) /* Increase Count Duration */
#define BB_TRACKING_DECIMATE(x)        (((x) & 0x3) << 5) /* BB Tracking Decimate<1:0> */
#define BB_DC_M_SHIFT(x)               (((x) & 0x1F) << 0) /* BB  DC M Shift<4:0> */

// REG_BB_DC_OFFSET_FAST_SETTLE_SHIFT
#define READ_BACK_CH_SEL                      BIT(7) /* Read Back  CH Sel */
#define UPDATE_TRACKING_WORD                  BIT(6) /* Update Tracking Word */
#define FORCE_RX_NULL                         BIT(5) /* Force RX Null */
#define BB_DC_TRACKING_FAST_SETTLE_M_SHIFT(x) (((x) & 0x1F) << 0) /* BB DC Tracking Fast Settle M Shift<4:0> */

// REG_BB_DC_OFFSET_ATTEN
#define BB_DC_OFFSET_ATTEN(x)          (((x) & 0xF) << 0) /* BB DC Offset Atten<3:0> */

// REG_RX1_BB_DC_WORD_I_MSB
#define RX1_BB_DC_OFFSET_CORRECTION_WORD_I(x) (((x) & 0x7F) << 0) /* RX1 BB DC Offset Correction word I<14:8> */

// REG_RX1_BB_DC_WORD_Q_MSB
#define RX1_BB_DC_OFFSET_CORRECTION_WORD_Q(x) (((x) & 0x7F) << 0) /* RX1 BB DC Offset Correction word Q<14:8> */

// REG_RX2_BB_DC_WORD_I_MSB
#define RX2_BB_DC_OFFSET_CORRECTION_WORD_I(x) (((x) & 0x7F) << 0) /* RX2 BB DC Offset Correction word I<14:8> */

// REG_RX2_BB_DC_WORD_Q_MSB
#define RX2_BB_DC_OFFSET_CORRECTION_WORD_Q(x) (((x) & 0x7F) << 0) /* RX2 BB DC Offset Correction word Q<14:8> */

// REG_BB_TRACK_CORR_WORD_I_MSB
#define RX1RX2_BB_DC_OFFSET_TRACKING_CORRECTION_WORD_I(x) (((x) & 0x7F) << 0) /* RX1/RX2 BB DC Offset Tracking correction word I<14:8> */

// REG_BB_TRACK_CORR_WORD_Q_MSB
#define RX1RX2_BB_DC_OFFSET_TRACKING_CORRECTION_WORD_Q(x) (((x) & 0x7F) << 0) /* RX1/RX2 BB DC Offset Tracking correction word Q<14:8> */

// REG_SYMBOL_LSB
#define RX2_RSSI_SYMBOL                BIT(1) /* RX2 RSSI symbol <0> */
#define RX1_RSSI_SYMBOL                BIT(0) /* RX1 RSSI symbol <0> */

// REG_PREAMBLE_LSB
#define RX2_RSSI_PREAMBLE              BIT(1) /* RX2 RSSI preamble <0> */
#define RX1_RSSI_PREAMBLE              BIT(0) /* RX1 RSSI preamble <0> */

// REG_RXn_RSSI_SYMBOL, REG_RXn_RSSI_PREAMBLE
#define RSSI_LSB_SHIFT                 1
#define RSSI_LSB_MASK1                 0x01
#define RSSI_LSB_MASK2                 0x02

// REG_RX_PATH_GAIN_LSB
#define RX_PATH_GAIN                   BIT(0) /* RX Path Gain<0> */

// REG_RX_DIFF_LNA_FORCE
#define FORCE_RX2_LNA_GAIN             BIT(7) /* Force RX2 LNA Gain */
#define RX2_LNA_BYPASS                 BIT(6) /* RX2 LNA Bypass */
#define FORCE_RX1_LNA_GAIN             BIT(3) /* Force RX1 LNA Gain */
#define RX1_LNA_BYPASS                 BIT(2) /* RX1 LNA Bypass */
#define RX2_LNA_GAIN(x)                (((x) & 0x3) << 4) /* RX2 LNA Gain<1:0> */
#define RX1_LNA_GAIN(x)                (((x) & 0x3) << 0) /* RX1 LNA Gain<1:0> */

// REG_RX_LNA_BIAS_COARSE
#define RX_LNA_BIAS_COARSE(x)          (((x) & 0xF) << 0) /* RX LNA Bias Coarse<3:0> */

// REG_RX_LNA_BIAS_FINE_0
#define RX_LNA_PCASCODE_BIAS(x)        (((x) & 0x7) << 5) /* RX LNA p-Cascode Bias<2:0> */
#define RX_LNA_BIAS(x)                 (((x) & 0x1F) << 0) /* RX LNA Bias<4:0> */

// REG_RX_LNA_BIAS_FINE_1
#define RX_LNA_P_CASCODE_BIAS_FINE(x)  (((x) & 0x3) << 0) /* RX LNA p- Cascode Bias Fine<4:3> */

// REG_RX_MIX_GM_CONFIG
#define RX_MIX_GM_CM_OUT(x)            (((x) & 0x7) << 5) /* RX Mix Gm CM Out<2:0> */
#define RX_MIX_GM_PLOAD(x)             (((x) & 0x3) << 0) /* RX Mix Gm pload <1:0> */

// REG_RX1_MIX_GM_FORCE
#define FORCE_RX1_MIX_GM               BIT(6) /* Force RX1 Mix Gm */
#define RX1_MIX_GM_GAIN(x)             (((x) & 0x3F) << 0) /* RX1 Mix Gm Gain<5:0> */

// REG_RX1_MIX_GM_BIAS_FORCE
#define RX1_MIX_GM_BIAS(x)             (((x) & 0x1F) << 0) /* RX1 Mix Gm Bias<4:0> */

// REG_RX2_MIX_GM_FORCE
#define FORCE_RX2_MIX_GM               BIT(6) /* Force RX2 Mix Gm */
#define RX2_MIX_GM_GAIN(x)             (((x) & 0x3F) << 0) /* RX2 Mix Gm Gain<5:0> */

// REG_RX2_MIX_GM_BIAS_FORCE
#define RX2_MIX_GM_BIAS(x)             (((x) & 0x1F) << 0) /* RX2 Mix Gm Bias<4:0> */

// REG_INPUT_A_MSBS
#define INPUT_A_RX1_Q(x)               (((x) & 0x3) << 6) /* Input A RX1 Q<9:8> */
#define INPUT_A_RX1_I(x)               (((x) & 0x3) << 4) /* Input A RX1 I<9:8> */
#define INPUT_A_RX2_I(x)               (((x) & 0x3) << 2) /* Input A RX2 I<9:8> */
#define INPUT_A_RX2_Q(x)               (((x) & 0x3) << 0) /* Input A RX2 Q<9:8> */

// REG_INPUTS_BC_MSBS
#define INPUTS_BC_RX1_Q(x)             (((x) & 0x3) << 6) /* Inputs B&C RX1 Q<9:8> */
#define INPUTS_BC_RX1_I(x)             (((x) & 0x3) << 4) /* Inputs B&C RX1 I<9:8> */
#define INPUTS_BC_RX2_I(x)             (((x) & 0x3) << 2) /* Inputs B&C RX2 I<9:8> */
#define INPUTS_BC_RX2_Q(x)             (((x) & 0x3) << 0) /* Inputs B&C RX2 Q<9:8> */

// REG_FORCE_OS_DAC
#define FORCE_CGIN_DAC                 BIT(2) /* Force CGin DAC */

// REG_RX_MIX_LO_CM
#define RX_MIX_LO_CM(x)                (((x) & 0x3F) << 0) /* RX Mix LO CM<5:0> */

// REG_RX_CGB_SEG_ENABLE
#define RX_CGB_SEG_ENABLE(x)           (((x) & 0x3F) << 0) /* RX CGB Seg Enable<5:0> */

// REG_RX_MIX_INPUTBIAS
#define RX_CGB_INPUT_CM_SEL(x)         (((x) & 0x3) << 4) /* RX CGB Input CM Sel<1:0> */
#define RX_CGB_BIAS(x)                 (((x) & 0xF) << 0) /* RX CGB Bias<3:0> */

// REG_RX_TIA_CONFIG
#define TIA2_OVERRIDE_C                BIT(3) /* TIA2 Override C */
#define TIA2_OVERRIDE_R                BIT(2) /* TIA2 Override R */
#define TIA1_OVERRIDE_C                BIT(1) /* TIA1 Override C */
#define TIA1_OVERRIDE_R                BIT(0) /* TIA1 Override R */
#define TIA_SEL_CC(x)                  (((x) & 0x7) << 5) /* TIA Sel CC<2:0> */

// REG_TIA1_C_LSB
#define TIA1_RF(x)                     (((x) & 0x3) << 6) /* TIA1 RF<1:0> */
#define TIA1_C_LSB(x)                  (((x) & 0x3F) << 0) /* TIA1     C LSB<5:0> */

// REG_TIA1_C_MSB
#define TIA1_C_MSB(x)                  (((x) & 0x7F) << 0) /* TIA1 C MSB<6:0> */

// REG_TIA2_C_LSB
#define TIA2_RF(x)                     (((x) & 0x3) << 6) /* TIA2 RF<1:0> */
#define TIA2_C_LSB(x)                  (((x) & 0x3F) << 0) /* TIA2 C LSB<5:0> */

// REG_TIA2_C_MSB
#define TIA2_C_MSB(x)                  (((x) & 0x7F) << 0) /* TIA2 C MSB<6:0> */

// REG_RX1_BBF_R1A
#define FORCE_RX1_RESISTORS            BIT(7) /* Force RX1 Resistors */
#define RX1_BBF_R1A(x)                 (((x) & 0x3F) << 0) /* RX1 BBF R1A<5:0> */

// REG_RX2_BBF_R1A
#define FORCE_RX2_RESISTORS            BIT(7) /* Force RX2 Resistors */
#define RX2_BBF_R1A(x)                 (((x) & 0x3F) << 0) /* RX2 BBF R1A<5:0> */

// REG_RX1_TUNE_CTRL
#define RX1_TUNE_RESAMPLE_PHASE        BIT(2) /* RX1 Tune Resample Phase */
#define RX1_TUNE_RESAMPLE              BIT(1) /* RX1 Tune Resample */
#define RX1_PD_TUNE                    BIT(0) /* RX1 PD Tune */

// REG_RX2_TUNE_CTRL
#define RX2_TUNE_RESAMPLE_PHASE        BIT(2) /* RX2 Tune Resam ple Phase */
#define RX2_TUNE_RESAMPLE              BIT(1) /* RX2 Tune Resample */
#define RX2_PD_TUNE                    BIT(0) /* RX2 PD Tune */

// REG_RX_BBF_R2346
#define TUNE_OVERRIDE                  BIT(7) /* Tune Override */
#define RX_BBF_R2346(x)                (((x) & 0x7) << 0) /* RX BBF R2346<2:0> */

// REG_RX_BBF_C1_MSB
#define RX_BBF_C1_MSB(x)               (((x) & 0x3F) << 0) /* RX BBF C1 MSB<5:0> */

// REG_RX_BBF_C1_LSB
#define RX_BBF_C1_LSB(x)               (((x) & 0x7F) << 0) /* RX BBF C1 LSB<6:0> */

// REG_RX_BBF_C2_MSB
#define RX_BBF_C2_MSB(x)               (((x) & 0x3F) << 0) /* RX BBF C2 MSB<5:0> */

// REG_RX_BBF_C2_LSB
#define RX_BBF_C2_LSB(x)               (((x) & 0x7F) << 0) /* RX BBF C2 LSB<6:0> */

// REG_RX_BBF_C3_MSB
#define RX_BBF_C3_MSB(x)               (((x) & 0x3F) << 0) /* RX BBF C3 MSB<5:0> */

// REG_RX_BBF_C3_LSB
#define RX_BBF_C3_LSB(x)               (((x) & 0x7F) << 0) /* RX BBF C3 LSB<6:0> */

// REG_RX_BBF_CC1_CTR
#define RX_BBF_CC1_CTR(x)              (((x) & 0x7F) << 0) /* RX BBF CC1 Ctr<6:0> */

// REG_RX_BBF_POW_RZ_BYTE0
#define MUST_BE_ZERO                   BIT(7) /* Must be zero */
#define RX1_BBF_POW_CTR(x)             (((x) & 0x3) << 5) /* RX1 BBF Pow Ctr<1:0> */
#define RX_BBF_RZ1_CTR(x)              (((x) & 0x3) << 3) /* RX BBF Rz1 Ctr<1:0> */

// REG_RX_BBF_CC2_CTR
#define RX_BBF_CC2_CTR(x)              (((x) & 0x7F) << 0) /* RX BBF CC2 Ctr<6:0> */

// REG_RX_BBF_POW_RZ_BYTE1
#define RX_BBF_POW3_CTR(x)             (((x) & 0x3) << 6) /* RX BBF Pow3 Ctr<1:0> */
#define RX_BBF_RZ3_CTR(x)              (((x) & 0x3) << 4) /* RX BBF RZ3 Ctr<1:0> */
#define RX_BBF_POW2_CTR(x)             (((x) & 0x3) << 2) /* RX BBF Pow2 Ctr<1:0> */
#define RX_BBF_RZ2_CTR(x)              (((x) & 0x3) << 0) /* RX BBF Rz2 Ctr<1:0> */

// REG_RX_BBF_CC3_CTR
#define RX_BBF_CC3_CTR(x)              (((x) & 0x7F) << 0) /* RX BBF CC3 Ctr<6:0> */

// REG_RX_BBF_TUNE
#define RXBBF_BYPASS_BIAS_R            BIT(7) /* RXBBF Bypass Bias R */
#define RX_BBF_R5_TUNE                 BIT(4) /* RX BBF R5 Tune */
#define RX1_BBF_TUNE_COMP_I            BIT(3) /* RX1 BBF Tune Comp I */
#define RX1_BBF_TUNE_COMP_Q            BIT(2) /* RX1 BBF Tune Comp Q */
#define RX2_BBF_TUNE_COMP_I            BIT(1) /* RX2 BBF Tune Comp I */
#define RX2_BBF_TUNE_COMP_Q            BIT(0) /* RX2 BBF Tune Comp Q */
#define RX_BBF_TUNE_CTR(x)             (((x) & 0x3) << 5) /* RX BBF Tune Ctr<1:0> */

// REG_RX1_BBF_MAN_GAIN
#define RX1_BBF_FORCE_GAIN             BIT(5) /* RX1 BBF Force Gain */
#define RX1_BBF_BQ_GAIN(x)             (((x) & 0x3) << 3) /* RX1 BBF BQ Gain<1:0> */
#define RX1_BBF_POLE_GAIN(x)           (((x) & 0x7) << 0) /* RX1 BBF Pole Gain<2:0> */

// REG_RX2_BBF_MAN_GAIN
#define RX2_BBF_FORCE_GAIN             BIT(5) /* RX2 BBF Force Gain */
#define RX2_BBF_BQ_GAIN(x)             (((x) & 0x3) << 3) /* RX2 BBF BQ Gain<1:0> */
#define RX2_BBF_POLE_GAIN(x)           (((x) & 0x7) << 0) /* RX2 BBF Pole Gain<2:0> */

// REG_RX_BBF_TUNE_CONFIG
#define RX_TUNE_EVALTIME               BIT(4) /* RX Tune Evaltime */
#define RX_BBF_TUNE_DIVIDE             BIT(0) /* RX BBF Tune Divide<8> */
#define TUNE_COMP_MASK(x)              (((x) & 0x3) << 5) /* Tune Comp Mask <1:0> */
#define RX_TUNE_MODE(x)                (((x) & 0x7) << 1) /* RX Tune Mode<2:0> */

// REG_POLE_GAIN
#define POLE_GAIN_TUNE(x)              (((x) & 0x3) << 0) /* Pole Gain Tune<1:0> */

// REG_RX_BBBW_MHZ
#define RX_TUNE_BBBW_MHZ(x)            (((x) & 0x1F) << 0) /* RX Tune BBBW MHz<4::0> */

// REG_RX_BBBW_KHZ
#define RX_TUNE_BBBW_KHZ(x)            (((x) & 0x7F) << 0) /* RX Tune BBBW kHz<6:0> */

// REG_RX_PFD_CONFIG
#define BYPASS_LD_SYNTH                BIT(0) /* Bypass Ld Synth */

// REG_RX_INTEGER_BYTE_1
#define SYNTH_INTEGER_WORD(x)          (((x) & 0x7) << 0) /* Synthesizer Integer Word<10:8> */

// REG_RX_FRACT_BYTE_2
#define SYNTH_FRACT_WORD(x)            (((x) & 0x7F) << 0) /* Synthesizer Fractional Word <22:16> */

// REG_RX_FORCE_VCO_TUNE_1
#define VCO_CAL_OFFSET(x)              (((x) & 0xF) << 3) /* VCO Cal Offset<3:0> */

// REG_RX_ALC_VARACTOR
#define INIT_ALC_VALUE(x)              (((x) & 0xF) << 4) /* Init ALC Value<3:0> */
#define VCO_VARACTOR(x)                (((x) & 0xF) << 0) /* VCO Varactor<3:0> */

// REG_RX_VCO_OUTPUT
#define PORB_VCO_LOGIC                 BIT(6) /* PORb VCO Logic */
#define VCO_OUTPUT_LEVEL(x)            (((x) & 0xF) << 0) /* VCO Output Level<3:0> */

// REG_RX_CP_CURRENT
#define CHARGE_PUMP_CURRENT(x)         (((x) & 0x3F) << 0) /* Charge Pump Current<5:0> */

// REG_RX_CP_OFFSET
#define SYNTH_RECAL                    BIT(7) /* Synth Re-Cal */

// REG_RX_CP_CONFIG
#define HALF_VCO_CAL_CLK               BIT(7) /* Half Vco Cal Clk */
#define CP_OFFSET_OFF                  BIT(4) /* CP Offset Off */
#define F_CPCAL                        BIT(3) /* F Cpcal */
#define CP_CAL_ENABLE                  BIT(2) /* Cp Cal Enable */

// REG_RX_LOOP_FILTER_1
#define LOOP_FILTER_C2(x)              (((x) & 0xF) << 4) /* Loop Filter C2<3:0> */
#define LOOP_FILTER_C1(x)              (((x) & 0xF) << 0) /* Loop Filter C1<3:0> */

// REG_RX_LOOP_FILTER_2
#define LOOP_FILTER_R1(x)              (((x) & 0xF) << 4) /* Loop Filter R1<3:0> */
#define LOOP_FILTER_C3(x)              (((x) & 0xF) << 0) /* Loop Filter C3<3:0> */

// REG_RX_LOOP_FILTER_3
#define LOOP_FILTER_BYPASS_R3          BIT(7) /* Loop Filter Bypass R3 */
#define LOOP_FILTER_BYPASS_R1          BIT(6) /* Loop Filter Bypass R1 */
#define LOOP_FILTER_BYPASS_C2          BIT(5) /* Loop Filter Bypass C2 */
#define LOOP_FILTER_BYPASS_C1          BIT(4) /* Loop Filter Bypass C1 */
#define LOOP_FILTER_R3(x)              (((x) & 0xF) << 0) /* Loop Filter R3<3:0> */

// REG_RX_DITHERCP_CAL
#define FORCED_CP_CAL_WORD(x)          (((x) & 0xF) << 0) /* Forced CP Cal Word<3:0> */

// REG_RX_VCO_BIAS_1
#define VCO_BIAS_TCF(x)                (((x) & 0x3) << 3) /* VCO Bias Tcf<1:0> */
#define VCO_BIAS_REF(x)                (((x) & 0x7) << 0) /* VCO Bias Ref<2:0> */

// REG_RX_CAL_STATUS
#define CP_CAL_VALID                   BIT(7) /* CP Cal Valid */
#define CP_CAL_DONE                    BIT(5) /* CP Cal Done */
#define VCO_CAL_BUSY                   BIT(4) /* VCO Cal Busy */
#define CP_CAL_WORD(x)                 (((x) & 0xF) << 0) /* CP Cal Word<3:0> */

// REG_RX_VCO_CAL_REF
#define VCO_CAL_REF_TCF(x)             (((x) & 0x7) << 0) /* VCO Cal Ref Tcf<2:0> */

// REG_RX_VCO_PD_OVERRIDES
#define POWER_DOWN_VARACTOR_REF        BIT(3) /* Power Down Varactor Ref */
#define PWR_DOWN_VARACT_REF_TCF        BIT(2) /* Pwr Down Varact Ref Tcf */
#define POWER_DOWN_CAL_TCF             BIT(1) /* Power Down Cal Tcf */
#define POWER_DOWN_VCO_BUFFFER         BIT(0) /* Power Down VCO Bufffer */

// REG_RX_CP_OVERRANGE_VCO_LOCK
#define CP_OVRG_HIGH                   BIT(7) /* CP Ovrg High */
#define CP_OVRG_LOW                    BIT(6) /* CP Ovrg Low */
#define VCO_LOCK                       BIT(1) /* Lock */

// REG_RX_VCO_LDO
#define VCO_LDO_BYPASS                 BIT(7) /* VCO LDO Bypass */
#define VCO_LDO_INRUSH(x)              (((x) & 0x3) << 5) /* VCO LDO Inrush<1:0> */
#define VCO_LDO_SEL(x)                 (((x) & 0x7) << 2) /* VCO LDO Sel<2:0> */
#define VCO_LDO_VDROP_SEL(x)           (((x) & 0x3) << 0) /* VCO LDO Vdrop Sel<1:0> */

// REG_RX_VCO_CAL
#define VCO_CAL_EN                     BIT(7) /* VCO Cal En */
#define VCO_CAL_ALC_WAIT(x)            (((x) & 0x7) << 4) /* VCO Cal ALC Wait <2:0> */
#define VCO_CAL_COUNT(x)               (((x) & 0x3) << 2) /* VCO Cal Count <1:0> */

// REG_RX_LOCK_DETECT_CONFIG
#define LOCK_DETECT_COUNT(x)           (((x) & 0x3) << 2) /* Lock Detect Count<1:0> */
#define LOCK_DETECT_MODE(x)            (((x) & 0x3) << 0) /* Lock Detect Mode<1:0> */

// REG_RX_CP_LEVEL_DETECT
#define CP_LEVEL_DETECT_POWER_DOWN     BIT(6) /* CP Level Detect Power Down */
#define CP_LEVEL_THRESH_LOW(x)         (((x) & 0x7) << 3) /* CP Level Threshold Low<2:0> */
#define CP_LEVEL_THRESH_HIGH(x)        (((x) & 0x7) << 0) /* CP Level Threshold High<2:0> */

// REG_RX_DSM_SETUP_0
#define DSM_PROG(x)                    (((x) & 0xF) << 0) /* DSM Prog<3:0> */

// REG_RX_DSM_SETUP_1
#define SIF_CLOCK                      BIT(6) /* SIF clock */
#define SIF_RESET_BAR                  BIT(5) /* SIF Reset Bar */
#define SIF_ADDR(x)                    (((x) & 0x1F) << 0) /* SIF Addr<4:0> */

// REG_RX_CORRECTION_WORD0
#define UPDATE_FREQ_WORD               BIT(7) /* Update Freq Word */
#define READ_EFFECTIVE_TUNING_WORD     BIT(5) /* Read Effective Tuning Word */
#define FREQ_CORRECTION_WORD_MSB(x)    (((x) & 0x1F) << 0) /* Frequency Correction Word<11:7> */

// REG_RX_CORRECTION_WORD1
#define UPDATE_FREQ_WORD               BIT(7) /* Update Freq Word */
#define FREQ_CORRECTION_WORD_LSB(x)    (((x) & 0x7F) << 0) /* Frequency Correction Word<6:0> */

// REG_RX_VCO_VARACTOR_CTRL_0
#define VCO_VARACTOR_REFERENCE_TCF(x)  (((x) & 0x7) << 4) /* VCO Varactor Reference Tcf<2:0> */
#define VCO_VARACTOR_OFFSET(x)         (((x) & 0xF) << 0) /* VCO Varactor Offset<3:0> */

// REG_RX_VCO_VARACTOR_CTRL_1
#define VCO_VARACTOR_REFERENCE(x)      (((x) & 0xF) << 0) /* VCO Varactor Reference<3:0> */

// REG_RX_FAST_LOCK_SETUP
#define RX_FAST_LOCK_LOAD_SYNTH         BIT(3) /* RX Fast Lock Load Synth */
#define RX_FAST_LOCK_PROFILE_INIT       BIT(2) /* RX Fast Lock Profile Init */
#define RX_FAST_LOCK_PROFILE_PIN_SELECT BIT(1) /* RX Fast Lock Profile Pin Select */
#define RX_FAST_LOCK_MODE_ENABLE        BIT(0) /* RX Fast Lock Mode Enable */
#define RX_FAST_LOCK_PROFILE(x)         (((x) & 0x7) << 5) /* RX Fast Lock Profile<2:0> */

// REG_RX_FAST_LOCK_PROGRAM_ADDR
#define RX_FAST_LOCK_PROFILE_ADDR(x)   (((x) & 0x7) << 4) /* RX Fast Lock Profile<2:0> */
#define RX_FAST_LOCK_PROFILE_WORD(x)   (((x) & 0xF) << 0) /* Configuration Word <3:0> */

// REG_RX_FAST_LOCK_PROGRAM_CTRL
#define RX_FAST_LOCK_PROGRAM_WRITE        BIT(1) /* RX Fast Lock Program Write */
#define RX_FAST_LOCK_PROGRAM_CLOCK_ENABLE BIT(0) /* RX Fast Lock Program Clock Enable */

#define RX_FAST_LOCK_CONFIG_WORD_NUM      16

// REG_RX_LO_GEN_POWER_MODE
#define RX_LO_GEN_POWER_MODE(x)        (((x) & 0x3) << 4) /* Power Mode<3:0> */

// REG_TX_PFD_CONFIG
#define DIV_TEST_EN                    BIT(5) /* Div Test En */
#define PFD_CLK_EDGE                   BIT(1) /* PFD Clk Edge */
#define BYPASS_LD_SYNTH                BIT(0) /* Bypass Ld Synth */
#define PFD_WIDTH(x)                   (((x) & 0x3) << 2) /* PFD Width <1:0> */

// REG_TX_INTEGER_BYTE_1
#define SDM_BYPASS                     BIT(7) /* SDM Bypass */
#define SDM_POWER_DOWN                 BIT(6) /* SDM Power Down */
#define SYNTH_INTEGER_WORD(x)          (((x) & 0x7) << 0) /* Synthesizer Integer Word<10:8> */

// REG_TX_FRACT_BYTE_2
#define SYNTH_FRACT_WORD(x)            (((x) & 0x7F) << 0) /* Synthesizer Fractional Word <22:16> */

// REG_TX_FORCE_ALC
#define FORCE_ALC_ENABLE               BIT(7) /* Force ALC Enable */
#define FORCE_ALC_WORD(x)              (((x) & 0x7F) << 0) /* Force ALC Word<6:0> */

// REG_TX_FORCE_VCO_TUNE_1
#define BYPASS_LOAD_DELAY              BIT(7) /* Bypass Load Delay */
#define FORCE_VCO_TUNE_ENABLE          BIT(1) /* Force VCO Tune Enable */
#define FORCE_VCO_TUNE                 BIT(0) /* Force VCO Tune */
#define VCO_CAL_OFFSET(x)              (((x) & 0xF) << 3) /* VCO Cal Offset<3:0> */

// REG_TX_ALCVARACT_OR
#define INIT_ALC_VALUE(x)              (((x) & 0xF) << 4) /* Init ALC Value<3:0> */
#define VCO_VARACTOR(x)                (((x) & 0xF) << 0) /* VCO Varactor<3:0> */

// REG_TX_VCO_OUTPUT
#define PORB_VCO_LOGIC                 BIT(6) /* PORb VCO Logic */
#define VCO_OUTPUT_LEVEL(x)            (((x) & 0xF) << 0) /* VCO Output Level<3:0> */

// REG_TX_CP_CURRENT
#define TX_CP_CURRENT_DFLT             BIT(7) /* Set to 1 */
#define VTUNE_FORCE                    BIT(6) /* Vtune Force */
#define CHARGE_PUMP_CURRENT(x)         (((x) & 0x3F) << 0) /* Charge Pump Current<5:0> */

// REG_TX_CP_OFFSET
#define SYNTH_RECAL                    BIT(7) /* Synth Re-Cal */
#define CHARGE_PUMP_OFFSET(x)          (((x) & 0x3F) << 0) /* Charge Pump Offset<5:0> */

// REG_TX_CP_CONFIG
#define HALF_VCO_CAL_CLK               BIT(7) /* Half Vco Cal Clk */
#define DITHER_MODE                    BIT(6) /* Dither Mode */
#define CP_OFFSET_OFF                  BIT(4) /* Cp Offset Off */
#define F_CPCAL                        BIT(3) /* F Cpcal */
#define CP_CAL_ENABLE                  BIT(2) /* Cp Cal Enable */
#define CP_TEST(x)                     (((x) & 0x3) << 0) /* Cp Test <1:0> */

// REG_TX_LOOP_FILTER_1
#define LOOP_FILTER_C2(x)              (((x) & 0xF) << 4) /* Loop Filter C2<3:0> */
#define LOOP_FILTER_C1(x)              (((x) & 0xF) << 0) /* Loop Filter C1<3:0> */

// REG_TX_LOOP_FILTER_2
#define LOOP_FILTER_R1(x)              (((x) & 0xF) << 4) /* Loop Filter R1<3:0> */
#define LOOP_FILTER_C3(x)              (((x) & 0xF) << 0) /* Loop Filter C3<3:0> */

// REG_TX_LOOP_FILTER_3
#define LOOP_FILTER_BYPASS_R3          BIT(7) /* Loop Filter Bypass R3 */
#define LOOP_FILTER_BYPASS_R1          BIT(6) /* Loop Filter Bypass R1 */
#define LOOP_FILTER_BYPASS_C2          BIT(5) /* Loop Filter Bypass C2 */
#define LOOP_FILTER_BYPASS_C1          BIT(4) /* Loop Filter Bypass C1 */
#define LOOP_FILTER_R3(x)              (((x) & 0xF) << 0) /* Loop Filter R3<3:0> */

// REG_TX_DITHERCP_CAL
#define NUMBER_SDM_DITHER_BITS(x)      (((x) & 0xF) << 4) /* Number SDM Dither Bits<3:0> */
#define FORCED_CP_CAL_WORD(x)          (((x) & 0xF) << 0) /* Forced CP Cal Word<3:0> */

// REG_TX_VCO_BIAS_1
#define MUST_BE_ZEROS(x)               (((x) & 0x3) << 5) /* Must be zeros */
#define VCO_BIAS_TCF(x)                (((x) & 0x3) << 3) /* VCO Bias Tcf<1:0> */
#define VCO_BIAS_REF(x)                (((x) & 0x7) << 0) /* VCO Bias Ref<2:0> */

// REG_TX_VCO_BIAS_2
#define VCO_BYPASS_BIAS_DAC_R          BIT(7) /* VCO Bypass Bias DAC R */
#define VCO_COMP_BYPASS_BIAS_R         BIT(4) /* VCO Comp Bypass Bias R */
#define BYPASS_PRESCALE_R              BIT(3) /* Bypass Prescale R */
#define LAST_ALC_ENABLE                BIT(2) /* Last ALC Enable */
#define PRESCALE_BIAS(x)               (((x) & 0x3) << 0) /* Prescale Bias <1:0> */

// REG_TX_CAL_STATUS
#define CP_CAL_VALID                   BIT(7) /* CP Cal Valid */
#define COMP_OUT                       BIT(6) /* Comp Out */
#define CP_CAL_DONE                    BIT(5) /* CP Cal Done */
#define VCO_CAL_BUSY                   BIT(4) /* VCO Cal Busy */
#define CP_CAL_WORD(x)                 (((x) & 0xF) << 0) /* CP Cal Word<3:0> */

// REG_TX_VCO_CAL_REF
#define VCO_CAL_REF_MONITOR            BIT(3) /* VCO Cal Ref Monitor */
#define VCO_CAL_REF_TCF(x)             (((x) & 0x7) << 0) /* VCO Cal Ref Tcf<2:0> */

// REG_TX_VCO_PD_OVERRIDES
#define POWER_DOWN_VARACTOR_REF        BIT(3) /* Power Down Varactor Ref */
#define POWER_DOWN_VARACT_REF_TCF      BIT(2) /* Power Down Varact Ref Tcf */
#define POWER_DOWN_CAL_TCF             BIT(1) /* Power Down Cal Tcf */
#define POWER_DOWN_VCO_BUFFFER         BIT(0) /* Power Down VCO Bufffer */

// REG_TX_CP_OVERRANGE_VCO_LOCK
#define CP_OVRG_HIGH                   BIT(7) /* CP Ovrg High */
#define CP_OVRG_LOW                    BIT(6) /* CP Ovrg Low */
#define VCO_LOCK                       BIT(1) /* Lock */

// REG_TX_VCO_LDO
#define VCO_LDO_BYPASS                 BIT(7) /* VCO LDO Bypass */
#define VCO_LDO_INRUSH(x)              (((x) & 0x3) << 5) /* VCO LDO Inrush<1:0> */
#define VCO_LDO_VOUT_SEL(x)            (((x) & 0x7) << 2) /* VCO LDO Vout Sel<2:0> */
#define VCO_LDO_VDROP_SEL(x)           (((x) & 0x3) << 0) /* VCO LDO Vdrop Sel<1:0> */

// REG_TX_VCO_CAL
#define VCO_CAL_EN                     BIT(7) /* VCO Cal En */
#define VCO_CAL_ALC_WAIT(x)            (((x) & 0x7) << 4) /* VCO Cal ALC Wait<2:0) */
#define VCO_CAL_COUNT(x)               (((x) & 0x3) << 2) /* VCO Cal Count<1:0> */
#define FB_CLOCK_ADV(x)                (((x) & 0x3) << 0) /* FB Clock Adv<1:0> */

// REG_TX_LOCK_DETECT_CONFIG
#define LOCK_DETECT_COUNT(x)           (((x) & 0x3) << 2) /* Lock Detect Count<1:0> */
#define LOCK_DETECT_MODE(x)            (((x) & 0x3) << 0) /* Lock Detect Mode<1:0> */

// REG_TX_CP_LEVEL_DETECT
#define CP_LEVEL_DETECT_POWER_DOWN     BIT(6) /* CP Level Detect Power Down */
#define CP_LEVEL_DETECT_THRESH_LOW(x)  (((x) & 0x7) << 3) /* CP Level Detect Threshold Low<2:0> */
#define CP_LEVEL_DETECT_THRESH_HIGH(x) (((x) & 0x7) << 0) /* CP Level Detect Threshold High<2:0> */

// REG_TX_DSM_SETUP_0
#define DSM_PROG(x)                    (((x) & 0xF) << 0) /* DSM Prog<3:0> */

// REG_TX_DSM_SETUP_1
#define SIF_CLOCK                      BIT(6) /* SIF clock */
#define SIF_RESET_BAR                  BIT(5) /* SIF Reset Bar */
#define SIF_ADDR(x)                    (((x) & 0x1F) << 0) /* SIF Addr<4:0> */

// REG_TX_CORRECTION_WORD0
#define UPDATE_FREQ_WORD               BIT(7) /* Update Freq Word */
#define READ_EFFECTIVE_TUNING_WORD     BIT(5) /* Read Effective Tuning Word */
#define FREQ_CORRECTION_WORD_MSB(x)    (((x) & 0x1F) << 0) /* Frequency Correction Word<11:7> */

// REG_TX_CORRECTION_WORD1
#define UPDATE_FREQ_WORD               BIT(7) /* Update Freq Word */
#define FREQ_CORRECTION_WORD_LSB(x)    (((x) & 0x7F) << 0) /* Frequency Correction Word<6:0> */

// REG_TX_VCO_VARACTOR_CTRL_0
#define VCO_VARACTOR_REFERENCE_TCF(x)  (((x) & 0x7) << 4) /* VCO Varactor Reference Tcf<2:0> */
#define VCO_VARACTOR_OFFSET(x)         (((x) & 0xF) << 0) /* VCO Varactor Offset<3:0> */

// REG_TX_VCO_VARACTOR_CTRL_1
#define VCO_VARACTOR_REFERENCE(x)      (((x) & 0xF) << 0) /* VCO Varactor Reference<3:0> */

// REG_DCXO_COARSE_TUNE
#define DCXO_TUNE_COARSE(x)            (((x) & 0x3F) << 0) /* DCXO Tune Coarse<5:0> */

// REG_DCXO_FINE_TUNE_LOW
#define DCXO_TUNE_FINE_LOW(x)          (((x) & 0x1F) << 3) /* DCXO Tune Fine<4:0> */

// REG_DCXO_FINE_TUNE_HIGH
#define DCXO_TUNE_FINE_HIGH(x)         ((x) >> 5) /* DCXO Tune Fine<12:5> */

// REG_DCXO_CONFIG
#define MUST_BE_ZERO                   BIT(7) /* Must be zero */
#define DCXO_RTAIL(x)                  (((x) & 0x7) << 4) /* DCXO Rtail<2:0> */
#define DCXO_RD(x)                     (((x) & 0x3) << 2) /* DCXO Rd<1:0> */

// REG_DCXO_TEMPCO_ADDR
#define DCXO_TEMPCO_EN                   BIT(7) /* DCXO Tempco En */
#define DCXO_TEMPCO_CLK                  BIT(6) /* DCXO Tempco Clk */
#define DCXO_TEMPERATURE_COEF_ADDRESS(x) (((x) & 0x3F) << 0) /* DCXO Temperature Coefficient Address<5:0> */

// REG_TX_FAST_LOCK_SETUP
#define TX_FAST_LOCK_LOAD_SYNTH         BIT(3) /* TX Fast Lock Load Synth */
#define TX_FAST_LOCK_PROFILE_INIT       BIT(2) /* TX Fast Lock Profile Init */
#define TX_FAST_LOCK_PROFILE_PIN_SELECT BIT(1) /* TX Fast Lock Profile Pin Select */
#define TX_FAST_LOCK_MODE_ENABLE        BIT(0) /* TX Fast Lock Mode Enable */
#define TX_FAST_LOCK_PROFILE(x)         (((x) & 0x7) << 5) /* TX Fast Lock Profile<2:0> */

// REG_TX_FAST_LOCK_PROGRAM_CTRL
#define TX_FAST_LOCK_PROGRAM_WRITE        BIT(1) /* TX Fast Lock Program Write */
#define TX_FAST_LOCK_PROGRAM_CLOCK_ENABLE BIT(0) /* TX Fast Lock Program Clock Enable */

// REG_TX_LO_GEN_POWER_MODE
#define TX_LO_GEN_POWER_MODE(x)        (((x) & 0xF) << 4) /* Power Mode<3:0> */

// REG_BANDGAP_CONFIG0
#define POWER_DOWN_BANDGAP_REF         BIT(7) /* Power Down Bandgap Ref */
#define MASTER_BIAS_FILTER_BYPASS      BIT(6) /* Master Bias Filter Bypass */
#define MASTER_BIAS_REF_SEL            BIT(5) /* Master Bias Ref Sel */
#define MASTER_BIAS_TRIM(x)            (((x) & 0x1F) << 0) /* Master Bias Trim<4:0> */

// REG_BANDGAP_CONFIG1
#define VCO_LDO_FILTER_BYPASS          BIT(7) /* VCO LDO Filter Bypass */
#define VCO_LDO_REF_SEL                BIT(6) /* VCO LDO Ref Sel */
#define BANDGAP_REF_RESET              BIT(5) /* Bandgap Ref Reset */
#define BANDGAP_TEMP_TRIM(x)           (((x) & 0x1F) << 0) /* Bandgap Temp Trim<4:0> */

// REG_REF_DIVIDE_CONFIG_1
#define REF_DIVIDE_CONFIG_1_DFLT       BIT(2) /* Set to 1 */
#define RX_REF_RESET_BAR               BIT(1) /* RX Ref Reset Bar */
#define RX_REF_DIVIDER_MSB             BIT(0) /* RX Ref Divider<1> */

// REG_REF_DIVIDE_CONFIG_2
#define RX_REF_DIVIDER_LSB             BIT(7) /* RX Ref Divider< 0> */
#define TX_REF_RESET_BAR               BIT(4) /* TX Ref Reset Bar */
#define RX_REF_DOUBLER_FB_DELAY(x)     (((x) & 0x3) << 5) /* RX Ref Doubler FB Delay<1:0> */
#define TX_REF_DIVIDER(x)              (((x) & 0x3) << 2) /* TX Ref Divider<1:0> */
#define TX_REF_DOUBLER_FB_DELAY(x)     (((x) & 0x3) << 0) /* TX Ref Doubler FB Delay<1:0> */

// REG_GAIN_RX1,2
#define FULL_TABLE_GAIN_INDEX(x)       (((x) & 0x7F) << 0) /* Full Table Gain Index RX1/LMT Gain RX1<6:0> */

// REG_LPF_GAIN_RX1,2
#define LPF_GAIN_RX(x)                 (((x) & 0x1F) << 0) /* LPF gain RX1<4:0> */

// REG_DIG_GAIN_RX1,2
#define DIGITAL_GAIN_RX(x)             (((x) & 0x1F) << 0) /* Digital gain RX1<4:0> */

// REG_FAST_ATTACK_STATE
#define FAST_ATTACK_STATE_RX2(x)       (((x) & 0x7) << 4) /* Fast Attack State RX2<2:0> */
#define FAST_ATTACK_STATE_RX1(x)       (((x) & 0x7) << 0) /* Fast Attack State RX1<2:0> */
#define FAST_ATK_MASK                  0x7
#define RX1_FAST_ATK_SHIFT             0
#define RX2_FAST_ATK_SHIFT             4
#define FAST_ATK_RESET                 0
#define FAST_ATK_PEAK_DETECT           1
#define FAST_ATK_PWR_MEASURE           2
#define FAST_ATK_FINAL_SETTELING       3
#define FAST_ATK_FINAL_OVER            4
#define FAST_ATK_GAIN_LOCKED           5

// REG_SLOW_LOOP_STATE
#define SLOW_LOOP_STATE_RX2(x)         (((x) & 0x7) << 4) /* Slow Loop State RX2<2:0> */
#define SLOW_LOOP_STATE_RX1(x)         (((x) & 0x7) << 0) /* Slow Loop State RX1<2:0> */

// REG_OVRG_SIGS_RX1,2
#define GAIN_LOCK_1                    BIT(6) /* Gain Lock 1 */
#define LOW_POWER_1                    BIT(5) /* Low Power 1 */
#define LARGE_LMT_OL                   BIT(4) /* Large LMT OL */
#define SMALL_LMT_OL                   BIT(3) /* Small LMT OL */
#define LARGE_ADC_OL                   BIT(2) /* Large ADC OL */
#define SMALL_ADC_OL                   BIT(1) /* Small ADC OL */
#define DIG_SAT                        BIT(0) /* Dig Sat */

// REG_CTRL
#define CTRL_ENABLE                    BIT(0) /* Set to 1 */

// REG_BIST_CONFIG
#define TONE_PRBS                      BIT(1) /* Tone/ PRBS */
#define BIST_ENABLE                    BIT(0) /* BIST Enable */
#define TONE_FREQ(x)                   (((x) & 0x3) << 6) /* Tone Frequency<1:0> */
#define TONE_LEVEL(x)                  (((x) & 0x3) << 4) /* Tone Level<1:0> */
#define BIST_CTRL_POINT(x)             (((x) & 0x3) << 2) /* BIST Control Point <1:0> */

// REG_OBSERVE_CONFIG
#define DATA_PORT_SP_HD_LOOP_TEST_OE   BIT(7) /* Data Port SP, HD Loop Test OE */
#define RX_MASK                        BIT(6) /* RX Mask */
#define CHANNEL                        BIT(5) /* Channel */
#define DATA_PORT_LOOP_TEST_ENABLE     BIT(0) /* Data Port Loop Test Enable */
#define OBSERVATION_POINT(x)           (((x) & 0xF) << 1) /* Observation Point<2:0> */

// REG_BIST_AND_DATA_PORT_TEST_CONFIG
#define BIST_MASK_CHANNEL_2_Q_DATA     BIT(5) /* BIST Mask Channel 2 Q data */
#define BIST_MASK_CHANNEL_2_I_DATA     BIT(4) /* BIST Mask Channel 2 I data */
#define BIST_MASK_CHANNEL_1_Q_DATA     BIT(3) /* BIST Mask Channel 1 Q data */
#define BIST_MASK_CHANNEL_1_I_DATA     BIT(2) /* BIST Mask Channel 1 I data */
#define DATA_PORT_HILOW                BIT(1) /* Data Port Hi/Low */
#define USE_DATA_PORT                  BIT(0) /* Use Data Port */
#define TEMP_SENSE_VBE_TEST(x)         (((x) & 0x3) << 6) /* Temp Sense Vbe Test<1:0> */

// REG_DAC_TEST_2
#define DAC_TEST_ENABLE                BIT(7) /* DAC Test Enable */
#define DAC_TEST_WORD(x)               (((x) & 0x7F) << 0) /* DAC test Word <22:16> */


// SPI Comm Helpers
#define AD_READ       (0 << 15)
#define AD_WRITE      BIT(15)
#define AD_CNT(x)     ((((x) - 1) & 0x7) << 12)
#define AD_ADDR(x)    ((x) & 0x3FF)


// AD9361 Limits
#define RSSI_MULTIPLIER         100
#define RSSI_RESOLUTION         ((int) (0.25 * RSSI_MULTIPLIER))
#define RSSI_MAX_WEIGHT         255

#define MAX_LMT_INDEX           40
#define MAX_LPF_GAIN            24
#define MAX_DIG_GAIN            31

#define MAX_BBPLL_FREF          70007000UL /* 70 MHz + 100ppm */
#define MIN_BBPLL_FREQ          714928500UL /* 715 MHz - 100ppm */
#define MAX_BBPLL_FREQ          1430143000UL /* 1430 MHz + 100ppm */
#define MAX_BBPLL_DIV           64
#define MIN_BBPLL_DIV           2

/*
 * The ADC minimum and maximum operating output data rates
 * are 25MHz and 640MHz respectively.
 * For more information see here: https://ez.analog.com/docs/DOC-12763
 */
#define MIN_ADC_CLK             25000000U /* 25 MHz */
//#define MIN_ADC_CLK           (MIN_BBPLL_FREQ / MAX_BBPLL_DIV) /* 11.17MHz */
#define MAX_ADC_CLK             640000000U /* 640 MHz */
#define MAX_DAC_CLK             (MAX_ADC_CLK / 2)

/* Associated with outputs of stage */
#define MAX_RX_HB1              245760000UL
#define MAX_RX_HB2              320000000UL
#define MAX_RX_HB3              640000000UL
/* Associated with inputs of stage */
#define MAX_TX_HB1              160000000UL
#define MAX_TX_HB2              320000000UL
#define MAX_TX_HB3              320000000UL

#define MAX_BASEBAND_RATE       61440000UL

#define MAX_MBYTE_SPI           8

#define RFPLL_MODULUS           8388593UL
#define BBPLL_MODULUS           2088960UL

#define MAX_SYNTH_FREF          80008000UL /* 80 MHz + 100ppm */
#define MIN_SYNTH_FREF          9999000UL /* 10 MHz - 100ppm */
#define MIN_VCO_FREQ_HZ         6000000000ULL
#define MAX_CARRIER_FREQ_HZ     6000000000ULL
#define MIN_RX_CARRIER_FREQ_HZ  70000000ULL
#define MIN_TX_CARRIER_FREQ_HZ  46875001ULL

#define AD9363A_MAX_CARRIER_FREQ_HZ    3800000000ULL
#define AD9363A_MIN_CARRIER_FREQ_HZ    325000000ULL

#define MAX_TX_ATTENUATION_DB   89750

class AD9361
{
public:
    enum RXGainTableType
    {
        FULL,
        SPLIT,
    };
    enum RXGainTableName
    {
        TBL_200_1300_MHZ,
        TBL_1300_4000_MHZ,
        TBL_4000_6000_MHZ,
        MAX,
    };
    struct RXGainTableInfo
    {
        uint64_t start;
        uint64_t end;
        uint8_t max_index;
        bool split_table;
        int8_t* abs_gain_tbl;
        uint8_t(* tab)[3];
    };
    enum FIRDest
    {
        FIR_TX1 = 0x01,
        FIR_TX2 = 0x02,
        FIR_TX1_TX2 = 0x03,
        FIR_RX1 = 0x81,
        FIR_RX2 = 0x82,
        FIR_RX1_RX2 = 0x83,
        FIR_IS_RX = 0x80,
    };
    struct RFGainCtrl
    {
        uint32_t ant;
        uint8_t mode;
    };
    enum RFGainCtrlMode
    {
        RF_GAIN_MGC,
        RF_GAIN_FASTATTACK_AGC,
        RF_GAIN_SLOWATTACK_AGC,
        RF_GAIN_HYBRID_AGC
    };
    enum FastAGCTargetGainIndexType
    {
        MAX_GAIN,
        SET_GAIN,
        OPTIMIZED_GAIN,
        NO_GAIN_CHANGE,
    };
    struct GainControl
    {
        AD9361::RFGainCtrlMode rx1_mode;
        AD9361::RFGainCtrlMode rx2_mode;

        /* Common */
        uint8_t adc_ovr_sample_size; /* 1..8 Sum x samples, AGC_CONFIG_3 */
        uint8_t adc_small_overload_thresh; /* 0..255, 0x105 */
        uint8_t adc_large_overload_thresh; /* 0..255, 0x104 */
        uint16_t lmt_overload_high_thresh; /* 16..800 mV, 0x107 */
        uint16_t lmt_overload_low_thresh; /* 16..800 mV, 0x108 */
        uint16_t dec_pow_measuremnt_duration; /* Samples, 0x15C */
        uint8_t low_power_thresh; /* -64..0 dBFS, 0x114 */
        bool use_rx_fir_out_for_dec_pwr_meas; /* clears 0x15C:6 USE_HB1_OUT_FOR_DEC_PWR_MEAS */
        bool dig_gain_en; /* should be turned off, since ADI GT doesn't use dig gain */
        uint8_t max_dig_gain; /* 0..31 */

        /* MGC */
        bool mgc_rx1_ctrl_inp_en; /* Enables Pin control on RX1 default SPI ctrl */
        bool mgc_rx2_ctrl_inp_en; /* Enables Pin control on RX2 default SPI ctrl */
        uint8_t mgc_inc_gain_step; /* 1..8 */
        uint8_t mgc_dec_gain_step; /* 1..8 */
        uint8_t mgc_split_table_ctrl_inp_gain_mode; /* 0=AGC determine this, 1=only in LPF, 2=only in LMT */

        /* AGC */
        uint8_t agc_attack_delay_extra_margin_us; /* 0..31 us */
        uint8_t agc_outer_thresh_high;
        uint8_t agc_outer_thresh_high_dec_steps;
        uint8_t agc_inner_thresh_high;
        uint8_t agc_inner_thresh_high_dec_steps;
        uint8_t agc_inner_thresh_low;
        uint8_t agc_inner_thresh_low_inc_steps;
        uint8_t agc_outer_thresh_low;
        uint8_t agc_outer_thresh_low_inc_steps;
        uint8_t adc_small_overload_exceed_counter; /* 0..15, 0x122 */
        uint8_t adc_large_overload_exceed_counter; /* 0..15, 0x122 */
        uint8_t adc_large_overload_inc_steps; /* 0..15, 0x106 */
        bool adc_lmt_small_overload_prevent_gain_inc; /* 0x120 */
        uint8_t lmt_overload_large_exceed_counter; /* 0..15, 0x121 */
        uint8_t lmt_overload_small_exceed_counter; /* 0..15, 0x121 */
        uint8_t lmt_overload_large_inc_steps; /* 0..7, 0x121 */
        uint8_t dig_saturation_exceed_counter; /* 0..15, 0x128 */
        uint8_t dig_gain_step_size; /* 1..8, 0x100 */
        bool sync_for_gain_counter_en; /* 0x128:4 !Hybrid */
        uint32_t gain_update_interval_us; /* in us */
        bool immed_gain_change_if_large_adc_overload; /* 0x123:3 */
        bool immed_gain_change_if_large_lmt_overload; /* 0x123:7 */

        /* Fast AGC */
        uint32_t f_agc_dec_pow_measuremnt_duration;  /* Samples, 0x15C */
        uint32_t f_agc_state_wait_time_ns; /* 0x117 0..31 RX samples -> time_ns */
        /* Fast AGC - Low Power */
        bool f_agc_allow_agc_gain_increase; /* 0x110:1 */
        uint8_t f_agc_lp_thresh_increment_time; /* 0x11B RX samples */
        uint8_t f_agc_lp_thresh_increment_steps; /* 0x117 1..8 */
        /* Fast AGC - Lock Level */
        uint8_t f_agc_lock_level; /* NOT USED: 0x101 0..-127 dBFS same as agc_inner_thresh_high */
        bool f_agc_lock_level_lmt_gain_increase_en; /* 0x111:6 */
        uint8_t f_agc_lock_level_gain_increase_upper_limit; /* 0x118 0..63 */
        /* Fast AGC - Peak Detectors and Final Settling */
        uint8_t f_agc_lpf_final_settling_steps; /* 0x112:6 0..3 (Post Lock Level Step)*/
        uint8_t f_agc_lmt_final_settling_steps; /* 0x113:6 0..3 (Post Lock Level Step)*/
        uint8_t f_agc_final_overrange_count; /* 0x116:5 0..7 */
        /* Fast AGC - Final Power Test */
        bool f_agc_gain_increase_after_gain_lock_en; /* 0x110:7  */
        /* Fast AGC - Unlocking the Gain */
        AD9361::FastAGCTargetGainIndexType f_agc_gain_index_type_after_exit_rx_mode; /* 0x110:[4,2]  */
        bool f_agc_use_last_lock_level_for_set_gain_en; /* 0x111:7 */
        uint8_t f_agc_optimized_gain_offset;    /*0x116 0..15 steps */
        bool f_agc_rst_gla_stronger_sig_thresh_exceeded_en; /* 0x110:~6 */
        uint8_t f_agc_rst_gla_stronger_sig_thresh_above_ll;    /*0x113 0..63 dbFS */
        bool f_agc_rst_gla_engergy_lost_sig_thresh_exceeded_en; /* 0x110:6 */
        bool f_agc_rst_gla_engergy_lost_goto_optim_gain_en; /* 0x110:6 */
        uint8_t f_agc_rst_gla_engergy_lost_sig_thresh_below_ll; /* 0x112:6 */
        uint8_t f_agc_energy_lost_stronger_sig_gain_lock_exit_cnt; /* 0x119 0..63 RX samples */
        bool f_agc_rst_gla_large_adc_overload_en; /*0x110:~1 and 0x114:~7 */
        bool f_agc_rst_gla_large_lmt_overload_en; /*0x110:~1 */
        bool f_agc_rst_gla_en_agc_pulled_high_en;
        AD9361::FastAGCTargetGainIndexType f_agc_rst_gla_if_en_agc_pulled_high_mode; /* 0x0FB, 0x111 */
        uint8_t f_agc_power_measurement_duration_in_state5; /* 0x109, 0x10a RX samples 0..524288*/
        uint8_t f_agc_large_overload_inc_steps; /* 0x106 [D6:D4] 0..7 */
    };
    struct AUXDACControl
    {
        double dac1_default_value;
        double dac2_default_value;

        bool auxdac_manual_mode_en;

        bool dac1_in_rx_en;
        bool dac1_in_tx_en;
        bool dac1_in_alert_en;

        bool dac2_in_rx_en;
        bool dac2_in_tx_en;
        bool dac2_in_alert_en;

        uint8_t dac1_rx_delay_us;
        uint8_t dac1_tx_delay_us;
        uint8_t dac2_rx_delay_us;
        uint8_t dac2_tx_delay_us;
    };
    enum RSSIRestartMode
    {
        AGC_IN_FAST_ATTACK_MODE_LOCKS_THE_GAIN,
        EN_AGC_PIN_IS_PULLED_HIGH,
        ENTERS_RX_MODE,
        GAIN_CHANGE_OCCURS,
        SPI_WRITE_TO_REGISTER,
        GAIN_CHANGE_OCCURS_OR_EN_AGC_PIN_PULLED_HIGH,
    };
    struct RSSIControl
    {
        AD9361::RSSIRestartMode restart_mode;
        bool rssi_unit_is_rx_samples;    /* default unit is time */
        uint32_t rssi_delay;
        uint32_t rssi_wait;
        uint32_t rssi_duration;
    };
    struct RXGainInfo
    {
        AD9361::RXGainTableType tbl_type;
        int32_t starting_gain_db;
        int32_t max_gain_db;
        int32_t gain_step_db;
        int32_t max_idx;
        int32_t idx_step_offset;
    };
    struct DataPortControl
    {
        uint8_t            pp_conf[3];
        uint8_t            rx_clk_data_delay;
        uint8_t            tx_clk_data_delay;
        uint8_t            digital_io_ctrl;
        uint8_t            lvds_bias_ctrl;
        uint8_t            lvds_invert[2];
    };
    struct CtrlOutControl
    {
        uint8_t            index;
        uint8_t            en_mask;
    };
    struct ExtLNAControl
    {
        uint16_t            gain_mdB;
        uint16_t            bypass_loss_mdB;
        uint32_t            settling_delay_ns;
        bool                elna_1_control_en; /* GPO0 */
        bool                elna_2_control_en; /* GPO1 */
        bool                elna_in_gaintable_all_index_en;
    };
    struct AUXADCControl
    {
        int8_t              offset;
        uint32_t            temp_time_inteval_ms;
        uint32_t            temp_sensor_decimation;
        bool                periodic_temp_measuremnt;
        uint32_t            auxadc_clock_rate;
        uint32_t            auxadc_decimation;
    };
    struct GPOControl
    {
        uint32_t gpo_manual_mode_enable_mask;
        bool gpo_manual_mode_en;
        bool gpo0_inactive_state_high_en;
        bool gpo1_inactive_state_high_en;
        bool gpo2_inactive_state_high_en;
        bool gpo3_inactive_state_high_en;
        bool gpo0_slave_rx_en;
        bool gpo0_slave_tx_en;
        bool gpo1_slave_rx_en;
        bool gpo1_slave_tx_en;
        bool gpo2_slave_rx_en;
        bool gpo2_slave_tx_en;
        bool gpo3_slave_rx_en;
        bool gpo3_slave_tx_en;
        uint8_t gpo0_rx_delay_us;
        uint8_t gpo0_tx_delay_us;
        uint8_t gpo1_rx_delay_us;
        uint8_t gpo1_tx_delay_us;
        uint8_t gpo2_rx_delay_us;
        uint8_t gpo2_tx_delay_us;
        uint8_t gpo3_rx_delay_us;
        uint8_t gpo3_tx_delay_us;
    };
    struct TXMonitorControl
    {
        bool tx_mon_track_en;
        bool one_shot_mode_en;
        uint32_t low_high_gain_threshold_mdB;
        uint8_t low_gain_dB;
        uint8_t high_gain_dB;
        uint16_t tx_mon_delay;
        uint16_t tx_mon_duration;
        uint8_t tx1_mon_front_end_gain;
        uint8_t tx2_mon_front_end_gain;
        uint8_t tx1_mon_lo_cm;
        uint8_t tx2_mon_lo_cm;
    };
    enum RXClockIndex
    {
        BBPLL_FREQ = 0,
        ADC_FREQ,
        R2_FREQ,
        R1_FREQ,
        CLKRF_FREQ,
        RX_SAMPL_FREQ,

        NUM_RX_CLOCKS,
    };
    enum TXClockIndex
    {
        DAC_FREQ = 1,
        T2_FREQ,
        T1_FREQ,
        CLKTF_FREQ,
        TX_SAMPL_FREQ,

        NUM_TX_CLOCKS,
    };
    enum ClkOutMode
    {
        DISABLE = 0,
        BUF_XTALN_DCXO,
        ADC_CLK_DIV_2,
        ADC_CLK_DIV_3,
        ADC_CLK_DIV_4,
        ADC_CLK_DIV_8,
        ADC_CLK_DIV_16,
    };
    struct PlatformData
    {
        bool            rx2tx2;
        bool            fdd;
        bool            fdd_independent_mode;
        bool            split_gt;
        bool            use_extclk;
        bool            ensm_pin_pulse_mode;
        bool            ensm_pin_ctrl;
        bool            tdd_use_dual_synth;
        bool            tdd_skip_vco_cal;
        bool            use_ext_rx_lo;
        bool            use_ext_tx_lo;
        bool            rx1rx2_phase_inversion_en;
        bool            qec_tracking_slow_mode_en;
        uint8_t         dc_offset_update_events;
        uint8_t         dc_offset_attenuation_high;
        uint8_t         dc_offset_attenuation_low;
        uint8_t         rf_dc_offset_count_high;
        uint8_t         rf_dc_offset_count_low;
        uint8_t         dig_interface_tune_skipmode;
        uint8_t         dig_interface_tune_fir_disable;
        uint8_t         lo_powerdown_managed_en;
        uint32_t        dcxo_coarse;
        uint32_t        dcxo_fine;
        uint32_t        rf_rx_input_sel;
        uint32_t        rf_tx_output_sel;
        uint32_t        rx1tx1_mode_use_rx_num;
        uint32_t        rx1tx1_mode_use_tx_num;
        uint32_t        rx_clocks[AD9361::RXClockIndex::NUM_RX_CLOCKS];
        uint32_t        tx_clocks[AD9361::TXClockIndex::NUM_TX_CLOCKS];
        uint32_t        trx_synth_max_fref;
        uint64_t        rx_synth_freq;
        uint64_t        tx_synth_freq;
        uint32_t        rf_rx_bandwidth_Hz;
        uint32_t        rf_tx_bandwidth_Hz;
        int32_t         tx_atten;
        bool            update_tx_gain_via_alert;
        uint32_t        rx_fastlock_delay_ns;
        uint32_t        tx_fastlock_delay_ns;
        bool            trx_fastlock_pinctrl_en[2];

        AD9361::ClkOutMode clkout_mode;
        AD9361::GainControl gain_ctrl;
        AD9361::RSSIControl rssi_ctrl;
        AD9361::DataPortControl port_ctrl;
        AD9361::CtrlOutControl ctrl_outs_ctrl;
        AD9361::ExtLNAControl elna_ctrl;
        AD9361::AUXADCControl auxadc_ctrl;
        AD9361::AUXDACControl auxdac_ctrl;
        AD9361::GPOControl gpo_ctrl;
        AD9361::TXMonitorControl txmon_ctrl;
    };
    struct RFRXGain
    {
        uint32_t ant;           /* Antenna number to read gain */
        int32_t gain_db;        /* gain value in dB */
        uint32_t fgt_lmt_index; /* Full Gain Table / LNA-MIXER-TIA gain index */
        uint32_t lmt_gain;      /* LNA-MIXER-TIA gain in dB (Split GT mode only)*/
        uint32_t lpf_gain;      /* Low pass filter gain in dB / index (Split GT mode only)*/
        uint32_t digital_gain;  /* Digital gain in dB / index */
        /* Debug only */
        uint32_t lna_index;     /* LNA Index (Split GT mode only) */
        uint32_t tia_index;     /* TIA Index (Split GT mode only) */
        uint32_t mixer_index;   /* MIXER Index (Split GT mode only) */

    };
    struct RFRSSI
    {
        uint32_t ant;        /* Antenna number for which RSSI is reported */
        uint32_t symbol;     /* Runtime RSSI */
        uint32_t preamble;   /* Initial RSSI */
        int32_t multiplier;  /* Multiplier to convert reported RSSI */
        uint8_t duration;    /* Duration to be considered for measuring */
    };
    struct SynthLUT
    {
        uint16_t VCO_MHz;
        uint8_t VCO_Output_Level;
        uint8_t VCO_Varactor;
        uint8_t VCO_Bias_Ref;
        uint8_t VCO_Bias_Tcf;
        uint8_t VCO_Cal_Offset;
        uint8_t VCO_Varactor_Reference;
        uint8_t Charge_Pump_Current;
        uint8_t LF_C2;
        uint8_t LF_C1;
        uint8_t LF_R1;
        uint8_t LF_C3;
        uint8_t LF_R3;
    };
    enum ClockIndex
    {
        NO_CLOCK = -1,
        BB_REFCLK,
        RX_REFCLK,
        TX_REFCLK,
        BBPLL_CLK,
        ADC_CLK,
        R2_CLK,
        R1_CLK,
        CLKRF_CLK,
        RX_SAMPL_CLK,
        DAC_CLK,
        T2_CLK,
        T1_CLK,
        CLKTF_CLK,
        TX_SAMPL_CLK,
        RX_RFPLL_INT,
        TX_RFPLL_INT,
        RX_RFPLL_DUMMY,
        TX_RFPLL_DUMMY,
        RX_RFPLL,
        TX_RFPLL,
        NUM_AD9361_CLKS,
        EXT_REF_CLK,
    };
    struct FastLockEntry
    {
        uint8_t flags;
        uint8_t alc_orig;
        uint8_t alc_written;
    };
    struct FastLock
    {
        uint8_t save_profile;
        uint8_t current_profile[2];
        AD9361::FastLockEntry entry[2][8];
    };
    enum BISTMode
    {
        BIST_DISABLE,
        BIST_INJ_TX,
        BIST_INJ_RX,
    };
    enum SynthPDControl
    {
        LO_DONTCARE,
        LO_OFF,
        LO_ON,
    };
    enum DeviceID
    {
        ID_AD9361,
        ID_AD9364,
        ID_AD9363A
    };
    struct ClockScale
    {
        uint32_t               mult;
        uint32_t               div;
        AD9361::ClockIndex     source;
        AD9361::ClockIndex     parent_source;
    };
    struct Clock
    {
        uint64_t rate;
    };

    struct SPIConfig
    {
        AXIQuadSPI *controller;
        uint32_t ss_mask;
    };
    struct GPIOConfig
    {
        AXIGPIO *controller;
        uint8_t gpio;
        bool invert;
    };

    enum GPOValue
    {
        LOW = 0,
        HIGH = 1
    };

private:
    void readReg(uint16_t reg, uint8_t *dst, uint8_t count);
    inline uint8_t readReg(uint16_t reg)
    {
        uint8_t val;

        this->readReg(reg, &val, 1);

        return val;
    }
    uint8_t readRegField(uint16_t reg, uint8_t mask, int8_t offset = -1);
    void writeReg(uint16_t reg, uint8_t *src, uint8_t count);
    inline void writeReg(uint16_t reg, uint8_t val)
    {
        this->writeReg(reg, &val, 1);
    }
    void writeRegField(uint16_t reg, uint8_t mask, uint8_t val, int8_t offset = -1);

    void reset();

    inline uint32_t clampRFBandwidth(uint32_t bw)
    {
        switch(this->dev_sel)
        {
            case AD9361::DeviceID::ID_AD9363A:
                return CLAMP_T(uint32_t, bw, 200000UL, 20000000UL);
            default:
                return CLAMP_T(uint32_t, bw, 200000UL, 56000000UL);
        }
    }
    inline void validateRFBandwidth(uint32_t bw)
    {
        if(bw != this->clampRFBandwidth(bw))
            throw std::runtime_error("AD9361: Invalid RF bandwidth");
    }
    inline uint64_t clampRFPLLFrequency(uint64_t freq)
    {
        switch(this->dev_sel)
        {
            case AD9361::DeviceID::ID_AD9363A:
                return CLAMP_T(uint64_t, freq, AD9363A_MIN_CARRIER_FREQ_HZ, AD9363A_MAX_CARRIER_FREQ_HZ);
            default:
                return CLAMP_T(uint64_t, freq, MIN_TX_CARRIER_FREQ_HZ, MAX_CARRIER_FREQ_HZ);
        }
    }
    inline void validateRFPLLFrequency(uint64_t freq)
    {
        if(freq != this->clampRFPLLFrequency(freq))
            throw std::runtime_error("AD9361: Invalid RF PLL frequency");
    }
    inline uint32_t clampBBPLLFrequency(uint32_t freq)
    {
        return CLAMP_T(uint32_t, freq, MIN_BBPLL_FREQ, MAX_BBPLL_FREQ);
    }
    inline void validateBBPLLFrequency(uint32_t freq)
    {
        if(freq != this->clampBBPLLFrequency(freq))
            throw std::runtime_error("AD9361: Invalid BB PLL frequency");
    }

    inline uint32_t maxReferenceFreq(uint32_t ref, uint32_t max)
    {
        // Determine the maximum reference frequency that can be used given the available scalers (x2, /1, /2, /4)

        if(ref <= (max / 2))
            return 2 * ref;
        else if(ref <= max)
            return ref;
        else if(ref <= (max * 2))
            return ref / 2;
        else if(ref <= (max * 4))
            return ref / 4;

        throw std::runtime_error("AD9361: Invalid reference frequency to achieve desired rate");
    }

public:
    void setup();

    void setDCXOTune(uint8_t coarse, uint16_t fine);

    void setupGPO(AD9361::GPOControl *ctrl);
    void setGPOValue(uint8_t gpo, AD9361::GPOValue value);
    AD9361::GPOValue getGPOValue(uint8_t gpo);

    void setupAuxDAC(AD9361::AUXDACControl *ctrl);
    void setAuxDACValue(uint8_t dac, double value);
    double getAuxDACValue(uint8_t dac);

    void setupAuxADC(AD9361::AUXADCControl *ctrl);
    double getAuxADCValue();

    void setupTXMonitor(AD9361::TXMonitorControl *ctrl);
    void controlTXMonitor(uint8_t en);

    void setupExternalLNA(AD9361::ExtLNAControl *ctrl);

    void setupRFPort(bool tx_out, uint8_t rx_inputs, uint8_t tx_outputs); // tx_out = true -> TX are outputs, disables TXMONs
    void setupParallelPort(bool restore_c3);

    void setupControlOutBus(AD9361::CtrlOutControl *ctrl);

    void setupGainControl(AD9361::GainControl *ctrl);
    void updateGainControl();

    void setupRXADC();

    void setupRSSI(AD9361::RSSIControl *ctrl, bool is_update);

    double getTemperature();

    void registerClocks();
    void unregisterClocks();
    void registerClock(AD9361::ClockIndex source, AD9361::ClockIndex psource = AD9361::ClockIndex::NO_CLOCK);
    uint64_t getClockRate(AD9361::ClockScale *clk_scale);
    void setClockRate(AD9361::ClockScale *clk_scale, uint64_t rate);

    uint32_t roundClockFactorRate(AD9361::ClockScale *clk_scale, uint32_t rate, uint32_t prate);
    uint32_t getClockFactorRate(AD9361::ClockScale *clk_scale, uint32_t prate);
    void setClockFactorRate(AD9361::ClockScale *clk_scale, uint32_t rate, uint32_t prate);

    uint32_t roundBBPLLRate(AD9361::ClockScale *clk_scale, uint32_t rate, uint32_t prate);
    uint32_t getBBPLLRate(AD9361::ClockScale *clk_scale, uint32_t prate);
    void setBBPLLRate(AD9361::ClockScale *clk_scale, uint32_t rate, uint32_t prate);

    uint64_t roundIntRFPLLRate(AD9361::ClockScale *clk_scale, uint64_t rate, uint32_t prate);
    uint64_t getIntRFPLLRate(AD9361::ClockScale *clk_scale, uint32_t prate);
    void setIntRFPLLRate(AD9361::ClockScale *clk_scale, uint64_t rate, uint32_t prate);

    uint64_t getDummyRFPLLRate(AD9361::ClockScale *clk_scale);
    void setDummyRFPLLRate(AD9361::ClockScale *clk_scale, uint64_t rate);

    uint64_t roundRFPLLRate(AD9361::ClockScale *clk_scale, uint64_t rate);
    uint64_t getRFPLLRate(AD9361::ClockScale *clk_scale);
    void setRFPLLRate(AD9361::ClockScale *clk_scale, uint64_t rate);

    void setClockMuxParent(AD9361::ClockScale *clk_scale, uint8_t index);

    void setClockScaler(AD9361::ClockScale *clk_scale, bool set = false);
    void getClockScaler(AD9361::ClockScale *clk_scale);
    inline uint8_t getRefClockScaler(AD9361::ClockScale *clk_scale)
    {
        switch(((clk_scale->mult & 0xF) << 4) | (clk_scale->div & 0xF))
        {
            case 0x11:
                return 0;
            case 0x12:
                return 1;
            case 0x14:
                return 2;
            case 0x21:
                return 3;
            default:
                throw std::runtime_error("AD9361: Unsupported reference clock scaler");
        }
    };

    void calcClockChain(uint32_t tx_sample_rate, uint32_t rate_governor, uint32_t *rx_clocks, uint32_t *tx_clocks);
    void validateClockChain(uint32_t *rx_clocks, uint32_t *tx_clocks);
    void setClockChain(uint32_t *rx_clocks, uint32_t *tx_clocks);
    void getClockChain(uint32_t *rx_clocks, uint32_t *tx_clocks);
    inline void setClockChainFreq(uint32_t freq)
    {
        uint32_t rx[6], tx[6];

        this->calcClockChain(freq, this->rate_governor, rx, tx);
        this->setClockChain(rx, tx);
    }

    inline void runCalibration(uint8_t mask, uint32_t timeout_ms = 30000)
    {
        this->writeReg(REG_CALIBRATION_CTRL, mask);
        this->checkCalibrationDone(REG_CALIBRATION_CTRL, mask, 0, timeout_ms);
    }
    void checkCalibrationDone(uint16_t reg, uint8_t mask, uint8_t done_val, uint32_t timeout_ms = 30000);
    void calibrateRFPLLChargePump(bool tx);
    void calibrateRXBasebandAnalogFilter(uint32_t bw);
    void calibrateRXTIA(uint32_t bw);
    void calibrateTXBasebandAnalogFilter(uint32_t bw);
    void calibrateTXSecBasebandAnalogFilter(uint32_t bw);
    void calibrateBasebandDCOffset();
    void calibrateRFDCOffset();
    void calibrateTXQuadrature(int32_t rx_phase);
    void __calibrateTXQuadrature(uint32_t phase, uint32_t rxnco_word, uint32_t decim, uint8_t *res);
    void searchTXQuadraturePhase(uint32_t rxnco_word, uint8_t decim);

    void controlVCOCalibration(bool tx, bool enable);
    void controlExternalLO(bool tx, bool enable);

    void controlLOPowerDown(AD9361::SynthPDControl rx, AD9361::SynthPDControl tx);

    void controlRXTracking(bool bbdc, bool rfdc, bool quad);

    void loadMixerGMSubTable();

    void setRFBandwidth(uint32_t rx_bw, uint32_t tx_bw);
    void __setRFBandwidth(uint32_t rx_bw, uint32_t tx_bw);

    void setTXAttenuation(uint32_t atten_mdb, bool tx1, bool tx2, bool immed);
    uint32_t getTXAttenuation(uint32_t tx_num);
    void muteTX(bool mute);

    void controlClockOutput(AD9361::ClkOutMode mode)
    {
        if(mode == DISABLE)
            return this->writeRegField(REG_BBPLL, CLKOUT_ENABLE, 0);

        return this->writeRegField(REG_BBPLL, CLKOUT_ENABLE | CLKOUT_SELECT(~0), ((mode - 1) << 1) | 0x1);
    }

    uint32_t findOpt(uint8_t* field, uint32_t size, uint32_t *ret_start)
    {
        uint32_t cnt = 0;
        uint32_t max_cnt = 0;
        int32_t start = -1;
        uint32_t max_start = 0;

        for(uint32_t i = 0; i < size; i++)
        {
            if(field[i] == 0)
            {
                if(start == -1)
                    start = i;

                cnt++;
            }
            else
            {
                if(cnt > max_cnt)
                {
                    max_cnt = cnt;
                    max_start = start;
                }

                start = -1;
                cnt = 0;
            }
        }

        if(cnt > max_cnt)
        {
            max_cnt = cnt;
            max_start = start;
        }

        *ret_start = max_start;

        return max_cnt;
    }

    void enableTX(uint8_t mask, uint8_t en)
    {
        if((mask & en) > 1 && this->dev_sel == AD9361::DeviceID::ID_AD9364)
            throw std::runtime_error("AD9361: TX2 is not supported on AD9364");

        return this->writeRegField(REG_TX_ENABLE_FILTER_CTRL, TX_CHANNEL_ENABLE(mask), en);
    }
    void enableRX(uint8_t mask, uint8_t en)
    {
        if((mask & en) > 1 && this->dev_sel == AD9361::DeviceID::ID_AD9364)
            throw std::runtime_error("AD9361: RX2 is not supported on AD9364");

        return this->writeRegField(REG_RX_ENABLE_FILTER_CTRL, RX_CHANNEL_ENABLE(mask), en);
    }

    void setENSMMode(bool fdd, bool pinctrl);
    void setENSMState(uint8_t state, bool pinctrl);
    uint8_t getENSMState();
    void forceENSMState(uint8_t state);
    void restoreENSMState(uint8_t state);
    inline void restorePrevENSMState()
    {
        this->restoreENSMState(this->prev_ensm_state);
    }

    void loadGainTable(uint64_t freq, uint8_t dest);
    uint8_t findGainTableInfex(uint64_t freq);
    uint8_t findGainIndex(int8_t gain);
    inline uint8_t getCurrentGainTable()
    {
        if(this->current_table == (uint32_t)-1)
            return 0;

        return this->current_table;
    }
    void getSplitTableGain(uint16_t idx_reg, AD9361::RFRXGain *rx_gain);
    void getFullTableGain(uint16_t idx_reg, AD9361::RFRXGain *rx_gain);
    void getRXGain(uint8_t rx_id, AD9361::RFRXGain *rx_gain);
    void setSplitTableGain(uint16_t idx_reg, AD9361::RFRXGain *rx_gain);
    void setFullTableGain(uint16_t idx_reg, AD9361::RFRXGain *rx_gain);
    void setRXGain(uint8_t rx_id, AD9361::RFRXGain *rx_gain);

    void initRFPLLVCO(bool tx, uint64_t freq, uint32_t ref_freq);

    uint8_t readFastLockVal(bool tx, uint8_t profile, uint8_t word);
    void writeFastLockVal(bool tx, uint8_t profile, uint8_t word, uint8_t val, bool last = true);
    void loadFastLockData(bool tx, uint8_t profile, uint8_t *values);
    void storeFastLockData(bool tx, uint8_t profile, uint8_t *values);
    void storeCurrentFastLockData(bool tx, uint8_t profile);
    void prepareFastLockProfile(bool tx, uint8_t profile, bool prepare);
    void recallFastLockProfile(bool tx, uint8_t profile);

    void doMCSStage(uint8_t stage);

private:
    AD9361::SPIConfig spi;
    AD9361::GPIOConfig reset_gpio;
    AD9361::GPIOConfig sync_gpio;

    std::mutex mutex;
    std::mutex gpo_mutex;
    std::mutex auxdac_mutex;

    AD9361::DeviceID dev_sel;
    AD9361::Clock* clk_refin;
    AD9361::Clock* clks[NUM_AD9361_CLKS];
    AD9361::ClockScale* ref_clk_scale[NUM_AD9361_CLKS];
    AD9361::PlatformData* pdata;
    uint8_t prev_ensm_state;
    uint8_t curr_ensm_state;
    uint8_t cached_rx_rfpll_div;
    uint8_t cached_tx_rfpll_div;
    uint8_t cached_synth_pd[2];
    int32_t tx_quad_lpf_tia_match;
    uint32_t current_table;
    AD9361::RXGainTableInfo* gt_info;
    bool ensm_pin_ctl_en;
    bool auto_cal_en;
    bool manual_tx_quad_cal_en;
    uint64_t last_tx_quad_cal_freq;
    uint32_t last_tx_quad_cal_phase;
    uint64_t current_tx_lo_freq;
    uint64_t current_rx_lo_freq;
    bool current_tx_use_tdd_table;
    bool current_rx_use_tdd_table;
    uint32_t current_rx_path_clks[NUM_RX_CLOCKS];
    uint32_t current_tx_path_clks[NUM_TX_CLOCKS];
    uint32_t flags;
    uint32_t cal_threshold_freq;
    uint32_t current_rx_bw_Hz;
    uint32_t current_tx_bw_Hz;
    uint32_t rxbbf_div;
    uint32_t rate_governor;
    bool bypass_rx_fir;
    bool bypass_tx_fir;
    bool rx_eq_2tx;
    bool filt_valid;
    uint32_t filt_rx_path_clks[NUM_RX_CLOCKS];
    uint32_t filt_tx_path_clks[NUM_TX_CLOCKS];
    uint32_t filt_rx_bw_Hz;
    uint32_t filt_tx_bw_Hz;
    uint8_t tx_fir_int;
    uint8_t tx_fir_ntaps;
    uint8_t rx_fir_dec;
    uint8_t rx_fir_ntaps;
    uint8_t agc_mode[2];
    bool rfdc_track_en;
    bool bbdc_track_en;
    bool quad_track_en;
    bool txmon_tdd_en;
    double auxdac1_value;
    double auxdac2_value;
    uint32_t tx1_atten_cached;
    uint32_t tx2_atten_cached;
    AD9361::FastLock fastlock;
    int32_t bist_loopback_mode;
    int32_t bist_config;
    AD9361::BISTMode bist_prbs_mode;
    AD9361::BISTMode bist_tone_mode;
    uint32_t bist_tone_freq_Hz;
    uint32_t bist_tone_level_dB;
    uint32_t bist_tone_mask;
    bool bbpll_initialized;
};