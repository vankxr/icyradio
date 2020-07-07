#ifndef __ADF4351_H__
#define __ADF4351_H__

#include <em_device.h>
#include <stdlib.h>
#include "systick.h"
#include "atomic.h"
#include "gpio.h"
#include "usart.h"

// REGISTER 0

// REGISTER 1
#define ADF4351_R1_PHASE_ADJ_ENABLED    0x10000000
#define ADF4351_R1_PHASE_ADJ_DISABLED   0x00000000
#define ADF4351_R1_PRESCALER_4_5        0x00000000
#define ADF4351_R1_PRESCALER_8_9        0x08000000

// REGISTER 2
#define ADF4351_R2_NOISE_MODE_LOW_NOISE 0x00000000
#define ADF4351_R2_NOISE_MODE_LOW_SPUR  0x60000000
#define ADF4351_R2_MUXOUT_HIGH_Z        0x00000000
#define ADF4351_R2_MUXOUT_DVDD          0x04000000
#define ADF4351_R2_MUXOUT_DGND          0x08000000
#define ADF4351_R2_MUXOUT_R_COUNTER     0x0C000000
#define ADF4351_R2_MUXOUT_N_DIVIDER     0x10000000
#define ADF4351_R2_MUXOUT_ANA_LOCK      0x14000000
#define ADF4351_R2_MUXOUT_DIG_LOCK      0x18000000
#define ADF4351_R2_REF_DOUBLE_ENABLED   0x02000000
#define ADF4351_R2_REF_DOUBLE_DISABLED  0x00000000
#define ADF4351_R2_REF_DIV2_ENABLED     0x01000000
#define ADF4351_R2_REF_DIV2_DISABLED    0x00000000
#define ADF4351_R2_DBF_R4_ENABLED       0x00002000
#define ADF4351_R2_DBF_R4_DISABLED      0x00000000
#define ADF4351_R2_LDF_INT              0x00000100
#define ADF4351_R2_LDF_FRAC             0x00000000
#define ADF4351_R2_LDP_6_NS             0x00000080
#define ADF4351_R2_LDP_10_NS            0x00000000
#define ADF4351_R2_PD_POSITIVE          0x00000040
#define ADF4351_R2_PD_NEGATIVE          0x00000000
#define ADF4351_R2_POWER_DOWN           0x00000020
#define ADF4351_R2_POWER_UP             0x00000000
#define ADF4351_R2_CP_TRISTATE_ENABLED  0x00000010
#define ADF4351_R2_CP_TRISTATE_DISABLED 0x00000000
#define ADF4351_R2_CNT_RESET_ENABLED    0x00000008
#define ADF4351_R2_CNT_RESET_DISABLED   0x00000000

// REGISTER 3
#define ADF4351_R3_BAND_SEL_CLK_HIGH    0x00800000
#define ADF4351_R3_BAND_SEL_CLK_LOW     0x00000000
#define ADF4351_R3_BACKLASH_INT         0x00400000
#define ADF4351_R3_BACKLASH_FRAC        0x00000000
#define ADF4351_R3_CHG_CANCEL_ENABLED   0x00200000
#define ADF4351_R3_CHG_CANCEL_DISABLED  0x00000000
#define ADF4351_R3_CSR_ENABLED          0x00020000
#define ADF4351_R3_CSR_DISABLED         0x00000000
#define ADF4351_R3_CLK_DIV_OFF          0x00000000
#define ADF4351_R3_CLK_DIV_FAST_LOCK    0x00004000
#define ADF4351_R3_CLK_DIV_RESYNC       0x00008000

// REGISTER 4
#define ADF4351_R4_FEEDBACK_FUNDAMENTAL 0x00800000
#define ADF4351_R4_FEEDBACK_DIVIDED     0x00000000
#define ADF4351_R4_VCO_POWER_DOWN       0x00000800
#define ADF4351_R4_VCO_POWER_UP         0x00000000
#define ADF4351_R4_UNLOCK_MUTED         0x00000400
#define ADF4351_R4_UNLOCK_UNMUTED       0x00000000
#define ADF4351_R4_AUX_FUNDAMENTAL      0x00000200
#define ADF4351_R4_AUX_DIVIDED          0x00000000
#define ADF4351_R4_AUX_ENABLED          0x00000100
#define ADF4351_R4_AUX_DISABLED         0x00000000
#define ADF4351_R4_MAIN_ENABLED         0x00000020
#define ADF4351_R4_MAIN_DISABLED        0x00000000

// REGISTER 5
#define ADF4351_R5_LD_LOW               0x00000000
#define ADF4351_R5_LD_DIG_LOCK_DETECT   0x00400000
#define ADF4351_R5_LD_HIGH              0x00C00000

typedef struct adf4351_mixed_number_t adf4351_mixed_number_t;

struct adf4351_mixed_number_t
{
    uint32_t ulInt; // Integer part
    uint32_t ulNum; // Fractional part numerator
    uint32_t ulDen; // Fractional part denominator
};

extern uint32_t ADF4351_REF_FREQ;
extern uint32_t ADF4351_PFD_FREQ;
extern uint64_t ADF4351_FREQ;

uint8_t adf4351_init();

uint8_t adf4351_pfd_config(uint32_t ulFrequency, uint8_t ubRefDiv2, uint8_t ubRefDouble, uint16_t usRDivider, uint8_t ubFastBandSelect);

uint8_t adf4351_charge_pump_set_current(float fCurrent);
float adf4351_charge_pump_get_current();

uint8_t adf4351_set_frequency(uint64_t ullFrequency);

void adf4351_set_phase(float fPhase);
float adf4351_get_phase();

void adf4351_main_out_config(uint8_t ubEnable, int8_t bPower);
int8_t adf4351_main_out_get_power();
void adf4351_aux_out_config(uint8_t ubEnable, uint8_t ubDivided, int8_t bPower);
int8_t adf4351_aux_out_get_power();


#endif // __ADF4351_H__