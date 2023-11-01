// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Fri Oct 27 00:55:34 2023
// Host        : node4-dev running 64-bit Ubuntu 22.04.3 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/joao/icyradio/firmware/icyradio.gen/sources_1/bd/icyradio/ip/icyradio_rst_pulse_gen_0_1/icyradio_rst_pulse_gen_0_1_stub.v
// Design      : icyradio_rst_pulse_gen_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "rst_pulse_gen,Vivado 2021.1" *)
module icyradio_rst_pulse_gen_0_1(clk, trigger, rst_out)
/* synthesis syn_black_box black_box_pad_pin="clk,trigger,rst_out" */;
  input clk;
  input trigger;
  output rst_out;
endmodule
