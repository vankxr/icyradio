//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
//Date        : Wed Oct 13 13:45:46 2021
//Host        : jsilva-kde running 64-bit KDE neon User Edition 5.22
//Command     : generate_target icyradio_wrapper.bd
//Design      : icyradio_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module icyradio_wrapper
   (ADCIN_MAIN_v_n,
    ADCIN_MAIN_v_p,
    DDR3_CLK_IN_clk_n,
    DDR3_CLK_IN_clk_p,
    DDR3_addr,
    DDR3_ba,
    DDR3_cas_n,
    DDR3_ck_n,
    DDR3_ck_p,
    DDR3_cke,
    DDR3_cs_n,
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
    FLASH_QSPI_ss_io,
    GPIO0_tri_io,
    GPIO1_tri_io,
    I2C_scl_io,
    I2C_sda_io,
    I2S_BCLK_IN,
    I2S_bclk,
    I2S_lrclk,
    I2S_sdata_in,
    I2S_sdata_out,
    PCIe_CLKREQn,
    PCIe_REFCLK_clk_n,
    PCIe_REFCLK_clk_p,
    PCIe_RESETn,
    PCIe_rxn,
    PCIe_rxp,
    PCIe_txn,
    PCIe_txp,
    RESETn,
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
    TRX_TXFRAME,
    TRX_TXNRX);
  input ADCIN_MAIN_v_n;
  input ADCIN_MAIN_v_p;
  input DDR3_CLK_IN_clk_n;
  input DDR3_CLK_IN_clk_p;
  output [14:0]DDR3_addr;
  output [2:0]DDR3_ba;
  output DDR3_cas_n;
  output [0:0]DDR3_ck_n;
  output [0:0]DDR3_ck_p;
  output [0:0]DDR3_cke;
  output [0:0]DDR3_cs_n;
  output [3:0]DDR3_dm;
  inout [31:0]DDR3_dq;
  inout [3:0]DDR3_dqs_n;
  inout [3:0]DDR3_dqs_p;
  output [0:0]DDR3_odt;
  output DDR3_ras_n;
  output DDR3_reset_n;
  output DDR3_we_n;
  inout FLASH_QSPI_io0_io;
  inout FLASH_QSPI_io1_io;
  inout FLASH_QSPI_io2_io;
  inout FLASH_QSPI_io3_io;
  inout [0:0]FLASH_QSPI_ss_io;
  inout [1:0]GPIO0_tri_io;
  inout [1:0]GPIO1_tri_io;
  inout I2C_scl_io;
  inout I2C_sda_io;
  input I2S_BCLK_IN;
  output [0:0]I2S_bclk;
  output [0:0]I2S_lrclk;
  input [0:0]I2S_sdata_in;
  output [0:0]I2S_sdata_out;
  output [0:0]PCIe_CLKREQn;
  input [0:0]PCIe_REFCLK_clk_n;
  input [0:0]PCIe_REFCLK_clk_p;
  input PCIe_RESETn;
  input [1:0]PCIe_rxn;
  input [1:0]PCIe_rxp;
  output [1:0]PCIe_txn;
  output [1:0]PCIe_txp;
  input RESETn;
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
  output TRX_TXFRAME;
  output TRX_TXNRX;

  wire ADCIN_MAIN_v_n;
  wire ADCIN_MAIN_v_p;
  wire DDR3_CLK_IN_clk_n;
  wire DDR3_CLK_IN_clk_p;
  wire [14:0]DDR3_addr;
  wire [2:0]DDR3_ba;
  wire DDR3_cas_n;
  wire [0:0]DDR3_ck_n;
  wire [0:0]DDR3_ck_p;
  wire [0:0]DDR3_cke;
  wire [0:0]DDR3_cs_n;
  wire [3:0]DDR3_dm;
  wire [31:0]DDR3_dq;
  wire [3:0]DDR3_dqs_n;
  wire [3:0]DDR3_dqs_p;
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
  wire [0:0]FLASH_QSPI_ss_i_0;
  wire [0:0]FLASH_QSPI_ss_io_0;
  wire [0:0]FLASH_QSPI_ss_o_0;
  wire FLASH_QSPI_ss_t;
  wire [0:0]GPIO0_tri_i_0;
  wire [1:1]GPIO0_tri_i_1;
  wire [0:0]GPIO0_tri_io_0;
  wire [1:1]GPIO0_tri_io_1;
  wire [0:0]GPIO0_tri_o_0;
  wire [1:1]GPIO0_tri_o_1;
  wire [0:0]GPIO0_tri_t_0;
  wire [1:1]GPIO0_tri_t_1;
  wire [0:0]GPIO1_tri_i_0;
  wire [1:1]GPIO1_tri_i_1;
  wire [0:0]GPIO1_tri_io_0;
  wire [1:1]GPIO1_tri_io_1;
  wire [0:0]GPIO1_tri_o_0;
  wire [1:1]GPIO1_tri_o_1;
  wire [0:0]GPIO1_tri_t_0;
  wire [1:1]GPIO1_tri_t_1;
  wire I2C_scl_i;
  wire I2C_scl_io;
  wire I2C_scl_o;
  wire I2C_scl_t;
  wire I2C_sda_i;
  wire I2C_sda_io;
  wire I2C_sda_o;
  wire I2C_sda_t;
  wire I2S_BCLK_IN;
  wire [0:0]I2S_bclk;
  wire [0:0]I2S_lrclk;
  wire [0:0]I2S_sdata_in;
  wire [0:0]I2S_sdata_out;
  wire [0:0]PCIe_CLKREQn;
  wire [0:0]PCIe_REFCLK_clk_n;
  wire [0:0]PCIe_REFCLK_clk_p;
  wire PCIe_RESETn;
  wire [1:0]PCIe_rxn;
  wire [1:0]PCIe_rxp;
  wire [1:0]PCIe_txn;
  wire [1:0]PCIe_txp;
  wire RESETn;
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
  wire TRX_TXFRAME;
  wire TRX_TXNRX;

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
  IOBUF FLASH_QSPI_ss_iobuf_0
       (.I(FLASH_QSPI_ss_o_0),
        .IO(FLASH_QSPI_ss_io[0]),
        .O(FLASH_QSPI_ss_i_0),
        .T(FLASH_QSPI_ss_t));
  IOBUF GPIO0_tri_iobuf_0
       (.I(GPIO0_tri_o_0),
        .IO(GPIO0_tri_io[0]),
        .O(GPIO0_tri_i_0),
        .T(GPIO0_tri_t_0));
  IOBUF GPIO0_tri_iobuf_1
       (.I(GPIO0_tri_o_1),
        .IO(GPIO0_tri_io[1]),
        .O(GPIO0_tri_i_1),
        .T(GPIO0_tri_t_1));
  IOBUF GPIO1_tri_iobuf_0
       (.I(GPIO1_tri_o_0),
        .IO(GPIO1_tri_io[0]),
        .O(GPIO1_tri_i_0),
        .T(GPIO1_tri_t_0));
  IOBUF GPIO1_tri_iobuf_1
       (.I(GPIO1_tri_o_1),
        .IO(GPIO1_tri_io[1]),
        .O(GPIO1_tri_i_1),
        .T(GPIO1_tri_t_1));
  IOBUF I2C_scl_iobuf
       (.I(I2C_scl_o),
        .IO(I2C_scl_io),
        .O(I2C_scl_i),
        .T(I2C_scl_t));
  IOBUF I2C_sda_iobuf
       (.I(I2C_sda_o),
        .IO(I2C_sda_io),
        .O(I2C_sda_i),
        .T(I2C_sda_t));
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
        .DDR3_CLK_IN_clk_n(DDR3_CLK_IN_clk_n),
        .DDR3_CLK_IN_clk_p(DDR3_CLK_IN_clk_p),
        .DDR3_addr(DDR3_addr),
        .DDR3_ba(DDR3_ba),
        .DDR3_cas_n(DDR3_cas_n),
        .DDR3_ck_n(DDR3_ck_n),
        .DDR3_ck_p(DDR3_ck_p),
        .DDR3_cke(DDR3_cke),
        .DDR3_cs_n(DDR3_cs_n),
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
        .FLASH_QSPI_ss_i(FLASH_QSPI_ss_i_0),
        .FLASH_QSPI_ss_o(FLASH_QSPI_ss_o_0),
        .FLASH_QSPI_ss_t(FLASH_QSPI_ss_t),
        .GPIO0_tri_i({GPIO0_tri_i_1,GPIO0_tri_i_0}),
        .GPIO0_tri_o({GPIO0_tri_o_1,GPIO0_tri_o_0}),
        .GPIO0_tri_t({GPIO0_tri_t_1,GPIO0_tri_t_0}),
        .GPIO1_tri_i({GPIO1_tri_i_1,GPIO1_tri_i_0}),
        .GPIO1_tri_o({GPIO1_tri_o_1,GPIO1_tri_o_0}),
        .GPIO1_tri_t({GPIO1_tri_t_1,GPIO1_tri_t_0}),
        .I2C_scl_i(I2C_scl_i),
        .I2C_scl_o(I2C_scl_o),
        .I2C_scl_t(I2C_scl_t),
        .I2C_sda_i(I2C_sda_i),
        .I2C_sda_o(I2C_sda_o),
        .I2C_sda_t(I2C_sda_t),
        .I2S_BCLK_IN(I2S_BCLK_IN),
        .I2S_bclk(I2S_bclk),
        .I2S_lrclk(I2S_lrclk),
        .I2S_sdata_in(I2S_sdata_in),
        .I2S_sdata_out(I2S_sdata_out),
        .PCIe_CLKREQn(PCIe_CLKREQn),
        .PCIe_REFCLK_clk_n(PCIe_REFCLK_clk_n),
        .PCIe_REFCLK_clk_p(PCIe_REFCLK_clk_p),
        .PCIe_RESETn(PCIe_RESETn),
        .PCIe_rxn(PCIe_rxn),
        .PCIe_rxp(PCIe_rxp),
        .PCIe_txn(PCIe_txn),
        .PCIe_txp(PCIe_txp),
        .RESETn(RESETn),
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
        .TRX_TXFRAME(TRX_TXFRAME),
        .TRX_TXNRX(TRX_TXNRX));
endmodule
