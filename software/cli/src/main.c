#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <fcntl.h>
#include <unistd.h>
#include <errno.h>
#include <time.h>
#include "ioctl.h"
#include "axi.h"
#include "axi_gpio.h"
#include "axi_quad_spi.h"
#include "axi_iic.h"
#include "axi_xadc.h"
#include "axi_irq_ctrl.h"
#include "axi_i2s.h"
#include "axi_rf_tstamp.h"
#include "axi_dna.h"
#include "axi_dmac.h"
#include "axi_ad9361.h"
#include "ad9361_api.h"
#include "si5351.h"
#include "r8v97003.h"
#include "debug_macros.h"
#include "utils.h"

#include <netinet/in.h>
#include <arpa/inet.h>
#include <sys/socket.h>

const uint64_t ullDMABufferSize = 16 * 1024 * 1024 * sizeof(uint16_t);
uint64_t ullDMABufferPhys;
void *pDMABufferMap;
void *pDMABufferBase;
void *pAXIFlashMap;
void *pAXIFlashBase;
void *pAXIBRAMMap;
void *pAXIBRAMBase;
void *pAXIDDRMap;
void *pAXIDDRBase;
void *pAXIPeriphMap;
void *pAXIPeriphBase;
void *pAXIDMACBase[AXI_DMAC_NUM_INSTANCES];
void *pAXIGPIOBase[AXI_GPIO_NUM_INSTANCES];
void *pAXIIICBase[AXI_IIC_NUM_INSTANCES];
void *pAXIQuadSPIBase[AXI_QUAD_SPI_NUM_INSTANCES];
void *pAXIPCIeBase;
void *pAXII2SBase;
void *pAXIXADCBase;
void *pAXIRFTstampBase;
void *pAXIIRQCtrlBase;
void *pAXIDNABase;
void *pAXIAD9361Base;
int iDeviceFile;


AD9361_InitParam trx_init =
{
    /* Device selection */
    .dev_sel = ID_AD9361,
    /* Reference Clock */
    .reference_clk_rate = 0, // To be initialized later
    /* Base Configuration */
    .two_rx_two_tx_mode_enable = 0,
    .one_rx_one_tx_mode_use_rx_num = 1,
    .one_rx_one_tx_mode_use_tx_num = 1,
    .frequency_division_duplex_mode_enable = 1,
    .frequency_division_duplex_independent_mode_enable = 0,
    .tdd_use_dual_synth_mode_enable = 0,
    .tdd_skip_vco_cal_enable = 0,
    .tx_fastlock_delay_ns = 0,
    .rx_fastlock_delay_ns = 0,
    .rx_fastlock_pincontrol_enable = 0,
    .tx_fastlock_pincontrol_enable = 0,
    .external_rx_lo_enable = 0,
    .external_tx_lo_enable = 0,
    .dc_offset_tracking_update_event_mask = 5,
    .dc_offset_attenuation_high_range = 6,
    .dc_offset_attenuation_low_range = 5,
    .dc_offset_count_high_range = 0x28,
    .dc_offset_count_low_range = 0x32,
    .split_gain_table_mode_enable = 0,
    .trx_synthesizer_target_fref_overwrite_hz = MAX_SYNTH_FREF,
    .qec_tracking_slow_mode_enable = 0,
    /* ENSM Control */
    .ensm_enable_pin_pulse_mode_enable = 0,
    .ensm_enable_txnrx_control_enable = 0,
    /* LO Control */
    .rx_synthesizer_frequency_hz = 101400000UL, // 101.4 MHz
    .tx_synthesizer_frequency_hz = 100000000UL, // 100 MHz
    .tx_lo_powerdown_managed_enable = 1,
    /* Rate & BW Control */
    .rx_path_clock_frequencies = {983040000, 245760000, 122880000, 61440000, 30720000, 30720000}, // BBPLL, ADC, R2CLK, R1CLK, CLKRF, RSAMPL
    .tx_path_clock_frequencies = {983040000, 122880000, 122880000, 61440000, 30720000, 30720000}, // BBPLL, DAC, T2CLK, T1CLK, CLKTF, TSAMPL
    .rf_rx_bandwidth_hz = 20000000, // 20 MHz
    .rf_tx_bandwidth_hz = 20000000, // 20 MHz
    /* RF Port Control */
    .rx_rf_port_input_select = 0,
    .tx_rf_port_input_select = 0,
    /* TX Attenuation Control */
    .tx_attenuation_mdB = 10000, // 10 dB
    .update_tx_gain_in_alert_enable = 0,
    /* Reference Clock Control */
    .xo_disable_use_ext_refclk_enable = 1,
    .dcxo_coarse_and_fine_tune = {8, 5920},
    .clk_output_mode_select = CLKOUT_DISABLE,
    /* Gain Control */
    .gc_rx1_mode = RF_GAIN_MGC,
    .gc_rx2_mode = RF_GAIN_SLOWATTACK_AGC,
    .gc_adc_large_overload_thresh = 58,
    .gc_adc_ovr_sample_size = 4,
    .gc_adc_small_overload_thresh = 47,
    .gc_dec_pow_measurement_duration = 8192,
    .gc_dig_gain_enable = 0,
    .gc_lmt_overload_high_thresh = 800,
    .gc_lmt_overload_low_thresh = 704,
    .gc_low_power_thresh = 24,
    .gc_max_dig_gain = 15,
    .gc_use_rx_fir_out_for_dec_pwr_meas_enable = 0,
    /* Gain MGC Control */
    .mgc_dec_gain_step = 2,
    .mgc_inc_gain_step = 2,
    .mgc_rx1_ctrl_inp_enable = 0,
    .mgc_rx2_ctrl_inp_enable = 0,
    .mgc_split_table_ctrl_inp_gain_mode = 0,
    /* Gain AGC Control */
    .agc_adc_large_overload_exceed_counter = 10,
    .agc_adc_large_overload_inc_steps = 2,
    .agc_adc_lmt_small_overload_prevent_gain_inc_enable = 0,
    .agc_adc_small_overload_exceed_counter = 10,
    .agc_dig_gain_step_size = 4,
    .agc_dig_saturation_exceed_counter = 3,
    .agc_gain_update_interval_us = 1000,
    .agc_immed_gain_change_if_large_adc_overload_enable = 0,
    .agc_immed_gain_change_if_large_lmt_overload_enable = 0,
    .agc_inner_thresh_high = 10,
    .agc_inner_thresh_high_dec_steps = 1,
    .agc_inner_thresh_low = 12,
    .agc_inner_thresh_low_inc_steps = 1,
    .agc_lmt_overload_large_exceed_counter = 10,
    .agc_lmt_overload_large_inc_steps = 2,
    .agc_lmt_overload_small_exceed_counter = 10,
    .agc_outer_thresh_high = 5,
    .agc_outer_thresh_high_dec_steps = 2,
    .agc_outer_thresh_low = 18,
    .agc_outer_thresh_low_inc_steps = 2,
    .agc_attack_delay_extra_margin_us = 1,
    .agc_sync_for_gain_counter_enable = 0,
    /* Fast AGC */
    .fagc_dec_pow_measuremnt_duration = 64,
    .fagc_state_wait_time_ns = 260,
    /* Fast AGC - Low Power */
    .fagc_allow_agc_gain_increase = 0,
    .fagc_lp_thresh_increment_time = 5,
    .fagc_lp_thresh_increment_steps = 1,
    /* Fast AGC - Lock Level (Lock Level is set via slow AGC inner high threshold) */
    .fagc_lock_level_lmt_gain_increase_en = 1,
    .fagc_lock_level_gain_increase_upper_limit = 5,
    /* Fast AGC - Peak Detectors and Final Settling */
    .fagc_lpf_final_settling_steps = 1,
    .fagc_lmt_final_settling_steps = 1,
    .fagc_final_overrange_count = 3,
    /* Fast AGC - Final Power Test */
    .fagc_gain_increase_after_gain_lock_en = 0,
    /* Fast AGC - Unlocking the Gain */
    .fagc_gain_index_type_after_exit_rx_mode = 0,
    .fagc_use_last_lock_level_for_set_gain_en = 1,
    .fagc_rst_gla_stronger_sig_thresh_exceeded_en = 1,
    .fagc_optimized_gain_offset = 5,
    .fagc_rst_gla_stronger_sig_thresh_above_ll = 10,
    .fagc_rst_gla_engergy_lost_sig_thresh_exceeded_en = 1,
    .fagc_rst_gla_engergy_lost_goto_optim_gain_en = 1,
    .fagc_rst_gla_engergy_lost_sig_thresh_below_ll = 10,
    .fagc_energy_lost_stronger_sig_gain_lock_exit_cnt = 8,
    .fagc_rst_gla_large_adc_overload_en = 1,
    .fagc_rst_gla_large_lmt_overload_en = 1,
    .fagc_rst_gla_en_agc_pulled_high_en = 0,
    .fagc_rst_gla_if_en_agc_pulled_high_mode = 0,
    .fagc_power_measurement_duration_in_state5 = 64,
    .fagc_large_overload_inc_steps = 2,
    /* RSSI Control */
    .rssi_delay = 1,
    .rssi_duration = 1000,
    .rssi_restart_mode = 3,
    .rssi_unit_is_rx_samples_enable = 0,
    .rssi_wait = 1,
    /* Aux ADC Control */
    .aux_adc_decimation = 256,
    .aux_adc_rate = 40000000UL,
    /* AuxDAC Control */
    .aux_dac_manual_mode_enable = 1,
    .aux_dac1_default_value_mV = 0,
    .aux_dac1_active_in_rx_enable = 0,
    .aux_dac1_active_in_tx_enable = 0,
    .aux_dac1_active_in_alert_enable = 0,
    .aux_dac1_rx_delay_us = 0,
    .aux_dac1_tx_delay_us = 0,
    .aux_dac2_default_value_mV = 0,
    .aux_dac2_active_in_rx_enable = 0,
    .aux_dac2_active_in_tx_enable = 0,
    .aux_dac2_active_in_alert_enable = 0,
    .aux_dac2_rx_delay_us = 0,
    .aux_dac2_tx_delay_us = 0,
    /* Temperature Sensor Control */
    .temp_sense_decimation = 256,
    .temp_sense_measurement_interval_ms = 1000,
    .temp_sense_offset_signed = 0xCE,
    .temp_sense_periodic_measurement_enable = 1,
    /* Control Out Setup */
    .ctrl_outs_enable_mask = 0xFF,
    .ctrl_outs_index = 0,
    /* External LNA Control */
    .elna_settling_delay_ns = 0,
    .elna_gain_mdB = 0,
    .elna_bypass_loss_mdB = 0,
    .elna_rx1_gpo0_control_enable = 0,
    .elna_rx2_gpo1_control_enable = 0,
    .elna_gaintable_all_index_enable = 0,
    /* Digital Interface Control */
    .digital_interface_tune_skip_mode = 2, // Set to 0 and let calibration run
    .digital_interface_tune_fir_disable = 1,
    .pp_tx_swap_enable = 1,
    .pp_rx_swap_enable = 1,
    .tx_channel_swap_enable = 0,
    .rx_channel_swap_enable = 0,
    .rx_frame_pulse_mode_enable = 1,
    .two_t_two_r_timing_enable = 0,
    .invert_data_bus_enable = 0,
    .invert_data_clk_enable = 0,
    .fdd_alt_word_order_enable = 0,
    .invert_rx_frame_enable = 0,
    .fdd_rx_rate_2tx_enable = 0,
    .swap_ports_enable = 1,
    .single_data_rate_enable = 0,
    .lvds_mode_enable = 0,
    .half_duplex_mode_enable = 0,
    .single_port_mode_enable = 0,
    .full_port_enable = 1,
    .full_duplex_swap_bits_enable = 0,
    .delay_rx_data = 0,
    .rx_data_clock_delay = 9, // Set from calibration run
    .rx_data_delay = 0,
    .tx_fb_clock_delay = 10, // Set from calibration run
    .tx_data_delay = 0,
    .lvds_bias_mV = 150,
    .lvds_rx_onchip_termination_enable = 0,
    .rx1rx2_phase_inversion_en = 0,
    .lvds_invert1_control = 0x00,
    .lvds_invert2_control = 0x00,
    /* GPO Control */
    .gpo_manual_mode_enable = 1,
    .gpo_manual_mode_enable_mask = 0x00,
    .gpo0_inactive_state_high_enable = 0,
    .gpo1_inactive_state_high_enable = 0,
    .gpo2_inactive_state_high_enable = 0,
    .gpo3_inactive_state_high_enable = 0,
    .gpo0_slave_rx_enable = 0,
    .gpo0_slave_tx_enable = 0,
    .gpo1_slave_rx_enable = 0,
    .gpo1_slave_tx_enable = 0,
    .gpo2_slave_rx_enable = 0,
    .gpo2_slave_tx_enable = 0,
    .gpo3_slave_rx_enable = 0,
    .gpo3_slave_tx_enable = 0,
    .gpo0_rx_delay_us = 0,
    .gpo0_tx_delay_us = 0,
    .gpo1_rx_delay_us = 0,
    .gpo1_tx_delay_us = 0,
    .gpo2_rx_delay_us = 0,
    .gpo2_tx_delay_us = 0,
    .gpo3_rx_delay_us = 0,
    .gpo3_tx_delay_us = 0,
    /* Tx Monitor Control */
    .low_high_gain_threshold_mdB = 37000,
    .low_gain_dB = 0,
    .high_gain_dB =24 ,
    .tx_mon_track_en = 0,
    .one_shot_mode_en = 0,
    .tx_mon_delay = 511,
    .tx_mon_duration = 8192,
    .tx1_mon_front_end_gain = 2,
    .tx2_mon_front_end_gain = 2,
    .tx1_mon_lo_cm = 48,
    .tx2_mon_lo_cm = 48,

    /* External LO clocks */
    .ad9361_rfpll_ext_recalc_rate = NULL,
    .ad9361_rfpll_ext_round_rate = NULL,
    .ad9361_rfpll_ext_set_rate = NULL,
};
AD9361_RXFIRConfig rx_fir_config =
{	// BPF PASSBAND 3/20 fs to 1/4 fs
	3, // rx
	0, // rx_gain
	1, // rx_dec
	{
		-4, -6, -37, 35, 186, 86, -284, -315,
			107, 219, -4, 271, 558, -307, -1182, -356,
			658, 157, 207, 1648, 790, -2525, -2553, 748,
			865, -476, 3737, 6560, -3583, -14731, -5278, 14819,
			14819, -5278, -14731, -3583, 6560, 3737, -476, 865,
			748, -2553, -2525, 790, 1648, 207, 157, 658,
			-356, -1182, -307, 558, 271, -4, 219, 107,
			-315, -284, 86, 186, 35, -37, -6, -4,
			0, 0, 0, 0, 0, 0, 0, 0,
			0, 0, 0, 0, 0, 0, 0, 0,
			0, 0, 0, 0, 0, 0, 0, 0,
			0, 0, 0, 0, 0, 0, 0, 0,
			0, 0, 0, 0, 0, 0, 0, 0,
			0, 0, 0, 0, 0, 0, 0, 0,
			0, 0, 0, 0, 0, 0, 0, 0,
			0, 0, 0, 0, 0, 0, 0, 0
		}, // rx_coef[128]
	64, // rx_coef_size
	{0, 0, 0, 0, 0, 0}, //rx_path_clks[6]
	0 // rx_bandwidth
};
AD9361_TXFIRConfig tx_fir_config =
{	// BPF PASSBAND 3/20 fs to 1/4 fs
	3, // tx
	-6, // tx_gain
	1, // tx_int
	{
		-4, -6, -37, 35, 186, 86, -284, -315,
			107, 219, -4, 271, 558, -307, -1182, -356,
			658, 157, 207, 1648, 790, -2525, -2553, 748,
			865, -476, 3737, 6560, -3583, -14731, -5278, 14819,
			14819, -5278, -14731, -3583, 6560, 3737, -476, 865,
			748, -2553, -2525, 790, 1648, 207, 157, 658,
			-356, -1182, -307, 558, 271, -4, 219, 107,
			-315, -284, 86, 186, 35, -37, -6, -4,
			0, 0, 0, 0, 0, 0, 0, 0,
			0, 0, 0, 0, 0, 0, 0, 0,
			0, 0, 0, 0, 0, 0, 0, 0,
			0, 0, 0, 0, 0, 0, 0, 0,
			0, 0, 0, 0, 0, 0, 0, 0,
			0, 0, 0, 0, 0, 0, 0, 0,
			0, 0, 0, 0, 0, 0, 0, 0,
			0, 0, 0, 0, 0, 0, 0, 0
		}, // tx_coef[128]
	64, // tx_coef_size
	{0, 0, 0, 0, 0, 0}, // tx_path_clks[6]
	0 // tx_bandwidth
};

