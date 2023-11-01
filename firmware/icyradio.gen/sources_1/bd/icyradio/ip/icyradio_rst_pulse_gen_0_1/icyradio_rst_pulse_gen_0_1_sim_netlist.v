// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Fri Oct 27 00:55:34 2023
// Host        : node4-dev running 64-bit Ubuntu 22.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/joao/icyradio/firmware/icyradio.gen/sources_1/bd/icyradio/ip/icyradio_rst_pulse_gen_0_1/icyradio_rst_pulse_gen_0_1_sim_netlist.v
// Design      : icyradio_rst_pulse_gen_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "icyradio_rst_pulse_gen_0_1,rst_pulse_gen,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "rst_pulse_gen,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module icyradio_rst_pulse_gen_0_1
   (clk,
    trigger,
    rst_out);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN icyradio_axi_pcie_0_0_axi_aclk_out, INSERT_VIP 0" *) input clk;
  input trigger;
  output rst_out;

  wire clk;
  wire rst_out;
  wire trigger;

  icyradio_rst_pulse_gen_0_1_rst_pulse_gen inst
       (.clk(clk),
        .rst_out(rst_out),
        .trigger(trigger));
endmodule

(* ORIG_REF_NAME = "rst_pulse_gen" *) 
module icyradio_rst_pulse_gen_0_1_rst_pulse_gen
   (rst_out,
    trigger,
    clk);
  output rst_out;
  input trigger;
  input clk;

  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state_reg_n_0_[0] ;
  wire clk;
  wire ctr;
  wire ctr0_carry__0_n_0;
  wire ctr0_carry__0_n_1;
  wire ctr0_carry__0_n_2;
  wire ctr0_carry__0_n_3;
  wire ctr0_carry__1_n_0;
  wire ctr0_carry__1_n_1;
  wire ctr0_carry__1_n_2;
  wire ctr0_carry__1_n_3;
  wire ctr0_carry__2_n_2;
  wire ctr0_carry__2_n_3;
  wire ctr0_carry_n_0;
  wire ctr0_carry_n_1;
  wire ctr0_carry_n_2;
  wire ctr0_carry_n_3;
  wire \ctr[0]_i_1_n_0 ;
  wire \ctr[15]_i_1_n_0 ;
  wire \ctr[15]_i_3_n_0 ;
  wire \ctr[15]_i_4_n_0 ;
  wire \ctr_reg_n_0_[0] ;
  wire \ctr_reg_n_0_[10] ;
  wire \ctr_reg_n_0_[11] ;
  wire \ctr_reg_n_0_[12] ;
  wire \ctr_reg_n_0_[13] ;
  wire \ctr_reg_n_0_[14] ;
  wire \ctr_reg_n_0_[15] ;
  wire \ctr_reg_n_0_[1] ;
  wire \ctr_reg_n_0_[2] ;
  wire \ctr_reg_n_0_[3] ;
  wire \ctr_reg_n_0_[4] ;
  wire \ctr_reg_n_0_[5] ;
  wire \ctr_reg_n_0_[6] ;
  wire \ctr_reg_n_0_[7] ;
  wire \ctr_reg_n_0_[8] ;
  wire \ctr_reg_n_0_[9] ;
  wire [15:1]data0;
  wire rst_out;
  wire rst_out_i_1_n_0;
  wire rst_out_i_2_n_0;
  wire rst_out_i_3_n_0;
  wire rst_out_i_4_n_0;
  wire rst_out_i_5_n_0;
  wire rst_out_i_6_n_0;
  wire [1:1]state;
  wire trigger;
  wire [3:2]NLW_ctr0_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_ctr0_carry__2_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hD5B2)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(\FSM_sequential_state_reg_n_0_[0] ),
        .I1(state),
        .I2(trigger),
        .I3(rst_out_i_2_n_0),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hE6C4)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(\FSM_sequential_state_reg_n_0_[0] ),
        .I1(state),
        .I2(trigger),
        .I3(rst_out_i_2_n_0),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:01,iSTATE0:10,iSTATE1:00,iSTATE2:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(\FSM_sequential_state_reg_n_0_[0] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:01,iSTATE0:10,iSTATE1:00,iSTATE2:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 ctr0_carry
       (.CI(1'b0),
        .CO({ctr0_carry_n_0,ctr0_carry_n_1,ctr0_carry_n_2,ctr0_carry_n_3}),
        .CYINIT(\ctr_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({\ctr_reg_n_0_[4] ,\ctr_reg_n_0_[3] ,\ctr_reg_n_0_[2] ,\ctr_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 ctr0_carry__0
       (.CI(ctr0_carry_n_0),
        .CO({ctr0_carry__0_n_0,ctr0_carry__0_n_1,ctr0_carry__0_n_2,ctr0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({\ctr_reg_n_0_[8] ,\ctr_reg_n_0_[7] ,\ctr_reg_n_0_[6] ,\ctr_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 ctr0_carry__1
       (.CI(ctr0_carry__0_n_0),
        .CO({ctr0_carry__1_n_0,ctr0_carry__1_n_1,ctr0_carry__1_n_2,ctr0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S({\ctr_reg_n_0_[12] ,\ctr_reg_n_0_[11] ,\ctr_reg_n_0_[10] ,\ctr_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 ctr0_carry__2
       (.CI(ctr0_carry__1_n_0),
        .CO({NLW_ctr0_carry__2_CO_UNCONNECTED[3:2],ctr0_carry__2_n_2,ctr0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_ctr0_carry__2_O_UNCONNECTED[3],data0[15:13]}),
        .S({1'b0,\ctr_reg_n_0_[15] ,\ctr_reg_n_0_[14] ,\ctr_reg_n_0_[13] }));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \ctr[0]_i_1 
       (.I0(\ctr_reg_n_0_[0] ),
        .O(\ctr[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0445)) 
    \ctr[15]_i_1 
       (.I0(\ctr[15]_i_3_n_0 ),
        .I1(\ctr[15]_i_4_n_0 ),
        .I2(\FSM_sequential_state_reg_n_0_[0] ),
        .I3(state),
        .O(\ctr[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \ctr[15]_i_2 
       (.I0(\FSM_sequential_state_reg_n_0_[0] ),
        .I1(state),
        .O(ctr));
  LUT6 #(
    .INIT(64'hFFFFFEFFAAAAAAA2)) 
    \ctr[15]_i_3 
       (.I0(\FSM_sequential_state_reg_n_0_[0] ),
        .I1(\ctr_reg_n_0_[5] ),
        .I2(\ctr_reg_n_0_[4] ),
        .I3(\ctr_reg_n_0_[7] ),
        .I4(\ctr_reg_n_0_[6] ),
        .I5(state),
        .O(\ctr[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \ctr[15]_i_4 
       (.I0(\ctr_reg_n_0_[9] ),
        .I1(\ctr_reg_n_0_[12] ),
        .I2(\ctr_reg_n_0_[0] ),
        .I3(\ctr_reg_n_0_[14] ),
        .I4(rst_out_i_4_n_0),
        .I5(rst_out_i_3_n_0),
        .O(\ctr[15]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg[0] 
       (.C(clk),
        .CE(ctr),
        .D(\ctr[0]_i_1_n_0 ),
        .Q(\ctr_reg_n_0_[0] ),
        .R(\ctr[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg[10] 
       (.C(clk),
        .CE(ctr),
        .D(data0[10]),
        .Q(\ctr_reg_n_0_[10] ),
        .R(\ctr[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg[11] 
       (.C(clk),
        .CE(ctr),
        .D(data0[11]),
        .Q(\ctr_reg_n_0_[11] ),
        .R(\ctr[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg[12] 
       (.C(clk),
        .CE(ctr),
        .D(data0[12]),
        .Q(\ctr_reg_n_0_[12] ),
        .R(\ctr[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg[13] 
       (.C(clk),
        .CE(ctr),
        .D(data0[13]),
        .Q(\ctr_reg_n_0_[13] ),
        .R(\ctr[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg[14] 
       (.C(clk),
        .CE(ctr),
        .D(data0[14]),
        .Q(\ctr_reg_n_0_[14] ),
        .R(\ctr[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg[15] 
       (.C(clk),
        .CE(ctr),
        .D(data0[15]),
        .Q(\ctr_reg_n_0_[15] ),
        .R(\ctr[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg[1] 
       (.C(clk),
        .CE(ctr),
        .D(data0[1]),
        .Q(\ctr_reg_n_0_[1] ),
        .R(\ctr[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg[2] 
       (.C(clk),
        .CE(ctr),
        .D(data0[2]),
        .Q(\ctr_reg_n_0_[2] ),
        .R(\ctr[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg[3] 
       (.C(clk),
        .CE(ctr),
        .D(data0[3]),
        .Q(\ctr_reg_n_0_[3] ),
        .R(\ctr[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg[4] 
       (.C(clk),
        .CE(ctr),
        .D(data0[4]),
        .Q(\ctr_reg_n_0_[4] ),
        .R(\ctr[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg[5] 
       (.C(clk),
        .CE(ctr),
        .D(data0[5]),
        .Q(\ctr_reg_n_0_[5] ),
        .R(\ctr[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg[6] 
       (.C(clk),
        .CE(ctr),
        .D(data0[6]),
        .Q(\ctr_reg_n_0_[6] ),
        .R(\ctr[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg[7] 
       (.C(clk),
        .CE(ctr),
        .D(data0[7]),
        .Q(\ctr_reg_n_0_[7] ),
        .R(\ctr[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg[8] 
       (.C(clk),
        .CE(ctr),
        .D(data0[8]),
        .Q(\ctr_reg_n_0_[8] ),
        .R(\ctr[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg[9] 
       (.C(clk),
        .CE(ctr),
        .D(data0[9]),
        .Q(\ctr_reg_n_0_[9] ),
        .R(\ctr[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE2E0)) 
    rst_out_i_1
       (.I0(rst_out),
        .I1(rst_out_i_2_n_0),
        .I2(\FSM_sequential_state_reg_n_0_[0] ),
        .I3(state),
        .O(rst_out_i_1_n_0));
  LUT4 #(
    .INIT(16'h0010)) 
    rst_out_i_2
       (.I0(rst_out_i_3_n_0),
        .I1(rst_out_i_4_n_0),
        .I2(rst_out_i_5_n_0),
        .I3(rst_out_i_6_n_0),
        .O(rst_out_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    rst_out_i_3
       (.I0(\ctr_reg_n_0_[15] ),
        .I1(\ctr_reg_n_0_[8] ),
        .I2(\ctr_reg_n_0_[1] ),
        .I3(\ctr_reg_n_0_[3] ),
        .O(rst_out_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    rst_out_i_4
       (.I0(\ctr_reg_n_0_[10] ),
        .I1(\ctr_reg_n_0_[2] ),
        .I2(\ctr_reg_n_0_[13] ),
        .I3(\ctr_reg_n_0_[11] ),
        .O(rst_out_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    rst_out_i_5
       (.I0(\ctr_reg_n_0_[14] ),
        .I1(\ctr_reg_n_0_[0] ),
        .I2(\ctr_reg_n_0_[12] ),
        .I3(\ctr_reg_n_0_[9] ),
        .O(rst_out_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFEFFFFFDFFFF)) 
    rst_out_i_6
       (.I0(\ctr_reg_n_0_[5] ),
        .I1(\ctr_reg_n_0_[4] ),
        .I2(\ctr_reg_n_0_[6] ),
        .I3(\ctr_reg_n_0_[7] ),
        .I4(\FSM_sequential_state_reg_n_0_[0] ),
        .I5(state),
        .O(rst_out_i_6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rst_out_reg
       (.C(clk),
        .CE(1'b1),
        .D(rst_out_i_1_n_0),
        .Q(rst_out),
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
