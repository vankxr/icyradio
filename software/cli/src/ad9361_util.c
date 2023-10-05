#include "ad9361_util.h"

static const uint32_t ulDigTuneRates[3] = {25000000UL, 40000000UL, 61440000UL}; // Data rates to sue during chip interface tuning

static void ad9361_util_print_delay_table(uint8_t *pubData, uint8_t ubDataXSize, uint8_t ubDataYSize, uint8_t ubSelX, uint8_t ubSelY)
{
    DBGPRINT_CTX("    ");

    for(uint32_t i = 0; i < ubDataXSize; i++)
    {
        // Print spacers
        if(i < 10)
            DBGPRINT("   ");
        else if(i < 100)
            DBGPRINT("  ");
        else
            DBGPRINT(" ");

        DBGPRINT("%hhu", i);
    }

    DBGPRINTLN("");

    for(uint32_t i = 0; i < ubDataYSize; i++)
    {
        // Print spacers
        if(i < 10)
            DBGPRINT_CTX("   ");
        else if(i < 100)
            DBGPRINT_CTX("  ");
        else
            DBGPRINT_CTX(" ");

        DBGPRINT("%hhu", i);

        for(uint32_t j = 0; j < ubDataXSize; j++)
        {
            uint8_t ubData = *pubData++;
            char c;

            if(!ubData)
                c = '-';
            else if(i == ubSelY && j == ubSelX)
                c = 'X';
            else
                c = 'o';

            DBGPRINT("   %c", c);
        }

        DBGPRINTLN("");
    }
}

static void ad9361_util_set_chip_iodelay(uint8_t ubTX, uint8_t ubRX, uint8_t ubDataDelay, uint8_t ubClockDelay)
{
    if(!ubTX && !ubRX)
        return;

    // DBGPRINTLN_CTX("TX: %s, RX: %s, Data Delay: %hhu, Clock Delay: %hhu", ubTX ? "yes" : "no", ubRX ? "yes" : "no", ubDataDelay, ubClockDelay);

    uint8_t ubClockChanged = 0;

    if(ubTX)
    {
        uint8_t ubReg = ad9361_spi_read(REG_TX_CLOCK_DATA_DELAY);

        if(ubClockDelay != (ubReg >> 4))
            ubClockChanged = 1;
    }

    if(ubRX)
    {
        uint8_t ubReg = ad9361_spi_read(REG_RX_CLOCK_DATA_DELAY);

        if(ubClockDelay != (ubReg >> 4))
            ubClockChanged = 1;
    }

    // DBGPRINTLN_CTX("Clock changed: %s", ubClockChanged ? "yes" : "no");

    if(ubClockChanged)
        ad9361_ensm_force_state(ENSM_STATE_ALERT);

    if(ubTX)
        ad9361_spi_write(REG_TX_CLOCK_DATA_DELAY, TX_DATA_DELAY(ubDataDelay) | DATA_CLK_DELAY(ubClockDelay));

    if(ubRX)
        ad9361_spi_write(REG_RX_CLOCK_DATA_DELAY, RX_DATA_DELAY(ubDataDelay) | DATA_CLK_DELAY(ubClockDelay));

    if(ubClockChanged)
        ad9361_ensm_force_state(ENSM_STATE_FDD);
}
static void ad9361_util_set_hdl_iodelay(uint8_t ubADC, uint8_t ubDAC, uint8_t ubDelay)
{
    if(!ubADC && !ubDAC)
        return;

    // DBGPRINTLN_CTX("ADC: %s, DAC: %s, Delay: %hhu", ubADC ? "yes" : "no", ubDAC ? "yes" : "no", ubDelay);

    for(uint8_t i = 0; i < 7; i++)
    {
        if(ubADC)
            axi_ad9361_adc_set_lane_delay(i, ubDelay);

        if(ubDAC)
            axi_ad9361_dac_set_lane_delay(i, ubDelay);
    }
}
static uint32_t ad9361_util_find_good_delay(uint8_t *pubData, uint32_t ulDataSize, uint32_t *pulStartPos)
{
    if(!pubData || !ulDataSize)
        return 0;

    // Find the longest sequence of 1s (success indicators)
    uint32_t ulCount = 0;
    uint32_t ulMaxCount = 0;
    int32_t lStartPos = -1;
    uint32_t ulMaxStartPos = 0;

    for(uint32_t i = 0; i < ulDataSize; i++)
    {
        if(pubData[i])
        {
            if(lStartPos == -1)
                lStartPos = i;

            ulCount++;
        }
        else
        {
            if(ulCount > ulMaxCount)
            {
                ulMaxCount = ulCount;
                ulMaxStartPos = lStartPos;
            }

            lStartPos = -1;
            ulCount = 0;
        }
    }

    if(ulCount > ulMaxCount)
    {
        ulMaxCount = ulCount;
        ulMaxStartPos = lStartPos;
    }

    if(pulStartPos != NULL)
        *pulStartPos = ulMaxStartPos;

    return ulMaxCount;
}

