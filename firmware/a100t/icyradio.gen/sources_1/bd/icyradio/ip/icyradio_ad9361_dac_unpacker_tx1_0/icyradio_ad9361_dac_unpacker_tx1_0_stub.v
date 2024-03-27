// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Wed Mar 27 12:07:04 2024
// Host        : node4-dev running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top icyradio_ad9361_dac_unpacker_tx1_0 -prefix
//               icyradio_ad9361_dac_unpacker_tx1_0_ icyradio_ad9361_dac_unpacker_tx0_0_stub.v
// Design      : icyradio_ad9361_dac_unpacker_tx0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "util_upack2,Vivado 2023.2" *)
module icyradio_ad9361_dac_unpacker_tx1_0(clk, reset, enable_0, enable_1, fifo_rd_en, 
  fifo_rd_valid, fifo_rd_underflow, fifo_rd_data_0, fifo_rd_data_1, s_axis_valid, 
  s_axis_ready, s_axis_data)
/* synthesis syn_black_box black_box_pad_pin="reset,enable_0,enable_1,fifo_rd_en,fifo_rd_valid,fifo_rd_underflow,fifo_rd_data_0[15:0],fifo_rd_data_1[15:0],s_axis_valid,s_axis_ready,s_axis_data[31:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input reset;
  input enable_0;
  input enable_1;
  input fifo_rd_en;
  output fifo_rd_valid;
  output fifo_rd_underflow;
  output [15:0]fifo_rd_data_0;
  output [15:0]fifo_rd_data_1;
  input s_axis_valid;
  output s_axis_ready;
  input [31:0]s_axis_data;
endmodule
