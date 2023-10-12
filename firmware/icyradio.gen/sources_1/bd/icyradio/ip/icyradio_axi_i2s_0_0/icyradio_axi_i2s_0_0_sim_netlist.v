// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Tue Oct 10 22:25:32 2023
// Host        : xubuntu-dev running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/joao/icyradio/firmware/icyradio.gen/sources_1/bd/icyradio/ip/icyradio_axi_i2s_0_0/icyradio_axi_i2s_0_0_sim_netlist.v
// Design      : icyradio_axi_i2s_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "icyradio_axi_i2s_0_0,axi_i2s,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "axi_i2s,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module icyradio_axi_i2s_0_0
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF s_axi:m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 49152000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN icyradio_FPGA_CLK1, INSERT_VIP 0" *) input aclk;
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 49152000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN icyradio_FPGA_CLK1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_rready;
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
  wire [31:0]m_axis_tdata;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [4:0]s_axi_araddr;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [4:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [20:0]\^s_axi_rdata ;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [31:0]s_axis_tdata;
  wire s_axis_tready;
  wire s_axis_tvalid;

  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
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
  icyradio_axi_i2s_0_0_axi_i2s inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .i2s_bclk_reg_0(i2s_bclk),
        .i2s_lrclk(i2s_lrclk),
        .i2s_mclk(i2s_mclk),
        .i2s_sdata_in(i2s_sdata_in),
        .i2s_sdata_out(i2s_sdata_out),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid_reg_0(m_axis_tvalid),
        .s_axi_araddr(s_axi_araddr[4:2]),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[4:2]),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata({\^s_axi_rdata [20],\^s_axi_rdata [18:0]}),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata({s_axi_wdata[20],s_axi_wdata[18:0]}),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb[2:0]),
        .s_axi_wvalid(s_axi_wvalid),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tready_reg_0(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "axi_i2s" *) 
