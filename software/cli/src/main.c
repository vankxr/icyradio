#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <fcntl.h>
#include <unistd.h>
#include <errno.h>
#include <time.h>
#include "axi.h"
#include "axi_gpio.h"
#include "axi_quad_spi.h"
#include "axi_iic.h"
#include "axi_dmac.h"
#include "axi_adc_core.h"
#include "axi_dac_core.h"
#include "ad9361_api.h"
#include "si5351.h"
#include "debug_macros.h"
#include "utils.h"

/*
void spi_init(void *pBase)
{
    // Reset
    *(volatile uint32_t*)((uintptr_t)pBase + 0x40) = 0x0000000A;

    *(volatile uint32_t*)((uintptr_t)pBase + 0x60) = BIT(7) | BIT(6) | BIT(5) | BIT(2) | BIT(1);
}
void spi_select(void *pBase, uint8_t ubSelect)
{
    *(volatile uint32_t*)((uintptr_t)pBase + 0x70) = ubSelect ? 0 : BIT(0);
}
uint8_t spi_xfer(void *pBase, uint8_t ubData)
{
    *(volatile uint32_t*)((uintptr_t)pBase + 0x60) = (*(volatile uint32_t*)((uintptr_t)pBase + 0x60)) | BIT(6); // Clear RX FIFO
    *(volatile uint32_t*)((uintptr_t)pBase + 0x68) = ubData;

    while((*(volatile uint32_t*)((uintptr_t)pBase + 0x64)) & BIT(0)) // Wait for RX FIFO to be not empty
        usleep(0);

    return (uint8_t)(*(volatile uint32_t*)((uintptr_t)pBase + 0x6C));
}

void i2c_init(void *pBase)
{
    // Reset
    *(volatile uint32_t*)((uintptr_t)pBase + 0x040) = 0x0000000A;

    *(volatile uint32_t*)((uintptr_t)pBase + 0x120) = 0x0000000F;
    *(volatile uint32_t*)((uintptr_t)pBase + 0x100) = ((*(volatile uint32_t*)((uintptr_t)pBase + 0x100)) & ~(BIT(6) | BIT(0))) | BIT(1);
    *(volatile uint32_t*)((uintptr_t)pBase + 0x100) = ((*(volatile uint32_t*)((uintptr_t)pBase + 0x100)) & ~(BIT(6) | BIT(1))) | BIT(0);

    *(volatile uint32_t*)((uintptr_t)pBase + 0x020) = (*(volatile uint32_t*)((uintptr_t)pBase + 0x020)); // Clear IRQs
}
uint8_t i2c_transmit(void *pBase, uint8_t ubAddress, uint8_t *pubSrc, uint8_t ubCount, uint8_t ubStop)
{
    uint32_t ulFlags;

    if(!ubCount)
        return 0;

    // DBGPRINTLN_CTX("status %02X, intr %02X", (uint8_t)(*(volatile uint32_t*)((uintptr_t)pBase + 0x104)), (uint8_t)(*(volatile uint32_t*)((uintptr_t)pBase + 0x020)));

    if(((*(volatile uint32_t*)((uintptr_t)pBase + 0x104)) & BIT(2)) && !((*(volatile uint32_t*)((uintptr_t)pBase + 0x020)) & BIT(2))) // Bus busy and not owner
        return 0;

    // DBGPRINTLN_CTX("bus ok");

    if(!((*(volatile uint32_t*)((uintptr_t)pBase + 0x104)) & BIT(7))) // Clear TX FIFO
    {
        *(volatile uint32_t*)((uintptr_t)pBase + 0x100) = (*(volatile uint32_t*)((uintptr_t)pBase + 0x100)) | BIT(1);
        *(volatile uint32_t*)((uintptr_t)pBase + 0x100) = (*(volatile uint32_t*)((uintptr_t)pBase + 0x100)) & ~BIT(1);
    }

    // DBGPRINTLN_CTX("tx fifo cleared");

    while(!((*(volatile uint32_t*)((uintptr_t)pBase + 0x104)) & BIT(6))) // Clear RX FIFO
        (void)(*(volatile uint32_t*)((uintptr_t)pBase + 0x10C));

    // DBGPRINTLN_CTX("rx fifo cleared");
    // DBGPRINTLN_CTX("status %02X", (uint8_t)(*(volatile uint32_t*)((uintptr_t)pBase + 0x104)));

    *(volatile uint32_t*)((uintptr_t)pBase + 0x020) = (*(volatile uint32_t*)((uintptr_t)pBase + 0x020)); // Clear IRQs
    // DBGPRINTLN_CTX("irq cleared, intr %02X", (uint8_t)(*(volatile uint32_t*)((uintptr_t)pBase + 0x020)));

    *(volatile uint32_t*)((uintptr_t)pBase + 0x108) = BIT(8) | ubAddress;
    // DBGPRINTLN_CTX("addr written");

    ulFlags = (*(volatile uint32_t*)((uintptr_t)pBase + 0x020));

    if(ubAddress & 1) // Read
    {
        *(volatile uint32_t*)((uintptr_t)pBase + 0x108) = (ubStop ? BIT(9) : 0) | ubCount;
    }
    else
    {
        while(ulFlags & BIT(4))
        {
            *(volatile uint32_t*)((uintptr_t)pBase + 0x020) = ulFlags & BIT(4);
            ulFlags = (*(volatile uint32_t*)((uintptr_t)pBase + 0x020));

            usleep(0);
        }

        // DBGPRINTLN_CTX("not busy irq cleared, intr %02X", (uint8_t)ulFlags);
    }

    do
    {
        if(ubAddress & 1) // Read
        {
            // DBGPRINTLN_CTX("wait for rx data (%hhu), status %02X", ubCount, (uint8_t)(*(volatile uint32_t*)((uintptr_t)pBase + 0x104)));

            while((*(volatile uint32_t*)((uintptr_t)pBase + 0x104)) & BIT(6))
            {
                ulFlags = (*(volatile uint32_t*)((uintptr_t)pBase + 0x020));

                if(ulFlags & (BIT(1) | BIT(0)))
                    return 0; // Early read termination OR Arbitration lost

                usleep(0);
            }

            *pubSrc++ = (uint8_t)(*(volatile uint32_t*)((uintptr_t)pBase + 0x10C));
        }
        else // Write
        {
            // DBGPRINTLN_CTX("wait for tx empty or error");

            while(!((*(volatile uint32_t*)((uintptr_t)pBase + 0x104)) & BIT(7)))
            {
                ulFlags = (*(volatile uint32_t*)((uintptr_t)pBase + 0x020));

                if(ulFlags & (BIT(1) | BIT(0)))
                    return 0; // Slave NACK OR Arbitration lost

                usleep(0);
            }

            *(volatile uint32_t*)((uintptr_t)pBase + 0x020) = (*(volatile uint32_t*)((uintptr_t)pBase + 0x020)) & BIT(2);

            // DBGPRINTLN_CTX("tx throttle irq cleared, intr %02X", (uint8_t)(*(volatile uint32_t*)((uintptr_t)pBase + 0x020)));

            // DBGPRINTLN_CTX("write tx data (%hhu), stop %hhu", ubCount, ubStop);

            *(volatile uint32_t*)((uintptr_t)pBase + 0x108) = ((ubCount == 1 && ubStop) ? BIT(9) : 0) | *pubSrc++;
        }
    } while(--ubCount);

    if(ubAddress & 1) // Read
        *(volatile uint32_t*)((uintptr_t)pBase + 0x020) = (*(volatile uint32_t*)((uintptr_t)pBase + 0x020)) & BIT(4); // Clear NOT_BUSY IRQ, so that if we encounter it set again it is really not busy

    while(1)
    {
        ulFlags = (*(volatile uint32_t*)((uintptr_t)pBase + 0x020));

        if(ulFlags & BIT(0))
            return 0; // Arbitration lost

        if(!(ubAddress & 1) && (ulFlags & BIT(1)))
            return 0; // Slave NACK

        if(ubStop && (ulFlags & BIT(4)))
            break; // Stop was requested and bus is free, we are done!

        if(!ubStop && !(ubAddress & 1) && (ulFlags & BIT(2)))
            break; // No stop was requested and bus is throttled by the master, waiting for another transaction, we are done!

        if(!ubStop && (ubAddress & 1))
            break; // No stop was requested and we already read all the bytes we wanted, no need to wait for the bus to be free, we are done!

        usleep(0);

        ulFlags = (*(volatile uint32_t*)((uintptr_t)pBase + 0x020));
    }

    // DBGPRINTLN_CTX("status %02X, intr %02X", (uint8_t)(*(volatile uint32_t*)((uintptr_t)pBase + 0x104)), (uint8_t)(*(volatile uint32_t*)((uintptr_t)pBase + 0x020)));

    return 1;
}
uint8_t i2c_write(void *pBase, uint8_t ubAddress, uint8_t *pubSrc, uint8_t ubCount, uint8_t ubStop)
{
    return i2c_transmit(pBase, (ubAddress << 1) & ~0x01, pubSrc, ubCount, ubStop);
}
uint8_t i2c_read(void *pBase, uint8_t ubAddress, uint8_t *pubDst, uint8_t ubCount, uint8_t ubStop)
{
    return i2c_transmit(pBase, (ubAddress << 1) | 0x01, pubDst, ubCount, ubStop);
}
uint8_t i2c_write_byte(void *pBase, uint8_t ubAddress, uint8_t ubData, uint8_t ubStop)
{
    return i2c_transmit(pBase, (ubAddress << 1) & ~0x01, &ubData, 1, ubStop);
}
uint8_t i2c_read_byte(void *pBase, uint8_t ubAddress, uint8_t ubStop)
{
    uint8_t ubData;

    if(!i2c_transmit(pBase, (ubAddress << 1) | 0x01, &ubData, 1, ubStop))
        return 0;

    return ubData;
}
*/


