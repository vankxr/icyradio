#include "ad9361_api.h"

extern struct ad9361_gain_table_info ad9361_adi_gt_info[];

/**
 * Initialize the AD9361 part.
 * @param ad9361_phy The AD9361 device structure.
 * @param init_param The structure that contains the AD9361 initial parameters.
 * @return 0 in case of success, negative error code otherwise.
 *
 * Note: This function will/may affect the data path.
 */
int32_t ad9361_init(AD9361_InitParam *init_param)
{
    int32_t ret = 0;
    int32_t rev = 0;

    if(g_pAD9361Phy != NULL)
        return -EBUSY;

    g_pAD9361Phy = (struct ad9361_rf_phy *)calloc(1, sizeof(*g_pAD9361Phy));

    if(!g_pAD9361Phy)
        return -ENOMEM;

    g_pAD9361Phy->clk_refin = (struct ad9361_clk *)calloc(1, sizeof(*g_pAD9361Phy->clk_refin));

    if(!g_pAD9361Phy->clk_refin)
    {
        free(g_pAD9361Phy);

        g_pAD9361Phy = NULL;

        return -ENOMEM;
    }

    g_pAD9361Phy->pdata = (struct ad9361_phy_platform_data *)calloc(1, sizeof(*g_pAD9361Phy->pdata));

    if(!g_pAD9361Phy->pdata)
    {
        free(g_pAD9361Phy->clk_refin);
        free(g_pAD9361Phy);

        g_pAD9361Phy = NULL;

        return -ENOMEM;
    }

    /* Device selection */
    g_pAD9361Phy->dev_sel = init_param->dev_sel;

    /* Reference Clock */
    g_pAD9361Phy->clk_refin->rate = init_param->reference_clk_rate;

    /* Base Configuration */
    g_pAD9361Phy->pdata->fdd = init_param->frequency_division_duplex_mode_enable;
    g_pAD9361Phy->pdata->fdd_independent_mode = init_param->frequency_division_duplex_independent_mode_enable;
    g_pAD9361Phy->pdata->rx2tx2 = init_param->two_rx_two_tx_mode_enable;
    g_pAD9361Phy->pdata->rx1tx1_mode_use_rx_num = init_param->one_rx_one_tx_mode_use_rx_num;
    g_pAD9361Phy->pdata->rx1tx1_mode_use_tx_num = init_param->one_rx_one_tx_mode_use_tx_num;
    g_pAD9361Phy->pdata->tdd_use_dual_synth = init_param->tdd_use_dual_synth_mode_enable;
    g_pAD9361Phy->pdata->tdd_skip_vco_cal = init_param->tdd_skip_vco_cal_enable;
    g_pAD9361Phy->pdata->rx_fastlock_delay_ns = init_param->rx_fastlock_delay_ns;
    g_pAD9361Phy->pdata->tx_fastlock_delay_ns = init_param->tx_fastlock_delay_ns;
    g_pAD9361Phy->pdata->trx_fastlock_pinctrl_en[0] = init_param->rx_fastlock_pincontrol_enable;
    g_pAD9361Phy->pdata->trx_fastlock_pinctrl_en[1] = init_param->tx_fastlock_pincontrol_enable;

    if(g_pAD9361Phy->dev_sel == ID_AD9363A)
    {
        g_pAD9361Phy->pdata->use_ext_rx_lo = false;
        g_pAD9361Phy->pdata->use_ext_tx_lo = false;

        DBGPRINTLN_CTX("Device is AD9363A, external LOs disabled");
    }
    else
    {
        g_pAD9361Phy->pdata->use_ext_rx_lo = init_param->external_rx_lo_enable;
        g_pAD9361Phy->pdata->use_ext_tx_lo = init_param->external_tx_lo_enable;
    }

    g_pAD9361Phy->pdata->dc_offset_update_events = init_param->dc_offset_tracking_update_event_mask;
    g_pAD9361Phy->pdata->dc_offset_attenuation_high = init_param->dc_offset_attenuation_high_range;
    g_pAD9361Phy->pdata->dc_offset_attenuation_low = init_param->dc_offset_attenuation_low_range;
    g_pAD9361Phy->pdata->rf_dc_offset_count_high = init_param->dc_offset_count_high_range;
    g_pAD9361Phy->pdata->rf_dc_offset_count_low = init_param->dc_offset_count_low_range;
    g_pAD9361Phy->pdata->split_gt = init_param->split_gain_table_mode_enable;
    g_pAD9361Phy->pdata->trx_synth_max_fref = init_param->trx_synthesizer_target_fref_overwrite_hz;
    g_pAD9361Phy->pdata->qec_tracking_slow_mode_en = init_param->qec_tracking_slow_mode_enable;

    /* ENSM Control */
    g_pAD9361Phy->pdata->ensm_pin_pulse_mode = init_param->ensm_enable_pin_pulse_mode_enable;
    g_pAD9361Phy->pdata->ensm_pin_ctrl = init_param->ensm_enable_txnrx_control_enable;

    /* LO Control */
    g_pAD9361Phy->pdata->rx_synth_freq = init_param->rx_synthesizer_frequency_hz;
    g_pAD9361Phy->pdata->tx_synth_freq = init_param->tx_synthesizer_frequency_hz;
    g_pAD9361Phy->pdata->lo_powerdown_managed_en = init_param->tx_lo_powerdown_managed_enable;

    /* Rate & BW Control */
    for(uint8_t i = 0; i < 6; i++)
        g_pAD9361Phy->pdata->rx_path_clks[i] = init_param->rx_path_clock_frequencies[i];

    for(uint8_t i = 0; i < 6; i++)
        g_pAD9361Phy->pdata->tx_path_clks[i] = init_param->tx_path_clock_frequencies[i];

    g_pAD9361Phy->pdata->rf_rx_bandwidth_Hz = init_param->rf_rx_bandwidth_hz;
    g_pAD9361Phy->pdata->rf_tx_bandwidth_Hz = init_param->rf_tx_bandwidth_hz;

    /* RF Port Control */
    g_pAD9361Phy->pdata->rf_rx_input_sel = init_param->rx_rf_port_input_select;
    g_pAD9361Phy->pdata->rf_tx_output_sel = init_param->tx_rf_port_input_select;

    /* TX Attenuation Control */
    g_pAD9361Phy->pdata->tx_atten = init_param->tx_attenuation_mdB;
    g_pAD9361Phy->pdata->update_tx_gain_via_alert = init_param->update_tx_gain_in_alert_enable;

    /* Reference Clock Control */
    if(g_pAD9361Phy->dev_sel == ID_AD9363A)
    {
        g_pAD9361Phy->pdata->use_extclk = true;

        DBGPRINTLN_CTX("Device is AD9363A, external clock forced");
    }
    else
    {
        g_pAD9361Phy->pdata->use_extclk = init_param->xo_disable_use_ext_refclk_enable;
    }

    g_pAD9361Phy->pdata->dcxo_coarse = init_param->dcxo_coarse_and_fine_tune[0];
    g_pAD9361Phy->pdata->dcxo_fine = init_param->dcxo_coarse_and_fine_tune[1];
    g_pAD9361Phy->pdata->ad9361_clkout_mode = (enum ad9361_clkout)init_param->clk_output_mode_select;

    /* Gain Control */
    g_pAD9361Phy->pdata->gain_ctrl.rx1_mode = (enum ad9361_rf_gain_ctrl_mode)init_param->gc_rx1_mode;
    g_pAD9361Phy->pdata->gain_ctrl.rx2_mode = (enum ad9361_rf_gain_ctrl_mode)init_param->gc_rx2_mode;
    g_pAD9361Phy->pdata->gain_ctrl.adc_large_overload_thresh = init_param->gc_adc_large_overload_thresh;
    g_pAD9361Phy->pdata->gain_ctrl.adc_ovr_sample_size = init_param->gc_adc_ovr_sample_size;
    g_pAD9361Phy->pdata->gain_ctrl.adc_small_overload_thresh = init_param->gc_adc_small_overload_thresh;
    g_pAD9361Phy->pdata->gain_ctrl.dec_pow_measuremnt_duration = init_param->gc_dec_pow_measurement_duration;
    g_pAD9361Phy->pdata->gain_ctrl.dig_gain_en = init_param->gc_dig_gain_enable;
    g_pAD9361Phy->pdata->gain_ctrl.lmt_overload_high_thresh = init_param->gc_lmt_overload_high_thresh;
    g_pAD9361Phy->pdata->gain_ctrl.lmt_overload_low_thresh = init_param->gc_lmt_overload_low_thresh;
    g_pAD9361Phy->pdata->gain_ctrl.low_power_thresh = init_param->gc_low_power_thresh;
    g_pAD9361Phy->pdata->gain_ctrl.max_dig_gain = init_param->gc_max_dig_gain;
    g_pAD9361Phy->pdata->gain_ctrl.use_rx_fir_out_for_dec_pwr_meas = init_param->gc_use_rx_fir_out_for_dec_pwr_meas_enable;

    /* Gain MGC Control */
    g_pAD9361Phy->pdata->gain_ctrl.mgc_dec_gain_step = init_param->mgc_dec_gain_step;
    g_pAD9361Phy->pdata->gain_ctrl.mgc_inc_gain_step = init_param->mgc_inc_gain_step;
    g_pAD9361Phy->pdata->gain_ctrl.mgc_rx1_ctrl_inp_en = init_param->mgc_rx1_ctrl_inp_enable;
    g_pAD9361Phy->pdata->gain_ctrl.mgc_rx2_ctrl_inp_en = init_param->mgc_rx2_ctrl_inp_enable;
    g_pAD9361Phy->pdata->gain_ctrl.mgc_split_table_ctrl_inp_gain_mode = init_param->mgc_split_table_ctrl_inp_gain_mode;

    /* Gain AGC Control */
    g_pAD9361Phy->pdata->gain_ctrl.adc_large_overload_exceed_counter = init_param->agc_adc_large_overload_exceed_counter;
    g_pAD9361Phy->pdata->gain_ctrl.adc_large_overload_inc_steps = init_param->agc_adc_large_overload_inc_steps;
    g_pAD9361Phy->pdata->gain_ctrl.adc_lmt_small_overload_prevent_gain_inc = init_param->agc_adc_lmt_small_overload_prevent_gain_inc_enable;
    g_pAD9361Phy->pdata->gain_ctrl.adc_small_overload_exceed_counter = init_param->agc_adc_small_overload_exceed_counter;
    g_pAD9361Phy->pdata->gain_ctrl.dig_gain_step_size = init_param->agc_dig_gain_step_size;
    g_pAD9361Phy->pdata->gain_ctrl.dig_saturation_exceed_counter = init_param->agc_dig_saturation_exceed_counter;
    g_pAD9361Phy->pdata->gain_ctrl.gain_update_interval_us = init_param->agc_gain_update_interval_us;
    g_pAD9361Phy->pdata->gain_ctrl.immed_gain_change_if_large_adc_overload = init_param->agc_immed_gain_change_if_large_adc_overload_enable;
    g_pAD9361Phy->pdata->gain_ctrl.immed_gain_change_if_large_lmt_overload = init_param->agc_immed_gain_change_if_large_lmt_overload_enable;
    g_pAD9361Phy->pdata->gain_ctrl.agc_inner_thresh_high = init_param->agc_inner_thresh_high;
    g_pAD9361Phy->pdata->gain_ctrl.agc_inner_thresh_high_dec_steps = init_param->agc_inner_thresh_high_dec_steps;
    g_pAD9361Phy->pdata->gain_ctrl.agc_inner_thresh_low = init_param->agc_inner_thresh_low;
    g_pAD9361Phy->pdata->gain_ctrl.agc_inner_thresh_low_inc_steps = init_param->agc_inner_thresh_low_inc_steps;
    g_pAD9361Phy->pdata->gain_ctrl.lmt_overload_large_exceed_counter = init_param->agc_lmt_overload_large_exceed_counter;
    g_pAD9361Phy->pdata->gain_ctrl.lmt_overload_large_inc_steps = init_param->agc_lmt_overload_large_inc_steps;
    g_pAD9361Phy->pdata->gain_ctrl.lmt_overload_small_exceed_counter = init_param->agc_lmt_overload_small_exceed_counter;
    g_pAD9361Phy->pdata->gain_ctrl.agc_outer_thresh_high = init_param->agc_outer_thresh_high;
    g_pAD9361Phy->pdata->gain_ctrl.agc_outer_thresh_high_dec_steps = init_param->agc_outer_thresh_high_dec_steps;
    g_pAD9361Phy->pdata->gain_ctrl.agc_outer_thresh_low = init_param->agc_outer_thresh_low;
    g_pAD9361Phy->pdata->gain_ctrl.agc_outer_thresh_low_inc_steps = init_param->agc_outer_thresh_low_inc_steps;
    g_pAD9361Phy->pdata->gain_ctrl.agc_attack_delay_extra_margin_us = init_param->agc_attack_delay_extra_margin_us;
    g_pAD9361Phy->pdata->gain_ctrl.sync_for_gain_counter_en = init_param->agc_sync_for_gain_counter_enable;

    /* Fast AGC */
    g_pAD9361Phy->pdata->gain_ctrl.f_agc_dec_pow_measuremnt_duration = init_param->fagc_dec_pow_measuremnt_duration;
    g_pAD9361Phy->pdata->gain_ctrl.f_agc_state_wait_time_ns = init_param->fagc_state_wait_time_ns;
    /* Fast AGC - Low Power */
    g_pAD9361Phy->pdata->gain_ctrl.f_agc_allow_agc_gain_increase = init_param->fagc_allow_agc_gain_increase;
    g_pAD9361Phy->pdata->gain_ctrl.f_agc_lp_thresh_increment_time = init_param->fagc_lp_thresh_increment_time;
    g_pAD9361Phy->pdata->gain_ctrl.f_agc_lp_thresh_increment_steps = init_param->fagc_lp_thresh_increment_steps;
    /* Fast AGC - Lock Level (Lock Level is set via slow AGC inner high threshold) */
    g_pAD9361Phy->pdata->gain_ctrl.f_agc_lock_level_lmt_gain_increase_en = init_param->fagc_lock_level_lmt_gain_increase_en;
    g_pAD9361Phy->pdata->gain_ctrl.f_agc_lock_level_gain_increase_upper_limit = init_param->fagc_lock_level_gain_increase_upper_limit;
    /* Fast AGC - Peak Detectors and Final Settling */
    g_pAD9361Phy->pdata->gain_ctrl.f_agc_lpf_final_settling_steps = init_param->fagc_lpf_final_settling_steps;
    g_pAD9361Phy->pdata->gain_ctrl.f_agc_lmt_final_settling_steps = init_param->fagc_lmt_final_settling_steps;
    g_pAD9361Phy->pdata->gain_ctrl.f_agc_final_overrange_count = init_param->fagc_final_overrange_count;
    /* Fast AGC - Final Power Test */
    g_pAD9361Phy->pdata->gain_ctrl.f_agc_gain_increase_after_gain_lock_en = init_param->fagc_gain_increase_after_gain_lock_en;
    /* Fast AGC - Unlocking the Gain */
    g_pAD9361Phy->pdata->gain_ctrl.f_agc_gain_index_type_after_exit_rx_mode = (enum ad9361_fagc_target_gain_index_type)init_param->fagc_gain_index_type_after_exit_rx_mode;
    g_pAD9361Phy->pdata->gain_ctrl.f_agc_use_last_lock_level_for_set_gain_en = init_param->fagc_use_last_lock_level_for_set_gain_en;
    g_pAD9361Phy->pdata->gain_ctrl.f_agc_rst_gla_stronger_sig_thresh_exceeded_en = init_param->fagc_rst_gla_stronger_sig_thresh_exceeded_en;
    g_pAD9361Phy->pdata->gain_ctrl.f_agc_optimized_gain_offset = init_param->fagc_optimized_gain_offset;
    g_pAD9361Phy->pdata->gain_ctrl.f_agc_rst_gla_stronger_sig_thresh_above_ll = init_param->fagc_rst_gla_stronger_sig_thresh_above_ll;
    g_pAD9361Phy->pdata->gain_ctrl.f_agc_rst_gla_engergy_lost_sig_thresh_exceeded_en = init_param->fagc_rst_gla_engergy_lost_sig_thresh_exceeded_en;
    g_pAD9361Phy->pdata->gain_ctrl.f_agc_rst_gla_engergy_lost_goto_optim_gain_en = init_param->fagc_rst_gla_engergy_lost_goto_optim_gain_en;
    g_pAD9361Phy->pdata->gain_ctrl.f_agc_rst_gla_engergy_lost_sig_thresh_below_ll = init_param->fagc_rst_gla_engergy_lost_sig_thresh_below_ll;
    g_pAD9361Phy->pdata->gain_ctrl.f_agc_energy_lost_stronger_sig_gain_lock_exit_cnt = init_param->fagc_energy_lost_stronger_sig_gain_lock_exit_cnt;
    g_pAD9361Phy->pdata->gain_ctrl.f_agc_rst_gla_large_adc_overload_en = init_param->fagc_rst_gla_large_adc_overload_en;
    g_pAD9361Phy->pdata->gain_ctrl.f_agc_rst_gla_large_lmt_overload_en = init_param->fagc_rst_gla_large_lmt_overload_en;
    g_pAD9361Phy->pdata->gain_ctrl.f_agc_rst_gla_en_agc_pulled_high_en = init_param->fagc_rst_gla_en_agc_pulled_high_en;
    g_pAD9361Phy->pdata->gain_ctrl.f_agc_rst_gla_if_en_agc_pulled_high_mode = (enum ad9361_fagc_target_gain_index_type)init_param->fagc_rst_gla_if_en_agc_pulled_high_mode;
    g_pAD9361Phy->pdata->gain_ctrl.f_agc_power_measurement_duration_in_state5 = init_param->fagc_power_measurement_duration_in_state5;
    g_pAD9361Phy->pdata->gain_ctrl.f_agc_large_overload_inc_steps = init_param->fagc_large_overload_inc_steps;

    /* RSSI Control */
    g_pAD9361Phy->pdata->rssi_ctrl.rssi_delay = init_param->rssi_delay;
    g_pAD9361Phy->pdata->rssi_ctrl.rssi_duration = init_param->rssi_duration;
    g_pAD9361Phy->pdata->rssi_ctrl.restart_mode = (enum ad9361_rssi_restart_mode)init_param->rssi_restart_mode;
    g_pAD9361Phy->pdata->rssi_ctrl.rssi_unit_is_rx_samples = init_param->rssi_unit_is_rx_samples_enable;
    g_pAD9361Phy->pdata->rssi_ctrl.rssi_wait = init_param->rssi_wait;

    /* Aux ADC Control */
    g_pAD9361Phy->pdata->auxadc_ctrl.auxadc_decimation = init_param->aux_adc_decimation;
    g_pAD9361Phy->pdata->auxadc_ctrl.auxadc_clock_rate = init_param->aux_adc_rate;

    /* AuxDAC Control */
    g_pAD9361Phy->pdata->auxdac_ctrl.auxdac_manual_mode_en = init_param->aux_dac_manual_mode_enable;
    g_pAD9361Phy->pdata->auxdac_ctrl.dac1_default_value = init_param->aux_dac1_default_value_mV;
    g_pAD9361Phy->pdata->auxdac_ctrl.dac1_in_rx_en = init_param->aux_dac1_active_in_rx_enable;
    g_pAD9361Phy->pdata->auxdac_ctrl.dac1_in_tx_en = init_param->aux_dac1_active_in_tx_enable;
    g_pAD9361Phy->pdata->auxdac_ctrl.dac1_in_alert_en = init_param->aux_dac1_active_in_alert_enable;
    g_pAD9361Phy->pdata->auxdac_ctrl.dac1_rx_delay_us = init_param->aux_dac1_rx_delay_us;
    g_pAD9361Phy->pdata->auxdac_ctrl.dac1_tx_delay_us = init_param->aux_dac1_tx_delay_us;
    g_pAD9361Phy->pdata->auxdac_ctrl.dac2_default_value = init_param->aux_dac2_default_value_mV;
    g_pAD9361Phy->pdata->auxdac_ctrl.dac2_in_rx_en = init_param->aux_dac2_active_in_rx_enable;
    g_pAD9361Phy->pdata->auxdac_ctrl.dac2_in_tx_en = init_param->aux_dac2_active_in_tx_enable;
    g_pAD9361Phy->pdata->auxdac_ctrl.dac2_in_alert_en = init_param->aux_dac2_active_in_alert_enable;
    g_pAD9361Phy->pdata->auxdac_ctrl.dac2_rx_delay_us = init_param->aux_dac2_rx_delay_us;
    g_pAD9361Phy->pdata->auxdac_ctrl.dac2_tx_delay_us = init_param->aux_dac2_tx_delay_us;

    /* Temperature Sensor Control */
    g_pAD9361Phy->pdata->auxadc_ctrl.temp_sensor_decimation = init_param->temp_sense_decimation;
    g_pAD9361Phy->pdata->auxadc_ctrl.temp_time_inteval_ms = init_param->temp_sense_measurement_interval_ms;
    g_pAD9361Phy->pdata->auxadc_ctrl.offset = init_param->temp_sense_offset_signed;
    g_pAD9361Phy->pdata->auxadc_ctrl.periodic_temp_measuremnt = init_param->temp_sense_periodic_measurement_enable;

    /* Control Out Setup */
    g_pAD9361Phy->pdata->ctrl_outs_ctrl.en_mask = init_param->ctrl_outs_enable_mask;
    g_pAD9361Phy->pdata->ctrl_outs_ctrl.index = init_param->ctrl_outs_index;

    /* External LNA Control */
    g_pAD9361Phy->pdata->elna_ctrl.settling_delay_ns = init_param->elna_settling_delay_ns;
    g_pAD9361Phy->pdata->elna_ctrl.gain_mdB = init_param->elna_gain_mdB;
    g_pAD9361Phy->pdata->elna_ctrl.bypass_loss_mdB = init_param->elna_bypass_loss_mdB;
    g_pAD9361Phy->pdata->elna_ctrl.elna_1_control_en = init_param->elna_rx1_gpo0_control_enable;
    g_pAD9361Phy->pdata->elna_ctrl.elna_2_control_en = init_param->elna_rx2_gpo1_control_enable;
    g_pAD9361Phy->pdata->elna_ctrl.elna_in_gaintable_all_index_en = init_param->elna_gaintable_all_index_enable;

    /* Digital Interface Control */
    g_pAD9361Phy->pdata->dig_interface_tune_skipmode = init_param->digital_interface_tune_skip_mode;
    g_pAD9361Phy->pdata->dig_interface_tune_fir_disable = init_param->digital_interface_tune_fir_disable;
    g_pAD9361Phy->pdata->port_ctrl.pp_conf[0] = init_param->pp_tx_swap_enable << 7;
    g_pAD9361Phy->pdata->port_ctrl.pp_conf[0] |= init_param->pp_rx_swap_enable << 6;
    g_pAD9361Phy->pdata->port_ctrl.pp_conf[0] |= init_param->tx_channel_swap_enable << 5;
    g_pAD9361Phy->pdata->port_ctrl.pp_conf[0] |= init_param->rx_channel_swap_enable << 4;
    g_pAD9361Phy->pdata->port_ctrl.pp_conf[0] |= init_param->rx_frame_pulse_mode_enable << 3;
    g_pAD9361Phy->pdata->port_ctrl.pp_conf[0] |= init_param->two_t_two_r_timing_enable << 2;
    g_pAD9361Phy->pdata->port_ctrl.pp_conf[0] |= init_param->invert_data_bus_enable << 1;
    g_pAD9361Phy->pdata->port_ctrl.pp_conf[0] |= init_param->invert_data_clk_enable << 0;
    g_pAD9361Phy->pdata->port_ctrl.pp_conf[1] = init_param->fdd_alt_word_order_enable << 7;
    g_pAD9361Phy->pdata->port_ctrl.pp_conf[1] |= init_param->invert_rx_frame_enable << 2;
    g_pAD9361Phy->pdata->port_ctrl.pp_conf[2] = init_param->fdd_rx_rate_2tx_enable << 7;
    g_pAD9361Phy->pdata->port_ctrl.pp_conf[2] |= init_param->swap_ports_enable << 6;
    g_pAD9361Phy->pdata->port_ctrl.pp_conf[2] |= init_param->single_data_rate_enable << 5;
    g_pAD9361Phy->pdata->port_ctrl.pp_conf[2] |= init_param->lvds_mode_enable << 4;
    g_pAD9361Phy->pdata->port_ctrl.pp_conf[2] |= init_param->half_duplex_mode_enable << 3;
    g_pAD9361Phy->pdata->port_ctrl.pp_conf[2] |= init_param->single_port_mode_enable << 2;
    g_pAD9361Phy->pdata->port_ctrl.pp_conf[2] |= init_param->full_port_enable << 1;
    g_pAD9361Phy->pdata->port_ctrl.pp_conf[2] |= init_param->full_duplex_swap_bits_enable << 0;
    g_pAD9361Phy->pdata->port_ctrl.pp_conf[1] |= init_param->delay_rx_data & 0x3;
    g_pAD9361Phy->pdata->port_ctrl.rx_clk_data_delay = DATA_CLK_DELAY(init_param->rx_data_clock_delay);
    g_pAD9361Phy->pdata->port_ctrl.rx_clk_data_delay |= RX_DATA_DELAY(init_param->rx_data_delay);
    g_pAD9361Phy->pdata->port_ctrl.tx_clk_data_delay = FB_CLK_DELAY(init_param->tx_fb_clock_delay);
    g_pAD9361Phy->pdata->port_ctrl.tx_clk_data_delay |= TX_DATA_DELAY(init_param->tx_data_delay);
    g_pAD9361Phy->pdata->port_ctrl.lvds_bias_ctrl = ((init_param->lvds_bias_mV - 75) / 75) & 0x7;
    g_pAD9361Phy->pdata->port_ctrl.lvds_bias_ctrl |= init_param->lvds_rx_onchip_termination_enable << 5;
    g_pAD9361Phy->pdata->rx1rx2_phase_inversion_en = init_param->rx1rx2_phase_inversion_en;

    /* GPO Control */
    g_pAD9361Phy->pdata->gpo_ctrl.gpo_manual_mode_en = init_param->gpo_manual_mode_enable;
    g_pAD9361Phy->pdata->gpo_ctrl.gpo_manual_mode_enable_mask = init_param->gpo_manual_mode_enable_mask;
    g_pAD9361Phy->pdata->gpo_ctrl.gpo0_inactive_state_high_en = init_param->gpo0_inactive_state_high_enable;
    g_pAD9361Phy->pdata->gpo_ctrl.gpo1_inactive_state_high_en = init_param->gpo1_inactive_state_high_enable;
    g_pAD9361Phy->pdata->gpo_ctrl.gpo2_inactive_state_high_en = init_param->gpo2_inactive_state_high_enable;
    g_pAD9361Phy->pdata->gpo_ctrl.gpo3_inactive_state_high_en = init_param->gpo3_inactive_state_high_enable;

    g_pAD9361Phy->pdata->gpo_ctrl.gpo0_slave_rx_en = init_param->gpo0_slave_rx_enable;
    g_pAD9361Phy->pdata->gpo_ctrl.gpo0_slave_tx_en = init_param->gpo0_slave_tx_enable;
    g_pAD9361Phy->pdata->gpo_ctrl.gpo1_slave_rx_en = init_param->gpo1_slave_rx_enable;
    g_pAD9361Phy->pdata->gpo_ctrl.gpo1_slave_tx_en = init_param->gpo1_slave_tx_enable;
    g_pAD9361Phy->pdata->gpo_ctrl.gpo2_slave_rx_en = init_param->gpo2_slave_rx_enable;
    g_pAD9361Phy->pdata->gpo_ctrl.gpo2_slave_tx_en = init_param->gpo2_slave_tx_enable;
    g_pAD9361Phy->pdata->gpo_ctrl.gpo3_slave_rx_en = init_param->gpo3_slave_rx_enable;
    g_pAD9361Phy->pdata->gpo_ctrl.gpo3_slave_tx_en = init_param->gpo3_slave_tx_enable;

    g_pAD9361Phy->pdata->gpo_ctrl.gpo0_rx_delay_us = init_param->gpo0_rx_delay_us;
    g_pAD9361Phy->pdata->gpo_ctrl.gpo0_tx_delay_us = init_param->gpo0_tx_delay_us;
    g_pAD9361Phy->pdata->gpo_ctrl.gpo1_rx_delay_us = init_param->gpo1_rx_delay_us;
    g_pAD9361Phy->pdata->gpo_ctrl.gpo1_tx_delay_us = init_param->gpo1_tx_delay_us;
    g_pAD9361Phy->pdata->gpo_ctrl.gpo2_rx_delay_us = init_param->gpo2_rx_delay_us;
    g_pAD9361Phy->pdata->gpo_ctrl.gpo2_tx_delay_us = init_param->gpo2_tx_delay_us;
    g_pAD9361Phy->pdata->gpo_ctrl.gpo3_rx_delay_us = init_param->gpo3_rx_delay_us;
    g_pAD9361Phy->pdata->gpo_ctrl.gpo3_tx_delay_us = init_param->gpo3_tx_delay_us;

    /* Tx Monitor Control */
    g_pAD9361Phy->pdata->txmon_ctrl.low_high_gain_threshold_mdB = init_param->low_high_gain_threshold_mdB;
    g_pAD9361Phy->pdata->txmon_ctrl.low_gain_dB = init_param->low_gain_dB;
    g_pAD9361Phy->pdata->txmon_ctrl.high_gain_dB = init_param->high_gain_dB;
    g_pAD9361Phy->pdata->txmon_ctrl.tx_mon_track_en = init_param->tx_mon_track_en;
    g_pAD9361Phy->pdata->txmon_ctrl.one_shot_mode_en = init_param->one_shot_mode_en;
    g_pAD9361Phy->pdata->txmon_ctrl.tx_mon_delay = init_param->tx_mon_delay;
    g_pAD9361Phy->pdata->txmon_ctrl.tx_mon_duration = init_param->tx_mon_duration;
    g_pAD9361Phy->pdata->txmon_ctrl.tx1_mon_front_end_gain = init_param->tx1_mon_front_end_gain;
    g_pAD9361Phy->pdata->txmon_ctrl.tx2_mon_front_end_gain = init_param->tx2_mon_front_end_gain;
    g_pAD9361Phy->pdata->txmon_ctrl.tx1_mon_lo_cm = init_param->tx1_mon_lo_cm;
    g_pAD9361Phy->pdata->txmon_ctrl.tx2_mon_lo_cm = init_param->tx2_mon_lo_cm;

    g_pAD9361Phy->pdata->port_ctrl.digital_io_ctrl = 0;
    g_pAD9361Phy->pdata->port_ctrl.lvds_invert[0] = init_param->lvds_invert1_control;
    g_pAD9361Phy->pdata->port_ctrl.lvds_invert[1] = init_param->lvds_invert2_control;

    if(init_param->dev_sel == ID_AD9364)
    {
        g_pAD9361Phy->pdata->rx2tx2 = false;
        g_pAD9361Phy->pdata->rx1tx1_mode_use_rx_num = 1;
        g_pAD9361Phy->pdata->rx1tx1_mode_use_tx_num = 1;

        DBGPRINTLN_CTX("Device is AD9364, RX2 and TX2 disabled");
    }

    g_pAD9361Phy->rx_eq_2tx = false;

    g_pAD9361Phy->current_table = -1;
    g_pAD9361Phy->bypass_tx_fir = true;
    g_pAD9361Phy->bypass_rx_fir = true;
    g_pAD9361Phy->rate_governor = 1;
    g_pAD9361Phy->rfdc_track_en = true;
    g_pAD9361Phy->bbdc_track_en = true;
    g_pAD9361Phy->quad_track_en = true;

    g_pAD9361Phy->gt_info = ad9361_adi_gt_info;

    g_pAD9361Phy->bist_loopback_mode = 0;
    g_pAD9361Phy->bist_config = 0;
    g_pAD9361Phy->bist_prbs_mode = BIST_DISABLE;
    g_pAD9361Phy->bist_tone_mode = BIST_DISABLE;
    g_pAD9361Phy->bist_tone_freq_Hz = 0;
    g_pAD9361Phy->bist_tone_level_dB = 0;
    g_pAD9361Phy->bist_tone_mask = 0;

    ad9361_reset();

    ret = ad9361_spi_read(REG_PRODUCT_ID);

    if((ret & PRODUCT_ID_MASK) != PRODUCT_ID_9361)
    {
        DBGPRINTLN_CTX("Unsupported product ID 0x%02X", (unsigned int)ret);

        ret = -ENODEV;

        goto out;
    }

    rev = ret & REV_MASK;

    DBGPRINTLN_CTX("Found AD936x Rev %d", (unsigned int)rev);

    g_pAD9361Phy->ad9361_rfpll_ext_recalc_rate = init_param->ad9361_rfpll_ext_recalc_rate;
    g_pAD9361Phy->ad9361_rfpll_ext_round_rate = init_param->ad9361_rfpll_ext_round_rate;
    g_pAD9361Phy->ad9361_rfpll_ext_set_rate = init_param->ad9361_rfpll_ext_set_rate;

    ret = ad9361_register_clocks();

    if(ret < 0)
        goto out;

    ret = ad9361_setup();

    if(ret < 0)
        goto out_clk;

    if(!axi_ad9361_init())
        goto out_clk;

    if(!ad9361_util_dig_tune(1, DO_CHIP_RX | DO_CHIP_TX))
        goto out_clk;

    DBGPRINTLN_CTX("AD936x successfully initialized");

    return 0;

out_clk:
    ad9361_unregister_clocks();
out:
    free(g_pAD9361Phy->clk_refin);
    free(g_pAD9361Phy->pdata);
    free(g_pAD9361Phy);

    g_pAD9361Phy = NULL;

    DBGPRINTLN_CTX("AD936x initialization error");

    return -ENODEV;
}

