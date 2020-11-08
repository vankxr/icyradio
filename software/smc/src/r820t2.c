#include "r820t2.h"

uint32_t R820T2_FREQ;
uint32_t R820T2_IF_FREQ = 5000000;

static const float fVGABaseGain = -4.7f;
static const float fVGAGainSteps[]  = {0.f, 2.6f, 2.6f, 3.0f, 4.2f, 3.5f, 2.4f, 1.3f, 1.4f, 3.2f, 3.6f, 3.4f, 3.5f, 3.7f, 3.5f, 3.6f};
static const float fLNABaseGain = 0.f;
static const float fLNAGainSteps[]  = {0.f, 0.9f, 1.3f, 4.0f, 3.8f, 1.3f, 3.1f, 2.2f, 2.6f, 3.1f, 2.6f, 1.4f, 1.9f, 0.5f, 3.5f, 1.3f};
static const float fMixerBaseGain = 0.f;
static const float fMixerGainSteps[]  = {0.f, 0.5f, 1.0f, 1.0f, 1.9f, 0.9f, 1.0f, 2.5f, 1.7f, 1.0f, 0.8f, 1.6f, 1.3f, 0.6f, 0.3f, -0.8f};
static uint8_t ubRegisterCache[32];
static const uint8_t ubRegisterInitValues[32] =
{
    0x00, 0x00, 0x00, 0x00, 0x00, // Read-only registers do not need initialization
    0x80, // R5 - LT off, LNA AGC on
    0x30, // R6 - PDET1 on, PDET3 off, Filter gain +3 dB, LNA max power
    0x70, // R7 - Mixer on, normal current, AGC on
    0x80, // R8 - Mixer buffer on, high current, IGA = 0
    0x40, // R9 - IF filter on, low current, IPA = 0
    0x98, // R10 - Filter power on, highest power, mid fine bandwidth
    0x0F, // R11 - Filter coarse widest, HPF corner lowest
    0xE0, // R12 - VGA on, controlled by code, min gain
    0x63, // R13 - LNA AGC VTH = 0,94 V, VTL = 0,64 V
    0x75, // R14 - Mixer AGC VTH = 1,04 V, VTL = 0,84 V
    0xF8, // R15 - CLKOUT disabled, AGC clock on
    0x7C, // R16 - VCO div = 1, REF div by 2, XTAL cap 0pF
    0x83, // R17 - Analog LDO 2,0 V
    0x80, // R18 - TODO: Find documentation for this
    0x00, // R19 - TODO: Find documentation for this
    0x0F, // R20 - PLL related, init value not important
    0x00, // R21 - PLL related, init value not important
    0xC0, // R22 - PLL related, init value not important
    0x30, // R23 - Digital LDO 1,8V 8mA, Open Drain High-Z
    0x48, // R24 - TODO: Find documentation for this
    0xEC, // R25 - RF Filter on, AGC input 2 selected
    0x40, // R26 - Bypass TF, PLL autotune 128 kHz, RF filter highest band
    0x00, // R27 - Highest corner for LPNF and LPF
    0x54, // R28 - PDET3 TOP = 5
    0xAE, // R29 - PDET1 TOP = 5, PDET2 TOP = 6
    0x4E, // R30 - Filter extension enabled, PDET timing = 14
    0xC0  // R31 - TODO: Find documentation for this
};
static const r820t2_freq_range_t xFrequencyRanges[] =
{
    {
        0,      // 0 MHz
        0x08,   // R23[3] = 1 (Low-Z)
        0x02,   // R26[7:6] = 0 (LPF)  R26[1:0] = 2 (low)
        0xDF,   // R27[7:0]  Band 2, Band 0
    },
    {
        50,     // 50 MHz
        0x08,   // R23[3] = 1 (Low-Z)
        0x02,   // R26[7:6] = 0 (LPF)  R26[1:0] = 2 (low)
        0xBE,   // R27[7:0]  Band 4, Band 1
    },
    {
        55,     // 55 MHz
        0x08,   // R23[3] = 1 (Low-Z)
        0x02,   // R26[7:6] = 0 (LPF)  R26[1:0] = 2 (low)
        0x8B,   // R27[7:0]  Band 7, Band 4
    },
    {
        60,     // 60 MHz
        0x08,   // R23[3] = 1 (Low-Z)
        0x02,   // R26[7:6] = 0 (LPF)  R26[1:0] = 2 (low)
        0x7B,   // R27[7:0]  Band 8, Band 4
    },
    {
        65,     // 65 MHz
        0x08,   // R23[3] = 1 (Low-Z)
        0x02,   // R26[7:6] = 0 (LPF)  R26[1:0] = 2 (low)
        0x69,   // R27[7:0]  Band 9, Band 6
    },
    {
        70,     // 70 MHz
        0x08,   // R23[3] = 1 (Low-Z)
        0x02,   // R26[7:6] = 0 (LPF)  R26[1:0] = 2 (low)
        0x58,   // R27[7:0]  Band 10, Band 7
    },
    {
        75,     // 75 MHz
        0x00,   // R23[3] = 0 (High-Z)
        0x02,   // R26[7:6] = 0 (LPF)  R26[1:0] = 2 (low)
        0x44,   // R27[7:0]  Band 11, Band 11
    },
    {
        80,     // 80 MHz
        0x00,   // R23[3] = 0 (High-Z)
        0x02,   // R26[7:6] = 0 (LPF)  R26[1:0] = 2 (low)
        0x44,   // R27[7:0]  Band 11, Band 11
    },
    {
        90,     // 90 MHz
        0x00,   // R23[3] = 0 (High-Z)
        0x02,   // R26[7:6] = 0 (LPF)  R26[1:0] = 2 (low)
        0x34,   // R27[7:0]  Band 12, Band 11
    },
    {
        100,    // 100 MHz
        0x00,   // R23[3] = 0 (High-Z)
        0x02,   // R26[7:6] = 0 (LPF)  R26[1:0] = 2 (low)
        0x34,   // R27[7:0]  Band 12, Band 11
    },
    {
        110,    // 110 MHz
        0x00,   // R23[3] = 0 (High-Z)
        0x02,   // R26[7:6] = 0 (LPF)  R26[1:0] = 2 (low)
        0x24,   // R27[7:0]  Band 13, Band 11
    },
    {
        120,    // 120 MHz
        0x00,   // R23[3] = 0 (High-Z)
        0x02,   // R26[7:6] = 0 (LPF)  R26[1:0] = 2 (low)
        0x24,   // R27[7:0]  Band 13, Band 11
    },
    {
        140,    // 140 MHz
        0x00,   // R23[3] = 0 (High-Z)
        0x02,   // R26[7:6] = 0 (LPF)  R26[1:0] = 2 (low)
        0x14,   // R27[7:0]  Band 14, Band 11
    },
    {
        180,    // 180 MHz
        0x00,   // R23[3] = 0 (High-Z)
        0x02,   // R26[7:6] = 0 (LPF)  R26[1:0] = 2 (low)
        0x13,   // R27[7:0]  Band 14, Band 12
    },
    {
        220,    // 220 MHz
        0x00,   // R23[3] = 0 (High-Z)
        0x02,   // R26[7:6] = 0 (LPF)  R26[1:0] = 2 (low)
        0x13,   // R27[7:0]  Band 14, Band 12
    },
    {
        250,    // 250 MHz
        0x00,   // R23[3] = 0 (High-Z)
        0x02,   // R26[7:6] = 0 (LPF)  R26[1:0] = 2 (low)
        0x11,   // R27[7:0]  highest,highest
    },
    {
        280,    // 280 MHz
        0x00,   // R23[3] = 0 (High-Z)
        0x02,   // R26[7:6] = 0 (LPF)  R26[1:0] = 2 (low)
        0x00,   // R27[7:0]  highest,highest
    },
    {
        310,    // 310 MHz
        0x00,   // R23[3] = 0 (High-Z)
        0x41,   // R26[7:6] = 1 (bypass)  R26[1:0] = 1 (middle)
        0x00,   // R27[7:0]  highest,highest
    },
    {
        450,    // 450 MHz
        0x00,   // R23[3] = 0 (High-Z)
        0x41,   // R26[7:6] = 1 (bypass)  R26[1:0] = 1 (middle)
        0x00,   // R27[7:0]  highest,highest
    },
    {
        588,    // 588 MHz
        0x00,   // R23[3] = 0 (High-Z)
        0x40,   // R26[7:6] = 1 (bypass)  R26[1:0] = 0 (highest)
        0x00,   // R27[7:0]  highest,highest
    },
    {
        650,    // 650 MHz
        0x00,   // R23[3] = 0 (High-Z)
        0x40,   // R26[7:6] = 1 (bypass)  R26[1:0] = 0 (highest)
        0x00,   // R27[7:0]  highest,highest
    }
};

