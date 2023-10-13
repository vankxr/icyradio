#ifndef __LT7182S_H__
#define __LT7182S_H__

#include <sam.h>
#include <math.h>
#include "utils.h"
#include "systick.h"
#include "sercom.h"

#define LT7182S_I2C_ADDR 0x40

#define LT7182S_OPERATION_TURN_OFF_IMMED    0x00
#define LT7182S_OPERATION_ON                0x80
#define LT7182S_OPERATION_MARGIN_LOW        0x98
#define LT7182S_OPERATION_MARGIN_HIGH       0xA8
#define LT7182S_OPERATION_SEQUENCE_OFF      0x40

uint8_t lt7182s_init();

uint8_t lt7182s_read_mfr_id(char *pszBuffer, uint8_t ubBufferMaxSize);
uint8_t lt7182s_read_mfr_model(char *pszBuffer, uint8_t ubBufferMaxSize);
uint8_t lt7182s_read_mfr_revision(uint8_t *pubBuffer, uint8_t ubBufferMaxSize);
uint8_t lt7182s_read_mfr_serial(uint8_t *pubBuffer, uint8_t ubBufferMaxSize);
uint16_t lt7182s_read_mfr_special_id();

uint8_t lt7182s_get_status_byte(uint8_t ubChannel);
uint8_t lt7182s_clear_status_byte(uint8_t ubChannel, uint8_t ubMask);
uint16_t lt7182s_get_status_word(uint8_t ubChannel);
uint8_t lt7182s_clear_status_word(uint8_t ubChannel, uint16_t usMask);
uint8_t lt7182s_get_status_vout(uint8_t ubChannel);
uint8_t lt7182s_clear_status_vout(uint8_t ubChannel, uint8_t ubMask);
uint8_t lt7182s_get_status_iout(uint8_t ubChannel);
uint8_t lt7182s_clear_status_iout(uint8_t ubChannel, uint8_t ubMask);
uint8_t lt7182s_get_status_input(uint8_t ubChannel);
uint8_t lt7182s_clear_status_input(uint8_t ubChannel, uint8_t ubMask);
uint8_t lt7182s_get_status_temperature();
uint8_t lt7182s_clear_status_temperature(uint8_t ubMask);
uint8_t lt7182s_get_status_cml();
uint8_t lt7182s_clear_status_cml(uint8_t ubMask);
uint8_t lt7182s_get_status_mfr_specific(uint8_t ubChannel);
uint8_t lt7182s_clear_status_mfr_specific(uint8_t ubChannel, uint8_t ubMask);
uint8_t lt7182s_get_status_mfr_common();
uint16_t lt7182s_get_status_mfr_pads();
uint8_t lt7182s_get_status_mfr_pin_config();

uint8_t lt7182s_cleak_faults();
uint8_t lt7182s_cleak_peaks();

uint8_t lt7182s_get_state(uint8_t ubChannel);
uint8_t lt7182s_get_operation(uint8_t ubChannel);
uint8_t lt7182s_set_operation(uint8_t ubChannel, uint8_t ubOperation);
uint8_t lt7182s_get_on_off_config(uint8_t ubChannel);
uint8_t lt7182s_set_on_off_config(uint8_t ubChannel, uint8_t ubConfig);
uint16_t lt7182s_get_pwm_config(uint8_t ubChannel);
uint8_t lt7182s_set_pwm_config(uint8_t ubChannel, uint16_t usConfig);
float lt7182s_get_pwm_phase(uint8_t ubChannel);
uint8_t lt7182s_set_pwm_phase(uint8_t ubChannel, float fPhase);

