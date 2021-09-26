// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Sat Sep 25 13:07:36 2021
// Host        : jsilva-kubuntu running 64-bit Ubuntu 20.04.3 LTS
// Command     : write_verilog -force -mode funcsim {/media/joao/SSD
//               Data/Development/icyradio/firmware/icyradio/icyradio.gen/sources_1/bd/icyradio/ip/icyradio_axi_gpio_0_0/icyradio_axi_gpio_0_0_sim_netlist.v}
// Design      : icyradio_axi_gpio_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a75tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "icyradio_axi_gpio_0_0,axi_gpio,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "axi_gpio,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module icyradio_axi_gpio_0_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    gpio_io_i,
    gpio_io_o,
    gpio_io_t,
    gpio2_io_i,
    gpio2_io_o,
    gpio2_io_t);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN icyradio_axi_pcie_0_0_axi_aclk_out, INSERT_VIP 0" *) input s_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 125000000, ID_WIDTH 0, ADDR_WIDTH 9, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN icyradio_axi_pcie_0_0_axi_aclk_out, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [8:0]s_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [8:0]s_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input s_axi_rready;
  (* x_interface_info = "xilinx.com:interface:gpio:1.0 GPIO TRI_I" *) (* x_interface_parameter = "XIL_INTERFACENAME GPIO, BOARD.ASSOCIATED_PARAM GPIO_BOARD_INTERFACE" *) input [1:0]gpio_io_i;
  (* x_interface_info = "xilinx.com:interface:gpio:1.0 GPIO TRI_O" *) output [1:0]gpio_io_o;
  (* x_interface_info = "xilinx.com:interface:gpio:1.0 GPIO TRI_T" *) output [1:0]gpio_io_t;
  (* x_interface_info = "xilinx.com:interface:gpio:1.0 GPIO2 TRI_I" *) (* x_interface_parameter = "XIL_INTERFACENAME GPIO2, BOARD.ASSOCIATED_PARAM GPIO2_BOARD_INTERFACE" *) input [1:0]gpio2_io_i;
  (* x_interface_info = "xilinx.com:interface:gpio:1.0 GPIO2 TRI_O" *) output [1:0]gpio2_io_o;
  (* x_interface_info = "xilinx.com:interface:gpio:1.0 GPIO2 TRI_T" *) output [1:0]gpio2_io_t;

  wire \<const0> ;
  wire [1:0]gpio2_io_i;
  wire [1:0]gpio2_io_o;
  wire [1:0]gpio2_io_t;
  wire [1:0]gpio_io_i;
  wire [1:0]gpio_io_o;
  wire [1:0]gpio_io_t;
  wire s_axi_aclk;
  wire [8:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [8:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [1:0]\^s_axi_rdata ;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire NLW_U0_ip2intc_irpt_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [31:2]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1:0] = \^s_axi_rdata [1:0];
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_ALL_INPUTS = "0" *) 
  (* C_ALL_INPUTS_2 = "0" *) 
  (* C_ALL_OUTPUTS = "0" *) 
  (* C_ALL_OUTPUTS_2 = "0" *) 
  (* C_DOUT_DEFAULT = "0" *) 
  (* C_DOUT_DEFAULT_2 = "0" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_GPIO2_WIDTH = "2" *) 
  (* C_GPIO_WIDTH = "2" *) 
  (* C_INTERRUPT_PRESENT = "0" *) 
  (* C_IS_DUAL = "1" *) 
  (* C_S_AXI_ADDR_WIDTH = "9" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_TRI_DEFAULT = "-1" *) 
  (* C_TRI_DEFAULT_2 = "-1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* ip_group = "LOGICORE" *) 
  icyradio_axi_gpio_0_0_axi_gpio U0
       (.gpio2_io_i(gpio2_io_i),
        .gpio2_io_o(gpio2_io_o),
        .gpio2_io_t(gpio2_io_t),
        .gpio_io_i(gpio_io_i),
        .gpio_io_o(gpio_io_o),
        .gpio_io_t(gpio_io_t),
        .ip2intc_irpt(NLW_U0_ip2intc_irpt_UNCONNECTED),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr({s_axi_araddr[8],1'b0,1'b0,1'b0,1'b0,s_axi_araddr[3:2],1'b0,1'b0}),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr({s_axi_awaddr[8],1'b0,1'b0,1'b0,1'b0,s_axi_awaddr[3:2],1'b0,1'b0}),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata({NLW_U0_s_axi_rdata_UNCONNECTED[31:2],\^s_axi_rdata }),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_wdata[1:0]}),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "GPIO_Core" *) 