static uint8_t r820t2_bit_reverse(uint8_t ubByte)
{
    static const uint8_t ubNibbleRev[] = { 0x0, 0x8, 0x4, 0xC, 0x2, 0xA, 0x6, 0xE, 0x1, 0x9, 0x5, 0xD, 0x3, 0xB, 0x7, 0xF };

    return (ubNibbleRev[ubByte & 0xF] << 4) | ubNibbleRev[ubByte >> 4];
}

static uint8_t r820t2_read_register_cached(uint8_t ubRegister)
{
    if(ubRegister > 31)
        return 0;

    return r820t2_bit_reverse(ubRegisterCache[ubRegister]);
}
static uint8_t r820t2_read_register(uint8_t ubRegister)
{
    if(ubRegister > 31)
        return 0;

    ATOMIC_BLOCK(ATOMIC_RESTORESTATE)
    {
        i2c1_read(R820T2_I2C_ADDR, ubRegisterCache, ubRegister + 1, I2C_STOP);

        return r820t2_bit_reverse(ubRegisterCache[ubRegister]);
    }
}
static void r820t2_write_register(uint8_t ubRegister, uint8_t ubValue)
{
    if(ubRegister > 31)
        return;

    ubRegisterCache[ubRegister] = r820t2_bit_reverse(ubValue);

    uint8_t pubBuffer[2];

    pubBuffer[0] = ubRegister;
    pubBuffer[1] = ubValue;

    ATOMIC_BLOCK(ATOMIC_RESTORESTATE)
    {
        i2c1_write(R820T2_I2C_ADDR, pubBuffer, 2, I2C_STOP);
    }
}
static void r820t2_rmw_register(uint8_t ubRegister, uint8_t ubMask, uint8_t ubValue)
{
    r820t2_write_register(ubRegister, (r820t2_read_register(ubRegister) & ubMask) | ubValue);
}
static void r820t2_rmw_register_cached(uint8_t ubRegister, uint8_t ubMask, uint8_t ubValue)
{
    r820t2_write_register(ubRegister, (r820t2_read_register_cached(ubRegister) & ubMask) | ubValue);
}

