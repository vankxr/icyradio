//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
//Date        : Thu Sep 21 20:13:28 2023
//Host        : xubuntu-dev running 64-bit Ubuntu 20.04.5 LTS
//Command     : generate_target icyradio.bd
//Design      : icyradio
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

/* Build Timestamping IP and connect to 2 AND gates that are currently masked with VCC to apply backpressure to DMA and ADC
For TX, we apply back-pressure by telling the Unpacker that the data from the DMA is not ready.
Since the Unpacker copies the valid signal into the ready signal, there is no need to signal the DMA that the Unpacker is not ready.
For RX, we apply back-pressure by masking the wr_en from the ADC. This way, the ADC keeps spitting out samples that get ignored by the Packer. */
(* CORE_GENERATION_INFO = "icyradio,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=icyradio,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=102,numReposBlks=70,numNonXlnxBlks=9,numHierBlks=32,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"da_axi4_cnt\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"=1,\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"da_board_cnt\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"=6,\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"da_bram_cntlr_cnt\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"=1,\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"da_clkrst_cnt\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"=23,\"\"\"\"\"\"\"\"\"\"\"\"\"\"da_clkrst_cnt\"\"\"\"\"\"\"\"\"\"\"\"\"\"=5,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "icyradio.hwdef" *) 
module icyradio
   (ADCIN_MAIN_v_n,
    ADCIN_MAIN_v_p,
    AUDIO_I2C_scl_i,
    AUDIO_I2C_scl_o,
    AUDIO_I2C_scl_t,
    AUDIO_I2C_sda_i,
    AUDIO_I2C_sda_o,
    AUDIO_I2C_sda_t,
    CLK_MNGR_IRQn,
    CLK_MNGR_OEn,
    CM4_WAKE,
    CODEC_I2S_bclk,
    CODEC_I2S_lrclk,
    CODEC_I2S_sdata_in,
    CODEC_I2S_sdata_out,
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
    FLASH_QSPI_io0_i,
    FLASH_QSPI_io0_o,
    FLASH_QSPI_io0_t,
    FLASH_QSPI_io1_i,
    FLASH_QSPI_io1_o,
    FLASH_QSPI_io1_t,
    FLASH_QSPI_io2_i,
    FLASH_QSPI_io2_o,
    FLASH_QSPI_io2_t,
    FLASH_QSPI_io3_i,
    FLASH_QSPI_io3_o,
    FLASH_QSPI_io3_t,
    FLASH_QSPI_sck_i,
    FLASH_QSPI_sck_o,
    FLASH_QSPI_sck_t,
    FLASH_QSPI_ss_i,
    FLASH_QSPI_ss_o,
    FLASH_QSPI_ss_t,
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
    SYNTH_SPI_io0_i,
    SYNTH_SPI_io0_o,
    SYNTH_SPI_io0_t,
    SYNTH_SPI_io1_i,
    SYNTH_SPI_io1_o,
    SYNTH_SPI_io1_t,
    SYNTH_SPI_sck_i,
    SYNTH_SPI_sck_o,
    SYNTH_SPI_sck_t,
    SYNTH_SPI_ss_i,
    SYNTH_SPI_ss_o,
    SYNTH_SPI_ss_t,
    SYNTH_SYNC,
    SYS_I2C_scl_i,
    SYS_I2C_scl_o,
    SYS_I2C_scl_t,
    SYS_I2C_sda_i,
    SYS_I2C_sda_o,
    SYS_I2C_sda_t,
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
    TRX_SPI_io0_i,
    TRX_SPI_io0_o,
    TRX_SPI_io0_t,
    TRX_SPI_io1_i,
    TRX_SPI_io1_o,
    TRX_SPI_io1_t,
    TRX_SPI_sck_i,
    TRX_SPI_sck_o,
    TRX_SPI_sck_t,
    TRX_SPI_ss_i,
    TRX_SPI_ss_o,
    TRX_SPI_ss_t,
    TRX_SYNC_IN,
    TRX_TXFRAME,
    TRX_TXNRX,
    VIN_REG_ALERTn);
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 ADCIN_MAIN V_N" *) input ADCIN_MAIN_v_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 ADCIN_MAIN V_P" *) input ADCIN_MAIN_v_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 AUDIO_I2C SCL_I" *) input AUDIO_I2C_scl_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 AUDIO_I2C SCL_O" *) output AUDIO_I2C_scl_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 AUDIO_I2C SCL_T" *) output AUDIO_I2C_scl_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 AUDIO_I2C SDA_I" *) input AUDIO_I2C_sda_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 AUDIO_I2C SDA_O" *) output AUDIO_I2C_sda_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 AUDIO_I2C SDA_T" *) output AUDIO_I2C_sda_t;
  input CLK_MNGR_IRQn;
  output [0:0]CLK_MNGR_OEn;
  output [0:0]CM4_WAKE;
  (* X_INTERFACE_INFO = "analog.com:interface:i2s:1.0 CODEC_I2S BCLK" *) output [0:0]CODEC_I2S_bclk;
  (* X_INTERFACE_INFO = "analog.com:interface:i2s:1.0 CODEC_I2S LRCLK" *) output [0:0]CODEC_I2S_lrclk;
  (* X_INTERFACE_INFO = "analog.com:interface:i2s:1.0 CODEC_I2S SDATA_IN" *) input [0:0]CODEC_I2S_sdata_in;
  (* X_INTERFACE_INFO = "analog.com:interface:i2s:1.0 CODEC_I2S SDATA_OUT" *) output [0:0]CODEC_I2S_sdata_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.CODEC_RSTN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.CODEC_RSTN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output [0:0]CODEC_RSTn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3 ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR3, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) output [14:0]DDR3_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3 BA" *) output [2:0]DDR3_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3 CAS_N" *) output DDR3_cas_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3 CK_N" *) output [0:0]DDR3_ck_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3 CK_P" *) output [0:0]DDR3_ck_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3 CKE" *) output [0:0]DDR3_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3 DM" *) output [1:0]DDR3_dm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3 DQ" *) inout [15:0]DDR3_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3 DQS_N" *) inout [1:0]DDR3_dqs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3 DQS_P" *) inout [1:0]DDR3_dqs_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3 ODT" *) output [0:0]DDR3_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3 RAS_N" *) output DDR3_ras_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3 RESET_N" *) output DDR3_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3 WE_N" *) output DDR3_we_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 FLASH_QSPI IO0_I" *) input FLASH_QSPI_io0_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 FLASH_QSPI IO0_O" *) output FLASH_QSPI_io0_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 FLASH_QSPI IO0_T" *) output FLASH_QSPI_io0_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 FLASH_QSPI IO1_I" *) input FLASH_QSPI_io1_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 FLASH_QSPI IO1_O" *) output FLASH_QSPI_io1_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 FLASH_QSPI IO1_T" *) output FLASH_QSPI_io1_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 FLASH_QSPI IO2_I" *) input FLASH_QSPI_io2_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 FLASH_QSPI IO2_O" *) output FLASH_QSPI_io2_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 FLASH_QSPI IO2_T" *) output FLASH_QSPI_io2_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 FLASH_QSPI IO3_I" *) input FLASH_QSPI_io3_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 FLASH_QSPI IO3_O" *) output FLASH_QSPI_io3_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 FLASH_QSPI IO3_T" *) output FLASH_QSPI_io3_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 FLASH_QSPI SCK_I" *) input FLASH_QSPI_sck_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 FLASH_QSPI SCK_O" *) output FLASH_QSPI_sck_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 FLASH_QSPI SCK_T" *) output FLASH_QSPI_sck_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 FLASH_QSPI SS_I" *) input [0:0]FLASH_QSPI_ss_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 FLASH_QSPI SS_O" *) output [0:0]FLASH_QSPI_ss_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 FLASH_QSPI SS_T" *) output FLASH_QSPI_ss_t;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.FPGA_CLK0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.FPGA_CLK0, CLK_DOMAIN icyradio_FPGA_CLK0, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input FPGA_CLK0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.FPGA_CLK1 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.FPGA_CLK1, CLK_DOMAIN icyradio_FPGA_CLK1, FREQ_HZ 49152000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input FPGA_CLK1;
  output [0:0]PCIe_CLKREQn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 PCIe_REFCLK CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME PCIe_REFCLK, CAN_DEBUG false, FREQ_HZ 100000000" *) input [0:0]PCIe_REFCLK_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 PCIe_REFCLK CLK_P" *) input [0:0]PCIe_REFCLK_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.PCIE_RESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.PCIE_RESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input PCIe_RESETn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 PCIe rxn" *) input [1:0]PCIe_rxn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 PCIe rxp" *) input [1:0]PCIe_rxp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 PCIe txn" *) output [1:0]PCIe_txn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 PCIe txp" *) output [1:0]PCIe_txp;
  output [0:0]PM_I2C_EN;
  output [0:0]SYNTH_CE;
  input SYNTH_LD;
  output [0:0]SYNTH_MUTE;
  output [0:0]SYNTH_RESETn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SYNTH_SPI IO0_I" *) input SYNTH_SPI_io0_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SYNTH_SPI IO0_O" *) output SYNTH_SPI_io0_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SYNTH_SPI IO0_T" *) output SYNTH_SPI_io0_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SYNTH_SPI IO1_I" *) input SYNTH_SPI_io1_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SYNTH_SPI IO1_O" *) output SYNTH_SPI_io1_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SYNTH_SPI IO1_T" *) output SYNTH_SPI_io1_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SYNTH_SPI SCK_I" *) input SYNTH_SPI_sck_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SYNTH_SPI SCK_O" *) output SYNTH_SPI_sck_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SYNTH_SPI SCK_T" *) output SYNTH_SPI_sck_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SYNTH_SPI SS_I" *) input [0:0]SYNTH_SPI_ss_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SYNTH_SPI SS_O" *) output [0:0]SYNTH_SPI_ss_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SYNTH_SPI SS_T" *) output SYNTH_SPI_ss_t;
  output [0:0]SYNTH_SYNC;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 SYS_I2C SCL_I" *) input SYS_I2C_scl_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 SYS_I2C SCL_O" *) output SYS_I2C_scl_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 SYS_I2C SCL_T" *) output SYS_I2C_scl_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 SYS_I2C SDA_I" *) input SYS_I2C_sda_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 SYS_I2C SDA_O" *) output SYS_I2C_sda_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 SYS_I2C SDA_T" *) output SYS_I2C_sda_t;
  input TRX_5V0_BIAS_T1_OCn;
  input TRX_5V0_BIAS_T2_OCn;
  input TRX_5V0_PA1_OCn;
  input TRX_5V0_PA2_OCn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.TRX_CLK_OUT CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.TRX_CLK_OUT, CLK_DOMAIN icyradio_TRX_CLK_OUT, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input TRX_CLK_OUT;
  output [3:0]TRX_CTRL_IN;
  input [7:0]TRX_CTRL_OUT;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.TRX_DATA_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.TRX_DATA_CLK, CLK_DOMAIN icyradio_TRX_DATA_CLK, FREQ_HZ 61440000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input TRX_DATA_CLK;
  output TRX_EN;
  output [0:0]TRX_EN_AGC;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.TRX_FBCLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.TRX_FBCLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output TRX_FBCLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.TRX_P0_TXDATA DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.TRX_P0_TXDATA, LAYERED_METADATA undef" *) output [11:0]TRX_P0_TXDATA;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.TRX_P1_RXDATA DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.TRX_P1_RXDATA, LAYERED_METADATA undef" *) input [11:0]TRX_P1_RXDATA;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.TRX_RESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.TRX_RESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output [0:0]TRX_RESETn;
  input TRX_RXFRAME;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 TRX_SPI IO0_I" *) input TRX_SPI_io0_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 TRX_SPI IO0_O" *) output TRX_SPI_io0_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 TRX_SPI IO0_T" *) output TRX_SPI_io0_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 TRX_SPI IO1_I" *) input TRX_SPI_io1_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 TRX_SPI IO1_O" *) output TRX_SPI_io1_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 TRX_SPI IO1_T" *) output TRX_SPI_io1_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 TRX_SPI SCK_I" *) input TRX_SPI_sck_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 TRX_SPI SCK_O" *) output TRX_SPI_sck_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 TRX_SPI SCK_T" *) output TRX_SPI_sck_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 TRX_SPI SS_I" *) input [0:0]TRX_SPI_ss_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 TRX_SPI SS_O" *) output [0:0]TRX_SPI_ss_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 TRX_SPI SS_T" *) output TRX_SPI_ss_t;
  output [0:0]TRX_SYNC_IN;
  output TRX_TXFRAME;
  output TRX_TXNRX;
  input VIN_REG_ALERTn;

  wire [0:0]CORTEXM3_AXI_0_SYSRESETREQ;
  wire FPGA_CLK0_1;
  wire [0:0]GND_0_dout;
  wire [12:0]GND_2_dout;
  wire [11:0]GND_3_dout;
  wire [22:0]GND_4_dout;
  wire [7:0]GND_5_dout;
  wire [7:0]GND_6_dout;
  wire [0:0]PCIe_REFCLK_1_CLK_N;
  wire [0:0]PCIe_REFCLK_1_CLK_P;
  wire RXCLK_1;
  wire [11:0]RXDATA_1;
  wire RXFRAME_1;
  wire [30:0]S00_AXI_1_ARADDR;
  wire [1:0]S00_AXI_1_ARBURST;
  wire [3:0]S00_AXI_1_ARCACHE;
  wire [7:0]S00_AXI_1_ARLEN;
  wire [2:0]S00_AXI_1_ARPROT;
  wire S00_AXI_1_ARREADY;
  wire [2:0]S00_AXI_1_ARSIZE;
  wire S00_AXI_1_ARVALID;
  wire [63:0]S00_AXI_1_RDATA;
  wire S00_AXI_1_RLAST;
  wire S00_AXI_1_RREADY;
  wire [1:0]S00_AXI_1_RRESP;
  wire S00_AXI_1_RVALID;
  wire [30:0]S01_AXI_1_AWADDR;
  wire [1:0]S01_AXI_1_AWBURST;
  wire [3:0]S01_AXI_1_AWCACHE;
  wire [7:0]S01_AXI_1_AWLEN;
  wire [2:0]S01_AXI_1_AWPROT;
  wire S01_AXI_1_AWREADY;
  wire [2:0]S01_AXI_1_AWSIZE;
  wire S01_AXI_1_AWVALID;
  wire S01_AXI_1_BREADY;
  wire [1:0]S01_AXI_1_BRESP;
  wire S01_AXI_1_BVALID;
  wire [63:0]S01_AXI_1_WDATA;
  wire S01_AXI_1_WLAST;
  wire S01_AXI_1_WREADY;
  wire [7:0]S01_AXI_1_WSTRB;
  wire S01_AXI_1_WVALID;
  wire [31:0]S04_AXI_1_ARADDR;
  wire [2:0]S04_AXI_1_ARPROT;
  wire S04_AXI_1_ARREADY;
  wire S04_AXI_1_ARVALID;
  wire [31:0]S04_AXI_1_AWADDR;
  wire [2:0]S04_AXI_1_AWPROT;
  wire S04_AXI_1_AWREADY;
  wire S04_AXI_1_AWVALID;
  wire S04_AXI_1_BREADY;
  wire S04_AXI_1_BVALID;
  wire [31:0]S04_AXI_1_RDATA;
  wire S04_AXI_1_RREADY;
  wire S04_AXI_1_RVALID;
  wire [31:0]S04_AXI_1_WDATA;
  wire S04_AXI_1_WREADY;
  wire [3:0]S04_AXI_1_WSTRB;
  wire S04_AXI_1_WVALID;
  wire SYNTH_LD_1;
  wire TRX_5V0_BIAS_T1_OCn_1;
  wire TRX_5V0_BIAS_T2_OCn_1;
  wire TRX_5V0_PA1_OCn_1;
  wire TRX_5V0_PA2_OCn_1;
  wire [7:0]TRX_CTRL_OUT_1;
  wire [0:0]VCC_0_dout;
  wire Vp_Vn_0_1_V_N;
  wire Vp_Vn_0_1_V_P;
  wire ad9361_adc_packer_fifo_wr_overflow;
  wire ad9361_dac_unpacker_fifo_rd_underflow;
  wire [15:0]axi_ad9361_0_adc_data_i0;
  wire [15:0]axi_ad9361_0_adc_data_i1;
  wire [15:0]axi_ad9361_0_adc_data_q0;
  wire [15:0]axi_ad9361_0_adc_data_q1;
  wire axi_ad9361_0_adc_enable_i0;
  wire axi_ad9361_0_adc_enable_i1;
  wire axi_ad9361_0_adc_enable_q0;
  wire axi_ad9361_0_adc_enable_q1;
  wire axi_ad9361_0_adc_valid_i0;
  wire axi_ad9361_0_adc_valid_i1;
  wire axi_ad9361_0_dac_enable_i0;
  wire axi_ad9361_0_dac_enable_i1;
  wire axi_ad9361_0_dac_enable_q0;
  wire axi_ad9361_0_dac_enable_q1;
  wire axi_ad9361_0_dac_valid_i0;
  wire axi_ad9361_0_dac_valid_i1;
  wire axi_ad9361_0_enable;
  wire axi_ad9361_0_gps_pps_irq;
  wire axi_ad9361_0_l_clk;
  wire axi_ad9361_0_rst;
  wire axi_ad9361_0_tx_clk_out;
  wire [11:0]axi_ad9361_0_tx_data_out;
  wire axi_ad9361_0_tx_frame_out;
  wire axi_ad9361_0_txnrx;
  wire [12:0]axi_bram_ctrl_0_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_0_BRAM_PORTA_CLK;
  wire [63:0]axi_bram_ctrl_0_BRAM_PORTA_DIN;
  wire [63:0]axi_bram_ctrl_0_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_0_BRAM_PORTA_EN;
  wire axi_bram_ctrl_0_BRAM_PORTA_RST;
  wire [7:0]axi_bram_ctrl_0_BRAM_PORTA_WE;
  wire axi_dmac_i2s_rx_irq;
  wire [30:0]axi_dmac_i2s_rx_m_dest_axi_AWADDR;
  wire [1:0]axi_dmac_i2s_rx_m_dest_axi_AWBURST;
  wire [3:0]axi_dmac_i2s_rx_m_dest_axi_AWCACHE;
  wire [7:0]axi_dmac_i2s_rx_m_dest_axi_AWLEN;
  wire [2:0]axi_dmac_i2s_rx_m_dest_axi_AWPROT;
  wire axi_dmac_i2s_rx_m_dest_axi_AWREADY;
  wire [2:0]axi_dmac_i2s_rx_m_dest_axi_AWSIZE;
  wire axi_dmac_i2s_rx_m_dest_axi_AWVALID;
  wire axi_dmac_i2s_rx_m_dest_axi_BREADY;
  wire [1:0]axi_dmac_i2s_rx_m_dest_axi_BRESP;
  wire axi_dmac_i2s_rx_m_dest_axi_BVALID;
  wire [63:0]axi_dmac_i2s_rx_m_dest_axi_WDATA;
  wire axi_dmac_i2s_rx_m_dest_axi_WLAST;
  wire axi_dmac_i2s_rx_m_dest_axi_WREADY;
  wire [7:0]axi_dmac_i2s_rx_m_dest_axi_WSTRB;
  wire axi_dmac_i2s_rx_m_dest_axi_WVALID;
  wire axi_dmac_i2s_tx_irq;
  wire [31:0]axi_dmac_i2s_tx_m_axis_TDATA;
  wire axi_dmac_i2s_tx_m_axis_TLAST;
  wire axi_dmac_i2s_tx_m_axis_TREADY;
  wire axi_dmac_i2s_tx_m_axis_TVALID;
  wire [30:0]axi_dmac_i2s_tx_m_src_axi_ARADDR;
  wire [1:0]axi_dmac_i2s_tx_m_src_axi_ARBURST;
  wire [3:0]axi_dmac_i2s_tx_m_src_axi_ARCACHE;
  wire [7:0]axi_dmac_i2s_tx_m_src_axi_ARLEN;
  wire [2:0]axi_dmac_i2s_tx_m_src_axi_ARPROT;
  wire axi_dmac_i2s_tx_m_src_axi_ARREADY;
  wire [2:0]axi_dmac_i2s_tx_m_src_axi_ARSIZE;
  wire axi_dmac_i2s_tx_m_src_axi_ARVALID;
  wire [63:0]axi_dmac_i2s_tx_m_src_axi_RDATA;
  wire axi_dmac_i2s_tx_m_src_axi_RLAST;
  wire axi_dmac_i2s_tx_m_src_axi_RREADY;
  wire [1:0]axi_dmac_i2s_tx_m_src_axi_RRESP;
  wire axi_dmac_i2s_tx_m_src_axi_RVALID;
  wire axi_dmac_rf_rx_irq;
  wire axi_dmac_rf_tx_irq;
  wire [63:0]axi_dmac_rf_tx_m_axis_TDATA;
  wire axi_dmac_rf_tx_m_axis_TREADY;
  wire axi_dmac_rf_tx_m_axis_valid;
  wire [31:0]axi_gpio_0_gpio_io_o;
  wire axi_gpio_0_ip2intc_irpt;
  wire [31:0]axi_gpio_1_gpio_io_o;
  wire axi_gpio_1_ip2intc_irpt;
  wire [0:0]axi_i2s_adi_0_i2s_BCLK;
  wire [0:0]axi_i2s_adi_0_i2s_LRCLK;
  wire [0:0]axi_i2s_adi_0_i2s_SDATA_IN;
  wire [0:0]axi_i2s_adi_0_i2s_SDATA_OUT;
  wire [31:0]axi_i2s_adi_0_m_axis_TDATA;
  wire [3:0]axi_i2s_adi_0_m_axis_TKEEP;
  wire axi_i2s_adi_0_m_axis_TLAST;
  wire axi_i2s_adi_0_m_axis_TREADY;
  wire axi_i2s_adi_0_m_axis_TVALID;
  wire axi_iic_0_IIC_SCL_I;
  wire axi_iic_0_IIC_SCL_O;
  wire axi_iic_0_IIC_SCL_T;
  wire axi_iic_0_IIC_SDA_I;
  wire axi_iic_0_IIC_SDA_O;
  wire axi_iic_0_IIC_SDA_T;
  wire [0:0]axi_iic_0_gpo;
  wire axi_iic_0_iic2intc_irpt;
  wire axi_iic_1_IIC_SCL_I;
  wire axi_iic_1_IIC_SCL_O;
  wire axi_iic_1_IIC_SCL_T;
  wire axi_iic_1_IIC_SDA_I;
  wire axi_iic_1_IIC_SDA_O;
  wire axi_iic_1_IIC_SDA_T;
  wire [1:0]axi_iic_1_gpo;
  wire axi_iic_1_iic2intc_irpt;
  wire [31:0]axi_interconnect_0_M01_AXI_ARADDR;
  wire [1:0]axi_interconnect_0_M01_AXI_ARBURST;
  wire [2:0]axi_interconnect_0_M01_AXI_ARID;
  wire [7:0]axi_interconnect_0_M01_AXI_ARLEN;
  wire axi_interconnect_0_M01_AXI_ARREADY;
  wire [3:0]axi_interconnect_0_M01_AXI_ARREGION;
  wire [2:0]axi_interconnect_0_M01_AXI_ARSIZE;
  wire axi_interconnect_0_M01_AXI_ARVALID;
  wire [31:0]axi_interconnect_0_M01_AXI_AWADDR;
  wire [1:0]axi_interconnect_0_M01_AXI_AWBURST;
  wire [2:0]axi_interconnect_0_M01_AXI_AWID;
  wire [7:0]axi_interconnect_0_M01_AXI_AWLEN;
  wire axi_interconnect_0_M01_AXI_AWREADY;
  wire [3:0]axi_interconnect_0_M01_AXI_AWREGION;
  wire [2:0]axi_interconnect_0_M01_AXI_AWSIZE;
  wire axi_interconnect_0_M01_AXI_AWVALID;
  wire [2:0]axi_interconnect_0_M01_AXI_BID;
  wire axi_interconnect_0_M01_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M01_AXI_BRESP;
  wire axi_interconnect_0_M01_AXI_BVALID;
  wire [63:0]axi_interconnect_0_M01_AXI_RDATA;
  wire [2:0]axi_interconnect_0_M01_AXI_RID;
  wire axi_interconnect_0_M01_AXI_RLAST;
  wire axi_interconnect_0_M01_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M01_AXI_RRESP;
  wire axi_interconnect_0_M01_AXI_RVALID;
  wire [63:0]axi_interconnect_0_M01_AXI_WDATA;
  wire axi_interconnect_0_M01_AXI_WLAST;
  wire axi_interconnect_0_M01_AXI_WREADY;
  wire [7:0]axi_interconnect_0_M01_AXI_WSTRB;
  wire axi_interconnect_0_M01_AXI_WVALID;
  wire [31:0]axi_interconnect_1_M03_AXI_ARADDR;
  wire axi_interconnect_1_M03_AXI_ARREADY;
  wire [0:0]axi_interconnect_1_M03_AXI_ARVALID;
  wire [31:0]axi_interconnect_1_M03_AXI_AWADDR;
  wire axi_interconnect_1_M03_AXI_AWREADY;
  wire [0:0]axi_interconnect_1_M03_AXI_AWVALID;
  wire [0:0]axi_interconnect_1_M03_AXI_BREADY;
  wire [1:0]axi_interconnect_1_M03_AXI_BRESP;
  wire axi_interconnect_1_M03_AXI_BVALID;
  wire [31:0]axi_interconnect_1_M03_AXI_RDATA;
  wire [0:0]axi_interconnect_1_M03_AXI_RREADY;
  wire [1:0]axi_interconnect_1_M03_AXI_RRESP;
  wire axi_interconnect_1_M03_AXI_RVALID;
  wire [31:0]axi_interconnect_1_M03_AXI_WDATA;
  wire axi_interconnect_1_M03_AXI_WREADY;
  wire [3:0]axi_interconnect_1_M03_AXI_WSTRB;
  wire [0:0]axi_interconnect_1_M03_AXI_WVALID;
  wire [31:0]axi_interconnect_1_M04_AXI_ARADDR;
  wire axi_interconnect_1_M04_AXI_ARREADY;
  wire [0:0]axi_interconnect_1_M04_AXI_ARVALID;
  wire [31:0]axi_interconnect_1_M04_AXI_AWADDR;
  wire axi_interconnect_1_M04_AXI_AWREADY;
  wire [0:0]axi_interconnect_1_M04_AXI_AWVALID;
  wire [0:0]axi_interconnect_1_M04_AXI_BREADY;
  wire [1:0]axi_interconnect_1_M04_AXI_BRESP;
  wire axi_interconnect_1_M04_AXI_BVALID;
  wire [31:0]axi_interconnect_1_M04_AXI_RDATA;
  wire [0:0]axi_interconnect_1_M04_AXI_RREADY;
  wire [1:0]axi_interconnect_1_M04_AXI_RRESP;
  wire axi_interconnect_1_M04_AXI_RVALID;
  wire [31:0]axi_interconnect_1_M04_AXI_WDATA;
  wire axi_interconnect_1_M04_AXI_WREADY;
  wire [3:0]axi_interconnect_1_M04_AXI_WSTRB;
  wire [0:0]axi_interconnect_1_M04_AXI_WVALID;
  wire [31:0]axi_interconnect_1_M05_AXI_ARADDR;
  wire axi_interconnect_1_M05_AXI_ARREADY;
  wire axi_interconnect_1_M05_AXI_ARVALID;
  wire [31:0]axi_interconnect_1_M05_AXI_AWADDR;
  wire axi_interconnect_1_M05_AXI_AWREADY;
  wire axi_interconnect_1_M05_AXI_AWVALID;
  wire axi_interconnect_1_M05_AXI_BREADY;
  wire [1:0]axi_interconnect_1_M05_AXI_BRESP;
  wire axi_interconnect_1_M05_AXI_BVALID;
  wire [31:0]axi_interconnect_1_M05_AXI_RDATA;
  wire axi_interconnect_1_M05_AXI_RREADY;
  wire [1:0]axi_interconnect_1_M05_AXI_RRESP;
  wire axi_interconnect_1_M05_AXI_RVALID;
  wire [31:0]axi_interconnect_1_M05_AXI_WDATA;
  wire axi_interconnect_1_M05_AXI_WREADY;
  wire [3:0]axi_interconnect_1_M05_AXI_WSTRB;
  wire axi_interconnect_1_M05_AXI_WVALID;
  wire [31:0]axi_interconnect_1_M06_AXI_ARADDR;
  wire axi_interconnect_1_M06_AXI_ARREADY;
  wire axi_interconnect_1_M06_AXI_ARVALID;
  wire [31:0]axi_interconnect_1_M06_AXI_AWADDR;
  wire axi_interconnect_1_M06_AXI_AWREADY;
  wire axi_interconnect_1_M06_AXI_AWVALID;
  wire axi_interconnect_1_M06_AXI_BREADY;
  wire [1:0]axi_interconnect_1_M06_AXI_BRESP;
  wire axi_interconnect_1_M06_AXI_BVALID;
  wire [31:0]axi_interconnect_1_M06_AXI_RDATA;
  wire axi_interconnect_1_M06_AXI_RREADY;
  wire [1:0]axi_interconnect_1_M06_AXI_RRESP;
  wire axi_interconnect_1_M06_AXI_RVALID;
  wire [31:0]axi_interconnect_1_M06_AXI_WDATA;
  wire axi_interconnect_1_M06_AXI_WREADY;
  wire [3:0]axi_interconnect_1_M06_AXI_WSTRB;
  wire axi_interconnect_1_M06_AXI_WVALID;
  wire [31:0]axi_mem_interconnect_M00_AXI_ARADDR;
  wire [1:0]axi_mem_interconnect_M00_AXI_ARBURST;
  wire [3:0]axi_mem_interconnect_M00_AXI_ARCACHE;
  wire [7:0]axi_mem_interconnect_M00_AXI_ARLEN;
  wire [0:0]axi_mem_interconnect_M00_AXI_ARLOCK;
  wire [2:0]axi_mem_interconnect_M00_AXI_ARPROT;
  wire [3:0]axi_mem_interconnect_M00_AXI_ARQOS;
  wire axi_mem_interconnect_M00_AXI_ARREADY;
  wire [3:0]axi_mem_interconnect_M00_AXI_ARREGION;
  wire [2:0]axi_mem_interconnect_M00_AXI_ARSIZE;
  wire axi_mem_interconnect_M00_AXI_ARVALID;
  wire [31:0]axi_mem_interconnect_M00_AXI_AWADDR;
  wire [1:0]axi_mem_interconnect_M00_AXI_AWBURST;
  wire [3:0]axi_mem_interconnect_M00_AXI_AWCACHE;
  wire [7:0]axi_mem_interconnect_M00_AXI_AWLEN;
  wire [0:0]axi_mem_interconnect_M00_AXI_AWLOCK;
  wire [2:0]axi_mem_interconnect_M00_AXI_AWPROT;
  wire [3:0]axi_mem_interconnect_M00_AXI_AWQOS;
  wire axi_mem_interconnect_M00_AXI_AWREADY;
  wire [3:0]axi_mem_interconnect_M00_AXI_AWREGION;
  wire [2:0]axi_mem_interconnect_M00_AXI_AWSIZE;
  wire axi_mem_interconnect_M00_AXI_AWVALID;
  wire axi_mem_interconnect_M00_AXI_BREADY;
  wire [1:0]axi_mem_interconnect_M00_AXI_BRESP;
  wire axi_mem_interconnect_M00_AXI_BVALID;
  wire [31:0]axi_mem_interconnect_M00_AXI_RDATA;
  wire axi_mem_interconnect_M00_AXI_RLAST;
  wire axi_mem_interconnect_M00_AXI_RREADY;
  wire [1:0]axi_mem_interconnect_M00_AXI_RRESP;
  wire axi_mem_interconnect_M00_AXI_RVALID;
  wire [31:0]axi_mem_interconnect_M00_AXI_WDATA;
  wire axi_mem_interconnect_M00_AXI_WLAST;
  wire axi_mem_interconnect_M00_AXI_WREADY;
  wire [3:0]axi_mem_interconnect_M00_AXI_WSTRB;
  wire axi_mem_interconnect_M00_AXI_WVALID;
  wire [31:0]axi_pcie_0_M_AXI_ARADDR;
  wire [1:0]axi_pcie_0_M_AXI_ARBURST;
  wire [3:0]axi_pcie_0_M_AXI_ARCACHE;
  wire [7:0]axi_pcie_0_M_AXI_ARLEN;
  wire axi_pcie_0_M_AXI_ARLOCK;
  wire [2:0]axi_pcie_0_M_AXI_ARPROT;
  wire axi_pcie_0_M_AXI_ARREADY;
  wire [2:0]axi_pcie_0_M_AXI_ARSIZE;
  wire axi_pcie_0_M_AXI_ARVALID;
  wire [31:0]axi_pcie_0_M_AXI_AWADDR;
  wire [1:0]axi_pcie_0_M_AXI_AWBURST;
  wire [3:0]axi_pcie_0_M_AXI_AWCACHE;
  wire [7:0]axi_pcie_0_M_AXI_AWLEN;
  wire axi_pcie_0_M_AXI_AWLOCK;
  wire [2:0]axi_pcie_0_M_AXI_AWPROT;
  wire axi_pcie_0_M_AXI_AWREADY;
  wire [2:0]axi_pcie_0_M_AXI_AWSIZE;
  wire axi_pcie_0_M_AXI_AWVALID;
  wire axi_pcie_0_M_AXI_BREADY;
  wire [1:0]axi_pcie_0_M_AXI_BRESP;
  wire axi_pcie_0_M_AXI_BVALID;
  wire [63:0]axi_pcie_0_M_AXI_RDATA;
  wire axi_pcie_0_M_AXI_RLAST;
  wire axi_pcie_0_M_AXI_RREADY;
  wire [1:0]axi_pcie_0_M_AXI_RRESP;
  wire axi_pcie_0_M_AXI_RVALID;
  wire [63:0]axi_pcie_0_M_AXI_WDATA;
  wire axi_pcie_0_M_AXI_WLAST;
  wire axi_pcie_0_M_AXI_WREADY;
  wire [7:0]axi_pcie_0_M_AXI_WSTRB;
  wire axi_pcie_0_M_AXI_WVALID;
  wire axi_pcie_0_axi_aclk_out;
  wire axi_pcie_0_axi_ctl_aclk_out;
  wire axi_pcie_0_interrupt_out;
  wire axi_pcie_0_mmcm_lock;
  wire [1:0]axi_pcie_0_pcie_7x_mgt_rxn;
  wire [1:0]axi_pcie_0_pcie_7x_mgt_rxp;
  wire [1:0]axi_pcie_0_pcie_7x_mgt_txn;
  wire [1:0]axi_pcie_0_pcie_7x_mgt_txp;
  wire [31:0]axi_pcie_interconnect_M00_AXI_ARADDR;
  wire [1:0]axi_pcie_interconnect_M00_AXI_ARBURST;
  wire [3:0]axi_pcie_interconnect_M00_AXI_ARCACHE;
  wire [2:0]axi_pcie_interconnect_M00_AXI_ARID;
  wire [7:0]axi_pcie_interconnect_M00_AXI_ARLEN;
  wire [0:0]axi_pcie_interconnect_M00_AXI_ARLOCK;
  wire [2:0]axi_pcie_interconnect_M00_AXI_ARPROT;
  wire [3:0]axi_pcie_interconnect_M00_AXI_ARQOS;
  wire axi_pcie_interconnect_M00_AXI_ARREADY;
  wire [3:0]axi_pcie_interconnect_M00_AXI_ARREGION;
  wire [2:0]axi_pcie_interconnect_M00_AXI_ARSIZE;
  wire axi_pcie_interconnect_M00_AXI_ARVALID;
  wire [31:0]axi_pcie_interconnect_M00_AXI_AWADDR;
  wire [1:0]axi_pcie_interconnect_M00_AXI_AWBURST;
  wire [3:0]axi_pcie_interconnect_M00_AXI_AWCACHE;
  wire [2:0]axi_pcie_interconnect_M00_AXI_AWID;
  wire [7:0]axi_pcie_interconnect_M00_AXI_AWLEN;
  wire [0:0]axi_pcie_interconnect_M00_AXI_AWLOCK;
  wire [2:0]axi_pcie_interconnect_M00_AXI_AWPROT;
  wire [3:0]axi_pcie_interconnect_M00_AXI_AWQOS;
  wire axi_pcie_interconnect_M00_AXI_AWREADY;
  wire [3:0]axi_pcie_interconnect_M00_AXI_AWREGION;
  wire [2:0]axi_pcie_interconnect_M00_AXI_AWSIZE;
  wire axi_pcie_interconnect_M00_AXI_AWVALID;
  wire [2:0]axi_pcie_interconnect_M00_AXI_BID;
  wire axi_pcie_interconnect_M00_AXI_BREADY;
  wire [1:0]axi_pcie_interconnect_M00_AXI_BRESP;
  wire axi_pcie_interconnect_M00_AXI_BVALID;
  wire [63:0]axi_pcie_interconnect_M00_AXI_RDATA;
  wire [2:0]axi_pcie_interconnect_M00_AXI_RID;
  wire axi_pcie_interconnect_M00_AXI_RLAST;
  wire axi_pcie_interconnect_M00_AXI_RREADY;
  wire [1:0]axi_pcie_interconnect_M00_AXI_RRESP;
  wire axi_pcie_interconnect_M00_AXI_RVALID;
  wire [63:0]axi_pcie_interconnect_M00_AXI_WDATA;
  wire axi_pcie_interconnect_M00_AXI_WLAST;
  wire axi_pcie_interconnect_M00_AXI_WREADY;
  wire [7:0]axi_pcie_interconnect_M00_AXI_WSTRB;
  wire axi_pcie_interconnect_M00_AXI_WVALID;
  wire [23:0]axi_pcie_interconnect_M01_AXI_ARADDR;
  wire [1:0]axi_pcie_interconnect_M01_AXI_ARBURST;
  wire [3:0]axi_pcie_interconnect_M01_AXI_ARCACHE;
  wire [7:0]axi_pcie_interconnect_M01_AXI_ARLEN;
  wire axi_pcie_interconnect_M01_AXI_ARLOCK;
  wire [2:0]axi_pcie_interconnect_M01_AXI_ARPROT;
  wire axi_pcie_interconnect_M01_AXI_ARREADY;
  wire [2:0]axi_pcie_interconnect_M01_AXI_ARSIZE;
  wire axi_pcie_interconnect_M01_AXI_ARVALID;
  wire [23:0]axi_pcie_interconnect_M01_AXI_AWADDR;
  wire [1:0]axi_pcie_interconnect_M01_AXI_AWBURST;
  wire [3:0]axi_pcie_interconnect_M01_AXI_AWCACHE;
  wire [7:0]axi_pcie_interconnect_M01_AXI_AWLEN;
  wire axi_pcie_interconnect_M01_AXI_AWLOCK;
  wire [2:0]axi_pcie_interconnect_M01_AXI_AWPROT;
  wire axi_pcie_interconnect_M01_AXI_AWREADY;
  wire [2:0]axi_pcie_interconnect_M01_AXI_AWSIZE;
  wire axi_pcie_interconnect_M01_AXI_AWVALID;
  wire axi_pcie_interconnect_M01_AXI_BREADY;
  wire [1:0]axi_pcie_interconnect_M01_AXI_BRESP;
  wire axi_pcie_interconnect_M01_AXI_BVALID;
  wire [31:0]axi_pcie_interconnect_M01_AXI_RDATA;
  wire axi_pcie_interconnect_M01_AXI_RLAST;
  wire axi_pcie_interconnect_M01_AXI_RREADY;
  wire [1:0]axi_pcie_interconnect_M01_AXI_RRESP;
  wire axi_pcie_interconnect_M01_AXI_RVALID;
  wire [31:0]axi_pcie_interconnect_M01_AXI_WDATA;
  wire axi_pcie_interconnect_M01_AXI_WLAST;
  wire axi_pcie_interconnect_M01_AXI_WREADY;
  wire [3:0]axi_pcie_interconnect_M01_AXI_WSTRB;
  wire axi_pcie_interconnect_M01_AXI_WVALID;
  wire [28:0]axi_pcie_interconnect_M02_AXI_ARADDR;
  wire [1:0]axi_pcie_interconnect_M02_AXI_ARBURST;
  wire [3:0]axi_pcie_interconnect_M02_AXI_ARCACHE;
  wire [3:0]axi_pcie_interconnect_M02_AXI_ARID;
  wire [7:0]axi_pcie_interconnect_M02_AXI_ARLEN;
  wire [0:0]axi_pcie_interconnect_M02_AXI_ARLOCK;
  wire [2:0]axi_pcie_interconnect_M02_AXI_ARPROT;
  wire [3:0]axi_pcie_interconnect_M02_AXI_ARQOS;
  wire axi_pcie_interconnect_M02_AXI_ARREADY;
  wire [2:0]axi_pcie_interconnect_M02_AXI_ARSIZE;
  wire axi_pcie_interconnect_M02_AXI_ARVALID;
  wire [28:0]axi_pcie_interconnect_M02_AXI_AWADDR;
  wire [1:0]axi_pcie_interconnect_M02_AXI_AWBURST;
  wire [3:0]axi_pcie_interconnect_M02_AXI_AWCACHE;
  wire [3:0]axi_pcie_interconnect_M02_AXI_AWID;
  wire [7:0]axi_pcie_interconnect_M02_AXI_AWLEN;
  wire [0:0]axi_pcie_interconnect_M02_AXI_AWLOCK;
  wire [2:0]axi_pcie_interconnect_M02_AXI_AWPROT;
  wire [3:0]axi_pcie_interconnect_M02_AXI_AWQOS;
  wire axi_pcie_interconnect_M02_AXI_AWREADY;
  wire [2:0]axi_pcie_interconnect_M02_AXI_AWSIZE;
  wire axi_pcie_interconnect_M02_AXI_AWVALID;
  wire [3:0]axi_pcie_interconnect_M02_AXI_BID;
  wire axi_pcie_interconnect_M02_AXI_BREADY;
  wire [1:0]axi_pcie_interconnect_M02_AXI_BRESP;
  wire axi_pcie_interconnect_M02_AXI_BVALID;
  wire [63:0]axi_pcie_interconnect_M02_AXI_RDATA;
  wire [3:0]axi_pcie_interconnect_M02_AXI_RID;
  wire axi_pcie_interconnect_M02_AXI_RLAST;
  wire axi_pcie_interconnect_M02_AXI_RREADY;
  wire [1:0]axi_pcie_interconnect_M02_AXI_RRESP;
  wire axi_pcie_interconnect_M02_AXI_RVALID;
  wire [63:0]axi_pcie_interconnect_M02_AXI_WDATA;
  wire axi_pcie_interconnect_M02_AXI_WLAST;
  wire axi_pcie_interconnect_M02_AXI_WREADY;
  wire [7:0]axi_pcie_interconnect_M02_AXI_WSTRB;
  wire axi_pcie_interconnect_M02_AXI_WVALID;
  wire [31:0]axi_pcie_interconnect_M03_AXI_ARADDR;
  wire [1:0]axi_pcie_interconnect_M03_AXI_ARBURST;
  wire [3:0]axi_pcie_interconnect_M03_AXI_ARCACHE;
  wire [3:0]axi_pcie_interconnect_M03_AXI_ARID;
  wire [7:0]axi_pcie_interconnect_M03_AXI_ARLEN;
  wire [0:0]axi_pcie_interconnect_M03_AXI_ARLOCK;
  wire [2:0]axi_pcie_interconnect_M03_AXI_ARPROT;
  wire axi_pcie_interconnect_M03_AXI_ARREADY;
  wire [2:0]axi_pcie_interconnect_M03_AXI_ARSIZE;
  wire [0:0]axi_pcie_interconnect_M03_AXI_ARVALID;
  wire [31:0]axi_pcie_interconnect_M03_AXI_AWADDR;
  wire [1:0]axi_pcie_interconnect_M03_AXI_AWBURST;
  wire [3:0]axi_pcie_interconnect_M03_AXI_AWCACHE;
  wire [3:0]axi_pcie_interconnect_M03_AXI_AWID;
  wire [7:0]axi_pcie_interconnect_M03_AXI_AWLEN;
  wire [0:0]axi_pcie_interconnect_M03_AXI_AWLOCK;
  wire [2:0]axi_pcie_interconnect_M03_AXI_AWPROT;
  wire axi_pcie_interconnect_M03_AXI_AWREADY;
  wire [2:0]axi_pcie_interconnect_M03_AXI_AWSIZE;
  wire [0:0]axi_pcie_interconnect_M03_AXI_AWVALID;
  wire [3:0]axi_pcie_interconnect_M03_AXI_BID;
  wire [0:0]axi_pcie_interconnect_M03_AXI_BREADY;
  wire [1:0]axi_pcie_interconnect_M03_AXI_BRESP;
  wire axi_pcie_interconnect_M03_AXI_BVALID;
  wire [63:0]axi_pcie_interconnect_M03_AXI_RDATA;
  wire [3:0]axi_pcie_interconnect_M03_AXI_RID;
  wire axi_pcie_interconnect_M03_AXI_RLAST;
  wire [0:0]axi_pcie_interconnect_M03_AXI_RREADY;
  wire [1:0]axi_pcie_interconnect_M03_AXI_RRESP;
  wire axi_pcie_interconnect_M03_AXI_RVALID;
  wire [63:0]axi_pcie_interconnect_M03_AXI_WDATA;
  wire [0:0]axi_pcie_interconnect_M03_AXI_WLAST;
  wire axi_pcie_interconnect_M03_AXI_WREADY;
  wire [7:0]axi_pcie_interconnect_M03_AXI_WSTRB;
  wire [0:0]axi_pcie_interconnect_M03_AXI_WVALID;
  wire [31:0]axi_peripheral_interconnect_M00_AXI_ARADDR;
  wire [2:0]axi_peripheral_interconnect_M00_AXI_ARPROT;
  wire axi_peripheral_interconnect_M00_AXI_ARREADY;
  wire [0:0]axi_peripheral_interconnect_M00_AXI_ARVALID;
  wire [31:0]axi_peripheral_interconnect_M00_AXI_AWADDR;
  wire [2:0]axi_peripheral_interconnect_M00_AXI_AWPROT;
  wire axi_peripheral_interconnect_M00_AXI_AWREADY;
  wire [0:0]axi_peripheral_interconnect_M00_AXI_AWVALID;
  wire [0:0]axi_peripheral_interconnect_M00_AXI_BREADY;
  wire [1:0]axi_peripheral_interconnect_M00_AXI_BRESP;
  wire axi_peripheral_interconnect_M00_AXI_BVALID;
  wire [31:0]axi_peripheral_interconnect_M00_AXI_RDATA;
  wire [0:0]axi_peripheral_interconnect_M00_AXI_RREADY;
  wire [1:0]axi_peripheral_interconnect_M00_AXI_RRESP;
  wire axi_peripheral_interconnect_M00_AXI_RVALID;
  wire [31:0]axi_peripheral_interconnect_M00_AXI_WDATA;
  wire axi_peripheral_interconnect_M00_AXI_WREADY;
  wire [3:0]axi_peripheral_interconnect_M00_AXI_WSTRB;
  wire [0:0]axi_peripheral_interconnect_M00_AXI_WVALID;
  wire [31:0]axi_peripheral_interconnect_M01_AXI_ARADDR;
  wire [2:0]axi_peripheral_interconnect_M01_AXI_ARPROT;
  wire axi_peripheral_interconnect_M01_AXI_ARREADY;
  wire [0:0]axi_peripheral_interconnect_M01_AXI_ARVALID;
  wire [31:0]axi_peripheral_interconnect_M01_AXI_AWADDR;
  wire [2:0]axi_peripheral_interconnect_M01_AXI_AWPROT;
  wire axi_peripheral_interconnect_M01_AXI_AWREADY;
  wire [0:0]axi_peripheral_interconnect_M01_AXI_AWVALID;
  wire [0:0]axi_peripheral_interconnect_M01_AXI_BREADY;
  wire [1:0]axi_peripheral_interconnect_M01_AXI_BRESP;
  wire axi_peripheral_interconnect_M01_AXI_BVALID;
  wire [31:0]axi_peripheral_interconnect_M01_AXI_RDATA;
  wire [0:0]axi_peripheral_interconnect_M01_AXI_RREADY;
  wire [1:0]axi_peripheral_interconnect_M01_AXI_RRESP;
  wire axi_peripheral_interconnect_M01_AXI_RVALID;
  wire [31:0]axi_peripheral_interconnect_M01_AXI_WDATA;
  wire axi_peripheral_interconnect_M01_AXI_WREADY;
  wire [3:0]axi_peripheral_interconnect_M01_AXI_WSTRB;
  wire [0:0]axi_peripheral_interconnect_M01_AXI_WVALID;
  wire [31:0]axi_peripheral_interconnect_M02_AXI_ARADDR;
  wire [2:0]axi_peripheral_interconnect_M02_AXI_ARPROT;
  wire axi_peripheral_interconnect_M02_AXI_ARREADY;
  wire [0:0]axi_peripheral_interconnect_M02_AXI_ARVALID;
  wire [31:0]axi_peripheral_interconnect_M02_AXI_AWADDR;
  wire [2:0]axi_peripheral_interconnect_M02_AXI_AWPROT;
  wire axi_peripheral_interconnect_M02_AXI_AWREADY;
  wire [0:0]axi_peripheral_interconnect_M02_AXI_AWVALID;
  wire [0:0]axi_peripheral_interconnect_M02_AXI_BREADY;
  wire [1:0]axi_peripheral_interconnect_M02_AXI_BRESP;
  wire axi_peripheral_interconnect_M02_AXI_BVALID;
  wire [31:0]axi_peripheral_interconnect_M02_AXI_RDATA;
  wire [0:0]axi_peripheral_interconnect_M02_AXI_RREADY;
  wire [1:0]axi_peripheral_interconnect_M02_AXI_RRESP;
  wire axi_peripheral_interconnect_M02_AXI_RVALID;
  wire [31:0]axi_peripheral_interconnect_M02_AXI_WDATA;
  wire axi_peripheral_interconnect_M02_AXI_WREADY;
  wire [3:0]axi_peripheral_interconnect_M02_AXI_WSTRB;
  wire [0:0]axi_peripheral_interconnect_M02_AXI_WVALID;
  wire [31:0]axi_peripheral_interconnect_M07_AXI_ARADDR;
  wire [2:0]axi_peripheral_interconnect_M07_AXI_ARPROT;
  wire axi_peripheral_interconnect_M07_AXI_ARREADY;
  wire axi_peripheral_interconnect_M07_AXI_ARVALID;
  wire [31:0]axi_peripheral_interconnect_M07_AXI_AWADDR;
  wire [2:0]axi_peripheral_interconnect_M07_AXI_AWPROT;
  wire axi_peripheral_interconnect_M07_AXI_AWREADY;
  wire axi_peripheral_interconnect_M07_AXI_AWVALID;
  wire axi_peripheral_interconnect_M07_AXI_BREADY;
  wire [1:0]axi_peripheral_interconnect_M07_AXI_BRESP;
  wire axi_peripheral_interconnect_M07_AXI_BVALID;
  wire [31:0]axi_peripheral_interconnect_M07_AXI_RDATA;
  wire axi_peripheral_interconnect_M07_AXI_RREADY;
  wire [1:0]axi_peripheral_interconnect_M07_AXI_RRESP;
  wire axi_peripheral_interconnect_M07_AXI_RVALID;
  wire [31:0]axi_peripheral_interconnect_M07_AXI_WDATA;
  wire axi_peripheral_interconnect_M07_AXI_WREADY;
  wire [3:0]axi_peripheral_interconnect_M07_AXI_WSTRB;
  wire axi_peripheral_interconnect_M07_AXI_WVALID;
  wire [31:0]axi_peripheral_interconnect_M08_AXI_ARADDR;
  wire [2:0]axi_peripheral_interconnect_M08_AXI_ARPROT;
  wire axi_peripheral_interconnect_M08_AXI_ARREADY;
  wire [0:0]axi_peripheral_interconnect_M08_AXI_ARVALID;
  wire [31:0]axi_peripheral_interconnect_M08_AXI_AWADDR;
  wire [2:0]axi_peripheral_interconnect_M08_AXI_AWPROT;
  wire axi_peripheral_interconnect_M08_AXI_AWREADY;
  wire [0:0]axi_peripheral_interconnect_M08_AXI_AWVALID;
  wire [0:0]axi_peripheral_interconnect_M08_AXI_BREADY;
  wire [1:0]axi_peripheral_interconnect_M08_AXI_BRESP;
  wire axi_peripheral_interconnect_M08_AXI_BVALID;
  wire [31:0]axi_peripheral_interconnect_M08_AXI_RDATA;
  wire [0:0]axi_peripheral_interconnect_M08_AXI_RREADY;
  wire [1:0]axi_peripheral_interconnect_M08_AXI_RRESP;
  wire axi_peripheral_interconnect_M08_AXI_RVALID;
  wire [31:0]axi_peripheral_interconnect_M08_AXI_WDATA;
  wire axi_peripheral_interconnect_M08_AXI_WREADY;
  wire [3:0]axi_peripheral_interconnect_M08_AXI_WSTRB;
  wire [0:0]axi_peripheral_interconnect_M08_AXI_WVALID;
  wire [31:0]axi_peripheral_interconnect_M09_AXI_ARADDR;
  wire [2:0]axi_peripheral_interconnect_M09_AXI_ARPROT;
  wire axi_peripheral_interconnect_M09_AXI_ARREADY;
  wire [0:0]axi_peripheral_interconnect_M09_AXI_ARVALID;
  wire [31:0]axi_peripheral_interconnect_M09_AXI_AWADDR;
  wire [2:0]axi_peripheral_interconnect_M09_AXI_AWPROT;
  wire axi_peripheral_interconnect_M09_AXI_AWREADY;
  wire [0:0]axi_peripheral_interconnect_M09_AXI_AWVALID;
  wire [0:0]axi_peripheral_interconnect_M09_AXI_BREADY;
  wire [1:0]axi_peripheral_interconnect_M09_AXI_BRESP;
  wire axi_peripheral_interconnect_M09_AXI_BVALID;
  wire [31:0]axi_peripheral_interconnect_M09_AXI_RDATA;
  wire [0:0]axi_peripheral_interconnect_M09_AXI_RREADY;
  wire [1:0]axi_peripheral_interconnect_M09_AXI_RRESP;
  wire axi_peripheral_interconnect_M09_AXI_RVALID;
  wire [31:0]axi_peripheral_interconnect_M09_AXI_WDATA;
  wire axi_peripheral_interconnect_M09_AXI_WREADY;
  wire [3:0]axi_peripheral_interconnect_M09_AXI_WSTRB;
  wire [0:0]axi_peripheral_interconnect_M09_AXI_WVALID;
  wire [31:0]axi_peripheral_interconnect_M10_AXI_ARADDR;
  wire axi_peripheral_interconnect_M10_AXI_ARREADY;
  wire [0:0]axi_peripheral_interconnect_M10_AXI_ARVALID;
  wire [31:0]axi_peripheral_interconnect_M10_AXI_AWADDR;
  wire axi_peripheral_interconnect_M10_AXI_AWREADY;
  wire [0:0]axi_peripheral_interconnect_M10_AXI_AWVALID;
  wire [0:0]axi_peripheral_interconnect_M10_AXI_BREADY;
  wire [1:0]axi_peripheral_interconnect_M10_AXI_BRESP;
  wire axi_peripheral_interconnect_M10_AXI_BVALID;
  wire [31:0]axi_peripheral_interconnect_M10_AXI_RDATA;
  wire [0:0]axi_peripheral_interconnect_M10_AXI_RREADY;
  wire [1:0]axi_peripheral_interconnect_M10_AXI_RRESP;
  wire axi_peripheral_interconnect_M10_AXI_RVALID;
  wire [31:0]axi_peripheral_interconnect_M10_AXI_WDATA;
  wire axi_peripheral_interconnect_M10_AXI_WREADY;
  wire [3:0]axi_peripheral_interconnect_M10_AXI_WSTRB;
  wire [0:0]axi_peripheral_interconnect_M10_AXI_WVALID;
  wire [31:0]axi_peripheral_interconnect_M11_AXI_ARADDR;
  wire axi_peripheral_interconnect_M11_AXI_ARREADY;
  wire axi_peripheral_interconnect_M11_AXI_ARVALID;
  wire [31:0]axi_peripheral_interconnect_M11_AXI_AWADDR;
  wire axi_peripheral_interconnect_M11_AXI_AWREADY;
  wire axi_peripheral_interconnect_M11_AXI_AWVALID;
  wire axi_peripheral_interconnect_M11_AXI_BREADY;
  wire [1:0]axi_peripheral_interconnect_M11_AXI_BRESP;
  wire axi_peripheral_interconnect_M11_AXI_BVALID;
  wire [31:0]axi_peripheral_interconnect_M11_AXI_RDATA;
  wire axi_peripheral_interconnect_M11_AXI_RREADY;
  wire [1:0]axi_peripheral_interconnect_M11_AXI_RRESP;
  wire axi_peripheral_interconnect_M11_AXI_RVALID;
  wire [31:0]axi_peripheral_interconnect_M11_AXI_WDATA;
  wire axi_peripheral_interconnect_M11_AXI_WREADY;
  wire [3:0]axi_peripheral_interconnect_M11_AXI_WSTRB;
  wire axi_peripheral_interconnect_M11_AXI_WVALID;
  wire [31:0]axi_peripheral_interconnect_M12_AXI_ARADDR;
  wire axi_peripheral_interconnect_M12_AXI_ARREADY;
  wire axi_peripheral_interconnect_M12_AXI_ARVALID;
  wire [31:0]axi_peripheral_interconnect_M12_AXI_AWADDR;
  wire axi_peripheral_interconnect_M12_AXI_AWREADY;
  wire axi_peripheral_interconnect_M12_AXI_AWVALID;
  wire axi_peripheral_interconnect_M12_AXI_BREADY;
  wire [1:0]axi_peripheral_interconnect_M12_AXI_BRESP;
  wire axi_peripheral_interconnect_M12_AXI_BVALID;
  wire [31:0]axi_peripheral_interconnect_M12_AXI_RDATA;
  wire axi_peripheral_interconnect_M12_AXI_RREADY;
  wire [1:0]axi_peripheral_interconnect_M12_AXI_RRESP;
  wire axi_peripheral_interconnect_M12_AXI_RVALID;
  wire [31:0]axi_peripheral_interconnect_M12_AXI_WDATA;
  wire axi_peripheral_interconnect_M12_AXI_WREADY;
  wire [3:0]axi_peripheral_interconnect_M12_AXI_WSTRB;
  wire axi_peripheral_interconnect_M12_AXI_WVALID;
  wire [31:0]axi_peripheral_interconnect_M13_AXI_ARADDR;
  wire axi_peripheral_interconnect_M13_AXI_ARREADY;
  wire axi_peripheral_interconnect_M13_AXI_ARVALID;
  wire [31:0]axi_peripheral_interconnect_M13_AXI_AWADDR;
  wire axi_peripheral_interconnect_M13_AXI_AWREADY;
  wire axi_peripheral_interconnect_M13_AXI_AWVALID;
  wire axi_peripheral_interconnect_M13_AXI_BREADY;
  wire [1:0]axi_peripheral_interconnect_M13_AXI_BRESP;
  wire axi_peripheral_interconnect_M13_AXI_BVALID;
  wire [31:0]axi_peripheral_interconnect_M13_AXI_RDATA;
  wire axi_peripheral_interconnect_M13_AXI_RREADY;
  wire [1:0]axi_peripheral_interconnect_M13_AXI_RRESP;
  wire axi_peripheral_interconnect_M13_AXI_RVALID;
  wire [31:0]axi_peripheral_interconnect_M13_AXI_WDATA;
  wire axi_peripheral_interconnect_M13_AXI_WREADY;
  wire [3:0]axi_peripheral_interconnect_M13_AXI_WSTRB;
  wire axi_peripheral_interconnect_M13_AXI_WVALID;
  wire [31:0]axi_peripheral_interconnect_M14_AXI_ARADDR;
  wire axi_peripheral_interconnect_M14_AXI_ARREADY;
  wire axi_peripheral_interconnect_M14_AXI_ARVALID;
  wire [31:0]axi_peripheral_interconnect_M14_AXI_AWADDR;
  wire axi_peripheral_interconnect_M14_AXI_AWREADY;
  wire axi_peripheral_interconnect_M14_AXI_AWVALID;
  wire axi_peripheral_interconnect_M14_AXI_BREADY;
  wire [1:0]axi_peripheral_interconnect_M14_AXI_BRESP;
  wire axi_peripheral_interconnect_M14_AXI_BVALID;
  wire [31:0]axi_peripheral_interconnect_M14_AXI_RDATA;
  wire axi_peripheral_interconnect_M14_AXI_RREADY;
  wire [1:0]axi_peripheral_interconnect_M14_AXI_RRESP;
  wire axi_peripheral_interconnect_M14_AXI_RVALID;
  wire [31:0]axi_peripheral_interconnect_M14_AXI_WDATA;
  wire axi_peripheral_interconnect_M14_AXI_WREADY;
  wire [3:0]axi_peripheral_interconnect_M14_AXI_WSTRB;
  wire axi_peripheral_interconnect_M14_AXI_WVALID;
  wire [31:0]axi_protocol_convert_1_M_AXI_ARADDR;
  wire [2:0]axi_protocol_convert_1_M_AXI_ARPROT;
  wire axi_protocol_convert_1_M_AXI_ARREADY;
  wire axi_protocol_convert_1_M_AXI_ARVALID;
  wire [31:0]axi_protocol_convert_1_M_AXI_AWADDR;
  wire [2:0]axi_protocol_convert_1_M_AXI_AWPROT;
  wire axi_protocol_convert_1_M_AXI_AWREADY;
  wire axi_protocol_convert_1_M_AXI_AWVALID;
  wire axi_protocol_convert_1_M_AXI_BREADY;
  wire [1:0]axi_protocol_convert_1_M_AXI_BRESP;
  wire axi_protocol_convert_1_M_AXI_BVALID;
  wire [31:0]axi_protocol_convert_1_M_AXI_RDATA;
  wire axi_protocol_convert_1_M_AXI_RREADY;
  wire [1:0]axi_protocol_convert_1_M_AXI_RRESP;
  wire axi_protocol_convert_1_M_AXI_RVALID;
  wire [31:0]axi_protocol_convert_1_M_AXI_WDATA;
  wire axi_protocol_convert_1_M_AXI_WREADY;
  wire [3:0]axi_protocol_convert_1_M_AXI_WSTRB;
  wire axi_protocol_convert_1_M_AXI_WVALID;
  wire axi_quad_spi_0_SPI_0_IO0_I;
  wire axi_quad_spi_0_SPI_0_IO0_O;
  wire axi_quad_spi_0_SPI_0_IO0_T;
  wire axi_quad_spi_0_SPI_0_IO1_I;
  wire axi_quad_spi_0_SPI_0_IO1_O;
  wire axi_quad_spi_0_SPI_0_IO1_T;
  wire axi_quad_spi_0_SPI_0_IO2_I;
  wire axi_quad_spi_0_SPI_0_IO2_O;
  wire axi_quad_spi_0_SPI_0_IO2_T;
  wire axi_quad_spi_0_SPI_0_IO3_I;
  wire axi_quad_spi_0_SPI_0_IO3_O;
  wire axi_quad_spi_0_SPI_0_IO3_T;
  wire axi_quad_spi_0_SPI_0_SCK_I;
  wire axi_quad_spi_0_SPI_0_SCK_O;
  wire axi_quad_spi_0_SPI_0_SCK_T;
  wire [0:0]axi_quad_spi_0_SPI_0_SS_I;
  wire [0:0]axi_quad_spi_0_SPI_0_SS_O;
  wire axi_quad_spi_0_SPI_0_SS_T;
  wire axi_quad_spi_0_ip2intc_irpt;
  wire axi_quad_spi_1_SPI_0_IO0_I;
  wire axi_quad_spi_1_SPI_0_IO0_O;
  wire axi_quad_spi_1_SPI_0_IO0_T;
  wire axi_quad_spi_1_SPI_0_IO1_I;
  wire axi_quad_spi_1_SPI_0_IO1_O;
  wire axi_quad_spi_1_SPI_0_IO1_T;
  wire axi_quad_spi_1_SPI_0_SCK_I;
  wire axi_quad_spi_1_SPI_0_SCK_O;
  wire axi_quad_spi_1_SPI_0_SCK_T;
  wire [0:0]axi_quad_spi_1_SPI_0_SS_I;
  wire [0:0]axi_quad_spi_1_SPI_0_SS_O;
  wire axi_quad_spi_1_SPI_0_SS_T;
  wire axi_quad_spi_1_ip2intc_irpt;
  wire axi_quad_spi_2_SPI_0_IO0_I;
  wire axi_quad_spi_2_SPI_0_IO0_O;
  wire axi_quad_spi_2_SPI_0_IO0_T;
  wire axi_quad_spi_2_SPI_0_IO1_I;
  wire axi_quad_spi_2_SPI_0_IO1_O;
  wire axi_quad_spi_2_SPI_0_IO1_T;
  wire axi_quad_spi_2_SPI_0_SCK_I;
  wire axi_quad_spi_2_SPI_0_SCK_O;
  wire axi_quad_spi_2_SPI_0_SCK_T;
  wire [0:0]axi_quad_spi_2_SPI_0_SS_I;
  wire [0:0]axi_quad_spi_2_SPI_0_SS_O;
  wire axi_quad_spi_2_SPI_0_SS_T;
  wire axi_quad_spi_2_ip2intc_irpt;
  wire clk_wiz_0_clk_out1;
  wire clk_wiz_0_delay_ref_clk;
  wire data_clk_i_0_1;
  wire [31:0]gpio_concat_0_dout;
  wire [3:0]gpio_concat_1_dout;
  wire [31:0]gpio_concat_2_dout;
  wire [0:0]gpio_slice_clk_mngr_oen_Dout;
  wire [0:0]gpio_slice_pm_i2c_en_Dout;
  wire [0:0]gpio_slice_synth_ce_Dout;
  wire [0:0]gpio_slice_synth_mute_Dout;
  wire [0:0]gpio_slice_synth_sync_Dout;
  wire [0:0]gpio_slice_trx_en_agc_Dout;
  wire [0:0]gpio_slice_trx_sync_in_Dout;
  wire [0:0]gpio_slice_trx_up_enable_Dout;
  wire [0:0]gpio_slice_trx_up_txnrx_Dout;
  wire [0:0]int_reset_combiner_Res;
  wire [15:0]irq_concat_0_dout;
  wire [31:0]irq_concat_1_dout;
  wire [0:0]logic_and_0_Res;
  wire [0:0]logic_and_2_Res;
  wire [0:0]logic_or_0_Res;
  wire [14:0]mig_7series_0_DDR3_ADDR;
  wire [2:0]mig_7series_0_DDR3_BA;
  wire mig_7series_0_DDR3_CAS_N;
  wire [0:0]mig_7series_0_DDR3_CKE;
  wire [0:0]mig_7series_0_DDR3_CK_N;
  wire [0:0]mig_7series_0_DDR3_CK_P;
  wire [1:0]mig_7series_0_DDR3_DM;
  wire [15:0]mig_7series_0_DDR3_DQ;
  wire [1:0]mig_7series_0_DDR3_DQS_N;
  wire [1:0]mig_7series_0_DDR3_DQS_P;
  wire [0:0]mig_7series_0_DDR3_ODT;
  wire mig_7series_0_DDR3_RAS_N;
  wire mig_7series_0_DDR3_RESET_N;
  wire mig_7series_0_DDR3_WE_N;
  wire mig_7series_0_mmcm_locked;
  wire mig_7series_0_ui_clk;
  wire mig_7series_0_ui_clk_sync_rst;
  wire [0:0]rst_axi_pcie_0_125M_interconnect_aresetn;
  wire [0:0]rst_axi_pcie_0_125M_peripheral_aresetn;
  wire [0:0]rst_mig_7series_0_166M_interconnect_aresetn;
  wire [0:0]rst_mig_7series_0_166M_peripheral_aresetn;
  wire [63:0]util_cpack2_0_packed_fifo_wr_DATA;
  wire util_cpack2_0_packed_fifo_wr_EN;
  wire util_cpack2_0_packed_fifo_wr_OVERFLOW;
  wire util_cpack2_0_packed_fifo_wr_SYNC;
  wire [0:0]util_ds_buf_0_IBUF_OUT;
  wire [15:0]util_upack2_1_fifo_rd_data_0;
  wire [15:0]util_upack2_1_fifo_rd_data_1;
  wire [15:0]util_upack2_1_fifo_rd_data_2;
  wire [15:0]util_upack2_1_fifo_rd_data_3;
  wire [0:0]util_vector_logic_0_Res;
  wire util_vector_logic_2_Res;
  wire xadc_wiz_0_ip2intc_irpt;
  wire [11:0]xadc_wiz_0_temp_out;
  wire [3:0]xlslice_0_Dout;

  assign AUDIO_I2C_scl_o = axi_iic_0_IIC_SCL_O;
  assign AUDIO_I2C_scl_t = axi_iic_0_IIC_SCL_T;
  assign AUDIO_I2C_sda_o = axi_iic_0_IIC_SDA_O;
  assign AUDIO_I2C_sda_t = axi_iic_0_IIC_SDA_T;
  assign CLK_MNGR_OEn[0] = gpio_slice_clk_mngr_oen_Dout;
  assign CM4_WAKE[0] = GND_0_dout;
  assign CODEC_I2S_bclk[0] = axi_i2s_adi_0_i2s_BCLK;
  assign CODEC_I2S_lrclk[0] = axi_i2s_adi_0_i2s_LRCLK;
  assign CODEC_I2S_sdata_out[0] = axi_i2s_adi_0_i2s_SDATA_OUT;
  assign CODEC_RSTn[0] = axi_iic_0_gpo;
  assign DDR3_addr[14:0] = mig_7series_0_DDR3_ADDR;
  assign DDR3_ba[2:0] = mig_7series_0_DDR3_BA;
  assign DDR3_cas_n = mig_7series_0_DDR3_CAS_N;
  assign DDR3_ck_n[0] = mig_7series_0_DDR3_CK_N;
  assign DDR3_ck_p[0] = mig_7series_0_DDR3_CK_P;
  assign DDR3_cke[0] = mig_7series_0_DDR3_CKE;
  assign DDR3_dm[1:0] = mig_7series_0_DDR3_DM;
  assign DDR3_odt[0] = mig_7series_0_DDR3_ODT;
  assign DDR3_ras_n = mig_7series_0_DDR3_RAS_N;
  assign DDR3_reset_n = mig_7series_0_DDR3_RESET_N;
  assign DDR3_we_n = mig_7series_0_DDR3_WE_N;
  assign FLASH_QSPI_io0_o = axi_quad_spi_0_SPI_0_IO0_O;
  assign FLASH_QSPI_io0_t = axi_quad_spi_0_SPI_0_IO0_T;
  assign FLASH_QSPI_io1_o = axi_quad_spi_0_SPI_0_IO1_O;
  assign FLASH_QSPI_io1_t = axi_quad_spi_0_SPI_0_IO1_T;
  assign FLASH_QSPI_io2_o = axi_quad_spi_0_SPI_0_IO2_O;
  assign FLASH_QSPI_io2_t = axi_quad_spi_0_SPI_0_IO2_T;
  assign FLASH_QSPI_io3_o = axi_quad_spi_0_SPI_0_IO3_O;
  assign FLASH_QSPI_io3_t = axi_quad_spi_0_SPI_0_IO3_T;
  assign FLASH_QSPI_sck_o = axi_quad_spi_0_SPI_0_SCK_O;
  assign FLASH_QSPI_sck_t = axi_quad_spi_0_SPI_0_SCK_T;
  assign FLASH_QSPI_ss_o[0] = axi_quad_spi_0_SPI_0_SS_O;
  assign FLASH_QSPI_ss_t = axi_quad_spi_0_SPI_0_SS_T;
  assign FPGA_CLK0_1 = FPGA_CLK0;
  assign PCIe_CLKREQn[0] = GND_0_dout;
  assign PCIe_REFCLK_1_CLK_N = PCIe_REFCLK_clk_n[0];
  assign PCIe_REFCLK_1_CLK_P = PCIe_REFCLK_clk_p[0];
  assign PCIe_txn[1:0] = axi_pcie_0_pcie_7x_mgt_txn;
  assign PCIe_txp[1:0] = axi_pcie_0_pcie_7x_mgt_txp;
  assign PM_I2C_EN[0] = gpio_slice_pm_i2c_en_Dout;
  assign RXCLK_1 = TRX_DATA_CLK;
  assign RXDATA_1 = TRX_P1_RXDATA[11:0];
  assign RXFRAME_1 = TRX_RXFRAME;
  assign SYNTH_CE[0] = gpio_slice_synth_ce_Dout;
  assign SYNTH_LD_1 = SYNTH_LD;
  assign SYNTH_MUTE[0] = gpio_slice_synth_mute_Dout;
  assign SYNTH_RESETn[0] = rst_axi_pcie_0_125M_peripheral_aresetn;
  assign SYNTH_SPI_io0_o = axi_quad_spi_2_SPI_0_IO0_O;
  assign SYNTH_SPI_io0_t = axi_quad_spi_2_SPI_0_IO0_T;
  assign SYNTH_SPI_io1_o = axi_quad_spi_2_SPI_0_IO1_O;
  assign SYNTH_SPI_io1_t = axi_quad_spi_2_SPI_0_IO1_T;
  assign SYNTH_SPI_sck_o = axi_quad_spi_2_SPI_0_SCK_O;
  assign SYNTH_SPI_sck_t = axi_quad_spi_2_SPI_0_SCK_T;
  assign SYNTH_SPI_ss_o[0] = axi_quad_spi_2_SPI_0_SS_O;
  assign SYNTH_SPI_ss_t = axi_quad_spi_2_SPI_0_SS_T;
  assign SYNTH_SYNC[0] = gpio_slice_synth_sync_Dout;
  assign SYS_I2C_scl_o = axi_iic_1_IIC_SCL_O;
  assign SYS_I2C_scl_t = axi_iic_1_IIC_SCL_T;
  assign SYS_I2C_sda_o = axi_iic_1_IIC_SDA_O;
  assign SYS_I2C_sda_t = axi_iic_1_IIC_SDA_T;
  assign TRX_5V0_BIAS_T1_OCn_1 = TRX_5V0_BIAS_T1_OCn;
  assign TRX_5V0_BIAS_T2_OCn_1 = TRX_5V0_BIAS_T2_OCn;
  assign TRX_5V0_PA1_OCn_1 = TRX_5V0_PA1_OCn;
  assign TRX_5V0_PA2_OCn_1 = TRX_5V0_PA2_OCn;
  assign TRX_CTRL_IN[3:0] = xlslice_0_Dout;
  assign TRX_CTRL_OUT_1 = TRX_CTRL_OUT[7:0];
  assign TRX_EN = axi_ad9361_0_enable;
  assign TRX_EN_AGC[0] = gpio_slice_trx_en_agc_Dout;
  assign TRX_FBCLK = axi_ad9361_0_tx_clk_out;
  assign TRX_P0_TXDATA[11:0] = axi_ad9361_0_tx_data_out;
  assign TRX_RESETn[0] = rst_axi_pcie_0_125M_peripheral_aresetn;
  assign TRX_SPI_io0_o = axi_quad_spi_1_SPI_0_IO0_O;
  assign TRX_SPI_io0_t = axi_quad_spi_1_SPI_0_IO0_T;
  assign TRX_SPI_io1_o = axi_quad_spi_1_SPI_0_IO1_O;
  assign TRX_SPI_io1_t = axi_quad_spi_1_SPI_0_IO1_T;
  assign TRX_SPI_sck_o = axi_quad_spi_1_SPI_0_SCK_O;
  assign TRX_SPI_sck_t = axi_quad_spi_1_SPI_0_SCK_T;
  assign TRX_SPI_ss_o[0] = axi_quad_spi_1_SPI_0_SS_O;
  assign TRX_SPI_ss_t = axi_quad_spi_1_SPI_0_SS_T;
  assign TRX_SYNC_IN[0] = gpio_slice_trx_sync_in_Dout;
  assign TRX_TXFRAME = axi_ad9361_0_tx_frame_out;
  assign TRX_TXNRX = axi_ad9361_0_txnrx;
  assign Vp_Vn_0_1_V_N = ADCIN_MAIN_v_n;
  assign Vp_Vn_0_1_V_P = ADCIN_MAIN_v_p;
  assign axi_i2s_adi_0_i2s_SDATA_IN = CODEC_I2S_sdata_in[0];
  assign axi_iic_0_IIC_SCL_I = AUDIO_I2C_scl_i;
  assign axi_iic_0_IIC_SDA_I = AUDIO_I2C_sda_i;
  assign axi_iic_1_IIC_SCL_I = SYS_I2C_scl_i;
  assign axi_iic_1_IIC_SDA_I = SYS_I2C_sda_i;
  assign axi_pcie_0_pcie_7x_mgt_rxn = PCIe_rxn[1:0];
  assign axi_pcie_0_pcie_7x_mgt_rxp = PCIe_rxp[1:0];
  assign axi_quad_spi_0_SPI_0_IO0_I = FLASH_QSPI_io0_i;
  assign axi_quad_spi_0_SPI_0_IO1_I = FLASH_QSPI_io1_i;
  assign axi_quad_spi_0_SPI_0_IO2_I = FLASH_QSPI_io2_i;
  assign axi_quad_spi_0_SPI_0_IO3_I = FLASH_QSPI_io3_i;
  assign axi_quad_spi_0_SPI_0_SCK_I = FLASH_QSPI_sck_i;
  assign axi_quad_spi_0_SPI_0_SS_I = FLASH_QSPI_ss_i[0];
  assign axi_quad_spi_1_SPI_0_IO0_I = TRX_SPI_io0_i;
  assign axi_quad_spi_1_SPI_0_IO1_I = TRX_SPI_io1_i;
  assign axi_quad_spi_1_SPI_0_SCK_I = TRX_SPI_sck_i;
  assign axi_quad_spi_1_SPI_0_SS_I = TRX_SPI_ss_i[0];
  assign axi_quad_spi_2_SPI_0_IO0_I = SYNTH_SPI_io0_i;
  assign axi_quad_spi_2_SPI_0_IO1_I = SYNTH_SPI_io1_i;
  assign axi_quad_spi_2_SPI_0_SCK_I = SYNTH_SPI_sck_i;
  assign axi_quad_spi_2_SPI_0_SS_I = SYNTH_SPI_ss_i[0];
  assign data_clk_i_0_1 = FPGA_CLK1;
  assign util_vector_logic_2_Res = PCIe_RESETn;
  icyradio_GND_0_2 GND_0
       (.dout(GND_0_dout));
  icyradio_GND_0_3 GND_2
       (.dout(GND_2_dout));
  icyradio_GND_2_0 GND_3
       (.dout(GND_3_dout));
  icyradio_GND_3_0 GND_4
       (.dout(GND_4_dout));
  icyradio_GND_3_1 GND_5
       (.dout(GND_5_dout));
  icyradio_GND_5_0 GND_6
       (.dout(GND_6_dout));
  icyradio_xlconstant_0_0 SOFT_RESET
       (.dout(CORTEXM3_AXI_0_SYSRESETREQ));
  icyradio_GND_0_0 VCC_0
       (.dout(VCC_0_dout));
  icyradio_ad9361_adc_packer_2 ad9361_adc_packer
       (.clk(axi_ad9361_0_l_clk),
        .enable_0(axi_ad9361_0_adc_enable_i0),
        .enable_1(axi_ad9361_0_adc_enable_q0),
        .enable_2(axi_ad9361_0_adc_enable_i1),
        .enable_3(axi_ad9361_0_adc_enable_q1),
        .fifo_wr_data_0(axi_ad9361_0_adc_data_i0),
        .fifo_wr_data_1(axi_ad9361_0_adc_data_q0),
        .fifo_wr_data_2(axi_ad9361_0_adc_data_i1),
        .fifo_wr_data_3(axi_ad9361_0_adc_data_q1),
        .fifo_wr_en(logic_and_0_Res),
        .fifo_wr_overflow(ad9361_adc_packer_fifo_wr_overflow),
        .packed_fifo_wr_data(util_cpack2_0_packed_fifo_wr_DATA),
        .packed_fifo_wr_en(util_cpack2_0_packed_fifo_wr_EN),
        .packed_fifo_wr_overflow(util_cpack2_0_packed_fifo_wr_OVERFLOW),
        .packed_fifo_wr_sync(util_cpack2_0_packed_fifo_wr_SYNC),
        .reset(axi_ad9361_0_rst));
  icyradio_ad9361_dac_unpacker_2 ad9361_dac_unpacker
       (.clk(axi_ad9361_0_l_clk),
        .enable_0(axi_ad9361_0_dac_enable_i0),
        .enable_1(axi_ad9361_0_dac_enable_q0),
        .enable_2(axi_ad9361_0_dac_enable_i1),
        .enable_3(axi_ad9361_0_dac_enable_q1),
        .fifo_rd_data_0(util_upack2_1_fifo_rd_data_0),
        .fifo_rd_data_1(util_upack2_1_fifo_rd_data_1),
        .fifo_rd_data_2(util_upack2_1_fifo_rd_data_2),
        .fifo_rd_data_3(util_upack2_1_fifo_rd_data_3),
        .fifo_rd_en(util_vector_logic_0_Res),
        .fifo_rd_underflow(ad9361_dac_unpacker_fifo_rd_underflow),
        .reset(axi_ad9361_0_rst),
        .s_axis_data(axi_dmac_rf_tx_m_axis_TDATA),
        .s_axis_ready(axi_dmac_rf_tx_m_axis_TREADY),
        .s_axis_valid(logic_and_2_Res));
  icyradio_axi_ad9361_2 axi_ad9361
       (.adc_data_i0(axi_ad9361_0_adc_data_i0),
        .adc_data_i1(axi_ad9361_0_adc_data_i1),
        .adc_data_q0(axi_ad9361_0_adc_data_q0),
        .adc_data_q1(axi_ad9361_0_adc_data_q1),
        .adc_dovf(ad9361_adc_packer_fifo_wr_overflow),
        .adc_enable_i0(axi_ad9361_0_adc_enable_i0),
        .adc_enable_i1(axi_ad9361_0_adc_enable_i1),
        .adc_enable_q0(axi_ad9361_0_adc_enable_q0),
        .adc_enable_q1(axi_ad9361_0_adc_enable_q1),
        .adc_valid_i0(axi_ad9361_0_adc_valid_i0),
        .adc_valid_i1(axi_ad9361_0_adc_valid_i1),
        .clk(axi_ad9361_0_l_clk),
        .dac_data_i0(util_upack2_1_fifo_rd_data_0),
        .dac_data_i1(util_upack2_1_fifo_rd_data_2),
        .dac_data_q0(util_upack2_1_fifo_rd_data_1),
        .dac_data_q1(util_upack2_1_fifo_rd_data_3),
        .dac_dunf(ad9361_dac_unpacker_fifo_rd_underflow),
        .dac_enable_i0(axi_ad9361_0_dac_enable_i0),
        .dac_enable_i1(axi_ad9361_0_dac_enable_i1),
        .dac_enable_q0(axi_ad9361_0_dac_enable_q0),
        .dac_enable_q1(axi_ad9361_0_dac_enable_q1),
        .dac_sync_in(1'b0),
        .dac_valid_i0(axi_ad9361_0_dac_valid_i0),
        .dac_valid_i1(axi_ad9361_0_dac_valid_i1),
        .delay_clk(clk_wiz_0_delay_ref_clk),
        .enable(axi_ad9361_0_enable),
        .gps_pps(1'b0),
        .gps_pps_irq(axi_ad9361_0_gps_pps_irq),
        .l_clk(axi_ad9361_0_l_clk),
        .rst(axi_ad9361_0_rst),
        .rx_clk_in(RXCLK_1),
        .rx_data_in(RXDATA_1),
        .rx_frame_in(RXFRAME_1),
        .s_axi_aclk(axi_pcie_0_axi_aclk_out),
        .s_axi_araddr(axi_peripheral_interconnect_M00_AXI_ARADDR[15:0]),
        .s_axi_aresetn(rst_axi_pcie_0_125M_peripheral_aresetn),
        .s_axi_arprot(axi_peripheral_interconnect_M00_AXI_ARPROT),
        .s_axi_arready(axi_peripheral_interconnect_M00_AXI_ARREADY),
        .s_axi_arvalid(axi_peripheral_interconnect_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_peripheral_interconnect_M00_AXI_AWADDR[15:0]),
        .s_axi_awprot(axi_peripheral_interconnect_M00_AXI_AWPROT),
        .s_axi_awready(axi_peripheral_interconnect_M00_AXI_AWREADY),
        .s_axi_awvalid(axi_peripheral_interconnect_M00_AXI_AWVALID),
        .s_axi_bready(axi_peripheral_interconnect_M00_AXI_BREADY),
        .s_axi_bresp(axi_peripheral_interconnect_M00_AXI_BRESP),
        .s_axi_bvalid(axi_peripheral_interconnect_M00_AXI_BVALID),
        .s_axi_rdata(axi_peripheral_interconnect_M00_AXI_RDATA),
        .s_axi_rready(axi_peripheral_interconnect_M00_AXI_RREADY),
        .s_axi_rresp(axi_peripheral_interconnect_M00_AXI_RRESP),
        .s_axi_rvalid(axi_peripheral_interconnect_M00_AXI_RVALID),
        .s_axi_wdata(axi_peripheral_interconnect_M00_AXI_WDATA),
        .s_axi_wready(axi_peripheral_interconnect_M00_AXI_WREADY),
        .s_axi_wstrb(axi_peripheral_interconnect_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_peripheral_interconnect_M00_AXI_WVALID),
        .tdd_sync(1'b0),
        .tx_clk_out(axi_ad9361_0_tx_clk_out),
        .tx_data_out(axi_ad9361_0_tx_data_out),
        .tx_frame_out(axi_ad9361_0_tx_frame_out),
        .txnrx(axi_ad9361_0_txnrx),
        .up_adc_gpio_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .up_dac_gpio_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .up_enable(gpio_slice_trx_up_enable_Dout),
        .up_txnrx(gpio_slice_trx_up_txnrx_Dout));
  icyradio_axi_bram_ctrl_0_0 axi_bram_ctrl_0
       (.bram_addr_a(axi_bram_ctrl_0_BRAM_PORTA_ADDR),
        .bram_clk_a(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .bram_en_a(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .bram_rddata_a(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .bram_rst_a(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .bram_we_a(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .bram_wrdata_a(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .s_axi_aclk(axi_pcie_0_axi_aclk_out),
        .s_axi_araddr(axi_pcie_interconnect_M03_AXI_ARADDR[12:0]),
        .s_axi_arburst(axi_pcie_interconnect_M03_AXI_ARBURST),
        .s_axi_arcache(axi_pcie_interconnect_M03_AXI_ARCACHE),
        .s_axi_aresetn(rst_axi_pcie_0_125M_peripheral_aresetn),
        .s_axi_arid(axi_pcie_interconnect_M03_AXI_ARID),
        .s_axi_arlen(axi_pcie_interconnect_M03_AXI_ARLEN),
        .s_axi_arlock(axi_pcie_interconnect_M03_AXI_ARLOCK),
        .s_axi_arprot(axi_pcie_interconnect_M03_AXI_ARPROT),
        .s_axi_arready(axi_pcie_interconnect_M03_AXI_ARREADY),
        .s_axi_arsize(axi_pcie_interconnect_M03_AXI_ARSIZE),
        .s_axi_arvalid(axi_pcie_interconnect_M03_AXI_ARVALID),
        .s_axi_awaddr(axi_pcie_interconnect_M03_AXI_AWADDR[12:0]),
        .s_axi_awburst(axi_pcie_interconnect_M03_AXI_AWBURST),
        .s_axi_awcache(axi_pcie_interconnect_M03_AXI_AWCACHE),
        .s_axi_awid(axi_pcie_interconnect_M03_AXI_AWID),
        .s_axi_awlen(axi_pcie_interconnect_M03_AXI_AWLEN),
        .s_axi_awlock(axi_pcie_interconnect_M03_AXI_AWLOCK),
        .s_axi_awprot(axi_pcie_interconnect_M03_AXI_AWPROT),
        .s_axi_awready(axi_pcie_interconnect_M03_AXI_AWREADY),
        .s_axi_awsize(axi_pcie_interconnect_M03_AXI_AWSIZE),
        .s_axi_awvalid(axi_pcie_interconnect_M03_AXI_AWVALID),
        .s_axi_bid(axi_pcie_interconnect_M03_AXI_BID),
        .s_axi_bready(axi_pcie_interconnect_M03_AXI_BREADY),
        .s_axi_bresp(axi_pcie_interconnect_M03_AXI_BRESP),
        .s_axi_bvalid(axi_pcie_interconnect_M03_AXI_BVALID),
        .s_axi_rdata(axi_pcie_interconnect_M03_AXI_RDATA),
        .s_axi_rid(axi_pcie_interconnect_M03_AXI_RID),
        .s_axi_rlast(axi_pcie_interconnect_M03_AXI_RLAST),
        .s_axi_rready(axi_pcie_interconnect_M03_AXI_RREADY),
        .s_axi_rresp(axi_pcie_interconnect_M03_AXI_RRESP),
        .s_axi_rvalid(axi_pcie_interconnect_M03_AXI_RVALID),
        .s_axi_wdata(axi_pcie_interconnect_M03_AXI_WDATA),
        .s_axi_wlast(axi_pcie_interconnect_M03_AXI_WLAST),
        .s_axi_wready(axi_pcie_interconnect_M03_AXI_WREADY),
        .s_axi_wstrb(axi_pcie_interconnect_M03_AXI_WSTRB),
        .s_axi_wvalid(axi_pcie_interconnect_M03_AXI_WVALID));
  icyradio_axi_bram_ctrl_0_bram_0 axi_bram_ctrl_0_bram
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_0_BRAM_PORTA_ADDR}),
        .clka(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .dina(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .douta(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .ena(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .rsta(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .wea(axi_bram_ctrl_0_BRAM_PORTA_WE));
  icyradio_axi_cpu_dma_interconnect_2 axi_cpu_dma_interconnect
       (.ACLK(axi_pcie_0_axi_aclk_out),
        .ARESETN(rst_axi_pcie_0_125M_interconnect_aresetn),
        .M00_ACLK(axi_pcie_0_axi_aclk_out),
        .M00_ARESETN(rst_axi_pcie_0_125M_interconnect_aresetn),
        .M00_AXI_araddr(axi_pcie_interconnect_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_pcie_interconnect_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_pcie_interconnect_M00_AXI_ARCACHE),
        .M00_AXI_arid(axi_pcie_interconnect_M00_AXI_ARID),
        .M00_AXI_arlen(axi_pcie_interconnect_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_pcie_interconnect_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_pcie_interconnect_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_pcie_interconnect_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_pcie_interconnect_M00_AXI_ARREADY),
        .M00_AXI_arregion(axi_pcie_interconnect_M00_AXI_ARREGION),
        .M00_AXI_arsize(axi_pcie_interconnect_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_pcie_interconnect_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_pcie_interconnect_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_pcie_interconnect_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_pcie_interconnect_M00_AXI_AWCACHE),
        .M00_AXI_awid(axi_pcie_interconnect_M00_AXI_AWID),
        .M00_AXI_awlen(axi_pcie_interconnect_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_pcie_interconnect_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_pcie_interconnect_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_pcie_interconnect_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_pcie_interconnect_M00_AXI_AWREADY),
        .M00_AXI_awregion(axi_pcie_interconnect_M00_AXI_AWREGION),
        .M00_AXI_awsize(axi_pcie_interconnect_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_pcie_interconnect_M00_AXI_AWVALID),
        .M00_AXI_bid(axi_pcie_interconnect_M00_AXI_BID),
        .M00_AXI_bready(axi_pcie_interconnect_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_pcie_interconnect_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_pcie_interconnect_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_pcie_interconnect_M00_AXI_RDATA),
        .M00_AXI_rid(axi_pcie_interconnect_M00_AXI_RID),
        .M00_AXI_rlast(axi_pcie_interconnect_M00_AXI_RLAST),
        .M00_AXI_rready(axi_pcie_interconnect_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_pcie_interconnect_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_pcie_interconnect_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_pcie_interconnect_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_pcie_interconnect_M00_AXI_WLAST),
        .M00_AXI_wready(axi_pcie_interconnect_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_pcie_interconnect_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_pcie_interconnect_M00_AXI_WVALID),
        .M01_ACLK(axi_pcie_0_axi_aclk_out),
        .M01_ARESETN(rst_axi_pcie_0_125M_interconnect_aresetn),
        .M01_AXI_araddr(axi_interconnect_0_M01_AXI_ARADDR),
        .M01_AXI_arburst(axi_interconnect_0_M01_AXI_ARBURST),
        .M01_AXI_arid(axi_interconnect_0_M01_AXI_ARID),
        .M01_AXI_arlen(axi_interconnect_0_M01_AXI_ARLEN),
        .M01_AXI_arready(axi_interconnect_0_M01_AXI_ARREADY),
        .M01_AXI_arregion(axi_interconnect_0_M01_AXI_ARREGION),
        .M01_AXI_arsize(axi_interconnect_0_M01_AXI_ARSIZE),
        .M01_AXI_arvalid(axi_interconnect_0_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_interconnect_0_M01_AXI_AWADDR),
        .M01_AXI_awburst(axi_interconnect_0_M01_AXI_AWBURST),
        .M01_AXI_awid(axi_interconnect_0_M01_AXI_AWID),
        .M01_AXI_awlen(axi_interconnect_0_M01_AXI_AWLEN),
        .M01_AXI_awready(axi_interconnect_0_M01_AXI_AWREADY),
        .M01_AXI_awregion(axi_interconnect_0_M01_AXI_AWREGION),
        .M01_AXI_awsize(axi_interconnect_0_M01_AXI_AWSIZE),
        .M01_AXI_awvalid(axi_interconnect_0_M01_AXI_AWVALID),
        .M01_AXI_bid(axi_interconnect_0_M01_AXI_BID),
        .M01_AXI_bready(axi_interconnect_0_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_interconnect_0_M01_AXI_BRESP),
        .M01_AXI_bvalid(axi_interconnect_0_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_interconnect_0_M01_AXI_RDATA),
        .M01_AXI_rid(axi_interconnect_0_M01_AXI_RID),
        .M01_AXI_rlast(axi_interconnect_0_M01_AXI_RLAST),
        .M01_AXI_rready(axi_interconnect_0_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_interconnect_0_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_interconnect_0_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_interconnect_0_M01_AXI_WDATA),
        .M01_AXI_wlast(axi_interconnect_0_M01_AXI_WLAST),
        .M01_AXI_wready(axi_interconnect_0_M01_AXI_WREADY),
        .M01_AXI_wstrb(axi_interconnect_0_M01_AXI_WSTRB),
        .M01_AXI_wvalid(axi_interconnect_0_M01_AXI_WVALID),
        .S00_ACLK(axi_pcie_0_axi_aclk_out),
        .S00_ARESETN(rst_axi_pcie_0_125M_interconnect_aresetn),
        .S00_AXI_araddr(S00_AXI_1_ARADDR),
        .S00_AXI_arburst(S00_AXI_1_ARBURST),
        .S00_AXI_arcache(S00_AXI_1_ARCACHE),
        .S00_AXI_arlen(S00_AXI_1_ARLEN),
        .S00_AXI_arprot(S00_AXI_1_ARPROT),
        .S00_AXI_arready(S00_AXI_1_ARREADY),
        .S00_AXI_arsize(S00_AXI_1_ARSIZE),
        .S00_AXI_arvalid(S00_AXI_1_ARVALID),
        .S00_AXI_rdata(S00_AXI_1_RDATA),
        .S00_AXI_rlast(S00_AXI_1_RLAST),
        .S00_AXI_rready(S00_AXI_1_RREADY),
        .S00_AXI_rresp(S00_AXI_1_RRESP),
        .S00_AXI_rvalid(S00_AXI_1_RVALID),
        .S01_ACLK(axi_pcie_0_axi_aclk_out),
        .S01_ARESETN(rst_axi_pcie_0_125M_interconnect_aresetn),
        .S01_AXI_awaddr(S01_AXI_1_AWADDR),
        .S01_AXI_awburst(S01_AXI_1_AWBURST),
        .S01_AXI_awcache(S01_AXI_1_AWCACHE),
        .S01_AXI_awlen(S01_AXI_1_AWLEN),
        .S01_AXI_awprot(S01_AXI_1_AWPROT),
        .S01_AXI_awready(S01_AXI_1_AWREADY),
        .S01_AXI_awsize(S01_AXI_1_AWSIZE),
        .S01_AXI_awvalid(S01_AXI_1_AWVALID),
        .S01_AXI_bready(S01_AXI_1_BREADY),
        .S01_AXI_bresp(S01_AXI_1_BRESP),
        .S01_AXI_bvalid(S01_AXI_1_BVALID),
        .S01_AXI_wdata(S01_AXI_1_WDATA),
        .S01_AXI_wlast(S01_AXI_1_WLAST),
        .S01_AXI_wready(S01_AXI_1_WREADY),
        .S01_AXI_wstrb(S01_AXI_1_WSTRB),
        .S01_AXI_wvalid(S01_AXI_1_WVALID),
        .S02_ACLK(axi_pcie_0_axi_aclk_out),
        .S02_ARESETN(rst_axi_pcie_0_125M_interconnect_aresetn),
        .S02_AXI_araddr(axi_dmac_i2s_tx_m_src_axi_ARADDR),
        .S02_AXI_arburst(axi_dmac_i2s_tx_m_src_axi_ARBURST),
        .S02_AXI_arcache(axi_dmac_i2s_tx_m_src_axi_ARCACHE),
        .S02_AXI_arlen(axi_dmac_i2s_tx_m_src_axi_ARLEN),
        .S02_AXI_arprot(axi_dmac_i2s_tx_m_src_axi_ARPROT),
        .S02_AXI_arready(axi_dmac_i2s_tx_m_src_axi_ARREADY),
        .S02_AXI_arsize(axi_dmac_i2s_tx_m_src_axi_ARSIZE),
        .S02_AXI_arvalid(axi_dmac_i2s_tx_m_src_axi_ARVALID),
        .S02_AXI_rdata(axi_dmac_i2s_tx_m_src_axi_RDATA),
        .S02_AXI_rlast(axi_dmac_i2s_tx_m_src_axi_RLAST),
        .S02_AXI_rready(axi_dmac_i2s_tx_m_src_axi_RREADY),
        .S02_AXI_rresp(axi_dmac_i2s_tx_m_src_axi_RRESP),
        .S02_AXI_rvalid(axi_dmac_i2s_tx_m_src_axi_RVALID),
        .S03_ACLK(axi_pcie_0_axi_aclk_out),
        .S03_ARESETN(rst_axi_pcie_0_125M_interconnect_aresetn),
        .S03_AXI_awaddr(axi_dmac_i2s_rx_m_dest_axi_AWADDR),
        .S03_AXI_awburst(axi_dmac_i2s_rx_m_dest_axi_AWBURST),
        .S03_AXI_awcache(axi_dmac_i2s_rx_m_dest_axi_AWCACHE),
        .S03_AXI_awlen(axi_dmac_i2s_rx_m_dest_axi_AWLEN),
        .S03_AXI_awprot(axi_dmac_i2s_rx_m_dest_axi_AWPROT),
        .S03_AXI_awready(axi_dmac_i2s_rx_m_dest_axi_AWREADY),
        .S03_AXI_awsize(axi_dmac_i2s_rx_m_dest_axi_AWSIZE),
        .S03_AXI_awvalid(axi_dmac_i2s_rx_m_dest_axi_AWVALID),
        .S03_AXI_bready(axi_dmac_i2s_rx_m_dest_axi_BREADY),
        .S03_AXI_bresp(axi_dmac_i2s_rx_m_dest_axi_BRESP),
        .S03_AXI_bvalid(axi_dmac_i2s_rx_m_dest_axi_BVALID),
        .S03_AXI_wdata(axi_dmac_i2s_rx_m_dest_axi_WDATA),
        .S03_AXI_wlast(axi_dmac_i2s_rx_m_dest_axi_WLAST),
        .S03_AXI_wready(axi_dmac_i2s_rx_m_dest_axi_WREADY),
        .S03_AXI_wstrb(axi_dmac_i2s_rx_m_dest_axi_WSTRB),
        .S03_AXI_wvalid(axi_dmac_i2s_rx_m_dest_axi_WVALID),
        .S04_ACLK(axi_pcie_0_axi_aclk_out),
        .S04_ARESETN(rst_axi_pcie_0_125M_interconnect_aresetn),
        .S04_AXI_araddr(S04_AXI_1_ARADDR),
        .S04_AXI_arprot(S04_AXI_1_ARPROT),
        .S04_AXI_arready(S04_AXI_1_ARREADY),
        .S04_AXI_arvalid(S04_AXI_1_ARVALID),
        .S04_AXI_awaddr(S04_AXI_1_AWADDR),
        .S04_AXI_awprot(S04_AXI_1_AWPROT),
        .S04_AXI_awready(S04_AXI_1_AWREADY),
        .S04_AXI_awvalid(S04_AXI_1_AWVALID),
        .S04_AXI_bready(S04_AXI_1_BREADY),
        .S04_AXI_bvalid(S04_AXI_1_BVALID),
        .S04_AXI_rdata(S04_AXI_1_RDATA),
        .S04_AXI_rready(S04_AXI_1_RREADY),
        .S04_AXI_rvalid(S04_AXI_1_RVALID),
        .S04_AXI_wdata(S04_AXI_1_WDATA),
        .S04_AXI_wready(S04_AXI_1_WREADY),
        .S04_AXI_wstrb(S04_AXI_1_WSTRB),
        .S04_AXI_wvalid(S04_AXI_1_WVALID));
  icyradio_axi_dmac_i2s_tx_1 axi_dmac_i2s_rx
       (.irq(axi_dmac_i2s_rx_irq),
        .m_dest_axi_aclk(axi_pcie_0_axi_aclk_out),
        .m_dest_axi_aresetn(rst_axi_pcie_0_125M_peripheral_aresetn),
        .m_dest_axi_awaddr(axi_dmac_i2s_rx_m_dest_axi_AWADDR),
        .m_dest_axi_awburst(axi_dmac_i2s_rx_m_dest_axi_AWBURST),
        .m_dest_axi_awcache(axi_dmac_i2s_rx_m_dest_axi_AWCACHE),
        .m_dest_axi_awlen(axi_dmac_i2s_rx_m_dest_axi_AWLEN),
        .m_dest_axi_awprot(axi_dmac_i2s_rx_m_dest_axi_AWPROT),
        .m_dest_axi_awready(axi_dmac_i2s_rx_m_dest_axi_AWREADY),
        .m_dest_axi_awsize(axi_dmac_i2s_rx_m_dest_axi_AWSIZE),
        .m_dest_axi_awvalid(axi_dmac_i2s_rx_m_dest_axi_AWVALID),
        .m_dest_axi_bready(axi_dmac_i2s_rx_m_dest_axi_BREADY),
        .m_dest_axi_bresp(axi_dmac_i2s_rx_m_dest_axi_BRESP),
        .m_dest_axi_bvalid(axi_dmac_i2s_rx_m_dest_axi_BVALID),
        .m_dest_axi_wdata(axi_dmac_i2s_rx_m_dest_axi_WDATA),
        .m_dest_axi_wlast(axi_dmac_i2s_rx_m_dest_axi_WLAST),
        .m_dest_axi_wready(axi_dmac_i2s_rx_m_dest_axi_WREADY),
        .m_dest_axi_wstrb(axi_dmac_i2s_rx_m_dest_axi_WSTRB),
        .m_dest_axi_wvalid(axi_dmac_i2s_rx_m_dest_axi_WVALID),
        .s_axi_aclk(axi_pcie_0_axi_aclk_out),
        .s_axi_araddr(axi_peripheral_interconnect_M07_AXI_ARADDR[10:0]),
        .s_axi_aresetn(rst_axi_pcie_0_125M_peripheral_aresetn),
        .s_axi_arprot(axi_peripheral_interconnect_M07_AXI_ARPROT),
        .s_axi_arready(axi_peripheral_interconnect_M07_AXI_ARREADY),
        .s_axi_arvalid(axi_peripheral_interconnect_M07_AXI_ARVALID),
        .s_axi_awaddr(axi_peripheral_interconnect_M07_AXI_AWADDR[10:0]),
        .s_axi_awprot(axi_peripheral_interconnect_M07_AXI_AWPROT),
        .s_axi_awready(axi_peripheral_interconnect_M07_AXI_AWREADY),
        .s_axi_awvalid(axi_peripheral_interconnect_M07_AXI_AWVALID),
        .s_axi_bready(axi_peripheral_interconnect_M07_AXI_BREADY),
        .s_axi_bresp(axi_peripheral_interconnect_M07_AXI_BRESP),
        .s_axi_bvalid(axi_peripheral_interconnect_M07_AXI_BVALID),
        .s_axi_rdata(axi_peripheral_interconnect_M07_AXI_RDATA),
        .s_axi_rready(axi_peripheral_interconnect_M07_AXI_RREADY),
        .s_axi_rresp(axi_peripheral_interconnect_M07_AXI_RRESP),
        .s_axi_rvalid(axi_peripheral_interconnect_M07_AXI_RVALID),
        .s_axi_wdata(axi_peripheral_interconnect_M07_AXI_WDATA),
        .s_axi_wready(axi_peripheral_interconnect_M07_AXI_WREADY),
        .s_axi_wstrb(axi_peripheral_interconnect_M07_AXI_WSTRB),
        .s_axi_wvalid(axi_peripheral_interconnect_M07_AXI_WVALID),
        .s_axis_aclk(axi_pcie_0_axi_aclk_out),
        .s_axis_data(axi_i2s_adi_0_m_axis_TDATA),
        .s_axis_dest({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_id({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_keep(axi_i2s_adi_0_m_axis_TKEEP),
        .s_axis_last(axi_i2s_adi_0_m_axis_TLAST),
        .s_axis_ready(axi_i2s_adi_0_m_axis_TREADY),
        .s_axis_strb({1'b1,1'b1,1'b1,1'b1}),
        .s_axis_user(1'b0),
        .s_axis_valid(axi_i2s_adi_0_m_axis_TVALID));
  icyradio_axi_dmac_rf_tx_0 axi_dmac_i2s_tx
       (.irq(axi_dmac_i2s_tx_irq),
        .m_axis_aclk(axi_pcie_0_axi_aclk_out),
        .m_axis_data(axi_dmac_i2s_tx_m_axis_TDATA),
        .m_axis_last(axi_dmac_i2s_tx_m_axis_TLAST),
        .m_axis_ready(axi_dmac_i2s_tx_m_axis_TREADY),
        .m_axis_valid(axi_dmac_i2s_tx_m_axis_TVALID),
        .m_src_axi_aclk(axi_pcie_0_axi_aclk_out),
        .m_src_axi_araddr(axi_dmac_i2s_tx_m_src_axi_ARADDR),
        .m_src_axi_arburst(axi_dmac_i2s_tx_m_src_axi_ARBURST),
        .m_src_axi_arcache(axi_dmac_i2s_tx_m_src_axi_ARCACHE),
        .m_src_axi_aresetn(rst_axi_pcie_0_125M_peripheral_aresetn),
        .m_src_axi_arlen(axi_dmac_i2s_tx_m_src_axi_ARLEN),
        .m_src_axi_arprot(axi_dmac_i2s_tx_m_src_axi_ARPROT),
        .m_src_axi_arready(axi_dmac_i2s_tx_m_src_axi_ARREADY),
        .m_src_axi_arsize(axi_dmac_i2s_tx_m_src_axi_ARSIZE),
        .m_src_axi_arvalid(axi_dmac_i2s_tx_m_src_axi_ARVALID),
        .m_src_axi_rdata(axi_dmac_i2s_tx_m_src_axi_RDATA),
        .m_src_axi_rlast(axi_dmac_i2s_tx_m_src_axi_RLAST),
        .m_src_axi_rready(axi_dmac_i2s_tx_m_src_axi_RREADY),
        .m_src_axi_rresp(axi_dmac_i2s_tx_m_src_axi_RRESP),
        .m_src_axi_rvalid(axi_dmac_i2s_tx_m_src_axi_RVALID),
        .s_axi_aclk(axi_pcie_0_axi_aclk_out),
        .s_axi_araddr(axi_peripheral_interconnect_M08_AXI_ARADDR[10:0]),
        .s_axi_aresetn(rst_axi_pcie_0_125M_peripheral_aresetn),
        .s_axi_arprot(axi_peripheral_interconnect_M08_AXI_ARPROT),
        .s_axi_arready(axi_peripheral_interconnect_M08_AXI_ARREADY),
        .s_axi_arvalid(axi_peripheral_interconnect_M08_AXI_ARVALID),
        .s_axi_awaddr(axi_peripheral_interconnect_M08_AXI_AWADDR[10:0]),
        .s_axi_awprot(axi_peripheral_interconnect_M08_AXI_AWPROT),
        .s_axi_awready(axi_peripheral_interconnect_M08_AXI_AWREADY),
        .s_axi_awvalid(axi_peripheral_interconnect_M08_AXI_AWVALID),
        .s_axi_bready(axi_peripheral_interconnect_M08_AXI_BREADY),
        .s_axi_bresp(axi_peripheral_interconnect_M08_AXI_BRESP),
        .s_axi_bvalid(axi_peripheral_interconnect_M08_AXI_BVALID),
        .s_axi_rdata(axi_peripheral_interconnect_M08_AXI_RDATA),
        .s_axi_rready(axi_peripheral_interconnect_M08_AXI_RREADY),
        .s_axi_rresp(axi_peripheral_interconnect_M08_AXI_RRESP),
        .s_axi_rvalid(axi_peripheral_interconnect_M08_AXI_RVALID),
        .s_axi_wdata(axi_peripheral_interconnect_M08_AXI_WDATA),
        .s_axi_wready(axi_peripheral_interconnect_M08_AXI_WREADY),
        .s_axi_wstrb(axi_peripheral_interconnect_M08_AXI_WSTRB),
        .s_axi_wvalid(axi_peripheral_interconnect_M08_AXI_WVALID));
  icyradio_axi_dmac_rf_rx_2 axi_dmac_rf_rx
       (.fifo_wr_clk(axi_ad9361_0_l_clk),
        .fifo_wr_din(util_cpack2_0_packed_fifo_wr_DATA),
        .fifo_wr_en(util_cpack2_0_packed_fifo_wr_EN),
        .fifo_wr_overflow(util_cpack2_0_packed_fifo_wr_OVERFLOW),
        .fifo_wr_sync(util_cpack2_0_packed_fifo_wr_SYNC),
        .irq(axi_dmac_rf_rx_irq),
        .m_dest_axi_aclk(axi_pcie_0_axi_aclk_out),
        .m_dest_axi_aresetn(rst_axi_pcie_0_125M_peripheral_aresetn),
        .m_dest_axi_awaddr(S01_AXI_1_AWADDR),
        .m_dest_axi_awburst(S01_AXI_1_AWBURST),
        .m_dest_axi_awcache(S01_AXI_1_AWCACHE),
        .m_dest_axi_awlen(S01_AXI_1_AWLEN),
        .m_dest_axi_awprot(S01_AXI_1_AWPROT),
        .m_dest_axi_awready(S01_AXI_1_AWREADY),
        .m_dest_axi_awsize(S01_AXI_1_AWSIZE),
        .m_dest_axi_awvalid(S01_AXI_1_AWVALID),
        .m_dest_axi_bready(S01_AXI_1_BREADY),
        .m_dest_axi_bresp(S01_AXI_1_BRESP),
        .m_dest_axi_bvalid(S01_AXI_1_BVALID),
        .m_dest_axi_wdata(S01_AXI_1_WDATA),
        .m_dest_axi_wlast(S01_AXI_1_WLAST),
        .m_dest_axi_wready(S01_AXI_1_WREADY),
        .m_dest_axi_wstrb(S01_AXI_1_WSTRB),
        .m_dest_axi_wvalid(S01_AXI_1_WVALID),
        .s_axi_aclk(axi_pcie_0_axi_aclk_out),
        .s_axi_araddr(axi_peripheral_interconnect_M01_AXI_ARADDR[10:0]),
        .s_axi_aresetn(rst_axi_pcie_0_125M_peripheral_aresetn),
        .s_axi_arprot(axi_peripheral_interconnect_M01_AXI_ARPROT),
        .s_axi_arready(axi_peripheral_interconnect_M01_AXI_ARREADY),
        .s_axi_arvalid(axi_peripheral_interconnect_M01_AXI_ARVALID),
        .s_axi_awaddr(axi_peripheral_interconnect_M01_AXI_AWADDR[10:0]),
        .s_axi_awprot(axi_peripheral_interconnect_M01_AXI_AWPROT),
        .s_axi_awready(axi_peripheral_interconnect_M01_AXI_AWREADY),
        .s_axi_awvalid(axi_peripheral_interconnect_M01_AXI_AWVALID),
        .s_axi_bready(axi_peripheral_interconnect_M01_AXI_BREADY),
        .s_axi_bresp(axi_peripheral_interconnect_M01_AXI_BRESP),
        .s_axi_bvalid(axi_peripheral_interconnect_M01_AXI_BVALID),
        .s_axi_rdata(axi_peripheral_interconnect_M01_AXI_RDATA),
        .s_axi_rready(axi_peripheral_interconnect_M01_AXI_RREADY),
        .s_axi_rresp(axi_peripheral_interconnect_M01_AXI_RRESP),
        .s_axi_rvalid(axi_peripheral_interconnect_M01_AXI_RVALID),
        .s_axi_wdata(axi_peripheral_interconnect_M01_AXI_WDATA),
        .s_axi_wready(axi_peripheral_interconnect_M01_AXI_WREADY),
        .s_axi_wstrb(axi_peripheral_interconnect_M01_AXI_WSTRB),
        .s_axi_wvalid(axi_peripheral_interconnect_M01_AXI_WVALID));
  icyradio_axi_dmac_rf_tx_2 axi_dmac_rf_tx
       (.irq(axi_dmac_rf_tx_irq),
        .m_axis_aclk(axi_ad9361_0_l_clk),
        .m_axis_data(axi_dmac_rf_tx_m_axis_TDATA),
        .m_axis_ready(axi_dmac_rf_tx_m_axis_TREADY),
        .m_axis_valid(axi_dmac_rf_tx_m_axis_valid),
        .m_src_axi_aclk(axi_pcie_0_axi_aclk_out),
        .m_src_axi_araddr(S00_AXI_1_ARADDR),
        .m_src_axi_arburst(S00_AXI_1_ARBURST),
        .m_src_axi_arcache(S00_AXI_1_ARCACHE),
        .m_src_axi_aresetn(rst_axi_pcie_0_125M_peripheral_aresetn),
        .m_src_axi_arlen(S00_AXI_1_ARLEN),
        .m_src_axi_arprot(S00_AXI_1_ARPROT),
        .m_src_axi_arready(S00_AXI_1_ARREADY),
        .m_src_axi_arsize(S00_AXI_1_ARSIZE),
        .m_src_axi_arvalid(S00_AXI_1_ARVALID),
        .m_src_axi_rdata(S00_AXI_1_RDATA),
        .m_src_axi_rlast(S00_AXI_1_RLAST),
        .m_src_axi_rready(S00_AXI_1_RREADY),
        .m_src_axi_rresp(S00_AXI_1_RRESP),
        .m_src_axi_rvalid(S00_AXI_1_RVALID),
        .s_axi_aclk(axi_pcie_0_axi_aclk_out),
        .s_axi_araddr(axi_peripheral_interconnect_M02_AXI_ARADDR[10:0]),
        .s_axi_aresetn(rst_axi_pcie_0_125M_peripheral_aresetn),
        .s_axi_arprot(axi_peripheral_interconnect_M02_AXI_ARPROT),
        .s_axi_arready(axi_peripheral_interconnect_M02_AXI_ARREADY),
        .s_axi_arvalid(axi_peripheral_interconnect_M02_AXI_ARVALID),
        .s_axi_awaddr(axi_peripheral_interconnect_M02_AXI_AWADDR[10:0]),
        .s_axi_awprot(axi_peripheral_interconnect_M02_AXI_AWPROT),
        .s_axi_awready(axi_peripheral_interconnect_M02_AXI_AWREADY),
        .s_axi_awvalid(axi_peripheral_interconnect_M02_AXI_AWVALID),
        .s_axi_bready(axi_peripheral_interconnect_M02_AXI_BREADY),
        .s_axi_bresp(axi_peripheral_interconnect_M02_AXI_BRESP),
        .s_axi_bvalid(axi_peripheral_interconnect_M02_AXI_BVALID),
        .s_axi_rdata(axi_peripheral_interconnect_M02_AXI_RDATA),
        .s_axi_rready(axi_peripheral_interconnect_M02_AXI_RREADY),
        .s_axi_rresp(axi_peripheral_interconnect_M02_AXI_RRESP),
        .s_axi_rvalid(axi_peripheral_interconnect_M02_AXI_RVALID),
        .s_axi_wdata(axi_peripheral_interconnect_M02_AXI_WDATA),
        .s_axi_wready(axi_peripheral_interconnect_M02_AXI_WREADY),
        .s_axi_wstrb(axi_peripheral_interconnect_M02_AXI_WSTRB),
        .s_axi_wvalid(axi_peripheral_interconnect_M02_AXI_WVALID));
  icyradio_axi_gpio_0_0 axi_gpio_0
       (.gpio_io_i(gpio_concat_0_dout),
        .gpio_io_o(axi_gpio_0_gpio_io_o),
        .ip2intc_irpt(axi_gpio_0_ip2intc_irpt),
        .s_axi_aclk(axi_pcie_0_axi_aclk_out),
        .s_axi_araddr(axi_interconnect_1_M03_AXI_ARADDR[8:0]),
        .s_axi_aresetn(rst_axi_pcie_0_125M_peripheral_aresetn),
        .s_axi_arready(axi_interconnect_1_M03_AXI_ARREADY),
        .s_axi_arvalid(axi_interconnect_1_M03_AXI_ARVALID),
        .s_axi_awaddr(axi_interconnect_1_M03_AXI_AWADDR[8:0]),
        .s_axi_awready(axi_interconnect_1_M03_AXI_AWREADY),
        .s_axi_awvalid(axi_interconnect_1_M03_AXI_AWVALID),
        .s_axi_bready(axi_interconnect_1_M03_AXI_BREADY),
        .s_axi_bresp(axi_interconnect_1_M03_AXI_BRESP),
        .s_axi_bvalid(axi_interconnect_1_M03_AXI_BVALID),
        .s_axi_rdata(axi_interconnect_1_M03_AXI_RDATA),
        .s_axi_rready(axi_interconnect_1_M03_AXI_RREADY),
        .s_axi_rresp(axi_interconnect_1_M03_AXI_RRESP),
        .s_axi_rvalid(axi_interconnect_1_M03_AXI_RVALID),
        .s_axi_wdata(axi_interconnect_1_M03_AXI_WDATA),
        .s_axi_wready(axi_interconnect_1_M03_AXI_WREADY),
        .s_axi_wstrb(axi_interconnect_1_M03_AXI_WSTRB),
        .s_axi_wvalid(axi_interconnect_1_M03_AXI_WVALID));
  icyradio_axi_gpio_0_1 axi_gpio_1
       (.gpio_io_i(gpio_concat_2_dout),
        .gpio_io_o(axi_gpio_1_gpio_io_o),
        .ip2intc_irpt(axi_gpio_1_ip2intc_irpt),
        .s_axi_aclk(axi_pcie_0_axi_aclk_out),
        .s_axi_araddr(axi_peripheral_interconnect_M14_AXI_ARADDR[8:0]),
        .s_axi_aresetn(rst_axi_pcie_0_125M_peripheral_aresetn),
        .s_axi_arready(axi_peripheral_interconnect_M14_AXI_ARREADY),
        .s_axi_arvalid(axi_peripheral_interconnect_M14_AXI_ARVALID),
        .s_axi_awaddr(axi_peripheral_interconnect_M14_AXI_AWADDR[8:0]),
        .s_axi_awready(axi_peripheral_interconnect_M14_AXI_AWREADY),
        .s_axi_awvalid(axi_peripheral_interconnect_M14_AXI_AWVALID),
        .s_axi_bready(axi_peripheral_interconnect_M14_AXI_BREADY),
        .s_axi_bresp(axi_peripheral_interconnect_M14_AXI_BRESP),
        .s_axi_bvalid(axi_peripheral_interconnect_M14_AXI_BVALID),
        .s_axi_rdata(axi_peripheral_interconnect_M14_AXI_RDATA),
        .s_axi_rready(axi_peripheral_interconnect_M14_AXI_RREADY),
        .s_axi_rresp(axi_peripheral_interconnect_M14_AXI_RRESP),
        .s_axi_rvalid(axi_peripheral_interconnect_M14_AXI_RVALID),
        .s_axi_wdata(axi_peripheral_interconnect_M14_AXI_WDATA),
        .s_axi_wready(axi_peripheral_interconnect_M14_AXI_WREADY),
        .s_axi_wstrb(axi_peripheral_interconnect_M14_AXI_WSTRB),
        .s_axi_wvalid(axi_peripheral_interconnect_M14_AXI_WVALID));
  icyradio_axi_i2s_adi_0_1 axi_i2s_adi_0
       (.bclk_o(axi_i2s_adi_0_i2s_BCLK),
        .data_clk_i(data_clk_i_0_1),
        .lrclk_o(axi_i2s_adi_0_i2s_LRCLK),
        .m_axis_aclk(axi_pcie_0_axi_aclk_out),
        .m_axis_tdata(axi_i2s_adi_0_m_axis_TDATA),
        .m_axis_tkeep(axi_i2s_adi_0_m_axis_TKEEP),
        .m_axis_tlast(axi_i2s_adi_0_m_axis_TLAST),
        .m_axis_tready(axi_i2s_adi_0_m_axis_TREADY),
        .m_axis_tvalid(axi_i2s_adi_0_m_axis_TVALID),
        .s_axi_aclk(axi_pcie_0_axi_aclk_out),
        .s_axi_araddr(axi_peripheral_interconnect_M09_AXI_ARADDR),
        .s_axi_aresetn(rst_axi_pcie_0_125M_peripheral_aresetn),
        .s_axi_arprot(axi_peripheral_interconnect_M09_AXI_ARPROT),
        .s_axi_arready(axi_peripheral_interconnect_M09_AXI_ARREADY),
        .s_axi_arvalid(axi_peripheral_interconnect_M09_AXI_ARVALID),
        .s_axi_awaddr(axi_peripheral_interconnect_M09_AXI_AWADDR),
        .s_axi_awprot(axi_peripheral_interconnect_M09_AXI_AWPROT),
        .s_axi_awready(axi_peripheral_interconnect_M09_AXI_AWREADY),
        .s_axi_awvalid(axi_peripheral_interconnect_M09_AXI_AWVALID),
        .s_axi_bready(axi_peripheral_interconnect_M09_AXI_BREADY),
        .s_axi_bresp(axi_peripheral_interconnect_M09_AXI_BRESP),
        .s_axi_bvalid(axi_peripheral_interconnect_M09_AXI_BVALID),
        .s_axi_rdata(axi_peripheral_interconnect_M09_AXI_RDATA),
        .s_axi_rready(axi_peripheral_interconnect_M09_AXI_RREADY),
        .s_axi_rresp(axi_peripheral_interconnect_M09_AXI_RRESP),
        .s_axi_rvalid(axi_peripheral_interconnect_M09_AXI_RVALID),
        .s_axi_wdata(axi_peripheral_interconnect_M09_AXI_WDATA),
        .s_axi_wready(axi_peripheral_interconnect_M09_AXI_WREADY),
        .s_axi_wstrb(axi_peripheral_interconnect_M09_AXI_WSTRB),
        .s_axi_wvalid(axi_peripheral_interconnect_M09_AXI_WVALID),
        .s_axis_aclk(axi_pcie_0_axi_aclk_out),
        .s_axis_aresetn(rst_axi_pcie_0_125M_peripheral_aresetn),
        .s_axis_tdata(axi_dmac_i2s_tx_m_axis_TDATA),
        .s_axis_tlast(axi_dmac_i2s_tx_m_axis_TLAST),
        .s_axis_tready(axi_dmac_i2s_tx_m_axis_TREADY),
        .s_axis_tvalid(axi_dmac_i2s_tx_m_axis_TVALID),
        .sdata_i(axi_i2s_adi_0_i2s_SDATA_IN),
        .sdata_o(axi_i2s_adi_0_i2s_SDATA_OUT));
  icyradio_axi_iic_0_0 axi_iic_0
       (.gpo(axi_iic_0_gpo),
        .iic2intc_irpt(axi_iic_0_iic2intc_irpt),
        .s_axi_aclk(axi_pcie_0_axi_aclk_out),
        .s_axi_araddr(axi_interconnect_1_M04_AXI_ARADDR[8:0]),
        .s_axi_aresetn(rst_axi_pcie_0_125M_peripheral_aresetn),
        .s_axi_arready(axi_interconnect_1_M04_AXI_ARREADY),
        .s_axi_arvalid(axi_interconnect_1_M04_AXI_ARVALID),
        .s_axi_awaddr(axi_interconnect_1_M04_AXI_AWADDR[8:0]),
        .s_axi_awready(axi_interconnect_1_M04_AXI_AWREADY),
        .s_axi_awvalid(axi_interconnect_1_M04_AXI_AWVALID),
        .s_axi_bready(axi_interconnect_1_M04_AXI_BREADY),
        .s_axi_bresp(axi_interconnect_1_M04_AXI_BRESP),
        .s_axi_bvalid(axi_interconnect_1_M04_AXI_BVALID),
        .s_axi_rdata(axi_interconnect_1_M04_AXI_RDATA),
        .s_axi_rready(axi_interconnect_1_M04_AXI_RREADY),
        .s_axi_rresp(axi_interconnect_1_M04_AXI_RRESP),
        .s_axi_rvalid(axi_interconnect_1_M04_AXI_RVALID),
        .s_axi_wdata(axi_interconnect_1_M04_AXI_WDATA),
        .s_axi_wready(axi_interconnect_1_M04_AXI_WREADY),
        .s_axi_wstrb(axi_interconnect_1_M04_AXI_WSTRB),
        .s_axi_wvalid(axi_interconnect_1_M04_AXI_WVALID),
        .scl_i(axi_iic_0_IIC_SCL_I),
        .scl_o(axi_iic_0_IIC_SCL_O),
        .scl_t(axi_iic_0_IIC_SCL_T),
        .sda_i(axi_iic_0_IIC_SDA_I),
        .sda_o(axi_iic_0_IIC_SDA_O),
        .sda_t(axi_iic_0_IIC_SDA_T));
  icyradio_axi_iic_0_1 axi_iic_1
       (.gpo(axi_iic_1_gpo),
        .iic2intc_irpt(axi_iic_1_iic2intc_irpt),
        .s_axi_aclk(axi_pcie_0_axi_aclk_out),
        .s_axi_araddr(axi_peripheral_interconnect_M12_AXI_ARADDR[8:0]),
        .s_axi_aresetn(rst_axi_pcie_0_125M_peripheral_aresetn),
        .s_axi_arready(axi_peripheral_interconnect_M12_AXI_ARREADY),
        .s_axi_arvalid(axi_peripheral_interconnect_M12_AXI_ARVALID),
        .s_axi_awaddr(axi_peripheral_interconnect_M12_AXI_AWADDR[8:0]),
        .s_axi_awready(axi_peripheral_interconnect_M12_AXI_AWREADY),
        .s_axi_awvalid(axi_peripheral_interconnect_M12_AXI_AWVALID),
        .s_axi_bready(axi_peripheral_interconnect_M12_AXI_BREADY),
        .s_axi_bresp(axi_peripheral_interconnect_M12_AXI_BRESP),
        .s_axi_bvalid(axi_peripheral_interconnect_M12_AXI_BVALID),
        .s_axi_rdata(axi_peripheral_interconnect_M12_AXI_RDATA),
        .s_axi_rready(axi_peripheral_interconnect_M12_AXI_RREADY),
        .s_axi_rresp(axi_peripheral_interconnect_M12_AXI_RRESP),
        .s_axi_rvalid(axi_peripheral_interconnect_M12_AXI_RVALID),
        .s_axi_wdata(axi_peripheral_interconnect_M12_AXI_WDATA),
        .s_axi_wready(axi_peripheral_interconnect_M12_AXI_WREADY),
        .s_axi_wstrb(axi_peripheral_interconnect_M12_AXI_WSTRB),
        .s_axi_wvalid(axi_peripheral_interconnect_M12_AXI_WVALID),
        .scl_i(axi_iic_1_IIC_SCL_I),
        .scl_o(axi_iic_1_IIC_SCL_O),
        .scl_t(axi_iic_1_IIC_SCL_T),
        .sda_i(axi_iic_1_IIC_SDA_I),
        .sda_o(axi_iic_1_IIC_SDA_O),
        .sda_t(axi_iic_1_IIC_SDA_T));
  icyradio_axi_pcie_0_0 axi_pcie_0
       (.INTX_MSI_Request(GND_0_dout),
        .MSI_Vector_Num({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .REFCLK(util_ds_buf_0_IBUF_OUT),
        .axi_aclk_out(axi_pcie_0_axi_aclk_out),
        .axi_aresetn(rst_axi_pcie_0_125M_interconnect_aresetn),
        .axi_ctl_aclk_out(axi_pcie_0_axi_ctl_aclk_out),
        .interrupt_out(axi_pcie_0_interrupt_out),
        .m_axi_araddr(axi_pcie_0_M_AXI_ARADDR),
        .m_axi_arburst(axi_pcie_0_M_AXI_ARBURST),
        .m_axi_arcache(axi_pcie_0_M_AXI_ARCACHE),
        .m_axi_arlen(axi_pcie_0_M_AXI_ARLEN),
        .m_axi_arlock(axi_pcie_0_M_AXI_ARLOCK),
        .m_axi_arprot(axi_pcie_0_M_AXI_ARPROT),
        .m_axi_arready(axi_pcie_0_M_AXI_ARREADY),
        .m_axi_arsize(axi_pcie_0_M_AXI_ARSIZE),
        .m_axi_arvalid(axi_pcie_0_M_AXI_ARVALID),
        .m_axi_awaddr(axi_pcie_0_M_AXI_AWADDR),
        .m_axi_awburst(axi_pcie_0_M_AXI_AWBURST),
        .m_axi_awcache(axi_pcie_0_M_AXI_AWCACHE),
        .m_axi_awlen(axi_pcie_0_M_AXI_AWLEN),
        .m_axi_awlock(axi_pcie_0_M_AXI_AWLOCK),
        .m_axi_awprot(axi_pcie_0_M_AXI_AWPROT),
        .m_axi_awready(axi_pcie_0_M_AXI_AWREADY),
        .m_axi_awsize(axi_pcie_0_M_AXI_AWSIZE),
        .m_axi_awvalid(axi_pcie_0_M_AXI_AWVALID),
        .m_axi_bready(axi_pcie_0_M_AXI_BREADY),
        .m_axi_bresp(axi_pcie_0_M_AXI_BRESP),
        .m_axi_bvalid(axi_pcie_0_M_AXI_BVALID),
        .m_axi_rdata(axi_pcie_0_M_AXI_RDATA),
        .m_axi_rlast(axi_pcie_0_M_AXI_RLAST),
        .m_axi_rready(axi_pcie_0_M_AXI_RREADY),
        .m_axi_rresp(axi_pcie_0_M_AXI_RRESP),
        .m_axi_rvalid(axi_pcie_0_M_AXI_RVALID),
        .m_axi_wdata(axi_pcie_0_M_AXI_WDATA),
        .m_axi_wlast(axi_pcie_0_M_AXI_WLAST),
        .m_axi_wready(axi_pcie_0_M_AXI_WREADY),
        .m_axi_wstrb(axi_pcie_0_M_AXI_WSTRB),
        .m_axi_wvalid(axi_pcie_0_M_AXI_WVALID),
        .mmcm_lock(axi_pcie_0_mmcm_lock),
        .pci_exp_rxn(axi_pcie_0_pcie_7x_mgt_rxn),
        .pci_exp_rxp(axi_pcie_0_pcie_7x_mgt_rxp),
        .pci_exp_txn(axi_pcie_0_pcie_7x_mgt_txn),
        .pci_exp_txp(axi_pcie_0_pcie_7x_mgt_txp),
        .s_axi_araddr(axi_interconnect_0_M01_AXI_ARADDR),
        .s_axi_arburst(axi_interconnect_0_M01_AXI_ARBURST),
        .s_axi_arid(axi_interconnect_0_M01_AXI_ARID),
        .s_axi_arlen(axi_interconnect_0_M01_AXI_ARLEN),
        .s_axi_arready(axi_interconnect_0_M01_AXI_ARREADY),
        .s_axi_arregion(axi_interconnect_0_M01_AXI_ARREGION),
        .s_axi_arsize(axi_interconnect_0_M01_AXI_ARSIZE),
        .s_axi_arvalid(axi_interconnect_0_M01_AXI_ARVALID),
        .s_axi_awaddr(axi_interconnect_0_M01_AXI_AWADDR),
        .s_axi_awburst(axi_interconnect_0_M01_AXI_AWBURST),
        .s_axi_awid(axi_interconnect_0_M01_AXI_AWID),
        .s_axi_awlen(axi_interconnect_0_M01_AXI_AWLEN),
        .s_axi_awready(axi_interconnect_0_M01_AXI_AWREADY),
        .s_axi_awregion(axi_interconnect_0_M01_AXI_AWREGION),
        .s_axi_awsize(axi_interconnect_0_M01_AXI_AWSIZE),
        .s_axi_awvalid(axi_interconnect_0_M01_AXI_AWVALID),
        .s_axi_bid(axi_interconnect_0_M01_AXI_BID),
        .s_axi_bready(axi_interconnect_0_M01_AXI_BREADY),
        .s_axi_bresp(axi_interconnect_0_M01_AXI_BRESP),
        .s_axi_bvalid(axi_interconnect_0_M01_AXI_BVALID),
        .s_axi_ctl_araddr(axi_interconnect_1_M06_AXI_ARADDR),
        .s_axi_ctl_arready(axi_interconnect_1_M06_AXI_ARREADY),
        .s_axi_ctl_arvalid(axi_interconnect_1_M06_AXI_ARVALID),
        .s_axi_ctl_awaddr(axi_interconnect_1_M06_AXI_AWADDR),
        .s_axi_ctl_awready(axi_interconnect_1_M06_AXI_AWREADY),
        .s_axi_ctl_awvalid(axi_interconnect_1_M06_AXI_AWVALID),
        .s_axi_ctl_bready(axi_interconnect_1_M06_AXI_BREADY),
        .s_axi_ctl_bresp(axi_interconnect_1_M06_AXI_BRESP),
        .s_axi_ctl_bvalid(axi_interconnect_1_M06_AXI_BVALID),
        .s_axi_ctl_rdata(axi_interconnect_1_M06_AXI_RDATA),
        .s_axi_ctl_rready(axi_interconnect_1_M06_AXI_RREADY),
        .s_axi_ctl_rresp(axi_interconnect_1_M06_AXI_RRESP),
        .s_axi_ctl_rvalid(axi_interconnect_1_M06_AXI_RVALID),
        .s_axi_ctl_wdata(axi_interconnect_1_M06_AXI_WDATA),
        .s_axi_ctl_wready(axi_interconnect_1_M06_AXI_WREADY),
        .s_axi_ctl_wstrb(axi_interconnect_1_M06_AXI_WSTRB),
        .s_axi_ctl_wvalid(axi_interconnect_1_M06_AXI_WVALID),
        .s_axi_rdata(axi_interconnect_0_M01_AXI_RDATA),
        .s_axi_rid(axi_interconnect_0_M01_AXI_RID),
        .s_axi_rlast(axi_interconnect_0_M01_AXI_RLAST),
        .s_axi_rready(axi_interconnect_0_M01_AXI_RREADY),
        .s_axi_rresp(axi_interconnect_0_M01_AXI_RRESP),
        .s_axi_rvalid(axi_interconnect_0_M01_AXI_RVALID),
        .s_axi_wdata(axi_interconnect_0_M01_AXI_WDATA),
        .s_axi_wlast(axi_interconnect_0_M01_AXI_WLAST),
        .s_axi_wready(axi_interconnect_0_M01_AXI_WREADY),
        .s_axi_wstrb(axi_interconnect_0_M01_AXI_WSTRB),
        .s_axi_wvalid(axi_interconnect_0_M01_AXI_WVALID));
  icyradio_axi_pcie_interconnect_2 axi_pcie_interconnect
       (.ACLK(axi_pcie_0_axi_aclk_out),
        .ARESETN(rst_axi_pcie_0_125M_interconnect_aresetn),
        .M00_ACLK(axi_pcie_0_axi_aclk_out),
        .M00_ARESETN(rst_axi_pcie_0_125M_interconnect_aresetn),
        .M00_AXI_araddr(axi_mem_interconnect_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_mem_interconnect_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_mem_interconnect_M00_AXI_ARCACHE),
        .M00_AXI_arlen(axi_mem_interconnect_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_mem_interconnect_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_mem_interconnect_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_mem_interconnect_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_mem_interconnect_M00_AXI_ARREADY),
        .M00_AXI_arregion(axi_mem_interconnect_M00_AXI_ARREGION),
        .M00_AXI_arsize(axi_mem_interconnect_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_mem_interconnect_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_mem_interconnect_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_mem_interconnect_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_mem_interconnect_M00_AXI_AWCACHE),
        .M00_AXI_awlen(axi_mem_interconnect_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_mem_interconnect_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_mem_interconnect_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_mem_interconnect_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_mem_interconnect_M00_AXI_AWREADY),
        .M00_AXI_awregion(axi_mem_interconnect_M00_AXI_AWREGION),
        .M00_AXI_awsize(axi_mem_interconnect_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_mem_interconnect_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_mem_interconnect_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_mem_interconnect_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_mem_interconnect_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_mem_interconnect_M00_AXI_RDATA),
        .M00_AXI_rlast(axi_mem_interconnect_M00_AXI_RLAST),
        .M00_AXI_rready(axi_mem_interconnect_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_mem_interconnect_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_mem_interconnect_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_mem_interconnect_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_mem_interconnect_M00_AXI_WLAST),
        .M00_AXI_wready(axi_mem_interconnect_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_mem_interconnect_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_mem_interconnect_M00_AXI_WVALID),
        .M01_ACLK(axi_pcie_0_axi_aclk_out),
        .M01_ARESETN(rst_axi_pcie_0_125M_interconnect_aresetn),
        .M01_AXI_araddr(axi_pcie_interconnect_M01_AXI_ARADDR),
        .M01_AXI_arburst(axi_pcie_interconnect_M01_AXI_ARBURST),
        .M01_AXI_arcache(axi_pcie_interconnect_M01_AXI_ARCACHE),
        .M01_AXI_arlen(axi_pcie_interconnect_M01_AXI_ARLEN),
        .M01_AXI_arlock(axi_pcie_interconnect_M01_AXI_ARLOCK),
        .M01_AXI_arprot(axi_pcie_interconnect_M01_AXI_ARPROT),
        .M01_AXI_arready(axi_pcie_interconnect_M01_AXI_ARREADY),
        .M01_AXI_arsize(axi_pcie_interconnect_M01_AXI_ARSIZE),
        .M01_AXI_arvalid(axi_pcie_interconnect_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_pcie_interconnect_M01_AXI_AWADDR),
        .M01_AXI_awburst(axi_pcie_interconnect_M01_AXI_AWBURST),
        .M01_AXI_awcache(axi_pcie_interconnect_M01_AXI_AWCACHE),
        .M01_AXI_awlen(axi_pcie_interconnect_M01_AXI_AWLEN),
        .M01_AXI_awlock(axi_pcie_interconnect_M01_AXI_AWLOCK),
        .M01_AXI_awprot(axi_pcie_interconnect_M01_AXI_AWPROT),
        .M01_AXI_awready(axi_pcie_interconnect_M01_AXI_AWREADY),
        .M01_AXI_awsize(axi_pcie_interconnect_M01_AXI_AWSIZE),
        .M01_AXI_awvalid(axi_pcie_interconnect_M01_AXI_AWVALID),
        .M01_AXI_bready(axi_pcie_interconnect_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_pcie_interconnect_M01_AXI_BRESP),
        .M01_AXI_bvalid(axi_pcie_interconnect_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_pcie_interconnect_M01_AXI_RDATA),
        .M01_AXI_rlast(axi_pcie_interconnect_M01_AXI_RLAST),
        .M01_AXI_rready(axi_pcie_interconnect_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_pcie_interconnect_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_pcie_interconnect_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_pcie_interconnect_M01_AXI_WDATA),
        .M01_AXI_wlast(axi_pcie_interconnect_M01_AXI_WLAST),
        .M01_AXI_wready(axi_pcie_interconnect_M01_AXI_WREADY),
        .M01_AXI_wstrb(axi_pcie_interconnect_M01_AXI_WSTRB),
        .M01_AXI_wvalid(axi_pcie_interconnect_M01_AXI_WVALID),
        .M02_ACLK(mig_7series_0_ui_clk),
        .M02_ARESETN(rst_mig_7series_0_166M_interconnect_aresetn),
        .M02_AXI_araddr(axi_pcie_interconnect_M02_AXI_ARADDR),
        .M02_AXI_arburst(axi_pcie_interconnect_M02_AXI_ARBURST),
        .M02_AXI_arcache(axi_pcie_interconnect_M02_AXI_ARCACHE),
        .M02_AXI_arid(axi_pcie_interconnect_M02_AXI_ARID),
        .M02_AXI_arlen(axi_pcie_interconnect_M02_AXI_ARLEN),
        .M02_AXI_arlock(axi_pcie_interconnect_M02_AXI_ARLOCK),
        .M02_AXI_arprot(axi_pcie_interconnect_M02_AXI_ARPROT),
        .M02_AXI_arqos(axi_pcie_interconnect_M02_AXI_ARQOS),
        .M02_AXI_arready(axi_pcie_interconnect_M02_AXI_ARREADY),
        .M02_AXI_arsize(axi_pcie_interconnect_M02_AXI_ARSIZE),
        .M02_AXI_arvalid(axi_pcie_interconnect_M02_AXI_ARVALID),
        .M02_AXI_awaddr(axi_pcie_interconnect_M02_AXI_AWADDR),
        .M02_AXI_awburst(axi_pcie_interconnect_M02_AXI_AWBURST),
        .M02_AXI_awcache(axi_pcie_interconnect_M02_AXI_AWCACHE),
        .M02_AXI_awid(axi_pcie_interconnect_M02_AXI_AWID),
        .M02_AXI_awlen(axi_pcie_interconnect_M02_AXI_AWLEN),
        .M02_AXI_awlock(axi_pcie_interconnect_M02_AXI_AWLOCK),
        .M02_AXI_awprot(axi_pcie_interconnect_M02_AXI_AWPROT),
        .M02_AXI_awqos(axi_pcie_interconnect_M02_AXI_AWQOS),
        .M02_AXI_awready(axi_pcie_interconnect_M02_AXI_AWREADY),
        .M02_AXI_awsize(axi_pcie_interconnect_M02_AXI_AWSIZE),
        .M02_AXI_awvalid(axi_pcie_interconnect_M02_AXI_AWVALID),
        .M02_AXI_bid(axi_pcie_interconnect_M02_AXI_BID),
        .M02_AXI_bready(axi_pcie_interconnect_M02_AXI_BREADY),
        .M02_AXI_bresp(axi_pcie_interconnect_M02_AXI_BRESP),
        .M02_AXI_bvalid(axi_pcie_interconnect_M02_AXI_BVALID),
        .M02_AXI_rdata(axi_pcie_interconnect_M02_AXI_RDATA),
        .M02_AXI_rid(axi_pcie_interconnect_M02_AXI_RID),
        .M02_AXI_rlast(axi_pcie_interconnect_M02_AXI_RLAST),
        .M02_AXI_rready(axi_pcie_interconnect_M02_AXI_RREADY),
        .M02_AXI_rresp(axi_pcie_interconnect_M02_AXI_RRESP),
        .M02_AXI_rvalid(axi_pcie_interconnect_M02_AXI_RVALID),
        .M02_AXI_wdata(axi_pcie_interconnect_M02_AXI_WDATA),
        .M02_AXI_wlast(axi_pcie_interconnect_M02_AXI_WLAST),
        .M02_AXI_wready(axi_pcie_interconnect_M02_AXI_WREADY),
        .M02_AXI_wstrb(axi_pcie_interconnect_M02_AXI_WSTRB),
        .M02_AXI_wvalid(axi_pcie_interconnect_M02_AXI_WVALID),
        .M03_ACLK(axi_pcie_0_axi_aclk_out),
        .M03_ARESETN(rst_axi_pcie_0_125M_interconnect_aresetn),
        .M03_AXI_araddr(axi_pcie_interconnect_M03_AXI_ARADDR),
        .M03_AXI_arburst(axi_pcie_interconnect_M03_AXI_ARBURST),
        .M03_AXI_arcache(axi_pcie_interconnect_M03_AXI_ARCACHE),
        .M03_AXI_arid(axi_pcie_interconnect_M03_AXI_ARID),
        .M03_AXI_arlen(axi_pcie_interconnect_M03_AXI_ARLEN),
        .M03_AXI_arlock(axi_pcie_interconnect_M03_AXI_ARLOCK),
        .M03_AXI_arprot(axi_pcie_interconnect_M03_AXI_ARPROT),
        .M03_AXI_arready(axi_pcie_interconnect_M03_AXI_ARREADY),
        .M03_AXI_arsize(axi_pcie_interconnect_M03_AXI_ARSIZE),
        .M03_AXI_arvalid(axi_pcie_interconnect_M03_AXI_ARVALID),
        .M03_AXI_awaddr(axi_pcie_interconnect_M03_AXI_AWADDR),
        .M03_AXI_awburst(axi_pcie_interconnect_M03_AXI_AWBURST),
        .M03_AXI_awcache(axi_pcie_interconnect_M03_AXI_AWCACHE),
        .M03_AXI_awid(axi_pcie_interconnect_M03_AXI_AWID),
        .M03_AXI_awlen(axi_pcie_interconnect_M03_AXI_AWLEN),
        .M03_AXI_awlock(axi_pcie_interconnect_M03_AXI_AWLOCK),
        .M03_AXI_awprot(axi_pcie_interconnect_M03_AXI_AWPROT),
        .M03_AXI_awready(axi_pcie_interconnect_M03_AXI_AWREADY),
        .M03_AXI_awsize(axi_pcie_interconnect_M03_AXI_AWSIZE),
        .M03_AXI_awvalid(axi_pcie_interconnect_M03_AXI_AWVALID),
        .M03_AXI_bid(axi_pcie_interconnect_M03_AXI_BID),
        .M03_AXI_bready(axi_pcie_interconnect_M03_AXI_BREADY),
        .M03_AXI_bresp(axi_pcie_interconnect_M03_AXI_BRESP),
        .M03_AXI_bvalid(axi_pcie_interconnect_M03_AXI_BVALID),
        .M03_AXI_rdata(axi_pcie_interconnect_M03_AXI_RDATA),
        .M03_AXI_rid(axi_pcie_interconnect_M03_AXI_RID),
        .M03_AXI_rlast(axi_pcie_interconnect_M03_AXI_RLAST),
        .M03_AXI_rready(axi_pcie_interconnect_M03_AXI_RREADY),
        .M03_AXI_rresp(axi_pcie_interconnect_M03_AXI_RRESP),
        .M03_AXI_rvalid(axi_pcie_interconnect_M03_AXI_RVALID),
        .M03_AXI_wdata(axi_pcie_interconnect_M03_AXI_WDATA),
        .M03_AXI_wlast(axi_pcie_interconnect_M03_AXI_WLAST),
        .M03_AXI_wready(axi_pcie_interconnect_M03_AXI_WREADY),
        .M03_AXI_wstrb(axi_pcie_interconnect_M03_AXI_WSTRB),
        .M03_AXI_wvalid(axi_pcie_interconnect_M03_AXI_WVALID),
        .S00_ACLK(axi_pcie_0_axi_aclk_out),
        .S00_ARESETN(rst_axi_pcie_0_125M_interconnect_aresetn),
        .S00_AXI_araddr(axi_pcie_interconnect_M00_AXI_ARADDR),
        .S00_AXI_arburst(axi_pcie_interconnect_M00_AXI_ARBURST),
        .S00_AXI_arcache(axi_pcie_interconnect_M00_AXI_ARCACHE),
        .S00_AXI_arid(axi_pcie_interconnect_M00_AXI_ARID),
        .S00_AXI_arlen(axi_pcie_interconnect_M00_AXI_ARLEN),
        .S00_AXI_arlock(axi_pcie_interconnect_M00_AXI_ARLOCK),
        .S00_AXI_arprot(axi_pcie_interconnect_M00_AXI_ARPROT),
        .S00_AXI_arqos(axi_pcie_interconnect_M00_AXI_ARQOS),
        .S00_AXI_arready(axi_pcie_interconnect_M00_AXI_ARREADY),
        .S00_AXI_arregion(axi_pcie_interconnect_M00_AXI_ARREGION),
        .S00_AXI_arsize(axi_pcie_interconnect_M00_AXI_ARSIZE),
        .S00_AXI_arvalid(axi_pcie_interconnect_M00_AXI_ARVALID),
        .S00_AXI_awaddr(axi_pcie_interconnect_M00_AXI_AWADDR),
        .S00_AXI_awburst(axi_pcie_interconnect_M00_AXI_AWBURST),
        .S00_AXI_awcache(axi_pcie_interconnect_M00_AXI_AWCACHE),
        .S00_AXI_awid(axi_pcie_interconnect_M00_AXI_AWID),
        .S00_AXI_awlen(axi_pcie_interconnect_M00_AXI_AWLEN),
        .S00_AXI_awlock(axi_pcie_interconnect_M00_AXI_AWLOCK),
        .S00_AXI_awprot(axi_pcie_interconnect_M00_AXI_AWPROT),
        .S00_AXI_awqos(axi_pcie_interconnect_M00_AXI_AWQOS),
        .S00_AXI_awready(axi_pcie_interconnect_M00_AXI_AWREADY),
        .S00_AXI_awregion(axi_pcie_interconnect_M00_AXI_AWREGION),
        .S00_AXI_awsize(axi_pcie_interconnect_M00_AXI_AWSIZE),
        .S00_AXI_awvalid(axi_pcie_interconnect_M00_AXI_AWVALID),
        .S00_AXI_bid(axi_pcie_interconnect_M00_AXI_BID),
        .S00_AXI_bready(axi_pcie_interconnect_M00_AXI_BREADY),
        .S00_AXI_bresp(axi_pcie_interconnect_M00_AXI_BRESP),
        .S00_AXI_bvalid(axi_pcie_interconnect_M00_AXI_BVALID),
        .S00_AXI_rdata(axi_pcie_interconnect_M00_AXI_RDATA),
        .S00_AXI_rid(axi_pcie_interconnect_M00_AXI_RID),
        .S00_AXI_rlast(axi_pcie_interconnect_M00_AXI_RLAST),
        .S00_AXI_rready(axi_pcie_interconnect_M00_AXI_RREADY),
        .S00_AXI_rresp(axi_pcie_interconnect_M00_AXI_RRESP),
        .S00_AXI_rvalid(axi_pcie_interconnect_M00_AXI_RVALID),
        .S00_AXI_wdata(axi_pcie_interconnect_M00_AXI_WDATA),
        .S00_AXI_wlast(axi_pcie_interconnect_M00_AXI_WLAST),
        .S00_AXI_wready(axi_pcie_interconnect_M00_AXI_WREADY),
        .S00_AXI_wstrb(axi_pcie_interconnect_M00_AXI_WSTRB),
        .S00_AXI_wvalid(axi_pcie_interconnect_M00_AXI_WVALID),
        .S01_ACLK(axi_pcie_0_axi_aclk_out),
        .S01_ARESETN(rst_axi_pcie_0_125M_interconnect_aresetn),
        .S01_AXI_araddr(axi_pcie_0_M_AXI_ARADDR),
        .S01_AXI_arburst(axi_pcie_0_M_AXI_ARBURST),
        .S01_AXI_arcache(axi_pcie_0_M_AXI_ARCACHE),
        .S01_AXI_arlen(axi_pcie_0_M_AXI_ARLEN),
        .S01_AXI_arlock(axi_pcie_0_M_AXI_ARLOCK),
        .S01_AXI_arprot(axi_pcie_0_M_AXI_ARPROT),
        .S01_AXI_arready(axi_pcie_0_M_AXI_ARREADY),
        .S01_AXI_arsize(axi_pcie_0_M_AXI_ARSIZE),
        .S01_AXI_arvalid(axi_pcie_0_M_AXI_ARVALID),
        .S01_AXI_awaddr(axi_pcie_0_M_AXI_AWADDR),
        .S01_AXI_awburst(axi_pcie_0_M_AXI_AWBURST),
        .S01_AXI_awcache(axi_pcie_0_M_AXI_AWCACHE),
        .S01_AXI_awlen(axi_pcie_0_M_AXI_AWLEN),
        .S01_AXI_awlock(axi_pcie_0_M_AXI_AWLOCK),
        .S01_AXI_awprot(axi_pcie_0_M_AXI_AWPROT),
        .S01_AXI_awready(axi_pcie_0_M_AXI_AWREADY),
        .S01_AXI_awsize(axi_pcie_0_M_AXI_AWSIZE),
        .S01_AXI_awvalid(axi_pcie_0_M_AXI_AWVALID),
        .S01_AXI_bready(axi_pcie_0_M_AXI_BREADY),
        .S01_AXI_bresp(axi_pcie_0_M_AXI_BRESP),
        .S01_AXI_bvalid(axi_pcie_0_M_AXI_BVALID),
        .S01_AXI_rdata(axi_pcie_0_M_AXI_RDATA),
        .S01_AXI_rlast(axi_pcie_0_M_AXI_RLAST),
        .S01_AXI_rready(axi_pcie_0_M_AXI_RREADY),
        .S01_AXI_rresp(axi_pcie_0_M_AXI_RRESP),
        .S01_AXI_rvalid(axi_pcie_0_M_AXI_RVALID),
        .S01_AXI_wdata(axi_pcie_0_M_AXI_WDATA),
        .S01_AXI_wlast(axi_pcie_0_M_AXI_WLAST),
        .S01_AXI_wready(axi_pcie_0_M_AXI_WREADY),
        .S01_AXI_wstrb(axi_pcie_0_M_AXI_WSTRB),
        .S01_AXI_wvalid(axi_pcie_0_M_AXI_WVALID));
  icyradio_axi_peripheral_interconnect_2 axi_peripheral_interconnect
       (.ACLK(axi_pcie_0_axi_aclk_out),
        .ARESETN(rst_axi_pcie_0_125M_interconnect_aresetn),
        .M00_ACLK(axi_pcie_0_axi_aclk_out),
        .M00_ARESETN(rst_axi_pcie_0_125M_interconnect_aresetn),
        .M00_AXI_araddr(axi_peripheral_interconnect_M00_AXI_ARADDR),
        .M00_AXI_arprot(axi_peripheral_interconnect_M00_AXI_ARPROT),
        .M00_AXI_arready(axi_peripheral_interconnect_M00_AXI_ARREADY),
        .M00_AXI_arvalid(axi_peripheral_interconnect_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_peripheral_interconnect_M00_AXI_AWADDR),
        .M00_AXI_awprot(axi_peripheral_interconnect_M00_AXI_AWPROT),
        .M00_AXI_awready(axi_peripheral_interconnect_M00_AXI_AWREADY),
        .M00_AXI_awvalid(axi_peripheral_interconnect_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_peripheral_interconnect_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_peripheral_interconnect_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_peripheral_interconnect_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_peripheral_interconnect_M00_AXI_RDATA),
        .M00_AXI_rready(axi_peripheral_interconnect_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_peripheral_interconnect_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_peripheral_interconnect_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_peripheral_interconnect_M00_AXI_WDATA),
        .M00_AXI_wready(axi_peripheral_interconnect_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_peripheral_interconnect_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_peripheral_interconnect_M00_AXI_WVALID),
        .M01_ACLK(axi_pcie_0_axi_aclk_out),
        .M01_ARESETN(rst_axi_pcie_0_125M_interconnect_aresetn),
        .M01_AXI_araddr(axi_peripheral_interconnect_M01_AXI_ARADDR),
        .M01_AXI_arprot(axi_peripheral_interconnect_M01_AXI_ARPROT),
        .M01_AXI_arready(axi_peripheral_interconnect_M01_AXI_ARREADY),
        .M01_AXI_arvalid(axi_peripheral_interconnect_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_peripheral_interconnect_M01_AXI_AWADDR),
        .M01_AXI_awprot(axi_peripheral_interconnect_M01_AXI_AWPROT),
        .M01_AXI_awready(axi_peripheral_interconnect_M01_AXI_AWREADY),
        .M01_AXI_awvalid(axi_peripheral_interconnect_M01_AXI_AWVALID),
        .M01_AXI_bready(axi_peripheral_interconnect_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_peripheral_interconnect_M01_AXI_BRESP),
        .M01_AXI_bvalid(axi_peripheral_interconnect_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_peripheral_interconnect_M01_AXI_RDATA),
        .M01_AXI_rready(axi_peripheral_interconnect_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_peripheral_interconnect_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_peripheral_interconnect_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_peripheral_interconnect_M01_AXI_WDATA),
        .M01_AXI_wready(axi_peripheral_interconnect_M01_AXI_WREADY),
        .M01_AXI_wstrb(axi_peripheral_interconnect_M01_AXI_WSTRB),
        .M01_AXI_wvalid(axi_peripheral_interconnect_M01_AXI_WVALID),
        .M02_ACLK(axi_pcie_0_axi_aclk_out),
        .M02_ARESETN(rst_axi_pcie_0_125M_interconnect_aresetn),
        .M02_AXI_araddr(axi_peripheral_interconnect_M02_AXI_ARADDR),
        .M02_AXI_arprot(axi_peripheral_interconnect_M02_AXI_ARPROT),
        .M02_AXI_arready(axi_peripheral_interconnect_M02_AXI_ARREADY),
        .M02_AXI_arvalid(axi_peripheral_interconnect_M02_AXI_ARVALID),
        .M02_AXI_awaddr(axi_peripheral_interconnect_M02_AXI_AWADDR),
        .M02_AXI_awprot(axi_peripheral_interconnect_M02_AXI_AWPROT),
        .M02_AXI_awready(axi_peripheral_interconnect_M02_AXI_AWREADY),
        .M02_AXI_awvalid(axi_peripheral_interconnect_M02_AXI_AWVALID),
        .M02_AXI_bready(axi_peripheral_interconnect_M02_AXI_BREADY),
        .M02_AXI_bresp(axi_peripheral_interconnect_M02_AXI_BRESP),
        .M02_AXI_bvalid(axi_peripheral_interconnect_M02_AXI_BVALID),
        .M02_AXI_rdata(axi_peripheral_interconnect_M02_AXI_RDATA),
        .M02_AXI_rready(axi_peripheral_interconnect_M02_AXI_RREADY),
        .M02_AXI_rresp(axi_peripheral_interconnect_M02_AXI_RRESP),
        .M02_AXI_rvalid(axi_peripheral_interconnect_M02_AXI_RVALID),
        .M02_AXI_wdata(axi_peripheral_interconnect_M02_AXI_WDATA),
        .M02_AXI_wready(axi_peripheral_interconnect_M02_AXI_WREADY),
        .M02_AXI_wstrb(axi_peripheral_interconnect_M02_AXI_WSTRB),
        .M02_AXI_wvalid(axi_peripheral_interconnect_M02_AXI_WVALID),
        .M03_ACLK(axi_pcie_0_axi_aclk_out),
        .M03_ARESETN(rst_axi_pcie_0_125M_interconnect_aresetn),
        .M03_AXI_araddr(axi_interconnect_1_M03_AXI_ARADDR),
        .M03_AXI_arready(axi_interconnect_1_M03_AXI_ARREADY),
        .M03_AXI_arvalid(axi_interconnect_1_M03_AXI_ARVALID),
        .M03_AXI_awaddr(axi_interconnect_1_M03_AXI_AWADDR),
        .M03_AXI_awready(axi_interconnect_1_M03_AXI_AWREADY),
        .M03_AXI_awvalid(axi_interconnect_1_M03_AXI_AWVALID),
        .M03_AXI_bready(axi_interconnect_1_M03_AXI_BREADY),
        .M03_AXI_bresp(axi_interconnect_1_M03_AXI_BRESP),
        .M03_AXI_bvalid(axi_interconnect_1_M03_AXI_BVALID),
        .M03_AXI_rdata(axi_interconnect_1_M03_AXI_RDATA),
        .M03_AXI_rready(axi_interconnect_1_M03_AXI_RREADY),
        .M03_AXI_rresp(axi_interconnect_1_M03_AXI_RRESP),
        .M03_AXI_rvalid(axi_interconnect_1_M03_AXI_RVALID),
        .M03_AXI_wdata(axi_interconnect_1_M03_AXI_WDATA),
        .M03_AXI_wready(axi_interconnect_1_M03_AXI_WREADY),
        .M03_AXI_wstrb(axi_interconnect_1_M03_AXI_WSTRB),
        .M03_AXI_wvalid(axi_interconnect_1_M03_AXI_WVALID),
        .M04_ACLK(axi_pcie_0_axi_aclk_out),
        .M04_ARESETN(rst_axi_pcie_0_125M_interconnect_aresetn),
        .M04_AXI_araddr(axi_interconnect_1_M04_AXI_ARADDR),
        .M04_AXI_arready(axi_interconnect_1_M04_AXI_ARREADY),
        .M04_AXI_arvalid(axi_interconnect_1_M04_AXI_ARVALID),
        .M04_AXI_awaddr(axi_interconnect_1_M04_AXI_AWADDR),
        .M04_AXI_awready(axi_interconnect_1_M04_AXI_AWREADY),
        .M04_AXI_awvalid(axi_interconnect_1_M04_AXI_AWVALID),
        .M04_AXI_bready(axi_interconnect_1_M04_AXI_BREADY),
        .M04_AXI_bresp(axi_interconnect_1_M04_AXI_BRESP),
        .M04_AXI_bvalid(axi_interconnect_1_M04_AXI_BVALID),
        .M04_AXI_rdata(axi_interconnect_1_M04_AXI_RDATA),
        .M04_AXI_rready(axi_interconnect_1_M04_AXI_RREADY),
        .M04_AXI_rresp(axi_interconnect_1_M04_AXI_RRESP),
        .M04_AXI_rvalid(axi_interconnect_1_M04_AXI_RVALID),
        .M04_AXI_wdata(axi_interconnect_1_M04_AXI_WDATA),
        .M04_AXI_wready(axi_interconnect_1_M04_AXI_WREADY),
        .M04_AXI_wstrb(axi_interconnect_1_M04_AXI_WSTRB),
        .M04_AXI_wvalid(axi_interconnect_1_M04_AXI_WVALID),
        .M05_ACLK(axi_pcie_0_axi_aclk_out),
        .M05_ARESETN(rst_axi_pcie_0_125M_interconnect_aresetn),
        .M05_AXI_araddr(axi_interconnect_1_M05_AXI_ARADDR),
        .M05_AXI_arready(axi_interconnect_1_M05_AXI_ARREADY),
        .M05_AXI_arvalid(axi_interconnect_1_M05_AXI_ARVALID),
        .M05_AXI_awaddr(axi_interconnect_1_M05_AXI_AWADDR),
        .M05_AXI_awready(axi_interconnect_1_M05_AXI_AWREADY),
        .M05_AXI_awvalid(axi_interconnect_1_M05_AXI_AWVALID),
        .M05_AXI_bready(axi_interconnect_1_M05_AXI_BREADY),
        .M05_AXI_bresp(axi_interconnect_1_M05_AXI_BRESP),
        .M05_AXI_bvalid(axi_interconnect_1_M05_AXI_BVALID),
        .M05_AXI_rdata(axi_interconnect_1_M05_AXI_RDATA),
        .M05_AXI_rready(axi_interconnect_1_M05_AXI_RREADY),
        .M05_AXI_rresp(axi_interconnect_1_M05_AXI_RRESP),
        .M05_AXI_rvalid(axi_interconnect_1_M05_AXI_RVALID),
        .M05_AXI_wdata(axi_interconnect_1_M05_AXI_WDATA),
        .M05_AXI_wready(axi_interconnect_1_M05_AXI_WREADY),
        .M05_AXI_wstrb(axi_interconnect_1_M05_AXI_WSTRB),
        .M05_AXI_wvalid(axi_interconnect_1_M05_AXI_WVALID),
        .M06_ACLK(axi_pcie_0_axi_ctl_aclk_out),
        .M06_ARESETN(rst_axi_pcie_0_125M_interconnect_aresetn),
        .M06_AXI_araddr(axi_interconnect_1_M06_AXI_ARADDR),
        .M06_AXI_arready(axi_interconnect_1_M06_AXI_ARREADY),
        .M06_AXI_arvalid(axi_interconnect_1_M06_AXI_ARVALID),
        .M06_AXI_awaddr(axi_interconnect_1_M06_AXI_AWADDR),
        .M06_AXI_awready(axi_interconnect_1_M06_AXI_AWREADY),
        .M06_AXI_awvalid(axi_interconnect_1_M06_AXI_AWVALID),
        .M06_AXI_bready(axi_interconnect_1_M06_AXI_BREADY),
        .M06_AXI_bresp(axi_interconnect_1_M06_AXI_BRESP),
        .M06_AXI_bvalid(axi_interconnect_1_M06_AXI_BVALID),
        .M06_AXI_rdata(axi_interconnect_1_M06_AXI_RDATA),
        .M06_AXI_rready(axi_interconnect_1_M06_AXI_RREADY),
        .M06_AXI_rresp(axi_interconnect_1_M06_AXI_RRESP),
        .M06_AXI_rvalid(axi_interconnect_1_M06_AXI_RVALID),
        .M06_AXI_wdata(axi_interconnect_1_M06_AXI_WDATA),
        .M06_AXI_wready(axi_interconnect_1_M06_AXI_WREADY),
        .M06_AXI_wstrb(axi_interconnect_1_M06_AXI_WSTRB),
        .M06_AXI_wvalid(axi_interconnect_1_M06_AXI_WVALID),
        .M07_ACLK(axi_pcie_0_axi_aclk_out),
        .M07_ARESETN(rst_axi_pcie_0_125M_interconnect_aresetn),
        .M07_AXI_araddr(axi_peripheral_interconnect_M07_AXI_ARADDR),
        .M07_AXI_arprot(axi_peripheral_interconnect_M07_AXI_ARPROT),
        .M07_AXI_arready(axi_peripheral_interconnect_M07_AXI_ARREADY),
        .M07_AXI_arvalid(axi_peripheral_interconnect_M07_AXI_ARVALID),
        .M07_AXI_awaddr(axi_peripheral_interconnect_M07_AXI_AWADDR),
        .M07_AXI_awprot(axi_peripheral_interconnect_M07_AXI_AWPROT),
        .M07_AXI_awready(axi_peripheral_interconnect_M07_AXI_AWREADY),
        .M07_AXI_awvalid(axi_peripheral_interconnect_M07_AXI_AWVALID),
        .M07_AXI_bready(axi_peripheral_interconnect_M07_AXI_BREADY),
        .M07_AXI_bresp(axi_peripheral_interconnect_M07_AXI_BRESP),
        .M07_AXI_bvalid(axi_peripheral_interconnect_M07_AXI_BVALID),
        .M07_AXI_rdata(axi_peripheral_interconnect_M07_AXI_RDATA),
        .M07_AXI_rready(axi_peripheral_interconnect_M07_AXI_RREADY),
        .M07_AXI_rresp(axi_peripheral_interconnect_M07_AXI_RRESP),
        .M07_AXI_rvalid(axi_peripheral_interconnect_M07_AXI_RVALID),
        .M07_AXI_wdata(axi_peripheral_interconnect_M07_AXI_WDATA),
        .M07_AXI_wready(axi_peripheral_interconnect_M07_AXI_WREADY),
        .M07_AXI_wstrb(axi_peripheral_interconnect_M07_AXI_WSTRB),
        .M07_AXI_wvalid(axi_peripheral_interconnect_M07_AXI_WVALID),
        .M08_ACLK(axi_pcie_0_axi_aclk_out),
        .M08_ARESETN(rst_axi_pcie_0_125M_interconnect_aresetn),
        .M08_AXI_araddr(axi_peripheral_interconnect_M08_AXI_ARADDR),
        .M08_AXI_arprot(axi_peripheral_interconnect_M08_AXI_ARPROT),
        .M08_AXI_arready(axi_peripheral_interconnect_M08_AXI_ARREADY),
        .M08_AXI_arvalid(axi_peripheral_interconnect_M08_AXI_ARVALID),
        .M08_AXI_awaddr(axi_peripheral_interconnect_M08_AXI_AWADDR),
        .M08_AXI_awprot(axi_peripheral_interconnect_M08_AXI_AWPROT),
        .M08_AXI_awready(axi_peripheral_interconnect_M08_AXI_AWREADY),
        .M08_AXI_awvalid(axi_peripheral_interconnect_M08_AXI_AWVALID),
        .M08_AXI_bready(axi_peripheral_interconnect_M08_AXI_BREADY),
        .M08_AXI_bresp(axi_peripheral_interconnect_M08_AXI_BRESP),
        .M08_AXI_bvalid(axi_peripheral_interconnect_M08_AXI_BVALID),
        .M08_AXI_rdata(axi_peripheral_interconnect_M08_AXI_RDATA),
        .M08_AXI_rready(axi_peripheral_interconnect_M08_AXI_RREADY),
        .M08_AXI_rresp(axi_peripheral_interconnect_M08_AXI_RRESP),
        .M08_AXI_rvalid(axi_peripheral_interconnect_M08_AXI_RVALID),
        .M08_AXI_wdata(axi_peripheral_interconnect_M08_AXI_WDATA),
        .M08_AXI_wready(axi_peripheral_interconnect_M08_AXI_WREADY),
        .M08_AXI_wstrb(axi_peripheral_interconnect_M08_AXI_WSTRB),
        .M08_AXI_wvalid(axi_peripheral_interconnect_M08_AXI_WVALID),
        .M09_ACLK(axi_pcie_0_axi_aclk_out),
        .M09_ARESETN(rst_axi_pcie_0_125M_interconnect_aresetn),
        .M09_AXI_araddr(axi_peripheral_interconnect_M09_AXI_ARADDR),
        .M09_AXI_arprot(axi_peripheral_interconnect_M09_AXI_ARPROT),
        .M09_AXI_arready(axi_peripheral_interconnect_M09_AXI_ARREADY),
        .M09_AXI_arvalid(axi_peripheral_interconnect_M09_AXI_ARVALID),
        .M09_AXI_awaddr(axi_peripheral_interconnect_M09_AXI_AWADDR),
        .M09_AXI_awprot(axi_peripheral_interconnect_M09_AXI_AWPROT),
        .M09_AXI_awready(axi_peripheral_interconnect_M09_AXI_AWREADY),
        .M09_AXI_awvalid(axi_peripheral_interconnect_M09_AXI_AWVALID),
        .M09_AXI_bready(axi_peripheral_interconnect_M09_AXI_BREADY),
        .M09_AXI_bresp(axi_peripheral_interconnect_M09_AXI_BRESP),
        .M09_AXI_bvalid(axi_peripheral_interconnect_M09_AXI_BVALID),
        .M09_AXI_rdata(axi_peripheral_interconnect_M09_AXI_RDATA),
        .M09_AXI_rready(axi_peripheral_interconnect_M09_AXI_RREADY),
        .M09_AXI_rresp(axi_peripheral_interconnect_M09_AXI_RRESP),
        .M09_AXI_rvalid(axi_peripheral_interconnect_M09_AXI_RVALID),
        .M09_AXI_wdata(axi_peripheral_interconnect_M09_AXI_WDATA),
        .M09_AXI_wready(axi_peripheral_interconnect_M09_AXI_WREADY),
        .M09_AXI_wstrb(axi_peripheral_interconnect_M09_AXI_WSTRB),
        .M09_AXI_wvalid(axi_peripheral_interconnect_M09_AXI_WVALID),
        .M10_ACLK(axi_pcie_0_axi_aclk_out),
        .M10_ARESETN(rst_axi_pcie_0_125M_interconnect_aresetn),
        .M10_AXI_araddr(axi_peripheral_interconnect_M10_AXI_ARADDR),
        .M10_AXI_arready(axi_peripheral_interconnect_M10_AXI_ARREADY),
        .M10_AXI_arvalid(axi_peripheral_interconnect_M10_AXI_ARVALID),
        .M10_AXI_awaddr(axi_peripheral_interconnect_M10_AXI_AWADDR),
        .M10_AXI_awready(axi_peripheral_interconnect_M10_AXI_AWREADY),
        .M10_AXI_awvalid(axi_peripheral_interconnect_M10_AXI_AWVALID),
        .M10_AXI_bready(axi_peripheral_interconnect_M10_AXI_BREADY),
        .M10_AXI_bresp(axi_peripheral_interconnect_M10_AXI_BRESP),
        .M10_AXI_bvalid(axi_peripheral_interconnect_M10_AXI_BVALID),
        .M10_AXI_rdata(axi_peripheral_interconnect_M10_AXI_RDATA),
        .M10_AXI_rready(axi_peripheral_interconnect_M10_AXI_RREADY),
        .M10_AXI_rresp(axi_peripheral_interconnect_M10_AXI_RRESP),
        .M10_AXI_rvalid(axi_peripheral_interconnect_M10_AXI_RVALID),
        .M10_AXI_wdata(axi_peripheral_interconnect_M10_AXI_WDATA),
        .M10_AXI_wready(axi_peripheral_interconnect_M10_AXI_WREADY),
        .M10_AXI_wstrb(axi_peripheral_interconnect_M10_AXI_WSTRB),
        .M10_AXI_wvalid(axi_peripheral_interconnect_M10_AXI_WVALID),
        .M11_ACLK(axi_pcie_0_axi_aclk_out),
        .M11_ARESETN(rst_axi_pcie_0_125M_interconnect_aresetn),
        .M11_AXI_araddr(axi_peripheral_interconnect_M11_AXI_ARADDR),
        .M11_AXI_arready(axi_peripheral_interconnect_M11_AXI_ARREADY),
        .M11_AXI_arvalid(axi_peripheral_interconnect_M11_AXI_ARVALID),
        .M11_AXI_awaddr(axi_peripheral_interconnect_M11_AXI_AWADDR),
        .M11_AXI_awready(axi_peripheral_interconnect_M11_AXI_AWREADY),
        .M11_AXI_awvalid(axi_peripheral_interconnect_M11_AXI_AWVALID),
        .M11_AXI_bready(axi_peripheral_interconnect_M11_AXI_BREADY),
        .M11_AXI_bresp(axi_peripheral_interconnect_M11_AXI_BRESP),
        .M11_AXI_bvalid(axi_peripheral_interconnect_M11_AXI_BVALID),
        .M11_AXI_rdata(axi_peripheral_interconnect_M11_AXI_RDATA),
        .M11_AXI_rready(axi_peripheral_interconnect_M11_AXI_RREADY),
        .M11_AXI_rresp(axi_peripheral_interconnect_M11_AXI_RRESP),
        .M11_AXI_rvalid(axi_peripheral_interconnect_M11_AXI_RVALID),
        .M11_AXI_wdata(axi_peripheral_interconnect_M11_AXI_WDATA),
        .M11_AXI_wready(axi_peripheral_interconnect_M11_AXI_WREADY),
        .M11_AXI_wstrb(axi_peripheral_interconnect_M11_AXI_WSTRB),
        .M11_AXI_wvalid(axi_peripheral_interconnect_M11_AXI_WVALID),
        .M12_ACLK(axi_pcie_0_axi_aclk_out),
        .M12_ARESETN(rst_axi_pcie_0_125M_interconnect_aresetn),
        .M12_AXI_araddr(axi_peripheral_interconnect_M12_AXI_ARADDR),
        .M12_AXI_arready(axi_peripheral_interconnect_M12_AXI_ARREADY),
        .M12_AXI_arvalid(axi_peripheral_interconnect_M12_AXI_ARVALID),
        .M12_AXI_awaddr(axi_peripheral_interconnect_M12_AXI_AWADDR),
        .M12_AXI_awready(axi_peripheral_interconnect_M12_AXI_AWREADY),
        .M12_AXI_awvalid(axi_peripheral_interconnect_M12_AXI_AWVALID),
        .M12_AXI_bready(axi_peripheral_interconnect_M12_AXI_BREADY),
        .M12_AXI_bresp(axi_peripheral_interconnect_M12_AXI_BRESP),
        .M12_AXI_bvalid(axi_peripheral_interconnect_M12_AXI_BVALID),
        .M12_AXI_rdata(axi_peripheral_interconnect_M12_AXI_RDATA),
        .M12_AXI_rready(axi_peripheral_interconnect_M12_AXI_RREADY),
        .M12_AXI_rresp(axi_peripheral_interconnect_M12_AXI_RRESP),
        .M12_AXI_rvalid(axi_peripheral_interconnect_M12_AXI_RVALID),
        .M12_AXI_wdata(axi_peripheral_interconnect_M12_AXI_WDATA),
        .M12_AXI_wready(axi_peripheral_interconnect_M12_AXI_WREADY),
        .M12_AXI_wstrb(axi_peripheral_interconnect_M12_AXI_WSTRB),
        .M12_AXI_wvalid(axi_peripheral_interconnect_M12_AXI_WVALID),
        .M13_ACLK(axi_pcie_0_axi_aclk_out),
        .M13_ARESETN(rst_axi_pcie_0_125M_interconnect_aresetn),
        .M13_AXI_araddr(axi_peripheral_interconnect_M13_AXI_ARADDR),
        .M13_AXI_arready(axi_peripheral_interconnect_M13_AXI_ARREADY),
        .M13_AXI_arvalid(axi_peripheral_interconnect_M13_AXI_ARVALID),
        .M13_AXI_awaddr(axi_peripheral_interconnect_M13_AXI_AWADDR),
        .M13_AXI_awready(axi_peripheral_interconnect_M13_AXI_AWREADY),
        .M13_AXI_awvalid(axi_peripheral_interconnect_M13_AXI_AWVALID),
        .M13_AXI_bready(axi_peripheral_interconnect_M13_AXI_BREADY),
        .M13_AXI_bresp(axi_peripheral_interconnect_M13_AXI_BRESP),
        .M13_AXI_bvalid(axi_peripheral_interconnect_M13_AXI_BVALID),
        .M13_AXI_rdata(axi_peripheral_interconnect_M13_AXI_RDATA),
        .M13_AXI_rready(axi_peripheral_interconnect_M13_AXI_RREADY),
        .M13_AXI_rresp(axi_peripheral_interconnect_M13_AXI_RRESP),
        .M13_AXI_rvalid(axi_peripheral_interconnect_M13_AXI_RVALID),
        .M13_AXI_wdata(axi_peripheral_interconnect_M13_AXI_WDATA),
        .M13_AXI_wready(axi_peripheral_interconnect_M13_AXI_WREADY),
        .M13_AXI_wstrb(axi_peripheral_interconnect_M13_AXI_WSTRB),
        .M13_AXI_wvalid(axi_peripheral_interconnect_M13_AXI_WVALID),
        .M14_ACLK(axi_pcie_0_axi_aclk_out),
        .M14_ARESETN(rst_axi_pcie_0_125M_interconnect_aresetn),
        .M14_AXI_araddr(axi_peripheral_interconnect_M14_AXI_ARADDR),
        .M14_AXI_arready(axi_peripheral_interconnect_M14_AXI_ARREADY),
        .M14_AXI_arvalid(axi_peripheral_interconnect_M14_AXI_ARVALID),
        .M14_AXI_awaddr(axi_peripheral_interconnect_M14_AXI_AWADDR),
        .M14_AXI_awready(axi_peripheral_interconnect_M14_AXI_AWREADY),
        .M14_AXI_awvalid(axi_peripheral_interconnect_M14_AXI_AWVALID),
        .M14_AXI_bready(axi_peripheral_interconnect_M14_AXI_BREADY),
        .M14_AXI_bresp(axi_peripheral_interconnect_M14_AXI_BRESP),
        .M14_AXI_bvalid(axi_peripheral_interconnect_M14_AXI_BVALID),
        .M14_AXI_rdata(axi_peripheral_interconnect_M14_AXI_RDATA),
        .M14_AXI_rready(axi_peripheral_interconnect_M14_AXI_RREADY),
        .M14_AXI_rresp(axi_peripheral_interconnect_M14_AXI_RRESP),
        .M14_AXI_rvalid(axi_peripheral_interconnect_M14_AXI_RVALID),
        .M14_AXI_wdata(axi_peripheral_interconnect_M14_AXI_WDATA),
        .M14_AXI_wready(axi_peripheral_interconnect_M14_AXI_WREADY),
        .M14_AXI_wstrb(axi_peripheral_interconnect_M14_AXI_WSTRB),
        .M14_AXI_wvalid(axi_peripheral_interconnect_M14_AXI_WVALID),
        .S00_ACLK(axi_pcie_0_axi_aclk_out),
        .S00_ARESETN(rst_axi_pcie_0_125M_interconnect_aresetn),
        .S00_AXI_araddr(axi_protocol_convert_1_M_AXI_ARADDR),
        .S00_AXI_arprot(axi_protocol_convert_1_M_AXI_ARPROT),
        .S00_AXI_arready(axi_protocol_convert_1_M_AXI_ARREADY),
        .S00_AXI_arvalid(axi_protocol_convert_1_M_AXI_ARVALID),
        .S00_AXI_awaddr(axi_protocol_convert_1_M_AXI_AWADDR),
        .S00_AXI_awprot(axi_protocol_convert_1_M_AXI_AWPROT),
        .S00_AXI_awready(axi_protocol_convert_1_M_AXI_AWREADY),
        .S00_AXI_awvalid(axi_protocol_convert_1_M_AXI_AWVALID),
        .S00_AXI_bready(axi_protocol_convert_1_M_AXI_BREADY),
        .S00_AXI_bresp(axi_protocol_convert_1_M_AXI_BRESP),
        .S00_AXI_bvalid(axi_protocol_convert_1_M_AXI_BVALID),
        .S00_AXI_rdata(axi_protocol_convert_1_M_AXI_RDATA),
        .S00_AXI_rready(axi_protocol_convert_1_M_AXI_RREADY),
        .S00_AXI_rresp(axi_protocol_convert_1_M_AXI_RRESP),
        .S00_AXI_rvalid(axi_protocol_convert_1_M_AXI_RVALID),
        .S00_AXI_wdata(axi_protocol_convert_1_M_AXI_WDATA),
        .S00_AXI_wready(axi_protocol_convert_1_M_AXI_WREADY),
        .S00_AXI_wstrb(axi_protocol_convert_1_M_AXI_WSTRB),
        .S00_AXI_wvalid(axi_protocol_convert_1_M_AXI_WVALID));
  icyradio_axi_protocol_convert_0_2 axi_protocol_convert_0
       (.aclk(axi_pcie_0_axi_aclk_out),
        .aresetn(rst_axi_pcie_0_125M_interconnect_aresetn),
        .m_axi_araddr(axi_protocol_convert_1_M_AXI_ARADDR),
        .m_axi_arprot(axi_protocol_convert_1_M_AXI_ARPROT),
        .m_axi_arready(axi_protocol_convert_1_M_AXI_ARREADY),
        .m_axi_arvalid(axi_protocol_convert_1_M_AXI_ARVALID),
        .m_axi_awaddr(axi_protocol_convert_1_M_AXI_AWADDR),
        .m_axi_awprot(axi_protocol_convert_1_M_AXI_AWPROT),
        .m_axi_awready(axi_protocol_convert_1_M_AXI_AWREADY),
        .m_axi_awvalid(axi_protocol_convert_1_M_AXI_AWVALID),
        .m_axi_bready(axi_protocol_convert_1_M_AXI_BREADY),
        .m_axi_bresp(axi_protocol_convert_1_M_AXI_BRESP),
        .m_axi_bvalid(axi_protocol_convert_1_M_AXI_BVALID),
        .m_axi_rdata(axi_protocol_convert_1_M_AXI_RDATA),
        .m_axi_rready(axi_protocol_convert_1_M_AXI_RREADY),
        .m_axi_rresp(axi_protocol_convert_1_M_AXI_RRESP),
        .m_axi_rvalid(axi_protocol_convert_1_M_AXI_RVALID),
        .m_axi_wdata(axi_protocol_convert_1_M_AXI_WDATA),
        .m_axi_wready(axi_protocol_convert_1_M_AXI_WREADY),
        .m_axi_wstrb(axi_protocol_convert_1_M_AXI_WSTRB),
        .m_axi_wvalid(axi_protocol_convert_1_M_AXI_WVALID),
        .s_axi_araddr(axi_mem_interconnect_M00_AXI_ARADDR),
        .s_axi_arburst(axi_mem_interconnect_M00_AXI_ARBURST),
        .s_axi_arcache(axi_mem_interconnect_M00_AXI_ARCACHE),
        .s_axi_arlen(axi_mem_interconnect_M00_AXI_ARLEN),
        .s_axi_arlock(axi_mem_interconnect_M00_AXI_ARLOCK),
        .s_axi_arprot(axi_mem_interconnect_M00_AXI_ARPROT),
        .s_axi_arqos(axi_mem_interconnect_M00_AXI_ARQOS),
        .s_axi_arready(axi_mem_interconnect_M00_AXI_ARREADY),
        .s_axi_arregion(axi_mem_interconnect_M00_AXI_ARREGION),
        .s_axi_arsize(axi_mem_interconnect_M00_AXI_ARSIZE),
        .s_axi_arvalid(axi_mem_interconnect_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_mem_interconnect_M00_AXI_AWADDR),
        .s_axi_awburst(axi_mem_interconnect_M00_AXI_AWBURST),
        .s_axi_awcache(axi_mem_interconnect_M00_AXI_AWCACHE),
        .s_axi_awlen(axi_mem_interconnect_M00_AXI_AWLEN),
        .s_axi_awlock(axi_mem_interconnect_M00_AXI_AWLOCK),
        .s_axi_awprot(axi_mem_interconnect_M00_AXI_AWPROT),
        .s_axi_awqos(axi_mem_interconnect_M00_AXI_AWQOS),
        .s_axi_awready(axi_mem_interconnect_M00_AXI_AWREADY),
        .s_axi_awregion(axi_mem_interconnect_M00_AXI_AWREGION),
        .s_axi_awsize(axi_mem_interconnect_M00_AXI_AWSIZE),
        .s_axi_awvalid(axi_mem_interconnect_M00_AXI_AWVALID),
        .s_axi_bready(axi_mem_interconnect_M00_AXI_BREADY),
        .s_axi_bresp(axi_mem_interconnect_M00_AXI_BRESP),
        .s_axi_bvalid(axi_mem_interconnect_M00_AXI_BVALID),
        .s_axi_rdata(axi_mem_interconnect_M00_AXI_RDATA),
        .s_axi_rlast(axi_mem_interconnect_M00_AXI_RLAST),
        .s_axi_rready(axi_mem_interconnect_M00_AXI_RREADY),
        .s_axi_rresp(axi_mem_interconnect_M00_AXI_RRESP),
        .s_axi_rvalid(axi_mem_interconnect_M00_AXI_RVALID),
        .s_axi_wdata(axi_mem_interconnect_M00_AXI_WDATA),
        .s_axi_wlast(axi_mem_interconnect_M00_AXI_WLAST),
        .s_axi_wready(axi_mem_interconnect_M00_AXI_WREADY),
        .s_axi_wstrb(axi_mem_interconnect_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_mem_interconnect_M00_AXI_WVALID));
  icyradio_axi_quad_spi_0_0 axi_quad_spi_0
       (.ext_spi_clk(axi_pcie_0_axi_aclk_out),
        .io0_i(axi_quad_spi_0_SPI_0_IO0_I),
        .io0_o(axi_quad_spi_0_SPI_0_IO0_O),
        .io0_t(axi_quad_spi_0_SPI_0_IO0_T),
        .io1_i(axi_quad_spi_0_SPI_0_IO1_I),
        .io1_o(axi_quad_spi_0_SPI_0_IO1_O),
        .io1_t(axi_quad_spi_0_SPI_0_IO1_T),
        .io2_i(axi_quad_spi_0_SPI_0_IO2_I),
        .io2_o(axi_quad_spi_0_SPI_0_IO2_O),
        .io2_t(axi_quad_spi_0_SPI_0_IO2_T),
        .io3_i(axi_quad_spi_0_SPI_0_IO3_I),
        .io3_o(axi_quad_spi_0_SPI_0_IO3_O),
        .io3_t(axi_quad_spi_0_SPI_0_IO3_T),
        .ip2intc_irpt(axi_quad_spi_0_ip2intc_irpt),
        .s_axi4_aclk(axi_pcie_0_axi_aclk_out),
        .s_axi4_araddr(axi_pcie_interconnect_M01_AXI_ARADDR),
        .s_axi4_arburst(axi_pcie_interconnect_M01_AXI_ARBURST),
        .s_axi4_arcache(axi_pcie_interconnect_M01_AXI_ARCACHE),
        .s_axi4_aresetn(rst_axi_pcie_0_125M_peripheral_aresetn),
        .s_axi4_arlen(axi_pcie_interconnect_M01_AXI_ARLEN),
        .s_axi4_arlock(axi_pcie_interconnect_M01_AXI_ARLOCK),
        .s_axi4_arprot(axi_pcie_interconnect_M01_AXI_ARPROT),
        .s_axi4_arready(axi_pcie_interconnect_M01_AXI_ARREADY),
        .s_axi4_arsize(axi_pcie_interconnect_M01_AXI_ARSIZE),
        .s_axi4_arvalid(axi_pcie_interconnect_M01_AXI_ARVALID),
        .s_axi4_awaddr(axi_pcie_interconnect_M01_AXI_AWADDR),
        .s_axi4_awburst(axi_pcie_interconnect_M01_AXI_AWBURST),
        .s_axi4_awcache(axi_pcie_interconnect_M01_AXI_AWCACHE),
        .s_axi4_awlen(axi_pcie_interconnect_M01_AXI_AWLEN),
        .s_axi4_awlock(axi_pcie_interconnect_M01_AXI_AWLOCK),
        .s_axi4_awprot(axi_pcie_interconnect_M01_AXI_AWPROT),
        .s_axi4_awready(axi_pcie_interconnect_M01_AXI_AWREADY),
        .s_axi4_awsize(axi_pcie_interconnect_M01_AXI_AWSIZE),
        .s_axi4_awvalid(axi_pcie_interconnect_M01_AXI_AWVALID),
        .s_axi4_bready(axi_pcie_interconnect_M01_AXI_BREADY),
        .s_axi4_bresp(axi_pcie_interconnect_M01_AXI_BRESP),
        .s_axi4_bvalid(axi_pcie_interconnect_M01_AXI_BVALID),
        .s_axi4_rdata(axi_pcie_interconnect_M01_AXI_RDATA),
        .s_axi4_rlast(axi_pcie_interconnect_M01_AXI_RLAST),
        .s_axi4_rready(axi_pcie_interconnect_M01_AXI_RREADY),
        .s_axi4_rresp(axi_pcie_interconnect_M01_AXI_RRESP),
        .s_axi4_rvalid(axi_pcie_interconnect_M01_AXI_RVALID),
        .s_axi4_wdata(axi_pcie_interconnect_M01_AXI_WDATA),
        .s_axi4_wlast(axi_pcie_interconnect_M01_AXI_WLAST),
        .s_axi4_wready(axi_pcie_interconnect_M01_AXI_WREADY),
        .s_axi4_wstrb(axi_pcie_interconnect_M01_AXI_WSTRB),
        .s_axi4_wvalid(axi_pcie_interconnect_M01_AXI_WVALID),
        .s_axi_aclk(axi_pcie_0_axi_aclk_out),
        .s_axi_araddr(axi_interconnect_1_M05_AXI_ARADDR[6:0]),
        .s_axi_aresetn(rst_axi_pcie_0_125M_peripheral_aresetn),
        .s_axi_arready(axi_interconnect_1_M05_AXI_ARREADY),
        .s_axi_arvalid(axi_interconnect_1_M05_AXI_ARVALID),
        .s_axi_awaddr(axi_interconnect_1_M05_AXI_AWADDR[6:0]),
        .s_axi_awready(axi_interconnect_1_M05_AXI_AWREADY),
        .s_axi_awvalid(axi_interconnect_1_M05_AXI_AWVALID),
        .s_axi_bready(axi_interconnect_1_M05_AXI_BREADY),
        .s_axi_bresp(axi_interconnect_1_M05_AXI_BRESP),
        .s_axi_bvalid(axi_interconnect_1_M05_AXI_BVALID),
        .s_axi_rdata(axi_interconnect_1_M05_AXI_RDATA),
        .s_axi_rready(axi_interconnect_1_M05_AXI_RREADY),
        .s_axi_rresp(axi_interconnect_1_M05_AXI_RRESP),
        .s_axi_rvalid(axi_interconnect_1_M05_AXI_RVALID),
        .s_axi_wdata(axi_interconnect_1_M05_AXI_WDATA),
        .s_axi_wready(axi_interconnect_1_M05_AXI_WREADY),
        .s_axi_wstrb(axi_interconnect_1_M05_AXI_WSTRB),
        .s_axi_wvalid(axi_interconnect_1_M05_AXI_WVALID),
        .sck_i(axi_quad_spi_0_SPI_0_SCK_I),
        .sck_o(axi_quad_spi_0_SPI_0_SCK_O),
        .sck_t(axi_quad_spi_0_SPI_0_SCK_T),
        .ss_i(axi_quad_spi_0_SPI_0_SS_I),
        .ss_o(axi_quad_spi_0_SPI_0_SS_O),
        .ss_t(axi_quad_spi_0_SPI_0_SS_T));
  icyradio_axi_quad_spi_1_0 axi_quad_spi_1
       (.ext_spi_clk(axi_pcie_0_axi_aclk_out),
        .io0_i(axi_quad_spi_1_SPI_0_IO0_I),
        .io0_o(axi_quad_spi_1_SPI_0_IO0_O),
        .io0_t(axi_quad_spi_1_SPI_0_IO0_T),
        .io1_i(axi_quad_spi_1_SPI_0_IO1_I),
        .io1_o(axi_quad_spi_1_SPI_0_IO1_O),
        .io1_t(axi_quad_spi_1_SPI_0_IO1_T),
        .ip2intc_irpt(axi_quad_spi_1_ip2intc_irpt),
        .s_axi_aclk(axi_pcie_0_axi_aclk_out),
        .s_axi_araddr(axi_peripheral_interconnect_M11_AXI_ARADDR[6:0]),
        .s_axi_aresetn(rst_axi_pcie_0_125M_peripheral_aresetn),
        .s_axi_arready(axi_peripheral_interconnect_M11_AXI_ARREADY),
        .s_axi_arvalid(axi_peripheral_interconnect_M11_AXI_ARVALID),
        .s_axi_awaddr(axi_peripheral_interconnect_M11_AXI_AWADDR[6:0]),
        .s_axi_awready(axi_peripheral_interconnect_M11_AXI_AWREADY),
        .s_axi_awvalid(axi_peripheral_interconnect_M11_AXI_AWVALID),
        .s_axi_bready(axi_peripheral_interconnect_M11_AXI_BREADY),
        .s_axi_bresp(axi_peripheral_interconnect_M11_AXI_BRESP),
        .s_axi_bvalid(axi_peripheral_interconnect_M11_AXI_BVALID),
        .s_axi_rdata(axi_peripheral_interconnect_M11_AXI_RDATA),
        .s_axi_rready(axi_peripheral_interconnect_M11_AXI_RREADY),
        .s_axi_rresp(axi_peripheral_interconnect_M11_AXI_RRESP),
        .s_axi_rvalid(axi_peripheral_interconnect_M11_AXI_RVALID),
        .s_axi_wdata(axi_peripheral_interconnect_M11_AXI_WDATA),
        .s_axi_wready(axi_peripheral_interconnect_M11_AXI_WREADY),
        .s_axi_wstrb(axi_peripheral_interconnect_M11_AXI_WSTRB),
        .s_axi_wvalid(axi_peripheral_interconnect_M11_AXI_WVALID),
        .sck_i(axi_quad_spi_1_SPI_0_SCK_I),
        .sck_o(axi_quad_spi_1_SPI_0_SCK_O),
        .sck_t(axi_quad_spi_1_SPI_0_SCK_T),
        .ss_i(axi_quad_spi_1_SPI_0_SS_I),
        .ss_o(axi_quad_spi_1_SPI_0_SS_O),
        .ss_t(axi_quad_spi_1_SPI_0_SS_T));
  icyradio_axi_quad_spi_1_1 axi_quad_spi_2
       (.ext_spi_clk(axi_pcie_0_axi_aclk_out),
        .io0_i(axi_quad_spi_2_SPI_0_IO0_I),
        .io0_o(axi_quad_spi_2_SPI_0_IO0_O),
        .io0_t(axi_quad_spi_2_SPI_0_IO0_T),
        .io1_i(axi_quad_spi_2_SPI_0_IO1_I),
        .io1_o(axi_quad_spi_2_SPI_0_IO1_O),
        .io1_t(axi_quad_spi_2_SPI_0_IO1_T),
        .ip2intc_irpt(axi_quad_spi_2_ip2intc_irpt),
        .s_axi_aclk(axi_pcie_0_axi_aclk_out),
        .s_axi_araddr(axi_peripheral_interconnect_M13_AXI_ARADDR[6:0]),
        .s_axi_aresetn(rst_axi_pcie_0_125M_peripheral_aresetn),
        .s_axi_arready(axi_peripheral_interconnect_M13_AXI_ARREADY),
        .s_axi_arvalid(axi_peripheral_interconnect_M13_AXI_ARVALID),
        .s_axi_awaddr(axi_peripheral_interconnect_M13_AXI_AWADDR[6:0]),
        .s_axi_awready(axi_peripheral_interconnect_M13_AXI_AWREADY),
        .s_axi_awvalid(axi_peripheral_interconnect_M13_AXI_AWVALID),
        .s_axi_bready(axi_peripheral_interconnect_M13_AXI_BREADY),
        .s_axi_bresp(axi_peripheral_interconnect_M13_AXI_BRESP),
        .s_axi_bvalid(axi_peripheral_interconnect_M13_AXI_BVALID),
        .s_axi_rdata(axi_peripheral_interconnect_M13_AXI_RDATA),
        .s_axi_rready(axi_peripheral_interconnect_M13_AXI_RREADY),
        .s_axi_rresp(axi_peripheral_interconnect_M13_AXI_RRESP),
        .s_axi_rvalid(axi_peripheral_interconnect_M13_AXI_RVALID),
        .s_axi_wdata(axi_peripheral_interconnect_M13_AXI_WDATA),
        .s_axi_wready(axi_peripheral_interconnect_M13_AXI_WREADY),
        .s_axi_wstrb(axi_peripheral_interconnect_M13_AXI_WSTRB),
        .s_axi_wvalid(axi_peripheral_interconnect_M13_AXI_WVALID),
        .sck_i(axi_quad_spi_2_SPI_0_SCK_I),
        .sck_o(axi_quad_spi_2_SPI_0_SCK_O),
        .sck_t(axi_quad_spi_2_SPI_0_SCK_T),
        .ss_i(axi_quad_spi_2_SPI_0_SS_I),
        .ss_o(axi_quad_spi_2_SPI_0_SS_O),
        .ss_t(axi_quad_spi_2_SPI_0_SS_T));
  icyradio_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(FPGA_CLK0_1),
        .clk_out1(clk_wiz_0_clk_out1),
        .clk_out2(clk_wiz_0_delay_ref_clk),
        .resetn(util_vector_logic_2_Res));
  icyradio_irq_concat_0_4 gpio_concat_0
       (.In0(GND_5_dout),
        .In1(TRX_CTRL_OUT_1),
        .In2(gpio_concat_1_dout),
        .In3(GND_3_dout),
        .dout(gpio_concat_0_dout));
  icyradio_gpio_concat_0_0 gpio_concat_1
       (.In0(TRX_5V0_BIAS_T1_OCn_1),
        .In1(TRX_5V0_BIAS_T2_OCn_1),
        .In2(TRX_5V0_PA1_OCn_1),
        .In3(TRX_5V0_PA2_OCn_1),
        .dout(gpio_concat_1_dout));
  icyradio_gpio_concat_0_1 gpio_concat_2
       (.In0(GND_6_dout),
        .In1(SYNTH_LD_1),
        .In2(GND_4_dout),
        .dout(gpio_concat_2_dout));
  icyradio_gpio_slice_pm_i2c_en_0 gpio_slice_clk_mngr_oen
       (.Din(axi_iic_1_gpo),
        .Dout(gpio_slice_clk_mngr_oen_Dout));
  icyradio_gpio_slice_trx_ctrl_out_2 gpio_slice_pm_i2c_en
       (.Din(axi_iic_1_gpo),
        .Dout(gpio_slice_pm_i2c_en_Dout));
  icyradio_gpio_slice_trx_en_agc_1 gpio_slice_synth_ce
       (.Din(axi_gpio_1_gpio_io_o),
        .Dout(gpio_slice_synth_ce_Dout));
  icyradio_gpio_slice_synth_ce_0 gpio_slice_synth_mute
       (.Din(axi_gpio_1_gpio_io_o),
        .Dout(gpio_slice_synth_mute_Dout));
  icyradio_gpio_slice_synth_mute_0 gpio_slice_synth_sync
       (.Din(axi_gpio_1_gpio_io_o),
        .Dout(gpio_slice_synth_sync_Dout));
  icyradio_xlslice_0_0 gpio_slice_trx_ctrl_out
       (.Din(axi_gpio_0_gpio_io_o),
        .Dout(xlslice_0_Dout));
  icyradio_gpio_slice_trx_en_agc_0 gpio_slice_trx_en_agc
       (.Din(axi_gpio_0_gpio_io_o),
        .Dout(gpio_slice_trx_en_agc_Dout));
  icyradio_xlslice_0_1 gpio_slice_trx_sync_in
       (.Din(axi_gpio_0_gpio_io_o),
        .Dout(gpio_slice_trx_sync_in_Dout));
  icyradio_gpio_slice_trx_ctrl_out_1 gpio_slice_trx_up_enable
       (.Din(axi_gpio_0_gpio_io_o),
        .Dout(gpio_slice_trx_up_enable_Dout));
  icyradio_gpio_slice_trx_ctrl_out_0 gpio_slice_trx_up_txnrx
       (.Din(axi_gpio_0_gpio_io_o),
        .Dout(gpio_slice_trx_up_txnrx_Dout));
  icyradio_ext_reset_combiner_0 int_reset_combiner
       (.Op1(mig_7series_0_ui_clk_sync_rst),
        .Op2(CORTEXM3_AXI_0_SYSRESETREQ),
        .Res(int_reset_combiner_Res));
  icyradio_irq_concat_0_2 irq_concat_0
       (.In0(axi_dmac_rf_rx_irq),
        .In1(axi_dmac_rf_tx_irq),
        .In10(xadc_wiz_0_ip2intc_irpt),
        .In11(axi_quad_spi_1_ip2intc_irpt),
        .In12(axi_iic_1_iic2intc_irpt),
        .In13(axi_quad_spi_2_ip2intc_irpt),
        .In14(axi_gpio_1_ip2intc_irpt),
        .In15(GND_0_dout),
        .In2(axi_ad9361_0_gps_pps_irq),
        .In3(axi_gpio_0_ip2intc_irpt),
        .In4(axi_iic_0_iic2intc_irpt),
        .In5(axi_quad_spi_0_ip2intc_irpt),
        .In6(axi_pcie_0_interrupt_out),
        .In7(axi_dmac_i2s_rx_irq),
        .In8(axi_dmac_i2s_tx_irq),
        .In9(GND_0_dout),
        .dout(irq_concat_0_dout));
  icyradio_irq_concat_0_3 irq_concat_1
       (.In0(GND_0_dout),
        .In1(GND_0_dout),
        .In2(GND_0_dout),
        .In3(irq_concat_0_dout),
        .In4(GND_2_dout),
        .dout(irq_concat_1_dout));
  icyradio_logic_and_0_2 logic_and_0
       (.Op1(VCC_0_dout),
        .Op2(logic_or_0_Res),
        .Res(logic_and_0_Res));
  icyradio_logic_and_1_0 logic_and_2
       (.Op1(VCC_0_dout),
        .Op2(axi_dmac_rf_tx_m_axis_valid),
        .Res(logic_and_2_Res));
  icyradio_logic_or_0_2 logic_or_0
       (.Op1(axi_ad9361_0_adc_valid_i0),
        .Op2(axi_ad9361_0_adc_valid_i1),
        .Res(logic_or_0_Res));
  icyradio_logic_or_1_2 logic_or_1
       (.Op1(axi_ad9361_0_dac_valid_i0),
        .Op2(axi_ad9361_0_dac_valid_i1),
        .Res(util_vector_logic_0_Res));
  icyradio_mig_7series_0_0 mig_7series_0
       (.aresetn(rst_mig_7series_0_166M_peripheral_aresetn),
        .clk_ref_i(clk_wiz_0_delay_ref_clk),
        .ddr3_addr(mig_7series_0_DDR3_ADDR),
        .ddr3_ba(mig_7series_0_DDR3_BA),
        .ddr3_cas_n(mig_7series_0_DDR3_CAS_N),
        .ddr3_ck_n(mig_7series_0_DDR3_CK_N),
        .ddr3_ck_p(mig_7series_0_DDR3_CK_P),
        .ddr3_cke(mig_7series_0_DDR3_CKE),
        .ddr3_dm(mig_7series_0_DDR3_DM),
        .ddr3_dq(DDR3_dq[15:0]),
        .ddr3_dqs_n(DDR3_dqs_n[1:0]),
        .ddr3_dqs_p(DDR3_dqs_p[1:0]),
        .ddr3_odt(mig_7series_0_DDR3_ODT),
        .ddr3_ras_n(mig_7series_0_DDR3_RAS_N),
        .ddr3_reset_n(mig_7series_0_DDR3_RESET_N),
        .ddr3_we_n(mig_7series_0_DDR3_WE_N),
        .device_temp_i(xadc_wiz_0_temp_out),
        .mmcm_locked(mig_7series_0_mmcm_locked),
        .s_axi_araddr(axi_pcie_interconnect_M02_AXI_ARADDR),
        .s_axi_arburst(axi_pcie_interconnect_M02_AXI_ARBURST),
        .s_axi_arcache(axi_pcie_interconnect_M02_AXI_ARCACHE),
        .s_axi_arid(axi_pcie_interconnect_M02_AXI_ARID),
        .s_axi_arlen(axi_pcie_interconnect_M02_AXI_ARLEN),
        .s_axi_arlock(axi_pcie_interconnect_M02_AXI_ARLOCK),
        .s_axi_arprot(axi_pcie_interconnect_M02_AXI_ARPROT),
        .s_axi_arqos(axi_pcie_interconnect_M02_AXI_ARQOS),
        .s_axi_arready(axi_pcie_interconnect_M02_AXI_ARREADY),
        .s_axi_arsize(axi_pcie_interconnect_M02_AXI_ARSIZE),
        .s_axi_arvalid(axi_pcie_interconnect_M02_AXI_ARVALID),
        .s_axi_awaddr(axi_pcie_interconnect_M02_AXI_AWADDR),
        .s_axi_awburst(axi_pcie_interconnect_M02_AXI_AWBURST),
        .s_axi_awcache(axi_pcie_interconnect_M02_AXI_AWCACHE),
        .s_axi_awid(axi_pcie_interconnect_M02_AXI_AWID),
        .s_axi_awlen(axi_pcie_interconnect_M02_AXI_AWLEN),
        .s_axi_awlock(axi_pcie_interconnect_M02_AXI_AWLOCK),
        .s_axi_awprot(axi_pcie_interconnect_M02_AXI_AWPROT),
        .s_axi_awqos(axi_pcie_interconnect_M02_AXI_AWQOS),
        .s_axi_awready(axi_pcie_interconnect_M02_AXI_AWREADY),
        .s_axi_awsize(axi_pcie_interconnect_M02_AXI_AWSIZE),
        .s_axi_awvalid(axi_pcie_interconnect_M02_AXI_AWVALID),
        .s_axi_bid(axi_pcie_interconnect_M02_AXI_BID),
        .s_axi_bready(axi_pcie_interconnect_M02_AXI_BREADY),
        .s_axi_bresp(axi_pcie_interconnect_M02_AXI_BRESP),
        .s_axi_bvalid(axi_pcie_interconnect_M02_AXI_BVALID),
        .s_axi_rdata(axi_pcie_interconnect_M02_AXI_RDATA),
        .s_axi_rid(axi_pcie_interconnect_M02_AXI_RID),
        .s_axi_rlast(axi_pcie_interconnect_M02_AXI_RLAST),
        .s_axi_rready(axi_pcie_interconnect_M02_AXI_RREADY),
        .s_axi_rresp(axi_pcie_interconnect_M02_AXI_RRESP),
        .s_axi_rvalid(axi_pcie_interconnect_M02_AXI_RVALID),
        .s_axi_wdata(axi_pcie_interconnect_M02_AXI_WDATA),
        .s_axi_wlast(axi_pcie_interconnect_M02_AXI_WLAST),
        .s_axi_wready(axi_pcie_interconnect_M02_AXI_WREADY),
        .s_axi_wstrb(axi_pcie_interconnect_M02_AXI_WSTRB),
        .s_axi_wvalid(axi_pcie_interconnect_M02_AXI_WVALID),
        .sys_clk_i(clk_wiz_0_clk_out1),
        .sys_rst(util_vector_logic_2_Res),
        .ui_clk(mig_7series_0_ui_clk),
        .ui_clk_sync_rst(mig_7series_0_ui_clk_sync_rst));
  icyradio_picorv32_0_0 picorv32_0
       (.clk(axi_pcie_0_axi_aclk_out),
        .irq(irq_concat_1_dout),
        .mem_axi_araddr(S04_AXI_1_ARADDR),
        .mem_axi_arprot(S04_AXI_1_ARPROT),
        .mem_axi_arready(S04_AXI_1_ARREADY),
        .mem_axi_arvalid(S04_AXI_1_ARVALID),
        .mem_axi_awaddr(S04_AXI_1_AWADDR),
        .mem_axi_awprot(S04_AXI_1_AWPROT),
        .mem_axi_awready(S04_AXI_1_AWREADY),
        .mem_axi_awvalid(S04_AXI_1_AWVALID),
        .mem_axi_bready(S04_AXI_1_BREADY),
        .mem_axi_bvalid(S04_AXI_1_BVALID),
        .mem_axi_rdata(S04_AXI_1_RDATA),
        .mem_axi_rready(S04_AXI_1_RREADY),
        .mem_axi_rvalid(S04_AXI_1_RVALID),
        .mem_axi_wdata(S04_AXI_1_WDATA),
        .mem_axi_wready(S04_AXI_1_WREADY),
        .mem_axi_wstrb(S04_AXI_1_WSTRB),
        .mem_axi_wvalid(S04_AXI_1_WVALID),
        .resetn(rst_axi_pcie_0_125M_interconnect_aresetn));
  icyradio_rst_axi_pcie_0_125M_0 rst_axi_pcie_0_125M
       (.aux_reset_in(CORTEXM3_AXI_0_SYSRESETREQ),
        .dcm_locked(axi_pcie_0_mmcm_lock),
        .ext_reset_in(util_vector_logic_2_Res),
        .interconnect_aresetn(rst_axi_pcie_0_125M_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_axi_pcie_0_125M_peripheral_aresetn),
        .slowest_sync_clk(axi_pcie_0_axi_aclk_out));
  icyradio_rst_mig_7series_0_166M_2 rst_mig_7series_0_166M
       (.aux_reset_in(int_reset_combiner_Res),
        .dcm_locked(mig_7series_0_mmcm_locked),
        .ext_reset_in(util_vector_logic_2_Res),
        .interconnect_aresetn(rst_mig_7series_0_166M_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_mig_7series_0_166M_peripheral_aresetn),
        .slowest_sync_clk(mig_7series_0_ui_clk));
  icyradio_util_ds_buf_0_0 util_ds_buf_0
       (.IBUF_DS_N(PCIe_REFCLK_1_CLK_N),
        .IBUF_DS_P(PCIe_REFCLK_1_CLK_P),
        .IBUF_OUT(util_ds_buf_0_IBUF_OUT));
  icyradio_xadc_wiz_0_0 xadc_wiz_0
       (.ip2intc_irpt(xadc_wiz_0_ip2intc_irpt),
        .s_axi_aclk(axi_pcie_0_axi_aclk_out),
        .s_axi_araddr(axi_peripheral_interconnect_M10_AXI_ARADDR[10:0]),
        .s_axi_aresetn(rst_axi_pcie_0_125M_peripheral_aresetn),
        .s_axi_arready(axi_peripheral_interconnect_M10_AXI_ARREADY),
        .s_axi_arvalid(axi_peripheral_interconnect_M10_AXI_ARVALID),
        .s_axi_awaddr(axi_peripheral_interconnect_M10_AXI_AWADDR[10:0]),
        .s_axi_awready(axi_peripheral_interconnect_M10_AXI_AWREADY),
        .s_axi_awvalid(axi_peripheral_interconnect_M10_AXI_AWVALID),
        .s_axi_bready(axi_peripheral_interconnect_M10_AXI_BREADY),
        .s_axi_bresp(axi_peripheral_interconnect_M10_AXI_BRESP),
        .s_axi_bvalid(axi_peripheral_interconnect_M10_AXI_BVALID),
        .s_axi_rdata(axi_peripheral_interconnect_M10_AXI_RDATA),
        .s_axi_rready(axi_peripheral_interconnect_M10_AXI_RREADY),
        .s_axi_rresp(axi_peripheral_interconnect_M10_AXI_RRESP),
        .s_axi_rvalid(axi_peripheral_interconnect_M10_AXI_RVALID),
        .s_axi_wdata(axi_peripheral_interconnect_M10_AXI_WDATA),
        .s_axi_wready(axi_peripheral_interconnect_M10_AXI_WREADY),
        .s_axi_wstrb(axi_peripheral_interconnect_M10_AXI_WSTRB),
        .s_axi_wvalid(axi_peripheral_interconnect_M10_AXI_WVALID),
        .temp_out(xadc_wiz_0_temp_out),
        .vn_in(Vp_Vn_0_1_V_N),
        .vp_in(Vp_Vn_0_1_V_P));
endmodule

module icyradio_axi_cpu_dma_interconnect_2
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arid,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arregion,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awid,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awregion,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rid,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arburst,
    M01_AXI_arid,
    M01_AXI_arlen,
    M01_AXI_arready,
    M01_AXI_arregion,
    M01_AXI_arsize,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awburst,
    M01_AXI_awid,
    M01_AXI_awlen,
    M01_AXI_awready,
    M01_AXI_awregion,
    M01_AXI_awsize,
    M01_AXI_awvalid,
    M01_AXI_bid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rid,
    M01_AXI_rlast,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wlast,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arlen,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_rdata,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S01_ACLK,
    S01_ARESETN,
    S01_AXI_awaddr,
    S01_AXI_awburst,
    S01_AXI_awcache,
    S01_AXI_awlen,
    S01_AXI_awprot,
    S01_AXI_awready,
    S01_AXI_awsize,
    S01_AXI_awvalid,
    S01_AXI_bready,
    S01_AXI_bresp,
    S01_AXI_bvalid,
    S01_AXI_wdata,
    S01_AXI_wlast,
    S01_AXI_wready,
    S01_AXI_wstrb,
    S01_AXI_wvalid,
    S02_ACLK,
    S02_ARESETN,
    S02_AXI_araddr,
    S02_AXI_arburst,
    S02_AXI_arcache,
    S02_AXI_arlen,
    S02_AXI_arprot,
    S02_AXI_arready,
    S02_AXI_arsize,
    S02_AXI_arvalid,
    S02_AXI_rdata,
    S02_AXI_rlast,
    S02_AXI_rready,
    S02_AXI_rresp,
    S02_AXI_rvalid,
    S03_ACLK,
    S03_ARESETN,
    S03_AXI_awaddr,
    S03_AXI_awburst,
    S03_AXI_awcache,
    S03_AXI_awlen,
    S03_AXI_awprot,
    S03_AXI_awready,
    S03_AXI_awsize,
    S03_AXI_awvalid,
    S03_AXI_bready,
    S03_AXI_bresp,
    S03_AXI_bvalid,
    S03_AXI_wdata,
    S03_AXI_wlast,
    S03_AXI_wready,
    S03_AXI_wstrb,
    S03_AXI_wvalid,
    S04_ACLK,
    S04_ARESETN,
    S04_AXI_araddr,
    S04_AXI_arprot,
    S04_AXI_arready,
    S04_AXI_arvalid,
    S04_AXI_awaddr,
    S04_AXI_awprot,
    S04_AXI_awready,
    S04_AXI_awvalid,
    S04_AXI_bready,
    S04_AXI_bvalid,
    S04_AXI_rdata,
    S04_AXI_rready,
    S04_AXI_rvalid,
    S04_AXI_wdata,
    S04_AXI_wready,
    S04_AXI_wstrb,
    S04_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [2:0]M00_AXI_arid;
  output [7:0]M00_AXI_arlen;
  output [0:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [3:0]M00_AXI_arregion;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [2:0]M00_AXI_awid;
  output [7:0]M00_AXI_awlen;
  output [0:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [3:0]M00_AXI_awregion;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awvalid;
  input [2:0]M00_AXI_bid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [63:0]M00_AXI_rdata;
  input [2:0]M00_AXI_rid;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [63:0]M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [7:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [31:0]M01_AXI_araddr;
  output [1:0]M01_AXI_arburst;
  output [2:0]M01_AXI_arid;
  output [7:0]M01_AXI_arlen;
  input M01_AXI_arready;
  output [3:0]M01_AXI_arregion;
  output [2:0]M01_AXI_arsize;
  output M01_AXI_arvalid;
  output [31:0]M01_AXI_awaddr;
  output [1:0]M01_AXI_awburst;
  output [2:0]M01_AXI_awid;
  output [7:0]M01_AXI_awlen;
  input M01_AXI_awready;
  output [3:0]M01_AXI_awregion;
  output [2:0]M01_AXI_awsize;
  output M01_AXI_awvalid;
  input [2:0]M01_AXI_bid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [63:0]M01_AXI_rdata;
  input [2:0]M01_AXI_rid;
  input M01_AXI_rlast;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [63:0]M01_AXI_wdata;
  output M01_AXI_wlast;
  input M01_AXI_wready;
  output [7:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [30:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [7:0]S00_AXI_arlen;
  input [2:0]S00_AXI_arprot;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  output [63:0]S00_AXI_rdata;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input S01_ACLK;
  input S01_ARESETN;
  input [30:0]S01_AXI_awaddr;
  input [1:0]S01_AXI_awburst;
  input [3:0]S01_AXI_awcache;
  input [7:0]S01_AXI_awlen;
  input [2:0]S01_AXI_awprot;
  output S01_AXI_awready;
  input [2:0]S01_AXI_awsize;
  input S01_AXI_awvalid;
  input S01_AXI_bready;
  output [1:0]S01_AXI_bresp;
  output S01_AXI_bvalid;
  input [63:0]S01_AXI_wdata;
  input S01_AXI_wlast;
  output S01_AXI_wready;
  input [7:0]S01_AXI_wstrb;
  input S01_AXI_wvalid;
  input S02_ACLK;
  input S02_ARESETN;
  input [30:0]S02_AXI_araddr;
  input [1:0]S02_AXI_arburst;
  input [3:0]S02_AXI_arcache;
  input [7:0]S02_AXI_arlen;
  input [2:0]S02_AXI_arprot;
  output S02_AXI_arready;
  input [2:0]S02_AXI_arsize;
  input S02_AXI_arvalid;
  output [63:0]S02_AXI_rdata;
  output S02_AXI_rlast;
  input S02_AXI_rready;
  output [1:0]S02_AXI_rresp;
  output S02_AXI_rvalid;
  input S03_ACLK;
  input S03_ARESETN;
  input [30:0]S03_AXI_awaddr;
  input [1:0]S03_AXI_awburst;
  input [3:0]S03_AXI_awcache;
  input [7:0]S03_AXI_awlen;
  input [2:0]S03_AXI_awprot;
  output S03_AXI_awready;
  input [2:0]S03_AXI_awsize;
  input S03_AXI_awvalid;
  input S03_AXI_bready;
  output [1:0]S03_AXI_bresp;
  output S03_AXI_bvalid;
  input [63:0]S03_AXI_wdata;
  input S03_AXI_wlast;
  output S03_AXI_wready;
  input [7:0]S03_AXI_wstrb;
  input S03_AXI_wvalid;
  input S04_ACLK;
  input S04_ARESETN;
  input [31:0]S04_AXI_araddr;
  input [2:0]S04_AXI_arprot;
  output S04_AXI_arready;
  input S04_AXI_arvalid;
  input [31:0]S04_AXI_awaddr;
  input [2:0]S04_AXI_awprot;
  output S04_AXI_awready;
  input S04_AXI_awvalid;
  input S04_AXI_bready;
  output S04_AXI_bvalid;
  output [31:0]S04_AXI_rdata;
  input S04_AXI_rready;
  output S04_AXI_rvalid;
  input [31:0]S04_AXI_wdata;
  output S04_AXI_wready;
  input [3:0]S04_AXI_wstrb;
  input S04_AXI_wvalid;

  wire axi_cpu_dma_interconnect_ACLK_net;
  wire axi_cpu_dma_interconnect_ARESETN_net;
  wire [30:0]axi_cpu_dma_interconnect_to_s00_couplers_ARADDR;
  wire [1:0]axi_cpu_dma_interconnect_to_s00_couplers_ARBURST;
  wire [3:0]axi_cpu_dma_interconnect_to_s00_couplers_ARCACHE;
  wire [7:0]axi_cpu_dma_interconnect_to_s00_couplers_ARLEN;
  wire [2:0]axi_cpu_dma_interconnect_to_s00_couplers_ARPROT;
  wire axi_cpu_dma_interconnect_to_s00_couplers_ARREADY;
  wire [2:0]axi_cpu_dma_interconnect_to_s00_couplers_ARSIZE;
  wire axi_cpu_dma_interconnect_to_s00_couplers_ARVALID;
  wire [63:0]axi_cpu_dma_interconnect_to_s00_couplers_RDATA;
  wire axi_cpu_dma_interconnect_to_s00_couplers_RLAST;
  wire axi_cpu_dma_interconnect_to_s00_couplers_RREADY;
  wire [1:0]axi_cpu_dma_interconnect_to_s00_couplers_RRESP;
  wire axi_cpu_dma_interconnect_to_s00_couplers_RVALID;
  wire [30:0]axi_cpu_dma_interconnect_to_s01_couplers_AWADDR;
  wire [1:0]axi_cpu_dma_interconnect_to_s01_couplers_AWBURST;
  wire [3:0]axi_cpu_dma_interconnect_to_s01_couplers_AWCACHE;
  wire [7:0]axi_cpu_dma_interconnect_to_s01_couplers_AWLEN;
  wire [2:0]axi_cpu_dma_interconnect_to_s01_couplers_AWPROT;
  wire axi_cpu_dma_interconnect_to_s01_couplers_AWREADY;
  wire [2:0]axi_cpu_dma_interconnect_to_s01_couplers_AWSIZE;
  wire axi_cpu_dma_interconnect_to_s01_couplers_AWVALID;
  wire axi_cpu_dma_interconnect_to_s01_couplers_BREADY;
  wire [1:0]axi_cpu_dma_interconnect_to_s01_couplers_BRESP;
  wire axi_cpu_dma_interconnect_to_s01_couplers_BVALID;
  wire [63:0]axi_cpu_dma_interconnect_to_s01_couplers_WDATA;
  wire axi_cpu_dma_interconnect_to_s01_couplers_WLAST;
  wire axi_cpu_dma_interconnect_to_s01_couplers_WREADY;
  wire [7:0]axi_cpu_dma_interconnect_to_s01_couplers_WSTRB;
  wire axi_cpu_dma_interconnect_to_s01_couplers_WVALID;
  wire [30:0]axi_cpu_dma_interconnect_to_s02_couplers_ARADDR;
  wire [1:0]axi_cpu_dma_interconnect_to_s02_couplers_ARBURST;
  wire [3:0]axi_cpu_dma_interconnect_to_s02_couplers_ARCACHE;
  wire [7:0]axi_cpu_dma_interconnect_to_s02_couplers_ARLEN;
  wire [2:0]axi_cpu_dma_interconnect_to_s02_couplers_ARPROT;
  wire axi_cpu_dma_interconnect_to_s02_couplers_ARREADY;
  wire [2:0]axi_cpu_dma_interconnect_to_s02_couplers_ARSIZE;
  wire axi_cpu_dma_interconnect_to_s02_couplers_ARVALID;
  wire [63:0]axi_cpu_dma_interconnect_to_s02_couplers_RDATA;
  wire axi_cpu_dma_interconnect_to_s02_couplers_RLAST;
  wire axi_cpu_dma_interconnect_to_s02_couplers_RREADY;
  wire [1:0]axi_cpu_dma_interconnect_to_s02_couplers_RRESP;
  wire axi_cpu_dma_interconnect_to_s02_couplers_RVALID;
  wire [30:0]axi_cpu_dma_interconnect_to_s03_couplers_AWADDR;
  wire [1:0]axi_cpu_dma_interconnect_to_s03_couplers_AWBURST;
  wire [3:0]axi_cpu_dma_interconnect_to_s03_couplers_AWCACHE;
  wire [7:0]axi_cpu_dma_interconnect_to_s03_couplers_AWLEN;
  wire [2:0]axi_cpu_dma_interconnect_to_s03_couplers_AWPROT;
  wire axi_cpu_dma_interconnect_to_s03_couplers_AWREADY;
  wire [2:0]axi_cpu_dma_interconnect_to_s03_couplers_AWSIZE;
  wire axi_cpu_dma_interconnect_to_s03_couplers_AWVALID;
  wire axi_cpu_dma_interconnect_to_s03_couplers_BREADY;
  wire [1:0]axi_cpu_dma_interconnect_to_s03_couplers_BRESP;
  wire axi_cpu_dma_interconnect_to_s03_couplers_BVALID;
  wire [63:0]axi_cpu_dma_interconnect_to_s03_couplers_WDATA;
  wire axi_cpu_dma_interconnect_to_s03_couplers_WLAST;
  wire axi_cpu_dma_interconnect_to_s03_couplers_WREADY;
  wire [7:0]axi_cpu_dma_interconnect_to_s03_couplers_WSTRB;
  wire axi_cpu_dma_interconnect_to_s03_couplers_WVALID;
  wire [31:0]axi_cpu_dma_interconnect_to_s04_couplers_ARADDR;
  wire [2:0]axi_cpu_dma_interconnect_to_s04_couplers_ARPROT;
  wire axi_cpu_dma_interconnect_to_s04_couplers_ARREADY;
  wire axi_cpu_dma_interconnect_to_s04_couplers_ARVALID;
  wire [31:0]axi_cpu_dma_interconnect_to_s04_couplers_AWADDR;
  wire [2:0]axi_cpu_dma_interconnect_to_s04_couplers_AWPROT;
  wire axi_cpu_dma_interconnect_to_s04_couplers_AWREADY;
  wire axi_cpu_dma_interconnect_to_s04_couplers_AWVALID;
  wire axi_cpu_dma_interconnect_to_s04_couplers_BREADY;
  wire axi_cpu_dma_interconnect_to_s04_couplers_BVALID;
  wire [31:0]axi_cpu_dma_interconnect_to_s04_couplers_RDATA;
  wire axi_cpu_dma_interconnect_to_s04_couplers_RREADY;
  wire axi_cpu_dma_interconnect_to_s04_couplers_RVALID;
  wire [31:0]axi_cpu_dma_interconnect_to_s04_couplers_WDATA;
  wire axi_cpu_dma_interconnect_to_s04_couplers_WREADY;
  wire [3:0]axi_cpu_dma_interconnect_to_s04_couplers_WSTRB;
  wire axi_cpu_dma_interconnect_to_s04_couplers_WVALID;
  wire [31:0]m00_couplers_to_axi_cpu_dma_interconnect_ARADDR;
  wire [1:0]m00_couplers_to_axi_cpu_dma_interconnect_ARBURST;
  wire [3:0]m00_couplers_to_axi_cpu_dma_interconnect_ARCACHE;
  wire [2:0]m00_couplers_to_axi_cpu_dma_interconnect_ARID;
  wire [7:0]m00_couplers_to_axi_cpu_dma_interconnect_ARLEN;
  wire [0:0]m00_couplers_to_axi_cpu_dma_interconnect_ARLOCK;
  wire [2:0]m00_couplers_to_axi_cpu_dma_interconnect_ARPROT;
  wire [3:0]m00_couplers_to_axi_cpu_dma_interconnect_ARQOS;
  wire m00_couplers_to_axi_cpu_dma_interconnect_ARREADY;
  wire [3:0]m00_couplers_to_axi_cpu_dma_interconnect_ARREGION;
  wire [2:0]m00_couplers_to_axi_cpu_dma_interconnect_ARSIZE;
  wire m00_couplers_to_axi_cpu_dma_interconnect_ARVALID;
  wire [31:0]m00_couplers_to_axi_cpu_dma_interconnect_AWADDR;
  wire [1:0]m00_couplers_to_axi_cpu_dma_interconnect_AWBURST;
  wire [3:0]m00_couplers_to_axi_cpu_dma_interconnect_AWCACHE;
  wire [2:0]m00_couplers_to_axi_cpu_dma_interconnect_AWID;
  wire [7:0]m00_couplers_to_axi_cpu_dma_interconnect_AWLEN;
  wire [0:0]m00_couplers_to_axi_cpu_dma_interconnect_AWLOCK;
  wire [2:0]m00_couplers_to_axi_cpu_dma_interconnect_AWPROT;
  wire [3:0]m00_couplers_to_axi_cpu_dma_interconnect_AWQOS;
  wire m00_couplers_to_axi_cpu_dma_interconnect_AWREADY;
  wire [3:0]m00_couplers_to_axi_cpu_dma_interconnect_AWREGION;
  wire [2:0]m00_couplers_to_axi_cpu_dma_interconnect_AWSIZE;
  wire m00_couplers_to_axi_cpu_dma_interconnect_AWVALID;
  wire [2:0]m00_couplers_to_axi_cpu_dma_interconnect_BID;
  wire m00_couplers_to_axi_cpu_dma_interconnect_BREADY;
  wire [1:0]m00_couplers_to_axi_cpu_dma_interconnect_BRESP;
  wire m00_couplers_to_axi_cpu_dma_interconnect_BVALID;
  wire [63:0]m00_couplers_to_axi_cpu_dma_interconnect_RDATA;
  wire [2:0]m00_couplers_to_axi_cpu_dma_interconnect_RID;
  wire m00_couplers_to_axi_cpu_dma_interconnect_RLAST;
  wire m00_couplers_to_axi_cpu_dma_interconnect_RREADY;
  wire [1:0]m00_couplers_to_axi_cpu_dma_interconnect_RRESP;
  wire m00_couplers_to_axi_cpu_dma_interconnect_RVALID;
  wire [63:0]m00_couplers_to_axi_cpu_dma_interconnect_WDATA;
  wire m00_couplers_to_axi_cpu_dma_interconnect_WLAST;
  wire m00_couplers_to_axi_cpu_dma_interconnect_WREADY;
  wire [7:0]m00_couplers_to_axi_cpu_dma_interconnect_WSTRB;
  wire m00_couplers_to_axi_cpu_dma_interconnect_WVALID;
  wire [31:0]m01_couplers_to_axi_cpu_dma_interconnect_ARADDR;
  wire [1:0]m01_couplers_to_axi_cpu_dma_interconnect_ARBURST;
  wire [2:0]m01_couplers_to_axi_cpu_dma_interconnect_ARID;
  wire [7:0]m01_couplers_to_axi_cpu_dma_interconnect_ARLEN;
  wire m01_couplers_to_axi_cpu_dma_interconnect_ARREADY;
  wire [3:0]m01_couplers_to_axi_cpu_dma_interconnect_ARREGION;
  wire [2:0]m01_couplers_to_axi_cpu_dma_interconnect_ARSIZE;
  wire m01_couplers_to_axi_cpu_dma_interconnect_ARVALID;
  wire [31:0]m01_couplers_to_axi_cpu_dma_interconnect_AWADDR;
  wire [1:0]m01_couplers_to_axi_cpu_dma_interconnect_AWBURST;
  wire [2:0]m01_couplers_to_axi_cpu_dma_interconnect_AWID;
  wire [7:0]m01_couplers_to_axi_cpu_dma_interconnect_AWLEN;
  wire m01_couplers_to_axi_cpu_dma_interconnect_AWREADY;
  wire [3:0]m01_couplers_to_axi_cpu_dma_interconnect_AWREGION;
  wire [2:0]m01_couplers_to_axi_cpu_dma_interconnect_AWSIZE;
  wire m01_couplers_to_axi_cpu_dma_interconnect_AWVALID;
  wire [2:0]m01_couplers_to_axi_cpu_dma_interconnect_BID;
  wire m01_couplers_to_axi_cpu_dma_interconnect_BREADY;
  wire [1:0]m01_couplers_to_axi_cpu_dma_interconnect_BRESP;
  wire m01_couplers_to_axi_cpu_dma_interconnect_BVALID;
  wire [63:0]m01_couplers_to_axi_cpu_dma_interconnect_RDATA;
  wire [2:0]m01_couplers_to_axi_cpu_dma_interconnect_RID;
  wire m01_couplers_to_axi_cpu_dma_interconnect_RLAST;
  wire m01_couplers_to_axi_cpu_dma_interconnect_RREADY;
  wire [1:0]m01_couplers_to_axi_cpu_dma_interconnect_RRESP;
  wire m01_couplers_to_axi_cpu_dma_interconnect_RVALID;
  wire [63:0]m01_couplers_to_axi_cpu_dma_interconnect_WDATA;
  wire m01_couplers_to_axi_cpu_dma_interconnect_WLAST;
  wire m01_couplers_to_axi_cpu_dma_interconnect_WREADY;
  wire [7:0]m01_couplers_to_axi_cpu_dma_interconnect_WSTRB;
  wire m01_couplers_to_axi_cpu_dma_interconnect_WVALID;
  wire [30:0]s00_couplers_to_xbar_ARADDR;
  wire [1:0]s00_couplers_to_xbar_ARBURST;
  wire [3:0]s00_couplers_to_xbar_ARCACHE;
  wire [7:0]s00_couplers_to_xbar_ARLEN;
  wire [0:0]s00_couplers_to_xbar_ARLOCK;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [3:0]s00_couplers_to_xbar_ARQOS;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [2:0]s00_couplers_to_xbar_ARSIZE;
  wire s00_couplers_to_xbar_ARVALID;
  wire [63:0]s00_couplers_to_xbar_RDATA;
  wire [0:0]s00_couplers_to_xbar_RLAST;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [30:0]s01_couplers_to_xbar_AWADDR;
  wire [1:0]s01_couplers_to_xbar_AWBURST;
  wire [3:0]s01_couplers_to_xbar_AWCACHE;
  wire [7:0]s01_couplers_to_xbar_AWLEN;
  wire [0:0]s01_couplers_to_xbar_AWLOCK;
  wire [2:0]s01_couplers_to_xbar_AWPROT;
  wire [3:0]s01_couplers_to_xbar_AWQOS;
  wire [1:1]s01_couplers_to_xbar_AWREADY;
  wire [2:0]s01_couplers_to_xbar_AWSIZE;
  wire s01_couplers_to_xbar_AWVALID;
  wire s01_couplers_to_xbar_BREADY;
  wire [3:2]s01_couplers_to_xbar_BRESP;
  wire [1:1]s01_couplers_to_xbar_BVALID;
  wire [63:0]s01_couplers_to_xbar_WDATA;
  wire s01_couplers_to_xbar_WLAST;
  wire [1:1]s01_couplers_to_xbar_WREADY;
  wire [7:0]s01_couplers_to_xbar_WSTRB;
  wire s01_couplers_to_xbar_WVALID;
  wire [30:0]s02_couplers_to_xbar_ARADDR;
  wire [1:0]s02_couplers_to_xbar_ARBURST;
  wire [3:0]s02_couplers_to_xbar_ARCACHE;
  wire [7:0]s02_couplers_to_xbar_ARLEN;
  wire [0:0]s02_couplers_to_xbar_ARLOCK;
  wire [2:0]s02_couplers_to_xbar_ARPROT;
  wire [3:0]s02_couplers_to_xbar_ARQOS;
  wire [2:2]s02_couplers_to_xbar_ARREADY;
  wire [2:0]s02_couplers_to_xbar_ARSIZE;
  wire s02_couplers_to_xbar_ARVALID;
  wire [191:128]s02_couplers_to_xbar_RDATA;
  wire [2:2]s02_couplers_to_xbar_RLAST;
  wire s02_couplers_to_xbar_RREADY;
  wire [5:4]s02_couplers_to_xbar_RRESP;
  wire [2:2]s02_couplers_to_xbar_RVALID;
  wire [30:0]s03_couplers_to_xbar_AWADDR;
  wire [1:0]s03_couplers_to_xbar_AWBURST;
  wire [3:0]s03_couplers_to_xbar_AWCACHE;
  wire [7:0]s03_couplers_to_xbar_AWLEN;
  wire [0:0]s03_couplers_to_xbar_AWLOCK;
  wire [2:0]s03_couplers_to_xbar_AWPROT;
  wire [3:0]s03_couplers_to_xbar_AWQOS;
  wire [3:3]s03_couplers_to_xbar_AWREADY;
  wire [2:0]s03_couplers_to_xbar_AWSIZE;
  wire s03_couplers_to_xbar_AWVALID;
  wire s03_couplers_to_xbar_BREADY;
  wire [7:6]s03_couplers_to_xbar_BRESP;
  wire [3:3]s03_couplers_to_xbar_BVALID;
  wire [63:0]s03_couplers_to_xbar_WDATA;
  wire s03_couplers_to_xbar_WLAST;
  wire [3:3]s03_couplers_to_xbar_WREADY;
  wire [7:0]s03_couplers_to_xbar_WSTRB;
  wire s03_couplers_to_xbar_WVALID;
  wire [31:0]s04_couplers_to_xbar_ARADDR;
  wire [1:0]s04_couplers_to_xbar_ARBURST;
  wire [3:0]s04_couplers_to_xbar_ARCACHE;
  wire [7:0]s04_couplers_to_xbar_ARLEN;
  wire [0:0]s04_couplers_to_xbar_ARLOCK;
  wire [2:0]s04_couplers_to_xbar_ARPROT;
  wire [3:0]s04_couplers_to_xbar_ARQOS;
  wire [4:4]s04_couplers_to_xbar_ARREADY;
  wire [2:0]s04_couplers_to_xbar_ARSIZE;
  wire s04_couplers_to_xbar_ARVALID;
  wire [31:0]s04_couplers_to_xbar_AWADDR;
  wire [1:0]s04_couplers_to_xbar_AWBURST;
  wire [3:0]s04_couplers_to_xbar_AWCACHE;
  wire [7:0]s04_couplers_to_xbar_AWLEN;
  wire [0:0]s04_couplers_to_xbar_AWLOCK;
  wire [2:0]s04_couplers_to_xbar_AWPROT;
  wire [3:0]s04_couplers_to_xbar_AWQOS;
  wire [4:4]s04_couplers_to_xbar_AWREADY;
  wire [2:0]s04_couplers_to_xbar_AWSIZE;
  wire s04_couplers_to_xbar_AWVALID;
  wire s04_couplers_to_xbar_BREADY;
  wire [9:8]s04_couplers_to_xbar_BRESP;
  wire [4:4]s04_couplers_to_xbar_BVALID;
  wire [319:256]s04_couplers_to_xbar_RDATA;
  wire [4:4]s04_couplers_to_xbar_RLAST;
  wire s04_couplers_to_xbar_RREADY;
  wire [9:8]s04_couplers_to_xbar_RRESP;
  wire [4:4]s04_couplers_to_xbar_RVALID;
  wire [63:0]s04_couplers_to_xbar_WDATA;
  wire s04_couplers_to_xbar_WLAST;
  wire [4:4]s04_couplers_to_xbar_WREADY;
  wire [7:0]s04_couplers_to_xbar_WSTRB;
  wire s04_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [1:0]xbar_to_m00_couplers_ARBURST;
  wire [3:0]xbar_to_m00_couplers_ARCACHE;
  wire [2:0]xbar_to_m00_couplers_ARID;
  wire [7:0]xbar_to_m00_couplers_ARLEN;
  wire [0:0]xbar_to_m00_couplers_ARLOCK;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire [3:0]xbar_to_m00_couplers_ARQOS;
  wire xbar_to_m00_couplers_ARREADY;
  wire [3:0]xbar_to_m00_couplers_ARREGION;
  wire [2:0]xbar_to_m00_couplers_ARSIZE;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [1:0]xbar_to_m00_couplers_AWBURST;
  wire [3:0]xbar_to_m00_couplers_AWCACHE;
  wire [2:0]xbar_to_m00_couplers_AWID;
  wire [7:0]xbar_to_m00_couplers_AWLEN;
  wire [0:0]xbar_to_m00_couplers_AWLOCK;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire [3:0]xbar_to_m00_couplers_AWQOS;
  wire xbar_to_m00_couplers_AWREADY;
  wire [3:0]xbar_to_m00_couplers_AWREGION;
  wire [2:0]xbar_to_m00_couplers_AWSIZE;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [2:0]xbar_to_m00_couplers_BID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [63:0]xbar_to_m00_couplers_RDATA;
  wire [2:0]xbar_to_m00_couplers_RID;
  wire xbar_to_m00_couplers_RLAST;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [63:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WLAST;
  wire xbar_to_m00_couplers_WREADY;
  wire [7:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [63:32]xbar_to_m01_couplers_ARADDR;
  wire [3:2]xbar_to_m01_couplers_ARBURST;
  wire [5:3]xbar_to_m01_couplers_ARID;
  wire [15:8]xbar_to_m01_couplers_ARLEN;
  wire xbar_to_m01_couplers_ARREADY;
  wire [7:4]xbar_to_m01_couplers_ARREGION;
  wire [5:3]xbar_to_m01_couplers_ARSIZE;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
  wire [3:2]xbar_to_m01_couplers_AWBURST;
  wire [5:3]xbar_to_m01_couplers_AWID;
  wire [15:8]xbar_to_m01_couplers_AWLEN;
  wire xbar_to_m01_couplers_AWREADY;
  wire [7:4]xbar_to_m01_couplers_AWREGION;
  wire [5:3]xbar_to_m01_couplers_AWSIZE;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [2:0]xbar_to_m01_couplers_BID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [63:0]xbar_to_m01_couplers_RDATA;
  wire [2:0]xbar_to_m01_couplers_RID;
  wire xbar_to_m01_couplers_RLAST;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [127:64]xbar_to_m01_couplers_WDATA;
  wire [1:1]xbar_to_m01_couplers_WLAST;
  wire xbar_to_m01_couplers_WREADY;
  wire [15:8]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [4:0]NLW_xbar_s_axi_arready_UNCONNECTED;
  wire [4:0]NLW_xbar_s_axi_awready_UNCONNECTED;
  wire [9:0]NLW_xbar_s_axi_bresp_UNCONNECTED;
  wire [4:0]NLW_xbar_s_axi_bvalid_UNCONNECTED;
  wire [319:0]NLW_xbar_s_axi_rdata_UNCONNECTED;
  wire [4:0]NLW_xbar_s_axi_rlast_UNCONNECTED;
  wire [9:0]NLW_xbar_s_axi_rresp_UNCONNECTED;
  wire [4:0]NLW_xbar_s_axi_rvalid_UNCONNECTED;
  wire [4:0]NLW_xbar_s_axi_wready_UNCONNECTED;

  assign M00_AXI_araddr[31:0] = m00_couplers_to_axi_cpu_dma_interconnect_ARADDR;
  assign M00_AXI_arburst[1:0] = m00_couplers_to_axi_cpu_dma_interconnect_ARBURST;
  assign M00_AXI_arcache[3:0] = m00_couplers_to_axi_cpu_dma_interconnect_ARCACHE;
  assign M00_AXI_arid[2:0] = m00_couplers_to_axi_cpu_dma_interconnect_ARID;
  assign M00_AXI_arlen[7:0] = m00_couplers_to_axi_cpu_dma_interconnect_ARLEN;
  assign M00_AXI_arlock[0] = m00_couplers_to_axi_cpu_dma_interconnect_ARLOCK;
  assign M00_AXI_arprot[2:0] = m00_couplers_to_axi_cpu_dma_interconnect_ARPROT;
  assign M00_AXI_arqos[3:0] = m00_couplers_to_axi_cpu_dma_interconnect_ARQOS;
  assign M00_AXI_arregion[3:0] = m00_couplers_to_axi_cpu_dma_interconnect_ARREGION;
  assign M00_AXI_arsize[2:0] = m00_couplers_to_axi_cpu_dma_interconnect_ARSIZE;
  assign M00_AXI_arvalid = m00_couplers_to_axi_cpu_dma_interconnect_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_axi_cpu_dma_interconnect_AWADDR;
  assign M00_AXI_awburst[1:0] = m00_couplers_to_axi_cpu_dma_interconnect_AWBURST;
  assign M00_AXI_awcache[3:0] = m00_couplers_to_axi_cpu_dma_interconnect_AWCACHE;
  assign M00_AXI_awid[2:0] = m00_couplers_to_axi_cpu_dma_interconnect_AWID;
  assign M00_AXI_awlen[7:0] = m00_couplers_to_axi_cpu_dma_interconnect_AWLEN;
  assign M00_AXI_awlock[0] = m00_couplers_to_axi_cpu_dma_interconnect_AWLOCK;
  assign M00_AXI_awprot[2:0] = m00_couplers_to_axi_cpu_dma_interconnect_AWPROT;
  assign M00_AXI_awqos[3:0] = m00_couplers_to_axi_cpu_dma_interconnect_AWQOS;
  assign M00_AXI_awregion[3:0] = m00_couplers_to_axi_cpu_dma_interconnect_AWREGION;
  assign M00_AXI_awsize[2:0] = m00_couplers_to_axi_cpu_dma_interconnect_AWSIZE;
  assign M00_AXI_awvalid = m00_couplers_to_axi_cpu_dma_interconnect_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_axi_cpu_dma_interconnect_BREADY;
  assign M00_AXI_rready = m00_couplers_to_axi_cpu_dma_interconnect_RREADY;
  assign M00_AXI_wdata[63:0] = m00_couplers_to_axi_cpu_dma_interconnect_WDATA;
  assign M00_AXI_wlast = m00_couplers_to_axi_cpu_dma_interconnect_WLAST;
  assign M00_AXI_wstrb[7:0] = m00_couplers_to_axi_cpu_dma_interconnect_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_axi_cpu_dma_interconnect_WVALID;
  assign M01_AXI_araddr[31:0] = m01_couplers_to_axi_cpu_dma_interconnect_ARADDR;
  assign M01_AXI_arburst[1:0] = m01_couplers_to_axi_cpu_dma_interconnect_ARBURST;
  assign M01_AXI_arid[2:0] = m01_couplers_to_axi_cpu_dma_interconnect_ARID;
  assign M01_AXI_arlen[7:0] = m01_couplers_to_axi_cpu_dma_interconnect_ARLEN;
  assign M01_AXI_arregion[3:0] = m01_couplers_to_axi_cpu_dma_interconnect_ARREGION;
  assign M01_AXI_arsize[2:0] = m01_couplers_to_axi_cpu_dma_interconnect_ARSIZE;
  assign M01_AXI_arvalid = m01_couplers_to_axi_cpu_dma_interconnect_ARVALID;
  assign M01_AXI_awaddr[31:0] = m01_couplers_to_axi_cpu_dma_interconnect_AWADDR;
  assign M01_AXI_awburst[1:0] = m01_couplers_to_axi_cpu_dma_interconnect_AWBURST;
  assign M01_AXI_awid[2:0] = m01_couplers_to_axi_cpu_dma_interconnect_AWID;
  assign M01_AXI_awlen[7:0] = m01_couplers_to_axi_cpu_dma_interconnect_AWLEN;
  assign M01_AXI_awregion[3:0] = m01_couplers_to_axi_cpu_dma_interconnect_AWREGION;
  assign M01_AXI_awsize[2:0] = m01_couplers_to_axi_cpu_dma_interconnect_AWSIZE;
  assign M01_AXI_awvalid = m01_couplers_to_axi_cpu_dma_interconnect_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_axi_cpu_dma_interconnect_BREADY;
  assign M01_AXI_rready = m01_couplers_to_axi_cpu_dma_interconnect_RREADY;
  assign M01_AXI_wdata[63:0] = m01_couplers_to_axi_cpu_dma_interconnect_WDATA;
  assign M01_AXI_wlast = m01_couplers_to_axi_cpu_dma_interconnect_WLAST;
  assign M01_AXI_wstrb[7:0] = m01_couplers_to_axi_cpu_dma_interconnect_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_axi_cpu_dma_interconnect_WVALID;
  assign S00_AXI_arready = axi_cpu_dma_interconnect_to_s00_couplers_ARREADY;
  assign S00_AXI_rdata[63:0] = axi_cpu_dma_interconnect_to_s00_couplers_RDATA;
  assign S00_AXI_rlast = axi_cpu_dma_interconnect_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_cpu_dma_interconnect_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_cpu_dma_interconnect_to_s00_couplers_RVALID;
  assign S01_AXI_awready = axi_cpu_dma_interconnect_to_s01_couplers_AWREADY;
  assign S01_AXI_bresp[1:0] = axi_cpu_dma_interconnect_to_s01_couplers_BRESP;
  assign S01_AXI_bvalid = axi_cpu_dma_interconnect_to_s01_couplers_BVALID;
  assign S01_AXI_wready = axi_cpu_dma_interconnect_to_s01_couplers_WREADY;
  assign S02_AXI_arready = axi_cpu_dma_interconnect_to_s02_couplers_ARREADY;
  assign S02_AXI_rdata[63:0] = axi_cpu_dma_interconnect_to_s02_couplers_RDATA;
  assign S02_AXI_rlast = axi_cpu_dma_interconnect_to_s02_couplers_RLAST;
  assign S02_AXI_rresp[1:0] = axi_cpu_dma_interconnect_to_s02_couplers_RRESP;
  assign S02_AXI_rvalid = axi_cpu_dma_interconnect_to_s02_couplers_RVALID;
  assign S03_AXI_awready = axi_cpu_dma_interconnect_to_s03_couplers_AWREADY;
  assign S03_AXI_bresp[1:0] = axi_cpu_dma_interconnect_to_s03_couplers_BRESP;
  assign S03_AXI_bvalid = axi_cpu_dma_interconnect_to_s03_couplers_BVALID;
  assign S03_AXI_wready = axi_cpu_dma_interconnect_to_s03_couplers_WREADY;
  assign S04_AXI_arready = axi_cpu_dma_interconnect_to_s04_couplers_ARREADY;
  assign S04_AXI_awready = axi_cpu_dma_interconnect_to_s04_couplers_AWREADY;
  assign S04_AXI_bvalid = axi_cpu_dma_interconnect_to_s04_couplers_BVALID;
  assign S04_AXI_rdata[31:0] = axi_cpu_dma_interconnect_to_s04_couplers_RDATA;
  assign S04_AXI_rvalid = axi_cpu_dma_interconnect_to_s04_couplers_RVALID;
  assign S04_AXI_wready = axi_cpu_dma_interconnect_to_s04_couplers_WREADY;
  assign axi_cpu_dma_interconnect_ACLK_net = ACLK;
  assign axi_cpu_dma_interconnect_ARESETN_net = ARESETN;
  assign axi_cpu_dma_interconnect_to_s00_couplers_ARADDR = S00_AXI_araddr[30:0];
  assign axi_cpu_dma_interconnect_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_cpu_dma_interconnect_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_cpu_dma_interconnect_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign axi_cpu_dma_interconnect_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_cpu_dma_interconnect_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_cpu_dma_interconnect_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_cpu_dma_interconnect_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_cpu_dma_interconnect_to_s01_couplers_AWADDR = S01_AXI_awaddr[30:0];
  assign axi_cpu_dma_interconnect_to_s01_couplers_AWBURST = S01_AXI_awburst[1:0];
  assign axi_cpu_dma_interconnect_to_s01_couplers_AWCACHE = S01_AXI_awcache[3:0];
  assign axi_cpu_dma_interconnect_to_s01_couplers_AWLEN = S01_AXI_awlen[7:0];
  assign axi_cpu_dma_interconnect_to_s01_couplers_AWPROT = S01_AXI_awprot[2:0];
  assign axi_cpu_dma_interconnect_to_s01_couplers_AWSIZE = S01_AXI_awsize[2:0];
  assign axi_cpu_dma_interconnect_to_s01_couplers_AWVALID = S01_AXI_awvalid;
  assign axi_cpu_dma_interconnect_to_s01_couplers_BREADY = S01_AXI_bready;
  assign axi_cpu_dma_interconnect_to_s01_couplers_WDATA = S01_AXI_wdata[63:0];
  assign axi_cpu_dma_interconnect_to_s01_couplers_WLAST = S01_AXI_wlast;
  assign axi_cpu_dma_interconnect_to_s01_couplers_WSTRB = S01_AXI_wstrb[7:0];
  assign axi_cpu_dma_interconnect_to_s01_couplers_WVALID = S01_AXI_wvalid;
  assign axi_cpu_dma_interconnect_to_s02_couplers_ARADDR = S02_AXI_araddr[30:0];
  assign axi_cpu_dma_interconnect_to_s02_couplers_ARBURST = S02_AXI_arburst[1:0];
  assign axi_cpu_dma_interconnect_to_s02_couplers_ARCACHE = S02_AXI_arcache[3:0];
  assign axi_cpu_dma_interconnect_to_s02_couplers_ARLEN = S02_AXI_arlen[7:0];
  assign axi_cpu_dma_interconnect_to_s02_couplers_ARPROT = S02_AXI_arprot[2:0];
  assign axi_cpu_dma_interconnect_to_s02_couplers_ARSIZE = S02_AXI_arsize[2:0];
  assign axi_cpu_dma_interconnect_to_s02_couplers_ARVALID = S02_AXI_arvalid;
  assign axi_cpu_dma_interconnect_to_s02_couplers_RREADY = S02_AXI_rready;
  assign axi_cpu_dma_interconnect_to_s03_couplers_AWADDR = S03_AXI_awaddr[30:0];
  assign axi_cpu_dma_interconnect_to_s03_couplers_AWBURST = S03_AXI_awburst[1:0];
  assign axi_cpu_dma_interconnect_to_s03_couplers_AWCACHE = S03_AXI_awcache[3:0];
  assign axi_cpu_dma_interconnect_to_s03_couplers_AWLEN = S03_AXI_awlen[7:0];
  assign axi_cpu_dma_interconnect_to_s03_couplers_AWPROT = S03_AXI_awprot[2:0];
  assign axi_cpu_dma_interconnect_to_s03_couplers_AWSIZE = S03_AXI_awsize[2:0];
  assign axi_cpu_dma_interconnect_to_s03_couplers_AWVALID = S03_AXI_awvalid;
  assign axi_cpu_dma_interconnect_to_s03_couplers_BREADY = S03_AXI_bready;
  assign axi_cpu_dma_interconnect_to_s03_couplers_WDATA = S03_AXI_wdata[63:0];
  assign axi_cpu_dma_interconnect_to_s03_couplers_WLAST = S03_AXI_wlast;
  assign axi_cpu_dma_interconnect_to_s03_couplers_WSTRB = S03_AXI_wstrb[7:0];
  assign axi_cpu_dma_interconnect_to_s03_couplers_WVALID = S03_AXI_wvalid;
  assign axi_cpu_dma_interconnect_to_s04_couplers_ARADDR = S04_AXI_araddr[31:0];
  assign axi_cpu_dma_interconnect_to_s04_couplers_ARPROT = S04_AXI_arprot[2:0];
  assign axi_cpu_dma_interconnect_to_s04_couplers_ARVALID = S04_AXI_arvalid;
  assign axi_cpu_dma_interconnect_to_s04_couplers_AWADDR = S04_AXI_awaddr[31:0];
  assign axi_cpu_dma_interconnect_to_s04_couplers_AWPROT = S04_AXI_awprot[2:0];
  assign axi_cpu_dma_interconnect_to_s04_couplers_AWVALID = S04_AXI_awvalid;
  assign axi_cpu_dma_interconnect_to_s04_couplers_BREADY = S04_AXI_bready;
  assign axi_cpu_dma_interconnect_to_s04_couplers_RREADY = S04_AXI_rready;
  assign axi_cpu_dma_interconnect_to_s04_couplers_WDATA = S04_AXI_wdata[31:0];
  assign axi_cpu_dma_interconnect_to_s04_couplers_WSTRB = S04_AXI_wstrb[3:0];
  assign axi_cpu_dma_interconnect_to_s04_couplers_WVALID = S04_AXI_wvalid;
  assign m00_couplers_to_axi_cpu_dma_interconnect_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_axi_cpu_dma_interconnect_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_axi_cpu_dma_interconnect_BID = M00_AXI_bid[2:0];
  assign m00_couplers_to_axi_cpu_dma_interconnect_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_cpu_dma_interconnect_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_axi_cpu_dma_interconnect_RDATA = M00_AXI_rdata[63:0];
  assign m00_couplers_to_axi_cpu_dma_interconnect_RID = M00_AXI_rid[2:0];
  assign m00_couplers_to_axi_cpu_dma_interconnect_RLAST = M00_AXI_rlast;
  assign m00_couplers_to_axi_cpu_dma_interconnect_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_cpu_dma_interconnect_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_axi_cpu_dma_interconnect_WREADY = M00_AXI_wready;
  assign m01_couplers_to_axi_cpu_dma_interconnect_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_axi_cpu_dma_interconnect_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_axi_cpu_dma_interconnect_BID = M01_AXI_bid[2:0];
  assign m01_couplers_to_axi_cpu_dma_interconnect_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_axi_cpu_dma_interconnect_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_axi_cpu_dma_interconnect_RDATA = M01_AXI_rdata[63:0];
  assign m01_couplers_to_axi_cpu_dma_interconnect_RID = M01_AXI_rid[2:0];
  assign m01_couplers_to_axi_cpu_dma_interconnect_RLAST = M01_AXI_rlast;
  assign m01_couplers_to_axi_cpu_dma_interconnect_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_axi_cpu_dma_interconnect_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_axi_cpu_dma_interconnect_WREADY = M01_AXI_wready;
  m00_couplers_imp_VYUENH m00_couplers
       (.M_ACLK(axi_cpu_dma_interconnect_ACLK_net),
        .M_ARESETN(axi_cpu_dma_interconnect_ARESETN_net),
        .M_AXI_araddr(m00_couplers_to_axi_cpu_dma_interconnect_ARADDR),
        .M_AXI_arburst(m00_couplers_to_axi_cpu_dma_interconnect_ARBURST),
        .M_AXI_arcache(m00_couplers_to_axi_cpu_dma_interconnect_ARCACHE),
        .M_AXI_arid(m00_couplers_to_axi_cpu_dma_interconnect_ARID),
        .M_AXI_arlen(m00_couplers_to_axi_cpu_dma_interconnect_ARLEN),
        .M_AXI_arlock(m00_couplers_to_axi_cpu_dma_interconnect_ARLOCK),
        .M_AXI_arprot(m00_couplers_to_axi_cpu_dma_interconnect_ARPROT),
        .M_AXI_arqos(m00_couplers_to_axi_cpu_dma_interconnect_ARQOS),
        .M_AXI_arready(m00_couplers_to_axi_cpu_dma_interconnect_ARREADY),
        .M_AXI_arregion(m00_couplers_to_axi_cpu_dma_interconnect_ARREGION),
        .M_AXI_arsize(m00_couplers_to_axi_cpu_dma_interconnect_ARSIZE),
        .M_AXI_arvalid(m00_couplers_to_axi_cpu_dma_interconnect_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_cpu_dma_interconnect_AWADDR),
        .M_AXI_awburst(m00_couplers_to_axi_cpu_dma_interconnect_AWBURST),
        .M_AXI_awcache(m00_couplers_to_axi_cpu_dma_interconnect_AWCACHE),
        .M_AXI_awid(m00_couplers_to_axi_cpu_dma_interconnect_AWID),
        .M_AXI_awlen(m00_couplers_to_axi_cpu_dma_interconnect_AWLEN),
        .M_AXI_awlock(m00_couplers_to_axi_cpu_dma_interconnect_AWLOCK),
        .M_AXI_awprot(m00_couplers_to_axi_cpu_dma_interconnect_AWPROT),
        .M_AXI_awqos(m00_couplers_to_axi_cpu_dma_interconnect_AWQOS),
        .M_AXI_awready(m00_couplers_to_axi_cpu_dma_interconnect_AWREADY),
        .M_AXI_awregion(m00_couplers_to_axi_cpu_dma_interconnect_AWREGION),
        .M_AXI_awsize(m00_couplers_to_axi_cpu_dma_interconnect_AWSIZE),
        .M_AXI_awvalid(m00_couplers_to_axi_cpu_dma_interconnect_AWVALID),
        .M_AXI_bid(m00_couplers_to_axi_cpu_dma_interconnect_BID),
        .M_AXI_bready(m00_couplers_to_axi_cpu_dma_interconnect_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_cpu_dma_interconnect_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_cpu_dma_interconnect_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_cpu_dma_interconnect_RDATA),
        .M_AXI_rid(m00_couplers_to_axi_cpu_dma_interconnect_RID),
        .M_AXI_rlast(m00_couplers_to_axi_cpu_dma_interconnect_RLAST),
        .M_AXI_rready(m00_couplers_to_axi_cpu_dma_interconnect_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_cpu_dma_interconnect_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_cpu_dma_interconnect_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_cpu_dma_interconnect_WDATA),
        .M_AXI_wlast(m00_couplers_to_axi_cpu_dma_interconnect_WLAST),
        .M_AXI_wready(m00_couplers_to_axi_cpu_dma_interconnect_WREADY),
        .M_AXI_wstrb(m00_couplers_to_axi_cpu_dma_interconnect_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_axi_cpu_dma_interconnect_WVALID),
        .S_ACLK(axi_cpu_dma_interconnect_ACLK_net),
        .S_ARESETN(axi_cpu_dma_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m00_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m00_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m00_couplers_ARID),
        .S_AXI_arlen(xbar_to_m00_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m00_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m00_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m00_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m00_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m00_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m00_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m00_couplers_AWID),
        .S_AXI_awlen(xbar_to_m00_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m00_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m00_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m00_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m00_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m00_couplers_BID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rid(xbar_to_m00_couplers_RID),
        .S_AXI_rlast(xbar_to_m00_couplers_RLAST),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m00_couplers_WLAST),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_17E5LCC m01_couplers
       (.M_ACLK(axi_cpu_dma_interconnect_ACLK_net),
        .M_ARESETN(axi_cpu_dma_interconnect_ARESETN_net),
        .M_AXI_araddr(m01_couplers_to_axi_cpu_dma_interconnect_ARADDR),
        .M_AXI_arburst(m01_couplers_to_axi_cpu_dma_interconnect_ARBURST),
        .M_AXI_arid(m01_couplers_to_axi_cpu_dma_interconnect_ARID),
        .M_AXI_arlen(m01_couplers_to_axi_cpu_dma_interconnect_ARLEN),
        .M_AXI_arready(m01_couplers_to_axi_cpu_dma_interconnect_ARREADY),
        .M_AXI_arregion(m01_couplers_to_axi_cpu_dma_interconnect_ARREGION),
        .M_AXI_arsize(m01_couplers_to_axi_cpu_dma_interconnect_ARSIZE),
        .M_AXI_arvalid(m01_couplers_to_axi_cpu_dma_interconnect_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_axi_cpu_dma_interconnect_AWADDR),
        .M_AXI_awburst(m01_couplers_to_axi_cpu_dma_interconnect_AWBURST),
        .M_AXI_awid(m01_couplers_to_axi_cpu_dma_interconnect_AWID),
        .M_AXI_awlen(m01_couplers_to_axi_cpu_dma_interconnect_AWLEN),
        .M_AXI_awready(m01_couplers_to_axi_cpu_dma_interconnect_AWREADY),
        .M_AXI_awregion(m01_couplers_to_axi_cpu_dma_interconnect_AWREGION),
        .M_AXI_awsize(m01_couplers_to_axi_cpu_dma_interconnect_AWSIZE),
        .M_AXI_awvalid(m01_couplers_to_axi_cpu_dma_interconnect_AWVALID),
        .M_AXI_bid(m01_couplers_to_axi_cpu_dma_interconnect_BID),
        .M_AXI_bready(m01_couplers_to_axi_cpu_dma_interconnect_BREADY),
        .M_AXI_bresp(m01_couplers_to_axi_cpu_dma_interconnect_BRESP),
        .M_AXI_bvalid(m01_couplers_to_axi_cpu_dma_interconnect_BVALID),
        .M_AXI_rdata(m01_couplers_to_axi_cpu_dma_interconnect_RDATA),
        .M_AXI_rid(m01_couplers_to_axi_cpu_dma_interconnect_RID),
        .M_AXI_rlast(m01_couplers_to_axi_cpu_dma_interconnect_RLAST),
        .M_AXI_rready(m01_couplers_to_axi_cpu_dma_interconnect_RREADY),
        .M_AXI_rresp(m01_couplers_to_axi_cpu_dma_interconnect_RRESP),
        .M_AXI_rvalid(m01_couplers_to_axi_cpu_dma_interconnect_RVALID),
        .M_AXI_wdata(m01_couplers_to_axi_cpu_dma_interconnect_WDATA),
        .M_AXI_wlast(m01_couplers_to_axi_cpu_dma_interconnect_WLAST),
        .M_AXI_wready(m01_couplers_to_axi_cpu_dma_interconnect_WREADY),
        .M_AXI_wstrb(m01_couplers_to_axi_cpu_dma_interconnect_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_axi_cpu_dma_interconnect_WVALID),
        .S_ACLK(axi_cpu_dma_interconnect_ACLK_net),
        .S_ARESETN(axi_cpu_dma_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m01_couplers_ARBURST),
        .S_AXI_arid(xbar_to_m01_couplers_ARID),
        .S_AXI_arlen(xbar_to_m01_couplers_ARLEN),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m01_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m01_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m01_couplers_AWBURST),
        .S_AXI_awid(xbar_to_m01_couplers_AWID),
        .S_AXI_awlen(xbar_to_m01_couplers_AWLEN),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m01_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m01_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m01_couplers_BID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rid(xbar_to_m01_couplers_RID),
        .S_AXI_rlast(xbar_to_m01_couplers_RLAST),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m01_couplers_WLAST),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  s00_couplers_imp_12AR84V s00_couplers
       (.M_ACLK(axi_cpu_dma_interconnect_ACLK_net),
        .M_ARESETN(axi_cpu_dma_interconnect_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s00_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s00_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s00_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s00_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s00_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s00_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s00_couplers_to_xbar_RLAST),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .S_ACLK(axi_cpu_dma_interconnect_ACLK_net),
        .S_ARESETN(axi_cpu_dma_interconnect_ARESETN_net),
        .S_AXI_araddr(axi_cpu_dma_interconnect_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_cpu_dma_interconnect_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_cpu_dma_interconnect_to_s00_couplers_ARCACHE),
        .S_AXI_arlen(axi_cpu_dma_interconnect_to_s00_couplers_ARLEN),
        .S_AXI_arprot(axi_cpu_dma_interconnect_to_s00_couplers_ARPROT),
        .S_AXI_arready(axi_cpu_dma_interconnect_to_s00_couplers_ARREADY),
        .S_AXI_arsize(axi_cpu_dma_interconnect_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(axi_cpu_dma_interconnect_to_s00_couplers_ARVALID),
        .S_AXI_rdata(axi_cpu_dma_interconnect_to_s00_couplers_RDATA),
        .S_AXI_rlast(axi_cpu_dma_interconnect_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_cpu_dma_interconnect_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_cpu_dma_interconnect_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_cpu_dma_interconnect_to_s00_couplers_RVALID));
  s01_couplers_imp_S4EEJ2 s01_couplers
       (.M_ACLK(axi_cpu_dma_interconnect_ACLK_net),
        .M_ARESETN(axi_cpu_dma_interconnect_ARESETN_net),
        .M_AXI_awaddr(s01_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s01_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s01_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s01_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s01_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s01_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s01_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s01_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s01_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s01_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s01_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s01_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s01_couplers_to_xbar_BVALID),
        .M_AXI_wdata(s01_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s01_couplers_to_xbar_WLAST),
        .M_AXI_wready(s01_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s01_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s01_couplers_to_xbar_WVALID),
        .S_ACLK(axi_cpu_dma_interconnect_ACLK_net),
        .S_ARESETN(axi_cpu_dma_interconnect_ARESETN_net),
        .S_AXI_awaddr(axi_cpu_dma_interconnect_to_s01_couplers_AWADDR),
        .S_AXI_awburst(axi_cpu_dma_interconnect_to_s01_couplers_AWBURST),
        .S_AXI_awcache(axi_cpu_dma_interconnect_to_s01_couplers_AWCACHE),
        .S_AXI_awlen(axi_cpu_dma_interconnect_to_s01_couplers_AWLEN),
        .S_AXI_awprot(axi_cpu_dma_interconnect_to_s01_couplers_AWPROT),
        .S_AXI_awready(axi_cpu_dma_interconnect_to_s01_couplers_AWREADY),
        .S_AXI_awsize(axi_cpu_dma_interconnect_to_s01_couplers_AWSIZE),
        .S_AXI_awvalid(axi_cpu_dma_interconnect_to_s01_couplers_AWVALID),
        .S_AXI_bready(axi_cpu_dma_interconnect_to_s01_couplers_BREADY),
        .S_AXI_bresp(axi_cpu_dma_interconnect_to_s01_couplers_BRESP),
        .S_AXI_bvalid(axi_cpu_dma_interconnect_to_s01_couplers_BVALID),
        .S_AXI_wdata(axi_cpu_dma_interconnect_to_s01_couplers_WDATA),
        .S_AXI_wlast(axi_cpu_dma_interconnect_to_s01_couplers_WLAST),
        .S_AXI_wready(axi_cpu_dma_interconnect_to_s01_couplers_WREADY),
        .S_AXI_wstrb(axi_cpu_dma_interconnect_to_s01_couplers_WSTRB),
        .S_AXI_wvalid(axi_cpu_dma_interconnect_to_s01_couplers_WVALID));
  s02_couplers_imp_13WZJAK s02_couplers
       (.M_ACLK(axi_cpu_dma_interconnect_ACLK_net),
        .M_ARESETN(axi_cpu_dma_interconnect_ARESETN_net),
        .M_AXI_araddr(s02_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s02_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s02_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s02_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s02_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s02_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s02_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s02_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s02_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s02_couplers_to_xbar_ARVALID),
        .M_AXI_rdata(s02_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s02_couplers_to_xbar_RLAST),
        .M_AXI_rready(s02_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s02_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s02_couplers_to_xbar_RVALID),
        .S_ACLK(axi_cpu_dma_interconnect_ACLK_net),
        .S_ARESETN(axi_cpu_dma_interconnect_ARESETN_net),
        .S_AXI_araddr(axi_cpu_dma_interconnect_to_s02_couplers_ARADDR),
        .S_AXI_arburst(axi_cpu_dma_interconnect_to_s02_couplers_ARBURST),
        .S_AXI_arcache(axi_cpu_dma_interconnect_to_s02_couplers_ARCACHE),
        .S_AXI_arlen(axi_cpu_dma_interconnect_to_s02_couplers_ARLEN),
        .S_AXI_arprot(axi_cpu_dma_interconnect_to_s02_couplers_ARPROT),
        .S_AXI_arready(axi_cpu_dma_interconnect_to_s02_couplers_ARREADY),
        .S_AXI_arsize(axi_cpu_dma_interconnect_to_s02_couplers_ARSIZE),
        .S_AXI_arvalid(axi_cpu_dma_interconnect_to_s02_couplers_ARVALID),
        .S_AXI_rdata(axi_cpu_dma_interconnect_to_s02_couplers_RDATA),
        .S_AXI_rlast(axi_cpu_dma_interconnect_to_s02_couplers_RLAST),
        .S_AXI_rready(axi_cpu_dma_interconnect_to_s02_couplers_RREADY),
        .S_AXI_rresp(axi_cpu_dma_interconnect_to_s02_couplers_RRESP),
        .S_AXI_rvalid(axi_cpu_dma_interconnect_to_s02_couplers_RVALID));
  s03_couplers_imp_QSHPCD s03_couplers
       (.M_ACLK(axi_cpu_dma_interconnect_ACLK_net),
        .M_ARESETN(axi_cpu_dma_interconnect_ARESETN_net),
        .M_AXI_awaddr(s03_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s03_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s03_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s03_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s03_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s03_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s03_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s03_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s03_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s03_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s03_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s03_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s03_couplers_to_xbar_BVALID),
        .M_AXI_wdata(s03_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s03_couplers_to_xbar_WLAST),
        .M_AXI_wready(s03_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s03_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s03_couplers_to_xbar_WVALID),
        .S_ACLK(axi_cpu_dma_interconnect_ACLK_net),
        .S_ARESETN(axi_cpu_dma_interconnect_ARESETN_net),
        .S_AXI_awaddr(axi_cpu_dma_interconnect_to_s03_couplers_AWADDR),
        .S_AXI_awburst(axi_cpu_dma_interconnect_to_s03_couplers_AWBURST),
        .S_AXI_awcache(axi_cpu_dma_interconnect_to_s03_couplers_AWCACHE),
        .S_AXI_awlen(axi_cpu_dma_interconnect_to_s03_couplers_AWLEN),
        .S_AXI_awprot(axi_cpu_dma_interconnect_to_s03_couplers_AWPROT),
        .S_AXI_awready(axi_cpu_dma_interconnect_to_s03_couplers_AWREADY),
        .S_AXI_awsize(axi_cpu_dma_interconnect_to_s03_couplers_AWSIZE),
        .S_AXI_awvalid(axi_cpu_dma_interconnect_to_s03_couplers_AWVALID),
        .S_AXI_bready(axi_cpu_dma_interconnect_to_s03_couplers_BREADY),
        .S_AXI_bresp(axi_cpu_dma_interconnect_to_s03_couplers_BRESP),
        .S_AXI_bvalid(axi_cpu_dma_interconnect_to_s03_couplers_BVALID),
        .S_AXI_wdata(axi_cpu_dma_interconnect_to_s03_couplers_WDATA),
        .S_AXI_wlast(axi_cpu_dma_interconnect_to_s03_couplers_WLAST),
        .S_AXI_wready(axi_cpu_dma_interconnect_to_s03_couplers_WREADY),
        .S_AXI_wstrb(axi_cpu_dma_interconnect_to_s03_couplers_WSTRB),
        .S_AXI_wvalid(axi_cpu_dma_interconnect_to_s03_couplers_WVALID));
  s04_couplers_imp_ZYTJAH s04_couplers
       (.M_ACLK(axi_cpu_dma_interconnect_ACLK_net),
        .M_ARESETN(axi_cpu_dma_interconnect_ARESETN_net),
        .M_AXI_araddr(s04_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s04_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s04_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s04_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s04_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s04_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s04_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s04_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s04_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s04_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s04_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s04_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s04_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s04_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s04_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s04_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s04_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s04_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s04_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s04_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s04_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s04_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s04_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s04_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s04_couplers_to_xbar_RLAST),
        .M_AXI_rready(s04_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s04_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s04_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s04_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s04_couplers_to_xbar_WLAST),
        .M_AXI_wready(s04_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s04_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s04_couplers_to_xbar_WVALID),
        .S_ACLK(axi_cpu_dma_interconnect_ACLK_net),
        .S_ARESETN(axi_cpu_dma_interconnect_ARESETN_net),
        .S_AXI_araddr(axi_cpu_dma_interconnect_to_s04_couplers_ARADDR),
        .S_AXI_arprot(axi_cpu_dma_interconnect_to_s04_couplers_ARPROT),
        .S_AXI_arready(axi_cpu_dma_interconnect_to_s04_couplers_ARREADY),
        .S_AXI_arvalid(axi_cpu_dma_interconnect_to_s04_couplers_ARVALID),
        .S_AXI_awaddr(axi_cpu_dma_interconnect_to_s04_couplers_AWADDR),
        .S_AXI_awprot(axi_cpu_dma_interconnect_to_s04_couplers_AWPROT),
        .S_AXI_awready(axi_cpu_dma_interconnect_to_s04_couplers_AWREADY),
        .S_AXI_awvalid(axi_cpu_dma_interconnect_to_s04_couplers_AWVALID),
        .S_AXI_bready(axi_cpu_dma_interconnect_to_s04_couplers_BREADY),
        .S_AXI_bvalid(axi_cpu_dma_interconnect_to_s04_couplers_BVALID),
        .S_AXI_rdata(axi_cpu_dma_interconnect_to_s04_couplers_RDATA),
        .S_AXI_rready(axi_cpu_dma_interconnect_to_s04_couplers_RREADY),
        .S_AXI_rvalid(axi_cpu_dma_interconnect_to_s04_couplers_RVALID),
        .S_AXI_wdata(axi_cpu_dma_interconnect_to_s04_couplers_WDATA),
        .S_AXI_wready(axi_cpu_dma_interconnect_to_s04_couplers_WREADY),
        .S_AXI_wstrb(axi_cpu_dma_interconnect_to_s04_couplers_WSTRB),
        .S_AXI_wvalid(axi_cpu_dma_interconnect_to_s04_couplers_WVALID));
  icyradio_xbar_6 xbar
       (.aclk(axi_cpu_dma_interconnect_ACLK_net),
        .aresetn(axi_cpu_dma_interconnect_ARESETN_net),
        .m_axi_araddr({xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arburst({xbar_to_m01_couplers_ARBURST,xbar_to_m00_couplers_ARBURST}),
        .m_axi_arcache(xbar_to_m00_couplers_ARCACHE),
        .m_axi_arid({xbar_to_m01_couplers_ARID,xbar_to_m00_couplers_ARID}),
        .m_axi_arlen({xbar_to_m01_couplers_ARLEN,xbar_to_m00_couplers_ARLEN}),
        .m_axi_arlock(xbar_to_m00_couplers_ARLOCK),
        .m_axi_arprot(xbar_to_m00_couplers_ARPROT),
        .m_axi_arqos(xbar_to_m00_couplers_ARQOS),
        .m_axi_arready({xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arregion({xbar_to_m01_couplers_ARREGION,xbar_to_m00_couplers_ARREGION}),
        .m_axi_arsize({xbar_to_m01_couplers_ARSIZE,xbar_to_m00_couplers_ARSIZE}),
        .m_axi_arvalid({xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awburst({xbar_to_m01_couplers_AWBURST,xbar_to_m00_couplers_AWBURST}),
        .m_axi_awcache(xbar_to_m00_couplers_AWCACHE),
        .m_axi_awid({xbar_to_m01_couplers_AWID,xbar_to_m00_couplers_AWID}),
        .m_axi_awlen({xbar_to_m01_couplers_AWLEN,xbar_to_m00_couplers_AWLEN}),
        .m_axi_awlock(xbar_to_m00_couplers_AWLOCK),
        .m_axi_awprot(xbar_to_m00_couplers_AWPROT),
        .m_axi_awqos(xbar_to_m00_couplers_AWQOS),
        .m_axi_awready({xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awregion({xbar_to_m01_couplers_AWREGION,xbar_to_m00_couplers_AWREGION}),
        .m_axi_awsize({xbar_to_m01_couplers_AWSIZE,xbar_to_m00_couplers_AWSIZE}),
        .m_axi_awvalid({xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bid({xbar_to_m01_couplers_BID,xbar_to_m00_couplers_BID}),
        .m_axi_bready({xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rid({xbar_to_m01_couplers_RID,xbar_to_m00_couplers_RID}),
        .m_axi_rlast({xbar_to_m01_couplers_RLAST,xbar_to_m00_couplers_RLAST}),
        .m_axi_rready({xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wlast({xbar_to_m01_couplers_WLAST,xbar_to_m00_couplers_WLAST}),
        .m_axi_wready({xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr({s04_couplers_to_xbar_ARADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s02_couplers_to_xbar_ARADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_ARADDR}),
        .s_axi_arburst({s04_couplers_to_xbar_ARBURST,1'b0,1'b0,s02_couplers_to_xbar_ARBURST,1'b0,1'b0,s00_couplers_to_xbar_ARBURST}),
        .s_axi_arcache({s04_couplers_to_xbar_ARCACHE,1'b0,1'b0,1'b0,1'b0,s02_couplers_to_xbar_ARCACHE,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_ARCACHE}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({s04_couplers_to_xbar_ARLEN,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s02_couplers_to_xbar_ARLEN,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_ARLEN}),
        .s_axi_arlock({s04_couplers_to_xbar_ARLOCK,1'b0,s02_couplers_to_xbar_ARLOCK,1'b0,s00_couplers_to_xbar_ARLOCK}),
        .s_axi_arprot({s04_couplers_to_xbar_ARPROT,1'b0,1'b0,1'b0,s02_couplers_to_xbar_ARPROT,1'b0,1'b0,1'b0,s00_couplers_to_xbar_ARPROT}),
        .s_axi_arqos({s04_couplers_to_xbar_ARQOS,1'b0,1'b0,1'b0,1'b0,s02_couplers_to_xbar_ARQOS,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_ARQOS}),
        .s_axi_arready({s04_couplers_to_xbar_ARREADY,NLW_xbar_s_axi_arready_UNCONNECTED[3],s02_couplers_to_xbar_ARREADY,NLW_xbar_s_axi_arready_UNCONNECTED[1],s00_couplers_to_xbar_ARREADY}),
        .s_axi_arsize({s04_couplers_to_xbar_ARSIZE,1'b0,1'b0,1'b0,s02_couplers_to_xbar_ARSIZE,1'b0,1'b0,1'b1,s00_couplers_to_xbar_ARSIZE}),
        .s_axi_arvalid({s04_couplers_to_xbar_ARVALID,1'b0,s02_couplers_to_xbar_ARVALID,1'b0,s00_couplers_to_xbar_ARVALID}),
        .s_axi_awaddr({s04_couplers_to_xbar_AWADDR,1'b0,s03_couplers_to_xbar_AWADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s01_couplers_to_xbar_AWADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({s04_couplers_to_xbar_AWBURST,s03_couplers_to_xbar_AWBURST,1'b0,1'b0,s01_couplers_to_xbar_AWBURST,1'b0,1'b1}),
        .s_axi_awcache({s04_couplers_to_xbar_AWCACHE,s03_couplers_to_xbar_AWCACHE,1'b0,1'b0,1'b0,1'b0,s01_couplers_to_xbar_AWCACHE,1'b0,1'b0,1'b1,1'b1}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({s04_couplers_to_xbar_AWLEN,s03_couplers_to_xbar_AWLEN,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s01_couplers_to_xbar_AWLEN,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock({s04_couplers_to_xbar_AWLOCK,s03_couplers_to_xbar_AWLOCK,1'b0,s01_couplers_to_xbar_AWLOCK,1'b0}),
        .s_axi_awprot({s04_couplers_to_xbar_AWPROT,s03_couplers_to_xbar_AWPROT,1'b0,1'b0,1'b0,s01_couplers_to_xbar_AWPROT,1'b0,1'b0,1'b0}),
        .s_axi_awqos({s04_couplers_to_xbar_AWQOS,s03_couplers_to_xbar_AWQOS,1'b0,1'b0,1'b0,1'b0,s01_couplers_to_xbar_AWQOS,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready({s04_couplers_to_xbar_AWREADY,s03_couplers_to_xbar_AWREADY,NLW_xbar_s_axi_awready_UNCONNECTED[2],s01_couplers_to_xbar_AWREADY,NLW_xbar_s_axi_awready_UNCONNECTED[0]}),
        .s_axi_awsize({s04_couplers_to_xbar_AWSIZE,s03_couplers_to_xbar_AWSIZE,1'b0,1'b0,1'b0,s01_couplers_to_xbar_AWSIZE,1'b0,1'b1,1'b1}),
        .s_axi_awvalid({s04_couplers_to_xbar_AWVALID,s03_couplers_to_xbar_AWVALID,1'b0,s01_couplers_to_xbar_AWVALID,1'b0}),
        .s_axi_bready({s04_couplers_to_xbar_BREADY,s03_couplers_to_xbar_BREADY,1'b0,s01_couplers_to_xbar_BREADY,1'b0}),
        .s_axi_bresp({s04_couplers_to_xbar_BRESP,s03_couplers_to_xbar_BRESP,NLW_xbar_s_axi_bresp_UNCONNECTED[5:4],s01_couplers_to_xbar_BRESP,NLW_xbar_s_axi_bresp_UNCONNECTED[1:0]}),
        .s_axi_bvalid({s04_couplers_to_xbar_BVALID,s03_couplers_to_xbar_BVALID,NLW_xbar_s_axi_bvalid_UNCONNECTED[2],s01_couplers_to_xbar_BVALID,NLW_xbar_s_axi_bvalid_UNCONNECTED[0]}),
        .s_axi_rdata({s04_couplers_to_xbar_RDATA,NLW_xbar_s_axi_rdata_UNCONNECTED[255:192],s02_couplers_to_xbar_RDATA,NLW_xbar_s_axi_rdata_UNCONNECTED[127:64],s00_couplers_to_xbar_RDATA}),
        .s_axi_rlast({s04_couplers_to_xbar_RLAST,NLW_xbar_s_axi_rlast_UNCONNECTED[3],s02_couplers_to_xbar_RLAST,NLW_xbar_s_axi_rlast_UNCONNECTED[1],s00_couplers_to_xbar_RLAST}),
        .s_axi_rready({s04_couplers_to_xbar_RREADY,1'b0,s02_couplers_to_xbar_RREADY,1'b0,s00_couplers_to_xbar_RREADY}),
        .s_axi_rresp({s04_couplers_to_xbar_RRESP,NLW_xbar_s_axi_rresp_UNCONNECTED[7:6],s02_couplers_to_xbar_RRESP,NLW_xbar_s_axi_rresp_UNCONNECTED[3:2],s00_couplers_to_xbar_RRESP}),
        .s_axi_rvalid({s04_couplers_to_xbar_RVALID,NLW_xbar_s_axi_rvalid_UNCONNECTED[3],s02_couplers_to_xbar_RVALID,NLW_xbar_s_axi_rvalid_UNCONNECTED[1],s00_couplers_to_xbar_RVALID}),
        .s_axi_wdata({s04_couplers_to_xbar_WDATA,s03_couplers_to_xbar_WDATA,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s01_couplers_to_xbar_WDATA,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast({s04_couplers_to_xbar_WLAST,s03_couplers_to_xbar_WLAST,1'b0,s01_couplers_to_xbar_WLAST,1'b0}),
        .s_axi_wready({s04_couplers_to_xbar_WREADY,s03_couplers_to_xbar_WREADY,NLW_xbar_s_axi_wready_UNCONNECTED[2],s01_couplers_to_xbar_WREADY,NLW_xbar_s_axi_wready_UNCONNECTED[0]}),
        .s_axi_wstrb({s04_couplers_to_xbar_WSTRB,s03_couplers_to_xbar_WSTRB,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,s01_couplers_to_xbar_WSTRB,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .s_axi_wvalid({s04_couplers_to_xbar_WVALID,s03_couplers_to_xbar_WVALID,1'b0,s01_couplers_to_xbar_WVALID,1'b0}));
endmodule

module icyradio_axi_pcie_interconnect_2
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arregion,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awregion,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arburst,
    M01_AXI_arcache,
    M01_AXI_arlen,
    M01_AXI_arlock,
    M01_AXI_arprot,
    M01_AXI_arready,
    M01_AXI_arsize,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awburst,
    M01_AXI_awcache,
    M01_AXI_awlen,
    M01_AXI_awlock,
    M01_AXI_awprot,
    M01_AXI_awready,
    M01_AXI_awsize,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rlast,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wlast,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arburst,
    M02_AXI_arcache,
    M02_AXI_arid,
    M02_AXI_arlen,
    M02_AXI_arlock,
    M02_AXI_arprot,
    M02_AXI_arqos,
    M02_AXI_arready,
    M02_AXI_arsize,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awburst,
    M02_AXI_awcache,
    M02_AXI_awid,
    M02_AXI_awlen,
    M02_AXI_awlock,
    M02_AXI_awprot,
    M02_AXI_awqos,
    M02_AXI_awready,
    M02_AXI_awsize,
    M02_AXI_awvalid,
    M02_AXI_bid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rid,
    M02_AXI_rlast,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wlast,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    M03_ACLK,
    M03_ARESETN,
    M03_AXI_araddr,
    M03_AXI_arburst,
    M03_AXI_arcache,
    M03_AXI_arid,
    M03_AXI_arlen,
    M03_AXI_arlock,
    M03_AXI_arprot,
    M03_AXI_arready,
    M03_AXI_arsize,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awburst,
    M03_AXI_awcache,
    M03_AXI_awid,
    M03_AXI_awlen,
    M03_AXI_awlock,
    M03_AXI_awprot,
    M03_AXI_awready,
    M03_AXI_awsize,
    M03_AXI_awvalid,
    M03_AXI_bid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rid,
    M03_AXI_rlast,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wlast,
    M03_AXI_wready,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arregion,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awregion,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid,
    S01_ACLK,
    S01_ARESETN,
    S01_AXI_araddr,
    S01_AXI_arburst,
    S01_AXI_arcache,
    S01_AXI_arlen,
    S01_AXI_arlock,
    S01_AXI_arprot,
    S01_AXI_arready,
    S01_AXI_arsize,
    S01_AXI_arvalid,
    S01_AXI_awaddr,
    S01_AXI_awburst,
    S01_AXI_awcache,
    S01_AXI_awlen,
    S01_AXI_awlock,
    S01_AXI_awprot,
    S01_AXI_awready,
    S01_AXI_awsize,
    S01_AXI_awvalid,
    S01_AXI_bready,
    S01_AXI_bresp,
    S01_AXI_bvalid,
    S01_AXI_rdata,
    S01_AXI_rlast,
    S01_AXI_rready,
    S01_AXI_rresp,
    S01_AXI_rvalid,
    S01_AXI_wdata,
    S01_AXI_wlast,
    S01_AXI_wready,
    S01_AXI_wstrb,
    S01_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [7:0]M00_AXI_arlen;
  output [0:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [3:0]M00_AXI_arregion;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [7:0]M00_AXI_awlen;
  output [0:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [3:0]M00_AXI_awregion;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [23:0]M01_AXI_araddr;
  output [1:0]M01_AXI_arburst;
  output [3:0]M01_AXI_arcache;
  output [7:0]M01_AXI_arlen;
  output M01_AXI_arlock;
  output [2:0]M01_AXI_arprot;
  input M01_AXI_arready;
  output [2:0]M01_AXI_arsize;
  output M01_AXI_arvalid;
  output [23:0]M01_AXI_awaddr;
  output [1:0]M01_AXI_awburst;
  output [3:0]M01_AXI_awcache;
  output [7:0]M01_AXI_awlen;
  output M01_AXI_awlock;
  output [2:0]M01_AXI_awprot;
  input M01_AXI_awready;
  output [2:0]M01_AXI_awsize;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  input M01_AXI_rlast;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  output M01_AXI_wlast;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [28:0]M02_AXI_araddr;
  output [1:0]M02_AXI_arburst;
  output [3:0]M02_AXI_arcache;
  output [3:0]M02_AXI_arid;
  output [7:0]M02_AXI_arlen;
  output [0:0]M02_AXI_arlock;
  output [2:0]M02_AXI_arprot;
  output [3:0]M02_AXI_arqos;
  input M02_AXI_arready;
  output [2:0]M02_AXI_arsize;
  output M02_AXI_arvalid;
  output [28:0]M02_AXI_awaddr;
  output [1:0]M02_AXI_awburst;
  output [3:0]M02_AXI_awcache;
  output [3:0]M02_AXI_awid;
  output [7:0]M02_AXI_awlen;
  output [0:0]M02_AXI_awlock;
  output [2:0]M02_AXI_awprot;
  output [3:0]M02_AXI_awqos;
  input M02_AXI_awready;
  output [2:0]M02_AXI_awsize;
  output M02_AXI_awvalid;
  input [3:0]M02_AXI_bid;
  output M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input M02_AXI_bvalid;
  input [63:0]M02_AXI_rdata;
  input [3:0]M02_AXI_rid;
  input M02_AXI_rlast;
  output M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input M02_AXI_rvalid;
  output [63:0]M02_AXI_wdata;
  output M02_AXI_wlast;
  input M02_AXI_wready;
  output [7:0]M02_AXI_wstrb;
  output M02_AXI_wvalid;
  input M03_ACLK;
  input M03_ARESETN;
  output [31:0]M03_AXI_araddr;
  output [1:0]M03_AXI_arburst;
  output [3:0]M03_AXI_arcache;
  output [3:0]M03_AXI_arid;
  output [7:0]M03_AXI_arlen;
  output [0:0]M03_AXI_arlock;
  output [2:0]M03_AXI_arprot;
  input [0:0]M03_AXI_arready;
  output [2:0]M03_AXI_arsize;
  output [0:0]M03_AXI_arvalid;
  output [31:0]M03_AXI_awaddr;
  output [1:0]M03_AXI_awburst;
  output [3:0]M03_AXI_awcache;
  output [3:0]M03_AXI_awid;
  output [7:0]M03_AXI_awlen;
  output [0:0]M03_AXI_awlock;
  output [2:0]M03_AXI_awprot;
  input [0:0]M03_AXI_awready;
  output [2:0]M03_AXI_awsize;
  output [0:0]M03_AXI_awvalid;
  input [3:0]M03_AXI_bid;
  output [0:0]M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input [0:0]M03_AXI_bvalid;
  input [63:0]M03_AXI_rdata;
  input [3:0]M03_AXI_rid;
  input [0:0]M03_AXI_rlast;
  output [0:0]M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input [0:0]M03_AXI_rvalid;
  output [63:0]M03_AXI_wdata;
  output [0:0]M03_AXI_wlast;
  input [0:0]M03_AXI_wready;
  output [7:0]M03_AXI_wstrb;
  output [0:0]M03_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [2:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input [0:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [3:0]S00_AXI_arregion;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [2:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input [0:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [3:0]S00_AXI_awregion;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [2:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [63:0]S00_AXI_rdata;
  output [2:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [63:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [7:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;
  input S01_ACLK;
  input S01_ARESETN;
  input [31:0]S01_AXI_araddr;
  input [1:0]S01_AXI_arburst;
  input [3:0]S01_AXI_arcache;
  input [7:0]S01_AXI_arlen;
  input S01_AXI_arlock;
  input [2:0]S01_AXI_arprot;
  output S01_AXI_arready;
  input [2:0]S01_AXI_arsize;
  input S01_AXI_arvalid;
  input [31:0]S01_AXI_awaddr;
  input [1:0]S01_AXI_awburst;
  input [3:0]S01_AXI_awcache;
  input [7:0]S01_AXI_awlen;
  input S01_AXI_awlock;
  input [2:0]S01_AXI_awprot;
  output S01_AXI_awready;
  input [2:0]S01_AXI_awsize;
  input S01_AXI_awvalid;
  input S01_AXI_bready;
  output [1:0]S01_AXI_bresp;
  output S01_AXI_bvalid;
  output [63:0]S01_AXI_rdata;
  output S01_AXI_rlast;
  input S01_AXI_rready;
  output [1:0]S01_AXI_rresp;
  output S01_AXI_rvalid;
  input [63:0]S01_AXI_wdata;
  input S01_AXI_wlast;
  output S01_AXI_wready;
  input [7:0]S01_AXI_wstrb;
  input S01_AXI_wvalid;

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire M01_ACLK_1;
  wire M01_ARESETN_1;
  wire M02_ACLK_1;
  wire M02_ARESETN_1;
  wire M03_ACLK_1;
  wire M03_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire S01_ACLK_1;
  wire S01_ARESETN_1;
  wire axi_pcie_interconnect_ACLK_net;
  wire axi_pcie_interconnect_ARESETN_net;
  wire [31:0]axi_pcie_interconnect_to_s00_couplers_ARADDR;
  wire [1:0]axi_pcie_interconnect_to_s00_couplers_ARBURST;
  wire [3:0]axi_pcie_interconnect_to_s00_couplers_ARCACHE;
  wire [2:0]axi_pcie_interconnect_to_s00_couplers_ARID;
  wire [7:0]axi_pcie_interconnect_to_s00_couplers_ARLEN;
  wire [0:0]axi_pcie_interconnect_to_s00_couplers_ARLOCK;
  wire [2:0]axi_pcie_interconnect_to_s00_couplers_ARPROT;
  wire [3:0]axi_pcie_interconnect_to_s00_couplers_ARQOS;
  wire axi_pcie_interconnect_to_s00_couplers_ARREADY;
  wire [3:0]axi_pcie_interconnect_to_s00_couplers_ARREGION;
  wire [2:0]axi_pcie_interconnect_to_s00_couplers_ARSIZE;
  wire axi_pcie_interconnect_to_s00_couplers_ARVALID;
  wire [31:0]axi_pcie_interconnect_to_s00_couplers_AWADDR;
  wire [1:0]axi_pcie_interconnect_to_s00_couplers_AWBURST;
  wire [3:0]axi_pcie_interconnect_to_s00_couplers_AWCACHE;
  wire [2:0]axi_pcie_interconnect_to_s00_couplers_AWID;
  wire [7:0]axi_pcie_interconnect_to_s00_couplers_AWLEN;
  wire [0:0]axi_pcie_interconnect_to_s00_couplers_AWLOCK;
  wire [2:0]axi_pcie_interconnect_to_s00_couplers_AWPROT;
  wire [3:0]axi_pcie_interconnect_to_s00_couplers_AWQOS;
  wire axi_pcie_interconnect_to_s00_couplers_AWREADY;
  wire [3:0]axi_pcie_interconnect_to_s00_couplers_AWREGION;
  wire [2:0]axi_pcie_interconnect_to_s00_couplers_AWSIZE;
  wire axi_pcie_interconnect_to_s00_couplers_AWVALID;
  wire [2:0]axi_pcie_interconnect_to_s00_couplers_BID;
  wire axi_pcie_interconnect_to_s00_couplers_BREADY;
  wire [1:0]axi_pcie_interconnect_to_s00_couplers_BRESP;
  wire axi_pcie_interconnect_to_s00_couplers_BVALID;
  wire [63:0]axi_pcie_interconnect_to_s00_couplers_RDATA;
  wire [2:0]axi_pcie_interconnect_to_s00_couplers_RID;
  wire axi_pcie_interconnect_to_s00_couplers_RLAST;
  wire axi_pcie_interconnect_to_s00_couplers_RREADY;
  wire [1:0]axi_pcie_interconnect_to_s00_couplers_RRESP;
  wire axi_pcie_interconnect_to_s00_couplers_RVALID;
  wire [63:0]axi_pcie_interconnect_to_s00_couplers_WDATA;
  wire axi_pcie_interconnect_to_s00_couplers_WLAST;
  wire axi_pcie_interconnect_to_s00_couplers_WREADY;
  wire [7:0]axi_pcie_interconnect_to_s00_couplers_WSTRB;
  wire axi_pcie_interconnect_to_s00_couplers_WVALID;
  wire [31:0]axi_pcie_interconnect_to_s01_couplers_ARADDR;
  wire [1:0]axi_pcie_interconnect_to_s01_couplers_ARBURST;
  wire [3:0]axi_pcie_interconnect_to_s01_couplers_ARCACHE;
  wire [7:0]axi_pcie_interconnect_to_s01_couplers_ARLEN;
  wire axi_pcie_interconnect_to_s01_couplers_ARLOCK;
  wire [2:0]axi_pcie_interconnect_to_s01_couplers_ARPROT;
  wire axi_pcie_interconnect_to_s01_couplers_ARREADY;
  wire [2:0]axi_pcie_interconnect_to_s01_couplers_ARSIZE;
  wire axi_pcie_interconnect_to_s01_couplers_ARVALID;
  wire [31:0]axi_pcie_interconnect_to_s01_couplers_AWADDR;
  wire [1:0]axi_pcie_interconnect_to_s01_couplers_AWBURST;
  wire [3:0]axi_pcie_interconnect_to_s01_couplers_AWCACHE;
  wire [7:0]axi_pcie_interconnect_to_s01_couplers_AWLEN;
  wire axi_pcie_interconnect_to_s01_couplers_AWLOCK;
  wire [2:0]axi_pcie_interconnect_to_s01_couplers_AWPROT;
  wire axi_pcie_interconnect_to_s01_couplers_AWREADY;
  wire [2:0]axi_pcie_interconnect_to_s01_couplers_AWSIZE;
  wire axi_pcie_interconnect_to_s01_couplers_AWVALID;
  wire axi_pcie_interconnect_to_s01_couplers_BREADY;
  wire [1:0]axi_pcie_interconnect_to_s01_couplers_BRESP;
  wire axi_pcie_interconnect_to_s01_couplers_BVALID;
  wire [63:0]axi_pcie_interconnect_to_s01_couplers_RDATA;
  wire axi_pcie_interconnect_to_s01_couplers_RLAST;
  wire axi_pcie_interconnect_to_s01_couplers_RREADY;
  wire [1:0]axi_pcie_interconnect_to_s01_couplers_RRESP;
  wire axi_pcie_interconnect_to_s01_couplers_RVALID;
  wire [63:0]axi_pcie_interconnect_to_s01_couplers_WDATA;
  wire axi_pcie_interconnect_to_s01_couplers_WLAST;
  wire axi_pcie_interconnect_to_s01_couplers_WREADY;
  wire [7:0]axi_pcie_interconnect_to_s01_couplers_WSTRB;
  wire axi_pcie_interconnect_to_s01_couplers_WVALID;
  wire [31:0]m00_couplers_to_axi_pcie_interconnect_ARADDR;
  wire [1:0]m00_couplers_to_axi_pcie_interconnect_ARBURST;
  wire [3:0]m00_couplers_to_axi_pcie_interconnect_ARCACHE;
  wire [7:0]m00_couplers_to_axi_pcie_interconnect_ARLEN;
  wire [0:0]m00_couplers_to_axi_pcie_interconnect_ARLOCK;
  wire [2:0]m00_couplers_to_axi_pcie_interconnect_ARPROT;
  wire [3:0]m00_couplers_to_axi_pcie_interconnect_ARQOS;
  wire m00_couplers_to_axi_pcie_interconnect_ARREADY;
  wire [3:0]m00_couplers_to_axi_pcie_interconnect_ARREGION;
  wire [2:0]m00_couplers_to_axi_pcie_interconnect_ARSIZE;
  wire m00_couplers_to_axi_pcie_interconnect_ARVALID;
  wire [31:0]m00_couplers_to_axi_pcie_interconnect_AWADDR;
  wire [1:0]m00_couplers_to_axi_pcie_interconnect_AWBURST;
  wire [3:0]m00_couplers_to_axi_pcie_interconnect_AWCACHE;
  wire [7:0]m00_couplers_to_axi_pcie_interconnect_AWLEN;
  wire [0:0]m00_couplers_to_axi_pcie_interconnect_AWLOCK;
  wire [2:0]m00_couplers_to_axi_pcie_interconnect_AWPROT;
  wire [3:0]m00_couplers_to_axi_pcie_interconnect_AWQOS;
  wire m00_couplers_to_axi_pcie_interconnect_AWREADY;
  wire [3:0]m00_couplers_to_axi_pcie_interconnect_AWREGION;
  wire [2:0]m00_couplers_to_axi_pcie_interconnect_AWSIZE;
  wire m00_couplers_to_axi_pcie_interconnect_AWVALID;
  wire m00_couplers_to_axi_pcie_interconnect_BREADY;
  wire [1:0]m00_couplers_to_axi_pcie_interconnect_BRESP;
  wire m00_couplers_to_axi_pcie_interconnect_BVALID;
  wire [31:0]m00_couplers_to_axi_pcie_interconnect_RDATA;
  wire m00_couplers_to_axi_pcie_interconnect_RLAST;
  wire m00_couplers_to_axi_pcie_interconnect_RREADY;
  wire [1:0]m00_couplers_to_axi_pcie_interconnect_RRESP;
  wire m00_couplers_to_axi_pcie_interconnect_RVALID;
  wire [31:0]m00_couplers_to_axi_pcie_interconnect_WDATA;
  wire m00_couplers_to_axi_pcie_interconnect_WLAST;
  wire m00_couplers_to_axi_pcie_interconnect_WREADY;
  wire [3:0]m00_couplers_to_axi_pcie_interconnect_WSTRB;
  wire m00_couplers_to_axi_pcie_interconnect_WVALID;
  wire [23:0]m01_couplers_to_axi_pcie_interconnect_ARADDR;
  wire [1:0]m01_couplers_to_axi_pcie_interconnect_ARBURST;
  wire [3:0]m01_couplers_to_axi_pcie_interconnect_ARCACHE;
  wire [7:0]m01_couplers_to_axi_pcie_interconnect_ARLEN;
  wire m01_couplers_to_axi_pcie_interconnect_ARLOCK;
  wire [2:0]m01_couplers_to_axi_pcie_interconnect_ARPROT;
  wire m01_couplers_to_axi_pcie_interconnect_ARREADY;
  wire [2:0]m01_couplers_to_axi_pcie_interconnect_ARSIZE;
  wire m01_couplers_to_axi_pcie_interconnect_ARVALID;
  wire [23:0]m01_couplers_to_axi_pcie_interconnect_AWADDR;
  wire [1:0]m01_couplers_to_axi_pcie_interconnect_AWBURST;
  wire [3:0]m01_couplers_to_axi_pcie_interconnect_AWCACHE;
  wire [7:0]m01_couplers_to_axi_pcie_interconnect_AWLEN;
  wire m01_couplers_to_axi_pcie_interconnect_AWLOCK;
  wire [2:0]m01_couplers_to_axi_pcie_interconnect_AWPROT;
  wire m01_couplers_to_axi_pcie_interconnect_AWREADY;
  wire [2:0]m01_couplers_to_axi_pcie_interconnect_AWSIZE;
  wire m01_couplers_to_axi_pcie_interconnect_AWVALID;
  wire m01_couplers_to_axi_pcie_interconnect_BREADY;
  wire [1:0]m01_couplers_to_axi_pcie_interconnect_BRESP;
  wire m01_couplers_to_axi_pcie_interconnect_BVALID;
  wire [31:0]m01_couplers_to_axi_pcie_interconnect_RDATA;
  wire m01_couplers_to_axi_pcie_interconnect_RLAST;
  wire m01_couplers_to_axi_pcie_interconnect_RREADY;
  wire [1:0]m01_couplers_to_axi_pcie_interconnect_RRESP;
  wire m01_couplers_to_axi_pcie_interconnect_RVALID;
  wire [31:0]m01_couplers_to_axi_pcie_interconnect_WDATA;
  wire m01_couplers_to_axi_pcie_interconnect_WLAST;
  wire m01_couplers_to_axi_pcie_interconnect_WREADY;
  wire [3:0]m01_couplers_to_axi_pcie_interconnect_WSTRB;
  wire m01_couplers_to_axi_pcie_interconnect_WVALID;
  wire [28:0]m02_couplers_to_axi_pcie_interconnect_ARADDR;
  wire [1:0]m02_couplers_to_axi_pcie_interconnect_ARBURST;
  wire [3:0]m02_couplers_to_axi_pcie_interconnect_ARCACHE;
  wire [3:0]m02_couplers_to_axi_pcie_interconnect_ARID;
  wire [7:0]m02_couplers_to_axi_pcie_interconnect_ARLEN;
  wire [0:0]m02_couplers_to_axi_pcie_interconnect_ARLOCK;
  wire [2:0]m02_couplers_to_axi_pcie_interconnect_ARPROT;
  wire [3:0]m02_couplers_to_axi_pcie_interconnect_ARQOS;
  wire m02_couplers_to_axi_pcie_interconnect_ARREADY;
  wire [2:0]m02_couplers_to_axi_pcie_interconnect_ARSIZE;
  wire m02_couplers_to_axi_pcie_interconnect_ARVALID;
  wire [28:0]m02_couplers_to_axi_pcie_interconnect_AWADDR;
  wire [1:0]m02_couplers_to_axi_pcie_interconnect_AWBURST;
  wire [3:0]m02_couplers_to_axi_pcie_interconnect_AWCACHE;
  wire [3:0]m02_couplers_to_axi_pcie_interconnect_AWID;
  wire [7:0]m02_couplers_to_axi_pcie_interconnect_AWLEN;
  wire [0:0]m02_couplers_to_axi_pcie_interconnect_AWLOCK;
  wire [2:0]m02_couplers_to_axi_pcie_interconnect_AWPROT;
  wire [3:0]m02_couplers_to_axi_pcie_interconnect_AWQOS;
  wire m02_couplers_to_axi_pcie_interconnect_AWREADY;
  wire [2:0]m02_couplers_to_axi_pcie_interconnect_AWSIZE;
  wire m02_couplers_to_axi_pcie_interconnect_AWVALID;
  wire [3:0]m02_couplers_to_axi_pcie_interconnect_BID;
  wire m02_couplers_to_axi_pcie_interconnect_BREADY;
  wire [1:0]m02_couplers_to_axi_pcie_interconnect_BRESP;
  wire m02_couplers_to_axi_pcie_interconnect_BVALID;
  wire [63:0]m02_couplers_to_axi_pcie_interconnect_RDATA;
  wire [3:0]m02_couplers_to_axi_pcie_interconnect_RID;
  wire m02_couplers_to_axi_pcie_interconnect_RLAST;
  wire m02_couplers_to_axi_pcie_interconnect_RREADY;
  wire [1:0]m02_couplers_to_axi_pcie_interconnect_RRESP;
  wire m02_couplers_to_axi_pcie_interconnect_RVALID;
  wire [63:0]m02_couplers_to_axi_pcie_interconnect_WDATA;
  wire m02_couplers_to_axi_pcie_interconnect_WLAST;
  wire m02_couplers_to_axi_pcie_interconnect_WREADY;
  wire [7:0]m02_couplers_to_axi_pcie_interconnect_WSTRB;
  wire m02_couplers_to_axi_pcie_interconnect_WVALID;
  wire [31:0]m03_couplers_to_axi_pcie_interconnect_ARADDR;
  wire [1:0]m03_couplers_to_axi_pcie_interconnect_ARBURST;
  wire [3:0]m03_couplers_to_axi_pcie_interconnect_ARCACHE;
  wire [3:0]m03_couplers_to_axi_pcie_interconnect_ARID;
  wire [7:0]m03_couplers_to_axi_pcie_interconnect_ARLEN;
  wire [0:0]m03_couplers_to_axi_pcie_interconnect_ARLOCK;
  wire [2:0]m03_couplers_to_axi_pcie_interconnect_ARPROT;
  wire [0:0]m03_couplers_to_axi_pcie_interconnect_ARREADY;
  wire [2:0]m03_couplers_to_axi_pcie_interconnect_ARSIZE;
  wire [0:0]m03_couplers_to_axi_pcie_interconnect_ARVALID;
  wire [31:0]m03_couplers_to_axi_pcie_interconnect_AWADDR;
  wire [1:0]m03_couplers_to_axi_pcie_interconnect_AWBURST;
  wire [3:0]m03_couplers_to_axi_pcie_interconnect_AWCACHE;
  wire [3:0]m03_couplers_to_axi_pcie_interconnect_AWID;
  wire [7:0]m03_couplers_to_axi_pcie_interconnect_AWLEN;
  wire [0:0]m03_couplers_to_axi_pcie_interconnect_AWLOCK;
  wire [2:0]m03_couplers_to_axi_pcie_interconnect_AWPROT;
  wire [0:0]m03_couplers_to_axi_pcie_interconnect_AWREADY;
  wire [2:0]m03_couplers_to_axi_pcie_interconnect_AWSIZE;
  wire [0:0]m03_couplers_to_axi_pcie_interconnect_AWVALID;
  wire [3:0]m03_couplers_to_axi_pcie_interconnect_BID;
  wire [0:0]m03_couplers_to_axi_pcie_interconnect_BREADY;
  wire [1:0]m03_couplers_to_axi_pcie_interconnect_BRESP;
  wire [0:0]m03_couplers_to_axi_pcie_interconnect_BVALID;
  wire [63:0]m03_couplers_to_axi_pcie_interconnect_RDATA;
  wire [3:0]m03_couplers_to_axi_pcie_interconnect_RID;
  wire [0:0]m03_couplers_to_axi_pcie_interconnect_RLAST;
  wire [0:0]m03_couplers_to_axi_pcie_interconnect_RREADY;
  wire [1:0]m03_couplers_to_axi_pcie_interconnect_RRESP;
  wire [0:0]m03_couplers_to_axi_pcie_interconnect_RVALID;
  wire [63:0]m03_couplers_to_axi_pcie_interconnect_WDATA;
  wire [0:0]m03_couplers_to_axi_pcie_interconnect_WLAST;
  wire [0:0]m03_couplers_to_axi_pcie_interconnect_WREADY;
  wire [7:0]m03_couplers_to_axi_pcie_interconnect_WSTRB;
  wire [0:0]m03_couplers_to_axi_pcie_interconnect_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [1:0]s00_couplers_to_xbar_ARBURST;
  wire [3:0]s00_couplers_to_xbar_ARCACHE;
  wire [2:0]s00_couplers_to_xbar_ARID;
  wire [7:0]s00_couplers_to_xbar_ARLEN;
  wire [0:0]s00_couplers_to_xbar_ARLOCK;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [3:0]s00_couplers_to_xbar_ARQOS;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [2:0]s00_couplers_to_xbar_ARSIZE;
  wire s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [1:0]s00_couplers_to_xbar_AWBURST;
  wire [3:0]s00_couplers_to_xbar_AWCACHE;
  wire [2:0]s00_couplers_to_xbar_AWID;
  wire [7:0]s00_couplers_to_xbar_AWLEN;
  wire [0:0]s00_couplers_to_xbar_AWLOCK;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [3:0]s00_couplers_to_xbar_AWQOS;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [2:0]s00_couplers_to_xbar_AWSIZE;
  wire s00_couplers_to_xbar_AWVALID;
  wire [3:0]s00_couplers_to_xbar_BID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [63:0]s00_couplers_to_xbar_RDATA;
  wire [3:0]s00_couplers_to_xbar_RID;
  wire [0:0]s00_couplers_to_xbar_RLAST;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [63:0]s00_couplers_to_xbar_WDATA;
  wire s00_couplers_to_xbar_WLAST;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [7:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [31:0]s01_couplers_to_xbar_ARADDR;
  wire [1:0]s01_couplers_to_xbar_ARBURST;
  wire [3:0]s01_couplers_to_xbar_ARCACHE;
  wire [7:0]s01_couplers_to_xbar_ARLEN;
  wire [0:0]s01_couplers_to_xbar_ARLOCK;
  wire [2:0]s01_couplers_to_xbar_ARPROT;
  wire [3:0]s01_couplers_to_xbar_ARQOS;
  wire [1:1]s01_couplers_to_xbar_ARREADY;
  wire [2:0]s01_couplers_to_xbar_ARSIZE;
  wire s01_couplers_to_xbar_ARVALID;
  wire [31:0]s01_couplers_to_xbar_AWADDR;
  wire [1:0]s01_couplers_to_xbar_AWBURST;
  wire [3:0]s01_couplers_to_xbar_AWCACHE;
  wire [7:0]s01_couplers_to_xbar_AWLEN;
  wire [0:0]s01_couplers_to_xbar_AWLOCK;
  wire [2:0]s01_couplers_to_xbar_AWPROT;
  wire [3:0]s01_couplers_to_xbar_AWQOS;
  wire [1:1]s01_couplers_to_xbar_AWREADY;
  wire [2:0]s01_couplers_to_xbar_AWSIZE;
  wire s01_couplers_to_xbar_AWVALID;
  wire s01_couplers_to_xbar_BREADY;
  wire [3:2]s01_couplers_to_xbar_BRESP;
  wire [1:1]s01_couplers_to_xbar_BVALID;
  wire [127:64]s01_couplers_to_xbar_RDATA;
  wire [1:1]s01_couplers_to_xbar_RLAST;
  wire s01_couplers_to_xbar_RREADY;
  wire [3:2]s01_couplers_to_xbar_RRESP;
  wire [1:1]s01_couplers_to_xbar_RVALID;
  wire [63:0]s01_couplers_to_xbar_WDATA;
  wire s01_couplers_to_xbar_WLAST;
  wire [1:1]s01_couplers_to_xbar_WREADY;
  wire [7:0]s01_couplers_to_xbar_WSTRB;
  wire s01_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [1:0]xbar_to_m00_couplers_ARBURST;
  wire [3:0]xbar_to_m00_couplers_ARCACHE;
  wire [3:0]xbar_to_m00_couplers_ARID;
  wire [7:0]xbar_to_m00_couplers_ARLEN;
  wire [0:0]xbar_to_m00_couplers_ARLOCK;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire [3:0]xbar_to_m00_couplers_ARQOS;
  wire xbar_to_m00_couplers_ARREADY;
  wire [3:0]xbar_to_m00_couplers_ARREGION;
  wire [2:0]xbar_to_m00_couplers_ARSIZE;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [1:0]xbar_to_m00_couplers_AWBURST;
  wire [3:0]xbar_to_m00_couplers_AWCACHE;
  wire [3:0]xbar_to_m00_couplers_AWID;
  wire [7:0]xbar_to_m00_couplers_AWLEN;
  wire [0:0]xbar_to_m00_couplers_AWLOCK;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire [3:0]xbar_to_m00_couplers_AWQOS;
  wire xbar_to_m00_couplers_AWREADY;
  wire [3:0]xbar_to_m00_couplers_AWREGION;
  wire [2:0]xbar_to_m00_couplers_AWSIZE;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [3:0]xbar_to_m00_couplers_BID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [63:0]xbar_to_m00_couplers_RDATA;
  wire [3:0]xbar_to_m00_couplers_RID;
  wire xbar_to_m00_couplers_RLAST;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [63:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WLAST;
  wire xbar_to_m00_couplers_WREADY;
  wire [7:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [63:32]xbar_to_m01_couplers_ARADDR;
  wire [3:2]xbar_to_m01_couplers_ARBURST;
  wire [7:4]xbar_to_m01_couplers_ARCACHE;
  wire [7:4]xbar_to_m01_couplers_ARID;
  wire [15:8]xbar_to_m01_couplers_ARLEN;
  wire [1:1]xbar_to_m01_couplers_ARLOCK;
  wire [5:3]xbar_to_m01_couplers_ARPROT;
  wire [7:4]xbar_to_m01_couplers_ARQOS;
  wire xbar_to_m01_couplers_ARREADY;
  wire [7:4]xbar_to_m01_couplers_ARREGION;
  wire [5:3]xbar_to_m01_couplers_ARSIZE;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
  wire [3:2]xbar_to_m01_couplers_AWBURST;
  wire [7:4]xbar_to_m01_couplers_AWCACHE;
  wire [7:4]xbar_to_m01_couplers_AWID;
  wire [15:8]xbar_to_m01_couplers_AWLEN;
  wire [1:1]xbar_to_m01_couplers_AWLOCK;
  wire [5:3]xbar_to_m01_couplers_AWPROT;
  wire [7:4]xbar_to_m01_couplers_AWQOS;
  wire xbar_to_m01_couplers_AWREADY;
  wire [7:4]xbar_to_m01_couplers_AWREGION;
  wire [5:3]xbar_to_m01_couplers_AWSIZE;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [3:0]xbar_to_m01_couplers_BID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [63:0]xbar_to_m01_couplers_RDATA;
  wire [3:0]xbar_to_m01_couplers_RID;
  wire xbar_to_m01_couplers_RLAST;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [127:64]xbar_to_m01_couplers_WDATA;
  wire [1:1]xbar_to_m01_couplers_WLAST;
  wire xbar_to_m01_couplers_WREADY;
  wire [15:8]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [95:64]xbar_to_m02_couplers_ARADDR;
  wire [5:4]xbar_to_m02_couplers_ARBURST;
  wire [11:8]xbar_to_m02_couplers_ARCACHE;
  wire [11:8]xbar_to_m02_couplers_ARID;
  wire [23:16]xbar_to_m02_couplers_ARLEN;
  wire [2:2]xbar_to_m02_couplers_ARLOCK;
  wire [8:6]xbar_to_m02_couplers_ARPROT;
  wire [11:8]xbar_to_m02_couplers_ARQOS;
  wire xbar_to_m02_couplers_ARREADY;
  wire [11:8]xbar_to_m02_couplers_ARREGION;
  wire [8:6]xbar_to_m02_couplers_ARSIZE;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [95:64]xbar_to_m02_couplers_AWADDR;
  wire [5:4]xbar_to_m02_couplers_AWBURST;
  wire [11:8]xbar_to_m02_couplers_AWCACHE;
  wire [11:8]xbar_to_m02_couplers_AWID;
  wire [23:16]xbar_to_m02_couplers_AWLEN;
  wire [2:2]xbar_to_m02_couplers_AWLOCK;
  wire [8:6]xbar_to_m02_couplers_AWPROT;
  wire [11:8]xbar_to_m02_couplers_AWQOS;
  wire xbar_to_m02_couplers_AWREADY;
  wire [11:8]xbar_to_m02_couplers_AWREGION;
  wire [8:6]xbar_to_m02_couplers_AWSIZE;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [3:0]xbar_to_m02_couplers_BID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire xbar_to_m02_couplers_BVALID;
  wire [63:0]xbar_to_m02_couplers_RDATA;
  wire [3:0]xbar_to_m02_couplers_RID;
  wire xbar_to_m02_couplers_RLAST;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire xbar_to_m02_couplers_RVALID;
  wire [191:128]xbar_to_m02_couplers_WDATA;
  wire [2:2]xbar_to_m02_couplers_WLAST;
  wire xbar_to_m02_couplers_WREADY;
  wire [23:16]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;
  wire [127:96]xbar_to_m03_couplers_ARADDR;
  wire [7:6]xbar_to_m03_couplers_ARBURST;
  wire [15:12]xbar_to_m03_couplers_ARCACHE;
  wire [15:12]xbar_to_m03_couplers_ARID;
  wire [31:24]xbar_to_m03_couplers_ARLEN;
  wire [3:3]xbar_to_m03_couplers_ARLOCK;
  wire [11:9]xbar_to_m03_couplers_ARPROT;
  wire [0:0]xbar_to_m03_couplers_ARREADY;
  wire [11:9]xbar_to_m03_couplers_ARSIZE;
  wire [3:3]xbar_to_m03_couplers_ARVALID;
  wire [127:96]xbar_to_m03_couplers_AWADDR;
  wire [7:6]xbar_to_m03_couplers_AWBURST;
  wire [15:12]xbar_to_m03_couplers_AWCACHE;
  wire [15:12]xbar_to_m03_couplers_AWID;
  wire [31:24]xbar_to_m03_couplers_AWLEN;
  wire [3:3]xbar_to_m03_couplers_AWLOCK;
  wire [11:9]xbar_to_m03_couplers_AWPROT;
  wire [0:0]xbar_to_m03_couplers_AWREADY;
  wire [11:9]xbar_to_m03_couplers_AWSIZE;
  wire [3:3]xbar_to_m03_couplers_AWVALID;
  wire [3:0]xbar_to_m03_couplers_BID;
  wire [3:3]xbar_to_m03_couplers_BREADY;
  wire [1:0]xbar_to_m03_couplers_BRESP;
  wire [0:0]xbar_to_m03_couplers_BVALID;
  wire [63:0]xbar_to_m03_couplers_RDATA;
  wire [3:0]xbar_to_m03_couplers_RID;
  wire [0:0]xbar_to_m03_couplers_RLAST;
  wire [3:3]xbar_to_m03_couplers_RREADY;
  wire [1:0]xbar_to_m03_couplers_RRESP;
  wire [0:0]xbar_to_m03_couplers_RVALID;
  wire [255:192]xbar_to_m03_couplers_WDATA;
  wire [3:3]xbar_to_m03_couplers_WLAST;
  wire [0:0]xbar_to_m03_couplers_WREADY;
  wire [31:24]xbar_to_m03_couplers_WSTRB;
  wire [3:3]xbar_to_m03_couplers_WVALID;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[31:0] = m00_couplers_to_axi_pcie_interconnect_ARADDR;
  assign M00_AXI_arburst[1:0] = m00_couplers_to_axi_pcie_interconnect_ARBURST;
  assign M00_AXI_arcache[3:0] = m00_couplers_to_axi_pcie_interconnect_ARCACHE;
  assign M00_AXI_arlen[7:0] = m00_couplers_to_axi_pcie_interconnect_ARLEN;
  assign M00_AXI_arlock[0] = m00_couplers_to_axi_pcie_interconnect_ARLOCK;
  assign M00_AXI_arprot[2:0] = m00_couplers_to_axi_pcie_interconnect_ARPROT;
  assign M00_AXI_arqos[3:0] = m00_couplers_to_axi_pcie_interconnect_ARQOS;
  assign M00_AXI_arregion[3:0] = m00_couplers_to_axi_pcie_interconnect_ARREGION;
  assign M00_AXI_arsize[2:0] = m00_couplers_to_axi_pcie_interconnect_ARSIZE;
  assign M00_AXI_arvalid = m00_couplers_to_axi_pcie_interconnect_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_axi_pcie_interconnect_AWADDR;
  assign M00_AXI_awburst[1:0] = m00_couplers_to_axi_pcie_interconnect_AWBURST;
  assign M00_AXI_awcache[3:0] = m00_couplers_to_axi_pcie_interconnect_AWCACHE;
  assign M00_AXI_awlen[7:0] = m00_couplers_to_axi_pcie_interconnect_AWLEN;
  assign M00_AXI_awlock[0] = m00_couplers_to_axi_pcie_interconnect_AWLOCK;
  assign M00_AXI_awprot[2:0] = m00_couplers_to_axi_pcie_interconnect_AWPROT;
  assign M00_AXI_awqos[3:0] = m00_couplers_to_axi_pcie_interconnect_AWQOS;
  assign M00_AXI_awregion[3:0] = m00_couplers_to_axi_pcie_interconnect_AWREGION;
  assign M00_AXI_awsize[2:0] = m00_couplers_to_axi_pcie_interconnect_AWSIZE;
  assign M00_AXI_awvalid = m00_couplers_to_axi_pcie_interconnect_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_axi_pcie_interconnect_BREADY;
  assign M00_AXI_rready = m00_couplers_to_axi_pcie_interconnect_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_axi_pcie_interconnect_WDATA;
  assign M00_AXI_wlast = m00_couplers_to_axi_pcie_interconnect_WLAST;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_axi_pcie_interconnect_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_axi_pcie_interconnect_WVALID;
  assign M01_ACLK_1 = M01_ACLK;
  assign M01_ARESETN_1 = M01_ARESETN;
  assign M01_AXI_araddr[23:0] = m01_couplers_to_axi_pcie_interconnect_ARADDR;
  assign M01_AXI_arburst[1:0] = m01_couplers_to_axi_pcie_interconnect_ARBURST;
  assign M01_AXI_arcache[3:0] = m01_couplers_to_axi_pcie_interconnect_ARCACHE;
  assign M01_AXI_arlen[7:0] = m01_couplers_to_axi_pcie_interconnect_ARLEN;
  assign M01_AXI_arlock = m01_couplers_to_axi_pcie_interconnect_ARLOCK;
  assign M01_AXI_arprot[2:0] = m01_couplers_to_axi_pcie_interconnect_ARPROT;
  assign M01_AXI_arsize[2:0] = m01_couplers_to_axi_pcie_interconnect_ARSIZE;
  assign M01_AXI_arvalid = m01_couplers_to_axi_pcie_interconnect_ARVALID;
  assign M01_AXI_awaddr[23:0] = m01_couplers_to_axi_pcie_interconnect_AWADDR;
  assign M01_AXI_awburst[1:0] = m01_couplers_to_axi_pcie_interconnect_AWBURST;
  assign M01_AXI_awcache[3:0] = m01_couplers_to_axi_pcie_interconnect_AWCACHE;
  assign M01_AXI_awlen[7:0] = m01_couplers_to_axi_pcie_interconnect_AWLEN;
  assign M01_AXI_awlock = m01_couplers_to_axi_pcie_interconnect_AWLOCK;
  assign M01_AXI_awprot[2:0] = m01_couplers_to_axi_pcie_interconnect_AWPROT;
  assign M01_AXI_awsize[2:0] = m01_couplers_to_axi_pcie_interconnect_AWSIZE;
  assign M01_AXI_awvalid = m01_couplers_to_axi_pcie_interconnect_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_axi_pcie_interconnect_BREADY;
  assign M01_AXI_rready = m01_couplers_to_axi_pcie_interconnect_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_axi_pcie_interconnect_WDATA;
  assign M01_AXI_wlast = m01_couplers_to_axi_pcie_interconnect_WLAST;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_axi_pcie_interconnect_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_axi_pcie_interconnect_WVALID;
  assign M02_ACLK_1 = M02_ACLK;
  assign M02_ARESETN_1 = M02_ARESETN;
  assign M02_AXI_araddr[28:0] = m02_couplers_to_axi_pcie_interconnect_ARADDR;
  assign M02_AXI_arburst[1:0] = m02_couplers_to_axi_pcie_interconnect_ARBURST;
  assign M02_AXI_arcache[3:0] = m02_couplers_to_axi_pcie_interconnect_ARCACHE;
  assign M02_AXI_arid[3:0] = m02_couplers_to_axi_pcie_interconnect_ARID;
  assign M02_AXI_arlen[7:0] = m02_couplers_to_axi_pcie_interconnect_ARLEN;
  assign M02_AXI_arlock[0] = m02_couplers_to_axi_pcie_interconnect_ARLOCK;
  assign M02_AXI_arprot[2:0] = m02_couplers_to_axi_pcie_interconnect_ARPROT;
  assign M02_AXI_arqos[3:0] = m02_couplers_to_axi_pcie_interconnect_ARQOS;
  assign M02_AXI_arsize[2:0] = m02_couplers_to_axi_pcie_interconnect_ARSIZE;
  assign M02_AXI_arvalid = m02_couplers_to_axi_pcie_interconnect_ARVALID;
  assign M02_AXI_awaddr[28:0] = m02_couplers_to_axi_pcie_interconnect_AWADDR;
  assign M02_AXI_awburst[1:0] = m02_couplers_to_axi_pcie_interconnect_AWBURST;
  assign M02_AXI_awcache[3:0] = m02_couplers_to_axi_pcie_interconnect_AWCACHE;
  assign M02_AXI_awid[3:0] = m02_couplers_to_axi_pcie_interconnect_AWID;
  assign M02_AXI_awlen[7:0] = m02_couplers_to_axi_pcie_interconnect_AWLEN;
  assign M02_AXI_awlock[0] = m02_couplers_to_axi_pcie_interconnect_AWLOCK;
  assign M02_AXI_awprot[2:0] = m02_couplers_to_axi_pcie_interconnect_AWPROT;
  assign M02_AXI_awqos[3:0] = m02_couplers_to_axi_pcie_interconnect_AWQOS;
  assign M02_AXI_awsize[2:0] = m02_couplers_to_axi_pcie_interconnect_AWSIZE;
  assign M02_AXI_awvalid = m02_couplers_to_axi_pcie_interconnect_AWVALID;
  assign M02_AXI_bready = m02_couplers_to_axi_pcie_interconnect_BREADY;
  assign M02_AXI_rready = m02_couplers_to_axi_pcie_interconnect_RREADY;
  assign M02_AXI_wdata[63:0] = m02_couplers_to_axi_pcie_interconnect_WDATA;
  assign M02_AXI_wlast = m02_couplers_to_axi_pcie_interconnect_WLAST;
  assign M02_AXI_wstrb[7:0] = m02_couplers_to_axi_pcie_interconnect_WSTRB;
  assign M02_AXI_wvalid = m02_couplers_to_axi_pcie_interconnect_WVALID;
  assign M03_ACLK_1 = M03_ACLK;
  assign M03_ARESETN_1 = M03_ARESETN;
  assign M03_AXI_araddr[31:0] = m03_couplers_to_axi_pcie_interconnect_ARADDR;
  assign M03_AXI_arburst[1:0] = m03_couplers_to_axi_pcie_interconnect_ARBURST;
  assign M03_AXI_arcache[3:0] = m03_couplers_to_axi_pcie_interconnect_ARCACHE;
  assign M03_AXI_arid[3:0] = m03_couplers_to_axi_pcie_interconnect_ARID;
  assign M03_AXI_arlen[7:0] = m03_couplers_to_axi_pcie_interconnect_ARLEN;
  assign M03_AXI_arlock[0] = m03_couplers_to_axi_pcie_interconnect_ARLOCK;
  assign M03_AXI_arprot[2:0] = m03_couplers_to_axi_pcie_interconnect_ARPROT;
  assign M03_AXI_arsize[2:0] = m03_couplers_to_axi_pcie_interconnect_ARSIZE;
  assign M03_AXI_arvalid[0] = m03_couplers_to_axi_pcie_interconnect_ARVALID;
  assign M03_AXI_awaddr[31:0] = m03_couplers_to_axi_pcie_interconnect_AWADDR;
  assign M03_AXI_awburst[1:0] = m03_couplers_to_axi_pcie_interconnect_AWBURST;
  assign M03_AXI_awcache[3:0] = m03_couplers_to_axi_pcie_interconnect_AWCACHE;
  assign M03_AXI_awid[3:0] = m03_couplers_to_axi_pcie_interconnect_AWID;
  assign M03_AXI_awlen[7:0] = m03_couplers_to_axi_pcie_interconnect_AWLEN;
  assign M03_AXI_awlock[0] = m03_couplers_to_axi_pcie_interconnect_AWLOCK;
  assign M03_AXI_awprot[2:0] = m03_couplers_to_axi_pcie_interconnect_AWPROT;
  assign M03_AXI_awsize[2:0] = m03_couplers_to_axi_pcie_interconnect_AWSIZE;
  assign M03_AXI_awvalid[0] = m03_couplers_to_axi_pcie_interconnect_AWVALID;
  assign M03_AXI_bready[0] = m03_couplers_to_axi_pcie_interconnect_BREADY;
  assign M03_AXI_rready[0] = m03_couplers_to_axi_pcie_interconnect_RREADY;
  assign M03_AXI_wdata[63:0] = m03_couplers_to_axi_pcie_interconnect_WDATA;
  assign M03_AXI_wlast[0] = m03_couplers_to_axi_pcie_interconnect_WLAST;
  assign M03_AXI_wstrb[7:0] = m03_couplers_to_axi_pcie_interconnect_WSTRB;
  assign M03_AXI_wvalid[0] = m03_couplers_to_axi_pcie_interconnect_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = axi_pcie_interconnect_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = axi_pcie_interconnect_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[2:0] = axi_pcie_interconnect_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = axi_pcie_interconnect_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_pcie_interconnect_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[63:0] = axi_pcie_interconnect_to_s00_couplers_RDATA;
  assign S00_AXI_rid[2:0] = axi_pcie_interconnect_to_s00_couplers_RID;
  assign S00_AXI_rlast = axi_pcie_interconnect_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_pcie_interconnect_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_pcie_interconnect_to_s00_couplers_RVALID;
  assign S00_AXI_wready = axi_pcie_interconnect_to_s00_couplers_WREADY;
  assign S01_ACLK_1 = S01_ACLK;
  assign S01_ARESETN_1 = S01_ARESETN;
  assign S01_AXI_arready = axi_pcie_interconnect_to_s01_couplers_ARREADY;
  assign S01_AXI_awready = axi_pcie_interconnect_to_s01_couplers_AWREADY;
  assign S01_AXI_bresp[1:0] = axi_pcie_interconnect_to_s01_couplers_BRESP;
  assign S01_AXI_bvalid = axi_pcie_interconnect_to_s01_couplers_BVALID;
  assign S01_AXI_rdata[63:0] = axi_pcie_interconnect_to_s01_couplers_RDATA;
  assign S01_AXI_rlast = axi_pcie_interconnect_to_s01_couplers_RLAST;
  assign S01_AXI_rresp[1:0] = axi_pcie_interconnect_to_s01_couplers_RRESP;
  assign S01_AXI_rvalid = axi_pcie_interconnect_to_s01_couplers_RVALID;
  assign S01_AXI_wready = axi_pcie_interconnect_to_s01_couplers_WREADY;
  assign axi_pcie_interconnect_ACLK_net = ACLK;
  assign axi_pcie_interconnect_ARESETN_net = ARESETN;
  assign axi_pcie_interconnect_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign axi_pcie_interconnect_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_pcie_interconnect_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_pcie_interconnect_to_s00_couplers_ARID = S00_AXI_arid[2:0];
  assign axi_pcie_interconnect_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign axi_pcie_interconnect_to_s00_couplers_ARLOCK = S00_AXI_arlock[0];
  assign axi_pcie_interconnect_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_pcie_interconnect_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign axi_pcie_interconnect_to_s00_couplers_ARREGION = S00_AXI_arregion[3:0];
  assign axi_pcie_interconnect_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_pcie_interconnect_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_pcie_interconnect_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign axi_pcie_interconnect_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign axi_pcie_interconnect_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign axi_pcie_interconnect_to_s00_couplers_AWID = S00_AXI_awid[2:0];
  assign axi_pcie_interconnect_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign axi_pcie_interconnect_to_s00_couplers_AWLOCK = S00_AXI_awlock[0];
  assign axi_pcie_interconnect_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_pcie_interconnect_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign axi_pcie_interconnect_to_s00_couplers_AWREGION = S00_AXI_awregion[3:0];
  assign axi_pcie_interconnect_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign axi_pcie_interconnect_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_pcie_interconnect_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_pcie_interconnect_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_pcie_interconnect_to_s00_couplers_WDATA = S00_AXI_wdata[63:0];
  assign axi_pcie_interconnect_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign axi_pcie_interconnect_to_s00_couplers_WSTRB = S00_AXI_wstrb[7:0];
  assign axi_pcie_interconnect_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign axi_pcie_interconnect_to_s01_couplers_ARADDR = S01_AXI_araddr[31:0];
  assign axi_pcie_interconnect_to_s01_couplers_ARBURST = S01_AXI_arburst[1:0];
  assign axi_pcie_interconnect_to_s01_couplers_ARCACHE = S01_AXI_arcache[3:0];
  assign axi_pcie_interconnect_to_s01_couplers_ARLEN = S01_AXI_arlen[7:0];
  assign axi_pcie_interconnect_to_s01_couplers_ARLOCK = S01_AXI_arlock;
  assign axi_pcie_interconnect_to_s01_couplers_ARPROT = S01_AXI_arprot[2:0];
  assign axi_pcie_interconnect_to_s01_couplers_ARSIZE = S01_AXI_arsize[2:0];
  assign axi_pcie_interconnect_to_s01_couplers_ARVALID = S01_AXI_arvalid;
  assign axi_pcie_interconnect_to_s01_couplers_AWADDR = S01_AXI_awaddr[31:0];
  assign axi_pcie_interconnect_to_s01_couplers_AWBURST = S01_AXI_awburst[1:0];
  assign axi_pcie_interconnect_to_s01_couplers_AWCACHE = S01_AXI_awcache[3:0];
  assign axi_pcie_interconnect_to_s01_couplers_AWLEN = S01_AXI_awlen[7:0];
  assign axi_pcie_interconnect_to_s01_couplers_AWLOCK = S01_AXI_awlock;
  assign axi_pcie_interconnect_to_s01_couplers_AWPROT = S01_AXI_awprot[2:0];
  assign axi_pcie_interconnect_to_s01_couplers_AWSIZE = S01_AXI_awsize[2:0];
  assign axi_pcie_interconnect_to_s01_couplers_AWVALID = S01_AXI_awvalid;
  assign axi_pcie_interconnect_to_s01_couplers_BREADY = S01_AXI_bready;
  assign axi_pcie_interconnect_to_s01_couplers_RREADY = S01_AXI_rready;
  assign axi_pcie_interconnect_to_s01_couplers_WDATA = S01_AXI_wdata[63:0];
  assign axi_pcie_interconnect_to_s01_couplers_WLAST = S01_AXI_wlast;
  assign axi_pcie_interconnect_to_s01_couplers_WSTRB = S01_AXI_wstrb[7:0];
  assign axi_pcie_interconnect_to_s01_couplers_WVALID = S01_AXI_wvalid;
  assign m00_couplers_to_axi_pcie_interconnect_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_axi_pcie_interconnect_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_axi_pcie_interconnect_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_pcie_interconnect_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_axi_pcie_interconnect_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_axi_pcie_interconnect_RLAST = M00_AXI_rlast;
  assign m00_couplers_to_axi_pcie_interconnect_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_pcie_interconnect_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_axi_pcie_interconnect_WREADY = M00_AXI_wready;
  assign m01_couplers_to_axi_pcie_interconnect_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_axi_pcie_interconnect_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_axi_pcie_interconnect_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_axi_pcie_interconnect_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_axi_pcie_interconnect_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_axi_pcie_interconnect_RLAST = M01_AXI_rlast;
  assign m01_couplers_to_axi_pcie_interconnect_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_axi_pcie_interconnect_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_axi_pcie_interconnect_WREADY = M01_AXI_wready;
  assign m02_couplers_to_axi_pcie_interconnect_ARREADY = M02_AXI_arready;
  assign m02_couplers_to_axi_pcie_interconnect_AWREADY = M02_AXI_awready;
  assign m02_couplers_to_axi_pcie_interconnect_BID = M02_AXI_bid[3:0];
  assign m02_couplers_to_axi_pcie_interconnect_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_axi_pcie_interconnect_BVALID = M02_AXI_bvalid;
  assign m02_couplers_to_axi_pcie_interconnect_RDATA = M02_AXI_rdata[63:0];
  assign m02_couplers_to_axi_pcie_interconnect_RID = M02_AXI_rid[3:0];
  assign m02_couplers_to_axi_pcie_interconnect_RLAST = M02_AXI_rlast;
  assign m02_couplers_to_axi_pcie_interconnect_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_axi_pcie_interconnect_RVALID = M02_AXI_rvalid;
  assign m02_couplers_to_axi_pcie_interconnect_WREADY = M02_AXI_wready;
  assign m03_couplers_to_axi_pcie_interconnect_ARREADY = M03_AXI_arready[0];
  assign m03_couplers_to_axi_pcie_interconnect_AWREADY = M03_AXI_awready[0];
  assign m03_couplers_to_axi_pcie_interconnect_BID = M03_AXI_bid[3:0];
  assign m03_couplers_to_axi_pcie_interconnect_BRESP = M03_AXI_bresp[1:0];
  assign m03_couplers_to_axi_pcie_interconnect_BVALID = M03_AXI_bvalid[0];
  assign m03_couplers_to_axi_pcie_interconnect_RDATA = M03_AXI_rdata[63:0];
  assign m03_couplers_to_axi_pcie_interconnect_RID = M03_AXI_rid[3:0];
  assign m03_couplers_to_axi_pcie_interconnect_RLAST = M03_AXI_rlast[0];
  assign m03_couplers_to_axi_pcie_interconnect_RRESP = M03_AXI_rresp[1:0];
  assign m03_couplers_to_axi_pcie_interconnect_RVALID = M03_AXI_rvalid[0];
  assign m03_couplers_to_axi_pcie_interconnect_WREADY = M03_AXI_wready[0];
  m00_couplers_imp_9UGDOI m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_axi_pcie_interconnect_ARADDR),
        .M_AXI_arburst(m00_couplers_to_axi_pcie_interconnect_ARBURST),
        .M_AXI_arcache(m00_couplers_to_axi_pcie_interconnect_ARCACHE),
        .M_AXI_arlen(m00_couplers_to_axi_pcie_interconnect_ARLEN),
        .M_AXI_arlock(m00_couplers_to_axi_pcie_interconnect_ARLOCK),
        .M_AXI_arprot(m00_couplers_to_axi_pcie_interconnect_ARPROT),
        .M_AXI_arqos(m00_couplers_to_axi_pcie_interconnect_ARQOS),
        .M_AXI_arready(m00_couplers_to_axi_pcie_interconnect_ARREADY),
        .M_AXI_arregion(m00_couplers_to_axi_pcie_interconnect_ARREGION),
        .M_AXI_arsize(m00_couplers_to_axi_pcie_interconnect_ARSIZE),
        .M_AXI_arvalid(m00_couplers_to_axi_pcie_interconnect_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_pcie_interconnect_AWADDR),
        .M_AXI_awburst(m00_couplers_to_axi_pcie_interconnect_AWBURST),
        .M_AXI_awcache(m00_couplers_to_axi_pcie_interconnect_AWCACHE),
        .M_AXI_awlen(m00_couplers_to_axi_pcie_interconnect_AWLEN),
        .M_AXI_awlock(m00_couplers_to_axi_pcie_interconnect_AWLOCK),
        .M_AXI_awprot(m00_couplers_to_axi_pcie_interconnect_AWPROT),
        .M_AXI_awqos(m00_couplers_to_axi_pcie_interconnect_AWQOS),
        .M_AXI_awready(m00_couplers_to_axi_pcie_interconnect_AWREADY),
        .M_AXI_awregion(m00_couplers_to_axi_pcie_interconnect_AWREGION),
        .M_AXI_awsize(m00_couplers_to_axi_pcie_interconnect_AWSIZE),
        .M_AXI_awvalid(m00_couplers_to_axi_pcie_interconnect_AWVALID),
        .M_AXI_bready(m00_couplers_to_axi_pcie_interconnect_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_pcie_interconnect_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_pcie_interconnect_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_pcie_interconnect_RDATA),
        .M_AXI_rlast(m00_couplers_to_axi_pcie_interconnect_RLAST),
        .M_AXI_rready(m00_couplers_to_axi_pcie_interconnect_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_pcie_interconnect_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_pcie_interconnect_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_pcie_interconnect_WDATA),
        .M_AXI_wlast(m00_couplers_to_axi_pcie_interconnect_WLAST),
        .M_AXI_wready(m00_couplers_to_axi_pcie_interconnect_WREADY),
        .M_AXI_wstrb(m00_couplers_to_axi_pcie_interconnect_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_axi_pcie_interconnect_WVALID),
        .S_ACLK(axi_pcie_interconnect_ACLK_net),
        .S_ARESETN(axi_pcie_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m00_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m00_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m00_couplers_ARID),
        .S_AXI_arlen(xbar_to_m00_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m00_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m00_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m00_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m00_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m00_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m00_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m00_couplers_AWID),
        .S_AXI_awlen(xbar_to_m00_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m00_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m00_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m00_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m00_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m00_couplers_BID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rid(xbar_to_m00_couplers_RID),
        .S_AXI_rlast(xbar_to_m00_couplers_RLAST),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m00_couplers_WLAST),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_1KNJ6AR m01_couplers
       (.M_ACLK(M01_ACLK_1),
        .M_ARESETN(M01_ARESETN_1),
        .M_AXI_araddr(m01_couplers_to_axi_pcie_interconnect_ARADDR),
        .M_AXI_arburst(m01_couplers_to_axi_pcie_interconnect_ARBURST),
        .M_AXI_arcache(m01_couplers_to_axi_pcie_interconnect_ARCACHE),
        .M_AXI_arlen(m01_couplers_to_axi_pcie_interconnect_ARLEN),
        .M_AXI_arlock(m01_couplers_to_axi_pcie_interconnect_ARLOCK),
        .M_AXI_arprot(m01_couplers_to_axi_pcie_interconnect_ARPROT),
        .M_AXI_arready(m01_couplers_to_axi_pcie_interconnect_ARREADY),
        .M_AXI_arsize(m01_couplers_to_axi_pcie_interconnect_ARSIZE),
        .M_AXI_arvalid(m01_couplers_to_axi_pcie_interconnect_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_axi_pcie_interconnect_AWADDR),
        .M_AXI_awburst(m01_couplers_to_axi_pcie_interconnect_AWBURST),
        .M_AXI_awcache(m01_couplers_to_axi_pcie_interconnect_AWCACHE),
        .M_AXI_awlen(m01_couplers_to_axi_pcie_interconnect_AWLEN),
        .M_AXI_awlock(m01_couplers_to_axi_pcie_interconnect_AWLOCK),
        .M_AXI_awprot(m01_couplers_to_axi_pcie_interconnect_AWPROT),
        .M_AXI_awready(m01_couplers_to_axi_pcie_interconnect_AWREADY),
        .M_AXI_awsize(m01_couplers_to_axi_pcie_interconnect_AWSIZE),
        .M_AXI_awvalid(m01_couplers_to_axi_pcie_interconnect_AWVALID),
        .M_AXI_bready(m01_couplers_to_axi_pcie_interconnect_BREADY),
        .M_AXI_bresp(m01_couplers_to_axi_pcie_interconnect_BRESP),
        .M_AXI_bvalid(m01_couplers_to_axi_pcie_interconnect_BVALID),
        .M_AXI_rdata(m01_couplers_to_axi_pcie_interconnect_RDATA),
        .M_AXI_rlast(m01_couplers_to_axi_pcie_interconnect_RLAST),
        .M_AXI_rready(m01_couplers_to_axi_pcie_interconnect_RREADY),
        .M_AXI_rresp(m01_couplers_to_axi_pcie_interconnect_RRESP),
        .M_AXI_rvalid(m01_couplers_to_axi_pcie_interconnect_RVALID),
        .M_AXI_wdata(m01_couplers_to_axi_pcie_interconnect_WDATA),
        .M_AXI_wlast(m01_couplers_to_axi_pcie_interconnect_WLAST),
        .M_AXI_wready(m01_couplers_to_axi_pcie_interconnect_WREADY),
        .M_AXI_wstrb(m01_couplers_to_axi_pcie_interconnect_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_axi_pcie_interconnect_WVALID),
        .S_ACLK(axi_pcie_interconnect_ACLK_net),
        .S_ARESETN(axi_pcie_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m01_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m01_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m01_couplers_ARID),
        .S_AXI_arlen(xbar_to_m01_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m01_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m01_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m01_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m01_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m01_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m01_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m01_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m01_couplers_AWID),
        .S_AXI_awlen(xbar_to_m01_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m01_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m01_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m01_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m01_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m01_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m01_couplers_BID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rid(xbar_to_m01_couplers_RID),
        .S_AXI_rlast(xbar_to_m01_couplers_RLAST),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m01_couplers_WLAST),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  m02_couplers_imp_AQ4QF5 m02_couplers
       (.M_ACLK(M02_ACLK_1),
        .M_ARESETN(M02_ARESETN_1),
        .M_AXI_araddr(m02_couplers_to_axi_pcie_interconnect_ARADDR),
        .M_AXI_arburst(m02_couplers_to_axi_pcie_interconnect_ARBURST),
        .M_AXI_arcache(m02_couplers_to_axi_pcie_interconnect_ARCACHE),
        .M_AXI_arid(m02_couplers_to_axi_pcie_interconnect_ARID),
        .M_AXI_arlen(m02_couplers_to_axi_pcie_interconnect_ARLEN),
        .M_AXI_arlock(m02_couplers_to_axi_pcie_interconnect_ARLOCK),
        .M_AXI_arprot(m02_couplers_to_axi_pcie_interconnect_ARPROT),
        .M_AXI_arqos(m02_couplers_to_axi_pcie_interconnect_ARQOS),
        .M_AXI_arready(m02_couplers_to_axi_pcie_interconnect_ARREADY),
        .M_AXI_arsize(m02_couplers_to_axi_pcie_interconnect_ARSIZE),
        .M_AXI_arvalid(m02_couplers_to_axi_pcie_interconnect_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_axi_pcie_interconnect_AWADDR),
        .M_AXI_awburst(m02_couplers_to_axi_pcie_interconnect_AWBURST),
        .M_AXI_awcache(m02_couplers_to_axi_pcie_interconnect_AWCACHE),
        .M_AXI_awid(m02_couplers_to_axi_pcie_interconnect_AWID),
        .M_AXI_awlen(m02_couplers_to_axi_pcie_interconnect_AWLEN),
        .M_AXI_awlock(m02_couplers_to_axi_pcie_interconnect_AWLOCK),
        .M_AXI_awprot(m02_couplers_to_axi_pcie_interconnect_AWPROT),
        .M_AXI_awqos(m02_couplers_to_axi_pcie_interconnect_AWQOS),
        .M_AXI_awready(m02_couplers_to_axi_pcie_interconnect_AWREADY),
        .M_AXI_awsize(m02_couplers_to_axi_pcie_interconnect_AWSIZE),
        .M_AXI_awvalid(m02_couplers_to_axi_pcie_interconnect_AWVALID),
        .M_AXI_bid(m02_couplers_to_axi_pcie_interconnect_BID),
        .M_AXI_bready(m02_couplers_to_axi_pcie_interconnect_BREADY),
        .M_AXI_bresp(m02_couplers_to_axi_pcie_interconnect_BRESP),
        .M_AXI_bvalid(m02_couplers_to_axi_pcie_interconnect_BVALID),
        .M_AXI_rdata(m02_couplers_to_axi_pcie_interconnect_RDATA),
        .M_AXI_rid(m02_couplers_to_axi_pcie_interconnect_RID),
        .M_AXI_rlast(m02_couplers_to_axi_pcie_interconnect_RLAST),
        .M_AXI_rready(m02_couplers_to_axi_pcie_interconnect_RREADY),
        .M_AXI_rresp(m02_couplers_to_axi_pcie_interconnect_RRESP),
        .M_AXI_rvalid(m02_couplers_to_axi_pcie_interconnect_RVALID),
        .M_AXI_wdata(m02_couplers_to_axi_pcie_interconnect_WDATA),
        .M_AXI_wlast(m02_couplers_to_axi_pcie_interconnect_WLAST),
        .M_AXI_wready(m02_couplers_to_axi_pcie_interconnect_WREADY),
        .M_AXI_wstrb(m02_couplers_to_axi_pcie_interconnect_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_axi_pcie_interconnect_WVALID),
        .S_ACLK(axi_pcie_interconnect_ACLK_net),
        .S_ARESETN(axi_pcie_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m02_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m02_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m02_couplers_ARID),
        .S_AXI_arlen(xbar_to_m02_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m02_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m02_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m02_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m02_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m02_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m02_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m02_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m02_couplers_AWID),
        .S_AXI_awlen(xbar_to_m02_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m02_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m02_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m02_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m02_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m02_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m02_couplers_BID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rid(xbar_to_m02_couplers_RID),
        .S_AXI_rlast(xbar_to_m02_couplers_RLAST),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m02_couplers_WLAST),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
  m03_couplers_imp_1K1IDK0 m03_couplers
       (.M_ACLK(M03_ACLK_1),
        .M_ARESETN(M03_ARESETN_1),
        .M_AXI_araddr(m03_couplers_to_axi_pcie_interconnect_ARADDR),
        .M_AXI_arburst(m03_couplers_to_axi_pcie_interconnect_ARBURST),
        .M_AXI_arcache(m03_couplers_to_axi_pcie_interconnect_ARCACHE),
        .M_AXI_arid(m03_couplers_to_axi_pcie_interconnect_ARID),
        .M_AXI_arlen(m03_couplers_to_axi_pcie_interconnect_ARLEN),
        .M_AXI_arlock(m03_couplers_to_axi_pcie_interconnect_ARLOCK),
        .M_AXI_arprot(m03_couplers_to_axi_pcie_interconnect_ARPROT),
        .M_AXI_arready(m03_couplers_to_axi_pcie_interconnect_ARREADY),
        .M_AXI_arsize(m03_couplers_to_axi_pcie_interconnect_ARSIZE),
        .M_AXI_arvalid(m03_couplers_to_axi_pcie_interconnect_ARVALID),
        .M_AXI_awaddr(m03_couplers_to_axi_pcie_interconnect_AWADDR),
        .M_AXI_awburst(m03_couplers_to_axi_pcie_interconnect_AWBURST),
        .M_AXI_awcache(m03_couplers_to_axi_pcie_interconnect_AWCACHE),
        .M_AXI_awid(m03_couplers_to_axi_pcie_interconnect_AWID),
        .M_AXI_awlen(m03_couplers_to_axi_pcie_interconnect_AWLEN),
        .M_AXI_awlock(m03_couplers_to_axi_pcie_interconnect_AWLOCK),
        .M_AXI_awprot(m03_couplers_to_axi_pcie_interconnect_AWPROT),
        .M_AXI_awready(m03_couplers_to_axi_pcie_interconnect_AWREADY),
        .M_AXI_awsize(m03_couplers_to_axi_pcie_interconnect_AWSIZE),
        .M_AXI_awvalid(m03_couplers_to_axi_pcie_interconnect_AWVALID),
        .M_AXI_bid(m03_couplers_to_axi_pcie_interconnect_BID),
        .M_AXI_bready(m03_couplers_to_axi_pcie_interconnect_BREADY),
        .M_AXI_bresp(m03_couplers_to_axi_pcie_interconnect_BRESP),
        .M_AXI_bvalid(m03_couplers_to_axi_pcie_interconnect_BVALID),
        .M_AXI_rdata(m03_couplers_to_axi_pcie_interconnect_RDATA),
        .M_AXI_rid(m03_couplers_to_axi_pcie_interconnect_RID),
        .M_AXI_rlast(m03_couplers_to_axi_pcie_interconnect_RLAST),
        .M_AXI_rready(m03_couplers_to_axi_pcie_interconnect_RREADY),
        .M_AXI_rresp(m03_couplers_to_axi_pcie_interconnect_RRESP),
        .M_AXI_rvalid(m03_couplers_to_axi_pcie_interconnect_RVALID),
        .M_AXI_wdata(m03_couplers_to_axi_pcie_interconnect_WDATA),
        .M_AXI_wlast(m03_couplers_to_axi_pcie_interconnect_WLAST),
        .M_AXI_wready(m03_couplers_to_axi_pcie_interconnect_WREADY),
        .M_AXI_wstrb(m03_couplers_to_axi_pcie_interconnect_WSTRB),
        .M_AXI_wvalid(m03_couplers_to_axi_pcie_interconnect_WVALID),
        .S_ACLK(axi_pcie_interconnect_ACLK_net),
        .S_ARESETN(axi_pcie_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_m03_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m03_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m03_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m03_couplers_ARID),
        .S_AXI_arlen(xbar_to_m03_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m03_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m03_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m03_couplers_ARREADY),
        .S_AXI_arsize(xbar_to_m03_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m03_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m03_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m03_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m03_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m03_couplers_AWID),
        .S_AXI_awlen(xbar_to_m03_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m03_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m03_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m03_couplers_AWREADY),
        .S_AXI_awsize(xbar_to_m03_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m03_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m03_couplers_BID),
        .S_AXI_bready(xbar_to_m03_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m03_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m03_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m03_couplers_RDATA),
        .S_AXI_rid(xbar_to_m03_couplers_RID),
        .S_AXI_rlast(xbar_to_m03_couplers_RLAST),
        .S_AXI_rready(xbar_to_m03_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m03_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m03_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m03_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m03_couplers_WLAST),
        .S_AXI_wready(xbar_to_m03_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m03_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m03_couplers_WVALID));
  s00_couplers_imp_1OK54OW s00_couplers
       (.M_ACLK(axi_pcie_interconnect_ACLK_net),
        .M_ARESETN(axi_pcie_interconnect_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s00_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s00_couplers_to_xbar_ARCACHE),
        .M_AXI_arid(s00_couplers_to_xbar_ARID),
        .M_AXI_arlen(s00_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s00_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s00_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s00_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s00_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s00_couplers_to_xbar_AWCACHE),
        .M_AXI_awid(s00_couplers_to_xbar_AWID),
        .M_AXI_awlen(s00_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s00_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s00_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s00_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bid(s00_couplers_to_xbar_BID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rid(s00_couplers_to_xbar_RID),
        .M_AXI_rlast(s00_couplers_to_xbar_RLAST),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s00_couplers_to_xbar_WLAST),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(axi_pcie_interconnect_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_pcie_interconnect_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_pcie_interconnect_to_s00_couplers_ARCACHE),
        .S_AXI_arid(axi_pcie_interconnect_to_s00_couplers_ARID),
        .S_AXI_arlen(axi_pcie_interconnect_to_s00_couplers_ARLEN),
        .S_AXI_arlock(axi_pcie_interconnect_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(axi_pcie_interconnect_to_s00_couplers_ARPROT),
        .S_AXI_arqos(axi_pcie_interconnect_to_s00_couplers_ARQOS),
        .S_AXI_arready(axi_pcie_interconnect_to_s00_couplers_ARREADY),
        .S_AXI_arregion(axi_pcie_interconnect_to_s00_couplers_ARREGION),
        .S_AXI_arsize(axi_pcie_interconnect_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(axi_pcie_interconnect_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_pcie_interconnect_to_s00_couplers_AWADDR),
        .S_AXI_awburst(axi_pcie_interconnect_to_s00_couplers_AWBURST),
        .S_AXI_awcache(axi_pcie_interconnect_to_s00_couplers_AWCACHE),
        .S_AXI_awid(axi_pcie_interconnect_to_s00_couplers_AWID),
        .S_AXI_awlen(axi_pcie_interconnect_to_s00_couplers_AWLEN),
        .S_AXI_awlock(axi_pcie_interconnect_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(axi_pcie_interconnect_to_s00_couplers_AWPROT),
        .S_AXI_awqos(axi_pcie_interconnect_to_s00_couplers_AWQOS),
        .S_AXI_awready(axi_pcie_interconnect_to_s00_couplers_AWREADY),
        .S_AXI_awregion(axi_pcie_interconnect_to_s00_couplers_AWREGION),
        .S_AXI_awsize(axi_pcie_interconnect_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(axi_pcie_interconnect_to_s00_couplers_AWVALID),
        .S_AXI_bid(axi_pcie_interconnect_to_s00_couplers_BID),
        .S_AXI_bready(axi_pcie_interconnect_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_pcie_interconnect_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_pcie_interconnect_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_pcie_interconnect_to_s00_couplers_RDATA),
        .S_AXI_rid(axi_pcie_interconnect_to_s00_couplers_RID),
        .S_AXI_rlast(axi_pcie_interconnect_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_pcie_interconnect_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_pcie_interconnect_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_pcie_interconnect_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_pcie_interconnect_to_s00_couplers_WDATA),
        .S_AXI_wlast(axi_pcie_interconnect_to_s00_couplers_WLAST),
        .S_AXI_wready(axi_pcie_interconnect_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_pcie_interconnect_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_pcie_interconnect_to_s00_couplers_WVALID));
  s01_couplers_imp_EQ149T s01_couplers
       (.M_ACLK(axi_pcie_interconnect_ACLK_net),
        .M_ARESETN(axi_pcie_interconnect_ARESETN_net),
        .M_AXI_araddr(s01_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s01_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s01_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s01_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s01_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s01_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s01_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s01_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s01_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s01_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s01_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s01_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s01_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s01_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s01_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s01_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s01_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s01_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s01_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s01_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s01_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s01_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s01_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s01_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s01_couplers_to_xbar_RLAST),
        .M_AXI_rready(s01_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s01_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s01_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s01_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s01_couplers_to_xbar_WLAST),
        .M_AXI_wready(s01_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s01_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s01_couplers_to_xbar_WVALID),
        .S_ACLK(S01_ACLK_1),
        .S_ARESETN(S01_ARESETN_1),
        .S_AXI_araddr(axi_pcie_interconnect_to_s01_couplers_ARADDR),
        .S_AXI_arburst(axi_pcie_interconnect_to_s01_couplers_ARBURST),
        .S_AXI_arcache(axi_pcie_interconnect_to_s01_couplers_ARCACHE),
        .S_AXI_arlen(axi_pcie_interconnect_to_s01_couplers_ARLEN),
        .S_AXI_arlock(axi_pcie_interconnect_to_s01_couplers_ARLOCK),
        .S_AXI_arprot(axi_pcie_interconnect_to_s01_couplers_ARPROT),
        .S_AXI_arready(axi_pcie_interconnect_to_s01_couplers_ARREADY),
        .S_AXI_arsize(axi_pcie_interconnect_to_s01_couplers_ARSIZE),
        .S_AXI_arvalid(axi_pcie_interconnect_to_s01_couplers_ARVALID),
        .S_AXI_awaddr(axi_pcie_interconnect_to_s01_couplers_AWADDR),
        .S_AXI_awburst(axi_pcie_interconnect_to_s01_couplers_AWBURST),
        .S_AXI_awcache(axi_pcie_interconnect_to_s01_couplers_AWCACHE),
        .S_AXI_awlen(axi_pcie_interconnect_to_s01_couplers_AWLEN),
        .S_AXI_awlock(axi_pcie_interconnect_to_s01_couplers_AWLOCK),
        .S_AXI_awprot(axi_pcie_interconnect_to_s01_couplers_AWPROT),
        .S_AXI_awready(axi_pcie_interconnect_to_s01_couplers_AWREADY),
        .S_AXI_awsize(axi_pcie_interconnect_to_s01_couplers_AWSIZE),
        .S_AXI_awvalid(axi_pcie_interconnect_to_s01_couplers_AWVALID),
        .S_AXI_bready(axi_pcie_interconnect_to_s01_couplers_BREADY),
        .S_AXI_bresp(axi_pcie_interconnect_to_s01_couplers_BRESP),
        .S_AXI_bvalid(axi_pcie_interconnect_to_s01_couplers_BVALID),
        .S_AXI_rdata(axi_pcie_interconnect_to_s01_couplers_RDATA),
        .S_AXI_rlast(axi_pcie_interconnect_to_s01_couplers_RLAST),
        .S_AXI_rready(axi_pcie_interconnect_to_s01_couplers_RREADY),
        .S_AXI_rresp(axi_pcie_interconnect_to_s01_couplers_RRESP),
        .S_AXI_rvalid(axi_pcie_interconnect_to_s01_couplers_RVALID),
        .S_AXI_wdata(axi_pcie_interconnect_to_s01_couplers_WDATA),
        .S_AXI_wlast(axi_pcie_interconnect_to_s01_couplers_WLAST),
        .S_AXI_wready(axi_pcie_interconnect_to_s01_couplers_WREADY),
        .S_AXI_wstrb(axi_pcie_interconnect_to_s01_couplers_WSTRB),
        .S_AXI_wvalid(axi_pcie_interconnect_to_s01_couplers_WVALID));
  icyradio_xbar_7 xbar
       (.aclk(axi_pcie_interconnect_ACLK_net),
        .aresetn(axi_pcie_interconnect_ARESETN_net),
        .m_axi_araddr({xbar_to_m03_couplers_ARADDR,xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arburst({xbar_to_m03_couplers_ARBURST,xbar_to_m02_couplers_ARBURST,xbar_to_m01_couplers_ARBURST,xbar_to_m00_couplers_ARBURST}),
        .m_axi_arcache({xbar_to_m03_couplers_ARCACHE,xbar_to_m02_couplers_ARCACHE,xbar_to_m01_couplers_ARCACHE,xbar_to_m00_couplers_ARCACHE}),
        .m_axi_arid({xbar_to_m03_couplers_ARID,xbar_to_m02_couplers_ARID,xbar_to_m01_couplers_ARID,xbar_to_m00_couplers_ARID}),
        .m_axi_arlen({xbar_to_m03_couplers_ARLEN,xbar_to_m02_couplers_ARLEN,xbar_to_m01_couplers_ARLEN,xbar_to_m00_couplers_ARLEN}),
        .m_axi_arlock({xbar_to_m03_couplers_ARLOCK,xbar_to_m02_couplers_ARLOCK,xbar_to_m01_couplers_ARLOCK,xbar_to_m00_couplers_ARLOCK}),
        .m_axi_arprot({xbar_to_m03_couplers_ARPROT,xbar_to_m02_couplers_ARPROT,xbar_to_m01_couplers_ARPROT,xbar_to_m00_couplers_ARPROT}),
        .m_axi_arqos({xbar_to_m02_couplers_ARQOS,xbar_to_m01_couplers_ARQOS,xbar_to_m00_couplers_ARQOS}),
        .m_axi_arready({xbar_to_m03_couplers_ARREADY,xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arregion({xbar_to_m02_couplers_ARREGION,xbar_to_m01_couplers_ARREGION,xbar_to_m00_couplers_ARREGION}),
        .m_axi_arsize({xbar_to_m03_couplers_ARSIZE,xbar_to_m02_couplers_ARSIZE,xbar_to_m01_couplers_ARSIZE,xbar_to_m00_couplers_ARSIZE}),
        .m_axi_arvalid({xbar_to_m03_couplers_ARVALID,xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m03_couplers_AWADDR,xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awburst({xbar_to_m03_couplers_AWBURST,xbar_to_m02_couplers_AWBURST,xbar_to_m01_couplers_AWBURST,xbar_to_m00_couplers_AWBURST}),
        .m_axi_awcache({xbar_to_m03_couplers_AWCACHE,xbar_to_m02_couplers_AWCACHE,xbar_to_m01_couplers_AWCACHE,xbar_to_m00_couplers_AWCACHE}),
        .m_axi_awid({xbar_to_m03_couplers_AWID,xbar_to_m02_couplers_AWID,xbar_to_m01_couplers_AWID,xbar_to_m00_couplers_AWID}),
        .m_axi_awlen({xbar_to_m03_couplers_AWLEN,xbar_to_m02_couplers_AWLEN,xbar_to_m01_couplers_AWLEN,xbar_to_m00_couplers_AWLEN}),
        .m_axi_awlock({xbar_to_m03_couplers_AWLOCK,xbar_to_m02_couplers_AWLOCK,xbar_to_m01_couplers_AWLOCK,xbar_to_m00_couplers_AWLOCK}),
        .m_axi_awprot({xbar_to_m03_couplers_AWPROT,xbar_to_m02_couplers_AWPROT,xbar_to_m01_couplers_AWPROT,xbar_to_m00_couplers_AWPROT}),
        .m_axi_awqos({xbar_to_m02_couplers_AWQOS,xbar_to_m01_couplers_AWQOS,xbar_to_m00_couplers_AWQOS}),
        .m_axi_awready({xbar_to_m03_couplers_AWREADY,xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awregion({xbar_to_m02_couplers_AWREGION,xbar_to_m01_couplers_AWREGION,xbar_to_m00_couplers_AWREGION}),
        .m_axi_awsize({xbar_to_m03_couplers_AWSIZE,xbar_to_m02_couplers_AWSIZE,xbar_to_m01_couplers_AWSIZE,xbar_to_m00_couplers_AWSIZE}),
        .m_axi_awvalid({xbar_to_m03_couplers_AWVALID,xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bid({xbar_to_m03_couplers_BID,xbar_to_m02_couplers_BID,xbar_to_m01_couplers_BID,xbar_to_m00_couplers_BID}),
        .m_axi_bready({xbar_to_m03_couplers_BREADY,xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m03_couplers_BRESP,xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m03_couplers_BVALID,xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m03_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rid({xbar_to_m03_couplers_RID,xbar_to_m02_couplers_RID,xbar_to_m01_couplers_RID,xbar_to_m00_couplers_RID}),
        .m_axi_rlast({xbar_to_m03_couplers_RLAST,xbar_to_m02_couplers_RLAST,xbar_to_m01_couplers_RLAST,xbar_to_m00_couplers_RLAST}),
        .m_axi_rready({xbar_to_m03_couplers_RREADY,xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m03_couplers_RRESP,xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m03_couplers_RVALID,xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m03_couplers_WDATA,xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wlast({xbar_to_m03_couplers_WLAST,xbar_to_m02_couplers_WLAST,xbar_to_m01_couplers_WLAST,xbar_to_m00_couplers_WLAST}),
        .m_axi_wready({xbar_to_m03_couplers_WREADY,xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m03_couplers_WSTRB,xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m03_couplers_WVALID,xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr({s01_couplers_to_xbar_ARADDR,s00_couplers_to_xbar_ARADDR}),
        .s_axi_arburst({s01_couplers_to_xbar_ARBURST,s00_couplers_to_xbar_ARBURST}),
        .s_axi_arcache({s01_couplers_to_xbar_ARCACHE,s00_couplers_to_xbar_ARCACHE}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_ARID}),
        .s_axi_arlen({s01_couplers_to_xbar_ARLEN,s00_couplers_to_xbar_ARLEN}),
        .s_axi_arlock({s01_couplers_to_xbar_ARLOCK,s00_couplers_to_xbar_ARLOCK}),
        .s_axi_arprot({s01_couplers_to_xbar_ARPROT,s00_couplers_to_xbar_ARPROT}),
        .s_axi_arqos({s01_couplers_to_xbar_ARQOS,s00_couplers_to_xbar_ARQOS}),
        .s_axi_arready({s01_couplers_to_xbar_ARREADY,s00_couplers_to_xbar_ARREADY}),
        .s_axi_arsize({s01_couplers_to_xbar_ARSIZE,s00_couplers_to_xbar_ARSIZE}),
        .s_axi_arvalid({s01_couplers_to_xbar_ARVALID,s00_couplers_to_xbar_ARVALID}),
        .s_axi_awaddr({s01_couplers_to_xbar_AWADDR,s00_couplers_to_xbar_AWADDR}),
        .s_axi_awburst({s01_couplers_to_xbar_AWBURST,s00_couplers_to_xbar_AWBURST}),
        .s_axi_awcache({s01_couplers_to_xbar_AWCACHE,s00_couplers_to_xbar_AWCACHE}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_AWID}),
        .s_axi_awlen({s01_couplers_to_xbar_AWLEN,s00_couplers_to_xbar_AWLEN}),
        .s_axi_awlock({s01_couplers_to_xbar_AWLOCK,s00_couplers_to_xbar_AWLOCK}),
        .s_axi_awprot({s01_couplers_to_xbar_AWPROT,s00_couplers_to_xbar_AWPROT}),
        .s_axi_awqos({s01_couplers_to_xbar_AWQOS,s00_couplers_to_xbar_AWQOS}),
        .s_axi_awready({s01_couplers_to_xbar_AWREADY,s00_couplers_to_xbar_AWREADY}),
        .s_axi_awsize({s01_couplers_to_xbar_AWSIZE,s00_couplers_to_xbar_AWSIZE}),
        .s_axi_awvalid({s01_couplers_to_xbar_AWVALID,s00_couplers_to_xbar_AWVALID}),
        .s_axi_bid(s00_couplers_to_xbar_BID),
        .s_axi_bready({s01_couplers_to_xbar_BREADY,s00_couplers_to_xbar_BREADY}),
        .s_axi_bresp({s01_couplers_to_xbar_BRESP,s00_couplers_to_xbar_BRESP}),
        .s_axi_bvalid({s01_couplers_to_xbar_BVALID,s00_couplers_to_xbar_BVALID}),
        .s_axi_rdata({s01_couplers_to_xbar_RDATA,s00_couplers_to_xbar_RDATA}),
        .s_axi_rid(s00_couplers_to_xbar_RID),
        .s_axi_rlast({s01_couplers_to_xbar_RLAST,s00_couplers_to_xbar_RLAST}),
        .s_axi_rready({s01_couplers_to_xbar_RREADY,s00_couplers_to_xbar_RREADY}),
        .s_axi_rresp({s01_couplers_to_xbar_RRESP,s00_couplers_to_xbar_RRESP}),
        .s_axi_rvalid({s01_couplers_to_xbar_RVALID,s00_couplers_to_xbar_RVALID}),
        .s_axi_wdata({s01_couplers_to_xbar_WDATA,s00_couplers_to_xbar_WDATA}),
        .s_axi_wlast({s01_couplers_to_xbar_WLAST,s00_couplers_to_xbar_WLAST}),
        .s_axi_wready({s01_couplers_to_xbar_WREADY,s00_couplers_to_xbar_WREADY}),
        .s_axi_wstrb({s01_couplers_to_xbar_WSTRB,s00_couplers_to_xbar_WSTRB}),
        .s_axi_wvalid({s01_couplers_to_xbar_WVALID,s00_couplers_to_xbar_WVALID}));
endmodule

module icyradio_axi_peripheral_interconnect_2
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arprot,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awprot,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arprot,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awprot,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arprot,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awprot,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    M03_ACLK,
    M03_ARESETN,
    M03_AXI_araddr,
    M03_AXI_arready,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awready,
    M03_AXI_awvalid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wready,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    M04_ACLK,
    M04_ARESETN,
    M04_AXI_araddr,
    M04_AXI_arready,
    M04_AXI_arvalid,
    M04_AXI_awaddr,
    M04_AXI_awready,
    M04_AXI_awvalid,
    M04_AXI_bready,
    M04_AXI_bresp,
    M04_AXI_bvalid,
    M04_AXI_rdata,
    M04_AXI_rready,
    M04_AXI_rresp,
    M04_AXI_rvalid,
    M04_AXI_wdata,
    M04_AXI_wready,
    M04_AXI_wstrb,
    M04_AXI_wvalid,
    M05_ACLK,
    M05_ARESETN,
    M05_AXI_araddr,
    M05_AXI_arready,
    M05_AXI_arvalid,
    M05_AXI_awaddr,
    M05_AXI_awready,
    M05_AXI_awvalid,
    M05_AXI_bready,
    M05_AXI_bresp,
    M05_AXI_bvalid,
    M05_AXI_rdata,
    M05_AXI_rready,
    M05_AXI_rresp,
    M05_AXI_rvalid,
    M05_AXI_wdata,
    M05_AXI_wready,
    M05_AXI_wstrb,
    M05_AXI_wvalid,
    M06_ACLK,
    M06_ARESETN,
    M06_AXI_araddr,
    M06_AXI_arready,
    M06_AXI_arvalid,
    M06_AXI_awaddr,
    M06_AXI_awready,
    M06_AXI_awvalid,
    M06_AXI_bready,
    M06_AXI_bresp,
    M06_AXI_bvalid,
    M06_AXI_rdata,
    M06_AXI_rready,
    M06_AXI_rresp,
    M06_AXI_rvalid,
    M06_AXI_wdata,
    M06_AXI_wready,
    M06_AXI_wstrb,
    M06_AXI_wvalid,
    M07_ACLK,
    M07_ARESETN,
    M07_AXI_araddr,
    M07_AXI_arprot,
    M07_AXI_arready,
    M07_AXI_arvalid,
    M07_AXI_awaddr,
    M07_AXI_awprot,
    M07_AXI_awready,
    M07_AXI_awvalid,
    M07_AXI_bready,
    M07_AXI_bresp,
    M07_AXI_bvalid,
    M07_AXI_rdata,
    M07_AXI_rready,
    M07_AXI_rresp,
    M07_AXI_rvalid,
    M07_AXI_wdata,
    M07_AXI_wready,
    M07_AXI_wstrb,
    M07_AXI_wvalid,
    M08_ACLK,
    M08_ARESETN,
    M08_AXI_araddr,
    M08_AXI_arprot,
    M08_AXI_arready,
    M08_AXI_arvalid,
    M08_AXI_awaddr,
    M08_AXI_awprot,
    M08_AXI_awready,
    M08_AXI_awvalid,
    M08_AXI_bready,
    M08_AXI_bresp,
    M08_AXI_bvalid,
    M08_AXI_rdata,
    M08_AXI_rready,
    M08_AXI_rresp,
    M08_AXI_rvalid,
    M08_AXI_wdata,
    M08_AXI_wready,
    M08_AXI_wstrb,
    M08_AXI_wvalid,
    M09_ACLK,
    M09_ARESETN,
    M09_AXI_araddr,
    M09_AXI_arprot,
    M09_AXI_arready,
    M09_AXI_arvalid,
    M09_AXI_awaddr,
    M09_AXI_awprot,
    M09_AXI_awready,
    M09_AXI_awvalid,
    M09_AXI_bready,
    M09_AXI_bresp,
    M09_AXI_bvalid,
    M09_AXI_rdata,
    M09_AXI_rready,
    M09_AXI_rresp,
    M09_AXI_rvalid,
    M09_AXI_wdata,
    M09_AXI_wready,
    M09_AXI_wstrb,
    M09_AXI_wvalid,
    M10_ACLK,
    M10_ARESETN,
    M10_AXI_araddr,
    M10_AXI_arready,
    M10_AXI_arvalid,
    M10_AXI_awaddr,
    M10_AXI_awready,
    M10_AXI_awvalid,
    M10_AXI_bready,
    M10_AXI_bresp,
    M10_AXI_bvalid,
    M10_AXI_rdata,
    M10_AXI_rready,
    M10_AXI_rresp,
    M10_AXI_rvalid,
    M10_AXI_wdata,
    M10_AXI_wready,
    M10_AXI_wstrb,
    M10_AXI_wvalid,
    M11_ACLK,
    M11_ARESETN,
    M11_AXI_araddr,
    M11_AXI_arready,
    M11_AXI_arvalid,
    M11_AXI_awaddr,
    M11_AXI_awready,
    M11_AXI_awvalid,
    M11_AXI_bready,
    M11_AXI_bresp,
    M11_AXI_bvalid,
    M11_AXI_rdata,
    M11_AXI_rready,
    M11_AXI_rresp,
    M11_AXI_rvalid,
    M11_AXI_wdata,
    M11_AXI_wready,
    M11_AXI_wstrb,
    M11_AXI_wvalid,
    M12_ACLK,
    M12_ARESETN,
    M12_AXI_araddr,
    M12_AXI_arready,
    M12_AXI_arvalid,
    M12_AXI_awaddr,
    M12_AXI_awready,
    M12_AXI_awvalid,
    M12_AXI_bready,
    M12_AXI_bresp,
    M12_AXI_bvalid,
    M12_AXI_rdata,
    M12_AXI_rready,
    M12_AXI_rresp,
    M12_AXI_rvalid,
    M12_AXI_wdata,
    M12_AXI_wready,
    M12_AXI_wstrb,
    M12_AXI_wvalid,
    M13_ACLK,
    M13_ARESETN,
    M13_AXI_araddr,
    M13_AXI_arready,
    M13_AXI_arvalid,
    M13_AXI_awaddr,
    M13_AXI_awready,
    M13_AXI_awvalid,
    M13_AXI_bready,
    M13_AXI_bresp,
    M13_AXI_bvalid,
    M13_AXI_rdata,
    M13_AXI_rready,
    M13_AXI_rresp,
    M13_AXI_rvalid,
    M13_AXI_wdata,
    M13_AXI_wready,
    M13_AXI_wstrb,
    M13_AXI_wvalid,
    M14_ACLK,
    M14_ARESETN,
    M14_AXI_araddr,
    M14_AXI_arready,
    M14_AXI_arvalid,
    M14_AXI_awaddr,
    M14_AXI_awready,
    M14_AXI_awvalid,
    M14_AXI_bready,
    M14_AXI_bresp,
    M14_AXI_bvalid,
    M14_AXI_rdata,
    M14_AXI_rready,
    M14_AXI_rresp,
    M14_AXI_rvalid,
    M14_AXI_wdata,
    M14_AXI_wready,
    M14_AXI_wstrb,
    M14_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  output [2:0]M00_AXI_arprot;
  input [0:0]M00_AXI_arready;
  output [0:0]M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  output [2:0]M00_AXI_awprot;
  input [0:0]M00_AXI_awready;
  output [0:0]M00_AXI_awvalid;
  output [0:0]M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input [0:0]M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output [0:0]M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input [0:0]M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input [0:0]M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output [0:0]M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [31:0]M01_AXI_araddr;
  output [2:0]M01_AXI_arprot;
  input [0:0]M01_AXI_arready;
  output [0:0]M01_AXI_arvalid;
  output [31:0]M01_AXI_awaddr;
  output [2:0]M01_AXI_awprot;
  input [0:0]M01_AXI_awready;
  output [0:0]M01_AXI_awvalid;
  output [0:0]M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input [0:0]M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output [0:0]M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input [0:0]M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input [0:0]M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output [0:0]M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [31:0]M02_AXI_araddr;
  output [2:0]M02_AXI_arprot;
  input [0:0]M02_AXI_arready;
  output [0:0]M02_AXI_arvalid;
  output [31:0]M02_AXI_awaddr;
  output [2:0]M02_AXI_awprot;
  input [0:0]M02_AXI_awready;
  output [0:0]M02_AXI_awvalid;
  output [0:0]M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input [0:0]M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output [0:0]M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input [0:0]M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input [0:0]M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output [0:0]M02_AXI_wvalid;
  input M03_ACLK;
  input M03_ARESETN;
  output [31:0]M03_AXI_araddr;
  input [0:0]M03_AXI_arready;
  output [0:0]M03_AXI_arvalid;
  output [31:0]M03_AXI_awaddr;
  input [0:0]M03_AXI_awready;
  output [0:0]M03_AXI_awvalid;
  output [0:0]M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input [0:0]M03_AXI_bvalid;
  input [31:0]M03_AXI_rdata;
  output [0:0]M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input [0:0]M03_AXI_rvalid;
  output [31:0]M03_AXI_wdata;
  input [0:0]M03_AXI_wready;
  output [3:0]M03_AXI_wstrb;
  output [0:0]M03_AXI_wvalid;
  input M04_ACLK;
  input M04_ARESETN;
  output [31:0]M04_AXI_araddr;
  input [0:0]M04_AXI_arready;
  output [0:0]M04_AXI_arvalid;
  output [31:0]M04_AXI_awaddr;
  input [0:0]M04_AXI_awready;
  output [0:0]M04_AXI_awvalid;
  output [0:0]M04_AXI_bready;
  input [1:0]M04_AXI_bresp;
  input [0:0]M04_AXI_bvalid;
  input [31:0]M04_AXI_rdata;
  output [0:0]M04_AXI_rready;
  input [1:0]M04_AXI_rresp;
  input [0:0]M04_AXI_rvalid;
  output [31:0]M04_AXI_wdata;
  input [0:0]M04_AXI_wready;
  output [3:0]M04_AXI_wstrb;
  output [0:0]M04_AXI_wvalid;
  input M05_ACLK;
  input M05_ARESETN;
  output [31:0]M05_AXI_araddr;
  input M05_AXI_arready;
  output M05_AXI_arvalid;
  output [31:0]M05_AXI_awaddr;
  input M05_AXI_awready;
  output M05_AXI_awvalid;
  output M05_AXI_bready;
  input [1:0]M05_AXI_bresp;
  input M05_AXI_bvalid;
  input [31:0]M05_AXI_rdata;
  output M05_AXI_rready;
  input [1:0]M05_AXI_rresp;
  input M05_AXI_rvalid;
  output [31:0]M05_AXI_wdata;
  input M05_AXI_wready;
  output [3:0]M05_AXI_wstrb;
  output M05_AXI_wvalid;
  input M06_ACLK;
  input M06_ARESETN;
  output [31:0]M06_AXI_araddr;
  input M06_AXI_arready;
  output M06_AXI_arvalid;
  output [31:0]M06_AXI_awaddr;
  input M06_AXI_awready;
  output M06_AXI_awvalid;
  output M06_AXI_bready;
  input [1:0]M06_AXI_bresp;
  input M06_AXI_bvalid;
  input [31:0]M06_AXI_rdata;
  output M06_AXI_rready;
  input [1:0]M06_AXI_rresp;
  input M06_AXI_rvalid;
  output [31:0]M06_AXI_wdata;
  input M06_AXI_wready;
  output [3:0]M06_AXI_wstrb;
  output M06_AXI_wvalid;
  input M07_ACLK;
  input M07_ARESETN;
  output [31:0]M07_AXI_araddr;
  output [2:0]M07_AXI_arprot;
  input M07_AXI_arready;
  output M07_AXI_arvalid;
  output [31:0]M07_AXI_awaddr;
  output [2:0]M07_AXI_awprot;
  input M07_AXI_awready;
  output M07_AXI_awvalid;
  output M07_AXI_bready;
  input [1:0]M07_AXI_bresp;
  input M07_AXI_bvalid;
  input [31:0]M07_AXI_rdata;
  output M07_AXI_rready;
  input [1:0]M07_AXI_rresp;
  input M07_AXI_rvalid;
  output [31:0]M07_AXI_wdata;
  input M07_AXI_wready;
  output [3:0]M07_AXI_wstrb;
  output M07_AXI_wvalid;
  input M08_ACLK;
  input M08_ARESETN;
  output [31:0]M08_AXI_araddr;
  output [2:0]M08_AXI_arprot;
  input [0:0]M08_AXI_arready;
  output [0:0]M08_AXI_arvalid;
  output [31:0]M08_AXI_awaddr;
  output [2:0]M08_AXI_awprot;
  input [0:0]M08_AXI_awready;
  output [0:0]M08_AXI_awvalid;
  output [0:0]M08_AXI_bready;
  input [1:0]M08_AXI_bresp;
  input [0:0]M08_AXI_bvalid;
  input [31:0]M08_AXI_rdata;
  output [0:0]M08_AXI_rready;
  input [1:0]M08_AXI_rresp;
  input [0:0]M08_AXI_rvalid;
  output [31:0]M08_AXI_wdata;
  input [0:0]M08_AXI_wready;
  output [3:0]M08_AXI_wstrb;
  output [0:0]M08_AXI_wvalid;
  input M09_ACLK;
  input M09_ARESETN;
  output [31:0]M09_AXI_araddr;
  output [2:0]M09_AXI_arprot;
  input [0:0]M09_AXI_arready;
  output [0:0]M09_AXI_arvalid;
  output [31:0]M09_AXI_awaddr;
  output [2:0]M09_AXI_awprot;
  input [0:0]M09_AXI_awready;
  output [0:0]M09_AXI_awvalid;
  output [0:0]M09_AXI_bready;
  input [1:0]M09_AXI_bresp;
  input [0:0]M09_AXI_bvalid;
  input [31:0]M09_AXI_rdata;
  output [0:0]M09_AXI_rready;
  input [1:0]M09_AXI_rresp;
  input [0:0]M09_AXI_rvalid;
  output [31:0]M09_AXI_wdata;
  input [0:0]M09_AXI_wready;
  output [3:0]M09_AXI_wstrb;
  output [0:0]M09_AXI_wvalid;
  input M10_ACLK;
  input M10_ARESETN;
  output [31:0]M10_AXI_araddr;
  input [0:0]M10_AXI_arready;
  output [0:0]M10_AXI_arvalid;
  output [31:0]M10_AXI_awaddr;
  input [0:0]M10_AXI_awready;
  output [0:0]M10_AXI_awvalid;
  output [0:0]M10_AXI_bready;
  input [1:0]M10_AXI_bresp;
  input [0:0]M10_AXI_bvalid;
  input [31:0]M10_AXI_rdata;
  output [0:0]M10_AXI_rready;
  input [1:0]M10_AXI_rresp;
  input [0:0]M10_AXI_rvalid;
  output [31:0]M10_AXI_wdata;
  input [0:0]M10_AXI_wready;
  output [3:0]M10_AXI_wstrb;
  output [0:0]M10_AXI_wvalid;
  input M11_ACLK;
  input M11_ARESETN;
  output [31:0]M11_AXI_araddr;
  input M11_AXI_arready;
  output M11_AXI_arvalid;
  output [31:0]M11_AXI_awaddr;
  input M11_AXI_awready;
  output M11_AXI_awvalid;
  output M11_AXI_bready;
  input [1:0]M11_AXI_bresp;
  input M11_AXI_bvalid;
  input [31:0]M11_AXI_rdata;
  output M11_AXI_rready;
  input [1:0]M11_AXI_rresp;
  input M11_AXI_rvalid;
  output [31:0]M11_AXI_wdata;
  input M11_AXI_wready;
  output [3:0]M11_AXI_wstrb;
  output M11_AXI_wvalid;
  input M12_ACLK;
  input M12_ARESETN;
  output [31:0]M12_AXI_araddr;
  input M12_AXI_arready;
  output M12_AXI_arvalid;
  output [31:0]M12_AXI_awaddr;
  input M12_AXI_awready;
  output M12_AXI_awvalid;
  output M12_AXI_bready;
  input [1:0]M12_AXI_bresp;
  input M12_AXI_bvalid;
  input [31:0]M12_AXI_rdata;
  output M12_AXI_rready;
  input [1:0]M12_AXI_rresp;
  input M12_AXI_rvalid;
  output [31:0]M12_AXI_wdata;
  input M12_AXI_wready;
  output [3:0]M12_AXI_wstrb;
  output M12_AXI_wvalid;
  input M13_ACLK;
  input M13_ARESETN;
  output [31:0]M13_AXI_araddr;
  input M13_AXI_arready;
  output M13_AXI_arvalid;
  output [31:0]M13_AXI_awaddr;
  input M13_AXI_awready;
  output M13_AXI_awvalid;
  output M13_AXI_bready;
  input [1:0]M13_AXI_bresp;
  input M13_AXI_bvalid;
  input [31:0]M13_AXI_rdata;
  output M13_AXI_rready;
  input [1:0]M13_AXI_rresp;
  input M13_AXI_rvalid;
  output [31:0]M13_AXI_wdata;
  input M13_AXI_wready;
  output [3:0]M13_AXI_wstrb;
  output M13_AXI_wvalid;
  input M14_ACLK;
  input M14_ARESETN;
  output [31:0]M14_AXI_araddr;
  input M14_AXI_arready;
  output M14_AXI_arvalid;
  output [31:0]M14_AXI_awaddr;
  input M14_AXI_awready;
  output M14_AXI_awvalid;
  output M14_AXI_bready;
  input [1:0]M14_AXI_bresp;
  input M14_AXI_bvalid;
  input [31:0]M14_AXI_rdata;
  output M14_AXI_rready;
  input [1:0]M14_AXI_rresp;
  input M14_AXI_rvalid;
  output [31:0]M14_AXI_wdata;
  input M14_AXI_wready;
  output [3:0]M14_AXI_wstrb;
  output M14_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  output S00_AXI_arready;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  output S00_AXI_awready;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire M01_ACLK_1;
  wire M01_ARESETN_1;
  wire M02_ACLK_1;
  wire M02_ARESETN_1;
  wire M03_ACLK_1;
  wire M03_ARESETN_1;
  wire M04_ACLK_1;
  wire M04_ARESETN_1;
  wire M05_ACLK_1;
  wire M05_ARESETN_1;
  wire M06_ACLK_1;
  wire M06_ARESETN_1;
  wire M07_ACLK_1;
  wire M07_ARESETN_1;
  wire M08_ACLK_1;
  wire M08_ARESETN_1;
  wire M09_ACLK_1;
  wire M09_ARESETN_1;
  wire M10_ACLK_1;
  wire M10_ARESETN_1;
  wire M11_ACLK_1;
  wire M11_ARESETN_1;
  wire M12_ACLK_1;
  wire M12_ARESETN_1;
  wire M13_ACLK_1;
  wire M13_ARESETN_1;
  wire M14_ACLK_1;
  wire M14_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire axi_peripheral_interconnect_ACLK_net;
  wire axi_peripheral_interconnect_ARESETN_net;
  wire [31:0]axi_peripheral_interconnect_to_s00_couplers_ARADDR;
  wire [2:0]axi_peripheral_interconnect_to_s00_couplers_ARPROT;
  wire axi_peripheral_interconnect_to_s00_couplers_ARREADY;
  wire axi_peripheral_interconnect_to_s00_couplers_ARVALID;
  wire [31:0]axi_peripheral_interconnect_to_s00_couplers_AWADDR;
  wire [2:0]axi_peripheral_interconnect_to_s00_couplers_AWPROT;
  wire axi_peripheral_interconnect_to_s00_couplers_AWREADY;
  wire axi_peripheral_interconnect_to_s00_couplers_AWVALID;
  wire axi_peripheral_interconnect_to_s00_couplers_BREADY;
  wire [1:0]axi_peripheral_interconnect_to_s00_couplers_BRESP;
  wire axi_peripheral_interconnect_to_s00_couplers_BVALID;
  wire [31:0]axi_peripheral_interconnect_to_s00_couplers_RDATA;
  wire axi_peripheral_interconnect_to_s00_couplers_RREADY;
  wire [1:0]axi_peripheral_interconnect_to_s00_couplers_RRESP;
  wire axi_peripheral_interconnect_to_s00_couplers_RVALID;
  wire [31:0]axi_peripheral_interconnect_to_s00_couplers_WDATA;
  wire axi_peripheral_interconnect_to_s00_couplers_WREADY;
  wire [3:0]axi_peripheral_interconnect_to_s00_couplers_WSTRB;
  wire axi_peripheral_interconnect_to_s00_couplers_WVALID;
  wire [31:0]m00_couplers_to_axi_peripheral_interconnect_ARADDR;
  wire [2:0]m00_couplers_to_axi_peripheral_interconnect_ARPROT;
  wire [0:0]m00_couplers_to_axi_peripheral_interconnect_ARREADY;
  wire [0:0]m00_couplers_to_axi_peripheral_interconnect_ARVALID;
  wire [31:0]m00_couplers_to_axi_peripheral_interconnect_AWADDR;
  wire [2:0]m00_couplers_to_axi_peripheral_interconnect_AWPROT;
  wire [0:0]m00_couplers_to_axi_peripheral_interconnect_AWREADY;
  wire [0:0]m00_couplers_to_axi_peripheral_interconnect_AWVALID;
  wire [0:0]m00_couplers_to_axi_peripheral_interconnect_BREADY;
  wire [1:0]m00_couplers_to_axi_peripheral_interconnect_BRESP;
  wire [0:0]m00_couplers_to_axi_peripheral_interconnect_BVALID;
  wire [31:0]m00_couplers_to_axi_peripheral_interconnect_RDATA;
  wire [0:0]m00_couplers_to_axi_peripheral_interconnect_RREADY;
  wire [1:0]m00_couplers_to_axi_peripheral_interconnect_RRESP;
  wire [0:0]m00_couplers_to_axi_peripheral_interconnect_RVALID;
  wire [31:0]m00_couplers_to_axi_peripheral_interconnect_WDATA;
  wire [0:0]m00_couplers_to_axi_peripheral_interconnect_WREADY;
  wire [3:0]m00_couplers_to_axi_peripheral_interconnect_WSTRB;
  wire [0:0]m00_couplers_to_axi_peripheral_interconnect_WVALID;
  wire [31:0]m01_couplers_to_axi_peripheral_interconnect_ARADDR;
  wire [2:0]m01_couplers_to_axi_peripheral_interconnect_ARPROT;
  wire [0:0]m01_couplers_to_axi_peripheral_interconnect_ARREADY;
  wire [0:0]m01_couplers_to_axi_peripheral_interconnect_ARVALID;
  wire [31:0]m01_couplers_to_axi_peripheral_interconnect_AWADDR;
  wire [2:0]m01_couplers_to_axi_peripheral_interconnect_AWPROT;
  wire [0:0]m01_couplers_to_axi_peripheral_interconnect_AWREADY;
  wire [0:0]m01_couplers_to_axi_peripheral_interconnect_AWVALID;
  wire [0:0]m01_couplers_to_axi_peripheral_interconnect_BREADY;
  wire [1:0]m01_couplers_to_axi_peripheral_interconnect_BRESP;
  wire [0:0]m01_couplers_to_axi_peripheral_interconnect_BVALID;
  wire [31:0]m01_couplers_to_axi_peripheral_interconnect_RDATA;
  wire [0:0]m01_couplers_to_axi_peripheral_interconnect_RREADY;
  wire [1:0]m01_couplers_to_axi_peripheral_interconnect_RRESP;
  wire [0:0]m01_couplers_to_axi_peripheral_interconnect_RVALID;
  wire [31:0]m01_couplers_to_axi_peripheral_interconnect_WDATA;
  wire [0:0]m01_couplers_to_axi_peripheral_interconnect_WREADY;
  wire [3:0]m01_couplers_to_axi_peripheral_interconnect_WSTRB;
  wire [0:0]m01_couplers_to_axi_peripheral_interconnect_WVALID;
  wire [31:0]m02_couplers_to_axi_peripheral_interconnect_ARADDR;
  wire [2:0]m02_couplers_to_axi_peripheral_interconnect_ARPROT;
  wire [0:0]m02_couplers_to_axi_peripheral_interconnect_ARREADY;
  wire [0:0]m02_couplers_to_axi_peripheral_interconnect_ARVALID;
  wire [31:0]m02_couplers_to_axi_peripheral_interconnect_AWADDR;
  wire [2:0]m02_couplers_to_axi_peripheral_interconnect_AWPROT;
  wire [0:0]m02_couplers_to_axi_peripheral_interconnect_AWREADY;
  wire [0:0]m02_couplers_to_axi_peripheral_interconnect_AWVALID;
  wire [0:0]m02_couplers_to_axi_peripheral_interconnect_BREADY;
  wire [1:0]m02_couplers_to_axi_peripheral_interconnect_BRESP;
  wire [0:0]m02_couplers_to_axi_peripheral_interconnect_BVALID;
  wire [31:0]m02_couplers_to_axi_peripheral_interconnect_RDATA;
  wire [0:0]m02_couplers_to_axi_peripheral_interconnect_RREADY;
  wire [1:0]m02_couplers_to_axi_peripheral_interconnect_RRESP;
  wire [0:0]m02_couplers_to_axi_peripheral_interconnect_RVALID;
  wire [31:0]m02_couplers_to_axi_peripheral_interconnect_WDATA;
  wire [0:0]m02_couplers_to_axi_peripheral_interconnect_WREADY;
  wire [3:0]m02_couplers_to_axi_peripheral_interconnect_WSTRB;
  wire [0:0]m02_couplers_to_axi_peripheral_interconnect_WVALID;
  wire [31:0]m03_couplers_to_axi_peripheral_interconnect_ARADDR;
  wire [0:0]m03_couplers_to_axi_peripheral_interconnect_ARREADY;
  wire [0:0]m03_couplers_to_axi_peripheral_interconnect_ARVALID;
  wire [31:0]m03_couplers_to_axi_peripheral_interconnect_AWADDR;
  wire [0:0]m03_couplers_to_axi_peripheral_interconnect_AWREADY;
  wire [0:0]m03_couplers_to_axi_peripheral_interconnect_AWVALID;
  wire [0:0]m03_couplers_to_axi_peripheral_interconnect_BREADY;
  wire [1:0]m03_couplers_to_axi_peripheral_interconnect_BRESP;
  wire [0:0]m03_couplers_to_axi_peripheral_interconnect_BVALID;
  wire [31:0]m03_couplers_to_axi_peripheral_interconnect_RDATA;
  wire [0:0]m03_couplers_to_axi_peripheral_interconnect_RREADY;
  wire [1:0]m03_couplers_to_axi_peripheral_interconnect_RRESP;
  wire [0:0]m03_couplers_to_axi_peripheral_interconnect_RVALID;
  wire [31:0]m03_couplers_to_axi_peripheral_interconnect_WDATA;
  wire [0:0]m03_couplers_to_axi_peripheral_interconnect_WREADY;
  wire [3:0]m03_couplers_to_axi_peripheral_interconnect_WSTRB;
  wire [0:0]m03_couplers_to_axi_peripheral_interconnect_WVALID;
  wire [31:0]m04_couplers_to_axi_peripheral_interconnect_ARADDR;
  wire [0:0]m04_couplers_to_axi_peripheral_interconnect_ARREADY;
  wire [0:0]m04_couplers_to_axi_peripheral_interconnect_ARVALID;
  wire [31:0]m04_couplers_to_axi_peripheral_interconnect_AWADDR;
  wire [0:0]m04_couplers_to_axi_peripheral_interconnect_AWREADY;
  wire [0:0]m04_couplers_to_axi_peripheral_interconnect_AWVALID;
  wire [0:0]m04_couplers_to_axi_peripheral_interconnect_BREADY;
  wire [1:0]m04_couplers_to_axi_peripheral_interconnect_BRESP;
  wire [0:0]m04_couplers_to_axi_peripheral_interconnect_BVALID;
  wire [31:0]m04_couplers_to_axi_peripheral_interconnect_RDATA;
  wire [0:0]m04_couplers_to_axi_peripheral_interconnect_RREADY;
  wire [1:0]m04_couplers_to_axi_peripheral_interconnect_RRESP;
  wire [0:0]m04_couplers_to_axi_peripheral_interconnect_RVALID;
  wire [31:0]m04_couplers_to_axi_peripheral_interconnect_WDATA;
  wire [0:0]m04_couplers_to_axi_peripheral_interconnect_WREADY;
  wire [3:0]m04_couplers_to_axi_peripheral_interconnect_WSTRB;
  wire [0:0]m04_couplers_to_axi_peripheral_interconnect_WVALID;
  wire [31:0]m05_couplers_to_axi_peripheral_interconnect_ARADDR;
  wire m05_couplers_to_axi_peripheral_interconnect_ARREADY;
  wire m05_couplers_to_axi_peripheral_interconnect_ARVALID;
  wire [31:0]m05_couplers_to_axi_peripheral_interconnect_AWADDR;
  wire m05_couplers_to_axi_peripheral_interconnect_AWREADY;
  wire m05_couplers_to_axi_peripheral_interconnect_AWVALID;
  wire m05_couplers_to_axi_peripheral_interconnect_BREADY;
  wire [1:0]m05_couplers_to_axi_peripheral_interconnect_BRESP;
  wire m05_couplers_to_axi_peripheral_interconnect_BVALID;
  wire [31:0]m05_couplers_to_axi_peripheral_interconnect_RDATA;
  wire m05_couplers_to_axi_peripheral_interconnect_RREADY;
  wire [1:0]m05_couplers_to_axi_peripheral_interconnect_RRESP;
  wire m05_couplers_to_axi_peripheral_interconnect_RVALID;
  wire [31:0]m05_couplers_to_axi_peripheral_interconnect_WDATA;
  wire m05_couplers_to_axi_peripheral_interconnect_WREADY;
  wire [3:0]m05_couplers_to_axi_peripheral_interconnect_WSTRB;
  wire m05_couplers_to_axi_peripheral_interconnect_WVALID;
  wire [31:0]m06_couplers_to_axi_peripheral_interconnect_ARADDR;
  wire m06_couplers_to_axi_peripheral_interconnect_ARREADY;
  wire m06_couplers_to_axi_peripheral_interconnect_ARVALID;
  wire [31:0]m06_couplers_to_axi_peripheral_interconnect_AWADDR;
  wire m06_couplers_to_axi_peripheral_interconnect_AWREADY;
  wire m06_couplers_to_axi_peripheral_interconnect_AWVALID;
  wire m06_couplers_to_axi_peripheral_interconnect_BREADY;
  wire [1:0]m06_couplers_to_axi_peripheral_interconnect_BRESP;
  wire m06_couplers_to_axi_peripheral_interconnect_BVALID;
  wire [31:0]m06_couplers_to_axi_peripheral_interconnect_RDATA;
  wire m06_couplers_to_axi_peripheral_interconnect_RREADY;
  wire [1:0]m06_couplers_to_axi_peripheral_interconnect_RRESP;
  wire m06_couplers_to_axi_peripheral_interconnect_RVALID;
  wire [31:0]m06_couplers_to_axi_peripheral_interconnect_WDATA;
  wire m06_couplers_to_axi_peripheral_interconnect_WREADY;
  wire [3:0]m06_couplers_to_axi_peripheral_interconnect_WSTRB;
  wire m06_couplers_to_axi_peripheral_interconnect_WVALID;
  wire [31:0]m07_couplers_to_axi_peripheral_interconnect_ARADDR;
  wire [2:0]m07_couplers_to_axi_peripheral_interconnect_ARPROT;
  wire m07_couplers_to_axi_peripheral_interconnect_ARREADY;
  wire m07_couplers_to_axi_peripheral_interconnect_ARVALID;
  wire [31:0]m07_couplers_to_axi_peripheral_interconnect_AWADDR;
  wire [2:0]m07_couplers_to_axi_peripheral_interconnect_AWPROT;
  wire m07_couplers_to_axi_peripheral_interconnect_AWREADY;
  wire m07_couplers_to_axi_peripheral_interconnect_AWVALID;
  wire m07_couplers_to_axi_peripheral_interconnect_BREADY;
  wire [1:0]m07_couplers_to_axi_peripheral_interconnect_BRESP;
  wire m07_couplers_to_axi_peripheral_interconnect_BVALID;
  wire [31:0]m07_couplers_to_axi_peripheral_interconnect_RDATA;
  wire m07_couplers_to_axi_peripheral_interconnect_RREADY;
  wire [1:0]m07_couplers_to_axi_peripheral_interconnect_RRESP;
  wire m07_couplers_to_axi_peripheral_interconnect_RVALID;
  wire [31:0]m07_couplers_to_axi_peripheral_interconnect_WDATA;
  wire m07_couplers_to_axi_peripheral_interconnect_WREADY;
  wire [3:0]m07_couplers_to_axi_peripheral_interconnect_WSTRB;
  wire m07_couplers_to_axi_peripheral_interconnect_WVALID;
  wire [31:0]m08_couplers_to_axi_peripheral_interconnect_ARADDR;
  wire [2:0]m08_couplers_to_axi_peripheral_interconnect_ARPROT;
  wire [0:0]m08_couplers_to_axi_peripheral_interconnect_ARREADY;
  wire [0:0]m08_couplers_to_axi_peripheral_interconnect_ARVALID;
  wire [31:0]m08_couplers_to_axi_peripheral_interconnect_AWADDR;
  wire [2:0]m08_couplers_to_axi_peripheral_interconnect_AWPROT;
  wire [0:0]m08_couplers_to_axi_peripheral_interconnect_AWREADY;
  wire [0:0]m08_couplers_to_axi_peripheral_interconnect_AWVALID;
  wire [0:0]m08_couplers_to_axi_peripheral_interconnect_BREADY;
  wire [1:0]m08_couplers_to_axi_peripheral_interconnect_BRESP;
  wire [0:0]m08_couplers_to_axi_peripheral_interconnect_BVALID;
  wire [31:0]m08_couplers_to_axi_peripheral_interconnect_RDATA;
  wire [0:0]m08_couplers_to_axi_peripheral_interconnect_RREADY;
  wire [1:0]m08_couplers_to_axi_peripheral_interconnect_RRESP;
  wire [0:0]m08_couplers_to_axi_peripheral_interconnect_RVALID;
  wire [31:0]m08_couplers_to_axi_peripheral_interconnect_WDATA;
  wire [0:0]m08_couplers_to_axi_peripheral_interconnect_WREADY;
  wire [3:0]m08_couplers_to_axi_peripheral_interconnect_WSTRB;
  wire [0:0]m08_couplers_to_axi_peripheral_interconnect_WVALID;
  wire [31:0]m09_couplers_to_axi_peripheral_interconnect_ARADDR;
  wire [2:0]m09_couplers_to_axi_peripheral_interconnect_ARPROT;
  wire [0:0]m09_couplers_to_axi_peripheral_interconnect_ARREADY;
  wire [0:0]m09_couplers_to_axi_peripheral_interconnect_ARVALID;
  wire [31:0]m09_couplers_to_axi_peripheral_interconnect_AWADDR;
  wire [2:0]m09_couplers_to_axi_peripheral_interconnect_AWPROT;
  wire [0:0]m09_couplers_to_axi_peripheral_interconnect_AWREADY;
  wire [0:0]m09_couplers_to_axi_peripheral_interconnect_AWVALID;
  wire [0:0]m09_couplers_to_axi_peripheral_interconnect_BREADY;
  wire [1:0]m09_couplers_to_axi_peripheral_interconnect_BRESP;
  wire [0:0]m09_couplers_to_axi_peripheral_interconnect_BVALID;
  wire [31:0]m09_couplers_to_axi_peripheral_interconnect_RDATA;
  wire [0:0]m09_couplers_to_axi_peripheral_interconnect_RREADY;
  wire [1:0]m09_couplers_to_axi_peripheral_interconnect_RRESP;
  wire [0:0]m09_couplers_to_axi_peripheral_interconnect_RVALID;
  wire [31:0]m09_couplers_to_axi_peripheral_interconnect_WDATA;
  wire [0:0]m09_couplers_to_axi_peripheral_interconnect_WREADY;
  wire [3:0]m09_couplers_to_axi_peripheral_interconnect_WSTRB;
  wire [0:0]m09_couplers_to_axi_peripheral_interconnect_WVALID;
  wire [31:0]m10_couplers_to_axi_peripheral_interconnect_ARADDR;
  wire [0:0]m10_couplers_to_axi_peripheral_interconnect_ARREADY;
  wire [0:0]m10_couplers_to_axi_peripheral_interconnect_ARVALID;
  wire [31:0]m10_couplers_to_axi_peripheral_interconnect_AWADDR;
  wire [0:0]m10_couplers_to_axi_peripheral_interconnect_AWREADY;
  wire [0:0]m10_couplers_to_axi_peripheral_interconnect_AWVALID;
  wire [0:0]m10_couplers_to_axi_peripheral_interconnect_BREADY;
  wire [1:0]m10_couplers_to_axi_peripheral_interconnect_BRESP;
  wire [0:0]m10_couplers_to_axi_peripheral_interconnect_BVALID;
  wire [31:0]m10_couplers_to_axi_peripheral_interconnect_RDATA;
  wire [0:0]m10_couplers_to_axi_peripheral_interconnect_RREADY;
  wire [1:0]m10_couplers_to_axi_peripheral_interconnect_RRESP;
  wire [0:0]m10_couplers_to_axi_peripheral_interconnect_RVALID;
  wire [31:0]m10_couplers_to_axi_peripheral_interconnect_WDATA;
  wire [0:0]m10_couplers_to_axi_peripheral_interconnect_WREADY;
  wire [3:0]m10_couplers_to_axi_peripheral_interconnect_WSTRB;
  wire [0:0]m10_couplers_to_axi_peripheral_interconnect_WVALID;
  wire [31:0]m11_couplers_to_axi_peripheral_interconnect_ARADDR;
  wire m11_couplers_to_axi_peripheral_interconnect_ARREADY;
  wire m11_couplers_to_axi_peripheral_interconnect_ARVALID;
  wire [31:0]m11_couplers_to_axi_peripheral_interconnect_AWADDR;
  wire m11_couplers_to_axi_peripheral_interconnect_AWREADY;
  wire m11_couplers_to_axi_peripheral_interconnect_AWVALID;
  wire m11_couplers_to_axi_peripheral_interconnect_BREADY;
  wire [1:0]m11_couplers_to_axi_peripheral_interconnect_BRESP;
  wire m11_couplers_to_axi_peripheral_interconnect_BVALID;
  wire [31:0]m11_couplers_to_axi_peripheral_interconnect_RDATA;
  wire m11_couplers_to_axi_peripheral_interconnect_RREADY;
  wire [1:0]m11_couplers_to_axi_peripheral_interconnect_RRESP;
  wire m11_couplers_to_axi_peripheral_interconnect_RVALID;
  wire [31:0]m11_couplers_to_axi_peripheral_interconnect_WDATA;
  wire m11_couplers_to_axi_peripheral_interconnect_WREADY;
  wire [3:0]m11_couplers_to_axi_peripheral_interconnect_WSTRB;
  wire m11_couplers_to_axi_peripheral_interconnect_WVALID;
  wire [31:0]m12_couplers_to_axi_peripheral_interconnect_ARADDR;
  wire m12_couplers_to_axi_peripheral_interconnect_ARREADY;
  wire m12_couplers_to_axi_peripheral_interconnect_ARVALID;
  wire [31:0]m12_couplers_to_axi_peripheral_interconnect_AWADDR;
  wire m12_couplers_to_axi_peripheral_interconnect_AWREADY;
  wire m12_couplers_to_axi_peripheral_interconnect_AWVALID;
  wire m12_couplers_to_axi_peripheral_interconnect_BREADY;
  wire [1:0]m12_couplers_to_axi_peripheral_interconnect_BRESP;
  wire m12_couplers_to_axi_peripheral_interconnect_BVALID;
  wire [31:0]m12_couplers_to_axi_peripheral_interconnect_RDATA;
  wire m12_couplers_to_axi_peripheral_interconnect_RREADY;
  wire [1:0]m12_couplers_to_axi_peripheral_interconnect_RRESP;
  wire m12_couplers_to_axi_peripheral_interconnect_RVALID;
  wire [31:0]m12_couplers_to_axi_peripheral_interconnect_WDATA;
  wire m12_couplers_to_axi_peripheral_interconnect_WREADY;
  wire [3:0]m12_couplers_to_axi_peripheral_interconnect_WSTRB;
  wire m12_couplers_to_axi_peripheral_interconnect_WVALID;
  wire [31:0]m13_couplers_to_axi_peripheral_interconnect_ARADDR;
  wire m13_couplers_to_axi_peripheral_interconnect_ARREADY;
  wire m13_couplers_to_axi_peripheral_interconnect_ARVALID;
  wire [31:0]m13_couplers_to_axi_peripheral_interconnect_AWADDR;
  wire m13_couplers_to_axi_peripheral_interconnect_AWREADY;
  wire m13_couplers_to_axi_peripheral_interconnect_AWVALID;
  wire m13_couplers_to_axi_peripheral_interconnect_BREADY;
  wire [1:0]m13_couplers_to_axi_peripheral_interconnect_BRESP;
  wire m13_couplers_to_axi_peripheral_interconnect_BVALID;
  wire [31:0]m13_couplers_to_axi_peripheral_interconnect_RDATA;
  wire m13_couplers_to_axi_peripheral_interconnect_RREADY;
  wire [1:0]m13_couplers_to_axi_peripheral_interconnect_RRESP;
  wire m13_couplers_to_axi_peripheral_interconnect_RVALID;
  wire [31:0]m13_couplers_to_axi_peripheral_interconnect_WDATA;
  wire m13_couplers_to_axi_peripheral_interconnect_WREADY;
  wire [3:0]m13_couplers_to_axi_peripheral_interconnect_WSTRB;
  wire m13_couplers_to_axi_peripheral_interconnect_WVALID;
  wire [31:0]m14_couplers_to_axi_peripheral_interconnect_ARADDR;
  wire m14_couplers_to_axi_peripheral_interconnect_ARREADY;
  wire m14_couplers_to_axi_peripheral_interconnect_ARVALID;
  wire [31:0]m14_couplers_to_axi_peripheral_interconnect_AWADDR;
  wire m14_couplers_to_axi_peripheral_interconnect_AWREADY;
  wire m14_couplers_to_axi_peripheral_interconnect_AWVALID;
  wire m14_couplers_to_axi_peripheral_interconnect_BREADY;
  wire [1:0]m14_couplers_to_axi_peripheral_interconnect_BRESP;
  wire m14_couplers_to_axi_peripheral_interconnect_BVALID;
  wire [31:0]m14_couplers_to_axi_peripheral_interconnect_RDATA;
  wire m14_couplers_to_axi_peripheral_interconnect_RREADY;
  wire [1:0]m14_couplers_to_axi_peripheral_interconnect_RRESP;
  wire m14_couplers_to_axi_peripheral_interconnect_RVALID;
  wire [31:0]m14_couplers_to_axi_peripheral_interconnect_WDATA;
  wire m14_couplers_to_axi_peripheral_interconnect_WREADY;
  wire [3:0]m14_couplers_to_axi_peripheral_interconnect_WSTRB;
  wire m14_couplers_to_axi_peripheral_interconnect_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire [0:0]xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire [0:0]xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire [0:0]xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire [0:0]xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [63:32]xbar_to_m01_couplers_ARADDR;
  wire [5:3]xbar_to_m01_couplers_ARPROT;
  wire [0:0]xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
  wire [5:3]xbar_to_m01_couplers_AWPROT;
  wire [0:0]xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire [0:0]xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire [0:0]xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire [0:0]xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [95:64]xbar_to_m02_couplers_ARADDR;
  wire [8:6]xbar_to_m02_couplers_ARPROT;
  wire [0:0]xbar_to_m02_couplers_ARREADY;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [95:64]xbar_to_m02_couplers_AWADDR;
  wire [8:6]xbar_to_m02_couplers_AWPROT;
  wire [0:0]xbar_to_m02_couplers_AWREADY;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire [0:0]xbar_to_m02_couplers_BVALID;
  wire [31:0]xbar_to_m02_couplers_RDATA;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire [0:0]xbar_to_m02_couplers_RVALID;
  wire [95:64]xbar_to_m02_couplers_WDATA;
  wire [0:0]xbar_to_m02_couplers_WREADY;
  wire [11:8]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;
  wire [127:96]xbar_to_m03_couplers_ARADDR;
  wire [0:0]xbar_to_m03_couplers_ARREADY;
  wire [3:3]xbar_to_m03_couplers_ARVALID;
  wire [127:96]xbar_to_m03_couplers_AWADDR;
  wire [0:0]xbar_to_m03_couplers_AWREADY;
  wire [3:3]xbar_to_m03_couplers_AWVALID;
  wire [3:3]xbar_to_m03_couplers_BREADY;
  wire [1:0]xbar_to_m03_couplers_BRESP;
  wire [0:0]xbar_to_m03_couplers_BVALID;
  wire [31:0]xbar_to_m03_couplers_RDATA;
  wire [3:3]xbar_to_m03_couplers_RREADY;
  wire [1:0]xbar_to_m03_couplers_RRESP;
  wire [0:0]xbar_to_m03_couplers_RVALID;
  wire [127:96]xbar_to_m03_couplers_WDATA;
  wire [0:0]xbar_to_m03_couplers_WREADY;
  wire [15:12]xbar_to_m03_couplers_WSTRB;
  wire [3:3]xbar_to_m03_couplers_WVALID;
  wire [159:128]xbar_to_m04_couplers_ARADDR;
  wire [0:0]xbar_to_m04_couplers_ARREADY;
  wire [4:4]xbar_to_m04_couplers_ARVALID;
  wire [159:128]xbar_to_m04_couplers_AWADDR;
  wire [0:0]xbar_to_m04_couplers_AWREADY;
  wire [4:4]xbar_to_m04_couplers_AWVALID;
  wire [4:4]xbar_to_m04_couplers_BREADY;
  wire [1:0]xbar_to_m04_couplers_BRESP;
  wire [0:0]xbar_to_m04_couplers_BVALID;
  wire [31:0]xbar_to_m04_couplers_RDATA;
  wire [4:4]xbar_to_m04_couplers_RREADY;
  wire [1:0]xbar_to_m04_couplers_RRESP;
  wire [0:0]xbar_to_m04_couplers_RVALID;
  wire [159:128]xbar_to_m04_couplers_WDATA;
  wire [0:0]xbar_to_m04_couplers_WREADY;
  wire [19:16]xbar_to_m04_couplers_WSTRB;
  wire [4:4]xbar_to_m04_couplers_WVALID;
  wire [191:160]xbar_to_m05_couplers_ARADDR;
  wire xbar_to_m05_couplers_ARREADY;
  wire [5:5]xbar_to_m05_couplers_ARVALID;
  wire [191:160]xbar_to_m05_couplers_AWADDR;
  wire xbar_to_m05_couplers_AWREADY;
  wire [5:5]xbar_to_m05_couplers_AWVALID;
  wire [5:5]xbar_to_m05_couplers_BREADY;
  wire [1:0]xbar_to_m05_couplers_BRESP;
  wire xbar_to_m05_couplers_BVALID;
  wire [31:0]xbar_to_m05_couplers_RDATA;
  wire [5:5]xbar_to_m05_couplers_RREADY;
  wire [1:0]xbar_to_m05_couplers_RRESP;
  wire xbar_to_m05_couplers_RVALID;
  wire [191:160]xbar_to_m05_couplers_WDATA;
  wire xbar_to_m05_couplers_WREADY;
  wire [23:20]xbar_to_m05_couplers_WSTRB;
  wire [5:5]xbar_to_m05_couplers_WVALID;
  wire [223:192]xbar_to_m06_couplers_ARADDR;
  wire [20:18]xbar_to_m06_couplers_ARPROT;
  wire xbar_to_m06_couplers_ARREADY;
  wire [6:6]xbar_to_m06_couplers_ARVALID;
  wire [223:192]xbar_to_m06_couplers_AWADDR;
  wire [20:18]xbar_to_m06_couplers_AWPROT;
  wire xbar_to_m06_couplers_AWREADY;
  wire [6:6]xbar_to_m06_couplers_AWVALID;
  wire [6:6]xbar_to_m06_couplers_BREADY;
  wire [1:0]xbar_to_m06_couplers_BRESP;
  wire xbar_to_m06_couplers_BVALID;
  wire [31:0]xbar_to_m06_couplers_RDATA;
  wire [6:6]xbar_to_m06_couplers_RREADY;
  wire [1:0]xbar_to_m06_couplers_RRESP;
  wire xbar_to_m06_couplers_RVALID;
  wire [223:192]xbar_to_m06_couplers_WDATA;
  wire xbar_to_m06_couplers_WREADY;
  wire [27:24]xbar_to_m06_couplers_WSTRB;
  wire [6:6]xbar_to_m06_couplers_WVALID;
  wire [255:224]xbar_to_m07_couplers_ARADDR;
  wire [23:21]xbar_to_m07_couplers_ARPROT;
  wire xbar_to_m07_couplers_ARREADY;
  wire [7:7]xbar_to_m07_couplers_ARVALID;
  wire [255:224]xbar_to_m07_couplers_AWADDR;
  wire [23:21]xbar_to_m07_couplers_AWPROT;
  wire xbar_to_m07_couplers_AWREADY;
  wire [7:7]xbar_to_m07_couplers_AWVALID;
  wire [7:7]xbar_to_m07_couplers_BREADY;
  wire [1:0]xbar_to_m07_couplers_BRESP;
  wire xbar_to_m07_couplers_BVALID;
  wire [31:0]xbar_to_m07_couplers_RDATA;
  wire [7:7]xbar_to_m07_couplers_RREADY;
  wire [1:0]xbar_to_m07_couplers_RRESP;
  wire xbar_to_m07_couplers_RVALID;
  wire [255:224]xbar_to_m07_couplers_WDATA;
  wire xbar_to_m07_couplers_WREADY;
  wire [31:28]xbar_to_m07_couplers_WSTRB;
  wire [7:7]xbar_to_m07_couplers_WVALID;
  wire [287:256]xbar_to_m08_couplers_ARADDR;
  wire [26:24]xbar_to_m08_couplers_ARPROT;
  wire [0:0]xbar_to_m08_couplers_ARREADY;
  wire [8:8]xbar_to_m08_couplers_ARVALID;
  wire [287:256]xbar_to_m08_couplers_AWADDR;
  wire [26:24]xbar_to_m08_couplers_AWPROT;
  wire [0:0]xbar_to_m08_couplers_AWREADY;
  wire [8:8]xbar_to_m08_couplers_AWVALID;
  wire [8:8]xbar_to_m08_couplers_BREADY;
  wire [1:0]xbar_to_m08_couplers_BRESP;
  wire [0:0]xbar_to_m08_couplers_BVALID;
  wire [31:0]xbar_to_m08_couplers_RDATA;
  wire [8:8]xbar_to_m08_couplers_RREADY;
  wire [1:0]xbar_to_m08_couplers_RRESP;
  wire [0:0]xbar_to_m08_couplers_RVALID;
  wire [287:256]xbar_to_m08_couplers_WDATA;
  wire [0:0]xbar_to_m08_couplers_WREADY;
  wire [35:32]xbar_to_m08_couplers_WSTRB;
  wire [8:8]xbar_to_m08_couplers_WVALID;
  wire [319:288]xbar_to_m09_couplers_ARADDR;
  wire [29:27]xbar_to_m09_couplers_ARPROT;
  wire [0:0]xbar_to_m09_couplers_ARREADY;
  wire [9:9]xbar_to_m09_couplers_ARVALID;
  wire [319:288]xbar_to_m09_couplers_AWADDR;
  wire [29:27]xbar_to_m09_couplers_AWPROT;
  wire [0:0]xbar_to_m09_couplers_AWREADY;
  wire [9:9]xbar_to_m09_couplers_AWVALID;
  wire [9:9]xbar_to_m09_couplers_BREADY;
  wire [1:0]xbar_to_m09_couplers_BRESP;
  wire [0:0]xbar_to_m09_couplers_BVALID;
  wire [31:0]xbar_to_m09_couplers_RDATA;
  wire [9:9]xbar_to_m09_couplers_RREADY;
  wire [1:0]xbar_to_m09_couplers_RRESP;
  wire [0:0]xbar_to_m09_couplers_RVALID;
  wire [319:288]xbar_to_m09_couplers_WDATA;
  wire [0:0]xbar_to_m09_couplers_WREADY;
  wire [39:36]xbar_to_m09_couplers_WSTRB;
  wire [9:9]xbar_to_m09_couplers_WVALID;
  wire [351:320]xbar_to_m10_couplers_ARADDR;
  wire [0:0]xbar_to_m10_couplers_ARREADY;
  wire [10:10]xbar_to_m10_couplers_ARVALID;
  wire [351:320]xbar_to_m10_couplers_AWADDR;
  wire [0:0]xbar_to_m10_couplers_AWREADY;
  wire [10:10]xbar_to_m10_couplers_AWVALID;
  wire [10:10]xbar_to_m10_couplers_BREADY;
  wire [1:0]xbar_to_m10_couplers_BRESP;
  wire [0:0]xbar_to_m10_couplers_BVALID;
  wire [31:0]xbar_to_m10_couplers_RDATA;
  wire [10:10]xbar_to_m10_couplers_RREADY;
  wire [1:0]xbar_to_m10_couplers_RRESP;
  wire [0:0]xbar_to_m10_couplers_RVALID;
  wire [351:320]xbar_to_m10_couplers_WDATA;
  wire [0:0]xbar_to_m10_couplers_WREADY;
  wire [43:40]xbar_to_m10_couplers_WSTRB;
  wire [10:10]xbar_to_m10_couplers_WVALID;
  wire [383:352]xbar_to_m11_couplers_ARADDR;
  wire xbar_to_m11_couplers_ARREADY;
  wire [11:11]xbar_to_m11_couplers_ARVALID;
  wire [383:352]xbar_to_m11_couplers_AWADDR;
  wire xbar_to_m11_couplers_AWREADY;
  wire [11:11]xbar_to_m11_couplers_AWVALID;
  wire [11:11]xbar_to_m11_couplers_BREADY;
  wire [1:0]xbar_to_m11_couplers_BRESP;
  wire xbar_to_m11_couplers_BVALID;
  wire [31:0]xbar_to_m11_couplers_RDATA;
  wire [11:11]xbar_to_m11_couplers_RREADY;
  wire [1:0]xbar_to_m11_couplers_RRESP;
  wire xbar_to_m11_couplers_RVALID;
  wire [383:352]xbar_to_m11_couplers_WDATA;
  wire xbar_to_m11_couplers_WREADY;
  wire [47:44]xbar_to_m11_couplers_WSTRB;
  wire [11:11]xbar_to_m11_couplers_WVALID;
  wire [415:384]xbar_to_m12_couplers_ARADDR;
  wire xbar_to_m12_couplers_ARREADY;
  wire [12:12]xbar_to_m12_couplers_ARVALID;
  wire [415:384]xbar_to_m12_couplers_AWADDR;
  wire xbar_to_m12_couplers_AWREADY;
  wire [12:12]xbar_to_m12_couplers_AWVALID;
  wire [12:12]xbar_to_m12_couplers_BREADY;
  wire [1:0]xbar_to_m12_couplers_BRESP;
  wire xbar_to_m12_couplers_BVALID;
  wire [31:0]xbar_to_m12_couplers_RDATA;
  wire [12:12]xbar_to_m12_couplers_RREADY;
  wire [1:0]xbar_to_m12_couplers_RRESP;
  wire xbar_to_m12_couplers_RVALID;
  wire [415:384]xbar_to_m12_couplers_WDATA;
  wire xbar_to_m12_couplers_WREADY;
  wire [51:48]xbar_to_m12_couplers_WSTRB;
  wire [12:12]xbar_to_m12_couplers_WVALID;
  wire [447:416]xbar_to_m13_couplers_ARADDR;
  wire xbar_to_m13_couplers_ARREADY;
  wire [13:13]xbar_to_m13_couplers_ARVALID;
  wire [447:416]xbar_to_m13_couplers_AWADDR;
  wire xbar_to_m13_couplers_AWREADY;
  wire [13:13]xbar_to_m13_couplers_AWVALID;
  wire [13:13]xbar_to_m13_couplers_BREADY;
  wire [1:0]xbar_to_m13_couplers_BRESP;
  wire xbar_to_m13_couplers_BVALID;
  wire [31:0]xbar_to_m13_couplers_RDATA;
  wire [13:13]xbar_to_m13_couplers_RREADY;
  wire [1:0]xbar_to_m13_couplers_RRESP;
  wire xbar_to_m13_couplers_RVALID;
  wire [447:416]xbar_to_m13_couplers_WDATA;
  wire xbar_to_m13_couplers_WREADY;
  wire [55:52]xbar_to_m13_couplers_WSTRB;
  wire [13:13]xbar_to_m13_couplers_WVALID;
  wire [479:448]xbar_to_m14_couplers_ARADDR;
  wire xbar_to_m14_couplers_ARREADY;
  wire [14:14]xbar_to_m14_couplers_ARVALID;
  wire [479:448]xbar_to_m14_couplers_AWADDR;
  wire xbar_to_m14_couplers_AWREADY;
  wire [14:14]xbar_to_m14_couplers_AWVALID;
  wire [14:14]xbar_to_m14_couplers_BREADY;
  wire [1:0]xbar_to_m14_couplers_BRESP;
  wire xbar_to_m14_couplers_BVALID;
  wire [31:0]xbar_to_m14_couplers_RDATA;
  wire [14:14]xbar_to_m14_couplers_RREADY;
  wire [1:0]xbar_to_m14_couplers_RRESP;
  wire xbar_to_m14_couplers_RVALID;
  wire [479:448]xbar_to_m14_couplers_WDATA;
  wire xbar_to_m14_couplers_WREADY;
  wire [59:56]xbar_to_m14_couplers_WSTRB;
  wire [14:14]xbar_to_m14_couplers_WVALID;
  wire [44:0]NLW_xbar_m_axi_arprot_UNCONNECTED;
  wire [44:0]NLW_xbar_m_axi_awprot_UNCONNECTED;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[31:0] = m00_couplers_to_axi_peripheral_interconnect_ARADDR;
  assign M00_AXI_arprot[2:0] = m00_couplers_to_axi_peripheral_interconnect_ARPROT;
  assign M00_AXI_arvalid[0] = m00_couplers_to_axi_peripheral_interconnect_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_axi_peripheral_interconnect_AWADDR;
  assign M00_AXI_awprot[2:0] = m00_couplers_to_axi_peripheral_interconnect_AWPROT;
  assign M00_AXI_awvalid[0] = m00_couplers_to_axi_peripheral_interconnect_AWVALID;
  assign M00_AXI_bready[0] = m00_couplers_to_axi_peripheral_interconnect_BREADY;
  assign M00_AXI_rready[0] = m00_couplers_to_axi_peripheral_interconnect_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_axi_peripheral_interconnect_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_axi_peripheral_interconnect_WSTRB;
  assign M00_AXI_wvalid[0] = m00_couplers_to_axi_peripheral_interconnect_WVALID;
  assign M01_ACLK_1 = M01_ACLK;
  assign M01_ARESETN_1 = M01_ARESETN;
  assign M01_AXI_araddr[31:0] = m01_couplers_to_axi_peripheral_interconnect_ARADDR;
  assign M01_AXI_arprot[2:0] = m01_couplers_to_axi_peripheral_interconnect_ARPROT;
  assign M01_AXI_arvalid[0] = m01_couplers_to_axi_peripheral_interconnect_ARVALID;
  assign M01_AXI_awaddr[31:0] = m01_couplers_to_axi_peripheral_interconnect_AWADDR;
  assign M01_AXI_awprot[2:0] = m01_couplers_to_axi_peripheral_interconnect_AWPROT;
  assign M01_AXI_awvalid[0] = m01_couplers_to_axi_peripheral_interconnect_AWVALID;
  assign M01_AXI_bready[0] = m01_couplers_to_axi_peripheral_interconnect_BREADY;
  assign M01_AXI_rready[0] = m01_couplers_to_axi_peripheral_interconnect_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_axi_peripheral_interconnect_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_axi_peripheral_interconnect_WSTRB;
  assign M01_AXI_wvalid[0] = m01_couplers_to_axi_peripheral_interconnect_WVALID;
  assign M02_ACLK_1 = M02_ACLK;
  assign M02_ARESETN_1 = M02_ARESETN;
  assign M02_AXI_araddr[31:0] = m02_couplers_to_axi_peripheral_interconnect_ARADDR;
  assign M02_AXI_arprot[2:0] = m02_couplers_to_axi_peripheral_interconnect_ARPROT;
  assign M02_AXI_arvalid[0] = m02_couplers_to_axi_peripheral_interconnect_ARVALID;
  assign M02_AXI_awaddr[31:0] = m02_couplers_to_axi_peripheral_interconnect_AWADDR;
  assign M02_AXI_awprot[2:0] = m02_couplers_to_axi_peripheral_interconnect_AWPROT;
  assign M02_AXI_awvalid[0] = m02_couplers_to_axi_peripheral_interconnect_AWVALID;
  assign M02_AXI_bready[0] = m02_couplers_to_axi_peripheral_interconnect_BREADY;
  assign M02_AXI_rready[0] = m02_couplers_to_axi_peripheral_interconnect_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_axi_peripheral_interconnect_WDATA;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_axi_peripheral_interconnect_WSTRB;
  assign M02_AXI_wvalid[0] = m02_couplers_to_axi_peripheral_interconnect_WVALID;
  assign M03_ACLK_1 = M03_ACLK;
  assign M03_ARESETN_1 = M03_ARESETN;
  assign M03_AXI_araddr[31:0] = m03_couplers_to_axi_peripheral_interconnect_ARADDR;
  assign M03_AXI_arvalid[0] = m03_couplers_to_axi_peripheral_interconnect_ARVALID;
  assign M03_AXI_awaddr[31:0] = m03_couplers_to_axi_peripheral_interconnect_AWADDR;
  assign M03_AXI_awvalid[0] = m03_couplers_to_axi_peripheral_interconnect_AWVALID;
  assign M03_AXI_bready[0] = m03_couplers_to_axi_peripheral_interconnect_BREADY;
  assign M03_AXI_rready[0] = m03_couplers_to_axi_peripheral_interconnect_RREADY;
  assign M03_AXI_wdata[31:0] = m03_couplers_to_axi_peripheral_interconnect_WDATA;
  assign M03_AXI_wstrb[3:0] = m03_couplers_to_axi_peripheral_interconnect_WSTRB;
  assign M03_AXI_wvalid[0] = m03_couplers_to_axi_peripheral_interconnect_WVALID;
  assign M04_ACLK_1 = M04_ACLK;
  assign M04_ARESETN_1 = M04_ARESETN;
  assign M04_AXI_araddr[31:0] = m04_couplers_to_axi_peripheral_interconnect_ARADDR;
  assign M04_AXI_arvalid[0] = m04_couplers_to_axi_peripheral_interconnect_ARVALID;
  assign M04_AXI_awaddr[31:0] = m04_couplers_to_axi_peripheral_interconnect_AWADDR;
  assign M04_AXI_awvalid[0] = m04_couplers_to_axi_peripheral_interconnect_AWVALID;
  assign M04_AXI_bready[0] = m04_couplers_to_axi_peripheral_interconnect_BREADY;
  assign M04_AXI_rready[0] = m04_couplers_to_axi_peripheral_interconnect_RREADY;
  assign M04_AXI_wdata[31:0] = m04_couplers_to_axi_peripheral_interconnect_WDATA;
  assign M04_AXI_wstrb[3:0] = m04_couplers_to_axi_peripheral_interconnect_WSTRB;
  assign M04_AXI_wvalid[0] = m04_couplers_to_axi_peripheral_interconnect_WVALID;
  assign M05_ACLK_1 = M05_ACLK;
  assign M05_ARESETN_1 = M05_ARESETN;
  assign M05_AXI_araddr[31:0] = m05_couplers_to_axi_peripheral_interconnect_ARADDR;
  assign M05_AXI_arvalid = m05_couplers_to_axi_peripheral_interconnect_ARVALID;
  assign M05_AXI_awaddr[31:0] = m05_couplers_to_axi_peripheral_interconnect_AWADDR;
  assign M05_AXI_awvalid = m05_couplers_to_axi_peripheral_interconnect_AWVALID;
  assign M05_AXI_bready = m05_couplers_to_axi_peripheral_interconnect_BREADY;
  assign M05_AXI_rready = m05_couplers_to_axi_peripheral_interconnect_RREADY;
  assign M05_AXI_wdata[31:0] = m05_couplers_to_axi_peripheral_interconnect_WDATA;
  assign M05_AXI_wstrb[3:0] = m05_couplers_to_axi_peripheral_interconnect_WSTRB;
  assign M05_AXI_wvalid = m05_couplers_to_axi_peripheral_interconnect_WVALID;
  assign M06_ACLK_1 = M06_ACLK;
  assign M06_ARESETN_1 = M06_ARESETN;
  assign M06_AXI_araddr[31:0] = m06_couplers_to_axi_peripheral_interconnect_ARADDR;
  assign M06_AXI_arvalid = m06_couplers_to_axi_peripheral_interconnect_ARVALID;
  assign M06_AXI_awaddr[31:0] = m06_couplers_to_axi_peripheral_interconnect_AWADDR;
  assign M06_AXI_awvalid = m06_couplers_to_axi_peripheral_interconnect_AWVALID;
  assign M06_AXI_bready = m06_couplers_to_axi_peripheral_interconnect_BREADY;
  assign M06_AXI_rready = m06_couplers_to_axi_peripheral_interconnect_RREADY;
  assign M06_AXI_wdata[31:0] = m06_couplers_to_axi_peripheral_interconnect_WDATA;
  assign M06_AXI_wstrb[3:0] = m06_couplers_to_axi_peripheral_interconnect_WSTRB;
  assign M06_AXI_wvalid = m06_couplers_to_axi_peripheral_interconnect_WVALID;
  assign M07_ACLK_1 = M07_ACLK;
  assign M07_ARESETN_1 = M07_ARESETN;
  assign M07_AXI_araddr[31:0] = m07_couplers_to_axi_peripheral_interconnect_ARADDR;
  assign M07_AXI_arprot[2:0] = m07_couplers_to_axi_peripheral_interconnect_ARPROT;
  assign M07_AXI_arvalid = m07_couplers_to_axi_peripheral_interconnect_ARVALID;
  assign M07_AXI_awaddr[31:0] = m07_couplers_to_axi_peripheral_interconnect_AWADDR;
  assign M07_AXI_awprot[2:0] = m07_couplers_to_axi_peripheral_interconnect_AWPROT;
  assign M07_AXI_awvalid = m07_couplers_to_axi_peripheral_interconnect_AWVALID;
  assign M07_AXI_bready = m07_couplers_to_axi_peripheral_interconnect_BREADY;
  assign M07_AXI_rready = m07_couplers_to_axi_peripheral_interconnect_RREADY;
  assign M07_AXI_wdata[31:0] = m07_couplers_to_axi_peripheral_interconnect_WDATA;
  assign M07_AXI_wstrb[3:0] = m07_couplers_to_axi_peripheral_interconnect_WSTRB;
  assign M07_AXI_wvalid = m07_couplers_to_axi_peripheral_interconnect_WVALID;
  assign M08_ACLK_1 = M08_ACLK;
  assign M08_ARESETN_1 = M08_ARESETN;
  assign M08_AXI_araddr[31:0] = m08_couplers_to_axi_peripheral_interconnect_ARADDR;
  assign M08_AXI_arprot[2:0] = m08_couplers_to_axi_peripheral_interconnect_ARPROT;
  assign M08_AXI_arvalid[0] = m08_couplers_to_axi_peripheral_interconnect_ARVALID;
  assign M08_AXI_awaddr[31:0] = m08_couplers_to_axi_peripheral_interconnect_AWADDR;
  assign M08_AXI_awprot[2:0] = m08_couplers_to_axi_peripheral_interconnect_AWPROT;
  assign M08_AXI_awvalid[0] = m08_couplers_to_axi_peripheral_interconnect_AWVALID;
  assign M08_AXI_bready[0] = m08_couplers_to_axi_peripheral_interconnect_BREADY;
  assign M08_AXI_rready[0] = m08_couplers_to_axi_peripheral_interconnect_RREADY;
  assign M08_AXI_wdata[31:0] = m08_couplers_to_axi_peripheral_interconnect_WDATA;
  assign M08_AXI_wstrb[3:0] = m08_couplers_to_axi_peripheral_interconnect_WSTRB;
  assign M08_AXI_wvalid[0] = m08_couplers_to_axi_peripheral_interconnect_WVALID;
  assign M09_ACLK_1 = M09_ACLK;
  assign M09_ARESETN_1 = M09_ARESETN;
  assign M09_AXI_araddr[31:0] = m09_couplers_to_axi_peripheral_interconnect_ARADDR;
  assign M09_AXI_arprot[2:0] = m09_couplers_to_axi_peripheral_interconnect_ARPROT;
  assign M09_AXI_arvalid[0] = m09_couplers_to_axi_peripheral_interconnect_ARVALID;
  assign M09_AXI_awaddr[31:0] = m09_couplers_to_axi_peripheral_interconnect_AWADDR;
  assign M09_AXI_awprot[2:0] = m09_couplers_to_axi_peripheral_interconnect_AWPROT;
  assign M09_AXI_awvalid[0] = m09_couplers_to_axi_peripheral_interconnect_AWVALID;
  assign M09_AXI_bready[0] = m09_couplers_to_axi_peripheral_interconnect_BREADY;
  assign M09_AXI_rready[0] = m09_couplers_to_axi_peripheral_interconnect_RREADY;
  assign M09_AXI_wdata[31:0] = m09_couplers_to_axi_peripheral_interconnect_WDATA;
  assign M09_AXI_wstrb[3:0] = m09_couplers_to_axi_peripheral_interconnect_WSTRB;
  assign M09_AXI_wvalid[0] = m09_couplers_to_axi_peripheral_interconnect_WVALID;
  assign M10_ACLK_1 = M10_ACLK;
  assign M10_ARESETN_1 = M10_ARESETN;
  assign M10_AXI_araddr[31:0] = m10_couplers_to_axi_peripheral_interconnect_ARADDR;
  assign M10_AXI_arvalid[0] = m10_couplers_to_axi_peripheral_interconnect_ARVALID;
  assign M10_AXI_awaddr[31:0] = m10_couplers_to_axi_peripheral_interconnect_AWADDR;
  assign M10_AXI_awvalid[0] = m10_couplers_to_axi_peripheral_interconnect_AWVALID;
  assign M10_AXI_bready[0] = m10_couplers_to_axi_peripheral_interconnect_BREADY;
  assign M10_AXI_rready[0] = m10_couplers_to_axi_peripheral_interconnect_RREADY;
  assign M10_AXI_wdata[31:0] = m10_couplers_to_axi_peripheral_interconnect_WDATA;
  assign M10_AXI_wstrb[3:0] = m10_couplers_to_axi_peripheral_interconnect_WSTRB;
  assign M10_AXI_wvalid[0] = m10_couplers_to_axi_peripheral_interconnect_WVALID;
  assign M11_ACLK_1 = M11_ACLK;
  assign M11_ARESETN_1 = M11_ARESETN;
  assign M11_AXI_araddr[31:0] = m11_couplers_to_axi_peripheral_interconnect_ARADDR;
  assign M11_AXI_arvalid = m11_couplers_to_axi_peripheral_interconnect_ARVALID;
  assign M11_AXI_awaddr[31:0] = m11_couplers_to_axi_peripheral_interconnect_AWADDR;
  assign M11_AXI_awvalid = m11_couplers_to_axi_peripheral_interconnect_AWVALID;
  assign M11_AXI_bready = m11_couplers_to_axi_peripheral_interconnect_BREADY;
  assign M11_AXI_rready = m11_couplers_to_axi_peripheral_interconnect_RREADY;
  assign M11_AXI_wdata[31:0] = m11_couplers_to_axi_peripheral_interconnect_WDATA;
  assign M11_AXI_wstrb[3:0] = m11_couplers_to_axi_peripheral_interconnect_WSTRB;
  assign M11_AXI_wvalid = m11_couplers_to_axi_peripheral_interconnect_WVALID;
  assign M12_ACLK_1 = M12_ACLK;
  assign M12_ARESETN_1 = M12_ARESETN;
  assign M12_AXI_araddr[31:0] = m12_couplers_to_axi_peripheral_interconnect_ARADDR;
  assign M12_AXI_arvalid = m12_couplers_to_axi_peripheral_interconnect_ARVALID;
  assign M12_AXI_awaddr[31:0] = m12_couplers_to_axi_peripheral_interconnect_AWADDR;
  assign M12_AXI_awvalid = m12_couplers_to_axi_peripheral_interconnect_AWVALID;
  assign M12_AXI_bready = m12_couplers_to_axi_peripheral_interconnect_BREADY;
  assign M12_AXI_rready = m12_couplers_to_axi_peripheral_interconnect_RREADY;
  assign M12_AXI_wdata[31:0] = m12_couplers_to_axi_peripheral_interconnect_WDATA;
  assign M12_AXI_wstrb[3:0] = m12_couplers_to_axi_peripheral_interconnect_WSTRB;
  assign M12_AXI_wvalid = m12_couplers_to_axi_peripheral_interconnect_WVALID;
  assign M13_ACLK_1 = M13_ACLK;
  assign M13_ARESETN_1 = M13_ARESETN;
  assign M13_AXI_araddr[31:0] = m13_couplers_to_axi_peripheral_interconnect_ARADDR;
  assign M13_AXI_arvalid = m13_couplers_to_axi_peripheral_interconnect_ARVALID;
  assign M13_AXI_awaddr[31:0] = m13_couplers_to_axi_peripheral_interconnect_AWADDR;
  assign M13_AXI_awvalid = m13_couplers_to_axi_peripheral_interconnect_AWVALID;
  assign M13_AXI_bready = m13_couplers_to_axi_peripheral_interconnect_BREADY;
  assign M13_AXI_rready = m13_couplers_to_axi_peripheral_interconnect_RREADY;
  assign M13_AXI_wdata[31:0] = m13_couplers_to_axi_peripheral_interconnect_WDATA;
  assign M13_AXI_wstrb[3:0] = m13_couplers_to_axi_peripheral_interconnect_WSTRB;
  assign M13_AXI_wvalid = m13_couplers_to_axi_peripheral_interconnect_WVALID;
  assign M14_ACLK_1 = M14_ACLK;
  assign M14_ARESETN_1 = M14_ARESETN;
  assign M14_AXI_araddr[31:0] = m14_couplers_to_axi_peripheral_interconnect_ARADDR;
  assign M14_AXI_arvalid = m14_couplers_to_axi_peripheral_interconnect_ARVALID;
  assign M14_AXI_awaddr[31:0] = m14_couplers_to_axi_peripheral_interconnect_AWADDR;
  assign M14_AXI_awvalid = m14_couplers_to_axi_peripheral_interconnect_AWVALID;
  assign M14_AXI_bready = m14_couplers_to_axi_peripheral_interconnect_BREADY;
  assign M14_AXI_rready = m14_couplers_to_axi_peripheral_interconnect_RREADY;
  assign M14_AXI_wdata[31:0] = m14_couplers_to_axi_peripheral_interconnect_WDATA;
  assign M14_AXI_wstrb[3:0] = m14_couplers_to_axi_peripheral_interconnect_WSTRB;
  assign M14_AXI_wvalid = m14_couplers_to_axi_peripheral_interconnect_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = axi_peripheral_interconnect_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = axi_peripheral_interconnect_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = axi_peripheral_interconnect_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_peripheral_interconnect_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = axi_peripheral_interconnect_to_s00_couplers_RDATA;
  assign S00_AXI_rresp[1:0] = axi_peripheral_interconnect_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_peripheral_interconnect_to_s00_couplers_RVALID;
  assign S00_AXI_wready = axi_peripheral_interconnect_to_s00_couplers_WREADY;
  assign axi_peripheral_interconnect_ACLK_net = ACLK;
  assign axi_peripheral_interconnect_ARESETN_net = ARESETN;
  assign axi_peripheral_interconnect_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign axi_peripheral_interconnect_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_peripheral_interconnect_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_peripheral_interconnect_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign axi_peripheral_interconnect_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_peripheral_interconnect_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_peripheral_interconnect_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_peripheral_interconnect_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_peripheral_interconnect_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign axi_peripheral_interconnect_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign axi_peripheral_interconnect_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign m00_couplers_to_axi_peripheral_interconnect_ARREADY = M00_AXI_arready[0];
  assign m00_couplers_to_axi_peripheral_interconnect_AWREADY = M00_AXI_awready[0];
  assign m00_couplers_to_axi_peripheral_interconnect_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_peripheral_interconnect_BVALID = M00_AXI_bvalid[0];
  assign m00_couplers_to_axi_peripheral_interconnect_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_axi_peripheral_interconnect_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_peripheral_interconnect_RVALID = M00_AXI_rvalid[0];
  assign m00_couplers_to_axi_peripheral_interconnect_WREADY = M00_AXI_wready[0];
  assign m01_couplers_to_axi_peripheral_interconnect_ARREADY = M01_AXI_arready[0];
  assign m01_couplers_to_axi_peripheral_interconnect_AWREADY = M01_AXI_awready[0];
  assign m01_couplers_to_axi_peripheral_interconnect_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_axi_peripheral_interconnect_BVALID = M01_AXI_bvalid[0];
  assign m01_couplers_to_axi_peripheral_interconnect_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_axi_peripheral_interconnect_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_axi_peripheral_interconnect_RVALID = M01_AXI_rvalid[0];
  assign m01_couplers_to_axi_peripheral_interconnect_WREADY = M01_AXI_wready[0];
  assign m02_couplers_to_axi_peripheral_interconnect_ARREADY = M02_AXI_arready[0];
  assign m02_couplers_to_axi_peripheral_interconnect_AWREADY = M02_AXI_awready[0];
  assign m02_couplers_to_axi_peripheral_interconnect_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_axi_peripheral_interconnect_BVALID = M02_AXI_bvalid[0];
  assign m02_couplers_to_axi_peripheral_interconnect_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_axi_peripheral_interconnect_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_axi_peripheral_interconnect_RVALID = M02_AXI_rvalid[0];
  assign m02_couplers_to_axi_peripheral_interconnect_WREADY = M02_AXI_wready[0];
  assign m03_couplers_to_axi_peripheral_interconnect_ARREADY = M03_AXI_arready[0];
  assign m03_couplers_to_axi_peripheral_interconnect_AWREADY = M03_AXI_awready[0];
  assign m03_couplers_to_axi_peripheral_interconnect_BRESP = M03_AXI_bresp[1:0];
  assign m03_couplers_to_axi_peripheral_interconnect_BVALID = M03_AXI_bvalid[0];
  assign m03_couplers_to_axi_peripheral_interconnect_RDATA = M03_AXI_rdata[31:0];
  assign m03_couplers_to_axi_peripheral_interconnect_RRESP = M03_AXI_rresp[1:0];
  assign m03_couplers_to_axi_peripheral_interconnect_RVALID = M03_AXI_rvalid[0];
  assign m03_couplers_to_axi_peripheral_interconnect_WREADY = M03_AXI_wready[0];
  assign m04_couplers_to_axi_peripheral_interconnect_ARREADY = M04_AXI_arready[0];
  assign m04_couplers_to_axi_peripheral_interconnect_AWREADY = M04_AXI_awready[0];
  assign m04_couplers_to_axi_peripheral_interconnect_BRESP = M04_AXI_bresp[1:0];
  assign m04_couplers_to_axi_peripheral_interconnect_BVALID = M04_AXI_bvalid[0];
  assign m04_couplers_to_axi_peripheral_interconnect_RDATA = M04_AXI_rdata[31:0];
  assign m04_couplers_to_axi_peripheral_interconnect_RRESP = M04_AXI_rresp[1:0];
  assign m04_couplers_to_axi_peripheral_interconnect_RVALID = M04_AXI_rvalid[0];
  assign m04_couplers_to_axi_peripheral_interconnect_WREADY = M04_AXI_wready[0];
  assign m05_couplers_to_axi_peripheral_interconnect_ARREADY = M05_AXI_arready;
  assign m05_couplers_to_axi_peripheral_interconnect_AWREADY = M05_AXI_awready;
  assign m05_couplers_to_axi_peripheral_interconnect_BRESP = M05_AXI_bresp[1:0];
  assign m05_couplers_to_axi_peripheral_interconnect_BVALID = M05_AXI_bvalid;
  assign m05_couplers_to_axi_peripheral_interconnect_RDATA = M05_AXI_rdata[31:0];
  assign m05_couplers_to_axi_peripheral_interconnect_RRESP = M05_AXI_rresp[1:0];
  assign m05_couplers_to_axi_peripheral_interconnect_RVALID = M05_AXI_rvalid;
  assign m05_couplers_to_axi_peripheral_interconnect_WREADY = M05_AXI_wready;
  assign m06_couplers_to_axi_peripheral_interconnect_ARREADY = M06_AXI_arready;
  assign m06_couplers_to_axi_peripheral_interconnect_AWREADY = M06_AXI_awready;
  assign m06_couplers_to_axi_peripheral_interconnect_BRESP = M06_AXI_bresp[1:0];
  assign m06_couplers_to_axi_peripheral_interconnect_BVALID = M06_AXI_bvalid;
  assign m06_couplers_to_axi_peripheral_interconnect_RDATA = M06_AXI_rdata[31:0];
  assign m06_couplers_to_axi_peripheral_interconnect_RRESP = M06_AXI_rresp[1:0];
  assign m06_couplers_to_axi_peripheral_interconnect_RVALID = M06_AXI_rvalid;
  assign m06_couplers_to_axi_peripheral_interconnect_WREADY = M06_AXI_wready;
  assign m07_couplers_to_axi_peripheral_interconnect_ARREADY = M07_AXI_arready;
  assign m07_couplers_to_axi_peripheral_interconnect_AWREADY = M07_AXI_awready;
  assign m07_couplers_to_axi_peripheral_interconnect_BRESP = M07_AXI_bresp[1:0];
  assign m07_couplers_to_axi_peripheral_interconnect_BVALID = M07_AXI_bvalid;
  assign m07_couplers_to_axi_peripheral_interconnect_RDATA = M07_AXI_rdata[31:0];
  assign m07_couplers_to_axi_peripheral_interconnect_RRESP = M07_AXI_rresp[1:0];
  assign m07_couplers_to_axi_peripheral_interconnect_RVALID = M07_AXI_rvalid;
  assign m07_couplers_to_axi_peripheral_interconnect_WREADY = M07_AXI_wready;
  assign m08_couplers_to_axi_peripheral_interconnect_ARREADY = M08_AXI_arready[0];
  assign m08_couplers_to_axi_peripheral_interconnect_AWREADY = M08_AXI_awready[0];
  assign m08_couplers_to_axi_peripheral_interconnect_BRESP = M08_AXI_bresp[1:0];
  assign m08_couplers_to_axi_peripheral_interconnect_BVALID = M08_AXI_bvalid[0];
  assign m08_couplers_to_axi_peripheral_interconnect_RDATA = M08_AXI_rdata[31:0];
  assign m08_couplers_to_axi_peripheral_interconnect_RRESP = M08_AXI_rresp[1:0];
  assign m08_couplers_to_axi_peripheral_interconnect_RVALID = M08_AXI_rvalid[0];
  assign m08_couplers_to_axi_peripheral_interconnect_WREADY = M08_AXI_wready[0];
  assign m09_couplers_to_axi_peripheral_interconnect_ARREADY = M09_AXI_arready[0];
  assign m09_couplers_to_axi_peripheral_interconnect_AWREADY = M09_AXI_awready[0];
  assign m09_couplers_to_axi_peripheral_interconnect_BRESP = M09_AXI_bresp[1:0];
  assign m09_couplers_to_axi_peripheral_interconnect_BVALID = M09_AXI_bvalid[0];
  assign m09_couplers_to_axi_peripheral_interconnect_RDATA = M09_AXI_rdata[31:0];
  assign m09_couplers_to_axi_peripheral_interconnect_RRESP = M09_AXI_rresp[1:0];
  assign m09_couplers_to_axi_peripheral_interconnect_RVALID = M09_AXI_rvalid[0];
  assign m09_couplers_to_axi_peripheral_interconnect_WREADY = M09_AXI_wready[0];
  assign m10_couplers_to_axi_peripheral_interconnect_ARREADY = M10_AXI_arready[0];
  assign m10_couplers_to_axi_peripheral_interconnect_AWREADY = M10_AXI_awready[0];
  assign m10_couplers_to_axi_peripheral_interconnect_BRESP = M10_AXI_bresp[1:0];
  assign m10_couplers_to_axi_peripheral_interconnect_BVALID = M10_AXI_bvalid[0];
  assign m10_couplers_to_axi_peripheral_interconnect_RDATA = M10_AXI_rdata[31:0];
  assign m10_couplers_to_axi_peripheral_interconnect_RRESP = M10_AXI_rresp[1:0];
  assign m10_couplers_to_axi_peripheral_interconnect_RVALID = M10_AXI_rvalid[0];
  assign m10_couplers_to_axi_peripheral_interconnect_WREADY = M10_AXI_wready[0];
  assign m11_couplers_to_axi_peripheral_interconnect_ARREADY = M11_AXI_arready;
  assign m11_couplers_to_axi_peripheral_interconnect_AWREADY = M11_AXI_awready;
  assign m11_couplers_to_axi_peripheral_interconnect_BRESP = M11_AXI_bresp[1:0];
  assign m11_couplers_to_axi_peripheral_interconnect_BVALID = M11_AXI_bvalid;
  assign m11_couplers_to_axi_peripheral_interconnect_RDATA = M11_AXI_rdata[31:0];
  assign m11_couplers_to_axi_peripheral_interconnect_RRESP = M11_AXI_rresp[1:0];
  assign m11_couplers_to_axi_peripheral_interconnect_RVALID = M11_AXI_rvalid;
  assign m11_couplers_to_axi_peripheral_interconnect_WREADY = M11_AXI_wready;
  assign m12_couplers_to_axi_peripheral_interconnect_ARREADY = M12_AXI_arready;
  assign m12_couplers_to_axi_peripheral_interconnect_AWREADY = M12_AXI_awready;
  assign m12_couplers_to_axi_peripheral_interconnect_BRESP = M12_AXI_bresp[1:0];
  assign m12_couplers_to_axi_peripheral_interconnect_BVALID = M12_AXI_bvalid;
  assign m12_couplers_to_axi_peripheral_interconnect_RDATA = M12_AXI_rdata[31:0];
  assign m12_couplers_to_axi_peripheral_interconnect_RRESP = M12_AXI_rresp[1:0];
  assign m12_couplers_to_axi_peripheral_interconnect_RVALID = M12_AXI_rvalid;
  assign m12_couplers_to_axi_peripheral_interconnect_WREADY = M12_AXI_wready;
  assign m13_couplers_to_axi_peripheral_interconnect_ARREADY = M13_AXI_arready;
  assign m13_couplers_to_axi_peripheral_interconnect_AWREADY = M13_AXI_awready;
  assign m13_couplers_to_axi_peripheral_interconnect_BRESP = M13_AXI_bresp[1:0];
  assign m13_couplers_to_axi_peripheral_interconnect_BVALID = M13_AXI_bvalid;
  assign m13_couplers_to_axi_peripheral_interconnect_RDATA = M13_AXI_rdata[31:0];
  assign m13_couplers_to_axi_peripheral_interconnect_RRESP = M13_AXI_rresp[1:0];
  assign m13_couplers_to_axi_peripheral_interconnect_RVALID = M13_AXI_rvalid;
  assign m13_couplers_to_axi_peripheral_interconnect_WREADY = M13_AXI_wready;
  assign m14_couplers_to_axi_peripheral_interconnect_ARREADY = M14_AXI_arready;
  assign m14_couplers_to_axi_peripheral_interconnect_AWREADY = M14_AXI_awready;
  assign m14_couplers_to_axi_peripheral_interconnect_BRESP = M14_AXI_bresp[1:0];
  assign m14_couplers_to_axi_peripheral_interconnect_BVALID = M14_AXI_bvalid;
  assign m14_couplers_to_axi_peripheral_interconnect_RDATA = M14_AXI_rdata[31:0];
  assign m14_couplers_to_axi_peripheral_interconnect_RRESP = M14_AXI_rresp[1:0];
  assign m14_couplers_to_axi_peripheral_interconnect_RVALID = M14_AXI_rvalid;
  assign m14_couplers_to_axi_peripheral_interconnect_WREADY = M14_AXI_wready;
  m00_couplers_imp_10RPYAB m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_axi_peripheral_interconnect_ARADDR),
        .M_AXI_arprot(m00_couplers_to_axi_peripheral_interconnect_ARPROT),
        .M_AXI_arready(m00_couplers_to_axi_peripheral_interconnect_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_axi_peripheral_interconnect_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_peripheral_interconnect_AWADDR),
        .M_AXI_awprot(m00_couplers_to_axi_peripheral_interconnect_AWPROT),
        .M_AXI_awready(m00_couplers_to_axi_peripheral_interconnect_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_axi_peripheral_interconnect_AWVALID),
        .M_AXI_bready(m00_couplers_to_axi_peripheral_interconnect_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_peripheral_interconnect_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_peripheral_interconnect_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_peripheral_interconnect_RDATA),
        .M_AXI_rready(m00_couplers_to_axi_peripheral_interconnect_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_peripheral_interconnect_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_peripheral_interconnect_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_peripheral_interconnect_WDATA),
        .M_AXI_wready(m00_couplers_to_axi_peripheral_interconnect_WREADY),
        .M_AXI_wstrb(m00_couplers_to_axi_peripheral_interconnect_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_axi_peripheral_interconnect_WVALID),
        .S_ACLK(axi_peripheral_interconnect_ACLK_net),
        .S_ARESETN(axi_peripheral_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_TX6TYQ m01_couplers
       (.M_ACLK(M01_ACLK_1),
        .M_ARESETN(M01_ARESETN_1),
        .M_AXI_araddr(m01_couplers_to_axi_peripheral_interconnect_ARADDR),
        .M_AXI_arprot(m01_couplers_to_axi_peripheral_interconnect_ARPROT),
        .M_AXI_arready(m01_couplers_to_axi_peripheral_interconnect_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_axi_peripheral_interconnect_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_axi_peripheral_interconnect_AWADDR),
        .M_AXI_awprot(m01_couplers_to_axi_peripheral_interconnect_AWPROT),
        .M_AXI_awready(m01_couplers_to_axi_peripheral_interconnect_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_axi_peripheral_interconnect_AWVALID),
        .M_AXI_bready(m01_couplers_to_axi_peripheral_interconnect_BREADY),
        .M_AXI_bresp(m01_couplers_to_axi_peripheral_interconnect_BRESP),
        .M_AXI_bvalid(m01_couplers_to_axi_peripheral_interconnect_BVALID),
        .M_AXI_rdata(m01_couplers_to_axi_peripheral_interconnect_RDATA),
        .M_AXI_rready(m01_couplers_to_axi_peripheral_interconnect_RREADY),
        .M_AXI_rresp(m01_couplers_to_axi_peripheral_interconnect_RRESP),
        .M_AXI_rvalid(m01_couplers_to_axi_peripheral_interconnect_RVALID),
        .M_AXI_wdata(m01_couplers_to_axi_peripheral_interconnect_WDATA),
        .M_AXI_wready(m01_couplers_to_axi_peripheral_interconnect_WREADY),
        .M_AXI_wstrb(m01_couplers_to_axi_peripheral_interconnect_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_axi_peripheral_interconnect_WVALID),
        .S_ACLK(axi_peripheral_interconnect_ACLK_net),
        .S_ARESETN(axi_peripheral_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m01_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m01_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  m02_couplers_imp_ZVQPN4 m02_couplers
       (.M_ACLK(M02_ACLK_1),
        .M_ARESETN(M02_ARESETN_1),
        .M_AXI_araddr(m02_couplers_to_axi_peripheral_interconnect_ARADDR),
        .M_AXI_arprot(m02_couplers_to_axi_peripheral_interconnect_ARPROT),
        .M_AXI_arready(m02_couplers_to_axi_peripheral_interconnect_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_axi_peripheral_interconnect_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_axi_peripheral_interconnect_AWADDR),
        .M_AXI_awprot(m02_couplers_to_axi_peripheral_interconnect_AWPROT),
        .M_AXI_awready(m02_couplers_to_axi_peripheral_interconnect_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_axi_peripheral_interconnect_AWVALID),
        .M_AXI_bready(m02_couplers_to_axi_peripheral_interconnect_BREADY),
        .M_AXI_bresp(m02_couplers_to_axi_peripheral_interconnect_BRESP),
        .M_AXI_bvalid(m02_couplers_to_axi_peripheral_interconnect_BVALID),
        .M_AXI_rdata(m02_couplers_to_axi_peripheral_interconnect_RDATA),
        .M_AXI_rready(m02_couplers_to_axi_peripheral_interconnect_RREADY),
        .M_AXI_rresp(m02_couplers_to_axi_peripheral_interconnect_RRESP),
        .M_AXI_rvalid(m02_couplers_to_axi_peripheral_interconnect_RVALID),
        .M_AXI_wdata(m02_couplers_to_axi_peripheral_interconnect_WDATA),
        .M_AXI_wready(m02_couplers_to_axi_peripheral_interconnect_WREADY),
        .M_AXI_wstrb(m02_couplers_to_axi_peripheral_interconnect_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_axi_peripheral_interconnect_WVALID),
        .S_ACLK(axi_peripheral_interconnect_ACLK_net),
        .S_ARESETN(axi_peripheral_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m02_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m02_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
  m03_couplers_imp_UIW1IP m03_couplers
       (.M_ACLK(M03_ACLK_1),
        .M_ARESETN(M03_ARESETN_1),
        .M_AXI_araddr(m03_couplers_to_axi_peripheral_interconnect_ARADDR),
        .M_AXI_arready(m03_couplers_to_axi_peripheral_interconnect_ARREADY),
        .M_AXI_arvalid(m03_couplers_to_axi_peripheral_interconnect_ARVALID),
        .M_AXI_awaddr(m03_couplers_to_axi_peripheral_interconnect_AWADDR),
        .M_AXI_awready(m03_couplers_to_axi_peripheral_interconnect_AWREADY),
        .M_AXI_awvalid(m03_couplers_to_axi_peripheral_interconnect_AWVALID),
        .M_AXI_bready(m03_couplers_to_axi_peripheral_interconnect_BREADY),
        .M_AXI_bresp(m03_couplers_to_axi_peripheral_interconnect_BRESP),
        .M_AXI_bvalid(m03_couplers_to_axi_peripheral_interconnect_BVALID),
        .M_AXI_rdata(m03_couplers_to_axi_peripheral_interconnect_RDATA),
        .M_AXI_rready(m03_couplers_to_axi_peripheral_interconnect_RREADY),
        .M_AXI_rresp(m03_couplers_to_axi_peripheral_interconnect_RRESP),
        .M_AXI_rvalid(m03_couplers_to_axi_peripheral_interconnect_RVALID),
        .M_AXI_wdata(m03_couplers_to_axi_peripheral_interconnect_WDATA),
        .M_AXI_wready(m03_couplers_to_axi_peripheral_interconnect_WREADY),
        .M_AXI_wstrb(m03_couplers_to_axi_peripheral_interconnect_WSTRB),
        .M_AXI_wvalid(m03_couplers_to_axi_peripheral_interconnect_WVALID),
        .S_ACLK(axi_peripheral_interconnect_ACLK_net),
        .S_ARESETN(axi_peripheral_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_m03_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m03_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m03_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m03_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m03_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m03_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m03_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m03_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m03_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m03_couplers_RDATA),
        .S_AXI_rready(xbar_to_m03_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m03_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m03_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m03_couplers_WDATA),
        .S_AXI_wready(xbar_to_m03_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m03_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m03_couplers_WVALID));
  m04_couplers_imp_13Q5LUD m04_couplers
       (.M_ACLK(M04_ACLK_1),
        .M_ARESETN(M04_ARESETN_1),
        .M_AXI_araddr(m04_couplers_to_axi_peripheral_interconnect_ARADDR),
        .M_AXI_arready(m04_couplers_to_axi_peripheral_interconnect_ARREADY),
        .M_AXI_arvalid(m04_couplers_to_axi_peripheral_interconnect_ARVALID),
        .M_AXI_awaddr(m04_couplers_to_axi_peripheral_interconnect_AWADDR),
        .M_AXI_awready(m04_couplers_to_axi_peripheral_interconnect_AWREADY),
        .M_AXI_awvalid(m04_couplers_to_axi_peripheral_interconnect_AWVALID),
        .M_AXI_bready(m04_couplers_to_axi_peripheral_interconnect_BREADY),
        .M_AXI_bresp(m04_couplers_to_axi_peripheral_interconnect_BRESP),
        .M_AXI_bvalid(m04_couplers_to_axi_peripheral_interconnect_BVALID),
        .M_AXI_rdata(m04_couplers_to_axi_peripheral_interconnect_RDATA),
        .M_AXI_rready(m04_couplers_to_axi_peripheral_interconnect_RREADY),
        .M_AXI_rresp(m04_couplers_to_axi_peripheral_interconnect_RRESP),
        .M_AXI_rvalid(m04_couplers_to_axi_peripheral_interconnect_RVALID),
        .M_AXI_wdata(m04_couplers_to_axi_peripheral_interconnect_WDATA),
        .M_AXI_wready(m04_couplers_to_axi_peripheral_interconnect_WREADY),
        .M_AXI_wstrb(m04_couplers_to_axi_peripheral_interconnect_WSTRB),
        .M_AXI_wvalid(m04_couplers_to_axi_peripheral_interconnect_WVALID),
        .S_ACLK(axi_peripheral_interconnect_ACLK_net),
        .S_ARESETN(axi_peripheral_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_m04_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m04_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m04_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m04_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m04_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m04_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m04_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m04_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m04_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m04_couplers_RDATA),
        .S_AXI_rready(xbar_to_m04_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m04_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m04_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m04_couplers_WDATA),
        .S_AXI_wready(xbar_to_m04_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m04_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m04_couplers_WVALID));
  m05_couplers_imp_QRWO50 m05_couplers
       (.M_ACLK(M05_ACLK_1),
        .M_ARESETN(M05_ARESETN_1),
        .M_AXI_araddr(m05_couplers_to_axi_peripheral_interconnect_ARADDR),
        .M_AXI_arready(m05_couplers_to_axi_peripheral_interconnect_ARREADY),
        .M_AXI_arvalid(m05_couplers_to_axi_peripheral_interconnect_ARVALID),
        .M_AXI_awaddr(m05_couplers_to_axi_peripheral_interconnect_AWADDR),
        .M_AXI_awready(m05_couplers_to_axi_peripheral_interconnect_AWREADY),
        .M_AXI_awvalid(m05_couplers_to_axi_peripheral_interconnect_AWVALID),
        .M_AXI_bready(m05_couplers_to_axi_peripheral_interconnect_BREADY),
        .M_AXI_bresp(m05_couplers_to_axi_peripheral_interconnect_BRESP),
        .M_AXI_bvalid(m05_couplers_to_axi_peripheral_interconnect_BVALID),
        .M_AXI_rdata(m05_couplers_to_axi_peripheral_interconnect_RDATA),
        .M_AXI_rready(m05_couplers_to_axi_peripheral_interconnect_RREADY),
        .M_AXI_rresp(m05_couplers_to_axi_peripheral_interconnect_RRESP),
        .M_AXI_rvalid(m05_couplers_to_axi_peripheral_interconnect_RVALID),
        .M_AXI_wdata(m05_couplers_to_axi_peripheral_interconnect_WDATA),
        .M_AXI_wready(m05_couplers_to_axi_peripheral_interconnect_WREADY),
        .M_AXI_wstrb(m05_couplers_to_axi_peripheral_interconnect_WSTRB),
        .M_AXI_wvalid(m05_couplers_to_axi_peripheral_interconnect_WVALID),
        .S_ACLK(axi_peripheral_interconnect_ACLK_net),
        .S_ARESETN(axi_peripheral_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_m05_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m05_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m05_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m05_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m05_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m05_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m05_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m05_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m05_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m05_couplers_RDATA),
        .S_AXI_rready(xbar_to_m05_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m05_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m05_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m05_couplers_WDATA),
        .S_AXI_wready(xbar_to_m05_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m05_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m05_couplers_WVALID));
  m06_couplers_imp_12K61CM m06_couplers
       (.M_ACLK(M06_ACLK_1),
        .M_ARESETN(M06_ARESETN_1),
        .M_AXI_araddr(m06_couplers_to_axi_peripheral_interconnect_ARADDR),
        .M_AXI_arready(m06_couplers_to_axi_peripheral_interconnect_ARREADY),
        .M_AXI_arvalid(m06_couplers_to_axi_peripheral_interconnect_ARVALID),
        .M_AXI_awaddr(m06_couplers_to_axi_peripheral_interconnect_AWADDR),
        .M_AXI_awready(m06_couplers_to_axi_peripheral_interconnect_AWREADY),
        .M_AXI_awvalid(m06_couplers_to_axi_peripheral_interconnect_AWVALID),
        .M_AXI_bready(m06_couplers_to_axi_peripheral_interconnect_BREADY),
        .M_AXI_bresp(m06_couplers_to_axi_peripheral_interconnect_BRESP),
        .M_AXI_bvalid(m06_couplers_to_axi_peripheral_interconnect_BVALID),
        .M_AXI_rdata(m06_couplers_to_axi_peripheral_interconnect_RDATA),
        .M_AXI_rready(m06_couplers_to_axi_peripheral_interconnect_RREADY),
        .M_AXI_rresp(m06_couplers_to_axi_peripheral_interconnect_RRESP),
        .M_AXI_rvalid(m06_couplers_to_axi_peripheral_interconnect_RVALID),
        .M_AXI_wdata(m06_couplers_to_axi_peripheral_interconnect_WDATA),
        .M_AXI_wready(m06_couplers_to_axi_peripheral_interconnect_WREADY),
        .M_AXI_wstrb(m06_couplers_to_axi_peripheral_interconnect_WSTRB),
        .M_AXI_wvalid(m06_couplers_to_axi_peripheral_interconnect_WVALID),
        .S_ACLK(axi_peripheral_interconnect_ACLK_net),
        .S_ARESETN(axi_peripheral_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_m06_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m06_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m06_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m06_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m06_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m06_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m06_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m06_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m06_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m06_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m06_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m06_couplers_RDATA),
        .S_AXI_rready(xbar_to_m06_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m06_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m06_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m06_couplers_WDATA),
        .S_AXI_wready(xbar_to_m06_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m06_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m06_couplers_WVALID));
  m07_couplers_imp_S7JYYF m07_couplers
       (.M_ACLK(M07_ACLK_1),
        .M_ARESETN(M07_ARESETN_1),
        .M_AXI_araddr(m07_couplers_to_axi_peripheral_interconnect_ARADDR),
        .M_AXI_arprot(m07_couplers_to_axi_peripheral_interconnect_ARPROT),
        .M_AXI_arready(m07_couplers_to_axi_peripheral_interconnect_ARREADY),
        .M_AXI_arvalid(m07_couplers_to_axi_peripheral_interconnect_ARVALID),
        .M_AXI_awaddr(m07_couplers_to_axi_peripheral_interconnect_AWADDR),
        .M_AXI_awprot(m07_couplers_to_axi_peripheral_interconnect_AWPROT),
        .M_AXI_awready(m07_couplers_to_axi_peripheral_interconnect_AWREADY),
        .M_AXI_awvalid(m07_couplers_to_axi_peripheral_interconnect_AWVALID),
        .M_AXI_bready(m07_couplers_to_axi_peripheral_interconnect_BREADY),
        .M_AXI_bresp(m07_couplers_to_axi_peripheral_interconnect_BRESP),
        .M_AXI_bvalid(m07_couplers_to_axi_peripheral_interconnect_BVALID),
        .M_AXI_rdata(m07_couplers_to_axi_peripheral_interconnect_RDATA),
        .M_AXI_rready(m07_couplers_to_axi_peripheral_interconnect_RREADY),
        .M_AXI_rresp(m07_couplers_to_axi_peripheral_interconnect_RRESP),
        .M_AXI_rvalid(m07_couplers_to_axi_peripheral_interconnect_RVALID),
        .M_AXI_wdata(m07_couplers_to_axi_peripheral_interconnect_WDATA),
        .M_AXI_wready(m07_couplers_to_axi_peripheral_interconnect_WREADY),
        .M_AXI_wstrb(m07_couplers_to_axi_peripheral_interconnect_WSTRB),
        .M_AXI_wvalid(m07_couplers_to_axi_peripheral_interconnect_WVALID),
        .S_ACLK(axi_peripheral_interconnect_ACLK_net),
        .S_ARESETN(axi_peripheral_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_m07_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m07_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m07_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m07_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m07_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m07_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m07_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m07_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m07_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m07_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m07_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m07_couplers_RDATA),
        .S_AXI_rready(xbar_to_m07_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m07_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m07_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m07_couplers_WDATA),
        .S_AXI_wready(xbar_to_m07_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m07_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m07_couplers_WVALID));
  m08_couplers_imp_150MC4F m08_couplers
       (.M_ACLK(M08_ACLK_1),
        .M_ARESETN(M08_ARESETN_1),
        .M_AXI_araddr(m08_couplers_to_axi_peripheral_interconnect_ARADDR),
        .M_AXI_arprot(m08_couplers_to_axi_peripheral_interconnect_ARPROT),
        .M_AXI_arready(m08_couplers_to_axi_peripheral_interconnect_ARREADY),
        .M_AXI_arvalid(m08_couplers_to_axi_peripheral_interconnect_ARVALID),
        .M_AXI_awaddr(m08_couplers_to_axi_peripheral_interconnect_AWADDR),
        .M_AXI_awprot(m08_couplers_to_axi_peripheral_interconnect_AWPROT),
        .M_AXI_awready(m08_couplers_to_axi_peripheral_interconnect_AWREADY),
        .M_AXI_awvalid(m08_couplers_to_axi_peripheral_interconnect_AWVALID),
        .M_AXI_bready(m08_couplers_to_axi_peripheral_interconnect_BREADY),
        .M_AXI_bresp(m08_couplers_to_axi_peripheral_interconnect_BRESP),
        .M_AXI_bvalid(m08_couplers_to_axi_peripheral_interconnect_BVALID),
        .M_AXI_rdata(m08_couplers_to_axi_peripheral_interconnect_RDATA),
        .M_AXI_rready(m08_couplers_to_axi_peripheral_interconnect_RREADY),
        .M_AXI_rresp(m08_couplers_to_axi_peripheral_interconnect_RRESP),
        .M_AXI_rvalid(m08_couplers_to_axi_peripheral_interconnect_RVALID),
        .M_AXI_wdata(m08_couplers_to_axi_peripheral_interconnect_WDATA),
        .M_AXI_wready(m08_couplers_to_axi_peripheral_interconnect_WREADY),
        .M_AXI_wstrb(m08_couplers_to_axi_peripheral_interconnect_WSTRB),
        .M_AXI_wvalid(m08_couplers_to_axi_peripheral_interconnect_WVALID),
        .S_ACLK(axi_peripheral_interconnect_ACLK_net),
        .S_ARESETN(axi_peripheral_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_m08_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m08_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m08_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m08_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m08_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m08_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m08_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m08_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m08_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m08_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m08_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m08_couplers_RDATA),
        .S_AXI_rready(xbar_to_m08_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m08_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m08_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m08_couplers_WDATA),
        .S_AXI_wready(xbar_to_m08_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m08_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m08_couplers_WVALID));
  m09_couplers_imp_YJUQF2 m09_couplers
       (.M_ACLK(M09_ACLK_1),
        .M_ARESETN(M09_ARESETN_1),
        .M_AXI_araddr(m09_couplers_to_axi_peripheral_interconnect_ARADDR),
        .M_AXI_arprot(m09_couplers_to_axi_peripheral_interconnect_ARPROT),
        .M_AXI_arready(m09_couplers_to_axi_peripheral_interconnect_ARREADY),
        .M_AXI_arvalid(m09_couplers_to_axi_peripheral_interconnect_ARVALID),
        .M_AXI_awaddr(m09_couplers_to_axi_peripheral_interconnect_AWADDR),
        .M_AXI_awprot(m09_couplers_to_axi_peripheral_interconnect_AWPROT),
        .M_AXI_awready(m09_couplers_to_axi_peripheral_interconnect_AWREADY),
        .M_AXI_awvalid(m09_couplers_to_axi_peripheral_interconnect_AWVALID),
        .M_AXI_bready(m09_couplers_to_axi_peripheral_interconnect_BREADY),
        .M_AXI_bresp(m09_couplers_to_axi_peripheral_interconnect_BRESP),
        .M_AXI_bvalid(m09_couplers_to_axi_peripheral_interconnect_BVALID),
        .M_AXI_rdata(m09_couplers_to_axi_peripheral_interconnect_RDATA),
        .M_AXI_rready(m09_couplers_to_axi_peripheral_interconnect_RREADY),
        .M_AXI_rresp(m09_couplers_to_axi_peripheral_interconnect_RRESP),
        .M_AXI_rvalid(m09_couplers_to_axi_peripheral_interconnect_RVALID),
        .M_AXI_wdata(m09_couplers_to_axi_peripheral_interconnect_WDATA),
        .M_AXI_wready(m09_couplers_to_axi_peripheral_interconnect_WREADY),
        .M_AXI_wstrb(m09_couplers_to_axi_peripheral_interconnect_WSTRB),
        .M_AXI_wvalid(m09_couplers_to_axi_peripheral_interconnect_WVALID),
        .S_ACLK(axi_peripheral_interconnect_ACLK_net),
        .S_ARESETN(axi_peripheral_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_m09_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m09_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m09_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m09_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m09_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m09_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m09_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m09_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m09_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m09_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m09_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m09_couplers_RDATA),
        .S_AXI_rready(xbar_to_m09_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m09_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m09_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m09_couplers_WDATA),
        .S_AXI_wready(xbar_to_m09_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m09_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m09_couplers_WVALID));
  m10_couplers_imp_N5305N m10_couplers
       (.M_ACLK(M10_ACLK_1),
        .M_ARESETN(M10_ARESETN_1),
        .M_AXI_araddr(m10_couplers_to_axi_peripheral_interconnect_ARADDR),
        .M_AXI_arready(m10_couplers_to_axi_peripheral_interconnect_ARREADY),
        .M_AXI_arvalid(m10_couplers_to_axi_peripheral_interconnect_ARVALID),
        .M_AXI_awaddr(m10_couplers_to_axi_peripheral_interconnect_AWADDR),
        .M_AXI_awready(m10_couplers_to_axi_peripheral_interconnect_AWREADY),
        .M_AXI_awvalid(m10_couplers_to_axi_peripheral_interconnect_AWVALID),
        .M_AXI_bready(m10_couplers_to_axi_peripheral_interconnect_BREADY),
        .M_AXI_bresp(m10_couplers_to_axi_peripheral_interconnect_BRESP),
        .M_AXI_bvalid(m10_couplers_to_axi_peripheral_interconnect_BVALID),
        .M_AXI_rdata(m10_couplers_to_axi_peripheral_interconnect_RDATA),
        .M_AXI_rready(m10_couplers_to_axi_peripheral_interconnect_RREADY),
        .M_AXI_rresp(m10_couplers_to_axi_peripheral_interconnect_RRESP),
        .M_AXI_rvalid(m10_couplers_to_axi_peripheral_interconnect_RVALID),
        .M_AXI_wdata(m10_couplers_to_axi_peripheral_interconnect_WDATA),
        .M_AXI_wready(m10_couplers_to_axi_peripheral_interconnect_WREADY),
        .M_AXI_wstrb(m10_couplers_to_axi_peripheral_interconnect_WSTRB),
        .M_AXI_wvalid(m10_couplers_to_axi_peripheral_interconnect_WVALID),
        .S_ACLK(axi_peripheral_interconnect_ACLK_net),
        .S_ARESETN(axi_peripheral_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_m10_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m10_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m10_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m10_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m10_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m10_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m10_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m10_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m10_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m10_couplers_RDATA),
        .S_AXI_rready(xbar_to_m10_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m10_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m10_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m10_couplers_WDATA),
        .S_AXI_wready(xbar_to_m10_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m10_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m10_couplers_WVALID));
  m11_couplers_imp_1G7Z3AI m11_couplers
       (.M_ACLK(M11_ACLK_1),
        .M_ARESETN(M11_ARESETN_1),
        .M_AXI_araddr(m11_couplers_to_axi_peripheral_interconnect_ARADDR),
        .M_AXI_arready(m11_couplers_to_axi_peripheral_interconnect_ARREADY),
        .M_AXI_arvalid(m11_couplers_to_axi_peripheral_interconnect_ARVALID),
        .M_AXI_awaddr(m11_couplers_to_axi_peripheral_interconnect_AWADDR),
        .M_AXI_awready(m11_couplers_to_axi_peripheral_interconnect_AWREADY),
        .M_AXI_awvalid(m11_couplers_to_axi_peripheral_interconnect_AWVALID),
        .M_AXI_bready(m11_couplers_to_axi_peripheral_interconnect_BREADY),
        .M_AXI_bresp(m11_couplers_to_axi_peripheral_interconnect_BRESP),
        .M_AXI_bvalid(m11_couplers_to_axi_peripheral_interconnect_BVALID),
        .M_AXI_rdata(m11_couplers_to_axi_peripheral_interconnect_RDATA),
        .M_AXI_rready(m11_couplers_to_axi_peripheral_interconnect_RREADY),
        .M_AXI_rresp(m11_couplers_to_axi_peripheral_interconnect_RRESP),
        .M_AXI_rvalid(m11_couplers_to_axi_peripheral_interconnect_RVALID),
        .M_AXI_wdata(m11_couplers_to_axi_peripheral_interconnect_WDATA),
        .M_AXI_wready(m11_couplers_to_axi_peripheral_interconnect_WREADY),
        .M_AXI_wstrb(m11_couplers_to_axi_peripheral_interconnect_WSTRB),
        .M_AXI_wvalid(m11_couplers_to_axi_peripheral_interconnect_WVALID),
        .S_ACLK(axi_peripheral_interconnect_ACLK_net),
        .S_ARESETN(axi_peripheral_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_m11_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m11_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m11_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m11_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m11_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m11_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m11_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m11_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m11_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m11_couplers_RDATA),
        .S_AXI_rready(xbar_to_m11_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m11_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m11_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m11_couplers_WDATA),
        .S_AXI_wready(xbar_to_m11_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m11_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m11_couplers_WVALID));
  m12_couplers_imp_O214I0 m12_couplers
       (.M_ACLK(M12_ACLK_1),
        .M_ARESETN(M12_ARESETN_1),
        .M_AXI_araddr(m12_couplers_to_axi_peripheral_interconnect_ARADDR),
        .M_AXI_arready(m12_couplers_to_axi_peripheral_interconnect_ARREADY),
        .M_AXI_arvalid(m12_couplers_to_axi_peripheral_interconnect_ARVALID),
        .M_AXI_awaddr(m12_couplers_to_axi_peripheral_interconnect_AWADDR),
        .M_AXI_awready(m12_couplers_to_axi_peripheral_interconnect_AWREADY),
        .M_AXI_awvalid(m12_couplers_to_axi_peripheral_interconnect_AWVALID),
        .M_AXI_bready(m12_couplers_to_axi_peripheral_interconnect_BREADY),
        .M_AXI_bresp(m12_couplers_to_axi_peripheral_interconnect_BRESP),
        .M_AXI_bvalid(m12_couplers_to_axi_peripheral_interconnect_BVALID),
        .M_AXI_rdata(m12_couplers_to_axi_peripheral_interconnect_RDATA),
        .M_AXI_rready(m12_couplers_to_axi_peripheral_interconnect_RREADY),
        .M_AXI_rresp(m12_couplers_to_axi_peripheral_interconnect_RRESP),
        .M_AXI_rvalid(m12_couplers_to_axi_peripheral_interconnect_RVALID),
        .M_AXI_wdata(m12_couplers_to_axi_peripheral_interconnect_WDATA),
        .M_AXI_wready(m12_couplers_to_axi_peripheral_interconnect_WREADY),
        .M_AXI_wstrb(m12_couplers_to_axi_peripheral_interconnect_WSTRB),
        .M_AXI_wvalid(m12_couplers_to_axi_peripheral_interconnect_WVALID),
        .S_ACLK(axi_peripheral_interconnect_ACLK_net),
        .S_ARESETN(axi_peripheral_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_m12_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m12_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m12_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m12_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m12_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m12_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m12_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m12_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m12_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m12_couplers_RDATA),
        .S_AXI_rready(xbar_to_m12_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m12_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m12_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m12_couplers_WDATA),
        .S_AXI_wready(xbar_to_m12_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m12_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m12_couplers_WVALID));
  m13_couplers_imp_1FKQ4MH m13_couplers
       (.M_ACLK(M13_ACLK_1),
        .M_ARESETN(M13_ARESETN_1),
        .M_AXI_araddr(m13_couplers_to_axi_peripheral_interconnect_ARADDR),
        .M_AXI_arready(m13_couplers_to_axi_peripheral_interconnect_ARREADY),
        .M_AXI_arvalid(m13_couplers_to_axi_peripheral_interconnect_ARVALID),
        .M_AXI_awaddr(m13_couplers_to_axi_peripheral_interconnect_AWADDR),
        .M_AXI_awready(m13_couplers_to_axi_peripheral_interconnect_AWREADY),
        .M_AXI_awvalid(m13_couplers_to_axi_peripheral_interconnect_AWVALID),
        .M_AXI_bready(m13_couplers_to_axi_peripheral_interconnect_BREADY),
        .M_AXI_bresp(m13_couplers_to_axi_peripheral_interconnect_BRESP),
        .M_AXI_bvalid(m13_couplers_to_axi_peripheral_interconnect_BVALID),
        .M_AXI_rdata(m13_couplers_to_axi_peripheral_interconnect_RDATA),
        .M_AXI_rready(m13_couplers_to_axi_peripheral_interconnect_RREADY),
        .M_AXI_rresp(m13_couplers_to_axi_peripheral_interconnect_RRESP),
        .M_AXI_rvalid(m13_couplers_to_axi_peripheral_interconnect_RVALID),
        .M_AXI_wdata(m13_couplers_to_axi_peripheral_interconnect_WDATA),
        .M_AXI_wready(m13_couplers_to_axi_peripheral_interconnect_WREADY),
        .M_AXI_wstrb(m13_couplers_to_axi_peripheral_interconnect_WSTRB),
        .M_AXI_wvalid(m13_couplers_to_axi_peripheral_interconnect_WVALID),
        .S_ACLK(axi_peripheral_interconnect_ACLK_net),
        .S_ARESETN(axi_peripheral_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_m13_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m13_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m13_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m13_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m13_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m13_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m13_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m13_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m13_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m13_couplers_RDATA),
        .S_AXI_rready(xbar_to_m13_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m13_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m13_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m13_couplers_WDATA),
        .S_AXI_wready(xbar_to_m13_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m13_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m13_couplers_WVALID));
  m14_couplers_imp_ON470T m14_couplers
       (.M_ACLK(M14_ACLK_1),
        .M_ARESETN(M14_ARESETN_1),
        .M_AXI_araddr(m14_couplers_to_axi_peripheral_interconnect_ARADDR),
        .M_AXI_arready(m14_couplers_to_axi_peripheral_interconnect_ARREADY),
        .M_AXI_arvalid(m14_couplers_to_axi_peripheral_interconnect_ARVALID),
        .M_AXI_awaddr(m14_couplers_to_axi_peripheral_interconnect_AWADDR),
        .M_AXI_awready(m14_couplers_to_axi_peripheral_interconnect_AWREADY),
        .M_AXI_awvalid(m14_couplers_to_axi_peripheral_interconnect_AWVALID),
        .M_AXI_bready(m14_couplers_to_axi_peripheral_interconnect_BREADY),
        .M_AXI_bresp(m14_couplers_to_axi_peripheral_interconnect_BRESP),
        .M_AXI_bvalid(m14_couplers_to_axi_peripheral_interconnect_BVALID),
        .M_AXI_rdata(m14_couplers_to_axi_peripheral_interconnect_RDATA),
        .M_AXI_rready(m14_couplers_to_axi_peripheral_interconnect_RREADY),
        .M_AXI_rresp(m14_couplers_to_axi_peripheral_interconnect_RRESP),
        .M_AXI_rvalid(m14_couplers_to_axi_peripheral_interconnect_RVALID),
        .M_AXI_wdata(m14_couplers_to_axi_peripheral_interconnect_WDATA),
        .M_AXI_wready(m14_couplers_to_axi_peripheral_interconnect_WREADY),
        .M_AXI_wstrb(m14_couplers_to_axi_peripheral_interconnect_WSTRB),
        .M_AXI_wvalid(m14_couplers_to_axi_peripheral_interconnect_WVALID),
        .S_ACLK(axi_peripheral_interconnect_ACLK_net),
        .S_ARESETN(axi_peripheral_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_m14_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m14_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m14_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m14_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m14_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m14_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m14_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m14_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m14_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m14_couplers_RDATA),
        .S_AXI_rready(xbar_to_m14_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m14_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m14_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m14_couplers_WDATA),
        .S_AXI_wready(xbar_to_m14_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m14_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m14_couplers_WVALID));
  s00_couplers_imp_YVWGWH s00_couplers
       (.M_ACLK(axi_peripheral_interconnect_ACLK_net),
        .M_ARESETN(axi_peripheral_interconnect_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(axi_peripheral_interconnect_to_s00_couplers_ARADDR),
        .S_AXI_arprot(axi_peripheral_interconnect_to_s00_couplers_ARPROT),
        .S_AXI_arready(axi_peripheral_interconnect_to_s00_couplers_ARREADY),
        .S_AXI_arvalid(axi_peripheral_interconnect_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_peripheral_interconnect_to_s00_couplers_AWADDR),
        .S_AXI_awprot(axi_peripheral_interconnect_to_s00_couplers_AWPROT),
        .S_AXI_awready(axi_peripheral_interconnect_to_s00_couplers_AWREADY),
        .S_AXI_awvalid(axi_peripheral_interconnect_to_s00_couplers_AWVALID),
        .S_AXI_bready(axi_peripheral_interconnect_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_peripheral_interconnect_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_peripheral_interconnect_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_peripheral_interconnect_to_s00_couplers_RDATA),
        .S_AXI_rready(axi_peripheral_interconnect_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_peripheral_interconnect_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_peripheral_interconnect_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_peripheral_interconnect_to_s00_couplers_WDATA),
        .S_AXI_wready(axi_peripheral_interconnect_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_peripheral_interconnect_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_peripheral_interconnect_to_s00_couplers_WVALID));
  icyradio_xbar_8 xbar
       (.aclk(axi_peripheral_interconnect_ACLK_net),
        .aresetn(axi_peripheral_interconnect_ARESETN_net),
        .m_axi_araddr({xbar_to_m14_couplers_ARADDR,xbar_to_m13_couplers_ARADDR,xbar_to_m12_couplers_ARADDR,xbar_to_m11_couplers_ARADDR,xbar_to_m10_couplers_ARADDR,xbar_to_m09_couplers_ARADDR,xbar_to_m08_couplers_ARADDR,xbar_to_m07_couplers_ARADDR,xbar_to_m06_couplers_ARADDR,xbar_to_m05_couplers_ARADDR,xbar_to_m04_couplers_ARADDR,xbar_to_m03_couplers_ARADDR,xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arprot({xbar_to_m09_couplers_ARPROT,xbar_to_m08_couplers_ARPROT,xbar_to_m07_couplers_ARPROT,xbar_to_m06_couplers_ARPROT,NLW_xbar_m_axi_arprot_UNCONNECTED[17:9],xbar_to_m02_couplers_ARPROT,xbar_to_m01_couplers_ARPROT,xbar_to_m00_couplers_ARPROT}),
        .m_axi_arready({xbar_to_m14_couplers_ARREADY,xbar_to_m13_couplers_ARREADY,xbar_to_m12_couplers_ARREADY,xbar_to_m11_couplers_ARREADY,xbar_to_m10_couplers_ARREADY,xbar_to_m09_couplers_ARREADY,xbar_to_m08_couplers_ARREADY,xbar_to_m07_couplers_ARREADY,xbar_to_m06_couplers_ARREADY,xbar_to_m05_couplers_ARREADY,xbar_to_m04_couplers_ARREADY,xbar_to_m03_couplers_ARREADY,xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m14_couplers_ARVALID,xbar_to_m13_couplers_ARVALID,xbar_to_m12_couplers_ARVALID,xbar_to_m11_couplers_ARVALID,xbar_to_m10_couplers_ARVALID,xbar_to_m09_couplers_ARVALID,xbar_to_m08_couplers_ARVALID,xbar_to_m07_couplers_ARVALID,xbar_to_m06_couplers_ARVALID,xbar_to_m05_couplers_ARVALID,xbar_to_m04_couplers_ARVALID,xbar_to_m03_couplers_ARVALID,xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m14_couplers_AWADDR,xbar_to_m13_couplers_AWADDR,xbar_to_m12_couplers_AWADDR,xbar_to_m11_couplers_AWADDR,xbar_to_m10_couplers_AWADDR,xbar_to_m09_couplers_AWADDR,xbar_to_m08_couplers_AWADDR,xbar_to_m07_couplers_AWADDR,xbar_to_m06_couplers_AWADDR,xbar_to_m05_couplers_AWADDR,xbar_to_m04_couplers_AWADDR,xbar_to_m03_couplers_AWADDR,xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awprot({xbar_to_m09_couplers_AWPROT,xbar_to_m08_couplers_AWPROT,xbar_to_m07_couplers_AWPROT,xbar_to_m06_couplers_AWPROT,NLW_xbar_m_axi_awprot_UNCONNECTED[17:9],xbar_to_m02_couplers_AWPROT,xbar_to_m01_couplers_AWPROT,xbar_to_m00_couplers_AWPROT}),
        .m_axi_awready({xbar_to_m14_couplers_AWREADY,xbar_to_m13_couplers_AWREADY,xbar_to_m12_couplers_AWREADY,xbar_to_m11_couplers_AWREADY,xbar_to_m10_couplers_AWREADY,xbar_to_m09_couplers_AWREADY,xbar_to_m08_couplers_AWREADY,xbar_to_m07_couplers_AWREADY,xbar_to_m06_couplers_AWREADY,xbar_to_m05_couplers_AWREADY,xbar_to_m04_couplers_AWREADY,xbar_to_m03_couplers_AWREADY,xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m14_couplers_AWVALID,xbar_to_m13_couplers_AWVALID,xbar_to_m12_couplers_AWVALID,xbar_to_m11_couplers_AWVALID,xbar_to_m10_couplers_AWVALID,xbar_to_m09_couplers_AWVALID,xbar_to_m08_couplers_AWVALID,xbar_to_m07_couplers_AWVALID,xbar_to_m06_couplers_AWVALID,xbar_to_m05_couplers_AWVALID,xbar_to_m04_couplers_AWVALID,xbar_to_m03_couplers_AWVALID,xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m14_couplers_BREADY,xbar_to_m13_couplers_BREADY,xbar_to_m12_couplers_BREADY,xbar_to_m11_couplers_BREADY,xbar_to_m10_couplers_BREADY,xbar_to_m09_couplers_BREADY,xbar_to_m08_couplers_BREADY,xbar_to_m07_couplers_BREADY,xbar_to_m06_couplers_BREADY,xbar_to_m05_couplers_BREADY,xbar_to_m04_couplers_BREADY,xbar_to_m03_couplers_BREADY,xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m14_couplers_BRESP,xbar_to_m13_couplers_BRESP,xbar_to_m12_couplers_BRESP,xbar_to_m11_couplers_BRESP,xbar_to_m10_couplers_BRESP,xbar_to_m09_couplers_BRESP,xbar_to_m08_couplers_BRESP,xbar_to_m07_couplers_BRESP,xbar_to_m06_couplers_BRESP,xbar_to_m05_couplers_BRESP,xbar_to_m04_couplers_BRESP,xbar_to_m03_couplers_BRESP,xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m14_couplers_BVALID,xbar_to_m13_couplers_BVALID,xbar_to_m12_couplers_BVALID,xbar_to_m11_couplers_BVALID,xbar_to_m10_couplers_BVALID,xbar_to_m09_couplers_BVALID,xbar_to_m08_couplers_BVALID,xbar_to_m07_couplers_BVALID,xbar_to_m06_couplers_BVALID,xbar_to_m05_couplers_BVALID,xbar_to_m04_couplers_BVALID,xbar_to_m03_couplers_BVALID,xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m14_couplers_RDATA,xbar_to_m13_couplers_RDATA,xbar_to_m12_couplers_RDATA,xbar_to_m11_couplers_RDATA,xbar_to_m10_couplers_RDATA,xbar_to_m09_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m05_couplers_RDATA,xbar_to_m04_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m14_couplers_RREADY,xbar_to_m13_couplers_RREADY,xbar_to_m12_couplers_RREADY,xbar_to_m11_couplers_RREADY,xbar_to_m10_couplers_RREADY,xbar_to_m09_couplers_RREADY,xbar_to_m08_couplers_RREADY,xbar_to_m07_couplers_RREADY,xbar_to_m06_couplers_RREADY,xbar_to_m05_couplers_RREADY,xbar_to_m04_couplers_RREADY,xbar_to_m03_couplers_RREADY,xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m14_couplers_RRESP,xbar_to_m13_couplers_RRESP,xbar_to_m12_couplers_RRESP,xbar_to_m11_couplers_RRESP,xbar_to_m10_couplers_RRESP,xbar_to_m09_couplers_RRESP,xbar_to_m08_couplers_RRESP,xbar_to_m07_couplers_RRESP,xbar_to_m06_couplers_RRESP,xbar_to_m05_couplers_RRESP,xbar_to_m04_couplers_RRESP,xbar_to_m03_couplers_RRESP,xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m14_couplers_RVALID,xbar_to_m13_couplers_RVALID,xbar_to_m12_couplers_RVALID,xbar_to_m11_couplers_RVALID,xbar_to_m10_couplers_RVALID,xbar_to_m09_couplers_RVALID,xbar_to_m08_couplers_RVALID,xbar_to_m07_couplers_RVALID,xbar_to_m06_couplers_RVALID,xbar_to_m05_couplers_RVALID,xbar_to_m04_couplers_RVALID,xbar_to_m03_couplers_RVALID,xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m14_couplers_WDATA,xbar_to_m13_couplers_WDATA,xbar_to_m12_couplers_WDATA,xbar_to_m11_couplers_WDATA,xbar_to_m10_couplers_WDATA,xbar_to_m09_couplers_WDATA,xbar_to_m08_couplers_WDATA,xbar_to_m07_couplers_WDATA,xbar_to_m06_couplers_WDATA,xbar_to_m05_couplers_WDATA,xbar_to_m04_couplers_WDATA,xbar_to_m03_couplers_WDATA,xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m14_couplers_WREADY,xbar_to_m13_couplers_WREADY,xbar_to_m12_couplers_WREADY,xbar_to_m11_couplers_WREADY,xbar_to_m10_couplers_WREADY,xbar_to_m09_couplers_WREADY,xbar_to_m08_couplers_WREADY,xbar_to_m07_couplers_WREADY,xbar_to_m06_couplers_WREADY,xbar_to_m05_couplers_WREADY,xbar_to_m04_couplers_WREADY,xbar_to_m03_couplers_WREADY,xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m14_couplers_WSTRB,xbar_to_m13_couplers_WSTRB,xbar_to_m12_couplers_WSTRB,xbar_to_m11_couplers_WSTRB,xbar_to_m10_couplers_WSTRB,xbar_to_m09_couplers_WSTRB,xbar_to_m08_couplers_WSTRB,xbar_to_m07_couplers_WSTRB,xbar_to_m06_couplers_WSTRB,xbar_to_m05_couplers_WSTRB,xbar_to_m04_couplers_WSTRB,xbar_to_m03_couplers_WSTRB,xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m14_couplers_WVALID,xbar_to_m13_couplers_WVALID,xbar_to_m12_couplers_WVALID,xbar_to_m11_couplers_WVALID,xbar_to_m10_couplers_WVALID,xbar_to_m09_couplers_WVALID,xbar_to_m08_couplers_WVALID,xbar_to_m07_couplers_WVALID,xbar_to_m06_couplers_WVALID,xbar_to_m05_couplers_WVALID,xbar_to_m04_couplers_WVALID,xbar_to_m03_couplers_WVALID,xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module m00_couplers_imp_10RPYAB
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m00_couplers_to_m00_couplers_ARADDR;
  wire [2:0]m00_couplers_to_m00_couplers_ARPROT;
  wire [0:0]m00_couplers_to_m00_couplers_ARREADY;
  wire [0:0]m00_couplers_to_m00_couplers_ARVALID;
  wire [31:0]m00_couplers_to_m00_couplers_AWADDR;
  wire [2:0]m00_couplers_to_m00_couplers_AWPROT;
  wire [0:0]m00_couplers_to_m00_couplers_AWREADY;
  wire [0:0]m00_couplers_to_m00_couplers_AWVALID;
  wire [0:0]m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire [0:0]m00_couplers_to_m00_couplers_BVALID;
  wire [31:0]m00_couplers_to_m00_couplers_RDATA;
  wire [0:0]m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire [0:0]m00_couplers_to_m00_couplers_RVALID;
  wire [31:0]m00_couplers_to_m00_couplers_WDATA;
  wire [0:0]m00_couplers_to_m00_couplers_WREADY;
  wire [3:0]m00_couplers_to_m00_couplers_WSTRB;
  wire [0:0]m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m00_couplers_to_m00_couplers_ARPROT;
  assign M_AXI_arvalid[0] = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m00_couplers_to_m00_couplers_AWPROT;
  assign M_AXI_awvalid[0] = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready[0] = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready[0] = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m00_couplers_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready[0] = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready[0] = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid[0] = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid[0] = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready[0] = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_m00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready[0];
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid[0];
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_m00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready[0];
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid[0];
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready[0];
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid[0];
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready[0];
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid[0];
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready[0];
  assign m00_couplers_to_m00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m00_couplers_imp_9UGDOI
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arregion,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awregion,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [3:0]M_AXI_arregion;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [3:0]M_AXI_awregion;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [3:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [3:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [3:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [63:0]S_AXI_rdata;
  output [3:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [63:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_ds_to_m00_couplers_ARADDR;
  wire [1:0]auto_ds_to_m00_couplers_ARBURST;
  wire [3:0]auto_ds_to_m00_couplers_ARCACHE;
  wire [7:0]auto_ds_to_m00_couplers_ARLEN;
  wire [0:0]auto_ds_to_m00_couplers_ARLOCK;
  wire [2:0]auto_ds_to_m00_couplers_ARPROT;
  wire [3:0]auto_ds_to_m00_couplers_ARQOS;
  wire auto_ds_to_m00_couplers_ARREADY;
  wire [3:0]auto_ds_to_m00_couplers_ARREGION;
  wire [2:0]auto_ds_to_m00_couplers_ARSIZE;
  wire auto_ds_to_m00_couplers_ARVALID;
  wire [31:0]auto_ds_to_m00_couplers_AWADDR;
  wire [1:0]auto_ds_to_m00_couplers_AWBURST;
  wire [3:0]auto_ds_to_m00_couplers_AWCACHE;
  wire [7:0]auto_ds_to_m00_couplers_AWLEN;
  wire [0:0]auto_ds_to_m00_couplers_AWLOCK;
  wire [2:0]auto_ds_to_m00_couplers_AWPROT;
  wire [3:0]auto_ds_to_m00_couplers_AWQOS;
  wire auto_ds_to_m00_couplers_AWREADY;
  wire [3:0]auto_ds_to_m00_couplers_AWREGION;
  wire [2:0]auto_ds_to_m00_couplers_AWSIZE;
  wire auto_ds_to_m00_couplers_AWVALID;
  wire auto_ds_to_m00_couplers_BREADY;
  wire [1:0]auto_ds_to_m00_couplers_BRESP;
  wire auto_ds_to_m00_couplers_BVALID;
  wire [31:0]auto_ds_to_m00_couplers_RDATA;
  wire auto_ds_to_m00_couplers_RLAST;
  wire auto_ds_to_m00_couplers_RREADY;
  wire [1:0]auto_ds_to_m00_couplers_RRESP;
  wire auto_ds_to_m00_couplers_RVALID;
  wire [31:0]auto_ds_to_m00_couplers_WDATA;
  wire auto_ds_to_m00_couplers_WLAST;
  wire auto_ds_to_m00_couplers_WREADY;
  wire [3:0]auto_ds_to_m00_couplers_WSTRB;
  wire auto_ds_to_m00_couplers_WVALID;
  wire [31:0]m00_couplers_to_auto_ds_ARADDR;
  wire [1:0]m00_couplers_to_auto_ds_ARBURST;
  wire [3:0]m00_couplers_to_auto_ds_ARCACHE;
  wire [3:0]m00_couplers_to_auto_ds_ARID;
  wire [7:0]m00_couplers_to_auto_ds_ARLEN;
  wire [0:0]m00_couplers_to_auto_ds_ARLOCK;
  wire [2:0]m00_couplers_to_auto_ds_ARPROT;
  wire [3:0]m00_couplers_to_auto_ds_ARQOS;
  wire m00_couplers_to_auto_ds_ARREADY;
  wire [3:0]m00_couplers_to_auto_ds_ARREGION;
  wire [2:0]m00_couplers_to_auto_ds_ARSIZE;
  wire m00_couplers_to_auto_ds_ARVALID;
  wire [31:0]m00_couplers_to_auto_ds_AWADDR;
  wire [1:0]m00_couplers_to_auto_ds_AWBURST;
  wire [3:0]m00_couplers_to_auto_ds_AWCACHE;
  wire [3:0]m00_couplers_to_auto_ds_AWID;
  wire [7:0]m00_couplers_to_auto_ds_AWLEN;
  wire [0:0]m00_couplers_to_auto_ds_AWLOCK;
  wire [2:0]m00_couplers_to_auto_ds_AWPROT;
  wire [3:0]m00_couplers_to_auto_ds_AWQOS;
  wire m00_couplers_to_auto_ds_AWREADY;
  wire [3:0]m00_couplers_to_auto_ds_AWREGION;
  wire [2:0]m00_couplers_to_auto_ds_AWSIZE;
  wire m00_couplers_to_auto_ds_AWVALID;
  wire [3:0]m00_couplers_to_auto_ds_BID;
  wire m00_couplers_to_auto_ds_BREADY;
  wire [1:0]m00_couplers_to_auto_ds_BRESP;
  wire m00_couplers_to_auto_ds_BVALID;
  wire [63:0]m00_couplers_to_auto_ds_RDATA;
  wire [3:0]m00_couplers_to_auto_ds_RID;
  wire m00_couplers_to_auto_ds_RLAST;
  wire m00_couplers_to_auto_ds_RREADY;
  wire [1:0]m00_couplers_to_auto_ds_RRESP;
  wire m00_couplers_to_auto_ds_RVALID;
  wire [63:0]m00_couplers_to_auto_ds_WDATA;
  wire m00_couplers_to_auto_ds_WLAST;
  wire m00_couplers_to_auto_ds_WREADY;
  wire [7:0]m00_couplers_to_auto_ds_WSTRB;
  wire m00_couplers_to_auto_ds_WVALID;

  assign M_AXI_araddr[31:0] = auto_ds_to_m00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_ds_to_m00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_ds_to_m00_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_ds_to_m00_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_ds_to_m00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_ds_to_m00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_ds_to_m00_couplers_ARQOS;
  assign M_AXI_arregion[3:0] = auto_ds_to_m00_couplers_ARREGION;
  assign M_AXI_arsize[2:0] = auto_ds_to_m00_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_ds_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_ds_to_m00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_ds_to_m00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_ds_to_m00_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_ds_to_m00_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_ds_to_m00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_ds_to_m00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_ds_to_m00_couplers_AWQOS;
  assign M_AXI_awregion[3:0] = auto_ds_to_m00_couplers_AWREGION;
  assign M_AXI_awsize[2:0] = auto_ds_to_m00_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_ds_to_m00_couplers_AWVALID;
  assign M_AXI_bready = auto_ds_to_m00_couplers_BREADY;
  assign M_AXI_rready = auto_ds_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_ds_to_m00_couplers_WDATA;
  assign M_AXI_wlast = auto_ds_to_m00_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = auto_ds_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_ds_to_m00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m00_couplers_to_auto_ds_ARREADY;
  assign S_AXI_awready = m00_couplers_to_auto_ds_AWREADY;
  assign S_AXI_bid[3:0] = m00_couplers_to_auto_ds_BID;
  assign S_AXI_bresp[1:0] = m00_couplers_to_auto_ds_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_auto_ds_BVALID;
  assign S_AXI_rdata[63:0] = m00_couplers_to_auto_ds_RDATA;
  assign S_AXI_rid[3:0] = m00_couplers_to_auto_ds_RID;
  assign S_AXI_rlast = m00_couplers_to_auto_ds_RLAST;
  assign S_AXI_rresp[1:0] = m00_couplers_to_auto_ds_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_auto_ds_RVALID;
  assign S_AXI_wready = m00_couplers_to_auto_ds_WREADY;
  assign auto_ds_to_m00_couplers_ARREADY = M_AXI_arready;
  assign auto_ds_to_m00_couplers_AWREADY = M_AXI_awready;
  assign auto_ds_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_ds_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign auto_ds_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_ds_to_m00_couplers_RLAST = M_AXI_rlast;
  assign auto_ds_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_ds_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign auto_ds_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_auto_ds_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_auto_ds_ARBURST = S_AXI_arburst[1:0];
  assign m00_couplers_to_auto_ds_ARCACHE = S_AXI_arcache[3:0];
  assign m00_couplers_to_auto_ds_ARID = S_AXI_arid[3:0];
  assign m00_couplers_to_auto_ds_ARLEN = S_AXI_arlen[7:0];
  assign m00_couplers_to_auto_ds_ARLOCK = S_AXI_arlock[0];
  assign m00_couplers_to_auto_ds_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_auto_ds_ARQOS = S_AXI_arqos[3:0];
  assign m00_couplers_to_auto_ds_ARREGION = S_AXI_arregion[3:0];
  assign m00_couplers_to_auto_ds_ARSIZE = S_AXI_arsize[2:0];
  assign m00_couplers_to_auto_ds_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_auto_ds_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_auto_ds_AWBURST = S_AXI_awburst[1:0];
  assign m00_couplers_to_auto_ds_AWCACHE = S_AXI_awcache[3:0];
  assign m00_couplers_to_auto_ds_AWID = S_AXI_awid[3:0];
  assign m00_couplers_to_auto_ds_AWLEN = S_AXI_awlen[7:0];
  assign m00_couplers_to_auto_ds_AWLOCK = S_AXI_awlock[0];
  assign m00_couplers_to_auto_ds_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_auto_ds_AWQOS = S_AXI_awqos[3:0];
  assign m00_couplers_to_auto_ds_AWREGION = S_AXI_awregion[3:0];
  assign m00_couplers_to_auto_ds_AWSIZE = S_AXI_awsize[2:0];
  assign m00_couplers_to_auto_ds_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_auto_ds_BREADY = S_AXI_bready;
  assign m00_couplers_to_auto_ds_RREADY = S_AXI_rready;
  assign m00_couplers_to_auto_ds_WDATA = S_AXI_wdata[63:0];
  assign m00_couplers_to_auto_ds_WLAST = S_AXI_wlast;
  assign m00_couplers_to_auto_ds_WSTRB = S_AXI_wstrb[7:0];
  assign m00_couplers_to_auto_ds_WVALID = S_AXI_wvalid;
  icyradio_auto_ds_0 auto_ds
       (.m_axi_araddr(auto_ds_to_m00_couplers_ARADDR),
        .m_axi_arburst(auto_ds_to_m00_couplers_ARBURST),
        .m_axi_arcache(auto_ds_to_m00_couplers_ARCACHE),
        .m_axi_arlen(auto_ds_to_m00_couplers_ARLEN),
        .m_axi_arlock(auto_ds_to_m00_couplers_ARLOCK),
        .m_axi_arprot(auto_ds_to_m00_couplers_ARPROT),
        .m_axi_arqos(auto_ds_to_m00_couplers_ARQOS),
        .m_axi_arready(auto_ds_to_m00_couplers_ARREADY),
        .m_axi_arregion(auto_ds_to_m00_couplers_ARREGION),
        .m_axi_arsize(auto_ds_to_m00_couplers_ARSIZE),
        .m_axi_arvalid(auto_ds_to_m00_couplers_ARVALID),
        .m_axi_awaddr(auto_ds_to_m00_couplers_AWADDR),
        .m_axi_awburst(auto_ds_to_m00_couplers_AWBURST),
        .m_axi_awcache(auto_ds_to_m00_couplers_AWCACHE),
        .m_axi_awlen(auto_ds_to_m00_couplers_AWLEN),
        .m_axi_awlock(auto_ds_to_m00_couplers_AWLOCK),
        .m_axi_awprot(auto_ds_to_m00_couplers_AWPROT),
        .m_axi_awqos(auto_ds_to_m00_couplers_AWQOS),
        .m_axi_awready(auto_ds_to_m00_couplers_AWREADY),
        .m_axi_awregion(auto_ds_to_m00_couplers_AWREGION),
        .m_axi_awsize(auto_ds_to_m00_couplers_AWSIZE),
        .m_axi_awvalid(auto_ds_to_m00_couplers_AWVALID),
        .m_axi_bready(auto_ds_to_m00_couplers_BREADY),
        .m_axi_bresp(auto_ds_to_m00_couplers_BRESP),
        .m_axi_bvalid(auto_ds_to_m00_couplers_BVALID),
        .m_axi_rdata(auto_ds_to_m00_couplers_RDATA),
        .m_axi_rlast(auto_ds_to_m00_couplers_RLAST),
        .m_axi_rready(auto_ds_to_m00_couplers_RREADY),
        .m_axi_rresp(auto_ds_to_m00_couplers_RRESP),
        .m_axi_rvalid(auto_ds_to_m00_couplers_RVALID),
        .m_axi_wdata(auto_ds_to_m00_couplers_WDATA),
        .m_axi_wlast(auto_ds_to_m00_couplers_WLAST),
        .m_axi_wready(auto_ds_to_m00_couplers_WREADY),
        .m_axi_wstrb(auto_ds_to_m00_couplers_WSTRB),
        .m_axi_wvalid(auto_ds_to_m00_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m00_couplers_to_auto_ds_ARADDR),
        .s_axi_arburst(m00_couplers_to_auto_ds_ARBURST),
        .s_axi_arcache(m00_couplers_to_auto_ds_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(m00_couplers_to_auto_ds_ARID),
        .s_axi_arlen(m00_couplers_to_auto_ds_ARLEN),
        .s_axi_arlock(m00_couplers_to_auto_ds_ARLOCK),
        .s_axi_arprot(m00_couplers_to_auto_ds_ARPROT),
        .s_axi_arqos(m00_couplers_to_auto_ds_ARQOS),
        .s_axi_arready(m00_couplers_to_auto_ds_ARREADY),
        .s_axi_arregion(m00_couplers_to_auto_ds_ARREGION),
        .s_axi_arsize(m00_couplers_to_auto_ds_ARSIZE),
        .s_axi_arvalid(m00_couplers_to_auto_ds_ARVALID),
        .s_axi_awaddr(m00_couplers_to_auto_ds_AWADDR),
        .s_axi_awburst(m00_couplers_to_auto_ds_AWBURST),
        .s_axi_awcache(m00_couplers_to_auto_ds_AWCACHE),
        .s_axi_awid(m00_couplers_to_auto_ds_AWID),
        .s_axi_awlen(m00_couplers_to_auto_ds_AWLEN),
        .s_axi_awlock(m00_couplers_to_auto_ds_AWLOCK),
        .s_axi_awprot(m00_couplers_to_auto_ds_AWPROT),
        .s_axi_awqos(m00_couplers_to_auto_ds_AWQOS),
        .s_axi_awready(m00_couplers_to_auto_ds_AWREADY),
        .s_axi_awregion(m00_couplers_to_auto_ds_AWREGION),
        .s_axi_awsize(m00_couplers_to_auto_ds_AWSIZE),
        .s_axi_awvalid(m00_couplers_to_auto_ds_AWVALID),
        .s_axi_bid(m00_couplers_to_auto_ds_BID),
        .s_axi_bready(m00_couplers_to_auto_ds_BREADY),
        .s_axi_bresp(m00_couplers_to_auto_ds_BRESP),
        .s_axi_bvalid(m00_couplers_to_auto_ds_BVALID),
        .s_axi_rdata(m00_couplers_to_auto_ds_RDATA),
        .s_axi_rid(m00_couplers_to_auto_ds_RID),
        .s_axi_rlast(m00_couplers_to_auto_ds_RLAST),
        .s_axi_rready(m00_couplers_to_auto_ds_RREADY),
        .s_axi_rresp(m00_couplers_to_auto_ds_RRESP),
        .s_axi_rvalid(m00_couplers_to_auto_ds_RVALID),
        .s_axi_wdata(m00_couplers_to_auto_ds_WDATA),
        .s_axi_wlast(m00_couplers_to_auto_ds_WLAST),
        .s_axi_wready(m00_couplers_to_auto_ds_WREADY),
        .s_axi_wstrb(m00_couplers_to_auto_ds_WSTRB),
        .s_axi_wvalid(m00_couplers_to_auto_ds_WVALID));
endmodule

module m00_couplers_imp_VYUENH
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arregion,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awregion,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [2:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [3:0]M_AXI_arregion;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [2:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [3:0]M_AXI_awregion;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [2:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [63:0]M_AXI_rdata;
  input [2:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [63:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [7:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [2:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [2:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [2:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [63:0]S_AXI_rdata;
  output [2:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [63:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m00_couplers_to_m00_couplers_ARADDR;
  wire [1:0]m00_couplers_to_m00_couplers_ARBURST;
  wire [3:0]m00_couplers_to_m00_couplers_ARCACHE;
  wire [2:0]m00_couplers_to_m00_couplers_ARID;
  wire [7:0]m00_couplers_to_m00_couplers_ARLEN;
  wire [0:0]m00_couplers_to_m00_couplers_ARLOCK;
  wire [2:0]m00_couplers_to_m00_couplers_ARPROT;
  wire [3:0]m00_couplers_to_m00_couplers_ARQOS;
  wire m00_couplers_to_m00_couplers_ARREADY;
  wire [3:0]m00_couplers_to_m00_couplers_ARREGION;
  wire [2:0]m00_couplers_to_m00_couplers_ARSIZE;
  wire m00_couplers_to_m00_couplers_ARVALID;
  wire [31:0]m00_couplers_to_m00_couplers_AWADDR;
  wire [1:0]m00_couplers_to_m00_couplers_AWBURST;
  wire [3:0]m00_couplers_to_m00_couplers_AWCACHE;
  wire [2:0]m00_couplers_to_m00_couplers_AWID;
  wire [7:0]m00_couplers_to_m00_couplers_AWLEN;
  wire [0:0]m00_couplers_to_m00_couplers_AWLOCK;
  wire [2:0]m00_couplers_to_m00_couplers_AWPROT;
  wire [3:0]m00_couplers_to_m00_couplers_AWQOS;
  wire m00_couplers_to_m00_couplers_AWREADY;
  wire [3:0]m00_couplers_to_m00_couplers_AWREGION;
  wire [2:0]m00_couplers_to_m00_couplers_AWSIZE;
  wire m00_couplers_to_m00_couplers_AWVALID;
  wire [2:0]m00_couplers_to_m00_couplers_BID;
  wire m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire m00_couplers_to_m00_couplers_BVALID;
  wire [63:0]m00_couplers_to_m00_couplers_RDATA;
  wire [2:0]m00_couplers_to_m00_couplers_RID;
  wire m00_couplers_to_m00_couplers_RLAST;
  wire m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire m00_couplers_to_m00_couplers_RVALID;
  wire [63:0]m00_couplers_to_m00_couplers_WDATA;
  wire m00_couplers_to_m00_couplers_WLAST;
  wire m00_couplers_to_m00_couplers_WREADY;
  wire [7:0]m00_couplers_to_m00_couplers_WSTRB;
  wire m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = m00_couplers_to_m00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = m00_couplers_to_m00_couplers_ARCACHE;
  assign M_AXI_arid[2:0] = m00_couplers_to_m00_couplers_ARID;
  assign M_AXI_arlen[7:0] = m00_couplers_to_m00_couplers_ARLEN;
  assign M_AXI_arlock[0] = m00_couplers_to_m00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = m00_couplers_to_m00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = m00_couplers_to_m00_couplers_ARQOS;
  assign M_AXI_arregion[3:0] = m00_couplers_to_m00_couplers_ARREGION;
  assign M_AXI_arsize[2:0] = m00_couplers_to_m00_couplers_ARSIZE;
  assign M_AXI_arvalid = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = m00_couplers_to_m00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = m00_couplers_to_m00_couplers_AWCACHE;
  assign M_AXI_awid[2:0] = m00_couplers_to_m00_couplers_AWID;
  assign M_AXI_awlen[7:0] = m00_couplers_to_m00_couplers_AWLEN;
  assign M_AXI_awlock[0] = m00_couplers_to_m00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = m00_couplers_to_m00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = m00_couplers_to_m00_couplers_AWQOS;
  assign M_AXI_awregion[3:0] = m00_couplers_to_m00_couplers_AWREGION;
  assign M_AXI_awsize[2:0] = m00_couplers_to_m00_couplers_AWSIZE;
  assign M_AXI_awvalid = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[63:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wlast = m00_couplers_to_m00_couplers_WLAST;
  assign M_AXI_wstrb[7:0] = m00_couplers_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bid[2:0] = m00_couplers_to_m00_couplers_BID;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[63:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rid[2:0] = m00_couplers_to_m00_couplers_RID;
  assign S_AXI_rlast = m00_couplers_to_m00_couplers_RLAST;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_m00_couplers_ARBURST = S_AXI_arburst[1:0];
  assign m00_couplers_to_m00_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign m00_couplers_to_m00_couplers_ARID = S_AXI_arid[2:0];
  assign m00_couplers_to_m00_couplers_ARLEN = S_AXI_arlen[7:0];
  assign m00_couplers_to_m00_couplers_ARLOCK = S_AXI_arlock[0];
  assign m00_couplers_to_m00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_m00_couplers_ARQOS = S_AXI_arqos[3:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready;
  assign m00_couplers_to_m00_couplers_ARREGION = S_AXI_arregion[3:0];
  assign m00_couplers_to_m00_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_m00_couplers_AWBURST = S_AXI_awburst[1:0];
  assign m00_couplers_to_m00_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign m00_couplers_to_m00_couplers_AWID = S_AXI_awid[2:0];
  assign m00_couplers_to_m00_couplers_AWLEN = S_AXI_awlen[7:0];
  assign m00_couplers_to_m00_couplers_AWLOCK = S_AXI_awlock[0];
  assign m00_couplers_to_m00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_m00_couplers_AWQOS = S_AXI_awqos[3:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready;
  assign m00_couplers_to_m00_couplers_AWREGION = S_AXI_awregion[3:0];
  assign m00_couplers_to_m00_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_m00_couplers_BID = M_AXI_bid[2:0];
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready;
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[63:0];
  assign m00_couplers_to_m00_couplers_RID = M_AXI_rid[2:0];
  assign m00_couplers_to_m00_couplers_RLAST = M_AXI_rlast;
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready;
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[63:0];
  assign m00_couplers_to_m00_couplers_WLAST = S_AXI_wlast;
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_m00_couplers_WSTRB = S_AXI_wstrb[7:0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid;
endmodule

module m01_couplers_imp_17E5LCC
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arready,
    M_AXI_arregion,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awready,
    M_AXI_awregion,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [2:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  input M_AXI_arready;
  output [3:0]M_AXI_arregion;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [2:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  input M_AXI_awready;
  output [3:0]M_AXI_awregion;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [2:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [63:0]M_AXI_rdata;
  input [2:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [63:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [7:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [2:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [2:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [2:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [63:0]S_AXI_rdata;
  output [2:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [63:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m01_couplers_to_m01_couplers_ARADDR;
  wire [1:0]m01_couplers_to_m01_couplers_ARBURST;
  wire [2:0]m01_couplers_to_m01_couplers_ARID;
  wire [7:0]m01_couplers_to_m01_couplers_ARLEN;
  wire m01_couplers_to_m01_couplers_ARREADY;
  wire [3:0]m01_couplers_to_m01_couplers_ARREGION;
  wire [2:0]m01_couplers_to_m01_couplers_ARSIZE;
  wire m01_couplers_to_m01_couplers_ARVALID;
  wire [31:0]m01_couplers_to_m01_couplers_AWADDR;
  wire [1:0]m01_couplers_to_m01_couplers_AWBURST;
  wire [2:0]m01_couplers_to_m01_couplers_AWID;
  wire [7:0]m01_couplers_to_m01_couplers_AWLEN;
  wire m01_couplers_to_m01_couplers_AWREADY;
  wire [3:0]m01_couplers_to_m01_couplers_AWREGION;
  wire [2:0]m01_couplers_to_m01_couplers_AWSIZE;
  wire m01_couplers_to_m01_couplers_AWVALID;
  wire [2:0]m01_couplers_to_m01_couplers_BID;
  wire m01_couplers_to_m01_couplers_BREADY;
  wire [1:0]m01_couplers_to_m01_couplers_BRESP;
  wire m01_couplers_to_m01_couplers_BVALID;
  wire [63:0]m01_couplers_to_m01_couplers_RDATA;
  wire [2:0]m01_couplers_to_m01_couplers_RID;
  wire m01_couplers_to_m01_couplers_RLAST;
  wire m01_couplers_to_m01_couplers_RREADY;
  wire [1:0]m01_couplers_to_m01_couplers_RRESP;
  wire m01_couplers_to_m01_couplers_RVALID;
  wire [63:0]m01_couplers_to_m01_couplers_WDATA;
  wire m01_couplers_to_m01_couplers_WLAST;
  wire m01_couplers_to_m01_couplers_WREADY;
  wire [7:0]m01_couplers_to_m01_couplers_WSTRB;
  wire m01_couplers_to_m01_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m01_couplers_to_m01_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = m01_couplers_to_m01_couplers_ARBURST;
  assign M_AXI_arid[2:0] = m01_couplers_to_m01_couplers_ARID;
  assign M_AXI_arlen[7:0] = m01_couplers_to_m01_couplers_ARLEN;
  assign M_AXI_arregion[3:0] = m01_couplers_to_m01_couplers_ARREGION;
  assign M_AXI_arsize[2:0] = m01_couplers_to_m01_couplers_ARSIZE;
  assign M_AXI_arvalid = m01_couplers_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m01_couplers_to_m01_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = m01_couplers_to_m01_couplers_AWBURST;
  assign M_AXI_awid[2:0] = m01_couplers_to_m01_couplers_AWID;
  assign M_AXI_awlen[7:0] = m01_couplers_to_m01_couplers_AWLEN;
  assign M_AXI_awregion[3:0] = m01_couplers_to_m01_couplers_AWREGION;
  assign M_AXI_awsize[2:0] = m01_couplers_to_m01_couplers_AWSIZE;
  assign M_AXI_awvalid = m01_couplers_to_m01_couplers_AWVALID;
  assign M_AXI_bready = m01_couplers_to_m01_couplers_BREADY;
  assign M_AXI_rready = m01_couplers_to_m01_couplers_RREADY;
  assign M_AXI_wdata[63:0] = m01_couplers_to_m01_couplers_WDATA;
  assign M_AXI_wlast = m01_couplers_to_m01_couplers_WLAST;
  assign M_AXI_wstrb[7:0] = m01_couplers_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = m01_couplers_to_m01_couplers_WVALID;
  assign S_AXI_arready = m01_couplers_to_m01_couplers_ARREADY;
  assign S_AXI_awready = m01_couplers_to_m01_couplers_AWREADY;
  assign S_AXI_bid[2:0] = m01_couplers_to_m01_couplers_BID;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_couplers_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_m01_couplers_BVALID;
  assign S_AXI_rdata[63:0] = m01_couplers_to_m01_couplers_RDATA;
  assign S_AXI_rid[2:0] = m01_couplers_to_m01_couplers_RID;
  assign S_AXI_rlast = m01_couplers_to_m01_couplers_RLAST;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_couplers_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_m01_couplers_RVALID;
  assign S_AXI_wready = m01_couplers_to_m01_couplers_WREADY;
  assign m01_couplers_to_m01_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m01_couplers_to_m01_couplers_ARBURST = S_AXI_arburst[1:0];
  assign m01_couplers_to_m01_couplers_ARID = S_AXI_arid[2:0];
  assign m01_couplers_to_m01_couplers_ARLEN = S_AXI_arlen[7:0];
  assign m01_couplers_to_m01_couplers_ARREADY = M_AXI_arready;
  assign m01_couplers_to_m01_couplers_ARREGION = S_AXI_arregion[3:0];
  assign m01_couplers_to_m01_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign m01_couplers_to_m01_couplers_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_m01_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m01_couplers_to_m01_couplers_AWBURST = S_AXI_awburst[1:0];
  assign m01_couplers_to_m01_couplers_AWID = S_AXI_awid[2:0];
  assign m01_couplers_to_m01_couplers_AWLEN = S_AXI_awlen[7:0];
  assign m01_couplers_to_m01_couplers_AWREADY = M_AXI_awready;
  assign m01_couplers_to_m01_couplers_AWREGION = S_AXI_awregion[3:0];
  assign m01_couplers_to_m01_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign m01_couplers_to_m01_couplers_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_m01_couplers_BID = M_AXI_bid[2:0];
  assign m01_couplers_to_m01_couplers_BREADY = S_AXI_bready;
  assign m01_couplers_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_couplers_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign m01_couplers_to_m01_couplers_RDATA = M_AXI_rdata[63:0];
  assign m01_couplers_to_m01_couplers_RID = M_AXI_rid[2:0];
  assign m01_couplers_to_m01_couplers_RLAST = M_AXI_rlast;
  assign m01_couplers_to_m01_couplers_RREADY = S_AXI_rready;
  assign m01_couplers_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_couplers_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign m01_couplers_to_m01_couplers_WDATA = S_AXI_wdata[63:0];
  assign m01_couplers_to_m01_couplers_WLAST = S_AXI_wlast;
  assign m01_couplers_to_m01_couplers_WREADY = M_AXI_wready;
  assign m01_couplers_to_m01_couplers_WSTRB = S_AXI_wstrb[7:0];
  assign m01_couplers_to_m01_couplers_WVALID = S_AXI_wvalid;
endmodule

module m01_couplers_imp_1KNJ6AR
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [23:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [23:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [3:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [3:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [3:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [63:0]S_AXI_rdata;
  output [3:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [63:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [23:0]auto_ds_to_m01_couplers_ARADDR;
  wire [1:0]auto_ds_to_m01_couplers_ARBURST;
  wire [3:0]auto_ds_to_m01_couplers_ARCACHE;
  wire [7:0]auto_ds_to_m01_couplers_ARLEN;
  wire [0:0]auto_ds_to_m01_couplers_ARLOCK;
  wire [2:0]auto_ds_to_m01_couplers_ARPROT;
  wire auto_ds_to_m01_couplers_ARREADY;
  wire [2:0]auto_ds_to_m01_couplers_ARSIZE;
  wire auto_ds_to_m01_couplers_ARVALID;
  wire [23:0]auto_ds_to_m01_couplers_AWADDR;
  wire [1:0]auto_ds_to_m01_couplers_AWBURST;
  wire [3:0]auto_ds_to_m01_couplers_AWCACHE;
  wire [7:0]auto_ds_to_m01_couplers_AWLEN;
  wire [0:0]auto_ds_to_m01_couplers_AWLOCK;
  wire [2:0]auto_ds_to_m01_couplers_AWPROT;
  wire auto_ds_to_m01_couplers_AWREADY;
  wire [2:0]auto_ds_to_m01_couplers_AWSIZE;
  wire auto_ds_to_m01_couplers_AWVALID;
  wire auto_ds_to_m01_couplers_BREADY;
  wire [1:0]auto_ds_to_m01_couplers_BRESP;
  wire auto_ds_to_m01_couplers_BVALID;
  wire [31:0]auto_ds_to_m01_couplers_RDATA;
  wire auto_ds_to_m01_couplers_RLAST;
  wire auto_ds_to_m01_couplers_RREADY;
  wire [1:0]auto_ds_to_m01_couplers_RRESP;
  wire auto_ds_to_m01_couplers_RVALID;
  wire [31:0]auto_ds_to_m01_couplers_WDATA;
  wire auto_ds_to_m01_couplers_WLAST;
  wire auto_ds_to_m01_couplers_WREADY;
  wire [3:0]auto_ds_to_m01_couplers_WSTRB;
  wire auto_ds_to_m01_couplers_WVALID;
  wire [31:0]m01_couplers_to_auto_ds_ARADDR;
  wire [1:0]m01_couplers_to_auto_ds_ARBURST;
  wire [3:0]m01_couplers_to_auto_ds_ARCACHE;
  wire [3:0]m01_couplers_to_auto_ds_ARID;
  wire [7:0]m01_couplers_to_auto_ds_ARLEN;
  wire [0:0]m01_couplers_to_auto_ds_ARLOCK;
  wire [2:0]m01_couplers_to_auto_ds_ARPROT;
  wire [3:0]m01_couplers_to_auto_ds_ARQOS;
  wire m01_couplers_to_auto_ds_ARREADY;
  wire [3:0]m01_couplers_to_auto_ds_ARREGION;
  wire [2:0]m01_couplers_to_auto_ds_ARSIZE;
  wire m01_couplers_to_auto_ds_ARVALID;
  wire [31:0]m01_couplers_to_auto_ds_AWADDR;
  wire [1:0]m01_couplers_to_auto_ds_AWBURST;
  wire [3:0]m01_couplers_to_auto_ds_AWCACHE;
  wire [3:0]m01_couplers_to_auto_ds_AWID;
  wire [7:0]m01_couplers_to_auto_ds_AWLEN;
  wire [0:0]m01_couplers_to_auto_ds_AWLOCK;
  wire [2:0]m01_couplers_to_auto_ds_AWPROT;
  wire [3:0]m01_couplers_to_auto_ds_AWQOS;
  wire m01_couplers_to_auto_ds_AWREADY;
  wire [3:0]m01_couplers_to_auto_ds_AWREGION;
  wire [2:0]m01_couplers_to_auto_ds_AWSIZE;
  wire m01_couplers_to_auto_ds_AWVALID;
  wire [3:0]m01_couplers_to_auto_ds_BID;
  wire m01_couplers_to_auto_ds_BREADY;
  wire [1:0]m01_couplers_to_auto_ds_BRESP;
  wire m01_couplers_to_auto_ds_BVALID;
  wire [63:0]m01_couplers_to_auto_ds_RDATA;
  wire [3:0]m01_couplers_to_auto_ds_RID;
  wire m01_couplers_to_auto_ds_RLAST;
  wire m01_couplers_to_auto_ds_RREADY;
  wire [1:0]m01_couplers_to_auto_ds_RRESP;
  wire m01_couplers_to_auto_ds_RVALID;
  wire [63:0]m01_couplers_to_auto_ds_WDATA;
  wire m01_couplers_to_auto_ds_WLAST;
  wire m01_couplers_to_auto_ds_WREADY;
  wire [7:0]m01_couplers_to_auto_ds_WSTRB;
  wire m01_couplers_to_auto_ds_WVALID;

  assign M_AXI_araddr[23:0] = auto_ds_to_m01_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_ds_to_m01_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_ds_to_m01_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_ds_to_m01_couplers_ARLEN;
  assign M_AXI_arlock = auto_ds_to_m01_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_ds_to_m01_couplers_ARPROT;
  assign M_AXI_arsize[2:0] = auto_ds_to_m01_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_ds_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[23:0] = auto_ds_to_m01_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_ds_to_m01_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_ds_to_m01_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_ds_to_m01_couplers_AWLEN;
  assign M_AXI_awlock = auto_ds_to_m01_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_ds_to_m01_couplers_AWPROT;
  assign M_AXI_awsize[2:0] = auto_ds_to_m01_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_ds_to_m01_couplers_AWVALID;
  assign M_AXI_bready = auto_ds_to_m01_couplers_BREADY;
  assign M_AXI_rready = auto_ds_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_ds_to_m01_couplers_WDATA;
  assign M_AXI_wlast = auto_ds_to_m01_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = auto_ds_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = auto_ds_to_m01_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m01_couplers_to_auto_ds_ARREADY;
  assign S_AXI_awready = m01_couplers_to_auto_ds_AWREADY;
  assign S_AXI_bid[3:0] = m01_couplers_to_auto_ds_BID;
  assign S_AXI_bresp[1:0] = m01_couplers_to_auto_ds_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_auto_ds_BVALID;
  assign S_AXI_rdata[63:0] = m01_couplers_to_auto_ds_RDATA;
  assign S_AXI_rid[3:0] = m01_couplers_to_auto_ds_RID;
  assign S_AXI_rlast = m01_couplers_to_auto_ds_RLAST;
  assign S_AXI_rresp[1:0] = m01_couplers_to_auto_ds_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_auto_ds_RVALID;
  assign S_AXI_wready = m01_couplers_to_auto_ds_WREADY;
  assign auto_ds_to_m01_couplers_ARREADY = M_AXI_arready;
  assign auto_ds_to_m01_couplers_AWREADY = M_AXI_awready;
  assign auto_ds_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_ds_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign auto_ds_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_ds_to_m01_couplers_RLAST = M_AXI_rlast;
  assign auto_ds_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_ds_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign auto_ds_to_m01_couplers_WREADY = M_AXI_wready;
  assign m01_couplers_to_auto_ds_ARADDR = S_AXI_araddr[31:0];
  assign m01_couplers_to_auto_ds_ARBURST = S_AXI_arburst[1:0];
  assign m01_couplers_to_auto_ds_ARCACHE = S_AXI_arcache[3:0];
  assign m01_couplers_to_auto_ds_ARID = S_AXI_arid[3:0];
  assign m01_couplers_to_auto_ds_ARLEN = S_AXI_arlen[7:0];
  assign m01_couplers_to_auto_ds_ARLOCK = S_AXI_arlock[0];
  assign m01_couplers_to_auto_ds_ARPROT = S_AXI_arprot[2:0];
  assign m01_couplers_to_auto_ds_ARQOS = S_AXI_arqos[3:0];
  assign m01_couplers_to_auto_ds_ARREGION = S_AXI_arregion[3:0];
  assign m01_couplers_to_auto_ds_ARSIZE = S_AXI_arsize[2:0];
  assign m01_couplers_to_auto_ds_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_auto_ds_AWADDR = S_AXI_awaddr[31:0];
  assign m01_couplers_to_auto_ds_AWBURST = S_AXI_awburst[1:0];
  assign m01_couplers_to_auto_ds_AWCACHE = S_AXI_awcache[3:0];
  assign m01_couplers_to_auto_ds_AWID = S_AXI_awid[3:0];
  assign m01_couplers_to_auto_ds_AWLEN = S_AXI_awlen[7:0];
  assign m01_couplers_to_auto_ds_AWLOCK = S_AXI_awlock[0];
  assign m01_couplers_to_auto_ds_AWPROT = S_AXI_awprot[2:0];
  assign m01_couplers_to_auto_ds_AWQOS = S_AXI_awqos[3:0];
  assign m01_couplers_to_auto_ds_AWREGION = S_AXI_awregion[3:0];
  assign m01_couplers_to_auto_ds_AWSIZE = S_AXI_awsize[2:0];
  assign m01_couplers_to_auto_ds_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_auto_ds_BREADY = S_AXI_bready;
  assign m01_couplers_to_auto_ds_RREADY = S_AXI_rready;
  assign m01_couplers_to_auto_ds_WDATA = S_AXI_wdata[63:0];
  assign m01_couplers_to_auto_ds_WLAST = S_AXI_wlast;
  assign m01_couplers_to_auto_ds_WSTRB = S_AXI_wstrb[7:0];
  assign m01_couplers_to_auto_ds_WVALID = S_AXI_wvalid;
  icyradio_auto_ds_1 auto_ds
       (.m_axi_araddr(auto_ds_to_m01_couplers_ARADDR),
        .m_axi_arburst(auto_ds_to_m01_couplers_ARBURST),
        .m_axi_arcache(auto_ds_to_m01_couplers_ARCACHE),
        .m_axi_arlen(auto_ds_to_m01_couplers_ARLEN),
        .m_axi_arlock(auto_ds_to_m01_couplers_ARLOCK),
        .m_axi_arprot(auto_ds_to_m01_couplers_ARPROT),
        .m_axi_arready(auto_ds_to_m01_couplers_ARREADY),
        .m_axi_arsize(auto_ds_to_m01_couplers_ARSIZE),
        .m_axi_arvalid(auto_ds_to_m01_couplers_ARVALID),
        .m_axi_awaddr(auto_ds_to_m01_couplers_AWADDR),
        .m_axi_awburst(auto_ds_to_m01_couplers_AWBURST),
        .m_axi_awcache(auto_ds_to_m01_couplers_AWCACHE),
        .m_axi_awlen(auto_ds_to_m01_couplers_AWLEN),
        .m_axi_awlock(auto_ds_to_m01_couplers_AWLOCK),
        .m_axi_awprot(auto_ds_to_m01_couplers_AWPROT),
        .m_axi_awready(auto_ds_to_m01_couplers_AWREADY),
        .m_axi_awsize(auto_ds_to_m01_couplers_AWSIZE),
        .m_axi_awvalid(auto_ds_to_m01_couplers_AWVALID),
        .m_axi_bready(auto_ds_to_m01_couplers_BREADY),
        .m_axi_bresp(auto_ds_to_m01_couplers_BRESP),
        .m_axi_bvalid(auto_ds_to_m01_couplers_BVALID),
        .m_axi_rdata(auto_ds_to_m01_couplers_RDATA),
        .m_axi_rlast(auto_ds_to_m01_couplers_RLAST),
        .m_axi_rready(auto_ds_to_m01_couplers_RREADY),
        .m_axi_rresp(auto_ds_to_m01_couplers_RRESP),
        .m_axi_rvalid(auto_ds_to_m01_couplers_RVALID),
        .m_axi_wdata(auto_ds_to_m01_couplers_WDATA),
        .m_axi_wlast(auto_ds_to_m01_couplers_WLAST),
        .m_axi_wready(auto_ds_to_m01_couplers_WREADY),
        .m_axi_wstrb(auto_ds_to_m01_couplers_WSTRB),
        .m_axi_wvalid(auto_ds_to_m01_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m01_couplers_to_auto_ds_ARADDR[23:0]),
        .s_axi_arburst(m01_couplers_to_auto_ds_ARBURST),
        .s_axi_arcache(m01_couplers_to_auto_ds_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(m01_couplers_to_auto_ds_ARID),
        .s_axi_arlen(m01_couplers_to_auto_ds_ARLEN),
        .s_axi_arlock(m01_couplers_to_auto_ds_ARLOCK),
        .s_axi_arprot(m01_couplers_to_auto_ds_ARPROT),
        .s_axi_arqos(m01_couplers_to_auto_ds_ARQOS),
        .s_axi_arready(m01_couplers_to_auto_ds_ARREADY),
        .s_axi_arregion(m01_couplers_to_auto_ds_ARREGION),
        .s_axi_arsize(m01_couplers_to_auto_ds_ARSIZE),
        .s_axi_arvalid(m01_couplers_to_auto_ds_ARVALID),
        .s_axi_awaddr(m01_couplers_to_auto_ds_AWADDR[23:0]),
        .s_axi_awburst(m01_couplers_to_auto_ds_AWBURST),
        .s_axi_awcache(m01_couplers_to_auto_ds_AWCACHE),
        .s_axi_awid(m01_couplers_to_auto_ds_AWID),
        .s_axi_awlen(m01_couplers_to_auto_ds_AWLEN),
        .s_axi_awlock(m01_couplers_to_auto_ds_AWLOCK),
        .s_axi_awprot(m01_couplers_to_auto_ds_AWPROT),
        .s_axi_awqos(m01_couplers_to_auto_ds_AWQOS),
        .s_axi_awready(m01_couplers_to_auto_ds_AWREADY),
        .s_axi_awregion(m01_couplers_to_auto_ds_AWREGION),
        .s_axi_awsize(m01_couplers_to_auto_ds_AWSIZE),
        .s_axi_awvalid(m01_couplers_to_auto_ds_AWVALID),
        .s_axi_bid(m01_couplers_to_auto_ds_BID),
        .s_axi_bready(m01_couplers_to_auto_ds_BREADY),
        .s_axi_bresp(m01_couplers_to_auto_ds_BRESP),
        .s_axi_bvalid(m01_couplers_to_auto_ds_BVALID),
        .s_axi_rdata(m01_couplers_to_auto_ds_RDATA),
        .s_axi_rid(m01_couplers_to_auto_ds_RID),
        .s_axi_rlast(m01_couplers_to_auto_ds_RLAST),
        .s_axi_rready(m01_couplers_to_auto_ds_RREADY),
        .s_axi_rresp(m01_couplers_to_auto_ds_RRESP),
        .s_axi_rvalid(m01_couplers_to_auto_ds_RVALID),
        .s_axi_wdata(m01_couplers_to_auto_ds_WDATA),
        .s_axi_wlast(m01_couplers_to_auto_ds_WLAST),
        .s_axi_wready(m01_couplers_to_auto_ds_WREADY),
        .s_axi_wstrb(m01_couplers_to_auto_ds_WSTRB),
        .s_axi_wvalid(m01_couplers_to_auto_ds_WVALID));
endmodule

module m01_couplers_imp_TX6TYQ
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m01_couplers_to_m01_couplers_ARADDR;
  wire [2:0]m01_couplers_to_m01_couplers_ARPROT;
  wire [0:0]m01_couplers_to_m01_couplers_ARREADY;
  wire [0:0]m01_couplers_to_m01_couplers_ARVALID;
  wire [31:0]m01_couplers_to_m01_couplers_AWADDR;
  wire [2:0]m01_couplers_to_m01_couplers_AWPROT;
  wire [0:0]m01_couplers_to_m01_couplers_AWREADY;
  wire [0:0]m01_couplers_to_m01_couplers_AWVALID;
  wire [0:0]m01_couplers_to_m01_couplers_BREADY;
  wire [1:0]m01_couplers_to_m01_couplers_BRESP;
  wire [0:0]m01_couplers_to_m01_couplers_BVALID;
  wire [31:0]m01_couplers_to_m01_couplers_RDATA;
  wire [0:0]m01_couplers_to_m01_couplers_RREADY;
  wire [1:0]m01_couplers_to_m01_couplers_RRESP;
  wire [0:0]m01_couplers_to_m01_couplers_RVALID;
  wire [31:0]m01_couplers_to_m01_couplers_WDATA;
  wire [0:0]m01_couplers_to_m01_couplers_WREADY;
  wire [3:0]m01_couplers_to_m01_couplers_WSTRB;
  wire [0:0]m01_couplers_to_m01_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m01_couplers_to_m01_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m01_couplers_to_m01_couplers_ARPROT;
  assign M_AXI_arvalid[0] = m01_couplers_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m01_couplers_to_m01_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m01_couplers_to_m01_couplers_AWPROT;
  assign M_AXI_awvalid[0] = m01_couplers_to_m01_couplers_AWVALID;
  assign M_AXI_bready[0] = m01_couplers_to_m01_couplers_BREADY;
  assign M_AXI_rready[0] = m01_couplers_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_couplers_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m01_couplers_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m01_couplers_to_m01_couplers_WVALID;
  assign S_AXI_arready[0] = m01_couplers_to_m01_couplers_ARREADY;
  assign S_AXI_awready[0] = m01_couplers_to_m01_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_couplers_BRESP;
  assign S_AXI_bvalid[0] = m01_couplers_to_m01_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_m01_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_couplers_RRESP;
  assign S_AXI_rvalid[0] = m01_couplers_to_m01_couplers_RVALID;
  assign S_AXI_wready[0] = m01_couplers_to_m01_couplers_WREADY;
  assign m01_couplers_to_m01_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m01_couplers_to_m01_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m01_couplers_to_m01_couplers_ARREADY = M_AXI_arready[0];
  assign m01_couplers_to_m01_couplers_ARVALID = S_AXI_arvalid[0];
  assign m01_couplers_to_m01_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m01_couplers_to_m01_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m01_couplers_to_m01_couplers_AWREADY = M_AXI_awready[0];
  assign m01_couplers_to_m01_couplers_AWVALID = S_AXI_awvalid[0];
  assign m01_couplers_to_m01_couplers_BREADY = S_AXI_bready[0];
  assign m01_couplers_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_couplers_to_m01_couplers_BVALID = M_AXI_bvalid[0];
  assign m01_couplers_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_couplers_to_m01_couplers_RREADY = S_AXI_rready[0];
  assign m01_couplers_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_couplers_to_m01_couplers_RVALID = M_AXI_rvalid[0];
  assign m01_couplers_to_m01_couplers_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_m01_couplers_WREADY = M_AXI_wready[0];
  assign m01_couplers_to_m01_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_m01_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m02_couplers_imp_AQ4QF5
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [28:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [3:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [28:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [3:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [3:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [63:0]M_AXI_rdata;
  input [3:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [63:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [7:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [3:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [3:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [3:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [63:0]S_AXI_rdata;
  output [3:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [63:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [28:0]auto_cc_to_m02_couplers_ARADDR;
  wire [1:0]auto_cc_to_m02_couplers_ARBURST;
  wire [3:0]auto_cc_to_m02_couplers_ARCACHE;
  wire [3:0]auto_cc_to_m02_couplers_ARID;
  wire [7:0]auto_cc_to_m02_couplers_ARLEN;
  wire [0:0]auto_cc_to_m02_couplers_ARLOCK;
  wire [2:0]auto_cc_to_m02_couplers_ARPROT;
  wire [3:0]auto_cc_to_m02_couplers_ARQOS;
  wire auto_cc_to_m02_couplers_ARREADY;
  wire [2:0]auto_cc_to_m02_couplers_ARSIZE;
  wire auto_cc_to_m02_couplers_ARVALID;
  wire [28:0]auto_cc_to_m02_couplers_AWADDR;
  wire [1:0]auto_cc_to_m02_couplers_AWBURST;
  wire [3:0]auto_cc_to_m02_couplers_AWCACHE;
  wire [3:0]auto_cc_to_m02_couplers_AWID;
  wire [7:0]auto_cc_to_m02_couplers_AWLEN;
  wire [0:0]auto_cc_to_m02_couplers_AWLOCK;
  wire [2:0]auto_cc_to_m02_couplers_AWPROT;
  wire [3:0]auto_cc_to_m02_couplers_AWQOS;
  wire auto_cc_to_m02_couplers_AWREADY;
  wire [2:0]auto_cc_to_m02_couplers_AWSIZE;
  wire auto_cc_to_m02_couplers_AWVALID;
  wire [3:0]auto_cc_to_m02_couplers_BID;
  wire auto_cc_to_m02_couplers_BREADY;
  wire [1:0]auto_cc_to_m02_couplers_BRESP;
  wire auto_cc_to_m02_couplers_BVALID;
  wire [63:0]auto_cc_to_m02_couplers_RDATA;
  wire [3:0]auto_cc_to_m02_couplers_RID;
  wire auto_cc_to_m02_couplers_RLAST;
  wire auto_cc_to_m02_couplers_RREADY;
  wire [1:0]auto_cc_to_m02_couplers_RRESP;
  wire auto_cc_to_m02_couplers_RVALID;
  wire [63:0]auto_cc_to_m02_couplers_WDATA;
  wire auto_cc_to_m02_couplers_WLAST;
  wire auto_cc_to_m02_couplers_WREADY;
  wire [7:0]auto_cc_to_m02_couplers_WSTRB;
  wire auto_cc_to_m02_couplers_WVALID;
  wire [31:0]m02_couplers_to_auto_cc_ARADDR;
  wire [1:0]m02_couplers_to_auto_cc_ARBURST;
  wire [3:0]m02_couplers_to_auto_cc_ARCACHE;
  wire [3:0]m02_couplers_to_auto_cc_ARID;
  wire [7:0]m02_couplers_to_auto_cc_ARLEN;
  wire [0:0]m02_couplers_to_auto_cc_ARLOCK;
  wire [2:0]m02_couplers_to_auto_cc_ARPROT;
  wire [3:0]m02_couplers_to_auto_cc_ARQOS;
  wire m02_couplers_to_auto_cc_ARREADY;
  wire [3:0]m02_couplers_to_auto_cc_ARREGION;
  wire [2:0]m02_couplers_to_auto_cc_ARSIZE;
  wire m02_couplers_to_auto_cc_ARVALID;
  wire [31:0]m02_couplers_to_auto_cc_AWADDR;
  wire [1:0]m02_couplers_to_auto_cc_AWBURST;
  wire [3:0]m02_couplers_to_auto_cc_AWCACHE;
  wire [3:0]m02_couplers_to_auto_cc_AWID;
  wire [7:0]m02_couplers_to_auto_cc_AWLEN;
  wire [0:0]m02_couplers_to_auto_cc_AWLOCK;
  wire [2:0]m02_couplers_to_auto_cc_AWPROT;
  wire [3:0]m02_couplers_to_auto_cc_AWQOS;
  wire m02_couplers_to_auto_cc_AWREADY;
  wire [3:0]m02_couplers_to_auto_cc_AWREGION;
  wire [2:0]m02_couplers_to_auto_cc_AWSIZE;
  wire m02_couplers_to_auto_cc_AWVALID;
  wire [3:0]m02_couplers_to_auto_cc_BID;
  wire m02_couplers_to_auto_cc_BREADY;
  wire [1:0]m02_couplers_to_auto_cc_BRESP;
  wire m02_couplers_to_auto_cc_BVALID;
  wire [63:0]m02_couplers_to_auto_cc_RDATA;
  wire [3:0]m02_couplers_to_auto_cc_RID;
  wire m02_couplers_to_auto_cc_RLAST;
  wire m02_couplers_to_auto_cc_RREADY;
  wire [1:0]m02_couplers_to_auto_cc_RRESP;
  wire m02_couplers_to_auto_cc_RVALID;
  wire [63:0]m02_couplers_to_auto_cc_WDATA;
  wire m02_couplers_to_auto_cc_WLAST;
  wire m02_couplers_to_auto_cc_WREADY;
  wire [7:0]m02_couplers_to_auto_cc_WSTRB;
  wire m02_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[28:0] = auto_cc_to_m02_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_cc_to_m02_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_cc_to_m02_couplers_ARCACHE;
  assign M_AXI_arid[3:0] = auto_cc_to_m02_couplers_ARID;
  assign M_AXI_arlen[7:0] = auto_cc_to_m02_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_cc_to_m02_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_cc_to_m02_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_cc_to_m02_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_cc_to_m02_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_cc_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[28:0] = auto_cc_to_m02_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_cc_to_m02_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_cc_to_m02_couplers_AWCACHE;
  assign M_AXI_awid[3:0] = auto_cc_to_m02_couplers_AWID;
  assign M_AXI_awlen[7:0] = auto_cc_to_m02_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_cc_to_m02_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_cc_to_m02_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_cc_to_m02_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_cc_to_m02_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_cc_to_m02_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m02_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m02_couplers_RREADY;
  assign M_AXI_wdata[63:0] = auto_cc_to_m02_couplers_WDATA;
  assign M_AXI_wlast = auto_cc_to_m02_couplers_WLAST;
  assign M_AXI_wstrb[7:0] = auto_cc_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_m02_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m02_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m02_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bid[3:0] = m02_couplers_to_auto_cc_BID;
  assign S_AXI_bresp[1:0] = m02_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m02_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[63:0] = m02_couplers_to_auto_cc_RDATA;
  assign S_AXI_rid[3:0] = m02_couplers_to_auto_cc_RID;
  assign S_AXI_rlast = m02_couplers_to_auto_cc_RLAST;
  assign S_AXI_rresp[1:0] = m02_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m02_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m02_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m02_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m02_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m02_couplers_BID = M_AXI_bid[3:0];
  assign auto_cc_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m02_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m02_couplers_RDATA = M_AXI_rdata[63:0];
  assign auto_cc_to_m02_couplers_RID = M_AXI_rid[3:0];
  assign auto_cc_to_m02_couplers_RLAST = M_AXI_rlast;
  assign auto_cc_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m02_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m02_couplers_WREADY = M_AXI_wready;
  assign m02_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign m02_couplers_to_auto_cc_ARBURST = S_AXI_arburst[1:0];
  assign m02_couplers_to_auto_cc_ARCACHE = S_AXI_arcache[3:0];
  assign m02_couplers_to_auto_cc_ARID = S_AXI_arid[3:0];
  assign m02_couplers_to_auto_cc_ARLEN = S_AXI_arlen[7:0];
  assign m02_couplers_to_auto_cc_ARLOCK = S_AXI_arlock[0];
  assign m02_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m02_couplers_to_auto_cc_ARQOS = S_AXI_arqos[3:0];
  assign m02_couplers_to_auto_cc_ARREGION = S_AXI_arregion[3:0];
  assign m02_couplers_to_auto_cc_ARSIZE = S_AXI_arsize[2:0];
  assign m02_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m02_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
  assign m02_couplers_to_auto_cc_AWBURST = S_AXI_awburst[1:0];
  assign m02_couplers_to_auto_cc_AWCACHE = S_AXI_awcache[3:0];
  assign m02_couplers_to_auto_cc_AWID = S_AXI_awid[3:0];
  assign m02_couplers_to_auto_cc_AWLEN = S_AXI_awlen[7:0];
  assign m02_couplers_to_auto_cc_AWLOCK = S_AXI_awlock[0];
  assign m02_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m02_couplers_to_auto_cc_AWQOS = S_AXI_awqos[3:0];
  assign m02_couplers_to_auto_cc_AWREGION = S_AXI_awregion[3:0];
  assign m02_couplers_to_auto_cc_AWSIZE = S_AXI_awsize[2:0];
  assign m02_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m02_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m02_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m02_couplers_to_auto_cc_WDATA = S_AXI_wdata[63:0];
  assign m02_couplers_to_auto_cc_WLAST = S_AXI_wlast;
  assign m02_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[7:0];
  assign m02_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  icyradio_auto_cc_0 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m02_couplers_ARADDR),
        .m_axi_arburst(auto_cc_to_m02_couplers_ARBURST),
        .m_axi_arcache(auto_cc_to_m02_couplers_ARCACHE),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arid(auto_cc_to_m02_couplers_ARID),
        .m_axi_arlen(auto_cc_to_m02_couplers_ARLEN),
        .m_axi_arlock(auto_cc_to_m02_couplers_ARLOCK),
        .m_axi_arprot(auto_cc_to_m02_couplers_ARPROT),
        .m_axi_arqos(auto_cc_to_m02_couplers_ARQOS),
        .m_axi_arready(auto_cc_to_m02_couplers_ARREADY),
        .m_axi_arsize(auto_cc_to_m02_couplers_ARSIZE),
        .m_axi_arvalid(auto_cc_to_m02_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m02_couplers_AWADDR),
        .m_axi_awburst(auto_cc_to_m02_couplers_AWBURST),
        .m_axi_awcache(auto_cc_to_m02_couplers_AWCACHE),
        .m_axi_awid(auto_cc_to_m02_couplers_AWID),
        .m_axi_awlen(auto_cc_to_m02_couplers_AWLEN),
        .m_axi_awlock(auto_cc_to_m02_couplers_AWLOCK),
        .m_axi_awprot(auto_cc_to_m02_couplers_AWPROT),
        .m_axi_awqos(auto_cc_to_m02_couplers_AWQOS),
        .m_axi_awready(auto_cc_to_m02_couplers_AWREADY),
        .m_axi_awsize(auto_cc_to_m02_couplers_AWSIZE),
        .m_axi_awvalid(auto_cc_to_m02_couplers_AWVALID),
        .m_axi_bid(auto_cc_to_m02_couplers_BID),
        .m_axi_bready(auto_cc_to_m02_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m02_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m02_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m02_couplers_RDATA),
        .m_axi_rid(auto_cc_to_m02_couplers_RID),
        .m_axi_rlast(auto_cc_to_m02_couplers_RLAST),
        .m_axi_rready(auto_cc_to_m02_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m02_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m02_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m02_couplers_WDATA),
        .m_axi_wlast(auto_cc_to_m02_couplers_WLAST),
        .m_axi_wready(auto_cc_to_m02_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m02_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m02_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m02_couplers_to_auto_cc_ARADDR[28:0]),
        .s_axi_arburst(m02_couplers_to_auto_cc_ARBURST),
        .s_axi_arcache(m02_couplers_to_auto_cc_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(m02_couplers_to_auto_cc_ARID),
        .s_axi_arlen(m02_couplers_to_auto_cc_ARLEN),
        .s_axi_arlock(m02_couplers_to_auto_cc_ARLOCK),
        .s_axi_arprot(m02_couplers_to_auto_cc_ARPROT),
        .s_axi_arqos(m02_couplers_to_auto_cc_ARQOS),
        .s_axi_arready(m02_couplers_to_auto_cc_ARREADY),
        .s_axi_arregion(m02_couplers_to_auto_cc_ARREGION),
        .s_axi_arsize(m02_couplers_to_auto_cc_ARSIZE),
        .s_axi_arvalid(m02_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m02_couplers_to_auto_cc_AWADDR[28:0]),
        .s_axi_awburst(m02_couplers_to_auto_cc_AWBURST),
        .s_axi_awcache(m02_couplers_to_auto_cc_AWCACHE),
        .s_axi_awid(m02_couplers_to_auto_cc_AWID),
        .s_axi_awlen(m02_couplers_to_auto_cc_AWLEN),
        .s_axi_awlock(m02_couplers_to_auto_cc_AWLOCK),
        .s_axi_awprot(m02_couplers_to_auto_cc_AWPROT),
        .s_axi_awqos(m02_couplers_to_auto_cc_AWQOS),
        .s_axi_awready(m02_couplers_to_auto_cc_AWREADY),
        .s_axi_awregion(m02_couplers_to_auto_cc_AWREGION),
        .s_axi_awsize(m02_couplers_to_auto_cc_AWSIZE),
        .s_axi_awvalid(m02_couplers_to_auto_cc_AWVALID),
        .s_axi_bid(m02_couplers_to_auto_cc_BID),
        .s_axi_bready(m02_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m02_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m02_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m02_couplers_to_auto_cc_RDATA),
        .s_axi_rid(m02_couplers_to_auto_cc_RID),
        .s_axi_rlast(m02_couplers_to_auto_cc_RLAST),
        .s_axi_rready(m02_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m02_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m02_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m02_couplers_to_auto_cc_WDATA),
        .s_axi_wlast(m02_couplers_to_auto_cc_WLAST),
        .s_axi_wready(m02_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m02_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m02_couplers_to_auto_cc_WVALID));
endmodule

module m02_couplers_imp_ZVQPN4
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m02_couplers_to_m02_couplers_ARADDR;
  wire [2:0]m02_couplers_to_m02_couplers_ARPROT;
  wire [0:0]m02_couplers_to_m02_couplers_ARREADY;
  wire [0:0]m02_couplers_to_m02_couplers_ARVALID;
  wire [31:0]m02_couplers_to_m02_couplers_AWADDR;
  wire [2:0]m02_couplers_to_m02_couplers_AWPROT;
  wire [0:0]m02_couplers_to_m02_couplers_AWREADY;
  wire [0:0]m02_couplers_to_m02_couplers_AWVALID;
  wire [0:0]m02_couplers_to_m02_couplers_BREADY;
  wire [1:0]m02_couplers_to_m02_couplers_BRESP;
  wire [0:0]m02_couplers_to_m02_couplers_BVALID;
  wire [31:0]m02_couplers_to_m02_couplers_RDATA;
  wire [0:0]m02_couplers_to_m02_couplers_RREADY;
  wire [1:0]m02_couplers_to_m02_couplers_RRESP;
  wire [0:0]m02_couplers_to_m02_couplers_RVALID;
  wire [31:0]m02_couplers_to_m02_couplers_WDATA;
  wire [0:0]m02_couplers_to_m02_couplers_WREADY;
  wire [3:0]m02_couplers_to_m02_couplers_WSTRB;
  wire [0:0]m02_couplers_to_m02_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m02_couplers_to_m02_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m02_couplers_to_m02_couplers_ARPROT;
  assign M_AXI_arvalid[0] = m02_couplers_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m02_couplers_to_m02_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m02_couplers_to_m02_couplers_AWPROT;
  assign M_AXI_awvalid[0] = m02_couplers_to_m02_couplers_AWVALID;
  assign M_AXI_bready[0] = m02_couplers_to_m02_couplers_BREADY;
  assign M_AXI_rready[0] = m02_couplers_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m02_couplers_to_m02_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m02_couplers_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m02_couplers_to_m02_couplers_WVALID;
  assign S_AXI_arready[0] = m02_couplers_to_m02_couplers_ARREADY;
  assign S_AXI_awready[0] = m02_couplers_to_m02_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m02_couplers_to_m02_couplers_BRESP;
  assign S_AXI_bvalid[0] = m02_couplers_to_m02_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m02_couplers_to_m02_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m02_couplers_to_m02_couplers_RRESP;
  assign S_AXI_rvalid[0] = m02_couplers_to_m02_couplers_RVALID;
  assign S_AXI_wready[0] = m02_couplers_to_m02_couplers_WREADY;
  assign m02_couplers_to_m02_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m02_couplers_to_m02_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m02_couplers_to_m02_couplers_ARREADY = M_AXI_arready[0];
  assign m02_couplers_to_m02_couplers_ARVALID = S_AXI_arvalid[0];
  assign m02_couplers_to_m02_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m02_couplers_to_m02_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m02_couplers_to_m02_couplers_AWREADY = M_AXI_awready[0];
  assign m02_couplers_to_m02_couplers_AWVALID = S_AXI_awvalid[0];
  assign m02_couplers_to_m02_couplers_BREADY = S_AXI_bready[0];
  assign m02_couplers_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign m02_couplers_to_m02_couplers_BVALID = M_AXI_bvalid[0];
  assign m02_couplers_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign m02_couplers_to_m02_couplers_RREADY = S_AXI_rready[0];
  assign m02_couplers_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign m02_couplers_to_m02_couplers_RVALID = M_AXI_rvalid[0];
  assign m02_couplers_to_m02_couplers_WDATA = S_AXI_wdata[31:0];
  assign m02_couplers_to_m02_couplers_WREADY = M_AXI_wready[0];
  assign m02_couplers_to_m02_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m02_couplers_to_m02_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m03_couplers_imp_1K1IDK0
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [3:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [3:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output [0:0]M_AXI_awvalid;
  input [3:0]M_AXI_bid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [63:0]M_AXI_rdata;
  input [3:0]M_AXI_rid;
  input [0:0]M_AXI_rlast;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [63:0]M_AXI_wdata;
  output [0:0]M_AXI_wlast;
  input [0:0]M_AXI_wready;
  output [7:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [3:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [3:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awvalid;
  output [3:0]S_AXI_bid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [63:0]S_AXI_rdata;
  output [3:0]S_AXI_rid;
  output [0:0]S_AXI_rlast;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [63:0]S_AXI_wdata;
  input [0:0]S_AXI_wlast;
  output [0:0]S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m03_couplers_to_m03_couplers_ARADDR;
  wire [1:0]m03_couplers_to_m03_couplers_ARBURST;
  wire [3:0]m03_couplers_to_m03_couplers_ARCACHE;
  wire [3:0]m03_couplers_to_m03_couplers_ARID;
  wire [7:0]m03_couplers_to_m03_couplers_ARLEN;
  wire [0:0]m03_couplers_to_m03_couplers_ARLOCK;
  wire [2:0]m03_couplers_to_m03_couplers_ARPROT;
  wire [0:0]m03_couplers_to_m03_couplers_ARREADY;
  wire [2:0]m03_couplers_to_m03_couplers_ARSIZE;
  wire [0:0]m03_couplers_to_m03_couplers_ARVALID;
  wire [31:0]m03_couplers_to_m03_couplers_AWADDR;
  wire [1:0]m03_couplers_to_m03_couplers_AWBURST;
  wire [3:0]m03_couplers_to_m03_couplers_AWCACHE;
  wire [3:0]m03_couplers_to_m03_couplers_AWID;
  wire [7:0]m03_couplers_to_m03_couplers_AWLEN;
  wire [0:0]m03_couplers_to_m03_couplers_AWLOCK;
  wire [2:0]m03_couplers_to_m03_couplers_AWPROT;
  wire [0:0]m03_couplers_to_m03_couplers_AWREADY;
  wire [2:0]m03_couplers_to_m03_couplers_AWSIZE;
  wire [0:0]m03_couplers_to_m03_couplers_AWVALID;
  wire [3:0]m03_couplers_to_m03_couplers_BID;
  wire [0:0]m03_couplers_to_m03_couplers_BREADY;
  wire [1:0]m03_couplers_to_m03_couplers_BRESP;
  wire [0:0]m03_couplers_to_m03_couplers_BVALID;
  wire [63:0]m03_couplers_to_m03_couplers_RDATA;
  wire [3:0]m03_couplers_to_m03_couplers_RID;
  wire [0:0]m03_couplers_to_m03_couplers_RLAST;
  wire [0:0]m03_couplers_to_m03_couplers_RREADY;
  wire [1:0]m03_couplers_to_m03_couplers_RRESP;
  wire [0:0]m03_couplers_to_m03_couplers_RVALID;
  wire [63:0]m03_couplers_to_m03_couplers_WDATA;
  wire [0:0]m03_couplers_to_m03_couplers_WLAST;
  wire [0:0]m03_couplers_to_m03_couplers_WREADY;
  wire [7:0]m03_couplers_to_m03_couplers_WSTRB;
  wire [0:0]m03_couplers_to_m03_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m03_couplers_to_m03_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = m03_couplers_to_m03_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = m03_couplers_to_m03_couplers_ARCACHE;
  assign M_AXI_arid[3:0] = m03_couplers_to_m03_couplers_ARID;
  assign M_AXI_arlen[7:0] = m03_couplers_to_m03_couplers_ARLEN;
  assign M_AXI_arlock[0] = m03_couplers_to_m03_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = m03_couplers_to_m03_couplers_ARPROT;
  assign M_AXI_arsize[2:0] = m03_couplers_to_m03_couplers_ARSIZE;
  assign M_AXI_arvalid[0] = m03_couplers_to_m03_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m03_couplers_to_m03_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = m03_couplers_to_m03_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = m03_couplers_to_m03_couplers_AWCACHE;
  assign M_AXI_awid[3:0] = m03_couplers_to_m03_couplers_AWID;
  assign M_AXI_awlen[7:0] = m03_couplers_to_m03_couplers_AWLEN;
  assign M_AXI_awlock[0] = m03_couplers_to_m03_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = m03_couplers_to_m03_couplers_AWPROT;
  assign M_AXI_awsize[2:0] = m03_couplers_to_m03_couplers_AWSIZE;
  assign M_AXI_awvalid[0] = m03_couplers_to_m03_couplers_AWVALID;
  assign M_AXI_bready[0] = m03_couplers_to_m03_couplers_BREADY;
  assign M_AXI_rready[0] = m03_couplers_to_m03_couplers_RREADY;
  assign M_AXI_wdata[63:0] = m03_couplers_to_m03_couplers_WDATA;
  assign M_AXI_wlast[0] = m03_couplers_to_m03_couplers_WLAST;
  assign M_AXI_wstrb[7:0] = m03_couplers_to_m03_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m03_couplers_to_m03_couplers_WVALID;
  assign S_AXI_arready[0] = m03_couplers_to_m03_couplers_ARREADY;
  assign S_AXI_awready[0] = m03_couplers_to_m03_couplers_AWREADY;
  assign S_AXI_bid[3:0] = m03_couplers_to_m03_couplers_BID;
  assign S_AXI_bresp[1:0] = m03_couplers_to_m03_couplers_BRESP;
  assign S_AXI_bvalid[0] = m03_couplers_to_m03_couplers_BVALID;
  assign S_AXI_rdata[63:0] = m03_couplers_to_m03_couplers_RDATA;
  assign S_AXI_rid[3:0] = m03_couplers_to_m03_couplers_RID;
  assign S_AXI_rlast[0] = m03_couplers_to_m03_couplers_RLAST;
  assign S_AXI_rresp[1:0] = m03_couplers_to_m03_couplers_RRESP;
  assign S_AXI_rvalid[0] = m03_couplers_to_m03_couplers_RVALID;
  assign S_AXI_wready[0] = m03_couplers_to_m03_couplers_WREADY;
  assign m03_couplers_to_m03_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m03_couplers_to_m03_couplers_ARBURST = S_AXI_arburst[1:0];
  assign m03_couplers_to_m03_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign m03_couplers_to_m03_couplers_ARID = S_AXI_arid[3:0];
  assign m03_couplers_to_m03_couplers_ARLEN = S_AXI_arlen[7:0];
  assign m03_couplers_to_m03_couplers_ARLOCK = S_AXI_arlock[0];
  assign m03_couplers_to_m03_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m03_couplers_to_m03_couplers_ARREADY = M_AXI_arready[0];
  assign m03_couplers_to_m03_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign m03_couplers_to_m03_couplers_ARVALID = S_AXI_arvalid[0];
  assign m03_couplers_to_m03_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m03_couplers_to_m03_couplers_AWBURST = S_AXI_awburst[1:0];
  assign m03_couplers_to_m03_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign m03_couplers_to_m03_couplers_AWID = S_AXI_awid[3:0];
  assign m03_couplers_to_m03_couplers_AWLEN = S_AXI_awlen[7:0];
  assign m03_couplers_to_m03_couplers_AWLOCK = S_AXI_awlock[0];
  assign m03_couplers_to_m03_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m03_couplers_to_m03_couplers_AWREADY = M_AXI_awready[0];
  assign m03_couplers_to_m03_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign m03_couplers_to_m03_couplers_AWVALID = S_AXI_awvalid[0];
  assign m03_couplers_to_m03_couplers_BID = M_AXI_bid[3:0];
  assign m03_couplers_to_m03_couplers_BREADY = S_AXI_bready[0];
  assign m03_couplers_to_m03_couplers_BRESP = M_AXI_bresp[1:0];
  assign m03_couplers_to_m03_couplers_BVALID = M_AXI_bvalid[0];
  assign m03_couplers_to_m03_couplers_RDATA = M_AXI_rdata[63:0];
  assign m03_couplers_to_m03_couplers_RID = M_AXI_rid[3:0];
  assign m03_couplers_to_m03_couplers_RLAST = M_AXI_rlast[0];
  assign m03_couplers_to_m03_couplers_RREADY = S_AXI_rready[0];
  assign m03_couplers_to_m03_couplers_RRESP = M_AXI_rresp[1:0];
  assign m03_couplers_to_m03_couplers_RVALID = M_AXI_rvalid[0];
  assign m03_couplers_to_m03_couplers_WDATA = S_AXI_wdata[63:0];
  assign m03_couplers_to_m03_couplers_WLAST = S_AXI_wlast[0];
  assign m03_couplers_to_m03_couplers_WREADY = M_AXI_wready[0];
  assign m03_couplers_to_m03_couplers_WSTRB = S_AXI_wstrb[7:0];
  assign m03_couplers_to_m03_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m03_couplers_imp_UIW1IP
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m03_couplers_to_m03_couplers_ARADDR;
  wire [0:0]m03_couplers_to_m03_couplers_ARREADY;
  wire [0:0]m03_couplers_to_m03_couplers_ARVALID;
  wire [31:0]m03_couplers_to_m03_couplers_AWADDR;
  wire [0:0]m03_couplers_to_m03_couplers_AWREADY;
  wire [0:0]m03_couplers_to_m03_couplers_AWVALID;
  wire [0:0]m03_couplers_to_m03_couplers_BREADY;
  wire [1:0]m03_couplers_to_m03_couplers_BRESP;
  wire [0:0]m03_couplers_to_m03_couplers_BVALID;
  wire [31:0]m03_couplers_to_m03_couplers_RDATA;
  wire [0:0]m03_couplers_to_m03_couplers_RREADY;
  wire [1:0]m03_couplers_to_m03_couplers_RRESP;
  wire [0:0]m03_couplers_to_m03_couplers_RVALID;
  wire [31:0]m03_couplers_to_m03_couplers_WDATA;
  wire [0:0]m03_couplers_to_m03_couplers_WREADY;
  wire [3:0]m03_couplers_to_m03_couplers_WSTRB;
  wire [0:0]m03_couplers_to_m03_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m03_couplers_to_m03_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m03_couplers_to_m03_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m03_couplers_to_m03_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m03_couplers_to_m03_couplers_AWVALID;
  assign M_AXI_bready[0] = m03_couplers_to_m03_couplers_BREADY;
  assign M_AXI_rready[0] = m03_couplers_to_m03_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m03_couplers_to_m03_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m03_couplers_to_m03_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m03_couplers_to_m03_couplers_WVALID;
  assign S_AXI_arready[0] = m03_couplers_to_m03_couplers_ARREADY;
  assign S_AXI_awready[0] = m03_couplers_to_m03_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m03_couplers_to_m03_couplers_BRESP;
  assign S_AXI_bvalid[0] = m03_couplers_to_m03_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m03_couplers_to_m03_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m03_couplers_to_m03_couplers_RRESP;
  assign S_AXI_rvalid[0] = m03_couplers_to_m03_couplers_RVALID;
  assign S_AXI_wready[0] = m03_couplers_to_m03_couplers_WREADY;
  assign m03_couplers_to_m03_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m03_couplers_to_m03_couplers_ARREADY = M_AXI_arready[0];
  assign m03_couplers_to_m03_couplers_ARVALID = S_AXI_arvalid[0];
  assign m03_couplers_to_m03_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m03_couplers_to_m03_couplers_AWREADY = M_AXI_awready[0];
  assign m03_couplers_to_m03_couplers_AWVALID = S_AXI_awvalid[0];
  assign m03_couplers_to_m03_couplers_BREADY = S_AXI_bready[0];
  assign m03_couplers_to_m03_couplers_BRESP = M_AXI_bresp[1:0];
  assign m03_couplers_to_m03_couplers_BVALID = M_AXI_bvalid[0];
  assign m03_couplers_to_m03_couplers_RDATA = M_AXI_rdata[31:0];
  assign m03_couplers_to_m03_couplers_RREADY = S_AXI_rready[0];
  assign m03_couplers_to_m03_couplers_RRESP = M_AXI_rresp[1:0];
  assign m03_couplers_to_m03_couplers_RVALID = M_AXI_rvalid[0];
  assign m03_couplers_to_m03_couplers_WDATA = S_AXI_wdata[31:0];
  assign m03_couplers_to_m03_couplers_WREADY = M_AXI_wready[0];
  assign m03_couplers_to_m03_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m03_couplers_to_m03_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m04_couplers_imp_13Q5LUD
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m04_couplers_to_m04_couplers_ARADDR;
  wire [0:0]m04_couplers_to_m04_couplers_ARREADY;
  wire [0:0]m04_couplers_to_m04_couplers_ARVALID;
  wire [31:0]m04_couplers_to_m04_couplers_AWADDR;
  wire [0:0]m04_couplers_to_m04_couplers_AWREADY;
  wire [0:0]m04_couplers_to_m04_couplers_AWVALID;
  wire [0:0]m04_couplers_to_m04_couplers_BREADY;
  wire [1:0]m04_couplers_to_m04_couplers_BRESP;
  wire [0:0]m04_couplers_to_m04_couplers_BVALID;
  wire [31:0]m04_couplers_to_m04_couplers_RDATA;
  wire [0:0]m04_couplers_to_m04_couplers_RREADY;
  wire [1:0]m04_couplers_to_m04_couplers_RRESP;
  wire [0:0]m04_couplers_to_m04_couplers_RVALID;
  wire [31:0]m04_couplers_to_m04_couplers_WDATA;
  wire [0:0]m04_couplers_to_m04_couplers_WREADY;
  wire [3:0]m04_couplers_to_m04_couplers_WSTRB;
  wire [0:0]m04_couplers_to_m04_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m04_couplers_to_m04_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m04_couplers_to_m04_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m04_couplers_to_m04_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m04_couplers_to_m04_couplers_AWVALID;
  assign M_AXI_bready[0] = m04_couplers_to_m04_couplers_BREADY;
  assign M_AXI_rready[0] = m04_couplers_to_m04_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m04_couplers_to_m04_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m04_couplers_to_m04_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m04_couplers_to_m04_couplers_WVALID;
  assign S_AXI_arready[0] = m04_couplers_to_m04_couplers_ARREADY;
  assign S_AXI_awready[0] = m04_couplers_to_m04_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m04_couplers_to_m04_couplers_BRESP;
  assign S_AXI_bvalid[0] = m04_couplers_to_m04_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m04_couplers_to_m04_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m04_couplers_to_m04_couplers_RRESP;
  assign S_AXI_rvalid[0] = m04_couplers_to_m04_couplers_RVALID;
  assign S_AXI_wready[0] = m04_couplers_to_m04_couplers_WREADY;
  assign m04_couplers_to_m04_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m04_couplers_to_m04_couplers_ARREADY = M_AXI_arready[0];
  assign m04_couplers_to_m04_couplers_ARVALID = S_AXI_arvalid[0];
  assign m04_couplers_to_m04_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m04_couplers_to_m04_couplers_AWREADY = M_AXI_awready[0];
  assign m04_couplers_to_m04_couplers_AWVALID = S_AXI_awvalid[0];
  assign m04_couplers_to_m04_couplers_BREADY = S_AXI_bready[0];
  assign m04_couplers_to_m04_couplers_BRESP = M_AXI_bresp[1:0];
  assign m04_couplers_to_m04_couplers_BVALID = M_AXI_bvalid[0];
  assign m04_couplers_to_m04_couplers_RDATA = M_AXI_rdata[31:0];
  assign m04_couplers_to_m04_couplers_RREADY = S_AXI_rready[0];
  assign m04_couplers_to_m04_couplers_RRESP = M_AXI_rresp[1:0];
  assign m04_couplers_to_m04_couplers_RVALID = M_AXI_rvalid[0];
  assign m04_couplers_to_m04_couplers_WDATA = S_AXI_wdata[31:0];
  assign m04_couplers_to_m04_couplers_WREADY = M_AXI_wready[0];
  assign m04_couplers_to_m04_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m04_couplers_to_m04_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m05_couplers_imp_QRWO50
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m05_couplers_to_m05_couplers_ARADDR;
  wire m05_couplers_to_m05_couplers_ARREADY;
  wire m05_couplers_to_m05_couplers_ARVALID;
  wire [31:0]m05_couplers_to_m05_couplers_AWADDR;
  wire m05_couplers_to_m05_couplers_AWREADY;
  wire m05_couplers_to_m05_couplers_AWVALID;
  wire m05_couplers_to_m05_couplers_BREADY;
  wire [1:0]m05_couplers_to_m05_couplers_BRESP;
  wire m05_couplers_to_m05_couplers_BVALID;
  wire [31:0]m05_couplers_to_m05_couplers_RDATA;
  wire m05_couplers_to_m05_couplers_RREADY;
  wire [1:0]m05_couplers_to_m05_couplers_RRESP;
  wire m05_couplers_to_m05_couplers_RVALID;
  wire [31:0]m05_couplers_to_m05_couplers_WDATA;
  wire m05_couplers_to_m05_couplers_WREADY;
  wire [3:0]m05_couplers_to_m05_couplers_WSTRB;
  wire m05_couplers_to_m05_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m05_couplers_to_m05_couplers_ARADDR;
  assign M_AXI_arvalid = m05_couplers_to_m05_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m05_couplers_to_m05_couplers_AWADDR;
  assign M_AXI_awvalid = m05_couplers_to_m05_couplers_AWVALID;
  assign M_AXI_bready = m05_couplers_to_m05_couplers_BREADY;
  assign M_AXI_rready = m05_couplers_to_m05_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m05_couplers_to_m05_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m05_couplers_to_m05_couplers_WSTRB;
  assign M_AXI_wvalid = m05_couplers_to_m05_couplers_WVALID;
  assign S_AXI_arready = m05_couplers_to_m05_couplers_ARREADY;
  assign S_AXI_awready = m05_couplers_to_m05_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m05_couplers_to_m05_couplers_BRESP;
  assign S_AXI_bvalid = m05_couplers_to_m05_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m05_couplers_to_m05_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m05_couplers_to_m05_couplers_RRESP;
  assign S_AXI_rvalid = m05_couplers_to_m05_couplers_RVALID;
  assign S_AXI_wready = m05_couplers_to_m05_couplers_WREADY;
  assign m05_couplers_to_m05_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m05_couplers_to_m05_couplers_ARREADY = M_AXI_arready;
  assign m05_couplers_to_m05_couplers_ARVALID = S_AXI_arvalid;
  assign m05_couplers_to_m05_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m05_couplers_to_m05_couplers_AWREADY = M_AXI_awready;
  assign m05_couplers_to_m05_couplers_AWVALID = S_AXI_awvalid;
  assign m05_couplers_to_m05_couplers_BREADY = S_AXI_bready;
  assign m05_couplers_to_m05_couplers_BRESP = M_AXI_bresp[1:0];
  assign m05_couplers_to_m05_couplers_BVALID = M_AXI_bvalid;
  assign m05_couplers_to_m05_couplers_RDATA = M_AXI_rdata[31:0];
  assign m05_couplers_to_m05_couplers_RREADY = S_AXI_rready;
  assign m05_couplers_to_m05_couplers_RRESP = M_AXI_rresp[1:0];
  assign m05_couplers_to_m05_couplers_RVALID = M_AXI_rvalid;
  assign m05_couplers_to_m05_couplers_WDATA = S_AXI_wdata[31:0];
  assign m05_couplers_to_m05_couplers_WREADY = M_AXI_wready;
  assign m05_couplers_to_m05_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m05_couplers_to_m05_couplers_WVALID = S_AXI_wvalid;
endmodule

module m06_couplers_imp_12K61CM
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_cc_to_m06_couplers_ARADDR;
  wire auto_cc_to_m06_couplers_ARREADY;
  wire auto_cc_to_m06_couplers_ARVALID;
  wire [31:0]auto_cc_to_m06_couplers_AWADDR;
  wire auto_cc_to_m06_couplers_AWREADY;
  wire auto_cc_to_m06_couplers_AWVALID;
  wire auto_cc_to_m06_couplers_BREADY;
  wire [1:0]auto_cc_to_m06_couplers_BRESP;
  wire auto_cc_to_m06_couplers_BVALID;
  wire [31:0]auto_cc_to_m06_couplers_RDATA;
  wire auto_cc_to_m06_couplers_RREADY;
  wire [1:0]auto_cc_to_m06_couplers_RRESP;
  wire auto_cc_to_m06_couplers_RVALID;
  wire [31:0]auto_cc_to_m06_couplers_WDATA;
  wire auto_cc_to_m06_couplers_WREADY;
  wire [3:0]auto_cc_to_m06_couplers_WSTRB;
  wire auto_cc_to_m06_couplers_WVALID;
  wire [31:0]m06_couplers_to_auto_cc_ARADDR;
  wire [2:0]m06_couplers_to_auto_cc_ARPROT;
  wire m06_couplers_to_auto_cc_ARREADY;
  wire m06_couplers_to_auto_cc_ARVALID;
  wire [31:0]m06_couplers_to_auto_cc_AWADDR;
  wire [2:0]m06_couplers_to_auto_cc_AWPROT;
  wire m06_couplers_to_auto_cc_AWREADY;
  wire m06_couplers_to_auto_cc_AWVALID;
  wire m06_couplers_to_auto_cc_BREADY;
  wire [1:0]m06_couplers_to_auto_cc_BRESP;
  wire m06_couplers_to_auto_cc_BVALID;
  wire [31:0]m06_couplers_to_auto_cc_RDATA;
  wire m06_couplers_to_auto_cc_RREADY;
  wire [1:0]m06_couplers_to_auto_cc_RRESP;
  wire m06_couplers_to_auto_cc_RVALID;
  wire [31:0]m06_couplers_to_auto_cc_WDATA;
  wire m06_couplers_to_auto_cc_WREADY;
  wire [3:0]m06_couplers_to_auto_cc_WSTRB;
  wire m06_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = auto_cc_to_m06_couplers_ARADDR;
  assign M_AXI_arvalid = auto_cc_to_m06_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_cc_to_m06_couplers_AWADDR;
  assign M_AXI_awvalid = auto_cc_to_m06_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m06_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m06_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_m06_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_m06_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_m06_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m06_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m06_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m06_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m06_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m06_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m06_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m06_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m06_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m06_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m06_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m06_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m06_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m06_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_m06_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m06_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m06_couplers_WREADY = M_AXI_wready;
  assign m06_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign m06_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m06_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m06_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
  assign m06_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m06_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m06_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m06_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m06_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m06_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m06_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  icyradio_auto_cc_1 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m06_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arready(auto_cc_to_m06_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m06_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m06_couplers_AWADDR),
        .m_axi_awready(auto_cc_to_m06_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m06_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m06_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m06_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m06_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m06_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m06_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m06_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m06_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m06_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m06_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m06_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m06_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m06_couplers_to_auto_cc_ARADDR),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m06_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m06_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m06_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m06_couplers_to_auto_cc_AWADDR),
        .s_axi_awprot(m06_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m06_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m06_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m06_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m06_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m06_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m06_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m06_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m06_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m06_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m06_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m06_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m06_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m06_couplers_to_auto_cc_WVALID));
endmodule

module m07_couplers_imp_S7JYYF
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m07_couplers_to_m07_couplers_ARADDR;
  wire [2:0]m07_couplers_to_m07_couplers_ARPROT;
  wire m07_couplers_to_m07_couplers_ARREADY;
  wire m07_couplers_to_m07_couplers_ARVALID;
  wire [31:0]m07_couplers_to_m07_couplers_AWADDR;
  wire [2:0]m07_couplers_to_m07_couplers_AWPROT;
  wire m07_couplers_to_m07_couplers_AWREADY;
  wire m07_couplers_to_m07_couplers_AWVALID;
  wire m07_couplers_to_m07_couplers_BREADY;
  wire [1:0]m07_couplers_to_m07_couplers_BRESP;
  wire m07_couplers_to_m07_couplers_BVALID;
  wire [31:0]m07_couplers_to_m07_couplers_RDATA;
  wire m07_couplers_to_m07_couplers_RREADY;
  wire [1:0]m07_couplers_to_m07_couplers_RRESP;
  wire m07_couplers_to_m07_couplers_RVALID;
  wire [31:0]m07_couplers_to_m07_couplers_WDATA;
  wire m07_couplers_to_m07_couplers_WREADY;
  wire [3:0]m07_couplers_to_m07_couplers_WSTRB;
  wire m07_couplers_to_m07_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m07_couplers_to_m07_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m07_couplers_to_m07_couplers_ARPROT;
  assign M_AXI_arvalid = m07_couplers_to_m07_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m07_couplers_to_m07_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m07_couplers_to_m07_couplers_AWPROT;
  assign M_AXI_awvalid = m07_couplers_to_m07_couplers_AWVALID;
  assign M_AXI_bready = m07_couplers_to_m07_couplers_BREADY;
  assign M_AXI_rready = m07_couplers_to_m07_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m07_couplers_to_m07_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m07_couplers_to_m07_couplers_WSTRB;
  assign M_AXI_wvalid = m07_couplers_to_m07_couplers_WVALID;
  assign S_AXI_arready = m07_couplers_to_m07_couplers_ARREADY;
  assign S_AXI_awready = m07_couplers_to_m07_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m07_couplers_to_m07_couplers_BRESP;
  assign S_AXI_bvalid = m07_couplers_to_m07_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m07_couplers_to_m07_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m07_couplers_to_m07_couplers_RRESP;
  assign S_AXI_rvalid = m07_couplers_to_m07_couplers_RVALID;
  assign S_AXI_wready = m07_couplers_to_m07_couplers_WREADY;
  assign m07_couplers_to_m07_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m07_couplers_to_m07_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m07_couplers_to_m07_couplers_ARREADY = M_AXI_arready;
  assign m07_couplers_to_m07_couplers_ARVALID = S_AXI_arvalid;
  assign m07_couplers_to_m07_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m07_couplers_to_m07_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m07_couplers_to_m07_couplers_AWREADY = M_AXI_awready;
  assign m07_couplers_to_m07_couplers_AWVALID = S_AXI_awvalid;
  assign m07_couplers_to_m07_couplers_BREADY = S_AXI_bready;
  assign m07_couplers_to_m07_couplers_BRESP = M_AXI_bresp[1:0];
  assign m07_couplers_to_m07_couplers_BVALID = M_AXI_bvalid;
  assign m07_couplers_to_m07_couplers_RDATA = M_AXI_rdata[31:0];
  assign m07_couplers_to_m07_couplers_RREADY = S_AXI_rready;
  assign m07_couplers_to_m07_couplers_RRESP = M_AXI_rresp[1:0];
  assign m07_couplers_to_m07_couplers_RVALID = M_AXI_rvalid;
  assign m07_couplers_to_m07_couplers_WDATA = S_AXI_wdata[31:0];
  assign m07_couplers_to_m07_couplers_WREADY = M_AXI_wready;
  assign m07_couplers_to_m07_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m07_couplers_to_m07_couplers_WVALID = S_AXI_wvalid;
endmodule

module m08_couplers_imp_150MC4F
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m08_couplers_to_m08_couplers_ARADDR;
  wire [2:0]m08_couplers_to_m08_couplers_ARPROT;
  wire [0:0]m08_couplers_to_m08_couplers_ARREADY;
  wire [0:0]m08_couplers_to_m08_couplers_ARVALID;
  wire [31:0]m08_couplers_to_m08_couplers_AWADDR;
  wire [2:0]m08_couplers_to_m08_couplers_AWPROT;
  wire [0:0]m08_couplers_to_m08_couplers_AWREADY;
  wire [0:0]m08_couplers_to_m08_couplers_AWVALID;
  wire [0:0]m08_couplers_to_m08_couplers_BREADY;
  wire [1:0]m08_couplers_to_m08_couplers_BRESP;
  wire [0:0]m08_couplers_to_m08_couplers_BVALID;
  wire [31:0]m08_couplers_to_m08_couplers_RDATA;
  wire [0:0]m08_couplers_to_m08_couplers_RREADY;
  wire [1:0]m08_couplers_to_m08_couplers_RRESP;
  wire [0:0]m08_couplers_to_m08_couplers_RVALID;
  wire [31:0]m08_couplers_to_m08_couplers_WDATA;
  wire [0:0]m08_couplers_to_m08_couplers_WREADY;
  wire [3:0]m08_couplers_to_m08_couplers_WSTRB;
  wire [0:0]m08_couplers_to_m08_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m08_couplers_to_m08_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m08_couplers_to_m08_couplers_ARPROT;
  assign M_AXI_arvalid[0] = m08_couplers_to_m08_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m08_couplers_to_m08_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m08_couplers_to_m08_couplers_AWPROT;
  assign M_AXI_awvalid[0] = m08_couplers_to_m08_couplers_AWVALID;
  assign M_AXI_bready[0] = m08_couplers_to_m08_couplers_BREADY;
  assign M_AXI_rready[0] = m08_couplers_to_m08_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m08_couplers_to_m08_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m08_couplers_to_m08_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m08_couplers_to_m08_couplers_WVALID;
  assign S_AXI_arready[0] = m08_couplers_to_m08_couplers_ARREADY;
  assign S_AXI_awready[0] = m08_couplers_to_m08_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m08_couplers_to_m08_couplers_BRESP;
  assign S_AXI_bvalid[0] = m08_couplers_to_m08_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m08_couplers_to_m08_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m08_couplers_to_m08_couplers_RRESP;
  assign S_AXI_rvalid[0] = m08_couplers_to_m08_couplers_RVALID;
  assign S_AXI_wready[0] = m08_couplers_to_m08_couplers_WREADY;
  assign m08_couplers_to_m08_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m08_couplers_to_m08_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m08_couplers_to_m08_couplers_ARREADY = M_AXI_arready[0];
  assign m08_couplers_to_m08_couplers_ARVALID = S_AXI_arvalid[0];
  assign m08_couplers_to_m08_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m08_couplers_to_m08_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m08_couplers_to_m08_couplers_AWREADY = M_AXI_awready[0];
  assign m08_couplers_to_m08_couplers_AWVALID = S_AXI_awvalid[0];
  assign m08_couplers_to_m08_couplers_BREADY = S_AXI_bready[0];
  assign m08_couplers_to_m08_couplers_BRESP = M_AXI_bresp[1:0];
  assign m08_couplers_to_m08_couplers_BVALID = M_AXI_bvalid[0];
  assign m08_couplers_to_m08_couplers_RDATA = M_AXI_rdata[31:0];
  assign m08_couplers_to_m08_couplers_RREADY = S_AXI_rready[0];
  assign m08_couplers_to_m08_couplers_RRESP = M_AXI_rresp[1:0];
  assign m08_couplers_to_m08_couplers_RVALID = M_AXI_rvalid[0];
  assign m08_couplers_to_m08_couplers_WDATA = S_AXI_wdata[31:0];
  assign m08_couplers_to_m08_couplers_WREADY = M_AXI_wready[0];
  assign m08_couplers_to_m08_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m08_couplers_to_m08_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m09_couplers_imp_YJUQF2
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m09_couplers_to_m09_couplers_ARADDR;
  wire [2:0]m09_couplers_to_m09_couplers_ARPROT;
  wire [0:0]m09_couplers_to_m09_couplers_ARREADY;
  wire [0:0]m09_couplers_to_m09_couplers_ARVALID;
  wire [31:0]m09_couplers_to_m09_couplers_AWADDR;
  wire [2:0]m09_couplers_to_m09_couplers_AWPROT;
  wire [0:0]m09_couplers_to_m09_couplers_AWREADY;
  wire [0:0]m09_couplers_to_m09_couplers_AWVALID;
  wire [0:0]m09_couplers_to_m09_couplers_BREADY;
  wire [1:0]m09_couplers_to_m09_couplers_BRESP;
  wire [0:0]m09_couplers_to_m09_couplers_BVALID;
  wire [31:0]m09_couplers_to_m09_couplers_RDATA;
  wire [0:0]m09_couplers_to_m09_couplers_RREADY;
  wire [1:0]m09_couplers_to_m09_couplers_RRESP;
  wire [0:0]m09_couplers_to_m09_couplers_RVALID;
  wire [31:0]m09_couplers_to_m09_couplers_WDATA;
  wire [0:0]m09_couplers_to_m09_couplers_WREADY;
  wire [3:0]m09_couplers_to_m09_couplers_WSTRB;
  wire [0:0]m09_couplers_to_m09_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m09_couplers_to_m09_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m09_couplers_to_m09_couplers_ARPROT;
  assign M_AXI_arvalid[0] = m09_couplers_to_m09_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m09_couplers_to_m09_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m09_couplers_to_m09_couplers_AWPROT;
  assign M_AXI_awvalid[0] = m09_couplers_to_m09_couplers_AWVALID;
  assign M_AXI_bready[0] = m09_couplers_to_m09_couplers_BREADY;
  assign M_AXI_rready[0] = m09_couplers_to_m09_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m09_couplers_to_m09_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m09_couplers_to_m09_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m09_couplers_to_m09_couplers_WVALID;
  assign S_AXI_arready[0] = m09_couplers_to_m09_couplers_ARREADY;
  assign S_AXI_awready[0] = m09_couplers_to_m09_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m09_couplers_to_m09_couplers_BRESP;
  assign S_AXI_bvalid[0] = m09_couplers_to_m09_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m09_couplers_to_m09_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m09_couplers_to_m09_couplers_RRESP;
  assign S_AXI_rvalid[0] = m09_couplers_to_m09_couplers_RVALID;
  assign S_AXI_wready[0] = m09_couplers_to_m09_couplers_WREADY;
  assign m09_couplers_to_m09_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m09_couplers_to_m09_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m09_couplers_to_m09_couplers_ARREADY = M_AXI_arready[0];
  assign m09_couplers_to_m09_couplers_ARVALID = S_AXI_arvalid[0];
  assign m09_couplers_to_m09_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m09_couplers_to_m09_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m09_couplers_to_m09_couplers_AWREADY = M_AXI_awready[0];
  assign m09_couplers_to_m09_couplers_AWVALID = S_AXI_awvalid[0];
  assign m09_couplers_to_m09_couplers_BREADY = S_AXI_bready[0];
  assign m09_couplers_to_m09_couplers_BRESP = M_AXI_bresp[1:0];
  assign m09_couplers_to_m09_couplers_BVALID = M_AXI_bvalid[0];
  assign m09_couplers_to_m09_couplers_RDATA = M_AXI_rdata[31:0];
  assign m09_couplers_to_m09_couplers_RREADY = S_AXI_rready[0];
  assign m09_couplers_to_m09_couplers_RRESP = M_AXI_rresp[1:0];
  assign m09_couplers_to_m09_couplers_RVALID = M_AXI_rvalid[0];
  assign m09_couplers_to_m09_couplers_WDATA = S_AXI_wdata[31:0];
  assign m09_couplers_to_m09_couplers_WREADY = M_AXI_wready[0];
  assign m09_couplers_to_m09_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m09_couplers_to_m09_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m10_couplers_imp_N5305N
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m10_couplers_to_m10_couplers_ARADDR;
  wire [0:0]m10_couplers_to_m10_couplers_ARREADY;
  wire [0:0]m10_couplers_to_m10_couplers_ARVALID;
  wire [31:0]m10_couplers_to_m10_couplers_AWADDR;
  wire [0:0]m10_couplers_to_m10_couplers_AWREADY;
  wire [0:0]m10_couplers_to_m10_couplers_AWVALID;
  wire [0:0]m10_couplers_to_m10_couplers_BREADY;
  wire [1:0]m10_couplers_to_m10_couplers_BRESP;
  wire [0:0]m10_couplers_to_m10_couplers_BVALID;
  wire [31:0]m10_couplers_to_m10_couplers_RDATA;
  wire [0:0]m10_couplers_to_m10_couplers_RREADY;
  wire [1:0]m10_couplers_to_m10_couplers_RRESP;
  wire [0:0]m10_couplers_to_m10_couplers_RVALID;
  wire [31:0]m10_couplers_to_m10_couplers_WDATA;
  wire [0:0]m10_couplers_to_m10_couplers_WREADY;
  wire [3:0]m10_couplers_to_m10_couplers_WSTRB;
  wire [0:0]m10_couplers_to_m10_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m10_couplers_to_m10_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m10_couplers_to_m10_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m10_couplers_to_m10_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m10_couplers_to_m10_couplers_AWVALID;
  assign M_AXI_bready[0] = m10_couplers_to_m10_couplers_BREADY;
  assign M_AXI_rready[0] = m10_couplers_to_m10_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m10_couplers_to_m10_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m10_couplers_to_m10_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m10_couplers_to_m10_couplers_WVALID;
  assign S_AXI_arready[0] = m10_couplers_to_m10_couplers_ARREADY;
  assign S_AXI_awready[0] = m10_couplers_to_m10_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m10_couplers_to_m10_couplers_BRESP;
  assign S_AXI_bvalid[0] = m10_couplers_to_m10_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m10_couplers_to_m10_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m10_couplers_to_m10_couplers_RRESP;
  assign S_AXI_rvalid[0] = m10_couplers_to_m10_couplers_RVALID;
  assign S_AXI_wready[0] = m10_couplers_to_m10_couplers_WREADY;
  assign m10_couplers_to_m10_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m10_couplers_to_m10_couplers_ARREADY = M_AXI_arready[0];
  assign m10_couplers_to_m10_couplers_ARVALID = S_AXI_arvalid[0];
  assign m10_couplers_to_m10_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m10_couplers_to_m10_couplers_AWREADY = M_AXI_awready[0];
  assign m10_couplers_to_m10_couplers_AWVALID = S_AXI_awvalid[0];
  assign m10_couplers_to_m10_couplers_BREADY = S_AXI_bready[0];
  assign m10_couplers_to_m10_couplers_BRESP = M_AXI_bresp[1:0];
  assign m10_couplers_to_m10_couplers_BVALID = M_AXI_bvalid[0];
  assign m10_couplers_to_m10_couplers_RDATA = M_AXI_rdata[31:0];
  assign m10_couplers_to_m10_couplers_RREADY = S_AXI_rready[0];
  assign m10_couplers_to_m10_couplers_RRESP = M_AXI_rresp[1:0];
  assign m10_couplers_to_m10_couplers_RVALID = M_AXI_rvalid[0];
  assign m10_couplers_to_m10_couplers_WDATA = S_AXI_wdata[31:0];
  assign m10_couplers_to_m10_couplers_WREADY = M_AXI_wready[0];
  assign m10_couplers_to_m10_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m10_couplers_to_m10_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m11_couplers_imp_1G7Z3AI
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m11_couplers_to_m11_couplers_ARADDR;
  wire m11_couplers_to_m11_couplers_ARREADY;
  wire m11_couplers_to_m11_couplers_ARVALID;
  wire [31:0]m11_couplers_to_m11_couplers_AWADDR;
  wire m11_couplers_to_m11_couplers_AWREADY;
  wire m11_couplers_to_m11_couplers_AWVALID;
  wire m11_couplers_to_m11_couplers_BREADY;
  wire [1:0]m11_couplers_to_m11_couplers_BRESP;
  wire m11_couplers_to_m11_couplers_BVALID;
  wire [31:0]m11_couplers_to_m11_couplers_RDATA;
  wire m11_couplers_to_m11_couplers_RREADY;
  wire [1:0]m11_couplers_to_m11_couplers_RRESP;
  wire m11_couplers_to_m11_couplers_RVALID;
  wire [31:0]m11_couplers_to_m11_couplers_WDATA;
  wire m11_couplers_to_m11_couplers_WREADY;
  wire [3:0]m11_couplers_to_m11_couplers_WSTRB;
  wire m11_couplers_to_m11_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m11_couplers_to_m11_couplers_ARADDR;
  assign M_AXI_arvalid = m11_couplers_to_m11_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m11_couplers_to_m11_couplers_AWADDR;
  assign M_AXI_awvalid = m11_couplers_to_m11_couplers_AWVALID;
  assign M_AXI_bready = m11_couplers_to_m11_couplers_BREADY;
  assign M_AXI_rready = m11_couplers_to_m11_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m11_couplers_to_m11_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m11_couplers_to_m11_couplers_WSTRB;
  assign M_AXI_wvalid = m11_couplers_to_m11_couplers_WVALID;
  assign S_AXI_arready = m11_couplers_to_m11_couplers_ARREADY;
  assign S_AXI_awready = m11_couplers_to_m11_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m11_couplers_to_m11_couplers_BRESP;
  assign S_AXI_bvalid = m11_couplers_to_m11_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m11_couplers_to_m11_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m11_couplers_to_m11_couplers_RRESP;
  assign S_AXI_rvalid = m11_couplers_to_m11_couplers_RVALID;
  assign S_AXI_wready = m11_couplers_to_m11_couplers_WREADY;
  assign m11_couplers_to_m11_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m11_couplers_to_m11_couplers_ARREADY = M_AXI_arready;
  assign m11_couplers_to_m11_couplers_ARVALID = S_AXI_arvalid;
  assign m11_couplers_to_m11_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m11_couplers_to_m11_couplers_AWREADY = M_AXI_awready;
  assign m11_couplers_to_m11_couplers_AWVALID = S_AXI_awvalid;
  assign m11_couplers_to_m11_couplers_BREADY = S_AXI_bready;
  assign m11_couplers_to_m11_couplers_BRESP = M_AXI_bresp[1:0];
  assign m11_couplers_to_m11_couplers_BVALID = M_AXI_bvalid;
  assign m11_couplers_to_m11_couplers_RDATA = M_AXI_rdata[31:0];
  assign m11_couplers_to_m11_couplers_RREADY = S_AXI_rready;
  assign m11_couplers_to_m11_couplers_RRESP = M_AXI_rresp[1:0];
  assign m11_couplers_to_m11_couplers_RVALID = M_AXI_rvalid;
  assign m11_couplers_to_m11_couplers_WDATA = S_AXI_wdata[31:0];
  assign m11_couplers_to_m11_couplers_WREADY = M_AXI_wready;
  assign m11_couplers_to_m11_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m11_couplers_to_m11_couplers_WVALID = S_AXI_wvalid;
endmodule

module m12_couplers_imp_O214I0
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m12_couplers_to_m12_couplers_ARADDR;
  wire m12_couplers_to_m12_couplers_ARREADY;
  wire m12_couplers_to_m12_couplers_ARVALID;
  wire [31:0]m12_couplers_to_m12_couplers_AWADDR;
  wire m12_couplers_to_m12_couplers_AWREADY;
  wire m12_couplers_to_m12_couplers_AWVALID;
  wire m12_couplers_to_m12_couplers_BREADY;
  wire [1:0]m12_couplers_to_m12_couplers_BRESP;
  wire m12_couplers_to_m12_couplers_BVALID;
  wire [31:0]m12_couplers_to_m12_couplers_RDATA;
  wire m12_couplers_to_m12_couplers_RREADY;
  wire [1:0]m12_couplers_to_m12_couplers_RRESP;
  wire m12_couplers_to_m12_couplers_RVALID;
  wire [31:0]m12_couplers_to_m12_couplers_WDATA;
  wire m12_couplers_to_m12_couplers_WREADY;
  wire [3:0]m12_couplers_to_m12_couplers_WSTRB;
  wire m12_couplers_to_m12_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m12_couplers_to_m12_couplers_ARADDR;
  assign M_AXI_arvalid = m12_couplers_to_m12_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m12_couplers_to_m12_couplers_AWADDR;
  assign M_AXI_awvalid = m12_couplers_to_m12_couplers_AWVALID;
  assign M_AXI_bready = m12_couplers_to_m12_couplers_BREADY;
  assign M_AXI_rready = m12_couplers_to_m12_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m12_couplers_to_m12_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m12_couplers_to_m12_couplers_WSTRB;
  assign M_AXI_wvalid = m12_couplers_to_m12_couplers_WVALID;
  assign S_AXI_arready = m12_couplers_to_m12_couplers_ARREADY;
  assign S_AXI_awready = m12_couplers_to_m12_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m12_couplers_to_m12_couplers_BRESP;
  assign S_AXI_bvalid = m12_couplers_to_m12_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m12_couplers_to_m12_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m12_couplers_to_m12_couplers_RRESP;
  assign S_AXI_rvalid = m12_couplers_to_m12_couplers_RVALID;
  assign S_AXI_wready = m12_couplers_to_m12_couplers_WREADY;
  assign m12_couplers_to_m12_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m12_couplers_to_m12_couplers_ARREADY = M_AXI_arready;
  assign m12_couplers_to_m12_couplers_ARVALID = S_AXI_arvalid;
  assign m12_couplers_to_m12_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m12_couplers_to_m12_couplers_AWREADY = M_AXI_awready;
  assign m12_couplers_to_m12_couplers_AWVALID = S_AXI_awvalid;
  assign m12_couplers_to_m12_couplers_BREADY = S_AXI_bready;
  assign m12_couplers_to_m12_couplers_BRESP = M_AXI_bresp[1:0];
  assign m12_couplers_to_m12_couplers_BVALID = M_AXI_bvalid;
  assign m12_couplers_to_m12_couplers_RDATA = M_AXI_rdata[31:0];
  assign m12_couplers_to_m12_couplers_RREADY = S_AXI_rready;
  assign m12_couplers_to_m12_couplers_RRESP = M_AXI_rresp[1:0];
  assign m12_couplers_to_m12_couplers_RVALID = M_AXI_rvalid;
  assign m12_couplers_to_m12_couplers_WDATA = S_AXI_wdata[31:0];
  assign m12_couplers_to_m12_couplers_WREADY = M_AXI_wready;
  assign m12_couplers_to_m12_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m12_couplers_to_m12_couplers_WVALID = S_AXI_wvalid;
endmodule

module m13_couplers_imp_1FKQ4MH
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m13_couplers_to_m13_couplers_ARADDR;
  wire m13_couplers_to_m13_couplers_ARREADY;
  wire m13_couplers_to_m13_couplers_ARVALID;
  wire [31:0]m13_couplers_to_m13_couplers_AWADDR;
  wire m13_couplers_to_m13_couplers_AWREADY;
  wire m13_couplers_to_m13_couplers_AWVALID;
  wire m13_couplers_to_m13_couplers_BREADY;
  wire [1:0]m13_couplers_to_m13_couplers_BRESP;
  wire m13_couplers_to_m13_couplers_BVALID;
  wire [31:0]m13_couplers_to_m13_couplers_RDATA;
  wire m13_couplers_to_m13_couplers_RREADY;
  wire [1:0]m13_couplers_to_m13_couplers_RRESP;
  wire m13_couplers_to_m13_couplers_RVALID;
  wire [31:0]m13_couplers_to_m13_couplers_WDATA;
  wire m13_couplers_to_m13_couplers_WREADY;
  wire [3:0]m13_couplers_to_m13_couplers_WSTRB;
  wire m13_couplers_to_m13_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m13_couplers_to_m13_couplers_ARADDR;
  assign M_AXI_arvalid = m13_couplers_to_m13_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m13_couplers_to_m13_couplers_AWADDR;
  assign M_AXI_awvalid = m13_couplers_to_m13_couplers_AWVALID;
  assign M_AXI_bready = m13_couplers_to_m13_couplers_BREADY;
  assign M_AXI_rready = m13_couplers_to_m13_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m13_couplers_to_m13_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m13_couplers_to_m13_couplers_WSTRB;
  assign M_AXI_wvalid = m13_couplers_to_m13_couplers_WVALID;
  assign S_AXI_arready = m13_couplers_to_m13_couplers_ARREADY;
  assign S_AXI_awready = m13_couplers_to_m13_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m13_couplers_to_m13_couplers_BRESP;
  assign S_AXI_bvalid = m13_couplers_to_m13_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m13_couplers_to_m13_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m13_couplers_to_m13_couplers_RRESP;
  assign S_AXI_rvalid = m13_couplers_to_m13_couplers_RVALID;
  assign S_AXI_wready = m13_couplers_to_m13_couplers_WREADY;
  assign m13_couplers_to_m13_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m13_couplers_to_m13_couplers_ARREADY = M_AXI_arready;
  assign m13_couplers_to_m13_couplers_ARVALID = S_AXI_arvalid;
  assign m13_couplers_to_m13_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m13_couplers_to_m13_couplers_AWREADY = M_AXI_awready;
  assign m13_couplers_to_m13_couplers_AWVALID = S_AXI_awvalid;
  assign m13_couplers_to_m13_couplers_BREADY = S_AXI_bready;
  assign m13_couplers_to_m13_couplers_BRESP = M_AXI_bresp[1:0];
  assign m13_couplers_to_m13_couplers_BVALID = M_AXI_bvalid;
  assign m13_couplers_to_m13_couplers_RDATA = M_AXI_rdata[31:0];
  assign m13_couplers_to_m13_couplers_RREADY = S_AXI_rready;
  assign m13_couplers_to_m13_couplers_RRESP = M_AXI_rresp[1:0];
  assign m13_couplers_to_m13_couplers_RVALID = M_AXI_rvalid;
  assign m13_couplers_to_m13_couplers_WDATA = S_AXI_wdata[31:0];
  assign m13_couplers_to_m13_couplers_WREADY = M_AXI_wready;
  assign m13_couplers_to_m13_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m13_couplers_to_m13_couplers_WVALID = S_AXI_wvalid;
endmodule

module m14_couplers_imp_ON470T
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m14_couplers_to_m14_couplers_ARADDR;
  wire m14_couplers_to_m14_couplers_ARREADY;
  wire m14_couplers_to_m14_couplers_ARVALID;
  wire [31:0]m14_couplers_to_m14_couplers_AWADDR;
  wire m14_couplers_to_m14_couplers_AWREADY;
  wire m14_couplers_to_m14_couplers_AWVALID;
  wire m14_couplers_to_m14_couplers_BREADY;
  wire [1:0]m14_couplers_to_m14_couplers_BRESP;
  wire m14_couplers_to_m14_couplers_BVALID;
  wire [31:0]m14_couplers_to_m14_couplers_RDATA;
  wire m14_couplers_to_m14_couplers_RREADY;
  wire [1:0]m14_couplers_to_m14_couplers_RRESP;
  wire m14_couplers_to_m14_couplers_RVALID;
  wire [31:0]m14_couplers_to_m14_couplers_WDATA;
  wire m14_couplers_to_m14_couplers_WREADY;
  wire [3:0]m14_couplers_to_m14_couplers_WSTRB;
  wire m14_couplers_to_m14_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m14_couplers_to_m14_couplers_ARADDR;
  assign M_AXI_arvalid = m14_couplers_to_m14_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m14_couplers_to_m14_couplers_AWADDR;
  assign M_AXI_awvalid = m14_couplers_to_m14_couplers_AWVALID;
  assign M_AXI_bready = m14_couplers_to_m14_couplers_BREADY;
  assign M_AXI_rready = m14_couplers_to_m14_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m14_couplers_to_m14_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m14_couplers_to_m14_couplers_WSTRB;
  assign M_AXI_wvalid = m14_couplers_to_m14_couplers_WVALID;
  assign S_AXI_arready = m14_couplers_to_m14_couplers_ARREADY;
  assign S_AXI_awready = m14_couplers_to_m14_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m14_couplers_to_m14_couplers_BRESP;
  assign S_AXI_bvalid = m14_couplers_to_m14_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m14_couplers_to_m14_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m14_couplers_to_m14_couplers_RRESP;
  assign S_AXI_rvalid = m14_couplers_to_m14_couplers_RVALID;
  assign S_AXI_wready = m14_couplers_to_m14_couplers_WREADY;
  assign m14_couplers_to_m14_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m14_couplers_to_m14_couplers_ARREADY = M_AXI_arready;
  assign m14_couplers_to_m14_couplers_ARVALID = S_AXI_arvalid;
  assign m14_couplers_to_m14_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m14_couplers_to_m14_couplers_AWREADY = M_AXI_awready;
  assign m14_couplers_to_m14_couplers_AWVALID = S_AXI_awvalid;
  assign m14_couplers_to_m14_couplers_BREADY = S_AXI_bready;
  assign m14_couplers_to_m14_couplers_BRESP = M_AXI_bresp[1:0];
  assign m14_couplers_to_m14_couplers_BVALID = M_AXI_bvalid;
  assign m14_couplers_to_m14_couplers_RDATA = M_AXI_rdata[31:0];
  assign m14_couplers_to_m14_couplers_RREADY = S_AXI_rready;
  assign m14_couplers_to_m14_couplers_RRESP = M_AXI_rresp[1:0];
  assign m14_couplers_to_m14_couplers_RVALID = M_AXI_rvalid;
  assign m14_couplers_to_m14_couplers_WDATA = S_AXI_wdata[31:0];
  assign m14_couplers_to_m14_couplers_WREADY = M_AXI_wready;
  assign m14_couplers_to_m14_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m14_couplers_to_m14_couplers_WVALID = S_AXI_wvalid;
endmodule

module s00_couplers_imp_12AR84V
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid);
  input M_ACLK;
  input M_ARESETN;
  output [30:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  input [63:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  input S_ACLK;
  input S_ARESETN;
  input [30:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  output [63:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire [30:0]s00_couplers_to_s00_data_fifo_ARADDR;
  wire [1:0]s00_couplers_to_s00_data_fifo_ARBURST;
  wire [3:0]s00_couplers_to_s00_data_fifo_ARCACHE;
  wire [7:0]s00_couplers_to_s00_data_fifo_ARLEN;
  wire [2:0]s00_couplers_to_s00_data_fifo_ARPROT;
  wire s00_couplers_to_s00_data_fifo_ARREADY;
  wire [2:0]s00_couplers_to_s00_data_fifo_ARSIZE;
  wire s00_couplers_to_s00_data_fifo_ARVALID;
  wire [63:0]s00_couplers_to_s00_data_fifo_RDATA;
  wire s00_couplers_to_s00_data_fifo_RLAST;
  wire s00_couplers_to_s00_data_fifo_RREADY;
  wire [1:0]s00_couplers_to_s00_data_fifo_RRESP;
  wire s00_couplers_to_s00_data_fifo_RVALID;
  wire [30:0]s00_data_fifo_to_s00_couplers_ARADDR;
  wire [1:0]s00_data_fifo_to_s00_couplers_ARBURST;
  wire [3:0]s00_data_fifo_to_s00_couplers_ARCACHE;
  wire [7:0]s00_data_fifo_to_s00_couplers_ARLEN;
  wire [0:0]s00_data_fifo_to_s00_couplers_ARLOCK;
  wire [2:0]s00_data_fifo_to_s00_couplers_ARPROT;
  wire [3:0]s00_data_fifo_to_s00_couplers_ARQOS;
  wire s00_data_fifo_to_s00_couplers_ARREADY;
  wire [2:0]s00_data_fifo_to_s00_couplers_ARSIZE;
  wire s00_data_fifo_to_s00_couplers_ARVALID;
  wire [63:0]s00_data_fifo_to_s00_couplers_RDATA;
  wire s00_data_fifo_to_s00_couplers_RLAST;
  wire s00_data_fifo_to_s00_couplers_RREADY;
  wire [1:0]s00_data_fifo_to_s00_couplers_RRESP;
  wire s00_data_fifo_to_s00_couplers_RVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[30:0] = s00_data_fifo_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s00_data_fifo_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s00_data_fifo_to_s00_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = s00_data_fifo_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[0] = s00_data_fifo_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = s00_data_fifo_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = s00_data_fifo_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = s00_data_fifo_to_s00_couplers_ARSIZE;
  assign M_AXI_arvalid = s00_data_fifo_to_s00_couplers_ARVALID;
  assign M_AXI_rready = s00_data_fifo_to_s00_couplers_RREADY;
  assign S_AXI_arready = s00_couplers_to_s00_data_fifo_ARREADY;
  assign S_AXI_rdata[63:0] = s00_couplers_to_s00_data_fifo_RDATA;
  assign S_AXI_rlast = s00_couplers_to_s00_data_fifo_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_data_fifo_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_s00_data_fifo_RVALID;
  assign s00_couplers_to_s00_data_fifo_ARADDR = S_AXI_araddr[30:0];
  assign s00_couplers_to_s00_data_fifo_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_s00_data_fifo_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_s00_data_fifo_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_s00_data_fifo_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_data_fifo_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_s00_data_fifo_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_data_fifo_RREADY = S_AXI_rready;
  assign s00_data_fifo_to_s00_couplers_ARREADY = M_AXI_arready;
  assign s00_data_fifo_to_s00_couplers_RDATA = M_AXI_rdata[63:0];
  assign s00_data_fifo_to_s00_couplers_RLAST = M_AXI_rlast;
  assign s00_data_fifo_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_data_fifo_to_s00_couplers_RVALID = M_AXI_rvalid;
  icyradio_s00_data_fifo_128 s00_data_fifo
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(s00_data_fifo_to_s00_couplers_ARADDR),
        .m_axi_arburst(s00_data_fifo_to_s00_couplers_ARBURST),
        .m_axi_arcache(s00_data_fifo_to_s00_couplers_ARCACHE),
        .m_axi_arlen(s00_data_fifo_to_s00_couplers_ARLEN),
        .m_axi_arlock(s00_data_fifo_to_s00_couplers_ARLOCK),
        .m_axi_arprot(s00_data_fifo_to_s00_couplers_ARPROT),
        .m_axi_arqos(s00_data_fifo_to_s00_couplers_ARQOS),
        .m_axi_arready(s00_data_fifo_to_s00_couplers_ARREADY),
        .m_axi_arsize(s00_data_fifo_to_s00_couplers_ARSIZE),
        .m_axi_arvalid(s00_data_fifo_to_s00_couplers_ARVALID),
        .m_axi_rdata(s00_data_fifo_to_s00_couplers_RDATA),
        .m_axi_rlast(s00_data_fifo_to_s00_couplers_RLAST),
        .m_axi_rready(s00_data_fifo_to_s00_couplers_RREADY),
        .m_axi_rresp(s00_data_fifo_to_s00_couplers_RRESP),
        .m_axi_rvalid(s00_data_fifo_to_s00_couplers_RVALID),
        .s_axi_araddr(s00_couplers_to_s00_data_fifo_ARADDR),
        .s_axi_arburst(s00_couplers_to_s00_data_fifo_ARBURST),
        .s_axi_arcache(s00_couplers_to_s00_data_fifo_ARCACHE),
        .s_axi_arlen(s00_couplers_to_s00_data_fifo_ARLEN),
        .s_axi_arlock(1'b0),
        .s_axi_arprot(s00_couplers_to_s00_data_fifo_ARPROT),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(s00_couplers_to_s00_data_fifo_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s00_couplers_to_s00_data_fifo_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_s00_data_fifo_ARVALID),
        .s_axi_rdata(s00_couplers_to_s00_data_fifo_RDATA),
        .s_axi_rlast(s00_couplers_to_s00_data_fifo_RLAST),
        .s_axi_rready(s00_couplers_to_s00_data_fifo_RREADY),
        .s_axi_rresp(s00_couplers_to_s00_data_fifo_RRESP),
        .s_axi_rvalid(s00_couplers_to_s00_data_fifo_RVALID));
endmodule

module s00_couplers_imp_1OK54OW
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [2:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [2:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [3:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [63:0]M_AXI_rdata;
  input [3:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [63:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [7:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [2:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [2:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [2:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [63:0]S_AXI_rdata;
  output [2:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [63:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire [31:0]s00_couplers_to_s00_data_fifo_ARADDR;
  wire [1:0]s00_couplers_to_s00_data_fifo_ARBURST;
  wire [3:0]s00_couplers_to_s00_data_fifo_ARCACHE;
  wire [2:0]s00_couplers_to_s00_data_fifo_ARID;
  wire [7:0]s00_couplers_to_s00_data_fifo_ARLEN;
  wire [0:0]s00_couplers_to_s00_data_fifo_ARLOCK;
  wire [2:0]s00_couplers_to_s00_data_fifo_ARPROT;
  wire [3:0]s00_couplers_to_s00_data_fifo_ARQOS;
  wire s00_couplers_to_s00_data_fifo_ARREADY;
  wire [3:0]s00_couplers_to_s00_data_fifo_ARREGION;
  wire [2:0]s00_couplers_to_s00_data_fifo_ARSIZE;
  wire s00_couplers_to_s00_data_fifo_ARVALID;
  wire [31:0]s00_couplers_to_s00_data_fifo_AWADDR;
  wire [1:0]s00_couplers_to_s00_data_fifo_AWBURST;
  wire [3:0]s00_couplers_to_s00_data_fifo_AWCACHE;
  wire [2:0]s00_couplers_to_s00_data_fifo_AWID;
  wire [7:0]s00_couplers_to_s00_data_fifo_AWLEN;
  wire [0:0]s00_couplers_to_s00_data_fifo_AWLOCK;
  wire [2:0]s00_couplers_to_s00_data_fifo_AWPROT;
  wire [3:0]s00_couplers_to_s00_data_fifo_AWQOS;
  wire s00_couplers_to_s00_data_fifo_AWREADY;
  wire [3:0]s00_couplers_to_s00_data_fifo_AWREGION;
  wire [2:0]s00_couplers_to_s00_data_fifo_AWSIZE;
  wire s00_couplers_to_s00_data_fifo_AWVALID;
  wire [2:0]s00_couplers_to_s00_data_fifo_BID;
  wire s00_couplers_to_s00_data_fifo_BREADY;
  wire [1:0]s00_couplers_to_s00_data_fifo_BRESP;
  wire s00_couplers_to_s00_data_fifo_BVALID;
  wire [63:0]s00_couplers_to_s00_data_fifo_RDATA;
  wire [2:0]s00_couplers_to_s00_data_fifo_RID;
  wire s00_couplers_to_s00_data_fifo_RLAST;
  wire s00_couplers_to_s00_data_fifo_RREADY;
  wire [1:0]s00_couplers_to_s00_data_fifo_RRESP;
  wire s00_couplers_to_s00_data_fifo_RVALID;
  wire [63:0]s00_couplers_to_s00_data_fifo_WDATA;
  wire s00_couplers_to_s00_data_fifo_WLAST;
  wire s00_couplers_to_s00_data_fifo_WREADY;
  wire [7:0]s00_couplers_to_s00_data_fifo_WSTRB;
  wire s00_couplers_to_s00_data_fifo_WVALID;
  wire [31:0]s00_data_fifo_to_s00_couplers_ARADDR;
  wire [1:0]s00_data_fifo_to_s00_couplers_ARBURST;
  wire [3:0]s00_data_fifo_to_s00_couplers_ARCACHE;
  wire [2:0]s00_data_fifo_to_s00_couplers_ARID;
  wire [7:0]s00_data_fifo_to_s00_couplers_ARLEN;
  wire [0:0]s00_data_fifo_to_s00_couplers_ARLOCK;
  wire [2:0]s00_data_fifo_to_s00_couplers_ARPROT;
  wire [3:0]s00_data_fifo_to_s00_couplers_ARQOS;
  wire s00_data_fifo_to_s00_couplers_ARREADY;
  wire [2:0]s00_data_fifo_to_s00_couplers_ARSIZE;
  wire s00_data_fifo_to_s00_couplers_ARVALID;
  wire [31:0]s00_data_fifo_to_s00_couplers_AWADDR;
  wire [1:0]s00_data_fifo_to_s00_couplers_AWBURST;
  wire [3:0]s00_data_fifo_to_s00_couplers_AWCACHE;
  wire [2:0]s00_data_fifo_to_s00_couplers_AWID;
  wire [7:0]s00_data_fifo_to_s00_couplers_AWLEN;
  wire [0:0]s00_data_fifo_to_s00_couplers_AWLOCK;
  wire [2:0]s00_data_fifo_to_s00_couplers_AWPROT;
  wire [3:0]s00_data_fifo_to_s00_couplers_AWQOS;
  wire s00_data_fifo_to_s00_couplers_AWREADY;
  wire [2:0]s00_data_fifo_to_s00_couplers_AWSIZE;
  wire s00_data_fifo_to_s00_couplers_AWVALID;
  wire [3:0]s00_data_fifo_to_s00_couplers_BID;
  wire s00_data_fifo_to_s00_couplers_BREADY;
  wire [1:0]s00_data_fifo_to_s00_couplers_BRESP;
  wire s00_data_fifo_to_s00_couplers_BVALID;
  wire [63:0]s00_data_fifo_to_s00_couplers_RDATA;
  wire [3:0]s00_data_fifo_to_s00_couplers_RID;
  wire s00_data_fifo_to_s00_couplers_RLAST;
  wire s00_data_fifo_to_s00_couplers_RREADY;
  wire [1:0]s00_data_fifo_to_s00_couplers_RRESP;
  wire s00_data_fifo_to_s00_couplers_RVALID;
  wire [63:0]s00_data_fifo_to_s00_couplers_WDATA;
  wire s00_data_fifo_to_s00_couplers_WLAST;
  wire s00_data_fifo_to_s00_couplers_WREADY;
  wire [7:0]s00_data_fifo_to_s00_couplers_WSTRB;
  wire s00_data_fifo_to_s00_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = s00_data_fifo_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s00_data_fifo_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s00_data_fifo_to_s00_couplers_ARCACHE;
  assign M_AXI_arid[2:0] = s00_data_fifo_to_s00_couplers_ARID;
  assign M_AXI_arlen[7:0] = s00_data_fifo_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[0] = s00_data_fifo_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = s00_data_fifo_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = s00_data_fifo_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = s00_data_fifo_to_s00_couplers_ARSIZE;
  assign M_AXI_arvalid = s00_data_fifo_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = s00_data_fifo_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = s00_data_fifo_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = s00_data_fifo_to_s00_couplers_AWCACHE;
  assign M_AXI_awid[2:0] = s00_data_fifo_to_s00_couplers_AWID;
  assign M_AXI_awlen[7:0] = s00_data_fifo_to_s00_couplers_AWLEN;
  assign M_AXI_awlock[0] = s00_data_fifo_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = s00_data_fifo_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = s00_data_fifo_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = s00_data_fifo_to_s00_couplers_AWSIZE;
  assign M_AXI_awvalid = s00_data_fifo_to_s00_couplers_AWVALID;
  assign M_AXI_bready = s00_data_fifo_to_s00_couplers_BREADY;
  assign M_AXI_rready = s00_data_fifo_to_s00_couplers_RREADY;
  assign M_AXI_wdata[63:0] = s00_data_fifo_to_s00_couplers_WDATA;
  assign M_AXI_wlast = s00_data_fifo_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[7:0] = s00_data_fifo_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = s00_data_fifo_to_s00_couplers_WVALID;
  assign S_AXI_arready = s00_couplers_to_s00_data_fifo_ARREADY;
  assign S_AXI_awready = s00_couplers_to_s00_data_fifo_AWREADY;
  assign S_AXI_bid[2:0] = s00_couplers_to_s00_data_fifo_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_data_fifo_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_s00_data_fifo_BVALID;
  assign S_AXI_rdata[63:0] = s00_couplers_to_s00_data_fifo_RDATA;
  assign S_AXI_rid[2:0] = s00_couplers_to_s00_data_fifo_RID;
  assign S_AXI_rlast = s00_couplers_to_s00_data_fifo_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_data_fifo_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_s00_data_fifo_RVALID;
  assign S_AXI_wready = s00_couplers_to_s00_data_fifo_WREADY;
  assign s00_couplers_to_s00_data_fifo_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_s00_data_fifo_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_s00_data_fifo_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_s00_data_fifo_ARID = S_AXI_arid[2:0];
  assign s00_couplers_to_s00_data_fifo_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_s00_data_fifo_ARLOCK = S_AXI_arlock[0];
  assign s00_couplers_to_s00_data_fifo_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_data_fifo_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_s00_data_fifo_ARREGION = S_AXI_arregion[3:0];
  assign s00_couplers_to_s00_data_fifo_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_s00_data_fifo_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_data_fifo_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_s00_data_fifo_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_s00_data_fifo_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_s00_data_fifo_AWID = S_AXI_awid[2:0];
  assign s00_couplers_to_s00_data_fifo_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_s00_data_fifo_AWLOCK = S_AXI_awlock[0];
  assign s00_couplers_to_s00_data_fifo_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_data_fifo_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_s00_data_fifo_AWREGION = S_AXI_awregion[3:0];
  assign s00_couplers_to_s00_data_fifo_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_s00_data_fifo_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_s00_data_fifo_BREADY = S_AXI_bready;
  assign s00_couplers_to_s00_data_fifo_RREADY = S_AXI_rready;
  assign s00_couplers_to_s00_data_fifo_WDATA = S_AXI_wdata[63:0];
  assign s00_couplers_to_s00_data_fifo_WLAST = S_AXI_wlast;
  assign s00_couplers_to_s00_data_fifo_WSTRB = S_AXI_wstrb[7:0];
  assign s00_couplers_to_s00_data_fifo_WVALID = S_AXI_wvalid;
  assign s00_data_fifo_to_s00_couplers_ARREADY = M_AXI_arready;
  assign s00_data_fifo_to_s00_couplers_AWREADY = M_AXI_awready;
  assign s00_data_fifo_to_s00_couplers_BID = M_AXI_bid[3:0];
  assign s00_data_fifo_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_data_fifo_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign s00_data_fifo_to_s00_couplers_RDATA = M_AXI_rdata[63:0];
  assign s00_data_fifo_to_s00_couplers_RID = M_AXI_rid[3:0];
  assign s00_data_fifo_to_s00_couplers_RLAST = M_AXI_rlast;
  assign s00_data_fifo_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_data_fifo_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign s00_data_fifo_to_s00_couplers_WREADY = M_AXI_wready;
  icyradio_s00_data_fifo_129 s00_data_fifo
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(s00_data_fifo_to_s00_couplers_ARADDR),
        .m_axi_arburst(s00_data_fifo_to_s00_couplers_ARBURST),
        .m_axi_arcache(s00_data_fifo_to_s00_couplers_ARCACHE),
        .m_axi_arid(s00_data_fifo_to_s00_couplers_ARID),
        .m_axi_arlen(s00_data_fifo_to_s00_couplers_ARLEN),
        .m_axi_arlock(s00_data_fifo_to_s00_couplers_ARLOCK),
        .m_axi_arprot(s00_data_fifo_to_s00_couplers_ARPROT),
        .m_axi_arqos(s00_data_fifo_to_s00_couplers_ARQOS),
        .m_axi_arready(s00_data_fifo_to_s00_couplers_ARREADY),
        .m_axi_arsize(s00_data_fifo_to_s00_couplers_ARSIZE),
        .m_axi_arvalid(s00_data_fifo_to_s00_couplers_ARVALID),
        .m_axi_awaddr(s00_data_fifo_to_s00_couplers_AWADDR),
        .m_axi_awburst(s00_data_fifo_to_s00_couplers_AWBURST),
        .m_axi_awcache(s00_data_fifo_to_s00_couplers_AWCACHE),
        .m_axi_awid(s00_data_fifo_to_s00_couplers_AWID),
        .m_axi_awlen(s00_data_fifo_to_s00_couplers_AWLEN),
        .m_axi_awlock(s00_data_fifo_to_s00_couplers_AWLOCK),
        .m_axi_awprot(s00_data_fifo_to_s00_couplers_AWPROT),
        .m_axi_awqos(s00_data_fifo_to_s00_couplers_AWQOS),
        .m_axi_awready(s00_data_fifo_to_s00_couplers_AWREADY),
        .m_axi_awsize(s00_data_fifo_to_s00_couplers_AWSIZE),
        .m_axi_awvalid(s00_data_fifo_to_s00_couplers_AWVALID),
        .m_axi_bid(s00_data_fifo_to_s00_couplers_BID[2:0]),
        .m_axi_bready(s00_data_fifo_to_s00_couplers_BREADY),
        .m_axi_bresp(s00_data_fifo_to_s00_couplers_BRESP),
        .m_axi_bvalid(s00_data_fifo_to_s00_couplers_BVALID),
        .m_axi_rdata(s00_data_fifo_to_s00_couplers_RDATA),
        .m_axi_rid(s00_data_fifo_to_s00_couplers_RID[2:0]),
        .m_axi_rlast(s00_data_fifo_to_s00_couplers_RLAST),
        .m_axi_rready(s00_data_fifo_to_s00_couplers_RREADY),
        .m_axi_rresp(s00_data_fifo_to_s00_couplers_RRESP),
        .m_axi_rvalid(s00_data_fifo_to_s00_couplers_RVALID),
        .m_axi_wdata(s00_data_fifo_to_s00_couplers_WDATA),
        .m_axi_wlast(s00_data_fifo_to_s00_couplers_WLAST),
        .m_axi_wready(s00_data_fifo_to_s00_couplers_WREADY),
        .m_axi_wstrb(s00_data_fifo_to_s00_couplers_WSTRB),
        .m_axi_wvalid(s00_data_fifo_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_s00_data_fifo_ARADDR),
        .s_axi_arburst(s00_couplers_to_s00_data_fifo_ARBURST),
        .s_axi_arcache(s00_couplers_to_s00_data_fifo_ARCACHE),
        .s_axi_arid(s00_couplers_to_s00_data_fifo_ARID),
        .s_axi_arlen(s00_couplers_to_s00_data_fifo_ARLEN),
        .s_axi_arlock(s00_couplers_to_s00_data_fifo_ARLOCK),
        .s_axi_arprot(s00_couplers_to_s00_data_fifo_ARPROT),
        .s_axi_arqos(s00_couplers_to_s00_data_fifo_ARQOS),
        .s_axi_arready(s00_couplers_to_s00_data_fifo_ARREADY),
        .s_axi_arregion(s00_couplers_to_s00_data_fifo_ARREGION),
        .s_axi_arsize(s00_couplers_to_s00_data_fifo_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_s00_data_fifo_ARVALID),
        .s_axi_awaddr(s00_couplers_to_s00_data_fifo_AWADDR),
        .s_axi_awburst(s00_couplers_to_s00_data_fifo_AWBURST),
        .s_axi_awcache(s00_couplers_to_s00_data_fifo_AWCACHE),
        .s_axi_awid(s00_couplers_to_s00_data_fifo_AWID),
        .s_axi_awlen(s00_couplers_to_s00_data_fifo_AWLEN),
        .s_axi_awlock(s00_couplers_to_s00_data_fifo_AWLOCK),
        .s_axi_awprot(s00_couplers_to_s00_data_fifo_AWPROT),
        .s_axi_awqos(s00_couplers_to_s00_data_fifo_AWQOS),
        .s_axi_awready(s00_couplers_to_s00_data_fifo_AWREADY),
        .s_axi_awregion(s00_couplers_to_s00_data_fifo_AWREGION),
        .s_axi_awsize(s00_couplers_to_s00_data_fifo_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_s00_data_fifo_AWVALID),
        .s_axi_bid(s00_couplers_to_s00_data_fifo_BID),
        .s_axi_bready(s00_couplers_to_s00_data_fifo_BREADY),
        .s_axi_bresp(s00_couplers_to_s00_data_fifo_BRESP),
        .s_axi_bvalid(s00_couplers_to_s00_data_fifo_BVALID),
        .s_axi_rdata(s00_couplers_to_s00_data_fifo_RDATA),
        .s_axi_rid(s00_couplers_to_s00_data_fifo_RID),
        .s_axi_rlast(s00_couplers_to_s00_data_fifo_RLAST),
        .s_axi_rready(s00_couplers_to_s00_data_fifo_RREADY),
        .s_axi_rresp(s00_couplers_to_s00_data_fifo_RRESP),
        .s_axi_rvalid(s00_couplers_to_s00_data_fifo_RVALID),
        .s_axi_wdata(s00_couplers_to_s00_data_fifo_WDATA),
        .s_axi_wlast(s00_couplers_to_s00_data_fifo_WLAST),
        .s_axi_wready(s00_couplers_to_s00_data_fifo_WREADY),
        .s_axi_wstrb(s00_couplers_to_s00_data_fifo_WSTRB),
        .s_axi_wvalid(s00_couplers_to_s00_data_fifo_WVALID));
endmodule

module s00_couplers_imp_YVWGWH
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire [31:0]s00_couplers_to_s00_data_fifo_ARADDR;
  wire [2:0]s00_couplers_to_s00_data_fifo_ARPROT;
  wire s00_couplers_to_s00_data_fifo_ARREADY;
  wire s00_couplers_to_s00_data_fifo_ARVALID;
  wire [31:0]s00_couplers_to_s00_data_fifo_AWADDR;
  wire [2:0]s00_couplers_to_s00_data_fifo_AWPROT;
  wire s00_couplers_to_s00_data_fifo_AWREADY;
  wire s00_couplers_to_s00_data_fifo_AWVALID;
  wire s00_couplers_to_s00_data_fifo_BREADY;
  wire [1:0]s00_couplers_to_s00_data_fifo_BRESP;
  wire s00_couplers_to_s00_data_fifo_BVALID;
  wire [31:0]s00_couplers_to_s00_data_fifo_RDATA;
  wire s00_couplers_to_s00_data_fifo_RREADY;
  wire [1:0]s00_couplers_to_s00_data_fifo_RRESP;
  wire s00_couplers_to_s00_data_fifo_RVALID;
  wire [31:0]s00_couplers_to_s00_data_fifo_WDATA;
  wire s00_couplers_to_s00_data_fifo_WREADY;
  wire [3:0]s00_couplers_to_s00_data_fifo_WSTRB;
  wire s00_couplers_to_s00_data_fifo_WVALID;
  wire [31:0]s00_data_fifo_to_s00_couplers_ARADDR;
  wire [2:0]s00_data_fifo_to_s00_couplers_ARPROT;
  wire s00_data_fifo_to_s00_couplers_ARREADY;
  wire s00_data_fifo_to_s00_couplers_ARVALID;
  wire [31:0]s00_data_fifo_to_s00_couplers_AWADDR;
  wire [2:0]s00_data_fifo_to_s00_couplers_AWPROT;
  wire s00_data_fifo_to_s00_couplers_AWREADY;
  wire s00_data_fifo_to_s00_couplers_AWVALID;
  wire s00_data_fifo_to_s00_couplers_BREADY;
  wire [1:0]s00_data_fifo_to_s00_couplers_BRESP;
  wire s00_data_fifo_to_s00_couplers_BVALID;
  wire [31:0]s00_data_fifo_to_s00_couplers_RDATA;
  wire s00_data_fifo_to_s00_couplers_RREADY;
  wire [1:0]s00_data_fifo_to_s00_couplers_RRESP;
  wire s00_data_fifo_to_s00_couplers_RVALID;
  wire [31:0]s00_data_fifo_to_s00_couplers_WDATA;
  wire s00_data_fifo_to_s00_couplers_WREADY;
  wire [3:0]s00_data_fifo_to_s00_couplers_WSTRB;
  wire s00_data_fifo_to_s00_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = s00_data_fifo_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = s00_data_fifo_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid = s00_data_fifo_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = s00_data_fifo_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = s00_data_fifo_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid = s00_data_fifo_to_s00_couplers_AWVALID;
  assign M_AXI_bready = s00_data_fifo_to_s00_couplers_BREADY;
  assign M_AXI_rready = s00_data_fifo_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s00_data_fifo_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = s00_data_fifo_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = s00_data_fifo_to_s00_couplers_WVALID;
  assign S_AXI_arready = s00_couplers_to_s00_data_fifo_ARREADY;
  assign S_AXI_awready = s00_couplers_to_s00_data_fifo_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_data_fifo_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_s00_data_fifo_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_data_fifo_RDATA;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_data_fifo_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_s00_data_fifo_RVALID;
  assign S_AXI_wready = s00_couplers_to_s00_data_fifo_WREADY;
  assign s00_couplers_to_s00_data_fifo_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_s00_data_fifo_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_data_fifo_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_data_fifo_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_s00_data_fifo_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_data_fifo_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_s00_data_fifo_BREADY = S_AXI_bready;
  assign s00_couplers_to_s00_data_fifo_RREADY = S_AXI_rready;
  assign s00_couplers_to_s00_data_fifo_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_data_fifo_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_data_fifo_WVALID = S_AXI_wvalid;
  assign s00_data_fifo_to_s00_couplers_ARREADY = M_AXI_arready;
  assign s00_data_fifo_to_s00_couplers_AWREADY = M_AXI_awready;
  assign s00_data_fifo_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_data_fifo_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign s00_data_fifo_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign s00_data_fifo_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_data_fifo_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign s00_data_fifo_to_s00_couplers_WREADY = M_AXI_wready;
  icyradio_s00_data_fifo_130 s00_data_fifo
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(s00_data_fifo_to_s00_couplers_ARADDR),
        .m_axi_arprot(s00_data_fifo_to_s00_couplers_ARPROT),
        .m_axi_arready(s00_data_fifo_to_s00_couplers_ARREADY),
        .m_axi_arvalid(s00_data_fifo_to_s00_couplers_ARVALID),
        .m_axi_awaddr(s00_data_fifo_to_s00_couplers_AWADDR),
        .m_axi_awprot(s00_data_fifo_to_s00_couplers_AWPROT),
        .m_axi_awready(s00_data_fifo_to_s00_couplers_AWREADY),
        .m_axi_awvalid(s00_data_fifo_to_s00_couplers_AWVALID),
        .m_axi_bready(s00_data_fifo_to_s00_couplers_BREADY),
        .m_axi_bresp(s00_data_fifo_to_s00_couplers_BRESP),
        .m_axi_bvalid(s00_data_fifo_to_s00_couplers_BVALID),
        .m_axi_rdata(s00_data_fifo_to_s00_couplers_RDATA),
        .m_axi_rready(s00_data_fifo_to_s00_couplers_RREADY),
        .m_axi_rresp(s00_data_fifo_to_s00_couplers_RRESP),
        .m_axi_rvalid(s00_data_fifo_to_s00_couplers_RVALID),
        .m_axi_wdata(s00_data_fifo_to_s00_couplers_WDATA),
        .m_axi_wready(s00_data_fifo_to_s00_couplers_WREADY),
        .m_axi_wstrb(s00_data_fifo_to_s00_couplers_WSTRB),
        .m_axi_wvalid(s00_data_fifo_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_s00_data_fifo_ARADDR),
        .s_axi_arprot(s00_couplers_to_s00_data_fifo_ARPROT),
        .s_axi_arready(s00_couplers_to_s00_data_fifo_ARREADY),
        .s_axi_arvalid(s00_couplers_to_s00_data_fifo_ARVALID),
        .s_axi_awaddr(s00_couplers_to_s00_data_fifo_AWADDR),
        .s_axi_awprot(s00_couplers_to_s00_data_fifo_AWPROT),
        .s_axi_awready(s00_couplers_to_s00_data_fifo_AWREADY),
        .s_axi_awvalid(s00_couplers_to_s00_data_fifo_AWVALID),
        .s_axi_bready(s00_couplers_to_s00_data_fifo_BREADY),
        .s_axi_bresp(s00_couplers_to_s00_data_fifo_BRESP),
        .s_axi_bvalid(s00_couplers_to_s00_data_fifo_BVALID),
        .s_axi_rdata(s00_couplers_to_s00_data_fifo_RDATA),
        .s_axi_rready(s00_couplers_to_s00_data_fifo_RREADY),
        .s_axi_rresp(s00_couplers_to_s00_data_fifo_RRESP),
        .s_axi_rvalid(s00_couplers_to_s00_data_fifo_RVALID),
        .s_axi_wdata(s00_couplers_to_s00_data_fifo_WDATA),
        .s_axi_wready(s00_couplers_to_s00_data_fifo_WREADY),
        .s_axi_wstrb(s00_couplers_to_s00_data_fifo_WSTRB),
        .s_axi_wvalid(s00_couplers_to_s00_data_fifo_WVALID));
endmodule

module s01_couplers_imp_EQ149T
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [63:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [63:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [7:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [63:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [63:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire [31:0]s01_couplers_to_s01_data_fifo_ARADDR;
  wire [1:0]s01_couplers_to_s01_data_fifo_ARBURST;
  wire [3:0]s01_couplers_to_s01_data_fifo_ARCACHE;
  wire [7:0]s01_couplers_to_s01_data_fifo_ARLEN;
  wire s01_couplers_to_s01_data_fifo_ARLOCK;
  wire [2:0]s01_couplers_to_s01_data_fifo_ARPROT;
  wire s01_couplers_to_s01_data_fifo_ARREADY;
  wire [2:0]s01_couplers_to_s01_data_fifo_ARSIZE;
  wire s01_couplers_to_s01_data_fifo_ARVALID;
  wire [31:0]s01_couplers_to_s01_data_fifo_AWADDR;
  wire [1:0]s01_couplers_to_s01_data_fifo_AWBURST;
  wire [3:0]s01_couplers_to_s01_data_fifo_AWCACHE;
  wire [7:0]s01_couplers_to_s01_data_fifo_AWLEN;
  wire s01_couplers_to_s01_data_fifo_AWLOCK;
  wire [2:0]s01_couplers_to_s01_data_fifo_AWPROT;
  wire s01_couplers_to_s01_data_fifo_AWREADY;
  wire [2:0]s01_couplers_to_s01_data_fifo_AWSIZE;
  wire s01_couplers_to_s01_data_fifo_AWVALID;
  wire s01_couplers_to_s01_data_fifo_BREADY;
  wire [1:0]s01_couplers_to_s01_data_fifo_BRESP;
  wire s01_couplers_to_s01_data_fifo_BVALID;
  wire [63:0]s01_couplers_to_s01_data_fifo_RDATA;
  wire s01_couplers_to_s01_data_fifo_RLAST;
  wire s01_couplers_to_s01_data_fifo_RREADY;
  wire [1:0]s01_couplers_to_s01_data_fifo_RRESP;
  wire s01_couplers_to_s01_data_fifo_RVALID;
  wire [63:0]s01_couplers_to_s01_data_fifo_WDATA;
  wire s01_couplers_to_s01_data_fifo_WLAST;
  wire s01_couplers_to_s01_data_fifo_WREADY;
  wire [7:0]s01_couplers_to_s01_data_fifo_WSTRB;
  wire s01_couplers_to_s01_data_fifo_WVALID;
  wire [31:0]s01_data_fifo_to_s01_couplers_ARADDR;
  wire [1:0]s01_data_fifo_to_s01_couplers_ARBURST;
  wire [3:0]s01_data_fifo_to_s01_couplers_ARCACHE;
  wire [7:0]s01_data_fifo_to_s01_couplers_ARLEN;
  wire [0:0]s01_data_fifo_to_s01_couplers_ARLOCK;
  wire [2:0]s01_data_fifo_to_s01_couplers_ARPROT;
  wire [3:0]s01_data_fifo_to_s01_couplers_ARQOS;
  wire s01_data_fifo_to_s01_couplers_ARREADY;
  wire [2:0]s01_data_fifo_to_s01_couplers_ARSIZE;
  wire s01_data_fifo_to_s01_couplers_ARVALID;
  wire [31:0]s01_data_fifo_to_s01_couplers_AWADDR;
  wire [1:0]s01_data_fifo_to_s01_couplers_AWBURST;
  wire [3:0]s01_data_fifo_to_s01_couplers_AWCACHE;
  wire [7:0]s01_data_fifo_to_s01_couplers_AWLEN;
  wire [0:0]s01_data_fifo_to_s01_couplers_AWLOCK;
  wire [2:0]s01_data_fifo_to_s01_couplers_AWPROT;
  wire [3:0]s01_data_fifo_to_s01_couplers_AWQOS;
  wire s01_data_fifo_to_s01_couplers_AWREADY;
  wire [2:0]s01_data_fifo_to_s01_couplers_AWSIZE;
  wire s01_data_fifo_to_s01_couplers_AWVALID;
  wire s01_data_fifo_to_s01_couplers_BREADY;
  wire [1:0]s01_data_fifo_to_s01_couplers_BRESP;
  wire s01_data_fifo_to_s01_couplers_BVALID;
  wire [63:0]s01_data_fifo_to_s01_couplers_RDATA;
  wire s01_data_fifo_to_s01_couplers_RLAST;
  wire s01_data_fifo_to_s01_couplers_RREADY;
  wire [1:0]s01_data_fifo_to_s01_couplers_RRESP;
  wire s01_data_fifo_to_s01_couplers_RVALID;
  wire [63:0]s01_data_fifo_to_s01_couplers_WDATA;
  wire s01_data_fifo_to_s01_couplers_WLAST;
  wire s01_data_fifo_to_s01_couplers_WREADY;
  wire [7:0]s01_data_fifo_to_s01_couplers_WSTRB;
  wire s01_data_fifo_to_s01_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = s01_data_fifo_to_s01_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s01_data_fifo_to_s01_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s01_data_fifo_to_s01_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = s01_data_fifo_to_s01_couplers_ARLEN;
  assign M_AXI_arlock[0] = s01_data_fifo_to_s01_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = s01_data_fifo_to_s01_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = s01_data_fifo_to_s01_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = s01_data_fifo_to_s01_couplers_ARSIZE;
  assign M_AXI_arvalid = s01_data_fifo_to_s01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = s01_data_fifo_to_s01_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = s01_data_fifo_to_s01_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = s01_data_fifo_to_s01_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = s01_data_fifo_to_s01_couplers_AWLEN;
  assign M_AXI_awlock[0] = s01_data_fifo_to_s01_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = s01_data_fifo_to_s01_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = s01_data_fifo_to_s01_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = s01_data_fifo_to_s01_couplers_AWSIZE;
  assign M_AXI_awvalid = s01_data_fifo_to_s01_couplers_AWVALID;
  assign M_AXI_bready = s01_data_fifo_to_s01_couplers_BREADY;
  assign M_AXI_rready = s01_data_fifo_to_s01_couplers_RREADY;
  assign M_AXI_wdata[63:0] = s01_data_fifo_to_s01_couplers_WDATA;
  assign M_AXI_wlast = s01_data_fifo_to_s01_couplers_WLAST;
  assign M_AXI_wstrb[7:0] = s01_data_fifo_to_s01_couplers_WSTRB;
  assign M_AXI_wvalid = s01_data_fifo_to_s01_couplers_WVALID;
  assign S_AXI_arready = s01_couplers_to_s01_data_fifo_ARREADY;
  assign S_AXI_awready = s01_couplers_to_s01_data_fifo_AWREADY;
  assign S_AXI_bresp[1:0] = s01_couplers_to_s01_data_fifo_BRESP;
  assign S_AXI_bvalid = s01_couplers_to_s01_data_fifo_BVALID;
  assign S_AXI_rdata[63:0] = s01_couplers_to_s01_data_fifo_RDATA;
  assign S_AXI_rlast = s01_couplers_to_s01_data_fifo_RLAST;
  assign S_AXI_rresp[1:0] = s01_couplers_to_s01_data_fifo_RRESP;
  assign S_AXI_rvalid = s01_couplers_to_s01_data_fifo_RVALID;
  assign S_AXI_wready = s01_couplers_to_s01_data_fifo_WREADY;
  assign s01_couplers_to_s01_data_fifo_ARADDR = S_AXI_araddr[31:0];
  assign s01_couplers_to_s01_data_fifo_ARBURST = S_AXI_arburst[1:0];
  assign s01_couplers_to_s01_data_fifo_ARCACHE = S_AXI_arcache[3:0];
  assign s01_couplers_to_s01_data_fifo_ARLEN = S_AXI_arlen[7:0];
  assign s01_couplers_to_s01_data_fifo_ARLOCK = S_AXI_arlock;
  assign s01_couplers_to_s01_data_fifo_ARPROT = S_AXI_arprot[2:0];
  assign s01_couplers_to_s01_data_fifo_ARSIZE = S_AXI_arsize[2:0];
  assign s01_couplers_to_s01_data_fifo_ARVALID = S_AXI_arvalid;
  assign s01_couplers_to_s01_data_fifo_AWADDR = S_AXI_awaddr[31:0];
  assign s01_couplers_to_s01_data_fifo_AWBURST = S_AXI_awburst[1:0];
  assign s01_couplers_to_s01_data_fifo_AWCACHE = S_AXI_awcache[3:0];
  assign s01_couplers_to_s01_data_fifo_AWLEN = S_AXI_awlen[7:0];
  assign s01_couplers_to_s01_data_fifo_AWLOCK = S_AXI_awlock;
  assign s01_couplers_to_s01_data_fifo_AWPROT = S_AXI_awprot[2:0];
  assign s01_couplers_to_s01_data_fifo_AWSIZE = S_AXI_awsize[2:0];
  assign s01_couplers_to_s01_data_fifo_AWVALID = S_AXI_awvalid;
  assign s01_couplers_to_s01_data_fifo_BREADY = S_AXI_bready;
  assign s01_couplers_to_s01_data_fifo_RREADY = S_AXI_rready;
  assign s01_couplers_to_s01_data_fifo_WDATA = S_AXI_wdata[63:0];
  assign s01_couplers_to_s01_data_fifo_WLAST = S_AXI_wlast;
  assign s01_couplers_to_s01_data_fifo_WSTRB = S_AXI_wstrb[7:0];
  assign s01_couplers_to_s01_data_fifo_WVALID = S_AXI_wvalid;
  assign s01_data_fifo_to_s01_couplers_ARREADY = M_AXI_arready;
  assign s01_data_fifo_to_s01_couplers_AWREADY = M_AXI_awready;
  assign s01_data_fifo_to_s01_couplers_BRESP = M_AXI_bresp[1:0];
  assign s01_data_fifo_to_s01_couplers_BVALID = M_AXI_bvalid;
  assign s01_data_fifo_to_s01_couplers_RDATA = M_AXI_rdata[63:0];
  assign s01_data_fifo_to_s01_couplers_RLAST = M_AXI_rlast;
  assign s01_data_fifo_to_s01_couplers_RRESP = M_AXI_rresp[1:0];
  assign s01_data_fifo_to_s01_couplers_RVALID = M_AXI_rvalid;
  assign s01_data_fifo_to_s01_couplers_WREADY = M_AXI_wready;
  icyradio_s01_data_fifo_85 s01_data_fifo
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(s01_data_fifo_to_s01_couplers_ARADDR),
        .m_axi_arburst(s01_data_fifo_to_s01_couplers_ARBURST),
        .m_axi_arcache(s01_data_fifo_to_s01_couplers_ARCACHE),
        .m_axi_arlen(s01_data_fifo_to_s01_couplers_ARLEN),
        .m_axi_arlock(s01_data_fifo_to_s01_couplers_ARLOCK),
        .m_axi_arprot(s01_data_fifo_to_s01_couplers_ARPROT),
        .m_axi_arqos(s01_data_fifo_to_s01_couplers_ARQOS),
        .m_axi_arready(s01_data_fifo_to_s01_couplers_ARREADY),
        .m_axi_arsize(s01_data_fifo_to_s01_couplers_ARSIZE),
        .m_axi_arvalid(s01_data_fifo_to_s01_couplers_ARVALID),
        .m_axi_awaddr(s01_data_fifo_to_s01_couplers_AWADDR),
        .m_axi_awburst(s01_data_fifo_to_s01_couplers_AWBURST),
        .m_axi_awcache(s01_data_fifo_to_s01_couplers_AWCACHE),
        .m_axi_awlen(s01_data_fifo_to_s01_couplers_AWLEN),
        .m_axi_awlock(s01_data_fifo_to_s01_couplers_AWLOCK),
        .m_axi_awprot(s01_data_fifo_to_s01_couplers_AWPROT),
        .m_axi_awqos(s01_data_fifo_to_s01_couplers_AWQOS),
        .m_axi_awready(s01_data_fifo_to_s01_couplers_AWREADY),
        .m_axi_awsize(s01_data_fifo_to_s01_couplers_AWSIZE),
        .m_axi_awvalid(s01_data_fifo_to_s01_couplers_AWVALID),
        .m_axi_bready(s01_data_fifo_to_s01_couplers_BREADY),
        .m_axi_bresp(s01_data_fifo_to_s01_couplers_BRESP),
        .m_axi_bvalid(s01_data_fifo_to_s01_couplers_BVALID),
        .m_axi_rdata(s01_data_fifo_to_s01_couplers_RDATA),
        .m_axi_rlast(s01_data_fifo_to_s01_couplers_RLAST),
        .m_axi_rready(s01_data_fifo_to_s01_couplers_RREADY),
        .m_axi_rresp(s01_data_fifo_to_s01_couplers_RRESP),
        .m_axi_rvalid(s01_data_fifo_to_s01_couplers_RVALID),
        .m_axi_wdata(s01_data_fifo_to_s01_couplers_WDATA),
        .m_axi_wlast(s01_data_fifo_to_s01_couplers_WLAST),
        .m_axi_wready(s01_data_fifo_to_s01_couplers_WREADY),
        .m_axi_wstrb(s01_data_fifo_to_s01_couplers_WSTRB),
        .m_axi_wvalid(s01_data_fifo_to_s01_couplers_WVALID),
        .s_axi_araddr(s01_couplers_to_s01_data_fifo_ARADDR),
        .s_axi_arburst(s01_couplers_to_s01_data_fifo_ARBURST),
        .s_axi_arcache(s01_couplers_to_s01_data_fifo_ARCACHE),
        .s_axi_arlen(s01_couplers_to_s01_data_fifo_ARLEN),
        .s_axi_arlock(s01_couplers_to_s01_data_fifo_ARLOCK),
        .s_axi_arprot(s01_couplers_to_s01_data_fifo_ARPROT),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(s01_couplers_to_s01_data_fifo_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s01_couplers_to_s01_data_fifo_ARSIZE),
        .s_axi_arvalid(s01_couplers_to_s01_data_fifo_ARVALID),
        .s_axi_awaddr(s01_couplers_to_s01_data_fifo_AWADDR),
        .s_axi_awburst(s01_couplers_to_s01_data_fifo_AWBURST),
        .s_axi_awcache(s01_couplers_to_s01_data_fifo_AWCACHE),
        .s_axi_awlen(s01_couplers_to_s01_data_fifo_AWLEN),
        .s_axi_awlock(s01_couplers_to_s01_data_fifo_AWLOCK),
        .s_axi_awprot(s01_couplers_to_s01_data_fifo_AWPROT),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(s01_couplers_to_s01_data_fifo_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s01_couplers_to_s01_data_fifo_AWSIZE),
        .s_axi_awvalid(s01_couplers_to_s01_data_fifo_AWVALID),
        .s_axi_bready(s01_couplers_to_s01_data_fifo_BREADY),
        .s_axi_bresp(s01_couplers_to_s01_data_fifo_BRESP),
        .s_axi_bvalid(s01_couplers_to_s01_data_fifo_BVALID),
        .s_axi_rdata(s01_couplers_to_s01_data_fifo_RDATA),
        .s_axi_rlast(s01_couplers_to_s01_data_fifo_RLAST),
        .s_axi_rready(s01_couplers_to_s01_data_fifo_RREADY),
        .s_axi_rresp(s01_couplers_to_s01_data_fifo_RRESP),
        .s_axi_rvalid(s01_couplers_to_s01_data_fifo_RVALID),
        .s_axi_wdata(s01_couplers_to_s01_data_fifo_WDATA),
        .s_axi_wlast(s01_couplers_to_s01_data_fifo_WLAST),
        .s_axi_wready(s01_couplers_to_s01_data_fifo_WREADY),
        .s_axi_wstrb(s01_couplers_to_s01_data_fifo_WSTRB),
        .s_axi_wvalid(s01_couplers_to_s01_data_fifo_WVALID));
endmodule

module s01_couplers_imp_S4EEJ2
   (M_ACLK,
    M_ARESETN,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [30:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  output [63:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [7:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [30:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  input [63:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire [30:0]s01_couplers_to_s01_data_fifo_AWADDR;
  wire [1:0]s01_couplers_to_s01_data_fifo_AWBURST;
  wire [3:0]s01_couplers_to_s01_data_fifo_AWCACHE;
  wire [7:0]s01_couplers_to_s01_data_fifo_AWLEN;
  wire [2:0]s01_couplers_to_s01_data_fifo_AWPROT;
  wire s01_couplers_to_s01_data_fifo_AWREADY;
  wire [2:0]s01_couplers_to_s01_data_fifo_AWSIZE;
  wire s01_couplers_to_s01_data_fifo_AWVALID;
  wire s01_couplers_to_s01_data_fifo_BREADY;
  wire [1:0]s01_couplers_to_s01_data_fifo_BRESP;
  wire s01_couplers_to_s01_data_fifo_BVALID;
  wire [63:0]s01_couplers_to_s01_data_fifo_WDATA;
  wire s01_couplers_to_s01_data_fifo_WLAST;
  wire s01_couplers_to_s01_data_fifo_WREADY;
  wire [7:0]s01_couplers_to_s01_data_fifo_WSTRB;
  wire s01_couplers_to_s01_data_fifo_WVALID;
  wire [30:0]s01_data_fifo_to_s01_couplers_AWADDR;
  wire [1:0]s01_data_fifo_to_s01_couplers_AWBURST;
  wire [3:0]s01_data_fifo_to_s01_couplers_AWCACHE;
  wire [7:0]s01_data_fifo_to_s01_couplers_AWLEN;
  wire [0:0]s01_data_fifo_to_s01_couplers_AWLOCK;
  wire [2:0]s01_data_fifo_to_s01_couplers_AWPROT;
  wire [3:0]s01_data_fifo_to_s01_couplers_AWQOS;
  wire s01_data_fifo_to_s01_couplers_AWREADY;
  wire [2:0]s01_data_fifo_to_s01_couplers_AWSIZE;
  wire s01_data_fifo_to_s01_couplers_AWVALID;
  wire s01_data_fifo_to_s01_couplers_BREADY;
  wire [1:0]s01_data_fifo_to_s01_couplers_BRESP;
  wire s01_data_fifo_to_s01_couplers_BVALID;
  wire [63:0]s01_data_fifo_to_s01_couplers_WDATA;
  wire s01_data_fifo_to_s01_couplers_WLAST;
  wire s01_data_fifo_to_s01_couplers_WREADY;
  wire [7:0]s01_data_fifo_to_s01_couplers_WSTRB;
  wire s01_data_fifo_to_s01_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_awaddr[30:0] = s01_data_fifo_to_s01_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = s01_data_fifo_to_s01_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = s01_data_fifo_to_s01_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = s01_data_fifo_to_s01_couplers_AWLEN;
  assign M_AXI_awlock[0] = s01_data_fifo_to_s01_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = s01_data_fifo_to_s01_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = s01_data_fifo_to_s01_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = s01_data_fifo_to_s01_couplers_AWSIZE;
  assign M_AXI_awvalid = s01_data_fifo_to_s01_couplers_AWVALID;
  assign M_AXI_bready = s01_data_fifo_to_s01_couplers_BREADY;
  assign M_AXI_wdata[63:0] = s01_data_fifo_to_s01_couplers_WDATA;
  assign M_AXI_wlast = s01_data_fifo_to_s01_couplers_WLAST;
  assign M_AXI_wstrb[7:0] = s01_data_fifo_to_s01_couplers_WSTRB;
  assign M_AXI_wvalid = s01_data_fifo_to_s01_couplers_WVALID;
  assign S_AXI_awready = s01_couplers_to_s01_data_fifo_AWREADY;
  assign S_AXI_bresp[1:0] = s01_couplers_to_s01_data_fifo_BRESP;
  assign S_AXI_bvalid = s01_couplers_to_s01_data_fifo_BVALID;
  assign S_AXI_wready = s01_couplers_to_s01_data_fifo_WREADY;
  assign s01_couplers_to_s01_data_fifo_AWADDR = S_AXI_awaddr[30:0];
  assign s01_couplers_to_s01_data_fifo_AWBURST = S_AXI_awburst[1:0];
  assign s01_couplers_to_s01_data_fifo_AWCACHE = S_AXI_awcache[3:0];
  assign s01_couplers_to_s01_data_fifo_AWLEN = S_AXI_awlen[7:0];
  assign s01_couplers_to_s01_data_fifo_AWPROT = S_AXI_awprot[2:0];
  assign s01_couplers_to_s01_data_fifo_AWSIZE = S_AXI_awsize[2:0];
  assign s01_couplers_to_s01_data_fifo_AWVALID = S_AXI_awvalid;
  assign s01_couplers_to_s01_data_fifo_BREADY = S_AXI_bready;
  assign s01_couplers_to_s01_data_fifo_WDATA = S_AXI_wdata[63:0];
  assign s01_couplers_to_s01_data_fifo_WLAST = S_AXI_wlast;
  assign s01_couplers_to_s01_data_fifo_WSTRB = S_AXI_wstrb[7:0];
  assign s01_couplers_to_s01_data_fifo_WVALID = S_AXI_wvalid;
  assign s01_data_fifo_to_s01_couplers_AWREADY = M_AXI_awready;
  assign s01_data_fifo_to_s01_couplers_BRESP = M_AXI_bresp[1:0];
  assign s01_data_fifo_to_s01_couplers_BVALID = M_AXI_bvalid;
  assign s01_data_fifo_to_s01_couplers_WREADY = M_AXI_wready;
  icyradio_s01_data_fifo_84 s01_data_fifo
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_awaddr(s01_data_fifo_to_s01_couplers_AWADDR),
        .m_axi_awburst(s01_data_fifo_to_s01_couplers_AWBURST),
        .m_axi_awcache(s01_data_fifo_to_s01_couplers_AWCACHE),
        .m_axi_awlen(s01_data_fifo_to_s01_couplers_AWLEN),
        .m_axi_awlock(s01_data_fifo_to_s01_couplers_AWLOCK),
        .m_axi_awprot(s01_data_fifo_to_s01_couplers_AWPROT),
        .m_axi_awqos(s01_data_fifo_to_s01_couplers_AWQOS),
        .m_axi_awready(s01_data_fifo_to_s01_couplers_AWREADY),
        .m_axi_awsize(s01_data_fifo_to_s01_couplers_AWSIZE),
        .m_axi_awvalid(s01_data_fifo_to_s01_couplers_AWVALID),
        .m_axi_bready(s01_data_fifo_to_s01_couplers_BREADY),
        .m_axi_bresp(s01_data_fifo_to_s01_couplers_BRESP),
        .m_axi_bvalid(s01_data_fifo_to_s01_couplers_BVALID),
        .m_axi_wdata(s01_data_fifo_to_s01_couplers_WDATA),
        .m_axi_wlast(s01_data_fifo_to_s01_couplers_WLAST),
        .m_axi_wready(s01_data_fifo_to_s01_couplers_WREADY),
        .m_axi_wstrb(s01_data_fifo_to_s01_couplers_WSTRB),
        .m_axi_wvalid(s01_data_fifo_to_s01_couplers_WVALID),
        .s_axi_awaddr(s01_couplers_to_s01_data_fifo_AWADDR),
        .s_axi_awburst(s01_couplers_to_s01_data_fifo_AWBURST),
        .s_axi_awcache(s01_couplers_to_s01_data_fifo_AWCACHE),
        .s_axi_awlen(s01_couplers_to_s01_data_fifo_AWLEN),
        .s_axi_awlock(1'b0),
        .s_axi_awprot(s01_couplers_to_s01_data_fifo_AWPROT),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(s01_couplers_to_s01_data_fifo_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s01_couplers_to_s01_data_fifo_AWSIZE),
        .s_axi_awvalid(s01_couplers_to_s01_data_fifo_AWVALID),
        .s_axi_bready(s01_couplers_to_s01_data_fifo_BREADY),
        .s_axi_bresp(s01_couplers_to_s01_data_fifo_BRESP),
        .s_axi_bvalid(s01_couplers_to_s01_data_fifo_BVALID),
        .s_axi_wdata(s01_couplers_to_s01_data_fifo_WDATA),
        .s_axi_wlast(s01_couplers_to_s01_data_fifo_WLAST),
        .s_axi_wready(s01_couplers_to_s01_data_fifo_WREADY),
        .s_axi_wstrb(s01_couplers_to_s01_data_fifo_WSTRB),
        .s_axi_wvalid(s01_couplers_to_s01_data_fifo_WVALID));
endmodule

module s02_couplers_imp_13WZJAK
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid);
  input M_ACLK;
  input M_ARESETN;
  output [30:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  input [63:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  input S_ACLK;
  input S_ARESETN;
  input [30:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  output [63:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire [30:0]s02_couplers_to_s02_data_fifo_ARADDR;
  wire [1:0]s02_couplers_to_s02_data_fifo_ARBURST;
  wire [3:0]s02_couplers_to_s02_data_fifo_ARCACHE;
  wire [7:0]s02_couplers_to_s02_data_fifo_ARLEN;
  wire [2:0]s02_couplers_to_s02_data_fifo_ARPROT;
  wire s02_couplers_to_s02_data_fifo_ARREADY;
  wire [2:0]s02_couplers_to_s02_data_fifo_ARSIZE;
  wire s02_couplers_to_s02_data_fifo_ARVALID;
  wire [63:0]s02_couplers_to_s02_data_fifo_RDATA;
  wire s02_couplers_to_s02_data_fifo_RLAST;
  wire s02_couplers_to_s02_data_fifo_RREADY;
  wire [1:0]s02_couplers_to_s02_data_fifo_RRESP;
  wire s02_couplers_to_s02_data_fifo_RVALID;
  wire [30:0]s02_data_fifo_to_s02_couplers_ARADDR;
  wire [1:0]s02_data_fifo_to_s02_couplers_ARBURST;
  wire [3:0]s02_data_fifo_to_s02_couplers_ARCACHE;
  wire [7:0]s02_data_fifo_to_s02_couplers_ARLEN;
  wire [0:0]s02_data_fifo_to_s02_couplers_ARLOCK;
  wire [2:0]s02_data_fifo_to_s02_couplers_ARPROT;
  wire [3:0]s02_data_fifo_to_s02_couplers_ARQOS;
  wire s02_data_fifo_to_s02_couplers_ARREADY;
  wire [2:0]s02_data_fifo_to_s02_couplers_ARSIZE;
  wire s02_data_fifo_to_s02_couplers_ARVALID;
  wire [63:0]s02_data_fifo_to_s02_couplers_RDATA;
  wire s02_data_fifo_to_s02_couplers_RLAST;
  wire s02_data_fifo_to_s02_couplers_RREADY;
  wire [1:0]s02_data_fifo_to_s02_couplers_RRESP;
  wire s02_data_fifo_to_s02_couplers_RVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[30:0] = s02_data_fifo_to_s02_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s02_data_fifo_to_s02_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s02_data_fifo_to_s02_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = s02_data_fifo_to_s02_couplers_ARLEN;
  assign M_AXI_arlock[0] = s02_data_fifo_to_s02_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = s02_data_fifo_to_s02_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = s02_data_fifo_to_s02_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = s02_data_fifo_to_s02_couplers_ARSIZE;
  assign M_AXI_arvalid = s02_data_fifo_to_s02_couplers_ARVALID;
  assign M_AXI_rready = s02_data_fifo_to_s02_couplers_RREADY;
  assign S_AXI_arready = s02_couplers_to_s02_data_fifo_ARREADY;
  assign S_AXI_rdata[63:0] = s02_couplers_to_s02_data_fifo_RDATA;
  assign S_AXI_rlast = s02_couplers_to_s02_data_fifo_RLAST;
  assign S_AXI_rresp[1:0] = s02_couplers_to_s02_data_fifo_RRESP;
  assign S_AXI_rvalid = s02_couplers_to_s02_data_fifo_RVALID;
  assign s02_couplers_to_s02_data_fifo_ARADDR = S_AXI_araddr[30:0];
  assign s02_couplers_to_s02_data_fifo_ARBURST = S_AXI_arburst[1:0];
  assign s02_couplers_to_s02_data_fifo_ARCACHE = S_AXI_arcache[3:0];
  assign s02_couplers_to_s02_data_fifo_ARLEN = S_AXI_arlen[7:0];
  assign s02_couplers_to_s02_data_fifo_ARPROT = S_AXI_arprot[2:0];
  assign s02_couplers_to_s02_data_fifo_ARSIZE = S_AXI_arsize[2:0];
  assign s02_couplers_to_s02_data_fifo_ARVALID = S_AXI_arvalid;
  assign s02_couplers_to_s02_data_fifo_RREADY = S_AXI_rready;
  assign s02_data_fifo_to_s02_couplers_ARREADY = M_AXI_arready;
  assign s02_data_fifo_to_s02_couplers_RDATA = M_AXI_rdata[63:0];
  assign s02_data_fifo_to_s02_couplers_RLAST = M_AXI_rlast;
  assign s02_data_fifo_to_s02_couplers_RRESP = M_AXI_rresp[1:0];
  assign s02_data_fifo_to_s02_couplers_RVALID = M_AXI_rvalid;
  icyradio_s02_data_fifo_0 s02_data_fifo
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(s02_data_fifo_to_s02_couplers_ARADDR),
        .m_axi_arburst(s02_data_fifo_to_s02_couplers_ARBURST),
        .m_axi_arcache(s02_data_fifo_to_s02_couplers_ARCACHE),
        .m_axi_arlen(s02_data_fifo_to_s02_couplers_ARLEN),
        .m_axi_arlock(s02_data_fifo_to_s02_couplers_ARLOCK),
        .m_axi_arprot(s02_data_fifo_to_s02_couplers_ARPROT),
        .m_axi_arqos(s02_data_fifo_to_s02_couplers_ARQOS),
        .m_axi_arready(s02_data_fifo_to_s02_couplers_ARREADY),
        .m_axi_arsize(s02_data_fifo_to_s02_couplers_ARSIZE),
        .m_axi_arvalid(s02_data_fifo_to_s02_couplers_ARVALID),
        .m_axi_rdata(s02_data_fifo_to_s02_couplers_RDATA),
        .m_axi_rlast(s02_data_fifo_to_s02_couplers_RLAST),
        .m_axi_rready(s02_data_fifo_to_s02_couplers_RREADY),
        .m_axi_rresp(s02_data_fifo_to_s02_couplers_RRESP),
        .m_axi_rvalid(s02_data_fifo_to_s02_couplers_RVALID),
        .s_axi_araddr(s02_couplers_to_s02_data_fifo_ARADDR),
        .s_axi_arburst(s02_couplers_to_s02_data_fifo_ARBURST),
        .s_axi_arcache(s02_couplers_to_s02_data_fifo_ARCACHE),
        .s_axi_arlen(s02_couplers_to_s02_data_fifo_ARLEN),
        .s_axi_arlock(1'b0),
        .s_axi_arprot(s02_couplers_to_s02_data_fifo_ARPROT),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(s02_couplers_to_s02_data_fifo_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s02_couplers_to_s02_data_fifo_ARSIZE),
        .s_axi_arvalid(s02_couplers_to_s02_data_fifo_ARVALID),
        .s_axi_rdata(s02_couplers_to_s02_data_fifo_RDATA),
        .s_axi_rlast(s02_couplers_to_s02_data_fifo_RLAST),
        .s_axi_rready(s02_couplers_to_s02_data_fifo_RREADY),
        .s_axi_rresp(s02_couplers_to_s02_data_fifo_RRESP),
        .s_axi_rvalid(s02_couplers_to_s02_data_fifo_RVALID));
endmodule

module s03_couplers_imp_QSHPCD
   (M_ACLK,
    M_ARESETN,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [30:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  output [63:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [7:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [30:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  input [63:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire [30:0]s03_couplers_to_s03_data_fifo_AWADDR;
  wire [1:0]s03_couplers_to_s03_data_fifo_AWBURST;
  wire [3:0]s03_couplers_to_s03_data_fifo_AWCACHE;
  wire [7:0]s03_couplers_to_s03_data_fifo_AWLEN;
  wire [2:0]s03_couplers_to_s03_data_fifo_AWPROT;
  wire s03_couplers_to_s03_data_fifo_AWREADY;
  wire [2:0]s03_couplers_to_s03_data_fifo_AWSIZE;
  wire s03_couplers_to_s03_data_fifo_AWVALID;
  wire s03_couplers_to_s03_data_fifo_BREADY;
  wire [1:0]s03_couplers_to_s03_data_fifo_BRESP;
  wire s03_couplers_to_s03_data_fifo_BVALID;
  wire [63:0]s03_couplers_to_s03_data_fifo_WDATA;
  wire s03_couplers_to_s03_data_fifo_WLAST;
  wire s03_couplers_to_s03_data_fifo_WREADY;
  wire [7:0]s03_couplers_to_s03_data_fifo_WSTRB;
  wire s03_couplers_to_s03_data_fifo_WVALID;
  wire [30:0]s03_data_fifo_to_s03_couplers_AWADDR;
  wire [1:0]s03_data_fifo_to_s03_couplers_AWBURST;
  wire [3:0]s03_data_fifo_to_s03_couplers_AWCACHE;
  wire [7:0]s03_data_fifo_to_s03_couplers_AWLEN;
  wire [0:0]s03_data_fifo_to_s03_couplers_AWLOCK;
  wire [2:0]s03_data_fifo_to_s03_couplers_AWPROT;
  wire [3:0]s03_data_fifo_to_s03_couplers_AWQOS;
  wire s03_data_fifo_to_s03_couplers_AWREADY;
  wire [2:0]s03_data_fifo_to_s03_couplers_AWSIZE;
  wire s03_data_fifo_to_s03_couplers_AWVALID;
  wire s03_data_fifo_to_s03_couplers_BREADY;
  wire [1:0]s03_data_fifo_to_s03_couplers_BRESP;
  wire s03_data_fifo_to_s03_couplers_BVALID;
  wire [63:0]s03_data_fifo_to_s03_couplers_WDATA;
  wire s03_data_fifo_to_s03_couplers_WLAST;
  wire s03_data_fifo_to_s03_couplers_WREADY;
  wire [7:0]s03_data_fifo_to_s03_couplers_WSTRB;
  wire s03_data_fifo_to_s03_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_awaddr[30:0] = s03_data_fifo_to_s03_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = s03_data_fifo_to_s03_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = s03_data_fifo_to_s03_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = s03_data_fifo_to_s03_couplers_AWLEN;
  assign M_AXI_awlock[0] = s03_data_fifo_to_s03_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = s03_data_fifo_to_s03_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = s03_data_fifo_to_s03_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = s03_data_fifo_to_s03_couplers_AWSIZE;
  assign M_AXI_awvalid = s03_data_fifo_to_s03_couplers_AWVALID;
  assign M_AXI_bready = s03_data_fifo_to_s03_couplers_BREADY;
  assign M_AXI_wdata[63:0] = s03_data_fifo_to_s03_couplers_WDATA;
  assign M_AXI_wlast = s03_data_fifo_to_s03_couplers_WLAST;
  assign M_AXI_wstrb[7:0] = s03_data_fifo_to_s03_couplers_WSTRB;
  assign M_AXI_wvalid = s03_data_fifo_to_s03_couplers_WVALID;
  assign S_AXI_awready = s03_couplers_to_s03_data_fifo_AWREADY;
  assign S_AXI_bresp[1:0] = s03_couplers_to_s03_data_fifo_BRESP;
  assign S_AXI_bvalid = s03_couplers_to_s03_data_fifo_BVALID;
  assign S_AXI_wready = s03_couplers_to_s03_data_fifo_WREADY;
  assign s03_couplers_to_s03_data_fifo_AWADDR = S_AXI_awaddr[30:0];
  assign s03_couplers_to_s03_data_fifo_AWBURST = S_AXI_awburst[1:0];
  assign s03_couplers_to_s03_data_fifo_AWCACHE = S_AXI_awcache[3:0];
  assign s03_couplers_to_s03_data_fifo_AWLEN = S_AXI_awlen[7:0];
  assign s03_couplers_to_s03_data_fifo_AWPROT = S_AXI_awprot[2:0];
  assign s03_couplers_to_s03_data_fifo_AWSIZE = S_AXI_awsize[2:0];
  assign s03_couplers_to_s03_data_fifo_AWVALID = S_AXI_awvalid;
  assign s03_couplers_to_s03_data_fifo_BREADY = S_AXI_bready;
  assign s03_couplers_to_s03_data_fifo_WDATA = S_AXI_wdata[63:0];
  assign s03_couplers_to_s03_data_fifo_WLAST = S_AXI_wlast;
  assign s03_couplers_to_s03_data_fifo_WSTRB = S_AXI_wstrb[7:0];
  assign s03_couplers_to_s03_data_fifo_WVALID = S_AXI_wvalid;
  assign s03_data_fifo_to_s03_couplers_AWREADY = M_AXI_awready;
  assign s03_data_fifo_to_s03_couplers_BRESP = M_AXI_bresp[1:0];
  assign s03_data_fifo_to_s03_couplers_BVALID = M_AXI_bvalid;
  assign s03_data_fifo_to_s03_couplers_WREADY = M_AXI_wready;
  icyradio_s03_data_fifo_0 s03_data_fifo
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_awaddr(s03_data_fifo_to_s03_couplers_AWADDR),
        .m_axi_awburst(s03_data_fifo_to_s03_couplers_AWBURST),
        .m_axi_awcache(s03_data_fifo_to_s03_couplers_AWCACHE),
        .m_axi_awlen(s03_data_fifo_to_s03_couplers_AWLEN),
        .m_axi_awlock(s03_data_fifo_to_s03_couplers_AWLOCK),
        .m_axi_awprot(s03_data_fifo_to_s03_couplers_AWPROT),
        .m_axi_awqos(s03_data_fifo_to_s03_couplers_AWQOS),
        .m_axi_awready(s03_data_fifo_to_s03_couplers_AWREADY),
        .m_axi_awsize(s03_data_fifo_to_s03_couplers_AWSIZE),
        .m_axi_awvalid(s03_data_fifo_to_s03_couplers_AWVALID),
        .m_axi_bready(s03_data_fifo_to_s03_couplers_BREADY),
        .m_axi_bresp(s03_data_fifo_to_s03_couplers_BRESP),
        .m_axi_bvalid(s03_data_fifo_to_s03_couplers_BVALID),
        .m_axi_wdata(s03_data_fifo_to_s03_couplers_WDATA),
        .m_axi_wlast(s03_data_fifo_to_s03_couplers_WLAST),
        .m_axi_wready(s03_data_fifo_to_s03_couplers_WREADY),
        .m_axi_wstrb(s03_data_fifo_to_s03_couplers_WSTRB),
        .m_axi_wvalid(s03_data_fifo_to_s03_couplers_WVALID),
        .s_axi_awaddr(s03_couplers_to_s03_data_fifo_AWADDR),
        .s_axi_awburst(s03_couplers_to_s03_data_fifo_AWBURST),
        .s_axi_awcache(s03_couplers_to_s03_data_fifo_AWCACHE),
        .s_axi_awlen(s03_couplers_to_s03_data_fifo_AWLEN),
        .s_axi_awlock(1'b0),
        .s_axi_awprot(s03_couplers_to_s03_data_fifo_AWPROT),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(s03_couplers_to_s03_data_fifo_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s03_couplers_to_s03_data_fifo_AWSIZE),
        .s_axi_awvalid(s03_couplers_to_s03_data_fifo_AWVALID),
        .s_axi_bready(s03_couplers_to_s03_data_fifo_BREADY),
        .s_axi_bresp(s03_couplers_to_s03_data_fifo_BRESP),
        .s_axi_bvalid(s03_couplers_to_s03_data_fifo_BVALID),
        .s_axi_wdata(s03_couplers_to_s03_data_fifo_WDATA),
        .s_axi_wlast(s03_couplers_to_s03_data_fifo_WLAST),
        .s_axi_wready(s03_couplers_to_s03_data_fifo_WREADY),
        .s_axi_wstrb(s03_couplers_to_s03_data_fifo_WSTRB),
        .s_axi_wvalid(s03_couplers_to_s03_data_fifo_WVALID));
endmodule

module s04_couplers_imp_ZYTJAH
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [63:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [63:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [7:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_auto_us_df_ARADDR;
  wire [1:0]auto_pc_to_auto_us_df_ARBURST;
  wire [3:0]auto_pc_to_auto_us_df_ARCACHE;
  wire [7:0]auto_pc_to_auto_us_df_ARLEN;
  wire [0:0]auto_pc_to_auto_us_df_ARLOCK;
  wire [2:0]auto_pc_to_auto_us_df_ARPROT;
  wire [3:0]auto_pc_to_auto_us_df_ARQOS;
  wire auto_pc_to_auto_us_df_ARREADY;
  wire [3:0]auto_pc_to_auto_us_df_ARREGION;
  wire [2:0]auto_pc_to_auto_us_df_ARSIZE;
  wire auto_pc_to_auto_us_df_ARVALID;
  wire [31:0]auto_pc_to_auto_us_df_AWADDR;
  wire [1:0]auto_pc_to_auto_us_df_AWBURST;
  wire [3:0]auto_pc_to_auto_us_df_AWCACHE;
  wire [7:0]auto_pc_to_auto_us_df_AWLEN;
  wire [0:0]auto_pc_to_auto_us_df_AWLOCK;
  wire [2:0]auto_pc_to_auto_us_df_AWPROT;
  wire [3:0]auto_pc_to_auto_us_df_AWQOS;
  wire auto_pc_to_auto_us_df_AWREADY;
  wire [3:0]auto_pc_to_auto_us_df_AWREGION;
  wire [2:0]auto_pc_to_auto_us_df_AWSIZE;
  wire auto_pc_to_auto_us_df_AWVALID;
  wire auto_pc_to_auto_us_df_BREADY;
  wire [1:0]auto_pc_to_auto_us_df_BRESP;
  wire auto_pc_to_auto_us_df_BVALID;
  wire [31:0]auto_pc_to_auto_us_df_RDATA;
  wire auto_pc_to_auto_us_df_RLAST;
  wire auto_pc_to_auto_us_df_RREADY;
  wire [1:0]auto_pc_to_auto_us_df_RRESP;
  wire auto_pc_to_auto_us_df_RVALID;
  wire [31:0]auto_pc_to_auto_us_df_WDATA;
  wire auto_pc_to_auto_us_df_WLAST;
  wire auto_pc_to_auto_us_df_WREADY;
  wire [3:0]auto_pc_to_auto_us_df_WSTRB;
  wire auto_pc_to_auto_us_df_WVALID;
  wire [31:0]auto_us_df_to_s04_couplers_ARADDR;
  wire [1:0]auto_us_df_to_s04_couplers_ARBURST;
  wire [3:0]auto_us_df_to_s04_couplers_ARCACHE;
  wire [7:0]auto_us_df_to_s04_couplers_ARLEN;
  wire [0:0]auto_us_df_to_s04_couplers_ARLOCK;
  wire [2:0]auto_us_df_to_s04_couplers_ARPROT;
  wire [3:0]auto_us_df_to_s04_couplers_ARQOS;
  wire auto_us_df_to_s04_couplers_ARREADY;
  wire [2:0]auto_us_df_to_s04_couplers_ARSIZE;
  wire auto_us_df_to_s04_couplers_ARVALID;
  wire [31:0]auto_us_df_to_s04_couplers_AWADDR;
  wire [1:0]auto_us_df_to_s04_couplers_AWBURST;
  wire [3:0]auto_us_df_to_s04_couplers_AWCACHE;
  wire [7:0]auto_us_df_to_s04_couplers_AWLEN;
  wire [0:0]auto_us_df_to_s04_couplers_AWLOCK;
  wire [2:0]auto_us_df_to_s04_couplers_AWPROT;
  wire [3:0]auto_us_df_to_s04_couplers_AWQOS;
  wire auto_us_df_to_s04_couplers_AWREADY;
  wire [2:0]auto_us_df_to_s04_couplers_AWSIZE;
  wire auto_us_df_to_s04_couplers_AWVALID;
  wire auto_us_df_to_s04_couplers_BREADY;
  wire [1:0]auto_us_df_to_s04_couplers_BRESP;
  wire auto_us_df_to_s04_couplers_BVALID;
  wire [63:0]auto_us_df_to_s04_couplers_RDATA;
  wire auto_us_df_to_s04_couplers_RLAST;
  wire auto_us_df_to_s04_couplers_RREADY;
  wire [1:0]auto_us_df_to_s04_couplers_RRESP;
  wire auto_us_df_to_s04_couplers_RVALID;
  wire [63:0]auto_us_df_to_s04_couplers_WDATA;
  wire auto_us_df_to_s04_couplers_WLAST;
  wire auto_us_df_to_s04_couplers_WREADY;
  wire [7:0]auto_us_df_to_s04_couplers_WSTRB;
  wire auto_us_df_to_s04_couplers_WVALID;
  wire [31:0]s04_couplers_to_auto_pc_ARADDR;
  wire [2:0]s04_couplers_to_auto_pc_ARPROT;
  wire s04_couplers_to_auto_pc_ARREADY;
  wire s04_couplers_to_auto_pc_ARVALID;
  wire [31:0]s04_couplers_to_auto_pc_AWADDR;
  wire [2:0]s04_couplers_to_auto_pc_AWPROT;
  wire s04_couplers_to_auto_pc_AWREADY;
  wire s04_couplers_to_auto_pc_AWVALID;
  wire s04_couplers_to_auto_pc_BREADY;
  wire s04_couplers_to_auto_pc_BVALID;
  wire [31:0]s04_couplers_to_auto_pc_RDATA;
  wire s04_couplers_to_auto_pc_RREADY;
  wire s04_couplers_to_auto_pc_RVALID;
  wire [31:0]s04_couplers_to_auto_pc_WDATA;
  wire s04_couplers_to_auto_pc_WREADY;
  wire [3:0]s04_couplers_to_auto_pc_WSTRB;
  wire s04_couplers_to_auto_pc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = auto_us_df_to_s04_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_us_df_to_s04_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_us_df_to_s04_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_us_df_to_s04_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_us_df_to_s04_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_us_df_to_s04_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_us_df_to_s04_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_us_df_to_s04_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_us_df_to_s04_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_us_df_to_s04_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_us_df_to_s04_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_us_df_to_s04_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_us_df_to_s04_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_us_df_to_s04_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_us_df_to_s04_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_us_df_to_s04_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_us_df_to_s04_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_us_df_to_s04_couplers_AWVALID;
  assign M_AXI_bready = auto_us_df_to_s04_couplers_BREADY;
  assign M_AXI_rready = auto_us_df_to_s04_couplers_RREADY;
  assign M_AXI_wdata[63:0] = auto_us_df_to_s04_couplers_WDATA;
  assign M_AXI_wlast = auto_us_df_to_s04_couplers_WLAST;
  assign M_AXI_wstrb[7:0] = auto_us_df_to_s04_couplers_WSTRB;
  assign M_AXI_wvalid = auto_us_df_to_s04_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s04_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = s04_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bvalid = s04_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = s04_couplers_to_auto_pc_RDATA;
  assign S_AXI_rvalid = s04_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = s04_couplers_to_auto_pc_WREADY;
  assign auto_us_df_to_s04_couplers_ARREADY = M_AXI_arready;
  assign auto_us_df_to_s04_couplers_AWREADY = M_AXI_awready;
  assign auto_us_df_to_s04_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_us_df_to_s04_couplers_BVALID = M_AXI_bvalid;
  assign auto_us_df_to_s04_couplers_RDATA = M_AXI_rdata[63:0];
  assign auto_us_df_to_s04_couplers_RLAST = M_AXI_rlast;
  assign auto_us_df_to_s04_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_us_df_to_s04_couplers_RVALID = M_AXI_rvalid;
  assign auto_us_df_to_s04_couplers_WREADY = M_AXI_wready;
  assign s04_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign s04_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign s04_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign s04_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign s04_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign s04_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign s04_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign s04_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign s04_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign s04_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign s04_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  icyradio_auto_pc_0 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_auto_us_df_ARADDR),
        .m_axi_arburst(auto_pc_to_auto_us_df_ARBURST),
        .m_axi_arcache(auto_pc_to_auto_us_df_ARCACHE),
        .m_axi_arlen(auto_pc_to_auto_us_df_ARLEN),
        .m_axi_arlock(auto_pc_to_auto_us_df_ARLOCK),
        .m_axi_arprot(auto_pc_to_auto_us_df_ARPROT),
        .m_axi_arqos(auto_pc_to_auto_us_df_ARQOS),
        .m_axi_arready(auto_pc_to_auto_us_df_ARREADY),
        .m_axi_arregion(auto_pc_to_auto_us_df_ARREGION),
        .m_axi_arsize(auto_pc_to_auto_us_df_ARSIZE),
        .m_axi_arvalid(auto_pc_to_auto_us_df_ARVALID),
        .m_axi_awaddr(auto_pc_to_auto_us_df_AWADDR),
        .m_axi_awburst(auto_pc_to_auto_us_df_AWBURST),
        .m_axi_awcache(auto_pc_to_auto_us_df_AWCACHE),
        .m_axi_awlen(auto_pc_to_auto_us_df_AWLEN),
        .m_axi_awlock(auto_pc_to_auto_us_df_AWLOCK),
        .m_axi_awprot(auto_pc_to_auto_us_df_AWPROT),
        .m_axi_awqos(auto_pc_to_auto_us_df_AWQOS),
        .m_axi_awready(auto_pc_to_auto_us_df_AWREADY),
        .m_axi_awregion(auto_pc_to_auto_us_df_AWREGION),
        .m_axi_awsize(auto_pc_to_auto_us_df_AWSIZE),
        .m_axi_awvalid(auto_pc_to_auto_us_df_AWVALID),
        .m_axi_bready(auto_pc_to_auto_us_df_BREADY),
        .m_axi_bresp(auto_pc_to_auto_us_df_BRESP),
        .m_axi_bvalid(auto_pc_to_auto_us_df_BVALID),
        .m_axi_rdata(auto_pc_to_auto_us_df_RDATA),
        .m_axi_rlast(auto_pc_to_auto_us_df_RLAST),
        .m_axi_rready(auto_pc_to_auto_us_df_RREADY),
        .m_axi_rresp(auto_pc_to_auto_us_df_RRESP),
        .m_axi_rvalid(auto_pc_to_auto_us_df_RVALID),
        .m_axi_wdata(auto_pc_to_auto_us_df_WDATA),
        .m_axi_wlast(auto_pc_to_auto_us_df_WLAST),
        .m_axi_wready(auto_pc_to_auto_us_df_WREADY),
        .m_axi_wstrb(auto_pc_to_auto_us_df_WSTRB),
        .m_axi_wvalid(auto_pc_to_auto_us_df_WVALID),
        .s_axi_araddr(s04_couplers_to_auto_pc_ARADDR),
        .s_axi_arprot(s04_couplers_to_auto_pc_ARPROT),
        .s_axi_arready(s04_couplers_to_auto_pc_ARREADY),
        .s_axi_arvalid(s04_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(s04_couplers_to_auto_pc_AWADDR),
        .s_axi_awprot(s04_couplers_to_auto_pc_AWPROT),
        .s_axi_awready(s04_couplers_to_auto_pc_AWREADY),
        .s_axi_awvalid(s04_couplers_to_auto_pc_AWVALID),
        .s_axi_bready(s04_couplers_to_auto_pc_BREADY),
        .s_axi_bvalid(s04_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(s04_couplers_to_auto_pc_RDATA),
        .s_axi_rready(s04_couplers_to_auto_pc_RREADY),
        .s_axi_rvalid(s04_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(s04_couplers_to_auto_pc_WDATA),
        .s_axi_wready(s04_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(s04_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(s04_couplers_to_auto_pc_WVALID));
  icyradio_auto_us_df_0 auto_us_df
       (.m_axi_araddr(auto_us_df_to_s04_couplers_ARADDR),
        .m_axi_arburst(auto_us_df_to_s04_couplers_ARBURST),
        .m_axi_arcache(auto_us_df_to_s04_couplers_ARCACHE),
        .m_axi_arlen(auto_us_df_to_s04_couplers_ARLEN),
        .m_axi_arlock(auto_us_df_to_s04_couplers_ARLOCK),
        .m_axi_arprot(auto_us_df_to_s04_couplers_ARPROT),
        .m_axi_arqos(auto_us_df_to_s04_couplers_ARQOS),
        .m_axi_arready(auto_us_df_to_s04_couplers_ARREADY),
        .m_axi_arsize(auto_us_df_to_s04_couplers_ARSIZE),
        .m_axi_arvalid(auto_us_df_to_s04_couplers_ARVALID),
        .m_axi_awaddr(auto_us_df_to_s04_couplers_AWADDR),
        .m_axi_awburst(auto_us_df_to_s04_couplers_AWBURST),
        .m_axi_awcache(auto_us_df_to_s04_couplers_AWCACHE),
        .m_axi_awlen(auto_us_df_to_s04_couplers_AWLEN),
        .m_axi_awlock(auto_us_df_to_s04_couplers_AWLOCK),
        .m_axi_awprot(auto_us_df_to_s04_couplers_AWPROT),
        .m_axi_awqos(auto_us_df_to_s04_couplers_AWQOS),
        .m_axi_awready(auto_us_df_to_s04_couplers_AWREADY),
        .m_axi_awsize(auto_us_df_to_s04_couplers_AWSIZE),
        .m_axi_awvalid(auto_us_df_to_s04_couplers_AWVALID),
        .m_axi_bready(auto_us_df_to_s04_couplers_BREADY),
        .m_axi_bresp(auto_us_df_to_s04_couplers_BRESP),
        .m_axi_bvalid(auto_us_df_to_s04_couplers_BVALID),
        .m_axi_rdata(auto_us_df_to_s04_couplers_RDATA),
        .m_axi_rlast(auto_us_df_to_s04_couplers_RLAST),
        .m_axi_rready(auto_us_df_to_s04_couplers_RREADY),
        .m_axi_rresp(auto_us_df_to_s04_couplers_RRESP),
        .m_axi_rvalid(auto_us_df_to_s04_couplers_RVALID),
        .m_axi_wdata(auto_us_df_to_s04_couplers_WDATA),
        .m_axi_wlast(auto_us_df_to_s04_couplers_WLAST),
        .m_axi_wready(auto_us_df_to_s04_couplers_WREADY),
        .m_axi_wstrb(auto_us_df_to_s04_couplers_WSTRB),
        .m_axi_wvalid(auto_us_df_to_s04_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(auto_pc_to_auto_us_df_ARADDR),
        .s_axi_arburst(auto_pc_to_auto_us_df_ARBURST),
        .s_axi_arcache(auto_pc_to_auto_us_df_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arlen(auto_pc_to_auto_us_df_ARLEN),
        .s_axi_arlock(auto_pc_to_auto_us_df_ARLOCK),
        .s_axi_arprot(auto_pc_to_auto_us_df_ARPROT),
        .s_axi_arqos(auto_pc_to_auto_us_df_ARQOS),
        .s_axi_arready(auto_pc_to_auto_us_df_ARREADY),
        .s_axi_arregion(auto_pc_to_auto_us_df_ARREGION),
        .s_axi_arsize(auto_pc_to_auto_us_df_ARSIZE),
        .s_axi_arvalid(auto_pc_to_auto_us_df_ARVALID),
        .s_axi_awaddr(auto_pc_to_auto_us_df_AWADDR),
        .s_axi_awburst(auto_pc_to_auto_us_df_AWBURST),
        .s_axi_awcache(auto_pc_to_auto_us_df_AWCACHE),
        .s_axi_awlen(auto_pc_to_auto_us_df_AWLEN),
        .s_axi_awlock(auto_pc_to_auto_us_df_AWLOCK),
        .s_axi_awprot(auto_pc_to_auto_us_df_AWPROT),
        .s_axi_awqos(auto_pc_to_auto_us_df_AWQOS),
        .s_axi_awready(auto_pc_to_auto_us_df_AWREADY),
        .s_axi_awregion(auto_pc_to_auto_us_df_AWREGION),
        .s_axi_awsize(auto_pc_to_auto_us_df_AWSIZE),
        .s_axi_awvalid(auto_pc_to_auto_us_df_AWVALID),
        .s_axi_bready(auto_pc_to_auto_us_df_BREADY),
        .s_axi_bresp(auto_pc_to_auto_us_df_BRESP),
        .s_axi_bvalid(auto_pc_to_auto_us_df_BVALID),
        .s_axi_rdata(auto_pc_to_auto_us_df_RDATA),
        .s_axi_rlast(auto_pc_to_auto_us_df_RLAST),
        .s_axi_rready(auto_pc_to_auto_us_df_RREADY),
        .s_axi_rresp(auto_pc_to_auto_us_df_RRESP),
        .s_axi_rvalid(auto_pc_to_auto_us_df_RVALID),
        .s_axi_wdata(auto_pc_to_auto_us_df_WDATA),
        .s_axi_wlast(auto_pc_to_auto_us_df_WLAST),
        .s_axi_wready(auto_pc_to_auto_us_df_WREADY),
        .s_axi_wstrb(auto_pc_to_auto_us_df_WSTRB),
        .s_axi_wvalid(auto_pc_to_auto_us_df_WVALID));
endmodule
