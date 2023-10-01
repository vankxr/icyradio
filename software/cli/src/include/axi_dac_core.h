#ifndef __AXI_DAC_CORE_H__
#define __AXI_DAC_CORE_H__

#include <stdlib.h>
#include <stdio.h>
#include <stdint.h>
#include <inttypes.h>
#include <unistd.h>
#include "utils.h"
#include "debug_macros.h"

#define AXI_DAC_REG_RSTN                0x0040
#define AXI_DAC_MMCM_RSTN               BIT(1)
#define AXI_DAC_RSTN                    BIT(0)

#define AXI_DAC_REG_SYNC_CONTROL        0x0044
#define AXI_DAC_SYNC                    BIT(0)

#define AXI_DAC_REG_RATECNTRL           0x004C
#define AXI_DAC_RATE(x)                 (((x) & 0xFF) << 0)
#define AXI_DAC_TO_RATE(x)              (((x) >> 0) & 0xFF)

#define AXI_DAC_REG_CLK_FREQ            0x0054
#define AXI_DAC_CLK_FREQ(x)             (((x) & 0xFFFFFFFF) << 0)
#define AXI_DAC_TO_CLK_FREQ(x)          (((x) >> 0) & 0xFFFFFFFF)

#define AXI_DAC_REG_CLK_RATIO           0x0058
#define AXI_DAC_CLK_RATIO(x)            (((x) & 0xFFFFFFFF) << 0)
#define AXI_DAC_TO_CLK_RATIO(x)         (((x) >> 0) & 0xFFFFFFFF)

#define AXI_DAC_REG_STATUS              0x005C
#define AXI_DAC_MUX_PN_ERR              BIT(3)
#define AXI_DAC_MUX_PN_OOS              BIT(2)
#define AXI_DAC_MUX_OVER_RANGE          BIT(1)
#define AXI_DAC_STATUS                  BIT(0)

#define AXI_DAC_REG_DDS_SCALE(x)        (0x0400 + ((x) >> 1) * 0x40 + ((x) & 1) * 0x8)
#define AXI_DAC_DDS_SCALE(x)            (((x) & 0xFFFF) << 0)
#define AXI_DAC_TO_DDS_SCALE(x)         (((x) >> 0) & 0xFFFF)

#define AXI_DAC_REG_DDS_INIT_INCR(x)    (0x0404 + ((x) >> 1) * 0x40 + ((x) & 1) * 0x8)
#define AXI_DAC_DDS_INIT(x)             (((x) & 0xFFFFU) << 16)
#define AXI_DAC_TO_DDS_INIT(x)          (((x) >> 16) & 0xFFFF)
#define AXI_DAC_DDS_INCR(x)             (((x) & 0xFFFF) << 0)
#define AXI_DAC_TO_DDS_INCR(x)          (((x) >> 0) & 0xFFFF)

#define DAC_REG_DATA_PATTERN(c)         (0x0410 + (c) * 0x40)

#define AXI_DAC_REG_DATA_SELECT(c)      (0x0418 + (c) * 0x40)
#define AXI_DAC_DATA_SELECT(x)          (((x) & 0xF) << 0)
#define AXI_DAC_TO_DATA_SELECT(x)       (((x) >> 0) & 0xF)

#define AXI_DAC_REG_CHAN_CNTRL_6(c)     (0x0414 + (c) * 0x40)
#define AXI_DAC_IQCOR_ENB               BIT(2)

#define AXI_DAC_REG_CHAN_CNTRL_7(c)     (0x0418 + (c) * 0x40)
#define AXI_DAC_DAC_DDS_SEL(x)          (((x) & 0xF) << 0)
#define AXI_DAC_TO_DAC_DDS_SEL(x)       (((x) >> 0) & 0xF)

#define AXI_DAC_REG_CHAN_CNTRL_8(c)     (0x041C + (c) * 0x40)
#define AXI_DAC_IQCOR_COEFF_1(x)        (((x) & 0xFFFFU) << 16)
#define AXI_DAC_TO_IQCOR_COEFF_1(x)     (((x) >> 16) & 0xFFFF)
#define AXI_DAC_IQCOR_COEFF_2(x)        (((x) & 0xFFFF) << 0)
#define AXI_DAC_TO_IQCOR_COEFF_2(x)     (((x) >> 0) & 0xFFFF)

/**
 * @struct axi_dac
 * @brief AXI DAC Device Descriptor.
 */
struct axi_dac
{
    /** Device Name */
    const char* name;
    /** Base Address */
    void *base;
    /** Number of channels */
    uint8_t num_channels;
    /** AXI DAC Clock */
    uint64_t clock_hz;
    /** DAC channels manual configuration */
    struct axi_dac_channel* channels;
};