void *pAXIFlashMap;
void *pAXIFlashBase;
void *pAXIDDRMap;
void *pAXIDDRBase;
void *pAXIPeriphMap;
void *pAXIPeriphBase;
void *pAXIGPIOBase[AXI_GPIO_NUM_INSTANCES];
void *pAXIQuadSPIBase[AXI_QUAD_SPI_NUM_INSTANCES];
void *pAXIIICBase[AXI_IIC_NUM_INSTANCES];
int iDeviceFile;


struct axi_adc_init rx_adc_init =
{
	.name = "cf-ad9361-lpc",
	.base = NULL, // To be initialized later
	.num_channels = 4,
};
struct axi_dac_init tx_dac_init =
{
	.name = "cf-ad9361-dds-core-lpc",
	.base = NULL, // To be initialized later
	.num_channels = 4,
    .channels = NULL,
	.rate = 3,
};

struct axi_dmac_init rx_dmac_init =
{
	.name = "rx_dmac",
	.base = NULL, // To be initialized later
	.irq_option = IRQ_DISABLED,
};
struct axi_dmac *rx_dmac;

struct axi_dmac_init tx_dmac_init =
{
	.name = "tx_dmac",
	.base = NULL, // To be initialized later
	.irq_option = IRQ_DISABLED,
};
struct axi_dmac *tx_dmac;

