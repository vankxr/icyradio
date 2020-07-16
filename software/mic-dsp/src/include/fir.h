#ifndef __FIR_H__
#define __FIR_H__

#include <stdlib.h>
#include <stdint.h>
#include <string.h>

/*
    fSample: 1900000 Hz

    * 0 Hz - 75000 Hz
        gain = 1
        desired ripple = 1 dB
        actual ripple = 1 dB

    * 100000 Hz - 950000 Hz
        gain = 0
        desired attenuation = -30 dB
        actual attenuation = -30 dB
*/
#define BB_LPF_CUTOFF 300000
#define BB_LPF_TAP_NUM 99
static int16_t bb_lpf_coefs[BB_LPF_TAP_NUM] =
{
    515,
    64,
    54,
    35,
    7,
    -29,
    -69,
    -111,
    -151,
    -186,
    -210,
    -222,
    -219,
    -199,
    -163,
    -112,
    -48,
    24,
    98,
    169,
    230,
    275,
    297,
    296,
    264,
    204,
    118,
    9,
    -115,
    -246,
    -373,
    -485,
    -570,
    -617,
    -617,
    -561,
    -446,
    -269,
    -35,
    253,
    583,
    944,
    1319,
    1693,
    2048,
    2366,
    2632,
    2832,
    2957,
    2999,
    2957,
    2832,
    2632,
    2366,
    2048,
    1693,
    1319,
    944,
    583,
    253,
    -35,
    -269,
    -446,
    -561,
    -617,
    -617,
    -570,
    -485,
    -373,
    -246,
    -115,
    9,
    118,
    204,
    264,
    296,
    297,
    275,
    230,
    169,
    98,
    24,
    -48,
    -112,
    -163,
    -199,
    -219,
    -222,
    -210,
    -186,
    -151,
    -111,
    -69,
    -29,
    7,
    35,
    54,
    64,
    515
};

/*
    fSample: 47500 Hz

    * 0 Hz - 15000 Hz
        gain = 1
        desired ripple = 1 dB
        actual ripple = 0.67 dB

    * 19000 Hz - 23750 Hz
        gain = 0
        desired attenuation = -80 dB
        actual attenuation = -80 dB
*/
#define AUDIO_LPF_CUTOFF 19000
#define AUDIO_LPF_TAP_NUM 3
static int16_t audio_lpf_coefs[AUDIO_LPF_TAP_NUM] =
{
    6444,
    11658,
    6444
};

/*
    fSample: 190000 Hz

    * 0 Hz - 19000 Hz
        gain = 0
        desired attenuation = -60 dB
        actual attenuation = -60 dB

    * 24000 Hz - 52000 Hz
        gain = 1
        desired ripple = 1 dB
        actual ripple = 1.52 dB

    * 55500 Hz - 95000 Hz
        gain = 0
        desired attenuation = -60 dB
        actual attenuation = -60 dB
*/
#define STEREO_BPF_LOW_CUTOFF 19000
#define STEREO_BPF_HIGH_CUTOFF 55500
#define STEREO_BPF_TAP_NUM 103
static int16_t stereo_bpf_coefs[STEREO_BPF_TAP_NUM] =
{
    -49,
    16,
    174,
    94,
    -269,
    -308,
    199,
    443,
    -26,
    -378,
    -62,
    199,
    -6,
    -39,
    183,
    -6,
    -338,
    -81,
    273,
    67,
    -59,
    238,
    92,
    -456,
    -306,
    224,
    77,
    -86,
    457,
    493,
    -395,
    -580,
    29,
    -176,
    -520,
    489,
    1199,
    135,
    -488,
    195,
    -428,
    -1808,
    -464,
    1775,
    930,
    66,
    2257,
    1227,
    -5731,
    -7072,
    3271,
    10685,
    3271,
    -7072,
    -5731,
    1227,
    2257,
    66,
    930,
    1775,
    -464,
    -1808,
    -428,
    195,
    -488,
    135,
    1199,
    489,
    -520,
    -176,
    29,
    -580,
    -395,
    493,
    457,
    -86,
    77,
    224,
    -306,
    -456,
    92,
    238,
    -59,
    67,
    273,
    -81,
    -338,
    -6,
    183,
    -39,
    -6,
    199,
    -62,
    -378,
    -26,
    443,
    199,
    -308,
    -269,
    94,
    174,
    16,
    -49
};