uint8_t icyradio_get_trx_datapath_delay(int32_t *plTx, int32_t *plRx)
{
    if(plTx == NULL || plRx == NULL)
        return 0;

    const uint32_t ulSamples = 512;
    const uint32_t ulBufferAddr = AXI_MIG_DDR3_BASE + 0x00000000;

    uint32_t ulBufferSize = 2 * ulSamples * sizeof(uint16_t) * axi_ad9361_get_num_channels();
    uint16_t *pusBuffer = (uint16_t *)malloc(ulBufferSize);

    if(pusBuffer == NULL)
        return 0;

    // Backup DDR data and write test pattern to half of the buffer
    for(uint32_t i = 0; i < ulBufferSize; i += sizeof(uint16_t))
    {
        pusBuffer[i / sizeof(uint16_t)] = *(volatile uint16_t *)((uintptr_t)pAXIDDRBase + (ulBufferAddr - AXI_MIG_DDR3_BASE) + i);

        if(i < (ulBufferSize >> 1))
            *(volatile uint16_t *)((uintptr_t)pAXIDDRBase + (ulBufferAddr - AXI_MIG_DDR3_BASE) + i) = (((i >> 1) % (ulSamples / 2)) << 4) | 0x4000;
        else
            *(volatile uint16_t *)((uintptr_t)pAXIDDRBase + (ulBufferAddr - AXI_MIG_DDR3_BASE) + i) = 0xFFFF;
    }

    // DMA Descriptors
	axi_dmac_transfer_t sWrXfer =
    {
        .ulSize = ulBufferSize >> 1,
        .eFlags = 0,
        .ulSrcAddress = (uintptr_t)ulBufferAddr,
        .pfCallback = NULL,
        .pCallbackArg = NULL
	};
	axi_dmac_transfer_t sRdXfer =
    {
        .ulSize = ulBufferSize >> 1,
        .eFlags = 0,
        .ulDestAddress = (uintptr_t)ulBufferAddr + (ulBufferSize >> 1),
        .pfCallback = NULL,
        .pCallbackArg = NULL
	};

    // Save current chip state
    uint8_t ubENSMState = ad9361_ensm_get_state();
    int32_t lBISTLoopback = g_pAD9361Phy->bist_loopback_mode;

    if(!g_pAD9361Phy->pdata->fdd)
        ad9361_set_ensm_mode(true, false);

    ad9361_bist_loopback(1);

    // Save current AXI ADC & DAC state
    uint8_t ubADCIQCorrEn[4]; // Max number of channels for AD9361
    uint8_t ubADCDCFiltEn[4];
    int16_t sADCDCOffset[4];
    enum axi_ad9361_adc_data_sel eADCDCDataSel[4];
    uint8_t ubDACIQCorrEn[4];
    enum axi_ad9361_dac_data_sel eDACDataSel[4];

    for(uint8_t i = 0; i < 4; i++)
    {
        if(i < axi_ad9361_get_num_channels())
        {
            ubADCIQCorrEn[i] = axi_ad9361_adc_get_calib_enable(i);
            ubADCDCFiltEn[i] = axi_ad9361_adc_get_dcfilt_enable(i);
            sADCDCOffset[i] = axi_ad9361_adc_get_dcoffset(i);
            eADCDCDataSel[i] = axi_ad9361_adc_get_data_sel(i);

            ubDACIQCorrEn[i] = axi_ad9361_dac_get_calib_enable(i);
            eDACDataSel[i] = axi_ad9361_dac_get_data_sel(i);

            axi_ad9361_adc_set_calib_enable(i, 0); // Disable ADC IQ correction
            axi_ad9361_adc_set_dcfilt_enable(i, 0); // Disable DC filter
            axi_ad9361_adc_set_dcoffset(i, 0); // Set DC offset to 0
            axi_ad9361_adc_set_data_sel(i, AXI_ADC_DATA_SEL_INPUT_DATA); // Select input data to DMA

            axi_ad9361_dac_set_calib_enable(i, 0); // Disable DAC IQ correction
            axi_ad9361_dac_set_data_sel(i, AXI_DAC_DATA_SEL_DMA); // Select DMA
        }
        else
        {
            axi_ad9361_dac_set_data_sel(i, AXI_DAC_DATA_SEL_ZERO); // Select zero for unused channels
        }
    }

    axi_ad9361_dac_sync();

    // Disable TX & RX and Enable counter
    axi_rf_tstamp_cnt_tx_enable(0);
    axi_rf_tstamp_tx_enable(0);
    axi_rf_tstamp_cnt_rx_enable(0);
    axi_rf_tstamp_rx_enable(0);
    axi_rf_tstamp_cnt_enable(1);

    uint8_t ubRet = 0;

    // Submit DMA transfers
    int8_t bWrXferID = axi_dmac_transfer_submit(AXI_DMAC_RF_TX_INST, &sWrXfer);

    if(bWrXferID < 0)
    {
        DBGPRINTLN_CTX("Failed to submit TX DMA transfer");

        goto out;
    }

    int8_t bRdXferID = axi_dmac_transfer_submit(AXI_DMAC_RF_RX_INST, &sRdXfer);

    if(bWrXferID < 0)
    {
        DBGPRINTLN_CTX("Failed to submit RX DMA transfer");

        goto out;
    }

    // Setup timestamps
    uint64_t ullCounter = axi_rf_tstamp_get_cnt();

    uint64_t ullTXCounter = ullCounter + 50 * axi_ad9361_adc_get_interface_freq(125000000ULL) / 1000;
    uint64_t ullRXCounter = ullCounter + 50 * axi_ad9361_adc_get_interface_freq(125000000ULL) / 1000;
    axi_rf_tstamp_set_tx_cnt(ullTXCounter);
    axi_rf_tstamp_set_rx_cnt(ullRXCounter);

    // Enable counters
    axi_rf_tstamp_cnt_rx_enable(1);
    axi_rf_tstamp_cnt_tx_enable(1);

    // While the TX counter is armed, wait
    while(axi_rf_tstamp_cnt_tx_enabled())
        usleep(0);

    // Wait for DMA transfer completion
    if(!axi_dmac_transfer_wait_completion(AXI_DMAC_RF_TX_INST, bWrXferID, 100))
    {
        DBGPRINTLN_CTX("TX DMA transfer did not complete in time");

        goto out;
    }
    if(!axi_dmac_transfer_wait_completion(AXI_DMAC_RF_RX_INST, bRdXferID, 100))
    {
        DBGPRINTLN_CTX("RX DMA transfer did not complete in time");

        goto out;
    }

    // Disable TX & RX
    axi_rf_tstamp_tx_enable(0);
    axi_rf_tstamp_rx_enable(0);

    // Check received data
    for(uint32_t i = 0; i < (ulBufferSize >> 1); i += axi_ad9361_get_num_channels() * sizeof(uint16_t))
    {
        uint16_t s[8];

        for(uint8_t j = 0; j < 8; j++)
            s[j] = *((volatile uint16_t *)((uintptr_t)pAXIDDRBase + (sRdXfer.ulDestAddress - AXI_MIG_DDR3_BASE) + i + j * sizeof(uint16_t)));

        // DBGPRINTLN_CTX("%04X %04X %04X %04X %04X %04X %04X %04X", s[0], s[1], s[2], s[3], s[4], s[5], s[6], s[7]);

        if(s[0] == 0x0400 && s[1] == 0x0401 && s[2] == 0x0402 && s[3] == 0x0403 && s[4] == 0x0404 && s[5] == 0x0405 && s[6] == 0x0406 && s[7] == 0x0407)
        {
            uint32_t ulDelay = i / sizeof(uint16_t) / axi_ad9361_get_num_channels();

            ulDelay *= axi_ad9361_get_sampling_freq_ratio();

            *plTx = -(ulDelay / 2);
            *plRx = ulDelay & 1 ? ulDelay / 2 + 1 : ulDelay / 2;

            ubRet = 1;

            break;
        }
    }

out:
    // Restore AXI ADC & DAC state
    for(uint8_t i = 0; i < axi_ad9361_get_num_channels(); i++)
    {
        axi_ad9361_adc_set_calib_enable(i, ubADCIQCorrEn[i]);
        axi_ad9361_adc_set_dcfilt_enable(i, ubADCDCFiltEn[i]);
        axi_ad9361_adc_set_dcoffset(i, sADCDCOffset[i]);
        axi_ad9361_adc_set_data_sel(i, eADCDCDataSel[i]);

        axi_ad9361_dac_set_calib_enable(i, ubDACIQCorrEn[i]);
        axi_ad9361_dac_set_data_sel(i, eDACDataSel[i]);
    }

    axi_ad9361_dac_sync();

    // Restore chip state
    ad9361_bist_loopback(lBISTLoopback);

    if(!g_pAD9361Phy->pdata->fdd)
        ad9361_set_ensm_mode(g_pAD9361Phy->pdata->fdd, g_pAD9361Phy->pdata->ensm_pin_ctrl);

    // Restore DDR data
    for(uint32_t i = 0; i < ulBufferSize; i += sizeof(uint16_t))
        *(volatile uint16_t *)((uintptr_t)pAXIDDRBase + (ulBufferAddr - AXI_MIG_DDR3_BASE) + i) = pusBuffer[i / sizeof(uint16_t)];

    free(pusBuffer);

    return ubRet;
}

// TX Timestamping delay for 2r2t = -20, for 1r1t = -17
// RX Timestamping delay for 2r2t = +20, for 1r1t = +18

