#ifndef __AD9361_API_H__
#define __AD9361_API_H__

#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>
#include <unistd.h>
#include "ad9361_util.h"
#include "axi_ad9361.h"
#include "ad9361.h"
#include "debug_macros.h"

typedef struct
{
    /* Device selection */
    enum ad9361_dev_id dev_sel;
    /* Reference Clock */
    uint32_t    reference_clk_rate;
    /* Base Configuration */
    uint8_t     two_rx_two_tx_mode_enable;
    uint8_t     one_rx_one_tx_mode_use_rx_num;
    uint8_t     one_rx_one_tx_mode_use_tx_num;
    uint8_t     frequency_division_duplex_mode_enable;
    uint8_t     frequency_division_duplex_independent_mode_enable;
    uint8_t     tdd_use_dual_synth_mode_enable;
    uint8_t     tdd_skip_vco_cal_enable;
    uint32_t    tx_fastlock_delay_ns;
    uint32_t    rx_fastlock_delay_ns;
    uint8_t     rx_fastlock_pincontrol_enable;
    uint8_t     tx_fastlock_pincontrol_enable;
    uint8_t     external_rx_lo_enable;
    uint8_t     external_tx_lo_enable;
    uint8_t     dc_offset_tracking_update_event_mask;
    uint8_t     dc_offset_attenuation_high_range;
    uint8_t     dc_offset_attenuation_low_range;
    uint8_t     dc_offset_count_high_range;
    uint8_t     dc_offset_count_low_range;
    uint8_t     split_gain_table_mode_enable;
    uint32_t    trx_synthesizer_target_fref_overwrite_hz;
    uint8_t     qec_tracking_slow_mode_enable;
    /* ENSM Control */
    uint8_t     ensm_enable_pin_pulse_mode_enable;
    uint8_t     ensm_enable_txnrx_control_enable;
    /* LO Control */
    uint64_t    rx_synthesizer_frequency_hz;
    uint64_t    tx_synthesizer_frequency_hz;
    uint8_t     tx_lo_powerdown_managed_enable;
    /* Rate & BW Control */
    uint32_t    rx_path_clock_frequencies[6];
    uint32_t    tx_path_clock_frequencies[6];
    uint32_t    rf_rx_bandwidth_hz;
    uint32_t    rf_tx_bandwidth_hz;
    /* RF Port Control */
    uint32_t    rx_rf_port_input_select;
    uint32_t    tx_rf_port_input_select;
    /* TX Attenuation Control */
    int32_t     tx_attenuation_mdB;
    uint8_t     update_tx_gain_in_alert_enable;
    /* Reference Clock Control */
    uint8_t     xo_disable_use_ext_refclk_enable;
    uint32_t    dcxo_coarse_and_fine_tune[2];
    uint32_t    clk_output_mode_select;
    /* Gain Control */
    uint8_t     gc_rx1_mode;
    uint8_t     gc_rx2_mode;
    uint8_t     gc_adc_large_overload_thresh;
    uint8_t     gc_adc_ovr_sample_size;
    uint8_t     gc_adc_small_overload_thresh;
    uint16_t    gc_dec_pow_measurement_duration;
    uint8_t     gc_dig_gain_enable;
    uint16_t    gc_lmt_overload_high_thresh;
    uint16_t    gc_lmt_overload_low_thresh;
    uint8_t     gc_low_power_thresh;
    uint8_t     gc_max_dig_gain;
    uint8_t     gc_use_rx_fir_out_for_dec_pwr_meas_enable;
    /* Gain MGC Control */
    uint8_t     mgc_dec_gain_step;
    uint8_t     mgc_inc_gain_step;
    uint8_t     mgc_rx1_ctrl_inp_enable;
    uint8_t     mgc_rx2_ctrl_inp_enable;
    uint8_t     mgc_split_table_ctrl_inp_gain_mode;
    /* Gain AGC Control */
    uint8_t     agc_adc_large_overload_exceed_counter;
    uint8_t     agc_adc_large_overload_inc_steps;
    uint8_t     agc_adc_lmt_small_overload_prevent_gain_inc_enable;
    uint8_t     agc_adc_small_overload_exceed_counter;
    uint8_t     agc_dig_gain_step_size;
    uint8_t     agc_dig_saturation_exceed_counter;
    uint32_t    agc_gain_update_interval_us;
    uint8_t     agc_immed_gain_change_if_large_adc_overload_enable;
    uint8_t     agc_immed_gain_change_if_large_lmt_overload_enable;
    uint8_t     agc_inner_thresh_high;
    uint8_t     agc_inner_thresh_high_dec_steps;
    uint8_t     agc_inner_thresh_low;
    uint8_t     agc_inner_thresh_low_inc_steps;
    uint8_t     agc_lmt_overload_large_exceed_counter;
    uint8_t     agc_lmt_overload_large_inc_steps;
    uint8_t     agc_lmt_overload_small_exceed_counter;
    uint8_t     agc_outer_thresh_high;
    uint8_t     agc_outer_thresh_high_dec_steps;
    uint8_t     agc_outer_thresh_low;
    uint8_t     agc_outer_thresh_low_inc_steps;
    uint32_t    agc_attack_delay_extra_margin_us;
    uint8_t     agc_sync_for_gain_counter_enable;
    /* Fast AGC */
    uint32_t    fagc_dec_pow_measuremnt_duration;
    uint32_t    fagc_state_wait_time_ns;
    /* Fast AGC - Low Power */
    uint8_t     fagc_allow_agc_gain_increase;
    uint32_t    fagc_lp_thresh_increment_time;
    uint32_t    fagc_lp_thresh_increment_steps;
    /* Fast AGC - Lock Level (Lock Level is set via slow AGC inner high threshold) */
    uint8_t     fagc_lock_level_lmt_gain_increase_en;
    uint32_t    fagc_lock_level_gain_increase_upper_limit;
    /* Fast AGC - Peak Detectors and Final Settling */
    uint32_t    fagc_lpf_final_settling_steps;
    uint32_t    fagc_lmt_final_settling_steps;
    uint32_t    fagc_final_overrange_count;
    /* Fast AGC - Final Power Test */
    uint8_t     fagc_gain_increase_after_gain_lock_en;
    /* Fast AGC - Unlocking the Gain */
    uint32_t    fagc_gain_index_type_after_exit_rx_mode;
    uint8_t     fagc_use_last_lock_level_for_set_gain_en;
    uint8_t     fagc_rst_gla_stronger_sig_thresh_exceeded_en;
    uint32_t    fagc_optimized_gain_offset;
    uint32_t    fagc_rst_gla_stronger_sig_thresh_above_ll;
    uint8_t     fagc_rst_gla_engergy_lost_sig_thresh_exceeded_en;
    uint8_t     fagc_rst_gla_engergy_lost_goto_optim_gain_en;
    uint32_t    fagc_rst_gla_engergy_lost_sig_thresh_below_ll;
    uint32_t    fagc_energy_lost_stronger_sig_gain_lock_exit_cnt;
    uint8_t     fagc_rst_gla_large_adc_overload_en;
    uint8_t     fagc_rst_gla_large_lmt_overload_en;
    uint8_t     fagc_rst_gla_en_agc_pulled_high_en;
    uint32_t    fagc_rst_gla_if_en_agc_pulled_high_mode;
    uint32_t    fagc_power_measurement_duration_in_state5;
    uint32_t    fagc_large_overload_inc_steps;
    /* RSSI Control */
    uint32_t    rssi_delay;
    uint32_t    rssi_duration;
    uint8_t     rssi_restart_mode;
    uint8_t     rssi_unit_is_rx_samples_enable;
    uint32_t    rssi_wait;
    /* Aux ADC Control */
    uint32_t    aux_adc_decimation;
    uint32_t    aux_adc_rate;
    /* AuxDAC Control */
    uint8_t     aux_dac_manual_mode_enable;
    uint32_t    aux_dac1_default_value_mV;
    uint8_t     aux_dac1_active_in_rx_enable;
    uint8_t     aux_dac1_active_in_tx_enable;
    uint8_t     aux_dac1_active_in_alert_enable;
    uint32_t    aux_dac1_rx_delay_us;
    uint32_t    aux_dac1_tx_delay_us;
    uint32_t    aux_dac2_default_value_mV;
    uint8_t     aux_dac2_active_in_rx_enable;
    uint8_t     aux_dac2_active_in_tx_enable;
    uint8_t     aux_dac2_active_in_alert_enable;
    uint32_t    aux_dac2_rx_delay_us;
    uint32_t    aux_dac2_tx_delay_us;
    /* Temperature Sensor Control */
    uint32_t    temp_sense_decimation;
    uint16_t    temp_sense_measurement_interval_ms;
    int8_t      temp_sense_offset_signed;
    uint8_t     temp_sense_periodic_measurement_enable;
    /* Control Out Setup */
    uint8_t     ctrl_outs_enable_mask;
    uint8_t     ctrl_outs_index;
    /* External LNA Control */
    uint32_t    elna_settling_delay_ns;
    uint32_t    elna_gain_mdB;
    uint32_t    elna_bypass_loss_mdB;
    uint8_t     elna_rx1_gpo0_control_enable;
    uint8_t     elna_rx2_gpo1_control_enable;
    uint8_t     elna_gaintable_all_index_enable;
    /* Digital Interface Control */
    uint8_t     digital_interface_tune_skip_mode;
    uint8_t     digital_interface_tune_fir_disable;
    uint8_t     pp_tx_swap_enable;
    uint8_t     pp_rx_swap_enable;
    uint8_t     tx_channel_swap_enable;
    uint8_t     rx_channel_swap_enable;
    uint8_t     rx_frame_pulse_mode_enable;
    uint8_t     two_t_two_r_timing_enable;
    uint8_t     invert_data_bus_enable;
    uint8_t     invert_data_clk_enable;
    uint8_t     fdd_alt_word_order_enable;
    uint8_t     invert_rx_frame_enable;
    uint8_t     fdd_rx_rate_2tx_enable;
    uint8_t     swap_ports_enable;
    uint8_t     single_data_rate_enable;
    uint8_t     lvds_mode_enable;
    uint8_t     half_duplex_mode_enable;
    uint8_t     single_port_mode_enable;
    uint8_t     full_port_enable;
    uint8_t     full_duplex_swap_bits_enable;
    uint32_t    delay_rx_data;
    uint32_t    rx_data_clock_delay;
    uint32_t    rx_data_delay;
    uint32_t    tx_fb_clock_delay;
    uint32_t    tx_data_delay;
    uint32_t    lvds_bias_mV;
    uint8_t     lvds_rx_onchip_termination_enable;
    uint8_t     rx1rx2_phase_inversion_en;
    uint8_t     lvds_invert1_control;
    uint8_t     lvds_invert2_control;
    /* GPO Control */
    uint8_t     gpo_manual_mode_enable;
    uint32_t    gpo_manual_mode_enable_mask;
    uint8_t     gpo0_inactive_state_high_enable;
    uint8_t     gpo1_inactive_state_high_enable;
    uint8_t     gpo2_inactive_state_high_enable;
    uint8_t     gpo3_inactive_state_high_enable;
    uint8_t     gpo0_slave_rx_enable;
    uint8_t     gpo0_slave_tx_enable;
    uint8_t     gpo1_slave_rx_enable;
    uint8_t     gpo1_slave_tx_enable;
    uint8_t     gpo2_slave_rx_enable;
    uint8_t     gpo2_slave_tx_enable;
    uint8_t     gpo3_slave_rx_enable;
    uint8_t     gpo3_slave_tx_enable;
    uint8_t     gpo0_rx_delay_us;
    uint8_t     gpo0_tx_delay_us;
    uint8_t     gpo1_rx_delay_us;
    uint8_t     gpo1_tx_delay_us;
    uint8_t     gpo2_rx_delay_us;
    uint8_t     gpo2_tx_delay_us;
    uint8_t     gpo3_rx_delay_us;
    uint8_t     gpo3_tx_delay_us;
    /* Tx Monitor Control */
    uint32_t    low_high_gain_threshold_mdB;
    uint32_t    low_gain_dB;
    uint32_t    high_gain_dB;
    uint8_t     tx_mon_track_en;
    uint8_t     one_shot_mode_en;
    uint32_t    tx_mon_delay;
    uint32_t    tx_mon_duration;
    uint32_t    tx1_mon_front_end_gain;
    uint32_t    tx2_mon_front_end_gain;
    uint32_t    tx1_mon_lo_cm;
    uint32_t    tx2_mon_lo_cm;

    /* External LO clocks */
    uint32_t(* ad9361_rfpll_ext_recalc_rate)(struct ad9361_clk_scale* clk_priv);
    int32_t(* ad9361_rfpll_ext_round_rate)(struct ad9361_clk_scale* clk_priv, uint32_t rate);
    int32_t(* ad9361_rfpll_ext_set_rate)(struct ad9361_clk_scale* clk_priv, uint32_t rate);
} AD9361_InitParam;

