// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Fri Dec 22 02:37:55 2023
// Host        : node4-dev running 64-bit Ubuntu 22.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/joao/icyradio/firmware/icyradio.gen/sources_1/bd/icyradio/ip/icyradio_axi_qspi_mm_0_1/icyradio_axi_qspi_mm_0_1_sim_netlist.v
// Design      : icyradio_axi_qspi_mm_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "icyradio_axi_qspi_mm_0_1,axi_qspi_mm,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "axi_qspi_mm,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module icyradio_axi_qspi_mm_0_1
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite AWADDR" *) input [4:0]s_axi_lite_awaddr;
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite ARADDR" *) input [4:0]s_axi_lite_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite ARPROT" *) input [2:0]s_axi_lite_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite ARVALID" *) input s_axi_lite_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite ARREADY" *) output s_axi_lite_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite RDATA" *) output [31:0]s_axi_lite_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite RRESP" *) output [1:0]s_axi_lite_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite RVALID" *) output s_axi_lite_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_lite, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 125000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN icyradio_axi_pcie_0_0_axi_aclk_out, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_lite_rready;
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi SCK_I" *) (* X_INTERFACE_MODE = "Master" *) input spi_sck_i;
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
  wire [4:0]s_axi_lite_araddr;
  wire s_axi_lite_arready;
  wire s_axi_lite_arvalid;
  wire [4:0]s_axi_lite_awaddr;
  wire s_axi_lite_awready;
  wire s_axi_lite_awvalid;
  wire s_axi_lite_bready;
  wire s_axi_lite_bvalid;
  wire [31:0]s_axi_lite_rdata;
  wire s_axi_lite_rready;
  wire s_axi_lite_rvalid;
  wire [31:0]s_axi_lite_wdata;
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
  wire spi_io3_i;
  wire spi_io3_o;
  wire spi_io3_t;
  wire spi_sck_o;
  wire [0:0]spi_ss_o;

  assign s_axi_full_bresp[1] = \<const0> ;
  assign s_axi_full_bresp[0] = \<const0> ;
  assign s_axi_full_rresp[1] = \<const0> ;
  assign s_axi_full_rresp[0] = \<const0> ;
  assign s_axi_lite_bresp[1] = \<const0> ;
  assign s_axi_lite_bresp[0] = \<const0> ;
  assign s_axi_lite_rresp[1] = \<const0> ;
  assign s_axi_lite_rresp[0] = \<const0> ;
  assign s_axi_lite_wready = s_axi_lite_awready;
  assign spi_io2_t = spi_io3_t;
  assign spi_sck_t = \<const0> ;
  assign spi_ss_t = \<const0> ;
  GND GND
       (.G(\<const0> ));
  icyradio_axi_qspi_mm_0_1_axi_qspi_mm inst
       (.Q({spi_io3_t,spi_io1_t,spi_io0_t}),
        .aclk(aclk),
        .aresetn(aresetn),
        .s_axi_full_araddr(s_axi_full_araddr),
        .s_axi_full_arid(s_axi_full_arid),
        .s_axi_full_arlen(s_axi_full_arlen),
        .s_axi_full_arready_reg_0(s_axi_full_arready),
        .s_axi_full_arsize(s_axi_full_arsize),
        .s_axi_full_arvalid(s_axi_full_arvalid),
        .s_axi_full_awid(s_axi_full_awid),
        .s_axi_full_awready(s_axi_full_awready),
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
        .s_axi_lite_araddr(s_axi_lite_araddr[4:2]),
        .s_axi_lite_arready(s_axi_lite_arready),
        .s_axi_lite_arvalid(s_axi_lite_arvalid),
        .s_axi_lite_awaddr(s_axi_lite_awaddr[4:2]),
        .s_axi_lite_awready(s_axi_lite_awready),
        .s_axi_lite_awvalid(s_axi_lite_awvalid),
        .s_axi_lite_bready(s_axi_lite_bready),
        .s_axi_lite_bvalid(s_axi_lite_bvalid),
        .s_axi_lite_rdata(s_axi_lite_rdata),
        .s_axi_lite_rready(s_axi_lite_rready),
        .s_axi_lite_rvalid_reg_0(s_axi_lite_rvalid),
        .s_axi_lite_wdata(s_axi_lite_wdata[23:0]),
        .s_axi_lite_wstrb(s_axi_lite_wstrb[2:0]),
        .s_axi_lite_wvalid(s_axi_lite_wvalid),
        .spi_io0_i(spi_io0_i),
        .spi_io0_o(spi_io0_o),
        .spi_io1_i(spi_io1_i),
        .spi_io1_o(spi_io1_o),
        .spi_io2_i(spi_io2_i),
        .spi_io2_o(spi_io2_o),
        .spi_io3_i(spi_io3_i),
        .spi_io3_o(spi_io3_o),
        .spi_sck_o(spi_sck_o),
        .spi_ss_o(spi_ss_o));
endmodule