void trx_test()
{
	if(ad9361_init(&trx_init) < 0)
    {
        DBGPRINTLN_CTX("Failed to initialize AD9361");

        return;
    }

    ad9361_set_trx_clock_chain_freq(10000000UL);
    ad9361_set_rx_rf_bandwidth(7500000UL);
    ad9361_set_rx_rf_gain(RX1, 10);

    //DBGPRINTLN_CTX("gpo0 state: %hhu", ad9361_gpo_get(0));
    //ad9361_gpo_set(0, 1);
    //DBGPRINTLN_CTX("gpo0 state: %hhu", ad9361_gpo_get(0));

	//ad9361_set_tx_fir_config(tx_fir_config);
	//ad9361_set_rx_fir_config(rx_fir_config);

    ad9361_tx_lo_powerdown(OFF);

    // Channel 1
    axi_ad9361_dac_dds_set_frequency(0, 0, 125000000ULL, 2000000UL);
    axi_ad9361_dac_dds_set_phase(0, 0, 90000);
    axi_ad9361_dac_dds_set_scale(0, 0, 75000);
    axi_ad9361_dac_dds_set_frequency(1, 0, 125000000ULL, 2000000UL);
    axi_ad9361_dac_dds_set_phase(1, 0, 0);
    axi_ad9361_dac_dds_set_scale(1, 0, 75000);

    axi_ad9361_dac_dds_set_frequency(0, 1, 125000000ULL, 7000000UL);
    axi_ad9361_dac_dds_set_phase(0, 1, 90000);
    axi_ad9361_dac_dds_set_scale(0, 1, 25000);
    axi_ad9361_dac_dds_set_frequency(1, 1, 125000000ULL, 7000000UL);
    axi_ad9361_dac_dds_set_phase(1, 1, 0);
    axi_ad9361_dac_dds_set_scale(1, 1, 25000);

    axi_ad9361_dac_set_data_sel(0, AXI_DAC_DATA_SEL_DDS);
    axi_ad9361_dac_set_data_sel(1, AXI_DAC_DATA_SEL_DDS);

    // Channel 2
    // axi_ad9361_dac_dds_set_frequency(2, 0, 125000000ULL, 4000000UL);
    // axi_ad9361_dac_dds_set_phase(2, 0, 90000);
    // axi_ad9361_dac_dds_set_scale(2, 0, 75000);
    // axi_ad9361_dac_dds_set_frequency(3, 0, 125000000ULL, 4000000UL);
    // axi_ad9361_dac_dds_set_phase(3, 0, 0);
    // axi_ad9361_dac_dds_set_scale(3, 0, 75000);

    // axi_ad9361_dac_dds_set_frequency(2, 1, 125000000ULL, 6000000UL);
    // axi_ad9361_dac_dds_set_phase(2, 1, 90000);
    // axi_ad9361_dac_dds_set_scale(2, 1, 25000);
    // axi_ad9361_dac_dds_set_frequency(3, 1, 125000000ULL, 6000000UL);
    // axi_ad9361_dac_dds_set_phase(3, 1, 0);
    // axi_ad9361_dac_dds_set_scale(3, 1, 25000);

    axi_ad9361_dac_set_data_sel(2, AXI_DAC_DATA_SEL_ZERO);
    axi_ad9361_dac_set_data_sel(3, AXI_DAC_DATA_SEL_ZERO);

    axi_ad9361_dac_sync();

    if(!axi_dmac_init(AXI_DMAC_RF_RX_INST))
    {
        DBGPRINTLN_CTX("Failed to initialize RX DMA Controller");

        return;
    }

    if(!axi_dmac_init(AXI_DMAC_RF_TX_INST))
    {
        DBGPRINTLN_CTX("Failed to initialize TX DMA Controller");

        return;
    }

    if(!axi_rf_tstamp_init())
    {
        DBGPRINTLN_CTX("Failed to initialize RF Timestamping Controller");

        return;
    }

    axi_dmac_enable(AXI_DMAC_RF_RX_INST, 1);
    axi_dmac_enable(AXI_DMAC_RF_TX_INST, 1);

    // int32_t lTx, lRx;

    // if(!icyradio_get_trx_datapath_delay(&lTx, &lRx))
    // {
    //     DBGPRINTLN_CTX("Failed to get TX/RX datapath delay");

    //     return;
    // }

    // DBGPRINTLN_CTX("TX delay: %d", lTx);
    // DBGPRINTLN_CTX("RX delay: %d", lRx);

    // Sample some data
    uint32_t ulDescSize = 128 * 1024 * sizeof(uint16_t) * axi_ad9361_get_num_channels();

	axi_dmac_transfer_t sRdXfer[2] =
    {
        {
            .ulSize = ulDescSize,
            .eFlags = 0,
            .ulDestAddress = (uintptr_t)((ullDMABufferPhys & 0x0FFFFFFF) | AXI_PCIE_BAR1_MM_BASE),
            .pfCallback = NULL,
            .pCallbackArg = NULL
        },
        {
            .ulSize = ulDescSize,
            .eFlags = 0,
            .ulDestAddress = (uintptr_t)((ullDMABufferPhys & 0x0FFFFFFF) | AXI_PCIE_BAR1_MM_BASE) + ulDescSize,
            .pfCallback = NULL,
            .pCallbackArg = NULL
        },
    };

    axi_rf_tstamp_cnt_rx_enable(1);

    void *pDummy = malloc(ulDescSize / sizeof(uint16_t) * sizeof(float));
    if(pDummy) // Test long RX
    {
        struct sockaddr_in sa;
        int s;

        if((s = socket(AF_INET, SOCK_DGRAM, IPPROTO_UDP)) == -1)
        {
            DBGPRINTLN_CTX("Failed to create socket");

            return;
        }

        memset((char *)&sa, 0, sizeof(sa));
        sa.sin_family = AF_INET;
        sa.sin_addr.s_addr = inet_addr("10.1.0.194");
        // sa.sin_addr.s_addr = inet_addr("127.0.0.1");
        sa.sin_port = htons(8123);

        float *pfSamples = (float *)pDummy;
        volatile int16_t *psSamples0 = (volatile int16_t *)((uintptr_t)pDMABufferBase + 0 * ulDescSize);
        volatile int16_t *psSamples1 = (volatile int16_t *)((uintptr_t)pDMABufferBase + 1 * ulDescSize);
        uint32_t ulSampleCount = ulDescSize / sizeof(uint16_t);

        int8_t bRdXferID[2];
        uint8_t ubInfiniteSampling = 0;
        uint32_t ulCycles = 100;

        bRdXferID[0] = axi_dmac_transfer_submit(AXI_DMAC_RF_RX_INST, &sRdXfer[0]);

        if(bRdXferID[0] < 0)
        {
            DBGPRINTLN_CTX("Failed to submit RX DMA transfer");
	        close(s);

            return;
        }

        bRdXferID[1] = axi_dmac_transfer_submit(AXI_DMAC_RF_RX_INST, &sRdXfer[1]);

        if(bRdXferID[1] < 0)
        {
            DBGPRINTLN_CTX("Failed to submit RX DMA transfer");
	        close(s);

            return;
        }

        for(uint32_t i = 0; i < ulCycles; i++)
        {
            if(ubInfiniteSampling && i == ulCycles - 1)
                i = 1;

            // DBGPRINTLN_CTX("Cycle %u", i);

            // DBGPRINTLN_CTX("  Wait xfer 0");
            if(!axi_dmac_transfer_wait_completion(AXI_DMAC_RF_RX_INST, bRdXferID[0], 500))
            {
                DBGPRINTLN_CTX("Cycle %u: RX DMA transfer did not complete in time", i);

                break;
            }

            // DBGPRINTLN_CTX("  Copy xfer 0");
            (void)memcpy(pDummy, (void *)((uintptr_t)pDMABufferBase + 0 * ulDescSize), ulDescSize);

            // for(uint32_t j = 0; j < ulSampleCount; j += 2)
            // {
            //     pfSamples[j + 0] = (float)psSamples0[j + 0] / 2048.f;
            //     pfSamples[j + 1] = (float)psSamples0[j + 1] / 2048.f;
            // }

            if(i < ulCycles - 1)
            {
                if(axi_dmac_idle(AXI_DMAC_RF_RX_INST) && i != 0)
                {
                    DBGPRINTLN_CTX("Cycle %u: RX DMA controller is idle, software can't keep up", i);

                    //break;
                }

                // DBGPRINTLN_CTX("  Submit xfer 0");
                bRdXferID[0] = axi_dmac_transfer_submit(AXI_DMAC_RF_RX_INST, &sRdXfer[0]);

                if(bRdXferID[0] < 0)
                {
                    DBGPRINTLN_CTX("Cycle %u: Failed to submit RX DMA transfer", i);

                    break;
                }
            }

            // if(fwrite(pDummy, sizeof(float), ulSampleCount, stdout) != ulSampleCount)
            //     DBGPRINTLN_CTX("Unable to write to dump file!");

            uint32_t rem = sizeof(uint16_t) * ulSampleCount;
            uintptr_t ptr = (uintptr_t)pDummy;
            while(rem)
            {
                uint32_t len = rem > 8192 ? 8192 : rem;

                if(sendto(s, (void *)ptr, len, 0, (struct sockaddr *)&sa, sizeof(sa)) == -1)
                {
                    DBGPRINTLN_CTX("Unable to send data!");
                    break;
                }

                rem -= len;
                ptr += len;
            }

            // DBGPRINTLN_CTX("  Wait xfer 1");
            if(!axi_dmac_transfer_wait_completion(AXI_DMAC_RF_RX_INST, bRdXferID[1], 500))
            {
                DBGPRINTLN_CTX("Cycle %u: RX DMA transfer did not complete in time", i);

                break;
            }

            // DBGPRINTLN_CTX("  Copy xfer 1");
            (void)memcpy(pDummy, (void *)((uintptr_t)pDMABufferBase + 1 * ulDescSize), ulDescSize);

            // for(uint32_t j = 0; j < ulSampleCount; j += 2)
            // {
            //     pfSamples[j + 0] = (float)psSamples1[j + 0] / 2048.f;
            //     pfSamples[j + 1] = (float)psSamples1[j + 1] / 2048.f;
            // }

            if(i < ulCycles - 1)
            {
                if(axi_dmac_idle(AXI_DMAC_RF_RX_INST) && i != 0)
                {
                    DBGPRINTLN_CTX("Cycle %u: RX DMA controller is idle, software can't keep up", i);

                    //break;
                }

                // DBGPRINTLN_CTX("  Submit xfer 1");
                bRdXferID[1] = axi_dmac_transfer_submit(AXI_DMAC_RF_RX_INST, &sRdXfer[1]);

                if(bRdXferID[1] < 0)
                {
                    DBGPRINTLN_CTX("Cycle %u: Failed to submit RX DMA transfer", i);

                    break;
                }
            }

            // if(fwrite(pDummy, sizeof(float), ulSampleCount, stdout) != ulSampleCount)
            //     DBGPRINTLN_CTX("Unable to write to dump file!");

            rem = sizeof(uint16_t) * ulSampleCount;
            ptr = (uintptr_t)pDummy;
            while(rem)
            {
                uint32_t len = rem > 8192 ? 8192 : rem;

                if(sendto(s, (void *)ptr, len, 0, (struct sockaddr *)&sa, sizeof(sa)) == -1)
                {
                    DBGPRINTLN_CTX("Unable to send data!");

                    break;
                }

                rem -= len;
                ptr += len;
            }
        }


	    close(s);
        free(pDummy);
    }

    int8_t bRdXferID = axi_dmac_transfer_submit(AXI_DMAC_RF_RX_INST, &sRdXfer[0]);

    if(bRdXferID < 0)
    {
        DBGPRINTLN_CTX("Failed to submit RX DMA transfer");

        return;
    }

    if(!axi_dmac_transfer_wait_completion(AXI_DMAC_RF_RX_INST, bRdXferID, 500))
    {
        DBGPRINTLN_CTX("RX DMA transfer did not complete in time");

        return;
    }

    axi_rf_tstamp_rx_enable(0);

    // Export data to a matlab file for FFT analysis
    FILE *pFile = fopen("adc_data.m", "wb");

    if(pFile == NULL)
    {
        printf("Unable to open file!\n");

        return;
    }

    fprintf(pFile, "adc_ch0 = [");

    for(uint32_t i = 0; i < sRdXfer[0].ulSize; i += axi_ad9361_get_num_channels() * sizeof(uint16_t))
    {
        int16_t sSample = *((volatile int16_t *)((uintptr_t)pDMABufferBase + i));

        fprintf(pFile, "%d ", sSample);
    }

    fprintf(pFile, "];\n");

    fprintf(pFile, "adc_ch1 = [");

    for(uint32_t i = 0; i < sRdXfer[0].ulSize; i += axi_ad9361_get_num_channels() * sizeof(uint16_t))
    {
        int16_t sSample = *((volatile int16_t *)((uintptr_t)pDMABufferBase + i + 1 * sizeof(uint16_t)));

        fprintf(pFile, "%d ", sSample);
    }

    fprintf(pFile, "];\n");

    if(axi_ad9361_get_num_channels() > 2)
    {
        fprintf(pFile, "adc_ch2 = [");

        for(uint32_t i = 0; i < sRdXfer[0].ulSize; i += axi_ad9361_get_num_channels() * sizeof(uint16_t))
        {
            int16_t sSample = *((volatile int16_t *)((uintptr_t)pDMABufferBase + i + 2 * sizeof(uint16_t)));

            fprintf(pFile, "%d ", sSample);
        }

        fprintf(pFile, "];\n");

        fprintf(pFile, "adc_ch3 = [");

        for(uint32_t i = 0; i < sRdXfer[0].ulSize; i += axi_ad9361_get_num_channels() * sizeof(uint16_t))
        {
            int16_t sSample = *((volatile int16_t *)((uintptr_t)pDMABufferBase + i + 3 * sizeof(uint16_t)));

            fprintf(pFile, "%d ", sSample);
        }

        fprintf(pFile, "];\n");
    }

    fprintf(pFile, "\n");

    fprintf(pFile, "adc_ch0 = adc_ch0 / 2048;\n");
    fprintf(pFile, "adc_ch1 = adc_ch1 / 2048;\n");

    if(axi_ad9361_get_num_channels() > 2)
    {
        fprintf(pFile, "adc_ch2 = adc_ch2 / 2048;\n");
        fprintf(pFile, "adc_ch3 = adc_ch3 / 2048;\n");
    }

    fprintf(pFile, "\n");

    fprintf(pFile, "trx_ch0 = adc_ch0 + j * adc_ch1;\n");

    if(axi_ad9361_get_num_channels() > 2)
        fprintf(pFile, "trx_ch1 = adc_ch2 + j * adc_ch3;\n");

    fprintf(pFile, "\n");

    uint32_t fs = 0;
    ad9361_get_rx_sampling_freq(&fs);

    fprintf(pFile, "fs = %u;\n", fs);

    uint64_t fc = 0;
    ad9361_get_rx_lo_freq(&fc);

    fprintf(pFile, "fc = %lu;\n", fc);

    fprintf(pFile, "\n");

    fprintf(pFile, "X0 = fftshift(fft(trx_ch0) / length(trx_ch0));\n");

    if(axi_ad9361_get_num_channels() > 2)
        fprintf(pFile, "X1 = fftshift(fft(trx_ch1) / length(trx_ch1));\n");

    fprintf(pFile, "\n");

    fprintf(pFile, "f = linspace(-fs/2, fs/2, length(adc_ch0)) + fc;\n");

    fprintf(pFile, "\n");

    if(axi_ad9361_get_num_channels() > 2)
    {
        fprintf(pFile, "subplot 211\n");
        fprintf(pFile, "plot(f, 10 * log10(abs(X0)));\n");
        fprintf(pFile, "subplot 212\n");
        fprintf(pFile, "plot(f, 10 * log10(abs(X1)));\n");
    }
    else
    {
        fprintf(pFile, "plot(f, 10 * log10(abs(X0)));\n");
    }

    fclose(pFile);

    int32_t temp;

    if(!ad9361_get_temperature(&temp))
        DBGPRINTLN_CTX("RF TRX Temperature: %f C", (double)temp / 1000);

    // Timing analysis
    // uint32_t rates[4] = { 5000000UL, 10000000UL, 20000000UL, 30720000UL };

    // pFile = fopen("timing.txt", "wb");

    // if(pFile == NULL)
    // {
    //     printf("Unable to open file!\n");

    //     return;
    // }

    // char buf[1024];

    // for(uint8_t i = 0; i < ARRAY_SIZE(rates); i++)
    // {
    //     ad9361_set_trx_clock_chain_freq(ad9361_phy, rates[i]);

    //     memset(buf, 0, sizeof(buf));

    //     if(ad9361_dig_interface_timing_analysis(ad9361_phy, buf, sizeof(buf)) >= 0)
    //     {
    //         fprintf(pFile, "\r\n\r\n%s DIGITAL TIMING ANALYSIS @ %u SPS (%u Hz):\n%s", "RX", rates[i], rates[i] * 2, buf);
    //     }
    // }

    // fclose(pFile);
}

void rv_test()
{
    #include "firmware.bin.h"

    DBGPRINTLN_CTX("dma buf start: 0x%08X", *(volatile uint32_t*)((uintptr_t)pDMABufferBase));
    DBGPRINTLN_CTX("picorv32 reset: %s", axi_gpio_get_value(AXI_GPIO_SYS_INST, AXI_GPIO2_RV32_RESETN_BIT) ? "no" : "yes");
    DBGPRINTLN_CTX("picorv32 trap: %s", axi_gpio_get_value(AXI_GPIO_SYS_INST, AXI_GPIO2_RV32_TRAPPED_BIT) ? "yes" : "no");

    for(uint32_t i = 0; i < firmware_bin_len; i++)
        *(volatile uint8_t*)((uintptr_t)pAXIBRAMBase + i) = firmware_bin[i];

    DBGPRINTLN_CTX("rv32 fw 0: 0x%08X", *(volatile uint32_t*)((uintptr_t)pAXIBRAMBase));
    DBGPRINTLN_CTX("rv32 fw max: 0x%08X", *(volatile uint32_t*)((uintptr_t)pAXIBRAMBase + AXI_BRAM_SIZE - 4));

    axi_gpio_set_value(AXI_GPIO_SYS_INST, AXI_GPIO2_RV32_RESETN_BIT, 1);
    DBGPRINTLN_CTX("picorv32 reset: %s", axi_gpio_get_value(AXI_GPIO_SYS_INST, AXI_GPIO2_RV32_RESETN_BIT) ? "no" : "yes");
    DBGPRINTLN_CTX("picorv32 trap: %s", axi_gpio_get_value(AXI_GPIO_SYS_INST, AXI_GPIO2_RV32_TRAPPED_BIT) ? "yes" : "no");
    DBGPRINTLN_CTX("rv32 next waddr 0x%08X", *(volatile uint32_t*)((uintptr_t)pAXIDDRBase));
    DBGPRINTLN_CTX("rv32 complete %u", *(volatile uint32_t*)((uintptr_t)pAXIDDRBase + AXI_MIG_DDR3_SIZE - 4));

    uint32_t to = 30000;

    while(--to && !axi_gpio_get_value(AXI_GPIO_SYS_INST, AXI_GPIO2_RV32_TRAPPED_BIT))
        usleep(1000);

    DBGPRINTLN_CTX("dma buf start: 0x%08X", *(volatile uint32_t*)((uintptr_t)pDMABufferBase));
    DBGPRINTLN_CTX("picorv32 reset: %s", axi_gpio_get_value(AXI_GPIO_SYS_INST, AXI_GPIO2_RV32_RESETN_BIT) ? "no" : "yes");
    DBGPRINTLN_CTX("picorv32 trap: %s", axi_gpio_get_value(AXI_GPIO_SYS_INST, AXI_GPIO2_RV32_TRAPPED_BIT) ? "yes" : "no");
    DBGPRINTLN_CTX("rv32 next waddr 0x%08X", *(volatile uint32_t*)((uintptr_t)pAXIDDRBase));
    DBGPRINTLN_CTX("rv32 complete %u", *(volatile uint32_t*)((uintptr_t)pAXIDDRBase + AXI_MIG_DDR3_SIZE - 4));

    uint32_t sz = *(volatile uint32_t*)((uintptr_t)pAXIDDRBase) - (AXI_MIG_DDR3_BASE + 4);

    DBGPRINTLN_CTX("rv32 print size %u", sz);

    DBGPRINTLN("");

    for(uint32_t i = 0; i < sz; i++)
        DBGPRINT("%c", *(volatile uint8_t*)((uintptr_t)pAXIDDRBase + 4 + i));

    DBGPRINTLN("");
}