typedef struct
{
    uint32_t    rx;                /* 1, 2, 3(both) */
    int32_t     rx_gain;           /* -12, -6, 0, 6 */
    uint32_t    rx_dec;            /* 1, 2, 4 */
    int16_t     rx_coef[128];
    uint8_t     rx_coef_size;
    uint32_t    rx_path_clks[6];
    uint32_t    rx_bandwidth;
} AD9361_RXFIRConfig;

typedef struct
{
    uint32_t    tx;                /* 1, 2, 3(both) */
    int32_t     tx_gain;           /* -6, 0 */
    uint32_t    tx_int;            /* 1, 2, 4 */
    int16_t     tx_coef[128];
    uint8_t     tx_coef_size;
    uint32_t    tx_path_clks[6];
    uint32_t    tx_bandwidth;
} AD9361_TXFIRConfig;

enum ad9361_ensm_mode
{
    ENSM_MODE_TX,
    ENSM_MODE_RX,
    ENSM_MODE_ALERT,
    ENSM_MODE_FDD,
    ENSM_MODE_WAIT,
    ENSM_MODE_SLEEP,
    ENSM_MODE_PINCTRL,
    ENSM_MODE_PINCTRL_FDD_INDEP,
};

#define ENABLE         1
#define DISABLE        0