/*
    fSample: 190000 Hz

    * 0 Hz - 53000 Hz
        gain = 0
        desired attenuation = -60 dB
        actual attenuation = -60 dB

    * 54500 Hz - 59500 Hz
        gain = 1
        desired ripple = 2 dB
        actual ripple = 1.54 dB

    * 61000 Hz - 95000 Hz
        gain = 0
        desired attenuation = -40 dB
        actual attenuation = -40 dB
*/
#define RDS_BPF_LOW_CUTOFF 53000
#define RDS_BPF_HIGH_CUTOFF 61000
#define RDS_BPF_TAP_NUM 243
static int16_t rds_bpf_coefs[RDS_BPF_TAP_NUM] =
{
    -4,
    60,
    -84,
    57,
    14,
    -53,
    15,
    47,
    -44,
    -24,
    63,
    -12,
    -61,
    50,
    35,
    -72,
    5,
    72,
    -44,
    -49,
    70,
    14,
    -78,
    22,
    69,
    -54,
    -48,
    78,
    17,
    -94,
    25,
    93,
    -74,
    -67,
    119,
    11,
    -139,
    66,
    115,
    -138,
    -44,
    173,
    -55,
    -147,
    142,
    64,
    -177,
    41,
    145,
    -121,
    -62,
    140,
    -24,
    -99,
    69,
    35,
    -56,
    3,
    11,
    13,
    14,
    -68,
    21,
    107,
    -114,
    -75,
    209,
    -47,
    -230,
    213,
    131,
    -333,
    70,
    324,
    -284,
    -164,
    400,
    -81,
    -351,
    295,
    159,
    -371,
    73,
    284,
    -221,
    -105,
    219,
    -37,
    -106,
    49,
    3,
    61,
    -32,
    -175,
    218,
    137,
    -451,
    133,
    532,
    -558,
    -296,
    908,
    -259,
    -918,
    927,
    450,
    -1368,
    395,
    1277,
    -1276,
    -573,
    1762,
    -520,
    -1552,
    1547,
    647,
    -2029,
    615,
    1700,
    -1698,
    -661,
    2123,
    -661,
    -1698,
    1700,
    615,
    -2029,
    647,
    1547,
    -1552,
    -520,
    1762,
    -573,
    -1276,
    1277,
    395,
    -1368,
    450,
    927,
    -918,
    -259,
    908,
    -296,
    -558,
    532,
    133,
    -451,
    137,
    218,
    -175,
    -32,
    61,
    3,
    49,
    -106,
    -37,
    219,
    -105,
    -221,
    284,
    73,
    -371,
    159,
    295,
    -351,
    -81,
    400,
    -164,
    -284,
    324,
    70,
    -333,
    131,
    213,
    -230,
    -47,
    209,
    -75,
    -114,
    107,
    21,
    -68,
    14,
    13,
    11,
    3,
    -56,
    35,
    69,
    -99,
    -24,
    140,
    -62,
    -121,
    145,
    41,
    -177,
    64,
    142,
    -147,
    -55,
    173,
    -44,
    -138,
    115,
    66,
    -139,
    11,
    119,
    -67,
    -74,
    93,
    25,
    -94,
    17,
    78,
    -48,
    -54,
    69,
    22,
    -78,
    14,
    70,
    -49,
    -44,
    72,
    5,
    -72,
    35,
    50,
    -61,
    -12,
    63,
    -24,
    -44,
    47,
    15,
    -53,
    14,
    57,
    -84,
    60,
    -4
};

/*
    fSample: 190000 Hz

    * 0 Hz - 5000 Hz
        gain = 1
        desired ripple = 1 dB
        actual ripple = 0.72 dB

    * 11875 Hz - 95000 Hz
        gain = 0
        desired attenuation = -50 dB
        actual attenuation = -50 dB
*/
#define RDS_LPF_CUTOFF 5000
#define RDS_LPF_TAP_NUM 59
static int16_t rds_lpf_coefs[RDS_LPF_TAP_NUM] =
{
    55,
    9,
    1,
    -16,
    -42,
    -77,
    -120,
    -169,
    -222,
    -274,
    -320,
    -353,
    -367,
    -355,
    -312,
    -231,
    -111,
    52,
    254,
    492,
    761,
    1050,
    1349,
    1645,
    1925,
    2176,
    2386,
    2544,
    2642,
    2675,
    2642,
    2544,
    2386,
    2176,
    1925,
    1645,
    1349,
    1050,
    761,
    492,
    254,
    52,
    -111,
    -231,
    -312,
    -355,
    -367,
    -353,
    -320,
    -274,
    -222,
    -169,
    -120,
    -77,
    -42,
    -16,
    1,
    9,
    55
};

/*
    fSample: 23750 Hz

    * 0 Hz - 1187.5 Hz
        gain = 1
        desired ripple = 4 dB
        actual ripple = 4.05 dB

    * 3500 Hz - 11875 Hz
        gain = 0
        desired attenuation = -60 dB
        actual attenuation = -60 dB
*/
#define RDS_LO_LPF_CUTOFF 3500
#define RDS_LO_LPF_TAP_NUM 19
static int16_t rds_lo_lpf_coefs[RDS_LO_LPF_TAP_NUM] =
{
    9,
    125,
    371,
    828,
    1514,
    2388,
    3342,
    4211,
    4823,
    5043,
    4823,
    4211,
    3342,
    2388,
    1514,
    828,
    371,
    125,
    9
};

