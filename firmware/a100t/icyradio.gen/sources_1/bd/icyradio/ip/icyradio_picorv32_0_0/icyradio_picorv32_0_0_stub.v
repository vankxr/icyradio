// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Wed Mar 27 12:09:13 2024
// Host        : node4-dev running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/joao/icyradio/firmware/a100t/icyradio.gen/sources_1/bd/icyradio/ip/icyradio_picorv32_0_0/icyradio_picorv32_0_0_stub.v
// Design      : icyradio_picorv32_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "picorv32_axi,Vivado 2023.2" *)
module icyradio_picorv32_0_0(clk, resetn, trap, mem_axi_awvalid, 
  mem_axi_awready, mem_axi_awaddr, mem_axi_awprot, mem_axi_wvalid, mem_axi_wready, 
  mem_axi_wdata, mem_axi_wstrb, mem_axi_bvalid, mem_axi_bready, mem_axi_arvalid, 
  mem_axi_arready, mem_axi_araddr, mem_axi_arprot, mem_axi_rvalid, mem_axi_rready, 
  mem_axi_rdata, irq, eoi)
/* synthesis syn_black_box black_box_pad_pin="resetn,trap,mem_axi_awvalid,mem_axi_awready,mem_axi_awaddr[31:0],mem_axi_awprot[2:0],mem_axi_wvalid,mem_axi_wready,mem_axi_wdata[31:0],mem_axi_wstrb[3:0],mem_axi_bvalid,mem_axi_bready,mem_axi_arvalid,mem_axi_arready,mem_axi_araddr[31:0],mem_axi_arprot[2:0],mem_axi_rvalid,mem_axi_rready,mem_axi_rdata[31:0],irq[31:0],eoi[31:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input resetn;
  output trap;
  output mem_axi_awvalid;
  input mem_axi_awready;
  output [31:0]mem_axi_awaddr;
  output [2:0]mem_axi_awprot;
  output mem_axi_wvalid;
  input mem_axi_wready;
  output [31:0]mem_axi_wdata;
  output [3:0]mem_axi_wstrb;
  input mem_axi_bvalid;
  output mem_axi_bready;
  output mem_axi_arvalid;
  input mem_axi_arready;
  output [31:0]mem_axi_araddr;
  output [2:0]mem_axi_arprot;
  input mem_axi_rvalid;
  output mem_axi_rready;
  input [31:0]mem_axi_rdata;
  input [31:0]irq;
  output [31:0]eoi;
endmodule