uint8_t r820t2_init()
{
    if(!i2c1_write(R820T2_I2C_ADDR, NULL, 0, I2C_STOP)) // Check ACK from the expected address
        return 0;

    if(r820t2_read_register(0x00) != 0x96)
        return 0;

    for(uint8_t i = 5; i < 32; i++)
        r820t2_write_register(i, ubRegisterInitValues[i]);

    delay_ms(20);

    r820t2_read_register(0x1F); // Force the register cache to load

    delay_ms(20);

    if(!r820t2_calibrate())
        return 0;

    return 1;
}

uint8_t r820t2_calibrate()
{
    r820t2_rmw_register_cached(0x13, (uint8_t)~0x3F, 0x31);

    for(uint8_t i = 0; i < 5; i++)
    {
        r820t2_rmw_register_cached(0x0B, (uint8_t)~0x60, 0x60); // Set narrowest filter
        r820t2_rmw_register_cached(0x0F, (uint8_t)~0x04, 0x04); // Enable calibration clock
        r820t2_rmw_register_cached(0x10, (uint8_t)~0x03, 0x00); // 0 pF XTAL cap

        if(!r820t2_set_pll_freq(56000000))
            return 0;

        r820t2_rmw_register_cached(0x0B, (uint8_t)~0x10, 0x10); // Trigger

        delay_ms(10);

        r820t2_rmw_register_cached(0x0B, (uint8_t)~0x10, 0x00); // Stop trigger

        r820t2_rmw_register_cached(0x0F, (uint8_t)~0x04, 0x00); // Disable calibration clock

        uint8_t ubCalibrationCode = r820t2_read_register(0x04) & 0x0F;

        if(ubCalibrationCode && ubCalibrationCode != 0x0F)
            return 1;
    }

    return 0;
}

void r820t2_sleep()
{
    r820t2_write_register(0x05, 0xA0);
    r820t2_write_register(0x06, 0xD0);
    r820t2_write_register(0x07, 0x00);
    r820t2_write_register(0x08, 0x40);
    r820t2_write_register(0x09, 0xC0);
    r820t2_write_register(0x0A, 0x70);
    r820t2_write_register(0x0C, 0xA0);
    r820t2_write_register(0x0F, 0x2A);
    r820t2_write_register(0x11, 0x03);
    r820t2_write_register(0x17, 0xF4);
    r820t2_write_register(0x19, 0x0C);
}
uint8_t r820t2_wakeup()
{
    for(uint8_t i = 5; i < 32; i++)
        r820t2_write_register(i, ubRegisterInitValues[i]);

    delay_ms(20);

    r820t2_read_register(0x1F); // Force the register cache to load

    delay_ms(20);

    if(!r820t2_calibrate())
        return 0;

    if(!r820t2_set_freq(R820T2_FREQ))
        return 0;

    return 1;
}

