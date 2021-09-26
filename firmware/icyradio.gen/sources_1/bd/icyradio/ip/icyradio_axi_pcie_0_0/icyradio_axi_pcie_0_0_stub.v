// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Sat Sep 25 14:35:38 2021
// Host        : jsilva-kubuntu running 64-bit Ubuntu 20.04.3 LTS
// Command     : write_verilog -force -mode synth_stub {/media/joao/SSD
//               Data/Development/icyradio/firmware/icyradio/icyradio.gen/sources_1/bd/icyradio/ip/icyradio_axi_pcie_0_0/icyradio_axi_pcie_0_0_stub.v}
// Design      : icyradio_axi_pcie_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a75tfgg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axi_pcie,Vivado 2020.2" *)
module icyradio_axi_pcie_0_0(axi_aresetn, user_link_up, axi_aclk_out, 
  axi_ctl_aclk_out, mmcm_lock, interrupt_out, INTX_MSI_Request, INTX_MSI_Grant, MSI_enable, 
  MSI_Vector_Num, MSI_Vector_Width, s_axi_awid, s_axi_awaddr, s_axi_awregion, s_axi_awlen, 
  s_axi_awsize, s_axi_awburst, s_axi_awvalid, s_axi_awready, s_axi_wdata, s_axi_wstrb, 
  s_axi_wlast, s_axi_wvalid, s_axi_wready, s_axi_bid, s_axi_bresp, s_axi_bvalid, s_axi_bready, 
  s_axi_arid, s_axi_araddr, s_axi_arregion, s_axi_arlen, s_axi_arsize, s_axi_arburst, 
  s_axi_arvalid, s_axi_arready, s_axi_rid, s_axi_rdata, s_axi_rresp, s_axi_rlast, s_axi_rvalid, 
  s_axi_rready, m_axi_awaddr, m_axi_awlen, m_axi_awsize, m_axi_awburst, m_axi_awprot, 
  m_axi_awvalid, m_axi_awready, m_axi_awlock, m_axi_awcache, m_axi_wdata, m_axi_wstrb, 
  m_axi_wlast, m_axi_wvalid, m_axi_wready, m_axi_bresp, m_axi_bvalid, m_axi_bready, 
  m_axi_araddr, m_axi_arlen, m_axi_arsize, m_axi_arburst, m_axi_arprot, m_axi_arvalid, 
  m_axi_arready, m_axi_arlock, m_axi_arcache, m_axi_rdata, m_axi_rresp, m_axi_rlast, 
  m_axi_rvalid, m_axi_rready, pci_exp_txp, pci_exp_txn, pci_exp_rxp, pci_exp_rxn, REFCLK, 
  s_axi_ctl_awaddr, s_axi_ctl_awvalid, s_axi_ctl_awready, s_axi_ctl_wdata, s_axi_ctl_wstrb, 
  s_axi_ctl_wvalid, s_axi_ctl_wready, s_axi_ctl_bresp, s_axi_ctl_bvalid, s_axi_ctl_bready, 
  s_axi_ctl_araddr, s_axi_ctl_arvalid, s_axi_ctl_arready, s_axi_ctl_rdata, s_axi_ctl_rresp, 
  s_axi_ctl_rvalid, s_axi_ctl_rready)