uint8_t icyradio_setup_mmaps()
{
    uint32_t ulPageSize = (uint32_t)sysconf(_SC_PAGESIZE);

    // DBGPRINTLN_CTX("Page Size: %u", ulPageSize);

    if(ulPageSize != 4096)
        DBGPRINTLN_CTX("WARNING: Page size is not 4096 bytes (%u)", ulPageSize);

    uint64_t ullMapAddrStart, ullMapAddrOffset, ullMapSize;

    // Flash region
    ullMapAddrStart = AXI_QUAD_SPI0_XIP_BASE & ~(uint64_t)(ulPageSize - 1);
    ullMapAddrOffset = AXI_QUAD_SPI0_XIP_BASE & (uint64_t)(ulPageSize - 1);
    ullMapSize = AXI_QUAD_SPI0_XIP_SIZE;

    // DBGPRINTLN_CTX("Start Address: 0x%08lX", ullMapAddrStart);
    // DBGPRINTLN_CTX("Offset Address: 0x%08lX", ullMapAddrOffset);
    // DBGPRINTLN_CTX("Map Size: 0x%08lX", ullMapSize);

	pAXIFlashMap = mmap(NULL, ullMapSize, PROT_READ | PROT_WRITE, MAP_SHARED, iDeviceFile, ullMapAddrStart);

	if(pAXIFlashMap == MAP_FAILED)
    {
        DBGPRINTLN_CTX("Unable to map AXI Flash region (%d)", errno);

        return 0;
    }

    pAXIFlashBase = (void *)((uintptr_t)pAXIFlashMap + ullMapAddrOffset);

    DBGPRINTLN_CTX("AXI Flash Base: 0x%016lX", (uintptr_t)pAXIFlashBase);

    // BRAM region
    ullMapAddrStart = AXI_BRAM_BASE & ~(uint64_t)(ulPageSize - 1);
    ullMapAddrOffset = AXI_BRAM_BASE & (uint64_t)(ulPageSize - 1);
    ullMapSize = AXI_BRAM_SIZE;

    // DBGPRINTLN_CTX("Start Address: 0x%08lX", ullMapAddrStart);
    // DBGPRINTLN_CTX("Offset Address: 0x%08lX", ullMapAddrOffset);
    // DBGPRINTLN_CTX("Map Size: 0x%08lX", ullMapSize);

	pAXIBRAMMap = mmap(NULL, ullMapSize, PROT_READ | PROT_WRITE, MAP_SHARED, iDeviceFile, ullMapAddrStart);

	if(pAXIBRAMMap == MAP_FAILED)
    {
        DBGPRINTLN_CTX("Unable to map AXI BRAM region (%d)", errno);

        munmap(pAXIFlashMap, AXI_QUAD_SPI0_XIP_SIZE);

        return 0;
    }

    pAXIBRAMBase = (void *)((uintptr_t)pAXIBRAMMap + ullMapAddrOffset);

    DBGPRINTLN_CTX("AXI BRAM Base: 0x%016lX", (uintptr_t)pAXIBRAMBase);

    // DDR region
    ullMapAddrStart = AXI_MIG_DDR3_BASE & ~(uint64_t)(ulPageSize - 1);
    ullMapAddrOffset = AXI_MIG_DDR3_BASE & (uint64_t)(ulPageSize - 1);
    ullMapSize = AXI_MIG_DDR3_SIZE;

    // DBGPRINTLN_CTX("Start Address: 0x%08lX", ullMapAddrStart);
    // DBGPRINTLN_CTX("Offset Address: 0x%08lX", ullMapAddrOffset);
    // DBGPRINTLN_CTX("Map Size: 0x%08lX", ullMapSize);

	pAXIDDRMap = mmap(NULL, ullMapSize, PROT_READ | PROT_WRITE, MAP_SHARED, iDeviceFile, ullMapAddrStart);

	if(pAXIDDRMap == MAP_FAILED)
    {
        DBGPRINTLN_CTX("Unable to map AXI DDR3 region (%d)", errno);

        munmap(pAXIFlashMap, AXI_QUAD_SPI0_XIP_SIZE);
        munmap(pAXIBRAMMap, AXI_BRAM_SIZE);

        return 0;
    }

    pAXIDDRBase = (void *)((uintptr_t)pAXIDDRMap + ullMapAddrOffset);

    DBGPRINTLN_CTX("AXI DDR Base: 0x%016lX", (uintptr_t)pAXIDDRBase);

    // Peripheral region
    ullMapAddrStart = AXI_PERIPH_BASE & ~(uint64_t)(ulPageSize - 1);
    ullMapAddrOffset = AXI_PERIPH_BASE & (uint64_t)(ulPageSize - 1);
    ullMapSize = AXI_PERIPH_SIZE;

    // DBGPRINTLN_CTX("Start Address: 0x%08lX", ullMapAddrStart);
    // DBGPRINTLN_CTX("Offset Address: 0x%08lX", ullMapAddrOffset);
    // DBGPRINTLN_CTX("Map Size: 0x%08lX", ullMapSize);

	pAXIPeriphMap = mmap(NULL, ullMapSize, PROT_READ | PROT_WRITE, MAP_SHARED, iDeviceFile, ullMapAddrStart);

	if(pAXIPeriphMap == MAP_FAILED)
    {
        DBGPRINTLN_CTX("Unable to map AXI Peripheral region (%d)", errno);

        munmap(pAXIFlashMap, AXI_QUAD_SPI0_XIP_SIZE);
        munmap(pAXIBRAMMap, AXI_BRAM_SIZE);
        munmap(pAXIDDRMap, AXI_MIG_DDR3_SIZE);

        return 0;
    }

    pAXIPeriphBase = (void *)((uintptr_t)pAXIPeriphMap + ullMapAddrOffset);

    DBGPRINTLN_CTX("AXI Peripheral Base: 0x%016lX", (uintptr_t)pAXIPeriphBase);

    pAXIDMACBase[0] =    (void *)((uintptr_t)pAXIPeriphBase + (AXI_DMAC_RF_RX_BASE - AXI_PERIPH_BASE));
    pAXIDMACBase[1] =    (void *)((uintptr_t)pAXIPeriphBase + (AXI_DMAC_RF_TX_BASE - AXI_PERIPH_BASE));
    pAXIGPIOBase[0] =    (void *)((uintptr_t)pAXIPeriphBase + (AXI_GPIO0_BASE - AXI_PERIPH_BASE));
    pAXIIICBase[0] =     (void *)((uintptr_t)pAXIPeriphBase + (AXI_IIC0_BASE - AXI_PERIPH_BASE));
    pAXIQuadSPIBase[0] = (void *)((uintptr_t)pAXIPeriphBase + (AXI_QUAD_SPI0_BASE - AXI_PERIPH_BASE));
    pAXIPCIeBase =       (void *)((uintptr_t)pAXIPeriphBase + (AXI_PCIE0_BASE - AXI_PERIPH_BASE));
    pAXIDMACBase[2] =    (void *)((uintptr_t)pAXIPeriphBase + (AXI_DMAC_I2S_RX_BASE - AXI_PERIPH_BASE));
    pAXIDMACBase[3] =    (void *)((uintptr_t)pAXIPeriphBase + (AXI_DMAC_I2S_TX_BASE - AXI_PERIPH_BASE));
    pAXII2SBase =        (void *)((uintptr_t)pAXIPeriphBase + (AXI_I2S_BASE - AXI_PERIPH_BASE));
    pAXIXADCBase =       (void *)((uintptr_t)pAXIPeriphBase + (AXI_XADC_WIZ_BASE - AXI_PERIPH_BASE));
    pAXIQuadSPIBase[1] = (void *)((uintptr_t)pAXIPeriphBase + (AXI_QUAD_SPI1_BASE - AXI_PERIPH_BASE));
    pAXIIICBase[1] =     (void *)((uintptr_t)pAXIPeriphBase + (AXI_IIC1_BASE - AXI_PERIPH_BASE));
    pAXIQuadSPIBase[2] = (void *)((uintptr_t)pAXIPeriphBase + (AXI_QUAD_SPI2_BASE - AXI_PERIPH_BASE));
    pAXIGPIOBase[1] =    (void *)((uintptr_t)pAXIPeriphBase + (AXI_GPIO1_BASE - AXI_PERIPH_BASE));
    pAXIGPIOBase[2] =    (void *)((uintptr_t)pAXIPeriphBase + (AXI_GPIO2_BASE - AXI_PERIPH_BASE));
    pAXIRFTstampBase =   (void *)((uintptr_t)pAXIPeriphBase + (AXI_RF_TSTAMP_BASE - AXI_PERIPH_BASE));
    pAXIIRQCtrlBase =    (void *)((uintptr_t)pAXIPeriphBase + (AXI_IRQ_CTRL_BASE - AXI_PERIPH_BASE));
    pAXIDNABase =        (void *)((uintptr_t)pAXIPeriphBase + (AXI_DNA_BASE - AXI_PERIPH_BASE));

    pAXIAD9361Base =     (void *)((uintptr_t)pAXIPeriphBase + (AXI_AD9361_BASE - AXI_PERIPH_BASE));

    // Alloc and map DMA buffer
    uint64_t ullArg = ullDMABufferSize; // We pass in the size as argument, and get the physical address back

    ioctl(iDeviceFile, ICYRADIO_IOCTL_DMA_FREE); // TODO: Implement getting an existing buffer

    if(ioctl(iDeviceFile, ICYRADIO_IOCTL_DMA_ALLOC, &ullArg) < 0)
    {
        DBGPRINTLN_CTX("Unable to allocate DMA buffer (%d)", errno);

        munmap(pAXIFlashMap, AXI_QUAD_SPI0_XIP_SIZE);
        munmap(pAXIBRAMMap, AXI_BRAM_SIZE);
        munmap(pAXIDDRMap, AXI_MIG_DDR3_SIZE);
        munmap(pAXIPeriphMap, AXI_PERIPH_SIZE);

        return 0;
    }

    ullDMABufferPhys = ullArg;

    DBGPRINTLN_CTX("DMA Buffer Physical Address: 0x%012lX", ullDMABufferPhys);
    DBGPRINTLN_CTX("DMA Buffer Size: 0x%012lX", ullDMABufferSize);

    ullMapAddrStart = ullDMABufferPhys & ~(uint64_t)(ulPageSize - 1);
    ullMapAddrOffset = ullDMABufferPhys & (uint64_t)(ulPageSize - 1);
    ullMapSize = ullDMABufferSize;

    ullMapAddrStart |= BIT(48); // DMA Buffer region starts at 0x100000000000

    // DBGPRINTLN_CTX("Start Address: 0x%016lX", ullMapAddrStart);
    // DBGPRINTLN_CTX("Offset Address: 0x%016lX", ullMapAddrOffset);
    // DBGPRINTLN_CTX("Map Size: 0x%08lX", ullMapSize);

	pDMABufferMap = mmap(NULL, ullMapSize, PROT_READ | PROT_WRITE, MAP_SHARED, iDeviceFile, ullMapAddrStart);

	if(pDMABufferMap == MAP_FAILED)
    {
        DBGPRINTLN_CTX("Unable to map DMA Buffer region (%d)", errno);

        munmap(pAXIFlashMap, AXI_QUAD_SPI0_XIP_SIZE);
        munmap(pAXIBRAMMap, AXI_BRAM_SIZE);
        munmap(pAXIDDRMap, AXI_MIG_DDR3_SIZE);
        munmap(pAXIPeriphMap, AXI_PERIPH_SIZE);
        ioctl(iDeviceFile, ICYRADIO_IOCTL_DMA_FREE);

        return 0;
    }

    pDMABufferBase = (void *)((uintptr_t)pDMABufferMap + ullMapAddrOffset);

    DBGPRINTLN_CTX("DMA Buffer Base: 0x%016lX", (uintptr_t)pDMABufferBase);

    return 1;
}
uint8_t icyradio_free_mmaps()
{
    uint8_t ubRet = 1;

    if(munmap(pAXIFlashMap, AXI_QUAD_SPI0_XIP_SIZE))
    {
        DBGPRINTLN_CTX("Unable to unmap AXI Flash region (%d)", errno);

        ubRet = 0;
    }

    if(munmap(pAXIBRAMMap, AXI_BRAM_SIZE))
    {
        DBGPRINTLN_CTX("Unable to unmap AXI BRAM region (%d)", errno);

        ubRet = 0;
    }

    if(munmap(pAXIDDRMap, AXI_MIG_DDR3_SIZE))
    {
        DBGPRINTLN_CTX("Unable to unmap AXI DDR3 region (%d)", errno);

        ubRet = 0;
    }

    if(munmap(pAXIPeriphMap, AXI_PERIPH_SIZE))
    {
        DBGPRINTLN_CTX("Unable to unmap AXI Peripheral region (%d)", errno);

        ubRet = 0;
    }

    if(munmap(pDMABufferMap, ullDMABufferSize))
    {
        DBGPRINTLN_CTX("Unable to unmap DMA Buffer region (%d)", errno);

        ubRet = 0;
    }

    if(ioctl(iDeviceFile, ICYRADIO_IOCTL_DMA_FREE) < 0)
    {
        DBGPRINTLN_CTX("Unable to free DMA buffer (%d)", errno);

        ubRet = 0;
    }

    return 1;
}