/**
 * Free the allocated resources.
 * @param phy The AD9361 current state structure.
 * @return 0 in case of success, negative error code otherwise.
 */
int32_t ad9361_remove()
{
    if(!g_pAD9361Phy)
        return -ENODEV;

    ad9361_unregister_clocks();

    free(g_pAD9361Phy->clk_refin);
    free(g_pAD9361Phy->pdata);
    free(g_pAD9361Phy);

    g_pAD9361Phy = NULL;

    return 0;
}

/**
 * Set the Enable State Machine (ENSM) mode.
 * @param phy The AD9361 current state structure.
 * @param mode The ENSM mode.
 * 			   Accepted values:
 * 				ENSM_MODE_TX
 * 				ENSM_MODE_RX
 * 				ENSM_MODE_ALERT
 * 				ENSM_MODE_FDD
 * 				ENSM_MODE_WAIT
 * 				ENSM_MODE_SLEEP
 * 				ENSM_MODE_PINCTRL
 * 				ENSM_MODE_PINCTRL_FDD_INDEP
 * @return 0 in case of success, negative error code otherwise.
 *
 * Note: This function will/may affect the data path.
 */
int32_t ad9361_set_en_state_machine_mode(uint32_t mode)
{
    int32_t ret;
    uint8_t ensm_state;
    bool pinctrl = false;

    g_pAD9361Phy->pdata->fdd_independent_mode = false;

    switch(mode)
    {
        case ENSM_MODE_TX:
            ensm_state = ENSM_STATE_TX;
        break;
        case ENSM_MODE_RX:
            ensm_state = ENSM_STATE_RX;
        break;
        case ENSM_MODE_ALERT:
            ensm_state = ENSM_STATE_ALERT;
        break;
        case ENSM_MODE_FDD:
            ensm_state = ENSM_STATE_FDD;
        break;
        case ENSM_MODE_WAIT:
            ensm_state = ENSM_STATE_SLEEP_WAIT;
        break;
        case ENSM_MODE_SLEEP:
            ensm_state = ENSM_STATE_SLEEP;
        break;
        case ENSM_MODE_PINCTRL:
            ensm_state = ENSM_STATE_SLEEP_WAIT;
            pinctrl = true;
        break;
        case ENSM_MODE_PINCTRL_FDD_INDEP:
            ensm_state = ENSM_STATE_FDD;
            g_pAD9361Phy->pdata->fdd_independent_mode = true;
        break;
        default:
            return -EINVAL;
    }

    ad9361_set_ensm_mode(g_pAD9361Phy->pdata->fdd, pinctrl);
    ret = ad9361_ensm_set_state(ensm_state, pinctrl);

    return ret;
}

