/*
 * Si5351C Rev B Configuration Register Export Header File
 *
 * This file represents a series of Silicon Labs Si5351C Rev B 
 * register writes that can be performed to load a single configuration 
 * on a device. It was created by a Silicon Labs ClockBuilder Pro
 * export tool.
 *
 * Part:		                                       Si5351C Rev B
 * Design ID:                                          
 * Includes Pre/Post Download Control Register Writes: Yes
 * Created By:                                         ClockBuilder Pro v2.37.0.1 [2019-09-26]
 * Timestamp:                                          2019-11-04 17:32:32 GMT+00:00
 *
 * A complete design report corresponding to this export is included at the end 
 * of this header file.
 *
 */

#ifndef SI5351C_REVB_REG_CONFIG_HEADER
#define SI5351C_REVB_REG_CONFIG_HEADER

#define SI5351C_REVB_REG_CONFIG_NUM_REGS				81

typedef struct
{
	unsigned int address; /* 16-bit register address */
	unsigned char value; /* 8-bit register data */

} si5351c_revb_register_t;

si5351c_revb_register_t const si5351c_revb_registers[SI5351C_REVB_REG_CONFIG_NUM_REGS] =
{
	{ 0x0002, 0x0B },
	{ 0x0003, 0x09 },
	{ 0x0007, 0x01 },
	{ 0x000F, 0x4C },
	{ 0x0010, 0x0F },
	{ 0x0011, 0x0F },
	{ 0x0012, 0x0F },
	{ 0x0013, 0x4F },
	{ 0x0014, 0x8C },
	{ 0x0015, 0x0F },
	{ 0x0016, 0x2F },
	{ 0x0017, 0x8C },
	{ 0x001A, 0x0C },
	{ 0x001B, 0x35 },
	{ 0x001C, 0x00 },
	{ 0x001D, 0x0F },
	{ 0x001E, 0xB1 },
	{ 0x001F, 0x00 },
	{ 0x0020, 0x0A },
	{ 0x0021, 0x5B },
	{ 0x0022, 0x00 },
	{ 0x0023, 0x19 },
	{ 0x0024, 0x00 },
	{ 0x0025, 0x0F },
	{ 0x0026, 0xC2 },
	{ 0x0027, 0x00 },
	{ 0x0028, 0x00 },
	{ 0x0029, 0x0E },
	{ 0x002A, 0x02 },
	{ 0x002B, 0x71 },
	{ 0x002C, 0x00 },
	{ 0x002D, 0x14 },
	{ 0x002E, 0x1E },
	{ 0x002F, 0x00 },
	{ 0x0030, 0x00 },
	{ 0x0031, 0xC2 },
	{ 0x0032, 0x02 },
	{ 0x0033, 0x71 },
	{ 0x0034, 0x00 },
	{ 0x0035, 0x03 },
	{ 0x0036, 0x87 },
	{ 0x0037, 0x00 },
	{ 0x0038, 0x01 },
	{ 0x0039, 0x69 },
	{ 0x003A, 0x00 },
	{ 0x003B, 0x01 },
	{ 0x003C, 0x00 },
	{ 0x003D, 0x07 },
	{ 0x003E, 0x00 },
	{ 0x003F, 0x00 },
	{ 0x0040, 0x00 },
	{ 0x0041, 0x00 },
	{ 0x0042, 0x00 },
	{ 0x0043, 0x01 },
	{ 0x0044, 0x00 },
	{ 0x0045, 0x01 },
	{ 0x0046, 0x00 },
	{ 0x0047, 0x00 },
	{ 0x0048, 0x00 },
	{ 0x0049, 0x00 },
	{ 0x0052, 0x0C },
	{ 0x0053, 0x35 },
	{ 0x0054, 0x00 },
	{ 0x0055, 0x06 },
	{ 0x0056, 0xD8 },
	{ 0x0057, 0x00 },
	{ 0x0058, 0x0B },
	{ 0x0059, 0x48 },
	{ 0x005A, 0x4A },
	{ 0x005B, 0x00 },
	{ 0x0095, 0x00 },
	{ 0x0096, 0x00 },
	{ 0x0097, 0x00 },
	{ 0x0098, 0x00 },
	{ 0x0099, 0x00 },
	{ 0x009A, 0x00 },
	{ 0x009B, 0x00 },
	{ 0x00A2, 0x00 },
	{ 0x00A3, 0x00 },
	{ 0x00A4, 0x00 },
	{ 0x00B7, 0x12 },

};