uint8_t icyradio_init_clocks()
{
    DBGPRINTLN_CTX("Setup clock manager...");

    if(!si5351_init())
    {
        DBGPRINTLN_CTX("Unable to initialize clock manager!");

        return 0;
    }

    DBGPRINTLN_CTX("---- Inputs ----");
    si5351_xtal_config(26000000, 10); // fPFD = XTAL, CLoad = 10 pF

    uint8_t ubStatus = si5351_read_status();
    uint32_t ulTimeout = 2000;

    while(--ulTimeout && (ubStatus & SI5351_REG_STATUS_XO_LOS))
    {
        usleep(1000);

        ubStatus = si5351_read_status();
    }

    if(ubStatus & SI5351_REG_STATUS_XO_LOS)
    {
        DBGPRINTLN_CTX("XTAL clock not detected, aborting!");

        return 0;
    }
    else
    {
        DBGPRINTLN_CTX("XTAL Clock: %.3f MHz", (float)SI5351_XTAL_FREQ / 1000000);
    }

    si5351_clkin_config(10000000, 1); // fPFD = CLKIN / 1

    ubStatus = si5351_read_status();
    ulTimeout = 2000;

    while(--ulTimeout && (ubStatus & SI5351_REG_STATUS_XO_LOS))
    {
        usleep(1000);

        ubStatus = si5351_read_status();
    }

    if(ubStatus & SI5351_REG_STATUS_CLKIN_LOS)
    {
        DBGPRINTLN_CTX("CLKIN clock not detected!");

        // No problem since we are not using it
        //return 0;
    }
    else
    {
        DBGPRINTLN_CTX("CLKIN Clock: %.3f MHz", (float)SI5351_CLKIN_FREQ / 1000000);
        DBGPRINTLN_CTX("CLKIN Divided Clock: %.3f MHz", (float)SI5351_CLKIN_DIV_FREQ / 1000000);
    }

    //// PLLA
    DBGPRINTLN_CTX("---- PLL A ----");

    si5351_pll_set_source(SI5351_PLLA, SI5351_PLL_SRC_XTAL);
    si5351_pll_set_freq(SI5351_PLLA, 650000000);

    ubStatus = si5351_read_status();
    ulTimeout = 2000;

    while(--ulTimeout && (ubStatus & SI5351_REG_STATUS_LOL_A))
    {
        usleep(1000);

        ubStatus = si5351_read_status();
    }

    if(ubStatus & SI5351_REG_STATUS_LOL_A)
    {
        DBGPRINTLN_CTX("PLLA did not achieve lock, aborting!");

        return 0;
    }
    else
    {
        DBGPRINTLN_CTX("PLLA Source Clock: %.3f MHz", (float)SI5351_PLL_SRC_FREQ[SI5351_PLLA] / 1000000);
        DBGPRINTLN_CTX("PLLA VCO Clock: %.3f MHz", (float)SI5351_PLL_FREQ[SI5351_PLLA] / 1000000);
    }

    //// PLLB
    DBGPRINTLN_CTX("---- PLL B ----");

    si5351_pll_set_source(SI5351_PLLB, SI5351_PLL_SRC_XTAL);
    si5351_pll_set_freq(SI5351_PLLB, 800000000);

    ubStatus = si5351_read_status();
    ulTimeout = 2000;

    while(--ulTimeout && (ubStatus & SI5351_REG_STATUS_LOL_B))
    {
        usleep(1000);

        ubStatus = si5351_read_status();
    }

    if(ubStatus & SI5351_REG_STATUS_LOL_B)
    {
        DBGPRINTLN_CTX("PLLB did not achieve lock, aborting!");

        return 0;
    }
    else
    {
        DBGPRINTLN_CTX("PLLB Source Clock: %.3f MHz", (float)SI5351_PLL_SRC_FREQ[SI5351_PLLB] / 1000000);
        DBGPRINTLN_CTX("PLLB VCO Clock: %.3f MHz", (float)SI5351_PLL_FREQ[SI5351_PLLB] / 1000000);
    }

    //// FPGA Clock #0
    DBGPRINTLN_CTX("---- MS #%hhu (FPGA_CLK0) ----", SI5351_FPGA_CLK0);

    si5351_multisynth_set_source(SI5351_FPGA_CLK0, SI5351_MS_SRC_PLLA);
    si5351_multisynth_set_freq(SI5351_FPGA_CLK0, 50000000);
    si5351_multisynth_set_phase_offset(SI5351_FPGA_CLK0, 0.f);

    DBGPRINTLN_CTX("MS%hhu Source Clock: %.3f MHz", SI5351_FPGA_CLK0, (float)SI5351_MS_SRC_FREQ[SI5351_FPGA_CLK0] / 1000000);
    DBGPRINTLN_CTX("MS%hhu Clock: %.3f MHz", SI5351_FPGA_CLK0, (float)SI5351_MS_FREQ[SI5351_FPGA_CLK0] / 1000000);
    DBGPRINTLN_CTX("MS%hhu Phase offset: %.1f deg", SI5351_FPGA_CLK0, si5351_multisynth_get_phase_offset(SI5351_FPGA_CLK0));

    si5351_clock_set_disable_state(SI5351_FPGA_CLK0, SI5351_REG_CLKm_n_DIS_DISn_HIZ); // Disable in High-Z mode
    si5351_clock_set_drive_current(SI5351_FPGA_CLK0, 8); // 8 mA
    si5351_clock_set_invert(SI5351_FPGA_CLK0, 0); // Not inverted
    si5351_clock_set_source(SI5351_FPGA_CLK0, SI5351_CLK_SRC_MSn); // Corresponding multisynth as source
    si5351_clock_set_output_divider(SI5351_FPGA_CLK0, 1); // Divide by 1 at the output

    DBGPRINTLN_CTX("CLK%hhu Clock: %.3f MHz", SI5351_FPGA_CLK0, (float)SI5351_CLK_FREQ[SI5351_FPGA_CLK0] / 1000000);

    si5351_clock_power_up(SI5351_FPGA_CLK0); // Power the output stage up
    si5351_clock_enable(SI5351_FPGA_CLK0); // Software enable the clock output

    //// FPGA Clock #1
    DBGPRINTLN_CTX("---- MS #%hhu (FPGA_CLK1) ----", SI5351_FPGA_CLK1);

    si5351_multisynth_set_source(SI5351_FPGA_CLK1, SI5351_MS_SRC_PLLA);
    si5351_multisynth_set_freq(SI5351_FPGA_CLK1, 49152000);
    si5351_multisynth_set_phase_offset(SI5351_FPGA_CLK1, 20.f);

    DBGPRINTLN_CTX("MS%hhu Source Clock: %.3f MHz", SI5351_FPGA_CLK1, (float)SI5351_MS_SRC_FREQ[SI5351_FPGA_CLK1] / 1000000);
    DBGPRINTLN_CTX("MS%hhu Clock: %.3f MHz", SI5351_FPGA_CLK1, (float)SI5351_MS_FREQ[SI5351_FPGA_CLK1] / 1000000);
    DBGPRINTLN_CTX("MS%hhu Phase offset: %.1f deg", SI5351_FPGA_CLK1, si5351_multisynth_get_phase_offset(SI5351_FPGA_CLK1));

    si5351_clock_set_disable_state(SI5351_FPGA_CLK1, SI5351_REG_CLKm_n_DIS_DISn_HIZ); // Disable in High-Z mode
    si5351_clock_set_drive_current(SI5351_FPGA_CLK1, 8); // 8 mA
    si5351_clock_set_invert(SI5351_FPGA_CLK1, 0); // Not inverted
    si5351_clock_set_source(SI5351_FPGA_CLK1, SI5351_CLK_SRC_MSn); // Corresponding multisynth as source
    si5351_clock_set_output_divider(SI5351_FPGA_CLK1, 1); // Divide by 1 at the output

    DBGPRINTLN_CTX("CLK%hhu Clock: %.3f MHz", SI5351_FPGA_CLK1, (float)SI5351_CLK_FREQ[SI5351_FPGA_CLK1] / 1000000);

    si5351_clock_power_up(SI5351_FPGA_CLK1); // Power the output stage up
    si5351_clock_enable(SI5351_FPGA_CLK1); // Software enable the clock output

    //// FPGA Clock #2
    //DBGPRINTLN_CTX("---- MS #%hhu (FPGA_CLK2) ----", SI5351_FPGA_CLK2);

    // si5351_multisynth_set_source(SI5351_FPGA_CLK2, SI5351_MS_SRC_PLLA);
    // si5351_multisynth_set_freq(SI5351_FPGA_CLK2, 25000000);
    // si5351_multisynth_set_phase_offset(SI5351_FPGA_CLK2, 30.f);

    // DBGPRINTLN_CTX("MS%hhu Source Clock: %.3f MHz", SI5351_FPGA_CLK2, (float)SI5351_MS_SRC_FREQ[SI5351_FPGA_CLK2] / 1000000);
    // DBGPRINTLN_CTX("MS%hhu Clock: %.3f MHz", SI5351_FPGA_CLK2, (float)SI5351_MS_FREQ[SI5351_FPGA_CLK2] / 1000000);
    // DBGPRINTLN_CTX("MS%hhu Phase offset: %.1f deg", SI5351_FPGA_CLK2, si5351_multisynth_get_phase_offset(SI5351_FPGA_CLK2));

    // si5351_clock_set_disable_state(SI5351_FPGA_CLK2, SI5351_REG_CLKm_n_DIS_DISn_HIZ); // Disable in High-Z mode
    // si5351_clock_set_drive_current(SI5351_FPGA_CLK2, 8); // 8 mA
    // si5351_clock_set_invert(SI5351_FPGA_CLK2, 0); // Not inverted
    // si5351_clock_set_source(SI5351_FPGA_CLK2, SI5351_CLK_SRC_MSn); // Corresponding multisynth as source
    // si5351_clock_set_output_divider(SI5351_FPGA_CLK2, 1); // Divide by 1 at the output

    // DBGPRINTLN_CTX("CLK%hhu Clock: %.3f MHz", SI5351_FPGA_CLK2, (float)SI5351_CLK_FREQ[SI5351_FPGA_CLK2] / 1000000);

    // si5351_clock_power_up(SI5351_FPGA_CLK2); // Power the output stage up
    //si5351_clock_enable(SI5351_FPGA_CLK2); // Software enable the clock output

    //// FPGA Clock #3
    //DBGPRINTLN_CTX("---- MS #%hhu (FPGA_CLK3) ----", SI5351_FPGA_CLK3);

    // si5351_multisynth_set_source(SI5351_FPGA_CLK3, SI5351_MS_SRC_PLLA);
    // si5351_multisynth_set_freq(SI5351_FPGA_CLK3, 25000000);
    // si5351_multisynth_set_phase_offset(SI5351_FPGA_CLK3, 40.f);

    // DBGPRINTLN_CTX("MS%hhu Source Clock: %.3f MHz", SI5351_FPGA_CLK3, (float)SI5351_MS_SRC_FREQ[SI5351_FPGA_CLK3] / 1000000);
    // DBGPRINTLN_CTX("MS%hhu Clock: %.3f MHz", SI5351_FPGA_CLK3, (float)SI5351_MS_FREQ[SI5351_FPGA_CLK3] / 1000000);
    // DBGPRINTLN_CTX("MS%hhu Phase offset: %.1f deg", SI5351_FPGA_CLK3, si5351_multisynth_get_phase_offset(SI5351_FPGA_CLK3));

    // si5351_clock_set_disable_state(SI5351_FPGA_CLK3, SI5351_REG_CLKm_n_DIS_DISn_HIZ); // Disable in High-Z mode
    // si5351_clock_set_drive_current(SI5351_FPGA_CLK3, 8); // 8 mA
    // si5351_clock_set_invert(SI5351_FPGA_CLK3, 0); // Not inverted
    // si5351_clock_set_source(SI5351_FPGA_CLK3, SI5351_CLK_SRC_MSn); // Corresponding multisynth as source
    // si5351_clock_set_output_divider(SI5351_FPGA_CLK3, 1); // Divide by 1 at the output

    // DBGPRINTLN_CTX("CLK%hhu Clock: %.3f MHz", SI5351_FPGA_CLK3, (float)SI5351_CLK_FREQ[SI5351_FPGA_CLK3] / 1000000);

    // si5351_clock_power_up(SI5351_FPGA_CLK3); // Power the output stage up
    //si5351_clock_enable(SI5351_FPGA_CLK3); // Software enable the clock output

    //// Transceiver Reference clock
    DBGPRINTLN_CTX("---- MS #%hhu (TRX_REF_CLK) ----", SI5351_TRX_REF_CLK);

    si5351_multisynth_set_source(SI5351_TRX_REF_CLK, SI5351_MS_SRC_PLLB);
    si5351_multisynth_set_freq(SI5351_TRX_REF_CLK, 40000000);
    si5351_multisynth_set_phase_offset(SI5351_TRX_REF_CLK, 80.f);

    DBGPRINTLN_CTX("MS%hhu Source Clock: %.3f MHz", SI5351_TRX_REF_CLK, (float)SI5351_MS_SRC_FREQ[SI5351_TRX_REF_CLK] / 1000000);
    DBGPRINTLN_CTX("MS%hhu Clock: %.3f MHz", SI5351_TRX_REF_CLK, (float)SI5351_MS_FREQ[SI5351_TRX_REF_CLK] / 1000000);
    DBGPRINTLN_CTX("MS%hhu Phase offset: %.1f deg", SI5351_TRX_REF_CLK, si5351_multisynth_get_phase_offset(SI5351_TRX_REF_CLK));

    si5351_clock_set_disable_state(SI5351_TRX_REF_CLK, SI5351_REG_CLKm_n_DIS_DISn_HIZ); // Disable in High-Z mode
    si5351_clock_set_drive_current(SI5351_TRX_REF_CLK, 8); // 8 mA
    si5351_clock_set_invert(SI5351_TRX_REF_CLK, 0); // Not inverted
    si5351_clock_set_source(SI5351_TRX_REF_CLK, SI5351_CLK_SRC_MSn); // Corresponding multisynth as source
    si5351_clock_set_output_divider(SI5351_TRX_REF_CLK, 1); // Divide by 1 at the output

    DBGPRINTLN_CTX("CLK%hhu Clock: %.3f MHz", SI5351_TRX_REF_CLK, (float)SI5351_CLK_FREQ[SI5351_TRX_REF_CLK] / 1000000);

    si5351_clock_power_up(SI5351_TRX_REF_CLK); // Power the output stage up
    si5351_clock_enable(SI5351_TRX_REF_CLK); // Software enable the clock output

    //// mmWave Synthesizer Reference clock
    DBGPRINTLN_CTX("---- MS #%hhu (SYNTH_REF_CLK) ----", SI5351_SYNTH_REF_CLK);

    si5351_multisynth_set_source(SI5351_SYNTH_REF_CLK, SI5351_MS_SRC_PLLA);
    si5351_multisynth_set_freq(SI5351_SYNTH_REF_CLK, 25000000);
    si5351_multisynth_set_phase_offset(SI5351_SYNTH_REF_CLK, 100.f);

    DBGPRINTLN_CTX("MS%hhu Source Clock: %.3f MHz", SI5351_SYNTH_REF_CLK, (float)SI5351_MS_SRC_FREQ[SI5351_SYNTH_REF_CLK] / 1000000);
    DBGPRINTLN_CTX("MS%hhu Clock: %.3f MHz", SI5351_SYNTH_REF_CLK, (float)SI5351_MS_FREQ[SI5351_SYNTH_REF_CLK] / 1000000);
    DBGPRINTLN_CTX("MS%hhu Phase offset: %.1f deg", SI5351_SYNTH_REF_CLK, si5351_multisynth_get_phase_offset(SI5351_SYNTH_REF_CLK));

    si5351_clock_set_disable_state(SI5351_SYNTH_REF_CLK, SI5351_REG_CLKm_n_DIS_DISn_HIZ); // Disable in High-Z mode
    si5351_clock_set_drive_current(SI5351_SYNTH_REF_CLK, 8); // 8 mA
    si5351_clock_set_invert(SI5351_SYNTH_REF_CLK, 0); // Not inverted
    si5351_clock_set_source(SI5351_SYNTH_REF_CLK, SI5351_CLK_SRC_MSn); // Corresponding multisynth as source
    si5351_clock_set_output_divider(SI5351_SYNTH_REF_CLK, 1); // Divide by 1 at the output

    DBGPRINTLN_CTX("CLK%hhu Clock: %.3f MHz", SI5351_SYNTH_REF_CLK, (float)SI5351_CLK_FREQ[SI5351_SYNTH_REF_CLK] / 1000000);

    si5351_clock_power_up(SI5351_SYNTH_REF_CLK); // Power the output stage up
    si5351_clock_enable(SI5351_SYNTH_REF_CLK); // Software enable the clock output

    //// External clock output (on frontend interface pin 2_3)
    DBGPRINTLN_CTX("---- MS #%hhu (EXT_CLK_2_3) ----", SI5351_EXT_CLK_2_3);

    si5351_multisynth_set_source(SI5351_EXT_CLK_2_3, SI5351_MS_SRC_PLLB);
    si5351_multisynth_set_freq(SI5351_EXT_CLK_2_3, 10000000);

    DBGPRINTLN_CTX("MS%hhu Source Clock: %.3f MHz", SI5351_EXT_CLK_2_3, (float)SI5351_MS_SRC_FREQ[SI5351_EXT_CLK_2_3] / 1000000);
    DBGPRINTLN_CTX("MS%hhu Clock: %.3f MHz", SI5351_EXT_CLK_2_3, (float)SI5351_MS_FREQ[SI5351_EXT_CLK_2_3] / 1000000);

    si5351_clock_set_disable_state(SI5351_EXT_CLK_2_3, SI5351_REG_CLKm_n_DIS_DISn_HIZ); // Disable in High-Z mode
    si5351_clock_set_drive_current(SI5351_EXT_CLK_2_3, 8); // 8 mA
    si5351_clock_set_invert(SI5351_EXT_CLK_2_3, 0); // Not inverted
    si5351_clock_set_source(SI5351_EXT_CLK_2_3, SI5351_CLK_SRC_MSn); // Corresponding multisynth as source
    si5351_clock_set_output_divider(SI5351_EXT_CLK_2_3, 1); // Divide by 1 at the output

    DBGPRINTLN_CTX("CLK%hhu Clock: %.3f MHz", SI5351_EXT_CLK_2_3, (float)SI5351_CLK_FREQ[SI5351_EXT_CLK_2_3] / 1000000);

    si5351_clock_power_up(SI5351_EXT_CLK_2_3); // Power the output stage up
    si5351_clock_enable(SI5351_EXT_CLK_2_3); // Software enable the clock output

    //// External clock output (on u.FL connector)
    DBGPRINTLN_CTX("---- MS #%hhu (EXT_CLK_OUT) ----", SI5351_EXT_CLK_OUT);

    si5351_multisynth_set_source(SI5351_EXT_CLK_OUT, SI5351_MS_SRC_PLLB);
    si5351_multisynth_set_freq(SI5351_EXT_CLK_OUT, 10000000);

    DBGPRINTLN_CTX("MS%hhu Source Clock: %.3f MHz", SI5351_EXT_CLK_OUT, (float)SI5351_MS_SRC_FREQ[SI5351_EXT_CLK_OUT] / 1000000);
    DBGPRINTLN_CTX("MS%hhu Clock: %.3f MHz", SI5351_EXT_CLK_OUT, (float)SI5351_MS_FREQ[SI5351_EXT_CLK_OUT] / 1000000);

    si5351_clock_set_disable_state(SI5351_EXT_CLK_OUT, SI5351_REG_CLKm_n_DIS_DISn_HIZ); // Disable in High-Z mode
    si5351_clock_set_drive_current(SI5351_EXT_CLK_OUT, 8); // 8 mA
    si5351_clock_set_invert(SI5351_EXT_CLK_OUT, 0); // Not inverted
    si5351_clock_set_source(SI5351_EXT_CLK_OUT, SI5351_CLK_SRC_MSn); // Corresponding multisynth as source
    si5351_clock_set_output_divider(SI5351_EXT_CLK_OUT, 1); // Divide by 1 at the output

    DBGPRINTLN_CTX("CLK%hhu Clock: %.3f MHz", SI5351_EXT_CLK_OUT, (float)SI5351_CLK_FREQ[SI5351_EXT_CLK_OUT] / 1000000);

    si5351_clock_power_up(SI5351_EXT_CLK_OUT); // Power the output stage up
    //si5351_clock_enable(SI5351_EXT_CLK_OUT); // Software enable the clock output

    DBGPRINTLN_CTX("Waiting for all clocks to stabilize...");
    usleep(100000);

    //// Global output enable
    axi_iic_gpo_set_value(AXI_IIC_SYS_INST, AXI_IIC1_GPO_CLK_MNGR_OEn_BIT, 0);

    DBGPRINTLN_CTX("Clock manager global output enabled: %s", axi_iic_gpo_get_value(AXI_IIC_SYS_INST, AXI_IIC1_GPO_CLK_MNGR_OEn_BIT) ? "no" : "yes");

    // Check clk_wiz_0 lock
    ulTimeout = 2000;

    while(--ulTimeout && !axi_gpio_get_value(AXI_GPIO_SYS_INST, AXI_GPIO2_CLK_WIZ0_LOCKED_BIT))
        usleep(1000);

    if(!axi_gpio_get_value(AXI_GPIO_SYS_INST, AXI_GPIO2_CLK_WIZ0_LOCKED_BIT))
    {
        DBGPRINTLN_CTX("FPGA clk_wiz_0 MMCM did not achieve lock (possible issue with FPGA_CLK0), aborting!");

        return 0;
    }
    else
    {
        DBGPRINTLN_CTX("FPGA clk_wiz_0 MMCM locked!");
    }

    // Check DDR3 controller MMCM lock
    ulTimeout = 2000;

    while(--ulTimeout && !axi_gpio_get_value(AXI_GPIO_SYS_INST, AXI_GPIO2_MIG_MMCM_LOCKED_BIT))
        usleep(1000);

    if(!axi_gpio_get_value(AXI_GPIO_SYS_INST, AXI_GPIO2_MIG_MMCM_LOCKED_BIT))
    {
        DBGPRINTLN_CTX("FPGA DDR3 MMCM (mig_7series_0) did not achieve lock, aborting!");

        return 0;
    }
    else
    {
        DBGPRINTLN_CTX("FPGA DDR3 MMCM locked!");
    }

    // Check PCIe MMCM lock
    // ulTimeout = 2000;

    // while(--ulTimeout && !axi_gpio_get_value(AXI_GPIO_SYS_INST, AXI_GPIO2_PCIE_MMCM_LOCKED_BIT))
    //     usleep(1000);

    // if(!axi_gpio_get_value(AXI_GPIO_SYS_INST, AXI_GPIO2_PCIE_MMCM_LOCKED_BIT))
    // {
    //     DBGPRINTLN_CTX("FPGA PCIe MMCM (axi_pcie_0) did not achieve lock (how did we get here?), aborting!");

    //     return 0;
    // }
    // else
    // {
    //     DBGPRINTLN_CTX("FPGA PCIe MMCM locked!");
    // }

    // All done, init clock variables needed by peripherals
    trx_init.reference_clk_rate = SI5351_CLK_FREQ[SI5351_TRX_REF_CLK];

    return 1;
}
uint8_t icyradio_deinit_clocks()
{
    uint32_t ulTimeout;

    // Reset the I2S core
    DBGPRINTLN_CTX("Resetting I2S core...");

    axi_gpio_set_value(AXI_GPIO_SYS_INST, AXI_GPIO2_RST_FPGA_CLK1_49M152_AUX_RESET_IN_BIT, 1);

    ulTimeout = 2000;

    while(--ulTimeout && axi_gpio_get_value(AXI_GPIO_SYS_INST, AXI_GPIO2_RST_FPGA_CLK1_49M152_PERI_ARESETn_BIT))
        usleep(1000);

    if(axi_gpio_get_value(AXI_GPIO_SYS_INST, AXI_GPIO2_RST_FPGA_CLK1_49M152_PERI_ARESETn_BIT))
    {
        DBGPRINTLN_CTX("Could not reset I2S core, aborting!");

        return 0;
    }
    else
    {
        DBGPRINTLN_CTX("I2S core reset!");
    }

    // First, reset the DDR3 AXI interface
    DBGPRINTLN_CTX("Resetting DDR3 AXI interface...");

    axi_gpio_set_value(AXI_GPIO_SYS_INST, AXI_GPIO2_RST_MIG_166M_AUX_RESET_IN_BIT, 1);

    ulTimeout = 2000;

    while(--ulTimeout && axi_gpio_get_value(AXI_GPIO_SYS_INST, AXI_GPIO2_RST_MIG_166M_PERI_ARESETn_BIT))
        usleep(1000);

    if(axi_gpio_get_value(AXI_GPIO_SYS_INST, AXI_GPIO2_RST_MIG_166M_PERI_ARESETn_BIT))
    {
        DBGPRINTLN_CTX("Could not reset DDR3 AXI interface, aborting!");

        return 0;
    }
    else
    {
        DBGPRINTLN_CTX("DDR3 AXI interface reset!");
    }

    // Then reset the DDR3 core
    DBGPRINTLN_CTX("Resetting DDR3 core...");

    axi_gpio_set_value(AXI_GPIO_SYS_INST, AXI_GPIO2_RST_CLK_WIZ0_250M_AUX_RESET_IN_BIT, 1);

    ulTimeout = 2000;

    while(--ulTimeout && axi_gpio_get_value(AXI_GPIO_SYS_INST, AXI_GPIO2_RST_CLK_WIZ0_250M_PERI_ARESETn_BIT))
        usleep(1000);

    if(axi_gpio_get_value(AXI_GPIO_SYS_INST, AXI_GPIO2_RST_CLK_WIZ0_250M_PERI_ARESETn_BIT))
    {
        DBGPRINTLN_CTX("Could not reset DDR3 core, aborting!");

        return 0;
    }
    else
    {
        DBGPRINTLN_CTX("DDR3 core reset, DDR3 MMCM is %s!", axi_gpio_get_value(AXI_GPIO_SYS_INST, AXI_GPIO2_MIG_MMCM_LOCKED_BIT) ? "locked (how?)" : "unlocked");
    }

    // Disable clock manager output
    axi_iic_gpo_set_value(AXI_IIC_SYS_INST, AXI_IIC1_GPO_CLK_MNGR_OEn_BIT, 1);

    DBGPRINTLN_CTX("Clock manager global output disabled, clk_wiz_0 MMCM is %s!", axi_gpio_get_value(AXI_GPIO_SYS_INST, AXI_GPIO2_CLK_WIZ0_LOCKED_BIT) ? "locked (how?)" : "unlocked");

    return 1;
}

