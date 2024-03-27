// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Wed Mar 27 12:08:26 2024
// Host        : node4-dev running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/joao/icyradio/firmware/a100t/icyradio.gen/sources_1/bd/icyradio/ip/icyradio_axi_i2s_0/icyradio_axi_i2s_0_sim_netlist.v
// Design      : icyradio_axi_i2s_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "icyradio_axi_i2s_0,axi_i2s,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "axi_i2s,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module icyradio_axi_i2s_0
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
    i2s_src_clk,
    i2s_src_resetn,
    m_axis_tready,
    m_axis_tvalid,
    m_axis_tdata,
    s_axis_tready,
    s_axis_tvalid,
    s_axis_tdata,
    i2s_mclk,
    i2s_bclk,
    i2s_lrclk,
    i2s_sdata_out,
    i2s_sdata_in);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET aresetn, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN icyradio_axi_pcie_0_0_axi_aclk_out, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *) input [4:0]s_axi_awaddr;
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *) input [4:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARPROT" *) input [2:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 125000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN icyradio_axi_pcie_0_0_axi_aclk_out, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 irq INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME irq, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output irq;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i2s_src_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i2s_src_clk, ASSOCIATED_RESET i2s_src_resetn, ASSOCIATED_BUSIF m_axis:s_axis, FREQ_HZ 49152000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN icyradio_FPGA_CLK1, INSERT_VIP 0" *) input i2s_src_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 i2s_src_resetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i2s_src_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input i2s_src_resetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 49152000, PHASE 0.0, CLK_DOMAIN icyradio_FPGA_CLK1, LAYERED_METADATA undef, INSERT_VIP 0" *) output [31:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) output s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 49152000, PHASE 0.0, CLK_DOMAIN icyradio_FPGA_CLK1, LAYERED_METADATA undef, INSERT_VIP 0" *) input [31:0]s_axis_tdata;
  output i2s_mclk;
  (* X_INTERFACE_INFO = "analog.com:interface:i2s:1.0 i2s BCLK" *) output i2s_bclk;
  (* X_INTERFACE_INFO = "analog.com:interface:i2s:1.0 i2s LRCLK" *) output i2s_lrclk;
  (* X_INTERFACE_INFO = "analog.com:interface:i2s:1.0 i2s SDATA_OUT" *) output i2s_sdata_out;
  (* X_INTERFACE_INFO = "analog.com:interface:i2s:1.0 i2s SDATA_IN" *) input i2s_sdata_in;

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire i2s_bclk;
  wire i2s_lrclk;
  wire i2s_mclk;
  wire i2s_sdata_in;
  wire i2s_sdata_out;
  wire i2s_src_clk;
  wire i2s_src_resetn;
  wire [31:0]m_axis_tdata;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [4:0]s_axi_araddr;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [4:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]\^s_axi_rdata ;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [31:0]s_axis_tdata;
  wire s_axis_tready;
  wire s_axis_tvalid;

  assign irq = \<const0> ;
  assign s_axi_awready = s_axi_wready;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rdata[31] = \^s_axi_rdata [31];
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \^s_axi_rdata [20];
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18:0] = \^s_axi_rdata [18:0];
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  icyradio_axi_i2s_0_axi_i2s inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .i2s_bclk_reg_0(i2s_bclk),
        .i2s_lrclk(i2s_lrclk),
        .i2s_mclk(i2s_mclk),
        .i2s_sdata_in(i2s_sdata_in),
        .i2s_sdata_out(i2s_sdata_out),
        .i2s_src_clk(i2s_src_clk),
        .i2s_src_resetn(i2s_src_resetn),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid_reg_0(m_axis_tvalid),
        .s_axi_araddr(s_axi_araddr[4:2]),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[4:2]),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata({\^s_axi_rdata [31],\^s_axi_rdata [20],\^s_axi_rdata [18:0]}),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid_reg_0(s_axi_rvalid),
        .s_axi_wdata({s_axi_wdata[20],s_axi_wdata[18:0]}),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb[2:0]),
        .s_axi_wvalid(s_axi_wvalid),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tready_reg_0(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "axi_i2s" *) 
