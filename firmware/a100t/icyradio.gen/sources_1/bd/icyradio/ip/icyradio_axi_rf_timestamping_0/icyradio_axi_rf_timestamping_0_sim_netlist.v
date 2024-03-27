// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Wed Mar 27 12:09:38 2024
// Host        : node4-dev running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/joao/icyradio/firmware/a100t/icyradio.gen/sources_1/bd/icyradio/ip/icyradio_axi_rf_timestamping_0/icyradio_axi_rf_timestamping_0_sim_netlist.v
// Design      : icyradio_axi_rf_timestamping_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "icyradio_axi_rf_timestamping_0,axi_rf_timestamping,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "axi_rf_timestamping,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module icyradio_axi_rf_timestamping_0
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
    irq,
    ts_clk,
    ts_resetn,
    ts_clk_tx_en,
    ts_clk_rx_en,
    tx_dma_data_ready,
    rx_dma_xfer_req,
    tx_data_ready,
    rx_data_ready,
    tx_fifo_underflow,
    rx_fifo_overflow,
    tx_enable,
    rx_enable);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET aresetn, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN icyradio_axi_pcie_0_0_axi_aclk_out, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *) input [6:0]s_axi_awaddr;
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *) input [6:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARPROT" *) input [2:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 125000000, ID_WIDTH 0, ADDR_WIDTH 7, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN icyradio_axi_pcie_0_0_axi_aclk_out, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 irq INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME irq, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output irq;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ts_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ts_clk, ASSOCIATED_RESET ts_resetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN icyradio_axi_ad9361_0_l_clk, INSERT_VIP 0" *) input ts_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ts_resetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ts_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ts_resetn;
  output ts_clk_tx_en;
  output ts_clk_rx_en;
  (* X_INTERFACE_IGNORE = "true" *) input [1:0]tx_dma_data_ready;
  (* X_INTERFACE_IGNORE = "true" *) input [1:0]rx_dma_xfer_req;
  (* X_INTERFACE_IGNORE = "true" *) input [1:0]tx_data_ready;
  (* X_INTERFACE_IGNORE = "true" *) input [1:0]rx_data_ready;
  (* X_INTERFACE_IGNORE = "true" *) input [1:0]tx_fifo_underflow;
  (* X_INTERFACE_IGNORE = "true" *) input [1:0]rx_fifo_overflow;
  output [1:0]tx_enable;
  output [1:0]rx_enable;

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire irq;
  wire [1:0]rx_data_ready;
  wire [1:0]rx_dma_xfer_req;
  wire [1:0]rx_enable;
  wire [1:0]rx_fifo_overflow;
  wire [6:0]s_axi_araddr;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [6:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire ts_clk;
  wire ts_clk_rx_en;
  wire ts_clk_tx_en;
  wire ts_resetn;
  wire [1:0]tx_data_ready;
  wire [1:0]tx_dma_data_ready;
  wire [1:0]tx_enable;
  wire [1:0]tx_fifo_underflow;

  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_wready = s_axi_awready;
  GND GND
       (.G(\<const0> ));
  icyradio_axi_rf_timestamping_0_axi_rf_timestamping inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .irq(irq),
        .\rx_enable_reg[0]_0 (rx_enable[0]),
        .\rx_enable_reg[1]_0 (rx_enable[1]),
        .s_axi_araddr(s_axi_araddr[6:2]),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[6:2]),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid_reg_0(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .src_in({tx_dma_data_ready,rx_dma_xfer_req,tx_data_ready,rx_data_ready,tx_fifo_underflow,rx_fifo_overflow,ts_resetn}),
        .ts_clk(ts_clk),
        .ts_clk_rx_en_reg_0(ts_clk_rx_en),
        .ts_clk_tx_en_reg_0(ts_clk_tx_en),
        .tx_enable(tx_enable));
endmodule

(* ORIG_REF_NAME = "axi_rf_timestamping" *) 
module icyradio_axi_rf_timestamping_0_axi_rf_timestamping
   (s_axi_rvalid_reg_0,
    s_axi_awready,
    \rx_enable_reg[1]_0 ,
    ts_clk_rx_en_reg_0,
    \rx_enable_reg[0]_0 ,
    tx_enable,
    s_axi_rdata,
    ts_clk_tx_en_reg_0,
    s_axi_arready,
    s_axi_bvalid,
    irq,
    s_axi_arvalid,
    s_axi_rready,
    aresetn,
    s_axi_awaddr,
    s_axi_wstrb,
    s_axi_araddr,
    aclk,
    ts_clk,
    src_in,
    s_axi_wdata,
    s_axi_bready,
    s_axi_wvalid,
    s_axi_awvalid);
  output s_axi_rvalid_reg_0;
  output s_axi_awready;
  output \rx_enable_reg[1]_0 ;
  output ts_clk_rx_en_reg_0;
  output \rx_enable_reg[0]_0 ;
  output [1:0]tx_enable;
  output [31:0]s_axi_rdata;
  output ts_clk_tx_en_reg_0;
  output s_axi_arready;
  output s_axi_bvalid;
  output irq;
  input s_axi_arvalid;
  input s_axi_rready;
  input aresetn;
  input [4:0]s_axi_awaddr;
  input [3:0]s_axi_wstrb;
  input [4:0]s_axi_araddr;
  input aclk;
  input ts_clk;
  input [12:0]src_in;
  input [31:0]s_axi_wdata;
  input s_axi_bready;
  input s_axi_wvalid;
  input s_axi_awvalid;

  wire aclk;
  wire aresetn;
  wire clear;
  wire \cnt[0]_i_1_n_0 ;
  wire \cnt[0]_i_3_n_0 ;
  wire \cnt[0]_i_4_n_0 ;
  wire \cnt[0]_i_5_n_0 ;
  wire \cnt[0]_i_6_n_0 ;
  wire \cnt[12]_i_2_n_0 ;
  wire \cnt[12]_i_3_n_0 ;
  wire \cnt[12]_i_4_n_0 ;
  wire \cnt[12]_i_5_n_0 ;
  wire \cnt[16]_i_2_n_0 ;
  wire \cnt[16]_i_3_n_0 ;
  wire \cnt[16]_i_4_n_0 ;
  wire \cnt[16]_i_5_n_0 ;
  wire \cnt[20]_i_2_n_0 ;
  wire \cnt[20]_i_3_n_0 ;
  wire \cnt[20]_i_4_n_0 ;
  wire \cnt[20]_i_5_n_0 ;
  wire \cnt[24]_i_2_n_0 ;
  wire \cnt[24]_i_3_n_0 ;
  wire \cnt[24]_i_4_n_0 ;
  wire \cnt[24]_i_5_n_0 ;
  wire \cnt[28]_i_2_n_0 ;
  wire \cnt[28]_i_3_n_0 ;
  wire \cnt[28]_i_4_n_0 ;
  wire \cnt[28]_i_5_n_0 ;
  wire \cnt[32]_i_2_n_0 ;
  wire \cnt[32]_i_3_n_0 ;
  wire \cnt[32]_i_4_n_0 ;
  wire \cnt[32]_i_5_n_0 ;
  wire \cnt[36]_i_2_n_0 ;
  wire \cnt[36]_i_3_n_0 ;
  wire \cnt[36]_i_4_n_0 ;
  wire \cnt[36]_i_5_n_0 ;
  wire \cnt[40]_i_2_n_0 ;
  wire \cnt[40]_i_3_n_0 ;
  wire \cnt[40]_i_4_n_0 ;
  wire \cnt[40]_i_5_n_0 ;
  wire \cnt[44]_i_2_n_0 ;
  wire \cnt[44]_i_3_n_0 ;
  wire \cnt[44]_i_4_n_0 ;
  wire \cnt[44]_i_5_n_0 ;
  wire \cnt[48]_i_2_n_0 ;
  wire \cnt[48]_i_3_n_0 ;
  wire \cnt[48]_i_4_n_0 ;
  wire \cnt[48]_i_5_n_0 ;
  wire \cnt[4]_i_2_n_0 ;
  wire \cnt[4]_i_3_n_0 ;
  wire \cnt[4]_i_4_n_0 ;
  wire \cnt[4]_i_5_n_0 ;
  wire \cnt[52]_i_2_n_0 ;
  wire \cnt[52]_i_3_n_0 ;
  wire \cnt[52]_i_4_n_0 ;
  wire \cnt[52]_i_5_n_0 ;
  wire \cnt[56]_i_2_n_0 ;
  wire \cnt[56]_i_3_n_0 ;
  wire \cnt[56]_i_4_n_0 ;
  wire \cnt[56]_i_5_n_0 ;
  wire \cnt[60]_i_2_n_0 ;
  wire \cnt[60]_i_3_n_0 ;
  wire \cnt[60]_i_4_n_0 ;
  wire \cnt[60]_i_5_n_0 ;
  wire \cnt[8]_i_2_n_0 ;
  wire \cnt[8]_i_3_n_0 ;
  wire \cnt[8]_i_4_n_0 ;
  wire \cnt[8]_i_5_n_0 ;
  wire cnt_a_rd_buf;
  wire \cnt_a_rd_buf[31]_i_2_n_0 ;
  wire \cnt_a_rd_buf_reg_n_0_[0] ;
  wire \cnt_a_rd_buf_reg_n_0_[10] ;
  wire \cnt_a_rd_buf_reg_n_0_[11] ;
  wire \cnt_a_rd_buf_reg_n_0_[12] ;
  wire \cnt_a_rd_buf_reg_n_0_[13] ;
  wire \cnt_a_rd_buf_reg_n_0_[14] ;
  wire \cnt_a_rd_buf_reg_n_0_[15] ;
  wire \cnt_a_rd_buf_reg_n_0_[16] ;
  wire \cnt_a_rd_buf_reg_n_0_[17] ;
  wire \cnt_a_rd_buf_reg_n_0_[18] ;
  wire \cnt_a_rd_buf_reg_n_0_[19] ;
  wire \cnt_a_rd_buf_reg_n_0_[1] ;
  wire \cnt_a_rd_buf_reg_n_0_[20] ;
  wire \cnt_a_rd_buf_reg_n_0_[21] ;
  wire \cnt_a_rd_buf_reg_n_0_[22] ;
  wire \cnt_a_rd_buf_reg_n_0_[23] ;
  wire \cnt_a_rd_buf_reg_n_0_[24] ;
  wire \cnt_a_rd_buf_reg_n_0_[25] ;
  wire \cnt_a_rd_buf_reg_n_0_[26] ;
  wire \cnt_a_rd_buf_reg_n_0_[27] ;
  wire \cnt_a_rd_buf_reg_n_0_[28] ;
  wire \cnt_a_rd_buf_reg_n_0_[29] ;
  wire \cnt_a_rd_buf_reg_n_0_[2] ;
  wire \cnt_a_rd_buf_reg_n_0_[30] ;
  wire \cnt_a_rd_buf_reg_n_0_[31] ;
  wire \cnt_a_rd_buf_reg_n_0_[3] ;
  wire \cnt_a_rd_buf_reg_n_0_[4] ;
  wire \cnt_a_rd_buf_reg_n_0_[5] ;
  wire \cnt_a_rd_buf_reg_n_0_[6] ;
  wire \cnt_a_rd_buf_reg_n_0_[7] ;
  wire \cnt_a_rd_buf_reg_n_0_[8] ;
  wire \cnt_a_rd_buf_reg_n_0_[9] ;
  wire \cnt_a_reg_n_0_[0] ;
  wire \cnt_a_reg_n_0_[10] ;
  wire \cnt_a_reg_n_0_[11] ;
  wire \cnt_a_reg_n_0_[12] ;
  wire \cnt_a_reg_n_0_[13] ;
  wire \cnt_a_reg_n_0_[14] ;
  wire \cnt_a_reg_n_0_[15] ;
  wire \cnt_a_reg_n_0_[16] ;
  wire \cnt_a_reg_n_0_[17] ;
  wire \cnt_a_reg_n_0_[18] ;
  wire \cnt_a_reg_n_0_[19] ;
  wire \cnt_a_reg_n_0_[1] ;
  wire \cnt_a_reg_n_0_[20] ;
  wire \cnt_a_reg_n_0_[21] ;
  wire \cnt_a_reg_n_0_[22] ;
  wire \cnt_a_reg_n_0_[23] ;
  wire \cnt_a_reg_n_0_[24] ;
  wire \cnt_a_reg_n_0_[25] ;
  wire \cnt_a_reg_n_0_[26] ;
  wire \cnt_a_reg_n_0_[27] ;
  wire \cnt_a_reg_n_0_[28] ;
  wire \cnt_a_reg_n_0_[29] ;
  wire \cnt_a_reg_n_0_[2] ;
  wire \cnt_a_reg_n_0_[30] ;
  wire \cnt_a_reg_n_0_[31] ;
  wire \cnt_a_reg_n_0_[3] ;
  wire \cnt_a_reg_n_0_[4] ;
  wire \cnt_a_reg_n_0_[5] ;
  wire \cnt_a_reg_n_0_[6] ;
  wire \cnt_a_reg_n_0_[7] ;
  wire \cnt_a_reg_n_0_[8] ;
  wire \cnt_a_reg_n_0_[9] ;
  wire cnt_en;
  wire cnt_en_a_i_1_n_0;
  wire cnt_en_a_i_2_n_0;
  wire cnt_en_a_i_3_n_0;
  wire \cnt_latch_arm_req_a[0]_i_1_n_0 ;
  wire \cnt_latch_arm_req_a[0]_i_2_n_0 ;
  wire \cnt_latch_arm_req_a[1]_i_1_n_0 ;
  wire \cnt_latch_arm_req_a[1]_i_2_n_0 ;
  wire \cnt_latch_arm_req_a_reg_n_0_[0] ;
  wire \cnt_latch_arm_req_a_reg_n_0_[1] ;
  wire \cnt_latch_arm_req_reg_n_0_[0] ;
  wire \cnt_latch_armed[0]_i_1_n_0 ;
  wire \cnt_latch_armed[0]_i_2_n_0 ;
  wire \cnt_latch_armed[1]_i_1_n_0 ;
  wire \cnt_latch_armed[1]_i_2_n_0 ;
  wire [1:0]cnt_latch_armed_a;
  wire \cnt_latch_armed_reg_n_0_[0] ;
  wire \cnt_latch_valid[0]_i_1_n_0 ;
  wire \cnt_latch_valid[0]_i_2_n_0 ;
  wire \cnt_latch_valid[1]_i_1_n_0 ;
  wire \cnt_latch_valid[1]_i_2_n_0 ;
  wire [1:0]cnt_latch_valid_rd;
  wire \cnt_latch_valid_rd_a[0]_i_1_n_0 ;
  wire \cnt_latch_valid_rd_a[1]_i_1_n_0 ;
  wire \cnt_latch_valid_rd_a_reg_n_0_[0] ;
  wire \cnt_latch_valid_rd_a_reg_n_0_[1] ;
  wire \cnt_latch_valid_reg_n_0_[0] ;
  wire cnt_latched0;
  wire [63:0]cnt_latched0_a;
  wire cnt_latched0_a_rd_buf;
  wire \cnt_latched0_a_rd_buf[31]_i_2_n_0 ;
  wire \cnt_latched0_a_rd_buf_reg_n_0_[0] ;
  wire \cnt_latched0_a_rd_buf_reg_n_0_[10] ;
  wire \cnt_latched0_a_rd_buf_reg_n_0_[11] ;
  wire \cnt_latched0_a_rd_buf_reg_n_0_[12] ;
  wire \cnt_latched0_a_rd_buf_reg_n_0_[13] ;
  wire \cnt_latched0_a_rd_buf_reg_n_0_[14] ;
  wire \cnt_latched0_a_rd_buf_reg_n_0_[15] ;
  wire \cnt_latched0_a_rd_buf_reg_n_0_[16] ;
  wire \cnt_latched0_a_rd_buf_reg_n_0_[17] ;
  wire \cnt_latched0_a_rd_buf_reg_n_0_[18] ;
  wire \cnt_latched0_a_rd_buf_reg_n_0_[19] ;
  wire \cnt_latched0_a_rd_buf_reg_n_0_[1] ;
  wire \cnt_latched0_a_rd_buf_reg_n_0_[20] ;
  wire \cnt_latched0_a_rd_buf_reg_n_0_[21] ;
  wire \cnt_latched0_a_rd_buf_reg_n_0_[22] ;
  wire \cnt_latched0_a_rd_buf_reg_n_0_[23] ;
  wire \cnt_latched0_a_rd_buf_reg_n_0_[24] ;
  wire \cnt_latched0_a_rd_buf_reg_n_0_[25] ;
  wire \cnt_latched0_a_rd_buf_reg_n_0_[26] ;
  wire \cnt_latched0_a_rd_buf_reg_n_0_[27] ;
  wire \cnt_latched0_a_rd_buf_reg_n_0_[28] ;
  wire \cnt_latched0_a_rd_buf_reg_n_0_[29] ;
  wire \cnt_latched0_a_rd_buf_reg_n_0_[2] ;
  wire \cnt_latched0_a_rd_buf_reg_n_0_[30] ;
  wire \cnt_latched0_a_rd_buf_reg_n_0_[31] ;
  wire \cnt_latched0_a_rd_buf_reg_n_0_[3] ;
  wire \cnt_latched0_a_rd_buf_reg_n_0_[4] ;
  wire \cnt_latched0_a_rd_buf_reg_n_0_[5] ;
  wire \cnt_latched0_a_rd_buf_reg_n_0_[6] ;
  wire \cnt_latched0_a_rd_buf_reg_n_0_[7] ;
  wire \cnt_latched0_a_rd_buf_reg_n_0_[8] ;
  wire \cnt_latched0_a_rd_buf_reg_n_0_[9] ;
  wire \cnt_latched0_reg_n_0_[0] ;
  wire \cnt_latched0_reg_n_0_[10] ;
  wire \cnt_latched0_reg_n_0_[11] ;
  wire \cnt_latched0_reg_n_0_[12] ;
  wire \cnt_latched0_reg_n_0_[13] ;
  wire \cnt_latched0_reg_n_0_[14] ;
  wire \cnt_latched0_reg_n_0_[15] ;
  wire \cnt_latched0_reg_n_0_[16] ;
  wire \cnt_latched0_reg_n_0_[17] ;
  wire \cnt_latched0_reg_n_0_[18] ;
  wire \cnt_latched0_reg_n_0_[19] ;
  wire \cnt_latched0_reg_n_0_[1] ;
  wire \cnt_latched0_reg_n_0_[20] ;
  wire \cnt_latched0_reg_n_0_[21] ;
  wire \cnt_latched0_reg_n_0_[22] ;
  wire \cnt_latched0_reg_n_0_[23] ;
  wire \cnt_latched0_reg_n_0_[24] ;
  wire \cnt_latched0_reg_n_0_[25] ;
  wire \cnt_latched0_reg_n_0_[26] ;
  wire \cnt_latched0_reg_n_0_[27] ;
  wire \cnt_latched0_reg_n_0_[28] ;
  wire \cnt_latched0_reg_n_0_[29] ;
  wire \cnt_latched0_reg_n_0_[2] ;
  wire \cnt_latched0_reg_n_0_[30] ;
  wire \cnt_latched0_reg_n_0_[31] ;
  wire \cnt_latched0_reg_n_0_[32] ;
  wire \cnt_latched0_reg_n_0_[33] ;
  wire \cnt_latched0_reg_n_0_[34] ;
  wire \cnt_latched0_reg_n_0_[35] ;
  wire \cnt_latched0_reg_n_0_[36] ;
  wire \cnt_latched0_reg_n_0_[37] ;
  wire \cnt_latched0_reg_n_0_[38] ;
  wire \cnt_latched0_reg_n_0_[39] ;
  wire \cnt_latched0_reg_n_0_[3] ;
  wire \cnt_latched0_reg_n_0_[40] ;
  wire \cnt_latched0_reg_n_0_[41] ;
  wire \cnt_latched0_reg_n_0_[42] ;
  wire \cnt_latched0_reg_n_0_[43] ;
  wire \cnt_latched0_reg_n_0_[44] ;
  wire \cnt_latched0_reg_n_0_[45] ;
  wire \cnt_latched0_reg_n_0_[46] ;
  wire \cnt_latched0_reg_n_0_[47] ;
  wire \cnt_latched0_reg_n_0_[48] ;
  wire \cnt_latched0_reg_n_0_[49] ;
  wire \cnt_latched0_reg_n_0_[4] ;
  wire \cnt_latched0_reg_n_0_[50] ;
  wire \cnt_latched0_reg_n_0_[51] ;
  wire \cnt_latched0_reg_n_0_[52] ;
  wire \cnt_latched0_reg_n_0_[53] ;
  wire \cnt_latched0_reg_n_0_[54] ;
  wire \cnt_latched0_reg_n_0_[55] ;
  wire \cnt_latched0_reg_n_0_[56] ;
  wire \cnt_latched0_reg_n_0_[57] ;
  wire \cnt_latched0_reg_n_0_[58] ;
  wire \cnt_latched0_reg_n_0_[59] ;
  wire \cnt_latched0_reg_n_0_[5] ;
  wire \cnt_latched0_reg_n_0_[60] ;
  wire \cnt_latched0_reg_n_0_[61] ;
  wire \cnt_latched0_reg_n_0_[62] ;
  wire \cnt_latched0_reg_n_0_[63] ;
  wire \cnt_latched0_reg_n_0_[6] ;
  wire \cnt_latched0_reg_n_0_[7] ;
  wire \cnt_latched0_reg_n_0_[8] ;
  wire \cnt_latched0_reg_n_0_[9] ;
  wire cnt_latched1;
  wire [63:0]cnt_latched1_a;
  wire cnt_latched1_a_rd_buf;
  wire \cnt_latched1_a_rd_buf[31]_i_2_n_0 ;
  wire \cnt_latched1_a_rd_buf_reg_n_0_[0] ;
  wire \cnt_latched1_a_rd_buf_reg_n_0_[10] ;
  wire \cnt_latched1_a_rd_buf_reg_n_0_[11] ;
  wire \cnt_latched1_a_rd_buf_reg_n_0_[12] ;
  wire \cnt_latched1_a_rd_buf_reg_n_0_[13] ;
  wire \cnt_latched1_a_rd_buf_reg_n_0_[14] ;
  wire \cnt_latched1_a_rd_buf_reg_n_0_[15] ;
  wire \cnt_latched1_a_rd_buf_reg_n_0_[16] ;
  wire \cnt_latched1_a_rd_buf_reg_n_0_[17] ;
  wire \cnt_latched1_a_rd_buf_reg_n_0_[18] ;
  wire \cnt_latched1_a_rd_buf_reg_n_0_[19] ;
  wire \cnt_latched1_a_rd_buf_reg_n_0_[1] ;
  wire \cnt_latched1_a_rd_buf_reg_n_0_[20] ;
  wire \cnt_latched1_a_rd_buf_reg_n_0_[21] ;
  wire \cnt_latched1_a_rd_buf_reg_n_0_[22] ;
  wire \cnt_latched1_a_rd_buf_reg_n_0_[23] ;
  wire \cnt_latched1_a_rd_buf_reg_n_0_[24] ;
  wire \cnt_latched1_a_rd_buf_reg_n_0_[25] ;
  wire \cnt_latched1_a_rd_buf_reg_n_0_[26] ;
  wire \cnt_latched1_a_rd_buf_reg_n_0_[27] ;
  wire \cnt_latched1_a_rd_buf_reg_n_0_[28] ;
  wire \cnt_latched1_a_rd_buf_reg_n_0_[29] ;
  wire \cnt_latched1_a_rd_buf_reg_n_0_[2] ;
  wire \cnt_latched1_a_rd_buf_reg_n_0_[30] ;
  wire \cnt_latched1_a_rd_buf_reg_n_0_[31] ;
  wire \cnt_latched1_a_rd_buf_reg_n_0_[3] ;
  wire \cnt_latched1_a_rd_buf_reg_n_0_[4] ;
  wire \cnt_latched1_a_rd_buf_reg_n_0_[5] ;
  wire \cnt_latched1_a_rd_buf_reg_n_0_[6] ;
  wire \cnt_latched1_a_rd_buf_reg_n_0_[7] ;
  wire \cnt_latched1_a_rd_buf_reg_n_0_[8] ;
  wire \cnt_latched1_a_rd_buf_reg_n_0_[9] ;
  wire \cnt_latched1_reg_n_0_[0] ;
  wire \cnt_latched1_reg_n_0_[10] ;
  wire \cnt_latched1_reg_n_0_[11] ;
  wire \cnt_latched1_reg_n_0_[12] ;
  wire \cnt_latched1_reg_n_0_[13] ;
  wire \cnt_latched1_reg_n_0_[14] ;
  wire \cnt_latched1_reg_n_0_[15] ;
  wire \cnt_latched1_reg_n_0_[16] ;
  wire \cnt_latched1_reg_n_0_[17] ;
  wire \cnt_latched1_reg_n_0_[18] ;
  wire \cnt_latched1_reg_n_0_[19] ;
  wire \cnt_latched1_reg_n_0_[1] ;
  wire \cnt_latched1_reg_n_0_[20] ;
  wire \cnt_latched1_reg_n_0_[21] ;
  wire \cnt_latched1_reg_n_0_[22] ;
  wire \cnt_latched1_reg_n_0_[23] ;
  wire \cnt_latched1_reg_n_0_[24] ;
  wire \cnt_latched1_reg_n_0_[25] ;
  wire \cnt_latched1_reg_n_0_[26] ;
  wire \cnt_latched1_reg_n_0_[27] ;
  wire \cnt_latched1_reg_n_0_[28] ;
  wire \cnt_latched1_reg_n_0_[29] ;
  wire \cnt_latched1_reg_n_0_[2] ;
  wire \cnt_latched1_reg_n_0_[30] ;
  wire \cnt_latched1_reg_n_0_[31] ;
  wire \cnt_latched1_reg_n_0_[32] ;
  wire \cnt_latched1_reg_n_0_[33] ;
  wire \cnt_latched1_reg_n_0_[34] ;
  wire \cnt_latched1_reg_n_0_[35] ;
  wire \cnt_latched1_reg_n_0_[36] ;
  wire \cnt_latched1_reg_n_0_[37] ;
  wire \cnt_latched1_reg_n_0_[38] ;
  wire \cnt_latched1_reg_n_0_[39] ;
  wire \cnt_latched1_reg_n_0_[3] ;
  wire \cnt_latched1_reg_n_0_[40] ;
  wire \cnt_latched1_reg_n_0_[41] ;
  wire \cnt_latched1_reg_n_0_[42] ;
  wire \cnt_latched1_reg_n_0_[43] ;
  wire \cnt_latched1_reg_n_0_[44] ;
  wire \cnt_latched1_reg_n_0_[45] ;
  wire \cnt_latched1_reg_n_0_[46] ;
  wire \cnt_latched1_reg_n_0_[47] ;
  wire \cnt_latched1_reg_n_0_[48] ;
  wire \cnt_latched1_reg_n_0_[49] ;
  wire \cnt_latched1_reg_n_0_[4] ;
  wire \cnt_latched1_reg_n_0_[50] ;
  wire \cnt_latched1_reg_n_0_[51] ;
  wire \cnt_latched1_reg_n_0_[52] ;
  wire \cnt_latched1_reg_n_0_[53] ;
  wire \cnt_latched1_reg_n_0_[54] ;
  wire \cnt_latched1_reg_n_0_[55] ;
  wire \cnt_latched1_reg_n_0_[56] ;
  wire \cnt_latched1_reg_n_0_[57] ;
  wire \cnt_latched1_reg_n_0_[58] ;
  wire \cnt_latched1_reg_n_0_[59] ;
  wire \cnt_latched1_reg_n_0_[5] ;
  wire \cnt_latched1_reg_n_0_[60] ;
  wire \cnt_latched1_reg_n_0_[61] ;
  wire \cnt_latched1_reg_n_0_[62] ;
  wire \cnt_latched1_reg_n_0_[63] ;
  wire \cnt_latched1_reg_n_0_[6] ;
  wire \cnt_latched1_reg_n_0_[7] ;
  wire \cnt_latched1_reg_n_0_[8] ;
  wire \cnt_latched1_reg_n_0_[9] ;
  wire [63:0]cnt_reg;
  wire \cnt_reg[0]_i_2_n_0 ;
  wire \cnt_reg[0]_i_2_n_1 ;
  wire \cnt_reg[0]_i_2_n_2 ;
  wire \cnt_reg[0]_i_2_n_3 ;
  wire \cnt_reg[0]_i_2_n_4 ;
  wire \cnt_reg[0]_i_2_n_5 ;
  wire \cnt_reg[0]_i_2_n_6 ;
  wire \cnt_reg[0]_i_2_n_7 ;
  wire \cnt_reg[12]_i_1_n_0 ;
  wire \cnt_reg[12]_i_1_n_1 ;
  wire \cnt_reg[12]_i_1_n_2 ;
  wire \cnt_reg[12]_i_1_n_3 ;
  wire \cnt_reg[12]_i_1_n_4 ;
  wire \cnt_reg[12]_i_1_n_5 ;
  wire \cnt_reg[12]_i_1_n_6 ;
  wire \cnt_reg[12]_i_1_n_7 ;
  wire \cnt_reg[16]_i_1_n_0 ;
  wire \cnt_reg[16]_i_1_n_1 ;
  wire \cnt_reg[16]_i_1_n_2 ;
  wire \cnt_reg[16]_i_1_n_3 ;
  wire \cnt_reg[16]_i_1_n_4 ;
  wire \cnt_reg[16]_i_1_n_5 ;
  wire \cnt_reg[16]_i_1_n_6 ;
  wire \cnt_reg[16]_i_1_n_7 ;
  wire \cnt_reg[20]_i_1_n_0 ;
  wire \cnt_reg[20]_i_1_n_1 ;
  wire \cnt_reg[20]_i_1_n_2 ;
  wire \cnt_reg[20]_i_1_n_3 ;
  wire \cnt_reg[20]_i_1_n_4 ;
  wire \cnt_reg[20]_i_1_n_5 ;
  wire \cnt_reg[20]_i_1_n_6 ;
  wire \cnt_reg[20]_i_1_n_7 ;
  wire \cnt_reg[24]_i_1_n_0 ;
  wire \cnt_reg[24]_i_1_n_1 ;
  wire \cnt_reg[24]_i_1_n_2 ;
  wire \cnt_reg[24]_i_1_n_3 ;
  wire \cnt_reg[24]_i_1_n_4 ;
  wire \cnt_reg[24]_i_1_n_5 ;
  wire \cnt_reg[24]_i_1_n_6 ;
  wire \cnt_reg[24]_i_1_n_7 ;
  wire \cnt_reg[28]_i_1_n_0 ;
  wire \cnt_reg[28]_i_1_n_1 ;
  wire \cnt_reg[28]_i_1_n_2 ;
  wire \cnt_reg[28]_i_1_n_3 ;
  wire \cnt_reg[28]_i_1_n_4 ;
  wire \cnt_reg[28]_i_1_n_5 ;
  wire \cnt_reg[28]_i_1_n_6 ;
  wire \cnt_reg[28]_i_1_n_7 ;
  wire \cnt_reg[32]_i_1_n_0 ;
  wire \cnt_reg[32]_i_1_n_1 ;
  wire \cnt_reg[32]_i_1_n_2 ;
  wire \cnt_reg[32]_i_1_n_3 ;
  wire \cnt_reg[32]_i_1_n_4 ;
  wire \cnt_reg[32]_i_1_n_5 ;
  wire \cnt_reg[32]_i_1_n_6 ;
  wire \cnt_reg[32]_i_1_n_7 ;
  wire \cnt_reg[36]_i_1_n_0 ;
  wire \cnt_reg[36]_i_1_n_1 ;
  wire \cnt_reg[36]_i_1_n_2 ;
  wire \cnt_reg[36]_i_1_n_3 ;
  wire \cnt_reg[36]_i_1_n_4 ;
  wire \cnt_reg[36]_i_1_n_5 ;
  wire \cnt_reg[36]_i_1_n_6 ;
  wire \cnt_reg[36]_i_1_n_7 ;
  wire \cnt_reg[40]_i_1_n_0 ;
  wire \cnt_reg[40]_i_1_n_1 ;
  wire \cnt_reg[40]_i_1_n_2 ;
  wire \cnt_reg[40]_i_1_n_3 ;
  wire \cnt_reg[40]_i_1_n_4 ;
  wire \cnt_reg[40]_i_1_n_5 ;
  wire \cnt_reg[40]_i_1_n_6 ;
  wire \cnt_reg[40]_i_1_n_7 ;
  wire \cnt_reg[44]_i_1_n_0 ;
  wire \cnt_reg[44]_i_1_n_1 ;
  wire \cnt_reg[44]_i_1_n_2 ;
  wire \cnt_reg[44]_i_1_n_3 ;
  wire \cnt_reg[44]_i_1_n_4 ;
  wire \cnt_reg[44]_i_1_n_5 ;
  wire \cnt_reg[44]_i_1_n_6 ;
  wire \cnt_reg[44]_i_1_n_7 ;
  wire \cnt_reg[48]_i_1_n_0 ;
  wire \cnt_reg[48]_i_1_n_1 ;
  wire \cnt_reg[48]_i_1_n_2 ;
  wire \cnt_reg[48]_i_1_n_3 ;
  wire \cnt_reg[48]_i_1_n_4 ;
  wire \cnt_reg[48]_i_1_n_5 ;
  wire \cnt_reg[48]_i_1_n_6 ;
  wire \cnt_reg[48]_i_1_n_7 ;
  wire \cnt_reg[4]_i_1_n_0 ;
  wire \cnt_reg[4]_i_1_n_1 ;
  wire \cnt_reg[4]_i_1_n_2 ;
  wire \cnt_reg[4]_i_1_n_3 ;
  wire \cnt_reg[4]_i_1_n_4 ;
  wire \cnt_reg[4]_i_1_n_5 ;
  wire \cnt_reg[4]_i_1_n_6 ;
  wire \cnt_reg[4]_i_1_n_7 ;
  wire \cnt_reg[52]_i_1_n_0 ;
  wire \cnt_reg[52]_i_1_n_1 ;
  wire \cnt_reg[52]_i_1_n_2 ;
  wire \cnt_reg[52]_i_1_n_3 ;
  wire \cnt_reg[52]_i_1_n_4 ;
  wire \cnt_reg[52]_i_1_n_5 ;
  wire \cnt_reg[52]_i_1_n_6 ;
  wire \cnt_reg[52]_i_1_n_7 ;
  wire \cnt_reg[56]_i_1_n_0 ;
  wire \cnt_reg[56]_i_1_n_1 ;
  wire \cnt_reg[56]_i_1_n_2 ;
  wire \cnt_reg[56]_i_1_n_3 ;
  wire \cnt_reg[56]_i_1_n_4 ;
  wire \cnt_reg[56]_i_1_n_5 ;
  wire \cnt_reg[56]_i_1_n_6 ;
  wire \cnt_reg[56]_i_1_n_7 ;
  wire \cnt_reg[60]_i_1_n_1 ;
  wire \cnt_reg[60]_i_1_n_2 ;
  wire \cnt_reg[60]_i_1_n_3 ;
  wire \cnt_reg[60]_i_1_n_4 ;
  wire \cnt_reg[60]_i_1_n_5 ;
  wire \cnt_reg[60]_i_1_n_6 ;
  wire \cnt_reg[60]_i_1_n_7 ;
  wire \cnt_reg[8]_i_1_n_0 ;
  wire \cnt_reg[8]_i_1_n_1 ;
  wire \cnt_reg[8]_i_1_n_2 ;
  wire \cnt_reg[8]_i_1_n_3 ;
  wire \cnt_reg[8]_i_1_n_4 ;
  wire \cnt_reg[8]_i_1_n_5 ;
  wire \cnt_reg[8]_i_1_n_6 ;
  wire \cnt_reg[8]_i_1_n_7 ;
  wire [63:0]cnt_rx0;
  wire \cnt_rx0_a[15]_i_1_n_0 ;
  wire \cnt_rx0_a[23]_i_1_n_0 ;
  wire \cnt_rx0_a[31]_i_1_n_0 ;
  wire \cnt_rx0_a[39]_i_1_n_0 ;
  wire \cnt_rx0_a[47]_i_1_n_0 ;
  wire \cnt_rx0_a[55]_i_1_n_0 ;
  wire \cnt_rx0_a[63]_i_1_n_0 ;
  wire \cnt_rx0_a[63]_i_2_n_0 ;
  wire \cnt_rx0_a[63]_i_3_n_0 ;
  wire \cnt_rx0_a[7]_i_1_n_0 ;
  wire \cnt_rx0_a_reg_n_0_[0] ;
  wire \cnt_rx0_a_reg_n_0_[10] ;
  wire \cnt_rx0_a_reg_n_0_[11] ;
  wire \cnt_rx0_a_reg_n_0_[12] ;
  wire \cnt_rx0_a_reg_n_0_[13] ;
  wire \cnt_rx0_a_reg_n_0_[14] ;
  wire \cnt_rx0_a_reg_n_0_[15] ;
  wire \cnt_rx0_a_reg_n_0_[16] ;
  wire \cnt_rx0_a_reg_n_0_[17] ;
  wire \cnt_rx0_a_reg_n_0_[18] ;
  wire \cnt_rx0_a_reg_n_0_[19] ;
  wire \cnt_rx0_a_reg_n_0_[1] ;
  wire \cnt_rx0_a_reg_n_0_[20] ;
  wire \cnt_rx0_a_reg_n_0_[21] ;
  wire \cnt_rx0_a_reg_n_0_[22] ;
  wire \cnt_rx0_a_reg_n_0_[23] ;
  wire \cnt_rx0_a_reg_n_0_[24] ;
  wire \cnt_rx0_a_reg_n_0_[25] ;
  wire \cnt_rx0_a_reg_n_0_[26] ;
  wire \cnt_rx0_a_reg_n_0_[27] ;
  wire \cnt_rx0_a_reg_n_0_[28] ;
  wire \cnt_rx0_a_reg_n_0_[29] ;
  wire \cnt_rx0_a_reg_n_0_[2] ;
  wire \cnt_rx0_a_reg_n_0_[30] ;
  wire \cnt_rx0_a_reg_n_0_[31] ;
  wire \cnt_rx0_a_reg_n_0_[3] ;
  wire \cnt_rx0_a_reg_n_0_[4] ;
  wire \cnt_rx0_a_reg_n_0_[5] ;
  wire \cnt_rx0_a_reg_n_0_[6] ;
  wire \cnt_rx0_a_reg_n_0_[7] ;
  wire \cnt_rx0_a_reg_n_0_[8] ;
  wire \cnt_rx0_a_reg_n_0_[9] ;
  wire [63:0]cnt_rx1;
  wire \cnt_rx1_a[15]_i_1_n_0 ;
  wire \cnt_rx1_a[23]_i_1_n_0 ;
  wire \cnt_rx1_a[31]_i_1_n_0 ;
  wire \cnt_rx1_a[39]_i_1_n_0 ;
  wire \cnt_rx1_a[47]_i_1_n_0 ;
  wire \cnt_rx1_a[55]_i_1_n_0 ;
  wire \cnt_rx1_a[63]_i_1_n_0 ;
  wire \cnt_rx1_a[63]_i_2_n_0 ;
  wire \cnt_rx1_a[7]_i_1_n_0 ;
  wire \cnt_rx1_a_reg_n_0_[0] ;
  wire \cnt_rx1_a_reg_n_0_[10] ;
  wire \cnt_rx1_a_reg_n_0_[11] ;
  wire \cnt_rx1_a_reg_n_0_[12] ;
  wire \cnt_rx1_a_reg_n_0_[13] ;
  wire \cnt_rx1_a_reg_n_0_[14] ;
  wire \cnt_rx1_a_reg_n_0_[15] ;
  wire \cnt_rx1_a_reg_n_0_[16] ;
  wire \cnt_rx1_a_reg_n_0_[17] ;
  wire \cnt_rx1_a_reg_n_0_[18] ;
  wire \cnt_rx1_a_reg_n_0_[19] ;
  wire \cnt_rx1_a_reg_n_0_[1] ;
  wire \cnt_rx1_a_reg_n_0_[20] ;
  wire \cnt_rx1_a_reg_n_0_[21] ;
  wire \cnt_rx1_a_reg_n_0_[22] ;
  wire \cnt_rx1_a_reg_n_0_[23] ;
  wire \cnt_rx1_a_reg_n_0_[24] ;
  wire \cnt_rx1_a_reg_n_0_[25] ;
  wire \cnt_rx1_a_reg_n_0_[26] ;
  wire \cnt_rx1_a_reg_n_0_[27] ;
  wire \cnt_rx1_a_reg_n_0_[28] ;
  wire \cnt_rx1_a_reg_n_0_[29] ;
  wire \cnt_rx1_a_reg_n_0_[2] ;
  wire \cnt_rx1_a_reg_n_0_[30] ;
  wire \cnt_rx1_a_reg_n_0_[31] ;
  wire \cnt_rx1_a_reg_n_0_[3] ;
  wire \cnt_rx1_a_reg_n_0_[4] ;
  wire \cnt_rx1_a_reg_n_0_[5] ;
  wire \cnt_rx1_a_reg_n_0_[6] ;
  wire \cnt_rx1_a_reg_n_0_[7] ;
  wire \cnt_rx1_a_reg_n_0_[8] ;
  wire \cnt_rx1_a_reg_n_0_[9] ;
  wire \cnt_rx_done[0]_i_1_n_0 ;
  wire \cnt_rx_done[1]_i_1_n_0 ;
  wire \cnt_rx_done_a_reg_n_0_[0] ;
  wire \cnt_rx_done_reg_n_0_[0] ;
  wire \cnt_rx_done_reg_n_0_[1] ;
  wire \cnt_rx_en_a[0]_i_1_n_0 ;
  wire \cnt_rx_en_a[0]_i_2_n_0 ;
  wire \cnt_rx_en_a[0]_i_3_n_0 ;
  wire \cnt_rx_en_a[1]_i_1_n_0 ;
  wire \cnt_rx_en_a[1]_i_2_n_0 ;
  wire \cnt_rx_en_a_reg_n_0_[0] ;
  wire \cnt_rx_en_reg_n_0_[0] ;
  wire [63:0]cnt_tx0;
  wire \cnt_tx0_a[15]_i_1_n_0 ;
  wire \cnt_tx0_a[23]_i_1_n_0 ;
  wire \cnt_tx0_a[31]_i_1_n_0 ;
  wire \cnt_tx0_a[39]_i_1_n_0 ;
  wire \cnt_tx0_a[47]_i_1_n_0 ;
  wire \cnt_tx0_a[55]_i_1_n_0 ;
  wire \cnt_tx0_a[63]_i_1_n_0 ;
  wire \cnt_tx0_a[63]_i_2_n_0 ;
  wire \cnt_tx0_a[7]_i_1_n_0 ;
  wire \cnt_tx0_a_reg_n_0_[0] ;
  wire \cnt_tx0_a_reg_n_0_[10] ;
  wire \cnt_tx0_a_reg_n_0_[11] ;
  wire \cnt_tx0_a_reg_n_0_[12] ;
  wire \cnt_tx0_a_reg_n_0_[13] ;
  wire \cnt_tx0_a_reg_n_0_[14] ;
  wire \cnt_tx0_a_reg_n_0_[15] ;
  wire \cnt_tx0_a_reg_n_0_[16] ;
  wire \cnt_tx0_a_reg_n_0_[17] ;
  wire \cnt_tx0_a_reg_n_0_[18] ;
  wire \cnt_tx0_a_reg_n_0_[19] ;
  wire \cnt_tx0_a_reg_n_0_[1] ;
  wire \cnt_tx0_a_reg_n_0_[20] ;
  wire \cnt_tx0_a_reg_n_0_[21] ;
  wire \cnt_tx0_a_reg_n_0_[22] ;
  wire \cnt_tx0_a_reg_n_0_[23] ;
  wire \cnt_tx0_a_reg_n_0_[24] ;
  wire \cnt_tx0_a_reg_n_0_[25] ;
  wire \cnt_tx0_a_reg_n_0_[26] ;
  wire \cnt_tx0_a_reg_n_0_[27] ;
  wire \cnt_tx0_a_reg_n_0_[28] ;
  wire \cnt_tx0_a_reg_n_0_[29] ;
  wire \cnt_tx0_a_reg_n_0_[2] ;
  wire \cnt_tx0_a_reg_n_0_[30] ;
  wire \cnt_tx0_a_reg_n_0_[31] ;
  wire \cnt_tx0_a_reg_n_0_[3] ;
  wire \cnt_tx0_a_reg_n_0_[4] ;
  wire \cnt_tx0_a_reg_n_0_[5] ;
  wire \cnt_tx0_a_reg_n_0_[6] ;
  wire \cnt_tx0_a_reg_n_0_[7] ;
  wire \cnt_tx0_a_reg_n_0_[8] ;
  wire \cnt_tx0_a_reg_n_0_[9] ;
  wire [63:0]cnt_tx1;
  wire \cnt_tx1_a[15]_i_1_n_0 ;
  wire \cnt_tx1_a[23]_i_1_n_0 ;
  wire \cnt_tx1_a[31]_i_1_n_0 ;
  wire \cnt_tx1_a[39]_i_1_n_0 ;
  wire \cnt_tx1_a[47]_i_1_n_0 ;
  wire \cnt_tx1_a[55]_i_1_n_0 ;
  wire \cnt_tx1_a[63]_i_1_n_0 ;
  wire \cnt_tx1_a[63]_i_2_n_0 ;
  wire \cnt_tx1_a[7]_i_1_n_0 ;
  wire \cnt_tx1_a_reg_n_0_[0] ;
  wire \cnt_tx1_a_reg_n_0_[10] ;
  wire \cnt_tx1_a_reg_n_0_[11] ;
  wire \cnt_tx1_a_reg_n_0_[12] ;
  wire \cnt_tx1_a_reg_n_0_[13] ;
  wire \cnt_tx1_a_reg_n_0_[14] ;
  wire \cnt_tx1_a_reg_n_0_[15] ;
  wire \cnt_tx1_a_reg_n_0_[16] ;
  wire \cnt_tx1_a_reg_n_0_[17] ;
  wire \cnt_tx1_a_reg_n_0_[18] ;
  wire \cnt_tx1_a_reg_n_0_[19] ;
  wire \cnt_tx1_a_reg_n_0_[1] ;
  wire \cnt_tx1_a_reg_n_0_[20] ;
  wire \cnt_tx1_a_reg_n_0_[21] ;
  wire \cnt_tx1_a_reg_n_0_[22] ;
  wire \cnt_tx1_a_reg_n_0_[23] ;
  wire \cnt_tx1_a_reg_n_0_[24] ;
  wire \cnt_tx1_a_reg_n_0_[25] ;
  wire \cnt_tx1_a_reg_n_0_[26] ;
  wire \cnt_tx1_a_reg_n_0_[27] ;
  wire \cnt_tx1_a_reg_n_0_[28] ;
  wire \cnt_tx1_a_reg_n_0_[29] ;
  wire \cnt_tx1_a_reg_n_0_[2] ;
  wire \cnt_tx1_a_reg_n_0_[30] ;
  wire \cnt_tx1_a_reg_n_0_[31] ;
  wire \cnt_tx1_a_reg_n_0_[3] ;
  wire \cnt_tx1_a_reg_n_0_[4] ;
  wire \cnt_tx1_a_reg_n_0_[5] ;
  wire \cnt_tx1_a_reg_n_0_[6] ;
  wire \cnt_tx1_a_reg_n_0_[7] ;
  wire \cnt_tx1_a_reg_n_0_[8] ;
  wire \cnt_tx1_a_reg_n_0_[9] ;
  wire \cnt_tx_done[0]_i_1_n_0 ;
  wire \cnt_tx_done[1]_i_1_n_0 ;
  wire \cnt_tx_done_a_reg_n_0_[0] ;
  wire \cnt_tx_done_reg_n_0_[0] ;
  wire \cnt_tx_done_reg_n_0_[1] ;
  wire \cnt_tx_en_a[0]_i_1_n_0 ;
  wire \cnt_tx_en_a[1]_i_1_n_0 ;
  wire \cnt_tx_en_a_reg_n_0_[0] ;
  wire \cnt_tx_en_reg_n_0_[0] ;
  wire [63:0]cnt_wr;
  wire \cnt_wr_a[15]_i_1_n_0 ;
  wire \cnt_wr_a[23]_i_1_n_0 ;
  wire \cnt_wr_a[31]_i_1_n_0 ;
  wire \cnt_wr_a[31]_i_2_n_0 ;
  wire \cnt_wr_a[39]_i_1_n_0 ;
  wire \cnt_wr_a[47]_i_1_n_0 ;
  wire \cnt_wr_a[55]_i_1_n_0 ;
  wire \cnt_wr_a[63]_i_1_n_0 ;
  wire \cnt_wr_a[7]_i_1_n_0 ;
  wire \cnt_wr_a_reg_n_0_[0] ;
  wire \cnt_wr_a_reg_n_0_[10] ;
  wire \cnt_wr_a_reg_n_0_[11] ;
  wire \cnt_wr_a_reg_n_0_[12] ;
  wire \cnt_wr_a_reg_n_0_[13] ;
  wire \cnt_wr_a_reg_n_0_[14] ;
  wire \cnt_wr_a_reg_n_0_[15] ;
  wire \cnt_wr_a_reg_n_0_[16] ;
  wire \cnt_wr_a_reg_n_0_[17] ;
  wire \cnt_wr_a_reg_n_0_[18] ;
  wire \cnt_wr_a_reg_n_0_[19] ;
  wire \cnt_wr_a_reg_n_0_[1] ;
  wire \cnt_wr_a_reg_n_0_[20] ;
  wire \cnt_wr_a_reg_n_0_[21] ;
  wire \cnt_wr_a_reg_n_0_[22] ;
  wire \cnt_wr_a_reg_n_0_[23] ;
  wire \cnt_wr_a_reg_n_0_[24] ;
  wire \cnt_wr_a_reg_n_0_[25] ;
  wire \cnt_wr_a_reg_n_0_[26] ;
  wire \cnt_wr_a_reg_n_0_[27] ;
  wire \cnt_wr_a_reg_n_0_[28] ;
  wire \cnt_wr_a_reg_n_0_[29] ;
  wire \cnt_wr_a_reg_n_0_[2] ;
  wire \cnt_wr_a_reg_n_0_[30] ;
  wire \cnt_wr_a_reg_n_0_[31] ;
  wire \cnt_wr_a_reg_n_0_[32] ;
  wire \cnt_wr_a_reg_n_0_[33] ;
  wire \cnt_wr_a_reg_n_0_[34] ;
  wire \cnt_wr_a_reg_n_0_[35] ;
  wire \cnt_wr_a_reg_n_0_[36] ;
  wire \cnt_wr_a_reg_n_0_[37] ;
  wire \cnt_wr_a_reg_n_0_[38] ;
  wire \cnt_wr_a_reg_n_0_[39] ;
  wire \cnt_wr_a_reg_n_0_[3] ;
  wire \cnt_wr_a_reg_n_0_[40] ;
  wire \cnt_wr_a_reg_n_0_[41] ;
  wire \cnt_wr_a_reg_n_0_[42] ;
  wire \cnt_wr_a_reg_n_0_[43] ;
  wire \cnt_wr_a_reg_n_0_[44] ;
  wire \cnt_wr_a_reg_n_0_[45] ;
  wire \cnt_wr_a_reg_n_0_[46] ;
  wire \cnt_wr_a_reg_n_0_[47] ;
  wire \cnt_wr_a_reg_n_0_[48] ;
  wire \cnt_wr_a_reg_n_0_[49] ;
  wire \cnt_wr_a_reg_n_0_[4] ;
  wire \cnt_wr_a_reg_n_0_[50] ;
  wire \cnt_wr_a_reg_n_0_[51] ;
  wire \cnt_wr_a_reg_n_0_[52] ;
  wire \cnt_wr_a_reg_n_0_[53] ;
  wire \cnt_wr_a_reg_n_0_[54] ;
  wire \cnt_wr_a_reg_n_0_[55] ;
  wire \cnt_wr_a_reg_n_0_[56] ;
  wire \cnt_wr_a_reg_n_0_[57] ;
  wire \cnt_wr_a_reg_n_0_[58] ;
  wire \cnt_wr_a_reg_n_0_[59] ;
  wire \cnt_wr_a_reg_n_0_[5] ;
  wire \cnt_wr_a_reg_n_0_[60] ;
  wire \cnt_wr_a_reg_n_0_[61] ;
  wire \cnt_wr_a_reg_n_0_[62] ;
  wire \cnt_wr_a_reg_n_0_[63] ;
  wire \cnt_wr_a_reg_n_0_[6] ;
  wire \cnt_wr_a_reg_n_0_[7] ;
  wire \cnt_wr_a_reg_n_0_[8] ;
  wire \cnt_wr_a_reg_n_0_[9] ;
  wire cnt_wr_done_a;
  wire cnt_wr_done_i_1_n_0;
  wire cnt_wr_done_reg_n_0;
  wire cnt_wr_req;
  wire cnt_wr_req_a_i_1_n_0;
  wire cnt_wr_req_a_i_2_n_0;
  wire i__carry__0_i_1__0_n_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2__0_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3__0_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4__0_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__1_i_1__0_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2__0_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3__0_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4__0_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__2_i_1__0_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2__0_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3__0_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry__2_i_4__0_n_0;
  wire i__carry__2_i_4_n_0;
  wire i__carry__3_i_1__0_n_0;
  wire i__carry__3_i_1_n_0;
  wire i__carry__3_i_2__0_n_0;
  wire i__carry__3_i_2_n_0;
  wire i__carry__3_i_3__0_n_0;
  wire i__carry__3_i_3_n_0;
  wire i__carry__3_i_4__0_n_0;
  wire i__carry__3_i_4_n_0;
  wire i__carry__4_i_1__0_n_0;
  wire i__carry__4_i_1_n_0;
  wire i__carry__4_i_2__0_n_0;
  wire i__carry__4_i_2_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_4_n_0;
  wire irq;
  wire irq_INST_0_i_1_n_0;
  wire irq_INST_0_i_2_n_0;
  wire irq_INST_0_i_3_n_0;
  wire [8:0]irq_enabled;
  wire \irq_enabled[7]_i_1_n_0 ;
  wire \irq_enabled[7]_i_2_n_0 ;
  wire \irq_enabled[8]_i_1_n_0 ;
  wire \irq_enabled[8]_i_2_n_0 ;
  wire \irq_pend[0]_i_1_n_0 ;
  wire \irq_pend[1]_i_1_n_0 ;
  wire \irq_pend[2]_i_1_n_0 ;
  wire \irq_pend[3]_i_1_n_0 ;
  wire \irq_pend[4]_i_1_n_0 ;
  wire \irq_pend[5]_i_1_n_0 ;
  wire \irq_pend[6]_i_1_n_0 ;
  wire \irq_pend[7]_i_1_n_0 ;
  wire \irq_pend[7]_i_2_n_0 ;
  wire \irq_pend[8]_i_1_n_0 ;
  wire \irq_pend[8]_i_2_n_0 ;
  wire \irq_pend_reg_n_0_[0] ;
  wire \irq_pend_reg_n_0_[1] ;
  wire \irq_pend_reg_n_0_[2] ;
  wire \irq_pend_reg_n_0_[3] ;
  wire \irq_pend_reg_n_0_[4] ;
  wire \irq_pend_reg_n_0_[5] ;
  wire \irq_pend_reg_n_0_[6] ;
  wire \irq_pend_reg_n_0_[7] ;
  wire p_0_in;
  wire p_0_in64_in;
  wire p_0_in68_in;
  wire p_0_in82_in;
  wire p_0_in__0;
  wire [31:0]p_13_in;
  wire [31:0]p_14_in;
  wire p_1_in;
  wire p_1_in52_in;
  wire p_1_in65_in;
  wire p_1_in69_in;
  wire [31:0]p_1_in__0;
  wire [27:16]p_20_in;
  wire p_2_in;
  wire p_2_in10_in;
  wire p_2_in79_in;
  wire p_2_in83_in;
  wire p_86_in;
  wire [31:0]p_8_in;
  wire [31:0]p_9_in;
  wire [1:0]rx_data_ready_a;
  wire [1:0]rx_data_ready_ovr_a;
  wire [1:0]rx_data_ready_ovr_en;
  wire [1:0]rx_data_ready_ovr_en_a;
  wire [1:0]rx_data_ready_ovr_val;
  wire [1:0]rx_data_ready_ovr_val_a;
  wire \rx_data_ready_ovr_val_a[0]_i_1_n_0 ;
  wire \rx_data_ready_ovr_val_a[0]_i_2_n_0 ;
  wire \rx_data_ready_ovr_val_a[1]_i_1_n_0 ;
  wire \rx_data_ready_stky_a[0]_i_1_n_0 ;
  wire \rx_data_ready_stky_a[1]_i_1_n_0 ;
  wire \rx_data_ready_stky_a_reg_n_0_[0] ;
  wire \rx_data_ready_stky_a_reg_n_0_[1] ;
  wire [1:0]rx_dma_xfer_req_a;
  wire [1:0]rx_dma_xfer_req_ovr_a;
  wire [1:0]rx_dma_xfer_req_ovr_en;
  wire [1:0]rx_dma_xfer_req_ovr_en_a;
  wire [1:0]rx_dma_xfer_req_ovr_val;
  wire [1:0]rx_dma_xfer_req_ovr_val_a;
  wire \rx_dma_xfer_req_stky_a[0]_i_1_n_0 ;
  wire \rx_dma_xfer_req_stky_a[1]_i_1_n_0 ;
  wire \rx_dma_xfer_req_stky_a_reg_n_0_[0] ;
  wire \rx_dma_xfer_req_stky_a_reg_n_0_[1] ;
  wire rx_enable1;
  wire rx_enable10_out;
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
  wire \rx_enable1_inferred__0/i__carry__0_n_0 ;
  wire \rx_enable1_inferred__0/i__carry__0_n_1 ;
  wire \rx_enable1_inferred__0/i__carry__0_n_2 ;
  wire \rx_enable1_inferred__0/i__carry__0_n_3 ;
  wire \rx_enable1_inferred__0/i__carry__1_n_0 ;
  wire \rx_enable1_inferred__0/i__carry__1_n_1 ;
  wire \rx_enable1_inferred__0/i__carry__1_n_2 ;
  wire \rx_enable1_inferred__0/i__carry__1_n_3 ;
  wire \rx_enable1_inferred__0/i__carry__2_n_0 ;
  wire \rx_enable1_inferred__0/i__carry__2_n_1 ;
  wire \rx_enable1_inferred__0/i__carry__2_n_2 ;
  wire \rx_enable1_inferred__0/i__carry__2_n_3 ;
  wire \rx_enable1_inferred__0/i__carry__3_n_0 ;
  wire \rx_enable1_inferred__0/i__carry__3_n_1 ;
  wire \rx_enable1_inferred__0/i__carry__3_n_2 ;
  wire \rx_enable1_inferred__0/i__carry__3_n_3 ;
  wire \rx_enable1_inferred__0/i__carry__4_n_3 ;
  wire \rx_enable1_inferred__0/i__carry_n_0 ;
  wire \rx_enable1_inferred__0/i__carry_n_1 ;
  wire \rx_enable1_inferred__0/i__carry_n_2 ;
  wire \rx_enable1_inferred__0/i__carry_n_3 ;
  wire \rx_enable[0]_i_1_n_0 ;
  wire \rx_enable[1]_i_1_n_0 ;
  wire \rx_enable_a_reg_n_0_[1] ;
  wire [1:0]rx_enable_man;
  wire [0:0]rx_enable_man_a;
  wire \rx_enable_man_a[0]_i_1_n_0 ;
  wire \rx_enable_man_a[0]_i_2_n_0 ;
  wire \rx_enable_man_a[0]_i_3_n_0 ;
  wire \rx_enable_man_a[1]_i_1_n_0 ;
  wire \rx_enable_man_a[1]_i_2_n_0 ;
  wire \rx_enable_man_a[1]_i_3_n_0 ;
  wire \rx_enable_man_a_reg_n_0_[0] ;
  wire \rx_enable_man_a_reg_n_0_[1] ;
  wire \rx_enable_reg[0]_0 ;
  wire \rx_enable_reg[1]_0 ;
  wire [1:0]rx_fifo_overflow_a;
  wire \rx_fifo_overflow_stky_a[0]_i_1_n_0 ;
  wire \rx_fifo_overflow_stky_a[1]_i_1_n_0 ;
  wire \rx_fifo_overflow_stky_a_reg_n_0_[0] ;
  wire \rx_fifo_overflow_stky_a_reg_n_0_[1] ;
  wire [4:0]s_axi_araddr;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [4:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awready0;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire s_axi_bvalid_i_1_n_0;
  wire s_axi_rd_en;
  wire [31:0]s_axi_rdata;
  wire \s_axi_rdata[0]_i_1_n_0 ;
  wire \s_axi_rdata[0]_i_2_n_0 ;
  wire \s_axi_rdata[0]_i_3_n_0 ;
  wire \s_axi_rdata[0]_i_6_n_0 ;
  wire \s_axi_rdata[0]_i_7_n_0 ;
  wire \s_axi_rdata[0]_i_8_n_0 ;
  wire \s_axi_rdata[0]_i_9_n_0 ;
  wire \s_axi_rdata[10]_i_1_n_0 ;
  wire \s_axi_rdata[10]_i_2_n_0 ;
  wire \s_axi_rdata[10]_i_3_n_0 ;
  wire \s_axi_rdata[10]_i_4_n_0 ;
  wire \s_axi_rdata[10]_i_5_n_0 ;
  wire \s_axi_rdata[10]_i_6_n_0 ;
  wire \s_axi_rdata[10]_i_7_n_0 ;
  wire \s_axi_rdata[11]_i_1_n_0 ;
  wire \s_axi_rdata[11]_i_2_n_0 ;
  wire \s_axi_rdata[11]_i_3_n_0 ;
  wire \s_axi_rdata[11]_i_4_n_0 ;
  wire \s_axi_rdata[11]_i_5_n_0 ;
  wire \s_axi_rdata[11]_i_6_n_0 ;
  wire \s_axi_rdata[11]_i_7_n_0 ;
  wire \s_axi_rdata[12]_i_1_n_0 ;
  wire \s_axi_rdata[12]_i_4_n_0 ;
  wire \s_axi_rdata[12]_i_5_n_0 ;
  wire \s_axi_rdata[12]_i_6_n_0 ;
  wire \s_axi_rdata[12]_i_7_n_0 ;
  wire \s_axi_rdata[12]_i_8_n_0 ;
  wire \s_axi_rdata[13]_i_1_n_0 ;
  wire \s_axi_rdata[13]_i_4_n_0 ;
  wire \s_axi_rdata[13]_i_5_n_0 ;
  wire \s_axi_rdata[13]_i_6_n_0 ;
  wire \s_axi_rdata[13]_i_7_n_0 ;
  wire \s_axi_rdata[13]_i_8_n_0 ;
  wire \s_axi_rdata[14]_i_1_n_0 ;
  wire \s_axi_rdata[14]_i_2_n_0 ;
  wire \s_axi_rdata[14]_i_3_n_0 ;
  wire \s_axi_rdata[14]_i_4_n_0 ;
  wire \s_axi_rdata[14]_i_5_n_0 ;
  wire \s_axi_rdata[14]_i_6_n_0 ;
  wire \s_axi_rdata[14]_i_7_n_0 ;
  wire \s_axi_rdata[15]_i_1_n_0 ;
  wire \s_axi_rdata[15]_i_2_n_0 ;
  wire \s_axi_rdata[15]_i_3_n_0 ;
  wire \s_axi_rdata[15]_i_4_n_0 ;
  wire \s_axi_rdata[15]_i_5_n_0 ;
  wire \s_axi_rdata[15]_i_6_n_0 ;
  wire \s_axi_rdata[15]_i_7_n_0 ;
  wire \s_axi_rdata[15]_i_8_n_0 ;
  wire \s_axi_rdata[15]_i_9_n_0 ;
  wire \s_axi_rdata[16]_i_1_n_0 ;
  wire \s_axi_rdata[16]_i_2_n_0 ;
  wire \s_axi_rdata[16]_i_3_n_0 ;
  wire \s_axi_rdata[16]_i_6_n_0 ;
  wire \s_axi_rdata[16]_i_7_n_0 ;
  wire \s_axi_rdata[16]_i_8_n_0 ;
  wire \s_axi_rdata[16]_i_9_n_0 ;
  wire \s_axi_rdata[17]_i_10_n_0 ;
  wire \s_axi_rdata[17]_i_1_n_0 ;
  wire \s_axi_rdata[17]_i_2_n_0 ;
  wire \s_axi_rdata[17]_i_3_n_0 ;
  wire \s_axi_rdata[17]_i_6_n_0 ;
  wire \s_axi_rdata[17]_i_7_n_0 ;
  wire \s_axi_rdata[17]_i_8_n_0 ;
  wire \s_axi_rdata[17]_i_9_n_0 ;
  wire \s_axi_rdata[18]_i_1_n_0 ;
  wire \s_axi_rdata[18]_i_3_n_0 ;
  wire \s_axi_rdata[18]_i_6_n_0 ;
  wire \s_axi_rdata[18]_i_7_n_0 ;
  wire \s_axi_rdata[18]_i_8_n_0 ;
  wire \s_axi_rdata[18]_i_9_n_0 ;
  wire \s_axi_rdata[19]_i_1_n_0 ;
  wire \s_axi_rdata[19]_i_3_n_0 ;
  wire \s_axi_rdata[19]_i_6_n_0 ;
  wire \s_axi_rdata[19]_i_7_n_0 ;
  wire \s_axi_rdata[19]_i_8_n_0 ;
  wire \s_axi_rdata[19]_i_9_n_0 ;
  wire \s_axi_rdata[1]_i_1_n_0 ;
  wire \s_axi_rdata[1]_i_2_n_0 ;
  wire \s_axi_rdata[1]_i_3_n_0 ;
  wire \s_axi_rdata[1]_i_6_n_0 ;
  wire \s_axi_rdata[1]_i_7_n_0 ;
  wire \s_axi_rdata[1]_i_8_n_0 ;
  wire \s_axi_rdata[1]_i_9_n_0 ;
  wire \s_axi_rdata[20]_i_1_n_0 ;
  wire \s_axi_rdata[20]_i_3_n_0 ;
  wire \s_axi_rdata[20]_i_6_n_0 ;
  wire \s_axi_rdata[20]_i_7_n_0 ;
  wire \s_axi_rdata[20]_i_8_n_0 ;
  wire \s_axi_rdata[20]_i_9_n_0 ;
  wire \s_axi_rdata[21]_i_10_n_0 ;
  wire \s_axi_rdata[21]_i_1_n_0 ;
  wire \s_axi_rdata[21]_i_3_n_0 ;
  wire \s_axi_rdata[21]_i_4_n_0 ;
  wire \s_axi_rdata[21]_i_7_n_0 ;
  wire \s_axi_rdata[21]_i_8_n_0 ;
  wire \s_axi_rdata[21]_i_9_n_0 ;
  wire \s_axi_rdata[22]_i_1_n_0 ;
  wire \s_axi_rdata[22]_i_2_n_0 ;
  wire \s_axi_rdata[22]_i_3_n_0 ;
  wire \s_axi_rdata[22]_i_4_n_0 ;
  wire \s_axi_rdata[22]_i_5_n_0 ;
  wire \s_axi_rdata[22]_i_6_n_0 ;
  wire \s_axi_rdata[23]_i_1_n_0 ;
  wire \s_axi_rdata[23]_i_2_n_0 ;
  wire \s_axi_rdata[23]_i_3_n_0 ;
  wire \s_axi_rdata[23]_i_4_n_0 ;
  wire \s_axi_rdata[23]_i_5_n_0 ;
  wire \s_axi_rdata[23]_i_6_n_0 ;
  wire \s_axi_rdata[24]_i_1_n_0 ;
  wire \s_axi_rdata[24]_i_2_n_0 ;
  wire \s_axi_rdata[24]_i_5_n_0 ;
  wire \s_axi_rdata[24]_i_6_n_0 ;
  wire \s_axi_rdata[24]_i_7_n_0 ;
  wire \s_axi_rdata[24]_i_8_n_0 ;
  wire \s_axi_rdata[25]_i_1_n_0 ;
  wire \s_axi_rdata[25]_i_2_n_0 ;
  wire \s_axi_rdata[25]_i_5_n_0 ;
  wire \s_axi_rdata[25]_i_6_n_0 ;
  wire \s_axi_rdata[25]_i_7_n_0 ;
  wire \s_axi_rdata[25]_i_8_n_0 ;
  wire \s_axi_rdata[26]_i_1_n_0 ;
  wire \s_axi_rdata[26]_i_2_n_0 ;
  wire \s_axi_rdata[26]_i_5_n_0 ;
  wire \s_axi_rdata[26]_i_6_n_0 ;
  wire \s_axi_rdata[26]_i_7_n_0 ;
  wire \s_axi_rdata[26]_i_8_n_0 ;
  wire \s_axi_rdata[27]_i_1_n_0 ;
  wire \s_axi_rdata[27]_i_2_n_0 ;
  wire \s_axi_rdata[27]_i_5_n_0 ;
  wire \s_axi_rdata[27]_i_6_n_0 ;
  wire \s_axi_rdata[27]_i_7_n_0 ;
  wire \s_axi_rdata[27]_i_8_n_0 ;
  wire \s_axi_rdata[28]_i_1_n_0 ;
  wire \s_axi_rdata[28]_i_2_n_0 ;
  wire \s_axi_rdata[28]_i_3_n_0 ;
  wire \s_axi_rdata[28]_i_4_n_0 ;
  wire \s_axi_rdata[28]_i_5_n_0 ;
  wire \s_axi_rdata[28]_i_6_n_0 ;
  wire \s_axi_rdata[29]_i_1_n_0 ;
  wire \s_axi_rdata[29]_i_2_n_0 ;
  wire \s_axi_rdata[29]_i_3_n_0 ;
  wire \s_axi_rdata[29]_i_4_n_0 ;
  wire \s_axi_rdata[29]_i_5_n_0 ;
  wire \s_axi_rdata[29]_i_6_n_0 ;
  wire \s_axi_rdata[2]_i_1_n_0 ;
  wire \s_axi_rdata[2]_i_2_n_0 ;
  wire \s_axi_rdata[2]_i_3_n_0 ;
  wire \s_axi_rdata[2]_i_6_n_0 ;
  wire \s_axi_rdata[2]_i_7_n_0 ;
  wire \s_axi_rdata[2]_i_8_n_0 ;
  wire \s_axi_rdata[2]_i_9_n_0 ;
  wire \s_axi_rdata[30]_i_1_n_0 ;
  wire \s_axi_rdata[30]_i_2_n_0 ;
  wire \s_axi_rdata[30]_i_3_n_0 ;
  wire \s_axi_rdata[30]_i_4_n_0 ;
  wire \s_axi_rdata[30]_i_5_n_0 ;
  wire \s_axi_rdata[30]_i_6_n_0 ;
  wire \s_axi_rdata[30]_i_7_n_0 ;
  wire \s_axi_rdata[31]_i_1_n_0 ;
  wire \s_axi_rdata[31]_i_3_n_0 ;
  wire \s_axi_rdata[31]_i_4_n_0 ;
  wire \s_axi_rdata[31]_i_5_n_0 ;
  wire \s_axi_rdata[31]_i_6_n_0 ;
  wire \s_axi_rdata[31]_i_7_n_0 ;
  wire \s_axi_rdata[31]_i_8_n_0 ;
  wire \s_axi_rdata[3]_i_1_n_0 ;
  wire \s_axi_rdata[3]_i_2_n_0 ;
  wire \s_axi_rdata[3]_i_3_n_0 ;
  wire \s_axi_rdata[3]_i_6_n_0 ;
  wire \s_axi_rdata[3]_i_7_n_0 ;
  wire \s_axi_rdata[3]_i_8_n_0 ;
  wire \s_axi_rdata[3]_i_9_n_0 ;
  wire \s_axi_rdata[4]_i_1_n_0 ;
  wire \s_axi_rdata[4]_i_2_n_0 ;
  wire \s_axi_rdata[4]_i_3_n_0 ;
  wire \s_axi_rdata[4]_i_6_n_0 ;
  wire \s_axi_rdata[4]_i_7_n_0 ;
  wire \s_axi_rdata[4]_i_8_n_0 ;
  wire \s_axi_rdata[4]_i_9_n_0 ;
  wire \s_axi_rdata[5]_i_1_n_0 ;
  wire \s_axi_rdata[5]_i_2_n_0 ;
  wire \s_axi_rdata[5]_i_3_n_0 ;
  wire \s_axi_rdata[5]_i_6_n_0 ;
  wire \s_axi_rdata[5]_i_7_n_0 ;
  wire \s_axi_rdata[5]_i_8_n_0 ;
  wire \s_axi_rdata[5]_i_9_n_0 ;
  wire \s_axi_rdata[6]_i_1_n_0 ;
  wire \s_axi_rdata[6]_i_2_n_0 ;
  wire \s_axi_rdata[6]_i_3_n_0 ;
  wire \s_axi_rdata[6]_i_6_n_0 ;
  wire \s_axi_rdata[6]_i_7_n_0 ;
  wire \s_axi_rdata[6]_i_8_n_0 ;
  wire \s_axi_rdata[6]_i_9_n_0 ;
  wire \s_axi_rdata[7]_i_1_n_0 ;
  wire \s_axi_rdata[7]_i_2_n_0 ;
  wire \s_axi_rdata[7]_i_3_n_0 ;
  wire \s_axi_rdata[7]_i_6_n_0 ;
  wire \s_axi_rdata[7]_i_7_n_0 ;
  wire \s_axi_rdata[7]_i_8_n_0 ;
  wire \s_axi_rdata[7]_i_9_n_0 ;
  wire \s_axi_rdata[8]_i_1_n_0 ;
  wire \s_axi_rdata[8]_i_2_n_0 ;
  wire \s_axi_rdata[8]_i_3_n_0 ;
  wire \s_axi_rdata[8]_i_6_n_0 ;
  wire \s_axi_rdata[8]_i_7_n_0 ;
  wire \s_axi_rdata[8]_i_8_n_0 ;
  wire \s_axi_rdata[8]_i_9_n_0 ;
  wire \s_axi_rdata[9]_i_1_n_0 ;
  wire \s_axi_rdata[9]_i_2_n_0 ;
  wire \s_axi_rdata[9]_i_3_n_0 ;
  wire \s_axi_rdata[9]_i_4_n_0 ;
  wire \s_axi_rdata[9]_i_5_n_0 ;
  wire \s_axi_rdata[9]_i_6_n_0 ;
  wire \s_axi_rdata[9]_i_7_n_0 ;
  wire \s_axi_rdata_reg[0]_i_4_n_0 ;
  wire \s_axi_rdata_reg[0]_i_5_n_0 ;
  wire \s_axi_rdata_reg[12]_i_2_n_0 ;
  wire \s_axi_rdata_reg[12]_i_3_n_0 ;
  wire \s_axi_rdata_reg[13]_i_2_n_0 ;
  wire \s_axi_rdata_reg[13]_i_3_n_0 ;
  wire \s_axi_rdata_reg[16]_i_4_n_0 ;
  wire \s_axi_rdata_reg[16]_i_5_n_0 ;
  wire \s_axi_rdata_reg[17]_i_4_n_0 ;
  wire \s_axi_rdata_reg[17]_i_5_n_0 ;
  wire \s_axi_rdata_reg[18]_i_2_n_0 ;
  wire \s_axi_rdata_reg[18]_i_4_n_0 ;
  wire \s_axi_rdata_reg[18]_i_5_n_0 ;
  wire \s_axi_rdata_reg[19]_i_2_n_0 ;
  wire \s_axi_rdata_reg[19]_i_4_n_0 ;
  wire \s_axi_rdata_reg[19]_i_5_n_0 ;
  wire \s_axi_rdata_reg[1]_i_4_n_0 ;
  wire \s_axi_rdata_reg[1]_i_5_n_0 ;
  wire \s_axi_rdata_reg[20]_i_2_n_0 ;
  wire \s_axi_rdata_reg[20]_i_4_n_0 ;
  wire \s_axi_rdata_reg[20]_i_5_n_0 ;
  wire \s_axi_rdata_reg[21]_i_2_n_0 ;
  wire \s_axi_rdata_reg[21]_i_5_n_0 ;
  wire \s_axi_rdata_reg[21]_i_6_n_0 ;
  wire \s_axi_rdata_reg[24]_i_3_n_0 ;
  wire \s_axi_rdata_reg[24]_i_4_n_0 ;
  wire \s_axi_rdata_reg[25]_i_3_n_0 ;
  wire \s_axi_rdata_reg[25]_i_4_n_0 ;
  wire \s_axi_rdata_reg[26]_i_3_n_0 ;
  wire \s_axi_rdata_reg[26]_i_4_n_0 ;
  wire \s_axi_rdata_reg[27]_i_3_n_0 ;
  wire \s_axi_rdata_reg[27]_i_4_n_0 ;
  wire \s_axi_rdata_reg[2]_i_4_n_0 ;
  wire \s_axi_rdata_reg[2]_i_5_n_0 ;
  wire \s_axi_rdata_reg[3]_i_4_n_0 ;
  wire \s_axi_rdata_reg[3]_i_5_n_0 ;
  wire \s_axi_rdata_reg[4]_i_4_n_0 ;
  wire \s_axi_rdata_reg[4]_i_5_n_0 ;
  wire \s_axi_rdata_reg[5]_i_4_n_0 ;
  wire \s_axi_rdata_reg[5]_i_5_n_0 ;
  wire \s_axi_rdata_reg[6]_i_4_n_0 ;
  wire \s_axi_rdata_reg[6]_i_5_n_0 ;
  wire \s_axi_rdata_reg[7]_i_4_n_0 ;
  wire \s_axi_rdata_reg[7]_i_5_n_0 ;
  wire \s_axi_rdata_reg[8]_i_4_n_0 ;
  wire \s_axi_rdata_reg[8]_i_5_n_0 ;
  wire s_axi_rready;
  wire s_axi_rvalid_i_1_n_0;
  wire s_axi_rvalid_reg_0;
  wire [31:0]s_axi_wdata;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [12:0]src_in;
  wire sync_aclk_to_ts_clk_dst_req;
  wire [351:0]sync_aclk_to_ts_clk_out;
  wire sync_aclk_to_ts_clk_src_done;
  wire sync_aclk_to_ts_clk_src_req;
  wire sync_aclk_to_ts_clk_src_req_i_1_n_0;
  wire sync_ts_clk_to_aclk_dst_req;
  wire [223:210]sync_ts_clk_to_aclk_in;
  wire [227:0]sync_ts_clk_to_aclk_out;
  wire sync_ts_clk_to_aclk_src_done;
  wire sync_ts_clk_to_aclk_src_req;
  wire sync_ts_clk_to_aclk_src_req_i_1_n_0;
  wire ts_clk;
  wire ts_clk_resync_req;
  wire ts_clk_resync_req_a_i_1_n_0;
  wire ts_clk_resync_req_a_i_2_n_0;
  wire ts_clk_rx_en_i_1_n_0;
  wire ts_clk_rx_en_reg_0;
  wire ts_clk_rx_synced_i_1_n_0;
  wire ts_clk_rx_synced_reg_n_0;
  wire ts_clk_sync_bypass;
  wire ts_clk_sync_bypass_a_i_1_n_0;
  wire ts_clk_tx_en_i_1_n_0;
  wire ts_clk_tx_en_reg_0;
  wire ts_clk_tx_synced_i_1_n_0;
  wire ts_clk_tx_synced_reg_n_0;
  wire ts_resetn_a;
  wire [1:0]tx_data_ready_a;
  wire [1:0]tx_data_ready_ovr_a;
  wire [1:0]tx_data_ready_ovr_en;
  wire [1:0]tx_data_ready_ovr_en_a;
  wire [1:0]tx_data_ready_ovr_val;
  wire [1:0]tx_data_ready_ovr_val_a;
  wire \tx_data_ready_stky_a[0]_i_1_n_0 ;
  wire \tx_data_ready_stky_a[1]_i_1_n_0 ;
  wire \tx_data_ready_stky_a_reg_n_0_[0] ;
  wire \tx_data_ready_stky_a_reg_n_0_[1] ;
  wire [1:0]tx_dma_data_ready_a;
  wire [1:0]tx_dma_data_ready_ovr_a;
  wire [1:0]tx_dma_data_ready_ovr_en;
  wire \tx_dma_data_ready_ovr_en_a_reg_n_0_[0] ;
  wire \tx_dma_data_ready_ovr_en_a_reg_n_0_[1] ;
  wire [1:0]tx_dma_data_ready_ovr_val;
  wire [1:0]tx_dma_data_ready_ovr_val_a;
  wire \tx_dma_data_ready_stky_a[0]_i_1_n_0 ;
  wire \tx_dma_data_ready_stky_a[0]_i_2_n_0 ;
  wire \tx_dma_data_ready_stky_a[1]_i_1_n_0 ;
  wire \tx_dma_data_ready_stky_a[1]_i_2_n_0 ;
  wire \tx_dma_data_ready_stky_a[1]_i_3_n_0 ;
  wire \tx_dma_data_ready_stky_a_reg_n_0_[0] ;
  wire \tx_dma_data_ready_stky_a_reg_n_0_[1] ;
  wire [1:0]tx_enable;
  wire tx_enable1;
  wire tx_enable11_out;
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
  wire \tx_enable1_inferred__0/i__carry__0_n_0 ;
  wire \tx_enable1_inferred__0/i__carry__0_n_1 ;
  wire \tx_enable1_inferred__0/i__carry__0_n_2 ;
  wire \tx_enable1_inferred__0/i__carry__0_n_3 ;
  wire \tx_enable1_inferred__0/i__carry__1_n_0 ;
  wire \tx_enable1_inferred__0/i__carry__1_n_1 ;
  wire \tx_enable1_inferred__0/i__carry__1_n_2 ;
  wire \tx_enable1_inferred__0/i__carry__1_n_3 ;
  wire \tx_enable1_inferred__0/i__carry__2_n_0 ;
  wire \tx_enable1_inferred__0/i__carry__2_n_1 ;
  wire \tx_enable1_inferred__0/i__carry__2_n_2 ;
  wire \tx_enable1_inferred__0/i__carry__2_n_3 ;
  wire \tx_enable1_inferred__0/i__carry__3_n_0 ;
  wire \tx_enable1_inferred__0/i__carry__3_n_1 ;
  wire \tx_enable1_inferred__0/i__carry__3_n_2 ;
  wire \tx_enable1_inferred__0/i__carry__3_n_3 ;
  wire \tx_enable1_inferred__0/i__carry__4_n_3 ;
  wire \tx_enable1_inferred__0/i__carry_n_0 ;
  wire \tx_enable1_inferred__0/i__carry_n_1 ;
  wire \tx_enable1_inferred__0/i__carry_n_2 ;
  wire \tx_enable1_inferred__0/i__carry_n_3 ;
  wire \tx_enable[0]_i_1_n_0 ;
  wire \tx_enable[1]_i_2_n_0 ;
  wire [1:0]tx_enable_man;
  wire [0:0]tx_enable_man_a;
  wire \tx_enable_man_a[0]_i_1_n_0 ;
  wire \tx_enable_man_a[0]_i_2_n_0 ;
  wire \tx_enable_man_a[0]_i_3_n_0 ;
  wire \tx_enable_man_a[1]_i_1_n_0 ;
  wire \tx_enable_man_a[1]_i_2_n_0 ;
  wire \tx_enable_man_a[1]_i_3_n_0 ;
  wire \tx_enable_man_a_reg_n_0_[0] ;
  wire \tx_enable_man_a_reg_n_0_[1] ;
  wire [1:0]tx_fifo_underflow_a;
  wire \tx_fifo_underflow_stky_a[0]_i_1_n_0 ;
  wire \tx_fifo_underflow_stky_a[1]_i_1_n_0 ;
  wire \tx_fifo_underflow_stky_a_reg_n_0_[0] ;
  wire \tx_fifo_underflow_stky_a_reg_n_0_[1] ;
  wire [3:3]\NLW_cnt_reg[60]_i_1_CO_UNCONNECTED ;
  wire [3:0]NLW_rx_enable1_carry_O_UNCONNECTED;
  wire [3:0]NLW_rx_enable1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_rx_enable1_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_rx_enable1_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_rx_enable1_carry__3_O_UNCONNECTED;
  wire [3:2]NLW_rx_enable1_carry__4_CO_UNCONNECTED;
  wire [3:0]NLW_rx_enable1_carry__4_O_UNCONNECTED;
  wire [3:0]\NLW_rx_enable1_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_rx_enable1_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_rx_enable1_inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_rx_enable1_inferred__0/i__carry__2_O_UNCONNECTED ;
  wire [3:0]\NLW_rx_enable1_inferred__0/i__carry__3_O_UNCONNECTED ;
  wire [3:2]\NLW_rx_enable1_inferred__0/i__carry__4_CO_UNCONNECTED ;
  wire [3:0]\NLW_rx_enable1_inferred__0/i__carry__4_O_UNCONNECTED ;
  wire [3:0]NLW_tx_enable1_carry_O_UNCONNECTED;
  wire [3:0]NLW_tx_enable1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_tx_enable1_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_tx_enable1_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_tx_enable1_carry__3_O_UNCONNECTED;
  wire [3:2]NLW_tx_enable1_carry__4_CO_UNCONNECTED;
  wire [3:0]NLW_tx_enable1_carry__4_O_UNCONNECTED;
  wire [3:0]\NLW_tx_enable1_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_tx_enable1_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_tx_enable1_inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_tx_enable1_inferred__0/i__carry__2_O_UNCONNECTED ;
  wire [3:0]\NLW_tx_enable1_inferred__0/i__carry__3_O_UNCONNECTED ;
  wire [3:2]\NLW_tx_enable1_inferred__0/i__carry__4_CO_UNCONNECTED ;
  wire [3:0]\NLW_tx_enable1_inferred__0/i__carry__4_O_UNCONNECTED ;

  (* DEST_EXT_HSK = "0" *) 
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* SIM_ASSERT_CHK = "1" *) 
  (* SRC_SYNC_FF = "2" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "352" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  (* XPM_MODULE = "TRUE" *) 
  icyradio_axi_rf_timestamping_0_xpm_cdc_handshake aclk_to_ts_clk_sync
       (.dest_ack(1'b0),
        .dest_clk(ts_clk),
        .dest_out(sync_aclk_to_ts_clk_out),
        .dest_req(sync_aclk_to_ts_clk_dst_req),
        .src_clk(aclk),
        .src_in({p_20_in[24],p_20_in[25],\tx_dma_data_ready_ovr_en_a_reg_n_0_[1] ,\tx_dma_data_ready_ovr_en_a_reg_n_0_[0] ,tx_dma_data_ready_ovr_val_a,rx_dma_xfer_req_ovr_en_a,rx_dma_xfer_req_ovr_val_a,tx_data_ready_ovr_en_a,tx_data_ready_ovr_val_a,rx_data_ready_ovr_en_a,rx_data_ready_ovr_val_a,\tx_enable_man_a_reg_n_0_[1] ,\tx_enable_man_a_reg_n_0_[0] ,\rx_enable_man_a_reg_n_0_[1] ,\rx_enable_man_a_reg_n_0_[0] ,\cnt_wr_a_reg_n_0_[63] ,\cnt_wr_a_reg_n_0_[62] ,\cnt_wr_a_reg_n_0_[61] ,\cnt_wr_a_reg_n_0_[60] ,\cnt_wr_a_reg_n_0_[59] ,\cnt_wr_a_reg_n_0_[58] ,\cnt_wr_a_reg_n_0_[57] ,\cnt_wr_a_reg_n_0_[56] ,\cnt_wr_a_reg_n_0_[55] ,\cnt_wr_a_reg_n_0_[54] ,\cnt_wr_a_reg_n_0_[53] ,\cnt_wr_a_reg_n_0_[52] ,\cnt_wr_a_reg_n_0_[51] ,\cnt_wr_a_reg_n_0_[50] ,\cnt_wr_a_reg_n_0_[49] ,\cnt_wr_a_reg_n_0_[48] ,\cnt_wr_a_reg_n_0_[47] ,\cnt_wr_a_reg_n_0_[46] ,\cnt_wr_a_reg_n_0_[45] ,\cnt_wr_a_reg_n_0_[44] ,\cnt_wr_a_reg_n_0_[43] ,\cnt_wr_a_reg_n_0_[42] ,\cnt_wr_a_reg_n_0_[41] ,\cnt_wr_a_reg_n_0_[40] ,\cnt_wr_a_reg_n_0_[39] ,\cnt_wr_a_reg_n_0_[38] ,\cnt_wr_a_reg_n_0_[37] ,\cnt_wr_a_reg_n_0_[36] ,\cnt_wr_a_reg_n_0_[35] ,\cnt_wr_a_reg_n_0_[34] ,\cnt_wr_a_reg_n_0_[33] ,\cnt_wr_a_reg_n_0_[32] ,\cnt_wr_a_reg_n_0_[31] ,\cnt_wr_a_reg_n_0_[30] ,\cnt_wr_a_reg_n_0_[29] ,\cnt_wr_a_reg_n_0_[28] ,\cnt_wr_a_reg_n_0_[27] ,\cnt_wr_a_reg_n_0_[26] ,\cnt_wr_a_reg_n_0_[25] ,\cnt_wr_a_reg_n_0_[24] ,\cnt_wr_a_reg_n_0_[23] ,\cnt_wr_a_reg_n_0_[22] ,\cnt_wr_a_reg_n_0_[21] ,\cnt_wr_a_reg_n_0_[20] ,\cnt_wr_a_reg_n_0_[19] ,\cnt_wr_a_reg_n_0_[18] ,\cnt_wr_a_reg_n_0_[17] ,\cnt_wr_a_reg_n_0_[16] ,\cnt_wr_a_reg_n_0_[15] ,\cnt_wr_a_reg_n_0_[14] ,\cnt_wr_a_reg_n_0_[13] ,\cnt_wr_a_reg_n_0_[12] ,\cnt_wr_a_reg_n_0_[11] ,\cnt_wr_a_reg_n_0_[10] ,\cnt_wr_a_reg_n_0_[9] ,\cnt_wr_a_reg_n_0_[8] ,\cnt_wr_a_reg_n_0_[7] ,\cnt_wr_a_reg_n_0_[6] ,\cnt_wr_a_reg_n_0_[5] ,\cnt_wr_a_reg_n_0_[4] ,\cnt_wr_a_reg_n_0_[3] ,\cnt_wr_a_reg_n_0_[2] ,\cnt_wr_a_reg_n_0_[1] ,\cnt_wr_a_reg_n_0_[0] ,p_14_in,\cnt_tx0_a_reg_n_0_[31] ,\cnt_tx0_a_reg_n_0_[30] ,\cnt_tx0_a_reg_n_0_[29] ,\cnt_tx0_a_reg_n_0_[28] ,\cnt_tx0_a_reg_n_0_[27] ,\cnt_tx0_a_reg_n_0_[26] ,\cnt_tx0_a_reg_n_0_[25] ,\cnt_tx0_a_reg_n_0_[24] ,\cnt_tx0_a_reg_n_0_[23] ,\cnt_tx0_a_reg_n_0_[22] ,\cnt_tx0_a_reg_n_0_[21] ,\cnt_tx0_a_reg_n_0_[20] ,\cnt_tx0_a_reg_n_0_[19] ,\cnt_tx0_a_reg_n_0_[18] ,\cnt_tx0_a_reg_n_0_[17] ,\cnt_tx0_a_reg_n_0_[16] ,\cnt_tx0_a_reg_n_0_[15] ,\cnt_tx0_a_reg_n_0_[14] ,\cnt_tx0_a_reg_n_0_[13] ,\cnt_tx0_a_reg_n_0_[12] ,\cnt_tx0_a_reg_n_0_[11] ,\cnt_tx0_a_reg_n_0_[10] ,\cnt_tx0_a_reg_n_0_[9] ,\cnt_tx0_a_reg_n_0_[8] ,\cnt_tx0_a_reg_n_0_[7] ,\cnt_tx0_a_reg_n_0_[6] ,\cnt_tx0_a_reg_n_0_[5] ,\cnt_tx0_a_reg_n_0_[4] ,\cnt_tx0_a_reg_n_0_[3] ,\cnt_tx0_a_reg_n_0_[2] ,\cnt_tx0_a_reg_n_0_[1] ,\cnt_tx0_a_reg_n_0_[0] ,p_9_in,\cnt_tx1_a_reg_n_0_[31] ,\cnt_tx1_a_reg_n_0_[30] ,\cnt_tx1_a_reg_n_0_[29] ,\cnt_tx1_a_reg_n_0_[28] ,\cnt_tx1_a_reg_n_0_[27] ,\cnt_tx1_a_reg_n_0_[26] ,\cnt_tx1_a_reg_n_0_[25] ,\cnt_tx1_a_reg_n_0_[24] ,\cnt_tx1_a_reg_n_0_[23] ,\cnt_tx1_a_reg_n_0_[22] ,\cnt_tx1_a_reg_n_0_[21] ,\cnt_tx1_a_reg_n_0_[20] ,\cnt_tx1_a_reg_n_0_[19] ,\cnt_tx1_a_reg_n_0_[18] ,\cnt_tx1_a_reg_n_0_[17] ,\cnt_tx1_a_reg_n_0_[16] ,\cnt_tx1_a_reg_n_0_[15] ,\cnt_tx1_a_reg_n_0_[14] ,\cnt_tx1_a_reg_n_0_[13] ,\cnt_tx1_a_reg_n_0_[12] ,\cnt_tx1_a_reg_n_0_[11] ,\cnt_tx1_a_reg_n_0_[10] ,\cnt_tx1_a_reg_n_0_[9] ,\cnt_tx1_a_reg_n_0_[8] ,\cnt_tx1_a_reg_n_0_[7] ,\cnt_tx1_a_reg_n_0_[6] ,\cnt_tx1_a_reg_n_0_[5] ,\cnt_tx1_a_reg_n_0_[4] ,\cnt_tx1_a_reg_n_0_[3] ,\cnt_tx1_a_reg_n_0_[2] ,\cnt_tx1_a_reg_n_0_[1] ,\cnt_tx1_a_reg_n_0_[0] ,p_13_in,\cnt_rx0_a_reg_n_0_[31] ,\cnt_rx0_a_reg_n_0_[30] ,\cnt_rx0_a_reg_n_0_[29] ,\cnt_rx0_a_reg_n_0_[28] ,\cnt_rx0_a_reg_n_0_[27] ,\cnt_rx0_a_reg_n_0_[26] ,\cnt_rx0_a_reg_n_0_[25] ,\cnt_rx0_a_reg_n_0_[24] ,\cnt_rx0_a_reg_n_0_[23] ,\cnt_rx0_a_reg_n_0_[22] ,\cnt_rx0_a_reg_n_0_[21] ,\cnt_rx0_a_reg_n_0_[20] ,\cnt_rx0_a_reg_n_0_[19] ,\cnt_rx0_a_reg_n_0_[18] ,\cnt_rx0_a_reg_n_0_[17] ,\cnt_rx0_a_reg_n_0_[16] ,\cnt_rx0_a_reg_n_0_[15] ,\cnt_rx0_a_reg_n_0_[14] ,\cnt_rx0_a_reg_n_0_[13] ,\cnt_rx0_a_reg_n_0_[12] ,\cnt_rx0_a_reg_n_0_[11] ,\cnt_rx0_a_reg_n_0_[10] ,\cnt_rx0_a_reg_n_0_[9] ,\cnt_rx0_a_reg_n_0_[8] ,\cnt_rx0_a_reg_n_0_[7] ,\cnt_rx0_a_reg_n_0_[6] ,\cnt_rx0_a_reg_n_0_[5] ,\cnt_rx0_a_reg_n_0_[4] ,\cnt_rx0_a_reg_n_0_[3] ,\cnt_rx0_a_reg_n_0_[2] ,\cnt_rx0_a_reg_n_0_[1] ,\cnt_rx0_a_reg_n_0_[0] ,p_8_in,\cnt_rx1_a_reg_n_0_[31] ,\cnt_rx1_a_reg_n_0_[30] ,\cnt_rx1_a_reg_n_0_[29] ,\cnt_rx1_a_reg_n_0_[28] ,\cnt_rx1_a_reg_n_0_[27] ,\cnt_rx1_a_reg_n_0_[26] ,\cnt_rx1_a_reg_n_0_[25] ,\cnt_rx1_a_reg_n_0_[24] ,\cnt_rx1_a_reg_n_0_[23] ,\cnt_rx1_a_reg_n_0_[22] ,\cnt_rx1_a_reg_n_0_[21] ,\cnt_rx1_a_reg_n_0_[20] ,\cnt_rx1_a_reg_n_0_[19] ,\cnt_rx1_a_reg_n_0_[18] ,\cnt_rx1_a_reg_n_0_[17] ,\cnt_rx1_a_reg_n_0_[16] ,\cnt_rx1_a_reg_n_0_[15] ,\cnt_rx1_a_reg_n_0_[14] ,\cnt_rx1_a_reg_n_0_[13] ,\cnt_rx1_a_reg_n_0_[12] ,\cnt_rx1_a_reg_n_0_[11] ,\cnt_rx1_a_reg_n_0_[10] ,\cnt_rx1_a_reg_n_0_[9] ,\cnt_rx1_a_reg_n_0_[8] ,\cnt_rx1_a_reg_n_0_[7] ,\cnt_rx1_a_reg_n_0_[6] ,\cnt_rx1_a_reg_n_0_[5] ,\cnt_rx1_a_reg_n_0_[4] ,\cnt_rx1_a_reg_n_0_[3] ,\cnt_rx1_a_reg_n_0_[2] ,\cnt_rx1_a_reg_n_0_[1] ,\cnt_rx1_a_reg_n_0_[0] ,p_20_in[17:16],p_1_in69_in,\cnt_tx_en_a_reg_n_0_[0] ,p_1_in65_in,\cnt_rx_en_a_reg_n_0_[0] ,\cnt_latch_arm_req_a_reg_n_0_[1] ,\cnt_latch_arm_req_a_reg_n_0_[0] ,\cnt_latch_valid_rd_a_reg_n_0_[1] ,\cnt_latch_valid_rd_a_reg_n_0_[0] }),
        .src_rcv(sync_aclk_to_ts_clk_src_done),
        .src_send(sync_aclk_to_ts_clk_src_req));
  LUT4 #(
    .INIT(16'hAA30)) 
    \cnt[0]_i_1 
       (.I0(ts_clk_rx_en_reg_0),
        .I1(cnt_wr_done_reg_n_0),
        .I2(cnt_wr_req),
        .I3(cnt_en),
        .O(\cnt[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt[0]_i_3 
       (.I0(cnt_reg[3]),
        .I1(cnt_en),
        .I2(cnt_wr[3]),
        .O(\cnt[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt[0]_i_4 
       (.I0(cnt_reg[2]),
        .I1(cnt_en),
        .I2(cnt_wr[2]),
        .O(\cnt[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt[0]_i_5 
       (.I0(cnt_reg[1]),
        .I1(cnt_en),
        .I2(cnt_wr[1]),
        .O(\cnt[0]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h3A)) 
    \cnt[0]_i_6 
       (.I0(cnt_wr[0]),
        .I1(cnt_reg[0]),
        .I2(cnt_en),
        .O(\cnt[0]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt[12]_i_2 
       (.I0(cnt_reg[15]),
        .I1(cnt_en),
        .I2(cnt_wr[15]),
        .O(\cnt[12]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt[12]_i_3 
       (.I0(cnt_reg[14]),
        .I1(cnt_en),
        .I2(cnt_wr[14]),
        .O(\cnt[12]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt[12]_i_4 
       (.I0(cnt_reg[13]),
        .I1(cnt_en),
        .I2(cnt_wr[13]),
        .O(\cnt[12]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt[12]_i_5 
       (.I0(cnt_reg[12]),
        .I1(cnt_en),
        .I2(cnt_wr[12]),
        .O(\cnt[12]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt[16]_i_2 
       (.I0(cnt_reg[19]),
        .I1(cnt_en),
        .I2(cnt_wr[19]),
        .O(\cnt[16]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt[16]_i_3 
       (.I0(cnt_reg[18]),
        .I1(cnt_en),
        .I2(cnt_wr[18]),
        .O(\cnt[16]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt[16]_i_4 
       (.I0(cnt_reg[17]),
        .I1(cnt_en),
        .I2(cnt_wr[17]),
        .O(\cnt[16]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt[16]_i_5 
       (.I0(cnt_reg[16]),
        .I1(cnt_en),
        .I2(cnt_wr[16]),
        .O(\cnt[16]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt[20]_i_2 
       (.I0(cnt_reg[23]),
        .I1(cnt_en),
        .I2(cnt_wr[23]),
        .O(\cnt[20]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt[20]_i_3 
       (.I0(cnt_reg[22]),
        .I1(cnt_en),
        .I2(cnt_wr[22]),
        .O(\cnt[20]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt[20]_i_4 
       (.I0(cnt_reg[21]),
        .I1(cnt_en),
        .I2(cnt_wr[21]),
        .O(\cnt[20]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt[20]_i_5 
       (.I0(cnt_reg[20]),
        .I1(cnt_en),
        .I2(cnt_wr[20]),
        .O(\cnt[20]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt[24]_i_2 
       (.I0(cnt_reg[27]),
        .I1(cnt_en),
        .I2(cnt_wr[27]),
        .O(\cnt[24]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt[24]_i_3 
       (.I0(cnt_reg[26]),
        .I1(cnt_en),
        .I2(cnt_wr[26]),
        .O(\cnt[24]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt[24]_i_4 
       (.I0(cnt_reg[25]),
        .I1(cnt_en),
        .I2(cnt_wr[25]),
        .O(\cnt[24]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt[24]_i_5 
       (.I0(cnt_reg[24]),
        .I1(cnt_en),
        .I2(cnt_wr[24]),
        .O(\cnt[24]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt[28]_i_2 
       (.I0(cnt_reg[31]),
        .I1(cnt_en),
        .I2(cnt_wr[31]),
        .O(\cnt[28]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt[28]_i_3 
       (.I0(cnt_reg[30]),
        .I1(cnt_en),
        .I2(cnt_wr[30]),
        .O(\cnt[28]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt[28]_i_4 
       (.I0(cnt_reg[29]),
        .I1(cnt_en),
        .I2(cnt_wr[29]),
        .O(\cnt[28]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt[28]_i_5 
       (.I0(cnt_reg[28]),
        .I1(cnt_en),
        .I2(cnt_wr[28]),
        .O(\cnt[28]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt[32]_i_2 
       (.I0(cnt_reg[35]),
        .I1(cnt_en),
        .I2(cnt_wr[35]),
        .O(\cnt[32]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt[32]_i_3 
       (.I0(cnt_reg[34]),
        .I1(cnt_en),
        .I2(cnt_wr[34]),
        .O(\cnt[32]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt[32]_i_4 
       (.I0(cnt_reg[33]),
        .I1(cnt_en),
        .I2(cnt_wr[33]),
        .O(\cnt[32]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt[32]_i_5 
       (.I0(cnt_reg[32]),
        .I1(cnt_en),
        .I2(cnt_wr[32]),
        .O(\cnt[32]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt[36]_i_2 
       (.I0(cnt_reg[39]),
        .I1(cnt_en),
        .I2(cnt_wr[39]),
        .O(\cnt[36]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt[36]_i_3 
       (.I0(cnt_reg[38]),
        .I1(cnt_en),
        .I2(cnt_wr[38]),
        .O(\cnt[36]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt[36]_i_4 
       (.I0(cnt_reg[37]),
        .I1(cnt_en),
        .I2(cnt_wr[37]),
        .O(\cnt[36]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt[36]_i_5 
       (.I0(cnt_reg[36]),
        .I1(cnt_en),
        .I2(cnt_wr[36]),
        .O(\cnt[36]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt[40]_i_2 
       (.I0(cnt_reg[43]),
        .I1(cnt_en),
        .I2(cnt_wr[43]),
        .O(\cnt[40]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt[40]_i_3 
       (.I0(cnt_reg[42]),
        .I1(cnt_en),
        .I2(cnt_wr[42]),
        .O(\cnt[40]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt[40]_i_4 
       (.I0(cnt_reg[41]),
        .I1(cnt_en),
        .I2(cnt_wr[41]),
        .O(\cnt[40]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt[40]_i_5 
       (.I0(cnt_reg[40]),
        .I1(cnt_en),
        .I2(cnt_wr[40]),
        .O(\cnt[40]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt[44]_i_2 
       (.I0(cnt_reg[47]),
        .I1(cnt_en),
        .I2(cnt_wr[47]),
        .O(\cnt[44]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt[44]_i_3 
       (.I0(cnt_reg[46]),
        .I1(cnt_en),
        .I2(cnt_wr[46]),
        .O(\cnt[44]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt[44]_i_4 
       (.I0(cnt_reg[45]),
        .I1(cnt_en),
        .I2(cnt_wr[45]),
        .O(\cnt[44]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt[44]_i_5 
       (.I0(cnt_reg[44]),
        .I1(cnt_en),
        .I2(cnt_wr[44]),
        .O(\cnt[44]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt[48]_i_2 
       (.I0(cnt_reg[51]),
        .I1(cnt_en),
        .I2(cnt_wr[51]),
        .O(\cnt[48]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt[48]_i_3 
       (.I0(cnt_reg[50]),
        .I1(cnt_en),
        .I2(cnt_wr[50]),
        .O(\cnt[48]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt[48]_i_4 
       (.I0(cnt_reg[49]),
        .I1(cnt_en),
        .I2(cnt_wr[49]),
        .O(\cnt[48]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt[48]_i_5 
       (.I0(cnt_reg[48]),
        .I1(cnt_en),
        .I2(cnt_wr[48]),
        .O(\cnt[48]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt[4]_i_2 
       (.I0(cnt_reg[7]),
        .I1(cnt_en),
        .I2(cnt_wr[7]),
        .O(\cnt[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt[4]_i_3 
       (.I0(cnt_reg[6]),
        .I1(cnt_en),
        .I2(cnt_wr[6]),
        .O(\cnt[4]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt[4]_i_4 
       (.I0(cnt_reg[5]),
        .I1(cnt_en),
        .I2(cnt_wr[5]),
        .O(\cnt[4]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt[4]_i_5 
       (.I0(cnt_reg[4]),
        .I1(cnt_en),
        .I2(cnt_wr[4]),
        .O(\cnt[4]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt[52]_i_2 
       (.I0(cnt_reg[55]),
        .I1(cnt_en),
        .I2(cnt_wr[55]),
        .O(\cnt[52]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt[52]_i_3 
       (.I0(cnt_reg[54]),
        .I1(cnt_en),
        .I2(cnt_wr[54]),
        .O(\cnt[52]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt[52]_i_4 
       (.I0(cnt_reg[53]),
        .I1(cnt_en),
        .I2(cnt_wr[53]),
        .O(\cnt[52]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt[52]_i_5 
       (.I0(cnt_reg[52]),
        .I1(cnt_en),
        .I2(cnt_wr[52]),
        .O(\cnt[52]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt[56]_i_2 
       (.I0(cnt_reg[59]),
        .I1(cnt_en),
        .I2(cnt_wr[59]),
        .O(\cnt[56]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt[56]_i_3 
       (.I0(cnt_reg[58]),
        .I1(cnt_en),
        .I2(cnt_wr[58]),
        .O(\cnt[56]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt[56]_i_4 
       (.I0(cnt_reg[57]),
        .I1(cnt_en),
        .I2(cnt_wr[57]),
        .O(\cnt[56]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt[56]_i_5 
       (.I0(cnt_reg[56]),
        .I1(cnt_en),
        .I2(cnt_wr[56]),
        .O(\cnt[56]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt[60]_i_2 
       (.I0(cnt_reg[63]),
        .I1(cnt_en),
        .I2(cnt_wr[63]),
        .O(\cnt[60]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt[60]_i_3 
       (.I0(cnt_reg[62]),
        .I1(cnt_en),
        .I2(cnt_wr[62]),
        .O(\cnt[60]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt[60]_i_4 
       (.I0(cnt_reg[61]),
        .I1(cnt_en),
        .I2(cnt_wr[61]),
        .O(\cnt[60]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt[60]_i_5 
       (.I0(cnt_reg[60]),
        .I1(cnt_en),
        .I2(cnt_wr[60]),
        .O(\cnt[60]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt[8]_i_2 
       (.I0(cnt_reg[11]),
        .I1(cnt_en),
        .I2(cnt_wr[11]),
        .O(\cnt[8]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt[8]_i_3 
       (.I0(cnt_reg[10]),
        .I1(cnt_en),
        .I2(cnt_wr[10]),
        .O(\cnt[8]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt[8]_i_4 
       (.I0(cnt_reg[9]),
        .I1(cnt_en),
        .I2(cnt_wr[9]),
        .O(\cnt[8]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \cnt[8]_i_5 
       (.I0(cnt_reg[8]),
        .I1(cnt_en),
        .I2(cnt_wr[8]),
        .O(\cnt[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \cnt_a_rd_buf[31]_i_1 
       (.I0(s_axi_araddr[0]),
        .I1(s_axi_araddr[1]),
        .I2(\cnt_a_rd_buf[31]_i_2_n_0 ),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_rvalid_reg_0),
        .I5(s_axi_arvalid),
        .O(cnt_a_rd_buf));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \cnt_a_rd_buf[31]_i_2 
       (.I0(s_axi_araddr[4]),
        .I1(s_axi_araddr[3]),
        .O(\cnt_a_rd_buf[31]_i_2_n_0 ));
  FDRE \cnt_a_rd_buf_reg[0] 
       (.C(aclk),
        .CE(cnt_a_rd_buf),
        .D(p_1_in__0[0]),
        .Q(\cnt_a_rd_buf_reg_n_0_[0] ),
        .R(p_0_in__0));
  FDRE \cnt_a_rd_buf_reg[10] 
       (.C(aclk),
        .CE(cnt_a_rd_buf),
        .D(p_1_in__0[10]),
        .Q(\cnt_a_rd_buf_reg_n_0_[10] ),
        .R(p_0_in__0));
  FDRE \cnt_a_rd_buf_reg[11] 
       (.C(aclk),
        .CE(cnt_a_rd_buf),
        .D(p_1_in__0[11]),
        .Q(\cnt_a_rd_buf_reg_n_0_[11] ),
        .R(p_0_in__0));
  FDRE \cnt_a_rd_buf_reg[12] 
       (.C(aclk),
        .CE(cnt_a_rd_buf),
        .D(p_1_in__0[12]),
        .Q(\cnt_a_rd_buf_reg_n_0_[12] ),
        .R(p_0_in__0));
  FDRE \cnt_a_rd_buf_reg[13] 
       (.C(aclk),
        .CE(cnt_a_rd_buf),
        .D(p_1_in__0[13]),
        .Q(\cnt_a_rd_buf_reg_n_0_[13] ),
        .R(p_0_in__0));
  FDRE \cnt_a_rd_buf_reg[14] 
       (.C(aclk),
        .CE(cnt_a_rd_buf),
        .D(p_1_in__0[14]),
        .Q(\cnt_a_rd_buf_reg_n_0_[14] ),
        .R(p_0_in__0));
  FDRE \cnt_a_rd_buf_reg[15] 
       (.C(aclk),
        .CE(cnt_a_rd_buf),
        .D(p_1_in__0[15]),
        .Q(\cnt_a_rd_buf_reg_n_0_[15] ),
        .R(p_0_in__0));
  FDRE \cnt_a_rd_buf_reg[16] 
       (.C(aclk),
        .CE(cnt_a_rd_buf),
        .D(p_1_in__0[16]),
        .Q(\cnt_a_rd_buf_reg_n_0_[16] ),
        .R(p_0_in__0));
  FDRE \cnt_a_rd_buf_reg[17] 
       (.C(aclk),
        .CE(cnt_a_rd_buf),
        .D(p_1_in__0[17]),
        .Q(\cnt_a_rd_buf_reg_n_0_[17] ),
        .R(p_0_in__0));
  FDRE \cnt_a_rd_buf_reg[18] 
       (.C(aclk),
        .CE(cnt_a_rd_buf),
        .D(p_1_in__0[18]),
        .Q(\cnt_a_rd_buf_reg_n_0_[18] ),
        .R(p_0_in__0));
  FDRE \cnt_a_rd_buf_reg[19] 
       (.C(aclk),
        .CE(cnt_a_rd_buf),
        .D(p_1_in__0[19]),
        .Q(\cnt_a_rd_buf_reg_n_0_[19] ),
        .R(p_0_in__0));
  FDRE \cnt_a_rd_buf_reg[1] 
       (.C(aclk),
        .CE(cnt_a_rd_buf),
        .D(p_1_in__0[1]),
        .Q(\cnt_a_rd_buf_reg_n_0_[1] ),
        .R(p_0_in__0));
  FDRE \cnt_a_rd_buf_reg[20] 
       (.C(aclk),
        .CE(cnt_a_rd_buf),
        .D(p_1_in__0[20]),
        .Q(\cnt_a_rd_buf_reg_n_0_[20] ),
        .R(p_0_in__0));
  FDRE \cnt_a_rd_buf_reg[21] 
       (.C(aclk),
        .CE(cnt_a_rd_buf),
        .D(p_1_in__0[21]),
        .Q(\cnt_a_rd_buf_reg_n_0_[21] ),
        .R(p_0_in__0));
  FDRE \cnt_a_rd_buf_reg[22] 
       (.C(aclk),
        .CE(cnt_a_rd_buf),
        .D(p_1_in__0[22]),
        .Q(\cnt_a_rd_buf_reg_n_0_[22] ),
        .R(p_0_in__0));
  FDRE \cnt_a_rd_buf_reg[23] 
       (.C(aclk),
        .CE(cnt_a_rd_buf),
        .D(p_1_in__0[23]),
        .Q(\cnt_a_rd_buf_reg_n_0_[23] ),
        .R(p_0_in__0));
  FDRE \cnt_a_rd_buf_reg[24] 
       (.C(aclk),
        .CE(cnt_a_rd_buf),
        .D(p_1_in__0[24]),
        .Q(\cnt_a_rd_buf_reg_n_0_[24] ),
        .R(p_0_in__0));
  FDRE \cnt_a_rd_buf_reg[25] 
       (.C(aclk),
        .CE(cnt_a_rd_buf),
        .D(p_1_in__0[25]),
        .Q(\cnt_a_rd_buf_reg_n_0_[25] ),
        .R(p_0_in__0));
  FDRE \cnt_a_rd_buf_reg[26] 
       (.C(aclk),
        .CE(cnt_a_rd_buf),
        .D(p_1_in__0[26]),
        .Q(\cnt_a_rd_buf_reg_n_0_[26] ),
        .R(p_0_in__0));
  FDRE \cnt_a_rd_buf_reg[27] 
       (.C(aclk),
        .CE(cnt_a_rd_buf),
        .D(p_1_in__0[27]),
        .Q(\cnt_a_rd_buf_reg_n_0_[27] ),
        .R(p_0_in__0));
  FDRE \cnt_a_rd_buf_reg[28] 
       (.C(aclk),
        .CE(cnt_a_rd_buf),
        .D(p_1_in__0[28]),
        .Q(\cnt_a_rd_buf_reg_n_0_[28] ),
        .R(p_0_in__0));
  FDRE \cnt_a_rd_buf_reg[29] 
       (.C(aclk),
        .CE(cnt_a_rd_buf),
        .D(p_1_in__0[29]),
        .Q(\cnt_a_rd_buf_reg_n_0_[29] ),
        .R(p_0_in__0));
  FDRE \cnt_a_rd_buf_reg[2] 
       (.C(aclk),
        .CE(cnt_a_rd_buf),
        .D(p_1_in__0[2]),
        .Q(\cnt_a_rd_buf_reg_n_0_[2] ),
        .R(p_0_in__0));
  FDRE \cnt_a_rd_buf_reg[30] 
       (.C(aclk),
        .CE(cnt_a_rd_buf),
        .D(p_1_in__0[30]),
        .Q(\cnt_a_rd_buf_reg_n_0_[30] ),
        .R(p_0_in__0));
  FDRE \cnt_a_rd_buf_reg[31] 
       (.C(aclk),
        .CE(cnt_a_rd_buf),
        .D(p_1_in__0[31]),
        .Q(\cnt_a_rd_buf_reg_n_0_[31] ),
        .R(p_0_in__0));
  FDRE \cnt_a_rd_buf_reg[3] 
       (.C(aclk),
        .CE(cnt_a_rd_buf),
        .D(p_1_in__0[3]),
        .Q(\cnt_a_rd_buf_reg_n_0_[3] ),
        .R(p_0_in__0));
  FDRE \cnt_a_rd_buf_reg[4] 
       (.C(aclk),
        .CE(cnt_a_rd_buf),
        .D(p_1_in__0[4]),
        .Q(\cnt_a_rd_buf_reg_n_0_[4] ),
        .R(p_0_in__0));
  FDRE \cnt_a_rd_buf_reg[5] 
       (.C(aclk),
        .CE(cnt_a_rd_buf),
        .D(p_1_in__0[5]),
        .Q(\cnt_a_rd_buf_reg_n_0_[5] ),
        .R(p_0_in__0));
  FDRE \cnt_a_rd_buf_reg[6] 
       (.C(aclk),
        .CE(cnt_a_rd_buf),
        .D(p_1_in__0[6]),
        .Q(\cnt_a_rd_buf_reg_n_0_[6] ),
        .R(p_0_in__0));
  FDRE \cnt_a_rd_buf_reg[7] 
       (.C(aclk),
        .CE(cnt_a_rd_buf),
        .D(p_1_in__0[7]),
        .Q(\cnt_a_rd_buf_reg_n_0_[7] ),
        .R(p_0_in__0));
  FDRE \cnt_a_rd_buf_reg[8] 
       (.C(aclk),
        .CE(cnt_a_rd_buf),
        .D(p_1_in__0[8]),
        .Q(\cnt_a_rd_buf_reg_n_0_[8] ),
        .R(p_0_in__0));
  FDRE \cnt_a_rd_buf_reg[9] 
       (.C(aclk),
        .CE(cnt_a_rd_buf),
        .D(p_1_in__0[9]),
        .Q(\cnt_a_rd_buf_reg_n_0_[9] ),
        .R(p_0_in__0));
  FDRE \cnt_a_reg[0] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[138]),
        .Q(\cnt_a_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \cnt_a_reg[10] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[148]),
        .Q(\cnt_a_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \cnt_a_reg[11] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[149]),
        .Q(\cnt_a_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \cnt_a_reg[12] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[150]),
        .Q(\cnt_a_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \cnt_a_reg[13] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[151]),
        .Q(\cnt_a_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \cnt_a_reg[14] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[152]),
        .Q(\cnt_a_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \cnt_a_reg[15] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[153]),
        .Q(\cnt_a_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \cnt_a_reg[16] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[154]),
        .Q(\cnt_a_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \cnt_a_reg[17] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[155]),
        .Q(\cnt_a_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \cnt_a_reg[18] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[156]),
        .Q(\cnt_a_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \cnt_a_reg[19] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[157]),
        .Q(\cnt_a_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \cnt_a_reg[1] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[139]),
        .Q(\cnt_a_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \cnt_a_reg[20] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[158]),
        .Q(\cnt_a_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \cnt_a_reg[21] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[159]),
        .Q(\cnt_a_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \cnt_a_reg[22] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[160]),
        .Q(\cnt_a_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \cnt_a_reg[23] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[161]),
        .Q(\cnt_a_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \cnt_a_reg[24] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[162]),
        .Q(\cnt_a_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \cnt_a_reg[25] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[163]),
        .Q(\cnt_a_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \cnt_a_reg[26] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[164]),
        .Q(\cnt_a_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \cnt_a_reg[27] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[165]),
        .Q(\cnt_a_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \cnt_a_reg[28] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[166]),
        .Q(\cnt_a_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \cnt_a_reg[29] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[167]),
        .Q(\cnt_a_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \cnt_a_reg[2] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[140]),
        .Q(\cnt_a_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \cnt_a_reg[30] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[168]),
        .Q(\cnt_a_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \cnt_a_reg[31] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[169]),
        .Q(\cnt_a_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \cnt_a_reg[32] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[170]),
        .Q(p_1_in__0[0]),
        .R(1'b0));
  FDRE \cnt_a_reg[33] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[171]),
        .Q(p_1_in__0[1]),
        .R(1'b0));
  FDRE \cnt_a_reg[34] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[172]),
        .Q(p_1_in__0[2]),
        .R(1'b0));
  FDRE \cnt_a_reg[35] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[173]),
        .Q(p_1_in__0[3]),
        .R(1'b0));
  FDRE \cnt_a_reg[36] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[174]),
        .Q(p_1_in__0[4]),
        .R(1'b0));
  FDRE \cnt_a_reg[37] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[175]),
        .Q(p_1_in__0[5]),
        .R(1'b0));
  FDRE \cnt_a_reg[38] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[176]),
        .Q(p_1_in__0[6]),
        .R(1'b0));
  FDRE \cnt_a_reg[39] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[177]),
        .Q(p_1_in__0[7]),
        .R(1'b0));
  FDRE \cnt_a_reg[3] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[141]),
        .Q(\cnt_a_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \cnt_a_reg[40] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[178]),
        .Q(p_1_in__0[8]),
        .R(1'b0));
  FDRE \cnt_a_reg[41] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[179]),
        .Q(p_1_in__0[9]),
        .R(1'b0));
  FDRE \cnt_a_reg[42] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[180]),
        .Q(p_1_in__0[10]),
        .R(1'b0));
  FDRE \cnt_a_reg[43] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[181]),
        .Q(p_1_in__0[11]),
        .R(1'b0));
  FDRE \cnt_a_reg[44] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[182]),
        .Q(p_1_in__0[12]),
        .R(1'b0));
  FDRE \cnt_a_reg[45] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[183]),
        .Q(p_1_in__0[13]),
        .R(1'b0));
  FDRE \cnt_a_reg[46] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[184]),
        .Q(p_1_in__0[14]),
        .R(1'b0));
  FDRE \cnt_a_reg[47] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[185]),
        .Q(p_1_in__0[15]),
        .R(1'b0));
  FDRE \cnt_a_reg[48] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[186]),
        .Q(p_1_in__0[16]),
        .R(1'b0));
  FDRE \cnt_a_reg[49] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[187]),
        .Q(p_1_in__0[17]),
        .R(1'b0));
  FDRE \cnt_a_reg[4] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[142]),
        .Q(\cnt_a_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \cnt_a_reg[50] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[188]),
        .Q(p_1_in__0[18]),
        .R(1'b0));
  FDRE \cnt_a_reg[51] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[189]),
        .Q(p_1_in__0[19]),
        .R(1'b0));
  FDRE \cnt_a_reg[52] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[190]),
        .Q(p_1_in__0[20]),
        .R(1'b0));
  FDRE \cnt_a_reg[53] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[191]),
        .Q(p_1_in__0[21]),
        .R(1'b0));
  FDRE \cnt_a_reg[54] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[192]),
        .Q(p_1_in__0[22]),
        .R(1'b0));
  FDRE \cnt_a_reg[55] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[193]),
        .Q(p_1_in__0[23]),
        .R(1'b0));
  FDRE \cnt_a_reg[56] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[194]),
        .Q(p_1_in__0[24]),
        .R(1'b0));
  FDRE \cnt_a_reg[57] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[195]),
        .Q(p_1_in__0[25]),
        .R(1'b0));
  FDRE \cnt_a_reg[58] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[196]),
        .Q(p_1_in__0[26]),
        .R(1'b0));
  FDRE \cnt_a_reg[59] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[197]),
        .Q(p_1_in__0[27]),
        .R(1'b0));
  FDRE \cnt_a_reg[5] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[143]),
        .Q(\cnt_a_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \cnt_a_reg[60] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[198]),
        .Q(p_1_in__0[28]),
        .R(1'b0));
  FDRE \cnt_a_reg[61] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[199]),
        .Q(p_1_in__0[29]),
        .R(1'b0));
  FDRE \cnt_a_reg[62] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[200]),
        .Q(p_1_in__0[30]),
        .R(1'b0));
  FDRE \cnt_a_reg[63] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[201]),
        .Q(p_1_in__0[31]),
        .R(1'b0));
  FDRE \cnt_a_reg[6] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[144]),
        .Q(\cnt_a_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \cnt_a_reg[7] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[145]),
        .Q(\cnt_a_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \cnt_a_reg[8] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[146]),
        .Q(\cnt_a_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \cnt_a_reg[9] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[147]),
        .Q(\cnt_a_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFF200000002)) 
    cnt_en_a_i_1
       (.I0(s_axi_wdata[0]),
        .I1(s_axi_wdata[1]),
        .I2(cnt_en_a_i_2_n_0),
        .I3(s_axi_awaddr[2]),
        .I4(cnt_en_a_i_3_n_0),
        .I5(p_20_in[16]),
        .O(cnt_en_a_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'hE)) 
    cnt_en_a_i_2
       (.I0(s_axi_awaddr[3]),
        .I1(s_axi_awaddr[4]),
        .O(cnt_en_a_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF777FFFFF)) 
    cnt_en_a_i_3
       (.I0(s_axi_wstrb[0]),
        .I1(s_axi_awaddr[0]),
        .I2(s_axi_wdata[0]),
        .I3(s_axi_wdata[1]),
        .I4(s_axi_awready),
        .I5(s_axi_awaddr[1]),
        .O(cnt_en_a_i_3_n_0));
  FDRE cnt_en_a_reg
       (.C(aclk),
        .CE(1'b1),
        .D(cnt_en_a_i_1_n_0),
        .Q(p_20_in[16]),
        .R(p_0_in__0));
  FDRE cnt_en_reg
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[8]),
        .Q(cnt_en),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h3FFF2000)) 
    \cnt_latch_arm_req_a[0]_i_1 
       (.I0(s_axi_wdata[8]),
        .I1(s_axi_wdata[9]),
        .I2(s_axi_wstrb[1]),
        .I3(\cnt_latch_arm_req_a[0]_i_2_n_0 ),
        .I4(\cnt_latch_arm_req_a_reg_n_0_[0] ),
        .O(\cnt_latch_arm_req_a[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000010001000000)) 
    \cnt_latch_arm_req_a[0]_i_2 
       (.I0(s_axi_awaddr[2]),
        .I1(s_axi_awaddr[0]),
        .I2(s_axi_awaddr[1]),
        .I3(s_axi_awready),
        .I4(s_axi_awaddr[4]),
        .I5(s_axi_awaddr[3]),
        .O(\cnt_latch_arm_req_a[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF3FFF00002000)) 
    \cnt_latch_arm_req_a[1]_i_1 
       (.I0(s_axi_wdata[8]),
        .I1(s_axi_wdata[9]),
        .I2(s_axi_wstrb[1]),
        .I3(s_axi_awaddr[3]),
        .I4(\cnt_latch_arm_req_a[1]_i_2_n_0 ),
        .I5(\cnt_latch_arm_req_a_reg_n_0_[1] ),
        .O(\cnt_latch_arm_req_a[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \cnt_latch_arm_req_a[1]_i_2 
       (.I0(s_axi_awready),
        .I1(s_axi_awaddr[1]),
        .I2(s_axi_awaddr[0]),
        .I3(s_axi_awaddr[2]),
        .O(\cnt_latch_arm_req_a[1]_i_2_n_0 ));
  FDRE \cnt_latch_arm_req_a_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt_latch_arm_req_a[0]_i_1_n_0 ),
        .Q(\cnt_latch_arm_req_a_reg_n_0_[0] ),
        .R(p_0_in__0));
  FDRE \cnt_latch_arm_req_a_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt_latch_arm_req_a[1]_i_1_n_0 ),
        .Q(\cnt_latch_arm_req_a_reg_n_0_[1] ),
        .R(p_0_in__0));
  FDRE \cnt_latch_arm_req_reg[0] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[2]),
        .Q(\cnt_latch_arm_req_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \cnt_latch_arm_req_reg[1] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[3]),
        .Q(p_2_in83_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h4500FFFF45000000)) 
    \cnt_latch_armed[0]_i_1 
       (.I0(\cnt_latch_valid_reg_n_0_[0] ),
        .I1(\cnt_latch_armed[0]_i_2_n_0 ),
        .I2(\rx_enable_reg[0]_0 ),
        .I3(\cnt_latch_arm_req_reg_n_0_[0] ),
        .I4(ts_clk_rx_en_reg_0),
        .I5(\cnt_latch_armed_reg_n_0_[0] ),
        .O(\cnt_latch_armed[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h444FFF4F777FFF7F)) 
    \cnt_latch_armed[0]_i_2 
       (.I0(rx_dma_xfer_req_ovr_val[0]),
        .I1(rx_dma_xfer_req_ovr_en[0]),
        .I2(src_in[5]),
        .I3(rx_data_ready_ovr_en[0]),
        .I4(rx_data_ready_ovr_val[0]),
        .I5(src_in[9]),
        .O(\cnt_latch_armed[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4500FFFF45000000)) 
    \cnt_latch_armed[1]_i_1 
       (.I0(p_2_in79_in),
        .I1(\cnt_latch_armed[1]_i_2_n_0 ),
        .I2(\rx_enable_reg[1]_0 ),
        .I3(p_2_in83_in),
        .I4(ts_clk_rx_en_reg_0),
        .I5(p_0_in82_in),
        .O(\cnt_latch_armed[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h444FFF4F777FFF7F)) 
    \cnt_latch_armed[1]_i_2 
       (.I0(rx_dma_xfer_req_ovr_val[1]),
        .I1(rx_dma_xfer_req_ovr_en[1]),
        .I2(src_in[6]),
        .I3(rx_data_ready_ovr_en[1]),
        .I4(rx_data_ready_ovr_val[1]),
        .I5(src_in[10]),
        .O(\cnt_latch_armed[1]_i_2_n_0 ));
  FDRE \cnt_latch_armed_a_reg[0] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[3]),
        .Q(cnt_latch_armed_a[0]),
        .R(1'b0));
  FDRE \cnt_latch_armed_a_reg[1] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[4]),
        .Q(cnt_latch_armed_a[1]),
        .R(1'b0));
  FDRE \cnt_latch_armed_reg[0] 
       (.C(ts_clk),
        .CE(1'b1),
        .D(\cnt_latch_armed[0]_i_1_n_0 ),
        .Q(\cnt_latch_armed_reg_n_0_[0] ),
        .R(clear));
  FDRE \cnt_latch_armed_reg[1] 
       (.C(ts_clk),
        .CE(1'b1),
        .D(\cnt_latch_armed[1]_i_1_n_0 ),
        .Q(p_0_in82_in),
        .R(clear));
  LUT6 #(
    .INIT(64'h8000FFFF80008000)) 
    \cnt_latch_valid[0]_i_1 
       (.I0(\cnt_latch_armed_reg_n_0_[0] ),
        .I1(\cnt_latch_valid[0]_i_2_n_0 ),
        .I2(\rx_enable_reg[0]_0 ),
        .I3(ts_clk_rx_en_reg_0),
        .I4(cnt_latch_valid_rd[0]),
        .I5(\cnt_latch_valid_reg_n_0_[0] ),
        .O(\cnt_latch_valid[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBB000B088800080)) 
    \cnt_latch_valid[0]_i_2 
       (.I0(rx_dma_xfer_req_ovr_val[0]),
        .I1(rx_dma_xfer_req_ovr_en[0]),
        .I2(src_in[5]),
        .I3(rx_data_ready_ovr_en[0]),
        .I4(rx_data_ready_ovr_val[0]),
        .I5(src_in[9]),
        .O(\cnt_latch_valid[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000FFFF80008000)) 
    \cnt_latch_valid[1]_i_1 
       (.I0(p_0_in82_in),
        .I1(\cnt_latch_valid[1]_i_2_n_0 ),
        .I2(\rx_enable_reg[1]_0 ),
        .I3(ts_clk_rx_en_reg_0),
        .I4(cnt_latch_valid_rd[1]),
        .I5(p_2_in79_in),
        .O(\cnt_latch_valid[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBB000B088800080)) 
    \cnt_latch_valid[1]_i_2 
       (.I0(rx_dma_xfer_req_ovr_val[1]),
        .I1(rx_dma_xfer_req_ovr_en[1]),
        .I2(src_in[6]),
        .I3(rx_data_ready_ovr_en[1]),
        .I4(rx_data_ready_ovr_val[1]),
        .I5(src_in[10]),
        .O(\cnt_latch_valid[1]_i_2_n_0 ));
  FDRE \cnt_latch_valid_a_reg[0] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[1]),
        .Q(p_1_in),
        .R(1'b0));
  FDRE \cnt_latch_valid_a_reg[1] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[2]),
        .Q(p_1_in52_in),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hA8)) 
    \cnt_latch_valid_rd_a[0]_i_1 
       (.I0(p_1_in),
        .I1(cnt_latched0_a_rd_buf),
        .I2(\cnt_latch_valid_rd_a_reg_n_0_[0] ),
        .O(\cnt_latch_valid_rd_a[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \cnt_latch_valid_rd_a[1]_i_1 
       (.I0(p_1_in52_in),
        .I1(cnt_latched1_a_rd_buf),
        .I2(\cnt_latch_valid_rd_a_reg_n_0_[1] ),
        .O(\cnt_latch_valid_rd_a[1]_i_1_n_0 ));
  FDRE \cnt_latch_valid_rd_a_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt_latch_valid_rd_a[0]_i_1_n_0 ),
        .Q(\cnt_latch_valid_rd_a_reg_n_0_[0] ),
        .R(p_0_in__0));
  FDRE \cnt_latch_valid_rd_a_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt_latch_valid_rd_a[1]_i_1_n_0 ),
        .Q(\cnt_latch_valid_rd_a_reg_n_0_[1] ),
        .R(p_0_in__0));
  FDRE \cnt_latch_valid_rd_reg[0] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[0]),
        .Q(cnt_latch_valid_rd[0]),
        .R(1'b0));
  FDRE \cnt_latch_valid_rd_reg[1] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[1]),
        .Q(cnt_latch_valid_rd[1]),
        .R(1'b0));
  FDRE \cnt_latch_valid_reg[0] 
       (.C(ts_clk),
        .CE(1'b1),
        .D(\cnt_latch_valid[0]_i_1_n_0 ),
        .Q(\cnt_latch_valid_reg_n_0_[0] ),
        .R(clear));
  FDRE \cnt_latch_valid_reg[1] 
       (.C(ts_clk),
        .CE(1'b1),
        .D(\cnt_latch_valid[1]_i_1_n_0 ),
        .Q(p_2_in79_in),
        .R(clear));
  LUT4 #(
    .INIT(16'h8000)) 
    \cnt_latched0[63]_i_1 
       (.I0(\cnt_latch_armed_reg_n_0_[0] ),
        .I1(\cnt_latch_valid[0]_i_2_n_0 ),
        .I2(\rx_enable_reg[0]_0 ),
        .I3(ts_clk_rx_en_reg_0),
        .O(cnt_latched0));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    \cnt_latched0_a_rd_buf[31]_i_1 
       (.I0(s_axi_araddr[0]),
        .I1(s_axi_araddr[1]),
        .I2(s_axi_arvalid),
        .I3(s_axi_rvalid_reg_0),
        .I4(s_axi_araddr[2]),
        .I5(\cnt_latched0_a_rd_buf[31]_i_2_n_0 ),
        .O(cnt_latched0_a_rd_buf));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \cnt_latched0_a_rd_buf[31]_i_2 
       (.I0(s_axi_araddr[3]),
        .I1(s_axi_araddr[4]),
        .O(\cnt_latched0_a_rd_buf[31]_i_2_n_0 ));
  FDRE \cnt_latched0_a_rd_buf_reg[0] 
       (.C(aclk),
        .CE(cnt_latched0_a_rd_buf),
        .D(cnt_latched0_a[32]),
        .Q(\cnt_latched0_a_rd_buf_reg_n_0_[0] ),
        .R(p_0_in__0));
  FDRE \cnt_latched0_a_rd_buf_reg[10] 
       (.C(aclk),
        .CE(cnt_latched0_a_rd_buf),
        .D(cnt_latched0_a[42]),
        .Q(\cnt_latched0_a_rd_buf_reg_n_0_[10] ),
        .R(p_0_in__0));
  FDRE \cnt_latched0_a_rd_buf_reg[11] 
       (.C(aclk),
        .CE(cnt_latched0_a_rd_buf),
        .D(cnt_latched0_a[43]),
        .Q(\cnt_latched0_a_rd_buf_reg_n_0_[11] ),
        .R(p_0_in__0));
  FDRE \cnt_latched0_a_rd_buf_reg[12] 
       (.C(aclk),
        .CE(cnt_latched0_a_rd_buf),
        .D(cnt_latched0_a[44]),
        .Q(\cnt_latched0_a_rd_buf_reg_n_0_[12] ),
        .R(p_0_in__0));
  FDRE \cnt_latched0_a_rd_buf_reg[13] 
       (.C(aclk),
        .CE(cnt_latched0_a_rd_buf),
        .D(cnt_latched0_a[45]),
        .Q(\cnt_latched0_a_rd_buf_reg_n_0_[13] ),
        .R(p_0_in__0));
  FDRE \cnt_latched0_a_rd_buf_reg[14] 
       (.C(aclk),
        .CE(cnt_latched0_a_rd_buf),
        .D(cnt_latched0_a[46]),
        .Q(\cnt_latched0_a_rd_buf_reg_n_0_[14] ),
        .R(p_0_in__0));
  FDRE \cnt_latched0_a_rd_buf_reg[15] 
       (.C(aclk),
        .CE(cnt_latched0_a_rd_buf),
        .D(cnt_latched0_a[47]),
        .Q(\cnt_latched0_a_rd_buf_reg_n_0_[15] ),
        .R(p_0_in__0));
  FDRE \cnt_latched0_a_rd_buf_reg[16] 
       (.C(aclk),
        .CE(cnt_latched0_a_rd_buf),
        .D(cnt_latched0_a[48]),
        .Q(\cnt_latched0_a_rd_buf_reg_n_0_[16] ),
        .R(p_0_in__0));
  FDRE \cnt_latched0_a_rd_buf_reg[17] 
       (.C(aclk),
        .CE(cnt_latched0_a_rd_buf),
        .D(cnt_latched0_a[49]),
        .Q(\cnt_latched0_a_rd_buf_reg_n_0_[17] ),
        .R(p_0_in__0));
  FDRE \cnt_latched0_a_rd_buf_reg[18] 
       (.C(aclk),
        .CE(cnt_latched0_a_rd_buf),
        .D(cnt_latched0_a[50]),
        .Q(\cnt_latched0_a_rd_buf_reg_n_0_[18] ),
        .R(p_0_in__0));
  FDRE \cnt_latched0_a_rd_buf_reg[19] 
       (.C(aclk),
        .CE(cnt_latched0_a_rd_buf),
        .D(cnt_latched0_a[51]),
        .Q(\cnt_latched0_a_rd_buf_reg_n_0_[19] ),
        .R(p_0_in__0));
  FDRE \cnt_latched0_a_rd_buf_reg[1] 
       (.C(aclk),
        .CE(cnt_latched0_a_rd_buf),
        .D(cnt_latched0_a[33]),
        .Q(\cnt_latched0_a_rd_buf_reg_n_0_[1] ),
        .R(p_0_in__0));
  FDRE \cnt_latched0_a_rd_buf_reg[20] 
       (.C(aclk),
        .CE(cnt_latched0_a_rd_buf),
        .D(cnt_latched0_a[52]),
        .Q(\cnt_latched0_a_rd_buf_reg_n_0_[20] ),
        .R(p_0_in__0));
  FDRE \cnt_latched0_a_rd_buf_reg[21] 
       (.C(aclk),
        .CE(cnt_latched0_a_rd_buf),
        .D(cnt_latched0_a[53]),
        .Q(\cnt_latched0_a_rd_buf_reg_n_0_[21] ),
        .R(p_0_in__0));
  FDRE \cnt_latched0_a_rd_buf_reg[22] 
       (.C(aclk),
        .CE(cnt_latched0_a_rd_buf),
        .D(cnt_latched0_a[54]),
        .Q(\cnt_latched0_a_rd_buf_reg_n_0_[22] ),
        .R(p_0_in__0));
  FDRE \cnt_latched0_a_rd_buf_reg[23] 
       (.C(aclk),
        .CE(cnt_latched0_a_rd_buf),
        .D(cnt_latched0_a[55]),
        .Q(\cnt_latched0_a_rd_buf_reg_n_0_[23] ),
        .R(p_0_in__0));
  FDRE \cnt_latched0_a_rd_buf_reg[24] 
       (.C(aclk),
        .CE(cnt_latched0_a_rd_buf),
        .D(cnt_latched0_a[56]),
        .Q(\cnt_latched0_a_rd_buf_reg_n_0_[24] ),
        .R(p_0_in__0));
  FDRE \cnt_latched0_a_rd_buf_reg[25] 
       (.C(aclk),
        .CE(cnt_latched0_a_rd_buf),
        .D(cnt_latched0_a[57]),
        .Q(\cnt_latched0_a_rd_buf_reg_n_0_[25] ),
        .R(p_0_in__0));
  FDRE \cnt_latched0_a_rd_buf_reg[26] 
       (.C(aclk),
        .CE(cnt_latched0_a_rd_buf),
        .D(cnt_latched0_a[58]),
        .Q(\cnt_latched0_a_rd_buf_reg_n_0_[26] ),
        .R(p_0_in__0));
  FDRE \cnt_latched0_a_rd_buf_reg[27] 
       (.C(aclk),
        .CE(cnt_latched0_a_rd_buf),
        .D(cnt_latched0_a[59]),
        .Q(\cnt_latched0_a_rd_buf_reg_n_0_[27] ),
        .R(p_0_in__0));
  FDRE \cnt_latched0_a_rd_buf_reg[28] 
       (.C(aclk),
        .CE(cnt_latched0_a_rd_buf),
        .D(cnt_latched0_a[60]),
        .Q(\cnt_latched0_a_rd_buf_reg_n_0_[28] ),
        .R(p_0_in__0));
  FDRE \cnt_latched0_a_rd_buf_reg[29] 
       (.C(aclk),
        .CE(cnt_latched0_a_rd_buf),
        .D(cnt_latched0_a[61]),
        .Q(\cnt_latched0_a_rd_buf_reg_n_0_[29] ),
        .R(p_0_in__0));
  FDRE \cnt_latched0_a_rd_buf_reg[2] 
       (.C(aclk),
        .CE(cnt_latched0_a_rd_buf),
        .D(cnt_latched0_a[34]),
        .Q(\cnt_latched0_a_rd_buf_reg_n_0_[2] ),
        .R(p_0_in__0));
  FDRE \cnt_latched0_a_rd_buf_reg[30] 
       (.C(aclk),
        .CE(cnt_latched0_a_rd_buf),
        .D(cnt_latched0_a[62]),
        .Q(\cnt_latched0_a_rd_buf_reg_n_0_[30] ),
        .R(p_0_in__0));
  FDRE \cnt_latched0_a_rd_buf_reg[31] 
       (.C(aclk),
        .CE(cnt_latched0_a_rd_buf),
        .D(cnt_latched0_a[63]),
        .Q(\cnt_latched0_a_rd_buf_reg_n_0_[31] ),
        .R(p_0_in__0));
  FDRE \cnt_latched0_a_rd_buf_reg[3] 
       (.C(aclk),
        .CE(cnt_latched0_a_rd_buf),
        .D(cnt_latched0_a[35]),
        .Q(\cnt_latched0_a_rd_buf_reg_n_0_[3] ),
        .R(p_0_in__0));
  FDRE \cnt_latched0_a_rd_buf_reg[4] 
       (.C(aclk),
        .CE(cnt_latched0_a_rd_buf),
        .D(cnt_latched0_a[36]),
        .Q(\cnt_latched0_a_rd_buf_reg_n_0_[4] ),
        .R(p_0_in__0));
  FDRE \cnt_latched0_a_rd_buf_reg[5] 
       (.C(aclk),
        .CE(cnt_latched0_a_rd_buf),
        .D(cnt_latched0_a[37]),
        .Q(\cnt_latched0_a_rd_buf_reg_n_0_[5] ),
        .R(p_0_in__0));
  FDRE \cnt_latched0_a_rd_buf_reg[6] 
       (.C(aclk),
        .CE(cnt_latched0_a_rd_buf),
        .D(cnt_latched0_a[38]),
        .Q(\cnt_latched0_a_rd_buf_reg_n_0_[6] ),
        .R(p_0_in__0));
  FDRE \cnt_latched0_a_rd_buf_reg[7] 
       (.C(aclk),
        .CE(cnt_latched0_a_rd_buf),
        .D(cnt_latched0_a[39]),
        .Q(\cnt_latched0_a_rd_buf_reg_n_0_[7] ),
        .R(p_0_in__0));
  FDRE \cnt_latched0_a_rd_buf_reg[8] 
       (.C(aclk),
        .CE(cnt_latched0_a_rd_buf),
        .D(cnt_latched0_a[40]),
        .Q(\cnt_latched0_a_rd_buf_reg_n_0_[8] ),
        .R(p_0_in__0));
  FDRE \cnt_latched0_a_rd_buf_reg[9] 
       (.C(aclk),
        .CE(cnt_latched0_a_rd_buf),
        .D(cnt_latched0_a[41]),
        .Q(\cnt_latched0_a_rd_buf_reg_n_0_[9] ),
        .R(p_0_in__0));
  FDRE \cnt_latched0_a_reg[0] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[74]),
        .Q(cnt_latched0_a[0]),
        .R(1'b0));
  FDRE \cnt_latched0_a_reg[10] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[84]),
        .Q(cnt_latched0_a[10]),
        .R(1'b0));
  FDRE \cnt_latched0_a_reg[11] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[85]),
        .Q(cnt_latched0_a[11]),
        .R(1'b0));
  FDRE \cnt_latched0_a_reg[12] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[86]),
        .Q(cnt_latched0_a[12]),
        .R(1'b0));
  FDRE \cnt_latched0_a_reg[13] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[87]),
        .Q(cnt_latched0_a[13]),
        .R(1'b0));
  FDRE \cnt_latched0_a_reg[14] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[88]),
        .Q(cnt_latched0_a[14]),
        .R(1'b0));
  FDRE \cnt_latched0_a_reg[15] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[89]),
        .Q(cnt_latched0_a[15]),
        .R(1'b0));
  FDRE \cnt_latched0_a_reg[16] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[90]),
        .Q(cnt_latched0_a[16]),
        .R(1'b0));
  FDRE \cnt_latched0_a_reg[17] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[91]),
        .Q(cnt_latched0_a[17]),
        .R(1'b0));
  FDRE \cnt_latched0_a_reg[18] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[92]),
        .Q(cnt_latched0_a[18]),
        .R(1'b0));
  FDRE \cnt_latched0_a_reg[19] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[93]),
        .Q(cnt_latched0_a[19]),
        .R(1'b0));
  FDRE \cnt_latched0_a_reg[1] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[75]),
        .Q(cnt_latched0_a[1]),
        .R(1'b0));
  FDRE \cnt_latched0_a_reg[20] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[94]),
        .Q(cnt_latched0_a[20]),
        .R(1'b0));
  FDRE \cnt_latched0_a_reg[21] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[95]),
        .Q(cnt_latched0_a[21]),
        .R(1'b0));
  FDRE \cnt_latched0_a_reg[22] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[96]),
        .Q(cnt_latched0_a[22]),
        .R(1'b0));
  FDRE \cnt_latched0_a_reg[23] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[97]),
        .Q(cnt_latched0_a[23]),
        .R(1'b0));
  FDRE \cnt_latched0_a_reg[24] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[98]),
        .Q(cnt_latched0_a[24]),
        .R(1'b0));
  FDRE \cnt_latched0_a_reg[25] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[99]),
        .Q(cnt_latched0_a[25]),
        .R(1'b0));
  FDRE \cnt_latched0_a_reg[26] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[100]),
        .Q(cnt_latched0_a[26]),
        .R(1'b0));
  FDRE \cnt_latched0_a_reg[27] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[101]),
        .Q(cnt_latched0_a[27]),
        .R(1'b0));
  FDRE \cnt_latched0_a_reg[28] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[102]),
        .Q(cnt_latched0_a[28]),
        .R(1'b0));
  FDRE \cnt_latched0_a_reg[29] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[103]),
        .Q(cnt_latched0_a[29]),
        .R(1'b0));
  FDRE \cnt_latched0_a_reg[2] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[76]),
        .Q(cnt_latched0_a[2]),
        .R(1'b0));
  FDRE \cnt_latched0_a_reg[30] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[104]),
        .Q(cnt_latched0_a[30]),
        .R(1'b0));
  FDRE \cnt_latched0_a_reg[31] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[105]),
        .Q(cnt_latched0_a[31]),
        .R(1'b0));
  FDRE \cnt_latched0_a_reg[32] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[106]),
        .Q(cnt_latched0_a[32]),
        .R(1'b0));
  FDRE \cnt_latched0_a_reg[33] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[107]),
        .Q(cnt_latched0_a[33]),
        .R(1'b0));
  FDRE \cnt_latched0_a_reg[34] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[108]),
        .Q(cnt_latched0_a[34]),
        .R(1'b0));
  FDRE \cnt_latched0_a_reg[35] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[109]),
        .Q(cnt_latched0_a[35]),
        .R(1'b0));
  FDRE \cnt_latched0_a_reg[36] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[110]),
        .Q(cnt_latched0_a[36]),
        .R(1'b0));
  FDRE \cnt_latched0_a_reg[37] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[111]),
        .Q(cnt_latched0_a[37]),
        .R(1'b0));
  FDRE \cnt_latched0_a_reg[38] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[112]),
        .Q(cnt_latched0_a[38]),
        .R(1'b0));
  FDRE \cnt_latched0_a_reg[39] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[113]),
        .Q(cnt_latched0_a[39]),
        .R(1'b0));
  FDRE \cnt_latched0_a_reg[3] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[77]),
        .Q(cnt_latched0_a[3]),
        .R(1'b0));
  FDRE \cnt_latched0_a_reg[40] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[114]),
        .Q(cnt_latched0_a[40]),
        .R(1'b0));
  FDRE \cnt_latched0_a_reg[41] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[115]),
        .Q(cnt_latched0_a[41]),
        .R(1'b0));
  FDRE \cnt_latched0_a_reg[42] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[116]),
        .Q(cnt_latched0_a[42]),
        .R(1'b0));
  FDRE \cnt_latched0_a_reg[43] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[117]),
        .Q(cnt_latched0_a[43]),
        .R(1'b0));
  FDRE \cnt_latched0_a_reg[44] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[118]),
        .Q(cnt_latched0_a[44]),
        .R(1'b0));
  FDRE \cnt_latched0_a_reg[45] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[119]),
        .Q(cnt_latched0_a[45]),
        .R(1'b0));
  FDRE \cnt_latched0_a_reg[46] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[120]),
        .Q(cnt_latched0_a[46]),
        .R(1'b0));
  FDRE \cnt_latched0_a_reg[47] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[121]),
        .Q(cnt_latched0_a[47]),
        .R(1'b0));
  FDRE \cnt_latched0_a_reg[48] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[122]),
        .Q(cnt_latched0_a[48]),
        .R(1'b0));
  FDRE \cnt_latched0_a_reg[49] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[123]),
        .Q(cnt_latched0_a[49]),
        .R(1'b0));
  FDRE \cnt_latched0_a_reg[4] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[78]),
        .Q(cnt_latched0_a[4]),
        .R(1'b0));
  FDRE \cnt_latched0_a_reg[50] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[124]),
        .Q(cnt_latched0_a[50]),
        .R(1'b0));
  FDRE \cnt_latched0_a_reg[51] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[125]),
        .Q(cnt_latched0_a[51]),
        .R(1'b0));
  FDRE \cnt_latched0_a_reg[52] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[126]),
        .Q(cnt_latched0_a[52]),
        .R(1'b0));
  FDRE \cnt_latched0_a_reg[53] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[127]),
        .Q(cnt_latched0_a[53]),
        .R(1'b0));
  FDRE \cnt_latched0_a_reg[54] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[128]),
        .Q(cnt_latched0_a[54]),
        .R(1'b0));
  FDRE \cnt_latched0_a_reg[55] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[129]),
        .Q(cnt_latched0_a[55]),
        .R(1'b0));
  FDRE \cnt_latched0_a_reg[56] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[130]),
        .Q(cnt_latched0_a[56]),
        .R(1'b0));
  FDRE \cnt_latched0_a_reg[57] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[131]),
        .Q(cnt_latched0_a[57]),
        .R(1'b0));
  FDRE \cnt_latched0_a_reg[58] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[132]),
        .Q(cnt_latched0_a[58]),
        .R(1'b0));
  FDRE \cnt_latched0_a_reg[59] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[133]),
        .Q(cnt_latched0_a[59]),
        .R(1'b0));
  FDRE \cnt_latched0_a_reg[5] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[79]),
        .Q(cnt_latched0_a[5]),
        .R(1'b0));
  FDRE \cnt_latched0_a_reg[60] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[134]),
        .Q(cnt_latched0_a[60]),
        .R(1'b0));
  FDRE \cnt_latched0_a_reg[61] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[135]),
        .Q(cnt_latched0_a[61]),
        .R(1'b0));
  FDRE \cnt_latched0_a_reg[62] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[136]),
        .Q(cnt_latched0_a[62]),
        .R(1'b0));
  FDRE \cnt_latched0_a_reg[63] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[137]),
        .Q(cnt_latched0_a[63]),
        .R(1'b0));
  FDRE \cnt_latched0_a_reg[6] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[80]),
        .Q(cnt_latched0_a[6]),
        .R(1'b0));
  FDRE \cnt_latched0_a_reg[7] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[81]),
        .Q(cnt_latched0_a[7]),
        .R(1'b0));
  FDRE \cnt_latched0_a_reg[8] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[82]),
        .Q(cnt_latched0_a[8]),
        .R(1'b0));
  FDRE \cnt_latched0_a_reg[9] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[83]),
        .Q(cnt_latched0_a[9]),
        .R(1'b0));
  FDRE \cnt_latched0_reg[0] 
       (.C(ts_clk),
        .CE(cnt_latched0),
        .D(cnt_reg[0]),
        .Q(\cnt_latched0_reg_n_0_[0] ),
        .R(clear));
  FDRE \cnt_latched0_reg[10] 
       (.C(ts_clk),
        .CE(cnt_latched0),
        .D(cnt_reg[10]),
        .Q(\cnt_latched0_reg_n_0_[10] ),
        .R(clear));
  FDRE \cnt_latched0_reg[11] 
       (.C(ts_clk),
        .CE(cnt_latched0),
        .D(cnt_reg[11]),
        .Q(\cnt_latched0_reg_n_0_[11] ),
        .R(clear));
  FDRE \cnt_latched0_reg[12] 
       (.C(ts_clk),
        .CE(cnt_latched0),
        .D(cnt_reg[12]),
        .Q(\cnt_latched0_reg_n_0_[12] ),
        .R(clear));
  FDRE \cnt_latched0_reg[13] 
       (.C(ts_clk),
        .CE(cnt_latched0),
        .D(cnt_reg[13]),
        .Q(\cnt_latched0_reg_n_0_[13] ),
        .R(clear));
  FDRE \cnt_latched0_reg[14] 
       (.C(ts_clk),
        .CE(cnt_latched0),
        .D(cnt_reg[14]),
        .Q(\cnt_latched0_reg_n_0_[14] ),
        .R(clear));
  FDRE \cnt_latched0_reg[15] 
       (.C(ts_clk),
        .CE(cnt_latched0),
        .D(cnt_reg[15]),
        .Q(\cnt_latched0_reg_n_0_[15] ),
        .R(clear));
  FDRE \cnt_latched0_reg[16] 
       (.C(ts_clk),
        .CE(cnt_latched0),
        .D(cnt_reg[16]),
        .Q(\cnt_latched0_reg_n_0_[16] ),
        .R(clear));
  FDRE \cnt_latched0_reg[17] 
       (.C(ts_clk),
        .CE(cnt_latched0),
        .D(cnt_reg[17]),
        .Q(\cnt_latched0_reg_n_0_[17] ),
        .R(clear));
  FDRE \cnt_latched0_reg[18] 
       (.C(ts_clk),
        .CE(cnt_latched0),
        .D(cnt_reg[18]),
        .Q(\cnt_latched0_reg_n_0_[18] ),
        .R(clear));
  FDRE \cnt_latched0_reg[19] 
       (.C(ts_clk),
        .CE(cnt_latched0),
        .D(cnt_reg[19]),
        .Q(\cnt_latched0_reg_n_0_[19] ),
        .R(clear));
  FDRE \cnt_latched0_reg[1] 
       (.C(ts_clk),
        .CE(cnt_latched0),
        .D(cnt_reg[1]),
        .Q(\cnt_latched0_reg_n_0_[1] ),
        .R(clear));
  FDRE \cnt_latched0_reg[20] 
       (.C(ts_clk),
        .CE(cnt_latched0),
        .D(cnt_reg[20]),
        .Q(\cnt_latched0_reg_n_0_[20] ),
        .R(clear));
  FDRE \cnt_latched0_reg[21] 
       (.C(ts_clk),
        .CE(cnt_latched0),
        .D(cnt_reg[21]),
        .Q(\cnt_latched0_reg_n_0_[21] ),
        .R(clear));
  FDRE \cnt_latched0_reg[22] 
       (.C(ts_clk),
        .CE(cnt_latched0),
        .D(cnt_reg[22]),
        .Q(\cnt_latched0_reg_n_0_[22] ),
        .R(clear));
  FDRE \cnt_latched0_reg[23] 
       (.C(ts_clk),
        .CE(cnt_latched0),
        .D(cnt_reg[23]),
        .Q(\cnt_latched0_reg_n_0_[23] ),
        .R(clear));
  FDRE \cnt_latched0_reg[24] 
       (.C(ts_clk),
        .CE(cnt_latched0),
        .D(cnt_reg[24]),
        .Q(\cnt_latched0_reg_n_0_[24] ),
        .R(clear));
  FDRE \cnt_latched0_reg[25] 
       (.C(ts_clk),
        .CE(cnt_latched0),
        .D(cnt_reg[25]),
        .Q(\cnt_latched0_reg_n_0_[25] ),
        .R(clear));
  FDRE \cnt_latched0_reg[26] 
       (.C(ts_clk),
        .CE(cnt_latched0),
        .D(cnt_reg[26]),
        .Q(\cnt_latched0_reg_n_0_[26] ),
        .R(clear));
  FDRE \cnt_latched0_reg[27] 
       (.C(ts_clk),
        .CE(cnt_latched0),
        .D(cnt_reg[27]),
        .Q(\cnt_latched0_reg_n_0_[27] ),
        .R(clear));
  FDRE \cnt_latched0_reg[28] 
       (.C(ts_clk),
        .CE(cnt_latched0),
        .D(cnt_reg[28]),
        .Q(\cnt_latched0_reg_n_0_[28] ),
        .R(clear));
  FDRE \cnt_latched0_reg[29] 
       (.C(ts_clk),
        .CE(cnt_latched0),
        .D(cnt_reg[29]),
        .Q(\cnt_latched0_reg_n_0_[29] ),
        .R(clear));
  FDRE \cnt_latched0_reg[2] 
       (.C(ts_clk),
        .CE(cnt_latched0),
        .D(cnt_reg[2]),
        .Q(\cnt_latched0_reg_n_0_[2] ),
        .R(clear));
  FDRE \cnt_latched0_reg[30] 
       (.C(ts_clk),
        .CE(cnt_latched0),
        .D(cnt_reg[30]),
        .Q(\cnt_latched0_reg_n_0_[30] ),
        .R(clear));
  FDRE \cnt_latched0_reg[31] 
       (.C(ts_clk),
        .CE(cnt_latched0),
        .D(cnt_reg[31]),
        .Q(\cnt_latched0_reg_n_0_[31] ),
        .R(clear));
  FDRE \cnt_latched0_reg[32] 
       (.C(ts_clk),
        .CE(cnt_latched0),
        .D(cnt_reg[32]),
        .Q(\cnt_latched0_reg_n_0_[32] ),
        .R(clear));
  FDRE \cnt_latched0_reg[33] 
       (.C(ts_clk),
        .CE(cnt_latched0),
        .D(cnt_reg[33]),
        .Q(\cnt_latched0_reg_n_0_[33] ),
        .R(clear));
  FDRE \cnt_latched0_reg[34] 
       (.C(ts_clk),
        .CE(cnt_latched0),
        .D(cnt_reg[34]),
        .Q(\cnt_latched0_reg_n_0_[34] ),
        .R(clear));
  FDRE \cnt_latched0_reg[35] 
       (.C(ts_clk),
        .CE(cnt_latched0),
        .D(cnt_reg[35]),
        .Q(\cnt_latched0_reg_n_0_[35] ),
        .R(clear));
  FDRE \cnt_latched0_reg[36] 
       (.C(ts_clk),
        .CE(cnt_latched0),
        .D(cnt_reg[36]),
        .Q(\cnt_latched0_reg_n_0_[36] ),
        .R(clear));
  FDRE \cnt_latched0_reg[37] 
       (.C(ts_clk),
        .CE(cnt_latched0),
        .D(cnt_reg[37]),
        .Q(\cnt_latched0_reg_n_0_[37] ),
        .R(clear));
  FDRE \cnt_latched0_reg[38] 
       (.C(ts_clk),
        .CE(cnt_latched0),
        .D(cnt_reg[38]),
        .Q(\cnt_latched0_reg_n_0_[38] ),
        .R(clear));
  FDRE \cnt_latched0_reg[39] 
       (.C(ts_clk),
        .CE(cnt_latched0),
        .D(cnt_reg[39]),
        .Q(\cnt_latched0_reg_n_0_[39] ),
        .R(clear));
  FDRE \cnt_latched0_reg[3] 
       (.C(ts_clk),
        .CE(cnt_latched0),
        .D(cnt_reg[3]),
        .Q(\cnt_latched0_reg_n_0_[3] ),
        .R(clear));
  FDRE \cnt_latched0_reg[40] 
       (.C(ts_clk),
        .CE(cnt_latched0),
        .D(cnt_reg[40]),
        .Q(\cnt_latched0_reg_n_0_[40] ),
        .R(clear));
  FDRE \cnt_latched0_reg[41] 
       (.C(ts_clk),
        .CE(cnt_latched0),
        .D(cnt_reg[41]),
        .Q(\cnt_latched0_reg_n_0_[41] ),
        .R(clear));
  FDRE \cnt_latched0_reg[42] 
       (.C(ts_clk),
        .CE(cnt_latched0),
        .D(cnt_reg[42]),
        .Q(\cnt_latched0_reg_n_0_[42] ),
        .R(clear));
  FDRE \cnt_latched0_reg[43] 
       (.C(ts_clk),
        .CE(cnt_latched0),
        .D(cnt_reg[43]),
        .Q(\cnt_latched0_reg_n_0_[43] ),
        .R(clear));
  FDRE \cnt_latched0_reg[44] 
       (.C(ts_clk),
        .CE(cnt_latched0),
        .D(cnt_reg[44]),
        .Q(\cnt_latched0_reg_n_0_[44] ),
        .R(clear));
  FDRE \cnt_latched0_reg[45] 
       (.C(ts_clk),
        .CE(cnt_latched0),
        .D(cnt_reg[45]),
        .Q(\cnt_latched0_reg_n_0_[45] ),
        .R(clear));
  FDRE \cnt_latched0_reg[46] 
       (.C(ts_clk),
        .CE(cnt_latched0),
        .D(cnt_reg[46]),
        .Q(\cnt_latched0_reg_n_0_[46] ),
        .R(clear));
  FDRE \cnt_latched0_reg[47] 
       (.C(ts_clk),
        .CE(cnt_latched0),
        .D(cnt_reg[47]),
        .Q(\cnt_latched0_reg_n_0_[47] ),
        .R(clear));
  FDRE \cnt_latched0_reg[48] 
       (.C(ts_clk),
        .CE(cnt_latched0),
        .D(cnt_reg[48]),
        .Q(\cnt_latched0_reg_n_0_[48] ),
        .R(clear));
  FDRE \cnt_latched0_reg[49] 
       (.C(ts_clk),
        .CE(cnt_latched0),
        .D(cnt_reg[49]),
        .Q(\cnt_latched0_reg_n_0_[49] ),
        .R(clear));
  FDRE \cnt_latched0_reg[4] 
       (.C(ts_clk),
        .CE(cnt_latched0),
        .D(cnt_reg[4]),
        .Q(\cnt_latched0_reg_n_0_[4] ),
        .R(clear));
  FDRE \cnt_latched0_reg[50] 
       (.C(ts_clk),
        .CE(cnt_latched0),
        .D(cnt_reg[50]),
        .Q(\cnt_latched0_reg_n_0_[50] ),
        .R(clear));
  FDRE \cnt_latched0_reg[51] 
       (.C(ts_clk),
        .CE(cnt_latched0),
        .D(cnt_reg[51]),
        .Q(\cnt_latched0_reg_n_0_[51] ),
        .R(clear));
  FDRE \cnt_latched0_reg[52] 
       (.C(ts_clk),
        .CE(cnt_latched0),
        .D(cnt_reg[52]),
        .Q(\cnt_latched0_reg_n_0_[52] ),
        .R(clear));
  FDRE \cnt_latched0_reg[53] 
       (.C(ts_clk),
        .CE(cnt_latched0),
        .D(cnt_reg[53]),
        .Q(\cnt_latched0_reg_n_0_[53] ),
        .R(clear));
  FDRE \cnt_latched0_reg[54] 
       (.C(ts_clk),
        .CE(cnt_latched0),
        .D(cnt_reg[54]),
        .Q(\cnt_latched0_reg_n_0_[54] ),
        .R(clear));
  FDRE \cnt_latched0_reg[55] 
       (.C(ts_clk),
        .CE(cnt_latched0),
        .D(cnt_reg[55]),
        .Q(\cnt_latched0_reg_n_0_[55] ),
        .R(clear));
  FDRE \cnt_latched0_reg[56] 
       (.C(ts_clk),
        .CE(cnt_latched0),
        .D(cnt_reg[56]),
        .Q(\cnt_latched0_reg_n_0_[56] ),
        .R(clear));
  FDRE \cnt_latched0_reg[57] 
       (.C(ts_clk),
        .CE(cnt_latched0),
        .D(cnt_reg[57]),
        .Q(\cnt_latched0_reg_n_0_[57] ),
        .R(clear));
  FDRE \cnt_latched0_reg[58] 
       (.C(ts_clk),
        .CE(cnt_latched0),
        .D(cnt_reg[58]),
        .Q(\cnt_latched0_reg_n_0_[58] ),
        .R(clear));
  FDRE \cnt_latched0_reg[59] 
       (.C(ts_clk),
        .CE(cnt_latched0),
        .D(cnt_reg[59]),
        .Q(\cnt_latched0_reg_n_0_[59] ),
        .R(clear));
  FDRE \cnt_latched0_reg[5] 
       (.C(ts_clk),
        .CE(cnt_latched0),
        .D(cnt_reg[5]),
        .Q(\cnt_latched0_reg_n_0_[5] ),
        .R(clear));
  FDRE \cnt_latched0_reg[60] 
       (.C(ts_clk),
        .CE(cnt_latched0),
        .D(cnt_reg[60]),
        .Q(\cnt_latched0_reg_n_0_[60] ),
        .R(clear));
  FDRE \cnt_latched0_reg[61] 
       (.C(ts_clk),
        .CE(cnt_latched0),
        .D(cnt_reg[61]),
        .Q(\cnt_latched0_reg_n_0_[61] ),
        .R(clear));
  FDRE \cnt_latched0_reg[62] 
       (.C(ts_clk),
        .CE(cnt_latched0),
        .D(cnt_reg[62]),
        .Q(\cnt_latched0_reg_n_0_[62] ),
        .R(clear));
  FDRE \cnt_latched0_reg[63] 
       (.C(ts_clk),
        .CE(cnt_latched0),
        .D(cnt_reg[63]),
        .Q(\cnt_latched0_reg_n_0_[63] ),
        .R(clear));
  FDRE \cnt_latched0_reg[6] 
       (.C(ts_clk),
        .CE(cnt_latched0),
        .D(cnt_reg[6]),
        .Q(\cnt_latched0_reg_n_0_[6] ),
        .R(clear));
  FDRE \cnt_latched0_reg[7] 
       (.C(ts_clk),
        .CE(cnt_latched0),
        .D(cnt_reg[7]),
        .Q(\cnt_latched0_reg_n_0_[7] ),
        .R(clear));
  FDRE \cnt_latched0_reg[8] 
       (.C(ts_clk),
        .CE(cnt_latched0),
        .D(cnt_reg[8]),
        .Q(\cnt_latched0_reg_n_0_[8] ),
        .R(clear));
  FDRE \cnt_latched0_reg[9] 
       (.C(ts_clk),
        .CE(cnt_latched0),
        .D(cnt_reg[9]),
        .Q(\cnt_latched0_reg_n_0_[9] ),
        .R(clear));
  LUT4 #(
    .INIT(16'h8000)) 
    \cnt_latched1[63]_i_1 
       (.I0(p_0_in82_in),
        .I1(\cnt_latch_valid[1]_i_2_n_0 ),
        .I2(\rx_enable_reg[1]_0 ),
        .I3(ts_clk_rx_en_reg_0),
        .O(cnt_latched1));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    \cnt_latched1_a_rd_buf[31]_i_1 
       (.I0(s_axi_araddr[0]),
        .I1(s_axi_araddr[1]),
        .I2(s_axi_arvalid),
        .I3(s_axi_rvalid_reg_0),
        .I4(s_axi_araddr[2]),
        .I5(\cnt_latched1_a_rd_buf[31]_i_2_n_0 ),
        .O(cnt_latched1_a_rd_buf));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \cnt_latched1_a_rd_buf[31]_i_2 
       (.I0(s_axi_araddr[4]),
        .I1(s_axi_araddr[3]),
        .O(\cnt_latched1_a_rd_buf[31]_i_2_n_0 ));
  FDRE \cnt_latched1_a_rd_buf_reg[0] 
       (.C(aclk),
        .CE(cnt_latched1_a_rd_buf),
        .D(cnt_latched1_a[32]),
        .Q(\cnt_latched1_a_rd_buf_reg_n_0_[0] ),
        .R(p_0_in__0));
  FDRE \cnt_latched1_a_rd_buf_reg[10] 
       (.C(aclk),
        .CE(cnt_latched1_a_rd_buf),
        .D(cnt_latched1_a[42]),
        .Q(\cnt_latched1_a_rd_buf_reg_n_0_[10] ),
        .R(p_0_in__0));
  FDRE \cnt_latched1_a_rd_buf_reg[11] 
       (.C(aclk),
        .CE(cnt_latched1_a_rd_buf),
        .D(cnt_latched1_a[43]),
        .Q(\cnt_latched1_a_rd_buf_reg_n_0_[11] ),
        .R(p_0_in__0));
  FDRE \cnt_latched1_a_rd_buf_reg[12] 
       (.C(aclk),
        .CE(cnt_latched1_a_rd_buf),
        .D(cnt_latched1_a[44]),
        .Q(\cnt_latched1_a_rd_buf_reg_n_0_[12] ),
        .R(p_0_in__0));
  FDRE \cnt_latched1_a_rd_buf_reg[13] 
       (.C(aclk),
        .CE(cnt_latched1_a_rd_buf),
        .D(cnt_latched1_a[45]),
        .Q(\cnt_latched1_a_rd_buf_reg_n_0_[13] ),
        .R(p_0_in__0));
  FDRE \cnt_latched1_a_rd_buf_reg[14] 
       (.C(aclk),
        .CE(cnt_latched1_a_rd_buf),
        .D(cnt_latched1_a[46]),
        .Q(\cnt_latched1_a_rd_buf_reg_n_0_[14] ),
        .R(p_0_in__0));
  FDRE \cnt_latched1_a_rd_buf_reg[15] 
       (.C(aclk),
        .CE(cnt_latched1_a_rd_buf),
        .D(cnt_latched1_a[47]),
        .Q(\cnt_latched1_a_rd_buf_reg_n_0_[15] ),
        .R(p_0_in__0));
  FDRE \cnt_latched1_a_rd_buf_reg[16] 
       (.C(aclk),
        .CE(cnt_latched1_a_rd_buf),
        .D(cnt_latched1_a[48]),
        .Q(\cnt_latched1_a_rd_buf_reg_n_0_[16] ),
        .R(p_0_in__0));
  FDRE \cnt_latched1_a_rd_buf_reg[17] 
       (.C(aclk),
        .CE(cnt_latched1_a_rd_buf),
        .D(cnt_latched1_a[49]),
        .Q(\cnt_latched1_a_rd_buf_reg_n_0_[17] ),
        .R(p_0_in__0));
  FDRE \cnt_latched1_a_rd_buf_reg[18] 
       (.C(aclk),
        .CE(cnt_latched1_a_rd_buf),
        .D(cnt_latched1_a[50]),
        .Q(\cnt_latched1_a_rd_buf_reg_n_0_[18] ),
        .R(p_0_in__0));
  FDRE \cnt_latched1_a_rd_buf_reg[19] 
       (.C(aclk),
        .CE(cnt_latched1_a_rd_buf),
        .D(cnt_latched1_a[51]),
        .Q(\cnt_latched1_a_rd_buf_reg_n_0_[19] ),
        .R(p_0_in__0));
  FDRE \cnt_latched1_a_rd_buf_reg[1] 
       (.C(aclk),
        .CE(cnt_latched1_a_rd_buf),
        .D(cnt_latched1_a[33]),
        .Q(\cnt_latched1_a_rd_buf_reg_n_0_[1] ),
        .R(p_0_in__0));
  FDRE \cnt_latched1_a_rd_buf_reg[20] 
       (.C(aclk),
        .CE(cnt_latched1_a_rd_buf),
        .D(cnt_latched1_a[52]),
        .Q(\cnt_latched1_a_rd_buf_reg_n_0_[20] ),
        .R(p_0_in__0));
  FDRE \cnt_latched1_a_rd_buf_reg[21] 
       (.C(aclk),
        .CE(cnt_latched1_a_rd_buf),
        .D(cnt_latched1_a[53]),
        .Q(\cnt_latched1_a_rd_buf_reg_n_0_[21] ),
        .R(p_0_in__0));
  FDRE \cnt_latched1_a_rd_buf_reg[22] 
       (.C(aclk),
        .CE(cnt_latched1_a_rd_buf),
        .D(cnt_latched1_a[54]),
        .Q(\cnt_latched1_a_rd_buf_reg_n_0_[22] ),
        .R(p_0_in__0));
  FDRE \cnt_latched1_a_rd_buf_reg[23] 
       (.C(aclk),
        .CE(cnt_latched1_a_rd_buf),
        .D(cnt_latched1_a[55]),
        .Q(\cnt_latched1_a_rd_buf_reg_n_0_[23] ),
        .R(p_0_in__0));
  FDRE \cnt_latched1_a_rd_buf_reg[24] 
       (.C(aclk),
        .CE(cnt_latched1_a_rd_buf),
        .D(cnt_latched1_a[56]),
        .Q(\cnt_latched1_a_rd_buf_reg_n_0_[24] ),
        .R(p_0_in__0));
  FDRE \cnt_latched1_a_rd_buf_reg[25] 
       (.C(aclk),
        .CE(cnt_latched1_a_rd_buf),
        .D(cnt_latched1_a[57]),
        .Q(\cnt_latched1_a_rd_buf_reg_n_0_[25] ),
        .R(p_0_in__0));
  FDRE \cnt_latched1_a_rd_buf_reg[26] 
       (.C(aclk),
        .CE(cnt_latched1_a_rd_buf),
        .D(cnt_latched1_a[58]),
        .Q(\cnt_latched1_a_rd_buf_reg_n_0_[26] ),
        .R(p_0_in__0));
  FDRE \cnt_latched1_a_rd_buf_reg[27] 
       (.C(aclk),
        .CE(cnt_latched1_a_rd_buf),
        .D(cnt_latched1_a[59]),
        .Q(\cnt_latched1_a_rd_buf_reg_n_0_[27] ),
        .R(p_0_in__0));
  FDRE \cnt_latched1_a_rd_buf_reg[28] 
       (.C(aclk),
        .CE(cnt_latched1_a_rd_buf),
        .D(cnt_latched1_a[60]),
        .Q(\cnt_latched1_a_rd_buf_reg_n_0_[28] ),
        .R(p_0_in__0));
  FDRE \cnt_latched1_a_rd_buf_reg[29] 
       (.C(aclk),
        .CE(cnt_latched1_a_rd_buf),
        .D(cnt_latched1_a[61]),
        .Q(\cnt_latched1_a_rd_buf_reg_n_0_[29] ),
        .R(p_0_in__0));
  FDRE \cnt_latched1_a_rd_buf_reg[2] 
       (.C(aclk),
        .CE(cnt_latched1_a_rd_buf),
        .D(cnt_latched1_a[34]),
        .Q(\cnt_latched1_a_rd_buf_reg_n_0_[2] ),
        .R(p_0_in__0));
  FDRE \cnt_latched1_a_rd_buf_reg[30] 
       (.C(aclk),
        .CE(cnt_latched1_a_rd_buf),
        .D(cnt_latched1_a[62]),
        .Q(\cnt_latched1_a_rd_buf_reg_n_0_[30] ),
        .R(p_0_in__0));
  FDRE \cnt_latched1_a_rd_buf_reg[31] 
       (.C(aclk),
        .CE(cnt_latched1_a_rd_buf),
        .D(cnt_latched1_a[63]),
        .Q(\cnt_latched1_a_rd_buf_reg_n_0_[31] ),
        .R(p_0_in__0));
  FDRE \cnt_latched1_a_rd_buf_reg[3] 
       (.C(aclk),
        .CE(cnt_latched1_a_rd_buf),
        .D(cnt_latched1_a[35]),
        .Q(\cnt_latched1_a_rd_buf_reg_n_0_[3] ),
        .R(p_0_in__0));
  FDRE \cnt_latched1_a_rd_buf_reg[4] 
       (.C(aclk),
        .CE(cnt_latched1_a_rd_buf),
        .D(cnt_latched1_a[36]),
        .Q(\cnt_latched1_a_rd_buf_reg_n_0_[4] ),
        .R(p_0_in__0));
  FDRE \cnt_latched1_a_rd_buf_reg[5] 
       (.C(aclk),
        .CE(cnt_latched1_a_rd_buf),
        .D(cnt_latched1_a[37]),
        .Q(\cnt_latched1_a_rd_buf_reg_n_0_[5] ),
        .R(p_0_in__0));
  FDRE \cnt_latched1_a_rd_buf_reg[6] 
       (.C(aclk),
        .CE(cnt_latched1_a_rd_buf),
        .D(cnt_latched1_a[38]),
        .Q(\cnt_latched1_a_rd_buf_reg_n_0_[6] ),
        .R(p_0_in__0));
  FDRE \cnt_latched1_a_rd_buf_reg[7] 
       (.C(aclk),
        .CE(cnt_latched1_a_rd_buf),
        .D(cnt_latched1_a[39]),
        .Q(\cnt_latched1_a_rd_buf_reg_n_0_[7] ),
        .R(p_0_in__0));
  FDRE \cnt_latched1_a_rd_buf_reg[8] 
       (.C(aclk),
        .CE(cnt_latched1_a_rd_buf),
        .D(cnt_latched1_a[40]),
        .Q(\cnt_latched1_a_rd_buf_reg_n_0_[8] ),
        .R(p_0_in__0));
  FDRE \cnt_latched1_a_rd_buf_reg[9] 
       (.C(aclk),
        .CE(cnt_latched1_a_rd_buf),
        .D(cnt_latched1_a[41]),
        .Q(\cnt_latched1_a_rd_buf_reg_n_0_[9] ),
        .R(p_0_in__0));
  FDRE \cnt_latched1_a_reg[0] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[10]),
        .Q(cnt_latched1_a[0]),
        .R(1'b0));
  FDRE \cnt_latched1_a_reg[10] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[20]),
        .Q(cnt_latched1_a[10]),
        .R(1'b0));
  FDRE \cnt_latched1_a_reg[11] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[21]),
        .Q(cnt_latched1_a[11]),
        .R(1'b0));
  FDRE \cnt_latched1_a_reg[12] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[22]),
        .Q(cnt_latched1_a[12]),
        .R(1'b0));
  FDRE \cnt_latched1_a_reg[13] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[23]),
        .Q(cnt_latched1_a[13]),
        .R(1'b0));
  FDRE \cnt_latched1_a_reg[14] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[24]),
        .Q(cnt_latched1_a[14]),
        .R(1'b0));
  FDRE \cnt_latched1_a_reg[15] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[25]),
        .Q(cnt_latched1_a[15]),
        .R(1'b0));
  FDRE \cnt_latched1_a_reg[16] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[26]),
        .Q(cnt_latched1_a[16]),
        .R(1'b0));
  FDRE \cnt_latched1_a_reg[17] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[27]),
        .Q(cnt_latched1_a[17]),
        .R(1'b0));
  FDRE \cnt_latched1_a_reg[18] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[28]),
        .Q(cnt_latched1_a[18]),
        .R(1'b0));
  FDRE \cnt_latched1_a_reg[19] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[29]),
        .Q(cnt_latched1_a[19]),
        .R(1'b0));
  FDRE \cnt_latched1_a_reg[1] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[11]),
        .Q(cnt_latched1_a[1]),
        .R(1'b0));
  FDRE \cnt_latched1_a_reg[20] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[30]),
        .Q(cnt_latched1_a[20]),
        .R(1'b0));
  FDRE \cnt_latched1_a_reg[21] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[31]),
        .Q(cnt_latched1_a[21]),
        .R(1'b0));
  FDRE \cnt_latched1_a_reg[22] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[32]),
        .Q(cnt_latched1_a[22]),
        .R(1'b0));
  FDRE \cnt_latched1_a_reg[23] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[33]),
        .Q(cnt_latched1_a[23]),
        .R(1'b0));
  FDRE \cnt_latched1_a_reg[24] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[34]),
        .Q(cnt_latched1_a[24]),
        .R(1'b0));
  FDRE \cnt_latched1_a_reg[25] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[35]),
        .Q(cnt_latched1_a[25]),
        .R(1'b0));
  FDRE \cnt_latched1_a_reg[26] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[36]),
        .Q(cnt_latched1_a[26]),
        .R(1'b0));
  FDRE \cnt_latched1_a_reg[27] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[37]),
        .Q(cnt_latched1_a[27]),
        .R(1'b0));
  FDRE \cnt_latched1_a_reg[28] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[38]),
        .Q(cnt_latched1_a[28]),
        .R(1'b0));
  FDRE \cnt_latched1_a_reg[29] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[39]),
        .Q(cnt_latched1_a[29]),
        .R(1'b0));
  FDRE \cnt_latched1_a_reg[2] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[12]),
        .Q(cnt_latched1_a[2]),
        .R(1'b0));
  FDRE \cnt_latched1_a_reg[30] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[40]),
        .Q(cnt_latched1_a[30]),
        .R(1'b0));
  FDRE \cnt_latched1_a_reg[31] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[41]),
        .Q(cnt_latched1_a[31]),
        .R(1'b0));
  FDRE \cnt_latched1_a_reg[32] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[42]),
        .Q(cnt_latched1_a[32]),
        .R(1'b0));
  FDRE \cnt_latched1_a_reg[33] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[43]),
        .Q(cnt_latched1_a[33]),
        .R(1'b0));
  FDRE \cnt_latched1_a_reg[34] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[44]),
        .Q(cnt_latched1_a[34]),
        .R(1'b0));
  FDRE \cnt_latched1_a_reg[35] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[45]),
        .Q(cnt_latched1_a[35]),
        .R(1'b0));
  FDRE \cnt_latched1_a_reg[36] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[46]),
        .Q(cnt_latched1_a[36]),
        .R(1'b0));
  FDRE \cnt_latched1_a_reg[37] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[47]),
        .Q(cnt_latched1_a[37]),
        .R(1'b0));
  FDRE \cnt_latched1_a_reg[38] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[48]),
        .Q(cnt_latched1_a[38]),
        .R(1'b0));
  FDRE \cnt_latched1_a_reg[39] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[49]),
        .Q(cnt_latched1_a[39]),
        .R(1'b0));
  FDRE \cnt_latched1_a_reg[3] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[13]),
        .Q(cnt_latched1_a[3]),
        .R(1'b0));
  FDRE \cnt_latched1_a_reg[40] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[50]),
        .Q(cnt_latched1_a[40]),
        .R(1'b0));
  FDRE \cnt_latched1_a_reg[41] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[51]),
        .Q(cnt_latched1_a[41]),
        .R(1'b0));
  FDRE \cnt_latched1_a_reg[42] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[52]),
        .Q(cnt_latched1_a[42]),
        .R(1'b0));
  FDRE \cnt_latched1_a_reg[43] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[53]),
        .Q(cnt_latched1_a[43]),
        .R(1'b0));
  FDRE \cnt_latched1_a_reg[44] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[54]),
        .Q(cnt_latched1_a[44]),
        .R(1'b0));
  FDRE \cnt_latched1_a_reg[45] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[55]),
        .Q(cnt_latched1_a[45]),
        .R(1'b0));
  FDRE \cnt_latched1_a_reg[46] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[56]),
        .Q(cnt_latched1_a[46]),
        .R(1'b0));
  FDRE \cnt_latched1_a_reg[47] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[57]),
        .Q(cnt_latched1_a[47]),
        .R(1'b0));
  FDRE \cnt_latched1_a_reg[48] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[58]),
        .Q(cnt_latched1_a[48]),
        .R(1'b0));
  FDRE \cnt_latched1_a_reg[49] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[59]),
        .Q(cnt_latched1_a[49]),
        .R(1'b0));
  FDRE \cnt_latched1_a_reg[4] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[14]),
        .Q(cnt_latched1_a[4]),
        .R(1'b0));
  FDRE \cnt_latched1_a_reg[50] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[60]),
        .Q(cnt_latched1_a[50]),
        .R(1'b0));
  FDRE \cnt_latched1_a_reg[51] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[61]),
        .Q(cnt_latched1_a[51]),
        .R(1'b0));
  FDRE \cnt_latched1_a_reg[52] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[62]),
        .Q(cnt_latched1_a[52]),
        .R(1'b0));
  FDRE \cnt_latched1_a_reg[53] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[63]),
        .Q(cnt_latched1_a[53]),
        .R(1'b0));
  FDRE \cnt_latched1_a_reg[54] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[64]),
        .Q(cnt_latched1_a[54]),
        .R(1'b0));
  FDRE \cnt_latched1_a_reg[55] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[65]),
        .Q(cnt_latched1_a[55]),
        .R(1'b0));
  FDRE \cnt_latched1_a_reg[56] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[66]),
        .Q(cnt_latched1_a[56]),
        .R(1'b0));
  FDRE \cnt_latched1_a_reg[57] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[67]),
        .Q(cnt_latched1_a[57]),
        .R(1'b0));
  FDRE \cnt_latched1_a_reg[58] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[68]),
        .Q(cnt_latched1_a[58]),
        .R(1'b0));
  FDRE \cnt_latched1_a_reg[59] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[69]),
        .Q(cnt_latched1_a[59]),
        .R(1'b0));
  FDRE \cnt_latched1_a_reg[5] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[15]),
        .Q(cnt_latched1_a[5]),
        .R(1'b0));
  FDRE \cnt_latched1_a_reg[60] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[70]),
        .Q(cnt_latched1_a[60]),
        .R(1'b0));
  FDRE \cnt_latched1_a_reg[61] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[71]),
        .Q(cnt_latched1_a[61]),
        .R(1'b0));
  FDRE \cnt_latched1_a_reg[62] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[72]),
        .Q(cnt_latched1_a[62]),
        .R(1'b0));
  FDRE \cnt_latched1_a_reg[63] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[73]),
        .Q(cnt_latched1_a[63]),
        .R(1'b0));
  FDRE \cnt_latched1_a_reg[6] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[16]),
        .Q(cnt_latched1_a[6]),
        .R(1'b0));
  FDRE \cnt_latched1_a_reg[7] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[17]),
        .Q(cnt_latched1_a[7]),
        .R(1'b0));
  FDRE \cnt_latched1_a_reg[8] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[18]),
        .Q(cnt_latched1_a[8]),
        .R(1'b0));
  FDRE \cnt_latched1_a_reg[9] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[19]),
        .Q(cnt_latched1_a[9]),
        .R(1'b0));
  FDRE \cnt_latched1_reg[0] 
       (.C(ts_clk),
        .CE(cnt_latched1),
        .D(cnt_reg[0]),
        .Q(\cnt_latched1_reg_n_0_[0] ),
        .R(clear));
  FDRE \cnt_latched1_reg[10] 
       (.C(ts_clk),
        .CE(cnt_latched1),
        .D(cnt_reg[10]),
        .Q(\cnt_latched1_reg_n_0_[10] ),
        .R(clear));
  FDRE \cnt_latched1_reg[11] 
       (.C(ts_clk),
        .CE(cnt_latched1),
        .D(cnt_reg[11]),
        .Q(\cnt_latched1_reg_n_0_[11] ),
        .R(clear));
  FDRE \cnt_latched1_reg[12] 
       (.C(ts_clk),
        .CE(cnt_latched1),
        .D(cnt_reg[12]),
        .Q(\cnt_latched1_reg_n_0_[12] ),
        .R(clear));
  FDRE \cnt_latched1_reg[13] 
       (.C(ts_clk),
        .CE(cnt_latched1),
        .D(cnt_reg[13]),
        .Q(\cnt_latched1_reg_n_0_[13] ),
        .R(clear));
  FDRE \cnt_latched1_reg[14] 
       (.C(ts_clk),
        .CE(cnt_latched1),
        .D(cnt_reg[14]),
        .Q(\cnt_latched1_reg_n_0_[14] ),
        .R(clear));
  FDRE \cnt_latched1_reg[15] 
       (.C(ts_clk),
        .CE(cnt_latched1),
        .D(cnt_reg[15]),
        .Q(\cnt_latched1_reg_n_0_[15] ),
        .R(clear));
  FDRE \cnt_latched1_reg[16] 
       (.C(ts_clk),
        .CE(cnt_latched1),
        .D(cnt_reg[16]),
        .Q(\cnt_latched1_reg_n_0_[16] ),
        .R(clear));
  FDRE \cnt_latched1_reg[17] 
       (.C(ts_clk),
        .CE(cnt_latched1),
        .D(cnt_reg[17]),
        .Q(\cnt_latched1_reg_n_0_[17] ),
        .R(clear));
  FDRE \cnt_latched1_reg[18] 
       (.C(ts_clk),
        .CE(cnt_latched1),
        .D(cnt_reg[18]),
        .Q(\cnt_latched1_reg_n_0_[18] ),
        .R(clear));
  FDRE \cnt_latched1_reg[19] 
       (.C(ts_clk),
        .CE(cnt_latched1),
        .D(cnt_reg[19]),
        .Q(\cnt_latched1_reg_n_0_[19] ),
        .R(clear));
  FDRE \cnt_latched1_reg[1] 
       (.C(ts_clk),
        .CE(cnt_latched1),
        .D(cnt_reg[1]),
        .Q(\cnt_latched1_reg_n_0_[1] ),
        .R(clear));
  FDRE \cnt_latched1_reg[20] 
       (.C(ts_clk),
        .CE(cnt_latched1),
        .D(cnt_reg[20]),
        .Q(\cnt_latched1_reg_n_0_[20] ),
        .R(clear));
  FDRE \cnt_latched1_reg[21] 
       (.C(ts_clk),
        .CE(cnt_latched1),
        .D(cnt_reg[21]),
        .Q(\cnt_latched1_reg_n_0_[21] ),
        .R(clear));
  FDRE \cnt_latched1_reg[22] 
       (.C(ts_clk),
        .CE(cnt_latched1),
        .D(cnt_reg[22]),
        .Q(\cnt_latched1_reg_n_0_[22] ),
        .R(clear));
  FDRE \cnt_latched1_reg[23] 
       (.C(ts_clk),
        .CE(cnt_latched1),
        .D(cnt_reg[23]),
        .Q(\cnt_latched1_reg_n_0_[23] ),
        .R(clear));
  FDRE \cnt_latched1_reg[24] 
       (.C(ts_clk),
        .CE(cnt_latched1),
        .D(cnt_reg[24]),
        .Q(\cnt_latched1_reg_n_0_[24] ),
        .R(clear));
  FDRE \cnt_latched1_reg[25] 
       (.C(ts_clk),
        .CE(cnt_latched1),
        .D(cnt_reg[25]),
        .Q(\cnt_latched1_reg_n_0_[25] ),
        .R(clear));
  FDRE \cnt_latched1_reg[26] 
       (.C(ts_clk),
        .CE(cnt_latched1),
        .D(cnt_reg[26]),
        .Q(\cnt_latched1_reg_n_0_[26] ),
        .R(clear));
  FDRE \cnt_latched1_reg[27] 
       (.C(ts_clk),
        .CE(cnt_latched1),
        .D(cnt_reg[27]),
        .Q(\cnt_latched1_reg_n_0_[27] ),
        .R(clear));
  FDRE \cnt_latched1_reg[28] 
       (.C(ts_clk),
        .CE(cnt_latched1),
        .D(cnt_reg[28]),
        .Q(\cnt_latched1_reg_n_0_[28] ),
        .R(clear));
  FDRE \cnt_latched1_reg[29] 
       (.C(ts_clk),
        .CE(cnt_latched1),
        .D(cnt_reg[29]),
        .Q(\cnt_latched1_reg_n_0_[29] ),
        .R(clear));
  FDRE \cnt_latched1_reg[2] 
       (.C(ts_clk),
        .CE(cnt_latched1),
        .D(cnt_reg[2]),
        .Q(\cnt_latched1_reg_n_0_[2] ),
        .R(clear));
  FDRE \cnt_latched1_reg[30] 
       (.C(ts_clk),
        .CE(cnt_latched1),
        .D(cnt_reg[30]),
        .Q(\cnt_latched1_reg_n_0_[30] ),
        .R(clear));
  FDRE \cnt_latched1_reg[31] 
       (.C(ts_clk),
        .CE(cnt_latched1),
        .D(cnt_reg[31]),
        .Q(\cnt_latched1_reg_n_0_[31] ),
        .R(clear));
  FDRE \cnt_latched1_reg[32] 
       (.C(ts_clk),
        .CE(cnt_latched1),
        .D(cnt_reg[32]),
        .Q(\cnt_latched1_reg_n_0_[32] ),
        .R(clear));
  FDRE \cnt_latched1_reg[33] 
       (.C(ts_clk),
        .CE(cnt_latched1),
        .D(cnt_reg[33]),
        .Q(\cnt_latched1_reg_n_0_[33] ),
        .R(clear));
  FDRE \cnt_latched1_reg[34] 
       (.C(ts_clk),
        .CE(cnt_latched1),
        .D(cnt_reg[34]),
        .Q(\cnt_latched1_reg_n_0_[34] ),
        .R(clear));
  FDRE \cnt_latched1_reg[35] 
       (.C(ts_clk),
        .CE(cnt_latched1),
        .D(cnt_reg[35]),
        .Q(\cnt_latched1_reg_n_0_[35] ),
        .R(clear));
  FDRE \cnt_latched1_reg[36] 
       (.C(ts_clk),
        .CE(cnt_latched1),
        .D(cnt_reg[36]),
        .Q(\cnt_latched1_reg_n_0_[36] ),
        .R(clear));
  FDRE \cnt_latched1_reg[37] 
       (.C(ts_clk),
        .CE(cnt_latched1),
        .D(cnt_reg[37]),
        .Q(\cnt_latched1_reg_n_0_[37] ),
        .R(clear));
  FDRE \cnt_latched1_reg[38] 
       (.C(ts_clk),
        .CE(cnt_latched1),
        .D(cnt_reg[38]),
        .Q(\cnt_latched1_reg_n_0_[38] ),
        .R(clear));
  FDRE \cnt_latched1_reg[39] 
       (.C(ts_clk),
        .CE(cnt_latched1),
        .D(cnt_reg[39]),
        .Q(\cnt_latched1_reg_n_0_[39] ),
        .R(clear));
  FDRE \cnt_latched1_reg[3] 
       (.C(ts_clk),
        .CE(cnt_latched1),
        .D(cnt_reg[3]),
        .Q(\cnt_latched1_reg_n_0_[3] ),
        .R(clear));
  FDRE \cnt_latched1_reg[40] 
       (.C(ts_clk),
        .CE(cnt_latched1),
        .D(cnt_reg[40]),
        .Q(\cnt_latched1_reg_n_0_[40] ),
        .R(clear));
  FDRE \cnt_latched1_reg[41] 
       (.C(ts_clk),
        .CE(cnt_latched1),
        .D(cnt_reg[41]),
        .Q(\cnt_latched1_reg_n_0_[41] ),
        .R(clear));
  FDRE \cnt_latched1_reg[42] 
       (.C(ts_clk),
        .CE(cnt_latched1),
        .D(cnt_reg[42]),
        .Q(\cnt_latched1_reg_n_0_[42] ),
        .R(clear));
  FDRE \cnt_latched1_reg[43] 
       (.C(ts_clk),
        .CE(cnt_latched1),
        .D(cnt_reg[43]),
        .Q(\cnt_latched1_reg_n_0_[43] ),
        .R(clear));
  FDRE \cnt_latched1_reg[44] 
       (.C(ts_clk),
        .CE(cnt_latched1),
        .D(cnt_reg[44]),
        .Q(\cnt_latched1_reg_n_0_[44] ),
        .R(clear));
  FDRE \cnt_latched1_reg[45] 
       (.C(ts_clk),
        .CE(cnt_latched1),
        .D(cnt_reg[45]),
        .Q(\cnt_latched1_reg_n_0_[45] ),
        .R(clear));
  FDRE \cnt_latched1_reg[46] 
       (.C(ts_clk),
        .CE(cnt_latched1),
        .D(cnt_reg[46]),
        .Q(\cnt_latched1_reg_n_0_[46] ),
        .R(clear));
  FDRE \cnt_latched1_reg[47] 
       (.C(ts_clk),
        .CE(cnt_latched1),
        .D(cnt_reg[47]),
        .Q(\cnt_latched1_reg_n_0_[47] ),
        .R(clear));
  FDRE \cnt_latched1_reg[48] 
       (.C(ts_clk),
        .CE(cnt_latched1),
        .D(cnt_reg[48]),
        .Q(\cnt_latched1_reg_n_0_[48] ),
        .R(clear));
  FDRE \cnt_latched1_reg[49] 
       (.C(ts_clk),
        .CE(cnt_latched1),
        .D(cnt_reg[49]),
        .Q(\cnt_latched1_reg_n_0_[49] ),
        .R(clear));
  FDRE \cnt_latched1_reg[4] 
       (.C(ts_clk),
        .CE(cnt_latched1),
        .D(cnt_reg[4]),
        .Q(\cnt_latched1_reg_n_0_[4] ),
        .R(clear));
  FDRE \cnt_latched1_reg[50] 
       (.C(ts_clk),
        .CE(cnt_latched1),
        .D(cnt_reg[50]),
        .Q(\cnt_latched1_reg_n_0_[50] ),
        .R(clear));
  FDRE \cnt_latched1_reg[51] 
       (.C(ts_clk),
        .CE(cnt_latched1),
        .D(cnt_reg[51]),
        .Q(\cnt_latched1_reg_n_0_[51] ),
        .R(clear));
  FDRE \cnt_latched1_reg[52] 
       (.C(ts_clk),
        .CE(cnt_latched1),
        .D(cnt_reg[52]),
        .Q(\cnt_latched1_reg_n_0_[52] ),
        .R(clear));
  FDRE \cnt_latched1_reg[53] 
       (.C(ts_clk),
        .CE(cnt_latched1),
        .D(cnt_reg[53]),
        .Q(\cnt_latched1_reg_n_0_[53] ),
        .R(clear));
  FDRE \cnt_latched1_reg[54] 
       (.C(ts_clk),
        .CE(cnt_latched1),
        .D(cnt_reg[54]),
        .Q(\cnt_latched1_reg_n_0_[54] ),
        .R(clear));
  FDRE \cnt_latched1_reg[55] 
       (.C(ts_clk),
        .CE(cnt_latched1),
        .D(cnt_reg[55]),
        .Q(\cnt_latched1_reg_n_0_[55] ),
        .R(clear));
  FDRE \cnt_latched1_reg[56] 
       (.C(ts_clk),
        .CE(cnt_latched1),
        .D(cnt_reg[56]),
        .Q(\cnt_latched1_reg_n_0_[56] ),
        .R(clear));
  FDRE \cnt_latched1_reg[57] 
       (.C(ts_clk),
        .CE(cnt_latched1),
        .D(cnt_reg[57]),
        .Q(\cnt_latched1_reg_n_0_[57] ),
        .R(clear));
  FDRE \cnt_latched1_reg[58] 
       (.C(ts_clk),
        .CE(cnt_latched1),
        .D(cnt_reg[58]),
        .Q(\cnt_latched1_reg_n_0_[58] ),
        .R(clear));
  FDRE \cnt_latched1_reg[59] 
       (.C(ts_clk),
        .CE(cnt_latched1),
        .D(cnt_reg[59]),
        .Q(\cnt_latched1_reg_n_0_[59] ),
        .R(clear));
  FDRE \cnt_latched1_reg[5] 
       (.C(ts_clk),
        .CE(cnt_latched1),
        .D(cnt_reg[5]),
        .Q(\cnt_latched1_reg_n_0_[5] ),
        .R(clear));
  FDRE \cnt_latched1_reg[60] 
       (.C(ts_clk),
        .CE(cnt_latched1),
        .D(cnt_reg[60]),
        .Q(\cnt_latched1_reg_n_0_[60] ),
        .R(clear));
  FDRE \cnt_latched1_reg[61] 
       (.C(ts_clk),
        .CE(cnt_latched1),
        .D(cnt_reg[61]),
        .Q(\cnt_latched1_reg_n_0_[61] ),
        .R(clear));
  FDRE \cnt_latched1_reg[62] 
       (.C(ts_clk),
        .CE(cnt_latched1),
        .D(cnt_reg[62]),
        .Q(\cnt_latched1_reg_n_0_[62] ),
        .R(clear));
  FDRE \cnt_latched1_reg[63] 
       (.C(ts_clk),
        .CE(cnt_latched1),
        .D(cnt_reg[63]),
        .Q(\cnt_latched1_reg_n_0_[63] ),
        .R(clear));
  FDRE \cnt_latched1_reg[6] 
       (.C(ts_clk),
        .CE(cnt_latched1),
        .D(cnt_reg[6]),
        .Q(\cnt_latched1_reg_n_0_[6] ),
        .R(clear));
  FDRE \cnt_latched1_reg[7] 
       (.C(ts_clk),
        .CE(cnt_latched1),
        .D(cnt_reg[7]),
        .Q(\cnt_latched1_reg_n_0_[7] ),
        .R(clear));
  FDRE \cnt_latched1_reg[8] 
       (.C(ts_clk),
        .CE(cnt_latched1),
        .D(cnt_reg[8]),
        .Q(\cnt_latched1_reg_n_0_[8] ),
        .R(clear));
  FDRE \cnt_latched1_reg[9] 
       (.C(ts_clk),
        .CE(cnt_latched1),
        .D(cnt_reg[9]),
        .Q(\cnt_latched1_reg_n_0_[9] ),
        .R(clear));
  FDRE \cnt_reg[0] 
       (.C(ts_clk),
        .CE(\cnt[0]_i_1_n_0 ),
        .D(\cnt_reg[0]_i_2_n_7 ),
        .Q(cnt_reg[0]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\cnt_reg[0]_i_2_n_0 ,\cnt_reg[0]_i_2_n_1 ,\cnt_reg[0]_i_2_n_2 ,\cnt_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,cnt_en}),
        .O({\cnt_reg[0]_i_2_n_4 ,\cnt_reg[0]_i_2_n_5 ,\cnt_reg[0]_i_2_n_6 ,\cnt_reg[0]_i_2_n_7 }),
        .S({\cnt[0]_i_3_n_0 ,\cnt[0]_i_4_n_0 ,\cnt[0]_i_5_n_0 ,\cnt[0]_i_6_n_0 }));
  FDRE \cnt_reg[10] 
       (.C(ts_clk),
        .CE(\cnt[0]_i_1_n_0 ),
        .D(\cnt_reg[8]_i_1_n_5 ),
        .Q(cnt_reg[10]),
        .R(clear));
  FDRE \cnt_reg[11] 
       (.C(ts_clk),
        .CE(\cnt[0]_i_1_n_0 ),
        .D(\cnt_reg[8]_i_1_n_4 ),
        .Q(cnt_reg[11]),
        .R(clear));
  FDRE \cnt_reg[12] 
       (.C(ts_clk),
        .CE(\cnt[0]_i_1_n_0 ),
        .D(\cnt_reg[12]_i_1_n_7 ),
        .Q(cnt_reg[12]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_reg[12]_i_1 
       (.CI(\cnt_reg[8]_i_1_n_0 ),
        .CO({\cnt_reg[12]_i_1_n_0 ,\cnt_reg[12]_i_1_n_1 ,\cnt_reg[12]_i_1_n_2 ,\cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[12]_i_1_n_4 ,\cnt_reg[12]_i_1_n_5 ,\cnt_reg[12]_i_1_n_6 ,\cnt_reg[12]_i_1_n_7 }),
        .S({\cnt[12]_i_2_n_0 ,\cnt[12]_i_3_n_0 ,\cnt[12]_i_4_n_0 ,\cnt[12]_i_5_n_0 }));
  FDRE \cnt_reg[13] 
       (.C(ts_clk),
        .CE(\cnt[0]_i_1_n_0 ),
        .D(\cnt_reg[12]_i_1_n_6 ),
        .Q(cnt_reg[13]),
        .R(clear));
  FDRE \cnt_reg[14] 
       (.C(ts_clk),
        .CE(\cnt[0]_i_1_n_0 ),
        .D(\cnt_reg[12]_i_1_n_5 ),
        .Q(cnt_reg[14]),
        .R(clear));
  FDRE \cnt_reg[15] 
       (.C(ts_clk),
        .CE(\cnt[0]_i_1_n_0 ),
        .D(\cnt_reg[12]_i_1_n_4 ),
        .Q(cnt_reg[15]),
        .R(clear));
  FDRE \cnt_reg[16] 
       (.C(ts_clk),
        .CE(\cnt[0]_i_1_n_0 ),
        .D(\cnt_reg[16]_i_1_n_7 ),
        .Q(cnt_reg[16]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_reg[16]_i_1 
       (.CI(\cnt_reg[12]_i_1_n_0 ),
        .CO({\cnt_reg[16]_i_1_n_0 ,\cnt_reg[16]_i_1_n_1 ,\cnt_reg[16]_i_1_n_2 ,\cnt_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[16]_i_1_n_4 ,\cnt_reg[16]_i_1_n_5 ,\cnt_reg[16]_i_1_n_6 ,\cnt_reg[16]_i_1_n_7 }),
        .S({\cnt[16]_i_2_n_0 ,\cnt[16]_i_3_n_0 ,\cnt[16]_i_4_n_0 ,\cnt[16]_i_5_n_0 }));
  FDRE \cnt_reg[17] 
       (.C(ts_clk),
        .CE(\cnt[0]_i_1_n_0 ),
        .D(\cnt_reg[16]_i_1_n_6 ),
        .Q(cnt_reg[17]),
        .R(clear));
  FDRE \cnt_reg[18] 
       (.C(ts_clk),
        .CE(\cnt[0]_i_1_n_0 ),
        .D(\cnt_reg[16]_i_1_n_5 ),
        .Q(cnt_reg[18]),
        .R(clear));
  FDRE \cnt_reg[19] 
       (.C(ts_clk),
        .CE(\cnt[0]_i_1_n_0 ),
        .D(\cnt_reg[16]_i_1_n_4 ),
        .Q(cnt_reg[19]),
        .R(clear));
  FDRE \cnt_reg[1] 
       (.C(ts_clk),
        .CE(\cnt[0]_i_1_n_0 ),
        .D(\cnt_reg[0]_i_2_n_6 ),
        .Q(cnt_reg[1]),
        .R(clear));
  FDRE \cnt_reg[20] 
       (.C(ts_clk),
        .CE(\cnt[0]_i_1_n_0 ),
        .D(\cnt_reg[20]_i_1_n_7 ),
        .Q(cnt_reg[20]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_reg[20]_i_1 
       (.CI(\cnt_reg[16]_i_1_n_0 ),
        .CO({\cnt_reg[20]_i_1_n_0 ,\cnt_reg[20]_i_1_n_1 ,\cnt_reg[20]_i_1_n_2 ,\cnt_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[20]_i_1_n_4 ,\cnt_reg[20]_i_1_n_5 ,\cnt_reg[20]_i_1_n_6 ,\cnt_reg[20]_i_1_n_7 }),
        .S({\cnt[20]_i_2_n_0 ,\cnt[20]_i_3_n_0 ,\cnt[20]_i_4_n_0 ,\cnt[20]_i_5_n_0 }));
  FDRE \cnt_reg[21] 
       (.C(ts_clk),
        .CE(\cnt[0]_i_1_n_0 ),
        .D(\cnt_reg[20]_i_1_n_6 ),
        .Q(cnt_reg[21]),
        .R(clear));
  FDRE \cnt_reg[22] 
       (.C(ts_clk),
        .CE(\cnt[0]_i_1_n_0 ),
        .D(\cnt_reg[20]_i_1_n_5 ),
        .Q(cnt_reg[22]),
        .R(clear));
  FDRE \cnt_reg[23] 
       (.C(ts_clk),
        .CE(\cnt[0]_i_1_n_0 ),
        .D(\cnt_reg[20]_i_1_n_4 ),
        .Q(cnt_reg[23]),
        .R(clear));
  FDRE \cnt_reg[24] 
       (.C(ts_clk),
        .CE(\cnt[0]_i_1_n_0 ),
        .D(\cnt_reg[24]_i_1_n_7 ),
        .Q(cnt_reg[24]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_reg[24]_i_1 
       (.CI(\cnt_reg[20]_i_1_n_0 ),
        .CO({\cnt_reg[24]_i_1_n_0 ,\cnt_reg[24]_i_1_n_1 ,\cnt_reg[24]_i_1_n_2 ,\cnt_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[24]_i_1_n_4 ,\cnt_reg[24]_i_1_n_5 ,\cnt_reg[24]_i_1_n_6 ,\cnt_reg[24]_i_1_n_7 }),
        .S({\cnt[24]_i_2_n_0 ,\cnt[24]_i_3_n_0 ,\cnt[24]_i_4_n_0 ,\cnt[24]_i_5_n_0 }));
  FDRE \cnt_reg[25] 
       (.C(ts_clk),
        .CE(\cnt[0]_i_1_n_0 ),
        .D(\cnt_reg[24]_i_1_n_6 ),
        .Q(cnt_reg[25]),
        .R(clear));
  FDRE \cnt_reg[26] 
       (.C(ts_clk),
        .CE(\cnt[0]_i_1_n_0 ),
        .D(\cnt_reg[24]_i_1_n_5 ),
        .Q(cnt_reg[26]),
        .R(clear));
  FDRE \cnt_reg[27] 
       (.C(ts_clk),
        .CE(\cnt[0]_i_1_n_0 ),
        .D(\cnt_reg[24]_i_1_n_4 ),
        .Q(cnt_reg[27]),
        .R(clear));
  FDRE \cnt_reg[28] 
       (.C(ts_clk),
        .CE(\cnt[0]_i_1_n_0 ),
        .D(\cnt_reg[28]_i_1_n_7 ),
        .Q(cnt_reg[28]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_reg[28]_i_1 
       (.CI(\cnt_reg[24]_i_1_n_0 ),
        .CO({\cnt_reg[28]_i_1_n_0 ,\cnt_reg[28]_i_1_n_1 ,\cnt_reg[28]_i_1_n_2 ,\cnt_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[28]_i_1_n_4 ,\cnt_reg[28]_i_1_n_5 ,\cnt_reg[28]_i_1_n_6 ,\cnt_reg[28]_i_1_n_7 }),
        .S({\cnt[28]_i_2_n_0 ,\cnt[28]_i_3_n_0 ,\cnt[28]_i_4_n_0 ,\cnt[28]_i_5_n_0 }));
  FDRE \cnt_reg[29] 
       (.C(ts_clk),
        .CE(\cnt[0]_i_1_n_0 ),
        .D(\cnt_reg[28]_i_1_n_6 ),
        .Q(cnt_reg[29]),
        .R(clear));
  FDRE \cnt_reg[2] 
       (.C(ts_clk),
        .CE(\cnt[0]_i_1_n_0 ),
        .D(\cnt_reg[0]_i_2_n_5 ),
        .Q(cnt_reg[2]),
        .R(clear));
  FDRE \cnt_reg[30] 
       (.C(ts_clk),
        .CE(\cnt[0]_i_1_n_0 ),
        .D(\cnt_reg[28]_i_1_n_5 ),
        .Q(cnt_reg[30]),
        .R(clear));
  FDRE \cnt_reg[31] 
       (.C(ts_clk),
        .CE(\cnt[0]_i_1_n_0 ),
        .D(\cnt_reg[28]_i_1_n_4 ),
        .Q(cnt_reg[31]),
        .R(clear));
  FDRE \cnt_reg[32] 
       (.C(ts_clk),
        .CE(\cnt[0]_i_1_n_0 ),
        .D(\cnt_reg[32]_i_1_n_7 ),
        .Q(cnt_reg[32]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_reg[32]_i_1 
       (.CI(\cnt_reg[28]_i_1_n_0 ),
        .CO({\cnt_reg[32]_i_1_n_0 ,\cnt_reg[32]_i_1_n_1 ,\cnt_reg[32]_i_1_n_2 ,\cnt_reg[32]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[32]_i_1_n_4 ,\cnt_reg[32]_i_1_n_5 ,\cnt_reg[32]_i_1_n_6 ,\cnt_reg[32]_i_1_n_7 }),
        .S({\cnt[32]_i_2_n_0 ,\cnt[32]_i_3_n_0 ,\cnt[32]_i_4_n_0 ,\cnt[32]_i_5_n_0 }));
  FDRE \cnt_reg[33] 
       (.C(ts_clk),
        .CE(\cnt[0]_i_1_n_0 ),
        .D(\cnt_reg[32]_i_1_n_6 ),
        .Q(cnt_reg[33]),
        .R(clear));
  FDRE \cnt_reg[34] 
       (.C(ts_clk),
        .CE(\cnt[0]_i_1_n_0 ),
        .D(\cnt_reg[32]_i_1_n_5 ),
        .Q(cnt_reg[34]),
        .R(clear));
  FDRE \cnt_reg[35] 
       (.C(ts_clk),
        .CE(\cnt[0]_i_1_n_0 ),
        .D(\cnt_reg[32]_i_1_n_4 ),
        .Q(cnt_reg[35]),
        .R(clear));
  FDRE \cnt_reg[36] 
       (.C(ts_clk),
        .CE(\cnt[0]_i_1_n_0 ),
        .D(\cnt_reg[36]_i_1_n_7 ),
        .Q(cnt_reg[36]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_reg[36]_i_1 
       (.CI(\cnt_reg[32]_i_1_n_0 ),
        .CO({\cnt_reg[36]_i_1_n_0 ,\cnt_reg[36]_i_1_n_1 ,\cnt_reg[36]_i_1_n_2 ,\cnt_reg[36]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[36]_i_1_n_4 ,\cnt_reg[36]_i_1_n_5 ,\cnt_reg[36]_i_1_n_6 ,\cnt_reg[36]_i_1_n_7 }),
        .S({\cnt[36]_i_2_n_0 ,\cnt[36]_i_3_n_0 ,\cnt[36]_i_4_n_0 ,\cnt[36]_i_5_n_0 }));
  FDRE \cnt_reg[37] 
       (.C(ts_clk),
        .CE(\cnt[0]_i_1_n_0 ),
        .D(\cnt_reg[36]_i_1_n_6 ),
        .Q(cnt_reg[37]),
        .R(clear));
  FDRE \cnt_reg[38] 
       (.C(ts_clk),
        .CE(\cnt[0]_i_1_n_0 ),
        .D(\cnt_reg[36]_i_1_n_5 ),
        .Q(cnt_reg[38]),
        .R(clear));
  FDRE \cnt_reg[39] 
       (.C(ts_clk),
        .CE(\cnt[0]_i_1_n_0 ),
        .D(\cnt_reg[36]_i_1_n_4 ),
        .Q(cnt_reg[39]),
        .R(clear));
  FDRE \cnt_reg[3] 
       (.C(ts_clk),
        .CE(\cnt[0]_i_1_n_0 ),
        .D(\cnt_reg[0]_i_2_n_4 ),
        .Q(cnt_reg[3]),
        .R(clear));
  FDRE \cnt_reg[40] 
       (.C(ts_clk),
        .CE(\cnt[0]_i_1_n_0 ),
        .D(\cnt_reg[40]_i_1_n_7 ),
        .Q(cnt_reg[40]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_reg[40]_i_1 
       (.CI(\cnt_reg[36]_i_1_n_0 ),
        .CO({\cnt_reg[40]_i_1_n_0 ,\cnt_reg[40]_i_1_n_1 ,\cnt_reg[40]_i_1_n_2 ,\cnt_reg[40]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[40]_i_1_n_4 ,\cnt_reg[40]_i_1_n_5 ,\cnt_reg[40]_i_1_n_6 ,\cnt_reg[40]_i_1_n_7 }),
        .S({\cnt[40]_i_2_n_0 ,\cnt[40]_i_3_n_0 ,\cnt[40]_i_4_n_0 ,\cnt[40]_i_5_n_0 }));
  FDRE \cnt_reg[41] 
       (.C(ts_clk),
        .CE(\cnt[0]_i_1_n_0 ),
        .D(\cnt_reg[40]_i_1_n_6 ),
        .Q(cnt_reg[41]),
        .R(clear));
  FDRE \cnt_reg[42] 
       (.C(ts_clk),
        .CE(\cnt[0]_i_1_n_0 ),
        .D(\cnt_reg[40]_i_1_n_5 ),
        .Q(cnt_reg[42]),
        .R(clear));
  FDRE \cnt_reg[43] 
       (.C(ts_clk),
        .CE(\cnt[0]_i_1_n_0 ),
        .D(\cnt_reg[40]_i_1_n_4 ),
        .Q(cnt_reg[43]),
        .R(clear));
  FDRE \cnt_reg[44] 
       (.C(ts_clk),
        .CE(\cnt[0]_i_1_n_0 ),
        .D(\cnt_reg[44]_i_1_n_7 ),
        .Q(cnt_reg[44]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_reg[44]_i_1 
       (.CI(\cnt_reg[40]_i_1_n_0 ),
        .CO({\cnt_reg[44]_i_1_n_0 ,\cnt_reg[44]_i_1_n_1 ,\cnt_reg[44]_i_1_n_2 ,\cnt_reg[44]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[44]_i_1_n_4 ,\cnt_reg[44]_i_1_n_5 ,\cnt_reg[44]_i_1_n_6 ,\cnt_reg[44]_i_1_n_7 }),
        .S({\cnt[44]_i_2_n_0 ,\cnt[44]_i_3_n_0 ,\cnt[44]_i_4_n_0 ,\cnt[44]_i_5_n_0 }));
  FDRE \cnt_reg[45] 
       (.C(ts_clk),
        .CE(\cnt[0]_i_1_n_0 ),
        .D(\cnt_reg[44]_i_1_n_6 ),
        .Q(cnt_reg[45]),
        .R(clear));
  FDRE \cnt_reg[46] 
       (.C(ts_clk),
        .CE(\cnt[0]_i_1_n_0 ),
        .D(\cnt_reg[44]_i_1_n_5 ),
        .Q(cnt_reg[46]),
        .R(clear));
  FDRE \cnt_reg[47] 
       (.C(ts_clk),
        .CE(\cnt[0]_i_1_n_0 ),
        .D(\cnt_reg[44]_i_1_n_4 ),
        .Q(cnt_reg[47]),
        .R(clear));
  FDRE \cnt_reg[48] 
       (.C(ts_clk),
        .CE(\cnt[0]_i_1_n_0 ),
        .D(\cnt_reg[48]_i_1_n_7 ),
        .Q(cnt_reg[48]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_reg[48]_i_1 
       (.CI(\cnt_reg[44]_i_1_n_0 ),
        .CO({\cnt_reg[48]_i_1_n_0 ,\cnt_reg[48]_i_1_n_1 ,\cnt_reg[48]_i_1_n_2 ,\cnt_reg[48]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[48]_i_1_n_4 ,\cnt_reg[48]_i_1_n_5 ,\cnt_reg[48]_i_1_n_6 ,\cnt_reg[48]_i_1_n_7 }),
        .S({\cnt[48]_i_2_n_0 ,\cnt[48]_i_3_n_0 ,\cnt[48]_i_4_n_0 ,\cnt[48]_i_5_n_0 }));
  FDRE \cnt_reg[49] 
       (.C(ts_clk),
        .CE(\cnt[0]_i_1_n_0 ),
        .D(\cnt_reg[48]_i_1_n_6 ),
        .Q(cnt_reg[49]),
        .R(clear));
  FDRE \cnt_reg[4] 
       (.C(ts_clk),
        .CE(\cnt[0]_i_1_n_0 ),
        .D(\cnt_reg[4]_i_1_n_7 ),
        .Q(cnt_reg[4]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_reg[4]_i_1 
       (.CI(\cnt_reg[0]_i_2_n_0 ),
        .CO({\cnt_reg[4]_i_1_n_0 ,\cnt_reg[4]_i_1_n_1 ,\cnt_reg[4]_i_1_n_2 ,\cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[4]_i_1_n_4 ,\cnt_reg[4]_i_1_n_5 ,\cnt_reg[4]_i_1_n_6 ,\cnt_reg[4]_i_1_n_7 }),
        .S({\cnt[4]_i_2_n_0 ,\cnt[4]_i_3_n_0 ,\cnt[4]_i_4_n_0 ,\cnt[4]_i_5_n_0 }));
  FDRE \cnt_reg[50] 
       (.C(ts_clk),
        .CE(\cnt[0]_i_1_n_0 ),
        .D(\cnt_reg[48]_i_1_n_5 ),
        .Q(cnt_reg[50]),
        .R(clear));
  FDRE \cnt_reg[51] 
       (.C(ts_clk),
        .CE(\cnt[0]_i_1_n_0 ),
        .D(\cnt_reg[48]_i_1_n_4 ),
        .Q(cnt_reg[51]),
        .R(clear));
  FDRE \cnt_reg[52] 
       (.C(ts_clk),
        .CE(\cnt[0]_i_1_n_0 ),
        .D(\cnt_reg[52]_i_1_n_7 ),
        .Q(cnt_reg[52]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_reg[52]_i_1 
       (.CI(\cnt_reg[48]_i_1_n_0 ),
        .CO({\cnt_reg[52]_i_1_n_0 ,\cnt_reg[52]_i_1_n_1 ,\cnt_reg[52]_i_1_n_2 ,\cnt_reg[52]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[52]_i_1_n_4 ,\cnt_reg[52]_i_1_n_5 ,\cnt_reg[52]_i_1_n_6 ,\cnt_reg[52]_i_1_n_7 }),
        .S({\cnt[52]_i_2_n_0 ,\cnt[52]_i_3_n_0 ,\cnt[52]_i_4_n_0 ,\cnt[52]_i_5_n_0 }));
  FDRE \cnt_reg[53] 
       (.C(ts_clk),
        .CE(\cnt[0]_i_1_n_0 ),
        .D(\cnt_reg[52]_i_1_n_6 ),
        .Q(cnt_reg[53]),
        .R(clear));
  FDRE \cnt_reg[54] 
       (.C(ts_clk),
        .CE(\cnt[0]_i_1_n_0 ),
        .D(\cnt_reg[52]_i_1_n_5 ),
        .Q(cnt_reg[54]),
        .R(clear));
  FDRE \cnt_reg[55] 
       (.C(ts_clk),
        .CE(\cnt[0]_i_1_n_0 ),
        .D(\cnt_reg[52]_i_1_n_4 ),
        .Q(cnt_reg[55]),
        .R(clear));
  FDRE \cnt_reg[56] 
       (.C(ts_clk),
        .CE(\cnt[0]_i_1_n_0 ),
        .D(\cnt_reg[56]_i_1_n_7 ),
        .Q(cnt_reg[56]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_reg[56]_i_1 
       (.CI(\cnt_reg[52]_i_1_n_0 ),
        .CO({\cnt_reg[56]_i_1_n_0 ,\cnt_reg[56]_i_1_n_1 ,\cnt_reg[56]_i_1_n_2 ,\cnt_reg[56]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[56]_i_1_n_4 ,\cnt_reg[56]_i_1_n_5 ,\cnt_reg[56]_i_1_n_6 ,\cnt_reg[56]_i_1_n_7 }),
        .S({\cnt[56]_i_2_n_0 ,\cnt[56]_i_3_n_0 ,\cnt[56]_i_4_n_0 ,\cnt[56]_i_5_n_0 }));
  FDRE \cnt_reg[57] 
       (.C(ts_clk),
        .CE(\cnt[0]_i_1_n_0 ),
        .D(\cnt_reg[56]_i_1_n_6 ),
        .Q(cnt_reg[57]),
        .R(clear));
  FDRE \cnt_reg[58] 
       (.C(ts_clk),
        .CE(\cnt[0]_i_1_n_0 ),
        .D(\cnt_reg[56]_i_1_n_5 ),
        .Q(cnt_reg[58]),
        .R(clear));
  FDRE \cnt_reg[59] 
       (.C(ts_clk),
        .CE(\cnt[0]_i_1_n_0 ),
        .D(\cnt_reg[56]_i_1_n_4 ),
        .Q(cnt_reg[59]),
        .R(clear));
  FDRE \cnt_reg[5] 
       (.C(ts_clk),
        .CE(\cnt[0]_i_1_n_0 ),
        .D(\cnt_reg[4]_i_1_n_6 ),
        .Q(cnt_reg[5]),
        .R(clear));
  FDRE \cnt_reg[60] 
       (.C(ts_clk),
        .CE(\cnt[0]_i_1_n_0 ),
        .D(\cnt_reg[60]_i_1_n_7 ),
        .Q(cnt_reg[60]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_reg[60]_i_1 
       (.CI(\cnt_reg[56]_i_1_n_0 ),
        .CO({\NLW_cnt_reg[60]_i_1_CO_UNCONNECTED [3],\cnt_reg[60]_i_1_n_1 ,\cnt_reg[60]_i_1_n_2 ,\cnt_reg[60]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[60]_i_1_n_4 ,\cnt_reg[60]_i_1_n_5 ,\cnt_reg[60]_i_1_n_6 ,\cnt_reg[60]_i_1_n_7 }),
        .S({\cnt[60]_i_2_n_0 ,\cnt[60]_i_3_n_0 ,\cnt[60]_i_4_n_0 ,\cnt[60]_i_5_n_0 }));
  FDRE \cnt_reg[61] 
       (.C(ts_clk),
        .CE(\cnt[0]_i_1_n_0 ),
        .D(\cnt_reg[60]_i_1_n_6 ),
        .Q(cnt_reg[61]),
        .R(clear));
  FDRE \cnt_reg[62] 
       (.C(ts_clk),
        .CE(\cnt[0]_i_1_n_0 ),
        .D(\cnt_reg[60]_i_1_n_5 ),
        .Q(cnt_reg[62]),
        .R(clear));
  FDRE \cnt_reg[63] 
       (.C(ts_clk),
        .CE(\cnt[0]_i_1_n_0 ),
        .D(\cnt_reg[60]_i_1_n_4 ),
        .Q(cnt_reg[63]),
        .R(clear));
  FDRE \cnt_reg[6] 
       (.C(ts_clk),
        .CE(\cnt[0]_i_1_n_0 ),
        .D(\cnt_reg[4]_i_1_n_5 ),
        .Q(cnt_reg[6]),
        .R(clear));
  FDRE \cnt_reg[7] 
       (.C(ts_clk),
        .CE(\cnt[0]_i_1_n_0 ),
        .D(\cnt_reg[4]_i_1_n_4 ),
        .Q(cnt_reg[7]),
        .R(clear));
  FDRE \cnt_reg[8] 
       (.C(ts_clk),
        .CE(\cnt[0]_i_1_n_0 ),
        .D(\cnt_reg[8]_i_1_n_7 ),
        .Q(cnt_reg[8]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_reg[8]_i_1 
       (.CI(\cnt_reg[4]_i_1_n_0 ),
        .CO({\cnt_reg[8]_i_1_n_0 ,\cnt_reg[8]_i_1_n_1 ,\cnt_reg[8]_i_1_n_2 ,\cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[8]_i_1_n_4 ,\cnt_reg[8]_i_1_n_5 ,\cnt_reg[8]_i_1_n_6 ,\cnt_reg[8]_i_1_n_7 }),
        .S({\cnt[8]_i_2_n_0 ,\cnt[8]_i_3_n_0 ,\cnt[8]_i_4_n_0 ,\cnt[8]_i_5_n_0 }));
  FDRE \cnt_reg[9] 
       (.C(ts_clk),
        .CE(\cnt[0]_i_1_n_0 ),
        .D(\cnt_reg[8]_i_1_n_6 ),
        .Q(cnt_reg[9]),
        .R(clear));
  LUT5 #(
    .INIT(32'h00000800)) 
    \cnt_rx0_a[15]_i_1 
       (.I0(\cnt_rx0_a[63]_i_2_n_0 ),
        .I1(s_axi_awready),
        .I2(\cnt_rx_en_a_reg_n_0_[0] ),
        .I3(s_axi_wstrb[1]),
        .I4(\cnt_rx0_a[63]_i_3_n_0 ),
        .O(\cnt_rx0_a[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000800)) 
    \cnt_rx0_a[23]_i_1 
       (.I0(\cnt_rx0_a[63]_i_2_n_0 ),
        .I1(s_axi_awready),
        .I2(\cnt_rx_en_a_reg_n_0_[0] ),
        .I3(s_axi_wstrb[2]),
        .I4(\cnt_rx0_a[63]_i_3_n_0 ),
        .O(\cnt_rx0_a[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000800)) 
    \cnt_rx0_a[31]_i_1 
       (.I0(\cnt_rx0_a[63]_i_2_n_0 ),
        .I1(s_axi_awready),
        .I2(\cnt_rx_en_a_reg_n_0_[0] ),
        .I3(s_axi_wstrb[3]),
        .I4(\cnt_rx0_a[63]_i_3_n_0 ),
        .O(\cnt_rx0_a[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000400)) 
    \cnt_rx0_a[39]_i_1 
       (.I0(\cnt_rx0_a[63]_i_2_n_0 ),
        .I1(s_axi_wstrb[0]),
        .I2(\cnt_rx_en_a_reg_n_0_[0] ),
        .I3(s_axi_awready),
        .I4(\cnt_rx0_a[63]_i_3_n_0 ),
        .O(\cnt_rx0_a[39]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000400)) 
    \cnt_rx0_a[47]_i_1 
       (.I0(\cnt_rx0_a[63]_i_2_n_0 ),
        .I1(s_axi_awready),
        .I2(\cnt_rx_en_a_reg_n_0_[0] ),
        .I3(s_axi_wstrb[1]),
        .I4(\cnt_rx0_a[63]_i_3_n_0 ),
        .O(\cnt_rx0_a[47]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000400)) 
    \cnt_rx0_a[55]_i_1 
       (.I0(\cnt_rx0_a[63]_i_2_n_0 ),
        .I1(s_axi_awready),
        .I2(\cnt_rx_en_a_reg_n_0_[0] ),
        .I3(s_axi_wstrb[2]),
        .I4(\cnt_rx0_a[63]_i_3_n_0 ),
        .O(\cnt_rx0_a[55]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000400)) 
    \cnt_rx0_a[63]_i_1 
       (.I0(\cnt_rx0_a[63]_i_2_n_0 ),
        .I1(s_axi_awready),
        .I2(\cnt_rx_en_a_reg_n_0_[0] ),
        .I3(s_axi_wstrb[3]),
        .I4(\cnt_rx0_a[63]_i_3_n_0 ),
        .O(\cnt_rx0_a[63]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \cnt_rx0_a[63]_i_2 
       (.I0(s_axi_awaddr[2]),
        .I1(s_axi_awaddr[1]),
        .I2(s_axi_awaddr[0]),
        .O(\cnt_rx0_a[63]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \cnt_rx0_a[63]_i_3 
       (.I0(s_axi_awaddr[2]),
        .I1(s_axi_awaddr[1]),
        .I2(s_axi_awaddr[4]),
        .I3(s_axi_awaddr[3]),
        .O(\cnt_rx0_a[63]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000800)) 
    \cnt_rx0_a[7]_i_1 
       (.I0(\cnt_rx0_a[63]_i_2_n_0 ),
        .I1(s_axi_wstrb[0]),
        .I2(\cnt_rx_en_a_reg_n_0_[0] ),
        .I3(s_axi_awready),
        .I4(\cnt_rx0_a[63]_i_3_n_0 ),
        .O(\cnt_rx0_a[7]_i_1_n_0 ));
  FDRE \cnt_rx0_a_reg[0] 
       (.C(aclk),
        .CE(\cnt_rx0_a[7]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(\cnt_rx0_a_reg_n_0_[0] ),
        .R(p_0_in__0));
  FDRE \cnt_rx0_a_reg[10] 
       (.C(aclk),
        .CE(\cnt_rx0_a[15]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(\cnt_rx0_a_reg_n_0_[10] ),
        .R(p_0_in__0));
  FDRE \cnt_rx0_a_reg[11] 
       (.C(aclk),
        .CE(\cnt_rx0_a[15]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(\cnt_rx0_a_reg_n_0_[11] ),
        .R(p_0_in__0));
  FDRE \cnt_rx0_a_reg[12] 
       (.C(aclk),
        .CE(\cnt_rx0_a[15]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(\cnt_rx0_a_reg_n_0_[12] ),
        .R(p_0_in__0));
  FDRE \cnt_rx0_a_reg[13] 
       (.C(aclk),
        .CE(\cnt_rx0_a[15]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(\cnt_rx0_a_reg_n_0_[13] ),
        .R(p_0_in__0));
  FDRE \cnt_rx0_a_reg[14] 
       (.C(aclk),
        .CE(\cnt_rx0_a[15]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(\cnt_rx0_a_reg_n_0_[14] ),
        .R(p_0_in__0));
  FDRE \cnt_rx0_a_reg[15] 
       (.C(aclk),
        .CE(\cnt_rx0_a[15]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(\cnt_rx0_a_reg_n_0_[15] ),
        .R(p_0_in__0));
  FDRE \cnt_rx0_a_reg[16] 
       (.C(aclk),
        .CE(\cnt_rx0_a[23]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(\cnt_rx0_a_reg_n_0_[16] ),
        .R(p_0_in__0));
  FDRE \cnt_rx0_a_reg[17] 
       (.C(aclk),
        .CE(\cnt_rx0_a[23]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(\cnt_rx0_a_reg_n_0_[17] ),
        .R(p_0_in__0));
  FDRE \cnt_rx0_a_reg[18] 
       (.C(aclk),
        .CE(\cnt_rx0_a[23]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(\cnt_rx0_a_reg_n_0_[18] ),
        .R(p_0_in__0));
  FDRE \cnt_rx0_a_reg[19] 
       (.C(aclk),
        .CE(\cnt_rx0_a[23]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(\cnt_rx0_a_reg_n_0_[19] ),
        .R(p_0_in__0));
  FDRE \cnt_rx0_a_reg[1] 
       (.C(aclk),
        .CE(\cnt_rx0_a[7]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(\cnt_rx0_a_reg_n_0_[1] ),
        .R(p_0_in__0));
  FDRE \cnt_rx0_a_reg[20] 
       (.C(aclk),
        .CE(\cnt_rx0_a[23]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(\cnt_rx0_a_reg_n_0_[20] ),
        .R(p_0_in__0));
  FDRE \cnt_rx0_a_reg[21] 
       (.C(aclk),
        .CE(\cnt_rx0_a[23]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(\cnt_rx0_a_reg_n_0_[21] ),
        .R(p_0_in__0));
  FDRE \cnt_rx0_a_reg[22] 
       (.C(aclk),
        .CE(\cnt_rx0_a[23]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(\cnt_rx0_a_reg_n_0_[22] ),
        .R(p_0_in__0));
  FDRE \cnt_rx0_a_reg[23] 
       (.C(aclk),
        .CE(\cnt_rx0_a[23]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(\cnt_rx0_a_reg_n_0_[23] ),
        .R(p_0_in__0));
  FDRE \cnt_rx0_a_reg[24] 
       (.C(aclk),
        .CE(\cnt_rx0_a[31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(\cnt_rx0_a_reg_n_0_[24] ),
        .R(p_0_in__0));
  FDRE \cnt_rx0_a_reg[25] 
       (.C(aclk),
        .CE(\cnt_rx0_a[31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(\cnt_rx0_a_reg_n_0_[25] ),
        .R(p_0_in__0));
  FDRE \cnt_rx0_a_reg[26] 
       (.C(aclk),
        .CE(\cnt_rx0_a[31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(\cnt_rx0_a_reg_n_0_[26] ),
        .R(p_0_in__0));
  FDRE \cnt_rx0_a_reg[27] 
       (.C(aclk),
        .CE(\cnt_rx0_a[31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(\cnt_rx0_a_reg_n_0_[27] ),
        .R(p_0_in__0));
  FDRE \cnt_rx0_a_reg[28] 
       (.C(aclk),
        .CE(\cnt_rx0_a[31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(\cnt_rx0_a_reg_n_0_[28] ),
        .R(p_0_in__0));
  FDRE \cnt_rx0_a_reg[29] 
       (.C(aclk),
        .CE(\cnt_rx0_a[31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(\cnt_rx0_a_reg_n_0_[29] ),
        .R(p_0_in__0));
  FDRE \cnt_rx0_a_reg[2] 
       (.C(aclk),
        .CE(\cnt_rx0_a[7]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(\cnt_rx0_a_reg_n_0_[2] ),
        .R(p_0_in__0));
  FDRE \cnt_rx0_a_reg[30] 
       (.C(aclk),
        .CE(\cnt_rx0_a[31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(\cnt_rx0_a_reg_n_0_[30] ),
        .R(p_0_in__0));
  FDRE \cnt_rx0_a_reg[31] 
       (.C(aclk),
        .CE(\cnt_rx0_a[31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(\cnt_rx0_a_reg_n_0_[31] ),
        .R(p_0_in__0));
  FDRE \cnt_rx0_a_reg[32] 
       (.C(aclk),
        .CE(\cnt_rx0_a[39]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(p_13_in[0]),
        .R(p_0_in__0));
  FDRE \cnt_rx0_a_reg[33] 
       (.C(aclk),
        .CE(\cnt_rx0_a[39]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(p_13_in[1]),
        .R(p_0_in__0));
  FDRE \cnt_rx0_a_reg[34] 
       (.C(aclk),
        .CE(\cnt_rx0_a[39]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(p_13_in[2]),
        .R(p_0_in__0));
  FDRE \cnt_rx0_a_reg[35] 
       (.C(aclk),
        .CE(\cnt_rx0_a[39]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(p_13_in[3]),
        .R(p_0_in__0));
  FDRE \cnt_rx0_a_reg[36] 
       (.C(aclk),
        .CE(\cnt_rx0_a[39]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(p_13_in[4]),
        .R(p_0_in__0));
  FDRE \cnt_rx0_a_reg[37] 
       (.C(aclk),
        .CE(\cnt_rx0_a[39]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(p_13_in[5]),
        .R(p_0_in__0));
  FDRE \cnt_rx0_a_reg[38] 
       (.C(aclk),
        .CE(\cnt_rx0_a[39]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(p_13_in[6]),
        .R(p_0_in__0));
  FDRE \cnt_rx0_a_reg[39] 
       (.C(aclk),
        .CE(\cnt_rx0_a[39]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(p_13_in[7]),
        .R(p_0_in__0));
  FDRE \cnt_rx0_a_reg[3] 
       (.C(aclk),
        .CE(\cnt_rx0_a[7]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(\cnt_rx0_a_reg_n_0_[3] ),
        .R(p_0_in__0));
  FDRE \cnt_rx0_a_reg[40] 
       (.C(aclk),
        .CE(\cnt_rx0_a[47]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(p_13_in[8]),
        .R(p_0_in__0));
  FDRE \cnt_rx0_a_reg[41] 
       (.C(aclk),
        .CE(\cnt_rx0_a[47]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(p_13_in[9]),
        .R(p_0_in__0));
  FDRE \cnt_rx0_a_reg[42] 
       (.C(aclk),
        .CE(\cnt_rx0_a[47]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(p_13_in[10]),
        .R(p_0_in__0));
  FDRE \cnt_rx0_a_reg[43] 
       (.C(aclk),
        .CE(\cnt_rx0_a[47]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(p_13_in[11]),
        .R(p_0_in__0));
  FDRE \cnt_rx0_a_reg[44] 
       (.C(aclk),
        .CE(\cnt_rx0_a[47]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(p_13_in[12]),
        .R(p_0_in__0));
  FDRE \cnt_rx0_a_reg[45] 
       (.C(aclk),
        .CE(\cnt_rx0_a[47]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(p_13_in[13]),
        .R(p_0_in__0));
  FDRE \cnt_rx0_a_reg[46] 
       (.C(aclk),
        .CE(\cnt_rx0_a[47]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(p_13_in[14]),
        .R(p_0_in__0));
  FDRE \cnt_rx0_a_reg[47] 
       (.C(aclk),
        .CE(\cnt_rx0_a[47]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(p_13_in[15]),
        .R(p_0_in__0));
  FDRE \cnt_rx0_a_reg[48] 
       (.C(aclk),
        .CE(\cnt_rx0_a[55]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(p_13_in[16]),
        .R(p_0_in__0));
  FDRE \cnt_rx0_a_reg[49] 
       (.C(aclk),
        .CE(\cnt_rx0_a[55]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(p_13_in[17]),
        .R(p_0_in__0));
  FDRE \cnt_rx0_a_reg[4] 
       (.C(aclk),
        .CE(\cnt_rx0_a[7]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(\cnt_rx0_a_reg_n_0_[4] ),
        .R(p_0_in__0));
  FDRE \cnt_rx0_a_reg[50] 
       (.C(aclk),
        .CE(\cnt_rx0_a[55]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(p_13_in[18]),
        .R(p_0_in__0));
  FDRE \cnt_rx0_a_reg[51] 
       (.C(aclk),
        .CE(\cnt_rx0_a[55]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(p_13_in[19]),
        .R(p_0_in__0));
  FDRE \cnt_rx0_a_reg[52] 
       (.C(aclk),
        .CE(\cnt_rx0_a[55]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(p_13_in[20]),
        .R(p_0_in__0));
  FDRE \cnt_rx0_a_reg[53] 
       (.C(aclk),
        .CE(\cnt_rx0_a[55]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(p_13_in[21]),
        .R(p_0_in__0));
  FDRE \cnt_rx0_a_reg[54] 
       (.C(aclk),
        .CE(\cnt_rx0_a[55]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(p_13_in[22]),
        .R(p_0_in__0));
  FDRE \cnt_rx0_a_reg[55] 
       (.C(aclk),
        .CE(\cnt_rx0_a[55]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(p_13_in[23]),
        .R(p_0_in__0));
  FDRE \cnt_rx0_a_reg[56] 
       (.C(aclk),
        .CE(\cnt_rx0_a[63]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(p_13_in[24]),
        .R(p_0_in__0));
  FDRE \cnt_rx0_a_reg[57] 
       (.C(aclk),
        .CE(\cnt_rx0_a[63]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(p_13_in[25]),
        .R(p_0_in__0));
  FDRE \cnt_rx0_a_reg[58] 
       (.C(aclk),
        .CE(\cnt_rx0_a[63]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(p_13_in[26]),
        .R(p_0_in__0));
  FDRE \cnt_rx0_a_reg[59] 
       (.C(aclk),
        .CE(\cnt_rx0_a[63]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(p_13_in[27]),
        .R(p_0_in__0));
  FDRE \cnt_rx0_a_reg[5] 
       (.C(aclk),
        .CE(\cnt_rx0_a[7]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(\cnt_rx0_a_reg_n_0_[5] ),
        .R(p_0_in__0));
  FDRE \cnt_rx0_a_reg[60] 
       (.C(aclk),
        .CE(\cnt_rx0_a[63]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(p_13_in[28]),
        .R(p_0_in__0));
  FDRE \cnt_rx0_a_reg[61] 
       (.C(aclk),
        .CE(\cnt_rx0_a[63]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(p_13_in[29]),
        .R(p_0_in__0));
  FDRE \cnt_rx0_a_reg[62] 
       (.C(aclk),
        .CE(\cnt_rx0_a[63]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(p_13_in[30]),
        .R(p_0_in__0));
  FDRE \cnt_rx0_a_reg[63] 
       (.C(aclk),
        .CE(\cnt_rx0_a[63]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(p_13_in[31]),
        .R(p_0_in__0));
  FDRE \cnt_rx0_a_reg[6] 
       (.C(aclk),
        .CE(\cnt_rx0_a[7]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(\cnt_rx0_a_reg_n_0_[6] ),
        .R(p_0_in__0));
  FDRE \cnt_rx0_a_reg[7] 
       (.C(aclk),
        .CE(\cnt_rx0_a[7]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(\cnt_rx0_a_reg_n_0_[7] ),
        .R(p_0_in__0));
  FDRE \cnt_rx0_a_reg[8] 
       (.C(aclk),
        .CE(\cnt_rx0_a[15]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(\cnt_rx0_a_reg_n_0_[8] ),
        .R(p_0_in__0));
  FDRE \cnt_rx0_a_reg[9] 
       (.C(aclk),
        .CE(\cnt_rx0_a[15]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(\cnt_rx0_a_reg_n_0_[9] ),
        .R(p_0_in__0));
  FDRE \cnt_rx0_reg[0] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[74]),
        .Q(cnt_rx0[0]),
        .R(1'b0));
  FDRE \cnt_rx0_reg[10] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[84]),
        .Q(cnt_rx0[10]),
        .R(1'b0));
  FDRE \cnt_rx0_reg[11] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[85]),
        .Q(cnt_rx0[11]),
        .R(1'b0));
  FDRE \cnt_rx0_reg[12] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[86]),
        .Q(cnt_rx0[12]),
        .R(1'b0));
  FDRE \cnt_rx0_reg[13] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[87]),
        .Q(cnt_rx0[13]),
        .R(1'b0));
  FDRE \cnt_rx0_reg[14] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[88]),
        .Q(cnt_rx0[14]),
        .R(1'b0));
  FDRE \cnt_rx0_reg[15] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[89]),
        .Q(cnt_rx0[15]),
        .R(1'b0));
  FDRE \cnt_rx0_reg[16] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[90]),
        .Q(cnt_rx0[16]),
        .R(1'b0));
  FDRE \cnt_rx0_reg[17] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[91]),
        .Q(cnt_rx0[17]),
        .R(1'b0));
  FDRE \cnt_rx0_reg[18] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[92]),
        .Q(cnt_rx0[18]),
        .R(1'b0));
  FDRE \cnt_rx0_reg[19] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[93]),
        .Q(cnt_rx0[19]),
        .R(1'b0));
  FDRE \cnt_rx0_reg[1] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[75]),
        .Q(cnt_rx0[1]),
        .R(1'b0));
  FDRE \cnt_rx0_reg[20] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[94]),
        .Q(cnt_rx0[20]),
        .R(1'b0));
  FDRE \cnt_rx0_reg[21] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[95]),
        .Q(cnt_rx0[21]),
        .R(1'b0));
  FDRE \cnt_rx0_reg[22] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[96]),
        .Q(cnt_rx0[22]),
        .R(1'b0));
  FDRE \cnt_rx0_reg[23] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[97]),
        .Q(cnt_rx0[23]),
        .R(1'b0));
  FDRE \cnt_rx0_reg[24] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[98]),
        .Q(cnt_rx0[24]),
        .R(1'b0));
  FDRE \cnt_rx0_reg[25] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[99]),
        .Q(cnt_rx0[25]),
        .R(1'b0));
  FDRE \cnt_rx0_reg[26] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[100]),
        .Q(cnt_rx0[26]),
        .R(1'b0));
  FDRE \cnt_rx0_reg[27] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[101]),
        .Q(cnt_rx0[27]),
        .R(1'b0));
  FDRE \cnt_rx0_reg[28] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[102]),
        .Q(cnt_rx0[28]),
        .R(1'b0));
  FDRE \cnt_rx0_reg[29] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[103]),
        .Q(cnt_rx0[29]),
        .R(1'b0));
  FDRE \cnt_rx0_reg[2] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[76]),
        .Q(cnt_rx0[2]),
        .R(1'b0));
  FDRE \cnt_rx0_reg[30] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[104]),
        .Q(cnt_rx0[30]),
        .R(1'b0));
  FDRE \cnt_rx0_reg[31] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[105]),
        .Q(cnt_rx0[31]),
        .R(1'b0));
  FDRE \cnt_rx0_reg[32] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[106]),
        .Q(cnt_rx0[32]),
        .R(1'b0));
  FDRE \cnt_rx0_reg[33] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[107]),
        .Q(cnt_rx0[33]),
        .R(1'b0));
  FDRE \cnt_rx0_reg[34] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[108]),
        .Q(cnt_rx0[34]),
        .R(1'b0));
  FDRE \cnt_rx0_reg[35] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[109]),
        .Q(cnt_rx0[35]),
        .R(1'b0));
  FDRE \cnt_rx0_reg[36] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[110]),
        .Q(cnt_rx0[36]),
        .R(1'b0));
  FDRE \cnt_rx0_reg[37] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[111]),
        .Q(cnt_rx0[37]),
        .R(1'b0));
  FDRE \cnt_rx0_reg[38] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[112]),
        .Q(cnt_rx0[38]),
        .R(1'b0));
  FDRE \cnt_rx0_reg[39] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[113]),
        .Q(cnt_rx0[39]),
        .R(1'b0));
  FDRE \cnt_rx0_reg[3] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[77]),
        .Q(cnt_rx0[3]),
        .R(1'b0));
  FDRE \cnt_rx0_reg[40] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[114]),
        .Q(cnt_rx0[40]),
        .R(1'b0));
  FDRE \cnt_rx0_reg[41] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[115]),
        .Q(cnt_rx0[41]),
        .R(1'b0));
  FDRE \cnt_rx0_reg[42] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[116]),
        .Q(cnt_rx0[42]),
        .R(1'b0));
  FDRE \cnt_rx0_reg[43] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[117]),
        .Q(cnt_rx0[43]),
        .R(1'b0));
  FDRE \cnt_rx0_reg[44] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[118]),
        .Q(cnt_rx0[44]),
        .R(1'b0));
  FDRE \cnt_rx0_reg[45] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[119]),
        .Q(cnt_rx0[45]),
        .R(1'b0));
  FDRE \cnt_rx0_reg[46] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[120]),
        .Q(cnt_rx0[46]),
        .R(1'b0));
  FDRE \cnt_rx0_reg[47] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[121]),
        .Q(cnt_rx0[47]),
        .R(1'b0));
  FDRE \cnt_rx0_reg[48] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[122]),
        .Q(cnt_rx0[48]),
        .R(1'b0));
  FDRE \cnt_rx0_reg[49] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[123]),
        .Q(cnt_rx0[49]),
        .R(1'b0));
  FDRE \cnt_rx0_reg[4] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[78]),
        .Q(cnt_rx0[4]),
        .R(1'b0));
  FDRE \cnt_rx0_reg[50] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[124]),
        .Q(cnt_rx0[50]),
        .R(1'b0));
  FDRE \cnt_rx0_reg[51] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[125]),
        .Q(cnt_rx0[51]),
        .R(1'b0));
  FDRE \cnt_rx0_reg[52] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[126]),
        .Q(cnt_rx0[52]),
        .R(1'b0));
  FDRE \cnt_rx0_reg[53] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[127]),
        .Q(cnt_rx0[53]),
        .R(1'b0));
  FDRE \cnt_rx0_reg[54] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[128]),
        .Q(cnt_rx0[54]),
        .R(1'b0));
  FDRE \cnt_rx0_reg[55] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[129]),
        .Q(cnt_rx0[55]),
        .R(1'b0));
  FDRE \cnt_rx0_reg[56] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[130]),
        .Q(cnt_rx0[56]),
        .R(1'b0));
  FDRE \cnt_rx0_reg[57] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[131]),
        .Q(cnt_rx0[57]),
        .R(1'b0));
  FDRE \cnt_rx0_reg[58] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[132]),
        .Q(cnt_rx0[58]),
        .R(1'b0));
  FDRE \cnt_rx0_reg[59] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[133]),
        .Q(cnt_rx0[59]),
        .R(1'b0));
  FDRE \cnt_rx0_reg[5] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[79]),
        .Q(cnt_rx0[5]),
        .R(1'b0));
  FDRE \cnt_rx0_reg[60] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[134]),
        .Q(cnt_rx0[60]),
        .R(1'b0));
  FDRE \cnt_rx0_reg[61] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[135]),
        .Q(cnt_rx0[61]),
        .R(1'b0));
  FDRE \cnt_rx0_reg[62] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[136]),
        .Q(cnt_rx0[62]),
        .R(1'b0));
  FDRE \cnt_rx0_reg[63] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[137]),
        .Q(cnt_rx0[63]),
        .R(1'b0));
  FDRE \cnt_rx0_reg[6] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[80]),
        .Q(cnt_rx0[6]),
        .R(1'b0));
  FDRE \cnt_rx0_reg[7] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[81]),
        .Q(cnt_rx0[7]),
        .R(1'b0));
  FDRE \cnt_rx0_reg[8] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[82]),
        .Q(cnt_rx0[8]),
        .R(1'b0));
  FDRE \cnt_rx0_reg[9] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[83]),
        .Q(cnt_rx0[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0000D000)) 
    \cnt_rx1_a[15]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(s_axi_awaddr[1]),
        .I2(s_axi_awaddr[2]),
        .I3(s_axi_wstrb[1]),
        .I4(\cnt_rx1_a[63]_i_2_n_0 ),
        .O(\cnt_rx1_a[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000D000)) 
    \cnt_rx1_a[23]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(s_axi_awaddr[1]),
        .I2(s_axi_awaddr[2]),
        .I3(s_axi_wstrb[2]),
        .I4(\cnt_rx1_a[63]_i_2_n_0 ),
        .O(\cnt_rx1_a[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000D000)) 
    \cnt_rx1_a[31]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(s_axi_awaddr[1]),
        .I2(s_axi_awaddr[2]),
        .I3(s_axi_wstrb[3]),
        .I4(\cnt_rx1_a[63]_i_2_n_0 ),
        .O(\cnt_rx1_a[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00002F00)) 
    \cnt_rx1_a[39]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(s_axi_awaddr[1]),
        .I2(s_axi_awaddr[2]),
        .I3(s_axi_wstrb[0]),
        .I4(\cnt_rx1_a[63]_i_2_n_0 ),
        .O(\cnt_rx1_a[39]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00002F00)) 
    \cnt_rx1_a[47]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(s_axi_awaddr[1]),
        .I2(s_axi_awaddr[2]),
        .I3(s_axi_wstrb[1]),
        .I4(\cnt_rx1_a[63]_i_2_n_0 ),
        .O(\cnt_rx1_a[47]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00002F00)) 
    \cnt_rx1_a[55]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(s_axi_awaddr[1]),
        .I2(s_axi_awaddr[2]),
        .I3(s_axi_wstrb[2]),
        .I4(\cnt_rx1_a[63]_i_2_n_0 ),
        .O(\cnt_rx1_a[55]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00002F00)) 
    \cnt_rx1_a[63]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(s_axi_awaddr[1]),
        .I2(s_axi_awaddr[2]),
        .I3(s_axi_wstrb[3]),
        .I4(\cnt_rx1_a[63]_i_2_n_0 ),
        .O(\cnt_rx1_a[63]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF7FFFFF)) 
    \cnt_rx1_a[63]_i_2 
       (.I0(s_axi_awaddr[4]),
        .I1(s_axi_awready),
        .I2(s_axi_awaddr[3]),
        .I3(s_axi_awaddr[1]),
        .I4(s_axi_awaddr[2]),
        .I5(p_1_in65_in),
        .O(\cnt_rx1_a[63]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0000D000)) 
    \cnt_rx1_a[7]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(s_axi_awaddr[1]),
        .I2(s_axi_awaddr[2]),
        .I3(s_axi_wstrb[0]),
        .I4(\cnt_rx1_a[63]_i_2_n_0 ),
        .O(\cnt_rx1_a[7]_i_1_n_0 ));
  FDRE \cnt_rx1_a_reg[0] 
       (.C(aclk),
        .CE(\cnt_rx1_a[7]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(\cnt_rx1_a_reg_n_0_[0] ),
        .R(p_0_in__0));
  FDRE \cnt_rx1_a_reg[10] 
       (.C(aclk),
        .CE(\cnt_rx1_a[15]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(\cnt_rx1_a_reg_n_0_[10] ),
        .R(p_0_in__0));
  FDRE \cnt_rx1_a_reg[11] 
       (.C(aclk),
        .CE(\cnt_rx1_a[15]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(\cnt_rx1_a_reg_n_0_[11] ),
        .R(p_0_in__0));
  FDRE \cnt_rx1_a_reg[12] 
       (.C(aclk),
        .CE(\cnt_rx1_a[15]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(\cnt_rx1_a_reg_n_0_[12] ),
        .R(p_0_in__0));
  FDRE \cnt_rx1_a_reg[13] 
       (.C(aclk),
        .CE(\cnt_rx1_a[15]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(\cnt_rx1_a_reg_n_0_[13] ),
        .R(p_0_in__0));
  FDRE \cnt_rx1_a_reg[14] 
       (.C(aclk),
        .CE(\cnt_rx1_a[15]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(\cnt_rx1_a_reg_n_0_[14] ),
        .R(p_0_in__0));
  FDRE \cnt_rx1_a_reg[15] 
       (.C(aclk),
        .CE(\cnt_rx1_a[15]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(\cnt_rx1_a_reg_n_0_[15] ),
        .R(p_0_in__0));
  FDRE \cnt_rx1_a_reg[16] 
       (.C(aclk),
        .CE(\cnt_rx1_a[23]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(\cnt_rx1_a_reg_n_0_[16] ),
        .R(p_0_in__0));
  FDRE \cnt_rx1_a_reg[17] 
       (.C(aclk),
        .CE(\cnt_rx1_a[23]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(\cnt_rx1_a_reg_n_0_[17] ),
        .R(p_0_in__0));
  FDRE \cnt_rx1_a_reg[18] 
       (.C(aclk),
        .CE(\cnt_rx1_a[23]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(\cnt_rx1_a_reg_n_0_[18] ),
        .R(p_0_in__0));
  FDRE \cnt_rx1_a_reg[19] 
       (.C(aclk),
        .CE(\cnt_rx1_a[23]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(\cnt_rx1_a_reg_n_0_[19] ),
        .R(p_0_in__0));
  FDRE \cnt_rx1_a_reg[1] 
       (.C(aclk),
        .CE(\cnt_rx1_a[7]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(\cnt_rx1_a_reg_n_0_[1] ),
        .R(p_0_in__0));
  FDRE \cnt_rx1_a_reg[20] 
       (.C(aclk),
        .CE(\cnt_rx1_a[23]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(\cnt_rx1_a_reg_n_0_[20] ),
        .R(p_0_in__0));
  FDRE \cnt_rx1_a_reg[21] 
       (.C(aclk),
        .CE(\cnt_rx1_a[23]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(\cnt_rx1_a_reg_n_0_[21] ),
        .R(p_0_in__0));
  FDRE \cnt_rx1_a_reg[22] 
       (.C(aclk),
        .CE(\cnt_rx1_a[23]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(\cnt_rx1_a_reg_n_0_[22] ),
        .R(p_0_in__0));
  FDRE \cnt_rx1_a_reg[23] 
       (.C(aclk),
        .CE(\cnt_rx1_a[23]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(\cnt_rx1_a_reg_n_0_[23] ),
        .R(p_0_in__0));
  FDRE \cnt_rx1_a_reg[24] 
       (.C(aclk),
        .CE(\cnt_rx1_a[31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(\cnt_rx1_a_reg_n_0_[24] ),
        .R(p_0_in__0));
  FDRE \cnt_rx1_a_reg[25] 
       (.C(aclk),
        .CE(\cnt_rx1_a[31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(\cnt_rx1_a_reg_n_0_[25] ),
        .R(p_0_in__0));
  FDRE \cnt_rx1_a_reg[26] 
       (.C(aclk),
        .CE(\cnt_rx1_a[31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(\cnt_rx1_a_reg_n_0_[26] ),
        .R(p_0_in__0));
  FDRE \cnt_rx1_a_reg[27] 
       (.C(aclk),
        .CE(\cnt_rx1_a[31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(\cnt_rx1_a_reg_n_0_[27] ),
        .R(p_0_in__0));
  FDRE \cnt_rx1_a_reg[28] 
       (.C(aclk),
        .CE(\cnt_rx1_a[31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(\cnt_rx1_a_reg_n_0_[28] ),
        .R(p_0_in__0));
  FDRE \cnt_rx1_a_reg[29] 
       (.C(aclk),
        .CE(\cnt_rx1_a[31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(\cnt_rx1_a_reg_n_0_[29] ),
        .R(p_0_in__0));
  FDRE \cnt_rx1_a_reg[2] 
       (.C(aclk),
        .CE(\cnt_rx1_a[7]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(\cnt_rx1_a_reg_n_0_[2] ),
        .R(p_0_in__0));
  FDRE \cnt_rx1_a_reg[30] 
       (.C(aclk),
        .CE(\cnt_rx1_a[31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(\cnt_rx1_a_reg_n_0_[30] ),
        .R(p_0_in__0));
  FDRE \cnt_rx1_a_reg[31] 
       (.C(aclk),
        .CE(\cnt_rx1_a[31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(\cnt_rx1_a_reg_n_0_[31] ),
        .R(p_0_in__0));
  FDRE \cnt_rx1_a_reg[32] 
       (.C(aclk),
        .CE(\cnt_rx1_a[39]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(p_8_in[0]),
        .R(p_0_in__0));
  FDRE \cnt_rx1_a_reg[33] 
       (.C(aclk),
        .CE(\cnt_rx1_a[39]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(p_8_in[1]),
        .R(p_0_in__0));
  FDRE \cnt_rx1_a_reg[34] 
       (.C(aclk),
        .CE(\cnt_rx1_a[39]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(p_8_in[2]),
        .R(p_0_in__0));
  FDRE \cnt_rx1_a_reg[35] 
       (.C(aclk),
        .CE(\cnt_rx1_a[39]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(p_8_in[3]),
        .R(p_0_in__0));
  FDRE \cnt_rx1_a_reg[36] 
       (.C(aclk),
        .CE(\cnt_rx1_a[39]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(p_8_in[4]),
        .R(p_0_in__0));
  FDRE \cnt_rx1_a_reg[37] 
       (.C(aclk),
        .CE(\cnt_rx1_a[39]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(p_8_in[5]),
        .R(p_0_in__0));
  FDRE \cnt_rx1_a_reg[38] 
       (.C(aclk),
        .CE(\cnt_rx1_a[39]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(p_8_in[6]),
        .R(p_0_in__0));
  FDRE \cnt_rx1_a_reg[39] 
       (.C(aclk),
        .CE(\cnt_rx1_a[39]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(p_8_in[7]),
        .R(p_0_in__0));
  FDRE \cnt_rx1_a_reg[3] 
       (.C(aclk),
        .CE(\cnt_rx1_a[7]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(\cnt_rx1_a_reg_n_0_[3] ),
        .R(p_0_in__0));
  FDRE \cnt_rx1_a_reg[40] 
       (.C(aclk),
        .CE(\cnt_rx1_a[47]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(p_8_in[8]),
        .R(p_0_in__0));
  FDRE \cnt_rx1_a_reg[41] 
       (.C(aclk),
        .CE(\cnt_rx1_a[47]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(p_8_in[9]),
        .R(p_0_in__0));
  FDRE \cnt_rx1_a_reg[42] 
       (.C(aclk),
        .CE(\cnt_rx1_a[47]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(p_8_in[10]),
        .R(p_0_in__0));
  FDRE \cnt_rx1_a_reg[43] 
       (.C(aclk),
        .CE(\cnt_rx1_a[47]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(p_8_in[11]),
        .R(p_0_in__0));
  FDRE \cnt_rx1_a_reg[44] 
       (.C(aclk),
        .CE(\cnt_rx1_a[47]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(p_8_in[12]),
        .R(p_0_in__0));
  FDRE \cnt_rx1_a_reg[45] 
       (.C(aclk),
        .CE(\cnt_rx1_a[47]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(p_8_in[13]),
        .R(p_0_in__0));
  FDRE \cnt_rx1_a_reg[46] 
       (.C(aclk),
        .CE(\cnt_rx1_a[47]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(p_8_in[14]),
        .R(p_0_in__0));
  FDRE \cnt_rx1_a_reg[47] 
       (.C(aclk),
        .CE(\cnt_rx1_a[47]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(p_8_in[15]),
        .R(p_0_in__0));
  FDRE \cnt_rx1_a_reg[48] 
       (.C(aclk),
        .CE(\cnt_rx1_a[55]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(p_8_in[16]),
        .R(p_0_in__0));
  FDRE \cnt_rx1_a_reg[49] 
       (.C(aclk),
        .CE(\cnt_rx1_a[55]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(p_8_in[17]),
        .R(p_0_in__0));
  FDRE \cnt_rx1_a_reg[4] 
       (.C(aclk),
        .CE(\cnt_rx1_a[7]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(\cnt_rx1_a_reg_n_0_[4] ),
        .R(p_0_in__0));
  FDRE \cnt_rx1_a_reg[50] 
       (.C(aclk),
        .CE(\cnt_rx1_a[55]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(p_8_in[18]),
        .R(p_0_in__0));
  FDRE \cnt_rx1_a_reg[51] 
       (.C(aclk),
        .CE(\cnt_rx1_a[55]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(p_8_in[19]),
        .R(p_0_in__0));
  FDRE \cnt_rx1_a_reg[52] 
       (.C(aclk),
        .CE(\cnt_rx1_a[55]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(p_8_in[20]),
        .R(p_0_in__0));
  FDRE \cnt_rx1_a_reg[53] 
       (.C(aclk),
        .CE(\cnt_rx1_a[55]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(p_8_in[21]),
        .R(p_0_in__0));
  FDRE \cnt_rx1_a_reg[54] 
       (.C(aclk),
        .CE(\cnt_rx1_a[55]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(p_8_in[22]),
        .R(p_0_in__0));
  FDRE \cnt_rx1_a_reg[55] 
       (.C(aclk),
        .CE(\cnt_rx1_a[55]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(p_8_in[23]),
        .R(p_0_in__0));
  FDRE \cnt_rx1_a_reg[56] 
       (.C(aclk),
        .CE(\cnt_rx1_a[63]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(p_8_in[24]),
        .R(p_0_in__0));
  FDRE \cnt_rx1_a_reg[57] 
       (.C(aclk),
        .CE(\cnt_rx1_a[63]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(p_8_in[25]),
        .R(p_0_in__0));
  FDRE \cnt_rx1_a_reg[58] 
       (.C(aclk),
        .CE(\cnt_rx1_a[63]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(p_8_in[26]),
        .R(p_0_in__0));
  FDRE \cnt_rx1_a_reg[59] 
       (.C(aclk),
        .CE(\cnt_rx1_a[63]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(p_8_in[27]),
        .R(p_0_in__0));
  FDRE \cnt_rx1_a_reg[5] 
       (.C(aclk),
        .CE(\cnt_rx1_a[7]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(\cnt_rx1_a_reg_n_0_[5] ),
        .R(p_0_in__0));
  FDRE \cnt_rx1_a_reg[60] 
       (.C(aclk),
        .CE(\cnt_rx1_a[63]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(p_8_in[28]),
        .R(p_0_in__0));
  FDRE \cnt_rx1_a_reg[61] 
       (.C(aclk),
        .CE(\cnt_rx1_a[63]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(p_8_in[29]),
        .R(p_0_in__0));
  FDRE \cnt_rx1_a_reg[62] 
       (.C(aclk),
        .CE(\cnt_rx1_a[63]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(p_8_in[30]),
        .R(p_0_in__0));
  FDRE \cnt_rx1_a_reg[63] 
       (.C(aclk),
        .CE(\cnt_rx1_a[63]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(p_8_in[31]),
        .R(p_0_in__0));
  FDRE \cnt_rx1_a_reg[6] 
       (.C(aclk),
        .CE(\cnt_rx1_a[7]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(\cnt_rx1_a_reg_n_0_[6] ),
        .R(p_0_in__0));
  FDRE \cnt_rx1_a_reg[7] 
       (.C(aclk),
        .CE(\cnt_rx1_a[7]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(\cnt_rx1_a_reg_n_0_[7] ),
        .R(p_0_in__0));
  FDRE \cnt_rx1_a_reg[8] 
       (.C(aclk),
        .CE(\cnt_rx1_a[15]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(\cnt_rx1_a_reg_n_0_[8] ),
        .R(p_0_in__0));
  FDRE \cnt_rx1_a_reg[9] 
       (.C(aclk),
        .CE(\cnt_rx1_a[15]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(\cnt_rx1_a_reg_n_0_[9] ),
        .R(p_0_in__0));
  FDRE \cnt_rx1_reg[0] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[10]),
        .Q(cnt_rx1[0]),
        .R(1'b0));
  FDRE \cnt_rx1_reg[10] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[20]),
        .Q(cnt_rx1[10]),
        .R(1'b0));
  FDRE \cnt_rx1_reg[11] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[21]),
        .Q(cnt_rx1[11]),
        .R(1'b0));
  FDRE \cnt_rx1_reg[12] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[22]),
        .Q(cnt_rx1[12]),
        .R(1'b0));
  FDRE \cnt_rx1_reg[13] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[23]),
        .Q(cnt_rx1[13]),
        .R(1'b0));
  FDRE \cnt_rx1_reg[14] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[24]),
        .Q(cnt_rx1[14]),
        .R(1'b0));
  FDRE \cnt_rx1_reg[15] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[25]),
        .Q(cnt_rx1[15]),
        .R(1'b0));
  FDRE \cnt_rx1_reg[16] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[26]),
        .Q(cnt_rx1[16]),
        .R(1'b0));
  FDRE \cnt_rx1_reg[17] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[27]),
        .Q(cnt_rx1[17]),
        .R(1'b0));
  FDRE \cnt_rx1_reg[18] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[28]),
        .Q(cnt_rx1[18]),
        .R(1'b0));
  FDRE \cnt_rx1_reg[19] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[29]),
        .Q(cnt_rx1[19]),
        .R(1'b0));
  FDRE \cnt_rx1_reg[1] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[11]),
        .Q(cnt_rx1[1]),
        .R(1'b0));
  FDRE \cnt_rx1_reg[20] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[30]),
        .Q(cnt_rx1[20]),
        .R(1'b0));
  FDRE \cnt_rx1_reg[21] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[31]),
        .Q(cnt_rx1[21]),
        .R(1'b0));
  FDRE \cnt_rx1_reg[22] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[32]),
        .Q(cnt_rx1[22]),
        .R(1'b0));
  FDRE \cnt_rx1_reg[23] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[33]),
        .Q(cnt_rx1[23]),
        .R(1'b0));
  FDRE \cnt_rx1_reg[24] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[34]),
        .Q(cnt_rx1[24]),
        .R(1'b0));
  FDRE \cnt_rx1_reg[25] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[35]),
        .Q(cnt_rx1[25]),
        .R(1'b0));
  FDRE \cnt_rx1_reg[26] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[36]),
        .Q(cnt_rx1[26]),
        .R(1'b0));
  FDRE \cnt_rx1_reg[27] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[37]),
        .Q(cnt_rx1[27]),
        .R(1'b0));
  FDRE \cnt_rx1_reg[28] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[38]),
        .Q(cnt_rx1[28]),
        .R(1'b0));
  FDRE \cnt_rx1_reg[29] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[39]),
        .Q(cnt_rx1[29]),
        .R(1'b0));
  FDRE \cnt_rx1_reg[2] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[12]),
        .Q(cnt_rx1[2]),
        .R(1'b0));
  FDRE \cnt_rx1_reg[30] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[40]),
        .Q(cnt_rx1[30]),
        .R(1'b0));
  FDRE \cnt_rx1_reg[31] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[41]),
        .Q(cnt_rx1[31]),
        .R(1'b0));
  FDRE \cnt_rx1_reg[32] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[42]),
        .Q(cnt_rx1[32]),
        .R(1'b0));
  FDRE \cnt_rx1_reg[33] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[43]),
        .Q(cnt_rx1[33]),
        .R(1'b0));
  FDRE \cnt_rx1_reg[34] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[44]),
        .Q(cnt_rx1[34]),
        .R(1'b0));
  FDRE \cnt_rx1_reg[35] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[45]),
        .Q(cnt_rx1[35]),
        .R(1'b0));
  FDRE \cnt_rx1_reg[36] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[46]),
        .Q(cnt_rx1[36]),
        .R(1'b0));
  FDRE \cnt_rx1_reg[37] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[47]),
        .Q(cnt_rx1[37]),
        .R(1'b0));
  FDRE \cnt_rx1_reg[38] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[48]),
        .Q(cnt_rx1[38]),
        .R(1'b0));
  FDRE \cnt_rx1_reg[39] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[49]),
        .Q(cnt_rx1[39]),
        .R(1'b0));
  FDRE \cnt_rx1_reg[3] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[13]),
        .Q(cnt_rx1[3]),
        .R(1'b0));
  FDRE \cnt_rx1_reg[40] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[50]),
        .Q(cnt_rx1[40]),
        .R(1'b0));
  FDRE \cnt_rx1_reg[41] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[51]),
        .Q(cnt_rx1[41]),
        .R(1'b0));
  FDRE \cnt_rx1_reg[42] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[52]),
        .Q(cnt_rx1[42]),
        .R(1'b0));
  FDRE \cnt_rx1_reg[43] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[53]),
        .Q(cnt_rx1[43]),
        .R(1'b0));
  FDRE \cnt_rx1_reg[44] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[54]),
        .Q(cnt_rx1[44]),
        .R(1'b0));
  FDRE \cnt_rx1_reg[45] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[55]),
        .Q(cnt_rx1[45]),
        .R(1'b0));
  FDRE \cnt_rx1_reg[46] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[56]),
        .Q(cnt_rx1[46]),
        .R(1'b0));
  FDRE \cnt_rx1_reg[47] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[57]),
        .Q(cnt_rx1[47]),
        .R(1'b0));
  FDRE \cnt_rx1_reg[48] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[58]),
        .Q(cnt_rx1[48]),
        .R(1'b0));
  FDRE \cnt_rx1_reg[49] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[59]),
        .Q(cnt_rx1[49]),
        .R(1'b0));
  FDRE \cnt_rx1_reg[4] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[14]),
        .Q(cnt_rx1[4]),
        .R(1'b0));
  FDRE \cnt_rx1_reg[50] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[60]),
        .Q(cnt_rx1[50]),
        .R(1'b0));
  FDRE \cnt_rx1_reg[51] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[61]),
        .Q(cnt_rx1[51]),
        .R(1'b0));
  FDRE \cnt_rx1_reg[52] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[62]),
        .Q(cnt_rx1[52]),
        .R(1'b0));
  FDRE \cnt_rx1_reg[53] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[63]),
        .Q(cnt_rx1[53]),
        .R(1'b0));
  FDRE \cnt_rx1_reg[54] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[64]),
        .Q(cnt_rx1[54]),
        .R(1'b0));
  FDRE \cnt_rx1_reg[55] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[65]),
        .Q(cnt_rx1[55]),
        .R(1'b0));
  FDRE \cnt_rx1_reg[56] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[66]),
        .Q(cnt_rx1[56]),
        .R(1'b0));
  FDRE \cnt_rx1_reg[57] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[67]),
        .Q(cnt_rx1[57]),
        .R(1'b0));
  FDRE \cnt_rx1_reg[58] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[68]),
        .Q(cnt_rx1[58]),
        .R(1'b0));
  FDRE \cnt_rx1_reg[59] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[69]),
        .Q(cnt_rx1[59]),
        .R(1'b0));
  FDRE \cnt_rx1_reg[5] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[15]),
        .Q(cnt_rx1[5]),
        .R(1'b0));
  FDRE \cnt_rx1_reg[60] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[70]),
        .Q(cnt_rx1[60]),
        .R(1'b0));
  FDRE \cnt_rx1_reg[61] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[71]),
        .Q(cnt_rx1[61]),
        .R(1'b0));
  FDRE \cnt_rx1_reg[62] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[72]),
        .Q(cnt_rx1[62]),
        .R(1'b0));
  FDRE \cnt_rx1_reg[63] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[73]),
        .Q(cnt_rx1[63]),
        .R(1'b0));
  FDRE \cnt_rx1_reg[6] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[16]),
        .Q(cnt_rx1[6]),
        .R(1'b0));
  FDRE \cnt_rx1_reg[7] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[17]),
        .Q(cnt_rx1[7]),
        .R(1'b0));
  FDRE \cnt_rx1_reg[8] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[18]),
        .Q(cnt_rx1[8]),
        .R(1'b0));
  FDRE \cnt_rx1_reg[9] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[19]),
        .Q(cnt_rx1[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hEA00)) 
    \cnt_rx_done[0]_i_1 
       (.I0(\cnt_rx_done_reg_n_0_[0] ),
        .I1(ts_clk_rx_en_reg_0),
        .I2(rx_enable1),
        .I3(\cnt_rx_en_reg_n_0_[0] ),
        .O(\cnt_rx_done[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEA00)) 
    \cnt_rx_done[1]_i_1 
       (.I0(\cnt_rx_done_reg_n_0_[1] ),
        .I1(ts_clk_rx_en_reg_0),
        .I2(rx_enable10_out),
        .I3(p_2_in10_in),
        .O(\cnt_rx_done[1]_i_1_n_0 ));
  FDRE \cnt_rx_done_a_reg[0] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[5]),
        .Q(\cnt_rx_done_a_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \cnt_rx_done_a_reg[1] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[6]),
        .Q(p_0_in64_in),
        .R(1'b0));
  FDRE \cnt_rx_done_reg[0] 
       (.C(ts_clk),
        .CE(1'b1),
        .D(\cnt_rx_done[0]_i_1_n_0 ),
        .Q(\cnt_rx_done_reg_n_0_[0] ),
        .R(clear));
  FDRE \cnt_rx_done_reg[1] 
       (.C(ts_clk),
        .CE(1'b1),
        .D(\cnt_rx_done[1]_i_1_n_0 ),
        .Q(\cnt_rx_done_reg_n_0_[1] ),
        .R(clear));
  LUT5 #(
    .INIT(32'h03020A0A)) 
    \cnt_rx_en_a[0]_i_1 
       (.I0(\cnt_rx_en_a_reg_n_0_[0] ),
        .I1(s_axi_wdata[7]),
        .I2(\cnt_rx_done_a_reg_n_0_[0] ),
        .I3(s_axi_wdata[6]),
        .I4(\cnt_rx_en_a[0]_i_2_n_0 ),
        .O(\cnt_rx_en_a[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000200020000000)) 
    \cnt_rx_en_a[0]_i_2 
       (.I0(\cnt_rx_en_a[0]_i_3_n_0 ),
        .I1(s_axi_awaddr[1]),
        .I2(s_axi_awready),
        .I3(s_axi_wstrb[0]),
        .I4(s_axi_awaddr[3]),
        .I5(s_axi_awaddr[4]),
        .O(\cnt_rx_en_a[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \cnt_rx_en_a[0]_i_3 
       (.I0(s_axi_awaddr[2]),
        .I1(s_axi_awaddr[0]),
        .O(\cnt_rx_en_a[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h008B008A)) 
    \cnt_rx_en_a[1]_i_1 
       (.I0(p_1_in65_in),
        .I1(\cnt_rx_en_a[1]_i_2_n_0 ),
        .I2(s_axi_wdata[7]),
        .I3(p_0_in64_in),
        .I4(s_axi_wdata[6]),
        .O(\cnt_rx_en_a[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF7FFFFFFFF)) 
    \cnt_rx_en_a[1]_i_2 
       (.I0(s_axi_awaddr[3]),
        .I1(s_axi_awready),
        .I2(s_axi_awaddr[1]),
        .I3(s_axi_awaddr[0]),
        .I4(s_axi_awaddr[2]),
        .I5(s_axi_wstrb[0]),
        .O(\cnt_rx_en_a[1]_i_2_n_0 ));
  FDRE \cnt_rx_en_a_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt_rx_en_a[0]_i_1_n_0 ),
        .Q(\cnt_rx_en_a_reg_n_0_[0] ),
        .R(p_0_in__0));
  FDRE \cnt_rx_en_a_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt_rx_en_a[1]_i_1_n_0 ),
        .Q(p_1_in65_in),
        .R(p_0_in__0));
  FDRE \cnt_rx_en_reg[0] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[4]),
        .Q(\cnt_rx_en_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \cnt_rx_en_reg[1] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[5]),
        .Q(p_2_in10_in),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000008)) 
    \cnt_tx0_a[15]_i_1 
       (.I0(s_axi_wstrb[1]),
        .I1(s_axi_awaddr[1]),
        .I2(s_axi_awaddr[2]),
        .I3(s_axi_awaddr[0]),
        .I4(\cnt_tx0_a[63]_i_2_n_0 ),
        .O(\cnt_tx0_a[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \cnt_tx0_a[23]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(\cnt_tx0_a[63]_i_2_n_0 ),
        .I2(s_axi_awaddr[1]),
        .I3(s_axi_awaddr[2]),
        .I4(s_axi_wstrb[2]),
        .O(\cnt_tx0_a[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \cnt_tx0_a[31]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(\cnt_tx0_a[63]_i_2_n_0 ),
        .I2(s_axi_awaddr[1]),
        .I3(s_axi_awaddr[2]),
        .I4(s_axi_wstrb[3]),
        .O(\cnt_tx0_a[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \cnt_tx0_a[39]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(\cnt_tx0_a[63]_i_2_n_0 ),
        .I2(s_axi_awaddr[2]),
        .I3(s_axi_awaddr[1]),
        .I4(s_axi_wstrb[0]),
        .O(\cnt_tx0_a[39]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000800)) 
    \cnt_tx0_a[47]_i_1 
       (.I0(s_axi_wstrb[1]),
        .I1(s_axi_awaddr[0]),
        .I2(s_axi_awaddr[2]),
        .I3(s_axi_awaddr[1]),
        .I4(\cnt_tx0_a[63]_i_2_n_0 ),
        .O(\cnt_tx0_a[47]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \cnt_tx0_a[55]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(\cnt_tx0_a[63]_i_2_n_0 ),
        .I2(s_axi_awaddr[1]),
        .I3(s_axi_awaddr[2]),
        .I4(s_axi_wstrb[2]),
        .O(\cnt_tx0_a[55]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \cnt_tx0_a[63]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(\cnt_tx0_a[63]_i_2_n_0 ),
        .I2(s_axi_awaddr[1]),
        .I3(s_axi_awaddr[2]),
        .I4(s_axi_wstrb[3]),
        .O(\cnt_tx0_a[63]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \cnt_tx0_a[63]_i_2 
       (.I0(s_axi_awaddr[4]),
        .I1(s_axi_awaddr[3]),
        .I2(s_axi_awready),
        .I3(\cnt_tx_en_a_reg_n_0_[0] ),
        .O(\cnt_tx0_a[63]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h01000000)) 
    \cnt_tx0_a[7]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(\cnt_tx0_a[63]_i_2_n_0 ),
        .I2(s_axi_awaddr[2]),
        .I3(s_axi_awaddr[1]),
        .I4(s_axi_wstrb[0]),
        .O(\cnt_tx0_a[7]_i_1_n_0 ));
  FDRE \cnt_tx0_a_reg[0] 
       (.C(aclk),
        .CE(\cnt_tx0_a[7]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(\cnt_tx0_a_reg_n_0_[0] ),
        .R(p_0_in__0));
  FDRE \cnt_tx0_a_reg[10] 
       (.C(aclk),
        .CE(\cnt_tx0_a[15]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(\cnt_tx0_a_reg_n_0_[10] ),
        .R(p_0_in__0));
  FDRE \cnt_tx0_a_reg[11] 
       (.C(aclk),
        .CE(\cnt_tx0_a[15]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(\cnt_tx0_a_reg_n_0_[11] ),
        .R(p_0_in__0));
  FDRE \cnt_tx0_a_reg[12] 
       (.C(aclk),
        .CE(\cnt_tx0_a[15]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(\cnt_tx0_a_reg_n_0_[12] ),
        .R(p_0_in__0));
  FDRE \cnt_tx0_a_reg[13] 
       (.C(aclk),
        .CE(\cnt_tx0_a[15]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(\cnt_tx0_a_reg_n_0_[13] ),
        .R(p_0_in__0));
  FDRE \cnt_tx0_a_reg[14] 
       (.C(aclk),
        .CE(\cnt_tx0_a[15]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(\cnt_tx0_a_reg_n_0_[14] ),
        .R(p_0_in__0));
  FDRE \cnt_tx0_a_reg[15] 
       (.C(aclk),
        .CE(\cnt_tx0_a[15]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(\cnt_tx0_a_reg_n_0_[15] ),
        .R(p_0_in__0));
  FDRE \cnt_tx0_a_reg[16] 
       (.C(aclk),
        .CE(\cnt_tx0_a[23]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(\cnt_tx0_a_reg_n_0_[16] ),
        .R(p_0_in__0));
  FDRE \cnt_tx0_a_reg[17] 
       (.C(aclk),
        .CE(\cnt_tx0_a[23]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(\cnt_tx0_a_reg_n_0_[17] ),
        .R(p_0_in__0));
  FDRE \cnt_tx0_a_reg[18] 
       (.C(aclk),
        .CE(\cnt_tx0_a[23]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(\cnt_tx0_a_reg_n_0_[18] ),
        .R(p_0_in__0));
  FDRE \cnt_tx0_a_reg[19] 
       (.C(aclk),
        .CE(\cnt_tx0_a[23]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(\cnt_tx0_a_reg_n_0_[19] ),
        .R(p_0_in__0));
  FDRE \cnt_tx0_a_reg[1] 
       (.C(aclk),
        .CE(\cnt_tx0_a[7]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(\cnt_tx0_a_reg_n_0_[1] ),
        .R(p_0_in__0));
  FDRE \cnt_tx0_a_reg[20] 
       (.C(aclk),
        .CE(\cnt_tx0_a[23]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(\cnt_tx0_a_reg_n_0_[20] ),
        .R(p_0_in__0));
  FDRE \cnt_tx0_a_reg[21] 
       (.C(aclk),
        .CE(\cnt_tx0_a[23]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(\cnt_tx0_a_reg_n_0_[21] ),
        .R(p_0_in__0));
  FDRE \cnt_tx0_a_reg[22] 
       (.C(aclk),
        .CE(\cnt_tx0_a[23]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(\cnt_tx0_a_reg_n_0_[22] ),
        .R(p_0_in__0));
  FDRE \cnt_tx0_a_reg[23] 
       (.C(aclk),
        .CE(\cnt_tx0_a[23]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(\cnt_tx0_a_reg_n_0_[23] ),
        .R(p_0_in__0));
  FDRE \cnt_tx0_a_reg[24] 
       (.C(aclk),
        .CE(\cnt_tx0_a[31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(\cnt_tx0_a_reg_n_0_[24] ),
        .R(p_0_in__0));
  FDRE \cnt_tx0_a_reg[25] 
       (.C(aclk),
        .CE(\cnt_tx0_a[31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(\cnt_tx0_a_reg_n_0_[25] ),
        .R(p_0_in__0));
  FDRE \cnt_tx0_a_reg[26] 
       (.C(aclk),
        .CE(\cnt_tx0_a[31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(\cnt_tx0_a_reg_n_0_[26] ),
        .R(p_0_in__0));
  FDRE \cnt_tx0_a_reg[27] 
       (.C(aclk),
        .CE(\cnt_tx0_a[31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(\cnt_tx0_a_reg_n_0_[27] ),
        .R(p_0_in__0));
  FDRE \cnt_tx0_a_reg[28] 
       (.C(aclk),
        .CE(\cnt_tx0_a[31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(\cnt_tx0_a_reg_n_0_[28] ),
        .R(p_0_in__0));
  FDRE \cnt_tx0_a_reg[29] 
       (.C(aclk),
        .CE(\cnt_tx0_a[31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(\cnt_tx0_a_reg_n_0_[29] ),
        .R(p_0_in__0));
  FDRE \cnt_tx0_a_reg[2] 
       (.C(aclk),
        .CE(\cnt_tx0_a[7]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(\cnt_tx0_a_reg_n_0_[2] ),
        .R(p_0_in__0));
  FDRE \cnt_tx0_a_reg[30] 
       (.C(aclk),
        .CE(\cnt_tx0_a[31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(\cnt_tx0_a_reg_n_0_[30] ),
        .R(p_0_in__0));
  FDRE \cnt_tx0_a_reg[31] 
       (.C(aclk),
        .CE(\cnt_tx0_a[31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(\cnt_tx0_a_reg_n_0_[31] ),
        .R(p_0_in__0));
  FDRE \cnt_tx0_a_reg[32] 
       (.C(aclk),
        .CE(\cnt_tx0_a[39]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(p_14_in[0]),
        .R(p_0_in__0));
  FDRE \cnt_tx0_a_reg[33] 
       (.C(aclk),
        .CE(\cnt_tx0_a[39]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(p_14_in[1]),
        .R(p_0_in__0));
  FDRE \cnt_tx0_a_reg[34] 
       (.C(aclk),
        .CE(\cnt_tx0_a[39]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(p_14_in[2]),
        .R(p_0_in__0));
  FDRE \cnt_tx0_a_reg[35] 
       (.C(aclk),
        .CE(\cnt_tx0_a[39]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(p_14_in[3]),
        .R(p_0_in__0));
  FDRE \cnt_tx0_a_reg[36] 
       (.C(aclk),
        .CE(\cnt_tx0_a[39]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(p_14_in[4]),
        .R(p_0_in__0));
  FDRE \cnt_tx0_a_reg[37] 
       (.C(aclk),
        .CE(\cnt_tx0_a[39]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(p_14_in[5]),
        .R(p_0_in__0));
  FDRE \cnt_tx0_a_reg[38] 
       (.C(aclk),
        .CE(\cnt_tx0_a[39]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(p_14_in[6]),
        .R(p_0_in__0));
  FDRE \cnt_tx0_a_reg[39] 
       (.C(aclk),
        .CE(\cnt_tx0_a[39]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(p_14_in[7]),
        .R(p_0_in__0));
  FDRE \cnt_tx0_a_reg[3] 
       (.C(aclk),
        .CE(\cnt_tx0_a[7]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(\cnt_tx0_a_reg_n_0_[3] ),
        .R(p_0_in__0));
  FDRE \cnt_tx0_a_reg[40] 
       (.C(aclk),
        .CE(\cnt_tx0_a[47]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(p_14_in[8]),
        .R(p_0_in__0));
  FDRE \cnt_tx0_a_reg[41] 
       (.C(aclk),
        .CE(\cnt_tx0_a[47]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(p_14_in[9]),
        .R(p_0_in__0));
  FDRE \cnt_tx0_a_reg[42] 
       (.C(aclk),
        .CE(\cnt_tx0_a[47]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(p_14_in[10]),
        .R(p_0_in__0));
  FDRE \cnt_tx0_a_reg[43] 
       (.C(aclk),
        .CE(\cnt_tx0_a[47]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(p_14_in[11]),
        .R(p_0_in__0));
  FDRE \cnt_tx0_a_reg[44] 
       (.C(aclk),
        .CE(\cnt_tx0_a[47]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(p_14_in[12]),
        .R(p_0_in__0));
  FDRE \cnt_tx0_a_reg[45] 
       (.C(aclk),
        .CE(\cnt_tx0_a[47]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(p_14_in[13]),
        .R(p_0_in__0));
  FDRE \cnt_tx0_a_reg[46] 
       (.C(aclk),
        .CE(\cnt_tx0_a[47]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(p_14_in[14]),
        .R(p_0_in__0));
  FDRE \cnt_tx0_a_reg[47] 
       (.C(aclk),
        .CE(\cnt_tx0_a[47]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(p_14_in[15]),
        .R(p_0_in__0));
  FDRE \cnt_tx0_a_reg[48] 
       (.C(aclk),
        .CE(\cnt_tx0_a[55]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(p_14_in[16]),
        .R(p_0_in__0));
  FDRE \cnt_tx0_a_reg[49] 
       (.C(aclk),
        .CE(\cnt_tx0_a[55]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(p_14_in[17]),
        .R(p_0_in__0));
  FDRE \cnt_tx0_a_reg[4] 
       (.C(aclk),
        .CE(\cnt_tx0_a[7]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(\cnt_tx0_a_reg_n_0_[4] ),
        .R(p_0_in__0));
  FDRE \cnt_tx0_a_reg[50] 
       (.C(aclk),
        .CE(\cnt_tx0_a[55]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(p_14_in[18]),
        .R(p_0_in__0));
  FDRE \cnt_tx0_a_reg[51] 
       (.C(aclk),
        .CE(\cnt_tx0_a[55]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(p_14_in[19]),
        .R(p_0_in__0));
  FDRE \cnt_tx0_a_reg[52] 
       (.C(aclk),
        .CE(\cnt_tx0_a[55]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(p_14_in[20]),
        .R(p_0_in__0));
  FDRE \cnt_tx0_a_reg[53] 
       (.C(aclk),
        .CE(\cnt_tx0_a[55]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(p_14_in[21]),
        .R(p_0_in__0));
  FDRE \cnt_tx0_a_reg[54] 
       (.C(aclk),
        .CE(\cnt_tx0_a[55]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(p_14_in[22]),
        .R(p_0_in__0));
  FDRE \cnt_tx0_a_reg[55] 
       (.C(aclk),
        .CE(\cnt_tx0_a[55]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(p_14_in[23]),
        .R(p_0_in__0));
  FDRE \cnt_tx0_a_reg[56] 
       (.C(aclk),
        .CE(\cnt_tx0_a[63]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(p_14_in[24]),
        .R(p_0_in__0));
  FDRE \cnt_tx0_a_reg[57] 
       (.C(aclk),
        .CE(\cnt_tx0_a[63]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(p_14_in[25]),
        .R(p_0_in__0));
  FDRE \cnt_tx0_a_reg[58] 
       (.C(aclk),
        .CE(\cnt_tx0_a[63]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(p_14_in[26]),
        .R(p_0_in__0));
  FDRE \cnt_tx0_a_reg[59] 
       (.C(aclk),
        .CE(\cnt_tx0_a[63]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(p_14_in[27]),
        .R(p_0_in__0));
  FDRE \cnt_tx0_a_reg[5] 
       (.C(aclk),
        .CE(\cnt_tx0_a[7]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(\cnt_tx0_a_reg_n_0_[5] ),
        .R(p_0_in__0));
  FDRE \cnt_tx0_a_reg[60] 
       (.C(aclk),
        .CE(\cnt_tx0_a[63]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(p_14_in[28]),
        .R(p_0_in__0));
  FDRE \cnt_tx0_a_reg[61] 
       (.C(aclk),
        .CE(\cnt_tx0_a[63]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(p_14_in[29]),
        .R(p_0_in__0));
  FDRE \cnt_tx0_a_reg[62] 
       (.C(aclk),
        .CE(\cnt_tx0_a[63]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(p_14_in[30]),
        .R(p_0_in__0));
  FDRE \cnt_tx0_a_reg[63] 
       (.C(aclk),
        .CE(\cnt_tx0_a[63]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(p_14_in[31]),
        .R(p_0_in__0));
  FDRE \cnt_tx0_a_reg[6] 
       (.C(aclk),
        .CE(\cnt_tx0_a[7]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(\cnt_tx0_a_reg_n_0_[6] ),
        .R(p_0_in__0));
  FDRE \cnt_tx0_a_reg[7] 
       (.C(aclk),
        .CE(\cnt_tx0_a[7]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(\cnt_tx0_a_reg_n_0_[7] ),
        .R(p_0_in__0));
  FDRE \cnt_tx0_a_reg[8] 
       (.C(aclk),
        .CE(\cnt_tx0_a[15]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(\cnt_tx0_a_reg_n_0_[8] ),
        .R(p_0_in__0));
  FDRE \cnt_tx0_a_reg[9] 
       (.C(aclk),
        .CE(\cnt_tx0_a[15]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(\cnt_tx0_a_reg_n_0_[9] ),
        .R(p_0_in__0));
  FDRE \cnt_tx0_reg[0] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[202]),
        .Q(cnt_tx0[0]),
        .R(1'b0));
  FDRE \cnt_tx0_reg[10] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[212]),
        .Q(cnt_tx0[10]),
        .R(1'b0));
  FDRE \cnt_tx0_reg[11] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[213]),
        .Q(cnt_tx0[11]),
        .R(1'b0));
  FDRE \cnt_tx0_reg[12] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[214]),
        .Q(cnt_tx0[12]),
        .R(1'b0));
  FDRE \cnt_tx0_reg[13] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[215]),
        .Q(cnt_tx0[13]),
        .R(1'b0));
  FDRE \cnt_tx0_reg[14] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[216]),
        .Q(cnt_tx0[14]),
        .R(1'b0));
  FDRE \cnt_tx0_reg[15] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[217]),
        .Q(cnt_tx0[15]),
        .R(1'b0));
  FDRE \cnt_tx0_reg[16] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[218]),
        .Q(cnt_tx0[16]),
        .R(1'b0));
  FDRE \cnt_tx0_reg[17] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[219]),
        .Q(cnt_tx0[17]),
        .R(1'b0));
  FDRE \cnt_tx0_reg[18] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[220]),
        .Q(cnt_tx0[18]),
        .R(1'b0));
  FDRE \cnt_tx0_reg[19] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[221]),
        .Q(cnt_tx0[19]),
        .R(1'b0));
  FDRE \cnt_tx0_reg[1] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[203]),
        .Q(cnt_tx0[1]),
        .R(1'b0));
  FDRE \cnt_tx0_reg[20] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[222]),
        .Q(cnt_tx0[20]),
        .R(1'b0));
  FDRE \cnt_tx0_reg[21] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[223]),
        .Q(cnt_tx0[21]),
        .R(1'b0));
  FDRE \cnt_tx0_reg[22] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[224]),
        .Q(cnt_tx0[22]),
        .R(1'b0));
  FDRE \cnt_tx0_reg[23] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[225]),
        .Q(cnt_tx0[23]),
        .R(1'b0));
  FDRE \cnt_tx0_reg[24] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[226]),
        .Q(cnt_tx0[24]),
        .R(1'b0));
  FDRE \cnt_tx0_reg[25] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[227]),
        .Q(cnt_tx0[25]),
        .R(1'b0));
  FDRE \cnt_tx0_reg[26] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[228]),
        .Q(cnt_tx0[26]),
        .R(1'b0));
  FDRE \cnt_tx0_reg[27] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[229]),
        .Q(cnt_tx0[27]),
        .R(1'b0));
  FDRE \cnt_tx0_reg[28] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[230]),
        .Q(cnt_tx0[28]),
        .R(1'b0));
  FDRE \cnt_tx0_reg[29] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[231]),
        .Q(cnt_tx0[29]),
        .R(1'b0));
  FDRE \cnt_tx0_reg[2] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[204]),
        .Q(cnt_tx0[2]),
        .R(1'b0));
  FDRE \cnt_tx0_reg[30] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[232]),
        .Q(cnt_tx0[30]),
        .R(1'b0));
  FDRE \cnt_tx0_reg[31] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[233]),
        .Q(cnt_tx0[31]),
        .R(1'b0));
  FDRE \cnt_tx0_reg[32] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[234]),
        .Q(cnt_tx0[32]),
        .R(1'b0));
  FDRE \cnt_tx0_reg[33] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[235]),
        .Q(cnt_tx0[33]),
        .R(1'b0));
  FDRE \cnt_tx0_reg[34] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[236]),
        .Q(cnt_tx0[34]),
        .R(1'b0));
  FDRE \cnt_tx0_reg[35] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[237]),
        .Q(cnt_tx0[35]),
        .R(1'b0));
  FDRE \cnt_tx0_reg[36] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[238]),
        .Q(cnt_tx0[36]),
        .R(1'b0));
  FDRE \cnt_tx0_reg[37] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[239]),
        .Q(cnt_tx0[37]),
        .R(1'b0));
  FDRE \cnt_tx0_reg[38] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[240]),
        .Q(cnt_tx0[38]),
        .R(1'b0));
  FDRE \cnt_tx0_reg[39] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[241]),
        .Q(cnt_tx0[39]),
        .R(1'b0));
  FDRE \cnt_tx0_reg[3] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[205]),
        .Q(cnt_tx0[3]),
        .R(1'b0));
  FDRE \cnt_tx0_reg[40] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[242]),
        .Q(cnt_tx0[40]),
        .R(1'b0));
  FDRE \cnt_tx0_reg[41] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[243]),
        .Q(cnt_tx0[41]),
        .R(1'b0));
  FDRE \cnt_tx0_reg[42] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[244]),
        .Q(cnt_tx0[42]),
        .R(1'b0));
  FDRE \cnt_tx0_reg[43] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[245]),
        .Q(cnt_tx0[43]),
        .R(1'b0));
  FDRE \cnt_tx0_reg[44] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[246]),
        .Q(cnt_tx0[44]),
        .R(1'b0));
  FDRE \cnt_tx0_reg[45] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[247]),
        .Q(cnt_tx0[45]),
        .R(1'b0));
  FDRE \cnt_tx0_reg[46] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[248]),
        .Q(cnt_tx0[46]),
        .R(1'b0));
  FDRE \cnt_tx0_reg[47] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[249]),
        .Q(cnt_tx0[47]),
        .R(1'b0));
  FDRE \cnt_tx0_reg[48] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[250]),
        .Q(cnt_tx0[48]),
        .R(1'b0));
  FDRE \cnt_tx0_reg[49] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[251]),
        .Q(cnt_tx0[49]),
        .R(1'b0));
  FDRE \cnt_tx0_reg[4] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[206]),
        .Q(cnt_tx0[4]),
        .R(1'b0));
  FDRE \cnt_tx0_reg[50] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[252]),
        .Q(cnt_tx0[50]),
        .R(1'b0));
  FDRE \cnt_tx0_reg[51] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[253]),
        .Q(cnt_tx0[51]),
        .R(1'b0));
  FDRE \cnt_tx0_reg[52] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[254]),
        .Q(cnt_tx0[52]),
        .R(1'b0));
  FDRE \cnt_tx0_reg[53] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[255]),
        .Q(cnt_tx0[53]),
        .R(1'b0));
  FDRE \cnt_tx0_reg[54] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[256]),
        .Q(cnt_tx0[54]),
        .R(1'b0));
  FDRE \cnt_tx0_reg[55] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[257]),
        .Q(cnt_tx0[55]),
        .R(1'b0));
  FDRE \cnt_tx0_reg[56] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[258]),
        .Q(cnt_tx0[56]),
        .R(1'b0));
  FDRE \cnt_tx0_reg[57] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[259]),
        .Q(cnt_tx0[57]),
        .R(1'b0));
  FDRE \cnt_tx0_reg[58] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[260]),
        .Q(cnt_tx0[58]),
        .R(1'b0));
  FDRE \cnt_tx0_reg[59] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[261]),
        .Q(cnt_tx0[59]),
        .R(1'b0));
  FDRE \cnt_tx0_reg[5] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[207]),
        .Q(cnt_tx0[5]),
        .R(1'b0));
  FDRE \cnt_tx0_reg[60] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[262]),
        .Q(cnt_tx0[60]),
        .R(1'b0));
  FDRE \cnt_tx0_reg[61] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[263]),
        .Q(cnt_tx0[61]),
        .R(1'b0));
  FDRE \cnt_tx0_reg[62] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[264]),
        .Q(cnt_tx0[62]),
        .R(1'b0));
  FDRE \cnt_tx0_reg[63] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[265]),
        .Q(cnt_tx0[63]),
        .R(1'b0));
  FDRE \cnt_tx0_reg[6] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[208]),
        .Q(cnt_tx0[6]),
        .R(1'b0));
  FDRE \cnt_tx0_reg[7] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[209]),
        .Q(cnt_tx0[7]),
        .R(1'b0));
  FDRE \cnt_tx0_reg[8] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[210]),
        .Q(cnt_tx0[8]),
        .R(1'b0));
  FDRE \cnt_tx0_reg[9] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[211]),
        .Q(cnt_tx0[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000080)) 
    \cnt_tx1_a[15]_i_1 
       (.I0(\cnt_tx1_a[63]_i_2_n_0 ),
        .I1(s_axi_wstrb[1]),
        .I2(s_axi_awaddr[1]),
        .I3(s_axi_awaddr[2]),
        .I4(s_axi_awaddr[0]),
        .O(\cnt_tx1_a[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00400000)) 
    \cnt_tx1_a[23]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(\cnt_tx1_a[63]_i_2_n_0 ),
        .I2(s_axi_awaddr[1]),
        .I3(s_axi_awaddr[2]),
        .I4(s_axi_wstrb[2]),
        .O(\cnt_tx1_a[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00400000)) 
    \cnt_tx1_a[31]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(\cnt_tx1_a[63]_i_2_n_0 ),
        .I2(s_axi_awaddr[1]),
        .I3(s_axi_awaddr[2]),
        .I4(s_axi_wstrb[3]),
        .O(\cnt_tx1_a[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08000000)) 
    \cnt_tx1_a[39]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(\cnt_tx1_a[63]_i_2_n_0 ),
        .I2(s_axi_awaddr[2]),
        .I3(s_axi_awaddr[1]),
        .I4(s_axi_wstrb[0]),
        .O(\cnt_tx1_a[39]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \cnt_tx1_a[47]_i_1 
       (.I0(\cnt_tx1_a[63]_i_2_n_0 ),
        .I1(s_axi_wstrb[1]),
        .I2(s_axi_awaddr[0]),
        .I3(s_axi_awaddr[2]),
        .I4(s_axi_awaddr[1]),
        .O(\cnt_tx1_a[47]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \cnt_tx1_a[55]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(\cnt_tx1_a[63]_i_2_n_0 ),
        .I2(s_axi_awaddr[1]),
        .I3(s_axi_awaddr[2]),
        .I4(s_axi_wstrb[2]),
        .O(\cnt_tx1_a[55]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \cnt_tx1_a[63]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(\cnt_tx1_a[63]_i_2_n_0 ),
        .I2(s_axi_awaddr[1]),
        .I3(s_axi_awaddr[2]),
        .I4(s_axi_wstrb[3]),
        .O(\cnt_tx1_a[63]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \cnt_tx1_a[63]_i_2 
       (.I0(p_1_in69_in),
        .I1(s_axi_awaddr[4]),
        .I2(s_axi_awready),
        .I3(s_axi_awaddr[3]),
        .O(\cnt_tx1_a[63]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h04000000)) 
    \cnt_tx1_a[7]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(\cnt_tx1_a[63]_i_2_n_0 ),
        .I2(s_axi_awaddr[2]),
        .I3(s_axi_awaddr[1]),
        .I4(s_axi_wstrb[0]),
        .O(\cnt_tx1_a[7]_i_1_n_0 ));
  FDRE \cnt_tx1_a_reg[0] 
       (.C(aclk),
        .CE(\cnt_tx1_a[7]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(\cnt_tx1_a_reg_n_0_[0] ),
        .R(p_0_in__0));
  FDRE \cnt_tx1_a_reg[10] 
       (.C(aclk),
        .CE(\cnt_tx1_a[15]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(\cnt_tx1_a_reg_n_0_[10] ),
        .R(p_0_in__0));
  FDRE \cnt_tx1_a_reg[11] 
       (.C(aclk),
        .CE(\cnt_tx1_a[15]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(\cnt_tx1_a_reg_n_0_[11] ),
        .R(p_0_in__0));
  FDRE \cnt_tx1_a_reg[12] 
       (.C(aclk),
        .CE(\cnt_tx1_a[15]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(\cnt_tx1_a_reg_n_0_[12] ),
        .R(p_0_in__0));
  FDRE \cnt_tx1_a_reg[13] 
       (.C(aclk),
        .CE(\cnt_tx1_a[15]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(\cnt_tx1_a_reg_n_0_[13] ),
        .R(p_0_in__0));
  FDRE \cnt_tx1_a_reg[14] 
       (.C(aclk),
        .CE(\cnt_tx1_a[15]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(\cnt_tx1_a_reg_n_0_[14] ),
        .R(p_0_in__0));
  FDRE \cnt_tx1_a_reg[15] 
       (.C(aclk),
        .CE(\cnt_tx1_a[15]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(\cnt_tx1_a_reg_n_0_[15] ),
        .R(p_0_in__0));
  FDRE \cnt_tx1_a_reg[16] 
       (.C(aclk),
        .CE(\cnt_tx1_a[23]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(\cnt_tx1_a_reg_n_0_[16] ),
        .R(p_0_in__0));
  FDRE \cnt_tx1_a_reg[17] 
       (.C(aclk),
        .CE(\cnt_tx1_a[23]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(\cnt_tx1_a_reg_n_0_[17] ),
        .R(p_0_in__0));
  FDRE \cnt_tx1_a_reg[18] 
       (.C(aclk),
        .CE(\cnt_tx1_a[23]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(\cnt_tx1_a_reg_n_0_[18] ),
        .R(p_0_in__0));
  FDRE \cnt_tx1_a_reg[19] 
       (.C(aclk),
        .CE(\cnt_tx1_a[23]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(\cnt_tx1_a_reg_n_0_[19] ),
        .R(p_0_in__0));
  FDRE \cnt_tx1_a_reg[1] 
       (.C(aclk),
        .CE(\cnt_tx1_a[7]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(\cnt_tx1_a_reg_n_0_[1] ),
        .R(p_0_in__0));
  FDRE \cnt_tx1_a_reg[20] 
       (.C(aclk),
        .CE(\cnt_tx1_a[23]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(\cnt_tx1_a_reg_n_0_[20] ),
        .R(p_0_in__0));
  FDRE \cnt_tx1_a_reg[21] 
       (.C(aclk),
        .CE(\cnt_tx1_a[23]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(\cnt_tx1_a_reg_n_0_[21] ),
        .R(p_0_in__0));
  FDRE \cnt_tx1_a_reg[22] 
       (.C(aclk),
        .CE(\cnt_tx1_a[23]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(\cnt_tx1_a_reg_n_0_[22] ),
        .R(p_0_in__0));
  FDRE \cnt_tx1_a_reg[23] 
       (.C(aclk),
        .CE(\cnt_tx1_a[23]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(\cnt_tx1_a_reg_n_0_[23] ),
        .R(p_0_in__0));
  FDRE \cnt_tx1_a_reg[24] 
       (.C(aclk),
        .CE(\cnt_tx1_a[31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(\cnt_tx1_a_reg_n_0_[24] ),
        .R(p_0_in__0));
  FDRE \cnt_tx1_a_reg[25] 
       (.C(aclk),
        .CE(\cnt_tx1_a[31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(\cnt_tx1_a_reg_n_0_[25] ),
        .R(p_0_in__0));
  FDRE \cnt_tx1_a_reg[26] 
       (.C(aclk),
        .CE(\cnt_tx1_a[31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(\cnt_tx1_a_reg_n_0_[26] ),
        .R(p_0_in__0));
  FDRE \cnt_tx1_a_reg[27] 
       (.C(aclk),
        .CE(\cnt_tx1_a[31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(\cnt_tx1_a_reg_n_0_[27] ),
        .R(p_0_in__0));
  FDRE \cnt_tx1_a_reg[28] 
       (.C(aclk),
        .CE(\cnt_tx1_a[31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(\cnt_tx1_a_reg_n_0_[28] ),
        .R(p_0_in__0));
  FDRE \cnt_tx1_a_reg[29] 
       (.C(aclk),
        .CE(\cnt_tx1_a[31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(\cnt_tx1_a_reg_n_0_[29] ),
        .R(p_0_in__0));
  FDRE \cnt_tx1_a_reg[2] 
       (.C(aclk),
        .CE(\cnt_tx1_a[7]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(\cnt_tx1_a_reg_n_0_[2] ),
        .R(p_0_in__0));
  FDRE \cnt_tx1_a_reg[30] 
       (.C(aclk),
        .CE(\cnt_tx1_a[31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(\cnt_tx1_a_reg_n_0_[30] ),
        .R(p_0_in__0));
  FDRE \cnt_tx1_a_reg[31] 
       (.C(aclk),
        .CE(\cnt_tx1_a[31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(\cnt_tx1_a_reg_n_0_[31] ),
        .R(p_0_in__0));
  FDRE \cnt_tx1_a_reg[32] 
       (.C(aclk),
        .CE(\cnt_tx1_a[39]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(p_9_in[0]),
        .R(p_0_in__0));
  FDRE \cnt_tx1_a_reg[33] 
       (.C(aclk),
        .CE(\cnt_tx1_a[39]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(p_9_in[1]),
        .R(p_0_in__0));
  FDRE \cnt_tx1_a_reg[34] 
       (.C(aclk),
        .CE(\cnt_tx1_a[39]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(p_9_in[2]),
        .R(p_0_in__0));
  FDRE \cnt_tx1_a_reg[35] 
       (.C(aclk),
        .CE(\cnt_tx1_a[39]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(p_9_in[3]),
        .R(p_0_in__0));
  FDRE \cnt_tx1_a_reg[36] 
       (.C(aclk),
        .CE(\cnt_tx1_a[39]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(p_9_in[4]),
        .R(p_0_in__0));
  FDRE \cnt_tx1_a_reg[37] 
       (.C(aclk),
        .CE(\cnt_tx1_a[39]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(p_9_in[5]),
        .R(p_0_in__0));
  FDRE \cnt_tx1_a_reg[38] 
       (.C(aclk),
        .CE(\cnt_tx1_a[39]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(p_9_in[6]),
        .R(p_0_in__0));
  FDRE \cnt_tx1_a_reg[39] 
       (.C(aclk),
        .CE(\cnt_tx1_a[39]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(p_9_in[7]),
        .R(p_0_in__0));
  FDRE \cnt_tx1_a_reg[3] 
       (.C(aclk),
        .CE(\cnt_tx1_a[7]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(\cnt_tx1_a_reg_n_0_[3] ),
        .R(p_0_in__0));
  FDRE \cnt_tx1_a_reg[40] 
       (.C(aclk),
        .CE(\cnt_tx1_a[47]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(p_9_in[8]),
        .R(p_0_in__0));
  FDRE \cnt_tx1_a_reg[41] 
       (.C(aclk),
        .CE(\cnt_tx1_a[47]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(p_9_in[9]),
        .R(p_0_in__0));
  FDRE \cnt_tx1_a_reg[42] 
       (.C(aclk),
        .CE(\cnt_tx1_a[47]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(p_9_in[10]),
        .R(p_0_in__0));
  FDRE \cnt_tx1_a_reg[43] 
       (.C(aclk),
        .CE(\cnt_tx1_a[47]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(p_9_in[11]),
        .R(p_0_in__0));
  FDRE \cnt_tx1_a_reg[44] 
       (.C(aclk),
        .CE(\cnt_tx1_a[47]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(p_9_in[12]),
        .R(p_0_in__0));
  FDRE \cnt_tx1_a_reg[45] 
       (.C(aclk),
        .CE(\cnt_tx1_a[47]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(p_9_in[13]),
        .R(p_0_in__0));
  FDRE \cnt_tx1_a_reg[46] 
       (.C(aclk),
        .CE(\cnt_tx1_a[47]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(p_9_in[14]),
        .R(p_0_in__0));
  FDRE \cnt_tx1_a_reg[47] 
       (.C(aclk),
        .CE(\cnt_tx1_a[47]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(p_9_in[15]),
        .R(p_0_in__0));
  FDRE \cnt_tx1_a_reg[48] 
       (.C(aclk),
        .CE(\cnt_tx1_a[55]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(p_9_in[16]),
        .R(p_0_in__0));
  FDRE \cnt_tx1_a_reg[49] 
       (.C(aclk),
        .CE(\cnt_tx1_a[55]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(p_9_in[17]),
        .R(p_0_in__0));
  FDRE \cnt_tx1_a_reg[4] 
       (.C(aclk),
        .CE(\cnt_tx1_a[7]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(\cnt_tx1_a_reg_n_0_[4] ),
        .R(p_0_in__0));
  FDRE \cnt_tx1_a_reg[50] 
       (.C(aclk),
        .CE(\cnt_tx1_a[55]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(p_9_in[18]),
        .R(p_0_in__0));
  FDRE \cnt_tx1_a_reg[51] 
       (.C(aclk),
        .CE(\cnt_tx1_a[55]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(p_9_in[19]),
        .R(p_0_in__0));
  FDRE \cnt_tx1_a_reg[52] 
       (.C(aclk),
        .CE(\cnt_tx1_a[55]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(p_9_in[20]),
        .R(p_0_in__0));
  FDRE \cnt_tx1_a_reg[53] 
       (.C(aclk),
        .CE(\cnt_tx1_a[55]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(p_9_in[21]),
        .R(p_0_in__0));
  FDRE \cnt_tx1_a_reg[54] 
       (.C(aclk),
        .CE(\cnt_tx1_a[55]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(p_9_in[22]),
        .R(p_0_in__0));
  FDRE \cnt_tx1_a_reg[55] 
       (.C(aclk),
        .CE(\cnt_tx1_a[55]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(p_9_in[23]),
        .R(p_0_in__0));
  FDRE \cnt_tx1_a_reg[56] 
       (.C(aclk),
        .CE(\cnt_tx1_a[63]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(p_9_in[24]),
        .R(p_0_in__0));
  FDRE \cnt_tx1_a_reg[57] 
       (.C(aclk),
        .CE(\cnt_tx1_a[63]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(p_9_in[25]),
        .R(p_0_in__0));
  FDRE \cnt_tx1_a_reg[58] 
       (.C(aclk),
        .CE(\cnt_tx1_a[63]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(p_9_in[26]),
        .R(p_0_in__0));
  FDRE \cnt_tx1_a_reg[59] 
       (.C(aclk),
        .CE(\cnt_tx1_a[63]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(p_9_in[27]),
        .R(p_0_in__0));
  FDRE \cnt_tx1_a_reg[5] 
       (.C(aclk),
        .CE(\cnt_tx1_a[7]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(\cnt_tx1_a_reg_n_0_[5] ),
        .R(p_0_in__0));
  FDRE \cnt_tx1_a_reg[60] 
       (.C(aclk),
        .CE(\cnt_tx1_a[63]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(p_9_in[28]),
        .R(p_0_in__0));
  FDRE \cnt_tx1_a_reg[61] 
       (.C(aclk),
        .CE(\cnt_tx1_a[63]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(p_9_in[29]),
        .R(p_0_in__0));
  FDRE \cnt_tx1_a_reg[62] 
       (.C(aclk),
        .CE(\cnt_tx1_a[63]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(p_9_in[30]),
        .R(p_0_in__0));
  FDRE \cnt_tx1_a_reg[63] 
       (.C(aclk),
        .CE(\cnt_tx1_a[63]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(p_9_in[31]),
        .R(p_0_in__0));
  FDRE \cnt_tx1_a_reg[6] 
       (.C(aclk),
        .CE(\cnt_tx1_a[7]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(\cnt_tx1_a_reg_n_0_[6] ),
        .R(p_0_in__0));
  FDRE \cnt_tx1_a_reg[7] 
       (.C(aclk),
        .CE(\cnt_tx1_a[7]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(\cnt_tx1_a_reg_n_0_[7] ),
        .R(p_0_in__0));
  FDRE \cnt_tx1_a_reg[8] 
       (.C(aclk),
        .CE(\cnt_tx1_a[15]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(\cnt_tx1_a_reg_n_0_[8] ),
        .R(p_0_in__0));
  FDRE \cnt_tx1_a_reg[9] 
       (.C(aclk),
        .CE(\cnt_tx1_a[15]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(\cnt_tx1_a_reg_n_0_[9] ),
        .R(p_0_in__0));
  FDRE \cnt_tx1_reg[0] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[138]),
        .Q(cnt_tx1[0]),
        .R(1'b0));
  FDRE \cnt_tx1_reg[10] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[148]),
        .Q(cnt_tx1[10]),
        .R(1'b0));
  FDRE \cnt_tx1_reg[11] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[149]),
        .Q(cnt_tx1[11]),
        .R(1'b0));
  FDRE \cnt_tx1_reg[12] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[150]),
        .Q(cnt_tx1[12]),
        .R(1'b0));
  FDRE \cnt_tx1_reg[13] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[151]),
        .Q(cnt_tx1[13]),
        .R(1'b0));
  FDRE \cnt_tx1_reg[14] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[152]),
        .Q(cnt_tx1[14]),
        .R(1'b0));
  FDRE \cnt_tx1_reg[15] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[153]),
        .Q(cnt_tx1[15]),
        .R(1'b0));
  FDRE \cnt_tx1_reg[16] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[154]),
        .Q(cnt_tx1[16]),
        .R(1'b0));
  FDRE \cnt_tx1_reg[17] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[155]),
        .Q(cnt_tx1[17]),
        .R(1'b0));
  FDRE \cnt_tx1_reg[18] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[156]),
        .Q(cnt_tx1[18]),
        .R(1'b0));
  FDRE \cnt_tx1_reg[19] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[157]),
        .Q(cnt_tx1[19]),
        .R(1'b0));
  FDRE \cnt_tx1_reg[1] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[139]),
        .Q(cnt_tx1[1]),
        .R(1'b0));
  FDRE \cnt_tx1_reg[20] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[158]),
        .Q(cnt_tx1[20]),
        .R(1'b0));
  FDRE \cnt_tx1_reg[21] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[159]),
        .Q(cnt_tx1[21]),
        .R(1'b0));
  FDRE \cnt_tx1_reg[22] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[160]),
        .Q(cnt_tx1[22]),
        .R(1'b0));
  FDRE \cnt_tx1_reg[23] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[161]),
        .Q(cnt_tx1[23]),
        .R(1'b0));
  FDRE \cnt_tx1_reg[24] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[162]),
        .Q(cnt_tx1[24]),
        .R(1'b0));
  FDRE \cnt_tx1_reg[25] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[163]),
        .Q(cnt_tx1[25]),
        .R(1'b0));
  FDRE \cnt_tx1_reg[26] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[164]),
        .Q(cnt_tx1[26]),
        .R(1'b0));
  FDRE \cnt_tx1_reg[27] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[165]),
        .Q(cnt_tx1[27]),
        .R(1'b0));
  FDRE \cnt_tx1_reg[28] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[166]),
        .Q(cnt_tx1[28]),
        .R(1'b0));
  FDRE \cnt_tx1_reg[29] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[167]),
        .Q(cnt_tx1[29]),
        .R(1'b0));
  FDRE \cnt_tx1_reg[2] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[140]),
        .Q(cnt_tx1[2]),
        .R(1'b0));
  FDRE \cnt_tx1_reg[30] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[168]),
        .Q(cnt_tx1[30]),
        .R(1'b0));
  FDRE \cnt_tx1_reg[31] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[169]),
        .Q(cnt_tx1[31]),
        .R(1'b0));
  FDRE \cnt_tx1_reg[32] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[170]),
        .Q(cnt_tx1[32]),
        .R(1'b0));
  FDRE \cnt_tx1_reg[33] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[171]),
        .Q(cnt_tx1[33]),
        .R(1'b0));
  FDRE \cnt_tx1_reg[34] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[172]),
        .Q(cnt_tx1[34]),
        .R(1'b0));
  FDRE \cnt_tx1_reg[35] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[173]),
        .Q(cnt_tx1[35]),
        .R(1'b0));
  FDRE \cnt_tx1_reg[36] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[174]),
        .Q(cnt_tx1[36]),
        .R(1'b0));
  FDRE \cnt_tx1_reg[37] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[175]),
        .Q(cnt_tx1[37]),
        .R(1'b0));
  FDRE \cnt_tx1_reg[38] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[176]),
        .Q(cnt_tx1[38]),
        .R(1'b0));
  FDRE \cnt_tx1_reg[39] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[177]),
        .Q(cnt_tx1[39]),
        .R(1'b0));
  FDRE \cnt_tx1_reg[3] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[141]),
        .Q(cnt_tx1[3]),
        .R(1'b0));
  FDRE \cnt_tx1_reg[40] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[178]),
        .Q(cnt_tx1[40]),
        .R(1'b0));
  FDRE \cnt_tx1_reg[41] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[179]),
        .Q(cnt_tx1[41]),
        .R(1'b0));
  FDRE \cnt_tx1_reg[42] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[180]),
        .Q(cnt_tx1[42]),
        .R(1'b0));
  FDRE \cnt_tx1_reg[43] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[181]),
        .Q(cnt_tx1[43]),
        .R(1'b0));
  FDRE \cnt_tx1_reg[44] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[182]),
        .Q(cnt_tx1[44]),
        .R(1'b0));
  FDRE \cnt_tx1_reg[45] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[183]),
        .Q(cnt_tx1[45]),
        .R(1'b0));
  FDRE \cnt_tx1_reg[46] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[184]),
        .Q(cnt_tx1[46]),
        .R(1'b0));
  FDRE \cnt_tx1_reg[47] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[185]),
        .Q(cnt_tx1[47]),
        .R(1'b0));
  FDRE \cnt_tx1_reg[48] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[186]),
        .Q(cnt_tx1[48]),
        .R(1'b0));
  FDRE \cnt_tx1_reg[49] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[187]),
        .Q(cnt_tx1[49]),
        .R(1'b0));
  FDRE \cnt_tx1_reg[4] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[142]),
        .Q(cnt_tx1[4]),
        .R(1'b0));
  FDRE \cnt_tx1_reg[50] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[188]),
        .Q(cnt_tx1[50]),
        .R(1'b0));
  FDRE \cnt_tx1_reg[51] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[189]),
        .Q(cnt_tx1[51]),
        .R(1'b0));
  FDRE \cnt_tx1_reg[52] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[190]),
        .Q(cnt_tx1[52]),
        .R(1'b0));
  FDRE \cnt_tx1_reg[53] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[191]),
        .Q(cnt_tx1[53]),
        .R(1'b0));
  FDRE \cnt_tx1_reg[54] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[192]),
        .Q(cnt_tx1[54]),
        .R(1'b0));
  FDRE \cnt_tx1_reg[55] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[193]),
        .Q(cnt_tx1[55]),
        .R(1'b0));
  FDRE \cnt_tx1_reg[56] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[194]),
        .Q(cnt_tx1[56]),
        .R(1'b0));
  FDRE \cnt_tx1_reg[57] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[195]),
        .Q(cnt_tx1[57]),
        .R(1'b0));
  FDRE \cnt_tx1_reg[58] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[196]),
        .Q(cnt_tx1[58]),
        .R(1'b0));
  FDRE \cnt_tx1_reg[59] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[197]),
        .Q(cnt_tx1[59]),
        .R(1'b0));
  FDRE \cnt_tx1_reg[5] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[143]),
        .Q(cnt_tx1[5]),
        .R(1'b0));
  FDRE \cnt_tx1_reg[60] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[198]),
        .Q(cnt_tx1[60]),
        .R(1'b0));
  FDRE \cnt_tx1_reg[61] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[199]),
        .Q(cnt_tx1[61]),
        .R(1'b0));
  FDRE \cnt_tx1_reg[62] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[200]),
        .Q(cnt_tx1[62]),
        .R(1'b0));
  FDRE \cnt_tx1_reg[63] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[201]),
        .Q(cnt_tx1[63]),
        .R(1'b0));
  FDRE \cnt_tx1_reg[6] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[144]),
        .Q(cnt_tx1[6]),
        .R(1'b0));
  FDRE \cnt_tx1_reg[7] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[145]),
        .Q(cnt_tx1[7]),
        .R(1'b0));
  FDRE \cnt_tx1_reg[8] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[146]),
        .Q(cnt_tx1[8]),
        .R(1'b0));
  FDRE \cnt_tx1_reg[9] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[147]),
        .Q(cnt_tx1[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hEA00)) 
    \cnt_tx_done[0]_i_1 
       (.I0(\cnt_tx_done_reg_n_0_[0] ),
        .I1(ts_clk_tx_en_reg_0),
        .I2(tx_enable1),
        .I3(\cnt_tx_en_reg_n_0_[0] ),
        .O(\cnt_tx_done[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF800)) 
    \cnt_tx_done[1]_i_1 
       (.I0(tx_enable11_out),
        .I1(ts_clk_tx_en_reg_0),
        .I2(\cnt_tx_done_reg_n_0_[1] ),
        .I3(p_2_in),
        .O(\cnt_tx_done[1]_i_1_n_0 ));
  FDRE \cnt_tx_done_a_reg[0] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[7]),
        .Q(\cnt_tx_done_a_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \cnt_tx_done_a_reg[1] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[8]),
        .Q(p_0_in68_in),
        .R(1'b0));
  FDRE \cnt_tx_done_reg[0] 
       (.C(ts_clk),
        .CE(1'b1),
        .D(\cnt_tx_done[0]_i_1_n_0 ),
        .Q(\cnt_tx_done_reg_n_0_[0] ),
        .R(clear));
  FDRE \cnt_tx_done_reg[1] 
       (.C(ts_clk),
        .CE(1'b1),
        .D(\cnt_tx_done[1]_i_1_n_0 ),
        .Q(\cnt_tx_done_reg_n_0_[1] ),
        .R(clear));
  LUT5 #(
    .INIT(32'h03020A0A)) 
    \cnt_tx_en_a[0]_i_1 
       (.I0(\cnt_tx_en_a_reg_n_0_[0] ),
        .I1(s_axi_wdata[5]),
        .I2(\cnt_tx_done_a_reg_n_0_[0] ),
        .I3(s_axi_wdata[4]),
        .I4(\cnt_rx_en_a[0]_i_2_n_0 ),
        .O(\cnt_tx_en_a[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h008B008A)) 
    \cnt_tx_en_a[1]_i_1 
       (.I0(p_1_in69_in),
        .I1(\cnt_rx_en_a[1]_i_2_n_0 ),
        .I2(s_axi_wdata[5]),
        .I3(p_0_in68_in),
        .I4(s_axi_wdata[4]),
        .O(\cnt_tx_en_a[1]_i_1_n_0 ));
  FDRE \cnt_tx_en_a_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt_tx_en_a[0]_i_1_n_0 ),
        .Q(\cnt_tx_en_a_reg_n_0_[0] ),
        .R(p_0_in__0));
  FDRE \cnt_tx_en_a_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt_tx_en_a[1]_i_1_n_0 ),
        .Q(p_1_in69_in),
        .R(p_0_in__0));
  FDRE \cnt_tx_en_reg[0] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[6]),
        .Q(\cnt_tx_en_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \cnt_tx_en_reg[1] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[7]),
        .Q(p_2_in),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000100)) 
    \cnt_wr_a[15]_i_1 
       (.I0(p_20_in[16]),
        .I1(p_20_in[17]),
        .I2(cnt_wr_done_a),
        .I3(s_axi_wstrb[1]),
        .I4(\cnt_wr_a[31]_i_2_n_0 ),
        .O(\cnt_wr_a[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000100)) 
    \cnt_wr_a[23]_i_1 
       (.I0(p_20_in[16]),
        .I1(p_20_in[17]),
        .I2(cnt_wr_done_a),
        .I3(s_axi_wstrb[2]),
        .I4(\cnt_wr_a[31]_i_2_n_0 ),
        .O(\cnt_wr_a[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000100)) 
    \cnt_wr_a[31]_i_1 
       (.I0(p_20_in[16]),
        .I1(p_20_in[17]),
        .I2(cnt_wr_done_a),
        .I3(s_axi_wstrb[3]),
        .I4(\cnt_wr_a[31]_i_2_n_0 ),
        .O(\cnt_wr_a[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFBFFFFFFFF)) 
    \cnt_wr_a[31]_i_2 
       (.I0(s_axi_awaddr[0]),
        .I1(s_axi_awready),
        .I2(s_axi_awaddr[4]),
        .I3(s_axi_awaddr[3]),
        .I4(s_axi_awaddr[1]),
        .I5(s_axi_awaddr[2]),
        .O(\cnt_wr_a[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00020000)) 
    \cnt_wr_a[39]_i_1 
       (.I0(cnt_wr_req_a_i_2_n_0),
        .I1(p_20_in[16]),
        .I2(p_20_in[17]),
        .I3(cnt_wr_done_a),
        .I4(s_axi_wstrb[0]),
        .O(\cnt_wr_a[39]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00020000)) 
    \cnt_wr_a[47]_i_1 
       (.I0(cnt_wr_req_a_i_2_n_0),
        .I1(p_20_in[16]),
        .I2(p_20_in[17]),
        .I3(cnt_wr_done_a),
        .I4(s_axi_wstrb[1]),
        .O(\cnt_wr_a[47]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00020000)) 
    \cnt_wr_a[55]_i_1 
       (.I0(cnt_wr_req_a_i_2_n_0),
        .I1(p_20_in[16]),
        .I2(p_20_in[17]),
        .I3(cnt_wr_done_a),
        .I4(s_axi_wstrb[2]),
        .O(\cnt_wr_a[55]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h01000000)) 
    \cnt_wr_a[63]_i_1 
       (.I0(p_20_in[16]),
        .I1(p_20_in[17]),
        .I2(cnt_wr_done_a),
        .I3(s_axi_wstrb[3]),
        .I4(cnt_wr_req_a_i_2_n_0),
        .O(\cnt_wr_a[63]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000100)) 
    \cnt_wr_a[7]_i_1 
       (.I0(p_20_in[16]),
        .I1(p_20_in[17]),
        .I2(cnt_wr_done_a),
        .I3(s_axi_wstrb[0]),
        .I4(\cnt_wr_a[31]_i_2_n_0 ),
        .O(\cnt_wr_a[7]_i_1_n_0 ));
  FDRE \cnt_wr_a_reg[0] 
       (.C(aclk),
        .CE(\cnt_wr_a[7]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(\cnt_wr_a_reg_n_0_[0] ),
        .R(p_0_in__0));
  FDRE \cnt_wr_a_reg[10] 
       (.C(aclk),
        .CE(\cnt_wr_a[15]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(\cnt_wr_a_reg_n_0_[10] ),
        .R(p_0_in__0));
  FDRE \cnt_wr_a_reg[11] 
       (.C(aclk),
        .CE(\cnt_wr_a[15]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(\cnt_wr_a_reg_n_0_[11] ),
        .R(p_0_in__0));
  FDRE \cnt_wr_a_reg[12] 
       (.C(aclk),
        .CE(\cnt_wr_a[15]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(\cnt_wr_a_reg_n_0_[12] ),
        .R(p_0_in__0));
  FDRE \cnt_wr_a_reg[13] 
       (.C(aclk),
        .CE(\cnt_wr_a[15]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(\cnt_wr_a_reg_n_0_[13] ),
        .R(p_0_in__0));
  FDRE \cnt_wr_a_reg[14] 
       (.C(aclk),
        .CE(\cnt_wr_a[15]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(\cnt_wr_a_reg_n_0_[14] ),
        .R(p_0_in__0));
  FDRE \cnt_wr_a_reg[15] 
       (.C(aclk),
        .CE(\cnt_wr_a[15]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(\cnt_wr_a_reg_n_0_[15] ),
        .R(p_0_in__0));
  FDRE \cnt_wr_a_reg[16] 
       (.C(aclk),
        .CE(\cnt_wr_a[23]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(\cnt_wr_a_reg_n_0_[16] ),
        .R(p_0_in__0));
  FDRE \cnt_wr_a_reg[17] 
       (.C(aclk),
        .CE(\cnt_wr_a[23]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(\cnt_wr_a_reg_n_0_[17] ),
        .R(p_0_in__0));
  FDRE \cnt_wr_a_reg[18] 
       (.C(aclk),
        .CE(\cnt_wr_a[23]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(\cnt_wr_a_reg_n_0_[18] ),
        .R(p_0_in__0));
  FDRE \cnt_wr_a_reg[19] 
       (.C(aclk),
        .CE(\cnt_wr_a[23]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(\cnt_wr_a_reg_n_0_[19] ),
        .R(p_0_in__0));
  FDRE \cnt_wr_a_reg[1] 
       (.C(aclk),
        .CE(\cnt_wr_a[7]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(\cnt_wr_a_reg_n_0_[1] ),
        .R(p_0_in__0));
  FDRE \cnt_wr_a_reg[20] 
       (.C(aclk),
        .CE(\cnt_wr_a[23]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(\cnt_wr_a_reg_n_0_[20] ),
        .R(p_0_in__0));
  FDRE \cnt_wr_a_reg[21] 
       (.C(aclk),
        .CE(\cnt_wr_a[23]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(\cnt_wr_a_reg_n_0_[21] ),
        .R(p_0_in__0));
  FDRE \cnt_wr_a_reg[22] 
       (.C(aclk),
        .CE(\cnt_wr_a[23]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(\cnt_wr_a_reg_n_0_[22] ),
        .R(p_0_in__0));
  FDRE \cnt_wr_a_reg[23] 
       (.C(aclk),
        .CE(\cnt_wr_a[23]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(\cnt_wr_a_reg_n_0_[23] ),
        .R(p_0_in__0));
  FDRE \cnt_wr_a_reg[24] 
       (.C(aclk),
        .CE(\cnt_wr_a[31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(\cnt_wr_a_reg_n_0_[24] ),
        .R(p_0_in__0));
  FDRE \cnt_wr_a_reg[25] 
       (.C(aclk),
        .CE(\cnt_wr_a[31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(\cnt_wr_a_reg_n_0_[25] ),
        .R(p_0_in__0));
  FDRE \cnt_wr_a_reg[26] 
       (.C(aclk),
        .CE(\cnt_wr_a[31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(\cnt_wr_a_reg_n_0_[26] ),
        .R(p_0_in__0));
  FDRE \cnt_wr_a_reg[27] 
       (.C(aclk),
        .CE(\cnt_wr_a[31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(\cnt_wr_a_reg_n_0_[27] ),
        .R(p_0_in__0));
  FDRE \cnt_wr_a_reg[28] 
       (.C(aclk),
        .CE(\cnt_wr_a[31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(\cnt_wr_a_reg_n_0_[28] ),
        .R(p_0_in__0));
  FDRE \cnt_wr_a_reg[29] 
       (.C(aclk),
        .CE(\cnt_wr_a[31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(\cnt_wr_a_reg_n_0_[29] ),
        .R(p_0_in__0));
  FDRE \cnt_wr_a_reg[2] 
       (.C(aclk),
        .CE(\cnt_wr_a[7]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(\cnt_wr_a_reg_n_0_[2] ),
        .R(p_0_in__0));
  FDRE \cnt_wr_a_reg[30] 
       (.C(aclk),
        .CE(\cnt_wr_a[31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(\cnt_wr_a_reg_n_0_[30] ),
        .R(p_0_in__0));
  FDRE \cnt_wr_a_reg[31] 
       (.C(aclk),
        .CE(\cnt_wr_a[31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(\cnt_wr_a_reg_n_0_[31] ),
        .R(p_0_in__0));
  FDRE \cnt_wr_a_reg[32] 
       (.C(aclk),
        .CE(\cnt_wr_a[39]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(\cnt_wr_a_reg_n_0_[32] ),
        .R(p_0_in__0));
  FDRE \cnt_wr_a_reg[33] 
       (.C(aclk),
        .CE(\cnt_wr_a[39]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(\cnt_wr_a_reg_n_0_[33] ),
        .R(p_0_in__0));
  FDRE \cnt_wr_a_reg[34] 
       (.C(aclk),
        .CE(\cnt_wr_a[39]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(\cnt_wr_a_reg_n_0_[34] ),
        .R(p_0_in__0));
  FDRE \cnt_wr_a_reg[35] 
       (.C(aclk),
        .CE(\cnt_wr_a[39]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(\cnt_wr_a_reg_n_0_[35] ),
        .R(p_0_in__0));
  FDRE \cnt_wr_a_reg[36] 
       (.C(aclk),
        .CE(\cnt_wr_a[39]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(\cnt_wr_a_reg_n_0_[36] ),
        .R(p_0_in__0));
  FDRE \cnt_wr_a_reg[37] 
       (.C(aclk),
        .CE(\cnt_wr_a[39]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(\cnt_wr_a_reg_n_0_[37] ),
        .R(p_0_in__0));
  FDRE \cnt_wr_a_reg[38] 
       (.C(aclk),
        .CE(\cnt_wr_a[39]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(\cnt_wr_a_reg_n_0_[38] ),
        .R(p_0_in__0));
  FDRE \cnt_wr_a_reg[39] 
       (.C(aclk),
        .CE(\cnt_wr_a[39]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(\cnt_wr_a_reg_n_0_[39] ),
        .R(p_0_in__0));
  FDRE \cnt_wr_a_reg[3] 
       (.C(aclk),
        .CE(\cnt_wr_a[7]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(\cnt_wr_a_reg_n_0_[3] ),
        .R(p_0_in__0));
  FDRE \cnt_wr_a_reg[40] 
       (.C(aclk),
        .CE(\cnt_wr_a[47]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(\cnt_wr_a_reg_n_0_[40] ),
        .R(p_0_in__0));
  FDRE \cnt_wr_a_reg[41] 
       (.C(aclk),
        .CE(\cnt_wr_a[47]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(\cnt_wr_a_reg_n_0_[41] ),
        .R(p_0_in__0));
  FDRE \cnt_wr_a_reg[42] 
       (.C(aclk),
        .CE(\cnt_wr_a[47]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(\cnt_wr_a_reg_n_0_[42] ),
        .R(p_0_in__0));
  FDRE \cnt_wr_a_reg[43] 
       (.C(aclk),
        .CE(\cnt_wr_a[47]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(\cnt_wr_a_reg_n_0_[43] ),
        .R(p_0_in__0));
  FDRE \cnt_wr_a_reg[44] 
       (.C(aclk),
        .CE(\cnt_wr_a[47]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(\cnt_wr_a_reg_n_0_[44] ),
        .R(p_0_in__0));
  FDRE \cnt_wr_a_reg[45] 
       (.C(aclk),
        .CE(\cnt_wr_a[47]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(\cnt_wr_a_reg_n_0_[45] ),
        .R(p_0_in__0));
  FDRE \cnt_wr_a_reg[46] 
       (.C(aclk),
        .CE(\cnt_wr_a[47]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(\cnt_wr_a_reg_n_0_[46] ),
        .R(p_0_in__0));
  FDRE \cnt_wr_a_reg[47] 
       (.C(aclk),
        .CE(\cnt_wr_a[47]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(\cnt_wr_a_reg_n_0_[47] ),
        .R(p_0_in__0));
  FDRE \cnt_wr_a_reg[48] 
       (.C(aclk),
        .CE(\cnt_wr_a[55]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(\cnt_wr_a_reg_n_0_[48] ),
        .R(p_0_in__0));
  FDRE \cnt_wr_a_reg[49] 
       (.C(aclk),
        .CE(\cnt_wr_a[55]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(\cnt_wr_a_reg_n_0_[49] ),
        .R(p_0_in__0));
  FDRE \cnt_wr_a_reg[4] 
       (.C(aclk),
        .CE(\cnt_wr_a[7]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(\cnt_wr_a_reg_n_0_[4] ),
        .R(p_0_in__0));
  FDRE \cnt_wr_a_reg[50] 
       (.C(aclk),
        .CE(\cnt_wr_a[55]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(\cnt_wr_a_reg_n_0_[50] ),
        .R(p_0_in__0));
  FDRE \cnt_wr_a_reg[51] 
       (.C(aclk),
        .CE(\cnt_wr_a[55]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(\cnt_wr_a_reg_n_0_[51] ),
        .R(p_0_in__0));
  FDRE \cnt_wr_a_reg[52] 
       (.C(aclk),
        .CE(\cnt_wr_a[55]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(\cnt_wr_a_reg_n_0_[52] ),
        .R(p_0_in__0));
  FDRE \cnt_wr_a_reg[53] 
       (.C(aclk),
        .CE(\cnt_wr_a[55]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(\cnt_wr_a_reg_n_0_[53] ),
        .R(p_0_in__0));
  FDRE \cnt_wr_a_reg[54] 
       (.C(aclk),
        .CE(\cnt_wr_a[55]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(\cnt_wr_a_reg_n_0_[54] ),
        .R(p_0_in__0));
  FDRE \cnt_wr_a_reg[55] 
       (.C(aclk),
        .CE(\cnt_wr_a[55]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(\cnt_wr_a_reg_n_0_[55] ),
        .R(p_0_in__0));
  FDRE \cnt_wr_a_reg[56] 
       (.C(aclk),
        .CE(\cnt_wr_a[63]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(\cnt_wr_a_reg_n_0_[56] ),
        .R(p_0_in__0));
  FDRE \cnt_wr_a_reg[57] 
       (.C(aclk),
        .CE(\cnt_wr_a[63]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(\cnt_wr_a_reg_n_0_[57] ),
        .R(p_0_in__0));
  FDRE \cnt_wr_a_reg[58] 
       (.C(aclk),
        .CE(\cnt_wr_a[63]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(\cnt_wr_a_reg_n_0_[58] ),
        .R(p_0_in__0));
  FDRE \cnt_wr_a_reg[59] 
       (.C(aclk),
        .CE(\cnt_wr_a[63]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(\cnt_wr_a_reg_n_0_[59] ),
        .R(p_0_in__0));
  FDRE \cnt_wr_a_reg[5] 
       (.C(aclk),
        .CE(\cnt_wr_a[7]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(\cnt_wr_a_reg_n_0_[5] ),
        .R(p_0_in__0));
  FDRE \cnt_wr_a_reg[60] 
       (.C(aclk),
        .CE(\cnt_wr_a[63]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(\cnt_wr_a_reg_n_0_[60] ),
        .R(p_0_in__0));
  FDRE \cnt_wr_a_reg[61] 
       (.C(aclk),
        .CE(\cnt_wr_a[63]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(\cnt_wr_a_reg_n_0_[61] ),
        .R(p_0_in__0));
  FDRE \cnt_wr_a_reg[62] 
       (.C(aclk),
        .CE(\cnt_wr_a[63]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(\cnt_wr_a_reg_n_0_[62] ),
        .R(p_0_in__0));
  FDRE \cnt_wr_a_reg[63] 
       (.C(aclk),
        .CE(\cnt_wr_a[63]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(\cnt_wr_a_reg_n_0_[63] ),
        .R(p_0_in__0));
  FDRE \cnt_wr_a_reg[6] 
       (.C(aclk),
        .CE(\cnt_wr_a[7]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(\cnt_wr_a_reg_n_0_[6] ),
        .R(p_0_in__0));
  FDRE \cnt_wr_a_reg[7] 
       (.C(aclk),
        .CE(\cnt_wr_a[7]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(\cnt_wr_a_reg_n_0_[7] ),
        .R(p_0_in__0));
  FDRE \cnt_wr_a_reg[8] 
       (.C(aclk),
        .CE(\cnt_wr_a[15]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(\cnt_wr_a_reg_n_0_[8] ),
        .R(p_0_in__0));
  FDRE \cnt_wr_a_reg[9] 
       (.C(aclk),
        .CE(\cnt_wr_a[15]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(\cnt_wr_a_reg_n_0_[9] ),
        .R(p_0_in__0));
  FDRE cnt_wr_done_a_reg
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[9]),
        .Q(cnt_wr_done_a),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h34)) 
    cnt_wr_done_i_1
       (.I0(cnt_en),
        .I1(cnt_wr_req),
        .I2(cnt_wr_done_reg_n_0),
        .O(cnt_wr_done_i_1_n_0));
  FDRE cnt_wr_done_reg
       (.C(ts_clk),
        .CE(1'b1),
        .D(cnt_wr_done_i_1_n_0),
        .Q(cnt_wr_done_reg_n_0),
        .R(clear));
  FDRE \cnt_wr_reg[0] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[266]),
        .Q(cnt_wr[0]),
        .R(1'b0));
  FDRE \cnt_wr_reg[10] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[276]),
        .Q(cnt_wr[10]),
        .R(1'b0));
  FDRE \cnt_wr_reg[11] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[277]),
        .Q(cnt_wr[11]),
        .R(1'b0));
  FDRE \cnt_wr_reg[12] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[278]),
        .Q(cnt_wr[12]),
        .R(1'b0));
  FDRE \cnt_wr_reg[13] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[279]),
        .Q(cnt_wr[13]),
        .R(1'b0));
  FDRE \cnt_wr_reg[14] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[280]),
        .Q(cnt_wr[14]),
        .R(1'b0));
  FDRE \cnt_wr_reg[15] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[281]),
        .Q(cnt_wr[15]),
        .R(1'b0));
  FDRE \cnt_wr_reg[16] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[282]),
        .Q(cnt_wr[16]),
        .R(1'b0));
  FDRE \cnt_wr_reg[17] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[283]),
        .Q(cnt_wr[17]),
        .R(1'b0));
  FDRE \cnt_wr_reg[18] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[284]),
        .Q(cnt_wr[18]),
        .R(1'b0));
  FDRE \cnt_wr_reg[19] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[285]),
        .Q(cnt_wr[19]),
        .R(1'b0));
  FDRE \cnt_wr_reg[1] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[267]),
        .Q(cnt_wr[1]),
        .R(1'b0));
  FDRE \cnt_wr_reg[20] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[286]),
        .Q(cnt_wr[20]),
        .R(1'b0));
  FDRE \cnt_wr_reg[21] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[287]),
        .Q(cnt_wr[21]),
        .R(1'b0));
  FDRE \cnt_wr_reg[22] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[288]),
        .Q(cnt_wr[22]),
        .R(1'b0));
  FDRE \cnt_wr_reg[23] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[289]),
        .Q(cnt_wr[23]),
        .R(1'b0));
  FDRE \cnt_wr_reg[24] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[290]),
        .Q(cnt_wr[24]),
        .R(1'b0));
  FDRE \cnt_wr_reg[25] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[291]),
        .Q(cnt_wr[25]),
        .R(1'b0));
  FDRE \cnt_wr_reg[26] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[292]),
        .Q(cnt_wr[26]),
        .R(1'b0));
  FDRE \cnt_wr_reg[27] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[293]),
        .Q(cnt_wr[27]),
        .R(1'b0));
  FDRE \cnt_wr_reg[28] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[294]),
        .Q(cnt_wr[28]),
        .R(1'b0));
  FDRE \cnt_wr_reg[29] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[295]),
        .Q(cnt_wr[29]),
        .R(1'b0));
  FDRE \cnt_wr_reg[2] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[268]),
        .Q(cnt_wr[2]),
        .R(1'b0));
  FDRE \cnt_wr_reg[30] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[296]),
        .Q(cnt_wr[30]),
        .R(1'b0));
  FDRE \cnt_wr_reg[31] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[297]),
        .Q(cnt_wr[31]),
        .R(1'b0));
  FDRE \cnt_wr_reg[32] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[298]),
        .Q(cnt_wr[32]),
        .R(1'b0));
  FDRE \cnt_wr_reg[33] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[299]),
        .Q(cnt_wr[33]),
        .R(1'b0));
  FDRE \cnt_wr_reg[34] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[300]),
        .Q(cnt_wr[34]),
        .R(1'b0));
  FDRE \cnt_wr_reg[35] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[301]),
        .Q(cnt_wr[35]),
        .R(1'b0));
  FDRE \cnt_wr_reg[36] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[302]),
        .Q(cnt_wr[36]),
        .R(1'b0));
  FDRE \cnt_wr_reg[37] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[303]),
        .Q(cnt_wr[37]),
        .R(1'b0));
  FDRE \cnt_wr_reg[38] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[304]),
        .Q(cnt_wr[38]),
        .R(1'b0));
  FDRE \cnt_wr_reg[39] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[305]),
        .Q(cnt_wr[39]),
        .R(1'b0));
  FDRE \cnt_wr_reg[3] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[269]),
        .Q(cnt_wr[3]),
        .R(1'b0));
  FDRE \cnt_wr_reg[40] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[306]),
        .Q(cnt_wr[40]),
        .R(1'b0));
  FDRE \cnt_wr_reg[41] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[307]),
        .Q(cnt_wr[41]),
        .R(1'b0));
  FDRE \cnt_wr_reg[42] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[308]),
        .Q(cnt_wr[42]),
        .R(1'b0));
  FDRE \cnt_wr_reg[43] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[309]),
        .Q(cnt_wr[43]),
        .R(1'b0));
  FDRE \cnt_wr_reg[44] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[310]),
        .Q(cnt_wr[44]),
        .R(1'b0));
  FDRE \cnt_wr_reg[45] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[311]),
        .Q(cnt_wr[45]),
        .R(1'b0));
  FDRE \cnt_wr_reg[46] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[312]),
        .Q(cnt_wr[46]),
        .R(1'b0));
  FDRE \cnt_wr_reg[47] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[313]),
        .Q(cnt_wr[47]),
        .R(1'b0));
  FDRE \cnt_wr_reg[48] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[314]),
        .Q(cnt_wr[48]),
        .R(1'b0));
  FDRE \cnt_wr_reg[49] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[315]),
        .Q(cnt_wr[49]),
        .R(1'b0));
  FDRE \cnt_wr_reg[4] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[270]),
        .Q(cnt_wr[4]),
        .R(1'b0));
  FDRE \cnt_wr_reg[50] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[316]),
        .Q(cnt_wr[50]),
        .R(1'b0));
  FDRE \cnt_wr_reg[51] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[317]),
        .Q(cnt_wr[51]),
        .R(1'b0));
  FDRE \cnt_wr_reg[52] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[318]),
        .Q(cnt_wr[52]),
        .R(1'b0));
  FDRE \cnt_wr_reg[53] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[319]),
        .Q(cnt_wr[53]),
        .R(1'b0));
  FDRE \cnt_wr_reg[54] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[320]),
        .Q(cnt_wr[54]),
        .R(1'b0));
  FDRE \cnt_wr_reg[55] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[321]),
        .Q(cnt_wr[55]),
        .R(1'b0));
  FDRE \cnt_wr_reg[56] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[322]),
        .Q(cnt_wr[56]),
        .R(1'b0));
  FDRE \cnt_wr_reg[57] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[323]),
        .Q(cnt_wr[57]),
        .R(1'b0));
  FDRE \cnt_wr_reg[58] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[324]),
        .Q(cnt_wr[58]),
        .R(1'b0));
  FDRE \cnt_wr_reg[59] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[325]),
        .Q(cnt_wr[59]),
        .R(1'b0));
  FDRE \cnt_wr_reg[5] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[271]),
        .Q(cnt_wr[5]),
        .R(1'b0));
  FDRE \cnt_wr_reg[60] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[326]),
        .Q(cnt_wr[60]),
        .R(1'b0));
  FDRE \cnt_wr_reg[61] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[327]),
        .Q(cnt_wr[61]),
        .R(1'b0));
  FDRE \cnt_wr_reg[62] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[328]),
        .Q(cnt_wr[62]),
        .R(1'b0));
  FDRE \cnt_wr_reg[63] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[329]),
        .Q(cnt_wr[63]),
        .R(1'b0));
  FDRE \cnt_wr_reg[6] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[272]),
        .Q(cnt_wr[6]),
        .R(1'b0));
  FDRE \cnt_wr_reg[7] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[273]),
        .Q(cnt_wr[7]),
        .R(1'b0));
  FDRE \cnt_wr_reg[8] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[274]),
        .Q(cnt_wr[8]),
        .R(1'b0));
  FDRE \cnt_wr_reg[9] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[275]),
        .Q(cnt_wr[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0D0C0C0C)) 
    cnt_wr_req_a_i_1
       (.I0(p_20_in[16]),
        .I1(p_20_in[17]),
        .I2(cnt_wr_done_a),
        .I3(s_axi_wstrb[3]),
        .I4(cnt_wr_req_a_i_2_n_0),
        .O(cnt_wr_req_a_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    cnt_wr_req_a_i_2
       (.I0(s_axi_awaddr[0]),
        .I1(s_axi_awready),
        .I2(s_axi_awaddr[4]),
        .I3(s_axi_awaddr[3]),
        .I4(s_axi_awaddr[1]),
        .I5(s_axi_awaddr[2]),
        .O(cnt_wr_req_a_i_2_n_0));
  FDRE cnt_wr_req_a_reg
       (.C(aclk),
        .CE(1'b1),
        .D(cnt_wr_req_a_i_1_n_0),
        .Q(p_20_in[17]),
        .R(p_0_in__0));
  FDRE cnt_wr_req_reg
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[9]),
        .Q(cnt_wr_req),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    i__carry__0_i_1
       (.I0(cnt_reg[23]),
        .I1(cnt_reg[22]),
        .I2(cnt_reg[21]),
        .I3(cnt_tx0[21]),
        .I4(cnt_tx0[22]),
        .I5(cnt_tx0[23]),
        .O(i__carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    i__carry__0_i_1__0
       (.I0(cnt_rx0[23]),
        .I1(cnt_reg[22]),
        .I2(cnt_rx0[21]),
        .I3(cnt_reg[21]),
        .I4(cnt_rx0[22]),
        .I5(cnt_reg[23]),
        .O(i__carry__0_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    i__carry__0_i_2
       (.I0(cnt_reg[20]),
        .I1(cnt_reg[19]),
        .I2(cnt_reg[18]),
        .I3(cnt_tx0[18]),
        .I4(cnt_tx0[19]),
        .I5(cnt_tx0[20]),
        .O(i__carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    i__carry__0_i_2__0
       (.I0(cnt_rx0[20]),
        .I1(cnt_reg[19]),
        .I2(cnt_rx0[18]),
        .I3(cnt_reg[18]),
        .I4(cnt_rx0[19]),
        .I5(cnt_reg[20]),
        .O(i__carry__0_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    i__carry__0_i_3
       (.I0(cnt_tx0[17]),
        .I1(cnt_reg[16]),
        .I2(cnt_reg[15]),
        .I3(cnt_tx0[15]),
        .I4(cnt_tx0[16]),
        .I5(cnt_reg[17]),
        .O(i__carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    i__carry__0_i_3__0
       (.I0(cnt_rx0[17]),
        .I1(cnt_reg[16]),
        .I2(cnt_rx0[15]),
        .I3(cnt_reg[15]),
        .I4(cnt_rx0[16]),
        .I5(cnt_reg[17]),
        .O(i__carry__0_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    i__carry__0_i_4
       (.I0(cnt_tx0[14]),
        .I1(cnt_reg[13]),
        .I2(cnt_reg[12]),
        .I3(cnt_tx0[12]),
        .I4(cnt_tx0[13]),
        .I5(cnt_reg[14]),
        .O(i__carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    i__carry__0_i_4__0
       (.I0(cnt_rx0[14]),
        .I1(cnt_reg[13]),
        .I2(cnt_rx0[12]),
        .I3(cnt_reg[12]),
        .I4(cnt_rx0[13]),
        .I5(cnt_reg[14]),
        .O(i__carry__0_i_4__0_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    i__carry__1_i_1
       (.I0(cnt_reg[35]),
        .I1(cnt_reg[34]),
        .I2(cnt_reg[33]),
        .I3(cnt_tx0[33]),
        .I4(cnt_tx0[34]),
        .I5(cnt_tx0[35]),
        .O(i__carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    i__carry__1_i_1__0
       (.I0(cnt_rx0[35]),
        .I1(cnt_reg[34]),
        .I2(cnt_rx0[33]),
        .I3(cnt_reg[33]),
        .I4(cnt_rx0[34]),
        .I5(cnt_reg[35]),
        .O(i__carry__1_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    i__carry__1_i_2
       (.I0(cnt_reg[32]),
        .I1(cnt_reg[31]),
        .I2(cnt_reg[30]),
        .I3(cnt_tx0[30]),
        .I4(cnt_tx0[31]),
        .I5(cnt_tx0[32]),
        .O(i__carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    i__carry__1_i_2__0
       (.I0(cnt_rx0[32]),
        .I1(cnt_reg[31]),
        .I2(cnt_rx0[30]),
        .I3(cnt_reg[30]),
        .I4(cnt_rx0[31]),
        .I5(cnt_reg[32]),
        .O(i__carry__1_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    i__carry__1_i_3
       (.I0(cnt_reg[29]),
        .I1(cnt_reg[28]),
        .I2(cnt_reg[27]),
        .I3(cnt_tx0[27]),
        .I4(cnt_tx0[28]),
        .I5(cnt_tx0[29]),
        .O(i__carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    i__carry__1_i_3__0
       (.I0(cnt_rx0[29]),
        .I1(cnt_reg[28]),
        .I2(cnt_rx0[27]),
        .I3(cnt_reg[27]),
        .I4(cnt_rx0[28]),
        .I5(cnt_reg[29]),
        .O(i__carry__1_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    i__carry__1_i_4
       (.I0(cnt_reg[26]),
        .I1(cnt_reg[25]),
        .I2(cnt_reg[24]),
        .I3(cnt_tx0[24]),
        .I4(cnt_tx0[25]),
        .I5(cnt_tx0[26]),
        .O(i__carry__1_i_4_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    i__carry__1_i_4__0
       (.I0(cnt_rx0[26]),
        .I1(cnt_reg[25]),
        .I2(cnt_rx0[24]),
        .I3(cnt_reg[24]),
        .I4(cnt_rx0[25]),
        .I5(cnt_reg[26]),
        .O(i__carry__1_i_4__0_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    i__carry__2_i_1
       (.I0(cnt_reg[47]),
        .I1(cnt_reg[46]),
        .I2(cnt_reg[45]),
        .I3(cnt_tx0[45]),
        .I4(cnt_tx0[46]),
        .I5(cnt_tx0[47]),
        .O(i__carry__2_i_1_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    i__carry__2_i_1__0
       (.I0(cnt_rx0[47]),
        .I1(cnt_reg[46]),
        .I2(cnt_rx0[45]),
        .I3(cnt_reg[45]),
        .I4(cnt_rx0[46]),
        .I5(cnt_reg[47]),
        .O(i__carry__2_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    i__carry__2_i_2
       (.I0(cnt_reg[44]),
        .I1(cnt_reg[43]),
        .I2(cnt_reg[42]),
        .I3(cnt_tx0[42]),
        .I4(cnt_tx0[43]),
        .I5(cnt_tx0[44]),
        .O(i__carry__2_i_2_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    i__carry__2_i_2__0
       (.I0(cnt_rx0[44]),
        .I1(cnt_reg[43]),
        .I2(cnt_rx0[42]),
        .I3(cnt_reg[42]),
        .I4(cnt_rx0[43]),
        .I5(cnt_reg[44]),
        .O(i__carry__2_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    i__carry__2_i_3
       (.I0(cnt_reg[41]),
        .I1(cnt_reg[40]),
        .I2(cnt_reg[39]),
        .I3(cnt_tx0[39]),
        .I4(cnt_tx0[40]),
        .I5(cnt_tx0[41]),
        .O(i__carry__2_i_3_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    i__carry__2_i_3__0
       (.I0(cnt_rx0[41]),
        .I1(cnt_reg[40]),
        .I2(cnt_rx0[39]),
        .I3(cnt_reg[39]),
        .I4(cnt_rx0[40]),
        .I5(cnt_reg[41]),
        .O(i__carry__2_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    i__carry__2_i_4
       (.I0(cnt_reg[38]),
        .I1(cnt_reg[37]),
        .I2(cnt_reg[36]),
        .I3(cnt_tx0[36]),
        .I4(cnt_tx0[37]),
        .I5(cnt_tx0[38]),
        .O(i__carry__2_i_4_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    i__carry__2_i_4__0
       (.I0(cnt_rx0[38]),
        .I1(cnt_reg[37]),
        .I2(cnt_rx0[36]),
        .I3(cnt_reg[36]),
        .I4(cnt_rx0[37]),
        .I5(cnt_reg[38]),
        .O(i__carry__2_i_4__0_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    i__carry__3_i_1
       (.I0(cnt_reg[59]),
        .I1(cnt_reg[58]),
        .I2(cnt_reg[57]),
        .I3(cnt_tx0[57]),
        .I4(cnt_tx0[58]),
        .I5(cnt_tx0[59]),
        .O(i__carry__3_i_1_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    i__carry__3_i_1__0
       (.I0(cnt_rx0[59]),
        .I1(cnt_reg[58]),
        .I2(cnt_rx0[57]),
        .I3(cnt_reg[57]),
        .I4(cnt_rx0[58]),
        .I5(cnt_reg[59]),
        .O(i__carry__3_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    i__carry__3_i_2
       (.I0(cnt_reg[56]),
        .I1(cnt_reg[55]),
        .I2(cnt_reg[54]),
        .I3(cnt_tx0[54]),
        .I4(cnt_tx0[55]),
        .I5(cnt_tx0[56]),
        .O(i__carry__3_i_2_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    i__carry__3_i_2__0
       (.I0(cnt_rx0[56]),
        .I1(cnt_reg[55]),
        .I2(cnt_rx0[54]),
        .I3(cnt_reg[54]),
        .I4(cnt_rx0[55]),
        .I5(cnt_reg[56]),
        .O(i__carry__3_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    i__carry__3_i_3
       (.I0(cnt_reg[53]),
        .I1(cnt_reg[52]),
        .I2(cnt_reg[51]),
        .I3(cnt_tx0[51]),
        .I4(cnt_tx0[52]),
        .I5(cnt_tx0[53]),
        .O(i__carry__3_i_3_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    i__carry__3_i_3__0
       (.I0(cnt_rx0[53]),
        .I1(cnt_reg[52]),
        .I2(cnt_rx0[51]),
        .I3(cnt_reg[51]),
        .I4(cnt_rx0[52]),
        .I5(cnt_reg[53]),
        .O(i__carry__3_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    i__carry__3_i_4
       (.I0(cnt_reg[50]),
        .I1(cnt_reg[49]),
        .I2(cnt_reg[48]),
        .I3(cnt_tx0[48]),
        .I4(cnt_tx0[49]),
        .I5(cnt_tx0[50]),
        .O(i__carry__3_i_4_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    i__carry__3_i_4__0
       (.I0(cnt_rx0[50]),
        .I1(cnt_reg[49]),
        .I2(cnt_rx0[48]),
        .I3(cnt_reg[48]),
        .I4(cnt_rx0[49]),
        .I5(cnt_reg[50]),
        .O(i__carry__3_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__4_i_1
       (.I0(cnt_tx0[63]),
        .I1(cnt_reg[63]),
        .O(i__carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__4_i_1__0
       (.I0(cnt_rx0[63]),
        .I1(cnt_reg[63]),
        .O(i__carry__4_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    i__carry__4_i_2
       (.I0(cnt_reg[62]),
        .I1(cnt_reg[61]),
        .I2(cnt_reg[60]),
        .I3(cnt_tx0[60]),
        .I4(cnt_tx0[61]),
        .I5(cnt_tx0[62]),
        .O(i__carry__4_i_2_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    i__carry__4_i_2__0
       (.I0(cnt_rx0[62]),
        .I1(cnt_reg[61]),
        .I2(cnt_reg[60]),
        .I3(cnt_rx0[60]),
        .I4(cnt_rx0[61]),
        .I5(cnt_reg[62]),
        .O(i__carry__4_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    i__carry_i_1
       (.I0(cnt_tx0[11]),
        .I1(cnt_reg[10]),
        .I2(cnt_reg[9]),
        .I3(cnt_tx0[9]),
        .I4(cnt_tx0[10]),
        .I5(cnt_reg[11]),
        .O(i__carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    i__carry_i_1__0
       (.I0(cnt_rx0[11]),
        .I1(cnt_reg[10]),
        .I2(cnt_rx0[9]),
        .I3(cnt_reg[9]),
        .I4(cnt_rx0[10]),
        .I5(cnt_reg[11]),
        .O(i__carry_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    i__carry_i_2
       (.I0(cnt_tx0[8]),
        .I1(cnt_reg[7]),
        .I2(cnt_reg[6]),
        .I3(cnt_tx0[6]),
        .I4(cnt_tx0[7]),
        .I5(cnt_reg[8]),
        .O(i__carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    i__carry_i_2__0
       (.I0(cnt_rx0[8]),
        .I1(cnt_reg[7]),
        .I2(cnt_rx0[6]),
        .I3(cnt_reg[6]),
        .I4(cnt_rx0[7]),
        .I5(cnt_reg[8]),
        .O(i__carry_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    i__carry_i_3
       (.I0(cnt_tx0[5]),
        .I1(cnt_reg[4]),
        .I2(cnt_reg[3]),
        .I3(cnt_tx0[3]),
        .I4(cnt_tx0[4]),
        .I5(cnt_reg[5]),
        .O(i__carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    i__carry_i_3__0
       (.I0(cnt_rx0[5]),
        .I1(cnt_reg[4]),
        .I2(cnt_rx0[3]),
        .I3(cnt_reg[3]),
        .I4(cnt_rx0[4]),
        .I5(cnt_reg[5]),
        .O(i__carry_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    i__carry_i_4
       (.I0(cnt_tx0[2]),
        .I1(cnt_reg[1]),
        .I2(cnt_reg[0]),
        .I3(cnt_tx0[0]),
        .I4(cnt_tx0[1]),
        .I5(cnt_reg[2]),
        .O(i__carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    i__carry_i_4__0
       (.I0(cnt_rx0[2]),
        .I1(cnt_reg[1]),
        .I2(cnt_rx0[0]),
        .I3(cnt_reg[0]),
        .I4(cnt_rx0[1]),
        .I5(cnt_reg[2]),
        .O(i__carry_i_4__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    irq_INST_0
       (.I0(irq_INST_0_i_1_n_0),
        .I1(irq_INST_0_i_2_n_0),
        .I2(irq_enabled[3]),
        .I3(\irq_pend_reg_n_0_[3] ),
        .I4(irq_enabled[4]),
        .I5(\irq_pend_reg_n_0_[4] ),
        .O(irq));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    irq_INST_0_i_1
       (.I0(irq_enabled[2]),
        .I1(\irq_pend_reg_n_0_[2] ),
        .I2(\irq_pend_reg_n_0_[0] ),
        .I3(irq_enabled[0]),
        .I4(\irq_pend_reg_n_0_[6] ),
        .I5(irq_enabled[6]),
        .O(irq_INST_0_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    irq_INST_0_i_2
       (.I0(p_86_in),
        .I1(irq_enabled[8]),
        .I2(\irq_pend_reg_n_0_[7] ),
        .I3(irq_enabled[7]),
        .I4(irq_INST_0_i_3_n_0),
        .O(irq_INST_0_i_2_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    irq_INST_0_i_3
       (.I0(irq_enabled[5]),
        .I1(\irq_pend_reg_n_0_[5] ),
        .I2(irq_enabled[1]),
        .I3(\irq_pend_reg_n_0_[1] ),
        .O(irq_INST_0_i_3_n_0));
  LUT5 #(
    .INIT(32'h00080000)) 
    \irq_enabled[7]_i_1 
       (.I0(s_axi_awaddr[1]),
        .I1(s_axi_wstrb[0]),
        .I2(s_axi_awaddr[2]),
        .I3(s_axi_awaddr[0]),
        .I4(\irq_enabled[7]_i_2_n_0 ),
        .O(\irq_enabled[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \irq_enabled[7]_i_2 
       (.I0(s_axi_awready),
        .I1(s_axi_awaddr[4]),
        .I2(s_axi_awaddr[3]),
        .O(\irq_enabled[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \irq_enabled[8]_i_1 
       (.I0(s_axi_wdata[8]),
        .I1(s_axi_awaddr[1]),
        .I2(s_axi_wstrb[1]),
        .I3(\irq_enabled[8]_i_2_n_0 ),
        .I4(irq_enabled[8]),
        .O(\irq_enabled[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \irq_enabled[8]_i_2 
       (.I0(s_axi_awaddr[3]),
        .I1(s_axi_awaddr[4]),
        .I2(s_axi_awready),
        .I3(s_axi_awaddr[0]),
        .I4(s_axi_awaddr[2]),
        .O(\irq_enabled[8]_i_2_n_0 ));
  FDRE \irq_enabled_reg[0] 
       (.C(aclk),
        .CE(\irq_enabled[7]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(irq_enabled[0]),
        .R(p_0_in__0));
  FDRE \irq_enabled_reg[1] 
       (.C(aclk),
        .CE(\irq_enabled[7]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(irq_enabled[1]),
        .R(p_0_in__0));
  FDRE \irq_enabled_reg[2] 
       (.C(aclk),
        .CE(\irq_enabled[7]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(irq_enabled[2]),
        .R(p_0_in__0));
  FDRE \irq_enabled_reg[3] 
       (.C(aclk),
        .CE(\irq_enabled[7]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(irq_enabled[3]),
        .R(p_0_in__0));
  FDRE \irq_enabled_reg[4] 
       (.C(aclk),
        .CE(\irq_enabled[7]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(irq_enabled[4]),
        .R(p_0_in__0));
  FDRE \irq_enabled_reg[5] 
       (.C(aclk),
        .CE(\irq_enabled[7]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(irq_enabled[5]),
        .R(p_0_in__0));
  FDRE \irq_enabled_reg[6] 
       (.C(aclk),
        .CE(\irq_enabled[7]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(irq_enabled[6]),
        .R(p_0_in__0));
  FDRE \irq_enabled_reg[7] 
       (.C(aclk),
        .CE(\irq_enabled[7]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(irq_enabled[7]),
        .R(p_0_in__0));
  FDRE \irq_enabled_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(\irq_enabled[8]_i_1_n_0 ),
        .Q(irq_enabled[8]),
        .R(p_0_in__0));
  LUT5 #(
    .INIT(32'h55FF00C0)) 
    \irq_pend[0]_i_1 
       (.I0(s_axi_wdata[0]),
        .I1(\cnt_tx_en_a_reg_n_0_[0] ),
        .I2(\cnt_tx_done_a_reg_n_0_[0] ),
        .I3(\irq_pend[7]_i_2_n_0 ),
        .I4(\irq_pend_reg_n_0_[0] ),
        .O(\irq_pend[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h55FF00C0)) 
    \irq_pend[1]_i_1 
       (.I0(s_axi_wdata[1]),
        .I1(p_1_in69_in),
        .I2(p_0_in68_in),
        .I3(\irq_pend[7]_i_2_n_0 ),
        .I4(\irq_pend_reg_n_0_[1] ),
        .O(\irq_pend[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h55FF00C0)) 
    \irq_pend[2]_i_1 
       (.I0(s_axi_wdata[2]),
        .I1(\cnt_rx_en_a_reg_n_0_[0] ),
        .I2(\cnt_rx_done_a_reg_n_0_[0] ),
        .I3(\irq_pend[7]_i_2_n_0 ),
        .I4(\irq_pend_reg_n_0_[2] ),
        .O(\irq_pend[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h55FF00C0)) 
    \irq_pend[3]_i_1 
       (.I0(s_axi_wdata[3]),
        .I1(p_1_in65_in),
        .I2(p_0_in64_in),
        .I3(\irq_pend[7]_i_2_n_0 ),
        .I4(\irq_pend_reg_n_0_[3] ),
        .O(\irq_pend[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h77770300)) 
    \irq_pend[4]_i_1 
       (.I0(s_axi_wdata[4]),
        .I1(\irq_pend[7]_i_2_n_0 ),
        .I2(\cnt_latch_valid_rd_a_reg_n_0_[0] ),
        .I3(p_1_in),
        .I4(\irq_pend_reg_n_0_[4] ),
        .O(\irq_pend[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h77770300)) 
    \irq_pend[5]_i_1 
       (.I0(s_axi_wdata[5]),
        .I1(\irq_pend[7]_i_2_n_0 ),
        .I2(\cnt_latch_valid_rd_a_reg_n_0_[1] ),
        .I3(p_1_in52_in),
        .I4(\irq_pend_reg_n_0_[5] ),
        .O(\irq_pend[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h77773000)) 
    \irq_pend[6]_i_1 
       (.I0(s_axi_wdata[6]),
        .I1(\irq_pend[7]_i_2_n_0 ),
        .I2(p_20_in[17]),
        .I3(cnt_wr_done_a),
        .I4(\irq_pend_reg_n_0_[6] ),
        .O(\irq_pend[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h55FF00C0)) 
    \irq_pend[7]_i_1 
       (.I0(s_axi_wdata[7]),
        .I1(sync_aclk_to_ts_clk_src_req),
        .I2(sync_aclk_to_ts_clk_src_done),
        .I3(\irq_pend[7]_i_2_n_0 ),
        .I4(\irq_pend_reg_n_0_[7] ),
        .O(\irq_pend[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    \irq_pend[7]_i_2 
       (.I0(s_axi_awaddr[0]),
        .I1(\irq_enabled[7]_i_2_n_0 ),
        .I2(s_axi_awaddr[2]),
        .I3(s_axi_awaddr[1]),
        .I4(s_axi_wstrb[0]),
        .O(\irq_pend[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF5FCC0C)) 
    \irq_pend[8]_i_1 
       (.I0(s_axi_wdata[8]),
        .I1(sync_ts_clk_to_aclk_dst_req),
        .I2(\irq_enabled[7]_i_2_n_0 ),
        .I3(\irq_pend[8]_i_2_n_0 ),
        .I4(p_86_in),
        .O(\irq_pend[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \irq_pend[8]_i_2 
       (.I0(s_axi_awaddr[1]),
        .I1(s_axi_awaddr[2]),
        .I2(s_axi_awaddr[0]),
        .I3(s_axi_wstrb[1]),
        .O(\irq_pend[8]_i_2_n_0 ));
  FDRE \irq_pend_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\irq_pend[0]_i_1_n_0 ),
        .Q(\irq_pend_reg_n_0_[0] ),
        .R(p_0_in__0));
  FDRE \irq_pend_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\irq_pend[1]_i_1_n_0 ),
        .Q(\irq_pend_reg_n_0_[1] ),
        .R(p_0_in__0));
  FDRE \irq_pend_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\irq_pend[2]_i_1_n_0 ),
        .Q(\irq_pend_reg_n_0_[2] ),
        .R(p_0_in__0));
  FDRE \irq_pend_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\irq_pend[3]_i_1_n_0 ),
        .Q(\irq_pend_reg_n_0_[3] ),
        .R(p_0_in__0));
  FDRE \irq_pend_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\irq_pend[4]_i_1_n_0 ),
        .Q(\irq_pend_reg_n_0_[4] ),
        .R(p_0_in__0));
  FDRE \irq_pend_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\irq_pend[5]_i_1_n_0 ),
        .Q(\irq_pend_reg_n_0_[5] ),
        .R(p_0_in__0));
  FDRE \irq_pend_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\irq_pend[6]_i_1_n_0 ),
        .Q(\irq_pend_reg_n_0_[6] ),
        .R(p_0_in__0));
  FDRE \irq_pend_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\irq_pend[7]_i_1_n_0 ),
        .Q(\irq_pend_reg_n_0_[7] ),
        .R(p_0_in__0));
  FDRE \irq_pend_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(\irq_pend[8]_i_1_n_0 ),
        .Q(p_86_in),
        .R(p_0_in__0));
  FDRE \rx_data_ready_a_reg[0] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[212]),
        .Q(rx_data_ready_a[0]),
        .R(1'b0));
  FDRE \rx_data_ready_a_reg[1] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[213]),
        .Q(rx_data_ready_a[1]),
        .R(1'b0));
  FDRE \rx_data_ready_ovr_a_reg[0] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[210]),
        .Q(rx_data_ready_ovr_a[0]),
        .R(1'b0));
  FDRE \rx_data_ready_ovr_a_reg[1] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[211]),
        .Q(rx_data_ready_ovr_a[1]),
        .R(1'b0));
  FDRE \rx_data_ready_ovr_en_a_reg[0] 
       (.C(aclk),
        .CE(\rx_data_ready_ovr_val_a[0]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(rx_data_ready_ovr_en_a[0]),
        .R(p_0_in__0));
  FDRE \rx_data_ready_ovr_en_a_reg[1] 
       (.C(aclk),
        .CE(\rx_data_ready_ovr_val_a[1]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(rx_data_ready_ovr_en_a[1]),
        .R(p_0_in__0));
  FDRE \rx_data_ready_ovr_en_reg[0] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[336]),
        .Q(rx_data_ready_ovr_en[0]),
        .R(1'b0));
  FDRE \rx_data_ready_ovr_en_reg[1] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[337]),
        .Q(rx_data_ready_ovr_en[1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000040004000000)) 
    \rx_data_ready_ovr_val_a[0]_i_1 
       (.I0(s_axi_awaddr[2]),
        .I1(s_axi_awaddr[0]),
        .I2(\rx_data_ready_ovr_val_a[0]_i_2_n_0 ),
        .I3(s_axi_wstrb[0]),
        .I4(s_axi_awaddr[3]),
        .I5(s_axi_awaddr[4]),
        .O(\rx_data_ready_ovr_val_a[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \rx_data_ready_ovr_val_a[0]_i_2 
       (.I0(s_axi_awaddr[1]),
        .I1(s_axi_awready),
        .O(\rx_data_ready_ovr_val_a[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \rx_data_ready_ovr_val_a[1]_i_1 
       (.I0(s_axi_awaddr[1]),
        .I1(s_axi_awaddr[2]),
        .I2(s_axi_wstrb[0]),
        .I3(s_axi_awaddr[0]),
        .I4(s_axi_awaddr[3]),
        .I5(s_axi_awready),
        .O(\rx_data_ready_ovr_val_a[1]_i_1_n_0 ));
  FDRE \rx_data_ready_ovr_val_a_reg[0] 
       (.C(aclk),
        .CE(\rx_data_ready_ovr_val_a[0]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(rx_data_ready_ovr_val_a[0]),
        .R(p_0_in__0));
  FDRE \rx_data_ready_ovr_val_a_reg[1] 
       (.C(aclk),
        .CE(\rx_data_ready_ovr_val_a[1]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(rx_data_ready_ovr_val_a[1]),
        .R(p_0_in__0));
  FDRE \rx_data_ready_ovr_val_reg[0] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[334]),
        .Q(rx_data_ready_ovr_val[0]),
        .R(1'b0));
  FDRE \rx_data_ready_ovr_val_reg[1] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[335]),
        .Q(rx_data_ready_ovr_val[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rx_data_ready_stky_a[0]_i_1 
       (.I0(\tx_dma_data_ready_stky_a[0]_i_2_n_0 ),
        .I1(\rx_data_ready_stky_a_reg_n_0_[0] ),
        .I2(rx_data_ready_a[0]),
        .O(\rx_data_ready_stky_a[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rx_data_ready_stky_a[1]_i_1 
       (.I0(\tx_dma_data_ready_stky_a[1]_i_2_n_0 ),
        .I1(\rx_data_ready_stky_a_reg_n_0_[1] ),
        .I2(rx_data_ready_a[1]),
        .O(\rx_data_ready_stky_a[1]_i_1_n_0 ));
  FDRE \rx_data_ready_stky_a_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rx_data_ready_stky_a[0]_i_1_n_0 ),
        .Q(\rx_data_ready_stky_a_reg_n_0_[0] ),
        .R(p_0_in__0));
  FDRE \rx_data_ready_stky_a_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rx_data_ready_stky_a[1]_i_1_n_0 ),
        .Q(\rx_data_ready_stky_a_reg_n_0_[1] ),
        .R(p_0_in__0));
  FDRE \rx_dma_xfer_req_a_reg[0] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[220]),
        .Q(rx_dma_xfer_req_a[0]),
        .R(1'b0));
  FDRE \rx_dma_xfer_req_a_reg[1] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[221]),
        .Q(rx_dma_xfer_req_a[1]),
        .R(1'b0));
  FDRE \rx_dma_xfer_req_ovr_a_reg[0] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[218]),
        .Q(rx_dma_xfer_req_ovr_a[0]),
        .R(1'b0));
  FDRE \rx_dma_xfer_req_ovr_a_reg[1] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[219]),
        .Q(rx_dma_xfer_req_ovr_a[1]),
        .R(1'b0));
  FDRE \rx_dma_xfer_req_ovr_en_a_reg[0] 
       (.C(aclk),
        .CE(\rx_data_ready_ovr_val_a[0]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(rx_dma_xfer_req_ovr_en_a[0]),
        .R(p_0_in__0));
  FDRE \rx_dma_xfer_req_ovr_en_a_reg[1] 
       (.C(aclk),
        .CE(\rx_data_ready_ovr_val_a[1]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(rx_dma_xfer_req_ovr_en_a[1]),
        .R(p_0_in__0));
  FDRE \rx_dma_xfer_req_ovr_en_reg[0] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[344]),
        .Q(rx_dma_xfer_req_ovr_en[0]),
        .R(1'b0));
  FDRE \rx_dma_xfer_req_ovr_en_reg[1] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[345]),
        .Q(rx_dma_xfer_req_ovr_en[1]),
        .R(1'b0));
  FDRE \rx_dma_xfer_req_ovr_val_a_reg[0] 
       (.C(aclk),
        .CE(\rx_data_ready_ovr_val_a[0]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(rx_dma_xfer_req_ovr_val_a[0]),
        .R(p_0_in__0));
  FDRE \rx_dma_xfer_req_ovr_val_a_reg[1] 
       (.C(aclk),
        .CE(\rx_data_ready_ovr_val_a[1]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(rx_dma_xfer_req_ovr_val_a[1]),
        .R(p_0_in__0));
  FDRE \rx_dma_xfer_req_ovr_val_reg[0] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[342]),
        .Q(rx_dma_xfer_req_ovr_val[0]),
        .R(1'b0));
  FDRE \rx_dma_xfer_req_ovr_val_reg[1] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[343]),
        .Q(rx_dma_xfer_req_ovr_val[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \rx_dma_xfer_req_stky_a[0]_i_1 
       (.I0(\rx_dma_xfer_req_stky_a_reg_n_0_[0] ),
        .I1(rx_dma_xfer_req_a[0]),
        .I2(\tx_dma_data_ready_stky_a[0]_i_2_n_0 ),
        .O(\rx_dma_xfer_req_stky_a[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \rx_dma_xfer_req_stky_a[1]_i_1 
       (.I0(\rx_dma_xfer_req_stky_a_reg_n_0_[1] ),
        .I1(rx_dma_xfer_req_a[1]),
        .I2(\tx_dma_data_ready_stky_a[1]_i_2_n_0 ),
        .O(\rx_dma_xfer_req_stky_a[1]_i_1_n_0 ));
  FDRE \rx_dma_xfer_req_stky_a_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rx_dma_xfer_req_stky_a[0]_i_1_n_0 ),
        .Q(\rx_dma_xfer_req_stky_a_reg_n_0_[0] ),
        .R(p_0_in__0));
  FDRE \rx_dma_xfer_req_stky_a_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rx_dma_xfer_req_stky_a[1]_i_1_n_0 ),
        .Q(\rx_dma_xfer_req_stky_a_reg_n_0_[1] ),
        .R(p_0_in__0));
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
    .INIT(64'h8008200240041001)) 
    rx_enable1_carry__0_i_1
       (.I0(cnt_rx1[23]),
        .I1(cnt_reg[22]),
        .I2(cnt_reg[21]),
        .I3(cnt_rx1[21]),
        .I4(cnt_rx1[22]),
        .I5(cnt_reg[23]),
        .O(rx_enable1_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    rx_enable1_carry__0_i_2
       (.I0(cnt_rx1[20]),
        .I1(cnt_reg[19]),
        .I2(cnt_reg[18]),
        .I3(cnt_rx1[18]),
        .I4(cnt_rx1[19]),
        .I5(cnt_reg[20]),
        .O(rx_enable1_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    rx_enable1_carry__0_i_3
       (.I0(cnt_rx1[17]),
        .I1(cnt_reg[16]),
        .I2(cnt_reg[15]),
        .I3(cnt_rx1[15]),
        .I4(cnt_rx1[16]),
        .I5(cnt_reg[17]),
        .O(rx_enable1_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    rx_enable1_carry__0_i_4
       (.I0(cnt_rx1[14]),
        .I1(cnt_reg[13]),
        .I2(cnt_reg[12]),
        .I3(cnt_rx1[12]),
        .I4(cnt_rx1[13]),
        .I5(cnt_reg[14]),
        .O(rx_enable1_carry__0_i_4_n_0));
  CARRY4 rx_enable1_carry__1
       (.CI(rx_enable1_carry__0_n_0),
        .CO({rx_enable1_carry__1_n_0,rx_enable1_carry__1_n_1,rx_enable1_carry__1_n_2,rx_enable1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_rx_enable1_carry__1_O_UNCONNECTED[3:0]),
        .S({rx_enable1_carry__1_i_1_n_0,rx_enable1_carry__1_i_2_n_0,rx_enable1_carry__1_i_3_n_0,rx_enable1_carry__1_i_4_n_0}));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    rx_enable1_carry__1_i_1
       (.I0(cnt_rx1[35]),
        .I1(cnt_reg[34]),
        .I2(cnt_reg[33]),
        .I3(cnt_rx1[33]),
        .I4(cnt_rx1[34]),
        .I5(cnt_reg[35]),
        .O(rx_enable1_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    rx_enable1_carry__1_i_2
       (.I0(cnt_rx1[32]),
        .I1(cnt_reg[31]),
        .I2(cnt_reg[30]),
        .I3(cnt_rx1[30]),
        .I4(cnt_rx1[31]),
        .I5(cnt_reg[32]),
        .O(rx_enable1_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    rx_enable1_carry__1_i_3
       (.I0(cnt_rx1[29]),
        .I1(cnt_reg[28]),
        .I2(cnt_reg[27]),
        .I3(cnt_rx1[27]),
        .I4(cnt_rx1[28]),
        .I5(cnt_reg[29]),
        .O(rx_enable1_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    rx_enable1_carry__1_i_4
       (.I0(cnt_rx1[26]),
        .I1(cnt_reg[25]),
        .I2(cnt_reg[24]),
        .I3(cnt_rx1[24]),
        .I4(cnt_rx1[25]),
        .I5(cnt_reg[26]),
        .O(rx_enable1_carry__1_i_4_n_0));
  CARRY4 rx_enable1_carry__2
       (.CI(rx_enable1_carry__1_n_0),
        .CO({rx_enable1_carry__2_n_0,rx_enable1_carry__2_n_1,rx_enable1_carry__2_n_2,rx_enable1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_rx_enable1_carry__2_O_UNCONNECTED[3:0]),
        .S({rx_enable1_carry__2_i_1_n_0,rx_enable1_carry__2_i_2_n_0,rx_enable1_carry__2_i_3_n_0,rx_enable1_carry__2_i_4_n_0}));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    rx_enable1_carry__2_i_1
       (.I0(cnt_rx1[47]),
        .I1(cnt_reg[46]),
        .I2(cnt_reg[45]),
        .I3(cnt_rx1[45]),
        .I4(cnt_rx1[46]),
        .I5(cnt_reg[47]),
        .O(rx_enable1_carry__2_i_1_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    rx_enable1_carry__2_i_2
       (.I0(cnt_rx1[44]),
        .I1(cnt_reg[43]),
        .I2(cnt_reg[42]),
        .I3(cnt_rx1[42]),
        .I4(cnt_rx1[43]),
        .I5(cnt_reg[44]),
        .O(rx_enable1_carry__2_i_2_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    rx_enable1_carry__2_i_3
       (.I0(cnt_rx1[41]),
        .I1(cnt_reg[40]),
        .I2(cnt_reg[39]),
        .I3(cnt_rx1[39]),
        .I4(cnt_rx1[40]),
        .I5(cnt_reg[41]),
        .O(rx_enable1_carry__2_i_3_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    rx_enable1_carry__2_i_4
       (.I0(cnt_rx1[38]),
        .I1(cnt_reg[37]),
        .I2(cnt_reg[36]),
        .I3(cnt_rx1[36]),
        .I4(cnt_rx1[37]),
        .I5(cnt_reg[38]),
        .O(rx_enable1_carry__2_i_4_n_0));
  CARRY4 rx_enable1_carry__3
       (.CI(rx_enable1_carry__2_n_0),
        .CO({rx_enable1_carry__3_n_0,rx_enable1_carry__3_n_1,rx_enable1_carry__3_n_2,rx_enable1_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_rx_enable1_carry__3_O_UNCONNECTED[3:0]),
        .S({rx_enable1_carry__3_i_1_n_0,rx_enable1_carry__3_i_2_n_0,rx_enable1_carry__3_i_3_n_0,rx_enable1_carry__3_i_4_n_0}));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    rx_enable1_carry__3_i_1
       (.I0(cnt_rx1[59]),
        .I1(cnt_reg[58]),
        .I2(cnt_reg[57]),
        .I3(cnt_rx1[57]),
        .I4(cnt_rx1[58]),
        .I5(cnt_reg[59]),
        .O(rx_enable1_carry__3_i_1_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    rx_enable1_carry__3_i_2
       (.I0(cnt_rx1[56]),
        .I1(cnt_reg[55]),
        .I2(cnt_reg[54]),
        .I3(cnt_rx1[54]),
        .I4(cnt_rx1[55]),
        .I5(cnt_reg[56]),
        .O(rx_enable1_carry__3_i_2_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    rx_enable1_carry__3_i_3
       (.I0(cnt_rx1[53]),
        .I1(cnt_reg[52]),
        .I2(cnt_reg[51]),
        .I3(cnt_rx1[51]),
        .I4(cnt_rx1[52]),
        .I5(cnt_reg[53]),
        .O(rx_enable1_carry__3_i_3_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    rx_enable1_carry__3_i_4
       (.I0(cnt_rx1[50]),
        .I1(cnt_reg[49]),
        .I2(cnt_reg[48]),
        .I3(cnt_rx1[48]),
        .I4(cnt_rx1[49]),
        .I5(cnt_reg[50]),
        .O(rx_enable1_carry__3_i_4_n_0));
  CARRY4 rx_enable1_carry__4
       (.CI(rx_enable1_carry__3_n_0),
        .CO({NLW_rx_enable1_carry__4_CO_UNCONNECTED[3:2],rx_enable10_out,rx_enable1_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_rx_enable1_carry__4_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,rx_enable1_carry__4_i_1_n_0,rx_enable1_carry__4_i_2_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    rx_enable1_carry__4_i_1
       (.I0(cnt_rx1[63]),
        .I1(cnt_reg[63]),
        .O(rx_enable1_carry__4_i_1_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    rx_enable1_carry__4_i_2
       (.I0(cnt_rx1[62]),
        .I1(cnt_reg[61]),
        .I2(cnt_reg[60]),
        .I3(cnt_rx1[60]),
        .I4(cnt_rx1[61]),
        .I5(cnt_reg[62]),
        .O(rx_enable1_carry__4_i_2_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    rx_enable1_carry_i_1
       (.I0(cnt_rx1[11]),
        .I1(cnt_reg[10]),
        .I2(cnt_reg[9]),
        .I3(cnt_rx1[9]),
        .I4(cnt_rx1[10]),
        .I5(cnt_reg[11]),
        .O(rx_enable1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    rx_enable1_carry_i_2
       (.I0(cnt_rx1[8]),
        .I1(cnt_reg[7]),
        .I2(cnt_reg[6]),
        .I3(cnt_rx1[6]),
        .I4(cnt_rx1[7]),
        .I5(cnt_reg[8]),
        .O(rx_enable1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    rx_enable1_carry_i_3
       (.I0(cnt_rx1[5]),
        .I1(cnt_reg[4]),
        .I2(cnt_reg[3]),
        .I3(cnt_rx1[3]),
        .I4(cnt_rx1[4]),
        .I5(cnt_reg[5]),
        .O(rx_enable1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    rx_enable1_carry_i_4
       (.I0(cnt_rx1[2]),
        .I1(cnt_reg[1]),
        .I2(cnt_reg[0]),
        .I3(cnt_rx1[0]),
        .I4(cnt_rx1[1]),
        .I5(cnt_reg[2]),
        .O(rx_enable1_carry_i_4_n_0));
  CARRY4 \rx_enable1_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\rx_enable1_inferred__0/i__carry_n_0 ,\rx_enable1_inferred__0/i__carry_n_1 ,\rx_enable1_inferred__0/i__carry_n_2 ,\rx_enable1_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_rx_enable1_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1__0_n_0,i__carry_i_2__0_n_0,i__carry_i_3__0_n_0,i__carry_i_4__0_n_0}));
  CARRY4 \rx_enable1_inferred__0/i__carry__0 
       (.CI(\rx_enable1_inferred__0/i__carry_n_0 ),
        .CO({\rx_enable1_inferred__0/i__carry__0_n_0 ,\rx_enable1_inferred__0/i__carry__0_n_1 ,\rx_enable1_inferred__0/i__carry__0_n_2 ,\rx_enable1_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_rx_enable1_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_1__0_n_0,i__carry__0_i_2__0_n_0,i__carry__0_i_3__0_n_0,i__carry__0_i_4__0_n_0}));
  CARRY4 \rx_enable1_inferred__0/i__carry__1 
       (.CI(\rx_enable1_inferred__0/i__carry__0_n_0 ),
        .CO({\rx_enable1_inferred__0/i__carry__1_n_0 ,\rx_enable1_inferred__0/i__carry__1_n_1 ,\rx_enable1_inferred__0/i__carry__1_n_2 ,\rx_enable1_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_rx_enable1_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S({i__carry__1_i_1__0_n_0,i__carry__1_i_2__0_n_0,i__carry__1_i_3__0_n_0,i__carry__1_i_4__0_n_0}));
  CARRY4 \rx_enable1_inferred__0/i__carry__2 
       (.CI(\rx_enable1_inferred__0/i__carry__1_n_0 ),
        .CO({\rx_enable1_inferred__0/i__carry__2_n_0 ,\rx_enable1_inferred__0/i__carry__2_n_1 ,\rx_enable1_inferred__0/i__carry__2_n_2 ,\rx_enable1_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_rx_enable1_inferred__0/i__carry__2_O_UNCONNECTED [3:0]),
        .S({i__carry__2_i_1__0_n_0,i__carry__2_i_2__0_n_0,i__carry__2_i_3__0_n_0,i__carry__2_i_4__0_n_0}));
  CARRY4 \rx_enable1_inferred__0/i__carry__3 
       (.CI(\rx_enable1_inferred__0/i__carry__2_n_0 ),
        .CO({\rx_enable1_inferred__0/i__carry__3_n_0 ,\rx_enable1_inferred__0/i__carry__3_n_1 ,\rx_enable1_inferred__0/i__carry__3_n_2 ,\rx_enable1_inferred__0/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_rx_enable1_inferred__0/i__carry__3_O_UNCONNECTED [3:0]),
        .S({i__carry__3_i_1__0_n_0,i__carry__3_i_2__0_n_0,i__carry__3_i_3__0_n_0,i__carry__3_i_4__0_n_0}));
  CARRY4 \rx_enable1_inferred__0/i__carry__4 
       (.CI(\rx_enable1_inferred__0/i__carry__3_n_0 ),
        .CO({\NLW_rx_enable1_inferred__0/i__carry__4_CO_UNCONNECTED [3:2],rx_enable1,\rx_enable1_inferred__0/i__carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_rx_enable1_inferred__0/i__carry__4_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,i__carry__4_i_1__0_n_0,i__carry__4_i_2__0_n_0}));
  LUT6 #(
    .INIT(64'hCFFFAAAA3000AAAA)) 
    \rx_enable[0]_i_1 
       (.I0(rx_enable_man[0]),
        .I1(\cnt_rx_done_reg_n_0_[0] ),
        .I2(ts_clk_rx_en_reg_0),
        .I3(rx_enable1),
        .I4(\cnt_rx_en_reg_n_0_[0] ),
        .I5(\rx_enable_reg[0]_0 ),
        .O(\rx_enable[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFFFAAAA3000AAAA)) 
    \rx_enable[1]_i_1 
       (.I0(rx_enable_man[1]),
        .I1(\cnt_rx_done_reg_n_0_[1] ),
        .I2(ts_clk_rx_en_reg_0),
        .I3(rx_enable10_out),
        .I4(p_2_in10_in),
        .I5(\rx_enable_reg[1]_0 ),
        .O(\rx_enable[1]_i_1_n_0 ));
  FDRE \rx_enable_a_reg[0] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[202]),
        .Q(rx_enable_man_a),
        .R(1'b0));
  FDRE \rx_enable_a_reg[1] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[203]),
        .Q(\rx_enable_a_reg_n_0_[1] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hC8CCCCCCC8C0C0C0)) 
    \rx_enable_man_a[0]_i_1 
       (.I0(rx_enable_man_a),
        .I1(\rx_enable_man_a[0]_i_2_n_0 ),
        .I2(\rx_enable_man_a[0]_i_3_n_0 ),
        .I3(\cnt_rx_done_a_reg_n_0_[0] ),
        .I4(\cnt_rx_en_a_reg_n_0_[0] ),
        .I5(\rx_enable_man_a_reg_n_0_[0] ),
        .O(\rx_enable_man_a[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \rx_enable_man_a[0]_i_2 
       (.I0(s_axi_wdata[3]),
        .I1(\cnt_rx_en_a_reg_n_0_[0] ),
        .I2(s_axi_wstrb[0]),
        .I3(\cnt_latch_arm_req_a[0]_i_2_n_0 ),
        .O(\rx_enable_man_a[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \rx_enable_man_a[0]_i_3 
       (.I0(\cnt_latch_arm_req_a[0]_i_2_n_0 ),
        .I1(s_axi_wdata[2]),
        .I2(\cnt_rx_en_a_reg_n_0_[0] ),
        .I3(s_axi_wstrb[0]),
        .O(\rx_enable_man_a[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA0AEF0FFA0AE000C)) 
    \rx_enable_man_a[1]_i_1 
       (.I0(\rx_enable_a_reg_n_0_[1] ),
        .I1(s_axi_wdata[2]),
        .I2(\rx_enable_man_a[1]_i_2_n_0 ),
        .I3(s_axi_wdata[3]),
        .I4(\rx_enable_man_a[1]_i_3_n_0 ),
        .I5(\rx_enable_man_a_reg_n_0_[1] ),
        .O(\rx_enable_man_a[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \rx_enable_man_a[1]_i_2 
       (.I0(p_1_in65_in),
        .I1(\cnt_rx_en_a[1]_i_2_n_0 ),
        .O(\rx_enable_man_a[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_enable_man_a[1]_i_3 
       (.I0(p_0_in64_in),
        .I1(p_1_in65_in),
        .O(\rx_enable_man_a[1]_i_3_n_0 ));
  FDRE \rx_enable_man_a_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rx_enable_man_a[0]_i_1_n_0 ),
        .Q(\rx_enable_man_a_reg_n_0_[0] ),
        .R(p_0_in__0));
  FDRE \rx_enable_man_a_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rx_enable_man_a[1]_i_1_n_0 ),
        .Q(\rx_enable_man_a_reg_n_0_[1] ),
        .R(p_0_in__0));
  FDRE \rx_enable_man_reg[0] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[330]),
        .Q(rx_enable_man[0]),
        .R(1'b0));
  FDRE \rx_enable_man_reg[1] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[331]),
        .Q(rx_enable_man[1]),
        .R(1'b0));
  (* X_INTERFACE_IGNORE = "true" *) 
  FDRE \rx_enable_reg[0] 
       (.C(ts_clk),
        .CE(1'b1),
        .D(\rx_enable[0]_i_1_n_0 ),
        .Q(\rx_enable_reg[0]_0 ),
        .R(clear));
  (* X_INTERFACE_IGNORE = "true" *) 
  FDRE \rx_enable_reg[1] 
       (.C(ts_clk),
        .CE(1'b1),
        .D(\rx_enable[1]_i_1_n_0 ),
        .Q(\rx_enable_reg[1]_0 ),
        .R(clear));
  FDRE \rx_fifo_overflow_a_reg[0] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[206]),
        .Q(rx_fifo_overflow_a[0]),
        .R(1'b0));
  FDRE \rx_fifo_overflow_a_reg[1] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[207]),
        .Q(rx_fifo_overflow_a[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rx_fifo_overflow_stky_a[0]_i_1 
       (.I0(\tx_dma_data_ready_stky_a[0]_i_2_n_0 ),
        .I1(\rx_fifo_overflow_stky_a_reg_n_0_[0] ),
        .I2(rx_fifo_overflow_a[0]),
        .O(\rx_fifo_overflow_stky_a[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \rx_fifo_overflow_stky_a[1]_i_1 
       (.I0(\tx_dma_data_ready_stky_a[1]_i_2_n_0 ),
        .I1(\rx_fifo_overflow_stky_a_reg_n_0_[1] ),
        .I2(rx_fifo_overflow_a[1]),
        .O(\rx_fifo_overflow_stky_a[1]_i_1_n_0 ));
  FDRE \rx_fifo_overflow_stky_a_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rx_fifo_overflow_stky_a[0]_i_1_n_0 ),
        .Q(\rx_fifo_overflow_stky_a_reg_n_0_[0] ),
        .R(p_0_in__0));
  FDRE \rx_fifo_overflow_stky_a_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rx_fifo_overflow_stky_a[1]_i_1_n_0 ),
        .Q(\rx_fifo_overflow_stky_a_reg_n_0_[1] ),
        .R(p_0_in__0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT1 #(
    .INIT(2'h1)) 
    s_axi_arready_INST_0
       (.I0(s_axi_rvalid_reg_0),
        .O(s_axi_arready));
  LUT1 #(
    .INIT(2'h1)) 
    s_axi_awready_i_1
       (.I0(aresetn),
        .O(p_0_in__0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00D00000)) 
    s_axi_awready_i_2
       (.I0(s_axi_bvalid),
        .I1(s_axi_bready),
        .I2(s_axi_wvalid),
        .I3(s_axi_awready),
        .I4(s_axi_awvalid),
        .O(s_axi_awready0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *) 
  FDRE s_axi_awready_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_axi_awready0),
        .Q(s_axi_awready),
        .R(p_0_in__0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hDC)) 
    s_axi_bvalid_i_1
       (.I0(s_axi_bready),
        .I1(s_axi_awready),
        .I2(s_axi_bvalid),
        .O(s_axi_bvalid_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *) 
  FDRE s_axi_bvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_axi_bvalid_i_1_n_0),
        .Q(s_axi_bvalid),
        .R(p_0_in__0));
  LUT6 #(
    .INIT(64'hF000FDFDF0000D0D)) 
    \s_axi_rdata[0]_i_1 
       (.I0(\s_axi_rdata[0]_i_2_n_0 ),
        .I1(\s_axi_rdata[0]_i_3_n_0 ),
        .I2(s_axi_araddr[4]),
        .I3(\s_axi_rdata_reg[0]_i_4_n_0 ),
        .I4(s_axi_araddr[3]),
        .I5(\s_axi_rdata_reg[0]_i_5_n_0 ),
        .O(\s_axi_rdata[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF47FFFF)) 
    \s_axi_rdata[0]_i_2 
       (.I0(\irq_pend_reg_n_0_[0] ),
        .I1(s_axi_araddr[0]),
        .I2(irq_enabled[0]),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[1]),
        .O(\s_axi_rdata[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h0000B800)) 
    \s_axi_rdata[0]_i_3 
       (.I0(\cnt_a_rd_buf_reg_n_0_[0] ),
        .I1(s_axi_araddr[0]),
        .I2(\cnt_a_reg_n_0_[0] ),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[1]),
        .O(\s_axi_rdata[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s_axi_rdata[0]_i_6 
       (.I0(p_9_in[0]),
        .I1(\cnt_tx1_a_reg_n_0_[0] ),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[0]),
        .I4(\tx_dma_data_ready_ovr_en_a_reg_n_0_[1] ),
        .O(\s_axi_rdata[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[0]_i_7 
       (.I0(\cnt_latched1_a_rd_buf_reg_n_0_[0] ),
        .I1(cnt_latched1_a[0]),
        .I2(s_axi_araddr[1]),
        .I3(p_8_in[0]),
        .I4(s_axi_araddr[0]),
        .I5(\cnt_rx1_a_reg_n_0_[0] ),
        .O(\s_axi_rdata[0]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s_axi_rdata[0]_i_8 
       (.I0(p_14_in[0]),
        .I1(\cnt_tx0_a_reg_n_0_[0] ),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[0]),
        .I4(\tx_dma_data_ready_ovr_en_a_reg_n_0_[0] ),
        .O(\s_axi_rdata[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[0]_i_9 
       (.I0(\cnt_latched0_a_rd_buf_reg_n_0_[0] ),
        .I1(cnt_latched0_a[0]),
        .I2(s_axi_araddr[1]),
        .I3(p_13_in[0]),
        .I4(s_axi_araddr[0]),
        .I5(\cnt_rx0_a_reg_n_0_[0] ),
        .O(\s_axi_rdata[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAEFEA)) 
    \s_axi_rdata[10]_i_1 
       (.I0(\s_axi_rdata[10]_i_2_n_0 ),
        .I1(\cnt_a_reg_n_0_[10] ),
        .I2(\s_axi_rdata[15]_i_3_n_0 ),
        .I3(\cnt_a_rd_buf_reg_n_0_[10] ),
        .I4(\s_axi_rdata[15]_i_4_n_0 ),
        .I5(\s_axi_rdata[10]_i_3_n_0 ),
        .O(\s_axi_rdata[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FF4F)) 
    \s_axi_rdata[10]_i_2 
       (.I0(\s_axi_rdata[17]_i_6_n_0 ),
        .I1(\cnt_rx0_a_reg_n_0_[10] ),
        .I2(s_axi_araddr[2]),
        .I3(\s_axi_rdata[10]_i_4_n_0 ),
        .I4(\s_axi_rdata[10]_i_5_n_0 ),
        .I5(\cnt_latched0_a_rd_buf[31]_i_2_n_0 ),
        .O(\s_axi_rdata[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FF4F)) 
    \s_axi_rdata[10]_i_3 
       (.I0(\s_axi_rdata[17]_i_6_n_0 ),
        .I1(\cnt_rx1_a_reg_n_0_[10] ),
        .I2(s_axi_araddr[2]),
        .I3(\s_axi_rdata[10]_i_6_n_0 ),
        .I4(\s_axi_rdata[10]_i_7_n_0 ),
        .I5(\cnt_latched1_a_rd_buf[31]_i_2_n_0 ),
        .O(\s_axi_rdata[10]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hE2CCE200)) 
    \s_axi_rdata[10]_i_4 
       (.I0(p_13_in[10]),
        .I1(s_axi_araddr[1]),
        .I2(\cnt_latched0_a_rd_buf_reg_n_0_[10] ),
        .I3(s_axi_araddr[0]),
        .I4(cnt_latched0_a[10]),
        .O(\s_axi_rdata[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0015051550155515)) 
    \s_axi_rdata[10]_i_5 
       (.I0(s_axi_araddr[2]),
        .I1(tx_data_ready_a[0]),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[1]),
        .I4(\cnt_tx0_a_reg_n_0_[10] ),
        .I5(p_14_in[10]),
        .O(\s_axi_rdata[10]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hE2CCE200)) 
    \s_axi_rdata[10]_i_6 
       (.I0(p_8_in[10]),
        .I1(s_axi_araddr[1]),
        .I2(\cnt_latched1_a_rd_buf_reg_n_0_[10] ),
        .I3(s_axi_araddr[0]),
        .I4(cnt_latched1_a[10]),
        .O(\s_axi_rdata[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0015051550155515)) 
    \s_axi_rdata[10]_i_7 
       (.I0(s_axi_araddr[2]),
        .I1(tx_data_ready_a[1]),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[1]),
        .I4(\cnt_tx1_a_reg_n_0_[10] ),
        .I5(p_9_in[10]),
        .O(\s_axi_rdata[10]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAFEAE)) 
    \s_axi_rdata[11]_i_1 
       (.I0(\s_axi_rdata[11]_i_2_n_0 ),
        .I1(\cnt_a_rd_buf_reg_n_0_[11] ),
        .I2(\s_axi_rdata[15]_i_3_n_0 ),
        .I3(\cnt_a_reg_n_0_[11] ),
        .I4(\s_axi_rdata[15]_i_4_n_0 ),
        .I5(\s_axi_rdata[11]_i_3_n_0 ),
        .O(\s_axi_rdata[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FF4F)) 
    \s_axi_rdata[11]_i_2 
       (.I0(\s_axi_rdata[17]_i_6_n_0 ),
        .I1(\cnt_rx0_a_reg_n_0_[11] ),
        .I2(s_axi_araddr[2]),
        .I3(\s_axi_rdata[11]_i_4_n_0 ),
        .I4(\s_axi_rdata[11]_i_5_n_0 ),
        .I5(\cnt_latched0_a_rd_buf[31]_i_2_n_0 ),
        .O(\s_axi_rdata[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FF4F)) 
    \s_axi_rdata[11]_i_3 
       (.I0(\s_axi_rdata[17]_i_6_n_0 ),
        .I1(\cnt_rx1_a_reg_n_0_[11] ),
        .I2(s_axi_araddr[2]),
        .I3(\s_axi_rdata[11]_i_6_n_0 ),
        .I4(\s_axi_rdata[11]_i_7_n_0 ),
        .I5(\cnt_latched1_a_rd_buf[31]_i_2_n_0 ),
        .O(\s_axi_rdata[11]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hE2CCE200)) 
    \s_axi_rdata[11]_i_4 
       (.I0(p_13_in[11]),
        .I1(s_axi_araddr[1]),
        .I2(\cnt_latched0_a_rd_buf_reg_n_0_[11] ),
        .I3(s_axi_araddr[0]),
        .I4(cnt_latched0_a[11]),
        .O(\s_axi_rdata[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0015051550155515)) 
    \s_axi_rdata[11]_i_5 
       (.I0(s_axi_araddr[2]),
        .I1(rx_data_ready_a[0]),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[1]),
        .I4(\cnt_tx0_a_reg_n_0_[11] ),
        .I5(p_14_in[11]),
        .O(\s_axi_rdata[11]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hE2CCE200)) 
    \s_axi_rdata[11]_i_6 
       (.I0(p_8_in[11]),
        .I1(s_axi_araddr[1]),
        .I2(\cnt_latched1_a_rd_buf_reg_n_0_[11] ),
        .I3(s_axi_araddr[0]),
        .I4(cnt_latched1_a[11]),
        .O(\s_axi_rdata[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0015051550155515)) 
    \s_axi_rdata[11]_i_7 
       (.I0(s_axi_araddr[2]),
        .I1(rx_data_ready_a[1]),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[1]),
        .I4(\cnt_tx1_a_reg_n_0_[11] ),
        .I5(p_9_in[11]),
        .O(\s_axi_rdata[11]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \s_axi_rdata[12]_i_1 
       (.I0(\s_axi_rdata_reg[12]_i_2_n_0 ),
        .I1(s_axi_araddr[3]),
        .I2(\s_axi_rdata_reg[12]_i_3_n_0 ),
        .I3(s_axi_araddr[4]),
        .I4(\s_axi_rdata[12]_i_4_n_0 ),
        .O(\s_axi_rdata[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0050004000000040)) 
    \s_axi_rdata[12]_i_4 
       (.I0(s_axi_araddr[3]),
        .I1(\cnt_a_reg_n_0_[12] ),
        .I2(s_axi_araddr[2]),
        .I3(s_axi_araddr[1]),
        .I4(s_axi_araddr[0]),
        .I5(\cnt_a_rd_buf_reg_n_0_[12] ),
        .O(\s_axi_rdata[12]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s_axi_rdata[12]_i_5 
       (.I0(p_9_in[12]),
        .I1(\cnt_tx1_a_reg_n_0_[12] ),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[0]),
        .I4(tx_dma_data_ready_ovr_a[1]),
        .O(\s_axi_rdata[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[12]_i_6 
       (.I0(\cnt_latched1_a_rd_buf_reg_n_0_[12] ),
        .I1(cnt_latched1_a[12]),
        .I2(s_axi_araddr[1]),
        .I3(p_8_in[12]),
        .I4(s_axi_araddr[0]),
        .I5(\cnt_rx1_a_reg_n_0_[12] ),
        .O(\s_axi_rdata[12]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s_axi_rdata[12]_i_7 
       (.I0(p_14_in[12]),
        .I1(\cnt_tx0_a_reg_n_0_[12] ),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[0]),
        .I4(tx_dma_data_ready_ovr_a[0]),
        .O(\s_axi_rdata[12]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[12]_i_8 
       (.I0(\cnt_latched0_a_rd_buf_reg_n_0_[12] ),
        .I1(cnt_latched0_a[12]),
        .I2(s_axi_araddr[1]),
        .I3(p_13_in[12]),
        .I4(s_axi_araddr[0]),
        .I5(\cnt_rx0_a_reg_n_0_[12] ),
        .O(\s_axi_rdata[12]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \s_axi_rdata[13]_i_1 
       (.I0(\s_axi_rdata_reg[13]_i_2_n_0 ),
        .I1(s_axi_araddr[3]),
        .I2(\s_axi_rdata_reg[13]_i_3_n_0 ),
        .I3(s_axi_araddr[4]),
        .I4(\s_axi_rdata[13]_i_4_n_0 ),
        .O(\s_axi_rdata[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0050004000000040)) 
    \s_axi_rdata[13]_i_4 
       (.I0(s_axi_araddr[3]),
        .I1(\cnt_a_reg_n_0_[13] ),
        .I2(s_axi_araddr[2]),
        .I3(s_axi_araddr[1]),
        .I4(s_axi_araddr[0]),
        .I5(\cnt_a_rd_buf_reg_n_0_[13] ),
        .O(\s_axi_rdata[13]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s_axi_rdata[13]_i_5 
       (.I0(p_9_in[13]),
        .I1(\cnt_tx1_a_reg_n_0_[13] ),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[0]),
        .I4(rx_dma_xfer_req_ovr_a[1]),
        .O(\s_axi_rdata[13]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[13]_i_6 
       (.I0(\cnt_latched1_a_rd_buf_reg_n_0_[13] ),
        .I1(cnt_latched1_a[13]),
        .I2(s_axi_araddr[1]),
        .I3(p_8_in[13]),
        .I4(s_axi_araddr[0]),
        .I5(\cnt_rx1_a_reg_n_0_[13] ),
        .O(\s_axi_rdata[13]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s_axi_rdata[13]_i_7 
       (.I0(p_14_in[13]),
        .I1(\cnt_tx0_a_reg_n_0_[13] ),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[0]),
        .I4(rx_dma_xfer_req_ovr_a[0]),
        .O(\s_axi_rdata[13]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[13]_i_8 
       (.I0(\cnt_latched0_a_rd_buf_reg_n_0_[13] ),
        .I1(cnt_latched0_a[13]),
        .I2(s_axi_araddr[1]),
        .I3(p_13_in[13]),
        .I4(s_axi_araddr[0]),
        .I5(\cnt_rx0_a_reg_n_0_[13] ),
        .O(\s_axi_rdata[13]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAFEAE)) 
    \s_axi_rdata[14]_i_1 
       (.I0(\s_axi_rdata[14]_i_2_n_0 ),
        .I1(\cnt_a_rd_buf_reg_n_0_[14] ),
        .I2(\s_axi_rdata[15]_i_3_n_0 ),
        .I3(\cnt_a_reg_n_0_[14] ),
        .I4(\s_axi_rdata[15]_i_4_n_0 ),
        .I5(\s_axi_rdata[14]_i_3_n_0 ),
        .O(\s_axi_rdata[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FF4F)) 
    \s_axi_rdata[14]_i_2 
       (.I0(\s_axi_rdata[17]_i_6_n_0 ),
        .I1(\cnt_rx0_a_reg_n_0_[14] ),
        .I2(s_axi_araddr[2]),
        .I3(\s_axi_rdata[14]_i_4_n_0 ),
        .I4(\s_axi_rdata[14]_i_5_n_0 ),
        .I5(\cnt_latched0_a_rd_buf[31]_i_2_n_0 ),
        .O(\s_axi_rdata[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FF4F)) 
    \s_axi_rdata[14]_i_3 
       (.I0(\s_axi_rdata[17]_i_6_n_0 ),
        .I1(\cnt_rx1_a_reg_n_0_[14] ),
        .I2(s_axi_araddr[2]),
        .I3(\s_axi_rdata[14]_i_6_n_0 ),
        .I4(\s_axi_rdata[14]_i_7_n_0 ),
        .I5(\cnt_latched1_a_rd_buf[31]_i_2_n_0 ),
        .O(\s_axi_rdata[14]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hE2CCE200)) 
    \s_axi_rdata[14]_i_4 
       (.I0(p_13_in[14]),
        .I1(s_axi_araddr[1]),
        .I2(\cnt_latched0_a_rd_buf_reg_n_0_[14] ),
        .I3(s_axi_araddr[0]),
        .I4(cnt_latched0_a[14]),
        .O(\s_axi_rdata[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0015051550155515)) 
    \s_axi_rdata[14]_i_5 
       (.I0(s_axi_araddr[2]),
        .I1(tx_data_ready_ovr_a[0]),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[1]),
        .I4(\cnt_tx0_a_reg_n_0_[14] ),
        .I5(p_14_in[14]),
        .O(\s_axi_rdata[14]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hE2CCE200)) 
    \s_axi_rdata[14]_i_6 
       (.I0(p_8_in[14]),
        .I1(s_axi_araddr[1]),
        .I2(\cnt_latched1_a_rd_buf_reg_n_0_[14] ),
        .I3(s_axi_araddr[0]),
        .I4(cnt_latched1_a[14]),
        .O(\s_axi_rdata[14]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0015051550155515)) 
    \s_axi_rdata[14]_i_7 
       (.I0(s_axi_araddr[2]),
        .I1(tx_data_ready_ovr_a[1]),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[1]),
        .I4(\cnt_tx1_a_reg_n_0_[14] ),
        .I5(p_9_in[14]),
        .O(\s_axi_rdata[14]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAEFEA)) 
    \s_axi_rdata[15]_i_1 
       (.I0(\s_axi_rdata[15]_i_2_n_0 ),
        .I1(\cnt_a_reg_n_0_[15] ),
        .I2(\s_axi_rdata[15]_i_3_n_0 ),
        .I3(\cnt_a_rd_buf_reg_n_0_[15] ),
        .I4(\s_axi_rdata[15]_i_4_n_0 ),
        .I5(\s_axi_rdata[15]_i_5_n_0 ),
        .O(\s_axi_rdata[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FF4F)) 
    \s_axi_rdata[15]_i_2 
       (.I0(\s_axi_rdata[17]_i_6_n_0 ),
        .I1(\cnt_rx0_a_reg_n_0_[15] ),
        .I2(s_axi_araddr[2]),
        .I3(\s_axi_rdata[15]_i_6_n_0 ),
        .I4(\s_axi_rdata[15]_i_7_n_0 ),
        .I5(\cnt_latched0_a_rd_buf[31]_i_2_n_0 ),
        .O(\s_axi_rdata[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \s_axi_rdata[15]_i_3 
       (.I0(s_axi_araddr[2]),
        .I1(s_axi_araddr[1]),
        .I2(s_axi_araddr[0]),
        .O(\s_axi_rdata[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \s_axi_rdata[15]_i_4 
       (.I0(s_axi_araddr[4]),
        .I1(s_axi_araddr[1]),
        .I2(s_axi_araddr[2]),
        .I3(s_axi_araddr[3]),
        .O(\s_axi_rdata[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FF4F)) 
    \s_axi_rdata[15]_i_5 
       (.I0(\s_axi_rdata[17]_i_6_n_0 ),
        .I1(\cnt_rx1_a_reg_n_0_[15] ),
        .I2(s_axi_araddr[2]),
        .I3(\s_axi_rdata[15]_i_8_n_0 ),
        .I4(\s_axi_rdata[15]_i_9_n_0 ),
        .I5(\cnt_latched1_a_rd_buf[31]_i_2_n_0 ),
        .O(\s_axi_rdata[15]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hE2CCE200)) 
    \s_axi_rdata[15]_i_6 
       (.I0(p_13_in[15]),
        .I1(s_axi_araddr[1]),
        .I2(\cnt_latched0_a_rd_buf_reg_n_0_[15] ),
        .I3(s_axi_araddr[0]),
        .I4(cnt_latched0_a[15]),
        .O(\s_axi_rdata[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0015051550155515)) 
    \s_axi_rdata[15]_i_7 
       (.I0(s_axi_araddr[2]),
        .I1(rx_data_ready_ovr_a[0]),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[1]),
        .I4(\cnt_tx0_a_reg_n_0_[15] ),
        .I5(p_14_in[15]),
        .O(\s_axi_rdata[15]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hE2CCE200)) 
    \s_axi_rdata[15]_i_8 
       (.I0(p_8_in[15]),
        .I1(s_axi_araddr[1]),
        .I2(\cnt_latched1_a_rd_buf_reg_n_0_[15] ),
        .I3(s_axi_araddr[0]),
        .I4(cnt_latched1_a[15]),
        .O(\s_axi_rdata[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0015051550155515)) 
    \s_axi_rdata[15]_i_9 
       (.I0(s_axi_araddr[2]),
        .I1(rx_data_ready_ovr_a[1]),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[1]),
        .I4(\cnt_tx1_a_reg_n_0_[15] ),
        .I5(p_9_in[15]),
        .O(\s_axi_rdata[15]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCFDFDFCCCCDCD)) 
    \s_axi_rdata[16]_i_1 
       (.I0(\s_axi_rdata[16]_i_2_n_0 ),
        .I1(\s_axi_rdata[16]_i_3_n_0 ),
        .I2(s_axi_araddr[4]),
        .I3(\s_axi_rdata_reg[16]_i_4_n_0 ),
        .I4(s_axi_araddr[3]),
        .I5(\s_axi_rdata_reg[16]_i_5_n_0 ),
        .O(\s_axi_rdata[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCDCDCCFCFDFDCCFC)) 
    \s_axi_rdata[16]_i_2 
       (.I0(p_20_in[16]),
        .I1(s_axi_araddr[1]),
        .I2(s_axi_araddr[2]),
        .I3(\cnt_a_reg_n_0_[16] ),
        .I4(s_axi_araddr[0]),
        .I5(\cnt_a_rd_buf_reg_n_0_[16] ),
        .O(\s_axi_rdata[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004040400)) 
    \s_axi_rdata[16]_i_3 
       (.I0(s_axi_araddr[2]),
        .I1(s_axi_araddr[3]),
        .I2(\s_axi_rdata[17]_i_6_n_0 ),
        .I3(tx_enable_man_a),
        .I4(p_0_in),
        .I5(s_axi_araddr[4]),
        .O(\s_axi_rdata[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[16]_i_6 
       (.I0(p_9_in[16]),
        .I1(\cnt_tx1_a_reg_n_0_[16] ),
        .I2(s_axi_araddr[1]),
        .I3(\tx_dma_data_ready_stky_a_reg_n_0_[1] ),
        .I4(s_axi_araddr[0]),
        .I5(p_0_in),
        .O(\s_axi_rdata[16]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[16]_i_7 
       (.I0(\cnt_latched1_a_rd_buf_reg_n_0_[16] ),
        .I1(cnt_latched1_a[16]),
        .I2(s_axi_araddr[1]),
        .I3(p_8_in[16]),
        .I4(s_axi_araddr[0]),
        .I5(\cnt_rx1_a_reg_n_0_[16] ),
        .O(\s_axi_rdata[16]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[16]_i_8 
       (.I0(p_14_in[16]),
        .I1(\cnt_tx0_a_reg_n_0_[16] ),
        .I2(s_axi_araddr[1]),
        .I3(\tx_dma_data_ready_stky_a_reg_n_0_[0] ),
        .I4(s_axi_araddr[0]),
        .I5(tx_enable_man_a),
        .O(\s_axi_rdata[16]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[16]_i_9 
       (.I0(\cnt_latched0_a_rd_buf_reg_n_0_[16] ),
        .I1(cnt_latched0_a[16]),
        .I2(s_axi_araddr[1]),
        .I3(p_13_in[16]),
        .I4(s_axi_araddr[0]),
        .I5(\cnt_rx0_a_reg_n_0_[16] ),
        .O(\s_axi_rdata[16]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCFDFDFCCCCDCD)) 
    \s_axi_rdata[17]_i_1 
       (.I0(\s_axi_rdata[17]_i_2_n_0 ),
        .I1(\s_axi_rdata[17]_i_3_n_0 ),
        .I2(s_axi_araddr[4]),
        .I3(\s_axi_rdata_reg[17]_i_4_n_0 ),
        .I4(s_axi_araddr[3]),
        .I5(\s_axi_rdata_reg[17]_i_5_n_0 ),
        .O(\s_axi_rdata[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[17]_i_10 
       (.I0(\cnt_latched0_a_rd_buf_reg_n_0_[17] ),
        .I1(cnt_latched0_a[17]),
        .I2(s_axi_araddr[1]),
        .I3(p_13_in[17]),
        .I4(s_axi_araddr[0]),
        .I5(\cnt_rx0_a_reg_n_0_[17] ),
        .O(\s_axi_rdata[17]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hCDCDCFFFFDFDCFFF)) 
    \s_axi_rdata[17]_i_2 
       (.I0(p_20_in[17]),
        .I1(s_axi_araddr[1]),
        .I2(s_axi_araddr[2]),
        .I3(\cnt_a_reg_n_0_[17] ),
        .I4(s_axi_araddr[0]),
        .I5(\cnt_a_rd_buf_reg_n_0_[17] ),
        .O(\s_axi_rdata[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004040400)) 
    \s_axi_rdata[17]_i_3 
       (.I0(s_axi_araddr[2]),
        .I1(s_axi_araddr[3]),
        .I2(\s_axi_rdata[17]_i_6_n_0 ),
        .I3(rx_enable_man_a),
        .I4(\rx_enable_a_reg_n_0_[1] ),
        .I5(s_axi_araddr[4]),
        .O(\s_axi_rdata[17]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[17]_i_6 
       (.I0(s_axi_araddr[0]),
        .I1(s_axi_araddr[1]),
        .O(\s_axi_rdata[17]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[17]_i_7 
       (.I0(p_9_in[17]),
        .I1(\cnt_tx1_a_reg_n_0_[17] ),
        .I2(s_axi_araddr[1]),
        .I3(\rx_dma_xfer_req_stky_a_reg_n_0_[1] ),
        .I4(s_axi_araddr[0]),
        .I5(\rx_enable_a_reg_n_0_[1] ),
        .O(\s_axi_rdata[17]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[17]_i_8 
       (.I0(\cnt_latched1_a_rd_buf_reg_n_0_[17] ),
        .I1(cnt_latched1_a[17]),
        .I2(s_axi_araddr[1]),
        .I3(p_8_in[17]),
        .I4(s_axi_araddr[0]),
        .I5(\cnt_rx1_a_reg_n_0_[17] ),
        .O(\s_axi_rdata[17]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[17]_i_9 
       (.I0(p_14_in[17]),
        .I1(\cnt_tx0_a_reg_n_0_[17] ),
        .I2(s_axi_araddr[1]),
        .I3(\rx_dma_xfer_req_stky_a_reg_n_0_[0] ),
        .I4(s_axi_araddr[0]),
        .I5(rx_enable_man_a),
        .O(\s_axi_rdata[17]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBB88888)) 
    \s_axi_rdata[18]_i_1 
       (.I0(\s_axi_rdata_reg[18]_i_2_n_0 ),
        .I1(s_axi_araddr[4]),
        .I2(p_1_in69_in),
        .I3(\cnt_tx_en_a_reg_n_0_[0] ),
        .I4(\s_axi_rdata[21]_i_3_n_0 ),
        .I5(\s_axi_rdata[18]_i_3_n_0 ),
        .O(\s_axi_rdata[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000C080008)) 
    \s_axi_rdata[18]_i_3 
       (.I0(\cnt_a_reg_n_0_[18] ),
        .I1(s_axi_araddr[2]),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[0]),
        .I4(\cnt_a_rd_buf_reg_n_0_[18] ),
        .I5(s_axi_araddr[3]),
        .O(\s_axi_rdata[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[18]_i_6 
       (.I0(p_14_in[18]),
        .I1(\cnt_tx0_a_reg_n_0_[18] ),
        .I2(s_axi_araddr[1]),
        .I3(\tx_data_ready_stky_a_reg_n_0_[0] ),
        .I4(s_axi_araddr[0]),
        .I5(\cnt_tx_en_a_reg_n_0_[0] ),
        .O(\s_axi_rdata[18]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[18]_i_7 
       (.I0(\cnt_latched0_a_rd_buf_reg_n_0_[18] ),
        .I1(cnt_latched0_a[18]),
        .I2(s_axi_araddr[1]),
        .I3(p_13_in[18]),
        .I4(s_axi_araddr[0]),
        .I5(\cnt_rx0_a_reg_n_0_[18] ),
        .O(\s_axi_rdata[18]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[18]_i_8 
       (.I0(p_9_in[18]),
        .I1(\cnt_tx1_a_reg_n_0_[18] ),
        .I2(s_axi_araddr[1]),
        .I3(\tx_data_ready_stky_a_reg_n_0_[1] ),
        .I4(s_axi_araddr[0]),
        .I5(p_1_in69_in),
        .O(\s_axi_rdata[18]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[18]_i_9 
       (.I0(\cnt_latched1_a_rd_buf_reg_n_0_[18] ),
        .I1(cnt_latched1_a[18]),
        .I2(s_axi_araddr[1]),
        .I3(p_8_in[18]),
        .I4(s_axi_araddr[0]),
        .I5(\cnt_rx1_a_reg_n_0_[18] ),
        .O(\s_axi_rdata[18]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBB88888)) 
    \s_axi_rdata[19]_i_1 
       (.I0(\s_axi_rdata_reg[19]_i_2_n_0 ),
        .I1(s_axi_araddr[4]),
        .I2(p_1_in65_in),
        .I3(\cnt_rx_en_a_reg_n_0_[0] ),
        .I4(\s_axi_rdata[21]_i_3_n_0 ),
        .I5(\s_axi_rdata[19]_i_3_n_0 ),
        .O(\s_axi_rdata[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000C080008)) 
    \s_axi_rdata[19]_i_3 
       (.I0(\cnt_a_reg_n_0_[19] ),
        .I1(s_axi_araddr[2]),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[0]),
        .I4(\cnt_a_rd_buf_reg_n_0_[19] ),
        .I5(s_axi_araddr[3]),
        .O(\s_axi_rdata[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[19]_i_6 
       (.I0(p_14_in[19]),
        .I1(\cnt_tx0_a_reg_n_0_[19] ),
        .I2(s_axi_araddr[1]),
        .I3(\rx_data_ready_stky_a_reg_n_0_[0] ),
        .I4(s_axi_araddr[0]),
        .I5(\cnt_rx_en_a_reg_n_0_[0] ),
        .O(\s_axi_rdata[19]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[19]_i_7 
       (.I0(\cnt_latched0_a_rd_buf_reg_n_0_[19] ),
        .I1(cnt_latched0_a[19]),
        .I2(s_axi_araddr[1]),
        .I3(p_13_in[19]),
        .I4(s_axi_araddr[0]),
        .I5(\cnt_rx0_a_reg_n_0_[19] ),
        .O(\s_axi_rdata[19]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[19]_i_8 
       (.I0(p_9_in[19]),
        .I1(\cnt_tx1_a_reg_n_0_[19] ),
        .I2(s_axi_araddr[1]),
        .I3(\rx_data_ready_stky_a_reg_n_0_[1] ),
        .I4(s_axi_araddr[0]),
        .I5(p_1_in65_in),
        .O(\s_axi_rdata[19]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[19]_i_9 
       (.I0(\cnt_latched1_a_rd_buf_reg_n_0_[19] ),
        .I1(cnt_latched1_a[19]),
        .I2(s_axi_araddr[1]),
        .I3(p_8_in[19]),
        .I4(s_axi_araddr[0]),
        .I5(\cnt_rx1_a_reg_n_0_[19] ),
        .O(\s_axi_rdata[19]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF000FDFDF0000D0D)) 
    \s_axi_rdata[1]_i_1 
       (.I0(\s_axi_rdata[1]_i_2_n_0 ),
        .I1(\s_axi_rdata[1]_i_3_n_0 ),
        .I2(s_axi_araddr[4]),
        .I3(\s_axi_rdata_reg[1]_i_4_n_0 ),
        .I4(s_axi_araddr[3]),
        .I5(\s_axi_rdata_reg[1]_i_5_n_0 ),
        .O(\s_axi_rdata[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF47FFFF)) 
    \s_axi_rdata[1]_i_2 
       (.I0(\irq_pend_reg_n_0_[1] ),
        .I1(s_axi_araddr[0]),
        .I2(irq_enabled[1]),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[1]),
        .O(\s_axi_rdata[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0000B800)) 
    \s_axi_rdata[1]_i_3 
       (.I0(\cnt_a_rd_buf_reg_n_0_[1] ),
        .I1(s_axi_araddr[0]),
        .I2(\cnt_a_reg_n_0_[1] ),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[1]),
        .O(\s_axi_rdata[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s_axi_rdata[1]_i_6 
       (.I0(p_9_in[1]),
        .I1(\cnt_tx1_a_reg_n_0_[1] ),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[0]),
        .I4(tx_dma_data_ready_ovr_val_a[1]),
        .O(\s_axi_rdata[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[1]_i_7 
       (.I0(\cnt_latched1_a_rd_buf_reg_n_0_[1] ),
        .I1(cnt_latched1_a[1]),
        .I2(s_axi_araddr[1]),
        .I3(p_8_in[1]),
        .I4(s_axi_araddr[0]),
        .I5(\cnt_rx1_a_reg_n_0_[1] ),
        .O(\s_axi_rdata[1]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s_axi_rdata[1]_i_8 
       (.I0(p_14_in[1]),
        .I1(\cnt_tx0_a_reg_n_0_[1] ),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[0]),
        .I4(tx_dma_data_ready_ovr_val_a[0]),
        .O(\s_axi_rdata[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[1]_i_9 
       (.I0(\cnt_latched0_a_rd_buf_reg_n_0_[1] ),
        .I1(cnt_latched0_a[1]),
        .I2(s_axi_araddr[1]),
        .I3(p_13_in[1]),
        .I4(s_axi_araddr[0]),
        .I5(\cnt_rx0_a_reg_n_0_[1] ),
        .O(\s_axi_rdata[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBB88888)) 
    \s_axi_rdata[20]_i_1 
       (.I0(\s_axi_rdata_reg[20]_i_2_n_0 ),
        .I1(s_axi_araddr[4]),
        .I2(\tx_enable_man_a_reg_n_0_[1] ),
        .I3(\tx_enable_man_a_reg_n_0_[0] ),
        .I4(\s_axi_rdata[21]_i_3_n_0 ),
        .I5(\s_axi_rdata[20]_i_3_n_0 ),
        .O(\s_axi_rdata[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000C080008)) 
    \s_axi_rdata[20]_i_3 
       (.I0(\cnt_a_reg_n_0_[20] ),
        .I1(s_axi_araddr[2]),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[0]),
        .I4(\cnt_a_rd_buf_reg_n_0_[20] ),
        .I5(s_axi_araddr[3]),
        .O(\s_axi_rdata[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[20]_i_6 
       (.I0(p_14_in[20]),
        .I1(\cnt_tx0_a_reg_n_0_[20] ),
        .I2(s_axi_araddr[1]),
        .I3(\tx_fifo_underflow_stky_a_reg_n_0_[0] ),
        .I4(s_axi_araddr[0]),
        .I5(\tx_enable_man_a_reg_n_0_[0] ),
        .O(\s_axi_rdata[20]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[20]_i_7 
       (.I0(\cnt_latched0_a_rd_buf_reg_n_0_[20] ),
        .I1(cnt_latched0_a[20]),
        .I2(s_axi_araddr[1]),
        .I3(p_13_in[20]),
        .I4(s_axi_araddr[0]),
        .I5(\cnt_rx0_a_reg_n_0_[20] ),
        .O(\s_axi_rdata[20]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[20]_i_8 
       (.I0(p_9_in[20]),
        .I1(\cnt_tx1_a_reg_n_0_[20] ),
        .I2(s_axi_araddr[1]),
        .I3(\tx_fifo_underflow_stky_a_reg_n_0_[1] ),
        .I4(s_axi_araddr[0]),
        .I5(\tx_enable_man_a_reg_n_0_[1] ),
        .O(\s_axi_rdata[20]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[20]_i_9 
       (.I0(\cnt_latched1_a_rd_buf_reg_n_0_[20] ),
        .I1(cnt_latched1_a[20]),
        .I2(s_axi_araddr[1]),
        .I3(p_8_in[20]),
        .I4(s_axi_araddr[0]),
        .I5(\cnt_rx1_a_reg_n_0_[20] ),
        .O(\s_axi_rdata[20]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBB88888)) 
    \s_axi_rdata[21]_i_1 
       (.I0(\s_axi_rdata_reg[21]_i_2_n_0 ),
        .I1(s_axi_araddr[4]),
        .I2(\rx_enable_man_a_reg_n_0_[1] ),
        .I3(\rx_enable_man_a_reg_n_0_[0] ),
        .I4(\s_axi_rdata[21]_i_3_n_0 ),
        .I5(\s_axi_rdata[21]_i_4_n_0 ),
        .O(\s_axi_rdata[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[21]_i_10 
       (.I0(\cnt_latched1_a_rd_buf_reg_n_0_[21] ),
        .I1(cnt_latched1_a[21]),
        .I2(s_axi_araddr[1]),
        .I3(p_8_in[21]),
        .I4(s_axi_araddr[0]),
        .I5(\cnt_rx1_a_reg_n_0_[21] ),
        .O(\s_axi_rdata[21]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \s_axi_rdata[21]_i_3 
       (.I0(s_axi_araddr[1]),
        .I1(s_axi_araddr[0]),
        .I2(s_axi_araddr[3]),
        .I3(s_axi_araddr[2]),
        .O(\s_axi_rdata[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000000B000800)) 
    \s_axi_rdata[21]_i_4 
       (.I0(\cnt_a_rd_buf_reg_n_0_[21] ),
        .I1(s_axi_araddr[0]),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[2]),
        .I4(\cnt_a_reg_n_0_[21] ),
        .I5(s_axi_araddr[3]),
        .O(\s_axi_rdata[21]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[21]_i_7 
       (.I0(p_14_in[21]),
        .I1(\cnt_tx0_a_reg_n_0_[21] ),
        .I2(s_axi_araddr[1]),
        .I3(\rx_fifo_overflow_stky_a_reg_n_0_[0] ),
        .I4(s_axi_araddr[0]),
        .I5(\rx_enable_man_a_reg_n_0_[0] ),
        .O(\s_axi_rdata[21]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[21]_i_8 
       (.I0(\cnt_latched0_a_rd_buf_reg_n_0_[21] ),
        .I1(cnt_latched0_a[21]),
        .I2(s_axi_araddr[1]),
        .I3(p_13_in[21]),
        .I4(s_axi_araddr[0]),
        .I5(\cnt_rx0_a_reg_n_0_[21] ),
        .O(\s_axi_rdata[21]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[21]_i_9 
       (.I0(p_9_in[21]),
        .I1(\cnt_tx1_a_reg_n_0_[21] ),
        .I2(s_axi_araddr[1]),
        .I3(\rx_fifo_overflow_stky_a_reg_n_0_[1] ),
        .I4(s_axi_araddr[0]),
        .I5(\rx_enable_man_a_reg_n_0_[1] ),
        .O(\s_axi_rdata[21]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFA0C0)) 
    \s_axi_rdata[22]_i_1 
       (.I0(\s_axi_rdata[22]_i_2_n_0 ),
        .I1(\s_axi_rdata[22]_i_3_n_0 ),
        .I2(s_axi_araddr[4]),
        .I3(s_axi_araddr[3]),
        .I4(\s_axi_rdata[22]_i_4_n_0 ),
        .O(\s_axi_rdata[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBB888B888888888)) 
    \s_axi_rdata[22]_i_2 
       (.I0(\s_axi_rdata[22]_i_5_n_0 ),
        .I1(s_axi_araddr[2]),
        .I2(\cnt_tx1_a_reg_n_0_[22] ),
        .I3(s_axi_araddr[0]),
        .I4(p_9_in[22]),
        .I5(s_axi_araddr[1]),
        .O(\s_axi_rdata[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBB888B888888888)) 
    \s_axi_rdata[22]_i_3 
       (.I0(\s_axi_rdata[22]_i_6_n_0 ),
        .I1(s_axi_araddr[2]),
        .I2(\cnt_tx0_a_reg_n_0_[22] ),
        .I3(s_axi_araddr[0]),
        .I4(p_14_in[22]),
        .I5(s_axi_araddr[1]),
        .O(\s_axi_rdata[22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000B8)) 
    \s_axi_rdata[22]_i_4 
       (.I0(\cnt_a_reg_n_0_[22] ),
        .I1(\s_axi_rdata[15]_i_3_n_0 ),
        .I2(\cnt_a_rd_buf_reg_n_0_[22] ),
        .I3(s_axi_araddr[4]),
        .I4(\s_axi_rdata[30]_i_6_n_0 ),
        .I5(s_axi_araddr[3]),
        .O(\s_axi_rdata[22]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[22]_i_5 
       (.I0(\cnt_latched1_a_rd_buf_reg_n_0_[22] ),
        .I1(cnt_latched1_a[22]),
        .I2(s_axi_araddr[1]),
        .I3(p_8_in[22]),
        .I4(s_axi_araddr[0]),
        .I5(\cnt_rx1_a_reg_n_0_[22] ),
        .O(\s_axi_rdata[22]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[22]_i_6 
       (.I0(\cnt_latched0_a_rd_buf_reg_n_0_[22] ),
        .I1(cnt_latched0_a[22]),
        .I2(s_axi_araddr[1]),
        .I3(p_13_in[22]),
        .I4(s_axi_araddr[0]),
        .I5(\cnt_rx0_a_reg_n_0_[22] ),
        .O(\s_axi_rdata[22]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFA0C0)) 
    \s_axi_rdata[23]_i_1 
       (.I0(\s_axi_rdata[23]_i_2_n_0 ),
        .I1(\s_axi_rdata[23]_i_3_n_0 ),
        .I2(s_axi_araddr[4]),
        .I3(s_axi_araddr[3]),
        .I4(\s_axi_rdata[23]_i_4_n_0 ),
        .O(\s_axi_rdata[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBB888B888888888)) 
    \s_axi_rdata[23]_i_2 
       (.I0(\s_axi_rdata[23]_i_5_n_0 ),
        .I1(s_axi_araddr[2]),
        .I2(\cnt_tx1_a_reg_n_0_[23] ),
        .I3(s_axi_araddr[0]),
        .I4(p_9_in[23]),
        .I5(s_axi_araddr[1]),
        .O(\s_axi_rdata[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBB888B888888888)) 
    \s_axi_rdata[23]_i_3 
       (.I0(\s_axi_rdata[23]_i_6_n_0 ),
        .I1(s_axi_araddr[2]),
        .I2(\cnt_tx0_a_reg_n_0_[23] ),
        .I3(s_axi_araddr[0]),
        .I4(p_14_in[23]),
        .I5(s_axi_araddr[1]),
        .O(\s_axi_rdata[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \s_axi_rdata[23]_i_4 
       (.I0(\cnt_a_rd_buf_reg_n_0_[23] ),
        .I1(\s_axi_rdata[15]_i_3_n_0 ),
        .I2(\cnt_a_reg_n_0_[23] ),
        .I3(s_axi_araddr[4]),
        .I4(\s_axi_rdata[30]_i_6_n_0 ),
        .I5(s_axi_araddr[3]),
        .O(\s_axi_rdata[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[23]_i_5 
       (.I0(\cnt_latched1_a_rd_buf_reg_n_0_[23] ),
        .I1(cnt_latched1_a[23]),
        .I2(s_axi_araddr[1]),
        .I3(p_8_in[23]),
        .I4(s_axi_araddr[0]),
        .I5(\cnt_rx1_a_reg_n_0_[23] ),
        .O(\s_axi_rdata[23]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[23]_i_6 
       (.I0(\cnt_latched0_a_rd_buf_reg_n_0_[23] ),
        .I1(cnt_latched0_a[23]),
        .I2(s_axi_araddr[1]),
        .I3(p_13_in[23]),
        .I4(s_axi_araddr[0]),
        .I5(\cnt_rx0_a_reg_n_0_[23] ),
        .O(\s_axi_rdata[23]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hC0DDC011)) 
    \s_axi_rdata[24]_i_1 
       (.I0(\s_axi_rdata[24]_i_2_n_0 ),
        .I1(s_axi_araddr[4]),
        .I2(\s_axi_rdata_reg[24]_i_3_n_0 ),
        .I3(s_axi_araddr[3]),
        .I4(\s_axi_rdata_reg[24]_i_4_n_0 ),
        .O(\s_axi_rdata[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCDCDCFFFFDFDCFFF)) 
    \s_axi_rdata[24]_i_2 
       (.I0(p_20_in[24]),
        .I1(s_axi_araddr[1]),
        .I2(s_axi_araddr[2]),
        .I3(\cnt_a_reg_n_0_[24] ),
        .I4(s_axi_araddr[0]),
        .I5(\cnt_a_rd_buf_reg_n_0_[24] ),
        .O(\s_axi_rdata[24]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s_axi_rdata[24]_i_5 
       (.I0(p_9_in[24]),
        .I1(\cnt_tx1_a_reg_n_0_[24] ),
        .I2(s_axi_araddr[1]),
        .I3(\cnt_latch_arm_req_a_reg_n_0_[1] ),
        .I4(s_axi_araddr[0]),
        .O(\s_axi_rdata[24]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[24]_i_6 
       (.I0(\cnt_latched1_a_rd_buf_reg_n_0_[24] ),
        .I1(cnt_latched1_a[24]),
        .I2(s_axi_araddr[1]),
        .I3(p_8_in[24]),
        .I4(s_axi_araddr[0]),
        .I5(\cnt_rx1_a_reg_n_0_[24] ),
        .O(\s_axi_rdata[24]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s_axi_rdata[24]_i_7 
       (.I0(p_14_in[24]),
        .I1(\cnt_tx0_a_reg_n_0_[24] ),
        .I2(s_axi_araddr[1]),
        .I3(\cnt_latch_arm_req_a_reg_n_0_[0] ),
        .I4(s_axi_araddr[0]),
        .O(\s_axi_rdata[24]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[24]_i_8 
       (.I0(\cnt_latched0_a_rd_buf_reg_n_0_[24] ),
        .I1(cnt_latched0_a[24]),
        .I2(s_axi_araddr[1]),
        .I3(p_13_in[24]),
        .I4(s_axi_araddr[0]),
        .I5(\cnt_rx0_a_reg_n_0_[24] ),
        .O(\s_axi_rdata[24]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hC0DDC011)) 
    \s_axi_rdata[25]_i_1 
       (.I0(\s_axi_rdata[25]_i_2_n_0 ),
        .I1(s_axi_araddr[4]),
        .I2(\s_axi_rdata_reg[25]_i_3_n_0 ),
        .I3(s_axi_araddr[3]),
        .I4(\s_axi_rdata_reg[25]_i_4_n_0 ),
        .O(\s_axi_rdata[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF05FF3FFFF5FF3F)) 
    \s_axi_rdata[25]_i_2 
       (.I0(p_20_in[25]),
        .I1(\cnt_a_reg_n_0_[25] ),
        .I2(s_axi_araddr[2]),
        .I3(s_axi_araddr[1]),
        .I4(s_axi_araddr[0]),
        .I5(\cnt_a_rd_buf_reg_n_0_[25] ),
        .O(\s_axi_rdata[25]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s_axi_rdata[25]_i_5 
       (.I0(p_9_in[25]),
        .I1(\cnt_tx1_a_reg_n_0_[25] ),
        .I2(s_axi_araddr[1]),
        .I3(cnt_latch_armed_a[1]),
        .I4(s_axi_araddr[0]),
        .O(\s_axi_rdata[25]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[25]_i_6 
       (.I0(\cnt_latched1_a_rd_buf_reg_n_0_[25] ),
        .I1(cnt_latched1_a[25]),
        .I2(s_axi_araddr[1]),
        .I3(p_8_in[25]),
        .I4(s_axi_araddr[0]),
        .I5(\cnt_rx1_a_reg_n_0_[25] ),
        .O(\s_axi_rdata[25]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s_axi_rdata[25]_i_7 
       (.I0(p_14_in[25]),
        .I1(\cnt_tx0_a_reg_n_0_[25] ),
        .I2(s_axi_araddr[1]),
        .I3(cnt_latch_armed_a[0]),
        .I4(s_axi_araddr[0]),
        .O(\s_axi_rdata[25]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[25]_i_8 
       (.I0(\cnt_latched0_a_rd_buf_reg_n_0_[25] ),
        .I1(cnt_latched0_a[25]),
        .I2(s_axi_araddr[1]),
        .I3(p_13_in[25]),
        .I4(s_axi_araddr[0]),
        .I5(\cnt_rx0_a_reg_n_0_[25] ),
        .O(\s_axi_rdata[25]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hC0DDC011)) 
    \s_axi_rdata[26]_i_1 
       (.I0(\s_axi_rdata[26]_i_2_n_0 ),
        .I1(s_axi_araddr[4]),
        .I2(\s_axi_rdata_reg[26]_i_3_n_0 ),
        .I3(s_axi_araddr[3]),
        .I4(\s_axi_rdata_reg[26]_i_4_n_0 ),
        .O(\s_axi_rdata[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF05FF3FFFF5FF3F)) 
    \s_axi_rdata[26]_i_2 
       (.I0(p_20_in[26]),
        .I1(\cnt_a_reg_n_0_[26] ),
        .I2(s_axi_araddr[2]),
        .I3(s_axi_araddr[1]),
        .I4(s_axi_araddr[0]),
        .I5(\cnt_a_rd_buf_reg_n_0_[26] ),
        .O(\s_axi_rdata[26]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s_axi_rdata[26]_i_5 
       (.I0(p_9_in[26]),
        .I1(\cnt_tx1_a_reg_n_0_[26] ),
        .I2(s_axi_araddr[1]),
        .I3(p_1_in52_in),
        .I4(s_axi_araddr[0]),
        .O(\s_axi_rdata[26]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[26]_i_6 
       (.I0(\cnt_latched1_a_rd_buf_reg_n_0_[26] ),
        .I1(cnt_latched1_a[26]),
        .I2(s_axi_araddr[1]),
        .I3(p_8_in[26]),
        .I4(s_axi_araddr[0]),
        .I5(\cnt_rx1_a_reg_n_0_[26] ),
        .O(\s_axi_rdata[26]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s_axi_rdata[26]_i_7 
       (.I0(p_14_in[26]),
        .I1(\cnt_tx0_a_reg_n_0_[26] ),
        .I2(s_axi_araddr[1]),
        .I3(p_1_in),
        .I4(s_axi_araddr[0]),
        .O(\s_axi_rdata[26]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[26]_i_8 
       (.I0(\cnt_latched0_a_rd_buf_reg_n_0_[26] ),
        .I1(cnt_latched0_a[26]),
        .I2(s_axi_araddr[1]),
        .I3(p_13_in[26]),
        .I4(s_axi_araddr[0]),
        .I5(\cnt_rx0_a_reg_n_0_[26] ),
        .O(\s_axi_rdata[26]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hC0DDC011)) 
    \s_axi_rdata[27]_i_1 
       (.I0(\s_axi_rdata[27]_i_2_n_0 ),
        .I1(s_axi_araddr[4]),
        .I2(\s_axi_rdata_reg[27]_i_3_n_0 ),
        .I3(s_axi_araddr[3]),
        .I4(\s_axi_rdata_reg[27]_i_4_n_0 ),
        .O(\s_axi_rdata[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCDCDCFFFFDFDCFFF)) 
    \s_axi_rdata[27]_i_2 
       (.I0(p_20_in[27]),
        .I1(s_axi_araddr[1]),
        .I2(s_axi_araddr[2]),
        .I3(\cnt_a_reg_n_0_[27] ),
        .I4(s_axi_araddr[0]),
        .I5(\cnt_a_rd_buf_reg_n_0_[27] ),
        .O(\s_axi_rdata[27]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s_axi_rdata[27]_i_5 
       (.I0(p_9_in[27]),
        .I1(\cnt_tx1_a_reg_n_0_[27] ),
        .I2(s_axi_araddr[1]),
        .I3(\cnt_latch_valid_rd_a_reg_n_0_[1] ),
        .I4(s_axi_araddr[0]),
        .O(\s_axi_rdata[27]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[27]_i_6 
       (.I0(\cnt_latched1_a_rd_buf_reg_n_0_[27] ),
        .I1(cnt_latched1_a[27]),
        .I2(s_axi_araddr[1]),
        .I3(p_8_in[27]),
        .I4(s_axi_araddr[0]),
        .I5(\cnt_rx1_a_reg_n_0_[27] ),
        .O(\s_axi_rdata[27]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \s_axi_rdata[27]_i_7 
       (.I0(p_14_in[27]),
        .I1(\cnt_tx0_a_reg_n_0_[27] ),
        .I2(s_axi_araddr[1]),
        .I3(\cnt_latch_valid_rd_a_reg_n_0_[0] ),
        .I4(s_axi_araddr[0]),
        .O(\s_axi_rdata[27]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[27]_i_8 
       (.I0(\cnt_latched0_a_rd_buf_reg_n_0_[27] ),
        .I1(cnt_latched0_a[27]),
        .I2(s_axi_araddr[1]),
        .I3(p_13_in[27]),
        .I4(s_axi_araddr[0]),
        .I5(\cnt_rx0_a_reg_n_0_[27] ),
        .O(\s_axi_rdata[27]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFCEECCCC)) 
    \s_axi_rdata[28]_i_1 
       (.I0(\s_axi_rdata[28]_i_2_n_0 ),
        .I1(\s_axi_rdata[28]_i_3_n_0 ),
        .I2(\s_axi_rdata[28]_i_4_n_0 ),
        .I3(s_axi_araddr[3]),
        .I4(s_axi_araddr[4]),
        .O(\s_axi_rdata[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBB888B888888888)) 
    \s_axi_rdata[28]_i_2 
       (.I0(\s_axi_rdata[28]_i_5_n_0 ),
        .I1(s_axi_araddr[2]),
        .I2(\cnt_tx0_a_reg_n_0_[28] ),
        .I3(s_axi_araddr[0]),
        .I4(p_14_in[28]),
        .I5(s_axi_araddr[1]),
        .O(\s_axi_rdata[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000B8)) 
    \s_axi_rdata[28]_i_3 
       (.I0(\cnt_a_reg_n_0_[28] ),
        .I1(\s_axi_rdata[15]_i_3_n_0 ),
        .I2(\cnt_a_rd_buf_reg_n_0_[28] ),
        .I3(s_axi_araddr[4]),
        .I4(\s_axi_rdata[30]_i_6_n_0 ),
        .I5(s_axi_araddr[3]),
        .O(\s_axi_rdata[28]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBB888B888888888)) 
    \s_axi_rdata[28]_i_4 
       (.I0(\s_axi_rdata[28]_i_6_n_0 ),
        .I1(s_axi_araddr[2]),
        .I2(\cnt_tx1_a_reg_n_0_[28] ),
        .I3(s_axi_araddr[0]),
        .I4(p_9_in[28]),
        .I5(s_axi_araddr[1]),
        .O(\s_axi_rdata[28]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[28]_i_5 
       (.I0(\cnt_latched0_a_rd_buf_reg_n_0_[28] ),
        .I1(cnt_latched0_a[28]),
        .I2(s_axi_araddr[1]),
        .I3(p_13_in[28]),
        .I4(s_axi_araddr[0]),
        .I5(\cnt_rx0_a_reg_n_0_[28] ),
        .O(\s_axi_rdata[28]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[28]_i_6 
       (.I0(\cnt_latched1_a_rd_buf_reg_n_0_[28] ),
        .I1(cnt_latched1_a[28]),
        .I2(s_axi_araddr[1]),
        .I3(p_8_in[28]),
        .I4(s_axi_araddr[0]),
        .I5(\cnt_rx1_a_reg_n_0_[28] ),
        .O(\s_axi_rdata[28]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFA0C0)) 
    \s_axi_rdata[29]_i_1 
       (.I0(\s_axi_rdata[29]_i_2_n_0 ),
        .I1(\s_axi_rdata[29]_i_3_n_0 ),
        .I2(s_axi_araddr[4]),
        .I3(s_axi_araddr[3]),
        .I4(\s_axi_rdata[29]_i_4_n_0 ),
        .O(\s_axi_rdata[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBB888B888888888)) 
    \s_axi_rdata[29]_i_2 
       (.I0(\s_axi_rdata[29]_i_5_n_0 ),
        .I1(s_axi_araddr[2]),
        .I2(\cnt_tx1_a_reg_n_0_[29] ),
        .I3(s_axi_araddr[0]),
        .I4(p_9_in[29]),
        .I5(s_axi_araddr[1]),
        .O(\s_axi_rdata[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBB888B888888888)) 
    \s_axi_rdata[29]_i_3 
       (.I0(\s_axi_rdata[29]_i_6_n_0 ),
        .I1(s_axi_araddr[2]),
        .I2(\cnt_tx0_a_reg_n_0_[29] ),
        .I3(s_axi_araddr[0]),
        .I4(p_14_in[29]),
        .I5(s_axi_araddr[1]),
        .O(\s_axi_rdata[29]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000B8)) 
    \s_axi_rdata[29]_i_4 
       (.I0(\cnt_a_reg_n_0_[29] ),
        .I1(\s_axi_rdata[15]_i_3_n_0 ),
        .I2(\cnt_a_rd_buf_reg_n_0_[29] ),
        .I3(s_axi_araddr[4]),
        .I4(\s_axi_rdata[30]_i_6_n_0 ),
        .I5(s_axi_araddr[3]),
        .O(\s_axi_rdata[29]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[29]_i_5 
       (.I0(\cnt_latched1_a_rd_buf_reg_n_0_[29] ),
        .I1(cnt_latched1_a[29]),
        .I2(s_axi_araddr[1]),
        .I3(p_8_in[29]),
        .I4(s_axi_araddr[0]),
        .I5(\cnt_rx1_a_reg_n_0_[29] ),
        .O(\s_axi_rdata[29]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[29]_i_6 
       (.I0(\cnt_latched0_a_rd_buf_reg_n_0_[29] ),
        .I1(cnt_latched0_a[29]),
        .I2(s_axi_araddr[1]),
        .I3(p_13_in[29]),
        .I4(s_axi_araddr[0]),
        .I5(\cnt_rx0_a_reg_n_0_[29] ),
        .O(\s_axi_rdata[29]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF000FDFDF0000D0D)) 
    \s_axi_rdata[2]_i_1 
       (.I0(\s_axi_rdata[2]_i_2_n_0 ),
        .I1(\s_axi_rdata[2]_i_3_n_0 ),
        .I2(s_axi_araddr[4]),
        .I3(\s_axi_rdata_reg[2]_i_4_n_0 ),
        .I4(s_axi_araddr[3]),
        .I5(\s_axi_rdata_reg[2]_i_5_n_0 ),
        .O(\s_axi_rdata[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF47FFFF)) 
    \s_axi_rdata[2]_i_2 
       (.I0(\irq_pend_reg_n_0_[2] ),
        .I1(s_axi_araddr[0]),
        .I2(irq_enabled[2]),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[1]),
        .O(\s_axi_rdata[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0000B800)) 
    \s_axi_rdata[2]_i_3 
       (.I0(\cnt_a_rd_buf_reg_n_0_[2] ),
        .I1(s_axi_araddr[0]),
        .I2(\cnt_a_reg_n_0_[2] ),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[1]),
        .O(\s_axi_rdata[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s_axi_rdata[2]_i_6 
       (.I0(p_9_in[2]),
        .I1(\cnt_tx1_a_reg_n_0_[2] ),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[0]),
        .I4(rx_dma_xfer_req_ovr_en_a[1]),
        .O(\s_axi_rdata[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[2]_i_7 
       (.I0(\cnt_latched1_a_rd_buf_reg_n_0_[2] ),
        .I1(cnt_latched1_a[2]),
        .I2(s_axi_araddr[1]),
        .I3(p_8_in[2]),
        .I4(s_axi_araddr[0]),
        .I5(\cnt_rx1_a_reg_n_0_[2] ),
        .O(\s_axi_rdata[2]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s_axi_rdata[2]_i_8 
       (.I0(p_14_in[2]),
        .I1(\cnt_tx0_a_reg_n_0_[2] ),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[0]),
        .I4(rx_dma_xfer_req_ovr_en_a[0]),
        .O(\s_axi_rdata[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[2]_i_9 
       (.I0(\cnt_latched0_a_rd_buf_reg_n_0_[2] ),
        .I1(cnt_latched0_a[2]),
        .I2(s_axi_araddr[1]),
        .I3(p_13_in[2]),
        .I4(s_axi_araddr[0]),
        .I5(\cnt_rx0_a_reg_n_0_[2] ),
        .O(\s_axi_rdata[2]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFCEECCCC)) 
    \s_axi_rdata[30]_i_1 
       (.I0(\s_axi_rdata[30]_i_2_n_0 ),
        .I1(\s_axi_rdata[30]_i_3_n_0 ),
        .I2(\s_axi_rdata[30]_i_4_n_0 ),
        .I3(s_axi_araddr[3]),
        .I4(s_axi_araddr[4]),
        .O(\s_axi_rdata[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBB888B888888888)) 
    \s_axi_rdata[30]_i_2 
       (.I0(\s_axi_rdata[30]_i_5_n_0 ),
        .I1(s_axi_araddr[2]),
        .I2(\cnt_tx0_a_reg_n_0_[30] ),
        .I3(s_axi_araddr[0]),
        .I4(p_14_in[30]),
        .I5(s_axi_araddr[1]),
        .O(\s_axi_rdata[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \s_axi_rdata[30]_i_3 
       (.I0(\cnt_a_rd_buf_reg_n_0_[30] ),
        .I1(\s_axi_rdata[15]_i_3_n_0 ),
        .I2(\cnt_a_reg_n_0_[30] ),
        .I3(s_axi_araddr[4]),
        .I4(\s_axi_rdata[30]_i_6_n_0 ),
        .I5(s_axi_araddr[3]),
        .O(\s_axi_rdata[30]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBB888B888888888)) 
    \s_axi_rdata[30]_i_4 
       (.I0(\s_axi_rdata[30]_i_7_n_0 ),
        .I1(s_axi_araddr[2]),
        .I2(\cnt_tx1_a_reg_n_0_[30] ),
        .I3(s_axi_araddr[0]),
        .I4(p_9_in[30]),
        .I5(s_axi_araddr[1]),
        .O(\s_axi_rdata[30]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[30]_i_5 
       (.I0(\cnt_latched0_a_rd_buf_reg_n_0_[30] ),
        .I1(cnt_latched0_a[30]),
        .I2(s_axi_araddr[1]),
        .I3(p_13_in[30]),
        .I4(s_axi_araddr[0]),
        .I5(\cnt_rx0_a_reg_n_0_[30] ),
        .O(\s_axi_rdata[30]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \s_axi_rdata[30]_i_6 
       (.I0(s_axi_araddr[1]),
        .I1(s_axi_araddr[2]),
        .O(\s_axi_rdata[30]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[30]_i_7 
       (.I0(\cnt_latched1_a_rd_buf_reg_n_0_[30] ),
        .I1(cnt_latched1_a[30]),
        .I2(s_axi_araddr[1]),
        .I3(p_8_in[30]),
        .I4(s_axi_araddr[0]),
        .I5(\cnt_rx1_a_reg_n_0_[30] ),
        .O(\s_axi_rdata[30]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hB0FF)) 
    \s_axi_rdata[31]_i_1 
       (.I0(s_axi_rvalid_reg_0),
        .I1(s_axi_arvalid),
        .I2(s_axi_rready),
        .I3(aresetn),
        .O(\s_axi_rdata[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[31]_i_2 
       (.I0(s_axi_arvalid),
        .I1(s_axi_rvalid_reg_0),
        .O(s_axi_rd_en));
  LUT5 #(
    .INIT(32'hC0DDC011)) 
    \s_axi_rdata[31]_i_3 
       (.I0(\s_axi_rdata[31]_i_4_n_0 ),
        .I1(s_axi_araddr[4]),
        .I2(\s_axi_rdata[31]_i_5_n_0 ),
        .I3(s_axi_araddr[3]),
        .I4(\s_axi_rdata[31]_i_6_n_0 ),
        .O(\s_axi_rdata[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF05FF3FFFF5FF3F)) 
    \s_axi_rdata[31]_i_4 
       (.I0(ts_resetn_a),
        .I1(\cnt_a_reg_n_0_[31] ),
        .I2(s_axi_araddr[2]),
        .I3(s_axi_araddr[1]),
        .I4(s_axi_araddr[0]),
        .I5(\cnt_a_rd_buf_reg_n_0_[31] ),
        .O(\s_axi_rdata[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBBB888B888888888)) 
    \s_axi_rdata[31]_i_5 
       (.I0(\s_axi_rdata[31]_i_7_n_0 ),
        .I1(s_axi_araddr[2]),
        .I2(\cnt_tx1_a_reg_n_0_[31] ),
        .I3(s_axi_araddr[0]),
        .I4(p_9_in[31]),
        .I5(s_axi_araddr[1]),
        .O(\s_axi_rdata[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBBB888B888888888)) 
    \s_axi_rdata[31]_i_6 
       (.I0(\s_axi_rdata[31]_i_8_n_0 ),
        .I1(s_axi_araddr[2]),
        .I2(\cnt_tx0_a_reg_n_0_[31] ),
        .I3(s_axi_araddr[0]),
        .I4(p_14_in[31]),
        .I5(s_axi_araddr[1]),
        .O(\s_axi_rdata[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[31]_i_7 
       (.I0(\cnt_latched1_a_rd_buf_reg_n_0_[31] ),
        .I1(cnt_latched1_a[31]),
        .I2(s_axi_araddr[1]),
        .I3(p_8_in[31]),
        .I4(s_axi_araddr[0]),
        .I5(\cnt_rx1_a_reg_n_0_[31] ),
        .O(\s_axi_rdata[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[31]_i_8 
       (.I0(\cnt_latched0_a_rd_buf_reg_n_0_[31] ),
        .I1(cnt_latched0_a[31]),
        .I2(s_axi_araddr[1]),
        .I3(p_13_in[31]),
        .I4(s_axi_araddr[0]),
        .I5(\cnt_rx0_a_reg_n_0_[31] ),
        .O(\s_axi_rdata[31]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hF000FDFDF0000D0D)) 
    \s_axi_rdata[3]_i_1 
       (.I0(\s_axi_rdata[3]_i_2_n_0 ),
        .I1(\s_axi_rdata[3]_i_3_n_0 ),
        .I2(s_axi_araddr[4]),
        .I3(\s_axi_rdata_reg[3]_i_4_n_0 ),
        .I4(s_axi_araddr[3]),
        .I5(\s_axi_rdata_reg[3]_i_5_n_0 ),
        .O(\s_axi_rdata[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF47FFFF)) 
    \s_axi_rdata[3]_i_2 
       (.I0(\irq_pend_reg_n_0_[3] ),
        .I1(s_axi_araddr[0]),
        .I2(irq_enabled[3]),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[1]),
        .O(\s_axi_rdata[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0000B800)) 
    \s_axi_rdata[3]_i_3 
       (.I0(\cnt_a_rd_buf_reg_n_0_[3] ),
        .I1(s_axi_araddr[0]),
        .I2(\cnt_a_reg_n_0_[3] ),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[1]),
        .O(\s_axi_rdata[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s_axi_rdata[3]_i_6 
       (.I0(p_9_in[3]),
        .I1(\cnt_tx1_a_reg_n_0_[3] ),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[0]),
        .I4(rx_dma_xfer_req_ovr_val_a[1]),
        .O(\s_axi_rdata[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[3]_i_7 
       (.I0(\cnt_latched1_a_rd_buf_reg_n_0_[3] ),
        .I1(cnt_latched1_a[3]),
        .I2(s_axi_araddr[1]),
        .I3(p_8_in[3]),
        .I4(s_axi_araddr[0]),
        .I5(\cnt_rx1_a_reg_n_0_[3] ),
        .O(\s_axi_rdata[3]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s_axi_rdata[3]_i_8 
       (.I0(p_14_in[3]),
        .I1(\cnt_tx0_a_reg_n_0_[3] ),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[0]),
        .I4(rx_dma_xfer_req_ovr_val_a[0]),
        .O(\s_axi_rdata[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[3]_i_9 
       (.I0(\cnt_latched0_a_rd_buf_reg_n_0_[3] ),
        .I1(cnt_latched0_a[3]),
        .I2(s_axi_araddr[1]),
        .I3(p_13_in[3]),
        .I4(s_axi_araddr[0]),
        .I5(\cnt_rx0_a_reg_n_0_[3] ),
        .O(\s_axi_rdata[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF000FDFDF0000D0D)) 
    \s_axi_rdata[4]_i_1 
       (.I0(\s_axi_rdata[4]_i_2_n_0 ),
        .I1(\s_axi_rdata[4]_i_3_n_0 ),
        .I2(s_axi_araddr[4]),
        .I3(\s_axi_rdata_reg[4]_i_4_n_0 ),
        .I4(s_axi_araddr[3]),
        .I5(\s_axi_rdata_reg[4]_i_5_n_0 ),
        .O(\s_axi_rdata[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF47FFFF)) 
    \s_axi_rdata[4]_i_2 
       (.I0(\irq_pend_reg_n_0_[4] ),
        .I1(s_axi_araddr[0]),
        .I2(irq_enabled[4]),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[1]),
        .O(\s_axi_rdata[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0000B800)) 
    \s_axi_rdata[4]_i_3 
       (.I0(\cnt_a_rd_buf_reg_n_0_[4] ),
        .I1(s_axi_araddr[0]),
        .I2(\cnt_a_reg_n_0_[4] ),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[1]),
        .O(\s_axi_rdata[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s_axi_rdata[4]_i_6 
       (.I0(p_9_in[4]),
        .I1(\cnt_tx1_a_reg_n_0_[4] ),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[0]),
        .I4(tx_data_ready_ovr_en_a[1]),
        .O(\s_axi_rdata[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[4]_i_7 
       (.I0(\cnt_latched1_a_rd_buf_reg_n_0_[4] ),
        .I1(cnt_latched1_a[4]),
        .I2(s_axi_araddr[1]),
        .I3(p_8_in[4]),
        .I4(s_axi_araddr[0]),
        .I5(\cnt_rx1_a_reg_n_0_[4] ),
        .O(\s_axi_rdata[4]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s_axi_rdata[4]_i_8 
       (.I0(p_14_in[4]),
        .I1(\cnt_tx0_a_reg_n_0_[4] ),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[0]),
        .I4(tx_data_ready_ovr_en_a[0]),
        .O(\s_axi_rdata[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[4]_i_9 
       (.I0(\cnt_latched0_a_rd_buf_reg_n_0_[4] ),
        .I1(cnt_latched0_a[4]),
        .I2(s_axi_araddr[1]),
        .I3(p_13_in[4]),
        .I4(s_axi_araddr[0]),
        .I5(\cnt_rx0_a_reg_n_0_[4] ),
        .O(\s_axi_rdata[4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF000FDFDF0000D0D)) 
    \s_axi_rdata[5]_i_1 
       (.I0(\s_axi_rdata[5]_i_2_n_0 ),
        .I1(\s_axi_rdata[5]_i_3_n_0 ),
        .I2(s_axi_araddr[4]),
        .I3(\s_axi_rdata_reg[5]_i_4_n_0 ),
        .I4(s_axi_araddr[3]),
        .I5(\s_axi_rdata_reg[5]_i_5_n_0 ),
        .O(\s_axi_rdata[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF47FFFF)) 
    \s_axi_rdata[5]_i_2 
       (.I0(\irq_pend_reg_n_0_[5] ),
        .I1(s_axi_araddr[0]),
        .I2(irq_enabled[5]),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[1]),
        .O(\s_axi_rdata[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0000B800)) 
    \s_axi_rdata[5]_i_3 
       (.I0(\cnt_a_rd_buf_reg_n_0_[5] ),
        .I1(s_axi_araddr[0]),
        .I2(\cnt_a_reg_n_0_[5] ),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[1]),
        .O(\s_axi_rdata[5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s_axi_rdata[5]_i_6 
       (.I0(p_9_in[5]),
        .I1(\cnt_tx1_a_reg_n_0_[5] ),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[0]),
        .I4(tx_data_ready_ovr_val_a[1]),
        .O(\s_axi_rdata[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[5]_i_7 
       (.I0(\cnt_latched1_a_rd_buf_reg_n_0_[5] ),
        .I1(cnt_latched1_a[5]),
        .I2(s_axi_araddr[1]),
        .I3(p_8_in[5]),
        .I4(s_axi_araddr[0]),
        .I5(\cnt_rx1_a_reg_n_0_[5] ),
        .O(\s_axi_rdata[5]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s_axi_rdata[5]_i_8 
       (.I0(p_14_in[5]),
        .I1(\cnt_tx0_a_reg_n_0_[5] ),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[0]),
        .I4(tx_data_ready_ovr_val_a[0]),
        .O(\s_axi_rdata[5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[5]_i_9 
       (.I0(\cnt_latched0_a_rd_buf_reg_n_0_[5] ),
        .I1(cnt_latched0_a[5]),
        .I2(s_axi_araddr[1]),
        .I3(p_13_in[5]),
        .I4(s_axi_araddr[0]),
        .I5(\cnt_rx0_a_reg_n_0_[5] ),
        .O(\s_axi_rdata[5]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF000FDFDF0000D0D)) 
    \s_axi_rdata[6]_i_1 
       (.I0(\s_axi_rdata[6]_i_2_n_0 ),
        .I1(\s_axi_rdata[6]_i_3_n_0 ),
        .I2(s_axi_araddr[4]),
        .I3(\s_axi_rdata_reg[6]_i_4_n_0 ),
        .I4(s_axi_araddr[3]),
        .I5(\s_axi_rdata_reg[6]_i_5_n_0 ),
        .O(\s_axi_rdata[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF47FFFF)) 
    \s_axi_rdata[6]_i_2 
       (.I0(\irq_pend_reg_n_0_[6] ),
        .I1(s_axi_araddr[0]),
        .I2(irq_enabled[6]),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[1]),
        .O(\s_axi_rdata[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0000B800)) 
    \s_axi_rdata[6]_i_3 
       (.I0(\cnt_a_rd_buf_reg_n_0_[6] ),
        .I1(s_axi_araddr[0]),
        .I2(\cnt_a_reg_n_0_[6] ),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[1]),
        .O(\s_axi_rdata[6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s_axi_rdata[6]_i_6 
       (.I0(p_9_in[6]),
        .I1(\cnt_tx1_a_reg_n_0_[6] ),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[0]),
        .I4(rx_data_ready_ovr_en_a[1]),
        .O(\s_axi_rdata[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[6]_i_7 
       (.I0(\cnt_latched1_a_rd_buf_reg_n_0_[6] ),
        .I1(cnt_latched1_a[6]),
        .I2(s_axi_araddr[1]),
        .I3(p_8_in[6]),
        .I4(s_axi_araddr[0]),
        .I5(\cnt_rx1_a_reg_n_0_[6] ),
        .O(\s_axi_rdata[6]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s_axi_rdata[6]_i_8 
       (.I0(p_14_in[6]),
        .I1(\cnt_tx0_a_reg_n_0_[6] ),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[0]),
        .I4(rx_data_ready_ovr_en_a[0]),
        .O(\s_axi_rdata[6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[6]_i_9 
       (.I0(\cnt_latched0_a_rd_buf_reg_n_0_[6] ),
        .I1(cnt_latched0_a[6]),
        .I2(s_axi_araddr[1]),
        .I3(p_13_in[6]),
        .I4(s_axi_araddr[0]),
        .I5(\cnt_rx0_a_reg_n_0_[6] ),
        .O(\s_axi_rdata[6]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF000FDFDF0000D0D)) 
    \s_axi_rdata[7]_i_1 
       (.I0(\s_axi_rdata[7]_i_2_n_0 ),
        .I1(\s_axi_rdata[7]_i_3_n_0 ),
        .I2(s_axi_araddr[4]),
        .I3(\s_axi_rdata_reg[7]_i_4_n_0 ),
        .I4(s_axi_araddr[3]),
        .I5(\s_axi_rdata_reg[7]_i_5_n_0 ),
        .O(\s_axi_rdata[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF47FFFF)) 
    \s_axi_rdata[7]_i_2 
       (.I0(\irq_pend_reg_n_0_[7] ),
        .I1(s_axi_araddr[0]),
        .I2(irq_enabled[7]),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[1]),
        .O(\s_axi_rdata[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0000B800)) 
    \s_axi_rdata[7]_i_3 
       (.I0(\cnt_a_rd_buf_reg_n_0_[7] ),
        .I1(s_axi_araddr[0]),
        .I2(\cnt_a_reg_n_0_[7] ),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[1]),
        .O(\s_axi_rdata[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s_axi_rdata[7]_i_6 
       (.I0(p_9_in[7]),
        .I1(\cnt_tx1_a_reg_n_0_[7] ),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[0]),
        .I4(rx_data_ready_ovr_val_a[1]),
        .O(\s_axi_rdata[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[7]_i_7 
       (.I0(\cnt_latched1_a_rd_buf_reg_n_0_[7] ),
        .I1(cnt_latched1_a[7]),
        .I2(s_axi_araddr[1]),
        .I3(p_8_in[7]),
        .I4(s_axi_araddr[0]),
        .I5(\cnt_rx1_a_reg_n_0_[7] ),
        .O(\s_axi_rdata[7]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s_axi_rdata[7]_i_8 
       (.I0(p_14_in[7]),
        .I1(\cnt_tx0_a_reg_n_0_[7] ),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[0]),
        .I4(rx_data_ready_ovr_val_a[0]),
        .O(\s_axi_rdata[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[7]_i_9 
       (.I0(\cnt_latched0_a_rd_buf_reg_n_0_[7] ),
        .I1(cnt_latched0_a[7]),
        .I2(s_axi_araddr[1]),
        .I3(p_13_in[7]),
        .I4(s_axi_araddr[0]),
        .I5(\cnt_rx0_a_reg_n_0_[7] ),
        .O(\s_axi_rdata[7]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF000FDFDF0000D0D)) 
    \s_axi_rdata[8]_i_1 
       (.I0(\s_axi_rdata[8]_i_2_n_0 ),
        .I1(\s_axi_rdata[8]_i_3_n_0 ),
        .I2(s_axi_araddr[4]),
        .I3(\s_axi_rdata_reg[8]_i_4_n_0 ),
        .I4(s_axi_araddr[3]),
        .I5(\s_axi_rdata_reg[8]_i_5_n_0 ),
        .O(\s_axi_rdata[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hF4FFF7FF)) 
    \s_axi_rdata[8]_i_2 
       (.I0(\cnt_a_rd_buf_reg_n_0_[8] ),
        .I1(s_axi_araddr[0]),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[2]),
        .I4(\cnt_a_reg_n_0_[8] ),
        .O(\s_axi_rdata[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h0000E323)) 
    \s_axi_rdata[8]_i_3 
       (.I0(irq_enabled[8]),
        .I1(s_axi_araddr[0]),
        .I2(s_axi_araddr[1]),
        .I3(p_86_in),
        .I4(s_axi_araddr[2]),
        .O(\s_axi_rdata[8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s_axi_rdata[8]_i_6 
       (.I0(p_9_in[8]),
        .I1(\cnt_tx1_a_reg_n_0_[8] ),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[0]),
        .I4(tx_dma_data_ready_a[1]),
        .O(\s_axi_rdata[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[8]_i_7 
       (.I0(\cnt_latched1_a_rd_buf_reg_n_0_[8] ),
        .I1(cnt_latched1_a[8]),
        .I2(s_axi_araddr[1]),
        .I3(p_8_in[8]),
        .I4(s_axi_araddr[0]),
        .I5(\cnt_rx1_a_reg_n_0_[8] ),
        .O(\s_axi_rdata[8]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s_axi_rdata[8]_i_8 
       (.I0(p_14_in[8]),
        .I1(\cnt_tx0_a_reg_n_0_[8] ),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[0]),
        .I4(tx_dma_data_ready_a[0]),
        .O(\s_axi_rdata[8]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[8]_i_9 
       (.I0(\cnt_latched0_a_rd_buf_reg_n_0_[8] ),
        .I1(cnt_latched0_a[8]),
        .I2(s_axi_araddr[1]),
        .I3(p_13_in[8]),
        .I4(s_axi_araddr[0]),
        .I5(\cnt_rx0_a_reg_n_0_[8] ),
        .O(\s_axi_rdata[8]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAEFEA)) 
    \s_axi_rdata[9]_i_1 
       (.I0(\s_axi_rdata[9]_i_2_n_0 ),
        .I1(\cnt_a_reg_n_0_[9] ),
        .I2(\s_axi_rdata[15]_i_3_n_0 ),
        .I3(\cnt_a_rd_buf_reg_n_0_[9] ),
        .I4(\s_axi_rdata[15]_i_4_n_0 ),
        .I5(\s_axi_rdata[9]_i_3_n_0 ),
        .O(\s_axi_rdata[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FF4F)) 
    \s_axi_rdata[9]_i_2 
       (.I0(\s_axi_rdata[17]_i_6_n_0 ),
        .I1(\cnt_rx0_a_reg_n_0_[9] ),
        .I2(s_axi_araddr[2]),
        .I3(\s_axi_rdata[9]_i_4_n_0 ),
        .I4(\s_axi_rdata[9]_i_5_n_0 ),
        .I5(\cnt_latched0_a_rd_buf[31]_i_2_n_0 ),
        .O(\s_axi_rdata[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FF4F)) 
    \s_axi_rdata[9]_i_3 
       (.I0(\s_axi_rdata[17]_i_6_n_0 ),
        .I1(\cnt_rx1_a_reg_n_0_[9] ),
        .I2(s_axi_araddr[2]),
        .I3(\s_axi_rdata[9]_i_6_n_0 ),
        .I4(\s_axi_rdata[9]_i_7_n_0 ),
        .I5(\cnt_latched1_a_rd_buf[31]_i_2_n_0 ),
        .O(\s_axi_rdata[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hE2CCE200)) 
    \s_axi_rdata[9]_i_4 
       (.I0(p_13_in[9]),
        .I1(s_axi_araddr[1]),
        .I2(\cnt_latched0_a_rd_buf_reg_n_0_[9] ),
        .I3(s_axi_araddr[0]),
        .I4(cnt_latched0_a[9]),
        .O(\s_axi_rdata[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0015051550155515)) 
    \s_axi_rdata[9]_i_5 
       (.I0(s_axi_araddr[2]),
        .I1(rx_dma_xfer_req_a[0]),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[1]),
        .I4(\cnt_tx0_a_reg_n_0_[9] ),
        .I5(p_14_in[9]),
        .O(\s_axi_rdata[9]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hE2CCE200)) 
    \s_axi_rdata[9]_i_6 
       (.I0(p_8_in[9]),
        .I1(s_axi_araddr[1]),
        .I2(\cnt_latched1_a_rd_buf_reg_n_0_[9] ),
        .I3(s_axi_araddr[0]),
        .I4(cnt_latched1_a[9]),
        .O(\s_axi_rdata[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0015051550155515)) 
    \s_axi_rdata[9]_i_7 
       (.I0(s_axi_araddr[2]),
        .I1(rx_dma_xfer_req_a[1]),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[1]),
        .I4(\cnt_tx1_a_reg_n_0_[9] ),
        .I5(p_9_in[9]),
        .O(\s_axi_rdata[9]_i_7_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[0] 
       (.C(aclk),
        .CE(s_axi_rd_en),
        .D(\s_axi_rdata[0]_i_1_n_0 ),
        .Q(s_axi_rdata[0]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  MUXF7 \s_axi_rdata_reg[0]_i_4 
       (.I0(\s_axi_rdata[0]_i_6_n_0 ),
        .I1(\s_axi_rdata[0]_i_7_n_0 ),
        .O(\s_axi_rdata_reg[0]_i_4_n_0 ),
        .S(s_axi_araddr[2]));
  MUXF7 \s_axi_rdata_reg[0]_i_5 
       (.I0(\s_axi_rdata[0]_i_8_n_0 ),
        .I1(\s_axi_rdata[0]_i_9_n_0 ),
        .O(\s_axi_rdata_reg[0]_i_5_n_0 ),
        .S(s_axi_araddr[2]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[10] 
       (.C(aclk),
        .CE(s_axi_rd_en),
        .D(\s_axi_rdata[10]_i_1_n_0 ),
        .Q(s_axi_rdata[10]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[11] 
       (.C(aclk),
        .CE(s_axi_rd_en),
        .D(\s_axi_rdata[11]_i_1_n_0 ),
        .Q(s_axi_rdata[11]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[12] 
       (.C(aclk),
        .CE(s_axi_rd_en),
        .D(\s_axi_rdata[12]_i_1_n_0 ),
        .Q(s_axi_rdata[12]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  MUXF7 \s_axi_rdata_reg[12]_i_2 
       (.I0(\s_axi_rdata[12]_i_5_n_0 ),
        .I1(\s_axi_rdata[12]_i_6_n_0 ),
        .O(\s_axi_rdata_reg[12]_i_2_n_0 ),
        .S(s_axi_araddr[2]));
  MUXF7 \s_axi_rdata_reg[12]_i_3 
       (.I0(\s_axi_rdata[12]_i_7_n_0 ),
        .I1(\s_axi_rdata[12]_i_8_n_0 ),
        .O(\s_axi_rdata_reg[12]_i_3_n_0 ),
        .S(s_axi_araddr[2]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[13] 
       (.C(aclk),
        .CE(s_axi_rd_en),
        .D(\s_axi_rdata[13]_i_1_n_0 ),
        .Q(s_axi_rdata[13]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  MUXF7 \s_axi_rdata_reg[13]_i_2 
       (.I0(\s_axi_rdata[13]_i_5_n_0 ),
        .I1(\s_axi_rdata[13]_i_6_n_0 ),
        .O(\s_axi_rdata_reg[13]_i_2_n_0 ),
        .S(s_axi_araddr[2]));
  MUXF7 \s_axi_rdata_reg[13]_i_3 
       (.I0(\s_axi_rdata[13]_i_7_n_0 ),
        .I1(\s_axi_rdata[13]_i_8_n_0 ),
        .O(\s_axi_rdata_reg[13]_i_3_n_0 ),
        .S(s_axi_araddr[2]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[14] 
       (.C(aclk),
        .CE(s_axi_rd_en),
        .D(\s_axi_rdata[14]_i_1_n_0 ),
        .Q(s_axi_rdata[14]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[15] 
       (.C(aclk),
        .CE(s_axi_rd_en),
        .D(\s_axi_rdata[15]_i_1_n_0 ),
        .Q(s_axi_rdata[15]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[16] 
       (.C(aclk),
        .CE(s_axi_rd_en),
        .D(\s_axi_rdata[16]_i_1_n_0 ),
        .Q(s_axi_rdata[16]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  MUXF7 \s_axi_rdata_reg[16]_i_4 
       (.I0(\s_axi_rdata[16]_i_6_n_0 ),
        .I1(\s_axi_rdata[16]_i_7_n_0 ),
        .O(\s_axi_rdata_reg[16]_i_4_n_0 ),
        .S(s_axi_araddr[2]));
  MUXF7 \s_axi_rdata_reg[16]_i_5 
       (.I0(\s_axi_rdata[16]_i_8_n_0 ),
        .I1(\s_axi_rdata[16]_i_9_n_0 ),
        .O(\s_axi_rdata_reg[16]_i_5_n_0 ),
        .S(s_axi_araddr[2]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[17] 
       (.C(aclk),
        .CE(s_axi_rd_en),
        .D(\s_axi_rdata[17]_i_1_n_0 ),
        .Q(s_axi_rdata[17]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  MUXF7 \s_axi_rdata_reg[17]_i_4 
       (.I0(\s_axi_rdata[17]_i_7_n_0 ),
        .I1(\s_axi_rdata[17]_i_8_n_0 ),
        .O(\s_axi_rdata_reg[17]_i_4_n_0 ),
        .S(s_axi_araddr[2]));
  MUXF7 \s_axi_rdata_reg[17]_i_5 
       (.I0(\s_axi_rdata[17]_i_9_n_0 ),
        .I1(\s_axi_rdata[17]_i_10_n_0 ),
        .O(\s_axi_rdata_reg[17]_i_5_n_0 ),
        .S(s_axi_araddr[2]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[18] 
       (.C(aclk),
        .CE(s_axi_rd_en),
        .D(\s_axi_rdata[18]_i_1_n_0 ),
        .Q(s_axi_rdata[18]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  MUXF8 \s_axi_rdata_reg[18]_i_2 
       (.I0(\s_axi_rdata_reg[18]_i_4_n_0 ),
        .I1(\s_axi_rdata_reg[18]_i_5_n_0 ),
        .O(\s_axi_rdata_reg[18]_i_2_n_0 ),
        .S(s_axi_araddr[3]));
  MUXF7 \s_axi_rdata_reg[18]_i_4 
       (.I0(\s_axi_rdata[18]_i_6_n_0 ),
        .I1(\s_axi_rdata[18]_i_7_n_0 ),
        .O(\s_axi_rdata_reg[18]_i_4_n_0 ),
        .S(s_axi_araddr[2]));
  MUXF7 \s_axi_rdata_reg[18]_i_5 
       (.I0(\s_axi_rdata[18]_i_8_n_0 ),
        .I1(\s_axi_rdata[18]_i_9_n_0 ),
        .O(\s_axi_rdata_reg[18]_i_5_n_0 ),
        .S(s_axi_araddr[2]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[19] 
       (.C(aclk),
        .CE(s_axi_rd_en),
        .D(\s_axi_rdata[19]_i_1_n_0 ),
        .Q(s_axi_rdata[19]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  MUXF8 \s_axi_rdata_reg[19]_i_2 
       (.I0(\s_axi_rdata_reg[19]_i_4_n_0 ),
        .I1(\s_axi_rdata_reg[19]_i_5_n_0 ),
        .O(\s_axi_rdata_reg[19]_i_2_n_0 ),
        .S(s_axi_araddr[3]));
  MUXF7 \s_axi_rdata_reg[19]_i_4 
       (.I0(\s_axi_rdata[19]_i_6_n_0 ),
        .I1(\s_axi_rdata[19]_i_7_n_0 ),
        .O(\s_axi_rdata_reg[19]_i_4_n_0 ),
        .S(s_axi_araddr[2]));
  MUXF7 \s_axi_rdata_reg[19]_i_5 
       (.I0(\s_axi_rdata[19]_i_8_n_0 ),
        .I1(\s_axi_rdata[19]_i_9_n_0 ),
        .O(\s_axi_rdata_reg[19]_i_5_n_0 ),
        .S(s_axi_araddr[2]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[1] 
       (.C(aclk),
        .CE(s_axi_rd_en),
        .D(\s_axi_rdata[1]_i_1_n_0 ),
        .Q(s_axi_rdata[1]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  MUXF7 \s_axi_rdata_reg[1]_i_4 
       (.I0(\s_axi_rdata[1]_i_6_n_0 ),
        .I1(\s_axi_rdata[1]_i_7_n_0 ),
        .O(\s_axi_rdata_reg[1]_i_4_n_0 ),
        .S(s_axi_araddr[2]));
  MUXF7 \s_axi_rdata_reg[1]_i_5 
       (.I0(\s_axi_rdata[1]_i_8_n_0 ),
        .I1(\s_axi_rdata[1]_i_9_n_0 ),
        .O(\s_axi_rdata_reg[1]_i_5_n_0 ),
        .S(s_axi_araddr[2]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[20] 
       (.C(aclk),
        .CE(s_axi_rd_en),
        .D(\s_axi_rdata[20]_i_1_n_0 ),
        .Q(s_axi_rdata[20]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  MUXF8 \s_axi_rdata_reg[20]_i_2 
       (.I0(\s_axi_rdata_reg[20]_i_4_n_0 ),
        .I1(\s_axi_rdata_reg[20]_i_5_n_0 ),
        .O(\s_axi_rdata_reg[20]_i_2_n_0 ),
        .S(s_axi_araddr[3]));
  MUXF7 \s_axi_rdata_reg[20]_i_4 
       (.I0(\s_axi_rdata[20]_i_6_n_0 ),
        .I1(\s_axi_rdata[20]_i_7_n_0 ),
        .O(\s_axi_rdata_reg[20]_i_4_n_0 ),
        .S(s_axi_araddr[2]));
  MUXF7 \s_axi_rdata_reg[20]_i_5 
       (.I0(\s_axi_rdata[20]_i_8_n_0 ),
        .I1(\s_axi_rdata[20]_i_9_n_0 ),
        .O(\s_axi_rdata_reg[20]_i_5_n_0 ),
        .S(s_axi_araddr[2]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[21] 
       (.C(aclk),
        .CE(s_axi_rd_en),
        .D(\s_axi_rdata[21]_i_1_n_0 ),
        .Q(s_axi_rdata[21]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  MUXF8 \s_axi_rdata_reg[21]_i_2 
       (.I0(\s_axi_rdata_reg[21]_i_5_n_0 ),
        .I1(\s_axi_rdata_reg[21]_i_6_n_0 ),
        .O(\s_axi_rdata_reg[21]_i_2_n_0 ),
        .S(s_axi_araddr[3]));
  MUXF7 \s_axi_rdata_reg[21]_i_5 
       (.I0(\s_axi_rdata[21]_i_7_n_0 ),
        .I1(\s_axi_rdata[21]_i_8_n_0 ),
        .O(\s_axi_rdata_reg[21]_i_5_n_0 ),
        .S(s_axi_araddr[2]));
  MUXF7 \s_axi_rdata_reg[21]_i_6 
       (.I0(\s_axi_rdata[21]_i_9_n_0 ),
        .I1(\s_axi_rdata[21]_i_10_n_0 ),
        .O(\s_axi_rdata_reg[21]_i_6_n_0 ),
        .S(s_axi_araddr[2]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[22] 
       (.C(aclk),
        .CE(s_axi_rd_en),
        .D(\s_axi_rdata[22]_i_1_n_0 ),
        .Q(s_axi_rdata[22]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[23] 
       (.C(aclk),
        .CE(s_axi_rd_en),
        .D(\s_axi_rdata[23]_i_1_n_0 ),
        .Q(s_axi_rdata[23]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[24] 
       (.C(aclk),
        .CE(s_axi_rd_en),
        .D(\s_axi_rdata[24]_i_1_n_0 ),
        .Q(s_axi_rdata[24]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  MUXF7 \s_axi_rdata_reg[24]_i_3 
       (.I0(\s_axi_rdata[24]_i_5_n_0 ),
        .I1(\s_axi_rdata[24]_i_6_n_0 ),
        .O(\s_axi_rdata_reg[24]_i_3_n_0 ),
        .S(s_axi_araddr[2]));
  MUXF7 \s_axi_rdata_reg[24]_i_4 
       (.I0(\s_axi_rdata[24]_i_7_n_0 ),
        .I1(\s_axi_rdata[24]_i_8_n_0 ),
        .O(\s_axi_rdata_reg[24]_i_4_n_0 ),
        .S(s_axi_araddr[2]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[25] 
       (.C(aclk),
        .CE(s_axi_rd_en),
        .D(\s_axi_rdata[25]_i_1_n_0 ),
        .Q(s_axi_rdata[25]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  MUXF7 \s_axi_rdata_reg[25]_i_3 
       (.I0(\s_axi_rdata[25]_i_5_n_0 ),
        .I1(\s_axi_rdata[25]_i_6_n_0 ),
        .O(\s_axi_rdata_reg[25]_i_3_n_0 ),
        .S(s_axi_araddr[2]));
  MUXF7 \s_axi_rdata_reg[25]_i_4 
       (.I0(\s_axi_rdata[25]_i_7_n_0 ),
        .I1(\s_axi_rdata[25]_i_8_n_0 ),
        .O(\s_axi_rdata_reg[25]_i_4_n_0 ),
        .S(s_axi_araddr[2]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[26] 
       (.C(aclk),
        .CE(s_axi_rd_en),
        .D(\s_axi_rdata[26]_i_1_n_0 ),
        .Q(s_axi_rdata[26]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  MUXF7 \s_axi_rdata_reg[26]_i_3 
       (.I0(\s_axi_rdata[26]_i_5_n_0 ),
        .I1(\s_axi_rdata[26]_i_6_n_0 ),
        .O(\s_axi_rdata_reg[26]_i_3_n_0 ),
        .S(s_axi_araddr[2]));
  MUXF7 \s_axi_rdata_reg[26]_i_4 
       (.I0(\s_axi_rdata[26]_i_7_n_0 ),
        .I1(\s_axi_rdata[26]_i_8_n_0 ),
        .O(\s_axi_rdata_reg[26]_i_4_n_0 ),
        .S(s_axi_araddr[2]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[27] 
       (.C(aclk),
        .CE(s_axi_rd_en),
        .D(\s_axi_rdata[27]_i_1_n_0 ),
        .Q(s_axi_rdata[27]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  MUXF7 \s_axi_rdata_reg[27]_i_3 
       (.I0(\s_axi_rdata[27]_i_5_n_0 ),
        .I1(\s_axi_rdata[27]_i_6_n_0 ),
        .O(\s_axi_rdata_reg[27]_i_3_n_0 ),
        .S(s_axi_araddr[2]));
  MUXF7 \s_axi_rdata_reg[27]_i_4 
       (.I0(\s_axi_rdata[27]_i_7_n_0 ),
        .I1(\s_axi_rdata[27]_i_8_n_0 ),
        .O(\s_axi_rdata_reg[27]_i_4_n_0 ),
        .S(s_axi_araddr[2]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[28] 
       (.C(aclk),
        .CE(s_axi_rd_en),
        .D(\s_axi_rdata[28]_i_1_n_0 ),
        .Q(s_axi_rdata[28]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[29] 
       (.C(aclk),
        .CE(s_axi_rd_en),
        .D(\s_axi_rdata[29]_i_1_n_0 ),
        .Q(s_axi_rdata[29]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[2] 
       (.C(aclk),
        .CE(s_axi_rd_en),
        .D(\s_axi_rdata[2]_i_1_n_0 ),
        .Q(s_axi_rdata[2]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  MUXF7 \s_axi_rdata_reg[2]_i_4 
       (.I0(\s_axi_rdata[2]_i_6_n_0 ),
        .I1(\s_axi_rdata[2]_i_7_n_0 ),
        .O(\s_axi_rdata_reg[2]_i_4_n_0 ),
        .S(s_axi_araddr[2]));
  MUXF7 \s_axi_rdata_reg[2]_i_5 
       (.I0(\s_axi_rdata[2]_i_8_n_0 ),
        .I1(\s_axi_rdata[2]_i_9_n_0 ),
        .O(\s_axi_rdata_reg[2]_i_5_n_0 ),
        .S(s_axi_araddr[2]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[30] 
       (.C(aclk),
        .CE(s_axi_rd_en),
        .D(\s_axi_rdata[30]_i_1_n_0 ),
        .Q(s_axi_rdata[30]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[31] 
       (.C(aclk),
        .CE(s_axi_rd_en),
        .D(\s_axi_rdata[31]_i_3_n_0 ),
        .Q(s_axi_rdata[31]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[3] 
       (.C(aclk),
        .CE(s_axi_rd_en),
        .D(\s_axi_rdata[3]_i_1_n_0 ),
        .Q(s_axi_rdata[3]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  MUXF7 \s_axi_rdata_reg[3]_i_4 
       (.I0(\s_axi_rdata[3]_i_6_n_0 ),
        .I1(\s_axi_rdata[3]_i_7_n_0 ),
        .O(\s_axi_rdata_reg[3]_i_4_n_0 ),
        .S(s_axi_araddr[2]));
  MUXF7 \s_axi_rdata_reg[3]_i_5 
       (.I0(\s_axi_rdata[3]_i_8_n_0 ),
        .I1(\s_axi_rdata[3]_i_9_n_0 ),
        .O(\s_axi_rdata_reg[3]_i_5_n_0 ),
        .S(s_axi_araddr[2]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[4] 
       (.C(aclk),
        .CE(s_axi_rd_en),
        .D(\s_axi_rdata[4]_i_1_n_0 ),
        .Q(s_axi_rdata[4]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  MUXF7 \s_axi_rdata_reg[4]_i_4 
       (.I0(\s_axi_rdata[4]_i_6_n_0 ),
        .I1(\s_axi_rdata[4]_i_7_n_0 ),
        .O(\s_axi_rdata_reg[4]_i_4_n_0 ),
        .S(s_axi_araddr[2]));
  MUXF7 \s_axi_rdata_reg[4]_i_5 
       (.I0(\s_axi_rdata[4]_i_8_n_0 ),
        .I1(\s_axi_rdata[4]_i_9_n_0 ),
        .O(\s_axi_rdata_reg[4]_i_5_n_0 ),
        .S(s_axi_araddr[2]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[5] 
       (.C(aclk),
        .CE(s_axi_rd_en),
        .D(\s_axi_rdata[5]_i_1_n_0 ),
        .Q(s_axi_rdata[5]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  MUXF7 \s_axi_rdata_reg[5]_i_4 
       (.I0(\s_axi_rdata[5]_i_6_n_0 ),
        .I1(\s_axi_rdata[5]_i_7_n_0 ),
        .O(\s_axi_rdata_reg[5]_i_4_n_0 ),
        .S(s_axi_araddr[2]));
  MUXF7 \s_axi_rdata_reg[5]_i_5 
       (.I0(\s_axi_rdata[5]_i_8_n_0 ),
        .I1(\s_axi_rdata[5]_i_9_n_0 ),
        .O(\s_axi_rdata_reg[5]_i_5_n_0 ),
        .S(s_axi_araddr[2]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[6] 
       (.C(aclk),
        .CE(s_axi_rd_en),
        .D(\s_axi_rdata[6]_i_1_n_0 ),
        .Q(s_axi_rdata[6]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  MUXF7 \s_axi_rdata_reg[6]_i_4 
       (.I0(\s_axi_rdata[6]_i_6_n_0 ),
        .I1(\s_axi_rdata[6]_i_7_n_0 ),
        .O(\s_axi_rdata_reg[6]_i_4_n_0 ),
        .S(s_axi_araddr[2]));
  MUXF7 \s_axi_rdata_reg[6]_i_5 
       (.I0(\s_axi_rdata[6]_i_8_n_0 ),
        .I1(\s_axi_rdata[6]_i_9_n_0 ),
        .O(\s_axi_rdata_reg[6]_i_5_n_0 ),
        .S(s_axi_araddr[2]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[7] 
       (.C(aclk),
        .CE(s_axi_rd_en),
        .D(\s_axi_rdata[7]_i_1_n_0 ),
        .Q(s_axi_rdata[7]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  MUXF7 \s_axi_rdata_reg[7]_i_4 
       (.I0(\s_axi_rdata[7]_i_6_n_0 ),
        .I1(\s_axi_rdata[7]_i_7_n_0 ),
        .O(\s_axi_rdata_reg[7]_i_4_n_0 ),
        .S(s_axi_araddr[2]));
  MUXF7 \s_axi_rdata_reg[7]_i_5 
       (.I0(\s_axi_rdata[7]_i_8_n_0 ),
        .I1(\s_axi_rdata[7]_i_9_n_0 ),
        .O(\s_axi_rdata_reg[7]_i_5_n_0 ),
        .S(s_axi_araddr[2]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[8] 
       (.C(aclk),
        .CE(s_axi_rd_en),
        .D(\s_axi_rdata[8]_i_1_n_0 ),
        .Q(s_axi_rdata[8]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  MUXF7 \s_axi_rdata_reg[8]_i_4 
       (.I0(\s_axi_rdata[8]_i_6_n_0 ),
        .I1(\s_axi_rdata[8]_i_7_n_0 ),
        .O(\s_axi_rdata_reg[8]_i_4_n_0 ),
        .S(s_axi_araddr[2]));
  MUXF7 \s_axi_rdata_reg[8]_i_5 
       (.I0(\s_axi_rdata[8]_i_8_n_0 ),
        .I1(\s_axi_rdata[8]_i_9_n_0 ),
        .O(\s_axi_rdata_reg[8]_i_5_n_0 ),
        .S(s_axi_araddr[2]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[9] 
       (.C(aclk),
        .CE(s_axi_rd_en),
        .D(\s_axi_rdata[9]_i_1_n_0 ),
        .Q(s_axi_rdata[9]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h5C)) 
    s_axi_rvalid_i_1
       (.I0(s_axi_rready),
        .I1(s_axi_arvalid),
        .I2(s_axi_rvalid_reg_0),
        .O(s_axi_rvalid_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *) 
  FDRE s_axi_rvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_axi_rvalid_i_1_n_0),
        .Q(s_axi_rvalid_reg_0),
        .R(p_0_in__0));
  LUT1 #(
    .INIT(2'h1)) 
    sync_aclk_to_ts_clk_src_req_i_1
       (.I0(sync_aclk_to_ts_clk_src_done),
        .O(sync_aclk_to_ts_clk_src_req_i_1_n_0));
  FDRE sync_aclk_to_ts_clk_src_req_reg
       (.C(aclk),
        .CE(1'b1),
        .D(sync_aclk_to_ts_clk_src_req_i_1_n_0),
        .Q(sync_aclk_to_ts_clk_src_req),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    sync_ts_clk_to_aclk_src_req_i_1
       (.I0(sync_ts_clk_to_aclk_src_done),
        .O(sync_ts_clk_to_aclk_src_req_i_1_n_0));
  FDRE sync_ts_clk_to_aclk_src_req_reg
       (.C(ts_clk),
        .CE(1'b1),
        .D(sync_ts_clk_to_aclk_src_req_i_1_n_0),
        .Q(sync_ts_clk_to_aclk_src_req),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hB8B8B888)) 
    ts_clk_resync_req_a_i_1
       (.I0(s_axi_wdata[10]),
        .I1(ts_clk_resync_req_a_i_2_n_0),
        .I2(p_20_in[25]),
        .I3(p_20_in[26]),
        .I4(p_20_in[27]),
        .O(ts_clk_resync_req_a_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    ts_clk_resync_req_a_i_2
       (.I0(s_axi_awaddr[3]),
        .I1(s_axi_awaddr[4]),
        .I2(s_axi_wstrb[1]),
        .I3(s_axi_awaddr[2]),
        .I4(s_axi_awaddr[0]),
        .I5(\rx_data_ready_ovr_val_a[0]_i_2_n_0 ),
        .O(ts_clk_resync_req_a_i_2_n_0));
  FDRE ts_clk_resync_req_a_reg
       (.C(aclk),
        .CE(1'b1),
        .D(ts_clk_resync_req_a_i_1_n_0),
        .Q(p_20_in[25]),
        .R(p_0_in__0));
  FDRE ts_clk_resync_req_reg
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[350]),
        .Q(ts_clk_resync_req),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h08080008)) 
    ts_clk_rx_en_i_1
       (.I0(src_in[0]),
        .I1(ts_clk_rx_synced_reg_n_0),
        .I2(ts_clk_resync_req),
        .I3(ts_clk_rx_en_reg_0),
        .I4(ts_clk_sync_bypass),
        .O(ts_clk_rx_en_i_1_n_0));
  (* X_INTERFACE_IGNORE = "true" *) 
  FDRE ts_clk_rx_en_reg
       (.C(ts_clk),
        .CE(1'b1),
        .D(ts_clk_rx_en_i_1_n_0),
        .Q(ts_clk_rx_en_reg_0),
        .R(1'b0));
  FDRE ts_clk_rx_synced_a_reg
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[226]),
        .Q(p_20_in[27]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h00FE)) 
    ts_clk_rx_synced_i_1
       (.I0(ts_clk_rx_synced_reg_n_0),
        .I1(src_in[6]),
        .I2(src_in[5]),
        .I3(ts_clk_resync_req),
        .O(ts_clk_rx_synced_i_1_n_0));
  FDRE ts_clk_rx_synced_reg
       (.C(ts_clk),
        .CE(1'b1),
        .D(ts_clk_rx_synced_i_1_n_0),
        .Q(ts_clk_rx_synced_reg_n_0),
        .R(clear));
  LUT4 #(
    .INIT(16'h7720)) 
    ts_clk_sync_bypass_a_i_1
       (.I0(ts_clk_resync_req_a_i_2_n_0),
        .I1(s_axi_wdata[9]),
        .I2(s_axi_wdata[8]),
        .I3(p_20_in[24]),
        .O(ts_clk_sync_bypass_a_i_1_n_0));
  FDRE ts_clk_sync_bypass_a_reg
       (.C(aclk),
        .CE(1'b1),
        .D(ts_clk_sync_bypass_a_i_1_n_0),
        .Q(p_20_in[24]),
        .R(p_0_in__0));
  FDRE ts_clk_sync_bypass_reg
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[351]),
        .Q(ts_clk_sync_bypass),
        .R(1'b0));
  (* DEST_EXT_HSK = "0" *) 
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* SIM_ASSERT_CHK = "1" *) 
  (* SRC_SYNC_FF = "2" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "228" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  (* XPM_MODULE = "TRUE" *) 
  icyradio_axi_rf_timestamping_0_xpm_cdc_handshake__parameterized0 ts_clk_to_aclk_sync
       (.dest_ack(1'b0),
        .dest_clk(aclk),
        .dest_out(sync_ts_clk_to_aclk_out),
        .dest_req(sync_ts_clk_to_aclk_dst_req),
        .src_clk(ts_clk),
        .src_in({ts_clk_tx_synced_reg_n_0,ts_clk_rx_synced_reg_n_0,src_in[12:11],sync_ts_clk_to_aclk_in[223:222],src_in[10:9],sync_ts_clk_to_aclk_in[219:218],src_in[8:7],sync_ts_clk_to_aclk_in[215:214],src_in[6:5],sync_ts_clk_to_aclk_in[211:210],src_in[4:1],tx_enable,\rx_enable_reg[1]_0 ,\rx_enable_reg[0]_0 ,cnt_reg,\cnt_latched0_reg_n_0_[63] ,\cnt_latched0_reg_n_0_[62] ,\cnt_latched0_reg_n_0_[61] ,\cnt_latched0_reg_n_0_[60] ,\cnt_latched0_reg_n_0_[59] ,\cnt_latched0_reg_n_0_[58] ,\cnt_latched0_reg_n_0_[57] ,\cnt_latched0_reg_n_0_[56] ,\cnt_latched0_reg_n_0_[55] ,\cnt_latched0_reg_n_0_[54] ,\cnt_latched0_reg_n_0_[53] ,\cnt_latched0_reg_n_0_[52] ,\cnt_latched0_reg_n_0_[51] ,\cnt_latched0_reg_n_0_[50] ,\cnt_latched0_reg_n_0_[49] ,\cnt_latched0_reg_n_0_[48] ,\cnt_latched0_reg_n_0_[47] ,\cnt_latched0_reg_n_0_[46] ,\cnt_latched0_reg_n_0_[45] ,\cnt_latched0_reg_n_0_[44] ,\cnt_latched0_reg_n_0_[43] ,\cnt_latched0_reg_n_0_[42] ,\cnt_latched0_reg_n_0_[41] ,\cnt_latched0_reg_n_0_[40] ,\cnt_latched0_reg_n_0_[39] ,\cnt_latched0_reg_n_0_[38] ,\cnt_latched0_reg_n_0_[37] ,\cnt_latched0_reg_n_0_[36] ,\cnt_latched0_reg_n_0_[35] ,\cnt_latched0_reg_n_0_[34] ,\cnt_latched0_reg_n_0_[33] ,\cnt_latched0_reg_n_0_[32] ,\cnt_latched0_reg_n_0_[31] ,\cnt_latched0_reg_n_0_[30] ,\cnt_latched0_reg_n_0_[29] ,\cnt_latched0_reg_n_0_[28] ,\cnt_latched0_reg_n_0_[27] ,\cnt_latched0_reg_n_0_[26] ,\cnt_latched0_reg_n_0_[25] ,\cnt_latched0_reg_n_0_[24] ,\cnt_latched0_reg_n_0_[23] ,\cnt_latched0_reg_n_0_[22] ,\cnt_latched0_reg_n_0_[21] ,\cnt_latched0_reg_n_0_[20] ,\cnt_latched0_reg_n_0_[19] ,\cnt_latched0_reg_n_0_[18] ,\cnt_latched0_reg_n_0_[17] ,\cnt_latched0_reg_n_0_[16] ,\cnt_latched0_reg_n_0_[15] ,\cnt_latched0_reg_n_0_[14] ,\cnt_latched0_reg_n_0_[13] ,\cnt_latched0_reg_n_0_[12] ,\cnt_latched0_reg_n_0_[11] ,\cnt_latched0_reg_n_0_[10] ,\cnt_latched0_reg_n_0_[9] ,\cnt_latched0_reg_n_0_[8] ,\cnt_latched0_reg_n_0_[7] ,\cnt_latched0_reg_n_0_[6] ,\cnt_latched0_reg_n_0_[5] ,\cnt_latched0_reg_n_0_[4] ,\cnt_latched0_reg_n_0_[3] ,\cnt_latched0_reg_n_0_[2] ,\cnt_latched0_reg_n_0_[1] ,\cnt_latched0_reg_n_0_[0] ,\cnt_latched1_reg_n_0_[63] ,\cnt_latched1_reg_n_0_[62] ,\cnt_latched1_reg_n_0_[61] ,\cnt_latched1_reg_n_0_[60] ,\cnt_latched1_reg_n_0_[59] ,\cnt_latched1_reg_n_0_[58] ,\cnt_latched1_reg_n_0_[57] ,\cnt_latched1_reg_n_0_[56] ,\cnt_latched1_reg_n_0_[55] ,\cnt_latched1_reg_n_0_[54] ,\cnt_latched1_reg_n_0_[53] ,\cnt_latched1_reg_n_0_[52] ,\cnt_latched1_reg_n_0_[51] ,\cnt_latched1_reg_n_0_[50] ,\cnt_latched1_reg_n_0_[49] ,\cnt_latched1_reg_n_0_[48] ,\cnt_latched1_reg_n_0_[47] ,\cnt_latched1_reg_n_0_[46] ,\cnt_latched1_reg_n_0_[45] ,\cnt_latched1_reg_n_0_[44] ,\cnt_latched1_reg_n_0_[43] ,\cnt_latched1_reg_n_0_[42] ,\cnt_latched1_reg_n_0_[41] ,\cnt_latched1_reg_n_0_[40] ,\cnt_latched1_reg_n_0_[39] ,\cnt_latched1_reg_n_0_[38] ,\cnt_latched1_reg_n_0_[37] ,\cnt_latched1_reg_n_0_[36] ,\cnt_latched1_reg_n_0_[35] ,\cnt_latched1_reg_n_0_[34] ,\cnt_latched1_reg_n_0_[33] ,\cnt_latched1_reg_n_0_[32] ,\cnt_latched1_reg_n_0_[31] ,\cnt_latched1_reg_n_0_[30] ,\cnt_latched1_reg_n_0_[29] ,\cnt_latched1_reg_n_0_[28] ,\cnt_latched1_reg_n_0_[27] ,\cnt_latched1_reg_n_0_[26] ,\cnt_latched1_reg_n_0_[25] ,\cnt_latched1_reg_n_0_[24] ,\cnt_latched1_reg_n_0_[23] ,\cnt_latched1_reg_n_0_[22] ,\cnt_latched1_reg_n_0_[21] ,\cnt_latched1_reg_n_0_[20] ,\cnt_latched1_reg_n_0_[19] ,\cnt_latched1_reg_n_0_[18] ,\cnt_latched1_reg_n_0_[17] ,\cnt_latched1_reg_n_0_[16] ,\cnt_latched1_reg_n_0_[15] ,\cnt_latched1_reg_n_0_[14] ,\cnt_latched1_reg_n_0_[13] ,\cnt_latched1_reg_n_0_[12] ,\cnt_latched1_reg_n_0_[11] ,\cnt_latched1_reg_n_0_[10] ,\cnt_latched1_reg_n_0_[9] ,\cnt_latched1_reg_n_0_[8] ,\cnt_latched1_reg_n_0_[7] ,\cnt_latched1_reg_n_0_[6] ,\cnt_latched1_reg_n_0_[5] ,\cnt_latched1_reg_n_0_[4] ,\cnt_latched1_reg_n_0_[3] ,\cnt_latched1_reg_n_0_[2] ,\cnt_latched1_reg_n_0_[1] ,\cnt_latched1_reg_n_0_[0] ,cnt_wr_done_reg_n_0,\cnt_tx_done_reg_n_0_[1] ,\cnt_tx_done_reg_n_0_[0] ,\cnt_rx_done_reg_n_0_[1] ,\cnt_rx_done_reg_n_0_[0] ,p_0_in82_in,\cnt_latch_armed_reg_n_0_[0] ,p_2_in79_in,\cnt_latch_valid_reg_n_0_[0] ,src_in[0]}),
        .src_rcv(sync_ts_clk_to_aclk_src_done),
        .src_send(sync_ts_clk_to_aclk_src_req));
  LUT3 #(
    .INIT(8'hB8)) 
    ts_clk_to_aclk_sync_i_1
       (.I0(tx_dma_data_ready_ovr_val[1]),
        .I1(tx_dma_data_ready_ovr_en[1]),
        .I2(src_in[12]),
        .O(sync_ts_clk_to_aclk_in[223]));
  LUT3 #(
    .INIT(8'hB8)) 
    ts_clk_to_aclk_sync_i_2
       (.I0(tx_dma_data_ready_ovr_val[0]),
        .I1(tx_dma_data_ready_ovr_en[0]),
        .I2(src_in[11]),
        .O(sync_ts_clk_to_aclk_in[222]));
  LUT3 #(
    .INIT(8'hB8)) 
    ts_clk_to_aclk_sync_i_3
       (.I0(rx_dma_xfer_req_ovr_val[1]),
        .I1(rx_dma_xfer_req_ovr_en[1]),
        .I2(src_in[10]),
        .O(sync_ts_clk_to_aclk_in[219]));
  LUT3 #(
    .INIT(8'hB8)) 
    ts_clk_to_aclk_sync_i_4
       (.I0(rx_dma_xfer_req_ovr_val[0]),
        .I1(rx_dma_xfer_req_ovr_en[0]),
        .I2(src_in[9]),
        .O(sync_ts_clk_to_aclk_in[218]));
  LUT3 #(
    .INIT(8'hB8)) 
    ts_clk_to_aclk_sync_i_5
       (.I0(tx_data_ready_ovr_val[1]),
        .I1(tx_data_ready_ovr_en[1]),
        .I2(src_in[8]),
        .O(sync_ts_clk_to_aclk_in[215]));
  LUT3 #(
    .INIT(8'hB8)) 
    ts_clk_to_aclk_sync_i_6
       (.I0(tx_data_ready_ovr_val[0]),
        .I1(tx_data_ready_ovr_en[0]),
        .I2(src_in[7]),
        .O(sync_ts_clk_to_aclk_in[214]));
  LUT3 #(
    .INIT(8'hB8)) 
    ts_clk_to_aclk_sync_i_7
       (.I0(rx_data_ready_ovr_val[1]),
        .I1(rx_data_ready_ovr_en[1]),
        .I2(src_in[6]),
        .O(sync_ts_clk_to_aclk_in[211]));
  LUT3 #(
    .INIT(8'hB8)) 
    ts_clk_to_aclk_sync_i_8
       (.I0(rx_data_ready_ovr_val[0]),
        .I1(rx_data_ready_ovr_en[0]),
        .I2(src_in[5]),
        .O(sync_ts_clk_to_aclk_in[210]));
  LUT5 #(
    .INIT(32'h08080008)) 
    ts_clk_tx_en_i_1
       (.I0(src_in[0]),
        .I1(ts_clk_tx_synced_reg_n_0),
        .I2(ts_clk_resync_req),
        .I3(ts_clk_tx_en_reg_0),
        .I4(ts_clk_sync_bypass),
        .O(ts_clk_tx_en_i_1_n_0));
  (* X_INTERFACE_IGNORE = "true" *) 
  FDRE ts_clk_tx_en_reg
       (.C(ts_clk),
        .CE(1'b1),
        .D(ts_clk_tx_en_i_1_n_0),
        .Q(ts_clk_tx_en_reg_0),
        .R(1'b0));
  FDRE ts_clk_tx_synced_a_reg
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[227]),
        .Q(p_20_in[26]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h00FE)) 
    ts_clk_tx_synced_i_1
       (.I0(ts_clk_tx_synced_reg_n_0),
        .I1(src_in[8]),
        .I2(src_in[7]),
        .I3(ts_clk_resync_req),
        .O(ts_clk_tx_synced_i_1_n_0));
  FDRE ts_clk_tx_synced_reg
       (.C(ts_clk),
        .CE(1'b1),
        .D(ts_clk_tx_synced_i_1_n_0),
        .Q(ts_clk_tx_synced_reg_n_0),
        .R(clear));
  FDRE ts_resetn_a_reg
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[0]),
        .Q(ts_resetn_a),
        .R(1'b0));
  FDRE \tx_data_ready_a_reg[0] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[216]),
        .Q(tx_data_ready_a[0]),
        .R(1'b0));
  FDRE \tx_data_ready_a_reg[1] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[217]),
        .Q(tx_data_ready_a[1]),
        .R(1'b0));
  FDRE \tx_data_ready_ovr_a_reg[0] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[214]),
        .Q(tx_data_ready_ovr_a[0]),
        .R(1'b0));
  FDRE \tx_data_ready_ovr_a_reg[1] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[215]),
        .Q(tx_data_ready_ovr_a[1]),
        .R(1'b0));
  FDRE \tx_data_ready_ovr_en_a_reg[0] 
       (.C(aclk),
        .CE(\rx_data_ready_ovr_val_a[0]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(tx_data_ready_ovr_en_a[0]),
        .R(p_0_in__0));
  FDRE \tx_data_ready_ovr_en_a_reg[1] 
       (.C(aclk),
        .CE(\rx_data_ready_ovr_val_a[1]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(tx_data_ready_ovr_en_a[1]),
        .R(p_0_in__0));
  FDRE \tx_data_ready_ovr_en_reg[0] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[340]),
        .Q(tx_data_ready_ovr_en[0]),
        .R(1'b0));
  FDRE \tx_data_ready_ovr_en_reg[1] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[341]),
        .Q(tx_data_ready_ovr_en[1]),
        .R(1'b0));
  FDRE \tx_data_ready_ovr_val_a_reg[0] 
       (.C(aclk),
        .CE(\rx_data_ready_ovr_val_a[0]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(tx_data_ready_ovr_val_a[0]),
        .R(p_0_in__0));
  FDRE \tx_data_ready_ovr_val_a_reg[1] 
       (.C(aclk),
        .CE(\rx_data_ready_ovr_val_a[1]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(tx_data_ready_ovr_val_a[1]),
        .R(p_0_in__0));
  FDRE \tx_data_ready_ovr_val_reg[0] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[338]),
        .Q(tx_data_ready_ovr_val[0]),
        .R(1'b0));
  FDRE \tx_data_ready_ovr_val_reg[1] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[339]),
        .Q(tx_data_ready_ovr_val[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \tx_data_ready_stky_a[0]_i_1 
       (.I0(\tx_dma_data_ready_stky_a[0]_i_2_n_0 ),
        .I1(\tx_data_ready_stky_a_reg_n_0_[0] ),
        .I2(tx_data_ready_a[0]),
        .O(\tx_data_ready_stky_a[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \tx_data_ready_stky_a[1]_i_1 
       (.I0(\tx_dma_data_ready_stky_a[1]_i_2_n_0 ),
        .I1(\tx_data_ready_stky_a_reg_n_0_[1] ),
        .I2(tx_data_ready_a[1]),
        .O(\tx_data_ready_stky_a[1]_i_1_n_0 ));
  FDRE \tx_data_ready_stky_a_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\tx_data_ready_stky_a[0]_i_1_n_0 ),
        .Q(\tx_data_ready_stky_a_reg_n_0_[0] ),
        .R(p_0_in__0));
  FDRE \tx_data_ready_stky_a_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\tx_data_ready_stky_a[1]_i_1_n_0 ),
        .Q(\tx_data_ready_stky_a_reg_n_0_[1] ),
        .R(p_0_in__0));
  FDRE \tx_dma_data_ready_a_reg[0] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[224]),
        .Q(tx_dma_data_ready_a[0]),
        .R(1'b0));
  FDRE \tx_dma_data_ready_a_reg[1] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[225]),
        .Q(tx_dma_data_ready_a[1]),
        .R(1'b0));
  FDRE \tx_dma_data_ready_ovr_a_reg[0] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[222]),
        .Q(tx_dma_data_ready_ovr_a[0]),
        .R(1'b0));
  FDRE \tx_dma_data_ready_ovr_a_reg[1] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[223]),
        .Q(tx_dma_data_ready_ovr_a[1]),
        .R(1'b0));
  FDRE \tx_dma_data_ready_ovr_en_a_reg[0] 
       (.C(aclk),
        .CE(\rx_data_ready_ovr_val_a[0]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(\tx_dma_data_ready_ovr_en_a_reg_n_0_[0] ),
        .R(p_0_in__0));
  FDRE \tx_dma_data_ready_ovr_en_a_reg[1] 
       (.C(aclk),
        .CE(\rx_data_ready_ovr_val_a[1]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(\tx_dma_data_ready_ovr_en_a_reg_n_0_[1] ),
        .R(p_0_in__0));
  FDRE \tx_dma_data_ready_ovr_en_reg[0] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[348]),
        .Q(tx_dma_data_ready_ovr_en[0]),
        .R(1'b0));
  FDRE \tx_dma_data_ready_ovr_en_reg[1] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[349]),
        .Q(tx_dma_data_ready_ovr_en[1]),
        .R(1'b0));
  FDRE \tx_dma_data_ready_ovr_val_a_reg[0] 
       (.C(aclk),
        .CE(\rx_data_ready_ovr_val_a[0]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(tx_dma_data_ready_ovr_val_a[0]),
        .R(p_0_in__0));
  FDRE \tx_dma_data_ready_ovr_val_a_reg[1] 
       (.C(aclk),
        .CE(\rx_data_ready_ovr_val_a[1]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(tx_dma_data_ready_ovr_val_a[1]),
        .R(p_0_in__0));
  FDRE \tx_dma_data_ready_ovr_val_reg[0] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[346]),
        .Q(tx_dma_data_ready_ovr_val[0]),
        .R(1'b0));
  FDRE \tx_dma_data_ready_ovr_val_reg[1] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[347]),
        .Q(tx_dma_data_ready_ovr_val[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \tx_dma_data_ready_stky_a[0]_i_1 
       (.I0(\tx_dma_data_ready_stky_a[0]_i_2_n_0 ),
        .I1(\tx_dma_data_ready_stky_a_reg_n_0_[0] ),
        .I2(tx_dma_data_ready_a[0]),
        .O(\tx_dma_data_ready_stky_a[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
    \tx_dma_data_ready_stky_a[0]_i_2 
       (.I0(s_axi_araddr[4]),
        .I1(s_axi_araddr[3]),
        .I2(s_axi_araddr[2]),
        .I3(\tx_dma_data_ready_stky_a[1]_i_3_n_0 ),
        .I4(s_axi_rvalid_reg_0),
        .I5(s_axi_arvalid),
        .O(\tx_dma_data_ready_stky_a[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \tx_dma_data_ready_stky_a[1]_i_1 
       (.I0(\tx_dma_data_ready_stky_a[1]_i_2_n_0 ),
        .I1(\tx_dma_data_ready_stky_a_reg_n_0_[1] ),
        .I2(tx_dma_data_ready_a[1]),
        .O(\tx_dma_data_ready_stky_a[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF7FFFFFFFFFF)) 
    \tx_dma_data_ready_stky_a[1]_i_2 
       (.I0(s_axi_araddr[3]),
        .I1(s_axi_araddr[4]),
        .I2(s_axi_araddr[2]),
        .I3(\tx_dma_data_ready_stky_a[1]_i_3_n_0 ),
        .I4(s_axi_rvalid_reg_0),
        .I5(s_axi_arvalid),
        .O(\tx_dma_data_ready_stky_a[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \tx_dma_data_ready_stky_a[1]_i_3 
       (.I0(s_axi_araddr[0]),
        .I1(s_axi_araddr[1]),
        .O(\tx_dma_data_ready_stky_a[1]_i_3_n_0 ));
  FDRE \tx_dma_data_ready_stky_a_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\tx_dma_data_ready_stky_a[0]_i_1_n_0 ),
        .Q(\tx_dma_data_ready_stky_a_reg_n_0_[0] ),
        .R(p_0_in__0));
  FDRE \tx_dma_data_ready_stky_a_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\tx_dma_data_ready_stky_a[1]_i_1_n_0 ),
        .Q(\tx_dma_data_ready_stky_a_reg_n_0_[1] ),
        .R(p_0_in__0));
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
    .INIT(64'h8008200240041001)) 
    tx_enable1_carry__0_i_1
       (.I0(cnt_reg[23]),
        .I1(cnt_reg[22]),
        .I2(cnt_reg[21]),
        .I3(cnt_tx1[21]),
        .I4(cnt_tx1[22]),
        .I5(cnt_tx1[23]),
        .O(tx_enable1_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    tx_enable1_carry__0_i_2
       (.I0(cnt_reg[20]),
        .I1(cnt_reg[19]),
        .I2(cnt_reg[18]),
        .I3(cnt_tx1[18]),
        .I4(cnt_tx1[19]),
        .I5(cnt_tx1[20]),
        .O(tx_enable1_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    tx_enable1_carry__0_i_3
       (.I0(cnt_reg[17]),
        .I1(cnt_reg[16]),
        .I2(cnt_reg[15]),
        .I3(cnt_tx1[15]),
        .I4(cnt_tx1[16]),
        .I5(cnt_tx1[17]),
        .O(tx_enable1_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    tx_enable1_carry__0_i_4
       (.I0(cnt_reg[14]),
        .I1(cnt_reg[13]),
        .I2(cnt_reg[12]),
        .I3(cnt_tx1[12]),
        .I4(cnt_tx1[13]),
        .I5(cnt_tx1[14]),
        .O(tx_enable1_carry__0_i_4_n_0));
  CARRY4 tx_enable1_carry__1
       (.CI(tx_enable1_carry__0_n_0),
        .CO({tx_enable1_carry__1_n_0,tx_enable1_carry__1_n_1,tx_enable1_carry__1_n_2,tx_enable1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_tx_enable1_carry__1_O_UNCONNECTED[3:0]),
        .S({tx_enable1_carry__1_i_1_n_0,tx_enable1_carry__1_i_2_n_0,tx_enable1_carry__1_i_3_n_0,tx_enable1_carry__1_i_4_n_0}));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    tx_enable1_carry__1_i_1
       (.I0(cnt_reg[35]),
        .I1(cnt_reg[34]),
        .I2(cnt_reg[33]),
        .I3(cnt_tx1[33]),
        .I4(cnt_tx1[34]),
        .I5(cnt_tx1[35]),
        .O(tx_enable1_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    tx_enable1_carry__1_i_2
       (.I0(cnt_reg[32]),
        .I1(cnt_reg[31]),
        .I2(cnt_reg[30]),
        .I3(cnt_tx1[30]),
        .I4(cnt_tx1[31]),
        .I5(cnt_tx1[32]),
        .O(tx_enable1_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    tx_enable1_carry__1_i_3
       (.I0(cnt_reg[29]),
        .I1(cnt_reg[28]),
        .I2(cnt_reg[27]),
        .I3(cnt_tx1[27]),
        .I4(cnt_tx1[28]),
        .I5(cnt_tx1[29]),
        .O(tx_enable1_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    tx_enable1_carry__1_i_4
       (.I0(cnt_reg[26]),
        .I1(cnt_reg[25]),
        .I2(cnt_reg[24]),
        .I3(cnt_tx1[24]),
        .I4(cnt_tx1[25]),
        .I5(cnt_tx1[26]),
        .O(tx_enable1_carry__1_i_4_n_0));
  CARRY4 tx_enable1_carry__2
       (.CI(tx_enable1_carry__1_n_0),
        .CO({tx_enable1_carry__2_n_0,tx_enable1_carry__2_n_1,tx_enable1_carry__2_n_2,tx_enable1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_tx_enable1_carry__2_O_UNCONNECTED[3:0]),
        .S({tx_enable1_carry__2_i_1_n_0,tx_enable1_carry__2_i_2_n_0,tx_enable1_carry__2_i_3_n_0,tx_enable1_carry__2_i_4_n_0}));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    tx_enable1_carry__2_i_1
       (.I0(cnt_reg[47]),
        .I1(cnt_reg[46]),
        .I2(cnt_reg[45]),
        .I3(cnt_tx1[45]),
        .I4(cnt_tx1[46]),
        .I5(cnt_tx1[47]),
        .O(tx_enable1_carry__2_i_1_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    tx_enable1_carry__2_i_2
       (.I0(cnt_reg[44]),
        .I1(cnt_reg[43]),
        .I2(cnt_reg[42]),
        .I3(cnt_tx1[42]),
        .I4(cnt_tx1[43]),
        .I5(cnt_tx1[44]),
        .O(tx_enable1_carry__2_i_2_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    tx_enable1_carry__2_i_3
       (.I0(cnt_reg[41]),
        .I1(cnt_reg[40]),
        .I2(cnt_reg[39]),
        .I3(cnt_tx1[39]),
        .I4(cnt_tx1[40]),
        .I5(cnt_tx1[41]),
        .O(tx_enable1_carry__2_i_3_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    tx_enable1_carry__2_i_4
       (.I0(cnt_reg[38]),
        .I1(cnt_reg[37]),
        .I2(cnt_reg[36]),
        .I3(cnt_tx1[36]),
        .I4(cnt_tx1[37]),
        .I5(cnt_tx1[38]),
        .O(tx_enable1_carry__2_i_4_n_0));
  CARRY4 tx_enable1_carry__3
       (.CI(tx_enable1_carry__2_n_0),
        .CO({tx_enable1_carry__3_n_0,tx_enable1_carry__3_n_1,tx_enable1_carry__3_n_2,tx_enable1_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_tx_enable1_carry__3_O_UNCONNECTED[3:0]),
        .S({tx_enable1_carry__3_i_1_n_0,tx_enable1_carry__3_i_2_n_0,tx_enable1_carry__3_i_3_n_0,tx_enable1_carry__3_i_4_n_0}));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    tx_enable1_carry__3_i_1
       (.I0(cnt_reg[59]),
        .I1(cnt_reg[58]),
        .I2(cnt_reg[57]),
        .I3(cnt_tx1[57]),
        .I4(cnt_tx1[58]),
        .I5(cnt_tx1[59]),
        .O(tx_enable1_carry__3_i_1_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    tx_enable1_carry__3_i_2
       (.I0(cnt_reg[56]),
        .I1(cnt_reg[55]),
        .I2(cnt_reg[54]),
        .I3(cnt_tx1[54]),
        .I4(cnt_tx1[55]),
        .I5(cnt_tx1[56]),
        .O(tx_enable1_carry__3_i_2_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    tx_enable1_carry__3_i_3
       (.I0(cnt_reg[53]),
        .I1(cnt_reg[52]),
        .I2(cnt_reg[51]),
        .I3(cnt_tx1[51]),
        .I4(cnt_tx1[52]),
        .I5(cnt_tx1[53]),
        .O(tx_enable1_carry__3_i_3_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    tx_enable1_carry__3_i_4
       (.I0(cnt_reg[50]),
        .I1(cnt_reg[49]),
        .I2(cnt_reg[48]),
        .I3(cnt_tx1[48]),
        .I4(cnt_tx1[49]),
        .I5(cnt_tx1[50]),
        .O(tx_enable1_carry__3_i_4_n_0));
  CARRY4 tx_enable1_carry__4
       (.CI(tx_enable1_carry__3_n_0),
        .CO({NLW_tx_enable1_carry__4_CO_UNCONNECTED[3:2],tx_enable11_out,tx_enable1_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_tx_enable1_carry__4_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,tx_enable1_carry__4_i_1_n_0,tx_enable1_carry__4_i_2_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    tx_enable1_carry__4_i_1
       (.I0(cnt_tx1[63]),
        .I1(cnt_reg[63]),
        .O(tx_enable1_carry__4_i_1_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    tx_enable1_carry__4_i_2
       (.I0(cnt_reg[62]),
        .I1(cnt_reg[61]),
        .I2(cnt_reg[60]),
        .I3(cnt_tx1[60]),
        .I4(cnt_tx1[61]),
        .I5(cnt_tx1[62]),
        .O(tx_enable1_carry__4_i_2_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    tx_enable1_carry_i_1
       (.I0(cnt_reg[11]),
        .I1(cnt_reg[10]),
        .I2(cnt_reg[9]),
        .I3(cnt_tx1[9]),
        .I4(cnt_tx1[10]),
        .I5(cnt_tx1[11]),
        .O(tx_enable1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    tx_enable1_carry_i_2
       (.I0(cnt_reg[8]),
        .I1(cnt_reg[7]),
        .I2(cnt_reg[6]),
        .I3(cnt_tx1[6]),
        .I4(cnt_tx1[7]),
        .I5(cnt_tx1[8]),
        .O(tx_enable1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    tx_enable1_carry_i_3
       (.I0(cnt_reg[5]),
        .I1(cnt_reg[4]),
        .I2(cnt_reg[3]),
        .I3(cnt_tx1[3]),
        .I4(cnt_tx1[4]),
        .I5(cnt_tx1[5]),
        .O(tx_enable1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h8008200240041001)) 
    tx_enable1_carry_i_4
       (.I0(cnt_reg[2]),
        .I1(cnt_reg[1]),
        .I2(cnt_reg[0]),
        .I3(cnt_tx1[0]),
        .I4(cnt_tx1[1]),
        .I5(cnt_tx1[2]),
        .O(tx_enable1_carry_i_4_n_0));
  CARRY4 \tx_enable1_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\tx_enable1_inferred__0/i__carry_n_0 ,\tx_enable1_inferred__0/i__carry_n_1 ,\tx_enable1_inferred__0/i__carry_n_2 ,\tx_enable1_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_tx_enable1_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}));
  CARRY4 \tx_enable1_inferred__0/i__carry__0 
       (.CI(\tx_enable1_inferred__0/i__carry_n_0 ),
        .CO({\tx_enable1_inferred__0/i__carry__0_n_0 ,\tx_enable1_inferred__0/i__carry__0_n_1 ,\tx_enable1_inferred__0/i__carry__0_n_2 ,\tx_enable1_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_tx_enable1_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  CARRY4 \tx_enable1_inferred__0/i__carry__1 
       (.CI(\tx_enable1_inferred__0/i__carry__0_n_0 ),
        .CO({\tx_enable1_inferred__0/i__carry__1_n_0 ,\tx_enable1_inferred__0/i__carry__1_n_1 ,\tx_enable1_inferred__0/i__carry__1_n_2 ,\tx_enable1_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_tx_enable1_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}));
  CARRY4 \tx_enable1_inferred__0/i__carry__2 
       (.CI(\tx_enable1_inferred__0/i__carry__1_n_0 ),
        .CO({\tx_enable1_inferred__0/i__carry__2_n_0 ,\tx_enable1_inferred__0/i__carry__2_n_1 ,\tx_enable1_inferred__0/i__carry__2_n_2 ,\tx_enable1_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_tx_enable1_inferred__0/i__carry__2_O_UNCONNECTED [3:0]),
        .S({i__carry__2_i_1_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0,i__carry__2_i_4_n_0}));
  CARRY4 \tx_enable1_inferred__0/i__carry__3 
       (.CI(\tx_enable1_inferred__0/i__carry__2_n_0 ),
        .CO({\tx_enable1_inferred__0/i__carry__3_n_0 ,\tx_enable1_inferred__0/i__carry__3_n_1 ,\tx_enable1_inferred__0/i__carry__3_n_2 ,\tx_enable1_inferred__0/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_tx_enable1_inferred__0/i__carry__3_O_UNCONNECTED [3:0]),
        .S({i__carry__3_i_1_n_0,i__carry__3_i_2_n_0,i__carry__3_i_3_n_0,i__carry__3_i_4_n_0}));
  CARRY4 \tx_enable1_inferred__0/i__carry__4 
       (.CI(\tx_enable1_inferred__0/i__carry__3_n_0 ),
        .CO({\NLW_tx_enable1_inferred__0/i__carry__4_CO_UNCONNECTED [3:2],tx_enable1,\tx_enable1_inferred__0/i__carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_tx_enable1_inferred__0/i__carry__4_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,i__carry__4_i_1_n_0,i__carry__4_i_2_n_0}));
  LUT6 #(
    .INIT(64'hCFFFAAAA3000AAAA)) 
    \tx_enable[0]_i_1 
       (.I0(tx_enable_man[0]),
        .I1(\cnt_tx_done_reg_n_0_[0] ),
        .I2(ts_clk_tx_en_reg_0),
        .I3(tx_enable1),
        .I4(\cnt_tx_en_reg_n_0_[0] ),
        .I5(tx_enable[0]),
        .O(\tx_enable[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \tx_enable[1]_i_1 
       (.I0(src_in[0]),
        .O(clear));
  LUT6 #(
    .INIT(64'hFF3FAAAA00C0AAAA)) 
    \tx_enable[1]_i_2 
       (.I0(tx_enable_man[1]),
        .I1(tx_enable11_out),
        .I2(ts_clk_tx_en_reg_0),
        .I3(\cnt_tx_done_reg_n_0_[1] ),
        .I4(p_2_in),
        .I5(tx_enable[1]),
        .O(\tx_enable[1]_i_2_n_0 ));
  FDRE \tx_enable_a_reg[0] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[204]),
        .Q(tx_enable_man_a),
        .R(1'b0));
  FDRE \tx_enable_a_reg[1] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[205]),
        .Q(p_0_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hC8CCCCCCC8C0C0C0)) 
    \tx_enable_man_a[0]_i_1 
       (.I0(tx_enable_man_a),
        .I1(\tx_enable_man_a[0]_i_2_n_0 ),
        .I2(\tx_enable_man_a[0]_i_3_n_0 ),
        .I3(\cnt_tx_done_a_reg_n_0_[0] ),
        .I4(\cnt_tx_en_a_reg_n_0_[0] ),
        .I5(\tx_enable_man_a_reg_n_0_[0] ),
        .O(\tx_enable_man_a[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \tx_enable_man_a[0]_i_2 
       (.I0(s_axi_wdata[1]),
        .I1(\cnt_tx_en_a_reg_n_0_[0] ),
        .I2(s_axi_wstrb[0]),
        .I3(\cnt_latch_arm_req_a[0]_i_2_n_0 ),
        .O(\tx_enable_man_a[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \tx_enable_man_a[0]_i_3 
       (.I0(\cnt_latch_arm_req_a[0]_i_2_n_0 ),
        .I1(s_axi_wdata[0]),
        .I2(\cnt_tx_en_a_reg_n_0_[0] ),
        .I3(s_axi_wstrb[0]),
        .O(\tx_enable_man_a[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00FBBBBB00F88888)) 
    \tx_enable_man_a[1]_i_1 
       (.I0(p_0_in),
        .I1(\tx_enable_man_a[1]_i_2_n_0 ),
        .I2(s_axi_wdata[0]),
        .I3(s_axi_wdata[1]),
        .I4(\tx_enable_man_a[1]_i_3_n_0 ),
        .I5(\tx_enable_man_a_reg_n_0_[1] ),
        .O(\tx_enable_man_a[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tx_enable_man_a[1]_i_2 
       (.I0(p_0_in68_in),
        .I1(p_1_in69_in),
        .O(\tx_enable_man_a[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \tx_enable_man_a[1]_i_3 
       (.I0(p_1_in69_in),
        .I1(\cnt_rx_en_a[1]_i_2_n_0 ),
        .O(\tx_enable_man_a[1]_i_3_n_0 ));
  FDRE \tx_enable_man_a_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\tx_enable_man_a[0]_i_1_n_0 ),
        .Q(\tx_enable_man_a_reg_n_0_[0] ),
        .R(p_0_in__0));
  FDRE \tx_enable_man_a_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\tx_enable_man_a[1]_i_1_n_0 ),
        .Q(\tx_enable_man_a_reg_n_0_[1] ),
        .R(p_0_in__0));
  FDRE \tx_enable_man_reg[0] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[332]),
        .Q(tx_enable_man[0]),
        .R(1'b0));
  FDRE \tx_enable_man_reg[1] 
       (.C(ts_clk),
        .CE(sync_aclk_to_ts_clk_dst_req),
        .D(sync_aclk_to_ts_clk_out[333]),
        .Q(tx_enable_man[1]),
        .R(1'b0));
  (* X_INTERFACE_IGNORE = "true" *) 
  FDRE \tx_enable_reg[0] 
       (.C(ts_clk),
        .CE(1'b1),
        .D(\tx_enable[0]_i_1_n_0 ),
        .Q(tx_enable[0]),
        .R(clear));
  (* X_INTERFACE_IGNORE = "true" *) 
  FDRE \tx_enable_reg[1] 
       (.C(ts_clk),
        .CE(1'b1),
        .D(\tx_enable[1]_i_2_n_0 ),
        .Q(tx_enable[1]),
        .R(clear));
  FDRE \tx_fifo_underflow_a_reg[0] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[208]),
        .Q(tx_fifo_underflow_a[0]),
        .R(1'b0));
  FDRE \tx_fifo_underflow_a_reg[1] 
       (.C(aclk),
        .CE(sync_ts_clk_to_aclk_dst_req),
        .D(sync_ts_clk_to_aclk_out[209]),
        .Q(tx_fifo_underflow_a[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \tx_fifo_underflow_stky_a[0]_i_1 
       (.I0(\tx_dma_data_ready_stky_a[0]_i_2_n_0 ),
        .I1(\tx_fifo_underflow_stky_a_reg_n_0_[0] ),
        .I2(tx_fifo_underflow_a[0]),
        .O(\tx_fifo_underflow_stky_a[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \tx_fifo_underflow_stky_a[1]_i_1 
       (.I0(\tx_dma_data_ready_stky_a[1]_i_2_n_0 ),
        .I1(\tx_fifo_underflow_stky_a_reg_n_0_[1] ),
        .I2(tx_fifo_underflow_a[1]),
        .O(\tx_fifo_underflow_stky_a[1]_i_1_n_0 ));
  FDRE \tx_fifo_underflow_stky_a_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\tx_fifo_underflow_stky_a[0]_i_1_n_0 ),
        .Q(\tx_fifo_underflow_stky_a_reg_n_0_[0] ),
        .R(p_0_in__0));
  FDRE \tx_fifo_underflow_stky_a_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\tx_fifo_underflow_stky_a[1]_i_1_n_0 ),
        .Q(\tx_fifo_underflow_stky_a_reg_n_0_[1] ),
        .R(p_0_in__0));
endmodule

(* DEST_EXT_HSK = "0" *) (* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "1" *) 
(* ORIG_REF_NAME = "xpm_cdc_handshake" *) (* SIM_ASSERT_CHK = "1" *) (* SRC_SYNC_FF = "2" *) 
(* VERSION = "0" *) (* WIDTH = "352" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "HANDSHAKE" *) 
module icyradio_axi_rf_timestamping_0_xpm_cdc_handshake
   (src_clk,
    src_in,
    src_send,
    src_rcv,
    dest_clk,
    dest_out,
    dest_req,
    dest_ack);
  input src_clk;
  input [351:0]src_in;
  input src_send;
  output src_rcv;
  input dest_clk;
  output [351:0]dest_out;
  output dest_req;
  input dest_ack;

  wire dest_clk;
  (* DIRECT_ENABLE *) wire dest_hsdata_en;
  (* RTL_KEEP = "true" *) (* xpm_cdc = "HANDSHAKE" *) wire [351:0]dest_hsdata_ff;
  wire dest_req;
  wire dest_req_ff;
  wire dest_req_nxt;
  wire p_0_in;
  wire src_clk;
  wire [351:0]src_hsdata_ff;
  wire [351:0]src_in;
  wire src_rcv;
  wire src_send;
  wire src_sendd_ff;

  assign dest_out[351:0] = dest_hsdata_ff;
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[0] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[0]),
        .Q(dest_hsdata_ff[0]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[100] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[100]),
        .Q(dest_hsdata_ff[100]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[101] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[101]),
        .Q(dest_hsdata_ff[101]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[102] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[102]),
        .Q(dest_hsdata_ff[102]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[103] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[103]),
        .Q(dest_hsdata_ff[103]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[104] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[104]),
        .Q(dest_hsdata_ff[104]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[105] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[105]),
        .Q(dest_hsdata_ff[105]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[106] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[106]),
        .Q(dest_hsdata_ff[106]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[107] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[107]),
        .Q(dest_hsdata_ff[107]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[108] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[108]),
        .Q(dest_hsdata_ff[108]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[109] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[109]),
        .Q(dest_hsdata_ff[109]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[10] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[10]),
        .Q(dest_hsdata_ff[10]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[110] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[110]),
        .Q(dest_hsdata_ff[110]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[111] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[111]),
        .Q(dest_hsdata_ff[111]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[112] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[112]),
        .Q(dest_hsdata_ff[112]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[113] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[113]),
        .Q(dest_hsdata_ff[113]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[114] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[114]),
        .Q(dest_hsdata_ff[114]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[115] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[115]),
        .Q(dest_hsdata_ff[115]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[116] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[116]),
        .Q(dest_hsdata_ff[116]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[117] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[117]),
        .Q(dest_hsdata_ff[117]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[118] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[118]),
        .Q(dest_hsdata_ff[118]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[119] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[119]),
        .Q(dest_hsdata_ff[119]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[11] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[11]),
        .Q(dest_hsdata_ff[11]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[120] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[120]),
        .Q(dest_hsdata_ff[120]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[121] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[121]),
        .Q(dest_hsdata_ff[121]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[122] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[122]),
        .Q(dest_hsdata_ff[122]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[123] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[123]),
        .Q(dest_hsdata_ff[123]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[124] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[124]),
        .Q(dest_hsdata_ff[124]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[125] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[125]),
        .Q(dest_hsdata_ff[125]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[126] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[126]),
        .Q(dest_hsdata_ff[126]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[127] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[127]),
        .Q(dest_hsdata_ff[127]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[128] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[128]),
        .Q(dest_hsdata_ff[128]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[129] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[129]),
        .Q(dest_hsdata_ff[129]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[12] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[12]),
        .Q(dest_hsdata_ff[12]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[130] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[130]),
        .Q(dest_hsdata_ff[130]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[131] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[131]),
        .Q(dest_hsdata_ff[131]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[132] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[132]),
        .Q(dest_hsdata_ff[132]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[133] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[133]),
        .Q(dest_hsdata_ff[133]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[134] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[134]),
        .Q(dest_hsdata_ff[134]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[135] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[135]),
        .Q(dest_hsdata_ff[135]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[136] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[136]),
        .Q(dest_hsdata_ff[136]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[137] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[137]),
        .Q(dest_hsdata_ff[137]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[138] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[138]),
        .Q(dest_hsdata_ff[138]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[139] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[139]),
        .Q(dest_hsdata_ff[139]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[13] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[13]),
        .Q(dest_hsdata_ff[13]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[140] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[140]),
        .Q(dest_hsdata_ff[140]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[141] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[141]),
        .Q(dest_hsdata_ff[141]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[142] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[142]),
        .Q(dest_hsdata_ff[142]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[143] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[143]),
        .Q(dest_hsdata_ff[143]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[144] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[144]),
        .Q(dest_hsdata_ff[144]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[145] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[145]),
        .Q(dest_hsdata_ff[145]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[146] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[146]),
        .Q(dest_hsdata_ff[146]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[147] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[147]),
        .Q(dest_hsdata_ff[147]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[148] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[148]),
        .Q(dest_hsdata_ff[148]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[149] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[149]),
        .Q(dest_hsdata_ff[149]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[14] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[14]),
        .Q(dest_hsdata_ff[14]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[150] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[150]),
        .Q(dest_hsdata_ff[150]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[151] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[151]),
        .Q(dest_hsdata_ff[151]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[152] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[152]),
        .Q(dest_hsdata_ff[152]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[153] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[153]),
        .Q(dest_hsdata_ff[153]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[154] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[154]),
        .Q(dest_hsdata_ff[154]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[155] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[155]),
        .Q(dest_hsdata_ff[155]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[156] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[156]),
        .Q(dest_hsdata_ff[156]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[157] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[157]),
        .Q(dest_hsdata_ff[157]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[158] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[158]),
        .Q(dest_hsdata_ff[158]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[159] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[159]),
        .Q(dest_hsdata_ff[159]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[15] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[15]),
        .Q(dest_hsdata_ff[15]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[160] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[160]),
        .Q(dest_hsdata_ff[160]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[161] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[161]),
        .Q(dest_hsdata_ff[161]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[162] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[162]),
        .Q(dest_hsdata_ff[162]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[163] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[163]),
        .Q(dest_hsdata_ff[163]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[164] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[164]),
        .Q(dest_hsdata_ff[164]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[165] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[165]),
        .Q(dest_hsdata_ff[165]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[166] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[166]),
        .Q(dest_hsdata_ff[166]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[167] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[167]),
        .Q(dest_hsdata_ff[167]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[168] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[168]),
        .Q(dest_hsdata_ff[168]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[169] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[169]),
        .Q(dest_hsdata_ff[169]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[16] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[16]),
        .Q(dest_hsdata_ff[16]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[170] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[170]),
        .Q(dest_hsdata_ff[170]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[171] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[171]),
        .Q(dest_hsdata_ff[171]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[172] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[172]),
        .Q(dest_hsdata_ff[172]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[173] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[173]),
        .Q(dest_hsdata_ff[173]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[174] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[174]),
        .Q(dest_hsdata_ff[174]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[175] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[175]),
        .Q(dest_hsdata_ff[175]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[176] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[176]),
        .Q(dest_hsdata_ff[176]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[177] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[177]),
        .Q(dest_hsdata_ff[177]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[178] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[178]),
        .Q(dest_hsdata_ff[178]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[179] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[179]),
        .Q(dest_hsdata_ff[179]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[17] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[17]),
        .Q(dest_hsdata_ff[17]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[180] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[180]),
        .Q(dest_hsdata_ff[180]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[181] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[181]),
        .Q(dest_hsdata_ff[181]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[182] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[182]),
        .Q(dest_hsdata_ff[182]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[183] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[183]),
        .Q(dest_hsdata_ff[183]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[184] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[184]),
        .Q(dest_hsdata_ff[184]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[185] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[185]),
        .Q(dest_hsdata_ff[185]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[186] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[186]),
        .Q(dest_hsdata_ff[186]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[187] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[187]),
        .Q(dest_hsdata_ff[187]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[188] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[188]),
        .Q(dest_hsdata_ff[188]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[189] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[189]),
        .Q(dest_hsdata_ff[189]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[18] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[18]),
        .Q(dest_hsdata_ff[18]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[190] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[190]),
        .Q(dest_hsdata_ff[190]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[191] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[191]),
        .Q(dest_hsdata_ff[191]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[192] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[192]),
        .Q(dest_hsdata_ff[192]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[193] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[193]),
        .Q(dest_hsdata_ff[193]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[194] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[194]),
        .Q(dest_hsdata_ff[194]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[195] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[195]),
        .Q(dest_hsdata_ff[195]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[196] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[196]),
        .Q(dest_hsdata_ff[196]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[197] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[197]),
        .Q(dest_hsdata_ff[197]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[198] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[198]),
        .Q(dest_hsdata_ff[198]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[199] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[199]),
        .Q(dest_hsdata_ff[199]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[19] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[19]),
        .Q(dest_hsdata_ff[19]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[1] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[1]),
        .Q(dest_hsdata_ff[1]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[200] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[200]),
        .Q(dest_hsdata_ff[200]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[201] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[201]),
        .Q(dest_hsdata_ff[201]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[202] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[202]),
        .Q(dest_hsdata_ff[202]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[203] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[203]),
        .Q(dest_hsdata_ff[203]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[204] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[204]),
        .Q(dest_hsdata_ff[204]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[205] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[205]),
        .Q(dest_hsdata_ff[205]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[206] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[206]),
        .Q(dest_hsdata_ff[206]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[207] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[207]),
        .Q(dest_hsdata_ff[207]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[208] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[208]),
        .Q(dest_hsdata_ff[208]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[209] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[209]),
        .Q(dest_hsdata_ff[209]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[20] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[20]),
        .Q(dest_hsdata_ff[20]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[210] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[210]),
        .Q(dest_hsdata_ff[210]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[211] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[211]),
        .Q(dest_hsdata_ff[211]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[212] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[212]),
        .Q(dest_hsdata_ff[212]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[213] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[213]),
        .Q(dest_hsdata_ff[213]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[214] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[214]),
        .Q(dest_hsdata_ff[214]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[215] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[215]),
        .Q(dest_hsdata_ff[215]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[216] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[216]),
        .Q(dest_hsdata_ff[216]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[217] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[217]),
        .Q(dest_hsdata_ff[217]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[218] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[218]),
        .Q(dest_hsdata_ff[218]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[219] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[219]),
        .Q(dest_hsdata_ff[219]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[21] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[21]),
        .Q(dest_hsdata_ff[21]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[220] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[220]),
        .Q(dest_hsdata_ff[220]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[221] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[221]),
        .Q(dest_hsdata_ff[221]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[222] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[222]),
        .Q(dest_hsdata_ff[222]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[223] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[223]),
        .Q(dest_hsdata_ff[223]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[224] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[224]),
        .Q(dest_hsdata_ff[224]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[225] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[225]),
        .Q(dest_hsdata_ff[225]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[226] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[226]),
        .Q(dest_hsdata_ff[226]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[227] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[227]),
        .Q(dest_hsdata_ff[227]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[228] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[228]),
        .Q(dest_hsdata_ff[228]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[229] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[229]),
        .Q(dest_hsdata_ff[229]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[22] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[22]),
        .Q(dest_hsdata_ff[22]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[230] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[230]),
        .Q(dest_hsdata_ff[230]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[231] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[231]),
        .Q(dest_hsdata_ff[231]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[232] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[232]),
        .Q(dest_hsdata_ff[232]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[233] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[233]),
        .Q(dest_hsdata_ff[233]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[234] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[234]),
        .Q(dest_hsdata_ff[234]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[235] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[235]),
        .Q(dest_hsdata_ff[235]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[236] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[236]),
        .Q(dest_hsdata_ff[236]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[237] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[237]),
        .Q(dest_hsdata_ff[237]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[238] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[238]),
        .Q(dest_hsdata_ff[238]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[239] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[239]),
        .Q(dest_hsdata_ff[239]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[23] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[23]),
        .Q(dest_hsdata_ff[23]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[240] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[240]),
        .Q(dest_hsdata_ff[240]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[241] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[241]),
        .Q(dest_hsdata_ff[241]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[242] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[242]),
        .Q(dest_hsdata_ff[242]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[243] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[243]),
        .Q(dest_hsdata_ff[243]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[244] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[244]),
        .Q(dest_hsdata_ff[244]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[245] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[245]),
        .Q(dest_hsdata_ff[245]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[246] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[246]),
        .Q(dest_hsdata_ff[246]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[247] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[247]),
        .Q(dest_hsdata_ff[247]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[248] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[248]),
        .Q(dest_hsdata_ff[248]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[249] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[249]),
        .Q(dest_hsdata_ff[249]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[24] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[24]),
        .Q(dest_hsdata_ff[24]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[250] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[250]),
        .Q(dest_hsdata_ff[250]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[251] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[251]),
        .Q(dest_hsdata_ff[251]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[252] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[252]),
        .Q(dest_hsdata_ff[252]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[253] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[253]),
        .Q(dest_hsdata_ff[253]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[254] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[254]),
        .Q(dest_hsdata_ff[254]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[255] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[255]),
        .Q(dest_hsdata_ff[255]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[256] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[256]),
        .Q(dest_hsdata_ff[256]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[257] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[257]),
        .Q(dest_hsdata_ff[257]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[258] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[258]),
        .Q(dest_hsdata_ff[258]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[259] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[259]),
        .Q(dest_hsdata_ff[259]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[25] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[25]),
        .Q(dest_hsdata_ff[25]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[260] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[260]),
        .Q(dest_hsdata_ff[260]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[261] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[261]),
        .Q(dest_hsdata_ff[261]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[262] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[262]),
        .Q(dest_hsdata_ff[262]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[263] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[263]),
        .Q(dest_hsdata_ff[263]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[264] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[264]),
        .Q(dest_hsdata_ff[264]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[265] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[265]),
        .Q(dest_hsdata_ff[265]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[266] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[266]),
        .Q(dest_hsdata_ff[266]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[267] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[267]),
        .Q(dest_hsdata_ff[267]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[268] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[268]),
        .Q(dest_hsdata_ff[268]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[269] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[269]),
        .Q(dest_hsdata_ff[269]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[26] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[26]),
        .Q(dest_hsdata_ff[26]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[270] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[270]),
        .Q(dest_hsdata_ff[270]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[271] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[271]),
        .Q(dest_hsdata_ff[271]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[272] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[272]),
        .Q(dest_hsdata_ff[272]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[273] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[273]),
        .Q(dest_hsdata_ff[273]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[274] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[274]),
        .Q(dest_hsdata_ff[274]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[275] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[275]),
        .Q(dest_hsdata_ff[275]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[276] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[276]),
        .Q(dest_hsdata_ff[276]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[277] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[277]),
        .Q(dest_hsdata_ff[277]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[278] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[278]),
        .Q(dest_hsdata_ff[278]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[279] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[279]),
        .Q(dest_hsdata_ff[279]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[27] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[27]),
        .Q(dest_hsdata_ff[27]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[280] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[280]),
        .Q(dest_hsdata_ff[280]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[281] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[281]),
        .Q(dest_hsdata_ff[281]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[282] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[282]),
        .Q(dest_hsdata_ff[282]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[283] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[283]),
        .Q(dest_hsdata_ff[283]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[284] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[284]),
        .Q(dest_hsdata_ff[284]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[285] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[285]),
        .Q(dest_hsdata_ff[285]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[286] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[286]),
        .Q(dest_hsdata_ff[286]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[287] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[287]),
        .Q(dest_hsdata_ff[287]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[288] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[288]),
        .Q(dest_hsdata_ff[288]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[289] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[289]),
        .Q(dest_hsdata_ff[289]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[28] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[28]),
        .Q(dest_hsdata_ff[28]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[290] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[290]),
        .Q(dest_hsdata_ff[290]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[291] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[291]),
        .Q(dest_hsdata_ff[291]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[292] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[292]),
        .Q(dest_hsdata_ff[292]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[293] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[293]),
        .Q(dest_hsdata_ff[293]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[294] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[294]),
        .Q(dest_hsdata_ff[294]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[295] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[295]),
        .Q(dest_hsdata_ff[295]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[296] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[296]),
        .Q(dest_hsdata_ff[296]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[297] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[297]),
        .Q(dest_hsdata_ff[297]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[298] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[298]),
        .Q(dest_hsdata_ff[298]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[299] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[299]),
        .Q(dest_hsdata_ff[299]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[29] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[29]),
        .Q(dest_hsdata_ff[29]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[2] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[2]),
        .Q(dest_hsdata_ff[2]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[300] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[300]),
        .Q(dest_hsdata_ff[300]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[301] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[301]),
        .Q(dest_hsdata_ff[301]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[302] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[302]),
        .Q(dest_hsdata_ff[302]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[303] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[303]),
        .Q(dest_hsdata_ff[303]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[304] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[304]),
        .Q(dest_hsdata_ff[304]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[305] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[305]),
        .Q(dest_hsdata_ff[305]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[306] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[306]),
        .Q(dest_hsdata_ff[306]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[307] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[307]),
        .Q(dest_hsdata_ff[307]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[308] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[308]),
        .Q(dest_hsdata_ff[308]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[309] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[309]),
        .Q(dest_hsdata_ff[309]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[30] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[30]),
        .Q(dest_hsdata_ff[30]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[310] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[310]),
        .Q(dest_hsdata_ff[310]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[311] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[311]),
        .Q(dest_hsdata_ff[311]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[312] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[312]),
        .Q(dest_hsdata_ff[312]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[313] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[313]),
        .Q(dest_hsdata_ff[313]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[314] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[314]),
        .Q(dest_hsdata_ff[314]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[315] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[315]),
        .Q(dest_hsdata_ff[315]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[316] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[316]),
        .Q(dest_hsdata_ff[316]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[317] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[317]),
        .Q(dest_hsdata_ff[317]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[318] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[318]),
        .Q(dest_hsdata_ff[318]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[319] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[319]),
        .Q(dest_hsdata_ff[319]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[31] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[31]),
        .Q(dest_hsdata_ff[31]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[320] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[320]),
        .Q(dest_hsdata_ff[320]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[321] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[321]),
        .Q(dest_hsdata_ff[321]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[322] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[322]),
        .Q(dest_hsdata_ff[322]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[323] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[323]),
        .Q(dest_hsdata_ff[323]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[324] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[324]),
        .Q(dest_hsdata_ff[324]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[325] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[325]),
        .Q(dest_hsdata_ff[325]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[326] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[326]),
        .Q(dest_hsdata_ff[326]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[327] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[327]),
        .Q(dest_hsdata_ff[327]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[328] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[328]),
        .Q(dest_hsdata_ff[328]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[329] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[329]),
        .Q(dest_hsdata_ff[329]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[32] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[32]),
        .Q(dest_hsdata_ff[32]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[330] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[330]),
        .Q(dest_hsdata_ff[330]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[331] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[331]),
        .Q(dest_hsdata_ff[331]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[332] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[332]),
        .Q(dest_hsdata_ff[332]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[333] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[333]),
        .Q(dest_hsdata_ff[333]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[334] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[334]),
        .Q(dest_hsdata_ff[334]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[335] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[335]),
        .Q(dest_hsdata_ff[335]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[336] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[336]),
        .Q(dest_hsdata_ff[336]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[337] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[337]),
        .Q(dest_hsdata_ff[337]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[338] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[338]),
        .Q(dest_hsdata_ff[338]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[339] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[339]),
        .Q(dest_hsdata_ff[339]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[33] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[33]),
        .Q(dest_hsdata_ff[33]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[340] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[340]),
        .Q(dest_hsdata_ff[340]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[341] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[341]),
        .Q(dest_hsdata_ff[341]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[342] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[342]),
        .Q(dest_hsdata_ff[342]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[343] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[343]),
        .Q(dest_hsdata_ff[343]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[344] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[344]),
        .Q(dest_hsdata_ff[344]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[345] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[345]),
        .Q(dest_hsdata_ff[345]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[346] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[346]),
        .Q(dest_hsdata_ff[346]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[347] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[347]),
        .Q(dest_hsdata_ff[347]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[348] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[348]),
        .Q(dest_hsdata_ff[348]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[349] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[349]),
        .Q(dest_hsdata_ff[349]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[34] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[34]),
        .Q(dest_hsdata_ff[34]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[350] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[350]),
        .Q(dest_hsdata_ff[350]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[351] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[351]),
        .Q(dest_hsdata_ff[351]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[35] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[35]),
        .Q(dest_hsdata_ff[35]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[36] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[36]),
        .Q(dest_hsdata_ff[36]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[37] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[37]),
        .Q(dest_hsdata_ff[37]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[38] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[38]),
        .Q(dest_hsdata_ff[38]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[39] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[39]),
        .Q(dest_hsdata_ff[39]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[3] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[3]),
        .Q(dest_hsdata_ff[3]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[40] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[40]),
        .Q(dest_hsdata_ff[40]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[41] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[41]),
        .Q(dest_hsdata_ff[41]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[42] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[42]),
        .Q(dest_hsdata_ff[42]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[43] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[43]),
        .Q(dest_hsdata_ff[43]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[44] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[44]),
        .Q(dest_hsdata_ff[44]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[45] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[45]),
        .Q(dest_hsdata_ff[45]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[46] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[46]),
        .Q(dest_hsdata_ff[46]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[47] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[47]),
        .Q(dest_hsdata_ff[47]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[48] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[48]),
        .Q(dest_hsdata_ff[48]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[49] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[49]),
        .Q(dest_hsdata_ff[49]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[4] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[4]),
        .Q(dest_hsdata_ff[4]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[50] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[50]),
        .Q(dest_hsdata_ff[50]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[51] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[51]),
        .Q(dest_hsdata_ff[51]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[52] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[52]),
        .Q(dest_hsdata_ff[52]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[53] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[53]),
        .Q(dest_hsdata_ff[53]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[54] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[54]),
        .Q(dest_hsdata_ff[54]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[55] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[55]),
        .Q(dest_hsdata_ff[55]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[56] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[56]),
        .Q(dest_hsdata_ff[56]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[57] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[57]),
        .Q(dest_hsdata_ff[57]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[58] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[58]),
        .Q(dest_hsdata_ff[58]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[59] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[59]),
        .Q(dest_hsdata_ff[59]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[5] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[5]),
        .Q(dest_hsdata_ff[5]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[60] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[60]),
        .Q(dest_hsdata_ff[60]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[61] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[61]),
        .Q(dest_hsdata_ff[61]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[62] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[62]),
        .Q(dest_hsdata_ff[62]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[63] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[63]),
        .Q(dest_hsdata_ff[63]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[64] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[64]),
        .Q(dest_hsdata_ff[64]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[65] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[65]),
        .Q(dest_hsdata_ff[65]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[66] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[66]),
        .Q(dest_hsdata_ff[66]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[67] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[67]),
        .Q(dest_hsdata_ff[67]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[68] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[68]),
        .Q(dest_hsdata_ff[68]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[69] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[69]),
        .Q(dest_hsdata_ff[69]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[6] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[6]),
        .Q(dest_hsdata_ff[6]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[70] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[70]),
        .Q(dest_hsdata_ff[70]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[71] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[71]),
        .Q(dest_hsdata_ff[71]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[72] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[72]),
        .Q(dest_hsdata_ff[72]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[73] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[73]),
        .Q(dest_hsdata_ff[73]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[74] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[74]),
        .Q(dest_hsdata_ff[74]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[75] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[75]),
        .Q(dest_hsdata_ff[75]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[76] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[76]),
        .Q(dest_hsdata_ff[76]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[77] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[77]),
        .Q(dest_hsdata_ff[77]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[78] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[78]),
        .Q(dest_hsdata_ff[78]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[79] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[79]),
        .Q(dest_hsdata_ff[79]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[7] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[7]),
        .Q(dest_hsdata_ff[7]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[80] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[80]),
        .Q(dest_hsdata_ff[80]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[81] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[81]),
        .Q(dest_hsdata_ff[81]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[82] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[82]),
        .Q(dest_hsdata_ff[82]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[83] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[83]),
        .Q(dest_hsdata_ff[83]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[84] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[84]),
        .Q(dest_hsdata_ff[84]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[85] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[85]),
        .Q(dest_hsdata_ff[85]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[86] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[86]),
        .Q(dest_hsdata_ff[86]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[87] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[87]),
        .Q(dest_hsdata_ff[87]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[88] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[88]),
        .Q(dest_hsdata_ff[88]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[89] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[89]),
        .Q(dest_hsdata_ff[89]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[8] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[8]),
        .Q(dest_hsdata_ff[8]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[90] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[90]),
        .Q(dest_hsdata_ff[90]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[91] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[91]),
        .Q(dest_hsdata_ff[91]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[92] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[92]),
        .Q(dest_hsdata_ff[92]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[93] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[93]),
        .Q(dest_hsdata_ff[93]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[94] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[94]),
        .Q(dest_hsdata_ff[94]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[95] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[95]),
        .Q(dest_hsdata_ff[95]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[96] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[96]),
        .Q(dest_hsdata_ff[96]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[97] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[97]),
        .Q(dest_hsdata_ff[97]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[98] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[98]),
        .Q(dest_hsdata_ff[98]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[99] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[99]),
        .Q(dest_hsdata_ff[99]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[9] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[9]),
        .Q(dest_hsdata_ff[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    dest_req_ext_ff_i_1
       (.I0(dest_req_nxt),
        .I1(dest_req_ff),
        .O(dest_hsdata_en));
  FDRE dest_req_ext_ff_reg
       (.C(dest_clk),
        .CE(1'b1),
        .D(dest_hsdata_en),
        .Q(dest_req),
        .R(1'b0));
  FDRE dest_req_ff_reg
       (.C(dest_clk),
        .CE(1'b1),
        .D(dest_req_nxt),
        .Q(dest_req_ff),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \src_hsdata_ff[351]_i_1 
       (.I0(src_sendd_ff),
        .O(p_0_in));
  FDRE \src_hsdata_ff_reg[0] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[0]),
        .Q(src_hsdata_ff[0]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[100] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[100]),
        .Q(src_hsdata_ff[100]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[101] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[101]),
        .Q(src_hsdata_ff[101]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[102] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[102]),
        .Q(src_hsdata_ff[102]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[103] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[103]),
        .Q(src_hsdata_ff[103]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[104] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[104]),
        .Q(src_hsdata_ff[104]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[105] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[105]),
        .Q(src_hsdata_ff[105]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[106] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[106]),
        .Q(src_hsdata_ff[106]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[107] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[107]),
        .Q(src_hsdata_ff[107]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[108] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[108]),
        .Q(src_hsdata_ff[108]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[109] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[109]),
        .Q(src_hsdata_ff[109]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[10] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[10]),
        .Q(src_hsdata_ff[10]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[110] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[110]),
        .Q(src_hsdata_ff[110]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[111] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[111]),
        .Q(src_hsdata_ff[111]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[112] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[112]),
        .Q(src_hsdata_ff[112]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[113] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[113]),
        .Q(src_hsdata_ff[113]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[114] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[114]),
        .Q(src_hsdata_ff[114]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[115] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[115]),
        .Q(src_hsdata_ff[115]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[116] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[116]),
        .Q(src_hsdata_ff[116]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[117] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[117]),
        .Q(src_hsdata_ff[117]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[118] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[118]),
        .Q(src_hsdata_ff[118]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[119] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[119]),
        .Q(src_hsdata_ff[119]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[11] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[11]),
        .Q(src_hsdata_ff[11]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[120] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[120]),
        .Q(src_hsdata_ff[120]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[121] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[121]),
        .Q(src_hsdata_ff[121]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[122] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[122]),
        .Q(src_hsdata_ff[122]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[123] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[123]),
        .Q(src_hsdata_ff[123]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[124] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[124]),
        .Q(src_hsdata_ff[124]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[125] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[125]),
        .Q(src_hsdata_ff[125]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[126] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[126]),
        .Q(src_hsdata_ff[126]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[127] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[127]),
        .Q(src_hsdata_ff[127]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[128] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[128]),
        .Q(src_hsdata_ff[128]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[129] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[129]),
        .Q(src_hsdata_ff[129]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[12] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[12]),
        .Q(src_hsdata_ff[12]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[130] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[130]),
        .Q(src_hsdata_ff[130]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[131] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[131]),
        .Q(src_hsdata_ff[131]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[132] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[132]),
        .Q(src_hsdata_ff[132]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[133] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[133]),
        .Q(src_hsdata_ff[133]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[134] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[134]),
        .Q(src_hsdata_ff[134]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[135] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[135]),
        .Q(src_hsdata_ff[135]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[136] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[136]),
        .Q(src_hsdata_ff[136]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[137] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[137]),
        .Q(src_hsdata_ff[137]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[138] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[138]),
        .Q(src_hsdata_ff[138]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[139] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[139]),
        .Q(src_hsdata_ff[139]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[13] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[13]),
        .Q(src_hsdata_ff[13]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[140] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[140]),
        .Q(src_hsdata_ff[140]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[141] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[141]),
        .Q(src_hsdata_ff[141]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[142] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[142]),
        .Q(src_hsdata_ff[142]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[143] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[143]),
        .Q(src_hsdata_ff[143]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[144] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[144]),
        .Q(src_hsdata_ff[144]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[145] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[145]),
        .Q(src_hsdata_ff[145]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[146] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[146]),
        .Q(src_hsdata_ff[146]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[147] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[147]),
        .Q(src_hsdata_ff[147]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[148] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[148]),
        .Q(src_hsdata_ff[148]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[149] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[149]),
        .Q(src_hsdata_ff[149]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[14] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[14]),
        .Q(src_hsdata_ff[14]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[150] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[150]),
        .Q(src_hsdata_ff[150]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[151] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[151]),
        .Q(src_hsdata_ff[151]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[152] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[152]),
        .Q(src_hsdata_ff[152]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[153] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[153]),
        .Q(src_hsdata_ff[153]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[154] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[154]),
        .Q(src_hsdata_ff[154]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[155] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[155]),
        .Q(src_hsdata_ff[155]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[156] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[156]),
        .Q(src_hsdata_ff[156]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[157] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[157]),
        .Q(src_hsdata_ff[157]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[158] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[158]),
        .Q(src_hsdata_ff[158]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[159] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[159]),
        .Q(src_hsdata_ff[159]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[15] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[15]),
        .Q(src_hsdata_ff[15]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[160] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[160]),
        .Q(src_hsdata_ff[160]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[161] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[161]),
        .Q(src_hsdata_ff[161]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[162] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[162]),
        .Q(src_hsdata_ff[162]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[163] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[163]),
        .Q(src_hsdata_ff[163]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[164] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[164]),
        .Q(src_hsdata_ff[164]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[165] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[165]),
        .Q(src_hsdata_ff[165]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[166] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[166]),
        .Q(src_hsdata_ff[166]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[167] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[167]),
        .Q(src_hsdata_ff[167]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[168] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[168]),
        .Q(src_hsdata_ff[168]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[169] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[169]),
        .Q(src_hsdata_ff[169]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[16] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[16]),
        .Q(src_hsdata_ff[16]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[170] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[170]),
        .Q(src_hsdata_ff[170]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[171] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[171]),
        .Q(src_hsdata_ff[171]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[172] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[172]),
        .Q(src_hsdata_ff[172]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[173] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[173]),
        .Q(src_hsdata_ff[173]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[174] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[174]),
        .Q(src_hsdata_ff[174]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[175] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[175]),
        .Q(src_hsdata_ff[175]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[176] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[176]),
        .Q(src_hsdata_ff[176]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[177] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[177]),
        .Q(src_hsdata_ff[177]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[178] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[178]),
        .Q(src_hsdata_ff[178]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[179] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[179]),
        .Q(src_hsdata_ff[179]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[17] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[17]),
        .Q(src_hsdata_ff[17]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[180] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[180]),
        .Q(src_hsdata_ff[180]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[181] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[181]),
        .Q(src_hsdata_ff[181]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[182] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[182]),
        .Q(src_hsdata_ff[182]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[183] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[183]),
        .Q(src_hsdata_ff[183]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[184] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[184]),
        .Q(src_hsdata_ff[184]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[185] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[185]),
        .Q(src_hsdata_ff[185]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[186] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[186]),
        .Q(src_hsdata_ff[186]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[187] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[187]),
        .Q(src_hsdata_ff[187]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[188] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[188]),
        .Q(src_hsdata_ff[188]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[189] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[189]),
        .Q(src_hsdata_ff[189]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[18] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[18]),
        .Q(src_hsdata_ff[18]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[190] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[190]),
        .Q(src_hsdata_ff[190]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[191] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[191]),
        .Q(src_hsdata_ff[191]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[192] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[192]),
        .Q(src_hsdata_ff[192]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[193] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[193]),
        .Q(src_hsdata_ff[193]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[194] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[194]),
        .Q(src_hsdata_ff[194]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[195] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[195]),
        .Q(src_hsdata_ff[195]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[196] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[196]),
        .Q(src_hsdata_ff[196]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[197] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[197]),
        .Q(src_hsdata_ff[197]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[198] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[198]),
        .Q(src_hsdata_ff[198]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[199] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[199]),
        .Q(src_hsdata_ff[199]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[19] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[19]),
        .Q(src_hsdata_ff[19]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[1] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[1]),
        .Q(src_hsdata_ff[1]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[200] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[200]),
        .Q(src_hsdata_ff[200]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[201] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[201]),
        .Q(src_hsdata_ff[201]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[202] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[202]),
        .Q(src_hsdata_ff[202]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[203] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[203]),
        .Q(src_hsdata_ff[203]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[204] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[204]),
        .Q(src_hsdata_ff[204]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[205] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[205]),
        .Q(src_hsdata_ff[205]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[206] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[206]),
        .Q(src_hsdata_ff[206]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[207] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[207]),
        .Q(src_hsdata_ff[207]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[208] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[208]),
        .Q(src_hsdata_ff[208]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[209] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[209]),
        .Q(src_hsdata_ff[209]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[20] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[20]),
        .Q(src_hsdata_ff[20]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[210] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[210]),
        .Q(src_hsdata_ff[210]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[211] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[211]),
        .Q(src_hsdata_ff[211]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[212] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[212]),
        .Q(src_hsdata_ff[212]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[213] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[213]),
        .Q(src_hsdata_ff[213]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[214] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[214]),
        .Q(src_hsdata_ff[214]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[215] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[215]),
        .Q(src_hsdata_ff[215]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[216] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[216]),
        .Q(src_hsdata_ff[216]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[217] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[217]),
        .Q(src_hsdata_ff[217]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[218] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[218]),
        .Q(src_hsdata_ff[218]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[219] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[219]),
        .Q(src_hsdata_ff[219]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[21] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[21]),
        .Q(src_hsdata_ff[21]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[220] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[220]),
        .Q(src_hsdata_ff[220]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[221] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[221]),
        .Q(src_hsdata_ff[221]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[222] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[222]),
        .Q(src_hsdata_ff[222]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[223] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[223]),
        .Q(src_hsdata_ff[223]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[224] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[224]),
        .Q(src_hsdata_ff[224]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[225] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[225]),
        .Q(src_hsdata_ff[225]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[226] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[226]),
        .Q(src_hsdata_ff[226]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[227] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[227]),
        .Q(src_hsdata_ff[227]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[228] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[228]),
        .Q(src_hsdata_ff[228]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[229] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[229]),
        .Q(src_hsdata_ff[229]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[22] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[22]),
        .Q(src_hsdata_ff[22]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[230] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[230]),
        .Q(src_hsdata_ff[230]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[231] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[231]),
        .Q(src_hsdata_ff[231]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[232] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[232]),
        .Q(src_hsdata_ff[232]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[233] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[233]),
        .Q(src_hsdata_ff[233]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[234] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[234]),
        .Q(src_hsdata_ff[234]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[235] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[235]),
        .Q(src_hsdata_ff[235]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[236] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[236]),
        .Q(src_hsdata_ff[236]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[237] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[237]),
        .Q(src_hsdata_ff[237]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[238] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[238]),
        .Q(src_hsdata_ff[238]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[239] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[239]),
        .Q(src_hsdata_ff[239]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[23] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[23]),
        .Q(src_hsdata_ff[23]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[240] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[240]),
        .Q(src_hsdata_ff[240]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[241] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[241]),
        .Q(src_hsdata_ff[241]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[242] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[242]),
        .Q(src_hsdata_ff[242]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[243] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[243]),
        .Q(src_hsdata_ff[243]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[244] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[244]),
        .Q(src_hsdata_ff[244]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[245] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[245]),
        .Q(src_hsdata_ff[245]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[246] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[246]),
        .Q(src_hsdata_ff[246]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[247] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[247]),
        .Q(src_hsdata_ff[247]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[248] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[248]),
        .Q(src_hsdata_ff[248]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[249] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[249]),
        .Q(src_hsdata_ff[249]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[24] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[24]),
        .Q(src_hsdata_ff[24]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[250] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[250]),
        .Q(src_hsdata_ff[250]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[251] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[251]),
        .Q(src_hsdata_ff[251]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[252] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[252]),
        .Q(src_hsdata_ff[252]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[253] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[253]),
        .Q(src_hsdata_ff[253]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[254] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[254]),
        .Q(src_hsdata_ff[254]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[255] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[255]),
        .Q(src_hsdata_ff[255]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[256] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[256]),
        .Q(src_hsdata_ff[256]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[257] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[257]),
        .Q(src_hsdata_ff[257]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[258] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[258]),
        .Q(src_hsdata_ff[258]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[259] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[259]),
        .Q(src_hsdata_ff[259]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[25] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[25]),
        .Q(src_hsdata_ff[25]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[260] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[260]),
        .Q(src_hsdata_ff[260]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[261] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[261]),
        .Q(src_hsdata_ff[261]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[262] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[262]),
        .Q(src_hsdata_ff[262]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[263] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[263]),
        .Q(src_hsdata_ff[263]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[264] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[264]),
        .Q(src_hsdata_ff[264]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[265] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[265]),
        .Q(src_hsdata_ff[265]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[266] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[266]),
        .Q(src_hsdata_ff[266]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[267] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[267]),
        .Q(src_hsdata_ff[267]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[268] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[268]),
        .Q(src_hsdata_ff[268]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[269] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[269]),
        .Q(src_hsdata_ff[269]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[26] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[26]),
        .Q(src_hsdata_ff[26]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[270] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[270]),
        .Q(src_hsdata_ff[270]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[271] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[271]),
        .Q(src_hsdata_ff[271]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[272] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[272]),
        .Q(src_hsdata_ff[272]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[273] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[273]),
        .Q(src_hsdata_ff[273]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[274] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[274]),
        .Q(src_hsdata_ff[274]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[275] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[275]),
        .Q(src_hsdata_ff[275]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[276] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[276]),
        .Q(src_hsdata_ff[276]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[277] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[277]),
        .Q(src_hsdata_ff[277]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[278] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[278]),
        .Q(src_hsdata_ff[278]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[279] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[279]),
        .Q(src_hsdata_ff[279]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[27] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[27]),
        .Q(src_hsdata_ff[27]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[280] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[280]),
        .Q(src_hsdata_ff[280]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[281] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[281]),
        .Q(src_hsdata_ff[281]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[282] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[282]),
        .Q(src_hsdata_ff[282]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[283] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[283]),
        .Q(src_hsdata_ff[283]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[284] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[284]),
        .Q(src_hsdata_ff[284]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[285] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[285]),
        .Q(src_hsdata_ff[285]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[286] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[286]),
        .Q(src_hsdata_ff[286]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[287] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[287]),
        .Q(src_hsdata_ff[287]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[288] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[288]),
        .Q(src_hsdata_ff[288]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[289] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[289]),
        .Q(src_hsdata_ff[289]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[28] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[28]),
        .Q(src_hsdata_ff[28]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[290] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[290]),
        .Q(src_hsdata_ff[290]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[291] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[291]),
        .Q(src_hsdata_ff[291]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[292] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[292]),
        .Q(src_hsdata_ff[292]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[293] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[293]),
        .Q(src_hsdata_ff[293]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[294] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[294]),
        .Q(src_hsdata_ff[294]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[295] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[295]),
        .Q(src_hsdata_ff[295]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[296] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[296]),
        .Q(src_hsdata_ff[296]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[297] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[297]),
        .Q(src_hsdata_ff[297]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[298] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[298]),
        .Q(src_hsdata_ff[298]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[299] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[299]),
        .Q(src_hsdata_ff[299]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[29] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[29]),
        .Q(src_hsdata_ff[29]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[2] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[2]),
        .Q(src_hsdata_ff[2]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[300] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[300]),
        .Q(src_hsdata_ff[300]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[301] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[301]),
        .Q(src_hsdata_ff[301]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[302] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[302]),
        .Q(src_hsdata_ff[302]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[303] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[303]),
        .Q(src_hsdata_ff[303]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[304] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[304]),
        .Q(src_hsdata_ff[304]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[305] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[305]),
        .Q(src_hsdata_ff[305]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[306] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[306]),
        .Q(src_hsdata_ff[306]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[307] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[307]),
        .Q(src_hsdata_ff[307]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[308] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[308]),
        .Q(src_hsdata_ff[308]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[309] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[309]),
        .Q(src_hsdata_ff[309]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[30] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[30]),
        .Q(src_hsdata_ff[30]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[310] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[310]),
        .Q(src_hsdata_ff[310]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[311] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[311]),
        .Q(src_hsdata_ff[311]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[312] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[312]),
        .Q(src_hsdata_ff[312]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[313] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[313]),
        .Q(src_hsdata_ff[313]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[314] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[314]),
        .Q(src_hsdata_ff[314]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[315] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[315]),
        .Q(src_hsdata_ff[315]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[316] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[316]),
        .Q(src_hsdata_ff[316]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[317] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[317]),
        .Q(src_hsdata_ff[317]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[318] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[318]),
        .Q(src_hsdata_ff[318]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[319] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[319]),
        .Q(src_hsdata_ff[319]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[31] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[31]),
        .Q(src_hsdata_ff[31]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[320] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[320]),
        .Q(src_hsdata_ff[320]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[321] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[321]),
        .Q(src_hsdata_ff[321]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[322] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[322]),
        .Q(src_hsdata_ff[322]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[323] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[323]),
        .Q(src_hsdata_ff[323]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[324] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[324]),
        .Q(src_hsdata_ff[324]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[325] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[325]),
        .Q(src_hsdata_ff[325]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[326] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[326]),
        .Q(src_hsdata_ff[326]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[327] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[327]),
        .Q(src_hsdata_ff[327]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[328] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[328]),
        .Q(src_hsdata_ff[328]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[329] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[329]),
        .Q(src_hsdata_ff[329]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[32] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[32]),
        .Q(src_hsdata_ff[32]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[330] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[330]),
        .Q(src_hsdata_ff[330]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[331] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[331]),
        .Q(src_hsdata_ff[331]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[332] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[332]),
        .Q(src_hsdata_ff[332]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[333] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[333]),
        .Q(src_hsdata_ff[333]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[334] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[334]),
        .Q(src_hsdata_ff[334]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[335] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[335]),
        .Q(src_hsdata_ff[335]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[336] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[336]),
        .Q(src_hsdata_ff[336]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[337] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[337]),
        .Q(src_hsdata_ff[337]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[338] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[338]),
        .Q(src_hsdata_ff[338]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[339] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[339]),
        .Q(src_hsdata_ff[339]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[33] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[33]),
        .Q(src_hsdata_ff[33]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[340] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[340]),
        .Q(src_hsdata_ff[340]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[341] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[341]),
        .Q(src_hsdata_ff[341]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[342] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[342]),
        .Q(src_hsdata_ff[342]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[343] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[343]),
        .Q(src_hsdata_ff[343]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[344] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[344]),
        .Q(src_hsdata_ff[344]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[345] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[345]),
        .Q(src_hsdata_ff[345]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[346] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[346]),
        .Q(src_hsdata_ff[346]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[347] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[347]),
        .Q(src_hsdata_ff[347]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[348] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[348]),
        .Q(src_hsdata_ff[348]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[349] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[349]),
        .Q(src_hsdata_ff[349]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[34] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[34]),
        .Q(src_hsdata_ff[34]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[350] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[350]),
        .Q(src_hsdata_ff[350]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[351] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[351]),
        .Q(src_hsdata_ff[351]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[35] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[35]),
        .Q(src_hsdata_ff[35]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[36] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[36]),
        .Q(src_hsdata_ff[36]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[37] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[37]),
        .Q(src_hsdata_ff[37]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[38] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[38]),
        .Q(src_hsdata_ff[38]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[39] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[39]),
        .Q(src_hsdata_ff[39]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[3] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[3]),
        .Q(src_hsdata_ff[3]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[40] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[40]),
        .Q(src_hsdata_ff[40]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[41] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[41]),
        .Q(src_hsdata_ff[41]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[42] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[42]),
        .Q(src_hsdata_ff[42]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[43] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[43]),
        .Q(src_hsdata_ff[43]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[44] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[44]),
        .Q(src_hsdata_ff[44]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[45] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[45]),
        .Q(src_hsdata_ff[45]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[46] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[46]),
        .Q(src_hsdata_ff[46]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[47] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[47]),
        .Q(src_hsdata_ff[47]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[48] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[48]),
        .Q(src_hsdata_ff[48]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[49] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[49]),
        .Q(src_hsdata_ff[49]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[4] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[4]),
        .Q(src_hsdata_ff[4]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[50] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[50]),
        .Q(src_hsdata_ff[50]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[51] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[51]),
        .Q(src_hsdata_ff[51]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[52] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[52]),
        .Q(src_hsdata_ff[52]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[53] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[53]),
        .Q(src_hsdata_ff[53]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[54] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[54]),
        .Q(src_hsdata_ff[54]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[55] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[55]),
        .Q(src_hsdata_ff[55]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[56] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[56]),
        .Q(src_hsdata_ff[56]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[57] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[57]),
        .Q(src_hsdata_ff[57]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[58] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[58]),
        .Q(src_hsdata_ff[58]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[59] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[59]),
        .Q(src_hsdata_ff[59]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[5] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[5]),
        .Q(src_hsdata_ff[5]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[60] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[60]),
        .Q(src_hsdata_ff[60]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[61] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[61]),
        .Q(src_hsdata_ff[61]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[62] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[62]),
        .Q(src_hsdata_ff[62]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[63] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[63]),
        .Q(src_hsdata_ff[63]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[64] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[64]),
        .Q(src_hsdata_ff[64]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[65] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[65]),
        .Q(src_hsdata_ff[65]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[66] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[66]),
        .Q(src_hsdata_ff[66]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[67] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[67]),
        .Q(src_hsdata_ff[67]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[68] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[68]),
        .Q(src_hsdata_ff[68]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[69] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[69]),
        .Q(src_hsdata_ff[69]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[6] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[6]),
        .Q(src_hsdata_ff[6]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[70] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[70]),
        .Q(src_hsdata_ff[70]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[71] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[71]),
        .Q(src_hsdata_ff[71]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[72] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[72]),
        .Q(src_hsdata_ff[72]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[73] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[73]),
        .Q(src_hsdata_ff[73]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[74] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[74]),
        .Q(src_hsdata_ff[74]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[75] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[75]),
        .Q(src_hsdata_ff[75]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[76] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[76]),
        .Q(src_hsdata_ff[76]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[77] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[77]),
        .Q(src_hsdata_ff[77]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[78] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[78]),
        .Q(src_hsdata_ff[78]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[79] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[79]),
        .Q(src_hsdata_ff[79]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[7] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[7]),
        .Q(src_hsdata_ff[7]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[80] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[80]),
        .Q(src_hsdata_ff[80]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[81] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[81]),
        .Q(src_hsdata_ff[81]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[82] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[82]),
        .Q(src_hsdata_ff[82]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[83] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[83]),
        .Q(src_hsdata_ff[83]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[84] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[84]),
        .Q(src_hsdata_ff[84]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[85] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[85]),
        .Q(src_hsdata_ff[85]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[86] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[86]),
        .Q(src_hsdata_ff[86]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[87] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[87]),
        .Q(src_hsdata_ff[87]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[88] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[88]),
        .Q(src_hsdata_ff[88]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[89] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[89]),
        .Q(src_hsdata_ff[89]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[8] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[8]),
        .Q(src_hsdata_ff[8]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[90] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[90]),
        .Q(src_hsdata_ff[90]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[91] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[91]),
        .Q(src_hsdata_ff[91]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[92] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[92]),
        .Q(src_hsdata_ff[92]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[93] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[93]),
        .Q(src_hsdata_ff[93]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[94] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[94]),
        .Q(src_hsdata_ff[94]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[95] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[95]),
        .Q(src_hsdata_ff[95]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[96] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[96]),
        .Q(src_hsdata_ff[96]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[97] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[97]),
        .Q(src_hsdata_ff[97]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[98] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[98]),
        .Q(src_hsdata_ff[98]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[99] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[99]),
        .Q(src_hsdata_ff[99]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[9] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[9]),
        .Q(src_hsdata_ff[9]),
        .R(1'b0));
  FDRE src_sendd_ff_reg
       (.C(src_clk),
        .CE(1'b1),
        .D(src_send),
        .Q(src_sendd_ff),
        .R(1'b0));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  icyradio_axi_rf_timestamping_0_xpm_cdc_single__parameterized0__3 xpm_cdc_single_dest2src_inst
       (.dest_clk(src_clk),
        .dest_out(src_rcv),
        .src_clk(1'b0),
        .src_in(dest_req_ff));
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  icyradio_axi_rf_timestamping_0_xpm_cdc_single xpm_cdc_single_src2dest_inst
       (.dest_clk(dest_clk),
        .dest_out(dest_req_nxt),
        .src_clk(1'b0),
        .src_in(src_sendd_ff));
endmodule

(* DEST_EXT_HSK = "0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "1" *) 
(* ORIG_REF_NAME = "xpm_cdc_handshake" *) (* SIM_ASSERT_CHK = "1" *) (* SRC_SYNC_FF = "2" *) 
(* VERSION = "0" *) (* WIDTH = "228" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "HANDSHAKE" *) 
module icyradio_axi_rf_timestamping_0_xpm_cdc_handshake__parameterized0
   (src_clk,
    src_in,
    src_send,
    src_rcv,
    dest_clk,
    dest_out,
    dest_req,
    dest_ack);
  input src_clk;
  input [227:0]src_in;
  input src_send;
  output src_rcv;
  input dest_clk;
  output [227:0]dest_out;
  output dest_req;
  input dest_ack;

  wire dest_clk;
  (* DIRECT_ENABLE *) wire dest_hsdata_en;
  (* RTL_KEEP = "true" *) (* xpm_cdc = "HANDSHAKE" *) wire [227:0]dest_hsdata_ff;
  wire dest_req;
  wire dest_req_ff;
  wire dest_req_nxt;
  wire p_0_in;
  wire src_clk;
  wire [227:0]src_hsdata_ff;
  wire [227:0]src_in;
  wire src_rcv;
  wire src_send;
  wire src_sendd_ff;

  assign dest_out[227:0] = dest_hsdata_ff;
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[0] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[0]),
        .Q(dest_hsdata_ff[0]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[100] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[100]),
        .Q(dest_hsdata_ff[100]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[101] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[101]),
        .Q(dest_hsdata_ff[101]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[102] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[102]),
        .Q(dest_hsdata_ff[102]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[103] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[103]),
        .Q(dest_hsdata_ff[103]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[104] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[104]),
        .Q(dest_hsdata_ff[104]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[105] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[105]),
        .Q(dest_hsdata_ff[105]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[106] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[106]),
        .Q(dest_hsdata_ff[106]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[107] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[107]),
        .Q(dest_hsdata_ff[107]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[108] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[108]),
        .Q(dest_hsdata_ff[108]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[109] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[109]),
        .Q(dest_hsdata_ff[109]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[10] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[10]),
        .Q(dest_hsdata_ff[10]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[110] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[110]),
        .Q(dest_hsdata_ff[110]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[111] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[111]),
        .Q(dest_hsdata_ff[111]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[112] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[112]),
        .Q(dest_hsdata_ff[112]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[113] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[113]),
        .Q(dest_hsdata_ff[113]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[114] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[114]),
        .Q(dest_hsdata_ff[114]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[115] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[115]),
        .Q(dest_hsdata_ff[115]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[116] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[116]),
        .Q(dest_hsdata_ff[116]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[117] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[117]),
        .Q(dest_hsdata_ff[117]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[118] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[118]),
        .Q(dest_hsdata_ff[118]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[119] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[119]),
        .Q(dest_hsdata_ff[119]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[11] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[11]),
        .Q(dest_hsdata_ff[11]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[120] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[120]),
        .Q(dest_hsdata_ff[120]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[121] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[121]),
        .Q(dest_hsdata_ff[121]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[122] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[122]),
        .Q(dest_hsdata_ff[122]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[123] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[123]),
        .Q(dest_hsdata_ff[123]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[124] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[124]),
        .Q(dest_hsdata_ff[124]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[125] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[125]),
        .Q(dest_hsdata_ff[125]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[126] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[126]),
        .Q(dest_hsdata_ff[126]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[127] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[127]),
        .Q(dest_hsdata_ff[127]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[128] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[128]),
        .Q(dest_hsdata_ff[128]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[129] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[129]),
        .Q(dest_hsdata_ff[129]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[12] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[12]),
        .Q(dest_hsdata_ff[12]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[130] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[130]),
        .Q(dest_hsdata_ff[130]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[131] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[131]),
        .Q(dest_hsdata_ff[131]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[132] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[132]),
        .Q(dest_hsdata_ff[132]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[133] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[133]),
        .Q(dest_hsdata_ff[133]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[134] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[134]),
        .Q(dest_hsdata_ff[134]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[135] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[135]),
        .Q(dest_hsdata_ff[135]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[136] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[136]),
        .Q(dest_hsdata_ff[136]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[137] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[137]),
        .Q(dest_hsdata_ff[137]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[138] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[138]),
        .Q(dest_hsdata_ff[138]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[139] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[139]),
        .Q(dest_hsdata_ff[139]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[13] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[13]),
        .Q(dest_hsdata_ff[13]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[140] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[140]),
        .Q(dest_hsdata_ff[140]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[141] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[141]),
        .Q(dest_hsdata_ff[141]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[142] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[142]),
        .Q(dest_hsdata_ff[142]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[143] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[143]),
        .Q(dest_hsdata_ff[143]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[144] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[144]),
        .Q(dest_hsdata_ff[144]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[145] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[145]),
        .Q(dest_hsdata_ff[145]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[146] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[146]),
        .Q(dest_hsdata_ff[146]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[147] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[147]),
        .Q(dest_hsdata_ff[147]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[148] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[148]),
        .Q(dest_hsdata_ff[148]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[149] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[149]),
        .Q(dest_hsdata_ff[149]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[14] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[14]),
        .Q(dest_hsdata_ff[14]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[150] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[150]),
        .Q(dest_hsdata_ff[150]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[151] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[151]),
        .Q(dest_hsdata_ff[151]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[152] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[152]),
        .Q(dest_hsdata_ff[152]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[153] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[153]),
        .Q(dest_hsdata_ff[153]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[154] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[154]),
        .Q(dest_hsdata_ff[154]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[155] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[155]),
        .Q(dest_hsdata_ff[155]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[156] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[156]),
        .Q(dest_hsdata_ff[156]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[157] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[157]),
        .Q(dest_hsdata_ff[157]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[158] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[158]),
        .Q(dest_hsdata_ff[158]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[159] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[159]),
        .Q(dest_hsdata_ff[159]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[15] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[15]),
        .Q(dest_hsdata_ff[15]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[160] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[160]),
        .Q(dest_hsdata_ff[160]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[161] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[161]),
        .Q(dest_hsdata_ff[161]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[162] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[162]),
        .Q(dest_hsdata_ff[162]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[163] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[163]),
        .Q(dest_hsdata_ff[163]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[164] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[164]),
        .Q(dest_hsdata_ff[164]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[165] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[165]),
        .Q(dest_hsdata_ff[165]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[166] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[166]),
        .Q(dest_hsdata_ff[166]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[167] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[167]),
        .Q(dest_hsdata_ff[167]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[168] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[168]),
        .Q(dest_hsdata_ff[168]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[169] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[169]),
        .Q(dest_hsdata_ff[169]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[16] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[16]),
        .Q(dest_hsdata_ff[16]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[170] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[170]),
        .Q(dest_hsdata_ff[170]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[171] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[171]),
        .Q(dest_hsdata_ff[171]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[172] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[172]),
        .Q(dest_hsdata_ff[172]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[173] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[173]),
        .Q(dest_hsdata_ff[173]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[174] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[174]),
        .Q(dest_hsdata_ff[174]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[175] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[175]),
        .Q(dest_hsdata_ff[175]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[176] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[176]),
        .Q(dest_hsdata_ff[176]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[177] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[177]),
        .Q(dest_hsdata_ff[177]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[178] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[178]),
        .Q(dest_hsdata_ff[178]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[179] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[179]),
        .Q(dest_hsdata_ff[179]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[17] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[17]),
        .Q(dest_hsdata_ff[17]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[180] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[180]),
        .Q(dest_hsdata_ff[180]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[181] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[181]),
        .Q(dest_hsdata_ff[181]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[182] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[182]),
        .Q(dest_hsdata_ff[182]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[183] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[183]),
        .Q(dest_hsdata_ff[183]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[184] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[184]),
        .Q(dest_hsdata_ff[184]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[185] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[185]),
        .Q(dest_hsdata_ff[185]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[186] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[186]),
        .Q(dest_hsdata_ff[186]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[187] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[187]),
        .Q(dest_hsdata_ff[187]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[188] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[188]),
        .Q(dest_hsdata_ff[188]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[189] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[189]),
        .Q(dest_hsdata_ff[189]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[18] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[18]),
        .Q(dest_hsdata_ff[18]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[190] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[190]),
        .Q(dest_hsdata_ff[190]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[191] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[191]),
        .Q(dest_hsdata_ff[191]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[192] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[192]),
        .Q(dest_hsdata_ff[192]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[193] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[193]),
        .Q(dest_hsdata_ff[193]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[194] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[194]),
        .Q(dest_hsdata_ff[194]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[195] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[195]),
        .Q(dest_hsdata_ff[195]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[196] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[196]),
        .Q(dest_hsdata_ff[196]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[197] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[197]),
        .Q(dest_hsdata_ff[197]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[198] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[198]),
        .Q(dest_hsdata_ff[198]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[199] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[199]),
        .Q(dest_hsdata_ff[199]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[19] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[19]),
        .Q(dest_hsdata_ff[19]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[1] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[1]),
        .Q(dest_hsdata_ff[1]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[200] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[200]),
        .Q(dest_hsdata_ff[200]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[201] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[201]),
        .Q(dest_hsdata_ff[201]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[202] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[202]),
        .Q(dest_hsdata_ff[202]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[203] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[203]),
        .Q(dest_hsdata_ff[203]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[204] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[204]),
        .Q(dest_hsdata_ff[204]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[205] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[205]),
        .Q(dest_hsdata_ff[205]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[206] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[206]),
        .Q(dest_hsdata_ff[206]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[207] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[207]),
        .Q(dest_hsdata_ff[207]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[208] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[208]),
        .Q(dest_hsdata_ff[208]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[209] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[209]),
        .Q(dest_hsdata_ff[209]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[20] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[20]),
        .Q(dest_hsdata_ff[20]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[210] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[210]),
        .Q(dest_hsdata_ff[210]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[211] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[211]),
        .Q(dest_hsdata_ff[211]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[212] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[212]),
        .Q(dest_hsdata_ff[212]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[213] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[213]),
        .Q(dest_hsdata_ff[213]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[214] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[214]),
        .Q(dest_hsdata_ff[214]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[215] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[215]),
        .Q(dest_hsdata_ff[215]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[216] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[216]),
        .Q(dest_hsdata_ff[216]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[217] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[217]),
        .Q(dest_hsdata_ff[217]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[218] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[218]),
        .Q(dest_hsdata_ff[218]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[219] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[219]),
        .Q(dest_hsdata_ff[219]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[21] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[21]),
        .Q(dest_hsdata_ff[21]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[220] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[220]),
        .Q(dest_hsdata_ff[220]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[221] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[221]),
        .Q(dest_hsdata_ff[221]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[222] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[222]),
        .Q(dest_hsdata_ff[222]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[223] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[223]),
        .Q(dest_hsdata_ff[223]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[224] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[224]),
        .Q(dest_hsdata_ff[224]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[225] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[225]),
        .Q(dest_hsdata_ff[225]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[226] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[226]),
        .Q(dest_hsdata_ff[226]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[227] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[227]),
        .Q(dest_hsdata_ff[227]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[22] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[22]),
        .Q(dest_hsdata_ff[22]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[23] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[23]),
        .Q(dest_hsdata_ff[23]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[24] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[24]),
        .Q(dest_hsdata_ff[24]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[25] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[25]),
        .Q(dest_hsdata_ff[25]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[26] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[26]),
        .Q(dest_hsdata_ff[26]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[27] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[27]),
        .Q(dest_hsdata_ff[27]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[28] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[28]),
        .Q(dest_hsdata_ff[28]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[29] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[29]),
        .Q(dest_hsdata_ff[29]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[2] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[2]),
        .Q(dest_hsdata_ff[2]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[30] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[30]),
        .Q(dest_hsdata_ff[30]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[31] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[31]),
        .Q(dest_hsdata_ff[31]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[32] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[32]),
        .Q(dest_hsdata_ff[32]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[33] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[33]),
        .Q(dest_hsdata_ff[33]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[34] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[34]),
        .Q(dest_hsdata_ff[34]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[35] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[35]),
        .Q(dest_hsdata_ff[35]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[36] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[36]),
        .Q(dest_hsdata_ff[36]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[37] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[37]),
        .Q(dest_hsdata_ff[37]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[38] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[38]),
        .Q(dest_hsdata_ff[38]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[39] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[39]),
        .Q(dest_hsdata_ff[39]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[3] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[3]),
        .Q(dest_hsdata_ff[3]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[40] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[40]),
        .Q(dest_hsdata_ff[40]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[41] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[41]),
        .Q(dest_hsdata_ff[41]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[42] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[42]),
        .Q(dest_hsdata_ff[42]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[43] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[43]),
        .Q(dest_hsdata_ff[43]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[44] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[44]),
        .Q(dest_hsdata_ff[44]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[45] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[45]),
        .Q(dest_hsdata_ff[45]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[46] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[46]),
        .Q(dest_hsdata_ff[46]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[47] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[47]),
        .Q(dest_hsdata_ff[47]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[48] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[48]),
        .Q(dest_hsdata_ff[48]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[49] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[49]),
        .Q(dest_hsdata_ff[49]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[4] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[4]),
        .Q(dest_hsdata_ff[4]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[50] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[50]),
        .Q(dest_hsdata_ff[50]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[51] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[51]),
        .Q(dest_hsdata_ff[51]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[52] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[52]),
        .Q(dest_hsdata_ff[52]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[53] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[53]),
        .Q(dest_hsdata_ff[53]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[54] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[54]),
        .Q(dest_hsdata_ff[54]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[55] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[55]),
        .Q(dest_hsdata_ff[55]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[56] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[56]),
        .Q(dest_hsdata_ff[56]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[57] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[57]),
        .Q(dest_hsdata_ff[57]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[58] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[58]),
        .Q(dest_hsdata_ff[58]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[59] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[59]),
        .Q(dest_hsdata_ff[59]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[5] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[5]),
        .Q(dest_hsdata_ff[5]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[60] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[60]),
        .Q(dest_hsdata_ff[60]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[61] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[61]),
        .Q(dest_hsdata_ff[61]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[62] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[62]),
        .Q(dest_hsdata_ff[62]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[63] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[63]),
        .Q(dest_hsdata_ff[63]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[64] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[64]),
        .Q(dest_hsdata_ff[64]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[65] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[65]),
        .Q(dest_hsdata_ff[65]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[66] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[66]),
        .Q(dest_hsdata_ff[66]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[67] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[67]),
        .Q(dest_hsdata_ff[67]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[68] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[68]),
        .Q(dest_hsdata_ff[68]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[69] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[69]),
        .Q(dest_hsdata_ff[69]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[6] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[6]),
        .Q(dest_hsdata_ff[6]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[70] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[70]),
        .Q(dest_hsdata_ff[70]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[71] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[71]),
        .Q(dest_hsdata_ff[71]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[72] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[72]),
        .Q(dest_hsdata_ff[72]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[73] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[73]),
        .Q(dest_hsdata_ff[73]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[74] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[74]),
        .Q(dest_hsdata_ff[74]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[75] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[75]),
        .Q(dest_hsdata_ff[75]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[76] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[76]),
        .Q(dest_hsdata_ff[76]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[77] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[77]),
        .Q(dest_hsdata_ff[77]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[78] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[78]),
        .Q(dest_hsdata_ff[78]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[79] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[79]),
        .Q(dest_hsdata_ff[79]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[7] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[7]),
        .Q(dest_hsdata_ff[7]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[80] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[80]),
        .Q(dest_hsdata_ff[80]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[81] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[81]),
        .Q(dest_hsdata_ff[81]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[82] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[82]),
        .Q(dest_hsdata_ff[82]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[83] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[83]),
        .Q(dest_hsdata_ff[83]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[84] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[84]),
        .Q(dest_hsdata_ff[84]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[85] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[85]),
        .Q(dest_hsdata_ff[85]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[86] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[86]),
        .Q(dest_hsdata_ff[86]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[87] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[87]),
        .Q(dest_hsdata_ff[87]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[88] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[88]),
        .Q(dest_hsdata_ff[88]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[89] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[89]),
        .Q(dest_hsdata_ff[89]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[8] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[8]),
        .Q(dest_hsdata_ff[8]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[90] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[90]),
        .Q(dest_hsdata_ff[90]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[91] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[91]),
        .Q(dest_hsdata_ff[91]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[92] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[92]),
        .Q(dest_hsdata_ff[92]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[93] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[93]),
        .Q(dest_hsdata_ff[93]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[94] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[94]),
        .Q(dest_hsdata_ff[94]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[95] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[95]),
        .Q(dest_hsdata_ff[95]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[96] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[96]),
        .Q(dest_hsdata_ff[96]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[97] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[97]),
        .Q(dest_hsdata_ff[97]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[98] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[98]),
        .Q(dest_hsdata_ff[98]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[99] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[99]),
        .Q(dest_hsdata_ff[99]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[9] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[9]),
        .Q(dest_hsdata_ff[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    dest_req_ext_ff_i_1
       (.I0(dest_req_nxt),
        .I1(dest_req_ff),
        .O(dest_hsdata_en));
  FDRE dest_req_ext_ff_reg
       (.C(dest_clk),
        .CE(1'b1),
        .D(dest_hsdata_en),
        .Q(dest_req),
        .R(1'b0));
  FDRE dest_req_ff_reg
       (.C(dest_clk),
        .CE(1'b1),
        .D(dest_req_nxt),
        .Q(dest_req_ff),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \src_hsdata_ff[227]_i_1 
       (.I0(src_sendd_ff),
        .O(p_0_in));
  FDRE \src_hsdata_ff_reg[0] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[0]),
        .Q(src_hsdata_ff[0]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[100] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[100]),
        .Q(src_hsdata_ff[100]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[101] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[101]),
        .Q(src_hsdata_ff[101]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[102] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[102]),
        .Q(src_hsdata_ff[102]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[103] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[103]),
        .Q(src_hsdata_ff[103]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[104] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[104]),
        .Q(src_hsdata_ff[104]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[105] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[105]),
        .Q(src_hsdata_ff[105]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[106] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[106]),
        .Q(src_hsdata_ff[106]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[107] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[107]),
        .Q(src_hsdata_ff[107]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[108] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[108]),
        .Q(src_hsdata_ff[108]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[109] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[109]),
        .Q(src_hsdata_ff[109]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[10] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[10]),
        .Q(src_hsdata_ff[10]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[110] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[110]),
        .Q(src_hsdata_ff[110]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[111] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[111]),
        .Q(src_hsdata_ff[111]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[112] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[112]),
        .Q(src_hsdata_ff[112]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[113] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[113]),
        .Q(src_hsdata_ff[113]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[114] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[114]),
        .Q(src_hsdata_ff[114]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[115] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[115]),
        .Q(src_hsdata_ff[115]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[116] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[116]),
        .Q(src_hsdata_ff[116]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[117] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[117]),
        .Q(src_hsdata_ff[117]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[118] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[118]),
        .Q(src_hsdata_ff[118]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[119] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[119]),
        .Q(src_hsdata_ff[119]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[11] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[11]),
        .Q(src_hsdata_ff[11]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[120] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[120]),
        .Q(src_hsdata_ff[120]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[121] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[121]),
        .Q(src_hsdata_ff[121]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[122] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[122]),
        .Q(src_hsdata_ff[122]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[123] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[123]),
        .Q(src_hsdata_ff[123]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[124] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[124]),
        .Q(src_hsdata_ff[124]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[125] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[125]),
        .Q(src_hsdata_ff[125]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[126] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[126]),
        .Q(src_hsdata_ff[126]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[127] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[127]),
        .Q(src_hsdata_ff[127]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[128] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[128]),
        .Q(src_hsdata_ff[128]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[129] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[129]),
        .Q(src_hsdata_ff[129]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[12] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[12]),
        .Q(src_hsdata_ff[12]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[130] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[130]),
        .Q(src_hsdata_ff[130]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[131] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[131]),
        .Q(src_hsdata_ff[131]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[132] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[132]),
        .Q(src_hsdata_ff[132]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[133] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[133]),
        .Q(src_hsdata_ff[133]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[134] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[134]),
        .Q(src_hsdata_ff[134]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[135] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[135]),
        .Q(src_hsdata_ff[135]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[136] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[136]),
        .Q(src_hsdata_ff[136]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[137] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[137]),
        .Q(src_hsdata_ff[137]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[138] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[138]),
        .Q(src_hsdata_ff[138]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[139] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[139]),
        .Q(src_hsdata_ff[139]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[13] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[13]),
        .Q(src_hsdata_ff[13]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[140] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[140]),
        .Q(src_hsdata_ff[140]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[141] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[141]),
        .Q(src_hsdata_ff[141]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[142] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[142]),
        .Q(src_hsdata_ff[142]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[143] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[143]),
        .Q(src_hsdata_ff[143]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[144] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[144]),
        .Q(src_hsdata_ff[144]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[145] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[145]),
        .Q(src_hsdata_ff[145]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[146] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[146]),
        .Q(src_hsdata_ff[146]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[147] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[147]),
        .Q(src_hsdata_ff[147]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[148] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[148]),
        .Q(src_hsdata_ff[148]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[149] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[149]),
        .Q(src_hsdata_ff[149]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[14] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[14]),
        .Q(src_hsdata_ff[14]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[150] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[150]),
        .Q(src_hsdata_ff[150]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[151] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[151]),
        .Q(src_hsdata_ff[151]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[152] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[152]),
        .Q(src_hsdata_ff[152]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[153] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[153]),
        .Q(src_hsdata_ff[153]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[154] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[154]),
        .Q(src_hsdata_ff[154]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[155] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[155]),
        .Q(src_hsdata_ff[155]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[156] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[156]),
        .Q(src_hsdata_ff[156]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[157] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[157]),
        .Q(src_hsdata_ff[157]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[158] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[158]),
        .Q(src_hsdata_ff[158]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[159] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[159]),
        .Q(src_hsdata_ff[159]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[15] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[15]),
        .Q(src_hsdata_ff[15]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[160] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[160]),
        .Q(src_hsdata_ff[160]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[161] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[161]),
        .Q(src_hsdata_ff[161]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[162] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[162]),
        .Q(src_hsdata_ff[162]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[163] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[163]),
        .Q(src_hsdata_ff[163]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[164] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[164]),
        .Q(src_hsdata_ff[164]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[165] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[165]),
        .Q(src_hsdata_ff[165]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[166] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[166]),
        .Q(src_hsdata_ff[166]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[167] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[167]),
        .Q(src_hsdata_ff[167]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[168] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[168]),
        .Q(src_hsdata_ff[168]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[169] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[169]),
        .Q(src_hsdata_ff[169]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[16] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[16]),
        .Q(src_hsdata_ff[16]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[170] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[170]),
        .Q(src_hsdata_ff[170]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[171] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[171]),
        .Q(src_hsdata_ff[171]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[172] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[172]),
        .Q(src_hsdata_ff[172]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[173] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[173]),
        .Q(src_hsdata_ff[173]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[174] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[174]),
        .Q(src_hsdata_ff[174]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[175] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[175]),
        .Q(src_hsdata_ff[175]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[176] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[176]),
        .Q(src_hsdata_ff[176]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[177] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[177]),
        .Q(src_hsdata_ff[177]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[178] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[178]),
        .Q(src_hsdata_ff[178]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[179] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[179]),
        .Q(src_hsdata_ff[179]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[17] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[17]),
        .Q(src_hsdata_ff[17]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[180] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[180]),
        .Q(src_hsdata_ff[180]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[181] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[181]),
        .Q(src_hsdata_ff[181]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[182] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[182]),
        .Q(src_hsdata_ff[182]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[183] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[183]),
        .Q(src_hsdata_ff[183]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[184] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[184]),
        .Q(src_hsdata_ff[184]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[185] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[185]),
        .Q(src_hsdata_ff[185]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[186] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[186]),
        .Q(src_hsdata_ff[186]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[187] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[187]),
        .Q(src_hsdata_ff[187]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[188] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[188]),
        .Q(src_hsdata_ff[188]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[189] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[189]),
        .Q(src_hsdata_ff[189]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[18] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[18]),
        .Q(src_hsdata_ff[18]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[190] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[190]),
        .Q(src_hsdata_ff[190]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[191] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[191]),
        .Q(src_hsdata_ff[191]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[192] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[192]),
        .Q(src_hsdata_ff[192]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[193] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[193]),
        .Q(src_hsdata_ff[193]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[194] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[194]),
        .Q(src_hsdata_ff[194]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[195] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[195]),
        .Q(src_hsdata_ff[195]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[196] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[196]),
        .Q(src_hsdata_ff[196]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[197] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[197]),
        .Q(src_hsdata_ff[197]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[198] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[198]),
        .Q(src_hsdata_ff[198]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[199] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[199]),
        .Q(src_hsdata_ff[199]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[19] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[19]),
        .Q(src_hsdata_ff[19]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[1] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[1]),
        .Q(src_hsdata_ff[1]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[200] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[200]),
        .Q(src_hsdata_ff[200]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[201] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[201]),
        .Q(src_hsdata_ff[201]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[202] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[202]),
        .Q(src_hsdata_ff[202]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[203] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[203]),
        .Q(src_hsdata_ff[203]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[204] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[204]),
        .Q(src_hsdata_ff[204]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[205] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[205]),
        .Q(src_hsdata_ff[205]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[206] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[206]),
        .Q(src_hsdata_ff[206]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[207] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[207]),
        .Q(src_hsdata_ff[207]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[208] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[208]),
        .Q(src_hsdata_ff[208]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[209] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[209]),
        .Q(src_hsdata_ff[209]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[20] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[20]),
        .Q(src_hsdata_ff[20]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[210] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[210]),
        .Q(src_hsdata_ff[210]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[211] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[211]),
        .Q(src_hsdata_ff[211]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[212] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[212]),
        .Q(src_hsdata_ff[212]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[213] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[213]),
        .Q(src_hsdata_ff[213]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[214] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[214]),
        .Q(src_hsdata_ff[214]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[215] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[215]),
        .Q(src_hsdata_ff[215]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[216] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[216]),
        .Q(src_hsdata_ff[216]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[217] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[217]),
        .Q(src_hsdata_ff[217]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[218] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[218]),
        .Q(src_hsdata_ff[218]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[219] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[219]),
        .Q(src_hsdata_ff[219]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[21] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[21]),
        .Q(src_hsdata_ff[21]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[220] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[220]),
        .Q(src_hsdata_ff[220]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[221] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[221]),
        .Q(src_hsdata_ff[221]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[222] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[222]),
        .Q(src_hsdata_ff[222]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[223] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[223]),
        .Q(src_hsdata_ff[223]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[224] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[224]),
        .Q(src_hsdata_ff[224]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[225] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[225]),
        .Q(src_hsdata_ff[225]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[226] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[226]),
        .Q(src_hsdata_ff[226]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[227] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[227]),
        .Q(src_hsdata_ff[227]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[22] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[22]),
        .Q(src_hsdata_ff[22]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[23] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[23]),
        .Q(src_hsdata_ff[23]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[24] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[24]),
        .Q(src_hsdata_ff[24]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[25] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[25]),
        .Q(src_hsdata_ff[25]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[26] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[26]),
        .Q(src_hsdata_ff[26]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[27] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[27]),
        .Q(src_hsdata_ff[27]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[28] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[28]),
        .Q(src_hsdata_ff[28]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[29] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[29]),
        .Q(src_hsdata_ff[29]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[2] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[2]),
        .Q(src_hsdata_ff[2]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[30] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[30]),
        .Q(src_hsdata_ff[30]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[31] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[31]),
        .Q(src_hsdata_ff[31]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[32] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[32]),
        .Q(src_hsdata_ff[32]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[33] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[33]),
        .Q(src_hsdata_ff[33]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[34] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[34]),
        .Q(src_hsdata_ff[34]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[35] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[35]),
        .Q(src_hsdata_ff[35]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[36] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[36]),
        .Q(src_hsdata_ff[36]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[37] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[37]),
        .Q(src_hsdata_ff[37]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[38] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[38]),
        .Q(src_hsdata_ff[38]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[39] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[39]),
        .Q(src_hsdata_ff[39]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[3] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[3]),
        .Q(src_hsdata_ff[3]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[40] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[40]),
        .Q(src_hsdata_ff[40]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[41] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[41]),
        .Q(src_hsdata_ff[41]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[42] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[42]),
        .Q(src_hsdata_ff[42]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[43] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[43]),
        .Q(src_hsdata_ff[43]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[44] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[44]),
        .Q(src_hsdata_ff[44]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[45] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[45]),
        .Q(src_hsdata_ff[45]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[46] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[46]),
        .Q(src_hsdata_ff[46]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[47] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[47]),
        .Q(src_hsdata_ff[47]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[48] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[48]),
        .Q(src_hsdata_ff[48]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[49] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[49]),
        .Q(src_hsdata_ff[49]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[4] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[4]),
        .Q(src_hsdata_ff[4]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[50] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[50]),
        .Q(src_hsdata_ff[50]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[51] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[51]),
        .Q(src_hsdata_ff[51]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[52] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[52]),
        .Q(src_hsdata_ff[52]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[53] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[53]),
        .Q(src_hsdata_ff[53]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[54] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[54]),
        .Q(src_hsdata_ff[54]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[55] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[55]),
        .Q(src_hsdata_ff[55]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[56] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[56]),
        .Q(src_hsdata_ff[56]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[57] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[57]),
        .Q(src_hsdata_ff[57]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[58] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[58]),
        .Q(src_hsdata_ff[58]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[59] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[59]),
        .Q(src_hsdata_ff[59]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[5] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[5]),
        .Q(src_hsdata_ff[5]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[60] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[60]),
        .Q(src_hsdata_ff[60]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[61] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[61]),
        .Q(src_hsdata_ff[61]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[62] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[62]),
        .Q(src_hsdata_ff[62]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[63] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[63]),
        .Q(src_hsdata_ff[63]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[64] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[64]),
        .Q(src_hsdata_ff[64]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[65] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[65]),
        .Q(src_hsdata_ff[65]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[66] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[66]),
        .Q(src_hsdata_ff[66]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[67] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[67]),
        .Q(src_hsdata_ff[67]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[68] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[68]),
        .Q(src_hsdata_ff[68]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[69] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[69]),
        .Q(src_hsdata_ff[69]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[6] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[6]),
        .Q(src_hsdata_ff[6]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[70] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[70]),
        .Q(src_hsdata_ff[70]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[71] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[71]),
        .Q(src_hsdata_ff[71]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[72] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[72]),
        .Q(src_hsdata_ff[72]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[73] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[73]),
        .Q(src_hsdata_ff[73]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[74] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[74]),
        .Q(src_hsdata_ff[74]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[75] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[75]),
        .Q(src_hsdata_ff[75]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[76] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[76]),
        .Q(src_hsdata_ff[76]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[77] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[77]),
        .Q(src_hsdata_ff[77]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[78] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[78]),
        .Q(src_hsdata_ff[78]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[79] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[79]),
        .Q(src_hsdata_ff[79]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[7] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[7]),
        .Q(src_hsdata_ff[7]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[80] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[80]),
        .Q(src_hsdata_ff[80]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[81] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[81]),
        .Q(src_hsdata_ff[81]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[82] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[82]),
        .Q(src_hsdata_ff[82]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[83] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[83]),
        .Q(src_hsdata_ff[83]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[84] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[84]),
        .Q(src_hsdata_ff[84]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[85] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[85]),
        .Q(src_hsdata_ff[85]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[86] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[86]),
        .Q(src_hsdata_ff[86]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[87] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[87]),
        .Q(src_hsdata_ff[87]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[88] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[88]),
        .Q(src_hsdata_ff[88]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[89] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[89]),
        .Q(src_hsdata_ff[89]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[8] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[8]),
        .Q(src_hsdata_ff[8]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[90] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[90]),
        .Q(src_hsdata_ff[90]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[91] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[91]),
        .Q(src_hsdata_ff[91]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[92] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[92]),
        .Q(src_hsdata_ff[92]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[93] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[93]),
        .Q(src_hsdata_ff[93]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[94] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[94]),
        .Q(src_hsdata_ff[94]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[95] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[95]),
        .Q(src_hsdata_ff[95]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[96] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[96]),
        .Q(src_hsdata_ff[96]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[97] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[97]),
        .Q(src_hsdata_ff[97]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[98] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[98]),
        .Q(src_hsdata_ff[98]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[99] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[99]),
        .Q(src_hsdata_ff[99]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[9] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[9]),
        .Q(src_hsdata_ff[9]),
        .R(1'b0));
  FDRE src_sendd_ff_reg
       (.C(src_clk),
        .CE(1'b1),
        .D(src_send),
        .Q(src_sendd_ff),
        .R(1'b0));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  icyradio_axi_rf_timestamping_0_xpm_cdc_single__parameterized0 xpm_cdc_single_dest2src_inst
       (.dest_clk(src_clk),
        .dest_out(src_rcv),
        .src_clk(1'b0),
        .src_in(dest_req_ff));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  icyradio_axi_rf_timestamping_0_xpm_cdc_single__parameterized0__4 xpm_cdc_single_src2dest_inst
       (.dest_clk(dest_clk),
        .dest_out(dest_req_nxt),
        .src_clk(1'b0),
        .src_in(src_sendd_ff));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module icyradio_axi_rf_timestamping_0_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module icyradio_axi_rf_timestamping_0_xpm_cdc_single__parameterized0
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [1:0]syncstages_ff;

  assign dest_out = syncstages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module icyradio_axi_rf_timestamping_0_xpm_cdc_single__parameterized0__3
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [1:0]syncstages_ff;

  assign dest_out = syncstages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module icyradio_axi_rf_timestamping_0_xpm_cdc_single__parameterized0__4
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [1:0]syncstages_ff;

  assign dest_out = syncstages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
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
