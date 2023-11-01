// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Mon Oct 30 15:33:20 2023
// Host        : node4-dev running 64-bit Ubuntu 22.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/joao/icyradio/firmware/icyradio.gen/sources_1/bd/icyradio/ip/icyradio_axi_gpio_1_1/icyradio_axi_gpio_1_1_sim_netlist.v
// Design      : icyradio_axi_gpio_1_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "icyradio_axi_gpio_1_1,axi_gpio,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "axi_gpio,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module icyradio_axi_gpio_1_1
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
    gpio_out,
    gpio_in);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET aresetn, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN icyradio_axi_pcie_0_0_axi_aclk_out, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *) input [2:0]s_axi_awaddr;
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *) input [2:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARPROT" *) input [2:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 125000000, ID_WIDTH 0, ADDR_WIDTH 3, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN icyradio_axi_pcie_0_0_axi_aclk_out, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_rready;
  output [31:0]gpio_out;
  input [31:0]gpio_in;

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire [31:0]gpio_in;
  wire [31:0]gpio_out;
  wire [2:0]s_axi_araddr;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [2:0]s_axi_awaddr;
  wire s_axi_awready;
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

  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  icyradio_axi_gpio_1_1_axi_gpio inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .gpio_in(gpio_in),
        .gpio_out(gpio_out),
        .s_axi_araddr(s_axi_araddr[2]),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[2]),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "axi_gpio" *) 
