// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Fri Oct 27 00:53:48 2023
// Host        : node4-dev running 64-bit Ubuntu 22.04.3 LTS
// Command     : write_verilog -force -mode funcsim -rename_top icyradio_axi_rf_timestamping_0_0 -prefix
//               icyradio_axi_rf_timestamping_0_0_ icyradio_axi_rf_timestamping_0_0_sim_netlist.v
// Design      : icyradio_axi_rf_timestamping_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module icyradio_axi_rf_timestamping_0_0_axi_rf_timestamping
   (s_axi_wready,
    s_axi_awready,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rvalid_reg_0,
    rx_enable_reg_0,
    tx_enable,
    s_axi_bvalid,
    s_axi_wstrb,
    s_axi_wdata,
    aclk,
    s_axi_awaddr,
    s_axi_araddr,
    s_axi_wvalid,
    s_axi_awvalid,
    s_axi_arvalid,
    rx_data_ready,
    tx_data_ready,
    aresetn,
    rx_dma_xfer_req,
    tx_dma_data_ready,
    s_axi_bready,
    s_axi_rready,
    tx_fifo_underflow,
    rx_fifo_overflow);
  output s_axi_wready;
  output s_axi_awready;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output s_axi_rvalid_reg_0;
  output rx_enable_reg_0;
  output tx_enable;
  output s_axi_bvalid;
  input [3:0]s_axi_wstrb;
  input [31:0]s_axi_wdata;
  input aclk;
  input [3:0]s_axi_awaddr;
  input [3:0]s_axi_araddr;
  input s_axi_wvalid;
  input s_axi_awvalid;
  input s_axi_arvalid;
  input rx_data_ready;
  input tx_data_ready;
  input aresetn;
  input rx_dma_xfer_req;
  input tx_dma_data_ready;
  input s_axi_bready;
  input s_axi_rready;
  input tx_fifo_underflow;
  input rx_fifo_overflow;

  wire aclk;
  wire aresetn;
  wire [63:1]cnt0;
  wire \cnt[0]_i_1_n_0 ;
  wire \cnt[10]_i_1_n_0 ;
  wire \cnt[11]_i_1_n_0 ;
  wire \cnt[12]_i_1_n_0 ;
  wire \cnt[13]_i_1_n_0 ;
  wire \cnt[14]_i_1_n_0 ;
  wire \cnt[15]_i_1_n_0 ;
  wire \cnt[16]_i_1_n_0 ;
  wire \cnt[17]_i_1_n_0 ;
  wire \cnt[18]_i_1_n_0 ;
  wire \cnt[19]_i_1_n_0 ;
  wire \cnt[1]_i_1_n_0 ;
  wire \cnt[20]_i_1_n_0 ;
  wire \cnt[21]_i_1_n_0 ;
  wire \cnt[22]_i_1_n_0 ;
  wire \cnt[23]_i_1_n_0 ;
  wire \cnt[24]_i_1_n_0 ;
  wire \cnt[25]_i_1_n_0 ;
  wire \cnt[26]_i_1_n_0 ;
  wire \cnt[27]_i_1_n_0 ;
  wire \cnt[28]_i_1_n_0 ;
  wire \cnt[29]_i_1_n_0 ;
  wire \cnt[2]_i_1_n_0 ;
  wire \cnt[30]_i_1_n_0 ;
  wire \cnt[31]_i_1_n_0 ;
  wire \cnt[32]_i_1_n_0 ;
  wire \cnt[32]_i_3_n_0 ;
  wire \cnt[33]_i_1_n_0 ;
  wire \cnt[33]_i_2_n_0 ;
  wire \cnt[34]_i_1_n_0 ;
  wire \cnt[34]_i_2_n_0 ;
  wire \cnt[35]_i_1_n_0 ;
  wire \cnt[35]_i_2_n_0 ;
  wire \cnt[36]_i_1_n_0 ;
  wire \cnt[36]_i_3_n_0 ;
  wire \cnt[37]_i_1_n_0 ;
  wire \cnt[37]_i_2_n_0 ;
  wire \cnt[38]_i_1_n_0 ;
  wire \cnt[38]_i_2_n_0 ;
  wire \cnt[39]_i_1_n_0 ;
  wire \cnt[39]_i_2_n_0 ;
  wire \cnt[3]_i_1_n_0 ;
  wire \cnt[40]_i_1_n_0 ;
  wire \cnt[41]_i_1_n_0 ;
  wire \cnt[42]_i_1_n_0 ;
  wire \cnt[43]_i_1_n_0 ;
  wire \cnt[44]_i_1_n_0 ;
  wire \cnt[45]_i_1_n_0 ;
  wire \cnt[46]_i_1_n_0 ;
  wire \cnt[47]_i_1_n_0 ;
  wire \cnt[47]_i_2_n_0 ;
  wire \cnt[48]_i_1_n_0 ;
  wire \cnt[49]_i_1_n_0 ;
  wire \cnt[4]_i_1_n_0 ;
  wire \cnt[50]_i_1_n_0 ;
  wire \cnt[51]_i_1_n_0 ;
  wire \cnt[52]_i_1_n_0 ;
  wire \cnt[53]_i_1_n_0 ;
  wire \cnt[54]_i_1_n_0 ;
  wire \cnt[55]_i_1_n_0 ;
  wire \cnt[55]_i_2_n_0 ;
  wire \cnt[56]_i_1_n_0 ;
  wire \cnt[57]_i_1_n_0 ;
  wire \cnt[58]_i_1_n_0 ;
  wire \cnt[59]_i_1_n_0 ;
  wire \cnt[5]_i_1_n_0 ;
  wire \cnt[60]_i_1_n_0 ;
  wire \cnt[61]_i_1_n_0 ;
  wire \cnt[62]_i_1_n_0 ;
  wire \cnt[63]_i_1_n_0 ;
  wire \cnt[63]_i_2_n_0 ;
  wire \cnt[63]_i_4_n_0 ;
  wire \cnt[63]_i_5_n_0 ;
  wire \cnt[63]_i_6_n_0 ;
  wire \cnt[63]_i_7_n_0 ;
  wire \cnt[6]_i_1_n_0 ;
  wire \cnt[7]_i_1_n_0 ;
  wire \cnt[8]_i_1_n_0 ;
  wire \cnt[9]_i_1_n_0 ;
  wire cnt_en_i_1_n_0;
  wire cnt_en_q;
  wire cnt_en_q_i_1_n_0;
  wire cnt_latch_arm_req_i_1_n_0;
  wire cnt_latch_arm_req_i_2_n_0;
  wire cnt_latch_armed0;
  wire cnt_latch_armed_i_1_n_0;
  wire cnt_latch_valid_i_1_n_0;
  wire cnt_latched0;
  wire \cnt_latched_reg_n_0_[0] ;
  wire \cnt_latched_reg_n_0_[10] ;
  wire \cnt_latched_reg_n_0_[11] ;
  wire \cnt_latched_reg_n_0_[12] ;
  wire \cnt_latched_reg_n_0_[13] ;
  wire \cnt_latched_reg_n_0_[14] ;
  wire \cnt_latched_reg_n_0_[15] ;
  wire \cnt_latched_reg_n_0_[16] ;
  wire \cnt_latched_reg_n_0_[17] ;
  wire \cnt_latched_reg_n_0_[18] ;
  wire \cnt_latched_reg_n_0_[19] ;
  wire \cnt_latched_reg_n_0_[1] ;
  wire \cnt_latched_reg_n_0_[20] ;
  wire \cnt_latched_reg_n_0_[21] ;
  wire \cnt_latched_reg_n_0_[22] ;
  wire \cnt_latched_reg_n_0_[23] ;
  wire \cnt_latched_reg_n_0_[24] ;
  wire \cnt_latched_reg_n_0_[25] ;
  wire \cnt_latched_reg_n_0_[26] ;
  wire \cnt_latched_reg_n_0_[27] ;
  wire \cnt_latched_reg_n_0_[28] ;
  wire \cnt_latched_reg_n_0_[29] ;
  wire \cnt_latched_reg_n_0_[2] ;
  wire \cnt_latched_reg_n_0_[30] ;
  wire \cnt_latched_reg_n_0_[31] ;
  wire \cnt_latched_reg_n_0_[3] ;
  wire \cnt_latched_reg_n_0_[4] ;
  wire \cnt_latched_reg_n_0_[5] ;
  wire \cnt_latched_reg_n_0_[6] ;
  wire \cnt_latched_reg_n_0_[7] ;
  wire \cnt_latched_reg_n_0_[8] ;
  wire \cnt_latched_reg_n_0_[9] ;
  wire cnt_rd_buf;
  wire \cnt_rd_buf_reg_n_0_[0] ;
  wire \cnt_rd_buf_reg_n_0_[10] ;
  wire \cnt_rd_buf_reg_n_0_[11] ;
  wire \cnt_rd_buf_reg_n_0_[12] ;
  wire \cnt_rd_buf_reg_n_0_[13] ;
  wire \cnt_rd_buf_reg_n_0_[14] ;
  wire \cnt_rd_buf_reg_n_0_[15] ;
  wire \cnt_rd_buf_reg_n_0_[16] ;
  wire \cnt_rd_buf_reg_n_0_[17] ;
  wire \cnt_rd_buf_reg_n_0_[18] ;
  wire \cnt_rd_buf_reg_n_0_[19] ;
  wire \cnt_rd_buf_reg_n_0_[1] ;
  wire \cnt_rd_buf_reg_n_0_[20] ;
  wire \cnt_rd_buf_reg_n_0_[21] ;
  wire \cnt_rd_buf_reg_n_0_[22] ;
  wire \cnt_rd_buf_reg_n_0_[23] ;
  wire \cnt_rd_buf_reg_n_0_[24] ;
  wire \cnt_rd_buf_reg_n_0_[25] ;
  wire \cnt_rd_buf_reg_n_0_[26] ;
  wire \cnt_rd_buf_reg_n_0_[27] ;
  wire \cnt_rd_buf_reg_n_0_[28] ;
  wire \cnt_rd_buf_reg_n_0_[29] ;
  wire \cnt_rd_buf_reg_n_0_[2] ;
  wire \cnt_rd_buf_reg_n_0_[30] ;
  wire \cnt_rd_buf_reg_n_0_[31] ;
  wire \cnt_rd_buf_reg_n_0_[3] ;
  wire \cnt_rd_buf_reg_n_0_[4] ;
  wire \cnt_rd_buf_reg_n_0_[5] ;
  wire \cnt_rd_buf_reg_n_0_[6] ;
  wire \cnt_rd_buf_reg_n_0_[7] ;
  wire \cnt_rd_buf_reg_n_0_[8] ;
  wire \cnt_rd_buf_reg_n_0_[9] ;
  wire \cnt_reg[12]_i_2_n_0 ;
  wire \cnt_reg[12]_i_2_n_1 ;
  wire \cnt_reg[12]_i_2_n_2 ;
  wire \cnt_reg[12]_i_2_n_3 ;
  wire \cnt_reg[16]_i_2_n_0 ;
  wire \cnt_reg[16]_i_2_n_1 ;
  wire \cnt_reg[16]_i_2_n_2 ;
  wire \cnt_reg[16]_i_2_n_3 ;
  wire \cnt_reg[20]_i_2_n_0 ;
  wire \cnt_reg[20]_i_2_n_1 ;
  wire \cnt_reg[20]_i_2_n_2 ;
  wire \cnt_reg[20]_i_2_n_3 ;
  wire \cnt_reg[24]_i_2_n_0 ;
  wire \cnt_reg[24]_i_2_n_1 ;
  wire \cnt_reg[24]_i_2_n_2 ;
  wire \cnt_reg[24]_i_2_n_3 ;
  wire \cnt_reg[28]_i_2_n_0 ;
  wire \cnt_reg[28]_i_2_n_1 ;
  wire \cnt_reg[28]_i_2_n_2 ;
  wire \cnt_reg[28]_i_2_n_3 ;
  wire \cnt_reg[32]_i_2_n_0 ;
  wire \cnt_reg[32]_i_2_n_1 ;
  wire \cnt_reg[32]_i_2_n_2 ;
  wire \cnt_reg[32]_i_2_n_3 ;
  wire \cnt_reg[36]_i_2_n_0 ;
  wire \cnt_reg[36]_i_2_n_1 ;
  wire \cnt_reg[36]_i_2_n_2 ;
  wire \cnt_reg[36]_i_2_n_3 ;
  wire \cnt_reg[40]_i_2_n_0 ;
  wire \cnt_reg[40]_i_2_n_1 ;
  wire \cnt_reg[40]_i_2_n_2 ;
  wire \cnt_reg[40]_i_2_n_3 ;
  wire \cnt_reg[44]_i_2_n_0 ;
  wire \cnt_reg[44]_i_2_n_1 ;
  wire \cnt_reg[44]_i_2_n_2 ;
  wire \cnt_reg[44]_i_2_n_3 ;
  wire \cnt_reg[48]_i_2_n_0 ;
  wire \cnt_reg[48]_i_2_n_1 ;
  wire \cnt_reg[48]_i_2_n_2 ;
  wire \cnt_reg[48]_i_2_n_3 ;
  wire \cnt_reg[4]_i_2_n_0 ;
  wire \cnt_reg[4]_i_2_n_1 ;
  wire \cnt_reg[4]_i_2_n_2 ;
  wire \cnt_reg[4]_i_2_n_3 ;
  wire \cnt_reg[52]_i_2_n_0 ;
  wire \cnt_reg[52]_i_2_n_1 ;
  wire \cnt_reg[52]_i_2_n_2 ;
  wire \cnt_reg[52]_i_2_n_3 ;
  wire \cnt_reg[56]_i_2_n_0 ;
  wire \cnt_reg[56]_i_2_n_1 ;
  wire \cnt_reg[56]_i_2_n_2 ;
  wire \cnt_reg[56]_i_2_n_3 ;
  wire \cnt_reg[60]_i_2_n_0 ;
  wire \cnt_reg[60]_i_2_n_1 ;
  wire \cnt_reg[60]_i_2_n_2 ;
  wire \cnt_reg[60]_i_2_n_3 ;
  wire \cnt_reg[63]_i_3_n_2 ;
  wire \cnt_reg[63]_i_3_n_3 ;
  wire \cnt_reg[8]_i_2_n_0 ;
  wire \cnt_reg[8]_i_2_n_1 ;
  wire \cnt_reg[8]_i_2_n_2 ;
  wire \cnt_reg[8]_i_2_n_3 ;
  wire \cnt_reg_n_0_[0] ;
  wire \cnt_reg_n_0_[10] ;
  wire \cnt_reg_n_0_[11] ;
  wire \cnt_reg_n_0_[12] ;
  wire \cnt_reg_n_0_[13] ;
  wire \cnt_reg_n_0_[14] ;
  wire \cnt_reg_n_0_[15] ;
  wire \cnt_reg_n_0_[16] ;
  wire \cnt_reg_n_0_[17] ;
  wire \cnt_reg_n_0_[18] ;
  wire \cnt_reg_n_0_[19] ;
  wire \cnt_reg_n_0_[1] ;
  wire \cnt_reg_n_0_[20] ;
  wire \cnt_reg_n_0_[21] ;
  wire \cnt_reg_n_0_[22] ;
  wire \cnt_reg_n_0_[23] ;
  wire \cnt_reg_n_0_[24] ;
  wire \cnt_reg_n_0_[25] ;
  wire \cnt_reg_n_0_[26] ;
  wire \cnt_reg_n_0_[27] ;
  wire \cnt_reg_n_0_[28] ;
  wire \cnt_reg_n_0_[29] ;
  wire \cnt_reg_n_0_[2] ;
  wire \cnt_reg_n_0_[30] ;
  wire \cnt_reg_n_0_[31] ;
  wire \cnt_reg_n_0_[3] ;
  wire \cnt_reg_n_0_[4] ;
  wire \cnt_reg_n_0_[5] ;
  wire \cnt_reg_n_0_[6] ;
  wire \cnt_reg_n_0_[7] ;
  wire \cnt_reg_n_0_[8] ;
  wire \cnt_reg_n_0_[9] ;
  wire \cnt_rx[15]_i_1_n_0 ;
  wire \cnt_rx[23]_i_1_n_0 ;
  wire \cnt_rx[31]_i_1_n_0 ;
  wire \cnt_rx[31]_i_2_n_0 ;
  wire \cnt_rx[39]_i_1_n_0 ;
  wire \cnt_rx[47]_i_1_n_0 ;
  wire \cnt_rx[55]_i_1_n_0 ;
  wire \cnt_rx[63]_i_1_n_0 ;
  wire \cnt_rx[63]_i_2_n_0 ;
  wire \cnt_rx[7]_i_1_n_0 ;
  wire cnt_rx_en_i_1_n_0;
  wire \cnt_rx_reg_n_0_[0] ;
  wire \cnt_rx_reg_n_0_[10] ;
  wire \cnt_rx_reg_n_0_[11] ;
  wire \cnt_rx_reg_n_0_[12] ;
  wire \cnt_rx_reg_n_0_[13] ;
  wire \cnt_rx_reg_n_0_[14] ;
  wire \cnt_rx_reg_n_0_[15] ;
  wire \cnt_rx_reg_n_0_[16] ;
  wire \cnt_rx_reg_n_0_[17] ;
  wire \cnt_rx_reg_n_0_[18] ;
  wire \cnt_rx_reg_n_0_[19] ;
  wire \cnt_rx_reg_n_0_[1] ;
  wire \cnt_rx_reg_n_0_[20] ;
  wire \cnt_rx_reg_n_0_[21] ;
  wire \cnt_rx_reg_n_0_[22] ;
  wire \cnt_rx_reg_n_0_[23] ;
  wire \cnt_rx_reg_n_0_[24] ;
  wire \cnt_rx_reg_n_0_[25] ;
  wire \cnt_rx_reg_n_0_[26] ;
  wire \cnt_rx_reg_n_0_[27] ;
  wire \cnt_rx_reg_n_0_[28] ;
  wire \cnt_rx_reg_n_0_[29] ;
  wire \cnt_rx_reg_n_0_[2] ;
  wire \cnt_rx_reg_n_0_[30] ;
  wire \cnt_rx_reg_n_0_[31] ;
  wire \cnt_rx_reg_n_0_[3] ;
  wire \cnt_rx_reg_n_0_[4] ;
  wire \cnt_rx_reg_n_0_[5] ;
  wire \cnt_rx_reg_n_0_[6] ;
  wire \cnt_rx_reg_n_0_[7] ;
  wire \cnt_rx_reg_n_0_[8] ;
  wire \cnt_rx_reg_n_0_[9] ;
  wire \cnt_tx[15]_i_1_n_0 ;
  wire \cnt_tx[23]_i_1_n_0 ;
  wire \cnt_tx[31]_i_1_n_0 ;
  wire \cnt_tx[31]_i_2_n_0 ;
  wire \cnt_tx[39]_i_1_n_0 ;
  wire \cnt_tx[47]_i_1_n_0 ;
  wire \cnt_tx[55]_i_1_n_0 ;
  wire \cnt_tx[63]_i_1_n_0 ;
  wire \cnt_tx[63]_i_2_n_0 ;
  wire \cnt_tx[7]_i_1_n_0 ;
  wire cnt_tx_en_i_1_n_0;
  wire \cnt_tx_reg_n_0_[0] ;
  wire \cnt_tx_reg_n_0_[10] ;
  wire \cnt_tx_reg_n_0_[11] ;
  wire \cnt_tx_reg_n_0_[12] ;
  wire \cnt_tx_reg_n_0_[13] ;
  wire \cnt_tx_reg_n_0_[14] ;
  wire \cnt_tx_reg_n_0_[15] ;
  wire \cnt_tx_reg_n_0_[16] ;
  wire \cnt_tx_reg_n_0_[17] ;
  wire \cnt_tx_reg_n_0_[18] ;
  wire \cnt_tx_reg_n_0_[19] ;
  wire \cnt_tx_reg_n_0_[1] ;
  wire \cnt_tx_reg_n_0_[20] ;
  wire \cnt_tx_reg_n_0_[21] ;
  wire \cnt_tx_reg_n_0_[22] ;
  wire \cnt_tx_reg_n_0_[23] ;
  wire \cnt_tx_reg_n_0_[24] ;
  wire \cnt_tx_reg_n_0_[25] ;
  wire \cnt_tx_reg_n_0_[26] ;
  wire \cnt_tx_reg_n_0_[27] ;
  wire \cnt_tx_reg_n_0_[28] ;
  wire \cnt_tx_reg_n_0_[29] ;
  wire \cnt_tx_reg_n_0_[2] ;
  wire \cnt_tx_reg_n_0_[30] ;
  wire \cnt_tx_reg_n_0_[31] ;
  wire \cnt_tx_reg_n_0_[3] ;
  wire \cnt_tx_reg_n_0_[4] ;
  wire \cnt_tx_reg_n_0_[5] ;
  wire \cnt_tx_reg_n_0_[6] ;
  wire \cnt_tx_reg_n_0_[7] ;
  wire \cnt_tx_reg_n_0_[8] ;
  wire \cnt_tx_reg_n_0_[9] ;
  wire [31:0]data5;
  wire [31:0]data7;
  wire [31:0]data9;
  wire p_0_in;
  wire [3:0]p_0_in__0;
  wire [31:0]p_1_in;
  wire [3:0]p_4_in;
  wire [27:18]p_6_in;
  wire rx_data_ready;
  wire rx_data_ready_ovr_en;
  wire rx_data_ready_ovr_val_reg_n_0;
  wire rx_data_ready_stky;
  wire rx_data_ready_stky_i_1_n_0;
  wire rx_dma_xfer_req;
  wire rx_dma_xfer_req_ovr_en;
  wire rx_dma_xfer_req_ovr_val;
  wire rx_dma_xfer_req_stky;
  wire rx_dma_xfer_req_stky_i_1_n_0;
  wire rx_enable1;
  wire rx_enable1_carry__0_i_1_n_0;
  wire rx_enable1_carry__0_i_2_n_0;
  wire rx_enable1_carry__0_i_3_n_0;
  wire rx_enable1_carry__0_i_4_n_0;
  wire rx_enable1_carry__0_n_0;
  wire rx_enable1_carry__0_n_1;
  wire rx_enable1_carry__0_n_2;
  wire rx_enable1_carry__0_n_3;
  wire rx_enable1_carry__1_i_1_n_0;
  wire rx_enable1_carry__1_i_2_n_0;
  wire rx_enable1_carry__1_i_3_n_0;
  wire rx_enable1_carry__1_i_4_n_0;
  wire rx_enable1_carry__1_n_0;
  wire rx_enable1_carry__1_n_1;
  wire rx_enable1_carry__1_n_2;
  wire rx_enable1_carry__1_n_3;
  wire rx_enable1_carry__2_i_1_n_0;
  wire rx_enable1_carry__2_i_2_n_0;
  wire rx_enable1_carry__2_i_3_n_0;
  wire rx_enable1_carry__2_i_4_n_0;
  wire rx_enable1_carry__2_n_0;
  wire rx_enable1_carry__2_n_1;
  wire rx_enable1_carry__2_n_2;
  wire rx_enable1_carry__2_n_3;
  wire rx_enable1_carry__3_i_1_n_0;
  wire rx_enable1_carry__3_i_2_n_0;
  wire rx_enable1_carry__3_i_3_n_0;
  wire rx_enable1_carry__3_i_4_n_0;
  wire rx_enable1_carry__3_n_0;
  wire rx_enable1_carry__3_n_1;
  wire rx_enable1_carry__3_n_2;
  wire rx_enable1_carry__3_n_3;
  wire rx_enable1_carry__4_i_1_n_0;
  wire rx_enable1_carry__4_i_2_n_0;
  wire rx_enable1_carry__4_n_3;
  wire rx_enable1_carry_i_1_n_0;
  wire rx_enable1_carry_i_2_n_0;
  wire rx_enable1_carry_i_3_n_0;
  wire rx_enable1_carry_i_4_n_0;
  wire rx_enable1_carry_n_0;
  wire rx_enable1_carry_n_1;
  wire rx_enable1_carry_n_2;
  wire rx_enable1_carry_n_3;
  wire rx_enable_i_1_n_0;
  wire rx_enable_i_2_n_0;
  wire rx_enable_i_3_n_0;
  wire rx_enable_i_4_n_0;
  wire rx_enable_reg_0;
  wire rx_fifo_overflow;
  wire rx_fifo_overflow_stky;
  wire rx_fifo_overflow_stky_i_1_n_0;
  wire [3:0]s_axi_araddr;
  wire s_axi_arready;
  wire s_axi_arready0;
  wire s_axi_arvalid;
  wire s_axi_aw_en_i_1_n_0;
  wire s_axi_aw_en_reg_n_0;
  wire [3:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awready0;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire s_axi_bvalid_i_1_n_0;
  wire [31:0]s_axi_rdata;
  wire \s_axi_rdata[0]_i_1_n_0 ;
  wire \s_axi_rdata[0]_i_2_n_0 ;
  wire \s_axi_rdata[0]_i_3_n_0 ;
  wire \s_axi_rdata[10]_i_1_n_0 ;
  wire \s_axi_rdata[10]_i_2_n_0 ;
  wire \s_axi_rdata[10]_i_3_n_0 ;
  wire \s_axi_rdata[11]_i_1_n_0 ;
  wire \s_axi_rdata[11]_i_2_n_0 ;
  wire \s_axi_rdata[11]_i_3_n_0 ;
  wire \s_axi_rdata[12]_i_1_n_0 ;
  wire \s_axi_rdata[12]_i_2_n_0 ;
  wire \s_axi_rdata[12]_i_3_n_0 ;
  wire \s_axi_rdata[12]_i_4_n_0 ;
  wire \s_axi_rdata[13]_i_1_n_0 ;
  wire \s_axi_rdata[13]_i_2_n_0 ;
  wire \s_axi_rdata[13]_i_3_n_0 ;
  wire \s_axi_rdata[13]_i_4_n_0 ;
  wire \s_axi_rdata[14]_i_1_n_0 ;
  wire \s_axi_rdata[14]_i_2_n_0 ;
  wire \s_axi_rdata[14]_i_3_n_0 ;
  wire \s_axi_rdata[14]_i_4_n_0 ;
  wire \s_axi_rdata[15]_i_1_n_0 ;
  wire \s_axi_rdata[15]_i_2_n_0 ;
  wire \s_axi_rdata[15]_i_3_n_0 ;
  wire \s_axi_rdata[15]_i_4_n_0 ;
  wire \s_axi_rdata[16]_i_1_n_0 ;
  wire \s_axi_rdata[16]_i_2_n_0 ;
  wire \s_axi_rdata[16]_i_3_n_0 ;
  wire \s_axi_rdata[16]_i_4_n_0 ;
  wire \s_axi_rdata[17]_i_1_n_0 ;
  wire \s_axi_rdata[17]_i_2_n_0 ;
  wire \s_axi_rdata[17]_i_3_n_0 ;
  wire \s_axi_rdata[17]_i_4_n_0 ;
  wire \s_axi_rdata[18]_i_1_n_0 ;
  wire \s_axi_rdata[18]_i_2_n_0 ;
  wire \s_axi_rdata[18]_i_3_n_0 ;
  wire \s_axi_rdata[18]_i_4_n_0 ;
  wire \s_axi_rdata[19]_i_1_n_0 ;
  wire \s_axi_rdata[19]_i_2_n_0 ;
  wire \s_axi_rdata[19]_i_3_n_0 ;
  wire \s_axi_rdata[19]_i_4_n_0 ;
  wire \s_axi_rdata[1]_i_1_n_0 ;
  wire \s_axi_rdata[1]_i_2_n_0 ;
  wire \s_axi_rdata[1]_i_3_n_0 ;
  wire \s_axi_rdata[20]_i_1_n_0 ;
  wire \s_axi_rdata[20]_i_2_n_0 ;
  wire \s_axi_rdata[20]_i_3_n_0 ;
  wire \s_axi_rdata[21]_i_1_n_0 ;
  wire \s_axi_rdata[21]_i_2_n_0 ;
  wire \s_axi_rdata[21]_i_3_n_0 ;
  wire \s_axi_rdata[21]_i_4_n_0 ;
  wire \s_axi_rdata[22]_i_1_n_0 ;
  wire \s_axi_rdata[22]_i_2_n_0 ;
  wire \s_axi_rdata[22]_i_3_n_0 ;
  wire \s_axi_rdata[23]_i_1_n_0 ;
  wire \s_axi_rdata[23]_i_2_n_0 ;
  wire \s_axi_rdata[23]_i_3_n_0 ;
  wire \s_axi_rdata[24]_i_1_n_0 ;
  wire \s_axi_rdata[24]_i_2_n_0 ;
  wire \s_axi_rdata[24]_i_3_n_0 ;
  wire \s_axi_rdata[25]_i_1_n_0 ;
  wire \s_axi_rdata[25]_i_2_n_0 ;
  wire \s_axi_rdata[25]_i_3_n_0 ;
  wire \s_axi_rdata[26]_i_1_n_0 ;
  wire \s_axi_rdata[26]_i_2_n_0 ;
  wire \s_axi_rdata[26]_i_3_n_0 ;
  wire \s_axi_rdata[27]_i_1_n_0 ;
  wire \s_axi_rdata[27]_i_2_n_0 ;
  wire \s_axi_rdata[27]_i_3_n_0 ;
  wire \s_axi_rdata[27]_i_4_n_0 ;
  wire \s_axi_rdata[28]_i_1_n_0 ;
  wire \s_axi_rdata[28]_i_2_n_0 ;
  wire \s_axi_rdata[28]_i_3_n_0 ;
  wire \s_axi_rdata[29]_i_1_n_0 ;
  wire \s_axi_rdata[29]_i_2_n_0 ;
  wire \s_axi_rdata[29]_i_3_n_0 ;
  wire \s_axi_rdata[2]_i_1_n_0 ;
  wire \s_axi_rdata[2]_i_2_n_0 ;
  wire \s_axi_rdata[2]_i_3_n_0 ;
  wire \s_axi_rdata[30]_i_1_n_0 ;
  wire \s_axi_rdata[30]_i_2_n_0 ;
  wire \s_axi_rdata[30]_i_3_n_0 ;
  wire \s_axi_rdata[31]_i_2_n_0 ;
  wire \s_axi_rdata[31]_i_3_n_0 ;
  wire \s_axi_rdata[31]_i_4_n_0 ;
  wire \s_axi_rdata[3]_i_1_n_0 ;
  wire \s_axi_rdata[3]_i_2_n_0 ;
  wire \s_axi_rdata[3]_i_3_n_0 ;
  wire \s_axi_rdata[4]_i_1_n_0 ;
  wire \s_axi_rdata[4]_i_2_n_0 ;
  wire \s_axi_rdata[4]_i_3_n_0 ;
  wire \s_axi_rdata[5]_i_1_n_0 ;
  wire \s_axi_rdata[5]_i_2_n_0 ;
  wire \s_axi_rdata[5]_i_3_n_0 ;
  wire \s_axi_rdata[6]_i_1_n_0 ;
  wire \s_axi_rdata[6]_i_2_n_0 ;
  wire \s_axi_rdata[6]_i_3_n_0 ;
  wire \s_axi_rdata[7]_i_1_n_0 ;
  wire \s_axi_rdata[7]_i_2_n_0 ;
  wire \s_axi_rdata[7]_i_3_n_0 ;
  wire \s_axi_rdata[8]_i_1_n_0 ;
  wire \s_axi_rdata[8]_i_2_n_0 ;
  wire \s_axi_rdata[8]_i_3_n_0 ;
  wire \s_axi_rdata[9]_i_1_n_0 ;
  wire \s_axi_rdata[9]_i_2_n_0 ;
  wire \s_axi_rdata[9]_i_3_n_0 ;
  wire s_axi_reg_rden;
  wire s_axi_rready;
  wire s_axi_rvalid_i_1_n_0;
  wire s_axi_rvalid_reg_0;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wready0;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire tx_data_ready;
  wire tx_data_ready_ovr_en;
  wire tx_data_ready_ovr_val;
  wire tx_data_ready_stky;
  wire tx_data_ready_stky_i_1_n_0;
  wire tx_dma_data_ready;
  wire tx_dma_data_ready_ovr_en;
  wire tx_dma_data_ready_ovr_en_i_2_n_0;
  wire tx_dma_data_ready_ovr_en_reg_n_0;
  wire tx_dma_data_ready_ovr_val;
  wire tx_dma_data_ready_stky;
  wire tx_dma_data_ready_stky_i_1_n_0;
  wire tx_enable;
  wire tx_enable1;
  wire tx_enable1_carry__0_i_1_n_0;
  wire tx_enable1_carry__0_i_2_n_0;
  wire tx_enable1_carry__0_i_3_n_0;
  wire tx_enable1_carry__0_i_4_n_0;
  wire tx_enable1_carry__0_n_0;
  wire tx_enable1_carry__0_n_1;
  wire tx_enable1_carry__0_n_2;
  wire tx_enable1_carry__0_n_3;
  wire tx_enable1_carry__1_i_1_n_0;
  wire tx_enable1_carry__1_i_2_n_0;
  wire tx_enable1_carry__1_i_3_n_0;
  wire tx_enable1_carry__1_i_4_n_0;
  wire tx_enable1_carry__1_n_0;
  wire tx_enable1_carry__1_n_1;
  wire tx_enable1_carry__1_n_2;
  wire tx_enable1_carry__1_n_3;
  wire tx_enable1_carry__2_i_1_n_0;
  wire tx_enable1_carry__2_i_2_n_0;
  wire tx_enable1_carry__2_i_3_n_0;
  wire tx_enable1_carry__2_i_4_n_0;
  wire tx_enable1_carry__2_n_0;
  wire tx_enable1_carry__2_n_1;
  wire tx_enable1_carry__2_n_2;
  wire tx_enable1_carry__2_n_3;
  wire tx_enable1_carry__3_i_1_n_0;
  wire tx_enable1_carry__3_i_2_n_0;
  wire tx_enable1_carry__3_i_3_n_0;
  wire tx_enable1_carry__3_i_4_n_0;
  wire tx_enable1_carry__3_n_0;
  wire tx_enable1_carry__3_n_1;
  wire tx_enable1_carry__3_n_2;
  wire tx_enable1_carry__3_n_3;
  wire tx_enable1_carry__4_i_1_n_0;
  wire tx_enable1_carry__4_i_2_n_0;
  wire tx_enable1_carry__4_n_3;
  wire tx_enable1_carry_i_1_n_0;
  wire tx_enable1_carry_i_2_n_0;
  wire tx_enable1_carry_i_3_n_0;
  wire tx_enable1_carry_i_4_n_0;
  wire tx_enable1_carry_n_0;
  wire tx_enable1_carry_n_1;
  wire tx_enable1_carry_n_2;
  wire tx_enable1_carry_n_3;
  wire tx_enable_i_1_n_0;
  wire tx_enable_i_2_n_0;
  wire tx_enable_i_3_n_0;
  wire tx_enable_i_4_n_0;
  wire tx_fifo_underflow;
  wire tx_fifo_underflow_stky;
  wire tx_fifo_underflow_stky_i_1_n_0;
  wire [3:2]\NLW_cnt_reg[63]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_cnt_reg[63]_i_3_O_UNCONNECTED ;
  wire [3:0]NLW_rx_enable1_carry_O_UNCONNECTED;
  wire [3:0]NLW_rx_enable1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_rx_enable1_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_rx_enable1_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_rx_enable1_carry__3_O_UNCONNECTED;
  wire [3:2]NLW_rx_enable1_carry__4_CO_UNCONNECTED;
  wire [3:0]NLW_rx_enable1_carry__4_O_UNCONNECTED;
  wire [3:0]NLW_tx_enable1_carry_O_UNCONNECTED;
  wire [3:0]NLW_tx_enable1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_tx_enable1_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_tx_enable1_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_tx_enable1_carry__3_O_UNCONNECTED;
  wire [3:2]NLW_tx_enable1_carry__4_CO_UNCONNECTED;
  wire [3:0]NLW_tx_enable1_carry__4_O_UNCONNECTED;

  LUT5 #(
    .INIT(32'h08FF0808)) 
    \cnt[0]_i_1 
       (.I0(p_6_in[24]),
        .I1(cnt_en_q),
        .I2(\cnt_reg_n_0_[0] ),
        .I3(\cnt[32]_i_3_n_0 ),
        .I4(\cnt[63]_i_4_n_0 ),
        .O(\cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44F4444444444444)) 
    \cnt[10]_i_1 
       (.I0(\cnt[63]_i_2_n_0 ),
        .I1(cnt0[10]),
        .I2(s_axi_wdata[10]),
        .I3(\cnt[47]_i_2_n_0 ),
        .I4(\cnt[63]_i_4_n_0 ),
        .I5(\cnt[63]_i_6_n_0 ),
        .O(\cnt[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44F4444444444444)) 
    \cnt[11]_i_1 
       (.I0(\cnt[63]_i_2_n_0 ),
        .I1(cnt0[11]),
        .I2(s_axi_wdata[11]),
        .I3(\cnt[47]_i_2_n_0 ),
        .I4(\cnt[63]_i_4_n_0 ),
        .I5(\cnt[63]_i_6_n_0 ),
        .O(\cnt[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44F4444444444444)) 
    \cnt[12]_i_1 
       (.I0(\cnt[63]_i_2_n_0 ),
        .I1(cnt0[12]),
        .I2(s_axi_wdata[12]),
        .I3(\cnt[47]_i_2_n_0 ),
        .I4(\cnt[63]_i_4_n_0 ),
        .I5(\cnt[63]_i_6_n_0 ),
        .O(\cnt[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44F4444444444444)) 
    \cnt[13]_i_1 
       (.I0(\cnt[63]_i_2_n_0 ),
        .I1(cnt0[13]),
        .I2(s_axi_wdata[13]),
        .I3(\cnt[47]_i_2_n_0 ),
        .I4(\cnt[63]_i_4_n_0 ),
        .I5(\cnt[63]_i_6_n_0 ),
        .O(\cnt[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44F4444444444444)) 
    \cnt[14]_i_1 
       (.I0(\cnt[63]_i_2_n_0 ),
        .I1(cnt0[14]),
        .I2(s_axi_wdata[14]),
        .I3(\cnt[47]_i_2_n_0 ),
        .I4(\cnt[63]_i_4_n_0 ),
        .I5(\cnt[63]_i_6_n_0 ),
        .O(\cnt[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44F4444444444444)) 
    \cnt[15]_i_1 
       (.I0(\cnt[63]_i_2_n_0 ),
        .I1(cnt0[15]),
        .I2(s_axi_wdata[15]),
        .I3(\cnt[47]_i_2_n_0 ),
        .I4(\cnt[63]_i_4_n_0 ),
        .I5(\cnt[63]_i_6_n_0 ),
        .O(\cnt[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44F4444444444444)) 
    \cnt[16]_i_1 
       (.I0(\cnt[63]_i_2_n_0 ),
        .I1(cnt0[16]),
        .I2(s_axi_wdata[16]),
        .I3(\cnt[55]_i_2_n_0 ),
        .I4(\cnt[63]_i_4_n_0 ),
        .I5(\cnt[63]_i_6_n_0 ),
        .O(\cnt[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44F4444444444444)) 
    \cnt[17]_i_1 
       (.I0(\cnt[63]_i_2_n_0 ),
        .I1(cnt0[17]),
        .I2(s_axi_wdata[17]),
        .I3(\cnt[55]_i_2_n_0 ),
        .I4(\cnt[63]_i_4_n_0 ),
        .I5(\cnt[63]_i_6_n_0 ),
        .O(\cnt[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44F4444444444444)) 
    \cnt[18]_i_1 
       (.I0(\cnt[63]_i_2_n_0 ),
        .I1(cnt0[18]),
        .I2(s_axi_wdata[18]),
        .I3(\cnt[55]_i_2_n_0 ),
        .I4(\cnt[63]_i_4_n_0 ),
        .I5(\cnt[63]_i_6_n_0 ),
        .O(\cnt[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44F4444444444444)) 
    \cnt[19]_i_1 
       (.I0(\cnt[63]_i_2_n_0 ),
        .I1(cnt0[19]),
        .I2(s_axi_wdata[19]),
        .I3(\cnt[55]_i_2_n_0 ),
        .I4(\cnt[63]_i_4_n_0 ),
        .I5(\cnt[63]_i_6_n_0 ),
        .O(\cnt[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80FF8080)) 
    \cnt[1]_i_1 
       (.I0(p_6_in[24]),
        .I1(cnt_en_q),
        .I2(cnt0[1]),
        .I3(\cnt[33]_i_2_n_0 ),
        .I4(\cnt[63]_i_4_n_0 ),
        .O(\cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44F4444444444444)) 
    \cnt[20]_i_1 
       (.I0(\cnt[63]_i_2_n_0 ),
        .I1(cnt0[20]),
        .I2(s_axi_wdata[20]),
        .I3(\cnt[55]_i_2_n_0 ),
        .I4(\cnt[63]_i_4_n_0 ),
        .I5(\cnt[63]_i_6_n_0 ),
        .O(\cnt[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44F4444444444444)) 
    \cnt[21]_i_1 
       (.I0(\cnt[63]_i_2_n_0 ),
        .I1(cnt0[21]),
        .I2(s_axi_wdata[21]),
        .I3(\cnt[55]_i_2_n_0 ),
        .I4(\cnt[63]_i_4_n_0 ),
        .I5(\cnt[63]_i_6_n_0 ),
        .O(\cnt[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44F4444444444444)) 
    \cnt[22]_i_1 
       (.I0(\cnt[63]_i_2_n_0 ),
        .I1(cnt0[22]),
        .I2(s_axi_wdata[22]),
        .I3(\cnt[55]_i_2_n_0 ),
        .I4(\cnt[63]_i_4_n_0 ),
        .I5(\cnt[63]_i_6_n_0 ),
        .O(\cnt[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44F4444444444444)) 
    \cnt[23]_i_1 
       (.I0(\cnt[63]_i_2_n_0 ),
        .I1(cnt0[23]),
        .I2(s_axi_wdata[23]),
        .I3(\cnt[55]_i_2_n_0 ),
        .I4(\cnt[63]_i_4_n_0 ),
        .I5(\cnt[63]_i_6_n_0 ),
        .O(\cnt[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44F4444444444444)) 
    \cnt[24]_i_1 
       (.I0(\cnt[63]_i_2_n_0 ),
        .I1(cnt0[24]),
        .I2(s_axi_wdata[24]),
        .I3(\cnt[63]_i_5_n_0 ),
        .I4(\cnt[63]_i_4_n_0 ),
        .I5(\cnt[63]_i_6_n_0 ),
        .O(\cnt[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44F4444444444444)) 
    \cnt[25]_i_1 
       (.I0(\cnt[63]_i_2_n_0 ),
        .I1(cnt0[25]),
        .I2(s_axi_wdata[25]),
        .I3(\cnt[63]_i_5_n_0 ),
        .I4(\cnt[63]_i_4_n_0 ),
        .I5(\cnt[63]_i_6_n_0 ),
        .O(\cnt[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44F4444444444444)) 
    \cnt[26]_i_1 
       (.I0(\cnt[63]_i_2_n_0 ),
        .I1(cnt0[26]),
        .I2(s_axi_wdata[26]),
        .I3(\cnt[63]_i_5_n_0 ),
        .I4(\cnt[63]_i_4_n_0 ),
        .I5(\cnt[63]_i_6_n_0 ),
        .O(\cnt[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44F4444444444444)) 
    \cnt[27]_i_1 
       (.I0(\cnt[63]_i_2_n_0 ),
        .I1(cnt0[27]),
        .I2(s_axi_wdata[27]),
        .I3(\cnt[63]_i_5_n_0 ),
        .I4(\cnt[63]_i_4_n_0 ),
        .I5(\cnt[63]_i_6_n_0 ),
        .O(\cnt[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44F4444444444444)) 
    \cnt[28]_i_1 
       (.I0(\cnt[63]_i_2_n_0 ),
        .I1(cnt0[28]),
        .I2(s_axi_wdata[28]),
        .I3(\cnt[63]_i_5_n_0 ),
        .I4(\cnt[63]_i_4_n_0 ),
        .I5(\cnt[63]_i_6_n_0 ),
        .O(\cnt[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44F4444444444444)) 
    \cnt[29]_i_1 
       (.I0(\cnt[63]_i_2_n_0 ),
        .I1(cnt0[29]),
        .I2(s_axi_wdata[29]),
        .I3(\cnt[63]_i_5_n_0 ),
        .I4(\cnt[63]_i_4_n_0 ),
        .I5(\cnt[63]_i_6_n_0 ),
        .O(\cnt[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80FF8080)) 
    \cnt[2]_i_1 
       (.I0(p_6_in[24]),
        .I1(cnt_en_q),
        .I2(cnt0[2]),
        .I3(\cnt[34]_i_2_n_0 ),
        .I4(\cnt[63]_i_4_n_0 ),
        .O(\cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44F4444444444444)) 
    \cnt[30]_i_1 
       (.I0(\cnt[63]_i_2_n_0 ),
        .I1(cnt0[30]),
        .I2(s_axi_wdata[30]),
        .I3(\cnt[63]_i_5_n_0 ),
        .I4(\cnt[63]_i_4_n_0 ),
        .I5(\cnt[63]_i_6_n_0 ),
        .O(\cnt[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44F4444444444444)) 
    \cnt[31]_i_1 
       (.I0(\cnt[63]_i_2_n_0 ),
        .I1(cnt0[31]),
        .I2(s_axi_wdata[31]),
        .I3(\cnt[63]_i_5_n_0 ),
        .I4(\cnt[63]_i_4_n_0 ),
        .I5(\cnt[63]_i_6_n_0 ),
        .O(\cnt[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h808080FF)) 
    \cnt[32]_i_1 
       (.I0(p_6_in[24]),
        .I1(cnt_en_q),
        .I2(cnt0[32]),
        .I3(\cnt[32]_i_3_n_0 ),
        .I4(\cnt[63]_i_4_n_0 ),
        .O(\cnt[32]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFFFFFF)) 
    \cnt[32]_i_3 
       (.I0(\cnt[63]_i_7_n_0 ),
        .I1(p_6_in[24]),
        .I2(p_4_in[1]),
        .I3(p_4_in[2]),
        .I4(s_axi_wdata[0]),
        .I5(s_axi_wstrb[0]),
        .O(\cnt[32]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h808080FF)) 
    \cnt[33]_i_1 
       (.I0(p_6_in[24]),
        .I1(cnt_en_q),
        .I2(cnt0[33]),
        .I3(\cnt[33]_i_2_n_0 ),
        .I4(\cnt[63]_i_4_n_0 ),
        .O(\cnt[33]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFFFFFF)) 
    \cnt[33]_i_2 
       (.I0(\cnt[63]_i_7_n_0 ),
        .I1(p_6_in[24]),
        .I2(p_4_in[1]),
        .I3(p_4_in[2]),
        .I4(s_axi_wdata[1]),
        .I5(s_axi_wstrb[0]),
        .O(\cnt[33]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h808080FF)) 
    \cnt[34]_i_1 
       (.I0(p_6_in[24]),
        .I1(cnt_en_q),
        .I2(cnt0[34]),
        .I3(\cnt[34]_i_2_n_0 ),
        .I4(\cnt[63]_i_4_n_0 ),
        .O(\cnt[34]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFFFFFF)) 
    \cnt[34]_i_2 
       (.I0(\cnt[63]_i_7_n_0 ),
        .I1(p_6_in[24]),
        .I2(p_4_in[1]),
        .I3(p_4_in[2]),
        .I4(s_axi_wdata[2]),
        .I5(s_axi_wstrb[0]),
        .O(\cnt[34]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h808080FF)) 
    \cnt[35]_i_1 
       (.I0(p_6_in[24]),
        .I1(cnt_en_q),
        .I2(cnt0[35]),
        .I3(\cnt[35]_i_2_n_0 ),
        .I4(\cnt[63]_i_4_n_0 ),
        .O(\cnt[35]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFFFFFF)) 
    \cnt[35]_i_2 
       (.I0(\cnt[63]_i_7_n_0 ),
        .I1(p_6_in[24]),
        .I2(p_4_in[1]),
        .I3(p_4_in[2]),
        .I4(s_axi_wdata[3]),
        .I5(s_axi_wstrb[0]),
        .O(\cnt[35]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h808080FF)) 
    \cnt[36]_i_1 
       (.I0(p_6_in[24]),
        .I1(cnt_en_q),
        .I2(cnt0[36]),
        .I3(\cnt[36]_i_3_n_0 ),
        .I4(\cnt[63]_i_4_n_0 ),
        .O(\cnt[36]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFFFFFF)) 
    \cnt[36]_i_3 
       (.I0(\cnt[63]_i_7_n_0 ),
        .I1(p_6_in[24]),
        .I2(p_4_in[1]),
        .I3(p_4_in[2]),
        .I4(s_axi_wdata[4]),
        .I5(s_axi_wstrb[0]),
        .O(\cnt[36]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h808080FF)) 
    \cnt[37]_i_1 
       (.I0(p_6_in[24]),
        .I1(cnt_en_q),
        .I2(cnt0[37]),
        .I3(\cnt[37]_i_2_n_0 ),
        .I4(\cnt[63]_i_4_n_0 ),
        .O(\cnt[37]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFFFFFF)) 
    \cnt[37]_i_2 
       (.I0(\cnt[63]_i_7_n_0 ),
        .I1(p_6_in[24]),
        .I2(p_4_in[1]),
        .I3(p_4_in[2]),
        .I4(s_axi_wdata[5]),
        .I5(s_axi_wstrb[0]),
        .O(\cnt[37]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h808080FF)) 
    \cnt[38]_i_1 
       (.I0(p_6_in[24]),
        .I1(cnt_en_q),
        .I2(cnt0[38]),
        .I3(\cnt[38]_i_2_n_0 ),
        .I4(\cnt[63]_i_4_n_0 ),
        .O(\cnt[38]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFFFFFF)) 
    \cnt[38]_i_2 
       (.I0(\cnt[63]_i_7_n_0 ),
        .I1(p_6_in[24]),
        .I2(p_4_in[1]),
        .I3(p_4_in[2]),
        .I4(s_axi_wstrb[0]),
        .I5(s_axi_wdata[6]),
        .O(\cnt[38]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h808080FF80808080)) 
    \cnt[39]_i_1 
       (.I0(p_6_in[24]),
        .I1(cnt_en_q),
        .I2(cnt0[39]),
        .I3(\cnt[63]_i_4_n_0 ),
        .I4(\cnt[39]_i_2_n_0 ),
        .I5(\cnt[63]_i_6_n_0 ),
        .O(\cnt[39]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \cnt[39]_i_2 
       (.I0(p_6_in[24]),
        .I1(s_axi_wdata[7]),
        .I2(s_axi_wstrb[0]),
        .O(\cnt[39]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h80FF8080)) 
    \cnt[3]_i_1 
       (.I0(p_6_in[24]),
        .I1(cnt_en_q),
        .I2(cnt0[3]),
        .I3(\cnt[35]_i_2_n_0 ),
        .I4(\cnt[63]_i_4_n_0 ),
        .O(\cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44444F4444444444)) 
    \cnt[40]_i_1 
       (.I0(\cnt[63]_i_2_n_0 ),
        .I1(cnt0[40]),
        .I2(\cnt[63]_i_4_n_0 ),
        .I3(s_axi_wdata[8]),
        .I4(\cnt[47]_i_2_n_0 ),
        .I5(\cnt[63]_i_6_n_0 ),
        .O(\cnt[40]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44444F4444444444)) 
    \cnt[41]_i_1 
       (.I0(\cnt[63]_i_2_n_0 ),
        .I1(cnt0[41]),
        .I2(\cnt[63]_i_4_n_0 ),
        .I3(s_axi_wdata[9]),
        .I4(\cnt[47]_i_2_n_0 ),
        .I5(\cnt[63]_i_6_n_0 ),
        .O(\cnt[41]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44444F4444444444)) 
    \cnt[42]_i_1 
       (.I0(\cnt[63]_i_2_n_0 ),
        .I1(cnt0[42]),
        .I2(\cnt[63]_i_4_n_0 ),
        .I3(s_axi_wdata[10]),
        .I4(\cnt[47]_i_2_n_0 ),
        .I5(\cnt[63]_i_6_n_0 ),
        .O(\cnt[42]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44444F4444444444)) 
    \cnt[43]_i_1 
       (.I0(\cnt[63]_i_2_n_0 ),
        .I1(cnt0[43]),
        .I2(\cnt[63]_i_4_n_0 ),
        .I3(s_axi_wdata[11]),
        .I4(\cnt[47]_i_2_n_0 ),
        .I5(\cnt[63]_i_6_n_0 ),
        .O(\cnt[43]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44444F4444444444)) 
    \cnt[44]_i_1 
       (.I0(\cnt[63]_i_2_n_0 ),
        .I1(cnt0[44]),
        .I2(\cnt[63]_i_4_n_0 ),
        .I3(s_axi_wdata[12]),
        .I4(\cnt[47]_i_2_n_0 ),
        .I5(\cnt[63]_i_6_n_0 ),
        .O(\cnt[44]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44444F4444444444)) 
    \cnt[45]_i_1 
       (.I0(\cnt[63]_i_2_n_0 ),
        .I1(cnt0[45]),
        .I2(\cnt[63]_i_4_n_0 ),
        .I3(s_axi_wdata[13]),
        .I4(\cnt[47]_i_2_n_0 ),
        .I5(\cnt[63]_i_6_n_0 ),
        .O(\cnt[45]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44444F4444444444)) 
    \cnt[46]_i_1 
       (.I0(\cnt[63]_i_2_n_0 ),
        .I1(cnt0[46]),
        .I2(\cnt[63]_i_4_n_0 ),
        .I3(s_axi_wdata[14]),
        .I4(\cnt[47]_i_2_n_0 ),
        .I5(\cnt[63]_i_6_n_0 ),
        .O(\cnt[46]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44444F4444444444)) 
    \cnt[47]_i_1 
       (.I0(\cnt[63]_i_2_n_0 ),
        .I1(cnt0[47]),
        .I2(\cnt[63]_i_4_n_0 ),
        .I3(s_axi_wdata[15]),
        .I4(\cnt[47]_i_2_n_0 ),
        .I5(\cnt[63]_i_6_n_0 ),
        .O(\cnt[47]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \cnt[47]_i_2 
       (.I0(p_6_in[24]),
        .I1(s_axi_wstrb[1]),
        .O(\cnt[47]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h44444F4444444444)) 
    \cnt[48]_i_1 
       (.I0(\cnt[63]_i_2_n_0 ),
        .I1(cnt0[48]),
        .I2(\cnt[63]_i_4_n_0 ),
        .I3(s_axi_wdata[16]),
        .I4(\cnt[55]_i_2_n_0 ),
        .I5(\cnt[63]_i_6_n_0 ),
        .O(\cnt[48]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44444F4444444444)) 
    \cnt[49]_i_1 
       (.I0(\cnt[63]_i_2_n_0 ),
        .I1(cnt0[49]),
        .I2(\cnt[63]_i_4_n_0 ),
        .I3(s_axi_wdata[17]),
        .I4(\cnt[55]_i_2_n_0 ),
        .I5(\cnt[63]_i_6_n_0 ),
        .O(\cnt[49]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80FF8080)) 
    \cnt[4]_i_1 
       (.I0(p_6_in[24]),
        .I1(cnt_en_q),
        .I2(cnt0[4]),
        .I3(\cnt[36]_i_3_n_0 ),
        .I4(\cnt[63]_i_4_n_0 ),
        .O(\cnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44444F4444444444)) 
    \cnt[50]_i_1 
       (.I0(\cnt[63]_i_2_n_0 ),
        .I1(cnt0[50]),
        .I2(\cnt[63]_i_4_n_0 ),
        .I3(s_axi_wdata[18]),
        .I4(\cnt[55]_i_2_n_0 ),
        .I5(\cnt[63]_i_6_n_0 ),
        .O(\cnt[50]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44444F4444444444)) 
    \cnt[51]_i_1 
       (.I0(\cnt[63]_i_2_n_0 ),
        .I1(cnt0[51]),
        .I2(\cnt[63]_i_4_n_0 ),
        .I3(s_axi_wdata[19]),
        .I4(\cnt[55]_i_2_n_0 ),
        .I5(\cnt[63]_i_6_n_0 ),
        .O(\cnt[51]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44444F4444444444)) 
    \cnt[52]_i_1 
       (.I0(\cnt[63]_i_2_n_0 ),
        .I1(cnt0[52]),
        .I2(\cnt[63]_i_4_n_0 ),
        .I3(s_axi_wdata[20]),
        .I4(\cnt[55]_i_2_n_0 ),
        .I5(\cnt[63]_i_6_n_0 ),
        .O(\cnt[52]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44444F4444444444)) 
    \cnt[53]_i_1 
       (.I0(\cnt[63]_i_2_n_0 ),
        .I1(cnt0[53]),
        .I2(\cnt[63]_i_4_n_0 ),
        .I3(s_axi_wdata[21]),
        .I4(\cnt[55]_i_2_n_0 ),
        .I5(\cnt[63]_i_6_n_0 ),
        .O(\cnt[53]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44444F4444444444)) 
    \cnt[54]_i_1 
       (.I0(\cnt[63]_i_2_n_0 ),
        .I1(cnt0[54]),
        .I2(\cnt[63]_i_4_n_0 ),
        .I3(s_axi_wdata[22]),
        .I4(\cnt[55]_i_2_n_0 ),
        .I5(\cnt[63]_i_6_n_0 ),
        .O(\cnt[54]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44444F4444444444)) 
    \cnt[55]_i_1 
       (.I0(\cnt[63]_i_2_n_0 ),
        .I1(cnt0[55]),
        .I2(\cnt[63]_i_4_n_0 ),
        .I3(s_axi_wdata[23]),
        .I4(\cnt[55]_i_2_n_0 ),
        .I5(\cnt[63]_i_6_n_0 ),
        .O(\cnt[55]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \cnt[55]_i_2 
       (.I0(p_6_in[24]),
        .I1(s_axi_wstrb[2]),
        .O(\cnt[55]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h44444F4444444444)) 
    \cnt[56]_i_1 
       (.I0(\cnt[63]_i_2_n_0 ),
        .I1(cnt0[56]),
        .I2(\cnt[63]_i_4_n_0 ),
        .I3(s_axi_wdata[24]),
        .I4(\cnt[63]_i_5_n_0 ),
        .I5(\cnt[63]_i_6_n_0 ),
        .O(\cnt[56]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44444F4444444444)) 
    \cnt[57]_i_1 
       (.I0(\cnt[63]_i_2_n_0 ),
        .I1(cnt0[57]),
        .I2(\cnt[63]_i_4_n_0 ),
        .I3(s_axi_wdata[25]),
        .I4(\cnt[63]_i_5_n_0 ),
        .I5(\cnt[63]_i_6_n_0 ),
        .O(\cnt[57]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44444F4444444444)) 
    \cnt[58]_i_1 
       (.I0(\cnt[63]_i_2_n_0 ),
        .I1(cnt0[58]),
        .I2(\cnt[63]_i_4_n_0 ),
        .I3(s_axi_wdata[26]),
        .I4(\cnt[63]_i_5_n_0 ),
        .I5(\cnt[63]_i_6_n_0 ),
        .O(\cnt[58]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44444F4444444444)) 
    \cnt[59]_i_1 
       (.I0(\cnt[63]_i_2_n_0 ),
        .I1(cnt0[59]),
        .I2(\cnt[63]_i_4_n_0 ),
        .I3(s_axi_wdata[27]),
        .I4(\cnt[63]_i_5_n_0 ),
        .I5(\cnt[63]_i_6_n_0 ),
        .O(\cnt[59]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80FF8080)) 
    \cnt[5]_i_1 
       (.I0(p_6_in[24]),
        .I1(cnt_en_q),
        .I2(cnt0[5]),
        .I3(\cnt[37]_i_2_n_0 ),
        .I4(\cnt[63]_i_4_n_0 ),
        .O(\cnt[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44444F4444444444)) 
    \cnt[60]_i_1 
       (.I0(\cnt[63]_i_2_n_0 ),
        .I1(cnt0[60]),
        .I2(\cnt[63]_i_4_n_0 ),
        .I3(s_axi_wdata[28]),
        .I4(\cnt[63]_i_5_n_0 ),
        .I5(\cnt[63]_i_6_n_0 ),
        .O(\cnt[60]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44444F4444444444)) 
    \cnt[61]_i_1 
       (.I0(\cnt[63]_i_2_n_0 ),
        .I1(cnt0[61]),
        .I2(\cnt[63]_i_4_n_0 ),
        .I3(s_axi_wdata[29]),
        .I4(\cnt[63]_i_5_n_0 ),
        .I5(\cnt[63]_i_6_n_0 ),
        .O(\cnt[61]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44444F4444444444)) 
    \cnt[62]_i_1 
       (.I0(\cnt[63]_i_2_n_0 ),
        .I1(cnt0[62]),
        .I2(\cnt[63]_i_4_n_0 ),
        .I3(s_axi_wdata[30]),
        .I4(\cnt[63]_i_5_n_0 ),
        .I5(\cnt[63]_i_6_n_0 ),
        .O(\cnt[62]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44444F4444444444)) 
    \cnt[63]_i_1 
       (.I0(\cnt[63]_i_2_n_0 ),
        .I1(cnt0[63]),
        .I2(\cnt[63]_i_4_n_0 ),
        .I3(s_axi_wdata[31]),
        .I4(\cnt[63]_i_5_n_0 ),
        .I5(\cnt[63]_i_6_n_0 ),
        .O(\cnt[63]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \cnt[63]_i_2 
       (.I0(p_6_in[24]),
        .I1(cnt_en_q),
        .O(\cnt[63]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h45)) 
    \cnt[63]_i_4 
       (.I0(p_4_in[2]),
        .I1(p_4_in[1]),
        .I2(p_4_in[0]),
        .O(\cnt[63]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \cnt[63]_i_5 
       (.I0(p_6_in[24]),
        .I1(s_axi_wstrb[3]),
        .O(\cnt[63]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \cnt[63]_i_6 
       (.I0(p_4_in[1]),
        .I1(p_4_in[2]),
        .I2(\cnt[63]_i_7_n_0 ),
        .O(\cnt[63]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \cnt[63]_i_7 
       (.I0(p_4_in[3]),
        .I1(s_axi_wready),
        .I2(s_axi_awready),
        .I3(s_axi_wvalid),
        .I4(s_axi_awvalid),
        .O(\cnt[63]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h80FF8080)) 
    \cnt[6]_i_1 
       (.I0(p_6_in[24]),
        .I1(cnt_en_q),
        .I2(cnt0[6]),
        .I3(\cnt[38]_i_2_n_0 ),
        .I4(\cnt[63]_i_4_n_0 ),
        .O(\cnt[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80FF808080808080)) 
    \cnt[7]_i_1 
       (.I0(p_6_in[24]),
        .I1(cnt_en_q),
        .I2(cnt0[7]),
        .I3(\cnt[39]_i_2_n_0 ),
        .I4(\cnt[63]_i_4_n_0 ),
        .I5(\cnt[63]_i_6_n_0 ),
        .O(\cnt[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44F4444444444444)) 
    \cnt[8]_i_1 
       (.I0(\cnt[63]_i_2_n_0 ),
        .I1(cnt0[8]),
        .I2(s_axi_wdata[8]),
        .I3(\cnt[47]_i_2_n_0 ),
        .I4(\cnt[63]_i_4_n_0 ),
        .I5(\cnt[63]_i_6_n_0 ),
        .O(\cnt[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44F4444444444444)) 
    \cnt[9]_i_1 
       (.I0(\cnt[63]_i_2_n_0 ),
        .I1(cnt0[9]),
        .I2(s_axi_wdata[9]),
        .I3(\cnt[47]_i_2_n_0 ),
        .I4(\cnt[63]_i_4_n_0 ),
        .I5(\cnt[63]_i_6_n_0 ),
        .O(\cnt[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hBFBF0400)) 
    cnt_en_i_1
       (.I0(tx_enable_i_3_n_0),
        .I1(s_axi_wstrb[1]),
        .I2(s_axi_wdata[9]),
        .I3(s_axi_wdata[8]),
        .I4(p_6_in[24]),
        .O(cnt_en_i_1_n_0));
  LUT5 #(
    .INIT(32'hFE000000)) 
    cnt_en_q_i_1
       (.I0(rx_data_ready),
        .I1(tx_data_ready),
        .I2(cnt_en_q),
        .I3(p_6_in[24]),
        .I4(aresetn),
        .O(cnt_en_q_i_1_n_0));
  FDRE cnt_en_q_reg
       (.C(aclk),
        .CE(1'b1),
        .D(cnt_en_q_i_1_n_0),
        .Q(cnt_en_q),
        .R(1'b0));
  FDRE cnt_en_reg
       (.C(aclk),
        .CE(1'b1),
        .D(cnt_en_i_1_n_0),
        .Q(p_6_in[24]),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h55550D5500000C00)) 
    cnt_latch_arm_req_i_1
       (.I0(cnt_latch_arm_req_i_2_n_0),
        .I1(s_axi_wdata[10]),
        .I2(s_axi_wdata[11]),
        .I3(s_axi_wstrb[1]),
        .I4(tx_enable_i_3_n_0),
        .I5(p_6_in[25]),
        .O(cnt_latch_arm_req_i_1_n_0));
  LUT5 #(
    .INIT(32'h00007F00)) 
    cnt_latch_arm_req_i_2
       (.I0(\s_axi_rdata[15]_i_3_n_0 ),
        .I1(\s_axi_rdata[13]_i_3_n_0 ),
        .I2(rx_enable_reg_0),
        .I3(p_6_in[25]),
        .I4(p_6_in[27]),
        .O(cnt_latch_arm_req_i_2_n_0));
  FDRE cnt_latch_arm_req_reg
       (.C(aclk),
        .CE(1'b1),
        .D(cnt_latch_arm_req_i_1_n_0),
        .Q(p_6_in[25]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h00E0)) 
    cnt_latch_armed_i_1
       (.I0(p_6_in[26]),
        .I1(cnt_latch_armed0),
        .I2(aresetn),
        .I3(p_6_in[27]),
        .O(cnt_latch_armed_i_1_n_0));
  LUT6 #(
    .INIT(64'h2AAA2A2A2AAAAAAA)) 
    cnt_latch_armed_i_2
       (.I0(p_6_in[25]),
        .I1(rx_enable_reg_0),
        .I2(\s_axi_rdata[13]_i_3_n_0 ),
        .I3(rx_data_ready_ovr_val_reg_n_0),
        .I4(rx_data_ready_ovr_en),
        .I5(rx_data_ready),
        .O(cnt_latch_armed0));
  FDRE cnt_latch_armed_reg
       (.C(aclk),
        .CE(1'b1),
        .D(cnt_latch_armed_i_1_n_0),
        .Q(p_6_in[26]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h3FFFFFFF2AAAAAAA)) 
    cnt_latch_valid_i_1
       (.I0(cnt_latched0),
        .I1(p_0_in__0[2]),
        .I2(p_0_in__0[3]),
        .I3(p_0_in__0[1]),
        .I4(s_axi_reg_rden),
        .I5(p_6_in[27]),
        .O(cnt_latch_valid_i_1_n_0));
  FDRE cnt_latch_valid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(cnt_latch_valid_i_1_n_0),
        .Q(p_6_in[27]),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00008000)) 
    \cnt_latched[63]_i_1 
       (.I0(rx_enable_reg_0),
        .I1(\s_axi_rdata[13]_i_3_n_0 ),
        .I2(\s_axi_rdata[15]_i_3_n_0 ),
        .I3(p_6_in[26]),
        .I4(p_6_in[27]),
        .O(cnt_latched0));
  FDRE \cnt_latched_reg[0] 
       (.C(aclk),
        .CE(cnt_latched0),
        .D(\cnt_reg_n_0_[0] ),
        .Q(\cnt_latched_reg_n_0_[0] ),
        .R(p_0_in));
  FDRE \cnt_latched_reg[10] 
       (.C(aclk),
        .CE(cnt_latched0),
        .D(\cnt_reg_n_0_[10] ),
        .Q(\cnt_latched_reg_n_0_[10] ),
        .R(p_0_in));
  FDRE \cnt_latched_reg[11] 
       (.C(aclk),
        .CE(cnt_latched0),
        .D(\cnt_reg_n_0_[11] ),
        .Q(\cnt_latched_reg_n_0_[11] ),
        .R(p_0_in));
  FDRE \cnt_latched_reg[12] 
       (.C(aclk),
        .CE(cnt_latched0),
        .D(\cnt_reg_n_0_[12] ),
        .Q(\cnt_latched_reg_n_0_[12] ),
        .R(p_0_in));
  FDRE \cnt_latched_reg[13] 
       (.C(aclk),
        .CE(cnt_latched0),
        .D(\cnt_reg_n_0_[13] ),
        .Q(\cnt_latched_reg_n_0_[13] ),
        .R(p_0_in));
  FDRE \cnt_latched_reg[14] 
       (.C(aclk),
        .CE(cnt_latched0),
        .D(\cnt_reg_n_0_[14] ),
        .Q(\cnt_latched_reg_n_0_[14] ),
        .R(p_0_in));
  FDRE \cnt_latched_reg[15] 
       (.C(aclk),
        .CE(cnt_latched0),
        .D(\cnt_reg_n_0_[15] ),
        .Q(\cnt_latched_reg_n_0_[15] ),
        .R(p_0_in));
  FDRE \cnt_latched_reg[16] 
       (.C(aclk),
        .CE(cnt_latched0),
        .D(\cnt_reg_n_0_[16] ),
        .Q(\cnt_latched_reg_n_0_[16] ),
        .R(p_0_in));
  FDRE \cnt_latched_reg[17] 
       (.C(aclk),
        .CE(cnt_latched0),
        .D(\cnt_reg_n_0_[17] ),
        .Q(\cnt_latched_reg_n_0_[17] ),
        .R(p_0_in));
  FDRE \cnt_latched_reg[18] 
       (.C(aclk),
        .CE(cnt_latched0),
        .D(\cnt_reg_n_0_[18] ),
        .Q(\cnt_latched_reg_n_0_[18] ),
        .R(p_0_in));
  FDRE \cnt_latched_reg[19] 
       (.C(aclk),
        .CE(cnt_latched0),
        .D(\cnt_reg_n_0_[19] ),
        .Q(\cnt_latched_reg_n_0_[19] ),
        .R(p_0_in));
  FDRE \cnt_latched_reg[1] 
       (.C(aclk),
        .CE(cnt_latched0),
        .D(\cnt_reg_n_0_[1] ),
        .Q(\cnt_latched_reg_n_0_[1] ),
        .R(p_0_in));
  FDRE \cnt_latched_reg[20] 
       (.C(aclk),
        .CE(cnt_latched0),
        .D(\cnt_reg_n_0_[20] ),
        .Q(\cnt_latched_reg_n_0_[20] ),
        .R(p_0_in));
  FDRE \cnt_latched_reg[21] 
       (.C(aclk),
        .CE(cnt_latched0),
        .D(\cnt_reg_n_0_[21] ),
        .Q(\cnt_latched_reg_n_0_[21] ),
        .R(p_0_in));
  FDRE \cnt_latched_reg[22] 
       (.C(aclk),
        .CE(cnt_latched0),
        .D(\cnt_reg_n_0_[22] ),
        .Q(\cnt_latched_reg_n_0_[22] ),
        .R(p_0_in));
  FDRE \cnt_latched_reg[23] 
       (.C(aclk),
        .CE(cnt_latched0),
        .D(\cnt_reg_n_0_[23] ),
        .Q(\cnt_latched_reg_n_0_[23] ),
        .R(p_0_in));
  FDRE \cnt_latched_reg[24] 
       (.C(aclk),
        .CE(cnt_latched0),
        .D(\cnt_reg_n_0_[24] ),
        .Q(\cnt_latched_reg_n_0_[24] ),
        .R(p_0_in));
  FDRE \cnt_latched_reg[25] 
       (.C(aclk),
        .CE(cnt_latched0),
        .D(\cnt_reg_n_0_[25] ),
        .Q(\cnt_latched_reg_n_0_[25] ),
        .R(p_0_in));
  FDRE \cnt_latched_reg[26] 
       (.C(aclk),
        .CE(cnt_latched0),
        .D(\cnt_reg_n_0_[26] ),
        .Q(\cnt_latched_reg_n_0_[26] ),
        .R(p_0_in));
  FDRE \cnt_latched_reg[27] 
       (.C(aclk),
        .CE(cnt_latched0),
        .D(\cnt_reg_n_0_[27] ),
        .Q(\cnt_latched_reg_n_0_[27] ),
        .R(p_0_in));
  FDRE \cnt_latched_reg[28] 
       (.C(aclk),
        .CE(cnt_latched0),
        .D(\cnt_reg_n_0_[28] ),
        .Q(\cnt_latched_reg_n_0_[28] ),
        .R(p_0_in));
  FDRE \cnt_latched_reg[29] 
       (.C(aclk),
        .CE(cnt_latched0),
        .D(\cnt_reg_n_0_[29] ),
        .Q(\cnt_latched_reg_n_0_[29] ),
        .R(p_0_in));
  FDRE \cnt_latched_reg[2] 
       (.C(aclk),
        .CE(cnt_latched0),
        .D(\cnt_reg_n_0_[2] ),
        .Q(\cnt_latched_reg_n_0_[2] ),
        .R(p_0_in));
  FDRE \cnt_latched_reg[30] 
       (.C(aclk),
        .CE(cnt_latched0),
        .D(\cnt_reg_n_0_[30] ),
        .Q(\cnt_latched_reg_n_0_[30] ),
        .R(p_0_in));
  FDRE \cnt_latched_reg[31] 
       (.C(aclk),
        .CE(cnt_latched0),
        .D(\cnt_reg_n_0_[31] ),
        .Q(\cnt_latched_reg_n_0_[31] ),
        .R(p_0_in));
  FDRE \cnt_latched_reg[32] 
       (.C(aclk),
        .CE(cnt_latched0),
        .D(p_1_in[0]),
        .Q(data9[0]),
        .R(p_0_in));
  FDRE \cnt_latched_reg[33] 
       (.C(aclk),
        .CE(cnt_latched0),
        .D(p_1_in[1]),
        .Q(data9[1]),
        .R(p_0_in));
  FDRE \cnt_latched_reg[34] 
       (.C(aclk),
        .CE(cnt_latched0),
        .D(p_1_in[2]),
        .Q(data9[2]),
        .R(p_0_in));
  FDRE \cnt_latched_reg[35] 
       (.C(aclk),
        .CE(cnt_latched0),
        .D(p_1_in[3]),
        .Q(data9[3]),
        .R(p_0_in));
  FDRE \cnt_latched_reg[36] 
       (.C(aclk),
        .CE(cnt_latched0),
        .D(p_1_in[4]),
        .Q(data9[4]),
        .R(p_0_in));
  FDRE \cnt_latched_reg[37] 
       (.C(aclk),
        .CE(cnt_latched0),
        .D(p_1_in[5]),
        .Q(data9[5]),
        .R(p_0_in));
  FDRE \cnt_latched_reg[38] 
       (.C(aclk),
        .CE(cnt_latched0),
        .D(p_1_in[6]),
        .Q(data9[6]),
        .R(p_0_in));
  FDRE \cnt_latched_reg[39] 
       (.C(aclk),
        .CE(cnt_latched0),
        .D(p_1_in[7]),
        .Q(data9[7]),
        .R(p_0_in));
  FDRE \cnt_latched_reg[3] 
       (.C(aclk),
        .CE(cnt_latched0),
        .D(\cnt_reg_n_0_[3] ),
        .Q(\cnt_latched_reg_n_0_[3] ),
        .R(p_0_in));
  FDRE \cnt_latched_reg[40] 
       (.C(aclk),
        .CE(cnt_latched0),
        .D(p_1_in[8]),
        .Q(data9[8]),
        .R(p_0_in));
  FDRE \cnt_latched_reg[41] 
       (.C(aclk),
        .CE(cnt_latched0),
        .D(p_1_in[9]),
        .Q(data9[9]),
        .R(p_0_in));
  FDRE \cnt_latched_reg[42] 
       (.C(aclk),
        .CE(cnt_latched0),
        .D(p_1_in[10]),
        .Q(data9[10]),
        .R(p_0_in));
  FDRE \cnt_latched_reg[43] 
       (.C(aclk),
        .CE(cnt_latched0),
        .D(p_1_in[11]),
        .Q(data9[11]),
        .R(p_0_in));
  FDRE \cnt_latched_reg[44] 
       (.C(aclk),
        .CE(cnt_latched0),
        .D(p_1_in[12]),
        .Q(data9[12]),
        .R(p_0_in));
  FDRE \cnt_latched_reg[45] 
       (.C(aclk),
        .CE(cnt_latched0),
        .D(p_1_in[13]),
        .Q(data9[13]),
        .R(p_0_in));
  FDRE \cnt_latched_reg[46] 
       (.C(aclk),
        .CE(cnt_latched0),
        .D(p_1_in[14]),
        .Q(data9[14]),
        .R(p_0_in));
  FDRE \cnt_latched_reg[47] 
       (.C(aclk),
        .CE(cnt_latched0),
        .D(p_1_in[15]),
        .Q(data9[15]),
        .R(p_0_in));
  FDRE \cnt_latched_reg[48] 
       (.C(aclk),
        .CE(cnt_latched0),
        .D(p_1_in[16]),
        .Q(data9[16]),
        .R(p_0_in));
  FDRE \cnt_latched_reg[49] 
       (.C(aclk),
        .CE(cnt_latched0),
        .D(p_1_in[17]),
        .Q(data9[17]),
        .R(p_0_in));
  FDRE \cnt_latched_reg[4] 
       (.C(aclk),
        .CE(cnt_latched0),
        .D(\cnt_reg_n_0_[4] ),
        .Q(\cnt_latched_reg_n_0_[4] ),
        .R(p_0_in));
  FDRE \cnt_latched_reg[50] 
       (.C(aclk),
        .CE(cnt_latched0),
        .D(p_1_in[18]),
        .Q(data9[18]),
        .R(p_0_in));
  FDRE \cnt_latched_reg[51] 
       (.C(aclk),
        .CE(cnt_latched0),
        .D(p_1_in[19]),
        .Q(data9[19]),
        .R(p_0_in));
  FDRE \cnt_latched_reg[52] 
       (.C(aclk),
        .CE(cnt_latched0),
        .D(p_1_in[20]),
        .Q(data9[20]),
        .R(p_0_in));
  FDRE \cnt_latched_reg[53] 
       (.C(aclk),
        .CE(cnt_latched0),
        .D(p_1_in[21]),
        .Q(data9[21]),
        .R(p_0_in));
  FDRE \cnt_latched_reg[54] 
       (.C(aclk),
        .CE(cnt_latched0),
        .D(p_1_in[22]),
        .Q(data9[22]),
        .R(p_0_in));
  FDRE \cnt_latched_reg[55] 
       (.C(aclk),
        .CE(cnt_latched0),
        .D(p_1_in[23]),
        .Q(data9[23]),
        .R(p_0_in));
  FDRE \cnt_latched_reg[56] 
       (.C(aclk),
        .CE(cnt_latched0),
        .D(p_1_in[24]),
        .Q(data9[24]),
        .R(p_0_in));
  FDRE \cnt_latched_reg[57] 
       (.C(aclk),
        .CE(cnt_latched0),
        .D(p_1_in[25]),
        .Q(data9[25]),
        .R(p_0_in));
  FDRE \cnt_latched_reg[58] 
       (.C(aclk),
        .CE(cnt_latched0),
        .D(p_1_in[26]),
        .Q(data9[26]),
        .R(p_0_in));
  FDRE \cnt_latched_reg[59] 
       (.C(aclk),
        .CE(cnt_latched0),
        .D(p_1_in[27]),
        .Q(data9[27]),
        .R(p_0_in));
  FDRE \cnt_latched_reg[5] 
       (.C(aclk),
        .CE(cnt_latched0),
        .D(\cnt_reg_n_0_[5] ),
        .Q(\cnt_latched_reg_n_0_[5] ),
        .R(p_0_in));
  FDRE \cnt_latched_reg[60] 
       (.C(aclk),
        .CE(cnt_latched0),
        .D(p_1_in[28]),
        .Q(data9[28]),
        .R(p_0_in));
  FDRE \cnt_latched_reg[61] 
       (.C(aclk),
        .CE(cnt_latched0),
        .D(p_1_in[29]),
        .Q(data9[29]),
        .R(p_0_in));
  FDRE \cnt_latched_reg[62] 
       (.C(aclk),
        .CE(cnt_latched0),
        .D(p_1_in[30]),
        .Q(data9[30]),
        .R(p_0_in));
  FDRE \cnt_latched_reg[63] 
       (.C(aclk),
        .CE(cnt_latched0),
        .D(p_1_in[31]),
        .Q(data9[31]),
        .R(p_0_in));
  FDRE \cnt_latched_reg[6] 
       (.C(aclk),
        .CE(cnt_latched0),
        .D(\cnt_reg_n_0_[6] ),
        .Q(\cnt_latched_reg_n_0_[6] ),
        .R(p_0_in));
  FDRE \cnt_latched_reg[7] 
       (.C(aclk),
        .CE(cnt_latched0),
        .D(\cnt_reg_n_0_[7] ),
        .Q(\cnt_latched_reg_n_0_[7] ),
        .R(p_0_in));
  FDRE \cnt_latched_reg[8] 
       (.C(aclk),
        .CE(cnt_latched0),
        .D(\cnt_reg_n_0_[8] ),
        .Q(\cnt_latched_reg_n_0_[8] ),
        .R(p_0_in));
  FDRE \cnt_latched_reg[9] 
       (.C(aclk),
        .CE(cnt_latched0),
        .D(\cnt_reg_n_0_[9] ),
        .Q(\cnt_latched_reg_n_0_[9] ),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00000020)) 
    \cnt_rd_buf[31]_i_1 
       (.I0(s_axi_reg_rden),
        .I1(p_0_in__0[2]),
        .I2(p_0_in__0[3]),
        .I3(p_0_in__0[1]),
        .I4(p_0_in__0[0]),
        .O(cnt_rd_buf));
  FDRE \cnt_rd_buf_reg[0] 
       (.C(aclk),
        .CE(cnt_rd_buf),
        .D(p_1_in[0]),
        .Q(\cnt_rd_buf_reg_n_0_[0] ),
        .R(p_0_in));
  FDRE \cnt_rd_buf_reg[10] 
       (.C(aclk),
        .CE(cnt_rd_buf),
        .D(p_1_in[10]),
        .Q(\cnt_rd_buf_reg_n_0_[10] ),
        .R(p_0_in));
  FDRE \cnt_rd_buf_reg[11] 
       (.C(aclk),
        .CE(cnt_rd_buf),
        .D(p_1_in[11]),
        .Q(\cnt_rd_buf_reg_n_0_[11] ),
        .R(p_0_in));
  FDRE \cnt_rd_buf_reg[12] 
       (.C(aclk),
        .CE(cnt_rd_buf),
        .D(p_1_in[12]),
        .Q(\cnt_rd_buf_reg_n_0_[12] ),
        .R(p_0_in));
  FDRE \cnt_rd_buf_reg[13] 
       (.C(aclk),
        .CE(cnt_rd_buf),
        .D(p_1_in[13]),
        .Q(\cnt_rd_buf_reg_n_0_[13] ),
        .R(p_0_in));
  FDRE \cnt_rd_buf_reg[14] 
       (.C(aclk),
        .CE(cnt_rd_buf),
        .D(p_1_in[14]),
        .Q(\cnt_rd_buf_reg_n_0_[14] ),
        .R(p_0_in));
  FDRE \cnt_rd_buf_reg[15] 
       (.C(aclk),
        .CE(cnt_rd_buf),
        .D(p_1_in[15]),
        .Q(\cnt_rd_buf_reg_n_0_[15] ),
        .R(p_0_in));
  FDRE \cnt_rd_buf_reg[16] 
       (.C(aclk),
        .CE(cnt_rd_buf),
        .D(p_1_in[16]),
        .Q(\cnt_rd_buf_reg_n_0_[16] ),
        .R(p_0_in));
  FDRE \cnt_rd_buf_reg[17] 
       (.C(aclk),
        .CE(cnt_rd_buf),
        .D(p_1_in[17]),
        .Q(\cnt_rd_buf_reg_n_0_[17] ),
        .R(p_0_in));
  FDRE \cnt_rd_buf_reg[18] 
       (.C(aclk),
        .CE(cnt_rd_buf),
        .D(p_1_in[18]),
        .Q(\cnt_rd_buf_reg_n_0_[18] ),
        .R(p_0_in));
  FDRE \cnt_rd_buf_reg[19] 
       (.C(aclk),
        .CE(cnt_rd_buf),
        .D(p_1_in[19]),
        .Q(\cnt_rd_buf_reg_n_0_[19] ),
        .R(p_0_in));
  FDRE \cnt_rd_buf_reg[1] 
       (.C(aclk),
        .CE(cnt_rd_buf),
        .D(p_1_in[1]),
        .Q(\cnt_rd_buf_reg_n_0_[1] ),
        .R(p_0_in));
  FDRE \cnt_rd_buf_reg[20] 
       (.C(aclk),
        .CE(cnt_rd_buf),
        .D(p_1_in[20]),
        .Q(\cnt_rd_buf_reg_n_0_[20] ),
        .R(p_0_in));
  FDRE \cnt_rd_buf_reg[21] 
       (.C(aclk),
        .CE(cnt_rd_buf),
        .D(p_1_in[21]),
        .Q(\cnt_rd_buf_reg_n_0_[21] ),
        .R(p_0_in));
  FDRE \cnt_rd_buf_reg[22] 
       (.C(aclk),
        .CE(cnt_rd_buf),
        .D(p_1_in[22]),
        .Q(\cnt_rd_buf_reg_n_0_[22] ),
        .R(p_0_in));
  FDRE \cnt_rd_buf_reg[23] 
       (.C(aclk),
        .CE(cnt_rd_buf),
        .D(p_1_in[23]),
        .Q(\cnt_rd_buf_reg_n_0_[23] ),
        .R(p_0_in));
  FDRE \cnt_rd_buf_reg[24] 
       (.C(aclk),
        .CE(cnt_rd_buf),
        .D(p_1_in[24]),
        .Q(\cnt_rd_buf_reg_n_0_[24] ),
        .R(p_0_in));
  FDRE \cnt_rd_buf_reg[25] 
       (.C(aclk),
        .CE(cnt_rd_buf),
        .D(p_1_in[25]),
        .Q(\cnt_rd_buf_reg_n_0_[25] ),
        .R(p_0_in));
  FDRE \cnt_rd_buf_reg[26] 
       (.C(aclk),
        .CE(cnt_rd_buf),
        .D(p_1_in[26]),
        .Q(\cnt_rd_buf_reg_n_0_[26] ),
        .R(p_0_in));
  FDRE \cnt_rd_buf_reg[27] 
       (.C(aclk),
        .CE(cnt_rd_buf),
        .D(p_1_in[27]),
        .Q(\cnt_rd_buf_reg_n_0_[27] ),
        .R(p_0_in));
  FDRE \cnt_rd_buf_reg[28] 
       (.C(aclk),
        .CE(cnt_rd_buf),
        .D(p_1_in[28]),
        .Q(\cnt_rd_buf_reg_n_0_[28] ),
        .R(p_0_in));
  FDRE \cnt_rd_buf_reg[29] 
       (.C(aclk),
        .CE(cnt_rd_buf),
        .D(p_1_in[29]),
        .Q(\cnt_rd_buf_reg_n_0_[29] ),
        .R(p_0_in));
  FDRE \cnt_rd_buf_reg[2] 
       (.C(aclk),
        .CE(cnt_rd_buf),
        .D(p_1_in[2]),
        .Q(\cnt_rd_buf_reg_n_0_[2] ),
        .R(p_0_in));
  FDRE \cnt_rd_buf_reg[30] 
       (.C(aclk),
        .CE(cnt_rd_buf),
        .D(p_1_in[30]),
        .Q(\cnt_rd_buf_reg_n_0_[30] ),
        .R(p_0_in));
  FDRE \cnt_rd_buf_reg[31] 
       (.C(aclk),
        .CE(cnt_rd_buf),
        .D(p_1_in[31]),
        .Q(\cnt_rd_buf_reg_n_0_[31] ),
        .R(p_0_in));
  FDRE \cnt_rd_buf_reg[3] 
       (.C(aclk),
        .CE(cnt_rd_buf),
        .D(p_1_in[3]),
        .Q(\cnt_rd_buf_reg_n_0_[3] ),
        .R(p_0_in));
  FDRE \cnt_rd_buf_reg[4] 
       (.C(aclk),
        .CE(cnt_rd_buf),
        .D(p_1_in[4]),
        .Q(\cnt_rd_buf_reg_n_0_[4] ),
        .R(p_0_in));
  FDRE \cnt_rd_buf_reg[5] 
       (.C(aclk),
        .CE(cnt_rd_buf),
        .D(p_1_in[5]),
        .Q(\cnt_rd_buf_reg_n_0_[5] ),
        .R(p_0_in));
  FDRE \cnt_rd_buf_reg[6] 
       (.C(aclk),
        .CE(cnt_rd_buf),
        .D(p_1_in[6]),
        .Q(\cnt_rd_buf_reg_n_0_[6] ),
        .R(p_0_in));
  FDRE \cnt_rd_buf_reg[7] 
       (.C(aclk),
        .CE(cnt_rd_buf),
        .D(p_1_in[7]),
        .Q(\cnt_rd_buf_reg_n_0_[7] ),
        .R(p_0_in));
  FDRE \cnt_rd_buf_reg[8] 
       (.C(aclk),
        .CE(cnt_rd_buf),
        .D(p_1_in[8]),
        .Q(\cnt_rd_buf_reg_n_0_[8] ),
        .R(p_0_in));
  FDRE \cnt_rd_buf_reg[9] 
       (.C(aclk),
        .CE(cnt_rd_buf),
        .D(p_1_in[9]),
        .Q(\cnt_rd_buf_reg_n_0_[9] ),
        .R(p_0_in));
  FDRE \cnt_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt[0]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[0] ),
        .R(p_0_in));
  FDRE \cnt_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt[10]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[10] ),
        .R(p_0_in));
  FDRE \cnt_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt[11]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[11] ),
        .R(p_0_in));
  FDRE \cnt_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt[12]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[12] ),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_reg[12]_i_2 
       (.CI(\cnt_reg[8]_i_2_n_0 ),
        .CO({\cnt_reg[12]_i_2_n_0 ,\cnt_reg[12]_i_2_n_1 ,\cnt_reg[12]_i_2_n_2 ,\cnt_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt0[12:9]),
        .S({\cnt_reg_n_0_[12] ,\cnt_reg_n_0_[11] ,\cnt_reg_n_0_[10] ,\cnt_reg_n_0_[9] }));
  FDRE \cnt_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt[13]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[13] ),
        .R(p_0_in));
  FDRE \cnt_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt[14]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[14] ),
        .R(p_0_in));
  FDRE \cnt_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt[15]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[15] ),
        .R(p_0_in));
  FDRE \cnt_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt[16]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[16] ),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_reg[16]_i_2 
       (.CI(\cnt_reg[12]_i_2_n_0 ),
        .CO({\cnt_reg[16]_i_2_n_0 ,\cnt_reg[16]_i_2_n_1 ,\cnt_reg[16]_i_2_n_2 ,\cnt_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt0[16:13]),
        .S({\cnt_reg_n_0_[16] ,\cnt_reg_n_0_[15] ,\cnt_reg_n_0_[14] ,\cnt_reg_n_0_[13] }));
  FDRE \cnt_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt[17]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[17] ),
        .R(p_0_in));
  FDRE \cnt_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt[18]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[18] ),
        .R(p_0_in));
  FDRE \cnt_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt[19]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[19] ),
        .R(p_0_in));
  FDRE \cnt_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt[1]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[1] ),
        .R(p_0_in));
  FDRE \cnt_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt[20]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[20] ),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_reg[20]_i_2 
       (.CI(\cnt_reg[16]_i_2_n_0 ),
        .CO({\cnt_reg[20]_i_2_n_0 ,\cnt_reg[20]_i_2_n_1 ,\cnt_reg[20]_i_2_n_2 ,\cnt_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt0[20:17]),
        .S({\cnt_reg_n_0_[20] ,\cnt_reg_n_0_[19] ,\cnt_reg_n_0_[18] ,\cnt_reg_n_0_[17] }));
  FDRE \cnt_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt[21]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[21] ),
        .R(p_0_in));
  FDRE \cnt_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt[22]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[22] ),
        .R(p_0_in));
  FDRE \cnt_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt[23]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[23] ),
        .R(p_0_in));
  FDRE \cnt_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt[24]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[24] ),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_reg[24]_i_2 
       (.CI(\cnt_reg[20]_i_2_n_0 ),
        .CO({\cnt_reg[24]_i_2_n_0 ,\cnt_reg[24]_i_2_n_1 ,\cnt_reg[24]_i_2_n_2 ,\cnt_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt0[24:21]),
        .S({\cnt_reg_n_0_[24] ,\cnt_reg_n_0_[23] ,\cnt_reg_n_0_[22] ,\cnt_reg_n_0_[21] }));
  FDRE \cnt_reg[25] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt[25]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[25] ),
        .R(p_0_in));
  FDRE \cnt_reg[26] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt[26]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[26] ),
        .R(p_0_in));
  FDRE \cnt_reg[27] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt[27]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[27] ),
        .R(p_0_in));
  FDRE \cnt_reg[28] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt[28]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[28] ),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_reg[28]_i_2 
       (.CI(\cnt_reg[24]_i_2_n_0 ),
        .CO({\cnt_reg[28]_i_2_n_0 ,\cnt_reg[28]_i_2_n_1 ,\cnt_reg[28]_i_2_n_2 ,\cnt_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt0[28:25]),
        .S({\cnt_reg_n_0_[28] ,\cnt_reg_n_0_[27] ,\cnt_reg_n_0_[26] ,\cnt_reg_n_0_[25] }));
  FDRE \cnt_reg[29] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt[29]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[29] ),
        .R(p_0_in));
  FDRE \cnt_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt[2]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[2] ),
        .R(p_0_in));
  FDRE \cnt_reg[30] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt[30]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[30] ),
        .R(p_0_in));
  FDRE \cnt_reg[31] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt[31]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[31] ),
        .R(p_0_in));
  FDRE \cnt_reg[32] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt[32]_i_1_n_0 ),
        .Q(p_1_in[0]),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_reg[32]_i_2 
       (.CI(\cnt_reg[28]_i_2_n_0 ),
        .CO({\cnt_reg[32]_i_2_n_0 ,\cnt_reg[32]_i_2_n_1 ,\cnt_reg[32]_i_2_n_2 ,\cnt_reg[32]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt0[32:29]),
        .S({p_1_in[0],\cnt_reg_n_0_[31] ,\cnt_reg_n_0_[30] ,\cnt_reg_n_0_[29] }));
  FDRE \cnt_reg[33] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt[33]_i_1_n_0 ),
        .Q(p_1_in[1]),
        .R(p_0_in));
  FDRE \cnt_reg[34] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt[34]_i_1_n_0 ),
        .Q(p_1_in[2]),
        .R(p_0_in));
  FDRE \cnt_reg[35] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt[35]_i_1_n_0 ),
        .Q(p_1_in[3]),
        .R(p_0_in));
  FDRE \cnt_reg[36] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt[36]_i_1_n_0 ),
        .Q(p_1_in[4]),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_reg[36]_i_2 
       (.CI(\cnt_reg[32]_i_2_n_0 ),
        .CO({\cnt_reg[36]_i_2_n_0 ,\cnt_reg[36]_i_2_n_1 ,\cnt_reg[36]_i_2_n_2 ,\cnt_reg[36]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt0[36:33]),
        .S(p_1_in[4:1]));
  FDRE \cnt_reg[37] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt[37]_i_1_n_0 ),
        .Q(p_1_in[5]),
        .R(p_0_in));
  FDRE \cnt_reg[38] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt[38]_i_1_n_0 ),
        .Q(p_1_in[6]),
        .R(p_0_in));
  FDRE \cnt_reg[39] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt[39]_i_1_n_0 ),
        .Q(p_1_in[7]),
        .R(p_0_in));
  FDRE \cnt_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt[3]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[3] ),
        .R(p_0_in));
  FDRE \cnt_reg[40] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt[40]_i_1_n_0 ),
        .Q(p_1_in[8]),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_reg[40]_i_2 
       (.CI(\cnt_reg[36]_i_2_n_0 ),
        .CO({\cnt_reg[40]_i_2_n_0 ,\cnt_reg[40]_i_2_n_1 ,\cnt_reg[40]_i_2_n_2 ,\cnt_reg[40]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt0[40:37]),
        .S(p_1_in[8:5]));
  FDRE \cnt_reg[41] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt[41]_i_1_n_0 ),
        .Q(p_1_in[9]),
        .R(p_0_in));
  FDRE \cnt_reg[42] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt[42]_i_1_n_0 ),
        .Q(p_1_in[10]),
        .R(p_0_in));
  FDRE \cnt_reg[43] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt[43]_i_1_n_0 ),
        .Q(p_1_in[11]),
        .R(p_0_in));
  FDRE \cnt_reg[44] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt[44]_i_1_n_0 ),
        .Q(p_1_in[12]),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_reg[44]_i_2 
       (.CI(\cnt_reg[40]_i_2_n_0 ),
        .CO({\cnt_reg[44]_i_2_n_0 ,\cnt_reg[44]_i_2_n_1 ,\cnt_reg[44]_i_2_n_2 ,\cnt_reg[44]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt0[44:41]),
        .S(p_1_in[12:9]));
  FDRE \cnt_reg[45] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt[45]_i_1_n_0 ),
        .Q(p_1_in[13]),
        .R(p_0_in));
  FDRE \cnt_reg[46] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt[46]_i_1_n_0 ),
        .Q(p_1_in[14]),
        .R(p_0_in));
  FDRE \cnt_reg[47] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt[47]_i_1_n_0 ),
        .Q(p_1_in[15]),
        .R(p_0_in));
  FDRE \cnt_reg[48] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt[48]_i_1_n_0 ),
        .Q(p_1_in[16]),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_reg[48]_i_2 
       (.CI(\cnt_reg[44]_i_2_n_0 ),
        .CO({\cnt_reg[48]_i_2_n_0 ,\cnt_reg[48]_i_2_n_1 ,\cnt_reg[48]_i_2_n_2 ,\cnt_reg[48]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt0[48:45]),
        .S(p_1_in[16:13]));
  FDRE \cnt_reg[49] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt[49]_i_1_n_0 ),
        .Q(p_1_in[17]),
        .R(p_0_in));
  FDRE \cnt_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt[4]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[4] ),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\cnt_reg[4]_i_2_n_0 ,\cnt_reg[4]_i_2_n_1 ,\cnt_reg[4]_i_2_n_2 ,\cnt_reg[4]_i_2_n_3 }),
        .CYINIT(\cnt_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt0[4:1]),
        .S({\cnt_reg_n_0_[4] ,\cnt_reg_n_0_[3] ,\cnt_reg_n_0_[2] ,\cnt_reg_n_0_[1] }));
  FDRE \cnt_reg[50] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt[50]_i_1_n_0 ),
        .Q(p_1_in[18]),
        .R(p_0_in));
  FDRE \cnt_reg[51] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt[51]_i_1_n_0 ),
        .Q(p_1_in[19]),
        .R(p_0_in));
  FDRE \cnt_reg[52] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt[52]_i_1_n_0 ),
        .Q(p_1_in[20]),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_reg[52]_i_2 
       (.CI(\cnt_reg[48]_i_2_n_0 ),
        .CO({\cnt_reg[52]_i_2_n_0 ,\cnt_reg[52]_i_2_n_1 ,\cnt_reg[52]_i_2_n_2 ,\cnt_reg[52]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt0[52:49]),
        .S(p_1_in[20:17]));
  FDRE \cnt_reg[53] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt[53]_i_1_n_0 ),
        .Q(p_1_in[21]),
        .R(p_0_in));
  FDRE \cnt_reg[54] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt[54]_i_1_n_0 ),
        .Q(p_1_in[22]),
        .R(p_0_in));
  FDRE \cnt_reg[55] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt[55]_i_1_n_0 ),
        .Q(p_1_in[23]),
        .R(p_0_in));
  FDRE \cnt_reg[56] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt[56]_i_1_n_0 ),
        .Q(p_1_in[24]),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_reg[56]_i_2 
       (.CI(\cnt_reg[52]_i_2_n_0 ),
        .CO({\cnt_reg[56]_i_2_n_0 ,\cnt_reg[56]_i_2_n_1 ,\cnt_reg[56]_i_2_n_2 ,\cnt_reg[56]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt0[56:53]),
        .S(p_1_in[24:21]));
  FDRE \cnt_reg[57] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt[57]_i_1_n_0 ),
        .Q(p_1_in[25]),
        .R(p_0_in));
  FDRE \cnt_reg[58] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt[58]_i_1_n_0 ),
        .Q(p_1_in[26]),
        .R(p_0_in));
  FDRE \cnt_reg[59] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt[59]_i_1_n_0 ),
        .Q(p_1_in[27]),
        .R(p_0_in));
  FDRE \cnt_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt[5]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[5] ),
        .R(p_0_in));
  FDRE \cnt_reg[60] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt[60]_i_1_n_0 ),
        .Q(p_1_in[28]),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_reg[60]_i_2 
       (.CI(\cnt_reg[56]_i_2_n_0 ),
        .CO({\cnt_reg[60]_i_2_n_0 ,\cnt_reg[60]_i_2_n_1 ,\cnt_reg[60]_i_2_n_2 ,\cnt_reg[60]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt0[60:57]),
        .S(p_1_in[28:25]));
  FDRE \cnt_reg[61] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt[61]_i_1_n_0 ),
        .Q(p_1_in[29]),
        .R(p_0_in));
  FDRE \cnt_reg[62] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt[62]_i_1_n_0 ),
        .Q(p_1_in[30]),
        .R(p_0_in));
  FDRE \cnt_reg[63] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt[63]_i_1_n_0 ),
        .Q(p_1_in[31]),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_reg[63]_i_3 
       (.CI(\cnt_reg[60]_i_2_n_0 ),
        .CO({\NLW_cnt_reg[63]_i_3_CO_UNCONNECTED [3:2],\cnt_reg[63]_i_3_n_2 ,\cnt_reg[63]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_cnt_reg[63]_i_3_O_UNCONNECTED [3],cnt0[63:61]}),
        .S({1'b0,p_1_in[31:29]}));
  FDRE \cnt_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt[6]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[6] ),
        .R(p_0_in));
  FDRE \cnt_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt[7]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[7] ),
        .R(p_0_in));
  FDRE \cnt_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt[8]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[8] ),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_reg[8]_i_2 
       (.CI(\cnt_reg[4]_i_2_n_0 ),
        .CO({\cnt_reg[8]_i_2_n_0 ,\cnt_reg[8]_i_2_n_1 ,\cnt_reg[8]_i_2_n_2 ,\cnt_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt0[8:5]),
        .S({\cnt_reg_n_0_[8] ,\cnt_reg_n_0_[7] ,\cnt_reg_n_0_[6] ,\cnt_reg_n_0_[5] }));
  FDRE \cnt_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt[9]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[9] ),
        .R(p_0_in));
  LUT3 #(
    .INIT(8'h04)) 
    \cnt_rx[15]_i_1 
       (.I0(p_6_in[19]),
        .I1(s_axi_wstrb[1]),
        .I2(\cnt_rx[31]_i_2_n_0 ),
        .O(\cnt_rx[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \cnt_rx[23]_i_1 
       (.I0(p_6_in[19]),
        .I1(s_axi_wstrb[2]),
        .I2(\cnt_rx[31]_i_2_n_0 ),
        .O(\cnt_rx[23]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \cnt_rx[31]_i_1 
       (.I0(p_6_in[19]),
        .I1(s_axi_wstrb[3]),
        .I2(\cnt_rx[31]_i_2_n_0 ),
        .O(\cnt_rx[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFF7F)) 
    \cnt_rx[31]_i_2 
       (.I0(tx_dma_data_ready_ovr_en_i_2_n_0),
        .I1(p_4_in[3]),
        .I2(p_4_in[2]),
        .I3(p_4_in[1]),
        .I4(p_4_in[0]),
        .O(\cnt_rx[31]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \cnt_rx[39]_i_1 
       (.I0(s_axi_wstrb[0]),
        .I1(p_6_in[19]),
        .I2(\cnt_rx[63]_i_2_n_0 ),
        .O(\cnt_rx[39]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \cnt_rx[47]_i_1 
       (.I0(p_6_in[19]),
        .I1(s_axi_wstrb[1]),
        .I2(\cnt_rx[63]_i_2_n_0 ),
        .O(\cnt_rx[47]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \cnt_rx[55]_i_1 
       (.I0(p_6_in[19]),
        .I1(s_axi_wstrb[2]),
        .I2(\cnt_rx[63]_i_2_n_0 ),
        .O(\cnt_rx[55]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \cnt_rx[63]_i_1 
       (.I0(p_6_in[19]),
        .I1(s_axi_wstrb[3]),
        .I2(\cnt_rx[63]_i_2_n_0 ),
        .O(\cnt_rx[63]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hDFFFFFFF)) 
    \cnt_rx[63]_i_2 
       (.I0(p_4_in[0]),
        .I1(p_4_in[1]),
        .I2(tx_dma_data_ready_ovr_en_i_2_n_0),
        .I3(p_4_in[2]),
        .I4(p_4_in[3]),
        .O(\cnt_rx[63]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \cnt_rx[7]_i_1 
       (.I0(s_axi_wstrb[0]),
        .I1(p_6_in[19]),
        .I2(\cnt_rx[31]_i_2_n_0 ),
        .O(\cnt_rx[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4444444400F44444)) 
    cnt_rx_en_i_1
       (.I0(rx_enable1),
        .I1(p_6_in[19]),
        .I2(s_axi_wdata[6]),
        .I3(s_axi_wdata[7]),
        .I4(s_axi_wstrb[0]),
        .I5(tx_enable_i_3_n_0),
        .O(cnt_rx_en_i_1_n_0));
  FDRE cnt_rx_en_reg
       (.C(aclk),
        .CE(1'b1),
        .D(cnt_rx_en_i_1_n_0),
        .Q(p_6_in[19]),
        .R(p_0_in));
  FDRE \cnt_rx_reg[0] 
       (.C(aclk),
        .CE(\cnt_rx[7]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(\cnt_rx_reg_n_0_[0] ),
        .R(p_0_in));
  FDRE \cnt_rx_reg[10] 
       (.C(aclk),
        .CE(\cnt_rx[15]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(\cnt_rx_reg_n_0_[10] ),
        .R(p_0_in));
  FDRE \cnt_rx_reg[11] 
       (.C(aclk),
        .CE(\cnt_rx[15]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(\cnt_rx_reg_n_0_[11] ),
        .R(p_0_in));
  FDRE \cnt_rx_reg[12] 
       (.C(aclk),
        .CE(\cnt_rx[15]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(\cnt_rx_reg_n_0_[12] ),
        .R(p_0_in));
  FDRE \cnt_rx_reg[13] 
       (.C(aclk),
        .CE(\cnt_rx[15]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(\cnt_rx_reg_n_0_[13] ),
        .R(p_0_in));
  FDRE \cnt_rx_reg[14] 
       (.C(aclk),
        .CE(\cnt_rx[15]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(\cnt_rx_reg_n_0_[14] ),
        .R(p_0_in));
  FDRE \cnt_rx_reg[15] 
       (.C(aclk),
        .CE(\cnt_rx[15]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(\cnt_rx_reg_n_0_[15] ),
        .R(p_0_in));
  FDRE \cnt_rx_reg[16] 
       (.C(aclk),
        .CE(\cnt_rx[23]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(\cnt_rx_reg_n_0_[16] ),
        .R(p_0_in));
  FDRE \cnt_rx_reg[17] 
       (.C(aclk),
        .CE(\cnt_rx[23]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(\cnt_rx_reg_n_0_[17] ),
        .R(p_0_in));
  FDRE \cnt_rx_reg[18] 
       (.C(aclk),
        .CE(\cnt_rx[23]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(\cnt_rx_reg_n_0_[18] ),
        .R(p_0_in));
  FDRE \cnt_rx_reg[19] 
       (.C(aclk),
        .CE(\cnt_rx[23]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(\cnt_rx_reg_n_0_[19] ),
        .R(p_0_in));
  FDRE \cnt_rx_reg[1] 
       (.C(aclk),
        .CE(\cnt_rx[7]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(\cnt_rx_reg_n_0_[1] ),
        .R(p_0_in));
  FDRE \cnt_rx_reg[20] 
       (.C(aclk),
        .CE(\cnt_rx[23]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(\cnt_rx_reg_n_0_[20] ),
        .R(p_0_in));
  FDRE \cnt_rx_reg[21] 
       (.C(aclk),
        .CE(\cnt_rx[23]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(\cnt_rx_reg_n_0_[21] ),
        .R(p_0_in));
  FDRE \cnt_rx_reg[22] 
       (.C(aclk),
        .CE(\cnt_rx[23]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(\cnt_rx_reg_n_0_[22] ),
        .R(p_0_in));
  FDRE \cnt_rx_reg[23] 
       (.C(aclk),
        .CE(\cnt_rx[23]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(\cnt_rx_reg_n_0_[23] ),
        .R(p_0_in));
  FDRE \cnt_rx_reg[24] 
       (.C(aclk),
        .CE(\cnt_rx[31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(\cnt_rx_reg_n_0_[24] ),
        .R(p_0_in));
  FDRE \cnt_rx_reg[25] 
       (.C(aclk),
        .CE(\cnt_rx[31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(\cnt_rx_reg_n_0_[25] ),
        .R(p_0_in));
  FDRE \cnt_rx_reg[26] 
       (.C(aclk),
        .CE(\cnt_rx[31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(\cnt_rx_reg_n_0_[26] ),
        .R(p_0_in));
  FDRE \cnt_rx_reg[27] 
       (.C(aclk),
        .CE(\cnt_rx[31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(\cnt_rx_reg_n_0_[27] ),
        .R(p_0_in));
  FDRE \cnt_rx_reg[28] 
       (.C(aclk),
        .CE(\cnt_rx[31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(\cnt_rx_reg_n_0_[28] ),
        .R(p_0_in));
  FDRE \cnt_rx_reg[29] 
       (.C(aclk),
        .CE(\cnt_rx[31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(\cnt_rx_reg_n_0_[29] ),
        .R(p_0_in));
  FDRE \cnt_rx_reg[2] 
       (.C(aclk),
        .CE(\cnt_rx[7]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(\cnt_rx_reg_n_0_[2] ),
        .R(p_0_in));
  FDRE \cnt_rx_reg[30] 
       (.C(aclk),
        .CE(\cnt_rx[31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(\cnt_rx_reg_n_0_[30] ),
        .R(p_0_in));
  FDRE \cnt_rx_reg[31] 
       (.C(aclk),
        .CE(\cnt_rx[31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(\cnt_rx_reg_n_0_[31] ),
        .R(p_0_in));
  FDRE \cnt_rx_reg[32] 
       (.C(aclk),
        .CE(\cnt_rx[39]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(data7[0]),
        .R(p_0_in));
  FDRE \cnt_rx_reg[33] 
       (.C(aclk),
        .CE(\cnt_rx[39]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(data7[1]),
        .R(p_0_in));
  FDRE \cnt_rx_reg[34] 
       (.C(aclk),
        .CE(\cnt_rx[39]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(data7[2]),
        .R(p_0_in));
  FDRE \cnt_rx_reg[35] 
       (.C(aclk),
        .CE(\cnt_rx[39]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(data7[3]),
        .R(p_0_in));
  FDRE \cnt_rx_reg[36] 
       (.C(aclk),
        .CE(\cnt_rx[39]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(data7[4]),
        .R(p_0_in));
  FDRE \cnt_rx_reg[37] 
       (.C(aclk),
        .CE(\cnt_rx[39]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(data7[5]),
        .R(p_0_in));
  FDRE \cnt_rx_reg[38] 
       (.C(aclk),
        .CE(\cnt_rx[39]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(data7[6]),
        .R(p_0_in));
  FDRE \cnt_rx_reg[39] 
       (.C(aclk),
        .CE(\cnt_rx[39]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(data7[7]),
        .R(p_0_in));
  FDRE \cnt_rx_reg[3] 
       (.C(aclk),
        .CE(\cnt_rx[7]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(\cnt_rx_reg_n_0_[3] ),
        .R(p_0_in));
  FDRE \cnt_rx_reg[40] 
       (.C(aclk),
        .CE(\cnt_rx[47]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(data7[8]),
        .R(p_0_in));
  FDRE \cnt_rx_reg[41] 
       (.C(aclk),
        .CE(\cnt_rx[47]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(data7[9]),
        .R(p_0_in));
  FDRE \cnt_rx_reg[42] 
       (.C(aclk),
        .CE(\cnt_rx[47]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(data7[10]),
        .R(p_0_in));
  FDRE \cnt_rx_reg[43] 
       (.C(aclk),
        .CE(\cnt_rx[47]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(data7[11]),
        .R(p_0_in));
  FDRE \cnt_rx_reg[44] 
       (.C(aclk),
        .CE(\cnt_rx[47]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(data7[12]),
        .R(p_0_in));
  FDRE \cnt_rx_reg[45] 
       (.C(aclk),
        .CE(\cnt_rx[47]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(data7[13]),
        .R(p_0_in));
  FDRE \cnt_rx_reg[46] 
       (.C(aclk),
        .CE(\cnt_rx[47]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(data7[14]),
        .R(p_0_in));
  FDRE \cnt_rx_reg[47] 
       (.C(aclk),
        .CE(\cnt_rx[47]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(data7[15]),
        .R(p_0_in));
  FDRE \cnt_rx_reg[48] 
       (.C(aclk),
        .CE(\cnt_rx[55]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(data7[16]),
        .R(p_0_in));
  FDRE \cnt_rx_reg[49] 
       (.C(aclk),
        .CE(\cnt_rx[55]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(data7[17]),
        .R(p_0_in));
  FDRE \cnt_rx_reg[4] 
       (.C(aclk),
        .CE(\cnt_rx[7]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(\cnt_rx_reg_n_0_[4] ),
        .R(p_0_in));
  FDRE \cnt_rx_reg[50] 
       (.C(aclk),
        .CE(\cnt_rx[55]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(data7[18]),
        .R(p_0_in));
  FDRE \cnt_rx_reg[51] 
       (.C(aclk),
        .CE(\cnt_rx[55]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(data7[19]),
        .R(p_0_in));
  FDRE \cnt_rx_reg[52] 
       (.C(aclk),
        .CE(\cnt_rx[55]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(data7[20]),
        .R(p_0_in));
  FDRE \cnt_rx_reg[53] 
       (.C(aclk),
        .CE(\cnt_rx[55]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(data7[21]),
        .R(p_0_in));
  FDRE \cnt_rx_reg[54] 
       (.C(aclk),
        .CE(\cnt_rx[55]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(data7[22]),
        .R(p_0_in));
  FDRE \cnt_rx_reg[55] 
       (.C(aclk),
        .CE(\cnt_rx[55]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(data7[23]),
        .R(p_0_in));
  FDRE \cnt_rx_reg[56] 
       (.C(aclk),
        .CE(\cnt_rx[63]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(data7[24]),
        .R(p_0_in));
  FDRE \cnt_rx_reg[57] 
       (.C(aclk),
        .CE(\cnt_rx[63]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(data7[25]),
        .R(p_0_in));
  FDRE \cnt_rx_reg[58] 
       (.C(aclk),
        .CE(\cnt_rx[63]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(data7[26]),
        .R(p_0_in));
  FDRE \cnt_rx_reg[59] 
       (.C(aclk),
        .CE(\cnt_rx[63]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(data7[27]),
        .R(p_0_in));
  FDRE \cnt_rx_reg[5] 
       (.C(aclk),
        .CE(\cnt_rx[7]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(\cnt_rx_reg_n_0_[5] ),
        .R(p_0_in));
  FDRE \cnt_rx_reg[60] 
       (.C(aclk),
        .CE(\cnt_rx[63]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(data7[28]),
        .R(p_0_in));
  FDRE \cnt_rx_reg[61] 
       (.C(aclk),
        .CE(\cnt_rx[63]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(data7[29]),
        .R(p_0_in));
  FDRE \cnt_rx_reg[62] 
       (.C(aclk),
        .CE(\cnt_rx[63]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(data7[30]),
        .R(p_0_in));
  FDRE \cnt_rx_reg[63] 
       (.C(aclk),
        .CE(\cnt_rx[63]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(data7[31]),
        .R(p_0_in));
  FDRE \cnt_rx_reg[6] 
       (.C(aclk),
        .CE(\cnt_rx[7]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(\cnt_rx_reg_n_0_[6] ),
        .R(p_0_in));
  FDRE \cnt_rx_reg[7] 
       (.C(aclk),
        .CE(\cnt_rx[7]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(\cnt_rx_reg_n_0_[7] ),
        .R(p_0_in));
  FDRE \cnt_rx_reg[8] 
       (.C(aclk),
        .CE(\cnt_rx[15]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(\cnt_rx_reg_n_0_[8] ),
        .R(p_0_in));
  FDRE \cnt_rx_reg[9] 
       (.C(aclk),
        .CE(\cnt_rx[15]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(\cnt_rx_reg_n_0_[9] ),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h0040)) 
    \cnt_tx[15]_i_1 
       (.I0(p_6_in[18]),
        .I1(p_4_in[3]),
        .I2(s_axi_wstrb[1]),
        .I3(\cnt_tx[31]_i_2_n_0 ),
        .O(\cnt_tx[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \cnt_tx[23]_i_1 
       (.I0(p_6_in[18]),
        .I1(p_4_in[3]),
        .I2(s_axi_wstrb[2]),
        .I3(\cnt_tx[31]_i_2_n_0 ),
        .O(\cnt_tx[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \cnt_tx[31]_i_1 
       (.I0(p_6_in[18]),
        .I1(p_4_in[3]),
        .I2(s_axi_wstrb[3]),
        .I3(\cnt_tx[31]_i_2_n_0 ),
        .O(\cnt_tx[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \cnt_tx[31]_i_2 
       (.I0(tx_dma_data_ready_ovr_en_i_2_n_0),
        .I1(p_4_in[2]),
        .I2(p_4_in[1]),
        .I3(p_4_in[0]),
        .O(\cnt_tx[31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \cnt_tx[39]_i_1 
       (.I0(\cnt_tx[63]_i_2_n_0 ),
        .I1(p_6_in[18]),
        .I2(p_4_in[3]),
        .I3(s_axi_wstrb[0]),
        .O(\cnt_tx[39]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \cnt_tx[47]_i_1 
       (.I0(\cnt_tx[63]_i_2_n_0 ),
        .I1(p_6_in[18]),
        .I2(p_4_in[3]),
        .I3(s_axi_wstrb[1]),
        .O(\cnt_tx[47]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \cnt_tx[55]_i_1 
       (.I0(\cnt_tx[63]_i_2_n_0 ),
        .I1(p_6_in[18]),
        .I2(p_4_in[3]),
        .I3(s_axi_wstrb[2]),
        .O(\cnt_tx[55]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \cnt_tx[63]_i_1 
       (.I0(p_6_in[18]),
        .I1(p_4_in[3]),
        .I2(s_axi_wstrb[3]),
        .I3(\cnt_tx[63]_i_2_n_0 ),
        .O(\cnt_tx[63]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \cnt_tx[63]_i_2 
       (.I0(tx_dma_data_ready_ovr_en_i_2_n_0),
        .I1(p_4_in[0]),
        .I2(p_4_in[2]),
        .I3(p_4_in[1]),
        .O(\cnt_tx[63]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \cnt_tx[7]_i_1 
       (.I0(p_6_in[18]),
        .I1(p_4_in[3]),
        .I2(s_axi_wstrb[0]),
        .I3(\cnt_tx[31]_i_2_n_0 ),
        .O(\cnt_tx[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h444444440044F444)) 
    cnt_tx_en_i_1
       (.I0(tx_enable1),
        .I1(p_6_in[18]),
        .I2(s_axi_wdata[4]),
        .I3(s_axi_wstrb[0]),
        .I4(s_axi_wdata[5]),
        .I5(tx_enable_i_3_n_0),
        .O(cnt_tx_en_i_1_n_0));
  FDRE cnt_tx_en_reg
       (.C(aclk),
        .CE(1'b1),
        .D(cnt_tx_en_i_1_n_0),
        .Q(p_6_in[18]),
        .R(p_0_in));
  FDRE \cnt_tx_reg[0] 
       (.C(aclk),
        .CE(\cnt_tx[7]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(\cnt_tx_reg_n_0_[0] ),
        .R(p_0_in));
  FDRE \cnt_tx_reg[10] 
       (.C(aclk),
        .CE(\cnt_tx[15]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(\cnt_tx_reg_n_0_[10] ),
        .R(p_0_in));
  FDRE \cnt_tx_reg[11] 
       (.C(aclk),
        .CE(\cnt_tx[15]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(\cnt_tx_reg_n_0_[11] ),
        .R(p_0_in));
  FDRE \cnt_tx_reg[12] 
       (.C(aclk),
        .CE(\cnt_tx[15]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(\cnt_tx_reg_n_0_[12] ),
        .R(p_0_in));
  FDRE \cnt_tx_reg[13] 
       (.C(aclk),
        .CE(\cnt_tx[15]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(\cnt_tx_reg_n_0_[13] ),
        .R(p_0_in));
  FDRE \cnt_tx_reg[14] 
       (.C(aclk),
        .CE(\cnt_tx[15]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(\cnt_tx_reg_n_0_[14] ),
        .R(p_0_in));
  FDRE \cnt_tx_reg[15] 
       (.C(aclk),
        .CE(\cnt_tx[15]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(\cnt_tx_reg_n_0_[15] ),
        .R(p_0_in));
  FDRE \cnt_tx_reg[16] 
       (.C(aclk),
        .CE(\cnt_tx[23]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(\cnt_tx_reg_n_0_[16] ),
        .R(p_0_in));
  FDRE \cnt_tx_reg[17] 
       (.C(aclk),
        .CE(\cnt_tx[23]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(\cnt_tx_reg_n_0_[17] ),
        .R(p_0_in));
  FDRE \cnt_tx_reg[18] 
       (.C(aclk),
        .CE(\cnt_tx[23]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(\cnt_tx_reg_n_0_[18] ),
        .R(p_0_in));
  FDRE \cnt_tx_reg[19] 
       (.C(aclk),
        .CE(\cnt_tx[23]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(\cnt_tx_reg_n_0_[19] ),
        .R(p_0_in));
  FDRE \cnt_tx_reg[1] 
       (.C(aclk),
        .CE(\cnt_tx[7]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(\cnt_tx_reg_n_0_[1] ),
        .R(p_0_in));
  FDRE \cnt_tx_reg[20] 
       (.C(aclk),
        .CE(\cnt_tx[23]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(\cnt_tx_reg_n_0_[20] ),
        .R(p_0_in));
  FDRE \cnt_tx_reg[21] 
       (.C(aclk),
        .CE(\cnt_tx[23]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(\cnt_tx_reg_n_0_[21] ),
        .R(p_0_in));
  FDRE \cnt_tx_reg[22] 
       (.C(aclk),
        .CE(\cnt_tx[23]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(\cnt_tx_reg_n_0_[22] ),
        .R(p_0_in));
  FDRE \cnt_tx_reg[23] 
       (.C(aclk),
        .CE(\cnt_tx[23]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(\cnt_tx_reg_n_0_[23] ),
        .R(p_0_in));
  FDRE \cnt_tx_reg[24] 
       (.C(aclk),
        .CE(\cnt_tx[31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(\cnt_tx_reg_n_0_[24] ),
        .R(p_0_in));
  FDRE \cnt_tx_reg[25] 
       (.C(aclk),
        .CE(\cnt_tx[31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(\cnt_tx_reg_n_0_[25] ),
        .R(p_0_in));
  FDRE \cnt_tx_reg[26] 
       (.C(aclk),
        .CE(\cnt_tx[31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(\cnt_tx_reg_n_0_[26] ),
        .R(p_0_in));
  FDRE \cnt_tx_reg[27] 
       (.C(aclk),
        .CE(\cnt_tx[31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(\cnt_tx_reg_n_0_[27] ),
        .R(p_0_in));
  FDRE \cnt_tx_reg[28] 
       (.C(aclk),
        .CE(\cnt_tx[31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(\cnt_tx_reg_n_0_[28] ),
        .R(p_0_in));
  FDRE \cnt_tx_reg[29] 
       (.C(aclk),
        .CE(\cnt_tx[31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(\cnt_tx_reg_n_0_[29] ),
        .R(p_0_in));
  FDRE \cnt_tx_reg[2] 
       (.C(aclk),
        .CE(\cnt_tx[7]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(\cnt_tx_reg_n_0_[2] ),
        .R(p_0_in));
  FDRE \cnt_tx_reg[30] 
       (.C(aclk),
        .CE(\cnt_tx[31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(\cnt_tx_reg_n_0_[30] ),
        .R(p_0_in));
  FDRE \cnt_tx_reg[31] 
       (.C(aclk),
        .CE(\cnt_tx[31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(\cnt_tx_reg_n_0_[31] ),
        .R(p_0_in));
  FDRE \cnt_tx_reg[32] 
       (.C(aclk),
        .CE(\cnt_tx[39]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(data5[0]),
        .R(p_0_in));
  FDRE \cnt_tx_reg[33] 
       (.C(aclk),
        .CE(\cnt_tx[39]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(data5[1]),
        .R(p_0_in));
  FDRE \cnt_tx_reg[34] 
       (.C(aclk),
        .CE(\cnt_tx[39]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(data5[2]),
        .R(p_0_in));
  FDRE \cnt_tx_reg[35] 
       (.C(aclk),
        .CE(\cnt_tx[39]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(data5[3]),
        .R(p_0_in));
  FDRE \cnt_tx_reg[36] 
       (.C(aclk),
        .CE(\cnt_tx[39]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(data5[4]),
        .R(p_0_in));
  FDRE \cnt_tx_reg[37] 
       (.C(aclk),
        .CE(\cnt_tx[39]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(data5[5]),
        .R(p_0_in));
  FDRE \cnt_tx_reg[38] 
       (.C(aclk),
        .CE(\cnt_tx[39]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(data5[6]),
        .R(p_0_in));
  FDRE \cnt_tx_reg[39] 
       (.C(aclk),
        .CE(\cnt_tx[39]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(data5[7]),
        .R(p_0_in));
  FDRE \cnt_tx_reg[3] 
       (.C(aclk),
        .CE(\cnt_tx[7]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(\cnt_tx_reg_n_0_[3] ),
        .R(p_0_in));
  FDRE \cnt_tx_reg[40] 
       (.C(aclk),
        .CE(\cnt_tx[47]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(data5[8]),
        .R(p_0_in));
  FDRE \cnt_tx_reg[41] 
       (.C(aclk),
        .CE(\cnt_tx[47]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(data5[9]),
        .R(p_0_in));
  FDRE \cnt_tx_reg[42] 
       (.C(aclk),
        .CE(\cnt_tx[47]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(data5[10]),
        .R(p_0_in));
  FDRE \cnt_tx_reg[43] 
       (.C(aclk),
        .CE(\cnt_tx[47]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(data5[11]),
        .R(p_0_in));
  FDRE \cnt_tx_reg[44] 
       (.C(aclk),
        .CE(\cnt_tx[47]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(data5[12]),
        .R(p_0_in));
  FDRE \cnt_tx_reg[45] 
       (.C(aclk),
        .CE(\cnt_tx[47]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(data5[13]),
        .R(p_0_in));
  FDRE \cnt_tx_reg[46] 
       (.C(aclk),
        .CE(\cnt_tx[47]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(data5[14]),
        .R(p_0_in));
  FDRE \cnt_tx_reg[47] 
       (.C(aclk),
        .CE(\cnt_tx[47]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(data5[15]),
        .R(p_0_in));
  FDRE \cnt_tx_reg[48] 
       (.C(aclk),
        .CE(\cnt_tx[55]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(data5[16]),
        .R(p_0_in));
  FDRE \cnt_tx_reg[49] 
       (.C(aclk),
        .CE(\cnt_tx[55]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(data5[17]),
        .R(p_0_in));
  FDRE \cnt_tx_reg[4] 
       (.C(aclk),
        .CE(\cnt_tx[7]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(\cnt_tx_reg_n_0_[4] ),
        .R(p_0_in));
  FDRE \cnt_tx_reg[50] 
       (.C(aclk),
        .CE(\cnt_tx[55]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(data5[18]),
        .R(p_0_in));
  FDRE \cnt_tx_reg[51] 
       (.C(aclk),
        .CE(\cnt_tx[55]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(data5[19]),
        .R(p_0_in));
  FDRE \cnt_tx_reg[52] 
       (.C(aclk),
        .CE(\cnt_tx[55]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(data5[20]),
        .R(p_0_in));
  FDRE \cnt_tx_reg[53] 
       (.C(aclk),
        .CE(\cnt_tx[55]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(data5[21]),
        .R(p_0_in));
  FDRE \cnt_tx_reg[54] 
       (.C(aclk),
        .CE(\cnt_tx[55]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(data5[22]),
        .R(p_0_in));
  FDRE \cnt_tx_reg[55] 
       (.C(aclk),
        .CE(\cnt_tx[55]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(data5[23]),
        .R(p_0_in));
  FDRE \cnt_tx_reg[56] 
       (.C(aclk),
        .CE(\cnt_tx[63]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(data5[24]),
        .R(p_0_in));
  FDRE \cnt_tx_reg[57] 
       (.C(aclk),
        .CE(\cnt_tx[63]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(data5[25]),
        .R(p_0_in));
  FDRE \cnt_tx_reg[58] 
       (.C(aclk),
        .CE(\cnt_tx[63]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(data5[26]),
        .R(p_0_in));
  FDRE \cnt_tx_reg[59] 
       (.C(aclk),
        .CE(\cnt_tx[63]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(data5[27]),
        .R(p_0_in));
  FDRE \cnt_tx_reg[5] 
       (.C(aclk),
        .CE(\cnt_tx[7]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(\cnt_tx_reg_n_0_[5] ),
        .R(p_0_in));
  FDRE \cnt_tx_reg[60] 
       (.C(aclk),
        .CE(\cnt_tx[63]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(data5[28]),
        .R(p_0_in));
  FDRE \cnt_tx_reg[61] 
       (.C(aclk),
        .CE(\cnt_tx[63]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(data5[29]),
        .R(p_0_in));
  FDRE \cnt_tx_reg[62] 
       (.C(aclk),
        .CE(\cnt_tx[63]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(data5[30]),
        .R(p_0_in));
  FDRE \cnt_tx_reg[63] 
       (.C(aclk),
        .CE(\cnt_tx[63]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(data5[31]),
        .R(p_0_in));
  FDRE \cnt_tx_reg[6] 
       (.C(aclk),
        .CE(\cnt_tx[7]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(\cnt_tx_reg_n_0_[6] ),
        .R(p_0_in));
  FDRE \cnt_tx_reg[7] 
       (.C(aclk),
        .CE(\cnt_tx[7]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(\cnt_tx_reg_n_0_[7] ),
        .R(p_0_in));
  FDRE \cnt_tx_reg[8] 
       (.C(aclk),
        .CE(\cnt_tx[15]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(\cnt_tx_reg_n_0_[8] ),
        .R(p_0_in));
  FDRE \cnt_tx_reg[9] 
       (.C(aclk),
        .CE(\cnt_tx[15]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(\cnt_tx_reg_n_0_[9] ),
        .R(p_0_in));
  FDRE rx_data_ready_ovr_en_reg
       (.C(aclk),
        .CE(tx_dma_data_ready_ovr_en),
        .D(s_axi_wdata[6]),
        .Q(rx_data_ready_ovr_en),
        .R(p_0_in));
  FDRE rx_data_ready_ovr_val_reg
       (.C(aclk),
        .CE(tx_dma_data_ready_ovr_en),
        .D(s_axi_wdata[7]),
        .Q(rx_data_ready_ovr_val_reg_n_0),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'hFF00FFFFE200E2E2)) 
    rx_data_ready_stky_i_1
       (.I0(rx_data_ready),
        .I1(rx_data_ready_ovr_en),
        .I2(rx_data_ready_ovr_val_reg_n_0),
        .I3(\s_axi_rdata[21]_i_3_n_0 ),
        .I4(s_axi_reg_rden),
        .I5(rx_data_ready_stky),
        .O(rx_data_ready_stky_i_1_n_0));
  FDRE rx_data_ready_stky_reg
       (.C(aclk),
        .CE(1'b1),
        .D(rx_data_ready_stky_i_1_n_0),
        .Q(rx_data_ready_stky),
        .R(p_0_in));
  FDRE rx_dma_xfer_req_ovr_en_reg
       (.C(aclk),
        .CE(tx_dma_data_ready_ovr_en),
        .D(s_axi_wdata[2]),
        .Q(rx_dma_xfer_req_ovr_en),
        .R(p_0_in));
  FDRE rx_dma_xfer_req_ovr_val_reg
       (.C(aclk),
        .CE(tx_dma_data_ready_ovr_en),
        .D(s_axi_wdata[3]),
        .Q(rx_dma_xfer_req_ovr_val),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'hFF00FFFFE200E2E2)) 
    rx_dma_xfer_req_stky_i_1
       (.I0(rx_dma_xfer_req),
        .I1(rx_dma_xfer_req_ovr_en),
        .I2(rx_dma_xfer_req_ovr_val),
        .I3(\s_axi_rdata[21]_i_3_n_0 ),
        .I4(s_axi_reg_rden),
        .I5(rx_dma_xfer_req_stky),
        .O(rx_dma_xfer_req_stky_i_1_n_0));
  FDRE rx_dma_xfer_req_stky_reg
       (.C(aclk),
        .CE(1'b1),
        .D(rx_dma_xfer_req_stky_i_1_n_0),
        .Q(rx_dma_xfer_req_stky),
        .R(p_0_in));
  CARRY4 rx_enable1_carry
       (.CI(1'b0),
        .CO({rx_enable1_carry_n_0,rx_enable1_carry_n_1,rx_enable1_carry_n_2,rx_enable1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_rx_enable1_carry_O_UNCONNECTED[3:0]),
        .S({rx_enable1_carry_i_1_n_0,rx_enable1_carry_i_2_n_0,rx_enable1_carry_i_3_n_0,rx_enable1_carry_i_4_n_0}));
  CARRY4 rx_enable1_carry__0
       (.CI(rx_enable1_carry_n_0),
        .CO({rx_enable1_carry__0_n_0,rx_enable1_carry__0_n_1,rx_enable1_carry__0_n_2,rx_enable1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_rx_enable1_carry__0_O_UNCONNECTED[3:0]),
        .S({rx_enable1_carry__0_i_1_n_0,rx_enable1_carry__0_i_2_n_0,rx_enable1_carry__0_i_3_n_0,rx_enable1_carry__0_i_4_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rx_enable1_carry__0_i_1
       (.I0(\cnt_rx_reg_n_0_[23] ),
        .I1(\cnt_reg_n_0_[23] ),
        .I2(\cnt_reg_n_0_[22] ),
        .I3(\cnt_rx_reg_n_0_[22] ),
        .I4(\cnt_reg_n_0_[21] ),
        .I5(\cnt_rx_reg_n_0_[21] ),
        .O(rx_enable1_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rx_enable1_carry__0_i_2
       (.I0(\cnt_rx_reg_n_0_[20] ),
        .I1(\cnt_reg_n_0_[20] ),
        .I2(\cnt_reg_n_0_[19] ),
        .I3(\cnt_rx_reg_n_0_[19] ),
        .I4(\cnt_reg_n_0_[18] ),
        .I5(\cnt_rx_reg_n_0_[18] ),
        .O(rx_enable1_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rx_enable1_carry__0_i_3
       (.I0(\cnt_rx_reg_n_0_[17] ),
        .I1(\cnt_reg_n_0_[17] ),
        .I2(\cnt_reg_n_0_[16] ),
        .I3(\cnt_rx_reg_n_0_[16] ),
        .I4(\cnt_reg_n_0_[15] ),
        .I5(\cnt_rx_reg_n_0_[15] ),
        .O(rx_enable1_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rx_enable1_carry__0_i_4
       (.I0(\cnt_rx_reg_n_0_[14] ),
        .I1(\cnt_reg_n_0_[14] ),
        .I2(\cnt_reg_n_0_[12] ),
        .I3(\cnt_rx_reg_n_0_[12] ),
        .I4(\cnt_reg_n_0_[13] ),
        .I5(\cnt_rx_reg_n_0_[13] ),
        .O(rx_enable1_carry__0_i_4_n_0));
  CARRY4 rx_enable1_carry__1
       (.CI(rx_enable1_carry__0_n_0),
        .CO({rx_enable1_carry__1_n_0,rx_enable1_carry__1_n_1,rx_enable1_carry__1_n_2,rx_enable1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_rx_enable1_carry__1_O_UNCONNECTED[3:0]),
        .S({rx_enable1_carry__1_i_1_n_0,rx_enable1_carry__1_i_2_n_0,rx_enable1_carry__1_i_3_n_0,rx_enable1_carry__1_i_4_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rx_enable1_carry__1_i_1
       (.I0(p_1_in[3]),
        .I1(data7[3]),
        .I2(p_1_in[1]),
        .I3(data7[1]),
        .I4(data7[2]),
        .I5(p_1_in[2]),
        .O(rx_enable1_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rx_enable1_carry__1_i_2
       (.I0(\cnt_rx_reg_n_0_[31] ),
        .I1(\cnt_reg_n_0_[31] ),
        .I2(p_1_in[0]),
        .I3(data7[0]),
        .I4(\cnt_reg_n_0_[30] ),
        .I5(\cnt_rx_reg_n_0_[30] ),
        .O(rx_enable1_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rx_enable1_carry__1_i_3
       (.I0(\cnt_rx_reg_n_0_[29] ),
        .I1(\cnt_reg_n_0_[29] ),
        .I2(\cnt_reg_n_0_[27] ),
        .I3(\cnt_rx_reg_n_0_[27] ),
        .I4(\cnt_reg_n_0_[28] ),
        .I5(\cnt_rx_reg_n_0_[28] ),
        .O(rx_enable1_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rx_enable1_carry__1_i_4
       (.I0(\cnt_rx_reg_n_0_[26] ),
        .I1(\cnt_reg_n_0_[26] ),
        .I2(\cnt_reg_n_0_[24] ),
        .I3(\cnt_rx_reg_n_0_[24] ),
        .I4(\cnt_reg_n_0_[25] ),
        .I5(\cnt_rx_reg_n_0_[25] ),
        .O(rx_enable1_carry__1_i_4_n_0));
  CARRY4 rx_enable1_carry__2
       (.CI(rx_enable1_carry__1_n_0),
        .CO({rx_enable1_carry__2_n_0,rx_enable1_carry__2_n_1,rx_enable1_carry__2_n_2,rx_enable1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_rx_enable1_carry__2_O_UNCONNECTED[3:0]),
        .S({rx_enable1_carry__2_i_1_n_0,rx_enable1_carry__2_i_2_n_0,rx_enable1_carry__2_i_3_n_0,rx_enable1_carry__2_i_4_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rx_enable1_carry__2_i_1
       (.I0(data7[15]),
        .I1(p_1_in[15]),
        .I2(p_1_in[13]),
        .I3(data7[13]),
        .I4(p_1_in[14]),
        .I5(data7[14]),
        .O(rx_enable1_carry__2_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rx_enable1_carry__2_i_2
       (.I0(data7[12]),
        .I1(p_1_in[12]),
        .I2(p_1_in[11]),
        .I3(data7[11]),
        .I4(p_1_in[10]),
        .I5(data7[10]),
        .O(rx_enable1_carry__2_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rx_enable1_carry__2_i_3
       (.I0(data7[9]),
        .I1(p_1_in[9]),
        .I2(p_1_in[7]),
        .I3(data7[7]),
        .I4(p_1_in[8]),
        .I5(data7[8]),
        .O(rx_enable1_carry__2_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rx_enable1_carry__2_i_4
       (.I0(data7[6]),
        .I1(p_1_in[6]),
        .I2(p_1_in[4]),
        .I3(data7[4]),
        .I4(p_1_in[5]),
        .I5(data7[5]),
        .O(rx_enable1_carry__2_i_4_n_0));
  CARRY4 rx_enable1_carry__3
       (.CI(rx_enable1_carry__2_n_0),
        .CO({rx_enable1_carry__3_n_0,rx_enable1_carry__3_n_1,rx_enable1_carry__3_n_2,rx_enable1_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_rx_enable1_carry__3_O_UNCONNECTED[3:0]),
        .S({rx_enable1_carry__3_i_1_n_0,rx_enable1_carry__3_i_2_n_0,rx_enable1_carry__3_i_3_n_0,rx_enable1_carry__3_i_4_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rx_enable1_carry__3_i_1
       (.I0(data7[27]),
        .I1(p_1_in[27]),
        .I2(p_1_in[25]),
        .I3(data7[25]),
        .I4(p_1_in[26]),
        .I5(data7[26]),
        .O(rx_enable1_carry__3_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rx_enable1_carry__3_i_2
       (.I0(p_1_in[24]),
        .I1(data7[24]),
        .I2(p_1_in[22]),
        .I3(data7[22]),
        .I4(data7[23]),
        .I5(p_1_in[23]),
        .O(rx_enable1_carry__3_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rx_enable1_carry__3_i_3
       (.I0(p_1_in[21]),
        .I1(data7[21]),
        .I2(p_1_in[19]),
        .I3(data7[19]),
        .I4(data7[20]),
        .I5(p_1_in[20]),
        .O(rx_enable1_carry__3_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rx_enable1_carry__3_i_4
       (.I0(p_1_in[16]),
        .I1(data7[16]),
        .I2(p_1_in[17]),
        .I3(data7[17]),
        .I4(data7[18]),
        .I5(p_1_in[18]),
        .O(rx_enable1_carry__3_i_4_n_0));
  CARRY4 rx_enable1_carry__4
       (.CI(rx_enable1_carry__3_n_0),
        .CO({NLW_rx_enable1_carry__4_CO_UNCONNECTED[3:2],rx_enable1,rx_enable1_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_rx_enable1_carry__4_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,rx_enable1_carry__4_i_1_n_0,rx_enable1_carry__4_i_2_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    rx_enable1_carry__4_i_1
       (.I0(data7[31]),
        .I1(p_1_in[31]),
        .O(rx_enable1_carry__4_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rx_enable1_carry__4_i_2
       (.I0(p_1_in[30]),
        .I1(data7[30]),
        .I2(p_1_in[28]),
        .I3(data7[28]),
        .I4(data7[29]),
        .I5(p_1_in[29]),
        .O(rx_enable1_carry__4_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rx_enable1_carry_i_1
       (.I0(\cnt_rx_reg_n_0_[11] ),
        .I1(\cnt_reg_n_0_[11] ),
        .I2(\cnt_reg_n_0_[10] ),
        .I3(\cnt_rx_reg_n_0_[10] ),
        .I4(\cnt_reg_n_0_[9] ),
        .I5(\cnt_rx_reg_n_0_[9] ),
        .O(rx_enable1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rx_enable1_carry_i_2
       (.I0(\cnt_rx_reg_n_0_[8] ),
        .I1(\cnt_reg_n_0_[8] ),
        .I2(\cnt_reg_n_0_[6] ),
        .I3(\cnt_rx_reg_n_0_[6] ),
        .I4(\cnt_reg_n_0_[7] ),
        .I5(\cnt_rx_reg_n_0_[7] ),
        .O(rx_enable1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rx_enable1_carry_i_3
       (.I0(\cnt_reg_n_0_[3] ),
        .I1(\cnt_rx_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_rx_reg_n_0_[4] ),
        .I4(\cnt_rx_reg_n_0_[5] ),
        .I5(\cnt_reg_n_0_[5] ),
        .O(rx_enable1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rx_enable1_carry_i_4
       (.I0(\cnt_rx_reg_n_0_[1] ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_rx_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[0] ),
        .I5(\cnt_rx_reg_n_0_[0] ),
        .O(rx_enable1_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h8CCCC888)) 
    rx_enable_i_1
       (.I0(rx_enable_i_2_n_0),
        .I1(rx_enable_i_3_n_0),
        .I2(p_6_in[19]),
        .I3(rx_enable1),
        .I4(rx_enable_reg_0),
        .O(rx_enable_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    rx_enable_i_2
       (.I0(rx_enable_i_4_n_0),
        .I1(p_4_in[3]),
        .I2(p_4_in[2]),
        .I3(s_axi_wdata[2]),
        .I4(p_6_in[19]),
        .I5(s_axi_wstrb[0]),
        .O(rx_enable_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFEFFFFFFFFFF)) 
    rx_enable_i_3
       (.I0(rx_enable_i_4_n_0),
        .I1(p_4_in[3]),
        .I2(p_4_in[2]),
        .I3(s_axi_wdata[3]),
        .I4(p_6_in[19]),
        .I5(s_axi_wstrb[0]),
        .O(rx_enable_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFF7FFFFFFFFFFF)) 
    rx_enable_i_4
       (.I0(s_axi_wready),
        .I1(s_axi_awready),
        .I2(s_axi_wvalid),
        .I3(s_axi_awvalid),
        .I4(p_4_in[1]),
        .I5(p_4_in[0]),
        .O(rx_enable_i_4_n_0));
  (* X_INTERFACE_IGNORE = "true" *) 
  FDRE rx_enable_reg
       (.C(aclk),
        .CE(1'b1),
        .D(rx_enable_i_1_n_0),
        .Q(rx_enable_reg_0),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'hFFFFCFFFAAAA8AAA)) 
    rx_fifo_overflow_stky_i_1
       (.I0(rx_fifo_overflow),
        .I1(\s_axi_rdata[21]_i_3_n_0 ),
        .I2(s_axi_arvalid),
        .I3(s_axi_arready),
        .I4(s_axi_rvalid_reg_0),
        .I5(rx_fifo_overflow_stky),
        .O(rx_fifo_overflow_stky_i_1_n_0));
  FDRE rx_fifo_overflow_stky_reg
       (.C(aclk),
        .CE(1'b1),
        .D(rx_fifo_overflow_stky_i_1_n_0),
        .Q(rx_fifo_overflow_stky),
        .R(p_0_in));
  FDRE \s_axi_araddr_q_reg[2] 
       (.C(aclk),
        .CE(s_axi_arready0),
        .D(s_axi_araddr[0]),
        .Q(p_0_in__0[0]),
        .R(p_0_in));
  FDRE \s_axi_araddr_q_reg[3] 
       (.C(aclk),
        .CE(s_axi_arready0),
        .D(s_axi_araddr[1]),
        .Q(p_0_in__0[1]),
        .R(p_0_in));
  FDRE \s_axi_araddr_q_reg[4] 
       (.C(aclk),
        .CE(s_axi_arready0),
        .D(s_axi_araddr[2]),
        .Q(p_0_in__0[2]),
        .R(p_0_in));
  FDRE \s_axi_araddr_q_reg[5] 
       (.C(aclk),
        .CE(s_axi_arready0),
        .D(s_axi_araddr[3]),
        .Q(p_0_in__0[3]),
        .R(p_0_in));
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_arready_i_1
       (.I0(s_axi_arvalid),
        .I1(s_axi_arready),
        .O(s_axi_arready0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *) 
  FDRE s_axi_arready_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_axi_arready0),
        .Q(s_axi_arready),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'hFFFF88880FFF8888)) 
    s_axi_aw_en_i_1
       (.I0(s_axi_bready),
        .I1(s_axi_bvalid),
        .I2(s_axi_awvalid),
        .I3(s_axi_wvalid),
        .I4(s_axi_aw_en_reg_n_0),
        .I5(s_axi_awready),
        .O(s_axi_aw_en_i_1_n_0));
  FDSE s_axi_aw_en_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_axi_aw_en_i_1_n_0),
        .Q(s_axi_aw_en_reg_n_0),
        .S(p_0_in));
  FDRE \s_axi_awaddr_q_reg[2] 
       (.C(aclk),
        .CE(s_axi_awready0),
        .D(s_axi_awaddr[0]),
        .Q(p_4_in[0]),
        .R(p_0_in));
  FDRE \s_axi_awaddr_q_reg[3] 
       (.C(aclk),
        .CE(s_axi_awready0),
        .D(s_axi_awaddr[1]),
        .Q(p_4_in[1]),
        .R(p_0_in));
  FDRE \s_axi_awaddr_q_reg[4] 
       (.C(aclk),
        .CE(s_axi_awready0),
        .D(s_axi_awaddr[2]),
        .Q(p_4_in[2]),
        .R(p_0_in));
  FDRE \s_axi_awaddr_q_reg[5] 
       (.C(aclk),
        .CE(s_axi_awready0),
        .D(s_axi_awaddr[3]),
        .Q(p_4_in[3]),
        .R(p_0_in));
  LUT1 #(
    .INIT(2'h1)) 
    s_axi_awready_i_1
       (.I0(aresetn),
        .O(p_0_in));
  LUT4 #(
    .INIT(16'h4000)) 
    s_axi_awready_i_2
       (.I0(s_axi_awready),
        .I1(s_axi_aw_en_reg_n_0),
        .I2(s_axi_wvalid),
        .I3(s_axi_awvalid),
        .O(s_axi_awready0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *) 
  FDRE s_axi_awready_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_axi_awready0),
        .Q(s_axi_awready),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    s_axi_bvalid_i_1
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .I2(s_axi_awready),
        .I3(s_axi_wready),
        .I4(s_axi_bready),
        .I5(s_axi_bvalid),
        .O(s_axi_bvalid_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *) 
  FDRE s_axi_bvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_axi_bvalid_i_1_n_0),
        .Q(s_axi_bvalid),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'hAEAE0C0CFF0C0C0C)) 
    \s_axi_rdata[0]_i_1 
       (.I0(\s_axi_rdata[0]_i_2_n_0 ),
        .I1(tx_dma_data_ready_ovr_en_reg_n_0),
        .I2(\s_axi_rdata[21]_i_3_n_0 ),
        .I3(\s_axi_rdata[0]_i_3_n_0 ),
        .I4(p_0_in__0[3]),
        .I5(p_0_in__0[2]),
        .O(\s_axi_rdata[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[0]_i_2 
       (.I0(data9[0]),
        .I1(\cnt_latched_reg_n_0_[0] ),
        .I2(p_0_in__0[1]),
        .I3(data7[0]),
        .I4(p_0_in__0[0]),
        .I5(\cnt_rx_reg_n_0_[0] ),
        .O(\s_axi_rdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[0]_i_3 
       (.I0(data5[0]),
        .I1(\cnt_tx_reg_n_0_[0] ),
        .I2(p_0_in__0[1]),
        .I3(\cnt_rd_buf_reg_n_0_[0] ),
        .I4(p_0_in__0[0]),
        .I5(\cnt_reg_n_0_[0] ),
        .O(\s_axi_rdata[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAEAE0C0CFF0C0C0C)) 
    \s_axi_rdata[10]_i_1 
       (.I0(\s_axi_rdata[10]_i_2_n_0 ),
        .I1(tx_data_ready),
        .I2(\s_axi_rdata[21]_i_3_n_0 ),
        .I3(\s_axi_rdata[10]_i_3_n_0 ),
        .I4(p_0_in__0[3]),
        .I5(p_0_in__0[2]),
        .O(\s_axi_rdata[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[10]_i_2 
       (.I0(data9[10]),
        .I1(\cnt_latched_reg_n_0_[10] ),
        .I2(p_0_in__0[1]),
        .I3(data7[10]),
        .I4(p_0_in__0[0]),
        .I5(\cnt_rx_reg_n_0_[10] ),
        .O(\s_axi_rdata[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[10]_i_3 
       (.I0(data5[10]),
        .I1(\cnt_tx_reg_n_0_[10] ),
        .I2(p_0_in__0[1]),
        .I3(\cnt_rd_buf_reg_n_0_[10] ),
        .I4(p_0_in__0[0]),
        .I5(\cnt_reg_n_0_[10] ),
        .O(\s_axi_rdata[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAEAE0C0CFF0C0C0C)) 
    \s_axi_rdata[11]_i_1 
       (.I0(\s_axi_rdata[11]_i_2_n_0 ),
        .I1(rx_data_ready),
        .I2(\s_axi_rdata[21]_i_3_n_0 ),
        .I3(\s_axi_rdata[11]_i_3_n_0 ),
        .I4(p_0_in__0[3]),
        .I5(p_0_in__0[2]),
        .O(\s_axi_rdata[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[11]_i_2 
       (.I0(data9[11]),
        .I1(\cnt_latched_reg_n_0_[11] ),
        .I2(p_0_in__0[1]),
        .I3(data7[11]),
        .I4(p_0_in__0[0]),
        .I5(\cnt_rx_reg_n_0_[11] ),
        .O(\s_axi_rdata[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[11]_i_3 
       (.I0(data5[11]),
        .I1(\cnt_tx_reg_n_0_[11] ),
        .I2(p_0_in__0[1]),
        .I3(\cnt_rd_buf_reg_n_0_[11] ),
        .I4(p_0_in__0[0]),
        .I5(\cnt_reg_n_0_[11] ),
        .O(\s_axi_rdata[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAEAE0C0CFF0C0C0C)) 
    \s_axi_rdata[12]_i_1 
       (.I0(\s_axi_rdata[12]_i_2_n_0 ),
        .I1(\s_axi_rdata[12]_i_3_n_0 ),
        .I2(\s_axi_rdata[21]_i_3_n_0 ),
        .I3(\s_axi_rdata[12]_i_4_n_0 ),
        .I4(p_0_in__0[3]),
        .I5(p_0_in__0[2]),
        .O(\s_axi_rdata[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[12]_i_2 
       (.I0(data9[12]),
        .I1(\cnt_latched_reg_n_0_[12] ),
        .I2(p_0_in__0[1]),
        .I3(data7[12]),
        .I4(p_0_in__0[0]),
        .I5(\cnt_rx_reg_n_0_[12] ),
        .O(\s_axi_rdata[12]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_rdata[12]_i_3 
       (.I0(tx_dma_data_ready_ovr_val),
        .I1(tx_dma_data_ready_ovr_en_reg_n_0),
        .I2(tx_dma_data_ready),
        .O(\s_axi_rdata[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[12]_i_4 
       (.I0(data5[12]),
        .I1(\cnt_tx_reg_n_0_[12] ),
        .I2(p_0_in__0[1]),
        .I3(\cnt_rd_buf_reg_n_0_[12] ),
        .I4(p_0_in__0[0]),
        .I5(\cnt_reg_n_0_[12] ),
        .O(\s_axi_rdata[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAEAE0C0CFF0C0C0C)) 
    \s_axi_rdata[13]_i_1 
       (.I0(\s_axi_rdata[13]_i_2_n_0 ),
        .I1(\s_axi_rdata[13]_i_3_n_0 ),
        .I2(\s_axi_rdata[21]_i_3_n_0 ),
        .I3(\s_axi_rdata[13]_i_4_n_0 ),
        .I4(p_0_in__0[3]),
        .I5(p_0_in__0[2]),
        .O(\s_axi_rdata[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[13]_i_2 
       (.I0(data9[13]),
        .I1(\cnt_latched_reg_n_0_[13] ),
        .I2(p_0_in__0[1]),
        .I3(data7[13]),
        .I4(p_0_in__0[0]),
        .I5(\cnt_rx_reg_n_0_[13] ),
        .O(\s_axi_rdata[13]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_rdata[13]_i_3 
       (.I0(rx_dma_xfer_req_ovr_val),
        .I1(rx_dma_xfer_req_ovr_en),
        .I2(rx_dma_xfer_req),
        .O(\s_axi_rdata[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[13]_i_4 
       (.I0(data5[13]),
        .I1(\cnt_tx_reg_n_0_[13] ),
        .I2(p_0_in__0[1]),
        .I3(\cnt_rd_buf_reg_n_0_[13] ),
        .I4(p_0_in__0[0]),
        .I5(\cnt_reg_n_0_[13] ),
        .O(\s_axi_rdata[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAEAE0C0CFF0C0C0C)) 
    \s_axi_rdata[14]_i_1 
       (.I0(\s_axi_rdata[14]_i_2_n_0 ),
        .I1(\s_axi_rdata[14]_i_3_n_0 ),
        .I2(\s_axi_rdata[21]_i_3_n_0 ),
        .I3(\s_axi_rdata[14]_i_4_n_0 ),
        .I4(p_0_in__0[3]),
        .I5(p_0_in__0[2]),
        .O(\s_axi_rdata[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[14]_i_2 
       (.I0(data9[14]),
        .I1(\cnt_latched_reg_n_0_[14] ),
        .I2(p_0_in__0[1]),
        .I3(data7[14]),
        .I4(p_0_in__0[0]),
        .I5(\cnt_rx_reg_n_0_[14] ),
        .O(\s_axi_rdata[14]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_rdata[14]_i_3 
       (.I0(tx_data_ready_ovr_val),
        .I1(tx_data_ready_ovr_en),
        .I2(tx_data_ready),
        .O(\s_axi_rdata[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[14]_i_4 
       (.I0(data5[14]),
        .I1(\cnt_tx_reg_n_0_[14] ),
        .I2(p_0_in__0[1]),
        .I3(\cnt_rd_buf_reg_n_0_[14] ),
        .I4(p_0_in__0[0]),
        .I5(\cnt_reg_n_0_[14] ),
        .O(\s_axi_rdata[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAEAE0C0CFF0C0C0C)) 
    \s_axi_rdata[15]_i_1 
       (.I0(\s_axi_rdata[15]_i_2_n_0 ),
        .I1(\s_axi_rdata[15]_i_3_n_0 ),
        .I2(\s_axi_rdata[21]_i_3_n_0 ),
        .I3(\s_axi_rdata[15]_i_4_n_0 ),
        .I4(p_0_in__0[3]),
        .I5(p_0_in__0[2]),
        .O(\s_axi_rdata[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[15]_i_2 
       (.I0(data9[15]),
        .I1(\cnt_latched_reg_n_0_[15] ),
        .I2(p_0_in__0[1]),
        .I3(data7[15]),
        .I4(p_0_in__0[0]),
        .I5(\cnt_rx_reg_n_0_[15] ),
        .O(\s_axi_rdata[15]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_rdata[15]_i_3 
       (.I0(rx_data_ready_ovr_val_reg_n_0),
        .I1(rx_data_ready_ovr_en),
        .I2(rx_data_ready),
        .O(\s_axi_rdata[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[15]_i_4 
       (.I0(data5[15]),
        .I1(\cnt_tx_reg_n_0_[15] ),
        .I2(p_0_in__0[1]),
        .I3(\cnt_rd_buf_reg_n_0_[15] ),
        .I4(p_0_in__0[0]),
        .I5(\cnt_reg_n_0_[15] ),
        .O(\s_axi_rdata[15]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hEECCFCCC)) 
    \s_axi_rdata[16]_i_1 
       (.I0(\s_axi_rdata[16]_i_2_n_0 ),
        .I1(\s_axi_rdata[16]_i_3_n_0 ),
        .I2(\s_axi_rdata[16]_i_4_n_0 ),
        .I3(p_0_in__0[3]),
        .I4(p_0_in__0[2]),
        .O(\s_axi_rdata[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[16]_i_2 
       (.I0(data9[16]),
        .I1(\cnt_latched_reg_n_0_[16] ),
        .I2(p_0_in__0[1]),
        .I3(data7[16]),
        .I4(p_0_in__0[0]),
        .I5(\cnt_rx_reg_n_0_[16] ),
        .O(\s_axi_rdata[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0011101100001011)) 
    \s_axi_rdata[16]_i_3 
       (.I0(p_0_in__0[2]),
        .I1(p_0_in__0[3]),
        .I2(tx_enable),
        .I3(p_0_in__0[0]),
        .I4(p_0_in__0[1]),
        .I5(tx_dma_data_ready_stky),
        .O(\s_axi_rdata[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[16]_i_4 
       (.I0(data5[16]),
        .I1(\cnt_tx_reg_n_0_[16] ),
        .I2(p_0_in__0[1]),
        .I3(\cnt_rd_buf_reg_n_0_[16] ),
        .I4(p_0_in__0[0]),
        .I5(\cnt_reg_n_0_[16] ),
        .O(\s_axi_rdata[16]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hEECCFCCC)) 
    \s_axi_rdata[17]_i_1 
       (.I0(\s_axi_rdata[17]_i_2_n_0 ),
        .I1(\s_axi_rdata[17]_i_3_n_0 ),
        .I2(\s_axi_rdata[17]_i_4_n_0 ),
        .I3(p_0_in__0[3]),
        .I4(p_0_in__0[2]),
        .O(\s_axi_rdata[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[17]_i_2 
       (.I0(data9[17]),
        .I1(\cnt_latched_reg_n_0_[17] ),
        .I2(p_0_in__0[1]),
        .I3(data7[17]),
        .I4(p_0_in__0[0]),
        .I5(\cnt_rx_reg_n_0_[17] ),
        .O(\s_axi_rdata[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000002C00000020)) 
    \s_axi_rdata[17]_i_3 
       (.I0(rx_enable_reg_0),
        .I1(p_0_in__0[1]),
        .I2(p_0_in__0[0]),
        .I3(p_0_in__0[2]),
        .I4(p_0_in__0[3]),
        .I5(rx_dma_xfer_req_stky),
        .O(\s_axi_rdata[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[17]_i_4 
       (.I0(data5[17]),
        .I1(\cnt_tx_reg_n_0_[17] ),
        .I2(p_0_in__0[1]),
        .I3(\cnt_rd_buf_reg_n_0_[17] ),
        .I4(p_0_in__0[0]),
        .I5(\cnt_reg_n_0_[17] ),
        .O(\s_axi_rdata[17]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hEECCFCCC)) 
    \s_axi_rdata[18]_i_1 
       (.I0(\s_axi_rdata[18]_i_2_n_0 ),
        .I1(\s_axi_rdata[18]_i_3_n_0 ),
        .I2(\s_axi_rdata[18]_i_4_n_0 ),
        .I3(p_0_in__0[3]),
        .I4(p_0_in__0[2]),
        .O(\s_axi_rdata[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[18]_i_2 
       (.I0(data9[18]),
        .I1(\cnt_latched_reg_n_0_[18] ),
        .I2(p_0_in__0[1]),
        .I3(data7[18]),
        .I4(p_0_in__0[0]),
        .I5(\cnt_rx_reg_n_0_[18] ),
        .O(\s_axi_rdata[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000002C00000020)) 
    \s_axi_rdata[18]_i_3 
       (.I0(p_6_in[18]),
        .I1(p_0_in__0[1]),
        .I2(p_0_in__0[0]),
        .I3(p_0_in__0[2]),
        .I4(p_0_in__0[3]),
        .I5(tx_data_ready_stky),
        .O(\s_axi_rdata[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[18]_i_4 
       (.I0(data5[18]),
        .I1(\cnt_tx_reg_n_0_[18] ),
        .I2(p_0_in__0[1]),
        .I3(\cnt_rd_buf_reg_n_0_[18] ),
        .I4(p_0_in__0[0]),
        .I5(\cnt_reg_n_0_[18] ),
        .O(\s_axi_rdata[18]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hEECCFCCC)) 
    \s_axi_rdata[19]_i_1 
       (.I0(\s_axi_rdata[19]_i_2_n_0 ),
        .I1(\s_axi_rdata[19]_i_3_n_0 ),
        .I2(\s_axi_rdata[19]_i_4_n_0 ),
        .I3(p_0_in__0[3]),
        .I4(p_0_in__0[2]),
        .O(\s_axi_rdata[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[19]_i_2 
       (.I0(data9[19]),
        .I1(\cnt_latched_reg_n_0_[19] ),
        .I2(p_0_in__0[1]),
        .I3(data7[19]),
        .I4(p_0_in__0[0]),
        .I5(\cnt_rx_reg_n_0_[19] ),
        .O(\s_axi_rdata[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000002C00000020)) 
    \s_axi_rdata[19]_i_3 
       (.I0(p_6_in[19]),
        .I1(p_0_in__0[1]),
        .I2(p_0_in__0[0]),
        .I3(p_0_in__0[2]),
        .I4(p_0_in__0[3]),
        .I5(rx_data_ready_stky),
        .O(\s_axi_rdata[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[19]_i_4 
       (.I0(data5[19]),
        .I1(\cnt_tx_reg_n_0_[19] ),
        .I2(p_0_in__0[1]),
        .I3(\cnt_rd_buf_reg_n_0_[19] ),
        .I4(p_0_in__0[0]),
        .I5(\cnt_reg_n_0_[19] ),
        .O(\s_axi_rdata[19]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAEAE0C0CFF0C0C0C)) 
    \s_axi_rdata[1]_i_1 
       (.I0(\s_axi_rdata[1]_i_2_n_0 ),
        .I1(tx_dma_data_ready_ovr_val),
        .I2(\s_axi_rdata[21]_i_3_n_0 ),
        .I3(\s_axi_rdata[1]_i_3_n_0 ),
        .I4(p_0_in__0[3]),
        .I5(p_0_in__0[2]),
        .O(\s_axi_rdata[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[1]_i_2 
       (.I0(data9[1]),
        .I1(\cnt_latched_reg_n_0_[1] ),
        .I2(p_0_in__0[1]),
        .I3(data7[1]),
        .I4(p_0_in__0[0]),
        .I5(\cnt_rx_reg_n_0_[1] ),
        .O(\s_axi_rdata[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[1]_i_3 
       (.I0(data5[1]),
        .I1(\cnt_tx_reg_n_0_[1] ),
        .I2(p_0_in__0[1]),
        .I3(\cnt_rd_buf_reg_n_0_[1] ),
        .I4(p_0_in__0[0]),
        .I5(\cnt_reg_n_0_[1] ),
        .O(\s_axi_rdata[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAEAE0C0CFF0C0C0C)) 
    \s_axi_rdata[20]_i_1 
       (.I0(\s_axi_rdata[20]_i_2_n_0 ),
        .I1(tx_fifo_underflow_stky),
        .I2(\s_axi_rdata[21]_i_3_n_0 ),
        .I3(\s_axi_rdata[20]_i_3_n_0 ),
        .I4(p_0_in__0[3]),
        .I5(p_0_in__0[2]),
        .O(\s_axi_rdata[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[20]_i_2 
       (.I0(data9[20]),
        .I1(\cnt_latched_reg_n_0_[20] ),
        .I2(p_0_in__0[1]),
        .I3(data7[20]),
        .I4(p_0_in__0[0]),
        .I5(\cnt_rx_reg_n_0_[20] ),
        .O(\s_axi_rdata[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[20]_i_3 
       (.I0(data5[20]),
        .I1(\cnt_tx_reg_n_0_[20] ),
        .I2(p_0_in__0[1]),
        .I3(\cnt_rd_buf_reg_n_0_[20] ),
        .I4(p_0_in__0[0]),
        .I5(\cnt_reg_n_0_[20] ),
        .O(\s_axi_rdata[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAEAE0C0CFF0C0C0C)) 
    \s_axi_rdata[21]_i_1 
       (.I0(\s_axi_rdata[21]_i_2_n_0 ),
        .I1(rx_fifo_overflow_stky),
        .I2(\s_axi_rdata[21]_i_3_n_0 ),
        .I3(\s_axi_rdata[21]_i_4_n_0 ),
        .I4(p_0_in__0[3]),
        .I5(p_0_in__0[2]),
        .O(\s_axi_rdata[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[21]_i_2 
       (.I0(data9[21]),
        .I1(\cnt_latched_reg_n_0_[21] ),
        .I2(p_0_in__0[1]),
        .I3(data7[21]),
        .I4(p_0_in__0[0]),
        .I5(\cnt_rx_reg_n_0_[21] ),
        .O(\s_axi_rdata[21]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \s_axi_rdata[21]_i_3 
       (.I0(p_0_in__0[1]),
        .I1(p_0_in__0[0]),
        .I2(p_0_in__0[2]),
        .I3(p_0_in__0[3]),
        .O(\s_axi_rdata[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[21]_i_4 
       (.I0(data5[21]),
        .I1(\cnt_tx_reg_n_0_[21] ),
        .I2(p_0_in__0[1]),
        .I3(\cnt_rd_buf_reg_n_0_[21] ),
        .I4(p_0_in__0[0]),
        .I5(\cnt_reg_n_0_[21] ),
        .O(\s_axi_rdata[21]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hC808)) 
    \s_axi_rdata[22]_i_1 
       (.I0(\s_axi_rdata[22]_i_2_n_0 ),
        .I1(p_0_in__0[3]),
        .I2(p_0_in__0[2]),
        .I3(\s_axi_rdata[22]_i_3_n_0 ),
        .O(\s_axi_rdata[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[22]_i_2 
       (.I0(data5[22]),
        .I1(\cnt_tx_reg_n_0_[22] ),
        .I2(p_0_in__0[1]),
        .I3(\cnt_rd_buf_reg_n_0_[22] ),
        .I4(p_0_in__0[0]),
        .I5(\cnt_reg_n_0_[22] ),
        .O(\s_axi_rdata[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[22]_i_3 
       (.I0(data9[22]),
        .I1(\cnt_latched_reg_n_0_[22] ),
        .I2(p_0_in__0[1]),
        .I3(data7[22]),
        .I4(p_0_in__0[0]),
        .I5(\cnt_rx_reg_n_0_[22] ),
        .O(\s_axi_rdata[22]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hC808)) 
    \s_axi_rdata[23]_i_1 
       (.I0(\s_axi_rdata[23]_i_2_n_0 ),
        .I1(p_0_in__0[3]),
        .I2(p_0_in__0[2]),
        .I3(\s_axi_rdata[23]_i_3_n_0 ),
        .O(\s_axi_rdata[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[23]_i_2 
       (.I0(data5[23]),
        .I1(\cnt_tx_reg_n_0_[23] ),
        .I2(p_0_in__0[1]),
        .I3(\cnt_rd_buf_reg_n_0_[23] ),
        .I4(p_0_in__0[0]),
        .I5(\cnt_reg_n_0_[23] ),
        .O(\s_axi_rdata[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[23]_i_3 
       (.I0(data9[23]),
        .I1(\cnt_latched_reg_n_0_[23] ),
        .I2(p_0_in__0[1]),
        .I3(data7[23]),
        .I4(p_0_in__0[0]),
        .I5(\cnt_rx_reg_n_0_[23] ),
        .O(\s_axi_rdata[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAEAE0C0CFF0C0C0C)) 
    \s_axi_rdata[24]_i_1 
       (.I0(\s_axi_rdata[24]_i_2_n_0 ),
        .I1(p_6_in[24]),
        .I2(\s_axi_rdata[27]_i_3_n_0 ),
        .I3(\s_axi_rdata[24]_i_3_n_0 ),
        .I4(p_0_in__0[3]),
        .I5(p_0_in__0[2]),
        .O(\s_axi_rdata[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[24]_i_2 
       (.I0(data9[24]),
        .I1(\cnt_latched_reg_n_0_[24] ),
        .I2(p_0_in__0[1]),
        .I3(data7[24]),
        .I4(p_0_in__0[0]),
        .I5(\cnt_rx_reg_n_0_[24] ),
        .O(\s_axi_rdata[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[24]_i_3 
       (.I0(data5[24]),
        .I1(\cnt_tx_reg_n_0_[24] ),
        .I2(p_0_in__0[1]),
        .I3(\cnt_rd_buf_reg_n_0_[24] ),
        .I4(p_0_in__0[0]),
        .I5(\cnt_reg_n_0_[24] ),
        .O(\s_axi_rdata[24]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCA00CA00FFFFCA00)) 
    \s_axi_rdata[25]_i_1 
       (.I0(\s_axi_rdata[25]_i_2_n_0 ),
        .I1(\s_axi_rdata[25]_i_3_n_0 ),
        .I2(p_0_in__0[2]),
        .I3(p_0_in__0[3]),
        .I4(p_6_in[25]),
        .I5(\s_axi_rdata[27]_i_3_n_0 ),
        .O(\s_axi_rdata[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[25]_i_2 
       (.I0(data5[25]),
        .I1(\cnt_tx_reg_n_0_[25] ),
        .I2(p_0_in__0[1]),
        .I3(\cnt_rd_buf_reg_n_0_[25] ),
        .I4(p_0_in__0[0]),
        .I5(\cnt_reg_n_0_[25] ),
        .O(\s_axi_rdata[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[25]_i_3 
       (.I0(data9[25]),
        .I1(\cnt_latched_reg_n_0_[25] ),
        .I2(p_0_in__0[1]),
        .I3(data7[25]),
        .I4(p_0_in__0[0]),
        .I5(\cnt_rx_reg_n_0_[25] ),
        .O(\s_axi_rdata[25]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAEAE0C0CFF0C0C0C)) 
    \s_axi_rdata[26]_i_1 
       (.I0(\s_axi_rdata[26]_i_2_n_0 ),
        .I1(p_6_in[26]),
        .I2(\s_axi_rdata[27]_i_3_n_0 ),
        .I3(\s_axi_rdata[26]_i_3_n_0 ),
        .I4(p_0_in__0[3]),
        .I5(p_0_in__0[2]),
        .O(\s_axi_rdata[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[26]_i_2 
       (.I0(data9[26]),
        .I1(\cnt_latched_reg_n_0_[26] ),
        .I2(p_0_in__0[1]),
        .I3(data7[26]),
        .I4(p_0_in__0[0]),
        .I5(\cnt_rx_reg_n_0_[26] ),
        .O(\s_axi_rdata[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[26]_i_3 
       (.I0(data5[26]),
        .I1(\cnt_tx_reg_n_0_[26] ),
        .I2(p_0_in__0[1]),
        .I3(\cnt_rd_buf_reg_n_0_[26] ),
        .I4(p_0_in__0[0]),
        .I5(\cnt_reg_n_0_[26] ),
        .O(\s_axi_rdata[26]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAEAE0C0CFF0C0C0C)) 
    \s_axi_rdata[27]_i_1 
       (.I0(\s_axi_rdata[27]_i_2_n_0 ),
        .I1(p_6_in[27]),
        .I2(\s_axi_rdata[27]_i_3_n_0 ),
        .I3(\s_axi_rdata[27]_i_4_n_0 ),
        .I4(p_0_in__0[3]),
        .I5(p_0_in__0[2]),
        .O(\s_axi_rdata[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[27]_i_2 
       (.I0(data9[27]),
        .I1(\cnt_latched_reg_n_0_[27] ),
        .I2(p_0_in__0[1]),
        .I3(data7[27]),
        .I4(p_0_in__0[0]),
        .I5(\cnt_rx_reg_n_0_[27] ),
        .O(\s_axi_rdata[27]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \s_axi_rdata[27]_i_3 
       (.I0(p_0_in__0[2]),
        .I1(p_0_in__0[3]),
        .I2(p_0_in__0[0]),
        .I3(p_0_in__0[1]),
        .O(\s_axi_rdata[27]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[27]_i_4 
       (.I0(data5[27]),
        .I1(\cnt_tx_reg_n_0_[27] ),
        .I2(p_0_in__0[1]),
        .I3(\cnt_rd_buf_reg_n_0_[27] ),
        .I4(p_0_in__0[0]),
        .I5(\cnt_reg_n_0_[27] ),
        .O(\s_axi_rdata[27]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hC808)) 
    \s_axi_rdata[28]_i_1 
       (.I0(\s_axi_rdata[28]_i_2_n_0 ),
        .I1(p_0_in__0[3]),
        .I2(p_0_in__0[2]),
        .I3(\s_axi_rdata[28]_i_3_n_0 ),
        .O(\s_axi_rdata[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[28]_i_2 
       (.I0(data5[28]),
        .I1(\cnt_tx_reg_n_0_[28] ),
        .I2(p_0_in__0[1]),
        .I3(\cnt_rd_buf_reg_n_0_[28] ),
        .I4(p_0_in__0[0]),
        .I5(\cnt_reg_n_0_[28] ),
        .O(\s_axi_rdata[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[28]_i_3 
       (.I0(data9[28]),
        .I1(\cnt_latched_reg_n_0_[28] ),
        .I2(p_0_in__0[1]),
        .I3(data7[28]),
        .I4(p_0_in__0[0]),
        .I5(\cnt_rx_reg_n_0_[28] ),
        .O(\s_axi_rdata[28]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hC808)) 
    \s_axi_rdata[29]_i_1 
       (.I0(\s_axi_rdata[29]_i_2_n_0 ),
        .I1(p_0_in__0[3]),
        .I2(p_0_in__0[2]),
        .I3(\s_axi_rdata[29]_i_3_n_0 ),
        .O(\s_axi_rdata[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[29]_i_2 
       (.I0(data5[29]),
        .I1(\cnt_tx_reg_n_0_[29] ),
        .I2(p_0_in__0[1]),
        .I3(\cnt_rd_buf_reg_n_0_[29] ),
        .I4(p_0_in__0[0]),
        .I5(\cnt_reg_n_0_[29] ),
        .O(\s_axi_rdata[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[29]_i_3 
       (.I0(data9[29]),
        .I1(\cnt_latched_reg_n_0_[29] ),
        .I2(p_0_in__0[1]),
        .I3(data7[29]),
        .I4(p_0_in__0[0]),
        .I5(\cnt_rx_reg_n_0_[29] ),
        .O(\s_axi_rdata[29]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAEAE0C0CFF0C0C0C)) 
    \s_axi_rdata[2]_i_1 
       (.I0(\s_axi_rdata[2]_i_2_n_0 ),
        .I1(rx_dma_xfer_req_ovr_en),
        .I2(\s_axi_rdata[21]_i_3_n_0 ),
        .I3(\s_axi_rdata[2]_i_3_n_0 ),
        .I4(p_0_in__0[3]),
        .I5(p_0_in__0[2]),
        .O(\s_axi_rdata[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[2]_i_2 
       (.I0(data9[2]),
        .I1(\cnt_latched_reg_n_0_[2] ),
        .I2(p_0_in__0[1]),
        .I3(data7[2]),
        .I4(p_0_in__0[0]),
        .I5(\cnt_rx_reg_n_0_[2] ),
        .O(\s_axi_rdata[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[2]_i_3 
       (.I0(data5[2]),
        .I1(\cnt_tx_reg_n_0_[2] ),
        .I2(p_0_in__0[1]),
        .I3(\cnt_rd_buf_reg_n_0_[2] ),
        .I4(p_0_in__0[0]),
        .I5(\cnt_reg_n_0_[2] ),
        .O(\s_axi_rdata[2]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hC808)) 
    \s_axi_rdata[30]_i_1 
       (.I0(\s_axi_rdata[30]_i_2_n_0 ),
        .I1(p_0_in__0[3]),
        .I2(p_0_in__0[2]),
        .I3(\s_axi_rdata[30]_i_3_n_0 ),
        .O(\s_axi_rdata[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[30]_i_2 
       (.I0(data5[30]),
        .I1(\cnt_tx_reg_n_0_[30] ),
        .I2(p_0_in__0[1]),
        .I3(\cnt_rd_buf_reg_n_0_[30] ),
        .I4(p_0_in__0[0]),
        .I5(\cnt_reg_n_0_[30] ),
        .O(\s_axi_rdata[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[30]_i_3 
       (.I0(data9[30]),
        .I1(\cnt_latched_reg_n_0_[30] ),
        .I2(p_0_in__0[1]),
        .I3(data7[30]),
        .I4(p_0_in__0[0]),
        .I5(\cnt_rx_reg_n_0_[30] ),
        .O(\s_axi_rdata[30]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \s_axi_rdata[31]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_axi_arready),
        .I2(s_axi_rvalid_reg_0),
        .O(s_axi_reg_rden));
  LUT4 #(
    .INIT(16'hC808)) 
    \s_axi_rdata[31]_i_2 
       (.I0(\s_axi_rdata[31]_i_3_n_0 ),
        .I1(p_0_in__0[3]),
        .I2(p_0_in__0[2]),
        .I3(\s_axi_rdata[31]_i_4_n_0 ),
        .O(\s_axi_rdata[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[31]_i_3 
       (.I0(data5[31]),
        .I1(\cnt_tx_reg_n_0_[31] ),
        .I2(p_0_in__0[1]),
        .I3(\cnt_rd_buf_reg_n_0_[31] ),
        .I4(p_0_in__0[0]),
        .I5(\cnt_reg_n_0_[31] ),
        .O(\s_axi_rdata[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[31]_i_4 
       (.I0(data9[31]),
        .I1(\cnt_latched_reg_n_0_[31] ),
        .I2(p_0_in__0[1]),
        .I3(data7[31]),
        .I4(p_0_in__0[0]),
        .I5(\cnt_rx_reg_n_0_[31] ),
        .O(\s_axi_rdata[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAEAE0C0CFF0C0C0C)) 
    \s_axi_rdata[3]_i_1 
       (.I0(\s_axi_rdata[3]_i_2_n_0 ),
        .I1(rx_dma_xfer_req_ovr_val),
        .I2(\s_axi_rdata[21]_i_3_n_0 ),
        .I3(\s_axi_rdata[3]_i_3_n_0 ),
        .I4(p_0_in__0[3]),
        .I5(p_0_in__0[2]),
        .O(\s_axi_rdata[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[3]_i_2 
       (.I0(data9[3]),
        .I1(\cnt_latched_reg_n_0_[3] ),
        .I2(p_0_in__0[1]),
        .I3(data7[3]),
        .I4(p_0_in__0[0]),
        .I5(\cnt_rx_reg_n_0_[3] ),
        .O(\s_axi_rdata[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[3]_i_3 
       (.I0(data5[3]),
        .I1(\cnt_tx_reg_n_0_[3] ),
        .I2(p_0_in__0[1]),
        .I3(\cnt_rd_buf_reg_n_0_[3] ),
        .I4(p_0_in__0[0]),
        .I5(\cnt_reg_n_0_[3] ),
        .O(\s_axi_rdata[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAEAE0C0CFF0C0C0C)) 
    \s_axi_rdata[4]_i_1 
       (.I0(\s_axi_rdata[4]_i_2_n_0 ),
        .I1(tx_data_ready_ovr_en),
        .I2(\s_axi_rdata[21]_i_3_n_0 ),
        .I3(\s_axi_rdata[4]_i_3_n_0 ),
        .I4(p_0_in__0[3]),
        .I5(p_0_in__0[2]),
        .O(\s_axi_rdata[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[4]_i_2 
       (.I0(data9[4]),
        .I1(\cnt_latched_reg_n_0_[4] ),
        .I2(p_0_in__0[1]),
        .I3(data7[4]),
        .I4(p_0_in__0[0]),
        .I5(\cnt_rx_reg_n_0_[4] ),
        .O(\s_axi_rdata[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[4]_i_3 
       (.I0(data5[4]),
        .I1(\cnt_tx_reg_n_0_[4] ),
        .I2(p_0_in__0[1]),
        .I3(\cnt_rd_buf_reg_n_0_[4] ),
        .I4(p_0_in__0[0]),
        .I5(\cnt_reg_n_0_[4] ),
        .O(\s_axi_rdata[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAEAE0C0CFF0C0C0C)) 
    \s_axi_rdata[5]_i_1 
       (.I0(\s_axi_rdata[5]_i_2_n_0 ),
        .I1(tx_data_ready_ovr_val),
        .I2(\s_axi_rdata[21]_i_3_n_0 ),
        .I3(\s_axi_rdata[5]_i_3_n_0 ),
        .I4(p_0_in__0[3]),
        .I5(p_0_in__0[2]),
        .O(\s_axi_rdata[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[5]_i_2 
       (.I0(data9[5]),
        .I1(\cnt_latched_reg_n_0_[5] ),
        .I2(p_0_in__0[1]),
        .I3(data7[5]),
        .I4(p_0_in__0[0]),
        .I5(\cnt_rx_reg_n_0_[5] ),
        .O(\s_axi_rdata[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[5]_i_3 
       (.I0(data5[5]),
        .I1(\cnt_tx_reg_n_0_[5] ),
        .I2(p_0_in__0[1]),
        .I3(\cnt_rd_buf_reg_n_0_[5] ),
        .I4(p_0_in__0[0]),
        .I5(\cnt_reg_n_0_[5] ),
        .O(\s_axi_rdata[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAEAE0C0CFF0C0C0C)) 
    \s_axi_rdata[6]_i_1 
       (.I0(\s_axi_rdata[6]_i_2_n_0 ),
        .I1(rx_data_ready_ovr_en),
        .I2(\s_axi_rdata[21]_i_3_n_0 ),
        .I3(\s_axi_rdata[6]_i_3_n_0 ),
        .I4(p_0_in__0[3]),
        .I5(p_0_in__0[2]),
        .O(\s_axi_rdata[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[6]_i_2 
       (.I0(data9[6]),
        .I1(\cnt_latched_reg_n_0_[6] ),
        .I2(p_0_in__0[1]),
        .I3(data7[6]),
        .I4(p_0_in__0[0]),
        .I5(\cnt_rx_reg_n_0_[6] ),
        .O(\s_axi_rdata[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[6]_i_3 
       (.I0(data5[6]),
        .I1(\cnt_tx_reg_n_0_[6] ),
        .I2(p_0_in__0[1]),
        .I3(\cnt_rd_buf_reg_n_0_[6] ),
        .I4(p_0_in__0[0]),
        .I5(\cnt_reg_n_0_[6] ),
        .O(\s_axi_rdata[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAEAE0C0CFF0C0C0C)) 
    \s_axi_rdata[7]_i_1 
       (.I0(\s_axi_rdata[7]_i_2_n_0 ),
        .I1(rx_data_ready_ovr_val_reg_n_0),
        .I2(\s_axi_rdata[21]_i_3_n_0 ),
        .I3(\s_axi_rdata[7]_i_3_n_0 ),
        .I4(p_0_in__0[3]),
        .I5(p_0_in__0[2]),
        .O(\s_axi_rdata[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[7]_i_2 
       (.I0(data9[7]),
        .I1(\cnt_latched_reg_n_0_[7] ),
        .I2(p_0_in__0[1]),
        .I3(data7[7]),
        .I4(p_0_in__0[0]),
        .I5(\cnt_rx_reg_n_0_[7] ),
        .O(\s_axi_rdata[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[7]_i_3 
       (.I0(data5[7]),
        .I1(\cnt_tx_reg_n_0_[7] ),
        .I2(p_0_in__0[1]),
        .I3(\cnt_rd_buf_reg_n_0_[7] ),
        .I4(p_0_in__0[0]),
        .I5(\cnt_reg_n_0_[7] ),
        .O(\s_axi_rdata[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAEAE0C0CFF0C0C0C)) 
    \s_axi_rdata[8]_i_1 
       (.I0(\s_axi_rdata[8]_i_2_n_0 ),
        .I1(tx_dma_data_ready),
        .I2(\s_axi_rdata[21]_i_3_n_0 ),
        .I3(\s_axi_rdata[8]_i_3_n_0 ),
        .I4(p_0_in__0[3]),
        .I5(p_0_in__0[2]),
        .O(\s_axi_rdata[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[8]_i_2 
       (.I0(data9[8]),
        .I1(\cnt_latched_reg_n_0_[8] ),
        .I2(p_0_in__0[1]),
        .I3(data7[8]),
        .I4(p_0_in__0[0]),
        .I5(\cnt_rx_reg_n_0_[8] ),
        .O(\s_axi_rdata[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[8]_i_3 
       (.I0(data5[8]),
        .I1(\cnt_tx_reg_n_0_[8] ),
        .I2(p_0_in__0[1]),
        .I3(\cnt_rd_buf_reg_n_0_[8] ),
        .I4(p_0_in__0[0]),
        .I5(\cnt_reg_n_0_[8] ),
        .O(\s_axi_rdata[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAEAE0C0CFF0C0C0C)) 
    \s_axi_rdata[9]_i_1 
       (.I0(\s_axi_rdata[9]_i_2_n_0 ),
        .I1(rx_dma_xfer_req),
        .I2(\s_axi_rdata[21]_i_3_n_0 ),
        .I3(\s_axi_rdata[9]_i_3_n_0 ),
        .I4(p_0_in__0[3]),
        .I5(p_0_in__0[2]),
        .O(\s_axi_rdata[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[9]_i_2 
       (.I0(data9[9]),
        .I1(\cnt_latched_reg_n_0_[9] ),
        .I2(p_0_in__0[1]),
        .I3(data7[9]),
        .I4(p_0_in__0[0]),
        .I5(\cnt_rx_reg_n_0_[9] ),
        .O(\s_axi_rdata[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[9]_i_3 
       (.I0(data5[9]),
        .I1(\cnt_tx_reg_n_0_[9] ),
        .I2(p_0_in__0[1]),
        .I3(\cnt_rd_buf_reg_n_0_[9] ),
        .I4(p_0_in__0[0]),
        .I5(\cnt_reg_n_0_[9] ),
        .O(\s_axi_rdata[9]_i_3_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[0] 
       (.C(aclk),
        .CE(s_axi_reg_rden),
        .D(\s_axi_rdata[0]_i_1_n_0 ),
        .Q(s_axi_rdata[0]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[10] 
       (.C(aclk),
        .CE(s_axi_reg_rden),
        .D(\s_axi_rdata[10]_i_1_n_0 ),
        .Q(s_axi_rdata[10]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[11] 
       (.C(aclk),
        .CE(s_axi_reg_rden),
        .D(\s_axi_rdata[11]_i_1_n_0 ),
        .Q(s_axi_rdata[11]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[12] 
       (.C(aclk),
        .CE(s_axi_reg_rden),
        .D(\s_axi_rdata[12]_i_1_n_0 ),
        .Q(s_axi_rdata[12]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[13] 
       (.C(aclk),
        .CE(s_axi_reg_rden),
        .D(\s_axi_rdata[13]_i_1_n_0 ),
        .Q(s_axi_rdata[13]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[14] 
       (.C(aclk),
        .CE(s_axi_reg_rden),
        .D(\s_axi_rdata[14]_i_1_n_0 ),
        .Q(s_axi_rdata[14]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[15] 
       (.C(aclk),
        .CE(s_axi_reg_rden),
        .D(\s_axi_rdata[15]_i_1_n_0 ),
        .Q(s_axi_rdata[15]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[16] 
       (.C(aclk),
        .CE(s_axi_reg_rden),
        .D(\s_axi_rdata[16]_i_1_n_0 ),
        .Q(s_axi_rdata[16]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[17] 
       (.C(aclk),
        .CE(s_axi_reg_rden),
        .D(\s_axi_rdata[17]_i_1_n_0 ),
        .Q(s_axi_rdata[17]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[18] 
       (.C(aclk),
        .CE(s_axi_reg_rden),
        .D(\s_axi_rdata[18]_i_1_n_0 ),
        .Q(s_axi_rdata[18]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[19] 
       (.C(aclk),
        .CE(s_axi_reg_rden),
        .D(\s_axi_rdata[19]_i_1_n_0 ),
        .Q(s_axi_rdata[19]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[1] 
       (.C(aclk),
        .CE(s_axi_reg_rden),
        .D(\s_axi_rdata[1]_i_1_n_0 ),
        .Q(s_axi_rdata[1]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[20] 
       (.C(aclk),
        .CE(s_axi_reg_rden),
        .D(\s_axi_rdata[20]_i_1_n_0 ),
        .Q(s_axi_rdata[20]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[21] 
       (.C(aclk),
        .CE(s_axi_reg_rden),
        .D(\s_axi_rdata[21]_i_1_n_0 ),
        .Q(s_axi_rdata[21]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[22] 
       (.C(aclk),
        .CE(s_axi_reg_rden),
        .D(\s_axi_rdata[22]_i_1_n_0 ),
        .Q(s_axi_rdata[22]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[23] 
       (.C(aclk),
        .CE(s_axi_reg_rden),
        .D(\s_axi_rdata[23]_i_1_n_0 ),
        .Q(s_axi_rdata[23]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[24] 
       (.C(aclk),
        .CE(s_axi_reg_rden),
        .D(\s_axi_rdata[24]_i_1_n_0 ),
        .Q(s_axi_rdata[24]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[25] 
       (.C(aclk),
        .CE(s_axi_reg_rden),
        .D(\s_axi_rdata[25]_i_1_n_0 ),
        .Q(s_axi_rdata[25]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[26] 
       (.C(aclk),
        .CE(s_axi_reg_rden),
        .D(\s_axi_rdata[26]_i_1_n_0 ),
        .Q(s_axi_rdata[26]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[27] 
       (.C(aclk),
        .CE(s_axi_reg_rden),
        .D(\s_axi_rdata[27]_i_1_n_0 ),
        .Q(s_axi_rdata[27]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[28] 
       (.C(aclk),
        .CE(s_axi_reg_rden),
        .D(\s_axi_rdata[28]_i_1_n_0 ),
        .Q(s_axi_rdata[28]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[29] 
       (.C(aclk),
        .CE(s_axi_reg_rden),
        .D(\s_axi_rdata[29]_i_1_n_0 ),
        .Q(s_axi_rdata[29]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[2] 
       (.C(aclk),
        .CE(s_axi_reg_rden),
        .D(\s_axi_rdata[2]_i_1_n_0 ),
        .Q(s_axi_rdata[2]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[30] 
       (.C(aclk),
        .CE(s_axi_reg_rden),
        .D(\s_axi_rdata[30]_i_1_n_0 ),
        .Q(s_axi_rdata[30]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[31] 
       (.C(aclk),
        .CE(s_axi_reg_rden),
        .D(\s_axi_rdata[31]_i_2_n_0 ),
        .Q(s_axi_rdata[31]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[3] 
       (.C(aclk),
        .CE(s_axi_reg_rden),
        .D(\s_axi_rdata[3]_i_1_n_0 ),
        .Q(s_axi_rdata[3]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[4] 
       (.C(aclk),
        .CE(s_axi_reg_rden),
        .D(\s_axi_rdata[4]_i_1_n_0 ),
        .Q(s_axi_rdata[4]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[5] 
       (.C(aclk),
        .CE(s_axi_reg_rden),
        .D(\s_axi_rdata[5]_i_1_n_0 ),
        .Q(s_axi_rdata[5]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[6] 
       (.C(aclk),
        .CE(s_axi_reg_rden),
        .D(\s_axi_rdata[6]_i_1_n_0 ),
        .Q(s_axi_rdata[6]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[7] 
       (.C(aclk),
        .CE(s_axi_reg_rden),
        .D(\s_axi_rdata[7]_i_1_n_0 ),
        .Q(s_axi_rdata[7]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[8] 
       (.C(aclk),
        .CE(s_axi_reg_rden),
        .D(\s_axi_rdata[8]_i_1_n_0 ),
        .Q(s_axi_rdata[8]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[9] 
       (.C(aclk),
        .CE(s_axi_reg_rden),
        .D(\s_axi_rdata[9]_i_1_n_0 ),
        .Q(s_axi_rdata[9]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h7444)) 
    s_axi_rvalid_i_1
       (.I0(s_axi_rready),
        .I1(s_axi_rvalid_reg_0),
        .I2(s_axi_arready),
        .I3(s_axi_arvalid),
        .O(s_axi_rvalid_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *) 
  FDRE s_axi_rvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_axi_rvalid_i_1_n_0),
        .Q(s_axi_rvalid_reg_0),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h4000)) 
    s_axi_wready_i_1
       (.I0(s_axi_wready),
        .I1(s_axi_aw_en_reg_n_0),
        .I2(s_axi_wvalid),
        .I3(s_axi_awvalid),
        .O(s_axi_wready0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *) 
  FDRE s_axi_wready_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_axi_wready0),
        .Q(s_axi_wready),
        .R(p_0_in));
  FDRE tx_data_ready_ovr_en_reg
       (.C(aclk),
        .CE(tx_dma_data_ready_ovr_en),
        .D(s_axi_wdata[4]),
        .Q(tx_data_ready_ovr_en),
        .R(p_0_in));
  FDRE tx_data_ready_ovr_val_reg
       (.C(aclk),
        .CE(tx_dma_data_ready_ovr_en),
        .D(s_axi_wdata[5]),
        .Q(tx_data_ready_ovr_val),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBB000B0)) 
    tx_data_ready_stky_i_1
       (.I0(\s_axi_rdata[21]_i_3_n_0 ),
        .I1(s_axi_reg_rden),
        .I2(tx_data_ready),
        .I3(tx_data_ready_ovr_en),
        .I4(tx_data_ready_ovr_val),
        .I5(tx_data_ready_stky),
        .O(tx_data_ready_stky_i_1_n_0));
  FDRE tx_data_ready_stky_reg
       (.C(aclk),
        .CE(1'b1),
        .D(tx_data_ready_stky_i_1_n_0),
        .Q(tx_data_ready_stky),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    tx_dma_data_ready_ovr_en_i_1
       (.I0(tx_dma_data_ready_ovr_en_i_2_n_0),
        .I1(p_4_in[3]),
        .I2(s_axi_wstrb[0]),
        .I3(p_4_in[0]),
        .I4(p_4_in[2]),
        .I5(p_4_in[1]),
        .O(tx_dma_data_ready_ovr_en));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    tx_dma_data_ready_ovr_en_i_2
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .I2(s_axi_awready),
        .I3(s_axi_wready),
        .O(tx_dma_data_ready_ovr_en_i_2_n_0));
  FDRE tx_dma_data_ready_ovr_en_reg
       (.C(aclk),
        .CE(tx_dma_data_ready_ovr_en),
        .D(s_axi_wdata[0]),
        .Q(tx_dma_data_ready_ovr_en_reg_n_0),
        .R(p_0_in));
  FDRE tx_dma_data_ready_ovr_val_reg
       (.C(aclk),
        .CE(tx_dma_data_ready_ovr_en),
        .D(s_axi_wdata[1]),
        .Q(tx_dma_data_ready_ovr_val),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'hFF00FFFFE200E2E2)) 
    tx_dma_data_ready_stky_i_1
       (.I0(tx_dma_data_ready),
        .I1(tx_dma_data_ready_ovr_en_reg_n_0),
        .I2(tx_dma_data_ready_ovr_val),
        .I3(\s_axi_rdata[21]_i_3_n_0 ),
        .I4(s_axi_reg_rden),
        .I5(tx_dma_data_ready_stky),
        .O(tx_dma_data_ready_stky_i_1_n_0));
  FDRE tx_dma_data_ready_stky_reg
       (.C(aclk),
        .CE(1'b1),
        .D(tx_dma_data_ready_stky_i_1_n_0),
        .Q(tx_dma_data_ready_stky),
        .R(p_0_in));
  CARRY4 tx_enable1_carry
       (.CI(1'b0),
        .CO({tx_enable1_carry_n_0,tx_enable1_carry_n_1,tx_enable1_carry_n_2,tx_enable1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_tx_enable1_carry_O_UNCONNECTED[3:0]),
        .S({tx_enable1_carry_i_1_n_0,tx_enable1_carry_i_2_n_0,tx_enable1_carry_i_3_n_0,tx_enable1_carry_i_4_n_0}));
  CARRY4 tx_enable1_carry__0
       (.CI(tx_enable1_carry_n_0),
        .CO({tx_enable1_carry__0_n_0,tx_enable1_carry__0_n_1,tx_enable1_carry__0_n_2,tx_enable1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_tx_enable1_carry__0_O_UNCONNECTED[3:0]),
        .S({tx_enable1_carry__0_i_1_n_0,tx_enable1_carry__0_i_2_n_0,tx_enable1_carry__0_i_3_n_0,tx_enable1_carry__0_i_4_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tx_enable1_carry__0_i_1
       (.I0(\cnt_tx_reg_n_0_[23] ),
        .I1(\cnt_reg_n_0_[23] ),
        .I2(\cnt_reg_n_0_[21] ),
        .I3(\cnt_tx_reg_n_0_[21] ),
        .I4(\cnt_reg_n_0_[22] ),
        .I5(\cnt_tx_reg_n_0_[22] ),
        .O(tx_enable1_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tx_enable1_carry__0_i_2
       (.I0(\cnt_tx_reg_n_0_[20] ),
        .I1(\cnt_reg_n_0_[20] ),
        .I2(\cnt_reg_n_0_[18] ),
        .I3(\cnt_tx_reg_n_0_[18] ),
        .I4(\cnt_reg_n_0_[19] ),
        .I5(\cnt_tx_reg_n_0_[19] ),
        .O(tx_enable1_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tx_enable1_carry__0_i_3
       (.I0(\cnt_tx_reg_n_0_[17] ),
        .I1(\cnt_reg_n_0_[17] ),
        .I2(\cnt_reg_n_0_[15] ),
        .I3(\cnt_tx_reg_n_0_[15] ),
        .I4(\cnt_reg_n_0_[16] ),
        .I5(\cnt_tx_reg_n_0_[16] ),
        .O(tx_enable1_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tx_enable1_carry__0_i_4
       (.I0(\cnt_tx_reg_n_0_[14] ),
        .I1(\cnt_reg_n_0_[14] ),
        .I2(\cnt_reg_n_0_[12] ),
        .I3(\cnt_tx_reg_n_0_[12] ),
        .I4(\cnt_reg_n_0_[13] ),
        .I5(\cnt_tx_reg_n_0_[13] ),
        .O(tx_enable1_carry__0_i_4_n_0));
  CARRY4 tx_enable1_carry__1
       (.CI(tx_enable1_carry__0_n_0),
        .CO({tx_enable1_carry__1_n_0,tx_enable1_carry__1_n_1,tx_enable1_carry__1_n_2,tx_enable1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_tx_enable1_carry__1_O_UNCONNECTED[3:0]),
        .S({tx_enable1_carry__1_i_1_n_0,tx_enable1_carry__1_i_2_n_0,tx_enable1_carry__1_i_3_n_0,tx_enable1_carry__1_i_4_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tx_enable1_carry__1_i_1
       (.I0(p_1_in[2]),
        .I1(data5[2]),
        .I2(p_1_in[1]),
        .I3(data5[1]),
        .I4(data5[3]),
        .I5(p_1_in[3]),
        .O(tx_enable1_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tx_enable1_carry__1_i_2
       (.I0(\cnt_tx_reg_n_0_[31] ),
        .I1(\cnt_reg_n_0_[31] ),
        .I2(p_1_in[0]),
        .I3(data5[0]),
        .I4(\cnt_reg_n_0_[30] ),
        .I5(\cnt_tx_reg_n_0_[30] ),
        .O(tx_enable1_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tx_enable1_carry__1_i_3
       (.I0(\cnt_tx_reg_n_0_[29] ),
        .I1(\cnt_reg_n_0_[29] ),
        .I2(\cnt_reg_n_0_[27] ),
        .I3(\cnt_tx_reg_n_0_[27] ),
        .I4(\cnt_reg_n_0_[28] ),
        .I5(\cnt_tx_reg_n_0_[28] ),
        .O(tx_enable1_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tx_enable1_carry__1_i_4
       (.I0(\cnt_tx_reg_n_0_[26] ),
        .I1(\cnt_reg_n_0_[26] ),
        .I2(\cnt_reg_n_0_[24] ),
        .I3(\cnt_tx_reg_n_0_[24] ),
        .I4(\cnt_reg_n_0_[25] ),
        .I5(\cnt_tx_reg_n_0_[25] ),
        .O(tx_enable1_carry__1_i_4_n_0));
  CARRY4 tx_enable1_carry__2
       (.CI(tx_enable1_carry__1_n_0),
        .CO({tx_enable1_carry__2_n_0,tx_enable1_carry__2_n_1,tx_enable1_carry__2_n_2,tx_enable1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_tx_enable1_carry__2_O_UNCONNECTED[3:0]),
        .S({tx_enable1_carry__2_i_1_n_0,tx_enable1_carry__2_i_2_n_0,tx_enable1_carry__2_i_3_n_0,tx_enable1_carry__2_i_4_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tx_enable1_carry__2_i_1
       (.I0(data5[15]),
        .I1(p_1_in[15]),
        .I2(p_1_in[13]),
        .I3(data5[13]),
        .I4(p_1_in[14]),
        .I5(data5[14]),
        .O(tx_enable1_carry__2_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tx_enable1_carry__2_i_2
       (.I0(data5[12]),
        .I1(p_1_in[12]),
        .I2(p_1_in[10]),
        .I3(data5[10]),
        .I4(p_1_in[11]),
        .I5(data5[11]),
        .O(tx_enable1_carry__2_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tx_enable1_carry__2_i_3
       (.I0(data5[9]),
        .I1(p_1_in[9]),
        .I2(p_1_in[8]),
        .I3(data5[8]),
        .I4(p_1_in[7]),
        .I5(data5[7]),
        .O(tx_enable1_carry__2_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tx_enable1_carry__2_i_4
       (.I0(data5[6]),
        .I1(p_1_in[6]),
        .I2(p_1_in[4]),
        .I3(data5[4]),
        .I4(p_1_in[5]),
        .I5(data5[5]),
        .O(tx_enable1_carry__2_i_4_n_0));
  CARRY4 tx_enable1_carry__3
       (.CI(tx_enable1_carry__2_n_0),
        .CO({tx_enable1_carry__3_n_0,tx_enable1_carry__3_n_1,tx_enable1_carry__3_n_2,tx_enable1_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_tx_enable1_carry__3_O_UNCONNECTED[3:0]),
        .S({tx_enable1_carry__3_i_1_n_0,tx_enable1_carry__3_i_2_n_0,tx_enable1_carry__3_i_3_n_0,tx_enable1_carry__3_i_4_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tx_enable1_carry__3_i_1
       (.I0(data5[27]),
        .I1(p_1_in[27]),
        .I2(p_1_in[25]),
        .I3(data5[25]),
        .I4(p_1_in[26]),
        .I5(data5[26]),
        .O(tx_enable1_carry__3_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tx_enable1_carry__3_i_2
       (.I0(p_1_in[22]),
        .I1(data5[22]),
        .I2(p_1_in[23]),
        .I3(data5[23]),
        .I4(data5[24]),
        .I5(p_1_in[24]),
        .O(tx_enable1_carry__3_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tx_enable1_carry__3_i_3
       (.I0(p_1_in[19]),
        .I1(data5[19]),
        .I2(p_1_in[20]),
        .I3(data5[20]),
        .I4(data5[21]),
        .I5(p_1_in[21]),
        .O(tx_enable1_carry__3_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tx_enable1_carry__3_i_4
       (.I0(p_1_in[18]),
        .I1(data5[18]),
        .I2(p_1_in[16]),
        .I3(data5[16]),
        .I4(data5[17]),
        .I5(p_1_in[17]),
        .O(tx_enable1_carry__3_i_4_n_0));
  CARRY4 tx_enable1_carry__4
       (.CI(tx_enable1_carry__3_n_0),
        .CO({NLW_tx_enable1_carry__4_CO_UNCONNECTED[3:2],tx_enable1,tx_enable1_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_tx_enable1_carry__4_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,tx_enable1_carry__4_i_1_n_0,tx_enable1_carry__4_i_2_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    tx_enable1_carry__4_i_1
       (.I0(data5[31]),
        .I1(p_1_in[31]),
        .O(tx_enable1_carry__4_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tx_enable1_carry__4_i_2
       (.I0(p_1_in[28]),
        .I1(data5[28]),
        .I2(p_1_in[29]),
        .I3(data5[29]),
        .I4(data5[30]),
        .I5(p_1_in[30]),
        .O(tx_enable1_carry__4_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tx_enable1_carry_i_1
       (.I0(\cnt_tx_reg_n_0_[11] ),
        .I1(\cnt_reg_n_0_[11] ),
        .I2(\cnt_reg_n_0_[9] ),
        .I3(\cnt_tx_reg_n_0_[9] ),
        .I4(\cnt_reg_n_0_[10] ),
        .I5(\cnt_tx_reg_n_0_[10] ),
        .O(tx_enable1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tx_enable1_carry_i_2
       (.I0(\cnt_tx_reg_n_0_[8] ),
        .I1(\cnt_reg_n_0_[8] ),
        .I2(\cnt_reg_n_0_[6] ),
        .I3(\cnt_tx_reg_n_0_[6] ),
        .I4(\cnt_reg_n_0_[7] ),
        .I5(\cnt_tx_reg_n_0_[7] ),
        .O(tx_enable1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tx_enable1_carry_i_3
       (.I0(\cnt_reg_n_0_[5] ),
        .I1(\cnt_tx_reg_n_0_[5] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_tx_reg_n_0_[3] ),
        .I4(\cnt_tx_reg_n_0_[4] ),
        .I5(\cnt_reg_n_0_[4] ),
        .O(tx_enable1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tx_enable1_carry_i_4
       (.I0(\cnt_tx_reg_n_0_[1] ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_tx_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[0] ),
        .I5(\cnt_tx_reg_n_0_[0] ),
        .O(tx_enable1_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h00FCFFFCFF100010)) 
    tx_enable_i_1
       (.I0(tx_enable_i_2_n_0),
        .I1(tx_enable_i_3_n_0),
        .I2(tx_enable_i_4_n_0),
        .I3(p_6_in[18]),
        .I4(tx_enable1),
        .I5(tx_enable),
        .O(tx_enable_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h7)) 
    tx_enable_i_2
       (.I0(s_axi_wdata[0]),
        .I1(s_axi_wstrb[0]),
        .O(tx_enable_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFEFFFFF)) 
    tx_enable_i_3
       (.I0(p_4_in[2]),
        .I1(p_4_in[3]),
        .I2(p_4_in[0]),
        .I3(p_4_in[1]),
        .I4(tx_dma_data_ready_ovr_en_i_2_n_0),
        .O(tx_enable_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h7)) 
    tx_enable_i_4
       (.I0(s_axi_wdata[1]),
        .I1(s_axi_wstrb[0]),
        .O(tx_enable_i_4_n_0));
  (* X_INTERFACE_IGNORE = "true" *) 
  FDRE tx_enable_reg
       (.C(aclk),
        .CE(1'b1),
        .D(tx_enable_i_1_n_0),
        .Q(tx_enable),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'hFFFFCFFFAAAA8AAA)) 
    tx_fifo_underflow_stky_i_1
       (.I0(tx_fifo_underflow),
        .I1(\s_axi_rdata[21]_i_3_n_0 ),
        .I2(s_axi_arvalid),
        .I3(s_axi_arready),
        .I4(s_axi_rvalid_reg_0),
        .I5(tx_fifo_underflow_stky),
        .O(tx_fifo_underflow_stky_i_1_n_0));
  FDRE tx_fifo_underflow_stky_reg
       (.C(aclk),
        .CE(1'b1),
        .D(tx_fifo_underflow_stky_i_1_n_0),
        .Q(tx_fifo_underflow_stky),
        .R(p_0_in));
endmodule

(* CHECK_LICENSE_TYPE = "icyradio_axi_rf_timestamping_0_0,axi_rf_timestamping,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "axi_rf_timestamping,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module icyradio_axi_rf_timestamping_0_0
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    tx_dma_data_ready,
    rx_dma_xfer_req,
    tx_data_ready,
    rx_data_ready,
    tx_fifo_underflow,
    rx_fifo_overflow,
    tx_enable,
    rx_enable);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN icyradio_axi_ad9361_2_l_clk, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *) input [5:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWPROT" *) input [2:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *) input [5:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARPROT" *) input [2:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 6, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN icyradio_axi_ad9361_2_l_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_rready;
  (* X_INTERFACE_IGNORE = "true" *) input tx_dma_data_ready;
  (* X_INTERFACE_IGNORE = "true" *) input rx_dma_xfer_req;
  (* X_INTERFACE_IGNORE = "true" *) input tx_data_ready;
  (* X_INTERFACE_IGNORE = "true" *) input rx_data_ready;
  (* X_INTERFACE_IGNORE = "true" *) input tx_fifo_underflow;
  (* X_INTERFACE_IGNORE = "true" *) input rx_fifo_overflow;
  output tx_enable;
  output rx_enable;

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire rx_data_ready;
  wire rx_dma_xfer_req;
  wire rx_enable;
  wire rx_fifo_overflow;
  wire [5:0]s_axi_araddr;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [5:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire tx_data_ready;
  wire tx_dma_data_ready;
  wire tx_enable;
  wire tx_fifo_underflow;

  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  icyradio_axi_rf_timestamping_0_0_axi_rf_timestamping inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .rx_data_ready(rx_data_ready),
        .rx_dma_xfer_req(rx_dma_xfer_req),
        .rx_enable_reg_0(rx_enable),
        .rx_fifo_overflow(rx_fifo_overflow),
        .s_axi_araddr(s_axi_araddr[5:2]),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[5:2]),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid_reg_0(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .tx_data_ready(tx_data_ready),
        .tx_dma_data_ready(tx_dma_data_ready),
        .tx_enable(tx_enable),
        .tx_fifo_underflow(tx_fifo_underflow));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
