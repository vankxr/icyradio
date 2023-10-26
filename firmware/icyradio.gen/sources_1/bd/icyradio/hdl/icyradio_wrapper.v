//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
//Date        : Fri Oct 13 22:59:14 2023
//Host        : xubuntu-dev running 64-bit Ubuntu 20.04.6 LTS
//Command     : generate_target icyradio_wrapper.bd
//Design      : icyradio_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module icyradio_wrapper
   (ADCIN_MAIN_v_n,
    ADCIN_MAIN_v_p,
    AUDIO_I2C_scl_io,
    AUDIO_I2C_sda_io,
    CLK_MNGR_IRQn,
    CLK_MNGR_OEn,
    CM4_WAKE,
    CODEC_I2S_BCLK,
    CODEC_I2S_LRCLK,
    CODEC_I2S_SDIN,
    CODEC_I2S_SDOUT,
    CODEC_MCLK,
    CODEC_RSTn,
    DDR3_addr,
    DDR3_ba,
    DDR3_cas_n,
    DDR3_ck_n,
    DDR3_ck_p,
    DDR3_cke,
    DDR3_dm,
    DDR3_dq,
    DDR3_dqs_n,
    DDR3_dqs_p,
    DDR3_odt,
    DDR3_ras_n,
    DDR3_reset_n,
    DDR3_we_n,
    FLASH_QSPI_io0_io,
    FLASH_QSPI_io1_io,
    FLASH_QSPI_io2_io,
    FLASH_QSPI_io3_io,
    FLASH_QSPI_sck_io,
    FLASH_QSPI_ss_io,
    FPGA_CLK0,
    FPGA_CLK1,
    PCIe_CLKREQn,
    PCIe_REFCLK_clk_n,
    PCIe_REFCLK_clk_p,
    PCIe_RESETn,
    PCIe_rxn,
    PCIe_rxp,
    PCIe_txn,
    PCIe_txp,
    PM_I2C_EN,
    SYNTH_CE,
    SYNTH_LD,
    SYNTH_MUTE,
    SYNTH_RESETn,
    SYNTH_SPI_io0_io,
    SYNTH_SPI_io1_io,
    SYNTH_SPI_sck_io,
    SYNTH_SPI_ss_io,
    SYNTH_SYNC,
    SYS_I2C_scl_io,
    SYS_I2C_sda_io,
    TRX_5V0_BIAS_T1_OCn,
    TRX_5V0_BIAS_T2_OCn,
    TRX_5V0_PA1_OCn,
    TRX_5V0_PA2_OCn,
    TRX_CLK_OUT,
    TRX_CTRL_IN,
    TRX_CTRL_OUT,
    TRX_DATA_CLK,
    TRX_EN,
    TRX_EN_AGC,
    TRX_FBCLK,
    TRX_P0_TXDATA,
    TRX_P1_RXDATA,
    TRX_RESETn,
    TRX_RXFRAME,
    TRX_SPI_io0_io,
    TRX_SPI_io1_io,
    TRX_SPI_sck_io,
    TRX_SPI_ss_io,
    TRX_SYNC_IN,
    TRX_TXFRAME,
    TRX_TXNRX,
    VIN_REG_ALERTn);
  input ADCIN_MAIN_v_n;
  input ADCIN_MAIN_v_p;
  inout AUDIO_I2C_scl_io;
  inout AUDIO_I2C_sda_io;
  input CLK_MNGR_IRQn;
  output [0:0]CLK_MNGR_OEn;
  output [0:0]CM4_WAKE;
  output CODEC_I2S_BCLK;
  output CODEC_I2S_LRCLK;
  output CODEC_I2S_SDIN;
  input CODEC_I2S_SDOUT;
  output CODEC_MCLK;
  output [0:0]CODEC_RSTn;
  output [14:0]DDR3_addr;
  output [2:0]DDR3_ba;
  output DDR3_cas_n;
  output [0:0]DDR3_ck_n;
  output [0:0]DDR3_ck_p;
  output [0:0]DDR3_cke;
  output [1:0]DDR3_dm;
  inout [15:0]DDR3_dq;
  inout [1:0]DDR3_dqs_n;
  inout [1:0]DDR3_dqs_p;
  output [0:0]DDR3_odt;
  output DDR3_ras_n;
  output DDR3_reset_n;
  output DDR3_we_n;
  inout FLASH_QSPI_io0_io;
  inout FLASH_QSPI_io1_io;
  inout FLASH_QSPI_io2_io;
  inout FLASH_QSPI_io3_io;
  inout FLASH_QSPI_sck_io;
  inout [0:0]FLASH_QSPI_ss_io;
  input FPGA_CLK0;
  input FPGA_CLK1;
  output [0:0]PCIe_CLKREQn;
  input [0:0]PCIe_REFCLK_clk_n;
  input [0:0]PCIe_REFCLK_clk_p;
  input PCIe_RESETn;
  input [0:0]PCIe_rxn;
  input [0:0]PCIe_rxp;
  output [0:0]PCIe_txn;
  output [0:0]PCIe_txp;
  output [0:0]PM_I2C_EN;
  output [0:0]SYNTH_CE;
  input SYNTH_LD;
  output [0:0]SYNTH_MUTE;
  output [0:0]SYNTH_RESETn;
  inout SYNTH_SPI_io0_io;
  inout SYNTH_SPI_io1_io;
  inout SYNTH_SPI_sck_io;
  inout [0:0]SYNTH_SPI_ss_io;
  output [0:0]SYNTH_SYNC;
  inout SYS_I2C_scl_io;
  inout SYS_I2C_sda_io;
  input TRX_5V0_BIAS_T1_OCn;
  input TRX_5V0_BIAS_T2_OCn;
  input TRX_5V0_PA1_OCn;
  input TRX_5V0_PA2_OCn;
  input TRX_CLK_OUT;
  output [3:0]TRX_CTRL_IN;
  input [7:0]TRX_CTRL_OUT;
  input TRX_DATA_CLK;
  output TRX_EN;
  output [0:0]TRX_EN_AGC;
  output TRX_FBCLK;
  output [11:0]TRX_P0_TXDATA;
  input [11:0]TRX_P1_RXDATA;
  output [0:0]TRX_RESETn;
  input TRX_RXFRAME;
  inout TRX_SPI_io0_io;
  inout TRX_SPI_io1_io;
  inout TRX_SPI_sck_io;
  inout [0:0]TRX_SPI_ss_io;
  output [0:0]TRX_SYNC_IN;
  output TRX_TXFRAME;
  output TRX_TXNRX;
  input VIN_REG_ALERTn;

  wire ADCIN_MAIN_v_n;
  wire ADCIN_MAIN_v_p;
  wire AUDIO_I2C_scl_i;
  wire AUDIO_I2C_scl_io;
  wire AUDIO_I2C_scl_o;
  wire AUDIO_I2C_scl_t;
  wire AUDIO_I2C_sda_i;
  wire AUDIO_I2C_sda_io;
  wire AUDIO_I2C_sda_o;
  wire AUDIO_I2C_sda_t;
  wire CLK_MNGR_IRQn;
  wire [0:0]CLK_MNGR_OEn;
  wire [0:0]CM4_WAKE;
  wire CODEC_I2S_BCLK;
  wire CODEC_I2S_LRCLK;
  wire CODEC_I2S_SDIN;
  wire CODEC_I2S_SDOUT;
  wire CODEC_MCLK;
  wire [0:0]CODEC_RSTn;
  wire [14:0]DDR3_addr;
  wire [2:0]DDR3_ba;
  wire DDR3_cas_n;
  wire [0:0]DDR3_ck_n;
  wire [0:0]DDR3_ck_p;
  wire [0:0]DDR3_cke;
  wire [1:0]DDR3_dm;
  wire [15:0]DDR3_dq;
  wire [1:0]DDR3_dqs_n;
  wire [1:0]DDR3_dqs_p;
  wire [0:0]DDR3_odt;
  wire DDR3_ras_n;
  wire DDR3_reset_n;
  wire DDR3_we_n;
  wire FLASH_QSPI_io0_i;
  wire FLASH_QSPI_io0_io;
  wire FLASH_QSPI_io0_o;
  wire FLASH_QSPI_io0_t;
  wire FLASH_QSPI_io1_i;
  wire FLASH_QSPI_io1_io;
  wire FLASH_QSPI_io1_o;
  wire FLASH_QSPI_io1_t;
  wire FLASH_QSPI_io2_i;
  wire FLASH_QSPI_io2_io;
  wire FLASH_QSPI_io2_o;
  wire FLASH_QSPI_io2_t;
  wire FLASH_QSPI_io3_i;
  wire FLASH_QSPI_io3_io;
  wire FLASH_QSPI_io3_o;
  wire FLASH_QSPI_io3_t;
  wire FLASH_QSPI_sck_i;
  wire FLASH_QSPI_sck_io;
  wire FLASH_QSPI_sck_o;
  wire FLASH_QSPI_sck_t;
  wire [0:0]FLASH_QSPI_ss_i_0;
  wire [0:0]FLASH_QSPI_ss_io_0;
  wire [0:0]FLASH_QSPI_ss_o_0;
  wire FLASH_QSPI_ss_t;
  wire FPGA_CLK0;
  wire FPGA_CLK1;
  wire [0:0]PCIe_CLKREQn;
  wire [0:0]PCIe_REFCLK_clk_n;
  wire [0:0]PCIe_REFCLK_clk_p;
  wire PCIe_RESETn;
  wire [0:0]PCIe_rxn;
  wire [0:0]PCIe_rxp;
  wire [0:0]PCIe_txn;
  wire [0:0]PCIe_txp;
  wire [0:0]PM_I2C_EN;
  wire [0:0]SYNTH_CE;
  wire SYNTH_LD;
  wire [0:0]SYNTH_MUTE;
  wire [0:0]SYNTH_RESETn;
  wire SYNTH_SPI_io0_i;
  wire SYNTH_SPI_io0_io;
  wire SYNTH_SPI_io0_o;
  wire SYNTH_SPI_io0_t;
  wire SYNTH_SPI_io1_i;
  wire SYNTH_SPI_io1_io;
  wire SYNTH_SPI_io1_o;
  wire SYNTH_SPI_io1_t;
  wire SYNTH_SPI_sck_i;
  wire SYNTH_SPI_sck_io;
  wire SYNTH_SPI_sck_o;
  wire SYNTH_SPI_sck_t;
  wire [0:0]SYNTH_SPI_ss_i_0;
  wire [0:0]SYNTH_SPI_ss_io_0;
  wire [0:0]SYNTH_SPI_ss_o_0;
  wire SYNTH_SPI_ss_t;
  wire [0:0]SYNTH_SYNC;
  wire SYS_I2C_scl_i;
  wire SYS_I2C_scl_io;
  wire SYS_I2C_scl_o;
  wire SYS_I2C_scl_t;
  wire SYS_I2C_sda_i;
  wire SYS_I2C_sda_io;
  wire SYS_I2C_sda_o;
  wire SYS_I2C_sda_t;
  wire TRX_5V0_BIAS_T1_OCn;
  wire TRX_5V0_BIAS_T2_OCn;
  wire TRX_5V0_PA1_OCn;
  wire TRX_5V0_PA2_OCn;
  wire TRX_CLK_OUT;
  wire [3:0]TRX_CTRL_IN;
  wire [7:0]TRX_CTRL_OUT;
  wire TRX_DATA_CLK;
  wire TRX_EN;
  wire [0:0]TRX_EN_AGC;
  wire TRX_FBCLK;
  wire [11:0]TRX_P0_TXDATA;
  wire [11:0]TRX_P1_RXDATA;
  wire [0:0]TRX_RESETn;
  wire TRX_RXFRAME;
  wire TRX_SPI_io0_i;
  wire TRX_SPI_io0_io;
  wire TRX_SPI_io0_o;
  wire TRX_SPI_io0_t;
  wire TRX_SPI_io1_i;
  wire TRX_SPI_io1_io;
  wire TRX_SPI_io1_o;
  wire TRX_SPI_io1_t;
  wire TRX_SPI_sck_i;
  wire TRX_SPI_sck_io;
  wire TRX_SPI_sck_o;
  wire TRX_SPI_sck_t;
  wire [0:0]TRX_SPI_ss_i_0;
  wire [0:0]TRX_SPI_ss_io_0;
  wire [0:0]TRX_SPI_ss_o_0;
  wire TRX_SPI_ss_t;
  wire [0:0]TRX_SYNC_IN;
  wire TRX_TXFRAME;
  wire TRX_TXNRX;
  wire VIN_REG_ALERTn;

  IOBUF AUDIO_I2C_scl_iobuf
       (.I(AUDIO_I2C_scl_o),
        .IO(AUDIO_I2C_scl_io),
        .O(AUDIO_I2C_scl_i),
        .T(AUDIO_I2C_scl_t));
  IOBUF AUDIO_I2C_sda_iobuf
       (.I(AUDIO_I2C_sda_o),
        .IO(AUDIO_I2C_sda_io),
        .O(AUDIO_I2C_sda_i),
        .T(AUDIO_I2C_sda_t));
  IOBUF FLASH_QSPI_io0_iobuf
       (.I(FLASH_QSPI_io0_o),
        .IO(FLASH_QSPI_io0_io),
        .O(FLASH_QSPI_io0_i),
        .T(FLASH_QSPI_io0_t));
  IOBUF FLASH_QSPI_io1_iobuf
       (.I(FLASH_QSPI_io1_o),
        .IO(FLASH_QSPI_io1_io),
        .O(FLASH_QSPI_io1_i),
        .T(FLASH_QSPI_io1_t));
  IOBUF FLASH_QSPI_io2_iobuf
       (.I(FLASH_QSPI_io2_o),
        .IO(FLASH_QSPI_io2_io),
        .O(FLASH_QSPI_io2_i),
        .T(FLASH_QSPI_io2_t));
  IOBUF FLASH_QSPI_io3_iobuf
       (.I(FLASH_QSPI_io3_o),
        .IO(FLASH_QSPI_io3_io),
        .O(FLASH_QSPI_io3_i),
        .T(FLASH_QSPI_io3_t));
  IOBUF FLASH_QSPI_sck_iobuf
       (.I(FLASH_QSPI_sck_o),
        .IO(FLASH_QSPI_sck_io),
        .O(FLASH_QSPI_sck_i),
        .T(FLASH_QSPI_sck_t));
  IOBUF FLASH_QSPI_ss_iobuf_0
       (.I(FLASH_QSPI_ss_o_0),
        .IO(FLASH_QSPI_ss_io[0]),
        .O(FLASH_QSPI_ss_i_0),
        .T(FLASH_QSPI_ss_t));
  IOBUF SYNTH_SPI_io0_iobuf
       (.I(SYNTH_SPI_io0_o),
        .IO(SYNTH_SPI_io0_io),
        .O(SYNTH_SPI_io0_i),
        .T(SYNTH_SPI_io0_t));
  IOBUF SYNTH_SPI_io1_iobuf
       (.I(SYNTH_SPI_io1_o),
        .IO(SYNTH_SPI_io1_io),
        .O(SYNTH_SPI_io1_i),
        .T(SYNTH_SPI_io1_t));
  IOBUF SYNTH_SPI_sck_iobuf
       (.I(SYNTH_SPI_sck_o),
        .IO(SYNTH_SPI_sck_io),
        .O(SYNTH_SPI_sck_i),
        .T(SYNTH_SPI_sck_t));
  IOBUF SYNTH_SPI_ss_iobuf_0
       (.I(SYNTH_SPI_ss_o_0),
        .IO(SYNTH_SPI_ss_io[0]),
        .O(SYNTH_SPI_ss_i_0),
        .T(SYNTH_SPI_ss_t));
  IOBUF SYS_I2C_scl_iobuf
       (.I(SYS_I2C_scl_o),
        .IO(SYS_I2C_scl_io),
        .O(SYS_I2C_scl_i),
        .T(SYS_I2C_scl_t));
  IOBUF SYS_I2C_sda_iobuf
       (.I(SYS_I2C_sda_o),
        .IO(SYS_I2C_sda_io),
        .O(SYS_I2C_sda_i),
        .T(SYS_I2C_sda_t));
  IOBUF TRX_SPI_io0_iobuf
       (.I(TRX_SPI_io0_o),
        .IO(TRX_SPI_io0_io),
        .O(TRX_SPI_io0_i),
        .T(TRX_SPI_io0_t));
  IOBUF TRX_SPI_io1_iobuf
       (.I(TRX_SPI_io1_o),
        .IO(TRX_SPI_io1_io),
        .O(TRX_SPI_io1_i),
        .T(TRX_SPI_io1_t));
  IOBUF TRX_SPI_sck_iobuf
       (.I(TRX_SPI_sck_o),
        .IO(TRX_SPI_sck_io),
        .O(TRX_SPI_sck_i),
        .T(TRX_SPI_sck_t));
  IOBUF TRX_SPI_ss_iobuf_0
       (.I(TRX_SPI_ss_o_0),
        .IO(TRX_SPI_ss_io[0]),
        .O(TRX_SPI_ss_i_0),
        .T(TRX_SPI_ss_t));
  icyradio icyradio_i
       (.ADCIN_MAIN_v_n(ADCIN_MAIN_v_n),
        .ADCIN_MAIN_v_p(ADCIN_MAIN_v_p),
        .AUDIO_I2C_scl_i(AUDIO_I2C_scl_i),
        .AUDIO_I2C_scl_o(AUDIO_I2C_scl_o),
        .AUDIO_I2C_scl_t(AUDIO_I2C_scl_t),
        .AUDIO_I2C_sda_i(AUDIO_I2C_sda_i),
        .AUDIO_I2C_sda_o(AUDIO_I2C_sda_o),
        .AUDIO_I2C_sda_t(AUDIO_I2C_sda_t),
        .CLK_MNGR_IRQn(CLK_MNGR_IRQn),
        .CLK_MNGR_OEn(CLK_MNGR_OEn),
        .CM4_WAKE(CM4_WAKE),
        .CODEC_I2S_BCLK(CODEC_I2S_BCLK),
        .CODEC_I2S_LRCLK(CODEC_I2S_LRCLK),
        .CODEC_I2S_SDIN(CODEC_I2S_SDIN),
        .CODEC_I2S_SDOUT(CODEC_I2S_SDOUT),
        .CODEC_MCLK(CODEC_MCLK),
        .CODEC_RSTn(CODEC_RSTn),
        .DDR3_addr(DDR3_addr),
        .DDR3_ba(DDR3_ba),
        .DDR3_cas_n(DDR3_cas_n),
        .DDR3_ck_n(DDR3_ck_n),
        .DDR3_ck_p(DDR3_ck_p),
        .DDR3_cke(DDR3_cke),
        .DDR3_dm(DDR3_dm),
        .DDR3_dq(DDR3_dq),
        .DDR3_dqs_n(DDR3_dqs_n),
        .DDR3_dqs_p(DDR3_dqs_p),
        .DDR3_odt(DDR3_odt),
        .DDR3_ras_n(DDR3_ras_n),
        .DDR3_reset_n(DDR3_reset_n),
        .DDR3_we_n(DDR3_we_n),
        .FLASH_QSPI_io0_i(FLASH_QSPI_io0_i),
        .FLASH_QSPI_io0_o(FLASH_QSPI_io0_o),
        .FLASH_QSPI_io0_t(FLASH_QSPI_io0_t),
        .FLASH_QSPI_io1_i(FLASH_QSPI_io1_i),
        .FLASH_QSPI_io1_o(FLASH_QSPI_io1_o),
        .FLASH_QSPI_io1_t(FLASH_QSPI_io1_t),
        .FLASH_QSPI_io2_i(FLASH_QSPI_io2_i),
        .FLASH_QSPI_io2_o(FLASH_QSPI_io2_o),
        .FLASH_QSPI_io2_t(FLASH_QSPI_io2_t),
        .FLASH_QSPI_io3_i(FLASH_QSPI_io3_i),
        .FLASH_QSPI_io3_o(FLASH_QSPI_io3_o),
        .FLASH_QSPI_io3_t(FLASH_QSPI_io3_t),
        .FLASH_QSPI_sck_i(FLASH_QSPI_sck_i),
        .FLASH_QSPI_sck_o(FLASH_QSPI_sck_o),
        .FLASH_QSPI_sck_t(FLASH_QSPI_sck_t),
        .FLASH_QSPI_ss_i(FLASH_QSPI_ss_i_0),
        .FLASH_QSPI_ss_o(FLASH_QSPI_ss_o_0),
        .FLASH_QSPI_ss_t(FLASH_QSPI_ss_t),
        .FPGA_CLK0(FPGA_CLK0),
        .FPGA_CLK1(FPGA_CLK1),
        .PCIe_CLKREQn(PCIe_CLKREQn),
        .PCIe_REFCLK_clk_n(PCIe_REFCLK_clk_n),
        .PCIe_REFCLK_clk_p(PCIe_REFCLK_clk_p),
        .PCIe_RESETn(PCIe_RESETn),
        .PCIe_rxn(PCIe_rxn),
        .PCIe_rxp(PCIe_rxp),
        .PCIe_txn(PCIe_txn),
        .PCIe_txp(PCIe_txp),
        .PM_I2C_EN(PM_I2C_EN),
        .SYNTH_CE(SYNTH_CE),
        .SYNTH_LD(SYNTH_LD),
        .SYNTH_MUTE(SYNTH_MUTE),
        .SYNTH_RESETn(SYNTH_RESETn),
        .SYNTH_SPI_io0_i(SYNTH_SPI_io0_i),
        .SYNTH_SPI_io0_o(SYNTH_SPI_io0_o),
        .SYNTH_SPI_io0_t(SYNTH_SPI_io0_t),
        .SYNTH_SPI_io1_i(SYNTH_SPI_io1_i),
        .SYNTH_SPI_io1_o(SYNTH_SPI_io1_o),
        .SYNTH_SPI_io1_t(SYNTH_SPI_io1_t),
        .SYNTH_SPI_sck_i(SYNTH_SPI_sck_i),
        .SYNTH_SPI_sck_o(SYNTH_SPI_sck_o),
        .SYNTH_SPI_sck_t(SYNTH_SPI_sck_t),
        .SYNTH_SPI_ss_i(SYNTH_SPI_ss_i_0),
        .SYNTH_SPI_ss_o(SYNTH_SPI_ss_o_0),
        .SYNTH_SPI_ss_t(SYNTH_SPI_ss_t),
        .SYNTH_SYNC(SYNTH_SYNC),
        .SYS_I2C_scl_i(SYS_I2C_scl_i),
        .SYS_I2C_scl_o(SYS_I2C_scl_o),
        .SYS_I2C_scl_t(SYS_I2C_scl_t),
        .SYS_I2C_sda_i(SYS_I2C_sda_i),
        .SYS_I2C_sda_o(SYS_I2C_sda_o),
        .SYS_I2C_sda_t(SYS_I2C_sda_t),
        .TRX_5V0_BIAS_T1_OCn(TRX_5V0_BIAS_T1_OCn),
        .TRX_5V0_BIAS_T2_OCn(TRX_5V0_BIAS_T2_OCn),
        .TRX_5V0_PA1_OCn(TRX_5V0_PA1_OCn),
        .TRX_5V0_PA2_OCn(TRX_5V0_PA2_OCn),
        .TRX_CLK_OUT(TRX_CLK_OUT),
        .TRX_CTRL_IN(TRX_CTRL_IN),
        .TRX_CTRL_OUT(TRX_CTRL_OUT),
        .TRX_DATA_CLK(TRX_DATA_CLK),
        .TRX_EN(TRX_EN),
        .TRX_EN_AGC(TRX_EN_AGC),
        .TRX_FBCLK(TRX_FBCLK),
        .TRX_P0_TXDATA(TRX_P0_TXDATA),
        .TRX_P1_RXDATA(TRX_P1_RXDATA),
        .TRX_RESETn(TRX_RESETn),
        .TRX_RXFRAME(TRX_RXFRAME),
        .TRX_SPI_io0_i(TRX_SPI_io0_i),
        .TRX_SPI_io0_o(TRX_SPI_io0_o),
        .TRX_SPI_io0_t(TRX_SPI_io0_t),
        .TRX_SPI_io1_i(TRX_SPI_io1_i),
        .TRX_SPI_io1_o(TRX_SPI_io1_o),
        .TRX_SPI_io1_t(TRX_SPI_io1_t),
        .TRX_SPI_sck_i(TRX_SPI_sck_i),
        .TRX_SPI_sck_o(TRX_SPI_sck_o),
        .TRX_SPI_sck_t(TRX_SPI_sck_t),
        .TRX_SPI_ss_i(TRX_SPI_ss_i_0),
        .TRX_SPI_ss_o(TRX_SPI_ss_o_0),
        .TRX_SPI_ss_t(TRX_SPI_ss_t),
        .TRX_SYNC_IN(TRX_SYNC_IN),
        .TRX_TXFRAME(TRX_TXFRAME),
        .TRX_TXNRX(TRX_TXNRX),
        .VIN_REG_ALERTn(VIN_REG_ALERTn));
endmodule