uint8_t r820t2_set_tf_freq(uint32_t ulFrequency)
{
    if(!ulFrequency)
        return 0;

    float fFreqMHz = (float)ulFrequency / 1000000;

    const r820t2_freq_range_t *pFreqRange = NULL;
    uint8_t ubFreqRangeIndex;

    for(ubFreqRangeIndex = 0; ubFreqRangeIndex < (sizeof(xFrequencyRanges) / sizeof(xFrequencyRanges[0])) - 1; ubFreqRangeIndex++)
    {
        if(fFreqMHz < xFrequencyRanges[ubFreqRangeIndex + 1].usFrequency)
            break;
    }

    pFreqRange = &xFrequencyRanges[ubFreqRangeIndex];

    r820t2_rmw_register_cached(0x17, (uint8_t)~0x08, pFreqRange->ubOpenDrain);
    r820t2_rmw_register_cached(0x1A, (uint8_t)~0xC3, pFreqRange->ubRFMuxFilter);
    r820t2_write_register(0x1B, pFreqRange->ubTrackingFilter);
    r820t2_rmw_register_cached(0x10, (uint8_t)~0x0B, 0x00);

    return 1;
}
uint8_t r820t2_set_pll_freq(uint32_t ulFrequency)
{
    if(!ulFrequency)
        return 0;

    uint32_t ulPLLReference = (R820T2_REF_FREQ > 24000000) ? (R820T2_REF_FREQ >> 1) : R820T2_REF_FREQ;

    r820t2_rmw_register_cached(0x10, (uint8_t)~0x10, ((R820T2_REF_FREQ > 24000000) ? 0x10 : 0)); // Set REFSEL divider
    r820t2_rmw_register_cached(0x1A, (uint8_t)~0x0C, 0x00); // PLL Autotune freq = 128kHz
    r820t2_rmw_register_cached(0x12, (uint8_t)~0xE0, 0x80); // VCO current = 100

    uint64_t ullVCOFreq;
    uint8_t ubOutputDivider;

    // Calculate output divider
    for(ubOutputDivider = 0; ubOutputDivider < 5; ubOutputDivider++)
    {
        ullVCOFreq = (uint64_t)ulFrequency << (ubOutputDivider + 1);

        if(ullVCOFreq >= R820T2_VCO_MIN && ullVCOFreq <= R820T2_VCO_MAX)
            break;
    }

    uint8_t ubVCOFineTune = (r820t2_read_register(0x04) & 0x30) >> 4;

    if(ubVCOFineTune > R820T2_VCO_POWER_REF)
        ubOutputDivider -= 1;
    else if(ubVCOFineTune < R820T2_VCO_POWER_REF)
        ubOutputDivider += 1;

    r820t2_rmw_register_cached(0x10, (uint8_t)~0xE0, (ubOutputDivider << 5)); // Set VCO output divider

    // Integer part
    uint8_t ubIntDiv = ullVCOFreq / (2 * ulPLLReference);
    uint32_t ulFracDiv = (ullVCOFreq - 2 * ulPLLReference * ubIntDiv) / 1000;

    uint8_t ubNi = (ubIntDiv - 13) / 4;
    uint8_t ubSi = ubIntDiv - 4 * ubNi - 13;

    r820t2_write_register(0x14, ubNi + (ubSi << 6));

    // Fractional part
    if(!ulFracDiv)
        r820t2_rmw_register_cached(0x12, (uint8_t)~0x08, 0x08); // Disable fractional PLL
    else
        r820t2_rmw_register_cached(0x12, (uint8_t)~0x08, 0x00); // Enable fractional PLL

    uint16_t usSDM = 0;
    uint16_t usSDMCount = 2;

    while(ulFracDiv > 1)
    {
        if(ulFracDiv > (2 * (ulPLLReference / 1000) / usSDMCount))
        {
            usSDM = usSDM + 32768 / (usSDMCount / 2);
            ulFracDiv -= 2 * (ulPLLReference / 1000) / usSDMCount;

            if(usSDMCount >= 0x8000)
                break;
        }

        usSDMCount <<= 1;
    }

    r820t2_write_register(0x16, usSDM >> 8);
    r820t2_write_register(0x15, usSDM & 0xFF);

    // Check if PLL locked
    uint8_t ubPLLLocked = 0;

    for(uint8_t i = 0; i < 5; i++)
    {
        delay_ms(5);

        if(r820t2_read_register(0x02) & 0x40) // Check if PLL locked
        {
            ubPLLLocked = 1;

            break;
        }

        if(!i)
            r820t2_rmw_register_cached(0x12, (uint8_t)~0xE0, 0x60); // Increase VCO current
    }

    if(!ubPLLLocked)
        return 0;

    r820t2_rmw_register_cached(0x1A, (uint8_t)~0x0C, 0x08); // PLL Autotune freq = 8kHz

    return 1;
}
void r820t2_set_if_freq(uint32_t ulFrequency)
{
    if(!ulFrequency)
        return;

    R820T2_IF_FREQ = ulFrequency;
}
uint8_t r820t2_set_freq(uint32_t ulFrequency)
{
    if(!r820t2_set_tf_freq(ulFrequency))
        return 0;

    uint32_t ulPLLFreq = ulFrequency + R820T2_IF_FREQ;

    if(!r820t2_set_pll_freq(ulPLLFreq))
        return 0;

    R820T2_FREQ = ulFrequency;

    return 1;
}

