// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2024 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


//------------------------------------------------------------------------------------
// Filename:    icyradio_axi_bram_ctrl_0_0_stub.sv
// Description: This HDL file is intended to be used with following simulators only:
//
//   Vivado Simulator (XSim)
//   Cadence Xcelium Simulator
//
//------------------------------------------------------------------------------------
`timescale 1ps/1ps

`ifdef XILINX_SIMULATOR

`ifndef XILINX_SIMULATOR_BITASBOOL
`define XILINX_SIMULATOR_BITASBOOL
typedef bit bit_as_bool;
`endif

(* SC_MODULE_EXPORT *)
module icyradio_axi_bram_ctrl_0_0 (
  input bit_as_bool s_axi_aclk,
  input bit_as_bool s_axi_aresetn,
  input bit [3 : 0] s_axi_awid,
  input bit [16 : 0] s_axi_awaddr,
  input bit [7 : 0] s_axi_awlen,
  input bit [2 : 0] s_axi_awsize,
  input bit [1 : 0] s_axi_awburst,
  input bit_as_bool s_axi_awlock,
  input bit [3 : 0] s_axi_awcache,
  input bit [2 : 0] s_axi_awprot,
  input bit_as_bool s_axi_awvalid,
  output bit_as_bool s_axi_awready,
  input bit [63 : 0] s_axi_wdata,
  input bit [7 : 0] s_axi_wstrb,
  input bit_as_bool s_axi_wlast,
  input bit_as_bool s_axi_wvalid,
  output bit_as_bool s_axi_wready,
  output bit [3 : 0] s_axi_bid,
  output bit [1 : 0] s_axi_bresp,
  output bit_as_bool s_axi_bvalid,
  input bit_as_bool s_axi_bready,
  input bit [3 : 0] s_axi_arid,
  input bit [16 : 0] s_axi_araddr,
  input bit [7 : 0] s_axi_arlen,
  input bit [2 : 0] s_axi_arsize,
  input bit [1 : 0] s_axi_arburst,
  input bit_as_bool s_axi_arlock,
  input bit [3 : 0] s_axi_arcache,
  input bit [2 : 0] s_axi_arprot,
  input bit_as_bool s_axi_arvalid,
  output bit_as_bool s_axi_arready,
  output bit [3 : 0] s_axi_rid,
  output bit [63 : 0] s_axi_rdata,
  output bit [1 : 0] s_axi_rresp,
  output bit_as_bool s_axi_rlast,
  output bit_as_bool s_axi_rvalid,
  input bit_as_bool s_axi_rready,
  output bit_as_bool bram_rst_a,
  output bit_as_bool bram_clk_a,
  output bit_as_bool bram_en_a,
  output bit [7 : 0] bram_we_a,
  output bit [16 : 0] bram_addr_a,
  output bit [63 : 0] bram_wrdata_a,
  input bit [63 : 0] bram_rddata_a
);
endmodule
`endif

`ifdef XCELIUM
(* XMSC_MODULE_EXPORT *)
module icyradio_axi_bram_ctrl_0_0 (s_axi_aclk,s_axi_aresetn,s_axi_awid,s_axi_awaddr,s_axi_awlen,s_axi_awsize,s_axi_awburst,s_axi_awlock,s_axi_awcache,s_axi_awprot,s_axi_awvalid,s_axi_awready,s_axi_wdata,s_axi_wstrb,s_axi_wlast,s_axi_wvalid,s_axi_wready,s_axi_bid,s_axi_bresp,s_axi_bvalid,s_axi_bready,s_axi_arid,s_axi_araddr,s_axi_arlen,s_axi_arsize,s_axi_arburst,s_axi_arlock,s_axi_arcache,s_axi_arprot,s_axi_arvalid,s_axi_arready,s_axi_rid,s_axi_rdata,s_axi_rresp,s_axi_rlast,s_axi_rvalid,s_axi_rready,bram_rst_a,bram_clk_a,bram_en_a,bram_we_a,bram_addr_a,bram_wrdata_a,bram_rddata_a)
(* integer foreign = "SystemC";
*);
  input bit s_axi_aclk;
  input bit s_axi_aresetn;
  input bit [3 : 0] s_axi_awid;
  input bit [16 : 0] s_axi_awaddr;
  input bit [7 : 0] s_axi_awlen;
  input bit [2 : 0] s_axi_awsize;
  input bit [1 : 0] s_axi_awburst;
  input bit s_axi_awlock;
  input bit [3 : 0] s_axi_awcache;
  input bit [2 : 0] s_axi_awprot;
  input bit s_axi_awvalid;
  output wire s_axi_awready;
  input bit [63 : 0] s_axi_wdata;
  input bit [7 : 0] s_axi_wstrb;
  input bit s_axi_wlast;
  input bit s_axi_wvalid;
  output wire s_axi_wready;
  output wire [3 : 0] s_axi_bid;
  output wire [1 : 0] s_axi_bresp;
  output wire s_axi_bvalid;
  input bit s_axi_bready;
  input bit [3 : 0] s_axi_arid;
  input bit [16 : 0] s_axi_araddr;
  input bit [7 : 0] s_axi_arlen;
  input bit [2 : 0] s_axi_arsize;
  input bit [1 : 0] s_axi_arburst;
  input bit s_axi_arlock;
  input bit [3 : 0] s_axi_arcache;
  input bit [2 : 0] s_axi_arprot;
  input bit s_axi_arvalid;
  output wire s_axi_arready;
  output wire [3 : 0] s_axi_rid;
  output wire [63 : 0] s_axi_rdata;
  output wire [1 : 0] s_axi_rresp;
  output wire s_axi_rlast;
  output wire s_axi_rvalid;
  input bit s_axi_rready;
  output wire bram_rst_a;
  output wire bram_clk_a;
  output wire bram_en_a;
  output wire [7 : 0] bram_we_a;
  output wire [16 : 0] bram_addr_a;
  output wire [63 : 0] bram_wrdata_a;
  input bit [63 : 0] bram_rddata_a;
endmodule
`endif