(* ORIG_REF_NAME = "axi_qspi_mm" *) 
module icyradio_axi_qspi_mm_0_1_axi_qspi_mm
   (s_axi_lite_rvalid_reg_0,
    s_axi_full_rvalid_reg_0,
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
    Q,
    s_axi_lite_arready,
    s_axi_full_arready_reg_0,
    s_axi_full_awready,
    spi_sck_o,
    s_axi_lite_bvalid,
    spi_ss_o,
    s_axi_full_bvalid,
    s_axi_full_rlast,
    s_axi_lite_arvalid,
    s_axi_lite_rready,
    aresetn,
    s_axi_lite_araddr,
    aclk,
    s_axi_full_arsize,
    s_axi_lite_wdata,
    s_axi_full_awid,
    s_axi_full_arid,
    s_axi_lite_awaddr,
    s_axi_lite_wstrb,
    spi_io2_i,
    spi_io0_i,
    spi_io1_i,
    spi_io3_i,
    s_axi_full_arvalid,
    s_axi_full_awvalid,
    s_axi_full_wvalid,
    s_axi_full_wlast,
    s_axi_lite_bready,
    s_axi_lite_wvalid,
    s_axi_lite_awvalid,
    s_axi_full_rready,
    s_axi_full_arlen,
    s_axi_full_araddr,
    s_axi_full_bready);
  output s_axi_lite_rvalid_reg_0;
  output s_axi_full_rvalid_reg_0;
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
  output [2:0]Q;
  output s_axi_lite_arready;
  output s_axi_full_arready_reg_0;
  output s_axi_full_awready;
  output spi_sck_o;
  output s_axi_lite_bvalid;
  output [0:0]spi_ss_o;
  output s_axi_full_bvalid;
  output s_axi_full_rlast;
  input s_axi_lite_arvalid;
  input s_axi_lite_rready;
  input aresetn;
  input [2:0]s_axi_lite_araddr;
  input aclk;
  input [2:0]s_axi_full_arsize;
  input [23:0]s_axi_lite_wdata;
  input [3:0]s_axi_full_awid;
  input [3:0]s_axi_full_arid;
  input [2:0]s_axi_lite_awaddr;
  input [2:0]s_axi_lite_wstrb;
  input spi_io2_i;
  input spi_io0_i;
  input spi_io1_i;
  input spi_io3_i;
  input s_axi_full_arvalid;
  input s_axi_full_awvalid;
  input s_axi_full_wvalid;
  input s_axi_full_wlast;
  input s_axi_lite_bready;
  input s_axi_lite_wvalid;
  input s_axi_lite_awvalid;
  input s_axi_full_rready;
  input [7:0]s_axi_full_arlen;
  input [23:0]s_axi_full_araddr;
  input s_axi_full_bready;

  wire \FSM_onehot_spi_fsm_state[2]_i_2_n_0 ;
  wire \FSM_onehot_spi_fsm_state[2]_i_3_n_0 ;
  wire \FSM_onehot_spi_fsm_state[2]_i_4_n_0 ;
  wire \FSM_onehot_spi_fsm_state_reg_n_0_[0] ;
  wire \FSM_onehot_spi_fsm_state_reg_n_0_[1] ;
  wire \FSM_onehot_spi_fsm_state_reg_n_0_[2] ;
  wire \FSM_sequential_spi_mmio_fsm_state[0]_i_1_n_0 ;
  wire \FSM_sequential_spi_mmio_fsm_state[1]_i_1_n_0 ;
  wire \FSM_sequential_spi_mmio_fsm_state[1]_i_2_n_0 ;
  wire \FSM_sequential_spi_mmio_fsm_state[2]_i_1_n_0 ;
  wire \FSM_sequential_spi_mmio_fsm_state[2]_i_2_n_0 ;
  wire \FSM_sequential_spi_mmio_fsm_state[2]_i_3_n_0 ;
  wire \FSM_sequential_spi_mmio_fsm_state[2]_i_4_n_0 ;
  wire \FSM_sequential_spi_mmio_fsm_state[2]_i_5_n_0 ;
  wire \FSM_sequential_spi_mmio_fsm_state[2]_i_6_n_0 ;
  wire \FSM_sequential_spi_mmio_fsm_state[2]_i_7_n_0 ;
  wire \FSM_sequential_spi_mmio_fsm_state[2]_i_8_n_0 ;
  wire \FSM_sequential_spi_mmio_fsm_state[2]_i_9_n_0 ;
  wire [2:0]Q;
  wire aclk;
  wire aresetn;
  wire [7:0]data4;
  wire [23:1]in46;
  wire [3:0]p_0_in;
  wire [0:0]p_2_in;
  wire [7:0]p_3_in;
  wire [23:0]s_axi_full_araddr;
  wire [23:0]s_axi_full_araddr_q;
  wire \s_axi_full_araddr_q[23]_i_1_n_0 ;
  wire \s_axi_full_araddr_q[23]_i_3_n_0 ;
  wire \s_axi_full_araddr_q[23]_i_5_n_0 ;
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
  wire [7:0]s_axi_full_arlen_q;
  wire \s_axi_full_arlen_q[5]_i_2_n_0 ;
  wire \s_axi_full_arlen_q[7]_i_1_n_0 ;
  wire \s_axi_full_arlen_q[7]_i_3_n_0 ;
  wire \s_axi_full_arlen_q_reg_n_0_[0] ;
  wire \s_axi_full_arlen_q_reg_n_0_[1] ;
  wire \s_axi_full_arlen_q_reg_n_0_[2] ;
  wire \s_axi_full_arlen_q_reg_n_0_[3] ;
  wire \s_axi_full_arlen_q_reg_n_0_[4] ;
  wire \s_axi_full_arlen_q_reg_n_0_[5] ;
  wire \s_axi_full_arlen_q_reg_n_0_[6] ;
  wire \s_axi_full_arlen_q_reg_n_0_[7] ;
  wire s_axi_full_arready_i_1_n_0;
  wire s_axi_full_arready_reg_0;
  wire [2:0]s_axi_full_arsize;
  wire s_axi_full_arsize_q;
  wire \s_axi_full_arsize_q[0]_i_1_n_0 ;
  wire \s_axi_full_arsize_q[1]_i_1_n_0 ;
  wire \s_axi_full_arsize_q_reg_n_0_[0] ;
  wire \s_axi_full_arsize_q_reg_n_0_[1] ;
  wire s_axi_full_arvalid;
  wire [3:0]s_axi_full_awid;
  wire s_axi_full_awready;
  wire s_axi_full_awready0;
  wire s_axi_full_awready_i_1_n_0;
  wire s_axi_full_awvalid;
  wire [3:0]s_axi_full_bid;
  wire s_axi_full_bready;
  wire s_axi_full_bvalid;
  wire s_axi_full_bvalid036_out;
  wire s_axi_full_bvalid_i_1_n_0;
  wire [63:0]s_axi_full_rdata;
  wire [63:0]s_axi_full_rdata1_in;
  wire \s_axi_full_rdata[15]_i_1_n_0 ;
  wire \s_axi_full_rdata[15]_i_3_n_0 ;
  wire \s_axi_full_rdata[23]_i_1_n_0 ;
  wire \s_axi_full_rdata[23]_i_3_n_0 ;
  wire \s_axi_full_rdata[31]_i_1_n_0 ;
  wire \s_axi_full_rdata[31]_i_3_n_0 ;
  wire \s_axi_full_rdata[39]_i_1_n_0 ;
  wire \s_axi_full_rdata[39]_i_3_n_0 ;
  wire \s_axi_full_rdata[47]_i_1_n_0 ;
  wire \s_axi_full_rdata[47]_i_3_n_0 ;
  wire \s_axi_full_rdata[55]_i_1_n_0 ;
  wire \s_axi_full_rdata[55]_i_3_n_0 ;
  wire \s_axi_full_rdata[63]_i_1_n_0 ;
  wire \s_axi_full_rdata[63]_i_3_n_0 ;
  wire \s_axi_full_rdata[7]_i_1_n_0 ;
  wire \s_axi_full_rdata[7]_i_3_n_0 ;
  wire [3:0]s_axi_full_rid;
  wire s_axi_full_rlast;
  wire s_axi_full_rlast_i_1_n_0;
  wire s_axi_full_rlast_i_2_n_0;
  wire s_axi_full_rready;
  wire s_axi_full_rvalid_i_1_n_0;
  wire s_axi_full_rvalid_i_2_n_0;
  wire s_axi_full_rvalid_i_3_n_0;
  wire s_axi_full_rvalid_i_4_n_0;
  wire s_axi_full_rvalid_i_5_n_0;
  wire s_axi_full_rvalid_reg_0;
  wire s_axi_full_wlast;
  wire s_axi_full_wready;
  wire s_axi_full_write_busy__0;
  wire s_axi_full_write_busy_i_1_n_0;
  wire s_axi_full_wvalid;
  wire [2:0]s_axi_lite_araddr;
  wire s_axi_lite_arready;
  wire s_axi_lite_arvalid;
  wire [2:0]s_axi_lite_awaddr;
  wire s_axi_lite_awready;
  wire s_axi_lite_awready0;
  wire s_axi_lite_awready_i_1_n_0;
  wire s_axi_lite_awvalid;
  wire s_axi_lite_bready;
  wire s_axi_lite_bvalid;
  wire s_axi_lite_bvalid_i_1_n_0;
  wire s_axi_lite_rd_en;
  wire [31:0]s_axi_lite_rdata;
  wire \s_axi_lite_rdata[0]_i_2_n_0 ;
  wire \s_axi_lite_rdata[0]_i_3_n_0 ;
  wire \s_axi_lite_rdata[10]_i_1_n_0 ;
  wire \s_axi_lite_rdata[11]_i_1_n_0 ;
  wire \s_axi_lite_rdata[12]_i_1_n_0 ;
  wire \s_axi_lite_rdata[13]_i_1_n_0 ;
  wire \s_axi_lite_rdata[14]_i_1_n_0 ;
  wire \s_axi_lite_rdata[15]_i_1_n_0 ;
  wire \s_axi_lite_rdata[16]_i_1_n_0 ;
  wire \s_axi_lite_rdata[17]_i_1_n_0 ;
  wire \s_axi_lite_rdata[18]_i_1_n_0 ;
  wire \s_axi_lite_rdata[19]_i_1_n_0 ;
  wire \s_axi_lite_rdata[1]_i_2_n_0 ;
  wire \s_axi_lite_rdata[1]_i_3_n_0 ;
  wire \s_axi_lite_rdata[20]_i_1_n_0 ;
  wire \s_axi_lite_rdata[21]_i_1_n_0 ;
  wire \s_axi_lite_rdata[22]_i_1_n_0 ;
  wire \s_axi_lite_rdata[23]_i_1_n_0 ;
  wire \s_axi_lite_rdata[24]_i_1_n_0 ;
  wire \s_axi_lite_rdata[25]_i_1_n_0 ;
  wire \s_axi_lite_rdata[26]_i_1_n_0 ;
  wire \s_axi_lite_rdata[27]_i_1_n_0 ;
  wire \s_axi_lite_rdata[28]_i_1_n_0 ;
  wire \s_axi_lite_rdata[29]_i_1_n_0 ;
  wire \s_axi_lite_rdata[2]_i_2_n_0 ;
  wire \s_axi_lite_rdata[2]_i_3_n_0 ;
  wire \s_axi_lite_rdata[30]_i_1_n_0 ;
  wire \s_axi_lite_rdata[31]_i_1_n_0 ;
  wire \s_axi_lite_rdata[31]_i_3_n_0 ;
  wire \s_axi_lite_rdata[3]_i_2_n_0 ;
  wire \s_axi_lite_rdata[3]_i_3_n_0 ;
  wire \s_axi_lite_rdata[4]_i_1_n_0 ;
  wire \s_axi_lite_rdata[4]_i_2_n_0 ;
  wire \s_axi_lite_rdata[5]_i_1_n_0 ;
  wire \s_axi_lite_rdata[5]_i_2_n_0 ;
  wire \s_axi_lite_rdata[6]_i_1_n_0 ;
  wire \s_axi_lite_rdata[6]_i_2_n_0 ;
  wire \s_axi_lite_rdata[7]_i_1_n_0 ;
  wire \s_axi_lite_rdata[7]_i_2_n_0 ;
  wire \s_axi_lite_rdata[8]_i_1_n_0 ;
  wire \s_axi_lite_rdata[9]_i_1_n_0 ;
  wire \s_axi_lite_rdata_reg[0]_i_1_n_0 ;
  wire \s_axi_lite_rdata_reg[1]_i_1_n_0 ;
  wire \s_axi_lite_rdata_reg[2]_i_1_n_0 ;
  wire \s_axi_lite_rdata_reg[3]_i_1_n_0 ;
  wire s_axi_lite_rready;
  wire s_axi_lite_rvalid_i_1_n_0;
  wire s_axi_lite_rvalid_reg_0;
  wire [23:0]s_axi_lite_wdata;
  wire [2:0]s_axi_lite_wstrb;
  wire s_axi_lite_wvalid;
  wire spi_cpol;
  wire spi_dir_i_1_n_0;
  wire spi_dir_reg_n_0;
  wire spi_en;
  wire spi_en_i_1_n_0;
  wire spi_fsm_state;
  wire \spi_fsm_state[0]_i_1_n_0 ;
  wire \spi_fsm_state[1]_i_1_n_0 ;
  wire \spi_fsm_state_reg_n_0_[0] ;
  wire \spi_fsm_state_reg_n_0_[1] ;
  wire spi_io0_i;
  wire spi_io0_o;
  wire spi_io1_i;
  wire spi_io1_o;
  wire spi_io2_i;
  wire spi_io2_o;
  wire spi_io3_i;
  wire spi_io3_o;
  wire \spi_io_mode[0]_i_1_n_0 ;
  wire \spi_io_mode[1]_i_1_n_0 ;
  wire \spi_io_mode[2]_i_1_n_0 ;
  wire spi_io_mode_q;
  wire \spi_io_mode_q[2]_i_2_n_0 ;
  wire \spi_io_mode_q[2]_i_3_n_0 ;
  wire \spi_io_mode_q[2]_i_4_n_0 ;
  wire \spi_io_mode_q_reg_n_0_[0] ;
  wire \spi_io_mode_q_reg_n_0_[1] ;
  wire \spi_io_mode_q_reg_n_0_[2] ;
  wire \spi_io_mode_reg_n_0_[0] ;
  wire \spi_io_mode_reg_n_0_[1] ;
  wire \spi_io_mode_reg_n_0_[2] ;
  wire [3:0]spi_io_o;
  wire \spi_io_o[0]_i_1_n_0 ;
  wire \spi_io_o[0]_i_2_n_0 ;
  wire \spi_io_o[0]_i_4_n_0 ;
  wire \spi_io_o[0]_i_5_n_0 ;
  wire \spi_io_o[0]_i_6_n_0 ;
  wire \spi_io_o[1]_i_1_n_0 ;
  wire \spi_io_o[1]_i_3_n_0 ;
  wire \spi_io_o[1]_i_4_n_0 ;
  wire \spi_io_o[1]_i_5_n_0 ;
  wire \spi_io_o[2]_i_1_n_0 ;
  wire \spi_io_o[2]_i_3_n_0 ;
  wire \spi_io_o[3]_i_1_n_0 ;
  wire [2:0]spi_io_t;
  wire \spi_io_t[0]_i_2_n_0 ;
  wire \spi_io_t[0]_i_3_n_0 ;
  wire \spi_io_t[1]_i_2_n_0 ;
  wire spi_lsb_first_i_1_n_0;
  wire spi_lsb_first_reg_n_0;
  wire \spi_mmio_addr_rem[0]_i_1_n_0 ;
  wire \spi_mmio_addr_rem[1]_i_1_n_0 ;
  wire \spi_mmio_addr_rem[1]_i_2_n_0 ;
  wire \spi_mmio_addr_rem_reg_n_0_[0] ;
  wire \spi_mmio_addr_rem_reg_n_0_[1] ;
  wire spi_mmio_addr_size;
  wire [7:0]spi_mmio_cs_rem;
  wire \spi_mmio_cs_rem[5]_i_2_n_0 ;
  wire \spi_mmio_cs_rem[7]_i_1_n_0 ;
  wire \spi_mmio_cs_rem[7]_i_3_n_0 ;
  wire \spi_mmio_cs_rem_reg_n_0_[0] ;
  wire \spi_mmio_cs_rem_reg_n_0_[1] ;
  wire \spi_mmio_cs_rem_reg_n_0_[2] ;
  wire \spi_mmio_cs_rem_reg_n_0_[3] ;
  wire \spi_mmio_cs_rem_reg_n_0_[4] ;
  wire \spi_mmio_cs_rem_reg_n_0_[5] ;
  wire \spi_mmio_cs_rem_reg_n_0_[6] ;
  wire \spi_mmio_cs_rem_reg_n_0_[7] ;
  wire spi_mmio_cs_size;
  wire \spi_mmio_cs_size_reg_n_0_[0] ;
  wire \spi_mmio_cs_size_reg_n_0_[1] ;
  wire \spi_mmio_cs_size_reg_n_0_[2] ;
  wire \spi_mmio_cs_size_reg_n_0_[3] ;
  wire \spi_mmio_cs_size_reg_n_0_[4] ;
  wire \spi_mmio_cs_size_reg_n_0_[5] ;
  wire \spi_mmio_cs_size_reg_n_0_[6] ;
  wire \spi_mmio_cs_size_reg_n_0_[7] ;
  wire \spi_mmio_dummy_rem[0]_i_1_n_0 ;
  wire \spi_mmio_dummy_rem[1]_i_1_n_0 ;
  wire \spi_mmio_dummy_rem[1]_i_2_n_0 ;
  wire spi_mmio_en_i_1_n_0;
  wire spi_mmio_en_reg_n_0;
  wire spi_mmio_en_req16_out;
  wire spi_mmio_en_req_i_1_n_0;
  wire spi_mmio_en_req_reg_n_0;
  wire [2:0]spi_mmio_fsm_state__0;
  wire spi_mmio_mode_bits;
  wire \spi_mmio_mode_bits_reg_n_0_[0] ;
  wire \spi_mmio_mode_bits_reg_n_0_[1] ;
  wire \spi_mmio_mode_bits_reg_n_0_[2] ;
  wire \spi_mmio_mode_bits_reg_n_0_[3] ;
  wire \spi_mmio_mode_bits_reg_n_0_[4] ;
  wire \spi_mmio_mode_bits_reg_n_0_[5] ;
  wire \spi_mmio_mode_bits_reg_n_0_[6] ;
  wire \spi_mmio_mode_bits_reg_n_0_[7] ;
  wire \spi_mode[0]_i_1_n_0 ;
  wire \spi_mode[1]_i_1_n_0 ;
  wire \spi_mode[1]_i_2_n_0 ;
  wire \spi_mode_reg_n_0_[0] ;
  wire spi_rd_req_ack;
  wire spi_rd_req_ack_i_2_n_0;
  wire spi_rd_req_ack_reg_n_0;
  wire spi_rd_req_i_1_n_0;
  wire spi_rd_req_i_2_n_0;
  wire spi_rd_req_i_3_n_0;
  wire spi_rd_req_i_4_n_0;
  wire spi_rd_req_reg_n_0;
  wire spi_sck_div;
  wire \spi_sck_div_cnt[3]_i_1_n_0 ;
  wire \spi_sck_div_cnt[3]_i_3_n_0 ;
  wire [3:0]spi_sck_div_cnt_reg;
  wire spi_sck_div_en_i_1_n_0;
  wire spi_sck_div_en_reg_n_0;
  wire \spi_sck_div_reg_n_0_[0] ;
  wire \spi_sck_div_reg_n_0_[1] ;
  wire \spi_sck_div_reg_n_0_[2] ;
  wire \spi_sck_div_reg_n_0_[3] ;
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
  wire \spi_sr[7]_i_3_n_0 ;
  wire [4:1]spi_sr_bit_cnt;
  wire \spi_sr_bit_cnt[0]_i_1_n_0 ;
  wire \spi_sr_bit_cnt[2]_i_1_n_0 ;
  wire \spi_sr_bit_cnt[2]_i_2_n_0 ;
  wire \spi_sr_bit_cnt[3]_i_2_n_0 ;
  wire \spi_sr_bit_cnt[4]_i_1_n_0 ;
  wire \spi_sr_bit_cnt[4]_i_3_n_0 ;
  wire \spi_sr_bit_cnt_reg_n_0_[0] ;
  wire \spi_sr_bit_cnt_reg_n_0_[1] ;
  wire \spi_sr_bit_cnt_reg_n_0_[2] ;
  wire \spi_sr_bit_cnt_reg_n_0_[3] ;
  wire \spi_sr_bit_cnt_reg_n_0_[4] ;
  wire spi_sr_in_buf;
  wire [7:0]spi_sr_in_buf1_in;
  wire \spi_sr_in_buf[0]_i_2_n_0 ;
  wire \spi_sr_in_buf[0]_i_3_n_0 ;
  wire \spi_sr_in_buf[0]_i_4_n_0 ;
  wire \spi_sr_in_buf[1]_i_2_n_0 ;
  wire \spi_sr_in_buf[1]_i_3_n_0 ;
  wire \spi_sr_in_buf[1]_i_4_n_0 ;
  wire \spi_sr_in_buf[2]_i_2_n_0 ;
  wire \spi_sr_in_buf[2]_i_3_n_0 ;
  wire \spi_sr_in_buf[2]_i_4_n_0 ;
  wire \spi_sr_in_buf[2]_i_5_n_0 ;
  wire \spi_sr_in_buf[3]_i_2_n_0 ;
  wire \spi_sr_in_buf[3]_i_3_n_0 ;
  wire \spi_sr_in_buf[3]_i_4_n_0 ;
  wire \spi_sr_in_buf[3]_i_5_n_0 ;
  wire \spi_sr_in_buf[4]_i_2_n_0 ;
  wire \spi_sr_in_buf[4]_i_3_n_0 ;
  wire \spi_sr_in_buf[4]_i_4_n_0 ;
  wire \spi_sr_in_buf[4]_i_5_n_0 ;
  wire \spi_sr_in_buf[5]_i_2_n_0 ;
  wire \spi_sr_in_buf[5]_i_3_n_0 ;
  wire \spi_sr_in_buf[5]_i_4_n_0 ;
  wire \spi_sr_in_buf[6]_i_2_n_0 ;
  wire \spi_sr_in_buf[6]_i_3_n_0 ;
  wire \spi_sr_in_buf[6]_i_4_n_0 ;
  wire \spi_sr_in_buf[6]_i_5_n_0 ;
  wire \spi_sr_in_buf[7]_i_3_n_0 ;
  wire \spi_sr_in_buf[7]_i_4_n_0 ;
  wire \spi_sr_in_buf[7]_i_5_n_0 ;
  wire \spi_sr_in_buf[7]_i_6_n_0 ;
  wire \spi_sr_in_buf[7]_i_7_n_0 ;
  wire spi_sr_in_buf_ready_i_1_n_0;
  wire spi_sr_in_buf_ready_i_2_n_0;
  wire spi_sr_in_buf_ready_i_3_n_0;
  wire spi_sr_in_buf_ready_i_4_n_0;
  wire spi_sr_in_buf_ready_reg_n_0;
  wire spi_sr_in_buf_valid_i_1_n_0;
  wire spi_sr_in_buf_valid_i_2_n_0;
  wire spi_sr_in_buf_valid_reg_n_0;
  wire [7:0]spi_sr_out_buf;
  wire \spi_sr_out_buf[0]_i_2_n_0 ;
  wire \spi_sr_out_buf[0]_i_3_n_0 ;
  wire \spi_sr_out_buf[1]_i_2_n_0 ;
  wire \spi_sr_out_buf[1]_i_3_n_0 ;
  wire \spi_sr_out_buf[2]_i_2_n_0 ;
  wire \spi_sr_out_buf[2]_i_3_n_0 ;
  wire \spi_sr_out_buf[3]_i_2_n_0 ;
  wire \spi_sr_out_buf[3]_i_3_n_0 ;
  wire \spi_sr_out_buf[4]_i_2_n_0 ;
  wire \spi_sr_out_buf[4]_i_3_n_0 ;
  wire \spi_sr_out_buf[5]_i_2_n_0 ;
  wire \spi_sr_out_buf[5]_i_3_n_0 ;
  wire \spi_sr_out_buf[6]_i_2_n_0 ;
  wire \spi_sr_out_buf[6]_i_3_n_0 ;
  wire \spi_sr_out_buf[7]_i_10_n_0 ;
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
  wire spi_sr_out_buf_ready_reg_n_0;
  wire \spi_sr_out_buf_reg_n_0_[0] ;
  wire \spi_sr_out_buf_reg_n_0_[1] ;
  wire \spi_sr_out_buf_reg_n_0_[2] ;
  wire \spi_sr_out_buf_reg_n_0_[3] ;
  wire \spi_sr_out_buf_reg_n_0_[4] ;
  wire \spi_sr_out_buf_reg_n_0_[5] ;
  wire \spi_sr_out_buf_reg_n_0_[6] ;
  wire \spi_sr_out_buf_reg_n_0_[7] ;
  wire spi_sr_out_buf_valid_i_1_n_0;
  wire spi_sr_out_buf_valid_reg_n_0;
  wire \spi_sr_reg_n_0_[0] ;
  wire \spi_sr_reg_n_0_[1] ;
  wire \spi_sr_reg_n_0_[2] ;
  wire \spi_sr_reg_n_0_[3] ;
  wire \spi_sr_reg_n_0_[4] ;
  wire \spi_sr_reg_n_0_[5] ;
  wire \spi_sr_reg_n_0_[6] ;
  wire [0:0]spi_ss_o;
  wire \spi_ss_o[0]_i_1_n_0 ;
  wire \spi_ss_o[0]_i_2_n_0 ;
  wire \spi_ss_o[0]_i_3_n_0 ;
  wire \spi_ss_o[0]_i_4_n_0 ;
  wire \spi_ss_o[0]_i_5_n_0 ;
  wire \spi_ss_o[0]_i_6_n_0 ;
  wire [3:2]\NLW_s_axi_full_araddr_q_reg[23]_i_4_CO_UNCONNECTED ;
  wire [3:3]\NLW_s_axi_full_araddr_q_reg[23]_i_4_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \FSM_onehot_spi_fsm_state[2]_i_1 
       (.I0(\FSM_onehot_spi_fsm_state[2]_i_2_n_0 ),
        .I1(\spi_io_t[0]_i_3_n_0 ),
        .I2(\FSM_onehot_spi_fsm_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_spi_fsm_state[2]_i_3_n_0 ),
        .I4(\FSM_onehot_spi_fsm_state_reg_n_0_[0] ),
        .I5(\FSM_onehot_spi_fsm_state[2]_i_4_n_0 ),
        .O(spi_fsm_state));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hEDFF)) 
    \FSM_onehot_spi_fsm_state[2]_i_2 
       (.I0(spi_sck_int),
        .I1(\spi_io_o[0]_i_4_n_0 ),
        .I2(\spi_mode_reg_n_0_[0] ),
        .I3(\FSM_onehot_spi_fsm_state_reg_n_0_[2] ),
        .O(\FSM_onehot_spi_fsm_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF6FFFFF6F)) 
    \FSM_onehot_spi_fsm_state[2]_i_3 
       (.I0(\spi_mode_reg_n_0_[0] ),
        .I1(spi_sck_int),
        .I2(spi_sck_div_en_reg_n_0),
        .I3(\spi_sck_div_reg_n_0_[3] ),
        .I4(spi_sck_div_cnt_reg[3]),
        .I5(\spi_sck_div_cnt[3]_i_3_n_0 ),
        .O(\FSM_onehot_spi_fsm_state[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \FSM_onehot_spi_fsm_state[2]_i_4 
       (.I0(spi_sr_out_buf_valid_reg_n_0),
        .I1(spi_rd_req_ack_reg_n_0),
        .I2(spi_rd_req_reg_n_0),
        .O(\FSM_onehot_spi_fsm_state[2]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "SPI_FSM_STATE_WAIT_XFER_REQ:001,SPI_FSM_STATE_WAIT_SCK_SYNC:010,SPI_FSM_STATE_ACTIVE:100," *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_spi_fsm_state_reg[0] 
       (.C(aclk),
        .CE(spi_fsm_state),
        .D(\FSM_onehot_spi_fsm_state_reg_n_0_[2] ),
        .Q(\FSM_onehot_spi_fsm_state_reg_n_0_[0] ),
        .S(\spi_io_o[0]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "SPI_FSM_STATE_WAIT_XFER_REQ:001,SPI_FSM_STATE_WAIT_SCK_SYNC:010,SPI_FSM_STATE_ACTIVE:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_spi_fsm_state_reg[1] 
       (.C(aclk),
        .CE(spi_fsm_state),
        .D(\FSM_onehot_spi_fsm_state_reg_n_0_[0] ),
        .Q(\FSM_onehot_spi_fsm_state_reg_n_0_[1] ),
        .R(\spi_io_o[0]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "SPI_FSM_STATE_WAIT_XFER_REQ:001,SPI_FSM_STATE_WAIT_SCK_SYNC:010,SPI_FSM_STATE_ACTIVE:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_spi_fsm_state_reg[2] 
       (.C(aclk),
        .CE(spi_fsm_state),
        .D(\FSM_onehot_spi_fsm_state_reg_n_0_[1] ),
        .Q(\FSM_onehot_spi_fsm_state_reg_n_0_[2] ),
        .R(\spi_io_o[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFFFFEF0000)) 
    \FSM_sequential_spi_mmio_fsm_state[0]_i_1 
       (.I0(p_3_in[6]),
        .I1(p_3_in[7]),
        .I2(spi_mmio_fsm_state__0[1]),
        .I3(spi_mmio_fsm_state__0[2]),
        .I4(\FSM_sequential_spi_mmio_fsm_state[2]_i_3_n_0 ),
        .I5(spi_mmio_fsm_state__0[0]),
        .O(\FSM_sequential_spi_mmio_fsm_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00FCFFFFBB000000)) 
    \FSM_sequential_spi_mmio_fsm_state[1]_i_1 
       (.I0(spi_mmio_en_reg_n_0),
        .I1(spi_mmio_fsm_state__0[2]),
        .I2(\FSM_sequential_spi_mmio_fsm_state[1]_i_2_n_0 ),
        .I3(spi_mmio_fsm_state__0[0]),
        .I4(\FSM_sequential_spi_mmio_fsm_state[2]_i_3_n_0 ),
        .I5(spi_mmio_fsm_state__0[1]),
        .O(\FSM_sequential_spi_mmio_fsm_state[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_spi_mmio_fsm_state[1]_i_2 
       (.I0(p_3_in[6]),
        .I1(p_3_in[7]),
        .O(\FSM_sequential_spi_mmio_fsm_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FFFFFF100000)) 
    \FSM_sequential_spi_mmio_fsm_state[2]_i_1 
       (.I0(p_3_in[6]),
        .I1(p_3_in[7]),
        .I2(spi_mmio_fsm_state__0[1]),
        .I3(\FSM_sequential_spi_mmio_fsm_state[2]_i_2_n_0 ),
        .I4(\FSM_sequential_spi_mmio_fsm_state[2]_i_3_n_0 ),
        .I5(spi_mmio_fsm_state__0[2]),
        .O(\FSM_sequential_spi_mmio_fsm_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0FF000F0FF07FF07)) 
    \FSM_sequential_spi_mmio_fsm_state[2]_i_2 
       (.I0(spi_mmio_en_req_reg_n_0),
        .I1(spi_en),
        .I2(spi_mmio_fsm_state__0[1]),
        .I3(spi_mmio_fsm_state__0[2]),
        .I4(spi_mmio_en_reg_n_0),
        .I5(spi_mmio_fsm_state__0[0]),
        .O(\FSM_sequential_spi_mmio_fsm_state[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFF4)) 
    \FSM_sequential_spi_mmio_fsm_state[2]_i_3 
       (.I0(\FSM_sequential_spi_mmio_fsm_state[2]_i_4_n_0 ),
        .I1(s_axi_full_rvalid_i_2_n_0),
        .I2(\FSM_sequential_spi_mmio_fsm_state[2]_i_5_n_0 ),
        .I3(\FSM_sequential_spi_mmio_fsm_state[2]_i_6_n_0 ),
        .I4(\spi_ss_o[0]_i_4_n_0 ),
        .O(\FSM_sequential_spi_mmio_fsm_state[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \FSM_sequential_spi_mmio_fsm_state[2]_i_4 
       (.I0(\s_axi_full_arlen_q_reg_n_0_[7] ),
        .I1(\s_axi_full_arlen_q_reg_n_0_[6] ),
        .I2(\s_axi_full_arlen_q[7]_i_3_n_0 ),
        .O(\FSM_sequential_spi_mmio_fsm_state[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000003230020)) 
    \FSM_sequential_spi_mmio_fsm_state[2]_i_5 
       (.I0(\FSM_sequential_spi_mmio_fsm_state[2]_i_7_n_0 ),
        .I1(spi_mmio_fsm_state__0[1]),
        .I2(spi_mmio_fsm_state__0[2]),
        .I3(spi_sr_out_buf_valid_reg_n_0),
        .I4(\FSM_sequential_spi_mmio_fsm_state[2]_i_8_n_0 ),
        .I5(spi_mmio_fsm_state__0[0]),
        .O(\FSM_sequential_spi_mmio_fsm_state[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF1110)) 
    \FSM_sequential_spi_mmio_fsm_state[2]_i_6 
       (.I0(\spi_mmio_addr_rem_reg_n_0_[1] ),
        .I1(\spi_mmio_addr_rem_reg_n_0_[0] ),
        .I2(\spi_mmio_addr_rem[1]_i_2_n_0 ),
        .I3(s_axi_full_arsize_q),
        .I4(\FSM_sequential_spi_mmio_fsm_state[2]_i_9_n_0 ),
        .I5(\spi_sr_out_buf[7]_i_9_n_0 ),
        .O(\FSM_sequential_spi_mmio_fsm_state[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_spi_mmio_fsm_state[2]_i_7 
       (.I0(spi_rd_req_reg_n_0),
        .I1(spi_sr_in_buf_valid_reg_n_0),
        .O(\FSM_sequential_spi_mmio_fsm_state[2]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_sequential_spi_mmio_fsm_state[2]_i_8 
       (.I0(s_axi_full_arvalid),
        .I1(s_axi_full_arready_reg_0),
        .O(\FSM_sequential_spi_mmio_fsm_state[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    \FSM_sequential_spi_mmio_fsm_state[2]_i_9 
       (.I0(spi_rd_req_reg_n_0),
        .I1(spi_mmio_fsm_state__0[0]),
        .I2(spi_mmio_fsm_state__0[1]),
        .I3(spi_mmio_fsm_state__0[2]),
        .I4(p_3_in[6]),
        .I5(p_3_in[7]),
        .O(\FSM_sequential_spi_mmio_fsm_state[2]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "SPI_MMIO_FSM_STATE_XFER_MODE:010,SPI_MMIO_FSM_STATE_WAIT_CS:111,SPI_MMIO_FSM_STATE_XFER_DATA:101,SPI_MMIO_FSM_STATE_XFER_ADDR:001,SPI_MMIO_FSM_STATE_XFER_DUMMY:011,SPI_MMIO_FSM_STATE_CLEAR_IN_BUF:100,SPI_MMIO_FSM_STATE_READY:000,SPI_MMIO_FSM_STATE_RAISE_CS:110" *) 
  FDRE \FSM_sequential_spi_mmio_fsm_state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_sequential_spi_mmio_fsm_state[0]_i_1_n_0 ),
        .Q(spi_mmio_fsm_state__0[0]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* FSM_ENCODED_STATES = "SPI_MMIO_FSM_STATE_XFER_MODE:010,SPI_MMIO_FSM_STATE_WAIT_CS:111,SPI_MMIO_FSM_STATE_XFER_DATA:101,SPI_MMIO_FSM_STATE_XFER_ADDR:001,SPI_MMIO_FSM_STATE_XFER_DUMMY:011,SPI_MMIO_FSM_STATE_CLEAR_IN_BUF:100,SPI_MMIO_FSM_STATE_READY:000,SPI_MMIO_FSM_STATE_RAISE_CS:110" *) 
  FDRE \FSM_sequential_spi_mmio_fsm_state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_sequential_spi_mmio_fsm_state[1]_i_1_n_0 ),
        .Q(spi_mmio_fsm_state__0[1]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* FSM_ENCODED_STATES = "SPI_MMIO_FSM_STATE_XFER_MODE:010,SPI_MMIO_FSM_STATE_WAIT_CS:111,SPI_MMIO_FSM_STATE_XFER_DATA:101,SPI_MMIO_FSM_STATE_XFER_ADDR:001,SPI_MMIO_FSM_STATE_XFER_DUMMY:011,SPI_MMIO_FSM_STATE_CLEAR_IN_BUF:100,SPI_MMIO_FSM_STATE_READY:000,SPI_MMIO_FSM_STATE_RAISE_CS:110" *) 
  FDRE \FSM_sequential_spi_mmio_fsm_state_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_sequential_spi_mmio_fsm_state[2]_i_1_n_0 ),
        .Q(spi_mmio_fsm_state__0[2]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \s_axi_full_araddr_q[0]_i_1 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I1(spi_mmio_fsm_state__0[0]),
        .I2(s_axi_full_araddr[0]),
        .O(s_axi_full_araddr_q[0]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_full_araddr_q[10]_i_1 
       (.I0(in46[10]),
        .I1(spi_mmio_fsm_state__0[0]),
        .I2(s_axi_full_araddr[10]),
        .O(s_axi_full_araddr_q[10]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_full_araddr_q[11]_i_1 
       (.I0(in46[11]),
        .I1(spi_mmio_fsm_state__0[0]),
        .I2(s_axi_full_araddr[11]),
        .O(s_axi_full_araddr_q[11]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_full_araddr_q[12]_i_1 
       (.I0(in46[12]),
        .I1(spi_mmio_fsm_state__0[0]),
        .I2(s_axi_full_araddr[12]),
        .O(s_axi_full_araddr_q[12]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_full_araddr_q[13]_i_1 
       (.I0(in46[13]),
        .I1(spi_mmio_fsm_state__0[0]),
        .I2(s_axi_full_araddr[13]),
        .O(s_axi_full_araddr_q[13]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_full_araddr_q[14]_i_1 
       (.I0(in46[14]),
        .I1(spi_mmio_fsm_state__0[0]),
        .I2(s_axi_full_araddr[14]),
        .O(s_axi_full_araddr_q[14]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_full_araddr_q[15]_i_1 
       (.I0(in46[15]),
        .I1(spi_mmio_fsm_state__0[0]),
        .I2(s_axi_full_araddr[15]),
        .O(s_axi_full_araddr_q[15]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_full_araddr_q[16]_i_1 
       (.I0(in46[16]),
        .I1(spi_mmio_fsm_state__0[0]),
        .I2(s_axi_full_araddr[16]),
        .O(s_axi_full_araddr_q[16]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_full_araddr_q[17]_i_1 
       (.I0(in46[17]),
        .I1(spi_mmio_fsm_state__0[0]),
        .I2(s_axi_full_araddr[17]),
        .O(s_axi_full_araddr_q[17]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_full_araddr_q[18]_i_1 
       (.I0(in46[18]),
        .I1(spi_mmio_fsm_state__0[0]),
        .I2(s_axi_full_araddr[18]),
        .O(s_axi_full_araddr_q[18]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_full_araddr_q[19]_i_1 
       (.I0(in46[19]),
        .I1(spi_mmio_fsm_state__0[0]),
        .I2(s_axi_full_araddr[19]),
        .O(s_axi_full_araddr_q[19]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_full_araddr_q[1]_i_1 
       (.I0(in46[1]),
        .I1(spi_mmio_fsm_state__0[0]),
        .I2(s_axi_full_araddr[1]),
        .O(s_axi_full_araddr_q[1]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_full_araddr_q[20]_i_1 
       (.I0(in46[20]),
        .I1(spi_mmio_fsm_state__0[0]),
        .I2(s_axi_full_araddr[20]),
        .O(s_axi_full_araddr_q[20]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_full_araddr_q[21]_i_1 
       (.I0(in46[21]),
        .I1(spi_mmio_fsm_state__0[0]),
        .I2(s_axi_full_araddr[21]),
        .O(s_axi_full_araddr_q[21]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_full_araddr_q[22]_i_1 
       (.I0(in46[22]),
        .I1(spi_mmio_fsm_state__0[0]),
        .I2(s_axi_full_araddr[22]),
        .O(s_axi_full_araddr_q[22]));
  LUT6 #(
    .INIT(64'h01000000FFFFFFFF)) 
    \s_axi_full_araddr_q[23]_i_1 
       (.I0(spi_mmio_fsm_state__0[0]),
        .I1(spi_mmio_fsm_state__0[1]),
        .I2(spi_mmio_fsm_state__0[2]),
        .I3(s_axi_full_arvalid),
        .I4(s_axi_full_arready_reg_0),
        .I5(\s_axi_full_araddr_q[23]_i_3_n_0 ),
        .O(\s_axi_full_araddr_q[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_full_araddr_q[23]_i_2 
       (.I0(in46[23]),
        .I1(spi_mmio_fsm_state__0[0]),
        .I2(s_axi_full_araddr[23]),
        .O(s_axi_full_araddr_q[23]));
  LUT6 #(
    .INIT(64'hFFFFFFFFF777F7F7)) 
    \s_axi_full_araddr_q[23]_i_3 
       (.I0(\s_axi_full_araddr_q[23]_i_5_n_0 ),
        .I1(spi_mmio_fsm_state__0[2]),
        .I2(spi_mmio_en_reg_n_0),
        .I3(spi_sr_in_buf_ready_reg_n_0),
        .I4(spi_sr_in_buf_valid_reg_n_0),
        .I5(s_axi_full_rvalid_reg_0),
        .O(\s_axi_full_araddr_q[23]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_full_araddr_q[23]_i_5 
       (.I0(spi_mmio_fsm_state__0[0]),
        .I1(spi_mmio_fsm_state__0[1]),
        .O(\s_axi_full_araddr_q[23]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_full_araddr_q[2]_i_1 
       (.I0(in46[2]),
        .I1(spi_mmio_fsm_state__0[0]),
        .I2(s_axi_full_araddr[2]),
        .O(s_axi_full_araddr_q[2]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_full_araddr_q[3]_i_1 
       (.I0(in46[3]),
        .I1(spi_mmio_fsm_state__0[0]),
        .I2(s_axi_full_araddr[3]),
        .O(s_axi_full_araddr_q[3]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_full_araddr_q[4]_i_1 
       (.I0(in46[4]),
        .I1(spi_mmio_fsm_state__0[0]),
        .I2(s_axi_full_araddr[4]),
        .O(s_axi_full_araddr_q[4]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_full_araddr_q[5]_i_1 
       (.I0(in46[5]),
        .I1(spi_mmio_fsm_state__0[0]),
        .I2(s_axi_full_araddr[5]),
        .O(s_axi_full_araddr_q[5]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_full_araddr_q[6]_i_1 
       (.I0(in46[6]),
        .I1(spi_mmio_fsm_state__0[0]),
        .I2(s_axi_full_araddr[6]),
        .O(s_axi_full_araddr_q[6]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_full_araddr_q[7]_i_1 
       (.I0(in46[7]),
        .I1(spi_mmio_fsm_state__0[0]),
        .I2(s_axi_full_araddr[7]),
        .O(s_axi_full_araddr_q[7]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_full_araddr_q[8]_i_1 
       (.I0(in46[8]),
        .I1(spi_mmio_fsm_state__0[0]),
        .I2(s_axi_full_araddr[8]),
        .O(s_axi_full_araddr_q[8]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_full_araddr_q[9]_i_1 
       (.I0(in46[9]),
        .I1(spi_mmio_fsm_state__0[0]),
        .I2(s_axi_full_araddr[9]),
        .O(s_axi_full_araddr_q[9]));
  FDRE \s_axi_full_araddr_q_reg[0] 
       (.C(aclk),
        .CE(\s_axi_full_araddr_q[23]_i_1_n_0 ),
        .D(s_axi_full_araddr_q[0]),
        .Q(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \s_axi_full_araddr_q_reg[10] 
       (.C(aclk),
        .CE(\s_axi_full_araddr_q[23]_i_1_n_0 ),
        .D(s_axi_full_araddr_q[10]),
        .Q(\s_axi_full_araddr_q_reg_n_0_[10] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \s_axi_full_araddr_q_reg[11] 
       (.C(aclk),
        .CE(\s_axi_full_araddr_q[23]_i_1_n_0 ),
        .D(s_axi_full_araddr_q[11]),
        .Q(\s_axi_full_araddr_q_reg_n_0_[11] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \s_axi_full_araddr_q_reg[12] 
       (.C(aclk),
        .CE(\s_axi_full_araddr_q[23]_i_1_n_0 ),
        .D(s_axi_full_araddr_q[12]),
        .Q(\s_axi_full_araddr_q_reg_n_0_[12] ),
        .R(s_axi_lite_awready_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_axi_full_araddr_q_reg[12]_i_2 
       (.CI(\s_axi_full_araddr_q_reg[8]_i_2_n_0 ),
        .CO({\s_axi_full_araddr_q_reg[12]_i_2_n_0 ,\s_axi_full_araddr_q_reg[12]_i_2_n_1 ,\s_axi_full_araddr_q_reg[12]_i_2_n_2 ,\s_axi_full_araddr_q_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in46[12:9]),
        .S({\s_axi_full_araddr_q_reg_n_0_[12] ,\s_axi_full_araddr_q_reg_n_0_[11] ,\s_axi_full_araddr_q_reg_n_0_[10] ,\s_axi_full_araddr_q_reg_n_0_[9] }));
  FDRE \s_axi_full_araddr_q_reg[13] 
       (.C(aclk),
        .CE(\s_axi_full_araddr_q[23]_i_1_n_0 ),
        .D(s_axi_full_araddr_q[13]),
        .Q(\s_axi_full_araddr_q_reg_n_0_[13] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \s_axi_full_araddr_q_reg[14] 
       (.C(aclk),
        .CE(\s_axi_full_araddr_q[23]_i_1_n_0 ),
        .D(s_axi_full_araddr_q[14]),
        .Q(\s_axi_full_araddr_q_reg_n_0_[14] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \s_axi_full_araddr_q_reg[15] 
       (.C(aclk),
        .CE(\s_axi_full_araddr_q[23]_i_1_n_0 ),
        .D(s_axi_full_araddr_q[15]),
        .Q(\s_axi_full_araddr_q_reg_n_0_[15] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \s_axi_full_araddr_q_reg[16] 
       (.C(aclk),
        .CE(\s_axi_full_araddr_q[23]_i_1_n_0 ),
        .D(s_axi_full_araddr_q[16]),
        .Q(\s_axi_full_araddr_q_reg_n_0_[16] ),
        .R(s_axi_lite_awready_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_axi_full_araddr_q_reg[16]_i_2 
       (.CI(\s_axi_full_araddr_q_reg[12]_i_2_n_0 ),
        .CO({\s_axi_full_araddr_q_reg[16]_i_2_n_0 ,\s_axi_full_araddr_q_reg[16]_i_2_n_1 ,\s_axi_full_araddr_q_reg[16]_i_2_n_2 ,\s_axi_full_araddr_q_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in46[16:13]),
        .S({\s_axi_full_araddr_q_reg_n_0_[16] ,\s_axi_full_araddr_q_reg_n_0_[15] ,\s_axi_full_araddr_q_reg_n_0_[14] ,\s_axi_full_araddr_q_reg_n_0_[13] }));
  FDRE \s_axi_full_araddr_q_reg[17] 
       (.C(aclk),
        .CE(\s_axi_full_araddr_q[23]_i_1_n_0 ),
        .D(s_axi_full_araddr_q[17]),
        .Q(\s_axi_full_araddr_q_reg_n_0_[17] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \s_axi_full_araddr_q_reg[18] 
       (.C(aclk),
        .CE(\s_axi_full_araddr_q[23]_i_1_n_0 ),
        .D(s_axi_full_araddr_q[18]),
        .Q(\s_axi_full_araddr_q_reg_n_0_[18] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \s_axi_full_araddr_q_reg[19] 
       (.C(aclk),
        .CE(\s_axi_full_araddr_q[23]_i_1_n_0 ),
        .D(s_axi_full_araddr_q[19]),
        .Q(\s_axi_full_araddr_q_reg_n_0_[19] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \s_axi_full_araddr_q_reg[1] 
       (.C(aclk),
        .CE(\s_axi_full_araddr_q[23]_i_1_n_0 ),
        .D(s_axi_full_araddr_q[1]),
        .Q(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \s_axi_full_araddr_q_reg[20] 
       (.C(aclk),
        .CE(\s_axi_full_araddr_q[23]_i_1_n_0 ),
        .D(s_axi_full_araddr_q[20]),
        .Q(\s_axi_full_araddr_q_reg_n_0_[20] ),
        .R(s_axi_lite_awready_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_axi_full_araddr_q_reg[20]_i_2 
       (.CI(\s_axi_full_araddr_q_reg[16]_i_2_n_0 ),
        .CO({\s_axi_full_araddr_q_reg[20]_i_2_n_0 ,\s_axi_full_araddr_q_reg[20]_i_2_n_1 ,\s_axi_full_araddr_q_reg[20]_i_2_n_2 ,\s_axi_full_araddr_q_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in46[20:17]),
        .S({\s_axi_full_araddr_q_reg_n_0_[20] ,\s_axi_full_araddr_q_reg_n_0_[19] ,\s_axi_full_araddr_q_reg_n_0_[18] ,\s_axi_full_araddr_q_reg_n_0_[17] }));
  FDRE \s_axi_full_araddr_q_reg[21] 
       (.C(aclk),
        .CE(\s_axi_full_araddr_q[23]_i_1_n_0 ),
        .D(s_axi_full_araddr_q[21]),
        .Q(\s_axi_full_araddr_q_reg_n_0_[21] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \s_axi_full_araddr_q_reg[22] 
       (.C(aclk),
        .CE(\s_axi_full_araddr_q[23]_i_1_n_0 ),
        .D(s_axi_full_araddr_q[22]),
        .Q(\s_axi_full_araddr_q_reg_n_0_[22] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \s_axi_full_araddr_q_reg[23] 
       (.C(aclk),
        .CE(\s_axi_full_araddr_q[23]_i_1_n_0 ),
        .D(s_axi_full_araddr_q[23]),
        .Q(\s_axi_full_araddr_q_reg_n_0_[23] ),
        .R(s_axi_lite_awready_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_axi_full_araddr_q_reg[23]_i_4 
       (.CI(\s_axi_full_araddr_q_reg[20]_i_2_n_0 ),
        .CO({\NLW_s_axi_full_araddr_q_reg[23]_i_4_CO_UNCONNECTED [3:2],\s_axi_full_araddr_q_reg[23]_i_4_n_2 ,\s_axi_full_araddr_q_reg[23]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_s_axi_full_araddr_q_reg[23]_i_4_O_UNCONNECTED [3],in46[23:21]}),
        .S({1'b0,\s_axi_full_araddr_q_reg_n_0_[23] ,\s_axi_full_araddr_q_reg_n_0_[22] ,\s_axi_full_araddr_q_reg_n_0_[21] }));
  FDRE \s_axi_full_araddr_q_reg[2] 
       (.C(aclk),
        .CE(\s_axi_full_araddr_q[23]_i_1_n_0 ),
        .D(s_axi_full_araddr_q[2]),
        .Q(\s_axi_full_araddr_q_reg_n_0_[2] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \s_axi_full_araddr_q_reg[3] 
       (.C(aclk),
        .CE(\s_axi_full_araddr_q[23]_i_1_n_0 ),
        .D(s_axi_full_araddr_q[3]),
        .Q(\s_axi_full_araddr_q_reg_n_0_[3] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \s_axi_full_araddr_q_reg[4] 
       (.C(aclk),
        .CE(\s_axi_full_araddr_q[23]_i_1_n_0 ),
        .D(s_axi_full_araddr_q[4]),
        .Q(\s_axi_full_araddr_q_reg_n_0_[4] ),
        .R(s_axi_lite_awready_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_axi_full_araddr_q_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\s_axi_full_araddr_q_reg[4]_i_2_n_0 ,\s_axi_full_araddr_q_reg[4]_i_2_n_1 ,\s_axi_full_araddr_q_reg[4]_i_2_n_2 ,\s_axi_full_araddr_q_reg[4]_i_2_n_3 }),
        .CYINIT(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in46[4:1]),
        .S({\s_axi_full_araddr_q_reg_n_0_[4] ,\s_axi_full_araddr_q_reg_n_0_[3] ,\s_axi_full_araddr_q_reg_n_0_[2] ,\s_axi_full_araddr_q_reg_n_0_[1] }));
  FDRE \s_axi_full_araddr_q_reg[5] 
       (.C(aclk),
        .CE(\s_axi_full_araddr_q[23]_i_1_n_0 ),
        .D(s_axi_full_araddr_q[5]),
        .Q(\s_axi_full_araddr_q_reg_n_0_[5] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \s_axi_full_araddr_q_reg[6] 
       (.C(aclk),
        .CE(\s_axi_full_araddr_q[23]_i_1_n_0 ),
        .D(s_axi_full_araddr_q[6]),
        .Q(\s_axi_full_araddr_q_reg_n_0_[6] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \s_axi_full_araddr_q_reg[7] 
       (.C(aclk),
        .CE(\s_axi_full_araddr_q[23]_i_1_n_0 ),
        .D(s_axi_full_araddr_q[7]),
        .Q(\s_axi_full_araddr_q_reg_n_0_[7] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \s_axi_full_araddr_q_reg[8] 
       (.C(aclk),
        .CE(\s_axi_full_araddr_q[23]_i_1_n_0 ),
        .D(s_axi_full_araddr_q[8]),
        .Q(\s_axi_full_araddr_q_reg_n_0_[8] ),
        .R(s_axi_lite_awready_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_axi_full_araddr_q_reg[8]_i_2 
       (.CI(\s_axi_full_araddr_q_reg[4]_i_2_n_0 ),
        .CO({\s_axi_full_araddr_q_reg[8]_i_2_n_0 ,\s_axi_full_araddr_q_reg[8]_i_2_n_1 ,\s_axi_full_araddr_q_reg[8]_i_2_n_2 ,\s_axi_full_araddr_q_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in46[8:5]),
        .S({\s_axi_full_araddr_q_reg_n_0_[8] ,\s_axi_full_araddr_q_reg_n_0_[7] ,\s_axi_full_araddr_q_reg_n_0_[6] ,\s_axi_full_araddr_q_reg_n_0_[5] }));
  FDRE \s_axi_full_araddr_q_reg[9] 
       (.C(aclk),
        .CE(\s_axi_full_araddr_q[23]_i_1_n_0 ),
        .D(s_axi_full_araddr_q[9]),
        .Q(\s_axi_full_araddr_q_reg_n_0_[9] ),
        .R(s_axi_lite_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \s_axi_full_arlen_q[0]_i_1 
       (.I0(\s_axi_full_arlen_q_reg_n_0_[0] ),
        .I1(spi_mmio_fsm_state__0[0]),
        .I2(s_axi_full_arlen[0]),
        .O(s_axi_full_arlen_q[0]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h9F90)) 
    \s_axi_full_arlen_q[1]_i_1 
       (.I0(\s_axi_full_arlen_q_reg_n_0_[1] ),
        .I1(\s_axi_full_arlen_q_reg_n_0_[0] ),
        .I2(spi_mmio_fsm_state__0[0]),
        .I3(s_axi_full_arlen[1]),
        .O(s_axi_full_arlen_q[1]));
  LUT5 #(
    .INIT(32'hE1FFE100)) 
    \s_axi_full_arlen_q[2]_i_1 
       (.I0(\s_axi_full_arlen_q_reg_n_0_[1] ),
        .I1(\s_axi_full_arlen_q_reg_n_0_[0] ),
        .I2(\s_axi_full_arlen_q_reg_n_0_[2] ),
        .I3(spi_mmio_fsm_state__0[0]),
        .I4(s_axi_full_arlen[2]),
        .O(s_axi_full_arlen_q[2]));
  LUT6 #(
    .INIT(64'hFE01FFFFFE010000)) 
    \s_axi_full_arlen_q[3]_i_1 
       (.I0(\s_axi_full_arlen_q_reg_n_0_[2] ),
        .I1(\s_axi_full_arlen_q_reg_n_0_[0] ),
        .I2(\s_axi_full_arlen_q_reg_n_0_[1] ),
        .I3(\s_axi_full_arlen_q_reg_n_0_[3] ),
        .I4(spi_mmio_fsm_state__0[0]),
        .I5(s_axi_full_arlen[3]),
        .O(s_axi_full_arlen_q[3]));
  LUT4 #(
    .INIT(16'h6F60)) 
    \s_axi_full_arlen_q[4]_i_1 
       (.I0(\s_axi_full_arlen_q_reg_n_0_[4] ),
        .I1(\s_axi_full_arlen_q[5]_i_2_n_0 ),
        .I2(spi_mmio_fsm_state__0[0]),
        .I3(s_axi_full_arlen[4]),
        .O(s_axi_full_arlen_q[4]));
  LUT5 #(
    .INIT(32'hB4FFB400)) 
    \s_axi_full_arlen_q[5]_i_1 
       (.I0(\s_axi_full_arlen_q_reg_n_0_[4] ),
        .I1(\s_axi_full_arlen_q[5]_i_2_n_0 ),
        .I2(\s_axi_full_arlen_q_reg_n_0_[5] ),
        .I3(spi_mmio_fsm_state__0[0]),
        .I4(s_axi_full_arlen[5]),
        .O(s_axi_full_arlen_q[5]));
  LUT4 #(
    .INIT(16'h0001)) 
    \s_axi_full_arlen_q[5]_i_2 
       (.I0(\s_axi_full_arlen_q_reg_n_0_[3] ),
        .I1(\s_axi_full_arlen_q_reg_n_0_[1] ),
        .I2(\s_axi_full_arlen_q_reg_n_0_[0] ),
        .I3(\s_axi_full_arlen_q_reg_n_0_[2] ),
        .O(\s_axi_full_arlen_q[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \s_axi_full_arlen_q[6]_i_1 
       (.I0(\s_axi_full_arlen_q_reg_n_0_[6] ),
        .I1(\s_axi_full_arlen_q[7]_i_3_n_0 ),
        .I2(spi_mmio_fsm_state__0[0]),
        .I3(s_axi_full_arlen[6]),
        .O(s_axi_full_arlen_q[6]));
  LUT5 #(
    .INIT(32'hEEEAEEEE)) 
    \s_axi_full_arlen_q[7]_i_1 
       (.I0(s_axi_full_arsize_q),
        .I1(s_axi_full_rvalid_i_2_n_0),
        .I2(\s_axi_full_arlen_q_reg_n_0_[7] ),
        .I3(\s_axi_full_arlen_q_reg_n_0_[6] ),
        .I4(\s_axi_full_arlen_q[7]_i_3_n_0 ),
        .O(\s_axi_full_arlen_q[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h9AFF9A00)) 
    \s_axi_full_arlen_q[7]_i_2 
       (.I0(\s_axi_full_arlen_q_reg_n_0_[7] ),
        .I1(\s_axi_full_arlen_q_reg_n_0_[6] ),
        .I2(\s_axi_full_arlen_q[7]_i_3_n_0 ),
        .I3(spi_mmio_fsm_state__0[0]),
        .I4(s_axi_full_arlen[7]),
        .O(s_axi_full_arlen_q[7]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \s_axi_full_arlen_q[7]_i_3 
       (.I0(\s_axi_full_arlen_q_reg_n_0_[5] ),
        .I1(\s_axi_full_arlen_q_reg_n_0_[3] ),
        .I2(\s_axi_full_arlen_q_reg_n_0_[1] ),
        .I3(\s_axi_full_arlen_q_reg_n_0_[0] ),
        .I4(\s_axi_full_arlen_q_reg_n_0_[2] ),
        .I5(\s_axi_full_arlen_q_reg_n_0_[4] ),
        .O(\s_axi_full_arlen_q[7]_i_3_n_0 ));
  FDRE \s_axi_full_arlen_q_reg[0] 
       (.C(aclk),
        .CE(\s_axi_full_arlen_q[7]_i_1_n_0 ),
        .D(s_axi_full_arlen_q[0]),
        .Q(\s_axi_full_arlen_q_reg_n_0_[0] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \s_axi_full_arlen_q_reg[1] 
       (.C(aclk),
        .CE(\s_axi_full_arlen_q[7]_i_1_n_0 ),
        .D(s_axi_full_arlen_q[1]),
        .Q(\s_axi_full_arlen_q_reg_n_0_[1] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \s_axi_full_arlen_q_reg[2] 
       (.C(aclk),
        .CE(\s_axi_full_arlen_q[7]_i_1_n_0 ),
        .D(s_axi_full_arlen_q[2]),
        .Q(\s_axi_full_arlen_q_reg_n_0_[2] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \s_axi_full_arlen_q_reg[3] 
       (.C(aclk),
        .CE(\s_axi_full_arlen_q[7]_i_1_n_0 ),
        .D(s_axi_full_arlen_q[3]),
        .Q(\s_axi_full_arlen_q_reg_n_0_[3] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \s_axi_full_arlen_q_reg[4] 
       (.C(aclk),
        .CE(\s_axi_full_arlen_q[7]_i_1_n_0 ),
        .D(s_axi_full_arlen_q[4]),
        .Q(\s_axi_full_arlen_q_reg_n_0_[4] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \s_axi_full_arlen_q_reg[5] 
       (.C(aclk),
        .CE(\s_axi_full_arlen_q[7]_i_1_n_0 ),
        .D(s_axi_full_arlen_q[5]),
        .Q(\s_axi_full_arlen_q_reg_n_0_[5] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \s_axi_full_arlen_q_reg[6] 
       (.C(aclk),
        .CE(\s_axi_full_arlen_q[7]_i_1_n_0 ),
        .D(s_axi_full_arlen_q[6]),
        .Q(\s_axi_full_arlen_q_reg_n_0_[6] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \s_axi_full_arlen_q_reg[7] 
       (.C(aclk),
        .CE(\s_axi_full_arlen_q[7]_i_1_n_0 ),
        .D(s_axi_full_arlen_q[7]),
        .Q(\s_axi_full_arlen_q_reg_n_0_[7] ),
        .R(s_axi_lite_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFF100000005)) 
    s_axi_full_arready_i_1
       (.I0(s_axi_full_rvalid_reg_0),
        .I1(s_axi_full_arvalid),
        .I2(spi_mmio_fsm_state__0[2]),
        .I3(spi_mmio_fsm_state__0[1]),
        .I4(spi_mmio_fsm_state__0[0]),
        .I5(s_axi_full_arready_reg_0),
        .O(s_axi_full_arready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full ARREADY" *) 
  FDRE s_axi_full_arready_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_axi_full_arready_i_1_n_0),
        .Q(s_axi_full_arready_reg_0),
        .R(s_axi_lite_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_full_arsize_q[0]_i_1 
       (.I0(s_axi_full_arsize[2]),
        .I1(s_axi_full_arsize[0]),
        .O(\s_axi_full_arsize_q[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_full_arsize_q[1]_i_1 
       (.I0(s_axi_full_arsize[2]),
        .I1(s_axi_full_arsize[1]),
        .O(\s_axi_full_arsize_q[1]_i_1_n_0 ));
  FDRE \s_axi_full_arsize_q_reg[0] 
       (.C(aclk),
        .CE(s_axi_full_arsize_q),
        .D(\s_axi_full_arsize_q[0]_i_1_n_0 ),
        .Q(\s_axi_full_arsize_q_reg_n_0_[0] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \s_axi_full_arsize_q_reg[1] 
       (.C(aclk),
        .CE(s_axi_full_arsize_q),
        .D(\s_axi_full_arsize_q[1]_i_1_n_0 ),
        .Q(\s_axi_full_arsize_q_reg_n_0_[1] ),
        .R(s_axi_lite_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h0444)) 
    s_axi_full_awready_i_1
       (.I0(s_axi_full_write_busy__0),
        .I1(aresetn),
        .I2(s_axi_full_awready),
        .I3(s_axi_full_awvalid),
        .O(s_axi_full_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full AWREADY" *) 
  FDRE s_axi_full_awready_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_axi_full_awready_i_1_n_0),
        .Q(s_axi_full_awready),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_full_bid[3]_i_1 
       (.I0(s_axi_full_awready),
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
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hF2222222)) 
    s_axi_full_bvalid_i_1
       (.I0(s_axi_full_bvalid),
        .I1(s_axi_full_bready),
        .I2(s_axi_full_wlast),
        .I3(s_axi_full_wvalid),
        .I4(s_axi_full_wready),
        .O(s_axi_full_bvalid_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full BVALID" *) 
  FDRE s_axi_full_bvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_axi_full_bvalid_i_1_n_0),
        .Q(s_axi_full_bvalid),
        .R(s_axi_lite_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_full_rdata[0]_i_1 
       (.I0(data4[0]),
        .I1(\s_axi_full_rdata[7]_i_3_n_0 ),
        .O(s_axi_full_rdata1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_full_rdata[10]_i_1 
       (.I0(data4[2]),
        .I1(\s_axi_full_rdata[15]_i_3_n_0 ),
        .O(s_axi_full_rdata1_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_full_rdata[11]_i_1 
       (.I0(data4[3]),
        .I1(\s_axi_full_rdata[15]_i_3_n_0 ),
        .O(s_axi_full_rdata1_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_full_rdata[12]_i_1 
       (.I0(data4[4]),
        .I1(\s_axi_full_rdata[15]_i_3_n_0 ),
        .O(s_axi_full_rdata1_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_full_rdata[13]_i_1 
       (.I0(data4[5]),
        .I1(\s_axi_full_rdata[15]_i_3_n_0 ),
        .O(s_axi_full_rdata1_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_full_rdata[14]_i_1 
       (.I0(data4[6]),
        .I1(\s_axi_full_rdata[15]_i_3_n_0 ),
        .O(s_axi_full_rdata1_in[14]));
  LUT3 #(
    .INIT(8'h8F)) 
    \s_axi_full_rdata[15]_i_1 
       (.I0(s_axi_full_rready),
        .I1(s_axi_full_rvalid_reg_0),
        .I2(\s_axi_full_rdata[15]_i_3_n_0 ),
        .O(\s_axi_full_rdata[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_full_rdata[15]_i_2 
       (.I0(data4[7]),
        .I1(\s_axi_full_rdata[15]_i_3_n_0 ),
        .O(s_axi_full_rdata1_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hFFFFFDFF)) 
    \s_axi_full_rdata[15]_i_3 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I1(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I2(\s_axi_full_araddr_q[23]_i_3_n_0 ),
        .I3(spi_mmio_en_reg_n_0),
        .I4(\s_axi_full_araddr_q_reg_n_0_[2] ),
        .O(\s_axi_full_rdata[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_full_rdata[16]_i_1 
       (.I0(data4[0]),
        .I1(\s_axi_full_rdata[23]_i_3_n_0 ),
        .O(s_axi_full_rdata1_in[16]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_full_rdata[17]_i_1 
       (.I0(data4[1]),
        .I1(\s_axi_full_rdata[23]_i_3_n_0 ),
        .O(s_axi_full_rdata1_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_full_rdata[18]_i_1 
       (.I0(data4[2]),
        .I1(\s_axi_full_rdata[23]_i_3_n_0 ),
        .O(s_axi_full_rdata1_in[18]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_full_rdata[19]_i_1 
       (.I0(data4[3]),
        .I1(\s_axi_full_rdata[23]_i_3_n_0 ),
        .O(s_axi_full_rdata1_in[19]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_full_rdata[1]_i_1 
       (.I0(data4[1]),
        .I1(\s_axi_full_rdata[7]_i_3_n_0 ),
        .O(s_axi_full_rdata1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_full_rdata[20]_i_1 
       (.I0(data4[4]),
        .I1(\s_axi_full_rdata[23]_i_3_n_0 ),
        .O(s_axi_full_rdata1_in[20]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_full_rdata[21]_i_1 
       (.I0(data4[5]),
        .I1(\s_axi_full_rdata[23]_i_3_n_0 ),
        .O(s_axi_full_rdata1_in[21]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_full_rdata[22]_i_1 
       (.I0(data4[6]),
        .I1(\s_axi_full_rdata[23]_i_3_n_0 ),
        .O(s_axi_full_rdata1_in[22]));
  LUT3 #(
    .INIT(8'h8F)) 
    \s_axi_full_rdata[23]_i_1 
       (.I0(s_axi_full_rready),
        .I1(s_axi_full_rvalid_reg_0),
        .I2(\s_axi_full_rdata[23]_i_3_n_0 ),
        .O(\s_axi_full_rdata[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_full_rdata[23]_i_2 
       (.I0(data4[7]),
        .I1(\s_axi_full_rdata[23]_i_3_n_0 ),
        .O(s_axi_full_rdata1_in[23]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \s_axi_full_rdata[23]_i_3 
       (.I0(\s_axi_full_araddr_q[23]_i_3_n_0 ),
        .I1(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I2(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I3(spi_mmio_en_reg_n_0),
        .I4(\s_axi_full_araddr_q_reg_n_0_[2] ),
        .O(\s_axi_full_rdata[23]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_full_rdata[24]_i_1 
       (.I0(data4[0]),
        .I1(\s_axi_full_rdata[31]_i_3_n_0 ),
        .O(s_axi_full_rdata1_in[24]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_full_rdata[25]_i_1 
       (.I0(data4[1]),
        .I1(\s_axi_full_rdata[31]_i_3_n_0 ),
        .O(s_axi_full_rdata1_in[25]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_full_rdata[26]_i_1 
       (.I0(data4[2]),
        .I1(\s_axi_full_rdata[31]_i_3_n_0 ),
        .O(s_axi_full_rdata1_in[26]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_full_rdata[27]_i_1 
       (.I0(data4[3]),
        .I1(\s_axi_full_rdata[31]_i_3_n_0 ),
        .O(s_axi_full_rdata1_in[27]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_full_rdata[28]_i_1 
       (.I0(data4[4]),
        .I1(\s_axi_full_rdata[31]_i_3_n_0 ),
        .O(s_axi_full_rdata1_in[28]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_full_rdata[29]_i_1 
       (.I0(data4[5]),
        .I1(\s_axi_full_rdata[31]_i_3_n_0 ),
        .O(s_axi_full_rdata1_in[29]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_full_rdata[2]_i_1 
       (.I0(data4[2]),
        .I1(\s_axi_full_rdata[7]_i_3_n_0 ),
        .O(s_axi_full_rdata1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_full_rdata[30]_i_1 
       (.I0(data4[6]),
        .I1(\s_axi_full_rdata[31]_i_3_n_0 ),
        .O(s_axi_full_rdata1_in[30]));
  LUT3 #(
    .INIT(8'h8F)) 
    \s_axi_full_rdata[31]_i_1 
       (.I0(s_axi_full_rready),
        .I1(s_axi_full_rvalid_reg_0),
        .I2(\s_axi_full_rdata[31]_i_3_n_0 ),
        .O(\s_axi_full_rdata[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_full_rdata[31]_i_2 
       (.I0(data4[7]),
        .I1(\s_axi_full_rdata[31]_i_3_n_0 ),
        .O(s_axi_full_rdata1_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hFFFFDFFF)) 
    \s_axi_full_rdata[31]_i_3 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I1(\s_axi_full_araddr_q[23]_i_3_n_0 ),
        .I2(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I3(spi_mmio_en_reg_n_0),
        .I4(\s_axi_full_araddr_q_reg_n_0_[2] ),
        .O(\s_axi_full_rdata[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_full_rdata[32]_i_1 
       (.I0(data4[0]),
        .I1(\s_axi_full_rdata[39]_i_3_n_0 ),
        .O(s_axi_full_rdata1_in[32]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_full_rdata[33]_i_1 
       (.I0(data4[1]),
        .I1(\s_axi_full_rdata[39]_i_3_n_0 ),
        .O(s_axi_full_rdata1_in[33]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_full_rdata[34]_i_1 
       (.I0(data4[2]),
        .I1(\s_axi_full_rdata[39]_i_3_n_0 ),
        .O(s_axi_full_rdata1_in[34]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_full_rdata[35]_i_1 
       (.I0(data4[3]),
        .I1(\s_axi_full_rdata[39]_i_3_n_0 ),
        .O(s_axi_full_rdata1_in[35]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_full_rdata[36]_i_1 
       (.I0(data4[4]),
        .I1(\s_axi_full_rdata[39]_i_3_n_0 ),
        .O(s_axi_full_rdata1_in[36]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_full_rdata[37]_i_1 
       (.I0(data4[5]),
        .I1(\s_axi_full_rdata[39]_i_3_n_0 ),
        .O(s_axi_full_rdata1_in[37]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_full_rdata[38]_i_1 
       (.I0(data4[6]),
        .I1(\s_axi_full_rdata[39]_i_3_n_0 ),
        .O(s_axi_full_rdata1_in[38]));
  LUT3 #(
    .INIT(8'h8F)) 
    \s_axi_full_rdata[39]_i_1 
       (.I0(s_axi_full_rready),
        .I1(s_axi_full_rvalid_reg_0),
        .I2(\s_axi_full_rdata[39]_i_3_n_0 ),
        .O(\s_axi_full_rdata[39]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_full_rdata[39]_i_2 
       (.I0(data4[7]),
        .I1(\s_axi_full_rdata[39]_i_3_n_0 ),
        .O(s_axi_full_rdata1_in[39]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hFFFFFFF7)) 
    \s_axi_full_rdata[39]_i_3 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[2] ),
        .I1(spi_mmio_en_reg_n_0),
        .I2(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I3(\s_axi_full_araddr_q[23]_i_3_n_0 ),
        .I4(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .O(\s_axi_full_rdata[39]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_full_rdata[3]_i_1 
       (.I0(data4[3]),
        .I1(\s_axi_full_rdata[7]_i_3_n_0 ),
        .O(s_axi_full_rdata1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_full_rdata[40]_i_1 
       (.I0(data4[0]),
        .I1(\s_axi_full_rdata[47]_i_3_n_0 ),
        .O(s_axi_full_rdata1_in[40]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_full_rdata[41]_i_1 
       (.I0(data4[1]),
        .I1(\s_axi_full_rdata[47]_i_3_n_0 ),
        .O(s_axi_full_rdata1_in[41]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_full_rdata[42]_i_1 
       (.I0(data4[2]),
        .I1(\s_axi_full_rdata[47]_i_3_n_0 ),
        .O(s_axi_full_rdata1_in[42]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_full_rdata[43]_i_1 
       (.I0(data4[3]),
        .I1(\s_axi_full_rdata[47]_i_3_n_0 ),
        .O(s_axi_full_rdata1_in[43]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_full_rdata[44]_i_1 
       (.I0(data4[4]),
        .I1(\s_axi_full_rdata[47]_i_3_n_0 ),
        .O(s_axi_full_rdata1_in[44]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_full_rdata[45]_i_1 
       (.I0(data4[5]),
        .I1(\s_axi_full_rdata[47]_i_3_n_0 ),
        .O(s_axi_full_rdata1_in[45]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_full_rdata[46]_i_1 
       (.I0(data4[6]),
        .I1(\s_axi_full_rdata[47]_i_3_n_0 ),
        .O(s_axi_full_rdata1_in[46]));
  LUT3 #(
    .INIT(8'h8F)) 
    \s_axi_full_rdata[47]_i_1 
       (.I0(s_axi_full_rready),
        .I1(s_axi_full_rvalid_reg_0),
        .I2(\s_axi_full_rdata[47]_i_3_n_0 ),
        .O(\s_axi_full_rdata[47]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_full_rdata[47]_i_2 
       (.I0(data4[7]),
        .I1(\s_axi_full_rdata[47]_i_3_n_0 ),
        .O(s_axi_full_rdata1_in[47]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hFFFFFF7F)) 
    \s_axi_full_rdata[47]_i_3 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[2] ),
        .I1(spi_mmio_en_reg_n_0),
        .I2(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I3(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I4(\s_axi_full_araddr_q[23]_i_3_n_0 ),
        .O(\s_axi_full_rdata[47]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_full_rdata[48]_i_1 
       (.I0(data4[0]),
        .I1(\s_axi_full_rdata[55]_i_3_n_0 ),
        .O(s_axi_full_rdata1_in[48]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_full_rdata[49]_i_1 
       (.I0(data4[1]),
        .I1(\s_axi_full_rdata[55]_i_3_n_0 ),
        .O(s_axi_full_rdata1_in[49]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_full_rdata[4]_i_1 
       (.I0(data4[4]),
        .I1(\s_axi_full_rdata[7]_i_3_n_0 ),
        .O(s_axi_full_rdata1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_full_rdata[50]_i_1 
       (.I0(data4[2]),
        .I1(\s_axi_full_rdata[55]_i_3_n_0 ),
        .O(s_axi_full_rdata1_in[50]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_full_rdata[51]_i_1 
       (.I0(data4[3]),
        .I1(\s_axi_full_rdata[55]_i_3_n_0 ),
        .O(s_axi_full_rdata1_in[51]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_full_rdata[52]_i_1 
       (.I0(data4[4]),
        .I1(\s_axi_full_rdata[55]_i_3_n_0 ),
        .O(s_axi_full_rdata1_in[52]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_full_rdata[53]_i_1 
       (.I0(data4[5]),
        .I1(\s_axi_full_rdata[55]_i_3_n_0 ),
        .O(s_axi_full_rdata1_in[53]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_full_rdata[54]_i_1 
       (.I0(data4[6]),
        .I1(\s_axi_full_rdata[55]_i_3_n_0 ),
        .O(s_axi_full_rdata1_in[54]));
  LUT3 #(
    .INIT(8'h8F)) 
    \s_axi_full_rdata[55]_i_1 
       (.I0(s_axi_full_rready),
        .I1(s_axi_full_rvalid_reg_0),
        .I2(\s_axi_full_rdata[55]_i_3_n_0 ),
        .O(\s_axi_full_rdata[55]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_full_rdata[55]_i_2 
       (.I0(data4[7]),
        .I1(\s_axi_full_rdata[55]_i_3_n_0 ),
        .O(s_axi_full_rdata1_in[55]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hFFFFF7FF)) 
    \s_axi_full_rdata[55]_i_3 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[2] ),
        .I1(spi_mmio_en_reg_n_0),
        .I2(\s_axi_full_araddr_q[23]_i_3_n_0 ),
        .I3(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I4(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .O(\s_axi_full_rdata[55]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_full_rdata[56]_i_1 
       (.I0(data4[0]),
        .I1(\s_axi_full_rdata[63]_i_3_n_0 ),
        .O(s_axi_full_rdata1_in[56]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_full_rdata[57]_i_1 
       (.I0(data4[1]),
        .I1(\s_axi_full_rdata[63]_i_3_n_0 ),
        .O(s_axi_full_rdata1_in[57]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_full_rdata[58]_i_1 
       (.I0(data4[2]),
        .I1(\s_axi_full_rdata[63]_i_3_n_0 ),
        .O(s_axi_full_rdata1_in[58]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_full_rdata[59]_i_1 
       (.I0(data4[3]),
        .I1(\s_axi_full_rdata[63]_i_3_n_0 ),
        .O(s_axi_full_rdata1_in[59]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_full_rdata[5]_i_1 
       (.I0(data4[5]),
        .I1(\s_axi_full_rdata[7]_i_3_n_0 ),
        .O(s_axi_full_rdata1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_full_rdata[60]_i_1 
       (.I0(data4[4]),
        .I1(\s_axi_full_rdata[63]_i_3_n_0 ),
        .O(s_axi_full_rdata1_in[60]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_full_rdata[61]_i_1 
       (.I0(data4[5]),
        .I1(\s_axi_full_rdata[63]_i_3_n_0 ),
        .O(s_axi_full_rdata1_in[61]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_full_rdata[62]_i_1 
       (.I0(data4[6]),
        .I1(\s_axi_full_rdata[63]_i_3_n_0 ),
        .O(s_axi_full_rdata1_in[62]));
  LUT3 #(
    .INIT(8'h8F)) 
    \s_axi_full_rdata[63]_i_1 
       (.I0(s_axi_full_rready),
        .I1(s_axi_full_rvalid_reg_0),
        .I2(\s_axi_full_rdata[63]_i_3_n_0 ),
        .O(\s_axi_full_rdata[63]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_full_rdata[63]_i_2 
       (.I0(data4[7]),
        .I1(\s_axi_full_rdata[63]_i_3_n_0 ),
        .O(s_axi_full_rdata1_in[63]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hDFFFFFFF)) 
    \s_axi_full_rdata[63]_i_3 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I1(\s_axi_full_araddr_q[23]_i_3_n_0 ),
        .I2(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I3(\s_axi_full_araddr_q_reg_n_0_[2] ),
        .I4(spi_mmio_en_reg_n_0),
        .O(\s_axi_full_rdata[63]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_full_rdata[6]_i_1 
       (.I0(data4[6]),
        .I1(\s_axi_full_rdata[7]_i_3_n_0 ),
        .O(s_axi_full_rdata1_in[6]));
  LUT3 #(
    .INIT(8'h8F)) 
    \s_axi_full_rdata[7]_i_1 
       (.I0(s_axi_full_rready),
        .I1(s_axi_full_rvalid_reg_0),
        .I2(\s_axi_full_rdata[7]_i_3_n_0 ),
        .O(\s_axi_full_rdata[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_full_rdata[7]_i_2 
       (.I0(data4[7]),
        .I1(\s_axi_full_rdata[7]_i_3_n_0 ),
        .O(s_axi_full_rdata1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \s_axi_full_rdata[7]_i_3 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I1(\s_axi_full_araddr_q[23]_i_3_n_0 ),
        .I2(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I3(spi_mmio_en_reg_n_0),
        .I4(\s_axi_full_araddr_q_reg_n_0_[2] ),
        .O(\s_axi_full_rdata[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_full_rdata[8]_i_1 
       (.I0(data4[0]),
        .I1(\s_axi_full_rdata[15]_i_3_n_0 ),
        .O(s_axi_full_rdata1_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_full_rdata[9]_i_1 
       (.I0(data4[1]),
        .I1(\s_axi_full_rdata[15]_i_3_n_0 ),
        .O(s_axi_full_rdata1_in[9]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[0] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[7]_i_1_n_0 ),
        .D(s_axi_full_rdata1_in[0]),
        .Q(s_axi_full_rdata[0]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[10] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[15]_i_1_n_0 ),
        .D(s_axi_full_rdata1_in[10]),
        .Q(s_axi_full_rdata[10]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[11] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[15]_i_1_n_0 ),
        .D(s_axi_full_rdata1_in[11]),
        .Q(s_axi_full_rdata[11]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[12] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[15]_i_1_n_0 ),
        .D(s_axi_full_rdata1_in[12]),
        .Q(s_axi_full_rdata[12]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[13] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[15]_i_1_n_0 ),
        .D(s_axi_full_rdata1_in[13]),
        .Q(s_axi_full_rdata[13]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[14] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[15]_i_1_n_0 ),
        .D(s_axi_full_rdata1_in[14]),
        .Q(s_axi_full_rdata[14]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[15] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[15]_i_1_n_0 ),
        .D(s_axi_full_rdata1_in[15]),
        .Q(s_axi_full_rdata[15]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[16] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[23]_i_1_n_0 ),
        .D(s_axi_full_rdata1_in[16]),
        .Q(s_axi_full_rdata[16]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[17] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[23]_i_1_n_0 ),
        .D(s_axi_full_rdata1_in[17]),
        .Q(s_axi_full_rdata[17]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[18] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[23]_i_1_n_0 ),
        .D(s_axi_full_rdata1_in[18]),
        .Q(s_axi_full_rdata[18]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[19] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[23]_i_1_n_0 ),
        .D(s_axi_full_rdata1_in[19]),
        .Q(s_axi_full_rdata[19]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[1] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[7]_i_1_n_0 ),
        .D(s_axi_full_rdata1_in[1]),
        .Q(s_axi_full_rdata[1]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[20] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[23]_i_1_n_0 ),
        .D(s_axi_full_rdata1_in[20]),
        .Q(s_axi_full_rdata[20]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[21] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[23]_i_1_n_0 ),
        .D(s_axi_full_rdata1_in[21]),
        .Q(s_axi_full_rdata[21]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[22] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[23]_i_1_n_0 ),
        .D(s_axi_full_rdata1_in[22]),
        .Q(s_axi_full_rdata[22]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[23] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[23]_i_1_n_0 ),
        .D(s_axi_full_rdata1_in[23]),
        .Q(s_axi_full_rdata[23]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[24] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[31]_i_1_n_0 ),
        .D(s_axi_full_rdata1_in[24]),
        .Q(s_axi_full_rdata[24]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[25] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[31]_i_1_n_0 ),
        .D(s_axi_full_rdata1_in[25]),
        .Q(s_axi_full_rdata[25]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[26] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[31]_i_1_n_0 ),
        .D(s_axi_full_rdata1_in[26]),
        .Q(s_axi_full_rdata[26]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[27] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[31]_i_1_n_0 ),
        .D(s_axi_full_rdata1_in[27]),
        .Q(s_axi_full_rdata[27]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[28] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[31]_i_1_n_0 ),
        .D(s_axi_full_rdata1_in[28]),
        .Q(s_axi_full_rdata[28]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[29] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[31]_i_1_n_0 ),
        .D(s_axi_full_rdata1_in[29]),
        .Q(s_axi_full_rdata[29]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[2] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[7]_i_1_n_0 ),
        .D(s_axi_full_rdata1_in[2]),
        .Q(s_axi_full_rdata[2]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[30] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[31]_i_1_n_0 ),
        .D(s_axi_full_rdata1_in[30]),
        .Q(s_axi_full_rdata[30]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[31] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[31]_i_1_n_0 ),
        .D(s_axi_full_rdata1_in[31]),
        .Q(s_axi_full_rdata[31]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[32] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[39]_i_1_n_0 ),
        .D(s_axi_full_rdata1_in[32]),
        .Q(s_axi_full_rdata[32]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[33] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[39]_i_1_n_0 ),
        .D(s_axi_full_rdata1_in[33]),
        .Q(s_axi_full_rdata[33]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[34] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[39]_i_1_n_0 ),
        .D(s_axi_full_rdata1_in[34]),
        .Q(s_axi_full_rdata[34]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[35] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[39]_i_1_n_0 ),
        .D(s_axi_full_rdata1_in[35]),
        .Q(s_axi_full_rdata[35]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[36] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[39]_i_1_n_0 ),
        .D(s_axi_full_rdata1_in[36]),
        .Q(s_axi_full_rdata[36]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[37] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[39]_i_1_n_0 ),
        .D(s_axi_full_rdata1_in[37]),
        .Q(s_axi_full_rdata[37]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[38] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[39]_i_1_n_0 ),
        .D(s_axi_full_rdata1_in[38]),
        .Q(s_axi_full_rdata[38]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[39] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[39]_i_1_n_0 ),
        .D(s_axi_full_rdata1_in[39]),
        .Q(s_axi_full_rdata[39]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[3] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[7]_i_1_n_0 ),
        .D(s_axi_full_rdata1_in[3]),
        .Q(s_axi_full_rdata[3]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[40] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[47]_i_1_n_0 ),
        .D(s_axi_full_rdata1_in[40]),
        .Q(s_axi_full_rdata[40]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[41] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[47]_i_1_n_0 ),
        .D(s_axi_full_rdata1_in[41]),
        .Q(s_axi_full_rdata[41]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[42] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[47]_i_1_n_0 ),
        .D(s_axi_full_rdata1_in[42]),
        .Q(s_axi_full_rdata[42]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[43] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[47]_i_1_n_0 ),
        .D(s_axi_full_rdata1_in[43]),
        .Q(s_axi_full_rdata[43]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[44] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[47]_i_1_n_0 ),
        .D(s_axi_full_rdata1_in[44]),
        .Q(s_axi_full_rdata[44]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[45] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[47]_i_1_n_0 ),
        .D(s_axi_full_rdata1_in[45]),
        .Q(s_axi_full_rdata[45]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[46] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[47]_i_1_n_0 ),
        .D(s_axi_full_rdata1_in[46]),
        .Q(s_axi_full_rdata[46]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[47] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[47]_i_1_n_0 ),
        .D(s_axi_full_rdata1_in[47]),
        .Q(s_axi_full_rdata[47]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[48] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[55]_i_1_n_0 ),
        .D(s_axi_full_rdata1_in[48]),
        .Q(s_axi_full_rdata[48]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[49] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[55]_i_1_n_0 ),
        .D(s_axi_full_rdata1_in[49]),
        .Q(s_axi_full_rdata[49]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[4] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[7]_i_1_n_0 ),
        .D(s_axi_full_rdata1_in[4]),
        .Q(s_axi_full_rdata[4]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[50] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[55]_i_1_n_0 ),
        .D(s_axi_full_rdata1_in[50]),
        .Q(s_axi_full_rdata[50]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[51] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[55]_i_1_n_0 ),
        .D(s_axi_full_rdata1_in[51]),
        .Q(s_axi_full_rdata[51]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[52] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[55]_i_1_n_0 ),
        .D(s_axi_full_rdata1_in[52]),
        .Q(s_axi_full_rdata[52]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[53] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[55]_i_1_n_0 ),
        .D(s_axi_full_rdata1_in[53]),
        .Q(s_axi_full_rdata[53]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[54] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[55]_i_1_n_0 ),
        .D(s_axi_full_rdata1_in[54]),
        .Q(s_axi_full_rdata[54]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[55] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[55]_i_1_n_0 ),
        .D(s_axi_full_rdata1_in[55]),
        .Q(s_axi_full_rdata[55]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[56] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[63]_i_1_n_0 ),
        .D(s_axi_full_rdata1_in[56]),
        .Q(s_axi_full_rdata[56]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[57] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[63]_i_1_n_0 ),
        .D(s_axi_full_rdata1_in[57]),
        .Q(s_axi_full_rdata[57]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[58] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[63]_i_1_n_0 ),
        .D(s_axi_full_rdata1_in[58]),
        .Q(s_axi_full_rdata[58]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[59] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[63]_i_1_n_0 ),
        .D(s_axi_full_rdata1_in[59]),
        .Q(s_axi_full_rdata[59]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[5] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[7]_i_1_n_0 ),
        .D(s_axi_full_rdata1_in[5]),
        .Q(s_axi_full_rdata[5]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[60] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[63]_i_1_n_0 ),
        .D(s_axi_full_rdata1_in[60]),
        .Q(s_axi_full_rdata[60]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[61] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[63]_i_1_n_0 ),
        .D(s_axi_full_rdata1_in[61]),
        .Q(s_axi_full_rdata[61]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[62] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[63]_i_1_n_0 ),
        .D(s_axi_full_rdata1_in[62]),
        .Q(s_axi_full_rdata[62]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[63] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[63]_i_1_n_0 ),
        .D(s_axi_full_rdata1_in[63]),
        .Q(s_axi_full_rdata[63]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[6] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[7]_i_1_n_0 ),
        .D(s_axi_full_rdata1_in[6]),
        .Q(s_axi_full_rdata[6]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[7] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[7]_i_1_n_0 ),
        .D(s_axi_full_rdata1_in[7]),
        .Q(s_axi_full_rdata[7]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[8] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[15]_i_1_n_0 ),
        .D(s_axi_full_rdata1_in[8]),
        .Q(s_axi_full_rdata[8]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RDATA" *) 
  FDRE \s_axi_full_rdata_reg[9] 
       (.C(aclk),
        .CE(\s_axi_full_rdata[15]_i_1_n_0 ),
        .D(s_axi_full_rdata1_in[9]),
        .Q(s_axi_full_rdata[9]),
        .R(s_axi_lite_awready_i_1_n_0));
  LUT5 #(
    .INIT(32'h00000008)) 
    \s_axi_full_rid[3]_i_1 
       (.I0(s_axi_full_arready_reg_0),
        .I1(s_axi_full_arvalid),
        .I2(spi_mmio_fsm_state__0[2]),
        .I3(spi_mmio_fsm_state__0[1]),
        .I4(spi_mmio_fsm_state__0[0]),
        .O(s_axi_full_arsize_q));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RID" *) 
  FDRE \s_axi_full_rid_reg[0] 
       (.C(aclk),
        .CE(s_axi_full_arsize_q),
        .D(s_axi_full_arid[0]),
        .Q(s_axi_full_rid[0]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RID" *) 
  FDRE \s_axi_full_rid_reg[1] 
       (.C(aclk),
        .CE(s_axi_full_arsize_q),
        .D(s_axi_full_arid[1]),
        .Q(s_axi_full_rid[1]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RID" *) 
  FDRE \s_axi_full_rid_reg[2] 
       (.C(aclk),
        .CE(s_axi_full_arsize_q),
        .D(s_axi_full_arid[2]),
        .Q(s_axi_full_rid[2]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RID" *) 
  FDRE \s_axi_full_rid_reg[3] 
       (.C(aclk),
        .CE(s_axi_full_arsize_q),
        .D(s_axi_full_arid[3]),
        .Q(s_axi_full_rid[3]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'hF7F0)) 
    s_axi_full_rlast_i_1
       (.I0(s_axi_full_rready),
        .I1(s_axi_full_rvalid_reg_0),
        .I2(s_axi_full_rlast_i_2_n_0),
        .I3(s_axi_full_rlast),
        .O(s_axi_full_rlast_i_1_n_0));
  LUT4 #(
    .INIT(16'h0008)) 
    s_axi_full_rlast_i_2
       (.I0(s_axi_full_rvalid_i_2_n_0),
        .I1(\s_axi_full_arlen_q[7]_i_3_n_0 ),
        .I2(\s_axi_full_arlen_q_reg_n_0_[6] ),
        .I3(\s_axi_full_arlen_q_reg_n_0_[7] ),
        .O(s_axi_full_rlast_i_2_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_full RLAST" *) 
  FDRE s_axi_full_rlast_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_axi_full_rlast_i_1_n_0),
        .Q(s_axi_full_rlast),
        .R(s_axi_lite_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    s_axi_full_rvalid_i_1
       (.I0(s_axi_full_rready),
        .I1(s_axi_full_rvalid_reg_0),
        .I2(s_axi_full_rvalid_i_2_n_0),
        .O(s_axi_full_rvalid_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000003010101)) 
    s_axi_full_rvalid_i_2
       (.I0(\s_axi_full_arsize_q_reg_n_0_[1] ),
        .I1(s_axi_full_rvalid_i_3_n_0),
        .I2(s_axi_full_rvalid_i_4_n_0),
        .I3(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .I4(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I5(s_axi_full_rvalid_i_5_n_0),
        .O(s_axi_full_rvalid_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hFBAA)) 
    s_axi_full_rvalid_i_3
       (.I0(s_axi_full_rvalid_reg_0),
        .I1(spi_sr_in_buf_valid_reg_n_0),
        .I2(spi_sr_in_buf_ready_reg_n_0),
        .I3(spi_mmio_en_reg_n_0),
        .O(s_axi_full_rvalid_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    s_axi_full_rvalid_i_4
       (.I0(spi_mmio_fsm_state__0[2]),
        .I1(spi_mmio_fsm_state__0[1]),
        .I2(spi_mmio_fsm_state__0[0]),
        .O(s_axi_full_rvalid_i_4_n_0));
  LUT4 #(
    .INIT(16'h1D00)) 
    s_axi_full_rvalid_i_5
       (.I0(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .I1(\s_axi_full_arsize_q_reg_n_0_[1] ),
        .I2(\s_axi_full_araddr_q_reg_n_0_[2] ),
        .I3(\s_axi_full_arsize_q_reg_n_0_[0] ),
        .O(s_axi_full_rvalid_i_5_n_0));
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
  LUT6 #(
    .INIT(64'hBF00BF00BF000000)) 
    s_axi_full_write_busy_i_1
       (.I0(s_axi_full_bvalid036_out),
        .I1(s_axi_full_bready),
        .I2(s_axi_full_bvalid),
        .I3(aresetn),
        .I4(s_axi_full_awready0),
        .I5(s_axi_full_write_busy__0),
        .O(s_axi_full_write_busy_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h80)) 
    s_axi_full_write_busy_i_2
       (.I0(s_axi_full_wready),
        .I1(s_axi_full_wvalid),
        .I2(s_axi_full_wlast),
        .O(s_axi_full_bvalid036_out));
  FDRE s_axi_full_write_busy_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_axi_full_write_busy_i_1_n_0),
        .Q(s_axi_full_write_busy__0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00D00000)) 
    s_axi_lite_awready_i_2
       (.I0(s_axi_lite_bvalid),
        .I1(s_axi_lite_bready),
        .I2(s_axi_lite_wvalid),
        .I3(s_axi_lite_awready),
        .I4(s_axi_lite_awvalid),
        .O(s_axi_lite_awready0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite AWREADY" *) 
  FDRE s_axi_lite_awready_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_axi_lite_awready0),
        .Q(s_axi_lite_awready),
        .R(s_axi_lite_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hDC)) 
    s_axi_lite_bvalid_i_1
       (.I0(s_axi_lite_bready),
        .I1(s_axi_lite_awready),
        .I2(s_axi_lite_bvalid),
        .O(s_axi_lite_bvalid_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite BVALID" *) 
  FDRE s_axi_lite_bvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_axi_lite_bvalid_i_1_n_0),
        .Q(s_axi_lite_bvalid),
        .R(s_axi_lite_awready_i_1_n_0));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \s_axi_lite_rdata[0]_i_2 
       (.I0(p_3_in[0]),
        .I1(\spi_sck_div_reg_n_0_[0] ),
        .I2(s_axi_lite_araddr[1]),
        .I3(spi_sck_div_en_reg_n_0),
        .I4(s_axi_lite_araddr[0]),
        .O(\s_axi_lite_rdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_lite_rdata[0]_i_3 
       (.I0(spi_ss_o),
        .I1(\spi_sr_reg_n_0_[0] ),
        .I2(s_axi_lite_araddr[1]),
        .I3(data4[0]),
        .I4(s_axi_lite_araddr[0]),
        .I5(\spi_sr_out_buf_reg_n_0_[0] ),
        .O(\s_axi_lite_rdata[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \s_axi_lite_rdata[10]_i_1 
       (.I0(\spi_mmio_mode_bits_reg_n_0_[2] ),
        .I1(s_axi_lite_araddr[0]),
        .I2(s_axi_lite_araddr[2]),
        .I3(s_axi_lite_araddr[1]),
        .O(\s_axi_lite_rdata[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \s_axi_lite_rdata[11]_i_1 
       (.I0(\spi_mmio_mode_bits_reg_n_0_[3] ),
        .I1(s_axi_lite_araddr[0]),
        .I2(s_axi_lite_araddr[2]),
        .I3(s_axi_lite_araddr[1]),
        .O(\s_axi_lite_rdata[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00E20000)) 
    \s_axi_lite_rdata[12]_i_1 
       (.I0(spi_mmio_en_req_reg_n_0),
        .I1(s_axi_lite_araddr[1]),
        .I2(\spi_mmio_mode_bits_reg_n_0_[4] ),
        .I3(s_axi_lite_araddr[2]),
        .I4(s_axi_lite_araddr[0]),
        .O(\s_axi_lite_rdata[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00E20000)) 
    \s_axi_lite_rdata[13]_i_1 
       (.I0(spi_mmio_en_reg_n_0),
        .I1(s_axi_lite_araddr[1]),
        .I2(\spi_mmio_mode_bits_reg_n_0_[5] ),
        .I3(s_axi_lite_araddr[2]),
        .I4(s_axi_lite_araddr[0]),
        .O(\s_axi_lite_rdata[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \s_axi_lite_rdata[14]_i_1 
       (.I0(\spi_mmio_mode_bits_reg_n_0_[6] ),
        .I1(s_axi_lite_araddr[0]),
        .I2(s_axi_lite_araddr[2]),
        .I3(s_axi_lite_araddr[1]),
        .O(\s_axi_lite_rdata[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \s_axi_lite_rdata[15]_i_1 
       (.I0(\spi_mmio_mode_bits_reg_n_0_[7] ),
        .I1(s_axi_lite_araddr[0]),
        .I2(s_axi_lite_araddr[2]),
        .I3(s_axi_lite_araddr[1]),
        .O(\s_axi_lite_rdata[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h50450045)) 
    \s_axi_lite_rdata[16]_i_1 
       (.I0(s_axi_lite_araddr[2]),
        .I1(spi_sr_out_buf_valid_reg_n_0),
        .I2(s_axi_lite_araddr[0]),
        .I3(s_axi_lite_araddr[1]),
        .I4(\spi_mmio_cs_size_reg_n_0_[0] ),
        .O(\s_axi_lite_rdata[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00AC0000)) 
    \s_axi_lite_rdata[17]_i_1 
       (.I0(\spi_mmio_cs_size_reg_n_0_[1] ),
        .I1(spi_sr_in_buf_valid_reg_n_0),
        .I2(s_axi_lite_araddr[1]),
        .I3(s_axi_lite_araddr[2]),
        .I4(s_axi_lite_araddr[0]),
        .O(\s_axi_lite_rdata[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \s_axi_lite_rdata[18]_i_1 
       (.I0(\spi_mmio_cs_size_reg_n_0_[2] ),
        .I1(s_axi_lite_araddr[0]),
        .I2(s_axi_lite_araddr[2]),
        .I3(s_axi_lite_araddr[1]),
        .O(\s_axi_lite_rdata[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \s_axi_lite_rdata[19]_i_1 
       (.I0(\spi_mmio_cs_size_reg_n_0_[3] ),
        .I1(s_axi_lite_araddr[0]),
        .I2(s_axi_lite_araddr[2]),
        .I3(s_axi_lite_araddr[1]),
        .O(\s_axi_lite_rdata[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \s_axi_lite_rdata[1]_i_2 
       (.I0(p_3_in[1]),
        .I1(\spi_sck_div_reg_n_0_[1] ),
        .I2(s_axi_lite_araddr[1]),
        .I3(spi_en),
        .I4(s_axi_lite_araddr[0]),
        .O(\s_axi_lite_rdata[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s_axi_lite_rdata[1]_i_3 
       (.I0(\spi_sr_reg_n_0_[1] ),
        .I1(s_axi_lite_araddr[1]),
        .I2(data4[1]),
        .I3(s_axi_lite_araddr[0]),
        .I4(\spi_sr_out_buf_reg_n_0_[1] ),
        .O(\s_axi_lite_rdata[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00E20000)) 
    \s_axi_lite_rdata[20]_i_1 
       (.I0(\FSM_onehot_spi_fsm_state_reg_n_0_[0] ),
        .I1(s_axi_lite_araddr[1]),
        .I2(\spi_mmio_cs_size_reg_n_0_[4] ),
        .I3(s_axi_lite_araddr[2]),
        .I4(s_axi_lite_araddr[0]),
        .O(\s_axi_lite_rdata[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00B80000)) 
    \s_axi_lite_rdata[21]_i_1 
       (.I0(\spi_mmio_cs_size_reg_n_0_[5] ),
        .I1(s_axi_lite_araddr[1]),
        .I2(spi_dir_reg_n_0),
        .I3(s_axi_lite_araddr[2]),
        .I4(s_axi_lite_araddr[0]),
        .O(\s_axi_lite_rdata[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00E20000)) 
    \s_axi_lite_rdata[22]_i_1 
       (.I0(\spi_fsm_state_reg_n_0_[0] ),
        .I1(s_axi_lite_araddr[1]),
        .I2(\spi_mmio_cs_size_reg_n_0_[6] ),
        .I3(s_axi_lite_araddr[2]),
        .I4(s_axi_lite_araddr[0]),
        .O(\s_axi_lite_rdata[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00E20000)) 
    \s_axi_lite_rdata[23]_i_1 
       (.I0(\spi_fsm_state_reg_n_0_[1] ),
        .I1(s_axi_lite_araddr[1]),
        .I2(\spi_mmio_cs_size_reg_n_0_[7] ),
        .I3(s_axi_lite_araddr[2]),
        .I4(s_axi_lite_araddr[0]),
        .O(\s_axi_lite_rdata[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \s_axi_lite_rdata[24]_i_1 
       (.I0(\spi_mmio_cs_rem_reg_n_0_[0] ),
        .I1(s_axi_lite_araddr[0]),
        .I2(s_axi_lite_araddr[2]),
        .I3(s_axi_lite_araddr[1]),
        .O(\s_axi_lite_rdata[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \s_axi_lite_rdata[25]_i_1 
       (.I0(\spi_mmio_cs_rem_reg_n_0_[1] ),
        .I1(s_axi_lite_araddr[0]),
        .I2(s_axi_lite_araddr[2]),
        .I3(s_axi_lite_araddr[1]),
        .O(\s_axi_lite_rdata[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \s_axi_lite_rdata[26]_i_1 
       (.I0(\spi_mmio_cs_rem_reg_n_0_[2] ),
        .I1(s_axi_lite_araddr[0]),
        .I2(s_axi_lite_araddr[2]),
        .I3(s_axi_lite_araddr[1]),
        .O(\s_axi_lite_rdata[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \s_axi_lite_rdata[27]_i_1 
       (.I0(\spi_mmio_cs_rem_reg_n_0_[3] ),
        .I1(s_axi_lite_araddr[0]),
        .I2(s_axi_lite_araddr[2]),
        .I3(s_axi_lite_araddr[1]),
        .O(\s_axi_lite_rdata[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00E20000)) 
    \s_axi_lite_rdata[28]_i_1 
       (.I0(\spi_io_mode_q_reg_n_0_[0] ),
        .I1(s_axi_lite_araddr[1]),
        .I2(\spi_mmio_cs_rem_reg_n_0_[4] ),
        .I3(s_axi_lite_araddr[2]),
        .I4(s_axi_lite_araddr[0]),
        .O(\s_axi_lite_rdata[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00E20000)) 
    \s_axi_lite_rdata[29]_i_1 
       (.I0(\spi_io_mode_q_reg_n_0_[1] ),
        .I1(s_axi_lite_araddr[1]),
        .I2(\spi_mmio_cs_rem_reg_n_0_[5] ),
        .I3(s_axi_lite_araddr[2]),
        .I4(s_axi_lite_araddr[0]),
        .O(\s_axi_lite_rdata[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \s_axi_lite_rdata[2]_i_2 
       (.I0(\spi_mmio_addr_rem_reg_n_0_[0] ),
        .I1(\spi_sck_div_reg_n_0_[2] ),
        .I2(s_axi_lite_araddr[1]),
        .I3(\spi_mode_reg_n_0_[0] ),
        .I4(s_axi_lite_araddr[0]),
        .O(\s_axi_lite_rdata[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s_axi_lite_rdata[2]_i_3 
       (.I0(\spi_sr_reg_n_0_[2] ),
        .I1(s_axi_lite_araddr[1]),
        .I2(data4[2]),
        .I3(s_axi_lite_araddr[0]),
        .I4(\spi_sr_out_buf_reg_n_0_[2] ),
        .O(\s_axi_lite_rdata[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00E20000)) 
    \s_axi_lite_rdata[30]_i_1 
       (.I0(\spi_io_mode_q_reg_n_0_[2] ),
        .I1(s_axi_lite_araddr[1]),
        .I2(\spi_mmio_cs_rem_reg_n_0_[6] ),
        .I3(s_axi_lite_araddr[2]),
        .I4(s_axi_lite_araddr[0]),
        .O(\s_axi_lite_rdata[30]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hD0FF)) 
    \s_axi_lite_rdata[31]_i_1 
       (.I0(s_axi_lite_arvalid),
        .I1(s_axi_lite_rvalid_reg_0),
        .I2(s_axi_lite_rready),
        .I3(aresetn),
        .O(\s_axi_lite_rdata[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_lite_rdata[31]_i_2 
       (.I0(s_axi_lite_arvalid),
        .I1(s_axi_lite_rvalid_reg_0),
        .O(s_axi_lite_rd_en));
  LUT5 #(
    .INIT(32'h2C002000)) 
    \s_axi_lite_rdata[31]_i_3 
       (.I0(spi_sr_in_buf_valid_reg_n_0),
        .I1(s_axi_lite_araddr[1]),
        .I2(s_axi_lite_araddr[2]),
        .I3(s_axi_lite_araddr[0]),
        .I4(\spi_mmio_cs_rem_reg_n_0_[7] ),
        .O(\s_axi_lite_rdata[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \s_axi_lite_rdata[3]_i_2 
       (.I0(\spi_mmio_addr_rem_reg_n_0_[1] ),
        .I1(\spi_sck_div_reg_n_0_[3] ),
        .I2(s_axi_lite_araddr[1]),
        .I3(spi_cpol),
        .I4(s_axi_lite_araddr[0]),
        .O(\s_axi_lite_rdata[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s_axi_lite_rdata[3]_i_3 
       (.I0(\spi_sr_reg_n_0_[3] ),
        .I1(s_axi_lite_araddr[1]),
        .I2(data4[3]),
        .I3(s_axi_lite_araddr[0]),
        .I4(\spi_sr_out_buf_reg_n_0_[3] ),
        .O(\s_axi_lite_rdata[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB8BB8888B8888888)) 
    \s_axi_lite_rdata[4]_i_1 
       (.I0(\s_axi_lite_rdata[4]_i_2_n_0 ),
        .I1(s_axi_lite_araddr[2]),
        .I2(p_3_in[4]),
        .I3(s_axi_lite_araddr[1]),
        .I4(s_axi_lite_araddr[0]),
        .I5(\spi_io_mode_reg_n_0_[0] ),
        .O(\s_axi_lite_rdata[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s_axi_lite_rdata[4]_i_2 
       (.I0(\spi_sr_reg_n_0_[4] ),
        .I1(s_axi_lite_araddr[1]),
        .I2(data4[4]),
        .I3(s_axi_lite_araddr[0]),
        .I4(\spi_sr_out_buf_reg_n_0_[4] ),
        .O(\s_axi_lite_rdata[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8BB8888B8888888)) 
    \s_axi_lite_rdata[5]_i_1 
       (.I0(\s_axi_lite_rdata[5]_i_2_n_0 ),
        .I1(s_axi_lite_araddr[2]),
        .I2(p_3_in[5]),
        .I3(s_axi_lite_araddr[1]),
        .I4(s_axi_lite_araddr[0]),
        .I5(\spi_io_mode_reg_n_0_[1] ),
        .O(\s_axi_lite_rdata[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s_axi_lite_rdata[5]_i_2 
       (.I0(\spi_sr_reg_n_0_[5] ),
        .I1(s_axi_lite_araddr[1]),
        .I2(data4[5]),
        .I3(s_axi_lite_araddr[0]),
        .I4(\spi_sr_out_buf_reg_n_0_[5] ),
        .O(\s_axi_lite_rdata[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8BB8888B8888888)) 
    \s_axi_lite_rdata[6]_i_1 
       (.I0(\s_axi_lite_rdata[6]_i_2_n_0 ),
        .I1(s_axi_lite_araddr[2]),
        .I2(p_3_in[6]),
        .I3(s_axi_lite_araddr[1]),
        .I4(s_axi_lite_araddr[0]),
        .I5(\spi_io_mode_reg_n_0_[2] ),
        .O(\s_axi_lite_rdata[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s_axi_lite_rdata[6]_i_2 
       (.I0(\spi_sr_reg_n_0_[6] ),
        .I1(s_axi_lite_araddr[1]),
        .I2(data4[6]),
        .I3(s_axi_lite_araddr[0]),
        .I4(\spi_sr_out_buf_reg_n_0_[6] ),
        .O(\s_axi_lite_rdata[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \s_axi_lite_rdata[7]_i_1 
       (.I0(s_axi_lite_araddr[1]),
        .I1(s_axi_lite_araddr[2]),
        .I2(s_axi_lite_araddr[0]),
        .I3(p_3_in[7]),
        .I4(\s_axi_lite_rdata[7]_i_2_n_0 ),
        .O(\s_axi_lite_rdata[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h33E200E200000000)) 
    \s_axi_lite_rdata[7]_i_2 
       (.I0(\spi_sr_out_buf_reg_n_0_[7] ),
        .I1(s_axi_lite_araddr[0]),
        .I2(data4[7]),
        .I3(s_axi_lite_araddr[1]),
        .I4(p_2_in),
        .I5(s_axi_lite_araddr[2]),
        .O(\s_axi_lite_rdata[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0C0C2C2000002C20)) 
    \s_axi_lite_rdata[8]_i_1 
       (.I0(spi_sr_out_buf_valid_reg_n_0),
        .I1(s_axi_lite_araddr[0]),
        .I2(s_axi_lite_araddr[2]),
        .I3(spi_lsb_first_reg_n_0),
        .I4(s_axi_lite_araddr[1]),
        .I5(\spi_mmio_mode_bits_reg_n_0_[0] ),
        .O(\s_axi_lite_rdata[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0C200020)) 
    \s_axi_lite_rdata[9]_i_1 
       (.I0(spi_rd_req_reg_n_0),
        .I1(s_axi_lite_araddr[1]),
        .I2(s_axi_lite_araddr[2]),
        .I3(s_axi_lite_araddr[0]),
        .I4(\spi_mmio_mode_bits_reg_n_0_[1] ),
        .O(\s_axi_lite_rdata[9]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite RDATA" *) 
  FDRE \s_axi_lite_rdata_reg[0] 
       (.C(aclk),
        .CE(s_axi_lite_rd_en),
        .D(\s_axi_lite_rdata_reg[0]_i_1_n_0 ),
        .Q(s_axi_lite_rdata[0]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  MUXF7 \s_axi_lite_rdata_reg[0]_i_1 
       (.I0(\s_axi_lite_rdata[0]_i_2_n_0 ),
        .I1(\s_axi_lite_rdata[0]_i_3_n_0 ),
        .O(\s_axi_lite_rdata_reg[0]_i_1_n_0 ),
        .S(s_axi_lite_araddr[2]));
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
        .D(\s_axi_lite_rdata_reg[1]_i_1_n_0 ),
        .Q(s_axi_lite_rdata[1]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  MUXF7 \s_axi_lite_rdata_reg[1]_i_1 
       (.I0(\s_axi_lite_rdata[1]_i_2_n_0 ),
        .I1(\s_axi_lite_rdata[1]_i_3_n_0 ),
        .O(\s_axi_lite_rdata_reg[1]_i_1_n_0 ),
        .S(s_axi_lite_araddr[2]));
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
        .D(\s_axi_lite_rdata_reg[2]_i_1_n_0 ),
        .Q(s_axi_lite_rdata[2]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  MUXF7 \s_axi_lite_rdata_reg[2]_i_1 
       (.I0(\s_axi_lite_rdata[2]_i_2_n_0 ),
        .I1(\s_axi_lite_rdata[2]_i_3_n_0 ),
        .O(\s_axi_lite_rdata_reg[2]_i_1_n_0 ),
        .S(s_axi_lite_araddr[2]));
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
        .D(\s_axi_lite_rdata_reg[3]_i_1_n_0 ),
        .Q(s_axi_lite_rdata[3]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  MUXF7 \s_axi_lite_rdata_reg[3]_i_1 
       (.I0(\s_axi_lite_rdata[3]_i_2_n_0 ),
        .I1(\s_axi_lite_rdata[3]_i_3_n_0 ),
        .O(\s_axi_lite_rdata_reg[3]_i_1_n_0 ),
        .S(s_axi_lite_araddr[2]));
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
  LUT3 #(
    .INIT(8'h74)) 
    s_axi_lite_rvalid_i_1
       (.I0(s_axi_lite_rready),
        .I1(s_axi_lite_rvalid_reg_0),
        .I2(s_axi_lite_arvalid),
        .O(s_axi_lite_rvalid_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite RVALID" *) 
  FDRE s_axi_lite_rvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_axi_lite_rvalid_i_1_n_0),
        .Q(s_axi_lite_rvalid_reg_0),
        .R(s_axi_lite_awready_i_1_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    spi_dir_i_1
       (.I0(spi_rd_req_ack_reg_n_0),
        .I1(spi_rd_req_reg_n_0),
        .I2(spi_sr_out_buf_valid_reg_n_0),
        .O(spi_dir_i_1_n_0));
  FDRE spi_dir_reg
       (.C(aclk),
        .CE(spi_io_mode_q),
        .D(spi_dir_i_1_n_0),
        .Q(spi_dir_reg_n_0),
        .R(\spi_io_o[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hBBBF8880)) 
    spi_en_i_1
       (.I0(s_axi_lite_wdata[1]),
        .I1(\spi_mode[1]_i_2_n_0 ),
        .I2(s_axi_lite_wdata[0]),
        .I3(spi_sck_div_en_reg_n_0),
        .I4(spi_en),
        .O(spi_en_i_1_n_0));
  FDRE spi_en_reg
       (.C(aclk),
        .CE(1'b1),
        .D(spi_en_i_1_n_0),
        .Q(spi_en),
        .R(s_axi_lite_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \spi_fsm_state[0]_i_1 
       (.I0(\spi_fsm_state_reg_n_0_[1] ),
        .I1(\spi_fsm_state_reg_n_0_[0] ),
        .O(\spi_fsm_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
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
        .R(\spi_io_o[0]_i_1_n_0 ));
  FDRE \spi_fsm_state_reg[1] 
       (.C(aclk),
        .CE(spi_fsm_state),
        .D(\spi_fsm_state[1]_i_1_n_0 ),
        .Q(\spi_fsm_state_reg_n_0_[1] ),
        .R(\spi_io_o[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF9FF1000)) 
    \spi_io_mode[0]_i_1 
       (.I0(s_axi_lite_wdata[5]),
        .I1(s_axi_lite_wdata[6]),
        .I2(s_axi_lite_wdata[4]),
        .I3(\spi_mode[1]_i_2_n_0 ),
        .I4(\spi_io_mode_reg_n_0_[0] ),
        .O(\spi_io_mode[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEBFF0200)) 
    \spi_io_mode[1]_i_1 
       (.I0(s_axi_lite_wdata[5]),
        .I1(s_axi_lite_wdata[6]),
        .I2(s_axi_lite_wdata[4]),
        .I3(\spi_mode[1]_i_2_n_0 ),
        .I4(\spi_io_mode_reg_n_0_[1] ),
        .O(\spi_io_mode[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEDFF0400)) 
    \spi_io_mode[2]_i_1 
       (.I0(s_axi_lite_wdata[5]),
        .I1(s_axi_lite_wdata[6]),
        .I2(s_axi_lite_wdata[4]),
        .I3(\spi_mode[1]_i_2_n_0 ),
        .I4(\spi_io_mode_reg_n_0_[2] ),
        .O(\spi_io_mode[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00F2)) 
    \spi_io_mode_q[2]_i_1 
       (.I0(spi_rd_req_reg_n_0),
        .I1(spi_rd_req_ack_reg_n_0),
        .I2(spi_sr_out_buf_valid_reg_n_0),
        .I3(\spi_io_mode_q[2]_i_2_n_0 ),
        .O(spi_io_mode_q));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h5545)) 
    \spi_io_mode_q[2]_i_2 
       (.I0(\FSM_onehot_spi_fsm_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_spi_fsm_state[2]_i_3_n_0 ),
        .I2(\FSM_onehot_spi_fsm_state_reg_n_0_[2] ),
        .I3(\spi_io_mode_q[2]_i_3_n_0 ),
        .O(\spi_io_mode_q[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hBEFFBEBE)) 
    \spi_io_mode_q[2]_i_3 
       (.I0(\spi_io_mode_q[2]_i_4_n_0 ),
        .I1(\spi_io_mode_q_reg_n_0_[1] ),
        .I2(\spi_sr_bit_cnt_reg_n_0_[1] ),
        .I3(\spi_sr_bit_cnt_reg_n_0_[0] ),
        .I4(\spi_io_mode_q_reg_n_0_[0] ),
        .O(\spi_io_mode_q[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFF6FFF6FFFFFFF6)) 
    \spi_io_mode_q[2]_i_4 
       (.I0(\spi_sr_bit_cnt_reg_n_0_[2] ),
        .I1(\spi_io_mode_q_reg_n_0_[2] ),
        .I2(\spi_sr_bit_cnt_reg_n_0_[4] ),
        .I3(\spi_sr_bit_cnt_reg_n_0_[3] ),
        .I4(\spi_sr_bit_cnt_reg_n_0_[0] ),
        .I5(\spi_io_mode_q_reg_n_0_[0] ),
        .O(\spi_io_mode_q[2]_i_4_n_0 ));
  FDRE \spi_io_mode_q_reg[0] 
       (.C(aclk),
        .CE(spi_io_mode_q),
        .D(\spi_io_mode_reg_n_0_[0] ),
        .Q(\spi_io_mode_q_reg_n_0_[0] ),
        .R(\spi_io_o[0]_i_1_n_0 ));
  FDRE \spi_io_mode_q_reg[1] 
       (.C(aclk),
        .CE(spi_io_mode_q),
        .D(\spi_io_mode_reg_n_0_[1] ),
        .Q(\spi_io_mode_q_reg_n_0_[1] ),
        .R(\spi_io_o[0]_i_1_n_0 ));
  FDRE \spi_io_mode_q_reg[2] 
       (.C(aclk),
        .CE(spi_io_mode_q),
        .D(\spi_io_mode_reg_n_0_[2] ),
        .Q(\spi_io_mode_q_reg_n_0_[2] ),
        .R(\spi_io_o[0]_i_1_n_0 ));
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
       (.I0(spi_en),
        .O(\spi_io_o[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAEAAEA)) 
    \spi_io_o[0]_i_2 
       (.I0(\FSM_onehot_spi_fsm_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_spi_fsm_state_reg_n_0_[2] ),
        .I2(\spi_mode_reg_n_0_[0] ),
        .I3(\spi_io_o[0]_i_4_n_0 ),
        .I4(spi_sck_int),
        .O(\spi_io_o[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF00BABA00000000)) 
    \spi_io_o[0]_i_3 
       (.I0(\spi_io_o[0]_i_5_n_0 ),
        .I1(\spi_io_o[0]_i_6_n_0 ),
        .I2(\spi_sr_reg_n_0_[4] ),
        .I3(\spi_sr_reg_n_0_[0] ),
        .I4(spi_lsb_first_reg_n_0),
        .I5(spi_sck_oe),
        .O(spi_io_o[0]));
  LUT4 #(
    .INIT(16'hBEFF)) 
    \spi_io_o[0]_i_4 
       (.I0(\spi_sck_div_cnt[3]_i_3_n_0 ),
        .I1(spi_sck_div_cnt_reg[3]),
        .I2(\spi_sck_div_reg_n_0_[3] ),
        .I3(spi_sck_div_en_reg_n_0),
        .O(\spi_io_o[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h000A0C00)) 
    \spi_io_o[0]_i_5 
       (.I0(p_2_in),
        .I1(\spi_sr_reg_n_0_[6] ),
        .I2(\spi_io_mode_q_reg_n_0_[2] ),
        .I3(\spi_io_mode_q_reg_n_0_[1] ),
        .I4(\spi_io_mode_q_reg_n_0_[0] ),
        .O(\spi_io_o[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \spi_io_o[0]_i_6 
       (.I0(\spi_io_mode_q_reg_n_0_[0] ),
        .I1(\spi_io_mode_q_reg_n_0_[2] ),
        .I2(\spi_io_mode_q_reg_n_0_[1] ),
        .O(\spi_io_o[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBF88888880)) 
    \spi_io_o[1]_i_1 
       (.I0(spi_io_o[1]),
        .I1(\spi_io_o[0]_i_2_n_0 ),
        .I2(\spi_io_o[1]_i_3_n_0 ),
        .I3(\spi_io_o[1]_i_4_n_0 ),
        .I4(\FSM_onehot_spi_fsm_state_reg_n_0_[0] ),
        .I5(spi_io1_o),
        .O(\spi_io_o[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAA0800AA0008)) 
    \spi_io_o[1]_i_2 
       (.I0(spi_sck_oe),
        .I1(\spi_sr_reg_n_0_[5] ),
        .I2(\spi_io_o[0]_i_6_n_0 ),
        .I3(spi_lsb_first_reg_n_0),
        .I4(\spi_io_o[1]_i_5_n_0 ),
        .I5(\spi_sr_reg_n_0_[1] ),
        .O(spi_io_o[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \spi_io_o[1]_i_3 
       (.I0(\spi_io_mode_q_reg_n_0_[1] ),
        .I1(\spi_io_mode_q_reg_n_0_[2] ),
        .I2(\spi_io_mode_q_reg_n_0_[0] ),
        .O(\spi_io_o[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAAB)) 
    \spi_io_o[1]_i_4 
       (.I0(spi_lsb_first_reg_n_0),
        .I1(\spi_sr_bit_cnt_reg_n_0_[4] ),
        .I2(\spi_sr_bit_cnt_reg_n_0_[3] ),
        .I3(\spi_sr_bit_cnt_reg_n_0_[1] ),
        .I4(\spi_sr_bit_cnt_reg_n_0_[2] ),
        .I5(\spi_sr_bit_cnt_reg_n_0_[0] ),
        .O(\spi_io_o[1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0020)) 
    \spi_io_o[1]_i_5 
       (.I0(p_2_in),
        .I1(\spi_io_mode_q_reg_n_0_[0] ),
        .I2(\spi_io_mode_q_reg_n_0_[1] ),
        .I3(\spi_io_mode_q_reg_n_0_[2] ),
        .O(\spi_io_o[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBFBB88888088)) 
    \spi_io_o[2]_i_1 
       (.I0(spi_io_o[2]),
        .I1(\spi_io_o[0]_i_2_n_0 ),
        .I2(\spi_io_o[1]_i_4_n_0 ),
        .I3(\spi_io_o[2]_i_3_n_0 ),
        .I4(\FSM_onehot_spi_fsm_state_reg_n_0_[0] ),
        .I5(spi_io2_o),
        .O(\spi_io_o[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0440000)) 
    \spi_io_o[2]_i_2 
       (.I0(\spi_io_o[0]_i_6_n_0 ),
        .I1(\spi_sr_reg_n_0_[6] ),
        .I2(\spi_sr_reg_n_0_[2] ),
        .I3(spi_lsb_first_reg_n_0),
        .I4(spi_sck_oe),
        .O(spi_io_o[2]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \spi_io_o[2]_i_3 
       (.I0(\spi_io_mode_q_reg_n_0_[0] ),
        .I1(\spi_io_mode_q_reg_n_0_[1] ),
        .I2(\spi_io_mode_q_reg_n_0_[2] ),
        .O(\spi_io_o[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBFBB88888088)) 
    \spi_io_o[3]_i_1 
       (.I0(spi_io_o[3]),
        .I1(\spi_io_o[0]_i_2_n_0 ),
        .I2(\spi_io_o[1]_i_4_n_0 ),
        .I3(\spi_io_o[2]_i_3_n_0 ),
        .I4(\FSM_onehot_spi_fsm_state_reg_n_0_[0] ),
        .I5(spi_io3_o),
        .O(\spi_io_o[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0440000)) 
    \spi_io_o[3]_i_2 
       (.I0(\spi_io_o[0]_i_6_n_0 ),
        .I1(p_2_in),
        .I2(\spi_sr_reg_n_0_[3] ),
        .I3(spi_lsb_first_reg_n_0),
        .I4(spi_sck_oe),
        .O(spi_io_o[3]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi_rtl:1.0 spi IO0_O" *) 
  FDRE \spi_io_o_reg[0] 
       (.C(aclk),
        .CE(\spi_io_o[0]_i_2_n_0 ),
        .D(spi_io_o[0]),
        .Q(spi_io0_o),
        .R(\spi_io_o[0]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi_rtl:1.0 spi IO0_O" *) 
  FDRE \spi_io_o_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\spi_io_o[1]_i_1_n_0 ),
        .Q(spi_io1_o),
        .R(\spi_io_o[0]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi_rtl:1.0 spi IO0_O" *) 
  FDRE \spi_io_o_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\spi_io_o[2]_i_1_n_0 ),
        .Q(spi_io2_o),
        .R(\spi_io_o[0]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi_rtl:1.0 spi IO0_O" *) 
  FDRE \spi_io_o_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\spi_io_o[3]_i_1_n_0 ),
        .Q(spi_io3_o),
        .R(\spi_io_o[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBBBAAAAAAAA)) 
    \spi_io_t[0]_i_1 
       (.I0(\FSM_onehot_spi_fsm_state_reg_n_0_[0] ),
        .I1(\spi_io_t[0]_i_2_n_0 ),
        .I2(\spi_io_mode_q_reg_n_0_[2] ),
        .I3(\spi_io_mode_q_reg_n_0_[1] ),
        .I4(\spi_io_t[0]_i_3_n_0 ),
        .I5(\FSM_onehot_spi_fsm_state_reg_n_0_[2] ),
        .O(spi_io_t[0]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h0256)) 
    \spi_io_t[0]_i_2 
       (.I0(\spi_io_mode_q_reg_n_0_[0] ),
        .I1(\spi_io_mode_q_reg_n_0_[1] ),
        .I2(\spi_io_mode_q_reg_n_0_[2] ),
        .I3(spi_dir_reg_n_0),
        .O(\spi_io_t[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \spi_io_t[0]_i_3 
       (.I0(\spi_sr_bit_cnt_reg_n_0_[0] ),
        .I1(\spi_sr_bit_cnt_reg_n_0_[2] ),
        .I2(\spi_sr_bit_cnt_reg_n_0_[1] ),
        .I3(\spi_sr_bit_cnt_reg_n_0_[3] ),
        .I4(\spi_sr_bit_cnt_reg_n_0_[4] ),
        .O(\spi_io_t[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFBFFAAAAAAAA)) 
    \spi_io_t[1]_i_1 
       (.I0(\FSM_onehot_spi_fsm_state_reg_n_0_[0] ),
        .I1(\spi_io_t[1]_i_2_n_0 ),
        .I2(\spi_io_mode_q_reg_n_0_[0] ),
        .I3(\spi_io_mode_q_reg_n_0_[1] ),
        .I4(\spi_io_mode_q_reg_n_0_[2] ),
        .I5(\FSM_onehot_spi_fsm_state_reg_n_0_[2] ),
        .O(spi_io_t[1]));
  LUT6 #(
    .INIT(64'h5555555555555554)) 
    \spi_io_t[1]_i_2 
       (.I0(spi_dir_reg_n_0),
        .I1(\spi_sr_bit_cnt_reg_n_0_[4] ),
        .I2(\spi_sr_bit_cnt_reg_n_0_[3] ),
        .I3(\spi_sr_bit_cnt_reg_n_0_[1] ),
        .I4(\spi_sr_bit_cnt_reg_n_0_[2] ),
        .I5(\spi_sr_bit_cnt_reg_n_0_[0] ),
        .O(\spi_io_t[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFEAAAA)) 
    \spi_io_t[2]_i_1 
       (.I0(\FSM_onehot_spi_fsm_state_reg_n_0_[0] ),
        .I1(\spi_io_t[0]_i_3_n_0 ),
        .I2(spi_dir_reg_n_0),
        .I3(\spi_io_o[0]_i_6_n_0 ),
        .I4(\FSM_onehot_spi_fsm_state_reg_n_0_[2] ),
        .O(spi_io_t[2]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi_rtl:1.0 spi IO0_T" *) 
  FDSE \spi_io_t_reg[0] 
       (.C(aclk),
        .CE(\spi_io_o[0]_i_2_n_0 ),
        .D(spi_io_t[0]),
        .Q(Q[0]),
        .S(\spi_io_o[0]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi_rtl:1.0 spi IO0_T" *) 
  FDSE \spi_io_t_reg[1] 
       (.C(aclk),
        .CE(\spi_io_o[0]_i_2_n_0 ),
        .D(spi_io_t[1]),
        .Q(Q[1]),
        .S(\spi_io_o[0]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi_rtl:1.0 spi IO0_T" *) 
  FDSE \spi_io_t_reg[2] 
       (.C(aclk),
        .CE(\spi_io_o[0]_i_2_n_0 ),
        .D(spi_io_t[2]),
        .Q(Q[2]),
        .S(\spi_io_o[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    spi_lsb_first_i_1
       (.I0(s_axi_lite_wdata[8]),
        .I1(spi_mmio_en_req16_out),
        .I2(\FSM_onehot_spi_fsm_state_reg_n_0_[0] ),
        .I3(spi_mmio_en_reg_n_0),
        .I4(spi_lsb_first_reg_n_0),
        .O(spi_lsb_first_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h04000000)) 
    spi_lsb_first_i_2
       (.I0(s_axi_lite_awaddr[2]),
        .I1(s_axi_lite_awaddr[0]),
        .I2(s_axi_lite_awaddr[1]),
        .I3(s_axi_lite_wstrb[1]),
        .I4(s_axi_lite_awready),
        .O(spi_mmio_en_req16_out));
  FDRE spi_lsb_first_reg
       (.C(aclk),
        .CE(1'b1),
        .D(spi_lsb_first_i_1_n_0),
        .Q(spi_lsb_first_reg_n_0),
        .R(s_axi_lite_awready_i_1_n_0));
  LUT5 #(
    .INIT(32'h444FEEE0)) 
    \spi_mmio_addr_rem[0]_i_1 
       (.I0(spi_mmio_fsm_state__0[0]),
        .I1(p_3_in[0]),
        .I2(\spi_mmio_addr_rem[1]_i_2_n_0 ),
        .I3(s_axi_full_arsize_q),
        .I4(\spi_mmio_addr_rem_reg_n_0_[0] ),
        .O(\spi_mmio_addr_rem[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8FF74747400)) 
    \spi_mmio_addr_rem[1]_i_1 
       (.I0(\spi_mmio_addr_rem_reg_n_0_[0] ),
        .I1(spi_mmio_fsm_state__0[0]),
        .I2(p_3_in[1]),
        .I3(\spi_mmio_addr_rem[1]_i_2_n_0 ),
        .I4(s_axi_full_arsize_q),
        .I5(\spi_mmio_addr_rem_reg_n_0_[1] ),
        .O(\spi_mmio_addr_rem[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \spi_mmio_addr_rem[1]_i_2 
       (.I0(spi_mmio_fsm_state__0[1]),
        .I1(spi_mmio_fsm_state__0[0]),
        .I2(spi_mmio_fsm_state__0[2]),
        .I3(spi_sr_out_buf_valid_reg_n_0),
        .O(\spi_mmio_addr_rem[1]_i_2_n_0 ));
  FDRE \spi_mmio_addr_rem_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\spi_mmio_addr_rem[0]_i_1_n_0 ),
        .Q(\spi_mmio_addr_rem_reg_n_0_[0] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_addr_rem_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\spi_mmio_addr_rem[1]_i_1_n_0 ),
        .Q(\spi_mmio_addr_rem_reg_n_0_[1] ),
        .R(s_axi_lite_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    \spi_mmio_addr_size[1]_i_1 
       (.I0(s_axi_lite_awaddr[2]),
        .I1(s_axi_lite_awaddr[1]),
        .I2(s_axi_lite_awready),
        .I3(spi_mmio_en_reg_n_0),
        .I4(s_axi_lite_wstrb[0]),
        .I5(s_axi_lite_awaddr[0]),
        .O(spi_mmio_addr_size));
  FDRE \spi_mmio_addr_size_reg[0] 
       (.C(aclk),
        .CE(spi_mmio_addr_size),
        .D(s_axi_lite_wdata[0]),
        .Q(p_3_in[0]),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_addr_size_reg[1] 
       (.C(aclk),
        .CE(spi_mmio_addr_size),
        .D(s_axi_lite_wdata[1]),
        .Q(p_3_in[1]),
        .R(s_axi_lite_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \spi_mmio_cs_rem[0]_i_1 
       (.I0(\spi_mmio_cs_rem_reg_n_0_[0] ),
        .I1(spi_mmio_fsm_state__0[0]),
        .I2(\spi_mmio_cs_size_reg_n_0_[0] ),
        .O(spi_mmio_cs_rem[0]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h9F90)) 
    \spi_mmio_cs_rem[1]_i_1 
       (.I0(\spi_mmio_cs_rem_reg_n_0_[1] ),
        .I1(\spi_mmio_cs_rem_reg_n_0_[0] ),
        .I2(spi_mmio_fsm_state__0[0]),
        .I3(\spi_mmio_cs_size_reg_n_0_[1] ),
        .O(spi_mmio_cs_rem[1]));
  LUT5 #(
    .INIT(32'hE1FFE100)) 
    \spi_mmio_cs_rem[2]_i_1 
       (.I0(\spi_mmio_cs_rem_reg_n_0_[1] ),
        .I1(\spi_mmio_cs_rem_reg_n_0_[0] ),
        .I2(\spi_mmio_cs_rem_reg_n_0_[2] ),
        .I3(spi_mmio_fsm_state__0[0]),
        .I4(\spi_mmio_cs_size_reg_n_0_[2] ),
        .O(spi_mmio_cs_rem[2]));
  LUT6 #(
    .INIT(64'hFE01FFFFFE010000)) 
    \spi_mmio_cs_rem[3]_i_1 
       (.I0(\spi_mmio_cs_rem_reg_n_0_[2] ),
        .I1(\spi_mmio_cs_rem_reg_n_0_[0] ),
        .I2(\spi_mmio_cs_rem_reg_n_0_[1] ),
        .I3(\spi_mmio_cs_rem_reg_n_0_[3] ),
        .I4(spi_mmio_fsm_state__0[0]),
        .I5(\spi_mmio_cs_size_reg_n_0_[3] ),
        .O(spi_mmio_cs_rem[3]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h9F90)) 
    \spi_mmio_cs_rem[4]_i_1 
       (.I0(\spi_mmio_cs_rem_reg_n_0_[4] ),
        .I1(\spi_mmio_cs_rem[5]_i_2_n_0 ),
        .I2(spi_mmio_fsm_state__0[0]),
        .I3(\spi_mmio_cs_size_reg_n_0_[4] ),
        .O(spi_mmio_cs_rem[4]));
  LUT5 #(
    .INIT(32'hE1FFE100)) 
    \spi_mmio_cs_rem[5]_i_1 
       (.I0(\spi_mmio_cs_rem_reg_n_0_[4] ),
        .I1(\spi_mmio_cs_rem[5]_i_2_n_0 ),
        .I2(\spi_mmio_cs_rem_reg_n_0_[5] ),
        .I3(spi_mmio_fsm_state__0[0]),
        .I4(\spi_mmio_cs_size_reg_n_0_[5] ),
        .O(spi_mmio_cs_rem[5]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \spi_mmio_cs_rem[5]_i_2 
       (.I0(\spi_mmio_cs_rem_reg_n_0_[3] ),
        .I1(\spi_mmio_cs_rem_reg_n_0_[1] ),
        .I2(\spi_mmio_cs_rem_reg_n_0_[0] ),
        .I3(\spi_mmio_cs_rem_reg_n_0_[2] ),
        .O(\spi_mmio_cs_rem[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \spi_mmio_cs_rem[6]_i_1 
       (.I0(\spi_mmio_cs_rem_reg_n_0_[6] ),
        .I1(\spi_mmio_cs_rem[7]_i_3_n_0 ),
        .I2(spi_mmio_fsm_state__0[0]),
        .I3(\spi_mmio_cs_size_reg_n_0_[6] ),
        .O(spi_mmio_cs_rem[6]));
  LUT4 #(
    .INIT(16'hA800)) 
    \spi_mmio_cs_rem[7]_i_1 
       (.I0(spi_mmio_fsm_state__0[2]),
        .I1(spi_mmio_fsm_state__0[0]),
        .I2(\FSM_onehot_spi_fsm_state_reg_n_0_[0] ),
        .I3(spi_mmio_fsm_state__0[1]),
        .O(\spi_mmio_cs_rem[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h9AFF9A00)) 
    \spi_mmio_cs_rem[7]_i_2 
       (.I0(\spi_mmio_cs_rem_reg_n_0_[7] ),
        .I1(\spi_mmio_cs_rem_reg_n_0_[6] ),
        .I2(\spi_mmio_cs_rem[7]_i_3_n_0 ),
        .I3(spi_mmio_fsm_state__0[0]),
        .I4(\spi_mmio_cs_size_reg_n_0_[7] ),
        .O(spi_mmio_cs_rem[7]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \spi_mmio_cs_rem[7]_i_3 
       (.I0(\spi_mmio_cs_rem_reg_n_0_[5] ),
        .I1(\spi_mmio_cs_rem_reg_n_0_[3] ),
        .I2(\spi_mmio_cs_rem_reg_n_0_[1] ),
        .I3(\spi_mmio_cs_rem_reg_n_0_[0] ),
        .I4(\spi_mmio_cs_rem_reg_n_0_[2] ),
        .I5(\spi_mmio_cs_rem_reg_n_0_[4] ),
        .O(\spi_mmio_cs_rem[7]_i_3_n_0 ));
  FDRE \spi_mmio_cs_rem_reg[0] 
       (.C(aclk),
        .CE(\spi_mmio_cs_rem[7]_i_1_n_0 ),
        .D(spi_mmio_cs_rem[0]),
        .Q(\spi_mmio_cs_rem_reg_n_0_[0] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cs_rem_reg[1] 
       (.C(aclk),
        .CE(\spi_mmio_cs_rem[7]_i_1_n_0 ),
        .D(spi_mmio_cs_rem[1]),
        .Q(\spi_mmio_cs_rem_reg_n_0_[1] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cs_rem_reg[2] 
       (.C(aclk),
        .CE(\spi_mmio_cs_rem[7]_i_1_n_0 ),
        .D(spi_mmio_cs_rem[2]),
        .Q(\spi_mmio_cs_rem_reg_n_0_[2] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cs_rem_reg[3] 
       (.C(aclk),
        .CE(\spi_mmio_cs_rem[7]_i_1_n_0 ),
        .D(spi_mmio_cs_rem[3]),
        .Q(\spi_mmio_cs_rem_reg_n_0_[3] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cs_rem_reg[4] 
       (.C(aclk),
        .CE(\spi_mmio_cs_rem[7]_i_1_n_0 ),
        .D(spi_mmio_cs_rem[4]),
        .Q(\spi_mmio_cs_rem_reg_n_0_[4] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cs_rem_reg[5] 
       (.C(aclk),
        .CE(\spi_mmio_cs_rem[7]_i_1_n_0 ),
        .D(spi_mmio_cs_rem[5]),
        .Q(\spi_mmio_cs_rem_reg_n_0_[5] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cs_rem_reg[6] 
       (.C(aclk),
        .CE(\spi_mmio_cs_rem[7]_i_1_n_0 ),
        .D(spi_mmio_cs_rem[6]),
        .Q(\spi_mmio_cs_rem_reg_n_0_[6] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cs_rem_reg[7] 
       (.C(aclk),
        .CE(\spi_mmio_cs_rem[7]_i_1_n_0 ),
        .D(spi_mmio_cs_rem[7]),
        .Q(\spi_mmio_cs_rem_reg_n_0_[7] ),
        .R(s_axi_lite_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \spi_mmio_cs_size[7]_i_1 
       (.I0(s_axi_lite_awaddr[2]),
        .I1(s_axi_lite_awaddr[0]),
        .I2(s_axi_lite_awaddr[1]),
        .I3(s_axi_lite_wstrb[2]),
        .I4(spi_mmio_en_reg_n_0),
        .I5(s_axi_lite_awready),
        .O(spi_mmio_cs_size));
  FDRE \spi_mmio_cs_size_reg[0] 
       (.C(aclk),
        .CE(spi_mmio_cs_size),
        .D(s_axi_lite_wdata[16]),
        .Q(\spi_mmio_cs_size_reg_n_0_[0] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cs_size_reg[1] 
       (.C(aclk),
        .CE(spi_mmio_cs_size),
        .D(s_axi_lite_wdata[17]),
        .Q(\spi_mmio_cs_size_reg_n_0_[1] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cs_size_reg[2] 
       (.C(aclk),
        .CE(spi_mmio_cs_size),
        .D(s_axi_lite_wdata[18]),
        .Q(\spi_mmio_cs_size_reg_n_0_[2] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cs_size_reg[3] 
       (.C(aclk),
        .CE(spi_mmio_cs_size),
        .D(s_axi_lite_wdata[19]),
        .Q(\spi_mmio_cs_size_reg_n_0_[3] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cs_size_reg[4] 
       (.C(aclk),
        .CE(spi_mmio_cs_size),
        .D(s_axi_lite_wdata[20]),
        .Q(\spi_mmio_cs_size_reg_n_0_[4] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cs_size_reg[5] 
       (.C(aclk),
        .CE(spi_mmio_cs_size),
        .D(s_axi_lite_wdata[21]),
        .Q(\spi_mmio_cs_size_reg_n_0_[5] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cs_size_reg[6] 
       (.C(aclk),
        .CE(spi_mmio_cs_size),
        .D(s_axi_lite_wdata[22]),
        .Q(\spi_mmio_cs_size_reg_n_0_[6] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_cs_size_reg[7] 
       (.C(aclk),
        .CE(spi_mmio_cs_size),
        .D(s_axi_lite_wdata[23]),
        .Q(\spi_mmio_cs_size_reg_n_0_[7] ),
        .R(s_axi_lite_awready_i_1_n_0));
  LUT5 #(
    .INIT(32'h444FEEE0)) 
    \spi_mmio_dummy_rem[0]_i_1 
       (.I0(spi_mmio_fsm_state__0[0]),
        .I1(p_3_in[4]),
        .I2(\spi_mmio_dummy_rem[1]_i_2_n_0 ),
        .I3(s_axi_full_arsize_q),
        .I4(p_3_in[6]),
        .O(\spi_mmio_dummy_rem[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8FF74747400)) 
    \spi_mmio_dummy_rem[1]_i_1 
       (.I0(p_3_in[6]),
        .I1(spi_mmio_fsm_state__0[0]),
        .I2(p_3_in[5]),
        .I3(\spi_mmio_dummy_rem[1]_i_2_n_0 ),
        .I4(s_axi_full_arsize_q),
        .I5(p_3_in[7]),
        .O(\spi_mmio_dummy_rem[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \spi_mmio_dummy_rem[1]_i_2 
       (.I0(spi_mmio_fsm_state__0[2]),
        .I1(spi_mmio_fsm_state__0[1]),
        .I2(spi_mmio_fsm_state__0[0]),
        .I3(spi_rd_req_reg_n_0),
        .O(\spi_mmio_dummy_rem[1]_i_2_n_0 ));
  FDRE \spi_mmio_dummy_rem_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\spi_mmio_dummy_rem[0]_i_1_n_0 ),
        .Q(p_3_in[6]),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_dummy_rem_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\spi_mmio_dummy_rem[1]_i_1_n_0 ),
        .Q(p_3_in[7]),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_dummy_size_reg[0] 
       (.C(aclk),
        .CE(spi_mmio_addr_size),
        .D(s_axi_lite_wdata[4]),
        .Q(p_3_in[4]),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_dummy_size_reg[1] 
       (.C(aclk),
        .CE(spi_mmio_addr_size),
        .D(s_axi_lite_wdata[5]),
        .Q(p_3_in[5]),
        .R(s_axi_lite_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFF800000008)) 
    spi_mmio_en_i_1
       (.I0(spi_en),
        .I1(spi_mmio_en_req_reg_n_0),
        .I2(spi_mmio_fsm_state__0[2]),
        .I3(spi_mmio_fsm_state__0[1]),
        .I4(spi_mmio_fsm_state__0[0]),
        .I5(spi_mmio_en_reg_n_0),
        .O(spi_mmio_en_i_1_n_0));
  FDRE spi_mmio_en_reg
       (.C(aclk),
        .CE(1'b1),
        .D(spi_mmio_en_i_1_n_0),
        .Q(spi_mmio_en_reg_n_0),
        .R(s_axi_lite_awready_i_1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    spi_mmio_en_req_i_1
       (.I0(s_axi_lite_wdata[12]),
        .I1(spi_mmio_en_req16_out),
        .I2(spi_mmio_en_req_reg_n_0),
        .O(spi_mmio_en_req_i_1_n_0));
  FDRE spi_mmio_en_req_reg
       (.C(aclk),
        .CE(1'b1),
        .D(spi_mmio_en_req_i_1_n_0),
        .Q(spi_mmio_en_req_reg_n_0),
        .R(s_axi_lite_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \spi_mmio_mode_bits[7]_i_1 
       (.I0(s_axi_lite_awaddr[2]),
        .I1(s_axi_lite_awaddr[0]),
        .I2(s_axi_lite_awaddr[1]),
        .I3(s_axi_lite_wstrb[1]),
        .I4(spi_mmio_en_reg_n_0),
        .I5(s_axi_lite_awready),
        .O(spi_mmio_mode_bits));
  FDRE \spi_mmio_mode_bits_reg[0] 
       (.C(aclk),
        .CE(spi_mmio_mode_bits),
        .D(s_axi_lite_wdata[8]),
        .Q(\spi_mmio_mode_bits_reg_n_0_[0] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_mode_bits_reg[1] 
       (.C(aclk),
        .CE(spi_mmio_mode_bits),
        .D(s_axi_lite_wdata[9]),
        .Q(\spi_mmio_mode_bits_reg_n_0_[1] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_mode_bits_reg[2] 
       (.C(aclk),
        .CE(spi_mmio_mode_bits),
        .D(s_axi_lite_wdata[10]),
        .Q(\spi_mmio_mode_bits_reg_n_0_[2] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_mode_bits_reg[3] 
       (.C(aclk),
        .CE(spi_mmio_mode_bits),
        .D(s_axi_lite_wdata[11]),
        .Q(\spi_mmio_mode_bits_reg_n_0_[3] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_mode_bits_reg[4] 
       (.C(aclk),
        .CE(spi_mmio_mode_bits),
        .D(s_axi_lite_wdata[12]),
        .Q(\spi_mmio_mode_bits_reg_n_0_[4] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_mode_bits_reg[5] 
       (.C(aclk),
        .CE(spi_mmio_mode_bits),
        .D(s_axi_lite_wdata[13]),
        .Q(\spi_mmio_mode_bits_reg_n_0_[5] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_mode_bits_reg[6] 
       (.C(aclk),
        .CE(spi_mmio_mode_bits),
        .D(s_axi_lite_wdata[14]),
        .Q(\spi_mmio_mode_bits_reg_n_0_[6] ),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_mmio_mode_bits_reg[7] 
       (.C(aclk),
        .CE(spi_mmio_mode_bits),
        .D(s_axi_lite_wdata[15]),
        .Q(\spi_mmio_mode_bits_reg_n_0_[7] ),
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
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \spi_mode[1]_i_2 
       (.I0(s_axi_lite_awaddr[2]),
        .I1(s_axi_lite_awaddr[0]),
        .I2(s_axi_lite_awaddr[1]),
        .I3(s_axi_lite_wstrb[0]),
        .I4(spi_mmio_en_reg_n_0),
        .I5(s_axi_lite_awready),
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
    .INIT(64'hFAAAEAAAFAFAEAAA)) 
    spi_rd_req_ack_i_1
       (.I0(spi_rd_req_ack_i_2_n_0),
        .I1(\FSM_onehot_spi_fsm_state_reg_n_0_[1] ),
        .I2(spi_rd_req_reg_n_0),
        .I3(spi_rd_req_ack_reg_n_0),
        .I4(\FSM_onehot_spi_fsm_state_reg_n_0_[0] ),
        .I5(spi_sr_out_buf_valid_reg_n_0),
        .O(spi_rd_req_ack));
  LUT6 #(
    .INIT(64'h8800880088008A00)) 
    spi_rd_req_ack_i_2
       (.I0(\FSM_onehot_spi_fsm_state_reg_n_0_[2] ),
        .I1(spi_rd_req_ack_reg_n_0),
        .I2(spi_sr_out_buf_valid_reg_n_0),
        .I3(spi_rd_req_reg_n_0),
        .I4(\spi_io_mode_q[2]_i_3_n_0 ),
        .I5(\FSM_onehot_spi_fsm_state[2]_i_3_n_0 ),
        .O(spi_rd_req_ack_i_2_n_0));
  FDRE spi_rd_req_ack_reg
       (.C(aclk),
        .CE(1'b1),
        .D(spi_rd_req_ack),
        .Q(spi_rd_req_ack_reg_n_0),
        .R(\spi_io_o[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hBAAA)) 
    spi_rd_req_i_1
       (.I0(spi_rd_req_i_2_n_0),
        .I1(spi_rd_req_ack_reg_n_0),
        .I2(spi_rd_req_reg_n_0),
        .I3(spi_en),
        .O(spi_rd_req_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF04000000)) 
    spi_rd_req_i_2
       (.I0(\spi_sr_out_buf[7]_i_4_n_0 ),
        .I1(spi_en),
        .I2(spi_mmio_en_reg_n_0),
        .I3(s_axi_lite_awready),
        .I4(spi_rd_req_i_3_n_0),
        .I5(spi_rd_req_i_4_n_0),
        .O(spi_rd_req_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h00000800)) 
    spi_rd_req_i_3
       (.I0(s_axi_lite_wstrb[0]),
        .I1(s_axi_lite_wstrb[1]),
        .I2(s_axi_lite_wdata[8]),
        .I3(s_axi_lite_wdata[9]),
        .I4(spi_rd_req_reg_n_0),
        .O(spi_rd_req_i_3_n_0));
  LUT6 #(
    .INIT(64'h000002000F000000)) 
    spi_rd_req_i_4
       (.I0(spi_mmio_en_reg_n_0),
        .I1(spi_sr_in_buf_valid_reg_n_0),
        .I2(spi_rd_req_reg_n_0),
        .I3(spi_mmio_fsm_state__0[0]),
        .I4(spi_mmio_fsm_state__0[1]),
        .I5(spi_mmio_fsm_state__0[2]),
        .O(spi_rd_req_i_4_n_0));
  FDRE spi_rd_req_reg
       (.C(aclk),
        .CE(1'b1),
        .D(spi_rd_req_i_1_n_0),
        .Q(spi_rd_req_reg_n_0),
        .R(s_axi_lite_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \spi_sck_div[3]_i_1 
       (.I0(s_axi_lite_awaddr[2]),
        .I1(s_axi_lite_awaddr[1]),
        .I2(s_axi_lite_awready),
        .I3(s_axi_lite_wstrb[0]),
        .I4(spi_sck_div_en_reg_n_0),
        .I5(s_axi_lite_awaddr[0]),
        .O(spi_sck_div));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \spi_sck_div_cnt[0]_i_1 
       (.I0(spi_sck_div_cnt_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \spi_sck_div_cnt[1]_i_1 
       (.I0(spi_sck_div_cnt_reg[0]),
        .I1(spi_sck_div_cnt_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \spi_sck_div_cnt[2]_i_1 
       (.I0(spi_sck_div_cnt_reg[2]),
        .I1(spi_sck_div_cnt_reg[1]),
        .I2(spi_sck_div_cnt_reg[0]),
        .O(p_0_in[2]));
  LUT4 #(
    .INIT(16'h7557)) 
    \spi_sck_div_cnt[3]_i_1 
       (.I0(spi_sck_div_en_reg_n_0),
        .I1(\spi_sck_div_cnt[3]_i_3_n_0 ),
        .I2(spi_sck_div_cnt_reg[3]),
        .I3(\spi_sck_div_reg_n_0_[3] ),
        .O(\spi_sck_div_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \spi_sck_div_cnt[3]_i_2 
       (.I0(spi_sck_div_cnt_reg[3]),
        .I1(spi_sck_div_cnt_reg[0]),
        .I2(spi_sck_div_cnt_reg[1]),
        .I3(spi_sck_div_cnt_reg[2]),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \spi_sck_div_cnt[3]_i_3 
       (.I0(\spi_sck_div_reg_n_0_[0] ),
        .I1(spi_sck_div_cnt_reg[0]),
        .I2(spi_sck_div_cnt_reg[2]),
        .I3(\spi_sck_div_reg_n_0_[2] ),
        .I4(spi_sck_div_cnt_reg[1]),
        .I5(\spi_sck_div_reg_n_0_[1] ),
        .O(\spi_sck_div_cnt[3]_i_3_n_0 ));
  FDRE \spi_sck_div_cnt_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(spi_sck_div_cnt_reg[0]),
        .R(\spi_sck_div_cnt[3]_i_1_n_0 ));
  FDRE \spi_sck_div_cnt_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(spi_sck_div_cnt_reg[1]),
        .R(\spi_sck_div_cnt[3]_i_1_n_0 ));
  FDRE \spi_sck_div_cnt_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(spi_sck_div_cnt_reg[2]),
        .R(\spi_sck_div_cnt[3]_i_1_n_0 ));
  FDRE \spi_sck_div_cnt_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(spi_sck_div_cnt_reg[3]),
        .R(\spi_sck_div_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hFBBB0888)) 
    spi_sck_div_en_i_1
       (.I0(s_axi_lite_wdata[0]),
        .I1(\spi_mode[1]_i_2_n_0 ),
        .I2(s_axi_lite_wdata[1]),
        .I3(spi_en),
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
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h82)) 
    spi_sck_int_i_1
       (.I0(spi_sck_div_en_reg_n_0),
        .I1(spi_sck_int),
        .I2(\spi_io_o[0]_i_4_n_0 ),
        .O(spi_sck_int_i_1_n_0));
  FDRE spi_sck_int_reg
       (.C(aclk),
        .CE(1'b1),
        .D(spi_sck_int_i_1_n_0),
        .Q(spi_sck_int),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h6A)) 
    spi_sck_o_INST_0
       (.I0(spi_cpol),
        .I1(spi_sck_oe_reg_n_0),
        .I2(spi_sck_int),
        .O(spi_sck_o));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    spi_sck_oe_i_1
       (.I0(\FSM_onehot_spi_fsm_state_reg_n_0_[2] ),
        .I1(\spi_sr_bit_cnt_reg_n_0_[4] ),
        .I2(\spi_sr_bit_cnt_reg_n_0_[3] ),
        .I3(\spi_sr_bit_cnt_reg_n_0_[1] ),
        .I4(\spi_sr_bit_cnt_reg_n_0_[2] ),
        .I5(\spi_sr_bit_cnt_reg_n_0_[0] ),
        .O(spi_sck_oe));
  FDRE spi_sck_oe_reg
       (.C(aclk),
        .CE(\spi_io_o[0]_i_2_n_0 ),
        .D(spi_sck_oe),
        .Q(spi_sck_oe_reg_n_0),
        .R(\spi_io_o[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF88F8)) 
    \spi_sr[0]_i_1 
       (.I0(spi_sr_in_buf1_in[0]),
        .I1(\spi_sr[7]_i_2_n_0 ),
        .I2(\spi_sr_out_buf_reg_n_0_[0] ),
        .I3(\spi_sr[7]_i_3_n_0 ),
        .I4(\FSM_onehot_spi_fsm_state_reg_n_0_[1] ),
        .O(\spi_sr[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF88F8)) 
    \spi_sr[1]_i_1 
       (.I0(spi_sr_in_buf1_in[1]),
        .I1(\spi_sr[7]_i_2_n_0 ),
        .I2(\spi_sr_out_buf_reg_n_0_[1] ),
        .I3(\spi_sr[7]_i_3_n_0 ),
        .I4(\FSM_onehot_spi_fsm_state_reg_n_0_[1] ),
        .O(\spi_sr[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF88F8)) 
    \spi_sr[2]_i_1 
       (.I0(spi_sr_in_buf1_in[2]),
        .I1(\spi_sr[7]_i_2_n_0 ),
        .I2(\spi_sr_out_buf_reg_n_0_[2] ),
        .I3(\spi_sr[7]_i_3_n_0 ),
        .I4(\FSM_onehot_spi_fsm_state_reg_n_0_[1] ),
        .O(\spi_sr[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF88F8)) 
    \spi_sr[3]_i_1 
       (.I0(spi_sr_in_buf1_in[3]),
        .I1(\spi_sr[7]_i_2_n_0 ),
        .I2(\spi_sr_out_buf_reg_n_0_[3] ),
        .I3(\spi_sr[7]_i_3_n_0 ),
        .I4(\FSM_onehot_spi_fsm_state_reg_n_0_[1] ),
        .O(\spi_sr[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF88F8)) 
    \spi_sr[4]_i_1 
       (.I0(spi_sr_in_buf1_in[4]),
        .I1(\spi_sr[7]_i_2_n_0 ),
        .I2(\spi_sr_out_buf_reg_n_0_[4] ),
        .I3(\spi_sr[7]_i_3_n_0 ),
        .I4(\FSM_onehot_spi_fsm_state_reg_n_0_[1] ),
        .O(\spi_sr[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF88F8)) 
    \spi_sr[5]_i_1 
       (.I0(spi_sr_in_buf1_in[5]),
        .I1(\spi_sr[7]_i_2_n_0 ),
        .I2(\spi_sr_out_buf_reg_n_0_[5] ),
        .I3(\spi_sr[7]_i_3_n_0 ),
        .I4(\FSM_onehot_spi_fsm_state_reg_n_0_[1] ),
        .O(\spi_sr[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF88F8)) 
    \spi_sr[6]_i_1 
       (.I0(spi_sr_in_buf1_in[6]),
        .I1(\spi_sr[7]_i_2_n_0 ),
        .I2(\spi_sr_out_buf_reg_n_0_[6] ),
        .I3(\spi_sr[7]_i_3_n_0 ),
        .I4(\FSM_onehot_spi_fsm_state_reg_n_0_[1] ),
        .O(\spi_sr[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF88F8)) 
    \spi_sr[7]_i_1 
       (.I0(spi_sr_in_buf1_in[7]),
        .I1(\spi_sr[7]_i_2_n_0 ),
        .I2(\spi_sr_out_buf_reg_n_0_[7] ),
        .I3(\spi_sr[7]_i_3_n_0 ),
        .I4(\FSM_onehot_spi_fsm_state_reg_n_0_[1] ),
        .O(\spi_sr[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hAAAA2022)) 
    \spi_sr[7]_i_2 
       (.I0(\FSM_onehot_spi_fsm_state_reg_n_0_[2] ),
        .I1(spi_sr_out_buf_valid_reg_n_0),
        .I2(spi_rd_req_ack_reg_n_0),
        .I3(spi_rd_req_reg_n_0),
        .I4(\spi_io_mode_q[2]_i_3_n_0 ),
        .O(\spi_sr[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h0DFF)) 
    \spi_sr[7]_i_3 
       (.I0(\FSM_onehot_spi_fsm_state_reg_n_0_[2] ),
        .I1(\spi_io_mode_q[2]_i_3_n_0 ),
        .I2(\FSM_onehot_spi_fsm_state_reg_n_0_[0] ),
        .I3(spi_sr_out_buf_valid_reg_n_0),
        .O(\spi_sr[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \spi_sr_bit_cnt[0]_i_1 
       (.I0(\spi_sr_bit_cnt_reg_n_0_[0] ),
        .I1(\spi_io_mode_q_reg_n_0_[0] ),
        .I2(\FSM_onehot_spi_fsm_state_reg_n_0_[2] ),
        .O(\spi_sr_bit_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h28822828)) 
    \spi_sr_bit_cnt[1]_i_1 
       (.I0(\FSM_onehot_spi_fsm_state_reg_n_0_[2] ),
        .I1(\spi_io_mode_q_reg_n_0_[1] ),
        .I2(\spi_sr_bit_cnt_reg_n_0_[1] ),
        .I3(\spi_sr_bit_cnt_reg_n_0_[0] ),
        .I4(\spi_io_mode_q_reg_n_0_[0] ),
        .O(spi_sr_bit_cnt[1]));
  LUT6 #(
    .INIT(64'h2BD4D42B00000000)) 
    \spi_sr_bit_cnt[2]_i_1 
       (.I0(\spi_io_mode_q_reg_n_0_[1] ),
        .I1(\spi_sr_bit_cnt_reg_n_0_[1] ),
        .I2(\spi_sr_bit_cnt[2]_i_2_n_0 ),
        .I3(\spi_io_mode_q_reg_n_0_[2] ),
        .I4(\spi_sr_bit_cnt_reg_n_0_[2] ),
        .I5(\FSM_onehot_spi_fsm_state_reg_n_0_[2] ),
        .O(\spi_sr_bit_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \spi_sr_bit_cnt[2]_i_2 
       (.I0(\spi_sr_bit_cnt_reg_n_0_[0] ),
        .I1(\spi_io_mode_q_reg_n_0_[0] ),
        .O(\spi_sr_bit_cnt[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEBAAAA)) 
    \spi_sr_bit_cnt[3]_i_1 
       (.I0(\FSM_onehot_spi_fsm_state_reg_n_0_[0] ),
        .I1(\spi_sr_bit_cnt[4]_i_3_n_0 ),
        .I2(\spi_sr_bit_cnt_reg_n_0_[3] ),
        .I3(\spi_sr_bit_cnt[3]_i_2_n_0 ),
        .I4(\FSM_onehot_spi_fsm_state_reg_n_0_[2] ),
        .O(spi_sr_bit_cnt[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h5504)) 
    \spi_sr_bit_cnt[3]_i_2 
       (.I0(\spi_io_mode_q[2]_i_3_n_0 ),
        .I1(spi_rd_req_reg_n_0),
        .I2(spi_rd_req_ack_reg_n_0),
        .I3(spi_sr_out_buf_valid_reg_n_0),
        .O(\spi_sr_bit_cnt[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF4FFF4F444444444)) 
    \spi_sr_bit_cnt[4]_i_1 
       (.I0(\FSM_onehot_spi_fsm_state[2]_i_3_n_0 ),
        .I1(\FSM_onehot_spi_fsm_state_reg_n_0_[2] ),
        .I2(spi_sr_out_buf_valid_reg_n_0),
        .I3(spi_rd_req_ack_reg_n_0),
        .I4(spi_rd_req_reg_n_0),
        .I5(\FSM_onehot_spi_fsm_state_reg_n_0_[0] ),
        .O(\spi_sr_bit_cnt[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA802)) 
    \spi_sr_bit_cnt[4]_i_2 
       (.I0(\FSM_onehot_spi_fsm_state_reg_n_0_[2] ),
        .I1(\spi_sr_bit_cnt_reg_n_0_[3] ),
        .I2(\spi_sr_bit_cnt[4]_i_3_n_0 ),
        .I3(\spi_sr_bit_cnt_reg_n_0_[4] ),
        .O(spi_sr_bit_cnt[4]));
  LUT6 #(
    .INIT(64'hD4DD0000FFFFD4DD)) 
    \spi_sr_bit_cnt[4]_i_3 
       (.I0(\spi_io_mode_q_reg_n_0_[1] ),
        .I1(\spi_sr_bit_cnt_reg_n_0_[1] ),
        .I2(\spi_sr_bit_cnt_reg_n_0_[0] ),
        .I3(\spi_io_mode_q_reg_n_0_[0] ),
        .I4(\spi_sr_bit_cnt_reg_n_0_[2] ),
        .I5(\spi_io_mode_q_reg_n_0_[2] ),
        .O(\spi_sr_bit_cnt[4]_i_3_n_0 ));
  FDRE \spi_sr_bit_cnt_reg[0] 
       (.C(aclk),
        .CE(\spi_sr_bit_cnt[4]_i_1_n_0 ),
        .D(\spi_sr_bit_cnt[0]_i_1_n_0 ),
        .Q(\spi_sr_bit_cnt_reg_n_0_[0] ),
        .R(\spi_io_o[0]_i_1_n_0 ));
  FDRE \spi_sr_bit_cnt_reg[1] 
       (.C(aclk),
        .CE(\spi_sr_bit_cnt[4]_i_1_n_0 ),
        .D(spi_sr_bit_cnt[1]),
        .Q(\spi_sr_bit_cnt_reg_n_0_[1] ),
        .R(\spi_io_o[0]_i_1_n_0 ));
  FDRE \spi_sr_bit_cnt_reg[2] 
       (.C(aclk),
        .CE(\spi_sr_bit_cnt[4]_i_1_n_0 ),
        .D(\spi_sr_bit_cnt[2]_i_1_n_0 ),
        .Q(\spi_sr_bit_cnt_reg_n_0_[2] ),
        .R(\spi_io_o[0]_i_1_n_0 ));
  FDRE \spi_sr_bit_cnt_reg[3] 
       (.C(aclk),
        .CE(\spi_sr_bit_cnt[4]_i_1_n_0 ),
        .D(spi_sr_bit_cnt[3]),
        .Q(\spi_sr_bit_cnt_reg_n_0_[3] ),
        .R(\spi_io_o[0]_i_1_n_0 ));
  FDRE \spi_sr_bit_cnt_reg[4] 
       (.C(aclk),
        .CE(\spi_sr_bit_cnt[4]_i_1_n_0 ),
        .D(spi_sr_bit_cnt[4]),
        .Q(\spi_sr_bit_cnt_reg_n_0_[4] ),
        .R(\spi_io_o[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFB00FB00FFFFFB00)) 
    \spi_sr_in_buf[0]_i_1 
       (.I0(\spi_sr_in_buf[0]_i_2_n_0 ),
        .I1(spi_lsb_first_reg_n_0),
        .I2(\spi_sr_in_buf[0]_i_3_n_0 ),
        .I3(\spi_sr_in_buf[0]_i_4_n_0 ),
        .I4(\spi_sr_reg_n_0_[0] ),
        .I5(\spi_sr_in_buf[7]_i_4_n_0 ),
        .O(spi_sr_in_buf1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \spi_sr_in_buf[0]_i_2 
       (.I0(\spi_sr_reg_n_0_[1] ),
        .I1(\spi_io_mode_q_reg_n_0_[0] ),
        .I2(\spi_io_mode_q_reg_n_0_[2] ),
        .I3(\spi_io_mode_q_reg_n_0_[1] ),
        .O(\spi_sr_in_buf[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00380008)) 
    \spi_sr_in_buf[0]_i_3 
       (.I0(\spi_sr_reg_n_0_[4] ),
        .I1(\spi_io_mode_q_reg_n_0_[2] ),
        .I2(\spi_io_mode_q_reg_n_0_[1] ),
        .I3(\spi_io_mode_q_reg_n_0_[0] ),
        .I4(\spi_sr_reg_n_0_[2] ),
        .O(\spi_sr_in_buf[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF000A0AC0)) 
    \spi_sr_in_buf[0]_i_4 
       (.I0(spi_io0_i),
        .I1(spi_io1_i),
        .I2(\spi_io_mode_q_reg_n_0_[0] ),
        .I3(\spi_io_mode_q_reg_n_0_[2] ),
        .I4(\spi_io_mode_q_reg_n_0_[1] ),
        .I5(spi_lsb_first_reg_n_0),
        .O(\spi_sr_in_buf[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h55455545FFFF5545)) 
    \spi_sr_in_buf[1]_i_1 
       (.I0(\spi_sr_in_buf[1]_i_2_n_0 ),
        .I1(\spi_sr_in_buf[1]_i_3_n_0 ),
        .I2(spi_lsb_first_reg_n_0),
        .I3(\spi_sr_in_buf[1]_i_4_n_0 ),
        .I4(\spi_sr_reg_n_0_[1] ),
        .I5(\spi_sr_in_buf[7]_i_4_n_0 ),
        .O(spi_sr_in_buf1_in[1]));
  LUT6 #(
    .INIT(64'h00000000FFF5F33F)) 
    \spi_sr_in_buf[1]_i_2 
       (.I0(\spi_sr_reg_n_0_[0] ),
        .I1(spi_io1_i),
        .I2(\spi_io_mode_q_reg_n_0_[1] ),
        .I3(\spi_io_mode_q_reg_n_0_[2] ),
        .I4(\spi_io_mode_q_reg_n_0_[0] ),
        .I5(spi_lsb_first_reg_n_0),
        .O(\spi_sr_in_buf[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h03200020)) 
    \spi_sr_in_buf[1]_i_3 
       (.I0(\spi_sr_reg_n_0_[5] ),
        .I1(\spi_io_mode_q_reg_n_0_[1] ),
        .I2(\spi_io_mode_q_reg_n_0_[2] ),
        .I3(\spi_io_mode_q_reg_n_0_[0] ),
        .I4(\spi_sr_reg_n_0_[2] ),
        .O(\spi_sr_in_buf[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \spi_sr_in_buf[1]_i_4 
       (.I0(\spi_sr_reg_n_0_[3] ),
        .I1(\spi_io_mode_q_reg_n_0_[0] ),
        .I2(\spi_io_mode_q_reg_n_0_[1] ),
        .I3(\spi_io_mode_q_reg_n_0_[2] ),
        .O(\spi_sr_in_buf[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h55545554FFFF5554)) 
    \spi_sr_in_buf[2]_i_1 
       (.I0(\spi_sr_in_buf[2]_i_2_n_0 ),
        .I1(\spi_sr_in_buf[2]_i_3_n_0 ),
        .I2(\spi_sr_in_buf[2]_i_4_n_0 ),
        .I3(spi_lsb_first_reg_n_0),
        .I4(\spi_sr_reg_n_0_[2] ),
        .I5(\spi_sr_in_buf[7]_i_4_n_0 ),
        .O(spi_sr_in_buf1_in[2]));
  LUT6 #(
    .INIT(64'h4500450000004500)) 
    \spi_sr_in_buf[2]_i_2 
       (.I0(\spi_sr_in_buf[2]_i_5_n_0 ),
        .I1(\spi_io_o[0]_i_6_n_0 ),
        .I2(\spi_sr_reg_n_0_[6] ),
        .I3(spi_lsb_first_reg_n_0),
        .I4(\spi_sr_reg_n_0_[3] ),
        .I5(\spi_io_o[1]_i_3_n_0 ),
        .O(\spi_sr_in_buf[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h02300200)) 
    \spi_sr_in_buf[2]_i_3 
       (.I0(\spi_sr_reg_n_0_[1] ),
        .I1(\spi_io_mode_q_reg_n_0_[2] ),
        .I2(\spi_io_mode_q_reg_n_0_[1] ),
        .I3(\spi_io_mode_q_reg_n_0_[0] ),
        .I4(\spi_sr_reg_n_0_[0] ),
        .O(\spi_sr_in_buf[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \spi_sr_in_buf[2]_i_4 
       (.I0(spi_io2_i),
        .I1(\spi_io_mode_q_reg_n_0_[1] ),
        .I2(\spi_io_mode_q_reg_n_0_[2] ),
        .I3(\spi_io_mode_q_reg_n_0_[0] ),
        .O(\spi_sr_in_buf[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \spi_sr_in_buf[2]_i_5 
       (.I0(\spi_sr_reg_n_0_[4] ),
        .I1(\spi_io_mode_q_reg_n_0_[0] ),
        .I2(\spi_io_mode_q_reg_n_0_[1] ),
        .I3(\spi_io_mode_q_reg_n_0_[2] ),
        .O(\spi_sr_in_buf[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h55545554FFFF5554)) 
    \spi_sr_in_buf[3]_i_1 
       (.I0(\spi_sr_in_buf[3]_i_2_n_0 ),
        .I1(\spi_sr_in_buf[3]_i_3_n_0 ),
        .I2(\spi_sr_in_buf[3]_i_4_n_0 ),
        .I3(spi_lsb_first_reg_n_0),
        .I4(\spi_sr_reg_n_0_[3] ),
        .I5(\spi_sr_in_buf[7]_i_4_n_0 ),
        .O(spi_sr_in_buf1_in[3]));
  LUT6 #(
    .INIT(64'h4500450000004500)) 
    \spi_sr_in_buf[3]_i_2 
       (.I0(\spi_sr_in_buf[3]_i_5_n_0 ),
        .I1(\spi_io_o[0]_i_6_n_0 ),
        .I2(p_2_in),
        .I3(spi_lsb_first_reg_n_0),
        .I4(\spi_sr_reg_n_0_[4] ),
        .I5(\spi_io_o[1]_i_3_n_0 ),
        .O(\spi_sr_in_buf[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h03080008)) 
    \spi_sr_in_buf[3]_i_3 
       (.I0(\spi_sr_reg_n_0_[1] ),
        .I1(\spi_io_mode_q_reg_n_0_[1] ),
        .I2(\spi_io_mode_q_reg_n_0_[2] ),
        .I3(\spi_io_mode_q_reg_n_0_[0] ),
        .I4(\spi_sr_reg_n_0_[2] ),
        .O(\spi_sr_in_buf[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \spi_sr_in_buf[3]_i_4 
       (.I0(spi_io3_i),
        .I1(\spi_io_mode_q_reg_n_0_[1] ),
        .I2(\spi_io_mode_q_reg_n_0_[2] ),
        .I3(\spi_io_mode_q_reg_n_0_[0] ),
        .O(\spi_sr_in_buf[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \spi_sr_in_buf[3]_i_5 
       (.I0(\spi_sr_reg_n_0_[5] ),
        .I1(\spi_io_mode_q_reg_n_0_[0] ),
        .I2(\spi_io_mode_q_reg_n_0_[1] ),
        .I3(\spi_io_mode_q_reg_n_0_[2] ),
        .O(\spi_sr_in_buf[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h55545554FFFF5554)) 
    \spi_sr_in_buf[4]_i_1 
       (.I0(\spi_sr_in_buf[4]_i_2_n_0 ),
        .I1(\spi_sr_in_buf[4]_i_3_n_0 ),
        .I2(\spi_sr_in_buf[4]_i_4_n_0 ),
        .I3(spi_lsb_first_reg_n_0),
        .I4(\spi_sr_reg_n_0_[4] ),
        .I5(\spi_sr_in_buf[7]_i_4_n_0 ),
        .O(spi_sr_in_buf1_in[4]));
  LUT6 #(
    .INIT(64'hD000D0000000D000)) 
    \spi_sr_in_buf[4]_i_2 
       (.I0(\spi_sr_reg_n_0_[5] ),
        .I1(\spi_io_o[1]_i_3_n_0 ),
        .I2(\spi_sr_in_buf[4]_i_5_n_0 ),
        .I3(spi_lsb_first_reg_n_0),
        .I4(spi_io0_i),
        .I5(\spi_io_o[0]_i_6_n_0 ),
        .O(\spi_sr_in_buf[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h03200020)) 
    \spi_sr_in_buf[4]_i_3 
       (.I0(\spi_sr_reg_n_0_[0] ),
        .I1(\spi_io_mode_q_reg_n_0_[1] ),
        .I2(\spi_io_mode_q_reg_n_0_[2] ),
        .I3(\spi_io_mode_q_reg_n_0_[0] ),
        .I4(\spi_sr_reg_n_0_[3] ),
        .O(\spi_sr_in_buf[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \spi_sr_in_buf[4]_i_4 
       (.I0(\spi_sr_reg_n_0_[2] ),
        .I1(\spi_io_mode_q_reg_n_0_[0] ),
        .I2(\spi_io_mode_q_reg_n_0_[1] ),
        .I3(\spi_io_mode_q_reg_n_0_[2] ),
        .O(\spi_sr_in_buf[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hFBFF)) 
    \spi_sr_in_buf[4]_i_5 
       (.I0(\spi_io_mode_q_reg_n_0_[0] ),
        .I1(\spi_io_mode_q_reg_n_0_[1] ),
        .I2(\spi_io_mode_q_reg_n_0_[2] ),
        .I3(\spi_sr_reg_n_0_[6] ),
        .O(\spi_sr_in_buf[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h55455545FFFF5545)) 
    \spi_sr_in_buf[5]_i_1 
       (.I0(\spi_sr_in_buf[5]_i_2_n_0 ),
        .I1(\spi_sr_in_buf[5]_i_3_n_0 ),
        .I2(spi_lsb_first_reg_n_0),
        .I3(\spi_sr_in_buf[5]_i_4_n_0 ),
        .I4(\spi_sr_reg_n_0_[5] ),
        .I5(\spi_sr_in_buf[7]_i_4_n_0 ),
        .O(spi_sr_in_buf1_in[5]));
  LUT6 #(
    .INIT(64'h000000000000D0DD)) 
    \spi_sr_in_buf[5]_i_2 
       (.I0(\spi_sr_reg_n_0_[4] ),
        .I1(\spi_io_o[1]_i_3_n_0 ),
        .I2(\spi_io_o[0]_i_6_n_0 ),
        .I3(\spi_sr_reg_n_0_[1] ),
        .I4(\spi_sr_in_buf[1]_i_4_n_0 ),
        .I5(spi_lsb_first_reg_n_0),
        .O(\spi_sr_in_buf[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h03080008)) 
    \spi_sr_in_buf[5]_i_3 
       (.I0(p_2_in),
        .I1(\spi_io_mode_q_reg_n_0_[1] ),
        .I2(\spi_io_mode_q_reg_n_0_[2] ),
        .I3(\spi_io_mode_q_reg_n_0_[0] ),
        .I4(\spi_sr_reg_n_0_[6] ),
        .O(\spi_sr_in_buf[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \spi_sr_in_buf[5]_i_4 
       (.I0(spi_io1_i),
        .I1(\spi_io_mode_q_reg_n_0_[1] ),
        .I2(\spi_io_mode_q_reg_n_0_[2] ),
        .I3(\spi_io_mode_q_reg_n_0_[0] ),
        .O(\spi_sr_in_buf[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h55545554FFFF5554)) 
    \spi_sr_in_buf[6]_i_1 
       (.I0(\spi_sr_in_buf[6]_i_2_n_0 ),
        .I1(\spi_sr_in_buf[6]_i_3_n_0 ),
        .I2(spi_lsb_first_reg_n_0),
        .I3(\spi_sr_in_buf[6]_i_4_n_0 ),
        .I4(\spi_sr_reg_n_0_[6] ),
        .I5(\spi_sr_in_buf[7]_i_4_n_0 ),
        .O(spi_sr_in_buf1_in[6]));
  LUT6 #(
    .INIT(64'h4500450000004500)) 
    \spi_sr_in_buf[6]_i_2 
       (.I0(\spi_sr_in_buf[6]_i_5_n_0 ),
        .I1(\spi_io_o[1]_i_3_n_0 ),
        .I2(p_2_in),
        .I3(spi_lsb_first_reg_n_0),
        .I4(spi_io2_i),
        .I5(\spi_io_o[0]_i_6_n_0 ),
        .O(\spi_sr_in_buf[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \spi_sr_in_buf[6]_i_3 
       (.I0(\spi_sr_reg_n_0_[5] ),
        .I1(\spi_io_mode_q_reg_n_0_[0] ),
        .I2(\spi_io_mode_q_reg_n_0_[2] ),
        .I3(\spi_io_mode_q_reg_n_0_[1] ),
        .O(\spi_sr_in_buf[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00380008)) 
    \spi_sr_in_buf[6]_i_4 
       (.I0(\spi_sr_reg_n_0_[2] ),
        .I1(\spi_io_mode_q_reg_n_0_[2] ),
        .I2(\spi_io_mode_q_reg_n_0_[1] ),
        .I3(\spi_io_mode_q_reg_n_0_[0] ),
        .I4(\spi_sr_reg_n_0_[4] ),
        .O(\spi_sr_in_buf[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \spi_sr_in_buf[6]_i_5 
       (.I0(spi_io0_i),
        .I1(\spi_io_mode_q_reg_n_0_[0] ),
        .I2(\spi_io_mode_q_reg_n_0_[1] ),
        .I3(\spi_io_mode_q_reg_n_0_[2] ),
        .O(\spi_sr_in_buf[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAA0008)) 
    \spi_sr_in_buf[7]_i_1 
       (.I0(\spi_sr_in_buf[7]_i_3_n_0 ),
        .I1(\spi_io_mode_q_reg_n_0_[0] ),
        .I2(\spi_io_mode_q_reg_n_0_[2] ),
        .I3(\spi_io_mode_q_reg_n_0_[1] ),
        .I4(spi_dir_reg_n_0),
        .I5(spi_sr_in_buf_valid_reg_n_0),
        .O(spi_sr_in_buf));
  LUT6 #(
    .INIT(64'h4F4F4F4F4F4F4F44)) 
    \spi_sr_in_buf[7]_i_2 
       (.I0(\spi_sr_in_buf[7]_i_4_n_0 ),
        .I1(p_2_in),
        .I2(\spi_sr_in_buf[7]_i_5_n_0 ),
        .I3(\spi_sr_in_buf[7]_i_6_n_0 ),
        .I4(spi_lsb_first_reg_n_0),
        .I5(\spi_sr_in_buf[7]_i_7_n_0 ),
        .O(spi_sr_in_buf1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \spi_sr_in_buf[7]_i_3 
       (.I0(\spi_io_mode_q[2]_i_3_n_0 ),
        .I1(\FSM_onehot_spi_fsm_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_spi_fsm_state[2]_i_3_n_0 ),
        .O(\spi_sr_in_buf[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h16)) 
    \spi_sr_in_buf[7]_i_4 
       (.I0(\spi_io_mode_q_reg_n_0_[1] ),
        .I1(\spi_io_mode_q_reg_n_0_[2] ),
        .I2(\spi_io_mode_q_reg_n_0_[0] ),
        .O(\spi_sr_in_buf[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAA2A02AAAA2AA2A)) 
    \spi_sr_in_buf[7]_i_5 
       (.I0(spi_lsb_first_reg_n_0),
        .I1(spi_io1_i),
        .I2(\spi_io_mode_q_reg_n_0_[0] ),
        .I3(\spi_io_mode_q_reg_n_0_[2] ),
        .I4(\spi_io_mode_q_reg_n_0_[1] ),
        .I5(spi_io3_i),
        .O(\spi_sr_in_buf[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \spi_sr_in_buf[7]_i_6 
       (.I0(\spi_sr_reg_n_0_[6] ),
        .I1(\spi_io_mode_q_reg_n_0_[0] ),
        .I2(\spi_io_mode_q_reg_n_0_[2] ),
        .I3(\spi_io_mode_q_reg_n_0_[1] ),
        .O(\spi_sr_in_buf[7]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00380008)) 
    \spi_sr_in_buf[7]_i_7 
       (.I0(\spi_sr_reg_n_0_[3] ),
        .I1(\spi_io_mode_q_reg_n_0_[2] ),
        .I2(\spi_io_mode_q_reg_n_0_[1] ),
        .I3(\spi_io_mode_q_reg_n_0_[0] ),
        .I4(\spi_sr_reg_n_0_[5] ),
        .O(\spi_sr_in_buf[7]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hDCDCCFCC)) 
    spi_sr_in_buf_ready_i_1
       (.I0(spi_mmio_en_reg_n_0),
        .I1(spi_sr_in_buf_ready_i_2_n_0),
        .I2(spi_sr_in_buf_ready_i_3_n_0),
        .I3(spi_sr_in_buf_ready_reg_n_0),
        .I4(spi_sr_in_buf_valid_reg_n_0),
        .O(spi_sr_in_buf_ready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000200022222222)) 
    spi_sr_in_buf_ready_i_2
       (.I0(spi_mmio_fsm_state__0[2]),
        .I1(spi_mmio_fsm_state__0[1]),
        .I2(spi_sr_in_buf_ready_i_4_n_0),
        .I3(spi_mmio_en_reg_n_0),
        .I4(s_axi_full_rvalid_reg_0),
        .I5(spi_mmio_fsm_state__0[0]),
        .O(spi_sr_in_buf_ready_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    spi_sr_in_buf_ready_i_3
       (.I0(s_axi_lite_rvalid_reg_0),
        .I1(s_axi_lite_arvalid),
        .I2(s_axi_lite_araddr[0]),
        .I3(s_axi_lite_araddr[1]),
        .I4(s_axi_lite_araddr[2]),
        .O(spi_sr_in_buf_ready_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    spi_sr_in_buf_ready_i_4
       (.I0(spi_sr_in_buf_valid_reg_n_0),
        .I1(spi_sr_in_buf_ready_reg_n_0),
        .O(spi_sr_in_buf_ready_i_4_n_0));
  FDRE spi_sr_in_buf_ready_reg
       (.C(aclk),
        .CE(1'b1),
        .D(spi_sr_in_buf_ready_i_1_n_0),
        .Q(spi_sr_in_buf_ready_reg_n_0),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_sr_in_buf_reg[0] 
       (.C(aclk),
        .CE(spi_sr_in_buf),
        .D(spi_sr_in_buf1_in[0]),
        .Q(data4[0]),
        .R(\spi_io_o[0]_i_1_n_0 ));
  FDRE \spi_sr_in_buf_reg[1] 
       (.C(aclk),
        .CE(spi_sr_in_buf),
        .D(spi_sr_in_buf1_in[1]),
        .Q(data4[1]),
        .R(\spi_io_o[0]_i_1_n_0 ));
  FDRE \spi_sr_in_buf_reg[2] 
       (.C(aclk),
        .CE(spi_sr_in_buf),
        .D(spi_sr_in_buf1_in[2]),
        .Q(data4[2]),
        .R(\spi_io_o[0]_i_1_n_0 ));
  FDRE \spi_sr_in_buf_reg[3] 
       (.C(aclk),
        .CE(spi_sr_in_buf),
        .D(spi_sr_in_buf1_in[3]),
        .Q(data4[3]),
        .R(\spi_io_o[0]_i_1_n_0 ));
  FDRE \spi_sr_in_buf_reg[4] 
       (.C(aclk),
        .CE(spi_sr_in_buf),
        .D(spi_sr_in_buf1_in[4]),
        .Q(data4[4]),
        .R(\spi_io_o[0]_i_1_n_0 ));
  FDRE \spi_sr_in_buf_reg[5] 
       (.C(aclk),
        .CE(spi_sr_in_buf),
        .D(spi_sr_in_buf1_in[5]),
        .Q(data4[5]),
        .R(\spi_io_o[0]_i_1_n_0 ));
  FDRE \spi_sr_in_buf_reg[6] 
       (.C(aclk),
        .CE(spi_sr_in_buf),
        .D(spi_sr_in_buf1_in[6]),
        .Q(data4[6]),
        .R(\spi_io_o[0]_i_1_n_0 ));
  FDRE \spi_sr_in_buf_reg[7] 
       (.C(aclk),
        .CE(spi_sr_in_buf),
        .D(spi_sr_in_buf1_in[7]),
        .Q(data4[7]),
        .R(\spi_io_o[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h4500EFAA)) 
    spi_sr_in_buf_valid_i_1
       (.I0(spi_sr_in_buf_valid_reg_n_0),
        .I1(spi_dir_reg_n_0),
        .I2(\spi_io_o[1]_i_3_n_0 ),
        .I3(\spi_sr_in_buf[7]_i_3_n_0 ),
        .I4(spi_sr_in_buf_valid_i_2_n_0),
        .O(spi_sr_in_buf_valid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h88888880)) 
    spi_sr_in_buf_valid_i_2
       (.I0(spi_sr_in_buf_valid_reg_n_0),
        .I1(spi_sr_in_buf_ready_reg_n_0),
        .I2(\FSM_onehot_spi_fsm_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_spi_fsm_state_reg_n_0_[1] ),
        .I4(\FSM_onehot_spi_fsm_state_reg_n_0_[0] ),
        .O(spi_sr_in_buf_valid_i_2_n_0));
  FDRE spi_sr_in_buf_valid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(spi_sr_in_buf_valid_i_1_n_0),
        .Q(spi_sr_in_buf_valid_reg_n_0),
        .R(\spi_io_o[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF000F044F044)) 
    \spi_sr_out_buf[0]_i_1 
       (.I0(\spi_sr_out_buf[0]_i_2_n_0 ),
        .I1(spi_en),
        .I2(\spi_sr_out_buf[0]_i_3_n_0 ),
        .I3(\spi_mmio_addr_rem[1]_i_2_n_0 ),
        .I4(\spi_mmio_mode_bits_reg_n_0_[0] ),
        .I5(\spi_sr_out_buf[7]_i_9_n_0 ),
        .O(spi_sr_out_buf[0]));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \spi_sr_out_buf[0]_i_2 
       (.I0(\spi_sr_out_buf[7]_i_4_n_0 ),
        .I1(spi_sr_out_buf_valid_reg_n_0),
        .I2(s_axi_lite_wdata[0]),
        .I3(s_axi_lite_awready),
        .I4(spi_mmio_en_reg_n_0),
        .I5(\spi_sr_out_buf[7]_i_6_n_0 ),
        .O(\spi_sr_out_buf[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spi_sr_out_buf[0]_i_3 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[8] ),
        .I1(\spi_mmio_addr_rem_reg_n_0_[0] ),
        .I2(\s_axi_full_araddr_q_reg_n_0_[16] ),
        .I3(\spi_mmio_addr_rem_reg_n_0_[1] ),
        .I4(\s_axi_full_araddr_q_reg_n_0_[0] ),
        .O(\spi_sr_out_buf[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF000F044F044)) 
    \spi_sr_out_buf[1]_i_1 
       (.I0(\spi_sr_out_buf[1]_i_2_n_0 ),
        .I1(spi_en),
        .I2(\spi_sr_out_buf[1]_i_3_n_0 ),
        .I3(\spi_mmio_addr_rem[1]_i_2_n_0 ),
        .I4(\spi_mmio_mode_bits_reg_n_0_[1] ),
        .I5(\spi_sr_out_buf[7]_i_9_n_0 ),
        .O(spi_sr_out_buf[1]));
  LUT6 #(
    .INIT(64'h0000000008000808)) 
    \spi_sr_out_buf[1]_i_2 
       (.I0(\spi_sr_out_buf[7]_i_10_n_0 ),
        .I1(s_axi_lite_awready),
        .I2(spi_mmio_en_reg_n_0),
        .I3(spi_sr_out_buf_valid_reg_n_0),
        .I4(s_axi_lite_wdata[1]),
        .I5(\spi_sr_out_buf[7]_i_4_n_0 ),
        .O(\spi_sr_out_buf[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spi_sr_out_buf[1]_i_3 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[9] ),
        .I1(\spi_mmio_addr_rem_reg_n_0_[0] ),
        .I2(\s_axi_full_araddr_q_reg_n_0_[17] ),
        .I3(\spi_mmio_addr_rem_reg_n_0_[1] ),
        .I4(\s_axi_full_araddr_q_reg_n_0_[1] ),
        .O(\spi_sr_out_buf[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF000F044F044)) 
    \spi_sr_out_buf[2]_i_1 
       (.I0(\spi_sr_out_buf[2]_i_2_n_0 ),
        .I1(spi_en),
        .I2(\spi_sr_out_buf[2]_i_3_n_0 ),
        .I3(\spi_mmio_addr_rem[1]_i_2_n_0 ),
        .I4(\spi_mmio_mode_bits_reg_n_0_[2] ),
        .I5(\spi_sr_out_buf[7]_i_9_n_0 ),
        .O(spi_sr_out_buf[2]));
  LUT6 #(
    .INIT(64'h0000000008000808)) 
    \spi_sr_out_buf[2]_i_2 
       (.I0(\spi_sr_out_buf[7]_i_10_n_0 ),
        .I1(s_axi_lite_awready),
        .I2(spi_mmio_en_reg_n_0),
        .I3(spi_sr_out_buf_valid_reg_n_0),
        .I4(s_axi_lite_wdata[2]),
        .I5(\spi_sr_out_buf[7]_i_4_n_0 ),
        .O(\spi_sr_out_buf[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spi_sr_out_buf[2]_i_3 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[10] ),
        .I1(\spi_mmio_addr_rem_reg_n_0_[0] ),
        .I2(\s_axi_full_araddr_q_reg_n_0_[18] ),
        .I3(\spi_mmio_addr_rem_reg_n_0_[1] ),
        .I4(\s_axi_full_araddr_q_reg_n_0_[2] ),
        .O(\spi_sr_out_buf[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF000F044F044)) 
    \spi_sr_out_buf[3]_i_1 
       (.I0(\spi_sr_out_buf[3]_i_2_n_0 ),
        .I1(spi_en),
        .I2(\spi_sr_out_buf[3]_i_3_n_0 ),
        .I3(\spi_mmio_addr_rem[1]_i_2_n_0 ),
        .I4(\spi_mmio_mode_bits_reg_n_0_[3] ),
        .I5(\spi_sr_out_buf[7]_i_9_n_0 ),
        .O(spi_sr_out_buf[3]));
  LUT6 #(
    .INIT(64'h0000000008000808)) 
    \spi_sr_out_buf[3]_i_2 
       (.I0(\spi_sr_out_buf[7]_i_10_n_0 ),
        .I1(s_axi_lite_awready),
        .I2(spi_mmio_en_reg_n_0),
        .I3(spi_sr_out_buf_valid_reg_n_0),
        .I4(s_axi_lite_wdata[3]),
        .I5(\spi_sr_out_buf[7]_i_4_n_0 ),
        .O(\spi_sr_out_buf[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spi_sr_out_buf[3]_i_3 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[11] ),
        .I1(\spi_mmio_addr_rem_reg_n_0_[0] ),
        .I2(\s_axi_full_araddr_q_reg_n_0_[19] ),
        .I3(\spi_mmio_addr_rem_reg_n_0_[1] ),
        .I4(\s_axi_full_araddr_q_reg_n_0_[3] ),
        .O(\spi_sr_out_buf[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF000F044F044)) 
    \spi_sr_out_buf[4]_i_1 
       (.I0(\spi_sr_out_buf[4]_i_2_n_0 ),
        .I1(spi_en),
        .I2(\spi_sr_out_buf[4]_i_3_n_0 ),
        .I3(\spi_mmio_addr_rem[1]_i_2_n_0 ),
        .I4(\spi_mmio_mode_bits_reg_n_0_[4] ),
        .I5(\spi_sr_out_buf[7]_i_9_n_0 ),
        .O(spi_sr_out_buf[4]));
  LUT6 #(
    .INIT(64'h0000000008000808)) 
    \spi_sr_out_buf[4]_i_2 
       (.I0(\spi_sr_out_buf[7]_i_10_n_0 ),
        .I1(s_axi_lite_awready),
        .I2(spi_mmio_en_reg_n_0),
        .I3(spi_sr_out_buf_valid_reg_n_0),
        .I4(s_axi_lite_wdata[4]),
        .I5(\spi_sr_out_buf[7]_i_4_n_0 ),
        .O(\spi_sr_out_buf[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spi_sr_out_buf[4]_i_3 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[12] ),
        .I1(\spi_mmio_addr_rem_reg_n_0_[0] ),
        .I2(\s_axi_full_araddr_q_reg_n_0_[20] ),
        .I3(\spi_mmio_addr_rem_reg_n_0_[1] ),
        .I4(\s_axi_full_araddr_q_reg_n_0_[4] ),
        .O(\spi_sr_out_buf[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF000F044F044)) 
    \spi_sr_out_buf[5]_i_1 
       (.I0(\spi_sr_out_buf[5]_i_2_n_0 ),
        .I1(spi_en),
        .I2(\spi_sr_out_buf[5]_i_3_n_0 ),
        .I3(\spi_mmio_addr_rem[1]_i_2_n_0 ),
        .I4(\spi_mmio_mode_bits_reg_n_0_[5] ),
        .I5(\spi_sr_out_buf[7]_i_9_n_0 ),
        .O(spi_sr_out_buf[5]));
  LUT6 #(
    .INIT(64'h0000000008000808)) 
    \spi_sr_out_buf[5]_i_2 
       (.I0(\spi_sr_out_buf[7]_i_10_n_0 ),
        .I1(s_axi_lite_awready),
        .I2(spi_mmio_en_reg_n_0),
        .I3(spi_sr_out_buf_valid_reg_n_0),
        .I4(s_axi_lite_wdata[5]),
        .I5(\spi_sr_out_buf[7]_i_4_n_0 ),
        .O(\spi_sr_out_buf[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spi_sr_out_buf[5]_i_3 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[13] ),
        .I1(\spi_mmio_addr_rem_reg_n_0_[0] ),
        .I2(\s_axi_full_araddr_q_reg_n_0_[21] ),
        .I3(\spi_mmio_addr_rem_reg_n_0_[1] ),
        .I4(\s_axi_full_araddr_q_reg_n_0_[5] ),
        .O(\spi_sr_out_buf[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF000F044F044)) 
    \spi_sr_out_buf[6]_i_1 
       (.I0(\spi_sr_out_buf[6]_i_2_n_0 ),
        .I1(spi_en),
        .I2(\spi_sr_out_buf[6]_i_3_n_0 ),
        .I3(\spi_mmio_addr_rem[1]_i_2_n_0 ),
        .I4(\spi_mmio_mode_bits_reg_n_0_[6] ),
        .I5(\spi_sr_out_buf[7]_i_9_n_0 ),
        .O(spi_sr_out_buf[6]));
  LUT6 #(
    .INIT(64'h0000000008000808)) 
    \spi_sr_out_buf[6]_i_2 
       (.I0(\spi_sr_out_buf[7]_i_10_n_0 ),
        .I1(s_axi_lite_awready),
        .I2(spi_mmio_en_reg_n_0),
        .I3(spi_sr_out_buf_valid_reg_n_0),
        .I4(s_axi_lite_wdata[6]),
        .I5(\spi_sr_out_buf[7]_i_4_n_0 ),
        .O(\spi_sr_out_buf[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spi_sr_out_buf[6]_i_3 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[14] ),
        .I1(\spi_mmio_addr_rem_reg_n_0_[0] ),
        .I2(\s_axi_full_araddr_q_reg_n_0_[22] ),
        .I3(\spi_mmio_addr_rem_reg_n_0_[1] ),
        .I4(\s_axi_full_araddr_q_reg_n_0_[6] ),
        .O(\spi_sr_out_buf[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5555575555555555)) 
    \spi_sr_out_buf[7]_i_1 
       (.I0(\spi_sr_out_buf[7]_i_3_n_0 ),
        .I1(spi_sr_out_buf_valid_reg_n_0),
        .I2(\spi_sr_out_buf[7]_i_4_n_0 ),
        .I3(spi_en),
        .I4(\spi_sr_out_buf[7]_i_5_n_0 ),
        .I5(\spi_sr_out_buf[7]_i_6_n_0 ),
        .O(\spi_sr_out_buf[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000400040004000)) 
    \spi_sr_out_buf[7]_i_10 
       (.I0(s_axi_lite_wdata[9]),
        .I1(s_axi_lite_wdata[8]),
        .I2(s_axi_lite_wstrb[1]),
        .I3(s_axi_lite_wstrb[0]),
        .I4(spi_en),
        .I5(spi_sr_out_buf_valid_reg_n_0),
        .O(\spi_sr_out_buf[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF000F044F044)) 
    \spi_sr_out_buf[7]_i_2 
       (.I0(\spi_sr_out_buf[7]_i_7_n_0 ),
        .I1(spi_en),
        .I2(\spi_sr_out_buf[7]_i_8_n_0 ),
        .I3(\spi_mmio_addr_rem[1]_i_2_n_0 ),
        .I4(\spi_mmio_mode_bits_reg_n_0_[7] ),
        .I5(\spi_sr_out_buf[7]_i_9_n_0 ),
        .O(spi_sr_out_buf[7]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hAAAAAA82)) 
    \spi_sr_out_buf[7]_i_3 
       (.I0(spi_en),
        .I1(spi_mmio_fsm_state__0[0]),
        .I2(spi_mmio_fsm_state__0[1]),
        .I3(spi_mmio_fsm_state__0[2]),
        .I4(spi_sr_out_buf_valid_reg_n_0),
        .O(\spi_sr_out_buf[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \spi_sr_out_buf[7]_i_4 
       (.I0(s_axi_lite_awaddr[1]),
        .I1(s_axi_lite_awaddr[2]),
        .I2(s_axi_lite_awaddr[0]),
        .O(\spi_sr_out_buf[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \spi_sr_out_buf[7]_i_5 
       (.I0(spi_mmio_en_reg_n_0),
        .I1(s_axi_lite_awready),
        .O(\spi_sr_out_buf[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \spi_sr_out_buf[7]_i_6 
       (.I0(s_axi_lite_wstrb[0]),
        .I1(s_axi_lite_wstrb[1]),
        .I2(s_axi_lite_wdata[8]),
        .I3(s_axi_lite_wdata[9]),
        .O(\spi_sr_out_buf[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000008000808)) 
    \spi_sr_out_buf[7]_i_7 
       (.I0(\spi_sr_out_buf[7]_i_10_n_0 ),
        .I1(s_axi_lite_awready),
        .I2(spi_mmio_en_reg_n_0),
        .I3(spi_sr_out_buf_valid_reg_n_0),
        .I4(s_axi_lite_wdata[7]),
        .I5(\spi_sr_out_buf[7]_i_4_n_0 ),
        .O(\spi_sr_out_buf[7]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spi_sr_out_buf[7]_i_8 
       (.I0(\s_axi_full_araddr_q_reg_n_0_[15] ),
        .I1(\spi_mmio_addr_rem_reg_n_0_[0] ),
        .I2(\s_axi_full_araddr_q_reg_n_0_[23] ),
        .I3(\spi_mmio_addr_rem_reg_n_0_[1] ),
        .I4(\s_axi_full_araddr_q_reg_n_0_[7] ),
        .O(\spi_sr_out_buf[7]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \spi_sr_out_buf[7]_i_9 
       (.I0(spi_mmio_fsm_state__0[0]),
        .I1(spi_mmio_fsm_state__0[1]),
        .I2(spi_mmio_fsm_state__0[2]),
        .I3(spi_sr_out_buf_valid_reg_n_0),
        .O(\spi_sr_out_buf[7]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h5557545433330000)) 
    spi_sr_out_buf_ready_i_1
       (.I0(\spi_io_mode_q[2]_i_2_n_0 ),
        .I1(spi_sr_out_buf_ready_i_2_n_0),
        .I2(\FSM_onehot_spi_fsm_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_spi_fsm_state_reg_n_0_[1] ),
        .I4(spi_sr_out_buf_ready_reg_n_0),
        .I5(spi_sr_out_buf_valid_reg_n_0),
        .O(spi_sr_out_buf_ready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h88008808)) 
    spi_sr_out_buf_ready_i_2
       (.I0(\FSM_onehot_spi_fsm_state_reg_n_0_[2] ),
        .I1(spi_sr_out_buf_valid_reg_n_0),
        .I2(\spi_io_mode_q[2]_i_3_n_0 ),
        .I3(spi_sr_out_buf_ready_reg_n_0),
        .I4(\FSM_onehot_spi_fsm_state[2]_i_3_n_0 ),
        .O(spi_sr_out_buf_ready_i_2_n_0));
  FDRE spi_sr_out_buf_ready_reg
       (.C(aclk),
        .CE(1'b1),
        .D(spi_sr_out_buf_ready_i_1_n_0),
        .Q(spi_sr_out_buf_ready_reg_n_0),
        .R(\spi_io_o[0]_i_1_n_0 ));
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
    .INIT(64'hFCFEFEFEFCFF0000)) 
    spi_sr_out_buf_valid_i_1
       (.I0(spi_en),
        .I1(\spi_sr_out_buf[7]_i_9_n_0 ),
        .I2(\spi_mmio_addr_rem[1]_i_2_n_0 ),
        .I3(spi_sr_out_buf_ready_reg_n_0),
        .I4(spi_sr_out_buf_valid_reg_n_0),
        .I5(\spi_sr_out_buf[7]_i_1_n_0 ),
        .O(spi_sr_out_buf_valid_i_1_n_0));
  FDRE spi_sr_out_buf_valid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(spi_sr_out_buf_valid_i_1_n_0),
        .Q(spi_sr_out_buf_valid_reg_n_0),
        .R(s_axi_lite_awready_i_1_n_0));
  FDRE \spi_sr_reg[0] 
       (.C(aclk),
        .CE(\spi_sr_bit_cnt[4]_i_1_n_0 ),
        .D(\spi_sr[0]_i_1_n_0 ),
        .Q(\spi_sr_reg_n_0_[0] ),
        .R(\spi_io_o[0]_i_1_n_0 ));
  FDRE \spi_sr_reg[1] 
       (.C(aclk),
        .CE(\spi_sr_bit_cnt[4]_i_1_n_0 ),
        .D(\spi_sr[1]_i_1_n_0 ),
        .Q(\spi_sr_reg_n_0_[1] ),
        .R(\spi_io_o[0]_i_1_n_0 ));
  FDRE \spi_sr_reg[2] 
       (.C(aclk),
        .CE(\spi_sr_bit_cnt[4]_i_1_n_0 ),
        .D(\spi_sr[2]_i_1_n_0 ),
        .Q(\spi_sr_reg_n_0_[2] ),
        .R(\spi_io_o[0]_i_1_n_0 ));
  FDRE \spi_sr_reg[3] 
       (.C(aclk),
        .CE(\spi_sr_bit_cnt[4]_i_1_n_0 ),
        .D(\spi_sr[3]_i_1_n_0 ),
        .Q(\spi_sr_reg_n_0_[3] ),
        .R(\spi_io_o[0]_i_1_n_0 ));
  FDRE \spi_sr_reg[4] 
       (.C(aclk),
        .CE(\spi_sr_bit_cnt[4]_i_1_n_0 ),
        .D(\spi_sr[4]_i_1_n_0 ),
        .Q(\spi_sr_reg_n_0_[4] ),
        .R(\spi_io_o[0]_i_1_n_0 ));
  FDRE \spi_sr_reg[5] 
       (.C(aclk),
        .CE(\spi_sr_bit_cnt[4]_i_1_n_0 ),
        .D(\spi_sr[5]_i_1_n_0 ),
        .Q(\spi_sr_reg_n_0_[5] ),
        .R(\spi_io_o[0]_i_1_n_0 ));
  FDRE \spi_sr_reg[6] 
       (.C(aclk),
        .CE(\spi_sr_bit_cnt[4]_i_1_n_0 ),
        .D(\spi_sr[6]_i_1_n_0 ),
        .Q(\spi_sr_reg_n_0_[6] ),
        .R(\spi_io_o[0]_i_1_n_0 ));
  FDRE \spi_sr_reg[7] 
       (.C(aclk),
        .CE(\spi_sr_bit_cnt[4]_i_1_n_0 ),
        .D(\spi_sr[7]_i_1_n_0 ),
        .Q(p_2_in),
        .R(\spi_io_o[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAABFFFAAAA8000)) 
    \spi_ss_o[0]_i_1 
       (.I0(\spi_ss_o[0]_i_2_n_0 ),
        .I1(s_axi_lite_awaddr[1]),
        .I2(s_axi_lite_awaddr[2]),
        .I3(\spi_ss_o[0]_i_3_n_0 ),
        .I4(\spi_ss_o[0]_i_4_n_0 ),
        .I5(spi_ss_o),
        .O(\spi_ss_o[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0CCCECCCCCCCECCC)) 
    \spi_ss_o[0]_i_2 
       (.I0(\FSM_onehot_spi_fsm_state_reg_n_0_[0] ),
        .I1(s_axi_lite_wdata[0]),
        .I2(spi_mmio_fsm_state__0[1]),
        .I3(spi_mmio_fsm_state__0[2]),
        .I4(spi_mmio_fsm_state__0[0]),
        .I5(\spi_ss_o[0]_i_5_n_0 ),
        .O(\spi_ss_o[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \spi_ss_o[0]_i_3 
       (.I0(s_axi_lite_awaddr[0]),
        .I1(s_axi_lite_wstrb[0]),
        .I2(spi_mmio_en_reg_n_0),
        .I3(s_axi_lite_awready),
        .O(\spi_ss_o[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00005575)) 
    \spi_ss_o[0]_i_4 
       (.I0(spi_mmio_fsm_state__0[0]),
        .I1(\spi_mmio_cs_rem_reg_n_0_[6] ),
        .I2(\spi_mmio_cs_rem[7]_i_3_n_0 ),
        .I3(\spi_mmio_cs_rem_reg_n_0_[7] ),
        .I4(\spi_ss_o[0]_i_6_n_0 ),
        .O(\spi_ss_o[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \spi_ss_o[0]_i_5 
       (.I0(\spi_mmio_cs_rem_reg_n_0_[6] ),
        .I1(\spi_mmio_cs_rem[7]_i_3_n_0 ),
        .I2(\spi_mmio_cs_rem_reg_n_0_[7] ),
        .O(\spi_ss_o[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h57FF)) 
    \spi_ss_o[0]_i_6 
       (.I0(spi_mmio_fsm_state__0[1]),
        .I1(\FSM_onehot_spi_fsm_state_reg_n_0_[0] ),
        .I2(spi_mmio_fsm_state__0[0]),
        .I3(spi_mmio_fsm_state__0[2]),
        .O(\spi_ss_o[0]_i_6_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi_rtl:1.0 spi SS_O" *) 
  FDSE \spi_ss_o_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\spi_ss_o[0]_i_1_n_0 ),
        .Q(spi_ss_o),
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