static uint8_t ad9361_util_dig_tune_hdl_iodelay(uint8_t ubADC, uint8_t ubDAC, uint8_t ubRestore)
{
    if(!ubADC && !ubDAC)
        return 0;

    DBGPRINTLN_CTX("ADC: %s, DAC: %s, Restore: %s", ubADC ? "yes" : "no", ubDAC ? "yes" : "no", ubRestore ? "yes" : "no");

    uint8_t ubPNStatus[32];

    if(ubADC)
    {
        for(uint8_t i = 0; i < 7; i++)
        {
            uint8_t ubDelay = axi_ad9361_adc_get_lane_delay(i);

            for(uint8_t j = 0; j < 32; j++)
            {
                axi_ad9361_adc_set_lane_delay(i, j);

                usleep(1000);

                ubPNStatus[j] = axi_ad9361_adc_check_pn(0, 10);
            }

            uint32_t ulMaxStart = 0;
            uint32_t ulMaxCount = ad9361_util_find_good_delay(ubPNStatus, 32, &ulMaxStart);

            if(ulMaxCount == 0 && ulMaxStart == 0)
            {
                DBGPRINTLN_CTX("ADC Lane %hhu - No good delay found!", i);

                return 0;
            }

            if(!ubRestore)
                axi_ad9361_adc_set_lane_delay(i, ulMaxStart + ulMaxCount / 2); // Set to middle of longest sequence of success for better margin
            else
                axi_ad9361_adc_set_lane_delay(i, ubDelay);

            DBGPRINTLN_CTX("ADC Lane %hhu - Max Count: %"PRIu32", Max Start: %"PRIu32", Delay: %"PRIu32, i, ulMaxCount, ulMaxStart, ulMaxStart + ulMaxCount / 2);
        }
    }

    if(ubDAC)
    {
        for(uint8_t i = 0; i < 7; i++)
        {
            uint8_t ubDelay = axi_ad9361_dac_get_lane_delay(i);

            for(uint8_t j = 0; j < 32; j++)
            {
                axi_ad9361_dac_set_lane_delay(i, j);

                usleep(1000);

                ubPNStatus[j] = axi_ad9361_adc_check_pn(1, 10);
            }

            uint32_t ulMaxStart = 0;
            uint32_t ulMaxCount = ad9361_util_find_good_delay(ubPNStatus, 32, &ulMaxStart);

            if(ulMaxCount == 0 && ulMaxStart == 0)
            {
                DBGPRINTLN_CTX("DAC Lane %hhu - No good delay found", i);

                return 0;
            }

            if(!ubRestore)
                axi_ad9361_dac_set_lane_delay(i, ulMaxStart + ulMaxCount / 2); // Set to middle of longest sequence of success for better margin
            else
                axi_ad9361_dac_set_lane_delay(i, ubDelay);

            DBGPRINTLN_CTX("DAC Lane %hhu - Max Count: %"PRIu32", Max Start: %"PRIu32", Delay: %"PRIu32, i, ulMaxCount, ulMaxStart, ulMaxStart + ulMaxCount / 2);
        }
    }

    return 1;
}
static uint8_t ad9361_util_dig_tune_chip_iodelay(uint8_t ubTX, uint8_t ubRX, uint8_t ubRestore, uint8_t ubSave, uint8_t ubTestFreqs)
{
    if(!ubTX && !ubRX)
        return 0;

    DBGPRINTLN_CTX("TX: %s, RX: %s, Restore: %s, Save: %s", ubTX ? "yes" : "no", ubRX ? "yes" : "no", ubRestore ? "yes" : "no", ubSave ? "yes" : "no");

    // Save current clock chains
    uint32_t ulRXClockChain[NUM_RX_CLOCKS];
    uint32_t ulTXClockChain[NUM_TX_CLOCKS];

    if(ubTestFreqs)
        ad9361_get_trx_clock_chain(ulRXClockChain, ulTXClockChain);

    uint8_t ubHalfRate = 0;

    if(g_pAD9361Phy->pdata->rx2tx2 && !(g_pAD9361Phy->pdata->port_ctrl.pp_conf[2] & LVDS_MODE))
        ubHalfRate = 1;

    uint8_t ubPNStatus[2][16];

    if(ubTX)
    {
        memset(&ubPNStatus[0], 1, sizeof(ubPNStatus[0]));
        memset(&ubPNStatus[1], 1, sizeof(ubPNStatus[1]));

        uint8_t ubReg = ad9361_spi_read(REG_TX_CLOCK_DATA_DELAY);

        for(uint32_t r = 0; r < (ubTestFreqs ? ARRAY_SIZE(ulDigTuneRates) : 1); r++)
        {
            if(ubTestFreqs)
                ad9361_set_trx_clock_chain_freq(ubHalfRate ? ulDigTuneRates[r] / 2 : ulDigTuneRates[r]);

            for(uint8_t i = 0; i < 2; i++)
            {
                for(uint8_t j = 0; j < 16; j++)
                {
                    /*
                    * i == 0: clock delay = 0 (min), data delay from 0 to 15, i.e., clock is ahead of data
                    * i == 1: clock delay = 15 (max), data delay from 15 to 0, i.e., clock is behind data
                    */

                    ad9361_util_set_chip_iodelay(1, 0, i ? 15 - j : j, i ? 15 : 0);

                    if(!axi_ad9361_adc_check_pn(1, 4))
                        ubPNStatus[i][j] = 0;
                }
            }

            DBGPRINTLN_CTX("TX %s @ %"PRIu32" MSPS: (<-> = fail, <o> = pass)", (g_pAD9361Phy->pdata->port_ctrl.pp_conf[2] & LVDS_MODE) ? "LVDS" : "CMOS", ubHalfRate ? ulDigTuneRates[r] / 2 : ulDigTuneRates[r]);
            ad9361_util_print_delay_table((uint8_t *)ubPNStatus, 16, 2, 0xFF, 0xFF);
        }

        uint32_t ulMaxStartC0 = 0;
        uint32_t ulMaxStartC1 = 0;
        uint32_t ulMaxCountC0 = ad9361_util_find_good_delay(&ubPNStatus[0][0], 16, &ulMaxStartC0);
        uint32_t ulMaxCountC1 = ad9361_util_find_good_delay(&ubPNStatus[1][0], 16, &ulMaxStartC1);

        if(ulMaxCountC0 == 0 && ulMaxStartC0 == 0 && ulMaxCountC1 == 0 && ulMaxStartC1 == 0)
        {
            DBGPRINTLN_CTX("TX - No good delay found!");

            return 0;
        }

        DBGPRINTLN_CTX("TX %s Summary: (<-> = fail, <o> = pass, <X> = selected)", (g_pAD9361Phy->pdata->port_ctrl.pp_conf[2] & LVDS_MODE) ? "LVDS" : "CMOS");

        if(ulMaxCountC1 > ulMaxCountC0) // Best results with clock behind data
        {
            ad9361_util_print_delay_table((uint8_t *)ubPNStatus, 16, 2, ulMaxStartC1 + ulMaxCountC1 / 2, 1);

            DBGPRINTLN_CTX("TX Data Delay: %"PRIu32", TX Clock Delay: %"PRIu32, 0, ulMaxStartC1 + ulMaxCountC1 / 2);

            if(!ubRestore)
                ad9361_util_set_chip_iodelay(1, 0, 0, ulMaxStartC1 + ulMaxCountC1 / 2);
            else
                ad9361_util_set_chip_iodelay(1, 0, ubReg & 0xF, ubReg >> 4);
        }
        else  // Best results with clock ahead of data
        {
            ad9361_util_print_delay_table((uint8_t *)ubPNStatus, 16, 2, ulMaxStartC0 + ulMaxCountC0 / 2, 0);

            DBGPRINTLN_CTX("TX Data Delay: %"PRIu32", TX Clock Delay: %"PRIu32, ulMaxStartC0 + ulMaxCountC0 / 2, 0);

            if(!ubRestore)
                ad9361_util_set_chip_iodelay(1, 0, ulMaxStartC0 + ulMaxCountC0 / 2, 0);
            else
                ad9361_util_set_chip_iodelay(1, 0, ubReg & 0xF, ubReg >> 4);
        }

        if(ubSave)
            g_pAD9361Phy->pdata->port_ctrl.tx_clk_data_delay = ad9361_spi_read(REG_TX_CLOCK_DATA_DELAY);
    }

    if(ubRX)
    {
        memset(&ubPNStatus[0], 1, sizeof(ubPNStatus[0]));
        memset(&ubPNStatus[1], 1, sizeof(ubPNStatus[1]));

        uint8_t ubReg = ad9361_spi_read(REG_RX_CLOCK_DATA_DELAY);

        for(uint32_t r = 0; r < (ubTestFreqs ? ARRAY_SIZE(ulDigTuneRates) : 1); r++)
        {
            if(ubTestFreqs)
                ad9361_set_trx_clock_chain_freq(ubHalfRate ? ulDigTuneRates[r] / 2 : ulDigTuneRates[r]);

            for(uint8_t i = 0; i < 2; i++)
            {
                for(uint8_t j = 0; j < 16; j++)
                {
                    /*
                    * i == 0: clock delay = 0 (min), data delay from 0 to 15
                    * i == 1: clock delay = 15 (max), data delay from 15 to 0
                    */

                    ad9361_util_set_chip_iodelay(0, 1, i ? 15 - j : j, i ? 15 : 0);

                    if(!axi_ad9361_adc_check_pn(0, 4))
                        ubPNStatus[i][j] = 0;
                }
            }


            DBGPRINTLN_CTX("RX %s @ %"PRIu32" MSPS: (<-> = fail, <o> = pass)", (g_pAD9361Phy->pdata->port_ctrl.pp_conf[2] & LVDS_MODE) ? "LVDS" : "CMOS", ubHalfRate ? ulDigTuneRates[r] / 2 : ulDigTuneRates[r]);
            ad9361_util_print_delay_table((uint8_t *)ubPNStatus, 16, 2, 0xFF, 0xFF);
        }

        uint32_t ulMaxStartC0 = 0;
        uint32_t ulMaxStartC1 = 0;
        uint32_t ulMaxCountC0 = ad9361_util_find_good_delay(&ubPNStatus[0][0], 16, &ulMaxStartC0);
        uint32_t ulMaxCountC1 = ad9361_util_find_good_delay(&ubPNStatus[1][0], 16, &ulMaxStartC1);

        if(ulMaxCountC0 == 0 && ulMaxStartC0 == 0 && ulMaxCountC1 == 0 && ulMaxStartC1 == 0)
        {
            DBGPRINTLN_CTX("RX - No good delay found!");

            return 0;
        }

        DBGPRINTLN_CTX("RX %s Summary: (<-> = fail, <o> = pass, <X> = selected)", (g_pAD9361Phy->pdata->port_ctrl.pp_conf[2] & LVDS_MODE) ? "LVDS" : "CMOS");

        if(ulMaxCountC1 > ulMaxCountC0) // Best results with clock behind data
        {
            ad9361_util_print_delay_table((uint8_t *)ubPNStatus, 16, 2, ulMaxStartC1 + ulMaxCountC1 / 2, 1);

            DBGPRINTLN_CTX("RX Data Delay: %"PRIu32", RX Clock Delay: %"PRIu32, 0, ulMaxStartC1 + ulMaxCountC1 / 2);

            if(!ubRestore)
                ad9361_util_set_chip_iodelay(0, 1, 0, ulMaxStartC1 + ulMaxCountC1 / 2);
            else
                ad9361_util_set_chip_iodelay(0, 1, ubReg & 0xF, ubReg >> 4);
        }
        else  // Best results with clock ahead of data
        {
            ad9361_util_print_delay_table((uint8_t *)ubPNStatus, 16, 2, ulMaxStartC0 + ulMaxCountC0 / 2, 0);

            DBGPRINTLN_CTX("RX Data Delay: %"PRIu32", RX Clock Delay: %"PRIu32, ulMaxStartC0 + ulMaxCountC0 / 2, 0);

            if(!ubRestore)
                ad9361_util_set_chip_iodelay(0, 1, ulMaxStartC0 + ulMaxCountC0 / 2, 0);
            else
                ad9361_util_set_chip_iodelay(0, 1, ubReg & 0xF, ubReg >> 4);
        }

        if(ubSave)
            g_pAD9361Phy->pdata->port_ctrl.rx_clk_data_delay = ad9361_spi_read(REG_RX_CLOCK_DATA_DELAY);
    }

    // Restore clock chains
    if(ubTestFreqs)
        ad9361_set_trx_clock_chain(ulRXClockChain, ulTXClockChain);

    return 1;
}