uint8_t icyradio_system_reset()
{
    uint8_t ubCLKMngrOutStatus = !axi_iic_gpo_get_value(AXI_IIC_SYS_INST, AXI_IIC1_GPO_CLK_MNGR_OEn_BIT);
    uint8_t ubCLKWIZ0Locked = axi_gpio_get_value(AXI_GPIO_SYS_INST, AXI_GPIO2_CLK_WIZ0_LOCKED_BIT);
    uint8_t ubDDRSrcStatus = axi_gpio_get_value(AXI_GPIO_SYS_INST, AXI_GPIO2_RST_CLK_WIZ0_250M_PERI_ARESETn_BIT);
    uint8_t ubDDR3MMCMLocked = axi_gpio_get_value(AXI_GPIO_SYS_INST, AXI_GPIO2_MIG_MMCM_LOCKED_BIT);
    uint8_t ubDDRAXIStatus = axi_gpio_get_value(AXI_GPIO_SYS_INST, AXI_GPIO2_RST_MIG_166M_PERI_ARESETn_BIT);

    if(ubCLKMngrOutStatus)
    {
        DBGPRINTLN_CTX("Clock manager global output is enabled!");

        if(ubCLKWIZ0Locked && ubDDRSrcStatus && ubDDR3MMCMLocked && ubDDRAXIStatus)
        {
            DBGPRINTLN_CTX("DDR3 is properly out of reset, looks like the system was left initialized");

            if(!icyradio_deinit_clocks())
            {
                DBGPRINTLN_CTX("Could not de-initialize clocks, aborting!");

                return 0;
            }

            DBGPRINTLN_CTX("Initiating system reset...");

            // This will clear the two DDR3 reset bits set previously!
            axi_gpio_set_value(AXI_GPIO_SYS_INST, AXI_GPIO2_SYS_AUX_RESET_BIT, 1);
            usleep(100000); // Do not access anything while it's resetting, otherwise the ENTIRE SYSTEM will hang!

            if(axi_gpio_get_value(AXI_GPIO_SYS_INST, AXI_GPIO2_RST_MIG_166M_AUX_RESET_IN_BIT) || axi_gpio_get_value(AXI_GPIO_SYS_INST, AXI_GPIO2_RST_CLK_WIZ0_250M_AUX_RESET_IN_BIT))
            {
                DBGPRINTLN_CTX("DDR3 reset bits did not de-assert (how?), system reset failed, aborting!");

                return 0;
            }
        }
        else
        {
            DBGPRINTLN_CTX("DDR3 is not correctly out of reset, looks like the system was left in an invalid state (clk_mngr_oe: %s, clk_wiz_0: %s, rst_clk_wiz_0_250M: %s, mig_mmcm: %s, rst_mig_166M: %s), aborting!", ubCLKMngrOutStatus ? "yes" : "no", ubCLKWIZ0Locked ? "locked" : "unlocked", ubDDRSrcStatus ? "de-asserted" : "asserted", ubDDR3MMCMLocked ? "locked" : "unlocked", ubDDRAXIStatus ? "de-asserted" : "asserted");
            DBGPRINTLN_CTX("Please perform a power cycle to properly reset the system");

            return 0;
        }
    }
    else
    {
        if(!ubCLKWIZ0Locked && !ubDDRSrcStatus && !ubDDR3MMCMLocked && !ubDDRAXIStatus)
        {
            DBGPRINTLN_CTX("DDR3 is properly reset, looks like the system was left uninitialized");
            DBGPRINTLN_CTX("Initiating system reset...");

            axi_gpio_set_value(AXI_GPIO_SYS_INST, AXI_GPIO2_SYS_AUX_RESET_BIT, 1);
            usleep(100000); // Do not access anything while it's resetting, otherwise the ENTIRE SYSTEM will hang!

            if(axi_gpio_get_value(AXI_GPIO_SYS_INST, AXI_GPIO2_SYS_AUX_RESET_BIT))
            {
                DBGPRINTLN_CTX("System reset bit did not de-assert (how?), system reset failed, aborting!");

                return 0;
            }
        }
        else if(!ubCLKWIZ0Locked && !ubDDR3MMCMLocked)
        {
            DBGPRINTLN_CTX("DDR3 clocks are not locked and resets are not properly asserted, looks like the system was left in an invalid state (clk_mngr_oe: %s, clk_wiz_0: %s, rst_clk_wiz_0_250M: %s, mig_mmcm: %s, rst_mig_166M: %s), aborting!", ubCLKMngrOutStatus ? "yes" : "no", ubCLKWIZ0Locked ? "locked" : "unlocked", ubDDRSrcStatus ? "de-asserted" : "asserted", ubDDR3MMCMLocked ? "locked" : "unlocked", ubDDRAXIStatus ? "de-asserted" : "asserted");
            DBGPRINTLN_CTX("Please perform a power cycle to properly reset the system");

            return 0;
        }
    }

    return 1;
}

