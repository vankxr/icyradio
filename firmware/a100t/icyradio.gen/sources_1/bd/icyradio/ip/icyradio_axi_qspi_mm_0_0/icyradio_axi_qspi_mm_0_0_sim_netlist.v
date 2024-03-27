// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Wed Mar 27 12:09:37 2024
// Host        : node4-dev running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/joao/icyradio/firmware/a100t/icyradio.gen/sources_1/bd/icyradio/ip/icyradio_axi_qspi_mm_0_0/icyradio_axi_qspi_mm_0_0_sim_netlist.v
// Design      : icyradio_axi_qspi_mm_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "icyradio_axi_qspi_mm_0_0,axi_qspi_mm,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "axi_qspi_mm,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module icyradio_axi_qspi_mm_0_0
   (aclk,
    aresetn,
    s_axi_lite_awaddr,
    s_axi_lite_awprot,
    s_axi_lite_awvalid,
    s_axi_lite_awready,
    s_axi_lite_wdata,
    s_axi_lite_wstrb,
    s_axi_lite_wvalid,
    s_axi_lite_wready,
    s_axi_lite_bresp,
    s_axi_lite_bvalid,
    s_axi_lite_bready,
    s_axi_lite_araddr,
    s_axi_lite_arprot,
    s_axi_lite_arvalid,
    s_axi_lite_arready,
    s_axi_lite_rdata,
    s_axi_lite_rresp,
    s_axi_lite_rvalid,
    s_axi_lite_rready,
    irq,
    s_axi_full_awid,
    s_axi_full_awaddr,
    s_axi_full_awlen,
    s_axi_full_awsize,
    s_axi_full_awburst,
    s_axi_full_awlock,
    s_axi_full_awcache,
    s_axi_full_awprot,
    s_axi_full_awqos,
    s_axi_full_awvalid,
    s_axi_full_awready,
    s_axi_full_wdata,
    s_axi_full_wstrb,
    s_axi_full_wlast,
    s_axi_full_wvalid,
    s_axi_full_wready,
    s_axi_full_bid,
    s_axi_full_bresp,
    s_axi_full_bvalid,
    s_axi_full_bready,
    s_axi_full_arid,
    s_axi_full_araddr,
    s_axi_full_arlen,
    s_axi_full_arsize,
    s_axi_full_arburst,
    s_axi_full_arlock,
    s_axi_full_arcache,
    s_axi_full_arprot,
    s_axi_full_arqos,
    s_axi_full_arvalid,
    s_axi_full_arready,
    s_axi_full_rid,
    s_axi_full_rdata,
    s_axi_full_rresp,
    s_axi_full_rlast,
    s_axi_full_rvalid,
    s_axi_full_rready,
    spi_sck_i,
    spi_sck_o,
    spi_sck_t,
    spi_ss_i,
    spi_ss_o,
    spi_ss_t,
    spi_io0_i,
    spi_io0_o,
    spi_io0_t,
    spi_io1_i,
    spi_io1_o,
    spi_io1_t,
    spi_io2_i,
    spi_io2_o,
    spi_io2_t,
    spi_io3_i,
    spi_io3_o,
    spi_io3_t);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF s_axi_lite:s_axi_full, ASSOCIATED_RESET aresetn, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN icyradio_axi_pcie_0_0_axi_aclk_out, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite AWADDR" *) input [5:0]s_axi_lite_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite AWPROT" *) input [2:0]s_axi_lite_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite AWVALID" *) input s_axi_lite_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite AWREADY" *) output s_axi_lite_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite WDATA" *) input [31:0]s_axi_lite_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite WSTRB" *) input [3:0]s_axi_lite_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite WVALID" *) input s_axi_lite_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite WREADY" *) output s_axi_lite_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite BRESP" *) output [1:0]s_axi_lite_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite BVALID" *) output s_axi_lite_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite BREADY" *) input s_axi_lite_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite ARADDR" *) input [5:0]s_axi_lite_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite ARPROT" *) input [2:0]s_axi_lite_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite ARVALID" *) input s_axi_lite_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite ARREADY" *) output s_axi_lite_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite RDATA" *) output [31:0]s_axi_lite_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite RRESP" *) output [1:0]s_axi_lite_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite RVALID" *) output s_axi_lite_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_lite, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 125000000, ID_WIDTH 0, ADDR_WIDTH 6, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN icyradio_axi_pcie_0_0_axi_aclk_out, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_lite_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 irq INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME irq, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output irq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full AWID" *) input [3:0]s_axi_full_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full AWADDR" *) input [23:0]s_axi_full_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full AWLEN" *) input [7:0]s_axi_full_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full AWSIZE" *) input [2:0]s_axi_full_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full AWBURST" *) input [1:0]s_axi_full_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full AWLOCK" *) input s_axi_full_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full AWCACHE" *) input [3:0]s_axi_full_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full AWPROT" *) input [2:0]s_axi_full_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full AWQOS" *) input [3:0]s_axi_full_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full AWVALID" *) input s_axi_full_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full AWREADY" *) output s_axi_full_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full WDATA" *) input [63:0]s_axi_full_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full WSTRB" *) input [7:0]s_axi_full_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full WLAST" *) input s_axi_full_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full WVALID" *) input s_axi_full_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full WREADY" *) output s_axi_full_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full BID" *) output [3:0]s_axi_full_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full BRESP" *) output [1:0]s_axi_full_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full BVALID" *) output s_axi_full_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full BREADY" *) input s_axi_full_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full ARID" *) input [3:0]s_axi_full_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full ARADDR" *) input [23:0]s_axi_full_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full ARLEN" *) input [7:0]s_axi_full_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full ARSIZE" *) input [2:0]s_axi_full_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full ARBURST" *) input [1:0]s_axi_full_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full ARLOCK" *) input s_axi_full_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full ARCACHE" *) input [3:0]s_axi_full_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full ARPROT" *) input [2:0]s_axi_full_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full ARQOS" *) input [3:0]s_axi_full_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full ARVALID" *) input s_axi_full_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full ARREADY" *) output s_axi_full_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RID" *) output [3:0]s_axi_full_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) output [63:0]s_axi_full_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RRESP" *) output [1:0]s_axi_full_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RLAST" *) output s_axi_full_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RVALID" *) output s_axi_full_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_full, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 125000000, ID_WIDTH 4, ADDR_WIDTH 24, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN icyradio_axi_pcie_0_0_axi_aclk_out, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_full_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi SCK_I" *) input spi_sck_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi SCK_O" *) output spi_sck_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi SCK_T" *) output spi_sck_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi SS_I" *) input [0:0]spi_ss_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi SS_O" *) output [0:0]spi_ss_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi SS_T" *) output spi_ss_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi IO0_I" *) input spi_io0_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi IO0_O" *) output spi_io0_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi IO0_T" *) output spi_io0_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi IO1_I" *) input spi_io1_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi IO1_O" *) output spi_io1_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi IO1_T" *) output spi_io1_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi IO2_I" *) input spi_io2_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi IO2_O" *) output spi_io2_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi IO2_T" *) output spi_io2_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi IO3_I" *) input spi_io3_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi IO3_O" *) output spi_io3_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi IO3_T" *) output spi_io3_t;

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire irq;
  wire [23:0]s_axi_full_araddr;
  wire [3:0]s_axi_full_arid;
  wire [7:0]s_axi_full_arlen;
  wire s_axi_full_arready;
  wire [2:0]s_axi_full_arsize;
  wire s_axi_full_arvalid;
  wire [3:0]s_axi_full_awid;
  wire s_axi_full_awready;
  wire s_axi_full_awvalid;
  wire [3:0]s_axi_full_bid;
  wire s_axi_full_bready;
  wire s_axi_full_bvalid;
  wire [63:0]s_axi_full_rdata;
  wire [3:0]s_axi_full_rid;
  wire s_axi_full_rlast;
  wire s_axi_full_rready;
  wire s_axi_full_rvalid;
  wire s_axi_full_wlast;
  wire s_axi_full_wready;
  wire s_axi_full_wvalid;
  wire [5:0]s_axi_lite_araddr;
  wire s_axi_lite_arready;
  wire s_axi_lite_arvalid;
  wire [5:0]s_axi_lite_awaddr;
  wire s_axi_lite_awvalid;
  wire s_axi_lite_bready;
  wire s_axi_lite_bvalid;
  wire [31:0]s_axi_lite_rdata;
  wire s_axi_lite_rready;
  wire s_axi_lite_rvalid;
  wire [31:0]s_axi_lite_wdata;
  wire s_axi_lite_wready;
  wire [3:0]s_axi_lite_wstrb;
  wire s_axi_lite_wvalid;
  wire spi_io0_i;
  wire spi_io0_o;
  wire spi_io0_t;
  wire spi_io1_i;
  wire spi_io1_o;
  wire spi_io1_t;
  wire spi_io2_i;
  wire spi_io2_o;
  wire spi_io2_t;
  wire spi_io3_i;
  wire spi_io3_o;
  wire spi_sck_o;
  wire [0:0]spi_ss_o;

  assign s_axi_full_bresp[1] = \<const0> ;
  assign s_axi_full_bresp[0] = \<const0> ;
  assign s_axi_full_rresp[1] = \<const0> ;
  assign s_axi_full_rresp[0] = \<const0> ;
  assign s_axi_lite_awready = s_axi_lite_wready;
  assign s_axi_lite_bresp[1] = \<const0> ;
  assign s_axi_lite_bresp[0] = \<const0> ;
  assign s_axi_lite_rresp[1] = \<const0> ;
  assign s_axi_lite_rresp[0] = \<const0> ;
  assign spi_io3_t = spi_io2_t;
  assign spi_sck_t = \<const0> ;
  assign spi_ss_t = \<const0> ;
  GND GND
       (.G(\<const0> ));
  icyradio_axi_qspi_mm_0_0_axi_qspi_mm inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .irq(irq),
        .s_axi_full_araddr(s_axi_full_araddr),
        .s_axi_full_arid(s_axi_full_arid),
        .s_axi_full_arlen(s_axi_full_arlen),
        .s_axi_full_arready_reg_0(s_axi_full_arready),
        .s_axi_full_arsize(s_axi_full_arsize),
        .s_axi_full_arvalid(s_axi_full_arvalid),
        .s_axi_full_awid(s_axi_full_awid),
        .s_axi_full_awready_reg_0(s_axi_full_awready),
        .s_axi_full_awvalid(s_axi_full_awvalid),
        .s_axi_full_bid(s_axi_full_bid),
        .s_axi_full_bready(s_axi_full_bready),
        .s_axi_full_bvalid(s_axi_full_bvalid),
        .s_axi_full_rdata(s_axi_full_rdata),
        .s_axi_full_rid(s_axi_full_rid),
        .s_axi_full_rlast(s_axi_full_rlast),
        .s_axi_full_rready(s_axi_full_rready),
        .s_axi_full_rvalid_reg_0(s_axi_full_rvalid),
        .s_axi_full_wlast(s_axi_full_wlast),
        .s_axi_full_wready(s_axi_full_wready),
        .s_axi_full_wvalid(s_axi_full_wvalid),
        .s_axi_lite_araddr(s_axi_lite_araddr[5:2]),
        .s_axi_lite_arready(s_axi_lite_arready),
        .s_axi_lite_arvalid(s_axi_lite_arvalid),
        .s_axi_lite_awaddr(s_axi_lite_awaddr[5:2]),
        .s_axi_lite_awready(s_axi_lite_wready),
        .s_axi_lite_awvalid(s_axi_lite_awvalid),
        .s_axi_lite_bready(s_axi_lite_bready),
        .s_axi_lite_bvalid(s_axi_lite_bvalid),
        .s_axi_lite_rdata(s_axi_lite_rdata),
        .s_axi_lite_rready(s_axi_lite_rready),
        .s_axi_lite_rvalid_reg_0(s_axi_lite_rvalid),
        .s_axi_lite_wdata({s_axi_lite_wdata[31:16],s_axi_lite_wdata[14:12],s_axi_lite_wdata[10:0]}),
        .s_axi_lite_wstrb(s_axi_lite_wstrb),
        .s_axi_lite_wvalid(s_axi_lite_wvalid),
        .spi_io0_i(spi_io0_i),
        .spi_io0_o(spi_io0_o),
        .spi_io0_t(spi_io0_t),
        .spi_io1_i(spi_io1_i),
        .spi_io1_o(spi_io1_o),
        .spi_io1_t(spi_io1_t),
        .spi_io2_i(spi_io2_i),
        .spi_io2_o(spi_io2_o),
        .spi_io2_t(spi_io2_t),
        .spi_io3_i(spi_io3_i),
        .spi_io3_o(spi_io3_o),
        .spi_sck_o(spi_sck_o),
        .\spi_ss_o_reg[0]_0 (spi_ss_o));
endmodule

(* ORIG_REF_NAME = "axi_qspi_mm" *) 
module icyradio_axi_qspi_mm_0_0_axi_qspi_mm
   (s_axi_full_rvalid_reg_0,
    s_axi_full_rlast,
    s_axi_lite_awready,
    s_axi_lite_rdata,
    s_axi_full_wready,
    s_axi_full_bid,
    s_axi_full_rid,
    s_axi_full_rdata,
    spi_io0_o,
    spi_io1_o,
    spi_io3_o,
    spi_io2_o,
    spi_io2_t,
    spi_io1_t,
    spi_io0_t,
    s_axi_lite_rvalid_reg_0,
    s_axi_lite_arready,
    s_axi_full_arready_reg_0,
    \spi_ss_o_reg[0]_0 ,
    s_axi_full_awready_reg_0,
    s_axi_full_bvalid,
    spi_sck_o,
    s_axi_lite_bvalid,
    irq,
    s_axi_full_rready,
    s_axi_full_arsize,
    aclk,
    s_axi_lite_wdata,
    spi_io3_i,
    spi_io2_i,
    spi_io1_i,
    spi_io0_i,
    s_axi_full_awid,
    s_axi_full_arid,
    s_axi_lite_arvalid,
    s_axi_lite_rready,
    aresetn,
    s_axi_lite_araddr,
    s_axi_lite_awaddr,
    s_axi_lite_wstrb,
    s_axi_full_arvalid,
    s_axi_full_awvalid,
    s_axi_full_bready,
    s_axi_full_wlast,
    s_axi_full_wvalid,
    s_axi_full_araddr,
    s_axi_lite_wvalid,
    s_axi_lite_awvalid,
    s_axi_lite_bready,
    s_axi_full_arlen);
  output s_axi_full_rvalid_reg_0;
  output s_axi_full_rlast;
  output s_axi_lite_awready;
  output [31:0]s_axi_lite_rdata;
  output s_axi_full_wready;
  output [3:0]s_axi_full_bid;
  output [3:0]s_axi_full_rid;
  output [63:0]s_axi_full_rdata;
  output spi_io0_o;
  output spi_io1_o;
  output spi_io3_o;
  output spi_io2_o;
  output spi_io2_t;
  output spi_io1_t;
  output spi_io0_t;
  output s_axi_lite_rvalid_reg_0;
  output s_axi_lite_arready;
  output s_axi_full_arready_reg_0;
  output \spi_ss_o_reg[0]_0 ;
  output s_axi_full_awready_reg_0;
  output s_axi_full_bvalid;
  output spi_sck_o;
  output s_axi_lite_bvalid;
  output irq;
  input s_axi_full_rready;
  input [2:0]s_axi_full_arsize;
  input aclk;
  input [29:0]s_axi_lite_wdata;
  input spi_io3_i;
  input spi_io2_i;
  input spi_io1_i;
  input spi_io0_i;
  input [3:0]s_axi_full_awid;
  input [3:0]s_axi_full_arid;
  input s_axi_lite_arvalid;
  input s_axi_lite_rready;
  input aresetn;
  input [3:0]s_axi_lite_araddr;
  input [3:0]s_axi_lite_awaddr;
  input [3:0]s_axi_lite_wstrb;
  input s_axi_full_arvalid;
  input s_axi_full_awvalid;
  input s_axi_full_bready;
  input s_axi_full_wlast;
  input s_axi_full_wvalid;
  input [23:0]s_axi_full_araddr;
  input s_axi_lite_wvalid;
  input s_axi_lite_awvalid;
  input s_axi_lite_bready;
  input [7:0]s_axi_full_arlen;

  wire \FSM_onehot_spi_fsm_state[2]_i_2_n_0 ;
  wire \FSM_onehot_spi_fsm_state_reg_n_0_[0] ;
  wire \FSM_onehot_spi_fsm_state_reg_n_0_[1] ;
  wire \FSM_onehot_spi_fsm_state_reg_n_0_[2] ;
  wire aclk;
  wire aresetn;
  wire data00;
  wire [7:0]data10;
  wire [7:0]data5;
  wire irq;
  wire irq_enabled;
  wire \irq_enabled_reg_n_0_[0] ;
  wire \irq_enabled_reg_n_0_[1] ;
  wire \irq_enabled_reg_n_0_[2] ;
  wire \irq_enabled_reg_n_0_[3] ;
  wire \irq_enabled_reg_n_0_[4] ;
  wire \irq_enabled_reg_n_0_[5] ;
  wire \irq_enabled_reg_n_0_[6] ;
  wire \irq_pend[0]_i_1_n_0 ;
  wire \irq_pend[1]_i_1_n_0 ;
  wire \irq_pend[2]_i_1_n_0 ;
  wire \irq_pend[2]_i_2_n_0 ;
  wire \irq_pend_reg_n_0_[0] ;
  wire \irq_pend_reg_n_0_[1] ;
  wire \irq_pend_reg_n_0_[2] ;
  wire [7:0]p_0_in;
  wire [7:0]p_0_out;
  wire [31:0]p_1_in;
  wire [0:0]p_2_in;
  wire p_5_in;
  wire [23:0]s_axi_full_araddr;
  wire [23:1]s_axi_full_araddr_q0;
  wire \s_axi_full_araddr_q[0]_i_1_n_0 ;
  wire \s_axi_full_araddr_q[10]_i_1_n_0 ;
  wire \s_axi_full_araddr_q[11]_i_1_n_0 ;
  wire \s_axi_full_araddr_q[12]_i_1_n_0 ;
  wire \s_axi_full_araddr_q[13]_i_1_n_0 ;
  wire \s_axi_full_araddr_q[14]_i_1_n_0 ;
  wire \s_axi_full_araddr_q[15]_i_1_n_0 ;
  wire \s_axi_full_araddr_q[16]_i_1_n_0 ;
  wire \s_axi_full_araddr_q[17]_i_1_n_0 ;
  wire \s_axi_full_araddr_q[18]_i_1_n_0 ;
  wire \s_axi_full_araddr_q[19]_i_1_n_0 ;
  wire \s_axi_full_araddr_q[1]_i_1_n_0 ;
  wire \s_axi_full_araddr_q[20]_i_1_n_0 ;
  wire \s_axi_full_araddr_q[21]_i_1_n_0 ;
  wire \s_axi_full_araddr_q[22]_i_1_n_0 ;
  wire \s_axi_full_araddr_q[23]_i_1_n_0 ;
  wire \s_axi_full_araddr_q[23]_i_2_n_0 ;
  wire \s_axi_full_araddr_q[23]_i_3_n_0 ;
  wire \s_axi_full_araddr_q[2]_i_1_n_0 ;
  wire \s_axi_full_araddr_q[3]_i_1_n_0 ;
  wire \s_axi_full_araddr_q[4]_i_1_n_0 ;
  wire \s_axi_full_araddr_q[5]_i_1_n_0 ;
  wire \s_axi_full_araddr_q[6]_i_1_n_0 ;
  wire \s_axi_full_araddr_q[7]_i_1_n_0 ;
  wire \s_axi_full_araddr_q[8]_i_1_n_0 ;
  wire \s_axi_full_araddr_q[9]_i_1_n_0 ;
  wire \s_axi_full_araddr_q_reg[12]_i_2_n_0 ;
  wire \s_axi_full_araddr_q_reg[12]_i_2_n_1 ;
  wire \s_axi_full_araddr_q_reg[12]_i_2_n_2 ;
  wire \s_axi_full_araddr_q_reg[12]_i_2_n_3 ;
  wire \s_axi_full_araddr_q_reg[16]_i_2_n_0 ;
  wire \s_axi_full_araddr_q_reg[16]_i_2_n_1 ;
  wire \s_axi_full_araddr_q_reg[16]_i_2_n_2 ;
  wire \s_axi_full_araddr_q_reg[16]_i_2_n_3 ;
  wire \s_axi_full_araddr_q_reg[20]_i_2_n_0 ;
  wire \s_axi_full_araddr_q_reg[20]_i_2_n_1 ;
  wire \s_axi_full_araddr_q_reg[20]_i_2_n_2 ;
  wire \s_axi_full_araddr_q_reg[20]_i_2_n_3 ;
  wire \s_axi_full_araddr_q_reg[23]_i_4_n_2 ;
  wire \s_axi_full_araddr_q_reg[23]_i_4_n_3 ;
  wire \s_axi_full_araddr_q_reg[4]_i_2_n_0 ;
  wire \s_axi_full_araddr_q_reg[4]_i_2_n_1 ;
  wire \s_axi_full_araddr_q_reg[4]_i_2_n_2 ;
  wire \s_axi_full_araddr_q_reg[4]_i_2_n_3 ;
  wire \s_axi_full_araddr_q_reg[8]_i_2_n_0 ;
  wire \s_axi_full_araddr_q_reg[8]_i_2_n_1 ;
  wire \s_axi_full_araddr_q_reg[8]_i_2_n_2 ;
  wire \s_axi_full_araddr_q_reg[8]_i_2_n_3 ;
  wire \s_axi_full_araddr_q_reg_n_0_[0] ;
  wire \s_axi_full_araddr_q_reg_n_0_[10] ;
  wire \s_axi_full_araddr_q_reg_n_0_[11] ;
  wire \s_axi_full_araddr_q_reg_n_0_[12] ;
  wire \s_axi_full_araddr_q_reg_n_0_[13] ;
  wire \s_axi_full_araddr_q_reg_n_0_[14] ;
  wire \s_axi_full_araddr_q_reg_n_0_[15] ;
  wire \s_axi_full_araddr_q_reg_n_0_[16] ;
  wire \s_axi_full_araddr_q_reg_n_0_[17] ;
  wire \s_axi_full_araddr_q_reg_n_0_[18] ;
  wire \s_axi_full_araddr_q_reg_n_0_[19] ;
  wire \s_axi_full_araddr_q_reg_n_0_[1] ;
  wire \s_axi_full_araddr_q_reg_n_0_[20] ;
  wire \s_axi_full_araddr_q_reg_n_0_[21] ;
  wire \s_axi_full_araddr_q_reg_n_0_[22] ;
  wire \s_axi_full_araddr_q_reg_n_0_[23] ;
  wire \s_axi_full_araddr_q_reg_n_0_[2] ;
  wire \s_axi_full_araddr_q_reg_n_0_[3] ;
  wire \s_axi_full_araddr_q_reg_n_0_[4] ;
  wire \s_axi_full_araddr_q_reg_n_0_[5] ;
  wire \s_axi_full_araddr_q_reg_n_0_[6] ;
  wire \s_axi_full_araddr_q_reg_n_0_[7] ;
  wire \s_axi_full_araddr_q_reg_n_0_[8] ;
  wire \s_axi_full_araddr_q_reg_n_0_[9] ;
  wire [3:0]s_axi_full_arid;
  wire [7:0]s_axi_full_arlen;
  wire \s_axi_full_arlen_q[0]_i_1_n_0 ;
  wire \s_axi_full_arlen_q[1]_i_1_n_0 ;
  wire \s_axi_full_arlen_q[2]_i_1_n_0 ;
  wire \s_axi_full_arlen_q[3]_i_1_n_0 ;
  wire \s_axi_full_arlen_q[4]_i_1_n_0 ;
  wire \s_axi_full_arlen_q[5]_i_1_n_0 ;
  wire \s_axi_full_arlen_q[6]_i_1_n_0 ;
  wire \s_axi_full_arlen_q[6]_i_2_n_0 ;
  wire \s_axi_full_arlen_q[7]_i_1_n_0 ;
  wire \s_axi_full_arlen_q[7]_i_2_n_0 ;
  wire \s_axi_full_arlen_q[7]_i_3_n_0 ;
  wire [7:0]s_axi_full_arlen_q__0;
  wire s_axi_full_arready_i_1_n_0;
  wire s_axi_full_arready_i_2_n_0;
  wire s_axi_full_arready_i_3_n_0;
  wire s_axi_full_arready_reg_0;
  wire [2:0]s_axi_full_arsize;
  wire [1:0]s_axi_full_arsize_q;
  wire \s_axi_full_arsize_q[0]_i_1_n_0 ;
  wire \s_axi_full_arsize_q[1]_i_1_n_0 ;
  wire s_axi_full_arvalid;
  wire [3:0]s_axi_full_awid;
  wire s_axi_full_awready0;
  wire s_axi_full_awready_i_1_n_0;
  wire s_axi_full_awready_reg_0;
  wire s_axi_full_awvalid;
  wire [3:0]s_axi_full_bid;
  wire s_axi_full_bready;
  wire s_axi_full_bvalid;
  wire s_axi_full_bvalid_i_1_n_0;
  wire [63:0]s_axi_full_rdata;
  wire \s_axi_full_rdata[0]_i_1_n_0 ;
  wire \s_axi_full_rdata[10]_i_1_n_0 ;
  wire \s_axi_full_rdata[11]_i_1_n_0 ;
  wire \s_axi_full_rdata[12]_i_1_n_0 ;
  wire \s_axi_full_rdata[13]_i_1_n_0 ;
  wire \s_axi_full_rdata[14]_i_1_n_0 ;
  wire \s_axi_full_rdata[15]_i_1_n_0 ;
  wire \s_axi_full_rdata[15]_i_2_n_0 ;
  wire \s_axi_full_rdata[16]_i_1_n_0 ;
  wire \s_axi_full_rdata[17]_i_1_n_0 ;
  wire \s_axi_full_rdata[18]_i_1_n_0 ;
  wire \s_axi_full_rdata[19]_i_1_n_0 ;
  wire \s_axi_full_rdata[1]_i_1_n_0 ;
  wire \s_axi_full_rdata[20]_i_1_n_0 ;
  wire \s_axi_full_rdata[21]_i_1_n_0 ;
  wire \s_axi_full_rdata[22]_i_1_n_0 ;
  wire \s_axi_full_rdata[23]_i_1_n_0 ;
  wire \s_axi_full_rdata[23]_i_2_n_0 ;
  wire \s_axi_full_rdata[24]_i_1_n_0 ;
  wire \s_axi_full_rdata[25]_i_1_n_0 ;
  wire \s_axi_full_rdata[26]_i_1_n_0 ;
  wire \s_axi_full_rdata[27]_i_1_n_0 ;
  wire \s_axi_full_rdata[28]_i_1_n_0 ;
  wire \s_axi_full_rdata[29]_i_1_n_0 ;
  wire \s_axi_full_rdata[2]_i_1_n_0 ;
  wire \s_axi_full_rdata[30]_i_1_n_0 ;
  wire \s_axi_full_rdata[31]_i_1_n_0 ;
  wire \s_axi_full_rdata[31]_i_2_n_0 ;
  wire \s_axi_full_rdata[31]_i_3_n_0 ;
  wire \s_axi_full_rdata[31]_i_4_n_0 ;
  wire \s_axi_full_rdata[32]_i_1_n_0 ;
  wire \s_axi_full_rdata[33]_i_1_n_0 ;
  wire \s_axi_full_rdata[34]_i_1_n_0 ;
  wire \s_axi_full_rdata[35]_i_1_n_0 ;
  wire \s_axi_full_rdata[36]_i_1_n_0 ;
  wire \s_axi_full_rdata[37]_i_1_n_0 ;
  wire \s_axi_full_rdata[38]_i_1_n_0 ;
  wire \s_axi_full_rdata[39]_i_1_n_0 ;
  wire \s_axi_full_rdata[39]_i_2_n_0 ;
  wire \s_axi_full_rdata[3]_i_1_n_0 ;
  wire \s_axi_full_rdata[40]_i_1_n_0 ;
  wire \s_axi_full_rdata[41]_i_1_n_0 ;
  wire \s_axi_full_rdata[42]_i_1_n_0 ;
  wire \s_axi_full_rdata[43]_i_1_n_0 ;
  wire \s_axi_full_rdata[44]_i_1_n_0 ;
  wire \s_axi_full_rdata[45]_i_1_n_0 ;
  wire \s_axi_full_rdata[46]_i_1_n_0 ;
  wire \s_axi_full_rdata[47]_i_1_n_0 ;
  wire \s_axi_full_rdata[47]_i_2_n_0 ;
  wire \s_axi_full_rdata[48]_i_1_n_0 ;
  wire \s_axi_full_rdata[49]_i_1_n_0 ;
  wire \s_axi_full_rdata[4]_i_1_n_0 ;
  wire \s_axi_full_rdata[50]_i_1_n_0 ;
  wire \s_axi_full_rdata[51]_i_1_n_0 ;
  wire \s_axi_full_rdata[52]_i_1_n_0 ;
  wire \s_axi_full_rdata[53]_i_1_n_0 ;
  wire \s_axi_full_rdata[54]_i_1_n_0 ;
  wire \s_axi_full_rdata[55]_i_1_n_0 ;
  wire \s_axi_full_rdata[55]_i_2_n_0 ;
  wire \s_axi_full_rdata[56]_i_1_n_0 ;
  wire \s_axi_full_rdata[57]_i_1_n_0 ;
  wire \s_axi_full_rdata[58]_i_1_n_0 ;
  wire \s_axi_full_rdata[59]_i_1_n_0 ;
  wire \s_axi_full_rdata[5]_i_1_n_0 ;
  wire \s_axi_full_rdata[60]_i_1_n_0 ;
  wire \s_axi_full_rdata[61]_i_1_n_0 ;
  wire \s_axi_full_rdata[62]_i_1_n_0 ;
  wire \s_axi_full_rdata[63]_i_1_n_0 ;
  wire \s_axi_full_rdata[63]_i_2_n_0 ;
  wire \s_axi_full_rdata[63]_i_3_n_0 ;
  wire \s_axi_full_rdata[63]_i_4_n_0 ;
  wire \s_axi_full_rdata[63]_i_5_n_0 ;
  wire \s_axi_full_rdata[6]_i_1_n_0 ;
  wire \s_axi_full_rdata[7]_i_1_n_0 ;
  wire \s_axi_full_rdata[7]_i_2_n_0 ;
  wire \s_axi_full_rdata[8]_i_1_n_0 ;
  wire \s_axi_full_rdata[9]_i_1_n_0 ;
  wire [3:0]s_axi_full_rid;
  wire \s_axi_full_rid[3]_i_1_n_0 ;
  wire s_axi_full_rlast;
  wire s_axi_full_rlast_i_1_n_0;
  wire s_axi_full_rlast_i_3_n_0;
  wire s_axi_full_rlast_i_4_n_0;
  wire s_axi_full_rready;
  wire s_axi_full_rvalid_i_1_n_0;
  wire s_axi_full_rvalid_reg_0;
  wire s_axi_full_wlast;
  wire s_axi_full_wready;
  wire s_axi_full_write_busy__0;
  wire s_axi_full_write_busy_i_1_n_0;
  wire s_axi_full_write_busy_i_2_n_0;
  wire s_axi_full_wvalid;
  wire [3:0]s_axi_lite_araddr;
  wire s_axi_lite_arready;
  wire s_axi_lite_arvalid;
  wire [3:0]s_axi_lite_awaddr;
  wire s_axi_lite_awready;
  wire s_axi_lite_awready0;
  wire s_axi_lite_awready_i_1_n_0;
  wire s_axi_lite_awvalid;
  wire s_axi_lite_bready;
  wire s_axi_lite_bvalid;
  wire s_axi_lite_bvalid_i_1_n_0;
  wire s_axi_lite_rd_en;
  wire [31:0]s_axi_lite_rdata;
  wire \s_axi_lite_rdata[0]_i_1_n_0 ;
  wire \s_axi_lite_rdata[0]_i_2_n_0 ;
  wire \s_axi_lite_rdata[0]_i_3_n_0 ;
  wire \s_axi_lite_rdata[0]_i_4_n_0 ;
  wire \s_axi_lite_rdata[0]_i_5_n_0 ;
  wire \s_axi_lite_rdata[0]_i_6_n_0 ;
  wire \s_axi_lite_rdata[0]_i_7_n_0 ;
  wire \s_axi_lite_rdata[10]_i_1_n_0 ;
  wire \s_axi_lite_rdata[10]_i_2_n_0 ;
  wire \s_axi_lite_rdata[11]_i_1_n_0 ;
  wire \s_axi_lite_rdata[12]_i_1_n_0 ;
  wire \s_axi_lite_rdata[12]_i_2_n_0 ;
  wire \s_axi_lite_rdata[13]_i_1_n_0 ;
  wire \s_axi_lite_rdata[13]_i_2_n_0 ;
  wire \s_axi_lite_rdata[14]_i_1_n_0 ;
  wire \s_axi_lite_rdata[14]_i_2_n_0 ;
  wire \s_axi_lite_rdata[15]_i_1_n_0 ;
  wire \s_axi_lite_rdata[16]_i_1_n_0 ;
  wire \s_axi_lite_rdata[16]_i_2_n_0 ;
  wire \s_axi_lite_rdata[16]_i_3_n_0 ;
  wire \s_axi_lite_rdata[17]_i_1_n_0 ;
  wire \s_axi_lite_rdata[17]_i_2_n_0 ;
  wire \s_axi_lite_rdata[18]_i_1_n_0 ;
  wire \s_axi_lite_rdata[18]_i_2_n_0 ;
  wire \s_axi_lite_rdata[19]_i_1_n_0 ;
  wire \s_axi_lite_rdata[19]_i_2_n_0 ;
  wire \s_axi_lite_rdata[1]_i_1_n_0 ;
  wire \s_axi_lite_rdata[1]_i_2_n_0 ;
  wire \s_axi_lite_rdata[1]_i_3_n_0 ;
  wire \s_axi_lite_rdata[1]_i_4_n_0 ;
  wire \s_axi_lite_rdata[1]_i_5_n_0 ;
  wire \s_axi_lite_rdata[1]_i_6_n_0 ;
  wire \s_axi_lite_rdata[1]_i_7_n_0 ;
  wire \s_axi_lite_rdata[20]_i_1_n_0 ;
  wire \s_axi_lite_rdata[20]_i_2_n_0 ;
  wire \s_axi_lite_rdata[21]_i_1_n_0 ;
  wire \s_axi_lite_rdata[21]_i_2_n_0 ;
  wire \s_axi_lite_rdata[22]_i_1_n_0 ;
  wire \s_axi_lite_rdata[22]_i_2_n_0 ;
  wire \s_axi_lite_rdata[23]_i_1_n_0 ;
  wire \s_axi_lite_rdata[23]_i_2_n_0 ;
  wire \s_axi_lite_rdata[24]_i_1_n_0 ;
  wire \s_axi_lite_rdata[24]_i_2_n_0 ;
  wire \s_axi_lite_rdata[25]_i_1_n_0 ;
  wire \s_axi_lite_rdata[25]_i_2_n_0 ;
  wire \s_axi_lite_rdata[26]_i_1_n_0 ;
  wire \s_axi_lite_rdata[26]_i_2_n_0 ;
  wire \s_axi_lite_rdata[26]_i_3_n_0 ;
  wire \s_axi_lite_rdata[27]_i_1_n_0 ;
  wire \s_axi_lite_rdata[27]_i_2_n_0 ;
  wire \s_axi_lite_rdata[27]_i_3_n_0 ;
  wire \s_axi_lite_rdata[28]_i_1_n_0 ;
  wire \s_axi_lite_rdata[28]_i_2_n_0 ;
  wire \s_axi_lite_rdata[29]_i_1_n_0 ;
  wire \s_axi_lite_rdata[29]_i_2_n_0 ;
  wire \s_axi_lite_rdata[2]_i_1_n_0 ;
  wire \s_axi_lite_rdata[2]_i_2_n_0 ;
  wire \s_axi_lite_rdata[2]_i_3_n_0 ;
  wire \s_axi_lite_rdata[2]_i_4_n_0 ;
  wire \s_axi_lite_rdata[2]_i_5_n_0 ;
  wire \s_axi_lite_rdata[2]_i_6_n_0 ;
  wire \s_axi_lite_rdata[2]_i_7_n_0 ;
  wire \s_axi_lite_rdata[2]_i_8_n_0 ;
  wire \s_axi_lite_rdata[30]_i_1_n_0 ;
  wire \s_axi_lite_rdata[30]_i_2_n_0 ;
  wire \s_axi_lite_rdata[30]_i_3_n_0 ;
  wire \s_axi_lite_rdata[31]_i_1_n_0 ;
  wire \s_axi_lite_rdata[31]_i_3_n_0 ;
  wire \s_axi_lite_rdata[31]_i_4_n_0 ;
  wire \s_axi_lite_rdata[31]_i_5_n_0 ;
  wire \s_axi_lite_rdata[31]_i_6_n_0 ;
  wire \s_axi_lite_rdata[31]_i_7_n_0 ;
  wire \s_axi_lite_rdata[3]_i_1_n_0 ;
  wire \s_axi_lite_rdata[3]_i_2_n_0 ;
  wire \s_axi_lite_rdata[3]_i_3_n_0 ;
  wire \s_axi_lite_rdata[3]_i_4_n_0 ;
  wire \s_axi_lite_rdata[3]_i_5_n_0 ;
  wire \s_axi_lite_rdata[4]_i_1_n_0 ;
  wire \s_axi_lite_rdata[4]_i_2_n_0 ;
  wire \s_axi_lite_rdata[4]_i_3_n_0 ;
  wire \s_axi_lite_rdata[4]_i_4_n_0 ;
  wire \s_axi_lite_rdata[4]_i_5_n_0 ;
  wire \s_axi_lite_rdata[4]_i_6_n_0 ;
  wire \s_axi_lite_rdata[5]_i_1_n_0 ;
  wire \s_axi_lite_rdata[5]_i_2_n_0 ;
  wire \s_axi_lite_rdata[5]_i_3_n_0 ;
  wire \s_axi_lite_rdata[5]_i_4_n_0 ;
  wire \s_axi_lite_rdata[5]_i_5_n_0 ;
  wire \s_axi_lite_rdata[5]_i_6_n_0 ;
  wire \s_axi_lite_rdata[6]_i_1_n_0 ;
  wire \s_axi_lite_rdata[6]_i_2_n_0 ;
  wire \s_axi_lite_rdata[6]_i_3_n_0 ;
  wire \s_axi_lite_rdata[6]_i_4_n_0 ;
  wire \s_axi_lite_rdata[6]_i_5_n_0 ;
  wire \s_axi_lite_rdata[6]_i_6_n_0 ;
  wire \s_axi_lite_rdata[7]_i_1_n_0 ;
  wire \s_axi_lite_rdata[7]_i_2_n_0 ;
  wire \s_axi_lite_rdata[7]_i_3_n_0 ;
  wire \s_axi_lite_rdata[7]_i_4_n_0 ;
  wire \s_axi_lite_rdata[7]_i_5_n_0 ;
  wire \s_axi_lite_rdata[8]_i_1_n_0 ;
  wire \s_axi_lite_rdata[8]_i_2_n_0 ;
  wire \s_axi_lite_rdata[8]_i_3_n_0 ;
  wire \s_axi_lite_rdata[9]_i_1_n_0 ;
  wire \s_axi_lite_rdata[9]_i_2_n_0 ;
  wire \s_axi_lite_rdata[9]_i_3_n_0 ;
  wire s_axi_lite_rready;
  wire s_axi_lite_rvalid_i_1_n_0;
  wire s_axi_lite_rvalid_reg_0;
  wire [29:0]s_axi_lite_wdata;
  wire [3:0]s_axi_lite_wstrb;
  wire s_axi_lite_wvalid;
  wire spi_cpol;
  wire spi_dir_i_1_n_0;
  wire spi_dir_reg_n_0;
  wire spi_en_i_1_n_0;
  wire spi_en_reg_n_0;
  wire spi_fsm_state;
  wire \spi_fsm_state[0]_i_1_n_0 ;
  wire \spi_fsm_state[1]_i_1_n_0 ;
  wire \spi_fsm_state_reg_n_0_[0] ;
  wire \spi_fsm_state_reg_n_0_[1] ;
  wire spi_idle_q;
  wire spi_io0_i;
  wire spi_io0_o;
  wire spi_io0_t;
  wire spi_io1_i;
  wire spi_io1_o;
  wire spi_io1_t;
  wire spi_io2_i;
  wire spi_io2_o;
  wire spi_io2_t;
  wire spi_io3_i;
  wire spi_io3_o;
  wire \spi_io_i_reg_n_0_[0] ;
  wire \spi_io_i_reg_n_0_[2] ;
  wire \spi_io_i_reg_n_0_[3] ;
  wire spi_io_mode;
  wire spi_io_mode1;
  wire spi_io_mode154_out;
  wire spi_io_mode156_out;
  wire \spi_io_mode[0]_i_1_n_0 ;
  wire \spi_io_mode[0]_i_2_n_0 ;
  wire \spi_io_mode[0]_i_3_n_0 ;
  wire \spi_io_mode[0]_i_4_n_0 ;
  wire \spi_io_mode[1]_i_1_n_0 ;
  wire \spi_io_mode[1]_i_2_n_0 ;
  wire \spi_io_mode[1]_i_3_n_0 ;
  wire \spi_io_mode[1]_i_4_n_0 ;
  wire \spi_io_mode[2]_i_10_n_0 ;
  wire \spi_io_mode[2]_i_11_n_0 ;
  wire \spi_io_mode[2]_i_12_n_0 ;
  wire \spi_io_mode[2]_i_13_n_0 ;
  wire \spi_io_mode[2]_i_14_n_0 ;
  wire \spi_io_mode[2]_i_1_n_0 ;
  wire \spi_io_mode[2]_i_2_n_0 ;
  wire \spi_io_mode[2]_i_3_n_0 ;
  wire \spi_io_mode[2]_i_4_n_0 ;
  wire \spi_io_mode[2]_i_6_n_0 ;
  wire \spi_io_mode[2]_i_7_n_0 ;
  wire \spi_io_mode[2]_i_8_n_0 ;
  wire \spi_io_mode[2]_i_9_n_0 ;
  wire spi_io_mode_q;
  wire spi_io_mode_q1;
  wire \spi_io_mode_q[2]_i_2_n_0 ;
  wire \spi_io_mode_q[2]_i_3_n_0 ;
  wire \spi_io_mode_q_reg_n_0_[0] ;
  wire \spi_io_mode_q_reg_n_0_[1] ;
  wire \spi_io_mode_q_reg_n_0_[2] ;
  wire \spi_io_mode_reg_n_0_[0] ;
  wire \spi_io_mode_reg_n_0_[1] ;
  wire \spi_io_mode_reg_n_0_[2] ;
  wire [1:0]spi_io_o;
  wire \spi_io_o[0]_i_10_n_0 ;
  wire \spi_io_o[0]_i_11_n_0 ;
  wire \spi_io_o[0]_i_12_n_0 ;
  wire \spi_io_o[0]_i_13_n_0 ;
  wire \spi_io_o[0]_i_2_n_0 ;
  wire \spi_io_o[0]_i_4_n_0 ;
  wire \spi_io_o[0]_i_5_n_0 ;
  wire \spi_io_o[0]_i_6_n_0 ;
  wire \spi_io_o[0]_i_7_n_0 ;
  wire \spi_io_o[0]_i_8_n_0 ;
  wire \spi_io_o[0]_i_9_n_0 ;
  wire \spi_io_o[1]_i_1_n_0 ;
  wire \spi_io_o[1]_i_3_n_0 ;
  wire \spi_io_o[1]_i_4_n_0 ;
  wire \spi_io_o[1]_i_5_n_0 ;
  wire \spi_io_o[2]_i_1_n_0 ;
  wire \spi_io_o[2]_i_2_n_0 ;
  wire \spi_io_o[3]_i_1_n_0 ;
  wire [2:0]spi_io_t;
  wire \spi_io_t[0]_i_2_n_0 ;
  wire \spi_io_t[2]_i_2_n_0 ;
  wire \spi_io_t[2]_i_3_n_0 ;
  wire spi_lsb_first_i_1_n_0;
  wire spi_lsb_first_i_2_n_0;
  wire spi_lsb_first_reg_n_0;
  wire \spi_mmio_addr_io_mode[0]_i_1_n_0 ;
  wire \spi_mmio_addr_io_mode[1]_i_1_n_0 ;
  wire \spi_mmio_addr_io_mode[2]_i_1_n_0 ;
  wire \spi_mmio_addr_io_mode_reg_n_0_[0] ;
  wire \spi_mmio_addr_io_mode_reg_n_0_[1] ;
  wire \spi_mmio_addr_io_mode_reg_n_0_[2] ;
  wire [1:0]spi_mmio_addr_rem;
  wire \spi_mmio_addr_rem[0]_i_1_n_0 ;
  wire \spi_mmio_addr_rem[0]_i_2_n_0 ;
  wire \spi_mmio_addr_rem[1]_i_1_n_0 ;
  wire \spi_mmio_addr_rem[1]_i_2_n_0 ;
  wire spi_mmio_addr_size;
  wire \spi_mmio_addr_size_reg_n_0_[0] ;
  wire \spi_mmio_addr_size_reg_n_0_[1] ;
  wire [31:1]spi_mmio_cont_rd_req_cnt0;
  wire \spi_mmio_cont_rd_req_cnt[0]_i_1_n_0 ;
  wire \spi_mmio_cont_rd_req_cnt[10]_i_1_n_0 ;
  wire \spi_mmio_cont_rd_req_cnt[11]_i_1_n_0 ;
  wire \spi_mmio_cont_rd_req_cnt[12]_i_1_n_0 ;
  wire \spi_mmio_cont_rd_req_cnt[13]_i_1_n_0 ;
  wire \spi_mmio_cont_rd_req_cnt[14]_i_1_n_0 ;
  wire \spi_mmio_cont_rd_req_cnt[15]_i_1_n_0 ;
  wire \spi_mmio_cont_rd_req_cnt[16]_i_1_n_0 ;
  wire \spi_mmio_cont_rd_req_cnt[17]_i_1_n_0 ;
  wire \spi_mmio_cont_rd_req_cnt[18]_i_1_n_0 ;
  wire \spi_mmio_cont_rd_req_cnt[19]_i_1_n_0 ;
  wire \spi_mmio_cont_rd_req_cnt[1]_i_1_n_0 ;
  wire \spi_mmio_cont_rd_req_cnt[20]_i_1_n_0 ;
  wire \spi_mmio_cont_rd_req_cnt[21]_i_1_n_0 ;
  wire \spi_mmio_cont_rd_req_cnt[22]_i_1_n_0 ;
  wire \spi_mmio_cont_rd_req_cnt[23]_i_1_n_0 ;
  wire \spi_mmio_cont_rd_req_cnt[24]_i_1_n_0 ;
  wire \spi_mmio_cont_rd_req_cnt[25]_i_1_n_0 ;
  wire \spi_mmio_cont_rd_req_cnt[26]_i_1_n_0 ;
  wire \spi_mmio_cont_rd_req_cnt[27]_i_1_n_0 ;
  wire \spi_mmio_cont_rd_req_cnt[28]_i_1_n_0 ;
  wire \spi_mmio_cont_rd_req_cnt[29]_i_1_n_0 ;
  wire \spi_mmio_cont_rd_req_cnt[2]_i_1_n_0 ;
  wire \spi_mmio_cont_rd_req_cnt[30]_i_1_n_0 ;
  wire \spi_mmio_cont_rd_req_cnt[31]_i_1_n_0 ;
  wire \spi_mmio_cont_rd_req_cnt[31]_i_2_n_0 ;
  wire \spi_mmio_cont_rd_req_cnt[3]_i_1_n_0 ;
  wire \spi_mmio_cont_rd_req_cnt[4]_i_1_n_0 ;
  wire \spi_mmio_cont_rd_req_cnt[5]_i_1_n_0 ;
  wire \spi_mmio_cont_rd_req_cnt[6]_i_1_n_0 ;
  wire \spi_mmio_cont_rd_req_cnt[7]_i_1_n_0 ;
  wire \spi_mmio_cont_rd_req_cnt[8]_i_1_n_0 ;
  wire \spi_mmio_cont_rd_req_cnt[9]_i_1_n_0 ;
  wire [31:0]spi_mmio_cont_rd_req_cnt__0;
  wire spi_mmio_cont_rd_req_cnt_buf;
  wire \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[0] ;
  wire \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[10] ;
  wire \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[11] ;
  wire \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[12] ;
  wire \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[13] ;
  wire \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[14] ;
  wire \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[15] ;
  wire \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[16] ;
  wire \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[17] ;
  wire \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[18] ;
  wire \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[19] ;
  wire \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[1] ;
  wire \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[20] ;
  wire \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[21] ;
  wire \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[22] ;
  wire \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[23] ;
  wire \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[24] ;
  wire \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[25] ;
  wire \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[26] ;
  wire \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[27] ;
  wire \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[28] ;
  wire \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[29] ;
  wire \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[2] ;
  wire \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[30] ;
  wire \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[31] ;
  wire \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[3] ;
  wire \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[4] ;
  wire \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[5] ;
  wire \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[6] ;
  wire \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[7] ;
  wire \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[8] ;
  wire \spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[9] ;
  wire \spi_mmio_cont_rd_req_cnt_reg[12]_i_2_n_0 ;
  wire \spi_mmio_cont_rd_req_cnt_reg[12]_i_2_n_1 ;
  wire \spi_mmio_cont_rd_req_cnt_reg[12]_i_2_n_2 ;
  wire \spi_mmio_cont_rd_req_cnt_reg[12]_i_2_n_3 ;
  wire \spi_mmio_cont_rd_req_cnt_reg[16]_i_2_n_0 ;
  wire \spi_mmio_cont_rd_req_cnt_reg[16]_i_2_n_1 ;
  wire \spi_mmio_cont_rd_req_cnt_reg[16]_i_2_n_2 ;
  wire \spi_mmio_cont_rd_req_cnt_reg[16]_i_2_n_3 ;
  wire \spi_mmio_cont_rd_req_cnt_reg[20]_i_2_n_0 ;
  wire \spi_mmio_cont_rd_req_cnt_reg[20]_i_2_n_1 ;
  wire \spi_mmio_cont_rd_req_cnt_reg[20]_i_2_n_2 ;
  wire \spi_mmio_cont_rd_req_cnt_reg[20]_i_2_n_3 ;
  wire \spi_mmio_cont_rd_req_cnt_reg[24]_i_2_n_0 ;
  wire \spi_mmio_cont_rd_req_cnt_reg[24]_i_2_n_1 ;
  wire \spi_mmio_cont_rd_req_cnt_reg[24]_i_2_n_2 ;
  wire \spi_mmio_cont_rd_req_cnt_reg[24]_i_2_n_3 ;
  wire \spi_mmio_cont_rd_req_cnt_reg[28]_i_2_n_0 ;
  wire \spi_mmio_cont_rd_req_cnt_reg[28]_i_2_n_1 ;
  wire \spi_mmio_cont_rd_req_cnt_reg[28]_i_2_n_2 ;
  wire \spi_mmio_cont_rd_req_cnt_reg[28]_i_2_n_3 ;
  wire \spi_mmio_cont_rd_req_cnt_reg[31]_i_3_n_2 ;
  wire \spi_mmio_cont_rd_req_cnt_reg[31]_i_3_n_3 ;
  wire \spi_mmio_cont_rd_req_cnt_reg[4]_i_2_n_0 ;
  wire \spi_mmio_cont_rd_req_cnt_reg[4]_i_2_n_1 ;
  wire \spi_mmio_cont_rd_req_cnt_reg[4]_i_2_n_2 ;
  wire \spi_mmio_cont_rd_req_cnt_reg[4]_i_2_n_3 ;
  wire \spi_mmio_cont_rd_req_cnt_reg[8]_i_2_n_0 ;
  wire \spi_mmio_cont_rd_req_cnt_reg[8]_i_2_n_1 ;
  wire \spi_mmio_cont_rd_req_cnt_reg[8]_i_2_n_2 ;
  wire \spi_mmio_cont_rd_req_cnt_reg[8]_i_2_n_3 ;
  wire spi_mmio_cont_read_en_i_1_n_0;
  wire spi_mmio_cont_read_en_reg_n_0;
  wire spi_mmio_cont_read_ready;
  wire spi_mmio_cont_read_ready_i_1_n_0;
  wire spi_mmio_cont_read_ready_i_2_n_0;
  wire spi_mmio_cs_active;
  wire spi_mmio_cs_high_wait;
  wire \spi_mmio_cs_high_wait[7]_i_2_n_0 ;
  wire \spi_mmio_cs_high_wait_reg_n_0_[0] ;
  wire \spi_mmio_cs_high_wait_reg_n_0_[1] ;
  wire \spi_mmio_cs_high_wait_reg_n_0_[2] ;
  wire \spi_mmio_cs_high_wait_reg_n_0_[3] ;
  wire \spi_mmio_cs_high_wait_reg_n_0_[4] ;
  wire \spi_mmio_cs_high_wait_reg_n_0_[5] ;
  wire \spi_mmio_cs_high_wait_reg_n_0_[6] ;
  wire \spi_mmio_cs_high_wait_reg_n_0_[7] ;
  wire spi_mmio_cs_low_wait;
  wire \spi_mmio_cs_low_wait_reg_n_0_[0] ;
  wire \spi_mmio_cs_low_wait_reg_n_0_[1] ;
  wire \spi_mmio_cs_low_wait_reg_n_0_[2] ;
  wire \spi_mmio_cs_low_wait_reg_n_0_[3] ;
  wire \spi_mmio_cs_low_wait_reg_n_0_[4] ;
  wire \spi_mmio_cs_low_wait_reg_n_0_[5] ;
  wire \spi_mmio_cs_low_wait_reg_n_0_[6] ;
  wire \spi_mmio_cs_low_wait_reg_n_0_[7] ;
  wire \spi_mmio_cs_mask[0]_i_1_n_0 ;
  wire \spi_mmio_cs_mask[0]_i_2_n_0 ;
  wire \spi_mmio_cs_mask_reg_n_0_[0] ;
  wire spi_mmio_cs_wait_rem;
  wire [7:0]spi_mmio_cs_wait_rem1_in;
  wire \spi_mmio_cs_wait_rem[2]_i_2_n_0 ;
  wire \spi_mmio_cs_wait_rem[3]_i_2_n_0 ;
  wire \spi_mmio_cs_wait_rem[4]_i_2_n_0 ;
  wire \spi_mmio_cs_wait_rem[5]_i_2_n_0 ;
  wire \spi_mmio_cs_wait_rem[7]_i_10_n_0 ;
  wire \spi_mmio_cs_wait_rem[7]_i_12_n_0 ;
  wire \spi_mmio_cs_wait_rem[7]_i_13_n_0 ;
  wire \spi_mmio_cs_wait_rem[7]_i_14_n_0 ;
  wire \spi_mmio_cs_wait_rem[7]_i_19_n_0 ;
  wire \spi_mmio_cs_wait_rem[7]_i_3_n_0 ;
  wire \spi_mmio_cs_wait_rem[7]_i_4_n_0 ;
  wire \spi_mmio_cs_wait_rem[7]_i_5_n_0 ;
  wire \spi_mmio_cs_wait_rem[7]_i_6_n_0 ;
  wire \spi_mmio_cs_wait_rem[7]_i_7_n_0 ;
  wire \spi_mmio_cs_wait_rem[7]_i_8_n_0 ;
  wire \spi_mmio_data_io_mode[0]_i_1_n_0 ;
  wire \spi_mmio_data_io_mode[1]_i_1_n_0 ;
  wire \spi_mmio_data_io_mode[2]_i_1_n_0 ;
  wire \spi_mmio_data_io_mode_reg_n_0_[0] ;
  wire \spi_mmio_data_io_mode_reg_n_0_[1] ;
  wire \spi_mmio_data_io_mode_reg_n_0_[2] ;
  wire \spi_mmio_dummy_io_mode[0]_i_1_n_0 ;
  wire \spi_mmio_dummy_io_mode[1]_i_1_n_0 ;
  wire \spi_mmio_dummy_io_mode[2]_i_1_n_0 ;
  wire \spi_mmio_dummy_io_mode[2]_i_2_n_0 ;
  wire \spi_mmio_dummy_io_mode_reg_n_0_[0] ;
  wire \spi_mmio_dummy_io_mode_reg_n_0_[1] ;
  wire \spi_mmio_dummy_io_mode_reg_n_0_[2] ;
  wire [1:0]spi_mmio_dummy_rem;
  wire \spi_mmio_dummy_rem[0]_i_1_n_0 ;
  wire \spi_mmio_dummy_rem[1]_i_1_n_0 ;
  wire \spi_mmio_dummy_rem[1]_i_2_n_0 ;
  wire \spi_mmio_dummy_rem[1]_i_3_n_0 ;
  wire \spi_mmio_dummy_size_reg_n_0_[0] ;
  wire \spi_mmio_dummy_size_reg_n_0_[1] ;
  wire spi_mmio_en;
  wire spi_mmio_en_i_1_n_0;
  wire spi_mmio_en_req_i_1_n_0;
  wire spi_mmio_en_req_reg_n_0;
  wire spi_mmio_fsm_state;
  wire \spi_mmio_fsm_state[0]_i_10_n_0 ;
  wire \spi_mmio_fsm_state[0]_i_1_n_0 ;
  wire \spi_mmio_fsm_state[0]_i_2_n_0 ;
  wire \spi_mmio_fsm_state[0]_i_3_n_0 ;
  wire \spi_mmio_fsm_state[0]_i_4_n_0 ;
  wire \spi_mmio_fsm_state[0]_i_5_n_0 ;
  wire \spi_mmio_fsm_state[0]_i_6_n_0 ;
  wire \spi_mmio_fsm_state[0]_i_7_n_0 ;
  wire \spi_mmio_fsm_state[0]_i_8_n_0 ;
  wire \spi_mmio_fsm_state[0]_i_9_n_0 ;
  wire \spi_mmio_fsm_state[1]_i_1_n_0 ;
  wire \spi_mmio_fsm_state[1]_i_2_n_0 ;
  wire \spi_mmio_fsm_state[1]_i_3_n_0 ;
  wire \spi_mmio_fsm_state[1]_i_4_n_0 ;
  wire \spi_mmio_fsm_state[1]_i_5_n_0 ;
  wire \spi_mmio_fsm_state[1]_i_6_n_0 ;
  wire \spi_mmio_fsm_state[1]_i_7_n_0 ;
  wire \spi_mmio_fsm_state[1]_i_8_n_0 ;
  wire \spi_mmio_fsm_state[1]_i_9_n_0 ;
  wire \spi_mmio_fsm_state[2]_i_1_n_0 ;
  wire \spi_mmio_fsm_state[2]_i_2_n_0 ;
  wire \spi_mmio_fsm_state[2]_i_3_n_0 ;
  wire \spi_mmio_fsm_state[2]_i_4_n_0 ;
  wire \spi_mmio_fsm_state[2]_i_5_n_0 ;
  wire \spi_mmio_fsm_state[3]_i_10_n_0 ;
  wire \spi_mmio_fsm_state[3]_i_11_n_0 ;
  wire \spi_mmio_fsm_state[3]_i_12_n_0 ;
  wire \spi_mmio_fsm_state[3]_i_13_n_0 ;
  wire \spi_mmio_fsm_state[3]_i_16_n_0 ;
  wire \spi_mmio_fsm_state[3]_i_17_n_0 ;
  wire \spi_mmio_fsm_state[3]_i_2_n_0 ;
  wire \spi_mmio_fsm_state[3]_i_3_n_0 ;
  wire \spi_mmio_fsm_state[3]_i_4_n_0 ;
  wire \spi_mmio_fsm_state[3]_i_5_n_0 ;
  wire \spi_mmio_fsm_state[3]_i_7_n_0 ;
  wire \spi_mmio_fsm_state[3]_i_8_n_0 ;
  wire \spi_mmio_fsm_state[3]_i_9_n_0 ;
  wire \spi_mmio_fsm_state_next[0]_i_1_n_0 ;
  wire \spi_mmio_fsm_state_next[1]_i_1_n_0 ;
  wire \spi_mmio_fsm_state_next[3]_i_10_n_0 ;
  wire \spi_mmio_fsm_state_next[3]_i_11_n_0 ;
  wire \spi_mmio_fsm_state_next[3]_i_12_n_0 ;
  wire \spi_mmio_fsm_state_next[3]_i_13_n_0 ;
  wire \spi_mmio_fsm_state_next[3]_i_14_n_0 ;
  wire \spi_mmio_fsm_state_next[3]_i_1_n_0 ;
  wire \spi_mmio_fsm_state_next[3]_i_2_n_0 ;
  wire \spi_mmio_fsm_state_next[3]_i_3_n_0 ;
  wire \spi_mmio_fsm_state_next[3]_i_7_n_0 ;
  wire \spi_mmio_fsm_state_next[3]_i_8_n_0 ;
  wire \spi_mmio_fsm_state_next[3]_i_9_n_0 ;
  wire \spi_mmio_fsm_state_next_reg[3]_i_5_n_0 ;
  wire \spi_mmio_fsm_state_next_reg[3]_i_5_n_1 ;
  wire \spi_mmio_fsm_state_next_reg[3]_i_5_n_2 ;
  wire \spi_mmio_fsm_state_next_reg[3]_i_5_n_3 ;
  wire \spi_mmio_fsm_state_next_reg[3]_i_6_n_0 ;
  wire \spi_mmio_fsm_state_next_reg[3]_i_6_n_1 ;
  wire \spi_mmio_fsm_state_next_reg[3]_i_6_n_2 ;
  wire \spi_mmio_fsm_state_next_reg[3]_i_6_n_3 ;
  wire \spi_mmio_fsm_state_next_reg_n_0_[0] ;
  wire \spi_mmio_fsm_state_next_reg_n_0_[1] ;
  wire \spi_mmio_fsm_state_next_reg_n_0_[2] ;
  wire \spi_mmio_fsm_state_next_reg_n_0_[3] ;
  wire \spi_mmio_fsm_state_reg_n_0_[0] ;
  wire \spi_mmio_fsm_state_reg_n_0_[1] ;
  wire \spi_mmio_fsm_state_reg_n_0_[2] ;
  wire \spi_mmio_fsm_state_reg_n_0_[3] ;
  wire spi_mmio_mode_bits;
  wire spi_mmio_mode_bits_en_i_1_n_0;
  wire spi_mmio_mode_bits_en_reg_n_0;
  wire \spi_mmio_mode_bits_reg_n_0_[0] ;
  wire \spi_mmio_mode_bits_reg_n_0_[1] ;
  wire \spi_mmio_mode_bits_reg_n_0_[2] ;
  wire \spi_mmio_mode_bits_reg_n_0_[3] ;
  wire \spi_mmio_mode_bits_reg_n_0_[4] ;
  wire \spi_mmio_mode_bits_reg_n_0_[5] ;
  wire \spi_mmio_mode_bits_reg_n_0_[6] ;
  wire \spi_mmio_mode_bits_reg_n_0_[7] ;
  wire spi_mmio_rd_instr;
  wire \spi_mmio_rd_instr[7]_i_2_n_0 ;
  wire \spi_mmio_rd_instr_io_mode[0]_i_1_n_0 ;
  wire \spi_mmio_rd_instr_io_mode[1]_i_1_n_0 ;
  wire \spi_mmio_rd_instr_io_mode[2]_i_1_n_0 ;
  wire \spi_mmio_rd_instr_io_mode[2]_i_2_n_0 ;
  wire \spi_mmio_rd_instr_io_mode[2]_i_3_n_0 ;
  wire \spi_mmio_rd_instr_io_mode_reg_n_0_[0] ;
  wire \spi_mmio_rd_instr_io_mode_reg_n_0_[1] ;
  wire \spi_mmio_rd_instr_io_mode_reg_n_0_[2] ;
  wire \spi_mmio_rd_instr_reg_n_0_[0] ;
  wire \spi_mmio_rd_instr_reg_n_0_[1] ;
  wire \spi_mmio_rd_instr_reg_n_0_[2] ;
  wire \spi_mmio_rd_instr_reg_n_0_[3] ;
  wire \spi_mmio_rd_instr_reg_n_0_[4] ;
  wire \spi_mmio_rd_instr_reg_n_0_[5] ;
  wire \spi_mmio_rd_instr_reg_n_0_[6] ;
  wire \spi_mmio_rd_instr_reg_n_0_[7] ;
  wire [31:1]spi_mmio_rd_req_cnt0;
  wire \spi_mmio_rd_req_cnt[0]_i_1_n_0 ;
  wire \spi_mmio_rd_req_cnt[10]_i_1_n_0 ;
  wire \spi_mmio_rd_req_cnt[11]_i_1_n_0 ;
  wire \spi_mmio_rd_req_cnt[12]_i_1_n_0 ;
  wire \spi_mmio_rd_req_cnt[13]_i_1_n_0 ;
  wire \spi_mmio_rd_req_cnt[14]_i_1_n_0 ;
  wire \spi_mmio_rd_req_cnt[15]_i_1_n_0 ;
  wire \spi_mmio_rd_req_cnt[16]_i_1_n_0 ;
  wire \spi_mmio_rd_req_cnt[17]_i_1_n_0 ;
  wire \spi_mmio_rd_req_cnt[18]_i_1_n_0 ;
  wire \spi_mmio_rd_req_cnt[19]_i_1_n_0 ;
  wire \spi_mmio_rd_req_cnt[1]_i_1_n_0 ;
  wire \spi_mmio_rd_req_cnt[20]_i_1_n_0 ;
  wire \spi_mmio_rd_req_cnt[21]_i_1_n_0 ;
  wire \spi_mmio_rd_req_cnt[22]_i_1_n_0 ;
  wire \spi_mmio_rd_req_cnt[23]_i_1_n_0 ;
  wire \spi_mmio_rd_req_cnt[24]_i_1_n_0 ;
  wire \spi_mmio_rd_req_cnt[25]_i_1_n_0 ;
  wire \spi_mmio_rd_req_cnt[26]_i_1_n_0 ;
  wire \spi_mmio_rd_req_cnt[27]_i_1_n_0 ;
  wire \spi_mmio_rd_req_cnt[28]_i_1_n_0 ;
  wire \spi_mmio_rd_req_cnt[29]_i_1_n_0 ;
  wire \spi_mmio_rd_req_cnt[2]_i_1_n_0 ;
  wire \spi_mmio_rd_req_cnt[30]_i_1_n_0 ;
  wire \spi_mmio_rd_req_cnt[31]_i_1_n_0 ;
  wire \spi_mmio_rd_req_cnt[31]_i_2_n_0 ;
  wire \spi_mmio_rd_req_cnt[3]_i_1_n_0 ;
  wire \spi_mmio_rd_req_cnt[4]_i_1_n_0 ;
  wire \spi_mmio_rd_req_cnt[5]_i_1_n_0 ;
  wire \spi_mmio_rd_req_cnt[6]_i_1_n_0 ;
  wire \spi_mmio_rd_req_cnt[7]_i_1_n_0 ;
  wire \spi_mmio_rd_req_cnt[8]_i_1_n_0 ;
  wire \spi_mmio_rd_req_cnt[9]_i_1_n_0 ;
  wire [31:0]spi_mmio_rd_req_cnt__0;
  wire \spi_mmio_rd_req_cnt_reg[12]_i_2_n_0 ;
  wire \spi_mmio_rd_req_cnt_reg[12]_i_2_n_1 ;
  wire \spi_mmio_rd_req_cnt_reg[12]_i_2_n_2 ;
  wire \spi_mmio_rd_req_cnt_reg[12]_i_2_n_3 ;
  wire \spi_mmio_rd_req_cnt_reg[16]_i_2_n_0 ;
  wire \spi_mmio_rd_req_cnt_reg[16]_i_2_n_1 ;
  wire \spi_mmio_rd_req_cnt_reg[16]_i_2_n_2 ;
  wire \spi_mmio_rd_req_cnt_reg[16]_i_2_n_3 ;
  wire \spi_mmio_rd_req_cnt_reg[20]_i_2_n_0 ;
  wire \spi_mmio_rd_req_cnt_reg[20]_i_2_n_1 ;
  wire \spi_mmio_rd_req_cnt_reg[20]_i_2_n_2 ;
  wire \spi_mmio_rd_req_cnt_reg[20]_i_2_n_3 ;
  wire \spi_mmio_rd_req_cnt_reg[24]_i_2_n_0 ;
  wire \spi_mmio_rd_req_cnt_reg[24]_i_2_n_1 ;
  wire \spi_mmio_rd_req_cnt_reg[24]_i_2_n_2 ;
  wire \spi_mmio_rd_req_cnt_reg[24]_i_2_n_3 ;
  wire \spi_mmio_rd_req_cnt_reg[28]_i_2_n_0 ;
  wire \spi_mmio_rd_req_cnt_reg[28]_i_2_n_1 ;
  wire \spi_mmio_rd_req_cnt_reg[28]_i_2_n_2 ;
  wire \spi_mmio_rd_req_cnt_reg[28]_i_2_n_3 ;
  wire \spi_mmio_rd_req_cnt_reg[31]_i_3_n_2 ;
  wire \spi_mmio_rd_req_cnt_reg[31]_i_3_n_3 ;
  wire \spi_mmio_rd_req_cnt_reg[4]_i_2_n_0 ;
  wire \spi_mmio_rd_req_cnt_reg[4]_i_2_n_1 ;
  wire \spi_mmio_rd_req_cnt_reg[4]_i_2_n_2 ;
  wire \spi_mmio_rd_req_cnt_reg[4]_i_2_n_3 ;
  wire \spi_mmio_rd_req_cnt_reg[8]_i_2_n_0 ;
  wire \spi_mmio_rd_req_cnt_reg[8]_i_2_n_1 ;
  wire \spi_mmio_rd_req_cnt_reg[8]_i_2_n_2 ;
  wire \spi_mmio_rd_req_cnt_reg[8]_i_2_n_3 ;
  wire \spi_mode[0]_i_1_n_0 ;
  wire \spi_mode[1]_i_1_n_0 ;
  wire \spi_mode[1]_i_2_n_0 ;
  wire \spi_mode_reg_n_0_[0] ;
  wire spi_rd_req4;
  wire spi_rd_req_ack;
  wire spi_rd_req_ack_i_2_n_0;
  wire spi_rd_req_ack_reg_n_0;
  wire spi_rd_req_i_1_n_0;
  wire spi_rd_req_i_2_n_0;
  wire spi_rd_req_i_3_n_0;
  wire spi_rd_req_i_4_n_0;
  wire spi_rd_req_i_5_n_0;
  wire spi_rd_req_i_6_n_0;
  wire spi_rd_req_i_7_n_0;
  wire spi_rd_req_i_8_n_0;
  wire spi_rd_req_i_9_n_0;
  wire spi_rd_req_reg_n_0;
  wire spi_sck_div;
  wire \spi_sck_div[7]_i_2_n_0 ;
  wire \spi_sck_div_cnt[7]_i_1_n_0 ;
  wire \spi_sck_div_cnt[7]_i_3_n_0 ;
  wire \spi_sck_div_cnt[7]_i_4_n_0 ;
  wire [7:0]spi_sck_div_cnt_reg;
  wire spi_sck_div_en_i_1_n_0;
  wire spi_sck_div_en_reg_n_0;
  wire \spi_sck_div_reg_n_0_[0] ;
  wire \spi_sck_div_reg_n_0_[1] ;
  wire \spi_sck_div_reg_n_0_[2] ;
  wire \spi_sck_div_reg_n_0_[3] ;
  wire \spi_sck_div_reg_n_0_[4] ;
  wire \spi_sck_div_reg_n_0_[5] ;
  wire \spi_sck_div_reg_n_0_[6] ;
  wire \spi_sck_div_reg_n_0_[7] ;
  wire spi_sck_int;
  wire spi_sck_int_i_1_n_0;
  wire spi_sck_o;
  wire spi_sck_oe;
  wire spi_sck_oe_reg_n_0;
  wire \spi_sr[0]_i_1_n_0 ;
  wire \spi_sr[1]_i_1_n_0 ;
  wire \spi_sr[2]_i_1_n_0 ;
  wire \spi_sr[3]_i_1_n_0 ;
  wire \spi_sr[4]_i_1_n_0 ;
  wire \spi_sr[5]_i_1_n_0 ;
  wire \spi_sr[6]_i_1_n_0 ;
  wire \spi_sr[7]_i_1_n_0 ;
  wire \spi_sr[7]_i_2_n_0 ;
  wire [4:0]spi_sr_bit_cnt;
  wire \spi_sr_bit_cnt[3]_i_2_n_0 ;
  wire \spi_sr_bit_cnt[4]_i_1_n_0 ;
  wire \spi_sr_bit_cnt[4]_i_3_n_0 ;
  wire \spi_sr_bit_cnt[4]_i_4_n_0 ;
  wire \spi_sr_bit_cnt_reg_n_0_[0] ;
  wire \spi_sr_bit_cnt_reg_n_0_[1] ;
  wire \spi_sr_bit_cnt_reg_n_0_[2] ;
  wire \spi_sr_bit_cnt_reg_n_0_[3] ;
  wire \spi_sr_bit_cnt_reg_n_0_[4] ;
  wire [7:0]spi_sr_in_buf0_in;
  wire \spi_sr_in_buf[0]_i_2_n_0 ;
  wire \spi_sr_in_buf[0]_i_3_n_0 ;
  wire \spi_sr_in_buf[1]_i_2_n_0 ;
  wire \spi_sr_in_buf[1]_i_3_n_0 ;
  wire \spi_sr_in_buf[2]_i_2_n_0 ;
  wire \spi_sr_in_buf[2]_i_3_n_0 ;
  wire \spi_sr_in_buf[3]_i_2_n_0 ;
  wire \spi_sr_in_buf[3]_i_3_n_0 ;
  wire \spi_sr_in_buf[4]_i_2_n_0 ;
  wire \spi_sr_in_buf[4]_i_3_n_0 ;
  wire \spi_sr_in_buf[5]_i_2_n_0 ;
  wire \spi_sr_in_buf[5]_i_3_n_0 ;
  wire \spi_sr_in_buf[6]_i_2_n_0 ;
  wire \spi_sr_in_buf[6]_i_3_n_0 ;
  wire \spi_sr_in_buf[7]_i_3_n_0 ;
  wire \spi_sr_in_buf[7]_i_4_n_0 ;
  wire \spi_sr_in_buf[7]_i_5_n_0 ;
  wire \spi_sr_in_buf[7]_i_6_n_0 ;
  wire \spi_sr_in_buf[7]_i_7_n_0 ;
  wire \spi_sr_in_buf[7]_i_8_n_0 ;
  wire \spi_sr_in_buf[7]_i_9_n_0 ;
  wire spi_sr_in_buf_ready_i_1_n_0;
  wire spi_sr_in_buf_ready_i_2_n_0;
  wire spi_sr_in_buf_ready_i_3_n_0;
  wire spi_sr_in_buf_ready_i_4_n_0;
  wire spi_sr_in_buf_ready_i_5_n_0;
  wire spi_sr_in_buf_ready_i_6_n_0;
  wire spi_sr_in_buf_ready_i_7_n_0;
  wire spi_sr_in_buf_ready_i_8_n_0;
  wire spi_sr_in_buf_ready_reg_n_0;
  wire spi_sr_in_buf_valid;
  wire spi_sr_in_buf_valid_i_1_n_0;
  wire spi_sr_in_buf_valid_i_2_n_0;
  wire spi_sr_in_buf_valid_i_3_n_0;
  wire spi_sr_in_buf_valid_q;
  wire spi_sr_in_buf_valid_reg_n_0;
  wire [7:0]spi_sr_out_buf;
  wire \spi_sr_out_buf[0]_i_2_n_0 ;
  wire \spi_sr_out_buf[0]_i_3_n_0 ;
  wire \spi_sr_out_buf[0]_i_4_n_0 ;
  wire \spi_sr_out_buf[0]_i_5_n_0 ;
  wire \spi_sr_out_buf[1]_i_2_n_0 ;
  wire \spi_sr_out_buf[1]_i_3_n_0 ;
  wire \spi_sr_out_buf[1]_i_4_n_0 ;
  wire \spi_sr_out_buf[1]_i_5_n_0 ;
  wire \spi_sr_out_buf[2]_i_2_n_0 ;
  wire \spi_sr_out_buf[2]_i_3_n_0 ;
  wire \spi_sr_out_buf[2]_i_4_n_0 ;
  wire \spi_sr_out_buf[2]_i_5_n_0 ;
  wire \spi_sr_out_buf[3]_i_2_n_0 ;
  wire \spi_sr_out_buf[3]_i_3_n_0 ;
  wire \spi_sr_out_buf[3]_i_4_n_0 ;
  wire \spi_sr_out_buf[3]_i_5_n_0 ;
  wire \spi_sr_out_buf[4]_i_2_n_0 ;
  wire \spi_sr_out_buf[4]_i_3_n_0 ;
  wire \spi_sr_out_buf[4]_i_4_n_0 ;
  wire \spi_sr_out_buf[4]_i_5_n_0 ;
  wire \spi_sr_out_buf[5]_i_2_n_0 ;
  wire \spi_sr_out_buf[5]_i_3_n_0 ;
  wire \spi_sr_out_buf[5]_i_4_n_0 ;
  wire \spi_sr_out_buf[5]_i_5_n_0 ;
  wire \spi_sr_out_buf[6]_i_2_n_0 ;
  wire \spi_sr_out_buf[6]_i_3_n_0 ;
  wire \spi_sr_out_buf[6]_i_4_n_0 ;
  wire \spi_sr_out_buf[6]_i_5_n_0 ;
  wire \spi_sr_out_buf[7]_i_10_n_0 ;
  wire \spi_sr_out_buf[7]_i_11_n_0 ;
  wire \spi_sr_out_buf[7]_i_12_n_0 ;
  wire \spi_sr_out_buf[7]_i_13_n_0 ;
  wire \spi_sr_out_buf[7]_i_14_n_0 ;
  wire \spi_sr_out_buf[7]_i_15_n_0 ;
  wire \spi_sr_out_buf[7]_i_16_n_0 ;
  wire \spi_sr_out_buf[7]_i_17_n_0 ;
  wire \spi_sr_out_buf[7]_i_1_n_0 ;
  wire \spi_sr_out_buf[7]_i_3_n_0 ;
  wire \spi_sr_out_buf[7]_i_4_n_0 ;
  wire \spi_sr_out_buf[7]_i_5_n_0 ;
  wire \spi_sr_out_buf[7]_i_6_n_0 ;
  wire \spi_sr_out_buf[7]_i_7_n_0 ;
  wire \spi_sr_out_buf[7]_i_8_n_0 ;
  wire \spi_sr_out_buf[7]_i_9_n_0 ;
  wire spi_sr_out_buf_ready_i_1_n_0;
  wire spi_sr_out_buf_ready_i_2_n_0;
  wire spi_sr_out_buf_ready_i_3_n_0;
  wire spi_sr_out_buf_ready_reg_n_0;
  wire \spi_sr_out_buf_reg_n_0_[0] ;
  wire \spi_sr_out_buf_reg_n_0_[1] ;
  wire \spi_sr_out_buf_reg_n_0_[2] ;
  wire \spi_sr_out_buf_reg_n_0_[3] ;
  wire \spi_sr_out_buf_reg_n_0_[4] ;
  wire \spi_sr_out_buf_reg_n_0_[5] ;
  wire \spi_sr_out_buf_reg_n_0_[6] ;
  wire \spi_sr_out_buf_reg_n_0_[7] ;
  wire spi_sr_out_buf_valid;
  wire spi_sr_out_buf_valid_i_1_n_0;
  wire spi_sr_out_buf_valid_i_2_n_0;
  wire spi_sr_out_buf_valid_i_3_n_0;
  wire spi_sr_out_buf_valid_i_4_n_0;
  wire \spi_sr_reg_n_0_[0] ;
  wire \spi_sr_reg_n_0_[1] ;
  wire \spi_sr_reg_n_0_[2] ;
  wire \spi_sr_reg_n_0_[3] ;
  wire \spi_sr_reg_n_0_[4] ;
  wire \spi_sr_reg_n_0_[5] ;
  wire \spi_sr_reg_n_0_[6] ;
  wire \spi_ss_o[0]_i_1_n_0 ;
  wire \spi_ss_o[0]_i_2_n_0 ;
  wire \spi_ss_o[0]_i_3_n_0 ;
  wire \spi_ss_o[0]_i_4_n_0 ;
  wire \spi_ss_o[0]_i_5_n_0 ;
  wire \spi_ss_o_reg[0]_0 ;
  wire [3:2]\NLW_s_axi_full_araddr_q_reg[23]_i_4_CO_UNCONNECTED ;
  wire [3:3]\NLW_s_axi_full_araddr_q_reg[23]_i_4_O_UNCONNECTED ;
  wire [3:2]\NLW_spi_mmio_cont_rd_req_cnt_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_spi_mmio_cont_rd_req_cnt_reg[31]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_spi_mmio_fsm_state_next_reg[3]_i_5_O_UNCONNECTED ;
  wire [3:0]\NLW_spi_mmio_fsm_state_next_reg[3]_i_6_O_UNCONNECTED ;
  wire [3:2]\NLW_spi_mmio_rd_req_cnt_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_spi_mmio_rd_req_cnt_reg[31]_i_3_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hF888FFFFF888F888)) 
    \FSM_onehot_spi_fsm_state[2]_i_1 
       (.I0(\FSM_onehot_spi_fsm_state[2]_i_2_n_0 ),
        .I1(\FSM_onehot_spi_fsm_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_spi_fsm_state_reg_n_0_[1] ),
        .I3(spi_io_mode_q1),
        .I4(\spi_io_t[2]_i_2_n_0 ),
        .I5(\spi_io_o[0]_i_4_n_0 ),
        .O(spi_fsm_state));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_spi_fsm_state[2]_i_2 
       (.I0(spi_sr_out_buf_valid),
        .I1(spi_rd_req_ack_reg_n_0),
        .I2(spi_rd_req_reg_n_0),
        .O(\FSM_onehot_spi_fsm_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'h8200)) 
    \FSM_onehot_spi_fsm_state[2]_i_3 
       (.I0(spi_sck_div_en_reg_n_0),
        .I1(\spi_mode_reg_n_0_[0] ),
        .I2(spi_sck_int),
        .I3(\spi_sck_div_cnt[7]_i_3_n_0 ),
        .O(spi_io_mode_q1));
  (* FSM_ENCODED_STATES = "SPI_FSM_STATE_WAIT_XFER_REQ:001,SPI_FSM_STATE_WAIT_SCK_SYNC:010,SPI_FSM_STATE_ACTIVE:100," *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_spi_fsm_state_reg[0] 
       (.C(aclk),
        .CE(spi_fsm_state),
        .D(\FSM_onehot_spi_fsm_state_reg_n_0_[2] ),
        .Q(\FSM_onehot_spi_fsm_state_reg_n_0_[0] ),
        .S(p_5_in));
  (* FSM_ENCODED_STATES = "SPI_FSM_STATE_WAIT_XFER_REQ:001,SPI_FSM_STATE_WAIT_SCK_SYNC:010,SPI_FSM_STATE_ACTIVE:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_spi_fsm_state_reg[1] 
       (.C(aclk),
        .CE(spi_fsm_state),
        .D(\FSM_onehot_spi_fsm_state_reg_n_0_[0] ),
        .Q(\FSM_onehot_spi_fsm_state_reg_n_0_[1] ),
        .R(p_5_in));
  (* FSM_ENCODED_STATES = "SPI_FSM_STATE_WAIT_XFER_REQ:001,SPI_FSM_STATE_WAIT_SCK_SYNC:010,SPI_FSM_STATE_ACTIVE:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_spi_fsm_state_reg[2] 
       (.C(aclk),
        .CE(spi_fsm_state),
        .D(\FSM_onehot_spi_fsm_state_reg_n_0_[1] ),
        .Q(\FSM_onehot_spi_fsm_state_reg_n_0_[2] ),
        .R(p_5_in));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    irq_INST_0
       (.I0(\irq_pend_reg_n_0_[0] ),
        .I1(\irq_enabled_reg_n_0_[0] ),
        .I2(\irq_pend_reg_n_0_[1] ),
        .I3(\irq_enabled_reg_n_0_[1] ),
        .I4(\irq_enabled_reg_n_0_[2] ),
        .I5(\irq_pend_reg_n_0_[2] ),
        .O(irq));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \irq_enabled[6]_i_1 
       (.I0(s_axi_lite_wstrb[0]),
        .I1(s_axi_lite_awready),
        .I2(s_axi_lite_awaddr[0]),
        .I3(s_axi_lite_awaddr[3]),
        .I4(s_axi_lite_awaddr[2]),
        .I5(s_axi_lite_awaddr[1]),
        .O(irq_enabled));
  FDRE \irq_enabled_reg[0] 
       (.C(aclk),
        .CE(irq_enabled),
        .D(s_axi_lite_wdata[0]),
        .Q(\irq_enabled_reg_n_0_[0] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \irq_enabled_reg[1] 
       (.C(aclk),
        .CE(irq_enabled),
        .D(s_axi_lite_wdata[1]),
        .Q(\irq_enabled_reg_n_0_[1] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \irq_enabled_reg[2] 
       (.C(aclk),
        .CE(irq_enabled),
        .D(s_axi_lite_wdata[2]),
        .Q(\irq_enabled_reg_n_0_[2] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \irq_enabled_reg[3] 
       (.C(aclk),
        .CE(irq_enabled),
        .D(s_axi_lite_wdata[3]),
        .Q(\irq_enabled_reg_n_0_[3] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \irq_enabled_reg[4] 
       (.C(aclk),
        .CE(irq_enabled),
        .D(s_axi_lite_wdata[4]),
        .Q(\irq_enabled_reg_n_0_[4] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \irq_enabled_reg[5] 
       (.C(aclk),
        .CE(irq_enabled),
        .D(s_axi_lite_wdata[5]),
        .Q(\irq_enabled_reg_n_0_[5] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \irq_enabled_reg[6] 
       (.C(aclk),
        .CE(irq_enabled),
        .D(s_axi_lite_wdata[6]),
        .Q(\irq_enabled_reg_n_0_[6] ),
        .R(s_axi_lite_awready_i_1_n_0));
  LUT5 #(
    .INIT(32'hFF553000)) 
    \irq_pend[0]_i_1 
       (.I0(s_axi_lite_wdata[0]),
        .I1(spi_idle_q),
        .I2(\FSM_onehot_spi_fsm_state_reg_n_0_[0] ),
        .I3(\irq_pend[2]_i_2_n_0 ),
        .I4(\irq_pend_reg_n_0_[0] ),
        .O(\irq_pend[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF553000)) 
    \irq_pend[1]_i_1 
       (.I0(s_axi_lite_wdata[1]),
        .I1(spi_sr_in_buf_valid_q),
        .I2(spi_sr_in_buf_valid_reg_n_0),
        .I3(\irq_pend[2]_i_2_n_0 ),
        .I4(\irq_pend_reg_n_0_[1] ),
        .O(\irq_pend[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF5555C0F00000)) 
    \irq_pend[2]_i_1 
       (.I0(s_axi_lite_wdata[2]),
        .I1(spi_sr_out_buf_ready_reg_n_0),
        .I2(spi_sr_out_buf_valid),
        .I3(spi_en_reg_n_0),
        .I4(\irq_pend[2]_i_2_n_0 ),
        .I5(\irq_pend_reg_n_0_[2] ),
        .O(\irq_pend[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF7FFFFF)) 
    \irq_pend[2]_i_2 
       (.I0(s_axi_lite_awready),
        .I1(s_axi_lite_wstrb[0]),
        .I2(s_axi_lite_awaddr[1]),
        .I3(s_axi_lite_awaddr[2]),
        .I4(s_axi_lite_awaddr[0]),
        .I5(s_axi_lite_awaddr[3]),
        .O(\irq_pend[2]_i_2_n_0 ));
  FDRE \irq_pend_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\irq_pend[0]_i_1_n_0 ),
        .Q(\irq_pend_reg_n_0_[0] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \irq_pend_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\irq_pend[1]_i_1_n_0 ),
        .Q(\irq_pend_reg_n_0_[1] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \irq_pend_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\irq_pend[2]_i_1_n_0 ),
        .Q(\irq_pend_reg_n_0_[2] ),
        .R(s_axi_lite_awready_i_1_n_0));
  LUT3 #(
    .INIT(8'h74)) 
    \s_axi_full_araddr_q[0]_i_1 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I1(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I2(s_axi_full_araddr[0]),
        .O(\s_axi_full_araddr_q[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_full_araddr_q[10]_i_1 
       (.I0(s_axi_full_araddr_q0[10]),
        .I1(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I2(s_axi_full_araddr[10]),
        .O(\s_axi_full_araddr_q[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_full_araddr_q[11]_i_1 
       (.I0(s_axi_full_araddr_q0[11]),
        .I1(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I2(s_axi_full_araddr[11]),
        .O(\s_axi_full_araddr_q[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_full_araddr_q[12]_i_1 
       (.I0(s_axi_full_araddr_q0[12]),
        .I1(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I2(s_axi_full_araddr[12]),
        .O(\s_axi_full_araddr_q[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_full_araddr_q[13]_i_1 
       (.I0(s_axi_full_araddr_q0[13]),
        .I1(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I2(s_axi_full_araddr[13]),
        .O(\s_axi_full_araddr_q[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_full_araddr_q[14]_i_1 
       (.I0(s_axi_full_araddr_q0[14]),
        .I1(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I2(s_axi_full_araddr[14]),
        .O(\s_axi_full_araddr_q[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_full_araddr_q[15]_i_1 
       (.I0(s_axi_full_araddr_q0[15]),
        .I1(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I2(s_axi_full_araddr[15]),
        .O(\s_axi_full_araddr_q[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_full_araddr_q[16]_i_1 
       (.I0(s_axi_full_araddr_q0[16]),
        .I1(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I2(s_axi_full_araddr[16]),
        .O(\s_axi_full_araddr_q[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_full_araddr_q[17]_i_1 
       (.I0(s_axi_full_araddr_q0[17]),
        .I1(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I2(s_axi_full_araddr[17]),
        .O(\s_axi_full_araddr_q[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_full_araddr_q[18]_i_1 
       (.I0(s_axi_full_araddr_q0[18]),
        .I1(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I2(s_axi_full_araddr[18]),
        .O(\s_axi_full_araddr_q[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_full_araddr_q[19]_i_1 
       (.I0(s_axi_full_araddr_q0[19]),
        .I1(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I2(s_axi_full_araddr[19]),
        .O(\s_axi_full_araddr_q[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_full_araddr_q[1]_i_1 
       (.I0(s_axi_full_araddr_q0[1]),
        .I1(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I2(s_axi_full_araddr[1]),
        .O(\s_axi_full_araddr_q[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_full_araddr_q[20]_i_1 
       (.I0(s_axi_full_araddr_q0[20]),
        .I1(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I2(s_axi_full_araddr[20]),
        .O(\s_axi_full_araddr_q[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_full_araddr_q[21]_i_1 
       (.I0(s_axi_full_araddr_q0[21]),
        .I1(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I2(s_axi_full_araddr[21]),
        .O(\s_axi_full_araddr_q[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_full_araddr_q[22]_i_1 
       (.I0(s_axi_full_araddr_q0[22]),
        .I1(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I2(s_axi_full_araddr[22]),
        .O(\s_axi_full_araddr_q[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF005D0000)) 
    \s_axi_full_araddr_q[23]_i_1 
       (.I0(spi_mmio_en),
        .I1(spi_sr_in_buf_valid_reg_n_0),
        .I2(spi_sr_in_buf_ready_reg_n_0),
        .I3(s_axi_full_rvalid_reg_0),
        .I4(\s_axi_full_araddr_q[23]_i_3_n_0 ),
        .I5(\spi_mmio_fsm_state[1]_i_5_n_0 ),
        .O(\s_axi_full_araddr_q[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_full_araddr_q[23]_i_2 
       (.I0(s_axi_full_araddr_q0[23]),
        .I1(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I2(s_axi_full_araddr[23]),
        .O(\s_axi_full_araddr_q[23]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \s_axi_full_araddr_q[23]_i_3 
       (.I0(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I1(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I2(\spi_mmio_fsm_state_reg_n_0_[3] ),
        .I3(\spi_mmio_fsm_state_reg_n_0_[2] ),
        .O(\s_axi_full_araddr_q[23]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_full_araddr_q[2]_i_1 
       (.I0(s_axi_full_araddr_q0[2]),
        .I1(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I2(s_axi_full_araddr[2]),
        .O(\s_axi_full_araddr_q[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_full_araddr_q[3]_i_1 
       (.I0(s_axi_full_araddr_q0[3]),
        .I1(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I2(s_axi_full_araddr[3]),
        .O(\s_axi_full_araddr_q[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_full_araddr_q[4]_i_1 
       (.I0(s_axi_full_araddr_q0[4]),
        .I1(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I2(s_axi_full_araddr[4]),
        .O(\s_axi_full_araddr_q[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_full_araddr_q[5]_i_1 
       (.I0(s_axi_full_araddr_q0[5]),
        .I1(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I2(s_axi_full_araddr[5]),
        .O(\s_axi_full_araddr_q[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_full_araddr_q[6]_i_1 
       (.I0(s_axi_full_araddr_q0[6]),
        .I1(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I2(s_axi_full_araddr[6]),
        .O(\s_axi_full_araddr_q[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_full_araddr_q[7]_i_1 
       (.I0(s_axi_full_araddr_q0[7]),
        .I1(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I2(s_axi_full_araddr[7]),
        .O(\s_axi_full_araddr_q[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_full_araddr_q[8]_i_1 
       (.I0(s_axi_full_araddr_q0[8]),
        .I1(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I2(s_axi_full_araddr[8]),
        .O(\s_axi_full_araddr_q[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_full_araddr_q[9]_i_1 
       (.I0(s_axi_full_araddr_q0[9]),
        .I1(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I2(s_axi_full_araddr[9]),
        .O(\s_axi_full_araddr_q[9]_i_1_n_0 ));
  FDRE \s_axi_full_araddr_q_reg[0] 
       (.C(aclk),
        .CE(\s_axi_full_araddr_q[23]_i_1_n_0 ),
        .D(\s_axi_full_araddr_q[0]_i_1_n_0 ),
        .Q(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \s_axi_full_araddr_q_reg[10] 
       (.C(aclk),
        .CE(\s_axi_full_araddr_q[23]_i_1_n_0 ),
        .D(\s_axi_full_araddr_q[10]_i_1_n_0 ),
        .Q(\s_axi_full_araddr_q_reg_n_0_[10] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \s_axi_full_araddr_q_reg[11] 
       (.C(aclk),
        .CE(\s_axi_full_araddr_q[23]_i_1_n_0 ),
        .D(\s_axi_full_araddr_q[11]_i_1_n_0 ),
        .Q(\s_axi_full_araddr_q_reg_n_0_[11] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \s_axi_full_araddr_q_reg[12] 
       (.C(aclk),
        .CE(\s_axi_full_araddr_q[23]_i_1_n_0 ),
        .D(\s_axi_full_araddr_q[12]_i_1_n_0 ),
        .Q(\s_axi_full_araddr_q_reg_n_0_[12] ),
        .R(s_axi_lite_awready_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_axi_full_araddr_q_reg[12]_i_2 
       (.CI(\s_axi_full_araddr_q_reg[8]_i_2_n_0 ),
        .CO({\s_axi_full_araddr_q_reg[12]_i_2_n_0 ,\s_axi_full_araddr_q_reg[12]_i_2_n_1 ,\s_axi_full_araddr_q_reg[12]_i_2_n_2 ,\s_axi_full_araddr_q_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(s_axi_full_araddr_q0[12:9]),
        .S({\s_axi_full_araddr_q_reg_n_0_[12] ,\s_axi_full_araddr_q_reg_n_0_[11] ,\s_axi_full_araddr_q_reg_n_0_[10] ,\s_axi_full_araddr_q_reg_n_0_[9] }));
  FDRE \s_axi_full_araddr_q_reg[13] 
       (.C(aclk),
        .CE(\s_axi_full_araddr_q[23]_i_1_n_0 ),
        .D(\s_axi_full_araddr_q[13]_i_1_n_0 ),
        .Q(\s_axi_full_araddr_q_reg_n_0_[13] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \s_axi_full_araddr_q_reg[14] 
       (.C(aclk),
        .CE(\s_axi_full_araddr_q[23]_i_1_n_0 ),
        .D(\s_axi_full_araddr_q[14]_i_1_n_0 ),
        .Q(\s_axi_full_araddr_q_reg_n_0_[14] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \s_axi_full_araddr_q_reg[15] 
       (.C(aclk),
        .CE(\s_axi_full_araddr_q[23]_i_1_n_0 ),
        .D(\s_axi_full_araddr_q[15]_i_1_n_0 ),
        .Q(\s_axi_full_araddr_q_reg_n_0_[15] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \s_axi_full_araddr_q_reg[16] 
       (.C(aclk),
        .CE(\s_axi_full_araddr_q[23]_i_1_n_0 ),
        .D(\s_axi_full_araddr_q[16]_i_1_n_0 ),
        .Q(\s_axi_full_araddr_q_reg_n_0_[16] ),
        .R(s_axi_lite_awready_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_axi_full_araddr_q_reg[16]_i_2 
       (.CI(\s_axi_full_araddr_q_reg[12]_i_2_n_0 ),
        .CO({\s_axi_full_araddr_q_reg[16]_i_2_n_0 ,\s_axi_full_araddr_q_reg[16]_i_2_n_1 ,\s_axi_full_araddr_q_reg[16]_i_2_n_2 ,\s_axi_full_araddr_q_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(s_axi_full_araddr_q0[16:13]),
        .S({\s_axi_full_araddr_q_reg_n_0_[16] ,\s_axi_full_araddr_q_reg_n_0_[15] ,\s_axi_full_araddr_q_reg_n_0_[14] ,\s_axi_full_araddr_q_reg_n_0_[13] }));
  FDRE \s_axi_full_araddr_q_reg[17] 
       (.C(aclk),
        .CE(\s_axi_full_araddr_q[23]_i_1_n_0 ),
        .D(\s_axi_full_araddr_q[17]_i_1_n_0 ),
        .Q(\s_axi_full_araddr_q_reg_n_0_[17] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \s_axi_full_araddr_q_reg[18] 
       (.C(aclk),
        .CE(\s_axi_full_araddr_q[23]_i_1_n_0 ),
        .D(\s_axi_full_araddr_q[18]_i_1_n_0 ),
        .Q(\s_axi_full_araddr_q_reg_n_0_[18] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \s_axi_full_araddr_q_reg[19] 
       (.C(aclk),
        .CE(\s_axi_full_araddr_q[23]_i_1_n_0 ),
        .D(\s_axi_full_araddr_q[19]_i_1_n_0 ),
        .Q(\s_axi_full_araddr_q_reg_n_0_[19] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \s_axi_full_araddr_q_reg[1] 
       (.C(aclk),
        .CE(\s_axi_full_araddr_q[23]_i_1_n_0 ),
        .D(\s_axi_full_araddr_q[1]_i_1_n_0 ),
        .Q(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \s_axi_full_araddr_q_reg[20] 
       (.C(aclk),
        .CE(\s_axi_full_araddr_q[23]_i_1_n_0 ),
        .D(\s_axi_full_araddr_q[20]_i_1_n_0 ),
        .Q(\s_axi_full_araddr_q_reg_n_0_[20] ),
        .R(s_axi_lite_awready_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_axi_full_araddr_q_reg[20]_i_2 
       (.CI(\s_axi_full_araddr_q_reg[16]_i_2_n_0 ),
        .CO({\s_axi_full_araddr_q_reg[20]_i_2_n_0 ,\s_axi_full_araddr_q_reg[20]_i_2_n_1 ,\s_axi_full_araddr_q_reg[20]_i_2_n_2 ,\s_axi_full_araddr_q_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(s_axi_full_araddr_q0[20:17]),
        .S({\s_axi_full_araddr_q_reg_n_0_[20] ,\s_axi_full_araddr_q_reg_n_0_[19] ,\s_axi_full_araddr_q_reg_n_0_[18] ,\s_axi_full_araddr_q_reg_n_0_[17] }));
  FDRE \s_axi_full_araddr_q_reg[21] 
       (.C(aclk),
        .CE(\s_axi_full_araddr_q[23]_i_1_n_0 ),
        .D(\s_axi_full_araddr_q[21]_i_1_n_0 ),
        .Q(\s_axi_full_araddr_q_reg_n_0_[21] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \s_axi_full_araddr_q_reg[22] 
       (.C(aclk),
        .CE(\s_axi_full_araddr_q[23]_i_1_n_0 ),
        .D(\s_axi_full_araddr_q[22]_i_1_n_0 ),
        .Q(\s_axi_full_araddr_q_reg_n_0_[22] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \s_axi_full_araddr_q_reg[23] 
       (.C(aclk),
        .CE(\s_axi_full_araddr_q[23]_i_1_n_0 ),
        .D(\s_axi_full_araddr_q[23]_i_2_n_0 ),
        .Q(\s_axi_full_araddr_q_reg_n_0_[23] ),
        .R(s_axi_lite_awready_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_axi_full_araddr_q_reg[23]_i_4 
       (.CI(\s_axi_full_araddr_q_reg[20]_i_2_n_0 ),
        .CO({\NLW_s_axi_full_araddr_q_reg[23]_i_4_CO_UNCONNECTED [3:2],\s_axi_full_araddr_q_reg[23]_i_4_n_2 ,\s_axi_full_araddr_q_reg[23]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_s_axi_full_araddr_q_reg[23]_i_4_O_UNCONNECTED [3],s_axi_full_araddr_q0[23:21]}),
        .S({1'b0,\s_axi_full_araddr_q_reg_n_0_[23] ,\s_axi_full_araddr_q_reg_n_0_[22] ,\s_axi_full_araddr_q_reg_n_0_[21] }));
  FDRE \s_axi_full_araddr_q_reg[2] 
       (.C(aclk),
        .CE(\s_axi_full_araddr_q[23]_i_1_n_0 ),
        .D(\s_axi_full_araddr_q[2]_i_1_n_0 ),
        .Q(\s_axi_full_araddr_q_reg_n_0_[2] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \s_axi_full_araddr_q_reg[3] 
       (.C(aclk),
        .CE(\s_axi_full_araddr_q[23]_i_1_n_0 ),
        .D(\s_axi_full_araddr_q[3]_i_1_n_0 ),
        .Q(\s_axi_full_araddr_q_reg_n_0_[3] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \s_axi_full_araddr_q_reg[4] 
       (.C(aclk),
        .CE(\s_axi_full_araddr_q[23]_i_1_n_0 ),
        .D(\s_axi_full_araddr_q[4]_i_1_n_0 ),
        .Q(\s_axi_full_araddr_q_reg_n_0_[4] ),
        .R(s_axi_lite_awready_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_axi_full_araddr_q_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\s_axi_full_araddr_q_reg[4]_i_2_n_0 ,\s_axi_full_araddr_q_reg[4]_i_2_n_1 ,\s_axi_full_araddr_q_reg[4]_i_2_n_2 ,\s_axi_full_araddr_q_reg[4]_i_2_n_3 }),
        .CYINIT(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(s_axi_full_araddr_q0[4:1]),
        .S({\s_axi_full_araddr_q_reg_n_0_[4] ,\s_axi_full_araddr_q_reg_n_0_[3] ,\s_axi_full_araddr_q_reg_n_0_[2] ,\s_axi_full_araddr_q_reg_n_0_[1] }));
  FDRE \s_axi_full_araddr_q_reg[5] 
       (.C(aclk),
        .CE(\s_axi_full_araddr_q[23]_i_1_n_0 ),
        .D(\s_axi_full_araddr_q[5]_i_1_n_0 ),
        .Q(\s_axi_full_araddr_q_reg_n_0_[5] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \s_axi_full_araddr_q_reg[6] 
       (.C(aclk),
        .CE(\s_axi_full_araddr_q[23]_i_1_n_0 ),
        .D(\s_axi_full_araddr_q[6]_i_1_n_0 ),
        .Q(\s_axi_full_araddr_q_reg_n_0_[6] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \s_axi_full_araddr_q_reg[7] 
       (.C(aclk),
        .CE(\s_axi_full_araddr_q[23]_i_1_n_0 ),
        .D(\s_axi_full_araddr_q[7]_i_1_n_0 ),
        .Q(\s_axi_full_araddr_q_reg_n_0_[7] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \s_axi_full_araddr_q_reg[8] 
       (.C(aclk),
        .CE(\s_axi_full_araddr_q[23]_i_1_n_0 ),
        .D(\s_axi_full_araddr_q[8]_i_1_n_0 ),
        .Q(\s_axi_full_araddr_q_reg_n_0_[8] ),
        .R(s_axi_lite_awready_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_axi_full_araddr_q_reg[8]_i_2 
       (.CI(\s_axi_full_araddr_q_reg[4]_i_2_n_0 ),
        .CO({\s_axi_full_araddr_q_reg[8]_i_2_n_0 ,\s_axi_full_araddr_q_reg[8]_i_2_n_1 ,\s_axi_full_araddr_q_reg[8]_i_2_n_2 ,\s_axi_full_araddr_q_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(s_axi_full_araddr_q0[8:5]),
        .S({\s_axi_full_araddr_q_reg_n_0_[8] ,\s_axi_full_araddr_q_reg_n_0_[7] ,\s_axi_full_araddr_q_reg_n_0_[6] ,\s_axi_full_araddr_q_reg_n_0_[5] }));
  FDRE \s_axi_full_araddr_q_reg[9] 
       (.C(aclk),
        .CE(\s_axi_full_araddr_q[23]_i_1_n_0 ),
        .D(\s_axi_full_araddr_q[9]_i_1_n_0 ),
        .Q(\s_axi_full_araddr_q_reg_n_0_[9] ),
        .R(s_axi_lite_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \s_axi_full_arlen_q[0]_i_1 
       (.I0(s_axi_full_arlen_q__0[0]),
        .I1(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I2(s_axi_full_arlen[0]),
        .O(\s_axi_full_arlen_q[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'hE22E)) 
    \s_axi_full_arlen_q[1]_i_1 
       (.I0(s_axi_full_arlen[1]),
        .I1(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I2(s_axi_full_arlen_q__0[0]),
        .I3(s_axi_full_arlen_q__0[1]),
        .O(\s_axi_full_arlen_q[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFC03AAAA)) 
    \s_axi_full_arlen_q[2]_i_1 
       (.I0(s_axi_full_arlen[2]),
        .I1(s_axi_full_arlen_q__0[1]),
        .I2(s_axi_full_arlen_q__0[0]),
        .I3(s_axi_full_arlen_q__0[2]),
        .I4(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .O(\s_axi_full_arlen_q[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFC0003AAAAAAAA)) 
    \s_axi_full_arlen_q[3]_i_1 
       (.I0(s_axi_full_arlen[3]),
        .I1(s_axi_full_arlen_q__0[2]),
        .I2(s_axi_full_arlen_q__0[0]),
        .I3(s_axi_full_arlen_q__0[1]),
        .I4(s_axi_full_arlen_q__0[3]),
        .I5(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .O(\s_axi_full_arlen_q[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hC3AA)) 
    \s_axi_full_arlen_q[4]_i_1 
       (.I0(s_axi_full_arlen[4]),
        .I1(\s_axi_full_arlen_q[6]_i_2_n_0 ),
        .I2(s_axi_full_arlen_q__0[4]),
        .I3(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .O(\s_axi_full_arlen_q[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFC03AAAA)) 
    \s_axi_full_arlen_q[5]_i_1 
       (.I0(s_axi_full_arlen[5]),
        .I1(s_axi_full_arlen_q__0[4]),
        .I2(\s_axi_full_arlen_q[6]_i_2_n_0 ),
        .I3(s_axi_full_arlen_q__0[5]),
        .I4(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .O(\s_axi_full_arlen_q[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFC0003AAAAAAAA)) 
    \s_axi_full_arlen_q[6]_i_1 
       (.I0(s_axi_full_arlen[6]),
        .I1(s_axi_full_arlen_q__0[5]),
        .I2(\s_axi_full_arlen_q[6]_i_2_n_0 ),
        .I3(s_axi_full_arlen_q__0[4]),
        .I4(s_axi_full_arlen_q__0[6]),
        .I5(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .O(\s_axi_full_arlen_q[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \s_axi_full_arlen_q[6]_i_2 
       (.I0(s_axi_full_arlen_q__0[2]),
        .I1(s_axi_full_arlen_q__0[0]),
        .I2(s_axi_full_arlen_q__0[1]),
        .I3(s_axi_full_arlen_q__0[3]),
        .O(\s_axi_full_arlen_q[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF4444444)) 
    \s_axi_full_arlen_q[7]_i_1 
       (.I0(spi_rd_req4),
        .I1(s_axi_full_rlast_i_3_n_0),
        .I2(s_axi_full_arready_reg_0),
        .I3(s_axi_full_arvalid),
        .I4(s_axi_full_arready_i_3_n_0),
        .O(\s_axi_full_arlen_q[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFCAA03AA)) 
    \s_axi_full_arlen_q[7]_i_2 
       (.I0(s_axi_full_arlen[7]),
        .I1(\s_axi_full_arlen_q[7]_i_3_n_0 ),
        .I2(s_axi_full_arlen_q__0[6]),
        .I3(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I4(s_axi_full_arlen_q__0[7]),
        .O(\s_axi_full_arlen_q[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \s_axi_full_arlen_q[7]_i_3 
       (.I0(s_axi_full_arlen_q__0[4]),
        .I1(s_axi_full_arlen_q__0[2]),
        .I2(s_axi_full_arlen_q__0[0]),
        .I3(s_axi_full_arlen_q__0[1]),
        .I4(s_axi_full_arlen_q__0[3]),
        .I5(s_axi_full_arlen_q__0[5]),
        .O(\s_axi_full_arlen_q[7]_i_3_n_0 ));
  FDRE \s_axi_full_arlen_q_reg[0] 
       (.C(aclk),
        .CE(\s_axi_full_arlen_q[7]_i_1_n_0 ),
        .D(\s_axi_full_arlen_q[0]_i_1_n_0 ),
        .Q(s_axi_full_arlen_q__0[0]),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \s_axi_full_arlen_q_reg[1] 
       (.C(aclk),
        .CE(\s_axi_full_arlen_q[7]_i_1_n_0 ),
        .D(\s_axi_full_arlen_q[1]_i_1_n_0 ),
        .Q(s_axi_full_arlen_q__0[1]),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \s_axi_full_arlen_q_reg[2] 
       (.C(aclk),
        .CE(\s_axi_full_arlen_q[7]_i_1_n_0 ),
        .D(\s_axi_full_arlen_q[2]_i_1_n_0 ),
        .Q(s_axi_full_arlen_q__0[2]),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \s_axi_full_arlen_q_reg[3] 
       (.C(aclk),
        .CE(\s_axi_full_arlen_q[7]_i_1_n_0 ),
        .D(\s_axi_full_arlen_q[3]_i_1_n_0 ),
        .Q(s_axi_full_arlen_q__0[3]),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \s_axi_full_arlen_q_reg[4] 
       (.C(aclk),
        .CE(\s_axi_full_arlen_q[7]_i_1_n_0 ),
        .D(\s_axi_full_arlen_q[4]_i_1_n_0 ),
        .Q(s_axi_full_arlen_q__0[4]),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \s_axi_full_arlen_q_reg[5] 
       (.C(aclk),
        .CE(\s_axi_full_arlen_q[7]_i_1_n_0 ),
        .D(\s_axi_full_arlen_q[5]_i_1_n_0 ),
        .Q(s_axi_full_arlen_q__0[5]),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \s_axi_full_arlen_q_reg[6] 
       (.C(aclk),
        .CE(\s_axi_full_arlen_q[7]_i_1_n_0 ),
        .D(\s_axi_full_arlen_q[6]_i_1_n_0 ),
        .Q(s_axi_full_arlen_q__0[6]),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \s_axi_full_arlen_q_reg[7] 
       (.C(aclk),
        .CE(\s_axi_full_arlen_q[7]_i_1_n_0 ),
        .D(\s_axi_full_arlen_q[7]_i_2_n_0 ),
        .Q(s_axi_full_arlen_q__0[7]),
        .R(s_axi_lite_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h4500FFFFCF000000)) 
    s_axi_full_arready_i_1
       (.I0(s_axi_full_arvalid),
        .I1(s_axi_full_rready),
        .I2(s_axi_full_rvalid_reg_0),
        .I3(s_axi_full_arready_i_2_n_0),
        .I4(s_axi_full_arready_i_3_n_0),
        .I5(s_axi_full_arready_reg_0),
        .O(s_axi_full_arready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    s_axi_full_arready_i_2
       (.I0(spi_mmio_en_req_reg_n_0),
        .I1(spi_en_reg_n_0),
        .I2(spi_mmio_en),
        .O(s_axi_full_arready_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    s_axi_full_arready_i_3
       (.I0(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I1(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I2(\spi_mmio_fsm_state_reg_n_0_[3] ),
        .I3(\spi_mmio_fsm_state_reg_n_0_[2] ),
        .O(s_axi_full_arready_i_3_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full ARREADY" *) 
  FDRE s_axi_full_arready_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_axi_full_arready_i_1_n_0),
        .Q(s_axi_full_arready_reg_0),
        .R(s_axi_lite_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_full_arsize_q[0]_i_1 
       (.I0(s_axi_full_arsize[2]),
        .I1(s_axi_full_arsize[0]),
        .O(\s_axi_full_arsize_q[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_full_arsize_q[1]_i_1 
       (.I0(s_axi_full_arsize[2]),
        .I1(s_axi_full_arsize[1]),
        .O(\s_axi_full_arsize_q[1]_i_1_n_0 ));
  FDRE \s_axi_full_arsize_q_reg[0] 
       (.C(aclk),
        .CE(\s_axi_full_rid[3]_i_1_n_0 ),
        .D(\s_axi_full_arsize_q[0]_i_1_n_0 ),
        .Q(s_axi_full_arsize_q[0]),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \s_axi_full_arsize_q_reg[1] 
       (.C(aclk),
        .CE(\s_axi_full_rid[3]_i_1_n_0 ),
        .D(\s_axi_full_arsize_q[1]_i_1_n_0 ),
        .Q(s_axi_full_arsize_q[1]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h0444)) 
    s_axi_full_awready_i_1
       (.I0(s_axi_full_write_busy__0),
        .I1(aresetn),
        .I2(s_axi_full_awready_reg_0),
        .I3(s_axi_full_awvalid),
        .O(s_axi_full_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full AWREADY" *) 
  FDRE s_axi_full_awready_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_axi_full_awready_i_1_n_0),
        .Q(s_axi_full_awready_reg_0),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_full_bid[3]_i_1 
       (.I0(s_axi_full_awready_reg_0),
        .I1(s_axi_full_awvalid),
        .O(s_axi_full_awready0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full BID" *) 
  FDRE \s_axi_full_bid_reg[0] 
       (.C(aclk),
        .CE(s_axi_full_awready0),
        .D(s_axi_full_awid[0]),
        .Q(s_axi_full_bid[0]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full BID" *) 
  FDRE \s_axi_full_bid_reg[1] 
       (.C(aclk),
        .CE(s_axi_full_awready0),
        .D(s_axi_full_awid[1]),
        .Q(s_axi_full_bid[1]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full BID" *) 
  FDRE \s_axi_full_bid_reg[2] 
       (.C(aclk),
        .CE(s_axi_full_awready0),
        .D(s_axi_full_awid[2]),
        .Q(s_axi_full_bid[2]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full BID" *) 
  FDRE \s_axi_full_bid_reg[3] 
       (.C(aclk),
        .CE(s_axi_full_awready0),
        .D(s_axi_full_awid[3]),
        .Q(s_axi_full_bid[3]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h80FF8080)) 
    s_axi_full_bvalid_i_1
       (.I0(s_axi_full_wlast),
        .I1(s_axi_full_wready),
        .I2(s_axi_full_wvalid),
        .I3(s_axi_full_bready),
        .I4(s_axi_full_bvalid),
        .O(s_axi_full_bvalid_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full BVALID" *) 
  FDRE s_axi_full_bvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_axi_full_bvalid_i_1_n_0),
        .Q(s_axi_full_bvalid),
        .R(s_axi_lite_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \s_axi_full_rdata[0]_i_1 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I1(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I2(\s_axi_full_rdata[31]_i_4_n_0 ),
        .I3(data5[0]),
        .O(\s_axi_full_rdata[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \s_axi_full_rdata[10]_i_1 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I1(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I2(\s_axi_full_rdata[31]_i_4_n_0 ),
        .I3(data5[2]),
        .O(\s_axi_full_rdata[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \s_axi_full_rdata[11]_i_1 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I1(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I2(\s_axi_full_rdata[31]_i_4_n_0 ),
        .I3(data5[3]),
        .O(\s_axi_full_rdata[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \s_axi_full_rdata[12]_i_1 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I1(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I2(\s_axi_full_rdata[31]_i_4_n_0 ),
        .I3(data5[4]),
        .O(\s_axi_full_rdata[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \s_axi_full_rdata[13]_i_1 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I1(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I2(\s_axi_full_rdata[31]_i_4_n_0 ),
        .I3(data5[5]),
        .O(\s_axi_full_rdata[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \s_axi_full_rdata[14]_i_1 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I1(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I2(\s_axi_full_rdata[31]_i_4_n_0 ),
        .I3(data5[6]),
        .O(\s_axi_full_rdata[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88F88888)) 
    \s_axi_full_rdata[15]_i_1 
       (.I0(s_axi_full_rready),
        .I1(s_axi_full_rvalid_reg_0),
        .I2(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I3(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I4(\s_axi_full_rdata[31]_i_3_n_0 ),
        .O(\s_axi_full_rdata[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \s_axi_full_rdata[15]_i_2 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I1(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I2(\s_axi_full_rdata[31]_i_4_n_0 ),
        .I3(data5[7]),
        .O(\s_axi_full_rdata[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \s_axi_full_rdata[16]_i_1 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I1(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I2(\s_axi_full_rdata[31]_i_4_n_0 ),
        .I3(data5[0]),
        .O(\s_axi_full_rdata[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \s_axi_full_rdata[17]_i_1 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I1(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I2(\s_axi_full_rdata[31]_i_4_n_0 ),
        .I3(data5[1]),
        .O(\s_axi_full_rdata[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \s_axi_full_rdata[18]_i_1 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I1(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I2(\s_axi_full_rdata[31]_i_4_n_0 ),
        .I3(data5[2]),
        .O(\s_axi_full_rdata[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \s_axi_full_rdata[19]_i_1 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I1(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I2(\s_axi_full_rdata[31]_i_4_n_0 ),
        .I3(data5[3]),
        .O(\s_axi_full_rdata[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \s_axi_full_rdata[1]_i_1 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I1(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I2(\s_axi_full_rdata[31]_i_4_n_0 ),
        .I3(data5[1]),
        .O(\s_axi_full_rdata[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \s_axi_full_rdata[20]_i_1 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I1(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I2(\s_axi_full_rdata[31]_i_4_n_0 ),
        .I3(data5[4]),
        .O(\s_axi_full_rdata[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \s_axi_full_rdata[21]_i_1 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I1(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I2(\s_axi_full_rdata[31]_i_4_n_0 ),
        .I3(data5[5]),
        .O(\s_axi_full_rdata[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \s_axi_full_rdata[22]_i_1 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I1(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I2(\s_axi_full_rdata[31]_i_4_n_0 ),
        .I3(data5[6]),
        .O(\s_axi_full_rdata[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88F88888)) 
    \s_axi_full_rdata[23]_i_1 
       (.I0(s_axi_full_rready),
        .I1(s_axi_full_rvalid_reg_0),
        .I2(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I3(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I4(\s_axi_full_rdata[31]_i_3_n_0 ),
        .O(\s_axi_full_rdata[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \s_axi_full_rdata[23]_i_2 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I1(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I2(\s_axi_full_rdata[31]_i_4_n_0 ),
        .I3(data5[7]),
        .O(\s_axi_full_rdata[23]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \s_axi_full_rdata[24]_i_1 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I1(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I2(\s_axi_full_rdata[31]_i_4_n_0 ),
        .I3(data5[0]),
        .O(\s_axi_full_rdata[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \s_axi_full_rdata[25]_i_1 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I1(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I2(\s_axi_full_rdata[31]_i_4_n_0 ),
        .I3(data5[1]),
        .O(\s_axi_full_rdata[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \s_axi_full_rdata[26]_i_1 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I1(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I2(\s_axi_full_rdata[31]_i_4_n_0 ),
        .I3(data5[2]),
        .O(\s_axi_full_rdata[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \s_axi_full_rdata[27]_i_1 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I1(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I2(\s_axi_full_rdata[31]_i_4_n_0 ),
        .I3(data5[3]),
        .O(\s_axi_full_rdata[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \s_axi_full_rdata[28]_i_1 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I1(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I2(\s_axi_full_rdata[31]_i_4_n_0 ),
        .I3(data5[4]),
        .O(\s_axi_full_rdata[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \s_axi_full_rdata[29]_i_1 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I1(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I2(\s_axi_full_rdata[31]_i_4_n_0 ),
        .I3(data5[5]),
        .O(\s_axi_full_rdata[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \s_axi_full_rdata[2]_i_1 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I1(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I2(\s_axi_full_rdata[31]_i_4_n_0 ),
        .I3(data5[2]),
        .O(\s_axi_full_rdata[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \s_axi_full_rdata[30]_i_1 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I1(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I2(\s_axi_full_rdata[31]_i_4_n_0 ),
        .I3(data5[6]),
        .O(\s_axi_full_rdata[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF8888888)) 
    \s_axi_full_rdata[31]_i_1 
       (.I0(s_axi_full_rready),
        .I1(s_axi_full_rvalid_reg_0),
        .I2(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I3(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I4(\s_axi_full_rdata[31]_i_3_n_0 ),
        .O(\s_axi_full_rdata[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \s_axi_full_rdata[31]_i_2 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I1(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I2(\s_axi_full_rdata[31]_i_4_n_0 ),
        .I3(data5[7]),
        .O(\s_axi_full_rdata[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \s_axi_full_rdata[31]_i_3 
       (.I0(\s_axi_full_araddr_q[23]_i_3_n_0 ),
        .I1(s_axi_full_rvalid_reg_0),
        .I2(spi_sr_in_buf_ready_reg_n_0),
        .I3(spi_sr_in_buf_valid_reg_n_0),
        .I4(spi_mmio_en),
        .I5(\s_axi_full_araddr_q_reg_n_0_[2] ),
        .O(\s_axi_full_rdata[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \s_axi_full_rdata[31]_i_4 
       (.I0(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I1(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I2(\s_axi_full_rdata[63]_i_5_n_0 ),
        .I3(\spi_mmio_fsm_state_reg_n_0_[3] ),
        .I4(\spi_mmio_fsm_state_reg_n_0_[2] ),
        .I5(\s_axi_full_araddr_q_reg_n_0_[2] ),
        .O(\s_axi_full_rdata[31]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \s_axi_full_rdata[32]_i_1 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I1(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I2(\s_axi_full_rdata[63]_i_4_n_0 ),
        .I3(data5[0]),
        .O(\s_axi_full_rdata[32]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \s_axi_full_rdata[33]_i_1 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I1(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I2(\s_axi_full_rdata[63]_i_4_n_0 ),
        .I3(data5[1]),
        .O(\s_axi_full_rdata[33]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \s_axi_full_rdata[34]_i_1 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I1(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I2(\s_axi_full_rdata[63]_i_4_n_0 ),
        .I3(data5[2]),
        .O(\s_axi_full_rdata[34]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \s_axi_full_rdata[35]_i_1 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I1(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I2(\s_axi_full_rdata[63]_i_4_n_0 ),
        .I3(data5[3]),
        .O(\s_axi_full_rdata[35]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \s_axi_full_rdata[36]_i_1 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I1(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I2(\s_axi_full_rdata[63]_i_4_n_0 ),
        .I3(data5[4]),
        .O(\s_axi_full_rdata[36]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \s_axi_full_rdata[37]_i_1 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I1(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I2(\s_axi_full_rdata[63]_i_4_n_0 ),
        .I3(data5[5]),
        .O(\s_axi_full_rdata[37]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \s_axi_full_rdata[38]_i_1 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I1(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I2(\s_axi_full_rdata[63]_i_4_n_0 ),
        .I3(data5[6]),
        .O(\s_axi_full_rdata[38]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h888F8888)) 
    \s_axi_full_rdata[39]_i_1 
       (.I0(s_axi_full_rready),
        .I1(s_axi_full_rvalid_reg_0),
        .I2(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I3(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I4(\s_axi_full_rdata[63]_i_3_n_0 ),
        .O(\s_axi_full_rdata[39]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \s_axi_full_rdata[39]_i_2 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I1(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I2(\s_axi_full_rdata[63]_i_4_n_0 ),
        .I3(data5[7]),
        .O(\s_axi_full_rdata[39]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \s_axi_full_rdata[3]_i_1 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I1(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I2(\s_axi_full_rdata[31]_i_4_n_0 ),
        .I3(data5[3]),
        .O(\s_axi_full_rdata[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \s_axi_full_rdata[40]_i_1 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I1(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I2(\s_axi_full_rdata[63]_i_4_n_0 ),
        .I3(data5[0]),
        .O(\s_axi_full_rdata[40]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \s_axi_full_rdata[41]_i_1 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I1(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I2(\s_axi_full_rdata[63]_i_4_n_0 ),
        .I3(data5[1]),
        .O(\s_axi_full_rdata[41]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \s_axi_full_rdata[42]_i_1 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I1(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I2(\s_axi_full_rdata[63]_i_4_n_0 ),
        .I3(data5[2]),
        .O(\s_axi_full_rdata[42]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \s_axi_full_rdata[43]_i_1 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I1(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I2(\s_axi_full_rdata[63]_i_4_n_0 ),
        .I3(data5[3]),
        .O(\s_axi_full_rdata[43]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \s_axi_full_rdata[44]_i_1 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I1(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I2(\s_axi_full_rdata[63]_i_4_n_0 ),
        .I3(data5[4]),
        .O(\s_axi_full_rdata[44]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \s_axi_full_rdata[45]_i_1 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I1(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I2(\s_axi_full_rdata[63]_i_4_n_0 ),
        .I3(data5[5]),
        .O(\s_axi_full_rdata[45]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \s_axi_full_rdata[46]_i_1 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I1(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I2(\s_axi_full_rdata[63]_i_4_n_0 ),
        .I3(data5[6]),
        .O(\s_axi_full_rdata[46]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88F88888)) 
    \s_axi_full_rdata[47]_i_1 
       (.I0(s_axi_full_rready),
        .I1(s_axi_full_rvalid_reg_0),
        .I2(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I3(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I4(\s_axi_full_rdata[63]_i_3_n_0 ),
        .O(\s_axi_full_rdata[47]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \s_axi_full_rdata[47]_i_2 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I1(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I2(\s_axi_full_rdata[63]_i_4_n_0 ),
        .I3(data5[7]),
        .O(\s_axi_full_rdata[47]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \s_axi_full_rdata[48]_i_1 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I1(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I2(\s_axi_full_rdata[63]_i_4_n_0 ),
        .I3(data5[0]),
        .O(\s_axi_full_rdata[48]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \s_axi_full_rdata[49]_i_1 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I1(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I2(\s_axi_full_rdata[63]_i_4_n_0 ),
        .I3(data5[1]),
        .O(\s_axi_full_rdata[49]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \s_axi_full_rdata[4]_i_1 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I1(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I2(\s_axi_full_rdata[31]_i_4_n_0 ),
        .I3(data5[4]),
        .O(\s_axi_full_rdata[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \s_axi_full_rdata[50]_i_1 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I1(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I2(\s_axi_full_rdata[63]_i_4_n_0 ),
        .I3(data5[2]),
        .O(\s_axi_full_rdata[50]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \s_axi_full_rdata[51]_i_1 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I1(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I2(\s_axi_full_rdata[63]_i_4_n_0 ),
        .I3(data5[3]),
        .O(\s_axi_full_rdata[51]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \s_axi_full_rdata[52]_i_1 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I1(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I2(\s_axi_full_rdata[63]_i_4_n_0 ),
        .I3(data5[4]),
        .O(\s_axi_full_rdata[52]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \s_axi_full_rdata[53]_i_1 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I1(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I2(\s_axi_full_rdata[63]_i_4_n_0 ),
        .I3(data5[5]),
        .O(\s_axi_full_rdata[53]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \s_axi_full_rdata[54]_i_1 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I1(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I2(\s_axi_full_rdata[63]_i_4_n_0 ),
        .I3(data5[6]),
        .O(\s_axi_full_rdata[54]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88F88888)) 
    \s_axi_full_rdata[55]_i_1 
       (.I0(s_axi_full_rready),
        .I1(s_axi_full_rvalid_reg_0),
        .I2(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I3(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I4(\s_axi_full_rdata[63]_i_3_n_0 ),
        .O(\s_axi_full_rdata[55]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \s_axi_full_rdata[55]_i_2 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I1(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I2(\s_axi_full_rdata[63]_i_4_n_0 ),
        .I3(data5[7]),
        .O(\s_axi_full_rdata[55]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \s_axi_full_rdata[56]_i_1 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I1(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I2(\s_axi_full_rdata[63]_i_4_n_0 ),
        .I3(data5[0]),
        .O(\s_axi_full_rdata[56]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \s_axi_full_rdata[57]_i_1 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I1(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I2(\s_axi_full_rdata[63]_i_4_n_0 ),
        .I3(data5[1]),
        .O(\s_axi_full_rdata[57]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \s_axi_full_rdata[58]_i_1 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I1(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I2(\s_axi_full_rdata[63]_i_4_n_0 ),
        .I3(data5[2]),
        .O(\s_axi_full_rdata[58]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \s_axi_full_rdata[59]_i_1 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I1(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I2(\s_axi_full_rdata[63]_i_4_n_0 ),
        .I3(data5[3]),
        .O(\s_axi_full_rdata[59]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \s_axi_full_rdata[5]_i_1 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I1(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I2(\s_axi_full_rdata[31]_i_4_n_0 ),
        .I3(data5[5]),
        .O(\s_axi_full_rdata[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \s_axi_full_rdata[60]_i_1 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I1(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I2(\s_axi_full_rdata[63]_i_4_n_0 ),
        .I3(data5[4]),
        .O(\s_axi_full_rdata[60]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \s_axi_full_rdata[61]_i_1 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I1(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I2(\s_axi_full_rdata[63]_i_4_n_0 ),
        .I3(data5[5]),
        .O(\s_axi_full_rdata[61]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \s_axi_full_rdata[62]_i_1 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I1(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I2(\s_axi_full_rdata[63]_i_4_n_0 ),
        .I3(data5[6]),
        .O(\s_axi_full_rdata[62]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF8888888)) 
    \s_axi_full_rdata[63]_i_1 
       (.I0(s_axi_full_rready),
        .I1(s_axi_full_rvalid_reg_0),
        .I2(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I3(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I4(\s_axi_full_rdata[63]_i_3_n_0 ),
        .O(\s_axi_full_rdata[63]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \s_axi_full_rdata[63]_i_2 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I1(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I2(\s_axi_full_rdata[63]_i_4_n_0 ),
        .I3(data5[7]),
        .O(\s_axi_full_rdata[63]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    \s_axi_full_rdata[63]_i_3 
       (.I0(\s_axi_full_araddr_q[23]_i_3_n_0 ),
        .I1(s_axi_full_rvalid_reg_0),
        .I2(spi_sr_in_buf_ready_reg_n_0),
        .I3(spi_sr_in_buf_valid_reg_n_0),
        .I4(spi_mmio_en),
        .I5(\s_axi_full_araddr_q_reg_n_0_[2] ),
        .O(\s_axi_full_rdata[63]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \s_axi_full_rdata[63]_i_4 
       (.I0(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I1(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I2(\s_axi_full_rdata[63]_i_5_n_0 ),
        .I3(\spi_mmio_fsm_state_reg_n_0_[3] ),
        .I4(\spi_mmio_fsm_state_reg_n_0_[2] ),
        .I5(\s_axi_full_araddr_q_reg_n_0_[2] ),
        .O(\s_axi_full_rdata[63]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \s_axi_full_rdata[63]_i_5 
       (.I0(s_axi_full_rvalid_reg_0),
        .I1(spi_sr_in_buf_ready_reg_n_0),
        .I2(spi_sr_in_buf_valid_reg_n_0),
        .I3(spi_mmio_en),
        .O(\s_axi_full_rdata[63]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \s_axi_full_rdata[6]_i_1 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I1(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I2(\s_axi_full_rdata[31]_i_4_n_0 ),
        .I3(data5[6]),
        .O(\s_axi_full_rdata[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h888F8888)) 
    \s_axi_full_rdata[7]_i_1 
       (.I0(s_axi_full_rready),
        .I1(s_axi_full_rvalid_reg_0),
        .I2(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I3(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I4(\s_axi_full_rdata[31]_i_3_n_0 ),
        .O(\s_axi_full_rdata[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \s_axi_full_rdata[7]_i_2 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I1(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I2(\s_axi_full_rdata[31]_i_4_n_0 ),
        .I3(data5[7]),
        .O(\s_axi_full_rdata[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \s_axi_full_rdata[8]_i_1 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I1(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I2(\s_axi_full_rdata[31]_i_4_n_0 ),
        .I3(data5[0]),
        .O(\s_axi_full_rdata[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \s_axi_full_rdata[9]_i_1 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I1(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I2(\s_axi_full_rdata[31]_i_4_n_0 ),
        .I3(data5[1]),
        .O(\s_axi_full_rdata[9]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[0] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[7]_i_1_n_0 ),
        .D(\s_axi_full_rdata[0]_i_1_n_0 ),
        .Q(s_axi_full_rdata[0]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[10] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[15]_i_1_n_0 ),
        .D(\s_axi_full_rdata[10]_i_1_n_0 ),
        .Q(s_axi_full_rdata[10]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[11] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[15]_i_1_n_0 ),
        .D(\s_axi_full_rdata[11]_i_1_n_0 ),
        .Q(s_axi_full_rdata[11]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[12] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[15]_i_1_n_0 ),
        .D(\s_axi_full_rdata[12]_i_1_n_0 ),
        .Q(s_axi_full_rdata[12]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[13] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[15]_i_1_n_0 ),
        .D(\s_axi_full_rdata[13]_i_1_n_0 ),
        .Q(s_axi_full_rdata[13]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[14] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[15]_i_1_n_0 ),
        .D(\s_axi_full_rdata[14]_i_1_n_0 ),
        .Q(s_axi_full_rdata[14]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[15] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[15]_i_1_n_0 ),
        .D(\s_axi_full_rdata[15]_i_2_n_0 ),
        .Q(s_axi_full_rdata[15]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[16] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[23]_i_1_n_0 ),
        .D(\s_axi_full_rdata[16]_i_1_n_0 ),
        .Q(s_axi_full_rdata[16]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[17] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[23]_i_1_n_0 ),
        .D(\s_axi_full_rdata[17]_i_1_n_0 ),
        .Q(s_axi_full_rdata[17]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[18] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[23]_i_1_n_0 ),
        .D(\s_axi_full_rdata[18]_i_1_n_0 ),
        .Q(s_axi_full_rdata[18]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[19] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[23]_i_1_n_0 ),
        .D(\s_axi_full_rdata[19]_i_1_n_0 ),
        .Q(s_axi_full_rdata[19]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[1] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[7]_i_1_n_0 ),
        .D(\s_axi_full_rdata[1]_i_1_n_0 ),
        .Q(s_axi_full_rdata[1]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[20] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[23]_i_1_n_0 ),
        .D(\s_axi_full_rdata[20]_i_1_n_0 ),
        .Q(s_axi_full_rdata[20]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[21] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[23]_i_1_n_0 ),
        .D(\s_axi_full_rdata[21]_i_1_n_0 ),
        .Q(s_axi_full_rdata[21]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[22] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[23]_i_1_n_0 ),
        .D(\s_axi_full_rdata[22]_i_1_n_0 ),
        .Q(s_axi_full_rdata[22]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[23] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[23]_i_1_n_0 ),
        .D(\s_axi_full_rdata[23]_i_2_n_0 ),
        .Q(s_axi_full_rdata[23]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[24] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[31]_i_1_n_0 ),
        .D(\s_axi_full_rdata[24]_i_1_n_0 ),
        .Q(s_axi_full_rdata[24]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[25] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[31]_i_1_n_0 ),
        .D(\s_axi_full_rdata[25]_i_1_n_0 ),
        .Q(s_axi_full_rdata[25]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[26] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[31]_i_1_n_0 ),
        .D(\s_axi_full_rdata[26]_i_1_n_0 ),
        .Q(s_axi_full_rdata[26]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[27] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[31]_i_1_n_0 ),
        .D(\s_axi_full_rdata[27]_i_1_n_0 ),
        .Q(s_axi_full_rdata[27]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[28] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[31]_i_1_n_0 ),
        .D(\s_axi_full_rdata[28]_i_1_n_0 ),
        .Q(s_axi_full_rdata[28]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[29] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[31]_i_1_n_0 ),
        .D(\s_axi_full_rdata[29]_i_1_n_0 ),
        .Q(s_axi_full_rdata[29]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[2] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[7]_i_1_n_0 ),
        .D(\s_axi_full_rdata[2]_i_1_n_0 ),
        .Q(s_axi_full_rdata[2]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[30] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[31]_i_1_n_0 ),
        .D(\s_axi_full_rdata[30]_i_1_n_0 ),
        .Q(s_axi_full_rdata[30]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[31] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[31]_i_1_n_0 ),
        .D(\s_axi_full_rdata[31]_i_2_n_0 ),
        .Q(s_axi_full_rdata[31]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[32] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[39]_i_1_n_0 ),
        .D(\s_axi_full_rdata[32]_i_1_n_0 ),
        .Q(s_axi_full_rdata[32]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[33] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[39]_i_1_n_0 ),
        .D(\s_axi_full_rdata[33]_i_1_n_0 ),
        .Q(s_axi_full_rdata[33]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[34] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[39]_i_1_n_0 ),
        .D(\s_axi_full_rdata[34]_i_1_n_0 ),
        .Q(s_axi_full_rdata[34]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[35] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[39]_i_1_n_0 ),
        .D(\s_axi_full_rdata[35]_i_1_n_0 ),
        .Q(s_axi_full_rdata[35]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[36] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[39]_i_1_n_0 ),
        .D(\s_axi_full_rdata[36]_i_1_n_0 ),
        .Q(s_axi_full_rdata[36]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[37] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[39]_i_1_n_0 ),
        .D(\s_axi_full_rdata[37]_i_1_n_0 ),
        .Q(s_axi_full_rdata[37]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[38] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[39]_i_1_n_0 ),
        .D(\s_axi_full_rdata[38]_i_1_n_0 ),
        .Q(s_axi_full_rdata[38]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[39] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[39]_i_1_n_0 ),
        .D(\s_axi_full_rdata[39]_i_2_n_0 ),
        .Q(s_axi_full_rdata[39]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[3] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[7]_i_1_n_0 ),
        .D(\s_axi_full_rdata[3]_i_1_n_0 ),
        .Q(s_axi_full_rdata[3]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[40] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[47]_i_1_n_0 ),
        .D(\s_axi_full_rdata[40]_i_1_n_0 ),
        .Q(s_axi_full_rdata[40]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[41] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[47]_i_1_n_0 ),
        .D(\s_axi_full_rdata[41]_i_1_n_0 ),
        .Q(s_axi_full_rdata[41]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[42] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[47]_i_1_n_0 ),
        .D(\s_axi_full_rdata[42]_i_1_n_0 ),
        .Q(s_axi_full_rdata[42]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[43] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[47]_i_1_n_0 ),
        .D(\s_axi_full_rdata[43]_i_1_n_0 ),
        .Q(s_axi_full_rdata[43]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[44] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[47]_i_1_n_0 ),
        .D(\s_axi_full_rdata[44]_i_1_n_0 ),
        .Q(s_axi_full_rdata[44]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[45] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[47]_i_1_n_0 ),
        .D(\s_axi_full_rdata[45]_i_1_n_0 ),
        .Q(s_axi_full_rdata[45]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[46] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[47]_i_1_n_0 ),
        .D(\s_axi_full_rdata[46]_i_1_n_0 ),
        .Q(s_axi_full_rdata[46]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[47] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[47]_i_1_n_0 ),
        .D(\s_axi_full_rdata[47]_i_2_n_0 ),
        .Q(s_axi_full_rdata[47]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[48] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[55]_i_1_n_0 ),
        .D(\s_axi_full_rdata[48]_i_1_n_0 ),
        .Q(s_axi_full_rdata[48]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[49] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[55]_i_1_n_0 ),
        .D(\s_axi_full_rdata[49]_i_1_n_0 ),
        .Q(s_axi_full_rdata[49]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[4] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[7]_i_1_n_0 ),
        .D(\s_axi_full_rdata[4]_i_1_n_0 ),
        .Q(s_axi_full_rdata[4]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[50] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[55]_i_1_n_0 ),
        .D(\s_axi_full_rdata[50]_i_1_n_0 ),
        .Q(s_axi_full_rdata[50]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[51] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[55]_i_1_n_0 ),
        .D(\s_axi_full_rdata[51]_i_1_n_0 ),
        .Q(s_axi_full_rdata[51]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[52] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[55]_i_1_n_0 ),
        .D(\s_axi_full_rdata[52]_i_1_n_0 ),
        .Q(s_axi_full_rdata[52]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[53] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[55]_i_1_n_0 ),
        .D(\s_axi_full_rdata[53]_i_1_n_0 ),
        .Q(s_axi_full_rdata[53]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[54] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[55]_i_1_n_0 ),
        .D(\s_axi_full_rdata[54]_i_1_n_0 ),
        .Q(s_axi_full_rdata[54]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[55] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[55]_i_1_n_0 ),
        .D(\s_axi_full_rdata[55]_i_2_n_0 ),
        .Q(s_axi_full_rdata[55]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[56] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[63]_i_1_n_0 ),
        .D(\s_axi_full_rdata[56]_i_1_n_0 ),
        .Q(s_axi_full_rdata[56]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[57] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[63]_i_1_n_0 ),
        .D(\s_axi_full_rdata[57]_i_1_n_0 ),
        .Q(s_axi_full_rdata[57]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[58] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[63]_i_1_n_0 ),
        .D(\s_axi_full_rdata[58]_i_1_n_0 ),
        .Q(s_axi_full_rdata[58]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[59] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[63]_i_1_n_0 ),
        .D(\s_axi_full_rdata[59]_i_1_n_0 ),
        .Q(s_axi_full_rdata[59]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[5] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[7]_i_1_n_0 ),
        .D(\s_axi_full_rdata[5]_i_1_n_0 ),
        .Q(s_axi_full_rdata[5]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[60] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[63]_i_1_n_0 ),
        .D(\s_axi_full_rdata[60]_i_1_n_0 ),
        .Q(s_axi_full_rdata[60]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[61] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[63]_i_1_n_0 ),
        .D(\s_axi_full_rdata[61]_i_1_n_0 ),
        .Q(s_axi_full_rdata[61]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[62] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[63]_i_1_n_0 ),
        .D(\s_axi_full_rdata[62]_i_1_n_0 ),
        .Q(s_axi_full_rdata[62]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[63] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[63]_i_1_n_0 ),
        .D(\s_axi_full_rdata[63]_i_2_n_0 ),
        .Q(s_axi_full_rdata[63]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[6] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[7]_i_1_n_0 ),
        .D(\s_axi_full_rdata[6]_i_1_n_0 ),
        .Q(s_axi_full_rdata[6]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[7] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[7]_i_1_n_0 ),
        .D(\s_axi_full_rdata[7]_i_2_n_0 ),
        .Q(s_axi_full_rdata[7]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[8] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[15]_i_1_n_0 ),
        .D(\s_axi_full_rdata[8]_i_1_n_0 ),
        .Q(s_axi_full_rdata[8]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[9] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[15]_i_1_n_0 ),
        .D(\s_axi_full_rdata[9]_i_1_n_0 ),
        .Q(s_axi_full_rdata[9]),
        .R(s_axi_lite_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \s_axi_full_rid[3]_i_1 
       (.I0(s_axi_full_arvalid),
        .I1(s_axi_full_arready_reg_0),
        .I2(\spi_mmio_fsm_state_reg_n_0_[2] ),
        .I3(\spi_mmio_fsm_state_reg_n_0_[3] ),
        .I4(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I5(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .O(\s_axi_full_rid[3]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RID" *) 
  FDRE \s_axi_full_rid_reg[0] 
       (.C(aclk),
        .CE(\s_axi_full_rid[3]_i_1_n_0 ),
        .D(s_axi_full_arid[0]),
        .Q(s_axi_full_rid[0]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RID" *) 
  FDRE \s_axi_full_rid_reg[1] 
       (.C(aclk),
        .CE(\s_axi_full_rid[3]_i_1_n_0 ),
        .D(s_axi_full_arid[1]),
        .Q(s_axi_full_rid[1]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RID" *) 
  FDRE \s_axi_full_rid_reg[2] 
       (.C(aclk),
        .CE(\s_axi_full_rid[3]_i_1_n_0 ),
        .D(s_axi_full_arid[2]),
        .Q(s_axi_full_rid[2]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RID" *) 
  FDRE \s_axi_full_rid_reg[3] 
       (.C(aclk),
        .CE(\s_axi_full_rid[3]_i_1_n_0 ),
        .D(s_axi_full_arid[3]),
        .Q(s_axi_full_rid[3]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hF777F000)) 
    s_axi_full_rlast_i_1
       (.I0(s_axi_full_rready),
        .I1(s_axi_full_rvalid_reg_0),
        .I2(spi_rd_req4),
        .I3(s_axi_full_rlast_i_3_n_0),
        .I4(s_axi_full_rlast),
        .O(s_axi_full_rlast_i_1_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    s_axi_full_rlast_i_2
       (.I0(s_axi_full_arlen_q__0[6]),
        .I1(s_axi_full_arlen_q__0[7]),
        .I2(s_axi_full_arlen_q__0[4]),
        .I3(s_axi_full_arlen_q__0[5]),
        .I4(\s_axi_full_arlen_q[6]_i_2_n_0 ),
        .O(spi_rd_req4));
  LUT6 #(
    .INIT(64'h000022A200000000)) 
    s_axi_full_rlast_i_3
       (.I0(s_axi_full_rlast_i_4_n_0),
        .I1(spi_mmio_en),
        .I2(spi_sr_in_buf_valid_reg_n_0),
        .I3(spi_sr_in_buf_ready_reg_n_0),
        .I4(s_axi_full_rvalid_reg_0),
        .I5(\s_axi_full_araddr_q[23]_i_3_n_0 ),
        .O(s_axi_full_rlast_i_3_n_0));
  LUT5 #(
    .INIT(32'h80F0A0FF)) 
    s_axi_full_rlast_i_4
       (.I0(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I1(\s_axi_full_araddr_q_reg_n_0_[2] ),
        .I2(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I3(s_axi_full_arsize_q[1]),
        .I4(s_axi_full_arsize_q[0]),
        .O(s_axi_full_rlast_i_4_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RLAST" *) 
  FDRE s_axi_full_rlast_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_axi_full_rlast_i_1_n_0),
        .Q(s_axi_full_rlast),
        .R(s_axi_lite_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    s_axi_full_rvalid_i_1
       (.I0(s_axi_full_rready),
        .I1(s_axi_full_rvalid_reg_0),
        .I2(s_axi_full_rlast_i_3_n_0),
        .O(s_axi_full_rvalid_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RVALID" *) 
  FDRE s_axi_full_rvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_axi_full_rvalid_i_1_n_0),
        .Q(s_axi_full_rvalid_reg_0),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full WREADY" *) 
  FDRE s_axi_full_wready_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_axi_full_write_busy__0),
        .Q(s_axi_full_wready),
        .R(s_axi_lite_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hAA008000)) 
    s_axi_full_write_busy_i_1
       (.I0(aresetn),
        .I1(s_axi_full_awvalid),
        .I2(s_axi_full_awready_reg_0),
        .I3(s_axi_full_write_busy_i_2_n_0),
        .I4(s_axi_full_write_busy__0),
        .O(s_axi_full_write_busy_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hF7777777)) 
    s_axi_full_write_busy_i_2
       (.I0(s_axi_full_bready),
        .I1(s_axi_full_bvalid),
        .I2(s_axi_full_wlast),
        .I3(s_axi_full_wready),
        .I4(s_axi_full_wvalid),
        .O(s_axi_full_write_busy_i_2_n_0));
  FDRE s_axi_full_write_busy_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_axi_full_write_busy_i_1_n_0),
        .Q(s_axi_full_write_busy__0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT1 #(
    .INIT(2'h1)) 
    s_axi_lite_arready_INST_0
       (.I0(s_axi_lite_rvalid_reg_0),
        .O(s_axi_lite_arready));
  LUT1 #(
    .INIT(2'h1)) 
    s_axi_lite_awready_i_1
       (.I0(aresetn),
        .O(s_axi_lite_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h08080008)) 
    s_axi_lite_awready_i_2
       (.I0(s_axi_lite_wvalid),
        .I1(s_axi_lite_awvalid),
        .I2(s_axi_lite_awready),
        .I3(s_axi_lite_bvalid),
        .I4(s_axi_lite_bready),
        .O(s_axi_lite_awready0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite AWREADY" *) 
  FDRE s_axi_lite_awready_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_axi_lite_awready0),
        .Q(s_axi_lite_awready),
        .R(s_axi_lite_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    s_axi_lite_bvalid_i_1
       (.I0(s_axi_lite_awready),
        .I1(s_axi_lite_bready),
        .I2(s_axi_lite_bvalid),
        .O(s_axi_lite_bvalid_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite BVALID" *) 
  FDRE s_axi_lite_bvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_axi_lite_bvalid_i_1_n_0),
        .Q(s_axi_lite_bvalid),
        .R(s_axi_lite_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \s_axi_lite_rdata[0]_i_1 
       (.I0(\s_axi_lite_rdata[0]_i_2_n_0 ),
        .I1(\s_axi_lite_rdata[0]_i_3_n_0 ),
        .I2(\s_axi_lite_rdata[2]_i_6_n_0 ),
        .I3(\irq_enabled_reg_n_0_[0] ),
        .I4(spi_mmio_rd_req_cnt__0[0]),
        .I5(\s_axi_lite_rdata[31]_i_6_n_0 ),
        .O(\s_axi_lite_rdata[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \s_axi_lite_rdata[0]_i_2 
       (.I0(\s_axi_lite_rdata[0]_i_4_n_0 ),
        .I1(\spi_mmio_rd_instr_reg_n_0_[0] ),
        .I2(\s_axi_lite_rdata[26]_i_3_n_0 ),
        .I3(spi_sck_div_en_reg_n_0),
        .I4(\s_axi_lite_rdata[30]_i_3_n_0 ),
        .I5(\s_axi_lite_rdata[0]_i_5_n_0 ),
        .O(\s_axi_lite_rdata[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hAAEA)) 
    \s_axi_lite_rdata[0]_i_3 
       (.I0(\s_axi_lite_rdata[0]_i_6_n_0 ),
        .I1(\s_axi_lite_rdata[0]_i_7_n_0 ),
        .I2(s_axi_lite_araddr[2]),
        .I3(s_axi_lite_araddr[3]),
        .O(\s_axi_lite_rdata[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0300200000002000)) 
    \s_axi_lite_rdata[0]_i_4 
       (.I0(\spi_mmio_rd_instr_io_mode_reg_n_0_[0] ),
        .I1(s_axi_lite_araddr[0]),
        .I2(s_axi_lite_araddr[1]),
        .I3(s_axi_lite_araddr[3]),
        .I4(s_axi_lite_araddr[2]),
        .I5(\spi_mmio_cs_mask_reg_n_0_[0] ),
        .O(\s_axi_lite_rdata[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00A0C00000000000)) 
    \s_axi_lite_rdata[0]_i_5 
       (.I0(\spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[0] ),
        .I1(data10[0]),
        .I2(s_axi_lite_araddr[1]),
        .I3(s_axi_lite_araddr[0]),
        .I4(s_axi_lite_araddr[2]),
        .I5(s_axi_lite_araddr[3]),
        .O(\s_axi_lite_rdata[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0003008000000080)) 
    \s_axi_lite_rdata[0]_i_6 
       (.I0(\irq_pend_reg_n_0_[0] ),
        .I1(s_axi_lite_araddr[0]),
        .I2(s_axi_lite_araddr[1]),
        .I3(s_axi_lite_araddr[2]),
        .I4(s_axi_lite_araddr[3]),
        .I5(\spi_ss_o_reg[0]_0 ),
        .O(\s_axi_lite_rdata[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \s_axi_lite_rdata[0]_i_7 
       (.I0(\spi_sr_out_buf_reg_n_0_[0] ),
        .I1(\spi_sr_reg_n_0_[0] ),
        .I2(s_axi_lite_araddr[1]),
        .I3(s_axi_lite_araddr[0]),
        .I4(\spi_sck_div_reg_n_0_[0] ),
        .I5(data5[0]),
        .O(\s_axi_lite_rdata[0]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \s_axi_lite_rdata[10]_i_1 
       (.I0(\s_axi_lite_rdata[10]_i_2_n_0 ),
        .I1(\s_axi_lite_rdata[27]_i_3_n_0 ),
        .I2(\spi_mmio_dummy_io_mode_reg_n_0_[2] ),
        .I3(\s_axi_lite_rdata[31]_i_5_n_0 ),
        .I4(\spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[10] ),
        .O(\s_axi_lite_rdata[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000AC0000000000)) 
    \s_axi_lite_rdata[10]_i_2 
       (.I0(spi_mmio_rd_req_cnt__0[10]),
        .I1(spi_mmio_addr_rem[0]),
        .I2(s_axi_lite_araddr[2]),
        .I3(s_axi_lite_araddr[3]),
        .I4(s_axi_lite_araddr[1]),
        .I5(s_axi_lite_araddr[0]),
        .O(\s_axi_lite_rdata[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_lite_rdata[11]_i_1 
       (.I0(\s_axi_lite_rdata[31]_i_5_n_0 ),
        .I1(\spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[11] ),
        .I2(\s_axi_lite_rdata[26]_i_3_n_0 ),
        .I3(spi_mmio_addr_rem[1]),
        .I4(spi_mmio_rd_req_cnt__0[11]),
        .I5(\s_axi_lite_rdata[31]_i_6_n_0 ),
        .O(\s_axi_lite_rdata[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \s_axi_lite_rdata[12]_i_1 
       (.I0(\s_axi_lite_rdata[12]_i_2_n_0 ),
        .I1(\s_axi_lite_rdata[30]_i_3_n_0 ),
        .I2(spi_mmio_en_req_reg_n_0),
        .I3(\s_axi_lite_rdata[26]_i_3_n_0 ),
        .I4(\spi_mmio_dummy_size_reg_n_0_[0] ),
        .O(\s_axi_lite_rdata[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_lite_rdata[12]_i_2 
       (.I0(\s_axi_lite_rdata[27]_i_3_n_0 ),
        .I1(\spi_mmio_data_io_mode_reg_n_0_[0] ),
        .I2(\s_axi_lite_rdata[31]_i_5_n_0 ),
        .I3(\spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[12] ),
        .I4(spi_mmio_rd_req_cnt__0[12]),
        .I5(\s_axi_lite_rdata[31]_i_6_n_0 ),
        .O(\s_axi_lite_rdata[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \s_axi_lite_rdata[13]_i_1 
       (.I0(\s_axi_lite_rdata[13]_i_2_n_0 ),
        .I1(\s_axi_lite_rdata[30]_i_3_n_0 ),
        .I2(spi_mmio_en),
        .I3(\s_axi_lite_rdata[26]_i_3_n_0 ),
        .I4(\spi_mmio_dummy_size_reg_n_0_[1] ),
        .O(\s_axi_lite_rdata[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_lite_rdata[13]_i_2 
       (.I0(\s_axi_lite_rdata[27]_i_3_n_0 ),
        .I1(\spi_mmio_data_io_mode_reg_n_0_[1] ),
        .I2(\s_axi_lite_rdata[31]_i_5_n_0 ),
        .I3(\spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[13] ),
        .I4(spi_mmio_rd_req_cnt__0[13]),
        .I5(\s_axi_lite_rdata[31]_i_6_n_0 ),
        .O(\s_axi_lite_rdata[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \s_axi_lite_rdata[14]_i_1 
       (.I0(\s_axi_lite_rdata[14]_i_2_n_0 ),
        .I1(\s_axi_lite_rdata[27]_i_3_n_0 ),
        .I2(\spi_mmio_data_io_mode_reg_n_0_[2] ),
        .I3(\s_axi_lite_rdata[31]_i_5_n_0 ),
        .I4(\spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[14] ),
        .O(\s_axi_lite_rdata[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000AC0000000000)) 
    \s_axi_lite_rdata[14]_i_2 
       (.I0(spi_mmio_rd_req_cnt__0[14]),
        .I1(spi_mmio_dummy_rem[0]),
        .I2(s_axi_lite_araddr[2]),
        .I3(s_axi_lite_araddr[3]),
        .I4(s_axi_lite_araddr[1]),
        .I5(s_axi_lite_araddr[0]),
        .O(\s_axi_lite_rdata[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_lite_rdata[15]_i_1 
       (.I0(\s_axi_lite_rdata[31]_i_5_n_0 ),
        .I1(\spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[15] ),
        .I2(\s_axi_lite_rdata[26]_i_3_n_0 ),
        .I3(spi_mmio_dummy_rem[1]),
        .I4(spi_mmio_rd_req_cnt__0[15]),
        .I5(\s_axi_lite_rdata[31]_i_6_n_0 ),
        .O(\s_axi_lite_rdata[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \s_axi_lite_rdata[16]_i_1 
       (.I0(\s_axi_lite_rdata[16]_i_2_n_0 ),
        .I1(\s_axi_lite_rdata[16]_i_3_n_0 ),
        .I2(\s_axi_lite_rdata[27]_i_3_n_0 ),
        .I3(\spi_mmio_cs_high_wait_reg_n_0_[0] ),
        .I4(\s_axi_lite_rdata[31]_i_5_n_0 ),
        .I5(\spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[16] ),
        .O(\s_axi_lite_rdata[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h00000203)) 
    \s_axi_lite_rdata[16]_i_2 
       (.I0(spi_sr_out_buf_valid),
        .I1(s_axi_lite_araddr[2]),
        .I2(s_axi_lite_araddr[3]),
        .I3(s_axi_lite_araddr[0]),
        .I4(s_axi_lite_araddr[1]),
        .O(\s_axi_lite_rdata[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000AC0000000000)) 
    \s_axi_lite_rdata[16]_i_3 
       (.I0(spi_mmio_rd_req_cnt__0[16]),
        .I1(\spi_mmio_mode_bits_reg_n_0_[0] ),
        .I2(s_axi_lite_araddr[2]),
        .I3(s_axi_lite_araddr[3]),
        .I4(s_axi_lite_araddr[1]),
        .I5(s_axi_lite_araddr[0]),
        .O(\s_axi_lite_rdata[16]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \s_axi_lite_rdata[17]_i_1 
       (.I0(\s_axi_lite_rdata[17]_i_2_n_0 ),
        .I1(\s_axi_lite_rdata[30]_i_3_n_0 ),
        .I2(spi_sr_in_buf_valid_reg_n_0),
        .I3(\s_axi_lite_rdata[26]_i_3_n_0 ),
        .I4(\spi_mmio_mode_bits_reg_n_0_[1] ),
        .O(\s_axi_lite_rdata[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_lite_rdata[17]_i_2 
       (.I0(\s_axi_lite_rdata[27]_i_3_n_0 ),
        .I1(\spi_mmio_cs_high_wait_reg_n_0_[1] ),
        .I2(\s_axi_lite_rdata[31]_i_5_n_0 ),
        .I3(\spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[17] ),
        .I4(spi_mmio_rd_req_cnt__0[17]),
        .I5(\s_axi_lite_rdata[31]_i_6_n_0 ),
        .O(\s_axi_lite_rdata[17]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \s_axi_lite_rdata[18]_i_1 
       (.I0(\s_axi_lite_rdata[18]_i_2_n_0 ),
        .I1(\s_axi_lite_rdata[27]_i_3_n_0 ),
        .I2(\spi_mmio_cs_high_wait_reg_n_0_[2] ),
        .I3(\s_axi_lite_rdata[31]_i_5_n_0 ),
        .I4(\spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[18] ),
        .O(\s_axi_lite_rdata[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000AC0000000000)) 
    \s_axi_lite_rdata[18]_i_2 
       (.I0(spi_mmio_rd_req_cnt__0[18]),
        .I1(\spi_mmio_mode_bits_reg_n_0_[2] ),
        .I2(s_axi_lite_araddr[2]),
        .I3(s_axi_lite_araddr[3]),
        .I4(s_axi_lite_araddr[1]),
        .I5(s_axi_lite_araddr[0]),
        .O(\s_axi_lite_rdata[18]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \s_axi_lite_rdata[19]_i_1 
       (.I0(\s_axi_lite_rdata[19]_i_2_n_0 ),
        .I1(\s_axi_lite_rdata[27]_i_3_n_0 ),
        .I2(\spi_mmio_cs_high_wait_reg_n_0_[3] ),
        .I3(\s_axi_lite_rdata[31]_i_5_n_0 ),
        .I4(\spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[19] ),
        .O(\s_axi_lite_rdata[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000AC0000000000)) 
    \s_axi_lite_rdata[19]_i_2 
       (.I0(spi_mmio_rd_req_cnt__0[19]),
        .I1(\spi_mmio_mode_bits_reg_n_0_[3] ),
        .I2(s_axi_lite_araddr[2]),
        .I3(s_axi_lite_araddr[3]),
        .I4(s_axi_lite_araddr[1]),
        .I5(s_axi_lite_araddr[0]),
        .O(\s_axi_lite_rdata[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFFFE)) 
    \s_axi_lite_rdata[1]_i_1 
       (.I0(\s_axi_lite_rdata[1]_i_2_n_0 ),
        .I1(\s_axi_lite_rdata[1]_i_3_n_0 ),
        .I2(\s_axi_lite_rdata[1]_i_4_n_0 ),
        .I3(\s_axi_lite_rdata[1]_i_5_n_0 ),
        .I4(\s_axi_lite_rdata[2]_i_6_n_0 ),
        .I5(\irq_enabled_reg_n_0_[1] ),
        .O(\s_axi_lite_rdata[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000A00C00000000)) 
    \s_axi_lite_rdata[1]_i_2 
       (.I0(\spi_sr_reg_n_0_[1] ),
        .I1(\spi_sck_div_reg_n_0_[1] ),
        .I2(s_axi_lite_araddr[1]),
        .I3(s_axi_lite_araddr[0]),
        .I4(s_axi_lite_araddr[3]),
        .I5(s_axi_lite_araddr[2]),
        .O(\s_axi_lite_rdata[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000C00000A00000)) 
    \s_axi_lite_rdata[1]_i_3 
       (.I0(data5[1]),
        .I1(data10[1]),
        .I2(s_axi_lite_araddr[1]),
        .I3(s_axi_lite_araddr[0]),
        .I4(s_axi_lite_araddr[2]),
        .I5(s_axi_lite_araddr[3]),
        .O(\s_axi_lite_rdata[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAEAAAAAAAAAA)) 
    \s_axi_lite_rdata[1]_i_4 
       (.I0(\s_axi_lite_rdata[1]_i_6_n_0 ),
        .I1(\spi_sr_out_buf_reg_n_0_[1] ),
        .I2(s_axi_lite_araddr[3]),
        .I3(s_axi_lite_araddr[2]),
        .I4(s_axi_lite_araddr[1]),
        .I5(s_axi_lite_araddr[0]),
        .O(\s_axi_lite_rdata[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \s_axi_lite_rdata[1]_i_5 
       (.I0(\s_axi_lite_rdata[1]_i_7_n_0 ),
        .I1(\s_axi_lite_rdata[31]_i_5_n_0 ),
        .I2(\spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[1] ),
        .I3(\s_axi_lite_rdata[31]_i_6_n_0 ),
        .I4(spi_mmio_rd_req_cnt__0[1]),
        .O(\s_axi_lite_rdata[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0300200000002000)) 
    \s_axi_lite_rdata[1]_i_6 
       (.I0(\spi_mmio_rd_instr_io_mode_reg_n_0_[1] ),
        .I1(s_axi_lite_araddr[2]),
        .I2(s_axi_lite_araddr[3]),
        .I3(s_axi_lite_araddr[1]),
        .I4(s_axi_lite_araddr[0]),
        .I5(\irq_pend_reg_n_0_[1] ),
        .O(\s_axi_lite_rdata[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000C0A00000000)) 
    \s_axi_lite_rdata[1]_i_7 
       (.I0(spi_en_reg_n_0),
        .I1(\spi_mmio_rd_instr_reg_n_0_[1] ),
        .I2(s_axi_lite_araddr[2]),
        .I3(s_axi_lite_araddr[3]),
        .I4(s_axi_lite_araddr[1]),
        .I5(s_axi_lite_araddr[0]),
        .O(\s_axi_lite_rdata[1]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \s_axi_lite_rdata[20]_i_1 
       (.I0(\s_axi_lite_rdata[20]_i_2_n_0 ),
        .I1(\s_axi_lite_rdata[30]_i_3_n_0 ),
        .I2(\FSM_onehot_spi_fsm_state_reg_n_0_[0] ),
        .I3(\s_axi_lite_rdata[26]_i_3_n_0 ),
        .I4(\spi_mmio_mode_bits_reg_n_0_[4] ),
        .O(\s_axi_lite_rdata[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_lite_rdata[20]_i_2 
       (.I0(\s_axi_lite_rdata[27]_i_3_n_0 ),
        .I1(\spi_mmio_cs_high_wait_reg_n_0_[4] ),
        .I2(\s_axi_lite_rdata[31]_i_5_n_0 ),
        .I3(\spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[20] ),
        .I4(spi_mmio_rd_req_cnt__0[20]),
        .I5(\s_axi_lite_rdata[31]_i_6_n_0 ),
        .O(\s_axi_lite_rdata[20]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \s_axi_lite_rdata[21]_i_1 
       (.I0(\s_axi_lite_rdata[21]_i_2_n_0 ),
        .I1(\s_axi_lite_rdata[30]_i_3_n_0 ),
        .I2(spi_dir_reg_n_0),
        .I3(\s_axi_lite_rdata[26]_i_3_n_0 ),
        .I4(\spi_mmio_mode_bits_reg_n_0_[5] ),
        .O(\s_axi_lite_rdata[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_lite_rdata[21]_i_2 
       (.I0(\s_axi_lite_rdata[27]_i_3_n_0 ),
        .I1(\spi_mmio_cs_high_wait_reg_n_0_[5] ),
        .I2(\s_axi_lite_rdata[31]_i_5_n_0 ),
        .I3(\spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[21] ),
        .I4(spi_mmio_rd_req_cnt__0[21]),
        .I5(\s_axi_lite_rdata[31]_i_6_n_0 ),
        .O(\s_axi_lite_rdata[21]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \s_axi_lite_rdata[22]_i_1 
       (.I0(\s_axi_lite_rdata[22]_i_2_n_0 ),
        .I1(\s_axi_lite_rdata[30]_i_3_n_0 ),
        .I2(\spi_fsm_state_reg_n_0_[0] ),
        .I3(\s_axi_lite_rdata[26]_i_3_n_0 ),
        .I4(\spi_mmio_mode_bits_reg_n_0_[6] ),
        .O(\s_axi_lite_rdata[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_lite_rdata[22]_i_2 
       (.I0(\s_axi_lite_rdata[27]_i_3_n_0 ),
        .I1(\spi_mmio_cs_high_wait_reg_n_0_[6] ),
        .I2(\s_axi_lite_rdata[31]_i_5_n_0 ),
        .I3(\spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[22] ),
        .I4(spi_mmio_rd_req_cnt__0[22]),
        .I5(\s_axi_lite_rdata[31]_i_6_n_0 ),
        .O(\s_axi_lite_rdata[22]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \s_axi_lite_rdata[23]_i_1 
       (.I0(\s_axi_lite_rdata[23]_i_2_n_0 ),
        .I1(\s_axi_lite_rdata[30]_i_3_n_0 ),
        .I2(\spi_fsm_state_reg_n_0_[1] ),
        .I3(\s_axi_lite_rdata[26]_i_3_n_0 ),
        .I4(\spi_mmio_mode_bits_reg_n_0_[7] ),
        .O(\s_axi_lite_rdata[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_lite_rdata[23]_i_2 
       (.I0(\s_axi_lite_rdata[27]_i_3_n_0 ),
        .I1(\spi_mmio_cs_high_wait_reg_n_0_[7] ),
        .I2(\s_axi_lite_rdata[31]_i_5_n_0 ),
        .I3(\spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[23] ),
        .I4(spi_mmio_rd_req_cnt__0[23]),
        .I5(\s_axi_lite_rdata[31]_i_6_n_0 ),
        .O(\s_axi_lite_rdata[23]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \s_axi_lite_rdata[24]_i_1 
       (.I0(\s_axi_lite_rdata[24]_i_2_n_0 ),
        .I1(\s_axi_lite_rdata[26]_i_3_n_0 ),
        .I2(spi_mmio_mode_bits_en_reg_n_0),
        .I3(\s_axi_lite_rdata[31]_i_6_n_0 ),
        .I4(spi_mmio_rd_req_cnt__0[24]),
        .O(\s_axi_lite_rdata[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_lite_rdata[24]_i_2 
       (.I0(\s_axi_lite_rdata[27]_i_3_n_0 ),
        .I1(\spi_mmio_cs_low_wait_reg_n_0_[0] ),
        .I2(\s_axi_lite_rdata[31]_i_5_n_0 ),
        .I3(\spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[24] ),
        .I4(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I5(\s_axi_lite_rdata[31]_i_7_n_0 ),
        .O(\s_axi_lite_rdata[24]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \s_axi_lite_rdata[25]_i_1 
       (.I0(\s_axi_lite_rdata[25]_i_2_n_0 ),
        .I1(\s_axi_lite_rdata[26]_i_3_n_0 ),
        .I2(spi_mmio_cont_read_en_reg_n_0),
        .I3(\s_axi_lite_rdata[31]_i_6_n_0 ),
        .I4(spi_mmio_rd_req_cnt__0[25]),
        .O(\s_axi_lite_rdata[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_lite_rdata[25]_i_2 
       (.I0(\s_axi_lite_rdata[27]_i_3_n_0 ),
        .I1(\spi_mmio_cs_low_wait_reg_n_0_[1] ),
        .I2(\s_axi_lite_rdata[31]_i_5_n_0 ),
        .I3(\spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[25] ),
        .I4(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I5(\s_axi_lite_rdata[31]_i_7_n_0 ),
        .O(\s_axi_lite_rdata[25]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \s_axi_lite_rdata[26]_i_1 
       (.I0(\s_axi_lite_rdata[26]_i_2_n_0 ),
        .I1(\s_axi_lite_rdata[26]_i_3_n_0 ),
        .I2(spi_mmio_cont_read_ready),
        .I3(\s_axi_lite_rdata[31]_i_6_n_0 ),
        .I4(spi_mmio_rd_req_cnt__0[26]),
        .O(\s_axi_lite_rdata[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_lite_rdata[26]_i_2 
       (.I0(\s_axi_lite_rdata[27]_i_3_n_0 ),
        .I1(\spi_mmio_cs_low_wait_reg_n_0_[2] ),
        .I2(\s_axi_lite_rdata[31]_i_5_n_0 ),
        .I3(\spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[26] ),
        .I4(\spi_mmio_fsm_state_reg_n_0_[2] ),
        .I5(\s_axi_lite_rdata[31]_i_7_n_0 ),
        .O(\s_axi_lite_rdata[26]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \s_axi_lite_rdata[26]_i_3 
       (.I0(s_axi_lite_araddr[2]),
        .I1(s_axi_lite_araddr[3]),
        .I2(s_axi_lite_araddr[1]),
        .I3(s_axi_lite_araddr[0]),
        .O(\s_axi_lite_rdata[26]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \s_axi_lite_rdata[27]_i_1 
       (.I0(\s_axi_lite_rdata[27]_i_2_n_0 ),
        .I1(\s_axi_lite_rdata[27]_i_3_n_0 ),
        .I2(\spi_mmio_cs_low_wait_reg_n_0_[3] ),
        .I3(\s_axi_lite_rdata[31]_i_5_n_0 ),
        .I4(\spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[27] ),
        .O(\s_axi_lite_rdata[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00A0C00000000000)) 
    \s_axi_lite_rdata[27]_i_2 
       (.I0(\spi_mmio_fsm_state_reg_n_0_[3] ),
        .I1(spi_mmio_rd_req_cnt__0[27]),
        .I2(s_axi_lite_araddr[3]),
        .I3(s_axi_lite_araddr[2]),
        .I4(s_axi_lite_araddr[1]),
        .I5(s_axi_lite_araddr[0]),
        .O(\s_axi_lite_rdata[27]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \s_axi_lite_rdata[27]_i_3 
       (.I0(s_axi_lite_araddr[2]),
        .I1(s_axi_lite_araddr[3]),
        .I2(s_axi_lite_araddr[0]),
        .I3(s_axi_lite_araddr[1]),
        .O(\s_axi_lite_rdata[27]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \s_axi_lite_rdata[28]_i_1 
       (.I0(\s_axi_lite_rdata[28]_i_2_n_0 ),
        .I1(\s_axi_lite_rdata[30]_i_3_n_0 ),
        .I2(\spi_io_mode_q_reg_n_0_[0] ),
        .I3(\s_axi_lite_rdata[31]_i_6_n_0 ),
        .I4(spi_mmio_rd_req_cnt__0[28]),
        .O(\s_axi_lite_rdata[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_lite_rdata[28]_i_2 
       (.I0(\s_axi_lite_rdata[27]_i_3_n_0 ),
        .I1(\spi_mmio_cs_low_wait_reg_n_0_[4] ),
        .I2(\s_axi_lite_rdata[31]_i_5_n_0 ),
        .I3(\spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[28] ),
        .I4(\spi_mmio_fsm_state_next_reg_n_0_[0] ),
        .I5(\s_axi_lite_rdata[31]_i_7_n_0 ),
        .O(\s_axi_lite_rdata[28]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \s_axi_lite_rdata[29]_i_1 
       (.I0(\s_axi_lite_rdata[29]_i_2_n_0 ),
        .I1(\s_axi_lite_rdata[30]_i_3_n_0 ),
        .I2(\spi_io_mode_q_reg_n_0_[1] ),
        .I3(\s_axi_lite_rdata[31]_i_6_n_0 ),
        .I4(spi_mmio_rd_req_cnt__0[29]),
        .O(\s_axi_lite_rdata[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_lite_rdata[29]_i_2 
       (.I0(\s_axi_lite_rdata[27]_i_3_n_0 ),
        .I1(\spi_mmio_cs_low_wait_reg_n_0_[5] ),
        .I2(\s_axi_lite_rdata[31]_i_5_n_0 ),
        .I3(\spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[29] ),
        .I4(\spi_mmio_fsm_state_next_reg_n_0_[1] ),
        .I5(\s_axi_lite_rdata[31]_i_7_n_0 ),
        .O(\s_axi_lite_rdata[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFFFE)) 
    \s_axi_lite_rdata[2]_i_1 
       (.I0(\s_axi_lite_rdata[2]_i_2_n_0 ),
        .I1(\s_axi_lite_rdata[2]_i_3_n_0 ),
        .I2(\s_axi_lite_rdata[2]_i_4_n_0 ),
        .I3(\s_axi_lite_rdata[2]_i_5_n_0 ),
        .I4(\s_axi_lite_rdata[2]_i_6_n_0 ),
        .I5(\irq_enabled_reg_n_0_[2] ),
        .O(\s_axi_lite_rdata[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000A00C00000000)) 
    \s_axi_lite_rdata[2]_i_2 
       (.I0(\spi_sr_reg_n_0_[2] ),
        .I1(\spi_sck_div_reg_n_0_[2] ),
        .I2(s_axi_lite_araddr[1]),
        .I3(s_axi_lite_araddr[0]),
        .I4(s_axi_lite_araddr[3]),
        .I5(s_axi_lite_araddr[2]),
        .O(\s_axi_lite_rdata[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000C00000A00000)) 
    \s_axi_lite_rdata[2]_i_3 
       (.I0(data5[2]),
        .I1(data10[2]),
        .I2(s_axi_lite_araddr[1]),
        .I3(s_axi_lite_araddr[0]),
        .I4(s_axi_lite_araddr[2]),
        .I5(s_axi_lite_araddr[3]),
        .O(\s_axi_lite_rdata[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAEAAAAAAAAAA)) 
    \s_axi_lite_rdata[2]_i_4 
       (.I0(\s_axi_lite_rdata[2]_i_7_n_0 ),
        .I1(\spi_sr_out_buf_reg_n_0_[2] ),
        .I2(s_axi_lite_araddr[3]),
        .I3(s_axi_lite_araddr[2]),
        .I4(s_axi_lite_araddr[1]),
        .I5(s_axi_lite_araddr[0]),
        .O(\s_axi_lite_rdata[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \s_axi_lite_rdata[2]_i_5 
       (.I0(\s_axi_lite_rdata[2]_i_8_n_0 ),
        .I1(\s_axi_lite_rdata[31]_i_5_n_0 ),
        .I2(\spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[2] ),
        .I3(\s_axi_lite_rdata[31]_i_6_n_0 ),
        .I4(spi_mmio_rd_req_cnt__0[2]),
        .O(\s_axi_lite_rdata[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \s_axi_lite_rdata[2]_i_6 
       (.I0(s_axi_lite_araddr[3]),
        .I1(s_axi_lite_araddr[2]),
        .I2(s_axi_lite_araddr[0]),
        .I3(s_axi_lite_araddr[1]),
        .O(\s_axi_lite_rdata[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0300200000002000)) 
    \s_axi_lite_rdata[2]_i_7 
       (.I0(\spi_mmio_rd_instr_io_mode_reg_n_0_[2] ),
        .I1(s_axi_lite_araddr[2]),
        .I2(s_axi_lite_araddr[3]),
        .I3(s_axi_lite_araddr[1]),
        .I4(s_axi_lite_araddr[0]),
        .I5(\irq_pend_reg_n_0_[2] ),
        .O(\s_axi_lite_rdata[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000C0A00000000)) 
    \s_axi_lite_rdata[2]_i_8 
       (.I0(\spi_mode_reg_n_0_[0] ),
        .I1(\spi_mmio_rd_instr_reg_n_0_[2] ),
        .I2(s_axi_lite_araddr[2]),
        .I3(s_axi_lite_araddr[3]),
        .I4(s_axi_lite_araddr[1]),
        .I5(s_axi_lite_araddr[0]),
        .O(\s_axi_lite_rdata[2]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \s_axi_lite_rdata[30]_i_1 
       (.I0(\s_axi_lite_rdata[30]_i_2_n_0 ),
        .I1(\s_axi_lite_rdata[30]_i_3_n_0 ),
        .I2(\spi_io_mode_q_reg_n_0_[2] ),
        .I3(\s_axi_lite_rdata[31]_i_6_n_0 ),
        .I4(spi_mmio_rd_req_cnt__0[30]),
        .O(\s_axi_lite_rdata[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_lite_rdata[30]_i_2 
       (.I0(\s_axi_lite_rdata[27]_i_3_n_0 ),
        .I1(\spi_mmio_cs_low_wait_reg_n_0_[6] ),
        .I2(\s_axi_lite_rdata[31]_i_5_n_0 ),
        .I3(\spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[30] ),
        .I4(\spi_mmio_fsm_state_next_reg_n_0_[2] ),
        .I5(\s_axi_lite_rdata[31]_i_7_n_0 ),
        .O(\s_axi_lite_rdata[30]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \s_axi_lite_rdata[30]_i_3 
       (.I0(s_axi_lite_araddr[3]),
        .I1(s_axi_lite_araddr[2]),
        .I2(s_axi_lite_araddr[1]),
        .I3(s_axi_lite_araddr[0]),
        .O(\s_axi_lite_rdata[30]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8AFF)) 
    \s_axi_lite_rdata[31]_i_1 
       (.I0(s_axi_lite_rready),
        .I1(s_axi_lite_rvalid_reg_0),
        .I2(s_axi_lite_arvalid),
        .I3(aresetn),
        .O(\s_axi_lite_rdata[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_lite_rdata[31]_i_2 
       (.I0(s_axi_lite_arvalid),
        .I1(s_axi_lite_rvalid_reg_0),
        .O(s_axi_lite_rd_en));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \s_axi_lite_rdata[31]_i_3 
       (.I0(\s_axi_lite_rdata[31]_i_4_n_0 ),
        .I1(\s_axi_lite_rdata[31]_i_5_n_0 ),
        .I2(\spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[31] ),
        .I3(\s_axi_lite_rdata[31]_i_6_n_0 ),
        .I4(spi_mmio_rd_req_cnt__0[31]),
        .O(\s_axi_lite_rdata[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_lite_rdata[31]_i_4 
       (.I0(\s_axi_lite_rdata[27]_i_3_n_0 ),
        .I1(\spi_mmio_cs_low_wait_reg_n_0_[7] ),
        .I2(\s_axi_lite_rdata[7]_i_2_n_0 ),
        .I3(spi_sr_in_buf_valid_reg_n_0),
        .I4(\spi_mmio_fsm_state_next_reg_n_0_[3] ),
        .I5(\s_axi_lite_rdata[31]_i_7_n_0 ),
        .O(\s_axi_lite_rdata[31]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \s_axi_lite_rdata[31]_i_5 
       (.I0(s_axi_lite_araddr[3]),
        .I1(s_axi_lite_araddr[2]),
        .I2(s_axi_lite_araddr[0]),
        .I3(s_axi_lite_araddr[1]),
        .O(\s_axi_lite_rdata[31]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \s_axi_lite_rdata[31]_i_6 
       (.I0(s_axi_lite_araddr[3]),
        .I1(s_axi_lite_araddr[2]),
        .I2(s_axi_lite_araddr[1]),
        .I3(s_axi_lite_araddr[0]),
        .O(\s_axi_lite_rdata[31]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \s_axi_lite_rdata[31]_i_7 
       (.I0(s_axi_lite_araddr[1]),
        .I1(s_axi_lite_araddr[0]),
        .I2(s_axi_lite_araddr[2]),
        .I3(s_axi_lite_araddr[3]),
        .O(\s_axi_lite_rdata[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \s_axi_lite_rdata[3]_i_1 
       (.I0(\s_axi_lite_rdata[3]_i_2_n_0 ),
        .I1(\s_axi_lite_rdata[3]_i_3_n_0 ),
        .I2(\spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[3] ),
        .I3(\s_axi_lite_rdata[31]_i_5_n_0 ),
        .I4(data5[3]),
        .I5(\s_axi_lite_rdata[7]_i_2_n_0 ),
        .O(\s_axi_lite_rdata[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \s_axi_lite_rdata[3]_i_2 
       (.I0(\spi_mmio_rd_instr_reg_n_0_[3] ),
        .I1(\s_axi_lite_rdata[26]_i_3_n_0 ),
        .I2(spi_cpol),
        .I3(\s_axi_lite_rdata[30]_i_3_n_0 ),
        .I4(\s_axi_lite_rdata[3]_i_4_n_0 ),
        .I5(\s_axi_lite_rdata[3]_i_5_n_0 ),
        .O(\s_axi_lite_rdata[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000C000000A0000)) 
    \s_axi_lite_rdata[3]_i_3 
       (.I0(\irq_enabled_reg_n_0_[3] ),
        .I1(spi_mmio_rd_req_cnt__0[3]),
        .I2(s_axi_lite_araddr[3]),
        .I3(s_axi_lite_araddr[2]),
        .I4(s_axi_lite_araddr[1]),
        .I5(s_axi_lite_araddr[0]),
        .O(\s_axi_lite_rdata[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000A0C00000000)) 
    \s_axi_lite_rdata[3]_i_4 
       (.I0(\spi_sr_out_buf_reg_n_0_[3] ),
        .I1(\spi_sck_div_reg_n_0_[3] ),
        .I2(s_axi_lite_araddr[1]),
        .I3(s_axi_lite_araddr[0]),
        .I4(s_axi_lite_araddr[3]),
        .I5(s_axi_lite_araddr[2]),
        .O(\s_axi_lite_rdata[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000C000A0000000)) 
    \s_axi_lite_rdata[3]_i_5 
       (.I0(\spi_sr_reg_n_0_[3] ),
        .I1(data10[3]),
        .I2(s_axi_lite_araddr[1]),
        .I3(s_axi_lite_araddr[0]),
        .I4(s_axi_lite_araddr[2]),
        .I5(s_axi_lite_araddr[3]),
        .O(\s_axi_lite_rdata[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00800000)) 
    \s_axi_lite_rdata[4]_i_1 
       (.I0(\spi_sr_reg_n_0_[4] ),
        .I1(s_axi_lite_araddr[1]),
        .I2(s_axi_lite_araddr[0]),
        .I3(s_axi_lite_araddr[3]),
        .I4(s_axi_lite_araddr[2]),
        .I5(\s_axi_lite_rdata[4]_i_2_n_0 ),
        .O(\s_axi_lite_rdata[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \s_axi_lite_rdata[4]_i_2 
       (.I0(\s_axi_lite_rdata[4]_i_3_n_0 ),
        .I1(\spi_io_mode_reg_n_0_[0] ),
        .I2(\s_axi_lite_rdata[30]_i_3_n_0 ),
        .I3(\spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[4] ),
        .I4(\s_axi_lite_rdata[31]_i_5_n_0 ),
        .I5(\s_axi_lite_rdata[4]_i_4_n_0 ),
        .O(\s_axi_lite_rdata[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \s_axi_lite_rdata[4]_i_3 
       (.I0(\s_axi_lite_rdata[4]_i_5_n_0 ),
        .I1(\s_axi_lite_rdata[4]_i_6_n_0 ),
        .I2(\s_axi_lite_rdata[9]_i_3_n_0 ),
        .I3(\spi_sr_out_buf_reg_n_0_[4] ),
        .I4(\s_axi_lite_rdata[31]_i_6_n_0 ),
        .I5(spi_mmio_rd_req_cnt__0[4]),
        .O(\s_axi_lite_rdata[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0A000C0000000000)) 
    \s_axi_lite_rdata[4]_i_4 
       (.I0(data10[4]),
        .I1(\spi_mmio_rd_instr_reg_n_0_[4] ),
        .I2(s_axi_lite_araddr[2]),
        .I3(s_axi_lite_araddr[3]),
        .I4(s_axi_lite_araddr[1]),
        .I5(s_axi_lite_araddr[0]),
        .O(\s_axi_lite_rdata[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000AC00000000)) 
    \s_axi_lite_rdata[4]_i_5 
       (.I0(\spi_mmio_addr_io_mode_reg_n_0_[0] ),
        .I1(\irq_enabled_reg_n_0_[4] ),
        .I2(s_axi_lite_araddr[3]),
        .I3(s_axi_lite_araddr[2]),
        .I4(s_axi_lite_araddr[0]),
        .I5(s_axi_lite_araddr[1]),
        .O(\s_axi_lite_rdata[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000000AC00000000)) 
    \s_axi_lite_rdata[4]_i_6 
       (.I0(data5[4]),
        .I1(\spi_sck_div_reg_n_0_[4] ),
        .I2(s_axi_lite_araddr[1]),
        .I3(s_axi_lite_araddr[0]),
        .I4(s_axi_lite_araddr[3]),
        .I5(s_axi_lite_araddr[2]),
        .O(\s_axi_lite_rdata[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00800000)) 
    \s_axi_lite_rdata[5]_i_1 
       (.I0(\spi_sr_reg_n_0_[5] ),
        .I1(s_axi_lite_araddr[1]),
        .I2(s_axi_lite_araddr[0]),
        .I3(s_axi_lite_araddr[3]),
        .I4(s_axi_lite_araddr[2]),
        .I5(\s_axi_lite_rdata[5]_i_2_n_0 ),
        .O(\s_axi_lite_rdata[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \s_axi_lite_rdata[5]_i_2 
       (.I0(\s_axi_lite_rdata[5]_i_3_n_0 ),
        .I1(\spi_io_mode_reg_n_0_[1] ),
        .I2(\s_axi_lite_rdata[30]_i_3_n_0 ),
        .I3(\spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[5] ),
        .I4(\s_axi_lite_rdata[31]_i_5_n_0 ),
        .I5(\s_axi_lite_rdata[5]_i_4_n_0 ),
        .O(\s_axi_lite_rdata[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \s_axi_lite_rdata[5]_i_3 
       (.I0(\s_axi_lite_rdata[5]_i_5_n_0 ),
        .I1(\s_axi_lite_rdata[5]_i_6_n_0 ),
        .I2(\s_axi_lite_rdata[9]_i_3_n_0 ),
        .I3(\spi_sr_out_buf_reg_n_0_[5] ),
        .I4(\s_axi_lite_rdata[31]_i_6_n_0 ),
        .I5(spi_mmio_rd_req_cnt__0[5]),
        .O(\s_axi_lite_rdata[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0A000C0000000000)) 
    \s_axi_lite_rdata[5]_i_4 
       (.I0(data10[5]),
        .I1(\spi_mmio_rd_instr_reg_n_0_[5] ),
        .I2(s_axi_lite_araddr[2]),
        .I3(s_axi_lite_araddr[3]),
        .I4(s_axi_lite_araddr[1]),
        .I5(s_axi_lite_araddr[0]),
        .O(\s_axi_lite_rdata[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000AC00000000)) 
    \s_axi_lite_rdata[5]_i_5 
       (.I0(\spi_mmio_addr_io_mode_reg_n_0_[1] ),
        .I1(\irq_enabled_reg_n_0_[5] ),
        .I2(s_axi_lite_araddr[3]),
        .I3(s_axi_lite_araddr[2]),
        .I4(s_axi_lite_araddr[0]),
        .I5(s_axi_lite_araddr[1]),
        .O(\s_axi_lite_rdata[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000000AC00000000)) 
    \s_axi_lite_rdata[5]_i_6 
       (.I0(data5[5]),
        .I1(\spi_sck_div_reg_n_0_[5] ),
        .I2(s_axi_lite_araddr[1]),
        .I3(s_axi_lite_araddr[0]),
        .I4(s_axi_lite_araddr[3]),
        .I5(s_axi_lite_araddr[2]),
        .O(\s_axi_lite_rdata[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00800000)) 
    \s_axi_lite_rdata[6]_i_1 
       (.I0(\spi_sr_reg_n_0_[6] ),
        .I1(s_axi_lite_araddr[1]),
        .I2(s_axi_lite_araddr[0]),
        .I3(s_axi_lite_araddr[3]),
        .I4(s_axi_lite_araddr[2]),
        .I5(\s_axi_lite_rdata[6]_i_2_n_0 ),
        .O(\s_axi_lite_rdata[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \s_axi_lite_rdata[6]_i_2 
       (.I0(\s_axi_lite_rdata[6]_i_3_n_0 ),
        .I1(\spi_io_mode_reg_n_0_[2] ),
        .I2(\s_axi_lite_rdata[30]_i_3_n_0 ),
        .I3(\spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[6] ),
        .I4(\s_axi_lite_rdata[31]_i_5_n_0 ),
        .I5(\s_axi_lite_rdata[6]_i_4_n_0 ),
        .O(\s_axi_lite_rdata[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \s_axi_lite_rdata[6]_i_3 
       (.I0(\s_axi_lite_rdata[6]_i_5_n_0 ),
        .I1(\s_axi_lite_rdata[6]_i_6_n_0 ),
        .I2(\s_axi_lite_rdata[9]_i_3_n_0 ),
        .I3(\spi_sr_out_buf_reg_n_0_[6] ),
        .I4(\s_axi_lite_rdata[31]_i_6_n_0 ),
        .I5(spi_mmio_rd_req_cnt__0[6]),
        .O(\s_axi_lite_rdata[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0A000C0000000000)) 
    \s_axi_lite_rdata[6]_i_4 
       (.I0(data10[6]),
        .I1(\spi_mmio_rd_instr_reg_n_0_[6] ),
        .I2(s_axi_lite_araddr[2]),
        .I3(s_axi_lite_araddr[3]),
        .I4(s_axi_lite_araddr[1]),
        .I5(s_axi_lite_araddr[0]),
        .O(\s_axi_lite_rdata[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000AC00000000)) 
    \s_axi_lite_rdata[6]_i_5 
       (.I0(\spi_mmio_addr_io_mode_reg_n_0_[2] ),
        .I1(\irq_enabled_reg_n_0_[6] ),
        .I2(s_axi_lite_araddr[3]),
        .I3(s_axi_lite_araddr[2]),
        .I4(s_axi_lite_araddr[0]),
        .I5(s_axi_lite_araddr[1]),
        .O(\s_axi_lite_rdata[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000000AC00000000)) 
    \s_axi_lite_rdata[6]_i_6 
       (.I0(data5[6]),
        .I1(\spi_sck_div_reg_n_0_[6] ),
        .I2(s_axi_lite_araddr[1]),
        .I3(s_axi_lite_araddr[0]),
        .I4(s_axi_lite_araddr[3]),
        .I5(s_axi_lite_araddr[2]),
        .O(\s_axi_lite_rdata[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \s_axi_lite_rdata[7]_i_1 
       (.I0(\spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[7] ),
        .I1(\s_axi_lite_rdata[31]_i_5_n_0 ),
        .I2(data5[7]),
        .I3(\s_axi_lite_rdata[7]_i_2_n_0 ),
        .I4(\s_axi_lite_rdata[7]_i_3_n_0 ),
        .I5(\s_axi_lite_rdata[7]_i_4_n_0 ),
        .O(\s_axi_lite_rdata[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \s_axi_lite_rdata[7]_i_2 
       (.I0(s_axi_lite_araddr[3]),
        .I1(s_axi_lite_araddr[2]),
        .I2(s_axi_lite_araddr[0]),
        .I3(s_axi_lite_araddr[1]),
        .O(\s_axi_lite_rdata[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000C000A0000000)) 
    \s_axi_lite_rdata[7]_i_3 
       (.I0(p_2_in),
        .I1(data10[7]),
        .I2(s_axi_lite_araddr[1]),
        .I3(s_axi_lite_araddr[0]),
        .I4(s_axi_lite_araddr[2]),
        .I5(s_axi_lite_araddr[3]),
        .O(\s_axi_lite_rdata[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \s_axi_lite_rdata[7]_i_4 
       (.I0(\s_axi_lite_rdata[26]_i_3_n_0 ),
        .I1(\spi_mmio_rd_instr_reg_n_0_[7] ),
        .I2(\s_axi_lite_rdata[31]_i_6_n_0 ),
        .I3(spi_mmio_rd_req_cnt__0[7]),
        .I4(\s_axi_lite_rdata[7]_i_5_n_0 ),
        .O(\s_axi_lite_rdata[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000A0C00000000)) 
    \s_axi_lite_rdata[7]_i_5 
       (.I0(\spi_sr_out_buf_reg_n_0_[7] ),
        .I1(\spi_sck_div_reg_n_0_[7] ),
        .I2(s_axi_lite_araddr[1]),
        .I3(s_axi_lite_araddr[0]),
        .I4(s_axi_lite_araddr[3]),
        .I5(s_axi_lite_araddr[2]),
        .O(\s_axi_lite_rdata[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \s_axi_lite_rdata[8]_i_1 
       (.I0(\s_axi_lite_rdata[8]_i_2_n_0 ),
        .I1(\spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[8] ),
        .I2(\s_axi_lite_rdata[31]_i_5_n_0 ),
        .I3(\spi_mmio_addr_size_reg_n_0_[0] ),
        .I4(\s_axi_lite_rdata[26]_i_3_n_0 ),
        .I5(\s_axi_lite_rdata[8]_i_3_n_0 ),
        .O(\s_axi_lite_rdata[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000C00000A0000)) 
    \s_axi_lite_rdata[8]_i_2 
       (.I0(spi_lsb_first_reg_n_0),
        .I1(\spi_mmio_dummy_io_mode_reg_n_0_[0] ),
        .I2(s_axi_lite_araddr[2]),
        .I3(s_axi_lite_araddr[3]),
        .I4(s_axi_lite_araddr[0]),
        .I5(s_axi_lite_araddr[1]),
        .O(\s_axi_lite_rdata[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000AC0000000000)) 
    \s_axi_lite_rdata[8]_i_3 
       (.I0(spi_mmio_rd_req_cnt__0[8]),
        .I1(spi_sr_out_buf_valid),
        .I2(s_axi_lite_araddr[3]),
        .I3(s_axi_lite_araddr[2]),
        .I4(s_axi_lite_araddr[1]),
        .I5(s_axi_lite_araddr[0]),
        .O(\s_axi_lite_rdata[8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \s_axi_lite_rdata[9]_i_1 
       (.I0(\s_axi_lite_rdata[9]_i_2_n_0 ),
        .I1(\s_axi_lite_rdata[26]_i_3_n_0 ),
        .I2(\spi_mmio_addr_size_reg_n_0_[1] ),
        .I3(\s_axi_lite_rdata[9]_i_3_n_0 ),
        .I4(spi_rd_req_reg_n_0),
        .O(\s_axi_lite_rdata[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_lite_rdata[9]_i_2 
       (.I0(\s_axi_lite_rdata[27]_i_3_n_0 ),
        .I1(\spi_mmio_dummy_io_mode_reg_n_0_[1] ),
        .I2(\s_axi_lite_rdata[31]_i_5_n_0 ),
        .I3(\spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[9] ),
        .I4(spi_mmio_rd_req_cnt__0[9]),
        .I5(\s_axi_lite_rdata[31]_i_6_n_0 ),
        .O(\s_axi_lite_rdata[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \s_axi_lite_rdata[9]_i_3 
       (.I0(s_axi_lite_araddr[3]),
        .I1(s_axi_lite_araddr[2]),
        .I2(s_axi_lite_araddr[1]),
        .I3(s_axi_lite_araddr[0]),
        .O(\s_axi_lite_rdata[9]_i_3_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite RDATA" *) 
  FDRE \s_axi_lite_rdata_reg[0] 
       (.C(aclk),
        .CE(s_axi_lite_rd_en),
        .D(\s_axi_lite_rdata[0]_i_1_n_0 ),
        .Q(s_axi_lite_rdata[0]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite RDATA" *) 
  FDRE \s_axi_lite_rdata_reg[10] 
       (.C(aclk),
        .CE(s_axi_lite_rd_en),
        .D(\s_axi_lite_rdata[10]_i_1_n_0 ),
        .Q(s_axi_lite_rdata[10]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite RDATA" *) 
  FDRE \s_axi_lite_rdata_reg[11] 
       (.C(aclk),
        .CE(s_axi_lite_rd_en),
        .D(\s_axi_lite_rdata[11]_i_1_n_0 ),
        .Q(s_axi_lite_rdata[11]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite RDATA" *) 
  FDRE \s_axi_lite_rdata_reg[12] 
       (.C(aclk),
        .CE(s_axi_lite_rd_en),
        .D(\s_axi_lite_rdata[12]_i_1_n_0 ),
        .Q(s_axi_lite_rdata[12]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite RDATA" *) 
  FDRE \s_axi_lite_rdata_reg[13] 
       (.C(aclk),
        .CE(s_axi_lite_rd_en),
        .D(\s_axi_lite_rdata[13]_i_1_n_0 ),
        .Q(s_axi_lite_rdata[13]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite RDATA" *) 
  FDRE \s_axi_lite_rdata_reg[14] 
       (.C(aclk),
        .CE(s_axi_lite_rd_en),
        .D(\s_axi_lite_rdata[14]_i_1_n_0 ),
        .Q(s_axi_lite_rdata[14]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite RDATA" *) 
  FDRE \s_axi_lite_rdata_reg[15] 
       (.C(aclk),
        .CE(s_axi_lite_rd_en),
        .D(\s_axi_lite_rdata[15]_i_1_n_0 ),
        .Q(s_axi_lite_rdata[15]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite RDATA" *) 
  FDRE \s_axi_lite_rdata_reg[16] 
       (.C(aclk),
        .CE(s_axi_lite_rd_en),
        .D(\s_axi_lite_rdata[16]_i_1_n_0 ),
        .Q(s_axi_lite_rdata[16]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite RDATA" *) 
  FDRE \s_axi_lite_rdata_reg[17] 
       (.C(aclk),
        .CE(s_axi_lite_rd_en),
        .D(\s_axi_lite_rdata[17]_i_1_n_0 ),
        .Q(s_axi_lite_rdata[17]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite RDATA" *) 
  FDRE \s_axi_lite_rdata_reg[18] 
       (.C(aclk),
        .CE(s_axi_lite_rd_en),
        .D(\s_axi_lite_rdata[18]_i_1_n_0 ),
        .Q(s_axi_lite_rdata[18]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite RDATA" *) 
  FDRE \s_axi_lite_rdata_reg[19] 
       (.C(aclk),
        .CE(s_axi_lite_rd_en),
        .D(\s_axi_lite_rdata[19]_i_1_n_0 ),
        .Q(s_axi_lite_rdata[19]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite RDATA" *) 
  FDRE \s_axi_lite_rdata_reg[1] 
       (.C(aclk),
        .CE(s_axi_lite_rd_en),
        .D(\s_axi_lite_rdata[1]_i_1_n_0 ),
        .Q(s_axi_lite_rdata[1]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite RDATA" *) 
  FDRE \s_axi_lite_rdata_reg[20] 
       (.C(aclk),
        .CE(s_axi_lite_rd_en),
        .D(\s_axi_lite_rdata[20]_i_1_n_0 ),
        .Q(s_axi_lite_rdata[20]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite RDATA" *) 
  FDRE \s_axi_lite_rdata_reg[21] 
       (.C(aclk),
        .CE(s_axi_lite_rd_en),
        .D(\s_axi_lite_rdata[21]_i_1_n_0 ),
        .Q(s_axi_lite_rdata[21]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite RDATA" *) 
  FDRE \s_axi_lite_rdata_reg[22] 
       (.C(aclk),
        .CE(s_axi_lite_rd_en),
        .D(\s_axi_lite_rdata[22]_i_1_n_0 ),
        .Q(s_axi_lite_rdata[22]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite RDATA" *) 
  FDRE \s_axi_lite_rdata_reg[23] 
       (.C(aclk),
        .CE(s_axi_lite_rd_en),
        .D(\s_axi_lite_rdata[23]_i_1_n_0 ),
        .Q(s_axi_lite_rdata[23]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite RDATA" *) 
  FDRE \s_axi_lite_rdata_reg[24] 
       (.C(aclk),
        .CE(s_axi_lite_rd_en),
        .D(\s_axi_lite_rdata[24]_i_1_n_0 ),
        .Q(s_axi_lite_rdata[24]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite RDATA" *) 
  FDRE \s_axi_lite_rdata_reg[25] 
       (.C(aclk),
        .CE(s_axi_lite_rd_en),
        .D(\s_axi_lite_rdata[25]_i_1_n_0 ),
        .Q(s_axi_lite_rdata[25]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite RDATA" *) 
  FDRE \s_axi_lite_rdata_reg[26] 
       (.C(aclk),
        .CE(s_axi_lite_rd_en),
        .D(\s_axi_lite_rdata[26]_i_1_n_0 ),
        .Q(s_axi_lite_rdata[26]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite RDATA" *) 
  FDRE \s_axi_lite_rdata_reg[27] 
       (.C(aclk),
        .CE(s_axi_lite_rd_en),
        .D(\s_axi_lite_rdata[27]_i_1_n_0 ),
        .Q(s_axi_lite_rdata[27]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite RDATA" *) 
  FDRE \s_axi_lite_rdata_reg[28] 
       (.C(aclk),
        .CE(s_axi_lite_rd_en),
        .D(\s_axi_lite_rdata[28]_i_1_n_0 ),
        .Q(s_axi_lite_rdata[28]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite RDATA" *) 
  FDRE \s_axi_lite_rdata_reg[29] 
       (.C(aclk),
        .CE(s_axi_lite_rd_en),
        .D(\s_axi_lite_rdata[29]_i_1_n_0 ),
        .Q(s_axi_lite_rdata[29]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite RDATA" *) 
  FDRE \s_axi_lite_rdata_reg[2] 
       (.C(aclk),
        .CE(s_axi_lite_rd_en),
        .D(\s_axi_lite_rdata[2]_i_1_n_0 ),
        .Q(s_axi_lite_rdata[2]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite RDATA" *) 
  FDRE \s_axi_lite_rdata_reg[30] 
       (.C(aclk),
        .CE(s_axi_lite_rd_en),
        .D(\s_axi_lite_rdata[30]_i_1_n_0 ),
        .Q(s_axi_lite_rdata[30]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite RDATA" *) 
  FDRE \s_axi_lite_rdata_reg[31] 
       (.C(aclk),
        .CE(s_axi_lite_rd_en),
        .D(\s_axi_lite_rdata[31]_i_3_n_0 ),
        .Q(s_axi_lite_rdata[31]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite RDATA" *) 
  FDRE \s_axi_lite_rdata_reg[3] 
       (.C(aclk),
        .CE(s_axi_lite_rd_en),
        .D(\s_axi_lite_rdata[3]_i_1_n_0 ),
        .Q(s_axi_lite_rdata[3]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite RDATA" *) 
  FDRE \s_axi_lite_rdata_reg[4] 
       (.C(aclk),
        .CE(s_axi_lite_rd_en),
        .D(\s_axi_lite_rdata[4]_i_1_n_0 ),
        .Q(s_axi_lite_rdata[4]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite RDATA" *) 
  FDRE \s_axi_lite_rdata_reg[5] 
       (.C(aclk),
        .CE(s_axi_lite_rd_en),
        .D(\s_axi_lite_rdata[5]_i_1_n_0 ),
        .Q(s_axi_lite_rdata[5]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite RDATA" *) 
  FDRE \s_axi_lite_rdata_reg[6] 
       (.C(aclk),
        .CE(s_axi_lite_rd_en),
        .D(\s_axi_lite_rdata[6]_i_1_n_0 ),
        .Q(s_axi_lite_rdata[6]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite RDATA" *) 
  FDRE \s_axi_lite_rdata_reg[7] 
       (.C(aclk),
        .CE(s_axi_lite_rd_en),
        .D(\s_axi_lite_rdata[7]_i_1_n_0 ),
        .Q(s_axi_lite_rdata[7]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite RDATA" *) 
  FDRE \s_axi_lite_rdata_reg[8] 
       (.C(aclk),
        .CE(s_axi_lite_rd_en),
        .D(\s_axi_lite_rdata[8]_i_1_n_0 ),
        .Q(s_axi_lite_rdata[8]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite RDATA" *) 
  FDRE \s_axi_lite_rdata_reg[9] 
       (.C(aclk),
        .CE(s_axi_lite_rd_en),
        .D(\s_axi_lite_rdata[9]_i_1_n_0 ),
        .Q(s_axi_lite_rdata[9]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'h5C)) 
    s_axi_lite_rvalid_i_1
       (.I0(s_axi_lite_rready),
        .I1(s_axi_lite_arvalid),
        .I2(s_axi_lite_rvalid_reg_0),
        .O(s_axi_lite_rvalid_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite RVALID" *) 
  FDRE s_axi_lite_rvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_axi_lite_rvalid_i_1_n_0),
        .Q(s_axi_lite_rvalid_reg_0),
        .R(s_axi_lite_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'h04)) 
    spi_dir_i_1
       (.I0(spi_rd_req_ack_reg_n_0),
        .I1(spi_rd_req_reg_n_0),
        .I2(spi_sr_out_buf_valid),
        .O(spi_dir_i_1_n_0));
  FDRE spi_dir_reg
       (.C(aclk),
        .CE(spi_io_mode_q),
        .D(spi_dir_i_1_n_0),
        .Q(spi_dir_reg_n_0),
        .R(p_5_in));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hABFFA800)) 
    spi_en_i_1
       (.I0(s_axi_lite_wdata[1]),
        .I1(spi_sck_div_en_reg_n_0),
        .I2(s_axi_lite_wdata[0]),
        .I3(\spi_mode[1]_i_2_n_0 ),
        .I4(spi_en_reg_n_0),
        .O(spi_en_i_1_n_0));
  FDRE spi_en_reg
       (.C(aclk),
        .CE(1'b1),
        .D(spi_en_i_1_n_0),
        .Q(spi_en_reg_n_0),
        .R(s_axi_lite_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \spi_fsm_state[0]_i_1 
       (.I0(\spi_fsm_state_reg_n_0_[0] ),
        .I1(\spi_fsm_state_reg_n_0_[1] ),
        .O(\spi_fsm_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \spi_fsm_state[1]_i_1 
       (.I0(\spi_fsm_state_reg_n_0_[0] ),
        .I1(\spi_fsm_state_reg_n_0_[1] ),
        .O(\spi_fsm_state[1]_i_1_n_0 ));
  FDRE \spi_fsm_state_reg[0] 
       (.C(aclk),
        .CE(spi_fsm_state),
        .D(\spi_fsm_state[0]_i_1_n_0 ),
        .Q(\spi_fsm_state_reg_n_0_[0] ),
        .R(p_5_in));
  FDRE \spi_fsm_state_reg[1] 
       (.C(aclk),
        .CE(spi_fsm_state),
        .D(\spi_fsm_state[1]_i_1_n_0 ),
        .Q(\spi_fsm_state_reg_n_0_[1] ),
        .R(p_5_in));
  FDRE spi_idle_q_reg
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_onehot_spi_fsm_state_reg_n_0_[0] ),
        .Q(spi_idle_q),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_io_i_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(spi_io0_i),
        .Q(\spi_io_i_reg_n_0_[0] ),
        .R(p_5_in));
  FDRE \spi_io_i_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(spi_io1_i),
        .Q(data00),
        .R(p_5_in));
  FDRE \spi_io_i_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(spi_io2_i),
        .Q(\spi_io_i_reg_n_0_[2] ),
        .R(p_5_in));
  FDRE \spi_io_i_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(spi_io3_i),
        .Q(\spi_io_i_reg_n_0_[3] ),
        .R(p_5_in));
  LUT6 #(
    .INIT(64'hFFEAFFFFFFEA0000)) 
    \spi_io_mode[0]_i_1 
       (.I0(\spi_io_mode[0]_i_2_n_0 ),
        .I1(\spi_io_mode[2]_i_3_n_0 ),
        .I2(s_axi_lite_wdata[4]),
        .I3(\spi_io_mode[0]_i_3_n_0 ),
        .I4(spi_io_mode),
        .I5(\spi_io_mode_reg_n_0_[0] ),
        .O(\spi_io_mode[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0C000A000C000A0)) 
    \spi_io_mode[0]_i_2 
       (.I0(\spi_mmio_rd_instr_io_mode_reg_n_0_[0] ),
        .I1(\spi_mmio_addr_io_mode_reg_n_0_[0] ),
        .I2(\spi_io_mode[2]_i_6_n_0 ),
        .I3(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I4(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I5(\spi_mmio_dummy_io_mode_reg_n_0_[0] ),
        .O(\spi_io_mode[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA008000000080)) 
    \spi_io_mode[0]_i_3 
       (.I0(\spi_io_mode[0]_i_4_n_0 ),
        .I1(\spi_mmio_fsm_state_next_reg[3]_i_5_n_0 ),
        .I2(spi_mmio_cs_active),
        .I3(\spi_mmio_fsm_state_next[3]_i_3_n_0 ),
        .I4(\spi_mmio_fsm_state_reg_n_0_[3] ),
        .I5(spi_io_mode1),
        .O(\spi_io_mode[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \spi_io_mode[0]_i_4 
       (.I0(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I1(\spi_mmio_fsm_state_reg_n_0_[2] ),
        .I2(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I3(\spi_mmio_data_io_mode_reg_n_0_[0] ),
        .O(\spi_io_mode[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAFFFFFFEA0000)) 
    \spi_io_mode[1]_i_1 
       (.I0(\spi_io_mode[1]_i_2_n_0 ),
        .I1(\spi_io_mode[2]_i_3_n_0 ),
        .I2(s_axi_lite_wdata[5]),
        .I3(\spi_io_mode[1]_i_3_n_0 ),
        .I4(spi_io_mode),
        .I5(\spi_io_mode_reg_n_0_[1] ),
        .O(\spi_io_mode[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0C000A000C000A0)) 
    \spi_io_mode[1]_i_2 
       (.I0(\spi_mmio_rd_instr_io_mode_reg_n_0_[1] ),
        .I1(\spi_mmio_addr_io_mode_reg_n_0_[1] ),
        .I2(\spi_io_mode[2]_i_6_n_0 ),
        .I3(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I4(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I5(\spi_mmio_dummy_io_mode_reg_n_0_[1] ),
        .O(\spi_io_mode[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA008000000080)) 
    \spi_io_mode[1]_i_3 
       (.I0(\spi_io_mode[1]_i_4_n_0 ),
        .I1(\spi_mmio_fsm_state_next_reg[3]_i_5_n_0 ),
        .I2(spi_mmio_cs_active),
        .I3(\spi_mmio_fsm_state_next[3]_i_3_n_0 ),
        .I4(\spi_mmio_fsm_state_reg_n_0_[3] ),
        .I5(spi_io_mode1),
        .O(\spi_io_mode[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \spi_io_mode[1]_i_4 
       (.I0(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I1(\spi_mmio_fsm_state_reg_n_0_[2] ),
        .I2(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I3(\spi_mmio_data_io_mode_reg_n_0_[1] ),
        .O(\spi_io_mode[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAFFFFFFEA0000)) 
    \spi_io_mode[2]_i_1 
       (.I0(\spi_io_mode[2]_i_2_n_0 ),
        .I1(\spi_io_mode[2]_i_3_n_0 ),
        .I2(s_axi_lite_wdata[6]),
        .I3(\spi_io_mode[2]_i_4_n_0 ),
        .I4(spi_io_mode),
        .I5(\spi_io_mode_reg_n_0_[2] ),
        .O(\spi_io_mode[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \spi_io_mode[2]_i_10 
       (.I0(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I1(\spi_mmio_fsm_state_reg_n_0_[2] ),
        .I2(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I3(\spi_mmio_data_io_mode_reg_n_0_[2] ),
        .O(\spi_io_mode[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFF80808080808080)) 
    \spi_io_mode[2]_i_11 
       (.I0(\spi_io_mode[2]_i_13_n_0 ),
        .I1(spi_io_mode1),
        .I2(\spi_mmio_fsm_state_reg_n_0_[3] ),
        .I3(\spi_io_mode[2]_i_14_n_0 ),
        .I4(spi_lsb_first_i_2_n_0),
        .I5(\spi_mmio_rd_instr_io_mode[2]_i_3_n_0 ),
        .O(\spi_io_mode[2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0004000400000004)) 
    \spi_io_mode[2]_i_12 
       (.I0(\spi_mmio_fsm_state_reg_n_0_[3] ),
        .I1(\spi_mmio_fsm_state_reg_n_0_[2] ),
        .I2(spi_sr_out_buf_valid),
        .I3(spi_rd_req_reg_n_0),
        .I4(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I5(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .O(\spi_io_mode[2]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \spi_io_mode[2]_i_13 
       (.I0(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I1(\spi_mmio_fsm_state_reg_n_0_[2] ),
        .I2(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .O(\spi_io_mode[2]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h16)) 
    \spi_io_mode[2]_i_14 
       (.I0(s_axi_lite_wdata[4]),
        .I1(s_axi_lite_wdata[6]),
        .I2(s_axi_lite_wdata[5]),
        .O(\spi_io_mode[2]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hF0C000A000C000A0)) 
    \spi_io_mode[2]_i_2 
       (.I0(\spi_mmio_rd_instr_io_mode_reg_n_0_[2] ),
        .I1(\spi_mmio_addr_io_mode_reg_n_0_[2] ),
        .I2(\spi_io_mode[2]_i_6_n_0 ),
        .I3(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I4(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I5(\spi_mmio_dummy_io_mode_reg_n_0_[2] ),
        .O(\spi_io_mode[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEFEFEFEFEFEFE)) 
    \spi_io_mode[2]_i_3 
       (.I0(\spi_io_mode[2]_i_7_n_0 ),
        .I1(\spi_io_mode[2]_i_8_n_0 ),
        .I2(\spi_io_mode[2]_i_9_n_0 ),
        .I3(\spi_mmio_fsm_state_next[3]_i_3_n_0 ),
        .I4(spi_mmio_cs_active),
        .I5(\spi_mmio_fsm_state_next_reg[3]_i_5_n_0 ),
        .O(\spi_io_mode[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA008000000080)) 
    \spi_io_mode[2]_i_4 
       (.I0(\spi_io_mode[2]_i_10_n_0 ),
        .I1(\spi_mmio_fsm_state_next_reg[3]_i_5_n_0 ),
        .I2(spi_mmio_cs_active),
        .I3(\spi_mmio_fsm_state_next[3]_i_3_n_0 ),
        .I4(\spi_mmio_fsm_state_reg_n_0_[3] ),
        .I5(spi_io_mode1),
        .O(\spi_io_mode[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAEAAAAAA)) 
    \spi_io_mode[2]_i_5 
       (.I0(\spi_io_mode[2]_i_11_n_0 ),
        .I1(s_axi_full_arready_i_3_n_0),
        .I2(\spi_mmio_fsm_state_next[3]_i_3_n_0 ),
        .I3(spi_mmio_cs_active),
        .I4(\spi_mmio_fsm_state_next_reg[3]_i_5_n_0 ),
        .I5(\spi_io_mode[2]_i_12_n_0 ),
        .O(spi_io_mode));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \spi_io_mode[2]_i_6 
       (.I0(spi_sr_out_buf_valid),
        .I1(spi_rd_req_reg_n_0),
        .I2(\spi_mmio_fsm_state_reg_n_0_[3] ),
        .I3(\spi_mmio_fsm_state_reg_n_0_[2] ),
        .O(\spi_io_mode[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFFFEFFFE00)) 
    \spi_io_mode[2]_i_7 
       (.I0(\spi_mmio_fsm_state_reg_n_0_[3] ),
        .I1(spi_rd_req_reg_n_0),
        .I2(spi_sr_out_buf_valid),
        .I3(\spi_mmio_fsm_state_reg_n_0_[2] ),
        .I4(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I5(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .O(\spi_io_mode[2]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \spi_io_mode[2]_i_8 
       (.I0(\spi_mmio_fsm_state_reg_n_0_[3] ),
        .I1(spi_rd_req_reg_n_0),
        .I2(spi_sr_out_buf_valid),
        .O(\spi_io_mode[2]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'h0051)) 
    \spi_io_mode[2]_i_9 
       (.I0(\spi_mmio_fsm_state_reg_n_0_[2] ),
        .I1(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I2(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I3(\spi_mmio_fsm_state_reg_n_0_[3] ),
        .O(\spi_io_mode[2]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hA8888888)) 
    \spi_io_mode_q[2]_i_1 
       (.I0(\FSM_onehot_spi_fsm_state[2]_i_2_n_0 ),
        .I1(\FSM_onehot_spi_fsm_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_spi_fsm_state_reg_n_0_[2] ),
        .I3(\spi_io_mode_q[2]_i_2_n_0 ),
        .I4(spi_io_mode_q1),
        .O(spi_io_mode_q));
  LUT5 #(
    .INIT(32'h90090000)) 
    \spi_io_mode_q[2]_i_2 
       (.I0(\spi_sr_bit_cnt_reg_n_0_[1] ),
        .I1(\spi_io_mode_q_reg_n_0_[1] ),
        .I2(\spi_sr_bit_cnt_reg_n_0_[2] ),
        .I3(\spi_io_mode_q_reg_n_0_[2] ),
        .I4(\spi_io_mode_q[2]_i_3_n_0 ),
        .O(\spi_io_mode_q[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'h1001)) 
    \spi_io_mode_q[2]_i_3 
       (.I0(\spi_sr_bit_cnt_reg_n_0_[4] ),
        .I1(\spi_sr_bit_cnt_reg_n_0_[3] ),
        .I2(\spi_sr_bit_cnt_reg_n_0_[0] ),
        .I3(\spi_io_mode_q_reg_n_0_[0] ),
        .O(\spi_io_mode_q[2]_i_3_n_0 ));
  FDRE \spi_io_mode_q_reg[0] 
       (.C(aclk),
        .CE(spi_io_mode_q),
        .D(\spi_io_mode_reg_n_0_[0] ),
        .Q(\spi_io_mode_q_reg_n_0_[0] ),
        .R(p_5_in));
  FDRE \spi_io_mode_q_reg[1] 
       (.C(aclk),
        .CE(spi_io_mode_q),
        .D(\spi_io_mode_reg_n_0_[1] ),
        .Q(\spi_io_mode_q_reg_n_0_[1] ),
        .R(p_5_in));
  FDRE \spi_io_mode_q_reg[2] 
       (.C(aclk),
        .CE(spi_io_mode_q),
        .D(\spi_io_mode_reg_n_0_[2] ),
        .Q(\spi_io_mode_q_reg_n_0_[2] ),
        .R(p_5_in));
  FDSE \spi_io_mode_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\spi_io_mode[0]_i_1_n_0 ),
        .Q(\spi_io_mode_reg_n_0_[0] ),
        .S(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_io_mode_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\spi_io_mode[1]_i_1_n_0 ),
        .Q(\spi_io_mode_reg_n_0_[1] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_io_mode_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\spi_io_mode[2]_i_1_n_0 ),
        .Q(\spi_io_mode_reg_n_0_[2] ),
        .R(s_axi_lite_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \spi_io_o[0]_i_1 
       (.I0(spi_en_reg_n_0),
        .O(p_5_in));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'h6FF6)) 
    \spi_io_o[0]_i_10 
       (.I0(spi_sck_div_cnt_reg[1]),
        .I1(\spi_sck_div_reg_n_0_[1] ),
        .I2(spi_sck_div_cnt_reg[0]),
        .I3(\spi_sck_div_reg_n_0_[0] ),
        .O(\spi_io_o[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \spi_io_o[0]_i_11 
       (.I0(spi_sck_div_cnt_reg[4]),
        .I1(\spi_sck_div_reg_n_0_[4] ),
        .I2(spi_sck_div_cnt_reg[3]),
        .I3(\spi_sck_div_reg_n_0_[3] ),
        .O(\spi_io_o[0]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \spi_io_o[0]_i_12 
       (.I0(spi_sck_div_en_reg_n_0),
        .I1(spi_sck_int),
        .I2(\spi_mode_reg_n_0_[0] ),
        .O(\spi_io_o[0]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \spi_io_o[0]_i_13 
       (.I0(\FSM_onehot_spi_fsm_state_reg_n_0_[2] ),
        .I1(\spi_io_t[2]_i_2_n_0 ),
        .I2(spi_lsb_first_reg_n_0),
        .O(\spi_io_o[0]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \spi_io_o[0]_i_2 
       (.I0(\spi_io_o[0]_i_4_n_0 ),
        .I1(\FSM_onehot_spi_fsm_state_reg_n_0_[0] ),
        .O(\spi_io_o[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \spi_io_o[0]_i_3 
       (.I0(\spi_io_o[0]_i_5_n_0 ),
        .I1(\spi_sr_reg_n_0_[4] ),
        .I2(\spi_io_o[0]_i_6_n_0 ),
        .I3(\spi_sr_reg_n_0_[0] ),
        .I4(\spi_io_o[0]_i_7_n_0 ),
        .O(spi_io_o[0]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \spi_io_o[0]_i_4 
       (.I0(\spi_io_o[0]_i_8_n_0 ),
        .I1(\spi_io_o[0]_i_9_n_0 ),
        .I2(\spi_io_o[0]_i_10_n_0 ),
        .I3(\spi_io_o[0]_i_11_n_0 ),
        .I4(\spi_io_o[0]_i_12_n_0 ),
        .I5(\FSM_onehot_spi_fsm_state_reg_n_0_[2] ),
        .O(\spi_io_o[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \spi_io_o[0]_i_5 
       (.I0(spi_lsb_first_reg_n_0),
        .I1(\spi_io_t[2]_i_2_n_0 ),
        .I2(\FSM_onehot_spi_fsm_state_reg_n_0_[2] ),
        .I3(\spi_io_mode_q_reg_n_0_[2] ),
        .I4(\spi_io_mode_q_reg_n_0_[0] ),
        .I5(\spi_io_mode_q_reg_n_0_[1] ),
        .O(\spi_io_o[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \spi_io_o[0]_i_6 
       (.I0(\FSM_onehot_spi_fsm_state_reg_n_0_[2] ),
        .I1(\spi_io_t[2]_i_2_n_0 ),
        .I2(spi_lsb_first_reg_n_0),
        .O(\spi_io_o[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h000000000088C000)) 
    \spi_io_o[0]_i_7 
       (.I0(\spi_sr_reg_n_0_[6] ),
        .I1(\spi_io_o[0]_i_13_n_0 ),
        .I2(p_2_in),
        .I3(\spi_io_mode_q_reg_n_0_[0] ),
        .I4(\spi_io_mode_q_reg_n_0_[1] ),
        .I5(\spi_io_mode_q_reg_n_0_[2] ),
        .O(\spi_io_o[0]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'h6FF6)) 
    \spi_io_o[0]_i_8 
       (.I0(spi_sck_div_cnt_reg[7]),
        .I1(\spi_sck_div_reg_n_0_[7] ),
        .I2(spi_sck_div_cnt_reg[6]),
        .I3(\spi_sck_div_reg_n_0_[6] ),
        .O(\spi_io_o[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \spi_io_o[0]_i_9 
       (.I0(spi_sck_div_cnt_reg[5]),
        .I1(\spi_sck_div_reg_n_0_[5] ),
        .I2(spi_sck_div_cnt_reg[2]),
        .I3(\spi_sck_div_reg_n_0_[2] ),
        .O(\spi_io_o[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAFABAFAAA0A8A0)) 
    \spi_io_o[1]_i_1 
       (.I0(spi_io_o[1]),
        .I1(\spi_io_o[1]_i_3_n_0 ),
        .I2(\FSM_onehot_spi_fsm_state_reg_n_0_[0] ),
        .I3(\spi_io_o[0]_i_4_n_0 ),
        .I4(\spi_io_o[1]_i_4_n_0 ),
        .I5(spi_io1_o),
        .O(\spi_io_o[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAEAC0C0FFEAC0C0)) 
    \spi_io_o[1]_i_2 
       (.I0(\spi_io_o[1]_i_5_n_0 ),
        .I1(\spi_io_o[0]_i_6_n_0 ),
        .I2(\spi_sr_reg_n_0_[1] ),
        .I3(\spi_sr_reg_n_0_[5] ),
        .I4(\spi_io_o[0]_i_13_n_0 ),
        .I5(\spi_io_t[2]_i_3_n_0 ),
        .O(spi_io_o[1]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \spi_io_o[1]_i_3 
       (.I0(\spi_io_mode_q_reg_n_0_[2] ),
        .I1(\spi_io_mode_q_reg_n_0_[1] ),
        .I2(\spi_io_mode_q_reg_n_0_[0] ),
        .O(\spi_io_o[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAAB)) 
    \spi_io_o[1]_i_4 
       (.I0(spi_lsb_first_reg_n_0),
        .I1(\spi_sr_bit_cnt_reg_n_0_[4] ),
        .I2(\spi_sr_bit_cnt_reg_n_0_[2] ),
        .I3(\spi_sr_bit_cnt_reg_n_0_[3] ),
        .I4(\spi_sr_bit_cnt_reg_n_0_[0] ),
        .I5(\spi_sr_bit_cnt_reg_n_0_[1] ),
        .O(\spi_io_o[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \spi_io_o[1]_i_5 
       (.I0(\spi_io_mode_q_reg_n_0_[0] ),
        .I1(p_2_in),
        .I2(\spi_io_mode_q_reg_n_0_[2] ),
        .I3(\spi_io_mode_q_reg_n_0_[1] ),
        .O(\spi_io_o[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF888FFFFF8880000)) 
    \spi_io_o[2]_i_1 
       (.I0(\spi_sr_reg_n_0_[2] ),
        .I1(\spi_io_o[0]_i_6_n_0 ),
        .I2(\spi_sr_reg_n_0_[6] ),
        .I3(\spi_io_o[0]_i_5_n_0 ),
        .I4(\spi_io_o[2]_i_2_n_0 ),
        .I5(spi_io2_o),
        .O(\spi_io_o[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0FFE0FFE0FFF0)) 
    \spi_io_o[2]_i_2 
       (.I0(\spi_io_mode_q_reg_n_0_[2] ),
        .I1(\spi_io_o[1]_i_4_n_0 ),
        .I2(\spi_io_o[0]_i_4_n_0 ),
        .I3(\FSM_onehot_spi_fsm_state_reg_n_0_[0] ),
        .I4(\spi_io_mode_q_reg_n_0_[1] ),
        .I5(\spi_io_mode_q_reg_n_0_[0] ),
        .O(\spi_io_o[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF888FFFFF8880000)) 
    \spi_io_o[3]_i_1 
       (.I0(\spi_sr_reg_n_0_[3] ),
        .I1(\spi_io_o[0]_i_6_n_0 ),
        .I2(p_2_in),
        .I3(\spi_io_o[0]_i_5_n_0 ),
        .I4(\spi_io_o[2]_i_2_n_0 ),
        .I5(spi_io3_o),
        .O(\spi_io_o[3]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi_rtl:1.0 spi IO0_O" *) 
  FDRE \spi_io_o_reg[0] 
       (.C(aclk),
        .CE(\spi_io_o[0]_i_2_n_0 ),
        .D(spi_io_o[0]),
        .Q(spi_io0_o),
        .R(p_5_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi_rtl:1.0 spi IO0_O" *) 
  FDRE \spi_io_o_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\spi_io_o[1]_i_1_n_0 ),
        .Q(spi_io1_o),
        .R(p_5_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi_rtl:1.0 spi IO0_O" *) 
  FDRE \spi_io_o_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\spi_io_o[2]_i_1_n_0 ),
        .Q(spi_io2_o),
        .R(p_5_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi_rtl:1.0 spi IO0_O" *) 
  FDRE \spi_io_o_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\spi_io_o[3]_i_1_n_0 ),
        .Q(spi_io3_o),
        .R(p_5_in));
  LUT6 #(
    .INIT(64'hFEFFFEABAAAAAAAA)) 
    \spi_io_t[0]_i_1 
       (.I0(\spi_io_t[0]_i_2_n_0 ),
        .I1(\spi_io_mode_q_reg_n_0_[1] ),
        .I2(\spi_io_mode_q_reg_n_0_[2] ),
        .I3(\spi_io_mode_q_reg_n_0_[0] ),
        .I4(spi_dir_reg_n_0),
        .I5(\FSM_onehot_spi_fsm_state_reg_n_0_[2] ),
        .O(spi_io_t[0]));
  LUT5 #(
    .INIT(32'hF8F0FFF0)) 
    \spi_io_t[0]_i_2 
       (.I0(\spi_io_mode_q_reg_n_0_[1] ),
        .I1(\spi_io_mode_q_reg_n_0_[2] ),
        .I2(\FSM_onehot_spi_fsm_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_spi_fsm_state_reg_n_0_[2] ),
        .I4(\spi_io_t[2]_i_2_n_0 ),
        .O(\spi_io_t[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAFFAAFFAAABAA)) 
    \spi_io_t[1]_i_1 
       (.I0(\spi_io_t[0]_i_2_n_0 ),
        .I1(\spi_io_mode_q_reg_n_0_[2] ),
        .I2(\spi_io_mode_q_reg_n_0_[1] ),
        .I3(\FSM_onehot_spi_fsm_state_reg_n_0_[2] ),
        .I4(spi_dir_reg_n_0),
        .I5(\spi_io_mode_q_reg_n_0_[0] ),
        .O(spi_io_t[1]));
  LUT5 #(
    .INIT(32'hFFCCFDCC)) 
    \spi_io_t[2]_i_1 
       (.I0(\spi_io_t[2]_i_2_n_0 ),
        .I1(\FSM_onehot_spi_fsm_state_reg_n_0_[0] ),
        .I2(spi_dir_reg_n_0),
        .I3(\FSM_onehot_spi_fsm_state_reg_n_0_[2] ),
        .I4(\spi_io_t[2]_i_3_n_0 ),
        .O(spi_io_t[2]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \spi_io_t[2]_i_2 
       (.I0(\spi_sr_bit_cnt_reg_n_0_[1] ),
        .I1(\spi_sr_bit_cnt_reg_n_0_[0] ),
        .I2(\spi_sr_bit_cnt_reg_n_0_[3] ),
        .I3(\spi_sr_bit_cnt_reg_n_0_[2] ),
        .I4(\spi_sr_bit_cnt_reg_n_0_[4] ),
        .O(\spi_io_t[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \spi_io_t[2]_i_3 
       (.I0(\spi_io_mode_q_reg_n_0_[1] ),
        .I1(\spi_io_mode_q_reg_n_0_[0] ),
        .I2(\spi_io_mode_q_reg_n_0_[2] ),
        .O(\spi_io_t[2]_i_3_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi_rtl:1.0 spi IO0_T" *) 
  FDSE \spi_io_t_reg[0] 
       (.C(aclk),
        .CE(\spi_io_o[0]_i_2_n_0 ),
        .D(spi_io_t[0]),
        .Q(spi_io0_t),
        .S(p_5_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi_rtl:1.0 spi IO0_T" *) 
  FDSE \spi_io_t_reg[1] 
       (.C(aclk),
        .CE(\spi_io_o[0]_i_2_n_0 ),
        .D(spi_io_t[1]),
        .Q(spi_io1_t),
        .S(p_5_in));
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi_rtl:1.0 spi IO0_T" *) 
  FDSE \spi_io_t_reg[2] 
       (.C(aclk),
        .CE(\spi_io_o[0]_i_2_n_0 ),
        .D(spi_io_t[2]),
        .Q(spi_io2_t),
        .S(p_5_in));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    spi_lsb_first_i_1
       (.I0(s_axi_lite_wdata[8]),
        .I1(spi_lsb_first_i_2_n_0),
        .I2(s_axi_lite_wstrb[1]),
        .I3(\FSM_onehot_spi_fsm_state_reg_n_0_[0] ),
        .I4(\spi_mmio_cs_high_wait[7]_i_2_n_0 ),
        .I5(spi_lsb_first_reg_n_0),
        .O(spi_lsb_first_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'h04)) 
    spi_lsb_first_i_2
       (.I0(s_axi_lite_awaddr[1]),
        .I1(s_axi_lite_awaddr[0]),
        .I2(s_axi_lite_awaddr[3]),
        .O(spi_lsb_first_i_2_n_0));
  FDRE spi_lsb_first_reg
       (.C(aclk),
        .CE(1'b1),
        .D(spi_lsb_first_i_1_n_0),
        .Q(spi_lsb_first_reg_n_0),
        .R(s_axi_lite_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFF77F00080000)) 
    \spi_mmio_addr_io_mode[0]_i_1 
       (.I0(\spi_mmio_rd_instr_io_mode[2]_i_2_n_0 ),
        .I1(\spi_mmio_rd_instr_io_mode[2]_i_3_n_0 ),
        .I2(s_axi_lite_wdata[5]),
        .I3(s_axi_lite_wdata[6]),
        .I4(s_axi_lite_wdata[4]),
        .I5(\spi_mmio_addr_io_mode_reg_n_0_[0] ),
        .O(\spi_mmio_addr_io_mode[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF7F7FF00000080)) 
    \spi_mmio_addr_io_mode[1]_i_1 
       (.I0(\spi_mmio_rd_instr_io_mode[2]_i_2_n_0 ),
        .I1(\spi_mmio_rd_instr_io_mode[2]_i_3_n_0 ),
        .I2(s_axi_lite_wdata[5]),
        .I3(s_axi_lite_wdata[6]),
        .I4(s_axi_lite_wdata[4]),
        .I5(\spi_mmio_addr_io_mode_reg_n_0_[1] ),
        .O(\spi_mmio_addr_io_mode[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF7FF7F00000800)) 
    \spi_mmio_addr_io_mode[2]_i_1 
       (.I0(\spi_mmio_rd_instr_io_mode[2]_i_2_n_0 ),
        .I1(\spi_mmio_rd_instr_io_mode[2]_i_3_n_0 ),
        .I2(s_axi_lite_wdata[5]),
        .I3(s_axi_lite_wdata[6]),
        .I4(s_axi_lite_wdata[4]),
        .I5(\spi_mmio_addr_io_mode_reg_n_0_[2] ),
        .O(\spi_mmio_addr_io_mode[2]_i_1_n_0 ));
  FDSE \spi_mmio_addr_io_mode_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\spi_mmio_addr_io_mode[0]_i_1_n_0 ),
        .Q(\spi_mmio_addr_io_mode_reg_n_0_[0] ),
        .S(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_addr_io_mode_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\spi_mmio_addr_io_mode[1]_i_1_n_0 ),
        .Q(\spi_mmio_addr_io_mode_reg_n_0_[1] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_addr_io_mode_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\spi_mmio_addr_io_mode[2]_i_1_n_0 ),
        .Q(\spi_mmio_addr_io_mode_reg_n_0_[2] ),
        .R(s_axi_lite_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h2222F3FFEEEE0C00)) 
    \spi_mmio_addr_rem[0]_i_1 
       (.I0(\spi_mmio_addr_size_reg_n_0_[0] ),
        .I1(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I2(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I3(\spi_mmio_addr_rem[0]_i_2_n_0 ),
        .I4(\spi_mmio_fsm_state[1]_i_5_n_0 ),
        .I5(spi_mmio_addr_rem[0]),
        .O(\spi_mmio_addr_rem[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \spi_mmio_addr_rem[0]_i_2 
       (.I0(spi_rd_req_reg_n_0),
        .I1(spi_sr_out_buf_valid),
        .I2(\spi_mmio_fsm_state_reg_n_0_[2] ),
        .I3(\spi_mmio_fsm_state_reg_n_0_[3] ),
        .O(\spi_mmio_addr_rem[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hE2FF2E00)) 
    \spi_mmio_addr_rem[1]_i_1 
       (.I0(\spi_mmio_addr_size_reg_n_0_[1] ),
        .I1(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I2(spi_mmio_addr_rem[0]),
        .I3(\spi_mmio_addr_rem[1]_i_2_n_0 ),
        .I4(spi_mmio_addr_rem[1]),
        .O(\spi_mmio_addr_rem[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000200)) 
    \spi_mmio_addr_rem[1]_i_2 
       (.I0(\spi_mmio_cs_wait_rem[7]_i_6_n_0 ),
        .I1(spi_rd_req_reg_n_0),
        .I2(spi_sr_out_buf_valid),
        .I3(\spi_mmio_fsm_state_reg_n_0_[2] ),
        .I4(\spi_mmio_fsm_state_reg_n_0_[3] ),
        .I5(\spi_mmio_fsm_state[1]_i_5_n_0 ),
        .O(\spi_mmio_addr_rem[1]_i_2_n_0 ));
  FDRE \spi_mmio_addr_rem_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\spi_mmio_addr_rem[0]_i_1_n_0 ),
        .Q(spi_mmio_addr_rem[0]),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_addr_rem_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\spi_mmio_addr_rem[1]_i_1_n_0 ),
        .Q(spi_mmio_addr_rem[1]),
        .R(s_axi_lite_awready_i_1_n_0));
  LUT5 #(
    .INIT(32'h02000000)) 
    \spi_mmio_addr_size[1]_i_1 
       (.I0(s_axi_lite_wstrb[1]),
        .I1(s_axi_lite_awaddr[2]),
        .I2(spi_mmio_en),
        .I3(s_axi_lite_awready),
        .I4(\spi_mmio_rd_instr[7]_i_2_n_0 ),
        .O(spi_mmio_addr_size));
  FDRE \spi_mmio_addr_size_reg[0] 
       (.C(aclk),
        .CE(spi_mmio_addr_size),
        .D(s_axi_lite_wdata[8]),
        .Q(\spi_mmio_addr_size_reg_n_0_[0] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_addr_size_reg[1] 
       (.C(aclk),
        .CE(spi_mmio_addr_size),
        .D(s_axi_lite_wdata[9]),
        .Q(\spi_mmio_addr_size_reg_n_0_[1] ),
        .R(s_axi_lite_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00007000)) 
    \spi_mmio_cont_rd_req_cnt[0]_i_1 
       (.I0(\spi_mmio_cs_mask_reg_n_0_[0] ),
        .I1(\spi_ss_o_reg[0]_0 ),
        .I2(\spi_mmio_fsm_state_next_reg[3]_i_5_n_0 ),
        .I3(\spi_mmio_fsm_state[1]_i_3_n_0 ),
        .I4(spi_mmio_cont_rd_req_cnt__0[0]),
        .O(\spi_mmio_cont_rd_req_cnt[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h70000000)) 
    \spi_mmio_cont_rd_req_cnt[10]_i_1 
       (.I0(\spi_mmio_cs_mask_reg_n_0_[0] ),
        .I1(\spi_ss_o_reg[0]_0 ),
        .I2(\spi_mmio_fsm_state_next_reg[3]_i_5_n_0 ),
        .I3(\spi_mmio_fsm_state[1]_i_3_n_0 ),
        .I4(spi_mmio_cont_rd_req_cnt0[10]),
        .O(\spi_mmio_cont_rd_req_cnt[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h70000000)) 
    \spi_mmio_cont_rd_req_cnt[11]_i_1 
       (.I0(\spi_mmio_cs_mask_reg_n_0_[0] ),
        .I1(\spi_ss_o_reg[0]_0 ),
        .I2(\spi_mmio_fsm_state_next_reg[3]_i_5_n_0 ),
        .I3(\spi_mmio_fsm_state[1]_i_3_n_0 ),
        .I4(spi_mmio_cont_rd_req_cnt0[11]),
        .O(\spi_mmio_cont_rd_req_cnt[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h70000000)) 
    \spi_mmio_cont_rd_req_cnt[12]_i_1 
       (.I0(\spi_mmio_cs_mask_reg_n_0_[0] ),
        .I1(\spi_ss_o_reg[0]_0 ),
        .I2(\spi_mmio_fsm_state_next_reg[3]_i_5_n_0 ),
        .I3(\spi_mmio_fsm_state[1]_i_3_n_0 ),
        .I4(spi_mmio_cont_rd_req_cnt0[12]),
        .O(\spi_mmio_cont_rd_req_cnt[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h70000000)) 
    \spi_mmio_cont_rd_req_cnt[13]_i_1 
       (.I0(\spi_mmio_cs_mask_reg_n_0_[0] ),
        .I1(\spi_ss_o_reg[0]_0 ),
        .I2(\spi_mmio_fsm_state_next_reg[3]_i_5_n_0 ),
        .I3(\spi_mmio_fsm_state[1]_i_3_n_0 ),
        .I4(spi_mmio_cont_rd_req_cnt0[13]),
        .O(\spi_mmio_cont_rd_req_cnt[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h70000000)) 
    \spi_mmio_cont_rd_req_cnt[14]_i_1 
       (.I0(\spi_mmio_cs_mask_reg_n_0_[0] ),
        .I1(\spi_ss_o_reg[0]_0 ),
        .I2(\spi_mmio_fsm_state_next_reg[3]_i_5_n_0 ),
        .I3(\spi_mmio_fsm_state[1]_i_3_n_0 ),
        .I4(spi_mmio_cont_rd_req_cnt0[14]),
        .O(\spi_mmio_cont_rd_req_cnt[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h70000000)) 
    \spi_mmio_cont_rd_req_cnt[15]_i_1 
       (.I0(\spi_mmio_cs_mask_reg_n_0_[0] ),
        .I1(\spi_ss_o_reg[0]_0 ),
        .I2(\spi_mmio_fsm_state_next_reg[3]_i_5_n_0 ),
        .I3(\spi_mmio_fsm_state[1]_i_3_n_0 ),
        .I4(spi_mmio_cont_rd_req_cnt0[15]),
        .O(\spi_mmio_cont_rd_req_cnt[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h70000000)) 
    \spi_mmio_cont_rd_req_cnt[16]_i_1 
       (.I0(\spi_mmio_cs_mask_reg_n_0_[0] ),
        .I1(\spi_ss_o_reg[0]_0 ),
        .I2(\spi_mmio_fsm_state_next_reg[3]_i_5_n_0 ),
        .I3(\spi_mmio_fsm_state[1]_i_3_n_0 ),
        .I4(spi_mmio_cont_rd_req_cnt0[16]),
        .O(\spi_mmio_cont_rd_req_cnt[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h70000000)) 
    \spi_mmio_cont_rd_req_cnt[17]_i_1 
       (.I0(\spi_mmio_cs_mask_reg_n_0_[0] ),
        .I1(\spi_ss_o_reg[0]_0 ),
        .I2(\spi_mmio_fsm_state_next_reg[3]_i_5_n_0 ),
        .I3(\spi_mmio_fsm_state[1]_i_3_n_0 ),
        .I4(spi_mmio_cont_rd_req_cnt0[17]),
        .O(\spi_mmio_cont_rd_req_cnt[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h70000000)) 
    \spi_mmio_cont_rd_req_cnt[18]_i_1 
       (.I0(\spi_mmio_cs_mask_reg_n_0_[0] ),
        .I1(\spi_ss_o_reg[0]_0 ),
        .I2(\spi_mmio_fsm_state_next_reg[3]_i_5_n_0 ),
        .I3(\spi_mmio_fsm_state[1]_i_3_n_0 ),
        .I4(spi_mmio_cont_rd_req_cnt0[18]),
        .O(\spi_mmio_cont_rd_req_cnt[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h70000000)) 
    \spi_mmio_cont_rd_req_cnt[19]_i_1 
       (.I0(\spi_mmio_cs_mask_reg_n_0_[0] ),
        .I1(\spi_ss_o_reg[0]_0 ),
        .I2(\spi_mmio_fsm_state_next_reg[3]_i_5_n_0 ),
        .I3(\spi_mmio_fsm_state[1]_i_3_n_0 ),
        .I4(spi_mmio_cont_rd_req_cnt0[19]),
        .O(\spi_mmio_cont_rd_req_cnt[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h70000000)) 
    \spi_mmio_cont_rd_req_cnt[1]_i_1 
       (.I0(\spi_mmio_cs_mask_reg_n_0_[0] ),
        .I1(\spi_ss_o_reg[0]_0 ),
        .I2(\spi_mmio_fsm_state_next_reg[3]_i_5_n_0 ),
        .I3(\spi_mmio_fsm_state[1]_i_3_n_0 ),
        .I4(spi_mmio_cont_rd_req_cnt0[1]),
        .O(\spi_mmio_cont_rd_req_cnt[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h70000000)) 
    \spi_mmio_cont_rd_req_cnt[20]_i_1 
       (.I0(\spi_mmio_cs_mask_reg_n_0_[0] ),
        .I1(\spi_ss_o_reg[0]_0 ),
        .I2(\spi_mmio_fsm_state_next_reg[3]_i_5_n_0 ),
        .I3(\spi_mmio_fsm_state[1]_i_3_n_0 ),
        .I4(spi_mmio_cont_rd_req_cnt0[20]),
        .O(\spi_mmio_cont_rd_req_cnt[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h70000000)) 
    \spi_mmio_cont_rd_req_cnt[21]_i_1 
       (.I0(\spi_mmio_cs_mask_reg_n_0_[0] ),
        .I1(\spi_ss_o_reg[0]_0 ),
        .I2(\spi_mmio_fsm_state_next_reg[3]_i_5_n_0 ),
        .I3(\spi_mmio_fsm_state[1]_i_3_n_0 ),
        .I4(spi_mmio_cont_rd_req_cnt0[21]),
        .O(\spi_mmio_cont_rd_req_cnt[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h70000000)) 
    \spi_mmio_cont_rd_req_cnt[22]_i_1 
       (.I0(\spi_mmio_cs_mask_reg_n_0_[0] ),
        .I1(\spi_ss_o_reg[0]_0 ),
        .I2(\spi_mmio_fsm_state_next_reg[3]_i_5_n_0 ),
        .I3(\spi_mmio_fsm_state[1]_i_3_n_0 ),
        .I4(spi_mmio_cont_rd_req_cnt0[22]),
        .O(\spi_mmio_cont_rd_req_cnt[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h70000000)) 
    \spi_mmio_cont_rd_req_cnt[23]_i_1 
       (.I0(\spi_mmio_cs_mask_reg_n_0_[0] ),
        .I1(\spi_ss_o_reg[0]_0 ),
        .I2(\spi_mmio_fsm_state_next_reg[3]_i_5_n_0 ),
        .I3(\spi_mmio_fsm_state[1]_i_3_n_0 ),
        .I4(spi_mmio_cont_rd_req_cnt0[23]),
        .O(\spi_mmio_cont_rd_req_cnt[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h70000000)) 
    \spi_mmio_cont_rd_req_cnt[24]_i_1 
       (.I0(\spi_mmio_cs_mask_reg_n_0_[0] ),
        .I1(\spi_ss_o_reg[0]_0 ),
        .I2(\spi_mmio_fsm_state_next_reg[3]_i_5_n_0 ),
        .I3(\spi_mmio_fsm_state[1]_i_3_n_0 ),
        .I4(spi_mmio_cont_rd_req_cnt0[24]),
        .O(\spi_mmio_cont_rd_req_cnt[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h70000000)) 
    \spi_mmio_cont_rd_req_cnt[25]_i_1 
       (.I0(\spi_mmio_cs_mask_reg_n_0_[0] ),
        .I1(\spi_ss_o_reg[0]_0 ),
        .I2(\spi_mmio_fsm_state_next_reg[3]_i_5_n_0 ),
        .I3(\spi_mmio_fsm_state[1]_i_3_n_0 ),
        .I4(spi_mmio_cont_rd_req_cnt0[25]),
        .O(\spi_mmio_cont_rd_req_cnt[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h70000000)) 
    \spi_mmio_cont_rd_req_cnt[26]_i_1 
       (.I0(\spi_mmio_cs_mask_reg_n_0_[0] ),
        .I1(\spi_ss_o_reg[0]_0 ),
        .I2(\spi_mmio_fsm_state_next_reg[3]_i_5_n_0 ),
        .I3(\spi_mmio_fsm_state[1]_i_3_n_0 ),
        .I4(spi_mmio_cont_rd_req_cnt0[26]),
        .O(\spi_mmio_cont_rd_req_cnt[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h70000000)) 
    \spi_mmio_cont_rd_req_cnt[27]_i_1 
       (.I0(\spi_mmio_cs_mask_reg_n_0_[0] ),
        .I1(\spi_ss_o_reg[0]_0 ),
        .I2(\spi_mmio_fsm_state_next_reg[3]_i_5_n_0 ),
        .I3(\spi_mmio_fsm_state[1]_i_3_n_0 ),
        .I4(spi_mmio_cont_rd_req_cnt0[27]),
        .O(\spi_mmio_cont_rd_req_cnt[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h70000000)) 
    \spi_mmio_cont_rd_req_cnt[28]_i_1 
       (.I0(\spi_mmio_cs_mask_reg_n_0_[0] ),
        .I1(\spi_ss_o_reg[0]_0 ),
        .I2(\spi_mmio_fsm_state_next_reg[3]_i_5_n_0 ),
        .I3(\spi_mmio_fsm_state[1]_i_3_n_0 ),
        .I4(spi_mmio_cont_rd_req_cnt0[28]),
        .O(\spi_mmio_cont_rd_req_cnt[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h70000000)) 
    \spi_mmio_cont_rd_req_cnt[29]_i_1 
       (.I0(\spi_mmio_cs_mask_reg_n_0_[0] ),
        .I1(\spi_ss_o_reg[0]_0 ),
        .I2(\spi_mmio_fsm_state_next_reg[3]_i_5_n_0 ),
        .I3(\spi_mmio_fsm_state[1]_i_3_n_0 ),
        .I4(spi_mmio_cont_rd_req_cnt0[29]),
        .O(\spi_mmio_cont_rd_req_cnt[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h70000000)) 
    \spi_mmio_cont_rd_req_cnt[2]_i_1 
       (.I0(\spi_mmio_cs_mask_reg_n_0_[0] ),
        .I1(\spi_ss_o_reg[0]_0 ),
        .I2(\spi_mmio_fsm_state_next_reg[3]_i_5_n_0 ),
        .I3(\spi_mmio_fsm_state[1]_i_3_n_0 ),
        .I4(spi_mmio_cont_rd_req_cnt0[2]),
        .O(\spi_mmio_cont_rd_req_cnt[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h70000000)) 
    \spi_mmio_cont_rd_req_cnt[30]_i_1 
       (.I0(\spi_mmio_cs_mask_reg_n_0_[0] ),
        .I1(\spi_ss_o_reg[0]_0 ),
        .I2(\spi_mmio_fsm_state_next_reg[3]_i_5_n_0 ),
        .I3(\spi_mmio_fsm_state[1]_i_3_n_0 ),
        .I4(spi_mmio_cont_rd_req_cnt0[30]),
        .O(\spi_mmio_cont_rd_req_cnt[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h4444F444)) 
    \spi_mmio_cont_rd_req_cnt[31]_i_1 
       (.I0(\spi_mmio_fsm_state[0]_i_3_n_0 ),
        .I1(s_axi_full_arready_i_3_n_0),
        .I2(\s_axi_lite_rdata[31]_i_6_n_0 ),
        .I3(s_axi_lite_arvalid),
        .I4(s_axi_lite_rvalid_reg_0),
        .O(\spi_mmio_cont_rd_req_cnt[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h70000000)) 
    \spi_mmio_cont_rd_req_cnt[31]_i_2 
       (.I0(\spi_mmio_cs_mask_reg_n_0_[0] ),
        .I1(\spi_ss_o_reg[0]_0 ),
        .I2(\spi_mmio_fsm_state_next_reg[3]_i_5_n_0 ),
        .I3(\spi_mmio_fsm_state[1]_i_3_n_0 ),
        .I4(spi_mmio_cont_rd_req_cnt0[31]),
        .O(\spi_mmio_cont_rd_req_cnt[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h70000000)) 
    \spi_mmio_cont_rd_req_cnt[3]_i_1 
       (.I0(\spi_mmio_cs_mask_reg_n_0_[0] ),
        .I1(\spi_ss_o_reg[0]_0 ),
        .I2(\spi_mmio_fsm_state_next_reg[3]_i_5_n_0 ),
        .I3(\spi_mmio_fsm_state[1]_i_3_n_0 ),
        .I4(spi_mmio_cont_rd_req_cnt0[3]),
        .O(\spi_mmio_cont_rd_req_cnt[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h70000000)) 
    \spi_mmio_cont_rd_req_cnt[4]_i_1 
       (.I0(\spi_mmio_cs_mask_reg_n_0_[0] ),
        .I1(\spi_ss_o_reg[0]_0 ),
        .I2(\spi_mmio_fsm_state_next_reg[3]_i_5_n_0 ),
        .I3(\spi_mmio_fsm_state[1]_i_3_n_0 ),
        .I4(spi_mmio_cont_rd_req_cnt0[4]),
        .O(\spi_mmio_cont_rd_req_cnt[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h70000000)) 
    \spi_mmio_cont_rd_req_cnt[5]_i_1 
       (.I0(\spi_mmio_cs_mask_reg_n_0_[0] ),
        .I1(\spi_ss_o_reg[0]_0 ),
        .I2(\spi_mmio_fsm_state_next_reg[3]_i_5_n_0 ),
        .I3(\spi_mmio_fsm_state[1]_i_3_n_0 ),
        .I4(spi_mmio_cont_rd_req_cnt0[5]),
        .O(\spi_mmio_cont_rd_req_cnt[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h70000000)) 
    \spi_mmio_cont_rd_req_cnt[6]_i_1 
       (.I0(\spi_mmio_cs_mask_reg_n_0_[0] ),
        .I1(\spi_ss_o_reg[0]_0 ),
        .I2(\spi_mmio_fsm_state_next_reg[3]_i_5_n_0 ),
        .I3(\spi_mmio_fsm_state[1]_i_3_n_0 ),
        .I4(spi_mmio_cont_rd_req_cnt0[6]),
        .O(\spi_mmio_cont_rd_req_cnt[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h70000000)) 
    \spi_mmio_cont_rd_req_cnt[7]_i_1 
       (.I0(\spi_mmio_cs_mask_reg_n_0_[0] ),
        .I1(\spi_ss_o_reg[0]_0 ),
        .I2(\spi_mmio_fsm_state_next_reg[3]_i_5_n_0 ),
        .I3(\spi_mmio_fsm_state[1]_i_3_n_0 ),
        .I4(spi_mmio_cont_rd_req_cnt0[7]),
        .O(\spi_mmio_cont_rd_req_cnt[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h70000000)) 
    \spi_mmio_cont_rd_req_cnt[8]_i_1 
       (.I0(\spi_mmio_cs_mask_reg_n_0_[0] ),
        .I1(\spi_ss_o_reg[0]_0 ),
        .I2(\spi_mmio_fsm_state_next_reg[3]_i_5_n_0 ),
        .I3(\spi_mmio_fsm_state[1]_i_3_n_0 ),
        .I4(spi_mmio_cont_rd_req_cnt0[8]),
        .O(\spi_mmio_cont_rd_req_cnt[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h70000000)) 
    \spi_mmio_cont_rd_req_cnt[9]_i_1 
       (.I0(\spi_mmio_cs_mask_reg_n_0_[0] ),
        .I1(\spi_ss_o_reg[0]_0 ),
        .I2(\spi_mmio_fsm_state_next_reg[3]_i_5_n_0 ),
        .I3(\spi_mmio_fsm_state[1]_i_3_n_0 ),
        .I4(spi_mmio_cont_rd_req_cnt0[9]),
        .O(\spi_mmio_cont_rd_req_cnt[9]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \spi_mmio_cont_rd_req_cnt_buf[0]_i_1 
       (.I0(spi_mmio_cont_rd_req_cnt__0[0]),
        .I1(s_axi_lite_araddr[1]),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \spi_mmio_cont_rd_req_cnt_buf[10]_i_1 
       (.I0(spi_mmio_cont_rd_req_cnt__0[10]),
        .I1(s_axi_lite_araddr[1]),
        .O(p_1_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \spi_mmio_cont_rd_req_cnt_buf[11]_i_1 
       (.I0(spi_mmio_cont_rd_req_cnt__0[11]),
        .I1(s_axi_lite_araddr[1]),
        .O(p_1_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \spi_mmio_cont_rd_req_cnt_buf[12]_i_1 
       (.I0(spi_mmio_cont_rd_req_cnt__0[12]),
        .I1(s_axi_lite_araddr[1]),
        .O(p_1_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \spi_mmio_cont_rd_req_cnt_buf[13]_i_1 
       (.I0(spi_mmio_cont_rd_req_cnt__0[13]),
        .I1(s_axi_lite_araddr[1]),
        .O(p_1_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \spi_mmio_cont_rd_req_cnt_buf[14]_i_1 
       (.I0(spi_mmio_cont_rd_req_cnt__0[14]),
        .I1(s_axi_lite_araddr[1]),
        .O(p_1_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \spi_mmio_cont_rd_req_cnt_buf[15]_i_1 
       (.I0(spi_mmio_cont_rd_req_cnt__0[15]),
        .I1(s_axi_lite_araddr[1]),
        .O(p_1_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \spi_mmio_cont_rd_req_cnt_buf[16]_i_1 
       (.I0(spi_mmio_cont_rd_req_cnt__0[16]),
        .I1(s_axi_lite_araddr[1]),
        .O(p_1_in[16]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \spi_mmio_cont_rd_req_cnt_buf[17]_i_1 
       (.I0(spi_mmio_cont_rd_req_cnt__0[17]),
        .I1(s_axi_lite_araddr[1]),
        .O(p_1_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \spi_mmio_cont_rd_req_cnt_buf[18]_i_1 
       (.I0(spi_mmio_cont_rd_req_cnt__0[18]),
        .I1(s_axi_lite_araddr[1]),
        .O(p_1_in[18]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \spi_mmio_cont_rd_req_cnt_buf[19]_i_1 
       (.I0(spi_mmio_cont_rd_req_cnt__0[19]),
        .I1(s_axi_lite_araddr[1]),
        .O(p_1_in[19]));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \spi_mmio_cont_rd_req_cnt_buf[1]_i_1 
       (.I0(spi_mmio_cont_rd_req_cnt__0[1]),
        .I1(s_axi_lite_araddr[1]),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \spi_mmio_cont_rd_req_cnt_buf[20]_i_1 
       (.I0(spi_mmio_cont_rd_req_cnt__0[20]),
        .I1(s_axi_lite_araddr[1]),
        .O(p_1_in[20]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \spi_mmio_cont_rd_req_cnt_buf[21]_i_1 
       (.I0(spi_mmio_cont_rd_req_cnt__0[21]),
        .I1(s_axi_lite_araddr[1]),
        .O(p_1_in[21]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \spi_mmio_cont_rd_req_cnt_buf[22]_i_1 
       (.I0(spi_mmio_cont_rd_req_cnt__0[22]),
        .I1(s_axi_lite_araddr[1]),
        .O(p_1_in[22]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \spi_mmio_cont_rd_req_cnt_buf[23]_i_1 
       (.I0(spi_mmio_cont_rd_req_cnt__0[23]),
        .I1(s_axi_lite_araddr[1]),
        .O(p_1_in[23]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \spi_mmio_cont_rd_req_cnt_buf[24]_i_1 
       (.I0(spi_mmio_cont_rd_req_cnt__0[24]),
        .I1(s_axi_lite_araddr[1]),
        .O(p_1_in[24]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \spi_mmio_cont_rd_req_cnt_buf[25]_i_1 
       (.I0(spi_mmio_cont_rd_req_cnt__0[25]),
        .I1(s_axi_lite_araddr[1]),
        .O(p_1_in[25]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \spi_mmio_cont_rd_req_cnt_buf[26]_i_1 
       (.I0(spi_mmio_cont_rd_req_cnt__0[26]),
        .I1(s_axi_lite_araddr[1]),
        .O(p_1_in[26]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \spi_mmio_cont_rd_req_cnt_buf[27]_i_1 
       (.I0(spi_mmio_cont_rd_req_cnt__0[27]),
        .I1(s_axi_lite_araddr[1]),
        .O(p_1_in[27]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \spi_mmio_cont_rd_req_cnt_buf[28]_i_1 
       (.I0(spi_mmio_cont_rd_req_cnt__0[28]),
        .I1(s_axi_lite_araddr[1]),
        .O(p_1_in[28]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \spi_mmio_cont_rd_req_cnt_buf[29]_i_1 
       (.I0(spi_mmio_cont_rd_req_cnt__0[29]),
        .I1(s_axi_lite_araddr[1]),
        .O(p_1_in[29]));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \spi_mmio_cont_rd_req_cnt_buf[2]_i_1 
       (.I0(spi_mmio_cont_rd_req_cnt__0[2]),
        .I1(s_axi_lite_araddr[1]),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \spi_mmio_cont_rd_req_cnt_buf[30]_i_1 
       (.I0(spi_mmio_cont_rd_req_cnt__0[30]),
        .I1(s_axi_lite_araddr[1]),
        .O(p_1_in[30]));
  LUT6 #(
    .INIT(64'h0000400040000000)) 
    \spi_mmio_cont_rd_req_cnt_buf[31]_i_1 
       (.I0(s_axi_lite_rvalid_reg_0),
        .I1(s_axi_lite_arvalid),
        .I2(s_axi_lite_araddr[3]),
        .I3(s_axi_lite_araddr[2]),
        .I4(s_axi_lite_araddr[1]),
        .I5(s_axi_lite_araddr[0]),
        .O(spi_mmio_cont_rd_req_cnt_buf));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \spi_mmio_cont_rd_req_cnt_buf[31]_i_2 
       (.I0(spi_mmio_cont_rd_req_cnt__0[31]),
        .I1(s_axi_lite_araddr[1]),
        .O(p_1_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \spi_mmio_cont_rd_req_cnt_buf[3]_i_1 
       (.I0(spi_mmio_cont_rd_req_cnt__0[3]),
        .I1(s_axi_lite_araddr[1]),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \spi_mmio_cont_rd_req_cnt_buf[4]_i_1 
       (.I0(spi_mmio_cont_rd_req_cnt__0[4]),
        .I1(s_axi_lite_araddr[1]),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \spi_mmio_cont_rd_req_cnt_buf[5]_i_1 
       (.I0(spi_mmio_cont_rd_req_cnt__0[5]),
        .I1(s_axi_lite_araddr[1]),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \spi_mmio_cont_rd_req_cnt_buf[6]_i_1 
       (.I0(spi_mmio_cont_rd_req_cnt__0[6]),
        .I1(s_axi_lite_araddr[1]),
        .O(p_1_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \spi_mmio_cont_rd_req_cnt_buf[7]_i_1 
       (.I0(spi_mmio_cont_rd_req_cnt__0[7]),
        .I1(s_axi_lite_araddr[1]),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \spi_mmio_cont_rd_req_cnt_buf[8]_i_1 
       (.I0(spi_mmio_cont_rd_req_cnt__0[8]),
        .I1(s_axi_lite_araddr[1]),
        .O(p_1_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \spi_mmio_cont_rd_req_cnt_buf[9]_i_1 
       (.I0(spi_mmio_cont_rd_req_cnt__0[9]),
        .I1(s_axi_lite_araddr[1]),
        .O(p_1_in[9]));
  FDRE \spi_mmio_cont_rd_req_cnt_buf_reg[0] 
       (.C(aclk),
        .CE(spi_mmio_cont_rd_req_cnt_buf),
        .D(p_1_in[0]),
        .Q(\spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[0] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cont_rd_req_cnt_buf_reg[10] 
       (.C(aclk),
        .CE(spi_mmio_cont_rd_req_cnt_buf),
        .D(p_1_in[10]),
        .Q(\spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[10] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cont_rd_req_cnt_buf_reg[11] 
       (.C(aclk),
        .CE(spi_mmio_cont_rd_req_cnt_buf),
        .D(p_1_in[11]),
        .Q(\spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[11] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cont_rd_req_cnt_buf_reg[12] 
       (.C(aclk),
        .CE(spi_mmio_cont_rd_req_cnt_buf),
        .D(p_1_in[12]),
        .Q(\spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[12] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cont_rd_req_cnt_buf_reg[13] 
       (.C(aclk),
        .CE(spi_mmio_cont_rd_req_cnt_buf),
        .D(p_1_in[13]),
        .Q(\spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[13] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cont_rd_req_cnt_buf_reg[14] 
       (.C(aclk),
        .CE(spi_mmio_cont_rd_req_cnt_buf),
        .D(p_1_in[14]),
        .Q(\spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[14] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cont_rd_req_cnt_buf_reg[15] 
       (.C(aclk),
        .CE(spi_mmio_cont_rd_req_cnt_buf),
        .D(p_1_in[15]),
        .Q(\spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[15] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cont_rd_req_cnt_buf_reg[16] 
       (.C(aclk),
        .CE(spi_mmio_cont_rd_req_cnt_buf),
        .D(p_1_in[16]),
        .Q(\spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[16] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cont_rd_req_cnt_buf_reg[17] 
       (.C(aclk),
        .CE(spi_mmio_cont_rd_req_cnt_buf),
        .D(p_1_in[17]),
        .Q(\spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[17] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cont_rd_req_cnt_buf_reg[18] 
       (.C(aclk),
        .CE(spi_mmio_cont_rd_req_cnt_buf),
        .D(p_1_in[18]),
        .Q(\spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[18] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cont_rd_req_cnt_buf_reg[19] 
       (.C(aclk),
        .CE(spi_mmio_cont_rd_req_cnt_buf),
        .D(p_1_in[19]),
        .Q(\spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[19] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cont_rd_req_cnt_buf_reg[1] 
       (.C(aclk),
        .CE(spi_mmio_cont_rd_req_cnt_buf),
        .D(p_1_in[1]),
        .Q(\spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[1] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cont_rd_req_cnt_buf_reg[20] 
       (.C(aclk),
        .CE(spi_mmio_cont_rd_req_cnt_buf),
        .D(p_1_in[20]),
        .Q(\spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[20] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cont_rd_req_cnt_buf_reg[21] 
       (.C(aclk),
        .CE(spi_mmio_cont_rd_req_cnt_buf),
        .D(p_1_in[21]),
        .Q(\spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[21] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cont_rd_req_cnt_buf_reg[22] 
       (.C(aclk),
        .CE(spi_mmio_cont_rd_req_cnt_buf),
        .D(p_1_in[22]),
        .Q(\spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[22] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cont_rd_req_cnt_buf_reg[23] 
       (.C(aclk),
        .CE(spi_mmio_cont_rd_req_cnt_buf),
        .D(p_1_in[23]),
        .Q(\spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[23] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cont_rd_req_cnt_buf_reg[24] 
       (.C(aclk),
        .CE(spi_mmio_cont_rd_req_cnt_buf),
        .D(p_1_in[24]),
        .Q(\spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[24] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cont_rd_req_cnt_buf_reg[25] 
       (.C(aclk),
        .CE(spi_mmio_cont_rd_req_cnt_buf),
        .D(p_1_in[25]),
        .Q(\spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[25] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cont_rd_req_cnt_buf_reg[26] 
       (.C(aclk),
        .CE(spi_mmio_cont_rd_req_cnt_buf),
        .D(p_1_in[26]),
        .Q(\spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[26] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cont_rd_req_cnt_buf_reg[27] 
       (.C(aclk),
        .CE(spi_mmio_cont_rd_req_cnt_buf),
        .D(p_1_in[27]),
        .Q(\spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[27] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cont_rd_req_cnt_buf_reg[28] 
       (.C(aclk),
        .CE(spi_mmio_cont_rd_req_cnt_buf),
        .D(p_1_in[28]),
        .Q(\spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[28] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cont_rd_req_cnt_buf_reg[29] 
       (.C(aclk),
        .CE(spi_mmio_cont_rd_req_cnt_buf),
        .D(p_1_in[29]),
        .Q(\spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[29] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cont_rd_req_cnt_buf_reg[2] 
       (.C(aclk),
        .CE(spi_mmio_cont_rd_req_cnt_buf),
        .D(p_1_in[2]),
        .Q(\spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[2] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cont_rd_req_cnt_buf_reg[30] 
       (.C(aclk),
        .CE(spi_mmio_cont_rd_req_cnt_buf),
        .D(p_1_in[30]),
        .Q(\spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[30] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cont_rd_req_cnt_buf_reg[31] 
       (.C(aclk),
        .CE(spi_mmio_cont_rd_req_cnt_buf),
        .D(p_1_in[31]),
        .Q(\spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[31] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cont_rd_req_cnt_buf_reg[3] 
       (.C(aclk),
        .CE(spi_mmio_cont_rd_req_cnt_buf),
        .D(p_1_in[3]),
        .Q(\spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[3] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cont_rd_req_cnt_buf_reg[4] 
       (.C(aclk),
        .CE(spi_mmio_cont_rd_req_cnt_buf),
        .D(p_1_in[4]),
        .Q(\spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[4] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cont_rd_req_cnt_buf_reg[5] 
       (.C(aclk),
        .CE(spi_mmio_cont_rd_req_cnt_buf),
        .D(p_1_in[5]),
        .Q(\spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[5] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cont_rd_req_cnt_buf_reg[6] 
       (.C(aclk),
        .CE(spi_mmio_cont_rd_req_cnt_buf),
        .D(p_1_in[6]),
        .Q(\spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[6] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cont_rd_req_cnt_buf_reg[7] 
       (.C(aclk),
        .CE(spi_mmio_cont_rd_req_cnt_buf),
        .D(p_1_in[7]),
        .Q(\spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[7] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cont_rd_req_cnt_buf_reg[8] 
       (.C(aclk),
        .CE(spi_mmio_cont_rd_req_cnt_buf),
        .D(p_1_in[8]),
        .Q(\spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[8] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cont_rd_req_cnt_buf_reg[9] 
       (.C(aclk),
        .CE(spi_mmio_cont_rd_req_cnt_buf),
        .D(p_1_in[9]),
        .Q(\spi_mmio_cont_rd_req_cnt_buf_reg_n_0_[9] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cont_rd_req_cnt_reg[0] 
       (.C(aclk),
        .CE(\spi_mmio_cont_rd_req_cnt[31]_i_1_n_0 ),
        .D(\spi_mmio_cont_rd_req_cnt[0]_i_1_n_0 ),
        .Q(spi_mmio_cont_rd_req_cnt__0[0]),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cont_rd_req_cnt_reg[10] 
       (.C(aclk),
        .CE(\spi_mmio_cont_rd_req_cnt[31]_i_1_n_0 ),
        .D(\spi_mmio_cont_rd_req_cnt[10]_i_1_n_0 ),
        .Q(spi_mmio_cont_rd_req_cnt__0[10]),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cont_rd_req_cnt_reg[11] 
       (.C(aclk),
        .CE(\spi_mmio_cont_rd_req_cnt[31]_i_1_n_0 ),
        .D(\spi_mmio_cont_rd_req_cnt[11]_i_1_n_0 ),
        .Q(spi_mmio_cont_rd_req_cnt__0[11]),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cont_rd_req_cnt_reg[12] 
       (.C(aclk),
        .CE(\spi_mmio_cont_rd_req_cnt[31]_i_1_n_0 ),
        .D(\spi_mmio_cont_rd_req_cnt[12]_i_1_n_0 ),
        .Q(spi_mmio_cont_rd_req_cnt__0[12]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \spi_mmio_cont_rd_req_cnt_reg[12]_i_2 
       (.CI(\spi_mmio_cont_rd_req_cnt_reg[8]_i_2_n_0 ),
        .CO({\spi_mmio_cont_rd_req_cnt_reg[12]_i_2_n_0 ,\spi_mmio_cont_rd_req_cnt_reg[12]_i_2_n_1 ,\spi_mmio_cont_rd_req_cnt_reg[12]_i_2_n_2 ,\spi_mmio_cont_rd_req_cnt_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(spi_mmio_cont_rd_req_cnt0[12:9]),
        .S(spi_mmio_cont_rd_req_cnt__0[12:9]));
  FDRE \spi_mmio_cont_rd_req_cnt_reg[13] 
       (.C(aclk),
        .CE(\spi_mmio_cont_rd_req_cnt[31]_i_1_n_0 ),
        .D(\spi_mmio_cont_rd_req_cnt[13]_i_1_n_0 ),
        .Q(spi_mmio_cont_rd_req_cnt__0[13]),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cont_rd_req_cnt_reg[14] 
       (.C(aclk),
        .CE(\spi_mmio_cont_rd_req_cnt[31]_i_1_n_0 ),
        .D(\spi_mmio_cont_rd_req_cnt[14]_i_1_n_0 ),
        .Q(spi_mmio_cont_rd_req_cnt__0[14]),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cont_rd_req_cnt_reg[15] 
       (.C(aclk),
        .CE(\spi_mmio_cont_rd_req_cnt[31]_i_1_n_0 ),
        .D(\spi_mmio_cont_rd_req_cnt[15]_i_1_n_0 ),
        .Q(spi_mmio_cont_rd_req_cnt__0[15]),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cont_rd_req_cnt_reg[16] 
       (.C(aclk),
        .CE(\spi_mmio_cont_rd_req_cnt[31]_i_1_n_0 ),
        .D(\spi_mmio_cont_rd_req_cnt[16]_i_1_n_0 ),
        .Q(spi_mmio_cont_rd_req_cnt__0[16]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \spi_mmio_cont_rd_req_cnt_reg[16]_i_2 
       (.CI(\spi_mmio_cont_rd_req_cnt_reg[12]_i_2_n_0 ),
        .CO({\spi_mmio_cont_rd_req_cnt_reg[16]_i_2_n_0 ,\spi_mmio_cont_rd_req_cnt_reg[16]_i_2_n_1 ,\spi_mmio_cont_rd_req_cnt_reg[16]_i_2_n_2 ,\spi_mmio_cont_rd_req_cnt_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(spi_mmio_cont_rd_req_cnt0[16:13]),
        .S(spi_mmio_cont_rd_req_cnt__0[16:13]));
  FDRE \spi_mmio_cont_rd_req_cnt_reg[17] 
       (.C(aclk),
        .CE(\spi_mmio_cont_rd_req_cnt[31]_i_1_n_0 ),
        .D(\spi_mmio_cont_rd_req_cnt[17]_i_1_n_0 ),
        .Q(spi_mmio_cont_rd_req_cnt__0[17]),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cont_rd_req_cnt_reg[18] 
       (.C(aclk),
        .CE(\spi_mmio_cont_rd_req_cnt[31]_i_1_n_0 ),
        .D(\spi_mmio_cont_rd_req_cnt[18]_i_1_n_0 ),
        .Q(spi_mmio_cont_rd_req_cnt__0[18]),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cont_rd_req_cnt_reg[19] 
       (.C(aclk),
        .CE(\spi_mmio_cont_rd_req_cnt[31]_i_1_n_0 ),
        .D(\spi_mmio_cont_rd_req_cnt[19]_i_1_n_0 ),
        .Q(spi_mmio_cont_rd_req_cnt__0[19]),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cont_rd_req_cnt_reg[1] 
       (.C(aclk),
        .CE(\spi_mmio_cont_rd_req_cnt[31]_i_1_n_0 ),
        .D(\spi_mmio_cont_rd_req_cnt[1]_i_1_n_0 ),
        .Q(spi_mmio_cont_rd_req_cnt__0[1]),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cont_rd_req_cnt_reg[20] 
       (.C(aclk),
        .CE(\spi_mmio_cont_rd_req_cnt[31]_i_1_n_0 ),
        .D(\spi_mmio_cont_rd_req_cnt[20]_i_1_n_0 ),
        .Q(spi_mmio_cont_rd_req_cnt__0[20]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \spi_mmio_cont_rd_req_cnt_reg[20]_i_2 
       (.CI(\spi_mmio_cont_rd_req_cnt_reg[16]_i_2_n_0 ),
        .CO({\spi_mmio_cont_rd_req_cnt_reg[20]_i_2_n_0 ,\spi_mmio_cont_rd_req_cnt_reg[20]_i_2_n_1 ,\spi_mmio_cont_rd_req_cnt_reg[20]_i_2_n_2 ,\spi_mmio_cont_rd_req_cnt_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(spi_mmio_cont_rd_req_cnt0[20:17]),
        .S(spi_mmio_cont_rd_req_cnt__0[20:17]));
  FDRE \spi_mmio_cont_rd_req_cnt_reg[21] 
       (.C(aclk),
        .CE(\spi_mmio_cont_rd_req_cnt[31]_i_1_n_0 ),
        .D(\spi_mmio_cont_rd_req_cnt[21]_i_1_n_0 ),
        .Q(spi_mmio_cont_rd_req_cnt__0[21]),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cont_rd_req_cnt_reg[22] 
       (.C(aclk),
        .CE(\spi_mmio_cont_rd_req_cnt[31]_i_1_n_0 ),
        .D(\spi_mmio_cont_rd_req_cnt[22]_i_1_n_0 ),
        .Q(spi_mmio_cont_rd_req_cnt__0[22]),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cont_rd_req_cnt_reg[23] 
       (.C(aclk),
        .CE(\spi_mmio_cont_rd_req_cnt[31]_i_1_n_0 ),
        .D(\spi_mmio_cont_rd_req_cnt[23]_i_1_n_0 ),
        .Q(spi_mmio_cont_rd_req_cnt__0[23]),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cont_rd_req_cnt_reg[24] 
       (.C(aclk),
        .CE(\spi_mmio_cont_rd_req_cnt[31]_i_1_n_0 ),
        .D(\spi_mmio_cont_rd_req_cnt[24]_i_1_n_0 ),
        .Q(spi_mmio_cont_rd_req_cnt__0[24]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \spi_mmio_cont_rd_req_cnt_reg[24]_i_2 
       (.CI(\spi_mmio_cont_rd_req_cnt_reg[20]_i_2_n_0 ),
        .CO({\spi_mmio_cont_rd_req_cnt_reg[24]_i_2_n_0 ,\spi_mmio_cont_rd_req_cnt_reg[24]_i_2_n_1 ,\spi_mmio_cont_rd_req_cnt_reg[24]_i_2_n_2 ,\spi_mmio_cont_rd_req_cnt_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(spi_mmio_cont_rd_req_cnt0[24:21]),
        .S(spi_mmio_cont_rd_req_cnt__0[24:21]));
  FDRE \spi_mmio_cont_rd_req_cnt_reg[25] 
       (.C(aclk),
        .CE(\spi_mmio_cont_rd_req_cnt[31]_i_1_n_0 ),
        .D(\spi_mmio_cont_rd_req_cnt[25]_i_1_n_0 ),
        .Q(spi_mmio_cont_rd_req_cnt__0[25]),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cont_rd_req_cnt_reg[26] 
       (.C(aclk),
        .CE(\spi_mmio_cont_rd_req_cnt[31]_i_1_n_0 ),
        .D(\spi_mmio_cont_rd_req_cnt[26]_i_1_n_0 ),
        .Q(spi_mmio_cont_rd_req_cnt__0[26]),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cont_rd_req_cnt_reg[27] 
       (.C(aclk),
        .CE(\spi_mmio_cont_rd_req_cnt[31]_i_1_n_0 ),
        .D(\spi_mmio_cont_rd_req_cnt[27]_i_1_n_0 ),
        .Q(spi_mmio_cont_rd_req_cnt__0[27]),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cont_rd_req_cnt_reg[28] 
       (.C(aclk),
        .CE(\spi_mmio_cont_rd_req_cnt[31]_i_1_n_0 ),
        .D(\spi_mmio_cont_rd_req_cnt[28]_i_1_n_0 ),
        .Q(spi_mmio_cont_rd_req_cnt__0[28]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \spi_mmio_cont_rd_req_cnt_reg[28]_i_2 
       (.CI(\spi_mmio_cont_rd_req_cnt_reg[24]_i_2_n_0 ),
        .CO({\spi_mmio_cont_rd_req_cnt_reg[28]_i_2_n_0 ,\spi_mmio_cont_rd_req_cnt_reg[28]_i_2_n_1 ,\spi_mmio_cont_rd_req_cnt_reg[28]_i_2_n_2 ,\spi_mmio_cont_rd_req_cnt_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(spi_mmio_cont_rd_req_cnt0[28:25]),
        .S(spi_mmio_cont_rd_req_cnt__0[28:25]));
  FDRE \spi_mmio_cont_rd_req_cnt_reg[29] 
       (.C(aclk),
        .CE(\spi_mmio_cont_rd_req_cnt[31]_i_1_n_0 ),
        .D(\spi_mmio_cont_rd_req_cnt[29]_i_1_n_0 ),
        .Q(spi_mmio_cont_rd_req_cnt__0[29]),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cont_rd_req_cnt_reg[2] 
       (.C(aclk),
        .CE(\spi_mmio_cont_rd_req_cnt[31]_i_1_n_0 ),
        .D(\spi_mmio_cont_rd_req_cnt[2]_i_1_n_0 ),
        .Q(spi_mmio_cont_rd_req_cnt__0[2]),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cont_rd_req_cnt_reg[30] 
       (.C(aclk),
        .CE(\spi_mmio_cont_rd_req_cnt[31]_i_1_n_0 ),
        .D(\spi_mmio_cont_rd_req_cnt[30]_i_1_n_0 ),
        .Q(spi_mmio_cont_rd_req_cnt__0[30]),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cont_rd_req_cnt_reg[31] 
       (.C(aclk),
        .CE(\spi_mmio_cont_rd_req_cnt[31]_i_1_n_0 ),
        .D(\spi_mmio_cont_rd_req_cnt[31]_i_2_n_0 ),
        .Q(spi_mmio_cont_rd_req_cnt__0[31]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \spi_mmio_cont_rd_req_cnt_reg[31]_i_3 
       (.CI(\spi_mmio_cont_rd_req_cnt_reg[28]_i_2_n_0 ),
        .CO({\NLW_spi_mmio_cont_rd_req_cnt_reg[31]_i_3_CO_UNCONNECTED [3:2],\spi_mmio_cont_rd_req_cnt_reg[31]_i_3_n_2 ,\spi_mmio_cont_rd_req_cnt_reg[31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_spi_mmio_cont_rd_req_cnt_reg[31]_i_3_O_UNCONNECTED [3],spi_mmio_cont_rd_req_cnt0[31:29]}),
        .S({1'b0,spi_mmio_cont_rd_req_cnt__0[31:29]}));
  FDRE \spi_mmio_cont_rd_req_cnt_reg[3] 
       (.C(aclk),
        .CE(\spi_mmio_cont_rd_req_cnt[31]_i_1_n_0 ),
        .D(\spi_mmio_cont_rd_req_cnt[3]_i_1_n_0 ),
        .Q(spi_mmio_cont_rd_req_cnt__0[3]),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cont_rd_req_cnt_reg[4] 
       (.C(aclk),
        .CE(\spi_mmio_cont_rd_req_cnt[31]_i_1_n_0 ),
        .D(\spi_mmio_cont_rd_req_cnt[4]_i_1_n_0 ),
        .Q(spi_mmio_cont_rd_req_cnt__0[4]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \spi_mmio_cont_rd_req_cnt_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\spi_mmio_cont_rd_req_cnt_reg[4]_i_2_n_0 ,\spi_mmio_cont_rd_req_cnt_reg[4]_i_2_n_1 ,\spi_mmio_cont_rd_req_cnt_reg[4]_i_2_n_2 ,\spi_mmio_cont_rd_req_cnt_reg[4]_i_2_n_3 }),
        .CYINIT(spi_mmio_cont_rd_req_cnt__0[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(spi_mmio_cont_rd_req_cnt0[4:1]),
        .S(spi_mmio_cont_rd_req_cnt__0[4:1]));
  FDRE \spi_mmio_cont_rd_req_cnt_reg[5] 
       (.C(aclk),
        .CE(\spi_mmio_cont_rd_req_cnt[31]_i_1_n_0 ),
        .D(\spi_mmio_cont_rd_req_cnt[5]_i_1_n_0 ),
        .Q(spi_mmio_cont_rd_req_cnt__0[5]),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cont_rd_req_cnt_reg[6] 
       (.C(aclk),
        .CE(\spi_mmio_cont_rd_req_cnt[31]_i_1_n_0 ),
        .D(\spi_mmio_cont_rd_req_cnt[6]_i_1_n_0 ),
        .Q(spi_mmio_cont_rd_req_cnt__0[6]),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cont_rd_req_cnt_reg[7] 
       (.C(aclk),
        .CE(\spi_mmio_cont_rd_req_cnt[31]_i_1_n_0 ),
        .D(\spi_mmio_cont_rd_req_cnt[7]_i_1_n_0 ),
        .Q(spi_mmio_cont_rd_req_cnt__0[7]),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cont_rd_req_cnt_reg[8] 
       (.C(aclk),
        .CE(\spi_mmio_cont_rd_req_cnt[31]_i_1_n_0 ),
        .D(\spi_mmio_cont_rd_req_cnt[8]_i_1_n_0 ),
        .Q(spi_mmio_cont_rd_req_cnt__0[8]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \spi_mmio_cont_rd_req_cnt_reg[8]_i_2 
       (.CI(\spi_mmio_cont_rd_req_cnt_reg[4]_i_2_n_0 ),
        .CO({\spi_mmio_cont_rd_req_cnt_reg[8]_i_2_n_0 ,\spi_mmio_cont_rd_req_cnt_reg[8]_i_2_n_1 ,\spi_mmio_cont_rd_req_cnt_reg[8]_i_2_n_2 ,\spi_mmio_cont_rd_req_cnt_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(spi_mmio_cont_rd_req_cnt0[8:5]),
        .S(spi_mmio_cont_rd_req_cnt__0[8:5]));
  FDRE \spi_mmio_cont_rd_req_cnt_reg[9] 
       (.C(aclk),
        .CE(\spi_mmio_cont_rd_req_cnt[31]_i_1_n_0 ),
        .D(\spi_mmio_cont_rd_req_cnt[9]_i_1_n_0 ),
        .Q(spi_mmio_cont_rd_req_cnt__0[9]),
        .R(s_axi_lite_awready_i_1_n_0));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    spi_mmio_cont_read_en_i_1
       (.I0(s_axi_lite_wdata[23]),
        .I1(s_axi_lite_wstrb[3]),
        .I2(\spi_mmio_cs_high_wait[7]_i_2_n_0 ),
        .I3(\spi_mmio_rd_instr[7]_i_2_n_0 ),
        .I4(spi_mmio_cont_read_en_reg_n_0),
        .O(spi_mmio_cont_read_en_i_1_n_0));
  FDRE spi_mmio_cont_read_en_reg
       (.C(aclk),
        .CE(1'b1),
        .D(spi_mmio_cont_read_en_i_1_n_0),
        .Q(spi_mmio_cont_read_en_reg_n_0),
        .R(s_axi_lite_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hAAC0FFFFAA000000)) 
    spi_mmio_cont_read_ready_i_1
       (.I0(spi_mmio_cont_read_en_reg_n_0),
        .I1(spi_en_reg_n_0),
        .I2(spi_mmio_en_req_reg_n_0),
        .I3(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I4(spi_mmio_cont_read_ready_i_2_n_0),
        .I5(spi_mmio_cont_read_ready),
        .O(spi_mmio_cont_read_ready_i_1_n_0));
  LUT6 #(
    .INIT(64'h000000100000000F)) 
    spi_mmio_cont_read_ready_i_2
       (.I0(spi_rd_req_reg_n_0),
        .I1(spi_sr_out_buf_valid),
        .I2(\spi_mmio_fsm_state_reg_n_0_[2] ),
        .I3(\spi_mmio_fsm_state_reg_n_0_[3] ),
        .I4(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I5(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .O(spi_mmio_cont_read_ready_i_2_n_0));
  FDRE spi_mmio_cont_read_ready_reg
       (.C(aclk),
        .CE(1'b1),
        .D(spi_mmio_cont_read_ready_i_1_n_0),
        .Q(spi_mmio_cont_read_ready),
        .R(s_axi_lite_awready_i_1_n_0));
  LUT5 #(
    .INIT(32'h40000000)) 
    \spi_mmio_cs_high_wait[7]_i_1 
       (.I0(s_axi_lite_awaddr[0]),
        .I1(s_axi_lite_awaddr[3]),
        .I2(s_axi_lite_awaddr[1]),
        .I3(\spi_mmio_cs_high_wait[7]_i_2_n_0 ),
        .I4(s_axi_lite_wstrb[2]),
        .O(spi_mmio_cs_high_wait));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \spi_mmio_cs_high_wait[7]_i_2 
       (.I0(s_axi_lite_awaddr[2]),
        .I1(spi_mmio_en),
        .I2(s_axi_lite_awready),
        .O(\spi_mmio_cs_high_wait[7]_i_2_n_0 ));
  FDRE \spi_mmio_cs_high_wait_reg[0] 
       (.C(aclk),
        .CE(spi_mmio_cs_high_wait),
        .D(s_axi_lite_wdata[14]),
        .Q(\spi_mmio_cs_high_wait_reg_n_0_[0] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cs_high_wait_reg[1] 
       (.C(aclk),
        .CE(spi_mmio_cs_high_wait),
        .D(s_axi_lite_wdata[15]),
        .Q(\spi_mmio_cs_high_wait_reg_n_0_[1] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cs_high_wait_reg[2] 
       (.C(aclk),
        .CE(spi_mmio_cs_high_wait),
        .D(s_axi_lite_wdata[16]),
        .Q(\spi_mmio_cs_high_wait_reg_n_0_[2] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cs_high_wait_reg[3] 
       (.C(aclk),
        .CE(spi_mmio_cs_high_wait),
        .D(s_axi_lite_wdata[17]),
        .Q(\spi_mmio_cs_high_wait_reg_n_0_[3] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cs_high_wait_reg[4] 
       (.C(aclk),
        .CE(spi_mmio_cs_high_wait),
        .D(s_axi_lite_wdata[18]),
        .Q(\spi_mmio_cs_high_wait_reg_n_0_[4] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cs_high_wait_reg[5] 
       (.C(aclk),
        .CE(spi_mmio_cs_high_wait),
        .D(s_axi_lite_wdata[19]),
        .Q(\spi_mmio_cs_high_wait_reg_n_0_[5] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cs_high_wait_reg[6] 
       (.C(aclk),
        .CE(spi_mmio_cs_high_wait),
        .D(s_axi_lite_wdata[20]),
        .Q(\spi_mmio_cs_high_wait_reg_n_0_[6] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cs_high_wait_reg[7] 
       (.C(aclk),
        .CE(spi_mmio_cs_high_wait),
        .D(s_axi_lite_wdata[21]),
        .Q(\spi_mmio_cs_high_wait_reg_n_0_[7] ),
        .R(s_axi_lite_awready_i_1_n_0));
  LUT5 #(
    .INIT(32'h40000000)) 
    \spi_mmio_cs_low_wait[7]_i_1 
       (.I0(s_axi_lite_awaddr[0]),
        .I1(s_axi_lite_awaddr[3]),
        .I2(s_axi_lite_awaddr[1]),
        .I3(\spi_mmio_cs_high_wait[7]_i_2_n_0 ),
        .I4(s_axi_lite_wstrb[3]),
        .O(spi_mmio_cs_low_wait));
  FDRE \spi_mmio_cs_low_wait_reg[0] 
       (.C(aclk),
        .CE(spi_mmio_cs_low_wait),
        .D(s_axi_lite_wdata[22]),
        .Q(\spi_mmio_cs_low_wait_reg_n_0_[0] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cs_low_wait_reg[1] 
       (.C(aclk),
        .CE(spi_mmio_cs_low_wait),
        .D(s_axi_lite_wdata[23]),
        .Q(\spi_mmio_cs_low_wait_reg_n_0_[1] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cs_low_wait_reg[2] 
       (.C(aclk),
        .CE(spi_mmio_cs_low_wait),
        .D(s_axi_lite_wdata[24]),
        .Q(\spi_mmio_cs_low_wait_reg_n_0_[2] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cs_low_wait_reg[3] 
       (.C(aclk),
        .CE(spi_mmio_cs_low_wait),
        .D(s_axi_lite_wdata[25]),
        .Q(\spi_mmio_cs_low_wait_reg_n_0_[3] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cs_low_wait_reg[4] 
       (.C(aclk),
        .CE(spi_mmio_cs_low_wait),
        .D(s_axi_lite_wdata[26]),
        .Q(\spi_mmio_cs_low_wait_reg_n_0_[4] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cs_low_wait_reg[5] 
       (.C(aclk),
        .CE(spi_mmio_cs_low_wait),
        .D(s_axi_lite_wdata[27]),
        .Q(\spi_mmio_cs_low_wait_reg_n_0_[5] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cs_low_wait_reg[6] 
       (.C(aclk),
        .CE(spi_mmio_cs_low_wait),
        .D(s_axi_lite_wdata[28]),
        .Q(\spi_mmio_cs_low_wait_reg_n_0_[6] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cs_low_wait_reg[7] 
       (.C(aclk),
        .CE(spi_mmio_cs_low_wait),
        .D(s_axi_lite_wdata[29]),
        .Q(\spi_mmio_cs_low_wait_reg_n_0_[7] ),
        .R(s_axi_lite_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \spi_mmio_cs_mask[0]_i_1 
       (.I0(s_axi_lite_wdata[0]),
        .I1(\spi_mmio_cs_mask[0]_i_2_n_0 ),
        .I2(spi_mmio_en),
        .I3(s_axi_lite_wstrb[0]),
        .I4(s_axi_lite_awready),
        .I5(\spi_mmio_cs_mask_reg_n_0_[0] ),
        .O(\spi_mmio_cs_mask[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \spi_mmio_cs_mask[0]_i_2 
       (.I0(s_axi_lite_awaddr[1]),
        .I1(s_axi_lite_awaddr[2]),
        .I2(s_axi_lite_awaddr[0]),
        .I3(s_axi_lite_awaddr[3]),
        .O(\spi_mmio_cs_mask[0]_i_2_n_0 ));
  FDRE \spi_mmio_cs_mask_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\spi_mmio_cs_mask[0]_i_1_n_0 ),
        .Q(\spi_mmio_cs_mask_reg_n_0_[0] ),
        .R(s_axi_lite_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h082A5D7F)) 
    \spi_mmio_cs_wait_rem[0]_i_1 
       (.I0(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I1(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I2(\spi_mmio_cs_low_wait_reg_n_0_[0] ),
        .I3(data10[0]),
        .I4(\spi_mmio_cs_high_wait_reg_n_0_[0] ),
        .O(spi_mmio_cs_wait_rem1_in[0]));
  LUT6 #(
    .INIT(64'hF0CCAAAA0F335555)) 
    \spi_mmio_cs_wait_rem[1]_i_1 
       (.I0(\spi_mmio_cs_high_wait_reg_n_0_[1] ),
        .I1(data10[1]),
        .I2(\spi_mmio_cs_low_wait_reg_n_0_[1] ),
        .I3(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I4(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I5(p_0_out[0]),
        .O(spi_mmio_cs_wait_rem1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \spi_mmio_cs_wait_rem[1]_i_2 
       (.I0(\spi_mmio_cs_high_wait_reg_n_0_[0] ),
        .I1(data10[0]),
        .I2(\spi_mmio_cs_low_wait_reg_n_0_[0] ),
        .I3(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I4(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .O(p_0_out[0]));
  LUT6 #(
    .INIT(64'hF0CCAAAA0F335555)) 
    \spi_mmio_cs_wait_rem[2]_i_1 
       (.I0(\spi_mmio_cs_high_wait_reg_n_0_[2] ),
        .I1(data10[2]),
        .I2(\spi_mmio_cs_low_wait_reg_n_0_[2] ),
        .I3(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I4(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I5(\spi_mmio_cs_wait_rem[2]_i_2_n_0 ),
        .O(spi_mmio_cs_wait_rem1_in[2]));
  LUT6 #(
    .INIT(64'hFFBFFBBBEEAEEAAA)) 
    \spi_mmio_cs_wait_rem[2]_i_2 
       (.I0(p_0_out[0]),
        .I1(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I2(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I3(\spi_mmio_cs_low_wait_reg_n_0_[1] ),
        .I4(data10[1]),
        .I5(\spi_mmio_cs_high_wait_reg_n_0_[1] ),
        .O(\spi_mmio_cs_wait_rem[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0CCAAAA0F335555)) 
    \spi_mmio_cs_wait_rem[3]_i_1 
       (.I0(\spi_mmio_cs_high_wait_reg_n_0_[3] ),
        .I1(data10[3]),
        .I2(\spi_mmio_cs_low_wait_reg_n_0_[3] ),
        .I3(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I4(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I5(\spi_mmio_cs_wait_rem[3]_i_2_n_0 ),
        .O(spi_mmio_cs_wait_rem1_in[3]));
  LUT6 #(
    .INIT(64'hFFBFFBBBEEAEEAAA)) 
    \spi_mmio_cs_wait_rem[3]_i_2 
       (.I0(\spi_mmio_cs_wait_rem[2]_i_2_n_0 ),
        .I1(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I2(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I3(\spi_mmio_cs_low_wait_reg_n_0_[2] ),
        .I4(data10[2]),
        .I5(\spi_mmio_cs_high_wait_reg_n_0_[2] ),
        .O(\spi_mmio_cs_wait_rem[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAA6AA66699599555)) 
    \spi_mmio_cs_wait_rem[4]_i_1 
       (.I0(\spi_mmio_cs_wait_rem[4]_i_2_n_0 ),
        .I1(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I2(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I3(\spi_mmio_cs_low_wait_reg_n_0_[4] ),
        .I4(data10[4]),
        .I5(\spi_mmio_cs_high_wait_reg_n_0_[4] ),
        .O(spi_mmio_cs_wait_rem1_in[4]));
  LUT3 #(
    .INIT(8'hFE)) 
    \spi_mmio_cs_wait_rem[4]_i_2 
       (.I0(p_0_out[2]),
        .I1(\spi_mmio_cs_wait_rem[2]_i_2_n_0 ),
        .I2(p_0_out[3]),
        .O(\spi_mmio_cs_wait_rem[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0CCAAAA0F335555)) 
    \spi_mmio_cs_wait_rem[5]_i_1 
       (.I0(\spi_mmio_cs_high_wait_reg_n_0_[5] ),
        .I1(data10[5]),
        .I2(\spi_mmio_cs_low_wait_reg_n_0_[5] ),
        .I3(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I4(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I5(\spi_mmio_cs_wait_rem[5]_i_2_n_0 ),
        .O(spi_mmio_cs_wait_rem1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \spi_mmio_cs_wait_rem[5]_i_2 
       (.I0(p_0_out[3]),
        .I1(\spi_mmio_cs_wait_rem[2]_i_2_n_0 ),
        .I2(p_0_out[2]),
        .I3(p_0_out[4]),
        .O(\spi_mmio_cs_wait_rem[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0CCAAAA0F335555)) 
    \spi_mmio_cs_wait_rem[6]_i_1 
       (.I0(\spi_mmio_cs_high_wait_reg_n_0_[6] ),
        .I1(data10[6]),
        .I2(\spi_mmio_cs_low_wait_reg_n_0_[6] ),
        .I3(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I4(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I5(\spi_mmio_cs_wait_rem[7]_i_10_n_0 ),
        .O(spi_mmio_cs_wait_rem1_in[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFF88888F88)) 
    \spi_mmio_cs_wait_rem[7]_i_1 
       (.I0(\spi_mmio_cs_wait_rem[7]_i_3_n_0 ),
        .I1(\spi_mmio_cs_wait_rem[7]_i_4_n_0 ),
        .I2(\spi_mmio_cs_wait_rem[7]_i_5_n_0 ),
        .I3(\spi_mmio_cs_wait_rem[7]_i_6_n_0 ),
        .I4(\spi_mmio_cs_wait_rem[7]_i_7_n_0 ),
        .I5(\spi_mmio_cs_wait_rem[7]_i_8_n_0 ),
        .O(spi_mmio_cs_wait_rem));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \spi_mmio_cs_wait_rem[7]_i_10 
       (.I0(p_0_out[4]),
        .I1(p_0_out[2]),
        .I2(\spi_mmio_cs_wait_rem[2]_i_2_n_0 ),
        .I3(p_0_out[3]),
        .I4(p_0_out[5]),
        .O(\spi_mmio_cs_wait_rem[7]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \spi_mmio_cs_wait_rem[7]_i_11 
       (.I0(\spi_mmio_cs_high_wait_reg_n_0_[7] ),
        .I1(data10[7]),
        .I2(\spi_mmio_cs_low_wait_reg_n_0_[7] ),
        .I3(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I4(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .O(p_0_out[7]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \spi_mmio_cs_wait_rem[7]_i_12 
       (.I0(data10[3]),
        .I1(data10[2]),
        .I2(data10[1]),
        .I3(data10[0]),
        .O(\spi_mmio_cs_wait_rem[7]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \spi_mmio_cs_wait_rem[7]_i_13 
       (.I0(\spi_mmio_cs_high_wait_reg_n_0_[1] ),
        .I1(\spi_mmio_cs_high_wait_reg_n_0_[0] ),
        .I2(\spi_mmio_cs_high_wait_reg_n_0_[3] ),
        .I3(\spi_mmio_cs_high_wait_reg_n_0_[2] ),
        .O(\spi_mmio_cs_wait_rem[7]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \spi_mmio_cs_wait_rem[7]_i_14 
       (.I0(\spi_mmio_cs_low_wait_reg_n_0_[4] ),
        .I1(\spi_mmio_cs_low_wait_reg_n_0_[5] ),
        .I2(\spi_mmio_cs_low_wait_reg_n_0_[6] ),
        .I3(\spi_mmio_cs_low_wait_reg_n_0_[7] ),
        .I4(\spi_mmio_cs_wait_rem[7]_i_19_n_0 ),
        .O(\spi_mmio_cs_wait_rem[7]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \spi_mmio_cs_wait_rem[7]_i_15 
       (.I0(\spi_mmio_cs_high_wait_reg_n_0_[4] ),
        .I1(data10[4]),
        .I2(\spi_mmio_cs_low_wait_reg_n_0_[4] ),
        .I3(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I4(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .O(p_0_out[4]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \spi_mmio_cs_wait_rem[7]_i_16 
       (.I0(\spi_mmio_cs_high_wait_reg_n_0_[2] ),
        .I1(data10[2]),
        .I2(\spi_mmio_cs_low_wait_reg_n_0_[2] ),
        .I3(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I4(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .O(p_0_out[2]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \spi_mmio_cs_wait_rem[7]_i_17 
       (.I0(\spi_mmio_cs_high_wait_reg_n_0_[3] ),
        .I1(data10[3]),
        .I2(\spi_mmio_cs_low_wait_reg_n_0_[3] ),
        .I3(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I4(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .O(p_0_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \spi_mmio_cs_wait_rem[7]_i_18 
       (.I0(\spi_mmio_cs_high_wait_reg_n_0_[5] ),
        .I1(data10[5]),
        .I2(\spi_mmio_cs_low_wait_reg_n_0_[5] ),
        .I3(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I4(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .O(p_0_out[5]));
  LUT4 #(
    .INIT(16'h0001)) 
    \spi_mmio_cs_wait_rem[7]_i_19 
       (.I0(\spi_mmio_cs_low_wait_reg_n_0_[1] ),
        .I1(\spi_mmio_cs_low_wait_reg_n_0_[0] ),
        .I2(\spi_mmio_cs_low_wait_reg_n_0_[3] ),
        .I3(\spi_mmio_cs_low_wait_reg_n_0_[2] ),
        .O(\spi_mmio_cs_wait_rem[7]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \spi_mmio_cs_wait_rem[7]_i_2 
       (.I0(p_0_out[6]),
        .I1(\spi_mmio_cs_wait_rem[7]_i_10_n_0 ),
        .I2(p_0_out[7]),
        .O(spi_mmio_cs_wait_rem1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \spi_mmio_cs_wait_rem[7]_i_3 
       (.I0(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I1(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I2(\spi_mmio_fsm_state_reg_n_0_[3] ),
        .I3(\spi_mmio_fsm_state_reg_n_0_[2] ),
        .O(\spi_mmio_cs_wait_rem[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \spi_mmio_cs_wait_rem[7]_i_4 
       (.I0(data10[4]),
        .I1(data10[5]),
        .I2(data10[6]),
        .I3(data10[7]),
        .I4(\spi_mmio_cs_wait_rem[7]_i_12_n_0 ),
        .O(\spi_mmio_cs_wait_rem[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \spi_mmio_cs_wait_rem[7]_i_5 
       (.I0(\spi_mmio_fsm_state_reg_n_0_[3] ),
        .I1(\spi_mmio_fsm_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_spi_fsm_state_reg_n_0_[0] ),
        .O(\spi_mmio_cs_wait_rem[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \spi_mmio_cs_wait_rem[7]_i_6 
       (.I0(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I1(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .O(\spi_mmio_cs_wait_rem[7]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \spi_mmio_cs_wait_rem[7]_i_7 
       (.I0(\spi_mmio_cs_high_wait_reg_n_0_[4] ),
        .I1(\spi_mmio_cs_high_wait_reg_n_0_[5] ),
        .I2(\spi_mmio_cs_high_wait_reg_n_0_[6] ),
        .I3(\spi_mmio_cs_high_wait_reg_n_0_[7] ),
        .I4(\spi_mmio_cs_wait_rem[7]_i_13_n_0 ),
        .O(\spi_mmio_cs_wait_rem[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    \spi_mmio_cs_wait_rem[7]_i_8 
       (.I0(\spi_mmio_fsm_state_reg_n_0_[3] ),
        .I1(\spi_mmio_fsm_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_spi_fsm_state_reg_n_0_[0] ),
        .I3(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I4(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I5(\spi_mmio_cs_wait_rem[7]_i_14_n_0 ),
        .O(\spi_mmio_cs_wait_rem[7]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \spi_mmio_cs_wait_rem[7]_i_9 
       (.I0(\spi_mmio_cs_high_wait_reg_n_0_[6] ),
        .I1(data10[6]),
        .I2(\spi_mmio_cs_low_wait_reg_n_0_[6] ),
        .I3(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I4(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .O(p_0_out[6]));
  FDRE \spi_mmio_cs_wait_rem_reg[0] 
       (.C(aclk),
        .CE(spi_mmio_cs_wait_rem),
        .D(spi_mmio_cs_wait_rem1_in[0]),
        .Q(data10[0]),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cs_wait_rem_reg[1] 
       (.C(aclk),
        .CE(spi_mmio_cs_wait_rem),
        .D(spi_mmio_cs_wait_rem1_in[1]),
        .Q(data10[1]),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cs_wait_rem_reg[2] 
       (.C(aclk),
        .CE(spi_mmio_cs_wait_rem),
        .D(spi_mmio_cs_wait_rem1_in[2]),
        .Q(data10[2]),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cs_wait_rem_reg[3] 
       (.C(aclk),
        .CE(spi_mmio_cs_wait_rem),
        .D(spi_mmio_cs_wait_rem1_in[3]),
        .Q(data10[3]),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cs_wait_rem_reg[4] 
       (.C(aclk),
        .CE(spi_mmio_cs_wait_rem),
        .D(spi_mmio_cs_wait_rem1_in[4]),
        .Q(data10[4]),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cs_wait_rem_reg[5] 
       (.C(aclk),
        .CE(spi_mmio_cs_wait_rem),
        .D(spi_mmio_cs_wait_rem1_in[5]),
        .Q(data10[5]),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cs_wait_rem_reg[6] 
       (.C(aclk),
        .CE(spi_mmio_cs_wait_rem),
        .D(spi_mmio_cs_wait_rem1_in[6]),
        .Q(data10[6]),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cs_wait_rem_reg[7] 
       (.C(aclk),
        .CE(spi_mmio_cs_wait_rem),
        .D(spi_mmio_cs_wait_rem1_in[7]),
        .Q(data10[7]),
        .R(s_axi_lite_awready_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFD70200)) 
    \spi_mmio_data_io_mode[0]_i_1 
       (.I0(\spi_mmio_dummy_io_mode[2]_i_2_n_0 ),
        .I1(s_axi_lite_wdata[13]),
        .I2(s_axi_lite_wdata[12]),
        .I3(s_axi_lite_wdata[11]),
        .I4(\spi_mmio_data_io_mode_reg_n_0_[0] ),
        .O(\spi_mmio_data_io_mode[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFDF70020)) 
    \spi_mmio_data_io_mode[1]_i_1 
       (.I0(\spi_mmio_dummy_io_mode[2]_i_2_n_0 ),
        .I1(s_axi_lite_wdata[13]),
        .I2(s_axi_lite_wdata[12]),
        .I3(s_axi_lite_wdata[11]),
        .I4(\spi_mmio_data_io_mode_reg_n_0_[1] ),
        .O(\spi_mmio_data_io_mode[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFDDF0008)) 
    \spi_mmio_data_io_mode[2]_i_1 
       (.I0(\spi_mmio_dummy_io_mode[2]_i_2_n_0 ),
        .I1(s_axi_lite_wdata[13]),
        .I2(s_axi_lite_wdata[12]),
        .I3(s_axi_lite_wdata[11]),
        .I4(\spi_mmio_data_io_mode_reg_n_0_[2] ),
        .O(\spi_mmio_data_io_mode[2]_i_1_n_0 ));
  FDSE \spi_mmio_data_io_mode_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\spi_mmio_data_io_mode[0]_i_1_n_0 ),
        .Q(\spi_mmio_data_io_mode_reg_n_0_[0] ),
        .S(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_data_io_mode_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\spi_mmio_data_io_mode[1]_i_1_n_0 ),
        .Q(\spi_mmio_data_io_mode_reg_n_0_[1] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_data_io_mode_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\spi_mmio_data_io_mode[2]_i_1_n_0 ),
        .Q(\spi_mmio_data_io_mode_reg_n_0_[2] ),
        .R(s_axi_lite_awready_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFD70200)) 
    \spi_mmio_dummy_io_mode[0]_i_1 
       (.I0(\spi_mmio_dummy_io_mode[2]_i_2_n_0 ),
        .I1(s_axi_lite_wdata[10]),
        .I2(s_axi_lite_wdata[9]),
        .I3(s_axi_lite_wdata[8]),
        .I4(\spi_mmio_dummy_io_mode_reg_n_0_[0] ),
        .O(\spi_mmio_dummy_io_mode[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFDF70020)) 
    \spi_mmio_dummy_io_mode[1]_i_1 
       (.I0(\spi_mmio_dummy_io_mode[2]_i_2_n_0 ),
        .I1(s_axi_lite_wdata[10]),
        .I2(s_axi_lite_wdata[9]),
        .I3(s_axi_lite_wdata[8]),
        .I4(\spi_mmio_dummy_io_mode_reg_n_0_[1] ),
        .O(\spi_mmio_dummy_io_mode[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFDDF0008)) 
    \spi_mmio_dummy_io_mode[2]_i_1 
       (.I0(\spi_mmio_dummy_io_mode[2]_i_2_n_0 ),
        .I1(s_axi_lite_wdata[10]),
        .I2(s_axi_lite_wdata[9]),
        .I3(s_axi_lite_wdata[8]),
        .I4(\spi_mmio_dummy_io_mode_reg_n_0_[2] ),
        .O(\spi_mmio_dummy_io_mode[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \spi_mmio_dummy_io_mode[2]_i_2 
       (.I0(s_axi_lite_awaddr[0]),
        .I1(s_axi_lite_awaddr[3]),
        .I2(s_axi_lite_awaddr[1]),
        .I3(\spi_mmio_cs_high_wait[7]_i_2_n_0 ),
        .I4(s_axi_lite_wstrb[1]),
        .O(\spi_mmio_dummy_io_mode[2]_i_2_n_0 ));
  FDSE \spi_mmio_dummy_io_mode_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\spi_mmio_dummy_io_mode[0]_i_1_n_0 ),
        .Q(\spi_mmio_dummy_io_mode_reg_n_0_[0] ),
        .S(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_dummy_io_mode_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\spi_mmio_dummy_io_mode[1]_i_1_n_0 ),
        .Q(\spi_mmio_dummy_io_mode_reg_n_0_[1] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_dummy_io_mode_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\spi_mmio_dummy_io_mode[2]_i_1_n_0 ),
        .Q(\spi_mmio_dummy_io_mode_reg_n_0_[2] ),
        .R(s_axi_lite_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h22223FFFEEEEC000)) 
    \spi_mmio_dummy_rem[0]_i_1 
       (.I0(\spi_mmio_dummy_size_reg_n_0_[0] ),
        .I1(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I2(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I3(\spi_mmio_addr_rem[0]_i_2_n_0 ),
        .I4(\spi_mmio_fsm_state[1]_i_5_n_0 ),
        .I5(spi_mmio_dummy_rem[0]),
        .O(\spi_mmio_dummy_rem[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hE2FF2E00)) 
    \spi_mmio_dummy_rem[1]_i_1 
       (.I0(\spi_mmio_dummy_size_reg_n_0_[1] ),
        .I1(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I2(spi_mmio_dummy_rem[0]),
        .I3(\spi_mmio_dummy_rem[1]_i_2_n_0 ),
        .I4(spi_mmio_dummy_rem[1]),
        .O(\spi_mmio_dummy_rem[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000200)) 
    \spi_mmio_dummy_rem[1]_i_2 
       (.I0(\spi_mmio_dummy_rem[1]_i_3_n_0 ),
        .I1(spi_rd_req_reg_n_0),
        .I2(spi_sr_out_buf_valid),
        .I3(\spi_mmio_fsm_state_reg_n_0_[2] ),
        .I4(\spi_mmio_fsm_state_reg_n_0_[3] ),
        .I5(\spi_mmio_fsm_state[1]_i_5_n_0 ),
        .O(\spi_mmio_dummy_rem[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \spi_mmio_dummy_rem[1]_i_3 
       (.I0(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I1(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .O(\spi_mmio_dummy_rem[1]_i_3_n_0 ));
  FDRE \spi_mmio_dummy_rem_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\spi_mmio_dummy_rem[0]_i_1_n_0 ),
        .Q(spi_mmio_dummy_rem[0]),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_dummy_rem_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\spi_mmio_dummy_rem[1]_i_1_n_0 ),
        .Q(spi_mmio_dummy_rem[1]),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_dummy_size_reg[0] 
       (.C(aclk),
        .CE(spi_mmio_addr_size),
        .D(s_axi_lite_wdata[11]),
        .Q(\spi_mmio_dummy_size_reg_n_0_[0] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_dummy_size_reg[1] 
       (.C(aclk),
        .CE(spi_mmio_addr_size),
        .D(s_axi_lite_wdata[12]),
        .Q(\spi_mmio_dummy_size_reg_n_0_[1] ),
        .R(s_axi_lite_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h8F80)) 
    spi_mmio_en_i_1
       (.I0(spi_en_reg_n_0),
        .I1(spi_mmio_en_req_reg_n_0),
        .I2(s_axi_full_arready_i_3_n_0),
        .I3(spi_mmio_en),
        .O(spi_mmio_en_i_1_n_0));
  FDRE spi_mmio_en_reg
       (.C(aclk),
        .CE(1'b1),
        .D(spi_mmio_en_i_1_n_0),
        .Q(spi_mmio_en),
        .R(s_axi_lite_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    spi_mmio_en_req_i_1
       (.I0(s_axi_lite_wdata[11]),
        .I1(s_axi_lite_awaddr[2]),
        .I2(s_axi_lite_wstrb[1]),
        .I3(s_axi_lite_awready),
        .I4(spi_lsb_first_i_2_n_0),
        .I5(spi_mmio_en_req_reg_n_0),
        .O(spi_mmio_en_req_i_1_n_0));
  FDRE spi_mmio_en_req_reg
       (.C(aclk),
        .CE(1'b1),
        .D(spi_mmio_en_req_i_1_n_0),
        .Q(spi_mmio_en_req_reg_n_0),
        .R(s_axi_lite_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEA)) 
    \spi_mmio_fsm_state[0]_i_1 
       (.I0(\spi_mmio_fsm_state[0]_i_2_n_0 ),
        .I1(\spi_mmio_fsm_state[0]_i_3_n_0 ),
        .I2(\spi_mmio_fsm_state[0]_i_4_n_0 ),
        .I3(\spi_mmio_fsm_state[0]_i_5_n_0 ),
        .I4(\spi_mmio_fsm_state[0]_i_6_n_0 ),
        .I5(\spi_mmio_fsm_state[0]_i_7_n_0 ),
        .O(\spi_mmio_fsm_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \spi_mmio_fsm_state[0]_i_10 
       (.I0(\spi_mmio_fsm_state_reg_n_0_[3] ),
        .I1(\spi_mmio_fsm_state_reg_n_0_[2] ),
        .O(\spi_mmio_fsm_state[0]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \spi_mmio_fsm_state[0]_i_2 
       (.I0(s_axi_full_rvalid_reg_0),
        .I1(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I2(\spi_mmio_fsm_state_reg_n_0_[2] ),
        .I3(\spi_mmio_fsm_state_reg_n_0_[3] ),
        .O(\spi_mmio_fsm_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hD5FFFFFFFFFFFFFF)) 
    \spi_mmio_fsm_state[0]_i_3 
       (.I0(\spi_mmio_fsm_state_next_reg[3]_i_5_n_0 ),
        .I1(\spi_ss_o_reg[0]_0 ),
        .I2(\spi_mmio_cs_mask_reg_n_0_[0] ),
        .I3(spi_io_mode154_out),
        .I4(s_axi_full_arready_reg_0),
        .I5(s_axi_full_arvalid),
        .O(\spi_mmio_fsm_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4440404044444444)) 
    \spi_mmio_fsm_state[0]_i_4 
       (.I0(\spi_mmio_fsm_state_reg_n_0_[2] ),
        .I1(\spi_mmio_fsm_state[0]_i_8_n_0 ),
        .I2(spi_mmio_en),
        .I3(spi_mmio_en_req_reg_n_0),
        .I4(spi_en_reg_n_0),
        .I5(spi_io_mode156_out),
        .O(\spi_mmio_fsm_state[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \spi_mmio_fsm_state[0]_i_5 
       (.I0(spi_mmio_cont_read_ready),
        .I1(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I2(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I3(\spi_mmio_fsm_state_reg_n_0_[3] ),
        .I4(\spi_mmio_fsm_state_reg_n_0_[2] ),
        .I5(\spi_mmio_cs_wait_rem[7]_i_14_n_0 ),
        .O(\spi_mmio_fsm_state[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \spi_mmio_fsm_state[0]_i_6 
       (.I0(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I1(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I2(\spi_mmio_fsm_state_next_reg_n_0_[0] ),
        .I3(\spi_mmio_fsm_state_reg_n_0_[3] ),
        .I4(\spi_mmio_fsm_state_reg_n_0_[2] ),
        .I5(\spi_mmio_cs_wait_rem[7]_i_7_n_0 ),
        .O(\spi_mmio_fsm_state[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAABBEAAAAAABE)) 
    \spi_mmio_fsm_state[0]_i_7 
       (.I0(\spi_mmio_fsm_state[0]_i_9_n_0 ),
        .I1(\spi_mmio_fsm_state_reg_n_0_[2] ),
        .I2(\spi_mmio_fsm_state_reg_n_0_[3] ),
        .I3(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I4(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I5(\spi_mmio_fsm_state_next_reg_n_0_[0] ),
        .O(\spi_mmio_fsm_state[0]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \spi_mmio_fsm_state[0]_i_8 
       (.I0(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I1(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .O(\spi_mmio_fsm_state[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00540054005400FF)) 
    \spi_mmio_fsm_state[0]_i_9 
       (.I0(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I1(spi_mmio_dummy_rem[0]),
        .I2(spi_mmio_dummy_rem[1]),
        .I3(\spi_mmio_fsm_state[0]_i_10_n_0 ),
        .I4(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I5(spi_mmio_mode_bits_en_reg_n_0),
        .O(\spi_mmio_fsm_state[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEAEAFAEA)) 
    \spi_mmio_fsm_state[1]_i_1 
       (.I0(\spi_mmio_fsm_state[1]_i_2_n_0 ),
        .I1(\spi_mmio_fsm_state[1]_i_3_n_0 ),
        .I2(\spi_mmio_fsm_state[1]_i_4_n_0 ),
        .I3(\spi_mmio_fsm_state[1]_i_5_n_0 ),
        .I4(spi_mmio_en),
        .I5(\spi_mmio_fsm_state[1]_i_6_n_0 ),
        .O(\spi_mmio_fsm_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFEEEFEEEEEEEFEE)) 
    \spi_mmio_fsm_state[1]_i_2 
       (.I0(\spi_mmio_fsm_state[1]_i_7_n_0 ),
        .I1(\spi_mmio_fsm_state[1]_i_8_n_0 ),
        .I2(\spi_mmio_fsm_state_reg_n_0_[2] ),
        .I3(\spi_mmio_cs_wait_rem[7]_i_6_n_0 ),
        .I4(\spi_mmio_cs_wait_rem[7]_i_7_n_0 ),
        .I5(\spi_mmio_fsm_state_next_reg_n_0_[1] ),
        .O(\spi_mmio_fsm_state[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \spi_mmio_fsm_state[1]_i_3 
       (.I0(s_axi_full_arready_i_3_n_0),
        .I1(spi_en_reg_n_0),
        .I2(spi_mmio_en_req_reg_n_0),
        .I3(s_axi_full_arready_reg_0),
        .I4(s_axi_full_arvalid),
        .O(\spi_mmio_fsm_state[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFFFFF777)) 
    \spi_mmio_fsm_state[1]_i_4 
       (.I0(spi_en_reg_n_0),
        .I1(spi_mmio_en_req_reg_n_0),
        .I2(\spi_ss_o_reg[0]_0 ),
        .I3(\spi_mmio_cs_mask_reg_n_0_[0] ),
        .I4(\spi_mmio_fsm_state_next_reg[3]_i_5_n_0 ),
        .O(\spi_mmio_fsm_state[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \spi_mmio_fsm_state[1]_i_5 
       (.I0(\spi_mmio_fsm_state_reg_n_0_[2] ),
        .I1(\spi_mmio_fsm_state_reg_n_0_[3] ),
        .I2(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I3(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I4(s_axi_full_arvalid),
        .I5(s_axi_full_arready_reg_0),
        .O(\spi_mmio_fsm_state[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000A000C0)) 
    \spi_mmio_fsm_state[1]_i_6 
       (.I0(s_axi_full_rvalid_reg_0),
        .I1(\spi_mmio_fsm_state_next_reg_n_0_[1] ),
        .I2(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I3(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I4(\spi_mmio_fsm_state_reg_n_0_[3] ),
        .I5(\spi_mmio_fsm_state_reg_n_0_[2] ),
        .O(\spi_mmio_fsm_state[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h000000F000F07000)) 
    \spi_mmio_fsm_state[1]_i_7 
       (.I0(\spi_mmio_fsm_state[1]_i_9_n_0 ),
        .I1(\spi_mmio_cs_wait_rem[7]_i_19_n_0 ),
        .I2(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I3(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I4(\spi_mmio_fsm_state_reg_n_0_[3] ),
        .I5(\spi_mmio_fsm_state_reg_n_0_[2] ),
        .O(\spi_mmio_fsm_state[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0400040004000000)) 
    \spi_mmio_fsm_state[1]_i_8 
       (.I0(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I1(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I2(\spi_mmio_fsm_state_reg_n_0_[3] ),
        .I3(\spi_mmio_fsm_state_reg_n_0_[2] ),
        .I4(spi_mmio_dummy_rem[1]),
        .I5(spi_mmio_dummy_rem[0]),
        .O(\spi_mmio_fsm_state[1]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \spi_mmio_fsm_state[1]_i_9 
       (.I0(\spi_mmio_cs_low_wait_reg_n_0_[7] ),
        .I1(\spi_mmio_cs_low_wait_reg_n_0_[6] ),
        .I2(\spi_mmio_cs_low_wait_reg_n_0_[5] ),
        .I3(\spi_mmio_cs_low_wait_reg_n_0_[4] ),
        .O(\spi_mmio_fsm_state[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEA)) 
    \spi_mmio_fsm_state[2]_i_1 
       (.I0(\spi_mmio_fsm_state[2]_i_2_n_0 ),
        .I1(\spi_mmio_fsm_state_next_reg_n_0_[2] ),
        .I2(\spi_mmio_cs_wait_rem[7]_i_3_n_0 ),
        .I3(\spi_mmio_fsm_state[2]_i_3_n_0 ),
        .I4(\spi_mmio_fsm_state[2]_i_4_n_0 ),
        .I5(\spi_mmio_fsm_state[2]_i_5_n_0 ),
        .O(\spi_mmio_fsm_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h000E0000)) 
    \spi_mmio_fsm_state[2]_i_2 
       (.I0(spi_mmio_dummy_rem[1]),
        .I1(spi_mmio_dummy_rem[0]),
        .I2(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I3(\spi_mmio_fsm_state_reg_n_0_[3] ),
        .I4(\spi_mmio_fsm_state_reg_n_0_[2] ),
        .O(\spi_mmio_fsm_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h04000000)) 
    \spi_mmio_fsm_state[2]_i_3 
       (.I0(\spi_mmio_fsm_state_reg_n_0_[2] ),
        .I1(\spi_mmio_fsm_state_reg_n_0_[3] ),
        .I2(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I3(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I4(s_axi_full_rvalid_reg_0),
        .O(\spi_mmio_fsm_state[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \spi_mmio_fsm_state[2]_i_4 
       (.I0(\spi_mmio_fsm_state_reg_n_0_[2] ),
        .I1(\spi_mmio_fsm_state_reg_n_0_[3] ),
        .I2(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .O(\spi_mmio_fsm_state[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h88F8888888888888)) 
    \spi_mmio_fsm_state[2]_i_5 
       (.I0(\spi_mmio_cs_wait_rem[7]_i_14_n_0 ),
        .I1(\spi_ss_o[0]_i_4_n_0 ),
        .I2(\spi_mmio_cs_wait_rem[7]_i_7_n_0 ),
        .I3(\spi_mmio_fsm_state_reg_n_0_[3] ),
        .I4(\spi_mmio_fsm_state_next_reg_n_0_[2] ),
        .I5(\spi_mmio_cs_wait_rem[7]_i_6_n_0 ),
        .O(\spi_mmio_fsm_state[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFEFEFEFEFEFE)) 
    \spi_mmio_fsm_state[3]_i_1 
       (.I0(\spi_mmio_fsm_state[3]_i_3_n_0 ),
        .I1(\spi_mmio_fsm_state[3]_i_4_n_0 ),
        .I2(\spi_mmio_fsm_state[3]_i_5_n_0 ),
        .I3(\spi_mmio_fsm_state_reg_n_0_[2] ),
        .I4(spi_io_mode1),
        .I5(\spi_mmio_fsm_state[3]_i_7_n_0 ),
        .O(spi_mmio_fsm_state));
  LUT6 #(
    .INIT(64'h020002F002000200)) 
    \spi_mmio_fsm_state[3]_i_10 
       (.I0(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I1(\spi_mmio_fsm_state[3]_i_16_n_0 ),
        .I2(\spi_mmio_fsm_state_reg_n_0_[3] ),
        .I3(\spi_mmio_fsm_state_reg_n_0_[2] ),
        .I4(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I5(s_axi_full_rvalid_reg_0),
        .O(\spi_mmio_fsm_state[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h50500E0A00000A0A)) 
    \spi_mmio_fsm_state[3]_i_11 
       (.I0(\spi_mmio_fsm_state_reg_n_0_[3] ),
        .I1(\spi_mmio_cs_wait_rem[7]_i_7_n_0 ),
        .I2(\spi_mmio_fsm_state_reg_n_0_[2] ),
        .I3(\spi_mmio_fsm_state_next_reg_n_0_[3] ),
        .I4(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I5(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .O(\spi_mmio_fsm_state[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFF70707000000000)) 
    \spi_mmio_fsm_state[3]_i_12 
       (.I0(spi_mmio_en_req_reg_n_0),
        .I1(spi_en_reg_n_0),
        .I2(spi_mmio_en),
        .I3(s_axi_full_arready_reg_0),
        .I4(s_axi_full_arvalid),
        .I5(s_axi_full_arready_i_3_n_0),
        .O(\spi_mmio_fsm_state[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAA022A020A020A02)) 
    \spi_mmio_fsm_state[3]_i_13 
       (.I0(\spi_mmio_fsm_state[3]_i_17_n_0 ),
        .I1(s_axi_full_arsize_q[0]),
        .I2(s_axi_full_arsize_q[1]),
        .I3(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I4(\s_axi_full_araddr_q_reg_n_0_[2] ),
        .I5(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .O(\spi_mmio_fsm_state[3]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \spi_mmio_fsm_state[3]_i_14 
       (.I0(s_axi_full_arready_reg_0),
        .I1(s_axi_full_arvalid),
        .O(spi_io_mode156_out));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \spi_mmio_fsm_state[3]_i_15 
       (.I0(spi_en_reg_n_0),
        .I1(spi_mmio_en_req_reg_n_0),
        .O(spi_io_mode154_out));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \spi_mmio_fsm_state[3]_i_16 
       (.I0(spi_mmio_dummy_rem[0]),
        .I1(spi_mmio_dummy_rem[1]),
        .O(\spi_mmio_fsm_state[3]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'h005D)) 
    \spi_mmio_fsm_state[3]_i_17 
       (.I0(spi_mmio_en),
        .I1(spi_sr_in_buf_valid_reg_n_0),
        .I2(spi_sr_in_buf_ready_reg_n_0),
        .I3(s_axi_full_rvalid_reg_0),
        .O(\spi_mmio_fsm_state[3]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \spi_mmio_fsm_state[3]_i_2 
       (.I0(\spi_mmio_fsm_state_next_reg_n_0_[3] ),
        .I1(\spi_mmio_cs_wait_rem[7]_i_3_n_0 ),
        .I2(\spi_mmio_fsm_state[3]_i_8_n_0 ),
        .I3(\spi_mmio_fsm_state[3]_i_9_n_0 ),
        .I4(\spi_mmio_fsm_state[3]_i_10_n_0 ),
        .I5(\spi_mmio_fsm_state[3]_i_11_n_0 ),
        .O(\spi_mmio_fsm_state[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AA00AA30)) 
    \spi_mmio_fsm_state[3]_i_3 
       (.I0(\FSM_onehot_spi_fsm_state_reg_n_0_[0] ),
        .I1(\spi_mmio_cs_wait_rem[7]_i_4_n_0 ),
        .I2(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I3(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I4(\spi_mmio_fsm_state_reg_n_0_[3] ),
        .I5(\spi_mmio_fsm_state_reg_n_0_[2] ),
        .O(\spi_mmio_fsm_state[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFCCCCCC40)) 
    \spi_mmio_fsm_state[3]_i_4 
       (.I0(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I1(\spi_mmio_fsm_state_reg_n_0_[3] ),
        .I2(spi_io_mode1),
        .I3(\spi_mmio_fsm_state_reg_n_0_[2] ),
        .I4(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I5(\spi_mmio_fsm_state[3]_i_12_n_0 ),
        .O(\spi_mmio_fsm_state[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \spi_mmio_fsm_state[3]_i_5 
       (.I0(\spi_mmio_fsm_state[3]_i_13_n_0 ),
        .I1(\spi_mmio_fsm_state_reg_n_0_[3] ),
        .I2(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I3(spi_rd_req4),
        .O(\spi_mmio_fsm_state[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \spi_mmio_fsm_state[3]_i_6 
       (.I0(spi_sr_out_buf_valid),
        .I1(spi_rd_req_reg_n_0),
        .O(spi_io_mode1));
  LUT6 #(
    .INIT(64'h2F2F2F2F0F0F0FFF)) 
    \spi_mmio_fsm_state[3]_i_7 
       (.I0(spi_mmio_dummy_rem[0]),
        .I1(spi_mmio_dummy_rem[1]),
        .I2(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I3(spi_mmio_addr_rem[1]),
        .I4(spi_mmio_addr_rem[0]),
        .I5(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .O(\spi_mmio_fsm_state[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h04C4C4C404040404)) 
    \spi_mmio_fsm_state[3]_i_8 
       (.I0(spi_mmio_en),
        .I1(spi_io_mode156_out),
        .I2(spi_io_mode154_out),
        .I3(\spi_mmio_cs_mask_reg_n_0_[0] ),
        .I4(\spi_ss_o_reg[0]_0 ),
        .I5(\spi_mmio_fsm_state_next_reg[3]_i_5_n_0 ),
        .O(\spi_mmio_fsm_state[3]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \spi_mmio_fsm_state[3]_i_9 
       (.I0(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I1(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I2(\spi_mmio_fsm_state_reg_n_0_[2] ),
        .O(\spi_mmio_fsm_state[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hB888888888888888)) 
    \spi_mmio_fsm_state_next[0]_i_1 
       (.I0(spi_mmio_cont_read_ready),
        .I1(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I2(spi_en_reg_n_0),
        .I3(spi_mmio_en_req_reg_n_0),
        .I4(s_axi_full_arready_reg_0),
        .I5(s_axi_full_arvalid),
        .O(\spi_mmio_fsm_state_next[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \spi_mmio_fsm_state_next[1]_i_1 
       (.I0(s_axi_full_arvalid),
        .I1(s_axi_full_arready_reg_0),
        .I2(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .O(\spi_mmio_fsm_state_next[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF22222A22)) 
    \spi_mmio_fsm_state_next[3]_i_1 
       (.I0(s_axi_full_arready_i_3_n_0),
        .I1(s_axi_full_arready_i_2_n_0),
        .I2(\spi_mmio_fsm_state_next[3]_i_3_n_0 ),
        .I3(spi_mmio_cs_active),
        .I4(\spi_mmio_fsm_state_next_reg[3]_i_5_n_0 ),
        .I5(\spi_mmio_cs_wait_rem[7]_i_8_n_0 ),
        .O(\spi_mmio_fsm_state_next[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \spi_mmio_fsm_state_next[3]_i_10 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[12] ),
        .I1(s_axi_full_araddr[12]),
        .I2(\s_axi_full_araddr_q_reg_n_0_[13] ),
        .I3(s_axi_full_araddr[13]),
        .I4(s_axi_full_araddr[14]),
        .I5(\s_axi_full_araddr_q_reg_n_0_[14] ),
        .O(\spi_mmio_fsm_state_next[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \spi_mmio_fsm_state_next[3]_i_11 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[9] ),
        .I1(s_axi_full_araddr[9]),
        .I2(\s_axi_full_araddr_q_reg_n_0_[10] ),
        .I3(s_axi_full_araddr[10]),
        .I4(s_axi_full_araddr[11]),
        .I5(\s_axi_full_araddr_q_reg_n_0_[11] ),
        .O(\spi_mmio_fsm_state_next[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \spi_mmio_fsm_state_next[3]_i_12 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[6] ),
        .I1(s_axi_full_araddr[6]),
        .I2(\s_axi_full_araddr_q_reg_n_0_[7] ),
        .I3(s_axi_full_araddr[7]),
        .I4(s_axi_full_araddr[8]),
        .I5(\s_axi_full_araddr_q_reg_n_0_[8] ),
        .O(\spi_mmio_fsm_state_next[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \spi_mmio_fsm_state_next[3]_i_13 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[3] ),
        .I1(s_axi_full_araddr[3]),
        .I2(\s_axi_full_araddr_q_reg_n_0_[4] ),
        .I3(s_axi_full_araddr[4]),
        .I4(s_axi_full_araddr[5]),
        .I5(\s_axi_full_araddr_q_reg_n_0_[5] ),
        .O(\spi_mmio_fsm_state_next[3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \spi_mmio_fsm_state_next[3]_i_14 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I1(s_axi_full_araddr[0]),
        .I2(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I3(s_axi_full_araddr[1]),
        .I4(s_axi_full_araddr[2]),
        .I5(\s_axi_full_araddr_q_reg_n_0_[2] ),
        .O(\spi_mmio_fsm_state_next[3]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00000888)) 
    \spi_mmio_fsm_state_next[3]_i_2 
       (.I0(s_axi_full_arready_reg_0),
        .I1(s_axi_full_arvalid),
        .I2(spi_en_reg_n_0),
        .I3(spi_mmio_en_req_reg_n_0),
        .I4(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .O(\spi_mmio_fsm_state_next[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \spi_mmio_fsm_state_next[3]_i_3 
       (.I0(s_axi_full_arvalid),
        .I1(s_axi_full_arready_reg_0),
        .I2(spi_mmio_en_req_reg_n_0),
        .I3(spi_en_reg_n_0),
        .O(\spi_mmio_fsm_state_next[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \spi_mmio_fsm_state_next[3]_i_4 
       (.I0(\spi_ss_o_reg[0]_0 ),
        .I1(\spi_mmio_cs_mask_reg_n_0_[0] ),
        .O(spi_mmio_cs_active));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \spi_mmio_fsm_state_next[3]_i_7 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[21] ),
        .I1(s_axi_full_araddr[21]),
        .I2(\s_axi_full_araddr_q_reg_n_0_[22] ),
        .I3(s_axi_full_araddr[22]),
        .I4(s_axi_full_araddr[23]),
        .I5(\s_axi_full_araddr_q_reg_n_0_[23] ),
        .O(\spi_mmio_fsm_state_next[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \spi_mmio_fsm_state_next[3]_i_8 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[18] ),
        .I1(s_axi_full_araddr[18]),
        .I2(\s_axi_full_araddr_q_reg_n_0_[19] ),
        .I3(s_axi_full_araddr[19]),
        .I4(s_axi_full_araddr[20]),
        .I5(\s_axi_full_araddr_q_reg_n_0_[20] ),
        .O(\spi_mmio_fsm_state_next[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \spi_mmio_fsm_state_next[3]_i_9 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[15] ),
        .I1(s_axi_full_araddr[15]),
        .I2(\s_axi_full_araddr_q_reg_n_0_[16] ),
        .I3(s_axi_full_araddr[16]),
        .I4(s_axi_full_araddr[17]),
        .I5(\s_axi_full_araddr_q_reg_n_0_[17] ),
        .O(\spi_mmio_fsm_state_next[3]_i_9_n_0 ));
  FDRE \spi_mmio_fsm_state_next_reg[0] 
       (.C(aclk),
        .CE(\spi_mmio_fsm_state_next[3]_i_1_n_0 ),
        .D(\spi_mmio_fsm_state_next[0]_i_1_n_0 ),
        .Q(\spi_mmio_fsm_state_next_reg_n_0_[0] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_fsm_state_next_reg[1] 
       (.C(aclk),
        .CE(\spi_mmio_fsm_state_next[3]_i_1_n_0 ),
        .D(\spi_mmio_fsm_state_next[1]_i_1_n_0 ),
        .Q(\spi_mmio_fsm_state_next_reg_n_0_[1] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_fsm_state_next_reg[2] 
       (.C(aclk),
        .CE(\spi_mmio_fsm_state_next[3]_i_1_n_0 ),
        .D(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .Q(\spi_mmio_fsm_state_next_reg_n_0_[2] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_fsm_state_next_reg[3] 
       (.C(aclk),
        .CE(\spi_mmio_fsm_state_next[3]_i_1_n_0 ),
        .D(\spi_mmio_fsm_state_next[3]_i_2_n_0 ),
        .Q(\spi_mmio_fsm_state_next_reg_n_0_[3] ),
        .R(s_axi_lite_awready_i_1_n_0));
  CARRY4 \spi_mmio_fsm_state_next_reg[3]_i_5 
       (.CI(\spi_mmio_fsm_state_next_reg[3]_i_6_n_0 ),
        .CO({\spi_mmio_fsm_state_next_reg[3]_i_5_n_0 ,\spi_mmio_fsm_state_next_reg[3]_i_5_n_1 ,\spi_mmio_fsm_state_next_reg[3]_i_5_n_2 ,\spi_mmio_fsm_state_next_reg[3]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_spi_mmio_fsm_state_next_reg[3]_i_5_O_UNCONNECTED [3:0]),
        .S({\spi_mmio_fsm_state_next[3]_i_7_n_0 ,\spi_mmio_fsm_state_next[3]_i_8_n_0 ,\spi_mmio_fsm_state_next[3]_i_9_n_0 ,\spi_mmio_fsm_state_next[3]_i_10_n_0 }));
  CARRY4 \spi_mmio_fsm_state_next_reg[3]_i_6 
       (.CI(1'b0),
        .CO({\spi_mmio_fsm_state_next_reg[3]_i_6_n_0 ,\spi_mmio_fsm_state_next_reg[3]_i_6_n_1 ,\spi_mmio_fsm_state_next_reg[3]_i_6_n_2 ,\spi_mmio_fsm_state_next_reg[3]_i_6_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_spi_mmio_fsm_state_next_reg[3]_i_6_O_UNCONNECTED [3:0]),
        .S({\spi_mmio_fsm_state_next[3]_i_11_n_0 ,\spi_mmio_fsm_state_next[3]_i_12_n_0 ,\spi_mmio_fsm_state_next[3]_i_13_n_0 ,\spi_mmio_fsm_state_next[3]_i_14_n_0 }));
  FDRE \spi_mmio_fsm_state_reg[0] 
       (.C(aclk),
        .CE(spi_mmio_fsm_state),
        .D(\spi_mmio_fsm_state[0]_i_1_n_0 ),
        .Q(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_fsm_state_reg[1] 
       (.C(aclk),
        .CE(spi_mmio_fsm_state),
        .D(\spi_mmio_fsm_state[1]_i_1_n_0 ),
        .Q(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_fsm_state_reg[2] 
       (.C(aclk),
        .CE(spi_mmio_fsm_state),
        .D(\spi_mmio_fsm_state[2]_i_1_n_0 ),
        .Q(\spi_mmio_fsm_state_reg_n_0_[2] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_fsm_state_reg[3] 
       (.C(aclk),
        .CE(spi_mmio_fsm_state),
        .D(\spi_mmio_fsm_state[3]_i_2_n_0 ),
        .Q(\spi_mmio_fsm_state_reg_n_0_[3] ),
        .R(s_axi_lite_awready_i_1_n_0));
  LUT5 #(
    .INIT(32'h02000000)) 
    \spi_mmio_mode_bits[7]_i_1 
       (.I0(s_axi_lite_wstrb[2]),
        .I1(s_axi_lite_awaddr[2]),
        .I2(spi_mmio_en),
        .I3(s_axi_lite_awready),
        .I4(\spi_mmio_rd_instr[7]_i_2_n_0 ),
        .O(spi_mmio_mode_bits));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    spi_mmio_mode_bits_en_i_1
       (.I0(s_axi_lite_wdata[22]),
        .I1(s_axi_lite_wstrb[3]),
        .I2(\spi_mmio_cs_high_wait[7]_i_2_n_0 ),
        .I3(\spi_mmio_rd_instr[7]_i_2_n_0 ),
        .I4(spi_mmio_mode_bits_en_reg_n_0),
        .O(spi_mmio_mode_bits_en_i_1_n_0));
  FDRE spi_mmio_mode_bits_en_reg
       (.C(aclk),
        .CE(1'b1),
        .D(spi_mmio_mode_bits_en_i_1_n_0),
        .Q(spi_mmio_mode_bits_en_reg_n_0),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_mode_bits_reg[0] 
       (.C(aclk),
        .CE(spi_mmio_mode_bits),
        .D(s_axi_lite_wdata[14]),
        .Q(\spi_mmio_mode_bits_reg_n_0_[0] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_mode_bits_reg[1] 
       (.C(aclk),
        .CE(spi_mmio_mode_bits),
        .D(s_axi_lite_wdata[15]),
        .Q(\spi_mmio_mode_bits_reg_n_0_[1] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_mode_bits_reg[2] 
       (.C(aclk),
        .CE(spi_mmio_mode_bits),
        .D(s_axi_lite_wdata[16]),
        .Q(\spi_mmio_mode_bits_reg_n_0_[2] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_mode_bits_reg[3] 
       (.C(aclk),
        .CE(spi_mmio_mode_bits),
        .D(s_axi_lite_wdata[17]),
        .Q(\spi_mmio_mode_bits_reg_n_0_[3] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_mode_bits_reg[4] 
       (.C(aclk),
        .CE(spi_mmio_mode_bits),
        .D(s_axi_lite_wdata[18]),
        .Q(\spi_mmio_mode_bits_reg_n_0_[4] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_mode_bits_reg[5] 
       (.C(aclk),
        .CE(spi_mmio_mode_bits),
        .D(s_axi_lite_wdata[19]),
        .Q(\spi_mmio_mode_bits_reg_n_0_[5] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_mode_bits_reg[6] 
       (.C(aclk),
        .CE(spi_mmio_mode_bits),
        .D(s_axi_lite_wdata[20]),
        .Q(\spi_mmio_mode_bits_reg_n_0_[6] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_mode_bits_reg[7] 
       (.C(aclk),
        .CE(spi_mmio_mode_bits),
        .D(s_axi_lite_wdata[21]),
        .Q(\spi_mmio_mode_bits_reg_n_0_[7] ),
        .R(s_axi_lite_awready_i_1_n_0));
  LUT5 #(
    .INIT(32'h00000080)) 
    \spi_mmio_rd_instr[7]_i_1 
       (.I0(\spi_mmio_rd_instr[7]_i_2_n_0 ),
        .I1(s_axi_lite_wstrb[0]),
        .I2(s_axi_lite_awready),
        .I3(spi_mmio_en),
        .I4(s_axi_lite_awaddr[2]),
        .O(spi_mmio_rd_instr));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \spi_mmio_rd_instr[7]_i_2 
       (.I0(s_axi_lite_awaddr[1]),
        .I1(s_axi_lite_awaddr[0]),
        .I2(s_axi_lite_awaddr[3]),
        .O(\spi_mmio_rd_instr[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF77F00080000)) 
    \spi_mmio_rd_instr_io_mode[0]_i_1 
       (.I0(\spi_mmio_rd_instr_io_mode[2]_i_2_n_0 ),
        .I1(\spi_mmio_rd_instr_io_mode[2]_i_3_n_0 ),
        .I2(s_axi_lite_wdata[2]),
        .I3(s_axi_lite_wdata[1]),
        .I4(s_axi_lite_wdata[0]),
        .I5(\spi_mmio_rd_instr_io_mode_reg_n_0_[0] ),
        .O(\spi_mmio_rd_instr_io_mode[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF7FF7F00000800)) 
    \spi_mmio_rd_instr_io_mode[1]_i_1 
       (.I0(\spi_mmio_rd_instr_io_mode[2]_i_2_n_0 ),
        .I1(\spi_mmio_rd_instr_io_mode[2]_i_3_n_0 ),
        .I2(s_axi_lite_wdata[2]),
        .I3(s_axi_lite_wdata[1]),
        .I4(s_axi_lite_wdata[0]),
        .I5(\spi_mmio_rd_instr_io_mode_reg_n_0_[1] ),
        .O(\spi_mmio_rd_instr_io_mode[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF7F7FF00000080)) 
    \spi_mmio_rd_instr_io_mode[2]_i_1 
       (.I0(\spi_mmio_rd_instr_io_mode[2]_i_2_n_0 ),
        .I1(\spi_mmio_rd_instr_io_mode[2]_i_3_n_0 ),
        .I2(s_axi_lite_wdata[2]),
        .I3(s_axi_lite_wdata[1]),
        .I4(s_axi_lite_wdata[0]),
        .I5(\spi_mmio_rd_instr_io_mode_reg_n_0_[2] ),
        .O(\spi_mmio_rd_instr_io_mode[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \spi_mmio_rd_instr_io_mode[2]_i_2 
       (.I0(s_axi_lite_awaddr[0]),
        .I1(s_axi_lite_awaddr[3]),
        .I2(s_axi_lite_awaddr[1]),
        .O(\spi_mmio_rd_instr_io_mode[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \spi_mmio_rd_instr_io_mode[2]_i_3 
       (.I0(s_axi_lite_awaddr[2]),
        .I1(spi_mmio_en),
        .I2(s_axi_lite_awready),
        .I3(s_axi_lite_wstrb[0]),
        .O(\spi_mmio_rd_instr_io_mode[2]_i_3_n_0 ));
  FDSE \spi_mmio_rd_instr_io_mode_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\spi_mmio_rd_instr_io_mode[0]_i_1_n_0 ),
        .Q(\spi_mmio_rd_instr_io_mode_reg_n_0_[0] ),
        .S(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_rd_instr_io_mode_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\spi_mmio_rd_instr_io_mode[1]_i_1_n_0 ),
        .Q(\spi_mmio_rd_instr_io_mode_reg_n_0_[1] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_rd_instr_io_mode_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\spi_mmio_rd_instr_io_mode[2]_i_1_n_0 ),
        .Q(\spi_mmio_rd_instr_io_mode_reg_n_0_[2] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_rd_instr_reg[0] 
       (.C(aclk),
        .CE(spi_mmio_rd_instr),
        .D(s_axi_lite_wdata[0]),
        .Q(\spi_mmio_rd_instr_reg_n_0_[0] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_rd_instr_reg[1] 
       (.C(aclk),
        .CE(spi_mmio_rd_instr),
        .D(s_axi_lite_wdata[1]),
        .Q(\spi_mmio_rd_instr_reg_n_0_[1] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_rd_instr_reg[2] 
       (.C(aclk),
        .CE(spi_mmio_rd_instr),
        .D(s_axi_lite_wdata[2]),
        .Q(\spi_mmio_rd_instr_reg_n_0_[2] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_rd_instr_reg[3] 
       (.C(aclk),
        .CE(spi_mmio_rd_instr),
        .D(s_axi_lite_wdata[3]),
        .Q(\spi_mmio_rd_instr_reg_n_0_[3] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_rd_instr_reg[4] 
       (.C(aclk),
        .CE(spi_mmio_rd_instr),
        .D(s_axi_lite_wdata[4]),
        .Q(\spi_mmio_rd_instr_reg_n_0_[4] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_rd_instr_reg[5] 
       (.C(aclk),
        .CE(spi_mmio_rd_instr),
        .D(s_axi_lite_wdata[5]),
        .Q(\spi_mmio_rd_instr_reg_n_0_[5] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_rd_instr_reg[6] 
       (.C(aclk),
        .CE(spi_mmio_rd_instr),
        .D(s_axi_lite_wdata[6]),
        .Q(\spi_mmio_rd_instr_reg_n_0_[6] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_rd_instr_reg[7] 
       (.C(aclk),
        .CE(spi_mmio_rd_instr),
        .D(s_axi_lite_wdata[7]),
        .Q(\spi_mmio_rd_instr_reg_n_0_[7] ),
        .R(s_axi_lite_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \spi_mmio_rd_req_cnt[0]_i_1 
       (.I0(\spi_mmio_fsm_state[1]_i_3_n_0 ),
        .I1(spi_mmio_rd_req_cnt__0[0]),
        .O(\spi_mmio_rd_req_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \spi_mmio_rd_req_cnt[10]_i_1 
       (.I0(\spi_mmio_fsm_state[1]_i_3_n_0 ),
        .I1(spi_mmio_rd_req_cnt0[10]),
        .O(\spi_mmio_rd_req_cnt[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \spi_mmio_rd_req_cnt[11]_i_1 
       (.I0(\spi_mmio_fsm_state[1]_i_3_n_0 ),
        .I1(spi_mmio_rd_req_cnt0[11]),
        .O(\spi_mmio_rd_req_cnt[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \spi_mmio_rd_req_cnt[12]_i_1 
       (.I0(\spi_mmio_fsm_state[1]_i_3_n_0 ),
        .I1(spi_mmio_rd_req_cnt0[12]),
        .O(\spi_mmio_rd_req_cnt[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \spi_mmio_rd_req_cnt[13]_i_1 
       (.I0(\spi_mmio_fsm_state[1]_i_3_n_0 ),
        .I1(spi_mmio_rd_req_cnt0[13]),
        .O(\spi_mmio_rd_req_cnt[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \spi_mmio_rd_req_cnt[14]_i_1 
       (.I0(\spi_mmio_fsm_state[1]_i_3_n_0 ),
        .I1(spi_mmio_rd_req_cnt0[14]),
        .O(\spi_mmio_rd_req_cnt[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \spi_mmio_rd_req_cnt[15]_i_1 
       (.I0(\spi_mmio_fsm_state[1]_i_3_n_0 ),
        .I1(spi_mmio_rd_req_cnt0[15]),
        .O(\spi_mmio_rd_req_cnt[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \spi_mmio_rd_req_cnt[16]_i_1 
       (.I0(\spi_mmio_fsm_state[1]_i_3_n_0 ),
        .I1(spi_mmio_rd_req_cnt0[16]),
        .O(\spi_mmio_rd_req_cnt[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \spi_mmio_rd_req_cnt[17]_i_1 
       (.I0(\spi_mmio_fsm_state[1]_i_3_n_0 ),
        .I1(spi_mmio_rd_req_cnt0[17]),
        .O(\spi_mmio_rd_req_cnt[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \spi_mmio_rd_req_cnt[18]_i_1 
       (.I0(\spi_mmio_fsm_state[1]_i_3_n_0 ),
        .I1(spi_mmio_rd_req_cnt0[18]),
        .O(\spi_mmio_rd_req_cnt[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \spi_mmio_rd_req_cnt[19]_i_1 
       (.I0(\spi_mmio_fsm_state[1]_i_3_n_0 ),
        .I1(spi_mmio_rd_req_cnt0[19]),
        .O(\spi_mmio_rd_req_cnt[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \spi_mmio_rd_req_cnt[1]_i_1 
       (.I0(\spi_mmio_fsm_state[1]_i_3_n_0 ),
        .I1(spi_mmio_rd_req_cnt0[1]),
        .O(\spi_mmio_rd_req_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \spi_mmio_rd_req_cnt[20]_i_1 
       (.I0(\spi_mmio_fsm_state[1]_i_3_n_0 ),
        .I1(spi_mmio_rd_req_cnt0[20]),
        .O(\spi_mmio_rd_req_cnt[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \spi_mmio_rd_req_cnt[21]_i_1 
       (.I0(\spi_mmio_fsm_state[1]_i_3_n_0 ),
        .I1(spi_mmio_rd_req_cnt0[21]),
        .O(\spi_mmio_rd_req_cnt[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \spi_mmio_rd_req_cnt[22]_i_1 
       (.I0(\spi_mmio_fsm_state[1]_i_3_n_0 ),
        .I1(spi_mmio_rd_req_cnt0[22]),
        .O(\spi_mmio_rd_req_cnt[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \spi_mmio_rd_req_cnt[23]_i_1 
       (.I0(\spi_mmio_fsm_state[1]_i_3_n_0 ),
        .I1(spi_mmio_rd_req_cnt0[23]),
        .O(\spi_mmio_rd_req_cnt[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \spi_mmio_rd_req_cnt[24]_i_1 
       (.I0(\spi_mmio_fsm_state[1]_i_3_n_0 ),
        .I1(spi_mmio_rd_req_cnt0[24]),
        .O(\spi_mmio_rd_req_cnt[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \spi_mmio_rd_req_cnt[25]_i_1 
       (.I0(\spi_mmio_fsm_state[1]_i_3_n_0 ),
        .I1(spi_mmio_rd_req_cnt0[25]),
        .O(\spi_mmio_rd_req_cnt[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \spi_mmio_rd_req_cnt[26]_i_1 
       (.I0(\spi_mmio_fsm_state[1]_i_3_n_0 ),
        .I1(spi_mmio_rd_req_cnt0[26]),
        .O(\spi_mmio_rd_req_cnt[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \spi_mmio_rd_req_cnt[27]_i_1 
       (.I0(\spi_mmio_fsm_state[1]_i_3_n_0 ),
        .I1(spi_mmio_rd_req_cnt0[27]),
        .O(\spi_mmio_rd_req_cnt[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \spi_mmio_rd_req_cnt[28]_i_1 
       (.I0(\spi_mmio_fsm_state[1]_i_3_n_0 ),
        .I1(spi_mmio_rd_req_cnt0[28]),
        .O(\spi_mmio_rd_req_cnt[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \spi_mmio_rd_req_cnt[29]_i_1 
       (.I0(\spi_mmio_fsm_state[1]_i_3_n_0 ),
        .I1(spi_mmio_rd_req_cnt0[29]),
        .O(\spi_mmio_rd_req_cnt[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \spi_mmio_rd_req_cnt[2]_i_1 
       (.I0(\spi_mmio_fsm_state[1]_i_3_n_0 ),
        .I1(spi_mmio_rd_req_cnt0[2]),
        .O(\spi_mmio_rd_req_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \spi_mmio_rd_req_cnt[30]_i_1 
       (.I0(\spi_mmio_fsm_state[1]_i_3_n_0 ),
        .I1(spi_mmio_rd_req_cnt0[30]),
        .O(\spi_mmio_rd_req_cnt[30]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAEA)) 
    \spi_mmio_rd_req_cnt[31]_i_1 
       (.I0(\spi_mmio_fsm_state[1]_i_3_n_0 ),
        .I1(\s_axi_lite_rdata[31]_i_6_n_0 ),
        .I2(s_axi_lite_arvalid),
        .I3(s_axi_lite_rvalid_reg_0),
        .O(\spi_mmio_rd_req_cnt[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \spi_mmio_rd_req_cnt[31]_i_2 
       (.I0(\spi_mmio_fsm_state[1]_i_3_n_0 ),
        .I1(spi_mmio_rd_req_cnt0[31]),
        .O(\spi_mmio_rd_req_cnt[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \spi_mmio_rd_req_cnt[3]_i_1 
       (.I0(\spi_mmio_fsm_state[1]_i_3_n_0 ),
        .I1(spi_mmio_rd_req_cnt0[3]),
        .O(\spi_mmio_rd_req_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \spi_mmio_rd_req_cnt[4]_i_1 
       (.I0(\spi_mmio_fsm_state[1]_i_3_n_0 ),
        .I1(spi_mmio_rd_req_cnt0[4]),
        .O(\spi_mmio_rd_req_cnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \spi_mmio_rd_req_cnt[5]_i_1 
       (.I0(\spi_mmio_fsm_state[1]_i_3_n_0 ),
        .I1(spi_mmio_rd_req_cnt0[5]),
        .O(\spi_mmio_rd_req_cnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \spi_mmio_rd_req_cnt[6]_i_1 
       (.I0(\spi_mmio_fsm_state[1]_i_3_n_0 ),
        .I1(spi_mmio_rd_req_cnt0[6]),
        .O(\spi_mmio_rd_req_cnt[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \spi_mmio_rd_req_cnt[7]_i_1 
       (.I0(\spi_mmio_fsm_state[1]_i_3_n_0 ),
        .I1(spi_mmio_rd_req_cnt0[7]),
        .O(\spi_mmio_rd_req_cnt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \spi_mmio_rd_req_cnt[8]_i_1 
       (.I0(\spi_mmio_fsm_state[1]_i_3_n_0 ),
        .I1(spi_mmio_rd_req_cnt0[8]),
        .O(\spi_mmio_rd_req_cnt[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \spi_mmio_rd_req_cnt[9]_i_1 
       (.I0(\spi_mmio_fsm_state[1]_i_3_n_0 ),
        .I1(spi_mmio_rd_req_cnt0[9]),
        .O(\spi_mmio_rd_req_cnt[9]_i_1_n_0 ));
  FDRE \spi_mmio_rd_req_cnt_reg[0] 
       (.C(aclk),
        .CE(\spi_mmio_rd_req_cnt[31]_i_1_n_0 ),
        .D(\spi_mmio_rd_req_cnt[0]_i_1_n_0 ),
        .Q(spi_mmio_rd_req_cnt__0[0]),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_rd_req_cnt_reg[10] 
       (.C(aclk),
        .CE(\spi_mmio_rd_req_cnt[31]_i_1_n_0 ),
        .D(\spi_mmio_rd_req_cnt[10]_i_1_n_0 ),
        .Q(spi_mmio_rd_req_cnt__0[10]),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_rd_req_cnt_reg[11] 
       (.C(aclk),
        .CE(\spi_mmio_rd_req_cnt[31]_i_1_n_0 ),
        .D(\spi_mmio_rd_req_cnt[11]_i_1_n_0 ),
        .Q(spi_mmio_rd_req_cnt__0[11]),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_rd_req_cnt_reg[12] 
       (.C(aclk),
        .CE(\spi_mmio_rd_req_cnt[31]_i_1_n_0 ),
        .D(\spi_mmio_rd_req_cnt[12]_i_1_n_0 ),
        .Q(spi_mmio_rd_req_cnt__0[12]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \spi_mmio_rd_req_cnt_reg[12]_i_2 
       (.CI(\spi_mmio_rd_req_cnt_reg[8]_i_2_n_0 ),
        .CO({\spi_mmio_rd_req_cnt_reg[12]_i_2_n_0 ,\spi_mmio_rd_req_cnt_reg[12]_i_2_n_1 ,\spi_mmio_rd_req_cnt_reg[12]_i_2_n_2 ,\spi_mmio_rd_req_cnt_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(spi_mmio_rd_req_cnt0[12:9]),
        .S(spi_mmio_rd_req_cnt__0[12:9]));
  FDRE \spi_mmio_rd_req_cnt_reg[13] 
       (.C(aclk),
        .CE(\spi_mmio_rd_req_cnt[31]_i_1_n_0 ),
        .D(\spi_mmio_rd_req_cnt[13]_i_1_n_0 ),
        .Q(spi_mmio_rd_req_cnt__0[13]),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_rd_req_cnt_reg[14] 
       (.C(aclk),
        .CE(\spi_mmio_rd_req_cnt[31]_i_1_n_0 ),
        .D(\spi_mmio_rd_req_cnt[14]_i_1_n_0 ),
        .Q(spi_mmio_rd_req_cnt__0[14]),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_rd_req_cnt_reg[15] 
       (.C(aclk),
        .CE(\spi_mmio_rd_req_cnt[31]_i_1_n_0 ),
        .D(\spi_mmio_rd_req_cnt[15]_i_1_n_0 ),
        .Q(spi_mmio_rd_req_cnt__0[15]),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_rd_req_cnt_reg[16] 
       (.C(aclk),
        .CE(\spi_mmio_rd_req_cnt[31]_i_1_n_0 ),
        .D(\spi_mmio_rd_req_cnt[16]_i_1_n_0 ),
        .Q(spi_mmio_rd_req_cnt__0[16]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \spi_mmio_rd_req_cnt_reg[16]_i_2 
       (.CI(\spi_mmio_rd_req_cnt_reg[12]_i_2_n_0 ),
        .CO({\spi_mmio_rd_req_cnt_reg[16]_i_2_n_0 ,\spi_mmio_rd_req_cnt_reg[16]_i_2_n_1 ,\spi_mmio_rd_req_cnt_reg[16]_i_2_n_2 ,\spi_mmio_rd_req_cnt_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(spi_mmio_rd_req_cnt0[16:13]),
        .S(spi_mmio_rd_req_cnt__0[16:13]));
  FDRE \spi_mmio_rd_req_cnt_reg[17] 
       (.C(aclk),
        .CE(\spi_mmio_rd_req_cnt[31]_i_1_n_0 ),
        .D(\spi_mmio_rd_req_cnt[17]_i_1_n_0 ),
        .Q(spi_mmio_rd_req_cnt__0[17]),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_rd_req_cnt_reg[18] 
       (.C(aclk),
        .CE(\spi_mmio_rd_req_cnt[31]_i_1_n_0 ),
        .D(\spi_mmio_rd_req_cnt[18]_i_1_n_0 ),
        .Q(spi_mmio_rd_req_cnt__0[18]),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_rd_req_cnt_reg[19] 
       (.C(aclk),
        .CE(\spi_mmio_rd_req_cnt[31]_i_1_n_0 ),
        .D(\spi_mmio_rd_req_cnt[19]_i_1_n_0 ),
        .Q(spi_mmio_rd_req_cnt__0[19]),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_rd_req_cnt_reg[1] 
       (.C(aclk),
        .CE(\spi_mmio_rd_req_cnt[31]_i_1_n_0 ),
        .D(\spi_mmio_rd_req_cnt[1]_i_1_n_0 ),
        .Q(spi_mmio_rd_req_cnt__0[1]),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_rd_req_cnt_reg[20] 
       (.C(aclk),
        .CE(\spi_mmio_rd_req_cnt[31]_i_1_n_0 ),
        .D(\spi_mmio_rd_req_cnt[20]_i_1_n_0 ),
        .Q(spi_mmio_rd_req_cnt__0[20]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \spi_mmio_rd_req_cnt_reg[20]_i_2 
       (.CI(\spi_mmio_rd_req_cnt_reg[16]_i_2_n_0 ),
        .CO({\spi_mmio_rd_req_cnt_reg[20]_i_2_n_0 ,\spi_mmio_rd_req_cnt_reg[20]_i_2_n_1 ,\spi_mmio_rd_req_cnt_reg[20]_i_2_n_2 ,\spi_mmio_rd_req_cnt_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(spi_mmio_rd_req_cnt0[20:17]),
        .S(spi_mmio_rd_req_cnt__0[20:17]));
  FDRE \spi_mmio_rd_req_cnt_reg[21] 
       (.C(aclk),
        .CE(\spi_mmio_rd_req_cnt[31]_i_1_n_0 ),
        .D(\spi_mmio_rd_req_cnt[21]_i_1_n_0 ),
        .Q(spi_mmio_rd_req_cnt__0[21]),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_rd_req_cnt_reg[22] 
       (.C(aclk),
        .CE(\spi_mmio_rd_req_cnt[31]_i_1_n_0 ),
        .D(\spi_mmio_rd_req_cnt[22]_i_1_n_0 ),
        .Q(spi_mmio_rd_req_cnt__0[22]),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_rd_req_cnt_reg[23] 
       (.C(aclk),
        .CE(\spi_mmio_rd_req_cnt[31]_i_1_n_0 ),
        .D(\spi_mmio_rd_req_cnt[23]_i_1_n_0 ),
        .Q(spi_mmio_rd_req_cnt__0[23]),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_rd_req_cnt_reg[24] 
       (.C(aclk),
        .CE(\spi_mmio_rd_req_cnt[31]_i_1_n_0 ),
        .D(\spi_mmio_rd_req_cnt[24]_i_1_n_0 ),
        .Q(spi_mmio_rd_req_cnt__0[24]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \spi_mmio_rd_req_cnt_reg[24]_i_2 
       (.CI(\spi_mmio_rd_req_cnt_reg[20]_i_2_n_0 ),
        .CO({\spi_mmio_rd_req_cnt_reg[24]_i_2_n_0 ,\spi_mmio_rd_req_cnt_reg[24]_i_2_n_1 ,\spi_mmio_rd_req_cnt_reg[24]_i_2_n_2 ,\spi_mmio_rd_req_cnt_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(spi_mmio_rd_req_cnt0[24:21]),
        .S(spi_mmio_rd_req_cnt__0[24:21]));
  FDRE \spi_mmio_rd_req_cnt_reg[25] 
       (.C(aclk),
        .CE(\spi_mmio_rd_req_cnt[31]_i_1_n_0 ),
        .D(\spi_mmio_rd_req_cnt[25]_i_1_n_0 ),
        .Q(spi_mmio_rd_req_cnt__0[25]),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_rd_req_cnt_reg[26] 
       (.C(aclk),
        .CE(\spi_mmio_rd_req_cnt[31]_i_1_n_0 ),
        .D(\spi_mmio_rd_req_cnt[26]_i_1_n_0 ),
        .Q(spi_mmio_rd_req_cnt__0[26]),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_rd_req_cnt_reg[27] 
       (.C(aclk),
        .CE(\spi_mmio_rd_req_cnt[31]_i_1_n_0 ),
        .D(\spi_mmio_rd_req_cnt[27]_i_1_n_0 ),
        .Q(spi_mmio_rd_req_cnt__0[27]),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_rd_req_cnt_reg[28] 
       (.C(aclk),
        .CE(\spi_mmio_rd_req_cnt[31]_i_1_n_0 ),
        .D(\spi_mmio_rd_req_cnt[28]_i_1_n_0 ),
        .Q(spi_mmio_rd_req_cnt__0[28]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \spi_mmio_rd_req_cnt_reg[28]_i_2 
       (.CI(\spi_mmio_rd_req_cnt_reg[24]_i_2_n_0 ),
        .CO({\spi_mmio_rd_req_cnt_reg[28]_i_2_n_0 ,\spi_mmio_rd_req_cnt_reg[28]_i_2_n_1 ,\spi_mmio_rd_req_cnt_reg[28]_i_2_n_2 ,\spi_mmio_rd_req_cnt_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(spi_mmio_rd_req_cnt0[28:25]),
        .S(spi_mmio_rd_req_cnt__0[28:25]));
  FDRE \spi_mmio_rd_req_cnt_reg[29] 
       (.C(aclk),
        .CE(\spi_mmio_rd_req_cnt[31]_i_1_n_0 ),
        .D(\spi_mmio_rd_req_cnt[29]_i_1_n_0 ),
        .Q(spi_mmio_rd_req_cnt__0[29]),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_rd_req_cnt_reg[2] 
       (.C(aclk),
        .CE(\spi_mmio_rd_req_cnt[31]_i_1_n_0 ),
        .D(\spi_mmio_rd_req_cnt[2]_i_1_n_0 ),
        .Q(spi_mmio_rd_req_cnt__0[2]),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_rd_req_cnt_reg[30] 
       (.C(aclk),
        .CE(\spi_mmio_rd_req_cnt[31]_i_1_n_0 ),
        .D(\spi_mmio_rd_req_cnt[30]_i_1_n_0 ),
        .Q(spi_mmio_rd_req_cnt__0[30]),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_rd_req_cnt_reg[31] 
       (.C(aclk),
        .CE(\spi_mmio_rd_req_cnt[31]_i_1_n_0 ),
        .D(\spi_mmio_rd_req_cnt[31]_i_2_n_0 ),
        .Q(spi_mmio_rd_req_cnt__0[31]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \spi_mmio_rd_req_cnt_reg[31]_i_3 
       (.CI(\spi_mmio_rd_req_cnt_reg[28]_i_2_n_0 ),
        .CO({\NLW_spi_mmio_rd_req_cnt_reg[31]_i_3_CO_UNCONNECTED [3:2],\spi_mmio_rd_req_cnt_reg[31]_i_3_n_2 ,\spi_mmio_rd_req_cnt_reg[31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_spi_mmio_rd_req_cnt_reg[31]_i_3_O_UNCONNECTED [3],spi_mmio_rd_req_cnt0[31:29]}),
        .S({1'b0,spi_mmio_rd_req_cnt__0[31:29]}));
  FDRE \spi_mmio_rd_req_cnt_reg[3] 
       (.C(aclk),
        .CE(\spi_mmio_rd_req_cnt[31]_i_1_n_0 ),
        .D(\spi_mmio_rd_req_cnt[3]_i_1_n_0 ),
        .Q(spi_mmio_rd_req_cnt__0[3]),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_rd_req_cnt_reg[4] 
       (.C(aclk),
        .CE(\spi_mmio_rd_req_cnt[31]_i_1_n_0 ),
        .D(\spi_mmio_rd_req_cnt[4]_i_1_n_0 ),
        .Q(spi_mmio_rd_req_cnt__0[4]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \spi_mmio_rd_req_cnt_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\spi_mmio_rd_req_cnt_reg[4]_i_2_n_0 ,\spi_mmio_rd_req_cnt_reg[4]_i_2_n_1 ,\spi_mmio_rd_req_cnt_reg[4]_i_2_n_2 ,\spi_mmio_rd_req_cnt_reg[4]_i_2_n_3 }),
        .CYINIT(spi_mmio_rd_req_cnt__0[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(spi_mmio_rd_req_cnt0[4:1]),
        .S(spi_mmio_rd_req_cnt__0[4:1]));
  FDRE \spi_mmio_rd_req_cnt_reg[5] 
       (.C(aclk),
        .CE(\spi_mmio_rd_req_cnt[31]_i_1_n_0 ),
        .D(\spi_mmio_rd_req_cnt[5]_i_1_n_0 ),
        .Q(spi_mmio_rd_req_cnt__0[5]),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_rd_req_cnt_reg[6] 
       (.C(aclk),
        .CE(\spi_mmio_rd_req_cnt[31]_i_1_n_0 ),
        .D(\spi_mmio_rd_req_cnt[6]_i_1_n_0 ),
        .Q(spi_mmio_rd_req_cnt__0[6]),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_rd_req_cnt_reg[7] 
       (.C(aclk),
        .CE(\spi_mmio_rd_req_cnt[31]_i_1_n_0 ),
        .D(\spi_mmio_rd_req_cnt[7]_i_1_n_0 ),
        .Q(spi_mmio_rd_req_cnt__0[7]),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_rd_req_cnt_reg[8] 
       (.C(aclk),
        .CE(\spi_mmio_rd_req_cnt[31]_i_1_n_0 ),
        .D(\spi_mmio_rd_req_cnt[8]_i_1_n_0 ),
        .Q(spi_mmio_rd_req_cnt__0[8]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \spi_mmio_rd_req_cnt_reg[8]_i_2 
       (.CI(\spi_mmio_rd_req_cnt_reg[4]_i_2_n_0 ),
        .CO({\spi_mmio_rd_req_cnt_reg[8]_i_2_n_0 ,\spi_mmio_rd_req_cnt_reg[8]_i_2_n_1 ,\spi_mmio_rd_req_cnt_reg[8]_i_2_n_2 ,\spi_mmio_rd_req_cnt_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(spi_mmio_rd_req_cnt0[8:5]),
        .S(spi_mmio_rd_req_cnt__0[8:5]));
  FDRE \spi_mmio_rd_req_cnt_reg[9] 
       (.C(aclk),
        .CE(\spi_mmio_rd_req_cnt[31]_i_1_n_0 ),
        .D(\spi_mmio_rd_req_cnt[9]_i_1_n_0 ),
        .Q(spi_mmio_rd_req_cnt__0[9]),
        .R(s_axi_lite_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    \spi_mode[0]_i_1 
       (.I0(s_axi_lite_wdata[2]),
        .I1(\spi_mode[1]_i_2_n_0 ),
        .I2(\FSM_onehot_spi_fsm_state_reg_n_0_[0] ),
        .I3(\spi_mode_reg_n_0_[0] ),
        .O(\spi_mode[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \spi_mode[1]_i_1 
       (.I0(s_axi_lite_wdata[3]),
        .I1(\spi_mode[1]_i_2_n_0 ),
        .I2(\FSM_onehot_spi_fsm_state_reg_n_0_[0] ),
        .I3(spi_cpol),
        .O(\spi_mode[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \spi_mode[1]_i_2 
       (.I0(spi_lsb_first_i_2_n_0),
        .I1(s_axi_lite_wstrb[0]),
        .I2(s_axi_lite_awready),
        .I3(spi_mmio_en),
        .I4(s_axi_lite_awaddr[2]),
        .O(\spi_mode[1]_i_2_n_0 ));
  FDRE \spi_mode_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\spi_mode[0]_i_1_n_0 ),
        .Q(\spi_mode_reg_n_0_[0] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mode_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\spi_mode[1]_i_1_n_0 ),
        .Q(spi_cpol),
        .R(s_axi_lite_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF800000)) 
    spi_rd_req_ack_i_1
       (.I0(spi_io_mode_q1),
        .I1(\spi_io_mode_q[2]_i_2_n_0 ),
        .I2(\FSM_onehot_spi_fsm_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_spi_fsm_state_reg_n_0_[0] ),
        .I4(spi_dir_i_1_n_0),
        .I5(spi_rd_req_ack_i_2_n_0),
        .O(spi_rd_req_ack));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hFE000000)) 
    spi_rd_req_ack_i_2
       (.I0(\FSM_onehot_spi_fsm_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_spi_fsm_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_spi_fsm_state_reg_n_0_[2] ),
        .I3(spi_rd_req_reg_n_0),
        .I4(spi_rd_req_ack_reg_n_0),
        .O(spi_rd_req_ack_i_2_n_0));
  FDRE spi_rd_req_ack_reg
       (.C(aclk),
        .CE(1'b1),
        .D(spi_rd_req_ack),
        .Q(spi_rd_req_ack_reg_n_0),
        .R(p_5_in));
  LUT5 #(
    .INIT(32'hFFFBFFF8)) 
    spi_rd_req_i_1
       (.I0(spi_rd_req_i_2_n_0),
        .I1(spi_rd_req_i_3_n_0),
        .I2(spi_rd_req_i_4_n_0),
        .I3(spi_rd_req_i_5_n_0),
        .I4(spi_rd_req_reg_n_0),
        .O(spi_rd_req_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFF707070)) 
    spi_rd_req_i_2
       (.I0(spi_rd_req_reg_n_0),
        .I1(spi_rd_req_ack_reg_n_0),
        .I2(spi_en_reg_n_0),
        .I3(s_axi_lite_awready),
        .I4(spi_rd_req_i_6_n_0),
        .O(spi_rd_req_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFF8F8F8F)) 
    spi_rd_req_i_3
       (.I0(spi_rd_req_reg_n_0),
        .I1(spi_rd_req_ack_reg_n_0),
        .I2(spi_en_reg_n_0),
        .I3(s_axi_lite_awready),
        .I4(spi_rd_req_i_6_n_0),
        .O(spi_rd_req_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF002A0000)) 
    spi_rd_req_i_4
       (.I0(\spi_mmio_fsm_state_next_reg[3]_i_5_n_0 ),
        .I1(\spi_ss_o_reg[0]_0 ),
        .I2(\spi_mmio_cs_mask_reg_n_0_[0] ),
        .I3(\spi_mmio_fsm_state_next[3]_i_3_n_0 ),
        .I4(s_axi_full_arready_i_3_n_0),
        .I5(spi_rd_req_i_7_n_0),
        .O(spi_rd_req_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF70770000)) 
    spi_rd_req_i_5
       (.I0(spi_rd_req4),
        .I1(s_axi_full_rlast_i_4_n_0),
        .I2(spi_sr_in_buf_ready_reg_n_0),
        .I3(spi_sr_in_buf_valid_reg_n_0),
        .I4(spi_rd_req_i_8_n_0),
        .I5(spi_rd_req_i_9_n_0),
        .O(spi_rd_req_i_5_n_0));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    spi_rd_req_i_6
       (.I0(spi_sr_out_buf_valid_i_4_n_0),
        .I1(spi_rd_req_reg_n_0),
        .I2(s_axi_lite_wdata[9]),
        .I3(s_axi_lite_wdata[8]),
        .I4(s_axi_lite_awaddr[2]),
        .I5(spi_lsb_first_i_2_n_0),
        .O(spi_rd_req_i_6_n_0));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    spi_rd_req_i_7
       (.I0(\spi_mmio_fsm_state_reg_n_0_[3] ),
        .I1(\spi_mmio_fsm_state_reg_n_0_[2] ),
        .I2(spi_sr_out_buf_valid),
        .I3(spi_rd_req_reg_n_0),
        .I4(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I5(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .O(spi_rd_req_i_7_n_0));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    spi_rd_req_i_8
       (.I0(spi_rd_req_reg_n_0),
        .I1(spi_mmio_en),
        .I2(\spi_mmio_fsm_state_reg_n_0_[2] ),
        .I3(\spi_mmio_fsm_state_reg_n_0_[3] ),
        .I4(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I5(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .O(spi_rd_req_i_8_n_0));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    spi_rd_req_i_9
       (.I0(\spi_mmio_fsm_state_reg_n_0_[2] ),
        .I1(\spi_mmio_fsm_state_reg_n_0_[3] ),
        .I2(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I3(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I4(spi_rd_req_reg_n_0),
        .I5(spi_sr_out_buf_valid),
        .O(spi_rd_req_i_9_n_0));
  FDRE spi_rd_req_reg
       (.C(aclk),
        .CE(1'b1),
        .D(spi_rd_req_i_1_n_0),
        .Q(spi_rd_req_reg_n_0),
        .R(s_axi_lite_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \spi_sck_div[7]_i_1 
       (.I0(s_axi_lite_awaddr[2]),
        .I1(s_axi_lite_awaddr[1]),
        .I2(\spi_sck_div[7]_i_2_n_0 ),
        .I3(spi_sck_div_en_reg_n_0),
        .I4(s_axi_lite_wstrb[0]),
        .I5(s_axi_lite_awready),
        .O(spi_sck_div));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \spi_sck_div[7]_i_2 
       (.I0(s_axi_lite_awaddr[0]),
        .I1(s_axi_lite_awaddr[3]),
        .O(\spi_sck_div[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \spi_sck_div_cnt[0]_i_1 
       (.I0(spi_sck_div_cnt_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \spi_sck_div_cnt[1]_i_1 
       (.I0(spi_sck_div_cnt_reg[0]),
        .I1(spi_sck_div_cnt_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \spi_sck_div_cnt[2]_i_1 
       (.I0(spi_sck_div_cnt_reg[0]),
        .I1(spi_sck_div_cnt_reg[1]),
        .I2(spi_sck_div_cnt_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \spi_sck_div_cnt[3]_i_1 
       (.I0(spi_sck_div_cnt_reg[2]),
        .I1(spi_sck_div_cnt_reg[1]),
        .I2(spi_sck_div_cnt_reg[0]),
        .I3(spi_sck_div_cnt_reg[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \spi_sck_div_cnt[4]_i_1 
       (.I0(spi_sck_div_cnt_reg[3]),
        .I1(spi_sck_div_cnt_reg[0]),
        .I2(spi_sck_div_cnt_reg[1]),
        .I3(spi_sck_div_cnt_reg[2]),
        .I4(spi_sck_div_cnt_reg[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \spi_sck_div_cnt[5]_i_1 
       (.I0(spi_sck_div_cnt_reg[2]),
        .I1(spi_sck_div_cnt_reg[1]),
        .I2(spi_sck_div_cnt_reg[0]),
        .I3(spi_sck_div_cnt_reg[3]),
        .I4(spi_sck_div_cnt_reg[4]),
        .I5(spi_sck_div_cnt_reg[5]),
        .O(p_0_in[5]));
  LUT2 #(
    .INIT(4'h9)) 
    \spi_sck_div_cnt[6]_i_1 
       (.I0(\spi_sck_div_cnt[7]_i_4_n_0 ),
        .I1(spi_sck_div_cnt_reg[6]),
        .O(p_0_in[6]));
  LUT2 #(
    .INIT(4'hB)) 
    \spi_sck_div_cnt[7]_i_1 
       (.I0(\spi_sck_div_cnt[7]_i_3_n_0 ),
        .I1(spi_sck_div_en_reg_n_0),
        .O(\spi_sck_div_cnt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \spi_sck_div_cnt[7]_i_2 
       (.I0(spi_sck_div_cnt_reg[6]),
        .I1(\spi_sck_div_cnt[7]_i_4_n_0 ),
        .I2(spi_sck_div_cnt_reg[7]),
        .O(p_0_in[7]));
  LUT4 #(
    .INIT(16'h0001)) 
    \spi_sck_div_cnt[7]_i_3 
       (.I0(\spi_io_o[0]_i_8_n_0 ),
        .I1(\spi_io_o[0]_i_9_n_0 ),
        .I2(\spi_io_o[0]_i_10_n_0 ),
        .I3(\spi_io_o[0]_i_11_n_0 ),
        .O(\spi_sck_div_cnt[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \spi_sck_div_cnt[7]_i_4 
       (.I0(spi_sck_div_cnt_reg[2]),
        .I1(spi_sck_div_cnt_reg[1]),
        .I2(spi_sck_div_cnt_reg[0]),
        .I3(spi_sck_div_cnt_reg[3]),
        .I4(spi_sck_div_cnt_reg[4]),
        .I5(spi_sck_div_cnt_reg[5]),
        .O(\spi_sck_div_cnt[7]_i_4_n_0 ));
  FDRE \spi_sck_div_cnt_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(spi_sck_div_cnt_reg[0]),
        .R(\spi_sck_div_cnt[7]_i_1_n_0 ));
  FDRE \spi_sck_div_cnt_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(spi_sck_div_cnt_reg[1]),
        .R(\spi_sck_div_cnt[7]_i_1_n_0 ));
  FDRE \spi_sck_div_cnt_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(spi_sck_div_cnt_reg[2]),
        .R(\spi_sck_div_cnt[7]_i_1_n_0 ));
  FDRE \spi_sck_div_cnt_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(spi_sck_div_cnt_reg[3]),
        .R(\spi_sck_div_cnt[7]_i_1_n_0 ));
  FDRE \spi_sck_div_cnt_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(spi_sck_div_cnt_reg[4]),
        .R(\spi_sck_div_cnt[7]_i_1_n_0 ));
  FDRE \spi_sck_div_cnt_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(spi_sck_div_cnt_reg[5]),
        .R(\spi_sck_div_cnt[7]_i_1_n_0 ));
  FDRE \spi_sck_div_cnt_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(spi_sck_div_cnt_reg[6]),
        .R(\spi_sck_div_cnt[7]_i_1_n_0 ));
  FDRE \spi_sck_div_cnt_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[7]),
        .Q(spi_sck_div_cnt_reg[7]),
        .R(\spi_sck_div_cnt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hEAFF2A00)) 
    spi_sck_div_en_i_1
       (.I0(s_axi_lite_wdata[0]),
        .I1(spi_en_reg_n_0),
        .I2(s_axi_lite_wdata[1]),
        .I3(\spi_mode[1]_i_2_n_0 ),
        .I4(spi_sck_div_en_reg_n_0),
        .O(spi_sck_div_en_i_1_n_0));
  FDRE spi_sck_div_en_reg
       (.C(aclk),
        .CE(1'b1),
        .D(spi_sck_div_en_i_1_n_0),
        .Q(spi_sck_div_en_reg_n_0),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_sck_div_reg[0] 
       (.C(aclk),
        .CE(spi_sck_div),
        .D(s_axi_lite_wdata[0]),
        .Q(\spi_sck_div_reg_n_0_[0] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_sck_div_reg[1] 
       (.C(aclk),
        .CE(spi_sck_div),
        .D(s_axi_lite_wdata[1]),
        .Q(\spi_sck_div_reg_n_0_[1] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_sck_div_reg[2] 
       (.C(aclk),
        .CE(spi_sck_div),
        .D(s_axi_lite_wdata[2]),
        .Q(\spi_sck_div_reg_n_0_[2] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_sck_div_reg[3] 
       (.C(aclk),
        .CE(spi_sck_div),
        .D(s_axi_lite_wdata[3]),
        .Q(\spi_sck_div_reg_n_0_[3] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_sck_div_reg[4] 
       (.C(aclk),
        .CE(spi_sck_div),
        .D(s_axi_lite_wdata[4]),
        .Q(\spi_sck_div_reg_n_0_[4] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_sck_div_reg[5] 
       (.C(aclk),
        .CE(spi_sck_div),
        .D(s_axi_lite_wdata[5]),
        .Q(\spi_sck_div_reg_n_0_[5] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_sck_div_reg[6] 
       (.C(aclk),
        .CE(spi_sck_div),
        .D(s_axi_lite_wdata[6]),
        .Q(\spi_sck_div_reg_n_0_[6] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_sck_div_reg[7] 
       (.C(aclk),
        .CE(spi_sck_div),
        .D(s_axi_lite_wdata[7]),
        .Q(\spi_sck_div_reg_n_0_[7] ),
        .R(s_axi_lite_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'h60)) 
    spi_sck_int_i_1
       (.I0(spi_sck_int),
        .I1(\spi_sck_div_cnt[7]_i_3_n_0 ),
        .I2(spi_sck_div_en_reg_n_0),
        .O(spi_sck_int_i_1_n_0));
  FDRE spi_sck_int_reg
       (.C(aclk),
        .CE(1'b1),
        .D(spi_sck_int_i_1_n_0),
        .Q(spi_sck_int),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'h78)) 
    spi_sck_o_INST_0
       (.I0(spi_sck_int),
        .I1(spi_sck_oe_reg_n_0),
        .I2(spi_cpol),
        .O(spi_sck_o));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    spi_sck_oe_i_1
       (.I0(\spi_sr_bit_cnt_reg_n_0_[4] ),
        .I1(\spi_sr_bit_cnt_reg_n_0_[2] ),
        .I2(\spi_sr_bit_cnt_reg_n_0_[3] ),
        .I3(\spi_sr_bit_cnt_reg_n_0_[0] ),
        .I4(\spi_sr_bit_cnt_reg_n_0_[1] ),
        .I5(\FSM_onehot_spi_fsm_state_reg_n_0_[2] ),
        .O(spi_sck_oe));
  FDRE spi_sck_oe_reg
       (.C(aclk),
        .CE(\spi_io_o[0]_i_2_n_0 ),
        .D(spi_sck_oe),
        .Q(spi_sck_oe_reg_n_0),
        .R(p_5_in));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \spi_sr[0]_i_1 
       (.I0(\FSM_onehot_spi_fsm_state_reg_n_0_[1] ),
        .I1(\spi_sr[7]_i_2_n_0 ),
        .I2(\spi_sr_out_buf_reg_n_0_[0] ),
        .I3(spi_sr_in_buf0_in[0]),
        .I4(\spi_sr_bit_cnt[4]_i_4_n_0 ),
        .O(\spi_sr[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \spi_sr[1]_i_1 
       (.I0(\FSM_onehot_spi_fsm_state_reg_n_0_[1] ),
        .I1(\spi_sr[7]_i_2_n_0 ),
        .I2(\spi_sr_out_buf_reg_n_0_[1] ),
        .I3(spi_sr_in_buf0_in[1]),
        .I4(\spi_sr_bit_cnt[4]_i_4_n_0 ),
        .O(\spi_sr[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \spi_sr[2]_i_1 
       (.I0(\FSM_onehot_spi_fsm_state_reg_n_0_[1] ),
        .I1(\spi_sr[7]_i_2_n_0 ),
        .I2(\spi_sr_out_buf_reg_n_0_[2] ),
        .I3(spi_sr_in_buf0_in[2]),
        .I4(\spi_sr_bit_cnt[4]_i_4_n_0 ),
        .O(\spi_sr[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \spi_sr[3]_i_1 
       (.I0(\FSM_onehot_spi_fsm_state_reg_n_0_[1] ),
        .I1(\spi_sr[7]_i_2_n_0 ),
        .I2(\spi_sr_out_buf_reg_n_0_[3] ),
        .I3(spi_sr_in_buf0_in[3]),
        .I4(\spi_sr_bit_cnt[4]_i_4_n_0 ),
        .O(\spi_sr[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \spi_sr[4]_i_1 
       (.I0(\FSM_onehot_spi_fsm_state_reg_n_0_[1] ),
        .I1(\spi_sr[7]_i_2_n_0 ),
        .I2(\spi_sr_out_buf_reg_n_0_[4] ),
        .I3(spi_sr_in_buf0_in[4]),
        .I4(\spi_sr_bit_cnt[4]_i_4_n_0 ),
        .O(\spi_sr[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \spi_sr[5]_i_1 
       (.I0(\FSM_onehot_spi_fsm_state_reg_n_0_[1] ),
        .I1(\spi_sr[7]_i_2_n_0 ),
        .I2(\spi_sr_out_buf_reg_n_0_[5] ),
        .I3(spi_sr_in_buf0_in[5]),
        .I4(\spi_sr_bit_cnt[4]_i_4_n_0 ),
        .O(\spi_sr[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \spi_sr[6]_i_1 
       (.I0(\FSM_onehot_spi_fsm_state_reg_n_0_[1] ),
        .I1(\spi_sr[7]_i_2_n_0 ),
        .I2(\spi_sr_out_buf_reg_n_0_[6] ),
        .I3(spi_sr_in_buf0_in[6]),
        .I4(\spi_sr_bit_cnt[4]_i_4_n_0 ),
        .O(\spi_sr[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \spi_sr[7]_i_1 
       (.I0(\FSM_onehot_spi_fsm_state_reg_n_0_[1] ),
        .I1(\spi_sr[7]_i_2_n_0 ),
        .I2(\spi_sr_out_buf_reg_n_0_[7] ),
        .I3(spi_sr_in_buf0_in[7]),
        .I4(\spi_sr_bit_cnt[4]_i_4_n_0 ),
        .O(\spi_sr[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'hEA00)) 
    \spi_sr[7]_i_2 
       (.I0(\FSM_onehot_spi_fsm_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_spi_fsm_state_reg_n_0_[2] ),
        .I2(\spi_io_mode_q[2]_i_2_n_0 ),
        .I3(spi_sr_out_buf_valid),
        .O(\spi_sr[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \spi_sr_bit_cnt[0]_i_1 
       (.I0(\spi_sr_bit_cnt[4]_i_4_n_0 ),
        .I1(\spi_sr_bit_cnt_reg_n_0_[0] ),
        .I2(\spi_io_mode_q_reg_n_0_[0] ),
        .O(spi_sr_bit_cnt[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h28822828)) 
    \spi_sr_bit_cnt[1]_i_1 
       (.I0(\spi_sr_bit_cnt[4]_i_4_n_0 ),
        .I1(\spi_sr_bit_cnt_reg_n_0_[1] ),
        .I2(\spi_io_mode_q_reg_n_0_[1] ),
        .I3(\spi_sr_bit_cnt_reg_n_0_[0] ),
        .I4(\spi_io_mode_q_reg_n_0_[0] ),
        .O(spi_sr_bit_cnt[1]));
  LUT4 #(
    .INIT(16'h2882)) 
    \spi_sr_bit_cnt[2]_i_1 
       (.I0(\spi_sr_bit_cnt[4]_i_4_n_0 ),
        .I1(\spi_sr_bit_cnt[4]_i_3_n_0 ),
        .I2(\spi_sr_bit_cnt_reg_n_0_[2] ),
        .I3(\spi_io_mode_q_reg_n_0_[2] ),
        .O(spi_sr_bit_cnt[2]));
  LUT6 #(
    .INIT(64'hFFF8F0F0F8FFF0F0)) 
    \spi_sr_bit_cnt[3]_i_1 
       (.I0(\spi_io_mode_q[2]_i_2_n_0 ),
        .I1(\FSM_onehot_spi_fsm_state[2]_i_2_n_0 ),
        .I2(\FSM_onehot_spi_fsm_state_reg_n_0_[0] ),
        .I3(\spi_sr_bit_cnt[3]_i_2_n_0 ),
        .I4(\FSM_onehot_spi_fsm_state_reg_n_0_[2] ),
        .I5(\spi_sr_bit_cnt_reg_n_0_[3] ),
        .O(spi_sr_bit_cnt[3]));
  LUT6 #(
    .INIT(64'hF775F7F751105151)) 
    \spi_sr_bit_cnt[3]_i_2 
       (.I0(\spi_io_mode_q_reg_n_0_[2] ),
        .I1(\spi_io_mode_q_reg_n_0_[1] ),
        .I2(\spi_sr_bit_cnt_reg_n_0_[1] ),
        .I3(\spi_sr_bit_cnt_reg_n_0_[0] ),
        .I4(\spi_io_mode_q_reg_n_0_[0] ),
        .I5(\spi_sr_bit_cnt_reg_n_0_[2] ),
        .O(\spi_sr_bit_cnt[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8A888A888A88)) 
    \spi_sr_bit_cnt[4]_i_1 
       (.I0(\FSM_onehot_spi_fsm_state_reg_n_0_[0] ),
        .I1(spi_sr_out_buf_valid),
        .I2(spi_rd_req_ack_reg_n_0),
        .I3(spi_rd_req_reg_n_0),
        .I4(spi_io_mode_q1),
        .I5(\FSM_onehot_spi_fsm_state_reg_n_0_[2] ),
        .O(\spi_sr_bit_cnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF8E000000710000)) 
    \spi_sr_bit_cnt[4]_i_2 
       (.I0(\spi_sr_bit_cnt_reg_n_0_[2] ),
        .I1(\spi_sr_bit_cnt[4]_i_3_n_0 ),
        .I2(\spi_io_mode_q_reg_n_0_[2] ),
        .I3(\spi_sr_bit_cnt_reg_n_0_[3] ),
        .I4(\spi_sr_bit_cnt[4]_i_4_n_0 ),
        .I5(\spi_sr_bit_cnt_reg_n_0_[4] ),
        .O(spi_sr_bit_cnt[4]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hD4DD)) 
    \spi_sr_bit_cnt[4]_i_3 
       (.I0(\spi_io_mode_q_reg_n_0_[1] ),
        .I1(\spi_sr_bit_cnt_reg_n_0_[1] ),
        .I2(\spi_sr_bit_cnt_reg_n_0_[0] ),
        .I3(\spi_io_mode_q_reg_n_0_[0] ),
        .O(\spi_sr_bit_cnt[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h75770000)) 
    \spi_sr_bit_cnt[4]_i_4 
       (.I0(\spi_io_mode_q[2]_i_2_n_0 ),
        .I1(spi_sr_out_buf_valid),
        .I2(spi_rd_req_ack_reg_n_0),
        .I3(spi_rd_req_reg_n_0),
        .I4(\FSM_onehot_spi_fsm_state_reg_n_0_[2] ),
        .O(\spi_sr_bit_cnt[4]_i_4_n_0 ));
  FDRE \spi_sr_bit_cnt_reg[0] 
       (.C(aclk),
        .CE(\spi_sr_bit_cnt[4]_i_1_n_0 ),
        .D(spi_sr_bit_cnt[0]),
        .Q(\spi_sr_bit_cnt_reg_n_0_[0] ),
        .R(p_5_in));
  FDRE \spi_sr_bit_cnt_reg[1] 
       (.C(aclk),
        .CE(\spi_sr_bit_cnt[4]_i_1_n_0 ),
        .D(spi_sr_bit_cnt[1]),
        .Q(\spi_sr_bit_cnt_reg_n_0_[1] ),
        .R(p_5_in));
  FDRE \spi_sr_bit_cnt_reg[2] 
       (.C(aclk),
        .CE(\spi_sr_bit_cnt[4]_i_1_n_0 ),
        .D(spi_sr_bit_cnt[2]),
        .Q(\spi_sr_bit_cnt_reg_n_0_[2] ),
        .R(p_5_in));
  FDRE \spi_sr_bit_cnt_reg[3] 
       (.C(aclk),
        .CE(\spi_sr_bit_cnt[4]_i_1_n_0 ),
        .D(spi_sr_bit_cnt[3]),
        .Q(\spi_sr_bit_cnt_reg_n_0_[3] ),
        .R(p_5_in));
  FDRE \spi_sr_bit_cnt_reg[4] 
       (.C(aclk),
        .CE(\spi_sr_bit_cnt[4]_i_1_n_0 ),
        .D(spi_sr_bit_cnt[4]),
        .Q(\spi_sr_bit_cnt_reg_n_0_[4] ),
        .R(p_5_in));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \spi_sr_in_buf[0]_i_1 
       (.I0(data00),
        .I1(\spi_sr_in_buf[7]_i_3_n_0 ),
        .I2(\spi_sr_reg_n_0_[0] ),
        .I3(\spi_sr_in_buf[7]_i_4_n_0 ),
        .I4(\spi_sr_in_buf[0]_i_2_n_0 ),
        .I5(\spi_sr_in_buf[0]_i_3_n_0 ),
        .O(spi_sr_in_buf0_in[0]));
  LUT6 #(
    .INIT(64'h00200020030C0000)) 
    \spi_sr_in_buf[0]_i_2 
       (.I0(\spi_sr_reg_n_0_[1] ),
        .I1(\spi_io_mode_q_reg_n_0_[2] ),
        .I2(\spi_io_mode_q_reg_n_0_[0] ),
        .I3(\spi_io_mode_q_reg_n_0_[1] ),
        .I4(\spi_io_i_reg_n_0_[0] ),
        .I5(spi_lsb_first_reg_n_0),
        .O(\spi_sr_in_buf[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000A0C0000000000)) 
    \spi_sr_in_buf[0]_i_3 
       (.I0(\spi_sr_reg_n_0_[4] ),
        .I1(\spi_sr_reg_n_0_[2] ),
        .I2(\spi_io_mode_q_reg_n_0_[0] ),
        .I3(\spi_io_mode_q_reg_n_0_[1] ),
        .I4(\spi_io_mode_q_reg_n_0_[2] ),
        .I5(spi_lsb_first_reg_n_0),
        .O(\spi_sr_in_buf[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \spi_sr_in_buf[1]_i_1 
       (.I0(\spi_sr_reg_n_0_[0] ),
        .I1(\spi_sr_in_buf[7]_i_3_n_0 ),
        .I2(\spi_sr_reg_n_0_[1] ),
        .I3(\spi_sr_in_buf[7]_i_4_n_0 ),
        .I4(\spi_sr_in_buf[1]_i_2_n_0 ),
        .I5(\spi_sr_in_buf[1]_i_3_n_0 ),
        .O(spi_sr_in_buf0_in[1]));
  LUT6 #(
    .INIT(64'h00200020030C0000)) 
    \spi_sr_in_buf[1]_i_2 
       (.I0(\spi_sr_reg_n_0_[2] ),
        .I1(\spi_io_mode_q_reg_n_0_[2] ),
        .I2(\spi_io_mode_q_reg_n_0_[0] ),
        .I3(\spi_io_mode_q_reg_n_0_[1] ),
        .I4(data00),
        .I5(spi_lsb_first_reg_n_0),
        .O(\spi_sr_in_buf[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000A0C0000000000)) 
    \spi_sr_in_buf[1]_i_3 
       (.I0(\spi_sr_reg_n_0_[5] ),
        .I1(\spi_sr_reg_n_0_[3] ),
        .I2(\spi_io_mode_q_reg_n_0_[0] ),
        .I3(\spi_io_mode_q_reg_n_0_[1] ),
        .I4(\spi_io_mode_q_reg_n_0_[2] ),
        .I5(spi_lsb_first_reg_n_0),
        .O(\spi_sr_in_buf[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \spi_sr_in_buf[2]_i_1 
       (.I0(\spi_sr_reg_n_0_[1] ),
        .I1(\spi_sr_in_buf[7]_i_3_n_0 ),
        .I2(\spi_sr_reg_n_0_[2] ),
        .I3(\spi_sr_in_buf[7]_i_4_n_0 ),
        .I4(\spi_sr_in_buf[2]_i_2_n_0 ),
        .I5(\spi_sr_in_buf[2]_i_3_n_0 ),
        .O(spi_sr_in_buf0_in[2]));
  LUT6 #(
    .INIT(64'h00000A00000000C0)) 
    \spi_sr_in_buf[2]_i_2 
       (.I0(\spi_sr_reg_n_0_[3] ),
        .I1(\spi_io_i_reg_n_0_[2] ),
        .I2(\spi_io_mode_q_reg_n_0_[2] ),
        .I3(\spi_io_mode_q_reg_n_0_[0] ),
        .I4(\spi_io_mode_q_reg_n_0_[1] ),
        .I5(spi_lsb_first_reg_n_0),
        .O(\spi_sr_in_buf[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \spi_sr_in_buf[2]_i_3 
       (.I0(\spi_sr_in_buf[7]_i_7_n_0 ),
        .I1(\spi_sr_reg_n_0_[0] ),
        .I2(\spi_sr_in_buf[7]_i_8_n_0 ),
        .I3(\spi_sr_reg_n_0_[4] ),
        .I4(\spi_sr_reg_n_0_[6] ),
        .I5(\spi_sr_in_buf[7]_i_9_n_0 ),
        .O(\spi_sr_in_buf[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \spi_sr_in_buf[3]_i_1 
       (.I0(\spi_sr_reg_n_0_[2] ),
        .I1(\spi_sr_in_buf[7]_i_3_n_0 ),
        .I2(\spi_sr_reg_n_0_[3] ),
        .I3(\spi_sr_in_buf[7]_i_4_n_0 ),
        .I4(\spi_sr_in_buf[3]_i_2_n_0 ),
        .I5(\spi_sr_in_buf[3]_i_3_n_0 ),
        .O(spi_sr_in_buf0_in[3]));
  LUT6 #(
    .INIT(64'h00000A00000000C0)) 
    \spi_sr_in_buf[3]_i_2 
       (.I0(\spi_sr_reg_n_0_[4] ),
        .I1(\spi_io_i_reg_n_0_[3] ),
        .I2(\spi_io_mode_q_reg_n_0_[2] ),
        .I3(\spi_io_mode_q_reg_n_0_[0] ),
        .I4(\spi_io_mode_q_reg_n_0_[1] ),
        .I5(spi_lsb_first_reg_n_0),
        .O(\spi_sr_in_buf[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \spi_sr_in_buf[3]_i_3 
       (.I0(\spi_sr_in_buf[7]_i_7_n_0 ),
        .I1(\spi_sr_reg_n_0_[1] ),
        .I2(\spi_sr_in_buf[7]_i_8_n_0 ),
        .I3(\spi_sr_reg_n_0_[5] ),
        .I4(p_2_in),
        .I5(\spi_sr_in_buf[7]_i_9_n_0 ),
        .O(\spi_sr_in_buf[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \spi_sr_in_buf[4]_i_1 
       (.I0(\spi_sr_reg_n_0_[3] ),
        .I1(\spi_sr_in_buf[7]_i_3_n_0 ),
        .I2(\spi_sr_reg_n_0_[4] ),
        .I3(\spi_sr_in_buf[7]_i_4_n_0 ),
        .I4(\spi_sr_in_buf[4]_i_2_n_0 ),
        .I5(\spi_sr_in_buf[4]_i_3_n_0 ),
        .O(spi_sr_in_buf0_in[4]));
  LUT6 #(
    .INIT(64'h00000A00000000C0)) 
    \spi_sr_in_buf[4]_i_2 
       (.I0(\spi_sr_reg_n_0_[5] ),
        .I1(\spi_sr_reg_n_0_[0] ),
        .I2(\spi_io_mode_q_reg_n_0_[2] ),
        .I3(\spi_io_mode_q_reg_n_0_[0] ),
        .I4(\spi_io_mode_q_reg_n_0_[1] ),
        .I5(spi_lsb_first_reg_n_0),
        .O(\spi_sr_in_buf[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \spi_sr_in_buf[4]_i_3 
       (.I0(\spi_sr_in_buf[7]_i_7_n_0 ),
        .I1(\spi_sr_reg_n_0_[2] ),
        .I2(\spi_sr_in_buf[7]_i_8_n_0 ),
        .I3(\spi_sr_reg_n_0_[6] ),
        .I4(\spi_io_i_reg_n_0_[0] ),
        .I5(\spi_sr_in_buf[7]_i_9_n_0 ),
        .O(\spi_sr_in_buf[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \spi_sr_in_buf[5]_i_1 
       (.I0(\spi_sr_reg_n_0_[4] ),
        .I1(\spi_sr_in_buf[7]_i_3_n_0 ),
        .I2(\spi_sr_reg_n_0_[5] ),
        .I3(\spi_sr_in_buf[7]_i_4_n_0 ),
        .I4(\spi_sr_in_buf[5]_i_2_n_0 ),
        .I5(\spi_sr_in_buf[5]_i_3_n_0 ),
        .O(spi_sr_in_buf0_in[5]));
  LUT6 #(
    .INIT(64'h00000A00000000C0)) 
    \spi_sr_in_buf[5]_i_2 
       (.I0(\spi_sr_reg_n_0_[6] ),
        .I1(\spi_sr_reg_n_0_[1] ),
        .I2(\spi_io_mode_q_reg_n_0_[2] ),
        .I3(\spi_io_mode_q_reg_n_0_[0] ),
        .I4(\spi_io_mode_q_reg_n_0_[1] ),
        .I5(spi_lsb_first_reg_n_0),
        .O(\spi_sr_in_buf[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \spi_sr_in_buf[5]_i_3 
       (.I0(\spi_sr_in_buf[7]_i_7_n_0 ),
        .I1(\spi_sr_reg_n_0_[3] ),
        .I2(\spi_sr_in_buf[7]_i_8_n_0 ),
        .I3(p_2_in),
        .I4(data00),
        .I5(\spi_sr_in_buf[7]_i_9_n_0 ),
        .O(\spi_sr_in_buf[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \spi_sr_in_buf[6]_i_1 
       (.I0(\spi_sr_reg_n_0_[5] ),
        .I1(\spi_sr_in_buf[7]_i_3_n_0 ),
        .I2(\spi_sr_reg_n_0_[6] ),
        .I3(\spi_sr_in_buf[7]_i_4_n_0 ),
        .I4(\spi_sr_in_buf[6]_i_2_n_0 ),
        .I5(\spi_sr_in_buf[6]_i_3_n_0 ),
        .O(spi_sr_in_buf0_in[6]));
  LUT6 #(
    .INIT(64'h00000A00000000C0)) 
    \spi_sr_in_buf[6]_i_2 
       (.I0(p_2_in),
        .I1(\spi_sr_reg_n_0_[2] ),
        .I2(\spi_io_mode_q_reg_n_0_[2] ),
        .I3(\spi_io_mode_q_reg_n_0_[0] ),
        .I4(\spi_io_mode_q_reg_n_0_[1] ),
        .I5(spi_lsb_first_reg_n_0),
        .O(\spi_sr_in_buf[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \spi_sr_in_buf[6]_i_3 
       (.I0(\spi_sr_in_buf[7]_i_7_n_0 ),
        .I1(\spi_sr_reg_n_0_[4] ),
        .I2(\spi_sr_in_buf[7]_i_8_n_0 ),
        .I3(\spi_io_i_reg_n_0_[0] ),
        .I4(\spi_io_i_reg_n_0_[2] ),
        .I5(\spi_sr_in_buf[7]_i_9_n_0 ),
        .O(\spi_sr_in_buf[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00B0000000000000)) 
    \spi_sr_in_buf[7]_i_1 
       (.I0(spi_dir_reg_n_0),
        .I1(\spi_io_o[1]_i_3_n_0 ),
        .I2(\spi_io_mode_q[2]_i_2_n_0 ),
        .I3(spi_sr_in_buf_valid_reg_n_0),
        .I4(spi_io_mode_q1),
        .I5(\FSM_onehot_spi_fsm_state_reg_n_0_[2] ),
        .O(spi_sr_in_buf_valid));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \spi_sr_in_buf[7]_i_2 
       (.I0(\spi_sr_reg_n_0_[6] ),
        .I1(\spi_sr_in_buf[7]_i_3_n_0 ),
        .I2(p_2_in),
        .I3(\spi_sr_in_buf[7]_i_4_n_0 ),
        .I4(\spi_sr_in_buf[7]_i_5_n_0 ),
        .I5(\spi_sr_in_buf[7]_i_6_n_0 ),
        .O(spi_sr_in_buf0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \spi_sr_in_buf[7]_i_3 
       (.I0(spi_lsb_first_reg_n_0),
        .I1(\spi_io_mode_q_reg_n_0_[0] ),
        .I2(\spi_io_mode_q_reg_n_0_[1] ),
        .I3(\spi_io_mode_q_reg_n_0_[2] ),
        .O(\spi_sr_in_buf[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hE9)) 
    \spi_sr_in_buf[7]_i_4 
       (.I0(\spi_io_mode_q_reg_n_0_[1] ),
        .I1(\spi_io_mode_q_reg_n_0_[0] ),
        .I2(\spi_io_mode_q_reg_n_0_[2] ),
        .O(\spi_sr_in_buf[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000A00000000C0)) 
    \spi_sr_in_buf[7]_i_5 
       (.I0(data00),
        .I1(\spi_sr_reg_n_0_[3] ),
        .I2(\spi_io_mode_q_reg_n_0_[2] ),
        .I3(\spi_io_mode_q_reg_n_0_[0] ),
        .I4(\spi_io_mode_q_reg_n_0_[1] ),
        .I5(spi_lsb_first_reg_n_0),
        .O(\spi_sr_in_buf[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \spi_sr_in_buf[7]_i_6 
       (.I0(\spi_sr_in_buf[7]_i_7_n_0 ),
        .I1(\spi_sr_reg_n_0_[5] ),
        .I2(\spi_sr_in_buf[7]_i_8_n_0 ),
        .I3(data00),
        .I4(\spi_io_i_reg_n_0_[3] ),
        .I5(\spi_sr_in_buf[7]_i_9_n_0 ),
        .O(\spi_sr_in_buf[7]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \spi_sr_in_buf[7]_i_7 
       (.I0(\spi_io_mode_q_reg_n_0_[0] ),
        .I1(\spi_io_mode_q_reg_n_0_[1] ),
        .I2(\spi_io_mode_q_reg_n_0_[2] ),
        .I3(spi_lsb_first_reg_n_0),
        .O(\spi_sr_in_buf[7]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \spi_sr_in_buf[7]_i_8 
       (.I0(\spi_io_mode_q_reg_n_0_[0] ),
        .I1(\spi_io_mode_q_reg_n_0_[1] ),
        .I2(\spi_io_mode_q_reg_n_0_[2] ),
        .I3(spi_lsb_first_reg_n_0),
        .O(\spi_sr_in_buf[7]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \spi_sr_in_buf[7]_i_9 
       (.I0(spi_lsb_first_reg_n_0),
        .I1(\spi_io_mode_q_reg_n_0_[2] ),
        .I2(\spi_io_mode_q_reg_n_0_[0] ),
        .I3(\spi_io_mode_q_reg_n_0_[1] ),
        .O(\spi_sr_in_buf[7]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFEEFFE0FFEFFFE0)) 
    spi_sr_in_buf_ready_i_1
       (.I0(spi_sr_in_buf_ready_i_2_n_0),
        .I1(spi_sr_in_buf_ready_i_3_n_0),
        .I2(spi_sr_in_buf_ready_i_4_n_0),
        .I3(spi_sr_in_buf_ready_i_5_n_0),
        .I4(spi_sr_in_buf_ready_reg_n_0),
        .I5(spi_sr_in_buf_valid_reg_n_0),
        .O(spi_sr_in_buf_ready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    spi_sr_in_buf_ready_i_2
       (.I0(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I1(spi_sr_in_buf_valid_reg_n_0),
        .I2(spi_sr_in_buf_ready_reg_n_0),
        .I3(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I4(\spi_mmio_fsm_state_reg_n_0_[2] ),
        .I5(\spi_mmio_fsm_state_reg_n_0_[3] ),
        .O(spi_sr_in_buf_ready_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    spi_sr_in_buf_ready_i_3
       (.I0(s_axi_lite_rvalid_reg_0),
        .I1(s_axi_lite_arvalid),
        .I2(spi_sr_in_buf_valid_reg_n_0),
        .I3(spi_mmio_en),
        .I4(\s_axi_lite_rdata[7]_i_2_n_0 ),
        .O(spi_sr_in_buf_ready_i_3_n_0));
  LUT6 #(
    .INIT(64'h0100FFFF01000100)) 
    spi_sr_in_buf_ready_i_4
       (.I0(spi_sr_in_buf_ready_i_6_n_0),
        .I1(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I2(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I3(spi_sr_in_buf_valid_reg_n_0),
        .I4(spi_sr_in_buf_ready_i_7_n_0),
        .I5(\s_axi_lite_rdata[7]_i_2_n_0 ),
        .O(spi_sr_in_buf_ready_i_4_n_0));
  LUT6 #(
    .INIT(64'h000C000008000800)) 
    spi_sr_in_buf_ready_i_5
       (.I0(spi_sr_in_buf_ready_i_8_n_0),
        .I1(\spi_mmio_fsm_state_reg_n_0_[3] ),
        .I2(\spi_mmio_fsm_state_reg_n_0_[2] ),
        .I3(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I4(\s_axi_full_rdata[63]_i_5_n_0 ),
        .I5(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .O(spi_sr_in_buf_ready_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'hB)) 
    spi_sr_in_buf_ready_i_6
       (.I0(\spi_mmio_fsm_state_reg_n_0_[2] ),
        .I1(\spi_mmio_fsm_state_reg_n_0_[3] ),
        .O(spi_sr_in_buf_ready_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hB)) 
    spi_sr_in_buf_ready_i_7
       (.I0(s_axi_lite_rvalid_reg_0),
        .I1(s_axi_lite_arvalid),
        .O(spi_sr_in_buf_ready_i_7_n_0));
  LUT4 #(
    .INIT(16'hFF02)) 
    spi_sr_in_buf_ready_i_8
       (.I0(\spi_io_mode_reg_n_0_[0] ),
        .I1(\spi_io_mode_reg_n_0_[1] ),
        .I2(\spi_io_mode_reg_n_0_[2] ),
        .I3(spi_dir_reg_n_0),
        .O(spi_sr_in_buf_ready_i_8_n_0));
  FDRE spi_sr_in_buf_ready_reg
       (.C(aclk),
        .CE(1'b1),
        .D(spi_sr_in_buf_ready_i_1_n_0),
        .Q(spi_sr_in_buf_ready_reg_n_0),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_sr_in_buf_reg[0] 
       (.C(aclk),
        .CE(spi_sr_in_buf_valid),
        .D(spi_sr_in_buf0_in[0]),
        .Q(data5[0]),
        .R(p_5_in));
  FDRE \spi_sr_in_buf_reg[1] 
       (.C(aclk),
        .CE(spi_sr_in_buf_valid),
        .D(spi_sr_in_buf0_in[1]),
        .Q(data5[1]),
        .R(p_5_in));
  FDRE \spi_sr_in_buf_reg[2] 
       (.C(aclk),
        .CE(spi_sr_in_buf_valid),
        .D(spi_sr_in_buf0_in[2]),
        .Q(data5[2]),
        .R(p_5_in));
  FDRE \spi_sr_in_buf_reg[3] 
       (.C(aclk),
        .CE(spi_sr_in_buf_valid),
        .D(spi_sr_in_buf0_in[3]),
        .Q(data5[3]),
        .R(p_5_in));
  FDRE \spi_sr_in_buf_reg[4] 
       (.C(aclk),
        .CE(spi_sr_in_buf_valid),
        .D(spi_sr_in_buf0_in[4]),
        .Q(data5[4]),
        .R(p_5_in));
  FDRE \spi_sr_in_buf_reg[5] 
       (.C(aclk),
        .CE(spi_sr_in_buf_valid),
        .D(spi_sr_in_buf0_in[5]),
        .Q(data5[5]),
        .R(p_5_in));
  FDRE \spi_sr_in_buf_reg[6] 
       (.C(aclk),
        .CE(spi_sr_in_buf_valid),
        .D(spi_sr_in_buf0_in[6]),
        .Q(data5[6]),
        .R(p_5_in));
  FDRE \spi_sr_in_buf_reg[7] 
       (.C(aclk),
        .CE(spi_sr_in_buf_valid),
        .D(spi_sr_in_buf0_in[7]),
        .Q(data5[7]),
        .R(p_5_in));
  LUT6 #(
    .INIT(64'hFF4C4C4C4C4C4C4C)) 
    spi_sr_in_buf_valid_i_1
       (.I0(spi_sr_in_buf_valid_i_2_n_0),
        .I1(spi_sr_in_buf_valid_reg_n_0),
        .I2(spi_sr_in_buf_ready_reg_n_0),
        .I3(\FSM_onehot_spi_fsm_state_reg_n_0_[2] ),
        .I4(spi_io_mode_q1),
        .I5(spi_sr_in_buf_valid_i_3_n_0),
        .O(spi_sr_in_buf_valid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    spi_sr_in_buf_valid_i_2
       (.I0(\FSM_onehot_spi_fsm_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_spi_fsm_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_spi_fsm_state_reg_n_0_[0] ),
        .O(spi_sr_in_buf_valid_i_2_n_0));
  LUT6 #(
    .INIT(64'h4444444400040000)) 
    spi_sr_in_buf_valid_i_3
       (.I0(spi_sr_in_buf_valid_reg_n_0),
        .I1(\spi_io_mode_q[2]_i_2_n_0 ),
        .I2(\spi_io_mode_q_reg_n_0_[2] ),
        .I3(\spi_io_mode_q_reg_n_0_[1] ),
        .I4(\spi_io_mode_q_reg_n_0_[0] ),
        .I5(spi_dir_reg_n_0),
        .O(spi_sr_in_buf_valid_i_3_n_0));
  FDRE spi_sr_in_buf_valid_q_reg
       (.C(aclk),
        .CE(1'b1),
        .D(spi_sr_in_buf_valid_reg_n_0),
        .Q(spi_sr_in_buf_valid_q),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE spi_sr_in_buf_valid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(spi_sr_in_buf_valid_i_1_n_0),
        .Q(spi_sr_in_buf_valid_reg_n_0),
        .R(p_5_in));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEAA)) 
    \spi_sr_out_buf[0]_i_1 
       (.I0(\spi_sr_out_buf[0]_i_2_n_0 ),
        .I1(\spi_sr_out_buf[0]_i_3_n_0 ),
        .I2(\spi_sr_out_buf[7]_i_6_n_0 ),
        .I3(\spi_sr_out_buf[7]_i_7_n_0 ),
        .I4(\spi_sr_out_buf[0]_i_4_n_0 ),
        .I5(\spi_sr_out_buf[0]_i_5_n_0 ),
        .O(spi_sr_out_buf[0]));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \spi_sr_out_buf[0]_i_2 
       (.I0(\spi_mmio_fsm_state_reg_n_0_[2] ),
        .I1(\spi_mmio_fsm_state_reg_n_0_[3] ),
        .I2(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I3(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I4(spi_io_mode1),
        .I5(\spi_mmio_mode_bits_reg_n_0_[0] ),
        .O(\spi_sr_out_buf[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \spi_sr_out_buf[0]_i_3 
       (.I0(s_axi_lite_awready),
        .I1(spi_sr_out_buf_valid_i_2_n_0),
        .I2(s_axi_lite_wdata[0]),
        .O(\spi_sr_out_buf[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \spi_sr_out_buf[0]_i_4 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[8] ),
        .I1(\spi_sr_out_buf[7]_i_14_n_0 ),
        .I2(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I3(\spi_sr_out_buf[7]_i_15_n_0 ),
        .O(\spi_sr_out_buf[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \spi_sr_out_buf[0]_i_5 
       (.I0(\spi_mmio_rd_instr_reg_n_0_[0] ),
        .I1(\spi_sr_out_buf[7]_i_16_n_0 ),
        .I2(\s_axi_full_araddr_q_reg_n_0_[16] ),
        .I3(\spi_sr_out_buf[7]_i_17_n_0 ),
        .O(\spi_sr_out_buf[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEAA)) 
    \spi_sr_out_buf[1]_i_1 
       (.I0(\spi_sr_out_buf[1]_i_2_n_0 ),
        .I1(\spi_sr_out_buf[1]_i_3_n_0 ),
        .I2(\spi_sr_out_buf[7]_i_6_n_0 ),
        .I3(\spi_sr_out_buf[7]_i_7_n_0 ),
        .I4(\spi_sr_out_buf[1]_i_4_n_0 ),
        .I5(\spi_sr_out_buf[1]_i_5_n_0 ),
        .O(spi_sr_out_buf[1]));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \spi_sr_out_buf[1]_i_2 
       (.I0(\spi_mmio_fsm_state_reg_n_0_[2] ),
        .I1(\spi_mmio_fsm_state_reg_n_0_[3] ),
        .I2(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I3(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I4(spi_io_mode1),
        .I5(\spi_mmio_mode_bits_reg_n_0_[1] ),
        .O(\spi_sr_out_buf[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \spi_sr_out_buf[1]_i_3 
       (.I0(s_axi_lite_awready),
        .I1(spi_sr_out_buf_valid_i_2_n_0),
        .I2(s_axi_lite_wdata[1]),
        .O(\spi_sr_out_buf[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \spi_sr_out_buf[1]_i_4 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[9] ),
        .I1(\spi_sr_out_buf[7]_i_14_n_0 ),
        .I2(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I3(\spi_sr_out_buf[7]_i_15_n_0 ),
        .O(\spi_sr_out_buf[1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \spi_sr_out_buf[1]_i_5 
       (.I0(\spi_mmio_rd_instr_reg_n_0_[1] ),
        .I1(\spi_sr_out_buf[7]_i_16_n_0 ),
        .I2(\s_axi_full_araddr_q_reg_n_0_[17] ),
        .I3(\spi_sr_out_buf[7]_i_17_n_0 ),
        .O(\spi_sr_out_buf[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEAA)) 
    \spi_sr_out_buf[2]_i_1 
       (.I0(\spi_sr_out_buf[2]_i_2_n_0 ),
        .I1(\spi_sr_out_buf[2]_i_3_n_0 ),
        .I2(\spi_sr_out_buf[7]_i_6_n_0 ),
        .I3(\spi_sr_out_buf[7]_i_7_n_0 ),
        .I4(\spi_sr_out_buf[2]_i_4_n_0 ),
        .I5(\spi_sr_out_buf[2]_i_5_n_0 ),
        .O(spi_sr_out_buf[2]));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \spi_sr_out_buf[2]_i_2 
       (.I0(\spi_mmio_fsm_state_reg_n_0_[2] ),
        .I1(\spi_mmio_fsm_state_reg_n_0_[3] ),
        .I2(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I3(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I4(spi_io_mode1),
        .I5(\spi_mmio_mode_bits_reg_n_0_[2] ),
        .O(\spi_sr_out_buf[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \spi_sr_out_buf[2]_i_3 
       (.I0(s_axi_lite_awready),
        .I1(spi_sr_out_buf_valid_i_2_n_0),
        .I2(s_axi_lite_wdata[2]),
        .O(\spi_sr_out_buf[2]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \spi_sr_out_buf[2]_i_4 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[10] ),
        .I1(\spi_sr_out_buf[7]_i_14_n_0 ),
        .I2(\s_axi_full_araddr_q_reg_n_0_[2] ),
        .I3(\spi_sr_out_buf[7]_i_15_n_0 ),
        .O(\spi_sr_out_buf[2]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \spi_sr_out_buf[2]_i_5 
       (.I0(\spi_mmio_rd_instr_reg_n_0_[2] ),
        .I1(\spi_sr_out_buf[7]_i_16_n_0 ),
        .I2(\s_axi_full_araddr_q_reg_n_0_[18] ),
        .I3(\spi_sr_out_buf[7]_i_17_n_0 ),
        .O(\spi_sr_out_buf[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEAA)) 
    \spi_sr_out_buf[3]_i_1 
       (.I0(\spi_sr_out_buf[3]_i_2_n_0 ),
        .I1(\spi_sr_out_buf[3]_i_3_n_0 ),
        .I2(\spi_sr_out_buf[7]_i_6_n_0 ),
        .I3(\spi_sr_out_buf[7]_i_7_n_0 ),
        .I4(\spi_sr_out_buf[3]_i_4_n_0 ),
        .I5(\spi_sr_out_buf[3]_i_5_n_0 ),
        .O(spi_sr_out_buf[3]));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \spi_sr_out_buf[3]_i_2 
       (.I0(\spi_mmio_fsm_state_reg_n_0_[2] ),
        .I1(\spi_mmio_fsm_state_reg_n_0_[3] ),
        .I2(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I3(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I4(spi_io_mode1),
        .I5(\spi_mmio_mode_bits_reg_n_0_[3] ),
        .O(\spi_sr_out_buf[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \spi_sr_out_buf[3]_i_3 
       (.I0(s_axi_lite_awready),
        .I1(spi_sr_out_buf_valid_i_2_n_0),
        .I2(s_axi_lite_wdata[3]),
        .O(\spi_sr_out_buf[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \spi_sr_out_buf[3]_i_4 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[11] ),
        .I1(\spi_sr_out_buf[7]_i_14_n_0 ),
        .I2(\s_axi_full_araddr_q_reg_n_0_[3] ),
        .I3(\spi_sr_out_buf[7]_i_15_n_0 ),
        .O(\spi_sr_out_buf[3]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \spi_sr_out_buf[3]_i_5 
       (.I0(\spi_mmio_rd_instr_reg_n_0_[3] ),
        .I1(\spi_sr_out_buf[7]_i_16_n_0 ),
        .I2(\s_axi_full_araddr_q_reg_n_0_[19] ),
        .I3(\spi_sr_out_buf[7]_i_17_n_0 ),
        .O(\spi_sr_out_buf[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEAA)) 
    \spi_sr_out_buf[4]_i_1 
       (.I0(\spi_sr_out_buf[4]_i_2_n_0 ),
        .I1(\spi_sr_out_buf[4]_i_3_n_0 ),
        .I2(\spi_sr_out_buf[7]_i_6_n_0 ),
        .I3(\spi_sr_out_buf[7]_i_7_n_0 ),
        .I4(\spi_sr_out_buf[4]_i_4_n_0 ),
        .I5(\spi_sr_out_buf[4]_i_5_n_0 ),
        .O(spi_sr_out_buf[4]));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \spi_sr_out_buf[4]_i_2 
       (.I0(\spi_mmio_fsm_state_reg_n_0_[2] ),
        .I1(\spi_mmio_fsm_state_reg_n_0_[3] ),
        .I2(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I3(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I4(spi_io_mode1),
        .I5(\spi_mmio_mode_bits_reg_n_0_[4] ),
        .O(\spi_sr_out_buf[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \spi_sr_out_buf[4]_i_3 
       (.I0(s_axi_lite_awready),
        .I1(spi_sr_out_buf_valid_i_2_n_0),
        .I2(s_axi_lite_wdata[4]),
        .O(\spi_sr_out_buf[4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \spi_sr_out_buf[4]_i_4 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[12] ),
        .I1(\spi_sr_out_buf[7]_i_14_n_0 ),
        .I2(\s_axi_full_araddr_q_reg_n_0_[4] ),
        .I3(\spi_sr_out_buf[7]_i_15_n_0 ),
        .O(\spi_sr_out_buf[4]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \spi_sr_out_buf[4]_i_5 
       (.I0(\spi_mmio_rd_instr_reg_n_0_[4] ),
        .I1(\spi_sr_out_buf[7]_i_16_n_0 ),
        .I2(\s_axi_full_araddr_q_reg_n_0_[20] ),
        .I3(\spi_sr_out_buf[7]_i_17_n_0 ),
        .O(\spi_sr_out_buf[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEAA)) 
    \spi_sr_out_buf[5]_i_1 
       (.I0(\spi_sr_out_buf[5]_i_2_n_0 ),
        .I1(\spi_sr_out_buf[5]_i_3_n_0 ),
        .I2(\spi_sr_out_buf[7]_i_6_n_0 ),
        .I3(\spi_sr_out_buf[7]_i_7_n_0 ),
        .I4(\spi_sr_out_buf[5]_i_4_n_0 ),
        .I5(\spi_sr_out_buf[5]_i_5_n_0 ),
        .O(spi_sr_out_buf[5]));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \spi_sr_out_buf[5]_i_2 
       (.I0(\spi_mmio_fsm_state_reg_n_0_[2] ),
        .I1(\spi_mmio_fsm_state_reg_n_0_[3] ),
        .I2(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I3(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I4(spi_io_mode1),
        .I5(\spi_mmio_mode_bits_reg_n_0_[5] ),
        .O(\spi_sr_out_buf[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \spi_sr_out_buf[5]_i_3 
       (.I0(s_axi_lite_awready),
        .I1(spi_sr_out_buf_valid_i_2_n_0),
        .I2(s_axi_lite_wdata[5]),
        .O(\spi_sr_out_buf[5]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \spi_sr_out_buf[5]_i_4 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[13] ),
        .I1(\spi_sr_out_buf[7]_i_14_n_0 ),
        .I2(\s_axi_full_araddr_q_reg_n_0_[5] ),
        .I3(\spi_sr_out_buf[7]_i_15_n_0 ),
        .O(\spi_sr_out_buf[5]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \spi_sr_out_buf[5]_i_5 
       (.I0(\spi_mmio_rd_instr_reg_n_0_[5] ),
        .I1(\spi_sr_out_buf[7]_i_16_n_0 ),
        .I2(\s_axi_full_araddr_q_reg_n_0_[21] ),
        .I3(\spi_sr_out_buf[7]_i_17_n_0 ),
        .O(\spi_sr_out_buf[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEAA)) 
    \spi_sr_out_buf[6]_i_1 
       (.I0(\spi_sr_out_buf[6]_i_2_n_0 ),
        .I1(\spi_sr_out_buf[6]_i_3_n_0 ),
        .I2(\spi_sr_out_buf[7]_i_6_n_0 ),
        .I3(\spi_sr_out_buf[7]_i_7_n_0 ),
        .I4(\spi_sr_out_buf[6]_i_4_n_0 ),
        .I5(\spi_sr_out_buf[6]_i_5_n_0 ),
        .O(spi_sr_out_buf[6]));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \spi_sr_out_buf[6]_i_2 
       (.I0(\spi_mmio_fsm_state_reg_n_0_[2] ),
        .I1(\spi_mmio_fsm_state_reg_n_0_[3] ),
        .I2(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I3(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I4(spi_io_mode1),
        .I5(\spi_mmio_mode_bits_reg_n_0_[6] ),
        .O(\spi_sr_out_buf[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \spi_sr_out_buf[6]_i_3 
       (.I0(s_axi_lite_awready),
        .I1(spi_sr_out_buf_valid_i_2_n_0),
        .I2(s_axi_lite_wdata[6]),
        .O(\spi_sr_out_buf[6]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \spi_sr_out_buf[6]_i_4 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[14] ),
        .I1(\spi_sr_out_buf[7]_i_14_n_0 ),
        .I2(\s_axi_full_araddr_q_reg_n_0_[6] ),
        .I3(\spi_sr_out_buf[7]_i_15_n_0 ),
        .O(\spi_sr_out_buf[6]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \spi_sr_out_buf[6]_i_5 
       (.I0(\spi_mmio_rd_instr_reg_n_0_[6] ),
        .I1(\spi_sr_out_buf[7]_i_16_n_0 ),
        .I2(\s_axi_full_araddr_q_reg_n_0_[22] ),
        .I3(\spi_sr_out_buf[7]_i_17_n_0 ),
        .O(\spi_sr_out_buf[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAEAAAEAAAEAA)) 
    \spi_sr_out_buf[7]_i_1 
       (.I0(\spi_sr_out_buf[7]_i_3_n_0 ),
        .I1(spi_io_mode1),
        .I2(\spi_mmio_fsm_state_reg_n_0_[3] ),
        .I3(\spi_mmio_fsm_state_reg_n_0_[2] ),
        .I4(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I5(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .O(\spi_sr_out_buf[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA2A2AAAAA2AAA)) 
    \spi_sr_out_buf[7]_i_10 
       (.I0(spi_en_reg_n_0),
        .I1(s_axi_lite_awready),
        .I2(s_axi_lite_awaddr[2]),
        .I3(s_axi_lite_awaddr[1]),
        .I4(s_axi_lite_awaddr[3]),
        .I5(s_axi_lite_awaddr[0]),
        .O(\spi_sr_out_buf[7]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \spi_sr_out_buf[7]_i_11 
       (.I0(s_axi_lite_awaddr[3]),
        .I1(s_axi_lite_awaddr[1]),
        .I2(s_axi_lite_awaddr[2]),
        .O(\spi_sr_out_buf[7]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \spi_sr_out_buf[7]_i_12 
       (.I0(s_axi_lite_awaddr[3]),
        .I1(s_axi_lite_awaddr[0]),
        .I2(s_axi_lite_awaddr[1]),
        .I3(s_axi_lite_awaddr[2]),
        .O(\spi_sr_out_buf[7]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \spi_sr_out_buf[7]_i_13 
       (.I0(s_axi_lite_wdata[8]),
        .I1(s_axi_lite_wdata[9]),
        .I2(spi_sr_out_buf_valid),
        .I3(spi_sr_out_buf_valid_i_4_n_0),
        .O(\spi_sr_out_buf[7]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \spi_sr_out_buf[7]_i_14 
       (.I0(spi_mmio_addr_rem[1]),
        .I1(spi_mmio_addr_rem[0]),
        .I2(spi_io_mode1),
        .I3(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I4(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I5(\spi_mmio_fsm_state[0]_i_10_n_0 ),
        .O(\spi_sr_out_buf[7]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    \spi_sr_out_buf[7]_i_15 
       (.I0(spi_mmio_addr_rem[0]),
        .I1(\spi_mmio_fsm_state[0]_i_10_n_0 ),
        .I2(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I3(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I4(spi_io_mode1),
        .I5(spi_mmio_addr_rem[1]),
        .O(\spi_sr_out_buf[7]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \spi_sr_out_buf[7]_i_16 
       (.I0(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I1(spi_sr_out_buf_valid),
        .I2(spi_rd_req_reg_n_0),
        .I3(\spi_mmio_fsm_state_reg_n_0_[2] ),
        .I4(\spi_mmio_fsm_state_reg_n_0_[3] ),
        .I5(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .O(\spi_sr_out_buf[7]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \spi_sr_out_buf[7]_i_17 
       (.I0(spi_mmio_addr_rem[0]),
        .I1(\spi_mmio_fsm_state[0]_i_10_n_0 ),
        .I2(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I3(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I4(spi_io_mode1),
        .I5(spi_mmio_addr_rem[1]),
        .O(\spi_sr_out_buf[7]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEAA)) 
    \spi_sr_out_buf[7]_i_2 
       (.I0(\spi_sr_out_buf[7]_i_4_n_0 ),
        .I1(\spi_sr_out_buf[7]_i_5_n_0 ),
        .I2(\spi_sr_out_buf[7]_i_6_n_0 ),
        .I3(\spi_sr_out_buf[7]_i_7_n_0 ),
        .I4(\spi_sr_out_buf[7]_i_8_n_0 ),
        .I5(\spi_sr_out_buf[7]_i_9_n_0 ),
        .O(spi_sr_out_buf[7]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \spi_sr_out_buf[7]_i_3 
       (.I0(s_axi_lite_awready),
        .I1(spi_sr_out_buf_valid_i_2_n_0),
        .I2(spi_en_reg_n_0),
        .O(\spi_sr_out_buf[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \spi_sr_out_buf[7]_i_4 
       (.I0(\spi_mmio_fsm_state_reg_n_0_[2] ),
        .I1(\spi_mmio_fsm_state_reg_n_0_[3] ),
        .I2(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I3(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I4(spi_io_mode1),
        .I5(\spi_mmio_mode_bits_reg_n_0_[7] ),
        .O(\spi_sr_out_buf[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \spi_sr_out_buf[7]_i_5 
       (.I0(s_axi_lite_awready),
        .I1(spi_sr_out_buf_valid_i_2_n_0),
        .I2(s_axi_lite_wdata[7]),
        .O(\spi_sr_out_buf[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEAAAEAAAEAAA)) 
    \spi_sr_out_buf[7]_i_6 
       (.I0(\spi_sr_out_buf[7]_i_10_n_0 ),
        .I1(spi_en_reg_n_0),
        .I2(\spi_sr_out_buf[7]_i_11_n_0 ),
        .I3(s_axi_lite_awready),
        .I4(\spi_sr_out_buf[7]_i_12_n_0 ),
        .I5(\spi_sr_out_buf[7]_i_13_n_0 ),
        .O(\spi_sr_out_buf[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEFFFFFFFCF)) 
    \spi_sr_out_buf[7]_i_7 
       (.I0(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I1(\spi_mmio_fsm_state_reg_n_0_[3] ),
        .I2(\spi_mmio_fsm_state_reg_n_0_[2] ),
        .I3(spi_rd_req_reg_n_0),
        .I4(spi_sr_out_buf_valid),
        .I5(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .O(\spi_sr_out_buf[7]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \spi_sr_out_buf[7]_i_8 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[15] ),
        .I1(\spi_sr_out_buf[7]_i_14_n_0 ),
        .I2(\s_axi_full_araddr_q_reg_n_0_[7] ),
        .I3(\spi_sr_out_buf[7]_i_15_n_0 ),
        .O(\spi_sr_out_buf[7]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \spi_sr_out_buf[7]_i_9 
       (.I0(\spi_mmio_rd_instr_reg_n_0_[7] ),
        .I1(\spi_sr_out_buf[7]_i_16_n_0 ),
        .I2(\s_axi_full_araddr_q_reg_n_0_[23] ),
        .I3(\spi_sr_out_buf[7]_i_17_n_0 ),
        .O(\spi_sr_out_buf[7]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFAFAFAFAFA2A2A2A)) 
    spi_sr_out_buf_ready_i_1
       (.I0(spi_sr_out_buf_ready_reg_n_0),
        .I1(spi_sr_out_buf_ready_i_2_n_0),
        .I2(spi_sr_out_buf_valid),
        .I3(spi_io_mode_q1),
        .I4(spi_sr_out_buf_ready_i_3_n_0),
        .I5(\FSM_onehot_spi_fsm_state_reg_n_0_[0] ),
        .O(spi_sr_out_buf_ready_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    spi_sr_out_buf_ready_i_2
       (.I0(\FSM_onehot_spi_fsm_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_spi_fsm_state_reg_n_0_[2] ),
        .O(spi_sr_out_buf_ready_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    spi_sr_out_buf_ready_i_3
       (.I0(\spi_io_mode_q[2]_i_2_n_0 ),
        .I1(\FSM_onehot_spi_fsm_state_reg_n_0_[2] ),
        .O(spi_sr_out_buf_ready_i_3_n_0));
  FDRE spi_sr_out_buf_ready_reg
       (.C(aclk),
        .CE(1'b1),
        .D(spi_sr_out_buf_ready_i_1_n_0),
        .Q(spi_sr_out_buf_ready_reg_n_0),
        .R(p_5_in));
  FDRE \spi_sr_out_buf_reg[0] 
       (.C(aclk),
        .CE(\spi_sr_out_buf[7]_i_1_n_0 ),
        .D(spi_sr_out_buf[0]),
        .Q(\spi_sr_out_buf_reg_n_0_[0] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_sr_out_buf_reg[1] 
       (.C(aclk),
        .CE(\spi_sr_out_buf[7]_i_1_n_0 ),
        .D(spi_sr_out_buf[1]),
        .Q(\spi_sr_out_buf_reg_n_0_[1] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_sr_out_buf_reg[2] 
       (.C(aclk),
        .CE(\spi_sr_out_buf[7]_i_1_n_0 ),
        .D(spi_sr_out_buf[2]),
        .Q(\spi_sr_out_buf_reg_n_0_[2] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_sr_out_buf_reg[3] 
       (.C(aclk),
        .CE(\spi_sr_out_buf[7]_i_1_n_0 ),
        .D(spi_sr_out_buf[3]),
        .Q(\spi_sr_out_buf_reg_n_0_[3] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_sr_out_buf_reg[4] 
       (.C(aclk),
        .CE(\spi_sr_out_buf[7]_i_1_n_0 ),
        .D(spi_sr_out_buf[4]),
        .Q(\spi_sr_out_buf_reg_n_0_[4] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_sr_out_buf_reg[5] 
       (.C(aclk),
        .CE(\spi_sr_out_buf[7]_i_1_n_0 ),
        .D(spi_sr_out_buf[5]),
        .Q(\spi_sr_out_buf_reg_n_0_[5] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_sr_out_buf_reg[6] 
       (.C(aclk),
        .CE(\spi_sr_out_buf[7]_i_1_n_0 ),
        .D(spi_sr_out_buf[6]),
        .Q(\spi_sr_out_buf_reg_n_0_[6] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_sr_out_buf_reg[7] 
       (.C(aclk),
        .CE(\spi_sr_out_buf[7]_i_1_n_0 ),
        .D(spi_sr_out_buf[7]),
        .Q(\spi_sr_out_buf_reg_n_0_[7] ),
        .R(s_axi_lite_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF202020)) 
    spi_sr_out_buf_valid_i_1
       (.I0(spi_sr_out_buf_valid),
        .I1(spi_sr_out_buf_ready_reg_n_0),
        .I2(spi_en_reg_n_0),
        .I3(s_axi_lite_awready),
        .I4(spi_sr_out_buf_valid_i_2_n_0),
        .I5(spi_sr_out_buf_valid_i_3_n_0),
        .O(spi_sr_out_buf_valid_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    spi_sr_out_buf_valid_i_2
       (.I0(s_axi_lite_awaddr[2]),
        .I1(spi_lsb_first_i_2_n_0),
        .I2(spi_sr_out_buf_valid_i_4_n_0),
        .I3(spi_sr_out_buf_valid),
        .I4(s_axi_lite_wdata[9]),
        .I5(s_axi_lite_wdata[8]),
        .O(spi_sr_out_buf_valid_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000070)) 
    spi_sr_out_buf_valid_i_3
       (.I0(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I1(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I2(\spi_mmio_fsm_state_reg_n_0_[2] ),
        .I3(\spi_mmio_fsm_state_reg_n_0_[3] ),
        .I4(spi_rd_req_reg_n_0),
        .I5(spi_sr_out_buf_valid),
        .O(spi_sr_out_buf_valid_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'hBFFF)) 
    spi_sr_out_buf_valid_i_4
       (.I0(spi_mmio_en),
        .I1(spi_en_reg_n_0),
        .I2(s_axi_lite_wstrb[1]),
        .I3(s_axi_lite_wstrb[0]),
        .O(spi_sr_out_buf_valid_i_4_n_0));
  FDRE spi_sr_out_buf_valid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(spi_sr_out_buf_valid_i_1_n_0),
        .Q(spi_sr_out_buf_valid),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_sr_reg[0] 
       (.C(aclk),
        .CE(\spi_sr_bit_cnt[4]_i_1_n_0 ),
        .D(\spi_sr[0]_i_1_n_0 ),
        .Q(\spi_sr_reg_n_0_[0] ),
        .R(p_5_in));
  FDRE \spi_sr_reg[1] 
       (.C(aclk),
        .CE(\spi_sr_bit_cnt[4]_i_1_n_0 ),
        .D(\spi_sr[1]_i_1_n_0 ),
        .Q(\spi_sr_reg_n_0_[1] ),
        .R(p_5_in));
  FDRE \spi_sr_reg[2] 
       (.C(aclk),
        .CE(\spi_sr_bit_cnt[4]_i_1_n_0 ),
        .D(\spi_sr[2]_i_1_n_0 ),
        .Q(\spi_sr_reg_n_0_[2] ),
        .R(p_5_in));
  FDRE \spi_sr_reg[3] 
       (.C(aclk),
        .CE(\spi_sr_bit_cnt[4]_i_1_n_0 ),
        .D(\spi_sr[3]_i_1_n_0 ),
        .Q(\spi_sr_reg_n_0_[3] ),
        .R(p_5_in));
  FDRE \spi_sr_reg[4] 
       (.C(aclk),
        .CE(\spi_sr_bit_cnt[4]_i_1_n_0 ),
        .D(\spi_sr[4]_i_1_n_0 ),
        .Q(\spi_sr_reg_n_0_[4] ),
        .R(p_5_in));
  FDRE \spi_sr_reg[5] 
       (.C(aclk),
        .CE(\spi_sr_bit_cnt[4]_i_1_n_0 ),
        .D(\spi_sr[5]_i_1_n_0 ),
        .Q(\spi_sr_reg_n_0_[5] ),
        .R(p_5_in));
  FDRE \spi_sr_reg[6] 
       (.C(aclk),
        .CE(\spi_sr_bit_cnt[4]_i_1_n_0 ),
        .D(\spi_sr[6]_i_1_n_0 ),
        .Q(\spi_sr_reg_n_0_[6] ),
        .R(p_5_in));
  FDRE \spi_sr_reg[7] 
       (.C(aclk),
        .CE(\spi_sr_bit_cnt[4]_i_1_n_0 ),
        .D(\spi_sr[7]_i_1_n_0 ),
        .Q(p_2_in),
        .R(p_5_in));
  LUT6 #(
    .INIT(64'hAAAAAFBFAAAAA080)) 
    \spi_ss_o[0]_i_1 
       (.I0(\spi_ss_o[0]_i_2_n_0 ),
        .I1(\spi_ss_o[0]_i_3_n_0 ),
        .I2(\FSM_onehot_spi_fsm_state_reg_n_0_[0] ),
        .I3(\spi_ss_o[0]_i_4_n_0 ),
        .I4(\spi_ss_o[0]_i_5_n_0 ),
        .I5(\spi_ss_o_reg[0]_0 ),
        .O(\spi_ss_o[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA0AFAAAAACACAAAA)) 
    \spi_ss_o[0]_i_2 
       (.I0(s_axi_lite_wdata[0]),
        .I1(\spi_ss_o_reg[0]_0 ),
        .I2(\spi_mmio_cs_wait_rem[7]_i_5_n_0 ),
        .I3(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I4(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I5(\spi_mmio_cs_mask_reg_n_0_[0] ),
        .O(\spi_ss_o[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \spi_ss_o[0]_i_3 
       (.I0(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I1(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I2(\spi_mmio_fsm_state_reg_n_0_[3] ),
        .I3(\spi_mmio_fsm_state_reg_n_0_[2] ),
        .O(\spi_ss_o[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \spi_ss_o[0]_i_4 
       (.I0(\spi_mmio_fsm_state_reg_n_0_[1] ),
        .I1(\spi_mmio_fsm_state_reg_n_0_[0] ),
        .I2(\spi_mmio_fsm_state_reg_n_0_[3] ),
        .I3(\spi_mmio_fsm_state_reg_n_0_[2] ),
        .O(\spi_ss_o[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \spi_ss_o[0]_i_5 
       (.I0(\spi_mmio_rd_instr_io_mode[2]_i_3_n_0 ),
        .I1(s_axi_lite_awaddr[0]),
        .I2(s_axi_lite_awaddr[3]),
        .I3(s_axi_lite_awaddr[1]),
        .O(\spi_ss_o[0]_i_5_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi_rtl:1.0 spi SS_O" *) 
  FDSE \spi_ss_o_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\spi_ss_o[0]_i_1_n_0 ),
        .Q(\spi_ss_o_reg[0]_0 ),
        .S(s_axi_lite_awready_i_1_n_0));
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