/**
 * Get the Enable State Machine (ENSM) mode.
 * @param phy The AD9361 current state structure.
 * @param mode A variable to store the selected ENSM mode.
 * @return 0 in case of success, negative error code otherwise.
 */
int32_t ad9361_get_en_state_machine_mode(uint32_t *mode)
{
    uint8_t ensm_state;
    bool pinctrl = false;
    int32_t ret;

    ensm_state = ad9361_spi_read(REG_STATE);
    ensm_state &= ENSM_STATE(~0);
    ret = ad9361_spi_read(REG_ENSM_CONFIG_1);

    if((ret & ENABLE_ENSM_PIN_CTRL) == ENABLE_ENSM_PIN_CTRL)
        pinctrl = true;

    switch(ensm_state)
    {
        case ENSM_STATE_TX:
            *mode = ENSM_MODE_TX;
        break;
        case ENSM_STATE_RX:
            *mode = ENSM_MODE_RX;
        break;
        case ENSM_STATE_ALERT:
            *mode = ENSM_MODE_ALERT;
        break;
        case ENSM_STATE_FDD:
            if(g_pAD9361Phy->pdata->fdd_independent_mode)
                *mode = ENSM_MODE_PINCTRL_FDD_INDEP;
            else
                *mode = ENSM_MODE_FDD;
        break;
        case ENSM_STATE_SLEEP_WAIT:
            if(pinctrl)
                *mode = ENSM_MODE_PINCTRL;
            else
                *mode = ENSM_MODE_WAIT;
        break;
        case ENSM_STATE_SLEEP:
            *mode = ENSM_MODE_SLEEP;
        break;
        default:
            return -EINVAL;
    }

    return 0;
}

