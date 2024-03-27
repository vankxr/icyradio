// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Wed Mar 27 12:07:04 2024
// Host        : node4-dev running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/joao/icyradio/firmware/a100t/icyradio.gen/sources_1/bd/icyradio/ip/icyradio_ad9361_adc_packer_rx1_0/icyradio_ad9361_adc_packer_rx1_0_stub.v
// Design      : icyradio_ad9361_adc_packer_rx1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "util_cpack2,Vivado 2023.2" *)
module icyradio_ad9361_adc_packer_rx1_0(clk, reset, enable_0, enable_1, fifo_wr_en, 
  fifo_wr_overflow, fifo_wr_data_0, fifo_wr_data_1, packed_fifo_wr_en, 
  packed_fifo_wr_overflow, packed_fifo_wr_sync, packed_fifo_wr_data)
/* synthesis syn_black_box black_box_pad_pin="reset,enable_0,enable_1,fifo_wr_en,fifo_wr_overflow,fifo_wr_data_0[15:0],fifo_wr_data_1[15:0],packed_fifo_wr_en,packed_fifo_wr_overflow,packed_fifo_wr_sync,packed_fifo_wr_data[31:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input reset;
  input enable_0;
  input enable_1;
  input fifo_wr_en;
  output fifo_wr_overflow;
  input [15:0]fifo_wr_data_0;
  input [15:0]fifo_wr_data_1;
  output packed_fifo_wr_en;
  input packed_fifo_wr_overflow;
  output packed_fifo_wr_sync;
  output [31:0]packed_fifo_wr_data;
endmodule