#define RX1            0
#define RX2            1

#define TX1            0
#define TX2            1

#define A_BALANCED     0
#define B_BALANCED     1
#define C_BALANCED     2
#define A_N            3
#define A_P            4
#define B_N            5
#define B_P            6
#define C_N            7
#define C_P            8
#define TX_MON1        9
#define TX_MON2        10
#define TX_MON1_2      11

#define TXA            0
#define TXB            1

#define MODE_1x1       1
#define MODE_2x2       2

#define HIGHEST_OSR    0
#define NOMINAL_OSR    1

#define INT_LO         0
#define EXT_LO         1

#define ON             0
#define OFF            1

/* Initialize the AD9361 part. */
int32_t ad9361_init(AD9361_InitParam* init_param);
/* Free the allocated resources. */
int32_t ad9361_remove();
/* Set the Enable State Machine (ENSM) mode. */
int32_t ad9361_set_en_state_machine_mode(uint32_t mode);
/* Get the Enable State Machine (ENSM) mode. */
int32_t ad9361_get_en_state_machine_mode(uint32_t* mode);
/* Set the receive RF gain for the selected channel. */
int32_t ad9361_set_rx_rf_gain(uint8_t ch, int32_t gain_db);
/* Get current receive RF gain for the selected channel. */
int32_t ad9361_get_rx_rf_gain(uint8_t ch, int32_t* gain_db);
/* Set the RX RF bandwidth. */
int32_t ad9361_set_rx_rf_bandwidth(uint32_t bandwidth_hz);
/* Get the RX RF bandwidth. */
int32_t ad9361_get_rx_rf_bandwidth(uint32_t* bandwidth_hz);
/* Set the RX sampling frequency. */
int32_t ad9361_set_rx_sampling_freq(uint32_t sampling_freq_hz);
/* Get current RX sampling frequency. */
int32_t ad9361_get_rx_sampling_freq(uint32_t* sampling_freq_hz);
/* Set the RX LO frequency. */
int32_t ad9361_set_rx_lo_freq(uint64_t lo_freq_hz);
/* Get current RX LO frequency. */
int32_t ad9361_get_rx_lo_freq(uint64_t* lo_freq_hz);
/* Switch between internal and external LO. */
int32_t ad9361_set_rx_lo_int_ext(uint8_t int_ext);
/* Get the RSSI for the selected channel. */
int32_t ad9361_get_rx_rssi(uint8_t ch, struct ad9361_rf_rssi* rssi);
/* Set the gain control mode for the selected channel. */
int32_t ad9361_set_rx_gain_control_mode(uint8_t ch, uint8_t gc_mode);
/* Get the gain control mode for the selected channel. */
int32_t ad9361_get_rx_gain_control_mode(uint8_t ch, uint8_t* gc_mode);
/* Set the RX FIR filter configuration. */
int32_t ad9361_set_rx_fir_config(AD9361_RXFIRConfig fir_cfg);
/* Get the RX FIR filter configuration. */
int32_t ad9361_get_rx_fir_config(uint8_t rx_ch, AD9361_RXFIRConfig* fir_cfg);
/* Enable/disable the RX FIR filter. */
int32_t ad9361_set_rx_fir_en_dis(uint8_t en_dis);
/* Get the status of the RX FIR filter. */
int32_t ad9361_get_rx_fir_en_dis(uint8_t* en_dis);
/* Enable/disable the RX RFDC Tracking. */
int32_t ad9361_set_rx_rfdc_track_en_dis(uint8_t en_dis);
/* Get the status of the RX RFDC Tracking. */
int32_t ad9361_get_rx_rfdc_track_en_dis(uint8_t* en_dis);
/* Enable/disable the RX BasebandDC Tracking. */
int32_t ad9361_set_rx_bbdc_track_en_dis(uint8_t en_dis);
/* Get the status of the RX BasebandDC Tracking. */
int32_t ad9361_get_rx_bbdc_track_en_dis(uint8_t* en_dis);
/* Enable/disable the RX Quadrature Tracking. */
int32_t ad9361_set_rx_quad_track_en_dis(uint8_t en_dis);
/* Get the status of the RX Quadrature Tracking. */
int32_t ad9361_get_rx_quad_track_en_dis(uint8_t* en_dis);
/* Set the RX RF input port. */
int32_t ad9361_set_rx_rf_port_input(uint32_t mode);
/* Get the selected RX RF input port. */
int32_t ad9361_get_rx_rf_port_input(uint32_t* mode);
/* Store RX fastlock profile. */
int32_t ad9361_rx_fastlock_store(uint32_t profile);
/* Recall RX fastlock profile. */
int32_t ad9361_rx_fastlock_recall(uint32_t profile);
/* Load RX fastlock profile. */
int32_t ad9361_rx_fastlock_load(uint32_t profile, uint8_t* values);
/* Save RX fastlock profile. */
int32_t ad9361_rx_fastlock_save(uint32_t profile, uint8_t* values);
/* Power down the RX Local Oscillator. */
int32_t ad9361_rx_lo_powerdown(uint8_t option);
/* Get the RX Local Oscillator power status. */
int32_t ad9361_get_rx_lo_power(uint8_t* option);
/* Set the transmit attenuation for the selected channel. */
int32_t ad9361_set_tx_attenuation(uint8_t ch, uint32_t attenuation_mdb);
/* Get current transmit attenuation for the selected channel. */
int32_t ad9361_get_tx_attenuation(uint8_t ch, uint32_t* attenuation_mdb);
/* Set the TX RF bandwidth. */
int32_t ad9361_set_tx_rf_bandwidth(uint32_t bandwidth_hz);
/* Get the TX RF bandwidth. */
int32_t ad9361_get_tx_rf_bandwidth(uint32_t* bandwidth_hz);
/* Set the TX sampling frequency. */
int32_t ad9361_set_tx_sampling_freq(uint32_t sampling_freq_hz);
/* Get current TX sampling frequency. */
int32_t ad9361_get_tx_sampling_freq(uint32_t* sampling_freq_hz);
/* Set the TX LO frequency. */
int32_t ad9361_set_tx_lo_freq(uint64_t lo_freq_hz);
/* Get current TX LO frequency. */
int32_t ad9361_get_tx_lo_freq(uint64_t* lo_freq_hz);
/* Switch between internal and external LO. */
int32_t ad9361_set_tx_lo_int_ext(uint8_t int_ext);
/* Set the TX FIR filter configuration. */
int32_t ad9361_set_tx_fir_config(AD9361_TXFIRConfig fir_cfg);
/* Get the TX FIR filter configuration. */
int32_t ad9361_get_tx_fir_config(uint8_t tx_ch, AD9361_TXFIRConfig* fir_cfg);
/* Enable/disable the TX FIR filter. */
int32_t ad9361_set_tx_fir_en_dis(uint8_t en_dis);
/* Get the status of the TX FIR filter. */
int32_t ad9361_get_tx_fir_en_dis(uint8_t* en_dis);
/* Get the TX RSSI for the selected channel. */
int32_t ad9361_get_tx_rssi(uint8_t ch, uint32_t* rssi_db_x_1000);
/* Set the TX RF output port. */
int32_t ad9361_set_tx_rf_port_output(uint32_t mode);
/* Get the selected TX RF output port. */
int32_t ad9361_get_tx_rf_port_output(uint32_t* mode);
/* Enable/disable the auto calibration. */
int32_t ad9361_set_tx_auto_cal_en_dis(uint8_t en_dis);
/* Get the status of the auto calibration flag. */
int32_t ad9361_get_tx_auto_cal_en_dis(uint8_t* en_dis);
/* Store TX fastlock profile. */
int32_t ad9361_tx_fastlock_store(uint32_t profile);
/* Recall TX fastlock profile. */
int32_t ad9361_tx_fastlock_recall(uint32_t profile);
/* Load TX fastlock profile. */
int32_t ad9361_tx_fastlock_load(uint32_t profile, uint8_t* values);
/* Save TX fastlock profile. */
int32_t ad9361_tx_fastlock_save(uint32_t profile, uint8_t* values);
/* Power down the TX Local Oscillator. */
int32_t ad9361_tx_lo_powerdown(uint8_t option);
/* Get the TX Local Oscillator power status. */
int32_t ad9361_get_tx_lo_power(uint8_t* option);
/* Set the RX and TX path rates. */
int32_t ad9361_set_trx_path_clks(uint32_t* rx_path_clks, uint32_t* tx_path_clks);
/* Get the RX and TX path rates. */
int32_t ad9361_get_trx_path_clks(uint32_t* rx_path_clks, uint32_t* tx_path_clks);
/* Set the number of channels mode. */
int32_t ad9361_set_no_ch_mode(uint8_t no_ch_mode);
/* Enable/disable the TRX FIR filters. */
int32_t ad9361_set_trx_fir_en_dis(uint8_t en_dis);
/* Set the OSR rate governor. */
int32_t ad9361_set_trx_rate_gov(uint32_t rate_gov);
/* Get the OSR rate governor. */
int32_t ad9361_get_trx_rate_gov(uint32_t* rate_gov);
/* Perform the selected calibration. */
int32_t ad9361_do_calib(uint32_t cal, int32_t arg);
/* Load and enable TRX FIR filters configurations. */
int32_t ad9361_trx_load_enable_fir(AD9361_RXFIRConfig rx_fir_cfg, AD9361_TXFIRConfig tx_fir_cfg);
/* Do DCXO coarse tuning. */
int32_t ad9361_do_dcxo_tune_coarse(uint32_t coarse);
/* Do DCXO fine tuning. */
int32_t ad9361_do_dcxo_tune_fine(uint32_t fine);
/* Get the temperature. */
int32_t ad9361_get_temperature(int32_t* temp);

#endif // __AD9361_API_H__