/**
 * Set the receive RF gain for the selected channel.
 * @param phy The AD9361 current state structure.
 * @param ch The desired channel number (RX1, RX2).
 * 			 Accepted values in 2x2 mode:
 * 			  RX1 (0)
 * 			  RX2 (1)
 * 			 Accepted values in 1x1 mode:
 * 			  RX1 (0)
 * @param gain_db The RF gain (dB).
 * 				  Example:
 * 				   10 (10 dB)
 * @return 0 in case of success, negative error code otherwise.
 */
int32_t ad9361_set_rx_rf_gain(uint8_t ch, int32_t gain_db)
{
    struct ad9361_rf_rx_gain rx_gain = {0, 0, 0, 0, 0, 0, 0, 0, 0};
    int32_t ret = 0;

    rx_gain.gain_db = gain_db;

    ret = ad9361_set_rx_gain(ad9361_1rx1tx_channel_map(false, ch + 1), &rx_gain);

    return ret;
}

/**
 * Get current receive RF gain for the selected channel.
 * @param phy The AD9361 current state structure.
 * @param ch The desired channel number (RX1, RX2).
 * 			 Accepted values in 2x2 mode:
 * 			  RX1 (0)
 * 			  RX2 (1)
 * 			 Accepted values in 1x1 mode:
 * 			  RX1 (0)
 * @param gain_db A variable to store the RF gain (dB).
 * @return 0 in case of success, negative error code otherwise.
 */
int32_t ad9361_get_rx_rf_gain(uint8_t ch, int32_t *gain_db)
{
    struct ad9361_rf_rx_gain rx_gain = {0, 0, 0, 0, 0, 0, 0, 0, 0};
    int32_t ret = 0;

    ret = ad9361_get_rx_gain(ad9361_1rx1tx_channel_map(false, ch + 1), &rx_gain);

    *gain_db = rx_gain.gain_db;

    return ret;
}

/**
 * Set the RX RF bandwidth.
 * @param phy The AD9361 current state structure.
 * @param bandwidth_hz The desired bandwidth (Hz).
 * 					   Example:
 * 					    18000000 (18 MHz)
 * @return 0 in case of success, negative error code otherwise.
 *
 * Note: This function will/may affect the data path.
 */
int32_t ad9361_set_rx_rf_bandwidth(uint32_t bandwidth_hz)
{
    int32_t ret = 0;

    bandwidth_hz = ad9361_validate_rf_bw(bandwidth_hz);

    if(g_pAD9361Phy->current_rx_bw_Hz != bandwidth_hz)
        ret = ad9361_update_rf_bandwidth(bandwidth_hz, g_pAD9361Phy->current_tx_bw_Hz);
    else
        ret = 0;

    return ret;
}

/**
 * Get the RX RF bandwidth.
 * @param phy The AD9361 current state structure.
 * @param bandwidth_hz A variable to store the bandwidth value (Hz).
 * @return 0 in case of success, negative error code otherwise.
 */
int32_t ad9361_get_rx_rf_bandwidth(uint32_t *bandwidth_hz)
{
    *bandwidth_hz = g_pAD9361Phy->current_rx_bw_Hz;

    return 0;
}

/**
 * Set the RX sampling frequency.
 * @param phy The AD9361 current state structure.
 * @param sampling_freq_hz The desired frequency (Hz).
 * 						   Example:
 * 						    30720000 (30.72 MHz)
 * @return 0 in case of success, negative error code otherwise.
 *
 * Note: This function will/may affect the data path.
 */
int32_t ad9361_set_rx_sampling_freq(uint32_t sampling_freq_hz)
{
    int32_t ret;
    uint32_t rx[6], tx[6];

    ret = ad9361_calculate_rf_clock_chain(sampling_freq_hz, g_pAD9361Phy->rate_governor, rx, tx);

    if(ret < 0)
        return ret;

    ad9361_set_trx_clock_chain(rx, tx);

    ret = ad9361_update_rf_bandwidth(g_pAD9361Phy->current_rx_bw_Hz, g_pAD9361Phy->current_tx_bw_Hz);

    return ret;
}

/**
 * Get current RX sampling frequency.
 * @param phy The AD9361 current state structure.
 * @param sampling_freq_hz A variable to store the frequency value (Hz).
 * @return 0 in case of success, negative error code otherwise.
 */
int32_t ad9361_get_rx_sampling_freq(uint32_t *sampling_freq_hz)
{
    *sampling_freq_hz = (uint32_t)ad9361_clk_get_rate(g_pAD9361Phy->ref_clk_scale[RX_SAMPL_CLK]);

    return 0;
}

/**
 * Set the RX LO frequency.
 * @param phy The AD9361 current state structure.
 * @param lo_freq_hz The desired frequency (Hz).
 * 					 Example:
 * 					  2400000000 (2.4 GHz)
 * @return 0 in case of success, negative error code otherwise.
 *
 * Note: This function will/may affect the data path.
 */
int32_t ad9361_set_rx_lo_freq(uint64_t lo_freq_hz)
{
    int32_t ret;

    ret = ad9361_clk_set_rate(g_pAD9361Phy->ref_clk_scale[RX_RFPLL], ad9361_to_clk(lo_freq_hz));

    return ret;
}

/**
 * Get current RX LO frequency.
 * @param phy The AD9361 current state structure.
 * @param lo_freq_hz A variable to store the frequency value (Hz).
 * @return 0 in case of success, negative error code otherwise.
 */
int32_t ad9361_get_rx_lo_freq(uint64_t *lo_freq_hz)
{
    *lo_freq_hz = ad9361_from_clk(ad9361_clk_get_rate(g_pAD9361Phy->ref_clk_scale[RX_RFPLL]));

    return 0;
}

/**
 * Switch between internal and external LO.
 * @param phy The AD9361 state structure.
 * @param int_ext The selected lo (INT_LO, EXT_LO).
 * 			  Accepted values:
 * 			   INT_LO
 * 			   EXT_LO
 * @return 0 in case of success, negative error code otherwise.
 */
int32_t ad9361_set_rx_lo_int_ext(uint8_t int_ext)
{
    if((g_pAD9361Phy->dev_sel == ID_AD9363A) && (int_ext == EXT_LO))
    {
        DBGPRINTLN_CTX("EXT_LO is not supported by AD9363A!");

        return -1;
    }

    g_pAD9361Phy->pdata->use_ext_rx_lo = int_ext;

    return ad9361_clk_mux_set_parent(g_pAD9361Phy->ref_clk_scale[RX_RFPLL], int_ext);
}

/**
 * Get the RSSI for the selected channel.
 * @param phy The AD9361 current state structure.
 * @param ch The desired channel (RX1, RX2).
 * 			 Accepted values in 2x2 mode:
 * 			  RX1 (0)
 * 			  RX2 (1)
 * 			 Accepted values in 1x1 mode:
 * 			  RX1 (0)
 * @param rssi A variable to store the RSSI.
 * @return 0 in case of success, negative error code otherwise.
 */