uint8_t icyradio_ddr3_memtest(uint8_t ubFull)
{
    uint32_t ulTimeout = 10000;

    while(--ulTimeout && !axi_gpio_get_value(AXI_GPIO_SYS_INST, AXI_GPIO2_MIG_INIT_CALIB_COMPLETE_BIT))
        usleep(1000);

    if(!axi_gpio_get_value(AXI_GPIO_SYS_INST, AXI_GPIO2_MIG_INIT_CALIB_COMPLETE_BIT))
    {
        DBGPRINTLN_CTX("DDR3 initialization and calibration did not complete in time, aborting!");

        return 0;
    }
    else
    {
        DBGPRINTLN_CTX("MIG initialization and calibration completed successfully!");
    }

    // Basic read/write at first and last address
    DBGPRINTLN_CTX("DDR First Word: 0x%08X", *(volatile uint32_t*)((uintptr_t)pAXIDDRBase + 0x00000000));
    DBGPRINTLN_CTX("DDR Last Word: 0x%08X", *(volatile uint32_t*)((uintptr_t)pAXIDDRBase + AXI_MIG_DDR3_SIZE - 4));

    *(volatile uint32_t*)((uintptr_t)pAXIDDRBase + 0x00000000) = 0x5A5A5A5A;
    *(volatile uint32_t*)((uintptr_t)pAXIDDRBase + AXI_MIG_DDR3_SIZE - 4) = 0xA5A5A5A5;

    DBGPRINTLN_CTX("DDR First Word: 0x%08X", *(volatile uint32_t*)((uintptr_t)pAXIDDRBase + 0x00000000));
    DBGPRINTLN_CTX("DDR Last Word: 0x%08X", *(volatile uint32_t*)((uintptr_t)pAXIDDRBase + AXI_MIG_DDR3_SIZE - 4));

    clock_t start, end;
    uint32_t sum = 0;

    // DBGPRINTLN_CTX("Speed test - Write Bytes");
    // start = clock();
    // for(uint32_t i = 0; i < 32 * 1024 * 1024; i++)
    //     *(volatile uint8_t*)((uintptr_t)pAXIDDRBase + i) = i & 0xFF;
    // end = clock();
    // DBGPRINTLN_CTX("Speed test - Write Bytes 32 MB took %f seconds (%f Mbps)", (double)(end - start) / CLOCKS_PER_SEC, (32.f * 1024 * 1024 * 8) / ((double)(end - start) / CLOCKS_PER_SEC) / 1000000.f);

    // DBGPRINTLN_CTX("Speed test - Read Bytes");
    // sum = 0;
    // start = clock();
    // for(uint32_t i = 0; i < 32 * 1024 * 1024; i++)
    //     sum += *(volatile uint8_t*)((uintptr_t)pAXIDDRBase + i);
    // end = clock();
    // DBGPRINTLN_CTX("Speed test - Read Bytes 32 MB took %f seconds (%f Mbps)", (double)(end - start) / CLOCKS_PER_SEC, (32.f * 1024 * 1024 * 8) / ((double)(end - start) / CLOCKS_PER_SEC) / 1000000.f);

    DBGPRINTLN_CTX("Speed test - Write Words");
    start = clock();
    for(uint32_t i = 0; i < 8 * 1024 * 1024; i += 4)
        *(volatile uint32_t*)((uintptr_t)pAXIDDRBase + i) = i & 0xFFFFFFFF;
    end = clock();
    DBGPRINTLN_CTX("Speed test - Write Words 32 MB took %f seconds (%f Mbps)", (double)(end - start) / CLOCKS_PER_SEC, (32.f * 1024 * 1024 * 8) / ((double)(end - start) / CLOCKS_PER_SEC) / 1000000.f);

    DBGPRINTLN_CTX("Speed test - Read Words");
    sum = 0;
    start = clock();
    for(uint32_t i = 0; i < 8 * 1024 * 1024; i += 4)
        sum += *(volatile uint32_t*)((uintptr_t)pAXIDDRBase + i);
    end = clock();
    DBGPRINTLN_CTX("Speed test - Read Words 32 MB took %f seconds (%f Mbps)", (double)(end - start) / CLOCKS_PER_SEC, (32.f * 1024 * 1024 * 8) / ((double)(end - start) / CLOCKS_PER_SEC) / 1000000.f);

    // Full memory read/write
    if(!ubFull)
        return 1;

    DBGPRINTLN_CTX("Memory test - 1st stage");

    start = clock();
    for(uint32_t i = 0; i < AXI_MIG_DDR3_SIZE; i += 4)
        *(volatile uint32_t*)((uintptr_t)pAXIDDRBase + i) = i;
    end = clock();

    DBGPRINTLN_CTX("Memory test - 1st stage write took %f seconds (%f Mbps)", (double)(end - start) / CLOCKS_PER_SEC, (double)AXI_MIG_DDR3_SIZE / ((double)(end - start) * CLOCKS_PER_SEC) / 1000000 * 8);

    start = clock();
    for(uint32_t i = 0; i < AXI_MIG_DDR3_SIZE; i += 4)
        if(*(volatile uint32_t*)((uintptr_t)pAXIDDRBase + i) != i)
        {
            DBGPRINTLN_CTX("Memory test failed at 0x%08X", i);

            return 0;
        }
    end = clock();

    DBGPRINTLN_CTX("Memory test - 1st stage verify took %f seconds (%f Mbps)", (double)(end - start) / CLOCKS_PER_SEC, (double)AXI_MIG_DDR3_SIZE / ((double)(end - start) * CLOCKS_PER_SEC) / 1000000 * 8);

    DBGPRINTLN_CTX("Memory test - 2nd stage");

    start = clock();
    for(uint32_t i = 0; i < AXI_MIG_DDR3_SIZE; i += 4)
        *(volatile uint32_t*)((uintptr_t)pAXIDDRBase + i) = ~i;
    end = clock();

    DBGPRINTLN_CTX("Memory test - 2nd stage write took %f seconds (%f Mbps)", (double)(end - start) / CLOCKS_PER_SEC, (double)AXI_MIG_DDR3_SIZE / ((double)(end - start) * CLOCKS_PER_SEC) / 1000000 * 8);

    start = clock();
    for(uint32_t i = 0; i < AXI_MIG_DDR3_SIZE; i += 4)
        if((*(volatile uint32_t*)((uintptr_t)pAXIDDRBase + i)) != ~i)
        {
            DBGPRINTLN_CTX("Memory test failed at 0x%08X", i);

            return 0;
        }
    end = clock();

    DBGPRINTLN_CTX("Memory test - 2nd stage verify took %f seconds (%f Mbps)", (double)(end - start) / CLOCKS_PER_SEC, (double)AXI_MIG_DDR3_SIZE / ((double)(end - start) * CLOCKS_PER_SEC) / 1000000 * 8);

    return 1;
}