/*
    fSample: 190000 Hz

    * 0 Hz - 16000 Hz
        gain = 0
        desired attenuation = -80 dB
        actual attenuation = -80 dB

    * 18500 Hz - 19500 Hz
        gain = 1
        desired ripple = 10 dB
        actual ripple = 5.94 dB

    * 22000 Hz - 95000 Hz
        gain = 0
        desired attenuation = -80 dB
        actual attenuation = -80 dB
*/
#define PILOT_19KHZ_BPF_LOW_CUTOFF 16000
#define PILOT_19KHZ_BPF_HIGH_CUTOFF 22000
#define PILOT_19KHZ_BPF_TAP_NUM 191
static int16_t pilot_19khz_bpf_coefs[PILOT_19KHZ_BPF_TAP_NUM] =
{
    -2,
    -1,
    0,
    1,
    3,
    4,
    4,
    2,
    -2,
    -5,
    -8,
    -7,
    -3,
    4,
    11,
    15,
    13,
    6,
    -6,
    -18,
    -25,
    -22,
    -9,
    10,
    29,
    39,
    34,
    14,
    -15,
    -43,
    -57,
    -50,
    -21,
    22,
    61,
    81,
    70,
    29,
    -30,
    -84,
    -110,
    -94,
    -38,
    40,
    110,
    144,
    122,
    49,
    -51,
    -141,
    -182,
    -154,
    -62,
    64,
    174,
    224,
    188,
    75,
    -77,
    -209,
    -267,
    -223,
    -88,
    90,
    244,
    311,
    258,
    102,
    -104,
    -279,
    -353,
    -292,
    -114,
    116,
    310,
    390,
    322,
    125,
    -127,
    -337,
    -422,
    -346,
    -134,
    135,
    358,
    446,
    364,
    140,
    -141,
    -372,
    -462,
    -375,
    -144,
    144,
    377,
    467,
    377,
    144,
    -144,
    -375,
    -462,
    -372,
    -141,
    140,
    364,
    446,
    358,
    135,
    -134,
    -346,
    -422,
    -337,
    -127,
    125,
    322,
    390,
    310,
    116,
    -114,
    -292,
    -353,
    -279,
    -104,
    102,
    258,
    311,
    244,
    90,
    -88,
    -223,
    -267,
    -209,
    -77,
    75,
    188,
    224,
    174,
    64,
    -62,
    -154,
    -182,
    -141,
    -51,
    49,
    122,
    144,
    110,
    40,
    -38,
    -94,
    -110,
    -84,
    -30,
    29,
    70,
    81,
    61,
    22,
    -21,
    -50,
    -57,
    -43,
    -15,
    14,
    34,
    39,
    29,
    10,
    -9,
    -22,
    -25,
    -18,
    -6,
    6,
    13,
    15,
    11,
    4,
    -3,
    -7,
    -8,
    -5,
    -2,
    2,
    4,
    4,
    3,
    1,
    0,
    -1,
    -2
};

/*
    fSample: 190000 Hz

    * 0 Hz - 20000 Hz
        gain = 0
        desired attenuation = -80 dB
        actual attenuation = -80 dB

    * 37000 Hz - 95000 Hz
        gain = 1
        desired ripple = 1 dB
        actual ripple = 0.69 dB
*/
#define PILOT_38KHZ_HPF_CUTOFF 37000
#define PILOT_38KHZ_HPF_TAP_NUM 29
static int16_t pilot_38khz_hpf_coefs[PILOT_38KHZ_HPF_TAP_NUM] =
{
    251,
    -536,
    -45,
    377,
    493,
    26,
    -734,
    -939,
    6,
    1543,
    2021,
    -37,
    -4422,
    -8951,
    21894,
    -8951,
    -4422,
    -37,
    2021,
    1543,
    6,
    -939,
    -734,
    26,
    493,
    377,
    -45,
    -536,
    251
};

/*
    fSample: 190000 Hz

    * 0 Hz - 20000 Hz
        gain = 0
        desired attenuation = -80 dB
        actual attenuation = -80 dB

    * 56000 Hz - 95000 Hz
        gain = 1
        desired ripple = 1 dB
        actual ripple = 0.59 dB
*/
#define PILOT_57KHZ_HPF_CUTOFF 56000
#define PILOT_57KHZ_HPF_TAP_NUM 15
static int16_t pilot_57khz_hpf_coefs[PILOT_57KHZ_HPF_TAP_NUM] =
{
    141,
    -21,
    -1026,
    736,
    2474,
    -1074,
    -10057,
    17657,
    -10057,
    -1074,
    2474,
    736,
    -1026,
    -21,
    141
};

typedef struct fir_filter_t
{
    int16_t *psCoefs;
    int16_t *psData;
    uint32_t ulTaps;
    uint32_t ulLastIndex;
} fir_filter_t;

fir_filter_t *fir_init(int16_t *pusCoefs, uint32_t ulTaps);
void fir_cleanup(fir_filter_t *pFilter);
void fir_put(fir_filter_t *pFilter, int16_t sSample);
int16_t fir_get(fir_filter_t *pFilter);
static inline int16_t fir_filter(fir_filter_t *pFilter, int16_t sSample)
{
    fir_put(pFilter, sSample);

    return fir_get(pFilter);
}

#endif
