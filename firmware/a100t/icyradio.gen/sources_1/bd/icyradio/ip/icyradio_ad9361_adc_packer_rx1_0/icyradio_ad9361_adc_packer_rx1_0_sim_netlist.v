// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Wed Mar 27 12:07:04 2024
// Host        : node4-dev running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/joao/icyradio/firmware/a100t/icyradio.gen/sources_1/bd/icyradio/ip/icyradio_ad9361_adc_packer_rx1_0/icyradio_ad9361_adc_packer_rx1_0_sim_netlist.v
// Design      : icyradio_ad9361_adc_packer_rx1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "icyradio_ad9361_adc_packer_rx1_0,util_cpack2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "util_cpack2,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module icyradio_ad9361_adc_packer_rx1_0
   (clk,
    reset,
    enable_0,
    enable_1,
    fifo_wr_en,
    fifo_wr_overflow,
    fifo_wr_data_0,
    fifo_wr_data_1,
    packed_fifo_wr_en,
    packed_fifo_wr_overflow,
    packed_fifo_wr_sync,
    packed_fifo_wr_data);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 packed_fifo_wr_signal_clock CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME packed_fifo_wr_signal_clock, ASSOCIATED_BUSIF packed_fifo_wr, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN icyradio_axi_ad9361_0_l_clk, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 packed_fifo_wr_signal_reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME packed_fifo_wr_signal_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input reset;
  input enable_0;
  input enable_1;
  input fifo_wr_en;
  output fifo_wr_overflow;
  input [15:0]fifo_wr_data_0;
  input [15:0]fifo_wr_data_1;
  (* X_INTERFACE_INFO = "analog.com:interface:fifo_wr:1.0 packed_fifo_wr EN" *) output packed_fifo_wr_en;
  (* X_INTERFACE_INFO = "analog.com:interface:fifo_wr:1.0 packed_fifo_wr OVERFLOW" *) input packed_fifo_wr_overflow;
  (* X_INTERFACE_INFO = "analog.com:interface:fifo_wr:1.0 packed_fifo_wr SYNC" *) output packed_fifo_wr_sync;
  (* X_INTERFACE_INFO = "analog.com:interface:fifo_wr:1.0 packed_fifo_wr DATA" *) output [31:0]packed_fifo_wr_data;

  wire clk;
  wire enable_0;
  wire enable_1;
  wire [15:0]fifo_wr_data_0;
  wire [15:0]fifo_wr_data_1;
  wire fifo_wr_en;
  wire [31:0]packed_fifo_wr_data;
  wire packed_fifo_wr_en;
  wire packed_fifo_wr_overflow;
  wire packed_fifo_wr_sync;
  wire reset;

  assign fifo_wr_overflow = packed_fifo_wr_overflow;
  icyradio_ad9361_adc_packer_rx1_0_util_cpack2 inst
       (.clk(clk),
        .enable_0(enable_0),
        .enable_1(enable_1),
        .fifo_wr_data_0(fifo_wr_data_0),
        .fifo_wr_data_1(fifo_wr_data_1),
        .fifo_wr_en(fifo_wr_en),
        .packed_fifo_wr_data(packed_fifo_wr_data),
        .packed_fifo_wr_en(packed_fifo_wr_en),
        .packed_fifo_wr_sync(packed_fifo_wr_sync),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "pack_interconnect" *) 
