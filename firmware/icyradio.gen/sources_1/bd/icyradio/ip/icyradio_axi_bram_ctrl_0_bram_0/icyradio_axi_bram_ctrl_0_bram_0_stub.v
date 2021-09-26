// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Sat Sep 25 13:08:13 2021
// Host        : jsilva-kubuntu running 64-bit Ubuntu 20.04.3 LTS
// Command     : write_verilog -force -mode synth_stub {/media/joao/SSD
//               Data/Development/icyradio/firmware/icyradio/icyradio.gen/sources_1/bd/icyradio/ip/icyradio_axi_bram_ctrl_0_bram_0/icyradio_axi_bram_ctrl_0_bram_0_stub.v}
// Design      : icyradio_axi_bram_ctrl_0_bram_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a75tfgg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *)
module icyradio_axi_bram_ctrl_0_bram_0(clka, rsta, ena, wea, addra, dina, douta, rsta_busy)
/* synthesis syn_black_box black_box_pad_pin="clka,rsta,ena,wea[3:0],addra[31:0],dina[31:0],douta[31:0],rsta_busy" */;
  input clka;
  input rsta;
  input ena;
  input [3:0]wea;
  input [31:0]addra;
  input [31:0]dina;
  output [31:0]douta;
  output rsta_busy;
endmodule