module icyradio_axi_gpio_1_1_axi_gpio
   (s_axi_wready,
    s_axi_awready,
    s_axi_arready,
    gpio_out,
    s_axi_rdata,
    s_axi_rvalid,
    s_axi_bvalid,
    aclk,
    s_axi_wdata,
    gpio_in,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_wstrb,
    s_axi_arvalid,
    aresetn,
    s_axi_bready,
    s_axi_rready,
    s_axi_awaddr,
    s_axi_araddr);
  output s_axi_wready;
  output s_axi_awready;
  output s_axi_arready;
  output [31:0]gpio_out;
  output [31:0]s_axi_rdata;
  output s_axi_rvalid;
  output s_axi_bvalid;
  input aclk;
  input [31:0]s_axi_wdata;
  input [31:0]gpio_in;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input [3:0]s_axi_wstrb;
  input s_axi_arvalid;
  input aresetn;
  input s_axi_bready;
  input s_axi_rready;
  input [0:0]s_axi_awaddr;
  input [0:0]s_axi_araddr;

  wire aclk;
  wire aresetn;
  wire [31:0]gpio_in;
  wire \gpio_in_mask_reg_n_0_[0] ;
  wire \gpio_in_mask_reg_n_0_[1] ;
  wire \gpio_in_mask_reg_n_0_[24] ;
  wire \gpio_in_mask_reg_n_0_[25] ;
  wire \gpio_in_mask_reg_n_0_[26] ;
  wire \gpio_in_mask_reg_n_0_[27] ;
  wire \gpio_in_mask_reg_n_0_[28] ;
  wire \gpio_in_mask_reg_n_0_[29] ;
  wire \gpio_in_mask_reg_n_0_[2] ;
  wire \gpio_in_mask_reg_n_0_[30] ;
  wire \gpio_in_mask_reg_n_0_[31] ;
  wire \gpio_in_mask_reg_n_0_[3] ;
  wire \gpio_in_mask_reg_n_0_[4] ;
  wire \gpio_in_mask_reg_n_0_[5] ;
  wire \gpio_in_mask_reg_n_0_[6] ;
  wire \gpio_in_mask_reg_n_0_[7] ;
  wire [31:0]\gpio_in_sync_reg[0] ;
  wire [31:0]\gpio_in_sync_reg[1]_0 ;
  wire [31:0]gpio_out;
  wire \gpio_out[15]_i_1_n_0 ;
  wire \gpio_out[23]_i_1_n_0 ;
  wire \gpio_out[31]_i_1_n_0 ;
  wire \gpio_out[7]_i_1_n_0 ;
  wire p_0_in;
  wire [31:7]p_1_in;
  wire [7:0]p_2_in;
  wire [7:0]p_4_in;
  wire [31:0]p_7_out;
  wire [0:0]s_axi_araddr;
  wire [2:2]s_axi_araddr_q;
  wire \s_axi_araddr_q[2]_i_1_n_0 ;
  wire s_axi_arready;
  wire s_axi_arready0;
  wire s_axi_arvalid;
  wire s_axi_aw_en_i_1_n_0;
  wire s_axi_aw_en_reg_n_0;
  wire [0:0]s_axi_awaddr;
  wire \s_axi_awaddr_q[2]_i_1_n_0 ;
  wire s_axi_awready;
  wire s_axi_awready0__0;
  wire s_axi_awready_i_1_n_0;
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
  wire \s_axi_rdata[3]_i_1_n_0 ;
  wire \s_axi_rdata[4]_i_1_n_0 ;
  wire \s_axi_rdata[5]_i_1_n_0 ;
  wire \s_axi_rdata[6]_i_1_n_0 ;
  wire \s_axi_rdata[7]_i_1_n_0 ;
  wire \s_axi_rdata[8]_i_1_n_0 ;
  wire \s_axi_rdata[9]_i_1_n_0 ;
  wire s_axi_reg_rden__0;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire s_axi_rvalid_i_1_n_0;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wready0__0;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \gpio_in_mask[15]_i_1 
       (.I0(s_axi_wvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_awready),
        .I3(s_axi_wready),
        .I4(s_axi_wstrb[1]),
        .I5(p_0_in),
        .O(p_1_in[15]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \gpio_in_mask[23]_i_1 
       (.I0(s_axi_wvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_awready),
        .I3(s_axi_wready),
        .I4(s_axi_wstrb[2]),
        .I5(p_0_in),
        .O(p_1_in[23]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \gpio_in_mask[31]_i_1 
       (.I0(s_axi_wvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_awready),
        .I3(s_axi_wready),
        .I4(s_axi_wstrb[3]),
        .I5(p_0_in),
        .O(p_1_in[31]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \gpio_in_mask[7]_i_1 
       (.I0(s_axi_wvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_awready),
        .I3(s_axi_wready),
        .I4(s_axi_wstrb[0]),
        .I5(p_0_in),
        .O(p_1_in[7]));
  FDSE \gpio_in_mask_reg[0] 
       (.C(aclk),
        .CE(p_1_in[7]),
        .D(s_axi_wdata[0]),
        .Q(\gpio_in_mask_reg_n_0_[0] ),
        .S(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_mask_reg[10] 
       (.C(aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[10]),
        .Q(p_2_in[2]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_mask_reg[11] 
       (.C(aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[11]),
        .Q(p_2_in[3]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_mask_reg[12] 
       (.C(aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[12]),
        .Q(p_2_in[4]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_mask_reg[13] 
       (.C(aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[13]),
        .Q(p_2_in[5]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_mask_reg[14] 
       (.C(aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[14]),
        .Q(p_2_in[6]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_mask_reg[15] 
       (.C(aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[15]),
        .Q(p_2_in[7]),
        .R(s_axi_awready_i_1_n_0));
  FDSE \gpio_in_mask_reg[16] 
       (.C(aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[16]),
        .Q(p_4_in[0]),
        .S(s_axi_awready_i_1_n_0));
  FDSE \gpio_in_mask_reg[17] 
       (.C(aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[17]),
        .Q(p_4_in[1]),
        .S(s_axi_awready_i_1_n_0));
  FDSE \gpio_in_mask_reg[18] 
       (.C(aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[18]),
        .Q(p_4_in[2]),
        .S(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_mask_reg[19] 
       (.C(aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[19]),
        .Q(p_4_in[3]),
        .R(s_axi_awready_i_1_n_0));
  FDSE \gpio_in_mask_reg[1] 
       (.C(aclk),
        .CE(p_1_in[7]),
        .D(s_axi_wdata[1]),
        .Q(\gpio_in_mask_reg_n_0_[1] ),
        .S(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_mask_reg[20] 
       (.C(aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[20]),
        .Q(p_4_in[4]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_mask_reg[21] 
       (.C(aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[21]),
        .Q(p_4_in[5]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_mask_reg[22] 
       (.C(aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[22]),
        .Q(p_4_in[6]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_mask_reg[23] 
       (.C(aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[23]),
        .Q(p_4_in[7]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_mask_reg[24] 
       (.C(aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[24]),
        .Q(\gpio_in_mask_reg_n_0_[24] ),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_mask_reg[25] 
       (.C(aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[25]),
        .Q(\gpio_in_mask_reg_n_0_[25] ),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_mask_reg[26] 
       (.C(aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[26]),
        .Q(\gpio_in_mask_reg_n_0_[26] ),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_mask_reg[27] 
       (.C(aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[27]),
        .Q(\gpio_in_mask_reg_n_0_[27] ),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_mask_reg[28] 
       (.C(aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[28]),
        .Q(\gpio_in_mask_reg_n_0_[28] ),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_mask_reg[29] 
       (.C(aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[29]),
        .Q(\gpio_in_mask_reg_n_0_[29] ),
        .R(s_axi_awready_i_1_n_0));
  FDSE \gpio_in_mask_reg[2] 
       (.C(aclk),
        .CE(p_1_in[7]),
        .D(s_axi_wdata[2]),
        .Q(\gpio_in_mask_reg_n_0_[2] ),
        .S(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_mask_reg[30] 
       (.C(aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[30]),
        .Q(\gpio_in_mask_reg_n_0_[30] ),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_mask_reg[31] 
       (.C(aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[31]),
        .Q(\gpio_in_mask_reg_n_0_[31] ),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_mask_reg[3] 
       (.C(aclk),
        .CE(p_1_in[7]),
        .D(s_axi_wdata[3]),
        .Q(\gpio_in_mask_reg_n_0_[3] ),
        .R(s_axi_awready_i_1_n_0));
  FDSE \gpio_in_mask_reg[4] 
       (.C(aclk),
        .CE(p_1_in[7]),
        .D(s_axi_wdata[4]),
        .Q(\gpio_in_mask_reg_n_0_[4] ),
        .S(s_axi_awready_i_1_n_0));
  FDSE \gpio_in_mask_reg[5] 
       (.C(aclk),
        .CE(p_1_in[7]),
        .D(s_axi_wdata[5]),
        .Q(\gpio_in_mask_reg_n_0_[5] ),
        .S(s_axi_awready_i_1_n_0));
  FDSE \gpio_in_mask_reg[6] 
       (.C(aclk),
        .CE(p_1_in[7]),
        .D(s_axi_wdata[6]),
        .Q(\gpio_in_mask_reg_n_0_[6] ),
        .S(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_mask_reg[7] 
       (.C(aclk),
        .CE(p_1_in[7]),
        .D(s_axi_wdata[7]),
        .Q(\gpio_in_mask_reg_n_0_[7] ),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_mask_reg[8] 
       (.C(aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[8]),
        .Q(p_2_in[0]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_mask_reg[9] 
       (.C(aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[9]),
        .Q(p_2_in[1]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_sync_reg[0][0] 
       (.C(aclk),
        .CE(1'b1),
        .D(gpio_in[0]),
        .Q(\gpio_in_sync_reg[0] [0]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_sync_reg[0][10] 
       (.C(aclk),
        .CE(1'b1),
        .D(gpio_in[10]),
        .Q(\gpio_in_sync_reg[0] [10]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_sync_reg[0][11] 
       (.C(aclk),
        .CE(1'b1),
        .D(gpio_in[11]),
        .Q(\gpio_in_sync_reg[0] [11]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_sync_reg[0][12] 
       (.C(aclk),
        .CE(1'b1),
        .D(gpio_in[12]),
        .Q(\gpio_in_sync_reg[0] [12]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_sync_reg[0][13] 
       (.C(aclk),
        .CE(1'b1),
        .D(gpio_in[13]),
        .Q(\gpio_in_sync_reg[0] [13]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_sync_reg[0][14] 
       (.C(aclk),
        .CE(1'b1),
        .D(gpio_in[14]),
        .Q(\gpio_in_sync_reg[0] [14]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_sync_reg[0][15] 
       (.C(aclk),
        .CE(1'b1),
        .D(gpio_in[15]),
        .Q(\gpio_in_sync_reg[0] [15]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_sync_reg[0][16] 
       (.C(aclk),
        .CE(1'b1),
        .D(gpio_in[16]),
        .Q(\gpio_in_sync_reg[0] [16]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_sync_reg[0][17] 
       (.C(aclk),
        .CE(1'b1),
        .D(gpio_in[17]),
        .Q(\gpio_in_sync_reg[0] [17]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_sync_reg[0][18] 
       (.C(aclk),
        .CE(1'b1),
        .D(gpio_in[18]),
        .Q(\gpio_in_sync_reg[0] [18]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_sync_reg[0][19] 
       (.C(aclk),
        .CE(1'b1),
        .D(gpio_in[19]),
        .Q(\gpio_in_sync_reg[0] [19]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_sync_reg[0][1] 
       (.C(aclk),
        .CE(1'b1),
        .D(gpio_in[1]),
        .Q(\gpio_in_sync_reg[0] [1]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_sync_reg[0][20] 
       (.C(aclk),
        .CE(1'b1),
        .D(gpio_in[20]),
        .Q(\gpio_in_sync_reg[0] [20]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_sync_reg[0][21] 
       (.C(aclk),
        .CE(1'b1),
        .D(gpio_in[21]),
        .Q(\gpio_in_sync_reg[0] [21]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_sync_reg[0][22] 
       (.C(aclk),
        .CE(1'b1),
        .D(gpio_in[22]),
        .Q(\gpio_in_sync_reg[0] [22]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_sync_reg[0][23] 
       (.C(aclk),
        .CE(1'b1),
        .D(gpio_in[23]),
        .Q(\gpio_in_sync_reg[0] [23]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_sync_reg[0][24] 
       (.C(aclk),
        .CE(1'b1),
        .D(gpio_in[24]),
        .Q(\gpio_in_sync_reg[0] [24]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_sync_reg[0][25] 
       (.C(aclk),
        .CE(1'b1),
        .D(gpio_in[25]),
        .Q(\gpio_in_sync_reg[0] [25]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_sync_reg[0][26] 
       (.C(aclk),
        .CE(1'b1),
        .D(gpio_in[26]),
        .Q(\gpio_in_sync_reg[0] [26]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_sync_reg[0][27] 
       (.C(aclk),
        .CE(1'b1),
        .D(gpio_in[27]),
        .Q(\gpio_in_sync_reg[0] [27]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_sync_reg[0][28] 
       (.C(aclk),
        .CE(1'b1),
        .D(gpio_in[28]),
        .Q(\gpio_in_sync_reg[0] [28]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_sync_reg[0][29] 
       (.C(aclk),
        .CE(1'b1),
        .D(gpio_in[29]),
        .Q(\gpio_in_sync_reg[0] [29]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_sync_reg[0][2] 
       (.C(aclk),
        .CE(1'b1),
        .D(gpio_in[2]),
        .Q(\gpio_in_sync_reg[0] [2]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_sync_reg[0][30] 
       (.C(aclk),
        .CE(1'b1),
        .D(gpio_in[30]),
        .Q(\gpio_in_sync_reg[0] [30]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_sync_reg[0][31] 
       (.C(aclk),
        .CE(1'b1),
        .D(gpio_in[31]),
        .Q(\gpio_in_sync_reg[0] [31]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_sync_reg[0][3] 
       (.C(aclk),
        .CE(1'b1),
        .D(gpio_in[3]),
        .Q(\gpio_in_sync_reg[0] [3]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_sync_reg[0][4] 
       (.C(aclk),
        .CE(1'b1),
        .D(gpio_in[4]),
        .Q(\gpio_in_sync_reg[0] [4]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_sync_reg[0][5] 
       (.C(aclk),
        .CE(1'b1),
        .D(gpio_in[5]),
        .Q(\gpio_in_sync_reg[0] [5]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_sync_reg[0][6] 
       (.C(aclk),
        .CE(1'b1),
        .D(gpio_in[6]),
        .Q(\gpio_in_sync_reg[0] [6]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_sync_reg[0][7] 
       (.C(aclk),
        .CE(1'b1),
        .D(gpio_in[7]),
        .Q(\gpio_in_sync_reg[0] [7]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_sync_reg[0][8] 
       (.C(aclk),
        .CE(1'b1),
        .D(gpio_in[8]),
        .Q(\gpio_in_sync_reg[0] [8]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_sync_reg[0][9] 
       (.C(aclk),
        .CE(1'b1),
        .D(gpio_in[9]),
        .Q(\gpio_in_sync_reg[0] [9]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_sync_reg[1][0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gpio_in_sync_reg[0] [0]),
        .Q(\gpio_in_sync_reg[1]_0 [0]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_sync_reg[1][10] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gpio_in_sync_reg[0] [10]),
        .Q(\gpio_in_sync_reg[1]_0 [10]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_sync_reg[1][11] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gpio_in_sync_reg[0] [11]),
        .Q(\gpio_in_sync_reg[1]_0 [11]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_sync_reg[1][12] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gpio_in_sync_reg[0] [12]),
        .Q(\gpio_in_sync_reg[1]_0 [12]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_sync_reg[1][13] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gpio_in_sync_reg[0] [13]),
        .Q(\gpio_in_sync_reg[1]_0 [13]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_sync_reg[1][14] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gpio_in_sync_reg[0] [14]),
        .Q(\gpio_in_sync_reg[1]_0 [14]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_sync_reg[1][15] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gpio_in_sync_reg[0] [15]),
        .Q(\gpio_in_sync_reg[1]_0 [15]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_sync_reg[1][16] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gpio_in_sync_reg[0] [16]),
        .Q(\gpio_in_sync_reg[1]_0 [16]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_sync_reg[1][17] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gpio_in_sync_reg[0] [17]),
        .Q(\gpio_in_sync_reg[1]_0 [17]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_sync_reg[1][18] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gpio_in_sync_reg[0] [18]),
        .Q(\gpio_in_sync_reg[1]_0 [18]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_sync_reg[1][19] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gpio_in_sync_reg[0] [19]),
        .Q(\gpio_in_sync_reg[1]_0 [19]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_sync_reg[1][1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gpio_in_sync_reg[0] [1]),
        .Q(\gpio_in_sync_reg[1]_0 [1]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_sync_reg[1][20] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gpio_in_sync_reg[0] [20]),
        .Q(\gpio_in_sync_reg[1]_0 [20]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_sync_reg[1][21] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gpio_in_sync_reg[0] [21]),
        .Q(\gpio_in_sync_reg[1]_0 [21]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_sync_reg[1][22] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gpio_in_sync_reg[0] [22]),
        .Q(\gpio_in_sync_reg[1]_0 [22]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_sync_reg[1][23] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gpio_in_sync_reg[0] [23]),
        .Q(\gpio_in_sync_reg[1]_0 [23]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_sync_reg[1][24] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gpio_in_sync_reg[0] [24]),
        .Q(\gpio_in_sync_reg[1]_0 [24]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_sync_reg[1][25] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gpio_in_sync_reg[0] [25]),
        .Q(\gpio_in_sync_reg[1]_0 [25]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_sync_reg[1][26] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gpio_in_sync_reg[0] [26]),
        .Q(\gpio_in_sync_reg[1]_0 [26]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_sync_reg[1][27] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gpio_in_sync_reg[0] [27]),
        .Q(\gpio_in_sync_reg[1]_0 [27]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_sync_reg[1][28] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gpio_in_sync_reg[0] [28]),
        .Q(\gpio_in_sync_reg[1]_0 [28]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_sync_reg[1][29] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gpio_in_sync_reg[0] [29]),
        .Q(\gpio_in_sync_reg[1]_0 [29]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_sync_reg[1][2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gpio_in_sync_reg[0] [2]),
        .Q(\gpio_in_sync_reg[1]_0 [2]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_sync_reg[1][30] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gpio_in_sync_reg[0] [30]),
        .Q(\gpio_in_sync_reg[1]_0 [30]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_sync_reg[1][31] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gpio_in_sync_reg[0] [31]),
        .Q(\gpio_in_sync_reg[1]_0 [31]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_sync_reg[1][3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gpio_in_sync_reg[0] [3]),
        .Q(\gpio_in_sync_reg[1]_0 [3]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_sync_reg[1][4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gpio_in_sync_reg[0] [4]),
        .Q(\gpio_in_sync_reg[1]_0 [4]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_sync_reg[1][5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gpio_in_sync_reg[0] [5]),
        .Q(\gpio_in_sync_reg[1]_0 [5]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_sync_reg[1][6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gpio_in_sync_reg[0] [6]),
        .Q(\gpio_in_sync_reg[1]_0 [6]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_sync_reg[1][7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gpio_in_sync_reg[0] [7]),
        .Q(\gpio_in_sync_reg[1]_0 [7]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_sync_reg[1][8] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gpio_in_sync_reg[0] [8]),
        .Q(\gpio_in_sync_reg[1]_0 [8]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_in_sync_reg[1][9] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gpio_in_sync_reg[0] [9]),
        .Q(\gpio_in_sync_reg[1]_0 [9]),
        .R(s_axi_awready_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    \gpio_out[0]_i_1 
       (.I0(s_axi_wdata[0]),
        .I1(\gpio_in_mask_reg_n_0_[0] ),
        .O(p_7_out[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \gpio_out[10]_i_1 
       (.I0(s_axi_wdata[10]),
        .I1(p_2_in[2]),
        .O(p_7_out[10]));
  LUT2 #(
    .INIT(4'h2)) 
    \gpio_out[11]_i_1 
       (.I0(s_axi_wdata[11]),
        .I1(p_2_in[3]),
        .O(p_7_out[11]));
  LUT2 #(
    .INIT(4'h2)) 
    \gpio_out[12]_i_1 
       (.I0(s_axi_wdata[12]),
        .I1(p_2_in[4]),
        .O(p_7_out[12]));
  LUT2 #(
    .INIT(4'h2)) 
    \gpio_out[13]_i_1 
       (.I0(s_axi_wdata[13]),
        .I1(p_2_in[5]),
        .O(p_7_out[13]));
  LUT2 #(
    .INIT(4'h2)) 
    \gpio_out[14]_i_1 
       (.I0(s_axi_wdata[14]),
        .I1(p_2_in[6]),
        .O(p_7_out[14]));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \gpio_out[15]_i_1 
       (.I0(s_axi_wvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_awready),
        .I3(s_axi_wready),
        .I4(p_0_in),
        .I5(s_axi_wstrb[1]),
        .O(\gpio_out[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gpio_out[15]_i_2 
       (.I0(s_axi_wdata[15]),
        .I1(p_2_in[7]),
        .O(p_7_out[15]));
  LUT2 #(
    .INIT(4'h2)) 
    \gpio_out[16]_i_1 
       (.I0(s_axi_wdata[16]),
        .I1(p_4_in[0]),
        .O(p_7_out[16]));
  LUT2 #(
    .INIT(4'h2)) 
    \gpio_out[17]_i_1 
       (.I0(s_axi_wdata[17]),
        .I1(p_4_in[1]),
        .O(p_7_out[17]));
  LUT2 #(
    .INIT(4'h2)) 
    \gpio_out[18]_i_1 
       (.I0(s_axi_wdata[18]),
        .I1(p_4_in[2]),
        .O(p_7_out[18]));
  LUT2 #(
    .INIT(4'h2)) 
    \gpio_out[19]_i_1 
       (.I0(s_axi_wdata[19]),
        .I1(p_4_in[3]),
        .O(p_7_out[19]));
  LUT2 #(
    .INIT(4'h2)) 
    \gpio_out[1]_i_1 
       (.I0(s_axi_wdata[1]),
        .I1(\gpio_in_mask_reg_n_0_[1] ),
        .O(p_7_out[1]));
  LUT2 #(
    .INIT(4'h2)) 
    \gpio_out[20]_i_1 
       (.I0(s_axi_wdata[20]),
        .I1(p_4_in[4]),
        .O(p_7_out[20]));
  LUT2 #(
    .INIT(4'h2)) 
    \gpio_out[21]_i_1 
       (.I0(s_axi_wdata[21]),
        .I1(p_4_in[5]),
        .O(p_7_out[21]));
  LUT2 #(
    .INIT(4'h2)) 
    \gpio_out[22]_i_1 
       (.I0(s_axi_wdata[22]),
        .I1(p_4_in[6]),
        .O(p_7_out[22]));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \gpio_out[23]_i_1 
       (.I0(s_axi_wvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_awready),
        .I3(s_axi_wready),
        .I4(p_0_in),
        .I5(s_axi_wstrb[2]),
        .O(\gpio_out[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gpio_out[23]_i_2 
       (.I0(s_axi_wdata[23]),
        .I1(p_4_in[7]),
        .O(p_7_out[23]));
  LUT2 #(
    .INIT(4'h2)) 
    \gpio_out[24]_i_1 
       (.I0(s_axi_wdata[24]),
        .I1(\gpio_in_mask_reg_n_0_[24] ),
        .O(p_7_out[24]));
  LUT2 #(
    .INIT(4'h2)) 
    \gpio_out[25]_i_1 
       (.I0(s_axi_wdata[25]),
        .I1(\gpio_in_mask_reg_n_0_[25] ),
        .O(p_7_out[25]));
  LUT2 #(
    .INIT(4'h2)) 
    \gpio_out[26]_i_1 
       (.I0(s_axi_wdata[26]),
        .I1(\gpio_in_mask_reg_n_0_[26] ),
        .O(p_7_out[26]));
  LUT2 #(
    .INIT(4'h2)) 
    \gpio_out[27]_i_1 
       (.I0(s_axi_wdata[27]),
        .I1(\gpio_in_mask_reg_n_0_[27] ),
        .O(p_7_out[27]));
  LUT2 #(
    .INIT(4'h2)) 
    \gpio_out[28]_i_1 
       (.I0(s_axi_wdata[28]),
        .I1(\gpio_in_mask_reg_n_0_[28] ),
        .O(p_7_out[28]));
  LUT2 #(
    .INIT(4'h2)) 
    \gpio_out[29]_i_1 
       (.I0(s_axi_wdata[29]),
        .I1(\gpio_in_mask_reg_n_0_[29] ),
        .O(p_7_out[29]));
  LUT2 #(
    .INIT(4'h2)) 
    \gpio_out[2]_i_1 
       (.I0(s_axi_wdata[2]),
        .I1(\gpio_in_mask_reg_n_0_[2] ),
        .O(p_7_out[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \gpio_out[30]_i_1 
       (.I0(s_axi_wdata[30]),
        .I1(\gpio_in_mask_reg_n_0_[30] ),
        .O(p_7_out[30]));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \gpio_out[31]_i_1 
       (.I0(s_axi_wvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_awready),
        .I3(s_axi_wready),
        .I4(p_0_in),
        .I5(s_axi_wstrb[3]),
        .O(\gpio_out[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gpio_out[31]_i_2 
       (.I0(s_axi_wdata[31]),
        .I1(\gpio_in_mask_reg_n_0_[31] ),
        .O(p_7_out[31]));
  LUT2 #(
    .INIT(4'h2)) 
    \gpio_out[3]_i_1 
       (.I0(s_axi_wdata[3]),
        .I1(\gpio_in_mask_reg_n_0_[3] ),
        .O(p_7_out[3]));
  LUT2 #(
    .INIT(4'h2)) 
    \gpio_out[4]_i_1 
       (.I0(s_axi_wdata[4]),
        .I1(\gpio_in_mask_reg_n_0_[4] ),
        .O(p_7_out[4]));
  LUT2 #(
    .INIT(4'h2)) 
    \gpio_out[5]_i_1 
       (.I0(s_axi_wdata[5]),
        .I1(\gpio_in_mask_reg_n_0_[5] ),
        .O(p_7_out[5]));
  LUT2 #(
    .INIT(4'h2)) 
    \gpio_out[6]_i_1 
       (.I0(s_axi_wdata[6]),
        .I1(\gpio_in_mask_reg_n_0_[6] ),
        .O(p_7_out[6]));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \gpio_out[7]_i_1 
       (.I0(s_axi_wvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_awready),
        .I3(s_axi_wready),
        .I4(p_0_in),
        .I5(s_axi_wstrb[0]),
        .O(\gpio_out[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gpio_out[7]_i_2 
       (.I0(s_axi_wdata[7]),
        .I1(\gpio_in_mask_reg_n_0_[7] ),
        .O(p_7_out[7]));
  LUT2 #(
    .INIT(4'h2)) 
    \gpio_out[8]_i_1 
       (.I0(s_axi_wdata[8]),
        .I1(p_2_in[0]),
        .O(p_7_out[8]));
  LUT2 #(
    .INIT(4'h2)) 
    \gpio_out[9]_i_1 
       (.I0(s_axi_wdata[9]),
        .I1(p_2_in[1]),
        .O(p_7_out[9]));
  FDRE \gpio_out_reg[0] 
       (.C(aclk),
        .CE(\gpio_out[7]_i_1_n_0 ),
        .D(p_7_out[0]),
        .Q(gpio_out[0]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_out_reg[10] 
       (.C(aclk),
        .CE(\gpio_out[15]_i_1_n_0 ),
        .D(p_7_out[10]),
        .Q(gpio_out[10]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_out_reg[11] 
       (.C(aclk),
        .CE(\gpio_out[15]_i_1_n_0 ),
        .D(p_7_out[11]),
        .Q(gpio_out[11]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_out_reg[12] 
       (.C(aclk),
        .CE(\gpio_out[15]_i_1_n_0 ),
        .D(p_7_out[12]),
        .Q(gpio_out[12]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_out_reg[13] 
       (.C(aclk),
        .CE(\gpio_out[15]_i_1_n_0 ),
        .D(p_7_out[13]),
        .Q(gpio_out[13]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_out_reg[14] 
       (.C(aclk),
        .CE(\gpio_out[15]_i_1_n_0 ),
        .D(p_7_out[14]),
        .Q(gpio_out[14]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_out_reg[15] 
       (.C(aclk),
        .CE(\gpio_out[15]_i_1_n_0 ),
        .D(p_7_out[15]),
        .Q(gpio_out[15]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_out_reg[16] 
       (.C(aclk),
        .CE(\gpio_out[23]_i_1_n_0 ),
        .D(p_7_out[16]),
        .Q(gpio_out[16]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_out_reg[17] 
       (.C(aclk),
        .CE(\gpio_out[23]_i_1_n_0 ),
        .D(p_7_out[17]),
        .Q(gpio_out[17]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_out_reg[18] 
       (.C(aclk),
        .CE(\gpio_out[23]_i_1_n_0 ),
        .D(p_7_out[18]),
        .Q(gpio_out[18]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_out_reg[19] 
       (.C(aclk),
        .CE(\gpio_out[23]_i_1_n_0 ),
        .D(p_7_out[19]),
        .Q(gpio_out[19]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_out_reg[1] 
       (.C(aclk),
        .CE(\gpio_out[7]_i_1_n_0 ),
        .D(p_7_out[1]),
        .Q(gpio_out[1]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_out_reg[20] 
       (.C(aclk),
        .CE(\gpio_out[23]_i_1_n_0 ),
        .D(p_7_out[20]),
        .Q(gpio_out[20]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_out_reg[21] 
       (.C(aclk),
        .CE(\gpio_out[23]_i_1_n_0 ),
        .D(p_7_out[21]),
        .Q(gpio_out[21]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_out_reg[22] 
       (.C(aclk),
        .CE(\gpio_out[23]_i_1_n_0 ),
        .D(p_7_out[22]),
        .Q(gpio_out[22]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_out_reg[23] 
       (.C(aclk),
        .CE(\gpio_out[23]_i_1_n_0 ),
        .D(p_7_out[23]),
        .Q(gpio_out[23]),
        .R(s_axi_awready_i_1_n_0));
  FDSE \gpio_out_reg[24] 
       (.C(aclk),
        .CE(\gpio_out[31]_i_1_n_0 ),
        .D(p_7_out[24]),
        .Q(gpio_out[24]),
        .S(s_axi_awready_i_1_n_0));
  FDSE \gpio_out_reg[25] 
       (.C(aclk),
        .CE(\gpio_out[31]_i_1_n_0 ),
        .D(p_7_out[25]),
        .Q(gpio_out[25]),
        .S(s_axi_awready_i_1_n_0));
  FDSE \gpio_out_reg[26] 
       (.C(aclk),
        .CE(\gpio_out[31]_i_1_n_0 ),
        .D(p_7_out[26]),
        .Q(gpio_out[26]),
        .S(s_axi_awready_i_1_n_0));
  FDRE \gpio_out_reg[27] 
       (.C(aclk),
        .CE(\gpio_out[31]_i_1_n_0 ),
        .D(p_7_out[27]),
        .Q(gpio_out[27]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_out_reg[28] 
       (.C(aclk),
        .CE(\gpio_out[31]_i_1_n_0 ),
        .D(p_7_out[28]),
        .Q(gpio_out[28]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_out_reg[29] 
       (.C(aclk),
        .CE(\gpio_out[31]_i_1_n_0 ),
        .D(p_7_out[29]),
        .Q(gpio_out[29]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_out_reg[2] 
       (.C(aclk),
        .CE(\gpio_out[7]_i_1_n_0 ),
        .D(p_7_out[2]),
        .Q(gpio_out[2]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_out_reg[30] 
       (.C(aclk),
        .CE(\gpio_out[31]_i_1_n_0 ),
        .D(p_7_out[30]),
        .Q(gpio_out[30]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_out_reg[31] 
       (.C(aclk),
        .CE(\gpio_out[31]_i_1_n_0 ),
        .D(p_7_out[31]),
        .Q(gpio_out[31]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_out_reg[3] 
       (.C(aclk),
        .CE(\gpio_out[7]_i_1_n_0 ),
        .D(p_7_out[3]),
        .Q(gpio_out[3]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_out_reg[4] 
       (.C(aclk),
        .CE(\gpio_out[7]_i_1_n_0 ),
        .D(p_7_out[4]),
        .Q(gpio_out[4]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_out_reg[5] 
       (.C(aclk),
        .CE(\gpio_out[7]_i_1_n_0 ),
        .D(p_7_out[5]),
        .Q(gpio_out[5]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_out_reg[6] 
       (.C(aclk),
        .CE(\gpio_out[7]_i_1_n_0 ),
        .D(p_7_out[6]),
        .Q(gpio_out[6]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_out_reg[7] 
       (.C(aclk),
        .CE(\gpio_out[7]_i_1_n_0 ),
        .D(p_7_out[7]),
        .Q(gpio_out[7]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_out_reg[8] 
       (.C(aclk),
        .CE(\gpio_out[15]_i_1_n_0 ),
        .D(p_7_out[8]),
        .Q(gpio_out[8]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \gpio_out_reg[9] 
       (.C(aclk),
        .CE(\gpio_out[15]_i_1_n_0 ),
        .D(p_7_out[9]),
        .Q(gpio_out[9]),
        .R(s_axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'hFB08)) 
    \s_axi_araddr_q[2]_i_1 
       (.I0(s_axi_araddr),
        .I1(s_axi_arvalid),
        .I2(s_axi_arready),
        .I3(s_axi_araddr_q),
        .O(\s_axi_araddr_q[2]_i_1_n_0 ));
  FDRE \s_axi_araddr_q_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\s_axi_araddr_q[2]_i_1_n_0 ),
        .Q(s_axi_araddr_q),
        .R(s_axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_arready_i_1
       (.I0(s_axi_arvalid),
        .I1(s_axi_arready),
        .O(s_axi_arready0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *) 
  FDRE s_axi_arready_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_axi_arready0),
        .Q(s_axi_arready),
        .R(s_axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hF7FFC4CCC4CCC4CC)) 
    s_axi_aw_en_i_1
       (.I0(s_axi_awvalid),
        .I1(s_axi_aw_en_reg_n_0),
        .I2(s_axi_awready),
        .I3(s_axi_wvalid),
        .I4(s_axi_bready),
        .I5(s_axi_bvalid),
        .O(s_axi_aw_en_i_1_n_0));
  FDSE s_axi_aw_en_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_axi_aw_en_i_1_n_0),
        .Q(s_axi_aw_en_reg_n_0),
        .S(s_axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \s_axi_awaddr_q[2]_i_1 
       (.I0(s_axi_awaddr),
        .I1(s_axi_wvalid),
        .I2(s_axi_awready),
        .I3(s_axi_aw_en_reg_n_0),
        .I4(s_axi_awvalid),
        .I5(p_0_in),
        .O(\s_axi_awaddr_q[2]_i_1_n_0 ));
  FDRE \s_axi_awaddr_q_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\s_axi_awaddr_q[2]_i_1_n_0 ),
        .Q(p_0_in),
        .R(s_axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    s_axi_awready0
       (.I0(s_axi_wvalid),
        .I1(s_axi_awready),
        .I2(s_axi_aw_en_reg_n_0),
        .I3(s_axi_awvalid),
        .O(s_axi_awready0__0));
  LUT1 #(
    .INIT(2'h1)) 
    s_axi_awready_i_1
       (.I0(aresetn),
        .O(s_axi_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *) 
  FDRE s_axi_awready_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_axi_awready0__0),
        .Q(s_axi_awready),
        .R(s_axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    s_axi_bvalid_i_1
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .I2(s_axi_awready),
        .I3(s_axi_wready),
        .I4(s_axi_bready),
        .I5(s_axi_bvalid),
        .O(s_axi_bvalid_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *) 
  FDRE s_axi_bvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_axi_bvalid_i_1_n_0),
        .Q(s_axi_bvalid),
        .R(s_axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'hE5E0)) 
    \s_axi_rdata[0]_i_1 
       (.I0(s_axi_araddr_q),
        .I1(\gpio_in_sync_reg[1]_0 [0]),
        .I2(\gpio_in_mask_reg_n_0_[0] ),
        .I3(gpio_out[0]),
        .O(\s_axi_rdata[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE5E0)) 
    \s_axi_rdata[10]_i_1 
       (.I0(s_axi_araddr_q),
        .I1(\gpio_in_sync_reg[1]_0 [10]),
        .I2(p_2_in[2]),
        .I3(gpio_out[10]),
        .O(\s_axi_rdata[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE5E0)) 
    \s_axi_rdata[11]_i_1 
       (.I0(s_axi_araddr_q),
        .I1(\gpio_in_sync_reg[1]_0 [11]),
        .I2(p_2_in[3]),
        .I3(gpio_out[11]),
        .O(\s_axi_rdata[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE5E0)) 
    \s_axi_rdata[12]_i_1 
       (.I0(s_axi_araddr_q),
        .I1(\gpio_in_sync_reg[1]_0 [12]),
        .I2(p_2_in[4]),
        .I3(gpio_out[12]),
        .O(\s_axi_rdata[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE5E0)) 
    \s_axi_rdata[13]_i_1 
       (.I0(s_axi_araddr_q),
        .I1(\gpio_in_sync_reg[1]_0 [13]),
        .I2(p_2_in[5]),
        .I3(gpio_out[13]),
        .O(\s_axi_rdata[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE5E0)) 
    \s_axi_rdata[14]_i_1 
       (.I0(s_axi_araddr_q),
        .I1(\gpio_in_sync_reg[1]_0 [14]),
        .I2(p_2_in[6]),
        .I3(gpio_out[14]),
        .O(\s_axi_rdata[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE5E0)) 
    \s_axi_rdata[15]_i_1 
       (.I0(s_axi_araddr_q),
        .I1(\gpio_in_sync_reg[1]_0 [15]),
        .I2(p_2_in[7]),
        .I3(gpio_out[15]),
        .O(\s_axi_rdata[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE5E0)) 
    \s_axi_rdata[16]_i_1 
       (.I0(s_axi_araddr_q),
        .I1(\gpio_in_sync_reg[1]_0 [16]),
        .I2(p_4_in[0]),
        .I3(gpio_out[16]),
        .O(\s_axi_rdata[16]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE5E0)) 
    \s_axi_rdata[17]_i_1 
       (.I0(s_axi_araddr_q),
        .I1(\gpio_in_sync_reg[1]_0 [17]),
        .I2(p_4_in[1]),
        .I3(gpio_out[17]),
        .O(\s_axi_rdata[17]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE5E0)) 
    \s_axi_rdata[18]_i_1 
       (.I0(s_axi_araddr_q),
        .I1(\gpio_in_sync_reg[1]_0 [18]),
        .I2(p_4_in[2]),
        .I3(gpio_out[18]),
        .O(\s_axi_rdata[18]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE5E0)) 
    \s_axi_rdata[19]_i_1 
       (.I0(s_axi_araddr_q),
        .I1(\gpio_in_sync_reg[1]_0 [19]),
        .I2(p_4_in[3]),
        .I3(gpio_out[19]),
        .O(\s_axi_rdata[19]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE5E0)) 
    \s_axi_rdata[1]_i_1 
       (.I0(s_axi_araddr_q),
        .I1(\gpio_in_sync_reg[1]_0 [1]),
        .I2(\gpio_in_mask_reg_n_0_[1] ),
        .I3(gpio_out[1]),
        .O(\s_axi_rdata[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE5E0)) 
    \s_axi_rdata[20]_i_1 
       (.I0(s_axi_araddr_q),
        .I1(\gpio_in_sync_reg[1]_0 [20]),
        .I2(p_4_in[4]),
        .I3(gpio_out[20]),
        .O(\s_axi_rdata[20]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE5E0)) 
    \s_axi_rdata[21]_i_1 
       (.I0(s_axi_araddr_q),
        .I1(\gpio_in_sync_reg[1]_0 [21]),
        .I2(p_4_in[5]),
        .I3(gpio_out[21]),
        .O(\s_axi_rdata[21]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE5E0)) 
    \s_axi_rdata[22]_i_1 
       (.I0(s_axi_araddr_q),
        .I1(\gpio_in_sync_reg[1]_0 [22]),
        .I2(p_4_in[6]),
        .I3(gpio_out[22]),
        .O(\s_axi_rdata[22]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE5E0)) 
    \s_axi_rdata[23]_i_1 
       (.I0(s_axi_araddr_q),
        .I1(\gpio_in_sync_reg[1]_0 [23]),
        .I2(p_4_in[7]),
        .I3(gpio_out[23]),
        .O(\s_axi_rdata[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE5E0)) 
    \s_axi_rdata[24]_i_1 
       (.I0(s_axi_araddr_q),
        .I1(\gpio_in_sync_reg[1]_0 [24]),
        .I2(\gpio_in_mask_reg_n_0_[24] ),
        .I3(gpio_out[24]),
        .O(\s_axi_rdata[24]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE5E0)) 
    \s_axi_rdata[25]_i_1 
       (.I0(s_axi_araddr_q),
        .I1(\gpio_in_sync_reg[1]_0 [25]),
        .I2(\gpio_in_mask_reg_n_0_[25] ),
        .I3(gpio_out[25]),
        .O(\s_axi_rdata[25]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE5E0)) 
    \s_axi_rdata[26]_i_1 
       (.I0(s_axi_araddr_q),
        .I1(\gpio_in_sync_reg[1]_0 [26]),
        .I2(\gpio_in_mask_reg_n_0_[26] ),
        .I3(gpio_out[26]),
        .O(\s_axi_rdata[26]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE5E0)) 
    \s_axi_rdata[27]_i_1 
       (.I0(s_axi_araddr_q),
        .I1(\gpio_in_sync_reg[1]_0 [27]),
        .I2(\gpio_in_mask_reg_n_0_[27] ),
        .I3(gpio_out[27]),
        .O(\s_axi_rdata[27]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE5E0)) 
    \s_axi_rdata[28]_i_1 
       (.I0(s_axi_araddr_q),
        .I1(\gpio_in_sync_reg[1]_0 [28]),
        .I2(\gpio_in_mask_reg_n_0_[28] ),
        .I3(gpio_out[28]),
        .O(\s_axi_rdata[28]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE5E0)) 
    \s_axi_rdata[29]_i_1 
       (.I0(s_axi_araddr_q),
        .I1(\gpio_in_sync_reg[1]_0 [29]),
        .I2(\gpio_in_mask_reg_n_0_[29] ),
        .I3(gpio_out[29]),
        .O(\s_axi_rdata[29]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE5E0)) 
    \s_axi_rdata[2]_i_1 
       (.I0(s_axi_araddr_q),
        .I1(\gpio_in_sync_reg[1]_0 [2]),
        .I2(\gpio_in_mask_reg_n_0_[2] ),
        .I3(gpio_out[2]),
        .O(\s_axi_rdata[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE5E0)) 
    \s_axi_rdata[30]_i_1 
       (.I0(s_axi_araddr_q),
        .I1(\gpio_in_sync_reg[1]_0 [30]),
        .I2(\gpio_in_mask_reg_n_0_[30] ),
        .I3(gpio_out[30]),
        .O(\s_axi_rdata[30]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE5E0)) 
    \s_axi_rdata[31]_i_1 
       (.I0(s_axi_araddr_q),
        .I1(\gpio_in_sync_reg[1]_0 [31]),
        .I2(\gpio_in_mask_reg_n_0_[31] ),
        .I3(gpio_out[31]),
        .O(\s_axi_rdata[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE5E0)) 
    \s_axi_rdata[3]_i_1 
       (.I0(s_axi_araddr_q),
        .I1(\gpio_in_sync_reg[1]_0 [3]),
        .I2(\gpio_in_mask_reg_n_0_[3] ),
        .I3(gpio_out[3]),
        .O(\s_axi_rdata[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE5E0)) 
    \s_axi_rdata[4]_i_1 
       (.I0(s_axi_araddr_q),
        .I1(\gpio_in_sync_reg[1]_0 [4]),
        .I2(\gpio_in_mask_reg_n_0_[4] ),
        .I3(gpio_out[4]),
        .O(\s_axi_rdata[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE5E0)) 
    \s_axi_rdata[5]_i_1 
       (.I0(s_axi_araddr_q),
        .I1(\gpio_in_sync_reg[1]_0 [5]),
        .I2(\gpio_in_mask_reg_n_0_[5] ),
        .I3(gpio_out[5]),
        .O(\s_axi_rdata[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE5E0)) 
    \s_axi_rdata[6]_i_1 
       (.I0(s_axi_araddr_q),
        .I1(\gpio_in_sync_reg[1]_0 [6]),
        .I2(\gpio_in_mask_reg_n_0_[6] ),
        .I3(gpio_out[6]),
        .O(\s_axi_rdata[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE5E0)) 
    \s_axi_rdata[7]_i_1 
       (.I0(s_axi_araddr_q),
        .I1(\gpio_in_sync_reg[1]_0 [7]),
        .I2(\gpio_in_mask_reg_n_0_[7] ),
        .I3(gpio_out[7]),
        .O(\s_axi_rdata[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE5E0)) 
    \s_axi_rdata[8]_i_1 
       (.I0(s_axi_araddr_q),
        .I1(\gpio_in_sync_reg[1]_0 [8]),
        .I2(p_2_in[0]),
        .I3(gpio_out[8]),
        .O(\s_axi_rdata[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE5E0)) 
    \s_axi_rdata[9]_i_1 
       (.I0(s_axi_araddr_q),
        .I1(\gpio_in_sync_reg[1]_0 [9]),
        .I2(p_2_in[1]),
        .I3(gpio_out[9]),
        .O(\s_axi_rdata[9]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[0] 
       (.C(aclk),
        .CE(s_axi_reg_rden__0),
        .D(\s_axi_rdata[0]_i_1_n_0 ),
        .Q(s_axi_rdata[0]),
        .R(s_axi_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[10] 
       (.C(aclk),
        .CE(s_axi_reg_rden__0),
        .D(\s_axi_rdata[10]_i_1_n_0 ),
        .Q(s_axi_rdata[10]),
        .R(s_axi_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[11] 
       (.C(aclk),
        .CE(s_axi_reg_rden__0),
        .D(\s_axi_rdata[11]_i_1_n_0 ),
        .Q(s_axi_rdata[11]),
        .R(s_axi_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[12] 
       (.C(aclk),
        .CE(s_axi_reg_rden__0),
        .D(\s_axi_rdata[12]_i_1_n_0 ),
        .Q(s_axi_rdata[12]),
        .R(s_axi_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[13] 
       (.C(aclk),
        .CE(s_axi_reg_rden__0),
        .D(\s_axi_rdata[13]_i_1_n_0 ),
        .Q(s_axi_rdata[13]),
        .R(s_axi_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[14] 
       (.C(aclk),
        .CE(s_axi_reg_rden__0),
        .D(\s_axi_rdata[14]_i_1_n_0 ),
        .Q(s_axi_rdata[14]),
        .R(s_axi_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[15] 
       (.C(aclk),
        .CE(s_axi_reg_rden__0),
        .D(\s_axi_rdata[15]_i_1_n_0 ),
        .Q(s_axi_rdata[15]),
        .R(s_axi_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[16] 
       (.C(aclk),
        .CE(s_axi_reg_rden__0),
        .D(\s_axi_rdata[16]_i_1_n_0 ),
        .Q(s_axi_rdata[16]),
        .R(s_axi_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[17] 
       (.C(aclk),
        .CE(s_axi_reg_rden__0),
        .D(\s_axi_rdata[17]_i_1_n_0 ),
        .Q(s_axi_rdata[17]),
        .R(s_axi_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[18] 
       (.C(aclk),
        .CE(s_axi_reg_rden__0),
        .D(\s_axi_rdata[18]_i_1_n_0 ),
        .Q(s_axi_rdata[18]),
        .R(s_axi_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[19] 
       (.C(aclk),
        .CE(s_axi_reg_rden__0),
        .D(\s_axi_rdata[19]_i_1_n_0 ),
        .Q(s_axi_rdata[19]),
        .R(s_axi_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[1] 
       (.C(aclk),
        .CE(s_axi_reg_rden__0),
        .D(\s_axi_rdata[1]_i_1_n_0 ),
        .Q(s_axi_rdata[1]),
        .R(s_axi_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[20] 
       (.C(aclk),
        .CE(s_axi_reg_rden__0),
        .D(\s_axi_rdata[20]_i_1_n_0 ),
        .Q(s_axi_rdata[20]),
        .R(s_axi_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[21] 
       (.C(aclk),
        .CE(s_axi_reg_rden__0),
        .D(\s_axi_rdata[21]_i_1_n_0 ),
        .Q(s_axi_rdata[21]),
        .R(s_axi_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[22] 
       (.C(aclk),
        .CE(s_axi_reg_rden__0),
        .D(\s_axi_rdata[22]_i_1_n_0 ),
        .Q(s_axi_rdata[22]),
        .R(s_axi_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[23] 
       (.C(aclk),
        .CE(s_axi_reg_rden__0),
        .D(\s_axi_rdata[23]_i_1_n_0 ),
        .Q(s_axi_rdata[23]),
        .R(s_axi_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[24] 
       (.C(aclk),
        .CE(s_axi_reg_rden__0),
        .D(\s_axi_rdata[24]_i_1_n_0 ),
        .Q(s_axi_rdata[24]),
        .R(s_axi_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[25] 
       (.C(aclk),
        .CE(s_axi_reg_rden__0),
        .D(\s_axi_rdata[25]_i_1_n_0 ),
        .Q(s_axi_rdata[25]),
        .R(s_axi_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[26] 
       (.C(aclk),
        .CE(s_axi_reg_rden__0),
        .D(\s_axi_rdata[26]_i_1_n_0 ),
        .Q(s_axi_rdata[26]),
        .R(s_axi_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[27] 
       (.C(aclk),
        .CE(s_axi_reg_rden__0),
        .D(\s_axi_rdata[27]_i_1_n_0 ),
        .Q(s_axi_rdata[27]),
        .R(s_axi_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[28] 
       (.C(aclk),
        .CE(s_axi_reg_rden__0),
        .D(\s_axi_rdata[28]_i_1_n_0 ),
        .Q(s_axi_rdata[28]),
        .R(s_axi_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[29] 
       (.C(aclk),
        .CE(s_axi_reg_rden__0),
        .D(\s_axi_rdata[29]_i_1_n_0 ),
        .Q(s_axi_rdata[29]),
        .R(s_axi_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[2] 
       (.C(aclk),
        .CE(s_axi_reg_rden__0),
        .D(\s_axi_rdata[2]_i_1_n_0 ),
        .Q(s_axi_rdata[2]),
        .R(s_axi_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[30] 
       (.C(aclk),
        .CE(s_axi_reg_rden__0),
        .D(\s_axi_rdata[30]_i_1_n_0 ),
        .Q(s_axi_rdata[30]),
        .R(s_axi_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[31] 
       (.C(aclk),
        .CE(s_axi_reg_rden__0),
        .D(\s_axi_rdata[31]_i_1_n_0 ),
        .Q(s_axi_rdata[31]),
        .R(s_axi_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[3] 
       (.C(aclk),
        .CE(s_axi_reg_rden__0),
        .D(\s_axi_rdata[3]_i_1_n_0 ),
        .Q(s_axi_rdata[3]),
        .R(s_axi_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[4] 
       (.C(aclk),
        .CE(s_axi_reg_rden__0),
        .D(\s_axi_rdata[4]_i_1_n_0 ),
        .Q(s_axi_rdata[4]),
        .R(s_axi_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[5] 
       (.C(aclk),
        .CE(s_axi_reg_rden__0),
        .D(\s_axi_rdata[5]_i_1_n_0 ),
        .Q(s_axi_rdata[5]),
        .R(s_axi_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[6] 
       (.C(aclk),
        .CE(s_axi_reg_rden__0),
        .D(\s_axi_rdata[6]_i_1_n_0 ),
        .Q(s_axi_rdata[6]),
        .R(s_axi_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[7] 
       (.C(aclk),
        .CE(s_axi_reg_rden__0),
        .D(\s_axi_rdata[7]_i_1_n_0 ),
        .Q(s_axi_rdata[7]),
        .R(s_axi_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[8] 
       (.C(aclk),
        .CE(s_axi_reg_rden__0),
        .D(\s_axi_rdata[8]_i_1_n_0 ),
        .Q(s_axi_rdata[8]),
        .R(s_axi_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) 
  FDRE \s_axi_rdata_reg[9] 
       (.C(aclk),
        .CE(s_axi_reg_rden__0),
        .D(\s_axi_rdata[9]_i_1_n_0 ),
        .Q(s_axi_rdata[9]),
        .R(s_axi_awready_i_1_n_0));
  LUT3 #(
    .INIT(8'h20)) 
    s_axi_reg_rden
       (.I0(s_axi_arvalid),
        .I1(s_axi_rvalid),
        .I2(s_axi_arready),
        .O(s_axi_reg_rden__0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h08F8)) 
    s_axi_rvalid_i_1
       (.I0(s_axi_arready),
        .I1(s_axi_arvalid),
        .I2(s_axi_rvalid),
        .I3(s_axi_rready),
        .O(s_axi_rvalid_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *) 
  FDRE s_axi_rvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_axi_rvalid_i_1_n_0),
        .Q(s_axi_rvalid),
        .R(s_axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    s_axi_wready0
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .I2(s_axi_wready),
        .I3(s_axi_aw_en_reg_n_0),
        .O(s_axi_wready0__0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *) 
  FDRE s_axi_wready_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_axi_wready0__0),
        .Q(s_axi_wready),
        .R(s_axi_awready_i_1_n_0));
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