/*
 * Design Report
 *
 * Overview
 * ========
 * Part:               Si5351C
 * Project File:       D:\Development\icyradio\docs\clk_mngr_design\clk_mngr_design.slabtimeproj
 * Created By:         ClockBuilder Pro v2.37.0.1 [2019-09-26]
 * Timestamp:          2019-11-04 17:32:32 GMT+00:00
 * 
 * Design Rule Check
 * =================
 * Errors:
 * - No errors
 * 
 * Warnings:
 * - No warnings
 * 
 * Design
 * ======
 * Inputs:
 *     IN0: Unused
 *     IN1: 50 MHz
 * 
 * Outputs:
 *    OUT0: 20 MHz
 *          Disabled LVCMOS 8 mA
 *          Offset 0.000 s 
 *    OUT1: 80 MHz
 *          Enabled LVCMOS 8 mA
 *          Offset 0.000 s 
 *    OUT2: 49.152 MHz
 *          Enabled LVCMOS 8 mA
 *          Offset 0.000 s 
 *    OUT3: 147.456 MHz
 *          [ OUT2*3 ]
 *          Disabled LVCMOS 8 mA
 *          Offset 0.000 s 
 *    OUT4: Unused
 *    OUT5: 50 MHz
 *          Enabled LVCMOS 8 mA
 *          Offset 0.000 s 
 *    OUT6: 12 MHz
 *          Enabled LVCMOS 8 mA
 *          Offset 0.000 s 
 *    OUT7: Unused
 * 
 * Frequency Plan
 * ==============
 * PLL_A:
 *    Enabled Features = None
 *    Fvco             = 884.736 MHz
 *    M                = 35.38944
 *    Input1:
 *       Source           = CLKIN
 *       Source Frequency = 50 MHz
 *       P                = 2  (2^1)
 *       Fpfd             = 25 MHz
 *    Output0:
 *       Features       = None
 *       Disabled State = StopLow
 *       R              = 1  (2^0)
 *       Fout           = 20 MHz
 *       N              = 44.2368
 *    Output1:
 *       Features       = None
 *       Disabled State = StopLow
 *       R              = 1  (2^0)
 *       Fout           = 80 MHz
 *       N              = 11.0592
 *    Output2:
 *       Features       = None
 *       Disabled State = StopLow
 *       R              = 1  (2^0)
 *       Fout           = 49.152 MHz
 *       N              = 18
 *    Output3:
 *       Features       = None
 *       Disabled State = StopLow
 *       R              = 1  (2^0)
 *       Fout           = 147.456 MHz
 *       N              = 6
 *    Output5:
 *       Features       = None
 *       Disabled State = StopLow
 *       R              = 1  (2^0)
 *       Fout           = 50 MHz
 *       N              = 17.69472
 * PLL_B:
 *    Enabled Features = None
 *    Fvco             = 888 MHz
 *    M                = 35.52
 *    Input1:
 *       Source           = CLKIN
 *       Source Frequency = 50 MHz
 *       P                = 2  (2^1)
 *       Fpfd             = 25 MHz
 *    Output6:
 *       Features       = None
 *       Disabled State = StopLow
 *       R              = 1  (2^0)
 *       Fout           = 12 MHz
 *       N              = 74
 * 
 * Settings
 * ========
 * 
 * Location      Setting Name   Decimal Value      Hex Value        
 * ------------  -------------  -----------------  -----------------
 * 0x0002[3]     XO_LOS_MASK    1                  0x1              
 * 0x0002[4]     CLK_LOS_MASK   0                  0x0              
 * 0x0002[5]     LOL_A_MASK     0                  0x0              
 * 0x0002[6]     LOL_B_MASK     0                  0x0              
 * 0x0002[7]     SYS_INIT_MASK  0                  0x0              
 * 0x0003[7:0]   CLK_OEB        9                  0x09             
 * 0x0007[7:4]   I2C_ADDR_CTRL  0                  0x0              
 * 0x000F[2]     PLLA_SRC       1                  0x1              
 * 0x000F[3]     PLLB_SRC       1                  0x1              
 * 0x000F[4]     PLLA_INSELB    0                  0x0              
 * 0x000F[5]     PLLB_INSELB    0                  0x0              
 * 0x000F[7:6]   CLKIN_DIV      1                  0x1              
 * 0x0010[1:0]   CLK0_IDRV      3                  0x3              
 * 0x0010[3:2]   CLK0_SRC       3                  0x3              
 * 0x0010[4]     CLK0_INV       0                  0x0              
 * 0x0010[5]     MS0_SRC        0                  0x0              
 * 0x0010[6]     MS0_INT        0                  0x0              
 * 0x0010[7]     CLK0_PDN       0                  0x0              
 * 0x0011[1:0]   CLK1_IDRV      3                  0x3              
 * 0x0011[3:2]   CLK1_SRC       3                  0x3              
 * 0x0011[4]     CLK1_INV       0                  0x0              
 * 0x0011[5]     MS1_SRC        0                  0x0              
 * 0x0011[6]     MS1_INT        0                  0x0              
 * 0x0011[7]     CLK1_PDN       0                  0x0              
 * 0x0012[1:0]   CLK2_IDRV      3                  0x3              
 * 0x0012[3:2]   CLK2_SRC       3                  0x3              
 * 0x0012[4]     CLK2_INV       0                  0x0              
 * 0x0012[5]     MS2_SRC        0                  0x0              
 * 0x0012[6]     MS2_INT        0                  0x0              
 * 0x0012[7]     CLK2_PDN       0                  0x0              
 * 0x0013[1:0]   CLK3_IDRV      3                  0x3              
 * 0x0013[3:2]   CLK3_SRC       3                  0x3              
 * 0x0013[4]     CLK3_INV       0                  0x0              
 * 0x0013[5]     MS3_SRC        0                  0x0              
 * 0x0013[6]     MS3_INT        1                  0x1              
 * 0x0013[7]     CLK3_PDN       0                  0x0              
 * 0x0014[1:0]   CLK4_IDRV      0                  0x0              
 * 0x0014[3:2]   CLK4_SRC       3                  0x3              
 * 0x0014[4]     CLK4_INV       0                  0x0              
 * 0x0014[5]     MS4_SRC        0                  0x0              
 * 0x0014[6]     MS4_INT        0                  0x0              
 * 0x0014[7]     CLK4_PDN       1                  0x1              
 * 0x0015[1:0]   CLK5_IDRV      3                  0x3              
 * 0x0015[3:2]   CLK5_SRC       3                  0x3              
 * 0x0015[4]     CLK5_INV       0                  0x0              
 * 0x0015[5]     MS5_SRC        0                  0x0              
 * 0x0015[6]     MS5_INT        0                  0x0              
 * 0x0015[7]     CLK5_PDN       0                  0x0              
 * 0x0016[1:0]   CLK6_IDRV      3                  0x3              
 * 0x0016[3:2]   CLK6_SRC       3                  0x3              
 * 0x0016[4]     CLK6_INV       0                  0x0              
 * 0x0016[5]     MS6_SRC        1                  0x1              
 * 0x0016[6]     FBA_INT        0                  0x0              
 * 0x0016[7]     CLK6_PDN       0                  0x0              
 * 0x0017[1:0]   CLK7_IDRV      0                  0x0              
 * 0x0017[3:2]   CLK7_SRC       3                  0x3              
 * 0x0017[4]     CLK7_INV       0                  0x0              
 * 0x0017[5]     MS7_SRC        0                  0x0              
 * 0x0017[6]     FBB_INT        0                  0x0              
 * 0x0017[7]     CLK7_PDN       1                  0x1              
 * 0x001C[17:0]  MSNA_P1        4017               0x00FB1          
 * 0x001F[19:0]  MSNA_P2        2651               0x00A5B          
 * 0x001F[23:4]  MSNA_P3        3125               0x00C35          
 * 0x0024[17:0]  MSNB_P1        4034               0x00FC2          
 * 0x0027[19:0]  MSNB_P2        14                 0x0000E          
 * 0x0027[23:4]  MSNB_P3        25                 0x00019          
 * 0x002C[17:0]  MS0_P1         5150               0x0141E          
 * 0x002F[19:0]  MS0_P2         194                0x000C2          
 * 0x002F[23:4]  MS0_P3         625                0x00271          
 * 0x0034[17:0]  MS1_P1         903                0x00387          
 * 0x0037[19:0]  MS1_P2         361                0x00169          
 * 0x0037[23:4]  MS1_P3         625                0x00271          
 * 0x003C[17:0]  MS2_P1         1792               0x00700          
 * 0x003F[19:0]  MS2_P2         0                  0x00000          
 * 0x003F[23:4]  MS2_P3         1                  0x00001          
 * 0x0044[17:0]  MS3_P1         256                0x00100          
 * 0x0047[19:0]  MS3_P2         0                  0x00000          
 * 0x0047[23:4]  MS3_P3         1                  0x00001          
 * 0x0054[17:0]  MS5_P1         1752               0x006D8          
 * 0x0057[19:0]  MS5_P2         2888               0x00B48          
 * 0x0057[23:4]  MS5_P3         3125               0x00C35          
 * 0x005A[7:0]   MS6_P1         74                 0x4A             
 * 0x005B[7:0]   MS7_P1         0                  0x00             
 * 0x0095[14:0]  SSDN_P2        0                  0x0000           
 * 0x0095[7]     SSC_EN         0                  0x0              
 * 0x0097[14:0]  SSDN_P3        0                  0x0000           
 * 0x0097[7]     SSC_MODE       0                  0x0              
 * 0x0099[11:0]  SSDN_P1        0                  0x000            
 * 0x009A[15:4]  SSUDP          0                  0x000            
 * 0x00A2[21:0]  VCXO_PARAM     0                  0x000000         
 * 0x00B7[7:6]   XTAL_CL        0                  0x0
 * 
 *
 */

#endif