void r820t2_set_if_bandwidth(uint8_t ubBPFCoarse, uint8_t ubBPFFine, uint8_t ubHPFFine)
{
    r820t2_rmw_register_cached(0x0A, (uint8_t)~0x0F, ubBPFFine & 0x0F);
    r820t2_write_register(0x0B, ((ubBPFCoarse & 0x03) << 5) | (ubHPFFine & 0x0F));
}

void r820t2_set_lna_gain(float fGain, uint8_t ubAGCEnabled)
{
    if(ubAGCEnabled)
    {
        r820t2_rmw_register_cached(0x05, (uint8_t)~0x10, 0x00);

        return;
    }

    float fTotalGain = fLNABaseGain;
    uint8_t ubCode;

    for(ubCode = 0; ubCode < 16; ubCode++)
    {
        fTotalGain += fLNAGainSteps[ubCode];

        if(fTotalGain >= fGain)
            break;
    }

    if(ubCode >= 16)
        ubCode = 15;

    r820t2_rmw_register_cached(0x05, (uint8_t)~0x1F, 0x10 | (ubCode & 0x0F));
}
float r820t2_get_lna_gain()
{
    uint8_t ubCode = r820t2_read_register(0x05) & 0x0F;
    float fGain = fLNABaseGain;

    for(uint8_t i = 0; i <= ubCode; i++)
        fGain += fLNAGainSteps[i];

    return fGain;
}
void r820t2_set_mixer_gain(float fGain, uint8_t ubAGCEnabled)
{
    if(ubAGCEnabled)
    {
        r820t2_rmw_register_cached(0x07, (uint8_t)~0x10, 0x10);

        return;
    }

    float fTotalGain = fMixerBaseGain;
    uint8_t ubCode;

    for(ubCode = 0; ubCode < 16; ubCode++)
    {
        fTotalGain += fMixerGainSteps[ubCode];

        if(fTotalGain >= fGain)
            break;
    }

    if(ubCode >= 16)
        ubCode = 15;

    r820t2_rmw_register_cached(0x07, (uint8_t)~0x1F, ubCode & 0x0F);
}
float r820t2_get_mixer_gain()
{
    uint8_t ubCode = r820t2_read_register(0x07) & 0x0F;
    float fGain = fMixerBaseGain;

    for(uint8_t i = 0; i <= ubCode; i++)
        fGain += fMixerGainSteps[i];

    return fGain;
}
void r820t2_set_vga_gain(float fGain)
{
    float fTotalGain = fVGABaseGain;
    uint8_t ubCode;

    for(ubCode = 0; ubCode < 16; ubCode++)
    {
        fTotalGain += fVGAGainSteps[ubCode];

        if(fTotalGain >= fGain)
            break;
    }

    if(ubCode >= 16)
        ubCode = 15;

    r820t2_rmw_register_cached(0x0C, (uint8_t)~0x0F, ubCode & 0x0F);
}
float r820t2_get_vga_gain()
{
    uint8_t ubCode = r820t2_read_register(0x0C) & 0x0F;
    float fGain = fVGABaseGain;

    for(uint8_t i = 0; i <= ubCode; i++)
        fGain += fVGAGainSteps[i];

    return fGain;
}