int32_t ad9361_get_rx_rssi(uint8_t ch, struct ad9361_rf_rssi *rssi)
{
    int32_t ret;

    rssi->ant = ad9361_1rx1tx_channel_map(false, ch + 1);
    rssi->duration = 1;
    ret = ad9361_read_rssi(rssi);

    return ret;
}

/**
 * Set the gain control mode for the selected channel.
 * @param phy The AD9361 current state structure.
 * @param ch The desired channel (RX1, RX2).
 * 			 Accepted values in 2x2 mode:
 * 			  RX1 (0)
 * 			  RX2 (1)
 * 			 Accepted values in 1x1 mode:
 * 			  RX1 (0)
 * @param gc_mode The gain control mode (manual, fast_attack, slow_attack,
 * 				  hybrid).
 *                Accepted values:
 *				   RF_GAIN_MGC (manual)
 *				   RF_GAIN_FASTATTACK_AGC (fast_attack)
 *				   RF_GAIN_SLOWATTACK_AGC (slow_attack)
 *				   RF_GAIN_HYBRID_AGC (hybrid)
 * @return 0 in case of success, negative error code otherwise.
 */
int32_t ad9361_set_rx_gain_control_mode(uint8_t ch, uint8_t gc_mode)
{
    struct ad9361_rf_gain_ctrl gc = {0, 0};

    gc.ant = ad9361_1rx1tx_channel_map(false, ch + 1);
    gc.mode = g_pAD9361Phy->agc_mode[ch] = gc_mode;

    ad9361_set_gain_ctrl_mode(&gc);

    return 0;
}

/**
 * Get the gain control mode for the selected channel.
 * @param phy The AD9361 current state structure.
 * @param ch The desired channel (RX1, RX2).
 * 			 Accepted values:
 * 			  RX1 (0)
 * 			  RX2 (1)
 * @param gc_mode A variable to store the gain control mode.
 * @return 0 in case of success, negative error code otherwise.
 */
int32_t ad9361_get_rx_gain_control_mode(uint8_t ch, uint8_t *gc_mode)
{
    *gc_mode = g_pAD9361Phy->agc_mode[ch];

    return 0;
}

/**
 * Set the RX FIR filter configuration.
 * @param phy The AD9361 current state structure.
 * @param fir_cfg FIR filter configuration.
 * @return 0 in case of success, negative error code otherwise.
 *
 * Note: This function will/may affect the data path.
 */
int32_t ad9361_set_rx_fir_config(AD9361_RXFIRConfig fir_cfg)
{
    int32_t ret;

    g_pAD9361Phy->rx_fir_dec = fir_cfg.rx_dec;

    ret = ad9361_load_fir_filter_coef((enum ad9361_fir_dest)(fir_cfg.rx | FIR_IS_RX), fir_cfg.rx_gain, fir_cfg.rx_coef_size, fir_cfg.rx_coef);

    return ret;
}

/**
 * Get the RX FIR filter configuration.
 * @param phy The AD9361 current state structure.
 * @param rx_ch The selected RX channel (RX1, RX2).
 * 				Accepted values:
 * 				 RX1 (0)
 * 				 RX2 (1)
 * @param fir_cfg FIR filter configuration output file.
 * @return 0 in case of success, negative error code otherwise.
 */
int32_t ad9361_get_rx_fir_config(uint8_t rx_ch, AD9361_RXFIRConfig *fir_cfg)
{
    int32_t ret;
    uint32_t fir_conf;

    rx_ch += 1;

    ret = ad9361_spi_read(REG_RX_FILTER_CONFIG);

    if(ret < 0)
        return ret;

    fir_conf = ret;

    fir_cfg->rx_coef_size = (((fir_conf & FIR_NUM_TAPS(7)) >> 5) + 1) * 16;

    ret = ad9361_spi_read(REG_RX_FILTER_GAIN);

    if(ret < 0)
        return ret;

    fir_cfg->rx_gain = -6 * (ret & FILTER_GAIN(3)) + 6;
    fir_cfg->rx = rx_ch;

    fir_conf &= ~FIR_SELECT(3);
    fir_conf |= FIR_SELECT(rx_ch) | FIR_START_CLK;

    ad9361_spi_write(REG_RX_FILTER_CONFIG, fir_conf);

    for(uint8_t i = 0; i < 128; i++)
    {
        ad9361_spi_write(REG_RX_FILTER_COEF_ADDR, i);

        ret = ad9361_spi_read(REG_RX_FILTER_COEF_READ_DATA_1);

        if(ret < 0)
            return ret;

        fir_cfg->rx_coef[i] = ret;

        ret = ad9361_spi_read(REG_RX_FILTER_COEF_READ_DATA_2);

        if(ret < 0)
            return ret;

        fir_cfg->rx_coef[i] |= ret << 8;
    }

    fir_conf &= ~FIR_START_CLK;

    ad9361_spi_write(REG_RX_FILTER_CONFIG, fir_conf);

    fir_cfg->rx_dec = g_pAD9361Phy->rx_fir_dec;

    return 0;
}

/**
 * Enable/disable the RX FIR filter.
 * @param phy The AD9361 current state structure.
 * @param en_dis The option (ENABLE, DISABLE).
 * 				 Accepted values:
 * 				  ENABLE (1)
 * 				  DISABLE (0)
 * @return 0 in case of success, negative error code otherwise.
 *
 * Note: This function will/may affect the data path.
 */
int32_t ad9361_set_rx_fir_en_dis(uint8_t en_dis)
{
    int32_t ret = 0;

    if(g_pAD9361Phy->bypass_rx_fir == !en_dis)
        return ret;

    g_pAD9361Phy->bypass_rx_fir = !en_dis;

    ret = ad9361_validate_enable_fir();

    if(ret < 0)
        g_pAD9361Phy->bypass_rx_fir = true;

    return ret;
}

/**
 * Get the status of the RX FIR filter.
 * @param phy The AD9361 current state structure.
 * @param en_dis The enable/disable status buffer.
 * @return 0 in case of success, negative error code otherwise.
 */
int32_t ad9361_get_rx_fir_en_dis(uint8_t *en_dis)
{
    *en_dis = !g_pAD9361Phy->bypass_rx_fir;

    return 0;
}

/**
 * Enable/disable the RX RFDC Tracking.
 * @param phy The AD9361 current state structure.
 * @param en_dis The option (ENABLE, DISABLE).
 * 				 Accepted values:
 * 				  ENABLE (1)
 * 				  DISABLE (0)
 * @return 0 in case of success, negative error code otherwise.
 */
int32_t ad9361_set_rx_rfdc_track_en_dis(uint8_t en_dis)
{
    int32_t ret = 0;

    if(g_pAD9361Phy->rfdc_track_en == en_dis)
        return ret;

    g_pAD9361Phy->rfdc_track_en = en_dis;

    ret = ad9361_tracking_control(g_pAD9361Phy->bbdc_track_en, g_pAD9361Phy->rfdc_track_en, g_pAD9361Phy->quad_track_en);

    return ret;
}

/**
 * Get the status of the RX RFDC Tracking.
 * @param phy The AD9361 current state structure.
 * @param en_dis The enable/disable status buffer.
 * @return 0 in case of success, negative error code otherwise.
 */
int32_t ad9361_get_rx_rfdc_track_en_dis(uint8_t *en_dis)
{
    *en_dis = g_pAD9361Phy->rfdc_track_en;

    return 0;
}

/**
 * Enable/disable the RX BasebandDC Tracking.
 * @param phy The AD9361 current state structure.
 * @param en_dis The option (ENABLE, DISABLE).
 * 				 Accepted values:
 * 				  ENABLE (1)
 * 				  DISABLE (0)
 * @return 0 in case of success, negative error code otherwise.
 */
int32_t ad9361_set_rx_bbdc_track_en_dis(uint8_t en_dis)
{
    int32_t ret = 0;

    if(g_pAD9361Phy->bbdc_track_en == en_dis)
        return ret;

    g_pAD9361Phy->bbdc_track_en = en_dis;

    ret = ad9361_tracking_control(g_pAD9361Phy->bbdc_track_en, g_pAD9361Phy->rfdc_track_en, g_pAD9361Phy->quad_track_en);

    return ret;
}

/**
 * Get the status of the RX BasebandDC Tracking.
 * @param phy The AD9361 current state structure.
 * @param en_dis The enable/disable status buffer.
 * @return 0 in case of success, negative error code otherwise.
 */
int32_t ad9361_get_rx_bbdc_track_en_dis(uint8_t *en_dis)
{
    *en_dis = g_pAD9361Phy->bbdc_track_en;

    return 0;
}

/**
 * Enable/disable the RX Quadrature Tracking.
 * @param phy The AD9361 current state structure.
 * @param en_dis The option (ENABLE, DISABLE).
 * 				 Accepted values:
 * 				  ENABLE (1)
 * 				  DISABLE (0)
 * @return 0 in case of success, negative error code otherwise.
 */
int32_t ad9361_set_rx_quad_track_en_dis(uint8_t en_dis)
{
    int32_t ret = 0;

    if(g_pAD9361Phy->quad_track_en == en_dis)
        return ret;

    g_pAD9361Phy->quad_track_en = en_dis;

    ret = ad9361_tracking_control(g_pAD9361Phy->bbdc_track_en, g_pAD9361Phy->rfdc_track_en, g_pAD9361Phy->quad_track_en);

    return ret;
}

/**
 * Get the status of the RX Quadrature Tracking.
 * @param phy The AD9361 current state structure.
 * @param en_dis The enable/disable status buffer.
 * @return 0 in case of success, negative error code otherwise.
 */
int32_t ad9361_get_rx_quad_track_en_dis(uint8_t *en_dis)
{
    *en_dis = g_pAD9361Phy->quad_track_en;

    return 0;
}

/**
 * Set the RX RF input port.
 * @param phy The AD9361 current state structure.
 * @param mode The RF port.
 * 			   Accepted values:
 *				A_BALANCED (0 - (RX1A_N &  RX1A_P) and (RX2A_N & RX2A_P) enabled; balanced)
 *				B_BALANCED (1 - (RX1B_N &  RX1B_P) and (RX2B_N & RX2B_P) enabled; balanced)
 *				C_BALANCED (2 - (RX1C_N &  RX1C_P) and (RX2C_N & RX2C_P) enabled; balanced)
 *				A_N		   (3 - RX1A_N and RX2A_N enabled; unbalanced)
 *				A_P		   (4 - RX1A_P and RX2A_P enabled; unbalanced)
 *				B_N		   (5 - RX1B_N and RX2B_N enabled; unbalanced)
 *				B_P		   (6 - RX1B_P and RX2B_P enabled; unbalanced)
 *				C_N		   (7 - RX1C_N and RX2C_N enabled; unbalanced)
 *				C_P		   (8 - RX1C_P and RX2C_P enabled; unbalanced)
 *				TX_MON1	   (9 - TX_MONITOR1)
 *				TX_MON2	   (10 - TX_MONITOR2)
 *				TX_MON1_2  (11 - TX_MONITOR1 & TX_MONITOR2)
 * @return 0 in case of success, negative error code otherwise.
 */
