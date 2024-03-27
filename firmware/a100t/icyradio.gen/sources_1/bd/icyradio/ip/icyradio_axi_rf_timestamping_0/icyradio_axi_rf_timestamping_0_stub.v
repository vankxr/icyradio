// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Wed Mar 27 12:09:38 2024
// Host        : node4-dev running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/joao/icyradio/firmware/a100t/icyradio.gen/sources_1/bd/icyradio/ip/icyradio_axi_rf_timestamping_0/icyradio_axi_rf_timestamping_0_stub.v
// Design      : icyradio_axi_rf_timestamping_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axi_rf_timestamping,Vivado 2023.2" *)
module icyradio_axi_rf_timestamping_0(aclk, aresetn, s_axi_awaddr, s_axi_awprot, 
  s_axi_awvalid, s_axi_awready, s_axi_wdata, s_axi_wstrb, s_axi_wvalid, s_axi_wready, 
  s_axi_bresp, s_axi_bvalid, s_axi_bready, s_axi_araddr, s_axi_arprot, s_axi_arvalid, 
  s_axi_arready, s_axi_rdata, s_axi_rresp, s_axi_rvalid, s_axi_rready, irq, ts_clk, ts_resetn, 
  ts_clk_tx_en, ts_clk_rx_en, tx_dma_data_ready, rx_dma_xfer_req, tx_data_ready, 
  rx_data_ready, tx_fifo_underflow, rx_fifo_overflow, tx_enable, rx_enable)
/* synthesis syn_black_box black_box_pad_pin="aresetn,s_axi_awaddr[6:0],s_axi_awprot[2:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wvalid,s_axi_wready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_bready,s_axi_araddr[6:0],s_axi_arprot[2:0],s_axi_arvalid,s_axi_arready,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rvalid,s_axi_rready,irq,ts_resetn,ts_clk_tx_en,ts_clk_rx_en,tx_dma_data_ready[1:0],rx_dma_xfer_req[1:0],tx_data_ready[1:0],rx_data_ready[1:0],tx_fifo_underflow[1:0],rx_fifo_overflow[1:0],tx_enable[1:0],rx_enable[1:0]" */
/* synthesis syn_force_seq_prim="aclk" */
/* synthesis syn_force_seq_prim="ts_clk" */;
  input aclk /* synthesis syn_isclock = 1 */;
  input aresetn;
  input [6:0]s_axi_awaddr;
  input [2:0]s_axi_awprot;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [6:0]s_axi_araddr;
  input [2:0]s_axi_arprot;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  output irq;
  input ts_clk /* synthesis syn_isclock = 1 */;
  input ts_resetn;
  output ts_clk_tx_en;
  output ts_clk_rx_en;
  input [1:0]tx_dma_data_ready;
  input [1:0]rx_dma_xfer_req;
  input [1:0]tx_data_ready;
  input [1:0]rx_data_ready;
  input [1:0]tx_fifo_underflow;
  input [1:0]rx_fifo_overflow;
  output [1:0]tx_enable;
  output [1:0]rx_enable;
endmodule