module icyradio_ad9361_adc_packer_rx1_0_pack_interconnect
   (D,
    fifo_wr_data_0,
    p_0_in,
    fifo_wr_data_1);
  output [31:0]D;
  input [15:0]fifo_wr_data_0;
  input p_0_in;
  input [15:0]fifo_wr_data_1;

  wire [31:0]D;
  wire [15:0]fifo_wr_data_0;
  wire [15:0]fifo_wr_data_1;
  wire p_0_in;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \packed_fifo_wr_data[0]_i_1 
       (.I0(fifo_wr_data_0[0]),
        .I1(p_0_in),
        .I2(fifo_wr_data_1[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \packed_fifo_wr_data[10]_i_1 
       (.I0(fifo_wr_data_0[10]),
        .I1(p_0_in),
        .I2(fifo_wr_data_1[10]),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \packed_fifo_wr_data[11]_i_1 
       (.I0(fifo_wr_data_0[11]),
        .I1(p_0_in),
        .I2(fifo_wr_data_1[11]),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \packed_fifo_wr_data[12]_i_1 
       (.I0(fifo_wr_data_0[12]),
        .I1(p_0_in),
        .I2(fifo_wr_data_1[12]),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \packed_fifo_wr_data[13]_i_1 
       (.I0(fifo_wr_data_0[13]),
        .I1(p_0_in),
        .I2(fifo_wr_data_1[13]),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \packed_fifo_wr_data[14]_i_1 
       (.I0(fifo_wr_data_0[14]),
        .I1(p_0_in),
        .I2(fifo_wr_data_1[14]),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \packed_fifo_wr_data[15]_i_2 
       (.I0(fifo_wr_data_0[15]),
        .I1(p_0_in),
        .I2(fifo_wr_data_1[15]),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \packed_fifo_wr_data[16]_i_1 
       (.I0(fifo_wr_data_1[0]),
        .I1(p_0_in),
        .I2(fifo_wr_data_0[0]),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \packed_fifo_wr_data[17]_i_1 
       (.I0(fifo_wr_data_1[1]),
        .I1(p_0_in),
        .I2(fifo_wr_data_0[1]),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \packed_fifo_wr_data[18]_i_1 
       (.I0(fifo_wr_data_1[2]),
        .I1(p_0_in),
        .I2(fifo_wr_data_0[2]),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \packed_fifo_wr_data[19]_i_1 
       (.I0(fifo_wr_data_1[3]),
        .I1(p_0_in),
        .I2(fifo_wr_data_0[3]),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \packed_fifo_wr_data[1]_i_1 
       (.I0(fifo_wr_data_0[1]),
        .I1(p_0_in),
        .I2(fifo_wr_data_1[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \packed_fifo_wr_data[20]_i_1 
       (.I0(fifo_wr_data_1[4]),
        .I1(p_0_in),
        .I2(fifo_wr_data_0[4]),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \packed_fifo_wr_data[21]_i_1 
       (.I0(fifo_wr_data_1[5]),
        .I1(p_0_in),
        .I2(fifo_wr_data_0[5]),
        .O(D[21]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \packed_fifo_wr_data[22]_i_1 
       (.I0(fifo_wr_data_1[6]),
        .I1(p_0_in),
        .I2(fifo_wr_data_0[6]),
        .O(D[22]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \packed_fifo_wr_data[23]_i_1 
       (.I0(fifo_wr_data_1[7]),
        .I1(p_0_in),
        .I2(fifo_wr_data_0[7]),
        .O(D[23]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \packed_fifo_wr_data[24]_i_1 
       (.I0(fifo_wr_data_1[8]),
        .I1(p_0_in),
        .I2(fifo_wr_data_0[8]),
        .O(D[24]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \packed_fifo_wr_data[25]_i_1 
       (.I0(fifo_wr_data_1[9]),
        .I1(p_0_in),
        .I2(fifo_wr_data_0[9]),
        .O(D[25]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \packed_fifo_wr_data[26]_i_1 
       (.I0(fifo_wr_data_1[10]),
        .I1(p_0_in),
        .I2(fifo_wr_data_0[10]),
        .O(D[26]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \packed_fifo_wr_data[27]_i_1 
       (.I0(fifo_wr_data_1[11]),
        .I1(p_0_in),
        .I2(fifo_wr_data_0[11]),
        .O(D[27]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \packed_fifo_wr_data[28]_i_1 
       (.I0(fifo_wr_data_1[12]),
        .I1(p_0_in),
        .I2(fifo_wr_data_0[12]),
        .O(D[28]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \packed_fifo_wr_data[29]_i_1 
       (.I0(fifo_wr_data_1[13]),
        .I1(p_0_in),
        .I2(fifo_wr_data_0[13]),
        .O(D[29]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \packed_fifo_wr_data[2]_i_1 
       (.I0(fifo_wr_data_0[2]),
        .I1(p_0_in),
        .I2(fifo_wr_data_1[2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \packed_fifo_wr_data[30]_i_1 
       (.I0(fifo_wr_data_1[14]),
        .I1(p_0_in),
        .I2(fifo_wr_data_0[14]),
        .O(D[30]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \packed_fifo_wr_data[31]_i_2 
       (.I0(fifo_wr_data_1[15]),
        .I1(p_0_in),
        .I2(fifo_wr_data_0[15]),
        .O(D[31]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \packed_fifo_wr_data[3]_i_1 
       (.I0(fifo_wr_data_0[3]),
        .I1(p_0_in),
        .I2(fifo_wr_data_1[3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \packed_fifo_wr_data[4]_i_1 
       (.I0(fifo_wr_data_0[4]),
        .I1(p_0_in),
        .I2(fifo_wr_data_1[4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \packed_fifo_wr_data[5]_i_1 
       (.I0(fifo_wr_data_0[5]),
        .I1(p_0_in),
        .I2(fifo_wr_data_1[5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \packed_fifo_wr_data[6]_i_1 
       (.I0(fifo_wr_data_0[6]),
        .I1(p_0_in),
        .I2(fifo_wr_data_1[6]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \packed_fifo_wr_data[7]_i_1 
       (.I0(fifo_wr_data_0[7]),
        .I1(p_0_in),
        .I2(fifo_wr_data_1[7]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \packed_fifo_wr_data[8]_i_1 
       (.I0(fifo_wr_data_0[8]),
        .I1(p_0_in),
        .I2(fifo_wr_data_1[8]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \packed_fifo_wr_data[9]_i_1 
       (.I0(fifo_wr_data_0[9]),
        .I1(p_0_in),
        .I2(fifo_wr_data_1[9]),
        .O(D[9]));
endmodule

(* ORIG_REF_NAME = "pack_network" *) 
module icyradio_ad9361_adc_packer_rx1_0_pack_network
   (E,
    D,
    clk,
    startup_ctrl,
    fifo_wr_en,
    \ctrl_reg[1]_0 ,
    rotate,
    fifo_wr_data_0,
    fifo_wr_data_1);
  output [0:0]E;
  output [31:0]D;
  input clk;
  input startup_ctrl;
  input fifo_wr_en;
  input \ctrl_reg[1]_0 ;
  input rotate;
  input [15:0]fifo_wr_data_0;
  input [15:0]fifo_wr_data_1;

  wire [31:0]D;
  wire [0:0]E;
  wire clk;
  wire ctrl10;
  wire \ctrl_reg[1]_0 ;
  wire [15:0]fifo_wr_data_0;
  wire [15:0]fifo_wr_data_1;
  wire fifo_wr_en;
  wire p_0_in;
  wire rotate;
  wire startup_ctrl;

  LUT2 #(
    .INIT(4'h6)) 
    \ctrl[1]_i_1 
       (.I0(\ctrl_reg[1]_0 ),
        .I1(rotate),
        .O(ctrl10));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg[1] 
       (.C(clk),
        .CE(E),
        .D(ctrl10),
        .Q(p_0_in),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_pack.prev_valid[0]_i_1 
       (.I0(startup_ctrl),
        .I1(fifo_wr_en),
        .O(E));
  icyradio_ad9361_adc_packer_rx1_0_pack_interconnect i_interconnect
       (.D(D),
        .fifo_wr_data_0(fifo_wr_data_0),
        .fifo_wr_data_1(fifo_wr_data_1),
        .p_0_in(p_0_in));
endmodule

(* ORIG_REF_NAME = "pack_shell" *) 
module icyradio_ad9361_adc_packer_rx1_0_pack_shell
   (E,
    fifo_wr_en_0,
    D,
    clk,
    fifo_wr_en,
    enable_0,
    enable_1,
    reset,
    fifo_wr_data_0,
    fifo_wr_data_1);
  output [1:0]E;
  output fifo_wr_en_0;
  output [31:0]D;
  input clk;
  input fifo_wr_en;
  input enable_0;
  input enable_1;
  input reset;
  input [15:0]fifo_wr_data_0;
  input [15:0]fifo_wr_data_1;

  wire [31:0]D;
  wire [1:0]E;
  wire ce_ctrl;
  wire clk;
  wire enable_0;
  wire enable_1;
  wire enable_count;
  wire \enable_count[0]_i_1_n_0 ;
  wire \enable_int[0]_i_1_n_0 ;
  wire \enable_int[1]_i_1_n_0 ;
  wire \enable_int_reg_n_0_[0] ;
  wire \enable_int_reg_n_0_[1] ;
  wire [15:0]fifo_wr_data_0;
  wire [15:0]fifo_wr_data_1;
  wire fifo_wr_en;
  wire fifo_wr_en_0;
  wire [0:0]\gen_pack.prev_valid ;
  wire \gen_pack.prev_valid[0]_i_2_n_0 ;
  wire [1:0]\gen_pack.valid ;
  wire \gen_pack.valid[0]_i_1_n_0 ;
  wire \gen_pack.valid[1]_i_1_n_0 ;
  wire ready;
  wire ready_i_1_n_0;
  wire reset;
  wire reset_ctrl;
  wire \reset_ctrl0_inferred__0/i__n_0 ;
  wire reset_ctrl_i_1_n_0;
  wire reset_data;
  wire reset_data_i_1_n_0;
  wire rotate;
  wire \rotate[0]_i_1_n_0 ;
  wire startup_ctrl;
  wire startup_ctrl2;
  wire startup_ctrl2_i_1_n_0;
  wire startup_ctrl_i_1_n_0;

  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \enable_count[0]_i_1 
       (.I0(\enable_int_reg_n_0_[0] ),
        .I1(\enable_int_reg_n_0_[1] ),
        .O(\enable_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \enable_count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\enable_count[0]_i_1_n_0 ),
        .Q(enable_count),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \enable_int[0]_i_1 
       (.I0(enable_0),
        .I1(reset),
        .O(\enable_int[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \enable_int[1]_i_1 
       (.I0(enable_1),
        .I1(reset),
        .O(\enable_int[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \enable_int_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\enable_int[0]_i_1_n_0 ),
        .Q(\enable_int_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \enable_int_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\enable_int[1]_i_1_n_0 ),
        .Q(\enable_int_reg_n_0_[1] ),
        .R(1'b0));
  icyradio_ad9361_adc_packer_rx1_0_pack_network \gen_network[1].i_ctrl_interconnect 
       (.D(D),
        .E(ce_ctrl),
        .clk(clk),
        .\ctrl_reg[1]_0 (\enable_int_reg_n_0_[0] ),
        .fifo_wr_data_0(fifo_wr_data_0),
        .fifo_wr_data_1(fifo_wr_data_1),
        .fifo_wr_en(fifo_wr_en),
        .rotate(rotate),
        .startup_ctrl(startup_ctrl));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_pack.prev_valid[0]_i_2 
       (.I0(rotate),
        .I1(enable_count),
        .O(\gen_pack.prev_valid[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pack.prev_valid_reg[0] 
       (.C(clk),
        .CE(ce_ctrl),
        .D(\gen_pack.prev_valid[0]_i_2_n_0 ),
        .Q(\gen_pack.prev_valid ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \gen_pack.valid[0]_i_1 
       (.I0(\gen_pack.prev_valid ),
        .I1(rotate),
        .O(\gen_pack.valid[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \gen_pack.valid[1]_i_1 
       (.I0(enable_count),
        .I1(rotate),
        .O(\gen_pack.valid[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pack.valid_reg[0] 
       (.C(clk),
        .CE(ce_ctrl),
        .D(\gen_pack.valid[0]_i_1_n_0 ),
        .Q(\gen_pack.valid [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pack.valid_reg[1] 
       (.C(clk),
        .CE(ce_ctrl),
        .D(\gen_pack.valid[1]_i_1_n_0 ),
        .Q(\gen_pack.valid [1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \packed_fifo_wr_data[15]_i_1 
       (.I0(fifo_wr_en),
        .I1(\gen_pack.valid [0]),
        .O(E[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \packed_fifo_wr_data[31]_i_1 
       (.I0(fifo_wr_en),
        .I1(\gen_pack.valid [1]),
        .O(E[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h08)) 
    packed_fifo_wr_en_i_1
       (.I0(fifo_wr_en),
        .I1(ready),
        .I2(reset_data),
        .O(fifo_wr_en_0));
  LUT6 #(
    .INIT(64'h00000000FEFEFE02)) 
    ready_i_1
       (.I0(ready),
        .I1(fifo_wr_en),
        .I2(startup_ctrl),
        .I3(enable_count),
        .I4(rotate),
        .I5(reset_ctrl),
        .O(ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ready_reg
       (.C(clk),
        .CE(1'b1),
        .D(ready_i_1_n_0),
        .Q(ready),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h6FF6)) 
    \reset_ctrl0_inferred__0/i_ 
       (.I0(enable_0),
        .I1(\enable_int_reg_n_0_[0] ),
        .I2(enable_1),
        .I3(\enable_int_reg_n_0_[1] ),
        .O(\reset_ctrl0_inferred__0/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hFFFF7DBF)) 
    reset_ctrl_i_1
       (.I0(\enable_int_reg_n_0_[1] ),
        .I1(\enable_int_reg_n_0_[0] ),
        .I2(enable_0),
        .I3(enable_1),
        .I4(reset),
        .O(reset_ctrl_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    reset_ctrl_reg
       (.C(clk),
        .CE(1'b1),
        .D(reset_ctrl_i_1_n_0),
        .Q(reset_ctrl),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFBEFFFFBF)) 
    reset_data_i_1
       (.I0(startup_ctrl2),
        .I1(enable_0),
        .I2(\enable_int_reg_n_0_[0] ),
        .I3(enable_1),
        .I4(\enable_int_reg_n_0_[1] ),
        .I5(reset),
        .O(reset_data_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    reset_data_reg
       (.C(clk),
        .CE(1'b1),
        .D(reset_data_i_1_n_0),
        .Q(reset_data),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0000AA56)) 
    \rotate[0]_i_1 
       (.I0(rotate),
        .I1(fifo_wr_en),
        .I2(startup_ctrl),
        .I3(enable_count),
        .I4(reset_ctrl),
        .O(\rotate[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rotate_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\rotate[0]_i_1_n_0 ),
        .Q(rotate),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h00007DB0)) 
    startup_ctrl2_i_1
       (.I0(\enable_int_reg_n_0_[1] ),
        .I1(\enable_int_reg_n_0_[0] ),
        .I2(enable_0),
        .I3(enable_1),
        .I4(reset),
        .O(startup_ctrl2_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    startup_ctrl2_reg
       (.C(clk),
        .CE(1'b1),
        .D(startup_ctrl2_i_1_n_0),
        .Q(startup_ctrl2),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000FEFEFE00)) 
    startup_ctrl_i_1
       (.I0(\reset_ctrl0_inferred__0/i__n_0 ),
        .I1(reset_ctrl),
        .I2(startup_ctrl2),
        .I3(enable_0),
        .I4(enable_1),
        .I5(reset),
        .O(startup_ctrl_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    startup_ctrl_reg
       (.C(clk),
        .CE(1'b1),
        .D(startup_ctrl_i_1_n_0),
        .Q(startup_ctrl),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "util_cpack2" *) 
module icyradio_ad9361_adc_packer_rx1_0_util_cpack2
   (packed_fifo_wr_data,
    packed_fifo_wr_en,
    packed_fifo_wr_sync,
    fifo_wr_en,
    enable_1,
    reset,
    enable_0,
    clk,
    fifo_wr_data_0,
    fifo_wr_data_1);
  output [31:0]packed_fifo_wr_data;
  output packed_fifo_wr_en;
  output packed_fifo_wr_sync;
  input fifo_wr_en;
  input enable_1;
  input reset;
  input enable_0;
  input clk;
  input [15:0]fifo_wr_data_0;
  input [15:0]fifo_wr_data_1;

  wire clk;
  wire enable_0;
  wire enable_1;
  wire [15:0]fifo_wr_data_0;
  wire [15:0]fifo_wr_data_1;
  wire fifo_wr_en;
  wire [31:0]packed_fifo_wr_data;
  wire packed_fifo_wr_en;
  wire packed_fifo_wr_sync;
  wire reset;

  icyradio_ad9361_adc_packer_rx1_0_util_cpack2_impl i_cpack
       (.clk(clk),
        .enable_0(enable_0),
        .enable_1(enable_1),
        .fifo_wr_data_0(fifo_wr_data_0),
        .fifo_wr_data_1(fifo_wr_data_1),
        .fifo_wr_en(fifo_wr_en),
        .packed_fifo_wr_data(packed_fifo_wr_data),
        .packed_fifo_wr_en(packed_fifo_wr_en),
        .packed_fifo_wr_sync(packed_fifo_wr_sync),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "util_cpack2_impl" *) 
module icyradio_ad9361_adc_packer_rx1_0_util_cpack2_impl
   (packed_fifo_wr_data,
    packed_fifo_wr_en,
    packed_fifo_wr_sync,
    fifo_wr_en,
    enable_1,
    reset,
    enable_0,
    clk,
    fifo_wr_data_0,
    fifo_wr_data_1);
  output [31:0]packed_fifo_wr_data;
  output packed_fifo_wr_en;
  output packed_fifo_wr_sync;
  input fifo_wr_en;
  input enable_1;
  input reset;
  input enable_0;
  input clk;
  input [15:0]fifo_wr_data_0;
  input [15:0]fifo_wr_data_1;

  wire clk;
  wire enable_0;
  wire enable_1;
  wire [15:0]fifo_wr_data_0;
  wire [15:0]fifo_wr_data_1;
  wire fifo_wr_en;
  wire i_pack_shell_n_0;
  wire i_pack_shell_n_1;
  wire i_pack_shell_n_2;
  wire [31:0]p_0_out;
  wire [31:0]packed_fifo_wr_data;
  wire packed_fifo_wr_en;
  wire packed_fifo_wr_sync;
  wire reset;

  icyradio_ad9361_adc_packer_rx1_0_pack_shell i_pack_shell
       (.D(p_0_out),
        .E({i_pack_shell_n_0,i_pack_shell_n_1}),
        .clk(clk),
        .enable_0(enable_0),
        .enable_1(enable_1),
        .fifo_wr_data_0(fifo_wr_data_0),
        .fifo_wr_data_1(fifo_wr_data_1),
        .fifo_wr_en(fifo_wr_en),
        .fifo_wr_en_0(i_pack_shell_n_2),
        .reset(reset));
  FDRE #(
    .INIT(1'b0)) 
    \packed_fifo_wr_data_reg[0] 
       (.C(clk),
        .CE(i_pack_shell_n_1),
        .D(p_0_out[0]),
        .Q(packed_fifo_wr_data[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \packed_fifo_wr_data_reg[10] 
       (.C(clk),
        .CE(i_pack_shell_n_1),
        .D(p_0_out[10]),
        .Q(packed_fifo_wr_data[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \packed_fifo_wr_data_reg[11] 
       (.C(clk),
        .CE(i_pack_shell_n_1),
        .D(p_0_out[11]),
        .Q(packed_fifo_wr_data[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \packed_fifo_wr_data_reg[12] 
       (.C(clk),
        .CE(i_pack_shell_n_1),
        .D(p_0_out[12]),
        .Q(packed_fifo_wr_data[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \packed_fifo_wr_data_reg[13] 
       (.C(clk),
        .CE(i_pack_shell_n_1),
        .D(p_0_out[13]),
        .Q(packed_fifo_wr_data[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \packed_fifo_wr_data_reg[14] 
       (.C(clk),
        .CE(i_pack_shell_n_1),
        .D(p_0_out[14]),
        .Q(packed_fifo_wr_data[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \packed_fifo_wr_data_reg[15] 
       (.C(clk),
        .CE(i_pack_shell_n_1),
        .D(p_0_out[15]),
        .Q(packed_fifo_wr_data[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \packed_fifo_wr_data_reg[16] 
       (.C(clk),
        .CE(i_pack_shell_n_0),
        .D(p_0_out[16]),
        .Q(packed_fifo_wr_data[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \packed_fifo_wr_data_reg[17] 
       (.C(clk),
        .CE(i_pack_shell_n_0),
        .D(p_0_out[17]),
        .Q(packed_fifo_wr_data[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \packed_fifo_wr_data_reg[18] 
       (.C(clk),
        .CE(i_pack_shell_n_0),
        .D(p_0_out[18]),
        .Q(packed_fifo_wr_data[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \packed_fifo_wr_data_reg[19] 
       (.C(clk),
        .CE(i_pack_shell_n_0),
        .D(p_0_out[19]),
        .Q(packed_fifo_wr_data[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \packed_fifo_wr_data_reg[1] 
       (.C(clk),
        .CE(i_pack_shell_n_1),
        .D(p_0_out[1]),
        .Q(packed_fifo_wr_data[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \packed_fifo_wr_data_reg[20] 
       (.C(clk),
        .CE(i_pack_shell_n_0),
        .D(p_0_out[20]),
        .Q(packed_fifo_wr_data[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \packed_fifo_wr_data_reg[21] 
       (.C(clk),
        .CE(i_pack_shell_n_0),
        .D(p_0_out[21]),
        .Q(packed_fifo_wr_data[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \packed_fifo_wr_data_reg[22] 
       (.C(clk),
        .CE(i_pack_shell_n_0),
        .D(p_0_out[22]),
        .Q(packed_fifo_wr_data[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \packed_fifo_wr_data_reg[23] 
       (.C(clk),
        .CE(i_pack_shell_n_0),
        .D(p_0_out[23]),
        .Q(packed_fifo_wr_data[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \packed_fifo_wr_data_reg[24] 
       (.C(clk),
        .CE(i_pack_shell_n_0),
        .D(p_0_out[24]),
        .Q(packed_fifo_wr_data[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \packed_fifo_wr_data_reg[25] 
       (.C(clk),
        .CE(i_pack_shell_n_0),
        .D(p_0_out[25]),
        .Q(packed_fifo_wr_data[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \packed_fifo_wr_data_reg[26] 
       (.C(clk),
        .CE(i_pack_shell_n_0),
        .D(p_0_out[26]),
        .Q(packed_fifo_wr_data[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \packed_fifo_wr_data_reg[27] 
       (.C(clk),
        .CE(i_pack_shell_n_0),
        .D(p_0_out[27]),
        .Q(packed_fifo_wr_data[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \packed_fifo_wr_data_reg[28] 
       (.C(clk),
        .CE(i_pack_shell_n_0),
        .D(p_0_out[28]),
        .Q(packed_fifo_wr_data[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \packed_fifo_wr_data_reg[29] 
       (.C(clk),
        .CE(i_pack_shell_n_0),
        .D(p_0_out[29]),
        .Q(packed_fifo_wr_data[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \packed_fifo_wr_data_reg[2] 
       (.C(clk),
        .CE(i_pack_shell_n_1),
        .D(p_0_out[2]),
        .Q(packed_fifo_wr_data[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \packed_fifo_wr_data_reg[30] 
       (.C(clk),
        .CE(i_pack_shell_n_0),
        .D(p_0_out[30]),
        .Q(packed_fifo_wr_data[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \packed_fifo_wr_data_reg[31] 
       (.C(clk),
        .CE(i_pack_shell_n_0),
        .D(p_0_out[31]),
        .Q(packed_fifo_wr_data[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \packed_fifo_wr_data_reg[3] 
       (.C(clk),
        .CE(i_pack_shell_n_1),
        .D(p_0_out[3]),
        .Q(packed_fifo_wr_data[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \packed_fifo_wr_data_reg[4] 
       (.C(clk),
        .CE(i_pack_shell_n_1),
        .D(p_0_out[4]),
        .Q(packed_fifo_wr_data[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \packed_fifo_wr_data_reg[5] 
       (.C(clk),
        .CE(i_pack_shell_n_1),
        .D(p_0_out[5]),
        .Q(packed_fifo_wr_data[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \packed_fifo_wr_data_reg[6] 
       (.C(clk),
        .CE(i_pack_shell_n_1),
        .D(p_0_out[6]),
        .Q(packed_fifo_wr_data[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \packed_fifo_wr_data_reg[7] 
       (.C(clk),
        .CE(i_pack_shell_n_1),
        .D(p_0_out[7]),
        .Q(packed_fifo_wr_data[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \packed_fifo_wr_data_reg[8] 
       (.C(clk),
        .CE(i_pack_shell_n_1),
        .D(p_0_out[8]),
        .Q(packed_fifo_wr_data[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \packed_fifo_wr_data_reg[9] 
       (.C(clk),
        .CE(i_pack_shell_n_1),
        .D(p_0_out[9]),
        .Q(packed_fifo_wr_data[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    packed_fifo_wr_en_reg
       (.C(clk),
        .CE(1'b1),
        .D(i_pack_shell_n_2),
        .Q(packed_fifo_wr_en),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    packed_fifo_wr_sync_reg
       (.C(clk),
        .CE(1'b1),
        .D(i_pack_shell_n_2),
        .Q(packed_fifo_wr_sync),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