int32_t ad9361_set_rx_rf_port_input(uint32_t mode)
{
    int32_t ret;

    g_pAD9361Phy->pdata->rf_rx_input_sel = mode;

    ret = ad9361_rf_port_setup(false, g_pAD9361Phy->pdata->rf_rx_input_sel, g_pAD9361Phy->pdata->rf_tx_output_sel);

    return ret;
}

/**
 * Get the selected RX RF input port.
 * @param phy The AD9361 current state structure.
 * @param mode The RF port.
 * @return 0 in case of success, negative error code otherwise.
 */
int32_t ad9361_get_rx_rf_port_input(uint32_t *mode)
{
    *mode = g_pAD9361Phy->pdata->rf_rx_input_sel;

    return 0;
}

/**
 * Store RX fastlock profile.
 * To create a profile tune the synthesizer (ad9361_set_rx_lo_freq()) and then
 * call this function specifying the target profile number.
 * @param phy The AD9361 state structure.
 * @param profile The profile number (0 - 7).
 * 				  Accepted values:
 * 				   0 - 7
 * @return 0 in case of success, negative error code otherwise.
 */
int32_t ad9361_rx_fastlock_store(uint32_t profile)
{
    return ad9361_fastlock_store(0, profile);
}

/**
 * Recall specified RX fastlock profile.
 * When in fastlock pin select mode (init_param->rx_fastlock_pincontrol_enable),
 * the function needs to be called before then the pin-control can be used.
 * @param phy The AD9361 state structure.
 * @param profile The profile number (0 - 7).
 * 				  Accepted values:
 * 				   0 - 7
 * @return 0 in case of success, negative error code otherwise.
 */
int32_t ad9361_rx_fastlock_recall(uint32_t profile)
{
    return ad9361_fastlock_recall(0, profile);
}

/**
 * Load RX fastlock profile. A previously saved profile can be loaded in any
 * of the 8 available slots.
 * @param phy The AD9361 state structure.
 * @param profile The profile number (0 - 7).
 * 				  Accepted values:
 * 				   0 - 7
 * @param values Fastlock profile program data.
 * 				 Example:
 * 				  val0,val1,val2,,val15
 * @return 0 in case of success, negative error code otherwise.
 */
int32_t ad9361_rx_fastlock_load(uint32_t profile, uint8_t *values)
{
    return ad9361_fastlock_load(0, profile, values);
}

/**
 * Save RX fastlock profile. In order to use more than 8 Profiles, an existing
 * profile can be read back and stored by the user application.
 * @param phy The AD9361 state structure.
 * @param profile The profile number (0 - 7).
 * 				  Accepted values:
 * 				   0 - 7
 * @param values Fastlock profile program data.
 * @return 0 in case of success, negative error code otherwise.
 */
int32_t ad9361_rx_fastlock_save(uint32_t profile, uint8_t *values)
{
    return ad9361_fastlock_save(0, profile, values);
}

/**
 * Power down the RX Local Oscillator.
 * @param phy The AD9361 state structure.
 * @param option The option (ON, OFF).
 * 				 Accepted values:
 * 				  ON (0)
 * 				  OFF (1)
 * @return 0 in case of success, negative error code otherwise.
 */
int32_t ad9361_rx_lo_powerdown(uint8_t option)
{
    return ad9361_synth_lo_powerdown(option ? LO_OFF : LO_ON, LO_DONTCARE);
}

/**
 * Get the RX Local Oscillator power status.
 * @param phy The AD9361 state structure.
 * @param option Store the option (ON, OFF).
 * @return 0 in case of success, negative error code otherwise.
 */
int32_t ad9361_get_rx_lo_power(uint8_t *option)
{
    *option = !(g_pAD9361Phy->cached_synth_pd[1] & RX_LO_POWER_DOWN) ? OFF : ON;

    return 0;
}

/**
 * Set the transmit attenuation for the selected channel.
 * @param phy The AD9361 current state structure.
 * @param ch The desired channel number (TX1, TX2).
 * 			 Accepted values in 2x2 mode:
 * 			  TX1 (0)
 * 			  TX2 (1)
 * 			 Accepted values in 1x1 mode:
 * 			  TX1 (0)
 * @param attenuation_mdb The attenuation (mdB).
 * 						  Example:
 * 						   10000 (10 dB)
 * @return 0 in case of success, negative error code otherwise.
 */
int32_t ad9361_set_tx_attenuation(uint8_t ch, uint32_t attenuation_mdb)
{
    int32_t ret;
    int32_t channel;

    channel = ad9361_1rx1tx_channel_map(true, ch);

    ret = ad9361_set_tx_atten(attenuation_mdb, channel == 0, channel == 1, !g_pAD9361Phy->pdata->update_tx_gain_via_alert);

    return ret;
}

/**
 * Get current transmit attenuation for the selected channel.
 * @param phy The AD9361 current state structure.
 * @param ch The desired channel number (TX1, TX2).
 * 			 Accepted values in 2x2 mode:
 * 			  TX1 (0)
 * 			  TX2 (1)
 * 			 Accepted values in 1x1 mode:
 * 			  TX1 (0)
 * @param attenuation_mdb A variable to store the attenuation value (mdB).
 * @return 0 in case of success, negative error code otherwise.
 */
int32_t ad9361_get_tx_attenuation(uint8_t ch, uint32_t *attenuation_mdb)
{
    int32_t ret;

    ret = ad9361_get_tx_atten(ad9361_1rx1tx_channel_map(true, ch + 1));

    if(ret < 0)
        return ret;

    *attenuation_mdb = ret;

    return 0;
}

/**
 * Set the TX RF bandwidth.
 * @param phy The AD9361 current state structure.
 * @param bandwidth_hz The desired bandwidth (Hz).
 * 					   Example:
 * 					    18000000 (18 MHz)
 * @return 0 in case of success, negative error code otherwise.
 *
 * Note: This function will/may affect the data path.
 */
int32_t ad9361_set_tx_rf_bandwidth(uint32_t  bandwidth_hz)
{
    int32_t ret = 0;

    bandwidth_hz = ad9361_validate_rf_bw(bandwidth_hz);

    if(g_pAD9361Phy->current_tx_bw_Hz != bandwidth_hz)
        ret = ad9361_update_rf_bandwidth(g_pAD9361Phy->current_rx_bw_Hz, bandwidth_hz);
    else
        ret = 0;

    return ret;
}

/**
 * Get the TX RF bandwidth.
 * @param phy The AD9361 current state structure.
 * @param bandwidth_hz A variable to store the bandwidth value (Hz).
 * @return 0 in case of success, negative error code otherwise.
 */
int32_t ad9361_get_tx_rf_bandwidth(uint32_t *bandwidth_hz)
{
    *bandwidth_hz = g_pAD9361Phy->current_tx_bw_Hz;

    return 0;
}

/**
 * Set the TX sampling frequency.
 * @param phy The AD9361 current state structure.
 * @param sampling_freq_hz The desired frequency (Hz).
 * 						   Example:
 * 						    30720000 (30.72 MHz)
 * @return 0 in case of success, negative error code otherwise.
 *
 * Note: This function will/may affect the data path.
 */
int32_t ad9361_set_tx_sampling_freq(uint32_t sampling_freq_hz)
{
    int32_t ret;
    uint32_t rx[6], tx[6];

    ret = ad9361_calculate_rf_clock_chain(sampling_freq_hz, g_pAD9361Phy->rate_governor, rx, tx);

    if(ret < 0)
        return ret;

    ad9361_set_trx_clock_chain(rx, tx);

    ret = ad9361_update_rf_bandwidth(g_pAD9361Phy->current_rx_bw_Hz, g_pAD9361Phy->current_tx_bw_Hz);

    return ret;
}

/**
 * Get current TX sampling frequency.
 * @param phy The AD9361 current state structure.
 * @param sampling_freq_hz A variable to store the frequency value (Hz).
 * @return 0 in case of success, negative error code otherwise.
 */
int32_t ad9361_get_tx_sampling_freq(uint32_t *sampling_freq_hz)
{
    *sampling_freq_hz = (uint32_t)ad9361_clk_get_rate(g_pAD9361Phy->ref_clk_scale[TX_SAMPL_CLK]);

    return 0;
}

/**
 * Set the TX LO frequency.
 * @param phy The AD9361 current state structure.
 * @param lo_freq_hz The desired frequency (Hz).
 * 					 Example:
 * 					  2400000000 (2.4 GHz)
 * @return 0 in case of success, negative error code otherwise.
 *
 * Note: This function will/may affect the data path.
 */
int32_t ad9361_set_tx_lo_freq(uint64_t lo_freq_hz)
{
    int32_t ret;

    ret = ad9361_clk_set_rate(g_pAD9361Phy->ref_clk_scale[TX_RFPLL], ad9361_to_clk(lo_freq_hz));

    return ret;
}

/**
 * Get current TX LO frequency.
 * @param phy The AD9361 current state structure.
 * @param lo_freq_hz A variable to store the frequency value (Hz).
 * @return 0 in case of success, negative error code otherwise.
 */
int32_t ad9361_get_tx_lo_freq(uint64_t *lo_freq_hz)
{
    *lo_freq_hz = ad9361_from_clk(ad9361_clk_get_rate(g_pAD9361Phy->ref_clk_scale[TX_RFPLL]));

    return 0;
}

/**
 * Switch between internal and external LO.
 * @param phy The AD9361 state structure.
 * @param int_ext The selected lo (INT_LO, EXT_LO).
 * 			  Accepted values:
 * 			   INT_LO
 * 			   EXT_LO
 * @return 0 in case of success, negative error code otherwise.
 */
int32_t ad9361_set_tx_lo_int_ext(uint8_t int_ext)
{
    if((g_pAD9361Phy->dev_sel == ID_AD9363A) && (int_ext == EXT_LO))
    {
        DBGPRINTLN_CTX("EXT_LO is not supported by AD9363A!");

        return -1;
    }

    g_pAD9361Phy->pdata->use_ext_tx_lo = int_ext;

    return ad9361_clk_mux_set_parent(g_pAD9361Phy->ref_clk_scale[TX_RFPLL], int_ext);
}

/**
 * Set the TX FIR filter configuration.
 * @param phy The AD9361 current state structure.
 * @param fir_cfg FIR filter configuration.
 * @return 0 in case of success, negative error code otherwise.
 *
 * Note: This function will/may affect the data path.
 */
int32_t ad9361_set_tx_fir_config(AD9361_TXFIRConfig fir_cfg)
{
    int32_t ret;

    g_pAD9361Phy->tx_fir_int = fir_cfg.tx_int;

    ret = ad9361_load_fir_filter_coef((enum ad9361_fir_dest)fir_cfg.tx, fir_cfg.tx_gain, fir_cfg.tx_coef_size, fir_cfg.tx_coef);

    return ret;
}

/**
 * Get the TX FIR filter configuration.
 * @param phy The AD9361 current state structure.
 * @param tx_ch The selected TX channel (TX1, TX2).
 * 				Accepted values:
 * 				 TX1 (0)
 * 				 TX2 (1)
 * @param fir_cfg FIR filter configuration output file.
 * @return 0 in case of success, negative error code otherwise.
 */
