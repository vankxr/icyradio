// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Sat Oct  1 21:37:48 2022
// Host        : jsilva-kde running 64-bit KDE neon User - 5.25
// Command     : write_verilog -force -mode synth_stub
//               /media/joao/SSD/Development/icyradio/firmware/icyradio.gen/sources_1/bd/icyradio/ip/icyradio_util_ds_buf_0_0/icyradio_util_ds_buf_0_0_stub.v
// Design      : icyradio_util_ds_buf_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "util_ds_buf,Vivado 2021.1" *)
module icyradio_util_ds_buf_0_0(IBUF_DS_P, IBUF_DS_N, IBUF_OUT, IBUF_DS_ODIV2)
/* synthesis syn_black_box black_box_pad_pin="IBUF_DS_P[0:0],IBUF_DS_N[0:0],IBUF_OUT[0:0],IBUF_DS_ODIV2[0:0]" */;
  input [0:0]IBUF_DS_P;
  input [0:0]IBUF_DS_N;
  output [0:0]IBUF_OUT;
  output [0:0]IBUF_DS_ODIV2;
endmodule