float l17182s_pwm_config_parse_gmea(uint16_t usPWMConfig); // uS
float l17182s_pwm_config_parse_pos_ilim(uint16_t usPWMConfig); // A
float l17182s_pwm_config_parse_neg_ilim(uint16_t usPWMConfig); // A
float l17182s_pwm_config_parse_cith(uint16_t usPWMConfig); // pF
float l17182s_pwm_config_parse_rith(uint16_t usPWMConfig); // kOhm
uint8_t l17182s_pwm_config_parse_pulse_skipping(uint16_t usPWMConfig);
uint8_t l17182s_pwm_config_parse_fcm_at_toff(uint16_t usPWMConfig);
uint8_t l17182s_pwm_config_parse_low_vout_mode(uint16_t usPWMConfig);

float lt7182s_read_vin(uint8_t ubChannel);
float lt7182s_read_vin_peak(uint8_t ubChannel);
float lt7182s_get_vin_on(uint8_t ubChannel);
uint8_t lt7182s_set_vin_on(uint8_t ubChannel, float fVoltage);
float lt7182s_get_vin_off(uint8_t ubChannel);
uint8_t lt7182s_set_vin_off(uint8_t ubChannel, float fVoltage);
float lt7182s_get_vin_uv_warn(uint8_t ubChannel);
uint8_t lt7182s_set_vin_uv_warn(uint8_t ubChannel, float fVoltage);
float lt7182s_read_iin(uint8_t ubChannel);
float lt7182s_get_iin_oc_warn(uint8_t ubChannel);
uint8_t lt7182s_set_iin_oc_warn(uint8_t ubChannel, float fCurrent);
float lt7182s_read_vout(uint8_t ubChannel);
float lt7182s_read_vout_peak(uint8_t ubChannel);
float lt7182s_get_vout(uint8_t ubChannel);
uint8_t lt7182s_set_vout(uint8_t ubChannel, float fVoltage);
float lt7182s_get_vout_max(uint8_t ubChannel);
uint8_t lt7182s_set_vout_max(uint8_t ubChannel, float fVoltage);
float lt7182s_get_vout_margin_high(uint8_t ubChannel);
uint8_t lt7182s_set_vout_margin_high(uint8_t ubChannel, float fVoltage);
float lt7182s_get_vout_margin_low(uint8_t ubChannel);
uint8_t lt7182s_set_vout_margin_low(uint8_t ubChannel, float fVoltage);
float lt7182s_get_vout_transition_rate(uint8_t ubChannel);
uint8_t lt7182s_set_vout_transition_rate(uint8_t ubChannel, float fRate);
float lt7182s_get_vout_ov_fault(uint8_t ubChannel);
uint8_t lt7182s_set_vout_ov_fault(uint8_t ubChannel, float fVoltage);
float lt7182s_get_vout_ov_warn(uint8_t ubChannel);
uint8_t lt7182s_set_vout_ov_warn(uint8_t ubChannel, float fVoltage);
float lt7182s_get_vout_uv_fault(uint8_t ubChannel);
uint8_t lt7182s_set_vout_uv_fault(uint8_t ubChannel, float fVoltage);
float lt7182s_get_vout_uv_warn(uint8_t ubChannel);
uint8_t lt7182s_set_vout_uv_warn(uint8_t ubChannel, float fVoltage);
float lt7182s_read_iout(uint8_t ubChannel);
float lt7182s_read_iout_peak(uint8_t ubChannel);
float lt7182s_get_iout_oc_warn(uint8_t ubChannel);
uint8_t lt7182s_set_iout_oc_warn(uint8_t ubChannel, float fCurrent);
float lt7182s_read_freq(uint8_t ubChannel);
float lt7182s_read_pout(uint8_t ubChannel);
float lt7182s_read_ith(uint8_t ubChannel);

float lt7182s_read_extvcc();
float lt7182s_read_temperature();
float lt7182s_read_temperature_peak();
float lt7182s_get_ot_fault();
uint8_t lt7182s_set_ot_fault(float fTemperature);
float lt7182s_get_ot_warn();
uint8_t lt7182s_set_ot_warn(float fTemperature);
float lt7182s_get_freq();
uint8_t lt7182s_set_freq(float fFrequency);

#endif  // __LT7182S_H__