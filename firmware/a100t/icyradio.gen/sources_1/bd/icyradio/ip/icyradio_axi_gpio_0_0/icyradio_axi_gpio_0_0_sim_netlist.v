// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Wed Mar 27 12:09:26 2024
// Host        : node4-dev running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/joao/icyradio/firmware/a100t/icyradio.gen/sources_1/bd/icyradio/ip/icyradio_axi_gpio_0_0/icyradio_axi_gpio_0_0_sim_netlist.v
// Design      : icyradio_axi_gpio_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "icyradio_axi_gpio_0_0,axi_gpio,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "axi_gpio,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module icyradio_axi_gpio_0_0
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awprot,
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
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    gpio_i,
    gpio_o,
    gpio_t);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET aresetn, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN icyradio_axi_pcie_0_0_axi_aclk_out, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *) input [4:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWPROT" *) input [2:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *) input [4:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARPROT" *) input [2:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 125000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN icyradio_axi_pcie_0_0_axi_aclk_out, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 gpio TRI_I" *) input [31:0]gpio_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 gpio TRI_O" *) output [31:0]gpio_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 gpio TRI_T" *) output [31:0]gpio_t;

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire [31:0]gpio_i;
  wire [31:0]gpio_o;
  wire [31:0]gpio_t;
  wire [4:0]s_axi_araddr;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [4:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  assign s_axi_awready = s_axi_wready;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  icyradio_axi_gpio_0_0_axi_gpio inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .gpio_i(gpio_i),
        .gpio_o(gpio_o),
        .gpio_t(gpio_t),
        .s_axi_araddr(s_axi_araddr[4:2]),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[4:2]),
        .s_axi_awready_reg_0(s_axi_wready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid_reg_0(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "axi_gpio" *) 
module icyradio_axi_gpio_0_0_axi_gpio
   (s_axi_rvalid_reg_0,
    gpio_o,
    gpio_t,
    s_axi_rdata,
    s_axi_awready_reg_0,
    s_axi_arready,
    s_axi_bvalid,
    s_axi_arvalid,
    s_axi_rready,
    aresetn,
    gpio_i,
    aclk,
    s_axi_awaddr,
    s_axi_wstrb,
    s_axi_wdata,
    s_axi_araddr,
    s_axi_bready,
    s_axi_awvalid,
    s_axi_wvalid);
  output s_axi_rvalid_reg_0;
  output [31:0]gpio_o;
  output [31:0]gpio_t;
  output [31:0]s_axi_rdata;
  output s_axi_awready_reg_0;
  output s_axi_arready;
  output s_axi_bvalid;
  input s_axi_arvalid;
  input s_axi_rready;
  input aresetn;
  input [31:0]gpio_i;
  input aclk;
  input [2:0]s_axi_awaddr;
  input [3:0]s_axi_wstrb;
  input [31:0]s_axi_wdata;
  input [2:0]s_axi_araddr;
  input s_axi_bready;
  input s_axi_awvalid;
  input s_axi_wvalid;

  wire aclk;
  wire aresetn;
  wire [31:0]gpio_i;
  wire [31:0]gpio_i_sync;
  wire [31:0]gpio_o;
  wire [31:0]gpio_t;
  wire \gpio_t[0]_i_1_n_0 ;
  wire \gpio_t[10]_i_1_n_0 ;
  wire \gpio_t[11]_i_1_n_0 ;
  wire \gpio_t[12]_i_1_n_0 ;
  wire \gpio_t[13]_i_1_n_0 ;
  wire \gpio_t[14]_i_1_n_0 ;
  wire \gpio_t[15]_i_1_n_0 ;
  wire \gpio_t[15]_i_2_n_0 ;
  wire \gpio_t[16]_i_1_n_0 ;
  wire \gpio_t[17]_i_1_n_0 ;
  wire \gpio_t[18]_i_1_n_0 ;
  wire \gpio_t[19]_i_1_n_0 ;
  wire \gpio_t[1]_i_1_n_0 ;
  wire \gpio_t[20]_i_1_n_0 ;
  wire \gpio_t[21]_i_1_n_0 ;
  wire \gpio_t[22]_i_1_n_0 ;
  wire \gpio_t[23]_i_1_n_0 ;
  wire \gpio_t[23]_i_2_n_0 ;
  wire \gpio_t[24]_i_1_n_0 ;
  wire \gpio_t[25]_i_1_n_0 ;
  wire \gpio_t[26]_i_1_n_0 ;
  wire \gpio_t[27]_i_1_n_0 ;
  wire \gpio_t[28]_i_1_n_0 ;
  wire \gpio_t[29]_i_1_n_0 ;
  wire \gpio_t[2]_i_1_n_0 ;
  wire \gpio_t[30]_i_1_n_0 ;
  wire \gpio_t[31]_i_1_n_0 ;
  wire \gpio_t[31]_i_2_n_0 ;
  wire \gpio_t[3]_i_1_n_0 ;
  wire \gpio_t[4]_i_1_n_0 ;
  wire \gpio_t[5]_i_1_n_0 ;
  wire \gpio_t[6]_i_1_n_0 ;
  wire \gpio_t[7]_i_1_n_0 ;
  wire \gpio_t[7]_i_2_n_0 ;
  wire \gpio_t[8]_i_1_n_0 ;
  wire \gpio_t[9]_i_1_n_0 ;
  wire p_0_in;
  wire [31:7]p_1_in;
  wire [31:0]p_2_in;
  wire [2:0]s_axi_araddr;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [2:0]s_axi_awaddr;
  wire s_axi_awready_i_1_n_0;
  wire s_axi_awready_reg_0;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire s_axi_bvalid_i_1_n_0;
  wire [31:0]s_axi_rdata;
  wire \s_axi_rdata[0]_i_1_n_0 ;
  wire \s_axi_rdata[10]_i_1_n_0 ;
  wire \s_axi_rdata[11]_i_1_n_0 ;
  wire \s_axi_rdata[12]_i_1_n_0 ;
  wire \s_axi_rdata[13]_i_1_n_0 ;
  wire \s_axi_rdata[14]_i_1_n_0 ;
  wire \s_axi_rdata[15]_i_1_n_0 ;
  wire \s_axi_rdata[16]_i_1_n_0 ;
  wire \s_axi_rdata[17]_i_1_n_0 ;
  wire \s_axi_rdata[18]_i_1_n_0 ;
  wire \s_axi_rdata[19]_i_1_n_0 ;
  wire \s_axi_rdata[1]_i_1_n_0 ;
  wire \s_axi_rdata[20]_i_1_n_0 ;
  wire \s_axi_rdata[21]_i_1_n_0 ;
  wire \s_axi_rdata[22]_i_1_n_0 ;
  wire \s_axi_rdata[23]_i_1_n_0 ;
  wire \s_axi_rdata[24]_i_1_n_0 ;
  wire \s_axi_rdata[25]_i_1_n_0 ;
  wire \s_axi_rdata[26]_i_1_n_0 ;
  wire \s_axi_rdata[27]_i_1_n_0 ;
  wire \s_axi_rdata[28]_i_1_n_0 ;
  wire \s_axi_rdata[29]_i_1_n_0 ;
  wire \s_axi_rdata[2]_i_1_n_0 ;
  wire \s_axi_rdata[30]_i_1_n_0 ;
  wire \s_axi_rdata[31]_i_1_n_0 ;
  wire \s_axi_rdata[31]_i_2_n_0 ;
  wire \s_axi_rdata[31]_i_3_n_0 ;
  wire \s_axi_rdata[3]_i_1_n_0 ;
  wire \s_axi_rdata[4]_i_1_n_0 ;
  wire \s_axi_rdata[5]_i_1_n_0 ;
  wire \s_axi_rdata[6]_i_1_n_0 ;
  wire \s_axi_rdata[7]_i_1_n_0 ;
  wire \s_axi_rdata[8]_i_1_n_0 ;
  wire \s_axi_rdata[9]_i_1_n_0 ;
  wire s_axi_rready;
  wire s_axi_rvalid_i_1_n_0;
  wire s_axi_rvalid_reg_0;
  wire [31:0]s_axi_wdata;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  LUT4 #(
    .INIT(16'h0AF8)) 
    \gpio_o[0]_i_1 
       (.I0(gpio_o[0]),
        .I1(s_axi_awaddr[0]),
        .I2(s_axi_wdata[0]),
        .I3(s_axi_awaddr[1]),
        .O(p_2_in[0]));
  LUT4 #(
    .INIT(16'h0AF8)) 
    \gpio_o[10]_i_1 
       (.I0(gpio_o[10]),
        .I1(s_axi_awaddr[0]),
        .I2(s_axi_wdata[10]),
        .I3(s_axi_awaddr[1]),
        .O(p_2_in[10]));
  LUT4 #(
    .INIT(16'h0AF8)) 
    \gpio_o[11]_i_1 
       (.I0(gpio_o[11]),
        .I1(s_axi_awaddr[0]),
        .I2(s_axi_wdata[11]),
        .I3(s_axi_awaddr[1]),
        .O(p_2_in[11]));
  LUT4 #(
    .INIT(16'h0AF8)) 
    \gpio_o[12]_i_1 
       (.I0(gpio_o[12]),
        .I1(s_axi_awaddr[0]),
        .I2(s_axi_wdata[12]),
        .I3(s_axi_awaddr[1]),
        .O(p_2_in[12]));
  LUT4 #(
    .INIT(16'h0AF8)) 
    \gpio_o[13]_i_1 
       (.I0(gpio_o[13]),
        .I1(s_axi_awaddr[0]),
        .I2(s_axi_wdata[13]),
        .I3(s_axi_awaddr[1]),
        .O(p_2_in[13]));
  LUT4 #(
    .INIT(16'h0AF8)) 
    \gpio_o[14]_i_1 
       (.I0(gpio_o[14]),
        .I1(s_axi_awaddr[0]),
        .I2(s_axi_wdata[14]),
        .I3(s_axi_awaddr[1]),
        .O(p_2_in[14]));
  LUT5 #(
    .INIT(32'h08880000)) 
    \gpio_o[15]_i_1 
       (.I0(s_axi_awready_reg_0),
        .I1(s_axi_awaddr[2]),
        .I2(s_axi_awaddr[1]),
        .I3(s_axi_awaddr[0]),
        .I4(s_axi_wstrb[1]),
        .O(p_1_in[15]));
  LUT4 #(
    .INIT(16'h0AF8)) 
    \gpio_o[15]_i_2 
       (.I0(gpio_o[15]),
        .I1(s_axi_awaddr[0]),
        .I2(s_axi_wdata[15]),
        .I3(s_axi_awaddr[1]),
        .O(p_2_in[15]));
  LUT4 #(
    .INIT(16'h0AF8)) 
    \gpio_o[16]_i_1 
       (.I0(gpio_o[16]),
        .I1(s_axi_awaddr[0]),
        .I2(s_axi_wdata[16]),
        .I3(s_axi_awaddr[1]),
        .O(p_2_in[16]));
  LUT4 #(
    .INIT(16'h0AF8)) 
    \gpio_o[17]_i_1 
       (.I0(gpio_o[17]),
        .I1(s_axi_awaddr[0]),
        .I2(s_axi_wdata[17]),
        .I3(s_axi_awaddr[1]),
        .O(p_2_in[17]));
  LUT4 #(
    .INIT(16'h0AF8)) 
    \gpio_o[18]_i_1 
       (.I0(gpio_o[18]),
        .I1(s_axi_awaddr[0]),
        .I2(s_axi_wdata[18]),
        .I3(s_axi_awaddr[1]),
        .O(p_2_in[18]));
  LUT4 #(
    .INIT(16'h0AF8)) 
    \gpio_o[19]_i_1 
       (.I0(gpio_o[19]),
        .I1(s_axi_awaddr[0]),
        .I2(s_axi_wdata[19]),
        .I3(s_axi_awaddr[1]),
        .O(p_2_in[19]));
  LUT4 #(
    .INIT(16'h0AF8)) 
    \gpio_o[1]_i_1 
       (.I0(gpio_o[1]),
        .I1(s_axi_awaddr[0]),
        .I2(s_axi_wdata[1]),
        .I3(s_axi_awaddr[1]),
        .O(p_2_in[1]));
  LUT4 #(
    .INIT(16'h0AF8)) 
    \gpio_o[20]_i_1 
       (.I0(gpio_o[20]),
        .I1(s_axi_awaddr[0]),
        .I2(s_axi_wdata[20]),
        .I3(s_axi_awaddr[1]),
        .O(p_2_in[20]));
  LUT4 #(
    .INIT(16'h0AF8)) 
    \gpio_o[21]_i_1 
       (.I0(gpio_o[21]),
        .I1(s_axi_awaddr[0]),
        .I2(s_axi_wdata[21]),
        .I3(s_axi_awaddr[1]),
        .O(p_2_in[21]));
  LUT4 #(
    .INIT(16'h0AF8)) 
    \gpio_o[22]_i_1 
       (.I0(gpio_o[22]),
        .I1(s_axi_awaddr[0]),
        .I2(s_axi_wdata[22]),
        .I3(s_axi_awaddr[1]),
        .O(p_2_in[22]));
  LUT5 #(
    .INIT(32'h08880000)) 
    \gpio_o[23]_i_1 
       (.I0(s_axi_awready_reg_0),
        .I1(s_axi_awaddr[2]),
        .I2(s_axi_awaddr[1]),
        .I3(s_axi_awaddr[0]),
        .I4(s_axi_wstrb[2]),
        .O(p_1_in[23]));
  LUT4 #(
    .INIT(16'h0AF8)) 
    \gpio_o[23]_i_2 
       (.I0(gpio_o[23]),
        .I1(s_axi_awaddr[0]),
        .I2(s_axi_wdata[23]),
        .I3(s_axi_awaddr[1]),
        .O(p_2_in[23]));
  LUT4 #(
    .INIT(16'h0AF8)) 
    \gpio_o[24]_i_1 
       (.I0(gpio_o[24]),
        .I1(s_axi_awaddr[0]),
        .I2(s_axi_wdata[24]),
        .I3(s_axi_awaddr[1]),
        .O(p_2_in[24]));
  LUT4 #(
    .INIT(16'h0AF8)) 
    \gpio_o[25]_i_1 
       (.I0(gpio_o[25]),
        .I1(s_axi_awaddr[0]),
        .I2(s_axi_wdata[25]),
        .I3(s_axi_awaddr[1]),
        .O(p_2_in[25]));
  LUT4 #(
    .INIT(16'h0AF8)) 
    \gpio_o[26]_i_1 
       (.I0(gpio_o[26]),
        .I1(s_axi_awaddr[0]),
        .I2(s_axi_wdata[26]),
        .I3(s_axi_awaddr[1]),
        .O(p_2_in[26]));
  LUT4 #(
    .INIT(16'h0AF8)) 
    \gpio_o[27]_i_1 
       (.I0(gpio_o[27]),
        .I1(s_axi_awaddr[0]),
        .I2(s_axi_wdata[27]),
        .I3(s_axi_awaddr[1]),
        .O(p_2_in[27]));
  LUT4 #(
    .INIT(16'h0AF8)) 
    \gpio_o[28]_i_1 
       (.I0(gpio_o[28]),
        .I1(s_axi_awaddr[0]),
        .I2(s_axi_wdata[28]),
        .I3(s_axi_awaddr[1]),
        .O(p_2_in[28]));
  LUT4 #(
    .INIT(16'h0AF8)) 
    \gpio_o[29]_i_1 
       (.I0(gpio_o[29]),
        .I1(s_axi_awaddr[0]),
        .I2(s_axi_wdata[29]),
        .I3(s_axi_awaddr[1]),
        .O(p_2_in[29]));
  LUT4 #(
    .INIT(16'h0AF8)) 
    \gpio_o[2]_i_1 
       (.I0(gpio_o[2]),
        .I1(s_axi_awaddr[0]),
        .I2(s_axi_wdata[2]),
        .I3(s_axi_awaddr[1]),
        .O(p_2_in[2]));
  LUT4 #(
    .INIT(16'h0AF8)) 
    \gpio_o[30]_i_1 
       (.I0(gpio_o[30]),
        .I1(s_axi_awaddr[0]),
        .I2(s_axi_wdata[30]),
        .I3(s_axi_awaddr[1]),
        .O(p_2_in[30]));
  LUT1 #(
    .INIT(2'h1)) 
    \gpio_o[31]_i_1 
       (.I0(aresetn),
        .O(p_0_in));
  LUT5 #(
    .INIT(32'h08880000)) 
    \gpio_o[31]_i_2 
       (.I0(s_axi_awready_reg_0),
        .I1(s_axi_awaddr[2]),
        .I2(s_axi_awaddr[1]),
        .I3(s_axi_awaddr[0]),
        .I4(s_axi_wstrb[3]),
        .O(p_1_in[31]));
  LUT4 #(
    .INIT(16'h0AF8)) 
    \gpio_o[31]_i_3 
       (.I0(gpio_o[31]),
        .I1(s_axi_awaddr[0]),
        .I2(s_axi_wdata[31]),
        .I3(s_axi_awaddr[1]),
        .O(p_2_in[31]));
  LUT4 #(
    .INIT(16'h0AF8)) 
    \gpio_o[3]_i_1 
       (.I0(gpio_o[3]),
        .I1(s_axi_awaddr[0]),
        .I2(s_axi_wdata[3]),
        .I3(s_axi_awaddr[1]),
        .O(p_2_in[3]));
  LUT4 #(
    .INIT(16'h0AF8)) 
    \gpio_o[4]_i_1 
       (.I0(gpio_o[4]),
        .I1(s_axi_awaddr[0]),
        .I2(s_axi_wdata[4]),
        .I3(s_axi_awaddr[1]),
        .O(p_2_in[4]));
  LUT4 #(
    .INIT(16'h0AF8)) 
    \gpio_o[5]_i_1 
       (.I0(gpio_o[5]),
        .I1(s_axi_awaddr[0]),
        .I2(s_axi_wdata[5]),
        .I3(s_axi_awaddr[1]),
        .O(p_2_in[5]));
  LUT4 #(
    .INIT(16'h0AF8)) 
    \gpio_o[6]_i_1 
       (.I0(gpio_o[6]),
        .I1(s_axi_awaddr[0]),
        .I2(s_axi_wdata[6]),
        .I3(s_axi_awaddr[1]),
        .O(p_2_in[6]));
  LUT5 #(
    .INIT(32'h08880000)) 
    \gpio_o[7]_i_1 
       (.I0(s_axi_awready_reg_0),
        .I1(s_axi_awaddr[2]),
        .I2(s_axi_awaddr[1]),
        .I3(s_axi_awaddr[0]),
        .I4(s_axi_wstrb[0]),
        .O(p_1_in[7]));
  LUT4 #(
    .INIT(16'h0AF8)) 
    \gpio_o[7]_i_2 
       (.I0(gpio_o[7]),
        .I1(s_axi_awaddr[0]),
        .I2(s_axi_wdata[7]),
        .I3(s_axi_awaddr[1]),
        .O(p_2_in[7]));
  LUT4 #(
    .INIT(16'h0AF8)) 
    \gpio_o[8]_i_1 
       (.I0(gpio_o[8]),
        .I1(s_axi_awaddr[0]),
        .I2(s_axi_wdata[8]),
        .I3(s_axi_awaddr[1]),
        .O(p_2_in[8]));
  LUT4 #(
    .INIT(16'h0AF8)) 
    \gpio_o[9]_i_1 
       (.I0(gpio_o[9]),
        .I1(s_axi_awaddr[0]),
        .I2(s_axi_wdata[9]),
        .I3(s_axi_awaddr[1]),
        .O(p_2_in[9]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_O" *) 
  FDRE \gpio_o_reg[0] 
       (.C(aclk),
        .CE(p_1_in[7]),
        .D(p_2_in[0]),
        .Q(gpio_o[0]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_O" *) 
  FDRE \gpio_o_reg[10] 
       (.C(aclk),
        .CE(p_1_in[15]),
        .D(p_2_in[10]),
        .Q(gpio_o[10]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_O" *) 
  FDRE \gpio_o_reg[11] 
       (.C(aclk),
        .CE(p_1_in[15]),
        .D(p_2_in[11]),
        .Q(gpio_o[11]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_O" *) 
  FDRE \gpio_o_reg[12] 
       (.C(aclk),
        .CE(p_1_in[15]),
        .D(p_2_in[12]),
        .Q(gpio_o[12]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_O" *) 
  FDRE \gpio_o_reg[13] 
       (.C(aclk),
        .CE(p_1_in[15]),
        .D(p_2_in[13]),
        .Q(gpio_o[13]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_O" *) 
  FDRE \gpio_o_reg[14] 
       (.C(aclk),
        .CE(p_1_in[15]),
        .D(p_2_in[14]),
        .Q(gpio_o[14]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_O" *) 
  FDRE \gpio_o_reg[15] 
       (.C(aclk),
        .CE(p_1_in[15]),
        .D(p_2_in[15]),
        .Q(gpio_o[15]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_O" *) 
  FDRE \gpio_o_reg[16] 
       (.C(aclk),
        .CE(p_1_in[23]),
        .D(p_2_in[16]),
        .Q(gpio_o[16]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_O" *) 
  FDRE \gpio_o_reg[17] 
       (.C(aclk),
        .CE(p_1_in[23]),
        .D(p_2_in[17]),
        .Q(gpio_o[17]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_O" *) 
  FDRE \gpio_o_reg[18] 
       (.C(aclk),
        .CE(p_1_in[23]),
        .D(p_2_in[18]),
        .Q(gpio_o[18]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_O" *) 
  FDRE \gpio_o_reg[19] 
       (.C(aclk),
        .CE(p_1_in[23]),
        .D(p_2_in[19]),
        .Q(gpio_o[19]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_O" *) 
  FDRE \gpio_o_reg[1] 
       (.C(aclk),
        .CE(p_1_in[7]),
        .D(p_2_in[1]),
        .Q(gpio_o[1]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_O" *) 
  FDRE \gpio_o_reg[20] 
       (.C(aclk),
        .CE(p_1_in[23]),
        .D(p_2_in[20]),
        .Q(gpio_o[20]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_O" *) 
  FDRE \gpio_o_reg[21] 
       (.C(aclk),
        .CE(p_1_in[23]),
        .D(p_2_in[21]),
        .Q(gpio_o[21]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_O" *) 
  FDRE \gpio_o_reg[22] 
       (.C(aclk),
        .CE(p_1_in[23]),
        .D(p_2_in[22]),
        .Q(gpio_o[22]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_O" *) 
  FDRE \gpio_o_reg[23] 
       (.C(aclk),
        .CE(p_1_in[23]),
        .D(p_2_in[23]),
        .Q(gpio_o[23]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_O" *) 
  FDRE \gpio_o_reg[24] 
       (.C(aclk),
        .CE(p_1_in[31]),
        .D(p_2_in[24]),
        .Q(gpio_o[24]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_O" *) 
  FDRE \gpio_o_reg[25] 
       (.C(aclk),
        .CE(p_1_in[31]),
        .D(p_2_in[25]),
        .Q(gpio_o[25]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_O" *) 
  FDRE \gpio_o_reg[26] 
       (.C(aclk),
        .CE(p_1_in[31]),
        .D(p_2_in[26]),
        .Q(gpio_o[26]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_O" *) 
  FDRE \gpio_o_reg[27] 
       (.C(aclk),
        .CE(p_1_in[31]),
        .D(p_2_in[27]),
        .Q(gpio_o[27]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_O" *) 
  FDRE \gpio_o_reg[28] 
       (.C(aclk),
        .CE(p_1_in[31]),
        .D(p_2_in[28]),
        .Q(gpio_o[28]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_O" *) 
  FDRE \gpio_o_reg[29] 
       (.C(aclk),
        .CE(p_1_in[31]),
        .D(p_2_in[29]),
        .Q(gpio_o[29]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_O" *) 
  FDRE \gpio_o_reg[2] 
       (.C(aclk),
        .CE(p_1_in[7]),
        .D(p_2_in[2]),
        .Q(gpio_o[2]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_O" *) 
  FDRE \gpio_o_reg[30] 
       (.C(aclk),
        .CE(p_1_in[31]),
        .D(p_2_in[30]),
        .Q(gpio_o[30]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_O" *) 
  FDSE \gpio_o_reg[31] 
       (.C(aclk),
        .CE(p_1_in[31]),
        .D(p_2_in[31]),
        .Q(gpio_o[31]),
        .S(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_O" *) 
  FDRE \gpio_o_reg[3] 
       (.C(aclk),
        .CE(p_1_in[7]),
        .D(p_2_in[3]),
        .Q(gpio_o[3]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_O" *) 
  FDRE \gpio_o_reg[4] 
       (.C(aclk),
        .CE(p_1_in[7]),
        .D(p_2_in[4]),
        .Q(gpio_o[4]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_O" *) 
  FDRE \gpio_o_reg[5] 
       (.C(aclk),
        .CE(p_1_in[7]),
        .D(p_2_in[5]),
        .Q(gpio_o[5]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_O" *) 
  FDRE \gpio_o_reg[6] 
       (.C(aclk),
        .CE(p_1_in[7]),
        .D(p_2_in[6]),
        .Q(gpio_o[6]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_O" *) 
  FDRE \gpio_o_reg[7] 
       (.C(aclk),
        .CE(p_1_in[7]),
        .D(p_2_in[7]),
        .Q(gpio_o[7]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_O" *) 
  FDRE \gpio_o_reg[8] 
       (.C(aclk),
        .CE(p_1_in[15]),
        .D(p_2_in[8]),
        .Q(gpio_o[8]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_O" *) 
  FDRE \gpio_o_reg[9] 
       (.C(aclk),
        .CE(p_1_in[15]),
        .D(p_2_in[9]),
        .Q(gpio_o[9]),
        .R(p_0_in));
  (* DEST_SYNC_FF = "3" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* SIM_ASSERT_CHK = "1" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "32" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  icyradio_axi_gpio_0_0_xpm_cdc_array_single gpio_sync
       (.dest_clk(aclk),
        .dest_out(gpio_i_sync),
        .src_clk(1'b0),
        .src_in(gpio_i));
  LUT4 #(
    .INIT(16'h5CF0)) 
    \gpio_t[0]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(gpio_t[0]),
        .I2(s_axi_wdata[0]),
        .I3(s_axi_awaddr[1]),
        .O(\gpio_t[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h5CF0)) 
    \gpio_t[10]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(gpio_t[10]),
        .I2(s_axi_wdata[10]),
        .I3(s_axi_awaddr[1]),
        .O(\gpio_t[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h5CF0)) 
    \gpio_t[11]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(gpio_t[11]),
        .I2(s_axi_wdata[11]),
        .I3(s_axi_awaddr[1]),
        .O(\gpio_t[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h5CF0)) 
    \gpio_t[12]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(gpio_t[12]),
        .I2(s_axi_wdata[12]),
        .I3(s_axi_awaddr[1]),
        .O(\gpio_t[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h5CF0)) 
    \gpio_t[13]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(gpio_t[13]),
        .I2(s_axi_wdata[13]),
        .I3(s_axi_awaddr[1]),
        .O(\gpio_t[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h5CF0)) 
    \gpio_t[14]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(gpio_t[14]),
        .I2(s_axi_wdata[14]),
        .I3(s_axi_awaddr[1]),
        .O(\gpio_t[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00008880)) 
    \gpio_t[15]_i_1 
       (.I0(s_axi_awready_reg_0),
        .I1(s_axi_wstrb[1]),
        .I2(s_axi_awaddr[1]),
        .I3(s_axi_awaddr[0]),
        .I4(s_axi_awaddr[2]),
        .O(\gpio_t[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h5CF0)) 
    \gpio_t[15]_i_2 
       (.I0(s_axi_awaddr[0]),
        .I1(gpio_t[15]),
        .I2(s_axi_wdata[15]),
        .I3(s_axi_awaddr[1]),
        .O(\gpio_t[15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h5CF0)) 
    \gpio_t[16]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(gpio_t[16]),
        .I2(s_axi_wdata[16]),
        .I3(s_axi_awaddr[1]),
        .O(\gpio_t[16]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h5CF0)) 
    \gpio_t[17]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(gpio_t[17]),
        .I2(s_axi_wdata[17]),
        .I3(s_axi_awaddr[1]),
        .O(\gpio_t[17]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h5CF0)) 
    \gpio_t[18]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(gpio_t[18]),
        .I2(s_axi_wdata[18]),
        .I3(s_axi_awaddr[1]),
        .O(\gpio_t[18]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h5CF0)) 
    \gpio_t[19]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(gpio_t[19]),
        .I2(s_axi_wdata[19]),
        .I3(s_axi_awaddr[1]),
        .O(\gpio_t[19]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h5CF0)) 
    \gpio_t[1]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(gpio_t[1]),
        .I2(s_axi_wdata[1]),
        .I3(s_axi_awaddr[1]),
        .O(\gpio_t[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h5CF0)) 
    \gpio_t[20]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(gpio_t[20]),
        .I2(s_axi_wdata[20]),
        .I3(s_axi_awaddr[1]),
        .O(\gpio_t[20]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h5CF0)) 
    \gpio_t[21]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(gpio_t[21]),
        .I2(s_axi_wdata[21]),
        .I3(s_axi_awaddr[1]),
        .O(\gpio_t[21]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h5CF0)) 
    \gpio_t[22]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(gpio_t[22]),
        .I2(s_axi_wdata[22]),
        .I3(s_axi_awaddr[1]),
        .O(\gpio_t[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00008880)) 
    \gpio_t[23]_i_1 
       (.I0(s_axi_awready_reg_0),
        .I1(s_axi_wstrb[2]),
        .I2(s_axi_awaddr[1]),
        .I3(s_axi_awaddr[0]),
        .I4(s_axi_awaddr[2]),
        .O(\gpio_t[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h5CF0)) 
    \gpio_t[23]_i_2 
       (.I0(s_axi_awaddr[0]),
        .I1(gpio_t[23]),
        .I2(s_axi_wdata[23]),
        .I3(s_axi_awaddr[1]),
        .O(\gpio_t[23]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h5CF0)) 
    \gpio_t[24]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(gpio_t[24]),
        .I2(s_axi_wdata[24]),
        .I3(s_axi_awaddr[1]),
        .O(\gpio_t[24]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h5CF0)) 
    \gpio_t[25]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(gpio_t[25]),
        .I2(s_axi_wdata[25]),
        .I3(s_axi_awaddr[1]),
        .O(\gpio_t[25]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h5CF0)) 
    \gpio_t[26]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(gpio_t[26]),
        .I2(s_axi_wdata[26]),
        .I3(s_axi_awaddr[1]),
        .O(\gpio_t[26]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h5CF0)) 
    \gpio_t[27]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(gpio_t[27]),
        .I2(s_axi_wdata[27]),
        .I3(s_axi_awaddr[1]),
        .O(\gpio_t[27]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h5CF0)) 
    \gpio_t[28]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(gpio_t[28]),
        .I2(s_axi_wdata[28]),
        .I3(s_axi_awaddr[1]),
        .O(\gpio_t[28]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h5CF0)) 
    \gpio_t[29]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(gpio_t[29]),
        .I2(s_axi_wdata[29]),
        .I3(s_axi_awaddr[1]),
        .O(\gpio_t[29]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h5CF0)) 
    \gpio_t[2]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(gpio_t[2]),
        .I2(s_axi_wdata[2]),
        .I3(s_axi_awaddr[1]),
        .O(\gpio_t[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h5CF0)) 
    \gpio_t[30]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(gpio_t[30]),
        .I2(s_axi_wdata[30]),
        .I3(s_axi_awaddr[1]),
        .O(\gpio_t[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00008880)) 
    \gpio_t[31]_i_1 
       (.I0(s_axi_awready_reg_0),
        .I1(s_axi_wstrb[3]),
        .I2(s_axi_awaddr[1]),
        .I3(s_axi_awaddr[0]),
        .I4(s_axi_awaddr[2]),
        .O(\gpio_t[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h5CF0)) 
    \gpio_t[31]_i_2 
       (.I0(s_axi_awaddr[0]),
        .I1(gpio_t[31]),
        .I2(s_axi_wdata[31]),
        .I3(s_axi_awaddr[1]),
        .O(\gpio_t[31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h5CF0)) 
    \gpio_t[3]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(gpio_t[3]),
        .I2(s_axi_wdata[3]),
        .I3(s_axi_awaddr[1]),
        .O(\gpio_t[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h5CF0)) 
    \gpio_t[4]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(gpio_t[4]),
        .I2(s_axi_wdata[4]),
        .I3(s_axi_awaddr[1]),
        .O(\gpio_t[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h5CF0)) 
    \gpio_t[5]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(gpio_t[5]),
        .I2(s_axi_wdata[5]),
        .I3(s_axi_awaddr[1]),
        .O(\gpio_t[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h5CF0)) 
    \gpio_t[6]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(gpio_t[6]),
        .I2(s_axi_wdata[6]),
        .I3(s_axi_awaddr[1]),
        .O(\gpio_t[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00008880)) 
    \gpio_t[7]_i_1 
       (.I0(s_axi_awready_reg_0),
        .I1(s_axi_wstrb[0]),
        .I2(s_axi_awaddr[1]),
        .I3(s_axi_awaddr[0]),
        .I4(s_axi_awaddr[2]),
        .O(\gpio_t[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h5CF0)) 
    \gpio_t[7]_i_2 
       (.I0(s_axi_awaddr[0]),
        .I1(gpio_t[7]),
        .I2(s_axi_wdata[7]),
        .I3(s_axi_awaddr[1]),
        .O(\gpio_t[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h5CF0)) 
    \gpio_t[8]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(gpio_t[8]),
        .I2(s_axi_wdata[8]),
        .I3(s_axi_awaddr[1]),
        .O(\gpio_t[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h5CF0)) 
    \gpio_t[9]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(gpio_t[9]),
        .I2(s_axi_wdata[9]),
        .I3(s_axi_awaddr[1]),
        .O(\gpio_t[9]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_T" *) 
  FDRE \gpio_t_reg[0] 
       (.C(aclk),
        .CE(\gpio_t[7]_i_1_n_0 ),
        .D(\gpio_t[0]_i_1_n_0 ),
        .Q(gpio_t[0]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_T" *) 
  FDSE \gpio_t_reg[10] 
       (.C(aclk),
        .CE(\gpio_t[15]_i_1_n_0 ),
        .D(\gpio_t[10]_i_1_n_0 ),
        .Q(gpio_t[10]),
        .S(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_T" *) 
  FDSE \gpio_t_reg[11] 
       (.C(aclk),
        .CE(\gpio_t[15]_i_1_n_0 ),
        .D(\gpio_t[11]_i_1_n_0 ),
        .Q(gpio_t[11]),
        .S(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_T" *) 
  FDSE \gpio_t_reg[12] 
       (.C(aclk),
        .CE(\gpio_t[15]_i_1_n_0 ),
        .D(\gpio_t[12]_i_1_n_0 ),
        .Q(gpio_t[12]),
        .S(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_T" *) 
  FDSE \gpio_t_reg[13] 
       (.C(aclk),
        .CE(\gpio_t[15]_i_1_n_0 ),
        .D(\gpio_t[13]_i_1_n_0 ),
        .Q(gpio_t[13]),
        .S(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_T" *) 
  FDSE \gpio_t_reg[14] 
       (.C(aclk),
        .CE(\gpio_t[15]_i_1_n_0 ),
        .D(\gpio_t[14]_i_1_n_0 ),
        .Q(gpio_t[14]),
        .S(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_T" *) 
  FDSE \gpio_t_reg[15] 
       (.C(aclk),
        .CE(\gpio_t[15]_i_1_n_0 ),
        .D(\gpio_t[15]_i_2_n_0 ),
        .Q(gpio_t[15]),
        .S(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_T" *) 
  FDSE \gpio_t_reg[16] 
       (.C(aclk),
        .CE(\gpio_t[23]_i_1_n_0 ),
        .D(\gpio_t[16]_i_1_n_0 ),
        .Q(gpio_t[16]),
        .S(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_T" *) 
  FDSE \gpio_t_reg[17] 
       (.C(aclk),
        .CE(\gpio_t[23]_i_1_n_0 ),
        .D(\gpio_t[17]_i_1_n_0 ),
        .Q(gpio_t[17]),
        .S(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_T" *) 
  FDSE \gpio_t_reg[18] 
       (.C(aclk),
        .CE(\gpio_t[23]_i_1_n_0 ),
        .D(\gpio_t[18]_i_1_n_0 ),
        .Q(gpio_t[18]),
        .S(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_T" *) 
  FDSE \gpio_t_reg[19] 
       (.C(aclk),
        .CE(\gpio_t[23]_i_1_n_0 ),
        .D(\gpio_t[19]_i_1_n_0 ),
        .Q(gpio_t[19]),
        .S(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_T" *) 
  FDRE \gpio_t_reg[1] 
       (.C(aclk),
        .CE(\gpio_t[7]_i_1_n_0 ),
        .D(\gpio_t[1]_i_1_n_0 ),
        .Q(gpio_t[1]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_T" *) 
  FDRE \gpio_t_reg[20] 
       (.C(aclk),
        .CE(\gpio_t[23]_i_1_n_0 ),
        .D(\gpio_t[20]_i_1_n_0 ),
        .Q(gpio_t[20]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_T" *) 
  FDRE \gpio_t_reg[21] 
       (.C(aclk),
        .CE(\gpio_t[23]_i_1_n_0 ),
        .D(\gpio_t[21]_i_1_n_0 ),
        .Q(gpio_t[21]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_T" *) 
  FDSE \gpio_t_reg[22] 
       (.C(aclk),
        .CE(\gpio_t[23]_i_1_n_0 ),
        .D(\gpio_t[22]_i_1_n_0 ),
        .Q(gpio_t[22]),
        .S(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_T" *) 
  FDSE \gpio_t_reg[23] 
       (.C(aclk),
        .CE(\gpio_t[23]_i_1_n_0 ),
        .D(\gpio_t[23]_i_2_n_0 ),
        .Q(gpio_t[23]),
        .S(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_T" *) 
  FDRE \gpio_t_reg[24] 
       (.C(aclk),
        .CE(\gpio_t[31]_i_1_n_0 ),
        .D(\gpio_t[24]_i_1_n_0 ),
        .Q(gpio_t[24]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_T" *) 
  FDSE \gpio_t_reg[25] 
       (.C(aclk),
        .CE(\gpio_t[31]_i_1_n_0 ),
        .D(\gpio_t[25]_i_1_n_0 ),
        .Q(gpio_t[25]),
        .S(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_T" *) 
  FDRE \gpio_t_reg[26] 
       (.C(aclk),
        .CE(\gpio_t[31]_i_1_n_0 ),
        .D(\gpio_t[26]_i_1_n_0 ),
        .Q(gpio_t[26]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_T" *) 
  FDRE \gpio_t_reg[27] 
       (.C(aclk),
        .CE(\gpio_t[31]_i_1_n_0 ),
        .D(\gpio_t[27]_i_1_n_0 ),
        .Q(gpio_t[27]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_T" *) 
  FDRE \gpio_t_reg[28] 
       (.C(aclk),
        .CE(\gpio_t[31]_i_1_n_0 ),
        .D(\gpio_t[28]_i_1_n_0 ),
        .Q(gpio_t[28]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_T" *) 
  FDRE \gpio_t_reg[29] 
       (.C(aclk),
        .CE(\gpio_t[31]_i_1_n_0 ),
        .D(\gpio_t[29]_i_1_n_0 ),
        .Q(gpio_t[29]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_T" *) 
  FDRE \gpio_t_reg[2] 
       (.C(aclk),
        .CE(\gpio_t[7]_i_1_n_0 ),
        .D(\gpio_t[2]_i_1_n_0 ),
        .Q(gpio_t[2]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_T" *) 
  FDRE \gpio_t_reg[30] 
       (.C(aclk),
        .CE(\gpio_t[31]_i_1_n_0 ),
        .D(\gpio_t[30]_i_1_n_0 ),
        .Q(gpio_t[30]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_T" *) 
  FDRE \gpio_t_reg[31] 
       (.C(aclk),
        .CE(\gpio_t[31]_i_1_n_0 ),
        .D(\gpio_t[31]_i_2_n_0 ),
        .Q(gpio_t[31]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_T" *) 
  FDRE \gpio_t_reg[3] 
       (.C(aclk),
        .CE(\gpio_t[7]_i_1_n_0 ),
        .D(\gpio_t[3]_i_1_n_0 ),
        .Q(gpio_t[3]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_T" *) 
  FDRE \gpio_t_reg[4] 
       (.C(aclk),
        .CE(\gpio_t[7]_i_1_n_0 ),
        .D(\gpio_t[4]_i_1_n_0 ),
        .Q(gpio_t[4]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_T" *) 
  FDRE \gpio_t_reg[5] 
       (.C(aclk),
        .CE(\gpio_t[7]_i_1_n_0 ),
        .D(\gpio_t[5]_i_1_n_0 ),
        .Q(gpio_t[5]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_T" *) 
  FDRE \gpio_t_reg[6] 
       (.C(aclk),
        .CE(\gpio_t[7]_i_1_n_0 ),
        .D(\gpio_t[6]_i_1_n_0 ),
        .Q(gpio_t[6]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_T" *) 
  FDRE \gpio_t_reg[7] 
       (.C(aclk),
        .CE(\gpio_t[7]_i_1_n_0 ),
        .D(\gpio_t[7]_i_2_n_0 ),
        .Q(gpio_t[7]),
        .R(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_T" *) 
  FDSE \gpio_t_reg[8] 
       (.C(aclk),
        .CE(\gpio_t[15]_i_1_n_0 ),
        .D(\gpio_t[8]_i_1_n_0 ),
        .Q(gpio_t[8]),
        .S(p_0_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio_rtl:1.0 gpio TRI_T" *) 
  FDSE \gpio_t_reg[9] 
       (.C(aclk),
        .CE(\gpio_t[15]_i_1_n_0 ),
        .D(\gpio_t[9]_i_1_n_0 ),
        .Q(gpio_t[9]),
        .S(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    s_axi_arready_INST_0
       (.I0(s_axi_rvalid_reg_0),
        .O(s_axi_arready));
  LUT6 #(
    .INIT(64'h0808000800000000)) 
    s_axi_awready_i_1
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .I2(s_axi_awready_reg_0),
        .I3(s_axi_bvalid),
        .I4(s_axi_bready),
        .I5(aresetn),
        .O(s_axi_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *) 
  FDRE s_axi_awready_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_axi_awready_i_1_n_0),
        .Q(s_axi_awready_reg_0),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hF200)) 
    s_axi_bvalid_i_1
       (.I0(s_axi_bvalid),
        .I1(s_axi_bready),
        .I2(s_axi_awready_reg_0),
        .I3(aresetn),
        .O(s_axi_bvalid_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *) 
  FDRE s_axi_bvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_axi_bvalid_i_1_n_0),
        .Q(s_axi_bvalid),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hCFC0AFA0AFA0A0A0)) 
    \s_axi_rdata[0]_i_1 
       (.I0(gpio_o[0]),
        .I1(gpio_i_sync[0]),
        .I2(s_axi_araddr[2]),
        .I3(gpio_t[0]),
        .I4(s_axi_araddr[0]),
        .I5(s_axi_araddr[1]),
        .O(\s_axi_rdata[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFA0AFA0A0A0)) 
    \s_axi_rdata[10]_i_1 
       (.I0(gpio_o[10]),
        .I1(gpio_i_sync[10]),
        .I2(s_axi_araddr[2]),
        .I3(gpio_t[10]),
        .I4(s_axi_araddr[0]),
        .I5(s_axi_araddr[1]),
        .O(\s_axi_rdata[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFA0AFA0A0A0)) 
    \s_axi_rdata[11]_i_1 
       (.I0(gpio_o[11]),
        .I1(gpio_i_sync[11]),
        .I2(s_axi_araddr[2]),
        .I3(gpio_t[11]),
        .I4(s_axi_araddr[0]),
        .I5(s_axi_araddr[1]),
        .O(\s_axi_rdata[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFA0AFA0A0A0)) 
    \s_axi_rdata[12]_i_1 
       (.I0(gpio_o[12]),
        .I1(gpio_i_sync[12]),
        .I2(s_axi_araddr[2]),
        .I3(gpio_t[12]),
        .I4(s_axi_araddr[0]),
        .I5(s_axi_araddr[1]),
        .O(\s_axi_rdata[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFA0AFA0A0A0)) 
    \s_axi_rdata[13]_i_1 
       (.I0(gpio_o[13]),
        .I1(gpio_i_sync[13]),
        .I2(s_axi_araddr[2]),
        .I3(gpio_t[13]),
        .I4(s_axi_araddr[0]),
        .I5(s_axi_araddr[1]),
        .O(\s_axi_rdata[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFA0AFA0A0A0)) 
    \s_axi_rdata[14]_i_1 
       (.I0(gpio_o[14]),
        .I1(gpio_i_sync[14]),
        .I2(s_axi_araddr[2]),
        .I3(gpio_t[14]),
        .I4(s_axi_araddr[0]),
        .I5(s_axi_araddr[1]),
        .O(\s_axi_rdata[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFA0AFA0A0A0)) 
    \s_axi_rdata[15]_i_1 
       (.I0(gpio_o[15]),
        .I1(gpio_i_sync[15]),
        .I2(s_axi_araddr[2]),
        .I3(gpio_t[15]),
        .I4(s_axi_araddr[0]),
        .I5(s_axi_araddr[1]),
        .O(\s_axi_rdata[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCAAAAAAF0F0F0FF)) 
    \s_axi_rdata[16]_i_1 
       (.I0(gpio_o[16]),
        .I1(gpio_i_sync[16]),
        .I2(gpio_t[16]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .I5(s_axi_araddr[2]),
        .O(\s_axi_rdata[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFA0AFA0A0A0)) 
    \s_axi_rdata[17]_i_1 
       (.I0(gpio_o[17]),
        .I1(gpio_i_sync[17]),
        .I2(s_axi_araddr[2]),
        .I3(gpio_t[17]),
        .I4(s_axi_araddr[0]),
        .I5(s_axi_araddr[1]),
        .O(\s_axi_rdata[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFA0AFA0A0A0)) 
    \s_axi_rdata[18]_i_1 
       (.I0(gpio_o[18]),
        .I1(gpio_i_sync[18]),
        .I2(s_axi_araddr[2]),
        .I3(gpio_t[18]),
        .I4(s_axi_araddr[0]),
        .I5(s_axi_araddr[1]),
        .O(\s_axi_rdata[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFA0AFA0A0A0)) 
    \s_axi_rdata[19]_i_1 
       (.I0(gpio_o[19]),
        .I1(gpio_i_sync[19]),
        .I2(s_axi_araddr[2]),
        .I3(gpio_t[19]),
        .I4(s_axi_araddr[0]),
        .I5(s_axi_araddr[1]),
        .O(\s_axi_rdata[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFA0AFA0A0A0)) 
    \s_axi_rdata[1]_i_1 
       (.I0(gpio_o[1]),
        .I1(gpio_i_sync[1]),
        .I2(s_axi_araddr[2]),
        .I3(gpio_t[1]),
        .I4(s_axi_araddr[0]),
        .I5(s_axi_araddr[1]),
        .O(\s_axi_rdata[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFA0AFA0A0A0)) 
    \s_axi_rdata[20]_i_1 
       (.I0(gpio_o[20]),
        .I1(gpio_i_sync[20]),
        .I2(s_axi_araddr[2]),
        .I3(gpio_t[20]),
        .I4(s_axi_araddr[0]),
        .I5(s_axi_araddr[1]),
        .O(\s_axi_rdata[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFA0AFA0A0A0)) 
    \s_axi_rdata[21]_i_1 
       (.I0(gpio_o[21]),
        .I1(gpio_i_sync[21]),
        .I2(s_axi_araddr[2]),
        .I3(gpio_t[21]),
        .I4(s_axi_araddr[0]),
        .I5(s_axi_araddr[1]),
        .O(\s_axi_rdata[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFA0AFA0A0A0)) 
    \s_axi_rdata[22]_i_1 
       (.I0(gpio_o[22]),
        .I1(gpio_i_sync[22]),
        .I2(s_axi_araddr[2]),
        .I3(gpio_t[22]),
        .I4(s_axi_araddr[0]),
        .I5(s_axi_araddr[1]),
        .O(\s_axi_rdata[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFA0AFA0A0A0)) 
    \s_axi_rdata[23]_i_1 
       (.I0(gpio_o[23]),
        .I1(gpio_i_sync[23]),
        .I2(s_axi_araddr[2]),
        .I3(gpio_t[23]),
        .I4(s_axi_araddr[0]),
        .I5(s_axi_araddr[1]),
        .O(\s_axi_rdata[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFA0AFA0A0A0)) 
    \s_axi_rdata[24]_i_1 
       (.I0(gpio_o[24]),
        .I1(gpio_i_sync[24]),
        .I2(s_axi_araddr[2]),
        .I3(gpio_t[24]),
        .I4(s_axi_araddr[0]),
        .I5(s_axi_araddr[1]),
        .O(\s_axi_rdata[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFA0AFA0A0A0)) 
    \s_axi_rdata[25]_i_1 
       (.I0(gpio_o[25]),
        .I1(gpio_i_sync[25]),
        .I2(s_axi_araddr[2]),
        .I3(gpio_t[25]),
        .I4(s_axi_araddr[0]),
        .I5(s_axi_araddr[1]),
        .O(\s_axi_rdata[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFA0AFA0A0A0)) 
    \s_axi_rdata[26]_i_1 
       (.I0(gpio_o[26]),
        .I1(gpio_i_sync[26]),
        .I2(s_axi_araddr[2]),
        .I3(gpio_t[26]),
        .I4(s_axi_araddr[0]),
        .I5(s_axi_araddr[1]),
        .O(\s_axi_rdata[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFA0AFA0A0A0)) 
    \s_axi_rdata[27]_i_1 
       (.I0(gpio_o[27]),
        .I1(gpio_i_sync[27]),
        .I2(s_axi_araddr[2]),
        .I3(gpio_t[27]),
        .I4(s_axi_araddr[0]),
        .I5(s_axi_araddr[1]),
        .O(\s_axi_rdata[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFA0AFA0A0A0)) 
    \s_axi_rdata[28]_i_1 
       (.I0(gpio_o[28]),
        .I1(gpio_i_sync[28]),
        .I2(s_axi_araddr[2]),
        .I3(gpio_t[28]),
        .I4(s_axi_araddr[0]),
        .I5(s_axi_araddr[1]),
        .O(\s_axi_rdata[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFA0AFA0A0A0)) 
    \s_axi_rdata[29]_i_1 
       (.I0(gpio_o[29]),
        .I1(gpio_i_sync[29]),
        .I2(s_axi_araddr[2]),
        .I3(gpio_t[29]),
        .I4(s_axi_araddr[0]),
        .I5(s_axi_araddr[1]),
        .O(\s_axi_rdata[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFA0AFA0A0A0)) 
    \s_axi_rdata[2]_i_1 
       (.I0(gpio_o[2]),
        .I1(gpio_i_sync[2]),
        .I2(s_axi_araddr[2]),
        .I3(gpio_t[2]),
        .I4(s_axi_araddr[0]),
        .I5(s_axi_araddr[1]),
        .O(\s_axi_rdata[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFA0AFA0A0A0)) 
    \s_axi_rdata[30]_i_1 
       (.I0(gpio_o[30]),
        .I1(gpio_i_sync[30]),
        .I2(s_axi_araddr[2]),
        .I3(gpio_t[30]),
        .I4(s_axi_araddr[0]),
        .I5(s_axi_araddr[1]),
        .O(\s_axi_rdata[30]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hD0FF)) 
    \s_axi_rdata[31]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_axi_rvalid_reg_0),
        .I2(s_axi_rready),
        .I3(aresetn),
        .O(\s_axi_rdata[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[31]_i_2 
       (.I0(s_axi_arvalid),
        .I1(s_axi_rvalid_reg_0),
        .O(\s_axi_rdata[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFA0AFA0A0A0)) 
    \s_axi_rdata[31]_i_3 
       (.I0(gpio_o[31]),
        .I1(gpio_i_sync[31]),
        .I2(s_axi_araddr[2]),
        .I3(gpio_t[31]),
        .I4(s_axi_araddr[0]),
        .I5(s_axi_araddr[1]),
        .O(\s_axi_rdata[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFA0AFA0A0A0)) 
    \s_axi_rdata[3]_i_1 
       (.I0(gpio_o[3]),
        .I1(gpio_i_sync[3]),
        .I2(s_axi_araddr[2]),
        .I3(gpio_t[3]),
        .I4(s_axi_araddr[0]),
        .I5(s_axi_araddr[1]),
        .O(\s_axi_rdata[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFA0AFA0A0A0)) 
    \s_axi_rdata[4]_i_1 
       (.I0(gpio_o[4]),
        .I1(gpio_i_sync[4]),
        .I2(s_axi_araddr[2]),
        .I3(gpio_t[4]),
        .I4(s_axi_araddr[0]),
        .I5(s_axi_araddr[1]),
        .O(\s_axi_rdata[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFA0AFA0A0A0)) 
    \s_axi_rdata[5]_i_1 
       (.I0(gpio_o[5]),
        .I1(gpio_i_sync[5]),
        .I2(s_axi_araddr[2]),
        .I3(gpio_t[5]),
        .I4(s_axi_araddr[0]),
        .I5(s_axi_araddr[1]),
        .O(\s_axi_rdata[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFA0AFA0A0A0)) 
    \s_axi_rdata[6]_i_1 
       (.I0(gpio_o[6]),
        .I1(gpio_i_sync[6]),
        .I2(s_axi_araddr[2]),
        .I3(gpio_t[6]),
        .I4(s_axi_araddr[0]),
        .I5(s_axi_araddr[1]),
        .O(\s_axi_rdata[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFA0AFA0A0A0)) 
    \s_axi_rdata[7]_i_1 
       (.I0(gpio_o[7]),
        .I1(gpio_i_sync[7]),
        .I2(s_axi_araddr[2]),
        .I3(gpio_t[7]),
        .I4(s_axi_araddr[0]),
        .I5(s_axi_araddr[1]),
        .O(\s_axi_rdata[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFA0AFA0A0A0)) 
    \s_axi_rdata[8]_i_1 
       (.I0(gpio_o[8]),
        .I1(gpio_i_sync[8]),
        .I2(s_axi_araddr[2]),
        .I3(gpio_t[8]),
        .I4(s_axi_araddr[0]),
        .I5(s_axi_araddr[1]),
        .O(\s_axi_rdata[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFA0AFA0A0A0)) 
    \s_axi_rdata[9]_i_1 
       (.I0(gpio_o[9]),
        .I1(gpio_i_sync[9]),
        .I2(s_axi_araddr[2]),
        .I3(gpio_t[9]),
        .I4(s_axi_araddr[0]),
        .I5(s_axi_araddr[1]),
        .O(\s_axi_rdata[9]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[0] 
       (.C(aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(\s_axi_rdata[0]_i_1_n_0 ),
        .Q(s_axi_rdata[0]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[10] 
       (.C(aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(\s_axi_rdata[10]_i_1_n_0 ),
        .Q(s_axi_rdata[10]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[11] 
       (.C(aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(\s_axi_rdata[11]_i_1_n_0 ),
        .Q(s_axi_rdata[11]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[12] 
       (.C(aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(\s_axi_rdata[12]_i_1_n_0 ),
        .Q(s_axi_rdata[12]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[13] 
       (.C(aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(\s_axi_rdata[13]_i_1_n_0 ),
        .Q(s_axi_rdata[13]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[14] 
       (.C(aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(\s_axi_rdata[14]_i_1_n_0 ),
        .Q(s_axi_rdata[14]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[15] 
       (.C(aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(\s_axi_rdata[15]_i_1_n_0 ),
        .Q(s_axi_rdata[15]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[16] 
       (.C(aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(\s_axi_rdata[16]_i_1_n_0 ),
        .Q(s_axi_rdata[16]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[17] 
       (.C(aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(\s_axi_rdata[17]_i_1_n_0 ),
        .Q(s_axi_rdata[17]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[18] 
       (.C(aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(\s_axi_rdata[18]_i_1_n_0 ),
        .Q(s_axi_rdata[18]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[19] 
       (.C(aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(\s_axi_rdata[19]_i_1_n_0 ),
        .Q(s_axi_rdata[19]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[1] 
       (.C(aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(\s_axi_rdata[1]_i_1_n_0 ),
        .Q(s_axi_rdata[1]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[20] 
       (.C(aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(\s_axi_rdata[20]_i_1_n_0 ),
        .Q(s_axi_rdata[20]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[21] 
       (.C(aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(\s_axi_rdata[21]_i_1_n_0 ),
        .Q(s_axi_rdata[21]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[22] 
       (.C(aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(\s_axi_rdata[22]_i_1_n_0 ),
        .Q(s_axi_rdata[22]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[23] 
       (.C(aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(\s_axi_rdata[23]_i_1_n_0 ),
        .Q(s_axi_rdata[23]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[24] 
       (.C(aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(\s_axi_rdata[24]_i_1_n_0 ),
        .Q(s_axi_rdata[24]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[25] 
       (.C(aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(\s_axi_rdata[25]_i_1_n_0 ),
        .Q(s_axi_rdata[25]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[26] 
       (.C(aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(\s_axi_rdata[26]_i_1_n_0 ),
        .Q(s_axi_rdata[26]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[27] 
       (.C(aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(\s_axi_rdata[27]_i_1_n_0 ),
        .Q(s_axi_rdata[27]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[28] 
       (.C(aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(\s_axi_rdata[28]_i_1_n_0 ),
        .Q(s_axi_rdata[28]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[29] 
       (.C(aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(\s_axi_rdata[29]_i_1_n_0 ),
        .Q(s_axi_rdata[29]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[2] 
       (.C(aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(\s_axi_rdata[2]_i_1_n_0 ),
        .Q(s_axi_rdata[2]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[30] 
       (.C(aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(\s_axi_rdata[30]_i_1_n_0 ),
        .Q(s_axi_rdata[30]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[31] 
       (.C(aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(\s_axi_rdata[31]_i_3_n_0 ),
        .Q(s_axi_rdata[31]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[3] 
       (.C(aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(\s_axi_rdata[3]_i_1_n_0 ),
        .Q(s_axi_rdata[3]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[4] 
       (.C(aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(\s_axi_rdata[4]_i_1_n_0 ),
        .Q(s_axi_rdata[4]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[5] 
       (.C(aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(\s_axi_rdata[5]_i_1_n_0 ),
        .Q(s_axi_rdata[5]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[6] 
       (.C(aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(\s_axi_rdata[6]_i_1_n_0 ),
        .Q(s_axi_rdata[6]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[7] 
       (.C(aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(\s_axi_rdata[7]_i_1_n_0 ),
        .Q(s_axi_rdata[7]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[8] 
       (.C(aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(\s_axi_rdata[8]_i_1_n_0 ),
        .Q(s_axi_rdata[8]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[9] 
       (.C(aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(\s_axi_rdata[9]_i_1_n_0 ),
        .Q(s_axi_rdata[9]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h5C00)) 
    s_axi_rvalid_i_1
       (.I0(s_axi_rready),
        .I1(s_axi_arvalid),
        .I2(s_axi_rvalid_reg_0),
        .I3(aresetn),
        .O(s_axi_rvalid_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *) 
  FDRE s_axi_rvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_axi_rvalid_i_1_n_0),
        .Q(s_axi_rvalid_reg_0),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "3" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_array_single" *) 
(* SIM_ASSERT_CHK = "1" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* WIDTH = "32" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ARRAY_SINGLE" *) 
module icyradio_axi_gpio_0_0_xpm_cdc_array_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input [31:0]src_in;
  input dest_clk;
  output [31:0]dest_out;

  wire [31:0]async_path_bit;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [31:0]\syncstages_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [31:0]\syncstages_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [31:0]\syncstages_ff[2] ;

  assign async_path_bit = src_in[31:0];
  assign dest_out[31:0] = \syncstages_ff[2] ;
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[0]),
        .Q(\syncstages_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[10]),
        .Q(\syncstages_ff[0] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[11]),
        .Q(\syncstages_ff[0] [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][12] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[12]),
        .Q(\syncstages_ff[0] [12]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][13] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[13]),
        .Q(\syncstages_ff[0] [13]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][14] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[14]),
        .Q(\syncstages_ff[0] [14]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][15] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[15]),
        .Q(\syncstages_ff[0] [15]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][16] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[16]),
        .Q(\syncstages_ff[0] [16]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][17] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[17]),
        .Q(\syncstages_ff[0] [17]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][18] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[18]),
        .Q(\syncstages_ff[0] [18]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][19] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[19]),
        .Q(\syncstages_ff[0] [19]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[1]),
        .Q(\syncstages_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][20] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[20]),
        .Q(\syncstages_ff[0] [20]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][21] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[21]),
        .Q(\syncstages_ff[0] [21]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][22] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[22]),
        .Q(\syncstages_ff[0] [22]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][23] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[23]),
        .Q(\syncstages_ff[0] [23]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][24] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[24]),
        .Q(\syncstages_ff[0] [24]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][25] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[25]),
        .Q(\syncstages_ff[0] [25]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][26] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[26]),
        .Q(\syncstages_ff[0] [26]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][27] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[27]),
        .Q(\syncstages_ff[0] [27]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][28] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[28]),
        .Q(\syncstages_ff[0] [28]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][29] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[29]),
        .Q(\syncstages_ff[0] [29]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[2]),
        .Q(\syncstages_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][30] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[30]),
        .Q(\syncstages_ff[0] [30]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][31] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[31]),
        .Q(\syncstages_ff[0] [31]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[3]),
        .Q(\syncstages_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[4]),
        .Q(\syncstages_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[5]),
        .Q(\syncstages_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[6]),
        .Q(\syncstages_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[7]),
        .Q(\syncstages_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[8]),
        .Q(\syncstages_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[9]),
        .Q(\syncstages_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [0]),
        .Q(\syncstages_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [10]),
        .Q(\syncstages_ff[1] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [11]),
        .Q(\syncstages_ff[1] [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][12] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [12]),
        .Q(\syncstages_ff[1] [12]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][13] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [13]),
        .Q(\syncstages_ff[1] [13]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][14] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [14]),
        .Q(\syncstages_ff[1] [14]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][15] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [15]),
        .Q(\syncstages_ff[1] [15]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][16] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [16]),
        .Q(\syncstages_ff[1] [16]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][17] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [17]),
        .Q(\syncstages_ff[1] [17]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][18] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [18]),
        .Q(\syncstages_ff[1] [18]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][19] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [19]),
        .Q(\syncstages_ff[1] [19]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [1]),
        .Q(\syncstages_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][20] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [20]),
        .Q(\syncstages_ff[1] [20]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][21] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [21]),
        .Q(\syncstages_ff[1] [21]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][22] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [22]),
        .Q(\syncstages_ff[1] [22]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][23] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [23]),
        .Q(\syncstages_ff[1] [23]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][24] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [24]),
        .Q(\syncstages_ff[1] [24]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][25] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [25]),
        .Q(\syncstages_ff[1] [25]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][26] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [26]),
        .Q(\syncstages_ff[1] [26]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][27] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [27]),
        .Q(\syncstages_ff[1] [27]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][28] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [28]),
        .Q(\syncstages_ff[1] [28]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][29] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [29]),
        .Q(\syncstages_ff[1] [29]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [2]),
        .Q(\syncstages_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][30] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [30]),
        .Q(\syncstages_ff[1] [30]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][31] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [31]),
        .Q(\syncstages_ff[1] [31]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [3]),
        .Q(\syncstages_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [4]),
        .Q(\syncstages_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [5]),
        .Q(\syncstages_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [6]),
        .Q(\syncstages_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [7]),
        .Q(\syncstages_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [8]),
        .Q(\syncstages_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [9]),
        .Q(\syncstages_ff[1] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [0]),
        .Q(\syncstages_ff[2] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [10]),
        .Q(\syncstages_ff[2] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [11]),
        .Q(\syncstages_ff[2] [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][12] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [12]),
        .Q(\syncstages_ff[2] [12]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][13] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [13]),
        .Q(\syncstages_ff[2] [13]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][14] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [14]),
        .Q(\syncstages_ff[2] [14]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][15] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [15]),
        .Q(\syncstages_ff[2] [15]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][16] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [16]),
        .Q(\syncstages_ff[2] [16]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][17] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [17]),
        .Q(\syncstages_ff[2] [17]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][18] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [18]),
        .Q(\syncstages_ff[2] [18]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][19] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [19]),
        .Q(\syncstages_ff[2] [19]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [1]),
        .Q(\syncstages_ff[2] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][20] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [20]),
        .Q(\syncstages_ff[2] [20]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][21] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [21]),
        .Q(\syncstages_ff[2] [21]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][22] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [22]),
        .Q(\syncstages_ff[2] [22]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][23] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [23]),
        .Q(\syncstages_ff[2] [23]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][24] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [24]),
        .Q(\syncstages_ff[2] [24]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][25] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [25]),
        .Q(\syncstages_ff[2] [25]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][26] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [26]),
        .Q(\syncstages_ff[2] [26]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][27] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [27]),
        .Q(\syncstages_ff[2] [27]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][28] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [28]),
        .Q(\syncstages_ff[2] [28]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][29] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [29]),
        .Q(\syncstages_ff[2] [29]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [2]),
        .Q(\syncstages_ff[2] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][30] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [30]),
        .Q(\syncstages_ff[2] [30]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][31] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [31]),
        .Q(\syncstages_ff[2] [31]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [3]),
        .Q(\syncstages_ff[2] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [4]),
        .Q(\syncstages_ff[2] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [5]),
        .Q(\syncstages_ff[2] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [6]),
        .Q(\syncstages_ff[2] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [7]),
        .Q(\syncstages_ff[2] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [8]),
        .Q(\syncstages_ff[2] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [9]),
        .Q(\syncstages_ff[2] [9]),
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