/* synthesis syn_black_box black_box_pad_pin="axi_aresetn,user_link_up,axi_aclk_out,axi_ctl_aclk_out,mmcm_lock,interrupt_out,INTX_MSI_Request,INTX_MSI_Grant,MSI_enable,MSI_Vector_Num[4:0],MSI_Vector_Width[2:0],s_axi_awid[1:0],s_axi_awaddr[31:0],s_axi_awregion[3:0],s_axi_awlen[7:0],s_axi_awsize[2:0],s_axi_awburst[1:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[63:0],s_axi_wstrb[7:0],s_axi_wlast,s_axi_wvalid,s_axi_wready,s_axi_bid[1:0],s_axi_bresp[1:0],s_axi_bvalid,s_axi_bready,s_axi_arid[1:0],s_axi_araddr[31:0],s_axi_arregion[3:0],s_axi_arlen[7:0],s_axi_arsize[2:0],s_axi_arburst[1:0],s_axi_arvalid,s_axi_arready,s_axi_rid[1:0],s_axi_rdata[63:0],s_axi_rresp[1:0],s_axi_rlast,s_axi_rvalid,s_axi_rready,m_axi_awaddr[31:0],m_axi_awlen[7:0],m_axi_awsize[2:0],m_axi_awburst[1:0],m_axi_awprot[2:0],m_axi_awvalid,m_axi_awready,m_axi_awlock,m_axi_awcache[3:0],m_axi_wdata[63:0],m_axi_wstrb[7:0],m_axi_wlast,m_axi_wvalid,m_axi_wready,m_axi_bresp[1:0],m_axi_bvalid,m_axi_bready,m_axi_araddr[31:0],m_axi_arlen[7:0],m_axi_arsize[2:0],m_axi_arburst[1:0],m_axi_arprot[2:0],m_axi_arvalid,m_axi_arready,m_axi_arlock,m_axi_arcache[3:0],m_axi_rdata[63:0],m_axi_rresp[1:0],m_axi_rlast,m_axi_rvalid,m_axi_rready,pci_exp_txp[1:0],pci_exp_txn[1:0],pci_exp_rxp[1:0],pci_exp_rxn[1:0],REFCLK,s_axi_ctl_awaddr[31:0],s_axi_ctl_awvalid,s_axi_ctl_awready,s_axi_ctl_wdata[31:0],s_axi_ctl_wstrb[3:0],s_axi_ctl_wvalid,s_axi_ctl_wready,s_axi_ctl_bresp[1:0],s_axi_ctl_bvalid,s_axi_ctl_bready,s_axi_ctl_araddr[31:0],s_axi_ctl_arvalid,s_axi_ctl_arready,s_axi_ctl_rdata[31:0],s_axi_ctl_rresp[1:0],s_axi_ctl_rvalid,s_axi_ctl_rready" */;
  input axi_aresetn;
  output user_link_up;
  output axi_aclk_out;
  output axi_ctl_aclk_out;
  output mmcm_lock;
  output interrupt_out;
  input INTX_MSI_Request;
  output INTX_MSI_Grant;
  output MSI_enable;
  input [4:0]MSI_Vector_Num;
  output [2:0]MSI_Vector_Width;
  input [1:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [3:0]s_axi_awregion;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  output s_axi_awready;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [1:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [3:0]s_axi_arregion;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arvalid;
  output s_axi_arready;
  output [1:0]s_axi_rid;
  output [63:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [2:0]m_axi_awprot;
  output m_axi_awvalid;
  input m_axi_awready;
  output m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [2:0]m_axi_arprot;
  output m_axi_arvalid;
  input m_axi_arready;
  output m_axi_arlock;
  output [3:0]m_axi_arcache;
  input [63:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;
  output [1:0]pci_exp_txp;
  output [1:0]pci_exp_txn;
  input [1:0]pci_exp_rxp;
  input [1:0]pci_exp_rxn;
  input REFCLK;
  input [31:0]s_axi_ctl_awaddr;
  input s_axi_ctl_awvalid;
  output s_axi_ctl_awready;
  input [31:0]s_axi_ctl_wdata;
  input [3:0]s_axi_ctl_wstrb;
  input s_axi_ctl_wvalid;
  output s_axi_ctl_wready;
  output [1:0]s_axi_ctl_bresp;
  output s_axi_ctl_bvalid;
  input s_axi_ctl_bready;
  input [31:0]s_axi_ctl_araddr;
  input s_axi_ctl_arvalid;
  output s_axi_ctl_arready;
  output [31:0]s_axi_ctl_rdata;
  output [1:0]s_axi_ctl_rresp;
  output s_axi_ctl_rvalid;
  input s_axi_ctl_rready;
endmodule
