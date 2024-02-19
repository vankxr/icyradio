// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Fri Dec 22 02:37:55 2023
// Host        : node4-dev running 64-bit Ubuntu 22.04.3 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/joao/icyradio/firmware/icyradio.gen/sources_1/bd/icyradio/ip/icyradio_axi_qspi_mm_0_1/icyradio_axi_qspi_mm_0_1_stub.v
// Design      : icyradio_axi_qspi_mm_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axi_qspi_mm,Vivado 2021.1" *)
module icyradio_axi_qspi_mm_0_1(aclk, aresetn, s_axi_lite_awaddr, 
  s_axi_lite_awprot, s_axi_lite_awvalid, s_axi_lite_awready, s_axi_lite_wdata, 
  s_axi_lite_wstrb, s_axi_lite_wvalid, s_axi_lite_wready, s_axi_lite_bresp, 
  s_axi_lite_bvalid, s_axi_lite_bready, s_axi_lite_araddr, s_axi_lite_arprot, 
  s_axi_lite_arvalid, s_axi_lite_arready, s_axi_lite_rdata, s_axi_lite_rresp, 
  s_axi_lite_rvalid, s_axi_lite_rready, s_axi_full_awid, s_axi_full_awaddr, 
  s_axi_full_awlen, s_axi_full_awsize, s_axi_full_awburst, s_axi_full_awlock, 
  s_axi_full_awcache, s_axi_full_awprot, s_axi_full_awqos, s_axi_full_awvalid, 
  s_axi_full_awready, s_axi_full_wdata, s_axi_full_wstrb, s_axi_full_wlast, 
  s_axi_full_wvalid, s_axi_full_wready, s_axi_full_bid, s_axi_full_bresp, 
  s_axi_full_bvalid, s_axi_full_bready, s_axi_full_arid, s_axi_full_araddr, 
  s_axi_full_arlen, s_axi_full_arsize, s_axi_full_arburst, s_axi_full_arlock, 
  s_axi_full_arcache, s_axi_full_arprot, s_axi_full_arqos, s_axi_full_arvalid, 
  s_axi_full_arready, s_axi_full_rid, s_axi_full_rdata, s_axi_full_rresp, s_axi_full_rlast, 
  s_axi_full_rvalid, s_axi_full_rready, spi_sck_i, spi_sck_o, spi_sck_t, spi_ss_i, spi_ss_o, 
  spi_ss_t, spi_io0_i, spi_io0_o, spi_io0_t, spi_io1_i, spi_io1_o, spi_io1_t, spi_io2_i, spi_io2_o, 
  spi_io2_t, spi_io3_i, spi_io3_o, spi_io3_t)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,s_axi_lite_awaddr[4:0],s_axi_lite_awprot[2:0],s_axi_lite_awvalid,s_axi_lite_awready,s_axi_lite_wdata[31:0],s_axi_lite_wstrb[3:0],s_axi_lite_wvalid,s_axi_lite_wready,s_axi_lite_bresp[1:0],s_axi_lite_bvalid,s_axi_lite_bready,s_axi_lite_araddr[4:0],s_axi_lite_arprot[2:0],s_axi_lite_arvalid,s_axi_lite_arready,s_axi_lite_rdata[31:0],s_axi_lite_rresp[1:0],s_axi_lite_rvalid,s_axi_lite_rready,s_axi_full_awid[3:0],s_axi_full_awaddr[23:0],s_axi_full_awlen[7:0],s_axi_full_awsize[2:0],s_axi_full_awburst[1:0],s_axi_full_awlock,s_axi_full_awcache[3:0],s_axi_full_awprot[2:0],s_axi_full_awqos[3:0],s_axi_full_awvalid,s_axi_full_awready,s_axi_full_wdata[63:0],s_axi_full_wstrb[7:0],s_axi_full_wlast,s_axi_full_wvalid,s_axi_full_wready,s_axi_full_bid[3:0],s_axi_full_bresp[1:0],s_axi_full_bvalid,s_axi_full_bready,s_axi_full_arid[3:0],s_axi_full_araddr[23:0],s_axi_full_arlen[7:0],s_axi_full_arsize[2:0],s_axi_full_arburst[1:0],s_axi_full_arlock,s_axi_full_arcache[3:0],s_axi_full_arprot[2:0],s_axi_full_arqos[3:0],s_axi_full_arvalid,s_axi_full_arready,s_axi_full_rid[3:0],s_axi_full_rdata[63:0],s_axi_full_rresp[1:0],s_axi_full_rlast,s_axi_full_rvalid,s_axi_full_rready,spi_sck_i,spi_sck_o,spi_sck_t,spi_ss_i[0:0],spi_ss_o[0:0],spi_ss_t,spi_io0_i,spi_io0_o,spi_io0_t,spi_io1_i,spi_io1_o,spi_io1_t,spi_io2_i,spi_io2_o,spi_io2_t,spi_io3_i,spi_io3_o,spi_io3_t" */;
  input aclk;
  input aresetn;
  input [4:0]s_axi_lite_awaddr;
  input [2:0]s_axi_lite_awprot;
  input s_axi_lite_awvalid;
  output s_axi_lite_awready;
  input [31:0]s_axi_lite_wdata;
  input [3:0]s_axi_lite_wstrb;
  input s_axi_lite_wvalid;
  output s_axi_lite_wready;
  output [1:0]s_axi_lite_bresp;
  output s_axi_lite_bvalid;
  input s_axi_lite_bready;
  input [4:0]s_axi_lite_araddr;
  input [2:0]s_axi_lite_arprot;
  input s_axi_lite_arvalid;
  output s_axi_lite_arready;
  output [31:0]s_axi_lite_rdata;
  output [1:0]s_axi_lite_rresp;
  output s_axi_lite_rvalid;
  input s_axi_lite_rready;
  input [3:0]s_axi_full_awid;
  input [23:0]s_axi_full_awaddr;
  input [7:0]s_axi_full_awlen;
  input [2:0]s_axi_full_awsize;
  input [1:0]s_axi_full_awburst;
  input s_axi_full_awlock;
  input [3:0]s_axi_full_awcache;
  input [2:0]s_axi_full_awprot;
  input [3:0]s_axi_full_awqos;
  input s_axi_full_awvalid;
  output s_axi_full_awready;
  input [63:0]s_axi_full_wdata;
  input [7:0]s_axi_full_wstrb;
  input s_axi_full_wlast;
  input s_axi_full_wvalid;
  output s_axi_full_wready;
  output [3:0]s_axi_full_bid;
  output [1:0]s_axi_full_bresp;
  output s_axi_full_bvalid;
  input s_axi_full_bready;
  input [3:0]s_axi_full_arid;
  input [23:0]s_axi_full_araddr;
  input [7:0]s_axi_full_arlen;
  input [2:0]s_axi_full_arsize;
  input [1:0]s_axi_full_arburst;
  input s_axi_full_arlock;
  input [3:0]s_axi_full_arcache;
  input [2:0]s_axi_full_arprot;
  input [3:0]s_axi_full_arqos;
  input s_axi_full_arvalid;
  output s_axi_full_arready;
  output [3:0]s_axi_full_rid;
  output [63:0]s_axi_full_rdata;
  output [1:0]s_axi_full_rresp;
  output s_axi_full_rlast;
  output s_axi_full_rvalid;
  input s_axi_full_rready;
  input spi_sck_i;
  output spi_sck_o;
  output spi_sck_t;
  input [0:0]spi_ss_i;
  output [0:0]spi_ss_o;
  output spi_ss_t;
  input spi_io0_i;
  output spi_io0_o;
  output spi_io0_t;
  input spi_io1_i;
  output spi_io1_o;
  output spi_io1_t;
  input spi_io2_i;
  output spi_io2_o;
  output spi_io2_t;
  input spi_io3_i;
  output spi_io3_o;
  output spi_io3_t;
endmodule