AD9361_InitParam trx_init =
{
    /* Device selection */
    .dev_sel = ID_AD9361,
    /* Reference Clock */
    .reference_clk_rate = 40000000UL, // 40 MHz
    /* Base Configuration */
    .two_rx_two_tx_mode_enable = 1,
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
    .rx_synthesizer_frequency_hz = 100000000UL, // 100 MHz
    .tx_synthesizer_frequency_hz = 2400000000UL, // 2.4 GHz
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
    .gc_rx1_mode = 2,
    .gc_rx2_mode = 2,
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
    .digital_interface_tune_skip_mode = 0,
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
    .rx_data_clock_delay = 0,
    .rx_data_delay = 0,
    .tx_fb_clock_delay = 0,
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

    /* AXI ADC and DAC */
    .rx_adc_init = &rx_adc_init,
    .tx_dac_init = &tx_dac_init,
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
struct ad9361_rf_phy *ad9361_phy;

void trx_test()
{
	ad9361_init(&ad9361_phy, &trx_init);

    ad9361_tx_lo_powerdown(ad9361_phy, OFF);

    // char buf[1024];

    // memset(buf, 0, sizeof(buf));

    // if(ad9361_dig_interface_timing_analysis(ad9361_phy, buf, sizeof(buf)) >= 0)
    //     DBGPRINTLN_CTX("DIGITAL TIMING ANALYSIS:\n%s", buf);

	//ad9361_set_tx_fir_config(ad9361_phy, tx_fir_config);
	//ad9361_set_rx_fir_config(ad9361_phy, rx_fir_config);

    int32_t status = axi_dmac_init(&tx_dmac, &tx_dmac_init);
	if (status < 0) {
		printf("axi_dmac_init tx init error: %"PRIi32"\n", status);
		return;
	}

	status = axi_dmac_init(&rx_dmac, &rx_dmac_init);
	if (status < 0) {
		printf("axi_dmac_init rx init error: %"PRIi32"\n", status);
		return;
	}

	struct axi_dma_transfer read_transfer =
    {
		// Number of bytes to write/read
		.size = 65536 * 4 * sizeof(uint16_t),
		// Transfer done flag
		.transfer_done = 0,
		// Signal transfer mode
		.cyclic = NO,
		// Address of data source
		.src_addr = 0,
		// Address of data destination
		.dest_addr = (uintptr_t)AXI_MIG_DDR3_BASE
	};

	/* Read the data from the ADC DMA. */
	axi_dmac_transfer_start(rx_dmac, &read_transfer);

	/* Wait until transfer finishes */
	status = axi_dmac_transfer_wait_completion(rx_dmac, 500);
	if(status < 0)
		return;

    printf("DMA_EXAMPLE: address=%016lX samples=%d channels=%u bits=%u\n",
	       (uintptr_t)pAXIDDRBase, 65536 * 4, rx_adc_init.num_channels,
	       16);

    // Export data to a matlab file for FFT analysis
    FILE *pFile = fopen("adc_data.m", "wb");

    if(pFile == NULL)
    {
        printf("Unable to open file!\n");

        return;
    }

    fprintf(pFile, "adc_ch0 = [");

    for(uint32_t i = 0; i < 65536 * 4 * sizeof(uint16_t); i += 4 * sizeof(uint16_t))
    {
        int16_t sSample = *((volatile int16_t *)((uintptr_t)pAXIDDRBase + i));

        fprintf(pFile, "%d ", sSample);
    }

    fprintf(pFile, "];\n");

    fprintf(pFile, "adc_ch1 = [");

    for(uint32_t i = 0; i < 65536 * 4 * sizeof(uint16_t); i += 4 * sizeof(uint16_t))
    {
        int16_t sSample = *((volatile int16_t *)((uintptr_t)pAXIDDRBase + i + 1 * sizeof(uint16_t)));

        fprintf(pFile, "%d ", sSample);
    }

    fprintf(pFile, "];\n");

    fprintf(pFile, "adc_ch2 = [");

    for(uint32_t i = 0; i < 65536 * 4 * sizeof(uint16_t); i += 4 * sizeof(uint16_t))
    {
        int16_t sSample = *((volatile int16_t *)((uintptr_t)pAXIDDRBase + i + 2 * sizeof(uint16_t)));

        fprintf(pFile, "%d ", sSample);
    }

    fprintf(pFile, "];\n");

    fprintf(pFile, "adc_ch3 = [");

    for(uint32_t i = 0; i < 65536 * 4 * sizeof(uint16_t); i += 4 * sizeof(uint16_t))
    {
        int16_t sSample = *((volatile int16_t *)((uintptr_t)pAXIDDRBase + i + 3 * sizeof(uint16_t)));

        fprintf(pFile, "%d ", sSample);
    }

    fprintf(pFile, "];\n");

    fclose(pFile);

    int32_t temp;

    status = ad9361_get_temperature(ad9361_phy, &temp);

    if(status < 0)
        return;

    DBGPRINTLN_CTX("PHY Temperature: %f C", (double)temp / 1000);
}

uint8_t icyradio_setup_mmaps()
{
    uint32_t ulPageSize = (uint32_t)sysconf(_SC_PAGESIZE);

    DBGPRINTLN_CTX("Page Size: %u", ulPageSize);

    if(ulPageSize != 4096)
        DBGPRINTLN_CTX("WARNING: Page size is not 4096 bytes!");

    uint32_t ulMapAddrStart, ulMapAddrOffset, ulMapSize;

    // Flash region
    ulMapAddrStart = AXI_QUAD_SPI0_XIP_BASE & ~(ulPageSize - 1);
    ulMapAddrOffset = AXI_QUAD_SPI0_XIP_BASE & (ulPageSize - 1);
    ulMapSize = AXI_QUAD_SPI0_XIP_SIZE;

    DBGPRINTLN_CTX("Start Address: 0x%08X", ulMapAddrStart);
    DBGPRINTLN_CTX("Offset Address: 0x%08X", ulMapAddrOffset);
    DBGPRINTLN_CTX("Map Size: 0x%08X", ulMapSize);

	pAXIFlashMap = mmap(NULL, ulMapSize, PROT_READ | PROT_WRITE, MAP_SHARED, iDeviceFile, ulMapAddrStart);

	if(pAXIFlashMap == MAP_FAILED)
    {
        DBGPRINTLN_CTX("Unable to map memory (%d)", errno);

        return 0;
    }

    pAXIFlashBase = (void *)((uintptr_t)pAXIFlashMap + ulMapAddrOffset);

    DBGPRINTLN_CTX("AXI Flash Base: 0x%016lX", (uintptr_t)pAXIFlashBase);

    // DDR region
    ulMapAddrStart = AXI_MIG_DDR3_BASE & ~(ulPageSize - 1);
    ulMapAddrOffset = AXI_MIG_DDR3_BASE & (ulPageSize - 1);
    ulMapSize = AXI_MIG_DDR3_SIZE;

    DBGPRINTLN_CTX("Start Address: 0x%08X", ulMapAddrStart);
    DBGPRINTLN_CTX("Offset Address: 0x%08X", ulMapAddrOffset);
    DBGPRINTLN_CTX("Map Size: 0x%08X", ulMapSize);

	pAXIDDRMap = mmap(NULL, ulMapSize, PROT_READ | PROT_WRITE, MAP_SHARED, iDeviceFile, ulMapAddrStart);

	if(pAXIDDRMap == MAP_FAILED)
    {
        DBGPRINTLN_CTX("Unable to map memory (%d)", errno);

        munmap(pAXIFlashMap, AXI_QUAD_SPI0_XIP_SIZE);

        return 0;
    }

    pAXIDDRBase = (void *)((uintptr_t)pAXIDDRMap + ulMapAddrOffset);

    DBGPRINTLN_CTX("AXI DDR Base: 0x%016lX", (uintptr_t)pAXIDDRBase);

    // Peripheral region
    ulMapAddrStart = AXI_PERIPH_BASE & ~(ulPageSize - 1);
    ulMapAddrOffset = AXI_PERIPH_BASE & (ulPageSize - 1);
    ulMapSize = AXI_PERIPH_SIZE;

    DBGPRINTLN_CTX("Start Address: 0x%08X", ulMapAddrStart);
    DBGPRINTLN_CTX("Offset Address: 0x%08X", ulMapAddrOffset);
    DBGPRINTLN_CTX("Map Size: 0x%08X", ulMapSize);

	pAXIPeriphMap = mmap(NULL, ulMapSize, PROT_READ | PROT_WRITE, MAP_SHARED, iDeviceFile, ulMapAddrStart);

	if(pAXIPeriphMap == MAP_FAILED)
    {
        DBGPRINTLN_CTX("Unable to map memory (%d)", errno);

        munmap(pAXIFlashMap, AXI_QUAD_SPI0_XIP_SIZE);
        munmap(pAXIDDRMap, AXI_MIG_DDR3_SIZE);

        return 0;
    }

    pAXIPeriphBase = (void *)((uintptr_t)pAXIPeriphMap + ulMapAddrOffset);

    DBGPRINTLN_CTX("AXI Peripheral Base: 0x%016lX", (uintptr_t)pAXIPeriphBase);

    pAXIGPIOBase[0] = (void *)((uintptr_t)pAXIPeriphBase + (AXI_GPIO0_BASE - AXI_PERIPH_BASE));
    pAXIGPIOBase[1] = (void *)((uintptr_t)pAXIPeriphBase + (AXI_GPIO1_BASE - AXI_PERIPH_BASE));

    pAXIQuadSPIBase[0] = (void *)((uintptr_t)pAXIPeriphBase + (AXI_QUAD_SPI0_BASE - AXI_PERIPH_BASE));
    pAXIQuadSPIBase[1] = (void *)((uintptr_t)pAXIPeriphBase + (AXI_QUAD_SPI1_BASE - AXI_PERIPH_BASE));
    pAXIQuadSPIBase[2] = (void *)((uintptr_t)pAXIPeriphBase + (AXI_QUAD_SPI2_BASE - AXI_PERIPH_BASE));

    pAXIIICBase[0] = (void *)((uintptr_t)pAXIPeriphBase + (AXI_IIC0_BASE - AXI_PERIPH_BASE));
    pAXIIICBase[1] = (void *)((uintptr_t)pAXIPeriphBase + (AXI_IIC1_BASE - AXI_PERIPH_BASE));

    rx_adc_init.base = (void *)((uintptr_t)pAXIPeriphBase + (AXI_AD9361_BASE - AXI_PERIPH_BASE));
    tx_dac_init.base = (void *)((uintptr_t)pAXIPeriphBase + (AXI_AD9361_BASE - AXI_PERIPH_BASE) + 0x4000);
    rx_dmac_init.base = (void *)((uintptr_t)pAXIPeriphBase + (AXI_DMAC_RF_RX_BASE - AXI_PERIPH_BASE));
    tx_dmac_init.base = (void *)((uintptr_t)pAXIPeriphBase + (AXI_DMAC_RF_TX_BASE - AXI_PERIPH_BASE));

    return 1;
}
uint8_t icyradio_free_mmaps()
{
    uint8_t ubRet = 1;

    if(munmap(pAXIFlashMap, AXI_QUAD_SPI0_XIP_SIZE))
    {
        DBGPRINTLN_CTX("Unable to unmap memory (%d)", errno);

        ubRet = 0;
    }

    if(munmap(pAXIDDRMap, AXI_MIG_DDR3_SIZE))
    {
        DBGPRINTLN_CTX("Unable to unmap memory (%d)", errno);

        ubRet = 0;
    }

    if(munmap(pAXIPeriphMap, AXI_PERIPH_SIZE))
    {
        DBGPRINTLN_CTX("Unable to unmap memory (%d)", errno);

        ubRet = 0;
    }

    return 1;
}

void icyradio_init_clocks()
{
    si5351_xtal_config(26000000, 10); // fPFD = XTAL, CLoad = 10 pF
    //si5351_clkin_config(50000000, 2); // fPFD = CLKIN / 2

    DBGPRINTLN_CTX("XTAL Clock: %.3f MHz", (float)SI5351_XTAL_FREQ / 1000000);
    DBGPRINTLN_CTX("CLKIN Clock: %.3f MHz", (float)SI5351_CLKIN_FREQ / 1000000);
    DBGPRINTLN_CTX("CLKIN Divided Clock: %.3f MHz", (float)SI5351_CLKIN_DIV_FREQ / 1000000);

    //// PLLA
    si5351_pll_set_source(SI5351_PLLA, SI5351_PLL_SRC_XTAL);
    si5351_pll_set_freq(SI5351_PLLA, 650000000);

    DBGPRINTLN_CTX("PLLA Source Clock: %.3f MHz", (float)SI5351_PLL_SRC_FREQ[SI5351_PLLA] / 1000000);
    DBGPRINTLN_CTX("PLLA VCO Clock: %.3f MHz", (float)SI5351_PLL_FREQ[SI5351_PLLA] / 1000000);

    //// PLLB
    si5351_pll_set_source(SI5351_PLLB, SI5351_PLL_SRC_XTAL);
    si5351_pll_set_freq(SI5351_PLLB, 800000000);

    DBGPRINTLN_CTX("PLLB Source Clock: %.3f MHz", (float)SI5351_PLL_SRC_FREQ[SI5351_PLLB] / 1000000);
    DBGPRINTLN_CTX("PLLB VCO Clock: %.3f MHz", (float)SI5351_PLL_FREQ[SI5351_PLLB] / 1000000);

    //// FPGA Clock #0
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
    // si5351_multisynth_set_source(SI5351_FPGA_CLK1, SI5351_MS_SRC_PLLA);
    // si5351_multisynth_set_freq(SI5351_FPGA_CLK1, 25000000);
    // si5351_multisynth_set_phase_offset(SI5351_FPGA_CLK1, 20.f);

    // DBGPRINTLN_CTX("MS%hhu Source Clock: %.3f MHz", SI5351_FPGA_CLK1, (float)SI5351_MS_SRC_FREQ[SI5351_FPGA_CLK1] / 1000000);
    // DBGPRINTLN_CTX("MS%hhu Clock: %.3f MHz", SI5351_FPGA_CLK1, (float)SI5351_MS_FREQ[SI5351_FPGA_CLK1] / 1000000);
    // DBGPRINTLN_CTX("MS%hhu Phase offset: %.1f deg", SI5351_FPGA_CLK1, si5351_multisynth_get_phase_offset(SI5351_FPGA_CLK1));

    // si5351_clock_set_disable_state(SI5351_FPGA_CLK1, SI5351_REG_CLKm_n_DIS_DISn_HIZ); // Disable in High-Z mode
    // si5351_clock_set_drive_current(SI5351_FPGA_CLK1, 8); // 8 mA
    // si5351_clock_set_invert(SI5351_FPGA_CLK1, 0); // Not inverted
    // si5351_clock_set_source(SI5351_FPGA_CLK1, SI5351_CLK_SRC_MSn); // Corresponding multisynth as source
    // si5351_clock_set_output_divider(SI5351_FPGA_CLK1, 1); // Divide by 1 at the output

    // DBGPRINTLN_CTX("CLK%hhu Clock: %.3f MHz", SI5351_FPGA_CLK1, (float)SI5351_CLK_FREQ[SI5351_FPGA_CLK1] / 1000000);

    // si5351_clock_power_up(SI5351_FPGA_CLK1); // Power the output stage up
    //si5351_clock_enable(SI5351_FPGA_CLK1); // Software enable the clock output

    //// FPGA Clock #2
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
    si5351_multisynth_set_source(SI5351_SYNTH_REF_CLK, SI5351_MS_SRC_PLLA);
    si5351_multisynth_set_freq(SI5351_SYNTH_REF_CLK, 50000000);
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
    // si5351_multisynth_set_source(SI5351_EXT_CLK_2_3, SI5351_MS_SRC_PLLB);
    // si5351_multisynth_set_freq(SI5351_EXT_CLK_2_3, 10000000);
    // si5351_multisynth_set_phase_offset(SI5351_EXT_CLK_2_3, 0.f);

    // DBGPRINTLN_CTX("MS%hhu Source Clock: %.3f MHz", SI5351_EXT_CLK_2_3, (float)SI5351_MS_SRC_FREQ[SI5351_EXT_CLK_2_3] / 1000000);
    // DBGPRINTLN_CTX("MS%hhu Clock: %.3f MHz", SI5351_EXT_CLK_2_3, (float)SI5351_MS_FREQ[SI5351_EXT_CLK_2_3] / 1000000);
    // DBGPRINTLN_CTX("MS%hhu Phase offset: %.1f deg", SI5351_EXT_CLK_2_3, si5351_multisynth_get_phase_offset(SI5351_EXT_CLK_2_3));

    // si5351_clock_set_disable_state(SI5351_EXT_CLK_2_3, SI5351_REG_CLKm_n_DIS_DISn_HIZ); // Disable in High-Z mode
    // si5351_clock_set_drive_current(SI5351_EXT_CLK_2_3, 8); // 8 mA
    // si5351_clock_set_invert(SI5351_EXT_CLK_2_3, 0); // Not inverted
    // si5351_clock_set_source(SI5351_EXT_CLK_2_3, SI5351_CLK_SRC_MSn); // Corresponding multisynth as source
    // si5351_clock_set_output_divider(SI5351_EXT_CLK_2_3, 1); // Divide by 1 at the output

    // DBGPRINTLN_CTX("CLK%hhu Clock: %.3f MHz", SI5351_EXT_CLK_2_3, (float)SI5351_CLK_FREQ[SI5351_EXT_CLK_2_3] / 1000000);

    // si5351_clock_power_up(SI5351_EXT_CLK_2_3); // Power the output stage up
    // si5351_clock_enable(SI5351_EXT_CLK_2_3); // Software enable the clock output

    //// External clock output (on u.FL connector)
    si5351_multisynth_set_source(SI5351_EXT_CLK_OUT, SI5351_MS_SRC_PLLB);
    si5351_multisynth_set_freq(SI5351_EXT_CLK_OUT, 10000000);
    si5351_multisynth_set_phase_offset(SI5351_EXT_CLK_OUT, 0.f);

    DBGPRINTLN_CTX("MS%hhu Source Clock: %.3f MHz", SI5351_EXT_CLK_OUT, (float)SI5351_MS_SRC_FREQ[SI5351_EXT_CLK_OUT] / 1000000);
    DBGPRINTLN_CTX("MS%hhu Clock: %.3f MHz", SI5351_EXT_CLK_OUT, (float)SI5351_MS_FREQ[SI5351_EXT_CLK_OUT] / 1000000);
    DBGPRINTLN_CTX("MS%hhu Phase offset: %.1f deg", SI5351_EXT_CLK_OUT, si5351_multisynth_get_phase_offset(SI5351_EXT_CLK_OUT));

    si5351_clock_set_disable_state(SI5351_EXT_CLK_OUT, SI5351_REG_CLKm_n_DIS_DISn_HIZ); // Disable in High-Z mode
    si5351_clock_set_drive_current(SI5351_EXT_CLK_OUT, 8); // 8 mA
    si5351_clock_set_invert(SI5351_EXT_CLK_OUT, 0); // Not inverted
    si5351_clock_set_source(SI5351_EXT_CLK_OUT, SI5351_CLK_SRC_MSn); // Corresponding multisynth as source
    si5351_clock_set_output_divider(SI5351_EXT_CLK_OUT, 1); // Divide by 1 at the output

    DBGPRINTLN_CTX("CLK%hhu Clock: %.3f MHz", SI5351_EXT_CLK_OUT, (float)SI5351_CLK_FREQ[SI5351_EXT_CLK_OUT] / 1000000);

    si5351_clock_power_up(SI5351_EXT_CLK_OUT); // Power the output stage up
    si5351_clock_enable(SI5351_EXT_CLK_OUT); // Software enable the clock output

    usleep(100000);

    //// Global output enable
    axi_iic1_gpo_set_value(1, 0);

    usleep(100000);
}

void icyradio_memtest()
{
    clock_t start, end;

    DBGPRINTLN_CTX("Memory test - 1st stage");

    start = clock();
    for(uint32_t i = 0; i < AXI_MIG_DDR3_SIZE; i += 4)
        *(volatile uint32_t*)((uintptr_t)pAXIDDRBase + i) = i;
    end = clock();

    DBGPRINTLN_CTX("Memory test - 1st stage write took %f seconds", (double)(end - start) / CLOCKS_PER_SEC);

    start = clock();
    for(uint32_t i = 0; i < AXI_MIG_DDR3_SIZE; i += 4)
        if((*(volatile uint32_t*)((uintptr_t)pAXIDDRBase + i)) != i)
        {
            DBGPRINTLN_CTX("Memory test failed at 0x%08X", i);

            break;
        }
    end = clock();

    DBGPRINTLN_CTX("Memory test - 1st stage verify took %f seconds", (double)(end - start) / CLOCKS_PER_SEC);

    DBGPRINTLN_CTX("Memory test - 2nd stage");

    start = clock();
    for(uint32_t i = 0; i < AXI_MIG_DDR3_SIZE; i += 4)
        *(volatile uint32_t*)((uintptr_t)pAXIDDRBase + i) = ~i;
    end = clock();

    DBGPRINTLN_CTX("Memory test - 2nd stage write took %f seconds", (double)(end - start) / CLOCKS_PER_SEC);

    start = clock();
    for(uint32_t i = 0; i < AXI_MIG_DDR3_SIZE; i += 4)
        if((*(volatile uint32_t*)((uintptr_t)pAXIDDRBase + i)) != ~i)
        {
            DBGPRINTLN_CTX("Memory test failed at 0x%08X", i);

            break;
        }
    end = clock();

    DBGPRINTLN_CTX("Memory test - 2nd stage verify took %f seconds", (double)(end - start) / CLOCKS_PER_SEC);
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

    DBGPRINTLN_CTX("Device file %s opened", argv[1]);

    if(!icyradio_setup_mmaps())
        return 1;

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

    DBGPRINTLN_CTX("--- Synth SPI Test ---");

    axi_quad_spi2_init(AXI_QUAD_SPI_MODE_0, AXI_QUAD_SPI_MSB_FIRST);

    axi_gpio1_set_direction(0, AXI_GPIO_OUTPUT);
    axi_gpio1_set_direction(31, AXI_GPIO_OUTPUT);
    axi_gpio1_set_value(0, 1);
    axi_gpio1_set_value(31, 1);

    usleep(10000);

    axi_quad_spi2_slave_select(BIT(0), 1);

    axi_quad_spi2_write_byte(0x00, 0);
    axi_quad_spi2_write_byte(0x00, 0);
    axi_quad_spi2_write_byte(BIT(5) | BIT(4) | BIT(3) | BIT(2), 1);

    axi_quad_spi2_slave_select(BIT(0), 0);

    usleep(10000);

    axi_quad_spi2_slave_select(BIT(0), 1);

    axi_quad_spi2_write_byte(BIT(7) | 0x00, 0);
    axi_quad_spi2_write_byte(0x03, 1);
    DBGPRINTLN_CTX("Synth ChipType: 0x%02X", axi_quad_spi2_transfer_byte(0x00));
    DBGPRINTLN_CTX("Synth ChipID Low: 0x%02X", axi_quad_spi2_transfer_byte(0x00));
    DBGPRINTLN_CTX("Synth ChipID High: 0x%02X", axi_quad_spi2_transfer_byte(0x00));
    DBGPRINTLN_CTX("Synth ChipVersion: 0x%02X", axi_quad_spi2_transfer_byte(0x00));
    DBGPRINTLN_CTX("Synth ChipOption: 0x%02X", axi_quad_spi2_transfer_byte(0x00));

    axi_quad_spi2_slave_select(BIT(0), 0);

    usleep(10000);

    axi_quad_spi2_slave_select(BIT(0), 1);

    axi_quad_spi2_write_byte(BIT(7) | 0x00, 0);
    axi_quad_spi2_write_byte(0x0C, 1);
    DBGPRINTLN_CTX("Synth VendorID Low: 0x%02X", axi_quad_spi2_transfer_byte(0x00));
    DBGPRINTLN_CTX("Synth VendorID High: 0x%02X", axi_quad_spi2_transfer_byte(0x00));

    axi_quad_spi2_slave_select(BIT(0), 0);

    axi_gpio1_set_value(0, 0);

    DBGPRINTLN_CTX("--- TRX SPI Test ---");

    axi_quad_spi1_init(AXI_QUAD_SPI_MODE_1, AXI_QUAD_SPI_MSB_FIRST);

    axi_gpio0_set_direction(5, AXI_GPIO_OUTPUT);
    axi_gpio0_set_direction(31, AXI_GPIO_OUTPUT);

    uint16_t cmd = (0 << 15) | ((((1) - 1) & 0x7) << 12) | ((0x037) & 0x3FF);

    axi_quad_spi1_slave_select(BIT(0), 1);

    axi_quad_spi1_write_byte(cmd >> 8, 0);
    axi_quad_spi1_write_byte(cmd & 0xFF, 1);
    DBGPRINTLN_CTX("TRX Product ID Reg: 0x%02X", axi_quad_spi1_transfer_byte(0x00));

    axi_quad_spi1_slave_select(BIT(0), 0);



    DBGPRINTLN_CTX("--- SYS_I2C Test ---");
    axi_iic1_init();

    axi_iic1_write_byte(0x60, 0x00, 0);
    DBGPRINTLN_CTX("Si5351C Status: 0x%02X", axi_iic1_read_byte(0x60, 1));

    si5351_init();
    icyradio_init_clocks();

    DBGPRINTLN_CTX("--- CODEC_I2C Test ---");
    axi_iic0_init();

    axi_iic0_gpo_set_value(0, 1);
    usleep(10000);

    uint8_t buf[10];

    buf[0] = 0x00;
    buf[1] = 0x00;
    axi_iic0_write(0x3C, buf, 2, 0);
    DBGPRINTLN_CTX("ADAU1372 Reg0 before: 0x%02X", axi_iic0_read_byte(0x3C, 1));

    buf[0] = 0x00;
    buf[1] = 0x00;
    buf[2] = BIT(4);
    axi_iic0_write(0x3C, buf, 3, 1);

    buf[0] = 0x00;
    buf[1] = 0x00;
    axi_iic0_write(0x3C, buf, 2, 0);
    DBGPRINTLN_CTX("ADAU1372 Reg0 after: 0x%02X", axi_iic0_read_byte(0x3C, 1));

    axi_iic0_gpo_set_value(0, 0);

    // DDR3
    DBGPRINTLN_CTX("DDR First Word: 0x%08X", (*(volatile uint32_t*)((uintptr_t)pAXIDDRBase + 0x00000000)));
    DBGPRINTLN_CTX("DDR Last Word: 0x%08X", (*(volatile uint32_t*)((uintptr_t)pAXIDDRBase + 0x1FFFFFFC)));

    *(volatile uint32_t*)((uintptr_t)pAXIDDRBase + 0x00000000) = 0x5A5A5A5A;
    *(volatile uint32_t*)((uintptr_t)pAXIDDRBase + 0x1FFFFFFC) = 0xA5A5A5A5;

    DBGPRINTLN_CTX("DDR First Word: 0x%08X", (*(volatile uint32_t*)((uintptr_t)pAXIDDRBase + 0x00000000)));
    DBGPRINTLN_CTX("DDR Last Word: 0x%08X", (*(volatile uint32_t*)((uintptr_t)pAXIDDRBase + 0x1FFFFFFC)));

    //icyradio_memtest();

    trx_test();

    icyradio_free_mmaps();
    close(iDeviceFile);

    return 0;
}