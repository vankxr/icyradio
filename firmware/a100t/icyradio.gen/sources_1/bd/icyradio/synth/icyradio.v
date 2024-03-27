//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
//Date        : Tue Mar 26 17:38:26 2024
//Host        : node4-dev running 64-bit Ubuntu 22.04.4 LTS
//Command     : generate_target icyradio.bd
//Design      : icyradio
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module i00_couplers_imp_1K5SOEI
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

  wire [31:0]i00_couplers_to_i00_couplers_ARADDR;
  wire [2:0]i00_couplers_to_i00_couplers_ARPROT;
  wire [0:0]i00_couplers_to_i00_couplers_ARREADY;
  wire [0:0]i00_couplers_to_i00_couplers_ARVALID;
  wire [31:0]i00_couplers_to_i00_couplers_AWADDR;
  wire [2:0]i00_couplers_to_i00_couplers_AWPROT;
  wire [0:0]i00_couplers_to_i00_couplers_AWREADY;
  wire [0:0]i00_couplers_to_i00_couplers_AWVALID;
  wire [0:0]i00_couplers_to_i00_couplers_BREADY;
  wire [1:0]i00_couplers_to_i00_couplers_BRESP;
  wire [0:0]i00_couplers_to_i00_couplers_BVALID;
  wire [31:0]i00_couplers_to_i00_couplers_RDATA;
  wire [0:0]i00_couplers_to_i00_couplers_RREADY;
  wire [1:0]i00_couplers_to_i00_couplers_RRESP;
  wire [0:0]i00_couplers_to_i00_couplers_RVALID;
  wire [31:0]i00_couplers_to_i00_couplers_WDATA;
  wire [0:0]i00_couplers_to_i00_couplers_WREADY;
  wire [3:0]i00_couplers_to_i00_couplers_WSTRB;
  wire [0:0]i00_couplers_to_i00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = i00_couplers_to_i00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = i00_couplers_to_i00_couplers_ARPROT;
  assign M_AXI_arvalid[0] = i00_couplers_to_i00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = i00_couplers_to_i00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = i00_couplers_to_i00_couplers_AWPROT;
  assign M_AXI_awvalid[0] = i00_couplers_to_i00_couplers_AWVALID;
  assign M_AXI_bready[0] = i00_couplers_to_i00_couplers_BREADY;
  assign M_AXI_rready[0] = i00_couplers_to_i00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = i00_couplers_to_i00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = i00_couplers_to_i00_couplers_WSTRB;
  assign M_AXI_wvalid[0] = i00_couplers_to_i00_couplers_WVALID;
  assign S_AXI_arready[0] = i00_couplers_to_i00_couplers_ARREADY;
  assign S_AXI_awready[0] = i00_couplers_to_i00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = i00_couplers_to_i00_couplers_BRESP;
  assign S_AXI_bvalid[0] = i00_couplers_to_i00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = i00_couplers_to_i00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = i00_couplers_to_i00_couplers_RRESP;
  assign S_AXI_rvalid[0] = i00_couplers_to_i00_couplers_RVALID;
  assign S_AXI_wready[0] = i00_couplers_to_i00_couplers_WREADY;
  assign i00_couplers_to_i00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign i00_couplers_to_i00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign i00_couplers_to_i00_couplers_ARREADY = M_AXI_arready[0];
  assign i00_couplers_to_i00_couplers_ARVALID = S_AXI_arvalid[0];
  assign i00_couplers_to_i00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign i00_couplers_to_i00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign i00_couplers_to_i00_couplers_AWREADY = M_AXI_awready[0];
  assign i00_couplers_to_i00_couplers_AWVALID = S_AXI_awvalid[0];
  assign i00_couplers_to_i00_couplers_BREADY = S_AXI_bready[0];
  assign i00_couplers_to_i00_couplers_BRESP = M_AXI_bresp[1:0];
  assign i00_couplers_to_i00_couplers_BVALID = M_AXI_bvalid[0];
  assign i00_couplers_to_i00_couplers_RDATA = M_AXI_rdata[31:0];
  assign i00_couplers_to_i00_couplers_RREADY = S_AXI_rready[0];
  assign i00_couplers_to_i00_couplers_RRESP = M_AXI_rresp[1:0];
  assign i00_couplers_to_i00_couplers_RVALID = M_AXI_rvalid[0];
  assign i00_couplers_to_i00_couplers_WDATA = S_AXI_wdata[31:0];
  assign i00_couplers_to_i00_couplers_WREADY = M_AXI_wready[0];
  assign i00_couplers_to_i00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign i00_couplers_to_i00_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module i01_couplers_imp_ABVN1N
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

  wire [31:0]i01_couplers_to_i01_couplers_ARADDR;
  wire [2:0]i01_couplers_to_i01_couplers_ARPROT;
  wire [0:0]i01_couplers_to_i01_couplers_ARREADY;
  wire [0:0]i01_couplers_to_i01_couplers_ARVALID;
  wire [31:0]i01_couplers_to_i01_couplers_AWADDR;
  wire [2:0]i01_couplers_to_i01_couplers_AWPROT;
  wire [0:0]i01_couplers_to_i01_couplers_AWREADY;
  wire [0:0]i01_couplers_to_i01_couplers_AWVALID;
  wire [0:0]i01_couplers_to_i01_couplers_BREADY;
  wire [1:0]i01_couplers_to_i01_couplers_BRESP;
  wire [0:0]i01_couplers_to_i01_couplers_BVALID;
  wire [31:0]i01_couplers_to_i01_couplers_RDATA;
  wire [0:0]i01_couplers_to_i01_couplers_RREADY;
  wire [1:0]i01_couplers_to_i01_couplers_RRESP;
  wire [0:0]i01_couplers_to_i01_couplers_RVALID;
  wire [31:0]i01_couplers_to_i01_couplers_WDATA;
  wire [0:0]i01_couplers_to_i01_couplers_WREADY;
  wire [3:0]i01_couplers_to_i01_couplers_WSTRB;
  wire [0:0]i01_couplers_to_i01_couplers_WVALID;

  assign M_AXI_araddr[31:0] = i01_couplers_to_i01_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = i01_couplers_to_i01_couplers_ARPROT;
  assign M_AXI_arvalid[0] = i01_couplers_to_i01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = i01_couplers_to_i01_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = i01_couplers_to_i01_couplers_AWPROT;
  assign M_AXI_awvalid[0] = i01_couplers_to_i01_couplers_AWVALID;
  assign M_AXI_bready[0] = i01_couplers_to_i01_couplers_BREADY;
  assign M_AXI_rready[0] = i01_couplers_to_i01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = i01_couplers_to_i01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = i01_couplers_to_i01_couplers_WSTRB;
  assign M_AXI_wvalid[0] = i01_couplers_to_i01_couplers_WVALID;
  assign S_AXI_arready[0] = i01_couplers_to_i01_couplers_ARREADY;
  assign S_AXI_awready[0] = i01_couplers_to_i01_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = i01_couplers_to_i01_couplers_BRESP;
  assign S_AXI_bvalid[0] = i01_couplers_to_i01_couplers_BVALID;
  assign S_AXI_rdata[31:0] = i01_couplers_to_i01_couplers_RDATA;
  assign S_AXI_rresp[1:0] = i01_couplers_to_i01_couplers_RRESP;
  assign S_AXI_rvalid[0] = i01_couplers_to_i01_couplers_RVALID;
  assign S_AXI_wready[0] = i01_couplers_to_i01_couplers_WREADY;
  assign i01_couplers_to_i01_couplers_ARADDR = S_AXI_araddr[31:0];
  assign i01_couplers_to_i01_couplers_ARPROT = S_AXI_arprot[2:0];
  assign i01_couplers_to_i01_couplers_ARREADY = M_AXI_arready[0];
  assign i01_couplers_to_i01_couplers_ARVALID = S_AXI_arvalid[0];
  assign i01_couplers_to_i01_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign i01_couplers_to_i01_couplers_AWPROT = S_AXI_awprot[2:0];
  assign i01_couplers_to_i01_couplers_AWREADY = M_AXI_awready[0];
  assign i01_couplers_to_i01_couplers_AWVALID = S_AXI_awvalid[0];
  assign i01_couplers_to_i01_couplers_BREADY = S_AXI_bready[0];
  assign i01_couplers_to_i01_couplers_BRESP = M_AXI_bresp[1:0];
  assign i01_couplers_to_i01_couplers_BVALID = M_AXI_bvalid[0];
  assign i01_couplers_to_i01_couplers_RDATA = M_AXI_rdata[31:0];
  assign i01_couplers_to_i01_couplers_RREADY = S_AXI_rready[0];
  assign i01_couplers_to_i01_couplers_RRESP = M_AXI_rresp[1:0];
  assign i01_couplers_to_i01_couplers_RVALID = M_AXI_rvalid[0];
  assign i01_couplers_to_i01_couplers_WDATA = S_AXI_wdata[31:0];
  assign i01_couplers_to_i01_couplers_WREADY = M_AXI_wready[0];
  assign i01_couplers_to_i01_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign i01_couplers_to_i01_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module i02_couplers_imp_1LN01S9
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

  wire [31:0]i02_couplers_to_i02_couplers_ARADDR;
  wire [2:0]i02_couplers_to_i02_couplers_ARPROT;
  wire [0:0]i02_couplers_to_i02_couplers_ARREADY;
  wire [0:0]i02_couplers_to_i02_couplers_ARVALID;
  wire [31:0]i02_couplers_to_i02_couplers_AWADDR;
  wire [2:0]i02_couplers_to_i02_couplers_AWPROT;
  wire [0:0]i02_couplers_to_i02_couplers_AWREADY;
  wire [0:0]i02_couplers_to_i02_couplers_AWVALID;
  wire [0:0]i02_couplers_to_i02_couplers_BREADY;
  wire [1:0]i02_couplers_to_i02_couplers_BRESP;
  wire [0:0]i02_couplers_to_i02_couplers_BVALID;
  wire [31:0]i02_couplers_to_i02_couplers_RDATA;
  wire [0:0]i02_couplers_to_i02_couplers_RREADY;
  wire [1:0]i02_couplers_to_i02_couplers_RRESP;
  wire [0:0]i02_couplers_to_i02_couplers_RVALID;
  wire [31:0]i02_couplers_to_i02_couplers_WDATA;
  wire [0:0]i02_couplers_to_i02_couplers_WREADY;
  wire [3:0]i02_couplers_to_i02_couplers_WSTRB;
  wire [0:0]i02_couplers_to_i02_couplers_WVALID;

  assign M_AXI_araddr[31:0] = i02_couplers_to_i02_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = i02_couplers_to_i02_couplers_ARPROT;
  assign M_AXI_arvalid[0] = i02_couplers_to_i02_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = i02_couplers_to_i02_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = i02_couplers_to_i02_couplers_AWPROT;
  assign M_AXI_awvalid[0] = i02_couplers_to_i02_couplers_AWVALID;
  assign M_AXI_bready[0] = i02_couplers_to_i02_couplers_BREADY;
  assign M_AXI_rready[0] = i02_couplers_to_i02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = i02_couplers_to_i02_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = i02_couplers_to_i02_couplers_WSTRB;
  assign M_AXI_wvalid[0] = i02_couplers_to_i02_couplers_WVALID;
  assign S_AXI_arready[0] = i02_couplers_to_i02_couplers_ARREADY;
  assign S_AXI_awready[0] = i02_couplers_to_i02_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = i02_couplers_to_i02_couplers_BRESP;
  assign S_AXI_bvalid[0] = i02_couplers_to_i02_couplers_BVALID;
  assign S_AXI_rdata[31:0] = i02_couplers_to_i02_couplers_RDATA;
  assign S_AXI_rresp[1:0] = i02_couplers_to_i02_couplers_RRESP;
  assign S_AXI_rvalid[0] = i02_couplers_to_i02_couplers_RVALID;
  assign S_AXI_wready[0] = i02_couplers_to_i02_couplers_WREADY;
  assign i02_couplers_to_i02_couplers_ARADDR = S_AXI_araddr[31:0];
  assign i02_couplers_to_i02_couplers_ARPROT = S_AXI_arprot[2:0];
  assign i02_couplers_to_i02_couplers_ARREADY = M_AXI_arready[0];
  assign i02_couplers_to_i02_couplers_ARVALID = S_AXI_arvalid[0];
  assign i02_couplers_to_i02_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign i02_couplers_to_i02_couplers_AWPROT = S_AXI_awprot[2:0];
  assign i02_couplers_to_i02_couplers_AWREADY = M_AXI_awready[0];
  assign i02_couplers_to_i02_couplers_AWVALID = S_AXI_awvalid[0];
  assign i02_couplers_to_i02_couplers_BREADY = S_AXI_bready[0];
  assign i02_couplers_to_i02_couplers_BRESP = M_AXI_bresp[1:0];
  assign i02_couplers_to_i02_couplers_BVALID = M_AXI_bvalid[0];
  assign i02_couplers_to_i02_couplers_RDATA = M_AXI_rdata[31:0];
  assign i02_couplers_to_i02_couplers_RREADY = S_AXI_rready[0];
  assign i02_couplers_to_i02_couplers_RRESP = M_AXI_rresp[1:0];
  assign i02_couplers_to_i02_couplers_RVALID = M_AXI_rvalid[0];
  assign i02_couplers_to_i02_couplers_WDATA = S_AXI_wdata[31:0];
  assign i02_couplers_to_i02_couplers_WREADY = M_AXI_wready[0];
  assign i02_couplers_to_i02_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign i02_couplers_to_i02_couplers_WVALID = S_AXI_wvalid[0];
endmodule

(* CORE_GENERATION_INFO = "icyradio,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=icyradio,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=186,numReposBlks=142,numNonXlnxBlks=12,numHierBlks=44,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=12,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "icyradio.hwdef" *) 
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
    EXT_I2C_scl_i,
    EXT_I2C_scl_o,
    EXT_I2C_scl_t,
    EXT_I2C_sda_i,
    EXT_I2C_sda_o,
    EXT_I2C_sda_t,
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
    PCIe_WAKEn,
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
  (* X_INTERFACE_INFO = "analog.com:interface:i2s:1.0 CODEC_I2S BCLK" *) output CODEC_I2S_bclk;
  (* X_INTERFACE_INFO = "analog.com:interface:i2s:1.0 CODEC_I2S LRCLK" *) output CODEC_I2S_lrclk;
  (* X_INTERFACE_INFO = "analog.com:interface:i2s:1.0 CODEC_I2S SDATA_IN" *) input CODEC_I2S_sdata_in;
  (* X_INTERFACE_INFO = "analog.com:interface:i2s:1.0 CODEC_I2S SDATA_OUT" *) output CODEC_I2S_sdata_out;
  output CODEC_MCLK;
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 EXT_I2C SCL_I" *) input EXT_I2C_scl_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 EXT_I2C SCL_O" *) output EXT_I2C_scl_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 EXT_I2C SCL_T" *) output EXT_I2C_scl_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 EXT_I2C SDA_I" *) input EXT_I2C_sda_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 EXT_I2C SDA_O" *) output EXT_I2C_sda_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 EXT_I2C SDA_T" *) output EXT_I2C_sda_t;
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
  output [0:0]PCIe_WAKEn;
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

  wire CLK_MNGR_IRQn_1;
  wire FPGA_CLK0_1;
  wire FPGA_CLK1_1;
  wire [0:0]GND_0_dout;
  wire [0:0]GND_11_dout;
  wire [31:0]GND_13_dout;
  wire [1:0]GND_14_dout;
  wire [4:0]GND_15_dout;
  wire [0:0]GND_17_dout;
  wire [0:0]GND_18_dout;
  wire [0:0]GND_19_dout;
  wire [0:0]GND_1_dout;
  wire [0:0]GND_20_dout;
  wire [1:0]GND_21_dout;
  wire [0:0]GND_21_dout1;
  wire [2:0]GND_22_dout;
  wire [0:0]GND_23_dout;
  wire [0:0]GND_25_dout;
  wire [2:0]GND_3_dout;
  wire [21:0]GND_4_dout;
  wire [7:0]GND_5_dout;
  wire [7:0]GND_6_dout;
  wire [0:0]GND_7_dout;
  wire [0:0]GND_8_dout;
  wire [0:0]GND_9_dout;
  wire [0:0]M02_ARESETN_1;
  wire M16_ACLK_1;
  wire [0:0]PCIe_REFCLK_1_CLK_N;
  wire [0:0]PCIe_REFCLK_1_CLK_P;
  wire RXCLK_1;
  wire [11:0]RXDATA_1;
  wire RXFRAME_1;
  wire [31:0]S06_AXI_1_ARADDR;
  wire [2:0]S06_AXI_1_ARPROT;
  wire S06_AXI_1_ARREADY;
  wire S06_AXI_1_ARVALID;
  wire [31:0]S06_AXI_1_AWADDR;
  wire [2:0]S06_AXI_1_AWPROT;
  wire S06_AXI_1_AWREADY;
  wire S06_AXI_1_AWVALID;
  wire S06_AXI_1_BREADY;
  wire S06_AXI_1_BVALID;
  wire [31:0]S06_AXI_1_RDATA;
  wire S06_AXI_1_RREADY;
  wire S06_AXI_1_RVALID;
  wire [31:0]S06_AXI_1_WDATA;
  wire S06_AXI_1_WREADY;
  wire [3:0]S06_AXI_1_WSTRB;
  wire S06_AXI_1_WVALID;
  wire SYNTH_LD_1;
  wire TRX_5V0_BIAS_T1_OCn_1;
  wire TRX_5V0_BIAS_T2_OCn_1;
  wire TRX_5V0_PA1_OCn_1;
  wire TRX_5V0_PA2_OCn_1;
  wire [7:0]TRX_CTRL_OUT_1;
  wire [0:0]VCC_0_dout;
  wire [0:0]VCC_1_dout;
  wire [0:0]VCC_2_dout;
  wire VIN_REG_ALERTn_1;
  wire Vp_Vn_0_1_V_N;
  wire Vp_Vn_0_1_V_P;
  wire ad9361_adc_packer_rx0_fifo_wr_overflow;
  wire ad9361_adc_packer_rx1_fifo_wr_overflow;
  wire [31:0]ad9361_adc_packer_rx1_packed_fifo_wr_DATA;
  wire ad9361_adc_packer_rx1_packed_fifo_wr_EN;
  wire ad9361_adc_packer_rx1_packed_fifo_wr_OVERFLOW;
  wire ad9361_adc_packer_rx1_packed_fifo_wr_SYNC;
  wire ad9361_dac_unpacker_s_axis_ready;
  wire ad9361_dac_unpacker_tx0_fifo_rd_underflow;
  wire [15:0]ad9361_dac_unpacker_tx1_fifo_rd_data_0;
  wire [15:0]ad9361_dac_unpacker_tx1_fifo_rd_data_1;
  wire ad9361_dac_unpacker_tx1_fifo_rd_underflow;
  wire ad9361_dac_unpacker_tx1_s_axis_ready;
  wire [0:0]adc_dovf_combiner_Res;
  wire [0:0]adc_dovf_gate_rx0_Res;
  wire [0:0]adc_dovf_gate_rx1_Res;
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
  wire axi_ad9361_0_enable;
  wire axi_ad9361_0_l_clk;
  wire axi_ad9361_0_rst;
  wire axi_ad9361_0_tx_clk_out;
  wire [11:0]axi_ad9361_0_tx_data_out;
  wire axi_ad9361_0_tx_frame_out;
  wire axi_ad9361_0_txnrx;
  wire axi_ad9361_adc_r1_mode;
  wire axi_ad9361_dac_r1_mode;
  wire axi_ad9361_dac_valid_i1;
  wire [16:0]axi_bram_ctrl_0_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_0_BRAM_PORTA_CLK;
  wire [63:0]axi_bram_ctrl_0_BRAM_PORTA_DIN;
  wire [63:0]axi_bram_ctrl_0_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_0_BRAM_PORTA_EN;
  wire axi_bram_ctrl_0_BRAM_PORTA_RST;
  wire [7:0]axi_bram_ctrl_0_BRAM_PORTA_WE;
  wire [31:0]axi_cpu_dma_interconnect_M00_AXI_ARADDR;
  wire [1:0]axi_cpu_dma_interconnect_M00_AXI_ARBURST;
  wire [3:0]axi_cpu_dma_interconnect_M00_AXI_ARCACHE;
  wire [2:0]axi_cpu_dma_interconnect_M00_AXI_ARID;
  wire [7:0]axi_cpu_dma_interconnect_M00_AXI_ARLEN;
  wire [0:0]axi_cpu_dma_interconnect_M00_AXI_ARLOCK;
  wire [2:0]axi_cpu_dma_interconnect_M00_AXI_ARPROT;
  wire [3:0]axi_cpu_dma_interconnect_M00_AXI_ARQOS;
  wire axi_cpu_dma_interconnect_M00_AXI_ARREADY;
  wire [3:0]axi_cpu_dma_interconnect_M00_AXI_ARREGION;
  wire [2:0]axi_cpu_dma_interconnect_M00_AXI_ARSIZE;
  wire axi_cpu_dma_interconnect_M00_AXI_ARVALID;
  wire [31:0]axi_cpu_dma_interconnect_M00_AXI_AWADDR;
  wire [1:0]axi_cpu_dma_interconnect_M00_AXI_AWBURST;
  wire [3:0]axi_cpu_dma_interconnect_M00_AXI_AWCACHE;
  wire [2:0]axi_cpu_dma_interconnect_M00_AXI_AWID;
  wire [7:0]axi_cpu_dma_interconnect_M00_AXI_AWLEN;
  wire [0:0]axi_cpu_dma_interconnect_M00_AXI_AWLOCK;
  wire [2:0]axi_cpu_dma_interconnect_M00_AXI_AWPROT;
  wire [3:0]axi_cpu_dma_interconnect_M00_AXI_AWQOS;
  wire axi_cpu_dma_interconnect_M00_AXI_AWREADY;
  wire [3:0]axi_cpu_dma_interconnect_M00_AXI_AWREGION;
  wire [2:0]axi_cpu_dma_interconnect_M00_AXI_AWSIZE;
  wire axi_cpu_dma_interconnect_M00_AXI_AWVALID;
  wire [2:0]axi_cpu_dma_interconnect_M00_AXI_BID;
  wire axi_cpu_dma_interconnect_M00_AXI_BREADY;
  wire [1:0]axi_cpu_dma_interconnect_M00_AXI_BRESP;
  wire axi_cpu_dma_interconnect_M00_AXI_BVALID;
  wire [63:0]axi_cpu_dma_interconnect_M00_AXI_RDATA;
  wire [2:0]axi_cpu_dma_interconnect_M00_AXI_RID;
  wire axi_cpu_dma_interconnect_M00_AXI_RLAST;
  wire axi_cpu_dma_interconnect_M00_AXI_RREADY;
  wire [1:0]axi_cpu_dma_interconnect_M00_AXI_RRESP;
  wire axi_cpu_dma_interconnect_M00_AXI_RVALID;
  wire [63:0]axi_cpu_dma_interconnect_M00_AXI_WDATA;
  wire axi_cpu_dma_interconnect_M00_AXI_WLAST;
  wire axi_cpu_dma_interconnect_M00_AXI_WREADY;
  wire [7:0]axi_cpu_dma_interconnect_M00_AXI_WSTRB;
  wire axi_cpu_dma_interconnect_M00_AXI_WVALID;
  wire axi_dmac_i2s_rx_irq;
  wire [31:0]axi_dmac_i2s_rx_m_dest_axi_AWADDR;
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
  wire axi_dmac_i2s_tx_m_axis_TREADY;
  wire axi_dmac_i2s_tx_m_axis_TVALID;
  wire [31:0]axi_dmac_i2s_tx_m_src_axi_ARADDR;
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
  wire axi_dmac_rf_rx0_irq;
  wire [31:0]axi_dmac_rf_rx0_m_dest_axi_AWADDR;
  wire [1:0]axi_dmac_rf_rx0_m_dest_axi_AWBURST;
  wire [3:0]axi_dmac_rf_rx0_m_dest_axi_AWCACHE;
  wire [7:0]axi_dmac_rf_rx0_m_dest_axi_AWLEN;
  wire [2:0]axi_dmac_rf_rx0_m_dest_axi_AWPROT;
  wire axi_dmac_rf_rx0_m_dest_axi_AWREADY;
  wire [2:0]axi_dmac_rf_rx0_m_dest_axi_AWSIZE;
  wire axi_dmac_rf_rx0_m_dest_axi_AWVALID;
  wire axi_dmac_rf_rx0_m_dest_axi_BREADY;
  wire [1:0]axi_dmac_rf_rx0_m_dest_axi_BRESP;
  wire axi_dmac_rf_rx0_m_dest_axi_BVALID;
  wire [63:0]axi_dmac_rf_rx0_m_dest_axi_WDATA;
  wire axi_dmac_rf_rx0_m_dest_axi_WLAST;
  wire axi_dmac_rf_rx0_m_dest_axi_WREADY;
  wire [7:0]axi_dmac_rf_rx0_m_dest_axi_WSTRB;
  wire axi_dmac_rf_rx0_m_dest_axi_WVALID;
  wire axi_dmac_rf_rx1_fifo_wr_xfer_req;
  wire axi_dmac_rf_rx1_irq;
  wire [31:0]axi_dmac_rf_rx1_m_dest_axi_AWADDR;
  wire [1:0]axi_dmac_rf_rx1_m_dest_axi_AWBURST;
  wire [3:0]axi_dmac_rf_rx1_m_dest_axi_AWCACHE;
  wire [7:0]axi_dmac_rf_rx1_m_dest_axi_AWLEN;
  wire [2:0]axi_dmac_rf_rx1_m_dest_axi_AWPROT;
  wire axi_dmac_rf_rx1_m_dest_axi_AWREADY;
  wire [2:0]axi_dmac_rf_rx1_m_dest_axi_AWSIZE;
  wire axi_dmac_rf_rx1_m_dest_axi_AWVALID;
  wire axi_dmac_rf_rx1_m_dest_axi_BREADY;
  wire [1:0]axi_dmac_rf_rx1_m_dest_axi_BRESP;
  wire axi_dmac_rf_rx1_m_dest_axi_BVALID;
  wire [63:0]axi_dmac_rf_rx1_m_dest_axi_WDATA;
  wire axi_dmac_rf_rx1_m_dest_axi_WLAST;
  wire axi_dmac_rf_rx1_m_dest_axi_WREADY;
  wire [7:0]axi_dmac_rf_rx1_m_dest_axi_WSTRB;
  wire axi_dmac_rf_rx1_m_dest_axi_WVALID;
  wire axi_dmac_rf_rx_fifo_wr_xfer_req;
  wire axi_dmac_rf_tx0_irq;
  wire axi_dmac_rf_tx1_irq;
  wire [31:0]axi_dmac_rf_tx1_m_axis_data;
  wire axi_dmac_rf_tx1_m_axis_valid;
  wire axi_dmac_rf_tx1_m_axis_xfer_req;
  wire [31:0]axi_dmac_rf_tx1_m_src_axi_ARADDR;
  wire [1:0]axi_dmac_rf_tx1_m_src_axi_ARBURST;
  wire [3:0]axi_dmac_rf_tx1_m_src_axi_ARCACHE;
  wire [7:0]axi_dmac_rf_tx1_m_src_axi_ARLEN;
  wire [2:0]axi_dmac_rf_tx1_m_src_axi_ARPROT;
  wire axi_dmac_rf_tx1_m_src_axi_ARREADY;
  wire [2:0]axi_dmac_rf_tx1_m_src_axi_ARSIZE;
  wire axi_dmac_rf_tx1_m_src_axi_ARVALID;
  wire [63:0]axi_dmac_rf_tx1_m_src_axi_RDATA;
  wire axi_dmac_rf_tx1_m_src_axi_RLAST;
  wire axi_dmac_rf_tx1_m_src_axi_RREADY;
  wire [1:0]axi_dmac_rf_tx1_m_src_axi_RRESP;
  wire axi_dmac_rf_tx1_m_src_axi_RVALID;
  wire [31:0]axi_dmac_rf_tx_m_axis_data;
  wire axi_dmac_rf_tx_m_axis_valid;
  wire axi_dmac_rf_tx_m_axis_xfer_req;
  wire [31:0]axi_dmac_rf_tx_m_src_axi_ARADDR;
  wire [1:0]axi_dmac_rf_tx_m_src_axi_ARBURST;
  wire [3:0]axi_dmac_rf_tx_m_src_axi_ARCACHE;
  wire [7:0]axi_dmac_rf_tx_m_src_axi_ARLEN;
  wire [2:0]axi_dmac_rf_tx_m_src_axi_ARPROT;
  wire axi_dmac_rf_tx_m_src_axi_ARREADY;
  wire [2:0]axi_dmac_rf_tx_m_src_axi_ARSIZE;
  wire axi_dmac_rf_tx_m_src_axi_ARVALID;
  wire [63:0]axi_dmac_rf_tx_m_src_axi_RDATA;
  wire axi_dmac_rf_tx_m_src_axi_RLAST;
  wire axi_dmac_rf_tx_m_src_axi_RREADY;
  wire [1:0]axi_dmac_rf_tx_m_src_axi_RRESP;
  wire axi_dmac_rf_tx_m_src_axi_RVALID;
  wire [31:0]axi_gpio_0_gpio_io_o;
  wire [31:0]axi_gpio_1_gpio_io_o;
  wire [31:0]axi_gpio_2_gpio_io_o;
  wire axi_i2s_0_i2s_mclk;
  wire [31:0]axi_i2s_0_m_axis_TDATA;
  wire axi_i2s_0_m_axis_TREADY;
  wire axi_i2s_0_m_axis_TVALID;
  wire axi_i2s_i2s_BCLK;
  wire axi_i2s_i2s_LRCLK;
  wire axi_i2s_i2s_SDATA_IN;
  wire axi_i2s_i2s_SDATA_OUT;
  wire axi_i2s_irq;
  wire axi_iic_0_IIC_SCL_I;
  wire axi_iic_0_IIC_SCL_O;
  wire axi_iic_0_IIC_SCL_T;
  wire axi_iic_0_IIC_SDA_I;
  wire axi_iic_0_IIC_SDA_O;
  wire axi_iic_0_IIC_SDA_T;
  wire axi_iic_0_iic2intc_irpt;
  wire axi_iic_1_IIC_SCL_I;
  wire axi_iic_1_IIC_SCL_O;
  wire axi_iic_1_IIC_SCL_T;
  wire axi_iic_1_IIC_SDA_I;
  wire axi_iic_1_IIC_SDA_O;
  wire axi_iic_1_IIC_SDA_T;
  wire axi_iic_1_iic2intc_irpt;
  wire axi_iic_2_IIC_SCL_I;
  wire axi_iic_2_IIC_SCL_O;
  wire axi_iic_2_IIC_SCL_T;
  wire axi_iic_2_IIC_SDA_I;
  wire axi_iic_2_IIC_SDA_O;
  wire axi_iic_2_IIC_SDA_T;
  wire axi_iic_2_iic2intc_irpt;
  wire [31:0]axi_interconnect_0_M00_AXI1_ARADDR;
  wire [1:0]axi_interconnect_0_M00_AXI1_ARBURST;
  wire [3:0]axi_interconnect_0_M00_AXI1_ARCACHE;
  wire [3:0]axi_interconnect_0_M00_AXI1_ARID;
  wire [7:0]axi_interconnect_0_M00_AXI1_ARLEN;
  wire [0:0]axi_interconnect_0_M00_AXI1_ARLOCK;
  wire [2:0]axi_interconnect_0_M00_AXI1_ARPROT;
  wire [3:0]axi_interconnect_0_M00_AXI1_ARQOS;
  wire axi_interconnect_0_M00_AXI1_ARREADY;
  wire [3:0]axi_interconnect_0_M00_AXI1_ARREGION;
  wire [2:0]axi_interconnect_0_M00_AXI1_ARSIZE;
  wire [0:0]axi_interconnect_0_M00_AXI1_ARVALID;
  wire [31:0]axi_interconnect_0_M00_AXI1_AWADDR;
  wire [1:0]axi_interconnect_0_M00_AXI1_AWBURST;
  wire [3:0]axi_interconnect_0_M00_AXI1_AWCACHE;
  wire [3:0]axi_interconnect_0_M00_AXI1_AWID;
  wire [7:0]axi_interconnect_0_M00_AXI1_AWLEN;
  wire [0:0]axi_interconnect_0_M00_AXI1_AWLOCK;
  wire [2:0]axi_interconnect_0_M00_AXI1_AWPROT;
  wire [3:0]axi_interconnect_0_M00_AXI1_AWQOS;
  wire axi_interconnect_0_M00_AXI1_AWREADY;
  wire [3:0]axi_interconnect_0_M00_AXI1_AWREGION;
  wire [2:0]axi_interconnect_0_M00_AXI1_AWSIZE;
  wire [0:0]axi_interconnect_0_M00_AXI1_AWVALID;
  wire [3:0]axi_interconnect_0_M00_AXI1_BID;
  wire [0:0]axi_interconnect_0_M00_AXI1_BREADY;
  wire [1:0]axi_interconnect_0_M00_AXI1_BRESP;
  wire axi_interconnect_0_M00_AXI1_BVALID;
  wire [63:0]axi_interconnect_0_M00_AXI1_RDATA;
  wire [3:0]axi_interconnect_0_M00_AXI1_RID;
  wire axi_interconnect_0_M00_AXI1_RLAST;
  wire [0:0]axi_interconnect_0_M00_AXI1_RREADY;
  wire [1:0]axi_interconnect_0_M00_AXI1_RRESP;
  wire axi_interconnect_0_M00_AXI1_RVALID;
  wire [63:0]axi_interconnect_0_M00_AXI1_WDATA;
  wire [0:0]axi_interconnect_0_M00_AXI1_WLAST;
  wire axi_interconnect_0_M00_AXI1_WREADY;
  wire [7:0]axi_interconnect_0_M00_AXI1_WSTRB;
  wire [0:0]axi_interconnect_0_M00_AXI1_WVALID;
  wire [31:0]axi_interconnect_0_M01_AXI1_ARADDR;
  wire [1:0]axi_interconnect_0_M01_AXI1_ARBURST;
  wire [3:0]axi_interconnect_0_M01_AXI1_ARCACHE;
  wire [3:0]axi_interconnect_0_M01_AXI1_ARID;
  wire [7:0]axi_interconnect_0_M01_AXI1_ARLEN;
  wire axi_interconnect_0_M01_AXI1_ARLOCK;
  wire [2:0]axi_interconnect_0_M01_AXI1_ARPROT;
  wire [3:0]axi_interconnect_0_M01_AXI1_ARQOS;
  wire axi_interconnect_0_M01_AXI1_ARREADY;
  wire [2:0]axi_interconnect_0_M01_AXI1_ARSIZE;
  wire axi_interconnect_0_M01_AXI1_ARVALID;
  wire [31:0]axi_interconnect_0_M01_AXI1_AWADDR;
  wire [1:0]axi_interconnect_0_M01_AXI1_AWBURST;
  wire [3:0]axi_interconnect_0_M01_AXI1_AWCACHE;
  wire [3:0]axi_interconnect_0_M01_AXI1_AWID;
  wire [7:0]axi_interconnect_0_M01_AXI1_AWLEN;
  wire axi_interconnect_0_M01_AXI1_AWLOCK;
  wire [2:0]axi_interconnect_0_M01_AXI1_AWPROT;
  wire [3:0]axi_interconnect_0_M01_AXI1_AWQOS;
  wire axi_interconnect_0_M01_AXI1_AWREADY;
  wire [2:0]axi_interconnect_0_M01_AXI1_AWSIZE;
  wire axi_interconnect_0_M01_AXI1_AWVALID;
  wire [3:0]axi_interconnect_0_M01_AXI1_BID;
  wire axi_interconnect_0_M01_AXI1_BREADY;
  wire [1:0]axi_interconnect_0_M01_AXI1_BRESP;
  wire axi_interconnect_0_M01_AXI1_BVALID;
  wire [63:0]axi_interconnect_0_M01_AXI1_RDATA;
  wire [3:0]axi_interconnect_0_M01_AXI1_RID;
  wire axi_interconnect_0_M01_AXI1_RLAST;
  wire axi_interconnect_0_M01_AXI1_RREADY;
  wire [1:0]axi_interconnect_0_M01_AXI1_RRESP;
  wire axi_interconnect_0_M01_AXI1_RVALID;
  wire [63:0]axi_interconnect_0_M01_AXI1_WDATA;
  wire axi_interconnect_0_M01_AXI1_WLAST;
  wire axi_interconnect_0_M01_AXI1_WREADY;
  wire [7:0]axi_interconnect_0_M01_AXI1_WSTRB;
  wire axi_interconnect_0_M01_AXI1_WVALID;
  wire [31:0]axi_interconnect_0_M01_AXI2_ARADDR;
  wire [1:0]axi_interconnect_0_M01_AXI2_ARBURST;
  wire [2:0]axi_interconnect_0_M01_AXI2_ARID;
  wire [7:0]axi_interconnect_0_M01_AXI2_ARLEN;
  wire axi_interconnect_0_M01_AXI2_ARREADY;
  wire [3:0]axi_interconnect_0_M01_AXI2_ARREGION;
  wire [2:0]axi_interconnect_0_M01_AXI2_ARSIZE;
  wire [0:0]axi_interconnect_0_M01_AXI2_ARVALID;
  wire [31:0]axi_interconnect_0_M01_AXI2_AWADDR;
  wire [1:0]axi_interconnect_0_M01_AXI2_AWBURST;
  wire [2:0]axi_interconnect_0_M01_AXI2_AWID;
  wire [7:0]axi_interconnect_0_M01_AXI2_AWLEN;
  wire axi_interconnect_0_M01_AXI2_AWREADY;
  wire [3:0]axi_interconnect_0_M01_AXI2_AWREGION;
  wire [2:0]axi_interconnect_0_M01_AXI2_AWSIZE;
  wire [0:0]axi_interconnect_0_M01_AXI2_AWVALID;
  wire [2:0]axi_interconnect_0_M01_AXI2_BID;
  wire [0:0]axi_interconnect_0_M01_AXI2_BREADY;
  wire [1:0]axi_interconnect_0_M01_AXI2_BRESP;
  wire axi_interconnect_0_M01_AXI2_BVALID;
  wire [63:0]axi_interconnect_0_M01_AXI2_RDATA;
  wire [2:0]axi_interconnect_0_M01_AXI2_RID;
  wire axi_interconnect_0_M01_AXI2_RLAST;
  wire [0:0]axi_interconnect_0_M01_AXI2_RREADY;
  wire [1:0]axi_interconnect_0_M01_AXI2_RRESP;
  wire axi_interconnect_0_M01_AXI2_RVALID;
  wire [63:0]axi_interconnect_0_M01_AXI2_WDATA;
  wire [0:0]axi_interconnect_0_M01_AXI2_WLAST;
  wire axi_interconnect_0_M01_AXI2_WREADY;
  wire [7:0]axi_interconnect_0_M01_AXI2_WSTRB;
  wire [0:0]axi_interconnect_0_M01_AXI2_WVALID;
  wire [28:0]axi_interconnect_0_M02_AXI_ARADDR;
  wire [1:0]axi_interconnect_0_M02_AXI_ARBURST;
  wire [3:0]axi_interconnect_0_M02_AXI_ARCACHE;
  wire [3:0]axi_interconnect_0_M02_AXI_ARID;
  wire [7:0]axi_interconnect_0_M02_AXI_ARLEN;
  wire [0:0]axi_interconnect_0_M02_AXI_ARLOCK;
  wire [2:0]axi_interconnect_0_M02_AXI_ARPROT;
  wire [3:0]axi_interconnect_0_M02_AXI_ARQOS;
  wire axi_interconnect_0_M02_AXI_ARREADY;
  wire [2:0]axi_interconnect_0_M02_AXI_ARSIZE;
  wire axi_interconnect_0_M02_AXI_ARVALID;
  wire [28:0]axi_interconnect_0_M02_AXI_AWADDR;
  wire [1:0]axi_interconnect_0_M02_AXI_AWBURST;
  wire [3:0]axi_interconnect_0_M02_AXI_AWCACHE;
  wire [3:0]axi_interconnect_0_M02_AXI_AWID;
  wire [7:0]axi_interconnect_0_M02_AXI_AWLEN;
  wire [0:0]axi_interconnect_0_M02_AXI_AWLOCK;
  wire [2:0]axi_interconnect_0_M02_AXI_AWPROT;
  wire [3:0]axi_interconnect_0_M02_AXI_AWQOS;
  wire axi_interconnect_0_M02_AXI_AWREADY;
  wire [2:0]axi_interconnect_0_M02_AXI_AWSIZE;
  wire axi_interconnect_0_M02_AXI_AWVALID;
  wire [3:0]axi_interconnect_0_M02_AXI_BID;
  wire axi_interconnect_0_M02_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M02_AXI_BRESP;
  wire axi_interconnect_0_M02_AXI_BVALID;
  wire [63:0]axi_interconnect_0_M02_AXI_RDATA;
  wire [3:0]axi_interconnect_0_M02_AXI_RID;
  wire axi_interconnect_0_M02_AXI_RLAST;
  wire axi_interconnect_0_M02_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M02_AXI_RRESP;
  wire axi_interconnect_0_M02_AXI_RVALID;
  wire [63:0]axi_interconnect_0_M02_AXI_WDATA;
  wire axi_interconnect_0_M02_AXI_WLAST;
  wire axi_interconnect_0_M02_AXI_WREADY;
  wire [7:0]axi_interconnect_0_M02_AXI_WSTRB;
  wire axi_interconnect_0_M02_AXI_WVALID;
  wire [31:0]axi_interconnect_0_M03_AXI1_ARADDR;
  wire [1:0]axi_interconnect_0_M03_AXI1_ARBURST;
  wire [3:0]axi_interconnect_0_M03_AXI1_ARCACHE;
  wire [3:0]axi_interconnect_0_M03_AXI1_ARID;
  wire [7:0]axi_interconnect_0_M03_AXI1_ARLEN;
  wire [0:0]axi_interconnect_0_M03_AXI1_ARLOCK;
  wire [2:0]axi_interconnect_0_M03_AXI1_ARPROT;
  wire axi_interconnect_0_M03_AXI1_ARREADY;
  wire [2:0]axi_interconnect_0_M03_AXI1_ARSIZE;
  wire [0:0]axi_interconnect_0_M03_AXI1_ARVALID;
  wire [31:0]axi_interconnect_0_M03_AXI1_AWADDR;
  wire [1:0]axi_interconnect_0_M03_AXI1_AWBURST;
  wire [3:0]axi_interconnect_0_M03_AXI1_AWCACHE;
  wire [3:0]axi_interconnect_0_M03_AXI1_AWID;
  wire [7:0]axi_interconnect_0_M03_AXI1_AWLEN;
  wire [0:0]axi_interconnect_0_M03_AXI1_AWLOCK;
  wire [2:0]axi_interconnect_0_M03_AXI1_AWPROT;
  wire axi_interconnect_0_M03_AXI1_AWREADY;
  wire [2:0]axi_interconnect_0_M03_AXI1_AWSIZE;
  wire [0:0]axi_interconnect_0_M03_AXI1_AWVALID;
  wire [3:0]axi_interconnect_0_M03_AXI1_BID;
  wire [0:0]axi_interconnect_0_M03_AXI1_BREADY;
  wire [1:0]axi_interconnect_0_M03_AXI1_BRESP;
  wire axi_interconnect_0_M03_AXI1_BVALID;
  wire [63:0]axi_interconnect_0_M03_AXI1_RDATA;
  wire [3:0]axi_interconnect_0_M03_AXI1_RID;
  wire axi_interconnect_0_M03_AXI1_RLAST;
  wire [0:0]axi_interconnect_0_M03_AXI1_RREADY;
  wire [1:0]axi_interconnect_0_M03_AXI1_RRESP;
  wire axi_interconnect_0_M03_AXI1_RVALID;
  wire [63:0]axi_interconnect_0_M03_AXI1_WDATA;
  wire [0:0]axi_interconnect_0_M03_AXI1_WLAST;
  wire axi_interconnect_0_M03_AXI1_WREADY;
  wire [7:0]axi_interconnect_0_M03_AXI1_WSTRB;
  wire [0:0]axi_interconnect_0_M03_AXI1_WVALID;
  wire [31:0]axi_irq_controller_0_cpu_irq_out;
  wire axi_irq_controller_0_pcie_msi_request;
  wire [4:0]axi_irq_controller_0_pcie_msi_vector;
  wire axi_pcie_0_INTX_MSI_Grant;
  wire [2:0]axi_pcie_0_MSI_Vector_Width;
  wire axi_pcie_0_MSI_enable;
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
  wire axi_pcie_0_interrupt_out;
  wire axi_pcie_0_mmcm_lock;
  wire [1:0]axi_pcie_0_pcie_7x_mgt_rxn;
  wire [1:0]axi_pcie_0_pcie_7x_mgt_rxp;
  wire [1:0]axi_pcie_0_pcie_7x_mgt_txn;
  wire [1:0]axi_pcie_0_pcie_7x_mgt_txp;
  wire axi_pcie_0_user_link_up;
  wire [31:0]axi_peripheral_interconnect_M00_AXI_ARADDR;
  wire [2:0]axi_peripheral_interconnect_M00_AXI_ARPROT;
  wire axi_peripheral_interconnect_M00_AXI_ARREADY;
  wire axi_peripheral_interconnect_M00_AXI_ARVALID;
  wire [31:0]axi_peripheral_interconnect_M00_AXI_AWADDR;
  wire [2:0]axi_peripheral_interconnect_M00_AXI_AWPROT;
  wire axi_peripheral_interconnect_M00_AXI_AWREADY;
  wire axi_peripheral_interconnect_M00_AXI_AWVALID;
  wire axi_peripheral_interconnect_M00_AXI_BREADY;
  wire [1:0]axi_peripheral_interconnect_M00_AXI_BRESP;
  wire axi_peripheral_interconnect_M00_AXI_BVALID;
  wire [31:0]axi_peripheral_interconnect_M00_AXI_RDATA;
  wire axi_peripheral_interconnect_M00_AXI_RREADY;
  wire [1:0]axi_peripheral_interconnect_M00_AXI_RRESP;
  wire axi_peripheral_interconnect_M00_AXI_RVALID;
  wire [31:0]axi_peripheral_interconnect_M00_AXI_WDATA;
  wire axi_peripheral_interconnect_M00_AXI_WREADY;
  wire [3:0]axi_peripheral_interconnect_M00_AXI_WSTRB;
  wire axi_peripheral_interconnect_M00_AXI_WVALID;
  wire [31:0]axi_peripheral_interconnect_M01_AXI_ARADDR;
  wire [2:0]axi_peripheral_interconnect_M01_AXI_ARPROT;
  wire axi_peripheral_interconnect_M01_AXI_ARREADY;
  wire axi_peripheral_interconnect_M01_AXI_ARVALID;
  wire [31:0]axi_peripheral_interconnect_M01_AXI_AWADDR;
  wire [2:0]axi_peripheral_interconnect_M01_AXI_AWPROT;
  wire axi_peripheral_interconnect_M01_AXI_AWREADY;
  wire axi_peripheral_interconnect_M01_AXI_AWVALID;
  wire axi_peripheral_interconnect_M01_AXI_BREADY;
  wire [1:0]axi_peripheral_interconnect_M01_AXI_BRESP;
  wire axi_peripheral_interconnect_M01_AXI_BVALID;
  wire [31:0]axi_peripheral_interconnect_M01_AXI_RDATA;
  wire axi_peripheral_interconnect_M01_AXI_RREADY;
  wire [1:0]axi_peripheral_interconnect_M01_AXI_RRESP;
  wire axi_peripheral_interconnect_M01_AXI_RVALID;
  wire [31:0]axi_peripheral_interconnect_M01_AXI_WDATA;
  wire axi_peripheral_interconnect_M01_AXI_WREADY;
  wire [3:0]axi_peripheral_interconnect_M01_AXI_WSTRB;
  wire axi_peripheral_interconnect_M01_AXI_WVALID;
  wire [31:0]axi_peripheral_interconnect_M02_AXI_ARADDR;
  wire [2:0]axi_peripheral_interconnect_M02_AXI_ARPROT;
  wire axi_peripheral_interconnect_M02_AXI_ARREADY;
  wire axi_peripheral_interconnect_M02_AXI_ARVALID;
  wire [31:0]axi_peripheral_interconnect_M02_AXI_AWADDR;
  wire [2:0]axi_peripheral_interconnect_M02_AXI_AWPROT;
  wire axi_peripheral_interconnect_M02_AXI_AWREADY;
  wire axi_peripheral_interconnect_M02_AXI_AWVALID;
  wire axi_peripheral_interconnect_M02_AXI_BREADY;
  wire [1:0]axi_peripheral_interconnect_M02_AXI_BRESP;
  wire axi_peripheral_interconnect_M02_AXI_BVALID;
  wire [31:0]axi_peripheral_interconnect_M02_AXI_RDATA;
  wire axi_peripheral_interconnect_M02_AXI_RREADY;
  wire [1:0]axi_peripheral_interconnect_M02_AXI_RRESP;
  wire axi_peripheral_interconnect_M02_AXI_RVALID;
  wire [31:0]axi_peripheral_interconnect_M02_AXI_WDATA;
  wire axi_peripheral_interconnect_M02_AXI_WREADY;
  wire [3:0]axi_peripheral_interconnect_M02_AXI_WSTRB;
  wire axi_peripheral_interconnect_M02_AXI_WVALID;
  wire [31:0]axi_peripheral_interconnect_M03_AXI_ARADDR;
  wire [2:0]axi_peripheral_interconnect_M03_AXI_ARPROT;
  wire axi_peripheral_interconnect_M03_AXI_ARREADY;
  wire axi_peripheral_interconnect_M03_AXI_ARVALID;
  wire [31:0]axi_peripheral_interconnect_M03_AXI_AWADDR;
  wire [2:0]axi_peripheral_interconnect_M03_AXI_AWPROT;
  wire axi_peripheral_interconnect_M03_AXI_AWREADY;
  wire axi_peripheral_interconnect_M03_AXI_AWVALID;
  wire axi_peripheral_interconnect_M03_AXI_BREADY;
  wire [1:0]axi_peripheral_interconnect_M03_AXI_BRESP;
  wire axi_peripheral_interconnect_M03_AXI_BVALID;
  wire [31:0]axi_peripheral_interconnect_M03_AXI_RDATA;
  wire axi_peripheral_interconnect_M03_AXI_RREADY;
  wire [1:0]axi_peripheral_interconnect_M03_AXI_RRESP;
  wire axi_peripheral_interconnect_M03_AXI_RVALID;
  wire [31:0]axi_peripheral_interconnect_M03_AXI_WDATA;
  wire axi_peripheral_interconnect_M03_AXI_WREADY;
  wire [3:0]axi_peripheral_interconnect_M03_AXI_WSTRB;
  wire axi_peripheral_interconnect_M03_AXI_WVALID;
  wire [31:0]axi_peripheral_interconnect_M04_AXI_ARADDR;
  wire [2:0]axi_peripheral_interconnect_M04_AXI_ARPROT;
  wire axi_peripheral_interconnect_M04_AXI_ARREADY;
  wire axi_peripheral_interconnect_M04_AXI_ARVALID;
  wire [31:0]axi_peripheral_interconnect_M04_AXI_AWADDR;
  wire [2:0]axi_peripheral_interconnect_M04_AXI_AWPROT;
  wire axi_peripheral_interconnect_M04_AXI_AWREADY;
  wire axi_peripheral_interconnect_M04_AXI_AWVALID;
  wire axi_peripheral_interconnect_M04_AXI_BREADY;
  wire [1:0]axi_peripheral_interconnect_M04_AXI_BRESP;
  wire axi_peripheral_interconnect_M04_AXI_BVALID;
  wire [31:0]axi_peripheral_interconnect_M04_AXI_RDATA;
  wire axi_peripheral_interconnect_M04_AXI_RREADY;
  wire [1:0]axi_peripheral_interconnect_M04_AXI_RRESP;
  wire axi_peripheral_interconnect_M04_AXI_RVALID;
  wire [31:0]axi_peripheral_interconnect_M04_AXI_WDATA;
  wire axi_peripheral_interconnect_M04_AXI_WREADY;
  wire [3:0]axi_peripheral_interconnect_M04_AXI_WSTRB;
  wire axi_peripheral_interconnect_M04_AXI_WVALID;
  wire [31:0]axi_peripheral_interconnect_M05_AXI_ARADDR;
  wire [2:0]axi_peripheral_interconnect_M05_AXI_ARPROT;
  wire axi_peripheral_interconnect_M05_AXI_ARREADY;
  wire axi_peripheral_interconnect_M05_AXI_ARVALID;
  wire [31:0]axi_peripheral_interconnect_M05_AXI_AWADDR;
  wire [2:0]axi_peripheral_interconnect_M05_AXI_AWPROT;
  wire axi_peripheral_interconnect_M05_AXI_AWREADY;
  wire axi_peripheral_interconnect_M05_AXI_AWVALID;
  wire axi_peripheral_interconnect_M05_AXI_BREADY;
  wire [1:0]axi_peripheral_interconnect_M05_AXI_BRESP;
  wire axi_peripheral_interconnect_M05_AXI_BVALID;
  wire [31:0]axi_peripheral_interconnect_M05_AXI_RDATA;
  wire axi_peripheral_interconnect_M05_AXI_RREADY;
  wire [1:0]axi_peripheral_interconnect_M05_AXI_RRESP;
  wire axi_peripheral_interconnect_M05_AXI_RVALID;
  wire [31:0]axi_peripheral_interconnect_M05_AXI_WDATA;
  wire axi_peripheral_interconnect_M05_AXI_WREADY;
  wire [3:0]axi_peripheral_interconnect_M05_AXI_WSTRB;
  wire axi_peripheral_interconnect_M05_AXI_WVALID;
  wire [31:0]axi_peripheral_interconnect_M06_AXI_ARADDR;
  wire [2:0]axi_peripheral_interconnect_M06_AXI_ARPROT;
  wire axi_peripheral_interconnect_M06_AXI_ARREADY;
  wire axi_peripheral_interconnect_M06_AXI_ARVALID;
  wire [31:0]axi_peripheral_interconnect_M06_AXI_AWADDR;
  wire [2:0]axi_peripheral_interconnect_M06_AXI_AWPROT;
  wire axi_peripheral_interconnect_M06_AXI_AWREADY;
  wire axi_peripheral_interconnect_M06_AXI_AWVALID;
  wire axi_peripheral_interconnect_M06_AXI_BREADY;
  wire [1:0]axi_peripheral_interconnect_M06_AXI_BRESP;
  wire axi_peripheral_interconnect_M06_AXI_BVALID;
  wire [31:0]axi_peripheral_interconnect_M06_AXI_RDATA;
  wire axi_peripheral_interconnect_M06_AXI_RREADY;
  wire [1:0]axi_peripheral_interconnect_M06_AXI_RRESP;
  wire axi_peripheral_interconnect_M06_AXI_RVALID;
  wire [31:0]axi_peripheral_interconnect_M06_AXI_WDATA;
  wire axi_peripheral_interconnect_M06_AXI_WREADY;
  wire [3:0]axi_peripheral_interconnect_M06_AXI_WSTRB;
  wire axi_peripheral_interconnect_M06_AXI_WVALID;
  wire [31:0]axi_peripheral_interconnect_M07_AXI_ARADDR;
  wire axi_peripheral_interconnect_M07_AXI_ARREADY;
  wire [0:0]axi_peripheral_interconnect_M07_AXI_ARVALID;
  wire [31:0]axi_peripheral_interconnect_M07_AXI_AWADDR;
  wire axi_peripheral_interconnect_M07_AXI_AWREADY;
  wire [0:0]axi_peripheral_interconnect_M07_AXI_AWVALID;
  wire [0:0]axi_peripheral_interconnect_M07_AXI_BREADY;
  wire [1:0]axi_peripheral_interconnect_M07_AXI_BRESP;
  wire axi_peripheral_interconnect_M07_AXI_BVALID;
  wire [31:0]axi_peripheral_interconnect_M07_AXI_RDATA;
  wire [0:0]axi_peripheral_interconnect_M07_AXI_RREADY;
  wire [1:0]axi_peripheral_interconnect_M07_AXI_RRESP;
  wire axi_peripheral_interconnect_M07_AXI_RVALID;
  wire [31:0]axi_peripheral_interconnect_M07_AXI_WDATA;
  wire axi_peripheral_interconnect_M07_AXI_WREADY;
  wire [3:0]axi_peripheral_interconnect_M07_AXI_WSTRB;
  wire [0:0]axi_peripheral_interconnect_M07_AXI_WVALID;
  wire [31:0]axi_peripheral_interconnect_M08_AXI_ARADDR;
  wire axi_peripheral_interconnect_M08_AXI_ARREADY;
  wire [0:0]axi_peripheral_interconnect_M08_AXI_ARVALID;
  wire [31:0]axi_peripheral_interconnect_M08_AXI_AWADDR;
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
  wire axi_peripheral_interconnect_M09_AXI_ARREADY;
  wire axi_peripheral_interconnect_M09_AXI_ARVALID;
  wire [31:0]axi_peripheral_interconnect_M09_AXI_AWADDR;
  wire axi_peripheral_interconnect_M09_AXI_AWREADY;
  wire axi_peripheral_interconnect_M09_AXI_AWVALID;
  wire axi_peripheral_interconnect_M09_AXI_BREADY;
  wire [1:0]axi_peripheral_interconnect_M09_AXI_BRESP;
  wire axi_peripheral_interconnect_M09_AXI_BVALID;
  wire [31:0]axi_peripheral_interconnect_M09_AXI_RDATA;
  wire axi_peripheral_interconnect_M09_AXI_RREADY;
  wire [1:0]axi_peripheral_interconnect_M09_AXI_RRESP;
  wire axi_peripheral_interconnect_M09_AXI_RVALID;
  wire [31:0]axi_peripheral_interconnect_M09_AXI_WDATA;
  wire axi_peripheral_interconnect_M09_AXI_WREADY;
  wire [3:0]axi_peripheral_interconnect_M09_AXI_WSTRB;
  wire axi_peripheral_interconnect_M09_AXI_WVALID;
  wire [31:0]axi_peripheral_interconnect_M10_AXI_ARADDR;
  wire [2:0]axi_peripheral_interconnect_M10_AXI_ARPROT;
  wire axi_peripheral_interconnect_M10_AXI_ARREADY;
  wire axi_peripheral_interconnect_M10_AXI_ARVALID;
  wire [31:0]axi_peripheral_interconnect_M10_AXI_AWADDR;
  wire [2:0]axi_peripheral_interconnect_M10_AXI_AWPROT;
  wire axi_peripheral_interconnect_M10_AXI_AWREADY;
  wire axi_peripheral_interconnect_M10_AXI_AWVALID;
  wire axi_peripheral_interconnect_M10_AXI_BREADY;
  wire [1:0]axi_peripheral_interconnect_M10_AXI_BRESP;
  wire axi_peripheral_interconnect_M10_AXI_BVALID;
  wire [31:0]axi_peripheral_interconnect_M10_AXI_RDATA;
  wire axi_peripheral_interconnect_M10_AXI_RREADY;
  wire [1:0]axi_peripheral_interconnect_M10_AXI_RRESP;
  wire axi_peripheral_interconnect_M10_AXI_RVALID;
  wire [31:0]axi_peripheral_interconnect_M10_AXI_WDATA;
  wire axi_peripheral_interconnect_M10_AXI_WREADY;
  wire [3:0]axi_peripheral_interconnect_M10_AXI_WSTRB;
  wire axi_peripheral_interconnect_M10_AXI_WVALID;
  wire [31:0]axi_peripheral_interconnect_M11_AXI_ARADDR;
  wire [2:0]axi_peripheral_interconnect_M11_AXI_ARPROT;
  wire axi_peripheral_interconnect_M11_AXI_ARREADY;
  wire axi_peripheral_interconnect_M11_AXI_ARVALID;
  wire [31:0]axi_peripheral_interconnect_M11_AXI_AWADDR;
  wire [2:0]axi_peripheral_interconnect_M11_AXI_AWPROT;
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
  wire [2:0]axi_peripheral_interconnect_M12_AXI_ARPROT;
  wire axi_peripheral_interconnect_M12_AXI_ARREADY;
  wire axi_peripheral_interconnect_M12_AXI_ARVALID;
  wire [31:0]axi_peripheral_interconnect_M12_AXI_AWADDR;
  wire [2:0]axi_peripheral_interconnect_M12_AXI_AWPROT;
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
  wire [2:0]axi_peripheral_interconnect_M13_AXI_ARPROT;
  wire axi_peripheral_interconnect_M13_AXI_ARREADY;
  wire axi_peripheral_interconnect_M13_AXI_ARVALID;
  wire [31:0]axi_peripheral_interconnect_M13_AXI_AWADDR;
  wire [2:0]axi_peripheral_interconnect_M13_AXI_AWPROT;
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
  wire [2:0]axi_peripheral_interconnect_M14_AXI_ARPROT;
  wire axi_peripheral_interconnect_M14_AXI_ARREADY;
  wire axi_peripheral_interconnect_M14_AXI_ARVALID;
  wire [31:0]axi_peripheral_interconnect_M14_AXI_AWADDR;
  wire [2:0]axi_peripheral_interconnect_M14_AXI_AWPROT;
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
  wire [31:0]axi_peripheral_interconnect_M15_AXI_ARADDR;
  wire [2:0]axi_peripheral_interconnect_M15_AXI_ARPROT;
  wire axi_peripheral_interconnect_M15_AXI_ARREADY;
  wire axi_peripheral_interconnect_M15_AXI_ARVALID;
  wire [31:0]axi_peripheral_interconnect_M15_AXI_AWADDR;
  wire [2:0]axi_peripheral_interconnect_M15_AXI_AWPROT;
  wire axi_peripheral_interconnect_M15_AXI_AWREADY;
  wire axi_peripheral_interconnect_M15_AXI_AWVALID;
  wire axi_peripheral_interconnect_M15_AXI_BREADY;
  wire [1:0]axi_peripheral_interconnect_M15_AXI_BRESP;
  wire axi_peripheral_interconnect_M15_AXI_BVALID;
  wire [31:0]axi_peripheral_interconnect_M15_AXI_RDATA;
  wire axi_peripheral_interconnect_M15_AXI_RREADY;
  wire [1:0]axi_peripheral_interconnect_M15_AXI_RRESP;
  wire axi_peripheral_interconnect_M15_AXI_RVALID;
  wire [31:0]axi_peripheral_interconnect_M15_AXI_WDATA;
  wire axi_peripheral_interconnect_M15_AXI_WREADY;
  wire [3:0]axi_peripheral_interconnect_M15_AXI_WSTRB;
  wire axi_peripheral_interconnect_M15_AXI_WVALID;
  wire [31:0]axi_peripheral_interconnect_M16_AXI_ARADDR;
  wire axi_peripheral_interconnect_M16_AXI_ARREADY;
  wire axi_peripheral_interconnect_M16_AXI_ARVALID;
  wire [31:0]axi_peripheral_interconnect_M16_AXI_AWADDR;
  wire axi_peripheral_interconnect_M16_AXI_AWREADY;
  wire axi_peripheral_interconnect_M16_AXI_AWVALID;
  wire axi_peripheral_interconnect_M16_AXI_BREADY;
  wire [1:0]axi_peripheral_interconnect_M16_AXI_BRESP;
  wire axi_peripheral_interconnect_M16_AXI_BVALID;
  wire [31:0]axi_peripheral_interconnect_M16_AXI_RDATA;
  wire axi_peripheral_interconnect_M16_AXI_RREADY;
  wire [1:0]axi_peripheral_interconnect_M16_AXI_RRESP;
  wire axi_peripheral_interconnect_M16_AXI_RVALID;
  wire [31:0]axi_peripheral_interconnect_M16_AXI_WDATA;
  wire axi_peripheral_interconnect_M16_AXI_WREADY;
  wire [3:0]axi_peripheral_interconnect_M16_AXI_WSTRB;
  wire axi_peripheral_interconnect_M16_AXI_WVALID;
  wire [31:0]axi_peripheral_interconnect_M17_AXI_ARADDR;
  wire [2:0]axi_peripheral_interconnect_M17_AXI_ARPROT;
  wire axi_peripheral_interconnect_M17_AXI_ARREADY;
  wire axi_peripheral_interconnect_M17_AXI_ARVALID;
  wire [31:0]axi_peripheral_interconnect_M17_AXI_AWADDR;
  wire [2:0]axi_peripheral_interconnect_M17_AXI_AWPROT;
  wire axi_peripheral_interconnect_M17_AXI_AWREADY;
  wire axi_peripheral_interconnect_M17_AXI_AWVALID;
  wire axi_peripheral_interconnect_M17_AXI_BREADY;
  wire [1:0]axi_peripheral_interconnect_M17_AXI_BRESP;
  wire axi_peripheral_interconnect_M17_AXI_BVALID;
  wire [31:0]axi_peripheral_interconnect_M17_AXI_RDATA;
  wire axi_peripheral_interconnect_M17_AXI_RREADY;
  wire [1:0]axi_peripheral_interconnect_M17_AXI_RRESP;
  wire axi_peripheral_interconnect_M17_AXI_RVALID;
  wire [31:0]axi_peripheral_interconnect_M17_AXI_WDATA;
  wire axi_peripheral_interconnect_M17_AXI_WREADY;
  wire [3:0]axi_peripheral_interconnect_M17_AXI_WSTRB;
  wire axi_peripheral_interconnect_M17_AXI_WVALID;
  wire [31:0]axi_peripheral_interconnect_M18_AXI_ARADDR;
  wire [2:0]axi_peripheral_interconnect_M18_AXI_ARPROT;
  wire axi_peripheral_interconnect_M18_AXI_ARREADY;
  wire axi_peripheral_interconnect_M18_AXI_ARVALID;
  wire [31:0]axi_peripheral_interconnect_M18_AXI_AWADDR;
  wire [2:0]axi_peripheral_interconnect_M18_AXI_AWPROT;
  wire axi_peripheral_interconnect_M18_AXI_AWREADY;
  wire axi_peripheral_interconnect_M18_AXI_AWVALID;
  wire axi_peripheral_interconnect_M18_AXI_BREADY;
  wire [1:0]axi_peripheral_interconnect_M18_AXI_BRESP;
  wire axi_peripheral_interconnect_M18_AXI_BVALID;
  wire [31:0]axi_peripheral_interconnect_M18_AXI_RDATA;
  wire axi_peripheral_interconnect_M18_AXI_RREADY;
  wire [1:0]axi_peripheral_interconnect_M18_AXI_RRESP;
  wire axi_peripheral_interconnect_M18_AXI_RVALID;
  wire [31:0]axi_peripheral_interconnect_M18_AXI_WDATA;
  wire axi_peripheral_interconnect_M18_AXI_WREADY;
  wire [3:0]axi_peripheral_interconnect_M18_AXI_WSTRB;
  wire axi_peripheral_interconnect_M18_AXI_WVALID;
  wire [31:0]axi_peripheral_interconnect_M19_AXI_ARADDR;
  wire [2:0]axi_peripheral_interconnect_M19_AXI_ARPROT;
  wire axi_peripheral_interconnect_M19_AXI_ARREADY;
  wire axi_peripheral_interconnect_M19_AXI_ARVALID;
  wire [31:0]axi_peripheral_interconnect_M19_AXI_AWADDR;
  wire [2:0]axi_peripheral_interconnect_M19_AXI_AWPROT;
  wire axi_peripheral_interconnect_M19_AXI_AWREADY;
  wire axi_peripheral_interconnect_M19_AXI_AWVALID;
  wire axi_peripheral_interconnect_M19_AXI_BREADY;
  wire [1:0]axi_peripheral_interconnect_M19_AXI_BRESP;
  wire axi_peripheral_interconnect_M19_AXI_BVALID;
  wire [31:0]axi_peripheral_interconnect_M19_AXI_RDATA;
  wire axi_peripheral_interconnect_M19_AXI_RREADY;
  wire [1:0]axi_peripheral_interconnect_M19_AXI_RRESP;
  wire axi_peripheral_interconnect_M19_AXI_RVALID;
  wire [31:0]axi_peripheral_interconnect_M19_AXI_WDATA;
  wire axi_peripheral_interconnect_M19_AXI_WREADY;
  wire [3:0]axi_peripheral_interconnect_M19_AXI_WSTRB;
  wire axi_peripheral_interconnect_M19_AXI_WVALID;
  wire [31:0]axi_peripheral_interconnect_M20_AXI_ARADDR;
  wire axi_peripheral_interconnect_M20_AXI_ARREADY;
  wire [0:0]axi_peripheral_interconnect_M20_AXI_ARVALID;
  wire [31:0]axi_peripheral_interconnect_M20_AXI_AWADDR;
  wire axi_peripheral_interconnect_M20_AXI_AWREADY;
  wire [0:0]axi_peripheral_interconnect_M20_AXI_AWVALID;
  wire [0:0]axi_peripheral_interconnect_M20_AXI_BREADY;
  wire [1:0]axi_peripheral_interconnect_M20_AXI_BRESP;
  wire axi_peripheral_interconnect_M20_AXI_BVALID;
  wire [31:0]axi_peripheral_interconnect_M20_AXI_RDATA;
  wire [0:0]axi_peripheral_interconnect_M20_AXI_RREADY;
  wire [1:0]axi_peripheral_interconnect_M20_AXI_RRESP;
  wire axi_peripheral_interconnect_M20_AXI_RVALID;
  wire [31:0]axi_peripheral_interconnect_M20_AXI_WDATA;
  wire axi_peripheral_interconnect_M20_AXI_WREADY;
  wire [3:0]axi_peripheral_interconnect_M20_AXI_WSTRB;
  wire [0:0]axi_peripheral_interconnect_M20_AXI_WVALID;
  wire [31:0]axi_peripheral_interconnect_M21_AXI_ARADDR;
  wire [2:0]axi_peripheral_interconnect_M21_AXI_ARPROT;
  wire axi_peripheral_interconnect_M21_AXI_ARREADY;
  wire axi_peripheral_interconnect_M21_AXI_ARVALID;
  wire [31:0]axi_peripheral_interconnect_M21_AXI_AWADDR;
  wire [2:0]axi_peripheral_interconnect_M21_AXI_AWPROT;
  wire axi_peripheral_interconnect_M21_AXI_AWREADY;
  wire axi_peripheral_interconnect_M21_AXI_AWVALID;
  wire axi_peripheral_interconnect_M21_AXI_BREADY;
  wire [1:0]axi_peripheral_interconnect_M21_AXI_BRESP;
  wire axi_peripheral_interconnect_M21_AXI_BVALID;
  wire [31:0]axi_peripheral_interconnect_M21_AXI_RDATA;
  wire axi_peripheral_interconnect_M21_AXI_RREADY;
  wire [1:0]axi_peripheral_interconnect_M21_AXI_RRESP;
  wire axi_peripheral_interconnect_M21_AXI_RVALID;
  wire [31:0]axi_peripheral_interconnect_M21_AXI_WDATA;
  wire axi_peripheral_interconnect_M21_AXI_WREADY;
  wire [3:0]axi_peripheral_interconnect_M21_AXI_WSTRB;
  wire axi_peripheral_interconnect_M21_AXI_WVALID;
  wire [31:0]axi_protocol_convert_0_M_AXI_ARADDR;
  wire [2:0]axi_protocol_convert_0_M_AXI_ARPROT;
  wire axi_protocol_convert_0_M_AXI_ARREADY;
  wire axi_protocol_convert_0_M_AXI_ARVALID;
  wire [31:0]axi_protocol_convert_0_M_AXI_AWADDR;
  wire [2:0]axi_protocol_convert_0_M_AXI_AWPROT;
  wire axi_protocol_convert_0_M_AXI_AWREADY;
  wire axi_protocol_convert_0_M_AXI_AWVALID;
  wire axi_protocol_convert_0_M_AXI_BREADY;
  wire [1:0]axi_protocol_convert_0_M_AXI_BRESP;
  wire axi_protocol_convert_0_M_AXI_BVALID;
  wire [63:0]axi_protocol_convert_0_M_AXI_RDATA;
  wire axi_protocol_convert_0_M_AXI_RREADY;
  wire [1:0]axi_protocol_convert_0_M_AXI_RRESP;
  wire axi_protocol_convert_0_M_AXI_RVALID;
  wire [63:0]axi_protocol_convert_0_M_AXI_WDATA;
  wire axi_protocol_convert_0_M_AXI_WREADY;
  wire [7:0]axi_protocol_convert_0_M_AXI_WSTRB;
  wire axi_protocol_convert_0_M_AXI_WVALID;
  wire axi_qspi_mm_0_irq;
  wire axi_qspi_mm_0_spi_IO0_I;
  wire axi_qspi_mm_0_spi_IO0_O;
  wire axi_qspi_mm_0_spi_IO0_T;
  wire axi_qspi_mm_0_spi_IO1_I;
  wire axi_qspi_mm_0_spi_IO1_O;
  wire axi_qspi_mm_0_spi_IO1_T;
  wire axi_qspi_mm_0_spi_IO2_I;
  wire axi_qspi_mm_0_spi_IO2_O;
  wire axi_qspi_mm_0_spi_IO2_T;
  wire axi_qspi_mm_0_spi_IO3_I;
  wire axi_qspi_mm_0_spi_IO3_O;
  wire axi_qspi_mm_0_spi_IO3_T;
  wire axi_qspi_mm_0_spi_SCK_I;
  wire axi_qspi_mm_0_spi_SCK_O;
  wire axi_qspi_mm_0_spi_SCK_T;
  wire [0:0]axi_qspi_mm_0_spi_SS_I;
  wire [0:0]axi_qspi_mm_0_spi_SS_O;
  wire axi_qspi_mm_0_spi_SS_T;
  wire axi_rf_timestamping_0_irq;
  wire [1:0]axi_rf_timestamping_0_rx_enable;
  wire [1:0]axi_rf_timestamping_0_tx_enable;
  wire axi_rf_timestamping_ts_clk_rx_en;
  wire axi_rf_timestamping_ts_clk_tx_en;
  wire axi_spi_0_irq;
  wire axi_spi_0_spi1_IO0_I;
  wire axi_spi_0_spi1_IO0_O;
  wire axi_spi_0_spi1_IO0_T;
  wire axi_spi_0_spi1_IO1_I;
  wire axi_spi_0_spi1_IO1_O;
  wire axi_spi_0_spi1_IO1_T;
  wire axi_spi_0_spi1_SCK_I;
  wire axi_spi_0_spi1_SCK_O;
  wire axi_spi_0_spi1_SCK_T;
  wire [0:0]axi_spi_0_spi1_SS_I;
  wire [0:0]axi_spi_0_spi1_SS_O;
  wire axi_spi_0_spi1_SS_T;
  wire axi_spi_1_irq;
  wire axi_spi_1_spi_IO0_I;
  wire axi_spi_1_spi_IO0_O;
  wire axi_spi_1_spi_IO0_T;
  wire axi_spi_1_spi_IO1_I;
  wire axi_spi_1_spi_IO1_O;
  wire axi_spi_1_spi_IO1_T;
  wire axi_spi_1_spi_SCK_I;
  wire axi_spi_1_spi_SCK_O;
  wire axi_spi_1_spi_SCK_T;
  wire [0:0]axi_spi_1_spi_SS_I;
  wire [0:0]axi_spi_1_spi_SS_O;
  wire axi_spi_1_spi_SS_T;
  wire clk_wiz_0_clk_out1;
  wire clk_wiz_0_delay_ref_clk;
  wire clk_wiz_0_locked;
  wire [1:0]gpio_concat_0_2_dout;
  wire [31:0]gpio_concat_0_dout;
  wire [3:0]gpio_concat_1_dout;
  wire [31:0]gpio_concat_2_dout;
  wire [31:0]gpio_concat_2_dout1;
  wire [0:0]gpio_slice_clk_mngr_oen_Dout;
  wire [0:0]gpio_slice_cm4_wake_Dout;
  wire [0:0]gpio_slice_codec_resetn_Dout;
  wire [0:0]gpio_slice_cpu_resetn_Dout;
  wire [0:0]gpio_slice_ddr_intf_reset_Dout;
  wire [0:0]gpio_slice_ddr_reset_Dout;
  wire [0:0]gpio_slice_i2s_reset_Dout;
  wire [0:0]gpio_slice_pm_i2c_en_Dout;
  wire [0:0]gpio_slice_rf_reset_Dout;
  wire [0:0]gpio_slice_synth_ce_Dout;
  wire [0:0]gpio_slice_synth_mute_Dout;
  wire [0:0]gpio_slice_synth_resetn_Dout;
  wire [0:0]gpio_slice_synth_sync_Dout;
  wire [0:0]gpio_slice_sys_aux_reset_Dout;
  wire [0:0]gpio_slice_trx_en_agc_Dout;
  wire [0:0]gpio_slice_trx_resestn_Dout;
  wire [0:0]gpio_slice_trx_sync_in_Dout;
  wire [0:0]gpio_slice_trx_up_enable_Dout;
  wire [0:0]gpio_slice_trx_up_txnrx_Dout;
  wire [21:0]irq_concat_0_dout;
  wire [0:0]logic_and_0_Res;
  wire [0:0]logic_and_1_Res;
  wire [0:0]logic_and_2_Res;
  wire [0:0]logic_and_3_Res;
  wire [0:0]logic_and_4_Res;
  wire [0:0]logic_and_5_Res;
  wire [0:0]logic_not_0_Res;
  wire [0:0]logic_not_1_Res;
  wire [0:0]logic_not_2_Res;
  wire [0:0]logic_not_3_Res;
  wire [0:0]logic_or_0_Res;
  wire [0:0]logic_or_2_Res;
  wire [0:0]logic_or_3_Res;
  wire [0:0]logic_or_4_Res;
  wire [0:0]logic_or_5_Res;
  wire [0:0]logic_or_6_Res;
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
  wire mig_7series_0_init_calib_complete;
  wire mig_7series_0_mmcm_locked;
  wire mig_7series_0_ui_clk;
  wire mig_7series_0_ui_clk_sync_rst;
  wire [31:0]picorv32_0_eoi;
  wire picorv32_0_trap;
  wire [0:0]rf_reset_combiner_Res;
  wire [0:0]rst_FPGA_CLK1_49M152_peripheral_aresetn;
  wire [0:0]rst_axi_ad9361_61M44_peripheral_aresetn;
  wire [0:0]rst_axi_ad9361_61M44_peripheral_reset;
  wire [0:0]rst_axi_pcie_0_125M_interconnect_aresetn;
  wire [0:0]rst_axi_pcie_0_125M_pcie_core_peripheral_aresetn;
  wire [0:0]rst_axi_pcie_0_125M_peripheral_aresetn;
  wire [0:0]rst_mig_7series_0_166M_peripheral_aresetn;
  wire [0:0]rst_mig_7series_0_250M_peripheral_aresetn;
  wire rst_pulse_gen_0_rst_out;
  wire [1:0]rx_data_ready_concat_dout;
  wire [1:0]rx_dma_xfer_req_concat_dout;
  wire [0:0]rx_enable_slice_rx0_Dout;
  wire [0:0]rx_enable_slice_rx1_Dout;
  wire [1:0]rx_fifo_overflow_concat_dout;
  wire [1:0]tx_data_ready_concat_dout;
  wire [0:0]tx_enable_slice_tx0_Dout;
  wire [0:0]tx_enable_slice_tx1_Dout;
  wire [1:0]tx_fifo_underflow_concat_concat_dout;
  wire [1:0]tx_fifo_underflow_concat_dout;
  wire [31:0]util_cpack2_0_packed_fifo_wr_DATA;
  wire util_cpack2_0_packed_fifo_wr_EN;
  wire util_cpack2_0_packed_fifo_wr_OVERFLOW;
  wire util_cpack2_0_packed_fifo_wr_SYNC;
  wire [0:0]util_ds_buf_0_IBUF_OUT;
  wire [15:0]util_upack2_1_fifo_rd_data_0;
  wire [15:0]util_upack2_1_fifo_rd_data_1;
  wire util_vector_logic_2_Res;
  wire xadc_wiz_0_ip2intc_irpt;
  wire [11:0]xadc_wiz_0_temp_out;
  wire [3:0]xlslice_0_Dout;

  assign AUDIO_I2C_scl_o = axi_iic_0_IIC_SCL_O;
  assign AUDIO_I2C_scl_t = axi_iic_0_IIC_SCL_T;
  assign AUDIO_I2C_sda_o = axi_iic_0_IIC_SDA_O;
  assign AUDIO_I2C_sda_t = axi_iic_0_IIC_SDA_T;
  assign CLK_MNGR_IRQn_1 = CLK_MNGR_IRQn;
  assign CLK_MNGR_OEn[0] = gpio_slice_clk_mngr_oen_Dout;
  assign CM4_WAKE[0] = gpio_slice_cm4_wake_Dout;
  assign CODEC_I2S_bclk = axi_i2s_i2s_BCLK;
  assign CODEC_I2S_lrclk = axi_i2s_i2s_LRCLK;
  assign CODEC_I2S_sdata_out = axi_i2s_i2s_SDATA_OUT;
  assign CODEC_MCLK = axi_i2s_0_i2s_mclk;
  assign CODEC_RSTn[0] = gpio_slice_codec_resetn_Dout;
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
  assign EXT_I2C_scl_o = axi_iic_2_IIC_SCL_O;
  assign EXT_I2C_scl_t = axi_iic_2_IIC_SCL_T;
  assign EXT_I2C_sda_o = axi_iic_2_IIC_SDA_O;
  assign EXT_I2C_sda_t = axi_iic_2_IIC_SDA_T;
  assign FLASH_QSPI_io0_o = axi_qspi_mm_0_spi_IO0_O;
  assign FLASH_QSPI_io0_t = axi_qspi_mm_0_spi_IO0_T;
  assign FLASH_QSPI_io1_o = axi_qspi_mm_0_spi_IO1_O;
  assign FLASH_QSPI_io1_t = axi_qspi_mm_0_spi_IO1_T;
  assign FLASH_QSPI_io2_o = axi_qspi_mm_0_spi_IO2_O;
  assign FLASH_QSPI_io2_t = axi_qspi_mm_0_spi_IO2_T;
  assign FLASH_QSPI_io3_o = axi_qspi_mm_0_spi_IO3_O;
  assign FLASH_QSPI_io3_t = axi_qspi_mm_0_spi_IO3_T;
  assign FLASH_QSPI_sck_o = axi_qspi_mm_0_spi_SCK_O;
  assign FLASH_QSPI_sck_t = axi_qspi_mm_0_spi_SCK_T;
  assign FLASH_QSPI_ss_o[0] = axi_qspi_mm_0_spi_SS_O;
  assign FLASH_QSPI_ss_t = axi_qspi_mm_0_spi_SS_T;
  assign FPGA_CLK0_1 = FPGA_CLK0;
  assign FPGA_CLK1_1 = FPGA_CLK1;
  assign PCIe_CLKREQn[0] = GND_0_dout;
  assign PCIe_REFCLK_1_CLK_N = PCIe_REFCLK_clk_n[0];
  assign PCIe_REFCLK_1_CLK_P = PCIe_REFCLK_clk_p[0];
  assign PCIe_WAKEn[0] = GND_0_dout;
  assign PCIe_txn[1:0] = axi_pcie_0_pcie_7x_mgt_txn;
  assign PCIe_txp[1:0] = axi_pcie_0_pcie_7x_mgt_txp;
  assign PM_I2C_EN[0] = gpio_slice_pm_i2c_en_Dout;
  assign RXCLK_1 = TRX_DATA_CLK;
  assign RXDATA_1 = TRX_P1_RXDATA[11:0];
  assign RXFRAME_1 = TRX_RXFRAME;
  assign SYNTH_CE[0] = gpio_slice_synth_ce_Dout;
  assign SYNTH_LD_1 = SYNTH_LD;
  assign SYNTH_MUTE[0] = gpio_slice_synth_mute_Dout;
  assign SYNTH_RESETn[0] = gpio_slice_synth_resetn_Dout;
  assign SYNTH_SPI_io0_o = axi_spi_1_spi_IO0_O;
  assign SYNTH_SPI_io0_t = axi_spi_1_spi_IO0_T;
  assign SYNTH_SPI_io1_o = axi_spi_1_spi_IO1_O;
  assign SYNTH_SPI_io1_t = axi_spi_1_spi_IO1_T;
  assign SYNTH_SPI_sck_o = axi_spi_1_spi_SCK_O;
  assign SYNTH_SPI_sck_t = axi_spi_1_spi_SCK_T;
  assign SYNTH_SPI_ss_o[0] = axi_spi_1_spi_SS_O;
  assign SYNTH_SPI_ss_t = axi_spi_1_spi_SS_T;
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
  assign TRX_RESETn[0] = gpio_slice_trx_resestn_Dout;
  assign TRX_SPI_io0_o = axi_spi_0_spi1_IO0_O;
  assign TRX_SPI_io0_t = axi_spi_0_spi1_IO0_T;
  assign TRX_SPI_io1_o = axi_spi_0_spi1_IO1_O;
  assign TRX_SPI_io1_t = axi_spi_0_spi1_IO1_T;
  assign TRX_SPI_sck_o = axi_spi_0_spi1_SCK_O;
  assign TRX_SPI_sck_t = axi_spi_0_spi1_SCK_T;
  assign TRX_SPI_ss_o[0] = axi_spi_0_spi1_SS_O;
  assign TRX_SPI_ss_t = axi_spi_0_spi1_SS_T;
  assign TRX_SYNC_IN[0] = gpio_slice_trx_sync_in_Dout;
  assign TRX_TXFRAME = axi_ad9361_0_tx_frame_out;
  assign TRX_TXNRX = axi_ad9361_0_txnrx;
  assign VIN_REG_ALERTn_1 = VIN_REG_ALERTn;
  assign Vp_Vn_0_1_V_N = ADCIN_MAIN_v_n;
  assign Vp_Vn_0_1_V_P = ADCIN_MAIN_v_p;
  assign axi_i2s_i2s_SDATA_IN = CODEC_I2S_sdata_in;
  assign axi_iic_0_IIC_SCL_I = AUDIO_I2C_scl_i;
  assign axi_iic_0_IIC_SDA_I = AUDIO_I2C_sda_i;
  assign axi_iic_1_IIC_SCL_I = SYS_I2C_scl_i;
  assign axi_iic_1_IIC_SDA_I = SYS_I2C_sda_i;
  assign axi_iic_2_IIC_SCL_I = EXT_I2C_scl_i;
  assign axi_iic_2_IIC_SDA_I = EXT_I2C_sda_i;
  assign axi_pcie_0_pcie_7x_mgt_rxn = PCIe_rxn[1:0];
  assign axi_pcie_0_pcie_7x_mgt_rxp = PCIe_rxp[1:0];
  assign axi_qspi_mm_0_spi_IO0_I = FLASH_QSPI_io0_i;
  assign axi_qspi_mm_0_spi_IO1_I = FLASH_QSPI_io1_i;
  assign axi_qspi_mm_0_spi_IO2_I = FLASH_QSPI_io2_i;
  assign axi_qspi_mm_0_spi_IO3_I = FLASH_QSPI_io3_i;
  assign axi_qspi_mm_0_spi_SCK_I = FLASH_QSPI_sck_i;
  assign axi_qspi_mm_0_spi_SS_I = FLASH_QSPI_ss_i[0];
  assign axi_spi_0_spi1_IO0_I = TRX_SPI_io0_i;
  assign axi_spi_0_spi1_IO1_I = TRX_SPI_io1_i;
  assign axi_spi_0_spi1_SCK_I = TRX_SPI_sck_i;
  assign axi_spi_0_spi1_SS_I = TRX_SPI_ss_i[0];
  assign axi_spi_1_spi_IO0_I = SYNTH_SPI_io0_i;
  assign axi_spi_1_spi_IO1_I = SYNTH_SPI_io1_i;
  assign axi_spi_1_spi_SCK_I = SYNTH_SPI_sck_i;
  assign axi_spi_1_spi_SS_I = SYNTH_SPI_ss_i[0];
  assign util_vector_logic_2_Res = PCIe_RESETn;
  icyradio_GND_0_0 GND_0
       (.dout(GND_0_dout));
  icyradio_GND_1_0 GND_1
       (.dout(GND_1_dout));
  icyradio_GND_10_0 GND_10
       (.dout(GND_22_dout));
  icyradio_GND_11_0 GND_11
       (.dout(GND_11_dout));
  icyradio_GND_12_0 GND_12
       (.dout(GND_23_dout));
  icyradio_GND_13_0 GND_13
       (.dout(GND_13_dout));
  icyradio_GND_14_0 GND_14
       (.dout(GND_14_dout));
  icyradio_GND_15_0 GND_15
       (.dout(GND_15_dout));
  icyradio_GND_16_0 GND_16
       (.dout(GND_21_dout));
  icyradio_GND_17_0 GND_17
       (.dout(GND_17_dout));
  icyradio_GND_18_0 GND_18
       (.dout(GND_18_dout));
  icyradio_GND_19_0 GND_19
       (.dout(GND_19_dout));
  icyradio_GND_2_0 GND_2
       (.dout(GND_25_dout));
  icyradio_GND_20_0 GND_20
       (.dout(GND_20_dout));
  icyradio_GND_19_1 GND_21
       (.dout(GND_21_dout1));
  icyradio_GND_3_0 GND_3
       (.dout(GND_3_dout));
  icyradio_GND_4_0 GND_4
       (.dout(GND_4_dout));
  icyradio_GND_5_0 GND_5
       (.dout(GND_5_dout));
  icyradio_GND_6_0 GND_6
       (.dout(GND_6_dout));
  icyradio_GND_7_0 GND_7
       (.dout(GND_7_dout));
  icyradio_GND_8_0 GND_8
       (.dout(GND_8_dout));
  icyradio_GND_9_0 GND_9
       (.dout(GND_9_dout));
  icyradio_VCC_0_0 VCC_0
       (.dout(VCC_0_dout));
  icyradio_VCC_1_0 VCC_1
       (.dout(VCC_1_dout));
  icyradio_VCC_1_1 VCC_2
       (.dout(VCC_2_dout));
  icyradio_ad9361_adc_packer_rx0_0 ad9361_adc_packer_rx0
       (.clk(axi_ad9361_0_l_clk),
        .enable_0(axi_ad9361_0_adc_enable_i0),
        .enable_1(axi_ad9361_0_adc_enable_q0),
        .fifo_wr_data_0(axi_ad9361_0_adc_data_i0),
        .fifo_wr_data_1(axi_ad9361_0_adc_data_q0),
        .fifo_wr_en(logic_and_0_Res),
        .fifo_wr_overflow(ad9361_adc_packer_rx0_fifo_wr_overflow),
        .packed_fifo_wr_data(util_cpack2_0_packed_fifo_wr_DATA),
        .packed_fifo_wr_en(util_cpack2_0_packed_fifo_wr_EN),
        .packed_fifo_wr_overflow(util_cpack2_0_packed_fifo_wr_OVERFLOW),
        .packed_fifo_wr_sync(util_cpack2_0_packed_fifo_wr_SYNC),
        .reset(logic_or_4_Res));
  icyradio_ad9361_adc_packer_rx1_0 ad9361_adc_packer_rx1
       (.clk(axi_ad9361_0_l_clk),
        .enable_0(axi_ad9361_0_adc_enable_i1),
        .enable_1(axi_ad9361_0_adc_enable_q1),
        .fifo_wr_data_0(axi_ad9361_0_adc_data_i1),
        .fifo_wr_data_1(axi_ad9361_0_adc_data_q1),
        .fifo_wr_en(logic_and_1_Res),
        .fifo_wr_overflow(ad9361_adc_packer_rx1_fifo_wr_overflow),
        .packed_fifo_wr_data(ad9361_adc_packer_rx1_packed_fifo_wr_DATA),
        .packed_fifo_wr_en(ad9361_adc_packer_rx1_packed_fifo_wr_EN),
        .packed_fifo_wr_overflow(ad9361_adc_packer_rx1_packed_fifo_wr_OVERFLOW),
        .packed_fifo_wr_sync(ad9361_adc_packer_rx1_packed_fifo_wr_SYNC),
        .reset(logic_or_0_Res));
  icyradio_ad9361_dac_unpacker_tx0_0 ad9361_dac_unpacker_tx0
       (.clk(axi_ad9361_0_l_clk),
        .enable_0(axi_ad9361_0_dac_enable_i0),
        .enable_1(axi_ad9361_0_dac_enable_q0),
        .fifo_rd_data_0(util_upack2_1_fifo_rd_data_0),
        .fifo_rd_data_1(util_upack2_1_fifo_rd_data_1),
        .fifo_rd_en(axi_ad9361_0_dac_valid_i0),
        .fifo_rd_underflow(ad9361_dac_unpacker_tx0_fifo_rd_underflow),
        .reset(logic_or_3_Res),
        .s_axis_data(axi_dmac_rf_tx_m_axis_data),
        .s_axis_ready(ad9361_dac_unpacker_s_axis_ready),
        .s_axis_valid(logic_and_2_Res));
  icyradio_ad9361_dac_unpacker_tx1_0 ad9361_dac_unpacker_tx1
       (.clk(axi_ad9361_0_l_clk),
        .enable_0(axi_ad9361_0_dac_enable_i1),
        .enable_1(axi_ad9361_0_dac_enable_q1),
        .fifo_rd_data_0(ad9361_dac_unpacker_tx1_fifo_rd_data_0),
        .fifo_rd_data_1(ad9361_dac_unpacker_tx1_fifo_rd_data_1),
        .fifo_rd_en(axi_ad9361_dac_valid_i1),
        .fifo_rd_underflow(ad9361_dac_unpacker_tx1_fifo_rd_underflow),
        .reset(logic_or_6_Res),
        .s_axis_data(axi_dmac_rf_tx1_m_axis_data),
        .s_axis_ready(ad9361_dac_unpacker_tx1_s_axis_ready),
        .s_axis_valid(logic_and_5_Res));
  icyradio_adc_dovf_combiner_0 adc_dovf_combiner
       (.Op1(adc_dovf_gate_rx0_Res),
        .Op2(adc_dovf_gate_rx1_Res),
        .Res(adc_dovf_combiner_Res));
  icyradio_adc_dovf_gate_rx0_0 adc_dovf_gate_rx0
       (.Op1(ad9361_adc_packer_rx0_fifo_wr_overflow),
        .Op2(logic_and_0_Res),
        .Res(adc_dovf_gate_rx0_Res));
  icyradio_adc_dovf_gate_rx1_0 adc_dovf_gate_rx1
       (.Op1(ad9361_adc_packer_rx1_fifo_wr_overflow),
        .Op2(logic_and_1_Res),
        .Res(adc_dovf_gate_rx1_Res));
  icyradio_adc_packer_reset_combiner_rx0_0 adc_packer_reset_combiner_rx0
       (.Op1(logic_not_1_Res),
        .Op2(rst_axi_ad9361_61M44_peripheral_reset),
        .Res(logic_or_4_Res));
  icyradio_adc_packer_reset_combiner_rx1_0 adc_packer_reset_combiner_rx1
       (.Op1(rst_axi_ad9361_61M44_peripheral_reset),
        .Op2(logic_not_2_Res),
        .Res(logic_or_0_Res));
  icyradio_axi_ad9361_0 axi_ad9361
       (.adc_data_i0(axi_ad9361_0_adc_data_i0),
        .adc_data_i1(axi_ad9361_0_adc_data_i1),
        .adc_data_q0(axi_ad9361_0_adc_data_q0),
        .adc_data_q1(axi_ad9361_0_adc_data_q1),
        .adc_dovf(adc_dovf_combiner_Res),
        .adc_enable_i0(axi_ad9361_0_adc_enable_i0),
        .adc_enable_i1(axi_ad9361_0_adc_enable_i1),
        .adc_enable_q0(axi_ad9361_0_adc_enable_q0),
        .adc_enable_q1(axi_ad9361_0_adc_enable_q1),
        .adc_r1_mode(axi_ad9361_adc_r1_mode),
        .adc_valid_i0(axi_ad9361_0_adc_valid_i0),
        .adc_valid_i1(axi_ad9361_0_adc_valid_i1),
        .clk(axi_ad9361_0_l_clk),
        .dac_data_i0(util_upack2_1_fifo_rd_data_0),
        .dac_data_i1(ad9361_dac_unpacker_tx1_fifo_rd_data_0),
        .dac_data_q0(util_upack2_1_fifo_rd_data_1),
        .dac_data_q1(ad9361_dac_unpacker_tx1_fifo_rd_data_1),
        .dac_dunf(logic_or_5_Res),
        .dac_enable_i0(axi_ad9361_0_dac_enable_i0),
        .dac_enable_i1(axi_ad9361_0_dac_enable_i1),
        .dac_enable_q0(axi_ad9361_0_dac_enable_q0),
        .dac_enable_q1(axi_ad9361_0_dac_enable_q1),
        .dac_r1_mode(axi_ad9361_dac_r1_mode),
        .dac_sync_in(GND_1_dout),
        .dac_valid_i0(axi_ad9361_0_dac_valid_i0),
        .dac_valid_i1(axi_ad9361_dac_valid_i1),
        .delay_clk(clk_wiz_0_delay_ref_clk),
        .enable(axi_ad9361_0_enable),
        .gps_pps(GND_1_dout),
        .l_clk(axi_ad9361_0_l_clk),
        .rst(axi_ad9361_0_rst),
        .rx_clk_in(RXCLK_1),
        .rx_data_in(RXDATA_1),
        .rx_frame_in(RXFRAME_1),
        .s_axi_aclk(axi_pcie_0_axi_aclk_out),
        .s_axi_araddr(axi_peripheral_interconnect_M21_AXI_ARADDR[15:0]),
        .s_axi_aresetn(rst_axi_pcie_0_125M_peripheral_aresetn),
        .s_axi_arprot(axi_peripheral_interconnect_M21_AXI_ARPROT),
        .s_axi_arready(axi_peripheral_interconnect_M21_AXI_ARREADY),
        .s_axi_arvalid(axi_peripheral_interconnect_M21_AXI_ARVALID),
        .s_axi_awaddr(axi_peripheral_interconnect_M21_AXI_AWADDR[15:0]),
        .s_axi_awprot(axi_peripheral_interconnect_M21_AXI_AWPROT),
        .s_axi_awready(axi_peripheral_interconnect_M21_AXI_AWREADY),
        .s_axi_awvalid(axi_peripheral_interconnect_M21_AXI_AWVALID),
        .s_axi_bready(axi_peripheral_interconnect_M21_AXI_BREADY),
        .s_axi_bresp(axi_peripheral_interconnect_M21_AXI_BRESP),
        .s_axi_bvalid(axi_peripheral_interconnect_M21_AXI_BVALID),
        .s_axi_rdata(axi_peripheral_interconnect_M21_AXI_RDATA),
        .s_axi_rready(axi_peripheral_interconnect_M21_AXI_RREADY),
        .s_axi_rresp(axi_peripheral_interconnect_M21_AXI_RRESP),
        .s_axi_rvalid(axi_peripheral_interconnect_M21_AXI_RVALID),
        .s_axi_wdata(axi_peripheral_interconnect_M21_AXI_WDATA),
        .s_axi_wready(axi_peripheral_interconnect_M21_AXI_WREADY),
        .s_axi_wstrb(axi_peripheral_interconnect_M21_AXI_WSTRB),
        .s_axi_wvalid(axi_peripheral_interconnect_M21_AXI_WVALID),
        .tdd_sync(GND_1_dout),
        .tx_clk_out(axi_ad9361_0_tx_clk_out),
        .tx_data_out(axi_ad9361_0_tx_data_out),
        .tx_frame_out(axi_ad9361_0_tx_frame_out),
        .txnrx(axi_ad9361_0_txnrx),
        .up_adc_gpio_in(GND_13_dout),
        .up_dac_gpio_in(GND_13_dout),
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
        .s_axi_araddr(axi_interconnect_0_M03_AXI1_ARADDR[16:0]),
        .s_axi_arburst(axi_interconnect_0_M03_AXI1_ARBURST),
        .s_axi_arcache(axi_interconnect_0_M03_AXI1_ARCACHE),
        .s_axi_aresetn(rst_axi_pcie_0_125M_peripheral_aresetn),
        .s_axi_arid(axi_interconnect_0_M03_AXI1_ARID),
        .s_axi_arlen(axi_interconnect_0_M03_AXI1_ARLEN),
        .s_axi_arlock(axi_interconnect_0_M03_AXI1_ARLOCK),
        .s_axi_arprot(axi_interconnect_0_M03_AXI1_ARPROT),
        .s_axi_arready(axi_interconnect_0_M03_AXI1_ARREADY),
        .s_axi_arsize(axi_interconnect_0_M03_AXI1_ARSIZE),
        .s_axi_arvalid(axi_interconnect_0_M03_AXI1_ARVALID),
        .s_axi_awaddr(axi_interconnect_0_M03_AXI1_AWADDR[16:0]),
        .s_axi_awburst(axi_interconnect_0_M03_AXI1_AWBURST),
        .s_axi_awcache(axi_interconnect_0_M03_AXI1_AWCACHE),
        .s_axi_awid(axi_interconnect_0_M03_AXI1_AWID),
        .s_axi_awlen(axi_interconnect_0_M03_AXI1_AWLEN),
        .s_axi_awlock(axi_interconnect_0_M03_AXI1_AWLOCK),
        .s_axi_awprot(axi_interconnect_0_M03_AXI1_AWPROT),
        .s_axi_awready(axi_interconnect_0_M03_AXI1_AWREADY),
        .s_axi_awsize(axi_interconnect_0_M03_AXI1_AWSIZE),
        .s_axi_awvalid(axi_interconnect_0_M03_AXI1_AWVALID),
        .s_axi_bid(axi_interconnect_0_M03_AXI1_BID),
        .s_axi_bready(axi_interconnect_0_M03_AXI1_BREADY),
        .s_axi_bresp(axi_interconnect_0_M03_AXI1_BRESP),
        .s_axi_bvalid(axi_interconnect_0_M03_AXI1_BVALID),
        .s_axi_rdata(axi_interconnect_0_M03_AXI1_RDATA),
        .s_axi_rid(axi_interconnect_0_M03_AXI1_RID),
        .s_axi_rlast(axi_interconnect_0_M03_AXI1_RLAST),
        .s_axi_rready(axi_interconnect_0_M03_AXI1_RREADY),
        .s_axi_rresp(axi_interconnect_0_M03_AXI1_RRESP),
        .s_axi_rvalid(axi_interconnect_0_M03_AXI1_RVALID),
        .s_axi_wdata(axi_interconnect_0_M03_AXI1_WDATA),
        .s_axi_wlast(axi_interconnect_0_M03_AXI1_WLAST),
        .s_axi_wready(axi_interconnect_0_M03_AXI1_WREADY),
        .s_axi_wstrb(axi_interconnect_0_M03_AXI1_WSTRB),
        .s_axi_wvalid(axi_interconnect_0_M03_AXI1_WVALID));
  icyradio_axi_bram_ctrl_0_bram_0 axi_bram_ctrl_0_bram
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_0_BRAM_PORTA_ADDR}),
        .clka(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .dina(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .douta(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .ena(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .rsta(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .wea(axi_bram_ctrl_0_BRAM_PORTA_WE));
  icyradio_axi_cpu_dma_interconnect_0 axi_cpu_dma_interconnect
       (.ACLK(axi_pcie_0_axi_aclk_out),
        .ARESETN(rst_axi_pcie_0_125M_interconnect_aresetn),
        .M00_ACLK(axi_pcie_0_axi_aclk_out),
        .M00_ARESETN(rst_axi_pcie_0_125M_interconnect_aresetn),
        .M00_AXI_araddr(axi_cpu_dma_interconnect_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_cpu_dma_interconnect_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_cpu_dma_interconnect_M00_AXI_ARCACHE),
        .M00_AXI_arid(axi_cpu_dma_interconnect_M00_AXI_ARID),
        .M00_AXI_arlen(axi_cpu_dma_interconnect_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_cpu_dma_interconnect_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_cpu_dma_interconnect_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_cpu_dma_interconnect_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_cpu_dma_interconnect_M00_AXI_ARREADY),
        .M00_AXI_arregion(axi_cpu_dma_interconnect_M00_AXI_ARREGION),
        .M00_AXI_arsize(axi_cpu_dma_interconnect_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_cpu_dma_interconnect_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_cpu_dma_interconnect_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_cpu_dma_interconnect_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_cpu_dma_interconnect_M00_AXI_AWCACHE),
        .M00_AXI_awid(axi_cpu_dma_interconnect_M00_AXI_AWID),
        .M00_AXI_awlen(axi_cpu_dma_interconnect_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_cpu_dma_interconnect_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_cpu_dma_interconnect_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_cpu_dma_interconnect_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_cpu_dma_interconnect_M00_AXI_AWREADY),
        .M00_AXI_awregion(axi_cpu_dma_interconnect_M00_AXI_AWREGION),
        .M00_AXI_awsize(axi_cpu_dma_interconnect_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_cpu_dma_interconnect_M00_AXI_AWVALID),
        .M00_AXI_bid(axi_cpu_dma_interconnect_M00_AXI_BID),
        .M00_AXI_bready(axi_cpu_dma_interconnect_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_cpu_dma_interconnect_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_cpu_dma_interconnect_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_cpu_dma_interconnect_M00_AXI_RDATA),
        .M00_AXI_rid(axi_cpu_dma_interconnect_M00_AXI_RID),
        .M00_AXI_rlast(axi_cpu_dma_interconnect_M00_AXI_RLAST),
        .M00_AXI_rready(axi_cpu_dma_interconnect_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_cpu_dma_interconnect_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_cpu_dma_interconnect_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_cpu_dma_interconnect_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_cpu_dma_interconnect_M00_AXI_WLAST),
        .M00_AXI_wready(axi_cpu_dma_interconnect_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_cpu_dma_interconnect_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_cpu_dma_interconnect_M00_AXI_WVALID),
        .M01_ACLK(axi_pcie_0_axi_aclk_out),
        .M01_ARESETN(rst_axi_pcie_0_125M_interconnect_aresetn),
        .M01_AXI_araddr(axi_interconnect_0_M01_AXI2_ARADDR),
        .M01_AXI_arburst(axi_interconnect_0_M01_AXI2_ARBURST),
        .M01_AXI_arid(axi_interconnect_0_M01_AXI2_ARID),
        .M01_AXI_arlen(axi_interconnect_0_M01_AXI2_ARLEN),
        .M01_AXI_arready(axi_interconnect_0_M01_AXI2_ARREADY),
        .M01_AXI_arregion(axi_interconnect_0_M01_AXI2_ARREGION),
        .M01_AXI_arsize(axi_interconnect_0_M01_AXI2_ARSIZE),
        .M01_AXI_arvalid(axi_interconnect_0_M01_AXI2_ARVALID),
        .M01_AXI_awaddr(axi_interconnect_0_M01_AXI2_AWADDR),
        .M01_AXI_awburst(axi_interconnect_0_M01_AXI2_AWBURST),
        .M01_AXI_awid(axi_interconnect_0_M01_AXI2_AWID),
        .M01_AXI_awlen(axi_interconnect_0_M01_AXI2_AWLEN),
        .M01_AXI_awready(axi_interconnect_0_M01_AXI2_AWREADY),
        .M01_AXI_awregion(axi_interconnect_0_M01_AXI2_AWREGION),
        .M01_AXI_awsize(axi_interconnect_0_M01_AXI2_AWSIZE),
        .M01_AXI_awvalid(axi_interconnect_0_M01_AXI2_AWVALID),
        .M01_AXI_bid(axi_interconnect_0_M01_AXI2_BID),
        .M01_AXI_bready(axi_interconnect_0_M01_AXI2_BREADY),
        .M01_AXI_bresp(axi_interconnect_0_M01_AXI2_BRESP),
        .M01_AXI_bvalid(axi_interconnect_0_M01_AXI2_BVALID),
        .M01_AXI_rdata(axi_interconnect_0_M01_AXI2_RDATA),
        .M01_AXI_rid(axi_interconnect_0_M01_AXI2_RID),
        .M01_AXI_rlast(axi_interconnect_0_M01_AXI2_RLAST),
        .M01_AXI_rready(axi_interconnect_0_M01_AXI2_RREADY),
        .M01_AXI_rresp(axi_interconnect_0_M01_AXI2_RRESP),
        .M01_AXI_rvalid(axi_interconnect_0_M01_AXI2_RVALID),
        .M01_AXI_wdata(axi_interconnect_0_M01_AXI2_WDATA),
        .M01_AXI_wlast(axi_interconnect_0_M01_AXI2_WLAST),
        .M01_AXI_wready(axi_interconnect_0_M01_AXI2_WREADY),
        .M01_AXI_wstrb(axi_interconnect_0_M01_AXI2_WSTRB),
        .M01_AXI_wvalid(axi_interconnect_0_M01_AXI2_WVALID),
        .S00_ACLK(axi_pcie_0_axi_aclk_out),
        .S00_ARESETN(rst_axi_pcie_0_125M_interconnect_aresetn),
        .S00_AXI_araddr(axi_dmac_rf_tx_m_src_axi_ARADDR),
        .S00_AXI_arburst(axi_dmac_rf_tx_m_src_axi_ARBURST),
        .S00_AXI_arcache(axi_dmac_rf_tx_m_src_axi_ARCACHE),
        .S00_AXI_arlen(axi_dmac_rf_tx_m_src_axi_ARLEN),
        .S00_AXI_arprot(axi_dmac_rf_tx_m_src_axi_ARPROT),
        .S00_AXI_arready(axi_dmac_rf_tx_m_src_axi_ARREADY),
        .S00_AXI_arsize(axi_dmac_rf_tx_m_src_axi_ARSIZE),
        .S00_AXI_arvalid(axi_dmac_rf_tx_m_src_axi_ARVALID),
        .S00_AXI_rdata(axi_dmac_rf_tx_m_src_axi_RDATA),
        .S00_AXI_rlast(axi_dmac_rf_tx_m_src_axi_RLAST),
        .S00_AXI_rready(axi_dmac_rf_tx_m_src_axi_RREADY),
        .S00_AXI_rresp(axi_dmac_rf_tx_m_src_axi_RRESP),
        .S00_AXI_rvalid(axi_dmac_rf_tx_m_src_axi_RVALID),
        .S01_ACLK(axi_pcie_0_axi_aclk_out),
        .S01_ARESETN(rst_axi_pcie_0_125M_interconnect_aresetn),
        .S01_AXI_araddr(axi_dmac_rf_tx1_m_src_axi_ARADDR),
        .S01_AXI_arburst(axi_dmac_rf_tx1_m_src_axi_ARBURST),
        .S01_AXI_arcache(axi_dmac_rf_tx1_m_src_axi_ARCACHE),
        .S01_AXI_arlen(axi_dmac_rf_tx1_m_src_axi_ARLEN),
        .S01_AXI_arprot(axi_dmac_rf_tx1_m_src_axi_ARPROT),
        .S01_AXI_arready(axi_dmac_rf_tx1_m_src_axi_ARREADY),
        .S01_AXI_arsize(axi_dmac_rf_tx1_m_src_axi_ARSIZE),
        .S01_AXI_arvalid(axi_dmac_rf_tx1_m_src_axi_ARVALID),
        .S01_AXI_rdata(axi_dmac_rf_tx1_m_src_axi_RDATA),
        .S01_AXI_rlast(axi_dmac_rf_tx1_m_src_axi_RLAST),
        .S01_AXI_rready(axi_dmac_rf_tx1_m_src_axi_RREADY),
        .S01_AXI_rresp(axi_dmac_rf_tx1_m_src_axi_RRESP),
        .S01_AXI_rvalid(axi_dmac_rf_tx1_m_src_axi_RVALID),
        .S02_ACLK(axi_pcie_0_axi_aclk_out),
        .S02_ARESETN(rst_axi_pcie_0_125M_interconnect_aresetn),
        .S02_AXI_awaddr(axi_dmac_rf_rx0_m_dest_axi_AWADDR),
        .S02_AXI_awburst(axi_dmac_rf_rx0_m_dest_axi_AWBURST),
        .S02_AXI_awcache(axi_dmac_rf_rx0_m_dest_axi_AWCACHE),
        .S02_AXI_awlen(axi_dmac_rf_rx0_m_dest_axi_AWLEN),
        .S02_AXI_awprot(axi_dmac_rf_rx0_m_dest_axi_AWPROT),
        .S02_AXI_awready(axi_dmac_rf_rx0_m_dest_axi_AWREADY),
        .S02_AXI_awsize(axi_dmac_rf_rx0_m_dest_axi_AWSIZE),
        .S02_AXI_awvalid(axi_dmac_rf_rx0_m_dest_axi_AWVALID),
        .S02_AXI_bready(axi_dmac_rf_rx0_m_dest_axi_BREADY),
        .S02_AXI_bresp(axi_dmac_rf_rx0_m_dest_axi_BRESP),
        .S02_AXI_bvalid(axi_dmac_rf_rx0_m_dest_axi_BVALID),
        .S02_AXI_wdata(axi_dmac_rf_rx0_m_dest_axi_WDATA),
        .S02_AXI_wlast(axi_dmac_rf_rx0_m_dest_axi_WLAST),
        .S02_AXI_wready(axi_dmac_rf_rx0_m_dest_axi_WREADY),
        .S02_AXI_wstrb(axi_dmac_rf_rx0_m_dest_axi_WSTRB),
        .S02_AXI_wvalid(axi_dmac_rf_rx0_m_dest_axi_WVALID),
        .S03_ACLK(axi_pcie_0_axi_aclk_out),
        .S03_ARESETN(rst_axi_pcie_0_125M_interconnect_aresetn),
        .S03_AXI_awaddr(axi_dmac_rf_rx1_m_dest_axi_AWADDR),
        .S03_AXI_awburst(axi_dmac_rf_rx1_m_dest_axi_AWBURST),
        .S03_AXI_awcache(axi_dmac_rf_rx1_m_dest_axi_AWCACHE),
        .S03_AXI_awlen(axi_dmac_rf_rx1_m_dest_axi_AWLEN),
        .S03_AXI_awprot(axi_dmac_rf_rx1_m_dest_axi_AWPROT),
        .S03_AXI_awready(axi_dmac_rf_rx1_m_dest_axi_AWREADY),
        .S03_AXI_awsize(axi_dmac_rf_rx1_m_dest_axi_AWSIZE),
        .S03_AXI_awvalid(axi_dmac_rf_rx1_m_dest_axi_AWVALID),
        .S03_AXI_bready(axi_dmac_rf_rx1_m_dest_axi_BREADY),
        .S03_AXI_bresp(axi_dmac_rf_rx1_m_dest_axi_BRESP),
        .S03_AXI_bvalid(axi_dmac_rf_rx1_m_dest_axi_BVALID),
        .S03_AXI_wdata(axi_dmac_rf_rx1_m_dest_axi_WDATA),
        .S03_AXI_wlast(axi_dmac_rf_rx1_m_dest_axi_WLAST),
        .S03_AXI_wready(axi_dmac_rf_rx1_m_dest_axi_WREADY),
        .S03_AXI_wstrb(axi_dmac_rf_rx1_m_dest_axi_WSTRB),
        .S03_AXI_wvalid(axi_dmac_rf_rx1_m_dest_axi_WVALID),
        .S04_ACLK(axi_pcie_0_axi_aclk_out),
        .S04_ARESETN(rst_axi_pcie_0_125M_interconnect_aresetn),
        .S04_AXI_araddr(axi_dmac_i2s_tx_m_src_axi_ARADDR),
        .S04_AXI_arburst(axi_dmac_i2s_tx_m_src_axi_ARBURST),
        .S04_AXI_arcache(axi_dmac_i2s_tx_m_src_axi_ARCACHE),
        .S04_AXI_arlen(axi_dmac_i2s_tx_m_src_axi_ARLEN),
        .S04_AXI_arprot(axi_dmac_i2s_tx_m_src_axi_ARPROT),
        .S04_AXI_arready(axi_dmac_i2s_tx_m_src_axi_ARREADY),
        .S04_AXI_arsize(axi_dmac_i2s_tx_m_src_axi_ARSIZE),
        .S04_AXI_arvalid(axi_dmac_i2s_tx_m_src_axi_ARVALID),
        .S04_AXI_rdata(axi_dmac_i2s_tx_m_src_axi_RDATA),
        .S04_AXI_rlast(axi_dmac_i2s_tx_m_src_axi_RLAST),
        .S04_AXI_rready(axi_dmac_i2s_tx_m_src_axi_RREADY),
        .S04_AXI_rresp(axi_dmac_i2s_tx_m_src_axi_RRESP),
        .S04_AXI_rvalid(axi_dmac_i2s_tx_m_src_axi_RVALID),
        .S05_ACLK(axi_pcie_0_axi_aclk_out),
        .S05_ARESETN(rst_axi_pcie_0_125M_interconnect_aresetn),
        .S05_AXI_awaddr(axi_dmac_i2s_rx_m_dest_axi_AWADDR),
        .S05_AXI_awburst(axi_dmac_i2s_rx_m_dest_axi_AWBURST),
        .S05_AXI_awcache(axi_dmac_i2s_rx_m_dest_axi_AWCACHE),
        .S05_AXI_awlen(axi_dmac_i2s_rx_m_dest_axi_AWLEN),
        .S05_AXI_awprot(axi_dmac_i2s_rx_m_dest_axi_AWPROT),
        .S05_AXI_awready(axi_dmac_i2s_rx_m_dest_axi_AWREADY),
        .S05_AXI_awsize(axi_dmac_i2s_rx_m_dest_axi_AWSIZE),
        .S05_AXI_awvalid(axi_dmac_i2s_rx_m_dest_axi_AWVALID),
        .S05_AXI_bready(axi_dmac_i2s_rx_m_dest_axi_BREADY),
        .S05_AXI_bresp(axi_dmac_i2s_rx_m_dest_axi_BRESP),
        .S05_AXI_bvalid(axi_dmac_i2s_rx_m_dest_axi_BVALID),
        .S05_AXI_wdata(axi_dmac_i2s_rx_m_dest_axi_WDATA),
        .S05_AXI_wlast(axi_dmac_i2s_rx_m_dest_axi_WLAST),
        .S05_AXI_wready(axi_dmac_i2s_rx_m_dest_axi_WREADY),
        .S05_AXI_wstrb(axi_dmac_i2s_rx_m_dest_axi_WSTRB),
        .S05_AXI_wvalid(axi_dmac_i2s_rx_m_dest_axi_WVALID),
        .S06_ACLK(axi_pcie_0_axi_aclk_out),
        .S06_ARESETN(rst_axi_pcie_0_125M_interconnect_aresetn),
        .S06_AXI_araddr(S06_AXI_1_ARADDR),
        .S06_AXI_arprot(S06_AXI_1_ARPROT),
        .S06_AXI_arready(S06_AXI_1_ARREADY),
        .S06_AXI_arvalid(S06_AXI_1_ARVALID),
        .S06_AXI_awaddr(S06_AXI_1_AWADDR),
        .S06_AXI_awprot(S06_AXI_1_AWPROT),
        .S06_AXI_awready(S06_AXI_1_AWREADY),
        .S06_AXI_awvalid(S06_AXI_1_AWVALID),
        .S06_AXI_bready(S06_AXI_1_BREADY),
        .S06_AXI_bvalid(S06_AXI_1_BVALID),
        .S06_AXI_rdata(S06_AXI_1_RDATA),
        .S06_AXI_rready(S06_AXI_1_RREADY),
        .S06_AXI_rvalid(S06_AXI_1_RVALID),
        .S06_AXI_wdata(S06_AXI_1_WDATA),
        .S06_AXI_wready(S06_AXI_1_WREADY),
        .S06_AXI_wstrb(S06_AXI_1_WSTRB),
        .S06_AXI_wvalid(S06_AXI_1_WVALID));
  icyradio_axi_dmac_i2s_rx_0 axi_dmac_i2s_rx
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
        .s_axi_araddr(axi_peripheral_interconnect_M06_AXI_ARADDR[10:0]),
        .s_axi_aresetn(rst_axi_pcie_0_125M_peripheral_aresetn),
        .s_axi_arprot(axi_peripheral_interconnect_M06_AXI_ARPROT),
        .s_axi_arready(axi_peripheral_interconnect_M06_AXI_ARREADY),
        .s_axi_arvalid(axi_peripheral_interconnect_M06_AXI_ARVALID),
        .s_axi_awaddr(axi_peripheral_interconnect_M06_AXI_AWADDR[10:0]),
        .s_axi_awprot(axi_peripheral_interconnect_M06_AXI_AWPROT),
        .s_axi_awready(axi_peripheral_interconnect_M06_AXI_AWREADY),
        .s_axi_awvalid(axi_peripheral_interconnect_M06_AXI_AWVALID),
        .s_axi_bready(axi_peripheral_interconnect_M06_AXI_BREADY),
        .s_axi_bresp(axi_peripheral_interconnect_M06_AXI_BRESP),
        .s_axi_bvalid(axi_peripheral_interconnect_M06_AXI_BVALID),
        .s_axi_rdata(axi_peripheral_interconnect_M06_AXI_RDATA),
        .s_axi_rready(axi_peripheral_interconnect_M06_AXI_RREADY),
        .s_axi_rresp(axi_peripheral_interconnect_M06_AXI_RRESP),
        .s_axi_rvalid(axi_peripheral_interconnect_M06_AXI_RVALID),
        .s_axi_wdata(axi_peripheral_interconnect_M06_AXI_WDATA),
        .s_axi_wready(axi_peripheral_interconnect_M06_AXI_WREADY),
        .s_axi_wstrb(axi_peripheral_interconnect_M06_AXI_WSTRB),
        .s_axi_wvalid(axi_peripheral_interconnect_M06_AXI_WVALID),
        .s_axis_aclk(FPGA_CLK1_1),
        .s_axis_data(axi_i2s_0_m_axis_TDATA),
        .s_axis_dest({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_id({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_keep({1'b1,1'b1,1'b1,1'b1}),
        .s_axis_last(1'b0),
        .s_axis_ready(axi_i2s_0_m_axis_TREADY),
        .s_axis_strb({1'b1,1'b1,1'b1,1'b1}),
        .s_axis_user(1'b0),
        .s_axis_valid(axi_i2s_0_m_axis_TVALID));
  icyradio_axi_dmac_i2s_tx_0 axi_dmac_i2s_tx
       (.irq(axi_dmac_i2s_tx_irq),
        .m_axis_aclk(FPGA_CLK1_1),
        .m_axis_data(axi_dmac_i2s_tx_m_axis_TDATA),
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
        .s_axi_araddr(axi_peripheral_interconnect_M05_AXI_ARADDR[10:0]),
        .s_axi_aresetn(rst_axi_pcie_0_125M_peripheral_aresetn),
        .s_axi_arprot(axi_peripheral_interconnect_M05_AXI_ARPROT),
        .s_axi_arready(axi_peripheral_interconnect_M05_AXI_ARREADY),
        .s_axi_arvalid(axi_peripheral_interconnect_M05_AXI_ARVALID),
        .s_axi_awaddr(axi_peripheral_interconnect_M05_AXI_AWADDR[10:0]),
        .s_axi_awprot(axi_peripheral_interconnect_M05_AXI_AWPROT),
        .s_axi_awready(axi_peripheral_interconnect_M05_AXI_AWREADY),
        .s_axi_awvalid(axi_peripheral_interconnect_M05_AXI_AWVALID),
        .s_axi_bready(axi_peripheral_interconnect_M05_AXI_BREADY),
        .s_axi_bresp(axi_peripheral_interconnect_M05_AXI_BRESP),
        .s_axi_bvalid(axi_peripheral_interconnect_M05_AXI_BVALID),
        .s_axi_rdata(axi_peripheral_interconnect_M05_AXI_RDATA),
        .s_axi_rready(axi_peripheral_interconnect_M05_AXI_RREADY),
        .s_axi_rresp(axi_peripheral_interconnect_M05_AXI_RRESP),
        .s_axi_rvalid(axi_peripheral_interconnect_M05_AXI_RVALID),
        .s_axi_wdata(axi_peripheral_interconnect_M05_AXI_WDATA),
        .s_axi_wready(axi_peripheral_interconnect_M05_AXI_WREADY),
        .s_axi_wstrb(axi_peripheral_interconnect_M05_AXI_WSTRB),
        .s_axi_wvalid(axi_peripheral_interconnect_M05_AXI_WVALID));
  icyradio_axi_dmac_rf_rx0_0 axi_dmac_rf_rx0
       (.fifo_wr_clk(axi_ad9361_0_l_clk),
        .fifo_wr_din(util_cpack2_0_packed_fifo_wr_DATA),
        .fifo_wr_en(util_cpack2_0_packed_fifo_wr_EN),
        .fifo_wr_overflow(util_cpack2_0_packed_fifo_wr_OVERFLOW),
        .fifo_wr_sync(util_cpack2_0_packed_fifo_wr_SYNC),
        .fifo_wr_xfer_req(axi_dmac_rf_rx_fifo_wr_xfer_req),
        .irq(axi_dmac_rf_rx0_irq),
        .m_dest_axi_aclk(axi_pcie_0_axi_aclk_out),
        .m_dest_axi_aresetn(rst_axi_pcie_0_125M_peripheral_aresetn),
        .m_dest_axi_awaddr(axi_dmac_rf_rx0_m_dest_axi_AWADDR),
        .m_dest_axi_awburst(axi_dmac_rf_rx0_m_dest_axi_AWBURST),
        .m_dest_axi_awcache(axi_dmac_rf_rx0_m_dest_axi_AWCACHE),
        .m_dest_axi_awlen(axi_dmac_rf_rx0_m_dest_axi_AWLEN),
        .m_dest_axi_awprot(axi_dmac_rf_rx0_m_dest_axi_AWPROT),
        .m_dest_axi_awready(axi_dmac_rf_rx0_m_dest_axi_AWREADY),
        .m_dest_axi_awsize(axi_dmac_rf_rx0_m_dest_axi_AWSIZE),
        .m_dest_axi_awvalid(axi_dmac_rf_rx0_m_dest_axi_AWVALID),
        .m_dest_axi_bready(axi_dmac_rf_rx0_m_dest_axi_BREADY),
        .m_dest_axi_bresp(axi_dmac_rf_rx0_m_dest_axi_BRESP),
        .m_dest_axi_bvalid(axi_dmac_rf_rx0_m_dest_axi_BVALID),
        .m_dest_axi_wdata(axi_dmac_rf_rx0_m_dest_axi_WDATA),
        .m_dest_axi_wlast(axi_dmac_rf_rx0_m_dest_axi_WLAST),
        .m_dest_axi_wready(axi_dmac_rf_rx0_m_dest_axi_WREADY),
        .m_dest_axi_wstrb(axi_dmac_rf_rx0_m_dest_axi_WSTRB),
        .m_dest_axi_wvalid(axi_dmac_rf_rx0_m_dest_axi_WVALID),
        .s_axi_aclk(axi_pcie_0_axi_aclk_out),
        .s_axi_araddr(axi_peripheral_interconnect_M03_AXI_ARADDR[10:0]),
        .s_axi_aresetn(rst_axi_pcie_0_125M_peripheral_aresetn),
        .s_axi_arprot(axi_peripheral_interconnect_M03_AXI_ARPROT),
        .s_axi_arready(axi_peripheral_interconnect_M03_AXI_ARREADY),
        .s_axi_arvalid(axi_peripheral_interconnect_M03_AXI_ARVALID),
        .s_axi_awaddr(axi_peripheral_interconnect_M03_AXI_AWADDR[10:0]),
        .s_axi_awprot(axi_peripheral_interconnect_M03_AXI_AWPROT),
        .s_axi_awready(axi_peripheral_interconnect_M03_AXI_AWREADY),
        .s_axi_awvalid(axi_peripheral_interconnect_M03_AXI_AWVALID),
        .s_axi_bready(axi_peripheral_interconnect_M03_AXI_BREADY),
        .s_axi_bresp(axi_peripheral_interconnect_M03_AXI_BRESP),
        .s_axi_bvalid(axi_peripheral_interconnect_M03_AXI_BVALID),
        .s_axi_rdata(axi_peripheral_interconnect_M03_AXI_RDATA),
        .s_axi_rready(axi_peripheral_interconnect_M03_AXI_RREADY),
        .s_axi_rresp(axi_peripheral_interconnect_M03_AXI_RRESP),
        .s_axi_rvalid(axi_peripheral_interconnect_M03_AXI_RVALID),
        .s_axi_wdata(axi_peripheral_interconnect_M03_AXI_WDATA),
        .s_axi_wready(axi_peripheral_interconnect_M03_AXI_WREADY),
        .s_axi_wstrb(axi_peripheral_interconnect_M03_AXI_WSTRB),
        .s_axi_wvalid(axi_peripheral_interconnect_M03_AXI_WVALID));
  icyradio_axi_dmac_rf_rx1_0 axi_dmac_rf_rx1
       (.fifo_wr_clk(axi_ad9361_0_l_clk),
        .fifo_wr_din(ad9361_adc_packer_rx1_packed_fifo_wr_DATA),
        .fifo_wr_en(ad9361_adc_packer_rx1_packed_fifo_wr_EN),
        .fifo_wr_overflow(ad9361_adc_packer_rx1_packed_fifo_wr_OVERFLOW),
        .fifo_wr_sync(ad9361_adc_packer_rx1_packed_fifo_wr_SYNC),
        .fifo_wr_xfer_req(axi_dmac_rf_rx1_fifo_wr_xfer_req),
        .irq(axi_dmac_rf_rx1_irq),
        .m_dest_axi_aclk(axi_pcie_0_axi_aclk_out),
        .m_dest_axi_aresetn(rst_axi_pcie_0_125M_peripheral_aresetn),
        .m_dest_axi_awaddr(axi_dmac_rf_rx1_m_dest_axi_AWADDR),
        .m_dest_axi_awburst(axi_dmac_rf_rx1_m_dest_axi_AWBURST),
        .m_dest_axi_awcache(axi_dmac_rf_rx1_m_dest_axi_AWCACHE),
        .m_dest_axi_awlen(axi_dmac_rf_rx1_m_dest_axi_AWLEN),
        .m_dest_axi_awprot(axi_dmac_rf_rx1_m_dest_axi_AWPROT),
        .m_dest_axi_awready(axi_dmac_rf_rx1_m_dest_axi_AWREADY),
        .m_dest_axi_awsize(axi_dmac_rf_rx1_m_dest_axi_AWSIZE),
        .m_dest_axi_awvalid(axi_dmac_rf_rx1_m_dest_axi_AWVALID),
        .m_dest_axi_bready(axi_dmac_rf_rx1_m_dest_axi_BREADY),
        .m_dest_axi_bresp(axi_dmac_rf_rx1_m_dest_axi_BRESP),
        .m_dest_axi_bvalid(axi_dmac_rf_rx1_m_dest_axi_BVALID),
        .m_dest_axi_wdata(axi_dmac_rf_rx1_m_dest_axi_WDATA),
        .m_dest_axi_wlast(axi_dmac_rf_rx1_m_dest_axi_WLAST),
        .m_dest_axi_wready(axi_dmac_rf_rx1_m_dest_axi_WREADY),
        .m_dest_axi_wstrb(axi_dmac_rf_rx1_m_dest_axi_WSTRB),
        .m_dest_axi_wvalid(axi_dmac_rf_rx1_m_dest_axi_WVALID),
        .s_axi_aclk(axi_pcie_0_axi_aclk_out),
        .s_axi_araddr(axi_peripheral_interconnect_M04_AXI_ARADDR[10:0]),
        .s_axi_aresetn(rst_axi_pcie_0_125M_peripheral_aresetn),
        .s_axi_arprot(axi_peripheral_interconnect_M04_AXI_ARPROT),
        .s_axi_arready(axi_peripheral_interconnect_M04_AXI_ARREADY),
        .s_axi_arvalid(axi_peripheral_interconnect_M04_AXI_ARVALID),
        .s_axi_awaddr(axi_peripheral_interconnect_M04_AXI_AWADDR[10:0]),
        .s_axi_awprot(axi_peripheral_interconnect_M04_AXI_AWPROT),
        .s_axi_awready(axi_peripheral_interconnect_M04_AXI_AWREADY),
        .s_axi_awvalid(axi_peripheral_interconnect_M04_AXI_AWVALID),
        .s_axi_bready(axi_peripheral_interconnect_M04_AXI_BREADY),
        .s_axi_bresp(axi_peripheral_interconnect_M04_AXI_BRESP),
        .s_axi_bvalid(axi_peripheral_interconnect_M04_AXI_BVALID),
        .s_axi_rdata(axi_peripheral_interconnect_M04_AXI_RDATA),
        .s_axi_rready(axi_peripheral_interconnect_M04_AXI_RREADY),
        .s_axi_rresp(axi_peripheral_interconnect_M04_AXI_RRESP),
        .s_axi_rvalid(axi_peripheral_interconnect_M04_AXI_RVALID),
        .s_axi_wdata(axi_peripheral_interconnect_M04_AXI_WDATA),
        .s_axi_wready(axi_peripheral_interconnect_M04_AXI_WREADY),
        .s_axi_wstrb(axi_peripheral_interconnect_M04_AXI_WSTRB),
        .s_axi_wvalid(axi_peripheral_interconnect_M04_AXI_WVALID));
  icyradio_axi_dmac_rf_tx0_0 axi_dmac_rf_tx0
       (.irq(axi_dmac_rf_tx0_irq),
        .m_axis_aclk(axi_ad9361_0_l_clk),
        .m_axis_data(axi_dmac_rf_tx_m_axis_data),
        .m_axis_ready(ad9361_dac_unpacker_s_axis_ready),
        .m_axis_valid(axi_dmac_rf_tx_m_axis_valid),
        .m_axis_xfer_req(axi_dmac_rf_tx_m_axis_xfer_req),
        .m_src_axi_aclk(axi_pcie_0_axi_aclk_out),
        .m_src_axi_araddr(axi_dmac_rf_tx_m_src_axi_ARADDR),
        .m_src_axi_arburst(axi_dmac_rf_tx_m_src_axi_ARBURST),
        .m_src_axi_arcache(axi_dmac_rf_tx_m_src_axi_ARCACHE),
        .m_src_axi_aresetn(rst_axi_pcie_0_125M_peripheral_aresetn),
        .m_src_axi_arlen(axi_dmac_rf_tx_m_src_axi_ARLEN),
        .m_src_axi_arprot(axi_dmac_rf_tx_m_src_axi_ARPROT),
        .m_src_axi_arready(axi_dmac_rf_tx_m_src_axi_ARREADY),
        .m_src_axi_arsize(axi_dmac_rf_tx_m_src_axi_ARSIZE),
        .m_src_axi_arvalid(axi_dmac_rf_tx_m_src_axi_ARVALID),
        .m_src_axi_rdata(axi_dmac_rf_tx_m_src_axi_RDATA),
        .m_src_axi_rlast(axi_dmac_rf_tx_m_src_axi_RLAST),
        .m_src_axi_rready(axi_dmac_rf_tx_m_src_axi_RREADY),
        .m_src_axi_rresp(axi_dmac_rf_tx_m_src_axi_RRESP),
        .m_src_axi_rvalid(axi_dmac_rf_tx_m_src_axi_RVALID),
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
  icyradio_axi_dmac_rf_tx1_0 axi_dmac_rf_tx1
       (.irq(axi_dmac_rf_tx1_irq),
        .m_axis_aclk(axi_ad9361_0_l_clk),
        .m_axis_data(axi_dmac_rf_tx1_m_axis_data),
        .m_axis_ready(ad9361_dac_unpacker_tx1_s_axis_ready),
        .m_axis_valid(axi_dmac_rf_tx1_m_axis_valid),
        .m_axis_xfer_req(axi_dmac_rf_tx1_m_axis_xfer_req),
        .m_src_axi_aclk(axi_pcie_0_axi_aclk_out),
        .m_src_axi_araddr(axi_dmac_rf_tx1_m_src_axi_ARADDR),
        .m_src_axi_arburst(axi_dmac_rf_tx1_m_src_axi_ARBURST),
        .m_src_axi_arcache(axi_dmac_rf_tx1_m_src_axi_ARCACHE),
        .m_src_axi_aresetn(rst_axi_pcie_0_125M_peripheral_aresetn),
        .m_src_axi_arlen(axi_dmac_rf_tx1_m_src_axi_ARLEN),
        .m_src_axi_arprot(axi_dmac_rf_tx1_m_src_axi_ARPROT),
        .m_src_axi_arready(axi_dmac_rf_tx1_m_src_axi_ARREADY),
        .m_src_axi_arsize(axi_dmac_rf_tx1_m_src_axi_ARSIZE),
        .m_src_axi_arvalid(axi_dmac_rf_tx1_m_src_axi_ARVALID),
        .m_src_axi_rdata(axi_dmac_rf_tx1_m_src_axi_RDATA),
        .m_src_axi_rlast(axi_dmac_rf_tx1_m_src_axi_RLAST),
        .m_src_axi_rready(axi_dmac_rf_tx1_m_src_axi_RREADY),
        .m_src_axi_rresp(axi_dmac_rf_tx1_m_src_axi_RRESP),
        .m_src_axi_rvalid(axi_dmac_rf_tx1_m_src_axi_RVALID),
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
  icyradio_axi_dna_0_0 axi_dna_0
       (.aclk(axi_pcie_0_axi_aclk_out),
        .aresetn(rst_axi_pcie_0_125M_peripheral_aresetn),
        .s_axi_araddr(axi_peripheral_interconnect_M00_AXI_ARADDR[4:0]),
        .s_axi_arprot(axi_peripheral_interconnect_M00_AXI_ARPROT),
        .s_axi_arready(axi_peripheral_interconnect_M00_AXI_ARREADY),
        .s_axi_arvalid(axi_peripheral_interconnect_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_peripheral_interconnect_M00_AXI_AWADDR[4:0]),
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
        .s_axi_wvalid(axi_peripheral_interconnect_M00_AXI_WVALID));
  icyradio_axi_gpio_0_0 axi_gpio_0
       (.aclk(axi_pcie_0_axi_aclk_out),
        .aresetn(rst_axi_pcie_0_125M_peripheral_aresetn),
        .gpio_i(gpio_concat_0_dout),
        .gpio_o(axi_gpio_0_gpio_io_o),
        .s_axi_araddr(axi_peripheral_interconnect_M13_AXI_ARADDR[4:0]),
        .s_axi_arprot(axi_peripheral_interconnect_M13_AXI_ARPROT),
        .s_axi_arready(axi_peripheral_interconnect_M13_AXI_ARREADY),
        .s_axi_arvalid(axi_peripheral_interconnect_M13_AXI_ARVALID),
        .s_axi_awaddr(axi_peripheral_interconnect_M13_AXI_AWADDR[4:0]),
        .s_axi_awprot(axi_peripheral_interconnect_M13_AXI_AWPROT),
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
        .s_axi_wvalid(axi_peripheral_interconnect_M13_AXI_WVALID));
  icyradio_axi_gpio_1_0 axi_gpio_1
       (.aclk(axi_pcie_0_axi_aclk_out),
        .aresetn(rst_axi_pcie_0_125M_peripheral_aresetn),
        .gpio_i(gpio_concat_2_dout),
        .gpio_o(axi_gpio_1_gpio_io_o),
        .s_axi_araddr(axi_peripheral_interconnect_M14_AXI_ARADDR[4:0]),
        .s_axi_arprot(axi_peripheral_interconnect_M14_AXI_ARPROT),
        .s_axi_arready(axi_peripheral_interconnect_M14_AXI_ARREADY),
        .s_axi_arvalid(axi_peripheral_interconnect_M14_AXI_ARVALID),
        .s_axi_awaddr(axi_peripheral_interconnect_M14_AXI_AWADDR[4:0]),
        .s_axi_awprot(axi_peripheral_interconnect_M14_AXI_AWPROT),
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
  icyradio_axi_gpio_2_0 axi_gpio_2
       (.aclk(axi_pcie_0_axi_aclk_out),
        .aresetn(rst_axi_pcie_0_125M_peripheral_aresetn),
        .gpio_i(gpio_concat_2_dout1),
        .gpio_o(axi_gpio_2_gpio_io_o),
        .s_axi_araddr(axi_peripheral_interconnect_M15_AXI_ARADDR[4:0]),
        .s_axi_arprot(axi_peripheral_interconnect_M15_AXI_ARPROT),
        .s_axi_arready(axi_peripheral_interconnect_M15_AXI_ARREADY),
        .s_axi_arvalid(axi_peripheral_interconnect_M15_AXI_ARVALID),
        .s_axi_awaddr(axi_peripheral_interconnect_M15_AXI_AWADDR[4:0]),
        .s_axi_awprot(axi_peripheral_interconnect_M15_AXI_AWPROT),
        .s_axi_awready(axi_peripheral_interconnect_M15_AXI_AWREADY),
        .s_axi_awvalid(axi_peripheral_interconnect_M15_AXI_AWVALID),
        .s_axi_bready(axi_peripheral_interconnect_M15_AXI_BREADY),
        .s_axi_bresp(axi_peripheral_interconnect_M15_AXI_BRESP),
        .s_axi_bvalid(axi_peripheral_interconnect_M15_AXI_BVALID),
        .s_axi_rdata(axi_peripheral_interconnect_M15_AXI_RDATA),
        .s_axi_rready(axi_peripheral_interconnect_M15_AXI_RREADY),
        .s_axi_rresp(axi_peripheral_interconnect_M15_AXI_RRESP),
        .s_axi_rvalid(axi_peripheral_interconnect_M15_AXI_RVALID),
        .s_axi_wdata(axi_peripheral_interconnect_M15_AXI_WDATA),
        .s_axi_wready(axi_peripheral_interconnect_M15_AXI_WREADY),
        .s_axi_wstrb(axi_peripheral_interconnect_M15_AXI_WSTRB),
        .s_axi_wvalid(axi_peripheral_interconnect_M15_AXI_WVALID));
  icyradio_axi_i2s_0 axi_i2s
       (.aclk(axi_pcie_0_axi_aclk_out),
        .aresetn(rst_axi_pcie_0_125M_peripheral_aresetn),
        .i2s_bclk(axi_i2s_i2s_BCLK),
        .i2s_lrclk(axi_i2s_i2s_LRCLK),
        .i2s_mclk(axi_i2s_0_i2s_mclk),
        .i2s_sdata_in(axi_i2s_i2s_SDATA_IN),
        .i2s_sdata_out(axi_i2s_i2s_SDATA_OUT),
        .i2s_src_clk(FPGA_CLK1_1),
        .i2s_src_resetn(rst_FPGA_CLK1_49M152_peripheral_aresetn),
        .irq(axi_i2s_irq),
        .m_axis_tdata(axi_i2s_0_m_axis_TDATA),
        .m_axis_tready(axi_i2s_0_m_axis_TREADY),
        .m_axis_tvalid(axi_i2s_0_m_axis_TVALID),
        .s_axi_araddr(axi_peripheral_interconnect_M19_AXI_ARADDR[4:0]),
        .s_axi_arprot(axi_peripheral_interconnect_M19_AXI_ARPROT),
        .s_axi_arready(axi_peripheral_interconnect_M19_AXI_ARREADY),
        .s_axi_arvalid(axi_peripheral_interconnect_M19_AXI_ARVALID),
        .s_axi_awaddr(axi_peripheral_interconnect_M19_AXI_AWADDR[4:0]),
        .s_axi_awprot(axi_peripheral_interconnect_M19_AXI_AWPROT),
        .s_axi_awready(axi_peripheral_interconnect_M19_AXI_AWREADY),
        .s_axi_awvalid(axi_peripheral_interconnect_M19_AXI_AWVALID),
        .s_axi_bready(axi_peripheral_interconnect_M19_AXI_BREADY),
        .s_axi_bresp(axi_peripheral_interconnect_M19_AXI_BRESP),
        .s_axi_bvalid(axi_peripheral_interconnect_M19_AXI_BVALID),
        .s_axi_rdata(axi_peripheral_interconnect_M19_AXI_RDATA),
        .s_axi_rready(axi_peripheral_interconnect_M19_AXI_RREADY),
        .s_axi_rresp(axi_peripheral_interconnect_M19_AXI_RRESP),
        .s_axi_rvalid(axi_peripheral_interconnect_M19_AXI_RVALID),
        .s_axi_wdata(axi_peripheral_interconnect_M19_AXI_WDATA),
        .s_axi_wready(axi_peripheral_interconnect_M19_AXI_WREADY),
        .s_axi_wstrb(axi_peripheral_interconnect_M19_AXI_WSTRB),
        .s_axi_wvalid(axi_peripheral_interconnect_M19_AXI_WVALID),
        .s_axis_tdata(axi_dmac_i2s_tx_m_axis_TDATA),
        .s_axis_tready(axi_dmac_i2s_tx_m_axis_TREADY),
        .s_axis_tvalid(axi_dmac_i2s_tx_m_axis_TVALID));
  icyradio_axi_iic_0_0 axi_iic_0
       (.iic2intc_irpt(axi_iic_0_iic2intc_irpt),
        .s_axi_aclk(axi_pcie_0_axi_aclk_out),
        .s_axi_araddr(axi_peripheral_interconnect_M07_AXI_ARADDR[8:0]),
        .s_axi_aresetn(rst_axi_pcie_0_125M_peripheral_aresetn),
        .s_axi_arready(axi_peripheral_interconnect_M07_AXI_ARREADY),
        .s_axi_arvalid(axi_peripheral_interconnect_M07_AXI_ARVALID),
        .s_axi_awaddr(axi_peripheral_interconnect_M07_AXI_AWADDR[8:0]),
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
        .scl_i(axi_iic_0_IIC_SCL_I),
        .scl_o(axi_iic_0_IIC_SCL_O),
        .scl_t(axi_iic_0_IIC_SCL_T),
        .sda_i(axi_iic_0_IIC_SDA_I),
        .sda_o(axi_iic_0_IIC_SDA_O),
        .sda_t(axi_iic_0_IIC_SDA_T));
  icyradio_axi_iic_1_0 axi_iic_1
       (.iic2intc_irpt(axi_iic_1_iic2intc_irpt),
        .s_axi_aclk(axi_pcie_0_axi_aclk_out),
        .s_axi_araddr(axi_peripheral_interconnect_M08_AXI_ARADDR[8:0]),
        .s_axi_aresetn(rst_axi_pcie_0_125M_peripheral_aresetn),
        .s_axi_arready(axi_peripheral_interconnect_M08_AXI_ARREADY),
        .s_axi_arvalid(axi_peripheral_interconnect_M08_AXI_ARVALID),
        .s_axi_awaddr(axi_peripheral_interconnect_M08_AXI_AWADDR[8:0]),
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
        .s_axi_wvalid(axi_peripheral_interconnect_M08_AXI_WVALID),
        .scl_i(axi_iic_1_IIC_SCL_I),
        .scl_o(axi_iic_1_IIC_SCL_O),
        .scl_t(axi_iic_1_IIC_SCL_T),
        .sda_i(axi_iic_1_IIC_SDA_I),
        .sda_o(axi_iic_1_IIC_SDA_O),
        .sda_t(axi_iic_1_IIC_SDA_T));
  icyradio_axi_iic_2_0 axi_iic_2
       (.iic2intc_irpt(axi_iic_2_iic2intc_irpt),
        .s_axi_aclk(axi_pcie_0_axi_aclk_out),
        .s_axi_araddr(axi_peripheral_interconnect_M09_AXI_ARADDR[8:0]),
        .s_axi_aresetn(rst_axi_pcie_0_125M_peripheral_aresetn),
        .s_axi_arready(axi_peripheral_interconnect_M09_AXI_ARREADY),
        .s_axi_arvalid(axi_peripheral_interconnect_M09_AXI_ARVALID),
        .s_axi_awaddr(axi_peripheral_interconnect_M09_AXI_AWADDR[8:0]),
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
        .scl_i(axi_iic_2_IIC_SCL_I),
        .scl_o(axi_iic_2_IIC_SCL_O),
        .scl_t(axi_iic_2_IIC_SCL_T),
        .sda_i(axi_iic_2_IIC_SDA_I),
        .sda_o(axi_iic_2_IIC_SDA_O),
        .sda_t(axi_iic_2_IIC_SDA_T));
  icyradio_axi_irq_controller_0_0 axi_irq_controller_0
       (.aclk(axi_pcie_0_axi_aclk_out),
        .aresetn(rst_axi_pcie_0_125M_peripheral_aresetn),
        .cpu_eoi_in(picorv32_0_eoi),
        .cpu_irq_out(axi_irq_controller_0_cpu_irq_out),
        .irq_in(irq_concat_0_dout),
        .pcie_msi_enabled(axi_pcie_0_MSI_enable),
        .pcie_msi_granted(axi_pcie_0_INTX_MSI_Grant),
        .pcie_msi_request(axi_irq_controller_0_pcie_msi_request),
        .pcie_msi_vector(axi_irq_controller_0_pcie_msi_vector),
        .pcie_msi_vector_width(axi_pcie_0_MSI_Vector_Width),
        .s_axi_araddr(axi_peripheral_interconnect_M18_AXI_ARADDR[7:0]),
        .s_axi_arprot(axi_peripheral_interconnect_M18_AXI_ARPROT),
        .s_axi_arready(axi_peripheral_interconnect_M18_AXI_ARREADY),
        .s_axi_arvalid(axi_peripheral_interconnect_M18_AXI_ARVALID),
        .s_axi_awaddr(axi_peripheral_interconnect_M18_AXI_AWADDR[7:0]),
        .s_axi_awprot(axi_peripheral_interconnect_M18_AXI_AWPROT),
        .s_axi_awready(axi_peripheral_interconnect_M18_AXI_AWREADY),
        .s_axi_awvalid(axi_peripheral_interconnect_M18_AXI_AWVALID),
        .s_axi_bready(axi_peripheral_interconnect_M18_AXI_BREADY),
        .s_axi_bresp(axi_peripheral_interconnect_M18_AXI_BRESP),
        .s_axi_bvalid(axi_peripheral_interconnect_M18_AXI_BVALID),
        .s_axi_rdata(axi_peripheral_interconnect_M18_AXI_RDATA),
        .s_axi_rready(axi_peripheral_interconnect_M18_AXI_RREADY),
        .s_axi_rresp(axi_peripheral_interconnect_M18_AXI_RRESP),
        .s_axi_rvalid(axi_peripheral_interconnect_M18_AXI_RVALID),
        .s_axi_wdata(axi_peripheral_interconnect_M18_AXI_WDATA),
        .s_axi_wready(axi_peripheral_interconnect_M18_AXI_WREADY),
        .s_axi_wstrb(axi_peripheral_interconnect_M18_AXI_WSTRB),
        .s_axi_wvalid(axi_peripheral_interconnect_M18_AXI_WVALID));
  icyradio_axi_pcie_0_0 axi_pcie_0
       (.INTX_MSI_Grant(axi_pcie_0_INTX_MSI_Grant),
        .INTX_MSI_Request(axi_irq_controller_0_pcie_msi_request),
        .MSI_Vector_Num(axi_irq_controller_0_pcie_msi_vector),
        .MSI_Vector_Width(axi_pcie_0_MSI_Vector_Width),
        .MSI_enable(axi_pcie_0_MSI_enable),
        .REFCLK(util_ds_buf_0_IBUF_OUT),
        .axi_aclk_out(axi_pcie_0_axi_aclk_out),
        .axi_aresetn(rst_axi_pcie_0_125M_pcie_core_peripheral_aresetn),
        .axi_ctl_aclk_out(M16_ACLK_1),
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
        .s_axi_araddr(axi_interconnect_0_M01_AXI2_ARADDR),
        .s_axi_arburst(axi_interconnect_0_M01_AXI2_ARBURST),
        .s_axi_arid(axi_interconnect_0_M01_AXI2_ARID),
        .s_axi_arlen(axi_interconnect_0_M01_AXI2_ARLEN),
        .s_axi_arready(axi_interconnect_0_M01_AXI2_ARREADY),
        .s_axi_arregion(axi_interconnect_0_M01_AXI2_ARREGION),
        .s_axi_arsize(axi_interconnect_0_M01_AXI2_ARSIZE),
        .s_axi_arvalid(axi_interconnect_0_M01_AXI2_ARVALID),
        .s_axi_awaddr(axi_interconnect_0_M01_AXI2_AWADDR),
        .s_axi_awburst(axi_interconnect_0_M01_AXI2_AWBURST),
        .s_axi_awid(axi_interconnect_0_M01_AXI2_AWID),
        .s_axi_awlen(axi_interconnect_0_M01_AXI2_AWLEN),
        .s_axi_awready(axi_interconnect_0_M01_AXI2_AWREADY),
        .s_axi_awregion(axi_interconnect_0_M01_AXI2_AWREGION),
        .s_axi_awsize(axi_interconnect_0_M01_AXI2_AWSIZE),
        .s_axi_awvalid(axi_interconnect_0_M01_AXI2_AWVALID),
        .s_axi_bid(axi_interconnect_0_M01_AXI2_BID),
        .s_axi_bready(axi_interconnect_0_M01_AXI2_BREADY),
        .s_axi_bresp(axi_interconnect_0_M01_AXI2_BRESP),
        .s_axi_bvalid(axi_interconnect_0_M01_AXI2_BVALID),
        .s_axi_ctl_araddr(axi_peripheral_interconnect_M16_AXI_ARADDR),
        .s_axi_ctl_arready(axi_peripheral_interconnect_M16_AXI_ARREADY),
        .s_axi_ctl_arvalid(axi_peripheral_interconnect_M16_AXI_ARVALID),
        .s_axi_ctl_awaddr(axi_peripheral_interconnect_M16_AXI_AWADDR),
        .s_axi_ctl_awready(axi_peripheral_interconnect_M16_AXI_AWREADY),
        .s_axi_ctl_awvalid(axi_peripheral_interconnect_M16_AXI_AWVALID),
        .s_axi_ctl_bready(axi_peripheral_interconnect_M16_AXI_BREADY),
        .s_axi_ctl_bresp(axi_peripheral_interconnect_M16_AXI_BRESP),
        .s_axi_ctl_bvalid(axi_peripheral_interconnect_M16_AXI_BVALID),
        .s_axi_ctl_rdata(axi_peripheral_interconnect_M16_AXI_RDATA),
        .s_axi_ctl_rready(axi_peripheral_interconnect_M16_AXI_RREADY),
        .s_axi_ctl_rresp(axi_peripheral_interconnect_M16_AXI_RRESP),
        .s_axi_ctl_rvalid(axi_peripheral_interconnect_M16_AXI_RVALID),
        .s_axi_ctl_wdata(axi_peripheral_interconnect_M16_AXI_WDATA),
        .s_axi_ctl_wready(axi_peripheral_interconnect_M16_AXI_WREADY),
        .s_axi_ctl_wstrb(axi_peripheral_interconnect_M16_AXI_WSTRB),
        .s_axi_ctl_wvalid(axi_peripheral_interconnect_M16_AXI_WVALID),
        .s_axi_rdata(axi_interconnect_0_M01_AXI2_RDATA),
        .s_axi_rid(axi_interconnect_0_M01_AXI2_RID),
        .s_axi_rlast(axi_interconnect_0_M01_AXI2_RLAST),
        .s_axi_rready(axi_interconnect_0_M01_AXI2_RREADY),
        .s_axi_rresp(axi_interconnect_0_M01_AXI2_RRESP),
        .s_axi_rvalid(axi_interconnect_0_M01_AXI2_RVALID),
        .s_axi_wdata(axi_interconnect_0_M01_AXI2_WDATA),
        .s_axi_wlast(axi_interconnect_0_M01_AXI2_WLAST),
        .s_axi_wready(axi_interconnect_0_M01_AXI2_WREADY),
        .s_axi_wstrb(axi_interconnect_0_M01_AXI2_WSTRB),
        .s_axi_wvalid(axi_interconnect_0_M01_AXI2_WVALID),
        .user_link_up(axi_pcie_0_user_link_up));
  icyradio_axi_pcie_interconnect_0 axi_pcie_interconnect
       (.ACLK(axi_pcie_0_axi_aclk_out),
        .ARESETN(rst_axi_pcie_0_125M_interconnect_aresetn),
        .M00_ACLK(axi_pcie_0_axi_aclk_out),
        .M00_ARESETN(rst_axi_pcie_0_125M_interconnect_aresetn),
        .M00_AXI_araddr(axi_interconnect_0_M00_AXI1_ARADDR),
        .M00_AXI_arburst(axi_interconnect_0_M00_AXI1_ARBURST),
        .M00_AXI_arcache(axi_interconnect_0_M00_AXI1_ARCACHE),
        .M00_AXI_arid(axi_interconnect_0_M00_AXI1_ARID),
        .M00_AXI_arlen(axi_interconnect_0_M00_AXI1_ARLEN),
        .M00_AXI_arlock(axi_interconnect_0_M00_AXI1_ARLOCK),
        .M00_AXI_arprot(axi_interconnect_0_M00_AXI1_ARPROT),
        .M00_AXI_arqos(axi_interconnect_0_M00_AXI1_ARQOS),
        .M00_AXI_arready(axi_interconnect_0_M00_AXI1_ARREADY),
        .M00_AXI_arregion(axi_interconnect_0_M00_AXI1_ARREGION),
        .M00_AXI_arsize(axi_interconnect_0_M00_AXI1_ARSIZE),
        .M00_AXI_arvalid(axi_interconnect_0_M00_AXI1_ARVALID),
        .M00_AXI_awaddr(axi_interconnect_0_M00_AXI1_AWADDR),
        .M00_AXI_awburst(axi_interconnect_0_M00_AXI1_AWBURST),
        .M00_AXI_awcache(axi_interconnect_0_M00_AXI1_AWCACHE),
        .M00_AXI_awid(axi_interconnect_0_M00_AXI1_AWID),
        .M00_AXI_awlen(axi_interconnect_0_M00_AXI1_AWLEN),
        .M00_AXI_awlock(axi_interconnect_0_M00_AXI1_AWLOCK),
        .M00_AXI_awprot(axi_interconnect_0_M00_AXI1_AWPROT),
        .M00_AXI_awqos(axi_interconnect_0_M00_AXI1_AWQOS),
        .M00_AXI_awready(axi_interconnect_0_M00_AXI1_AWREADY),
        .M00_AXI_awregion(axi_interconnect_0_M00_AXI1_AWREGION),
        .M00_AXI_awsize(axi_interconnect_0_M00_AXI1_AWSIZE),
        .M00_AXI_awvalid(axi_interconnect_0_M00_AXI1_AWVALID),
        .M00_AXI_bid(axi_interconnect_0_M00_AXI1_BID),
        .M00_AXI_bready(axi_interconnect_0_M00_AXI1_BREADY),
        .M00_AXI_bresp(axi_interconnect_0_M00_AXI1_BRESP),
        .M00_AXI_bvalid(axi_interconnect_0_M00_AXI1_BVALID),
        .M00_AXI_rdata(axi_interconnect_0_M00_AXI1_RDATA),
        .M00_AXI_rid(axi_interconnect_0_M00_AXI1_RID),
        .M00_AXI_rlast(axi_interconnect_0_M00_AXI1_RLAST),
        .M00_AXI_rready(axi_interconnect_0_M00_AXI1_RREADY),
        .M00_AXI_rresp(axi_interconnect_0_M00_AXI1_RRESP),
        .M00_AXI_rvalid(axi_interconnect_0_M00_AXI1_RVALID),
        .M00_AXI_wdata(axi_interconnect_0_M00_AXI1_WDATA),
        .M00_AXI_wlast(axi_interconnect_0_M00_AXI1_WLAST),
        .M00_AXI_wready(axi_interconnect_0_M00_AXI1_WREADY),
        .M00_AXI_wstrb(axi_interconnect_0_M00_AXI1_WSTRB),
        .M00_AXI_wvalid(axi_interconnect_0_M00_AXI1_WVALID),
        .M01_ACLK(axi_pcie_0_axi_aclk_out),
        .M01_ARESETN(rst_axi_pcie_0_125M_interconnect_aresetn),
        .M01_AXI_araddr(axi_interconnect_0_M01_AXI1_ARADDR),
        .M01_AXI_arburst(axi_interconnect_0_M01_AXI1_ARBURST),
        .M01_AXI_arcache(axi_interconnect_0_M01_AXI1_ARCACHE),
        .M01_AXI_arid(axi_interconnect_0_M01_AXI1_ARID),
        .M01_AXI_arlen(axi_interconnect_0_M01_AXI1_ARLEN),
        .M01_AXI_arlock(axi_interconnect_0_M01_AXI1_ARLOCK),
        .M01_AXI_arprot(axi_interconnect_0_M01_AXI1_ARPROT),
        .M01_AXI_arqos(axi_interconnect_0_M01_AXI1_ARQOS),
        .M01_AXI_arready(axi_interconnect_0_M01_AXI1_ARREADY),
        .M01_AXI_arsize(axi_interconnect_0_M01_AXI1_ARSIZE),
        .M01_AXI_arvalid(axi_interconnect_0_M01_AXI1_ARVALID),
        .M01_AXI_awaddr(axi_interconnect_0_M01_AXI1_AWADDR),
        .M01_AXI_awburst(axi_interconnect_0_M01_AXI1_AWBURST),
        .M01_AXI_awcache(axi_interconnect_0_M01_AXI1_AWCACHE),
        .M01_AXI_awid(axi_interconnect_0_M01_AXI1_AWID),
        .M01_AXI_awlen(axi_interconnect_0_M01_AXI1_AWLEN),
        .M01_AXI_awlock(axi_interconnect_0_M01_AXI1_AWLOCK),
        .M01_AXI_awprot(axi_interconnect_0_M01_AXI1_AWPROT),
        .M01_AXI_awqos(axi_interconnect_0_M01_AXI1_AWQOS),
        .M01_AXI_awready(axi_interconnect_0_M01_AXI1_AWREADY),
        .M01_AXI_awsize(axi_interconnect_0_M01_AXI1_AWSIZE),
        .M01_AXI_awvalid(axi_interconnect_0_M01_AXI1_AWVALID),
        .M01_AXI_bid(axi_interconnect_0_M01_AXI1_BID),
        .M01_AXI_bready(axi_interconnect_0_M01_AXI1_BREADY),
        .M01_AXI_bresp(axi_interconnect_0_M01_AXI1_BRESP),
        .M01_AXI_bvalid(axi_interconnect_0_M01_AXI1_BVALID),
        .M01_AXI_rdata(axi_interconnect_0_M01_AXI1_RDATA),
        .M01_AXI_rid(axi_interconnect_0_M01_AXI1_RID),
        .M01_AXI_rlast(axi_interconnect_0_M01_AXI1_RLAST),
        .M01_AXI_rready(axi_interconnect_0_M01_AXI1_RREADY),
        .M01_AXI_rresp(axi_interconnect_0_M01_AXI1_RRESP),
        .M01_AXI_rvalid(axi_interconnect_0_M01_AXI1_RVALID),
        .M01_AXI_wdata(axi_interconnect_0_M01_AXI1_WDATA),
        .M01_AXI_wlast(axi_interconnect_0_M01_AXI1_WLAST),
        .M01_AXI_wready(axi_interconnect_0_M01_AXI1_WREADY),
        .M01_AXI_wstrb(axi_interconnect_0_M01_AXI1_WSTRB),
        .M01_AXI_wvalid(axi_interconnect_0_M01_AXI1_WVALID),
        .M02_ACLK(mig_7series_0_ui_clk),
        .M02_ARESETN(M02_ARESETN_1),
        .M02_AXI_araddr(axi_interconnect_0_M02_AXI_ARADDR),
        .M02_AXI_arburst(axi_interconnect_0_M02_AXI_ARBURST),
        .M02_AXI_arcache(axi_interconnect_0_M02_AXI_ARCACHE),
        .M02_AXI_arid(axi_interconnect_0_M02_AXI_ARID),
        .M02_AXI_arlen(axi_interconnect_0_M02_AXI_ARLEN),
        .M02_AXI_arlock(axi_interconnect_0_M02_AXI_ARLOCK),
        .M02_AXI_arprot(axi_interconnect_0_M02_AXI_ARPROT),
        .M02_AXI_arqos(axi_interconnect_0_M02_AXI_ARQOS),
        .M02_AXI_arready(axi_interconnect_0_M02_AXI_ARREADY),
        .M02_AXI_arsize(axi_interconnect_0_M02_AXI_ARSIZE),
        .M02_AXI_arvalid(axi_interconnect_0_M02_AXI_ARVALID),
        .M02_AXI_awaddr(axi_interconnect_0_M02_AXI_AWADDR),
        .M02_AXI_awburst(axi_interconnect_0_M02_AXI_AWBURST),
        .M02_AXI_awcache(axi_interconnect_0_M02_AXI_AWCACHE),
        .M02_AXI_awid(axi_interconnect_0_M02_AXI_AWID),
        .M02_AXI_awlen(axi_interconnect_0_M02_AXI_AWLEN),
        .M02_AXI_awlock(axi_interconnect_0_M02_AXI_AWLOCK),
        .M02_AXI_awprot(axi_interconnect_0_M02_AXI_AWPROT),
        .M02_AXI_awqos(axi_interconnect_0_M02_AXI_AWQOS),
        .M02_AXI_awready(axi_interconnect_0_M02_AXI_AWREADY),
        .M02_AXI_awsize(axi_interconnect_0_M02_AXI_AWSIZE),
        .M02_AXI_awvalid(axi_interconnect_0_M02_AXI_AWVALID),
        .M02_AXI_bid(axi_interconnect_0_M02_AXI_BID),
        .M02_AXI_bready(axi_interconnect_0_M02_AXI_BREADY),
        .M02_AXI_bresp(axi_interconnect_0_M02_AXI_BRESP),
        .M02_AXI_bvalid(axi_interconnect_0_M02_AXI_BVALID),
        .M02_AXI_rdata(axi_interconnect_0_M02_AXI_RDATA),
        .M02_AXI_rid(axi_interconnect_0_M02_AXI_RID),
        .M02_AXI_rlast(axi_interconnect_0_M02_AXI_RLAST),
        .M02_AXI_rready(axi_interconnect_0_M02_AXI_RREADY),
        .M02_AXI_rresp(axi_interconnect_0_M02_AXI_RRESP),
        .M02_AXI_rvalid(axi_interconnect_0_M02_AXI_RVALID),
        .M02_AXI_wdata(axi_interconnect_0_M02_AXI_WDATA),
        .M02_AXI_wlast(axi_interconnect_0_M02_AXI_WLAST),
        .M02_AXI_wready(axi_interconnect_0_M02_AXI_WREADY),
        .M02_AXI_wstrb(axi_interconnect_0_M02_AXI_WSTRB),
        .M02_AXI_wvalid(axi_interconnect_0_M02_AXI_WVALID),
        .M03_ACLK(axi_pcie_0_axi_aclk_out),
        .M03_ARESETN(rst_axi_pcie_0_125M_interconnect_aresetn),
        .M03_AXI_araddr(axi_interconnect_0_M03_AXI1_ARADDR),
        .M03_AXI_arburst(axi_interconnect_0_M03_AXI1_ARBURST),
        .M03_AXI_arcache(axi_interconnect_0_M03_AXI1_ARCACHE),
        .M03_AXI_arid(axi_interconnect_0_M03_AXI1_ARID),
        .M03_AXI_arlen(axi_interconnect_0_M03_AXI1_ARLEN),
        .M03_AXI_arlock(axi_interconnect_0_M03_AXI1_ARLOCK),
        .M03_AXI_arprot(axi_interconnect_0_M03_AXI1_ARPROT),
        .M03_AXI_arready(axi_interconnect_0_M03_AXI1_ARREADY),
        .M03_AXI_arsize(axi_interconnect_0_M03_AXI1_ARSIZE),
        .M03_AXI_arvalid(axi_interconnect_0_M03_AXI1_ARVALID),
        .M03_AXI_awaddr(axi_interconnect_0_M03_AXI1_AWADDR),
        .M03_AXI_awburst(axi_interconnect_0_M03_AXI1_AWBURST),
        .M03_AXI_awcache(axi_interconnect_0_M03_AXI1_AWCACHE),
        .M03_AXI_awid(axi_interconnect_0_M03_AXI1_AWID),
        .M03_AXI_awlen(axi_interconnect_0_M03_AXI1_AWLEN),
        .M03_AXI_awlock(axi_interconnect_0_M03_AXI1_AWLOCK),
        .M03_AXI_awprot(axi_interconnect_0_M03_AXI1_AWPROT),
        .M03_AXI_awready(axi_interconnect_0_M03_AXI1_AWREADY),
        .M03_AXI_awsize(axi_interconnect_0_M03_AXI1_AWSIZE),
        .M03_AXI_awvalid(axi_interconnect_0_M03_AXI1_AWVALID),
        .M03_AXI_bid(axi_interconnect_0_M03_AXI1_BID),
        .M03_AXI_bready(axi_interconnect_0_M03_AXI1_BREADY),
        .M03_AXI_bresp(axi_interconnect_0_M03_AXI1_BRESP),
        .M03_AXI_bvalid(axi_interconnect_0_M03_AXI1_BVALID),
        .M03_AXI_rdata(axi_interconnect_0_M03_AXI1_RDATA),
        .M03_AXI_rid(axi_interconnect_0_M03_AXI1_RID),
        .M03_AXI_rlast(axi_interconnect_0_M03_AXI1_RLAST),
        .M03_AXI_rready(axi_interconnect_0_M03_AXI1_RREADY),
        .M03_AXI_rresp(axi_interconnect_0_M03_AXI1_RRESP),
        .M03_AXI_rvalid(axi_interconnect_0_M03_AXI1_RVALID),
        .M03_AXI_wdata(axi_interconnect_0_M03_AXI1_WDATA),
        .M03_AXI_wlast(axi_interconnect_0_M03_AXI1_WLAST),
        .M03_AXI_wready(axi_interconnect_0_M03_AXI1_WREADY),
        .M03_AXI_wstrb(axi_interconnect_0_M03_AXI1_WSTRB),
        .M03_AXI_wvalid(axi_interconnect_0_M03_AXI1_WVALID),
        .S00_ACLK(axi_pcie_0_axi_aclk_out),
        .S00_ARESETN(rst_axi_pcie_0_125M_interconnect_aresetn),
        .S00_AXI_araddr(axi_cpu_dma_interconnect_M00_AXI_ARADDR),
        .S00_AXI_arburst(axi_cpu_dma_interconnect_M00_AXI_ARBURST),
        .S00_AXI_arcache(axi_cpu_dma_interconnect_M00_AXI_ARCACHE),
        .S00_AXI_arid(axi_cpu_dma_interconnect_M00_AXI_ARID),
        .S00_AXI_arlen(axi_cpu_dma_interconnect_M00_AXI_ARLEN),
        .S00_AXI_arlock(axi_cpu_dma_interconnect_M00_AXI_ARLOCK),
        .S00_AXI_arprot(axi_cpu_dma_interconnect_M00_AXI_ARPROT),
        .S00_AXI_arqos(axi_cpu_dma_interconnect_M00_AXI_ARQOS),
        .S00_AXI_arready(axi_cpu_dma_interconnect_M00_AXI_ARREADY),
        .S00_AXI_arregion(axi_cpu_dma_interconnect_M00_AXI_ARREGION),
        .S00_AXI_arsize(axi_cpu_dma_interconnect_M00_AXI_ARSIZE),
        .S00_AXI_arvalid(axi_cpu_dma_interconnect_M00_AXI_ARVALID),
        .S00_AXI_awaddr(axi_cpu_dma_interconnect_M00_AXI_AWADDR),
        .S00_AXI_awburst(axi_cpu_dma_interconnect_M00_AXI_AWBURST),
        .S00_AXI_awcache(axi_cpu_dma_interconnect_M00_AXI_AWCACHE),
        .S00_AXI_awid(axi_cpu_dma_interconnect_M00_AXI_AWID),
        .S00_AXI_awlen(axi_cpu_dma_interconnect_M00_AXI_AWLEN),
        .S00_AXI_awlock(axi_cpu_dma_interconnect_M00_AXI_AWLOCK),
        .S00_AXI_awprot(axi_cpu_dma_interconnect_M00_AXI_AWPROT),
        .S00_AXI_awqos(axi_cpu_dma_interconnect_M00_AXI_AWQOS),
        .S00_AXI_awready(axi_cpu_dma_interconnect_M00_AXI_AWREADY),
        .S00_AXI_awregion(axi_cpu_dma_interconnect_M00_AXI_AWREGION),
        .S00_AXI_awsize(axi_cpu_dma_interconnect_M00_AXI_AWSIZE),
        .S00_AXI_awvalid(axi_cpu_dma_interconnect_M00_AXI_AWVALID),
        .S00_AXI_bid(axi_cpu_dma_interconnect_M00_AXI_BID),
        .S00_AXI_bready(axi_cpu_dma_interconnect_M00_AXI_BREADY),
        .S00_AXI_bresp(axi_cpu_dma_interconnect_M00_AXI_BRESP),
        .S00_AXI_bvalid(axi_cpu_dma_interconnect_M00_AXI_BVALID),
        .S00_AXI_rdata(axi_cpu_dma_interconnect_M00_AXI_RDATA),
        .S00_AXI_rid(axi_cpu_dma_interconnect_M00_AXI_RID),
        .S00_AXI_rlast(axi_cpu_dma_interconnect_M00_AXI_RLAST),
        .S00_AXI_rready(axi_cpu_dma_interconnect_M00_AXI_RREADY),
        .S00_AXI_rresp(axi_cpu_dma_interconnect_M00_AXI_RRESP),
        .S00_AXI_rvalid(axi_cpu_dma_interconnect_M00_AXI_RVALID),
        .S00_AXI_wdata(axi_cpu_dma_interconnect_M00_AXI_WDATA),
        .S00_AXI_wlast(axi_cpu_dma_interconnect_M00_AXI_WLAST),
        .S00_AXI_wready(axi_cpu_dma_interconnect_M00_AXI_WREADY),
        .S00_AXI_wstrb(axi_cpu_dma_interconnect_M00_AXI_WSTRB),
        .S00_AXI_wvalid(axi_cpu_dma_interconnect_M00_AXI_WVALID),
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
  icyradio_axi_peripheral_interconnect_0 axi_peripheral_interconnect
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
        .M03_AXI_araddr(axi_peripheral_interconnect_M03_AXI_ARADDR),
        .M03_AXI_arprot(axi_peripheral_interconnect_M03_AXI_ARPROT),
        .M03_AXI_arready(axi_peripheral_interconnect_M03_AXI_ARREADY),
        .M03_AXI_arvalid(axi_peripheral_interconnect_M03_AXI_ARVALID),
        .M03_AXI_awaddr(axi_peripheral_interconnect_M03_AXI_AWADDR),
        .M03_AXI_awprot(axi_peripheral_interconnect_M03_AXI_AWPROT),
        .M03_AXI_awready(axi_peripheral_interconnect_M03_AXI_AWREADY),
        .M03_AXI_awvalid(axi_peripheral_interconnect_M03_AXI_AWVALID),
        .M03_AXI_bready(axi_peripheral_interconnect_M03_AXI_BREADY),
        .M03_AXI_bresp(axi_peripheral_interconnect_M03_AXI_BRESP),
        .M03_AXI_bvalid(axi_peripheral_interconnect_M03_AXI_BVALID),
        .M03_AXI_rdata(axi_peripheral_interconnect_M03_AXI_RDATA),
        .M03_AXI_rready(axi_peripheral_interconnect_M03_AXI_RREADY),
        .M03_AXI_rresp(axi_peripheral_interconnect_M03_AXI_RRESP),
        .M03_AXI_rvalid(axi_peripheral_interconnect_M03_AXI_RVALID),
        .M03_AXI_wdata(axi_peripheral_interconnect_M03_AXI_WDATA),
        .M03_AXI_wready(axi_peripheral_interconnect_M03_AXI_WREADY),
        .M03_AXI_wstrb(axi_peripheral_interconnect_M03_AXI_WSTRB),
        .M03_AXI_wvalid(axi_peripheral_interconnect_M03_AXI_WVALID),
        .M04_ACLK(axi_pcie_0_axi_aclk_out),
        .M04_ARESETN(rst_axi_pcie_0_125M_interconnect_aresetn),
        .M04_AXI_araddr(axi_peripheral_interconnect_M04_AXI_ARADDR),
        .M04_AXI_arprot(axi_peripheral_interconnect_M04_AXI_ARPROT),
        .M04_AXI_arready(axi_peripheral_interconnect_M04_AXI_ARREADY),
        .M04_AXI_arvalid(axi_peripheral_interconnect_M04_AXI_ARVALID),
        .M04_AXI_awaddr(axi_peripheral_interconnect_M04_AXI_AWADDR),
        .M04_AXI_awprot(axi_peripheral_interconnect_M04_AXI_AWPROT),
        .M04_AXI_awready(axi_peripheral_interconnect_M04_AXI_AWREADY),
        .M04_AXI_awvalid(axi_peripheral_interconnect_M04_AXI_AWVALID),
        .M04_AXI_bready(axi_peripheral_interconnect_M04_AXI_BREADY),
        .M04_AXI_bresp(axi_peripheral_interconnect_M04_AXI_BRESP),
        .M04_AXI_bvalid(axi_peripheral_interconnect_M04_AXI_BVALID),
        .M04_AXI_rdata(axi_peripheral_interconnect_M04_AXI_RDATA),
        .M04_AXI_rready(axi_peripheral_interconnect_M04_AXI_RREADY),
        .M04_AXI_rresp(axi_peripheral_interconnect_M04_AXI_RRESP),
        .M04_AXI_rvalid(axi_peripheral_interconnect_M04_AXI_RVALID),
        .M04_AXI_wdata(axi_peripheral_interconnect_M04_AXI_WDATA),
        .M04_AXI_wready(axi_peripheral_interconnect_M04_AXI_WREADY),
        .M04_AXI_wstrb(axi_peripheral_interconnect_M04_AXI_WSTRB),
        .M04_AXI_wvalid(axi_peripheral_interconnect_M04_AXI_WVALID),
        .M05_ACLK(axi_pcie_0_axi_aclk_out),
        .M05_ARESETN(rst_axi_pcie_0_125M_interconnect_aresetn),
        .M05_AXI_araddr(axi_peripheral_interconnect_M05_AXI_ARADDR),
        .M05_AXI_arprot(axi_peripheral_interconnect_M05_AXI_ARPROT),
        .M05_AXI_arready(axi_peripheral_interconnect_M05_AXI_ARREADY),
        .M05_AXI_arvalid(axi_peripheral_interconnect_M05_AXI_ARVALID),
        .M05_AXI_awaddr(axi_peripheral_interconnect_M05_AXI_AWADDR),
        .M05_AXI_awprot(axi_peripheral_interconnect_M05_AXI_AWPROT),
        .M05_AXI_awready(axi_peripheral_interconnect_M05_AXI_AWREADY),
        .M05_AXI_awvalid(axi_peripheral_interconnect_M05_AXI_AWVALID),
        .M05_AXI_bready(axi_peripheral_interconnect_M05_AXI_BREADY),
        .M05_AXI_bresp(axi_peripheral_interconnect_M05_AXI_BRESP),
        .M05_AXI_bvalid(axi_peripheral_interconnect_M05_AXI_BVALID),
        .M05_AXI_rdata(axi_peripheral_interconnect_M05_AXI_RDATA),
        .M05_AXI_rready(axi_peripheral_interconnect_M05_AXI_RREADY),
        .M05_AXI_rresp(axi_peripheral_interconnect_M05_AXI_RRESP),
        .M05_AXI_rvalid(axi_peripheral_interconnect_M05_AXI_RVALID),
        .M05_AXI_wdata(axi_peripheral_interconnect_M05_AXI_WDATA),
        .M05_AXI_wready(axi_peripheral_interconnect_M05_AXI_WREADY),
        .M05_AXI_wstrb(axi_peripheral_interconnect_M05_AXI_WSTRB),
        .M05_AXI_wvalid(axi_peripheral_interconnect_M05_AXI_WVALID),
        .M06_ACLK(axi_pcie_0_axi_aclk_out),
        .M06_ARESETN(rst_axi_pcie_0_125M_interconnect_aresetn),
        .M06_AXI_araddr(axi_peripheral_interconnect_M06_AXI_ARADDR),
        .M06_AXI_arprot(axi_peripheral_interconnect_M06_AXI_ARPROT),
        .M06_AXI_arready(axi_peripheral_interconnect_M06_AXI_ARREADY),
        .M06_AXI_arvalid(axi_peripheral_interconnect_M06_AXI_ARVALID),
        .M06_AXI_awaddr(axi_peripheral_interconnect_M06_AXI_AWADDR),
        .M06_AXI_awprot(axi_peripheral_interconnect_M06_AXI_AWPROT),
        .M06_AXI_awready(axi_peripheral_interconnect_M06_AXI_AWREADY),
        .M06_AXI_awvalid(axi_peripheral_interconnect_M06_AXI_AWVALID),
        .M06_AXI_bready(axi_peripheral_interconnect_M06_AXI_BREADY),
        .M06_AXI_bresp(axi_peripheral_interconnect_M06_AXI_BRESP),
        .M06_AXI_bvalid(axi_peripheral_interconnect_M06_AXI_BVALID),
        .M06_AXI_rdata(axi_peripheral_interconnect_M06_AXI_RDATA),
        .M06_AXI_rready(axi_peripheral_interconnect_M06_AXI_RREADY),
        .M06_AXI_rresp(axi_peripheral_interconnect_M06_AXI_RRESP),
        .M06_AXI_rvalid(axi_peripheral_interconnect_M06_AXI_RVALID),
        .M06_AXI_wdata(axi_peripheral_interconnect_M06_AXI_WDATA),
        .M06_AXI_wready(axi_peripheral_interconnect_M06_AXI_WREADY),
        .M06_AXI_wstrb(axi_peripheral_interconnect_M06_AXI_WSTRB),
        .M06_AXI_wvalid(axi_peripheral_interconnect_M06_AXI_WVALID),
        .M07_ACLK(axi_pcie_0_axi_aclk_out),
        .M07_ARESETN(rst_axi_pcie_0_125M_interconnect_aresetn),
        .M07_AXI_araddr(axi_peripheral_interconnect_M07_AXI_ARADDR),
        .M07_AXI_arready(axi_peripheral_interconnect_M07_AXI_ARREADY),
        .M07_AXI_arvalid(axi_peripheral_interconnect_M07_AXI_ARVALID),
        .M07_AXI_awaddr(axi_peripheral_interconnect_M07_AXI_AWADDR),
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
        .M08_AXI_arready(axi_peripheral_interconnect_M08_AXI_ARREADY),
        .M08_AXI_arvalid(axi_peripheral_interconnect_M08_AXI_ARVALID),
        .M08_AXI_awaddr(axi_peripheral_interconnect_M08_AXI_AWADDR),
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
        .M09_AXI_arready(axi_peripheral_interconnect_M09_AXI_ARREADY),
        .M09_AXI_arvalid(axi_peripheral_interconnect_M09_AXI_ARVALID),
        .M09_AXI_awaddr(axi_peripheral_interconnect_M09_AXI_AWADDR),
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
        .M10_AXI_arprot(axi_peripheral_interconnect_M10_AXI_ARPROT),
        .M10_AXI_arready(axi_peripheral_interconnect_M10_AXI_ARREADY),
        .M10_AXI_arvalid(axi_peripheral_interconnect_M10_AXI_ARVALID),
        .M10_AXI_awaddr(axi_peripheral_interconnect_M10_AXI_AWADDR),
        .M10_AXI_awprot(axi_peripheral_interconnect_M10_AXI_AWPROT),
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
        .M11_AXI_arprot(axi_peripheral_interconnect_M11_AXI_ARPROT),
        .M11_AXI_arready(axi_peripheral_interconnect_M11_AXI_ARREADY),
        .M11_AXI_arvalid(axi_peripheral_interconnect_M11_AXI_ARVALID),
        .M11_AXI_awaddr(axi_peripheral_interconnect_M11_AXI_AWADDR),
        .M11_AXI_awprot(axi_peripheral_interconnect_M11_AXI_AWPROT),
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
        .M12_AXI_arprot(axi_peripheral_interconnect_M12_AXI_ARPROT),
        .M12_AXI_arready(axi_peripheral_interconnect_M12_AXI_ARREADY),
        .M12_AXI_arvalid(axi_peripheral_interconnect_M12_AXI_ARVALID),
        .M12_AXI_awaddr(axi_peripheral_interconnect_M12_AXI_AWADDR),
        .M12_AXI_awprot(axi_peripheral_interconnect_M12_AXI_AWPROT),
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
        .M13_AXI_arprot(axi_peripheral_interconnect_M13_AXI_ARPROT),
        .M13_AXI_arready(axi_peripheral_interconnect_M13_AXI_ARREADY),
        .M13_AXI_arvalid(axi_peripheral_interconnect_M13_AXI_ARVALID),
        .M13_AXI_awaddr(axi_peripheral_interconnect_M13_AXI_AWADDR),
        .M13_AXI_awprot(axi_peripheral_interconnect_M13_AXI_AWPROT),
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
        .M14_AXI_arprot(axi_peripheral_interconnect_M14_AXI_ARPROT),
        .M14_AXI_arready(axi_peripheral_interconnect_M14_AXI_ARREADY),
        .M14_AXI_arvalid(axi_peripheral_interconnect_M14_AXI_ARVALID),
        .M14_AXI_awaddr(axi_peripheral_interconnect_M14_AXI_AWADDR),
        .M14_AXI_awprot(axi_peripheral_interconnect_M14_AXI_AWPROT),
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
        .M15_ACLK(axi_pcie_0_axi_aclk_out),
        .M15_ARESETN(rst_axi_pcie_0_125M_interconnect_aresetn),
        .M15_AXI_araddr(axi_peripheral_interconnect_M15_AXI_ARADDR),
        .M15_AXI_arprot(axi_peripheral_interconnect_M15_AXI_ARPROT),
        .M15_AXI_arready(axi_peripheral_interconnect_M15_AXI_ARREADY),
        .M15_AXI_arvalid(axi_peripheral_interconnect_M15_AXI_ARVALID),
        .M15_AXI_awaddr(axi_peripheral_interconnect_M15_AXI_AWADDR),
        .M15_AXI_awprot(axi_peripheral_interconnect_M15_AXI_AWPROT),
        .M15_AXI_awready(axi_peripheral_interconnect_M15_AXI_AWREADY),
        .M15_AXI_awvalid(axi_peripheral_interconnect_M15_AXI_AWVALID),
        .M15_AXI_bready(axi_peripheral_interconnect_M15_AXI_BREADY),
        .M15_AXI_bresp(axi_peripheral_interconnect_M15_AXI_BRESP),
        .M15_AXI_bvalid(axi_peripheral_interconnect_M15_AXI_BVALID),
        .M15_AXI_rdata(axi_peripheral_interconnect_M15_AXI_RDATA),
        .M15_AXI_rready(axi_peripheral_interconnect_M15_AXI_RREADY),
        .M15_AXI_rresp(axi_peripheral_interconnect_M15_AXI_RRESP),
        .M15_AXI_rvalid(axi_peripheral_interconnect_M15_AXI_RVALID),
        .M15_AXI_wdata(axi_peripheral_interconnect_M15_AXI_WDATA),
        .M15_AXI_wready(axi_peripheral_interconnect_M15_AXI_WREADY),
        .M15_AXI_wstrb(axi_peripheral_interconnect_M15_AXI_WSTRB),
        .M15_AXI_wvalid(axi_peripheral_interconnect_M15_AXI_WVALID),
        .M16_ACLK(M16_ACLK_1),
        .M16_ARESETN(rst_axi_pcie_0_125M_interconnect_aresetn),
        .M16_AXI_araddr(axi_peripheral_interconnect_M16_AXI_ARADDR),
        .M16_AXI_arready(axi_peripheral_interconnect_M16_AXI_ARREADY),
        .M16_AXI_arvalid(axi_peripheral_interconnect_M16_AXI_ARVALID),
        .M16_AXI_awaddr(axi_peripheral_interconnect_M16_AXI_AWADDR),
        .M16_AXI_awready(axi_peripheral_interconnect_M16_AXI_AWREADY),
        .M16_AXI_awvalid(axi_peripheral_interconnect_M16_AXI_AWVALID),
        .M16_AXI_bready(axi_peripheral_interconnect_M16_AXI_BREADY),
        .M16_AXI_bresp(axi_peripheral_interconnect_M16_AXI_BRESP),
        .M16_AXI_bvalid(axi_peripheral_interconnect_M16_AXI_BVALID),
        .M16_AXI_rdata(axi_peripheral_interconnect_M16_AXI_RDATA),
        .M16_AXI_rready(axi_peripheral_interconnect_M16_AXI_RREADY),
        .M16_AXI_rresp(axi_peripheral_interconnect_M16_AXI_RRESP),
        .M16_AXI_rvalid(axi_peripheral_interconnect_M16_AXI_RVALID),
        .M16_AXI_wdata(axi_peripheral_interconnect_M16_AXI_WDATA),
        .M16_AXI_wready(axi_peripheral_interconnect_M16_AXI_WREADY),
        .M16_AXI_wstrb(axi_peripheral_interconnect_M16_AXI_WSTRB),
        .M16_AXI_wvalid(axi_peripheral_interconnect_M16_AXI_WVALID),
        .M17_ACLK(axi_pcie_0_axi_aclk_out),
        .M17_ARESETN(rst_axi_pcie_0_125M_interconnect_aresetn),
        .M17_AXI_araddr(axi_peripheral_interconnect_M17_AXI_ARADDR),
        .M17_AXI_arprot(axi_peripheral_interconnect_M17_AXI_ARPROT),
        .M17_AXI_arready(axi_peripheral_interconnect_M17_AXI_ARREADY),
        .M17_AXI_arvalid(axi_peripheral_interconnect_M17_AXI_ARVALID),
        .M17_AXI_awaddr(axi_peripheral_interconnect_M17_AXI_AWADDR),
        .M17_AXI_awprot(axi_peripheral_interconnect_M17_AXI_AWPROT),
        .M17_AXI_awready(axi_peripheral_interconnect_M17_AXI_AWREADY),
        .M17_AXI_awvalid(axi_peripheral_interconnect_M17_AXI_AWVALID),
        .M17_AXI_bready(axi_peripheral_interconnect_M17_AXI_BREADY),
        .M17_AXI_bresp(axi_peripheral_interconnect_M17_AXI_BRESP),
        .M17_AXI_bvalid(axi_peripheral_interconnect_M17_AXI_BVALID),
        .M17_AXI_rdata(axi_peripheral_interconnect_M17_AXI_RDATA),
        .M17_AXI_rready(axi_peripheral_interconnect_M17_AXI_RREADY),
        .M17_AXI_rresp(axi_peripheral_interconnect_M17_AXI_RRESP),
        .M17_AXI_rvalid(axi_peripheral_interconnect_M17_AXI_RVALID),
        .M17_AXI_wdata(axi_peripheral_interconnect_M17_AXI_WDATA),
        .M17_AXI_wready(axi_peripheral_interconnect_M17_AXI_WREADY),
        .M17_AXI_wstrb(axi_peripheral_interconnect_M17_AXI_WSTRB),
        .M17_AXI_wvalid(axi_peripheral_interconnect_M17_AXI_WVALID),
        .M18_ACLK(axi_pcie_0_axi_aclk_out),
        .M18_ARESETN(rst_axi_pcie_0_125M_interconnect_aresetn),
        .M18_AXI_araddr(axi_peripheral_interconnect_M18_AXI_ARADDR),
        .M18_AXI_arprot(axi_peripheral_interconnect_M18_AXI_ARPROT),
        .M18_AXI_arready(axi_peripheral_interconnect_M18_AXI_ARREADY),
        .M18_AXI_arvalid(axi_peripheral_interconnect_M18_AXI_ARVALID),
        .M18_AXI_awaddr(axi_peripheral_interconnect_M18_AXI_AWADDR),
        .M18_AXI_awprot(axi_peripheral_interconnect_M18_AXI_AWPROT),
        .M18_AXI_awready(axi_peripheral_interconnect_M18_AXI_AWREADY),
        .M18_AXI_awvalid(axi_peripheral_interconnect_M18_AXI_AWVALID),
        .M18_AXI_bready(axi_peripheral_interconnect_M18_AXI_BREADY),
        .M18_AXI_bresp(axi_peripheral_interconnect_M18_AXI_BRESP),
        .M18_AXI_bvalid(axi_peripheral_interconnect_M18_AXI_BVALID),
        .M18_AXI_rdata(axi_peripheral_interconnect_M18_AXI_RDATA),
        .M18_AXI_rready(axi_peripheral_interconnect_M18_AXI_RREADY),
        .M18_AXI_rresp(axi_peripheral_interconnect_M18_AXI_RRESP),
        .M18_AXI_rvalid(axi_peripheral_interconnect_M18_AXI_RVALID),
        .M18_AXI_wdata(axi_peripheral_interconnect_M18_AXI_WDATA),
        .M18_AXI_wready(axi_peripheral_interconnect_M18_AXI_WREADY),
        .M18_AXI_wstrb(axi_peripheral_interconnect_M18_AXI_WSTRB),
        .M18_AXI_wvalid(axi_peripheral_interconnect_M18_AXI_WVALID),
        .M19_ACLK(axi_pcie_0_axi_aclk_out),
        .M19_ARESETN(rst_axi_pcie_0_125M_interconnect_aresetn),
        .M19_AXI_araddr(axi_peripheral_interconnect_M19_AXI_ARADDR),
        .M19_AXI_arprot(axi_peripheral_interconnect_M19_AXI_ARPROT),
        .M19_AXI_arready(axi_peripheral_interconnect_M19_AXI_ARREADY),
        .M19_AXI_arvalid(axi_peripheral_interconnect_M19_AXI_ARVALID),
        .M19_AXI_awaddr(axi_peripheral_interconnect_M19_AXI_AWADDR),
        .M19_AXI_awprot(axi_peripheral_interconnect_M19_AXI_AWPROT),
        .M19_AXI_awready(axi_peripheral_interconnect_M19_AXI_AWREADY),
        .M19_AXI_awvalid(axi_peripheral_interconnect_M19_AXI_AWVALID),
        .M19_AXI_bready(axi_peripheral_interconnect_M19_AXI_BREADY),
        .M19_AXI_bresp(axi_peripheral_interconnect_M19_AXI_BRESP),
        .M19_AXI_bvalid(axi_peripheral_interconnect_M19_AXI_BVALID),
        .M19_AXI_rdata(axi_peripheral_interconnect_M19_AXI_RDATA),
        .M19_AXI_rready(axi_peripheral_interconnect_M19_AXI_RREADY),
        .M19_AXI_rresp(axi_peripheral_interconnect_M19_AXI_RRESP),
        .M19_AXI_rvalid(axi_peripheral_interconnect_M19_AXI_RVALID),
        .M19_AXI_wdata(axi_peripheral_interconnect_M19_AXI_WDATA),
        .M19_AXI_wready(axi_peripheral_interconnect_M19_AXI_WREADY),
        .M19_AXI_wstrb(axi_peripheral_interconnect_M19_AXI_WSTRB),
        .M19_AXI_wvalid(axi_peripheral_interconnect_M19_AXI_WVALID),
        .M20_ACLK(axi_pcie_0_axi_aclk_out),
        .M20_ARESETN(rst_axi_pcie_0_125M_interconnect_aresetn),
        .M20_AXI_araddr(axi_peripheral_interconnect_M20_AXI_ARADDR),
        .M20_AXI_arready(axi_peripheral_interconnect_M20_AXI_ARREADY),
        .M20_AXI_arvalid(axi_peripheral_interconnect_M20_AXI_ARVALID),
        .M20_AXI_awaddr(axi_peripheral_interconnect_M20_AXI_AWADDR),
        .M20_AXI_awready(axi_peripheral_interconnect_M20_AXI_AWREADY),
        .M20_AXI_awvalid(axi_peripheral_interconnect_M20_AXI_AWVALID),
        .M20_AXI_bready(axi_peripheral_interconnect_M20_AXI_BREADY),
        .M20_AXI_bresp(axi_peripheral_interconnect_M20_AXI_BRESP),
        .M20_AXI_bvalid(axi_peripheral_interconnect_M20_AXI_BVALID),
        .M20_AXI_rdata(axi_peripheral_interconnect_M20_AXI_RDATA),
        .M20_AXI_rready(axi_peripheral_interconnect_M20_AXI_RREADY),
        .M20_AXI_rresp(axi_peripheral_interconnect_M20_AXI_RRESP),
        .M20_AXI_rvalid(axi_peripheral_interconnect_M20_AXI_RVALID),
        .M20_AXI_wdata(axi_peripheral_interconnect_M20_AXI_WDATA),
        .M20_AXI_wready(axi_peripheral_interconnect_M20_AXI_WREADY),
        .M20_AXI_wstrb(axi_peripheral_interconnect_M20_AXI_WSTRB),
        .M20_AXI_wvalid(axi_peripheral_interconnect_M20_AXI_WVALID),
        .M21_ACLK(axi_pcie_0_axi_aclk_out),
        .M21_ARESETN(rst_axi_pcie_0_125M_interconnect_aresetn),
        .M21_AXI_araddr(axi_peripheral_interconnect_M21_AXI_ARADDR),
        .M21_AXI_arprot(axi_peripheral_interconnect_M21_AXI_ARPROT),
        .M21_AXI_arready(axi_peripheral_interconnect_M21_AXI_ARREADY),
        .M21_AXI_arvalid(axi_peripheral_interconnect_M21_AXI_ARVALID),
        .M21_AXI_awaddr(axi_peripheral_interconnect_M21_AXI_AWADDR),
        .M21_AXI_awprot(axi_peripheral_interconnect_M21_AXI_AWPROT),
        .M21_AXI_awready(axi_peripheral_interconnect_M21_AXI_AWREADY),
        .M21_AXI_awvalid(axi_peripheral_interconnect_M21_AXI_AWVALID),
        .M21_AXI_bready(axi_peripheral_interconnect_M21_AXI_BREADY),
        .M21_AXI_bresp(axi_peripheral_interconnect_M21_AXI_BRESP),
        .M21_AXI_bvalid(axi_peripheral_interconnect_M21_AXI_BVALID),
        .M21_AXI_rdata(axi_peripheral_interconnect_M21_AXI_RDATA),
        .M21_AXI_rready(axi_peripheral_interconnect_M21_AXI_RREADY),
        .M21_AXI_rresp(axi_peripheral_interconnect_M21_AXI_RRESP),
        .M21_AXI_rvalid(axi_peripheral_interconnect_M21_AXI_RVALID),
        .M21_AXI_wdata(axi_peripheral_interconnect_M21_AXI_WDATA),
        .M21_AXI_wready(axi_peripheral_interconnect_M21_AXI_WREADY),
        .M21_AXI_wstrb(axi_peripheral_interconnect_M21_AXI_WSTRB),
        .M21_AXI_wvalid(axi_peripheral_interconnect_M21_AXI_WVALID),
        .S00_ACLK(axi_pcie_0_axi_aclk_out),
        .S00_ARESETN(rst_axi_pcie_0_125M_interconnect_aresetn),
        .S00_AXI_araddr(axi_protocol_convert_0_M_AXI_ARADDR),
        .S00_AXI_arprot(axi_protocol_convert_0_M_AXI_ARPROT),
        .S00_AXI_arready(axi_protocol_convert_0_M_AXI_ARREADY),
        .S00_AXI_arvalid(axi_protocol_convert_0_M_AXI_ARVALID),
        .S00_AXI_awaddr(axi_protocol_convert_0_M_AXI_AWADDR),
        .S00_AXI_awprot(axi_protocol_convert_0_M_AXI_AWPROT),
        .S00_AXI_awready(axi_protocol_convert_0_M_AXI_AWREADY),
        .S00_AXI_awvalid(axi_protocol_convert_0_M_AXI_AWVALID),
        .S00_AXI_bready(axi_protocol_convert_0_M_AXI_BREADY),
        .S00_AXI_bresp(axi_protocol_convert_0_M_AXI_BRESP),
        .S00_AXI_bvalid(axi_protocol_convert_0_M_AXI_BVALID),
        .S00_AXI_rdata(axi_protocol_convert_0_M_AXI_RDATA),
        .S00_AXI_rready(axi_protocol_convert_0_M_AXI_RREADY),
        .S00_AXI_rresp(axi_protocol_convert_0_M_AXI_RRESP),
        .S00_AXI_rvalid(axi_protocol_convert_0_M_AXI_RVALID),
        .S00_AXI_wdata(axi_protocol_convert_0_M_AXI_WDATA),
        .S00_AXI_wready(axi_protocol_convert_0_M_AXI_WREADY),
        .S00_AXI_wstrb(axi_protocol_convert_0_M_AXI_WSTRB),
        .S00_AXI_wvalid(axi_protocol_convert_0_M_AXI_WVALID));
  icyradio_axi_protocol_convert_0_0 axi_protocol_convert_0
       (.aclk(axi_pcie_0_axi_aclk_out),
        .aresetn(rst_axi_pcie_0_125M_interconnect_aresetn),
        .m_axi_araddr(axi_protocol_convert_0_M_AXI_ARADDR),
        .m_axi_arprot(axi_protocol_convert_0_M_AXI_ARPROT),
        .m_axi_arready(axi_protocol_convert_0_M_AXI_ARREADY),
        .m_axi_arvalid(axi_protocol_convert_0_M_AXI_ARVALID),
        .m_axi_awaddr(axi_protocol_convert_0_M_AXI_AWADDR),
        .m_axi_awprot(axi_protocol_convert_0_M_AXI_AWPROT),
        .m_axi_awready(axi_protocol_convert_0_M_AXI_AWREADY),
        .m_axi_awvalid(axi_protocol_convert_0_M_AXI_AWVALID),
        .m_axi_bready(axi_protocol_convert_0_M_AXI_BREADY),
        .m_axi_bresp(axi_protocol_convert_0_M_AXI_BRESP),
        .m_axi_bvalid(axi_protocol_convert_0_M_AXI_BVALID),
        .m_axi_rdata(axi_protocol_convert_0_M_AXI_RDATA),
        .m_axi_rready(axi_protocol_convert_0_M_AXI_RREADY),
        .m_axi_rresp(axi_protocol_convert_0_M_AXI_RRESP),
        .m_axi_rvalid(axi_protocol_convert_0_M_AXI_RVALID),
        .m_axi_wdata(axi_protocol_convert_0_M_AXI_WDATA),
        .m_axi_wready(axi_protocol_convert_0_M_AXI_WREADY),
        .m_axi_wstrb(axi_protocol_convert_0_M_AXI_WSTRB),
        .m_axi_wvalid(axi_protocol_convert_0_M_AXI_WVALID),
        .s_axi_araddr(axi_interconnect_0_M00_AXI1_ARADDR),
        .s_axi_arburst(axi_interconnect_0_M00_AXI1_ARBURST),
        .s_axi_arcache(axi_interconnect_0_M00_AXI1_ARCACHE),
        .s_axi_arid(axi_interconnect_0_M00_AXI1_ARID),
        .s_axi_arlen(axi_interconnect_0_M00_AXI1_ARLEN),
        .s_axi_arlock(axi_interconnect_0_M00_AXI1_ARLOCK),
        .s_axi_arprot(axi_interconnect_0_M00_AXI1_ARPROT),
        .s_axi_arqos(axi_interconnect_0_M00_AXI1_ARQOS),
        .s_axi_arready(axi_interconnect_0_M00_AXI1_ARREADY),
        .s_axi_arregion(axi_interconnect_0_M00_AXI1_ARREGION),
        .s_axi_arsize(axi_interconnect_0_M00_AXI1_ARSIZE),
        .s_axi_arvalid(axi_interconnect_0_M00_AXI1_ARVALID),
        .s_axi_awaddr(axi_interconnect_0_M00_AXI1_AWADDR),
        .s_axi_awburst(axi_interconnect_0_M00_AXI1_AWBURST),
        .s_axi_awcache(axi_interconnect_0_M00_AXI1_AWCACHE),
        .s_axi_awid(axi_interconnect_0_M00_AXI1_AWID),
        .s_axi_awlen(axi_interconnect_0_M00_AXI1_AWLEN),
        .s_axi_awlock(axi_interconnect_0_M00_AXI1_AWLOCK),
        .s_axi_awprot(axi_interconnect_0_M00_AXI1_AWPROT),
        .s_axi_awqos(axi_interconnect_0_M00_AXI1_AWQOS),
        .s_axi_awready(axi_interconnect_0_M00_AXI1_AWREADY),
        .s_axi_awregion(axi_interconnect_0_M00_AXI1_AWREGION),
        .s_axi_awsize(axi_interconnect_0_M00_AXI1_AWSIZE),
        .s_axi_awvalid(axi_interconnect_0_M00_AXI1_AWVALID),
        .s_axi_bid(axi_interconnect_0_M00_AXI1_BID),
        .s_axi_bready(axi_interconnect_0_M00_AXI1_BREADY),
        .s_axi_bresp(axi_interconnect_0_M00_AXI1_BRESP),
        .s_axi_bvalid(axi_interconnect_0_M00_AXI1_BVALID),
        .s_axi_rdata(axi_interconnect_0_M00_AXI1_RDATA),
        .s_axi_rid(axi_interconnect_0_M00_AXI1_RID),
        .s_axi_rlast(axi_interconnect_0_M00_AXI1_RLAST),
        .s_axi_rready(axi_interconnect_0_M00_AXI1_RREADY),
        .s_axi_rresp(axi_interconnect_0_M00_AXI1_RRESP),
        .s_axi_rvalid(axi_interconnect_0_M00_AXI1_RVALID),
        .s_axi_wdata(axi_interconnect_0_M00_AXI1_WDATA),
        .s_axi_wlast(axi_interconnect_0_M00_AXI1_WLAST),
        .s_axi_wready(axi_interconnect_0_M00_AXI1_WREADY),
        .s_axi_wstrb(axi_interconnect_0_M00_AXI1_WSTRB),
        .s_axi_wvalid(axi_interconnect_0_M00_AXI1_WVALID));
  icyradio_axi_qspi_mm_0_0 axi_qspi_mm_0
       (.aclk(axi_pcie_0_axi_aclk_out),
        .aresetn(rst_axi_pcie_0_125M_peripheral_aresetn),
        .irq(axi_qspi_mm_0_irq),
        .s_axi_full_araddr(axi_interconnect_0_M01_AXI1_ARADDR[23:0]),
        .s_axi_full_arburst(axi_interconnect_0_M01_AXI1_ARBURST),
        .s_axi_full_arcache(axi_interconnect_0_M01_AXI1_ARCACHE),
        .s_axi_full_arid(axi_interconnect_0_M01_AXI1_ARID),
        .s_axi_full_arlen(axi_interconnect_0_M01_AXI1_ARLEN),
        .s_axi_full_arlock(axi_interconnect_0_M01_AXI1_ARLOCK),
        .s_axi_full_arprot(axi_interconnect_0_M01_AXI1_ARPROT),
        .s_axi_full_arqos(axi_interconnect_0_M01_AXI1_ARQOS),
        .s_axi_full_arready(axi_interconnect_0_M01_AXI1_ARREADY),
        .s_axi_full_arsize(axi_interconnect_0_M01_AXI1_ARSIZE),
        .s_axi_full_arvalid(axi_interconnect_0_M01_AXI1_ARVALID),
        .s_axi_full_awaddr(axi_interconnect_0_M01_AXI1_AWADDR[23:0]),
        .s_axi_full_awburst(axi_interconnect_0_M01_AXI1_AWBURST),
        .s_axi_full_awcache(axi_interconnect_0_M01_AXI1_AWCACHE),
        .s_axi_full_awid(axi_interconnect_0_M01_AXI1_AWID),
        .s_axi_full_awlen(axi_interconnect_0_M01_AXI1_AWLEN),
        .s_axi_full_awlock(axi_interconnect_0_M01_AXI1_AWLOCK),
        .s_axi_full_awprot(axi_interconnect_0_M01_AXI1_AWPROT),
        .s_axi_full_awqos(axi_interconnect_0_M01_AXI1_AWQOS),
        .s_axi_full_awready(axi_interconnect_0_M01_AXI1_AWREADY),
        .s_axi_full_awsize(axi_interconnect_0_M01_AXI1_AWSIZE),
        .s_axi_full_awvalid(axi_interconnect_0_M01_AXI1_AWVALID),
        .s_axi_full_bid(axi_interconnect_0_M01_AXI1_BID),
        .s_axi_full_bready(axi_interconnect_0_M01_AXI1_BREADY),
        .s_axi_full_bresp(axi_interconnect_0_M01_AXI1_BRESP),
        .s_axi_full_bvalid(axi_interconnect_0_M01_AXI1_BVALID),
        .s_axi_full_rdata(axi_interconnect_0_M01_AXI1_RDATA),
        .s_axi_full_rid(axi_interconnect_0_M01_AXI1_RID),
        .s_axi_full_rlast(axi_interconnect_0_M01_AXI1_RLAST),
        .s_axi_full_rready(axi_interconnect_0_M01_AXI1_RREADY),
        .s_axi_full_rresp(axi_interconnect_0_M01_AXI1_RRESP),
        .s_axi_full_rvalid(axi_interconnect_0_M01_AXI1_RVALID),
        .s_axi_full_wdata(axi_interconnect_0_M01_AXI1_WDATA),
        .s_axi_full_wlast(axi_interconnect_0_M01_AXI1_WLAST),
        .s_axi_full_wready(axi_interconnect_0_M01_AXI1_WREADY),
        .s_axi_full_wstrb(axi_interconnect_0_M01_AXI1_WSTRB),
        .s_axi_full_wvalid(axi_interconnect_0_M01_AXI1_WVALID),
        .s_axi_lite_araddr(axi_peripheral_interconnect_M10_AXI_ARADDR[5:0]),
        .s_axi_lite_arprot(axi_peripheral_interconnect_M10_AXI_ARPROT),
        .s_axi_lite_arready(axi_peripheral_interconnect_M10_AXI_ARREADY),
        .s_axi_lite_arvalid(axi_peripheral_interconnect_M10_AXI_ARVALID),
        .s_axi_lite_awaddr(axi_peripheral_interconnect_M10_AXI_AWADDR[5:0]),
        .s_axi_lite_awprot(axi_peripheral_interconnect_M10_AXI_AWPROT),
        .s_axi_lite_awready(axi_peripheral_interconnect_M10_AXI_AWREADY),
        .s_axi_lite_awvalid(axi_peripheral_interconnect_M10_AXI_AWVALID),
        .s_axi_lite_bready(axi_peripheral_interconnect_M10_AXI_BREADY),
        .s_axi_lite_bresp(axi_peripheral_interconnect_M10_AXI_BRESP),
        .s_axi_lite_bvalid(axi_peripheral_interconnect_M10_AXI_BVALID),
        .s_axi_lite_rdata(axi_peripheral_interconnect_M10_AXI_RDATA),
        .s_axi_lite_rready(axi_peripheral_interconnect_M10_AXI_RREADY),
        .s_axi_lite_rresp(axi_peripheral_interconnect_M10_AXI_RRESP),
        .s_axi_lite_rvalid(axi_peripheral_interconnect_M10_AXI_RVALID),
        .s_axi_lite_wdata(axi_peripheral_interconnect_M10_AXI_WDATA),
        .s_axi_lite_wready(axi_peripheral_interconnect_M10_AXI_WREADY),
        .s_axi_lite_wstrb(axi_peripheral_interconnect_M10_AXI_WSTRB),
        .s_axi_lite_wvalid(axi_peripheral_interconnect_M10_AXI_WVALID),
        .spi_io0_i(axi_qspi_mm_0_spi_IO0_I),
        .spi_io0_o(axi_qspi_mm_0_spi_IO0_O),
        .spi_io0_t(axi_qspi_mm_0_spi_IO0_T),
        .spi_io1_i(axi_qspi_mm_0_spi_IO1_I),
        .spi_io1_o(axi_qspi_mm_0_spi_IO1_O),
        .spi_io1_t(axi_qspi_mm_0_spi_IO1_T),
        .spi_io2_i(axi_qspi_mm_0_spi_IO2_I),
        .spi_io2_o(axi_qspi_mm_0_spi_IO2_O),
        .spi_io2_t(axi_qspi_mm_0_spi_IO2_T),
        .spi_io3_i(axi_qspi_mm_0_spi_IO3_I),
        .spi_io3_o(axi_qspi_mm_0_spi_IO3_O),
        .spi_io3_t(axi_qspi_mm_0_spi_IO3_T),
        .spi_sck_i(axi_qspi_mm_0_spi_SCK_I),
        .spi_sck_o(axi_qspi_mm_0_spi_SCK_O),
        .spi_sck_t(axi_qspi_mm_0_spi_SCK_T),
        .spi_ss_i(axi_qspi_mm_0_spi_SS_I),
        .spi_ss_o(axi_qspi_mm_0_spi_SS_O),
        .spi_ss_t(axi_qspi_mm_0_spi_SS_T));
  icyradio_axi_rf_timestamping_0 axi_rf_timestamping
       (.aclk(axi_pcie_0_axi_aclk_out),
        .aresetn(rst_axi_pcie_0_125M_peripheral_aresetn),
        .irq(axi_rf_timestamping_0_irq),
        .rx_data_ready(rx_data_ready_concat_dout),
        .rx_dma_xfer_req(rx_dma_xfer_req_concat_dout),
        .rx_enable(axi_rf_timestamping_0_rx_enable),
        .rx_fifo_overflow(rx_fifo_overflow_concat_dout),
        .s_axi_araddr(axi_peripheral_interconnect_M17_AXI_ARADDR[6:0]),
        .s_axi_arprot(axi_peripheral_interconnect_M17_AXI_ARPROT),
        .s_axi_arready(axi_peripheral_interconnect_M17_AXI_ARREADY),
        .s_axi_arvalid(axi_peripheral_interconnect_M17_AXI_ARVALID),
        .s_axi_awaddr(axi_peripheral_interconnect_M17_AXI_AWADDR[6:0]),
        .s_axi_awprot(axi_peripheral_interconnect_M17_AXI_AWPROT),
        .s_axi_awready(axi_peripheral_interconnect_M17_AXI_AWREADY),
        .s_axi_awvalid(axi_peripheral_interconnect_M17_AXI_AWVALID),
        .s_axi_bready(axi_peripheral_interconnect_M17_AXI_BREADY),
        .s_axi_bresp(axi_peripheral_interconnect_M17_AXI_BRESP),
        .s_axi_bvalid(axi_peripheral_interconnect_M17_AXI_BVALID),
        .s_axi_rdata(axi_peripheral_interconnect_M17_AXI_RDATA),
        .s_axi_rready(axi_peripheral_interconnect_M17_AXI_RREADY),
        .s_axi_rresp(axi_peripheral_interconnect_M17_AXI_RRESP),
        .s_axi_rvalid(axi_peripheral_interconnect_M17_AXI_RVALID),
        .s_axi_wdata(axi_peripheral_interconnect_M17_AXI_WDATA),
        .s_axi_wready(axi_peripheral_interconnect_M17_AXI_WREADY),
        .s_axi_wstrb(axi_peripheral_interconnect_M17_AXI_WSTRB),
        .s_axi_wvalid(axi_peripheral_interconnect_M17_AXI_WVALID),
        .ts_clk(axi_ad9361_0_l_clk),
        .ts_clk_rx_en(axi_rf_timestamping_ts_clk_rx_en),
        .ts_clk_tx_en(axi_rf_timestamping_ts_clk_tx_en),
        .ts_resetn(rst_axi_ad9361_61M44_peripheral_aresetn),
        .tx_data_ready(tx_data_ready_concat_dout),
        .tx_dma_data_ready(tx_fifo_underflow_concat_concat_dout),
        .tx_enable(axi_rf_timestamping_0_tx_enable),
        .tx_fifo_underflow(tx_fifo_underflow_concat_dout));
  icyradio_axi_spi_0_0 axi_spi_0
       (.aclk(axi_pcie_0_axi_aclk_out),
        .aresetn(rst_axi_pcie_0_125M_peripheral_aresetn),
        .irq(axi_spi_0_irq),
        .s_axi_araddr(axi_peripheral_interconnect_M11_AXI_ARADDR[5:0]),
        .s_axi_arprot(axi_peripheral_interconnect_M11_AXI_ARPROT),
        .s_axi_arready(axi_peripheral_interconnect_M11_AXI_ARREADY),
        .s_axi_arvalid(axi_peripheral_interconnect_M11_AXI_ARVALID),
        .s_axi_awaddr(axi_peripheral_interconnect_M11_AXI_AWADDR[5:0]),
        .s_axi_awprot(axi_peripheral_interconnect_M11_AXI_AWPROT),
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
        .spi_io0_i(axi_spi_0_spi1_IO0_I),
        .spi_io0_o(axi_spi_0_spi1_IO0_O),
        .spi_io0_t(axi_spi_0_spi1_IO0_T),
        .spi_io1_i(axi_spi_0_spi1_IO1_I),
        .spi_io1_o(axi_spi_0_spi1_IO1_O),
        .spi_io1_t(axi_spi_0_spi1_IO1_T),
        .spi_sck_i(axi_spi_0_spi1_SCK_I),
        .spi_sck_o(axi_spi_0_spi1_SCK_O),
        .spi_sck_t(axi_spi_0_spi1_SCK_T),
        .spi_ss_i(axi_spi_0_spi1_SS_I),
        .spi_ss_o(axi_spi_0_spi1_SS_O),
        .spi_ss_t(axi_spi_0_spi1_SS_T));
  icyradio_axi_spi_1_0 axi_spi_1
       (.aclk(axi_pcie_0_axi_aclk_out),
        .aresetn(rst_axi_pcie_0_125M_peripheral_aresetn),
        .irq(axi_spi_1_irq),
        .s_axi_araddr(axi_peripheral_interconnect_M12_AXI_ARADDR[5:0]),
        .s_axi_arprot(axi_peripheral_interconnect_M12_AXI_ARPROT),
        .s_axi_arready(axi_peripheral_interconnect_M12_AXI_ARREADY),
        .s_axi_arvalid(axi_peripheral_interconnect_M12_AXI_ARVALID),
        .s_axi_awaddr(axi_peripheral_interconnect_M12_AXI_AWADDR[5:0]),
        .s_axi_awprot(axi_peripheral_interconnect_M12_AXI_AWPROT),
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
        .spi_io0_i(axi_spi_1_spi_IO0_I),
        .spi_io0_o(axi_spi_1_spi_IO0_O),
        .spi_io0_t(axi_spi_1_spi_IO0_T),
        .spi_io1_i(axi_spi_1_spi_IO1_I),
        .spi_io1_o(axi_spi_1_spi_IO1_O),
        .spi_io1_t(axi_spi_1_spi_IO1_T),
        .spi_sck_i(axi_spi_1_spi_SCK_I),
        .spi_sck_o(axi_spi_1_spi_SCK_O),
        .spi_sck_t(axi_spi_1_spi_SCK_T),
        .spi_ss_i(axi_spi_1_spi_SS_I),
        .spi_ss_o(axi_spi_1_spi_SS_O),
        .spi_ss_t(axi_spi_1_spi_SS_T));
  icyradio_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(FPGA_CLK0_1),
        .clk_out1(clk_wiz_0_clk_out1),
        .clk_out2(clk_wiz_0_delay_ref_clk),
        .locked(clk_wiz_0_locked),
        .resetn(rst_axi_pcie_0_125M_peripheral_aresetn));
  icyradio_dac_dunf_combiner_0 dac_dunf_combiner
       (.Op1(logic_and_4_Res),
        .Op2(logic_and_3_Res),
        .Res(logic_or_5_Res));
  icyradio_dac_dunf_gate_tx0_0 dac_dunf_gate_tx0
       (.Op1(ad9361_dac_unpacker_tx0_fifo_rd_underflow),
        .Op2(axi_ad9361_0_dac_valid_i0),
        .Res(logic_and_4_Res));
  icyradio_dac_dunf_gate_tx1_0 dac_dunf_gate_tx1
       (.Op1(ad9361_dac_unpacker_tx1_fifo_rd_underflow),
        .Op2(axi_ad9361_dac_valid_i1),
        .Res(logic_and_3_Res));
  icyradio_dac_unpacker_reset_combiner_tx0_0 dac_unpacker_reset_combiner_tx0
       (.Op1(logic_not_0_Res),
        .Op2(rst_axi_ad9361_61M44_peripheral_reset),
        .Res(logic_or_3_Res));
  icyradio_dac_unpacker_reset_combiner_tx1_0 dac_unpacker_reset_combiner_tx1
       (.Op1(logic_not_3_Res),
        .Op2(rst_axi_ad9361_61M44_peripheral_reset),
        .Res(logic_or_6_Res));
  icyradio_ddr_intf_reset_combiner_0 ddr_intf_reset_combiner
       (.Op1(mig_7series_0_ui_clk_sync_rst),
        .Op2(gpio_slice_ddr_intf_reset_Dout),
        .Res(logic_or_2_Res));
  icyradio_gpio_concat_0_0 gpio_concat_0
       (.In0(GND_5_dout),
        .In1(TRX_CTRL_OUT_1),
        .In10(GND_7_dout),
        .In2(gpio_concat_1_dout),
        .In3(GND_14_dout),
        .In4(gpio_concat_0_2_dout),
        .In5(GND_7_dout),
        .In6(rst_axi_ad9361_61M44_peripheral_aresetn),
        .In7(GND_3_dout),
        .In8(GND_7_dout),
        .In9(GND_7_dout),
        .dout(gpio_concat_0_dout));
  icyradio_gpio_concat_0_1_0 gpio_concat_0_1
       (.In0(TRX_5V0_BIAS_T1_OCn_1),
        .In1(TRX_5V0_BIAS_T2_OCn_1),
        .In2(TRX_5V0_PA1_OCn_1),
        .In3(TRX_5V0_PA2_OCn_1),
        .dout(gpio_concat_1_dout));
  icyradio_gpio_concat_0_2_0 gpio_concat_0_2
       (.In0(axi_ad9361_adc_r1_mode),
        .In1(axi_ad9361_dac_r1_mode),
        .dout(gpio_concat_0_2_dout));
  icyradio_gpio_concat_1_0 gpio_concat_1
       (.In0(GND_6_dout),
        .In1(SYNTH_LD_1),
        .In2(GND_4_dout),
        .In3(GND_8_dout),
        .dout(gpio_concat_2_dout));
  icyradio_gpio_concat_2_0 gpio_concat_2
       (.In0(clk_wiz_0_locked),
        .In1(mig_7series_0_mmcm_locked),
        .In10(rst_mig_7series_0_166M_peripheral_aresetn),
        .In11(rst_mig_7series_0_250M_peripheral_aresetn),
        .In12(rst_FPGA_CLK1_49M152_peripheral_aresetn),
        .In13(GND_15_dout),
        .In14(GND_22_dout),
        .In15(GND_22_dout),
        .In16(GND_21_dout),
        .In2(axi_pcie_0_mmcm_lock),
        .In3(GND_9_dout),
        .In4(mig_7series_0_init_calib_complete),
        .In5(axi_pcie_0_user_link_up),
        .In6(picorv32_0_trap),
        .In7(GND_15_dout),
        .In8(GND_9_dout),
        .In9(GND_22_dout),
        .dout(gpio_concat_2_dout1));
  icyradio_gpio_slice_clk_mngr_oen_0 gpio_slice_clk_mngr_oen
       (.Din(axi_gpio_2_gpio_io_o),
        .Dout(gpio_slice_clk_mngr_oen_Dout));
  icyradio_gpio_slice_cm4_wake_0 gpio_slice_cm4_wake
       (.Din(axi_gpio_2_gpio_io_o),
        .Dout(gpio_slice_cm4_wake_Dout));
  icyradio_gpio_slice_codec_resetn_0 gpio_slice_codec_resetn
       (.Din(axi_gpio_2_gpio_io_o),
        .Dout(gpio_slice_codec_resetn_Dout));
  icyradio_gpio_slice_cpu_resetn_0 gpio_slice_cpu_resetn
       (.Din(axi_gpio_2_gpio_io_o),
        .Dout(gpio_slice_cpu_resetn_Dout));
  icyradio_gpio_slice_ddr_intf_reset_0 gpio_slice_ddr_intf_reset
       (.Din(axi_gpio_2_gpio_io_o),
        .Dout(gpio_slice_ddr_intf_reset_Dout));
  icyradio_gpio_slice_ddr_reset_0 gpio_slice_ddr_reset
       (.Din(axi_gpio_2_gpio_io_o),
        .Dout(gpio_slice_ddr_reset_Dout));
  icyradio_gpio_slice_i2s_reset_0 gpio_slice_i2s_reset
       (.Din(axi_gpio_2_gpio_io_o),
        .Dout(gpio_slice_i2s_reset_Dout));
  icyradio_gpio_slice_pm_i2c_en_0 gpio_slice_pm_i2c_en
       (.Din(axi_gpio_2_gpio_io_o),
        .Dout(gpio_slice_pm_i2c_en_Dout));
  icyradio_gpio_slice_trx_up_txnrx_1 gpio_slice_rf_reset
       (.Din(axi_gpio_0_gpio_io_o),
        .Dout(gpio_slice_rf_reset_Dout));
  icyradio_gpio_slice_synth_ce_0 gpio_slice_synth_ce
       (.Din(axi_gpio_1_gpio_io_o),
        .Dout(gpio_slice_synth_ce_Dout));
  icyradio_gpio_slice_synth_mute_0 gpio_slice_synth_mute
       (.Din(axi_gpio_1_gpio_io_o),
        .Dout(gpio_slice_synth_mute_Dout));
  icyradio_gpio_slice_synth_resetn_0 gpio_slice_synth_resetn
       (.Din(axi_gpio_1_gpio_io_o),
        .Dout(gpio_slice_synth_resetn_Dout));
  icyradio_gpio_slice_synth_sync_0 gpio_slice_synth_sync
       (.Din(axi_gpio_1_gpio_io_o),
        .Dout(gpio_slice_synth_sync_Dout));
  icyradio_gpio_slice_sys_aux_reset_0 gpio_slice_sys_aux_reset
       (.Din(axi_gpio_2_gpio_io_o),
        .Dout(gpio_slice_sys_aux_reset_Dout));
  icyradio_gpio_slice_trx_ctrl_out_0 gpio_slice_trx_ctrl_out
       (.Din(axi_gpio_0_gpio_io_o),
        .Dout(xlslice_0_Dout));
  icyradio_gpio_slice_trx_en_agc_0 gpio_slice_trx_en_agc
       (.Din(axi_gpio_0_gpio_io_o),
        .Dout(gpio_slice_trx_en_agc_Dout));
  icyradio_gpio_slice_trx_resetn_0 gpio_slice_trx_resetn
       (.Din(axi_gpio_0_gpio_io_o),
        .Dout(gpio_slice_trx_resestn_Dout));
  icyradio_gpio_slice_trx_sync_in_0 gpio_slice_trx_sync_in
       (.Din(axi_gpio_0_gpio_io_o),
        .Dout(gpio_slice_trx_sync_in_Dout));
  icyradio_gpio_slice_trx_up_enable_0 gpio_slice_trx_up_enable
       (.Din(axi_gpio_0_gpio_io_o),
        .Dout(gpio_slice_trx_up_enable_Dout));
  icyradio_gpio_slice_trx_up_txnrx_0 gpio_slice_trx_up_txnrx
       (.Din(axi_gpio_0_gpio_io_o),
        .Dout(gpio_slice_trx_up_txnrx_Dout));
  icyradio_ila_0_0 ila_0
       (.clk(axi_ad9361_0_l_clk),
        .probe0(axi_rf_timestamping_ts_clk_tx_en),
        .probe1(tx_fifo_underflow_concat_concat_dout),
        .probe10(axi_dmac_rf_tx_m_axis_valid),
        .probe11(ad9361_dac_unpacker_s_axis_ready),
        .probe12(axi_dmac_rf_tx1_m_axis_valid),
        .probe13(ad9361_dac_unpacker_tx1_s_axis_ready),
        .probe14(axi_rf_timestamping_ts_clk_rx_en),
        .probe15(axi_dmac_rf_tx_m_axis_xfer_req),
        .probe16(axi_dmac_rf_tx1_m_axis_xfer_req),
        .probe2(rx_dma_xfer_req_concat_dout),
        .probe3(tx_data_ready_concat_dout),
        .probe4(rx_data_ready_concat_dout),
        .probe5(tx_fifo_underflow_concat_dout),
        .probe6(rx_fifo_overflow_concat_dout),
        .probe7(rst_axi_ad9361_61M44_peripheral_aresetn),
        .probe8(axi_rf_timestamping_0_tx_enable),
        .probe9(axi_rf_timestamping_0_rx_enable));
  icyradio_irq_concat_0_0 irq_concat_0
       (.In0(axi_dmac_rf_tx0_irq),
        .In1(axi_dmac_rf_tx1_irq),
        .In10(axi_spi_0_irq),
        .In11(axi_spi_1_irq),
        .In12(GND_11_dout),
        .In13(GND_11_dout),
        .In14(GND_11_dout),
        .In15(axi_pcie_0_interrupt_out),
        .In16(axi_rf_timestamping_0_irq),
        .In17(GND_11_dout),
        .In18(axi_i2s_irq),
        .In19(xadc_wiz_0_ip2intc_irpt),
        .In2(axi_dmac_rf_rx0_irq),
        .In20(CLK_MNGR_IRQn_1),
        .In21(VIN_REG_ALERTn_1),
        .In3(axi_dmac_rf_rx1_irq),
        .In4(axi_dmac_i2s_tx_irq),
        .In5(axi_dmac_i2s_rx_irq),
        .In6(axi_iic_0_iic2intc_irpt),
        .In7(axi_iic_1_iic2intc_irpt),
        .In8(axi_iic_2_iic2intc_irpt),
        .In9(axi_qspi_mm_0_irq),
        .dout(irq_concat_0_dout));
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
        .init_calib_complete(mig_7series_0_init_calib_complete),
        .mmcm_locked(mig_7series_0_mmcm_locked),
        .s_axi_araddr(axi_interconnect_0_M02_AXI_ARADDR),
        .s_axi_arburst(axi_interconnect_0_M02_AXI_ARBURST),
        .s_axi_arcache(axi_interconnect_0_M02_AXI_ARCACHE),
        .s_axi_arid(axi_interconnect_0_M02_AXI_ARID),
        .s_axi_arlen(axi_interconnect_0_M02_AXI_ARLEN),
        .s_axi_arlock(axi_interconnect_0_M02_AXI_ARLOCK),
        .s_axi_arprot(axi_interconnect_0_M02_AXI_ARPROT),
        .s_axi_arqos(axi_interconnect_0_M02_AXI_ARQOS),
        .s_axi_arready(axi_interconnect_0_M02_AXI_ARREADY),
        .s_axi_arsize(axi_interconnect_0_M02_AXI_ARSIZE),
        .s_axi_arvalid(axi_interconnect_0_M02_AXI_ARVALID),
        .s_axi_awaddr(axi_interconnect_0_M02_AXI_AWADDR),
        .s_axi_awburst(axi_interconnect_0_M02_AXI_AWBURST),
        .s_axi_awcache(axi_interconnect_0_M02_AXI_AWCACHE),
        .s_axi_awid(axi_interconnect_0_M02_AXI_AWID),
        .s_axi_awlen(axi_interconnect_0_M02_AXI_AWLEN),
        .s_axi_awlock(axi_interconnect_0_M02_AXI_AWLOCK),
        .s_axi_awprot(axi_interconnect_0_M02_AXI_AWPROT),
        .s_axi_awqos(axi_interconnect_0_M02_AXI_AWQOS),
        .s_axi_awready(axi_interconnect_0_M02_AXI_AWREADY),
        .s_axi_awsize(axi_interconnect_0_M02_AXI_AWSIZE),
        .s_axi_awvalid(axi_interconnect_0_M02_AXI_AWVALID),
        .s_axi_bid(axi_interconnect_0_M02_AXI_BID),
        .s_axi_bready(axi_interconnect_0_M02_AXI_BREADY),
        .s_axi_bresp(axi_interconnect_0_M02_AXI_BRESP),
        .s_axi_bvalid(axi_interconnect_0_M02_AXI_BVALID),
        .s_axi_rdata(axi_interconnect_0_M02_AXI_RDATA),
        .s_axi_rid(axi_interconnect_0_M02_AXI_RID),
        .s_axi_rlast(axi_interconnect_0_M02_AXI_RLAST),
        .s_axi_rready(axi_interconnect_0_M02_AXI_RREADY),
        .s_axi_rresp(axi_interconnect_0_M02_AXI_RRESP),
        .s_axi_rvalid(axi_interconnect_0_M02_AXI_RVALID),
        .s_axi_wdata(axi_interconnect_0_M02_AXI_WDATA),
        .s_axi_wlast(axi_interconnect_0_M02_AXI_WLAST),
        .s_axi_wready(axi_interconnect_0_M02_AXI_WREADY),
        .s_axi_wstrb(axi_interconnect_0_M02_AXI_WSTRB),
        .s_axi_wvalid(axi_interconnect_0_M02_AXI_WVALID),
        .sys_clk_i(clk_wiz_0_clk_out1),
        .sys_rst(rst_mig_7series_0_250M_peripheral_aresetn),
        .ui_clk(mig_7series_0_ui_clk),
        .ui_clk_sync_rst(mig_7series_0_ui_clk_sync_rst));
  icyradio_picorv32_0_0 picorv32_0
       (.clk(axi_pcie_0_axi_aclk_out),
        .eoi(picorv32_0_eoi),
        .irq(axi_irq_controller_0_cpu_irq_out),
        .mem_axi_araddr(S06_AXI_1_ARADDR),
        .mem_axi_arprot(S06_AXI_1_ARPROT),
        .mem_axi_arready(S06_AXI_1_ARREADY),
        .mem_axi_arvalid(S06_AXI_1_ARVALID),
        .mem_axi_awaddr(S06_AXI_1_AWADDR),
        .mem_axi_awprot(S06_AXI_1_AWPROT),
        .mem_axi_awready(S06_AXI_1_AWREADY),
        .mem_axi_awvalid(S06_AXI_1_AWVALID),
        .mem_axi_bready(S06_AXI_1_BREADY),
        .mem_axi_bvalid(S06_AXI_1_BVALID),
        .mem_axi_rdata(S06_AXI_1_RDATA),
        .mem_axi_rready(S06_AXI_1_RREADY),
        .mem_axi_rvalid(S06_AXI_1_RVALID),
        .mem_axi_wdata(S06_AXI_1_WDATA),
        .mem_axi_wready(S06_AXI_1_WREADY),
        .mem_axi_wstrb(S06_AXI_1_WSTRB),
        .mem_axi_wvalid(S06_AXI_1_WVALID),
        .resetn(gpio_slice_cpu_resetn_Dout),
        .trap(picorv32_0_trap));
  icyradio_ddr_intf_reset_combiner_1 rf_reset_combiner
       (.Op1(axi_ad9361_0_rst),
        .Op2(gpio_slice_rf_reset_Dout),
        .Res(rf_reset_combiner_Res));
  icyradio_rst_FPGA_CLK1_49M152_0 rst_FPGA_CLK1_49M152
       (.aux_reset_in(gpio_slice_i2s_reset_Dout),
        .dcm_locked(VCC_1_dout),
        .ext_reset_in(util_vector_logic_2_Res),
        .mb_debug_sys_rst(GND_25_dout),
        .peripheral_aresetn(rst_FPGA_CLK1_49M152_peripheral_aresetn),
        .slowest_sync_clk(FPGA_CLK1_1));
  icyradio_rst_axi_ad9361_61M44_0 rst_axi_ad9361_61M44
       (.aux_reset_in(rf_reset_combiner_Res),
        .dcm_locked(VCC_0_dout),
        .ext_reset_in(util_vector_logic_2_Res),
        .mb_debug_sys_rst(GND_23_dout),
        .peripheral_aresetn(rst_axi_ad9361_61M44_peripheral_aresetn),
        .peripheral_reset(rst_axi_ad9361_61M44_peripheral_reset),
        .slowest_sync_clk(axi_ad9361_0_l_clk));
  icyradio_rst_axi_pcie_0_125M_0 rst_axi_pcie_0_125M
       (.aux_reset_in(rst_pulse_gen_0_rst_out),
        .dcm_locked(axi_pcie_0_mmcm_lock),
        .ext_reset_in(util_vector_logic_2_Res),
        .interconnect_aresetn(rst_axi_pcie_0_125M_interconnect_aresetn),
        .mb_debug_sys_rst(GND_18_dout),
        .peripheral_aresetn(rst_axi_pcie_0_125M_peripheral_aresetn),
        .slowest_sync_clk(axi_pcie_0_axi_aclk_out));
  icyradio_rst_axi_pcie_0_125M_pcie_core_0 rst_axi_pcie_0_125M_pcie_core
       (.aux_reset_in(GND_17_dout),
        .dcm_locked(axi_pcie_0_mmcm_lock),
        .ext_reset_in(util_vector_logic_2_Res),
        .mb_debug_sys_rst(GND_17_dout),
        .peripheral_aresetn(rst_axi_pcie_0_125M_pcie_core_peripheral_aresetn),
        .slowest_sync_clk(axi_pcie_0_axi_aclk_out));
  icyradio_rst_clk_wiz_0_250M_0 rst_clk_wiz_0_250M
       (.aux_reset_in(gpio_slice_ddr_reset_Dout),
        .dcm_locked(clk_wiz_0_locked),
        .ext_reset_in(util_vector_logic_2_Res),
        .mb_debug_sys_rst(GND_20_dout),
        .peripheral_aresetn(rst_mig_7series_0_250M_peripheral_aresetn),
        .slowest_sync_clk(clk_wiz_0_clk_out1));
  icyradio_rst_mig_7series_0_166M_0 rst_mig_7series_0_166M
       (.aux_reset_in(logic_or_2_Res),
        .dcm_locked(mig_7series_0_mmcm_locked),
        .ext_reset_in(util_vector_logic_2_Res),
        .interconnect_aresetn(M02_ARESETN_1),
        .mb_debug_sys_rst(GND_19_dout),
        .peripheral_aresetn(rst_mig_7series_0_166M_peripheral_aresetn),
        .slowest_sync_clk(mig_7series_0_ui_clk));
  icyradio_rst_pulse_gen_0_0 rst_pulse_gen_0
       (.clk(axi_pcie_0_axi_aclk_out),
        .rst_out(rst_pulse_gen_0_rst_out),
        .trigger(gpio_slice_sys_aux_reset_Dout));
  icyradio_rx_data_ready_concat_0 rx_data_ready_concat
       (.In0(axi_ad9361_0_adc_valid_i0),
        .In1(axi_ad9361_0_adc_valid_i1),
        .dout(rx_data_ready_concat_dout));
  icyradio_rx_dma_xfer_req_concat_0 rx_dma_xfer_req_concat
       (.In0(axi_dmac_rf_rx_fifo_wr_xfer_req),
        .In1(axi_dmac_rf_rx1_fifo_wr_xfer_req),
        .dout(rx_dma_xfer_req_concat_dout));
  icyradio_rx_dma_xfer_req_not_rx0_0 rx_dma_xfer_req_not_rx0
       (.Op1(axi_dmac_rf_rx_fifo_wr_xfer_req),
        .Res(logic_not_1_Res));
  icyradio_rx_dma_xfer_req_not_rx1_0 rx_dma_xfer_req_not_rx1
       (.Op1(axi_dmac_rf_rx1_fifo_wr_xfer_req),
        .Res(logic_not_2_Res));
  icyradio_rx_enable_gate_rx0_0 rx_enable_gate_rx0
       (.Op1(rx_enable_slice_rx0_Dout),
        .Op2(axi_ad9361_0_adc_valid_i0),
        .Res(logic_and_0_Res));
  icyradio_rx_enable_gate_rx1_0 rx_enable_gate_rx1
       (.Op1(rx_enable_slice_rx1_Dout),
        .Op2(axi_ad9361_0_adc_valid_i1),
        .Res(logic_and_1_Res));
  icyradio_rx_enable_slice_rx0_0 rx_enable_slice_rx0
       (.Din(axi_rf_timestamping_0_rx_enable),
        .Dout(rx_enable_slice_rx0_Dout));
  icyradio_rx_enable_slice_rx1_0 rx_enable_slice_rx1
       (.Din(axi_rf_timestamping_0_rx_enable),
        .Dout(rx_enable_slice_rx1_Dout));
  icyradio_rx_fifo_overflow_concat_0 rx_fifo_overflow_concat
       (.In0(ad9361_adc_packer_rx0_fifo_wr_overflow),
        .In1(ad9361_adc_packer_rx1_fifo_wr_overflow),
        .dout(rx_fifo_overflow_concat_dout));
  icyradio_startupe2_0_0 startupe2
       (.pack(GND_21_dout1),
        .usrcclk(GND_21_dout1),
        .usrcclk_oen(VCC_2_dout),
        .usrdone(GND_21_dout1),
        .usrdone_oen(axi_pcie_0_user_link_up));
  icyradio_tx_data_ready_concat_0 tx_data_ready_concat
       (.In0(axi_ad9361_0_dac_valid_i0),
        .In1(axi_ad9361_dac_valid_i1),
        .dout(tx_data_ready_concat_dout));
  icyradio_tx_dma_data_ready_concat_0 tx_dma_data_ready_concat
       (.In0(axi_dmac_rf_tx_m_axis_valid),
        .In1(axi_dmac_rf_tx1_m_axis_valid),
        .dout(tx_fifo_underflow_concat_concat_dout));
  icyradio_tx_dma_xfer_req_not_tx0_0 tx_dma_xfer_req_not_tx0
       (.Op1(axi_dmac_rf_tx_m_axis_xfer_req),
        .Res(logic_not_0_Res));
  icyradio_tx_dma_xfer_req_not_tx1_0 tx_dma_xfer_req_not_tx1
       (.Op1(axi_dmac_rf_tx1_m_axis_xfer_req),
        .Res(logic_not_3_Res));
  icyradio_tx_enable_gate_tx0_0 tx_enable_gate_tx0
       (.Op1(tx_enable_slice_tx0_Dout),
        .Op2(axi_dmac_rf_tx_m_axis_valid),
        .Res(logic_and_2_Res));
  icyradio_tx_enable_gate_tx1_0 tx_enable_gate_tx1
       (.Op1(tx_enable_slice_tx1_Dout),
        .Op2(axi_dmac_rf_tx1_m_axis_valid),
        .Res(logic_and_5_Res));
  icyradio_tx_enable_slice_tx0_0 tx_enable_slice_tx0
       (.Din(axi_rf_timestamping_0_tx_enable),
        .Dout(tx_enable_slice_tx0_Dout));
  icyradio_tx_enable_slice_tx1_0 tx_enable_slice_tx1
       (.Din(axi_rf_timestamping_0_tx_enable),
        .Dout(tx_enable_slice_tx1_Dout));
  icyradio_tx_fifo_underflow_concat_0 tx_fifo_underflow_concat
       (.In0(ad9361_dac_unpacker_tx0_fifo_rd_underflow),
        .In1(ad9361_dac_unpacker_tx1_fifo_rd_underflow),
        .dout(tx_fifo_underflow_concat_dout));
  icyradio_util_ds_buf_0_0 util_ds_buf_0
       (.IBUF_DS_N(PCIe_REFCLK_1_CLK_N),
        .IBUF_DS_P(PCIe_REFCLK_1_CLK_P),
        .IBUF_OUT(util_ds_buf_0_IBUF_OUT));
  icyradio_xadc_wiz_0_0 xadc_wiz_0
       (.ip2intc_irpt(xadc_wiz_0_ip2intc_irpt),
        .s_axi_aclk(axi_pcie_0_axi_aclk_out),
        .s_axi_araddr(axi_peripheral_interconnect_M20_AXI_ARADDR[10:0]),
        .s_axi_aresetn(rst_axi_pcie_0_125M_peripheral_aresetn),
        .s_axi_arready(axi_peripheral_interconnect_M20_AXI_ARREADY),
        .s_axi_arvalid(axi_peripheral_interconnect_M20_AXI_ARVALID),
        .s_axi_awaddr(axi_peripheral_interconnect_M20_AXI_AWADDR[10:0]),
        .s_axi_awready(axi_peripheral_interconnect_M20_AXI_AWREADY),
        .s_axi_awvalid(axi_peripheral_interconnect_M20_AXI_AWVALID),
        .s_axi_bready(axi_peripheral_interconnect_M20_AXI_BREADY),
        .s_axi_bresp(axi_peripheral_interconnect_M20_AXI_BRESP),
        .s_axi_bvalid(axi_peripheral_interconnect_M20_AXI_BVALID),
        .s_axi_rdata(axi_peripheral_interconnect_M20_AXI_RDATA),
        .s_axi_rready(axi_peripheral_interconnect_M20_AXI_RREADY),
        .s_axi_rresp(axi_peripheral_interconnect_M20_AXI_RRESP),
        .s_axi_rvalid(axi_peripheral_interconnect_M20_AXI_RVALID),
        .s_axi_wdata(axi_peripheral_interconnect_M20_AXI_WDATA),
        .s_axi_wready(axi_peripheral_interconnect_M20_AXI_WREADY),
        .s_axi_wstrb(axi_peripheral_interconnect_M20_AXI_WSTRB),
        .s_axi_wvalid(axi_peripheral_interconnect_M20_AXI_WVALID),
        .temp_out(xadc_wiz_0_temp_out),
        .vn_in(Vp_Vn_0_1_V_N),
        .vp_in(Vp_Vn_0_1_V_P));
endmodule

module icyradio_axi_cpu_dma_interconnect_0
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
    S01_AXI_araddr,
    S01_AXI_arburst,
    S01_AXI_arcache,
    S01_AXI_arlen,
    S01_AXI_arprot,
    S01_AXI_arready,
    S01_AXI_arsize,
    S01_AXI_arvalid,
    S01_AXI_rdata,
    S01_AXI_rlast,
    S01_AXI_rready,
    S01_AXI_rresp,
    S01_AXI_rvalid,
    S02_ACLK,
    S02_ARESETN,
    S02_AXI_awaddr,
    S02_AXI_awburst,
    S02_AXI_awcache,
    S02_AXI_awlen,
    S02_AXI_awprot,
    S02_AXI_awready,
    S02_AXI_awsize,
    S02_AXI_awvalid,
    S02_AXI_bready,
    S02_AXI_bresp,
    S02_AXI_bvalid,
    S02_AXI_wdata,
    S02_AXI_wlast,
    S02_AXI_wready,
    S02_AXI_wstrb,
    S02_AXI_wvalid,
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
    S04_AXI_arburst,
    S04_AXI_arcache,
    S04_AXI_arlen,
    S04_AXI_arprot,
    S04_AXI_arready,
    S04_AXI_arsize,
    S04_AXI_arvalid,
    S04_AXI_rdata,
    S04_AXI_rlast,
    S04_AXI_rready,
    S04_AXI_rresp,
    S04_AXI_rvalid,
    S05_ACLK,
    S05_ARESETN,
    S05_AXI_awaddr,
    S05_AXI_awburst,
    S05_AXI_awcache,
    S05_AXI_awlen,
    S05_AXI_awprot,
    S05_AXI_awready,
    S05_AXI_awsize,
    S05_AXI_awvalid,
    S05_AXI_bready,
    S05_AXI_bresp,
    S05_AXI_bvalid,
    S05_AXI_wdata,
    S05_AXI_wlast,
    S05_AXI_wready,
    S05_AXI_wstrb,
    S05_AXI_wvalid,
    S06_ACLK,
    S06_ARESETN,
    S06_AXI_araddr,
    S06_AXI_arprot,
    S06_AXI_arready,
    S06_AXI_arvalid,
    S06_AXI_awaddr,
    S06_AXI_awprot,
    S06_AXI_awready,
    S06_AXI_awvalid,
    S06_AXI_bready,
    S06_AXI_bvalid,
    S06_AXI_rdata,
    S06_AXI_rready,
    S06_AXI_rvalid,
    S06_AXI_wdata,
    S06_AXI_wready,
    S06_AXI_wstrb,
    S06_AXI_wvalid);
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
  input [0:0]M01_AXI_arready;
  output [3:0]M01_AXI_arregion;
  output [2:0]M01_AXI_arsize;
  output [0:0]M01_AXI_arvalid;
  output [31:0]M01_AXI_awaddr;
  output [1:0]M01_AXI_awburst;
  output [2:0]M01_AXI_awid;
  output [7:0]M01_AXI_awlen;
  input [0:0]M01_AXI_awready;
  output [3:0]M01_AXI_awregion;
  output [2:0]M01_AXI_awsize;
  output [0:0]M01_AXI_awvalid;
  input [2:0]M01_AXI_bid;
  output [0:0]M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input [0:0]M01_AXI_bvalid;
  input [63:0]M01_AXI_rdata;
  input [2:0]M01_AXI_rid;
  input [0:0]M01_AXI_rlast;
  output [0:0]M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input [0:0]M01_AXI_rvalid;
  output [63:0]M01_AXI_wdata;
  output [0:0]M01_AXI_wlast;
  input [0:0]M01_AXI_wready;
  output [7:0]M01_AXI_wstrb;
  output [0:0]M01_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
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
  input [31:0]S01_AXI_araddr;
  input [1:0]S01_AXI_arburst;
  input [3:0]S01_AXI_arcache;
  input [7:0]S01_AXI_arlen;
  input [2:0]S01_AXI_arprot;
  output S01_AXI_arready;
  input [2:0]S01_AXI_arsize;
  input S01_AXI_arvalid;
  output [63:0]S01_AXI_rdata;
  output S01_AXI_rlast;
  input S01_AXI_rready;
  output [1:0]S01_AXI_rresp;
  output S01_AXI_rvalid;
  input S02_ACLK;
  input S02_ARESETN;
  input [31:0]S02_AXI_awaddr;
  input [1:0]S02_AXI_awburst;
  input [3:0]S02_AXI_awcache;
  input [7:0]S02_AXI_awlen;
  input [2:0]S02_AXI_awprot;
  output S02_AXI_awready;
  input [2:0]S02_AXI_awsize;
  input S02_AXI_awvalid;
  input S02_AXI_bready;
  output [1:0]S02_AXI_bresp;
  output S02_AXI_bvalid;
  input [63:0]S02_AXI_wdata;
  input S02_AXI_wlast;
  output S02_AXI_wready;
  input [7:0]S02_AXI_wstrb;
  input S02_AXI_wvalid;
  input S03_ACLK;
  input S03_ARESETN;
  input [31:0]S03_AXI_awaddr;
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
  input [1:0]S04_AXI_arburst;
  input [3:0]S04_AXI_arcache;
  input [7:0]S04_AXI_arlen;
  input [2:0]S04_AXI_arprot;
  output S04_AXI_arready;
  input [2:0]S04_AXI_arsize;
  input S04_AXI_arvalid;
  output [63:0]S04_AXI_rdata;
  output S04_AXI_rlast;
  input S04_AXI_rready;
  output [1:0]S04_AXI_rresp;
  output S04_AXI_rvalid;
  input S05_ACLK;
  input S05_ARESETN;
  input [31:0]S05_AXI_awaddr;
  input [1:0]S05_AXI_awburst;
  input [3:0]S05_AXI_awcache;
  input [7:0]S05_AXI_awlen;
  input [2:0]S05_AXI_awprot;
  output S05_AXI_awready;
  input [2:0]S05_AXI_awsize;
  input S05_AXI_awvalid;
  input S05_AXI_bready;
  output [1:0]S05_AXI_bresp;
  output S05_AXI_bvalid;
  input [63:0]S05_AXI_wdata;
  input S05_AXI_wlast;
  output S05_AXI_wready;
  input [7:0]S05_AXI_wstrb;
  input S05_AXI_wvalid;
  input S06_ACLK;
  input S06_ARESETN;
  input [31:0]S06_AXI_araddr;
  input [2:0]S06_AXI_arprot;
  output S06_AXI_arready;
  input S06_AXI_arvalid;
  input [31:0]S06_AXI_awaddr;
  input [2:0]S06_AXI_awprot;
  output S06_AXI_awready;
  input S06_AXI_awvalid;
  input S06_AXI_bready;
  output S06_AXI_bvalid;
  output [31:0]S06_AXI_rdata;
  input S06_AXI_rready;
  output S06_AXI_rvalid;
  input [31:0]S06_AXI_wdata;
  output S06_AXI_wready;
  input [3:0]S06_AXI_wstrb;
  input S06_AXI_wvalid;

  wire axi_cpu_dma_interconnect_ACLK_net;
  wire axi_cpu_dma_interconnect_ARESETN_net;
  wire [31:0]axi_cpu_dma_interconnect_to_s00_couplers_ARADDR;
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
  wire [31:0]axi_cpu_dma_interconnect_to_s01_couplers_ARADDR;
  wire [1:0]axi_cpu_dma_interconnect_to_s01_couplers_ARBURST;
  wire [3:0]axi_cpu_dma_interconnect_to_s01_couplers_ARCACHE;
  wire [7:0]axi_cpu_dma_interconnect_to_s01_couplers_ARLEN;
  wire [2:0]axi_cpu_dma_interconnect_to_s01_couplers_ARPROT;
  wire axi_cpu_dma_interconnect_to_s01_couplers_ARREADY;
  wire [2:0]axi_cpu_dma_interconnect_to_s01_couplers_ARSIZE;
  wire axi_cpu_dma_interconnect_to_s01_couplers_ARVALID;
  wire [63:0]axi_cpu_dma_interconnect_to_s01_couplers_RDATA;
  wire axi_cpu_dma_interconnect_to_s01_couplers_RLAST;
  wire axi_cpu_dma_interconnect_to_s01_couplers_RREADY;
  wire [1:0]axi_cpu_dma_interconnect_to_s01_couplers_RRESP;
  wire axi_cpu_dma_interconnect_to_s01_couplers_RVALID;
  wire [31:0]axi_cpu_dma_interconnect_to_s02_couplers_AWADDR;
  wire [1:0]axi_cpu_dma_interconnect_to_s02_couplers_AWBURST;
  wire [3:0]axi_cpu_dma_interconnect_to_s02_couplers_AWCACHE;
  wire [7:0]axi_cpu_dma_interconnect_to_s02_couplers_AWLEN;
  wire [2:0]axi_cpu_dma_interconnect_to_s02_couplers_AWPROT;
  wire axi_cpu_dma_interconnect_to_s02_couplers_AWREADY;
  wire [2:0]axi_cpu_dma_interconnect_to_s02_couplers_AWSIZE;
  wire axi_cpu_dma_interconnect_to_s02_couplers_AWVALID;
  wire axi_cpu_dma_interconnect_to_s02_couplers_BREADY;
  wire [1:0]axi_cpu_dma_interconnect_to_s02_couplers_BRESP;
  wire axi_cpu_dma_interconnect_to_s02_couplers_BVALID;
  wire [63:0]axi_cpu_dma_interconnect_to_s02_couplers_WDATA;
  wire axi_cpu_dma_interconnect_to_s02_couplers_WLAST;
  wire axi_cpu_dma_interconnect_to_s02_couplers_WREADY;
  wire [7:0]axi_cpu_dma_interconnect_to_s02_couplers_WSTRB;
  wire axi_cpu_dma_interconnect_to_s02_couplers_WVALID;
  wire [31:0]axi_cpu_dma_interconnect_to_s03_couplers_AWADDR;
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
  wire [1:0]axi_cpu_dma_interconnect_to_s04_couplers_ARBURST;
  wire [3:0]axi_cpu_dma_interconnect_to_s04_couplers_ARCACHE;
  wire [7:0]axi_cpu_dma_interconnect_to_s04_couplers_ARLEN;
  wire [2:0]axi_cpu_dma_interconnect_to_s04_couplers_ARPROT;
  wire axi_cpu_dma_interconnect_to_s04_couplers_ARREADY;
  wire [2:0]axi_cpu_dma_interconnect_to_s04_couplers_ARSIZE;
  wire axi_cpu_dma_interconnect_to_s04_couplers_ARVALID;
  wire [63:0]axi_cpu_dma_interconnect_to_s04_couplers_RDATA;
  wire axi_cpu_dma_interconnect_to_s04_couplers_RLAST;
  wire axi_cpu_dma_interconnect_to_s04_couplers_RREADY;
  wire [1:0]axi_cpu_dma_interconnect_to_s04_couplers_RRESP;
  wire axi_cpu_dma_interconnect_to_s04_couplers_RVALID;
  wire [31:0]axi_cpu_dma_interconnect_to_s05_couplers_AWADDR;
  wire [1:0]axi_cpu_dma_interconnect_to_s05_couplers_AWBURST;
  wire [3:0]axi_cpu_dma_interconnect_to_s05_couplers_AWCACHE;
  wire [7:0]axi_cpu_dma_interconnect_to_s05_couplers_AWLEN;
  wire [2:0]axi_cpu_dma_interconnect_to_s05_couplers_AWPROT;
  wire axi_cpu_dma_interconnect_to_s05_couplers_AWREADY;
  wire [2:0]axi_cpu_dma_interconnect_to_s05_couplers_AWSIZE;
  wire axi_cpu_dma_interconnect_to_s05_couplers_AWVALID;
  wire axi_cpu_dma_interconnect_to_s05_couplers_BREADY;
  wire [1:0]axi_cpu_dma_interconnect_to_s05_couplers_BRESP;
  wire axi_cpu_dma_interconnect_to_s05_couplers_BVALID;
  wire [63:0]axi_cpu_dma_interconnect_to_s05_couplers_WDATA;
  wire axi_cpu_dma_interconnect_to_s05_couplers_WLAST;
  wire axi_cpu_dma_interconnect_to_s05_couplers_WREADY;
  wire [7:0]axi_cpu_dma_interconnect_to_s05_couplers_WSTRB;
  wire axi_cpu_dma_interconnect_to_s05_couplers_WVALID;
  wire [31:0]axi_cpu_dma_interconnect_to_s06_couplers_ARADDR;
  wire [2:0]axi_cpu_dma_interconnect_to_s06_couplers_ARPROT;
  wire axi_cpu_dma_interconnect_to_s06_couplers_ARREADY;
  wire axi_cpu_dma_interconnect_to_s06_couplers_ARVALID;
  wire [31:0]axi_cpu_dma_interconnect_to_s06_couplers_AWADDR;
  wire [2:0]axi_cpu_dma_interconnect_to_s06_couplers_AWPROT;
  wire axi_cpu_dma_interconnect_to_s06_couplers_AWREADY;
  wire axi_cpu_dma_interconnect_to_s06_couplers_AWVALID;
  wire axi_cpu_dma_interconnect_to_s06_couplers_BREADY;
  wire axi_cpu_dma_interconnect_to_s06_couplers_BVALID;
  wire [31:0]axi_cpu_dma_interconnect_to_s06_couplers_RDATA;
  wire axi_cpu_dma_interconnect_to_s06_couplers_RREADY;
  wire axi_cpu_dma_interconnect_to_s06_couplers_RVALID;
  wire [31:0]axi_cpu_dma_interconnect_to_s06_couplers_WDATA;
  wire axi_cpu_dma_interconnect_to_s06_couplers_WREADY;
  wire [3:0]axi_cpu_dma_interconnect_to_s06_couplers_WSTRB;
  wire axi_cpu_dma_interconnect_to_s06_couplers_WVALID;
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
  wire [0:0]m01_couplers_to_axi_cpu_dma_interconnect_ARREADY;
  wire [3:0]m01_couplers_to_axi_cpu_dma_interconnect_ARREGION;
  wire [2:0]m01_couplers_to_axi_cpu_dma_interconnect_ARSIZE;
  wire [0:0]m01_couplers_to_axi_cpu_dma_interconnect_ARVALID;
  wire [31:0]m01_couplers_to_axi_cpu_dma_interconnect_AWADDR;
  wire [1:0]m01_couplers_to_axi_cpu_dma_interconnect_AWBURST;
  wire [2:0]m01_couplers_to_axi_cpu_dma_interconnect_AWID;
  wire [7:0]m01_couplers_to_axi_cpu_dma_interconnect_AWLEN;
  wire [0:0]m01_couplers_to_axi_cpu_dma_interconnect_AWREADY;
  wire [3:0]m01_couplers_to_axi_cpu_dma_interconnect_AWREGION;
  wire [2:0]m01_couplers_to_axi_cpu_dma_interconnect_AWSIZE;
  wire [0:0]m01_couplers_to_axi_cpu_dma_interconnect_AWVALID;
  wire [2:0]m01_couplers_to_axi_cpu_dma_interconnect_BID;
  wire [0:0]m01_couplers_to_axi_cpu_dma_interconnect_BREADY;
  wire [1:0]m01_couplers_to_axi_cpu_dma_interconnect_BRESP;
  wire [0:0]m01_couplers_to_axi_cpu_dma_interconnect_BVALID;
  wire [63:0]m01_couplers_to_axi_cpu_dma_interconnect_RDATA;
  wire [2:0]m01_couplers_to_axi_cpu_dma_interconnect_RID;
  wire [0:0]m01_couplers_to_axi_cpu_dma_interconnect_RLAST;
  wire [0:0]m01_couplers_to_axi_cpu_dma_interconnect_RREADY;
  wire [1:0]m01_couplers_to_axi_cpu_dma_interconnect_RRESP;
  wire [0:0]m01_couplers_to_axi_cpu_dma_interconnect_RVALID;
  wire [63:0]m01_couplers_to_axi_cpu_dma_interconnect_WDATA;
  wire [0:0]m01_couplers_to_axi_cpu_dma_interconnect_WLAST;
  wire [0:0]m01_couplers_to_axi_cpu_dma_interconnect_WREADY;
  wire [7:0]m01_couplers_to_axi_cpu_dma_interconnect_WSTRB;
  wire [0:0]m01_couplers_to_axi_cpu_dma_interconnect_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
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
  wire [127:64]s01_couplers_to_xbar_RDATA;
  wire [1:1]s01_couplers_to_xbar_RLAST;
  wire s01_couplers_to_xbar_RREADY;
  wire [3:2]s01_couplers_to_xbar_RRESP;
  wire [1:1]s01_couplers_to_xbar_RVALID;
  wire [31:0]s02_couplers_to_xbar_AWADDR;
  wire [1:0]s02_couplers_to_xbar_AWBURST;
  wire [3:0]s02_couplers_to_xbar_AWCACHE;
  wire [7:0]s02_couplers_to_xbar_AWLEN;
  wire [0:0]s02_couplers_to_xbar_AWLOCK;
  wire [2:0]s02_couplers_to_xbar_AWPROT;
  wire [3:0]s02_couplers_to_xbar_AWQOS;
  wire [2:2]s02_couplers_to_xbar_AWREADY;
  wire [2:0]s02_couplers_to_xbar_AWSIZE;
  wire s02_couplers_to_xbar_AWVALID;
  wire s02_couplers_to_xbar_BREADY;
  wire [5:4]s02_couplers_to_xbar_BRESP;
  wire [2:2]s02_couplers_to_xbar_BVALID;
  wire [63:0]s02_couplers_to_xbar_WDATA;
  wire s02_couplers_to_xbar_WLAST;
  wire [2:2]s02_couplers_to_xbar_WREADY;
  wire [7:0]s02_couplers_to_xbar_WSTRB;
  wire s02_couplers_to_xbar_WVALID;
  wire [31:0]s03_couplers_to_xbar_AWADDR;
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
  wire [319:256]s04_couplers_to_xbar_RDATA;
  wire [4:4]s04_couplers_to_xbar_RLAST;
  wire s04_couplers_to_xbar_RREADY;
  wire [9:8]s04_couplers_to_xbar_RRESP;
  wire [4:4]s04_couplers_to_xbar_RVALID;
  wire [31:0]s05_couplers_to_xbar_AWADDR;
  wire [1:0]s05_couplers_to_xbar_AWBURST;
  wire [3:0]s05_couplers_to_xbar_AWCACHE;
  wire [7:0]s05_couplers_to_xbar_AWLEN;
  wire [0:0]s05_couplers_to_xbar_AWLOCK;
  wire [2:0]s05_couplers_to_xbar_AWPROT;
  wire [3:0]s05_couplers_to_xbar_AWQOS;
  wire [5:5]s05_couplers_to_xbar_AWREADY;
  wire [2:0]s05_couplers_to_xbar_AWSIZE;
  wire s05_couplers_to_xbar_AWVALID;
  wire s05_couplers_to_xbar_BREADY;
  wire [11:10]s05_couplers_to_xbar_BRESP;
  wire [5:5]s05_couplers_to_xbar_BVALID;
  wire [63:0]s05_couplers_to_xbar_WDATA;
  wire s05_couplers_to_xbar_WLAST;
  wire [5:5]s05_couplers_to_xbar_WREADY;
  wire [7:0]s05_couplers_to_xbar_WSTRB;
  wire s05_couplers_to_xbar_WVALID;
  wire [31:0]s06_couplers_to_xbar_ARADDR;
  wire [1:0]s06_couplers_to_xbar_ARBURST;
  wire [3:0]s06_couplers_to_xbar_ARCACHE;
  wire [7:0]s06_couplers_to_xbar_ARLEN;
  wire [0:0]s06_couplers_to_xbar_ARLOCK;
  wire [2:0]s06_couplers_to_xbar_ARPROT;
  wire [3:0]s06_couplers_to_xbar_ARQOS;
  wire [6:6]s06_couplers_to_xbar_ARREADY;
  wire [2:0]s06_couplers_to_xbar_ARSIZE;
  wire s06_couplers_to_xbar_ARVALID;
  wire [31:0]s06_couplers_to_xbar_AWADDR;
  wire [1:0]s06_couplers_to_xbar_AWBURST;
  wire [3:0]s06_couplers_to_xbar_AWCACHE;
  wire [7:0]s06_couplers_to_xbar_AWLEN;
  wire [0:0]s06_couplers_to_xbar_AWLOCK;
  wire [2:0]s06_couplers_to_xbar_AWPROT;
  wire [3:0]s06_couplers_to_xbar_AWQOS;
  wire [6:6]s06_couplers_to_xbar_AWREADY;
  wire [2:0]s06_couplers_to_xbar_AWSIZE;
  wire s06_couplers_to_xbar_AWVALID;
  wire s06_couplers_to_xbar_BREADY;
  wire [13:12]s06_couplers_to_xbar_BRESP;
  wire [6:6]s06_couplers_to_xbar_BVALID;
  wire [447:384]s06_couplers_to_xbar_RDATA;
  wire [6:6]s06_couplers_to_xbar_RLAST;
  wire s06_couplers_to_xbar_RREADY;
  wire [13:12]s06_couplers_to_xbar_RRESP;
  wire [6:6]s06_couplers_to_xbar_RVALID;
  wire [63:0]s06_couplers_to_xbar_WDATA;
  wire s06_couplers_to_xbar_WLAST;
  wire [6:6]s06_couplers_to_xbar_WREADY;
  wire [7:0]s06_couplers_to_xbar_WSTRB;
  wire s06_couplers_to_xbar_WVALID;
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
  wire [0:0]xbar_to_m01_couplers_ARREADY;
  wire [7:4]xbar_to_m01_couplers_ARREGION;
  wire [5:3]xbar_to_m01_couplers_ARSIZE;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
  wire [3:2]xbar_to_m01_couplers_AWBURST;
  wire [5:3]xbar_to_m01_couplers_AWID;
  wire [15:8]xbar_to_m01_couplers_AWLEN;
  wire [0:0]xbar_to_m01_couplers_AWREADY;
  wire [7:4]xbar_to_m01_couplers_AWREGION;
  wire [5:3]xbar_to_m01_couplers_AWSIZE;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [2:0]xbar_to_m01_couplers_BID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire [0:0]xbar_to_m01_couplers_BVALID;
  wire [63:0]xbar_to_m01_couplers_RDATA;
  wire [2:0]xbar_to_m01_couplers_RID;
  wire [0:0]xbar_to_m01_couplers_RLAST;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire [0:0]xbar_to_m01_couplers_RVALID;
  wire [127:64]xbar_to_m01_couplers_WDATA;
  wire [1:1]xbar_to_m01_couplers_WLAST;
  wire [0:0]xbar_to_m01_couplers_WREADY;
  wire [15:8]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [6:0]NLW_xbar_s_axi_arready_UNCONNECTED;
  wire [6:0]NLW_xbar_s_axi_awready_UNCONNECTED;
  wire [13:0]NLW_xbar_s_axi_bresp_UNCONNECTED;
  wire [6:0]NLW_xbar_s_axi_bvalid_UNCONNECTED;
  wire [447:0]NLW_xbar_s_axi_rdata_UNCONNECTED;
  wire [6:0]NLW_xbar_s_axi_rlast_UNCONNECTED;
  wire [13:0]NLW_xbar_s_axi_rresp_UNCONNECTED;
  wire [6:0]NLW_xbar_s_axi_rvalid_UNCONNECTED;
  wire [6:0]NLW_xbar_s_axi_wready_UNCONNECTED;

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
  assign M01_AXI_arvalid[0] = m01_couplers_to_axi_cpu_dma_interconnect_ARVALID;
  assign M01_AXI_awaddr[31:0] = m01_couplers_to_axi_cpu_dma_interconnect_AWADDR;
  assign M01_AXI_awburst[1:0] = m01_couplers_to_axi_cpu_dma_interconnect_AWBURST;
  assign M01_AXI_awid[2:0] = m01_couplers_to_axi_cpu_dma_interconnect_AWID;
  assign M01_AXI_awlen[7:0] = m01_couplers_to_axi_cpu_dma_interconnect_AWLEN;
  assign M01_AXI_awregion[3:0] = m01_couplers_to_axi_cpu_dma_interconnect_AWREGION;
  assign M01_AXI_awsize[2:0] = m01_couplers_to_axi_cpu_dma_interconnect_AWSIZE;
  assign M01_AXI_awvalid[0] = m01_couplers_to_axi_cpu_dma_interconnect_AWVALID;
  assign M01_AXI_bready[0] = m01_couplers_to_axi_cpu_dma_interconnect_BREADY;
  assign M01_AXI_rready[0] = m01_couplers_to_axi_cpu_dma_interconnect_RREADY;
  assign M01_AXI_wdata[63:0] = m01_couplers_to_axi_cpu_dma_interconnect_WDATA;
  assign M01_AXI_wlast[0] = m01_couplers_to_axi_cpu_dma_interconnect_WLAST;
  assign M01_AXI_wstrb[7:0] = m01_couplers_to_axi_cpu_dma_interconnect_WSTRB;
  assign M01_AXI_wvalid[0] = m01_couplers_to_axi_cpu_dma_interconnect_WVALID;
  assign S00_AXI_arready = axi_cpu_dma_interconnect_to_s00_couplers_ARREADY;
  assign S00_AXI_rdata[63:0] = axi_cpu_dma_interconnect_to_s00_couplers_RDATA;
  assign S00_AXI_rlast = axi_cpu_dma_interconnect_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_cpu_dma_interconnect_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_cpu_dma_interconnect_to_s00_couplers_RVALID;
  assign S01_AXI_arready = axi_cpu_dma_interconnect_to_s01_couplers_ARREADY;
  assign S01_AXI_rdata[63:0] = axi_cpu_dma_interconnect_to_s01_couplers_RDATA;
  assign S01_AXI_rlast = axi_cpu_dma_interconnect_to_s01_couplers_RLAST;
  assign S01_AXI_rresp[1:0] = axi_cpu_dma_interconnect_to_s01_couplers_RRESP;
  assign S01_AXI_rvalid = axi_cpu_dma_interconnect_to_s01_couplers_RVALID;
  assign S02_AXI_awready = axi_cpu_dma_interconnect_to_s02_couplers_AWREADY;
  assign S02_AXI_bresp[1:0] = axi_cpu_dma_interconnect_to_s02_couplers_BRESP;
  assign S02_AXI_bvalid = axi_cpu_dma_interconnect_to_s02_couplers_BVALID;
  assign S02_AXI_wready = axi_cpu_dma_interconnect_to_s02_couplers_WREADY;
  assign S03_AXI_awready = axi_cpu_dma_interconnect_to_s03_couplers_AWREADY;
  assign S03_AXI_bresp[1:0] = axi_cpu_dma_interconnect_to_s03_couplers_BRESP;
  assign S03_AXI_bvalid = axi_cpu_dma_interconnect_to_s03_couplers_BVALID;
  assign S03_AXI_wready = axi_cpu_dma_interconnect_to_s03_couplers_WREADY;
  assign S04_AXI_arready = axi_cpu_dma_interconnect_to_s04_couplers_ARREADY;
  assign S04_AXI_rdata[63:0] = axi_cpu_dma_interconnect_to_s04_couplers_RDATA;
  assign S04_AXI_rlast = axi_cpu_dma_interconnect_to_s04_couplers_RLAST;
  assign S04_AXI_rresp[1:0] = axi_cpu_dma_interconnect_to_s04_couplers_RRESP;
  assign S04_AXI_rvalid = axi_cpu_dma_interconnect_to_s04_couplers_RVALID;
  assign S05_AXI_awready = axi_cpu_dma_interconnect_to_s05_couplers_AWREADY;
  assign S05_AXI_bresp[1:0] = axi_cpu_dma_interconnect_to_s05_couplers_BRESP;
  assign S05_AXI_bvalid = axi_cpu_dma_interconnect_to_s05_couplers_BVALID;
  assign S05_AXI_wready = axi_cpu_dma_interconnect_to_s05_couplers_WREADY;
  assign S06_AXI_arready = axi_cpu_dma_interconnect_to_s06_couplers_ARREADY;
  assign S06_AXI_awready = axi_cpu_dma_interconnect_to_s06_couplers_AWREADY;
  assign S06_AXI_bvalid = axi_cpu_dma_interconnect_to_s06_couplers_BVALID;
  assign S06_AXI_rdata[31:0] = axi_cpu_dma_interconnect_to_s06_couplers_RDATA;
  assign S06_AXI_rvalid = axi_cpu_dma_interconnect_to_s06_couplers_RVALID;
  assign S06_AXI_wready = axi_cpu_dma_interconnect_to_s06_couplers_WREADY;
  assign axi_cpu_dma_interconnect_ACLK_net = ACLK;
  assign axi_cpu_dma_interconnect_ARESETN_net = ARESETN;
  assign axi_cpu_dma_interconnect_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign axi_cpu_dma_interconnect_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_cpu_dma_interconnect_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_cpu_dma_interconnect_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign axi_cpu_dma_interconnect_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_cpu_dma_interconnect_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_cpu_dma_interconnect_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_cpu_dma_interconnect_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_cpu_dma_interconnect_to_s01_couplers_ARADDR = S01_AXI_araddr[31:0];
  assign axi_cpu_dma_interconnect_to_s01_couplers_ARBURST = S01_AXI_arburst[1:0];
  assign axi_cpu_dma_interconnect_to_s01_couplers_ARCACHE = S01_AXI_arcache[3:0];
  assign axi_cpu_dma_interconnect_to_s01_couplers_ARLEN = S01_AXI_arlen[7:0];
  assign axi_cpu_dma_interconnect_to_s01_couplers_ARPROT = S01_AXI_arprot[2:0];
  assign axi_cpu_dma_interconnect_to_s01_couplers_ARSIZE = S01_AXI_arsize[2:0];
  assign axi_cpu_dma_interconnect_to_s01_couplers_ARVALID = S01_AXI_arvalid;
  assign axi_cpu_dma_interconnect_to_s01_couplers_RREADY = S01_AXI_rready;
  assign axi_cpu_dma_interconnect_to_s02_couplers_AWADDR = S02_AXI_awaddr[31:0];
  assign axi_cpu_dma_interconnect_to_s02_couplers_AWBURST = S02_AXI_awburst[1:0];
  assign axi_cpu_dma_interconnect_to_s02_couplers_AWCACHE = S02_AXI_awcache[3:0];
  assign axi_cpu_dma_interconnect_to_s02_couplers_AWLEN = S02_AXI_awlen[7:0];
  assign axi_cpu_dma_interconnect_to_s02_couplers_AWPROT = S02_AXI_awprot[2:0];
  assign axi_cpu_dma_interconnect_to_s02_couplers_AWSIZE = S02_AXI_awsize[2:0];
  assign axi_cpu_dma_interconnect_to_s02_couplers_AWVALID = S02_AXI_awvalid;
  assign axi_cpu_dma_interconnect_to_s02_couplers_BREADY = S02_AXI_bready;
  assign axi_cpu_dma_interconnect_to_s02_couplers_WDATA = S02_AXI_wdata[63:0];
  assign axi_cpu_dma_interconnect_to_s02_couplers_WLAST = S02_AXI_wlast;
  assign axi_cpu_dma_interconnect_to_s02_couplers_WSTRB = S02_AXI_wstrb[7:0];
  assign axi_cpu_dma_interconnect_to_s02_couplers_WVALID = S02_AXI_wvalid;
  assign axi_cpu_dma_interconnect_to_s03_couplers_AWADDR = S03_AXI_awaddr[31:0];
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
  assign axi_cpu_dma_interconnect_to_s04_couplers_ARBURST = S04_AXI_arburst[1:0];
  assign axi_cpu_dma_interconnect_to_s04_couplers_ARCACHE = S04_AXI_arcache[3:0];
  assign axi_cpu_dma_interconnect_to_s04_couplers_ARLEN = S04_AXI_arlen[7:0];
  assign axi_cpu_dma_interconnect_to_s04_couplers_ARPROT = S04_AXI_arprot[2:0];
  assign axi_cpu_dma_interconnect_to_s04_couplers_ARSIZE = S04_AXI_arsize[2:0];
  assign axi_cpu_dma_interconnect_to_s04_couplers_ARVALID = S04_AXI_arvalid;
  assign axi_cpu_dma_interconnect_to_s04_couplers_RREADY = S04_AXI_rready;
  assign axi_cpu_dma_interconnect_to_s05_couplers_AWADDR = S05_AXI_awaddr[31:0];
  assign axi_cpu_dma_interconnect_to_s05_couplers_AWBURST = S05_AXI_awburst[1:0];
  assign axi_cpu_dma_interconnect_to_s05_couplers_AWCACHE = S05_AXI_awcache[3:0];
  assign axi_cpu_dma_interconnect_to_s05_couplers_AWLEN = S05_AXI_awlen[7:0];
  assign axi_cpu_dma_interconnect_to_s05_couplers_AWPROT = S05_AXI_awprot[2:0];
  assign axi_cpu_dma_interconnect_to_s05_couplers_AWSIZE = S05_AXI_awsize[2:0];
  assign axi_cpu_dma_interconnect_to_s05_couplers_AWVALID = S05_AXI_awvalid;
  assign axi_cpu_dma_interconnect_to_s05_couplers_BREADY = S05_AXI_bready;
  assign axi_cpu_dma_interconnect_to_s05_couplers_WDATA = S05_AXI_wdata[63:0];
  assign axi_cpu_dma_interconnect_to_s05_couplers_WLAST = S05_AXI_wlast;
  assign axi_cpu_dma_interconnect_to_s05_couplers_WSTRB = S05_AXI_wstrb[7:0];
  assign axi_cpu_dma_interconnect_to_s05_couplers_WVALID = S05_AXI_wvalid;
  assign axi_cpu_dma_interconnect_to_s06_couplers_ARADDR = S06_AXI_araddr[31:0];
  assign axi_cpu_dma_interconnect_to_s06_couplers_ARPROT = S06_AXI_arprot[2:0];
  assign axi_cpu_dma_interconnect_to_s06_couplers_ARVALID = S06_AXI_arvalid;
  assign axi_cpu_dma_interconnect_to_s06_couplers_AWADDR = S06_AXI_awaddr[31:0];
  assign axi_cpu_dma_interconnect_to_s06_couplers_AWPROT = S06_AXI_awprot[2:0];
  assign axi_cpu_dma_interconnect_to_s06_couplers_AWVALID = S06_AXI_awvalid;
  assign axi_cpu_dma_interconnect_to_s06_couplers_BREADY = S06_AXI_bready;
  assign axi_cpu_dma_interconnect_to_s06_couplers_RREADY = S06_AXI_rready;
  assign axi_cpu_dma_interconnect_to_s06_couplers_WDATA = S06_AXI_wdata[31:0];
  assign axi_cpu_dma_interconnect_to_s06_couplers_WSTRB = S06_AXI_wstrb[3:0];
  assign axi_cpu_dma_interconnect_to_s06_couplers_WVALID = S06_AXI_wvalid;
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
  assign m01_couplers_to_axi_cpu_dma_interconnect_ARREADY = M01_AXI_arready[0];
  assign m01_couplers_to_axi_cpu_dma_interconnect_AWREADY = M01_AXI_awready[0];
  assign m01_couplers_to_axi_cpu_dma_interconnect_BID = M01_AXI_bid[2:0];
  assign m01_couplers_to_axi_cpu_dma_interconnect_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_axi_cpu_dma_interconnect_BVALID = M01_AXI_bvalid[0];
  assign m01_couplers_to_axi_cpu_dma_interconnect_RDATA = M01_AXI_rdata[63:0];
  assign m01_couplers_to_axi_cpu_dma_interconnect_RID = M01_AXI_rid[2:0];
  assign m01_couplers_to_axi_cpu_dma_interconnect_RLAST = M01_AXI_rlast[0];
  assign m01_couplers_to_axi_cpu_dma_interconnect_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_axi_cpu_dma_interconnect_RVALID = M01_AXI_rvalid[0];
  assign m01_couplers_to_axi_cpu_dma_interconnect_WREADY = M01_AXI_wready[0];
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
        .M_AXI_rdata(s01_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s01_couplers_to_xbar_RLAST),
        .M_AXI_rready(s01_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s01_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s01_couplers_to_xbar_RVALID),
        .S_ACLK(axi_cpu_dma_interconnect_ACLK_net),
        .S_ARESETN(axi_cpu_dma_interconnect_ARESETN_net),
        .S_AXI_araddr(axi_cpu_dma_interconnect_to_s01_couplers_ARADDR),
        .S_AXI_arburst(axi_cpu_dma_interconnect_to_s01_couplers_ARBURST),
        .S_AXI_arcache(axi_cpu_dma_interconnect_to_s01_couplers_ARCACHE),
        .S_AXI_arlen(axi_cpu_dma_interconnect_to_s01_couplers_ARLEN),
        .S_AXI_arprot(axi_cpu_dma_interconnect_to_s01_couplers_ARPROT),
        .S_AXI_arready(axi_cpu_dma_interconnect_to_s01_couplers_ARREADY),
        .S_AXI_arsize(axi_cpu_dma_interconnect_to_s01_couplers_ARSIZE),
        .S_AXI_arvalid(axi_cpu_dma_interconnect_to_s01_couplers_ARVALID),
        .S_AXI_rdata(axi_cpu_dma_interconnect_to_s01_couplers_RDATA),
        .S_AXI_rlast(axi_cpu_dma_interconnect_to_s01_couplers_RLAST),
        .S_AXI_rready(axi_cpu_dma_interconnect_to_s01_couplers_RREADY),
        .S_AXI_rresp(axi_cpu_dma_interconnect_to_s01_couplers_RRESP),
        .S_AXI_rvalid(axi_cpu_dma_interconnect_to_s01_couplers_RVALID));
  s02_couplers_imp_13WZJAK s02_couplers
       (.M_ACLK(axi_cpu_dma_interconnect_ACLK_net),
        .M_ARESETN(axi_cpu_dma_interconnect_ARESETN_net),
        .M_AXI_awaddr(s02_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s02_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s02_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s02_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s02_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s02_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s02_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s02_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s02_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s02_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s02_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s02_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s02_couplers_to_xbar_BVALID),
        .M_AXI_wdata(s02_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s02_couplers_to_xbar_WLAST),
        .M_AXI_wready(s02_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s02_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s02_couplers_to_xbar_WVALID),
        .S_ACLK(axi_cpu_dma_interconnect_ACLK_net),
        .S_ARESETN(axi_cpu_dma_interconnect_ARESETN_net),
        .S_AXI_awaddr(axi_cpu_dma_interconnect_to_s02_couplers_AWADDR),
        .S_AXI_awburst(axi_cpu_dma_interconnect_to_s02_couplers_AWBURST),
        .S_AXI_awcache(axi_cpu_dma_interconnect_to_s02_couplers_AWCACHE),
        .S_AXI_awlen(axi_cpu_dma_interconnect_to_s02_couplers_AWLEN),
        .S_AXI_awprot(axi_cpu_dma_interconnect_to_s02_couplers_AWPROT),
        .S_AXI_awready(axi_cpu_dma_interconnect_to_s02_couplers_AWREADY),
        .S_AXI_awsize(axi_cpu_dma_interconnect_to_s02_couplers_AWSIZE),
        .S_AXI_awvalid(axi_cpu_dma_interconnect_to_s02_couplers_AWVALID),
        .S_AXI_bready(axi_cpu_dma_interconnect_to_s02_couplers_BREADY),
        .S_AXI_bresp(axi_cpu_dma_interconnect_to_s02_couplers_BRESP),
        .S_AXI_bvalid(axi_cpu_dma_interconnect_to_s02_couplers_BVALID),
        .S_AXI_wdata(axi_cpu_dma_interconnect_to_s02_couplers_WDATA),
        .S_AXI_wlast(axi_cpu_dma_interconnect_to_s02_couplers_WLAST),
        .S_AXI_wready(axi_cpu_dma_interconnect_to_s02_couplers_WREADY),
        .S_AXI_wstrb(axi_cpu_dma_interconnect_to_s02_couplers_WSTRB),
        .S_AXI_wvalid(axi_cpu_dma_interconnect_to_s02_couplers_WVALID));
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
        .M_AXI_rdata(s04_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s04_couplers_to_xbar_RLAST),
        .M_AXI_rready(s04_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s04_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s04_couplers_to_xbar_RVALID),
        .S_ACLK(axi_cpu_dma_interconnect_ACLK_net),
        .S_ARESETN(axi_cpu_dma_interconnect_ARESETN_net),
        .S_AXI_araddr(axi_cpu_dma_interconnect_to_s04_couplers_ARADDR),
        .S_AXI_arburst(axi_cpu_dma_interconnect_to_s04_couplers_ARBURST),
        .S_AXI_arcache(axi_cpu_dma_interconnect_to_s04_couplers_ARCACHE),
        .S_AXI_arlen(axi_cpu_dma_interconnect_to_s04_couplers_ARLEN),
        .S_AXI_arprot(axi_cpu_dma_interconnect_to_s04_couplers_ARPROT),
        .S_AXI_arready(axi_cpu_dma_interconnect_to_s04_couplers_ARREADY),
        .S_AXI_arsize(axi_cpu_dma_interconnect_to_s04_couplers_ARSIZE),
        .S_AXI_arvalid(axi_cpu_dma_interconnect_to_s04_couplers_ARVALID),
        .S_AXI_rdata(axi_cpu_dma_interconnect_to_s04_couplers_RDATA),
        .S_AXI_rlast(axi_cpu_dma_interconnect_to_s04_couplers_RLAST),
        .S_AXI_rready(axi_cpu_dma_interconnect_to_s04_couplers_RREADY),
        .S_AXI_rresp(axi_cpu_dma_interconnect_to_s04_couplers_RRESP),
        .S_AXI_rvalid(axi_cpu_dma_interconnect_to_s04_couplers_RVALID));
  s05_couplers_imp_US7SW8 s05_couplers
       (.M_ACLK(axi_cpu_dma_interconnect_ACLK_net),
        .M_ARESETN(axi_cpu_dma_interconnect_ARESETN_net),
        .M_AXI_awaddr(s05_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s05_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s05_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s05_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s05_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s05_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s05_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s05_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s05_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s05_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s05_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s05_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s05_couplers_to_xbar_BVALID),
        .M_AXI_wdata(s05_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s05_couplers_to_xbar_WLAST),
        .M_AXI_wready(s05_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s05_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s05_couplers_to_xbar_WVALID),
        .S_ACLK(axi_cpu_dma_interconnect_ACLK_net),
        .S_ARESETN(axi_cpu_dma_interconnect_ARESETN_net),
        .S_AXI_awaddr(axi_cpu_dma_interconnect_to_s05_couplers_AWADDR),
        .S_AXI_awburst(axi_cpu_dma_interconnect_to_s05_couplers_AWBURST),
        .S_AXI_awcache(axi_cpu_dma_interconnect_to_s05_couplers_AWCACHE),
        .S_AXI_awlen(axi_cpu_dma_interconnect_to_s05_couplers_AWLEN),
        .S_AXI_awprot(axi_cpu_dma_interconnect_to_s05_couplers_AWPROT),
        .S_AXI_awready(axi_cpu_dma_interconnect_to_s05_couplers_AWREADY),
        .S_AXI_awsize(axi_cpu_dma_interconnect_to_s05_couplers_AWSIZE),
        .S_AXI_awvalid(axi_cpu_dma_interconnect_to_s05_couplers_AWVALID),
        .S_AXI_bready(axi_cpu_dma_interconnect_to_s05_couplers_BREADY),
        .S_AXI_bresp(axi_cpu_dma_interconnect_to_s05_couplers_BRESP),
        .S_AXI_bvalid(axi_cpu_dma_interconnect_to_s05_couplers_BVALID),
        .S_AXI_wdata(axi_cpu_dma_interconnect_to_s05_couplers_WDATA),
        .S_AXI_wlast(axi_cpu_dma_interconnect_to_s05_couplers_WLAST),
        .S_AXI_wready(axi_cpu_dma_interconnect_to_s05_couplers_WREADY),
        .S_AXI_wstrb(axi_cpu_dma_interconnect_to_s05_couplers_WSTRB),
        .S_AXI_wvalid(axi_cpu_dma_interconnect_to_s05_couplers_WVALID));
  s06_couplers_imp_10R2E7E s06_couplers
       (.M_ACLK(axi_cpu_dma_interconnect_ACLK_net),
        .M_ARESETN(axi_cpu_dma_interconnect_ARESETN_net),
        .M_AXI_araddr(s06_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s06_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s06_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s06_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s06_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s06_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s06_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s06_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s06_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s06_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s06_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s06_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s06_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s06_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s06_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s06_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s06_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s06_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s06_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s06_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s06_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s06_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s06_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s06_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s06_couplers_to_xbar_RLAST),
        .M_AXI_rready(s06_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s06_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s06_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s06_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s06_couplers_to_xbar_WLAST),
        .M_AXI_wready(s06_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s06_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s06_couplers_to_xbar_WVALID),
        .S_ACLK(axi_cpu_dma_interconnect_ACLK_net),
        .S_ARESETN(axi_cpu_dma_interconnect_ARESETN_net),
        .S_AXI_araddr(axi_cpu_dma_interconnect_to_s06_couplers_ARADDR),
        .S_AXI_arprot(axi_cpu_dma_interconnect_to_s06_couplers_ARPROT),
        .S_AXI_arready(axi_cpu_dma_interconnect_to_s06_couplers_ARREADY),
        .S_AXI_arvalid(axi_cpu_dma_interconnect_to_s06_couplers_ARVALID),
        .S_AXI_awaddr(axi_cpu_dma_interconnect_to_s06_couplers_AWADDR),
        .S_AXI_awprot(axi_cpu_dma_interconnect_to_s06_couplers_AWPROT),
        .S_AXI_awready(axi_cpu_dma_interconnect_to_s06_couplers_AWREADY),
        .S_AXI_awvalid(axi_cpu_dma_interconnect_to_s06_couplers_AWVALID),
        .S_AXI_bready(axi_cpu_dma_interconnect_to_s06_couplers_BREADY),
        .S_AXI_bvalid(axi_cpu_dma_interconnect_to_s06_couplers_BVALID),
        .S_AXI_rdata(axi_cpu_dma_interconnect_to_s06_couplers_RDATA),
        .S_AXI_rready(axi_cpu_dma_interconnect_to_s06_couplers_RREADY),
        .S_AXI_rvalid(axi_cpu_dma_interconnect_to_s06_couplers_RVALID),
        .S_AXI_wdata(axi_cpu_dma_interconnect_to_s06_couplers_WDATA),
        .S_AXI_wready(axi_cpu_dma_interconnect_to_s06_couplers_WREADY),
        .S_AXI_wstrb(axi_cpu_dma_interconnect_to_s06_couplers_WSTRB),
        .S_AXI_wvalid(axi_cpu_dma_interconnect_to_s06_couplers_WVALID));
  icyradio_xbar_1 xbar
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
        .s_axi_araddr({s06_couplers_to_xbar_ARADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s04_couplers_to_xbar_ARADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s01_couplers_to_xbar_ARADDR,s00_couplers_to_xbar_ARADDR}),
        .s_axi_arburst({s06_couplers_to_xbar_ARBURST,1'b0,1'b0,s04_couplers_to_xbar_ARBURST,1'b0,1'b0,1'b0,1'b0,s01_couplers_to_xbar_ARBURST,s00_couplers_to_xbar_ARBURST}),
        .s_axi_arcache({s06_couplers_to_xbar_ARCACHE,1'b0,1'b0,1'b0,1'b0,s04_couplers_to_xbar_ARCACHE,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s01_couplers_to_xbar_ARCACHE,s00_couplers_to_xbar_ARCACHE}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({s06_couplers_to_xbar_ARLEN,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s04_couplers_to_xbar_ARLEN,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s01_couplers_to_xbar_ARLEN,s00_couplers_to_xbar_ARLEN}),
        .s_axi_arlock({s06_couplers_to_xbar_ARLOCK,1'b0,s04_couplers_to_xbar_ARLOCK,1'b0,1'b0,s01_couplers_to_xbar_ARLOCK,s00_couplers_to_xbar_ARLOCK}),
        .s_axi_arprot({s06_couplers_to_xbar_ARPROT,1'b0,1'b0,1'b0,s04_couplers_to_xbar_ARPROT,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s01_couplers_to_xbar_ARPROT,s00_couplers_to_xbar_ARPROT}),
        .s_axi_arqos({s06_couplers_to_xbar_ARQOS,1'b0,1'b0,1'b0,1'b0,s04_couplers_to_xbar_ARQOS,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s01_couplers_to_xbar_ARQOS,s00_couplers_to_xbar_ARQOS}),
        .s_axi_arready({s06_couplers_to_xbar_ARREADY,NLW_xbar_s_axi_arready_UNCONNECTED[5],s04_couplers_to_xbar_ARREADY,NLW_xbar_s_axi_arready_UNCONNECTED[3:2],s01_couplers_to_xbar_ARREADY,s00_couplers_to_xbar_ARREADY}),
        .s_axi_arsize({s06_couplers_to_xbar_ARSIZE,1'b0,1'b0,1'b0,s04_couplers_to_xbar_ARSIZE,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s01_couplers_to_xbar_ARSIZE,s00_couplers_to_xbar_ARSIZE}),
        .s_axi_arvalid({s06_couplers_to_xbar_ARVALID,1'b0,s04_couplers_to_xbar_ARVALID,1'b0,1'b0,s01_couplers_to_xbar_ARVALID,s00_couplers_to_xbar_ARVALID}),
        .s_axi_awaddr({s06_couplers_to_xbar_AWADDR,s05_couplers_to_xbar_AWADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s03_couplers_to_xbar_AWADDR,s02_couplers_to_xbar_AWADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({s06_couplers_to_xbar_AWBURST,s05_couplers_to_xbar_AWBURST,1'b0,1'b0,s03_couplers_to_xbar_AWBURST,s02_couplers_to_xbar_AWBURST,1'b0,1'b0,1'b0,1'b1}),
        .s_axi_awcache({s06_couplers_to_xbar_AWCACHE,s05_couplers_to_xbar_AWCACHE,1'b0,1'b0,1'b0,1'b0,s03_couplers_to_xbar_AWCACHE,s02_couplers_to_xbar_AWCACHE,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({s06_couplers_to_xbar_AWLEN,s05_couplers_to_xbar_AWLEN,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s03_couplers_to_xbar_AWLEN,s02_couplers_to_xbar_AWLEN,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock({s06_couplers_to_xbar_AWLOCK,s05_couplers_to_xbar_AWLOCK,1'b0,s03_couplers_to_xbar_AWLOCK,s02_couplers_to_xbar_AWLOCK,1'b0,1'b0}),
        .s_axi_awprot({s06_couplers_to_xbar_AWPROT,s05_couplers_to_xbar_AWPROT,1'b0,1'b0,1'b0,s03_couplers_to_xbar_AWPROT,s02_couplers_to_xbar_AWPROT,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awqos({s06_couplers_to_xbar_AWQOS,s05_couplers_to_xbar_AWQOS,1'b0,1'b0,1'b0,1'b0,s03_couplers_to_xbar_AWQOS,s02_couplers_to_xbar_AWQOS,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready({s06_couplers_to_xbar_AWREADY,s05_couplers_to_xbar_AWREADY,NLW_xbar_s_axi_awready_UNCONNECTED[4],s03_couplers_to_xbar_AWREADY,s02_couplers_to_xbar_AWREADY,NLW_xbar_s_axi_awready_UNCONNECTED[1:0]}),
        .s_axi_awsize({s06_couplers_to_xbar_AWSIZE,s05_couplers_to_xbar_AWSIZE,1'b0,1'b0,1'b0,s03_couplers_to_xbar_AWSIZE,s02_couplers_to_xbar_AWSIZE,1'b0,1'b0,1'b1,1'b0,1'b1,1'b1}),
        .s_axi_awvalid({s06_couplers_to_xbar_AWVALID,s05_couplers_to_xbar_AWVALID,1'b0,s03_couplers_to_xbar_AWVALID,s02_couplers_to_xbar_AWVALID,1'b0,1'b0}),
        .s_axi_bready({s06_couplers_to_xbar_BREADY,s05_couplers_to_xbar_BREADY,1'b0,s03_couplers_to_xbar_BREADY,s02_couplers_to_xbar_BREADY,1'b0,1'b0}),
        .s_axi_bresp({s06_couplers_to_xbar_BRESP,s05_couplers_to_xbar_BRESP,NLW_xbar_s_axi_bresp_UNCONNECTED[9:8],s03_couplers_to_xbar_BRESP,s02_couplers_to_xbar_BRESP,NLW_xbar_s_axi_bresp_UNCONNECTED[3:0]}),
        .s_axi_bvalid({s06_couplers_to_xbar_BVALID,s05_couplers_to_xbar_BVALID,NLW_xbar_s_axi_bvalid_UNCONNECTED[4],s03_couplers_to_xbar_BVALID,s02_couplers_to_xbar_BVALID,NLW_xbar_s_axi_bvalid_UNCONNECTED[1:0]}),
        .s_axi_rdata({s06_couplers_to_xbar_RDATA,NLW_xbar_s_axi_rdata_UNCONNECTED[383:320],s04_couplers_to_xbar_RDATA,NLW_xbar_s_axi_rdata_UNCONNECTED[255:128],s01_couplers_to_xbar_RDATA,s00_couplers_to_xbar_RDATA}),
        .s_axi_rlast({s06_couplers_to_xbar_RLAST,NLW_xbar_s_axi_rlast_UNCONNECTED[5],s04_couplers_to_xbar_RLAST,NLW_xbar_s_axi_rlast_UNCONNECTED[3:2],s01_couplers_to_xbar_RLAST,s00_couplers_to_xbar_RLAST}),
        .s_axi_rready({s06_couplers_to_xbar_RREADY,1'b0,s04_couplers_to_xbar_RREADY,1'b0,1'b0,s01_couplers_to_xbar_RREADY,s00_couplers_to_xbar_RREADY}),
        .s_axi_rresp({s06_couplers_to_xbar_RRESP,NLW_xbar_s_axi_rresp_UNCONNECTED[11:10],s04_couplers_to_xbar_RRESP,NLW_xbar_s_axi_rresp_UNCONNECTED[7:4],s01_couplers_to_xbar_RRESP,s00_couplers_to_xbar_RRESP}),
        .s_axi_rvalid({s06_couplers_to_xbar_RVALID,NLW_xbar_s_axi_rvalid_UNCONNECTED[5],s04_couplers_to_xbar_RVALID,NLW_xbar_s_axi_rvalid_UNCONNECTED[3:2],s01_couplers_to_xbar_RVALID,s00_couplers_to_xbar_RVALID}),
        .s_axi_wdata({s06_couplers_to_xbar_WDATA,s05_couplers_to_xbar_WDATA,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s03_couplers_to_xbar_WDATA,s02_couplers_to_xbar_WDATA,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast({s06_couplers_to_xbar_WLAST,s05_couplers_to_xbar_WLAST,1'b0,s03_couplers_to_xbar_WLAST,s02_couplers_to_xbar_WLAST,1'b0,1'b0}),
        .s_axi_wready({s06_couplers_to_xbar_WREADY,s05_couplers_to_xbar_WREADY,NLW_xbar_s_axi_wready_UNCONNECTED[4],s03_couplers_to_xbar_WREADY,s02_couplers_to_xbar_WREADY,NLW_xbar_s_axi_wready_UNCONNECTED[1:0]}),
        .s_axi_wstrb({s06_couplers_to_xbar_WSTRB,s05_couplers_to_xbar_WSTRB,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,s03_couplers_to_xbar_WSTRB,s02_couplers_to_xbar_WSTRB,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .s_axi_wvalid({s06_couplers_to_xbar_WVALID,s05_couplers_to_xbar_WVALID,1'b0,s03_couplers_to_xbar_WVALID,s02_couplers_to_xbar_WVALID,1'b0,1'b0}));
endmodule

module icyradio_axi_pcie_interconnect_0
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
    M01_AXI_arcache,
    M01_AXI_arid,
    M01_AXI_arlen,
    M01_AXI_arlock,
    M01_AXI_arprot,
    M01_AXI_arqos,
    M01_AXI_arready,
    M01_AXI_arsize,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awburst,
    M01_AXI_awcache,
    M01_AXI_awid,
    M01_AXI_awlen,
    M01_AXI_awlock,
    M01_AXI_awprot,
    M01_AXI_awqos,
    M01_AXI_awready,
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
  output [3:0]M00_AXI_arid;
  output [7:0]M00_AXI_arlen;
  output [0:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input [0:0]M00_AXI_arready;
  output [3:0]M00_AXI_arregion;
  output [2:0]M00_AXI_arsize;
  output [0:0]M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [3:0]M00_AXI_awid;
  output [7:0]M00_AXI_awlen;
  output [0:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input [0:0]M00_AXI_awready;
  output [3:0]M00_AXI_awregion;
  output [2:0]M00_AXI_awsize;
  output [0:0]M00_AXI_awvalid;
  input [3:0]M00_AXI_bid;
  output [0:0]M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input [0:0]M00_AXI_bvalid;
  input [63:0]M00_AXI_rdata;
  input [3:0]M00_AXI_rid;
  input [0:0]M00_AXI_rlast;
  output [0:0]M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input [0:0]M00_AXI_rvalid;
  output [63:0]M00_AXI_wdata;
  output [0:0]M00_AXI_wlast;
  input [0:0]M00_AXI_wready;
  output [7:0]M00_AXI_wstrb;
  output [0:0]M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [31:0]M01_AXI_araddr;
  output [1:0]M01_AXI_arburst;
  output [3:0]M01_AXI_arcache;
  output [3:0]M01_AXI_arid;
  output [7:0]M01_AXI_arlen;
  output M01_AXI_arlock;
  output [2:0]M01_AXI_arprot;
  output [3:0]M01_AXI_arqos;
  input M01_AXI_arready;
  output [2:0]M01_AXI_arsize;
  output M01_AXI_arvalid;
  output [31:0]M01_AXI_awaddr;
  output [1:0]M01_AXI_awburst;
  output [3:0]M01_AXI_awcache;
  output [3:0]M01_AXI_awid;
  output [7:0]M01_AXI_awlen;
  output M01_AXI_awlock;
  output [2:0]M01_AXI_awprot;
  output [3:0]M01_AXI_awqos;
  input M01_AXI_awready;
  output [2:0]M01_AXI_awsize;
  output M01_AXI_awvalid;
  input [3:0]M01_AXI_bid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [63:0]M01_AXI_rdata;
  input [3:0]M01_AXI_rid;
  input M01_AXI_rlast;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [63:0]M01_AXI_wdata;
  output M01_AXI_wlast;
  input M01_AXI_wready;
  output [7:0]M01_AXI_wstrb;
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
  input [0:0]S01_AXI_arlock;
  input [2:0]S01_AXI_arprot;
  output S01_AXI_arready;
  input [2:0]S01_AXI_arsize;
  input S01_AXI_arvalid;
  input [31:0]S01_AXI_awaddr;
  input [1:0]S01_AXI_awburst;
  input [3:0]S01_AXI_awcache;
  input [7:0]S01_AXI_awlen;
  input [0:0]S01_AXI_awlock;
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
  wire [0:0]axi_pcie_interconnect_to_s01_couplers_ARLOCK;
  wire [2:0]axi_pcie_interconnect_to_s01_couplers_ARPROT;
  wire axi_pcie_interconnect_to_s01_couplers_ARREADY;
  wire [2:0]axi_pcie_interconnect_to_s01_couplers_ARSIZE;
  wire axi_pcie_interconnect_to_s01_couplers_ARVALID;
  wire [31:0]axi_pcie_interconnect_to_s01_couplers_AWADDR;
  wire [1:0]axi_pcie_interconnect_to_s01_couplers_AWBURST;
  wire [3:0]axi_pcie_interconnect_to_s01_couplers_AWCACHE;
  wire [7:0]axi_pcie_interconnect_to_s01_couplers_AWLEN;
  wire [0:0]axi_pcie_interconnect_to_s01_couplers_AWLOCK;
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
  wire [3:0]m00_couplers_to_axi_pcie_interconnect_ARID;
  wire [7:0]m00_couplers_to_axi_pcie_interconnect_ARLEN;
  wire [0:0]m00_couplers_to_axi_pcie_interconnect_ARLOCK;
  wire [2:0]m00_couplers_to_axi_pcie_interconnect_ARPROT;
  wire [3:0]m00_couplers_to_axi_pcie_interconnect_ARQOS;
  wire [0:0]m00_couplers_to_axi_pcie_interconnect_ARREADY;
  wire [3:0]m00_couplers_to_axi_pcie_interconnect_ARREGION;
  wire [2:0]m00_couplers_to_axi_pcie_interconnect_ARSIZE;
  wire [0:0]m00_couplers_to_axi_pcie_interconnect_ARVALID;
  wire [31:0]m00_couplers_to_axi_pcie_interconnect_AWADDR;
  wire [1:0]m00_couplers_to_axi_pcie_interconnect_AWBURST;
  wire [3:0]m00_couplers_to_axi_pcie_interconnect_AWCACHE;
  wire [3:0]m00_couplers_to_axi_pcie_interconnect_AWID;
  wire [7:0]m00_couplers_to_axi_pcie_interconnect_AWLEN;
  wire [0:0]m00_couplers_to_axi_pcie_interconnect_AWLOCK;
  wire [2:0]m00_couplers_to_axi_pcie_interconnect_AWPROT;
  wire [3:0]m00_couplers_to_axi_pcie_interconnect_AWQOS;
  wire [0:0]m00_couplers_to_axi_pcie_interconnect_AWREADY;
  wire [3:0]m00_couplers_to_axi_pcie_interconnect_AWREGION;
  wire [2:0]m00_couplers_to_axi_pcie_interconnect_AWSIZE;
  wire [0:0]m00_couplers_to_axi_pcie_interconnect_AWVALID;
  wire [3:0]m00_couplers_to_axi_pcie_interconnect_BID;
  wire [0:0]m00_couplers_to_axi_pcie_interconnect_BREADY;
  wire [1:0]m00_couplers_to_axi_pcie_interconnect_BRESP;
  wire [0:0]m00_couplers_to_axi_pcie_interconnect_BVALID;
  wire [63:0]m00_couplers_to_axi_pcie_interconnect_RDATA;
  wire [3:0]m00_couplers_to_axi_pcie_interconnect_RID;
  wire [0:0]m00_couplers_to_axi_pcie_interconnect_RLAST;
  wire [0:0]m00_couplers_to_axi_pcie_interconnect_RREADY;
  wire [1:0]m00_couplers_to_axi_pcie_interconnect_RRESP;
  wire [0:0]m00_couplers_to_axi_pcie_interconnect_RVALID;
  wire [63:0]m00_couplers_to_axi_pcie_interconnect_WDATA;
  wire [0:0]m00_couplers_to_axi_pcie_interconnect_WLAST;
  wire [0:0]m00_couplers_to_axi_pcie_interconnect_WREADY;
  wire [7:0]m00_couplers_to_axi_pcie_interconnect_WSTRB;
  wire [0:0]m00_couplers_to_axi_pcie_interconnect_WVALID;
  wire [31:0]m01_couplers_to_axi_pcie_interconnect_ARADDR;
  wire [1:0]m01_couplers_to_axi_pcie_interconnect_ARBURST;
  wire [3:0]m01_couplers_to_axi_pcie_interconnect_ARCACHE;
  wire [3:0]m01_couplers_to_axi_pcie_interconnect_ARID;
  wire [7:0]m01_couplers_to_axi_pcie_interconnect_ARLEN;
  wire m01_couplers_to_axi_pcie_interconnect_ARLOCK;
  wire [2:0]m01_couplers_to_axi_pcie_interconnect_ARPROT;
  wire [3:0]m01_couplers_to_axi_pcie_interconnect_ARQOS;
  wire m01_couplers_to_axi_pcie_interconnect_ARREADY;
  wire [2:0]m01_couplers_to_axi_pcie_interconnect_ARSIZE;
  wire m01_couplers_to_axi_pcie_interconnect_ARVALID;
  wire [31:0]m01_couplers_to_axi_pcie_interconnect_AWADDR;
  wire [1:0]m01_couplers_to_axi_pcie_interconnect_AWBURST;
  wire [3:0]m01_couplers_to_axi_pcie_interconnect_AWCACHE;
  wire [3:0]m01_couplers_to_axi_pcie_interconnect_AWID;
  wire [7:0]m01_couplers_to_axi_pcie_interconnect_AWLEN;
  wire m01_couplers_to_axi_pcie_interconnect_AWLOCK;
  wire [2:0]m01_couplers_to_axi_pcie_interconnect_AWPROT;
  wire [3:0]m01_couplers_to_axi_pcie_interconnect_AWQOS;
  wire m01_couplers_to_axi_pcie_interconnect_AWREADY;
  wire [2:0]m01_couplers_to_axi_pcie_interconnect_AWSIZE;
  wire m01_couplers_to_axi_pcie_interconnect_AWVALID;
  wire [3:0]m01_couplers_to_axi_pcie_interconnect_BID;
  wire m01_couplers_to_axi_pcie_interconnect_BREADY;
  wire [1:0]m01_couplers_to_axi_pcie_interconnect_BRESP;
  wire m01_couplers_to_axi_pcie_interconnect_BVALID;
  wire [63:0]m01_couplers_to_axi_pcie_interconnect_RDATA;
  wire [3:0]m01_couplers_to_axi_pcie_interconnect_RID;
  wire m01_couplers_to_axi_pcie_interconnect_RLAST;
  wire m01_couplers_to_axi_pcie_interconnect_RREADY;
  wire [1:0]m01_couplers_to_axi_pcie_interconnect_RRESP;
  wire m01_couplers_to_axi_pcie_interconnect_RVALID;
  wire [63:0]m01_couplers_to_axi_pcie_interconnect_WDATA;
  wire m01_couplers_to_axi_pcie_interconnect_WLAST;
  wire m01_couplers_to_axi_pcie_interconnect_WREADY;
  wire [7:0]m01_couplers_to_axi_pcie_interconnect_WSTRB;
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
  wire [0:0]xbar_to_m00_couplers_ARREADY;
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
  wire [0:0]xbar_to_m00_couplers_AWREADY;
  wire [3:0]xbar_to_m00_couplers_AWREGION;
  wire [2:0]xbar_to_m00_couplers_AWSIZE;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [3:0]xbar_to_m00_couplers_BID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire [0:0]xbar_to_m00_couplers_BVALID;
  wire [63:0]xbar_to_m00_couplers_RDATA;
  wire [3:0]xbar_to_m00_couplers_RID;
  wire [0:0]xbar_to_m00_couplers_RLAST;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire [0:0]xbar_to_m00_couplers_RVALID;
  wire [63:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WLAST;
  wire [0:0]xbar_to_m00_couplers_WREADY;
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
  wire [15:0]NLW_xbar_m_axi_arregion_UNCONNECTED;
  wire [15:0]NLW_xbar_m_axi_awregion_UNCONNECTED;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[31:0] = m00_couplers_to_axi_pcie_interconnect_ARADDR;
  assign M00_AXI_arburst[1:0] = m00_couplers_to_axi_pcie_interconnect_ARBURST;
  assign M00_AXI_arcache[3:0] = m00_couplers_to_axi_pcie_interconnect_ARCACHE;
  assign M00_AXI_arid[3:0] = m00_couplers_to_axi_pcie_interconnect_ARID;
  assign M00_AXI_arlen[7:0] = m00_couplers_to_axi_pcie_interconnect_ARLEN;
  assign M00_AXI_arlock[0] = m00_couplers_to_axi_pcie_interconnect_ARLOCK;
  assign M00_AXI_arprot[2:0] = m00_couplers_to_axi_pcie_interconnect_ARPROT;
  assign M00_AXI_arqos[3:0] = m00_couplers_to_axi_pcie_interconnect_ARQOS;
  assign M00_AXI_arregion[3:0] = m00_couplers_to_axi_pcie_interconnect_ARREGION;
  assign M00_AXI_arsize[2:0] = m00_couplers_to_axi_pcie_interconnect_ARSIZE;
  assign M00_AXI_arvalid[0] = m00_couplers_to_axi_pcie_interconnect_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_axi_pcie_interconnect_AWADDR;
  assign M00_AXI_awburst[1:0] = m00_couplers_to_axi_pcie_interconnect_AWBURST;
  assign M00_AXI_awcache[3:0] = m00_couplers_to_axi_pcie_interconnect_AWCACHE;
  assign M00_AXI_awid[3:0] = m00_couplers_to_axi_pcie_interconnect_AWID;
  assign M00_AXI_awlen[7:0] = m00_couplers_to_axi_pcie_interconnect_AWLEN;
  assign M00_AXI_awlock[0] = m00_couplers_to_axi_pcie_interconnect_AWLOCK;
  assign M00_AXI_awprot[2:0] = m00_couplers_to_axi_pcie_interconnect_AWPROT;
  assign M00_AXI_awqos[3:0] = m00_couplers_to_axi_pcie_interconnect_AWQOS;
  assign M00_AXI_awregion[3:0] = m00_couplers_to_axi_pcie_interconnect_AWREGION;
  assign M00_AXI_awsize[2:0] = m00_couplers_to_axi_pcie_interconnect_AWSIZE;
  assign M00_AXI_awvalid[0] = m00_couplers_to_axi_pcie_interconnect_AWVALID;
  assign M00_AXI_bready[0] = m00_couplers_to_axi_pcie_interconnect_BREADY;
  assign M00_AXI_rready[0] = m00_couplers_to_axi_pcie_interconnect_RREADY;
  assign M00_AXI_wdata[63:0] = m00_couplers_to_axi_pcie_interconnect_WDATA;
  assign M00_AXI_wlast[0] = m00_couplers_to_axi_pcie_interconnect_WLAST;
  assign M00_AXI_wstrb[7:0] = m00_couplers_to_axi_pcie_interconnect_WSTRB;
  assign M00_AXI_wvalid[0] = m00_couplers_to_axi_pcie_interconnect_WVALID;
  assign M01_ACLK_1 = M01_ACLK;
  assign M01_ARESETN_1 = M01_ARESETN;
  assign M01_AXI_araddr[31:0] = m01_couplers_to_axi_pcie_interconnect_ARADDR;
  assign M01_AXI_arburst[1:0] = m01_couplers_to_axi_pcie_interconnect_ARBURST;
  assign M01_AXI_arcache[3:0] = m01_couplers_to_axi_pcie_interconnect_ARCACHE;
  assign M01_AXI_arid[3:0] = m01_couplers_to_axi_pcie_interconnect_ARID;
  assign M01_AXI_arlen[7:0] = m01_couplers_to_axi_pcie_interconnect_ARLEN;
  assign M01_AXI_arlock = m01_couplers_to_axi_pcie_interconnect_ARLOCK;
  assign M01_AXI_arprot[2:0] = m01_couplers_to_axi_pcie_interconnect_ARPROT;
  assign M01_AXI_arqos[3:0] = m01_couplers_to_axi_pcie_interconnect_ARQOS;
  assign M01_AXI_arsize[2:0] = m01_couplers_to_axi_pcie_interconnect_ARSIZE;
  assign M01_AXI_arvalid = m01_couplers_to_axi_pcie_interconnect_ARVALID;
  assign M01_AXI_awaddr[31:0] = m01_couplers_to_axi_pcie_interconnect_AWADDR;
  assign M01_AXI_awburst[1:0] = m01_couplers_to_axi_pcie_interconnect_AWBURST;
  assign M01_AXI_awcache[3:0] = m01_couplers_to_axi_pcie_interconnect_AWCACHE;
  assign M01_AXI_awid[3:0] = m01_couplers_to_axi_pcie_interconnect_AWID;
  assign M01_AXI_awlen[7:0] = m01_couplers_to_axi_pcie_interconnect_AWLEN;
  assign M01_AXI_awlock = m01_couplers_to_axi_pcie_interconnect_AWLOCK;
  assign M01_AXI_awprot[2:0] = m01_couplers_to_axi_pcie_interconnect_AWPROT;
  assign M01_AXI_awqos[3:0] = m01_couplers_to_axi_pcie_interconnect_AWQOS;
  assign M01_AXI_awsize[2:0] = m01_couplers_to_axi_pcie_interconnect_AWSIZE;
  assign M01_AXI_awvalid = m01_couplers_to_axi_pcie_interconnect_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_axi_pcie_interconnect_BREADY;
  assign M01_AXI_rready = m01_couplers_to_axi_pcie_interconnect_RREADY;
  assign M01_AXI_wdata[63:0] = m01_couplers_to_axi_pcie_interconnect_WDATA;
  assign M01_AXI_wlast = m01_couplers_to_axi_pcie_interconnect_WLAST;
  assign M01_AXI_wstrb[7:0] = m01_couplers_to_axi_pcie_interconnect_WSTRB;
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
  assign axi_pcie_interconnect_to_s01_couplers_ARLOCK = S01_AXI_arlock[0];
  assign axi_pcie_interconnect_to_s01_couplers_ARPROT = S01_AXI_arprot[2:0];
  assign axi_pcie_interconnect_to_s01_couplers_ARSIZE = S01_AXI_arsize[2:0];
  assign axi_pcie_interconnect_to_s01_couplers_ARVALID = S01_AXI_arvalid;
  assign axi_pcie_interconnect_to_s01_couplers_AWADDR = S01_AXI_awaddr[31:0];
  assign axi_pcie_interconnect_to_s01_couplers_AWBURST = S01_AXI_awburst[1:0];
  assign axi_pcie_interconnect_to_s01_couplers_AWCACHE = S01_AXI_awcache[3:0];
  assign axi_pcie_interconnect_to_s01_couplers_AWLEN = S01_AXI_awlen[7:0];
  assign axi_pcie_interconnect_to_s01_couplers_AWLOCK = S01_AXI_awlock[0];
  assign axi_pcie_interconnect_to_s01_couplers_AWPROT = S01_AXI_awprot[2:0];
  assign axi_pcie_interconnect_to_s01_couplers_AWSIZE = S01_AXI_awsize[2:0];
  assign axi_pcie_interconnect_to_s01_couplers_AWVALID = S01_AXI_awvalid;
  assign axi_pcie_interconnect_to_s01_couplers_BREADY = S01_AXI_bready;
  assign axi_pcie_interconnect_to_s01_couplers_RREADY = S01_AXI_rready;
  assign axi_pcie_interconnect_to_s01_couplers_WDATA = S01_AXI_wdata[63:0];
  assign axi_pcie_interconnect_to_s01_couplers_WLAST = S01_AXI_wlast;
  assign axi_pcie_interconnect_to_s01_couplers_WSTRB = S01_AXI_wstrb[7:0];
  assign axi_pcie_interconnect_to_s01_couplers_WVALID = S01_AXI_wvalid;
  assign m00_couplers_to_axi_pcie_interconnect_ARREADY = M00_AXI_arready[0];
  assign m00_couplers_to_axi_pcie_interconnect_AWREADY = M00_AXI_awready[0];
  assign m00_couplers_to_axi_pcie_interconnect_BID = M00_AXI_bid[3:0];
  assign m00_couplers_to_axi_pcie_interconnect_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_pcie_interconnect_BVALID = M00_AXI_bvalid[0];
  assign m00_couplers_to_axi_pcie_interconnect_RDATA = M00_AXI_rdata[63:0];
  assign m00_couplers_to_axi_pcie_interconnect_RID = M00_AXI_rid[3:0];
  assign m00_couplers_to_axi_pcie_interconnect_RLAST = M00_AXI_rlast[0];
  assign m00_couplers_to_axi_pcie_interconnect_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_pcie_interconnect_RVALID = M00_AXI_rvalid[0];
  assign m00_couplers_to_axi_pcie_interconnect_WREADY = M00_AXI_wready[0];
  assign m01_couplers_to_axi_pcie_interconnect_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_axi_pcie_interconnect_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_axi_pcie_interconnect_BID = M01_AXI_bid[3:0];
  assign m01_couplers_to_axi_pcie_interconnect_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_axi_pcie_interconnect_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_axi_pcie_interconnect_RDATA = M01_AXI_rdata[63:0];
  assign m01_couplers_to_axi_pcie_interconnect_RID = M01_AXI_rid[3:0];
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
        .M_AXI_arid(m00_couplers_to_axi_pcie_interconnect_ARID),
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
        .M_AXI_awid(m00_couplers_to_axi_pcie_interconnect_AWID),
        .M_AXI_awlen(m00_couplers_to_axi_pcie_interconnect_AWLEN),
        .M_AXI_awlock(m00_couplers_to_axi_pcie_interconnect_AWLOCK),
        .M_AXI_awprot(m00_couplers_to_axi_pcie_interconnect_AWPROT),
        .M_AXI_awqos(m00_couplers_to_axi_pcie_interconnect_AWQOS),
        .M_AXI_awready(m00_couplers_to_axi_pcie_interconnect_AWREADY),
        .M_AXI_awregion(m00_couplers_to_axi_pcie_interconnect_AWREGION),
        .M_AXI_awsize(m00_couplers_to_axi_pcie_interconnect_AWSIZE),
        .M_AXI_awvalid(m00_couplers_to_axi_pcie_interconnect_AWVALID),
        .M_AXI_bid(m00_couplers_to_axi_pcie_interconnect_BID),
        .M_AXI_bready(m00_couplers_to_axi_pcie_interconnect_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_pcie_interconnect_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_pcie_interconnect_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_pcie_interconnect_RDATA),
        .M_AXI_rid(m00_couplers_to_axi_pcie_interconnect_RID),
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
        .M_AXI_arid(m01_couplers_to_axi_pcie_interconnect_ARID),
        .M_AXI_arlen(m01_couplers_to_axi_pcie_interconnect_ARLEN),
        .M_AXI_arlock(m01_couplers_to_axi_pcie_interconnect_ARLOCK),
        .M_AXI_arprot(m01_couplers_to_axi_pcie_interconnect_ARPROT),
        .M_AXI_arqos(m01_couplers_to_axi_pcie_interconnect_ARQOS),
        .M_AXI_arready(m01_couplers_to_axi_pcie_interconnect_ARREADY),
        .M_AXI_arsize(m01_couplers_to_axi_pcie_interconnect_ARSIZE),
        .M_AXI_arvalid(m01_couplers_to_axi_pcie_interconnect_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_axi_pcie_interconnect_AWADDR),
        .M_AXI_awburst(m01_couplers_to_axi_pcie_interconnect_AWBURST),
        .M_AXI_awcache(m01_couplers_to_axi_pcie_interconnect_AWCACHE),
        .M_AXI_awid(m01_couplers_to_axi_pcie_interconnect_AWID),
        .M_AXI_awlen(m01_couplers_to_axi_pcie_interconnect_AWLEN),
        .M_AXI_awlock(m01_couplers_to_axi_pcie_interconnect_AWLOCK),
        .M_AXI_awprot(m01_couplers_to_axi_pcie_interconnect_AWPROT),
        .M_AXI_awqos(m01_couplers_to_axi_pcie_interconnect_AWQOS),
        .M_AXI_awready(m01_couplers_to_axi_pcie_interconnect_AWREADY),
        .M_AXI_awsize(m01_couplers_to_axi_pcie_interconnect_AWSIZE),
        .M_AXI_awvalid(m01_couplers_to_axi_pcie_interconnect_AWVALID),
        .M_AXI_bid(m01_couplers_to_axi_pcie_interconnect_BID),
        .M_AXI_bready(m01_couplers_to_axi_pcie_interconnect_BREADY),
        .M_AXI_bresp(m01_couplers_to_axi_pcie_interconnect_BRESP),
        .M_AXI_bvalid(m01_couplers_to_axi_pcie_interconnect_BVALID),
        .M_AXI_rdata(m01_couplers_to_axi_pcie_interconnect_RDATA),
        .M_AXI_rid(m01_couplers_to_axi_pcie_interconnect_RID),
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
  icyradio_xbar_2 xbar
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
        .m_axi_arregion({xbar_to_m02_couplers_ARREGION,NLW_xbar_m_axi_arregion_UNCONNECTED[7:4],xbar_to_m00_couplers_ARREGION}),
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
        .m_axi_awregion({xbar_to_m02_couplers_AWREGION,NLW_xbar_m_axi_awregion_UNCONNECTED[7:4],xbar_to_m00_couplers_AWREGION}),
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

module icyradio_axi_peripheral_interconnect_0
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
    M03_AXI_arprot,
    M03_AXI_arready,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awprot,
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
    M04_AXI_arprot,
    M04_AXI_arready,
    M04_AXI_arvalid,
    M04_AXI_awaddr,
    M04_AXI_awprot,
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
    M05_AXI_arprot,
    M05_AXI_arready,
    M05_AXI_arvalid,
    M05_AXI_awaddr,
    M05_AXI_awprot,
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
    M06_AXI_arprot,
    M06_AXI_arready,
    M06_AXI_arvalid,
    M06_AXI_awaddr,
    M06_AXI_awprot,
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
    M07_AXI_arready,
    M07_AXI_arvalid,
    M07_AXI_awaddr,
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
    M08_AXI_arready,
    M08_AXI_arvalid,
    M08_AXI_awaddr,
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
    M09_AXI_arready,
    M09_AXI_arvalid,
    M09_AXI_awaddr,
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
    M10_AXI_arprot,
    M10_AXI_arready,
    M10_AXI_arvalid,
    M10_AXI_awaddr,
    M10_AXI_awprot,
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
    M11_AXI_arprot,
    M11_AXI_arready,
    M11_AXI_arvalid,
    M11_AXI_awaddr,
    M11_AXI_awprot,
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
    M12_AXI_arprot,
    M12_AXI_arready,
    M12_AXI_arvalid,
    M12_AXI_awaddr,
    M12_AXI_awprot,
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
    M13_AXI_arprot,
    M13_AXI_arready,
    M13_AXI_arvalid,
    M13_AXI_awaddr,
    M13_AXI_awprot,
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
    M14_AXI_arprot,
    M14_AXI_arready,
    M14_AXI_arvalid,
    M14_AXI_awaddr,
    M14_AXI_awprot,
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
    M15_ACLK,
    M15_ARESETN,
    M15_AXI_araddr,
    M15_AXI_arprot,
    M15_AXI_arready,
    M15_AXI_arvalid,
    M15_AXI_awaddr,
    M15_AXI_awprot,
    M15_AXI_awready,
    M15_AXI_awvalid,
    M15_AXI_bready,
    M15_AXI_bresp,
    M15_AXI_bvalid,
    M15_AXI_rdata,
    M15_AXI_rready,
    M15_AXI_rresp,
    M15_AXI_rvalid,
    M15_AXI_wdata,
    M15_AXI_wready,
    M15_AXI_wstrb,
    M15_AXI_wvalid,
    M16_ACLK,
    M16_ARESETN,
    M16_AXI_araddr,
    M16_AXI_arready,
    M16_AXI_arvalid,
    M16_AXI_awaddr,
    M16_AXI_awready,
    M16_AXI_awvalid,
    M16_AXI_bready,
    M16_AXI_bresp,
    M16_AXI_bvalid,
    M16_AXI_rdata,
    M16_AXI_rready,
    M16_AXI_rresp,
    M16_AXI_rvalid,
    M16_AXI_wdata,
    M16_AXI_wready,
    M16_AXI_wstrb,
    M16_AXI_wvalid,
    M17_ACLK,
    M17_ARESETN,
    M17_AXI_araddr,
    M17_AXI_arprot,
    M17_AXI_arready,
    M17_AXI_arvalid,
    M17_AXI_awaddr,
    M17_AXI_awprot,
    M17_AXI_awready,
    M17_AXI_awvalid,
    M17_AXI_bready,
    M17_AXI_bresp,
    M17_AXI_bvalid,
    M17_AXI_rdata,
    M17_AXI_rready,
    M17_AXI_rresp,
    M17_AXI_rvalid,
    M17_AXI_wdata,
    M17_AXI_wready,
    M17_AXI_wstrb,
    M17_AXI_wvalid,
    M18_ACLK,
    M18_ARESETN,
    M18_AXI_araddr,
    M18_AXI_arprot,
    M18_AXI_arready,
    M18_AXI_arvalid,
    M18_AXI_awaddr,
    M18_AXI_awprot,
    M18_AXI_awready,
    M18_AXI_awvalid,
    M18_AXI_bready,
    M18_AXI_bresp,
    M18_AXI_bvalid,
    M18_AXI_rdata,
    M18_AXI_rready,
    M18_AXI_rresp,
    M18_AXI_rvalid,
    M18_AXI_wdata,
    M18_AXI_wready,
    M18_AXI_wstrb,
    M18_AXI_wvalid,
    M19_ACLK,
    M19_ARESETN,
    M19_AXI_araddr,
    M19_AXI_arprot,
    M19_AXI_arready,
    M19_AXI_arvalid,
    M19_AXI_awaddr,
    M19_AXI_awprot,
    M19_AXI_awready,
    M19_AXI_awvalid,
    M19_AXI_bready,
    M19_AXI_bresp,
    M19_AXI_bvalid,
    M19_AXI_rdata,
    M19_AXI_rready,
    M19_AXI_rresp,
    M19_AXI_rvalid,
    M19_AXI_wdata,
    M19_AXI_wready,
    M19_AXI_wstrb,
    M19_AXI_wvalid,
    M20_ACLK,
    M20_ARESETN,
    M20_AXI_araddr,
    M20_AXI_arready,
    M20_AXI_arvalid,
    M20_AXI_awaddr,
    M20_AXI_awready,
    M20_AXI_awvalid,
    M20_AXI_bready,
    M20_AXI_bresp,
    M20_AXI_bvalid,
    M20_AXI_rdata,
    M20_AXI_rready,
    M20_AXI_rresp,
    M20_AXI_rvalid,
    M20_AXI_wdata,
    M20_AXI_wready,
    M20_AXI_wstrb,
    M20_AXI_wvalid,
    M21_ACLK,
    M21_ARESETN,
    M21_AXI_araddr,
    M21_AXI_arprot,
    M21_AXI_arready,
    M21_AXI_arvalid,
    M21_AXI_awaddr,
    M21_AXI_awprot,
    M21_AXI_awready,
    M21_AXI_awvalid,
    M21_AXI_bready,
    M21_AXI_bresp,
    M21_AXI_bvalid,
    M21_AXI_rdata,
    M21_AXI_rready,
    M21_AXI_rresp,
    M21_AXI_rvalid,
    M21_AXI_wdata,
    M21_AXI_wready,
    M21_AXI_wstrb,
    M21_AXI_wvalid,
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
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  output [2:0]M00_AXI_awprot;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [31:0]M01_AXI_araddr;
  output [2:0]M01_AXI_arprot;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [31:0]M01_AXI_awaddr;
  output [2:0]M01_AXI_awprot;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [31:0]M02_AXI_araddr;
  output [2:0]M02_AXI_arprot;
  input M02_AXI_arready;
  output M02_AXI_arvalid;
  output [31:0]M02_AXI_awaddr;
  output [2:0]M02_AXI_awprot;
  input M02_AXI_awready;
  output M02_AXI_awvalid;
  output M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output M02_AXI_wvalid;
  input M03_ACLK;
  input M03_ARESETN;
  output [31:0]M03_AXI_araddr;
  output [2:0]M03_AXI_arprot;
  input M03_AXI_arready;
  output M03_AXI_arvalid;
  output [31:0]M03_AXI_awaddr;
  output [2:0]M03_AXI_awprot;
  input M03_AXI_awready;
  output M03_AXI_awvalid;
  output M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input M03_AXI_bvalid;
  input [31:0]M03_AXI_rdata;
  output M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input M03_AXI_rvalid;
  output [31:0]M03_AXI_wdata;
  input M03_AXI_wready;
  output [3:0]M03_AXI_wstrb;
  output M03_AXI_wvalid;
  input M04_ACLK;
  input M04_ARESETN;
  output [31:0]M04_AXI_araddr;
  output [2:0]M04_AXI_arprot;
  input M04_AXI_arready;
  output M04_AXI_arvalid;
  output [31:0]M04_AXI_awaddr;
  output [2:0]M04_AXI_awprot;
  input M04_AXI_awready;
  output M04_AXI_awvalid;
  output M04_AXI_bready;
  input [1:0]M04_AXI_bresp;
  input M04_AXI_bvalid;
  input [31:0]M04_AXI_rdata;
  output M04_AXI_rready;
  input [1:0]M04_AXI_rresp;
  input M04_AXI_rvalid;
  output [31:0]M04_AXI_wdata;
  input M04_AXI_wready;
  output [3:0]M04_AXI_wstrb;
  output M04_AXI_wvalid;
  input M05_ACLK;
  input M05_ARESETN;
  output [31:0]M05_AXI_araddr;
  output [2:0]M05_AXI_arprot;
  input M05_AXI_arready;
  output M05_AXI_arvalid;
  output [31:0]M05_AXI_awaddr;
  output [2:0]M05_AXI_awprot;
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
  output [2:0]M06_AXI_arprot;
  input M06_AXI_arready;
  output M06_AXI_arvalid;
  output [31:0]M06_AXI_awaddr;
  output [2:0]M06_AXI_awprot;
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
  input [0:0]M07_AXI_arready;
  output [0:0]M07_AXI_arvalid;
  output [31:0]M07_AXI_awaddr;
  input [0:0]M07_AXI_awready;
  output [0:0]M07_AXI_awvalid;
  output [0:0]M07_AXI_bready;
  input [1:0]M07_AXI_bresp;
  input [0:0]M07_AXI_bvalid;
  input [31:0]M07_AXI_rdata;
  output [0:0]M07_AXI_rready;
  input [1:0]M07_AXI_rresp;
  input [0:0]M07_AXI_rvalid;
  output [31:0]M07_AXI_wdata;
  input [0:0]M07_AXI_wready;
  output [3:0]M07_AXI_wstrb;
  output [0:0]M07_AXI_wvalid;
  input M08_ACLK;
  input M08_ARESETN;
  output [31:0]M08_AXI_araddr;
  input [0:0]M08_AXI_arready;
  output [0:0]M08_AXI_arvalid;
  output [31:0]M08_AXI_awaddr;
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
  input M09_AXI_arready;
  output M09_AXI_arvalid;
  output [31:0]M09_AXI_awaddr;
  input M09_AXI_awready;
  output M09_AXI_awvalid;
  output M09_AXI_bready;
  input [1:0]M09_AXI_bresp;
  input M09_AXI_bvalid;
  input [31:0]M09_AXI_rdata;
  output M09_AXI_rready;
  input [1:0]M09_AXI_rresp;
  input M09_AXI_rvalid;
  output [31:0]M09_AXI_wdata;
  input M09_AXI_wready;
  output [3:0]M09_AXI_wstrb;
  output M09_AXI_wvalid;
  input M10_ACLK;
  input M10_ARESETN;
  output [31:0]M10_AXI_araddr;
  output [2:0]M10_AXI_arprot;
  input M10_AXI_arready;
  output M10_AXI_arvalid;
  output [31:0]M10_AXI_awaddr;
  output [2:0]M10_AXI_awprot;
  input M10_AXI_awready;
  output M10_AXI_awvalid;
  output M10_AXI_bready;
  input [1:0]M10_AXI_bresp;
  input M10_AXI_bvalid;
  input [31:0]M10_AXI_rdata;
  output M10_AXI_rready;
  input [1:0]M10_AXI_rresp;
  input M10_AXI_rvalid;
  output [31:0]M10_AXI_wdata;
  input M10_AXI_wready;
  output [3:0]M10_AXI_wstrb;
  output M10_AXI_wvalid;
  input M11_ACLK;
  input M11_ARESETN;
  output [31:0]M11_AXI_araddr;
  output [2:0]M11_AXI_arprot;
  input M11_AXI_arready;
  output M11_AXI_arvalid;
  output [31:0]M11_AXI_awaddr;
  output [2:0]M11_AXI_awprot;
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
  output [2:0]M12_AXI_arprot;
  input M12_AXI_arready;
  output M12_AXI_arvalid;
  output [31:0]M12_AXI_awaddr;
  output [2:0]M12_AXI_awprot;
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
  output [2:0]M13_AXI_arprot;
  input M13_AXI_arready;
  output M13_AXI_arvalid;
  output [31:0]M13_AXI_awaddr;
  output [2:0]M13_AXI_awprot;
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
  output [2:0]M14_AXI_arprot;
  input M14_AXI_arready;
  output M14_AXI_arvalid;
  output [31:0]M14_AXI_awaddr;
  output [2:0]M14_AXI_awprot;
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
  input M15_ACLK;
  input M15_ARESETN;
  output [31:0]M15_AXI_araddr;
  output [2:0]M15_AXI_arprot;
  input M15_AXI_arready;
  output M15_AXI_arvalid;
  output [31:0]M15_AXI_awaddr;
  output [2:0]M15_AXI_awprot;
  input M15_AXI_awready;
  output M15_AXI_awvalid;
  output M15_AXI_bready;
  input [1:0]M15_AXI_bresp;
  input M15_AXI_bvalid;
  input [31:0]M15_AXI_rdata;
  output M15_AXI_rready;
  input [1:0]M15_AXI_rresp;
  input M15_AXI_rvalid;
  output [31:0]M15_AXI_wdata;
  input M15_AXI_wready;
  output [3:0]M15_AXI_wstrb;
  output M15_AXI_wvalid;
  input M16_ACLK;
  input M16_ARESETN;
  output [31:0]M16_AXI_araddr;
  input M16_AXI_arready;
  output M16_AXI_arvalid;
  output [31:0]M16_AXI_awaddr;
  input M16_AXI_awready;
  output M16_AXI_awvalid;
  output M16_AXI_bready;
  input [1:0]M16_AXI_bresp;
  input M16_AXI_bvalid;
  input [31:0]M16_AXI_rdata;
  output M16_AXI_rready;
  input [1:0]M16_AXI_rresp;
  input M16_AXI_rvalid;
  output [31:0]M16_AXI_wdata;
  input M16_AXI_wready;
  output [3:0]M16_AXI_wstrb;
  output M16_AXI_wvalid;
  input M17_ACLK;
  input M17_ARESETN;
  output [31:0]M17_AXI_araddr;
  output [2:0]M17_AXI_arprot;
  input M17_AXI_arready;
  output M17_AXI_arvalid;
  output [31:0]M17_AXI_awaddr;
  output [2:0]M17_AXI_awprot;
  input M17_AXI_awready;
  output M17_AXI_awvalid;
  output M17_AXI_bready;
  input [1:0]M17_AXI_bresp;
  input M17_AXI_bvalid;
  input [31:0]M17_AXI_rdata;
  output M17_AXI_rready;
  input [1:0]M17_AXI_rresp;
  input M17_AXI_rvalid;
  output [31:0]M17_AXI_wdata;
  input M17_AXI_wready;
  output [3:0]M17_AXI_wstrb;
  output M17_AXI_wvalid;
  input M18_ACLK;
  input M18_ARESETN;
  output [31:0]M18_AXI_araddr;
  output [2:0]M18_AXI_arprot;
  input M18_AXI_arready;
  output M18_AXI_arvalid;
  output [31:0]M18_AXI_awaddr;
  output [2:0]M18_AXI_awprot;
  input M18_AXI_awready;
  output M18_AXI_awvalid;
  output M18_AXI_bready;
  input [1:0]M18_AXI_bresp;
  input M18_AXI_bvalid;
  input [31:0]M18_AXI_rdata;
  output M18_AXI_rready;
  input [1:0]M18_AXI_rresp;
  input M18_AXI_rvalid;
  output [31:0]M18_AXI_wdata;
  input M18_AXI_wready;
  output [3:0]M18_AXI_wstrb;
  output M18_AXI_wvalid;
  input M19_ACLK;
  input M19_ARESETN;
  output [31:0]M19_AXI_araddr;
  output [2:0]M19_AXI_arprot;
  input M19_AXI_arready;
  output M19_AXI_arvalid;
  output [31:0]M19_AXI_awaddr;
  output [2:0]M19_AXI_awprot;
  input M19_AXI_awready;
  output M19_AXI_awvalid;
  output M19_AXI_bready;
  input [1:0]M19_AXI_bresp;
  input M19_AXI_bvalid;
  input [31:0]M19_AXI_rdata;
  output M19_AXI_rready;
  input [1:0]M19_AXI_rresp;
  input M19_AXI_rvalid;
  output [31:0]M19_AXI_wdata;
  input M19_AXI_wready;
  output [3:0]M19_AXI_wstrb;
  output M19_AXI_wvalid;
  input M20_ACLK;
  input M20_ARESETN;
  output [31:0]M20_AXI_araddr;
  input [0:0]M20_AXI_arready;
  output [0:0]M20_AXI_arvalid;
  output [31:0]M20_AXI_awaddr;
  input [0:0]M20_AXI_awready;
  output [0:0]M20_AXI_awvalid;
  output [0:0]M20_AXI_bready;
  input [1:0]M20_AXI_bresp;
  input [0:0]M20_AXI_bvalid;
  input [31:0]M20_AXI_rdata;
  output [0:0]M20_AXI_rready;
  input [1:0]M20_AXI_rresp;
  input [0:0]M20_AXI_rvalid;
  output [31:0]M20_AXI_wdata;
  input [0:0]M20_AXI_wready;
  output [3:0]M20_AXI_wstrb;
  output [0:0]M20_AXI_wvalid;
  input M21_ACLK;
  input M21_ARESETN;
  output [31:0]M21_AXI_araddr;
  output [2:0]M21_AXI_arprot;
  input M21_AXI_arready;
  output M21_AXI_arvalid;
  output [31:0]M21_AXI_awaddr;
  output [2:0]M21_AXI_awprot;
  input M21_AXI_awready;
  output M21_AXI_awvalid;
  output M21_AXI_bready;
  input [1:0]M21_AXI_bresp;
  input M21_AXI_bvalid;
  input [31:0]M21_AXI_rdata;
  output M21_AXI_rready;
  input [1:0]M21_AXI_rresp;
  input M21_AXI_rvalid;
  output [31:0]M21_AXI_wdata;
  input M21_AXI_wready;
  output [3:0]M21_AXI_wstrb;
  output M21_AXI_wvalid;
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
  output [63:0]S00_AXI_rdata;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [63:0]S00_AXI_wdata;
  output S00_AXI_wready;
  input [7:0]S00_AXI_wstrb;
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
  wire M15_ACLK_1;
  wire M15_ARESETN_1;
  wire M16_ACLK_1;
  wire M16_ARESETN_1;
  wire M17_ACLK_1;
  wire M17_ARESETN_1;
  wire M18_ACLK_1;
  wire M18_ARESETN_1;
  wire M19_ACLK_1;
  wire M19_ARESETN_1;
  wire M20_ACLK_1;
  wire M20_ARESETN_1;
  wire M21_ACLK_1;
  wire M21_ARESETN_1;
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
  wire [63:0]axi_peripheral_interconnect_to_s00_couplers_RDATA;
  wire axi_peripheral_interconnect_to_s00_couplers_RREADY;
  wire [1:0]axi_peripheral_interconnect_to_s00_couplers_RRESP;
  wire axi_peripheral_interconnect_to_s00_couplers_RVALID;
  wire [63:0]axi_peripheral_interconnect_to_s00_couplers_WDATA;
  wire axi_peripheral_interconnect_to_s00_couplers_WREADY;
  wire [7:0]axi_peripheral_interconnect_to_s00_couplers_WSTRB;
  wire axi_peripheral_interconnect_to_s00_couplers_WVALID;
  wire [31:0]i00_couplers_to_tier2_xbar_0_ARADDR;
  wire [2:0]i00_couplers_to_tier2_xbar_0_ARPROT;
  wire [0:0]i00_couplers_to_tier2_xbar_0_ARREADY;
  wire [0:0]i00_couplers_to_tier2_xbar_0_ARVALID;
  wire [31:0]i00_couplers_to_tier2_xbar_0_AWADDR;
  wire [2:0]i00_couplers_to_tier2_xbar_0_AWPROT;
  wire [0:0]i00_couplers_to_tier2_xbar_0_AWREADY;
  wire [0:0]i00_couplers_to_tier2_xbar_0_AWVALID;
  wire [0:0]i00_couplers_to_tier2_xbar_0_BREADY;
  wire [1:0]i00_couplers_to_tier2_xbar_0_BRESP;
  wire [0:0]i00_couplers_to_tier2_xbar_0_BVALID;
  wire [31:0]i00_couplers_to_tier2_xbar_0_RDATA;
  wire [0:0]i00_couplers_to_tier2_xbar_0_RREADY;
  wire [1:0]i00_couplers_to_tier2_xbar_0_RRESP;
  wire [0:0]i00_couplers_to_tier2_xbar_0_RVALID;
  wire [31:0]i00_couplers_to_tier2_xbar_0_WDATA;
  wire [0:0]i00_couplers_to_tier2_xbar_0_WREADY;
  wire [3:0]i00_couplers_to_tier2_xbar_0_WSTRB;
  wire [0:0]i00_couplers_to_tier2_xbar_0_WVALID;
  wire [31:0]i01_couplers_to_tier2_xbar_1_ARADDR;
  wire [2:0]i01_couplers_to_tier2_xbar_1_ARPROT;
  wire [0:0]i01_couplers_to_tier2_xbar_1_ARREADY;
  wire [0:0]i01_couplers_to_tier2_xbar_1_ARVALID;
  wire [31:0]i01_couplers_to_tier2_xbar_1_AWADDR;
  wire [2:0]i01_couplers_to_tier2_xbar_1_AWPROT;
  wire [0:0]i01_couplers_to_tier2_xbar_1_AWREADY;
  wire [0:0]i01_couplers_to_tier2_xbar_1_AWVALID;
  wire [0:0]i01_couplers_to_tier2_xbar_1_BREADY;
  wire [1:0]i01_couplers_to_tier2_xbar_1_BRESP;
  wire [0:0]i01_couplers_to_tier2_xbar_1_BVALID;
  wire [31:0]i01_couplers_to_tier2_xbar_1_RDATA;
  wire [0:0]i01_couplers_to_tier2_xbar_1_RREADY;
  wire [1:0]i01_couplers_to_tier2_xbar_1_RRESP;
  wire [0:0]i01_couplers_to_tier2_xbar_1_RVALID;
  wire [31:0]i01_couplers_to_tier2_xbar_1_WDATA;
  wire [0:0]i01_couplers_to_tier2_xbar_1_WREADY;
  wire [3:0]i01_couplers_to_tier2_xbar_1_WSTRB;
  wire [0:0]i01_couplers_to_tier2_xbar_1_WVALID;
  wire [31:0]i02_couplers_to_tier2_xbar_2_ARADDR;
  wire [2:0]i02_couplers_to_tier2_xbar_2_ARPROT;
  wire [0:0]i02_couplers_to_tier2_xbar_2_ARREADY;
  wire [0:0]i02_couplers_to_tier2_xbar_2_ARVALID;
  wire [31:0]i02_couplers_to_tier2_xbar_2_AWADDR;
  wire [2:0]i02_couplers_to_tier2_xbar_2_AWPROT;
  wire [0:0]i02_couplers_to_tier2_xbar_2_AWREADY;
  wire [0:0]i02_couplers_to_tier2_xbar_2_AWVALID;
  wire [0:0]i02_couplers_to_tier2_xbar_2_BREADY;
  wire [1:0]i02_couplers_to_tier2_xbar_2_BRESP;
  wire [0:0]i02_couplers_to_tier2_xbar_2_BVALID;
  wire [31:0]i02_couplers_to_tier2_xbar_2_RDATA;
  wire [0:0]i02_couplers_to_tier2_xbar_2_RREADY;
  wire [1:0]i02_couplers_to_tier2_xbar_2_RRESP;
  wire [0:0]i02_couplers_to_tier2_xbar_2_RVALID;
  wire [31:0]i02_couplers_to_tier2_xbar_2_WDATA;
  wire [0:0]i02_couplers_to_tier2_xbar_2_WREADY;
  wire [3:0]i02_couplers_to_tier2_xbar_2_WSTRB;
  wire [0:0]i02_couplers_to_tier2_xbar_2_WVALID;
  wire [31:0]m00_couplers_to_axi_peripheral_interconnect_ARADDR;
  wire [2:0]m00_couplers_to_axi_peripheral_interconnect_ARPROT;
  wire m00_couplers_to_axi_peripheral_interconnect_ARREADY;
  wire m00_couplers_to_axi_peripheral_interconnect_ARVALID;
  wire [31:0]m00_couplers_to_axi_peripheral_interconnect_AWADDR;
  wire [2:0]m00_couplers_to_axi_peripheral_interconnect_AWPROT;
  wire m00_couplers_to_axi_peripheral_interconnect_AWREADY;
  wire m00_couplers_to_axi_peripheral_interconnect_AWVALID;
  wire m00_couplers_to_axi_peripheral_interconnect_BREADY;
  wire [1:0]m00_couplers_to_axi_peripheral_interconnect_BRESP;
  wire m00_couplers_to_axi_peripheral_interconnect_BVALID;
  wire [31:0]m00_couplers_to_axi_peripheral_interconnect_RDATA;
  wire m00_couplers_to_axi_peripheral_interconnect_RREADY;
  wire [1:0]m00_couplers_to_axi_peripheral_interconnect_RRESP;
  wire m00_couplers_to_axi_peripheral_interconnect_RVALID;
  wire [31:0]m00_couplers_to_axi_peripheral_interconnect_WDATA;
  wire m00_couplers_to_axi_peripheral_interconnect_WREADY;
  wire [3:0]m00_couplers_to_axi_peripheral_interconnect_WSTRB;
  wire m00_couplers_to_axi_peripheral_interconnect_WVALID;
  wire [31:0]m01_couplers_to_axi_peripheral_interconnect_ARADDR;
  wire [2:0]m01_couplers_to_axi_peripheral_interconnect_ARPROT;
  wire m01_couplers_to_axi_peripheral_interconnect_ARREADY;
  wire m01_couplers_to_axi_peripheral_interconnect_ARVALID;
  wire [31:0]m01_couplers_to_axi_peripheral_interconnect_AWADDR;
  wire [2:0]m01_couplers_to_axi_peripheral_interconnect_AWPROT;
  wire m01_couplers_to_axi_peripheral_interconnect_AWREADY;
  wire m01_couplers_to_axi_peripheral_interconnect_AWVALID;
  wire m01_couplers_to_axi_peripheral_interconnect_BREADY;
  wire [1:0]m01_couplers_to_axi_peripheral_interconnect_BRESP;
  wire m01_couplers_to_axi_peripheral_interconnect_BVALID;
  wire [31:0]m01_couplers_to_axi_peripheral_interconnect_RDATA;
  wire m01_couplers_to_axi_peripheral_interconnect_RREADY;
  wire [1:0]m01_couplers_to_axi_peripheral_interconnect_RRESP;
  wire m01_couplers_to_axi_peripheral_interconnect_RVALID;
  wire [31:0]m01_couplers_to_axi_peripheral_interconnect_WDATA;
  wire m01_couplers_to_axi_peripheral_interconnect_WREADY;
  wire [3:0]m01_couplers_to_axi_peripheral_interconnect_WSTRB;
  wire m01_couplers_to_axi_peripheral_interconnect_WVALID;
  wire [31:0]m02_couplers_to_axi_peripheral_interconnect_ARADDR;
  wire [2:0]m02_couplers_to_axi_peripheral_interconnect_ARPROT;
  wire m02_couplers_to_axi_peripheral_interconnect_ARREADY;
  wire m02_couplers_to_axi_peripheral_interconnect_ARVALID;
  wire [31:0]m02_couplers_to_axi_peripheral_interconnect_AWADDR;
  wire [2:0]m02_couplers_to_axi_peripheral_interconnect_AWPROT;
  wire m02_couplers_to_axi_peripheral_interconnect_AWREADY;
  wire m02_couplers_to_axi_peripheral_interconnect_AWVALID;
  wire m02_couplers_to_axi_peripheral_interconnect_BREADY;
  wire [1:0]m02_couplers_to_axi_peripheral_interconnect_BRESP;
  wire m02_couplers_to_axi_peripheral_interconnect_BVALID;
  wire [31:0]m02_couplers_to_axi_peripheral_interconnect_RDATA;
  wire m02_couplers_to_axi_peripheral_interconnect_RREADY;
  wire [1:0]m02_couplers_to_axi_peripheral_interconnect_RRESP;
  wire m02_couplers_to_axi_peripheral_interconnect_RVALID;
  wire [31:0]m02_couplers_to_axi_peripheral_interconnect_WDATA;
  wire m02_couplers_to_axi_peripheral_interconnect_WREADY;
  wire [3:0]m02_couplers_to_axi_peripheral_interconnect_WSTRB;
  wire m02_couplers_to_axi_peripheral_interconnect_WVALID;
  wire [31:0]m03_couplers_to_axi_peripheral_interconnect_ARADDR;
  wire [2:0]m03_couplers_to_axi_peripheral_interconnect_ARPROT;
  wire m03_couplers_to_axi_peripheral_interconnect_ARREADY;
  wire m03_couplers_to_axi_peripheral_interconnect_ARVALID;
  wire [31:0]m03_couplers_to_axi_peripheral_interconnect_AWADDR;
  wire [2:0]m03_couplers_to_axi_peripheral_interconnect_AWPROT;
  wire m03_couplers_to_axi_peripheral_interconnect_AWREADY;
  wire m03_couplers_to_axi_peripheral_interconnect_AWVALID;
  wire m03_couplers_to_axi_peripheral_interconnect_BREADY;
  wire [1:0]m03_couplers_to_axi_peripheral_interconnect_BRESP;
  wire m03_couplers_to_axi_peripheral_interconnect_BVALID;
  wire [31:0]m03_couplers_to_axi_peripheral_interconnect_RDATA;
  wire m03_couplers_to_axi_peripheral_interconnect_RREADY;
  wire [1:0]m03_couplers_to_axi_peripheral_interconnect_RRESP;
  wire m03_couplers_to_axi_peripheral_interconnect_RVALID;
  wire [31:0]m03_couplers_to_axi_peripheral_interconnect_WDATA;
  wire m03_couplers_to_axi_peripheral_interconnect_WREADY;
  wire [3:0]m03_couplers_to_axi_peripheral_interconnect_WSTRB;
  wire m03_couplers_to_axi_peripheral_interconnect_WVALID;
  wire [31:0]m04_couplers_to_axi_peripheral_interconnect_ARADDR;
  wire [2:0]m04_couplers_to_axi_peripheral_interconnect_ARPROT;
  wire m04_couplers_to_axi_peripheral_interconnect_ARREADY;
  wire m04_couplers_to_axi_peripheral_interconnect_ARVALID;
  wire [31:0]m04_couplers_to_axi_peripheral_interconnect_AWADDR;
  wire [2:0]m04_couplers_to_axi_peripheral_interconnect_AWPROT;
  wire m04_couplers_to_axi_peripheral_interconnect_AWREADY;
  wire m04_couplers_to_axi_peripheral_interconnect_AWVALID;
  wire m04_couplers_to_axi_peripheral_interconnect_BREADY;
  wire [1:0]m04_couplers_to_axi_peripheral_interconnect_BRESP;
  wire m04_couplers_to_axi_peripheral_interconnect_BVALID;
  wire [31:0]m04_couplers_to_axi_peripheral_interconnect_RDATA;
  wire m04_couplers_to_axi_peripheral_interconnect_RREADY;
  wire [1:0]m04_couplers_to_axi_peripheral_interconnect_RRESP;
  wire m04_couplers_to_axi_peripheral_interconnect_RVALID;
  wire [31:0]m04_couplers_to_axi_peripheral_interconnect_WDATA;
  wire m04_couplers_to_axi_peripheral_interconnect_WREADY;
  wire [3:0]m04_couplers_to_axi_peripheral_interconnect_WSTRB;
  wire m04_couplers_to_axi_peripheral_interconnect_WVALID;
  wire [31:0]m05_couplers_to_axi_peripheral_interconnect_ARADDR;
  wire [2:0]m05_couplers_to_axi_peripheral_interconnect_ARPROT;
  wire m05_couplers_to_axi_peripheral_interconnect_ARREADY;
  wire m05_couplers_to_axi_peripheral_interconnect_ARVALID;
  wire [31:0]m05_couplers_to_axi_peripheral_interconnect_AWADDR;
  wire [2:0]m05_couplers_to_axi_peripheral_interconnect_AWPROT;
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
  wire [2:0]m06_couplers_to_axi_peripheral_interconnect_ARPROT;
  wire m06_couplers_to_axi_peripheral_interconnect_ARREADY;
  wire m06_couplers_to_axi_peripheral_interconnect_ARVALID;
  wire [31:0]m06_couplers_to_axi_peripheral_interconnect_AWADDR;
  wire [2:0]m06_couplers_to_axi_peripheral_interconnect_AWPROT;
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
  wire [0:0]m07_couplers_to_axi_peripheral_interconnect_ARREADY;
  wire [0:0]m07_couplers_to_axi_peripheral_interconnect_ARVALID;
  wire [31:0]m07_couplers_to_axi_peripheral_interconnect_AWADDR;
  wire [0:0]m07_couplers_to_axi_peripheral_interconnect_AWREADY;
  wire [0:0]m07_couplers_to_axi_peripheral_interconnect_AWVALID;
  wire [0:0]m07_couplers_to_axi_peripheral_interconnect_BREADY;
  wire [1:0]m07_couplers_to_axi_peripheral_interconnect_BRESP;
  wire [0:0]m07_couplers_to_axi_peripheral_interconnect_BVALID;
  wire [31:0]m07_couplers_to_axi_peripheral_interconnect_RDATA;
  wire [0:0]m07_couplers_to_axi_peripheral_interconnect_RREADY;
  wire [1:0]m07_couplers_to_axi_peripheral_interconnect_RRESP;
  wire [0:0]m07_couplers_to_axi_peripheral_interconnect_RVALID;
  wire [31:0]m07_couplers_to_axi_peripheral_interconnect_WDATA;
  wire [0:0]m07_couplers_to_axi_peripheral_interconnect_WREADY;
  wire [3:0]m07_couplers_to_axi_peripheral_interconnect_WSTRB;
  wire [0:0]m07_couplers_to_axi_peripheral_interconnect_WVALID;
  wire [31:0]m08_couplers_to_axi_peripheral_interconnect_ARADDR;
  wire [0:0]m08_couplers_to_axi_peripheral_interconnect_ARREADY;
  wire [0:0]m08_couplers_to_axi_peripheral_interconnect_ARVALID;
  wire [31:0]m08_couplers_to_axi_peripheral_interconnect_AWADDR;
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
  wire m09_couplers_to_axi_peripheral_interconnect_ARREADY;
  wire m09_couplers_to_axi_peripheral_interconnect_ARVALID;
  wire [31:0]m09_couplers_to_axi_peripheral_interconnect_AWADDR;
  wire m09_couplers_to_axi_peripheral_interconnect_AWREADY;
  wire m09_couplers_to_axi_peripheral_interconnect_AWVALID;
  wire m09_couplers_to_axi_peripheral_interconnect_BREADY;
  wire [1:0]m09_couplers_to_axi_peripheral_interconnect_BRESP;
  wire m09_couplers_to_axi_peripheral_interconnect_BVALID;
  wire [31:0]m09_couplers_to_axi_peripheral_interconnect_RDATA;
  wire m09_couplers_to_axi_peripheral_interconnect_RREADY;
  wire [1:0]m09_couplers_to_axi_peripheral_interconnect_RRESP;
  wire m09_couplers_to_axi_peripheral_interconnect_RVALID;
  wire [31:0]m09_couplers_to_axi_peripheral_interconnect_WDATA;
  wire m09_couplers_to_axi_peripheral_interconnect_WREADY;
  wire [3:0]m09_couplers_to_axi_peripheral_interconnect_WSTRB;
  wire m09_couplers_to_axi_peripheral_interconnect_WVALID;
  wire [31:0]m10_couplers_to_axi_peripheral_interconnect_ARADDR;
  wire [2:0]m10_couplers_to_axi_peripheral_interconnect_ARPROT;
  wire m10_couplers_to_axi_peripheral_interconnect_ARREADY;
  wire m10_couplers_to_axi_peripheral_interconnect_ARVALID;
  wire [31:0]m10_couplers_to_axi_peripheral_interconnect_AWADDR;
  wire [2:0]m10_couplers_to_axi_peripheral_interconnect_AWPROT;
  wire m10_couplers_to_axi_peripheral_interconnect_AWREADY;
  wire m10_couplers_to_axi_peripheral_interconnect_AWVALID;
  wire m10_couplers_to_axi_peripheral_interconnect_BREADY;
  wire [1:0]m10_couplers_to_axi_peripheral_interconnect_BRESP;
  wire m10_couplers_to_axi_peripheral_interconnect_BVALID;
  wire [31:0]m10_couplers_to_axi_peripheral_interconnect_RDATA;
  wire m10_couplers_to_axi_peripheral_interconnect_RREADY;
  wire [1:0]m10_couplers_to_axi_peripheral_interconnect_RRESP;
  wire m10_couplers_to_axi_peripheral_interconnect_RVALID;
  wire [31:0]m10_couplers_to_axi_peripheral_interconnect_WDATA;
  wire m10_couplers_to_axi_peripheral_interconnect_WREADY;
  wire [3:0]m10_couplers_to_axi_peripheral_interconnect_WSTRB;
  wire m10_couplers_to_axi_peripheral_interconnect_WVALID;
  wire [31:0]m11_couplers_to_axi_peripheral_interconnect_ARADDR;
  wire [2:0]m11_couplers_to_axi_peripheral_interconnect_ARPROT;
  wire m11_couplers_to_axi_peripheral_interconnect_ARREADY;
  wire m11_couplers_to_axi_peripheral_interconnect_ARVALID;
  wire [31:0]m11_couplers_to_axi_peripheral_interconnect_AWADDR;
  wire [2:0]m11_couplers_to_axi_peripheral_interconnect_AWPROT;
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
  wire [2:0]m12_couplers_to_axi_peripheral_interconnect_ARPROT;
  wire m12_couplers_to_axi_peripheral_interconnect_ARREADY;
  wire m12_couplers_to_axi_peripheral_interconnect_ARVALID;
  wire [31:0]m12_couplers_to_axi_peripheral_interconnect_AWADDR;
  wire [2:0]m12_couplers_to_axi_peripheral_interconnect_AWPROT;
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
  wire [2:0]m13_couplers_to_axi_peripheral_interconnect_ARPROT;
  wire m13_couplers_to_axi_peripheral_interconnect_ARREADY;
  wire m13_couplers_to_axi_peripheral_interconnect_ARVALID;
  wire [31:0]m13_couplers_to_axi_peripheral_interconnect_AWADDR;
  wire [2:0]m13_couplers_to_axi_peripheral_interconnect_AWPROT;
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
  wire [2:0]m14_couplers_to_axi_peripheral_interconnect_ARPROT;
  wire m14_couplers_to_axi_peripheral_interconnect_ARREADY;
  wire m14_couplers_to_axi_peripheral_interconnect_ARVALID;
  wire [31:0]m14_couplers_to_axi_peripheral_interconnect_AWADDR;
  wire [2:0]m14_couplers_to_axi_peripheral_interconnect_AWPROT;
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
  wire [31:0]m15_couplers_to_axi_peripheral_interconnect_ARADDR;
  wire [2:0]m15_couplers_to_axi_peripheral_interconnect_ARPROT;
  wire m15_couplers_to_axi_peripheral_interconnect_ARREADY;
  wire m15_couplers_to_axi_peripheral_interconnect_ARVALID;
  wire [31:0]m15_couplers_to_axi_peripheral_interconnect_AWADDR;
  wire [2:0]m15_couplers_to_axi_peripheral_interconnect_AWPROT;
  wire m15_couplers_to_axi_peripheral_interconnect_AWREADY;
  wire m15_couplers_to_axi_peripheral_interconnect_AWVALID;
  wire m15_couplers_to_axi_peripheral_interconnect_BREADY;
  wire [1:0]m15_couplers_to_axi_peripheral_interconnect_BRESP;
  wire m15_couplers_to_axi_peripheral_interconnect_BVALID;
  wire [31:0]m15_couplers_to_axi_peripheral_interconnect_RDATA;
  wire m15_couplers_to_axi_peripheral_interconnect_RREADY;
  wire [1:0]m15_couplers_to_axi_peripheral_interconnect_RRESP;
  wire m15_couplers_to_axi_peripheral_interconnect_RVALID;
  wire [31:0]m15_couplers_to_axi_peripheral_interconnect_WDATA;
  wire m15_couplers_to_axi_peripheral_interconnect_WREADY;
  wire [3:0]m15_couplers_to_axi_peripheral_interconnect_WSTRB;
  wire m15_couplers_to_axi_peripheral_interconnect_WVALID;
  wire [31:0]m16_couplers_to_axi_peripheral_interconnect_ARADDR;
  wire m16_couplers_to_axi_peripheral_interconnect_ARREADY;
  wire m16_couplers_to_axi_peripheral_interconnect_ARVALID;
  wire [31:0]m16_couplers_to_axi_peripheral_interconnect_AWADDR;
  wire m16_couplers_to_axi_peripheral_interconnect_AWREADY;
  wire m16_couplers_to_axi_peripheral_interconnect_AWVALID;
  wire m16_couplers_to_axi_peripheral_interconnect_BREADY;
  wire [1:0]m16_couplers_to_axi_peripheral_interconnect_BRESP;
  wire m16_couplers_to_axi_peripheral_interconnect_BVALID;
  wire [31:0]m16_couplers_to_axi_peripheral_interconnect_RDATA;
  wire m16_couplers_to_axi_peripheral_interconnect_RREADY;
  wire [1:0]m16_couplers_to_axi_peripheral_interconnect_RRESP;
  wire m16_couplers_to_axi_peripheral_interconnect_RVALID;
  wire [31:0]m16_couplers_to_axi_peripheral_interconnect_WDATA;
  wire m16_couplers_to_axi_peripheral_interconnect_WREADY;
  wire [3:0]m16_couplers_to_axi_peripheral_interconnect_WSTRB;
  wire m16_couplers_to_axi_peripheral_interconnect_WVALID;
  wire [31:0]m17_couplers_to_axi_peripheral_interconnect_ARADDR;
  wire [2:0]m17_couplers_to_axi_peripheral_interconnect_ARPROT;
  wire m17_couplers_to_axi_peripheral_interconnect_ARREADY;
  wire m17_couplers_to_axi_peripheral_interconnect_ARVALID;
  wire [31:0]m17_couplers_to_axi_peripheral_interconnect_AWADDR;
  wire [2:0]m17_couplers_to_axi_peripheral_interconnect_AWPROT;
  wire m17_couplers_to_axi_peripheral_interconnect_AWREADY;
  wire m17_couplers_to_axi_peripheral_interconnect_AWVALID;
  wire m17_couplers_to_axi_peripheral_interconnect_BREADY;
  wire [1:0]m17_couplers_to_axi_peripheral_interconnect_BRESP;
  wire m17_couplers_to_axi_peripheral_interconnect_BVALID;
  wire [31:0]m17_couplers_to_axi_peripheral_interconnect_RDATA;
  wire m17_couplers_to_axi_peripheral_interconnect_RREADY;
  wire [1:0]m17_couplers_to_axi_peripheral_interconnect_RRESP;
  wire m17_couplers_to_axi_peripheral_interconnect_RVALID;
  wire [31:0]m17_couplers_to_axi_peripheral_interconnect_WDATA;
  wire m17_couplers_to_axi_peripheral_interconnect_WREADY;
  wire [3:0]m17_couplers_to_axi_peripheral_interconnect_WSTRB;
  wire m17_couplers_to_axi_peripheral_interconnect_WVALID;
  wire [31:0]m18_couplers_to_axi_peripheral_interconnect_ARADDR;
  wire [2:0]m18_couplers_to_axi_peripheral_interconnect_ARPROT;
  wire m18_couplers_to_axi_peripheral_interconnect_ARREADY;
  wire m18_couplers_to_axi_peripheral_interconnect_ARVALID;
  wire [31:0]m18_couplers_to_axi_peripheral_interconnect_AWADDR;
  wire [2:0]m18_couplers_to_axi_peripheral_interconnect_AWPROT;
  wire m18_couplers_to_axi_peripheral_interconnect_AWREADY;
  wire m18_couplers_to_axi_peripheral_interconnect_AWVALID;
  wire m18_couplers_to_axi_peripheral_interconnect_BREADY;
  wire [1:0]m18_couplers_to_axi_peripheral_interconnect_BRESP;
  wire m18_couplers_to_axi_peripheral_interconnect_BVALID;
  wire [31:0]m18_couplers_to_axi_peripheral_interconnect_RDATA;
  wire m18_couplers_to_axi_peripheral_interconnect_RREADY;
  wire [1:0]m18_couplers_to_axi_peripheral_interconnect_RRESP;
  wire m18_couplers_to_axi_peripheral_interconnect_RVALID;
  wire [31:0]m18_couplers_to_axi_peripheral_interconnect_WDATA;
  wire m18_couplers_to_axi_peripheral_interconnect_WREADY;
  wire [3:0]m18_couplers_to_axi_peripheral_interconnect_WSTRB;
  wire m18_couplers_to_axi_peripheral_interconnect_WVALID;
  wire [31:0]m19_couplers_to_axi_peripheral_interconnect_ARADDR;
  wire [2:0]m19_couplers_to_axi_peripheral_interconnect_ARPROT;
  wire m19_couplers_to_axi_peripheral_interconnect_ARREADY;
  wire m19_couplers_to_axi_peripheral_interconnect_ARVALID;
  wire [31:0]m19_couplers_to_axi_peripheral_interconnect_AWADDR;
  wire [2:0]m19_couplers_to_axi_peripheral_interconnect_AWPROT;
  wire m19_couplers_to_axi_peripheral_interconnect_AWREADY;
  wire m19_couplers_to_axi_peripheral_interconnect_AWVALID;
  wire m19_couplers_to_axi_peripheral_interconnect_BREADY;
  wire [1:0]m19_couplers_to_axi_peripheral_interconnect_BRESP;
  wire m19_couplers_to_axi_peripheral_interconnect_BVALID;
  wire [31:0]m19_couplers_to_axi_peripheral_interconnect_RDATA;
  wire m19_couplers_to_axi_peripheral_interconnect_RREADY;
  wire [1:0]m19_couplers_to_axi_peripheral_interconnect_RRESP;
  wire m19_couplers_to_axi_peripheral_interconnect_RVALID;
  wire [31:0]m19_couplers_to_axi_peripheral_interconnect_WDATA;
  wire m19_couplers_to_axi_peripheral_interconnect_WREADY;
  wire [3:0]m19_couplers_to_axi_peripheral_interconnect_WSTRB;
  wire m19_couplers_to_axi_peripheral_interconnect_WVALID;
  wire [31:0]m20_couplers_to_axi_peripheral_interconnect_ARADDR;
  wire [0:0]m20_couplers_to_axi_peripheral_interconnect_ARREADY;
  wire [0:0]m20_couplers_to_axi_peripheral_interconnect_ARVALID;
  wire [31:0]m20_couplers_to_axi_peripheral_interconnect_AWADDR;
  wire [0:0]m20_couplers_to_axi_peripheral_interconnect_AWREADY;
  wire [0:0]m20_couplers_to_axi_peripheral_interconnect_AWVALID;
  wire [0:0]m20_couplers_to_axi_peripheral_interconnect_BREADY;
  wire [1:0]m20_couplers_to_axi_peripheral_interconnect_BRESP;
  wire [0:0]m20_couplers_to_axi_peripheral_interconnect_BVALID;
  wire [31:0]m20_couplers_to_axi_peripheral_interconnect_RDATA;
  wire [0:0]m20_couplers_to_axi_peripheral_interconnect_RREADY;
  wire [1:0]m20_couplers_to_axi_peripheral_interconnect_RRESP;
  wire [0:0]m20_couplers_to_axi_peripheral_interconnect_RVALID;
  wire [31:0]m20_couplers_to_axi_peripheral_interconnect_WDATA;
  wire [0:0]m20_couplers_to_axi_peripheral_interconnect_WREADY;
  wire [3:0]m20_couplers_to_axi_peripheral_interconnect_WSTRB;
  wire [0:0]m20_couplers_to_axi_peripheral_interconnect_WVALID;
  wire [31:0]m21_couplers_to_axi_peripheral_interconnect_ARADDR;
  wire [2:0]m21_couplers_to_axi_peripheral_interconnect_ARPROT;
  wire m21_couplers_to_axi_peripheral_interconnect_ARREADY;
  wire m21_couplers_to_axi_peripheral_interconnect_ARVALID;
  wire [31:0]m21_couplers_to_axi_peripheral_interconnect_AWADDR;
  wire [2:0]m21_couplers_to_axi_peripheral_interconnect_AWPROT;
  wire m21_couplers_to_axi_peripheral_interconnect_AWREADY;
  wire m21_couplers_to_axi_peripheral_interconnect_AWVALID;
  wire m21_couplers_to_axi_peripheral_interconnect_BREADY;
  wire [1:0]m21_couplers_to_axi_peripheral_interconnect_BRESP;
  wire m21_couplers_to_axi_peripheral_interconnect_BVALID;
  wire [31:0]m21_couplers_to_axi_peripheral_interconnect_RDATA;
  wire m21_couplers_to_axi_peripheral_interconnect_RREADY;
  wire [1:0]m21_couplers_to_axi_peripheral_interconnect_RRESP;
  wire m21_couplers_to_axi_peripheral_interconnect_RVALID;
  wire [31:0]m21_couplers_to_axi_peripheral_interconnect_WDATA;
  wire m21_couplers_to_axi_peripheral_interconnect_WREADY;
  wire [3:0]m21_couplers_to_axi_peripheral_interconnect_WSTRB;
  wire m21_couplers_to_axi_peripheral_interconnect_WVALID;
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
  wire [31:0]tier2_xbar_0_to_m00_couplers_ARADDR;
  wire [2:0]tier2_xbar_0_to_m00_couplers_ARPROT;
  wire tier2_xbar_0_to_m00_couplers_ARREADY;
  wire [0:0]tier2_xbar_0_to_m00_couplers_ARVALID;
  wire [31:0]tier2_xbar_0_to_m00_couplers_AWADDR;
  wire [2:0]tier2_xbar_0_to_m00_couplers_AWPROT;
  wire tier2_xbar_0_to_m00_couplers_AWREADY;
  wire [0:0]tier2_xbar_0_to_m00_couplers_AWVALID;
  wire [0:0]tier2_xbar_0_to_m00_couplers_BREADY;
  wire [1:0]tier2_xbar_0_to_m00_couplers_BRESP;
  wire tier2_xbar_0_to_m00_couplers_BVALID;
  wire [31:0]tier2_xbar_0_to_m00_couplers_RDATA;
  wire [0:0]tier2_xbar_0_to_m00_couplers_RREADY;
  wire [1:0]tier2_xbar_0_to_m00_couplers_RRESP;
  wire tier2_xbar_0_to_m00_couplers_RVALID;
  wire [31:0]tier2_xbar_0_to_m00_couplers_WDATA;
  wire tier2_xbar_0_to_m00_couplers_WREADY;
  wire [3:0]tier2_xbar_0_to_m00_couplers_WSTRB;
  wire [0:0]tier2_xbar_0_to_m00_couplers_WVALID;
  wire [63:32]tier2_xbar_0_to_m01_couplers_ARADDR;
  wire [5:3]tier2_xbar_0_to_m01_couplers_ARPROT;
  wire tier2_xbar_0_to_m01_couplers_ARREADY;
  wire [1:1]tier2_xbar_0_to_m01_couplers_ARVALID;
  wire [63:32]tier2_xbar_0_to_m01_couplers_AWADDR;
  wire [5:3]tier2_xbar_0_to_m01_couplers_AWPROT;
  wire tier2_xbar_0_to_m01_couplers_AWREADY;
  wire [1:1]tier2_xbar_0_to_m01_couplers_AWVALID;
  wire [1:1]tier2_xbar_0_to_m01_couplers_BREADY;
  wire [1:0]tier2_xbar_0_to_m01_couplers_BRESP;
  wire tier2_xbar_0_to_m01_couplers_BVALID;
  wire [31:0]tier2_xbar_0_to_m01_couplers_RDATA;
  wire [1:1]tier2_xbar_0_to_m01_couplers_RREADY;
  wire [1:0]tier2_xbar_0_to_m01_couplers_RRESP;
  wire tier2_xbar_0_to_m01_couplers_RVALID;
  wire [63:32]tier2_xbar_0_to_m01_couplers_WDATA;
  wire tier2_xbar_0_to_m01_couplers_WREADY;
  wire [7:4]tier2_xbar_0_to_m01_couplers_WSTRB;
  wire [1:1]tier2_xbar_0_to_m01_couplers_WVALID;
  wire [95:64]tier2_xbar_0_to_m02_couplers_ARADDR;
  wire [8:6]tier2_xbar_0_to_m02_couplers_ARPROT;
  wire tier2_xbar_0_to_m02_couplers_ARREADY;
  wire [2:2]tier2_xbar_0_to_m02_couplers_ARVALID;
  wire [95:64]tier2_xbar_0_to_m02_couplers_AWADDR;
  wire [8:6]tier2_xbar_0_to_m02_couplers_AWPROT;
  wire tier2_xbar_0_to_m02_couplers_AWREADY;
  wire [2:2]tier2_xbar_0_to_m02_couplers_AWVALID;
  wire [2:2]tier2_xbar_0_to_m02_couplers_BREADY;
  wire [1:0]tier2_xbar_0_to_m02_couplers_BRESP;
  wire tier2_xbar_0_to_m02_couplers_BVALID;
  wire [31:0]tier2_xbar_0_to_m02_couplers_RDATA;
  wire [2:2]tier2_xbar_0_to_m02_couplers_RREADY;
  wire [1:0]tier2_xbar_0_to_m02_couplers_RRESP;
  wire tier2_xbar_0_to_m02_couplers_RVALID;
  wire [95:64]tier2_xbar_0_to_m02_couplers_WDATA;
  wire tier2_xbar_0_to_m02_couplers_WREADY;
  wire [11:8]tier2_xbar_0_to_m02_couplers_WSTRB;
  wire [2:2]tier2_xbar_0_to_m02_couplers_WVALID;
  wire [127:96]tier2_xbar_0_to_m03_couplers_ARADDR;
  wire [11:9]tier2_xbar_0_to_m03_couplers_ARPROT;
  wire tier2_xbar_0_to_m03_couplers_ARREADY;
  wire [3:3]tier2_xbar_0_to_m03_couplers_ARVALID;
  wire [127:96]tier2_xbar_0_to_m03_couplers_AWADDR;
  wire [11:9]tier2_xbar_0_to_m03_couplers_AWPROT;
  wire tier2_xbar_0_to_m03_couplers_AWREADY;
  wire [3:3]tier2_xbar_0_to_m03_couplers_AWVALID;
  wire [3:3]tier2_xbar_0_to_m03_couplers_BREADY;
  wire [1:0]tier2_xbar_0_to_m03_couplers_BRESP;
  wire tier2_xbar_0_to_m03_couplers_BVALID;
  wire [31:0]tier2_xbar_0_to_m03_couplers_RDATA;
  wire [3:3]tier2_xbar_0_to_m03_couplers_RREADY;
  wire [1:0]tier2_xbar_0_to_m03_couplers_RRESP;
  wire tier2_xbar_0_to_m03_couplers_RVALID;
  wire [127:96]tier2_xbar_0_to_m03_couplers_WDATA;
  wire tier2_xbar_0_to_m03_couplers_WREADY;
  wire [15:12]tier2_xbar_0_to_m03_couplers_WSTRB;
  wire [3:3]tier2_xbar_0_to_m03_couplers_WVALID;
  wire [159:128]tier2_xbar_0_to_m04_couplers_ARADDR;
  wire [14:12]tier2_xbar_0_to_m04_couplers_ARPROT;
  wire tier2_xbar_0_to_m04_couplers_ARREADY;
  wire [4:4]tier2_xbar_0_to_m04_couplers_ARVALID;
  wire [159:128]tier2_xbar_0_to_m04_couplers_AWADDR;
  wire [14:12]tier2_xbar_0_to_m04_couplers_AWPROT;
  wire tier2_xbar_0_to_m04_couplers_AWREADY;
  wire [4:4]tier2_xbar_0_to_m04_couplers_AWVALID;
  wire [4:4]tier2_xbar_0_to_m04_couplers_BREADY;
  wire [1:0]tier2_xbar_0_to_m04_couplers_BRESP;
  wire tier2_xbar_0_to_m04_couplers_BVALID;
  wire [31:0]tier2_xbar_0_to_m04_couplers_RDATA;
  wire [4:4]tier2_xbar_0_to_m04_couplers_RREADY;
  wire [1:0]tier2_xbar_0_to_m04_couplers_RRESP;
  wire tier2_xbar_0_to_m04_couplers_RVALID;
  wire [159:128]tier2_xbar_0_to_m04_couplers_WDATA;
  wire tier2_xbar_0_to_m04_couplers_WREADY;
  wire [19:16]tier2_xbar_0_to_m04_couplers_WSTRB;
  wire [4:4]tier2_xbar_0_to_m04_couplers_WVALID;
  wire [191:160]tier2_xbar_0_to_m05_couplers_ARADDR;
  wire [17:15]tier2_xbar_0_to_m05_couplers_ARPROT;
  wire tier2_xbar_0_to_m05_couplers_ARREADY;
  wire [5:5]tier2_xbar_0_to_m05_couplers_ARVALID;
  wire [191:160]tier2_xbar_0_to_m05_couplers_AWADDR;
  wire [17:15]tier2_xbar_0_to_m05_couplers_AWPROT;
  wire tier2_xbar_0_to_m05_couplers_AWREADY;
  wire [5:5]tier2_xbar_0_to_m05_couplers_AWVALID;
  wire [5:5]tier2_xbar_0_to_m05_couplers_BREADY;
  wire [1:0]tier2_xbar_0_to_m05_couplers_BRESP;
  wire tier2_xbar_0_to_m05_couplers_BVALID;
  wire [31:0]tier2_xbar_0_to_m05_couplers_RDATA;
  wire [5:5]tier2_xbar_0_to_m05_couplers_RREADY;
  wire [1:0]tier2_xbar_0_to_m05_couplers_RRESP;
  wire tier2_xbar_0_to_m05_couplers_RVALID;
  wire [191:160]tier2_xbar_0_to_m05_couplers_WDATA;
  wire tier2_xbar_0_to_m05_couplers_WREADY;
  wire [23:20]tier2_xbar_0_to_m05_couplers_WSTRB;
  wire [5:5]tier2_xbar_0_to_m05_couplers_WVALID;
  wire [223:192]tier2_xbar_0_to_m06_couplers_ARADDR;
  wire [20:18]tier2_xbar_0_to_m06_couplers_ARPROT;
  wire tier2_xbar_0_to_m06_couplers_ARREADY;
  wire [6:6]tier2_xbar_0_to_m06_couplers_ARVALID;
  wire [223:192]tier2_xbar_0_to_m06_couplers_AWADDR;
  wire [20:18]tier2_xbar_0_to_m06_couplers_AWPROT;
  wire tier2_xbar_0_to_m06_couplers_AWREADY;
  wire [6:6]tier2_xbar_0_to_m06_couplers_AWVALID;
  wire [6:6]tier2_xbar_0_to_m06_couplers_BREADY;
  wire [1:0]tier2_xbar_0_to_m06_couplers_BRESP;
  wire tier2_xbar_0_to_m06_couplers_BVALID;
  wire [31:0]tier2_xbar_0_to_m06_couplers_RDATA;
  wire [6:6]tier2_xbar_0_to_m06_couplers_RREADY;
  wire [1:0]tier2_xbar_0_to_m06_couplers_RRESP;
  wire tier2_xbar_0_to_m06_couplers_RVALID;
  wire [223:192]tier2_xbar_0_to_m06_couplers_WDATA;
  wire tier2_xbar_0_to_m06_couplers_WREADY;
  wire [27:24]tier2_xbar_0_to_m06_couplers_WSTRB;
  wire [6:6]tier2_xbar_0_to_m06_couplers_WVALID;
  wire [255:224]tier2_xbar_0_to_m07_couplers_ARADDR;
  wire [0:0]tier2_xbar_0_to_m07_couplers_ARREADY;
  wire [7:7]tier2_xbar_0_to_m07_couplers_ARVALID;
  wire [255:224]tier2_xbar_0_to_m07_couplers_AWADDR;
  wire [0:0]tier2_xbar_0_to_m07_couplers_AWREADY;
  wire [7:7]tier2_xbar_0_to_m07_couplers_AWVALID;
  wire [7:7]tier2_xbar_0_to_m07_couplers_BREADY;
  wire [1:0]tier2_xbar_0_to_m07_couplers_BRESP;
  wire [0:0]tier2_xbar_0_to_m07_couplers_BVALID;
  wire [31:0]tier2_xbar_0_to_m07_couplers_RDATA;
  wire [7:7]tier2_xbar_0_to_m07_couplers_RREADY;
  wire [1:0]tier2_xbar_0_to_m07_couplers_RRESP;
  wire [0:0]tier2_xbar_0_to_m07_couplers_RVALID;
  wire [255:224]tier2_xbar_0_to_m07_couplers_WDATA;
  wire [0:0]tier2_xbar_0_to_m07_couplers_WREADY;
  wire [31:28]tier2_xbar_0_to_m07_couplers_WSTRB;
  wire [7:7]tier2_xbar_0_to_m07_couplers_WVALID;
  wire [31:0]tier2_xbar_1_to_m08_couplers_ARADDR;
  wire [0:0]tier2_xbar_1_to_m08_couplers_ARREADY;
  wire [0:0]tier2_xbar_1_to_m08_couplers_ARVALID;
  wire [31:0]tier2_xbar_1_to_m08_couplers_AWADDR;
  wire [0:0]tier2_xbar_1_to_m08_couplers_AWREADY;
  wire [0:0]tier2_xbar_1_to_m08_couplers_AWVALID;
  wire [0:0]tier2_xbar_1_to_m08_couplers_BREADY;
  wire [1:0]tier2_xbar_1_to_m08_couplers_BRESP;
  wire [0:0]tier2_xbar_1_to_m08_couplers_BVALID;
  wire [31:0]tier2_xbar_1_to_m08_couplers_RDATA;
  wire [0:0]tier2_xbar_1_to_m08_couplers_RREADY;
  wire [1:0]tier2_xbar_1_to_m08_couplers_RRESP;
  wire [0:0]tier2_xbar_1_to_m08_couplers_RVALID;
  wire [31:0]tier2_xbar_1_to_m08_couplers_WDATA;
  wire [0:0]tier2_xbar_1_to_m08_couplers_WREADY;
  wire [3:0]tier2_xbar_1_to_m08_couplers_WSTRB;
  wire [0:0]tier2_xbar_1_to_m08_couplers_WVALID;
  wire [63:32]tier2_xbar_1_to_m09_couplers_ARADDR;
  wire tier2_xbar_1_to_m09_couplers_ARREADY;
  wire [1:1]tier2_xbar_1_to_m09_couplers_ARVALID;
  wire [63:32]tier2_xbar_1_to_m09_couplers_AWADDR;
  wire tier2_xbar_1_to_m09_couplers_AWREADY;
  wire [1:1]tier2_xbar_1_to_m09_couplers_AWVALID;
  wire [1:1]tier2_xbar_1_to_m09_couplers_BREADY;
  wire [1:0]tier2_xbar_1_to_m09_couplers_BRESP;
  wire tier2_xbar_1_to_m09_couplers_BVALID;
  wire [31:0]tier2_xbar_1_to_m09_couplers_RDATA;
  wire [1:1]tier2_xbar_1_to_m09_couplers_RREADY;
  wire [1:0]tier2_xbar_1_to_m09_couplers_RRESP;
  wire tier2_xbar_1_to_m09_couplers_RVALID;
  wire [63:32]tier2_xbar_1_to_m09_couplers_WDATA;
  wire tier2_xbar_1_to_m09_couplers_WREADY;
  wire [7:4]tier2_xbar_1_to_m09_couplers_WSTRB;
  wire [1:1]tier2_xbar_1_to_m09_couplers_WVALID;
  wire [95:64]tier2_xbar_1_to_m10_couplers_ARADDR;
  wire [8:6]tier2_xbar_1_to_m10_couplers_ARPROT;
  wire tier2_xbar_1_to_m10_couplers_ARREADY;
  wire [2:2]tier2_xbar_1_to_m10_couplers_ARVALID;
  wire [95:64]tier2_xbar_1_to_m10_couplers_AWADDR;
  wire [8:6]tier2_xbar_1_to_m10_couplers_AWPROT;
  wire tier2_xbar_1_to_m10_couplers_AWREADY;
  wire [2:2]tier2_xbar_1_to_m10_couplers_AWVALID;
  wire [2:2]tier2_xbar_1_to_m10_couplers_BREADY;
  wire [1:0]tier2_xbar_1_to_m10_couplers_BRESP;
  wire tier2_xbar_1_to_m10_couplers_BVALID;
  wire [31:0]tier2_xbar_1_to_m10_couplers_RDATA;
  wire [2:2]tier2_xbar_1_to_m10_couplers_RREADY;
  wire [1:0]tier2_xbar_1_to_m10_couplers_RRESP;
  wire tier2_xbar_1_to_m10_couplers_RVALID;
  wire [95:64]tier2_xbar_1_to_m10_couplers_WDATA;
  wire tier2_xbar_1_to_m10_couplers_WREADY;
  wire [11:8]tier2_xbar_1_to_m10_couplers_WSTRB;
  wire [2:2]tier2_xbar_1_to_m10_couplers_WVALID;
  wire [127:96]tier2_xbar_1_to_m11_couplers_ARADDR;
  wire [11:9]tier2_xbar_1_to_m11_couplers_ARPROT;
  wire tier2_xbar_1_to_m11_couplers_ARREADY;
  wire [3:3]tier2_xbar_1_to_m11_couplers_ARVALID;
  wire [127:96]tier2_xbar_1_to_m11_couplers_AWADDR;
  wire [11:9]tier2_xbar_1_to_m11_couplers_AWPROT;
  wire tier2_xbar_1_to_m11_couplers_AWREADY;
  wire [3:3]tier2_xbar_1_to_m11_couplers_AWVALID;
  wire [3:3]tier2_xbar_1_to_m11_couplers_BREADY;
  wire [1:0]tier2_xbar_1_to_m11_couplers_BRESP;
  wire tier2_xbar_1_to_m11_couplers_BVALID;
  wire [31:0]tier2_xbar_1_to_m11_couplers_RDATA;
  wire [3:3]tier2_xbar_1_to_m11_couplers_RREADY;
  wire [1:0]tier2_xbar_1_to_m11_couplers_RRESP;
  wire tier2_xbar_1_to_m11_couplers_RVALID;
  wire [127:96]tier2_xbar_1_to_m11_couplers_WDATA;
  wire tier2_xbar_1_to_m11_couplers_WREADY;
  wire [15:12]tier2_xbar_1_to_m11_couplers_WSTRB;
  wire [3:3]tier2_xbar_1_to_m11_couplers_WVALID;
  wire [159:128]tier2_xbar_1_to_m12_couplers_ARADDR;
  wire [14:12]tier2_xbar_1_to_m12_couplers_ARPROT;
  wire tier2_xbar_1_to_m12_couplers_ARREADY;
  wire [4:4]tier2_xbar_1_to_m12_couplers_ARVALID;
  wire [159:128]tier2_xbar_1_to_m12_couplers_AWADDR;
  wire [14:12]tier2_xbar_1_to_m12_couplers_AWPROT;
  wire tier2_xbar_1_to_m12_couplers_AWREADY;
  wire [4:4]tier2_xbar_1_to_m12_couplers_AWVALID;
  wire [4:4]tier2_xbar_1_to_m12_couplers_BREADY;
  wire [1:0]tier2_xbar_1_to_m12_couplers_BRESP;
  wire tier2_xbar_1_to_m12_couplers_BVALID;
  wire [31:0]tier2_xbar_1_to_m12_couplers_RDATA;
  wire [4:4]tier2_xbar_1_to_m12_couplers_RREADY;
  wire [1:0]tier2_xbar_1_to_m12_couplers_RRESP;
  wire tier2_xbar_1_to_m12_couplers_RVALID;
  wire [159:128]tier2_xbar_1_to_m12_couplers_WDATA;
  wire tier2_xbar_1_to_m12_couplers_WREADY;
  wire [19:16]tier2_xbar_1_to_m12_couplers_WSTRB;
  wire [4:4]tier2_xbar_1_to_m12_couplers_WVALID;
  wire [191:160]tier2_xbar_1_to_m13_couplers_ARADDR;
  wire [17:15]tier2_xbar_1_to_m13_couplers_ARPROT;
  wire tier2_xbar_1_to_m13_couplers_ARREADY;
  wire [5:5]tier2_xbar_1_to_m13_couplers_ARVALID;
  wire [191:160]tier2_xbar_1_to_m13_couplers_AWADDR;
  wire [17:15]tier2_xbar_1_to_m13_couplers_AWPROT;
  wire tier2_xbar_1_to_m13_couplers_AWREADY;
  wire [5:5]tier2_xbar_1_to_m13_couplers_AWVALID;
  wire [5:5]tier2_xbar_1_to_m13_couplers_BREADY;
  wire [1:0]tier2_xbar_1_to_m13_couplers_BRESP;
  wire tier2_xbar_1_to_m13_couplers_BVALID;
  wire [31:0]tier2_xbar_1_to_m13_couplers_RDATA;
  wire [5:5]tier2_xbar_1_to_m13_couplers_RREADY;
  wire [1:0]tier2_xbar_1_to_m13_couplers_RRESP;
  wire tier2_xbar_1_to_m13_couplers_RVALID;
  wire [191:160]tier2_xbar_1_to_m13_couplers_WDATA;
  wire tier2_xbar_1_to_m13_couplers_WREADY;
  wire [23:20]tier2_xbar_1_to_m13_couplers_WSTRB;
  wire [5:5]tier2_xbar_1_to_m13_couplers_WVALID;
  wire [223:192]tier2_xbar_1_to_m14_couplers_ARADDR;
  wire [20:18]tier2_xbar_1_to_m14_couplers_ARPROT;
  wire tier2_xbar_1_to_m14_couplers_ARREADY;
  wire [6:6]tier2_xbar_1_to_m14_couplers_ARVALID;
  wire [223:192]tier2_xbar_1_to_m14_couplers_AWADDR;
  wire [20:18]tier2_xbar_1_to_m14_couplers_AWPROT;
  wire tier2_xbar_1_to_m14_couplers_AWREADY;
  wire [6:6]tier2_xbar_1_to_m14_couplers_AWVALID;
  wire [6:6]tier2_xbar_1_to_m14_couplers_BREADY;
  wire [1:0]tier2_xbar_1_to_m14_couplers_BRESP;
  wire tier2_xbar_1_to_m14_couplers_BVALID;
  wire [31:0]tier2_xbar_1_to_m14_couplers_RDATA;
  wire [6:6]tier2_xbar_1_to_m14_couplers_RREADY;
  wire [1:0]tier2_xbar_1_to_m14_couplers_RRESP;
  wire tier2_xbar_1_to_m14_couplers_RVALID;
  wire [223:192]tier2_xbar_1_to_m14_couplers_WDATA;
  wire tier2_xbar_1_to_m14_couplers_WREADY;
  wire [27:24]tier2_xbar_1_to_m14_couplers_WSTRB;
  wire [6:6]tier2_xbar_1_to_m14_couplers_WVALID;
  wire [255:224]tier2_xbar_1_to_m15_couplers_ARADDR;
  wire [23:21]tier2_xbar_1_to_m15_couplers_ARPROT;
  wire tier2_xbar_1_to_m15_couplers_ARREADY;
  wire [7:7]tier2_xbar_1_to_m15_couplers_ARVALID;
  wire [255:224]tier2_xbar_1_to_m15_couplers_AWADDR;
  wire [23:21]tier2_xbar_1_to_m15_couplers_AWPROT;
  wire tier2_xbar_1_to_m15_couplers_AWREADY;
  wire [7:7]tier2_xbar_1_to_m15_couplers_AWVALID;
  wire [7:7]tier2_xbar_1_to_m15_couplers_BREADY;
  wire [1:0]tier2_xbar_1_to_m15_couplers_BRESP;
  wire tier2_xbar_1_to_m15_couplers_BVALID;
  wire [31:0]tier2_xbar_1_to_m15_couplers_RDATA;
  wire [7:7]tier2_xbar_1_to_m15_couplers_RREADY;
  wire [1:0]tier2_xbar_1_to_m15_couplers_RRESP;
  wire tier2_xbar_1_to_m15_couplers_RVALID;
  wire [255:224]tier2_xbar_1_to_m15_couplers_WDATA;
  wire tier2_xbar_1_to_m15_couplers_WREADY;
  wire [31:28]tier2_xbar_1_to_m15_couplers_WSTRB;
  wire [7:7]tier2_xbar_1_to_m15_couplers_WVALID;
  wire [31:0]tier2_xbar_2_to_m16_couplers_ARADDR;
  wire [2:0]tier2_xbar_2_to_m16_couplers_ARPROT;
  wire tier2_xbar_2_to_m16_couplers_ARREADY;
  wire [0:0]tier2_xbar_2_to_m16_couplers_ARVALID;
  wire [31:0]tier2_xbar_2_to_m16_couplers_AWADDR;
  wire [2:0]tier2_xbar_2_to_m16_couplers_AWPROT;
  wire tier2_xbar_2_to_m16_couplers_AWREADY;
  wire [0:0]tier2_xbar_2_to_m16_couplers_AWVALID;
  wire [0:0]tier2_xbar_2_to_m16_couplers_BREADY;
  wire [1:0]tier2_xbar_2_to_m16_couplers_BRESP;
  wire tier2_xbar_2_to_m16_couplers_BVALID;
  wire [31:0]tier2_xbar_2_to_m16_couplers_RDATA;
  wire [0:0]tier2_xbar_2_to_m16_couplers_RREADY;
  wire [1:0]tier2_xbar_2_to_m16_couplers_RRESP;
  wire tier2_xbar_2_to_m16_couplers_RVALID;
  wire [31:0]tier2_xbar_2_to_m16_couplers_WDATA;
  wire tier2_xbar_2_to_m16_couplers_WREADY;
  wire [3:0]tier2_xbar_2_to_m16_couplers_WSTRB;
  wire [0:0]tier2_xbar_2_to_m16_couplers_WVALID;
  wire [63:32]tier2_xbar_2_to_m17_couplers_ARADDR;
  wire [5:3]tier2_xbar_2_to_m17_couplers_ARPROT;
  wire tier2_xbar_2_to_m17_couplers_ARREADY;
  wire [1:1]tier2_xbar_2_to_m17_couplers_ARVALID;
  wire [63:32]tier2_xbar_2_to_m17_couplers_AWADDR;
  wire [5:3]tier2_xbar_2_to_m17_couplers_AWPROT;
  wire tier2_xbar_2_to_m17_couplers_AWREADY;
  wire [1:1]tier2_xbar_2_to_m17_couplers_AWVALID;
  wire [1:1]tier2_xbar_2_to_m17_couplers_BREADY;
  wire [1:0]tier2_xbar_2_to_m17_couplers_BRESP;
  wire tier2_xbar_2_to_m17_couplers_BVALID;
  wire [31:0]tier2_xbar_2_to_m17_couplers_RDATA;
  wire [1:1]tier2_xbar_2_to_m17_couplers_RREADY;
  wire [1:0]tier2_xbar_2_to_m17_couplers_RRESP;
  wire tier2_xbar_2_to_m17_couplers_RVALID;
  wire [63:32]tier2_xbar_2_to_m17_couplers_WDATA;
  wire tier2_xbar_2_to_m17_couplers_WREADY;
  wire [7:4]tier2_xbar_2_to_m17_couplers_WSTRB;
  wire [1:1]tier2_xbar_2_to_m17_couplers_WVALID;
  wire [95:64]tier2_xbar_2_to_m18_couplers_ARADDR;
  wire [8:6]tier2_xbar_2_to_m18_couplers_ARPROT;
  wire tier2_xbar_2_to_m18_couplers_ARREADY;
  wire [2:2]tier2_xbar_2_to_m18_couplers_ARVALID;
  wire [95:64]tier2_xbar_2_to_m18_couplers_AWADDR;
  wire [8:6]tier2_xbar_2_to_m18_couplers_AWPROT;
  wire tier2_xbar_2_to_m18_couplers_AWREADY;
  wire [2:2]tier2_xbar_2_to_m18_couplers_AWVALID;
  wire [2:2]tier2_xbar_2_to_m18_couplers_BREADY;
  wire [1:0]tier2_xbar_2_to_m18_couplers_BRESP;
  wire tier2_xbar_2_to_m18_couplers_BVALID;
  wire [31:0]tier2_xbar_2_to_m18_couplers_RDATA;
  wire [2:2]tier2_xbar_2_to_m18_couplers_RREADY;
  wire [1:0]tier2_xbar_2_to_m18_couplers_RRESP;
  wire tier2_xbar_2_to_m18_couplers_RVALID;
  wire [95:64]tier2_xbar_2_to_m18_couplers_WDATA;
  wire tier2_xbar_2_to_m18_couplers_WREADY;
  wire [11:8]tier2_xbar_2_to_m18_couplers_WSTRB;
  wire [2:2]tier2_xbar_2_to_m18_couplers_WVALID;
  wire [127:96]tier2_xbar_2_to_m19_couplers_ARADDR;
  wire [11:9]tier2_xbar_2_to_m19_couplers_ARPROT;
  wire tier2_xbar_2_to_m19_couplers_ARREADY;
  wire [3:3]tier2_xbar_2_to_m19_couplers_ARVALID;
  wire [127:96]tier2_xbar_2_to_m19_couplers_AWADDR;
  wire [11:9]tier2_xbar_2_to_m19_couplers_AWPROT;
  wire tier2_xbar_2_to_m19_couplers_AWREADY;
  wire [3:3]tier2_xbar_2_to_m19_couplers_AWVALID;
  wire [3:3]tier2_xbar_2_to_m19_couplers_BREADY;
  wire [1:0]tier2_xbar_2_to_m19_couplers_BRESP;
  wire tier2_xbar_2_to_m19_couplers_BVALID;
  wire [31:0]tier2_xbar_2_to_m19_couplers_RDATA;
  wire [3:3]tier2_xbar_2_to_m19_couplers_RREADY;
  wire [1:0]tier2_xbar_2_to_m19_couplers_RRESP;
  wire tier2_xbar_2_to_m19_couplers_RVALID;
  wire [127:96]tier2_xbar_2_to_m19_couplers_WDATA;
  wire tier2_xbar_2_to_m19_couplers_WREADY;
  wire [15:12]tier2_xbar_2_to_m19_couplers_WSTRB;
  wire [3:3]tier2_xbar_2_to_m19_couplers_WVALID;
  wire [159:128]tier2_xbar_2_to_m20_couplers_ARADDR;
  wire [0:0]tier2_xbar_2_to_m20_couplers_ARREADY;
  wire [4:4]tier2_xbar_2_to_m20_couplers_ARVALID;
  wire [159:128]tier2_xbar_2_to_m20_couplers_AWADDR;
  wire [0:0]tier2_xbar_2_to_m20_couplers_AWREADY;
  wire [4:4]tier2_xbar_2_to_m20_couplers_AWVALID;
  wire [4:4]tier2_xbar_2_to_m20_couplers_BREADY;
  wire [1:0]tier2_xbar_2_to_m20_couplers_BRESP;
  wire [0:0]tier2_xbar_2_to_m20_couplers_BVALID;
  wire [31:0]tier2_xbar_2_to_m20_couplers_RDATA;
  wire [4:4]tier2_xbar_2_to_m20_couplers_RREADY;
  wire [1:0]tier2_xbar_2_to_m20_couplers_RRESP;
  wire [0:0]tier2_xbar_2_to_m20_couplers_RVALID;
  wire [159:128]tier2_xbar_2_to_m20_couplers_WDATA;
  wire [0:0]tier2_xbar_2_to_m20_couplers_WREADY;
  wire [19:16]tier2_xbar_2_to_m20_couplers_WSTRB;
  wire [4:4]tier2_xbar_2_to_m20_couplers_WVALID;
  wire [191:160]tier2_xbar_2_to_m21_couplers_ARADDR;
  wire [17:15]tier2_xbar_2_to_m21_couplers_ARPROT;
  wire tier2_xbar_2_to_m21_couplers_ARREADY;
  wire [5:5]tier2_xbar_2_to_m21_couplers_ARVALID;
  wire [191:160]tier2_xbar_2_to_m21_couplers_AWADDR;
  wire [17:15]tier2_xbar_2_to_m21_couplers_AWPROT;
  wire tier2_xbar_2_to_m21_couplers_AWREADY;
  wire [5:5]tier2_xbar_2_to_m21_couplers_AWVALID;
  wire [5:5]tier2_xbar_2_to_m21_couplers_BREADY;
  wire [1:0]tier2_xbar_2_to_m21_couplers_BRESP;
  wire tier2_xbar_2_to_m21_couplers_BVALID;
  wire [31:0]tier2_xbar_2_to_m21_couplers_RDATA;
  wire [5:5]tier2_xbar_2_to_m21_couplers_RREADY;
  wire [1:0]tier2_xbar_2_to_m21_couplers_RRESP;
  wire tier2_xbar_2_to_m21_couplers_RVALID;
  wire [191:160]tier2_xbar_2_to_m21_couplers_WDATA;
  wire tier2_xbar_2_to_m21_couplers_WREADY;
  wire [23:20]tier2_xbar_2_to_m21_couplers_WSTRB;
  wire [5:5]tier2_xbar_2_to_m21_couplers_WVALID;
  wire [31:0]xbar_to_i00_couplers_ARADDR;
  wire [2:0]xbar_to_i00_couplers_ARPROT;
  wire [0:0]xbar_to_i00_couplers_ARREADY;
  wire [0:0]xbar_to_i00_couplers_ARVALID;
  wire [31:0]xbar_to_i00_couplers_AWADDR;
  wire [2:0]xbar_to_i00_couplers_AWPROT;
  wire [0:0]xbar_to_i00_couplers_AWREADY;
  wire [0:0]xbar_to_i00_couplers_AWVALID;
  wire [0:0]xbar_to_i00_couplers_BREADY;
  wire [1:0]xbar_to_i00_couplers_BRESP;
  wire [0:0]xbar_to_i00_couplers_BVALID;
  wire [31:0]xbar_to_i00_couplers_RDATA;
  wire [0:0]xbar_to_i00_couplers_RREADY;
  wire [1:0]xbar_to_i00_couplers_RRESP;
  wire [0:0]xbar_to_i00_couplers_RVALID;
  wire [31:0]xbar_to_i00_couplers_WDATA;
  wire [0:0]xbar_to_i00_couplers_WREADY;
  wire [3:0]xbar_to_i00_couplers_WSTRB;
  wire [0:0]xbar_to_i00_couplers_WVALID;
  wire [63:32]xbar_to_i01_couplers_ARADDR;
  wire [5:3]xbar_to_i01_couplers_ARPROT;
  wire [0:0]xbar_to_i01_couplers_ARREADY;
  wire [1:1]xbar_to_i01_couplers_ARVALID;
  wire [63:32]xbar_to_i01_couplers_AWADDR;
  wire [5:3]xbar_to_i01_couplers_AWPROT;
  wire [0:0]xbar_to_i01_couplers_AWREADY;
  wire [1:1]xbar_to_i01_couplers_AWVALID;
  wire [1:1]xbar_to_i01_couplers_BREADY;
  wire [1:0]xbar_to_i01_couplers_BRESP;
  wire [0:0]xbar_to_i01_couplers_BVALID;
  wire [31:0]xbar_to_i01_couplers_RDATA;
  wire [1:1]xbar_to_i01_couplers_RREADY;
  wire [1:0]xbar_to_i01_couplers_RRESP;
  wire [0:0]xbar_to_i01_couplers_RVALID;
  wire [63:32]xbar_to_i01_couplers_WDATA;
  wire [0:0]xbar_to_i01_couplers_WREADY;
  wire [7:4]xbar_to_i01_couplers_WSTRB;
  wire [1:1]xbar_to_i01_couplers_WVALID;
  wire [95:64]xbar_to_i02_couplers_ARADDR;
  wire [8:6]xbar_to_i02_couplers_ARPROT;
  wire [0:0]xbar_to_i02_couplers_ARREADY;
  wire [2:2]xbar_to_i02_couplers_ARVALID;
  wire [95:64]xbar_to_i02_couplers_AWADDR;
  wire [8:6]xbar_to_i02_couplers_AWPROT;
  wire [0:0]xbar_to_i02_couplers_AWREADY;
  wire [2:2]xbar_to_i02_couplers_AWVALID;
  wire [2:2]xbar_to_i02_couplers_BREADY;
  wire [1:0]xbar_to_i02_couplers_BRESP;
  wire [0:0]xbar_to_i02_couplers_BVALID;
  wire [31:0]xbar_to_i02_couplers_RDATA;
  wire [2:2]xbar_to_i02_couplers_RREADY;
  wire [1:0]xbar_to_i02_couplers_RRESP;
  wire [0:0]xbar_to_i02_couplers_RVALID;
  wire [95:64]xbar_to_i02_couplers_WDATA;
  wire [0:0]xbar_to_i02_couplers_WREADY;
  wire [11:8]xbar_to_i02_couplers_WSTRB;
  wire [2:2]xbar_to_i02_couplers_WVALID;
  wire [23:0]NLW_tier2_xbar_1_m_axi_arprot_UNCONNECTED;
  wire [23:0]NLW_tier2_xbar_1_m_axi_awprot_UNCONNECTED;
  wire [17:0]NLW_tier2_xbar_2_m_axi_arprot_UNCONNECTED;
  wire [17:0]NLW_tier2_xbar_2_m_axi_awprot_UNCONNECTED;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[31:0] = m00_couplers_to_axi_peripheral_interconnect_ARADDR;
  assign M00_AXI_arprot[2:0] = m00_couplers_to_axi_peripheral_interconnect_ARPROT;
  assign M00_AXI_arvalid = m00_couplers_to_axi_peripheral_interconnect_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_axi_peripheral_interconnect_AWADDR;
  assign M00_AXI_awprot[2:0] = m00_couplers_to_axi_peripheral_interconnect_AWPROT;
  assign M00_AXI_awvalid = m00_couplers_to_axi_peripheral_interconnect_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_axi_peripheral_interconnect_BREADY;
  assign M00_AXI_rready = m00_couplers_to_axi_peripheral_interconnect_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_axi_peripheral_interconnect_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_axi_peripheral_interconnect_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_axi_peripheral_interconnect_WVALID;
  assign M01_ACLK_1 = M01_ACLK;
  assign M01_ARESETN_1 = M01_ARESETN;
  assign M01_AXI_araddr[31:0] = m01_couplers_to_axi_peripheral_interconnect_ARADDR;
  assign M01_AXI_arprot[2:0] = m01_couplers_to_axi_peripheral_interconnect_ARPROT;
  assign M01_AXI_arvalid = m01_couplers_to_axi_peripheral_interconnect_ARVALID;
  assign M01_AXI_awaddr[31:0] = m01_couplers_to_axi_peripheral_interconnect_AWADDR;
  assign M01_AXI_awprot[2:0] = m01_couplers_to_axi_peripheral_interconnect_AWPROT;
  assign M01_AXI_awvalid = m01_couplers_to_axi_peripheral_interconnect_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_axi_peripheral_interconnect_BREADY;
  assign M01_AXI_rready = m01_couplers_to_axi_peripheral_interconnect_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_axi_peripheral_interconnect_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_axi_peripheral_interconnect_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_axi_peripheral_interconnect_WVALID;
  assign M02_ACLK_1 = M02_ACLK;
  assign M02_ARESETN_1 = M02_ARESETN;
  assign M02_AXI_araddr[31:0] = m02_couplers_to_axi_peripheral_interconnect_ARADDR;
  assign M02_AXI_arprot[2:0] = m02_couplers_to_axi_peripheral_interconnect_ARPROT;
  assign M02_AXI_arvalid = m02_couplers_to_axi_peripheral_interconnect_ARVALID;
  assign M02_AXI_awaddr[31:0] = m02_couplers_to_axi_peripheral_interconnect_AWADDR;
  assign M02_AXI_awprot[2:0] = m02_couplers_to_axi_peripheral_interconnect_AWPROT;
  assign M02_AXI_awvalid = m02_couplers_to_axi_peripheral_interconnect_AWVALID;
  assign M02_AXI_bready = m02_couplers_to_axi_peripheral_interconnect_BREADY;
  assign M02_AXI_rready = m02_couplers_to_axi_peripheral_interconnect_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_axi_peripheral_interconnect_WDATA;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_axi_peripheral_interconnect_WSTRB;
  assign M02_AXI_wvalid = m02_couplers_to_axi_peripheral_interconnect_WVALID;
  assign M03_ACLK_1 = M03_ACLK;
  assign M03_ARESETN_1 = M03_ARESETN;
  assign M03_AXI_araddr[31:0] = m03_couplers_to_axi_peripheral_interconnect_ARADDR;
  assign M03_AXI_arprot[2:0] = m03_couplers_to_axi_peripheral_interconnect_ARPROT;
  assign M03_AXI_arvalid = m03_couplers_to_axi_peripheral_interconnect_ARVALID;
  assign M03_AXI_awaddr[31:0] = m03_couplers_to_axi_peripheral_interconnect_AWADDR;
  assign M03_AXI_awprot[2:0] = m03_couplers_to_axi_peripheral_interconnect_AWPROT;
  assign M03_AXI_awvalid = m03_couplers_to_axi_peripheral_interconnect_AWVALID;
  assign M03_AXI_bready = m03_couplers_to_axi_peripheral_interconnect_BREADY;
  assign M03_AXI_rready = m03_couplers_to_axi_peripheral_interconnect_RREADY;
  assign M03_AXI_wdata[31:0] = m03_couplers_to_axi_peripheral_interconnect_WDATA;
  assign M03_AXI_wstrb[3:0] = m03_couplers_to_axi_peripheral_interconnect_WSTRB;
  assign M03_AXI_wvalid = m03_couplers_to_axi_peripheral_interconnect_WVALID;
  assign M04_ACLK_1 = M04_ACLK;
  assign M04_ARESETN_1 = M04_ARESETN;
  assign M04_AXI_araddr[31:0] = m04_couplers_to_axi_peripheral_interconnect_ARADDR;
  assign M04_AXI_arprot[2:0] = m04_couplers_to_axi_peripheral_interconnect_ARPROT;
  assign M04_AXI_arvalid = m04_couplers_to_axi_peripheral_interconnect_ARVALID;
  assign M04_AXI_awaddr[31:0] = m04_couplers_to_axi_peripheral_interconnect_AWADDR;
  assign M04_AXI_awprot[2:0] = m04_couplers_to_axi_peripheral_interconnect_AWPROT;
  assign M04_AXI_awvalid = m04_couplers_to_axi_peripheral_interconnect_AWVALID;
  assign M04_AXI_bready = m04_couplers_to_axi_peripheral_interconnect_BREADY;
  assign M04_AXI_rready = m04_couplers_to_axi_peripheral_interconnect_RREADY;
  assign M04_AXI_wdata[31:0] = m04_couplers_to_axi_peripheral_interconnect_WDATA;
  assign M04_AXI_wstrb[3:0] = m04_couplers_to_axi_peripheral_interconnect_WSTRB;
  assign M04_AXI_wvalid = m04_couplers_to_axi_peripheral_interconnect_WVALID;
  assign M05_ACLK_1 = M05_ACLK;
  assign M05_ARESETN_1 = M05_ARESETN;
  assign M05_AXI_araddr[31:0] = m05_couplers_to_axi_peripheral_interconnect_ARADDR;
  assign M05_AXI_arprot[2:0] = m05_couplers_to_axi_peripheral_interconnect_ARPROT;
  assign M05_AXI_arvalid = m05_couplers_to_axi_peripheral_interconnect_ARVALID;
  assign M05_AXI_awaddr[31:0] = m05_couplers_to_axi_peripheral_interconnect_AWADDR;
  assign M05_AXI_awprot[2:0] = m05_couplers_to_axi_peripheral_interconnect_AWPROT;
  assign M05_AXI_awvalid = m05_couplers_to_axi_peripheral_interconnect_AWVALID;
  assign M05_AXI_bready = m05_couplers_to_axi_peripheral_interconnect_BREADY;
  assign M05_AXI_rready = m05_couplers_to_axi_peripheral_interconnect_RREADY;
  assign M05_AXI_wdata[31:0] = m05_couplers_to_axi_peripheral_interconnect_WDATA;
  assign M05_AXI_wstrb[3:0] = m05_couplers_to_axi_peripheral_interconnect_WSTRB;
  assign M05_AXI_wvalid = m05_couplers_to_axi_peripheral_interconnect_WVALID;
  assign M06_ACLK_1 = M06_ACLK;
  assign M06_ARESETN_1 = M06_ARESETN;
  assign M06_AXI_araddr[31:0] = m06_couplers_to_axi_peripheral_interconnect_ARADDR;
  assign M06_AXI_arprot[2:0] = m06_couplers_to_axi_peripheral_interconnect_ARPROT;
  assign M06_AXI_arvalid = m06_couplers_to_axi_peripheral_interconnect_ARVALID;
  assign M06_AXI_awaddr[31:0] = m06_couplers_to_axi_peripheral_interconnect_AWADDR;
  assign M06_AXI_awprot[2:0] = m06_couplers_to_axi_peripheral_interconnect_AWPROT;
  assign M06_AXI_awvalid = m06_couplers_to_axi_peripheral_interconnect_AWVALID;
  assign M06_AXI_bready = m06_couplers_to_axi_peripheral_interconnect_BREADY;
  assign M06_AXI_rready = m06_couplers_to_axi_peripheral_interconnect_RREADY;
  assign M06_AXI_wdata[31:0] = m06_couplers_to_axi_peripheral_interconnect_WDATA;
  assign M06_AXI_wstrb[3:0] = m06_couplers_to_axi_peripheral_interconnect_WSTRB;
  assign M06_AXI_wvalid = m06_couplers_to_axi_peripheral_interconnect_WVALID;
  assign M07_ACLK_1 = M07_ACLK;
  assign M07_ARESETN_1 = M07_ARESETN;
  assign M07_AXI_araddr[31:0] = m07_couplers_to_axi_peripheral_interconnect_ARADDR;
  assign M07_AXI_arvalid[0] = m07_couplers_to_axi_peripheral_interconnect_ARVALID;
  assign M07_AXI_awaddr[31:0] = m07_couplers_to_axi_peripheral_interconnect_AWADDR;
  assign M07_AXI_awvalid[0] = m07_couplers_to_axi_peripheral_interconnect_AWVALID;
  assign M07_AXI_bready[0] = m07_couplers_to_axi_peripheral_interconnect_BREADY;
  assign M07_AXI_rready[0] = m07_couplers_to_axi_peripheral_interconnect_RREADY;
  assign M07_AXI_wdata[31:0] = m07_couplers_to_axi_peripheral_interconnect_WDATA;
  assign M07_AXI_wstrb[3:0] = m07_couplers_to_axi_peripheral_interconnect_WSTRB;
  assign M07_AXI_wvalid[0] = m07_couplers_to_axi_peripheral_interconnect_WVALID;
  assign M08_ACLK_1 = M08_ACLK;
  assign M08_ARESETN_1 = M08_ARESETN;
  assign M08_AXI_araddr[31:0] = m08_couplers_to_axi_peripheral_interconnect_ARADDR;
  assign M08_AXI_arvalid[0] = m08_couplers_to_axi_peripheral_interconnect_ARVALID;
  assign M08_AXI_awaddr[31:0] = m08_couplers_to_axi_peripheral_interconnect_AWADDR;
  assign M08_AXI_awvalid[0] = m08_couplers_to_axi_peripheral_interconnect_AWVALID;
  assign M08_AXI_bready[0] = m08_couplers_to_axi_peripheral_interconnect_BREADY;
  assign M08_AXI_rready[0] = m08_couplers_to_axi_peripheral_interconnect_RREADY;
  assign M08_AXI_wdata[31:0] = m08_couplers_to_axi_peripheral_interconnect_WDATA;
  assign M08_AXI_wstrb[3:0] = m08_couplers_to_axi_peripheral_interconnect_WSTRB;
  assign M08_AXI_wvalid[0] = m08_couplers_to_axi_peripheral_interconnect_WVALID;
  assign M09_ACLK_1 = M09_ACLK;
  assign M09_ARESETN_1 = M09_ARESETN;
  assign M09_AXI_araddr[31:0] = m09_couplers_to_axi_peripheral_interconnect_ARADDR;
  assign M09_AXI_arvalid = m09_couplers_to_axi_peripheral_interconnect_ARVALID;
  assign M09_AXI_awaddr[31:0] = m09_couplers_to_axi_peripheral_interconnect_AWADDR;
  assign M09_AXI_awvalid = m09_couplers_to_axi_peripheral_interconnect_AWVALID;
  assign M09_AXI_bready = m09_couplers_to_axi_peripheral_interconnect_BREADY;
  assign M09_AXI_rready = m09_couplers_to_axi_peripheral_interconnect_RREADY;
  assign M09_AXI_wdata[31:0] = m09_couplers_to_axi_peripheral_interconnect_WDATA;
  assign M09_AXI_wstrb[3:0] = m09_couplers_to_axi_peripheral_interconnect_WSTRB;
  assign M09_AXI_wvalid = m09_couplers_to_axi_peripheral_interconnect_WVALID;
  assign M10_ACLK_1 = M10_ACLK;
  assign M10_ARESETN_1 = M10_ARESETN;
  assign M10_AXI_araddr[31:0] = m10_couplers_to_axi_peripheral_interconnect_ARADDR;
  assign M10_AXI_arprot[2:0] = m10_couplers_to_axi_peripheral_interconnect_ARPROT;
  assign M10_AXI_arvalid = m10_couplers_to_axi_peripheral_interconnect_ARVALID;
  assign M10_AXI_awaddr[31:0] = m10_couplers_to_axi_peripheral_interconnect_AWADDR;
  assign M10_AXI_awprot[2:0] = m10_couplers_to_axi_peripheral_interconnect_AWPROT;
  assign M10_AXI_awvalid = m10_couplers_to_axi_peripheral_interconnect_AWVALID;
  assign M10_AXI_bready = m10_couplers_to_axi_peripheral_interconnect_BREADY;
  assign M10_AXI_rready = m10_couplers_to_axi_peripheral_interconnect_RREADY;
  assign M10_AXI_wdata[31:0] = m10_couplers_to_axi_peripheral_interconnect_WDATA;
  assign M10_AXI_wstrb[3:0] = m10_couplers_to_axi_peripheral_interconnect_WSTRB;
  assign M10_AXI_wvalid = m10_couplers_to_axi_peripheral_interconnect_WVALID;
  assign M11_ACLK_1 = M11_ACLK;
  assign M11_ARESETN_1 = M11_ARESETN;
  assign M11_AXI_araddr[31:0] = m11_couplers_to_axi_peripheral_interconnect_ARADDR;
  assign M11_AXI_arprot[2:0] = m11_couplers_to_axi_peripheral_interconnect_ARPROT;
  assign M11_AXI_arvalid = m11_couplers_to_axi_peripheral_interconnect_ARVALID;
  assign M11_AXI_awaddr[31:0] = m11_couplers_to_axi_peripheral_interconnect_AWADDR;
  assign M11_AXI_awprot[2:0] = m11_couplers_to_axi_peripheral_interconnect_AWPROT;
  assign M11_AXI_awvalid = m11_couplers_to_axi_peripheral_interconnect_AWVALID;
  assign M11_AXI_bready = m11_couplers_to_axi_peripheral_interconnect_BREADY;
  assign M11_AXI_rready = m11_couplers_to_axi_peripheral_interconnect_RREADY;
  assign M11_AXI_wdata[31:0] = m11_couplers_to_axi_peripheral_interconnect_WDATA;
  assign M11_AXI_wstrb[3:0] = m11_couplers_to_axi_peripheral_interconnect_WSTRB;
  assign M11_AXI_wvalid = m11_couplers_to_axi_peripheral_interconnect_WVALID;
  assign M12_ACLK_1 = M12_ACLK;
  assign M12_ARESETN_1 = M12_ARESETN;
  assign M12_AXI_araddr[31:0] = m12_couplers_to_axi_peripheral_interconnect_ARADDR;
  assign M12_AXI_arprot[2:0] = m12_couplers_to_axi_peripheral_interconnect_ARPROT;
  assign M12_AXI_arvalid = m12_couplers_to_axi_peripheral_interconnect_ARVALID;
  assign M12_AXI_awaddr[31:0] = m12_couplers_to_axi_peripheral_interconnect_AWADDR;
  assign M12_AXI_awprot[2:0] = m12_couplers_to_axi_peripheral_interconnect_AWPROT;
  assign M12_AXI_awvalid = m12_couplers_to_axi_peripheral_interconnect_AWVALID;
  assign M12_AXI_bready = m12_couplers_to_axi_peripheral_interconnect_BREADY;
  assign M12_AXI_rready = m12_couplers_to_axi_peripheral_interconnect_RREADY;
  assign M12_AXI_wdata[31:0] = m12_couplers_to_axi_peripheral_interconnect_WDATA;
  assign M12_AXI_wstrb[3:0] = m12_couplers_to_axi_peripheral_interconnect_WSTRB;
  assign M12_AXI_wvalid = m12_couplers_to_axi_peripheral_interconnect_WVALID;
  assign M13_ACLK_1 = M13_ACLK;
  assign M13_ARESETN_1 = M13_ARESETN;
  assign M13_AXI_araddr[31:0] = m13_couplers_to_axi_peripheral_interconnect_ARADDR;
  assign M13_AXI_arprot[2:0] = m13_couplers_to_axi_peripheral_interconnect_ARPROT;
  assign M13_AXI_arvalid = m13_couplers_to_axi_peripheral_interconnect_ARVALID;
  assign M13_AXI_awaddr[31:0] = m13_couplers_to_axi_peripheral_interconnect_AWADDR;
  assign M13_AXI_awprot[2:0] = m13_couplers_to_axi_peripheral_interconnect_AWPROT;
  assign M13_AXI_awvalid = m13_couplers_to_axi_peripheral_interconnect_AWVALID;
  assign M13_AXI_bready = m13_couplers_to_axi_peripheral_interconnect_BREADY;
  assign M13_AXI_rready = m13_couplers_to_axi_peripheral_interconnect_RREADY;
  assign M13_AXI_wdata[31:0] = m13_couplers_to_axi_peripheral_interconnect_WDATA;
  assign M13_AXI_wstrb[3:0] = m13_couplers_to_axi_peripheral_interconnect_WSTRB;
  assign M13_AXI_wvalid = m13_couplers_to_axi_peripheral_interconnect_WVALID;
  assign M14_ACLK_1 = M14_ACLK;
  assign M14_ARESETN_1 = M14_ARESETN;
  assign M14_AXI_araddr[31:0] = m14_couplers_to_axi_peripheral_interconnect_ARADDR;
  assign M14_AXI_arprot[2:0] = m14_couplers_to_axi_peripheral_interconnect_ARPROT;
  assign M14_AXI_arvalid = m14_couplers_to_axi_peripheral_interconnect_ARVALID;
  assign M14_AXI_awaddr[31:0] = m14_couplers_to_axi_peripheral_interconnect_AWADDR;
  assign M14_AXI_awprot[2:0] = m14_couplers_to_axi_peripheral_interconnect_AWPROT;
  assign M14_AXI_awvalid = m14_couplers_to_axi_peripheral_interconnect_AWVALID;
  assign M14_AXI_bready = m14_couplers_to_axi_peripheral_interconnect_BREADY;
  assign M14_AXI_rready = m14_couplers_to_axi_peripheral_interconnect_RREADY;
  assign M14_AXI_wdata[31:0] = m14_couplers_to_axi_peripheral_interconnect_WDATA;
  assign M14_AXI_wstrb[3:0] = m14_couplers_to_axi_peripheral_interconnect_WSTRB;
  assign M14_AXI_wvalid = m14_couplers_to_axi_peripheral_interconnect_WVALID;
  assign M15_ACLK_1 = M15_ACLK;
  assign M15_ARESETN_1 = M15_ARESETN;
  assign M15_AXI_araddr[31:0] = m15_couplers_to_axi_peripheral_interconnect_ARADDR;
  assign M15_AXI_arprot[2:0] = m15_couplers_to_axi_peripheral_interconnect_ARPROT;
  assign M15_AXI_arvalid = m15_couplers_to_axi_peripheral_interconnect_ARVALID;
  assign M15_AXI_awaddr[31:0] = m15_couplers_to_axi_peripheral_interconnect_AWADDR;
  assign M15_AXI_awprot[2:0] = m15_couplers_to_axi_peripheral_interconnect_AWPROT;
  assign M15_AXI_awvalid = m15_couplers_to_axi_peripheral_interconnect_AWVALID;
  assign M15_AXI_bready = m15_couplers_to_axi_peripheral_interconnect_BREADY;
  assign M15_AXI_rready = m15_couplers_to_axi_peripheral_interconnect_RREADY;
  assign M15_AXI_wdata[31:0] = m15_couplers_to_axi_peripheral_interconnect_WDATA;
  assign M15_AXI_wstrb[3:0] = m15_couplers_to_axi_peripheral_interconnect_WSTRB;
  assign M15_AXI_wvalid = m15_couplers_to_axi_peripheral_interconnect_WVALID;
  assign M16_ACLK_1 = M16_ACLK;
  assign M16_ARESETN_1 = M16_ARESETN;
  assign M16_AXI_araddr[31:0] = m16_couplers_to_axi_peripheral_interconnect_ARADDR;
  assign M16_AXI_arvalid = m16_couplers_to_axi_peripheral_interconnect_ARVALID;
  assign M16_AXI_awaddr[31:0] = m16_couplers_to_axi_peripheral_interconnect_AWADDR;
  assign M16_AXI_awvalid = m16_couplers_to_axi_peripheral_interconnect_AWVALID;
  assign M16_AXI_bready = m16_couplers_to_axi_peripheral_interconnect_BREADY;
  assign M16_AXI_rready = m16_couplers_to_axi_peripheral_interconnect_RREADY;
  assign M16_AXI_wdata[31:0] = m16_couplers_to_axi_peripheral_interconnect_WDATA;
  assign M16_AXI_wstrb[3:0] = m16_couplers_to_axi_peripheral_interconnect_WSTRB;
  assign M16_AXI_wvalid = m16_couplers_to_axi_peripheral_interconnect_WVALID;
  assign M17_ACLK_1 = M17_ACLK;
  assign M17_ARESETN_1 = M17_ARESETN;
  assign M17_AXI_araddr[31:0] = m17_couplers_to_axi_peripheral_interconnect_ARADDR;
  assign M17_AXI_arprot[2:0] = m17_couplers_to_axi_peripheral_interconnect_ARPROT;
  assign M17_AXI_arvalid = m17_couplers_to_axi_peripheral_interconnect_ARVALID;
  assign M17_AXI_awaddr[31:0] = m17_couplers_to_axi_peripheral_interconnect_AWADDR;
  assign M17_AXI_awprot[2:0] = m17_couplers_to_axi_peripheral_interconnect_AWPROT;
  assign M17_AXI_awvalid = m17_couplers_to_axi_peripheral_interconnect_AWVALID;
  assign M17_AXI_bready = m17_couplers_to_axi_peripheral_interconnect_BREADY;
  assign M17_AXI_rready = m17_couplers_to_axi_peripheral_interconnect_RREADY;
  assign M17_AXI_wdata[31:0] = m17_couplers_to_axi_peripheral_interconnect_WDATA;
  assign M17_AXI_wstrb[3:0] = m17_couplers_to_axi_peripheral_interconnect_WSTRB;
  assign M17_AXI_wvalid = m17_couplers_to_axi_peripheral_interconnect_WVALID;
  assign M18_ACLK_1 = M18_ACLK;
  assign M18_ARESETN_1 = M18_ARESETN;
  assign M18_AXI_araddr[31:0] = m18_couplers_to_axi_peripheral_interconnect_ARADDR;
  assign M18_AXI_arprot[2:0] = m18_couplers_to_axi_peripheral_interconnect_ARPROT;
  assign M18_AXI_arvalid = m18_couplers_to_axi_peripheral_interconnect_ARVALID;
  assign M18_AXI_awaddr[31:0] = m18_couplers_to_axi_peripheral_interconnect_AWADDR;
  assign M18_AXI_awprot[2:0] = m18_couplers_to_axi_peripheral_interconnect_AWPROT;
  assign M18_AXI_awvalid = m18_couplers_to_axi_peripheral_interconnect_AWVALID;
  assign M18_AXI_bready = m18_couplers_to_axi_peripheral_interconnect_BREADY;
  assign M18_AXI_rready = m18_couplers_to_axi_peripheral_interconnect_RREADY;
  assign M18_AXI_wdata[31:0] = m18_couplers_to_axi_peripheral_interconnect_WDATA;
  assign M18_AXI_wstrb[3:0] = m18_couplers_to_axi_peripheral_interconnect_WSTRB;
  assign M18_AXI_wvalid = m18_couplers_to_axi_peripheral_interconnect_WVALID;
  assign M19_ACLK_1 = M19_ACLK;
  assign M19_ARESETN_1 = M19_ARESETN;
  assign M19_AXI_araddr[31:0] = m19_couplers_to_axi_peripheral_interconnect_ARADDR;
  assign M19_AXI_arprot[2:0] = m19_couplers_to_axi_peripheral_interconnect_ARPROT;
  assign M19_AXI_arvalid = m19_couplers_to_axi_peripheral_interconnect_ARVALID;
  assign M19_AXI_awaddr[31:0] = m19_couplers_to_axi_peripheral_interconnect_AWADDR;
  assign M19_AXI_awprot[2:0] = m19_couplers_to_axi_peripheral_interconnect_AWPROT;
  assign M19_AXI_awvalid = m19_couplers_to_axi_peripheral_interconnect_AWVALID;
  assign M19_AXI_bready = m19_couplers_to_axi_peripheral_interconnect_BREADY;
  assign M19_AXI_rready = m19_couplers_to_axi_peripheral_interconnect_RREADY;
  assign M19_AXI_wdata[31:0] = m19_couplers_to_axi_peripheral_interconnect_WDATA;
  assign M19_AXI_wstrb[3:0] = m19_couplers_to_axi_peripheral_interconnect_WSTRB;
  assign M19_AXI_wvalid = m19_couplers_to_axi_peripheral_interconnect_WVALID;
  assign M20_ACLK_1 = M20_ACLK;
  assign M20_ARESETN_1 = M20_ARESETN;
  assign M20_AXI_araddr[31:0] = m20_couplers_to_axi_peripheral_interconnect_ARADDR;
  assign M20_AXI_arvalid[0] = m20_couplers_to_axi_peripheral_interconnect_ARVALID;
  assign M20_AXI_awaddr[31:0] = m20_couplers_to_axi_peripheral_interconnect_AWADDR;
  assign M20_AXI_awvalid[0] = m20_couplers_to_axi_peripheral_interconnect_AWVALID;
  assign M20_AXI_bready[0] = m20_couplers_to_axi_peripheral_interconnect_BREADY;
  assign M20_AXI_rready[0] = m20_couplers_to_axi_peripheral_interconnect_RREADY;
  assign M20_AXI_wdata[31:0] = m20_couplers_to_axi_peripheral_interconnect_WDATA;
  assign M20_AXI_wstrb[3:0] = m20_couplers_to_axi_peripheral_interconnect_WSTRB;
  assign M20_AXI_wvalid[0] = m20_couplers_to_axi_peripheral_interconnect_WVALID;
  assign M21_ACLK_1 = M21_ACLK;
  assign M21_ARESETN_1 = M21_ARESETN;
  assign M21_AXI_araddr[31:0] = m21_couplers_to_axi_peripheral_interconnect_ARADDR;
  assign M21_AXI_arprot[2:0] = m21_couplers_to_axi_peripheral_interconnect_ARPROT;
  assign M21_AXI_arvalid = m21_couplers_to_axi_peripheral_interconnect_ARVALID;
  assign M21_AXI_awaddr[31:0] = m21_couplers_to_axi_peripheral_interconnect_AWADDR;
  assign M21_AXI_awprot[2:0] = m21_couplers_to_axi_peripheral_interconnect_AWPROT;
  assign M21_AXI_awvalid = m21_couplers_to_axi_peripheral_interconnect_AWVALID;
  assign M21_AXI_bready = m21_couplers_to_axi_peripheral_interconnect_BREADY;
  assign M21_AXI_rready = m21_couplers_to_axi_peripheral_interconnect_RREADY;
  assign M21_AXI_wdata[31:0] = m21_couplers_to_axi_peripheral_interconnect_WDATA;
  assign M21_AXI_wstrb[3:0] = m21_couplers_to_axi_peripheral_interconnect_WSTRB;
  assign M21_AXI_wvalid = m21_couplers_to_axi_peripheral_interconnect_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = axi_peripheral_interconnect_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = axi_peripheral_interconnect_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = axi_peripheral_interconnect_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_peripheral_interconnect_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[63:0] = axi_peripheral_interconnect_to_s00_couplers_RDATA;
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
  assign axi_peripheral_interconnect_to_s00_couplers_WDATA = S00_AXI_wdata[63:0];
  assign axi_peripheral_interconnect_to_s00_couplers_WSTRB = S00_AXI_wstrb[7:0];
  assign axi_peripheral_interconnect_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign m00_couplers_to_axi_peripheral_interconnect_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_axi_peripheral_interconnect_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_axi_peripheral_interconnect_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_peripheral_interconnect_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_axi_peripheral_interconnect_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_axi_peripheral_interconnect_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_peripheral_interconnect_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_axi_peripheral_interconnect_WREADY = M00_AXI_wready;
  assign m01_couplers_to_axi_peripheral_interconnect_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_axi_peripheral_interconnect_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_axi_peripheral_interconnect_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_axi_peripheral_interconnect_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_axi_peripheral_interconnect_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_axi_peripheral_interconnect_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_axi_peripheral_interconnect_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_axi_peripheral_interconnect_WREADY = M01_AXI_wready;
  assign m02_couplers_to_axi_peripheral_interconnect_ARREADY = M02_AXI_arready;
  assign m02_couplers_to_axi_peripheral_interconnect_AWREADY = M02_AXI_awready;
  assign m02_couplers_to_axi_peripheral_interconnect_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_axi_peripheral_interconnect_BVALID = M02_AXI_bvalid;
  assign m02_couplers_to_axi_peripheral_interconnect_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_axi_peripheral_interconnect_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_axi_peripheral_interconnect_RVALID = M02_AXI_rvalid;
  assign m02_couplers_to_axi_peripheral_interconnect_WREADY = M02_AXI_wready;
  assign m03_couplers_to_axi_peripheral_interconnect_ARREADY = M03_AXI_arready;
  assign m03_couplers_to_axi_peripheral_interconnect_AWREADY = M03_AXI_awready;
  assign m03_couplers_to_axi_peripheral_interconnect_BRESP = M03_AXI_bresp[1:0];
  assign m03_couplers_to_axi_peripheral_interconnect_BVALID = M03_AXI_bvalid;
  assign m03_couplers_to_axi_peripheral_interconnect_RDATA = M03_AXI_rdata[31:0];
  assign m03_couplers_to_axi_peripheral_interconnect_RRESP = M03_AXI_rresp[1:0];
  assign m03_couplers_to_axi_peripheral_interconnect_RVALID = M03_AXI_rvalid;
  assign m03_couplers_to_axi_peripheral_interconnect_WREADY = M03_AXI_wready;
  assign m04_couplers_to_axi_peripheral_interconnect_ARREADY = M04_AXI_arready;
  assign m04_couplers_to_axi_peripheral_interconnect_AWREADY = M04_AXI_awready;
  assign m04_couplers_to_axi_peripheral_interconnect_BRESP = M04_AXI_bresp[1:0];
  assign m04_couplers_to_axi_peripheral_interconnect_BVALID = M04_AXI_bvalid;
  assign m04_couplers_to_axi_peripheral_interconnect_RDATA = M04_AXI_rdata[31:0];
  assign m04_couplers_to_axi_peripheral_interconnect_RRESP = M04_AXI_rresp[1:0];
  assign m04_couplers_to_axi_peripheral_interconnect_RVALID = M04_AXI_rvalid;
  assign m04_couplers_to_axi_peripheral_interconnect_WREADY = M04_AXI_wready;
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
  assign m07_couplers_to_axi_peripheral_interconnect_ARREADY = M07_AXI_arready[0];
  assign m07_couplers_to_axi_peripheral_interconnect_AWREADY = M07_AXI_awready[0];
  assign m07_couplers_to_axi_peripheral_interconnect_BRESP = M07_AXI_bresp[1:0];
  assign m07_couplers_to_axi_peripheral_interconnect_BVALID = M07_AXI_bvalid[0];
  assign m07_couplers_to_axi_peripheral_interconnect_RDATA = M07_AXI_rdata[31:0];
  assign m07_couplers_to_axi_peripheral_interconnect_RRESP = M07_AXI_rresp[1:0];
  assign m07_couplers_to_axi_peripheral_interconnect_RVALID = M07_AXI_rvalid[0];
  assign m07_couplers_to_axi_peripheral_interconnect_WREADY = M07_AXI_wready[0];
  assign m08_couplers_to_axi_peripheral_interconnect_ARREADY = M08_AXI_arready[0];
  assign m08_couplers_to_axi_peripheral_interconnect_AWREADY = M08_AXI_awready[0];
  assign m08_couplers_to_axi_peripheral_interconnect_BRESP = M08_AXI_bresp[1:0];
  assign m08_couplers_to_axi_peripheral_interconnect_BVALID = M08_AXI_bvalid[0];
  assign m08_couplers_to_axi_peripheral_interconnect_RDATA = M08_AXI_rdata[31:0];
  assign m08_couplers_to_axi_peripheral_interconnect_RRESP = M08_AXI_rresp[1:0];
  assign m08_couplers_to_axi_peripheral_interconnect_RVALID = M08_AXI_rvalid[0];
  assign m08_couplers_to_axi_peripheral_interconnect_WREADY = M08_AXI_wready[0];
  assign m09_couplers_to_axi_peripheral_interconnect_ARREADY = M09_AXI_arready;
  assign m09_couplers_to_axi_peripheral_interconnect_AWREADY = M09_AXI_awready;
  assign m09_couplers_to_axi_peripheral_interconnect_BRESP = M09_AXI_bresp[1:0];
  assign m09_couplers_to_axi_peripheral_interconnect_BVALID = M09_AXI_bvalid;
  assign m09_couplers_to_axi_peripheral_interconnect_RDATA = M09_AXI_rdata[31:0];
  assign m09_couplers_to_axi_peripheral_interconnect_RRESP = M09_AXI_rresp[1:0];
  assign m09_couplers_to_axi_peripheral_interconnect_RVALID = M09_AXI_rvalid;
  assign m09_couplers_to_axi_peripheral_interconnect_WREADY = M09_AXI_wready;
  assign m10_couplers_to_axi_peripheral_interconnect_ARREADY = M10_AXI_arready;
  assign m10_couplers_to_axi_peripheral_interconnect_AWREADY = M10_AXI_awready;
  assign m10_couplers_to_axi_peripheral_interconnect_BRESP = M10_AXI_bresp[1:0];
  assign m10_couplers_to_axi_peripheral_interconnect_BVALID = M10_AXI_bvalid;
  assign m10_couplers_to_axi_peripheral_interconnect_RDATA = M10_AXI_rdata[31:0];
  assign m10_couplers_to_axi_peripheral_interconnect_RRESP = M10_AXI_rresp[1:0];
  assign m10_couplers_to_axi_peripheral_interconnect_RVALID = M10_AXI_rvalid;
  assign m10_couplers_to_axi_peripheral_interconnect_WREADY = M10_AXI_wready;
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
  assign m15_couplers_to_axi_peripheral_interconnect_ARREADY = M15_AXI_arready;
  assign m15_couplers_to_axi_peripheral_interconnect_AWREADY = M15_AXI_awready;
  assign m15_couplers_to_axi_peripheral_interconnect_BRESP = M15_AXI_bresp[1:0];
  assign m15_couplers_to_axi_peripheral_interconnect_BVALID = M15_AXI_bvalid;
  assign m15_couplers_to_axi_peripheral_interconnect_RDATA = M15_AXI_rdata[31:0];
  assign m15_couplers_to_axi_peripheral_interconnect_RRESP = M15_AXI_rresp[1:0];
  assign m15_couplers_to_axi_peripheral_interconnect_RVALID = M15_AXI_rvalid;
  assign m15_couplers_to_axi_peripheral_interconnect_WREADY = M15_AXI_wready;
  assign m16_couplers_to_axi_peripheral_interconnect_ARREADY = M16_AXI_arready;
  assign m16_couplers_to_axi_peripheral_interconnect_AWREADY = M16_AXI_awready;
  assign m16_couplers_to_axi_peripheral_interconnect_BRESP = M16_AXI_bresp[1:0];
  assign m16_couplers_to_axi_peripheral_interconnect_BVALID = M16_AXI_bvalid;
  assign m16_couplers_to_axi_peripheral_interconnect_RDATA = M16_AXI_rdata[31:0];
  assign m16_couplers_to_axi_peripheral_interconnect_RRESP = M16_AXI_rresp[1:0];
  assign m16_couplers_to_axi_peripheral_interconnect_RVALID = M16_AXI_rvalid;
  assign m16_couplers_to_axi_peripheral_interconnect_WREADY = M16_AXI_wready;
  assign m17_couplers_to_axi_peripheral_interconnect_ARREADY = M17_AXI_arready;
  assign m17_couplers_to_axi_peripheral_interconnect_AWREADY = M17_AXI_awready;
  assign m17_couplers_to_axi_peripheral_interconnect_BRESP = M17_AXI_bresp[1:0];
  assign m17_couplers_to_axi_peripheral_interconnect_BVALID = M17_AXI_bvalid;
  assign m17_couplers_to_axi_peripheral_interconnect_RDATA = M17_AXI_rdata[31:0];
  assign m17_couplers_to_axi_peripheral_interconnect_RRESP = M17_AXI_rresp[1:0];
  assign m17_couplers_to_axi_peripheral_interconnect_RVALID = M17_AXI_rvalid;
  assign m17_couplers_to_axi_peripheral_interconnect_WREADY = M17_AXI_wready;
  assign m18_couplers_to_axi_peripheral_interconnect_ARREADY = M18_AXI_arready;
  assign m18_couplers_to_axi_peripheral_interconnect_AWREADY = M18_AXI_awready;
  assign m18_couplers_to_axi_peripheral_interconnect_BRESP = M18_AXI_bresp[1:0];
  assign m18_couplers_to_axi_peripheral_interconnect_BVALID = M18_AXI_bvalid;
  assign m18_couplers_to_axi_peripheral_interconnect_RDATA = M18_AXI_rdata[31:0];
  assign m18_couplers_to_axi_peripheral_interconnect_RRESP = M18_AXI_rresp[1:0];
  assign m18_couplers_to_axi_peripheral_interconnect_RVALID = M18_AXI_rvalid;
  assign m18_couplers_to_axi_peripheral_interconnect_WREADY = M18_AXI_wready;
  assign m19_couplers_to_axi_peripheral_interconnect_ARREADY = M19_AXI_arready;
  assign m19_couplers_to_axi_peripheral_interconnect_AWREADY = M19_AXI_awready;
  assign m19_couplers_to_axi_peripheral_interconnect_BRESP = M19_AXI_bresp[1:0];
  assign m19_couplers_to_axi_peripheral_interconnect_BVALID = M19_AXI_bvalid;
  assign m19_couplers_to_axi_peripheral_interconnect_RDATA = M19_AXI_rdata[31:0];
  assign m19_couplers_to_axi_peripheral_interconnect_RRESP = M19_AXI_rresp[1:0];
  assign m19_couplers_to_axi_peripheral_interconnect_RVALID = M19_AXI_rvalid;
  assign m19_couplers_to_axi_peripheral_interconnect_WREADY = M19_AXI_wready;
  assign m20_couplers_to_axi_peripheral_interconnect_ARREADY = M20_AXI_arready[0];
  assign m20_couplers_to_axi_peripheral_interconnect_AWREADY = M20_AXI_awready[0];
  assign m20_couplers_to_axi_peripheral_interconnect_BRESP = M20_AXI_bresp[1:0];
  assign m20_couplers_to_axi_peripheral_interconnect_BVALID = M20_AXI_bvalid[0];
  assign m20_couplers_to_axi_peripheral_interconnect_RDATA = M20_AXI_rdata[31:0];
  assign m20_couplers_to_axi_peripheral_interconnect_RRESP = M20_AXI_rresp[1:0];
  assign m20_couplers_to_axi_peripheral_interconnect_RVALID = M20_AXI_rvalid[0];
  assign m20_couplers_to_axi_peripheral_interconnect_WREADY = M20_AXI_wready[0];
  assign m21_couplers_to_axi_peripheral_interconnect_ARREADY = M21_AXI_arready;
  assign m21_couplers_to_axi_peripheral_interconnect_AWREADY = M21_AXI_awready;
  assign m21_couplers_to_axi_peripheral_interconnect_BRESP = M21_AXI_bresp[1:0];
  assign m21_couplers_to_axi_peripheral_interconnect_BVALID = M21_AXI_bvalid;
  assign m21_couplers_to_axi_peripheral_interconnect_RDATA = M21_AXI_rdata[31:0];
  assign m21_couplers_to_axi_peripheral_interconnect_RRESP = M21_AXI_rresp[1:0];
  assign m21_couplers_to_axi_peripheral_interconnect_RVALID = M21_AXI_rvalid;
  assign m21_couplers_to_axi_peripheral_interconnect_WREADY = M21_AXI_wready;
  i00_couplers_imp_1K5SOEI i00_couplers
       (.M_ACLK(axi_peripheral_interconnect_ACLK_net),
        .M_ARESETN(axi_peripheral_interconnect_ARESETN_net),
        .M_AXI_araddr(i00_couplers_to_tier2_xbar_0_ARADDR),
        .M_AXI_arprot(i00_couplers_to_tier2_xbar_0_ARPROT),
        .M_AXI_arready(i00_couplers_to_tier2_xbar_0_ARREADY),
        .M_AXI_arvalid(i00_couplers_to_tier2_xbar_0_ARVALID),
        .M_AXI_awaddr(i00_couplers_to_tier2_xbar_0_AWADDR),
        .M_AXI_awprot(i00_couplers_to_tier2_xbar_0_AWPROT),
        .M_AXI_awready(i00_couplers_to_tier2_xbar_0_AWREADY),
        .M_AXI_awvalid(i00_couplers_to_tier2_xbar_0_AWVALID),
        .M_AXI_bready(i00_couplers_to_tier2_xbar_0_BREADY),
        .M_AXI_bresp(i00_couplers_to_tier2_xbar_0_BRESP),
        .M_AXI_bvalid(i00_couplers_to_tier2_xbar_0_BVALID),
        .M_AXI_rdata(i00_couplers_to_tier2_xbar_0_RDATA),
        .M_AXI_rready(i00_couplers_to_tier2_xbar_0_RREADY),
        .M_AXI_rresp(i00_couplers_to_tier2_xbar_0_RRESP),
        .M_AXI_rvalid(i00_couplers_to_tier2_xbar_0_RVALID),
        .M_AXI_wdata(i00_couplers_to_tier2_xbar_0_WDATA),
        .M_AXI_wready(i00_couplers_to_tier2_xbar_0_WREADY),
        .M_AXI_wstrb(i00_couplers_to_tier2_xbar_0_WSTRB),
        .M_AXI_wvalid(i00_couplers_to_tier2_xbar_0_WVALID),
        .S_ACLK(axi_peripheral_interconnect_ACLK_net),
        .S_ARESETN(axi_peripheral_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_i00_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_i00_couplers_ARPROT),
        .S_AXI_arready(xbar_to_i00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_i00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_i00_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_i00_couplers_AWPROT),
        .S_AXI_awready(xbar_to_i00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_i00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_i00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_i00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_i00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_i00_couplers_RDATA),
        .S_AXI_rready(xbar_to_i00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_i00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_i00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_i00_couplers_WDATA),
        .S_AXI_wready(xbar_to_i00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_i00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_i00_couplers_WVALID));
  i01_couplers_imp_ABVN1N i01_couplers
       (.M_ACLK(axi_peripheral_interconnect_ACLK_net),
        .M_ARESETN(axi_peripheral_interconnect_ARESETN_net),
        .M_AXI_araddr(i01_couplers_to_tier2_xbar_1_ARADDR),
        .M_AXI_arprot(i01_couplers_to_tier2_xbar_1_ARPROT),
        .M_AXI_arready(i01_couplers_to_tier2_xbar_1_ARREADY),
        .M_AXI_arvalid(i01_couplers_to_tier2_xbar_1_ARVALID),
        .M_AXI_awaddr(i01_couplers_to_tier2_xbar_1_AWADDR),
        .M_AXI_awprot(i01_couplers_to_tier2_xbar_1_AWPROT),
        .M_AXI_awready(i01_couplers_to_tier2_xbar_1_AWREADY),
        .M_AXI_awvalid(i01_couplers_to_tier2_xbar_1_AWVALID),
        .M_AXI_bready(i01_couplers_to_tier2_xbar_1_BREADY),
        .M_AXI_bresp(i01_couplers_to_tier2_xbar_1_BRESP),
        .M_AXI_bvalid(i01_couplers_to_tier2_xbar_1_BVALID),
        .M_AXI_rdata(i01_couplers_to_tier2_xbar_1_RDATA),
        .M_AXI_rready(i01_couplers_to_tier2_xbar_1_RREADY),
        .M_AXI_rresp(i01_couplers_to_tier2_xbar_1_RRESP),
        .M_AXI_rvalid(i01_couplers_to_tier2_xbar_1_RVALID),
        .M_AXI_wdata(i01_couplers_to_tier2_xbar_1_WDATA),
        .M_AXI_wready(i01_couplers_to_tier2_xbar_1_WREADY),
        .M_AXI_wstrb(i01_couplers_to_tier2_xbar_1_WSTRB),
        .M_AXI_wvalid(i01_couplers_to_tier2_xbar_1_WVALID),
        .S_ACLK(axi_peripheral_interconnect_ACLK_net),
        .S_ARESETN(axi_peripheral_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_i01_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_i01_couplers_ARPROT),
        .S_AXI_arready(xbar_to_i01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_i01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_i01_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_i01_couplers_AWPROT),
        .S_AXI_awready(xbar_to_i01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_i01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_i01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_i01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_i01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_i01_couplers_RDATA),
        .S_AXI_rready(xbar_to_i01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_i01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_i01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_i01_couplers_WDATA),
        .S_AXI_wready(xbar_to_i01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_i01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_i01_couplers_WVALID));
  i02_couplers_imp_1LN01S9 i02_couplers
       (.M_ACLK(axi_peripheral_interconnect_ACLK_net),
        .M_ARESETN(axi_peripheral_interconnect_ARESETN_net),
        .M_AXI_araddr(i02_couplers_to_tier2_xbar_2_ARADDR),
        .M_AXI_arprot(i02_couplers_to_tier2_xbar_2_ARPROT),
        .M_AXI_arready(i02_couplers_to_tier2_xbar_2_ARREADY),
        .M_AXI_arvalid(i02_couplers_to_tier2_xbar_2_ARVALID),
        .M_AXI_awaddr(i02_couplers_to_tier2_xbar_2_AWADDR),
        .M_AXI_awprot(i02_couplers_to_tier2_xbar_2_AWPROT),
        .M_AXI_awready(i02_couplers_to_tier2_xbar_2_AWREADY),
        .M_AXI_awvalid(i02_couplers_to_tier2_xbar_2_AWVALID),
        .M_AXI_bready(i02_couplers_to_tier2_xbar_2_BREADY),
        .M_AXI_bresp(i02_couplers_to_tier2_xbar_2_BRESP),
        .M_AXI_bvalid(i02_couplers_to_tier2_xbar_2_BVALID),
        .M_AXI_rdata(i02_couplers_to_tier2_xbar_2_RDATA),
        .M_AXI_rready(i02_couplers_to_tier2_xbar_2_RREADY),
        .M_AXI_rresp(i02_couplers_to_tier2_xbar_2_RRESP),
        .M_AXI_rvalid(i02_couplers_to_tier2_xbar_2_RVALID),
        .M_AXI_wdata(i02_couplers_to_tier2_xbar_2_WDATA),
        .M_AXI_wready(i02_couplers_to_tier2_xbar_2_WREADY),
        .M_AXI_wstrb(i02_couplers_to_tier2_xbar_2_WSTRB),
        .M_AXI_wvalid(i02_couplers_to_tier2_xbar_2_WVALID),
        .S_ACLK(axi_peripheral_interconnect_ACLK_net),
        .S_ARESETN(axi_peripheral_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_i02_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_i02_couplers_ARPROT),
        .S_AXI_arready(xbar_to_i02_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_i02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_i02_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_i02_couplers_AWPROT),
        .S_AXI_awready(xbar_to_i02_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_i02_couplers_AWVALID),
        .S_AXI_bready(xbar_to_i02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_i02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_i02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_i02_couplers_RDATA),
        .S_AXI_rready(xbar_to_i02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_i02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_i02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_i02_couplers_WDATA),
        .S_AXI_wready(xbar_to_i02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_i02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_i02_couplers_WVALID));
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
        .S_AXI_araddr(tier2_xbar_0_to_m00_couplers_ARADDR),
        .S_AXI_arprot(tier2_xbar_0_to_m00_couplers_ARPROT),
        .S_AXI_arready(tier2_xbar_0_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(tier2_xbar_0_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_0_to_m00_couplers_AWADDR),
        .S_AXI_awprot(tier2_xbar_0_to_m00_couplers_AWPROT),
        .S_AXI_awready(tier2_xbar_0_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(tier2_xbar_0_to_m00_couplers_AWVALID),
        .S_AXI_bready(tier2_xbar_0_to_m00_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_0_to_m00_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_0_to_m00_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_0_to_m00_couplers_RDATA),
        .S_AXI_rready(tier2_xbar_0_to_m00_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_0_to_m00_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_0_to_m00_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_0_to_m00_couplers_WDATA),
        .S_AXI_wready(tier2_xbar_0_to_m00_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_0_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_0_to_m00_couplers_WVALID));
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
        .S_AXI_araddr(tier2_xbar_0_to_m01_couplers_ARADDR),
        .S_AXI_arprot(tier2_xbar_0_to_m01_couplers_ARPROT),
        .S_AXI_arready(tier2_xbar_0_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(tier2_xbar_0_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_0_to_m01_couplers_AWADDR),
        .S_AXI_awprot(tier2_xbar_0_to_m01_couplers_AWPROT),
        .S_AXI_awready(tier2_xbar_0_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(tier2_xbar_0_to_m01_couplers_AWVALID),
        .S_AXI_bready(tier2_xbar_0_to_m01_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_0_to_m01_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_0_to_m01_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_0_to_m01_couplers_RDATA),
        .S_AXI_rready(tier2_xbar_0_to_m01_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_0_to_m01_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_0_to_m01_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_0_to_m01_couplers_WDATA),
        .S_AXI_wready(tier2_xbar_0_to_m01_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_0_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_0_to_m01_couplers_WVALID));
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
        .S_AXI_araddr(tier2_xbar_0_to_m02_couplers_ARADDR),
        .S_AXI_arprot(tier2_xbar_0_to_m02_couplers_ARPROT),
        .S_AXI_arready(tier2_xbar_0_to_m02_couplers_ARREADY),
        .S_AXI_arvalid(tier2_xbar_0_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_0_to_m02_couplers_AWADDR),
        .S_AXI_awprot(tier2_xbar_0_to_m02_couplers_AWPROT),
        .S_AXI_awready(tier2_xbar_0_to_m02_couplers_AWREADY),
        .S_AXI_awvalid(tier2_xbar_0_to_m02_couplers_AWVALID),
        .S_AXI_bready(tier2_xbar_0_to_m02_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_0_to_m02_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_0_to_m02_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_0_to_m02_couplers_RDATA),
        .S_AXI_rready(tier2_xbar_0_to_m02_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_0_to_m02_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_0_to_m02_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_0_to_m02_couplers_WDATA),
        .S_AXI_wready(tier2_xbar_0_to_m02_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_0_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_0_to_m02_couplers_WVALID));
  m03_couplers_imp_UIW1IP m03_couplers
       (.M_ACLK(M03_ACLK_1),
        .M_ARESETN(M03_ARESETN_1),
        .M_AXI_araddr(m03_couplers_to_axi_peripheral_interconnect_ARADDR),
        .M_AXI_arprot(m03_couplers_to_axi_peripheral_interconnect_ARPROT),
        .M_AXI_arready(m03_couplers_to_axi_peripheral_interconnect_ARREADY),
        .M_AXI_arvalid(m03_couplers_to_axi_peripheral_interconnect_ARVALID),
        .M_AXI_awaddr(m03_couplers_to_axi_peripheral_interconnect_AWADDR),
        .M_AXI_awprot(m03_couplers_to_axi_peripheral_interconnect_AWPROT),
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
        .S_AXI_araddr(tier2_xbar_0_to_m03_couplers_ARADDR),
        .S_AXI_arprot(tier2_xbar_0_to_m03_couplers_ARPROT),
        .S_AXI_arready(tier2_xbar_0_to_m03_couplers_ARREADY),
        .S_AXI_arvalid(tier2_xbar_0_to_m03_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_0_to_m03_couplers_AWADDR),
        .S_AXI_awprot(tier2_xbar_0_to_m03_couplers_AWPROT),
        .S_AXI_awready(tier2_xbar_0_to_m03_couplers_AWREADY),
        .S_AXI_awvalid(tier2_xbar_0_to_m03_couplers_AWVALID),
        .S_AXI_bready(tier2_xbar_0_to_m03_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_0_to_m03_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_0_to_m03_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_0_to_m03_couplers_RDATA),
        .S_AXI_rready(tier2_xbar_0_to_m03_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_0_to_m03_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_0_to_m03_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_0_to_m03_couplers_WDATA),
        .S_AXI_wready(tier2_xbar_0_to_m03_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_0_to_m03_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_0_to_m03_couplers_WVALID));
  m04_couplers_imp_13Q5LUD m04_couplers
       (.M_ACLK(M04_ACLK_1),
        .M_ARESETN(M04_ARESETN_1),
        .M_AXI_araddr(m04_couplers_to_axi_peripheral_interconnect_ARADDR),
        .M_AXI_arprot(m04_couplers_to_axi_peripheral_interconnect_ARPROT),
        .M_AXI_arready(m04_couplers_to_axi_peripheral_interconnect_ARREADY),
        .M_AXI_arvalid(m04_couplers_to_axi_peripheral_interconnect_ARVALID),
        .M_AXI_awaddr(m04_couplers_to_axi_peripheral_interconnect_AWADDR),
        .M_AXI_awprot(m04_couplers_to_axi_peripheral_interconnect_AWPROT),
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
        .S_AXI_araddr(tier2_xbar_0_to_m04_couplers_ARADDR),
        .S_AXI_arprot(tier2_xbar_0_to_m04_couplers_ARPROT),
        .S_AXI_arready(tier2_xbar_0_to_m04_couplers_ARREADY),
        .S_AXI_arvalid(tier2_xbar_0_to_m04_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_0_to_m04_couplers_AWADDR),
        .S_AXI_awprot(tier2_xbar_0_to_m04_couplers_AWPROT),
        .S_AXI_awready(tier2_xbar_0_to_m04_couplers_AWREADY),
        .S_AXI_awvalid(tier2_xbar_0_to_m04_couplers_AWVALID),
        .S_AXI_bready(tier2_xbar_0_to_m04_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_0_to_m04_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_0_to_m04_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_0_to_m04_couplers_RDATA),
        .S_AXI_rready(tier2_xbar_0_to_m04_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_0_to_m04_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_0_to_m04_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_0_to_m04_couplers_WDATA),
        .S_AXI_wready(tier2_xbar_0_to_m04_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_0_to_m04_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_0_to_m04_couplers_WVALID));
  m05_couplers_imp_QRWO50 m05_couplers
       (.M_ACLK(M05_ACLK_1),
        .M_ARESETN(M05_ARESETN_1),
        .M_AXI_araddr(m05_couplers_to_axi_peripheral_interconnect_ARADDR),
        .M_AXI_arprot(m05_couplers_to_axi_peripheral_interconnect_ARPROT),
        .M_AXI_arready(m05_couplers_to_axi_peripheral_interconnect_ARREADY),
        .M_AXI_arvalid(m05_couplers_to_axi_peripheral_interconnect_ARVALID),
        .M_AXI_awaddr(m05_couplers_to_axi_peripheral_interconnect_AWADDR),
        .M_AXI_awprot(m05_couplers_to_axi_peripheral_interconnect_AWPROT),
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
        .S_AXI_araddr(tier2_xbar_0_to_m05_couplers_ARADDR),
        .S_AXI_arprot(tier2_xbar_0_to_m05_couplers_ARPROT),
        .S_AXI_arready(tier2_xbar_0_to_m05_couplers_ARREADY),
        .S_AXI_arvalid(tier2_xbar_0_to_m05_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_0_to_m05_couplers_AWADDR),
        .S_AXI_awprot(tier2_xbar_0_to_m05_couplers_AWPROT),
        .S_AXI_awready(tier2_xbar_0_to_m05_couplers_AWREADY),
        .S_AXI_awvalid(tier2_xbar_0_to_m05_couplers_AWVALID),
        .S_AXI_bready(tier2_xbar_0_to_m05_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_0_to_m05_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_0_to_m05_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_0_to_m05_couplers_RDATA),
        .S_AXI_rready(tier2_xbar_0_to_m05_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_0_to_m05_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_0_to_m05_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_0_to_m05_couplers_WDATA),
        .S_AXI_wready(tier2_xbar_0_to_m05_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_0_to_m05_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_0_to_m05_couplers_WVALID));
  m06_couplers_imp_12K61CM m06_couplers
       (.M_ACLK(M06_ACLK_1),
        .M_ARESETN(M06_ARESETN_1),
        .M_AXI_araddr(m06_couplers_to_axi_peripheral_interconnect_ARADDR),
        .M_AXI_arprot(m06_couplers_to_axi_peripheral_interconnect_ARPROT),
        .M_AXI_arready(m06_couplers_to_axi_peripheral_interconnect_ARREADY),
        .M_AXI_arvalid(m06_couplers_to_axi_peripheral_interconnect_ARVALID),
        .M_AXI_awaddr(m06_couplers_to_axi_peripheral_interconnect_AWADDR),
        .M_AXI_awprot(m06_couplers_to_axi_peripheral_interconnect_AWPROT),
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
        .S_AXI_araddr(tier2_xbar_0_to_m06_couplers_ARADDR),
        .S_AXI_arprot(tier2_xbar_0_to_m06_couplers_ARPROT),
        .S_AXI_arready(tier2_xbar_0_to_m06_couplers_ARREADY),
        .S_AXI_arvalid(tier2_xbar_0_to_m06_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_0_to_m06_couplers_AWADDR),
        .S_AXI_awprot(tier2_xbar_0_to_m06_couplers_AWPROT),
        .S_AXI_awready(tier2_xbar_0_to_m06_couplers_AWREADY),
        .S_AXI_awvalid(tier2_xbar_0_to_m06_couplers_AWVALID),
        .S_AXI_bready(tier2_xbar_0_to_m06_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_0_to_m06_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_0_to_m06_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_0_to_m06_couplers_RDATA),
        .S_AXI_rready(tier2_xbar_0_to_m06_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_0_to_m06_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_0_to_m06_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_0_to_m06_couplers_WDATA),
        .S_AXI_wready(tier2_xbar_0_to_m06_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_0_to_m06_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_0_to_m06_couplers_WVALID));
  m07_couplers_imp_S7JYYF m07_couplers
       (.M_ACLK(M07_ACLK_1),
        .M_ARESETN(M07_ARESETN_1),
        .M_AXI_araddr(m07_couplers_to_axi_peripheral_interconnect_ARADDR),
        .M_AXI_arready(m07_couplers_to_axi_peripheral_interconnect_ARREADY),
        .M_AXI_arvalid(m07_couplers_to_axi_peripheral_interconnect_ARVALID),
        .M_AXI_awaddr(m07_couplers_to_axi_peripheral_interconnect_AWADDR),
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
        .S_AXI_araddr(tier2_xbar_0_to_m07_couplers_ARADDR),
        .S_AXI_arready(tier2_xbar_0_to_m07_couplers_ARREADY),
        .S_AXI_arvalid(tier2_xbar_0_to_m07_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_0_to_m07_couplers_AWADDR),
        .S_AXI_awready(tier2_xbar_0_to_m07_couplers_AWREADY),
        .S_AXI_awvalid(tier2_xbar_0_to_m07_couplers_AWVALID),
        .S_AXI_bready(tier2_xbar_0_to_m07_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_0_to_m07_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_0_to_m07_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_0_to_m07_couplers_RDATA),
        .S_AXI_rready(tier2_xbar_0_to_m07_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_0_to_m07_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_0_to_m07_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_0_to_m07_couplers_WDATA),
        .S_AXI_wready(tier2_xbar_0_to_m07_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_0_to_m07_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_0_to_m07_couplers_WVALID));
  m08_couplers_imp_150MC4F m08_couplers
       (.M_ACLK(M08_ACLK_1),
        .M_ARESETN(M08_ARESETN_1),
        .M_AXI_araddr(m08_couplers_to_axi_peripheral_interconnect_ARADDR),
        .M_AXI_arready(m08_couplers_to_axi_peripheral_interconnect_ARREADY),
        .M_AXI_arvalid(m08_couplers_to_axi_peripheral_interconnect_ARVALID),
        .M_AXI_awaddr(m08_couplers_to_axi_peripheral_interconnect_AWADDR),
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
        .S_AXI_araddr(tier2_xbar_1_to_m08_couplers_ARADDR),
        .S_AXI_arready(tier2_xbar_1_to_m08_couplers_ARREADY),
        .S_AXI_arvalid(tier2_xbar_1_to_m08_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_1_to_m08_couplers_AWADDR),
        .S_AXI_awready(tier2_xbar_1_to_m08_couplers_AWREADY),
        .S_AXI_awvalid(tier2_xbar_1_to_m08_couplers_AWVALID),
        .S_AXI_bready(tier2_xbar_1_to_m08_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_1_to_m08_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_1_to_m08_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_1_to_m08_couplers_RDATA),
        .S_AXI_rready(tier2_xbar_1_to_m08_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_1_to_m08_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_1_to_m08_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_1_to_m08_couplers_WDATA),
        .S_AXI_wready(tier2_xbar_1_to_m08_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_1_to_m08_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_1_to_m08_couplers_WVALID));
  m09_couplers_imp_YJUQF2 m09_couplers
       (.M_ACLK(M09_ACLK_1),
        .M_ARESETN(M09_ARESETN_1),
        .M_AXI_araddr(m09_couplers_to_axi_peripheral_interconnect_ARADDR),
        .M_AXI_arready(m09_couplers_to_axi_peripheral_interconnect_ARREADY),
        .M_AXI_arvalid(m09_couplers_to_axi_peripheral_interconnect_ARVALID),
        .M_AXI_awaddr(m09_couplers_to_axi_peripheral_interconnect_AWADDR),
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
        .S_AXI_araddr(tier2_xbar_1_to_m09_couplers_ARADDR),
        .S_AXI_arready(tier2_xbar_1_to_m09_couplers_ARREADY),
        .S_AXI_arvalid(tier2_xbar_1_to_m09_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_1_to_m09_couplers_AWADDR),
        .S_AXI_awready(tier2_xbar_1_to_m09_couplers_AWREADY),
        .S_AXI_awvalid(tier2_xbar_1_to_m09_couplers_AWVALID),
        .S_AXI_bready(tier2_xbar_1_to_m09_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_1_to_m09_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_1_to_m09_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_1_to_m09_couplers_RDATA),
        .S_AXI_rready(tier2_xbar_1_to_m09_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_1_to_m09_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_1_to_m09_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_1_to_m09_couplers_WDATA),
        .S_AXI_wready(tier2_xbar_1_to_m09_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_1_to_m09_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_1_to_m09_couplers_WVALID));
  m10_couplers_imp_N5305N m10_couplers
       (.M_ACLK(M10_ACLK_1),
        .M_ARESETN(M10_ARESETN_1),
        .M_AXI_araddr(m10_couplers_to_axi_peripheral_interconnect_ARADDR),
        .M_AXI_arprot(m10_couplers_to_axi_peripheral_interconnect_ARPROT),
        .M_AXI_arready(m10_couplers_to_axi_peripheral_interconnect_ARREADY),
        .M_AXI_arvalid(m10_couplers_to_axi_peripheral_interconnect_ARVALID),
        .M_AXI_awaddr(m10_couplers_to_axi_peripheral_interconnect_AWADDR),
        .M_AXI_awprot(m10_couplers_to_axi_peripheral_interconnect_AWPROT),
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
        .S_AXI_araddr(tier2_xbar_1_to_m10_couplers_ARADDR),
        .S_AXI_arprot(tier2_xbar_1_to_m10_couplers_ARPROT),
        .S_AXI_arready(tier2_xbar_1_to_m10_couplers_ARREADY),
        .S_AXI_arvalid(tier2_xbar_1_to_m10_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_1_to_m10_couplers_AWADDR),
        .S_AXI_awprot(tier2_xbar_1_to_m10_couplers_AWPROT),
        .S_AXI_awready(tier2_xbar_1_to_m10_couplers_AWREADY),
        .S_AXI_awvalid(tier2_xbar_1_to_m10_couplers_AWVALID),
        .S_AXI_bready(tier2_xbar_1_to_m10_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_1_to_m10_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_1_to_m10_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_1_to_m10_couplers_RDATA),
        .S_AXI_rready(tier2_xbar_1_to_m10_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_1_to_m10_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_1_to_m10_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_1_to_m10_couplers_WDATA),
        .S_AXI_wready(tier2_xbar_1_to_m10_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_1_to_m10_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_1_to_m10_couplers_WVALID));
  m11_couplers_imp_1G7Z3AI m11_couplers
       (.M_ACLK(M11_ACLK_1),
        .M_ARESETN(M11_ARESETN_1),
        .M_AXI_araddr(m11_couplers_to_axi_peripheral_interconnect_ARADDR),
        .M_AXI_arprot(m11_couplers_to_axi_peripheral_interconnect_ARPROT),
        .M_AXI_arready(m11_couplers_to_axi_peripheral_interconnect_ARREADY),
        .M_AXI_arvalid(m11_couplers_to_axi_peripheral_interconnect_ARVALID),
        .M_AXI_awaddr(m11_couplers_to_axi_peripheral_interconnect_AWADDR),
        .M_AXI_awprot(m11_couplers_to_axi_peripheral_interconnect_AWPROT),
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
        .S_AXI_araddr(tier2_xbar_1_to_m11_couplers_ARADDR),
        .S_AXI_arprot(tier2_xbar_1_to_m11_couplers_ARPROT),
        .S_AXI_arready(tier2_xbar_1_to_m11_couplers_ARREADY),
        .S_AXI_arvalid(tier2_xbar_1_to_m11_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_1_to_m11_couplers_AWADDR),
        .S_AXI_awprot(tier2_xbar_1_to_m11_couplers_AWPROT),
        .S_AXI_awready(tier2_xbar_1_to_m11_couplers_AWREADY),
        .S_AXI_awvalid(tier2_xbar_1_to_m11_couplers_AWVALID),
        .S_AXI_bready(tier2_xbar_1_to_m11_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_1_to_m11_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_1_to_m11_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_1_to_m11_couplers_RDATA),
        .S_AXI_rready(tier2_xbar_1_to_m11_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_1_to_m11_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_1_to_m11_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_1_to_m11_couplers_WDATA),
        .S_AXI_wready(tier2_xbar_1_to_m11_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_1_to_m11_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_1_to_m11_couplers_WVALID));
  m12_couplers_imp_O214I0 m12_couplers
       (.M_ACLK(M12_ACLK_1),
        .M_ARESETN(M12_ARESETN_1),
        .M_AXI_araddr(m12_couplers_to_axi_peripheral_interconnect_ARADDR),
        .M_AXI_arprot(m12_couplers_to_axi_peripheral_interconnect_ARPROT),
        .M_AXI_arready(m12_couplers_to_axi_peripheral_interconnect_ARREADY),
        .M_AXI_arvalid(m12_couplers_to_axi_peripheral_interconnect_ARVALID),
        .M_AXI_awaddr(m12_couplers_to_axi_peripheral_interconnect_AWADDR),
        .M_AXI_awprot(m12_couplers_to_axi_peripheral_interconnect_AWPROT),
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
        .S_AXI_araddr(tier2_xbar_1_to_m12_couplers_ARADDR),
        .S_AXI_arprot(tier2_xbar_1_to_m12_couplers_ARPROT),
        .S_AXI_arready(tier2_xbar_1_to_m12_couplers_ARREADY),
        .S_AXI_arvalid(tier2_xbar_1_to_m12_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_1_to_m12_couplers_AWADDR),
        .S_AXI_awprot(tier2_xbar_1_to_m12_couplers_AWPROT),
        .S_AXI_awready(tier2_xbar_1_to_m12_couplers_AWREADY),
        .S_AXI_awvalid(tier2_xbar_1_to_m12_couplers_AWVALID),
        .S_AXI_bready(tier2_xbar_1_to_m12_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_1_to_m12_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_1_to_m12_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_1_to_m12_couplers_RDATA),
        .S_AXI_rready(tier2_xbar_1_to_m12_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_1_to_m12_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_1_to_m12_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_1_to_m12_couplers_WDATA),
        .S_AXI_wready(tier2_xbar_1_to_m12_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_1_to_m12_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_1_to_m12_couplers_WVALID));
  m13_couplers_imp_1FKQ4MH m13_couplers
       (.M_ACLK(M13_ACLK_1),
        .M_ARESETN(M13_ARESETN_1),
        .M_AXI_araddr(m13_couplers_to_axi_peripheral_interconnect_ARADDR),
        .M_AXI_arprot(m13_couplers_to_axi_peripheral_interconnect_ARPROT),
        .M_AXI_arready(m13_couplers_to_axi_peripheral_interconnect_ARREADY),
        .M_AXI_arvalid(m13_couplers_to_axi_peripheral_interconnect_ARVALID),
        .M_AXI_awaddr(m13_couplers_to_axi_peripheral_interconnect_AWADDR),
        .M_AXI_awprot(m13_couplers_to_axi_peripheral_interconnect_AWPROT),
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
        .S_AXI_araddr(tier2_xbar_1_to_m13_couplers_ARADDR),
        .S_AXI_arprot(tier2_xbar_1_to_m13_couplers_ARPROT),
        .S_AXI_arready(tier2_xbar_1_to_m13_couplers_ARREADY),
        .S_AXI_arvalid(tier2_xbar_1_to_m13_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_1_to_m13_couplers_AWADDR),
        .S_AXI_awprot(tier2_xbar_1_to_m13_couplers_AWPROT),
        .S_AXI_awready(tier2_xbar_1_to_m13_couplers_AWREADY),
        .S_AXI_awvalid(tier2_xbar_1_to_m13_couplers_AWVALID),
        .S_AXI_bready(tier2_xbar_1_to_m13_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_1_to_m13_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_1_to_m13_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_1_to_m13_couplers_RDATA),
        .S_AXI_rready(tier2_xbar_1_to_m13_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_1_to_m13_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_1_to_m13_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_1_to_m13_couplers_WDATA),
        .S_AXI_wready(tier2_xbar_1_to_m13_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_1_to_m13_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_1_to_m13_couplers_WVALID));
  m14_couplers_imp_ON470T m14_couplers
       (.M_ACLK(M14_ACLK_1),
        .M_ARESETN(M14_ARESETN_1),
        .M_AXI_araddr(m14_couplers_to_axi_peripheral_interconnect_ARADDR),
        .M_AXI_arprot(m14_couplers_to_axi_peripheral_interconnect_ARPROT),
        .M_AXI_arready(m14_couplers_to_axi_peripheral_interconnect_ARREADY),
        .M_AXI_arvalid(m14_couplers_to_axi_peripheral_interconnect_ARVALID),
        .M_AXI_awaddr(m14_couplers_to_axi_peripheral_interconnect_AWADDR),
        .M_AXI_awprot(m14_couplers_to_axi_peripheral_interconnect_AWPROT),
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
        .S_AXI_araddr(tier2_xbar_1_to_m14_couplers_ARADDR),
        .S_AXI_arprot(tier2_xbar_1_to_m14_couplers_ARPROT),
        .S_AXI_arready(tier2_xbar_1_to_m14_couplers_ARREADY),
        .S_AXI_arvalid(tier2_xbar_1_to_m14_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_1_to_m14_couplers_AWADDR),
        .S_AXI_awprot(tier2_xbar_1_to_m14_couplers_AWPROT),
        .S_AXI_awready(tier2_xbar_1_to_m14_couplers_AWREADY),
        .S_AXI_awvalid(tier2_xbar_1_to_m14_couplers_AWVALID),
        .S_AXI_bready(tier2_xbar_1_to_m14_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_1_to_m14_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_1_to_m14_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_1_to_m14_couplers_RDATA),
        .S_AXI_rready(tier2_xbar_1_to_m14_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_1_to_m14_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_1_to_m14_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_1_to_m14_couplers_WDATA),
        .S_AXI_wready(tier2_xbar_1_to_m14_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_1_to_m14_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_1_to_m14_couplers_WVALID));
  m15_couplers_imp_1EY2S8C m15_couplers
       (.M_ACLK(M15_ACLK_1),
        .M_ARESETN(M15_ARESETN_1),
        .M_AXI_araddr(m15_couplers_to_axi_peripheral_interconnect_ARADDR),
        .M_AXI_arprot(m15_couplers_to_axi_peripheral_interconnect_ARPROT),
        .M_AXI_arready(m15_couplers_to_axi_peripheral_interconnect_ARREADY),
        .M_AXI_arvalid(m15_couplers_to_axi_peripheral_interconnect_ARVALID),
        .M_AXI_awaddr(m15_couplers_to_axi_peripheral_interconnect_AWADDR),
        .M_AXI_awprot(m15_couplers_to_axi_peripheral_interconnect_AWPROT),
        .M_AXI_awready(m15_couplers_to_axi_peripheral_interconnect_AWREADY),
        .M_AXI_awvalid(m15_couplers_to_axi_peripheral_interconnect_AWVALID),
        .M_AXI_bready(m15_couplers_to_axi_peripheral_interconnect_BREADY),
        .M_AXI_bresp(m15_couplers_to_axi_peripheral_interconnect_BRESP),
        .M_AXI_bvalid(m15_couplers_to_axi_peripheral_interconnect_BVALID),
        .M_AXI_rdata(m15_couplers_to_axi_peripheral_interconnect_RDATA),
        .M_AXI_rready(m15_couplers_to_axi_peripheral_interconnect_RREADY),
        .M_AXI_rresp(m15_couplers_to_axi_peripheral_interconnect_RRESP),
        .M_AXI_rvalid(m15_couplers_to_axi_peripheral_interconnect_RVALID),
        .M_AXI_wdata(m15_couplers_to_axi_peripheral_interconnect_WDATA),
        .M_AXI_wready(m15_couplers_to_axi_peripheral_interconnect_WREADY),
        .M_AXI_wstrb(m15_couplers_to_axi_peripheral_interconnect_WSTRB),
        .M_AXI_wvalid(m15_couplers_to_axi_peripheral_interconnect_WVALID),
        .S_ACLK(axi_peripheral_interconnect_ACLK_net),
        .S_ARESETN(axi_peripheral_interconnect_ARESETN_net),
        .S_AXI_araddr(tier2_xbar_1_to_m15_couplers_ARADDR),
        .S_AXI_arprot(tier2_xbar_1_to_m15_couplers_ARPROT),
        .S_AXI_arready(tier2_xbar_1_to_m15_couplers_ARREADY),
        .S_AXI_arvalid(tier2_xbar_1_to_m15_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_1_to_m15_couplers_AWADDR),
        .S_AXI_awprot(tier2_xbar_1_to_m15_couplers_AWPROT),
        .S_AXI_awready(tier2_xbar_1_to_m15_couplers_AWREADY),
        .S_AXI_awvalid(tier2_xbar_1_to_m15_couplers_AWVALID),
        .S_AXI_bready(tier2_xbar_1_to_m15_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_1_to_m15_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_1_to_m15_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_1_to_m15_couplers_RDATA),
        .S_AXI_rready(tier2_xbar_1_to_m15_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_1_to_m15_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_1_to_m15_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_1_to_m15_couplers_WDATA),
        .S_AXI_wready(tier2_xbar_1_to_m15_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_1_to_m15_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_1_to_m15_couplers_WVALID));
  m16_couplers_imp_PU16A6 m16_couplers
       (.M_ACLK(M16_ACLK_1),
        .M_ARESETN(M16_ARESETN_1),
        .M_AXI_araddr(m16_couplers_to_axi_peripheral_interconnect_ARADDR),
        .M_AXI_arready(m16_couplers_to_axi_peripheral_interconnect_ARREADY),
        .M_AXI_arvalid(m16_couplers_to_axi_peripheral_interconnect_ARVALID),
        .M_AXI_awaddr(m16_couplers_to_axi_peripheral_interconnect_AWADDR),
        .M_AXI_awready(m16_couplers_to_axi_peripheral_interconnect_AWREADY),
        .M_AXI_awvalid(m16_couplers_to_axi_peripheral_interconnect_AWVALID),
        .M_AXI_bready(m16_couplers_to_axi_peripheral_interconnect_BREADY),
        .M_AXI_bresp(m16_couplers_to_axi_peripheral_interconnect_BRESP),
        .M_AXI_bvalid(m16_couplers_to_axi_peripheral_interconnect_BVALID),
        .M_AXI_rdata(m16_couplers_to_axi_peripheral_interconnect_RDATA),
        .M_AXI_rready(m16_couplers_to_axi_peripheral_interconnect_RREADY),
        .M_AXI_rresp(m16_couplers_to_axi_peripheral_interconnect_RRESP),
        .M_AXI_rvalid(m16_couplers_to_axi_peripheral_interconnect_RVALID),
        .M_AXI_wdata(m16_couplers_to_axi_peripheral_interconnect_WDATA),
        .M_AXI_wready(m16_couplers_to_axi_peripheral_interconnect_WREADY),
        .M_AXI_wstrb(m16_couplers_to_axi_peripheral_interconnect_WSTRB),
        .M_AXI_wvalid(m16_couplers_to_axi_peripheral_interconnect_WVALID),
        .S_ACLK(axi_peripheral_interconnect_ACLK_net),
        .S_ARESETN(axi_peripheral_interconnect_ARESETN_net),
        .S_AXI_araddr(tier2_xbar_2_to_m16_couplers_ARADDR),
        .S_AXI_arprot(tier2_xbar_2_to_m16_couplers_ARPROT),
        .S_AXI_arready(tier2_xbar_2_to_m16_couplers_ARREADY),
        .S_AXI_arvalid(tier2_xbar_2_to_m16_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_2_to_m16_couplers_AWADDR),
        .S_AXI_awprot(tier2_xbar_2_to_m16_couplers_AWPROT),
        .S_AXI_awready(tier2_xbar_2_to_m16_couplers_AWREADY),
        .S_AXI_awvalid(tier2_xbar_2_to_m16_couplers_AWVALID),
        .S_AXI_bready(tier2_xbar_2_to_m16_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_2_to_m16_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_2_to_m16_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_2_to_m16_couplers_RDATA),
        .S_AXI_rready(tier2_xbar_2_to_m16_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_2_to_m16_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_2_to_m16_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_2_to_m16_couplers_WDATA),
        .S_AXI_wready(tier2_xbar_2_to_m16_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_2_to_m16_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_2_to_m16_couplers_WVALID));
  m17_couplers_imp_1DGUCJ3 m17_couplers
       (.M_ACLK(M17_ACLK_1),
        .M_ARESETN(M17_ARESETN_1),
        .M_AXI_araddr(m17_couplers_to_axi_peripheral_interconnect_ARADDR),
        .M_AXI_arprot(m17_couplers_to_axi_peripheral_interconnect_ARPROT),
        .M_AXI_arready(m17_couplers_to_axi_peripheral_interconnect_ARREADY),
        .M_AXI_arvalid(m17_couplers_to_axi_peripheral_interconnect_ARVALID),
        .M_AXI_awaddr(m17_couplers_to_axi_peripheral_interconnect_AWADDR),
        .M_AXI_awprot(m17_couplers_to_axi_peripheral_interconnect_AWPROT),
        .M_AXI_awready(m17_couplers_to_axi_peripheral_interconnect_AWREADY),
        .M_AXI_awvalid(m17_couplers_to_axi_peripheral_interconnect_AWVALID),
        .M_AXI_bready(m17_couplers_to_axi_peripheral_interconnect_BREADY),
        .M_AXI_bresp(m17_couplers_to_axi_peripheral_interconnect_BRESP),
        .M_AXI_bvalid(m17_couplers_to_axi_peripheral_interconnect_BVALID),
        .M_AXI_rdata(m17_couplers_to_axi_peripheral_interconnect_RDATA),
        .M_AXI_rready(m17_couplers_to_axi_peripheral_interconnect_RREADY),
        .M_AXI_rresp(m17_couplers_to_axi_peripheral_interconnect_RRESP),
        .M_AXI_rvalid(m17_couplers_to_axi_peripheral_interconnect_RVALID),
        .M_AXI_wdata(m17_couplers_to_axi_peripheral_interconnect_WDATA),
        .M_AXI_wready(m17_couplers_to_axi_peripheral_interconnect_WREADY),
        .M_AXI_wstrb(m17_couplers_to_axi_peripheral_interconnect_WSTRB),
        .M_AXI_wvalid(m17_couplers_to_axi_peripheral_interconnect_WVALID),
        .S_ACLK(axi_peripheral_interconnect_ACLK_net),
        .S_ARESETN(axi_peripheral_interconnect_ARESETN_net),
        .S_AXI_araddr(tier2_xbar_2_to_m17_couplers_ARADDR),
        .S_AXI_arprot(tier2_xbar_2_to_m17_couplers_ARPROT),
        .S_AXI_arready(tier2_xbar_2_to_m17_couplers_ARREADY),
        .S_AXI_arvalid(tier2_xbar_2_to_m17_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_2_to_m17_couplers_AWADDR),
        .S_AXI_awprot(tier2_xbar_2_to_m17_couplers_AWPROT),
        .S_AXI_awready(tier2_xbar_2_to_m17_couplers_AWREADY),
        .S_AXI_awvalid(tier2_xbar_2_to_m17_couplers_AWVALID),
        .S_AXI_bready(tier2_xbar_2_to_m17_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_2_to_m17_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_2_to_m17_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_2_to_m17_couplers_RDATA),
        .S_AXI_rready(tier2_xbar_2_to_m17_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_2_to_m17_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_2_to_m17_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_2_to_m17_couplers_WDATA),
        .S_AXI_wready(tier2_xbar_2_to_m17_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_2_to_m17_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_2_to_m17_couplers_WVALID));
  m18_couplers_imp_IXD6DJ m18_couplers
       (.M_ACLK(M18_ACLK_1),
        .M_ARESETN(M18_ARESETN_1),
        .M_AXI_araddr(m18_couplers_to_axi_peripheral_interconnect_ARADDR),
        .M_AXI_arprot(m18_couplers_to_axi_peripheral_interconnect_ARPROT),
        .M_AXI_arready(m18_couplers_to_axi_peripheral_interconnect_ARREADY),
        .M_AXI_arvalid(m18_couplers_to_axi_peripheral_interconnect_ARVALID),
        .M_AXI_awaddr(m18_couplers_to_axi_peripheral_interconnect_AWADDR),
        .M_AXI_awprot(m18_couplers_to_axi_peripheral_interconnect_AWPROT),
        .M_AXI_awready(m18_couplers_to_axi_peripheral_interconnect_AWREADY),
        .M_AXI_awvalid(m18_couplers_to_axi_peripheral_interconnect_AWVALID),
        .M_AXI_bready(m18_couplers_to_axi_peripheral_interconnect_BREADY),
        .M_AXI_bresp(m18_couplers_to_axi_peripheral_interconnect_BRESP),
        .M_AXI_bvalid(m18_couplers_to_axi_peripheral_interconnect_BVALID),
        .M_AXI_rdata(m18_couplers_to_axi_peripheral_interconnect_RDATA),
        .M_AXI_rready(m18_couplers_to_axi_peripheral_interconnect_RREADY),
        .M_AXI_rresp(m18_couplers_to_axi_peripheral_interconnect_RRESP),
        .M_AXI_rvalid(m18_couplers_to_axi_peripheral_interconnect_RVALID),
        .M_AXI_wdata(m18_couplers_to_axi_peripheral_interconnect_WDATA),
        .M_AXI_wready(m18_couplers_to_axi_peripheral_interconnect_WREADY),
        .M_AXI_wstrb(m18_couplers_to_axi_peripheral_interconnect_WSTRB),
        .M_AXI_wvalid(m18_couplers_to_axi_peripheral_interconnect_WVALID),
        .S_ACLK(axi_peripheral_interconnect_ACLK_net),
        .S_ARESETN(axi_peripheral_interconnect_ARESETN_net),
        .S_AXI_araddr(tier2_xbar_2_to_m18_couplers_ARADDR),
        .S_AXI_arprot(tier2_xbar_2_to_m18_couplers_ARPROT),
        .S_AXI_arready(tier2_xbar_2_to_m18_couplers_ARREADY),
        .S_AXI_arvalid(tier2_xbar_2_to_m18_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_2_to_m18_couplers_AWADDR),
        .S_AXI_awprot(tier2_xbar_2_to_m18_couplers_AWPROT),
        .S_AXI_awready(tier2_xbar_2_to_m18_couplers_AWREADY),
        .S_AXI_awvalid(tier2_xbar_2_to_m18_couplers_AWVALID),
        .S_AXI_bready(tier2_xbar_2_to_m18_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_2_to_m18_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_2_to_m18_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_2_to_m18_couplers_RDATA),
        .S_AXI_rready(tier2_xbar_2_to_m18_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_2_to_m18_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_2_to_m18_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_2_to_m18_couplers_WDATA),
        .S_AXI_wready(tier2_xbar_2_to_m18_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_2_to_m18_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_2_to_m18_couplers_WVALID));
  m19_couplers_imp_1BJZ6UE m19_couplers
       (.M_ACLK(M19_ACLK_1),
        .M_ARESETN(M19_ARESETN_1),
        .M_AXI_araddr(m19_couplers_to_axi_peripheral_interconnect_ARADDR),
        .M_AXI_arprot(m19_couplers_to_axi_peripheral_interconnect_ARPROT),
        .M_AXI_arready(m19_couplers_to_axi_peripheral_interconnect_ARREADY),
        .M_AXI_arvalid(m19_couplers_to_axi_peripheral_interconnect_ARVALID),
        .M_AXI_awaddr(m19_couplers_to_axi_peripheral_interconnect_AWADDR),
        .M_AXI_awprot(m19_couplers_to_axi_peripheral_interconnect_AWPROT),
        .M_AXI_awready(m19_couplers_to_axi_peripheral_interconnect_AWREADY),
        .M_AXI_awvalid(m19_couplers_to_axi_peripheral_interconnect_AWVALID),
        .M_AXI_bready(m19_couplers_to_axi_peripheral_interconnect_BREADY),
        .M_AXI_bresp(m19_couplers_to_axi_peripheral_interconnect_BRESP),
        .M_AXI_bvalid(m19_couplers_to_axi_peripheral_interconnect_BVALID),
        .M_AXI_rdata(m19_couplers_to_axi_peripheral_interconnect_RDATA),
        .M_AXI_rready(m19_couplers_to_axi_peripheral_interconnect_RREADY),
        .M_AXI_rresp(m19_couplers_to_axi_peripheral_interconnect_RRESP),
        .M_AXI_rvalid(m19_couplers_to_axi_peripheral_interconnect_RVALID),
        .M_AXI_wdata(m19_couplers_to_axi_peripheral_interconnect_WDATA),
        .M_AXI_wready(m19_couplers_to_axi_peripheral_interconnect_WREADY),
        .M_AXI_wstrb(m19_couplers_to_axi_peripheral_interconnect_WSTRB),
        .M_AXI_wvalid(m19_couplers_to_axi_peripheral_interconnect_WVALID),
        .S_ACLK(axi_peripheral_interconnect_ACLK_net),
        .S_ARESETN(axi_peripheral_interconnect_ARESETN_net),
        .S_AXI_araddr(tier2_xbar_2_to_m19_couplers_ARADDR),
        .S_AXI_arprot(tier2_xbar_2_to_m19_couplers_ARPROT),
        .S_AXI_arready(tier2_xbar_2_to_m19_couplers_ARREADY),
        .S_AXI_arvalid(tier2_xbar_2_to_m19_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_2_to_m19_couplers_AWADDR),
        .S_AXI_awprot(tier2_xbar_2_to_m19_couplers_AWPROT),
        .S_AXI_awready(tier2_xbar_2_to_m19_couplers_AWREADY),
        .S_AXI_awvalid(tier2_xbar_2_to_m19_couplers_AWVALID),
        .S_AXI_bready(tier2_xbar_2_to_m19_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_2_to_m19_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_2_to_m19_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_2_to_m19_couplers_RDATA),
        .S_AXI_rready(tier2_xbar_2_to_m19_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_2_to_m19_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_2_to_m19_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_2_to_m19_couplers_WDATA),
        .S_AXI_wready(tier2_xbar_2_to_m19_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_2_to_m19_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_2_to_m19_couplers_WVALID));
  m20_couplers_imp_1UN83DU m20_couplers
       (.M_ACLK(M20_ACLK_1),
        .M_ARESETN(M20_ARESETN_1),
        .M_AXI_araddr(m20_couplers_to_axi_peripheral_interconnect_ARADDR),
        .M_AXI_arready(m20_couplers_to_axi_peripheral_interconnect_ARREADY),
        .M_AXI_arvalid(m20_couplers_to_axi_peripheral_interconnect_ARVALID),
        .M_AXI_awaddr(m20_couplers_to_axi_peripheral_interconnect_AWADDR),
        .M_AXI_awready(m20_couplers_to_axi_peripheral_interconnect_AWREADY),
        .M_AXI_awvalid(m20_couplers_to_axi_peripheral_interconnect_AWVALID),
        .M_AXI_bready(m20_couplers_to_axi_peripheral_interconnect_BREADY),
        .M_AXI_bresp(m20_couplers_to_axi_peripheral_interconnect_BRESP),
        .M_AXI_bvalid(m20_couplers_to_axi_peripheral_interconnect_BVALID),
        .M_AXI_rdata(m20_couplers_to_axi_peripheral_interconnect_RDATA),
        .M_AXI_rready(m20_couplers_to_axi_peripheral_interconnect_RREADY),
        .M_AXI_rresp(m20_couplers_to_axi_peripheral_interconnect_RRESP),
        .M_AXI_rvalid(m20_couplers_to_axi_peripheral_interconnect_RVALID),
        .M_AXI_wdata(m20_couplers_to_axi_peripheral_interconnect_WDATA),
        .M_AXI_wready(m20_couplers_to_axi_peripheral_interconnect_WREADY),
        .M_AXI_wstrb(m20_couplers_to_axi_peripheral_interconnect_WSTRB),
        .M_AXI_wvalid(m20_couplers_to_axi_peripheral_interconnect_WVALID),
        .S_ACLK(axi_peripheral_interconnect_ACLK_net),
        .S_ARESETN(axi_peripheral_interconnect_ARESETN_net),
        .S_AXI_araddr(tier2_xbar_2_to_m20_couplers_ARADDR),
        .S_AXI_arready(tier2_xbar_2_to_m20_couplers_ARREADY),
        .S_AXI_arvalid(tier2_xbar_2_to_m20_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_2_to_m20_couplers_AWADDR),
        .S_AXI_awready(tier2_xbar_2_to_m20_couplers_AWREADY),
        .S_AXI_awvalid(tier2_xbar_2_to_m20_couplers_AWVALID),
        .S_AXI_bready(tier2_xbar_2_to_m20_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_2_to_m20_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_2_to_m20_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_2_to_m20_couplers_RDATA),
        .S_AXI_rready(tier2_xbar_2_to_m20_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_2_to_m20_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_2_to_m20_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_2_to_m20_couplers_WDATA),
        .S_AXI_wready(tier2_xbar_2_to_m20_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_2_to_m20_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_2_to_m20_couplers_WVALID));
  m21_couplers_imp_8PIRIB m21_couplers
       (.M_ACLK(M21_ACLK_1),
        .M_ARESETN(M21_ARESETN_1),
        .M_AXI_araddr(m21_couplers_to_axi_peripheral_interconnect_ARADDR),
        .M_AXI_arprot(m21_couplers_to_axi_peripheral_interconnect_ARPROT),
        .M_AXI_arready(m21_couplers_to_axi_peripheral_interconnect_ARREADY),
        .M_AXI_arvalid(m21_couplers_to_axi_peripheral_interconnect_ARVALID),
        .M_AXI_awaddr(m21_couplers_to_axi_peripheral_interconnect_AWADDR),
        .M_AXI_awprot(m21_couplers_to_axi_peripheral_interconnect_AWPROT),
        .M_AXI_awready(m21_couplers_to_axi_peripheral_interconnect_AWREADY),
        .M_AXI_awvalid(m21_couplers_to_axi_peripheral_interconnect_AWVALID),
        .M_AXI_bready(m21_couplers_to_axi_peripheral_interconnect_BREADY),
        .M_AXI_bresp(m21_couplers_to_axi_peripheral_interconnect_BRESP),
        .M_AXI_bvalid(m21_couplers_to_axi_peripheral_interconnect_BVALID),
        .M_AXI_rdata(m21_couplers_to_axi_peripheral_interconnect_RDATA),
        .M_AXI_rready(m21_couplers_to_axi_peripheral_interconnect_RREADY),
        .M_AXI_rresp(m21_couplers_to_axi_peripheral_interconnect_RRESP),
        .M_AXI_rvalid(m21_couplers_to_axi_peripheral_interconnect_RVALID),
        .M_AXI_wdata(m21_couplers_to_axi_peripheral_interconnect_WDATA),
        .M_AXI_wready(m21_couplers_to_axi_peripheral_interconnect_WREADY),
        .M_AXI_wstrb(m21_couplers_to_axi_peripheral_interconnect_WSTRB),
        .M_AXI_wvalid(m21_couplers_to_axi_peripheral_interconnect_WVALID),
        .S_ACLK(axi_peripheral_interconnect_ACLK_net),
        .S_ARESETN(axi_peripheral_interconnect_ARESETN_net),
        .S_AXI_araddr(tier2_xbar_2_to_m21_couplers_ARADDR),
        .S_AXI_arprot(tier2_xbar_2_to_m21_couplers_ARPROT),
        .S_AXI_arready(tier2_xbar_2_to_m21_couplers_ARREADY),
        .S_AXI_arvalid(tier2_xbar_2_to_m21_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_2_to_m21_couplers_AWADDR),
        .S_AXI_awprot(tier2_xbar_2_to_m21_couplers_AWPROT),
        .S_AXI_awready(tier2_xbar_2_to_m21_couplers_AWREADY),
        .S_AXI_awvalid(tier2_xbar_2_to_m21_couplers_AWVALID),
        .S_AXI_bready(tier2_xbar_2_to_m21_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_2_to_m21_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_2_to_m21_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_2_to_m21_couplers_RDATA),
        .S_AXI_rready(tier2_xbar_2_to_m21_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_2_to_m21_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_2_to_m21_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_2_to_m21_couplers_WDATA),
        .S_AXI_wready(tier2_xbar_2_to_m21_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_2_to_m21_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_2_to_m21_couplers_WVALID));
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
  icyradio_tier2_xbar_0_0 tier2_xbar_0
       (.aclk(axi_peripheral_interconnect_ACLK_net),
        .aresetn(axi_peripheral_interconnect_ARESETN_net),
        .m_axi_araddr({tier2_xbar_0_to_m07_couplers_ARADDR,tier2_xbar_0_to_m06_couplers_ARADDR,tier2_xbar_0_to_m05_couplers_ARADDR,tier2_xbar_0_to_m04_couplers_ARADDR,tier2_xbar_0_to_m03_couplers_ARADDR,tier2_xbar_0_to_m02_couplers_ARADDR,tier2_xbar_0_to_m01_couplers_ARADDR,tier2_xbar_0_to_m00_couplers_ARADDR}),
        .m_axi_arprot({tier2_xbar_0_to_m06_couplers_ARPROT,tier2_xbar_0_to_m05_couplers_ARPROT,tier2_xbar_0_to_m04_couplers_ARPROT,tier2_xbar_0_to_m03_couplers_ARPROT,tier2_xbar_0_to_m02_couplers_ARPROT,tier2_xbar_0_to_m01_couplers_ARPROT,tier2_xbar_0_to_m00_couplers_ARPROT}),
        .m_axi_arready({tier2_xbar_0_to_m07_couplers_ARREADY,tier2_xbar_0_to_m06_couplers_ARREADY,tier2_xbar_0_to_m05_couplers_ARREADY,tier2_xbar_0_to_m04_couplers_ARREADY,tier2_xbar_0_to_m03_couplers_ARREADY,tier2_xbar_0_to_m02_couplers_ARREADY,tier2_xbar_0_to_m01_couplers_ARREADY,tier2_xbar_0_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({tier2_xbar_0_to_m07_couplers_ARVALID,tier2_xbar_0_to_m06_couplers_ARVALID,tier2_xbar_0_to_m05_couplers_ARVALID,tier2_xbar_0_to_m04_couplers_ARVALID,tier2_xbar_0_to_m03_couplers_ARVALID,tier2_xbar_0_to_m02_couplers_ARVALID,tier2_xbar_0_to_m01_couplers_ARVALID,tier2_xbar_0_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({tier2_xbar_0_to_m07_couplers_AWADDR,tier2_xbar_0_to_m06_couplers_AWADDR,tier2_xbar_0_to_m05_couplers_AWADDR,tier2_xbar_0_to_m04_couplers_AWADDR,tier2_xbar_0_to_m03_couplers_AWADDR,tier2_xbar_0_to_m02_couplers_AWADDR,tier2_xbar_0_to_m01_couplers_AWADDR,tier2_xbar_0_to_m00_couplers_AWADDR}),
        .m_axi_awprot({tier2_xbar_0_to_m06_couplers_AWPROT,tier2_xbar_0_to_m05_couplers_AWPROT,tier2_xbar_0_to_m04_couplers_AWPROT,tier2_xbar_0_to_m03_couplers_AWPROT,tier2_xbar_0_to_m02_couplers_AWPROT,tier2_xbar_0_to_m01_couplers_AWPROT,tier2_xbar_0_to_m00_couplers_AWPROT}),
        .m_axi_awready({tier2_xbar_0_to_m07_couplers_AWREADY,tier2_xbar_0_to_m06_couplers_AWREADY,tier2_xbar_0_to_m05_couplers_AWREADY,tier2_xbar_0_to_m04_couplers_AWREADY,tier2_xbar_0_to_m03_couplers_AWREADY,tier2_xbar_0_to_m02_couplers_AWREADY,tier2_xbar_0_to_m01_couplers_AWREADY,tier2_xbar_0_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({tier2_xbar_0_to_m07_couplers_AWVALID,tier2_xbar_0_to_m06_couplers_AWVALID,tier2_xbar_0_to_m05_couplers_AWVALID,tier2_xbar_0_to_m04_couplers_AWVALID,tier2_xbar_0_to_m03_couplers_AWVALID,tier2_xbar_0_to_m02_couplers_AWVALID,tier2_xbar_0_to_m01_couplers_AWVALID,tier2_xbar_0_to_m00_couplers_AWVALID}),
        .m_axi_bready({tier2_xbar_0_to_m07_couplers_BREADY,tier2_xbar_0_to_m06_couplers_BREADY,tier2_xbar_0_to_m05_couplers_BREADY,tier2_xbar_0_to_m04_couplers_BREADY,tier2_xbar_0_to_m03_couplers_BREADY,tier2_xbar_0_to_m02_couplers_BREADY,tier2_xbar_0_to_m01_couplers_BREADY,tier2_xbar_0_to_m00_couplers_BREADY}),
        .m_axi_bresp({tier2_xbar_0_to_m07_couplers_BRESP,tier2_xbar_0_to_m06_couplers_BRESP,tier2_xbar_0_to_m05_couplers_BRESP,tier2_xbar_0_to_m04_couplers_BRESP,tier2_xbar_0_to_m03_couplers_BRESP,tier2_xbar_0_to_m02_couplers_BRESP,tier2_xbar_0_to_m01_couplers_BRESP,tier2_xbar_0_to_m00_couplers_BRESP}),
        .m_axi_bvalid({tier2_xbar_0_to_m07_couplers_BVALID,tier2_xbar_0_to_m06_couplers_BVALID,tier2_xbar_0_to_m05_couplers_BVALID,tier2_xbar_0_to_m04_couplers_BVALID,tier2_xbar_0_to_m03_couplers_BVALID,tier2_xbar_0_to_m02_couplers_BVALID,tier2_xbar_0_to_m01_couplers_BVALID,tier2_xbar_0_to_m00_couplers_BVALID}),
        .m_axi_rdata({tier2_xbar_0_to_m07_couplers_RDATA,tier2_xbar_0_to_m06_couplers_RDATA,tier2_xbar_0_to_m05_couplers_RDATA,tier2_xbar_0_to_m04_couplers_RDATA,tier2_xbar_0_to_m03_couplers_RDATA,tier2_xbar_0_to_m02_couplers_RDATA,tier2_xbar_0_to_m01_couplers_RDATA,tier2_xbar_0_to_m00_couplers_RDATA}),
        .m_axi_rready({tier2_xbar_0_to_m07_couplers_RREADY,tier2_xbar_0_to_m06_couplers_RREADY,tier2_xbar_0_to_m05_couplers_RREADY,tier2_xbar_0_to_m04_couplers_RREADY,tier2_xbar_0_to_m03_couplers_RREADY,tier2_xbar_0_to_m02_couplers_RREADY,tier2_xbar_0_to_m01_couplers_RREADY,tier2_xbar_0_to_m00_couplers_RREADY}),
        .m_axi_rresp({tier2_xbar_0_to_m07_couplers_RRESP,tier2_xbar_0_to_m06_couplers_RRESP,tier2_xbar_0_to_m05_couplers_RRESP,tier2_xbar_0_to_m04_couplers_RRESP,tier2_xbar_0_to_m03_couplers_RRESP,tier2_xbar_0_to_m02_couplers_RRESP,tier2_xbar_0_to_m01_couplers_RRESP,tier2_xbar_0_to_m00_couplers_RRESP}),
        .m_axi_rvalid({tier2_xbar_0_to_m07_couplers_RVALID,tier2_xbar_0_to_m06_couplers_RVALID,tier2_xbar_0_to_m05_couplers_RVALID,tier2_xbar_0_to_m04_couplers_RVALID,tier2_xbar_0_to_m03_couplers_RVALID,tier2_xbar_0_to_m02_couplers_RVALID,tier2_xbar_0_to_m01_couplers_RVALID,tier2_xbar_0_to_m00_couplers_RVALID}),
        .m_axi_wdata({tier2_xbar_0_to_m07_couplers_WDATA,tier2_xbar_0_to_m06_couplers_WDATA,tier2_xbar_0_to_m05_couplers_WDATA,tier2_xbar_0_to_m04_couplers_WDATA,tier2_xbar_0_to_m03_couplers_WDATA,tier2_xbar_0_to_m02_couplers_WDATA,tier2_xbar_0_to_m01_couplers_WDATA,tier2_xbar_0_to_m00_couplers_WDATA}),
        .m_axi_wready({tier2_xbar_0_to_m07_couplers_WREADY,tier2_xbar_0_to_m06_couplers_WREADY,tier2_xbar_0_to_m05_couplers_WREADY,tier2_xbar_0_to_m04_couplers_WREADY,tier2_xbar_0_to_m03_couplers_WREADY,tier2_xbar_0_to_m02_couplers_WREADY,tier2_xbar_0_to_m01_couplers_WREADY,tier2_xbar_0_to_m00_couplers_WREADY}),
        .m_axi_wstrb({tier2_xbar_0_to_m07_couplers_WSTRB,tier2_xbar_0_to_m06_couplers_WSTRB,tier2_xbar_0_to_m05_couplers_WSTRB,tier2_xbar_0_to_m04_couplers_WSTRB,tier2_xbar_0_to_m03_couplers_WSTRB,tier2_xbar_0_to_m02_couplers_WSTRB,tier2_xbar_0_to_m01_couplers_WSTRB,tier2_xbar_0_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({tier2_xbar_0_to_m07_couplers_WVALID,tier2_xbar_0_to_m06_couplers_WVALID,tier2_xbar_0_to_m05_couplers_WVALID,tier2_xbar_0_to_m04_couplers_WVALID,tier2_xbar_0_to_m03_couplers_WVALID,tier2_xbar_0_to_m02_couplers_WVALID,tier2_xbar_0_to_m01_couplers_WVALID,tier2_xbar_0_to_m00_couplers_WVALID}),
        .s_axi_araddr(i00_couplers_to_tier2_xbar_0_ARADDR),
        .s_axi_arprot(i00_couplers_to_tier2_xbar_0_ARPROT),
        .s_axi_arready(i00_couplers_to_tier2_xbar_0_ARREADY),
        .s_axi_arvalid(i00_couplers_to_tier2_xbar_0_ARVALID),
        .s_axi_awaddr(i00_couplers_to_tier2_xbar_0_AWADDR),
        .s_axi_awprot(i00_couplers_to_tier2_xbar_0_AWPROT),
        .s_axi_awready(i00_couplers_to_tier2_xbar_0_AWREADY),
        .s_axi_awvalid(i00_couplers_to_tier2_xbar_0_AWVALID),
        .s_axi_bready(i00_couplers_to_tier2_xbar_0_BREADY),
        .s_axi_bresp(i00_couplers_to_tier2_xbar_0_BRESP),
        .s_axi_bvalid(i00_couplers_to_tier2_xbar_0_BVALID),
        .s_axi_rdata(i00_couplers_to_tier2_xbar_0_RDATA),
        .s_axi_rready(i00_couplers_to_tier2_xbar_0_RREADY),
        .s_axi_rresp(i00_couplers_to_tier2_xbar_0_RRESP),
        .s_axi_rvalid(i00_couplers_to_tier2_xbar_0_RVALID),
        .s_axi_wdata(i00_couplers_to_tier2_xbar_0_WDATA),
        .s_axi_wready(i00_couplers_to_tier2_xbar_0_WREADY),
        .s_axi_wstrb(i00_couplers_to_tier2_xbar_0_WSTRB),
        .s_axi_wvalid(i00_couplers_to_tier2_xbar_0_WVALID));
  icyradio_tier2_xbar_1_0 tier2_xbar_1
       (.aclk(axi_peripheral_interconnect_ACLK_net),
        .aresetn(axi_peripheral_interconnect_ARESETN_net),
        .m_axi_araddr({tier2_xbar_1_to_m15_couplers_ARADDR,tier2_xbar_1_to_m14_couplers_ARADDR,tier2_xbar_1_to_m13_couplers_ARADDR,tier2_xbar_1_to_m12_couplers_ARADDR,tier2_xbar_1_to_m11_couplers_ARADDR,tier2_xbar_1_to_m10_couplers_ARADDR,tier2_xbar_1_to_m09_couplers_ARADDR,tier2_xbar_1_to_m08_couplers_ARADDR}),
        .m_axi_arprot({tier2_xbar_1_to_m15_couplers_ARPROT,tier2_xbar_1_to_m14_couplers_ARPROT,tier2_xbar_1_to_m13_couplers_ARPROT,tier2_xbar_1_to_m12_couplers_ARPROT,tier2_xbar_1_to_m11_couplers_ARPROT,tier2_xbar_1_to_m10_couplers_ARPROT,NLW_tier2_xbar_1_m_axi_arprot_UNCONNECTED[5:0]}),
        .m_axi_arready({tier2_xbar_1_to_m15_couplers_ARREADY,tier2_xbar_1_to_m14_couplers_ARREADY,tier2_xbar_1_to_m13_couplers_ARREADY,tier2_xbar_1_to_m12_couplers_ARREADY,tier2_xbar_1_to_m11_couplers_ARREADY,tier2_xbar_1_to_m10_couplers_ARREADY,tier2_xbar_1_to_m09_couplers_ARREADY,tier2_xbar_1_to_m08_couplers_ARREADY}),
        .m_axi_arvalid({tier2_xbar_1_to_m15_couplers_ARVALID,tier2_xbar_1_to_m14_couplers_ARVALID,tier2_xbar_1_to_m13_couplers_ARVALID,tier2_xbar_1_to_m12_couplers_ARVALID,tier2_xbar_1_to_m11_couplers_ARVALID,tier2_xbar_1_to_m10_couplers_ARVALID,tier2_xbar_1_to_m09_couplers_ARVALID,tier2_xbar_1_to_m08_couplers_ARVALID}),
        .m_axi_awaddr({tier2_xbar_1_to_m15_couplers_AWADDR,tier2_xbar_1_to_m14_couplers_AWADDR,tier2_xbar_1_to_m13_couplers_AWADDR,tier2_xbar_1_to_m12_couplers_AWADDR,tier2_xbar_1_to_m11_couplers_AWADDR,tier2_xbar_1_to_m10_couplers_AWADDR,tier2_xbar_1_to_m09_couplers_AWADDR,tier2_xbar_1_to_m08_couplers_AWADDR}),
        .m_axi_awprot({tier2_xbar_1_to_m15_couplers_AWPROT,tier2_xbar_1_to_m14_couplers_AWPROT,tier2_xbar_1_to_m13_couplers_AWPROT,tier2_xbar_1_to_m12_couplers_AWPROT,tier2_xbar_1_to_m11_couplers_AWPROT,tier2_xbar_1_to_m10_couplers_AWPROT,NLW_tier2_xbar_1_m_axi_awprot_UNCONNECTED[5:0]}),
        .m_axi_awready({tier2_xbar_1_to_m15_couplers_AWREADY,tier2_xbar_1_to_m14_couplers_AWREADY,tier2_xbar_1_to_m13_couplers_AWREADY,tier2_xbar_1_to_m12_couplers_AWREADY,tier2_xbar_1_to_m11_couplers_AWREADY,tier2_xbar_1_to_m10_couplers_AWREADY,tier2_xbar_1_to_m09_couplers_AWREADY,tier2_xbar_1_to_m08_couplers_AWREADY}),
        .m_axi_awvalid({tier2_xbar_1_to_m15_couplers_AWVALID,tier2_xbar_1_to_m14_couplers_AWVALID,tier2_xbar_1_to_m13_couplers_AWVALID,tier2_xbar_1_to_m12_couplers_AWVALID,tier2_xbar_1_to_m11_couplers_AWVALID,tier2_xbar_1_to_m10_couplers_AWVALID,tier2_xbar_1_to_m09_couplers_AWVALID,tier2_xbar_1_to_m08_couplers_AWVALID}),
        .m_axi_bready({tier2_xbar_1_to_m15_couplers_BREADY,tier2_xbar_1_to_m14_couplers_BREADY,tier2_xbar_1_to_m13_couplers_BREADY,tier2_xbar_1_to_m12_couplers_BREADY,tier2_xbar_1_to_m11_couplers_BREADY,tier2_xbar_1_to_m10_couplers_BREADY,tier2_xbar_1_to_m09_couplers_BREADY,tier2_xbar_1_to_m08_couplers_BREADY}),
        .m_axi_bresp({tier2_xbar_1_to_m15_couplers_BRESP,tier2_xbar_1_to_m14_couplers_BRESP,tier2_xbar_1_to_m13_couplers_BRESP,tier2_xbar_1_to_m12_couplers_BRESP,tier2_xbar_1_to_m11_couplers_BRESP,tier2_xbar_1_to_m10_couplers_BRESP,tier2_xbar_1_to_m09_couplers_BRESP,tier2_xbar_1_to_m08_couplers_BRESP}),
        .m_axi_bvalid({tier2_xbar_1_to_m15_couplers_BVALID,tier2_xbar_1_to_m14_couplers_BVALID,tier2_xbar_1_to_m13_couplers_BVALID,tier2_xbar_1_to_m12_couplers_BVALID,tier2_xbar_1_to_m11_couplers_BVALID,tier2_xbar_1_to_m10_couplers_BVALID,tier2_xbar_1_to_m09_couplers_BVALID,tier2_xbar_1_to_m08_couplers_BVALID}),
        .m_axi_rdata({tier2_xbar_1_to_m15_couplers_RDATA,tier2_xbar_1_to_m14_couplers_RDATA,tier2_xbar_1_to_m13_couplers_RDATA,tier2_xbar_1_to_m12_couplers_RDATA,tier2_xbar_1_to_m11_couplers_RDATA,tier2_xbar_1_to_m10_couplers_RDATA,tier2_xbar_1_to_m09_couplers_RDATA,tier2_xbar_1_to_m08_couplers_RDATA}),
        .m_axi_rready({tier2_xbar_1_to_m15_couplers_RREADY,tier2_xbar_1_to_m14_couplers_RREADY,tier2_xbar_1_to_m13_couplers_RREADY,tier2_xbar_1_to_m12_couplers_RREADY,tier2_xbar_1_to_m11_couplers_RREADY,tier2_xbar_1_to_m10_couplers_RREADY,tier2_xbar_1_to_m09_couplers_RREADY,tier2_xbar_1_to_m08_couplers_RREADY}),
        .m_axi_rresp({tier2_xbar_1_to_m15_couplers_RRESP,tier2_xbar_1_to_m14_couplers_RRESP,tier2_xbar_1_to_m13_couplers_RRESP,tier2_xbar_1_to_m12_couplers_RRESP,tier2_xbar_1_to_m11_couplers_RRESP,tier2_xbar_1_to_m10_couplers_RRESP,tier2_xbar_1_to_m09_couplers_RRESP,tier2_xbar_1_to_m08_couplers_RRESP}),
        .m_axi_rvalid({tier2_xbar_1_to_m15_couplers_RVALID,tier2_xbar_1_to_m14_couplers_RVALID,tier2_xbar_1_to_m13_couplers_RVALID,tier2_xbar_1_to_m12_couplers_RVALID,tier2_xbar_1_to_m11_couplers_RVALID,tier2_xbar_1_to_m10_couplers_RVALID,tier2_xbar_1_to_m09_couplers_RVALID,tier2_xbar_1_to_m08_couplers_RVALID}),
        .m_axi_wdata({tier2_xbar_1_to_m15_couplers_WDATA,tier2_xbar_1_to_m14_couplers_WDATA,tier2_xbar_1_to_m13_couplers_WDATA,tier2_xbar_1_to_m12_couplers_WDATA,tier2_xbar_1_to_m11_couplers_WDATA,tier2_xbar_1_to_m10_couplers_WDATA,tier2_xbar_1_to_m09_couplers_WDATA,tier2_xbar_1_to_m08_couplers_WDATA}),
        .m_axi_wready({tier2_xbar_1_to_m15_couplers_WREADY,tier2_xbar_1_to_m14_couplers_WREADY,tier2_xbar_1_to_m13_couplers_WREADY,tier2_xbar_1_to_m12_couplers_WREADY,tier2_xbar_1_to_m11_couplers_WREADY,tier2_xbar_1_to_m10_couplers_WREADY,tier2_xbar_1_to_m09_couplers_WREADY,tier2_xbar_1_to_m08_couplers_WREADY}),
        .m_axi_wstrb({tier2_xbar_1_to_m15_couplers_WSTRB,tier2_xbar_1_to_m14_couplers_WSTRB,tier2_xbar_1_to_m13_couplers_WSTRB,tier2_xbar_1_to_m12_couplers_WSTRB,tier2_xbar_1_to_m11_couplers_WSTRB,tier2_xbar_1_to_m10_couplers_WSTRB,tier2_xbar_1_to_m09_couplers_WSTRB,tier2_xbar_1_to_m08_couplers_WSTRB}),
        .m_axi_wvalid({tier2_xbar_1_to_m15_couplers_WVALID,tier2_xbar_1_to_m14_couplers_WVALID,tier2_xbar_1_to_m13_couplers_WVALID,tier2_xbar_1_to_m12_couplers_WVALID,tier2_xbar_1_to_m11_couplers_WVALID,tier2_xbar_1_to_m10_couplers_WVALID,tier2_xbar_1_to_m09_couplers_WVALID,tier2_xbar_1_to_m08_couplers_WVALID}),
        .s_axi_araddr(i01_couplers_to_tier2_xbar_1_ARADDR),
        .s_axi_arprot(i01_couplers_to_tier2_xbar_1_ARPROT),
        .s_axi_arready(i01_couplers_to_tier2_xbar_1_ARREADY),
        .s_axi_arvalid(i01_couplers_to_tier2_xbar_1_ARVALID),
        .s_axi_awaddr(i01_couplers_to_tier2_xbar_1_AWADDR),
        .s_axi_awprot(i01_couplers_to_tier2_xbar_1_AWPROT),
        .s_axi_awready(i01_couplers_to_tier2_xbar_1_AWREADY),
        .s_axi_awvalid(i01_couplers_to_tier2_xbar_1_AWVALID),
        .s_axi_bready(i01_couplers_to_tier2_xbar_1_BREADY),
        .s_axi_bresp(i01_couplers_to_tier2_xbar_1_BRESP),
        .s_axi_bvalid(i01_couplers_to_tier2_xbar_1_BVALID),
        .s_axi_rdata(i01_couplers_to_tier2_xbar_1_RDATA),
        .s_axi_rready(i01_couplers_to_tier2_xbar_1_RREADY),
        .s_axi_rresp(i01_couplers_to_tier2_xbar_1_RRESP),
        .s_axi_rvalid(i01_couplers_to_tier2_xbar_1_RVALID),
        .s_axi_wdata(i01_couplers_to_tier2_xbar_1_WDATA),
        .s_axi_wready(i01_couplers_to_tier2_xbar_1_WREADY),
        .s_axi_wstrb(i01_couplers_to_tier2_xbar_1_WSTRB),
        .s_axi_wvalid(i01_couplers_to_tier2_xbar_1_WVALID));
  icyradio_tier2_xbar_2_0 tier2_xbar_2
       (.aclk(axi_peripheral_interconnect_ACLK_net),
        .aresetn(axi_peripheral_interconnect_ARESETN_net),
        .m_axi_araddr({tier2_xbar_2_to_m21_couplers_ARADDR,tier2_xbar_2_to_m20_couplers_ARADDR,tier2_xbar_2_to_m19_couplers_ARADDR,tier2_xbar_2_to_m18_couplers_ARADDR,tier2_xbar_2_to_m17_couplers_ARADDR,tier2_xbar_2_to_m16_couplers_ARADDR}),
        .m_axi_arprot({tier2_xbar_2_to_m21_couplers_ARPROT,NLW_tier2_xbar_2_m_axi_arprot_UNCONNECTED[14:12],tier2_xbar_2_to_m19_couplers_ARPROT,tier2_xbar_2_to_m18_couplers_ARPROT,tier2_xbar_2_to_m17_couplers_ARPROT,tier2_xbar_2_to_m16_couplers_ARPROT}),
        .m_axi_arready({tier2_xbar_2_to_m21_couplers_ARREADY,tier2_xbar_2_to_m20_couplers_ARREADY,tier2_xbar_2_to_m19_couplers_ARREADY,tier2_xbar_2_to_m18_couplers_ARREADY,tier2_xbar_2_to_m17_couplers_ARREADY,tier2_xbar_2_to_m16_couplers_ARREADY}),
        .m_axi_arvalid({tier2_xbar_2_to_m21_couplers_ARVALID,tier2_xbar_2_to_m20_couplers_ARVALID,tier2_xbar_2_to_m19_couplers_ARVALID,tier2_xbar_2_to_m18_couplers_ARVALID,tier2_xbar_2_to_m17_couplers_ARVALID,tier2_xbar_2_to_m16_couplers_ARVALID}),
        .m_axi_awaddr({tier2_xbar_2_to_m21_couplers_AWADDR,tier2_xbar_2_to_m20_couplers_AWADDR,tier2_xbar_2_to_m19_couplers_AWADDR,tier2_xbar_2_to_m18_couplers_AWADDR,tier2_xbar_2_to_m17_couplers_AWADDR,tier2_xbar_2_to_m16_couplers_AWADDR}),
        .m_axi_awprot({tier2_xbar_2_to_m21_couplers_AWPROT,NLW_tier2_xbar_2_m_axi_awprot_UNCONNECTED[14:12],tier2_xbar_2_to_m19_couplers_AWPROT,tier2_xbar_2_to_m18_couplers_AWPROT,tier2_xbar_2_to_m17_couplers_AWPROT,tier2_xbar_2_to_m16_couplers_AWPROT}),
        .m_axi_awready({tier2_xbar_2_to_m21_couplers_AWREADY,tier2_xbar_2_to_m20_couplers_AWREADY,tier2_xbar_2_to_m19_couplers_AWREADY,tier2_xbar_2_to_m18_couplers_AWREADY,tier2_xbar_2_to_m17_couplers_AWREADY,tier2_xbar_2_to_m16_couplers_AWREADY}),
        .m_axi_awvalid({tier2_xbar_2_to_m21_couplers_AWVALID,tier2_xbar_2_to_m20_couplers_AWVALID,tier2_xbar_2_to_m19_couplers_AWVALID,tier2_xbar_2_to_m18_couplers_AWVALID,tier2_xbar_2_to_m17_couplers_AWVALID,tier2_xbar_2_to_m16_couplers_AWVALID}),
        .m_axi_bready({tier2_xbar_2_to_m21_couplers_BREADY,tier2_xbar_2_to_m20_couplers_BREADY,tier2_xbar_2_to_m19_couplers_BREADY,tier2_xbar_2_to_m18_couplers_BREADY,tier2_xbar_2_to_m17_couplers_BREADY,tier2_xbar_2_to_m16_couplers_BREADY}),
        .m_axi_bresp({tier2_xbar_2_to_m21_couplers_BRESP,tier2_xbar_2_to_m20_couplers_BRESP,tier2_xbar_2_to_m19_couplers_BRESP,tier2_xbar_2_to_m18_couplers_BRESP,tier2_xbar_2_to_m17_couplers_BRESP,tier2_xbar_2_to_m16_couplers_BRESP}),
        .m_axi_bvalid({tier2_xbar_2_to_m21_couplers_BVALID,tier2_xbar_2_to_m20_couplers_BVALID,tier2_xbar_2_to_m19_couplers_BVALID,tier2_xbar_2_to_m18_couplers_BVALID,tier2_xbar_2_to_m17_couplers_BVALID,tier2_xbar_2_to_m16_couplers_BVALID}),
        .m_axi_rdata({tier2_xbar_2_to_m21_couplers_RDATA,tier2_xbar_2_to_m20_couplers_RDATA,tier2_xbar_2_to_m19_couplers_RDATA,tier2_xbar_2_to_m18_couplers_RDATA,tier2_xbar_2_to_m17_couplers_RDATA,tier2_xbar_2_to_m16_couplers_RDATA}),
        .m_axi_rready({tier2_xbar_2_to_m21_couplers_RREADY,tier2_xbar_2_to_m20_couplers_RREADY,tier2_xbar_2_to_m19_couplers_RREADY,tier2_xbar_2_to_m18_couplers_RREADY,tier2_xbar_2_to_m17_couplers_RREADY,tier2_xbar_2_to_m16_couplers_RREADY}),
        .m_axi_rresp({tier2_xbar_2_to_m21_couplers_RRESP,tier2_xbar_2_to_m20_couplers_RRESP,tier2_xbar_2_to_m19_couplers_RRESP,tier2_xbar_2_to_m18_couplers_RRESP,tier2_xbar_2_to_m17_couplers_RRESP,tier2_xbar_2_to_m16_couplers_RRESP}),
        .m_axi_rvalid({tier2_xbar_2_to_m21_couplers_RVALID,tier2_xbar_2_to_m20_couplers_RVALID,tier2_xbar_2_to_m19_couplers_RVALID,tier2_xbar_2_to_m18_couplers_RVALID,tier2_xbar_2_to_m17_couplers_RVALID,tier2_xbar_2_to_m16_couplers_RVALID}),
        .m_axi_wdata({tier2_xbar_2_to_m21_couplers_WDATA,tier2_xbar_2_to_m20_couplers_WDATA,tier2_xbar_2_to_m19_couplers_WDATA,tier2_xbar_2_to_m18_couplers_WDATA,tier2_xbar_2_to_m17_couplers_WDATA,tier2_xbar_2_to_m16_couplers_WDATA}),
        .m_axi_wready({tier2_xbar_2_to_m21_couplers_WREADY,tier2_xbar_2_to_m20_couplers_WREADY,tier2_xbar_2_to_m19_couplers_WREADY,tier2_xbar_2_to_m18_couplers_WREADY,tier2_xbar_2_to_m17_couplers_WREADY,tier2_xbar_2_to_m16_couplers_WREADY}),
        .m_axi_wstrb({tier2_xbar_2_to_m21_couplers_WSTRB,tier2_xbar_2_to_m20_couplers_WSTRB,tier2_xbar_2_to_m19_couplers_WSTRB,tier2_xbar_2_to_m18_couplers_WSTRB,tier2_xbar_2_to_m17_couplers_WSTRB,tier2_xbar_2_to_m16_couplers_WSTRB}),
        .m_axi_wvalid({tier2_xbar_2_to_m21_couplers_WVALID,tier2_xbar_2_to_m20_couplers_WVALID,tier2_xbar_2_to_m19_couplers_WVALID,tier2_xbar_2_to_m18_couplers_WVALID,tier2_xbar_2_to_m17_couplers_WVALID,tier2_xbar_2_to_m16_couplers_WVALID}),
        .s_axi_araddr(i02_couplers_to_tier2_xbar_2_ARADDR),
        .s_axi_arprot(i02_couplers_to_tier2_xbar_2_ARPROT),
        .s_axi_arready(i02_couplers_to_tier2_xbar_2_ARREADY),
        .s_axi_arvalid(i02_couplers_to_tier2_xbar_2_ARVALID),
        .s_axi_awaddr(i02_couplers_to_tier2_xbar_2_AWADDR),
        .s_axi_awprot(i02_couplers_to_tier2_xbar_2_AWPROT),
        .s_axi_awready(i02_couplers_to_tier2_xbar_2_AWREADY),
        .s_axi_awvalid(i02_couplers_to_tier2_xbar_2_AWVALID),
        .s_axi_bready(i02_couplers_to_tier2_xbar_2_BREADY),
        .s_axi_bresp(i02_couplers_to_tier2_xbar_2_BRESP),
        .s_axi_bvalid(i02_couplers_to_tier2_xbar_2_BVALID),
        .s_axi_rdata(i02_couplers_to_tier2_xbar_2_RDATA),
        .s_axi_rready(i02_couplers_to_tier2_xbar_2_RREADY),
        .s_axi_rresp(i02_couplers_to_tier2_xbar_2_RRESP),
        .s_axi_rvalid(i02_couplers_to_tier2_xbar_2_RVALID),
        .s_axi_wdata(i02_couplers_to_tier2_xbar_2_WDATA),
        .s_axi_wready(i02_couplers_to_tier2_xbar_2_WREADY),
        .s_axi_wstrb(i02_couplers_to_tier2_xbar_2_WSTRB),
        .s_axi_wvalid(i02_couplers_to_tier2_xbar_2_WVALID));
  icyradio_xbar_0 xbar
       (.aclk(axi_peripheral_interconnect_ACLK_net),
        .aresetn(axi_peripheral_interconnect_ARESETN_net),
        .m_axi_araddr({xbar_to_i02_couplers_ARADDR,xbar_to_i01_couplers_ARADDR,xbar_to_i00_couplers_ARADDR}),
        .m_axi_arprot({xbar_to_i02_couplers_ARPROT,xbar_to_i01_couplers_ARPROT,xbar_to_i00_couplers_ARPROT}),
        .m_axi_arready({xbar_to_i02_couplers_ARREADY,xbar_to_i01_couplers_ARREADY,xbar_to_i00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_i02_couplers_ARVALID,xbar_to_i01_couplers_ARVALID,xbar_to_i00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_i02_couplers_AWADDR,xbar_to_i01_couplers_AWADDR,xbar_to_i00_couplers_AWADDR}),
        .m_axi_awprot({xbar_to_i02_couplers_AWPROT,xbar_to_i01_couplers_AWPROT,xbar_to_i00_couplers_AWPROT}),
        .m_axi_awready({xbar_to_i02_couplers_AWREADY,xbar_to_i01_couplers_AWREADY,xbar_to_i00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_i02_couplers_AWVALID,xbar_to_i01_couplers_AWVALID,xbar_to_i00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_i02_couplers_BREADY,xbar_to_i01_couplers_BREADY,xbar_to_i00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_i02_couplers_BRESP,xbar_to_i01_couplers_BRESP,xbar_to_i00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_i02_couplers_BVALID,xbar_to_i01_couplers_BVALID,xbar_to_i00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_i02_couplers_RDATA,xbar_to_i01_couplers_RDATA,xbar_to_i00_couplers_RDATA}),
        .m_axi_rready({xbar_to_i02_couplers_RREADY,xbar_to_i01_couplers_RREADY,xbar_to_i00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_i02_couplers_RRESP,xbar_to_i01_couplers_RRESP,xbar_to_i00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_i02_couplers_RVALID,xbar_to_i01_couplers_RVALID,xbar_to_i00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_i02_couplers_WDATA,xbar_to_i01_couplers_WDATA,xbar_to_i00_couplers_WDATA}),
        .m_axi_wready({xbar_to_i02_couplers_WREADY,xbar_to_i01_couplers_WREADY,xbar_to_i00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_i02_couplers_WSTRB,xbar_to_i01_couplers_WSTRB,xbar_to_i00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_i02_couplers_WVALID,xbar_to_i01_couplers_WVALID,xbar_to_i00_couplers_WVALID}),
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

  wire [31:0]m00_couplers_to_m00_couplers_ARADDR;
  wire [2:0]m00_couplers_to_m00_couplers_ARPROT;
  wire m00_couplers_to_m00_couplers_ARREADY;
  wire m00_couplers_to_m00_couplers_ARVALID;
  wire [31:0]m00_couplers_to_m00_couplers_AWADDR;
  wire [2:0]m00_couplers_to_m00_couplers_AWPROT;
  wire m00_couplers_to_m00_couplers_AWREADY;
  wire m00_couplers_to_m00_couplers_AWVALID;
  wire m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire m00_couplers_to_m00_couplers_BVALID;
  wire [31:0]m00_couplers_to_m00_couplers_RDATA;
  wire m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire m00_couplers_to_m00_couplers_RVALID;
  wire [31:0]m00_couplers_to_m00_couplers_WDATA;
  wire m00_couplers_to_m00_couplers_WREADY;
  wire [3:0]m00_couplers_to_m00_couplers_WSTRB;
  wire m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m00_couplers_to_m00_couplers_ARPROT;
  assign M_AXI_arvalid = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m00_couplers_to_m00_couplers_AWPROT;
  assign M_AXI_awvalid = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m00_couplers_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_m00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready;
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_m00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready;
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready;
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready;
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_m00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid;
endmodule

module m00_couplers_imp_9UGDOI
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
  output [3:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input [0:0]M_AXI_arready;
  output [3:0]M_AXI_arregion;
  output [2:0]M_AXI_arsize;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [3:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input [0:0]M_AXI_awready;
  output [3:0]M_AXI_awregion;
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
  input [3:0]S_AXI_arqos;
  output [0:0]S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [3:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output [0:0]S_AXI_awready;
  input [3:0]S_AXI_awregion;
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

  wire [31:0]m00_couplers_to_m00_couplers_ARADDR;
  wire [1:0]m00_couplers_to_m00_couplers_ARBURST;
  wire [3:0]m00_couplers_to_m00_couplers_ARCACHE;
  wire [3:0]m00_couplers_to_m00_couplers_ARID;
  wire [7:0]m00_couplers_to_m00_couplers_ARLEN;
  wire [0:0]m00_couplers_to_m00_couplers_ARLOCK;
  wire [2:0]m00_couplers_to_m00_couplers_ARPROT;
  wire [3:0]m00_couplers_to_m00_couplers_ARQOS;
  wire [0:0]m00_couplers_to_m00_couplers_ARREADY;
  wire [3:0]m00_couplers_to_m00_couplers_ARREGION;
  wire [2:0]m00_couplers_to_m00_couplers_ARSIZE;
  wire [0:0]m00_couplers_to_m00_couplers_ARVALID;
  wire [31:0]m00_couplers_to_m00_couplers_AWADDR;
  wire [1:0]m00_couplers_to_m00_couplers_AWBURST;
  wire [3:0]m00_couplers_to_m00_couplers_AWCACHE;
  wire [3:0]m00_couplers_to_m00_couplers_AWID;
  wire [7:0]m00_couplers_to_m00_couplers_AWLEN;
  wire [0:0]m00_couplers_to_m00_couplers_AWLOCK;
  wire [2:0]m00_couplers_to_m00_couplers_AWPROT;
  wire [3:0]m00_couplers_to_m00_couplers_AWQOS;
  wire [0:0]m00_couplers_to_m00_couplers_AWREADY;
  wire [3:0]m00_couplers_to_m00_couplers_AWREGION;
  wire [2:0]m00_couplers_to_m00_couplers_AWSIZE;
  wire [0:0]m00_couplers_to_m00_couplers_AWVALID;
  wire [3:0]m00_couplers_to_m00_couplers_BID;
  wire [0:0]m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire [0:0]m00_couplers_to_m00_couplers_BVALID;
  wire [63:0]m00_couplers_to_m00_couplers_RDATA;
  wire [3:0]m00_couplers_to_m00_couplers_RID;
  wire [0:0]m00_couplers_to_m00_couplers_RLAST;
  wire [0:0]m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire [0:0]m00_couplers_to_m00_couplers_RVALID;
  wire [63:0]m00_couplers_to_m00_couplers_WDATA;
  wire [0:0]m00_couplers_to_m00_couplers_WLAST;
  wire [0:0]m00_couplers_to_m00_couplers_WREADY;
  wire [7:0]m00_couplers_to_m00_couplers_WSTRB;
  wire [0:0]m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = m00_couplers_to_m00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = m00_couplers_to_m00_couplers_ARCACHE;
  assign M_AXI_arid[3:0] = m00_couplers_to_m00_couplers_ARID;
  assign M_AXI_arlen[7:0] = m00_couplers_to_m00_couplers_ARLEN;
  assign M_AXI_arlock[0] = m00_couplers_to_m00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = m00_couplers_to_m00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = m00_couplers_to_m00_couplers_ARQOS;
  assign M_AXI_arregion[3:0] = m00_couplers_to_m00_couplers_ARREGION;
  assign M_AXI_arsize[2:0] = m00_couplers_to_m00_couplers_ARSIZE;
  assign M_AXI_arvalid[0] = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = m00_couplers_to_m00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = m00_couplers_to_m00_couplers_AWCACHE;
  assign M_AXI_awid[3:0] = m00_couplers_to_m00_couplers_AWID;
  assign M_AXI_awlen[7:0] = m00_couplers_to_m00_couplers_AWLEN;
  assign M_AXI_awlock[0] = m00_couplers_to_m00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = m00_couplers_to_m00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = m00_couplers_to_m00_couplers_AWQOS;
  assign M_AXI_awregion[3:0] = m00_couplers_to_m00_couplers_AWREGION;
  assign M_AXI_awsize[2:0] = m00_couplers_to_m00_couplers_AWSIZE;
  assign M_AXI_awvalid[0] = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready[0] = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready[0] = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[63:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wlast[0] = m00_couplers_to_m00_couplers_WLAST;
  assign M_AXI_wstrb[7:0] = m00_couplers_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready[0] = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready[0] = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bid[3:0] = m00_couplers_to_m00_couplers_BID;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid[0] = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[63:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rid[3:0] = m00_couplers_to_m00_couplers_RID;
  assign S_AXI_rlast[0] = m00_couplers_to_m00_couplers_RLAST;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid[0] = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready[0] = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_m00_couplers_ARBURST = S_AXI_arburst[1:0];
  assign m00_couplers_to_m00_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign m00_couplers_to_m00_couplers_ARID = S_AXI_arid[3:0];
  assign m00_couplers_to_m00_couplers_ARLEN = S_AXI_arlen[7:0];
  assign m00_couplers_to_m00_couplers_ARLOCK = S_AXI_arlock[0];
  assign m00_couplers_to_m00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_m00_couplers_ARQOS = S_AXI_arqos[3:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready[0];
  assign m00_couplers_to_m00_couplers_ARREGION = S_AXI_arregion[3:0];
  assign m00_couplers_to_m00_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid[0];
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_m00_couplers_AWBURST = S_AXI_awburst[1:0];
  assign m00_couplers_to_m00_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign m00_couplers_to_m00_couplers_AWID = S_AXI_awid[3:0];
  assign m00_couplers_to_m00_couplers_AWLEN = S_AXI_awlen[7:0];
  assign m00_couplers_to_m00_couplers_AWLOCK = S_AXI_awlock[0];
  assign m00_couplers_to_m00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_m00_couplers_AWQOS = S_AXI_awqos[3:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready[0];
  assign m00_couplers_to_m00_couplers_AWREGION = S_AXI_awregion[3:0];
  assign m00_couplers_to_m00_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid[0];
  assign m00_couplers_to_m00_couplers_BID = M_AXI_bid[3:0];
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready[0];
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid[0];
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[63:0];
  assign m00_couplers_to_m00_couplers_RID = M_AXI_rid[3:0];
  assign m00_couplers_to_m00_couplers_RLAST = M_AXI_rlast[0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready[0];
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid[0];
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[63:0];
  assign m00_couplers_to_m00_couplers_WLAST = S_AXI_wlast[0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready[0];
  assign m00_couplers_to_m00_couplers_WSTRB = S_AXI_wstrb[7:0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid[0];
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
  input [0:0]M_AXI_arready;
  output [3:0]M_AXI_arregion;
  output [2:0]M_AXI_arsize;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [2:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  input [0:0]M_AXI_awready;
  output [3:0]M_AXI_awregion;
  output [2:0]M_AXI_awsize;
  output [0:0]M_AXI_awvalid;
  input [2:0]M_AXI_bid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [63:0]M_AXI_rdata;
  input [2:0]M_AXI_rid;
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
  input [2:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  output [0:0]S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [2:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  output [0:0]S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awvalid;
  output [2:0]S_AXI_bid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [63:0]S_AXI_rdata;
  output [2:0]S_AXI_rid;
  output [0:0]S_AXI_rlast;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [63:0]S_AXI_wdata;
  input [0:0]S_AXI_wlast;
  output [0:0]S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m01_couplers_to_m01_couplers_ARADDR;
  wire [1:0]m01_couplers_to_m01_couplers_ARBURST;
  wire [2:0]m01_couplers_to_m01_couplers_ARID;
  wire [7:0]m01_couplers_to_m01_couplers_ARLEN;
  wire [0:0]m01_couplers_to_m01_couplers_ARREADY;
  wire [3:0]m01_couplers_to_m01_couplers_ARREGION;
  wire [2:0]m01_couplers_to_m01_couplers_ARSIZE;
  wire [0:0]m01_couplers_to_m01_couplers_ARVALID;
  wire [31:0]m01_couplers_to_m01_couplers_AWADDR;
  wire [1:0]m01_couplers_to_m01_couplers_AWBURST;
  wire [2:0]m01_couplers_to_m01_couplers_AWID;
  wire [7:0]m01_couplers_to_m01_couplers_AWLEN;
  wire [0:0]m01_couplers_to_m01_couplers_AWREADY;
  wire [3:0]m01_couplers_to_m01_couplers_AWREGION;
  wire [2:0]m01_couplers_to_m01_couplers_AWSIZE;
  wire [0:0]m01_couplers_to_m01_couplers_AWVALID;
  wire [2:0]m01_couplers_to_m01_couplers_BID;
  wire [0:0]m01_couplers_to_m01_couplers_BREADY;
  wire [1:0]m01_couplers_to_m01_couplers_BRESP;
  wire [0:0]m01_couplers_to_m01_couplers_BVALID;
  wire [63:0]m01_couplers_to_m01_couplers_RDATA;
  wire [2:0]m01_couplers_to_m01_couplers_RID;
  wire [0:0]m01_couplers_to_m01_couplers_RLAST;
  wire [0:0]m01_couplers_to_m01_couplers_RREADY;
  wire [1:0]m01_couplers_to_m01_couplers_RRESP;
  wire [0:0]m01_couplers_to_m01_couplers_RVALID;
  wire [63:0]m01_couplers_to_m01_couplers_WDATA;
  wire [0:0]m01_couplers_to_m01_couplers_WLAST;
  wire [0:0]m01_couplers_to_m01_couplers_WREADY;
  wire [7:0]m01_couplers_to_m01_couplers_WSTRB;
  wire [0:0]m01_couplers_to_m01_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m01_couplers_to_m01_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = m01_couplers_to_m01_couplers_ARBURST;
  assign M_AXI_arid[2:0] = m01_couplers_to_m01_couplers_ARID;
  assign M_AXI_arlen[7:0] = m01_couplers_to_m01_couplers_ARLEN;
  assign M_AXI_arregion[3:0] = m01_couplers_to_m01_couplers_ARREGION;
  assign M_AXI_arsize[2:0] = m01_couplers_to_m01_couplers_ARSIZE;
  assign M_AXI_arvalid[0] = m01_couplers_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m01_couplers_to_m01_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = m01_couplers_to_m01_couplers_AWBURST;
  assign M_AXI_awid[2:0] = m01_couplers_to_m01_couplers_AWID;
  assign M_AXI_awlen[7:0] = m01_couplers_to_m01_couplers_AWLEN;
  assign M_AXI_awregion[3:0] = m01_couplers_to_m01_couplers_AWREGION;
  assign M_AXI_awsize[2:0] = m01_couplers_to_m01_couplers_AWSIZE;
  assign M_AXI_awvalid[0] = m01_couplers_to_m01_couplers_AWVALID;
  assign M_AXI_bready[0] = m01_couplers_to_m01_couplers_BREADY;
  assign M_AXI_rready[0] = m01_couplers_to_m01_couplers_RREADY;
  assign M_AXI_wdata[63:0] = m01_couplers_to_m01_couplers_WDATA;
  assign M_AXI_wlast[0] = m01_couplers_to_m01_couplers_WLAST;
  assign M_AXI_wstrb[7:0] = m01_couplers_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m01_couplers_to_m01_couplers_WVALID;
  assign S_AXI_arready[0] = m01_couplers_to_m01_couplers_ARREADY;
  assign S_AXI_awready[0] = m01_couplers_to_m01_couplers_AWREADY;
  assign S_AXI_bid[2:0] = m01_couplers_to_m01_couplers_BID;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_couplers_BRESP;
  assign S_AXI_bvalid[0] = m01_couplers_to_m01_couplers_BVALID;
  assign S_AXI_rdata[63:0] = m01_couplers_to_m01_couplers_RDATA;
  assign S_AXI_rid[2:0] = m01_couplers_to_m01_couplers_RID;
  assign S_AXI_rlast[0] = m01_couplers_to_m01_couplers_RLAST;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_couplers_RRESP;
  assign S_AXI_rvalid[0] = m01_couplers_to_m01_couplers_RVALID;
  assign S_AXI_wready[0] = m01_couplers_to_m01_couplers_WREADY;
  assign m01_couplers_to_m01_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m01_couplers_to_m01_couplers_ARBURST = S_AXI_arburst[1:0];
  assign m01_couplers_to_m01_couplers_ARID = S_AXI_arid[2:0];
  assign m01_couplers_to_m01_couplers_ARLEN = S_AXI_arlen[7:0];
  assign m01_couplers_to_m01_couplers_ARREADY = M_AXI_arready[0];
  assign m01_couplers_to_m01_couplers_ARREGION = S_AXI_arregion[3:0];
  assign m01_couplers_to_m01_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign m01_couplers_to_m01_couplers_ARVALID = S_AXI_arvalid[0];
  assign m01_couplers_to_m01_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m01_couplers_to_m01_couplers_AWBURST = S_AXI_awburst[1:0];
  assign m01_couplers_to_m01_couplers_AWID = S_AXI_awid[2:0];
  assign m01_couplers_to_m01_couplers_AWLEN = S_AXI_awlen[7:0];
  assign m01_couplers_to_m01_couplers_AWREADY = M_AXI_awready[0];
  assign m01_couplers_to_m01_couplers_AWREGION = S_AXI_awregion[3:0];
  assign m01_couplers_to_m01_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign m01_couplers_to_m01_couplers_AWVALID = S_AXI_awvalid[0];
  assign m01_couplers_to_m01_couplers_BID = M_AXI_bid[2:0];
  assign m01_couplers_to_m01_couplers_BREADY = S_AXI_bready[0];
  assign m01_couplers_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_couplers_to_m01_couplers_BVALID = M_AXI_bvalid[0];
  assign m01_couplers_to_m01_couplers_RDATA = M_AXI_rdata[63:0];
  assign m01_couplers_to_m01_couplers_RID = M_AXI_rid[2:0];
  assign m01_couplers_to_m01_couplers_RLAST = M_AXI_rlast[0];
  assign m01_couplers_to_m01_couplers_RREADY = S_AXI_rready[0];
  assign m01_couplers_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_couplers_to_m01_couplers_RVALID = M_AXI_rvalid[0];
  assign m01_couplers_to_m01_couplers_WDATA = S_AXI_wdata[63:0];
  assign m01_couplers_to_m01_couplers_WLAST = S_AXI_wlast[0];
  assign m01_couplers_to_m01_couplers_WREADY = M_AXI_wready[0];
  assign m01_couplers_to_m01_couplers_WSTRB = S_AXI_wstrb[7:0];
  assign m01_couplers_to_m01_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m01_couplers_imp_1KNJ6AR
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
  output M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [3:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output M_AXI_awlock;
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
  input S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [3:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
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

  wire [31:0]m01_couplers_to_m01_couplers_ARADDR;
  wire [1:0]m01_couplers_to_m01_couplers_ARBURST;
  wire [3:0]m01_couplers_to_m01_couplers_ARCACHE;
  wire [3:0]m01_couplers_to_m01_couplers_ARID;
  wire [7:0]m01_couplers_to_m01_couplers_ARLEN;
  wire m01_couplers_to_m01_couplers_ARLOCK;
  wire [2:0]m01_couplers_to_m01_couplers_ARPROT;
  wire [3:0]m01_couplers_to_m01_couplers_ARQOS;
  wire m01_couplers_to_m01_couplers_ARREADY;
  wire [2:0]m01_couplers_to_m01_couplers_ARSIZE;
  wire m01_couplers_to_m01_couplers_ARVALID;
  wire [31:0]m01_couplers_to_m01_couplers_AWADDR;
  wire [1:0]m01_couplers_to_m01_couplers_AWBURST;
  wire [3:0]m01_couplers_to_m01_couplers_AWCACHE;
  wire [3:0]m01_couplers_to_m01_couplers_AWID;
  wire [7:0]m01_couplers_to_m01_couplers_AWLEN;
  wire m01_couplers_to_m01_couplers_AWLOCK;
  wire [2:0]m01_couplers_to_m01_couplers_AWPROT;
  wire [3:0]m01_couplers_to_m01_couplers_AWQOS;
  wire m01_couplers_to_m01_couplers_AWREADY;
  wire [2:0]m01_couplers_to_m01_couplers_AWSIZE;
  wire m01_couplers_to_m01_couplers_AWVALID;
  wire [3:0]m01_couplers_to_m01_couplers_BID;
  wire m01_couplers_to_m01_couplers_BREADY;
  wire [1:0]m01_couplers_to_m01_couplers_BRESP;
  wire m01_couplers_to_m01_couplers_BVALID;
  wire [63:0]m01_couplers_to_m01_couplers_RDATA;
  wire [3:0]m01_couplers_to_m01_couplers_RID;
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
  assign M_AXI_arcache[3:0] = m01_couplers_to_m01_couplers_ARCACHE;
  assign M_AXI_arid[3:0] = m01_couplers_to_m01_couplers_ARID;
  assign M_AXI_arlen[7:0] = m01_couplers_to_m01_couplers_ARLEN;
  assign M_AXI_arlock = m01_couplers_to_m01_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = m01_couplers_to_m01_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = m01_couplers_to_m01_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = m01_couplers_to_m01_couplers_ARSIZE;
  assign M_AXI_arvalid = m01_couplers_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m01_couplers_to_m01_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = m01_couplers_to_m01_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = m01_couplers_to_m01_couplers_AWCACHE;
  assign M_AXI_awid[3:0] = m01_couplers_to_m01_couplers_AWID;
  assign M_AXI_awlen[7:0] = m01_couplers_to_m01_couplers_AWLEN;
  assign M_AXI_awlock = m01_couplers_to_m01_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = m01_couplers_to_m01_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = m01_couplers_to_m01_couplers_AWQOS;
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
  assign S_AXI_bid[3:0] = m01_couplers_to_m01_couplers_BID;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_couplers_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_m01_couplers_BVALID;
  assign S_AXI_rdata[63:0] = m01_couplers_to_m01_couplers_RDATA;
  assign S_AXI_rid[3:0] = m01_couplers_to_m01_couplers_RID;
  assign S_AXI_rlast = m01_couplers_to_m01_couplers_RLAST;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_couplers_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_m01_couplers_RVALID;
  assign S_AXI_wready = m01_couplers_to_m01_couplers_WREADY;
  assign m01_couplers_to_m01_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m01_couplers_to_m01_couplers_ARBURST = S_AXI_arburst[1:0];
  assign m01_couplers_to_m01_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign m01_couplers_to_m01_couplers_ARID = S_AXI_arid[3:0];
  assign m01_couplers_to_m01_couplers_ARLEN = S_AXI_arlen[7:0];
  assign m01_couplers_to_m01_couplers_ARLOCK = S_AXI_arlock;
  assign m01_couplers_to_m01_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m01_couplers_to_m01_couplers_ARQOS = S_AXI_arqos[3:0];
  assign m01_couplers_to_m01_couplers_ARREADY = M_AXI_arready;
  assign m01_couplers_to_m01_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign m01_couplers_to_m01_couplers_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_m01_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m01_couplers_to_m01_couplers_AWBURST = S_AXI_awburst[1:0];
  assign m01_couplers_to_m01_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign m01_couplers_to_m01_couplers_AWID = S_AXI_awid[3:0];
  assign m01_couplers_to_m01_couplers_AWLEN = S_AXI_awlen[7:0];
  assign m01_couplers_to_m01_couplers_AWLOCK = S_AXI_awlock;
  assign m01_couplers_to_m01_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m01_couplers_to_m01_couplers_AWQOS = S_AXI_awqos[3:0];
  assign m01_couplers_to_m01_couplers_AWREADY = M_AXI_awready;
  assign m01_couplers_to_m01_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign m01_couplers_to_m01_couplers_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_m01_couplers_BID = M_AXI_bid[3:0];
  assign m01_couplers_to_m01_couplers_BREADY = S_AXI_bready;
  assign m01_couplers_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_couplers_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign m01_couplers_to_m01_couplers_RDATA = M_AXI_rdata[63:0];
  assign m01_couplers_to_m01_couplers_RID = M_AXI_rid[3:0];
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

  wire [31:0]m01_couplers_to_m01_couplers_ARADDR;
  wire [2:0]m01_couplers_to_m01_couplers_ARPROT;
  wire m01_couplers_to_m01_couplers_ARREADY;
  wire m01_couplers_to_m01_couplers_ARVALID;
  wire [31:0]m01_couplers_to_m01_couplers_AWADDR;
  wire [2:0]m01_couplers_to_m01_couplers_AWPROT;
  wire m01_couplers_to_m01_couplers_AWREADY;
  wire m01_couplers_to_m01_couplers_AWVALID;
  wire m01_couplers_to_m01_couplers_BREADY;
  wire [1:0]m01_couplers_to_m01_couplers_BRESP;
  wire m01_couplers_to_m01_couplers_BVALID;
  wire [31:0]m01_couplers_to_m01_couplers_RDATA;
  wire m01_couplers_to_m01_couplers_RREADY;
  wire [1:0]m01_couplers_to_m01_couplers_RRESP;
  wire m01_couplers_to_m01_couplers_RVALID;
  wire [31:0]m01_couplers_to_m01_couplers_WDATA;
  wire m01_couplers_to_m01_couplers_WREADY;
  wire [3:0]m01_couplers_to_m01_couplers_WSTRB;
  wire m01_couplers_to_m01_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m01_couplers_to_m01_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m01_couplers_to_m01_couplers_ARPROT;
  assign M_AXI_arvalid = m01_couplers_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m01_couplers_to_m01_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m01_couplers_to_m01_couplers_AWPROT;
  assign M_AXI_awvalid = m01_couplers_to_m01_couplers_AWVALID;
  assign M_AXI_bready = m01_couplers_to_m01_couplers_BREADY;
  assign M_AXI_rready = m01_couplers_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_couplers_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m01_couplers_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = m01_couplers_to_m01_couplers_WVALID;
  assign S_AXI_arready = m01_couplers_to_m01_couplers_ARREADY;
  assign S_AXI_awready = m01_couplers_to_m01_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_couplers_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_m01_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_m01_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_couplers_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_m01_couplers_RVALID;
  assign S_AXI_wready = m01_couplers_to_m01_couplers_WREADY;
  assign m01_couplers_to_m01_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m01_couplers_to_m01_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m01_couplers_to_m01_couplers_ARREADY = M_AXI_arready;
  assign m01_couplers_to_m01_couplers_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_m01_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m01_couplers_to_m01_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m01_couplers_to_m01_couplers_AWREADY = M_AXI_awready;
  assign m01_couplers_to_m01_couplers_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_m01_couplers_BREADY = S_AXI_bready;
  assign m01_couplers_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_couplers_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign m01_couplers_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_couplers_to_m01_couplers_RREADY = S_AXI_rready;
  assign m01_couplers_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_couplers_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign m01_couplers_to_m01_couplers_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_m01_couplers_WREADY = M_AXI_wready;
  assign m01_couplers_to_m01_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_m01_couplers_WVALID = S_AXI_wvalid;
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
  icyradio_auto_cc_1 auto_cc
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

  wire [31:0]m02_couplers_to_m02_couplers_ARADDR;
  wire [2:0]m02_couplers_to_m02_couplers_ARPROT;
  wire m02_couplers_to_m02_couplers_ARREADY;
  wire m02_couplers_to_m02_couplers_ARVALID;
  wire [31:0]m02_couplers_to_m02_couplers_AWADDR;
  wire [2:0]m02_couplers_to_m02_couplers_AWPROT;
  wire m02_couplers_to_m02_couplers_AWREADY;
  wire m02_couplers_to_m02_couplers_AWVALID;
  wire m02_couplers_to_m02_couplers_BREADY;
  wire [1:0]m02_couplers_to_m02_couplers_BRESP;
  wire m02_couplers_to_m02_couplers_BVALID;
  wire [31:0]m02_couplers_to_m02_couplers_RDATA;
  wire m02_couplers_to_m02_couplers_RREADY;
  wire [1:0]m02_couplers_to_m02_couplers_RRESP;
  wire m02_couplers_to_m02_couplers_RVALID;
  wire [31:0]m02_couplers_to_m02_couplers_WDATA;
  wire m02_couplers_to_m02_couplers_WREADY;
  wire [3:0]m02_couplers_to_m02_couplers_WSTRB;
  wire m02_couplers_to_m02_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m02_couplers_to_m02_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m02_couplers_to_m02_couplers_ARPROT;
  assign M_AXI_arvalid = m02_couplers_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m02_couplers_to_m02_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m02_couplers_to_m02_couplers_AWPROT;
  assign M_AXI_awvalid = m02_couplers_to_m02_couplers_AWVALID;
  assign M_AXI_bready = m02_couplers_to_m02_couplers_BREADY;
  assign M_AXI_rready = m02_couplers_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m02_couplers_to_m02_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m02_couplers_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid = m02_couplers_to_m02_couplers_WVALID;
  assign S_AXI_arready = m02_couplers_to_m02_couplers_ARREADY;
  assign S_AXI_awready = m02_couplers_to_m02_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m02_couplers_to_m02_couplers_BRESP;
  assign S_AXI_bvalid = m02_couplers_to_m02_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m02_couplers_to_m02_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m02_couplers_to_m02_couplers_RRESP;
  assign S_AXI_rvalid = m02_couplers_to_m02_couplers_RVALID;
  assign S_AXI_wready = m02_couplers_to_m02_couplers_WREADY;
  assign m02_couplers_to_m02_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m02_couplers_to_m02_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m02_couplers_to_m02_couplers_ARREADY = M_AXI_arready;
  assign m02_couplers_to_m02_couplers_ARVALID = S_AXI_arvalid;
  assign m02_couplers_to_m02_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m02_couplers_to_m02_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m02_couplers_to_m02_couplers_AWREADY = M_AXI_awready;
  assign m02_couplers_to_m02_couplers_AWVALID = S_AXI_awvalid;
  assign m02_couplers_to_m02_couplers_BREADY = S_AXI_bready;
  assign m02_couplers_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign m02_couplers_to_m02_couplers_BVALID = M_AXI_bvalid;
  assign m02_couplers_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign m02_couplers_to_m02_couplers_RREADY = S_AXI_rready;
  assign m02_couplers_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign m02_couplers_to_m02_couplers_RVALID = M_AXI_rvalid;
  assign m02_couplers_to_m02_couplers_WDATA = S_AXI_wdata[31:0];
  assign m02_couplers_to_m02_couplers_WREADY = M_AXI_wready;
  assign m02_couplers_to_m02_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m02_couplers_to_m02_couplers_WVALID = S_AXI_wvalid;
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

  wire [31:0]m03_couplers_to_m03_couplers_ARADDR;
  wire [2:0]m03_couplers_to_m03_couplers_ARPROT;
  wire m03_couplers_to_m03_couplers_ARREADY;
  wire m03_couplers_to_m03_couplers_ARVALID;
  wire [31:0]m03_couplers_to_m03_couplers_AWADDR;
  wire [2:0]m03_couplers_to_m03_couplers_AWPROT;
  wire m03_couplers_to_m03_couplers_AWREADY;
  wire m03_couplers_to_m03_couplers_AWVALID;
  wire m03_couplers_to_m03_couplers_BREADY;
  wire [1:0]m03_couplers_to_m03_couplers_BRESP;
  wire m03_couplers_to_m03_couplers_BVALID;
  wire [31:0]m03_couplers_to_m03_couplers_RDATA;
  wire m03_couplers_to_m03_couplers_RREADY;
  wire [1:0]m03_couplers_to_m03_couplers_RRESP;
  wire m03_couplers_to_m03_couplers_RVALID;
  wire [31:0]m03_couplers_to_m03_couplers_WDATA;
  wire m03_couplers_to_m03_couplers_WREADY;
  wire [3:0]m03_couplers_to_m03_couplers_WSTRB;
  wire m03_couplers_to_m03_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m03_couplers_to_m03_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m03_couplers_to_m03_couplers_ARPROT;
  assign M_AXI_arvalid = m03_couplers_to_m03_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m03_couplers_to_m03_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m03_couplers_to_m03_couplers_AWPROT;
  assign M_AXI_awvalid = m03_couplers_to_m03_couplers_AWVALID;
  assign M_AXI_bready = m03_couplers_to_m03_couplers_BREADY;
  assign M_AXI_rready = m03_couplers_to_m03_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m03_couplers_to_m03_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m03_couplers_to_m03_couplers_WSTRB;
  assign M_AXI_wvalid = m03_couplers_to_m03_couplers_WVALID;
  assign S_AXI_arready = m03_couplers_to_m03_couplers_ARREADY;
  assign S_AXI_awready = m03_couplers_to_m03_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m03_couplers_to_m03_couplers_BRESP;
  assign S_AXI_bvalid = m03_couplers_to_m03_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m03_couplers_to_m03_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m03_couplers_to_m03_couplers_RRESP;
  assign S_AXI_rvalid = m03_couplers_to_m03_couplers_RVALID;
  assign S_AXI_wready = m03_couplers_to_m03_couplers_WREADY;
  assign m03_couplers_to_m03_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m03_couplers_to_m03_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m03_couplers_to_m03_couplers_ARREADY = M_AXI_arready;
  assign m03_couplers_to_m03_couplers_ARVALID = S_AXI_arvalid;
  assign m03_couplers_to_m03_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m03_couplers_to_m03_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m03_couplers_to_m03_couplers_AWREADY = M_AXI_awready;
  assign m03_couplers_to_m03_couplers_AWVALID = S_AXI_awvalid;
  assign m03_couplers_to_m03_couplers_BREADY = S_AXI_bready;
  assign m03_couplers_to_m03_couplers_BRESP = M_AXI_bresp[1:0];
  assign m03_couplers_to_m03_couplers_BVALID = M_AXI_bvalid;
  assign m03_couplers_to_m03_couplers_RDATA = M_AXI_rdata[31:0];
  assign m03_couplers_to_m03_couplers_RREADY = S_AXI_rready;
  assign m03_couplers_to_m03_couplers_RRESP = M_AXI_rresp[1:0];
  assign m03_couplers_to_m03_couplers_RVALID = M_AXI_rvalid;
  assign m03_couplers_to_m03_couplers_WDATA = S_AXI_wdata[31:0];
  assign m03_couplers_to_m03_couplers_WREADY = M_AXI_wready;
  assign m03_couplers_to_m03_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m03_couplers_to_m03_couplers_WVALID = S_AXI_wvalid;
endmodule

module m04_couplers_imp_13Q5LUD
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

  wire [31:0]m04_couplers_to_m04_couplers_ARADDR;
  wire [2:0]m04_couplers_to_m04_couplers_ARPROT;
  wire m04_couplers_to_m04_couplers_ARREADY;
  wire m04_couplers_to_m04_couplers_ARVALID;
  wire [31:0]m04_couplers_to_m04_couplers_AWADDR;
  wire [2:0]m04_couplers_to_m04_couplers_AWPROT;
  wire m04_couplers_to_m04_couplers_AWREADY;
  wire m04_couplers_to_m04_couplers_AWVALID;
  wire m04_couplers_to_m04_couplers_BREADY;
  wire [1:0]m04_couplers_to_m04_couplers_BRESP;
  wire m04_couplers_to_m04_couplers_BVALID;
  wire [31:0]m04_couplers_to_m04_couplers_RDATA;
  wire m04_couplers_to_m04_couplers_RREADY;
  wire [1:0]m04_couplers_to_m04_couplers_RRESP;
  wire m04_couplers_to_m04_couplers_RVALID;
  wire [31:0]m04_couplers_to_m04_couplers_WDATA;
  wire m04_couplers_to_m04_couplers_WREADY;
  wire [3:0]m04_couplers_to_m04_couplers_WSTRB;
  wire m04_couplers_to_m04_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m04_couplers_to_m04_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m04_couplers_to_m04_couplers_ARPROT;
  assign M_AXI_arvalid = m04_couplers_to_m04_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m04_couplers_to_m04_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m04_couplers_to_m04_couplers_AWPROT;
  assign M_AXI_awvalid = m04_couplers_to_m04_couplers_AWVALID;
  assign M_AXI_bready = m04_couplers_to_m04_couplers_BREADY;
  assign M_AXI_rready = m04_couplers_to_m04_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m04_couplers_to_m04_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m04_couplers_to_m04_couplers_WSTRB;
  assign M_AXI_wvalid = m04_couplers_to_m04_couplers_WVALID;
  assign S_AXI_arready = m04_couplers_to_m04_couplers_ARREADY;
  assign S_AXI_awready = m04_couplers_to_m04_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m04_couplers_to_m04_couplers_BRESP;
  assign S_AXI_bvalid = m04_couplers_to_m04_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m04_couplers_to_m04_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m04_couplers_to_m04_couplers_RRESP;
  assign S_AXI_rvalid = m04_couplers_to_m04_couplers_RVALID;
  assign S_AXI_wready = m04_couplers_to_m04_couplers_WREADY;
  assign m04_couplers_to_m04_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m04_couplers_to_m04_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m04_couplers_to_m04_couplers_ARREADY = M_AXI_arready;
  assign m04_couplers_to_m04_couplers_ARVALID = S_AXI_arvalid;
  assign m04_couplers_to_m04_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m04_couplers_to_m04_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m04_couplers_to_m04_couplers_AWREADY = M_AXI_awready;
  assign m04_couplers_to_m04_couplers_AWVALID = S_AXI_awvalid;
  assign m04_couplers_to_m04_couplers_BREADY = S_AXI_bready;
  assign m04_couplers_to_m04_couplers_BRESP = M_AXI_bresp[1:0];
  assign m04_couplers_to_m04_couplers_BVALID = M_AXI_bvalid;
  assign m04_couplers_to_m04_couplers_RDATA = M_AXI_rdata[31:0];
  assign m04_couplers_to_m04_couplers_RREADY = S_AXI_rready;
  assign m04_couplers_to_m04_couplers_RRESP = M_AXI_rresp[1:0];
  assign m04_couplers_to_m04_couplers_RVALID = M_AXI_rvalid;
  assign m04_couplers_to_m04_couplers_WDATA = S_AXI_wdata[31:0];
  assign m04_couplers_to_m04_couplers_WREADY = M_AXI_wready;
  assign m04_couplers_to_m04_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m04_couplers_to_m04_couplers_WVALID = S_AXI_wvalid;
endmodule

module m05_couplers_imp_QRWO50
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

  wire [31:0]m05_couplers_to_m05_couplers_ARADDR;
  wire [2:0]m05_couplers_to_m05_couplers_ARPROT;
  wire m05_couplers_to_m05_couplers_ARREADY;
  wire m05_couplers_to_m05_couplers_ARVALID;
  wire [31:0]m05_couplers_to_m05_couplers_AWADDR;
  wire [2:0]m05_couplers_to_m05_couplers_AWPROT;
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
  assign M_AXI_arprot[2:0] = m05_couplers_to_m05_couplers_ARPROT;
  assign M_AXI_arvalid = m05_couplers_to_m05_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m05_couplers_to_m05_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m05_couplers_to_m05_couplers_AWPROT;
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
  assign m05_couplers_to_m05_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m05_couplers_to_m05_couplers_ARREADY = M_AXI_arready;
  assign m05_couplers_to_m05_couplers_ARVALID = S_AXI_arvalid;
  assign m05_couplers_to_m05_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m05_couplers_to_m05_couplers_AWPROT = S_AXI_awprot[2:0];
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

  wire [31:0]m06_couplers_to_m06_couplers_ARADDR;
  wire [2:0]m06_couplers_to_m06_couplers_ARPROT;
  wire m06_couplers_to_m06_couplers_ARREADY;
  wire m06_couplers_to_m06_couplers_ARVALID;
  wire [31:0]m06_couplers_to_m06_couplers_AWADDR;
  wire [2:0]m06_couplers_to_m06_couplers_AWPROT;
  wire m06_couplers_to_m06_couplers_AWREADY;
  wire m06_couplers_to_m06_couplers_AWVALID;
  wire m06_couplers_to_m06_couplers_BREADY;
  wire [1:0]m06_couplers_to_m06_couplers_BRESP;
  wire m06_couplers_to_m06_couplers_BVALID;
  wire [31:0]m06_couplers_to_m06_couplers_RDATA;
  wire m06_couplers_to_m06_couplers_RREADY;
  wire [1:0]m06_couplers_to_m06_couplers_RRESP;
  wire m06_couplers_to_m06_couplers_RVALID;
  wire [31:0]m06_couplers_to_m06_couplers_WDATA;
  wire m06_couplers_to_m06_couplers_WREADY;
  wire [3:0]m06_couplers_to_m06_couplers_WSTRB;
  wire m06_couplers_to_m06_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m06_couplers_to_m06_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m06_couplers_to_m06_couplers_ARPROT;
  assign M_AXI_arvalid = m06_couplers_to_m06_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m06_couplers_to_m06_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m06_couplers_to_m06_couplers_AWPROT;
  assign M_AXI_awvalid = m06_couplers_to_m06_couplers_AWVALID;
  assign M_AXI_bready = m06_couplers_to_m06_couplers_BREADY;
  assign M_AXI_rready = m06_couplers_to_m06_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m06_couplers_to_m06_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m06_couplers_to_m06_couplers_WSTRB;
  assign M_AXI_wvalid = m06_couplers_to_m06_couplers_WVALID;
  assign S_AXI_arready = m06_couplers_to_m06_couplers_ARREADY;
  assign S_AXI_awready = m06_couplers_to_m06_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m06_couplers_to_m06_couplers_BRESP;
  assign S_AXI_bvalid = m06_couplers_to_m06_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m06_couplers_to_m06_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m06_couplers_to_m06_couplers_RRESP;
  assign S_AXI_rvalid = m06_couplers_to_m06_couplers_RVALID;
  assign S_AXI_wready = m06_couplers_to_m06_couplers_WREADY;
  assign m06_couplers_to_m06_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m06_couplers_to_m06_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m06_couplers_to_m06_couplers_ARREADY = M_AXI_arready;
  assign m06_couplers_to_m06_couplers_ARVALID = S_AXI_arvalid;
  assign m06_couplers_to_m06_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m06_couplers_to_m06_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m06_couplers_to_m06_couplers_AWREADY = M_AXI_awready;
  assign m06_couplers_to_m06_couplers_AWVALID = S_AXI_awvalid;
  assign m06_couplers_to_m06_couplers_BREADY = S_AXI_bready;
  assign m06_couplers_to_m06_couplers_BRESP = M_AXI_bresp[1:0];
  assign m06_couplers_to_m06_couplers_BVALID = M_AXI_bvalid;
  assign m06_couplers_to_m06_couplers_RDATA = M_AXI_rdata[31:0];
  assign m06_couplers_to_m06_couplers_RREADY = S_AXI_rready;
  assign m06_couplers_to_m06_couplers_RRESP = M_AXI_rresp[1:0];
  assign m06_couplers_to_m06_couplers_RVALID = M_AXI_rvalid;
  assign m06_couplers_to_m06_couplers_WDATA = S_AXI_wdata[31:0];
  assign m06_couplers_to_m06_couplers_WREADY = M_AXI_wready;
  assign m06_couplers_to_m06_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m06_couplers_to_m06_couplers_WVALID = S_AXI_wvalid;
endmodule

module m07_couplers_imp_S7JYYF
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

  wire [31:0]m07_couplers_to_m07_couplers_ARADDR;
  wire [0:0]m07_couplers_to_m07_couplers_ARREADY;
  wire [0:0]m07_couplers_to_m07_couplers_ARVALID;
  wire [31:0]m07_couplers_to_m07_couplers_AWADDR;
  wire [0:0]m07_couplers_to_m07_couplers_AWREADY;
  wire [0:0]m07_couplers_to_m07_couplers_AWVALID;
  wire [0:0]m07_couplers_to_m07_couplers_BREADY;
  wire [1:0]m07_couplers_to_m07_couplers_BRESP;
  wire [0:0]m07_couplers_to_m07_couplers_BVALID;
  wire [31:0]m07_couplers_to_m07_couplers_RDATA;
  wire [0:0]m07_couplers_to_m07_couplers_RREADY;
  wire [1:0]m07_couplers_to_m07_couplers_RRESP;
  wire [0:0]m07_couplers_to_m07_couplers_RVALID;
  wire [31:0]m07_couplers_to_m07_couplers_WDATA;
  wire [0:0]m07_couplers_to_m07_couplers_WREADY;
  wire [3:0]m07_couplers_to_m07_couplers_WSTRB;
  wire [0:0]m07_couplers_to_m07_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m07_couplers_to_m07_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m07_couplers_to_m07_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m07_couplers_to_m07_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m07_couplers_to_m07_couplers_AWVALID;
  assign M_AXI_bready[0] = m07_couplers_to_m07_couplers_BREADY;
  assign M_AXI_rready[0] = m07_couplers_to_m07_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m07_couplers_to_m07_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m07_couplers_to_m07_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m07_couplers_to_m07_couplers_WVALID;
  assign S_AXI_arready[0] = m07_couplers_to_m07_couplers_ARREADY;
  assign S_AXI_awready[0] = m07_couplers_to_m07_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m07_couplers_to_m07_couplers_BRESP;
  assign S_AXI_bvalid[0] = m07_couplers_to_m07_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m07_couplers_to_m07_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m07_couplers_to_m07_couplers_RRESP;
  assign S_AXI_rvalid[0] = m07_couplers_to_m07_couplers_RVALID;
  assign S_AXI_wready[0] = m07_couplers_to_m07_couplers_WREADY;
  assign m07_couplers_to_m07_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m07_couplers_to_m07_couplers_ARREADY = M_AXI_arready[0];
  assign m07_couplers_to_m07_couplers_ARVALID = S_AXI_arvalid[0];
  assign m07_couplers_to_m07_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m07_couplers_to_m07_couplers_AWREADY = M_AXI_awready[0];
  assign m07_couplers_to_m07_couplers_AWVALID = S_AXI_awvalid[0];
  assign m07_couplers_to_m07_couplers_BREADY = S_AXI_bready[0];
  assign m07_couplers_to_m07_couplers_BRESP = M_AXI_bresp[1:0];
  assign m07_couplers_to_m07_couplers_BVALID = M_AXI_bvalid[0];
  assign m07_couplers_to_m07_couplers_RDATA = M_AXI_rdata[31:0];
  assign m07_couplers_to_m07_couplers_RREADY = S_AXI_rready[0];
  assign m07_couplers_to_m07_couplers_RRESP = M_AXI_rresp[1:0];
  assign m07_couplers_to_m07_couplers_RVALID = M_AXI_rvalid[0];
  assign m07_couplers_to_m07_couplers_WDATA = S_AXI_wdata[31:0];
  assign m07_couplers_to_m07_couplers_WREADY = M_AXI_wready[0];
  assign m07_couplers_to_m07_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m07_couplers_to_m07_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m08_couplers_imp_150MC4F
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

  wire [31:0]m08_couplers_to_m08_couplers_ARADDR;
  wire [0:0]m08_couplers_to_m08_couplers_ARREADY;
  wire [0:0]m08_couplers_to_m08_couplers_ARVALID;
  wire [31:0]m08_couplers_to_m08_couplers_AWADDR;
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
  assign M_AXI_arvalid[0] = m08_couplers_to_m08_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m08_couplers_to_m08_couplers_AWADDR;
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
  assign m08_couplers_to_m08_couplers_ARREADY = M_AXI_arready[0];
  assign m08_couplers_to_m08_couplers_ARVALID = S_AXI_arvalid[0];
  assign m08_couplers_to_m08_couplers_AWADDR = S_AXI_awaddr[31:0];
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

  wire [31:0]m09_couplers_to_m09_couplers_ARADDR;
  wire m09_couplers_to_m09_couplers_ARREADY;
  wire m09_couplers_to_m09_couplers_ARVALID;
  wire [31:0]m09_couplers_to_m09_couplers_AWADDR;
  wire m09_couplers_to_m09_couplers_AWREADY;
  wire m09_couplers_to_m09_couplers_AWVALID;
  wire m09_couplers_to_m09_couplers_BREADY;
  wire [1:0]m09_couplers_to_m09_couplers_BRESP;
  wire m09_couplers_to_m09_couplers_BVALID;
  wire [31:0]m09_couplers_to_m09_couplers_RDATA;
  wire m09_couplers_to_m09_couplers_RREADY;
  wire [1:0]m09_couplers_to_m09_couplers_RRESP;
  wire m09_couplers_to_m09_couplers_RVALID;
  wire [31:0]m09_couplers_to_m09_couplers_WDATA;
  wire m09_couplers_to_m09_couplers_WREADY;
  wire [3:0]m09_couplers_to_m09_couplers_WSTRB;
  wire m09_couplers_to_m09_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m09_couplers_to_m09_couplers_ARADDR;
  assign M_AXI_arvalid = m09_couplers_to_m09_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m09_couplers_to_m09_couplers_AWADDR;
  assign M_AXI_awvalid = m09_couplers_to_m09_couplers_AWVALID;
  assign M_AXI_bready = m09_couplers_to_m09_couplers_BREADY;
  assign M_AXI_rready = m09_couplers_to_m09_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m09_couplers_to_m09_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m09_couplers_to_m09_couplers_WSTRB;
  assign M_AXI_wvalid = m09_couplers_to_m09_couplers_WVALID;
  assign S_AXI_arready = m09_couplers_to_m09_couplers_ARREADY;
  assign S_AXI_awready = m09_couplers_to_m09_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m09_couplers_to_m09_couplers_BRESP;
  assign S_AXI_bvalid = m09_couplers_to_m09_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m09_couplers_to_m09_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m09_couplers_to_m09_couplers_RRESP;
  assign S_AXI_rvalid = m09_couplers_to_m09_couplers_RVALID;
  assign S_AXI_wready = m09_couplers_to_m09_couplers_WREADY;
  assign m09_couplers_to_m09_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m09_couplers_to_m09_couplers_ARREADY = M_AXI_arready;
  assign m09_couplers_to_m09_couplers_ARVALID = S_AXI_arvalid;
  assign m09_couplers_to_m09_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m09_couplers_to_m09_couplers_AWREADY = M_AXI_awready;
  assign m09_couplers_to_m09_couplers_AWVALID = S_AXI_awvalid;
  assign m09_couplers_to_m09_couplers_BREADY = S_AXI_bready;
  assign m09_couplers_to_m09_couplers_BRESP = M_AXI_bresp[1:0];
  assign m09_couplers_to_m09_couplers_BVALID = M_AXI_bvalid;
  assign m09_couplers_to_m09_couplers_RDATA = M_AXI_rdata[31:0];
  assign m09_couplers_to_m09_couplers_RREADY = S_AXI_rready;
  assign m09_couplers_to_m09_couplers_RRESP = M_AXI_rresp[1:0];
  assign m09_couplers_to_m09_couplers_RVALID = M_AXI_rvalid;
  assign m09_couplers_to_m09_couplers_WDATA = S_AXI_wdata[31:0];
  assign m09_couplers_to_m09_couplers_WREADY = M_AXI_wready;
  assign m09_couplers_to_m09_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m09_couplers_to_m09_couplers_WVALID = S_AXI_wvalid;
endmodule

module m10_couplers_imp_N5305N
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

  wire [31:0]m10_couplers_to_m10_couplers_ARADDR;
  wire [2:0]m10_couplers_to_m10_couplers_ARPROT;
  wire m10_couplers_to_m10_couplers_ARREADY;
  wire m10_couplers_to_m10_couplers_ARVALID;
  wire [31:0]m10_couplers_to_m10_couplers_AWADDR;
  wire [2:0]m10_couplers_to_m10_couplers_AWPROT;
  wire m10_couplers_to_m10_couplers_AWREADY;
  wire m10_couplers_to_m10_couplers_AWVALID;
  wire m10_couplers_to_m10_couplers_BREADY;
  wire [1:0]m10_couplers_to_m10_couplers_BRESP;
  wire m10_couplers_to_m10_couplers_BVALID;
  wire [31:0]m10_couplers_to_m10_couplers_RDATA;
  wire m10_couplers_to_m10_couplers_RREADY;
  wire [1:0]m10_couplers_to_m10_couplers_RRESP;
  wire m10_couplers_to_m10_couplers_RVALID;
  wire [31:0]m10_couplers_to_m10_couplers_WDATA;
  wire m10_couplers_to_m10_couplers_WREADY;
  wire [3:0]m10_couplers_to_m10_couplers_WSTRB;
  wire m10_couplers_to_m10_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m10_couplers_to_m10_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m10_couplers_to_m10_couplers_ARPROT;
  assign M_AXI_arvalid = m10_couplers_to_m10_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m10_couplers_to_m10_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m10_couplers_to_m10_couplers_AWPROT;
  assign M_AXI_awvalid = m10_couplers_to_m10_couplers_AWVALID;
  assign M_AXI_bready = m10_couplers_to_m10_couplers_BREADY;
  assign M_AXI_rready = m10_couplers_to_m10_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m10_couplers_to_m10_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m10_couplers_to_m10_couplers_WSTRB;
  assign M_AXI_wvalid = m10_couplers_to_m10_couplers_WVALID;
  assign S_AXI_arready = m10_couplers_to_m10_couplers_ARREADY;
  assign S_AXI_awready = m10_couplers_to_m10_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m10_couplers_to_m10_couplers_BRESP;
  assign S_AXI_bvalid = m10_couplers_to_m10_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m10_couplers_to_m10_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m10_couplers_to_m10_couplers_RRESP;
  assign S_AXI_rvalid = m10_couplers_to_m10_couplers_RVALID;
  assign S_AXI_wready = m10_couplers_to_m10_couplers_WREADY;
  assign m10_couplers_to_m10_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m10_couplers_to_m10_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m10_couplers_to_m10_couplers_ARREADY = M_AXI_arready;
  assign m10_couplers_to_m10_couplers_ARVALID = S_AXI_arvalid;
  assign m10_couplers_to_m10_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m10_couplers_to_m10_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m10_couplers_to_m10_couplers_AWREADY = M_AXI_awready;
  assign m10_couplers_to_m10_couplers_AWVALID = S_AXI_awvalid;
  assign m10_couplers_to_m10_couplers_BREADY = S_AXI_bready;
  assign m10_couplers_to_m10_couplers_BRESP = M_AXI_bresp[1:0];
  assign m10_couplers_to_m10_couplers_BVALID = M_AXI_bvalid;
  assign m10_couplers_to_m10_couplers_RDATA = M_AXI_rdata[31:0];
  assign m10_couplers_to_m10_couplers_RREADY = S_AXI_rready;
  assign m10_couplers_to_m10_couplers_RRESP = M_AXI_rresp[1:0];
  assign m10_couplers_to_m10_couplers_RVALID = M_AXI_rvalid;
  assign m10_couplers_to_m10_couplers_WDATA = S_AXI_wdata[31:0];
  assign m10_couplers_to_m10_couplers_WREADY = M_AXI_wready;
  assign m10_couplers_to_m10_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m10_couplers_to_m10_couplers_WVALID = S_AXI_wvalid;
endmodule

module m11_couplers_imp_1G7Z3AI
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

  wire [31:0]m11_couplers_to_m11_couplers_ARADDR;
  wire [2:0]m11_couplers_to_m11_couplers_ARPROT;
  wire m11_couplers_to_m11_couplers_ARREADY;
  wire m11_couplers_to_m11_couplers_ARVALID;
  wire [31:0]m11_couplers_to_m11_couplers_AWADDR;
  wire [2:0]m11_couplers_to_m11_couplers_AWPROT;
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
  assign M_AXI_arprot[2:0] = m11_couplers_to_m11_couplers_ARPROT;
  assign M_AXI_arvalid = m11_couplers_to_m11_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m11_couplers_to_m11_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m11_couplers_to_m11_couplers_AWPROT;
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
  assign m11_couplers_to_m11_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m11_couplers_to_m11_couplers_ARREADY = M_AXI_arready;
  assign m11_couplers_to_m11_couplers_ARVALID = S_AXI_arvalid;
  assign m11_couplers_to_m11_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m11_couplers_to_m11_couplers_AWPROT = S_AXI_awprot[2:0];
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

  wire [31:0]m12_couplers_to_m12_couplers_ARADDR;
  wire [2:0]m12_couplers_to_m12_couplers_ARPROT;
  wire m12_couplers_to_m12_couplers_ARREADY;
  wire m12_couplers_to_m12_couplers_ARVALID;
  wire [31:0]m12_couplers_to_m12_couplers_AWADDR;
  wire [2:0]m12_couplers_to_m12_couplers_AWPROT;
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
  assign M_AXI_arprot[2:0] = m12_couplers_to_m12_couplers_ARPROT;
  assign M_AXI_arvalid = m12_couplers_to_m12_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m12_couplers_to_m12_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m12_couplers_to_m12_couplers_AWPROT;
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
  assign m12_couplers_to_m12_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m12_couplers_to_m12_couplers_ARREADY = M_AXI_arready;
  assign m12_couplers_to_m12_couplers_ARVALID = S_AXI_arvalid;
  assign m12_couplers_to_m12_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m12_couplers_to_m12_couplers_AWPROT = S_AXI_awprot[2:0];
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

  wire [31:0]m13_couplers_to_m13_couplers_ARADDR;
  wire [2:0]m13_couplers_to_m13_couplers_ARPROT;
  wire m13_couplers_to_m13_couplers_ARREADY;
  wire m13_couplers_to_m13_couplers_ARVALID;
  wire [31:0]m13_couplers_to_m13_couplers_AWADDR;
  wire [2:0]m13_couplers_to_m13_couplers_AWPROT;
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
  assign M_AXI_arprot[2:0] = m13_couplers_to_m13_couplers_ARPROT;
  assign M_AXI_arvalid = m13_couplers_to_m13_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m13_couplers_to_m13_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m13_couplers_to_m13_couplers_AWPROT;
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
  assign m13_couplers_to_m13_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m13_couplers_to_m13_couplers_ARREADY = M_AXI_arready;
  assign m13_couplers_to_m13_couplers_ARVALID = S_AXI_arvalid;
  assign m13_couplers_to_m13_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m13_couplers_to_m13_couplers_AWPROT = S_AXI_awprot[2:0];
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

  wire [31:0]m14_couplers_to_m14_couplers_ARADDR;
  wire [2:0]m14_couplers_to_m14_couplers_ARPROT;
  wire m14_couplers_to_m14_couplers_ARREADY;
  wire m14_couplers_to_m14_couplers_ARVALID;
  wire [31:0]m14_couplers_to_m14_couplers_AWADDR;
  wire [2:0]m14_couplers_to_m14_couplers_AWPROT;
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
  assign M_AXI_arprot[2:0] = m14_couplers_to_m14_couplers_ARPROT;
  assign M_AXI_arvalid = m14_couplers_to_m14_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m14_couplers_to_m14_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m14_couplers_to_m14_couplers_AWPROT;
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
  assign m14_couplers_to_m14_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m14_couplers_to_m14_couplers_ARREADY = M_AXI_arready;
  assign m14_couplers_to_m14_couplers_ARVALID = S_AXI_arvalid;
  assign m14_couplers_to_m14_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m14_couplers_to_m14_couplers_AWPROT = S_AXI_awprot[2:0];
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

module m15_couplers_imp_1EY2S8C
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

  wire [31:0]m15_couplers_to_m15_couplers_ARADDR;
  wire [2:0]m15_couplers_to_m15_couplers_ARPROT;
  wire m15_couplers_to_m15_couplers_ARREADY;
  wire m15_couplers_to_m15_couplers_ARVALID;
  wire [31:0]m15_couplers_to_m15_couplers_AWADDR;
  wire [2:0]m15_couplers_to_m15_couplers_AWPROT;
  wire m15_couplers_to_m15_couplers_AWREADY;
  wire m15_couplers_to_m15_couplers_AWVALID;
  wire m15_couplers_to_m15_couplers_BREADY;
  wire [1:0]m15_couplers_to_m15_couplers_BRESP;
  wire m15_couplers_to_m15_couplers_BVALID;
  wire [31:0]m15_couplers_to_m15_couplers_RDATA;
  wire m15_couplers_to_m15_couplers_RREADY;
  wire [1:0]m15_couplers_to_m15_couplers_RRESP;
  wire m15_couplers_to_m15_couplers_RVALID;
  wire [31:0]m15_couplers_to_m15_couplers_WDATA;
  wire m15_couplers_to_m15_couplers_WREADY;
  wire [3:0]m15_couplers_to_m15_couplers_WSTRB;
  wire m15_couplers_to_m15_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m15_couplers_to_m15_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m15_couplers_to_m15_couplers_ARPROT;
  assign M_AXI_arvalid = m15_couplers_to_m15_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m15_couplers_to_m15_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m15_couplers_to_m15_couplers_AWPROT;
  assign M_AXI_awvalid = m15_couplers_to_m15_couplers_AWVALID;
  assign M_AXI_bready = m15_couplers_to_m15_couplers_BREADY;
  assign M_AXI_rready = m15_couplers_to_m15_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m15_couplers_to_m15_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m15_couplers_to_m15_couplers_WSTRB;
  assign M_AXI_wvalid = m15_couplers_to_m15_couplers_WVALID;
  assign S_AXI_arready = m15_couplers_to_m15_couplers_ARREADY;
  assign S_AXI_awready = m15_couplers_to_m15_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m15_couplers_to_m15_couplers_BRESP;
  assign S_AXI_bvalid = m15_couplers_to_m15_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m15_couplers_to_m15_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m15_couplers_to_m15_couplers_RRESP;
  assign S_AXI_rvalid = m15_couplers_to_m15_couplers_RVALID;
  assign S_AXI_wready = m15_couplers_to_m15_couplers_WREADY;
  assign m15_couplers_to_m15_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m15_couplers_to_m15_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m15_couplers_to_m15_couplers_ARREADY = M_AXI_arready;
  assign m15_couplers_to_m15_couplers_ARVALID = S_AXI_arvalid;
  assign m15_couplers_to_m15_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m15_couplers_to_m15_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m15_couplers_to_m15_couplers_AWREADY = M_AXI_awready;
  assign m15_couplers_to_m15_couplers_AWVALID = S_AXI_awvalid;
  assign m15_couplers_to_m15_couplers_BREADY = S_AXI_bready;
  assign m15_couplers_to_m15_couplers_BRESP = M_AXI_bresp[1:0];
  assign m15_couplers_to_m15_couplers_BVALID = M_AXI_bvalid;
  assign m15_couplers_to_m15_couplers_RDATA = M_AXI_rdata[31:0];
  assign m15_couplers_to_m15_couplers_RREADY = S_AXI_rready;
  assign m15_couplers_to_m15_couplers_RRESP = M_AXI_rresp[1:0];
  assign m15_couplers_to_m15_couplers_RVALID = M_AXI_rvalid;
  assign m15_couplers_to_m15_couplers_WDATA = S_AXI_wdata[31:0];
  assign m15_couplers_to_m15_couplers_WREADY = M_AXI_wready;
  assign m15_couplers_to_m15_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m15_couplers_to_m15_couplers_WVALID = S_AXI_wvalid;
endmodule

module m16_couplers_imp_PU16A6
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
  wire [31:0]auto_cc_to_m16_couplers_ARADDR;
  wire auto_cc_to_m16_couplers_ARREADY;
  wire auto_cc_to_m16_couplers_ARVALID;
  wire [31:0]auto_cc_to_m16_couplers_AWADDR;
  wire auto_cc_to_m16_couplers_AWREADY;
  wire auto_cc_to_m16_couplers_AWVALID;
  wire auto_cc_to_m16_couplers_BREADY;
  wire [1:0]auto_cc_to_m16_couplers_BRESP;
  wire auto_cc_to_m16_couplers_BVALID;
  wire [31:0]auto_cc_to_m16_couplers_RDATA;
  wire auto_cc_to_m16_couplers_RREADY;
  wire [1:0]auto_cc_to_m16_couplers_RRESP;
  wire auto_cc_to_m16_couplers_RVALID;
  wire [31:0]auto_cc_to_m16_couplers_WDATA;
  wire auto_cc_to_m16_couplers_WREADY;
  wire [3:0]auto_cc_to_m16_couplers_WSTRB;
  wire auto_cc_to_m16_couplers_WVALID;
  wire [31:0]m16_couplers_to_auto_cc_ARADDR;
  wire [2:0]m16_couplers_to_auto_cc_ARPROT;
  wire m16_couplers_to_auto_cc_ARREADY;
  wire m16_couplers_to_auto_cc_ARVALID;
  wire [31:0]m16_couplers_to_auto_cc_AWADDR;
  wire [2:0]m16_couplers_to_auto_cc_AWPROT;
  wire m16_couplers_to_auto_cc_AWREADY;
  wire m16_couplers_to_auto_cc_AWVALID;
  wire m16_couplers_to_auto_cc_BREADY;
  wire [1:0]m16_couplers_to_auto_cc_BRESP;
  wire m16_couplers_to_auto_cc_BVALID;
  wire [31:0]m16_couplers_to_auto_cc_RDATA;
  wire m16_couplers_to_auto_cc_RREADY;
  wire [1:0]m16_couplers_to_auto_cc_RRESP;
  wire m16_couplers_to_auto_cc_RVALID;
  wire [31:0]m16_couplers_to_auto_cc_WDATA;
  wire m16_couplers_to_auto_cc_WREADY;
  wire [3:0]m16_couplers_to_auto_cc_WSTRB;
  wire m16_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = auto_cc_to_m16_couplers_ARADDR;
  assign M_AXI_arvalid = auto_cc_to_m16_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_cc_to_m16_couplers_AWADDR;
  assign M_AXI_awvalid = auto_cc_to_m16_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m16_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m16_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_m16_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_m16_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_m16_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m16_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m16_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m16_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m16_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m16_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m16_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m16_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m16_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m16_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m16_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m16_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m16_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m16_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_m16_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m16_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m16_couplers_WREADY = M_AXI_wready;
  assign m16_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign m16_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m16_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m16_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
  assign m16_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m16_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m16_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m16_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m16_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m16_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m16_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  icyradio_auto_cc_0 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m16_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arready(auto_cc_to_m16_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m16_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m16_couplers_AWADDR),
        .m_axi_awready(auto_cc_to_m16_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m16_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m16_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m16_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m16_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m16_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m16_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m16_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m16_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m16_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m16_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m16_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m16_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m16_couplers_to_auto_cc_ARADDR),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m16_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m16_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m16_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m16_couplers_to_auto_cc_AWADDR),
        .s_axi_awprot(m16_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m16_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m16_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m16_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m16_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m16_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m16_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m16_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m16_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m16_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m16_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m16_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m16_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m16_couplers_to_auto_cc_WVALID));
endmodule

module m17_couplers_imp_1DGUCJ3
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

  wire [31:0]m17_couplers_to_m17_couplers_ARADDR;
  wire [2:0]m17_couplers_to_m17_couplers_ARPROT;
  wire m17_couplers_to_m17_couplers_ARREADY;
  wire m17_couplers_to_m17_couplers_ARVALID;
  wire [31:0]m17_couplers_to_m17_couplers_AWADDR;
  wire [2:0]m17_couplers_to_m17_couplers_AWPROT;
  wire m17_couplers_to_m17_couplers_AWREADY;
  wire m17_couplers_to_m17_couplers_AWVALID;
  wire m17_couplers_to_m17_couplers_BREADY;
  wire [1:0]m17_couplers_to_m17_couplers_BRESP;
  wire m17_couplers_to_m17_couplers_BVALID;
  wire [31:0]m17_couplers_to_m17_couplers_RDATA;
  wire m17_couplers_to_m17_couplers_RREADY;
  wire [1:0]m17_couplers_to_m17_couplers_RRESP;
  wire m17_couplers_to_m17_couplers_RVALID;
  wire [31:0]m17_couplers_to_m17_couplers_WDATA;
  wire m17_couplers_to_m17_couplers_WREADY;
  wire [3:0]m17_couplers_to_m17_couplers_WSTRB;
  wire m17_couplers_to_m17_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m17_couplers_to_m17_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m17_couplers_to_m17_couplers_ARPROT;
  assign M_AXI_arvalid = m17_couplers_to_m17_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m17_couplers_to_m17_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m17_couplers_to_m17_couplers_AWPROT;
  assign M_AXI_awvalid = m17_couplers_to_m17_couplers_AWVALID;
  assign M_AXI_bready = m17_couplers_to_m17_couplers_BREADY;
  assign M_AXI_rready = m17_couplers_to_m17_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m17_couplers_to_m17_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m17_couplers_to_m17_couplers_WSTRB;
  assign M_AXI_wvalid = m17_couplers_to_m17_couplers_WVALID;
  assign S_AXI_arready = m17_couplers_to_m17_couplers_ARREADY;
  assign S_AXI_awready = m17_couplers_to_m17_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m17_couplers_to_m17_couplers_BRESP;
  assign S_AXI_bvalid = m17_couplers_to_m17_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m17_couplers_to_m17_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m17_couplers_to_m17_couplers_RRESP;
  assign S_AXI_rvalid = m17_couplers_to_m17_couplers_RVALID;
  assign S_AXI_wready = m17_couplers_to_m17_couplers_WREADY;
  assign m17_couplers_to_m17_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m17_couplers_to_m17_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m17_couplers_to_m17_couplers_ARREADY = M_AXI_arready;
  assign m17_couplers_to_m17_couplers_ARVALID = S_AXI_arvalid;
  assign m17_couplers_to_m17_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m17_couplers_to_m17_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m17_couplers_to_m17_couplers_AWREADY = M_AXI_awready;
  assign m17_couplers_to_m17_couplers_AWVALID = S_AXI_awvalid;
  assign m17_couplers_to_m17_couplers_BREADY = S_AXI_bready;
  assign m17_couplers_to_m17_couplers_BRESP = M_AXI_bresp[1:0];
  assign m17_couplers_to_m17_couplers_BVALID = M_AXI_bvalid;
  assign m17_couplers_to_m17_couplers_RDATA = M_AXI_rdata[31:0];
  assign m17_couplers_to_m17_couplers_RREADY = S_AXI_rready;
  assign m17_couplers_to_m17_couplers_RRESP = M_AXI_rresp[1:0];
  assign m17_couplers_to_m17_couplers_RVALID = M_AXI_rvalid;
  assign m17_couplers_to_m17_couplers_WDATA = S_AXI_wdata[31:0];
  assign m17_couplers_to_m17_couplers_WREADY = M_AXI_wready;
  assign m17_couplers_to_m17_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m17_couplers_to_m17_couplers_WVALID = S_AXI_wvalid;
endmodule

module m18_couplers_imp_IXD6DJ
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

  wire [31:0]m18_couplers_to_m18_couplers_ARADDR;
  wire [2:0]m18_couplers_to_m18_couplers_ARPROT;
  wire m18_couplers_to_m18_couplers_ARREADY;
  wire m18_couplers_to_m18_couplers_ARVALID;
  wire [31:0]m18_couplers_to_m18_couplers_AWADDR;
  wire [2:0]m18_couplers_to_m18_couplers_AWPROT;
  wire m18_couplers_to_m18_couplers_AWREADY;
  wire m18_couplers_to_m18_couplers_AWVALID;
  wire m18_couplers_to_m18_couplers_BREADY;
  wire [1:0]m18_couplers_to_m18_couplers_BRESP;
  wire m18_couplers_to_m18_couplers_BVALID;
  wire [31:0]m18_couplers_to_m18_couplers_RDATA;
  wire m18_couplers_to_m18_couplers_RREADY;
  wire [1:0]m18_couplers_to_m18_couplers_RRESP;
  wire m18_couplers_to_m18_couplers_RVALID;
  wire [31:0]m18_couplers_to_m18_couplers_WDATA;
  wire m18_couplers_to_m18_couplers_WREADY;
  wire [3:0]m18_couplers_to_m18_couplers_WSTRB;
  wire m18_couplers_to_m18_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m18_couplers_to_m18_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m18_couplers_to_m18_couplers_ARPROT;
  assign M_AXI_arvalid = m18_couplers_to_m18_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m18_couplers_to_m18_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m18_couplers_to_m18_couplers_AWPROT;
  assign M_AXI_awvalid = m18_couplers_to_m18_couplers_AWVALID;
  assign M_AXI_bready = m18_couplers_to_m18_couplers_BREADY;
  assign M_AXI_rready = m18_couplers_to_m18_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m18_couplers_to_m18_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m18_couplers_to_m18_couplers_WSTRB;
  assign M_AXI_wvalid = m18_couplers_to_m18_couplers_WVALID;
  assign S_AXI_arready = m18_couplers_to_m18_couplers_ARREADY;
  assign S_AXI_awready = m18_couplers_to_m18_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m18_couplers_to_m18_couplers_BRESP;
  assign S_AXI_bvalid = m18_couplers_to_m18_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m18_couplers_to_m18_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m18_couplers_to_m18_couplers_RRESP;
  assign S_AXI_rvalid = m18_couplers_to_m18_couplers_RVALID;
  assign S_AXI_wready = m18_couplers_to_m18_couplers_WREADY;
  assign m18_couplers_to_m18_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m18_couplers_to_m18_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m18_couplers_to_m18_couplers_ARREADY = M_AXI_arready;
  assign m18_couplers_to_m18_couplers_ARVALID = S_AXI_arvalid;
  assign m18_couplers_to_m18_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m18_couplers_to_m18_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m18_couplers_to_m18_couplers_AWREADY = M_AXI_awready;
  assign m18_couplers_to_m18_couplers_AWVALID = S_AXI_awvalid;
  assign m18_couplers_to_m18_couplers_BREADY = S_AXI_bready;
  assign m18_couplers_to_m18_couplers_BRESP = M_AXI_bresp[1:0];
  assign m18_couplers_to_m18_couplers_BVALID = M_AXI_bvalid;
  assign m18_couplers_to_m18_couplers_RDATA = M_AXI_rdata[31:0];
  assign m18_couplers_to_m18_couplers_RREADY = S_AXI_rready;
  assign m18_couplers_to_m18_couplers_RRESP = M_AXI_rresp[1:0];
  assign m18_couplers_to_m18_couplers_RVALID = M_AXI_rvalid;
  assign m18_couplers_to_m18_couplers_WDATA = S_AXI_wdata[31:0];
  assign m18_couplers_to_m18_couplers_WREADY = M_AXI_wready;
  assign m18_couplers_to_m18_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m18_couplers_to_m18_couplers_WVALID = S_AXI_wvalid;
endmodule

module m19_couplers_imp_1BJZ6UE
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

  wire [31:0]m19_couplers_to_m19_couplers_ARADDR;
  wire [2:0]m19_couplers_to_m19_couplers_ARPROT;
  wire m19_couplers_to_m19_couplers_ARREADY;
  wire m19_couplers_to_m19_couplers_ARVALID;
  wire [31:0]m19_couplers_to_m19_couplers_AWADDR;
  wire [2:0]m19_couplers_to_m19_couplers_AWPROT;
  wire m19_couplers_to_m19_couplers_AWREADY;
  wire m19_couplers_to_m19_couplers_AWVALID;
  wire m19_couplers_to_m19_couplers_BREADY;
  wire [1:0]m19_couplers_to_m19_couplers_BRESP;
  wire m19_couplers_to_m19_couplers_BVALID;
  wire [31:0]m19_couplers_to_m19_couplers_RDATA;
  wire m19_couplers_to_m19_couplers_RREADY;
  wire [1:0]m19_couplers_to_m19_couplers_RRESP;
  wire m19_couplers_to_m19_couplers_RVALID;
  wire [31:0]m19_couplers_to_m19_couplers_WDATA;
  wire m19_couplers_to_m19_couplers_WREADY;
  wire [3:0]m19_couplers_to_m19_couplers_WSTRB;
  wire m19_couplers_to_m19_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m19_couplers_to_m19_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m19_couplers_to_m19_couplers_ARPROT;
  assign M_AXI_arvalid = m19_couplers_to_m19_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m19_couplers_to_m19_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m19_couplers_to_m19_couplers_AWPROT;
  assign M_AXI_awvalid = m19_couplers_to_m19_couplers_AWVALID;
  assign M_AXI_bready = m19_couplers_to_m19_couplers_BREADY;
  assign M_AXI_rready = m19_couplers_to_m19_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m19_couplers_to_m19_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m19_couplers_to_m19_couplers_WSTRB;
  assign M_AXI_wvalid = m19_couplers_to_m19_couplers_WVALID;
  assign S_AXI_arready = m19_couplers_to_m19_couplers_ARREADY;
  assign S_AXI_awready = m19_couplers_to_m19_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m19_couplers_to_m19_couplers_BRESP;
  assign S_AXI_bvalid = m19_couplers_to_m19_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m19_couplers_to_m19_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m19_couplers_to_m19_couplers_RRESP;
  assign S_AXI_rvalid = m19_couplers_to_m19_couplers_RVALID;
  assign S_AXI_wready = m19_couplers_to_m19_couplers_WREADY;
  assign m19_couplers_to_m19_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m19_couplers_to_m19_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m19_couplers_to_m19_couplers_ARREADY = M_AXI_arready;
  assign m19_couplers_to_m19_couplers_ARVALID = S_AXI_arvalid;
  assign m19_couplers_to_m19_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m19_couplers_to_m19_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m19_couplers_to_m19_couplers_AWREADY = M_AXI_awready;
  assign m19_couplers_to_m19_couplers_AWVALID = S_AXI_awvalid;
  assign m19_couplers_to_m19_couplers_BREADY = S_AXI_bready;
  assign m19_couplers_to_m19_couplers_BRESP = M_AXI_bresp[1:0];
  assign m19_couplers_to_m19_couplers_BVALID = M_AXI_bvalid;
  assign m19_couplers_to_m19_couplers_RDATA = M_AXI_rdata[31:0];
  assign m19_couplers_to_m19_couplers_RREADY = S_AXI_rready;
  assign m19_couplers_to_m19_couplers_RRESP = M_AXI_rresp[1:0];
  assign m19_couplers_to_m19_couplers_RVALID = M_AXI_rvalid;
  assign m19_couplers_to_m19_couplers_WDATA = S_AXI_wdata[31:0];
  assign m19_couplers_to_m19_couplers_WREADY = M_AXI_wready;
  assign m19_couplers_to_m19_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m19_couplers_to_m19_couplers_WVALID = S_AXI_wvalid;
endmodule

module m20_couplers_imp_1UN83DU
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

  wire [31:0]m20_couplers_to_m20_couplers_ARADDR;
  wire [0:0]m20_couplers_to_m20_couplers_ARREADY;
  wire [0:0]m20_couplers_to_m20_couplers_ARVALID;
  wire [31:0]m20_couplers_to_m20_couplers_AWADDR;
  wire [0:0]m20_couplers_to_m20_couplers_AWREADY;
  wire [0:0]m20_couplers_to_m20_couplers_AWVALID;
  wire [0:0]m20_couplers_to_m20_couplers_BREADY;
  wire [1:0]m20_couplers_to_m20_couplers_BRESP;
  wire [0:0]m20_couplers_to_m20_couplers_BVALID;
  wire [31:0]m20_couplers_to_m20_couplers_RDATA;
  wire [0:0]m20_couplers_to_m20_couplers_RREADY;
  wire [1:0]m20_couplers_to_m20_couplers_RRESP;
  wire [0:0]m20_couplers_to_m20_couplers_RVALID;
  wire [31:0]m20_couplers_to_m20_couplers_WDATA;
  wire [0:0]m20_couplers_to_m20_couplers_WREADY;
  wire [3:0]m20_couplers_to_m20_couplers_WSTRB;
  wire [0:0]m20_couplers_to_m20_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m20_couplers_to_m20_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m20_couplers_to_m20_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m20_couplers_to_m20_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m20_couplers_to_m20_couplers_AWVALID;
  assign M_AXI_bready[0] = m20_couplers_to_m20_couplers_BREADY;
  assign M_AXI_rready[0] = m20_couplers_to_m20_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m20_couplers_to_m20_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m20_couplers_to_m20_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m20_couplers_to_m20_couplers_WVALID;
  assign S_AXI_arready[0] = m20_couplers_to_m20_couplers_ARREADY;
  assign S_AXI_awready[0] = m20_couplers_to_m20_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m20_couplers_to_m20_couplers_BRESP;
  assign S_AXI_bvalid[0] = m20_couplers_to_m20_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m20_couplers_to_m20_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m20_couplers_to_m20_couplers_RRESP;
  assign S_AXI_rvalid[0] = m20_couplers_to_m20_couplers_RVALID;
  assign S_AXI_wready[0] = m20_couplers_to_m20_couplers_WREADY;
  assign m20_couplers_to_m20_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m20_couplers_to_m20_couplers_ARREADY = M_AXI_arready[0];
  assign m20_couplers_to_m20_couplers_ARVALID = S_AXI_arvalid[0];
  assign m20_couplers_to_m20_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m20_couplers_to_m20_couplers_AWREADY = M_AXI_awready[0];
  assign m20_couplers_to_m20_couplers_AWVALID = S_AXI_awvalid[0];
  assign m20_couplers_to_m20_couplers_BREADY = S_AXI_bready[0];
  assign m20_couplers_to_m20_couplers_BRESP = M_AXI_bresp[1:0];
  assign m20_couplers_to_m20_couplers_BVALID = M_AXI_bvalid[0];
  assign m20_couplers_to_m20_couplers_RDATA = M_AXI_rdata[31:0];
  assign m20_couplers_to_m20_couplers_RREADY = S_AXI_rready[0];
  assign m20_couplers_to_m20_couplers_RRESP = M_AXI_rresp[1:0];
  assign m20_couplers_to_m20_couplers_RVALID = M_AXI_rvalid[0];
  assign m20_couplers_to_m20_couplers_WDATA = S_AXI_wdata[31:0];
  assign m20_couplers_to_m20_couplers_WREADY = M_AXI_wready[0];
  assign m20_couplers_to_m20_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m20_couplers_to_m20_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m21_couplers_imp_8PIRIB
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

  wire [31:0]m21_couplers_to_m21_couplers_ARADDR;
  wire [2:0]m21_couplers_to_m21_couplers_ARPROT;
  wire m21_couplers_to_m21_couplers_ARREADY;
  wire m21_couplers_to_m21_couplers_ARVALID;
  wire [31:0]m21_couplers_to_m21_couplers_AWADDR;
  wire [2:0]m21_couplers_to_m21_couplers_AWPROT;
  wire m21_couplers_to_m21_couplers_AWREADY;
  wire m21_couplers_to_m21_couplers_AWVALID;
  wire m21_couplers_to_m21_couplers_BREADY;
  wire [1:0]m21_couplers_to_m21_couplers_BRESP;
  wire m21_couplers_to_m21_couplers_BVALID;
  wire [31:0]m21_couplers_to_m21_couplers_RDATA;
  wire m21_couplers_to_m21_couplers_RREADY;
  wire [1:0]m21_couplers_to_m21_couplers_RRESP;
  wire m21_couplers_to_m21_couplers_RVALID;
  wire [31:0]m21_couplers_to_m21_couplers_WDATA;
  wire m21_couplers_to_m21_couplers_WREADY;
  wire [3:0]m21_couplers_to_m21_couplers_WSTRB;
  wire m21_couplers_to_m21_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m21_couplers_to_m21_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m21_couplers_to_m21_couplers_ARPROT;
  assign M_AXI_arvalid = m21_couplers_to_m21_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m21_couplers_to_m21_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m21_couplers_to_m21_couplers_AWPROT;
  assign M_AXI_awvalid = m21_couplers_to_m21_couplers_AWVALID;
  assign M_AXI_bready = m21_couplers_to_m21_couplers_BREADY;
  assign M_AXI_rready = m21_couplers_to_m21_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m21_couplers_to_m21_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m21_couplers_to_m21_couplers_WSTRB;
  assign M_AXI_wvalid = m21_couplers_to_m21_couplers_WVALID;
  assign S_AXI_arready = m21_couplers_to_m21_couplers_ARREADY;
  assign S_AXI_awready = m21_couplers_to_m21_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m21_couplers_to_m21_couplers_BRESP;
  assign S_AXI_bvalid = m21_couplers_to_m21_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m21_couplers_to_m21_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m21_couplers_to_m21_couplers_RRESP;
  assign S_AXI_rvalid = m21_couplers_to_m21_couplers_RVALID;
  assign S_AXI_wready = m21_couplers_to_m21_couplers_WREADY;
  assign m21_couplers_to_m21_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m21_couplers_to_m21_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m21_couplers_to_m21_couplers_ARREADY = M_AXI_arready;
  assign m21_couplers_to_m21_couplers_ARVALID = S_AXI_arvalid;
  assign m21_couplers_to_m21_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m21_couplers_to_m21_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m21_couplers_to_m21_couplers_AWREADY = M_AXI_awready;
  assign m21_couplers_to_m21_couplers_AWVALID = S_AXI_awvalid;
  assign m21_couplers_to_m21_couplers_BREADY = S_AXI_bready;
  assign m21_couplers_to_m21_couplers_BRESP = M_AXI_bresp[1:0];
  assign m21_couplers_to_m21_couplers_BVALID = M_AXI_bvalid;
  assign m21_couplers_to_m21_couplers_RDATA = M_AXI_rdata[31:0];
  assign m21_couplers_to_m21_couplers_RREADY = S_AXI_rready;
  assign m21_couplers_to_m21_couplers_RRESP = M_AXI_rresp[1:0];
  assign m21_couplers_to_m21_couplers_RVALID = M_AXI_rvalid;
  assign m21_couplers_to_m21_couplers_WDATA = S_AXI_wdata[31:0];
  assign m21_couplers_to_m21_couplers_WREADY = M_AXI_wready;
  assign m21_couplers_to_m21_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m21_couplers_to_m21_couplers_WVALID = S_AXI_wvalid;
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
  input [63:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
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
  wire [31:0]s00_couplers_to_s00_data_fifo_ARADDR;
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
  wire [31:0]s00_data_fifo_to_s00_couplers_ARADDR;
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
  assign M_AXI_araddr[31:0] = s00_data_fifo_to_s00_couplers_ARADDR;
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
  assign s00_couplers_to_s00_data_fifo_ARADDR = S_AXI_araddr[31:0];
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
  icyradio_s00_data_fifo_72 s00_data_fifo
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
  icyradio_s00_data_fifo_73 s00_data_fifo
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
  output [63:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [63:0]S_AXI_wdata;
  output S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_ds_to_s00_couplers_ARADDR;
  wire [2:0]auto_ds_to_s00_couplers_ARPROT;
  wire auto_ds_to_s00_couplers_ARREADY;
  wire auto_ds_to_s00_couplers_ARVALID;
  wire [31:0]auto_ds_to_s00_couplers_AWADDR;
  wire [2:0]auto_ds_to_s00_couplers_AWPROT;
  wire auto_ds_to_s00_couplers_AWREADY;
  wire auto_ds_to_s00_couplers_AWVALID;
  wire auto_ds_to_s00_couplers_BREADY;
  wire [1:0]auto_ds_to_s00_couplers_BRESP;
  wire auto_ds_to_s00_couplers_BVALID;
  wire [31:0]auto_ds_to_s00_couplers_RDATA;
  wire auto_ds_to_s00_couplers_RREADY;
  wire [1:0]auto_ds_to_s00_couplers_RRESP;
  wire auto_ds_to_s00_couplers_RVALID;
  wire [31:0]auto_ds_to_s00_couplers_WDATA;
  wire auto_ds_to_s00_couplers_WREADY;
  wire [3:0]auto_ds_to_s00_couplers_WSTRB;
  wire auto_ds_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_auto_ds_ARADDR;
  wire [2:0]s00_couplers_to_auto_ds_ARPROT;
  wire s00_couplers_to_auto_ds_ARREADY;
  wire s00_couplers_to_auto_ds_ARVALID;
  wire [31:0]s00_couplers_to_auto_ds_AWADDR;
  wire [2:0]s00_couplers_to_auto_ds_AWPROT;
  wire s00_couplers_to_auto_ds_AWREADY;
  wire s00_couplers_to_auto_ds_AWVALID;
  wire s00_couplers_to_auto_ds_BREADY;
  wire [1:0]s00_couplers_to_auto_ds_BRESP;
  wire s00_couplers_to_auto_ds_BVALID;
  wire [63:0]s00_couplers_to_auto_ds_RDATA;
  wire s00_couplers_to_auto_ds_RREADY;
  wire [1:0]s00_couplers_to_auto_ds_RRESP;
  wire s00_couplers_to_auto_ds_RVALID;
  wire [63:0]s00_couplers_to_auto_ds_WDATA;
  wire s00_couplers_to_auto_ds_WREADY;
  wire [7:0]s00_couplers_to_auto_ds_WSTRB;
  wire s00_couplers_to_auto_ds_WVALID;

  assign M_AXI_araddr[31:0] = auto_ds_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_ds_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid = auto_ds_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_ds_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_ds_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid = auto_ds_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_ds_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_ds_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_ds_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_ds_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_ds_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_ds_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_ds_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_ds_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_ds_BVALID;
  assign S_AXI_rdata[63:0] = s00_couplers_to_auto_ds_RDATA;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_ds_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_ds_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_ds_WREADY;
  assign auto_ds_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_ds_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_ds_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_ds_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_ds_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_ds_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_ds_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_ds_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_ds_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_auto_ds_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_ds_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_ds_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_auto_ds_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_ds_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_ds_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_ds_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_ds_WDATA = S_AXI_wdata[63:0];
  assign s00_couplers_to_auto_ds_WSTRB = S_AXI_wstrb[7:0];
  assign s00_couplers_to_auto_ds_WVALID = S_AXI_wvalid;
  icyradio_auto_ds_0 auto_ds
       (.m_axi_araddr(auto_ds_to_s00_couplers_ARADDR),
        .m_axi_arprot(auto_ds_to_s00_couplers_ARPROT),
        .m_axi_arready(auto_ds_to_s00_couplers_ARREADY),
        .m_axi_arvalid(auto_ds_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_ds_to_s00_couplers_AWADDR),
        .m_axi_awprot(auto_ds_to_s00_couplers_AWPROT),
        .m_axi_awready(auto_ds_to_s00_couplers_AWREADY),
        .m_axi_awvalid(auto_ds_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_ds_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_ds_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_ds_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_ds_to_s00_couplers_RDATA),
        .m_axi_rready(auto_ds_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_ds_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_ds_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_ds_to_s00_couplers_WDATA),
        .m_axi_wready(auto_ds_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_ds_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_ds_to_s00_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s00_couplers_to_auto_ds_ARADDR),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(s00_couplers_to_auto_ds_ARPROT),
        .s_axi_arready(s00_couplers_to_auto_ds_ARREADY),
        .s_axi_arvalid(s00_couplers_to_auto_ds_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_ds_AWADDR),
        .s_axi_awprot(s00_couplers_to_auto_ds_AWPROT),
        .s_axi_awready(s00_couplers_to_auto_ds_AWREADY),
        .s_axi_awvalid(s00_couplers_to_auto_ds_AWVALID),
        .s_axi_bready(s00_couplers_to_auto_ds_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_ds_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_ds_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_ds_RDATA),
        .s_axi_rready(s00_couplers_to_auto_ds_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_ds_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_ds_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_ds_WDATA),
        .s_axi_wready(s00_couplers_to_auto_ds_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_ds_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_ds_WVALID));
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
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
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
  wire [0:0]s01_couplers_to_s01_data_fifo_ARLOCK;
  wire [2:0]s01_couplers_to_s01_data_fifo_ARPROT;
  wire s01_couplers_to_s01_data_fifo_ARREADY;
  wire [2:0]s01_couplers_to_s01_data_fifo_ARSIZE;
  wire s01_couplers_to_s01_data_fifo_ARVALID;
  wire [31:0]s01_couplers_to_s01_data_fifo_AWADDR;
  wire [1:0]s01_couplers_to_s01_data_fifo_AWBURST;
  wire [3:0]s01_couplers_to_s01_data_fifo_AWCACHE;
  wire [7:0]s01_couplers_to_s01_data_fifo_AWLEN;
  wire [0:0]s01_couplers_to_s01_data_fifo_AWLOCK;
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
  assign s01_couplers_to_s01_data_fifo_ARLOCK = S_AXI_arlock[0];
  assign s01_couplers_to_s01_data_fifo_ARPROT = S_AXI_arprot[2:0];
  assign s01_couplers_to_s01_data_fifo_ARSIZE = S_AXI_arsize[2:0];
  assign s01_couplers_to_s01_data_fifo_ARVALID = S_AXI_arvalid;
  assign s01_couplers_to_s01_data_fifo_AWADDR = S_AXI_awaddr[31:0];
  assign s01_couplers_to_s01_data_fifo_AWBURST = S_AXI_awburst[1:0];
  assign s01_couplers_to_s01_data_fifo_AWCACHE = S_AXI_awcache[3:0];
  assign s01_couplers_to_s01_data_fifo_AWLEN = S_AXI_awlen[7:0];
  assign s01_couplers_to_s01_data_fifo_AWLOCK = S_AXI_awlock[0];
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
  icyradio_s01_data_fifo_73 s01_data_fifo
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
  input [63:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
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
  wire [31:0]s01_couplers_to_s01_data_fifo_ARADDR;
  wire [1:0]s01_couplers_to_s01_data_fifo_ARBURST;
  wire [3:0]s01_couplers_to_s01_data_fifo_ARCACHE;
  wire [7:0]s01_couplers_to_s01_data_fifo_ARLEN;
  wire [2:0]s01_couplers_to_s01_data_fifo_ARPROT;
  wire s01_couplers_to_s01_data_fifo_ARREADY;
  wire [2:0]s01_couplers_to_s01_data_fifo_ARSIZE;
  wire s01_couplers_to_s01_data_fifo_ARVALID;
  wire [63:0]s01_couplers_to_s01_data_fifo_RDATA;
  wire s01_couplers_to_s01_data_fifo_RLAST;
  wire s01_couplers_to_s01_data_fifo_RREADY;
  wire [1:0]s01_couplers_to_s01_data_fifo_RRESP;
  wire s01_couplers_to_s01_data_fifo_RVALID;
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
  wire [63:0]s01_data_fifo_to_s01_couplers_RDATA;
  wire s01_data_fifo_to_s01_couplers_RLAST;
  wire s01_data_fifo_to_s01_couplers_RREADY;
  wire [1:0]s01_data_fifo_to_s01_couplers_RRESP;
  wire s01_data_fifo_to_s01_couplers_RVALID;

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
  assign M_AXI_rready = s01_data_fifo_to_s01_couplers_RREADY;
  assign S_AXI_arready = s01_couplers_to_s01_data_fifo_ARREADY;
  assign S_AXI_rdata[63:0] = s01_couplers_to_s01_data_fifo_RDATA;
  assign S_AXI_rlast = s01_couplers_to_s01_data_fifo_RLAST;
  assign S_AXI_rresp[1:0] = s01_couplers_to_s01_data_fifo_RRESP;
  assign S_AXI_rvalid = s01_couplers_to_s01_data_fifo_RVALID;
  assign s01_couplers_to_s01_data_fifo_ARADDR = S_AXI_araddr[31:0];
  assign s01_couplers_to_s01_data_fifo_ARBURST = S_AXI_arburst[1:0];
  assign s01_couplers_to_s01_data_fifo_ARCACHE = S_AXI_arcache[3:0];
  assign s01_couplers_to_s01_data_fifo_ARLEN = S_AXI_arlen[7:0];
  assign s01_couplers_to_s01_data_fifo_ARPROT = S_AXI_arprot[2:0];
  assign s01_couplers_to_s01_data_fifo_ARSIZE = S_AXI_arsize[2:0];
  assign s01_couplers_to_s01_data_fifo_ARVALID = S_AXI_arvalid;
  assign s01_couplers_to_s01_data_fifo_RREADY = S_AXI_rready;
  assign s01_data_fifo_to_s01_couplers_ARREADY = M_AXI_arready;
  assign s01_data_fifo_to_s01_couplers_RDATA = M_AXI_rdata[63:0];
  assign s01_data_fifo_to_s01_couplers_RLAST = M_AXI_rlast;
  assign s01_data_fifo_to_s01_couplers_RRESP = M_AXI_rresp[1:0];
  assign s01_data_fifo_to_s01_couplers_RVALID = M_AXI_rvalid;
  icyradio_s01_data_fifo_72 s01_data_fifo
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
        .m_axi_rdata(s01_data_fifo_to_s01_couplers_RDATA),
        .m_axi_rlast(s01_data_fifo_to_s01_couplers_RLAST),
        .m_axi_rready(s01_data_fifo_to_s01_couplers_RREADY),
        .m_axi_rresp(s01_data_fifo_to_s01_couplers_RRESP),
        .m_axi_rvalid(s01_data_fifo_to_s01_couplers_RVALID),
        .s_axi_araddr(s01_couplers_to_s01_data_fifo_ARADDR),
        .s_axi_arburst(s01_couplers_to_s01_data_fifo_ARBURST),
        .s_axi_arcache(s01_couplers_to_s01_data_fifo_ARCACHE),
        .s_axi_arlen(s01_couplers_to_s01_data_fifo_ARLEN),
        .s_axi_arlock(1'b0),
        .s_axi_arprot(s01_couplers_to_s01_data_fifo_ARPROT),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(s01_couplers_to_s01_data_fifo_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s01_couplers_to_s01_data_fifo_ARSIZE),
        .s_axi_arvalid(s01_couplers_to_s01_data_fifo_ARVALID),
        .s_axi_rdata(s01_couplers_to_s01_data_fifo_RDATA),
        .s_axi_rlast(s01_couplers_to_s01_data_fifo_RLAST),
        .s_axi_rready(s01_couplers_to_s01_data_fifo_RREADY),
        .s_axi_rresp(s01_couplers_to_s01_data_fifo_RRESP),
        .s_axi_rvalid(s01_couplers_to_s01_data_fifo_RVALID));
endmodule

module s02_couplers_imp_13WZJAK
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
  output [63:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [7:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_awaddr;
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
  wire [31:0]s02_couplers_to_s02_data_fifo_AWADDR;
  wire [1:0]s02_couplers_to_s02_data_fifo_AWBURST;
  wire [3:0]s02_couplers_to_s02_data_fifo_AWCACHE;
  wire [7:0]s02_couplers_to_s02_data_fifo_AWLEN;
  wire [2:0]s02_couplers_to_s02_data_fifo_AWPROT;
  wire s02_couplers_to_s02_data_fifo_AWREADY;
  wire [2:0]s02_couplers_to_s02_data_fifo_AWSIZE;
  wire s02_couplers_to_s02_data_fifo_AWVALID;
  wire s02_couplers_to_s02_data_fifo_BREADY;
  wire [1:0]s02_couplers_to_s02_data_fifo_BRESP;
  wire s02_couplers_to_s02_data_fifo_BVALID;
  wire [63:0]s02_couplers_to_s02_data_fifo_WDATA;
  wire s02_couplers_to_s02_data_fifo_WLAST;
  wire s02_couplers_to_s02_data_fifo_WREADY;
  wire [7:0]s02_couplers_to_s02_data_fifo_WSTRB;
  wire s02_couplers_to_s02_data_fifo_WVALID;
  wire [31:0]s02_data_fifo_to_s02_couplers_AWADDR;
  wire [1:0]s02_data_fifo_to_s02_couplers_AWBURST;
  wire [3:0]s02_data_fifo_to_s02_couplers_AWCACHE;
  wire [7:0]s02_data_fifo_to_s02_couplers_AWLEN;
  wire [0:0]s02_data_fifo_to_s02_couplers_AWLOCK;
  wire [2:0]s02_data_fifo_to_s02_couplers_AWPROT;
  wire [3:0]s02_data_fifo_to_s02_couplers_AWQOS;
  wire s02_data_fifo_to_s02_couplers_AWREADY;
  wire [2:0]s02_data_fifo_to_s02_couplers_AWSIZE;
  wire s02_data_fifo_to_s02_couplers_AWVALID;
  wire s02_data_fifo_to_s02_couplers_BREADY;
  wire [1:0]s02_data_fifo_to_s02_couplers_BRESP;
  wire s02_data_fifo_to_s02_couplers_BVALID;
  wire [63:0]s02_data_fifo_to_s02_couplers_WDATA;
  wire s02_data_fifo_to_s02_couplers_WLAST;
  wire s02_data_fifo_to_s02_couplers_WREADY;
  wire [7:0]s02_data_fifo_to_s02_couplers_WSTRB;
  wire s02_data_fifo_to_s02_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_awaddr[31:0] = s02_data_fifo_to_s02_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = s02_data_fifo_to_s02_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = s02_data_fifo_to_s02_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = s02_data_fifo_to_s02_couplers_AWLEN;
  assign M_AXI_awlock[0] = s02_data_fifo_to_s02_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = s02_data_fifo_to_s02_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = s02_data_fifo_to_s02_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = s02_data_fifo_to_s02_couplers_AWSIZE;
  assign M_AXI_awvalid = s02_data_fifo_to_s02_couplers_AWVALID;
  assign M_AXI_bready = s02_data_fifo_to_s02_couplers_BREADY;
  assign M_AXI_wdata[63:0] = s02_data_fifo_to_s02_couplers_WDATA;
  assign M_AXI_wlast = s02_data_fifo_to_s02_couplers_WLAST;
  assign M_AXI_wstrb[7:0] = s02_data_fifo_to_s02_couplers_WSTRB;
  assign M_AXI_wvalid = s02_data_fifo_to_s02_couplers_WVALID;
  assign S_AXI_awready = s02_couplers_to_s02_data_fifo_AWREADY;
  assign S_AXI_bresp[1:0] = s02_couplers_to_s02_data_fifo_BRESP;
  assign S_AXI_bvalid = s02_couplers_to_s02_data_fifo_BVALID;
  assign S_AXI_wready = s02_couplers_to_s02_data_fifo_WREADY;
  assign s02_couplers_to_s02_data_fifo_AWADDR = S_AXI_awaddr[31:0];
  assign s02_couplers_to_s02_data_fifo_AWBURST = S_AXI_awburst[1:0];
  assign s02_couplers_to_s02_data_fifo_AWCACHE = S_AXI_awcache[3:0];
  assign s02_couplers_to_s02_data_fifo_AWLEN = S_AXI_awlen[7:0];
  assign s02_couplers_to_s02_data_fifo_AWPROT = S_AXI_awprot[2:0];
  assign s02_couplers_to_s02_data_fifo_AWSIZE = S_AXI_awsize[2:0];
  assign s02_couplers_to_s02_data_fifo_AWVALID = S_AXI_awvalid;
  assign s02_couplers_to_s02_data_fifo_BREADY = S_AXI_bready;
  assign s02_couplers_to_s02_data_fifo_WDATA = S_AXI_wdata[63:0];
  assign s02_couplers_to_s02_data_fifo_WLAST = S_AXI_wlast;
  assign s02_couplers_to_s02_data_fifo_WSTRB = S_AXI_wstrb[7:0];
  assign s02_couplers_to_s02_data_fifo_WVALID = S_AXI_wvalid;
  assign s02_data_fifo_to_s02_couplers_AWREADY = M_AXI_awready;
  assign s02_data_fifo_to_s02_couplers_BRESP = M_AXI_bresp[1:0];
  assign s02_data_fifo_to_s02_couplers_BVALID = M_AXI_bvalid;
  assign s02_data_fifo_to_s02_couplers_WREADY = M_AXI_wready;
  icyradio_s02_data_fifo_0 s02_data_fifo
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_awaddr(s02_data_fifo_to_s02_couplers_AWADDR),
        .m_axi_awburst(s02_data_fifo_to_s02_couplers_AWBURST),
        .m_axi_awcache(s02_data_fifo_to_s02_couplers_AWCACHE),
        .m_axi_awlen(s02_data_fifo_to_s02_couplers_AWLEN),
        .m_axi_awlock(s02_data_fifo_to_s02_couplers_AWLOCK),
        .m_axi_awprot(s02_data_fifo_to_s02_couplers_AWPROT),
        .m_axi_awqos(s02_data_fifo_to_s02_couplers_AWQOS),
        .m_axi_awready(s02_data_fifo_to_s02_couplers_AWREADY),
        .m_axi_awsize(s02_data_fifo_to_s02_couplers_AWSIZE),
        .m_axi_awvalid(s02_data_fifo_to_s02_couplers_AWVALID),
        .m_axi_bready(s02_data_fifo_to_s02_couplers_BREADY),
        .m_axi_bresp(s02_data_fifo_to_s02_couplers_BRESP),
        .m_axi_bvalid(s02_data_fifo_to_s02_couplers_BVALID),
        .m_axi_wdata(s02_data_fifo_to_s02_couplers_WDATA),
        .m_axi_wlast(s02_data_fifo_to_s02_couplers_WLAST),
        .m_axi_wready(s02_data_fifo_to_s02_couplers_WREADY),
        .m_axi_wstrb(s02_data_fifo_to_s02_couplers_WSTRB),
        .m_axi_wvalid(s02_data_fifo_to_s02_couplers_WVALID),
        .s_axi_awaddr(s02_couplers_to_s02_data_fifo_AWADDR),
        .s_axi_awburst(s02_couplers_to_s02_data_fifo_AWBURST),
        .s_axi_awcache(s02_couplers_to_s02_data_fifo_AWCACHE),
        .s_axi_awlen(s02_couplers_to_s02_data_fifo_AWLEN),
        .s_axi_awlock(1'b0),
        .s_axi_awprot(s02_couplers_to_s02_data_fifo_AWPROT),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(s02_couplers_to_s02_data_fifo_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s02_couplers_to_s02_data_fifo_AWSIZE),
        .s_axi_awvalid(s02_couplers_to_s02_data_fifo_AWVALID),
        .s_axi_bready(s02_couplers_to_s02_data_fifo_BREADY),
        .s_axi_bresp(s02_couplers_to_s02_data_fifo_BRESP),
        .s_axi_bvalid(s02_couplers_to_s02_data_fifo_BVALID),
        .s_axi_wdata(s02_couplers_to_s02_data_fifo_WDATA),
        .s_axi_wlast(s02_couplers_to_s02_data_fifo_WLAST),
        .s_axi_wready(s02_couplers_to_s02_data_fifo_WREADY),
        .s_axi_wstrb(s02_couplers_to_s02_data_fifo_WSTRB),
        .s_axi_wvalid(s02_couplers_to_s02_data_fifo_WVALID));
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
  output [63:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [7:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_awaddr;
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
  wire [31:0]s03_couplers_to_s03_data_fifo_AWADDR;
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
  wire [31:0]s03_data_fifo_to_s03_couplers_AWADDR;
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
  assign M_AXI_awaddr[31:0] = s03_data_fifo_to_s03_couplers_AWADDR;
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
  assign s03_couplers_to_s03_data_fifo_AWADDR = S_AXI_awaddr[31:0];
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
  input [63:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
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
  wire [31:0]s04_couplers_to_s04_data_fifo_ARADDR;
  wire [1:0]s04_couplers_to_s04_data_fifo_ARBURST;
  wire [3:0]s04_couplers_to_s04_data_fifo_ARCACHE;
  wire [7:0]s04_couplers_to_s04_data_fifo_ARLEN;
  wire [2:0]s04_couplers_to_s04_data_fifo_ARPROT;
  wire s04_couplers_to_s04_data_fifo_ARREADY;
  wire [2:0]s04_couplers_to_s04_data_fifo_ARSIZE;
  wire s04_couplers_to_s04_data_fifo_ARVALID;
  wire [63:0]s04_couplers_to_s04_data_fifo_RDATA;
  wire s04_couplers_to_s04_data_fifo_RLAST;
  wire s04_couplers_to_s04_data_fifo_RREADY;
  wire [1:0]s04_couplers_to_s04_data_fifo_RRESP;
  wire s04_couplers_to_s04_data_fifo_RVALID;
  wire [31:0]s04_data_fifo_to_s04_couplers_ARADDR;
  wire [1:0]s04_data_fifo_to_s04_couplers_ARBURST;
  wire [3:0]s04_data_fifo_to_s04_couplers_ARCACHE;
  wire [7:0]s04_data_fifo_to_s04_couplers_ARLEN;
  wire [0:0]s04_data_fifo_to_s04_couplers_ARLOCK;
  wire [2:0]s04_data_fifo_to_s04_couplers_ARPROT;
  wire [3:0]s04_data_fifo_to_s04_couplers_ARQOS;
  wire s04_data_fifo_to_s04_couplers_ARREADY;
  wire [2:0]s04_data_fifo_to_s04_couplers_ARSIZE;
  wire s04_data_fifo_to_s04_couplers_ARVALID;
  wire [63:0]s04_data_fifo_to_s04_couplers_RDATA;
  wire s04_data_fifo_to_s04_couplers_RLAST;
  wire s04_data_fifo_to_s04_couplers_RREADY;
  wire [1:0]s04_data_fifo_to_s04_couplers_RRESP;
  wire s04_data_fifo_to_s04_couplers_RVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = s04_data_fifo_to_s04_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s04_data_fifo_to_s04_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s04_data_fifo_to_s04_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = s04_data_fifo_to_s04_couplers_ARLEN;
  assign M_AXI_arlock[0] = s04_data_fifo_to_s04_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = s04_data_fifo_to_s04_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = s04_data_fifo_to_s04_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = s04_data_fifo_to_s04_couplers_ARSIZE;
  assign M_AXI_arvalid = s04_data_fifo_to_s04_couplers_ARVALID;
  assign M_AXI_rready = s04_data_fifo_to_s04_couplers_RREADY;
  assign S_AXI_arready = s04_couplers_to_s04_data_fifo_ARREADY;
  assign S_AXI_rdata[63:0] = s04_couplers_to_s04_data_fifo_RDATA;
  assign S_AXI_rlast = s04_couplers_to_s04_data_fifo_RLAST;
  assign S_AXI_rresp[1:0] = s04_couplers_to_s04_data_fifo_RRESP;
  assign S_AXI_rvalid = s04_couplers_to_s04_data_fifo_RVALID;
  assign s04_couplers_to_s04_data_fifo_ARADDR = S_AXI_araddr[31:0];
  assign s04_couplers_to_s04_data_fifo_ARBURST = S_AXI_arburst[1:0];
  assign s04_couplers_to_s04_data_fifo_ARCACHE = S_AXI_arcache[3:0];
  assign s04_couplers_to_s04_data_fifo_ARLEN = S_AXI_arlen[7:0];
  assign s04_couplers_to_s04_data_fifo_ARPROT = S_AXI_arprot[2:0];
  assign s04_couplers_to_s04_data_fifo_ARSIZE = S_AXI_arsize[2:0];
  assign s04_couplers_to_s04_data_fifo_ARVALID = S_AXI_arvalid;
  assign s04_couplers_to_s04_data_fifo_RREADY = S_AXI_rready;
  assign s04_data_fifo_to_s04_couplers_ARREADY = M_AXI_arready;
  assign s04_data_fifo_to_s04_couplers_RDATA = M_AXI_rdata[63:0];
  assign s04_data_fifo_to_s04_couplers_RLAST = M_AXI_rlast;
  assign s04_data_fifo_to_s04_couplers_RRESP = M_AXI_rresp[1:0];
  assign s04_data_fifo_to_s04_couplers_RVALID = M_AXI_rvalid;
  icyradio_s04_data_fifo_0 s04_data_fifo
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(s04_data_fifo_to_s04_couplers_ARADDR),
        .m_axi_arburst(s04_data_fifo_to_s04_couplers_ARBURST),
        .m_axi_arcache(s04_data_fifo_to_s04_couplers_ARCACHE),
        .m_axi_arlen(s04_data_fifo_to_s04_couplers_ARLEN),
        .m_axi_arlock(s04_data_fifo_to_s04_couplers_ARLOCK),
        .m_axi_arprot(s04_data_fifo_to_s04_couplers_ARPROT),
        .m_axi_arqos(s04_data_fifo_to_s04_couplers_ARQOS),
        .m_axi_arready(s04_data_fifo_to_s04_couplers_ARREADY),
        .m_axi_arsize(s04_data_fifo_to_s04_couplers_ARSIZE),
        .m_axi_arvalid(s04_data_fifo_to_s04_couplers_ARVALID),
        .m_axi_rdata(s04_data_fifo_to_s04_couplers_RDATA),
        .m_axi_rlast(s04_data_fifo_to_s04_couplers_RLAST),
        .m_axi_rready(s04_data_fifo_to_s04_couplers_RREADY),
        .m_axi_rresp(s04_data_fifo_to_s04_couplers_RRESP),
        .m_axi_rvalid(s04_data_fifo_to_s04_couplers_RVALID),
        .s_axi_araddr(s04_couplers_to_s04_data_fifo_ARADDR),
        .s_axi_arburst(s04_couplers_to_s04_data_fifo_ARBURST),
        .s_axi_arcache(s04_couplers_to_s04_data_fifo_ARCACHE),
        .s_axi_arlen(s04_couplers_to_s04_data_fifo_ARLEN),
        .s_axi_arlock(1'b0),
        .s_axi_arprot(s04_couplers_to_s04_data_fifo_ARPROT),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(s04_couplers_to_s04_data_fifo_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s04_couplers_to_s04_data_fifo_ARSIZE),
        .s_axi_arvalid(s04_couplers_to_s04_data_fifo_ARVALID),
        .s_axi_rdata(s04_couplers_to_s04_data_fifo_RDATA),
        .s_axi_rlast(s04_couplers_to_s04_data_fifo_RLAST),
        .s_axi_rready(s04_couplers_to_s04_data_fifo_RREADY),
        .s_axi_rresp(s04_couplers_to_s04_data_fifo_RRESP),
        .s_axi_rvalid(s04_couplers_to_s04_data_fifo_RVALID));
endmodule

module s05_couplers_imp_US7SW8
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
  output [63:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [7:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_awaddr;
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
  wire [31:0]s05_couplers_to_s05_data_fifo_AWADDR;
  wire [1:0]s05_couplers_to_s05_data_fifo_AWBURST;
  wire [3:0]s05_couplers_to_s05_data_fifo_AWCACHE;
  wire [7:0]s05_couplers_to_s05_data_fifo_AWLEN;
  wire [2:0]s05_couplers_to_s05_data_fifo_AWPROT;
  wire s05_couplers_to_s05_data_fifo_AWREADY;
  wire [2:0]s05_couplers_to_s05_data_fifo_AWSIZE;
  wire s05_couplers_to_s05_data_fifo_AWVALID;
  wire s05_couplers_to_s05_data_fifo_BREADY;
  wire [1:0]s05_couplers_to_s05_data_fifo_BRESP;
  wire s05_couplers_to_s05_data_fifo_BVALID;
  wire [63:0]s05_couplers_to_s05_data_fifo_WDATA;
  wire s05_couplers_to_s05_data_fifo_WLAST;
  wire s05_couplers_to_s05_data_fifo_WREADY;
  wire [7:0]s05_couplers_to_s05_data_fifo_WSTRB;
  wire s05_couplers_to_s05_data_fifo_WVALID;
  wire [31:0]s05_data_fifo_to_s05_couplers_AWADDR;
  wire [1:0]s05_data_fifo_to_s05_couplers_AWBURST;
  wire [3:0]s05_data_fifo_to_s05_couplers_AWCACHE;
  wire [7:0]s05_data_fifo_to_s05_couplers_AWLEN;
  wire [0:0]s05_data_fifo_to_s05_couplers_AWLOCK;
  wire [2:0]s05_data_fifo_to_s05_couplers_AWPROT;
  wire [3:0]s05_data_fifo_to_s05_couplers_AWQOS;
  wire s05_data_fifo_to_s05_couplers_AWREADY;
  wire [2:0]s05_data_fifo_to_s05_couplers_AWSIZE;
  wire s05_data_fifo_to_s05_couplers_AWVALID;
  wire s05_data_fifo_to_s05_couplers_BREADY;
  wire [1:0]s05_data_fifo_to_s05_couplers_BRESP;
  wire s05_data_fifo_to_s05_couplers_BVALID;
  wire [63:0]s05_data_fifo_to_s05_couplers_WDATA;
  wire s05_data_fifo_to_s05_couplers_WLAST;
  wire s05_data_fifo_to_s05_couplers_WREADY;
  wire [7:0]s05_data_fifo_to_s05_couplers_WSTRB;
  wire s05_data_fifo_to_s05_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_awaddr[31:0] = s05_data_fifo_to_s05_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = s05_data_fifo_to_s05_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = s05_data_fifo_to_s05_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = s05_data_fifo_to_s05_couplers_AWLEN;
  assign M_AXI_awlock[0] = s05_data_fifo_to_s05_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = s05_data_fifo_to_s05_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = s05_data_fifo_to_s05_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = s05_data_fifo_to_s05_couplers_AWSIZE;
  assign M_AXI_awvalid = s05_data_fifo_to_s05_couplers_AWVALID;
  assign M_AXI_bready = s05_data_fifo_to_s05_couplers_BREADY;
  assign M_AXI_wdata[63:0] = s05_data_fifo_to_s05_couplers_WDATA;
  assign M_AXI_wlast = s05_data_fifo_to_s05_couplers_WLAST;
  assign M_AXI_wstrb[7:0] = s05_data_fifo_to_s05_couplers_WSTRB;
  assign M_AXI_wvalid = s05_data_fifo_to_s05_couplers_WVALID;
  assign S_AXI_awready = s05_couplers_to_s05_data_fifo_AWREADY;
  assign S_AXI_bresp[1:0] = s05_couplers_to_s05_data_fifo_BRESP;
  assign S_AXI_bvalid = s05_couplers_to_s05_data_fifo_BVALID;
  assign S_AXI_wready = s05_couplers_to_s05_data_fifo_WREADY;
  assign s05_couplers_to_s05_data_fifo_AWADDR = S_AXI_awaddr[31:0];
  assign s05_couplers_to_s05_data_fifo_AWBURST = S_AXI_awburst[1:0];
  assign s05_couplers_to_s05_data_fifo_AWCACHE = S_AXI_awcache[3:0];
  assign s05_couplers_to_s05_data_fifo_AWLEN = S_AXI_awlen[7:0];
  assign s05_couplers_to_s05_data_fifo_AWPROT = S_AXI_awprot[2:0];
  assign s05_couplers_to_s05_data_fifo_AWSIZE = S_AXI_awsize[2:0];
  assign s05_couplers_to_s05_data_fifo_AWVALID = S_AXI_awvalid;
  assign s05_couplers_to_s05_data_fifo_BREADY = S_AXI_bready;
  assign s05_couplers_to_s05_data_fifo_WDATA = S_AXI_wdata[63:0];
  assign s05_couplers_to_s05_data_fifo_WLAST = S_AXI_wlast;
  assign s05_couplers_to_s05_data_fifo_WSTRB = S_AXI_wstrb[7:0];
  assign s05_couplers_to_s05_data_fifo_WVALID = S_AXI_wvalid;
  assign s05_data_fifo_to_s05_couplers_AWREADY = M_AXI_awready;
  assign s05_data_fifo_to_s05_couplers_BRESP = M_AXI_bresp[1:0];
  assign s05_data_fifo_to_s05_couplers_BVALID = M_AXI_bvalid;
  assign s05_data_fifo_to_s05_couplers_WREADY = M_AXI_wready;
  icyradio_s05_data_fifo_0 s05_data_fifo
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_awaddr(s05_data_fifo_to_s05_couplers_AWADDR),
        .m_axi_awburst(s05_data_fifo_to_s05_couplers_AWBURST),
        .m_axi_awcache(s05_data_fifo_to_s05_couplers_AWCACHE),
        .m_axi_awlen(s05_data_fifo_to_s05_couplers_AWLEN),
        .m_axi_awlock(s05_data_fifo_to_s05_couplers_AWLOCK),
        .m_axi_awprot(s05_data_fifo_to_s05_couplers_AWPROT),
        .m_axi_awqos(s05_data_fifo_to_s05_couplers_AWQOS),
        .m_axi_awready(s05_data_fifo_to_s05_couplers_AWREADY),
        .m_axi_awsize(s05_data_fifo_to_s05_couplers_AWSIZE),
        .m_axi_awvalid(s05_data_fifo_to_s05_couplers_AWVALID),
        .m_axi_bready(s05_data_fifo_to_s05_couplers_BREADY),
        .m_axi_bresp(s05_data_fifo_to_s05_couplers_BRESP),
        .m_axi_bvalid(s05_data_fifo_to_s05_couplers_BVALID),
        .m_axi_wdata(s05_data_fifo_to_s05_couplers_WDATA),
        .m_axi_wlast(s05_data_fifo_to_s05_couplers_WLAST),
        .m_axi_wready(s05_data_fifo_to_s05_couplers_WREADY),
        .m_axi_wstrb(s05_data_fifo_to_s05_couplers_WSTRB),
        .m_axi_wvalid(s05_data_fifo_to_s05_couplers_WVALID),
        .s_axi_awaddr(s05_couplers_to_s05_data_fifo_AWADDR),
        .s_axi_awburst(s05_couplers_to_s05_data_fifo_AWBURST),
        .s_axi_awcache(s05_couplers_to_s05_data_fifo_AWCACHE),
        .s_axi_awlen(s05_couplers_to_s05_data_fifo_AWLEN),
        .s_axi_awlock(1'b0),
        .s_axi_awprot(s05_couplers_to_s05_data_fifo_AWPROT),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(s05_couplers_to_s05_data_fifo_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s05_couplers_to_s05_data_fifo_AWSIZE),
        .s_axi_awvalid(s05_couplers_to_s05_data_fifo_AWVALID),
        .s_axi_bready(s05_couplers_to_s05_data_fifo_BREADY),
        .s_axi_bresp(s05_couplers_to_s05_data_fifo_BRESP),
        .s_axi_bvalid(s05_couplers_to_s05_data_fifo_BVALID),
        .s_axi_wdata(s05_couplers_to_s05_data_fifo_WDATA),
        .s_axi_wlast(s05_couplers_to_s05_data_fifo_WLAST),
        .s_axi_wready(s05_couplers_to_s05_data_fifo_WREADY),
        .s_axi_wstrb(s05_couplers_to_s05_data_fifo_WSTRB),
        .s_axi_wvalid(s05_couplers_to_s05_data_fifo_WVALID));
endmodule

module s06_couplers_imp_10R2E7E
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
  wire [31:0]auto_us_df_to_s06_couplers_ARADDR;
  wire [1:0]auto_us_df_to_s06_couplers_ARBURST;
  wire [3:0]auto_us_df_to_s06_couplers_ARCACHE;
  wire [7:0]auto_us_df_to_s06_couplers_ARLEN;
  wire [0:0]auto_us_df_to_s06_couplers_ARLOCK;
  wire [2:0]auto_us_df_to_s06_couplers_ARPROT;
  wire [3:0]auto_us_df_to_s06_couplers_ARQOS;
  wire auto_us_df_to_s06_couplers_ARREADY;
  wire [2:0]auto_us_df_to_s06_couplers_ARSIZE;
  wire auto_us_df_to_s06_couplers_ARVALID;
  wire [31:0]auto_us_df_to_s06_couplers_AWADDR;
  wire [1:0]auto_us_df_to_s06_couplers_AWBURST;
  wire [3:0]auto_us_df_to_s06_couplers_AWCACHE;
  wire [7:0]auto_us_df_to_s06_couplers_AWLEN;
  wire [0:0]auto_us_df_to_s06_couplers_AWLOCK;
  wire [2:0]auto_us_df_to_s06_couplers_AWPROT;
  wire [3:0]auto_us_df_to_s06_couplers_AWQOS;
  wire auto_us_df_to_s06_couplers_AWREADY;
  wire [2:0]auto_us_df_to_s06_couplers_AWSIZE;
  wire auto_us_df_to_s06_couplers_AWVALID;
  wire auto_us_df_to_s06_couplers_BREADY;
  wire [1:0]auto_us_df_to_s06_couplers_BRESP;
  wire auto_us_df_to_s06_couplers_BVALID;
  wire [63:0]auto_us_df_to_s06_couplers_RDATA;
  wire auto_us_df_to_s06_couplers_RLAST;
  wire auto_us_df_to_s06_couplers_RREADY;
  wire [1:0]auto_us_df_to_s06_couplers_RRESP;
  wire auto_us_df_to_s06_couplers_RVALID;
  wire [63:0]auto_us_df_to_s06_couplers_WDATA;
  wire auto_us_df_to_s06_couplers_WLAST;
  wire auto_us_df_to_s06_couplers_WREADY;
  wire [7:0]auto_us_df_to_s06_couplers_WSTRB;
  wire auto_us_df_to_s06_couplers_WVALID;
  wire [31:0]s06_couplers_to_auto_pc_ARADDR;
  wire [2:0]s06_couplers_to_auto_pc_ARPROT;
  wire s06_couplers_to_auto_pc_ARREADY;
  wire s06_couplers_to_auto_pc_ARVALID;
  wire [31:0]s06_couplers_to_auto_pc_AWADDR;
  wire [2:0]s06_couplers_to_auto_pc_AWPROT;
  wire s06_couplers_to_auto_pc_AWREADY;
  wire s06_couplers_to_auto_pc_AWVALID;
  wire s06_couplers_to_auto_pc_BREADY;
  wire s06_couplers_to_auto_pc_BVALID;
  wire [31:0]s06_couplers_to_auto_pc_RDATA;
  wire s06_couplers_to_auto_pc_RREADY;
  wire s06_couplers_to_auto_pc_RVALID;
  wire [31:0]s06_couplers_to_auto_pc_WDATA;
  wire s06_couplers_to_auto_pc_WREADY;
  wire [3:0]s06_couplers_to_auto_pc_WSTRB;
  wire s06_couplers_to_auto_pc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = auto_us_df_to_s06_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_us_df_to_s06_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_us_df_to_s06_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_us_df_to_s06_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_us_df_to_s06_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_us_df_to_s06_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_us_df_to_s06_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_us_df_to_s06_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_us_df_to_s06_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_us_df_to_s06_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_us_df_to_s06_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_us_df_to_s06_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_us_df_to_s06_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_us_df_to_s06_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_us_df_to_s06_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_us_df_to_s06_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_us_df_to_s06_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_us_df_to_s06_couplers_AWVALID;
  assign M_AXI_bready = auto_us_df_to_s06_couplers_BREADY;
  assign M_AXI_rready = auto_us_df_to_s06_couplers_RREADY;
  assign M_AXI_wdata[63:0] = auto_us_df_to_s06_couplers_WDATA;
  assign M_AXI_wlast = auto_us_df_to_s06_couplers_WLAST;
  assign M_AXI_wstrb[7:0] = auto_us_df_to_s06_couplers_WSTRB;
  assign M_AXI_wvalid = auto_us_df_to_s06_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s06_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = s06_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bvalid = s06_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = s06_couplers_to_auto_pc_RDATA;
  assign S_AXI_rvalid = s06_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = s06_couplers_to_auto_pc_WREADY;
  assign auto_us_df_to_s06_couplers_ARREADY = M_AXI_arready;
  assign auto_us_df_to_s06_couplers_AWREADY = M_AXI_awready;
  assign auto_us_df_to_s06_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_us_df_to_s06_couplers_BVALID = M_AXI_bvalid;
  assign auto_us_df_to_s06_couplers_RDATA = M_AXI_rdata[63:0];
  assign auto_us_df_to_s06_couplers_RLAST = M_AXI_rlast;
  assign auto_us_df_to_s06_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_us_df_to_s06_couplers_RVALID = M_AXI_rvalid;
  assign auto_us_df_to_s06_couplers_WREADY = M_AXI_wready;
  assign s06_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign s06_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign s06_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign s06_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign s06_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign s06_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign s06_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign s06_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign s06_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign s06_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign s06_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
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
        .s_axi_araddr(s06_couplers_to_auto_pc_ARADDR),
        .s_axi_arprot(s06_couplers_to_auto_pc_ARPROT),
        .s_axi_arready(s06_couplers_to_auto_pc_ARREADY),
        .s_axi_arvalid(s06_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(s06_couplers_to_auto_pc_AWADDR),
        .s_axi_awprot(s06_couplers_to_auto_pc_AWPROT),
        .s_axi_awready(s06_couplers_to_auto_pc_AWREADY),
        .s_axi_awvalid(s06_couplers_to_auto_pc_AWVALID),
        .s_axi_bready(s06_couplers_to_auto_pc_BREADY),
        .s_axi_bvalid(s06_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(s06_couplers_to_auto_pc_RDATA),
        .s_axi_rready(s06_couplers_to_auto_pc_RREADY),
        .s_axi_rvalid(s06_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(s06_couplers_to_auto_pc_WDATA),
        .s_axi_wready(s06_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(s06_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(s06_couplers_to_auto_pc_WVALID));
  icyradio_auto_us_df_0 auto_us_df
       (.m_axi_araddr(auto_us_df_to_s06_couplers_ARADDR),
        .m_axi_arburst(auto_us_df_to_s06_couplers_ARBURST),
        .m_axi_arcache(auto_us_df_to_s06_couplers_ARCACHE),
        .m_axi_arlen(auto_us_df_to_s06_couplers_ARLEN),
        .m_axi_arlock(auto_us_df_to_s06_couplers_ARLOCK),
        .m_axi_arprot(auto_us_df_to_s06_couplers_ARPROT),
        .m_axi_arqos(auto_us_df_to_s06_couplers_ARQOS),
        .m_axi_arready(auto_us_df_to_s06_couplers_ARREADY),
        .m_axi_arsize(auto_us_df_to_s06_couplers_ARSIZE),
        .m_axi_arvalid(auto_us_df_to_s06_couplers_ARVALID),
        .m_axi_awaddr(auto_us_df_to_s06_couplers_AWADDR),
        .m_axi_awburst(auto_us_df_to_s06_couplers_AWBURST),
        .m_axi_awcache(auto_us_df_to_s06_couplers_AWCACHE),
        .m_axi_awlen(auto_us_df_to_s06_couplers_AWLEN),
        .m_axi_awlock(auto_us_df_to_s06_couplers_AWLOCK),
        .m_axi_awprot(auto_us_df_to_s06_couplers_AWPROT),
        .m_axi_awqos(auto_us_df_to_s06_couplers_AWQOS),
        .m_axi_awready(auto_us_df_to_s06_couplers_AWREADY),
        .m_axi_awsize(auto_us_df_to_s06_couplers_AWSIZE),
        .m_axi_awvalid(auto_us_df_to_s06_couplers_AWVALID),
        .m_axi_bready(auto_us_df_to_s06_couplers_BREADY),
        .m_axi_bresp(auto_us_df_to_s06_couplers_BRESP),
        .m_axi_bvalid(auto_us_df_to_s06_couplers_BVALID),
        .m_axi_rdata(auto_us_df_to_s06_couplers_RDATA),
        .m_axi_rlast(auto_us_df_to_s06_couplers_RLAST),
        .m_axi_rready(auto_us_df_to_s06_couplers_RREADY),
        .m_axi_rresp(auto_us_df_to_s06_couplers_RRESP),
        .m_axi_rvalid(auto_us_df_to_s06_couplers_RVALID),
        .m_axi_wdata(auto_us_df_to_s06_couplers_WDATA),
        .m_axi_wlast(auto_us_df_to_s06_couplers_WLAST),
        .m_axi_wready(auto_us_df_to_s06_couplers_WREADY),
        .m_axi_wstrb(auto_us_df_to_s06_couplers_WSTRB),
        .m_axi_wvalid(auto_us_df_to_s06_couplers_WVALID),
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