int main(int argc, char *argv[])
{
    if(argc < 2)
        DBGPRINTLN_CTX("No device ID specified, defaulting to 0");

    int iDeviceID = (argc < 2) ? 0 : atoi(argv[1]);

    if(iDeviceID < 0 || iDeviceID > 255)
    {
        DBGPRINTLN_CTX("Invalid device ID specified (%d)", iDeviceID);

        return 1;
    }

    char pszFilPath[16];

    snprintf(pszFilPath, 16, "/dev/icyradio%d", iDeviceID);

    iDeviceFile = open(pszFilPath, O_RDWR);

	if(iDeviceFile < 0)
    {
        DBGPRINTLN_CTX("Unable to open device file %s (%d)", pszFilPath, errno);

        return 1;
    }

    DBGPRINTLN_CTX("Device file %s opened", pszFilPath);

    if(!icyradio_setup_mmaps())
    {
        DBGPRINTLN_CTX("Unable to setup memory maps");

        close(iDeviceFile);

        return 1;
    }

    DBGPRINTLN_CTX("Memory maps successfully setup");

    if(!icyradio_system_reset())
    {
        DBGPRINTLN_CTX("Unable to reset system");

        icyradio_free_mmaps();
        close(iDeviceFile);

        return 1;
    }

    DBGPRINTLN_CTX("System reset complete");

    while(!axi_dna_ready())
        usleep(1000);

    DBGPRINTLN_CTX("Device serial number: %015lX", axi_dna_read());

    uint32_t bar0h = *(volatile uint32_t*)((uintptr_t)pAXIPCIeBase + 0x208);
    uint32_t bar0l = *(volatile uint32_t*)((uintptr_t)pAXIPCIeBase + 0x20C);
    uint32_t bar1h = *(volatile uint32_t*)((uintptr_t)pAXIPCIeBase + 0x210);
    uint32_t bar1l = *(volatile uint32_t*)((uintptr_t)pAXIPCIeBase + 0x214);
    uint32_t bar2h = *(volatile uint32_t*)((uintptr_t)pAXIPCIeBase + 0x218);
    uint32_t bar2l = *(volatile uint32_t*)((uintptr_t)pAXIPCIeBase + 0x21C);
    DBGPRINTLN_CTX("bar0h = 0x%08X", bar0h);
    DBGPRINTLN_CTX("bar0l = 0x%08X", bar0l);
    DBGPRINTLN_CTX("bar1h = 0x%08X", bar1h);
    DBGPRINTLN_CTX("bar1l = 0x%08X", bar1l);
    DBGPRINTLN_CTX("bar2h = 0x%08X", bar2h);
    DBGPRINTLN_CTX("bar2l = 0x%08X", bar2l);

    *(volatile uint32_t*)((uintptr_t)pAXIPCIeBase + 0x210) = (ullDMABufferPhys >> 32) & 0xFFFFFFFF;
    *(volatile uint32_t*)((uintptr_t)pAXIPCIeBase + 0x214) = (ullDMABufferPhys >> 0) & 0xFFFFFFFF;

    bar1h = *(volatile uint32_t*)((uintptr_t)pAXIPCIeBase + 0x210);
    bar1l = *(volatile uint32_t*)((uintptr_t)pAXIPCIeBase + 0x214);
    DBGPRINTLN_CTX("new bar1h = 0x%08X", bar1h);
    DBGPRINTLN_CTX("new bar1l = 0x%08X", bar1l);

    // DBGPRINTLN_CTX("O clk_mngr oe? %s", axi_iic_gpo_get_value(AXI_IIC_SYS_INST, 1) ? "no" : "yes");
    // DBGPRINTLN_CTX("I clk_wiz_0 locked? %s", axi_gpio_get_value(AXI_GPIO_SYS_INST, 0) ? "yes" : "no");
    // DBGPRINTLN_CTX("I mig_7series_0 locked? %s", axi_gpio_get_value(AXI_GPIO_SYS_INST, 1) ? "yes" : "no");
    // DBGPRINTLN_CTX("I axi_pcie_0 locked? %s", axi_gpio_get_value(AXI_GPIO_SYS_INST, 2) ? "yes" : "no");
    // DBGPRINTLN_CTX("I mig_7series_0 init_calib_complete? %s", axi_gpio_get_value(AXI_GPIO_SYS_INST, 4) ? "yes" : "no");
    // DBGPRINTLN_CTX("I axi_pcie_0 user_link_up? %s", axi_gpio_get_value(AXI_GPIO_SYS_INST, 5) ? "yes" : "no");
    // DBGPRINTLN_CTX("I picorv32_0 trap? %s", axi_gpio_get_value(AXI_GPIO_SYS_INST, 6) ? "yes" : "no");
    // DBGPRINTLN_CTX("O CM4_WAKE asserted? %s", axi_gpio_get_value(AXI_GPIO_SYS_INST, 16) ? "yes" : "no");
    // DBGPRINTLN_CTX("I rst_mig_7series_0_166M peripheral_aresetn asserted? %s", axi_gpio_get_value(AXI_GPIO_SYS_INST, 24) ? "no" : "yes");
    // DBGPRINTLN_CTX("I rst_clk_wiz_0_250M peripheral_aresetn asserted? %s", axi_gpio_get_value(AXI_GPIO_SYS_INST, 25) ? "no" : "yes");
    // DBGPRINTLN_CTX("O rst_mig_7series_0_166M aux_reset_in asserted? %s", axi_gpio_get_value(AXI_GPIO_SYS_INST, 28) ? "yes" : "no");
    // DBGPRINTLN_CTX("O rst_clk_wiz_0_250M aux_reset_in asserted? %s", axi_gpio_get_value(AXI_GPIO_SYS_INST, 29) ? "yes" : "no");
    // DBGPRINTLN_CTX("O picorv32_0 resetn asserted? %s", axi_gpio_get_value(AXI_GPIO_SYS_INST, 30) ? "no" : "yes");
    // DBGPRINTLN_CTX("O sys_aux_reset asserted? %s", axi_gpio_get_value(AXI_GPIO_SYS_INST, 31) ? "yes" : "no");

    // Init interfaces
    axi_iic_init(AXI_IIC_CODEC_INST, 125000000UL, AXI_IIC_FAST);
    axi_iic_init(AXI_IIC_SYS_INST, 125000000UL, AXI_IIC_FAST);
    //axi_quad_spi_init(AXI_QUAD_SPI_FLASH_INST, AXI_QUAD_SPI_MODE_0, AXI_QUAD_SPI_MSB_FIRST); // Quad PI 0 is used for flash XIP
    axi_quad_spi_init(AXI_QUAD_SPI_TRX_INST, AXI_QUAD_SPI_MODE_1, AXI_QUAD_SPI_MSB_FIRST);
    axi_quad_spi_init(AXI_QUAD_SPI_SYNTH_INST, AXI_QUAD_SPI_MODE_0, AXI_QUAD_SPI_MSB_FIRST);

    DBGPRINTLN_CTX("Interfaces successfully initialized");

    // Init Si5351 clock manager
    if(!icyradio_init_clocks())
    {
        DBGPRINTLN_CTX("Unable to initialize clocks");

        icyradio_free_mmaps();
        close(iDeviceFile);

        return 1;
    }

    DBGPRINTLN_CTX("Clocks successfully initialized");

    void *tbuf = NULL;//malloc(ullDMABufferSize);
    if(tbuf)
    {
        srand(time(NULL));
        uint32_t salt = rand() % 1000000;

        clock_t start, end;

        start = clock();
        for(uint32_t i = 0; i < ullDMABufferSize; i += sizeof(uint32_t))
            *(volatile uint32_t*)((uintptr_t)tbuf + i) = salt + i;
        end = clock();

        DBGPRINTLN_CTX("User buffer write took %f seconds (%f Mbps)", (double)(end - start) / CLOCKS_PER_SEC, (double)ullDMABufferSize / ((double)(end - start) / CLOCKS_PER_SEC) / 1000000 * 8);

        start = clock();
        memcpy(pDMABufferBase, tbuf, ullDMABufferSize);
        // for(uint32_t i = 0; i < ullDMABufferSize; i += sizeof(uint32_t))
        //     *(volatile uint32_t*)((uintptr_t)pDMABufferBase + i) = salt + i;
        end = clock();

        DBGPRINTLN_CTX("DMA buffer write took %f seconds (%f Mbps)", (double)(end - start) / CLOCKS_PER_SEC, (double)ullDMABufferSize / ((double)(end - start) / CLOCKS_PER_SEC) / 1000000 * 8);

        start = clock();
        for(uint32_t i = 0; i < ullDMABufferSize; i += sizeof(uint32_t))
            if(*(volatile uint32_t*)((uintptr_t)pDMABufferBase + i) != salt + i)
            {
                DBGPRINTLN_CTX("DMA buffer failed at 0x%08X (0x%08X != 0x%08X)", i, *(volatile uint32_t*)((uintptr_t)pDMABufferBase + i), salt + i);

                break;
            }
        end = clock();

        DBGPRINTLN_CTX("DMA buffer read took %f seconds (%f Mbps)", (double)(end - start) / CLOCKS_PER_SEC, (double)ullDMABufferSize / ((double)(end - start) / CLOCKS_PER_SEC) / 1000000 * 8);

        start = clock();
        // memcpy(pAXIDDRBase, tbuf, ullDMABufferSize);
        for(uint32_t i = 0; i < ullDMABufferSize; i += sizeof(uint32_t))
            *(volatile uint32_t*)((uintptr_t)pAXIDDRBase + i) = *(volatile uint32_t*)((uintptr_t)tbuf + i);
        end = clock();

        DBGPRINTLN_CTX("DDR buffer write took %f seconds (%f Mbps)", (double)(end - start) / CLOCKS_PER_SEC, (double)ullDMABufferSize / ((double)(end - start) / CLOCKS_PER_SEC) / 1000000 * 8);

        start = clock();
        for(uint32_t i = 0; i < ullDMABufferSize; i += sizeof(uint32_t))
            if(*(volatile uint32_t*)((uintptr_t)pAXIDDRBase + i) != salt + i)
            {
                DBGPRINTLN_CTX("DDR buffer failed at 0x%08X (0x%08X != 0x%08X)", i, *(volatile uint32_t*)((uintptr_t)pAXIDDRBase + i), salt + i);

                break;
            }
        end = clock();

        DBGPRINTLN_CTX("DDR buffer read took %f seconds (%f Mbps)", (double)(end - start) / CLOCKS_PER_SEC, (double)ullDMABufferSize / ((double)(end - start) / CLOCKS_PER_SEC) / 1000000 * 8);

        free(tbuf);
    }

    DBGPRINTLN_CTX("--- Flash QSPI XIP Test ---");
    DBGPRINTLN_CTX("Flash First Word: 0x%08X", *(volatile uint32_t*)((uintptr_t)pAXIFlashBase));
    DBGPRINTLN_CTX("Flash Bitstream Word: 0x%08X", *(volatile uint32_t*)((uintptr_t)pAXIFlashBase + 0x20));
    DBGPRINTLN_CTX("Flash Last Word: 0x%08X", *(volatile uint32_t*)((uintptr_t)pAXIFlashBase + AXI_QUAD_SPI0_XIP_SIZE - 4));

    DBGPRINTLN_CTX("--- BRAM Test ---");
    DBGPRINTLN_CTX("BRAM First Word: 0x%08X", *(volatile uint32_t*)((uintptr_t)pAXIBRAMBase));
    DBGPRINTLN_CTX("BRAM Last Word: 0x%08X", *(volatile uint32_t*)((uintptr_t)pAXIBRAMBase + AXI_BRAM_SIZE - 4));

    *(volatile uint32_t*)((uintptr_t)pAXIBRAMBase + 0x00000000) = 0x5A5A5A5A;
    *(volatile uint32_t*)((uintptr_t)pAXIBRAMBase + AXI_BRAM_SIZE - 4) = 0xA5A5A5A5;

    DBGPRINTLN_CTX("BRAM First Word: 0x%08X", *(volatile uint32_t*)((uintptr_t)pAXIBRAMBase));
    DBGPRINTLN_CTX("BRAM Last Word: 0x%08X", *(volatile uint32_t*)((uintptr_t)pAXIBRAMBase + AXI_BRAM_SIZE - 4));

    clock_t start, end;

    start = clock();
    for(uint32_t i = 0; i < AXI_BRAM_SIZE; i += sizeof(uint32_t))
        *(volatile uint32_t*)((uintptr_t)pAXIBRAMBase + i) = i;
    end = clock();

    DBGPRINTLN_CTX("BRAM write took %f seconds (%f Mbps)", (double)(end - start) / CLOCKS_PER_SEC, (double)AXI_BRAM_SIZE / ((double)(end - start) / CLOCKS_PER_SEC) / 1000000 * 8);

    start = clock();
    for(uint32_t i = 0; i < AXI_BRAM_SIZE; i += sizeof(uint32_t))
        if(*(volatile uint32_t*)((uintptr_t)pAXIBRAMBase + i) != i)
        {
            DBGPRINTLN_CTX("BRAM failed at 0x%08X", i);

            break;
        }
    end = clock();

    DBGPRINTLN_CTX("BRAM read took %f seconds (%f Mbps)", (double)(end - start) / CLOCKS_PER_SEC, (double)AXI_BRAM_SIZE / ((double)(end - start) / CLOCKS_PER_SEC) / 1000000 * 8);

    DBGPRINTLN_CTX("--- XADC Test ---");

    if(!axi_xadc_init())
    {
        DBGPRINTLN_CTX("Unable to initialize XADC");

        icyradio_free_mmaps();
        close(iDeviceFile);

        return 1;
    }

    DBGPRINTLN_CTX("XADC Temperature: %.3f C (Max: %.3f C, Min: %.3f C)", axi_xadc_read_temperature(), axi_xadc_read_max_temperature(), axi_xadc_read_min_temperature());
    DBGPRINTLN_CTX("XADC VCCINT: %.3f V (Max: %.3f V, Min: %.3f V)", axi_xadc_read_vccint(), axi_xadc_read_max_vccint(), axi_xadc_read_min_vccint());
    DBGPRINTLN_CTX("XADC VCCAUX: %.3f V (Max: %.3f V, Min: %.3f V)", axi_xadc_read_vccaux(), axi_xadc_read_max_vccaux(), axi_xadc_read_min_vccaux());
    DBGPRINTLN_CTX("XADC VBRAM: %.3f V (Max: %.3f V, Min: %.3f V)", axi_xadc_read_vbram(), axi_xadc_read_max_vbram(), axi_xadc_read_min_vbram());

    if(!axi_irq_ctrl_init(iDeviceFile))
    {
        DBGPRINTLN_CTX("Unable to initialize IRQ Controller");

        icyradio_free_mmaps();
        close(iDeviceFile);

        return 1;
    }

    axi_irq_ctrl_irq_config(AXI_IRQ_CTRL_IRQ_NUM_AXI_DMAC_RF_RX, AXI_IRQ_CTRL_REG_IRQ_CONFIG_IRQ_DEST_PCIE_MSI(0), 1);
    axi_irq_ctrl_irq_config(AXI_IRQ_CTRL_IRQ_NUM_AXI_DMAC_RF_TX, AXI_IRQ_CTRL_REG_IRQ_CONFIG_IRQ_DEST_PCIE_MSI(0), 1);
    axi_irq_ctrl_irq_config(AXI_IRQ_CTRL_IRQ_NUM_AXI_DMAC_I2S_RX, AXI_IRQ_CTRL_REG_IRQ_CONFIG_IRQ_DEST_PCIE_MSI(0), 1);
    axi_irq_ctrl_irq_config(AXI_IRQ_CTRL_IRQ_NUM_AXI_DMAC_I2S_TX, AXI_IRQ_CTRL_REG_IRQ_CONFIG_IRQ_DEST_PCIE_MSI(0), 1);

    if(!axi_i2s_init())
    {
        DBGPRINTLN_CTX("Unable to initialize I2S Controller");

        icyradio_free_mmaps();
        close(iDeviceFile);

        return 1;
    }

    // DDR3
    // icyradio_ddr3_memtest(0);

    // rv_test();

    // mmWave Synthesizer
    if(r8v97003_init())
    {
        r8v97003_power_up(R8V97003_PWR_ALL); // Power the chip up

        r8v97003_ld_config(1, 1, R8V97003_LD_PIN_MODE_LD, R8V97003_LD_PREC_6p4ns);
        r8v97003_pfd_config(SI5351_CLK_FREQ[SI5351_SYNTH_REF_CLK], 0, 1, 5, 1, R8V97003_PFD_PW_260ps); // 25 MHz * 2 * 5 = 250 MHz PFD

        DBGPRINTLN_CTX("mmWave Synth Ref: %.3f MHz", (float)R8V97003_REF_FREQ / 1000000);
        DBGPRINTLN_CTX("mmWave Synth Ref Mult In: %.3f MHz", (float)R8V97003_REF_MULT_IN_FREQ / 1000000);
        DBGPRINTLN_CTX("mmWave Synth Ref RDiv In: %.3f MHz", (float)R8V97003_REF_RDIV_IN_FREQ / 1000000);
        DBGPRINTLN_CTX("mmWave Synth PFD: %.3f MHz", (float)R8V97003_PFD_FREQ / 1000000);
        DBGPRINTLN_CTX("mmWave Synth Band Sel: %.3f kHz", (float)R8V97003_BAND_SEL_CLK_FREQ / 1000);

        r8v97003_set_cp_current(9.0, 9.0, 0.0);
        DBGPRINTLN_CTX("mmWave Synth CP PMOS: %.3f mA", r8v97003_get_cp_pmos_current());
        DBGPRINTLN_CTX("mmWave Synth CP NMOS: %.3f mA", r8v97003_get_cp_nmos_current());
        DBGPRINTLN_CTX("mmWave Synth CP Bleeder: %.3f mA", r8v97003_get_cp_bleeder_current());

        r8v97003_out_config(0, 1, 1);

        r8v97003_set_frequency(1500000000ULL);
        DBGPRINTLN_CTX("mmWave Synth VCO: %.3f GHz", (double)R8V97003_VCO_FREQ / 1000000000);
        DBGPRINTLN_CTX("mmWave Synth Frequency: %.3f MHz", (double)R8V97003_FREQ / 1000000);

        DBGPRINTLN_CTX("mmWave Synth Muted: %s", axi_gpio_get_value(AXI_GPIO_SYNTH_INST, AXI_GPIO1_SYNTH_MUTE_BIT) ? "yes" : "no");
        axi_gpio_set_value(AXI_GPIO_SYNTH_INST, AXI_GPIO1_SYNTH_MUTE_BIT, 0);
        DBGPRINTLN_CTX("mmWave Synth Muted: %s", axi_gpio_get_value(AXI_GPIO_SYNTH_INST, AXI_GPIO1_SYNTH_MUTE_BIT) ? "yes" : "no");

        usleep(2000000);

        r8v97003_power_down(R8V97003_PWR_ALL); // Power the chip down
    }

    // trx_test();

    /*
    DBGPRINTLN_CTX("--- Flash SPI Test ---");

    spi_init(pBAR0 + 0x00008000);

    usleep(100000);

    spi_select(pBAR0 + 0x00008000, 1);

    spi_xfer(pBAR0 + 0x00008000, 0x9F);
    DBGPRINTLN_CTX("Flash Manufacturer: 0x%02X", spi_xfer(pBAR0 + 0x00008000, 0x00));
    DBGPRINTLN_CTX("Flash MemType: 0x%02X", spi_xfer(pBAR0 + 0x00008000, 0x00));
    DBGPRINTLN_CTX("Flash MemCap: 0x%02X", spi_xfer(pBAR0 + 0x00008000, 0x00));

    spi_select(pBAR0 + 0x00008000, 0);

    usleep(100000);

    spi_select(pBAR0 + 0x00008000, 1);

    spi_xfer(pBAR0 + 0x00008000, 0x05);
    DBGPRINTLN_CTX("Flash Status 1: 0x%02X", spi_xfer(pBAR0 + 0x00008000, 0x00));

    spi_select(pBAR0 + 0x00008000, 0);

    usleep(100000);

    spi_select(pBAR0 + 0x00008000, 1);

    spi_xfer(pBAR0 + 0x00008000, 0x35);
    DBGPRINTLN_CTX("Flash Status 2: 0x%02X", spi_xfer(pBAR0 + 0x00008000, 0x00));

    spi_select(pBAR0 + 0x00008000, 0);

    usleep(100000);
    spi_select(pBAR0 + 0x00008000, 1);
    spi_xfer(pBAR0 + 0x00008000, 0x06); // Write Enable
    spi_select(pBAR0 + 0x00008000, 0);

    usleep(100000);
    spi_select(pBAR0 + 0x00008000, 1);
    spi_xfer(pBAR0 + 0x00008000, 0x01); // Write Status Register
    spi_xfer(pBAR0 + 0x00008000, 0x00); // Status 1 - Disable Write Protections
    spi_xfer(pBAR0 + 0x00008000, 0x02); // Status 2 - Enable QE operation
    spi_select(pBAR0 + 0x00008000, 0);

    usleep(100000);

    spi_select(pBAR0 + 0x00008000, 1);

    spi_xfer(pBAR0 + 0x00008000, 0x05);
    DBGPRINTLN_CTX("Flash Status 1: 0x%02X", spi_xfer(pBAR0 + 0x00008000, 0x00));

    spi_select(pBAR0 + 0x00008000, 0);

    usleep(100000);

    spi_select(pBAR0 + 0x00008000, 1);

    spi_xfer(pBAR0 + 0x00008000, 0x35);
    DBGPRINTLN_CTX("Flash Status 2: 0x%02X", spi_xfer(pBAR0 + 0x00008000, 0x00));

    spi_select(pBAR0 + 0x00008000, 0);
    */

    /*
    // DBGPRINTLN_CTX("--- CODEC_I2C Test ---");
    // axi_iic_init(AXI_IIC_CODEC_INST, );

    // axi_iic_gpo_set_value(AXI_IIC_CODEC_INST, 0, 1);
    // usleep(10000);

    // uint8_t buf[10];

    // buf[0] = 0x00;
    // buf[1] = 0x00;
    // axi_iic_write(AXI_IIC_CODEC_INST, 0x3C, buf, 2, 0);
    // DBGPRINTLN_CTX("ADAU1372 Reg0 before: 0x%02X", axi_iic_read_byte(AXI_IIC_CODEC_INST, 0x3C, 1));

    // buf[0] = 0x00;
    // buf[1] = 0x00;
    // buf[2] = BIT(4);
    // axi_iic_write(AXI_IIC_CODEC_INST, 0x3C, buf, 3, 1);

    // buf[0] = 0x00;
    // buf[1] = 0x00;
    // axi_iic_write(AXI_IIC_CODEC_INST, 0x3C, buf, 2, 0);
    // DBGPRINTLN_CTX("ADAU1372 Reg0 after: 0x%02X", axi_iic_read_byte(AXI_IIC_CODEC_INST, 0x3C, 1));

    // axi_iic_gpo_set_value(AXI_IIC_CODEC_INST, 0, 0);
    */

    usleep(2000000);

    icyradio_deinit_clocks();
    icyradio_free_mmaps();
    close(iDeviceFile);

    return 0;
}