int32_t ad9361_get_tx_fir_config(uint8_t tx_ch, AD9361_TXFIRConfig *fir_cfg)
{
    int32_t ret;
    uint32_t fir_conf;

    tx_ch += 1;

    ret = ad9361_spi_read(REG_TX_FILTER_CONF);

    if(ret < 0)
        return ret;

    fir_conf = ret;
    fir_cfg->tx_coef_size = (((fir_conf & FIR_NUM_TAPS(7)) >> 5) + 1) * 16;
    fir_cfg->tx_gain = -6 * (fir_conf & TX_FIR_GAIN_6DB);
    fir_cfg->tx = tx_ch;

    fir_conf &= ~FIR_SELECT(3);
    fir_conf |= FIR_SELECT(tx_ch) | FIR_START_CLK;

    ad9361_spi_write(REG_TX_FILTER_CONF, fir_conf);

    for(uint8_t i = 0; i < 128; i++)
    {
        ad9361_spi_write(REG_TX_FILTER_COEF_ADDR, i);
        ret = ad9361_spi_read(REG_TX_FILTER_COEF_READ_DATA_1);

        if(ret < 0)
            return ret;

        fir_cfg->tx_coef[i] = ret;

        ret = ad9361_spi_read(REG_TX_FILTER_COEF_READ_DATA_2);

        if(ret < 0)
            return ret;

        fir_cfg->tx_coef[i] |= ret << 8;
    }

    fir_conf &= ~FIR_START_CLK;
    ad9361_spi_write(REG_TX_FILTER_CONF, fir_conf);

    fir_cfg->tx_int = g_pAD9361Phy->tx_fir_int;

    return 0;
}

/**
 * Enable/disable the TX FIR filter.
 * @param phy The AD9361 current state structure.
 * @param en_dis The option (ENABLE, DISABLE).
 * 				 Accepted values:
 * 				  ENABLE (1)
 * 				  DISABLE (0)
 * @return 0 in case of success, negative error code otherwise.
 *
 * Note: This function will/may affect the data path.
 */
int32_t ad9361_set_tx_fir_en_dis(uint8_t en_dis)
{
    int32_t ret = 0;

    if(g_pAD9361Phy->bypass_tx_fir == !en_dis)
        return ret;

    g_pAD9361Phy->bypass_tx_fir = !en_dis;

    ret = ad9361_validate_enable_fir();

    if(ret < 0)
        g_pAD9361Phy->bypass_tx_fir = true;

    return ret;
}

/**
 * Get the status of the TX FIR filter.
 * @param phy The AD9361 current state structure.
 * @param en_dis The enable/disable status buffer.
 * @return 0 in case of success, negative error code otherwise.
 */
int32_t ad9361_get_tx_fir_en_dis(uint8_t *en_dis)
{
    *en_dis = !g_pAD9361Phy->bypass_tx_fir;

    return 0;
}

/**
 * Get the TX RSSI for the selected channel (TX_MON should be enabled).
 * @param phy The AD9361 current state structure.
 * @param ch The desired channel (TX1, TX2).
 * 			 Accepted values:
 * 			  TX1 (0)
 * 			  TX2 (1)
 * @param rssi_db_x_1000 A variable to store the RSSI.
 * @return 0 in case of success, negative error code otherwise.
 */
int32_t ad9361_get_tx_rssi(uint8_t ch, uint32_t *rssi_db_x_1000)
{
    uint8_t reg_val_buf[3];
    uint32_t val;
    int32_t ret;

    ret = ad9361_spi_readm(REG_TX_RSSI_LSB, reg_val_buf, ARRAY_SIZE(reg_val_buf));

    if(ret < 0)
        return ret;

    switch(ch)
    {
        case 0:
            val = (reg_val_buf[2] << 1) | (reg_val_buf[0] & TX_RSSI_1);
        break;
        case 1:
            val = (reg_val_buf[1] << 1) | ((reg_val_buf[0] & TX_RSSI_2) >> 1);
        break;
        default:
            return -EINVAL;
    }

    val *= RSSI_RESOLUTION;

    *rssi_db_x_1000 = ((val / RSSI_MULTIPLIER) * 1000) + (val % RSSI_MULTIPLIER);

    return 0;
}

/**
 * Set the TX RF output port.
 * @param phy The AD9361 current state structure.
 * @param mode The RF port.
 * 			   Accepted values:
 *				TXA	(0)
 *				TXB	(1)
 * @return 0 in case of success, negative error code otherwise.
 */
int32_t ad9361_set_tx_rf_port_output(uint32_t mode)
{
    int32_t ret;

    g_pAD9361Phy->pdata->rf_tx_output_sel = mode;

    ret = ad9361_rf_port_setup(true, g_pAD9361Phy->pdata->rf_rx_input_sel, g_pAD9361Phy->pdata->rf_tx_output_sel);

    return ret;
}

/**
 * Get the selected TX RF output port.
 * @param phy The AD9361 current state structure.
 * @param mode The RF port.
 * @return 0 in case of success, negative error code otherwise.
 */
int32_t ad9361_get_tx_rf_port_output(uint32_t *mode)
{
    *mode = g_pAD9361Phy->pdata->rf_tx_output_sel;

    return 0;
}

/**
 * Enable/disable the auto calibration.
 * @param phy The AD9361 current state structure.
 * @param en_dis The option (ENABLE, DISABLE).
 * 				 Accepted values:
 * 				  ENABLE (1)
 * 				  DISABLE (0)
 * @return 0 in case of success, negative error code otherwise.
 */
int32_t ad9361_set_tx_auto_cal_en_dis(uint8_t en_dis)
{
    if(en_dis == 0)
        g_pAD9361Phy->auto_cal_en = 0;
    else
        g_pAD9361Phy->auto_cal_en = 1;

    return 0;
}

/**
 * Get the status of the auto calibration flag.
 * @param phy The AD9361 current state structure.
 * @param en_dis The enable/disable status buffer.
 * @return 0 in case of success, negative error code otherwise.
 */
int32_t ad9361_get_tx_auto_cal_en_dis(uint8_t *en_dis)
{
    *en_dis = g_pAD9361Phy->auto_cal_en;

    return 0;
}

/**
 * Store TX fastlock profile.
 * To create a profile tune the synthesizer (ad9361_set_tx_lo_freq()) and then
 * call this function specifying the target profile number.
 * @param phy The AD9361 state structure.
 * @param profile The profile number (0 - 7).
 * 				  Accepted values:
 * 				   0 - 7
 * @return 0 in case of success, negative error code otherwise.
 */
int32_t ad9361_tx_fastlock_store(uint32_t profile)
{
    return ad9361_fastlock_store(1, profile);
}

/**
 * Recall specified TX fastlock profile.
 * When in fastlock pin select mode (init_param->tx_fastlock_pincontrol_enable),
 * the function needs to be called before then the pin-control can be used.
 * @param phy The AD9361 state structure.
 * @param profile The profile number (0 - 7).
 * 				  Accepted values:
 * 				   0 - 7
 * @return 0 in case of success, negative error code otherwise.
 */
int32_t ad9361_tx_fastlock_recall(uint32_t profile)
{
    return ad9361_fastlock_recall(1, profile);
}

/**
 * Load TX fastlock profile. A previously saved profile can be loaded in any
 * of the 8 available slots.
 * @param phy The AD9361 state structure.
 * @param profile The profile number (0 - 7).
 * 				  Accepted values:
 * 				   0 - 7
 * @param values Fastlock profile program data.
 * 				 Example:
 * 				  val0,val1,val2,,val15
 * @return 0 in case of success, negative error code otherwise.
 */
int32_t ad9361_tx_fastlock_load(uint32_t profile, uint8_t *values)
{
    return ad9361_fastlock_load(1, profile, values);
}

/**
 * Save TX fastlock profile. In order to use more than 8 Profiles, an existing
 * profile can be read back and stored by the user application.
 * @param phy The AD9361 state structure.
 * @param profile The profile number (0 - 7).
 * 				  Accepted values:
 * 				   0 - 7
 * @param values Fastlock profile program data.
 * @return 0 in case of success, negative error code otherwise.
 */
int32_t ad9361_tx_fastlock_save(uint32_t profile, uint8_t *values)
{
    return ad9361_fastlock_save(1, profile, values);
}

/**
 * Power down the TX Local Oscillator.
 * @param phy The AD9361 state structure.
 * @param option The option (ON, OFF).
 * 				 Accepted values:
 * 				  ON (0)
 * 				  OFF (1)
 * @return 0 in case of success, negative error code otherwise.
 */
int32_t ad9361_tx_lo_powerdown(uint8_t option)
{
    return ad9361_synth_lo_powerdown(LO_DONTCARE, option ? LO_OFF : LO_ON);
}

/**
 * Get the TX Local Oscillator power status.
 * @param phy The AD9361 state structure.
 * @param option Store the option (ON, OFF).
 * @return 0 in case of success, negative error code otherwise.
 */
int32_t ad9361_get_tx_lo_power(uint8_t *option)
{
    *option = !(g_pAD9361Phy->cached_synth_pd[0] & TX_LO_POWER_DOWN) ? OFF : ON;

    return 0;
}

/**
 * Set the RX and TX path rates.
 * @param phy The AD9361 state structure.
 * @param rx_path_clks RX path rates buffer.
 * @param tx_path_clks TX path rates buffer.
 * @return 0 in case of success, negative error code otherwise.
 *
 * Note: This function will/may affect the data path.
 */
int32_t ad9361_set_trx_path_clks(uint32_t *rx_path_clks, uint32_t *tx_path_clks)
{
    int32_t ret;

    ret = ad9361_set_trx_clock_chain(rx_path_clks, tx_path_clks);

    if(ret < 0)
        return ret;

    ret = ad9361_update_rf_bandwidth(g_pAD9361Phy->current_rx_bw_Hz, g_pAD9361Phy->current_tx_bw_Hz);

    return ret;
}

/**
 * Get the RX and TX path rates.
 * @param phy The AD9361 state structure.
 * @param rx_path_clks RX path rates buffer.
 * @param tx_path_clks TX path rates buffer.
 * @return 0 in case of success, negative error code otherwise.
 */
int32_t ad9361_get_trx_path_clks(uint32_t *rx_path_clks, uint32_t *tx_path_clks)
{
    return ad9361_get_trx_clock_chain(rx_path_clks, tx_path_clks);
}

/**
 * Set the number of channels mode.
 * @param phy The AD9361 state structure.
 * Note: This function also resets the device, some additional
 *       configurations might be necessary
 * @param no_ch_mode Number of channels mode (MODE_1x1, MODE_2x2).
 * 				  Accepted values:
 * 				   MODE_1x1 (1)
 * 				   MODE_2x2 (2)
 * @return 0 in case of success, negative error code otherwise.
 */
