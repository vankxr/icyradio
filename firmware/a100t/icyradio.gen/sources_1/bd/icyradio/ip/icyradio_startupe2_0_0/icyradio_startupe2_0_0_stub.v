// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Wed Mar 27 12:09:42 2024
// Host        : node4-dev running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/joao/icyradio/firmware/a100t/icyradio.gen/sources_1/bd/icyradio/ip/icyradio_startupe2_0_0/icyradio_startupe2_0_0_stub.v
// Design      : icyradio_startupe2_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "startupe2,Vivado 2023.2" *)
module icyradio_startupe2_0_0(cfg_clk, cfg_mclk, eos, preq, pack, usrcclk, 
  usrcclk_oen, usrdone, usrdone_oen)
/* synthesis syn_black_box black_box_pad_pin="cfg_clk,cfg_mclk,eos,preq,pack,usrcclk,usrcclk_oen,usrdone,usrdone_oen" */;
  output cfg_clk;
  output cfg_mclk;
  output eos;
  output preq;
  input pack;
  input usrcclk;
  input usrcclk_oen;
  input usrdone;
  input usrdone_oen;
endmodule