module icyradio_axi_gpio_0_0_GPIO_Core
   (reg1,
    GPIO_xferAck_i,
    gpio_xferAck_Reg,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ,
    gpio2_io_o,
    \Dual.gpio2_OE_reg[1]_0 ,
    \Dual.gpio2_OE_reg[0]_0 ,
    gpio_io_o,
    \Dual.gpio_OE_reg[1]_0 ,
    \Dual.gpio_OE_reg[0]_0 ,
    ip2bus_wrack_i,
    ip2bus_rdack_i,
    \Dual.ALLOUT0_ND_G0.READ_REG_GEN[0].reg2_reg[30]_0 ,
    \Dual.ALLOUT0_ND_G0.READ_REG_GEN[1].reg2_reg[31]_0 ,
    \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[30]_0 ,
    s_axi_aclk,
    bus2ip_reset,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ,
    Bus_RNW_reg,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ,
    Q,
    gpio_reg_en,
    bus2ip_rnw,
    bus2ip_cs,
    gpio_io_i,
    gpio2_io_i,
    s_axi_wdata,
    p_0_in3_in,
    p_1_in2_in,
    \Dual.gpio2_Data_Out_reg[0]_0 ,
    \Dual.gpio2_OE_reg[0]_1 );
  output [1:0]reg1;
  output GPIO_xferAck_i;
  output gpio_xferAck_Reg;
  output \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ;
  output [1:0]gpio2_io_o;
  output \Dual.gpio2_OE_reg[1]_0 ;
  output \Dual.gpio2_OE_reg[0]_0 ;
  output [1:0]gpio_io_o;
  output \Dual.gpio_OE_reg[1]_0 ;
  output \Dual.gpio_OE_reg[0]_0 ;
  output ip2bus_wrack_i;
  output ip2bus_rdack_i;
  output \Dual.ALLOUT0_ND_G0.READ_REG_GEN[0].reg2_reg[30]_0 ;
  output \Dual.ALLOUT0_ND_G0.READ_REG_GEN[1].reg2_reg[31]_0 ;
  input \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[30]_0 ;
  input s_axi_aclk;
  input bus2ip_reset;
  input \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ;
  input Bus_RNW_reg;
  input \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  input \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  input \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  input [1:0]Q;
  input gpio_reg_en;
  input bus2ip_rnw;
  input bus2ip_cs;
  input [1:0]gpio_io_i;
  input [1:0]gpio2_io_i;
  input [1:0]s_axi_wdata;
  input p_0_in3_in;
  input p_1_in2_in;
  input \Dual.gpio2_Data_Out_reg[0]_0 ;
  input \Dual.gpio2_OE_reg[0]_1 ;

  wire Bus_RNW_reg;
  wire \Dual.ALLOUT0_ND_G0.READ_REG_GEN[0].reg1[30]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G0.READ_REG_GEN[0].reg2[30]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G0.READ_REG_GEN[0].reg2_reg[30]_0 ;
  wire \Dual.ALLOUT0_ND_G0.READ_REG_GEN[1].reg1[31]_i_2_n_0 ;
  wire \Dual.ALLOUT0_ND_G0.READ_REG_GEN[1].reg2[31]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G0.READ_REG_GEN[1].reg2_reg[31]_0 ;
  wire \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg3[30]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4[30]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[30]_0 ;
  wire \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[1].reg3[31]_i_1_n_0 ;
  wire \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[1].reg4[31]_i_1_n_0 ;
  wire \Dual.gpio2_Data_Out[0]_i_1_n_0 ;
  wire \Dual.gpio2_Data_Out[1]_i_1_n_0 ;
  wire \Dual.gpio2_Data_Out_reg[0]_0 ;
  wire \Dual.gpio2_OE[0]_i_1_n_0 ;
  wire \Dual.gpio2_OE[1]_i_1_n_0 ;
  wire \Dual.gpio2_OE_reg[0]_0 ;
  wire \Dual.gpio2_OE_reg[0]_1 ;
  wire \Dual.gpio2_OE_reg[1]_0 ;
  wire \Dual.gpio_Data_Out[0]_i_1_n_0 ;
  wire \Dual.gpio_Data_Out[1]_i_1_n_0 ;
  wire \Dual.gpio_OE[0]_i_1_n_0 ;
  wire \Dual.gpio_OE[1]_i_1_n_0 ;
  wire \Dual.gpio_OE_reg[0]_0 ;
  wire \Dual.gpio_OE_reg[1]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ;
  wire GPIO_xferAck_i;
  wire [1:0]Q;
  wire bus2ip_cs;
  wire bus2ip_reset;
  wire bus2ip_rnw;
  wire [0:1]gpio2_Data_In;
  wire [1:0]gpio2_io_i;
  wire [0:1]gpio2_io_i_d2;
  wire [1:0]gpio2_io_o;
  wire [0:1]gpio_Data_In;
  wire [1:0]gpio_io_i;
  wire [0:1]gpio_io_i_d2;
  wire [1:0]gpio_io_o;
  wire gpio_reg_en;
  wire gpio_xferAck_Reg;
  wire iGPIO_xferAck;
  wire ip2bus_rdack_i;
  wire ip2bus_wrack_i;
  wire p_0_in3_in;
  wire p_1_in2_in;
  wire [1:0]reg1;
  wire [30:31]reg2;
  wire [30:31]reg3;
  wire [30:31]reg4;
  wire s_axi_aclk;
  wire [1:0]s_axi_wdata;

  LUT6 #(
    .INIT(64'h22CE222222C22222)) 
    \Dual.ALLOUT0_ND_G0.READ_REG_GEN[0].reg1[30]_i_1 
       (.I0(gpio_io_o[1]),
        .I1(\Dual.gpio_OE_reg[0]_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(gpio_reg_en),
        .I5(gpio_Data_In[0]),
        .O(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[0].reg1[30]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G0.READ_REG_GEN[0].reg1_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[0].reg1[30]_i_1_n_0 ),
        .Q(reg1[1]),
        .R(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[30]_0 ));
  LUT6 #(
    .INIT(64'h22CE222222C22222)) 
    \Dual.ALLOUT0_ND_G0.READ_REG_GEN[0].reg2[30]_i_1 
       (.I0(reg2[30]),
        .I1(\Dual.gpio_OE_reg[0]_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(gpio_reg_en),
        .I5(gpio_Data_In[0]),
        .O(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[0].reg2[30]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G0.READ_REG_GEN[0].reg2_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[0].reg2[30]_i_1_n_0 ),
        .Q(reg2[30]),
        .R(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[30]_0 ));
  LUT6 #(
    .INIT(64'h22CE222222C22222)) 
    \Dual.ALLOUT0_ND_G0.READ_REG_GEN[1].reg1[31]_i_2 
       (.I0(gpio_io_o[0]),
        .I1(\Dual.gpio_OE_reg[1]_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(gpio_reg_en),
        .I5(gpio_Data_In[1]),
        .O(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[1].reg1[31]_i_2_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G0.READ_REG_GEN[1].reg1_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[1].reg1[31]_i_2_n_0 ),
        .Q(reg1[0]),
        .R(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[30]_0 ));
  LUT6 #(
    .INIT(64'h22CE222222C22222)) 
    \Dual.ALLOUT0_ND_G0.READ_REG_GEN[1].reg2[31]_i_1 
       (.I0(reg2[31]),
        .I1(\Dual.gpio_OE_reg[1]_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(gpio_reg_en),
        .I5(gpio_Data_In[1]),
        .O(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[1].reg2[31]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G0.READ_REG_GEN[1].reg2_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[1].reg2[31]_i_1_n_0 ),
        .Q(reg2[31]),
        .R(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[30]_0 ));
  LUT6 #(
    .INIT(64'hCE222222C2222222)) 
    \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg3[30]_i_1 
       (.I0(gpio2_io_o[1]),
        .I1(\Dual.gpio2_OE_reg[0]_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(gpio_reg_en),
        .I5(gpio2_Data_In[0]),
        .O(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg3[30]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg3_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg3[30]_i_1_n_0 ),
        .Q(reg3[30]),
        .R(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[30]_0 ));
  LUT6 #(
    .INIT(64'hCE222222C2222222)) 
    \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4[30]_i_1 
       (.I0(reg4[30]),
        .I1(\Dual.gpio2_OE_reg[0]_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(gpio_reg_en),
        .I5(gpio2_Data_In[0]),
        .O(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4[30]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4[30]_i_1_n_0 ),
        .Q(reg4[30]),
        .R(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[30]_0 ));
  LUT6 #(
    .INIT(64'hCE222222C2222222)) 
    \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[1].reg3[31]_i_1 
       (.I0(gpio2_io_o[0]),
        .I1(\Dual.gpio2_OE_reg[1]_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(gpio_reg_en),
        .I5(gpio2_Data_In[1]),
        .O(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[1].reg3[31]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[1].reg3_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[1].reg3[31]_i_1_n_0 ),
        .Q(reg3[31]),
        .R(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[30]_0 ));
  LUT6 #(
    .INIT(64'hCE222222C2222222)) 
    \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[1].reg4[31]_i_1 
       (.I0(reg4[31]),
        .I1(\Dual.gpio2_OE_reg[1]_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(gpio_reg_en),
        .I5(gpio2_Data_In[1]),
        .O(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[1].reg4[31]_i_1_n_0 ));
  FDRE \Dual.ALLOUT0_ND_G2.READ_REG2_GEN[1].reg4_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[1].reg4[31]_i_1_n_0 ),
        .Q(reg4[31]),
        .R(\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[30]_0 ));
  icyradio_axi_gpio_0_0_cdc_sync \Dual.INPUT_DOUBLE_REGS4 
       (.gpio_io_i(gpio_io_i),
        .s_axi_aclk(s_axi_aclk),
        .scndry_vect_out({gpio_io_i_d2[0],gpio_io_i_d2[1]}));
  icyradio_axi_gpio_0_0_cdc_sync_0 \Dual.INPUT_DOUBLE_REGS5 
       (.gpio2_io_i(gpio2_io_i),
        .s_axi_aclk(s_axi_aclk),
        .scndry_vect_out({gpio2_io_i_d2[0],gpio2_io_i_d2[1]}));
  FDRE \Dual.gpio2_Data_In_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_i_d2[0]),
        .Q(gpio2_Data_In[0]),
        .R(1'b0));
  FDRE \Dual.gpio2_Data_In_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_i_d2[1]),
        .Q(gpio2_Data_In[1]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hEF20)) 
    \Dual.gpio2_Data_Out[0]_i_1 
       (.I0(s_axi_wdata[1]),
        .I1(bus2ip_rnw),
        .I2(\Dual.gpio2_Data_Out_reg[0]_0 ),
        .I3(gpio2_io_o[1]),
        .O(\Dual.gpio2_Data_Out[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEF20)) 
    \Dual.gpio2_Data_Out[1]_i_1 
       (.I0(s_axi_wdata[0]),
        .I1(bus2ip_rnw),
        .I2(\Dual.gpio2_Data_Out_reg[0]_0 ),
        .I3(gpio2_io_o[0]),
        .O(\Dual.gpio2_Data_Out[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio2_Data_Out_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.gpio2_Data_Out[0]_i_1_n_0 ),
        .Q(gpio2_io_o[1]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio2_Data_Out_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.gpio2_Data_Out[1]_i_1_n_0 ),
        .Q(gpio2_io_o[0]),
        .R(bus2ip_reset));
  LUT4 #(
    .INIT(16'hEF20)) 
    \Dual.gpio2_OE[0]_i_1 
       (.I0(s_axi_wdata[1]),
        .I1(bus2ip_rnw),
        .I2(\Dual.gpio2_OE_reg[0]_1 ),
        .I3(\Dual.gpio2_OE_reg[0]_0 ),
        .O(\Dual.gpio2_OE[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEF20)) 
    \Dual.gpio2_OE[1]_i_1 
       (.I0(s_axi_wdata[0]),
        .I1(bus2ip_rnw),
        .I2(\Dual.gpio2_OE_reg[0]_1 ),
        .I3(\Dual.gpio2_OE_reg[1]_0 ),
        .O(\Dual.gpio2_OE[1]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio2_OE_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.gpio2_OE[0]_i_1_n_0 ),
        .Q(\Dual.gpio2_OE_reg[0]_0 ),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio2_OE_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.gpio2_OE[1]_i_1_n_0 ),
        .Q(\Dual.gpio2_OE_reg[1]_0 ),
        .S(bus2ip_reset));
  FDRE \Dual.gpio_Data_In_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[0]),
        .Q(gpio_Data_In[0]),
        .R(1'b0));
  FDRE \Dual.gpio_Data_In_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[1]),
        .Q(gpio_Data_In[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hEF20)) 
    \Dual.gpio_Data_Out[0]_i_1 
       (.I0(s_axi_wdata[1]),
        .I1(bus2ip_rnw),
        .I2(p_0_in3_in),
        .I3(gpio_io_o[1]),
        .O(\Dual.gpio_Data_Out[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hEF20)) 
    \Dual.gpio_Data_Out[1]_i_1 
       (.I0(s_axi_wdata[0]),
        .I1(bus2ip_rnw),
        .I2(p_0_in3_in),
        .I3(gpio_io_o[0]),
        .O(\Dual.gpio_Data_Out[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.gpio_Data_Out[0]_i_1_n_0 ),
        .Q(gpio_io_o[1]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_Out_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.gpio_Data_Out[1]_i_1_n_0 ),
        .Q(gpio_io_o[0]),
        .R(bus2ip_reset));
  LUT4 #(
    .INIT(16'hEF20)) 
    \Dual.gpio_OE[0]_i_1 
       (.I0(s_axi_wdata[1]),
        .I1(bus2ip_rnw),
        .I2(p_1_in2_in),
        .I3(\Dual.gpio_OE_reg[0]_0 ),
        .O(\Dual.gpio_OE[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEF20)) 
    \Dual.gpio_OE[1]_i_1 
       (.I0(s_axi_wdata[0]),
        .I1(bus2ip_rnw),
        .I2(p_1_in2_in),
        .I3(\Dual.gpio_OE_reg[1]_0 ),
        .O(\Dual.gpio_OE[1]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.gpio_OE[0]_i_1_n_0 ),
        .Q(\Dual.gpio_OE_reg[0]_0 ),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.gpio_OE[1]_i_1_n_0 ),
        .Q(\Dual.gpio_OE_reg[1]_0 ),
        .S(bus2ip_reset));
  LUT5 #(
    .INIT(32'h00040448)) 
    GPIO_DBus
       (.I0(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I1(Bus_RNW_reg),
        .I2(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I3(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .O(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ));
  FDRE gpio_xferAck_Reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(GPIO_xferAck_i),
        .Q(gpio_xferAck_Reg),
        .R(bus2ip_reset));
  LUT3 #(
    .INIT(8'h04)) 
    iGPIO_xferAck_i_1
       (.I0(gpio_xferAck_Reg),
        .I1(bus2ip_cs),
        .I2(GPIO_xferAck_i),
        .O(iGPIO_xferAck));
  FDRE iGPIO_xferAck_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(iGPIO_xferAck),
        .Q(GPIO_xferAck_i),
        .R(bus2ip_reset));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \ip2bus_data_i_D1[30]_i_2 
       (.I0(reg2[30]),
        .I1(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I2(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I3(reg4[30]),
        .I4(reg3[30]),
        .I5(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .O(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[0].reg2_reg[30]_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \ip2bus_data_i_D1[31]_i_2 
       (.I0(reg2[31]),
        .I1(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I2(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I3(reg4[31]),
        .I4(reg3[31]),
        .I5(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .O(\Dual.ALLOUT0_ND_G0.READ_REG_GEN[1].reg2_reg[31]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    ip2bus_rdack_i_D1_i_1
       (.I0(GPIO_xferAck_i),
        .I1(bus2ip_rnw),
        .O(ip2bus_rdack_i));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ip2bus_wrack_i_D1_i_1
       (.I0(GPIO_xferAck_i),
        .I1(bus2ip_rnw),
        .O(ip2bus_wrack_i));
endmodule

(* ORIG_REF_NAME = "address_decoder" *) 
module icyradio_axi_gpio_0_0_address_decoder
   (\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ,
    Bus_RNW_reg_reg_0,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ,
    \bus2ip_addr_i_reg[8] ,
    p_1_in2_in,
    \bus2ip_addr_i_reg[8]_0 ,
    p_0_in3_in,
    gpio_reg_en,
    D,
    ip2bus_rdack_i_D1_reg,
    ip2bus_wrack_i_D1_reg,
    bus2ip_rnw_i_reg,
    Q,
    s_axi_aclk,
    \Dual.gpio2_OE_reg[0] ,
    reg1,
    \ip2bus_data_i_D1_reg[30] ,
    \ip2bus_data_i_D1_reg[30]_0 ,
    \ip2bus_data_i_D1_reg[31] ,
    s_axi_aresetn,
    bus2ip_rnw,
    GPIO_xferAck_i,
    gpio_xferAck_Reg,
    ip2bus_rdack_i_D1,
    s_axi_arready,
    s_axi_arready_0,
    ip2bus_wrack_i_D1,
    s_axi_wready);
  output \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ;
  output \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  output \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  output Bus_RNW_reg_reg_0;
  output \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ;
  output \bus2ip_addr_i_reg[8] ;
  output p_1_in2_in;
  output \bus2ip_addr_i_reg[8]_0 ;
  output p_0_in3_in;
  output gpio_reg_en;
  output [1:0]D;
  output ip2bus_rdack_i_D1_reg;
  output ip2bus_wrack_i_D1_reg;
  output bus2ip_rnw_i_reg;
  input Q;
  input s_axi_aclk;
  input [2:0]\Dual.gpio2_OE_reg[0] ;
  input [1:0]reg1;
  input \ip2bus_data_i_D1_reg[30] ;
  input \ip2bus_data_i_D1_reg[30]_0 ;
  input \ip2bus_data_i_D1_reg[31] ;
  input s_axi_aresetn;
  input bus2ip_rnw;
  input GPIO_xferAck_i;
  input gpio_xferAck_Reg;
  input ip2bus_rdack_i_D1;
  input s_axi_arready;
  input [3:0]s_axi_arready_0;
  input ip2bus_wrack_i_D1;
  input s_axi_wready;

  wire Bus_RNW_reg_i_1_n_0;
  wire Bus_RNW_reg_reg_0;
  wire [1:0]D;
  wire [2:0]\Dual.gpio2_OE_reg[0] ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ;
  wire GPIO_xferAck_i;
  wire \MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0 ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ;
  wire Q;
  wire \bus2ip_addr_i_reg[8] ;
  wire \bus2ip_addr_i_reg[8]_0 ;
  wire bus2ip_rnw;
  wire bus2ip_rnw_i_reg;
  wire ce_expnd_i_0;
  wire ce_expnd_i_1;
  wire ce_expnd_i_2;
  wire ce_expnd_i_3;
  wire cs_ce_clr;
  wire gpio_reg_en;
  wire gpio_xferAck_Reg;
  wire \ip2bus_data_i_D1_reg[30] ;
  wire \ip2bus_data_i_D1_reg[30]_0 ;
  wire \ip2bus_data_i_D1_reg[31] ;
  wire ip2bus_rdack_i_D1;
  wire ip2bus_rdack_i_D1_reg;
  wire ip2bus_wrack_i_D1;
  wire ip2bus_wrack_i_D1_reg;
  wire p_0_in3_in;
  wire p_1_in2_in;
  wire [1:0]reg1;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire [3:0]s_axi_arready_0;
  wire s_axi_wready;

  LUT3 #(
    .INIT(8'hB8)) 
    Bus_RNW_reg_i_1
       (.I0(bus2ip_rnw),
        .I1(Q),
        .I2(Bus_RNW_reg_reg_0),
        .O(Bus_RNW_reg_i_1_n_0));
  FDRE Bus_RNW_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus_RNW_reg_i_1_n_0),
        .Q(Bus_RNW_reg_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFDFF)) 
    \Dual.ALLOUT0_ND_G0.READ_REG_GEN[1].reg1[31]_i_1 
       (.I0(bus2ip_rnw),
        .I1(GPIO_xferAck_i),
        .I2(gpio_xferAck_Reg),
        .I3(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .O(bus2ip_rnw_i_reg));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Dual.ALLOUT0_ND_G0.READ_REG_GEN[1].reg1[31]_i_3 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I1(\Dual.gpio2_OE_reg[0] [2]),
        .O(gpio_reg_en));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \Dual.gpio2_Data_Out[0]_i_2 
       (.I0(\Dual.gpio2_OE_reg[0] [2]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(\Dual.gpio2_OE_reg[0] [0]),
        .I3(\Dual.gpio2_OE_reg[0] [1]),
        .O(\bus2ip_addr_i_reg[8]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \Dual.gpio2_OE[0]_i_2 
       (.I0(\Dual.gpio2_OE_reg[0] [2]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(\Dual.gpio2_OE_reg[0] [1]),
        .I3(\Dual.gpio2_OE_reg[0] [0]),
        .O(\bus2ip_addr_i_reg[8] ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \Dual.gpio_Data_Out[0]_i_2 
       (.I0(\Dual.gpio2_OE_reg[0] [2]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(\Dual.gpio2_OE_reg[0] [1]),
        .I3(\Dual.gpio2_OE_reg[0] [0]),
        .O(p_0_in3_in));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \Dual.gpio_OE[0]_i_2 
       (.I0(\Dual.gpio2_OE_reg[0] [2]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(\Dual.gpio2_OE_reg[0] [1]),
        .I3(\Dual.gpio2_OE_reg[0] [0]),
        .O(p_1_in2_in));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1 
       (.I0(\Dual.gpio2_OE_reg[0] [0]),
        .I1(\Dual.gpio2_OE_reg[0] [1]),
        .O(ce_expnd_i_3));
  FDRE \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_3),
        .Q(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1 
       (.I0(\Dual.gpio2_OE_reg[0] [0]),
        .I1(\Dual.gpio2_OE_reg[0] [1]),
        .O(ce_expnd_i_2));
  FDRE \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_2),
        .Q(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i[2]_i_1 
       (.I0(\Dual.gpio2_OE_reg[0] [1]),
        .I1(\Dual.gpio2_OE_reg[0] [0]),
        .O(ce_expnd_i_1));
  FDRE \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_1),
        .Q(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .R(cs_ce_clr));
  LUT3 #(
    .INIT(8'hEF)) 
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1 
       (.I0(ip2bus_wrack_i_D1_reg),
        .I1(ip2bus_rdack_i_D1_reg),
        .I2(s_axi_aresetn),
        .O(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_2 
       (.I0(\Dual.gpio2_OE_reg[0] [1]),
        .I1(\Dual.gpio2_OE_reg[0] [0]),
        .O(ce_expnd_i_0));
  FDRE \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_0),
        .Q(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .R(cs_ce_clr));
  LUT5 #(
    .INIT(32'h000000E0)) 
    \MEM_DECODE_GEN[0].cs_out_i[0]_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I1(Q),
        .I2(s_axi_aresetn),
        .I3(ip2bus_rdack_i_D1_reg),
        .I4(ip2bus_wrack_i_D1_reg),
        .O(\MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0 ));
  FDRE \MEM_DECODE_GEN[0].cs_out_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0 ),
        .Q(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAA800000)) 
    \ip2bus_data_i_D1[30]_i_1 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I2(reg1[1]),
        .I3(\ip2bus_data_i_D1_reg[30] ),
        .I4(\ip2bus_data_i_D1_reg[30]_0 ),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hAA800000)) 
    \ip2bus_data_i_D1[31]_i_1 
       (.I0(Bus_RNW_reg_reg_0),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I2(reg1[0]),
        .I3(\ip2bus_data_i_D1_reg[31] ),
        .I4(\ip2bus_data_i_D1_reg[30]_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAEAAAA)) 
    s_axi_arready_INST_0
       (.I0(ip2bus_rdack_i_D1),
        .I1(s_axi_arready),
        .I2(s_axi_arready_0[2]),
        .I3(s_axi_arready_0[1]),
        .I4(s_axi_arready_0[3]),
        .I5(s_axi_arready_0[0]),
        .O(ip2bus_rdack_i_D1_reg));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAEAAAA)) 
    s_axi_wready_INST_0
       (.I0(ip2bus_wrack_i_D1),
        .I1(s_axi_wready),
        .I2(s_axi_arready_0[2]),
        .I3(s_axi_arready_0[1]),
        .I4(s_axi_arready_0[3]),
        .I5(s_axi_arready_0[0]),
        .O(ip2bus_wrack_i_D1_reg));
endmodule

(* C_ALL_INPUTS = "0" *) (* C_ALL_INPUTS_2 = "0" *) (* C_ALL_OUTPUTS = "0" *) 
(* C_ALL_OUTPUTS_2 = "0" *) (* C_DOUT_DEFAULT = "0" *) (* C_DOUT_DEFAULT_2 = "0" *) 
(* C_FAMILY = "artix7" *) (* C_GPIO2_WIDTH = "2" *) (* C_GPIO_WIDTH = "2" *) 
(* C_INTERRUPT_PRESENT = "0" *) (* C_IS_DUAL = "1" *) (* C_S_AXI_ADDR_WIDTH = "9" *) 
(* C_S_AXI_DATA_WIDTH = "32" *) (* C_TRI_DEFAULT = "-1" *) (* C_TRI_DEFAULT_2 = "-1" *) 
(* ORIG_REF_NAME = "axi_gpio" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_group = "LOGICORE" *) 
module icyradio_axi_gpio_0_0_axi_gpio
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    ip2intc_irpt,
    gpio_io_i,
    gpio_io_o,
    gpio_io_t,
    gpio2_io_i,
    gpio2_io_o,
    gpio2_io_t);
  (* sigis = "Clk" *) input s_axi_aclk;
  (* sigis = "Rst" *) input s_axi_aresetn;
  input [8:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [8:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  (* sigis = "INTR_LEVEL_HIGH" *) output ip2intc_irpt;
  input [1:0]gpio_io_i;
  output [1:0]gpio_io_o;
  output [1:0]gpio_io_t;
  input [1:0]gpio2_io_i;
  output [1:0]gpio2_io_o;
  output [1:0]gpio2_io_t;

  wire \<const0> ;
  wire AXI_LITE_IPIF_I_n_10;
  wire AXI_LITE_IPIF_I_n_14;
  wire AXI_LITE_IPIF_I_n_21;
  wire [1:0]GPIO_DBus;
  wire GPIO_xferAck_i;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ;
  wire [5:6]bus2ip_addr;
  wire bus2ip_cs;
  wire bus2ip_reset;
  wire bus2ip_rnw;
  wire [1:0]gpio2_io_i;
  wire [1:0]gpio2_io_o;
  wire [1:0]gpio2_io_t;
  wire gpio_core_1_n_15;
  wire gpio_core_1_n_16;
  wire gpio_core_1_n_4;
  wire [1:0]gpio_io_i;
  wire [1:0]gpio_io_o;
  wire [1:0]gpio_io_t;
  wire gpio_reg_en;
  wire gpio_xferAck_Reg;
  wire [30:31]ip2bus_data_i_D1;
  wire ip2bus_rdack_i;
  wire ip2bus_rdack_i_D1;
  wire ip2bus_wrack_i;
  wire ip2bus_wrack_i_D1;
  wire p_0_in3_in;
  wire p_1_in2_in;
  wire [30:31]reg1;
  wire s_axi_aclk;
  wire [8:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [8:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [1:0]\^s_axi_rdata ;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;

  assign ip2intc_irpt = \<const0> ;
  assign s_axi_awready = s_axi_wready;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1:0] = \^s_axi_rdata [1:0];
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  icyradio_axi_gpio_0_0_axi_lite_ipif AXI_LITE_IPIF_I
       (.Bus_RNW_reg(\I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ),
        .D(GPIO_DBus),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg (\I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg (\I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg (\I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg (\I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .GPIO_xferAck_i(GPIO_xferAck_i),
        .Q({bus2ip_addr[5],bus2ip_addr[6]}),
        .\bus2ip_addr_i_reg[8] (AXI_LITE_IPIF_I_n_10),
        .\bus2ip_addr_i_reg[8]_0 (AXI_LITE_IPIF_I_n_14),
        .bus2ip_cs(bus2ip_cs),
        .bus2ip_reset(bus2ip_reset),
        .bus2ip_rnw(bus2ip_rnw),
        .bus2ip_rnw_i_reg(AXI_LITE_IPIF_I_n_21),
        .gpio_reg_en(gpio_reg_en),
        .gpio_xferAck_Reg(gpio_xferAck_Reg),
        .\ip2bus_data_i_D1_reg[30] (gpio_core_1_n_15),
        .\ip2bus_data_i_D1_reg[30]_0 (gpio_core_1_n_4),
        .\ip2bus_data_i_D1_reg[31] (gpio_core_1_n_16),
        .ip2bus_rdack_i_D1(ip2bus_rdack_i_D1),
        .ip2bus_rdack_i_D1_reg(s_axi_arready),
        .ip2bus_wrack_i_D1(ip2bus_wrack_i_D1),
        .ip2bus_wrack_i_D1_reg(s_axi_wready),
        .p_0_in3_in(p_0_in3_in),
        .p_1_in2_in(p_1_in2_in),
        .reg1({reg1[30],reg1[31]}),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr({s_axi_araddr[8],s_axi_araddr[3:2]}),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr({s_axi_awaddr[8],s_axi_awaddr[3:2]}),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid_i_reg(s_axi_bvalid),
        .s_axi_rdata(\^s_axi_rdata ),
        .\s_axi_rdata_i_reg[1] ({ip2bus_data_i_D1[30],ip2bus_data_i_D1[31]}),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid_i_reg(s_axi_rvalid),
        .s_axi_wvalid(s_axi_wvalid));
  GND GND
       (.G(\<const0> ));
  icyradio_axi_gpio_0_0_GPIO_Core gpio_core_1
       (.Bus_RNW_reg(\I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ),
        .\Dual.ALLOUT0_ND_G0.READ_REG_GEN[0].reg2_reg[30]_0 (gpio_core_1_n_15),
        .\Dual.ALLOUT0_ND_G0.READ_REG_GEN[1].reg2_reg[31]_0 (gpio_core_1_n_16),
        .\Dual.ALLOUT0_ND_G2.READ_REG2_GEN[0].reg4_reg[30]_0 (AXI_LITE_IPIF_I_n_21),
        .\Dual.gpio2_Data_Out_reg[0]_0 (AXI_LITE_IPIF_I_n_14),
        .\Dual.gpio2_OE_reg[0]_0 (gpio2_io_t[1]),
        .\Dual.gpio2_OE_reg[0]_1 (AXI_LITE_IPIF_I_n_10),
        .\Dual.gpio2_OE_reg[1]_0 (gpio2_io_t[0]),
        .\Dual.gpio_OE_reg[0]_0 (gpio_io_t[1]),
        .\Dual.gpio_OE_reg[1]_0 (gpio_io_t[0]),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg (\I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg (\I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg (\I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg (\I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] (gpio_core_1_n_4),
        .GPIO_xferAck_i(GPIO_xferAck_i),
        .Q({bus2ip_addr[5],bus2ip_addr[6]}),
        .bus2ip_cs(bus2ip_cs),
        .bus2ip_reset(bus2ip_reset),
        .bus2ip_rnw(bus2ip_rnw),
        .gpio2_io_i(gpio2_io_i),
        .gpio2_io_o(gpio2_io_o),
        .gpio_io_i(gpio_io_i),
        .gpio_io_o(gpio_io_o),
        .gpio_reg_en(gpio_reg_en),
        .gpio_xferAck_Reg(gpio_xferAck_Reg),
        .ip2bus_rdack_i(ip2bus_rdack_i),
        .ip2bus_wrack_i(ip2bus_wrack_i),
        .p_0_in3_in(p_0_in3_in),
        .p_1_in2_in(p_1_in2_in),
        .reg1({reg1[30],reg1[31]}),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata[1:0]));
  FDRE \ip2bus_data_i_D1_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(GPIO_DBus[1]),
        .Q(ip2bus_data_i_D1[30]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(GPIO_DBus[0]),
        .Q(ip2bus_data_i_D1[31]),
        .R(bus2ip_reset));
  FDRE ip2bus_rdack_i_D1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_rdack_i),
        .Q(ip2bus_rdack_i_D1),
        .R(bus2ip_reset));
  FDRE ip2bus_wrack_i_D1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_wrack_i),
        .Q(ip2bus_wrack_i_D1),
        .R(bus2ip_reset));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif" *) 
module icyradio_axi_gpio_0_0_axi_lite_ipif
   (bus2ip_reset,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ,
    bus2ip_rnw,
    Bus_RNW_reg,
    s_axi_rvalid_i_reg,
    s_axi_bvalid_i_reg,
    bus2ip_cs,
    \bus2ip_addr_i_reg[8] ,
    Q,
    p_1_in2_in,
    \bus2ip_addr_i_reg[8]_0 ,
    p_0_in3_in,
    gpio_reg_en,
    D,
    ip2bus_rdack_i_D1_reg,
    ip2bus_wrack_i_D1_reg,
    bus2ip_rnw_i_reg,
    s_axi_rdata,
    s_axi_aclk,
    s_axi_arvalid,
    reg1,
    \ip2bus_data_i_D1_reg[30] ,
    \ip2bus_data_i_D1_reg[30]_0 ,
    \ip2bus_data_i_D1_reg[31] ,
    s_axi_rready,
    s_axi_bready,
    s_axi_aresetn,
    s_axi_awvalid,
    s_axi_wvalid,
    GPIO_xferAck_i,
    gpio_xferAck_Reg,
    \s_axi_rdata_i_reg[1] ,
    ip2bus_rdack_i_D1,
    ip2bus_wrack_i_D1,
    s_axi_araddr,
    s_axi_awaddr);
  output bus2ip_reset;
  output \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ;
  output \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  output \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  output bus2ip_rnw;
  output Bus_RNW_reg;
  output s_axi_rvalid_i_reg;
  output s_axi_bvalid_i_reg;
  output bus2ip_cs;
  output \bus2ip_addr_i_reg[8] ;
  output [1:0]Q;
  output p_1_in2_in;
  output \bus2ip_addr_i_reg[8]_0 ;
  output p_0_in3_in;
  output gpio_reg_en;
  output [1:0]D;
  output ip2bus_rdack_i_D1_reg;
  output ip2bus_wrack_i_D1_reg;
  output bus2ip_rnw_i_reg;
  output [1:0]s_axi_rdata;
  input s_axi_aclk;
  input s_axi_arvalid;
  input [1:0]reg1;
  input \ip2bus_data_i_D1_reg[30] ;
  input \ip2bus_data_i_D1_reg[30]_0 ;
  input \ip2bus_data_i_D1_reg[31] ;
  input s_axi_rready;
  input s_axi_bready;
  input s_axi_aresetn;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input GPIO_xferAck_i;
  input gpio_xferAck_Reg;
  input [1:0]\s_axi_rdata_i_reg[1] ;
  input ip2bus_rdack_i_D1;
  input ip2bus_wrack_i_D1;
  input [2:0]s_axi_araddr;
  input [2:0]s_axi_awaddr;

  wire Bus_RNW_reg;
  wire [1:0]D;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ;
  wire GPIO_xferAck_i;
  wire [1:0]Q;
  wire \bus2ip_addr_i_reg[8] ;
  wire \bus2ip_addr_i_reg[8]_0 ;
  wire bus2ip_cs;
  wire bus2ip_reset;
  wire bus2ip_rnw;
  wire bus2ip_rnw_i_reg;
  wire gpio_reg_en;
  wire gpio_xferAck_Reg;
  wire \ip2bus_data_i_D1_reg[30] ;
  wire \ip2bus_data_i_D1_reg[30]_0 ;
  wire \ip2bus_data_i_D1_reg[31] ;
  wire ip2bus_rdack_i_D1;
  wire ip2bus_rdack_i_D1_reg;
  wire ip2bus_wrack_i_D1;
  wire ip2bus_wrack_i_D1_reg;
  wire p_0_in3_in;
  wire p_1_in2_in;
  wire [1:0]reg1;
  wire s_axi_aclk;
  wire [2:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arvalid;
  wire [2:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid_i_reg;
  wire [1:0]s_axi_rdata;
  wire [1:0]\s_axi_rdata_i_reg[1] ;
  wire s_axi_rready;
  wire s_axi_rvalid_i_reg;
  wire s_axi_wvalid;

  icyradio_axi_gpio_0_0_slave_attachment I_SLAVE_ATTACHMENT
       (.Bus_RNW_reg_reg(Bus_RNW_reg),
        .D(D),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg (\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg (\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .GPIO_xferAck_i(GPIO_xferAck_i),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0] (bus2ip_cs),
        .Q(Q),
        .SR(bus2ip_reset),
        .\bus2ip_addr_i_reg[8]_0 (\bus2ip_addr_i_reg[8] ),
        .\bus2ip_addr_i_reg[8]_1 (\bus2ip_addr_i_reg[8]_0 ),
        .bus2ip_rnw(bus2ip_rnw),
        .bus2ip_rnw_i_reg_0(bus2ip_rnw_i_reg),
        .gpio_reg_en(gpio_reg_en),
        .gpio_xferAck_Reg(gpio_xferAck_Reg),
        .\ip2bus_data_i_D1_reg[30] (\ip2bus_data_i_D1_reg[30] ),
        .\ip2bus_data_i_D1_reg[30]_0 (\ip2bus_data_i_D1_reg[30]_0 ),
        .\ip2bus_data_i_D1_reg[31] (\ip2bus_data_i_D1_reg[31] ),
        .ip2bus_rdack_i_D1(ip2bus_rdack_i_D1),
        .ip2bus_rdack_i_D1_reg(ip2bus_rdack_i_D1_reg),
        .ip2bus_wrack_i_D1(ip2bus_wrack_i_D1),
        .ip2bus_wrack_i_D1_reg(ip2bus_wrack_i_D1_reg),
        .p_0_in3_in(p_0_in3_in),
        .p_1_in2_in(p_1_in2_in),
        .reg1(reg1),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid_i_reg_0(s_axi_bvalid_i_reg),
        .s_axi_rdata(s_axi_rdata),
        .\s_axi_rdata_i_reg[1]_0 (\s_axi_rdata_i_reg[1] ),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid_i_reg_0(s_axi_rvalid_i_reg),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module icyradio_axi_gpio_0_0_cdc_sync
   (scndry_vect_out,
    gpio_io_i,
    s_axi_aclk);
  output [1:0]scndry_vect_out;
  input [1:0]gpio_io_i;
  input s_axi_aclk;

  wire [1:0]gpio_io_i;
  wire s_axi_aclk;
  wire s_level_out_bus_d1_cdc_to_0;
  wire s_level_out_bus_d1_cdc_to_1;
  wire s_level_out_bus_d2_0;
  wire s_level_out_bus_d2_1;
  wire s_level_out_bus_d3_0;
  wire s_level_out_bus_d3_1;
  wire [1:0]scndry_vect_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_0),
        .Q(s_level_out_bus_d2_0),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_1),
        .Q(s_level_out_bus_d2_1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_0),
        .Q(s_level_out_bus_d3_0),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_1),
        .Q(s_level_out_bus_d3_1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_0),
        .Q(scndry_vect_out[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_1),
        .Q(scndry_vect_out[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[0]),
        .Q(s_level_out_bus_d1_cdc_to_0),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[1]),
        .Q(s_level_out_bus_d1_cdc_to_1),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module icyradio_axi_gpio_0_0_cdc_sync_0
   (scndry_vect_out,
    gpio2_io_i,
    s_axi_aclk);
  output [1:0]scndry_vect_out;
  input [1:0]gpio2_io_i;
  input s_axi_aclk;

  wire [1:0]gpio2_io_i;
  wire s_axi_aclk;
  wire s_level_out_bus_d1_cdc_to_0;
  wire s_level_out_bus_d1_cdc_to_1;
  wire s_level_out_bus_d2_0;
  wire s_level_out_bus_d2_1;
  wire s_level_out_bus_d3_0;
  wire s_level_out_bus_d3_1;
  wire [1:0]scndry_vect_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_0),
        .Q(s_level_out_bus_d2_0),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_1),
        .Q(s_level_out_bus_d2_1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_0),
        .Q(s_level_out_bus_d3_0),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_1),
        .Q(s_level_out_bus_d3_1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_0),
        .Q(scndry_vect_out[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_1),
        .Q(scndry_vect_out[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_i[0]),
        .Q(s_level_out_bus_d1_cdc_to_0),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_i[1]),
        .Q(s_level_out_bus_d1_cdc_to_1),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "slave_attachment" *) 
module icyradio_axi_gpio_0_0_slave_attachment
   (SR,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ,
    bus2ip_rnw,
    Bus_RNW_reg_reg,
    s_axi_rvalid_i_reg_0,
    s_axi_bvalid_i_reg_0,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0] ,
    \bus2ip_addr_i_reg[8]_0 ,
    Q,
    p_1_in2_in,
    \bus2ip_addr_i_reg[8]_1 ,
    p_0_in3_in,
    gpio_reg_en,
    D,
    ip2bus_rdack_i_D1_reg,
    ip2bus_wrack_i_D1_reg,
    bus2ip_rnw_i_reg_0,
    s_axi_rdata,
    s_axi_aclk,
    s_axi_arvalid,
    reg1,
    \ip2bus_data_i_D1_reg[30] ,
    \ip2bus_data_i_D1_reg[30]_0 ,
    \ip2bus_data_i_D1_reg[31] ,
    s_axi_rready,
    s_axi_bready,
    s_axi_aresetn,
    s_axi_awvalid,
    s_axi_wvalid,
    GPIO_xferAck_i,
    gpio_xferAck_Reg,
    \s_axi_rdata_i_reg[1]_0 ,
    ip2bus_rdack_i_D1,
    ip2bus_wrack_i_D1,
    s_axi_araddr,
    s_axi_awaddr);
  output [0:0]SR;
  output \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ;
  output \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  output \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  output bus2ip_rnw;
  output Bus_RNW_reg_reg;
  output s_axi_rvalid_i_reg_0;
  output s_axi_bvalid_i_reg_0;
  output \MEM_DECODE_GEN[0].cs_out_i_reg[0] ;
  output \bus2ip_addr_i_reg[8]_0 ;
  output [1:0]Q;
  output p_1_in2_in;
  output \bus2ip_addr_i_reg[8]_1 ;
  output p_0_in3_in;
  output gpio_reg_en;
  output [1:0]D;
  output ip2bus_rdack_i_D1_reg;
  output ip2bus_wrack_i_D1_reg;
  output bus2ip_rnw_i_reg_0;
  output [1:0]s_axi_rdata;
  input s_axi_aclk;
  input s_axi_arvalid;
  input [1:0]reg1;
  input \ip2bus_data_i_D1_reg[30] ;
  input \ip2bus_data_i_D1_reg[30]_0 ;
  input \ip2bus_data_i_D1_reg[31] ;
  input s_axi_rready;
  input s_axi_bready;
  input s_axi_aresetn;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input GPIO_xferAck_i;
  input gpio_xferAck_Reg;
  input [1:0]\s_axi_rdata_i_reg[1]_0 ;
  input ip2bus_rdack_i_D1;
  input ip2bus_wrack_i_D1;
  input [2:0]s_axi_araddr;
  input [2:0]s_axi_awaddr;

  wire Bus_RNW_reg_reg;
  wire [1:0]D;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ;
  wire GPIO_xferAck_i;
  wire [3:0]\INCLUDE_DPHASE_TIMER.dpto_cnt_reg ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0] ;
  wire [1:0]Q;
  wire [0:0]SR;
  wire [0:0]bus2ip_addr;
  wire \bus2ip_addr_i[8]_i_1_n_0 ;
  wire \bus2ip_addr_i_reg[8]_0 ;
  wire \bus2ip_addr_i_reg[8]_1 ;
  wire bus2ip_rnw;
  wire bus2ip_rnw_i_reg_0;
  wire clear;
  wire gpio_reg_en;
  wire gpio_xferAck_Reg;
  wire \ip2bus_data_i_D1_reg[30] ;
  wire \ip2bus_data_i_D1_reg[30]_0 ;
  wire \ip2bus_data_i_D1_reg[31] ;
  wire ip2bus_rdack_i_D1;
  wire ip2bus_rdack_i_D1_reg;
  wire ip2bus_wrack_i_D1;
  wire ip2bus_wrack_i_D1_reg;
  wire is_read_i_1_n_0;
  wire is_read_reg_n_0;
  wire is_write_i_1_n_0;
  wire is_write_i_2_n_0;
  wire is_write_reg_n_0;
  wire p_0_in;
  wire p_0_in3_in;
  wire [1:0]p_0_out;
  wire [8:2]p_1_in;
  wire p_1_in2_in;
  wire p_5_in;
  wire [3:0]plusOp;
  wire [1:0]reg1;
  wire s_axi_aclk;
  wire [2:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arvalid;
  wire [2:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bresp_i;
  wire s_axi_bvalid_i_i_1_n_0;
  wire s_axi_bvalid_i_reg_0;
  wire [1:0]s_axi_rdata;
  wire \s_axi_rdata_i[0]_i_1_n_0 ;
  wire \s_axi_rdata_i[1]_i_1_n_0 ;
  wire [1:0]\s_axi_rdata_i_reg[1]_0 ;
  wire s_axi_rready;
  wire s_axi_rresp_i;
  wire s_axi_rvalid_i_i_1_n_0;
  wire s_axi_rvalid_i_reg_0;
  wire s_axi_wvalid;
  wire start2;
  wire start2_i_1_n_0;
  wire [1:0]state;
  wire state1__2;

  LUT6 #(
    .INIT(64'hFFFF150015001500)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_axi_wvalid),
        .I2(s_axi_awvalid),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(state1__2),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(s_axi_arvalid),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(ip2bus_rdack_i_D1_reg),
        .I3(s_axi_rresp_i),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0800FFFF08000800)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(s_axi_wvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_arvalid),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(ip2bus_wrack_i_D1_reg),
        .I5(s_axi_bresp_i),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888F888FFFFF888)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(ip2bus_wrack_i_D1_reg),
        .I1(s_axi_bresp_i),
        .I2(s_axi_rresp_i),
        .I3(ip2bus_rdack_i_D1_reg),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .I5(state1__2),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \FSM_onehot_state[3]_i_2 
       (.I0(s_axi_bready),
        .I1(s_axi_bvalid_i_reg_0),
        .I2(s_axi_rready),
        .I3(s_axi_rvalid_i_reg_0),
        .O(state1__2));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(SR));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(s_axi_rresp_i),
        .R(SR));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(s_axi_bresp_i),
        .R(SR));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .O(plusOp[2]));
  LUT2 #(
    .INIT(4'h9)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .O(clear));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_2 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [3]),
        .O(plusOp[3]));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [3]),
        .R(clear));
  icyradio_axi_gpio_0_0_address_decoder I_DECODER
       (.Bus_RNW_reg_reg_0(Bus_RNW_reg_reg),
        .D(D),
        .\Dual.gpio2_OE_reg[0] ({bus2ip_addr,Q}),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg (\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg (\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .GPIO_xferAck_i(GPIO_xferAck_i),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 (\MEM_DECODE_GEN[0].cs_out_i_reg[0] ),
        .Q(start2),
        .\bus2ip_addr_i_reg[8] (\bus2ip_addr_i_reg[8]_0 ),
        .\bus2ip_addr_i_reg[8]_0 (\bus2ip_addr_i_reg[8]_1 ),
        .bus2ip_rnw(bus2ip_rnw),
        .bus2ip_rnw_i_reg(bus2ip_rnw_i_reg_0),
        .gpio_reg_en(gpio_reg_en),
        .gpio_xferAck_Reg(gpio_xferAck_Reg),
        .\ip2bus_data_i_D1_reg[30] (\ip2bus_data_i_D1_reg[30] ),
        .\ip2bus_data_i_D1_reg[30]_0 (\ip2bus_data_i_D1_reg[30]_0 ),
        .\ip2bus_data_i_D1_reg[31] (\ip2bus_data_i_D1_reg[31] ),
        .ip2bus_rdack_i_D1(ip2bus_rdack_i_D1),
        .ip2bus_rdack_i_D1_reg(ip2bus_rdack_i_D1_reg),
        .ip2bus_wrack_i_D1(ip2bus_wrack_i_D1),
        .ip2bus_wrack_i_D1_reg(ip2bus_wrack_i_D1_reg),
        .p_0_in3_in(p_0_in3_in),
        .p_1_in2_in(p_1_in2_in),
        .reg1(reg1),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(is_read_reg_n_0),
        .s_axi_arready_0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg ),
        .s_axi_wready(is_write_reg_n_0));
  LUT3 #(
    .INIT(8'hAC)) 
    \bus2ip_addr_i[2]_i_1 
       (.I0(s_axi_araddr[0]),
        .I1(s_axi_awaddr[0]),
        .I2(s_axi_arvalid),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \bus2ip_addr_i[3]_i_1 
       (.I0(s_axi_araddr[1]),
        .I1(s_axi_awaddr[1]),
        .I2(s_axi_arvalid),
        .O(p_1_in[3]));
  LUT5 #(
    .INIT(32'h000000EA)) 
    \bus2ip_addr_i[8]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_wvalid),
        .I3(state[1]),
        .I4(state[0]),
        .O(\bus2ip_addr_i[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \bus2ip_addr_i[8]_i_2 
       (.I0(s_axi_araddr[2]),
        .I1(s_axi_awaddr[2]),
        .I2(s_axi_arvalid),
        .O(p_1_in[8]));
  FDRE \bus2ip_addr_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(Q[0]),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(Q[1]),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(p_1_in[8]),
        .Q(bus2ip_addr),
        .R(SR));
  FDRE bus2ip_rnw_i_reg
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(s_axi_arvalid),
        .Q(bus2ip_rnw),
        .R(SR));
  LUT5 #(
    .INIT(32'h8BBB8888)) 
    is_read_i_1
       (.I0(s_axi_arvalid),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(state1__2),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(is_read_reg_n_0),
        .O(is_read_i_1_n_0));
  FDRE is_read_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(is_read_i_1_n_0),
        .Q(is_read_reg_n_0),
        .R(SR));
  LUT6 #(
    .INIT(64'h2000FFFF20000000)) 
    is_write_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(s_axi_arvalid),
        .I2(s_axi_awvalid),
        .I3(s_axi_wvalid),
        .I4(is_write_i_2_n_0),
        .I5(is_write_reg_n_0),
        .O(is_write_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFEAEAEAAAAAAAAA)) 
    is_write_i_2
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(s_axi_bready),
        .I2(s_axi_bvalid_i_reg_0),
        .I3(s_axi_rready),
        .I4(s_axi_rvalid_i_reg_0),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(is_write_i_2_n_0));
  FDRE is_write_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(is_write_i_1_n_0),
        .Q(is_write_reg_n_0),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    rst_i_1
       (.I0(s_axi_aresetn),
        .O(p_0_in));
  FDRE rst_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(SR),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h08FF0808)) 
    s_axi_bvalid_i_i_1
       (.I0(ip2bus_wrack_i_D1_reg),
        .I1(state[1]),
        .I2(state[0]),
        .I3(s_axi_bready),
        .I4(s_axi_bvalid_i_reg_0),
        .O(s_axi_bvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_bvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_bvalid_i_i_1_n_0),
        .Q(s_axi_bvalid_i_reg_0),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_rdata_i[0]_i_1 
       (.I0(\s_axi_rdata_i_reg[1]_0 [0]),
        .I1(s_axi_rresp_i),
        .I2(s_axi_rdata[0]),
        .O(\s_axi_rdata_i[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_rdata_i[1]_i_1 
       (.I0(\s_axi_rdata_i_reg[1]_0 [1]),
        .I1(s_axi_rresp_i),
        .I2(s_axi_rdata[1]),
        .O(\s_axi_rdata_i[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\s_axi_rdata_i[0]_i_1_n_0 ),
        .Q(s_axi_rdata[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\s_axi_rdata_i[1]_i_1_n_0 ),
        .Q(s_axi_rdata[1]),
        .R(SR));
  LUT5 #(
    .INIT(32'h08FF0808)) 
    s_axi_rvalid_i_i_1
       (.I0(ip2bus_rdack_i_D1_reg),
        .I1(state[0]),
        .I2(state[1]),
        .I3(s_axi_rready),
        .I4(s_axi_rvalid_i_reg_0),
        .O(s_axi_rvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_rvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_rvalid_i_i_1_n_0),
        .Q(s_axi_rvalid_i_reg_0),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h000000F8)) 
    start2_i_1
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .I2(s_axi_arvalid),
        .I3(state[1]),
        .I4(state[0]),
        .O(start2_i_1_n_0));
  FDRE start2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(start2_i_1_n_0),
        .Q(start2),
        .R(SR));
  LUT5 #(
    .INIT(32'h77FC44FC)) 
    \state[0]_i_1 
       (.I0(state1__2),
        .I1(state[0]),
        .I2(s_axi_arvalid),
        .I3(state[1]),
        .I4(ip2bus_wrack_i_D1_reg),
        .O(p_0_out[0]));
  LUT6 #(
    .INIT(64'h55FFFF0C5500FF0C)) 
    \state[1]_i_1 
       (.I0(state1__2),
        .I1(p_5_in),
        .I2(s_axi_arvalid),
        .I3(state[1]),
        .I4(state[0]),
        .I5(ip2bus_rdack_i_D1_reg),
        .O(p_0_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \state[1]_i_2 
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .O(p_5_in));
  FDRE \state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_out[0]),
        .Q(state[0]),
        .R(SR));
  FDRE \state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_out[1]),
        .Q(state[1]),
        .R(SR));
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