int32_t ad9361_set_no_ch_mode(uint8_t no_ch_mode)
{
    int32_t ret = 0;

    switch(no_ch_mode)
    {
        case MODE_1x1:
            if(g_pAD9361Phy->pdata->rx2tx2 == 0)
                return -EALREADY;

            g_pAD9361Phy->pdata->rx2tx2 = 0;
        break;
        case MODE_2x2:
            if(g_pAD9361Phy->pdata->rx2tx2 == 1)
                return -EALREADY;

            g_pAD9361Phy->pdata->rx2tx2 = 1;
        break;
        default:
            return -EINVAL;
    }

    ad9361_reset();
    ad9361_spi_write(REG_SPI_CONF, SOFT_RESET | _SOFT_RESET);
    ad9361_spi_write(REG_SPI_CONF, 0x0);

    ad9361_clear_state();

    g_pAD9361Phy->clks[TX_REFCLK]->rate = ad9361_clk_factor_recalc_rate(g_pAD9361Phy->ref_clk_scale[TX_REFCLK], g_pAD9361Phy->clk_refin->rate);
    g_pAD9361Phy->clks[TX_REFCLK]->rate = ad9361_clk_factor_recalc_rate(g_pAD9361Phy->ref_clk_scale[TX_REFCLK], g_pAD9361Phy->clk_refin->rate);
    g_pAD9361Phy->clks[RX_REFCLK]->rate = ad9361_clk_factor_recalc_rate(g_pAD9361Phy->ref_clk_scale[RX_REFCLK], g_pAD9361Phy->clk_refin->rate);
    g_pAD9361Phy->clks[BB_REFCLK]->rate = ad9361_clk_factor_recalc_rate(g_pAD9361Phy->ref_clk_scale[BB_REFCLK], g_pAD9361Phy->clk_refin->rate);
    g_pAD9361Phy->clks[BBPLL_CLK]->rate = ad9361_bbpll_recalc_rate(g_pAD9361Phy->ref_clk_scale[BBPLL_CLK], g_pAD9361Phy->clks[BB_REFCLK]->rate);
    g_pAD9361Phy->clks[ADC_CLK]->rate = ad9361_clk_factor_recalc_rate(g_pAD9361Phy->ref_clk_scale[ADC_CLK], g_pAD9361Phy->clks[BBPLL_CLK]->rate);
    g_pAD9361Phy->clks[R2_CLK]->rate = ad9361_clk_factor_recalc_rate(g_pAD9361Phy->ref_clk_scale[R2_CLK], g_pAD9361Phy->clks[ADC_CLK]->rate);
    g_pAD9361Phy->clks[R1_CLK]->rate = ad9361_clk_factor_recalc_rate(g_pAD9361Phy->ref_clk_scale[R1_CLK], g_pAD9361Phy->clks[R2_CLK]->rate);
    g_pAD9361Phy->clks[CLKRF_CLK]->rate = ad9361_clk_factor_recalc_rate(g_pAD9361Phy->ref_clk_scale[CLKRF_CLK], g_pAD9361Phy->clks[R1_CLK]->rate);
    g_pAD9361Phy->clks[RX_SAMPL_CLK]->rate = ad9361_clk_factor_recalc_rate(g_pAD9361Phy->ref_clk_scale[RX_SAMPL_CLK], g_pAD9361Phy->clks[CLKRF_CLK]->rate);
    g_pAD9361Phy->clks[DAC_CLK]->rate = ad9361_clk_factor_recalc_rate(g_pAD9361Phy->ref_clk_scale[DAC_CLK], g_pAD9361Phy->clks[ADC_CLK]->rate);
    g_pAD9361Phy->clks[T2_CLK]->rate = ad9361_clk_factor_recalc_rate(g_pAD9361Phy->ref_clk_scale[T2_CLK], g_pAD9361Phy->clks[DAC_CLK]->rate);
    g_pAD9361Phy->clks[T1_CLK]->rate = ad9361_clk_factor_recalc_rate(g_pAD9361Phy->ref_clk_scale[T1_CLK], g_pAD9361Phy->clks[T2_CLK]->rate);
    g_pAD9361Phy->clks[CLKTF_CLK]->rate = ad9361_clk_factor_recalc_rate(g_pAD9361Phy->ref_clk_scale[CLKTF_CLK], g_pAD9361Phy->clks[T1_CLK]->rate);
    g_pAD9361Phy->clks[TX_SAMPL_CLK]->rate = ad9361_clk_factor_recalc_rate(g_pAD9361Phy->ref_clk_scale[TX_SAMPL_CLK], g_pAD9361Phy->clks[CLKTF_CLK]->rate);
    g_pAD9361Phy->clks[RX_RFPLL_INT]->rate = ad9361_rfpll_int_recalc_rate(g_pAD9361Phy->ref_clk_scale[RX_RFPLL_INT], g_pAD9361Phy->clks[RX_REFCLK]->rate);
    g_pAD9361Phy->clks[TX_RFPLL_INT]->rate = ad9361_rfpll_int_recalc_rate(g_pAD9361Phy->ref_clk_scale[TX_RFPLL_INT], g_pAD9361Phy->clks[TX_REFCLK]->rate);
    g_pAD9361Phy->clks[RX_RFPLL_DUMMY]->rate = ad9361_rfpll_dummy_recalc_rate(g_pAD9361Phy->ref_clk_scale[RX_RFPLL_DUMMY]);
    g_pAD9361Phy->clks[TX_RFPLL_DUMMY]->rate = ad9361_rfpll_dummy_recalc_rate(g_pAD9361Phy->ref_clk_scale[TX_RFPLL_DUMMY]);
    g_pAD9361Phy->clks[RX_RFPLL]->rate = ad9361_rfpll_recalc_rate(g_pAD9361Phy->ref_clk_scale[RX_RFPLL]);
    g_pAD9361Phy->clks[TX_RFPLL]->rate = ad9361_rfpll_recalc_rate(g_pAD9361Phy->ref_clk_scale[TX_RFPLL]);

    ret = ad9361_setup();

    if(ret < 0)
        return ret;

    axi_ad9361_ch_no_updated();

    return 0;
}

/**
 * Enable/disable the TRX FIR filters.
 * @param phy The AD9361 current state structure.
 * @param en_dis The option (ENABLE, DISABLE).
 * 				 Accepted values:
 * 				  ENABLE (1)
 * 				  DISABLE (0)
 * @return 0 in case of success, negative error code otherwise.
 *
 * Note: This function will/may affect the data path.
 */
int32_t ad9361_set_trx_fir_en_dis(uint8_t en_dis)
{
    int32_t ret = 0;

    if((g_pAD9361Phy->bypass_rx_fir == g_pAD9361Phy->bypass_tx_fir) && (g_pAD9361Phy->bypass_rx_fir == !en_dis))
        return ret;

    g_pAD9361Phy->bypass_rx_fir = !en_dis;
    g_pAD9361Phy->bypass_tx_fir = !en_dis;
    ret = ad9361_validate_enable_fir();

    if(ret < 0)
    {
        g_pAD9361Phy->bypass_rx_fir = true;
        g_pAD9361Phy->bypass_tx_fir = true;
    }

    return ret;
}

/**
 * Set the OSR rate governor.
 * @param phy The AD9361 current state structure.
 * @param rate_gov OSR rate governor (highest, nominal).
 * 				   Accepted values:
 * 					HIGHEST_OSR (0 - highest OSR)
 * 					NOMINAL_OSR (1 - nominal)
 * @return 0 in case of success, negative error code otherwise.
 */
int32_t ad9361_set_trx_rate_gov(uint32_t rate_gov)
{
    if(rate_gov == 0)
        g_pAD9361Phy->rate_governor = 0;
    else
        g_pAD9361Phy->rate_governor = 1;

    return 0;
}

/**
 * Get the OSR rate governor.
 * @param phy The AD9361 current state structure.
 * @param rate_gov Option buffer.
 * @return 0 in case of success, negative error code otherwise.
 */
int32_t ad9361_get_trx_rate_gov(uint32_t *rate_gov)
{
    *rate_gov = g_pAD9361Phy->rate_governor;

    return 0;
}

/**
 * Perform the selected calibration.
 * @param phy The AD9361 state structure.
 * @param cal The selected calibration (TX_QUAD_CAL, RFDC_CAL).
 * 			  Accepted values:
 * 			   TX_QUAD_CAL
 * 			   RFDC_CAL
 * @param arg For TX_QUAD_CAL - the optional RX phase value overwrite (set to zero).
 * @return 0 in case of success, negative error code otherwise.
 *
 * Note: This function will/may affect the data path.
 */
int32_t ad9361_do_calib(uint32_t cal, int32_t arg)
{
    return ad9361_do_calib_run(cal, arg);
}

/**
 * Load and enable TRX FIR filters configurations.
 * @param phy The AD9361 current state structure.
 * @param rx_fir_cfg RX FIR filter configuration.
 * @param tx_fir_cfg TX FIR filter configuration.
 * @return 0 in case of success, negative error code otherwise.
 *
 * Note: This function will/may affect the data path.
 */
int32_t ad9361_trx_load_enable_fir(AD9361_RXFIRConfig rx_fir_cfg, AD9361_TXFIRConfig tx_fir_cfg)
{
    int32_t rtx = -1, rrx = -1, ret;

    g_pAD9361Phy->filt_rx_bw_Hz = 0;
    g_pAD9361Phy->filt_tx_bw_Hz = 0;
    g_pAD9361Phy->filt_valid = false;

    if(tx_fir_cfg.tx_path_clks[TX_SAMPL_FREQ])
    {
        memcpy(g_pAD9361Phy->filt_tx_path_clks, tx_fir_cfg.tx_path_clks, sizeof(g_pAD9361Phy->filt_tx_path_clks));
        rtx = 0;
    }

    if(rx_fir_cfg.rx_path_clks[RX_SAMPL_FREQ])
    {
        memcpy(g_pAD9361Phy->filt_rx_path_clks, rx_fir_cfg.rx_path_clks, sizeof(g_pAD9361Phy->filt_rx_path_clks));

        rrx = 0;
    }

    if(tx_fir_cfg.tx_bandwidth)
        g_pAD9361Phy->filt_tx_bw_Hz = tx_fir_cfg.tx_bandwidth;

    if(rx_fir_cfg.rx_bandwidth)
        g_pAD9361Phy->filt_rx_bw_Hz = rx_fir_cfg.rx_bandwidth;

    ret = ad9361_set_tx_fir_config(tx_fir_cfg);

    if(ret < 0)
        return ret;

    ret = ad9361_set_rx_fir_config(rx_fir_cfg);

    if(ret < 0)
        return ret;

    if(!(rrx | rtx))
        g_pAD9361Phy->filt_valid = true;

    ret = ad9361_set_trx_fir_en_dis(1);

    if(ret < 0)
        return ret;

    return 0;
}

/**
 * Do DCXO coarse tuning.
 * @param phy The AD9361 current state structure.
 * @param coarse The DCXO coarse tuning value.
 * @return 0 in case of success, negative error code otherwise.
 */
int32_t ad9361_do_dcxo_tune_coarse(uint32_t coarse)
{
    g_pAD9361Phy->pdata->dcxo_coarse = coarse;

    return ad9361_set_dcxo_tune(g_pAD9361Phy->pdata->dcxo_coarse, g_pAD9361Phy->pdata->dcxo_fine);
}

/**
 * Do DCXO fine tuning.
 * @param phy The AD9361 current state structure.
 * @param fine The DCXO fine tuning value.
 * @return 0 in case of success, negative error code otherwise.
 */
int32_t ad9361_do_dcxo_tune_fine(uint32_t fine)
{
    g_pAD9361Phy->pdata->dcxo_fine = fine;

    return ad9361_set_dcxo_tune(g_pAD9361Phy->pdata->dcxo_coarse, g_pAD9361Phy->pdata->dcxo_fine);
}

/**
 * Get the temperature.
 * @param phy The AD9361 current state structure.
 * @param temp The temperature (degrees C * 1000).
 * @return 0 in case of success, negative error code otherwise.
 */
int32_t ad9361_get_temperature(int32_t *temp)
{
    *temp = ad9361_get_temp();

    return 0;
}