module icyradio_axi_i2s_0_0_axi_i2s
   (s_axi_wready,
    s_axi_awready,
    i2s_bclk_reg_0,
    i2s_mclk,
    s_axi_arready,
    s_axi_rdata,
    m_axis_tdata,
    m_axis_tvalid_reg_0,
    i2s_lrclk,
    s_axis_tready_reg_0,
    s_axi_rvalid,
    s_axi_bvalid,
    i2s_sdata_out,
    s_axi_awvalid,
    s_axi_wvalid,
    aclk,
    s_axi_awaddr,
    s_axi_wdata,
    s_axi_araddr,
    s_axi_arvalid,
    i2s_sdata_in,
    s_axi_wstrb,
    m_axis_tready,
    s_axis_tvalid,
    s_axis_tdata,
    aresetn,
    s_axi_bready,
    s_axi_rready);
  output s_axi_wready;
  output s_axi_awready;
  output i2s_bclk_reg_0;
  output i2s_mclk;
  output s_axi_arready;
  output [19:0]s_axi_rdata;
  output [31:0]m_axis_tdata;
  output m_axis_tvalid_reg_0;
  output i2s_lrclk;
  output s_axis_tready_reg_0;
  output s_axi_rvalid;
  output s_axi_bvalid;
  output i2s_sdata_out;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input aclk;
  input [2:0]s_axi_awaddr;
  input [19:0]s_axi_wdata;
  input [2:0]s_axi_araddr;
  input s_axi_arvalid;
  input i2s_sdata_in;
  input [2:0]s_axi_wstrb;
  input m_axis_tready;
  input s_axis_tvalid;
  input [31:0]s_axis_tdata;
  input aresetn;
  input s_axi_bready;
  input s_axi_rready;

  wire \FSM_sequential_i2s_fsm_state[0]_i_1_n_0 ;
  wire \FSM_sequential_i2s_fsm_state[1]_i_1_n_0 ;
  wire \FSM_sequential_i2s_fsm_state[1]_i_2_n_0 ;
  wire \FSM_sequential_i2s_fsm_state[1]_i_3_n_0 ;
  wire \FSM_sequential_i2s_fsm_state[1]_i_4_n_0 ;
  wire aclk;
  wire aresetn;
  wire [7:0]i2s_bclk_div;
  wire i2s_bclk_div_4;
  wire \i2s_bclk_div_cnt[7]_i_1_n_0 ;
  wire \i2s_bclk_div_cnt[7]_i_3_n_0 ;
  wire [7:0]i2s_bclk_div_cnt_reg;
  wire i2s_bclk_i_1_n_0;
  wire i2s_bclk_reg_0;
  wire i2s_bclk_toggle;
  wire [4:0]i2s_bit_cnt;
  wire \i2s_bit_cnt[4]_i_1_n_0 ;
  wire \i2s_bit_cnt[4]_i_4_n_0 ;
  wire \i2s_bit_cnt_reg_n_0_[0] ;
  wire \i2s_bit_cnt_reg_n_0_[1] ;
  wire \i2s_bit_cnt_reg_n_0_[2] ;
  wire \i2s_bit_cnt_reg_n_0_[3] ;
  wire \i2s_bit_cnt_reg_n_0_[4] ;
  wire i2s_chan_bit_sz__1;
  wire i2s_chan_bit_sz_i_1_n_0;
  wire i2s_chan_bit_sz_reg_n_0;
  wire i2s_chan_cnt0__3;
  wire \i2s_chan_cnt[0]_i_1_n_0 ;
  wire \i2s_chan_cnt[1]_i_1_n_0 ;
  wire \i2s_chan_cnt[2]_i_1_n_0 ;
  wire \i2s_chan_cnt[2]_i_2_n_0 ;
  wire \i2s_chan_cnt[2]_i_3_n_0 ;
  wire \i2s_chan_cnt_reg_n_0_[0] ;
  wire \i2s_chan_cnt_reg_n_0_[1] ;
  wire \i2s_chan_cnt_reg_n_0_[2] ;
  wire i2s_chan_en;
  wire \i2s_chan_en[7]_i_2_n_0 ;
  wire \i2s_chan_en_reg_n_0_[0] ;
  wire \i2s_chan_en_reg_n_0_[1] ;
  wire \i2s_chan_en_reg_n_0_[2] ;
  wire \i2s_chan_en_reg_n_0_[3] ;
  wire \i2s_chan_en_reg_n_0_[4] ;
  wire \i2s_chan_en_reg_n_0_[5] ;
  wire \i2s_chan_en_reg_n_0_[6] ;
  wire \i2s_chan_en_reg_n_0_[7] ;
  wire [2:0]i2s_chan_max;
  wire \i2s_chan_max[0]_i_1_n_0 ;
  wire \i2s_chan_max[1]_i_1_n_0 ;
  wire \i2s_chan_max[2]_i_1_n_0 ;
  wire i2s_chan_max_2;
  wire i2s_clk_div_en_i_1_n_0;
  wire i2s_clk_div_en_i_2_n_0;
  wire i2s_clk_div_en_reg_n_0;
  wire i2s_en;
  wire i2s_en17_out;
  wire i2s_en_i_1_n_0;
  wire [1:0]i2s_fsm_state__0;
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
  wire i2s_mclk_div_3;
  wire \i2s_mclk_div_cnt[7]_i_1_n_0 ;
  wire \i2s_mclk_div_cnt[7]_i_3_n_0 ;
  wire [7:0]i2s_mclk_div_cnt_reg;
  wire i2s_mclk_i_1_n_0;
  wire i2s_mclk_i_2_n_0;
  wire i2s_mclk_i_3_n_0;
  wire i2s_mclk_i_4_n_0;
  wire i2s_sdata_in;
  wire [30:0]i2s_sdata_in_sr;
  wire \i2s_sdata_in_sr[30]_i_1_n_0 ;
  wire [5:0]i2s_sdata_in_sr_bit_cnt;
  wire \i2s_sdata_in_sr_bit_cnt[5]_i_1_n_0 ;
  wire \i2s_sdata_in_sr_bit_cnt[5]_i_3_n_0 ;
  wire \i2s_sdata_in_sr_bit_cnt[5]_i_4_n_0 ;
  wire \i2s_sdata_in_sr_bit_cnt_reg_n_0_[0] ;
  wire \i2s_sdata_in_sr_bit_cnt_reg_n_0_[1] ;
  wire \i2s_sdata_in_sr_bit_cnt_reg_n_0_[2] ;
  wire \i2s_sdata_in_sr_bit_cnt_reg_n_0_[3] ;
  wire \i2s_sdata_in_sr_bit_cnt_reg_n_0_[4] ;
  wire i2s_sdata_out;
  wire i2s_sdata_out_i_1_n_0;
  wire i2s_sdata_out_i_2_n_0;
  wire [31:0]i2s_sdata_out_sr;
  wire [5:0]i2s_sdata_out_sr_bit_cnt;
  wire \i2s_sdata_out_sr_bit_cnt[4]_i_2_n_0 ;
  wire \i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ;
  wire \i2s_sdata_out_sr_bit_cnt[5]_i_6_n_0 ;
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
  wire [31:0]m_axis_tdata;
  wire \m_axis_tdata[31]_i_1_n_0 ;
  wire \m_axis_tdata[31]_i_3_n_0 ;
  wire \m_axis_tdata[31]_i_4_n_0 ;
  wire \m_axis_tdata[31]_i_5_n_0 ;
  wire \m_axis_tdata[31]_i_6_n_0 ;
  wire \m_axis_tdata[31]_i_7_n_0 ;
  wire \m_axis_tdata[31]_i_8_n_0 ;
  wire m_axis_tready;
  wire m_axis_tvalid0__3;
  wire m_axis_tvalid12_in;
  wire m_axis_tvalid131_out__0;
  wire m_axis_tvalid1__6;
  wire m_axis_tvalid_i_2_n_0;
  wire m_axis_tvalid_i_4_n_0;
  wire m_axis_tvalid_reg_0;
  wire p_0_in;
  wire p_0_in_1;
  wire [7:0]p_0_in__0;
  wire [7:0]p_0_in__1;
  wire [15:7]p_1_in;
  wire [31:1]p_1_in__0;
  wire [2:0]p_1_in__0_0;
  wire p_33_in;
  wire [2:0]s_axi_araddr;
  wire \s_axi_araddr_q[2]_i_1_n_0 ;
  wire \s_axi_araddr_q[3]_i_1_n_0 ;
  wire \s_axi_araddr_q[4]_i_1_n_0 ;
  wire s_axi_arready;
  wire s_axi_arready0;
  wire s_axi_arvalid;
  wire s_axi_aw_en_i_1_n_0;
  wire s_axi_aw_en_reg_n_0;
  wire [2:0]s_axi_awaddr;
  wire \s_axi_awaddr_q[2]_i_1_n_0 ;
  wire \s_axi_awaddr_q[3]_i_1_n_0 ;
  wire \s_axi_awaddr_q[4]_i_1_n_0 ;
  wire s_axi_awready;
  wire s_axi_awready0;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire s_axi_bvalid_i_1_n_0;
  wire [19:0]s_axi_rdata;
  wire \s_axi_rdata[0]_i_2_n_0 ;
  wire \s_axi_rdata[1]_i_2_n_0 ;
  wire [20:0]s_axi_rdata_5;
  wire s_axi_reg_rden__0;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire s_axi_rvalid_i_1_n_0;
  wire [19:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wready_i_1_n_0;
  wire [2:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [31:0]s_axis_tdata;
  wire s_axis_tready0__0;
  wire s_axis_tready127_out__0;
  wire s_axis_tready1__0;
  wire s_axis_tready9_out__2;
  wire s_axis_tready_i_1_n_0;
  wire s_axis_tready_i_4_n_0;
  wire s_axis_tready_reg_0;
  wire s_axis_tvalid;
  wire [2:0]sel0;
  wire [3:3]\NLW_i2s_lrclk_div_cnt_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:0]NLW_i2s_lrclk_toggle0_carry_O_UNCONNECTED;
  wire [3:2]NLW_i2s_lrclk_toggle0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_i2s_lrclk_toggle0_carry__0_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h0111FFEE011100EE)) 
    \FSM_sequential_i2s_fsm_state[0]_i_1 
       (.I0(\FSM_sequential_i2s_fsm_state[1]_i_2_n_0 ),
        .I1(\FSM_sequential_i2s_fsm_state[1]_i_3_n_0 ),
        .I2(\FSM_sequential_i2s_fsm_state[1]_i_4_n_0 ),
        .I3(i2s_fsm_state__0[1]),
        .I4(i2s_fsm_state__0[0]),
        .I5(\m_axis_tdata[31]_i_3_n_0 ),
        .O(\FSM_sequential_i2s_fsm_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h01EEFF0001EE1100)) 
    \FSM_sequential_i2s_fsm_state[1]_i_1 
       (.I0(\FSM_sequential_i2s_fsm_state[1]_i_2_n_0 ),
        .I1(\FSM_sequential_i2s_fsm_state[1]_i_3_n_0 ),
        .I2(\FSM_sequential_i2s_fsm_state[1]_i_4_n_0 ),
        .I3(i2s_fsm_state__0[1]),
        .I4(i2s_fsm_state__0[0]),
        .I5(\m_axis_tdata[31]_i_3_n_0 ),
        .O(\FSM_sequential_i2s_fsm_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \FSM_sequential_i2s_fsm_state[1]_i_2 
       (.I0(p_33_in),
        .I1(i2s_clk_div_en_reg_n_0),
        .I2(i2s_lrclk_toggle0),
        .I3(i2s_lrclk),
        .I4(i2s_fsm_state__0[1]),
        .I5(i2s_fsm_state__0[0]),
        .O(\FSM_sequential_i2s_fsm_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000F080)) 
    \FSM_sequential_i2s_fsm_state[1]_i_3 
       (.I0(s_axis_tready_reg_0),
        .I1(s_axis_tvalid),
        .I2(m_axis_tready),
        .I3(s_axis_tready1__0),
        .I4(i2s_fsm_state__0[1]),
        .I5(i2s_fsm_state__0[0]),
        .O(\FSM_sequential_i2s_fsm_state[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h08C80000)) 
    \FSM_sequential_i2s_fsm_state[1]_i_4 
       (.I0(p_0_in_1),
        .I1(i2s_bclk_toggle),
        .I2(i2s_bclk_reg_0),
        .I3(s_axis_tready1__0),
        .I4(m_axis_tvalid1__6),
        .O(\FSM_sequential_i2s_fsm_state[1]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "I2S_FSM_STATE_WAIT_LRCLK_SYNC:01,I2S_FSM_STATE_WAIT_BCLK_SYNC:10,I2S_FSM_STATE_RD_FIRST:00,I2S_FSM_STATE_ACTIVE:11" *) 
  FDRE \FSM_sequential_i2s_fsm_state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_sequential_i2s_fsm_state[0]_i_1_n_0 ),
        .Q(i2s_fsm_state__0[0]),
        .R(m_axis_tvalid12_in));
  (* FSM_ENCODED_STATES = "I2S_FSM_STATE_WAIT_LRCLK_SYNC:01,I2S_FSM_STATE_WAIT_BCLK_SYNC:10,I2S_FSM_STATE_RD_FIRST:00,I2S_FSM_STATE_ACTIVE:11" *) 
  FDRE \FSM_sequential_i2s_fsm_state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_sequential_i2s_fsm_state[1]_i_1_n_0 ),
        .Q(i2s_fsm_state__0[1]),
        .R(m_axis_tvalid12_in));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \i2s_bclk_div[7]_i_1 
       (.I0(\i2s_chan_en[7]_i_2_n_0 ),
        .I1(p_1_in__0_0[1]),
        .I2(p_1_in__0_0[0]),
        .I3(p_1_in__0_0[2]),
        .I4(i2s_clk_div_en_reg_n_0),
        .I5(s_axi_wstrb[0]),
        .O(i2s_bclk_div_4));
  LUT1 #(
    .INIT(2'h1)) 
    \i2s_bclk_div_cnt[0]_i_1 
       (.I0(i2s_bclk_div_cnt_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i2s_bclk_div_cnt[1]_i_1 
       (.I0(i2s_bclk_div_cnt_reg[0]),
        .I1(i2s_bclk_div_cnt_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \i2s_bclk_div_cnt[2]_i_1 
       (.I0(i2s_bclk_div_cnt_reg[0]),
        .I1(i2s_bclk_div_cnt_reg[1]),
        .I2(i2s_bclk_div_cnt_reg[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \i2s_bclk_div_cnt[3]_i_1 
       (.I0(i2s_bclk_div_cnt_reg[1]),
        .I1(i2s_bclk_div_cnt_reg[0]),
        .I2(i2s_bclk_div_cnt_reg[2]),
        .I3(i2s_bclk_div_cnt_reg[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
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
        .I1(i2s_clk_div_en_reg_n_0),
        .O(\i2s_bclk_div_cnt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
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
       (.C(aclk),
        .CE(i2s_clk_div_en_reg_n_0),
        .D(p_0_in__0[0]),
        .Q(i2s_bclk_div_cnt_reg[0]),
        .R(\i2s_bclk_div_cnt[7]_i_1_n_0 ));
  FDRE \i2s_bclk_div_cnt_reg[1] 
       (.C(aclk),
        .CE(i2s_clk_div_en_reg_n_0),
        .D(p_0_in__0[1]),
        .Q(i2s_bclk_div_cnt_reg[1]),
        .R(\i2s_bclk_div_cnt[7]_i_1_n_0 ));
  FDRE \i2s_bclk_div_cnt_reg[2] 
       (.C(aclk),
        .CE(i2s_clk_div_en_reg_n_0),
        .D(p_0_in__0[2]),
        .Q(i2s_bclk_div_cnt_reg[2]),
        .R(\i2s_bclk_div_cnt[7]_i_1_n_0 ));
  FDRE \i2s_bclk_div_cnt_reg[3] 
       (.C(aclk),
        .CE(i2s_clk_div_en_reg_n_0),
        .D(p_0_in__0[3]),
        .Q(i2s_bclk_div_cnt_reg[3]),
        .R(\i2s_bclk_div_cnt[7]_i_1_n_0 ));
  FDRE \i2s_bclk_div_cnt_reg[4] 
       (.C(aclk),
        .CE(i2s_clk_div_en_reg_n_0),
        .D(p_0_in__0[4]),
        .Q(i2s_bclk_div_cnt_reg[4]),
        .R(\i2s_bclk_div_cnt[7]_i_1_n_0 ));
  FDRE \i2s_bclk_div_cnt_reg[5] 
       (.C(aclk),
        .CE(i2s_clk_div_en_reg_n_0),
        .D(p_0_in__0[5]),
        .Q(i2s_bclk_div_cnt_reg[5]),
        .R(\i2s_bclk_div_cnt[7]_i_1_n_0 ));
  FDRE \i2s_bclk_div_cnt_reg[6] 
       (.C(aclk),
        .CE(i2s_clk_div_en_reg_n_0),
        .D(p_0_in__0[6]),
        .Q(i2s_bclk_div_cnt_reg[6]),
        .R(\i2s_bclk_div_cnt[7]_i_1_n_0 ));
  FDRE \i2s_bclk_div_cnt_reg[7] 
       (.C(aclk),
        .CE(i2s_clk_div_en_reg_n_0),
        .D(p_0_in__0[7]),
        .Q(i2s_bclk_div_cnt_reg[7]),
        .R(\i2s_bclk_div_cnt[7]_i_1_n_0 ));
  FDRE \i2s_bclk_div_reg[0] 
       (.C(aclk),
        .CE(i2s_bclk_div_4),
        .D(s_axi_wdata[0]),
        .Q(i2s_bclk_div[0]),
        .R(p_0_in));
  FDRE \i2s_bclk_div_reg[1] 
       (.C(aclk),
        .CE(i2s_bclk_div_4),
        .D(s_axi_wdata[1]),
        .Q(i2s_bclk_div[1]),
        .R(p_0_in));
  FDRE \i2s_bclk_div_reg[2] 
       (.C(aclk),
        .CE(i2s_bclk_div_4),
        .D(s_axi_wdata[2]),
        .Q(i2s_bclk_div[2]),
        .R(p_0_in));
  FDRE \i2s_bclk_div_reg[3] 
       (.C(aclk),
        .CE(i2s_bclk_div_4),
        .D(s_axi_wdata[3]),
        .Q(i2s_bclk_div[3]),
        .R(p_0_in));
  FDRE \i2s_bclk_div_reg[4] 
       (.C(aclk),
        .CE(i2s_bclk_div_4),
        .D(s_axi_wdata[4]),
        .Q(i2s_bclk_div[4]),
        .R(p_0_in));
  FDRE \i2s_bclk_div_reg[5] 
       (.C(aclk),
        .CE(i2s_bclk_div_4),
        .D(s_axi_wdata[5]),
        .Q(i2s_bclk_div[5]),
        .R(p_0_in));
  FDRE \i2s_bclk_div_reg[6] 
       (.C(aclk),
        .CE(i2s_bclk_div_4),
        .D(s_axi_wdata[6]),
        .Q(i2s_bclk_div[6]),
        .R(p_0_in));
  FDRE \i2s_bclk_div_reg[7] 
       (.C(aclk),
        .CE(i2s_bclk_div_4),
        .D(s_axi_wdata[7]),
        .Q(i2s_bclk_div[7]),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h60)) 
    i2s_bclk_i_1
       (.I0(i2s_bclk_reg_0),
        .I1(i2s_bclk_toggle),
        .I2(i2s_clk_div_en_reg_n_0),
        .O(i2s_bclk_i_1_n_0));
  LUT4 #(
    .INIT(16'h0800)) 
    i2s_bclk_i_2
       (.I0(\m_axis_tdata[31]_i_8_n_0 ),
        .I1(\m_axis_tdata[31]_i_7_n_0 ),
        .I2(\m_axis_tdata[31]_i_6_n_0 ),
        .I3(i2s_clk_div_en_reg_n_0),
        .O(i2s_bclk_toggle));
  FDRE i2s_bclk_reg
       (.C(aclk),
        .CE(1'b1),
        .D(i2s_bclk_i_1_n_0),
        .Q(i2s_bclk_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \i2s_bit_cnt[0]_i_1 
       (.I0(i2s_fsm_state__0[1]),
        .I1(\i2s_bit_cnt_reg_n_0_[0] ),
        .I2(i2s_chan_cnt0__3),
        .O(i2s_bit_cnt[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0220)) 
    \i2s_bit_cnt[1]_i_1 
       (.I0(i2s_fsm_state__0[1]),
        .I1(i2s_chan_cnt0__3),
        .I2(\i2s_bit_cnt_reg_n_0_[0] ),
        .I3(\i2s_bit_cnt_reg_n_0_[1] ),
        .O(i2s_bit_cnt[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h02222000)) 
    \i2s_bit_cnt[2]_i_1 
       (.I0(i2s_fsm_state__0[1]),
        .I1(i2s_chan_cnt0__3),
        .I2(\i2s_bit_cnt_reg_n_0_[1] ),
        .I3(\i2s_bit_cnt_reg_n_0_[0] ),
        .I4(\i2s_bit_cnt_reg_n_0_[2] ),
        .O(i2s_bit_cnt[2]));
  LUT6 #(
    .INIT(64'h0222222220000000)) 
    \i2s_bit_cnt[3]_i_1 
       (.I0(i2s_fsm_state__0[1]),
        .I1(i2s_chan_cnt0__3),
        .I2(\i2s_bit_cnt_reg_n_0_[0] ),
        .I3(\i2s_bit_cnt_reg_n_0_[1] ),
        .I4(\i2s_bit_cnt_reg_n_0_[2] ),
        .I5(\i2s_bit_cnt_reg_n_0_[3] ),
        .O(i2s_bit_cnt[3]));
  LUT3 #(
    .INIT(8'h83)) 
    \i2s_bit_cnt[4]_i_1 
       (.I0(\m_axis_tdata[31]_i_3_n_0 ),
        .I1(i2s_fsm_state__0[0]),
        .I2(i2s_fsm_state__0[1]),
        .O(\i2s_bit_cnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2202222200200000)) 
    \i2s_bit_cnt[4]_i_2 
       (.I0(i2s_fsm_state__0[1]),
        .I1(i2s_chan_cnt0__3),
        .I2(\i2s_bit_cnt_reg_n_0_[2] ),
        .I3(\i2s_bit_cnt[4]_i_4_n_0 ),
        .I4(\i2s_bit_cnt_reg_n_0_[3] ),
        .I5(\i2s_bit_cnt_reg_n_0_[4] ),
        .O(i2s_bit_cnt[4]));
  LUT6 #(
    .INIT(64'hC040000000000000)) 
    \i2s_bit_cnt[4]_i_3 
       (.I0(i2s_chan_bit_sz_reg_n_0),
        .I1(\i2s_bit_cnt_reg_n_0_[0] ),
        .I2(\i2s_bit_cnt_reg_n_0_[3] ),
        .I3(\i2s_bit_cnt_reg_n_0_[4] ),
        .I4(\i2s_bit_cnt_reg_n_0_[1] ),
        .I5(\i2s_bit_cnt_reg_n_0_[2] ),
        .O(i2s_chan_cnt0__3));
  LUT2 #(
    .INIT(4'h7)) 
    \i2s_bit_cnt[4]_i_4 
       (.I0(\i2s_bit_cnt_reg_n_0_[0] ),
        .I1(\i2s_bit_cnt_reg_n_0_[1] ),
        .O(\i2s_bit_cnt[4]_i_4_n_0 ));
  FDRE \i2s_bit_cnt_reg[0] 
       (.C(aclk),
        .CE(\i2s_bit_cnt[4]_i_1_n_0 ),
        .D(i2s_bit_cnt[0]),
        .Q(\i2s_bit_cnt_reg_n_0_[0] ),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_bit_cnt_reg[1] 
       (.C(aclk),
        .CE(\i2s_bit_cnt[4]_i_1_n_0 ),
        .D(i2s_bit_cnt[1]),
        .Q(\i2s_bit_cnt_reg_n_0_[1] ),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_bit_cnt_reg[2] 
       (.C(aclk),
        .CE(\i2s_bit_cnt[4]_i_1_n_0 ),
        .D(i2s_bit_cnt[2]),
        .Q(\i2s_bit_cnt_reg_n_0_[2] ),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_bit_cnt_reg[3] 
       (.C(aclk),
        .CE(\i2s_bit_cnt[4]_i_1_n_0 ),
        .D(i2s_bit_cnt[3]),
        .Q(\i2s_bit_cnt_reg_n_0_[3] ),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_bit_cnt_reg[4] 
       (.C(aclk),
        .CE(\i2s_bit_cnt[4]_i_1_n_0 ),
        .D(i2s_bit_cnt[4]),
        .Q(\i2s_bit_cnt_reg_n_0_[4] ),
        .R(m_axis_tvalid12_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    i2s_chan_bit_sz_i_1
       (.I0(s_axi_wdata[19]),
        .I1(i2s_chan_bit_sz__1),
        .I2(\i2s_chan_en[7]_i_2_n_0 ),
        .I3(i2s_chan_bit_sz_reg_n_0),
        .O(i2s_chan_bit_sz_i_1_n_0));
  LUT5 #(
    .INIT(32'h00001000)) 
    i2s_chan_bit_sz_i_2
       (.I0(p_1_in__0_0[1]),
        .I1(p_1_in__0_0[2]),
        .I2(p_1_in__0_0[0]),
        .I3(s_axi_wstrb[2]),
        .I4(i2s_en),
        .O(i2s_chan_bit_sz__1));
  FDRE i2s_chan_bit_sz_reg
       (.C(aclk),
        .CE(1'b1),
        .D(i2s_chan_bit_sz_i_1_n_0),
        .Q(i2s_chan_bit_sz_reg_n_0),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0F20)) 
    \i2s_chan_cnt[0]_i_1 
       (.I0(i2s_fsm_state__0[1]),
        .I1(\i2s_chan_cnt[2]_i_2_n_0 ),
        .I2(\i2s_chan_cnt[2]_i_3_n_0 ),
        .I3(\i2s_chan_cnt_reg_n_0_[0] ),
        .O(\i2s_chan_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h02FF2000)) 
    \i2s_chan_cnt[1]_i_1 
       (.I0(i2s_fsm_state__0[1]),
        .I1(\i2s_chan_cnt[2]_i_2_n_0 ),
        .I2(\i2s_chan_cnt_reg_n_0_[0] ),
        .I3(\i2s_chan_cnt[2]_i_3_n_0 ),
        .I4(\i2s_chan_cnt_reg_n_0_[1] ),
        .O(\i2s_chan_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0222FFFF20000000)) 
    \i2s_chan_cnt[2]_i_1 
       (.I0(i2s_fsm_state__0[1]),
        .I1(\i2s_chan_cnt[2]_i_2_n_0 ),
        .I2(\i2s_chan_cnt_reg_n_0_[0] ),
        .I3(\i2s_chan_cnt_reg_n_0_[1] ),
        .I4(\i2s_chan_cnt[2]_i_3_n_0 ),
        .I5(\i2s_chan_cnt_reg_n_0_[2] ),
        .O(\i2s_chan_cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \i2s_chan_cnt[2]_i_2 
       (.I0(\i2s_chan_cnt_reg_n_0_[0] ),
        .I1(i2s_chan_max[0]),
        .I2(i2s_chan_max[2]),
        .I3(\i2s_chan_cnt_reg_n_0_[2] ),
        .I4(i2s_chan_max[1]),
        .I5(\i2s_chan_cnt_reg_n_0_[1] ),
        .O(\i2s_chan_cnt[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h800F)) 
    \i2s_chan_cnt[2]_i_3 
       (.I0(i2s_chan_cnt0__3),
        .I1(\m_axis_tdata[31]_i_3_n_0 ),
        .I2(i2s_fsm_state__0[0]),
        .I3(i2s_fsm_state__0[1]),
        .O(\i2s_chan_cnt[2]_i_3_n_0 ));
  FDRE \i2s_chan_cnt_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\i2s_chan_cnt[0]_i_1_n_0 ),
        .Q(\i2s_chan_cnt_reg_n_0_[0] ),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_chan_cnt_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\i2s_chan_cnt[1]_i_1_n_0 ),
        .Q(\i2s_chan_cnt_reg_n_0_[1] ),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_chan_cnt_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\i2s_chan_cnt[2]_i_1_n_0 ),
        .Q(\i2s_chan_cnt_reg_n_0_[2] ),
        .R(m_axis_tvalid12_in));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \i2s_chan_en[7]_i_1 
       (.I0(\i2s_chan_en[7]_i_2_n_0 ),
        .I1(i2s_en),
        .I2(s_axi_wstrb[1]),
        .I3(p_1_in__0_0[0]),
        .I4(p_1_in__0_0[2]),
        .I5(p_1_in__0_0[1]),
        .O(i2s_chan_en));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \i2s_chan_en[7]_i_2 
       (.I0(s_axi_wready),
        .I1(s_axi_awready),
        .I2(s_axi_awvalid),
        .I3(s_axi_wvalid),
        .O(\i2s_chan_en[7]_i_2_n_0 ));
  FDRE \i2s_chan_en_reg[0] 
       (.C(aclk),
        .CE(i2s_chan_en),
        .D(s_axi_wdata[8]),
        .Q(\i2s_chan_en_reg_n_0_[0] ),
        .R(p_0_in));
  FDRE \i2s_chan_en_reg[1] 
       (.C(aclk),
        .CE(i2s_chan_en),
        .D(s_axi_wdata[9]),
        .Q(\i2s_chan_en_reg_n_0_[1] ),
        .R(p_0_in));
  FDRE \i2s_chan_en_reg[2] 
       (.C(aclk),
        .CE(i2s_chan_en),
        .D(s_axi_wdata[10]),
        .Q(\i2s_chan_en_reg_n_0_[2] ),
        .R(p_0_in));
  FDRE \i2s_chan_en_reg[3] 
       (.C(aclk),
        .CE(i2s_chan_en),
        .D(s_axi_wdata[11]),
        .Q(\i2s_chan_en_reg_n_0_[3] ),
        .R(p_0_in));
  FDRE \i2s_chan_en_reg[4] 
       (.C(aclk),
        .CE(i2s_chan_en),
        .D(s_axi_wdata[12]),
        .Q(\i2s_chan_en_reg_n_0_[4] ),
        .R(p_0_in));
  FDRE \i2s_chan_en_reg[5] 
       (.C(aclk),
        .CE(i2s_chan_en),
        .D(s_axi_wdata[13]),
        .Q(\i2s_chan_en_reg_n_0_[5] ),
        .R(p_0_in));
  FDRE \i2s_chan_en_reg[6] 
       (.C(aclk),
        .CE(i2s_chan_en),
        .D(s_axi_wdata[14]),
        .Q(\i2s_chan_en_reg_n_0_[6] ),
        .R(p_0_in));
  FDRE \i2s_chan_en_reg[7] 
       (.C(aclk),
        .CE(i2s_chan_en),
        .D(s_axi_wdata[15]),
        .Q(\i2s_chan_en_reg_n_0_[7] ),
        .R(p_0_in));
  LUT3 #(
    .INIT(8'hB8)) 
    \i2s_chan_max[0]_i_1 
       (.I0(s_axi_wdata[16]),
        .I1(i2s_chan_max_2),
        .I2(i2s_chan_max[0]),
        .O(\i2s_chan_max[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \i2s_chan_max[1]_i_1 
       (.I0(s_axi_wdata[17]),
        .I1(i2s_chan_max_2),
        .I2(i2s_chan_max[1]),
        .O(\i2s_chan_max[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \i2s_chan_max[2]_i_1 
       (.I0(s_axi_wdata[18]),
        .I1(i2s_chan_max_2),
        .I2(i2s_chan_max[2]),
        .O(\i2s_chan_max[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \i2s_chan_max[2]_i_2 
       (.I0(\i2s_chan_en[7]_i_2_n_0 ),
        .I1(i2s_en),
        .I2(s_axi_wstrb[2]),
        .I3(p_1_in__0_0[0]),
        .I4(p_1_in__0_0[2]),
        .I5(p_1_in__0_0[1]),
        .O(i2s_chan_max_2));
  FDRE \i2s_chan_max_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\i2s_chan_max[0]_i_1_n_0 ),
        .Q(i2s_chan_max[0]),
        .R(p_0_in));
  FDRE \i2s_chan_max_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\i2s_chan_max[1]_i_1_n_0 ),
        .Q(i2s_chan_max[1]),
        .R(p_0_in));
  FDRE \i2s_chan_max_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\i2s_chan_max[2]_i_1_n_0 ),
        .Q(i2s_chan_max[2]),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    i2s_clk_div_en_i_1
       (.I0(s_axi_wdata[0]),
        .I1(s_axi_wstrb[0]),
        .I2(p_1_in__0_0[0]),
        .I3(i2s_clk_div_en_i_2_n_0),
        .I4(\i2s_chan_en[7]_i_2_n_0 ),
        .I5(i2s_clk_div_en_reg_n_0),
        .O(i2s_clk_div_en_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    i2s_clk_div_en_i_2
       (.I0(p_1_in__0_0[2]),
        .I1(p_1_in__0_0[1]),
        .O(i2s_clk_div_en_i_2_n_0));
  FDRE i2s_clk_div_en_reg
       (.C(aclk),
        .CE(1'b1),
        .D(i2s_clk_div_en_i_1_n_0),
        .Q(i2s_clk_div_en_reg_n_0),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'hA8FFA800)) 
    i2s_en_i_1
       (.I0(s_axi_wdata[1]),
        .I1(s_axi_wdata[0]),
        .I2(i2s_clk_div_en_reg_n_0),
        .I3(i2s_en17_out),
        .I4(i2s_en),
        .O(i2s_en_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00080000)) 
    i2s_en_i_2
       (.I0(s_axi_wstrb[0]),
        .I1(p_1_in__0_0[0]),
        .I2(p_1_in__0_0[2]),
        .I3(p_1_in__0_0[1]),
        .I4(\i2s_chan_en[7]_i_2_n_0 ),
        .O(i2s_en17_out));
  FDRE i2s_en_reg
       (.C(aclk),
        .CE(1'b1),
        .D(i2s_en_i_1_n_0),
        .Q(i2s_en),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    \i2s_lrclk_div[15]_i_1 
       (.I0(\i2s_chan_en[7]_i_2_n_0 ),
        .I1(p_1_in__0_0[1]),
        .I2(p_1_in__0_0[0]),
        .I3(p_1_in__0_0[2]),
        .I4(i2s_clk_div_en_reg_n_0),
        .I5(s_axi_wstrb[1]),
        .O(p_1_in[15]));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    \i2s_lrclk_div[7]_i_1 
       (.I0(\i2s_chan_en[7]_i_2_n_0 ),
        .I1(p_1_in__0_0[1]),
        .I2(p_1_in__0_0[0]),
        .I3(p_1_in__0_0[2]),
        .I4(i2s_clk_div_en_reg_n_0),
        .I5(s_axi_wstrb[0]),
        .O(p_1_in[7]));
  LUT2 #(
    .INIT(4'hB)) 
    \i2s_lrclk_div_cnt[0]_i_1 
       (.I0(i2s_lrclk_toggle0),
        .I1(i2s_clk_div_en_reg_n_0),
        .O(\i2s_lrclk_div_cnt[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \i2s_lrclk_div_cnt[0]_i_3 
       (.I0(i2s_lrclk_div_cnt_reg[0]),
        .O(\i2s_lrclk_div_cnt[0]_i_3_n_0 ));
  FDRE \i2s_lrclk_div_cnt_reg[0] 
       (.C(aclk),
        .CE(i2s_clk_div_en_reg_n_0),
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
       (.C(aclk),
        .CE(i2s_clk_div_en_reg_n_0),
        .D(\i2s_lrclk_div_cnt_reg[8]_i_1_n_5 ),
        .Q(i2s_lrclk_div_cnt_reg[10]),
        .R(\i2s_lrclk_div_cnt[0]_i_1_n_0 ));
  FDRE \i2s_lrclk_div_cnt_reg[11] 
       (.C(aclk),
        .CE(i2s_clk_div_en_reg_n_0),
        .D(\i2s_lrclk_div_cnt_reg[8]_i_1_n_4 ),
        .Q(i2s_lrclk_div_cnt_reg[11]),
        .R(\i2s_lrclk_div_cnt[0]_i_1_n_0 ));
  FDRE \i2s_lrclk_div_cnt_reg[12] 
       (.C(aclk),
        .CE(i2s_clk_div_en_reg_n_0),
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
       (.C(aclk),
        .CE(i2s_clk_div_en_reg_n_0),
        .D(\i2s_lrclk_div_cnt_reg[12]_i_1_n_6 ),
        .Q(i2s_lrclk_div_cnt_reg[13]),
        .R(\i2s_lrclk_div_cnt[0]_i_1_n_0 ));
  FDRE \i2s_lrclk_div_cnt_reg[14] 
       (.C(aclk),
        .CE(i2s_clk_div_en_reg_n_0),
        .D(\i2s_lrclk_div_cnt_reg[12]_i_1_n_5 ),
        .Q(i2s_lrclk_div_cnt_reg[14]),
        .R(\i2s_lrclk_div_cnt[0]_i_1_n_0 ));
  FDRE \i2s_lrclk_div_cnt_reg[15] 
       (.C(aclk),
        .CE(i2s_clk_div_en_reg_n_0),
        .D(\i2s_lrclk_div_cnt_reg[12]_i_1_n_4 ),
        .Q(i2s_lrclk_div_cnt_reg[15]),
        .R(\i2s_lrclk_div_cnt[0]_i_1_n_0 ));
  FDRE \i2s_lrclk_div_cnt_reg[1] 
       (.C(aclk),
        .CE(i2s_clk_div_en_reg_n_0),
        .D(\i2s_lrclk_div_cnt_reg[0]_i_2_n_6 ),
        .Q(i2s_lrclk_div_cnt_reg[1]),
        .R(\i2s_lrclk_div_cnt[0]_i_1_n_0 ));
  FDRE \i2s_lrclk_div_cnt_reg[2] 
       (.C(aclk),
        .CE(i2s_clk_div_en_reg_n_0),
        .D(\i2s_lrclk_div_cnt_reg[0]_i_2_n_5 ),
        .Q(i2s_lrclk_div_cnt_reg[2]),
        .R(\i2s_lrclk_div_cnt[0]_i_1_n_0 ));
  FDRE \i2s_lrclk_div_cnt_reg[3] 
       (.C(aclk),
        .CE(i2s_clk_div_en_reg_n_0),
        .D(\i2s_lrclk_div_cnt_reg[0]_i_2_n_4 ),
        .Q(i2s_lrclk_div_cnt_reg[3]),
        .R(\i2s_lrclk_div_cnt[0]_i_1_n_0 ));
  FDRE \i2s_lrclk_div_cnt_reg[4] 
       (.C(aclk),
        .CE(i2s_clk_div_en_reg_n_0),
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
       (.C(aclk),
        .CE(i2s_clk_div_en_reg_n_0),
        .D(\i2s_lrclk_div_cnt_reg[4]_i_1_n_6 ),
        .Q(i2s_lrclk_div_cnt_reg[5]),
        .R(\i2s_lrclk_div_cnt[0]_i_1_n_0 ));
  FDRE \i2s_lrclk_div_cnt_reg[6] 
       (.C(aclk),
        .CE(i2s_clk_div_en_reg_n_0),
        .D(\i2s_lrclk_div_cnt_reg[4]_i_1_n_5 ),
        .Q(i2s_lrclk_div_cnt_reg[6]),
        .R(\i2s_lrclk_div_cnt[0]_i_1_n_0 ));
  FDRE \i2s_lrclk_div_cnt_reg[7] 
       (.C(aclk),
        .CE(i2s_clk_div_en_reg_n_0),
        .D(\i2s_lrclk_div_cnt_reg[4]_i_1_n_4 ),
        .Q(i2s_lrclk_div_cnt_reg[7]),
        .R(\i2s_lrclk_div_cnt[0]_i_1_n_0 ));
  FDRE \i2s_lrclk_div_cnt_reg[8] 
       (.C(aclk),
        .CE(i2s_clk_div_en_reg_n_0),
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
       (.C(aclk),
        .CE(i2s_clk_div_en_reg_n_0),
        .D(\i2s_lrclk_div_cnt_reg[8]_i_1_n_6 ),
        .Q(i2s_lrclk_div_cnt_reg[9]),
        .R(\i2s_lrclk_div_cnt[0]_i_1_n_0 ));
  FDRE \i2s_lrclk_div_reg[0] 
       (.C(aclk),
        .CE(p_1_in[7]),
        .D(s_axi_wdata[0]),
        .Q(i2s_lrclk_div[0]),
        .R(p_0_in));
  FDRE \i2s_lrclk_div_reg[10] 
       (.C(aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[10]),
        .Q(i2s_lrclk_div[10]),
        .R(p_0_in));
  FDRE \i2s_lrclk_div_reg[11] 
       (.C(aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[11]),
        .Q(i2s_lrclk_div[11]),
        .R(p_0_in));
  FDRE \i2s_lrclk_div_reg[12] 
       (.C(aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[12]),
        .Q(i2s_lrclk_div[12]),
        .R(p_0_in));
  FDRE \i2s_lrclk_div_reg[13] 
       (.C(aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[13]),
        .Q(i2s_lrclk_div[13]),
        .R(p_0_in));
  FDRE \i2s_lrclk_div_reg[14] 
       (.C(aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[14]),
        .Q(i2s_lrclk_div[14]),
        .R(p_0_in));
  FDRE \i2s_lrclk_div_reg[15] 
       (.C(aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[15]),
        .Q(i2s_lrclk_div[15]),
        .R(p_0_in));
  FDRE \i2s_lrclk_div_reg[1] 
       (.C(aclk),
        .CE(p_1_in[7]),
        .D(s_axi_wdata[1]),
        .Q(i2s_lrclk_div[1]),
        .R(p_0_in));
  FDRE \i2s_lrclk_div_reg[2] 
       (.C(aclk),
        .CE(p_1_in[7]),
        .D(s_axi_wdata[2]),
        .Q(i2s_lrclk_div[2]),
        .R(p_0_in));
  FDRE \i2s_lrclk_div_reg[3] 
       (.C(aclk),
        .CE(p_1_in[7]),
        .D(s_axi_wdata[3]),
        .Q(i2s_lrclk_div[3]),
        .R(p_0_in));
  FDRE \i2s_lrclk_div_reg[4] 
       (.C(aclk),
        .CE(p_1_in[7]),
        .D(s_axi_wdata[4]),
        .Q(i2s_lrclk_div[4]),
        .R(p_0_in));
  FDRE \i2s_lrclk_div_reg[5] 
       (.C(aclk),
        .CE(p_1_in[7]),
        .D(s_axi_wdata[5]),
        .Q(i2s_lrclk_div[5]),
        .R(p_0_in));
  FDRE \i2s_lrclk_div_reg[6] 
       (.C(aclk),
        .CE(p_1_in[7]),
        .D(s_axi_wdata[6]),
        .Q(i2s_lrclk_div[6]),
        .R(p_0_in));
  FDRE \i2s_lrclk_div_reg[7] 
       (.C(aclk),
        .CE(p_1_in[7]),
        .D(s_axi_wdata[7]),
        .Q(i2s_lrclk_div[7]),
        .R(p_0_in));
  FDRE \i2s_lrclk_div_reg[8] 
       (.C(aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[8]),
        .Q(i2s_lrclk_div[8]),
        .R(p_0_in));
  FDRE \i2s_lrclk_div_reg[9] 
       (.C(aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[9]),
        .Q(i2s_lrclk_div[9]),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h60)) 
    i2s_lrclk_i_1
       (.I0(i2s_lrclk),
        .I1(i2s_lrclk_toggle0),
        .I2(i2s_clk_div_en_reg_n_0),
        .O(i2s_lrclk_i_1_n_0));
  FDRE i2s_lrclk_reg
       (.C(aclk),
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
       (.I0(i2s_lrclk_div_cnt_reg[12]),
        .I1(i2s_lrclk_div[12]),
        .I2(i2s_lrclk_div[14]),
        .I3(i2s_lrclk_div_cnt_reg[14]),
        .I4(i2s_lrclk_div[13]),
        .I5(i2s_lrclk_div_cnt_reg[13]),
        .O(i2s_lrclk_toggle0_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i2s_lrclk_toggle0_carry_i_1
       (.I0(i2s_lrclk_div_cnt_reg[9]),
        .I1(i2s_lrclk_div[9]),
        .I2(i2s_lrclk_div[11]),
        .I3(i2s_lrclk_div_cnt_reg[11]),
        .I4(i2s_lrclk_div[10]),
        .I5(i2s_lrclk_div_cnt_reg[10]),
        .O(i2s_lrclk_toggle0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i2s_lrclk_toggle0_carry_i_2
       (.I0(i2s_lrclk_div_cnt_reg[6]),
        .I1(i2s_lrclk_div[6]),
        .I2(i2s_lrclk_div[8]),
        .I3(i2s_lrclk_div_cnt_reg[8]),
        .I4(i2s_lrclk_div[7]),
        .I5(i2s_lrclk_div_cnt_reg[7]),
        .O(i2s_lrclk_toggle0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i2s_lrclk_toggle0_carry_i_3
       (.I0(i2s_lrclk_div_cnt_reg[3]),
        .I1(i2s_lrclk_div[3]),
        .I2(i2s_lrclk_div[5]),
        .I3(i2s_lrclk_div_cnt_reg[5]),
        .I4(i2s_lrclk_div[4]),
        .I5(i2s_lrclk_div_cnt_reg[4]),
        .O(i2s_lrclk_toggle0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i2s_lrclk_toggle0_carry_i_4
       (.I0(i2s_lrclk_div_cnt_reg[0]),
        .I1(i2s_lrclk_div[0]),
        .I2(i2s_lrclk_div[2]),
        .I3(i2s_lrclk_div_cnt_reg[2]),
        .I4(i2s_lrclk_div[1]),
        .I5(i2s_lrclk_div_cnt_reg[1]),
        .O(i2s_lrclk_toggle0_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \i2s_mclk_div[7]_i_1 
       (.I0(\i2s_chan_en[7]_i_2_n_0 ),
        .I1(i2s_clk_div_en_reg_n_0),
        .I2(s_axi_wstrb[0]),
        .I3(p_1_in__0_0[1]),
        .I4(p_1_in__0_0[2]),
        .I5(p_1_in__0_0[0]),
        .O(i2s_mclk_div_3));
  LUT1 #(
    .INIT(2'h1)) 
    \i2s_mclk_div_cnt[0]_i_1 
       (.I0(i2s_mclk_div_cnt_reg[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i2s_mclk_div_cnt[1]_i_1 
       (.I0(i2s_mclk_div_cnt_reg[0]),
        .I1(i2s_mclk_div_cnt_reg[1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \i2s_mclk_div_cnt[2]_i_1 
       (.I0(i2s_mclk_div_cnt_reg[0]),
        .I1(i2s_mclk_div_cnt_reg[1]),
        .I2(i2s_mclk_div_cnt_reg[2]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \i2s_mclk_div_cnt[3]_i_1 
       (.I0(i2s_mclk_div_cnt_reg[1]),
        .I1(i2s_mclk_div_cnt_reg[0]),
        .I2(i2s_mclk_div_cnt_reg[2]),
        .I3(i2s_mclk_div_cnt_reg[3]),
        .O(p_0_in__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
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
  LUT2 #(
    .INIT(4'h6)) 
    \i2s_mclk_div_cnt[6]_i_1 
       (.I0(\i2s_mclk_div_cnt[7]_i_3_n_0 ),
        .I1(i2s_mclk_div_cnt_reg[6]),
        .O(p_0_in__1[6]));
  LUT4 #(
    .INIT(16'h55D5)) 
    \i2s_mclk_div_cnt[7]_i_1 
       (.I0(i2s_clk_div_en_reg_n_0),
        .I1(i2s_mclk_i_2_n_0),
        .I2(i2s_mclk_i_3_n_0),
        .I3(i2s_mclk_i_4_n_0),
        .O(\i2s_mclk_div_cnt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
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
       (.C(aclk),
        .CE(i2s_clk_div_en_reg_n_0),
        .D(p_0_in__1[0]),
        .Q(i2s_mclk_div_cnt_reg[0]),
        .R(\i2s_mclk_div_cnt[7]_i_1_n_0 ));
  FDRE \i2s_mclk_div_cnt_reg[1] 
       (.C(aclk),
        .CE(i2s_clk_div_en_reg_n_0),
        .D(p_0_in__1[1]),
        .Q(i2s_mclk_div_cnt_reg[1]),
        .R(\i2s_mclk_div_cnt[7]_i_1_n_0 ));
  FDRE \i2s_mclk_div_cnt_reg[2] 
       (.C(aclk),
        .CE(i2s_clk_div_en_reg_n_0),
        .D(p_0_in__1[2]),
        .Q(i2s_mclk_div_cnt_reg[2]),
        .R(\i2s_mclk_div_cnt[7]_i_1_n_0 ));
  FDRE \i2s_mclk_div_cnt_reg[3] 
       (.C(aclk),
        .CE(i2s_clk_div_en_reg_n_0),
        .D(p_0_in__1[3]),
        .Q(i2s_mclk_div_cnt_reg[3]),
        .R(\i2s_mclk_div_cnt[7]_i_1_n_0 ));
  FDRE \i2s_mclk_div_cnt_reg[4] 
       (.C(aclk),
        .CE(i2s_clk_div_en_reg_n_0),
        .D(p_0_in__1[4]),
        .Q(i2s_mclk_div_cnt_reg[4]),
        .R(\i2s_mclk_div_cnt[7]_i_1_n_0 ));
  FDRE \i2s_mclk_div_cnt_reg[5] 
       (.C(aclk),
        .CE(i2s_clk_div_en_reg_n_0),
        .D(p_0_in__1[5]),
        .Q(i2s_mclk_div_cnt_reg[5]),
        .R(\i2s_mclk_div_cnt[7]_i_1_n_0 ));
  FDRE \i2s_mclk_div_cnt_reg[6] 
       (.C(aclk),
        .CE(i2s_clk_div_en_reg_n_0),
        .D(p_0_in__1[6]),
        .Q(i2s_mclk_div_cnt_reg[6]),
        .R(\i2s_mclk_div_cnt[7]_i_1_n_0 ));
  FDRE \i2s_mclk_div_cnt_reg[7] 
       (.C(aclk),
        .CE(i2s_clk_div_en_reg_n_0),
        .D(p_0_in__1[7]),
        .Q(i2s_mclk_div_cnt_reg[7]),
        .R(\i2s_mclk_div_cnt[7]_i_1_n_0 ));
  FDRE \i2s_mclk_div_reg[0] 
       (.C(aclk),
        .CE(i2s_mclk_div_3),
        .D(s_axi_wdata[0]),
        .Q(i2s_mclk_div[0]),
        .R(p_0_in));
  FDRE \i2s_mclk_div_reg[1] 
       (.C(aclk),
        .CE(i2s_mclk_div_3),
        .D(s_axi_wdata[1]),
        .Q(i2s_mclk_div[1]),
        .R(p_0_in));
  FDRE \i2s_mclk_div_reg[2] 
       (.C(aclk),
        .CE(i2s_mclk_div_3),
        .D(s_axi_wdata[2]),
        .Q(i2s_mclk_div[2]),
        .R(p_0_in));
  FDRE \i2s_mclk_div_reg[3] 
       (.C(aclk),
        .CE(i2s_mclk_div_3),
        .D(s_axi_wdata[3]),
        .Q(i2s_mclk_div[3]),
        .R(p_0_in));
  FDRE \i2s_mclk_div_reg[4] 
       (.C(aclk),
        .CE(i2s_mclk_div_3),
        .D(s_axi_wdata[4]),
        .Q(i2s_mclk_div[4]),
        .R(p_0_in));
  FDRE \i2s_mclk_div_reg[5] 
       (.C(aclk),
        .CE(i2s_mclk_div_3),
        .D(s_axi_wdata[5]),
        .Q(i2s_mclk_div[5]),
        .R(p_0_in));
  FDRE \i2s_mclk_div_reg[6] 
       (.C(aclk),
        .CE(i2s_mclk_div_3),
        .D(s_axi_wdata[6]),
        .Q(i2s_mclk_div[6]),
        .R(p_0_in));
  FDRE \i2s_mclk_div_reg[7] 
       (.C(aclk),
        .CE(i2s_mclk_div_3),
        .D(s_axi_wdata[7]),
        .Q(i2s_mclk_div[7]),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'hAA2A0080)) 
    i2s_mclk_i_1
       (.I0(i2s_clk_div_en_reg_n_0),
        .I1(i2s_mclk_i_2_n_0),
        .I2(i2s_mclk_i_3_n_0),
        .I3(i2s_mclk_i_4_n_0),
        .I4(i2s_mclk),
        .O(i2s_mclk_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i2s_mclk_i_2
       (.I0(i2s_mclk_div_cnt_reg[0]),
        .I1(i2s_mclk_div[0]),
        .I2(i2s_mclk_div[2]),
        .I3(i2s_mclk_div_cnt_reg[2]),
        .I4(i2s_mclk_div[1]),
        .I5(i2s_mclk_div_cnt_reg[1]),
        .O(i2s_mclk_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i2s_mclk_i_3
       (.I0(i2s_mclk_div_cnt_reg[3]),
        .I1(i2s_mclk_div[3]),
        .I2(i2s_mclk_div[5]),
        .I3(i2s_mclk_div_cnt_reg[5]),
        .I4(i2s_mclk_div[4]),
        .I5(i2s_mclk_div_cnt_reg[4]),
        .O(i2s_mclk_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h6FF6)) 
    i2s_mclk_i_4
       (.I0(i2s_mclk_div_cnt_reg[6]),
        .I1(i2s_mclk_div[6]),
        .I2(i2s_mclk_div_cnt_reg[7]),
        .I3(i2s_mclk_div[7]),
        .O(i2s_mclk_i_4_n_0));
  FDRE i2s_mclk_reg
       (.C(aclk),
        .CE(1'b1),
        .D(i2s_mclk_i_1_n_0),
        .Q(i2s_mclk),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h20)) 
    \i2s_sdata_in_sr[0]_i_1 
       (.I0(i2s_fsm_state__0[1]),
        .I1(m_axis_tvalid0__3),
        .I2(i2s_sdata_in),
        .O(i2s_sdata_in_sr[0]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \i2s_sdata_in_sr[10]_i_1 
       (.I0(i2s_fsm_state__0[1]),
        .I1(m_axis_tvalid0__3),
        .I2(p_1_in__0[10]),
        .O(i2s_sdata_in_sr[10]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \i2s_sdata_in_sr[11]_i_1 
       (.I0(i2s_fsm_state__0[1]),
        .I1(m_axis_tvalid0__3),
        .I2(p_1_in__0[11]),
        .O(i2s_sdata_in_sr[11]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \i2s_sdata_in_sr[12]_i_1 
       (.I0(i2s_fsm_state__0[1]),
        .I1(m_axis_tvalid0__3),
        .I2(p_1_in__0[12]),
        .O(i2s_sdata_in_sr[12]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \i2s_sdata_in_sr[13]_i_1 
       (.I0(i2s_fsm_state__0[1]),
        .I1(m_axis_tvalid0__3),
        .I2(p_1_in__0[13]),
        .O(i2s_sdata_in_sr[13]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \i2s_sdata_in_sr[14]_i_1 
       (.I0(i2s_fsm_state__0[1]),
        .I1(m_axis_tvalid0__3),
        .I2(p_1_in__0[14]),
        .O(i2s_sdata_in_sr[14]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \i2s_sdata_in_sr[15]_i_1 
       (.I0(i2s_fsm_state__0[1]),
        .I1(m_axis_tvalid0__3),
        .I2(p_1_in__0[15]),
        .O(i2s_sdata_in_sr[15]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \i2s_sdata_in_sr[16]_i_1 
       (.I0(i2s_fsm_state__0[1]),
        .I1(m_axis_tvalid0__3),
        .I2(p_1_in__0[16]),
        .O(i2s_sdata_in_sr[16]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \i2s_sdata_in_sr[17]_i_1 
       (.I0(i2s_fsm_state__0[1]),
        .I1(m_axis_tvalid0__3),
        .I2(p_1_in__0[17]),
        .O(i2s_sdata_in_sr[17]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \i2s_sdata_in_sr[18]_i_1 
       (.I0(i2s_fsm_state__0[1]),
        .I1(m_axis_tvalid0__3),
        .I2(p_1_in__0[18]),
        .O(i2s_sdata_in_sr[18]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \i2s_sdata_in_sr[19]_i_1 
       (.I0(i2s_fsm_state__0[1]),
        .I1(m_axis_tvalid0__3),
        .I2(p_1_in__0[19]),
        .O(i2s_sdata_in_sr[19]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \i2s_sdata_in_sr[1]_i_1 
       (.I0(i2s_fsm_state__0[1]),
        .I1(m_axis_tvalid0__3),
        .I2(p_1_in__0[1]),
        .O(i2s_sdata_in_sr[1]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \i2s_sdata_in_sr[20]_i_1 
       (.I0(i2s_fsm_state__0[1]),
        .I1(m_axis_tvalid0__3),
        .I2(p_1_in__0[20]),
        .O(i2s_sdata_in_sr[20]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \i2s_sdata_in_sr[21]_i_1 
       (.I0(i2s_fsm_state__0[1]),
        .I1(m_axis_tvalid0__3),
        .I2(p_1_in__0[21]),
        .O(i2s_sdata_in_sr[21]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \i2s_sdata_in_sr[22]_i_1 
       (.I0(i2s_fsm_state__0[1]),
        .I1(m_axis_tvalid0__3),
        .I2(p_1_in__0[22]),
        .O(i2s_sdata_in_sr[22]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \i2s_sdata_in_sr[23]_i_1 
       (.I0(i2s_fsm_state__0[1]),
        .I1(m_axis_tvalid0__3),
        .I2(p_1_in__0[23]),
        .O(i2s_sdata_in_sr[23]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \i2s_sdata_in_sr[24]_i_1 
       (.I0(i2s_fsm_state__0[1]),
        .I1(m_axis_tvalid0__3),
        .I2(p_1_in__0[24]),
        .O(i2s_sdata_in_sr[24]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \i2s_sdata_in_sr[25]_i_1 
       (.I0(i2s_fsm_state__0[1]),
        .I1(m_axis_tvalid0__3),
        .I2(p_1_in__0[25]),
        .O(i2s_sdata_in_sr[25]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \i2s_sdata_in_sr[26]_i_1 
       (.I0(i2s_fsm_state__0[1]),
        .I1(m_axis_tvalid0__3),
        .I2(p_1_in__0[26]),
        .O(i2s_sdata_in_sr[26]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \i2s_sdata_in_sr[27]_i_1 
       (.I0(i2s_fsm_state__0[1]),
        .I1(m_axis_tvalid0__3),
        .I2(p_1_in__0[27]),
        .O(i2s_sdata_in_sr[27]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \i2s_sdata_in_sr[28]_i_1 
       (.I0(i2s_fsm_state__0[1]),
        .I1(m_axis_tvalid0__3),
        .I2(p_1_in__0[28]),
        .O(i2s_sdata_in_sr[28]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \i2s_sdata_in_sr[29]_i_1 
       (.I0(i2s_fsm_state__0[1]),
        .I1(m_axis_tvalid0__3),
        .I2(p_1_in__0[29]),
        .O(i2s_sdata_in_sr[29]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \i2s_sdata_in_sr[2]_i_1 
       (.I0(i2s_fsm_state__0[1]),
        .I1(m_axis_tvalid0__3),
        .I2(p_1_in__0[2]),
        .O(i2s_sdata_in_sr[2]));
  LUT5 #(
    .INIT(32'h200000FF)) 
    \i2s_sdata_in_sr[30]_i_1 
       (.I0(m_axis_tvalid1__6),
        .I1(p_0_in_1),
        .I2(\m_axis_tdata[31]_i_3_n_0 ),
        .I3(i2s_fsm_state__0[0]),
        .I4(i2s_fsm_state__0[1]),
        .O(\i2s_sdata_in_sr[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \i2s_sdata_in_sr[30]_i_2 
       (.I0(i2s_fsm_state__0[1]),
        .I1(m_axis_tvalid0__3),
        .I2(p_1_in__0[30]),
        .O(i2s_sdata_in_sr[30]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \i2s_sdata_in_sr[3]_i_1 
       (.I0(i2s_fsm_state__0[1]),
        .I1(m_axis_tvalid0__3),
        .I2(p_1_in__0[3]),
        .O(i2s_sdata_in_sr[3]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \i2s_sdata_in_sr[4]_i_1 
       (.I0(i2s_fsm_state__0[1]),
        .I1(m_axis_tvalid0__3),
        .I2(p_1_in__0[4]),
        .O(i2s_sdata_in_sr[4]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \i2s_sdata_in_sr[5]_i_1 
       (.I0(i2s_fsm_state__0[1]),
        .I1(m_axis_tvalid0__3),
        .I2(p_1_in__0[5]),
        .O(i2s_sdata_in_sr[5]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \i2s_sdata_in_sr[6]_i_1 
       (.I0(i2s_fsm_state__0[1]),
        .I1(m_axis_tvalid0__3),
        .I2(p_1_in__0[6]),
        .O(i2s_sdata_in_sr[6]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \i2s_sdata_in_sr[7]_i_1 
       (.I0(i2s_fsm_state__0[1]),
        .I1(m_axis_tvalid0__3),
        .I2(p_1_in__0[7]),
        .O(i2s_sdata_in_sr[7]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \i2s_sdata_in_sr[8]_i_1 
       (.I0(i2s_fsm_state__0[1]),
        .I1(m_axis_tvalid0__3),
        .I2(p_1_in__0[8]),
        .O(i2s_sdata_in_sr[8]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \i2s_sdata_in_sr[9]_i_1 
       (.I0(i2s_fsm_state__0[1]),
        .I1(m_axis_tvalid0__3),
        .I2(p_1_in__0[9]),
        .O(i2s_sdata_in_sr[9]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0222)) 
    \i2s_sdata_in_sr_bit_cnt[0]_i_1 
       (.I0(i2s_fsm_state__0[1]),
        .I1(\i2s_sdata_in_sr_bit_cnt_reg_n_0_[0] ),
        .I2(m_axis_tvalid_reg_0),
        .I3(m_axis_tready),
        .O(i2s_sdata_in_sr_bit_cnt[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h002A2A00)) 
    \i2s_sdata_in_sr_bit_cnt[1]_i_1 
       (.I0(i2s_fsm_state__0[1]),
        .I1(m_axis_tvalid_reg_0),
        .I2(m_axis_tready),
        .I3(\i2s_sdata_in_sr_bit_cnt_reg_n_0_[0] ),
        .I4(\i2s_sdata_in_sr_bit_cnt_reg_n_0_[1] ),
        .O(i2s_sdata_in_sr_bit_cnt[1]));
  LUT6 #(
    .INIT(64'h002A2A2A2A000000)) 
    \i2s_sdata_in_sr_bit_cnt[2]_i_1 
       (.I0(i2s_fsm_state__0[1]),
        .I1(m_axis_tvalid_reg_0),
        .I2(m_axis_tready),
        .I3(\i2s_sdata_in_sr_bit_cnt_reg_n_0_[0] ),
        .I4(\i2s_sdata_in_sr_bit_cnt_reg_n_0_[1] ),
        .I5(\i2s_sdata_in_sr_bit_cnt_reg_n_0_[2] ),
        .O(i2s_sdata_in_sr_bit_cnt[2]));
  LUT6 #(
    .INIT(64'h0222222220000000)) 
    \i2s_sdata_in_sr_bit_cnt[3]_i_1 
       (.I0(i2s_fsm_state__0[1]),
        .I1(m_axis_tvalid131_out__0),
        .I2(\i2s_sdata_in_sr_bit_cnt_reg_n_0_[1] ),
        .I3(\i2s_sdata_in_sr_bit_cnt_reg_n_0_[0] ),
        .I4(\i2s_sdata_in_sr_bit_cnt_reg_n_0_[2] ),
        .I5(\i2s_sdata_in_sr_bit_cnt_reg_n_0_[3] ),
        .O(i2s_sdata_in_sr_bit_cnt[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i2s_sdata_in_sr_bit_cnt[3]_i_2 
       (.I0(m_axis_tvalid_reg_0),
        .I1(m_axis_tready),
        .O(m_axis_tvalid131_out__0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h002A2A00)) 
    \i2s_sdata_in_sr_bit_cnt[4]_i_1 
       (.I0(i2s_fsm_state__0[1]),
        .I1(m_axis_tvalid_reg_0),
        .I2(m_axis_tready),
        .I3(\i2s_sdata_in_sr_bit_cnt[5]_i_4_n_0 ),
        .I4(\i2s_sdata_in_sr_bit_cnt_reg_n_0_[4] ),
        .O(i2s_sdata_in_sr_bit_cnt[4]));
  LUT5 #(
    .INIT(32'hEA0000FF)) 
    \i2s_sdata_in_sr_bit_cnt[5]_i_1 
       (.I0(\i2s_sdata_in_sr_bit_cnt[5]_i_3_n_0 ),
        .I1(m_axis_tvalid_reg_0),
        .I2(m_axis_tready),
        .I3(i2s_fsm_state__0[0]),
        .I4(i2s_fsm_state__0[1]),
        .O(\i2s_sdata_in_sr_bit_cnt[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h002A2A2A2A000000)) 
    \i2s_sdata_in_sr_bit_cnt[5]_i_2 
       (.I0(i2s_fsm_state__0[1]),
        .I1(m_axis_tvalid_reg_0),
        .I2(m_axis_tready),
        .I3(\i2s_sdata_in_sr_bit_cnt[5]_i_4_n_0 ),
        .I4(\i2s_sdata_in_sr_bit_cnt_reg_n_0_[4] ),
        .I5(p_0_in_1),
        .O(i2s_sdata_in_sr_bit_cnt[5]));
  LUT3 #(
    .INIT(8'h20)) 
    \i2s_sdata_in_sr_bit_cnt[5]_i_3 
       (.I0(\m_axis_tdata[31]_i_3_n_0 ),
        .I1(p_0_in_1),
        .I2(m_axis_tvalid1__6),
        .O(\i2s_sdata_in_sr_bit_cnt[5]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \i2s_sdata_in_sr_bit_cnt[5]_i_4 
       (.I0(\i2s_sdata_in_sr_bit_cnt_reg_n_0_[3] ),
        .I1(\i2s_sdata_in_sr_bit_cnt_reg_n_0_[1] ),
        .I2(\i2s_sdata_in_sr_bit_cnt_reg_n_0_[0] ),
        .I3(\i2s_sdata_in_sr_bit_cnt_reg_n_0_[2] ),
        .O(\i2s_sdata_in_sr_bit_cnt[5]_i_4_n_0 ));
  FDRE \i2s_sdata_in_sr_bit_cnt_reg[0] 
       (.C(aclk),
        .CE(\i2s_sdata_in_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_in_sr_bit_cnt[0]),
        .Q(\i2s_sdata_in_sr_bit_cnt_reg_n_0_[0] ),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_sdata_in_sr_bit_cnt_reg[1] 
       (.C(aclk),
        .CE(\i2s_sdata_in_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_in_sr_bit_cnt[1]),
        .Q(\i2s_sdata_in_sr_bit_cnt_reg_n_0_[1] ),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_sdata_in_sr_bit_cnt_reg[2] 
       (.C(aclk),
        .CE(\i2s_sdata_in_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_in_sr_bit_cnt[2]),
        .Q(\i2s_sdata_in_sr_bit_cnt_reg_n_0_[2] ),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_sdata_in_sr_bit_cnt_reg[3] 
       (.C(aclk),
        .CE(\i2s_sdata_in_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_in_sr_bit_cnt[3]),
        .Q(\i2s_sdata_in_sr_bit_cnt_reg_n_0_[3] ),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_sdata_in_sr_bit_cnt_reg[4] 
       (.C(aclk),
        .CE(\i2s_sdata_in_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_in_sr_bit_cnt[4]),
        .Q(\i2s_sdata_in_sr_bit_cnt_reg_n_0_[4] ),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_sdata_in_sr_bit_cnt_reg[5] 
       (.C(aclk),
        .CE(\i2s_sdata_in_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_in_sr_bit_cnt[5]),
        .Q(p_0_in_1),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_sdata_in_sr_reg[0] 
       (.C(aclk),
        .CE(\i2s_sdata_in_sr[30]_i_1_n_0 ),
        .D(i2s_sdata_in_sr[0]),
        .Q(p_1_in__0[1]),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_sdata_in_sr_reg[10] 
       (.C(aclk),
        .CE(\i2s_sdata_in_sr[30]_i_1_n_0 ),
        .D(i2s_sdata_in_sr[10]),
        .Q(p_1_in__0[11]),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_sdata_in_sr_reg[11] 
       (.C(aclk),
        .CE(\i2s_sdata_in_sr[30]_i_1_n_0 ),
        .D(i2s_sdata_in_sr[11]),
        .Q(p_1_in__0[12]),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_sdata_in_sr_reg[12] 
       (.C(aclk),
        .CE(\i2s_sdata_in_sr[30]_i_1_n_0 ),
        .D(i2s_sdata_in_sr[12]),
        .Q(p_1_in__0[13]),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_sdata_in_sr_reg[13] 
       (.C(aclk),
        .CE(\i2s_sdata_in_sr[30]_i_1_n_0 ),
        .D(i2s_sdata_in_sr[13]),
        .Q(p_1_in__0[14]),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_sdata_in_sr_reg[14] 
       (.C(aclk),
        .CE(\i2s_sdata_in_sr[30]_i_1_n_0 ),
        .D(i2s_sdata_in_sr[14]),
        .Q(p_1_in__0[15]),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_sdata_in_sr_reg[15] 
       (.C(aclk),
        .CE(\i2s_sdata_in_sr[30]_i_1_n_0 ),
        .D(i2s_sdata_in_sr[15]),
        .Q(p_1_in__0[16]),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_sdata_in_sr_reg[16] 
       (.C(aclk),
        .CE(\i2s_sdata_in_sr[30]_i_1_n_0 ),
        .D(i2s_sdata_in_sr[16]),
        .Q(p_1_in__0[17]),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_sdata_in_sr_reg[17] 
       (.C(aclk),
        .CE(\i2s_sdata_in_sr[30]_i_1_n_0 ),
        .D(i2s_sdata_in_sr[17]),
        .Q(p_1_in__0[18]),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_sdata_in_sr_reg[18] 
       (.C(aclk),
        .CE(\i2s_sdata_in_sr[30]_i_1_n_0 ),
        .D(i2s_sdata_in_sr[18]),
        .Q(p_1_in__0[19]),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_sdata_in_sr_reg[19] 
       (.C(aclk),
        .CE(\i2s_sdata_in_sr[30]_i_1_n_0 ),
        .D(i2s_sdata_in_sr[19]),
        .Q(p_1_in__0[20]),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_sdata_in_sr_reg[1] 
       (.C(aclk),
        .CE(\i2s_sdata_in_sr[30]_i_1_n_0 ),
        .D(i2s_sdata_in_sr[1]),
        .Q(p_1_in__0[2]),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_sdata_in_sr_reg[20] 
       (.C(aclk),
        .CE(\i2s_sdata_in_sr[30]_i_1_n_0 ),
        .D(i2s_sdata_in_sr[20]),
        .Q(p_1_in__0[21]),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_sdata_in_sr_reg[21] 
       (.C(aclk),
        .CE(\i2s_sdata_in_sr[30]_i_1_n_0 ),
        .D(i2s_sdata_in_sr[21]),
        .Q(p_1_in__0[22]),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_sdata_in_sr_reg[22] 
       (.C(aclk),
        .CE(\i2s_sdata_in_sr[30]_i_1_n_0 ),
        .D(i2s_sdata_in_sr[22]),
        .Q(p_1_in__0[23]),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_sdata_in_sr_reg[23] 
       (.C(aclk),
        .CE(\i2s_sdata_in_sr[30]_i_1_n_0 ),
        .D(i2s_sdata_in_sr[23]),
        .Q(p_1_in__0[24]),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_sdata_in_sr_reg[24] 
       (.C(aclk),
        .CE(\i2s_sdata_in_sr[30]_i_1_n_0 ),
        .D(i2s_sdata_in_sr[24]),
        .Q(p_1_in__0[25]),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_sdata_in_sr_reg[25] 
       (.C(aclk),
        .CE(\i2s_sdata_in_sr[30]_i_1_n_0 ),
        .D(i2s_sdata_in_sr[25]),
        .Q(p_1_in__0[26]),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_sdata_in_sr_reg[26] 
       (.C(aclk),
        .CE(\i2s_sdata_in_sr[30]_i_1_n_0 ),
        .D(i2s_sdata_in_sr[26]),
        .Q(p_1_in__0[27]),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_sdata_in_sr_reg[27] 
       (.C(aclk),
        .CE(\i2s_sdata_in_sr[30]_i_1_n_0 ),
        .D(i2s_sdata_in_sr[27]),
        .Q(p_1_in__0[28]),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_sdata_in_sr_reg[28] 
       (.C(aclk),
        .CE(\i2s_sdata_in_sr[30]_i_1_n_0 ),
        .D(i2s_sdata_in_sr[28]),
        .Q(p_1_in__0[29]),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_sdata_in_sr_reg[29] 
       (.C(aclk),
        .CE(\i2s_sdata_in_sr[30]_i_1_n_0 ),
        .D(i2s_sdata_in_sr[29]),
        .Q(p_1_in__0[30]),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_sdata_in_sr_reg[2] 
       (.C(aclk),
        .CE(\i2s_sdata_in_sr[30]_i_1_n_0 ),
        .D(i2s_sdata_in_sr[2]),
        .Q(p_1_in__0[3]),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_sdata_in_sr_reg[30] 
       (.C(aclk),
        .CE(\i2s_sdata_in_sr[30]_i_1_n_0 ),
        .D(i2s_sdata_in_sr[30]),
        .Q(p_1_in__0[31]),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_sdata_in_sr_reg[3] 
       (.C(aclk),
        .CE(\i2s_sdata_in_sr[30]_i_1_n_0 ),
        .D(i2s_sdata_in_sr[3]),
        .Q(p_1_in__0[4]),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_sdata_in_sr_reg[4] 
       (.C(aclk),
        .CE(\i2s_sdata_in_sr[30]_i_1_n_0 ),
        .D(i2s_sdata_in_sr[4]),
        .Q(p_1_in__0[5]),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_sdata_in_sr_reg[5] 
       (.C(aclk),
        .CE(\i2s_sdata_in_sr[30]_i_1_n_0 ),
        .D(i2s_sdata_in_sr[5]),
        .Q(p_1_in__0[6]),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_sdata_in_sr_reg[6] 
       (.C(aclk),
        .CE(\i2s_sdata_in_sr[30]_i_1_n_0 ),
        .D(i2s_sdata_in_sr[6]),
        .Q(p_1_in__0[7]),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_sdata_in_sr_reg[7] 
       (.C(aclk),
        .CE(\i2s_sdata_in_sr[30]_i_1_n_0 ),
        .D(i2s_sdata_in_sr[7]),
        .Q(p_1_in__0[8]),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_sdata_in_sr_reg[8] 
       (.C(aclk),
        .CE(\i2s_sdata_in_sr[30]_i_1_n_0 ),
        .D(i2s_sdata_in_sr[8]),
        .Q(p_1_in__0[9]),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_sdata_in_sr_reg[9] 
       (.C(aclk),
        .CE(\i2s_sdata_in_sr[30]_i_1_n_0 ),
        .D(i2s_sdata_in_sr[9]),
        .Q(p_1_in__0[10]),
        .R(m_axis_tvalid12_in));
  LUT5 #(
    .INIT(32'h80FF8000)) 
    i2s_sdata_out_i_1
       (.I0(i2s_fsm_state__0[1]),
        .I1(m_axis_tvalid1__6),
        .I2(\i2s_sdata_out_sr_reg_n_0_[31] ),
        .I3(i2s_sdata_out_i_2_n_0),
        .I4(i2s_sdata_out),
        .O(i2s_sdata_out_i_1_n_0));
  LUT5 #(
    .INIT(32'h8A0000FF)) 
    i2s_sdata_out_i_2
       (.I0(p_33_in),
        .I1(s_axis_tready1__0),
        .I2(m_axis_tvalid1__6),
        .I3(i2s_fsm_state__0[0]),
        .I4(i2s_fsm_state__0[1]),
        .O(i2s_sdata_out_i_2_n_0));
  FDRE i2s_sdata_out_reg
       (.C(aclk),
        .CE(1'b1),
        .D(i2s_sdata_out_i_1_n_0),
        .Q(i2s_sdata_out),
        .R(m_axis_tvalid12_in));
  LUT3 #(
    .INIT(8'h80)) 
    \i2s_sdata_out_sr[0]_i_1 
       (.I0(s_axis_tready_reg_0),
        .I1(s_axis_tvalid),
        .I2(s_axis_tdata[0]),
        .O(i2s_sdata_out_sr[0]));
  LUT5 #(
    .INIT(32'hF8880888)) 
    \i2s_sdata_out_sr[10]_i_1 
       (.I0(\i2s_sdata_out_sr_reg_n_0_[9] ),
        .I1(i2s_fsm_state__0[1]),
        .I2(s_axis_tready_reg_0),
        .I3(s_axis_tvalid),
        .I4(s_axis_tdata[10]),
        .O(i2s_sdata_out_sr[10]));
  LUT5 #(
    .INIT(32'hF8880888)) 
    \i2s_sdata_out_sr[11]_i_1 
       (.I0(\i2s_sdata_out_sr_reg_n_0_[10] ),
        .I1(i2s_fsm_state__0[1]),
        .I2(s_axis_tready_reg_0),
        .I3(s_axis_tvalid),
        .I4(s_axis_tdata[11]),
        .O(i2s_sdata_out_sr[11]));
  LUT5 #(
    .INIT(32'hF8880888)) 
    \i2s_sdata_out_sr[12]_i_1 
       (.I0(\i2s_sdata_out_sr_reg_n_0_[11] ),
        .I1(i2s_fsm_state__0[1]),
        .I2(s_axis_tready_reg_0),
        .I3(s_axis_tvalid),
        .I4(s_axis_tdata[12]),
        .O(i2s_sdata_out_sr[12]));
  LUT5 #(
    .INIT(32'hF8880888)) 
    \i2s_sdata_out_sr[13]_i_1 
       (.I0(\i2s_sdata_out_sr_reg_n_0_[12] ),
        .I1(i2s_fsm_state__0[1]),
        .I2(s_axis_tready_reg_0),
        .I3(s_axis_tvalid),
        .I4(s_axis_tdata[13]),
        .O(i2s_sdata_out_sr[13]));
  LUT5 #(
    .INIT(32'hF8880888)) 
    \i2s_sdata_out_sr[14]_i_1 
       (.I0(\i2s_sdata_out_sr_reg_n_0_[13] ),
        .I1(i2s_fsm_state__0[1]),
        .I2(s_axis_tready_reg_0),
        .I3(s_axis_tvalid),
        .I4(s_axis_tdata[14]),
        .O(i2s_sdata_out_sr[14]));
  LUT5 #(
    .INIT(32'hF8880888)) 
    \i2s_sdata_out_sr[15]_i_1 
       (.I0(\i2s_sdata_out_sr_reg_n_0_[14] ),
        .I1(i2s_fsm_state__0[1]),
        .I2(s_axis_tready_reg_0),
        .I3(s_axis_tvalid),
        .I4(s_axis_tdata[15]),
        .O(i2s_sdata_out_sr[15]));
  LUT5 #(
    .INIT(32'hF8880888)) 
    \i2s_sdata_out_sr[16]_i_1 
       (.I0(\i2s_sdata_out_sr_reg_n_0_[15] ),
        .I1(i2s_fsm_state__0[1]),
        .I2(s_axis_tready_reg_0),
        .I3(s_axis_tvalid),
        .I4(s_axis_tdata[16]),
        .O(i2s_sdata_out_sr[16]));
  LUT5 #(
    .INIT(32'hF8880888)) 
    \i2s_sdata_out_sr[17]_i_1 
       (.I0(\i2s_sdata_out_sr_reg_n_0_[16] ),
        .I1(i2s_fsm_state__0[1]),
        .I2(s_axis_tready_reg_0),
        .I3(s_axis_tvalid),
        .I4(s_axis_tdata[17]),
        .O(i2s_sdata_out_sr[17]));
  LUT5 #(
    .INIT(32'hF8880888)) 
    \i2s_sdata_out_sr[18]_i_1 
       (.I0(\i2s_sdata_out_sr_reg_n_0_[17] ),
        .I1(i2s_fsm_state__0[1]),
        .I2(s_axis_tready_reg_0),
        .I3(s_axis_tvalid),
        .I4(s_axis_tdata[18]),
        .O(i2s_sdata_out_sr[18]));
  LUT5 #(
    .INIT(32'hF8880888)) 
    \i2s_sdata_out_sr[19]_i_1 
       (.I0(\i2s_sdata_out_sr_reg_n_0_[18] ),
        .I1(i2s_fsm_state__0[1]),
        .I2(s_axis_tready_reg_0),
        .I3(s_axis_tvalid),
        .I4(s_axis_tdata[19]),
        .O(i2s_sdata_out_sr[19]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hF8880888)) 
    \i2s_sdata_out_sr[1]_i_1 
       (.I0(\i2s_sdata_out_sr_reg_n_0_[0] ),
        .I1(i2s_fsm_state__0[1]),
        .I2(s_axis_tready_reg_0),
        .I3(s_axis_tvalid),
        .I4(s_axis_tdata[1]),
        .O(i2s_sdata_out_sr[1]));
  LUT5 #(
    .INIT(32'hF8880888)) 
    \i2s_sdata_out_sr[20]_i_1 
       (.I0(\i2s_sdata_out_sr_reg_n_0_[19] ),
        .I1(i2s_fsm_state__0[1]),
        .I2(s_axis_tready_reg_0),
        .I3(s_axis_tvalid),
        .I4(s_axis_tdata[20]),
        .O(i2s_sdata_out_sr[20]));
  LUT5 #(
    .INIT(32'hF8880888)) 
    \i2s_sdata_out_sr[21]_i_1 
       (.I0(\i2s_sdata_out_sr_reg_n_0_[20] ),
        .I1(i2s_fsm_state__0[1]),
        .I2(s_axis_tready_reg_0),
        .I3(s_axis_tvalid),
        .I4(s_axis_tdata[21]),
        .O(i2s_sdata_out_sr[21]));
  LUT5 #(
    .INIT(32'hF8880888)) 
    \i2s_sdata_out_sr[22]_i_1 
       (.I0(\i2s_sdata_out_sr_reg_n_0_[21] ),
        .I1(i2s_fsm_state__0[1]),
        .I2(s_axis_tready_reg_0),
        .I3(s_axis_tvalid),
        .I4(s_axis_tdata[22]),
        .O(i2s_sdata_out_sr[22]));
  LUT5 #(
    .INIT(32'hF8880888)) 
    \i2s_sdata_out_sr[23]_i_1 
       (.I0(\i2s_sdata_out_sr_reg_n_0_[22] ),
        .I1(i2s_fsm_state__0[1]),
        .I2(s_axis_tready_reg_0),
        .I3(s_axis_tvalid),
        .I4(s_axis_tdata[23]),
        .O(i2s_sdata_out_sr[23]));
  LUT5 #(
    .INIT(32'hF8880888)) 
    \i2s_sdata_out_sr[24]_i_1 
       (.I0(\i2s_sdata_out_sr_reg_n_0_[23] ),
        .I1(i2s_fsm_state__0[1]),
        .I2(s_axis_tready_reg_0),
        .I3(s_axis_tvalid),
        .I4(s_axis_tdata[24]),
        .O(i2s_sdata_out_sr[24]));
  LUT5 #(
    .INIT(32'hF8880888)) 
    \i2s_sdata_out_sr[25]_i_1 
       (.I0(\i2s_sdata_out_sr_reg_n_0_[24] ),
        .I1(i2s_fsm_state__0[1]),
        .I2(s_axis_tready_reg_0),
        .I3(s_axis_tvalid),
        .I4(s_axis_tdata[25]),
        .O(i2s_sdata_out_sr[25]));
  LUT5 #(
    .INIT(32'hF8880888)) 
    \i2s_sdata_out_sr[26]_i_1 
       (.I0(\i2s_sdata_out_sr_reg_n_0_[25] ),
        .I1(i2s_fsm_state__0[1]),
        .I2(s_axis_tready_reg_0),
        .I3(s_axis_tvalid),
        .I4(s_axis_tdata[26]),
        .O(i2s_sdata_out_sr[26]));
  LUT5 #(
    .INIT(32'hF8880888)) 
    \i2s_sdata_out_sr[27]_i_1 
       (.I0(\i2s_sdata_out_sr_reg_n_0_[26] ),
        .I1(i2s_fsm_state__0[1]),
        .I2(s_axis_tready_reg_0),
        .I3(s_axis_tvalid),
        .I4(s_axis_tdata[27]),
        .O(i2s_sdata_out_sr[27]));
  LUT5 #(
    .INIT(32'hF8880888)) 
    \i2s_sdata_out_sr[28]_i_1 
       (.I0(\i2s_sdata_out_sr_reg_n_0_[27] ),
        .I1(i2s_fsm_state__0[1]),
        .I2(s_axis_tready_reg_0),
        .I3(s_axis_tvalid),
        .I4(s_axis_tdata[28]),
        .O(i2s_sdata_out_sr[28]));
  LUT5 #(
    .INIT(32'hF8880888)) 
    \i2s_sdata_out_sr[29]_i_1 
       (.I0(\i2s_sdata_out_sr_reg_n_0_[28] ),
        .I1(i2s_fsm_state__0[1]),
        .I2(s_axis_tready_reg_0),
        .I3(s_axis_tvalid),
        .I4(s_axis_tdata[29]),
        .O(i2s_sdata_out_sr[29]));
  LUT5 #(
    .INIT(32'hF8880888)) 
    \i2s_sdata_out_sr[2]_i_1 
       (.I0(\i2s_sdata_out_sr_reg_n_0_[1] ),
        .I1(i2s_fsm_state__0[1]),
        .I2(s_axis_tready_reg_0),
        .I3(s_axis_tvalid),
        .I4(s_axis_tdata[2]),
        .O(i2s_sdata_out_sr[2]));
  LUT5 #(
    .INIT(32'hF8880888)) 
    \i2s_sdata_out_sr[30]_i_1 
       (.I0(\i2s_sdata_out_sr_reg_n_0_[29] ),
        .I1(i2s_fsm_state__0[1]),
        .I2(s_axis_tready_reg_0),
        .I3(s_axis_tvalid),
        .I4(s_axis_tdata[30]),
        .O(i2s_sdata_out_sr[30]));
  LUT5 #(
    .INIT(32'hF8880888)) 
    \i2s_sdata_out_sr[31]_i_1 
       (.I0(\i2s_sdata_out_sr_reg_n_0_[30] ),
        .I1(i2s_fsm_state__0[1]),
        .I2(s_axis_tready_reg_0),
        .I3(s_axis_tvalid),
        .I4(s_axis_tdata[31]),
        .O(i2s_sdata_out_sr[31]));
  LUT5 #(
    .INIT(32'hF8880888)) 
    \i2s_sdata_out_sr[3]_i_1 
       (.I0(\i2s_sdata_out_sr_reg_n_0_[2] ),
        .I1(i2s_fsm_state__0[1]),
        .I2(s_axis_tready_reg_0),
        .I3(s_axis_tvalid),
        .I4(s_axis_tdata[3]),
        .O(i2s_sdata_out_sr[3]));
  LUT5 #(
    .INIT(32'hF8880888)) 
    \i2s_sdata_out_sr[4]_i_1 
       (.I0(\i2s_sdata_out_sr_reg_n_0_[3] ),
        .I1(i2s_fsm_state__0[1]),
        .I2(s_axis_tready_reg_0),
        .I3(s_axis_tvalid),
        .I4(s_axis_tdata[4]),
        .O(i2s_sdata_out_sr[4]));
  LUT5 #(
    .INIT(32'hF8880888)) 
    \i2s_sdata_out_sr[5]_i_1 
       (.I0(\i2s_sdata_out_sr_reg_n_0_[4] ),
        .I1(i2s_fsm_state__0[1]),
        .I2(s_axis_tready_reg_0),
        .I3(s_axis_tvalid),
        .I4(s_axis_tdata[5]),
        .O(i2s_sdata_out_sr[5]));
  LUT5 #(
    .INIT(32'hF8880888)) 
    \i2s_sdata_out_sr[6]_i_1 
       (.I0(\i2s_sdata_out_sr_reg_n_0_[5] ),
        .I1(i2s_fsm_state__0[1]),
        .I2(s_axis_tready_reg_0),
        .I3(s_axis_tvalid),
        .I4(s_axis_tdata[6]),
        .O(i2s_sdata_out_sr[6]));
  LUT5 #(
    .INIT(32'hF8880888)) 
    \i2s_sdata_out_sr[7]_i_1 
       (.I0(\i2s_sdata_out_sr_reg_n_0_[6] ),
        .I1(i2s_fsm_state__0[1]),
        .I2(s_axis_tready_reg_0),
        .I3(s_axis_tvalid),
        .I4(s_axis_tdata[7]),
        .O(i2s_sdata_out_sr[7]));
  LUT5 #(
    .INIT(32'hF8880888)) 
    \i2s_sdata_out_sr[8]_i_1 
       (.I0(\i2s_sdata_out_sr_reg_n_0_[7] ),
        .I1(i2s_fsm_state__0[1]),
        .I2(s_axis_tready_reg_0),
        .I3(s_axis_tvalid),
        .I4(s_axis_tdata[8]),
        .O(i2s_sdata_out_sr[8]));
  LUT5 #(
    .INIT(32'hF8880888)) 
    \i2s_sdata_out_sr[9]_i_1 
       (.I0(\i2s_sdata_out_sr_reg_n_0_[8] ),
        .I1(i2s_fsm_state__0[1]),
        .I2(s_axis_tready_reg_0),
        .I3(s_axis_tvalid),
        .I4(s_axis_tdata[9]),
        .O(i2s_sdata_out_sr[9]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0222)) 
    \i2s_sdata_out_sr_bit_cnt[0]_i_1 
       (.I0(i2s_fsm_state__0[1]),
        .I1(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[0] ),
        .I2(s_axis_tvalid),
        .I3(s_axis_tready_reg_0),
        .O(i2s_sdata_out_sr_bit_cnt[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00828282)) 
    \i2s_sdata_out_sr_bit_cnt[1]_i_1 
       (.I0(i2s_fsm_state__0[1]),
        .I1(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[0] ),
        .I2(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[1] ),
        .I3(s_axis_tvalid),
        .I4(s_axis_tready_reg_0),
        .O(i2s_sdata_out_sr_bit_cnt[1]));
  LUT6 #(
    .INIT(64'h0000A802A802A802)) 
    \i2s_sdata_out_sr_bit_cnt[2]_i_1 
       (.I0(i2s_fsm_state__0[1]),
        .I1(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[1] ),
        .I2(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[0] ),
        .I3(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[2] ),
        .I4(s_axis_tvalid),
        .I5(s_axis_tready_reg_0),
        .O(i2s_sdata_out_sr_bit_cnt[2]));
  LUT6 #(
    .INIT(64'h00000000AAA80002)) 
    \i2s_sdata_out_sr_bit_cnt[3]_i_1 
       (.I0(i2s_fsm_state__0[1]),
        .I1(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[2] ),
        .I2(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[0] ),
        .I3(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[1] ),
        .I4(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[3] ),
        .I5(s_axis_tready127_out__0),
        .O(i2s_sdata_out_sr_bit_cnt[3]));
  LUT6 #(
    .INIT(64'h00000000AAA80002)) 
    \i2s_sdata_out_sr_bit_cnt[4]_i_1 
       (.I0(i2s_fsm_state__0[1]),
        .I1(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[3] ),
        .I2(\i2s_sdata_out_sr_bit_cnt[4]_i_2_n_0 ),
        .I3(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[2] ),
        .I4(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[4] ),
        .I5(s_axis_tready127_out__0),
        .O(i2s_sdata_out_sr_bit_cnt[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \i2s_sdata_out_sr_bit_cnt[4]_i_2 
       (.I0(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[0] ),
        .I1(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[1] ),
        .O(\i2s_sdata_out_sr_bit_cnt[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF8000000000FFFF)) 
    \i2s_sdata_out_sr_bit_cnt[5]_i_1 
       (.I0(p_33_in),
        .I1(m_axis_tvalid1__6),
        .I2(s_axis_tready1__0),
        .I3(s_axis_tready127_out__0),
        .I4(i2s_fsm_state__0[0]),
        .I5(i2s_fsm_state__0[1]),
        .O(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFA900A900A900)) 
    \i2s_sdata_out_sr_bit_cnt[5]_i_2 
       (.I0(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[5] ),
        .I1(\i2s_sdata_out_sr_bit_cnt[5]_i_6_n_0 ),
        .I2(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[4] ),
        .I3(i2s_fsm_state__0[1]),
        .I4(s_axis_tvalid),
        .I5(s_axis_tready_reg_0),
        .O(i2s_sdata_out_sr_bit_cnt[5]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    \i2s_sdata_out_sr_bit_cnt[5]_i_3 
       (.I0(i2s_bclk_reg_0),
        .I1(i2s_clk_div_en_reg_n_0),
        .I2(\m_axis_tdata[31]_i_6_n_0 ),
        .I3(\m_axis_tdata[31]_i_7_n_0 ),
        .I4(\m_axis_tdata[31]_i_8_n_0 ),
        .O(p_33_in));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \i2s_sdata_out_sr_bit_cnt[5]_i_4 
       (.I0(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[1] ),
        .I1(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[0] ),
        .I2(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[4] ),
        .I3(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[5] ),
        .I4(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[2] ),
        .I5(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[3] ),
        .O(s_axis_tready1__0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i2s_sdata_out_sr_bit_cnt[5]_i_5 
       (.I0(s_axis_tvalid),
        .I1(s_axis_tready_reg_0),
        .O(s_axis_tready127_out__0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \i2s_sdata_out_sr_bit_cnt[5]_i_6 
       (.I0(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[2] ),
        .I1(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[0] ),
        .I2(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[1] ),
        .I3(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[3] ),
        .O(\i2s_sdata_out_sr_bit_cnt[5]_i_6_n_0 ));
  FDRE \i2s_sdata_out_sr_bit_cnt_reg[0] 
       (.C(aclk),
        .CE(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_out_sr_bit_cnt[0]),
        .Q(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[0] ),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_sdata_out_sr_bit_cnt_reg[1] 
       (.C(aclk),
        .CE(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_out_sr_bit_cnt[1]),
        .Q(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[1] ),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_sdata_out_sr_bit_cnt_reg[2] 
       (.C(aclk),
        .CE(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_out_sr_bit_cnt[2]),
        .Q(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[2] ),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_sdata_out_sr_bit_cnt_reg[3] 
       (.C(aclk),
        .CE(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_out_sr_bit_cnt[3]),
        .Q(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[3] ),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_sdata_out_sr_bit_cnt_reg[4] 
       (.C(aclk),
        .CE(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_out_sr_bit_cnt[4]),
        .Q(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[4] ),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_sdata_out_sr_bit_cnt_reg[5] 
       (.C(aclk),
        .CE(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_out_sr_bit_cnt[5]),
        .Q(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[5] ),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_sdata_out_sr_reg[0] 
       (.C(aclk),
        .CE(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_out_sr[0]),
        .Q(\i2s_sdata_out_sr_reg_n_0_[0] ),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_sdata_out_sr_reg[10] 
       (.C(aclk),
        .CE(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_out_sr[10]),
        .Q(\i2s_sdata_out_sr_reg_n_0_[10] ),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_sdata_out_sr_reg[11] 
       (.C(aclk),
        .CE(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_out_sr[11]),
        .Q(\i2s_sdata_out_sr_reg_n_0_[11] ),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_sdata_out_sr_reg[12] 
       (.C(aclk),
        .CE(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_out_sr[12]),
        .Q(\i2s_sdata_out_sr_reg_n_0_[12] ),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_sdata_out_sr_reg[13] 
       (.C(aclk),
        .CE(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_out_sr[13]),
        .Q(\i2s_sdata_out_sr_reg_n_0_[13] ),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_sdata_out_sr_reg[14] 
       (.C(aclk),
        .CE(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_out_sr[14]),
        .Q(\i2s_sdata_out_sr_reg_n_0_[14] ),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_sdata_out_sr_reg[15] 
       (.C(aclk),
        .CE(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_out_sr[15]),
        .Q(\i2s_sdata_out_sr_reg_n_0_[15] ),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_sdata_out_sr_reg[16] 
       (.C(aclk),
        .CE(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_out_sr[16]),
        .Q(\i2s_sdata_out_sr_reg_n_0_[16] ),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_sdata_out_sr_reg[17] 
       (.C(aclk),
        .CE(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_out_sr[17]),
        .Q(\i2s_sdata_out_sr_reg_n_0_[17] ),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_sdata_out_sr_reg[18] 
       (.C(aclk),
        .CE(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_out_sr[18]),
        .Q(\i2s_sdata_out_sr_reg_n_0_[18] ),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_sdata_out_sr_reg[19] 
       (.C(aclk),
        .CE(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_out_sr[19]),
        .Q(\i2s_sdata_out_sr_reg_n_0_[19] ),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_sdata_out_sr_reg[1] 
       (.C(aclk),
        .CE(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_out_sr[1]),
        .Q(\i2s_sdata_out_sr_reg_n_0_[1] ),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_sdata_out_sr_reg[20] 
       (.C(aclk),
        .CE(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_out_sr[20]),
        .Q(\i2s_sdata_out_sr_reg_n_0_[20] ),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_sdata_out_sr_reg[21] 
       (.C(aclk),
        .CE(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_out_sr[21]),
        .Q(\i2s_sdata_out_sr_reg_n_0_[21] ),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_sdata_out_sr_reg[22] 
       (.C(aclk),
        .CE(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_out_sr[22]),
        .Q(\i2s_sdata_out_sr_reg_n_0_[22] ),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_sdata_out_sr_reg[23] 
       (.C(aclk),
        .CE(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_out_sr[23]),
        .Q(\i2s_sdata_out_sr_reg_n_0_[23] ),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_sdata_out_sr_reg[24] 
       (.C(aclk),
        .CE(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_out_sr[24]),
        .Q(\i2s_sdata_out_sr_reg_n_0_[24] ),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_sdata_out_sr_reg[25] 
       (.C(aclk),
        .CE(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_out_sr[25]),
        .Q(\i2s_sdata_out_sr_reg_n_0_[25] ),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_sdata_out_sr_reg[26] 
       (.C(aclk),
        .CE(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_out_sr[26]),
        .Q(\i2s_sdata_out_sr_reg_n_0_[26] ),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_sdata_out_sr_reg[27] 
       (.C(aclk),
        .CE(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_out_sr[27]),
        .Q(\i2s_sdata_out_sr_reg_n_0_[27] ),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_sdata_out_sr_reg[28] 
       (.C(aclk),
        .CE(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_out_sr[28]),
        .Q(\i2s_sdata_out_sr_reg_n_0_[28] ),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_sdata_out_sr_reg[29] 
       (.C(aclk),
        .CE(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_out_sr[29]),
        .Q(\i2s_sdata_out_sr_reg_n_0_[29] ),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_sdata_out_sr_reg[2] 
       (.C(aclk),
        .CE(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_out_sr[2]),
        .Q(\i2s_sdata_out_sr_reg_n_0_[2] ),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_sdata_out_sr_reg[30] 
       (.C(aclk),
        .CE(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_out_sr[30]),
        .Q(\i2s_sdata_out_sr_reg_n_0_[30] ),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_sdata_out_sr_reg[31] 
       (.C(aclk),
        .CE(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_out_sr[31]),
        .Q(\i2s_sdata_out_sr_reg_n_0_[31] ),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_sdata_out_sr_reg[3] 
       (.C(aclk),
        .CE(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_out_sr[3]),
        .Q(\i2s_sdata_out_sr_reg_n_0_[3] ),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_sdata_out_sr_reg[4] 
       (.C(aclk),
        .CE(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_out_sr[4]),
        .Q(\i2s_sdata_out_sr_reg_n_0_[4] ),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_sdata_out_sr_reg[5] 
       (.C(aclk),
        .CE(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_out_sr[5]),
        .Q(\i2s_sdata_out_sr_reg_n_0_[5] ),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_sdata_out_sr_reg[6] 
       (.C(aclk),
        .CE(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_out_sr[6]),
        .Q(\i2s_sdata_out_sr_reg_n_0_[6] ),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_sdata_out_sr_reg[7] 
       (.C(aclk),
        .CE(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_out_sr[7]),
        .Q(\i2s_sdata_out_sr_reg_n_0_[7] ),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_sdata_out_sr_reg[8] 
       (.C(aclk),
        .CE(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_out_sr[8]),
        .Q(\i2s_sdata_out_sr_reg_n_0_[8] ),
        .R(m_axis_tvalid12_in));
  FDRE \i2s_sdata_out_sr_reg[9] 
       (.C(aclk),
        .CE(\i2s_sdata_out_sr_bit_cnt[5]_i_1_n_0 ),
        .D(i2s_sdata_out_sr[9]),
        .Q(\i2s_sdata_out_sr_reg_n_0_[9] ),
        .R(m_axis_tvalid12_in));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \m_axis_tdata[31]_i_1 
       (.I0(i2s_fsm_state__0[1]),
        .I1(i2s_fsm_state__0[0]),
        .I2(m_axis_tvalid1__6),
        .I3(\m_axis_tdata[31]_i_3_n_0 ),
        .I4(m_axis_tvalid0__3),
        .I5(p_0_in_1),
        .O(\m_axis_tdata[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \m_axis_tdata[31]_i_3 
       (.I0(i2s_clk_div_en_reg_n_0),
        .I1(\m_axis_tdata[31]_i_6_n_0 ),
        .I2(\m_axis_tdata[31]_i_7_n_0 ),
        .I3(\m_axis_tdata[31]_i_8_n_0 ),
        .I4(i2s_bclk_reg_0),
        .O(\m_axis_tdata[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[31]_i_4 
       (.I0(\i2s_chan_en_reg_n_0_[3] ),
        .I1(\i2s_chan_en_reg_n_0_[2] ),
        .I2(\i2s_chan_cnt_reg_n_0_[1] ),
        .I3(\i2s_chan_en_reg_n_0_[1] ),
        .I4(\i2s_chan_cnt_reg_n_0_[0] ),
        .I5(\i2s_chan_en_reg_n_0_[0] ),
        .O(\m_axis_tdata[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[31]_i_5 
       (.I0(\i2s_chan_en_reg_n_0_[7] ),
        .I1(\i2s_chan_en_reg_n_0_[6] ),
        .I2(\i2s_chan_cnt_reg_n_0_[1] ),
        .I3(\i2s_chan_en_reg_n_0_[5] ),
        .I4(\i2s_chan_cnt_reg_n_0_[0] ),
        .I5(\i2s_chan_en_reg_n_0_[4] ),
        .O(\m_axis_tdata[31]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h6FF6)) 
    \m_axis_tdata[31]_i_6 
       (.I0(i2s_bclk_div_cnt_reg[6]),
        .I1(i2s_bclk_div[6]),
        .I2(i2s_bclk_div_cnt_reg[7]),
        .I3(i2s_bclk_div[7]),
        .O(\m_axis_tdata[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \m_axis_tdata[31]_i_7 
       (.I0(i2s_bclk_div_cnt_reg[3]),
        .I1(i2s_bclk_div[3]),
        .I2(i2s_bclk_div[5]),
        .I3(i2s_bclk_div_cnt_reg[5]),
        .I4(i2s_bclk_div[4]),
        .I5(i2s_bclk_div_cnt_reg[4]),
        .O(\m_axis_tdata[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \m_axis_tdata[31]_i_8 
       (.I0(i2s_bclk_div_cnt_reg[0]),
        .I1(i2s_bclk_div[0]),
        .I2(i2s_bclk_div[2]),
        .I3(i2s_bclk_div_cnt_reg[2]),
        .I4(i2s_bclk_div[1]),
        .I5(i2s_bclk_div_cnt_reg[1]),
        .O(\m_axis_tdata[31]_i_8_n_0 ));
  FDRE \m_axis_tdata_reg[0] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(i2s_sdata_in),
        .Q(m_axis_tdata[0]),
        .R(m_axis_tvalid12_in));
  FDRE \m_axis_tdata_reg[10] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(p_1_in__0[10]),
        .Q(m_axis_tdata[10]),
        .R(m_axis_tvalid12_in));
  FDRE \m_axis_tdata_reg[11] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(p_1_in__0[11]),
        .Q(m_axis_tdata[11]),
        .R(m_axis_tvalid12_in));
  FDRE \m_axis_tdata_reg[12] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(p_1_in__0[12]),
        .Q(m_axis_tdata[12]),
        .R(m_axis_tvalid12_in));
  FDRE \m_axis_tdata_reg[13] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(p_1_in__0[13]),
        .Q(m_axis_tdata[13]),
        .R(m_axis_tvalid12_in));
  FDRE \m_axis_tdata_reg[14] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(p_1_in__0[14]),
        .Q(m_axis_tdata[14]),
        .R(m_axis_tvalid12_in));
  FDRE \m_axis_tdata_reg[15] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(p_1_in__0[15]),
        .Q(m_axis_tdata[15]),
        .R(m_axis_tvalid12_in));
  FDRE \m_axis_tdata_reg[16] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(p_1_in__0[16]),
        .Q(m_axis_tdata[16]),
        .R(m_axis_tvalid12_in));
  FDRE \m_axis_tdata_reg[17] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(p_1_in__0[17]),
        .Q(m_axis_tdata[17]),
        .R(m_axis_tvalid12_in));
  FDRE \m_axis_tdata_reg[18] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(p_1_in__0[18]),
        .Q(m_axis_tdata[18]),
        .R(m_axis_tvalid12_in));
  FDRE \m_axis_tdata_reg[19] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(p_1_in__0[19]),
        .Q(m_axis_tdata[19]),
        .R(m_axis_tvalid12_in));
  FDRE \m_axis_tdata_reg[1] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(p_1_in__0[1]),
        .Q(m_axis_tdata[1]),
        .R(m_axis_tvalid12_in));
  FDRE \m_axis_tdata_reg[20] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(p_1_in__0[20]),
        .Q(m_axis_tdata[20]),
        .R(m_axis_tvalid12_in));
  FDRE \m_axis_tdata_reg[21] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(p_1_in__0[21]),
        .Q(m_axis_tdata[21]),
        .R(m_axis_tvalid12_in));
  FDRE \m_axis_tdata_reg[22] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(p_1_in__0[22]),
        .Q(m_axis_tdata[22]),
        .R(m_axis_tvalid12_in));
  FDRE \m_axis_tdata_reg[23] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(p_1_in__0[23]),
        .Q(m_axis_tdata[23]),
        .R(m_axis_tvalid12_in));
  FDRE \m_axis_tdata_reg[24] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(p_1_in__0[24]),
        .Q(m_axis_tdata[24]),
        .R(m_axis_tvalid12_in));
  FDRE \m_axis_tdata_reg[25] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(p_1_in__0[25]),
        .Q(m_axis_tdata[25]),
        .R(m_axis_tvalid12_in));
  FDRE \m_axis_tdata_reg[26] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(p_1_in__0[26]),
        .Q(m_axis_tdata[26]),
        .R(m_axis_tvalid12_in));
  FDRE \m_axis_tdata_reg[27] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(p_1_in__0[27]),
        .Q(m_axis_tdata[27]),
        .R(m_axis_tvalid12_in));
  FDRE \m_axis_tdata_reg[28] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(p_1_in__0[28]),
        .Q(m_axis_tdata[28]),
        .R(m_axis_tvalid12_in));
  FDRE \m_axis_tdata_reg[29] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(p_1_in__0[29]),
        .Q(m_axis_tdata[29]),
        .R(m_axis_tvalid12_in));
  FDRE \m_axis_tdata_reg[2] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(p_1_in__0[2]),
        .Q(m_axis_tdata[2]),
        .R(m_axis_tvalid12_in));
  FDRE \m_axis_tdata_reg[30] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(p_1_in__0[30]),
        .Q(m_axis_tdata[30]),
        .R(m_axis_tvalid12_in));
  FDRE \m_axis_tdata_reg[31] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(p_1_in__0[31]),
        .Q(m_axis_tdata[31]),
        .R(m_axis_tvalid12_in));
  MUXF7 \m_axis_tdata_reg[31]_i_2 
       (.I0(\m_axis_tdata[31]_i_4_n_0 ),
        .I1(\m_axis_tdata[31]_i_5_n_0 ),
        .O(m_axis_tvalid1__6),
        .S(\i2s_chan_cnt_reg_n_0_[2] ));
  FDRE \m_axis_tdata_reg[3] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(p_1_in__0[3]),
        .Q(m_axis_tdata[3]),
        .R(m_axis_tvalid12_in));
  FDRE \m_axis_tdata_reg[4] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(p_1_in__0[4]),
        .Q(m_axis_tdata[4]),
        .R(m_axis_tvalid12_in));
  FDRE \m_axis_tdata_reg[5] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(p_1_in__0[5]),
        .Q(m_axis_tdata[5]),
        .R(m_axis_tvalid12_in));
  FDRE \m_axis_tdata_reg[6] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(p_1_in__0[6]),
        .Q(m_axis_tdata[6]),
        .R(m_axis_tvalid12_in));
  FDRE \m_axis_tdata_reg[7] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(p_1_in__0[7]),
        .Q(m_axis_tdata[7]),
        .R(m_axis_tvalid12_in));
  FDRE \m_axis_tdata_reg[8] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(p_1_in__0[8]),
        .Q(m_axis_tdata[8]),
        .R(m_axis_tvalid12_in));
  FDRE \m_axis_tdata_reg[9] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(p_1_in__0[9]),
        .Q(m_axis_tdata[9]),
        .R(m_axis_tvalid12_in));
  LUT1 #(
    .INIT(2'h1)) 
    m_axis_tvalid_i_1
       (.I0(i2s_en),
        .O(m_axis_tvalid12_in));
  LUT6 #(
    .INIT(64'h2FFFFFFFA0000000)) 
    m_axis_tvalid_i_2
       (.I0(m_axis_tvalid0__3),
        .I1(m_axis_tready),
        .I2(i2s_fsm_state__0[1]),
        .I3(i2s_fsm_state__0[0]),
        .I4(m_axis_tvalid_i_4_n_0),
        .I5(m_axis_tvalid_reg_0),
        .O(m_axis_tvalid_i_2_n_0));
  LUT5 #(
    .INIT(32'h80000000)) 
    m_axis_tvalid_i_3
       (.I0(\i2s_sdata_in_sr_bit_cnt_reg_n_0_[0] ),
        .I1(\i2s_sdata_in_sr_bit_cnt_reg_n_0_[3] ),
        .I2(\i2s_sdata_in_sr_bit_cnt_reg_n_0_[4] ),
        .I3(\i2s_sdata_in_sr_bit_cnt_reg_n_0_[1] ),
        .I4(\i2s_sdata_in_sr_bit_cnt_reg_n_0_[2] ),
        .O(m_axis_tvalid0__3));
  LUT6 #(
    .INIT(64'h8888F88888888888)) 
    m_axis_tvalid_i_4
       (.I0(m_axis_tready),
        .I1(m_axis_tvalid_reg_0),
        .I2(m_axis_tvalid1__6),
        .I3(\m_axis_tdata[31]_i_3_n_0 ),
        .I4(p_0_in_1),
        .I5(m_axis_tvalid0__3),
        .O(m_axis_tvalid_i_4_n_0));
  FDRE m_axis_tvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_axis_tvalid_i_2_n_0),
        .Q(m_axis_tvalid_reg_0),
        .R(m_axis_tvalid12_in));
  LUT4 #(
    .INIT(16'hFB08)) 
    \s_axi_araddr_q[2]_i_1 
       (.I0(s_axi_araddr[0]),
        .I1(s_axi_arvalid),
        .I2(s_axi_arready),
        .I3(sel0[0]),
        .O(\s_axi_araddr_q[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \s_axi_araddr_q[3]_i_1 
       (.I0(s_axi_araddr[1]),
        .I1(s_axi_arvalid),
        .I2(s_axi_arready),
        .I3(sel0[1]),
        .O(\s_axi_araddr_q[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \s_axi_araddr_q[4]_i_1 
       (.I0(s_axi_araddr[2]),
        .I1(s_axi_arvalid),
        .I2(s_axi_arready),
        .I3(sel0[2]),
        .O(\s_axi_araddr_q[4]_i_1_n_0 ));
  FDRE \s_axi_araddr_q_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\s_axi_araddr_q[2]_i_1_n_0 ),
        .Q(sel0[0]),
        .R(p_0_in));
  FDRE \s_axi_araddr_q_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\s_axi_araddr_q[3]_i_1_n_0 ),
        .Q(sel0[1]),
        .R(p_0_in));
  FDRE \s_axi_araddr_q_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\s_axi_araddr_q[4]_i_1_n_0 ),
        .Q(sel0[2]),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
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
    .INIT(64'hF7FFF700F700F700)) 
    s_axi_aw_en_i_1
       (.I0(s_axi_wvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_awready),
        .I3(s_axi_aw_en_reg_n_0),
        .I4(s_axi_bready),
        .I5(s_axi_bvalid),
        .O(s_axi_aw_en_i_1_n_0));
  FDSE s_axi_aw_en_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_axi_aw_en_i_1_n_0),
        .Q(s_axi_aw_en_reg_n_0),
        .S(p_0_in));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \s_axi_awaddr_q[2]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(s_axi_aw_en_reg_n_0),
        .I2(s_axi_awready),
        .I3(s_axi_awvalid),
        .I4(s_axi_wvalid),
        .I5(p_1_in__0_0[0]),
        .O(\s_axi_awaddr_q[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \s_axi_awaddr_q[3]_i_1 
       (.I0(s_axi_awaddr[1]),
        .I1(s_axi_aw_en_reg_n_0),
        .I2(s_axi_awready),
        .I3(s_axi_awvalid),
        .I4(s_axi_wvalid),
        .I5(p_1_in__0_0[1]),
        .O(\s_axi_awaddr_q[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \s_axi_awaddr_q[4]_i_1 
       (.I0(s_axi_awaddr[2]),
        .I1(s_axi_aw_en_reg_n_0),
        .I2(s_axi_awready),
        .I3(s_axi_awvalid),
        .I4(s_axi_wvalid),
        .I5(p_1_in__0_0[2]),
        .O(\s_axi_awaddr_q[4]_i_1_n_0 ));
  FDRE \s_axi_awaddr_q_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\s_axi_awaddr_q[2]_i_1_n_0 ),
        .Q(p_1_in__0_0[0]),
        .R(p_0_in));
  FDRE \s_axi_awaddr_q_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\s_axi_awaddr_q[3]_i_1_n_0 ),
        .Q(p_1_in__0_0[1]),
        .R(p_0_in));
  FDRE \s_axi_awaddr_q_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\s_axi_awaddr_q[4]_i_1_n_0 ),
        .Q(p_1_in__0_0[2]),
        .R(p_0_in));
  LUT1 #(
    .INIT(2'h1)) 
    s_axi_awready_i_1
       (.I0(aresetn),
        .O(p_0_in));
  LUT4 #(
    .INIT(16'h2000)) 
    s_axi_awready_i_2
       (.I0(s_axi_aw_en_reg_n_0),
        .I1(s_axi_awready),
        .I2(s_axi_awvalid),
        .I3(s_axi_wvalid),
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
  LUT5 #(
    .INIT(32'h8A8ABA8A)) 
    \s_axi_rdata[0]_i_1 
       (.I0(\s_axi_rdata[0]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(i2s_lrclk_div[0]),
        .I4(sel0[0]),
        .O(s_axi_rdata_5[0]));
  LUT6 #(
    .INIT(64'h55C050C005C000C0)) 
    \s_axi_rdata[0]_i_2 
       (.I0(sel0[2]),
        .I1(i2s_clk_div_en_reg_n_0),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(i2s_mclk_div[0]),
        .I5(i2s_bclk_div[0]),
        .O(\s_axi_rdata[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h02023000)) 
    \s_axi_rdata[10]_i_1 
       (.I0(\i2s_chan_en_reg_n_0_[2] ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(i2s_lrclk_div[10]),
        .I4(sel0[0]),
        .O(s_axi_rdata_5[10]));
  LUT5 #(
    .INIT(32'h02023000)) 
    \s_axi_rdata[11]_i_1 
       (.I0(\i2s_chan_en_reg_n_0_[3] ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(i2s_lrclk_div[11]),
        .I4(sel0[0]),
        .O(s_axi_rdata_5[11]));
  LUT5 #(
    .INIT(32'h02023000)) 
    \s_axi_rdata[12]_i_1 
       (.I0(\i2s_chan_en_reg_n_0_[4] ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(i2s_lrclk_div[12]),
        .I4(sel0[0]),
        .O(s_axi_rdata_5[12]));
  LUT5 #(
    .INIT(32'h02023000)) 
    \s_axi_rdata[13]_i_1 
       (.I0(\i2s_chan_en_reg_n_0_[5] ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(i2s_lrclk_div[13]),
        .I4(sel0[0]),
        .O(s_axi_rdata_5[13]));
  LUT5 #(
    .INIT(32'h02023000)) 
    \s_axi_rdata[14]_i_1 
       (.I0(\i2s_chan_en_reg_n_0_[6] ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(i2s_lrclk_div[14]),
        .I4(sel0[0]),
        .O(s_axi_rdata_5[14]));
  LUT5 #(
    .INIT(32'h02023000)) 
    \s_axi_rdata[15]_i_1 
       (.I0(\i2s_chan_en_reg_n_0_[7] ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(i2s_lrclk_div[15]),
        .I4(sel0[0]),
        .O(s_axi_rdata_5[15]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h000D)) 
    \s_axi_rdata[16]_i_1 
       (.I0(sel0[0]),
        .I1(i2s_chan_max[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .O(s_axi_rdata_5[16]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \s_axi_rdata[17]_i_1 
       (.I0(i2s_chan_max[1]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .O(s_axi_rdata_5[17]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \s_axi_rdata[18]_i_1 
       (.I0(i2s_chan_max[2]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .O(s_axi_rdata_5[18]));
  LUT5 #(
    .INIT(32'h8A8ABA8A)) 
    \s_axi_rdata[1]_i_1 
       (.I0(\s_axi_rdata[1]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(i2s_lrclk_div[1]),
        .I4(sel0[0]),
        .O(s_axi_rdata_5[1]));
  LUT6 #(
    .INIT(64'h55C050C005C000C0)) 
    \s_axi_rdata[1]_i_2 
       (.I0(sel0[2]),
        .I1(i2s_en),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(i2s_mclk_div[1]),
        .I5(i2s_bclk_div[1]),
        .O(\s_axi_rdata[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \s_axi_rdata[20]_i_1 
       (.I0(i2s_chan_bit_sz_reg_n_0),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .O(s_axi_rdata_5[20]));
  LUT6 #(
    .INIT(64'h00A000A00FC000C0)) 
    \s_axi_rdata[2]_i_1 
       (.I0(i2s_bclk_div[2]),
        .I1(i2s_mclk_div[2]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(i2s_lrclk_div[2]),
        .I5(sel0[0]),
        .O(s_axi_rdata_5[2]));
  LUT6 #(
    .INIT(64'h00A000A00FC000C0)) 
    \s_axi_rdata[3]_i_1 
       (.I0(i2s_bclk_div[3]),
        .I1(i2s_mclk_div[3]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(i2s_lrclk_div[3]),
        .I5(sel0[0]),
        .O(s_axi_rdata_5[3]));
  LUT6 #(
    .INIT(64'h00A000A00FC000C0)) 
    \s_axi_rdata[4]_i_1 
       (.I0(i2s_bclk_div[4]),
        .I1(i2s_mclk_div[4]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(i2s_lrclk_div[4]),
        .I5(sel0[0]),
        .O(s_axi_rdata_5[4]));
  LUT6 #(
    .INIT(64'h00A000A00FC000C0)) 
    \s_axi_rdata[5]_i_1 
       (.I0(i2s_bclk_div[5]),
        .I1(i2s_mclk_div[5]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(i2s_lrclk_div[5]),
        .I5(sel0[0]),
        .O(s_axi_rdata_5[5]));
  LUT6 #(
    .INIT(64'h00A000A00FC000C0)) 
    \s_axi_rdata[6]_i_1 
       (.I0(i2s_bclk_div[6]),
        .I1(i2s_mclk_div[6]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(i2s_lrclk_div[6]),
        .I5(sel0[0]),
        .O(s_axi_rdata_5[6]));
  LUT6 #(
    .INIT(64'h00A000A00FC000C0)) 
    \s_axi_rdata[7]_i_1 
       (.I0(i2s_bclk_div[7]),
        .I1(i2s_mclk_div[7]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(i2s_lrclk_div[7]),
        .I5(sel0[0]),
        .O(s_axi_rdata_5[7]));
  LUT5 #(
    .INIT(32'h02023000)) 
    \s_axi_rdata[8]_i_1 
       (.I0(\i2s_chan_en_reg_n_0_[0] ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(i2s_lrclk_div[8]),
        .I4(sel0[0]),
        .O(s_axi_rdata_5[8]));
  LUT5 #(
    .INIT(32'h02023000)) 
    \s_axi_rdata[9]_i_1 
       (.I0(\i2s_chan_en_reg_n_0_[1] ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(i2s_lrclk_div[9]),
        .I4(sel0[0]),
        .O(s_axi_rdata_5[9]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[0] 
       (.C(aclk),
        .CE(s_axi_reg_rden__0),
        .D(s_axi_rdata_5[0]),
        .Q(s_axi_rdata[0]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[10] 
       (.C(aclk),
        .CE(s_axi_reg_rden__0),
        .D(s_axi_rdata_5[10]),
        .Q(s_axi_rdata[10]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[11] 
       (.C(aclk),
        .CE(s_axi_reg_rden__0),
        .D(s_axi_rdata_5[11]),
        .Q(s_axi_rdata[11]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[12] 
       (.C(aclk),
        .CE(s_axi_reg_rden__0),
        .D(s_axi_rdata_5[12]),
        .Q(s_axi_rdata[12]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[13] 
       (.C(aclk),
        .CE(s_axi_reg_rden__0),
        .D(s_axi_rdata_5[13]),
        .Q(s_axi_rdata[13]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[14] 
       (.C(aclk),
        .CE(s_axi_reg_rden__0),
        .D(s_axi_rdata_5[14]),
        .Q(s_axi_rdata[14]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[15] 
       (.C(aclk),
        .CE(s_axi_reg_rden__0),
        .D(s_axi_rdata_5[15]),
        .Q(s_axi_rdata[15]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[16] 
       (.C(aclk),
        .CE(s_axi_reg_rden__0),
        .D(s_axi_rdata_5[16]),
        .Q(s_axi_rdata[16]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[17] 
       (.C(aclk),
        .CE(s_axi_reg_rden__0),
        .D(s_axi_rdata_5[17]),
        .Q(s_axi_rdata[17]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[18] 
       (.C(aclk),
        .CE(s_axi_reg_rden__0),
        .D(s_axi_rdata_5[18]),
        .Q(s_axi_rdata[18]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[1] 
       (.C(aclk),
        .CE(s_axi_reg_rden__0),
        .D(s_axi_rdata_5[1]),
        .Q(s_axi_rdata[1]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[20] 
       (.C(aclk),
        .CE(s_axi_reg_rden__0),
        .D(s_axi_rdata_5[20]),
        .Q(s_axi_rdata[19]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[2] 
       (.C(aclk),
        .CE(s_axi_reg_rden__0),
        .D(s_axi_rdata_5[2]),
        .Q(s_axi_rdata[2]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[3] 
       (.C(aclk),
        .CE(s_axi_reg_rden__0),
        .D(s_axi_rdata_5[3]),
        .Q(s_axi_rdata[3]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[4] 
       (.C(aclk),
        .CE(s_axi_reg_rden__0),
        .D(s_axi_rdata_5[4]),
        .Q(s_axi_rdata[4]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[5] 
       (.C(aclk),
        .CE(s_axi_reg_rden__0),
        .D(s_axi_rdata_5[5]),
        .Q(s_axi_rdata[5]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[6] 
       (.C(aclk),
        .CE(s_axi_reg_rden__0),
        .D(s_axi_rdata_5[6]),
        .Q(s_axi_rdata[6]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[7] 
       (.C(aclk),
        .CE(s_axi_reg_rden__0),
        .D(s_axi_rdata_5[7]),
        .Q(s_axi_rdata[7]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[8] 
       (.C(aclk),
        .CE(s_axi_reg_rden__0),
        .D(s_axi_rdata_5[8]),
        .Q(s_axi_rdata[8]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[9] 
       (.C(aclk),
        .CE(s_axi_reg_rden__0),
        .D(s_axi_rdata_5[9]),
        .Q(s_axi_rdata[9]),
        .R(p_0_in));
  LUT3 #(
    .INIT(8'h08)) 
    s_axi_reg_rden
       (.I0(s_axi_arvalid),
        .I1(s_axi_arready),
        .I2(s_axi_rvalid),
        .O(s_axi_reg_rden__0));
  LUT4 #(
    .INIT(16'h08F8)) 
    s_axi_rvalid_i_1
       (.I0(s_axi_arready),
        .I1(s_axi_arvalid),
        .I2(s_axi_rvalid),
        .I3(s_axi_rready),
        .O(s_axi_rvalid_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *) 
  FDRE s_axi_rvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_axi_rvalid_i_1_n_0),
        .Q(s_axi_rvalid),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    s_axi_wready_i_1
       (.I0(s_axi_wready),
        .I1(s_axi_aw_en_reg_n_0),
        .I2(s_axi_awvalid),
        .I3(s_axi_wvalid),
        .O(s_axi_wready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *) 
  FDRE s_axi_wready_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_axi_wready_i_1_n_0),
        .Q(s_axi_wready),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h0B88FF00FF000FFF)) 
    s_axis_tready_i_1
       (.I0(s_axis_tready0__0),
        .I1(s_axis_tready9_out__2),
        .I2(s_axis_tvalid),
        .I3(s_axis_tready_reg_0),
        .I4(i2s_fsm_state__0[0]),
        .I5(i2s_fsm_state__0[1]),
        .O(s_axis_tready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    s_axis_tready_i_2
       (.I0(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[1] ),
        .I1(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[4] ),
        .I2(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[5] ),
        .I3(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[2] ),
        .I4(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[3] ),
        .O(s_axis_tready0__0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00000800)) 
    s_axis_tready_i_3
       (.I0(p_33_in),
        .I1(m_axis_tvalid1__6),
        .I2(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[1] ),
        .I3(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[0] ),
        .I4(s_axis_tready_i_4_n_0),
        .O(s_axis_tready9_out__2));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    s_axis_tready_i_4
       (.I0(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[3] ),
        .I1(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[2] ),
        .I2(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[5] ),
        .I3(\i2s_sdata_out_sr_bit_cnt_reg_n_0_[4] ),
        .O(s_axis_tready_i_4_n_0));
  FDRE s_axis_tready_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tready_i_1_n_0),
        .Q(s_axis_tready_reg_0),
        .R(m_axis_tvalid12_in));
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