module icyradio_axi_i2s_0_axi_i2s
   (s_axi_rvalid_reg_0,
    s_axi_wready,
    s_axi_rdata,
    m_axis_tdata,
    s_axi_bvalid,
    s_axi_arready,
    i2s_bclk_reg_0,
    m_axis_tvalid_reg_0,
    s_axis_tready_reg_0,
    i2s_sdata_out,
    i2s_lrclk,
    i2s_mclk,
    s_axi_arvalid,
    s_axi_rready,
    aresetn,
    s_axi_awaddr,
    aclk,
    i2s_src_clk,
    i2s_src_resetn,
    s_axi_wdata,
    i2s_sdata_in,
    s_axi_wstrb,
    s_axi_bready,
    s_axi_wvalid,
    s_axi_awvalid,
    s_axi_araddr,
    m_axis_tready,
    s_axis_tdata,
    s_axis_tvalid);
  output s_axi_rvalid_reg_0;
  output s_axi_wready;
  output [20:0]s_axi_rdata;
  output [31:0]m_axis_tdata;
  output s_axi_bvalid;
  output s_axi_arready;
  output i2s_bclk_reg_0;
  output m_axis_tvalid_reg_0;
  output s_axis_tready_reg_0;
  output i2s_sdata_out;
  output i2s_lrclk;
  output i2s_mclk;
  input s_axi_arvalid;
  input s_axi_rready;
  input aresetn;
  input [2:0]s_axi_awaddr;
  input aclk;
  input i2s_src_clk;
  input i2s_src_resetn;
  input [19:0]s_axi_wdata;
  input i2s_sdata_in;
  input [2:0]s_axi_wstrb;
  input s_axi_bready;
  input s_axi_wvalid;
  input s_axi_awvalid;
  input [2:0]s_axi_araddr;
  input m_axis_tready;
  input [31:0]s_axis_tdata;
  input s_axis_tvalid;

  wire \FSM_sequential_i2s_fsm_state[0]_i_1_n_0 ;
  wire \FSM_sequential_i2s_fsm_state[0]_i_2_n_0 ;
  wire \FSM_sequential_i2s_fsm_state[0]_i_3_n_0 ;
  wire \FSM_sequential_i2s_fsm_state[1]_i_1_n_0 ;
  wire \FSM_sequential_i2s_fsm_state[2]_i_10_n_0 ;
  wire \FSM_sequential_i2s_fsm_state[2]_i_11_n_0 ;
  wire \FSM_sequential_i2s_fsm_state[2]_i_12_n_0 ;
  wire \FSM_sequential_i2s_fsm_state[2]_i_1_n_0 ;
  wire \FSM_sequential_i2s_fsm_state[2]_i_2_n_0 ;
  wire \FSM_sequential_i2s_fsm_state[2]_i_3_n_0 ;
  wire \FSM_sequential_i2s_fsm_state[2]_i_4_n_0 ;
  wire \FSM_sequential_i2s_fsm_state[2]_i_5_n_0 ;
  wire \FSM_sequential_i2s_fsm_state[2]_i_6_n_0 ;
  wire \FSM_sequential_i2s_fsm_state[2]_i_7_n_0 ;
  wire \FSM_sequential_i2s_fsm_state[2]_i_8_n_0 ;
  wire \FSM_sequential_i2s_fsm_state[2]_i_9_n_0 ;
  wire aclk;
  wire aresetn;
  wire [31:3]data0;
  wire [7:0]i2s_bclk_div;
  wire i2s_bclk_div_a;
  wire \i2s_bclk_div_cnt[7]_i_1_n_0 ;
  wire \i2s_bclk_div_cnt[7]_i_3_n_0 ;
  wire [7:0]i2s_bclk_div_cnt_reg;
  wire i2s_bclk_i_1_n_0;
  wire i2s_bclk_i_3_n_0;
  wire i2s_bclk_i_4_n_0;
  wire i2s_bclk_i_5_n_0;
  wire i2s_bclk_i_6_n_0;
  wire i2s_bclk_reg_0;
  wire i2s_bclk_rising__0;
  wire i2s_bclk_toggle;
  wire [4:0]i2s_bit_cnt;
  wire \i2s_bit_cnt[4]_i_1_n_0 ;
  wire \i2s_bit_cnt[4]_i_4_n_0 ;
  wire \i2s_bit_cnt[4]_i_5_n_0 ;
  wire \i2s_bit_cnt_reg_n_0_[0] ;
  wire \i2s_bit_cnt_reg_n_0_[1] ;
  wire \i2s_bit_cnt_reg_n_0_[2] ;
  wire \i2s_bit_cnt_reg_n_0_[3] ;
  wire \i2s_bit_cnt_reg_n_0_[4] ;
  wire i2s_chan_bit_sz;
  wire i2s_chan_bit_sz_a8_out;
  wire \i2s_chan_cnt[0]_i_1_n_0 ;
  wire \i2s_chan_cnt[1]_i_1_n_0 ;
  wire \i2s_chan_cnt[2]_i_1_n_0 ;
  wire \i2s_chan_cnt[2]_i_2_n_0 ;
  wire \i2s_chan_cnt[2]_i_3_n_0 ;
  wire \i2s_chan_cnt_reg_n_0_[0] ;
  wire \i2s_chan_cnt_reg_n_0_[1] ;
  wire \i2s_chan_cnt_reg_n_0_[2] ;
  wire [7:0]i2s_chan_en;
  wire i2s_chan_en_a;
  wire [2:0]i2s_chan_max;
  wire i2s_clk_div_en;
  wire i2s_clk_div_en_a__1;
  wire i2s_clk_div_en_a_i_1_n_0;
  wire i2s_en;
  wire i2s_en_a__1;
  wire i2s_en_a_i_1_n_0;
  wire [2:0]i2s_fsm_state__0;
  wire i2s_lb_en;
  wire i2s_lb_en_a_i_1_n_0;
  wire i2s_lb_en_a_i_2_n_0;
  wire i2s_lrclk;
  wire [15:0]i2s_lrclk_div;
  wire \i2s_lrclk_div_cnt[0]_i_1_n_0 ;
  wire \i2s_lrclk_div_cnt[0]_i_3_n_0 ;
  wire [15:0]i2s_lrclk_div_cnt_reg;
  wire \i2s_lrclk_div_cnt_reg[0]_i_2_n_0 ;
  wire \i2s_lrclk_div_cnt_reg[0]_i_2_n_1 ;
  wire \i2s_lrclk_div_cnt_reg[0]_i_2_n_2 ;
  wire \i2s_lrclk_div_cnt_reg[0]_i_2_n_3 ;
  wire \i2s_lrclk_div_cnt_reg[0]_i_2_n_4 ;
  wire \i2s_lrclk_div_cnt_reg[0]_i_2_n_5 ;
  wire \i2s_lrclk_div_cnt_reg[0]_i_2_n_6 ;
  wire \i2s_lrclk_div_cnt_reg[0]_i_2_n_7 ;
  wire \i2s_lrclk_div_cnt_reg[12]_i_1_n_1 ;
  wire \i2s_lrclk_div_cnt_reg[12]_i_1_n_2 ;
  wire \i2s_lrclk_div_cnt_reg[12]_i_1_n_3 ;
  wire \i2s_lrclk_div_cnt_reg[12]_i_1_n_4 ;
  wire \i2s_lrclk_div_cnt_reg[12]_i_1_n_5 ;
  wire \i2s_lrclk_div_cnt_reg[12]_i_1_n_6 ;
  wire \i2s_lrclk_div_cnt_reg[12]_i_1_n_7 ;
  wire \i2s_lrclk_div_cnt_reg[4]_i_1_n_0 ;
  wire \i2s_lrclk_div_cnt_reg[4]_i_1_n_1 ;
  wire \i2s_lrclk_div_cnt_reg[4]_i_1_n_2 ;
  wire \i2s_lrclk_div_cnt_reg[4]_i_1_n_3 ;
  wire \i2s_lrclk_div_cnt_reg[4]_i_1_n_4 ;
  wire \i2s_lrclk_div_cnt_reg[4]_i_1_n_5 ;
  wire \i2s_lrclk_div_cnt_reg[4]_i_1_n_6 ;
  wire \i2s_lrclk_div_cnt_reg[4]_i_1_n_7 ;
  wire \i2s_lrclk_div_cnt_reg[8]_i_1_n_0 ;
  wire \i2s_lrclk_div_cnt_reg[8]_i_1_n_1 ;
  wire \i2s_lrclk_div_cnt_reg[8]_i_1_n_2 ;
  wire \i2s_lrclk_div_cnt_reg[8]_i_1_n_3 ;
  wire \i2s_lrclk_div_cnt_reg[8]_i_1_n_4 ;
  wire \i2s_lrclk_div_cnt_reg[8]_i_1_n_5 ;
  wire \i2s_lrclk_div_cnt_reg[8]_i_1_n_6 ;
  wire \i2s_lrclk_div_cnt_reg[8]_i_1_n_7 ;
  wire i2s_lrclk_i_1_n_0;
  wire i2s_lrclk_toggle0;
  wire i2s_lrclk_toggle0_carry__0_i_1_n_0;
  wire i2s_lrclk_toggle0_carry__0_i_2_n_0;
  wire i2s_lrclk_toggle0_carry__0_n_3;
  wire i2s_lrclk_toggle0_carry_i_1_n_0;
  wire i2s_lrclk_toggle0_carry_i_2_n_0;
  wire i2s_lrclk_toggle0_carry_i_3_n_0;
  wire i2s_lrclk_toggle0_carry_i_4_n_0;
  wire i2s_lrclk_toggle0_carry_n_0;
  wire i2s_lrclk_toggle0_carry_n_1;
  wire i2s_lrclk_toggle0_carry_n_2;
  wire i2s_lrclk_toggle0_carry_n_3;
  wire i2s_mclk;
  wire [7:0]i2s_mclk_div;
  wire i2s_mclk_div_a;
  wire \i2s_mclk_div_cnt[7]_i_1_n_0 ;
  wire \i2s_mclk_div_cnt[7]_i_3_n_0 ;
  wire [7:0]i2s_mclk_div_cnt_reg;
  wire i2s_mclk_i_1_n_0;
  wire i2s_mclk_i_3_n_0;
  wire i2s_mclk_i_4_n_0;
  wire i2s_mclk_i_5_n_0;
  wire i2s_mclk_toggle;
  wire i2s_pause;
  wire i2s_pause_a_i_1_n_0;
  wire i2s_paused1__4;
  wire i2s_paused_a_i_1_n_0;
  wire i2s_paused_i_1_n_0;
  wire i2s_paused_i_2_n_0;
  wire i2s_sdata_in;
  wire i2s_sdata_in_q;
  wire [30:0]i2s_sdata_in_sr;
  wire \i2s_sdata_in_sr[30]_i_1_n_0 ;
  wire \i2s_sdata_in_sr[30]_i_3_n_0 ;
  wire [5:0]i2s_sdata_in_sr_bit_cnt;
  wire \i2s_sdata_in_sr_bit_cnt[5]_i_1_n_0 ;
  wire \i2s_sdata_in_sr_bit_cnt[5]_i_3_n_0 ;
  wire \i2s_sdata_in_sr_bit_cnt_reg_n_0_[0] ;
  wire \i2s_sdata_in_sr_bit_cnt_reg_n_0_[1] ;
  wire \i2s_sdata_in_sr_bit_cnt_reg_n_0_[2] ;
  wire \i2s_sdata_in_sr_bit_cnt_reg_n_0_[3] ;
  wire \i2s_sdata_in_sr_bit_cnt_reg_n_0_[4] ;
  wire \i2s_sdata_in_sr_reg_n_0_[0] ;
  wire \i2s_sdata_in_sr_reg_n_0_[10] ;
  wire \i2s_sdata_in_sr_reg_n_0_[11] ;
  wire \i2s_sdata_in_sr_reg_n_0_[12] ;
  wire \i2s_sdata_in_sr_reg_n_0_[13] ;
  wire \i2s_sdata_in_sr_reg_n_0_[14] ;
  wire \i2s_sdata_in_sr_reg_n_0_[15] ;
  wire \i2s_sdata_in_sr_reg_n_0_[16] ;
  wire \i2s_sdata_in_sr_reg_n_0_[17] ;
  wire \i2s_sdata_in_sr_reg_n_0_[18] ;
  wire \i2s_sdata_in_sr_reg_n_0_[19] ;
  wire \i2s_sdata_in_sr_reg_n_0_[1] ;
  wire \i2s_sdata_in_sr_reg_n_0_[20] ;
  wire \i2s_sdata_in_sr_reg_n_0_[21] ;
  wire \i2s_sdata_in_sr_reg_n_0_[22] ;
  wire \i2s_sdata_in_sr_reg_n_0_[23] ;
  wire \i2s_sdata_in_sr_reg_n_0_[24] ;
  wire \i2s_sdata_in_sr_reg_n_0_[25] ;
  wire \i2s_sdata_in_sr_reg_n_0_[26] ;
  wire \i2s_sdata_in_sr_reg_n_0_[27] ;
  wire \i2s_sdata_in_sr_reg_n_0_[28] ;
  wire \i2s_sdata_in_sr_reg_n_0_[29] ;
  wire \i2s_sdata_in_sr_reg_n_0_[2] ;
  wire \i2s_sdata_in_sr_reg_n_0_[30] ;
  wire \i2s_sdata_in_sr_reg_n_0_[3] ;
  wire \i2s_sdata_in_sr_reg_n_0_[4] ;
  wire \i2s_sdata_in_sr_reg_n_0_[5] ;
  wire \i2s_sdata_in_sr_reg_n_0_[6] ;
  wire \i2s_sdata_in_sr_reg_n_0_[7] ;
  wire \i2s_sdata_in_sr_reg_n_0_[8] ;
  wire \i2s_sdata_in_sr_reg_n_0_[9] ;
  wire i2s_sdata_out;
  wire i2s_sdata_out_int_i_1_n_0;
  wire i2s_sdata_out_int_i_3_n_0;
  wire i2s_sdata_out_int_reg_n_0;
  wire [31:0]i2s_sdata_out_sr;
  wire [5:0]i2s_sdata_out_sr_bit_cnt;
  wire \i2s_sdata_out_sr_bit_cnt[0]_i_2_n_0 ;
  wire \i2s_sdata_out_sr_bit_cnt[0]_i_3_n_0 ;
  wire \i2s_sdata_out_sr_bit_cnt[0]_i_4_n_0 ;
  wire \i2s_sdata_out_sr_bit_cnt[0]_i_5_n_0 ;
  wire \i2s_sdata_out_sr_bit_cnt[4]_i_2_n_0 ;
  wire \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ;
  wire \i2s_sdata_out_sr_bit_cnt[5]_i_3_n_0 ;
  wire \i2s_sdata_out_sr_bit_cnt[5]_i_4_n_0 ;
  wire \i2s_sdata_out_sr_bit_cnt[5]_i_5_n_0 ;
  wire \i2s_sdata_out_sr_bit_cnt_reg_n_0_[0] ;
  wire \i2s_sdata_out_sr_bit_cnt_reg_n_0_[1] ;
  wire \i2s_sdata_out_sr_bit_cnt_reg_n_0_[2] ;
  wire \i2s_sdata_out_sr_bit_cnt_reg_n_0_[3] ;
  wire \i2s_sdata_out_sr_bit_cnt_reg_n_0_[4] ;
  wire \i2s_sdata_out_sr_bit_cnt_reg_n_0_[5] ;
  wire \i2s_sdata_out_sr_reg_n_0_[0] ;
  wire \i2s_sdata_out_sr_reg_n_0_[10] ;
  wire \i2s_sdata_out_sr_reg_n_0_[11] ;
  wire \i2s_sdata_out_sr_reg_n_0_[12] ;
  wire \i2s_sdata_out_sr_reg_n_0_[13] ;
  wire \i2s_sdata_out_sr_reg_n_0_[14] ;
  wire \i2s_sdata_out_sr_reg_n_0_[15] ;
  wire \i2s_sdata_out_sr_reg_n_0_[16] ;
  wire \i2s_sdata_out_sr_reg_n_0_[17] ;
  wire \i2s_sdata_out_sr_reg_n_0_[18] ;
  wire \i2s_sdata_out_sr_reg_n_0_[19] ;
  wire \i2s_sdata_out_sr_reg_n_0_[1] ;
  wire \i2s_sdata_out_sr_reg_n_0_[20] ;
  wire \i2s_sdata_out_sr_reg_n_0_[21] ;
  wire \i2s_sdata_out_sr_reg_n_0_[22] ;
  wire \i2s_sdata_out_sr_reg_n_0_[23] ;
  wire \i2s_sdata_out_sr_reg_n_0_[24] ;
  wire \i2s_sdata_out_sr_reg_n_0_[25] ;
  wire \i2s_sdata_out_sr_reg_n_0_[26] ;
  wire \i2s_sdata_out_sr_reg_n_0_[27] ;
  wire \i2s_sdata_out_sr_reg_n_0_[28] ;
  wire \i2s_sdata_out_sr_reg_n_0_[29] ;
  wire \i2s_sdata_out_sr_reg_n_0_[2] ;
  wire \i2s_sdata_out_sr_reg_n_0_[30] ;
  wire \i2s_sdata_out_sr_reg_n_0_[31] ;
  wire \i2s_sdata_out_sr_reg_n_0_[3] ;
  wire \i2s_sdata_out_sr_reg_n_0_[4] ;
  wire \i2s_sdata_out_sr_reg_n_0_[5] ;
  wire \i2s_sdata_out_sr_reg_n_0_[6] ;
  wire \i2s_sdata_out_sr_reg_n_0_[7] ;
  wire \i2s_sdata_out_sr_reg_n_0_[8] ;
  wire \i2s_sdata_out_sr_reg_n_0_[9] ;
  wire i2s_src_clk;
  wire i2s_src_resetn;
  wire i2s_src_resetn_a_i_1_n_0;
  wire [31:0]m_axis_tdata;
  wire [31:0]m_axis_tdata1_in;
  wire \m_axis_tdata[31]_i_1_n_0 ;
  wire m_axis_tready;
  wire m_axis_tvalid0__3;
  wire m_axis_tvalid1__6;
  wire m_axis_tvalid_i_1_n_0;
  wire m_axis_tvalid_i_2_n_0;
  wire m_axis_tvalid_i_3_n_0;
  wire m_axis_tvalid_i_4_n_0;
  wire m_axis_tvalid_i_5_n_0;
  wire m_axis_tvalid_i_7_n_0;
  wire m_axis_tvalid_reg_0;
  wire p_0_in;
  wire p_0_in_0;
  wire [7:0]p_0_in__0;
  wire [7:0]p_0_in__1;
  wire [15:7]p_1_in;
  wire p_27_in;
  wire [2:0]s_axi_araddr;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [2:0]s_axi_awaddr;
  wire s_axi_awready0;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire s_axi_bvalid_i_1_n_0;
  wire [20:0]s_axi_rdata;
  wire \s_axi_rdata[0]_i_2_n_0 ;
  wire \s_axi_rdata[1]_i_2_n_0 ;
  wire \s_axi_rdata[2]_i_2_n_0 ;
  wire \s_axi_rdata[31]_i_1_n_0 ;
  wire \s_axi_rdata[31]_i_2_n_0 ;
  wire \s_axi_rdata[3]_i_2_n_0 ;
  wire \s_axi_rdata[4]_i_2_n_0 ;
  wire [31:0]s_axi_rdata_1;
  wire s_axi_rready;
  wire s_axi_rvalid_i_1_n_0;
  wire s_axi_rvalid_reg_0;
  wire [19:0]s_axi_wdata;
  wire s_axi_wready;
  wire [2:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [31:0]s_axis_tdata;
  wire s_axis_tready023_out;
  wire s_axis_tready_i_1_n_0;
  wire s_axis_tready_i_3_n_0;
  wire s_axis_tready_i_4_n_0;
  wire s_axis_tready_i_5_n_0;
  wire s_axis_tready_i_6_n_0;
  wire s_axis_tready_reg_0;
  wire s_axis_tvalid;
  wire sync_aclk_to_i2s_src_clk_dst_req;
  wire [47:0]sync_aclk_to_i2s_src_clk_in;
  wire [47:0]sync_aclk_to_i2s_src_clk_out;
  wire sync_aclk_to_i2s_src_clk_src_done;
  wire sync_aclk_to_i2s_src_clk_src_req;
  wire sync_aclk_to_i2s_src_clk_src_req_i_1_n_0;
  wire sync_i2s_src_clk_to_aclk_dst_req;
  wire [1:1]sync_i2s_src_clk_to_aclk_in;
  wire [1:0]sync_i2s_src_clk_to_aclk_out;
  wire sync_i2s_src_clk_to_aclk_src_done;
  wire sync_i2s_src_clk_to_aclk_src_req;
  wire sync_i2s_src_clk_to_aclk_src_req_i_1_n_0;
  wire [3:3]\NLW_i2s_lrclk_div_cnt_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:0]NLW_i2s_lrclk_toggle0_carry_O_UNCONNECTED;
  wire [3:2]NLW_i2s_lrclk_toggle0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_i2s_lrclk_toggle0_carry__0_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hAAAAAAAAAAAABF00)) 
    \FSM_sequential_i2s_fsm_state[0]_i_1 
       (.I0(\FSM_sequential_i2s_fsm_state[0]_i_2_n_0 ),
        .I1(\FSM_sequential_i2s_fsm_state[2]_i_3_n_0 ),
        .I2(i2s_fsm_state__0[1]),
        .I3(i2s_fsm_state__0[0]),
        .I4(\FSM_sequential_i2s_fsm_state[2]_i_5_n_0 ),
        .I5(\FSM_sequential_i2s_fsm_state[2]_i_6_n_0 ),
        .O(\FSM_sequential_i2s_fsm_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000555555D5)) 
    \FSM_sequential_i2s_fsm_state[0]_i_2 
       (.I0(i2s_fsm_state__0[0]),
        .I1(i2s_bclk_rising__0),
        .I2(i2s_fsm_state__0[1]),
        .I3(\FSM_sequential_i2s_fsm_state[2]_i_8_n_0 ),
        .I4(\FSM_sequential_i2s_fsm_state[0]_i_3_n_0 ),
        .I5(i2s_fsm_state__0[2]),
        .O(\FSM_sequential_i2s_fsm_state[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \FSM_sequential_i2s_fsm_state[0]_i_3 
       (.I0(p_0_in_0),
        .I1(\i2s_sdata_out_sr_bit_cnt[0]_i_4_n_0 ),
        .I2(\i2s_chan_cnt_reg_n_0_[2] ),
        .I3(\i2s_sdata_out_sr_bit_cnt[0]_i_5_n_0 ),
        .O(\FSM_sequential_i2s_fsm_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h05500550055030F0)) 
    \FSM_sequential_i2s_fsm_state[1]_i_1 
       (.I0(i2s_fsm_state__0[2]),
        .I1(\FSM_sequential_i2s_fsm_state[2]_i_3_n_0 ),
        .I2(i2s_fsm_state__0[1]),
        .I3(i2s_fsm_state__0[0]),
        .I4(\FSM_sequential_i2s_fsm_state[2]_i_5_n_0 ),
        .I5(\FSM_sequential_i2s_fsm_state[2]_i_6_n_0 ),
        .O(\FSM_sequential_i2s_fsm_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAFBAAAAAA08)) 
    \FSM_sequential_i2s_fsm_state[2]_i_1 
       (.I0(\FSM_sequential_i2s_fsm_state[2]_i_2_n_0 ),
        .I1(\FSM_sequential_i2s_fsm_state[2]_i_3_n_0 ),
        .I2(\FSM_sequential_i2s_fsm_state[2]_i_4_n_0 ),
        .I3(\FSM_sequential_i2s_fsm_state[2]_i_5_n_0 ),
        .I4(\FSM_sequential_i2s_fsm_state[2]_i_6_n_0 ),
        .I5(i2s_fsm_state__0[2]),
        .O(\FSM_sequential_i2s_fsm_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_i2s_fsm_state[2]_i_10 
       (.I0(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[1] ),
        .I1(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[0] ),
        .I2(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[2] ),
        .I3(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[3] ),
        .I4(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[4] ),
        .I5(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[5] ),
        .O(\FSM_sequential_i2s_fsm_state[2]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \FSM_sequential_i2s_fsm_state[2]_i_11 
       (.I0(i2s_fsm_state__0[1]),
        .I1(i2s_fsm_state__0[0]),
        .I2(sync_i2s_src_clk_to_aclk_in),
        .I3(i2s_lrclk),
        .O(\FSM_sequential_i2s_fsm_state[2]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_i2s_fsm_state[2]_i_12 
       (.I0(i2s_fsm_state__0[1]),
        .I1(i2s_fsm_state__0[0]),
        .O(\FSM_sequential_i2s_fsm_state[2]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEE0E0E0)) 
    \FSM_sequential_i2s_fsm_state[2]_i_2 
       (.I0(\FSM_sequential_i2s_fsm_state[2]_i_7_n_0 ),
        .I1(m_axis_tvalid_i_5_n_0),
        .I2(\FSM_sequential_i2s_fsm_state[2]_i_8_n_0 ),
        .I3(p_0_in_0),
        .I4(m_axis_tvalid1__6),
        .I5(\FSM_sequential_i2s_fsm_state[2]_i_9_n_0 ),
        .O(\FSM_sequential_i2s_fsm_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h44440000C0FF0000)) 
    \FSM_sequential_i2s_fsm_state[2]_i_3 
       (.I0(\FSM_sequential_i2s_fsm_state[2]_i_10_n_0 ),
        .I1(m_axis_tvalid1__6),
        .I2(p_0_in_0),
        .I3(\FSM_sequential_i2s_fsm_state[2]_i_8_n_0 ),
        .I4(i2s_bclk_toggle),
        .I5(i2s_bclk_reg_0),
        .O(\FSM_sequential_i2s_fsm_state[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_sequential_i2s_fsm_state[2]_i_4 
       (.I0(i2s_fsm_state__0[0]),
        .I1(i2s_fsm_state__0[1]),
        .O(\FSM_sequential_i2s_fsm_state[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hFFFF0008)) 
    \FSM_sequential_i2s_fsm_state[2]_i_5 
       (.I0(\FSM_sequential_i2s_fsm_state[2]_i_10_n_0 ),
        .I1(m_axis_tready),
        .I2(i2s_fsm_state__0[1]),
        .I3(i2s_fsm_state__0[0]),
        .I4(i2s_fsm_state__0[2]),
        .O(\FSM_sequential_i2s_fsm_state[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8000FF0080000000)) 
    \FSM_sequential_i2s_fsm_state[2]_i_6 
       (.I0(\FSM_sequential_i2s_fsm_state[2]_i_11_n_0 ),
        .I1(i2s_clk_div_en),
        .I2(i2s_lrclk_toggle0),
        .I3(i2s_bclk_toggle),
        .I4(i2s_bclk_reg_0),
        .I5(\FSM_sequential_i2s_fsm_state[2]_i_12_n_0 ),
        .O(\FSM_sequential_i2s_fsm_state[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_sequential_i2s_fsm_state[2]_i_7 
       (.I0(i2s_fsm_state__0[1]),
        .I1(i2s_fsm_state__0[2]),
        .O(\FSM_sequential_i2s_fsm_state[2]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \FSM_sequential_i2s_fsm_state[2]_i_8 
       (.I0(i2s_paused1__4),
        .I1(i2s_pause),
        .I2(\i2s_chan_cnt[2]_i_2_n_0 ),
        .O(\FSM_sequential_i2s_fsm_state[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
    \FSM_sequential_i2s_fsm_state[2]_i_9 
       (.I0(i2s_fsm_state__0[2]),
        .I1(i2s_bclk_reg_0),
        .I2(i2s_bclk_i_3_n_0),
        .I3(i2s_bclk_i_4_n_0),
        .I4(i2s_bclk_i_5_n_0),
        .I5(i2s_bclk_i_6_n_0),
        .O(\FSM_sequential_i2s_fsm_state[2]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "I2S_FSM_STATE_RD_FIRST:000,I2S_FSM_STATE_WAIT_BCLK_SYNC:010,I2S_FSM_STATE_ACTIVE:011,I2S_FSM_STATE_RESET:100,I2S_FSM_STATE_WAIT_LRCLK_SYNC:001" *) 
  FDRE \FSM_sequential_i2s_fsm_state_reg[0] 
       (.C(i2s_src_clk),
        .CE(1'b1),
        .D(\FSM_sequential_i2s_fsm_state[0]_i_1_n_0 ),
        .Q(i2s_fsm_state__0[0]),
        .R(m_axis_tvalid_i_1_n_0));
  (* FSM_ENCODED_STATES = "I2S_FSM_STATE_RD_FIRST:000,I2S_FSM_STATE_WAIT_BCLK_SYNC:010,I2S_FSM_STATE_ACTIVE:011,I2S_FSM_STATE_RESET:100,I2S_FSM_STATE_WAIT_LRCLK_SYNC:001" *) 
  FDRE \FSM_sequential_i2s_fsm_state_reg[1] 
       (.C(i2s_src_clk),
        .CE(1'b1),
        .D(\FSM_sequential_i2s_fsm_state[1]_i_1_n_0 ),
        .Q(i2s_fsm_state__0[1]),
        .R(m_axis_tvalid_i_1_n_0));
  (* FSM_ENCODED_STATES = "I2S_FSM_STATE_RD_FIRST:000,I2S_FSM_STATE_WAIT_BCLK_SYNC:010,I2S_FSM_STATE_ACTIVE:011,I2S_FSM_STATE_RESET:100,I2S_FSM_STATE_WAIT_LRCLK_SYNC:001" *) 
  FDRE \FSM_sequential_i2s_fsm_state_reg[2] 
       (.C(i2s_src_clk),
        .CE(1'b1),
        .D(\FSM_sequential_i2s_fsm_state[2]_i_1_n_0 ),
        .Q(i2s_fsm_state__0[2]),
        .R(m_axis_tvalid_i_1_n_0));
  (* DEST_EXT_HSK = "0" *) 
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* SIM_ASSERT_CHK = "1" *) 
  (* SRC_SYNC_FF = "2" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "48" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  (* XPM_MODULE = "TRUE" *) 
  icyradio_axi_i2s_0_xpm_cdc_handshake aclk_to_i2s_src_clk_sync
       (.dest_ack(1'b0),
        .dest_clk(i2s_src_clk),
        .dest_out(sync_aclk_to_i2s_src_clk_out),
        .dest_req(sync_aclk_to_i2s_src_clk_dst_req),
        .src_clk(aclk),
        .src_in(sync_aclk_to_i2s_src_clk_in),
        .src_rcv(sync_aclk_to_i2s_src_clk_src_done),
        .src_send(sync_aclk_to_i2s_src_clk_src_req));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \i2s_bclk_div_a[7]_i_1 
       (.I0(s_axi_wready),
        .I1(s_axi_awaddr[1]),
        .I2(s_axi_awaddr[0]),
        .I3(s_axi_awaddr[2]),
        .I4(sync_aclk_to_i2s_src_clk_in[32]),
        .I5(s_axi_wstrb[0]),
        .O(i2s_bclk_div_a));
  FDRE \i2s_bclk_div_a_reg[0] 
       (.C(aclk),
        .CE(i2s_bclk_div_a),
        .D(s_axi_wdata[0]),
        .Q(sync_aclk_to_i2s_src_clk_in[16]),
        .R(p_0_in));
  FDRE \i2s_bclk_div_a_reg[1] 
       (.C(aclk),
        .CE(i2s_bclk_div_a),
        .D(s_axi_wdata[1]),
        .Q(sync_aclk_to_i2s_src_clk_in[17]),
        .R(p_0_in));
  FDRE \i2s_bclk_div_a_reg[2] 
       (.C(aclk),
        .CE(i2s_bclk_div_a),
        .D(s_axi_wdata[2]),
        .Q(sync_aclk_to_i2s_src_clk_in[18]),
        .R(p_0_in));
  FDRE \i2s_bclk_div_a_reg[3] 
       (.C(aclk),
        .CE(i2s_bclk_div_a),
        .D(s_axi_wdata[3]),
        .Q(sync_aclk_to_i2s_src_clk_in[19]),
        .R(p_0_in));
  FDRE \i2s_bclk_div_a_reg[4] 
       (.C(aclk),
        .CE(i2s_bclk_div_a),
        .D(s_axi_wdata[4]),
        .Q(sync_aclk_to_i2s_src_clk_in[20]),
        .R(p_0_in));
  FDRE \i2s_bclk_div_a_reg[5] 
       (.C(aclk),
        .CE(i2s_bclk_div_a),
        .D(s_axi_wdata[5]),
        .Q(sync_aclk_to_i2s_src_clk_in[21]),
        .R(p_0_in));
  FDRE \i2s_bclk_div_a_reg[6] 
       (.C(aclk),
        .CE(i2s_bclk_div_a),
        .D(s_axi_wdata[6]),
        .Q(sync_aclk_to_i2s_src_clk_in[22]),
        .R(p_0_in));
  FDRE \i2s_bclk_div_a_reg[7] 
       (.C(aclk),
        .CE(i2s_bclk_div_a),
        .D(s_axi_wdata[7]),
        .Q(sync_aclk_to_i2s_src_clk_in[23]),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \i2s_bclk_div_cnt[0]_i_1 
       (.I0(i2s_bclk_div_cnt_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i2s_bclk_div_cnt[1]_i_1 
       (.I0(i2s_bclk_div_cnt_reg[0]),
        .I1(i2s_bclk_div_cnt_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \i2s_bclk_div_cnt[2]_i_1 
       (.I0(i2s_bclk_div_cnt_reg[0]),
        .I1(i2s_bclk_div_cnt_reg[1]),
        .I2(i2s_bclk_div_cnt_reg[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \i2s_bclk_div_cnt[3]_i_1 
       (.I0(i2s_bclk_div_cnt_reg[1]),
        .I1(i2s_bclk_div_cnt_reg[0]),
        .I2(i2s_bclk_div_cnt_reg[2]),
        .I3(i2s_bclk_div_cnt_reg[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \i2s_bclk_div_cnt[4]_i_1 
       (.I0(i2s_bclk_div_cnt_reg[2]),
        .I1(i2s_bclk_div_cnt_reg[0]),
        .I2(i2s_bclk_div_cnt_reg[1]),
        .I3(i2s_bclk_div_cnt_reg[3]),
        .I4(i2s_bclk_div_cnt_reg[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \i2s_bclk_div_cnt[5]_i_1 
       (.I0(i2s_bclk_div_cnt_reg[3]),
        .I1(i2s_bclk_div_cnt_reg[1]),
        .I2(i2s_bclk_div_cnt_reg[0]),
        .I3(i2s_bclk_div_cnt_reg[2]),
        .I4(i2s_bclk_div_cnt_reg[4]),
        .I5(i2s_bclk_div_cnt_reg[5]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i2s_bclk_div_cnt[6]_i_1 
       (.I0(\i2s_bclk_div_cnt[7]_i_3_n_0 ),
        .I1(i2s_bclk_div_cnt_reg[6]),
        .O(p_0_in__0[6]));
  LUT2 #(
    .INIT(4'hB)) 
    \i2s_bclk_div_cnt[7]_i_1 
       (.I0(i2s_bclk_toggle),
        .I1(i2s_clk_div_en),
        .O(\i2s_bclk_div_cnt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \i2s_bclk_div_cnt[7]_i_2 
       (.I0(\i2s_bclk_div_cnt[7]_i_3_n_0 ),
        .I1(i2s_bclk_div_cnt_reg[6]),
        .I2(i2s_bclk_div_cnt_reg[7]),
        .O(p_0_in__0[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \i2s_bclk_div_cnt[7]_i_3 
       (.I0(i2s_bclk_div_cnt_reg[5]),
        .I1(i2s_bclk_div_cnt_reg[3]),
        .I2(i2s_bclk_div_cnt_reg[1]),
        .I3(i2s_bclk_div_cnt_reg[0]),
        .I4(i2s_bclk_div_cnt_reg[2]),
        .I5(i2s_bclk_div_cnt_reg[4]),
        .O(\i2s_bclk_div_cnt[7]_i_3_n_0 ));
  FDRE \i2s_bclk_div_cnt_reg[0] 
       (.C(i2s_src_clk),
        .CE(1'b1),
        .D(p_0_in__0[0]),
        .Q(i2s_bclk_div_cnt_reg[0]),
        .R(\i2s_bclk_div_cnt[7]_i_1_n_0 ));
  FDRE \i2s_bclk_div_cnt_reg[1] 
       (.C(i2s_src_clk),
        .CE(1'b1),
        .D(p_0_in__0[1]),
        .Q(i2s_bclk_div_cnt_reg[1]),
        .R(\i2s_bclk_div_cnt[7]_i_1_n_0 ));
  FDRE \i2s_bclk_div_cnt_reg[2] 
       (.C(i2s_src_clk),
        .CE(1'b1),
        .D(p_0_in__0[2]),
        .Q(i2s_bclk_div_cnt_reg[2]),
        .R(\i2s_bclk_div_cnt[7]_i_1_n_0 ));
  FDRE \i2s_bclk_div_cnt_reg[3] 
       (.C(i2s_src_clk),
        .CE(1'b1),
        .D(p_0_in__0[3]),
        .Q(i2s_bclk_div_cnt_reg[3]),
        .R(\i2s_bclk_div_cnt[7]_i_1_n_0 ));
  FDRE \i2s_bclk_div_cnt_reg[4] 
       (.C(i2s_src_clk),
        .CE(1'b1),
        .D(p_0_in__0[4]),
        .Q(i2s_bclk_div_cnt_reg[4]),
        .R(\i2s_bclk_div_cnt[7]_i_1_n_0 ));
  FDRE \i2s_bclk_div_cnt_reg[5] 
       (.C(i2s_src_clk),
        .CE(1'b1),
        .D(p_0_in__0[5]),
        .Q(i2s_bclk_div_cnt_reg[5]),
        .R(\i2s_bclk_div_cnt[7]_i_1_n_0 ));
  FDRE \i2s_bclk_div_cnt_reg[6] 
       (.C(i2s_src_clk),
        .CE(1'b1),
        .D(p_0_in__0[6]),
        .Q(i2s_bclk_div_cnt_reg[6]),
        .R(\i2s_bclk_div_cnt[7]_i_1_n_0 ));
  FDRE \i2s_bclk_div_cnt_reg[7] 
       (.C(i2s_src_clk),
        .CE(1'b1),
        .D(p_0_in__0[7]),
        .Q(i2s_bclk_div_cnt_reg[7]),
        .R(\i2s_bclk_div_cnt[7]_i_1_n_0 ));
  FDRE \i2s_bclk_div_reg[0] 
       (.C(i2s_src_clk),
        .CE(sync_aclk_to_i2s_src_clk_dst_req),
        .D(sync_aclk_to_i2s_src_clk_out[16]),
        .Q(i2s_bclk_div[0]),
        .R(1'b0));
  FDRE \i2s_bclk_div_reg[1] 
       (.C(i2s_src_clk),
        .CE(sync_aclk_to_i2s_src_clk_dst_req),
        .D(sync_aclk_to_i2s_src_clk_out[17]),
        .Q(i2s_bclk_div[1]),
        .R(1'b0));
  FDRE \i2s_bclk_div_reg[2] 
       (.C(i2s_src_clk),
        .CE(sync_aclk_to_i2s_src_clk_dst_req),
        .D(sync_aclk_to_i2s_src_clk_out[18]),
        .Q(i2s_bclk_div[2]),
        .R(1'b0));
  FDRE \i2s_bclk_div_reg[3] 
       (.C(i2s_src_clk),
        .CE(sync_aclk_to_i2s_src_clk_dst_req),
        .D(sync_aclk_to_i2s_src_clk_out[19]),
        .Q(i2s_bclk_div[3]),
        .R(1'b0));
  FDRE \i2s_bclk_div_reg[4] 
       (.C(i2s_src_clk),
        .CE(sync_aclk_to_i2s_src_clk_dst_req),
        .D(sync_aclk_to_i2s_src_clk_out[20]),
        .Q(i2s_bclk_div[4]),
        .R(1'b0));
  FDRE \i2s_bclk_div_reg[5] 
       (.C(i2s_src_clk),
        .CE(sync_aclk_to_i2s_src_clk_dst_req),
        .D(sync_aclk_to_i2s_src_clk_out[21]),
        .Q(i2s_bclk_div[5]),
        .R(1'b0));
  FDRE \i2s_bclk_div_reg[6] 
       (.C(i2s_src_clk),
        .CE(sync_aclk_to_i2s_src_clk_dst_req),
        .D(sync_aclk_to_i2s_src_clk_out[22]),
        .Q(i2s_bclk_div[6]),
        .R(1'b0));
  FDRE \i2s_bclk_div_reg[7] 
       (.C(i2s_src_clk),
        .CE(sync_aclk_to_i2s_src_clk_dst_req),
        .D(sync_aclk_to_i2s_src_clk_out[23]),
        .Q(i2s_bclk_div[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h60)) 
    i2s_bclk_i_1
       (.I0(i2s_bclk_reg_0),
        .I1(i2s_bclk_toggle),
        .I2(i2s_clk_div_en),
        .O(i2s_bclk_i_1_n_0));
  LUT4 #(
    .INIT(16'h0002)) 
    i2s_bclk_i_2
       (.I0(i2s_bclk_i_3_n_0),
        .I1(i2s_bclk_i_4_n_0),
        .I2(i2s_bclk_i_5_n_0),
        .I3(i2s_bclk_i_6_n_0),
        .O(i2s_bclk_toggle));
  LUT5 #(
    .INIT(32'h82000082)) 
    i2s_bclk_i_3
       (.I0(i2s_clk_div_en),
        .I1(i2s_bclk_div[6]),
        .I2(i2s_bclk_div_cnt_reg[6]),
        .I3(i2s_bclk_div[7]),
        .I4(i2s_bclk_div_cnt_reg[7]),
        .O(i2s_bclk_i_3_n_0));
  LUT4 #(
    .INIT(16'h6FF6)) 
    i2s_bclk_i_4
       (.I0(i2s_bclk_div_cnt_reg[5]),
        .I1(i2s_bclk_div[5]),
        .I2(i2s_bclk_div_cnt_reg[2]),
        .I3(i2s_bclk_div[2]),
        .O(i2s_bclk_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h6FF6)) 
    i2s_bclk_i_5
       (.I0(i2s_bclk_div_cnt_reg[1]),
        .I1(i2s_bclk_div[1]),
        .I2(i2s_bclk_div_cnt_reg[0]),
        .I3(i2s_bclk_div[0]),
        .O(i2s_bclk_i_5_n_0));
  LUT4 #(
    .INIT(16'h6FF6)) 
    i2s_bclk_i_6
       (.I0(i2s_bclk_div_cnt_reg[4]),
        .I1(i2s_bclk_div[4]),
        .I2(i2s_bclk_div_cnt_reg[3]),
        .I3(i2s_bclk_div[3]),
        .O(i2s_bclk_i_6_n_0));
  FDRE i2s_bclk_reg
       (.C(i2s_src_clk),
        .CE(1'b1),
        .D(i2s_bclk_i_1_n_0),
        .Q(i2s_bclk_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \i2s_bit_cnt[0]_i_1 
       (.I0(\i2s_bit_cnt[4]_i_4_n_0 ),
        .I1(\i2s_bit_cnt_reg_n_0_[0] ),
        .O(i2s_bit_cnt[0]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \i2s_bit_cnt[1]_i_1 
       (.I0(\i2s_bit_cnt[4]_i_4_n_0 ),
        .I1(\i2s_bit_cnt_reg_n_0_[0] ),
        .I2(\i2s_bit_cnt_reg_n_0_[1] ),
        .O(i2s_bit_cnt[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \i2s_bit_cnt[2]_i_1 
       (.I0(\i2s_bit_cnt[4]_i_4_n_0 ),
        .I1(\i2s_bit_cnt_reg_n_0_[1] ),
        .I2(\i2s_bit_cnt_reg_n_0_[0] ),
        .I3(\i2s_bit_cnt_reg_n_0_[2] ),
        .O(i2s_bit_cnt[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \i2s_bit_cnt[3]_i_1 
       (.I0(\i2s_bit_cnt[4]_i_4_n_0 ),
        .I1(\i2s_bit_cnt_reg_n_0_[0] ),
        .I2(\i2s_bit_cnt_reg_n_0_[1] ),
        .I3(\i2s_bit_cnt_reg_n_0_[2] ),
        .I4(\i2s_bit_cnt_reg_n_0_[3] ),
        .O(i2s_bit_cnt[3]));
  LUT4 #(
    .INIT(16'h0830)) 
    \i2s_bit_cnt[4]_i_1 
       (.I0(i2s_bclk_rising__0),
        .I1(i2s_fsm_state__0[0]),
        .I2(i2s_fsm_state__0[2]),
        .I3(i2s_fsm_state__0[1]),
        .O(\i2s_bit_cnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \i2s_bit_cnt[4]_i_2 
       (.I0(\i2s_bit_cnt[4]_i_4_n_0 ),
        .I1(\i2s_bit_cnt_reg_n_0_[2] ),
        .I2(\i2s_bit_cnt_reg_n_0_[1] ),
        .I3(\i2s_bit_cnt_reg_n_0_[0] ),
        .I4(\i2s_bit_cnt_reg_n_0_[3] ),
        .I5(\i2s_bit_cnt_reg_n_0_[4] ),
        .O(i2s_bit_cnt[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \i2s_bit_cnt[4]_i_3 
       (.I0(i2s_bclk_i_6_n_0),
        .I1(i2s_bclk_i_5_n_0),
        .I2(i2s_bclk_i_4_n_0),
        .I3(i2s_bclk_i_3_n_0),
        .I4(i2s_bclk_reg_0),
        .O(i2s_bclk_rising__0));
  LUT6 #(
    .INIT(64'h000000004FFFFFFF)) 
    \i2s_bit_cnt[4]_i_4 
       (.I0(\i2s_bit_cnt_reg_n_0_[4] ),
        .I1(i2s_chan_bit_sz),
        .I2(\i2s_bit_cnt[4]_i_5_n_0 ),
        .I3(\i2s_bit_cnt_reg_n_0_[3] ),
        .I4(\i2s_bit_cnt_reg_n_0_[2] ),
        .I5(i2s_fsm_state__0[2]),
        .O(\i2s_bit_cnt[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \i2s_bit_cnt[4]_i_5 
       (.I0(\i2s_bit_cnt_reg_n_0_[0] ),
        .I1(\i2s_bit_cnt_reg_n_0_[1] ),
        .O(\i2s_bit_cnt[4]_i_5_n_0 ));
  FDRE \i2s_bit_cnt_reg[0] 
       (.C(i2s_src_clk),
        .CE(\i2s_bit_cnt[4]_i_1_n_0 ),
        .D(i2s_bit_cnt[0]),
        .Q(\i2s_bit_cnt_reg_n_0_[0] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_bit_cnt_reg[1] 
       (.C(i2s_src_clk),
        .CE(\i2s_bit_cnt[4]_i_1_n_0 ),
        .D(i2s_bit_cnt[1]),
        .Q(\i2s_bit_cnt_reg_n_0_[1] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_bit_cnt_reg[2] 
       (.C(i2s_src_clk),
        .CE(\i2s_bit_cnt[4]_i_1_n_0 ),
        .D(i2s_bit_cnt[2]),
        .Q(\i2s_bit_cnt_reg_n_0_[2] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_bit_cnt_reg[3] 
       (.C(i2s_src_clk),
        .CE(\i2s_bit_cnt[4]_i_1_n_0 ),
        .D(i2s_bit_cnt[3]),
        .Q(\i2s_bit_cnt_reg_n_0_[3] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_bit_cnt_reg[4] 
       (.C(i2s_src_clk),
        .CE(\i2s_bit_cnt[4]_i_1_n_0 ),
        .D(i2s_bit_cnt[4]),
        .Q(\i2s_bit_cnt_reg_n_0_[4] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE i2s_chan_bit_sz_a_reg
       (.C(aclk),
        .CE(i2s_chan_bit_sz_a8_out),
        .D(s_axi_wdata[19]),
        .Q(sync_aclk_to_i2s_src_clk_in[33]),
        .R(p_0_in));
  FDRE i2s_chan_bit_sz_reg
       (.C(i2s_src_clk),
        .CE(sync_aclk_to_i2s_src_clk_dst_req),
        .D(sync_aclk_to_i2s_src_clk_out[33]),
        .Q(i2s_chan_bit_sz),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0F10)) 
    \i2s_chan_cnt[0]_i_1 
       (.I0(\i2s_chan_cnt[2]_i_2_n_0 ),
        .I1(i2s_fsm_state__0[2]),
        .I2(\i2s_chan_cnt[2]_i_3_n_0 ),
        .I3(\i2s_chan_cnt_reg_n_0_[0] ),
        .O(\i2s_chan_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h01FF1000)) 
    \i2s_chan_cnt[1]_i_1 
       (.I0(\i2s_chan_cnt[2]_i_2_n_0 ),
        .I1(i2s_fsm_state__0[2]),
        .I2(\i2s_chan_cnt_reg_n_0_[0] ),
        .I3(\i2s_chan_cnt[2]_i_3_n_0 ),
        .I4(\i2s_chan_cnt_reg_n_0_[1] ),
        .O(\i2s_chan_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0111FFFF10000000)) 
    \i2s_chan_cnt[2]_i_1 
       (.I0(\i2s_chan_cnt[2]_i_2_n_0 ),
        .I1(i2s_fsm_state__0[2]),
        .I2(\i2s_chan_cnt_reg_n_0_[0] ),
        .I3(\i2s_chan_cnt_reg_n_0_[1] ),
        .I4(\i2s_chan_cnt[2]_i_3_n_0 ),
        .I5(\i2s_chan_cnt_reg_n_0_[2] ),
        .O(\i2s_chan_cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \i2s_chan_cnt[2]_i_2 
       (.I0(i2s_chan_max[1]),
        .I1(\i2s_chan_cnt_reg_n_0_[1] ),
        .I2(i2s_chan_max[0]),
        .I3(\i2s_chan_cnt_reg_n_0_[0] ),
        .I4(\i2s_chan_cnt_reg_n_0_[2] ),
        .I5(i2s_chan_max[2]),
        .O(\i2s_chan_cnt[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00800F00)) 
    \i2s_chan_cnt[2]_i_3 
       (.I0(i2s_bclk_rising__0),
        .I1(i2s_paused1__4),
        .I2(i2s_fsm_state__0[0]),
        .I3(i2s_fsm_state__0[2]),
        .I4(i2s_fsm_state__0[1]),
        .O(\i2s_chan_cnt[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000800000008000)) 
    \i2s_chan_cnt[2]_i_4 
       (.I0(\i2s_bit_cnt_reg_n_0_[2] ),
        .I1(\i2s_bit_cnt_reg_n_0_[3] ),
        .I2(\i2s_bit_cnt_reg_n_0_[0] ),
        .I3(\i2s_bit_cnt_reg_n_0_[1] ),
        .I4(i2s_chan_bit_sz),
        .I5(\i2s_bit_cnt_reg_n_0_[4] ),
        .O(i2s_paused1__4));
  FDRE \i2s_chan_cnt_reg[0] 
       (.C(i2s_src_clk),
        .CE(1'b1),
        .D(\i2s_chan_cnt[0]_i_1_n_0 ),
        .Q(\i2s_chan_cnt_reg_n_0_[0] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_chan_cnt_reg[1] 
       (.C(i2s_src_clk),
        .CE(1'b1),
        .D(\i2s_chan_cnt[1]_i_1_n_0 ),
        .Q(\i2s_chan_cnt_reg_n_0_[1] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_chan_cnt_reg[2] 
       (.C(i2s_src_clk),
        .CE(1'b1),
        .D(\i2s_chan_cnt[2]_i_1_n_0 ),
        .Q(\i2s_chan_cnt_reg_n_0_[2] ),
        .R(m_axis_tvalid_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \i2s_chan_en_a[7]_i_1 
       (.I0(s_axi_wready),
        .I1(sync_aclk_to_i2s_src_clk_in[47]),
        .I2(s_axi_wstrb[1]),
        .I3(s_axi_awaddr[0]),
        .I4(s_axi_awaddr[2]),
        .I5(s_axi_awaddr[1]),
        .O(i2s_chan_en_a));
  FDRE \i2s_chan_en_a_reg[0] 
       (.C(aclk),
        .CE(i2s_chan_en_a),
        .D(s_axi_wdata[8]),
        .Q(sync_aclk_to_i2s_src_clk_in[37]),
        .R(p_0_in));
  FDRE \i2s_chan_en_a_reg[1] 
       (.C(aclk),
        .CE(i2s_chan_en_a),
        .D(s_axi_wdata[9]),
        .Q(sync_aclk_to_i2s_src_clk_in[38]),
        .R(p_0_in));
  FDRE \i2s_chan_en_a_reg[2] 
       (.C(aclk),
        .CE(i2s_chan_en_a),
        .D(s_axi_wdata[10]),
        .Q(sync_aclk_to_i2s_src_clk_in[39]),
        .R(p_0_in));
  FDRE \i2s_chan_en_a_reg[3] 
       (.C(aclk),
        .CE(i2s_chan_en_a),
        .D(s_axi_wdata[11]),
        .Q(sync_aclk_to_i2s_src_clk_in[40]),
        .R(p_0_in));
  FDRE \i2s_chan_en_a_reg[4] 
       (.C(aclk),
        .CE(i2s_chan_en_a),
        .D(s_axi_wdata[12]),
        .Q(sync_aclk_to_i2s_src_clk_in[41]),
        .R(p_0_in));
  FDRE \i2s_chan_en_a_reg[5] 
       (.C(aclk),
        .CE(i2s_chan_en_a),
        .D(s_axi_wdata[13]),
        .Q(sync_aclk_to_i2s_src_clk_in[42]),
        .R(p_0_in));
  FDRE \i2s_chan_en_a_reg[6] 
       (.C(aclk),
        .CE(i2s_chan_en_a),
        .D(s_axi_wdata[14]),
        .Q(sync_aclk_to_i2s_src_clk_in[43]),
        .R(p_0_in));
  FDRE \i2s_chan_en_a_reg[7] 
       (.C(aclk),
        .CE(i2s_chan_en_a),
        .D(s_axi_wdata[15]),
        .Q(sync_aclk_to_i2s_src_clk_in[44]),
        .R(p_0_in));
  FDRE \i2s_chan_en_reg[0] 
       (.C(i2s_src_clk),
        .CE(sync_aclk_to_i2s_src_clk_dst_req),
        .D(sync_aclk_to_i2s_src_clk_out[37]),
        .Q(i2s_chan_en[0]),
        .R(1'b0));
  FDRE \i2s_chan_en_reg[1] 
       (.C(i2s_src_clk),
        .CE(sync_aclk_to_i2s_src_clk_dst_req),
        .D(sync_aclk_to_i2s_src_clk_out[38]),
        .Q(i2s_chan_en[1]),
        .R(1'b0));
  FDRE \i2s_chan_en_reg[2] 
       (.C(i2s_src_clk),
        .CE(sync_aclk_to_i2s_src_clk_dst_req),
        .D(sync_aclk_to_i2s_src_clk_out[39]),
        .Q(i2s_chan_en[2]),
        .R(1'b0));
  FDRE \i2s_chan_en_reg[3] 
       (.C(i2s_src_clk),
        .CE(sync_aclk_to_i2s_src_clk_dst_req),
        .D(sync_aclk_to_i2s_src_clk_out[40]),
        .Q(i2s_chan_en[3]),
        .R(1'b0));
  FDRE \i2s_chan_en_reg[4] 
       (.C(i2s_src_clk),
        .CE(sync_aclk_to_i2s_src_clk_dst_req),
        .D(sync_aclk_to_i2s_src_clk_out[41]),
        .Q(i2s_chan_en[4]),
        .R(1'b0));
  FDRE \i2s_chan_en_reg[5] 
       (.C(i2s_src_clk),
        .CE(sync_aclk_to_i2s_src_clk_dst_req),
        .D(sync_aclk_to_i2s_src_clk_out[42]),
        .Q(i2s_chan_en[5]),
        .R(1'b0));
  FDRE \i2s_chan_en_reg[6] 
       (.C(i2s_src_clk),
        .CE(sync_aclk_to_i2s_src_clk_dst_req),
        .D(sync_aclk_to_i2s_src_clk_out[43]),
        .Q(i2s_chan_en[6]),
        .R(1'b0));
  FDRE \i2s_chan_en_reg[7] 
       (.C(i2s_src_clk),
        .CE(sync_aclk_to_i2s_src_clk_dst_req),
        .D(sync_aclk_to_i2s_src_clk_out[44]),
        .Q(i2s_chan_en[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \i2s_chan_max_a[2]_i_1 
       (.I0(s_axi_wready),
        .I1(sync_aclk_to_i2s_src_clk_in[47]),
        .I2(s_axi_wstrb[2]),
        .I3(s_axi_awaddr[0]),
        .I4(s_axi_awaddr[2]),
        .I5(s_axi_awaddr[1]),
        .O(i2s_chan_bit_sz_a8_out));
  FDRE \i2s_chan_max_a_reg[0] 
       (.C(aclk),
        .CE(i2s_chan_bit_sz_a8_out),
        .D(s_axi_wdata[16]),
        .Q(sync_aclk_to_i2s_src_clk_in[34]),
        .R(p_0_in));
  FDRE \i2s_chan_max_a_reg[1] 
       (.C(aclk),
        .CE(i2s_chan_bit_sz_a8_out),
        .D(s_axi_wdata[17]),
        .Q(sync_aclk_to_i2s_src_clk_in[35]),
        .R(p_0_in));
  FDRE \i2s_chan_max_a_reg[2] 
       (.C(aclk),
        .CE(i2s_chan_bit_sz_a8_out),
        .D(s_axi_wdata[18]),
        .Q(sync_aclk_to_i2s_src_clk_in[36]),
        .R(p_0_in));
  FDRE \i2s_chan_max_reg[0] 
       (.C(i2s_src_clk),
        .CE(sync_aclk_to_i2s_src_clk_dst_req),
        .D(sync_aclk_to_i2s_src_clk_out[34]),
        .Q(i2s_chan_max[0]),
        .R(1'b0));
  FDRE \i2s_chan_max_reg[1] 
       (.C(i2s_src_clk),
        .CE(sync_aclk_to_i2s_src_clk_dst_req),
        .D(sync_aclk_to_i2s_src_clk_out[35]),
        .Q(i2s_chan_max[1]),
        .R(1'b0));
  FDRE \i2s_chan_max_reg[2] 
       (.C(i2s_src_clk),
        .CE(sync_aclk_to_i2s_src_clk_dst_req),
        .D(sync_aclk_to_i2s_src_clk_out[36]),
        .Q(i2s_chan_max[2]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hBF80)) 
    i2s_clk_div_en_a_i_1
       (.I0(s_axi_wdata[0]),
        .I1(s_axi_wready),
        .I2(i2s_clk_div_en_a__1),
        .I3(sync_aclk_to_i2s_src_clk_in[32]),
        .O(i2s_clk_div_en_a_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000100010001000)) 
    i2s_clk_div_en_a_i_2
       (.I0(s_axi_awaddr[1]),
        .I1(s_axi_awaddr[2]),
        .I2(s_axi_awaddr[0]),
        .I3(s_axi_wstrb[0]),
        .I4(s_axi_wdata[1]),
        .I5(sync_aclk_to_i2s_src_clk_in[47]),
        .O(i2s_clk_div_en_a__1));
  FDRE i2s_clk_div_en_a_reg
       (.C(aclk),
        .CE(1'b1),
        .D(i2s_clk_div_en_a_i_1_n_0),
        .Q(sync_aclk_to_i2s_src_clk_in[32]),
        .R(p_0_in));
  FDRE i2s_clk_div_en_reg
       (.C(i2s_src_clk),
        .CE(sync_aclk_to_i2s_src_clk_dst_req),
        .D(sync_aclk_to_i2s_src_clk_out[32]),
        .Q(i2s_clk_div_en),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hBF80)) 
    i2s_en_a_i_1
       (.I0(s_axi_wdata[1]),
        .I1(s_axi_wready),
        .I2(i2s_en_a__1),
        .I3(sync_aclk_to_i2s_src_clk_in[47]),
        .O(i2s_en_a_i_1_n_0));
  LUT6 #(
    .INIT(64'h1000100010000000)) 
    i2s_en_a_i_2
       (.I0(s_axi_awaddr[1]),
        .I1(s_axi_awaddr[2]),
        .I2(s_axi_awaddr[0]),
        .I3(s_axi_wstrb[0]),
        .I4(s_axi_wdata[0]),
        .I5(sync_aclk_to_i2s_src_clk_in[32]),
        .O(i2s_en_a__1));
  FDRE i2s_en_a_reg
       (.C(aclk),
        .CE(1'b1),
        .D(i2s_en_a_i_1_n_0),
        .Q(sync_aclk_to_i2s_src_clk_in[47]),
        .R(p_0_in));
  FDRE i2s_en_reg
       (.C(i2s_src_clk),
        .CE(sync_aclk_to_i2s_src_clk_dst_req),
        .D(sync_aclk_to_i2s_src_clk_out[47]),
        .Q(i2s_en),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    i2s_lb_en_a_i_1
       (.I0(s_axi_wdata[4]),
        .I1(s_axi_wready),
        .I2(s_axi_wstrb[0]),
        .I3(s_axi_awaddr[0]),
        .I4(i2s_lb_en_a_i_2_n_0),
        .I5(sync_aclk_to_i2s_src_clk_in[45]),
        .O(i2s_lb_en_a_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i2s_lb_en_a_i_2
       (.I0(s_axi_awaddr[2]),
        .I1(s_axi_awaddr[1]),
        .O(i2s_lb_en_a_i_2_n_0));
  FDRE i2s_lb_en_a_reg
       (.C(aclk),
        .CE(1'b1),
        .D(i2s_lb_en_a_i_1_n_0),
        .Q(sync_aclk_to_i2s_src_clk_in[45]),
        .R(p_0_in));
  FDRE i2s_lb_en_reg
       (.C(i2s_src_clk),
        .CE(sync_aclk_to_i2s_src_clk_dst_req),
        .D(sync_aclk_to_i2s_src_clk_out[45]),
        .Q(i2s_lb_en),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    \i2s_lrclk_div_a[15]_i_1 
       (.I0(s_axi_wready),
        .I1(s_axi_awaddr[1]),
        .I2(s_axi_awaddr[0]),
        .I3(s_axi_awaddr[2]),
        .I4(sync_aclk_to_i2s_src_clk_in[32]),
        .I5(s_axi_wstrb[1]),
        .O(p_1_in[15]));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    \i2s_lrclk_div_a[7]_i_1 
       (.I0(s_axi_wready),
        .I1(s_axi_awaddr[1]),
        .I2(s_axi_awaddr[0]),
        .I3(s_axi_awaddr[2]),
        .I4(sync_aclk_to_i2s_src_clk_in[32]),
        .I5(s_axi_wstrb[0]),
        .O(p_1_in[7]));
  FDRE \i2s_lrclk_div_a_reg[0] 
       (.C(aclk),
        .CE(p_1_in[7]),
        .D(s_axi_wdata[0]),
        .Q(sync_aclk_to_i2s_src_clk_in[0]),
        .R(p_0_in));
  FDRE \i2s_lrclk_div_a_reg[10] 
       (.C(aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[10]),
        .Q(sync_aclk_to_i2s_src_clk_in[10]),
        .R(p_0_in));
  FDRE \i2s_lrclk_div_a_reg[11] 
       (.C(aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[11]),
        .Q(sync_aclk_to_i2s_src_clk_in[11]),
        .R(p_0_in));
  FDRE \i2s_lrclk_div_a_reg[12] 
       (.C(aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[12]),
        .Q(sync_aclk_to_i2s_src_clk_in[12]),
        .R(p_0_in));
  FDRE \i2s_lrclk_div_a_reg[13] 
       (.C(aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[13]),
        .Q(sync_aclk_to_i2s_src_clk_in[13]),
        .R(p_0_in));
  FDRE \i2s_lrclk_div_a_reg[14] 
       (.C(aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[14]),
        .Q(sync_aclk_to_i2s_src_clk_in[14]),
        .R(p_0_in));
  FDRE \i2s_lrclk_div_a_reg[15] 
       (.C(aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[15]),
        .Q(sync_aclk_to_i2s_src_clk_in[15]),
        .R(p_0_in));
  FDRE \i2s_lrclk_div_a_reg[1] 
       (.C(aclk),
        .CE(p_1_in[7]),
        .D(s_axi_wdata[1]),
        .Q(sync_aclk_to_i2s_src_clk_in[1]),
        .R(p_0_in));
  FDRE \i2s_lrclk_div_a_reg[2] 
       (.C(aclk),
        .CE(p_1_in[7]),
        .D(s_axi_wdata[2]),
        .Q(sync_aclk_to_i2s_src_clk_in[2]),
        .R(p_0_in));
  FDRE \i2s_lrclk_div_a_reg[3] 
       (.C(aclk),
        .CE(p_1_in[7]),
        .D(s_axi_wdata[3]),
        .Q(sync_aclk_to_i2s_src_clk_in[3]),
        .R(p_0_in));
  FDRE \i2s_lrclk_div_a_reg[4] 
       (.C(aclk),
        .CE(p_1_in[7]),
        .D(s_axi_wdata[4]),
        .Q(sync_aclk_to_i2s_src_clk_in[4]),
        .R(p_0_in));
  FDRE \i2s_lrclk_div_a_reg[5] 
       (.C(aclk),
        .CE(p_1_in[7]),
        .D(s_axi_wdata[5]),
        .Q(sync_aclk_to_i2s_src_clk_in[5]),
        .R(p_0_in));
  FDRE \i2s_lrclk_div_a_reg[6] 
       (.C(aclk),
        .CE(p_1_in[7]),
        .D(s_axi_wdata[6]),
        .Q(sync_aclk_to_i2s_src_clk_in[6]),
        .R(p_0_in));
  FDRE \i2s_lrclk_div_a_reg[7] 
       (.C(aclk),
        .CE(p_1_in[7]),
        .D(s_axi_wdata[7]),
        .Q(sync_aclk_to_i2s_src_clk_in[7]),
        .R(p_0_in));
  FDRE \i2s_lrclk_div_a_reg[8] 
       (.C(aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[8]),
        .Q(sync_aclk_to_i2s_src_clk_in[8]),
        .R(p_0_in));
  FDRE \i2s_lrclk_div_a_reg[9] 
       (.C(aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[9]),
        .Q(sync_aclk_to_i2s_src_clk_in[9]),
        .R(p_0_in));
  LUT2 #(
    .INIT(4'hB)) 
    \i2s_lrclk_div_cnt[0]_i_1 
       (.I0(i2s_lrclk_toggle0),
        .I1(i2s_clk_div_en),
        .O(\i2s_lrclk_div_cnt[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \i2s_lrclk_div_cnt[0]_i_3 
       (.I0(i2s_lrclk_div_cnt_reg[0]),
        .O(\i2s_lrclk_div_cnt[0]_i_3_n_0 ));
  FDRE \i2s_lrclk_div_cnt_reg[0] 
       (.C(i2s_src_clk),
        .CE(1'b1),
        .D(\i2s_lrclk_div_cnt_reg[0]_i_2_n_7 ),
        .Q(i2s_lrclk_div_cnt_reg[0]),
        .R(\i2s_lrclk_div_cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i2s_lrclk_div_cnt_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\i2s_lrclk_div_cnt_reg[0]_i_2_n_0 ,\i2s_lrclk_div_cnt_reg[0]_i_2_n_1 ,\i2s_lrclk_div_cnt_reg[0]_i_2_n_2 ,\i2s_lrclk_div_cnt_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\i2s_lrclk_div_cnt_reg[0]_i_2_n_4 ,\i2s_lrclk_div_cnt_reg[0]_i_2_n_5 ,\i2s_lrclk_div_cnt_reg[0]_i_2_n_6 ,\i2s_lrclk_div_cnt_reg[0]_i_2_n_7 }),
        .S({i2s_lrclk_div_cnt_reg[3:1],\i2s_lrclk_div_cnt[0]_i_3_n_0 }));
  FDRE \i2s_lrclk_div_cnt_reg[10] 
       (.C(i2s_src_clk),
        .CE(1'b1),
        .D(\i2s_lrclk_div_cnt_reg[8]_i_1_n_5 ),
        .Q(i2s_lrclk_div_cnt_reg[10]),
        .R(\i2s_lrclk_div_cnt[0]_i_1_n_0 ));
  FDRE \i2s_lrclk_div_cnt_reg[11] 
       (.C(i2s_src_clk),
        .CE(1'b1),
        .D(\i2s_lrclk_div_cnt_reg[8]_i_1_n_4 ),
        .Q(i2s_lrclk_div_cnt_reg[11]),
        .R(\i2s_lrclk_div_cnt[0]_i_1_n_0 ));
  FDRE \i2s_lrclk_div_cnt_reg[12] 
       (.C(i2s_src_clk),
        .CE(1'b1),
        .D(\i2s_lrclk_div_cnt_reg[12]_i_1_n_7 ),
        .Q(i2s_lrclk_div_cnt_reg[12]),
        .R(\i2s_lrclk_div_cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i2s_lrclk_div_cnt_reg[12]_i_1 
       (.CI(\i2s_lrclk_div_cnt_reg[8]_i_1_n_0 ),
        .CO({\NLW_i2s_lrclk_div_cnt_reg[12]_i_1_CO_UNCONNECTED [3],\i2s_lrclk_div_cnt_reg[12]_i_1_n_1 ,\i2s_lrclk_div_cnt_reg[12]_i_1_n_2 ,\i2s_lrclk_div_cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i2s_lrclk_div_cnt_reg[12]_i_1_n_4 ,\i2s_lrclk_div_cnt_reg[12]_i_1_n_5 ,\i2s_lrclk_div_cnt_reg[12]_i_1_n_6 ,\i2s_lrclk_div_cnt_reg[12]_i_1_n_7 }),
        .S(i2s_lrclk_div_cnt_reg[15:12]));
  FDRE \i2s_lrclk_div_cnt_reg[13] 
       (.C(i2s_src_clk),
        .CE(1'b1),
        .D(\i2s_lrclk_div_cnt_reg[12]_i_1_n_6 ),
        .Q(i2s_lrclk_div_cnt_reg[13]),
        .R(\i2s_lrclk_div_cnt[0]_i_1_n_0 ));
  FDRE \i2s_lrclk_div_cnt_reg[14] 
       (.C(i2s_src_clk),
        .CE(1'b1),
        .D(\i2s_lrclk_div_cnt_reg[12]_i_1_n_5 ),
        .Q(i2s_lrclk_div_cnt_reg[14]),
        .R(\i2s_lrclk_div_cnt[0]_i_1_n_0 ));
  FDRE \i2s_lrclk_div_cnt_reg[15] 
       (.C(i2s_src_clk),
        .CE(1'b1),
        .D(\i2s_lrclk_div_cnt_reg[12]_i_1_n_4 ),
        .Q(i2s_lrclk_div_cnt_reg[15]),
        .R(\i2s_lrclk_div_cnt[0]_i_1_n_0 ));
  FDRE \i2s_lrclk_div_cnt_reg[1] 
       (.C(i2s_src_clk),
        .CE(1'b1),
        .D(\i2s_lrclk_div_cnt_reg[0]_i_2_n_6 ),
        .Q(i2s_lrclk_div_cnt_reg[1]),
        .R(\i2s_lrclk_div_cnt[0]_i_1_n_0 ));
  FDRE \i2s_lrclk_div_cnt_reg[2] 
       (.C(i2s_src_clk),
        .CE(1'b1),
        .D(\i2s_lrclk_div_cnt_reg[0]_i_2_n_5 ),
        .Q(i2s_lrclk_div_cnt_reg[2]),
        .R(\i2s_lrclk_div_cnt[0]_i_1_n_0 ));
  FDRE \i2s_lrclk_div_cnt_reg[3] 
       (.C(i2s_src_clk),
        .CE(1'b1),
        .D(\i2s_lrclk_div_cnt_reg[0]_i_2_n_4 ),
        .Q(i2s_lrclk_div_cnt_reg[3]),
        .R(\i2s_lrclk_div_cnt[0]_i_1_n_0 ));
  FDRE \i2s_lrclk_div_cnt_reg[4] 
       (.C(i2s_src_clk),
        .CE(1'b1),
        .D(\i2s_lrclk_div_cnt_reg[4]_i_1_n_7 ),
        .Q(i2s_lrclk_div_cnt_reg[4]),
        .R(\i2s_lrclk_div_cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i2s_lrclk_div_cnt_reg[4]_i_1 
       (.CI(\i2s_lrclk_div_cnt_reg[0]_i_2_n_0 ),
        .CO({\i2s_lrclk_div_cnt_reg[4]_i_1_n_0 ,\i2s_lrclk_div_cnt_reg[4]_i_1_n_1 ,\i2s_lrclk_div_cnt_reg[4]_i_1_n_2 ,\i2s_lrclk_div_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i2s_lrclk_div_cnt_reg[4]_i_1_n_4 ,\i2s_lrclk_div_cnt_reg[4]_i_1_n_5 ,\i2s_lrclk_div_cnt_reg[4]_i_1_n_6 ,\i2s_lrclk_div_cnt_reg[4]_i_1_n_7 }),
        .S(i2s_lrclk_div_cnt_reg[7:4]));
  FDRE \i2s_lrclk_div_cnt_reg[5] 
       (.C(i2s_src_clk),
        .CE(1'b1),
        .D(\i2s_lrclk_div_cnt_reg[4]_i_1_n_6 ),
        .Q(i2s_lrclk_div_cnt_reg[5]),
        .R(\i2s_lrclk_div_cnt[0]_i_1_n_0 ));
  FDRE \i2s_lrclk_div_cnt_reg[6] 
       (.C(i2s_src_clk),
        .CE(1'b1),
        .D(\i2s_lrclk_div_cnt_reg[4]_i_1_n_5 ),
        .Q(i2s_lrclk_div_cnt_reg[6]),
        .R(\i2s_lrclk_div_cnt[0]_i_1_n_0 ));
  FDRE \i2s_lrclk_div_cnt_reg[7] 
       (.C(i2s_src_clk),
        .CE(1'b1),
        .D(\i2s_lrclk_div_cnt_reg[4]_i_1_n_4 ),
        .Q(i2s_lrclk_div_cnt_reg[7]),
        .R(\i2s_lrclk_div_cnt[0]_i_1_n_0 ));
  FDRE \i2s_lrclk_div_cnt_reg[8] 
       (.C(i2s_src_clk),
        .CE(1'b1),
        .D(\i2s_lrclk_div_cnt_reg[8]_i_1_n_7 ),
        .Q(i2s_lrclk_div_cnt_reg[8]),
        .R(\i2s_lrclk_div_cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i2s_lrclk_div_cnt_reg[8]_i_1 
       (.CI(\i2s_lrclk_div_cnt_reg[4]_i_1_n_0 ),
        .CO({\i2s_lrclk_div_cnt_reg[8]_i_1_n_0 ,\i2s_lrclk_div_cnt_reg[8]_i_1_n_1 ,\i2s_lrclk_div_cnt_reg[8]_i_1_n_2 ,\i2s_lrclk_div_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i2s_lrclk_div_cnt_reg[8]_i_1_n_4 ,\i2s_lrclk_div_cnt_reg[8]_i_1_n_5 ,\i2s_lrclk_div_cnt_reg[8]_i_1_n_6 ,\i2s_lrclk_div_cnt_reg[8]_i_1_n_7 }),
        .S(i2s_lrclk_div_cnt_reg[11:8]));
  FDRE \i2s_lrclk_div_cnt_reg[9] 
       (.C(i2s_src_clk),
        .CE(1'b1),
        .D(\i2s_lrclk_div_cnt_reg[8]_i_1_n_6 ),
        .Q(i2s_lrclk_div_cnt_reg[9]),
        .R(\i2s_lrclk_div_cnt[0]_i_1_n_0 ));
  FDRE \i2s_lrclk_div_reg[0] 
       (.C(i2s_src_clk),
        .CE(sync_aclk_to_i2s_src_clk_dst_req),
        .D(sync_aclk_to_i2s_src_clk_out[0]),
        .Q(i2s_lrclk_div[0]),
        .R(1'b0));
  FDRE \i2s_lrclk_div_reg[10] 
       (.C(i2s_src_clk),
        .CE(sync_aclk_to_i2s_src_clk_dst_req),
        .D(sync_aclk_to_i2s_src_clk_out[10]),
        .Q(i2s_lrclk_div[10]),
        .R(1'b0));
  FDRE \i2s_lrclk_div_reg[11] 
       (.C(i2s_src_clk),
        .CE(sync_aclk_to_i2s_src_clk_dst_req),
        .D(sync_aclk_to_i2s_src_clk_out[11]),
        .Q(i2s_lrclk_div[11]),
        .R(1'b0));
  FDRE \i2s_lrclk_div_reg[12] 
       (.C(i2s_src_clk),
        .CE(sync_aclk_to_i2s_src_clk_dst_req),
        .D(sync_aclk_to_i2s_src_clk_out[12]),
        .Q(i2s_lrclk_div[12]),
        .R(1'b0));
  FDRE \i2s_lrclk_div_reg[13] 
       (.C(i2s_src_clk),
        .CE(sync_aclk_to_i2s_src_clk_dst_req),
        .D(sync_aclk_to_i2s_src_clk_out[13]),
        .Q(i2s_lrclk_div[13]),
        .R(1'b0));
  FDRE \i2s_lrclk_div_reg[14] 
       (.C(i2s_src_clk),
        .CE(sync_aclk_to_i2s_src_clk_dst_req),
        .D(sync_aclk_to_i2s_src_clk_out[14]),
        .Q(i2s_lrclk_div[14]),
        .R(1'b0));
  FDRE \i2s_lrclk_div_reg[15] 
       (.C(i2s_src_clk),
        .CE(sync_aclk_to_i2s_src_clk_dst_req),
        .D(sync_aclk_to_i2s_src_clk_out[15]),
        .Q(i2s_lrclk_div[15]),
        .R(1'b0));
  FDRE \i2s_lrclk_div_reg[1] 
       (.C(i2s_src_clk),
        .CE(sync_aclk_to_i2s_src_clk_dst_req),
        .D(sync_aclk_to_i2s_src_clk_out[1]),
        .Q(i2s_lrclk_div[1]),
        .R(1'b0));
  FDRE \i2s_lrclk_div_reg[2] 
       (.C(i2s_src_clk),
        .CE(sync_aclk_to_i2s_src_clk_dst_req),
        .D(sync_aclk_to_i2s_src_clk_out[2]),
        .Q(i2s_lrclk_div[2]),
        .R(1'b0));
  FDRE \i2s_lrclk_div_reg[3] 
       (.C(i2s_src_clk),
        .CE(sync_aclk_to_i2s_src_clk_dst_req),
        .D(sync_aclk_to_i2s_src_clk_out[3]),
        .Q(i2s_lrclk_div[3]),
        .R(1'b0));
  FDRE \i2s_lrclk_div_reg[4] 
       (.C(i2s_src_clk),
        .CE(sync_aclk_to_i2s_src_clk_dst_req),
        .D(sync_aclk_to_i2s_src_clk_out[4]),
        .Q(i2s_lrclk_div[4]),
        .R(1'b0));
  FDRE \i2s_lrclk_div_reg[5] 
       (.C(i2s_src_clk),
        .CE(sync_aclk_to_i2s_src_clk_dst_req),
        .D(sync_aclk_to_i2s_src_clk_out[5]),
        .Q(i2s_lrclk_div[5]),
        .R(1'b0));
  FDRE \i2s_lrclk_div_reg[6] 
       (.C(i2s_src_clk),
        .CE(sync_aclk_to_i2s_src_clk_dst_req),
        .D(sync_aclk_to_i2s_src_clk_out[6]),
        .Q(i2s_lrclk_div[6]),
        .R(1'b0));
  FDRE \i2s_lrclk_div_reg[7] 
       (.C(i2s_src_clk),
        .CE(sync_aclk_to_i2s_src_clk_dst_req),
        .D(sync_aclk_to_i2s_src_clk_out[7]),
        .Q(i2s_lrclk_div[7]),
        .R(1'b0));
  FDRE \i2s_lrclk_div_reg[8] 
       (.C(i2s_src_clk),
        .CE(sync_aclk_to_i2s_src_clk_dst_req),
        .D(sync_aclk_to_i2s_src_clk_out[8]),
        .Q(i2s_lrclk_div[8]),
        .R(1'b0));
  FDRE \i2s_lrclk_div_reg[9] 
       (.C(i2s_src_clk),
        .CE(sync_aclk_to_i2s_src_clk_dst_req),
        .D(sync_aclk_to_i2s_src_clk_out[9]),
        .Q(i2s_lrclk_div[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h60)) 
    i2s_lrclk_i_1
       (.I0(i2s_lrclk),
        .I1(i2s_lrclk_toggle0),
        .I2(i2s_clk_div_en),
        .O(i2s_lrclk_i_1_n_0));
  FDRE i2s_lrclk_reg
       (.C(i2s_src_clk),
        .CE(1'b1),
        .D(i2s_lrclk_i_1_n_0),
        .Q(i2s_lrclk),
        .R(1'b0));
  CARRY4 i2s_lrclk_toggle0_carry
       (.CI(1'b0),
        .CO({i2s_lrclk_toggle0_carry_n_0,i2s_lrclk_toggle0_carry_n_1,i2s_lrclk_toggle0_carry_n_2,i2s_lrclk_toggle0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_i2s_lrclk_toggle0_carry_O_UNCONNECTED[3:0]),
        .S({i2s_lrclk_toggle0_carry_i_1_n_0,i2s_lrclk_toggle0_carry_i_2_n_0,i2s_lrclk_toggle0_carry_i_3_n_0,i2s_lrclk_toggle0_carry_i_4_n_0}));
  CARRY4 i2s_lrclk_toggle0_carry__0
       (.CI(i2s_lrclk_toggle0_carry_n_0),
        .CO({NLW_i2s_lrclk_toggle0_carry__0_CO_UNCONNECTED[3:2],i2s_lrclk_toggle0,i2s_lrclk_toggle0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_i2s_lrclk_toggle0_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,i2s_lrclk_toggle0_carry__0_i_1_n_0,i2s_lrclk_toggle0_carry__0_i_2_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    i2s_lrclk_toggle0_carry__0_i_1
       (.I0(i2s_lrclk_div[15]),
        .I1(i2s_lrclk_div_cnt_reg[15]),
        .O(i2s_lrclk_toggle0_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i2s_lrclk_toggle0_carry__0_i_2
       (.I0(i2s_lrclk_div_cnt_reg[13]),
        .I1(i2s_lrclk_div[13]),
        .I2(i2s_lrclk_div_cnt_reg[12]),
        .I3(i2s_lrclk_div[12]),
        .I4(i2s_lrclk_div[14]),
        .I5(i2s_lrclk_div_cnt_reg[14]),
        .O(i2s_lrclk_toggle0_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i2s_lrclk_toggle0_carry_i_1
       (.I0(i2s_lrclk_div_cnt_reg[10]),
        .I1(i2s_lrclk_div[10]),
        .I2(i2s_lrclk_div_cnt_reg[9]),
        .I3(i2s_lrclk_div[9]),
        .I4(i2s_lrclk_div[11]),
        .I5(i2s_lrclk_div_cnt_reg[11]),
        .O(i2s_lrclk_toggle0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i2s_lrclk_toggle0_carry_i_2
       (.I0(i2s_lrclk_div_cnt_reg[7]),
        .I1(i2s_lrclk_div[7]),
        .I2(i2s_lrclk_div_cnt_reg[6]),
        .I3(i2s_lrclk_div[6]),
        .I4(i2s_lrclk_div[8]),
        .I5(i2s_lrclk_div_cnt_reg[8]),
        .O(i2s_lrclk_toggle0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i2s_lrclk_toggle0_carry_i_3
       (.I0(i2s_lrclk_div_cnt_reg[4]),
        .I1(i2s_lrclk_div[4]),
        .I2(i2s_lrclk_div_cnt_reg[3]),
        .I3(i2s_lrclk_div[3]),
        .I4(i2s_lrclk_div[5]),
        .I5(i2s_lrclk_div_cnt_reg[5]),
        .O(i2s_lrclk_toggle0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i2s_lrclk_toggle0_carry_i_4
       (.I0(i2s_lrclk_div_cnt_reg[1]),
        .I1(i2s_lrclk_div[1]),
        .I2(i2s_lrclk_div_cnt_reg[0]),
        .I3(i2s_lrclk_div[0]),
        .I4(i2s_lrclk_div[2]),
        .I5(i2s_lrclk_div_cnt_reg[2]),
        .O(i2s_lrclk_toggle0_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \i2s_mclk_div_a[7]_i_1 
       (.I0(s_axi_wready),
        .I1(sync_aclk_to_i2s_src_clk_in[32]),
        .I2(s_axi_wstrb[0]),
        .I3(s_axi_awaddr[1]),
        .I4(s_axi_awaddr[2]),
        .I5(s_axi_awaddr[0]),
        .O(i2s_mclk_div_a));
  FDRE \i2s_mclk_div_a_reg[0] 
       (.C(aclk),
        .CE(i2s_mclk_div_a),
        .D(s_axi_wdata[0]),
        .Q(sync_aclk_to_i2s_src_clk_in[24]),
        .R(p_0_in));
  FDRE \i2s_mclk_div_a_reg[1] 
       (.C(aclk),
        .CE(i2s_mclk_div_a),
        .D(s_axi_wdata[1]),
        .Q(sync_aclk_to_i2s_src_clk_in[25]),
        .R(p_0_in));
  FDRE \i2s_mclk_div_a_reg[2] 
       (.C(aclk),
        .CE(i2s_mclk_div_a),
        .D(s_axi_wdata[2]),
        .Q(sync_aclk_to_i2s_src_clk_in[26]),
        .R(p_0_in));
  FDRE \i2s_mclk_div_a_reg[3] 
       (.C(aclk),
        .CE(i2s_mclk_div_a),
        .D(s_axi_wdata[3]),
        .Q(sync_aclk_to_i2s_src_clk_in[27]),
        .R(p_0_in));
  FDRE \i2s_mclk_div_a_reg[4] 
       (.C(aclk),
        .CE(i2s_mclk_div_a),
        .D(s_axi_wdata[4]),
        .Q(sync_aclk_to_i2s_src_clk_in[28]),
        .R(p_0_in));
  FDRE \i2s_mclk_div_a_reg[5] 
       (.C(aclk),
        .CE(i2s_mclk_div_a),
        .D(s_axi_wdata[5]),
        .Q(sync_aclk_to_i2s_src_clk_in[29]),
        .R(p_0_in));
  FDRE \i2s_mclk_div_a_reg[6] 
       (.C(aclk),
        .CE(i2s_mclk_div_a),
        .D(s_axi_wdata[6]),
        .Q(sync_aclk_to_i2s_src_clk_in[30]),
        .R(p_0_in));
  FDRE \i2s_mclk_div_a_reg[7] 
       (.C(aclk),
        .CE(i2s_mclk_div_a),
        .D(s_axi_wdata[7]),
        .Q(sync_aclk_to_i2s_src_clk_in[31]),
        .R(p_0_in));
  LUT1 #(
    .INIT(2'h1)) 
    \i2s_mclk_div_cnt[0]_i_1 
       (.I0(i2s_mclk_div_cnt_reg[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i2s_mclk_div_cnt[1]_i_1 
       (.I0(i2s_mclk_div_cnt_reg[0]),
        .I1(i2s_mclk_div_cnt_reg[1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \i2s_mclk_div_cnt[2]_i_1 
       (.I0(i2s_mclk_div_cnt_reg[0]),
        .I1(i2s_mclk_div_cnt_reg[1]),
        .I2(i2s_mclk_div_cnt_reg[2]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \i2s_mclk_div_cnt[3]_i_1 
       (.I0(i2s_mclk_div_cnt_reg[1]),
        .I1(i2s_mclk_div_cnt_reg[0]),
        .I2(i2s_mclk_div_cnt_reg[2]),
        .I3(i2s_mclk_div_cnt_reg[3]),
        .O(p_0_in__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \i2s_mclk_div_cnt[4]_i_1 
       (.I0(i2s_mclk_div_cnt_reg[2]),
        .I1(i2s_mclk_div_cnt_reg[0]),
        .I2(i2s_mclk_div_cnt_reg[1]),
        .I3(i2s_mclk_div_cnt_reg[3]),
        .I4(i2s_mclk_div_cnt_reg[4]),
        .O(p_0_in__1[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \i2s_mclk_div_cnt[5]_i_1 
       (.I0(i2s_mclk_div_cnt_reg[3]),
        .I1(i2s_mclk_div_cnt_reg[1]),
        .I2(i2s_mclk_div_cnt_reg[0]),
        .I3(i2s_mclk_div_cnt_reg[2]),
        .I4(i2s_mclk_div_cnt_reg[4]),
        .I5(i2s_mclk_div_cnt_reg[5]),
        .O(p_0_in__1[5]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i2s_mclk_div_cnt[6]_i_1 
       (.I0(\i2s_mclk_div_cnt[7]_i_3_n_0 ),
        .I1(i2s_mclk_div_cnt_reg[6]),
        .O(p_0_in__1[6]));
  LUT2 #(
    .INIT(4'hB)) 
    \i2s_mclk_div_cnt[7]_i_1 
       (.I0(i2s_mclk_toggle),
        .I1(i2s_clk_div_en),
        .O(\i2s_mclk_div_cnt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \i2s_mclk_div_cnt[7]_i_2 
       (.I0(\i2s_mclk_div_cnt[7]_i_3_n_0 ),
        .I1(i2s_mclk_div_cnt_reg[6]),
        .I2(i2s_mclk_div_cnt_reg[7]),
        .O(p_0_in__1[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \i2s_mclk_div_cnt[7]_i_3 
       (.I0(i2s_mclk_div_cnt_reg[5]),
        .I1(i2s_mclk_div_cnt_reg[3]),
        .I2(i2s_mclk_div_cnt_reg[1]),
        .I3(i2s_mclk_div_cnt_reg[0]),
        .I4(i2s_mclk_div_cnt_reg[2]),
        .I5(i2s_mclk_div_cnt_reg[4]),
        .O(\i2s_mclk_div_cnt[7]_i_3_n_0 ));
  FDRE \i2s_mclk_div_cnt_reg[0] 
       (.C(i2s_src_clk),
        .CE(1'b1),
        .D(p_0_in__1[0]),
        .Q(i2s_mclk_div_cnt_reg[0]),
        .R(\i2s_mclk_div_cnt[7]_i_1_n_0 ));
  FDRE \i2s_mclk_div_cnt_reg[1] 
       (.C(i2s_src_clk),
        .CE(1'b1),
        .D(p_0_in__1[1]),
        .Q(i2s_mclk_div_cnt_reg[1]),
        .R(\i2s_mclk_div_cnt[7]_i_1_n_0 ));
  FDRE \i2s_mclk_div_cnt_reg[2] 
       (.C(i2s_src_clk),
        .CE(1'b1),
        .D(p_0_in__1[2]),
        .Q(i2s_mclk_div_cnt_reg[2]),
        .R(\i2s_mclk_div_cnt[7]_i_1_n_0 ));
  FDRE \i2s_mclk_div_cnt_reg[3] 
       (.C(i2s_src_clk),
        .CE(1'b1),
        .D(p_0_in__1[3]),
        .Q(i2s_mclk_div_cnt_reg[3]),
        .R(\i2s_mclk_div_cnt[7]_i_1_n_0 ));
  FDRE \i2s_mclk_div_cnt_reg[4] 
       (.C(i2s_src_clk),
        .CE(1'b1),
        .D(p_0_in__1[4]),
        .Q(i2s_mclk_div_cnt_reg[4]),
        .R(\i2s_mclk_div_cnt[7]_i_1_n_0 ));
  FDRE \i2s_mclk_div_cnt_reg[5] 
       (.C(i2s_src_clk),
        .CE(1'b1),
        .D(p_0_in__1[5]),
        .Q(i2s_mclk_div_cnt_reg[5]),
        .R(\i2s_mclk_div_cnt[7]_i_1_n_0 ));
  FDRE \i2s_mclk_div_cnt_reg[6] 
       (.C(i2s_src_clk),
        .CE(1'b1),
        .D(p_0_in__1[6]),
        .Q(i2s_mclk_div_cnt_reg[6]),
        .R(\i2s_mclk_div_cnt[7]_i_1_n_0 ));
  FDRE \i2s_mclk_div_cnt_reg[7] 
       (.C(i2s_src_clk),
        .CE(1'b1),
        .D(p_0_in__1[7]),
        .Q(i2s_mclk_div_cnt_reg[7]),
        .R(\i2s_mclk_div_cnt[7]_i_1_n_0 ));
  FDRE \i2s_mclk_div_reg[0] 
       (.C(i2s_src_clk),
        .CE(sync_aclk_to_i2s_src_clk_dst_req),
        .D(sync_aclk_to_i2s_src_clk_out[24]),
        .Q(i2s_mclk_div[0]),
        .R(1'b0));
  FDRE \i2s_mclk_div_reg[1] 
       (.C(i2s_src_clk),
        .CE(sync_aclk_to_i2s_src_clk_dst_req),
        .D(sync_aclk_to_i2s_src_clk_out[25]),
        .Q(i2s_mclk_div[1]),
        .R(1'b0));
  FDRE \i2s_mclk_div_reg[2] 
       (.C(i2s_src_clk),
        .CE(sync_aclk_to_i2s_src_clk_dst_req),
        .D(sync_aclk_to_i2s_src_clk_out[26]),
        .Q(i2s_mclk_div[2]),
        .R(1'b0));
  FDRE \i2s_mclk_div_reg[3] 
       (.C(i2s_src_clk),
        .CE(sync_aclk_to_i2s_src_clk_dst_req),
        .D(sync_aclk_to_i2s_src_clk_out[27]),
        .Q(i2s_mclk_div[3]),
        .R(1'b0));
  FDRE \i2s_mclk_div_reg[4] 
       (.C(i2s_src_clk),
        .CE(sync_aclk_to_i2s_src_clk_dst_req),
        .D(sync_aclk_to_i2s_src_clk_out[28]),
        .Q(i2s_mclk_div[4]),
        .R(1'b0));
  FDRE \i2s_mclk_div_reg[5] 
       (.C(i2s_src_clk),
        .CE(sync_aclk_to_i2s_src_clk_dst_req),
        .D(sync_aclk_to_i2s_src_clk_out[29]),
        .Q(i2s_mclk_div[5]),
        .R(1'b0));
  FDRE \i2s_mclk_div_reg[6] 
       (.C(i2s_src_clk),
        .CE(sync_aclk_to_i2s_src_clk_dst_req),
        .D(sync_aclk_to_i2s_src_clk_out[30]),
        .Q(i2s_mclk_div[6]),
        .R(1'b0));
  FDRE \i2s_mclk_div_reg[7] 
       (.C(i2s_src_clk),
        .CE(sync_aclk_to_i2s_src_clk_dst_req),
        .D(sync_aclk_to_i2s_src_clk_out[31]),
        .Q(i2s_mclk_div[7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h60)) 
    i2s_mclk_i_1
       (.I0(i2s_mclk),
        .I1(i2s_mclk_toggle),
        .I2(i2s_clk_div_en),
        .O(i2s_mclk_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000090090000)) 
    i2s_mclk_i_2
       (.I0(i2s_mclk_div_cnt_reg[7]),
        .I1(i2s_mclk_div[7]),
        .I2(i2s_mclk_div_cnt_reg[6]),
        .I3(i2s_mclk_div[6]),
        .I4(i2s_clk_div_en),
        .I5(i2s_mclk_i_3_n_0),
        .O(i2s_mclk_toggle));
  LUT6 #(
    .INIT(64'hFFFFFFFFBEFFFFBE)) 
    i2s_mclk_i_3
       (.I0(i2s_mclk_i_4_n_0),
        .I1(i2s_mclk_div_cnt_reg[1]),
        .I2(i2s_mclk_div[1]),
        .I3(i2s_mclk_div_cnt_reg[0]),
        .I4(i2s_mclk_div[0]),
        .I5(i2s_mclk_i_5_n_0),
        .O(i2s_mclk_i_3_n_0));
  LUT4 #(
    .INIT(16'h6FF6)) 
    i2s_mclk_i_4
       (.I0(i2s_mclk_div_cnt_reg[4]),
        .I1(i2s_mclk_div[4]),
        .I2(i2s_mclk_div_cnt_reg[3]),
        .I3(i2s_mclk_div[3]),
        .O(i2s_mclk_i_4_n_0));
  LUT4 #(
    .INIT(16'h6FF6)) 
    i2s_mclk_i_5
       (.I0(i2s_mclk_div_cnt_reg[5]),
        .I1(i2s_mclk_div[5]),
        .I2(i2s_mclk_div_cnt_reg[2]),
        .I3(i2s_mclk_div[2]),
        .O(i2s_mclk_i_5_n_0));
  FDRE i2s_mclk_reg
       (.C(i2s_src_clk),
        .CE(1'b1),
        .D(i2s_mclk_i_1_n_0),
        .Q(i2s_mclk),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    i2s_pause_a_i_1
       (.I0(s_axi_wdata[2]),
        .I1(s_axi_wready),
        .I2(s_axi_wstrb[0]),
        .I3(s_axi_awaddr[0]),
        .I4(i2s_lb_en_a_i_2_n_0),
        .I5(sync_aclk_to_i2s_src_clk_in[46]),
        .O(i2s_pause_a_i_1_n_0));
  FDRE i2s_pause_a_reg
       (.C(aclk),
        .CE(1'b1),
        .D(i2s_pause_a_i_1_n_0),
        .Q(sync_aclk_to_i2s_src_clk_in[46]),
        .R(p_0_in));
  FDRE i2s_pause_reg
       (.C(i2s_src_clk),
        .CE(sync_aclk_to_i2s_src_clk_dst_req),
        .D(sync_aclk_to_i2s_src_clk_out[46]),
        .Q(i2s_pause),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    i2s_paused_a_i_1
       (.I0(sync_i2s_src_clk_to_aclk_out[1]),
        .I1(sync_i2s_src_clk_to_aclk_dst_req),
        .I2(data0[3]),
        .O(i2s_paused_a_i_1_n_0));
  FDRE i2s_paused_a_reg
       (.C(aclk),
        .CE(1'b1),
        .D(i2s_paused_a_i_1_n_0),
        .Q(data0[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    i2s_paused_i_1
       (.I0(i2s_pause),
        .I1(i2s_paused_i_2_n_0),
        .I2(sync_i2s_src_clk_to_aclk_in),
        .O(i2s_paused_i_1_n_0));
  LUT6 #(
    .INIT(64'h337733777F337733)) 
    i2s_paused_i_2
       (.I0(i2s_fsm_state__0[1]),
        .I1(i2s_en),
        .I2(\FSM_sequential_i2s_fsm_state[2]_i_8_n_0 ),
        .I3(i2s_fsm_state__0[0]),
        .I4(i2s_bclk_rising__0),
        .I5(i2s_fsm_state__0[2]),
        .O(i2s_paused_i_2_n_0));
  FDRE i2s_paused_reg
       (.C(i2s_src_clk),
        .CE(1'b1),
        .D(i2s_paused_i_1_n_0),
        .Q(sync_i2s_src_clk_to_aclk_in),
        .R(1'b0));
  FDRE i2s_sdata_in_q_reg
       (.C(i2s_src_clk),
        .CE(1'b1),
        .D(i2s_sdata_in),
        .Q(i2s_sdata_in_q),
        .R(m_axis_tvalid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \i2s_sdata_in_sr[0]_i_1 
       (.I0(\i2s_sdata_in_sr[30]_i_3_n_0 ),
        .I1(i2s_sdata_in_q),
        .I2(i2s_lb_en),
        .I3(i2s_sdata_out_int_reg_n_0),
        .O(i2s_sdata_in_sr[0]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i2s_sdata_in_sr[10]_i_1 
       (.I0(\i2s_sdata_in_sr[30]_i_3_n_0 ),
        .I1(\i2s_sdata_in_sr_reg_n_0_[9] ),
        .O(i2s_sdata_in_sr[10]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i2s_sdata_in_sr[11]_i_1 
       (.I0(\i2s_sdata_in_sr[30]_i_3_n_0 ),
        .I1(\i2s_sdata_in_sr_reg_n_0_[10] ),
        .O(i2s_sdata_in_sr[11]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i2s_sdata_in_sr[12]_i_1 
       (.I0(\i2s_sdata_in_sr[30]_i_3_n_0 ),
        .I1(\i2s_sdata_in_sr_reg_n_0_[11] ),
        .O(i2s_sdata_in_sr[12]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i2s_sdata_in_sr[13]_i_1 
       (.I0(\i2s_sdata_in_sr[30]_i_3_n_0 ),
        .I1(\i2s_sdata_in_sr_reg_n_0_[12] ),
        .O(i2s_sdata_in_sr[13]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i2s_sdata_in_sr[14]_i_1 
       (.I0(\i2s_sdata_in_sr[30]_i_3_n_0 ),
        .I1(\i2s_sdata_in_sr_reg_n_0_[13] ),
        .O(i2s_sdata_in_sr[14]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i2s_sdata_in_sr[15]_i_1 
       (.I0(\i2s_sdata_in_sr[30]_i_3_n_0 ),
        .I1(\i2s_sdata_in_sr_reg_n_0_[14] ),
        .O(i2s_sdata_in_sr[15]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i2s_sdata_in_sr[16]_i_1 
       (.I0(\i2s_sdata_in_sr[30]_i_3_n_0 ),
        .I1(\i2s_sdata_in_sr_reg_n_0_[15] ),
        .O(i2s_sdata_in_sr[16]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i2s_sdata_in_sr[17]_i_1 
       (.I0(\i2s_sdata_in_sr[30]_i_3_n_0 ),
        .I1(\i2s_sdata_in_sr_reg_n_0_[16] ),
        .O(i2s_sdata_in_sr[17]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i2s_sdata_in_sr[18]_i_1 
       (.I0(\i2s_sdata_in_sr[30]_i_3_n_0 ),
        .I1(\i2s_sdata_in_sr_reg_n_0_[17] ),
        .O(i2s_sdata_in_sr[18]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i2s_sdata_in_sr[19]_i_1 
       (.I0(\i2s_sdata_in_sr[30]_i_3_n_0 ),
        .I1(\i2s_sdata_in_sr_reg_n_0_[18] ),
        .O(i2s_sdata_in_sr[19]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i2s_sdata_in_sr[1]_i_1 
       (.I0(\i2s_sdata_in_sr[30]_i_3_n_0 ),
        .I1(\i2s_sdata_in_sr_reg_n_0_[0] ),
        .O(i2s_sdata_in_sr[1]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i2s_sdata_in_sr[20]_i_1 
       (.I0(\i2s_sdata_in_sr[30]_i_3_n_0 ),
        .I1(\i2s_sdata_in_sr_reg_n_0_[19] ),
        .O(i2s_sdata_in_sr[20]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i2s_sdata_in_sr[21]_i_1 
       (.I0(\i2s_sdata_in_sr[30]_i_3_n_0 ),
        .I1(\i2s_sdata_in_sr_reg_n_0_[20] ),
        .O(i2s_sdata_in_sr[21]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i2s_sdata_in_sr[22]_i_1 
       (.I0(\i2s_sdata_in_sr[30]_i_3_n_0 ),
        .I1(\i2s_sdata_in_sr_reg_n_0_[21] ),
        .O(i2s_sdata_in_sr[22]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i2s_sdata_in_sr[23]_i_1 
       (.I0(\i2s_sdata_in_sr[30]_i_3_n_0 ),
        .I1(\i2s_sdata_in_sr_reg_n_0_[22] ),
        .O(i2s_sdata_in_sr[23]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i2s_sdata_in_sr[24]_i_1 
       (.I0(\i2s_sdata_in_sr[30]_i_3_n_0 ),
        .I1(\i2s_sdata_in_sr_reg_n_0_[23] ),
        .O(i2s_sdata_in_sr[24]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i2s_sdata_in_sr[25]_i_1 
       (.I0(\i2s_sdata_in_sr[30]_i_3_n_0 ),
        .I1(\i2s_sdata_in_sr_reg_n_0_[24] ),
        .O(i2s_sdata_in_sr[25]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i2s_sdata_in_sr[26]_i_1 
       (.I0(\i2s_sdata_in_sr[30]_i_3_n_0 ),
        .I1(\i2s_sdata_in_sr_reg_n_0_[25] ),
        .O(i2s_sdata_in_sr[26]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i2s_sdata_in_sr[27]_i_1 
       (.I0(\i2s_sdata_in_sr[30]_i_3_n_0 ),
        .I1(\i2s_sdata_in_sr_reg_n_0_[26] ),
        .O(i2s_sdata_in_sr[27]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i2s_sdata_in_sr[28]_i_1 
       (.I0(\i2s_sdata_in_sr[30]_i_3_n_0 ),
        .I1(\i2s_sdata_in_sr_reg_n_0_[27] ),
        .O(i2s_sdata_in_sr[28]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i2s_sdata_in_sr[29]_i_1 
       (.I0(\i2s_sdata_in_sr[30]_i_3_n_0 ),
        .I1(\i2s_sdata_in_sr_reg_n_0_[28] ),
        .O(i2s_sdata_in_sr[29]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i2s_sdata_in_sr[2]_i_1 
       (.I0(\i2s_sdata_in_sr[30]_i_3_n_0 ),
        .I1(\i2s_sdata_in_sr_reg_n_0_[1] ),
        .O(i2s_sdata_in_sr[2]));
  LUT4 #(
    .INIT(16'h4430)) 
    \i2s_sdata_in_sr[30]_i_1 
       (.I0(m_axis_tvalid_i_4_n_0),
        .I1(i2s_fsm_state__0[0]),
        .I2(i2s_fsm_state__0[2]),
        .I3(i2s_fsm_state__0[1]),
        .O(\i2s_sdata_in_sr[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i2s_sdata_in_sr[30]_i_2 
       (.I0(\i2s_sdata_in_sr[30]_i_3_n_0 ),
        .I1(\i2s_sdata_in_sr_reg_n_0_[29] ),
        .O(i2s_sdata_in_sr[30]));
  LUT6 #(
    .INIT(64'h000000007FFFFFFF)) 
    \i2s_sdata_in_sr[30]_i_3 
       (.I0(\i2s_sdata_in_sr_bit_cnt_reg_n_0_[3] ),
        .I1(\i2s_sdata_in_sr_bit_cnt_reg_n_0_[4] ),
        .I2(\i2s_sdata_in_sr_bit_cnt_reg_n_0_[2] ),
        .I3(\i2s_sdata_in_sr_bit_cnt_reg_n_0_[1] ),
        .I4(\i2s_sdata_in_sr_bit_cnt_reg_n_0_[0] ),
        .I5(i2s_fsm_state__0[2]),
        .O(\i2s_sdata_in_sr[30]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i2s_sdata_in_sr[3]_i_1 
       (.I0(\i2s_sdata_in_sr[30]_i_3_n_0 ),
        .I1(\i2s_sdata_in_sr_reg_n_0_[2] ),
        .O(i2s_sdata_in_sr[3]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i2s_sdata_in_sr[4]_i_1 
       (.I0(\i2s_sdata_in_sr[30]_i_3_n_0 ),
        .I1(\i2s_sdata_in_sr_reg_n_0_[3] ),
        .O(i2s_sdata_in_sr[4]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i2s_sdata_in_sr[5]_i_1 
       (.I0(\i2s_sdata_in_sr[30]_i_3_n_0 ),
        .I1(\i2s_sdata_in_sr_reg_n_0_[4] ),
        .O(i2s_sdata_in_sr[5]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i2s_sdata_in_sr[6]_i_1 
       (.I0(\i2s_sdata_in_sr[30]_i_3_n_0 ),
        .I1(\i2s_sdata_in_sr_reg_n_0_[5] ),
        .O(i2s_sdata_in_sr[6]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i2s_sdata_in_sr[7]_i_1 
       (.I0(\i2s_sdata_in_sr[30]_i_3_n_0 ),
        .I1(\i2s_sdata_in_sr_reg_n_0_[6] ),
        .O(i2s_sdata_in_sr[7]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i2s_sdata_in_sr[8]_i_1 
       (.I0(\i2s_sdata_in_sr[30]_i_3_n_0 ),
        .I1(\i2s_sdata_in_sr_reg_n_0_[7] ),
        .O(i2s_sdata_in_sr[8]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i2s_sdata_in_sr[9]_i_1 
       (.I0(\i2s_sdata_in_sr[30]_i_3_n_0 ),
        .I1(\i2s_sdata_in_sr_reg_n_0_[8] ),
        .O(i2s_sdata_in_sr[9]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \i2s_sdata_in_sr_bit_cnt[0]_i_1 
       (.I0(\i2s_sdata_in_sr_bit_cnt_reg_n_0_[0] ),
        .I1(i2s_fsm_state__0[0]),
        .I2(i2s_fsm_state__0[1]),
        .I3(m_axis_tvalid_i_4_n_0),
        .O(i2s_sdata_in_sr_bit_cnt[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h14000000)) 
    \i2s_sdata_in_sr_bit_cnt[1]_i_1 
       (.I0(m_axis_tvalid_i_4_n_0),
        .I1(\i2s_sdata_in_sr_bit_cnt_reg_n_0_[0] ),
        .I2(\i2s_sdata_in_sr_bit_cnt_reg_n_0_[1] ),
        .I3(i2s_fsm_state__0[1]),
        .I4(i2s_fsm_state__0[0]),
        .O(i2s_sdata_in_sr_bit_cnt[1]));
  LUT6 #(
    .INIT(64'h1540000000000000)) 
    \i2s_sdata_in_sr_bit_cnt[2]_i_1 
       (.I0(m_axis_tvalid_i_4_n_0),
        .I1(\i2s_sdata_in_sr_bit_cnt_reg_n_0_[0] ),
        .I2(\i2s_sdata_in_sr_bit_cnt_reg_n_0_[1] ),
        .I3(\i2s_sdata_in_sr_bit_cnt_reg_n_0_[2] ),
        .I4(i2s_fsm_state__0[1]),
        .I5(i2s_fsm_state__0[0]),
        .O(i2s_sdata_in_sr_bit_cnt[2]));
  LUT6 #(
    .INIT(64'h0000000015554000)) 
    \i2s_sdata_in_sr_bit_cnt[3]_i_1 
       (.I0(m_axis_tvalid_i_4_n_0),
        .I1(\i2s_sdata_in_sr_bit_cnt_reg_n_0_[1] ),
        .I2(\i2s_sdata_in_sr_bit_cnt_reg_n_0_[0] ),
        .I3(\i2s_sdata_in_sr_bit_cnt_reg_n_0_[2] ),
        .I4(\i2s_sdata_in_sr_bit_cnt_reg_n_0_[3] ),
        .I5(\FSM_sequential_i2s_fsm_state[2]_i_4_n_0 ),
        .O(i2s_sdata_in_sr_bit_cnt[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h14000000)) 
    \i2s_sdata_in_sr_bit_cnt[4]_i_1 
       (.I0(m_axis_tvalid_i_4_n_0),
        .I1(\i2s_sdata_in_sr_bit_cnt[5]_i_3_n_0 ),
        .I2(\i2s_sdata_in_sr_bit_cnt_reg_n_0_[4] ),
        .I3(i2s_fsm_state__0[1]),
        .I4(i2s_fsm_state__0[0]),
        .O(i2s_sdata_in_sr_bit_cnt[4]));
  LUT6 #(
    .INIT(64'h55D555C000C0FFC0)) 
    \i2s_sdata_in_sr_bit_cnt[5]_i_1 
       (.I0(m_axis_tvalid_i_4_n_0),
        .I1(m_axis_tvalid_reg_0),
        .I2(m_axis_tready),
        .I3(i2s_fsm_state__0[2]),
        .I4(i2s_fsm_state__0[1]),
        .I5(i2s_fsm_state__0[0]),
        .O(\i2s_sdata_in_sr_bit_cnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \i2s_sdata_in_sr_bit_cnt[5]_i_2 
       (.I0(\i2s_sdata_in_sr_bit_cnt[5]_i_3_n_0 ),
        .I1(\i2s_sdata_in_sr_bit_cnt_reg_n_0_[4] ),
        .I2(i2s_fsm_state__0[1]),
        .I3(i2s_fsm_state__0[0]),
        .I4(m_axis_tvalid_i_4_n_0),
        .O(i2s_sdata_in_sr_bit_cnt[5]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \i2s_sdata_in_sr_bit_cnt[5]_i_3 
       (.I0(\i2s_sdata_in_sr_bit_cnt_reg_n_0_[3] ),
        .I1(\i2s_sdata_in_sr_bit_cnt_reg_n_0_[1] ),
        .I2(\i2s_sdata_in_sr_bit_cnt_reg_n_0_[0] ),
        .I3(\i2s_sdata_in_sr_bit_cnt_reg_n_0_[2] ),
        .O(\i2s_sdata_in_sr_bit_cnt[5]_i_3_n_0 ));
  FDRE \i2s_sdata_in_sr_bit_cnt_reg[0] 
       (.C(i2s_src_clk),
        .CE(\i2s_sdata_in_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_in_sr_bit_cnt[0]),
        .Q(\i2s_sdata_in_sr_bit_cnt_reg_n_0_[0] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_sdata_in_sr_bit_cnt_reg[1] 
       (.C(i2s_src_clk),
        .CE(\i2s_sdata_in_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_in_sr_bit_cnt[1]),
        .Q(\i2s_sdata_in_sr_bit_cnt_reg_n_0_[1] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_sdata_in_sr_bit_cnt_reg[2] 
       (.C(i2s_src_clk),
        .CE(\i2s_sdata_in_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_in_sr_bit_cnt[2]),
        .Q(\i2s_sdata_in_sr_bit_cnt_reg_n_0_[2] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_sdata_in_sr_bit_cnt_reg[3] 
       (.C(i2s_src_clk),
        .CE(\i2s_sdata_in_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_in_sr_bit_cnt[3]),
        .Q(\i2s_sdata_in_sr_bit_cnt_reg_n_0_[3] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_sdata_in_sr_bit_cnt_reg[4] 
       (.C(i2s_src_clk),
        .CE(\i2s_sdata_in_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_in_sr_bit_cnt[4]),
        .Q(\i2s_sdata_in_sr_bit_cnt_reg_n_0_[4] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_sdata_in_sr_bit_cnt_reg[5] 
       (.C(i2s_src_clk),
        .CE(\i2s_sdata_in_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_in_sr_bit_cnt[5]),
        .Q(p_0_in_0),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_sdata_in_sr_reg[0] 
       (.C(i2s_src_clk),
        .CE(\i2s_sdata_in_sr[30]_i_1_n_0 ),
        .D(i2s_sdata_in_sr[0]),
        .Q(\i2s_sdata_in_sr_reg_n_0_[0] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_sdata_in_sr_reg[10] 
       (.C(i2s_src_clk),
        .CE(\i2s_sdata_in_sr[30]_i_1_n_0 ),
        .D(i2s_sdata_in_sr[10]),
        .Q(\i2s_sdata_in_sr_reg_n_0_[10] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_sdata_in_sr_reg[11] 
       (.C(i2s_src_clk),
        .CE(\i2s_sdata_in_sr[30]_i_1_n_0 ),
        .D(i2s_sdata_in_sr[11]),
        .Q(\i2s_sdata_in_sr_reg_n_0_[11] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_sdata_in_sr_reg[12] 
       (.C(i2s_src_clk),
        .CE(\i2s_sdata_in_sr[30]_i_1_n_0 ),
        .D(i2s_sdata_in_sr[12]),
        .Q(\i2s_sdata_in_sr_reg_n_0_[12] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_sdata_in_sr_reg[13] 
       (.C(i2s_src_clk),
        .CE(\i2s_sdata_in_sr[30]_i_1_n_0 ),
        .D(i2s_sdata_in_sr[13]),
        .Q(\i2s_sdata_in_sr_reg_n_0_[13] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_sdata_in_sr_reg[14] 
       (.C(i2s_src_clk),
        .CE(\i2s_sdata_in_sr[30]_i_1_n_0 ),
        .D(i2s_sdata_in_sr[14]),
        .Q(\i2s_sdata_in_sr_reg_n_0_[14] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_sdata_in_sr_reg[15] 
       (.C(i2s_src_clk),
        .CE(\i2s_sdata_in_sr[30]_i_1_n_0 ),
        .D(i2s_sdata_in_sr[15]),
        .Q(\i2s_sdata_in_sr_reg_n_0_[15] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_sdata_in_sr_reg[16] 
       (.C(i2s_src_clk),
        .CE(\i2s_sdata_in_sr[30]_i_1_n_0 ),
        .D(i2s_sdata_in_sr[16]),
        .Q(\i2s_sdata_in_sr_reg_n_0_[16] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_sdata_in_sr_reg[17] 
       (.C(i2s_src_clk),
        .CE(\i2s_sdata_in_sr[30]_i_1_n_0 ),
        .D(i2s_sdata_in_sr[17]),
        .Q(\i2s_sdata_in_sr_reg_n_0_[17] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_sdata_in_sr_reg[18] 
       (.C(i2s_src_clk),
        .CE(\i2s_sdata_in_sr[30]_i_1_n_0 ),
        .D(i2s_sdata_in_sr[18]),
        .Q(\i2s_sdata_in_sr_reg_n_0_[18] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_sdata_in_sr_reg[19] 
       (.C(i2s_src_clk),
        .CE(\i2s_sdata_in_sr[30]_i_1_n_0 ),
        .D(i2s_sdata_in_sr[19]),
        .Q(\i2s_sdata_in_sr_reg_n_0_[19] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_sdata_in_sr_reg[1] 
       (.C(i2s_src_clk),
        .CE(\i2s_sdata_in_sr[30]_i_1_n_0 ),
        .D(i2s_sdata_in_sr[1]),
        .Q(\i2s_sdata_in_sr_reg_n_0_[1] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_sdata_in_sr_reg[20] 
       (.C(i2s_src_clk),
        .CE(\i2s_sdata_in_sr[30]_i_1_n_0 ),
        .D(i2s_sdata_in_sr[20]),
        .Q(\i2s_sdata_in_sr_reg_n_0_[20] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_sdata_in_sr_reg[21] 
       (.C(i2s_src_clk),
        .CE(\i2s_sdata_in_sr[30]_i_1_n_0 ),
        .D(i2s_sdata_in_sr[21]),
        .Q(\i2s_sdata_in_sr_reg_n_0_[21] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_sdata_in_sr_reg[22] 
       (.C(i2s_src_clk),
        .CE(\i2s_sdata_in_sr[30]_i_1_n_0 ),
        .D(i2s_sdata_in_sr[22]),
        .Q(\i2s_sdata_in_sr_reg_n_0_[22] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_sdata_in_sr_reg[23] 
       (.C(i2s_src_clk),
        .CE(\i2s_sdata_in_sr[30]_i_1_n_0 ),
        .D(i2s_sdata_in_sr[23]),
        .Q(\i2s_sdata_in_sr_reg_n_0_[23] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_sdata_in_sr_reg[24] 
       (.C(i2s_src_clk),
        .CE(\i2s_sdata_in_sr[30]_i_1_n_0 ),
        .D(i2s_sdata_in_sr[24]),
        .Q(\i2s_sdata_in_sr_reg_n_0_[24] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_sdata_in_sr_reg[25] 
       (.C(i2s_src_clk),
        .CE(\i2s_sdata_in_sr[30]_i_1_n_0 ),
        .D(i2s_sdata_in_sr[25]),
        .Q(\i2s_sdata_in_sr_reg_n_0_[25] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_sdata_in_sr_reg[26] 
       (.C(i2s_src_clk),
        .CE(\i2s_sdata_in_sr[30]_i_1_n_0 ),
        .D(i2s_sdata_in_sr[26]),
        .Q(\i2s_sdata_in_sr_reg_n_0_[26] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_sdata_in_sr_reg[27] 
       (.C(i2s_src_clk),
        .CE(\i2s_sdata_in_sr[30]_i_1_n_0 ),
        .D(i2s_sdata_in_sr[27]),
        .Q(\i2s_sdata_in_sr_reg_n_0_[27] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_sdata_in_sr_reg[28] 
       (.C(i2s_src_clk),
        .CE(\i2s_sdata_in_sr[30]_i_1_n_0 ),
        .D(i2s_sdata_in_sr[28]),
        .Q(\i2s_sdata_in_sr_reg_n_0_[28] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_sdata_in_sr_reg[29] 
       (.C(i2s_src_clk),
        .CE(\i2s_sdata_in_sr[30]_i_1_n_0 ),
        .D(i2s_sdata_in_sr[29]),
        .Q(\i2s_sdata_in_sr_reg_n_0_[29] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_sdata_in_sr_reg[2] 
       (.C(i2s_src_clk),
        .CE(\i2s_sdata_in_sr[30]_i_1_n_0 ),
        .D(i2s_sdata_in_sr[2]),
        .Q(\i2s_sdata_in_sr_reg_n_0_[2] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_sdata_in_sr_reg[30] 
       (.C(i2s_src_clk),
        .CE(\i2s_sdata_in_sr[30]_i_1_n_0 ),
        .D(i2s_sdata_in_sr[30]),
        .Q(\i2s_sdata_in_sr_reg_n_0_[30] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_sdata_in_sr_reg[3] 
       (.C(i2s_src_clk),
        .CE(\i2s_sdata_in_sr[30]_i_1_n_0 ),
        .D(i2s_sdata_in_sr[3]),
        .Q(\i2s_sdata_in_sr_reg_n_0_[3] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_sdata_in_sr_reg[4] 
       (.C(i2s_src_clk),
        .CE(\i2s_sdata_in_sr[30]_i_1_n_0 ),
        .D(i2s_sdata_in_sr[4]),
        .Q(\i2s_sdata_in_sr_reg_n_0_[4] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_sdata_in_sr_reg[5] 
       (.C(i2s_src_clk),
        .CE(\i2s_sdata_in_sr[30]_i_1_n_0 ),
        .D(i2s_sdata_in_sr[5]),
        .Q(\i2s_sdata_in_sr_reg_n_0_[5] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_sdata_in_sr_reg[6] 
       (.C(i2s_src_clk),
        .CE(\i2s_sdata_in_sr[30]_i_1_n_0 ),
        .D(i2s_sdata_in_sr[6]),
        .Q(\i2s_sdata_in_sr_reg_n_0_[6] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_sdata_in_sr_reg[7] 
       (.C(i2s_src_clk),
        .CE(\i2s_sdata_in_sr[30]_i_1_n_0 ),
        .D(i2s_sdata_in_sr[7]),
        .Q(\i2s_sdata_in_sr_reg_n_0_[7] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_sdata_in_sr_reg[8] 
       (.C(i2s_src_clk),
        .CE(\i2s_sdata_in_sr[30]_i_1_n_0 ),
        .D(i2s_sdata_in_sr[8]),
        .Q(\i2s_sdata_in_sr_reg_n_0_[8] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_sdata_in_sr_reg[9] 
       (.C(i2s_src_clk),
        .CE(\i2s_sdata_in_sr[30]_i_1_n_0 ),
        .D(i2s_sdata_in_sr[9]),
        .Q(\i2s_sdata_in_sr_reg_n_0_[9] ),
        .R(m_axis_tvalid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    i2s_sdata_out_INST_0
       (.I0(i2s_sdata_in),
        .I1(i2s_lb_en),
        .I2(i2s_sdata_out_int_reg_n_0),
        .O(i2s_sdata_out));
  LUT5 #(
    .INIT(32'h40FF4000)) 
    i2s_sdata_out_int_i_1
       (.I0(i2s_fsm_state__0[2]),
        .I1(\i2s_sdata_out_sr_reg_n_0_[31] ),
        .I2(m_axis_tvalid1__6),
        .I3(i2s_sdata_out_int_i_3_n_0),
        .I4(i2s_sdata_out_int_reg_n_0),
        .O(i2s_sdata_out_int_i_1_n_0));
  LUT6 #(
    .INIT(64'h00008A0000FF0000)) 
    i2s_sdata_out_int_i_3
       (.I0(p_27_in),
        .I1(\FSM_sequential_i2s_fsm_state[2]_i_10_n_0 ),
        .I2(m_axis_tvalid1__6),
        .I3(i2s_fsm_state__0[0]),
        .I4(i2s_fsm_state__0[2]),
        .I5(i2s_fsm_state__0[1]),
        .O(i2s_sdata_out_int_i_3_n_0));
  FDRE i2s_sdata_out_int_reg
       (.C(i2s_src_clk),
        .CE(1'b1),
        .D(i2s_sdata_out_int_i_1_n_0),
        .Q(i2s_sdata_out_int_reg_n_0),
        .R(m_axis_tvalid_i_1_n_0));
  MUXF7 i2s_sdata_out_int_reg_i_2
       (.I0(\i2s_sdata_out_sr_bit_cnt[0]_i_4_n_0 ),
        .I1(\i2s_sdata_out_sr_bit_cnt[0]_i_5_n_0 ),
        .O(m_axis_tvalid1__6),
        .S(\i2s_chan_cnt_reg_n_0_[2] ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00008CCC)) 
    \i2s_sdata_out_sr[0]_i_1 
       (.I0(\i2s_sdata_out_sr_bit_cnt[5]_i_5_n_0 ),
        .I1(s_axis_tdata[0]),
        .I2(i2s_fsm_state__0[1]),
        .I3(i2s_fsm_state__0[0]),
        .I4(i2s_fsm_state__0[2]),
        .O(i2s_sdata_out_sr[0]));
  LUT5 #(
    .INIT(32'h0000F0E2)) 
    \i2s_sdata_out_sr[10]_i_1 
       (.I0(\i2s_sdata_out_sr_reg_n_0_[9] ),
        .I1(\i2s_sdata_out_sr_bit_cnt[0]_i_2_n_0 ),
        .I2(s_axis_tdata[10]),
        .I3(\i2s_sdata_out_sr_bit_cnt[0]_i_3_n_0 ),
        .I4(i2s_fsm_state__0[2]),
        .O(i2s_sdata_out_sr[10]));
  LUT5 #(
    .INIT(32'h0000F0E2)) 
    \i2s_sdata_out_sr[11]_i_1 
       (.I0(\i2s_sdata_out_sr_reg_n_0_[10] ),
        .I1(\i2s_sdata_out_sr_bit_cnt[0]_i_2_n_0 ),
        .I2(s_axis_tdata[11]),
        .I3(\i2s_sdata_out_sr_bit_cnt[0]_i_3_n_0 ),
        .I4(i2s_fsm_state__0[2]),
        .O(i2s_sdata_out_sr[11]));
  LUT5 #(
    .INIT(32'h0000F0E2)) 
    \i2s_sdata_out_sr[12]_i_1 
       (.I0(\i2s_sdata_out_sr_reg_n_0_[11] ),
        .I1(\i2s_sdata_out_sr_bit_cnt[0]_i_2_n_0 ),
        .I2(s_axis_tdata[12]),
        .I3(\i2s_sdata_out_sr_bit_cnt[0]_i_3_n_0 ),
        .I4(i2s_fsm_state__0[2]),
        .O(i2s_sdata_out_sr[12]));
  LUT5 #(
    .INIT(32'h0000F0E2)) 
    \i2s_sdata_out_sr[13]_i_1 
       (.I0(\i2s_sdata_out_sr_reg_n_0_[12] ),
        .I1(\i2s_sdata_out_sr_bit_cnt[0]_i_2_n_0 ),
        .I2(s_axis_tdata[13]),
        .I3(\i2s_sdata_out_sr_bit_cnt[0]_i_3_n_0 ),
        .I4(i2s_fsm_state__0[2]),
        .O(i2s_sdata_out_sr[13]));
  LUT5 #(
    .INIT(32'h0000F0E2)) 
    \i2s_sdata_out_sr[14]_i_1 
       (.I0(\i2s_sdata_out_sr_reg_n_0_[13] ),
        .I1(\i2s_sdata_out_sr_bit_cnt[0]_i_2_n_0 ),
        .I2(s_axis_tdata[14]),
        .I3(\i2s_sdata_out_sr_bit_cnt[0]_i_3_n_0 ),
        .I4(i2s_fsm_state__0[2]),
        .O(i2s_sdata_out_sr[14]));
  LUT5 #(
    .INIT(32'h0000F0E2)) 
    \i2s_sdata_out_sr[15]_i_1 
       (.I0(\i2s_sdata_out_sr_reg_n_0_[14] ),
        .I1(\i2s_sdata_out_sr_bit_cnt[0]_i_2_n_0 ),
        .I2(s_axis_tdata[15]),
        .I3(\i2s_sdata_out_sr_bit_cnt[0]_i_3_n_0 ),
        .I4(i2s_fsm_state__0[2]),
        .O(i2s_sdata_out_sr[15]));
  LUT5 #(
    .INIT(32'h0000F0E2)) 
    \i2s_sdata_out_sr[16]_i_1 
       (.I0(\i2s_sdata_out_sr_reg_n_0_[15] ),
        .I1(\i2s_sdata_out_sr_bit_cnt[0]_i_2_n_0 ),
        .I2(s_axis_tdata[16]),
        .I3(\i2s_sdata_out_sr_bit_cnt[0]_i_3_n_0 ),
        .I4(i2s_fsm_state__0[2]),
        .O(i2s_sdata_out_sr[16]));
  LUT5 #(
    .INIT(32'h0000F0E2)) 
    \i2s_sdata_out_sr[17]_i_1 
       (.I0(\i2s_sdata_out_sr_reg_n_0_[16] ),
        .I1(\i2s_sdata_out_sr_bit_cnt[0]_i_2_n_0 ),
        .I2(s_axis_tdata[17]),
        .I3(\i2s_sdata_out_sr_bit_cnt[0]_i_3_n_0 ),
        .I4(i2s_fsm_state__0[2]),
        .O(i2s_sdata_out_sr[17]));
  LUT5 #(
    .INIT(32'h0000F0E2)) 
    \i2s_sdata_out_sr[18]_i_1 
       (.I0(\i2s_sdata_out_sr_reg_n_0_[17] ),
        .I1(\i2s_sdata_out_sr_bit_cnt[0]_i_2_n_0 ),
        .I2(s_axis_tdata[18]),
        .I3(\i2s_sdata_out_sr_bit_cnt[0]_i_3_n_0 ),
        .I4(i2s_fsm_state__0[2]),
        .O(i2s_sdata_out_sr[18]));
  LUT5 #(
    .INIT(32'h0000F0E2)) 
    \i2s_sdata_out_sr[19]_i_1 
       (.I0(\i2s_sdata_out_sr_reg_n_0_[18] ),
        .I1(\i2s_sdata_out_sr_bit_cnt[0]_i_2_n_0 ),
        .I2(s_axis_tdata[19]),
        .I3(\i2s_sdata_out_sr_bit_cnt[0]_i_3_n_0 ),
        .I4(i2s_fsm_state__0[2]),
        .O(i2s_sdata_out_sr[19]));
  LUT5 #(
    .INIT(32'h0000F0E2)) 
    \i2s_sdata_out_sr[1]_i_1 
       (.I0(\i2s_sdata_out_sr_reg_n_0_[0] ),
        .I1(\i2s_sdata_out_sr_bit_cnt[0]_i_2_n_0 ),
        .I2(s_axis_tdata[1]),
        .I3(\i2s_sdata_out_sr_bit_cnt[0]_i_3_n_0 ),
        .I4(i2s_fsm_state__0[2]),
        .O(i2s_sdata_out_sr[1]));
  LUT5 #(
    .INIT(32'h0000F0E2)) 
    \i2s_sdata_out_sr[20]_i_1 
       (.I0(\i2s_sdata_out_sr_reg_n_0_[19] ),
        .I1(\i2s_sdata_out_sr_bit_cnt[0]_i_2_n_0 ),
        .I2(s_axis_tdata[20]),
        .I3(\i2s_sdata_out_sr_bit_cnt[0]_i_3_n_0 ),
        .I4(i2s_fsm_state__0[2]),
        .O(i2s_sdata_out_sr[20]));
  LUT5 #(
    .INIT(32'h0000F0E2)) 
    \i2s_sdata_out_sr[21]_i_1 
       (.I0(\i2s_sdata_out_sr_reg_n_0_[20] ),
        .I1(\i2s_sdata_out_sr_bit_cnt[0]_i_2_n_0 ),
        .I2(s_axis_tdata[21]),
        .I3(\i2s_sdata_out_sr_bit_cnt[0]_i_3_n_0 ),
        .I4(i2s_fsm_state__0[2]),
        .O(i2s_sdata_out_sr[21]));
  LUT5 #(
    .INIT(32'h0000F0E2)) 
    \i2s_sdata_out_sr[22]_i_1 
       (.I0(\i2s_sdata_out_sr_reg_n_0_[21] ),
        .I1(\i2s_sdata_out_sr_bit_cnt[0]_i_2_n_0 ),
        .I2(s_axis_tdata[22]),
        .I3(\i2s_sdata_out_sr_bit_cnt[0]_i_3_n_0 ),
        .I4(i2s_fsm_state__0[2]),
        .O(i2s_sdata_out_sr[22]));
  LUT5 #(
    .INIT(32'h0000F0E2)) 
    \i2s_sdata_out_sr[23]_i_1 
       (.I0(\i2s_sdata_out_sr_reg_n_0_[22] ),
        .I1(\i2s_sdata_out_sr_bit_cnt[0]_i_2_n_0 ),
        .I2(s_axis_tdata[23]),
        .I3(\i2s_sdata_out_sr_bit_cnt[0]_i_3_n_0 ),
        .I4(i2s_fsm_state__0[2]),
        .O(i2s_sdata_out_sr[23]));
  LUT5 #(
    .INIT(32'h0000F0E2)) 
    \i2s_sdata_out_sr[24]_i_1 
       (.I0(\i2s_sdata_out_sr_reg_n_0_[23] ),
        .I1(\i2s_sdata_out_sr_bit_cnt[0]_i_2_n_0 ),
        .I2(s_axis_tdata[24]),
        .I3(\i2s_sdata_out_sr_bit_cnt[0]_i_3_n_0 ),
        .I4(i2s_fsm_state__0[2]),
        .O(i2s_sdata_out_sr[24]));
  LUT5 #(
    .INIT(32'h0000F0E2)) 
    \i2s_sdata_out_sr[25]_i_1 
       (.I0(\i2s_sdata_out_sr_reg_n_0_[24] ),
        .I1(\i2s_sdata_out_sr_bit_cnt[0]_i_2_n_0 ),
        .I2(s_axis_tdata[25]),
        .I3(\i2s_sdata_out_sr_bit_cnt[0]_i_3_n_0 ),
        .I4(i2s_fsm_state__0[2]),
        .O(i2s_sdata_out_sr[25]));
  LUT5 #(
    .INIT(32'h0000F0E2)) 
    \i2s_sdata_out_sr[26]_i_1 
       (.I0(\i2s_sdata_out_sr_reg_n_0_[25] ),
        .I1(\i2s_sdata_out_sr_bit_cnt[0]_i_2_n_0 ),
        .I2(s_axis_tdata[26]),
        .I3(\i2s_sdata_out_sr_bit_cnt[0]_i_3_n_0 ),
        .I4(i2s_fsm_state__0[2]),
        .O(i2s_sdata_out_sr[26]));
  LUT5 #(
    .INIT(32'h0000F0E2)) 
    \i2s_sdata_out_sr[27]_i_1 
       (.I0(\i2s_sdata_out_sr_reg_n_0_[26] ),
        .I1(\i2s_sdata_out_sr_bit_cnt[0]_i_2_n_0 ),
        .I2(s_axis_tdata[27]),
        .I3(\i2s_sdata_out_sr_bit_cnt[0]_i_3_n_0 ),
        .I4(i2s_fsm_state__0[2]),
        .O(i2s_sdata_out_sr[27]));
  LUT5 #(
    .INIT(32'h0000F0E2)) 
    \i2s_sdata_out_sr[28]_i_1 
       (.I0(\i2s_sdata_out_sr_reg_n_0_[27] ),
        .I1(\i2s_sdata_out_sr_bit_cnt[0]_i_2_n_0 ),
        .I2(s_axis_tdata[28]),
        .I3(\i2s_sdata_out_sr_bit_cnt[0]_i_3_n_0 ),
        .I4(i2s_fsm_state__0[2]),
        .O(i2s_sdata_out_sr[28]));
  LUT5 #(
    .INIT(32'h0000F0E2)) 
    \i2s_sdata_out_sr[29]_i_1 
       (.I0(\i2s_sdata_out_sr_reg_n_0_[28] ),
        .I1(\i2s_sdata_out_sr_bit_cnt[0]_i_2_n_0 ),
        .I2(s_axis_tdata[29]),
        .I3(\i2s_sdata_out_sr_bit_cnt[0]_i_3_n_0 ),
        .I4(i2s_fsm_state__0[2]),
        .O(i2s_sdata_out_sr[29]));
  LUT5 #(
    .INIT(32'h0000F0E2)) 
    \i2s_sdata_out_sr[2]_i_1 
       (.I0(\i2s_sdata_out_sr_reg_n_0_[1] ),
        .I1(\i2s_sdata_out_sr_bit_cnt[0]_i_2_n_0 ),
        .I2(s_axis_tdata[2]),
        .I3(\i2s_sdata_out_sr_bit_cnt[0]_i_3_n_0 ),
        .I4(i2s_fsm_state__0[2]),
        .O(i2s_sdata_out_sr[2]));
  LUT5 #(
    .INIT(32'h0000F0E2)) 
    \i2s_sdata_out_sr[30]_i_1 
       (.I0(\i2s_sdata_out_sr_reg_n_0_[29] ),
        .I1(\i2s_sdata_out_sr_bit_cnt[0]_i_2_n_0 ),
        .I2(s_axis_tdata[30]),
        .I3(\i2s_sdata_out_sr_bit_cnt[0]_i_3_n_0 ),
        .I4(i2s_fsm_state__0[2]),
        .O(i2s_sdata_out_sr[30]));
  LUT5 #(
    .INIT(32'h0000F0E2)) 
    \i2s_sdata_out_sr[31]_i_1 
       (.I0(\i2s_sdata_out_sr_reg_n_0_[30] ),
        .I1(\i2s_sdata_out_sr_bit_cnt[0]_i_2_n_0 ),
        .I2(s_axis_tdata[31]),
        .I3(\i2s_sdata_out_sr_bit_cnt[0]_i_3_n_0 ),
        .I4(i2s_fsm_state__0[2]),
        .O(i2s_sdata_out_sr[31]));
  LUT5 #(
    .INIT(32'h0000F0E2)) 
    \i2s_sdata_out_sr[3]_i_1 
       (.I0(\i2s_sdata_out_sr_reg_n_0_[2] ),
        .I1(\i2s_sdata_out_sr_bit_cnt[0]_i_2_n_0 ),
        .I2(s_axis_tdata[3]),
        .I3(\i2s_sdata_out_sr_bit_cnt[0]_i_3_n_0 ),
        .I4(i2s_fsm_state__0[2]),
        .O(i2s_sdata_out_sr[3]));
  LUT5 #(
    .INIT(32'h0000F0E2)) 
    \i2s_sdata_out_sr[4]_i_1 
       (.I0(\i2s_sdata_out_sr_reg_n_0_[3] ),
        .I1(\i2s_sdata_out_sr_bit_cnt[0]_i_2_n_0 ),
        .I2(s_axis_tdata[4]),
        .I3(\i2s_sdata_out_sr_bit_cnt[0]_i_3_n_0 ),
        .I4(i2s_fsm_state__0[2]),
        .O(i2s_sdata_out_sr[4]));
  LUT5 #(
    .INIT(32'h0000F0E2)) 
    \i2s_sdata_out_sr[5]_i_1 
       (.I0(\i2s_sdata_out_sr_reg_n_0_[4] ),
        .I1(\i2s_sdata_out_sr_bit_cnt[0]_i_2_n_0 ),
        .I2(s_axis_tdata[5]),
        .I3(\i2s_sdata_out_sr_bit_cnt[0]_i_3_n_0 ),
        .I4(i2s_fsm_state__0[2]),
        .O(i2s_sdata_out_sr[5]));
  LUT5 #(
    .INIT(32'h0000F0E2)) 
    \i2s_sdata_out_sr[6]_i_1 
       (.I0(\i2s_sdata_out_sr_reg_n_0_[5] ),
        .I1(\i2s_sdata_out_sr_bit_cnt[0]_i_2_n_0 ),
        .I2(s_axis_tdata[6]),
        .I3(\i2s_sdata_out_sr_bit_cnt[0]_i_3_n_0 ),
        .I4(i2s_fsm_state__0[2]),
        .O(i2s_sdata_out_sr[6]));
  LUT5 #(
    .INIT(32'h0000F0E2)) 
    \i2s_sdata_out_sr[7]_i_1 
       (.I0(\i2s_sdata_out_sr_reg_n_0_[6] ),
        .I1(\i2s_sdata_out_sr_bit_cnt[0]_i_2_n_0 ),
        .I2(s_axis_tdata[7]),
        .I3(\i2s_sdata_out_sr_bit_cnt[0]_i_3_n_0 ),
        .I4(i2s_fsm_state__0[2]),
        .O(i2s_sdata_out_sr[7]));
  LUT5 #(
    .INIT(32'h0000F0E2)) 
    \i2s_sdata_out_sr[8]_i_1 
       (.I0(\i2s_sdata_out_sr_reg_n_0_[7] ),
        .I1(\i2s_sdata_out_sr_bit_cnt[0]_i_2_n_0 ),
        .I2(s_axis_tdata[8]),
        .I3(\i2s_sdata_out_sr_bit_cnt[0]_i_3_n_0 ),
        .I4(i2s_fsm_state__0[2]),
        .O(i2s_sdata_out_sr[8]));
  LUT5 #(
    .INIT(32'h0000F0E2)) 
    \i2s_sdata_out_sr[9]_i_1 
       (.I0(\i2s_sdata_out_sr_reg_n_0_[8] ),
        .I1(\i2s_sdata_out_sr_bit_cnt[0]_i_2_n_0 ),
        .I2(s_axis_tdata[9]),
        .I3(\i2s_sdata_out_sr_bit_cnt[0]_i_3_n_0 ),
        .I4(i2s_fsm_state__0[2]),
        .O(i2s_sdata_out_sr[9]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \i2s_sdata_out_sr_bit_cnt[0]_i_1 
       (.I0(\i2s_sdata_out_sr_bit_cnt[0]_i_2_n_0 ),
        .I1(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[0] ),
        .I2(i2s_fsm_state__0[2]),
        .I3(\i2s_sdata_out_sr_bit_cnt[0]_i_3_n_0 ),
        .O(i2s_sdata_out_sr_bit_cnt[0]));
  LUT4 #(
    .INIT(16'h57F7)) 
    \i2s_sdata_out_sr_bit_cnt[0]_i_2 
       (.I0(\FSM_sequential_i2s_fsm_state[2]_i_10_n_0 ),
        .I1(\i2s_sdata_out_sr_bit_cnt[0]_i_4_n_0 ),
        .I2(\i2s_chan_cnt_reg_n_0_[2] ),
        .I3(\i2s_sdata_out_sr_bit_cnt[0]_i_5_n_0 ),
        .O(\i2s_sdata_out_sr_bit_cnt[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \i2s_sdata_out_sr_bit_cnt[0]_i_3 
       (.I0(i2s_fsm_state__0[1]),
        .I1(i2s_fsm_state__0[0]),
        .I2(p_27_in),
        .O(\i2s_sdata_out_sr_bit_cnt[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCACAFFF0CACA0F00)) 
    \i2s_sdata_out_sr_bit_cnt[0]_i_4 
       (.I0(i2s_chan_en[1]),
        .I1(i2s_chan_en[3]),
        .I2(\i2s_chan_cnt_reg_n_0_[1] ),
        .I3(i2s_chan_en[0]),
        .I4(\i2s_chan_cnt_reg_n_0_[0] ),
        .I5(i2s_chan_en[2]),
        .O(\i2s_sdata_out_sr_bit_cnt[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCACAFFF0CACA0F00)) 
    \i2s_sdata_out_sr_bit_cnt[0]_i_5 
       (.I0(i2s_chan_en[5]),
        .I1(i2s_chan_en[7]),
        .I2(\i2s_chan_cnt_reg_n_0_[1] ),
        .I3(i2s_chan_en[4]),
        .I4(\i2s_chan_cnt_reg_n_0_[0] ),
        .I5(i2s_chan_en[6]),
        .O(\i2s_sdata_out_sr_bit_cnt[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h41000000)) 
    \i2s_sdata_out_sr_bit_cnt[1]_i_1 
       (.I0(\i2s_sdata_out_sr_bit_cnt[5]_i_3_n_0 ),
        .I1(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[0] ),
        .I2(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[1] ),
        .I3(i2s_fsm_state__0[1]),
        .I4(i2s_fsm_state__0[0]),
        .O(i2s_sdata_out_sr_bit_cnt[1]));
  LUT6 #(
    .INIT(64'h5401000000000000)) 
    \i2s_sdata_out_sr_bit_cnt[2]_i_1 
       (.I0(\i2s_sdata_out_sr_bit_cnt[5]_i_3_n_0 ),
        .I1(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[1] ),
        .I2(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[0] ),
        .I3(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[2] ),
        .I4(i2s_fsm_state__0[1]),
        .I5(i2s_fsm_state__0[0]),
        .O(i2s_sdata_out_sr_bit_cnt[2]));
  LUT6 #(
    .INIT(64'h0000000055540001)) 
    \i2s_sdata_out_sr_bit_cnt[3]_i_1 
       (.I0(\i2s_sdata_out_sr_bit_cnt[5]_i_3_n_0 ),
        .I1(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[2] ),
        .I2(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[0] ),
        .I3(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[1] ),
        .I4(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[3] ),
        .I5(\FSM_sequential_i2s_fsm_state[2]_i_4_n_0 ),
        .O(i2s_sdata_out_sr_bit_cnt[3]));
  LUT6 #(
    .INIT(64'h0000000055540001)) 
    \i2s_sdata_out_sr_bit_cnt[4]_i_1 
       (.I0(\i2s_sdata_out_sr_bit_cnt[5]_i_3_n_0 ),
        .I1(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[3] ),
        .I2(\i2s_sdata_out_sr_bit_cnt[4]_i_2_n_0 ),
        .I3(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[2] ),
        .I4(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[4] ),
        .I5(\FSM_sequential_i2s_fsm_state[2]_i_4_n_0 ),
        .O(i2s_sdata_out_sr_bit_cnt[4]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \i2s_sdata_out_sr_bit_cnt[4]_i_2 
       (.I0(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[0] ),
        .I1(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[1] ),
        .O(\i2s_sdata_out_sr_bit_cnt[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0F000FFF8F888888)) 
    \i2s_sdata_out_sr_bit_cnt[5]_i_1 
       (.I0(s_axis_tvalid),
        .I1(s_axis_tready_reg_0),
        .I2(\i2s_sdata_out_sr_bit_cnt[5]_i_3_n_0 ),
        .I3(i2s_fsm_state__0[0]),
        .I4(i2s_fsm_state__0[1]),
        .I5(i2s_fsm_state__0[2]),
        .O(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF0000FFA9)) 
    \i2s_sdata_out_sr_bit_cnt[5]_i_2 
       (.I0(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[5] ),
        .I1(\i2s_sdata_out_sr_bit_cnt[5]_i_4_n_0 ),
        .I2(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[4] ),
        .I3(\i2s_sdata_out_sr_bit_cnt[5]_i_5_n_0 ),
        .I4(i2s_fsm_state__0[2]),
        .I5(\FSM_sequential_i2s_fsm_state[2]_i_4_n_0 ),
        .O(i2s_sdata_out_sr_bit_cnt[5]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \i2s_sdata_out_sr_bit_cnt[5]_i_3 
       (.I0(p_27_in),
        .I1(\i2s_sdata_out_sr_bit_cnt[0]_i_2_n_0 ),
        .I2(i2s_fsm_state__0[2]),
        .O(\i2s_sdata_out_sr_bit_cnt[5]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \i2s_sdata_out_sr_bit_cnt[5]_i_4 
       (.I0(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[2] ),
        .I1(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[0] ),
        .I2(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[1] ),
        .I3(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[3] ),
        .O(\i2s_sdata_out_sr_bit_cnt[5]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \i2s_sdata_out_sr_bit_cnt[5]_i_5 
       (.I0(\i2s_sdata_out_sr_bit_cnt[0]_i_2_n_0 ),
        .I1(p_27_in),
        .O(\i2s_sdata_out_sr_bit_cnt[5]_i_5_n_0 ));
  FDRE \i2s_sdata_out_sr_bit_cnt_reg[0] 
       (.C(i2s_src_clk),
        .CE(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_out_sr_bit_cnt[0]),
        .Q(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[0] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_sdata_out_sr_bit_cnt_reg[1] 
       (.C(i2s_src_clk),
        .CE(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_out_sr_bit_cnt[1]),
        .Q(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[1] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_sdata_out_sr_bit_cnt_reg[2] 
       (.C(i2s_src_clk),
        .CE(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_out_sr_bit_cnt[2]),
        .Q(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[2] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_sdata_out_sr_bit_cnt_reg[3] 
       (.C(i2s_src_clk),
        .CE(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_out_sr_bit_cnt[3]),
        .Q(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[3] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_sdata_out_sr_bit_cnt_reg[4] 
       (.C(i2s_src_clk),
        .CE(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_out_sr_bit_cnt[4]),
        .Q(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[4] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_sdata_out_sr_bit_cnt_reg[5] 
       (.C(i2s_src_clk),
        .CE(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_out_sr_bit_cnt[5]),
        .Q(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[5] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_sdata_out_sr_reg[0] 
       (.C(i2s_src_clk),
        .CE(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_out_sr[0]),
        .Q(\i2s_sdata_out_sr_reg_n_0_[0] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_sdata_out_sr_reg[10] 
       (.C(i2s_src_clk),
        .CE(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_out_sr[10]),
        .Q(\i2s_sdata_out_sr_reg_n_0_[10] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_sdata_out_sr_reg[11] 
       (.C(i2s_src_clk),
        .CE(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_out_sr[11]),
        .Q(\i2s_sdata_out_sr_reg_n_0_[11] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_sdata_out_sr_reg[12] 
       (.C(i2s_src_clk),
        .CE(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_out_sr[12]),
        .Q(\i2s_sdata_out_sr_reg_n_0_[12] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_sdata_out_sr_reg[13] 
       (.C(i2s_src_clk),
        .CE(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_out_sr[13]),
        .Q(\i2s_sdata_out_sr_reg_n_0_[13] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_sdata_out_sr_reg[14] 
       (.C(i2s_src_clk),
        .CE(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_out_sr[14]),
        .Q(\i2s_sdata_out_sr_reg_n_0_[14] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_sdata_out_sr_reg[15] 
       (.C(i2s_src_clk),
        .CE(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_out_sr[15]),
        .Q(\i2s_sdata_out_sr_reg_n_0_[15] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_sdata_out_sr_reg[16] 
       (.C(i2s_src_clk),
        .CE(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_out_sr[16]),
        .Q(\i2s_sdata_out_sr_reg_n_0_[16] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_sdata_out_sr_reg[17] 
       (.C(i2s_src_clk),
        .CE(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_out_sr[17]),
        .Q(\i2s_sdata_out_sr_reg_n_0_[17] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_sdata_out_sr_reg[18] 
       (.C(i2s_src_clk),
        .CE(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_out_sr[18]),
        .Q(\i2s_sdata_out_sr_reg_n_0_[18] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_sdata_out_sr_reg[19] 
       (.C(i2s_src_clk),
        .CE(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_out_sr[19]),
        .Q(\i2s_sdata_out_sr_reg_n_0_[19] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_sdata_out_sr_reg[1] 
       (.C(i2s_src_clk),
        .CE(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_out_sr[1]),
        .Q(\i2s_sdata_out_sr_reg_n_0_[1] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_sdata_out_sr_reg[20] 
       (.C(i2s_src_clk),
        .CE(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_out_sr[20]),
        .Q(\i2s_sdata_out_sr_reg_n_0_[20] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_sdata_out_sr_reg[21] 
       (.C(i2s_src_clk),
        .CE(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_out_sr[21]),
        .Q(\i2s_sdata_out_sr_reg_n_0_[21] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_sdata_out_sr_reg[22] 
       (.C(i2s_src_clk),
        .CE(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_out_sr[22]),
        .Q(\i2s_sdata_out_sr_reg_n_0_[22] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_sdata_out_sr_reg[23] 
       (.C(i2s_src_clk),
        .CE(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_out_sr[23]),
        .Q(\i2s_sdata_out_sr_reg_n_0_[23] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_sdata_out_sr_reg[24] 
       (.C(i2s_src_clk),
        .CE(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_out_sr[24]),
        .Q(\i2s_sdata_out_sr_reg_n_0_[24] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_sdata_out_sr_reg[25] 
       (.C(i2s_src_clk),
        .CE(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_out_sr[25]),
        .Q(\i2s_sdata_out_sr_reg_n_0_[25] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_sdata_out_sr_reg[26] 
       (.C(i2s_src_clk),
        .CE(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_out_sr[26]),
        .Q(\i2s_sdata_out_sr_reg_n_0_[26] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_sdata_out_sr_reg[27] 
       (.C(i2s_src_clk),
        .CE(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_out_sr[27]),
        .Q(\i2s_sdata_out_sr_reg_n_0_[27] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_sdata_out_sr_reg[28] 
       (.C(i2s_src_clk),
        .CE(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_out_sr[28]),
        .Q(\i2s_sdata_out_sr_reg_n_0_[28] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_sdata_out_sr_reg[29] 
       (.C(i2s_src_clk),
        .CE(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_out_sr[29]),
        .Q(\i2s_sdata_out_sr_reg_n_0_[29] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_sdata_out_sr_reg[2] 
       (.C(i2s_src_clk),
        .CE(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_out_sr[2]),
        .Q(\i2s_sdata_out_sr_reg_n_0_[2] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_sdata_out_sr_reg[30] 
       (.C(i2s_src_clk),
        .CE(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_out_sr[30]),
        .Q(\i2s_sdata_out_sr_reg_n_0_[30] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_sdata_out_sr_reg[31] 
       (.C(i2s_src_clk),
        .CE(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_out_sr[31]),
        .Q(\i2s_sdata_out_sr_reg_n_0_[31] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_sdata_out_sr_reg[3] 
       (.C(i2s_src_clk),
        .CE(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_out_sr[3]),
        .Q(\i2s_sdata_out_sr_reg_n_0_[3] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_sdata_out_sr_reg[4] 
       (.C(i2s_src_clk),
        .CE(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_out_sr[4]),
        .Q(\i2s_sdata_out_sr_reg_n_0_[4] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_sdata_out_sr_reg[5] 
       (.C(i2s_src_clk),
        .CE(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_out_sr[5]),
        .Q(\i2s_sdata_out_sr_reg_n_0_[5] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_sdata_out_sr_reg[6] 
       (.C(i2s_src_clk),
        .CE(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_out_sr[6]),
        .Q(\i2s_sdata_out_sr_reg_n_0_[6] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_sdata_out_sr_reg[7] 
       (.C(i2s_src_clk),
        .CE(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_out_sr[7]),
        .Q(\i2s_sdata_out_sr_reg_n_0_[7] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_sdata_out_sr_reg[8] 
       (.C(i2s_src_clk),
        .CE(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_out_sr[8]),
        .Q(\i2s_sdata_out_sr_reg_n_0_[8] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \i2s_sdata_out_sr_reg[9] 
       (.C(i2s_src_clk),
        .CE(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_out_sr[9]),
        .Q(\i2s_sdata_out_sr_reg_n_0_[9] ),
        .R(m_axis_tvalid_i_1_n_0));
  (* DEST_EXT_HSK = "0" *) 
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* SIM_ASSERT_CHK = "1" *) 
  (* SRC_SYNC_FF = "2" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "2" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  (* XPM_MODULE = "TRUE" *) 
  icyradio_axi_i2s_0_xpm_cdc_handshake__parameterized0 i2s_src_clk_to_aclk_sync
       (.dest_ack(1'b0),
        .dest_clk(aclk),
        .dest_out(sync_i2s_src_clk_to_aclk_out),
        .dest_req(sync_i2s_src_clk_to_aclk_dst_req),
        .src_clk(i2s_src_clk),
        .src_in({sync_i2s_src_clk_to_aclk_in,i2s_src_resetn}),
        .src_rcv(sync_i2s_src_clk_to_aclk_src_done),
        .src_send(sync_i2s_src_clk_to_aclk_src_req));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    i2s_src_resetn_a_i_1
       (.I0(sync_i2s_src_clk_to_aclk_out[0]),
        .I1(sync_i2s_src_clk_to_aclk_dst_req),
        .I2(data0[31]),
        .O(i2s_src_resetn_a_i_1_n_0));
  FDRE i2s_src_resetn_a_reg
       (.C(aclk),
        .CE(1'b1),
        .D(i2s_src_resetn_a_i_1_n_0),
        .Q(data0[31]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[0]_i_1 
       (.I0(i2s_sdata_in_q),
        .I1(i2s_lb_en),
        .I2(i2s_sdata_out_int_reg_n_0),
        .I3(i2s_fsm_state__0[2]),
        .O(m_axis_tdata1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[10]_i_1 
       (.I0(\i2s_sdata_in_sr_reg_n_0_[9] ),
        .I1(i2s_fsm_state__0[2]),
        .O(m_axis_tdata1_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[11]_i_1 
       (.I0(\i2s_sdata_in_sr_reg_n_0_[10] ),
        .I1(i2s_fsm_state__0[2]),
        .O(m_axis_tdata1_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[12]_i_1 
       (.I0(\i2s_sdata_in_sr_reg_n_0_[11] ),
        .I1(i2s_fsm_state__0[2]),
        .O(m_axis_tdata1_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[13]_i_1 
       (.I0(\i2s_sdata_in_sr_reg_n_0_[12] ),
        .I1(i2s_fsm_state__0[2]),
        .O(m_axis_tdata1_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[14]_i_1 
       (.I0(\i2s_sdata_in_sr_reg_n_0_[13] ),
        .I1(i2s_fsm_state__0[2]),
        .O(m_axis_tdata1_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[15]_i_1 
       (.I0(\i2s_sdata_in_sr_reg_n_0_[14] ),
        .I1(i2s_fsm_state__0[2]),
        .O(m_axis_tdata1_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[16]_i_1 
       (.I0(\i2s_sdata_in_sr_reg_n_0_[15] ),
        .I1(i2s_fsm_state__0[2]),
        .O(m_axis_tdata1_in[16]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[17]_i_1 
       (.I0(\i2s_sdata_in_sr_reg_n_0_[16] ),
        .I1(i2s_fsm_state__0[2]),
        .O(m_axis_tdata1_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[18]_i_1 
       (.I0(\i2s_sdata_in_sr_reg_n_0_[17] ),
        .I1(i2s_fsm_state__0[2]),
        .O(m_axis_tdata1_in[18]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[19]_i_1 
       (.I0(\i2s_sdata_in_sr_reg_n_0_[18] ),
        .I1(i2s_fsm_state__0[2]),
        .O(m_axis_tdata1_in[19]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[1]_i_1 
       (.I0(\i2s_sdata_in_sr_reg_n_0_[0] ),
        .I1(i2s_fsm_state__0[2]),
        .O(m_axis_tdata1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[20]_i_1 
       (.I0(\i2s_sdata_in_sr_reg_n_0_[19] ),
        .I1(i2s_fsm_state__0[2]),
        .O(m_axis_tdata1_in[20]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[21]_i_1 
       (.I0(\i2s_sdata_in_sr_reg_n_0_[20] ),
        .I1(i2s_fsm_state__0[2]),
        .O(m_axis_tdata1_in[21]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[22]_i_1 
       (.I0(\i2s_sdata_in_sr_reg_n_0_[21] ),
        .I1(i2s_fsm_state__0[2]),
        .O(m_axis_tdata1_in[22]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[23]_i_1 
       (.I0(\i2s_sdata_in_sr_reg_n_0_[22] ),
        .I1(i2s_fsm_state__0[2]),
        .O(m_axis_tdata1_in[23]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[24]_i_1 
       (.I0(\i2s_sdata_in_sr_reg_n_0_[23] ),
        .I1(i2s_fsm_state__0[2]),
        .O(m_axis_tdata1_in[24]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[25]_i_1 
       (.I0(\i2s_sdata_in_sr_reg_n_0_[24] ),
        .I1(i2s_fsm_state__0[2]),
        .O(m_axis_tdata1_in[25]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[26]_i_1 
       (.I0(\i2s_sdata_in_sr_reg_n_0_[25] ),
        .I1(i2s_fsm_state__0[2]),
        .O(m_axis_tdata1_in[26]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[27]_i_1 
       (.I0(\i2s_sdata_in_sr_reg_n_0_[26] ),
        .I1(i2s_fsm_state__0[2]),
        .O(m_axis_tdata1_in[27]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[28]_i_1 
       (.I0(\i2s_sdata_in_sr_reg_n_0_[27] ),
        .I1(i2s_fsm_state__0[2]),
        .O(m_axis_tdata1_in[28]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[29]_i_1 
       (.I0(\i2s_sdata_in_sr_reg_n_0_[28] ),
        .I1(i2s_fsm_state__0[2]),
        .O(m_axis_tdata1_in[29]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[2]_i_1 
       (.I0(\i2s_sdata_in_sr_reg_n_0_[1] ),
        .I1(i2s_fsm_state__0[2]),
        .O(m_axis_tdata1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[30]_i_1 
       (.I0(\i2s_sdata_in_sr_reg_n_0_[29] ),
        .I1(i2s_fsm_state__0[2]),
        .O(m_axis_tdata1_in[30]));
  LUT4 #(
    .INIT(16'hAABA)) 
    \m_axis_tdata[31]_i_1 
       (.I0(m_axis_tvalid_i_3_n_0),
        .I1(i2s_fsm_state__0[0]),
        .I2(i2s_fsm_state__0[2]),
        .I3(i2s_fsm_state__0[1]),
        .O(\m_axis_tdata[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[31]_i_2 
       (.I0(\i2s_sdata_in_sr_reg_n_0_[30] ),
        .I1(i2s_fsm_state__0[2]),
        .O(m_axis_tdata1_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[3]_i_1 
       (.I0(\i2s_sdata_in_sr_reg_n_0_[2] ),
        .I1(i2s_fsm_state__0[2]),
        .O(m_axis_tdata1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[4]_i_1 
       (.I0(\i2s_sdata_in_sr_reg_n_0_[3] ),
        .I1(i2s_fsm_state__0[2]),
        .O(m_axis_tdata1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[5]_i_1 
       (.I0(\i2s_sdata_in_sr_reg_n_0_[4] ),
        .I1(i2s_fsm_state__0[2]),
        .O(m_axis_tdata1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[6]_i_1 
       (.I0(\i2s_sdata_in_sr_reg_n_0_[5] ),
        .I1(i2s_fsm_state__0[2]),
        .O(m_axis_tdata1_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[7]_i_1 
       (.I0(\i2s_sdata_in_sr_reg_n_0_[6] ),
        .I1(i2s_fsm_state__0[2]),
        .O(m_axis_tdata1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[8]_i_1 
       (.I0(\i2s_sdata_in_sr_reg_n_0_[7] ),
        .I1(i2s_fsm_state__0[2]),
        .O(m_axis_tdata1_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[9]_i_1 
       (.I0(\i2s_sdata_in_sr_reg_n_0_[8] ),
        .I1(i2s_fsm_state__0[2]),
        .O(m_axis_tdata1_in[9]));
  FDRE \m_axis_tdata_reg[0] 
       (.C(i2s_src_clk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(m_axis_tdata1_in[0]),
        .Q(m_axis_tdata[0]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \m_axis_tdata_reg[10] 
       (.C(i2s_src_clk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(m_axis_tdata1_in[10]),
        .Q(m_axis_tdata[10]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \m_axis_tdata_reg[11] 
       (.C(i2s_src_clk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(m_axis_tdata1_in[11]),
        .Q(m_axis_tdata[11]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \m_axis_tdata_reg[12] 
       (.C(i2s_src_clk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(m_axis_tdata1_in[12]),
        .Q(m_axis_tdata[12]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \m_axis_tdata_reg[13] 
       (.C(i2s_src_clk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(m_axis_tdata1_in[13]),
        .Q(m_axis_tdata[13]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \m_axis_tdata_reg[14] 
       (.C(i2s_src_clk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(m_axis_tdata1_in[14]),
        .Q(m_axis_tdata[14]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \m_axis_tdata_reg[15] 
       (.C(i2s_src_clk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(m_axis_tdata1_in[15]),
        .Q(m_axis_tdata[15]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \m_axis_tdata_reg[16] 
       (.C(i2s_src_clk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(m_axis_tdata1_in[16]),
        .Q(m_axis_tdata[16]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \m_axis_tdata_reg[17] 
       (.C(i2s_src_clk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(m_axis_tdata1_in[17]),
        .Q(m_axis_tdata[17]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \m_axis_tdata_reg[18] 
       (.C(i2s_src_clk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(m_axis_tdata1_in[18]),
        .Q(m_axis_tdata[18]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \m_axis_tdata_reg[19] 
       (.C(i2s_src_clk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(m_axis_tdata1_in[19]),
        .Q(m_axis_tdata[19]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \m_axis_tdata_reg[1] 
       (.C(i2s_src_clk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(m_axis_tdata1_in[1]),
        .Q(m_axis_tdata[1]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \m_axis_tdata_reg[20] 
       (.C(i2s_src_clk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(m_axis_tdata1_in[20]),
        .Q(m_axis_tdata[20]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \m_axis_tdata_reg[21] 
       (.C(i2s_src_clk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(m_axis_tdata1_in[21]),
        .Q(m_axis_tdata[21]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \m_axis_tdata_reg[22] 
       (.C(i2s_src_clk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(m_axis_tdata1_in[22]),
        .Q(m_axis_tdata[22]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \m_axis_tdata_reg[23] 
       (.C(i2s_src_clk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(m_axis_tdata1_in[23]),
        .Q(m_axis_tdata[23]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \m_axis_tdata_reg[24] 
       (.C(i2s_src_clk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(m_axis_tdata1_in[24]),
        .Q(m_axis_tdata[24]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \m_axis_tdata_reg[25] 
       (.C(i2s_src_clk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(m_axis_tdata1_in[25]),
        .Q(m_axis_tdata[25]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \m_axis_tdata_reg[26] 
       (.C(i2s_src_clk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(m_axis_tdata1_in[26]),
        .Q(m_axis_tdata[26]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \m_axis_tdata_reg[27] 
       (.C(i2s_src_clk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(m_axis_tdata1_in[27]),
        .Q(m_axis_tdata[27]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \m_axis_tdata_reg[28] 
       (.C(i2s_src_clk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(m_axis_tdata1_in[28]),
        .Q(m_axis_tdata[28]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \m_axis_tdata_reg[29] 
       (.C(i2s_src_clk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(m_axis_tdata1_in[29]),
        .Q(m_axis_tdata[29]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \m_axis_tdata_reg[2] 
       (.C(i2s_src_clk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(m_axis_tdata1_in[2]),
        .Q(m_axis_tdata[2]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \m_axis_tdata_reg[30] 
       (.C(i2s_src_clk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(m_axis_tdata1_in[30]),
        .Q(m_axis_tdata[30]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \m_axis_tdata_reg[31] 
       (.C(i2s_src_clk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(m_axis_tdata1_in[31]),
        .Q(m_axis_tdata[31]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \m_axis_tdata_reg[3] 
       (.C(i2s_src_clk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(m_axis_tdata1_in[3]),
        .Q(m_axis_tdata[3]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \m_axis_tdata_reg[4] 
       (.C(i2s_src_clk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(m_axis_tdata1_in[4]),
        .Q(m_axis_tdata[4]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \m_axis_tdata_reg[5] 
       (.C(i2s_src_clk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(m_axis_tdata1_in[5]),
        .Q(m_axis_tdata[5]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \m_axis_tdata_reg[6] 
       (.C(i2s_src_clk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(m_axis_tdata1_in[6]),
        .Q(m_axis_tdata[6]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \m_axis_tdata_reg[7] 
       (.C(i2s_src_clk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(m_axis_tdata1_in[7]),
        .Q(m_axis_tdata[7]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \m_axis_tdata_reg[8] 
       (.C(i2s_src_clk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(m_axis_tdata1_in[8]),
        .Q(m_axis_tdata[8]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \m_axis_tdata_reg[9] 
       (.C(i2s_src_clk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(m_axis_tdata1_in[9]),
        .Q(m_axis_tdata[9]),
        .R(m_axis_tvalid_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    m_axis_tvalid_i_1
       (.I0(i2s_en),
        .O(m_axis_tvalid_i_1_n_0));
  LUT6 #(
    .INIT(64'hAAAAEFFFAAAA2000)) 
    m_axis_tvalid_i_2
       (.I0(m_axis_tvalid_i_3_n_0),
        .I1(m_axis_tvalid_i_4_n_0),
        .I2(m_axis_tvalid_i_5_n_0),
        .I3(m_axis_tvalid0__3),
        .I4(m_axis_tvalid_i_7_n_0),
        .I5(m_axis_tvalid_reg_0),
        .O(m_axis_tvalid_i_2_n_0));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    m_axis_tvalid_i_3
       (.I0(i2s_fsm_state__0[2]),
        .I1(\FSM_sequential_i2s_fsm_state[2]_i_4_n_0 ),
        .I2(p_0_in_0),
        .I3(m_axis_tvalid1__6),
        .I4(m_axis_tvalid0__3),
        .I5(i2s_bclk_rising__0),
        .O(m_axis_tvalid_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    m_axis_tvalid_i_4
       (.I0(m_axis_tvalid1__6),
        .I1(p_0_in_0),
        .I2(i2s_bclk_rising__0),
        .I3(i2s_fsm_state__0[2]),
        .O(m_axis_tvalid_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    m_axis_tvalid_i_5
       (.I0(i2s_fsm_state__0[0]),
        .I1(i2s_fsm_state__0[1]),
        .I2(i2s_fsm_state__0[2]),
        .O(m_axis_tvalid_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    m_axis_tvalid_i_6
       (.I0(\i2s_sdata_in_sr_bit_cnt_reg_n_0_[0] ),
        .I1(\i2s_sdata_in_sr_bit_cnt_reg_n_0_[1] ),
        .I2(\i2s_sdata_in_sr_bit_cnt_reg_n_0_[2] ),
        .I3(\i2s_sdata_in_sr_bit_cnt_reg_n_0_[4] ),
        .I4(\i2s_sdata_in_sr_bit_cnt_reg_n_0_[3] ),
        .O(m_axis_tvalid0__3));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h1F101010)) 
    m_axis_tvalid_i_7
       (.I0(i2s_fsm_state__0[0]),
        .I1(i2s_fsm_state__0[1]),
        .I2(i2s_fsm_state__0[2]),
        .I3(m_axis_tready),
        .I4(m_axis_tvalid_reg_0),
        .O(m_axis_tvalid_i_7_n_0));
  FDRE m_axis_tvalid_reg
       (.C(i2s_src_clk),
        .CE(1'b1),
        .D(m_axis_tvalid_i_2_n_0),
        .Q(m_axis_tvalid_reg_0),
        .R(m_axis_tvalid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT1 #(
    .INIT(2'h1)) 
    s_axi_arready_INST_0
       (.I0(s_axi_rvalid_reg_0),
        .O(s_axi_arready));
  LUT1 #(
    .INIT(2'h1)) 
    s_axi_awready_i_1
       (.I0(aresetn),
        .O(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h0B000000)) 
    s_axi_awready_i_2
       (.I0(s_axi_bready),
        .I1(s_axi_bvalid),
        .I2(s_axi_wready),
        .I3(s_axi_wvalid),
        .I4(s_axi_awvalid),
        .O(s_axi_awready0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *) 
  FDRE s_axi_awready_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_axi_awready0),
        .Q(s_axi_wready),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    s_axi_bvalid_i_1
       (.I0(s_axi_wready),
        .I1(s_axi_bready),
        .I2(s_axi_bvalid),
        .O(s_axi_bvalid_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *) 
  FDRE s_axi_bvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_axi_bvalid_i_1_n_0),
        .Q(s_axi_bvalid),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h8A8ABA8A)) 
    \s_axi_rdata[0]_i_1 
       (.I0(\s_axi_rdata[0]_i_2_n_0 ),
        .I1(s_axi_araddr[1]),
        .I2(s_axi_araddr[2]),
        .I3(sync_aclk_to_i2s_src_clk_in[0]),
        .I4(s_axi_araddr[0]),
        .O(s_axi_rdata_1[0]));
  LUT6 #(
    .INIT(64'h55D144D111D100D1)) 
    \s_axi_rdata[0]_i_2 
       (.I0(s_axi_araddr[2]),
        .I1(s_axi_araddr[0]),
        .I2(sync_aclk_to_i2s_src_clk_in[32]),
        .I3(s_axi_araddr[1]),
        .I4(sync_aclk_to_i2s_src_clk_in[24]),
        .I5(sync_aclk_to_i2s_src_clk_in[16]),
        .O(\s_axi_rdata[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h02023000)) 
    \s_axi_rdata[10]_i_1 
       (.I0(sync_aclk_to_i2s_src_clk_in[39]),
        .I1(s_axi_araddr[1]),
        .I2(s_axi_araddr[2]),
        .I3(sync_aclk_to_i2s_src_clk_in[10]),
        .I4(s_axi_araddr[0]),
        .O(s_axi_rdata_1[10]));
  LUT5 #(
    .INIT(32'h02023000)) 
    \s_axi_rdata[11]_i_1 
       (.I0(sync_aclk_to_i2s_src_clk_in[40]),
        .I1(s_axi_araddr[1]),
        .I2(s_axi_araddr[2]),
        .I3(sync_aclk_to_i2s_src_clk_in[11]),
        .I4(s_axi_araddr[0]),
        .O(s_axi_rdata_1[11]));
  LUT5 #(
    .INIT(32'h02023000)) 
    \s_axi_rdata[12]_i_1 
       (.I0(sync_aclk_to_i2s_src_clk_in[41]),
        .I1(s_axi_araddr[1]),
        .I2(s_axi_araddr[2]),
        .I3(sync_aclk_to_i2s_src_clk_in[12]),
        .I4(s_axi_araddr[0]),
        .O(s_axi_rdata_1[12]));
  LUT5 #(
    .INIT(32'h02023000)) 
    \s_axi_rdata[13]_i_1 
       (.I0(sync_aclk_to_i2s_src_clk_in[42]),
        .I1(s_axi_araddr[1]),
        .I2(s_axi_araddr[2]),
        .I3(sync_aclk_to_i2s_src_clk_in[13]),
        .I4(s_axi_araddr[0]),
        .O(s_axi_rdata_1[13]));
  LUT5 #(
    .INIT(32'h02023000)) 
    \s_axi_rdata[14]_i_1 
       (.I0(sync_aclk_to_i2s_src_clk_in[43]),
        .I1(s_axi_araddr[1]),
        .I2(s_axi_araddr[2]),
        .I3(sync_aclk_to_i2s_src_clk_in[14]),
        .I4(s_axi_araddr[0]),
        .O(s_axi_rdata_1[14]));
  LUT5 #(
    .INIT(32'h02023000)) 
    \s_axi_rdata[15]_i_1 
       (.I0(sync_aclk_to_i2s_src_clk_in[44]),
        .I1(s_axi_araddr[1]),
        .I2(s_axi_araddr[2]),
        .I3(sync_aclk_to_i2s_src_clk_in[15]),
        .I4(s_axi_araddr[0]),
        .O(s_axi_rdata_1[15]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h000D)) 
    \s_axi_rdata[16]_i_1 
       (.I0(s_axi_araddr[0]),
        .I1(sync_aclk_to_i2s_src_clk_in[34]),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[2]),
        .O(s_axi_rdata_1[16]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \s_axi_rdata[17]_i_1 
       (.I0(sync_aclk_to_i2s_src_clk_in[35]),
        .I1(s_axi_araddr[0]),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[2]),
        .O(s_axi_rdata_1[17]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \s_axi_rdata[18]_i_1 
       (.I0(sync_aclk_to_i2s_src_clk_in[36]),
        .I1(s_axi_araddr[0]),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[2]),
        .O(s_axi_rdata_1[18]));
  LUT5 #(
    .INIT(32'h8A8ABA8A)) 
    \s_axi_rdata[1]_i_1 
       (.I0(\s_axi_rdata[1]_i_2_n_0 ),
        .I1(s_axi_araddr[1]),
        .I2(s_axi_araddr[2]),
        .I3(sync_aclk_to_i2s_src_clk_in[1]),
        .I4(s_axi_araddr[0]),
        .O(s_axi_rdata_1[1]));
  LUT6 #(
    .INIT(64'h55C050C005C000C0)) 
    \s_axi_rdata[1]_i_2 
       (.I0(s_axi_araddr[2]),
        .I1(sync_aclk_to_i2s_src_clk_in[47]),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[1]),
        .I4(sync_aclk_to_i2s_src_clk_in[25]),
        .I5(sync_aclk_to_i2s_src_clk_in[17]),
        .O(\s_axi_rdata[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \s_axi_rdata[20]_i_1 
       (.I0(sync_aclk_to_i2s_src_clk_in[33]),
        .I1(s_axi_araddr[0]),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[2]),
        .O(s_axi_rdata_1[20]));
  LUT5 #(
    .INIT(32'h8A8ABA8A)) 
    \s_axi_rdata[2]_i_1 
       (.I0(\s_axi_rdata[2]_i_2_n_0 ),
        .I1(s_axi_araddr[1]),
        .I2(s_axi_araddr[2]),
        .I3(sync_aclk_to_i2s_src_clk_in[2]),
        .I4(s_axi_araddr[0]),
        .O(s_axi_rdata_1[2]));
  LUT6 #(
    .INIT(64'h55C050C005C000C0)) 
    \s_axi_rdata[2]_i_2 
       (.I0(s_axi_araddr[2]),
        .I1(sync_aclk_to_i2s_src_clk_in[46]),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[1]),
        .I4(sync_aclk_to_i2s_src_clk_in[26]),
        .I5(sync_aclk_to_i2s_src_clk_in[18]),
        .O(\s_axi_rdata[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hD0FF)) 
    \s_axi_rdata[31]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_axi_rvalid_reg_0),
        .I2(s_axi_rready),
        .I3(aresetn),
        .O(\s_axi_rdata[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[31]_i_2 
       (.I0(s_axi_arvalid),
        .I1(s_axi_rvalid_reg_0),
        .O(\s_axi_rdata[31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \s_axi_rdata[31]_i_3 
       (.I0(data0[31]),
        .I1(s_axi_araddr[0]),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[2]),
        .O(s_axi_rdata_1[31]));
  LUT5 #(
    .INIT(32'h8A8ABA8A)) 
    \s_axi_rdata[3]_i_1 
       (.I0(\s_axi_rdata[3]_i_2_n_0 ),
        .I1(s_axi_araddr[1]),
        .I2(s_axi_araddr[2]),
        .I3(sync_aclk_to_i2s_src_clk_in[3]),
        .I4(s_axi_araddr[0]),
        .O(s_axi_rdata_1[3]));
  LUT6 #(
    .INIT(64'h55C050C005C000C0)) 
    \s_axi_rdata[3]_i_2 
       (.I0(s_axi_araddr[2]),
        .I1(data0[3]),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[1]),
        .I4(sync_aclk_to_i2s_src_clk_in[27]),
        .I5(sync_aclk_to_i2s_src_clk_in[19]),
        .O(\s_axi_rdata[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8A8ABA8A)) 
    \s_axi_rdata[4]_i_1 
       (.I0(\s_axi_rdata[4]_i_2_n_0 ),
        .I1(s_axi_araddr[1]),
        .I2(s_axi_araddr[2]),
        .I3(sync_aclk_to_i2s_src_clk_in[4]),
        .I4(s_axi_araddr[0]),
        .O(s_axi_rdata_1[4]));
  LUT6 #(
    .INIT(64'h55C050C005C000C0)) 
    \s_axi_rdata[4]_i_2 
       (.I0(s_axi_araddr[2]),
        .I1(sync_aclk_to_i2s_src_clk_in[45]),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[1]),
        .I4(sync_aclk_to_i2s_src_clk_in[28]),
        .I5(sync_aclk_to_i2s_src_clk_in[20]),
        .O(\s_axi_rdata[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00A000A00FC000C0)) 
    \s_axi_rdata[5]_i_1 
       (.I0(sync_aclk_to_i2s_src_clk_in[21]),
        .I1(sync_aclk_to_i2s_src_clk_in[29]),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[2]),
        .I4(sync_aclk_to_i2s_src_clk_in[5]),
        .I5(s_axi_araddr[0]),
        .O(s_axi_rdata_1[5]));
  LUT6 #(
    .INIT(64'h00A000A00FC000C0)) 
    \s_axi_rdata[6]_i_1 
       (.I0(sync_aclk_to_i2s_src_clk_in[22]),
        .I1(sync_aclk_to_i2s_src_clk_in[30]),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[2]),
        .I4(sync_aclk_to_i2s_src_clk_in[6]),
        .I5(s_axi_araddr[0]),
        .O(s_axi_rdata_1[6]));
  LUT6 #(
    .INIT(64'h00A000A00FC000C0)) 
    \s_axi_rdata[7]_i_1 
       (.I0(sync_aclk_to_i2s_src_clk_in[23]),
        .I1(sync_aclk_to_i2s_src_clk_in[31]),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_araddr[2]),
        .I4(sync_aclk_to_i2s_src_clk_in[7]),
        .I5(s_axi_araddr[0]),
        .O(s_axi_rdata_1[7]));
  LUT5 #(
    .INIT(32'h02023000)) 
    \s_axi_rdata[8]_i_1 
       (.I0(sync_aclk_to_i2s_src_clk_in[37]),
        .I1(s_axi_araddr[1]),
        .I2(s_axi_araddr[2]),
        .I3(sync_aclk_to_i2s_src_clk_in[8]),
        .I4(s_axi_araddr[0]),
        .O(s_axi_rdata_1[8]));
  LUT5 #(
    .INIT(32'h02023000)) 
    \s_axi_rdata[9]_i_1 
       (.I0(sync_aclk_to_i2s_src_clk_in[38]),
        .I1(s_axi_araddr[1]),
        .I2(s_axi_araddr[2]),
        .I3(sync_aclk_to_i2s_src_clk_in[9]),
        .I4(s_axi_araddr[0]),
        .O(s_axi_rdata_1[9]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[0] 
       (.C(aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(s_axi_rdata_1[0]),
        .Q(s_axi_rdata[0]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[10] 
       (.C(aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(s_axi_rdata_1[10]),
        .Q(s_axi_rdata[10]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[11] 
       (.C(aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(s_axi_rdata_1[11]),
        .Q(s_axi_rdata[11]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[12] 
       (.C(aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(s_axi_rdata_1[12]),
        .Q(s_axi_rdata[12]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[13] 
       (.C(aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(s_axi_rdata_1[13]),
        .Q(s_axi_rdata[13]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[14] 
       (.C(aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(s_axi_rdata_1[14]),
        .Q(s_axi_rdata[14]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[15] 
       (.C(aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(s_axi_rdata_1[15]),
        .Q(s_axi_rdata[15]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[16] 
       (.C(aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(s_axi_rdata_1[16]),
        .Q(s_axi_rdata[16]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[17] 
       (.C(aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(s_axi_rdata_1[17]),
        .Q(s_axi_rdata[17]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[18] 
       (.C(aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(s_axi_rdata_1[18]),
        .Q(s_axi_rdata[18]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[1] 
       (.C(aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(s_axi_rdata_1[1]),
        .Q(s_axi_rdata[1]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[20] 
       (.C(aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(s_axi_rdata_1[20]),
        .Q(s_axi_rdata[19]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[2] 
       (.C(aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(s_axi_rdata_1[2]),
        .Q(s_axi_rdata[2]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[31] 
       (.C(aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(s_axi_rdata_1[31]),
        .Q(s_axi_rdata[20]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[3] 
       (.C(aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(s_axi_rdata_1[3]),
        .Q(s_axi_rdata[3]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[4] 
       (.C(aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(s_axi_rdata_1[4]),
        .Q(s_axi_rdata[4]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[5] 
       (.C(aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(s_axi_rdata_1[5]),
        .Q(s_axi_rdata[5]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[6] 
       (.C(aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(s_axi_rdata_1[6]),
        .Q(s_axi_rdata[6]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[7] 
       (.C(aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(s_axi_rdata_1[7]),
        .Q(s_axi_rdata[7]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[8] 
       (.C(aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(s_axi_rdata_1[8]),
        .Q(s_axi_rdata[8]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[9] 
       (.C(aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(s_axi_rdata_1[9]),
        .Q(s_axi_rdata[9]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h4E)) 
    s_axi_rvalid_i_1
       (.I0(s_axi_rvalid_reg_0),
        .I1(s_axi_arvalid),
        .I2(s_axi_rready),
        .O(s_axi_rvalid_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *) 
  FDRE s_axi_rvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_axi_rvalid_i_1_n_0),
        .Q(s_axi_rvalid_reg_0),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'hFFFF02FFFFFF0200)) 
    s_axis_tready_i_1
       (.I0(s_axis_tready023_out),
        .I1(s_axis_tready_i_3_n_0),
        .I2(i2s_fsm_state__0[0]),
        .I3(s_axis_tready_i_4_n_0),
        .I4(s_axis_tready_i_5_n_0),
        .I5(s_axis_tready_reg_0),
        .O(s_axis_tready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    s_axis_tready_i_2
       (.I0(s_axis_tready_reg_0),
        .I1(\i2s_sdata_out_sr_bit_cnt[4]_i_2_n_0 ),
        .I2(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[2] ),
        .I3(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[3] ),
        .I4(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[4] ),
        .I5(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[5] ),
        .O(s_axis_tready023_out));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'hE)) 
    s_axis_tready_i_3
       (.I0(i2s_fsm_state__0[2]),
        .I1(i2s_fsm_state__0[1]),
        .O(s_axis_tready_i_3_n_0));
  LUT6 #(
    .INIT(64'h1111F1111111F000)) 
    s_axis_tready_i_4
       (.I0(i2s_fsm_state__0[0]),
        .I1(i2s_fsm_state__0[1]),
        .I2(s_axis_tready_reg_0),
        .I3(s_axis_tvalid),
        .I4(i2s_fsm_state__0[2]),
        .I5(s_axis_tready023_out),
        .O(s_axis_tready_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    s_axis_tready_i_5
       (.I0(s_axis_tready_i_6_n_0),
        .I1(\FSM_sequential_i2s_fsm_state[2]_i_4_n_0 ),
        .I2(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[1] ),
        .I3(i2s_fsm_state__0[2]),
        .I4(\i2s_sdata_out_sr_bit_cnt[0]_i_2_n_0 ),
        .I5(p_27_in),
        .O(s_axis_tready_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    s_axis_tready_i_6
       (.I0(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[5] ),
        .I1(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[4] ),
        .I2(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[3] ),
        .I3(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[2] ),
        .O(s_axis_tready_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    s_axis_tready_i_7
       (.I0(i2s_bclk_i_6_n_0),
        .I1(i2s_bclk_i_5_n_0),
        .I2(i2s_bclk_i_4_n_0),
        .I3(i2s_bclk_i_3_n_0),
        .I4(i2s_bclk_reg_0),
        .O(p_27_in));
  FDRE s_axis_tready_reg
       (.C(i2s_src_clk),
        .CE(1'b1),
        .D(s_axis_tready_i_1_n_0),
        .Q(s_axis_tready_reg_0),
        .R(m_axis_tvalid_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sync_aclk_to_i2s_src_clk_src_req_i_1
       (.I0(sync_aclk_to_i2s_src_clk_src_done),
        .O(sync_aclk_to_i2s_src_clk_src_req_i_1_n_0));
  FDRE sync_aclk_to_i2s_src_clk_src_req_reg
       (.C(aclk),
        .CE(1'b1),
        .D(sync_aclk_to_i2s_src_clk_src_req_i_1_n_0),
        .Q(sync_aclk_to_i2s_src_clk_src_req),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    sync_i2s_src_clk_to_aclk_src_req_i_1
       (.I0(sync_i2s_src_clk_to_aclk_src_done),
        .O(sync_i2s_src_clk_to_aclk_src_req_i_1_n_0));
  FDRE sync_i2s_src_clk_to_aclk_src_req_reg
       (.C(i2s_src_clk),
        .CE(1'b1),
        .D(sync_i2s_src_clk_to_aclk_src_req_i_1_n_0),
        .Q(sync_i2s_src_clk_to_aclk_src_req),
        .R(1'b0));
endmodule

(* DEST_EXT_HSK = "0" *) (* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "1" *) 
(* ORIG_REF_NAME = "xpm_cdc_handshake" *) (* SIM_ASSERT_CHK = "1" *) (* SRC_SYNC_FF = "2" *) 
(* VERSION = "0" *) (* WIDTH = "48" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "HANDSHAKE" *) 
module icyradio_axi_i2s_0_xpm_cdc_handshake
   (src_clk,
    src_in,
    src_send,
    src_rcv,
    dest_clk,
    dest_out,
    dest_req,
    dest_ack);
  input src_clk;
  input [47:0]src_in;
  input src_send;
  output src_rcv;
  input dest_clk;
  output [47:0]dest_out;
  output dest_req;
  input dest_ack;

  wire dest_clk;
  (* DIRECT_ENABLE *) wire dest_hsdata_en;
  (* RTL_KEEP = "true" *) (* xpm_cdc = "HANDSHAKE" *) wire [47:0]dest_hsdata_ff;
  wire dest_req;
  wire dest_req_ff;
  wire dest_req_nxt;
  wire p_0_in;
  wire src_clk;
  wire [47:0]src_hsdata_ff;
  wire [47:0]src_in;
  wire src_rcv;
  wire src_send;
  wire src_sendd_ff;

  assign dest_out[47:0] = dest_hsdata_ff;
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
  FDRE \dest_hsdata_ff_reg[10] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[10]),
        .Q(dest_hsdata_ff[10]),
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
  FDRE \dest_hsdata_ff_reg[12] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[12]),
        .Q(dest_hsdata_ff[12]),
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
  FDRE \dest_hsdata_ff_reg[14] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[14]),
        .Q(dest_hsdata_ff[14]),
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
  FDRE \dest_hsdata_ff_reg[16] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[16]),
        .Q(dest_hsdata_ff[16]),
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
  FDRE \dest_hsdata_ff_reg[18] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[18]),
        .Q(dest_hsdata_ff[18]),
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
  FDRE \dest_hsdata_ff_reg[20] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[20]),
        .Q(dest_hsdata_ff[20]),
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
  FDRE \dest_hsdata_ff_reg[4] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[4]),
        .Q(dest_hsdata_ff[4]),
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
  FDRE \dest_hsdata_ff_reg[6] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[6]),
        .Q(dest_hsdata_ff[6]),
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
  FDRE \dest_hsdata_ff_reg[8] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[8]),
        .Q(dest_hsdata_ff[8]),
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
    \src_hsdata_ff[47]_i_1 
       (.I0(src_sendd_ff),
        .O(p_0_in));
  FDRE \src_hsdata_ff_reg[0] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[0]),
        .Q(src_hsdata_ff[0]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[10] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[10]),
        .Q(src_hsdata_ff[10]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[11] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[11]),
        .Q(src_hsdata_ff[11]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[12] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[12]),
        .Q(src_hsdata_ff[12]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[13] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[13]),
        .Q(src_hsdata_ff[13]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[14] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[14]),
        .Q(src_hsdata_ff[14]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[15] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[15]),
        .Q(src_hsdata_ff[15]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[16] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[16]),
        .Q(src_hsdata_ff[16]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[17] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[17]),
        .Q(src_hsdata_ff[17]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[18] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[18]),
        .Q(src_hsdata_ff[18]),
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
  FDRE \src_hsdata_ff_reg[20] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[20]),
        .Q(src_hsdata_ff[20]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[21] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[21]),
        .Q(src_hsdata_ff[21]),
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
  FDRE \src_hsdata_ff_reg[4] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[4]),
        .Q(src_hsdata_ff[4]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[5] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[5]),
        .Q(src_hsdata_ff[5]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[6] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[6]),
        .Q(src_hsdata_ff[6]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[7] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[7]),
        .Q(src_hsdata_ff[7]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[8] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[8]),
        .Q(src_hsdata_ff[8]),
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
  icyradio_axi_i2s_0_xpm_cdc_single__parameterized0__3 xpm_cdc_single_dest2src_inst
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
  icyradio_axi_i2s_0_xpm_cdc_single xpm_cdc_single_src2dest_inst
       (.dest_clk(dest_clk),
        .dest_out(dest_req_nxt),
        .src_clk(1'b0),
        .src_in(src_sendd_ff));
endmodule

(* DEST_EXT_HSK = "0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "1" *) 
(* ORIG_REF_NAME = "xpm_cdc_handshake" *) (* SIM_ASSERT_CHK = "1" *) (* SRC_SYNC_FF = "2" *) 
(* VERSION = "0" *) (* WIDTH = "2" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "HANDSHAKE" *) 
module icyradio_axi_i2s_0_xpm_cdc_handshake__parameterized0
   (src_clk,
    src_in,
    src_send,
    src_rcv,
    dest_clk,
    dest_out,
    dest_req,
    dest_ack);
  input src_clk;
  input [1:0]src_in;
  input src_send;
  output src_rcv;
  input dest_clk;
  output [1:0]dest_out;
  output dest_req;
  input dest_ack;

  wire dest_clk;
  (* DIRECT_ENABLE *) wire dest_hsdata_en;
  (* RTL_KEEP = "true" *) (* xpm_cdc = "HANDSHAKE" *) wire [1:0]dest_hsdata_ff;
  wire dest_req;
  wire dest_req_ff;
  wire dest_req_nxt;
  wire src_clk;
  wire [1:0]src_hsdata_ff;
  wire \src_hsdata_ff[0]_i_1_n_0 ;
  wire \src_hsdata_ff[1]_i_1_n_0 ;
  wire [1:0]src_in;
  wire src_rcv;
  wire src_send;
  wire src_sendd_ff;

  assign dest_out[1:0] = dest_hsdata_ff;
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
  FDRE \dest_hsdata_ff_reg[1] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[1]),
        .Q(dest_hsdata_ff[1]),
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
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \src_hsdata_ff[0]_i_1 
       (.I0(src_in[0]),
        .I1(src_sendd_ff),
        .I2(src_hsdata_ff[0]),
        .O(\src_hsdata_ff[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \src_hsdata_ff[1]_i_1 
       (.I0(src_in[1]),
        .I1(src_sendd_ff),
        .I2(src_hsdata_ff[1]),
        .O(\src_hsdata_ff[1]_i_1_n_0 ));
  FDRE \src_hsdata_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(\src_hsdata_ff[0]_i_1_n_0 ),
        .Q(src_hsdata_ff[0]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(\src_hsdata_ff[1]_i_1_n_0 ),
        .Q(src_hsdata_ff[1]),
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
  icyradio_axi_i2s_0_xpm_cdc_single__parameterized0 xpm_cdc_single_dest2src_inst
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
  icyradio_axi_i2s_0_xpm_cdc_single__parameterized0__4 xpm_cdc_single_src2dest_inst
       (.dest_clk(dest_clk),
        .dest_out(dest_req_nxt),
        .src_clk(1'b0),
        .src_in(src_sendd_ff));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module icyradio_axi_i2s_0_xpm_cdc_single
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
module icyradio_axi_i2s_0_xpm_cdc_single__parameterized0
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
module icyradio_axi_i2s_0_xpm_cdc_single__parameterized0__3
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
module icyradio_axi_i2s_0_xpm_cdc_single__parameterized0__4
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
