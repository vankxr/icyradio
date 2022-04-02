// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Mon Jan 31 13:10:13 2022
// Host        : xubuntu-dev running 64-bit Ubuntu 20.04.3 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/joao/icyradio/firmware/icyradio.gen/sources_1/bd/icyradio/ip/icyradio_xbar_8/icyradio_xbar_8_stub.v
// Design      : icyradio_xbar_8
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axi_crossbar_v2_1_25_axi_crossbar,Vivado 2021.1" *)
module icyradio_xbar_8(aclk, aresetn, s_axi_awaddr, s_axi_awprot, 
  s_axi_awvalid, s_axi_awready, s_axi_wdata, s_axi_wstrb, s_axi_wvalid, s_axi_wready, 
  s_axi_bresp, s_axi_bvalid, s_axi_bready, s_axi_araddr, s_axi_arprot, s_axi_arvalid, 
  s_axi_arready, s_axi_rdata, s_axi_rresp, s_axi_rvalid, s_axi_rready, m_axi_awaddr, 
  m_axi_awprot, m_axi_awvalid, m_axi_awready, m_axi_wdata, m_axi_wstrb, m_axi_wvalid, 
  m_axi_wready, m_axi_bresp, m_axi_bvalid, m_axi_bready, m_axi_araddr, m_axi_arprot, 
  m_axi_arvalid, m_axi_arready, m_axi_rdata, m_axi_rresp, m_axi_rvalid, m_axi_rready)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,s_axi_awaddr[31:0],s_axi_awprot[2:0],s_axi_awvalid[0:0],s_axi_awready[0:0],s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wvalid[0:0],s_axi_wready[0:0],s_axi_bresp[1:0],s_axi_bvalid[0:0],s_axi_bready[0:0],s_axi_araddr[31:0],s_axi_arprot[2:0],s_axi_arvalid[0:0],s_axi_arready[0:0],s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rvalid[0:0],s_axi_rready[0:0],m_axi_awaddr[415:0],m_axi_awprot[38:0],m_axi_awvalid[12:0],m_axi_awready[12:0],m_axi_wdata[415:0],m_axi_wstrb[51:0],m_axi_wvalid[12:0],m_axi_wready[12:0],m_axi_bresp[25:0],m_axi_bvalid[12:0],m_axi_bready[12:0],m_axi_araddr[415:0],m_axi_arprot[38:0],m_axi_arvalid[12:0],m_axi_arready[12:0],m_axi_rdata[415:0],m_axi_rresp[25:0],m_axi_rvalid[12:0],m_axi_rready[12:0]" */;
  input aclk;
  input aresetn;
  input [31:0]s_axi_awaddr;
  input [2:0]s_axi_awprot;
  input [0:0]s_axi_awvalid;
  output [0:0]s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input [0:0]s_axi_wvalid;
  output [0:0]s_axi_wready;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_bvalid;
  input [0:0]s_axi_bready;
  input [31:0]s_axi_araddr;
  input [2:0]s_axi_arprot;
  input [0:0]s_axi_arvalid;
  output [0:0]s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output [0:0]s_axi_rvalid;
  input [0:0]s_axi_rready;
  output [415:0]m_axi_awaddr;
  output [38:0]m_axi_awprot;
  output [12:0]m_axi_awvalid;
  input [12:0]m_axi_awready;
  output [415:0]m_axi_wdata;
  output [51:0]m_axi_wstrb;
  output [12:0]m_axi_wvalid;
  input [12:0]m_axi_wready;
  input [25:0]m_axi_bresp;
  input [12:0]m_axi_bvalid;
  output [12:0]m_axi_bready;
  output [415:0]m_axi_araddr;
  output [38:0]m_axi_arprot;
  output [12:0]m_axi_arvalid;
  input [12:0]m_axi_arready;
  input [415:0]m_axi_rdata;
  input [25:0]m_axi_rresp;
  input [12:0]m_axi_rvalid;
  output [12:0]m_axi_rready;
endmodule