uint8_t ad9361_util_dig_timing_analysis(char* pszBuf, uint32_t ulBufSize)
{
    return 0;
}
uint8_t ad9361_util_dig_tune(uint8_t ubTestFreqs, enum ad9361_util_dig_tune_flags eFlags)
{
    DBGPRINTLN_CTX("Flags: 0x%08X", eFlags);

    if(!(eFlags & (DO_HDL_RX_ADC | DO_HDL_TX_DAC | DO_CHIP_RX | DO_CHIP_TX)))
    {
        DBGPRINTLN_CTX("Nothing to do");

        return 0;
    }

    if(g_pAD9361Phy->pdata->dig_interface_tune_skipmode == 2 && !(eFlags & FORCE_TUNING))
    {
        DBGPRINTLN_CTX("Digital interface tuning is skipped");

        return 1;
    }
    else if(g_pAD9361Phy->pdata->dig_interface_tune_skipmode == 2 && (eFlags & FORCE_TUNING))
    {
        DBGPRINTLN_CTX("Digital interface tuning is skippeb, but forcing anyway");
    }

    // Save current chip state
    uint8_t ubENSMState = ad9361_ensm_get_state();
    int32_t lBISTLoopback = g_pAD9361Phy->bist_loopback_mode;
    int32_t iBISTConfig = g_pAD9361Phy->bist_config;

    // Save current AXI ADC state
    uint8_t ubADCIQCorrEn[4]; // Max number of channels for AD9361
    uint8_t ubADCDCFiltEn[4];
    int16_t sADCDCOffset[4];
    enum axi_ad9361_adc_pn_sel eADCDCPNSel[4];

    for(uint8_t i = 0; i < axi_ad9361_get_num_channels(); i++)
    {
        ubADCIQCorrEn[i] = axi_ad9361_adc_get_calib_enable(i);
        ubADCDCFiltEn[i] = axi_ad9361_adc_get_dcfilt_enable(i);
        sADCDCOffset[i] = axi_ad9361_adc_get_dcoffset(i);
        eADCDCPNSel[i] = axi_ad9361_adc_get_pn_sel(i);
    }

    ad9361_tx_mute(true); // Mute TX

    if(!g_pAD9361Phy->pdata->fdd)
        ad9361_set_ensm_mode(true, false);

    ad9361_util_set_hdl_iodelay(!!(eFlags & DO_HDL_RX_ADC), !!(eFlags & DO_HDL_TX_DAC), 15);

    uint8_t ubRet = 1;

    if(eFlags & DO_CHIP_RX)
    {
        ad9361_bist_loopback(0); // Disable loopback
        ad9361_bist_prbs(BIST_INJ_RX); // Inject PRBS into RX datapath

        for(uint8_t i = 0; i < axi_ad9361_get_num_channels(); i++)
        {
            axi_ad9361_adc_set_calib_enable(i, 0); // Disable IQ correction
            axi_ad9361_adc_set_dcfilt_enable(i, 0); // Disable DC filter
            axi_ad9361_adc_set_dcoffset(i, 0); // Set DC offset to 0
            axi_ad9361_adc_set_pn_sel(i, AXI_ADC_PN9A); // Select PN9A
        }

        if(!ad9361_util_dig_tune_chip_iodelay(0, 1, !!(eFlags & RESTORE_PREVIOUS), !(eFlags & SKIP_STORE_RESULT), ubTestFreqs))
            ubRet = 0;

        if(eFlags & DO_HDL_RX_ADC)
        {
            if(!ad9361_util_dig_tune_hdl_iodelay(1, 0, !!(eFlags & RESTORE_PREVIOUS)))
                ubRet = 0;
        }

        // Maybe reset the ADC Core here?
    }

    if(!ubRet)
    {
        DBGPRINTLN_CTX("There were errors during RX tuning, aborting");

        // Restore AXI ADC state
        for(uint8_t i = 0; i < axi_ad9361_get_num_channels(); i++)
        {
            axi_ad9361_adc_set_calib_enable(i, ubADCIQCorrEn[i]);
            axi_ad9361_adc_set_dcfilt_enable(i, ubADCDCFiltEn[i]);
            axi_ad9361_adc_set_dcoffset(i, sADCDCOffset[i]);
            axi_ad9361_adc_set_pn_sel(i, eADCDCPNSel[i]);
        }

        // Restore chip state
        ad9361_bist_loopback(lBISTLoopback);
        ad9361_spi_write(REG_BIST_CONFIG, iBISTConfig);

        if(!g_pAD9361Phy->pdata->fdd)
            ad9361_set_ensm_mode(g_pAD9361Phy->pdata->fdd, g_pAD9361Phy->pdata->ensm_pin_ctrl);

        ad9361_ensm_restore_state(ubENSMState);
        ad9361_tx_mute(false);

        return 0;
    }

    if(g_pAD9361Phy->pdata->dig_interface_tune_skipmode == 1 && !(eFlags & FORCE_TUNING))
    {
        DBGPRINTLN_CTX("TX digital interface tuning is skipped");
    }
    else
    {
        if(g_pAD9361Phy->pdata->dig_interface_tune_skipmode == 1 && (eFlags & FORCE_TUNING))
            DBGPRINTLN_CTX("TX digital interface tuning is skipped, but forcing anyway");

        if(eFlags & DO_CHIP_TX)
        {
            // Save current AXI DAC state
            uint8_t ubDACIQCorrEn[4]; // Max number of channels for AD9361
            enum axi_ad9361_dac_data_sel eDACDataSel[4];

            for(uint8_t i = 0; i < axi_ad9361_get_num_channels(); i++)
            {
                ubDACIQCorrEn[i] = axi_ad9361_dac_get_calib_enable(i);
                eDACDataSel[i] = axi_ad9361_dac_get_data_sel(i);
            }

            ad9361_bist_prbs(BIST_DISABLE); // Disable PRBS injection
            ad9361_bist_loopback(1); // Set chip internal loopback TX -> RX

            for(uint8_t i = 0; i < axi_ad9361_get_num_channels(); i++)
            {
                axi_ad9361_adc_set_calib_enable(i, 0); // Disable ADC IQ correction
                axi_ad9361_dac_set_calib_enable(i, 0); // Disable DAC IQ correction
                axi_ad9361_adc_set_dcfilt_enable(i, 0); // Disable DC filter
                axi_ad9361_adc_set_dcoffset(i, 0); // Set DC offset to 0
                axi_ad9361_adc_set_pn_sel(i, AXI_ADC_PNX); // Select device specific PN
                axi_ad9361_dac_set_data_sel(i, AXI_DAC_DATA_SEL_PNX); // Select device specific PN
            }

            axi_ad9361_dac_sync(); // Sync DAC

            if(!ad9361_util_dig_tune_chip_iodelay(1, 0, !!(eFlags & RESTORE_PREVIOUS), !(eFlags & SKIP_STORE_RESULT), ubTestFreqs))
                ubRet = 0;

            if(eFlags & DO_HDL_TX_DAC)
            {
                if(!ad9361_util_dig_tune_hdl_iodelay(0, 1, !!(eFlags & RESTORE_PREVIOUS)))
                    ubRet = 0;
            }

            // Restore AXI DAC state
            for(uint8_t i = 0; i < axi_ad9361_get_num_channels(); i++)
            {
                axi_ad9361_dac_set_calib_enable(i, ubDACIQCorrEn[i]);
                axi_ad9361_dac_set_data_sel(i, eDACDataSel[i]);
            }

            axi_ad9361_dac_sync(); // Sync DAC

            // Maybe reset the ADC Core here?
        }
    }

    // Restore AXI ADC state
    for(uint8_t i = 0; i < axi_ad9361_get_num_channels(); i++)
    {
        axi_ad9361_adc_set_calib_enable(i, ubADCIQCorrEn[i]);
        axi_ad9361_adc_set_dcfilt_enable(i, ubADCDCFiltEn[i]);
        axi_ad9361_adc_set_dcoffset(i, sADCDCOffset[i]);
        axi_ad9361_adc_set_pn_sel(i, eADCDCPNSel[i]);
    }

    // Restore chip state
    ad9361_bist_loopback(lBISTLoopback);
    ad9361_spi_write(REG_BIST_CONFIG, iBISTConfig);

    if(!g_pAD9361Phy->pdata->fdd)
        ad9361_set_ensm_mode(g_pAD9361Phy->pdata->fdd, g_pAD9361Phy->pdata->ensm_pin_ctrl);

    ad9361_ensm_restore_state(ubENSMState);
    ad9361_tx_mute(false);

    return 1;
}