struct axi_dac_init
{
    /** Device Name */
    const char* name;
    /** Base Address */
    void *base;
    /** Number of channels */
    uint8_t num_channels;
    /** DAC channels manual configuration */
    struct axi_dac_channel* channels;
    /** The effective DAC rate */
    uint8_t rate;
};

enum axi_dac_data_sel
{
    AXI_DAC_DATA_SEL_DDS,
    AXI_DAC_DATA_SEL_SED,
    AXI_DAC_DATA_SEL_DMA,
    AXI_DAC_DATA_SEL_ZERO,
    AXI_DAC_DATA_SEL_PN7,
    AXI_DAC_DATA_SEL_PN15,
    AXI_DAC_DATA_SEL_PN23,
    AXI_DAC_DATA_SEL_PN31,
    AXI_DAC_DATA_SEL_LB,
    AXI_DAC_DATA_SEL_PNXX,
};

struct axi_dac_channel
{
    uint32_t dds_frequency_0;       // in hz (1000*1000 for MHz)
    uint32_t dds_phase_0;           // in milli(?) angles (90*1000 for 90 degrees = pi/2)
    int32_t dds_scale_0;            // in micro units (1.0*1000*1000 is 1.0)
    uint32_t dds_frequency_1;       // in hz (1000*1000 for MHz)
    uint32_t dds_phase_1;           // in milli(?) angles (90*1000 for 90 degrees = pi/2)
    int32_t dds_scale_1;            // in micro units (1.0*1000*1000 is 1.0)
    uint32_t dds_dual_tone;         // if using single tone for this channel, set to 0x0
    uint32_t pat_data;              // if using SED/debug that sort of thing
    enum axi_dac_data_sel sel;      // set to one of the enumerated type above.
};

extern const uint16_t sine_lut[128];
extern const uint32_t sine_lut_iq[1024];

/** Begin AXI DAC Initialization */
int32_t axi_dac_init_begin(struct axi_dac** dac_core, const struct axi_dac_init* init);
/** Finish AXI DAC Initialization */
int32_t axi_dac_init_finish(struct axi_dac* dac);
/** AXI DAC Main Initialization */
int32_t axi_dac_init(struct axi_dac** dac_core, const struct axi_dac_init* init);
/** Resources Deallocation */
int32_t axi_dac_remove(struct axi_dac* dac);
/** AXI DAC Data Select */
int32_t axi_dac_set_datasel(struct axi_dac* dac, int32_t chan, enum axi_dac_data_sel sel);
/** AXI DAC Set DDS Frequency */
int32_t axi_dac_dds_set_frequency(struct axi_dac* dac, uint32_t chan, uint32_t freq_hz);
/** AXI DAC Get DDS Frequency */
int32_t axi_dac_dds_get_frequency(struct axi_dac* dac, uint32_t chan, uint32_t* freq);
/** AXI DAC Set DDS Phase */
int32_t axi_dac_dds_set_phase(struct axi_dac* dac, uint32_t chan, uint32_t phase);
/** AXI DAC Get DDS Phase */
int32_t axi_dac_dds_get_phase(struct axi_dac* dac, uint32_t chan, uint32_t* phase);
/** AXI DAC Set DDS Scale */
int32_t axi_dac_dds_set_scale(struct axi_dac* dac, uint32_t chan, int32_t scale_micro_units);
/** AXI DAC Get DDS Phase */
int32_t axi_dac_dds_get_scale(struct axi_dac* dac, uint32_t chan, int32_t* scale_micro_units);
/** AXI DAC Set Buffer */
int32_t axi_dac_set_buff(struct axi_dac* dac, uint32_t address, uint16_t* buff, uint32_t buff_size);
/** AXI DAC Set Sine Lookup Table */
uint32_t axi_dac_set_sine_lut(struct axi_dac* dac, uint32_t address);
/** Get the scale calibration values for AXI DAC channel */
int32_t axi_dac_dds_get_calib_scale(struct axi_dac* dac, uint32_t chan, int32_t* val, int32_t* val2);
/** Get the phase calibration values for AXI DAC channel */
int32_t axi_dac_dds_get_calib_phase(struct axi_dac* dac, uint32_t chan, int32_t* val, int32_t* val2);
/** Calibrate scale for specific AXI DAC channel */
int32_t axi_dac_dds_set_calib_scale(struct axi_dac* dac, uint32_t chan, int32_t val, int32_t val2);
/** Calibrate phase for specific AXI DAC channel */
int32_t axi_dac_dds_set_calib_phase(struct axi_dac* dac, uint32_t chan, int32_t val, int32_t val2);
/** AXI DAC Load Custom Data */
int32_t axi_dac_load_custom_data(struct axi_dac* dac, const uint32_t* custom_data_iq, uint32_t custom_tx_count, uint32_t address);
/** Setup the AXI DAC Data */
int32_t axi_dac_data_setup(struct axi_dac* dac);

#endif // __AXI_DAC_CORE_H__
