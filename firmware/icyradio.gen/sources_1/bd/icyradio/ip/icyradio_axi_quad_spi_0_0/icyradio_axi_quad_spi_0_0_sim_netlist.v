// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Mon Jan 31 13:10:25 2022
// Host        : xubuntu-dev running 64-bit Ubuntu 20.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/joao/icyradio/firmware/icyradio.gen/sources_1/bd/icyradio/ip/icyradio_axi_quad_spi_0_0/icyradio_axi_quad_spi_0_0_sim_netlist.v
// Design      : icyradio_axi_quad_spi_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "icyradio_axi_quad_spi_0_0,axi_quad_spi,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "axi_quad_spi,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module icyradio_axi_quad_spi_0_0
   (ext_spi_clk,
    s_axi_aclk,
    s_axi_aresetn,
    s_axi4_aclk,
    s_axi4_aresetn,
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
    s_axi4_awaddr,
    s_axi4_awlen,
    s_axi4_awsize,
    s_axi4_awburst,
    s_axi4_awlock,
    s_axi4_awcache,
    s_axi4_awprot,
    s_axi4_awvalid,
    s_axi4_awready,
    s_axi4_wdata,
    s_axi4_wstrb,
    s_axi4_wlast,
    s_axi4_wvalid,
    s_axi4_wready,
    s_axi4_bresp,
    s_axi4_bvalid,
    s_axi4_bready,
    s_axi4_araddr,
    s_axi4_arlen,
    s_axi4_arsize,
    s_axi4_arburst,
    s_axi4_arlock,
    s_axi4_arcache,
    s_axi4_arprot,
    s_axi4_arvalid,
    s_axi4_arready,
    s_axi4_rdata,
    s_axi4_rresp,
    s_axi4_rlast,
    s_axi4_rvalid,
    s_axi4_rready,
    io0_i,
    io0_o,
    io0_t,
    io1_i,
    io1_o,
    io1_t,
    io2_i,
    io2_o,
    io2_t,
    io3_i,
    io3_o,
    io3_t,
    ss_i,
    ss_o,
    ss_t,
    cfgclk,
    cfgmclk,
    eos,
    preq,
    clk,
    gsr,
    gts,
    keyclearb,
    usrcclkts,
    usrdoneo,
    usrdonets,
    ip2intc_irpt);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 spi_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME spi_clk, ASSOCIATED_BUSIF SPI_0, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN icyradio_axi_pcie_0_0_axi_aclk_out, INSERT_VIP 0" *) input ext_spi_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 lite_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME lite_clk, ASSOCIATED_BUSIF AXI_LITE, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN icyradio_axi_pcie_0_0_axi_aclk_out, INSERT_VIP 0" *) input s_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 lite_reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME lite_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 full_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME full_clk, ASSOCIATED_BUSIF AXI_FULL, ASSOCIATED_RESET s_axi4_aresetn, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN icyradio_axi_pcie_0_0_axi_aclk_out, INSERT_VIP 0" *) input s_axi4_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 full_reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME full_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi4_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_LITE AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME AXI_LITE, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 125000000, ID_WIDTH 0, ADDR_WIDTH 7, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN icyradio_axi_pcie_0_0_axi_aclk_out, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [6:0]s_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_LITE AWVALID" *) input s_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_LITE AWREADY" *) output s_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_LITE WDATA" *) input [31:0]s_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_LITE WSTRB" *) input [3:0]s_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_LITE WVALID" *) input s_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_LITE WREADY" *) output s_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_LITE BRESP" *) output [1:0]s_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_LITE BVALID" *) output s_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_LITE BREADY" *) input s_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_LITE ARADDR" *) input [6:0]s_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_LITE ARVALID" *) input s_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_LITE ARREADY" *) output s_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_LITE RDATA" *) output [31:0]s_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_LITE RRESP" *) output [1:0]s_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_LITE RVALID" *) output s_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_LITE RREADY" *) input s_axi_rready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_FULL AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME AXI_FULL, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 125000000, ID_WIDTH 0, ADDR_WIDTH 24, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN icyradio_axi_pcie_0_0_axi_aclk_out, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [23:0]s_axi4_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_FULL AWLEN" *) input [7:0]s_axi4_awlen;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_FULL AWSIZE" *) input [2:0]s_axi4_awsize;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_FULL AWBURST" *) input [1:0]s_axi4_awburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_FULL AWLOCK" *) input s_axi4_awlock;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_FULL AWCACHE" *) input [3:0]s_axi4_awcache;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_FULL AWPROT" *) input [2:0]s_axi4_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_FULL AWVALID" *) input s_axi4_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_FULL AWREADY" *) output s_axi4_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_FULL WDATA" *) input [31:0]s_axi4_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_FULL WSTRB" *) input [3:0]s_axi4_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_FULL WLAST" *) input s_axi4_wlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_FULL WVALID" *) input s_axi4_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_FULL WREADY" *) output s_axi4_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_FULL BRESP" *) output [1:0]s_axi4_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_FULL BVALID" *) output s_axi4_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_FULL BREADY" *) input s_axi4_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_FULL ARADDR" *) input [23:0]s_axi4_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_FULL ARLEN" *) input [7:0]s_axi4_arlen;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_FULL ARSIZE" *) input [2:0]s_axi4_arsize;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_FULL ARBURST" *) input [1:0]s_axi4_arburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_FULL ARLOCK" *) input s_axi4_arlock;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_FULL ARCACHE" *) input [3:0]s_axi4_arcache;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_FULL ARPROT" *) input [2:0]s_axi4_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_FULL ARVALID" *) input s_axi4_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_FULL ARREADY" *) output s_axi4_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_FULL RDATA" *) output [31:0]s_axi4_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_FULL RRESP" *) output [1:0]s_axi4_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_FULL RLAST" *) output s_axi4_rlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_FULL RVALID" *) output s_axi4_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_FULL RREADY" *) input s_axi4_rready;
  (* x_interface_info = "xilinx.com:interface:spi:1.0 SPI_0 IO0_I" *) (* x_interface_parameter = "XIL_INTERFACENAME SPI_0, BOARD.ASSOCIATED_PARAM QSPI_BOARD_INTERFACE" *) input io0_i;
  (* x_interface_info = "xilinx.com:interface:spi:1.0 SPI_0 IO0_O" *) output io0_o;
  (* x_interface_info = "xilinx.com:interface:spi:1.0 SPI_0 IO0_T" *) output io0_t;
  (* x_interface_info = "xilinx.com:interface:spi:1.0 SPI_0 IO1_I" *) input io1_i;
  (* x_interface_info = "xilinx.com:interface:spi:1.0 SPI_0 IO1_O" *) output io1_o;
  (* x_interface_info = "xilinx.com:interface:spi:1.0 SPI_0 IO1_T" *) output io1_t;
  (* x_interface_info = "xilinx.com:interface:spi:1.0 SPI_0 IO2_I" *) input io2_i;
  (* x_interface_info = "xilinx.com:interface:spi:1.0 SPI_0 IO2_O" *) output io2_o;
  (* x_interface_info = "xilinx.com:interface:spi:1.0 SPI_0 IO2_T" *) output io2_t;
  (* x_interface_info = "xilinx.com:interface:spi:1.0 SPI_0 IO3_I" *) input io3_i;
  (* x_interface_info = "xilinx.com:interface:spi:1.0 SPI_0 IO3_O" *) output io3_o;
  (* x_interface_info = "xilinx.com:interface:spi:1.0 SPI_0 IO3_T" *) output io3_t;
  (* x_interface_info = "xilinx.com:interface:spi:1.0 SPI_0 SS_I" *) input [0:0]ss_i;
  (* x_interface_info = "xilinx.com:interface:spi:1.0 SPI_0 SS_O" *) output [0:0]ss_o;
  (* x_interface_info = "xilinx.com:interface:spi:1.0 SPI_0 SS_T" *) output ss_t;
  (* x_interface_info = "xilinx.com:interface:startup:1.0 STARTUP_IO_S cfgclk" *) output cfgclk;
  (* x_interface_info = "xilinx.com:interface:startup:1.0 STARTUP_IO_S cfgmclk" *) output cfgmclk;
  (* x_interface_info = "xilinx.com:interface:startup:1.0 STARTUP_IO_S eos" *) output eos;
  (* x_interface_info = "xilinx.com:interface:startup:1.0 STARTUP_IO_S preq" *) output preq;
  (* x_interface_info = "xilinx.com:interface:startup:1.0 STARTUP_IO_S clk" *) input clk;
  (* x_interface_info = "xilinx.com:interface:startup:1.0 STARTUP_IO_S gsr" *) input gsr;
  (* x_interface_info = "xilinx.com:interface:startup:1.0 STARTUP_IO_S gts" *) input gts;
  (* x_interface_info = "xilinx.com:interface:startup:1.0 STARTUP_IO_S keyclearb" *) input keyclearb;
  (* x_interface_info = "xilinx.com:interface:startup:1.0 STARTUP_IO_S usrclkts" *) input usrcclkts;
  (* x_interface_info = "xilinx.com:interface:startup:1.0 STARTUP_IO_S userdoneo" *) input usrdoneo;
  (* x_interface_info = "xilinx.com:interface:startup:1.0 STARTUP_IO_S usrdonets" *) input usrdonets;
  (* x_interface_info = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *) (* x_interface_parameter = "XIL_INTERFACENAME interrupt, SENSITIVITY EDGE_RISING, PortWidth 1" *) output ip2intc_irpt;

  wire \<const0> ;
  wire cfgclk;
  wire cfgmclk;
  wire clk;
  wire eos;
  wire ext_spi_clk;
  wire gsr;
  wire gts;
  wire io0_i;
  wire io0_o;
  wire io0_t;
  wire io1_i;
  wire io1_o;
  wire io1_t;
  wire io2_i;
  wire io2_o;
  wire io2_t;
  wire io3_i;
  wire io3_o;
  wire io3_t;
  wire keyclearb;
  wire preq;
  wire s_axi4_aclk;
  wire [23:0]s_axi4_araddr;
  wire [1:0]s_axi4_arburst;
  wire s_axi4_aresetn;
  wire [7:0]s_axi4_arlen;
  wire s_axi4_arready;
  wire [2:0]s_axi4_arsize;
  wire s_axi4_arvalid;
  wire [31:0]s_axi4_rdata;
  wire s_axi4_rlast;
  wire s_axi4_rready;
  wire [1:1]\^s_axi4_rresp ;
  wire s_axi4_rvalid;
  wire s_axi_aclk;
  wire [6:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [6:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [4:0]\^s_axi_rdata ;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire [0:0]ss_o;
  wire ss_t;
  wire usrcclkts;
  wire usrdoneo;
  wire usrdonets;
  wire NLW_U0_io0_1_o_UNCONNECTED;
  wire NLW_U0_io0_1_t_UNCONNECTED;
  wire NLW_U0_io1_1_o_UNCONNECTED;
  wire NLW_U0_io1_1_t_UNCONNECTED;
  wire NLW_U0_io2_1_o_UNCONNECTED;
  wire NLW_U0_io2_1_t_UNCONNECTED;
  wire NLW_U0_io3_1_o_UNCONNECTED;
  wire NLW_U0_io3_1_t_UNCONNECTED;
  wire NLW_U0_ip2intc_irpt_UNCONNECTED;
  wire NLW_U0_s_axi4_awready_UNCONNECTED;
  wire NLW_U0_s_axi4_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi4_wready_UNCONNECTED;
  wire NLW_U0_sck_o_UNCONNECTED;
  wire NLW_U0_sck_t_UNCONNECTED;
  wire NLW_U0_ss_1_o_UNCONNECTED;
  wire NLW_U0_ss_1_t_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi4_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi4_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi4_rid_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi4_rresp_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [31:2]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  assign ip2intc_irpt = \<const0> ;
  assign s_axi4_awready = \<const0> ;
  assign s_axi4_bresp[1] = \<const0> ;
  assign s_axi4_bresp[0] = \<const0> ;
  assign s_axi4_bvalid = \<const0> ;
  assign s_axi4_rresp[1] = \^s_axi4_rresp [1];
  assign s_axi4_rresp[0] = \<const0> ;
  assign s_axi4_wready = \<const0> ;
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
  assign s_axi_rdata[4:3] = \^s_axi_rdata [4:3];
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1:0] = \^s_axi_rdata [1:0];
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* Async_Clk = "0" *) 
  (* C_BYTE_LEVEL_INTERRUPT_EN = "0" *) 
  (* C_DUAL_QUAD_MODE = "0" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_FIFO_DEPTH = "16" *) 
  (* C_INSTANCE = "axi_quad_spi_inst" *) 
  (* C_LSB_STUP = "0" *) 
  (* C_NEW_SEQ_EN = "1" *) 
  (* C_NUM_SS_BITS = "1" *) 
  (* C_NUM_TRANSFER_BITS = "8" *) 
  (* C_SCK_RATIO = "2" *) 
  (* C_SELECT_XPM = "1" *) 
  (* C_SHARED_STARTUP = "1" *) 
  (* C_SPI_MEMORY = "1" *) 
  (* C_SPI_MEM_ADDR_BITS = "24" *) 
  (* C_SPI_MODE = "2" *) 
  (* C_SUB_FAMILY = "artix7" *) 
  (* C_S_AXI4_ADDR_WIDTH = "24" *) 
  (* C_S_AXI4_BASEADDR = "0" *) 
  (* C_S_AXI4_DATA_WIDTH = "32" *) 
  (* C_S_AXI4_HIGHADDR = "1048575" *) 
  (* C_S_AXI4_ID_WIDTH = "1" *) 
  (* C_S_AXI_ADDR_WIDTH = "7" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_TYPE_OF_AXI4_INTERFACE = "1" *) 
  (* C_UC_FAMILY = "0" *) 
  (* C_USE_STARTUP = "1" *) 
  (* C_USE_STARTUP_EXT = "0" *) 
  (* C_XIP_MODE = "1" *) 
  (* C_XIP_PERF_MODE = "0" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  icyradio_axi_quad_spi_0_0_axi_quad_spi U0
       (.cfgclk(cfgclk),
        .cfgmclk(cfgmclk),
        .clk(clk),
        .eos(eos),
        .ext_spi_clk(ext_spi_clk),
        .gsr(gsr),
        .gts(gts),
        .io0_1_i(1'b0),
        .io0_1_o(NLW_U0_io0_1_o_UNCONNECTED),
        .io0_1_t(NLW_U0_io0_1_t_UNCONNECTED),
        .io0_i(io0_i),
        .io0_o(io0_o),
        .io0_t(io0_t),
        .io1_1_i(1'b0),
        .io1_1_o(NLW_U0_io1_1_o_UNCONNECTED),
        .io1_1_t(NLW_U0_io1_1_t_UNCONNECTED),
        .io1_i(io1_i),
        .io1_o(io1_o),
        .io1_t(io1_t),
        .io2_1_i(1'b0),
        .io2_1_o(NLW_U0_io2_1_o_UNCONNECTED),
        .io2_1_t(NLW_U0_io2_1_t_UNCONNECTED),
        .io2_i(io2_i),
        .io2_o(io2_o),
        .io2_t(io2_t),
        .io3_1_i(1'b0),
        .io3_1_o(NLW_U0_io3_1_o_UNCONNECTED),
        .io3_1_t(NLW_U0_io3_1_t_UNCONNECTED),
        .io3_i(io3_i),
        .io3_o(io3_o),
        .io3_t(io3_t),
        .ip2intc_irpt(NLW_U0_ip2intc_irpt_UNCONNECTED),
        .keyclearb(keyclearb),
        .pack(1'b0),
        .preq(preq),
        .s_axi4_aclk(s_axi4_aclk),
        .s_axi4_araddr(s_axi4_araddr),
        .s_axi4_arburst(s_axi4_arburst),
        .s_axi4_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi4_aresetn(s_axi4_aresetn),
        .s_axi4_arid(1'b0),
        .s_axi4_arlen(s_axi4_arlen),
        .s_axi4_arlock(1'b0),
        .s_axi4_arprot({1'b0,1'b0,1'b0}),
        .s_axi4_arready(s_axi4_arready),
        .s_axi4_arsize({1'b0,s_axi4_arsize[1:0]}),
        .s_axi4_arvalid(s_axi4_arvalid),
        .s_axi4_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi4_awburst({1'b0,1'b0}),
        .s_axi4_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi4_awid(1'b0),
        .s_axi4_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi4_awlock(1'b0),
        .s_axi4_awprot({1'b0,1'b0,1'b0}),
        .s_axi4_awready(NLW_U0_s_axi4_awready_UNCONNECTED),
        .s_axi4_awsize({1'b0,1'b0,1'b0}),
        .s_axi4_awvalid(1'b0),
        .s_axi4_bid(NLW_U0_s_axi4_bid_UNCONNECTED[0]),
        .s_axi4_bready(1'b0),
        .s_axi4_bresp(NLW_U0_s_axi4_bresp_UNCONNECTED[1:0]),
        .s_axi4_bvalid(NLW_U0_s_axi4_bvalid_UNCONNECTED),
        .s_axi4_rdata(s_axi4_rdata),
        .s_axi4_rid(NLW_U0_s_axi4_rid_UNCONNECTED[0]),
        .s_axi4_rlast(s_axi4_rlast),
        .s_axi4_rready(s_axi4_rready),
        .s_axi4_rresp({\^s_axi4_rresp ,NLW_U0_s_axi4_rresp_UNCONNECTED[0]}),
        .s_axi4_rvalid(s_axi4_rvalid),
        .s_axi4_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi4_wlast(1'b0),
        .s_axi4_wready(NLW_U0_s_axi4_wready_UNCONNECTED),
        .s_axi4_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi4_wvalid(1'b0),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,s_axi_araddr[2],1'b0,1'b0}),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,s_axi_awaddr[2],1'b0,1'b0}),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata({NLW_U0_s_axi_rdata_UNCONNECTED[31:5],\^s_axi_rdata }),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_wdata[1:0]}),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(s_axi_wvalid),
        .sck_i(1'b0),
        .sck_o(NLW_U0_sck_o_UNCONNECTED),
        .sck_t(NLW_U0_sck_t_UNCONNECTED),
        .spisel(1'b1),
        .ss_1_i(1'b0),
        .ss_1_o(NLW_U0_ss_1_o_UNCONNECTED),
        .ss_1_t(NLW_U0_ss_1_t_UNCONNECTED),
        .ss_i(1'b0),
        .ss_o(ss_o),
        .ss_t(ss_t),
        .usrcclkts(usrcclkts),
        .usrdoneo(usrdoneo),
        .usrdonets(usrdonets));
endmodule

(* ORIG_REF_NAME = "address_decoder" *) 
module icyradio_axi_quad_spi_0_0_address_decoder
   (Bus_RNW_reg_reg_0,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ,
    ip2bus_rdack_core_reg_d20,
    ip2bus_rdack_core_reg_d10,
    ip2bus_wrack_core_reg0,
    ip2bus_wrack_core_reg_d10,
    D,
    \XIP_MODE_GEN.ip2Bus_RdAck_core_reg_d3_reg ,
    \XIP_MODE_GEN.ip2bus_wrack_core_reg_reg ,
    s_axi_aclk,
    ip2bus_rdack_core_reg_d1,
    ip2bus_wrack_core_reg_d1,
    Q,
    XIPCR_0_CPHA_int,
    XIPCR_1_CPOL_int,
    ip2Bus_RdAck_core_reg_d3,
    s_axi_arready,
    ip2bus_wrack_core_reg,
    s_axi_wready,
    s_axi_wready_0,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2 ,
    s_axi_aresetn,
    Bus_RNW_reg_reg_1);
  output Bus_RNW_reg_reg_0;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  output ip2bus_rdack_core_reg_d20;
  output ip2bus_rdack_core_reg_d10;
  output ip2bus_wrack_core_reg0;
  output ip2bus_wrack_core_reg_d10;
  output [3:0]D;
  output \XIP_MODE_GEN.ip2Bus_RdAck_core_reg_d3_reg ;
  output \XIP_MODE_GEN.ip2bus_wrack_core_reg_reg ;
  input s_axi_aclk;
  input ip2bus_rdack_core_reg_d1;
  input ip2bus_wrack_core_reg_d1;
  input [3:0]Q;
  input XIPCR_0_CPHA_int;
  input XIPCR_1_CPOL_int;
  input ip2Bus_RdAck_core_reg_d3;
  input s_axi_arready;
  input ip2bus_wrack_core_reg;
  input s_axi_wready;
  input [5:0]s_axi_wready_0;
  input \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ;
  input \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2 ;
  input s_axi_aresetn;
  input Bus_RNW_reg_reg_1;

  wire Bus_RNW_reg_i_1_n_0;
  wire Bus_RNW_reg_reg_0;
  wire Bus_RNW_reg_reg_1;
  wire [3:0]D;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  wire [3:0]Q;
  wire XIPCR_0_CPHA_int;
  wire XIPCR_1_CPOL_int;
  wire \XIP_MODE_GEN.ip2Bus_RdAck_core_reg_d3_reg ;
  wire \XIP_MODE_GEN.ip2bus_wrack_core_reg_reg ;
  wire eqOp__4;
  wire ip2Bus_RdAck_core_reg_d3;
  wire ip2bus_rdack_core_reg_d1;
  wire ip2bus_rdack_core_reg_d10;
  wire ip2bus_rdack_core_reg_d20;
  wire ip2bus_wrack_core_reg;
  wire ip2bus_wrack_core_reg0;
  wire ip2bus_wrack_core_reg_d1;
  wire ip2bus_wrack_core_reg_d10;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_wready;
  wire [5:0]s_axi_wready_0;

  LUT3 #(
    .INIT(8'hB8)) 
    Bus_RNW_reg_i_1
       (.I0(Bus_RNW_reg_reg_1),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ),
        .I2(Bus_RNW_reg_reg_0),
        .O(Bus_RNW_reg_i_1_n_0));
  FDRE Bus_RNW_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus_RNW_reg_i_1_n_0),
        .Q(Bus_RNW_reg_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000002E00)) 
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ),
        .I2(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2 ),
        .I3(s_axi_aresetn),
        .I4(\XIP_MODE_GEN.ip2Bus_RdAck_core_reg_d3_reg ),
        .I5(\XIP_MODE_GEN.ip2bus_wrack_core_reg_reg ),
        .O(\GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1_n_0 ),
        .Q(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h000000000000E200)) 
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ),
        .I2(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2 ),
        .I3(s_axi_aresetn),
        .I4(\XIP_MODE_GEN.ip2Bus_RdAck_core_reg_d3_reg ),
        .I5(\XIP_MODE_GEN.ip2bus_wrack_core_reg_reg ),
        .O(\GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1_n_0 ),
        .Q(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hF8008800)) 
    \XIP_MODE_GEN.ip2bus_data_int[0]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I1(XIPCR_0_CPHA_int),
        .I2(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(Q[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hF8008800)) 
    \XIP_MODE_GEN.ip2bus_data_int[1]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I1(XIPCR_1_CPOL_int),
        .I2(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(Q[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \XIP_MODE_GEN.ip2bus_data_int[3]_i_1 
       (.I0(Q[2]),
        .I1(Bus_RNW_reg_reg_0),
        .I2(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \XIP_MODE_GEN.ip2bus_data_int[4]_i_1 
       (.I0(Q[3]),
        .I1(Bus_RNW_reg_reg_0),
        .I2(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hC8)) 
    \XIP_MODE_GEN.ip2bus_rdack_core_reg_d1_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I1(Bus_RNW_reg_reg_0),
        .I2(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .O(ip2bus_rdack_core_reg_d10));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h00C8)) 
    \XIP_MODE_GEN.ip2bus_rdack_core_reg_d2_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I1(Bus_RNW_reg_reg_0),
        .I2(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I3(ip2bus_rdack_core_reg_d1),
        .O(ip2bus_rdack_core_reg_d20));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h32)) 
    \XIP_MODE_GEN.ip2bus_wrack_core_reg_d1_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I1(Bus_RNW_reg_reg_0),
        .I2(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .O(ip2bus_wrack_core_reg_d10));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0032)) 
    \XIP_MODE_GEN.ip2bus_wrack_core_reg_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I1(Bus_RNW_reg_reg_0),
        .I2(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I3(ip2bus_wrack_core_reg_d1),
        .O(ip2bus_wrack_core_reg0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    s_axi_arready_INST_0
       (.I0(ip2Bus_RdAck_core_reg_d3),
        .I1(s_axi_arready),
        .I2(eqOp__4),
        .O(\XIP_MODE_GEN.ip2Bus_RdAck_core_reg_d3_reg ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    s_axi_wready_INST_0
       (.I0(ip2bus_wrack_core_reg),
        .I1(s_axi_wready),
        .I2(eqOp__4),
        .O(\XIP_MODE_GEN.ip2bus_wrack_core_reg_reg ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    s_axi_wready_INST_0_i_1
       (.I0(s_axi_wready_0[5]),
        .I1(s_axi_wready_0[1]),
        .I2(s_axi_wready_0[3]),
        .I3(s_axi_wready_0[0]),
        .I4(s_axi_wready_0[2]),
        .I5(s_axi_wready_0[4]),
        .O(eqOp__4));
endmodule

(* ORIG_REF_NAME = "async_fifo_fg" *) 
module icyradio_axi_quad_spi_0_0_async_fifo_fg
   (full,
    wr_rst_busy,
    empty,
    \XIP_MODE_GEN.bus2ip_reset_ipif4_inverted_reg ,
    \XIP_NORMAL_MODE.s_axi_rvalid_ii_reg ,
    s_axi4_rready_0,
    E,
    s_axi4_rvalid,
    s_axi4_rdata,
    Rst_to_spi,
    ext_spi_clk,
    wr_en,
    Q,
    s_axi4_aclk,
    bus2ip_reset_ipif4_inverted,
    last_data_acked_reg,
    last_data_acked,
    s_axi4_rready,
    s_axi_rvalid_ii,
    s_axi_rvalid_ii0,
    s_axi4_arvalid,
    \XIP_NORMAL_MODE.s_axi_rvalid_ii_reg_0 ,
    s_axi4_rlast);
  output full;
  output wr_rst_busy;
  output empty;
  output \XIP_MODE_GEN.bus2ip_reset_ipif4_inverted_reg ;
  output \XIP_NORMAL_MODE.s_axi_rvalid_ii_reg ;
  output s_axi4_rready_0;
  output [0:0]E;
  output s_axi4_rvalid;
  output [31:0]s_axi4_rdata;
  input Rst_to_spi;
  input ext_spi_clk;
  input wr_en;
  input [31:0]Q;
  input s_axi4_aclk;
  input bus2ip_reset_ipif4_inverted;
  input last_data_acked_reg;
  input last_data_acked;
  input s_axi4_rready;
  input s_axi_rvalid_ii;
  input s_axi_rvalid_ii0;
  input s_axi4_arvalid;
  input \XIP_NORMAL_MODE.s_axi_rvalid_ii_reg_0 ;
  input s_axi4_rlast;

  wire [31:0]Data_From_Rx_FIFO;
  wire [0:0]E;
  wire [31:0]Q;
  wire Rst_to_spi;
  wire Rx_FIFO_rd_ack;
  wire \XIP_MODE_GEN.bus2ip_reset_ipif4_inverted_reg ;
  wire \XIP_NORMAL_MODE.s_axi_rvalid_ii_reg ;
  wire \XIP_NORMAL_MODE.s_axi_rvalid_ii_reg_0 ;
  wire bus2ip_reset_ipif4_inverted;
  wire down_cnt_en_rx;
  wire empty;
  wire ext_spi_clk;
  wire full;
  wire last_data_acked;
  wire last_data_acked_reg;
  wire s_axi4_aclk;
  wire s_axi4_arvalid;
  wire [31:0]s_axi4_rdata;
  wire s_axi4_rlast;
  wire s_axi4_rready;
  wire s_axi4_rready_0;
  wire s_axi4_rvalid;
  wire s_axi_rvalid_ii;
  wire s_axi_rvalid_ii0;
  wire wr_en;
  wire wr_rst_busy;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_10 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_11 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_2 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_3 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_4 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_46 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_47 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_48 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_49 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_5 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_50 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_51 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_54 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_6 ;
  wire \xpm_fifo_instance.xpm_fifo_async_inst_n_7 ;
  wire \NLW_xpm_fifo_instance.xpm_fifo_async_inst_dbiterr_UNCONNECTED ;
  wire \NLW_xpm_fifo_instance.xpm_fifo_async_inst_overflow_UNCONNECTED ;
  wire \NLW_xpm_fifo_instance.xpm_fifo_async_inst_prog_empty_UNCONNECTED ;
  wire \NLW_xpm_fifo_instance.xpm_fifo_async_inst_prog_full_UNCONNECTED ;
  wire \NLW_xpm_fifo_instance.xpm_fifo_async_inst_rd_rst_busy_UNCONNECTED ;
  wire \NLW_xpm_fifo_instance.xpm_fifo_async_inst_sbiterr_UNCONNECTED ;
  wire \NLW_xpm_fifo_instance.xpm_fifo_async_inst_underflow_UNCONNECTED ;

  LUT4 #(
    .INIT(16'hFFF8)) 
    \XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[7]_i_2 
       (.I0(\XIP_NORMAL_MODE.s_axi_rvalid_ii_reg_0 ),
        .I1(s_axi4_arvalid),
        .I2(s_axi_rvalid_ii0),
        .I3(s_axi4_rready_0),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h8808)) 
    \XIP_NORMAL_MODE.S_AXI4_RRESP_i_i_2 
       (.I0(s_axi4_rlast),
        .I1(s_axi4_rready),
        .I2(empty),
        .I3(s_axi_rvalid_ii),
        .O(s_axi4_rready_0));
  LUT6 #(
    .INIT(64'h0000000000CECECE)) 
    \XIP_NORMAL_MODE.s_axi_rvalid_ii_i_1 
       (.I0(s_axi_rvalid_ii),
        .I1(s_axi_rvalid_ii0),
        .I2(s_axi4_rready_0),
        .I3(s_axi4_arvalid),
        .I4(\XIP_NORMAL_MODE.s_axi_rvalid_ii_reg_0 ),
        .I5(bus2ip_reset_ipif4_inverted),
        .O(\XIP_NORMAL_MODE.s_axi_rvalid_ii_reg ));
  LUT5 #(
    .INIT(32'h00105510)) 
    last_data_acked_i_1
       (.I0(bus2ip_reset_ipif4_inverted),
        .I1(last_data_acked_reg),
        .I2(Rx_FIFO_rd_ack),
        .I3(last_data_acked),
        .I4(s_axi4_rready),
        .O(\XIP_MODE_GEN.bus2ip_reset_ipif4_inverted_reg ));
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi4_rdata[0]_INST_0 
       (.I0(Data_From_Rx_FIFO[0]),
        .I1(empty),
        .O(s_axi4_rdata[0]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi4_rdata[10]_INST_0 
       (.I0(Data_From_Rx_FIFO[10]),
        .I1(empty),
        .O(s_axi4_rdata[10]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi4_rdata[11]_INST_0 
       (.I0(Data_From_Rx_FIFO[11]),
        .I1(empty),
        .O(s_axi4_rdata[11]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi4_rdata[12]_INST_0 
       (.I0(Data_From_Rx_FIFO[12]),
        .I1(empty),
        .O(s_axi4_rdata[12]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi4_rdata[13]_INST_0 
       (.I0(Data_From_Rx_FIFO[13]),
        .I1(empty),
        .O(s_axi4_rdata[13]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi4_rdata[14]_INST_0 
       (.I0(Data_From_Rx_FIFO[14]),
        .I1(empty),
        .O(s_axi4_rdata[14]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi4_rdata[15]_INST_0 
       (.I0(Data_From_Rx_FIFO[15]),
        .I1(empty),
        .O(s_axi4_rdata[15]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi4_rdata[16]_INST_0 
       (.I0(Data_From_Rx_FIFO[16]),
        .I1(empty),
        .O(s_axi4_rdata[16]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi4_rdata[17]_INST_0 
       (.I0(Data_From_Rx_FIFO[17]),
        .I1(empty),
        .O(s_axi4_rdata[17]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi4_rdata[18]_INST_0 
       (.I0(Data_From_Rx_FIFO[18]),
        .I1(empty),
        .O(s_axi4_rdata[18]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi4_rdata[19]_INST_0 
       (.I0(Data_From_Rx_FIFO[19]),
        .I1(empty),
        .O(s_axi4_rdata[19]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi4_rdata[1]_INST_0 
       (.I0(Data_From_Rx_FIFO[1]),
        .I1(empty),
        .O(s_axi4_rdata[1]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi4_rdata[20]_INST_0 
       (.I0(Data_From_Rx_FIFO[20]),
        .I1(empty),
        .O(s_axi4_rdata[20]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi4_rdata[21]_INST_0 
       (.I0(Data_From_Rx_FIFO[21]),
        .I1(empty),
        .O(s_axi4_rdata[21]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi4_rdata[22]_INST_0 
       (.I0(Data_From_Rx_FIFO[22]),
        .I1(empty),
        .O(s_axi4_rdata[22]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi4_rdata[23]_INST_0 
       (.I0(Data_From_Rx_FIFO[23]),
        .I1(empty),
        .O(s_axi4_rdata[23]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi4_rdata[24]_INST_0 
       (.I0(Data_From_Rx_FIFO[24]),
        .I1(empty),
        .O(s_axi4_rdata[24]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi4_rdata[25]_INST_0 
       (.I0(Data_From_Rx_FIFO[25]),
        .I1(empty),
        .O(s_axi4_rdata[25]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi4_rdata[26]_INST_0 
       (.I0(Data_From_Rx_FIFO[26]),
        .I1(empty),
        .O(s_axi4_rdata[26]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi4_rdata[27]_INST_0 
       (.I0(Data_From_Rx_FIFO[27]),
        .I1(empty),
        .O(s_axi4_rdata[27]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi4_rdata[28]_INST_0 
       (.I0(Data_From_Rx_FIFO[28]),
        .I1(empty),
        .O(s_axi4_rdata[28]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi4_rdata[29]_INST_0 
       (.I0(Data_From_Rx_FIFO[29]),
        .I1(empty),
        .O(s_axi4_rdata[29]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi4_rdata[2]_INST_0 
       (.I0(Data_From_Rx_FIFO[2]),
        .I1(empty),
        .O(s_axi4_rdata[2]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi4_rdata[30]_INST_0 
       (.I0(Data_From_Rx_FIFO[30]),
        .I1(empty),
        .O(s_axi4_rdata[30]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi4_rdata[31]_INST_0 
       (.I0(Data_From_Rx_FIFO[31]),
        .I1(empty),
        .O(s_axi4_rdata[31]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi4_rdata[3]_INST_0 
       (.I0(Data_From_Rx_FIFO[3]),
        .I1(empty),
        .O(s_axi4_rdata[3]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi4_rdata[4]_INST_0 
       (.I0(Data_From_Rx_FIFO[4]),
        .I1(empty),
        .O(s_axi4_rdata[4]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi4_rdata[5]_INST_0 
       (.I0(Data_From_Rx_FIFO[5]),
        .I1(empty),
        .O(s_axi4_rdata[5]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi4_rdata[6]_INST_0 
       (.I0(Data_From_Rx_FIFO[6]),
        .I1(empty),
        .O(s_axi4_rdata[6]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi4_rdata[7]_INST_0 
       (.I0(Data_From_Rx_FIFO[7]),
        .I1(empty),
        .O(s_axi4_rdata[7]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi4_rdata[8]_INST_0 
       (.I0(Data_From_Rx_FIFO[8]),
        .I1(empty),
        .O(s_axi4_rdata[8]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi4_rdata[9]_INST_0 
       (.I0(Data_From_Rx_FIFO[9]),
        .I1(empty),
        .O(s_axi4_rdata[9]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'hB)) 
    s_axi4_rvalid_INST_0
       (.I0(s_axi_rvalid_ii),
        .I1(empty),
        .O(s_axi4_rvalid));
  (* CASCADE_HEIGHT = "0" *) 
  (* CDC_SYNC_STAGES = "2" *) 
  (* DOUT_RESET_VALUE = "0" *) 
  (* ECC_MODE = "no_ecc" *) 
  (* EN_ADV_FEATURE_ASYNC = "16'b0001111100011111" *) 
  (* FIFO_MEMORY_TYPE = "auto" *) 
  (* FIFO_READ_LATENCY = "0" *) 
  (* FIFO_WRITE_DEPTH = "64" *) 
  (* FULL_RESET_VALUE = "1" *) 
  (* PROG_EMPTY_THRESH = "10" *) 
  (* PROG_FULL_THRESH = "10" *) 
  (* P_COMMON_CLOCK = "0" *) 
  (* P_ECC_MODE = "0" *) 
  (* P_FIFO_MEMORY_TYPE = "0" *) 
  (* P_READ_MODE = "1" *) 
  (* P_WAKEUP_TIME = "2" *) 
  (* RD_DATA_COUNT_WIDTH = "6" *) 
  (* READ_DATA_WIDTH = "32" *) 
  (* READ_MODE = "fwft" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "1F1F" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH = "32" *) 
  (* WR_DATA_COUNT_WIDTH = "6" *) 
  (* XPM_MODULE = "TRUE" *) 
  icyradio_axi_quad_spi_0_0_xpm_fifo_async \xpm_fifo_instance.xpm_fifo_async_inst 
       (.almost_empty(\xpm_fifo_instance.xpm_fifo_async_inst_n_54 ),
        .almost_full(\xpm_fifo_instance.xpm_fifo_async_inst_n_10 ),
        .data_valid(Rx_FIFO_rd_ack),
        .dbiterr(\NLW_xpm_fifo_instance.xpm_fifo_async_inst_dbiterr_UNCONNECTED ),
        .din(Q),
        .dout(Data_From_Rx_FIFO),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(\NLW_xpm_fifo_instance.xpm_fifo_async_inst_overflow_UNCONNECTED ),
        .prog_empty(\NLW_xpm_fifo_instance.xpm_fifo_async_inst_prog_empty_UNCONNECTED ),
        .prog_full(\NLW_xpm_fifo_instance.xpm_fifo_async_inst_prog_full_UNCONNECTED ),
        .rd_clk(s_axi4_aclk),
        .rd_data_count({\xpm_fifo_instance.xpm_fifo_async_inst_n_46 ,\xpm_fifo_instance.xpm_fifo_async_inst_n_47 ,\xpm_fifo_instance.xpm_fifo_async_inst_n_48 ,\xpm_fifo_instance.xpm_fifo_async_inst_n_49 ,\xpm_fifo_instance.xpm_fifo_async_inst_n_50 ,\xpm_fifo_instance.xpm_fifo_async_inst_n_51 }),
        .rd_en(down_cnt_en_rx),
        .rd_rst_busy(\NLW_xpm_fifo_instance.xpm_fifo_async_inst_rd_rst_busy_UNCONNECTED ),
        .rst(Rst_to_spi),
        .sbiterr(\NLW_xpm_fifo_instance.xpm_fifo_async_inst_sbiterr_UNCONNECTED ),
        .sleep(1'b0),
        .underflow(\NLW_xpm_fifo_instance.xpm_fifo_async_inst_underflow_UNCONNECTED ),
        .wr_ack(\xpm_fifo_instance.xpm_fifo_async_inst_n_11 ),
        .wr_clk(ext_spi_clk),
        .wr_data_count({\xpm_fifo_instance.xpm_fifo_async_inst_n_2 ,\xpm_fifo_instance.xpm_fifo_async_inst_n_3 ,\xpm_fifo_instance.xpm_fifo_async_inst_n_4 ,\xpm_fifo_instance.xpm_fifo_async_inst_n_5 ,\xpm_fifo_instance.xpm_fifo_async_inst_n_6 ,\xpm_fifo_instance.xpm_fifo_async_inst_n_7 }),
        .wr_en(wr_en),
        .wr_rst_busy(wr_rst_busy));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \xpm_fifo_instance.xpm_fifo_async_inst_i_1 
       (.I0(s_axi4_rready),
        .I1(empty),
        .O(down_cnt_en_rx));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif" *) 
module icyradio_axi_quad_spi_0_0_axi_lite_ipif
   (bus2ip_reset_ipif_inverted,
    Bus_RNW_reg,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ,
    s_axi_rvalid_i_reg,
    s_axi_bvalid_i_reg,
    \XIP_MODE_GEN.ip2Bus_RdAck_core_reg_d3_reg ,
    \XIP_MODE_GEN.ip2bus_wrack_core_reg_reg ,
    SR,
    ip2bus_rdack_core_reg_d20,
    ip2bus_rdack_core_reg_d10,
    ip2bus_wrack_core_reg0,
    ip2bus_wrack_core_reg_d10,
    D,
    s_axi_rdata,
    s_axi_aclk,
    s_axi_arvalid,
    s_axi_wvalid,
    s_axi_awvalid,
    ip2Bus_RdAck_core_reg_d3,
    ip2bus_rdack_core_reg_d1,
    ip2bus_wrack_core_reg_d1,
    s_axi_aresetn,
    s_axi_bready,
    s_axi_rready,
    Q,
    XIPCR_0_CPHA_int,
    XIPCR_1_CPOL_int,
    ip2bus_wrack_core_reg,
    \s_axi_rdata_i_reg[4] ,
    s_axi_araddr,
    s_axi_awaddr);
  output bus2ip_reset_ipif_inverted;
  output Bus_RNW_reg;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  output s_axi_rvalid_i_reg;
  output s_axi_bvalid_i_reg;
  output \XIP_MODE_GEN.ip2Bus_RdAck_core_reg_d3_reg ;
  output \XIP_MODE_GEN.ip2bus_wrack_core_reg_reg ;
  output [0:0]SR;
  output ip2bus_rdack_core_reg_d20;
  output ip2bus_rdack_core_reg_d10;
  output ip2bus_wrack_core_reg0;
  output ip2bus_wrack_core_reg_d10;
  output [3:0]D;
  output [3:0]s_axi_rdata;
  input s_axi_aclk;
  input s_axi_arvalid;
  input s_axi_wvalid;
  input s_axi_awvalid;
  input ip2Bus_RdAck_core_reg_d3;
  input ip2bus_rdack_core_reg_d1;
  input ip2bus_wrack_core_reg_d1;
  input s_axi_aresetn;
  input s_axi_bready;
  input s_axi_rready;
  input [3:0]Q;
  input XIPCR_0_CPHA_int;
  input XIPCR_1_CPOL_int;
  input ip2bus_wrack_core_reg;
  input [3:0]\s_axi_rdata_i_reg[4] ;
  input [0:0]s_axi_araddr;
  input [0:0]s_axi_awaddr;

  wire Bus_RNW_reg;
  wire [3:0]D;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  wire [3:0]Q;
  wire [0:0]SR;
  wire XIPCR_0_CPHA_int;
  wire XIPCR_1_CPOL_int;
  wire \XIP_MODE_GEN.ip2Bus_RdAck_core_reg_d3_reg ;
  wire \XIP_MODE_GEN.ip2bus_wrack_core_reg_reg ;
  wire bus2ip_reset_ipif_inverted;
  wire ip2Bus_RdAck_core_reg_d3;
  wire ip2bus_rdack_core_reg_d1;
  wire ip2bus_rdack_core_reg_d10;
  wire ip2bus_rdack_core_reg_d20;
  wire ip2bus_wrack_core_reg;
  wire ip2bus_wrack_core_reg0;
  wire ip2bus_wrack_core_reg_d1;
  wire ip2bus_wrack_core_reg_d10;
  wire s_axi_aclk;
  wire [0:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arvalid;
  wire [0:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid_i_reg;
  wire [3:0]s_axi_rdata;
  wire [3:0]\s_axi_rdata_i_reg[4] ;
  wire s_axi_rready;
  wire s_axi_rvalid_i_reg;
  wire s_axi_wvalid;

  icyradio_axi_quad_spi_0_0_slave_attachment I_SLAVE_ATTACHMENT
       (.Bus_RNW_reg_reg(Bus_RNW_reg),
        .D(D),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .Q(Q),
        .SR(bus2ip_reset_ipif_inverted),
        .XIPCR_0_CPHA_int(XIPCR_0_CPHA_int),
        .XIPCR_1_CPOL_int(XIPCR_1_CPOL_int),
        .\XIP_MODE_GEN.ip2Bus_RdAck_core_reg_d3_reg (\XIP_MODE_GEN.ip2Bus_RdAck_core_reg_d3_reg ),
        .\XIP_MODE_GEN.ip2bus_wrack_core_reg_reg (\XIP_MODE_GEN.ip2bus_wrack_core_reg_reg ),
        .ip2Bus_RdAck_core_reg_d3(ip2Bus_RdAck_core_reg_d3),
        .ip2bus_rdack_core_reg_d1(ip2bus_rdack_core_reg_d1),
        .ip2bus_rdack_core_reg_d10(ip2bus_rdack_core_reg_d10),
        .ip2bus_rdack_core_reg_d20(ip2bus_rdack_core_reg_d20),
        .ip2bus_wrack_core_reg(ip2bus_wrack_core_reg),
        .ip2bus_wrack_core_reg0(ip2bus_wrack_core_reg0),
        .ip2bus_wrack_core_reg_d1(ip2bus_wrack_core_reg_d1),
        .ip2bus_wrack_core_reg_d10(ip2bus_wrack_core_reg_d10),
        .rst_reg_0(SR),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid_i_reg_0(s_axi_bvalid_i_reg),
        .s_axi_rdata(s_axi_rdata),
        .\s_axi_rdata_i_reg[4]_0 (\s_axi_rdata_i_reg[4] ),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid_i_reg_0(s_axi_rvalid_i_reg),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "axi_qspi_xip_if" *) 
module icyradio_axi_quad_spi_0_0_axi_qspi_xip_if
   (full,
    wr_rst_busy,
    empty,
    load_cmd_cdc_from_axi_d2,
    load_cmd_cdc_from_axi_d3,
    load_axi_data_cdc_to_spi_d2,
    load_axi_data_cdc_to_spi_d3,
    D,
    XIP_trans_error_d2,
    XIP_trans_error_d3,
    ss_t,
    io0_t,
    io1_t,
    io2_t,
    io3_t,
    S_AXI4_ARREADY_i_reg_0,
    wrap_around_d2,
    wrap_around_d3,
    transfer_start_d1,
    transfer_start,
    SPIXfer_done_int_d1,
    SPIXfer_done_int_pulse_d2,
    sck_d2,
    S_AXI4_RLAST_iii,
    s_axi4_rresp,
    \SR_5_TX_EMPTY_24_BIT_ADDR_GEN.SR_5_Tx_Empty_reg_0 ,
    cmd_addr_sent,
    new_tr,
    io0_o,
    io1_o,
    io2_o,
    io3_o,
    SCK_O_int,
    ss_o,
    Q,
    scndry_out,
    \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[0]_0 ,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[30]_0 ,
    \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg[1]_0 ,
    s_axi4_rready_0,
    s_axi4_rlast,
    \XIP_MODE_GEN.bus2ip_reset_ipif4_inverted_reg ,
    \XIP_NORMAL_MODE.S_AXI4_ARLEN_ii_reg[6]_0 ,
    s_axi4_rvalid,
    s_axi4_rdata,
    \RATIO_OF_2_GENERATE.Count_reg[0]_0 ,
    \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_0 ,
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[2]_0 ,
    SPIXfer_done_int_d1_reg_0,
    Serial_Dout_1,
    \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg[0]_0 ,
    Rst_to_spi,
    ext_spi_clk,
    s_axi4_aclk,
    XIPCR_1_CPOL_int,
    XIPCR_0_CPHA_int,
    bus2ip_reset_ipif_inverted,
    Rx_FIFO_Full,
    s_axi_aclk,
    bus2ip_reset_ipif4_inverted,
    \LOGIC_GENERATION_FDR.CPHA_CPOL_ERR_AXI2AXI4_CDC_0 ,
    s_axi4_arsize,
    s_axi4_arburst,
    \XIP_NORMAL_MODE.S_AXI4_RLAST_iii_reg_0 ,
    \XIP_NORMAL_MODE.S_AXI4_RRESP_i_reg_0 ,
    \SR_5_TX_EMPTY_24_BIT_ADDR_GEN.SR_5_Tx_Empty_reg_1 ,
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_sent_reg_0 ,
    \STORE_NEW_TR_24_BIT_ADDR_GEN.new_tr_reg_0 ,
    \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_0_reg_0 ,
    \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_1_reg_0 ,
    \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_2_reg_0 ,
    E,
    s_axi4_araddr,
    s_axi4_rready,
    s_axi4_arvalid,
    s_axi4_arlen,
    io3_i_sync,
    io2_i_sync,
    io1_i_sync,
    io0_i_sync);
  output full;
  output wr_rst_busy;
  output empty;
  output load_cmd_cdc_from_axi_d2;
  output load_cmd_cdc_from_axi_d3;
  output load_axi_data_cdc_to_spi_d2;
  output load_axi_data_cdc_to_spi_d3;
  output [1:0]D;
  output XIP_trans_error_d2;
  output XIP_trans_error_d3;
  output ss_t;
  output io0_t;
  output io1_t;
  output io2_t;
  output io3_t;
  output S_AXI4_ARREADY_i_reg_0;
  output wrap_around_d2;
  output wrap_around_d3;
  output transfer_start_d1;
  output transfer_start;
  output SPIXfer_done_int_d1;
  output SPIXfer_done_int_pulse_d2;
  output sck_d2;
  output S_AXI4_RLAST_iii;
  output [0:0]s_axi4_rresp;
  output \SR_5_TX_EMPTY_24_BIT_ADDR_GEN.SR_5_Tx_Empty_reg_0 ;
  output cmd_addr_sent;
  output new_tr;
  output io0_o;
  output io1_o;
  output io2_o;
  output io3_o;
  output SCK_O_int;
  output [0:0]ss_o;
  output [1:0]Q;
  output scndry_out;
  output [0:0]\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[0]_0 ;
  output [1:0]\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[30]_0 ;
  output [1:0]\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg[1]_0 ;
  output s_axi4_rready_0;
  output s_axi4_rlast;
  output \XIP_MODE_GEN.bus2ip_reset_ipif4_inverted_reg ;
  output \XIP_NORMAL_MODE.S_AXI4_ARLEN_ii_reg[6]_0 ;
  output s_axi4_rvalid;
  output [31:0]s_axi4_rdata;
  output [0:0]\RATIO_OF_2_GENERATE.Count_reg[0]_0 ;
  output \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_0 ;
  output \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[2]_0 ;
  output SPIXfer_done_int_d1_reg_0;
  output Serial_Dout_1;
  output \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg[0]_0 ;
  input Rst_to_spi;
  input ext_spi_clk;
  input s_axi4_aclk;
  input XIPCR_1_CPOL_int;
  input XIPCR_0_CPHA_int;
  input bus2ip_reset_ipif_inverted;
  input Rx_FIFO_Full;
  input s_axi_aclk;
  input bus2ip_reset_ipif4_inverted;
  input [0:0]\LOGIC_GENERATION_FDR.CPHA_CPOL_ERR_AXI2AXI4_CDC_0 ;
  input [1:0]s_axi4_arsize;
  input [1:0]s_axi4_arburst;
  input \XIP_NORMAL_MODE.S_AXI4_RLAST_iii_reg_0 ;
  input \XIP_NORMAL_MODE.S_AXI4_RRESP_i_reg_0 ;
  input \SR_5_TX_EMPTY_24_BIT_ADDR_GEN.SR_5_Tx_Empty_reg_1 ;
  input \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_sent_reg_0 ;
  input \STORE_NEW_TR_24_BIT_ADDR_GEN.new_tr_reg_0 ;
  input \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_0_reg_0 ;
  input \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_1_reg_0 ;
  input \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_2_reg_0 ;
  input [0:0]E;
  input [23:0]s_axi4_araddr;
  input s_axi4_rready;
  input s_axi4_arvalid;
  input [7:0]s_axi4_arlen;
  input io3_i_sync;
  input io2_i_sync;
  input io1_i_sync;
  input io0_i_sync;

  wire [1:0]D;
  wire D03_out;
  wire D_0;
  wire [0:0]E;
  wire \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps[0]_i_3_n_0 ;
  wire \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps[1]_i_1_n_0 ;
  wire \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps[2]_i_1_n_0 ;
  wire \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps[3]_i_1_n_0 ;
  wire \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps[4]_i_1_n_0 ;
  wire \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps[4]_i_2_n_0 ;
  wire \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps[4]_i_3_n_0 ;
  wire [0:0]\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[0]_0 ;
  wire \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[1] ;
  wire \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[2] ;
  wire \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[4] ;
  wire \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[5] ;
  wire \LEN_CNTR_24_BIT_GEN.length_cntr[3]_i_2_n_0 ;
  wire \LEN_CNTR_24_BIT_GEN.length_cntr[4]_i_2_n_0 ;
  wire \LEN_CNTR_24_BIT_GEN.length_cntr[5]_i_2_n_0 ;
  wire \LEN_CNTR_24_BIT_GEN.length_cntr[7]_i_3_n_0 ;
  wire \LEN_CNTR_24_BIT_GEN.length_cntr[7]_i_4_n_0 ;
  wire \LEN_CNTR_24_BIT_GEN.length_cntr[7]_i_5_n_0 ;
  wire \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_0 ;
  wire \LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[0] ;
  wire \LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[1] ;
  wire \LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[2] ;
  wire \LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[3] ;
  wire \LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[4] ;
  wire \LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[5] ;
  wire \LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[6] ;
  wire \LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[7] ;
  wire [0:0]\LOGIC_GENERATION_FDR.CPHA_CPOL_ERR_AXI2AXI4_CDC_0 ;
  wire [1:0]Q;
  wire \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[23]_i_4_n_0 ;
  wire \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[7]_i_3_n_0 ;
  wire \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[0] ;
  wire \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[10] ;
  wire \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[11] ;
  wire \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[12] ;
  wire \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[13] ;
  wire \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[14] ;
  wire \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[15] ;
  wire \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[1] ;
  wire \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[2] ;
  wire \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[3] ;
  wire \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[4] ;
  wire \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[5] ;
  wire \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[6] ;
  wire \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[7] ;
  wire \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[8] ;
  wire \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[9] ;
  wire \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[2]_0 ;
  wire \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg_n_0_[0] ;
  wire \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg_n_0_[1] ;
  wire \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg_n_0_[2] ;
  wire \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_sent_reg_0 ;
  wire \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[0]_i_1_n_0 ;
  wire \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[1]_i_1_n_0 ;
  wire \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[2]_i_1_n_0 ;
  wire \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[3]_i_1_n_0 ;
  wire \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[4]_i_1_n_0 ;
  wire \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[5]_i_1_n_0 ;
  wire \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[6]_i_1_n_0 ;
  wire \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[7]_i_2_n_0 ;
  wire \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[7]_i_3_n_0 ;
  wire \RATIO_OF_2_GENERATE.Count[4]_i_1_n_0 ;
  wire [3:1]\RATIO_OF_2_GENERATE.Count_reg ;
  wire [0:0]\RATIO_OF_2_GENERATE.Count_reg[0]_0 ;
  wire [4:4]\RATIO_OF_2_GENERATE.Count_reg__0 ;
  wire \RATIO_OF_2_GENERATE.QSPI_IO0_T_i_1_n_0 ;
  wire \RATIO_OF_2_GENERATE.QSPI_IO0_T_i_2_n_0 ;
  wire \RATIO_OF_2_GENERATE.QSPI_IO0_T_i_3_n_0 ;
  wire \RATIO_OF_2_GENERATE.QSPI_IO1_T_i_1_n_0 ;
  wire \RATIO_OF_2_GENERATE.QSPI_SS_T_i_1_n_0 ;
  wire \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_0_reg_0 ;
  wire \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_1_reg_0 ;
  wire \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_2_reg_0 ;
  wire \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_3_i_1_n_0 ;
  wire \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_3_i_2_n_0 ;
  wire \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_3_i_4_n_0 ;
  wire \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg[0]_i_2_n_0 ;
  wire \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg[1]_i_1_n_0 ;
  wire \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg[2]_i_1_n_0 ;
  wire \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg[3]_i_1_n_0 ;
  wire \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg[4]_i_1_n_0 ;
  wire \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg[5]_i_1_n_0 ;
  wire \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg[6]_i_1_n_0 ;
  wire \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg[7]_i_1_n_0 ;
  wire \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg[0]_0 ;
  wire [1:0]\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg[1]_0 ;
  wire \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg_n_0_[0] ;
  wire \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg_n_0_[3] ;
  wire \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg_n_0_[4] ;
  wire \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg_n_0_[5] ;
  wire \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg_n_0_[6] ;
  wire \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg_n_0_[7] ;
  wire \RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.addr_cnt[0]_i_1_n_0 ;
  wire \RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.addr_cnt[1]_i_1_n_0 ;
  wire \RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.addr_cnt[2]_i_1_n_0 ;
  wire [2:0]\RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.addr_cnt_reg ;
  wire \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[0]_i_2_n_0 ;
  wire \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[1]_i_1_n_0 ;
  wire \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[2]_i_1_n_0 ;
  wire \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[3]_i_1_n_0 ;
  wire \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[4]_i_1_n_0 ;
  wire \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[5]_i_1_n_0 ;
  wire \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[6]_i_1_n_0 ;
  wire \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[7]_i_1_n_0 ;
  wire \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[0] ;
  wire \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[1] ;
  wire \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[2] ;
  wire \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[3] ;
  wire \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[4] ;
  wire \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[5] ;
  wire \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[6] ;
  wire \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[7] ;
  wire Rst_to_spi;
  wire Rx_FIFO_Full;
  wire SCK_O_int;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[30]_i_1_n_0 ;
  wire [1:0]\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[30]_0 ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[0] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[10] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[11] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[12] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[13] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[14] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[15] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[16] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[17] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[18] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[19] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[1] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[20] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[21] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[22] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[23] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[24] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[25] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[26] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[27] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[2] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[3] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[4] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[5] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[6] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[7] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[8] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[9] ;
  wire SPIXfer_done_int;
  wire SPIXfer_done_int1;
  wire SPIXfer_done_int_d1;
  wire SPIXfer_done_int_d1_reg_0;
  wire SPIXfer_done_int_i_1_n_0;
  wire SPIXfer_done_int_i_2_n_0;
  wire SPIXfer_done_int_pulse_d1;
  wire SPIXfer_done_int_pulse_d2;
  wire \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[0]_i_3_n_0 ;
  wire \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg_n_0_[0] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[0]_i_3_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[10]_i_3_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[11]_i_3_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[12]_i_3_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[13]_i_3_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[14]_i_3_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[15]_i_3_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[16]_i_3_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[17]_i_3_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[18]_i_3_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[19]_i_3_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_7_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[20]_i_3_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[21]_i_3_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[22]_i_3_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_3_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_8_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_8_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_9_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_13_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_9_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_12_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_6_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[6]_i_3_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[7]_i_3_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[8]_i_3_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[9]_i_3_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[0] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[2] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[3] ;
  wire \SR_5_TX_EMPTY_24_BIT_ADDR_GEN.SR_5_Tx_Empty_reg_0 ;
  wire \SR_5_TX_EMPTY_24_BIT_ADDR_GEN.SR_5_Tx_Empty_reg_1 ;
  wire SS_frm_axi;
  wire \STORE_NEW_TR_24_BIT_ADDR_GEN.new_tr_reg_0 ;
  wire [3:0]S_AXI4_ARLEN_i;
  wire [7:0]S_AXI4_ARLEN_ii;
  wire S_AXI4_ARREADY_i_reg_0;
  wire S_AXI4_RLAST_iii;
  wire Serial_Dout_09_out;
  wire Serial_Dout_1;
  wire Shift_Reg;
  wire [0:3]Transmit_Data;
  wire [23:0]Transmit_addr_int;
  wire Tx_Data_d1;
  wire XIPCR_0_CPHA_int;
  wire XIPCR_1_CPOL_int;
  wire XIPSR_CPHA_CPOL_ERR_d1;
  wire XIPSR_CPHA_CPOL_ERR_d2;
  wire XIP_CLK_DOMAIN_SIGNALS_n_10;
  wire XIP_CLK_DOMAIN_SIGNALS_n_100;
  wire XIP_CLK_DOMAIN_SIGNALS_n_101;
  wire XIP_CLK_DOMAIN_SIGNALS_n_102;
  wire XIP_CLK_DOMAIN_SIGNALS_n_103;
  wire XIP_CLK_DOMAIN_SIGNALS_n_104;
  wire XIP_CLK_DOMAIN_SIGNALS_n_105;
  wire XIP_CLK_DOMAIN_SIGNALS_n_106;
  wire XIP_CLK_DOMAIN_SIGNALS_n_107;
  wire XIP_CLK_DOMAIN_SIGNALS_n_108;
  wire XIP_CLK_DOMAIN_SIGNALS_n_109;
  wire XIP_CLK_DOMAIN_SIGNALS_n_11;
  wire XIP_CLK_DOMAIN_SIGNALS_n_110;
  wire XIP_CLK_DOMAIN_SIGNALS_n_111;
  wire XIP_CLK_DOMAIN_SIGNALS_n_112;
  wire XIP_CLK_DOMAIN_SIGNALS_n_113;
  wire XIP_CLK_DOMAIN_SIGNALS_n_114;
  wire XIP_CLK_DOMAIN_SIGNALS_n_115;
  wire XIP_CLK_DOMAIN_SIGNALS_n_116;
  wire XIP_CLK_DOMAIN_SIGNALS_n_117;
  wire XIP_CLK_DOMAIN_SIGNALS_n_118;
  wire XIP_CLK_DOMAIN_SIGNALS_n_119;
  wire XIP_CLK_DOMAIN_SIGNALS_n_12;
  wire XIP_CLK_DOMAIN_SIGNALS_n_120;
  wire XIP_CLK_DOMAIN_SIGNALS_n_121;
  wire XIP_CLK_DOMAIN_SIGNALS_n_122;
  wire XIP_CLK_DOMAIN_SIGNALS_n_123;
  wire XIP_CLK_DOMAIN_SIGNALS_n_124;
  wire XIP_CLK_DOMAIN_SIGNALS_n_125;
  wire XIP_CLK_DOMAIN_SIGNALS_n_126;
  wire XIP_CLK_DOMAIN_SIGNALS_n_127;
  wire XIP_CLK_DOMAIN_SIGNALS_n_128;
  wire XIP_CLK_DOMAIN_SIGNALS_n_129;
  wire XIP_CLK_DOMAIN_SIGNALS_n_13;
  wire XIP_CLK_DOMAIN_SIGNALS_n_130;
  wire XIP_CLK_DOMAIN_SIGNALS_n_131;
  wire XIP_CLK_DOMAIN_SIGNALS_n_132;
  wire XIP_CLK_DOMAIN_SIGNALS_n_133;
  wire XIP_CLK_DOMAIN_SIGNALS_n_134;
  wire XIP_CLK_DOMAIN_SIGNALS_n_135;
  wire XIP_CLK_DOMAIN_SIGNALS_n_136;
  wire XIP_CLK_DOMAIN_SIGNALS_n_137;
  wire XIP_CLK_DOMAIN_SIGNALS_n_138;
  wire XIP_CLK_DOMAIN_SIGNALS_n_139;
  wire XIP_CLK_DOMAIN_SIGNALS_n_14;
  wire XIP_CLK_DOMAIN_SIGNALS_n_140;
  wire XIP_CLK_DOMAIN_SIGNALS_n_141;
  wire XIP_CLK_DOMAIN_SIGNALS_n_15;
  wire XIP_CLK_DOMAIN_SIGNALS_n_16;
  wire XIP_CLK_DOMAIN_SIGNALS_n_17;
  wire XIP_CLK_DOMAIN_SIGNALS_n_18;
  wire XIP_CLK_DOMAIN_SIGNALS_n_19;
  wire XIP_CLK_DOMAIN_SIGNALS_n_20;
  wire XIP_CLK_DOMAIN_SIGNALS_n_21;
  wire XIP_CLK_DOMAIN_SIGNALS_n_22;
  wire XIP_CLK_DOMAIN_SIGNALS_n_23;
  wire XIP_CLK_DOMAIN_SIGNALS_n_24;
  wire XIP_CLK_DOMAIN_SIGNALS_n_25;
  wire XIP_CLK_DOMAIN_SIGNALS_n_26;
  wire XIP_CLK_DOMAIN_SIGNALS_n_27;
  wire XIP_CLK_DOMAIN_SIGNALS_n_28;
  wire XIP_CLK_DOMAIN_SIGNALS_n_29;
  wire XIP_CLK_DOMAIN_SIGNALS_n_30;
  wire XIP_CLK_DOMAIN_SIGNALS_n_31;
  wire XIP_CLK_DOMAIN_SIGNALS_n_32;
  wire XIP_CLK_DOMAIN_SIGNALS_n_33;
  wire XIP_CLK_DOMAIN_SIGNALS_n_34;
  wire XIP_CLK_DOMAIN_SIGNALS_n_35;
  wire XIP_CLK_DOMAIN_SIGNALS_n_42;
  wire XIP_CLK_DOMAIN_SIGNALS_n_43;
  wire XIP_CLK_DOMAIN_SIGNALS_n_44;
  wire XIP_CLK_DOMAIN_SIGNALS_n_45;
  wire XIP_CLK_DOMAIN_SIGNALS_n_46;
  wire XIP_CLK_DOMAIN_SIGNALS_n_47;
  wire XIP_CLK_DOMAIN_SIGNALS_n_48;
  wire XIP_CLK_DOMAIN_SIGNALS_n_49;
  wire XIP_CLK_DOMAIN_SIGNALS_n_50;
  wire XIP_CLK_DOMAIN_SIGNALS_n_51;
  wire XIP_CLK_DOMAIN_SIGNALS_n_52;
  wire XIP_CLK_DOMAIN_SIGNALS_n_53;
  wire XIP_CLK_DOMAIN_SIGNALS_n_54;
  wire XIP_CLK_DOMAIN_SIGNALS_n_55;
  wire XIP_CLK_DOMAIN_SIGNALS_n_56;
  wire XIP_CLK_DOMAIN_SIGNALS_n_57;
  wire XIP_CLK_DOMAIN_SIGNALS_n_58;
  wire XIP_CLK_DOMAIN_SIGNALS_n_6;
  wire XIP_CLK_DOMAIN_SIGNALS_n_60;
  wire XIP_CLK_DOMAIN_SIGNALS_n_61;
  wire XIP_CLK_DOMAIN_SIGNALS_n_63;
  wire XIP_CLK_DOMAIN_SIGNALS_n_65;
  wire XIP_CLK_DOMAIN_SIGNALS_n_66;
  wire XIP_CLK_DOMAIN_SIGNALS_n_67;
  wire XIP_CLK_DOMAIN_SIGNALS_n_68;
  wire XIP_CLK_DOMAIN_SIGNALS_n_69;
  wire XIP_CLK_DOMAIN_SIGNALS_n_7;
  wire XIP_CLK_DOMAIN_SIGNALS_n_70;
  wire XIP_CLK_DOMAIN_SIGNALS_n_71;
  wire XIP_CLK_DOMAIN_SIGNALS_n_72;
  wire XIP_CLK_DOMAIN_SIGNALS_n_73;
  wire XIP_CLK_DOMAIN_SIGNALS_n_74;
  wire XIP_CLK_DOMAIN_SIGNALS_n_75;
  wire XIP_CLK_DOMAIN_SIGNALS_n_76;
  wire XIP_CLK_DOMAIN_SIGNALS_n_79;
  wire XIP_CLK_DOMAIN_SIGNALS_n_8;
  wire XIP_CLK_DOMAIN_SIGNALS_n_80;
  wire XIP_CLK_DOMAIN_SIGNALS_n_81;
  wire XIP_CLK_DOMAIN_SIGNALS_n_82;
  wire XIP_CLK_DOMAIN_SIGNALS_n_83;
  wire XIP_CLK_DOMAIN_SIGNALS_n_84;
  wire XIP_CLK_DOMAIN_SIGNALS_n_85;
  wire XIP_CLK_DOMAIN_SIGNALS_n_86;
  wire XIP_CLK_DOMAIN_SIGNALS_n_87;
  wire XIP_CLK_DOMAIN_SIGNALS_n_88;
  wire XIP_CLK_DOMAIN_SIGNALS_n_89;
  wire XIP_CLK_DOMAIN_SIGNALS_n_9;
  wire XIP_CLK_DOMAIN_SIGNALS_n_90;
  wire XIP_CLK_DOMAIN_SIGNALS_n_91;
  wire XIP_CLK_DOMAIN_SIGNALS_n_92;
  wire XIP_CLK_DOMAIN_SIGNALS_n_93;
  wire XIP_CLK_DOMAIN_SIGNALS_n_94;
  wire XIP_CLK_DOMAIN_SIGNALS_n_95;
  wire XIP_CLK_DOMAIN_SIGNALS_n_96;
  wire XIP_CLK_DOMAIN_SIGNALS_n_97;
  wire XIP_CLK_DOMAIN_SIGNALS_n_98;
  wire XIP_CLK_DOMAIN_SIGNALS_n_99;
  wire \XIP_MODE_GEN.bus2ip_reset_ipif4_inverted_reg ;
  wire \XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[3]_i_2_n_0 ;
  wire \XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[4]_i_2_n_0 ;
  wire \XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[7]_i_1_n_0 ;
  wire \XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[7]_i_5_n_0 ;
  wire \XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[7]_i_6_n_0 ;
  wire \XIP_NORMAL_MODE.S_AXI4_ARLEN_ii_reg[6]_0 ;
  wire \XIP_NORMAL_MODE.S_AXI4_RLAST_iii_reg_0 ;
  wire \XIP_NORMAL_MODE.S_AXI4_RRESP_i_reg_0 ;
  wire XIP_RECEIVE_FIFO_II_n_3;
  wire XIP_RECEIVE_FIFO_II_n_4;
  wire XIP_RECEIVE_FIFO_II_n_6;
  wire XIP_trans_error_d1;
  wire XIP_trans_error_d2;
  wire XIP_trans_error_d3;
  wire [3:0]axi_length;
  wire bus2ip_reset_ipif4_inverted;
  wire bus2ip_reset_ipif_inverted;
  wire cmd_addr_cntr1;
  wire cmd_addr_sent;
  wire [23:4]data2;
  wire [23:1]data4;
  wire [7:0]dtr_length;
  wire \dtr_length[3]_i_2_n_0 ;
  wire \dtr_length[5]_i_2_n_0 ;
  wire empty;
  wire ext_spi_clk;
  wire four_byte_xfer;
  wire full;
  wire hpm_under_process_d1;
  wire [1:0]hw_wd_cntr;
  wire hw_wd_cntr0;
  wire io0_i_sync;
  wire io0_o;
  wire io0_t;
  wire io1_i_sync;
  wire io1_o;
  wire io1_t;
  wire io2_i_sync;
  wire io2_o;
  wire io2_t;
  wire io3_i_sync;
  wire io3_o;
  wire io3_t;
  wire last_data_acked;
  wire last_data_acked_i_2_n_0;
  wire [7:2]length_cntr;
  wire load_axi_data_cdc_to_spi_d2;
  wire load_axi_data_cdc_to_spi_d3;
  wire load_axi_data_frm_axi_clk;
  wire load_axi_data_to_spi_clk;
  wire load_cmd_cdc_from_axi_d2;
  wire load_cmd_cdc_from_axi_d3;
  wire new_tr;
  wire one_byte_xfer;
  wire one_byte_xfer_i_1_n_0;
  wire [7:0]p_2_in;
  wire p_33_in;
  wire p_3_in1_in;
  wire [15:0]p_5_in;
  wire p_72_in;
  wire p_8_in;
  wire [4:1]plusOp;
  wire pr_state_addr_ph;
  wire [7:0]receive_Data_int;
  wire s_axi4_aclk;
  wire [23:0]s_axi4_araddr;
  wire [1:0]s_axi4_arburst;
  wire [7:0]s_axi4_arlen;
  wire [1:0]s_axi4_arsize;
  wire s_axi4_arvalid;
  wire [31:0]s_axi4_rdata;
  wire s_axi4_rlast;
  wire s_axi4_rlast_INST_0_i_1_n_0;
  wire s_axi4_rlast_INST_0_i_3_n_0;
  wire s_axi4_rready;
  wire s_axi4_rready_0;
  wire [0:0]s_axi4_rresp;
  wire s_axi4_rvalid;
  wire s_axi_aclk;
  wire s_axi_rvalid_ii;
  wire s_axi_rvalid_ii0;
  wire sck_d1;
  wire sck_d2;
  wire sck_o_int;
  wire scndry_out;
  wire [1:0]size_length_cntr;
  wire \size_length_cntr[1]_i_3_n_0 ;
  wire \size_length_cntr_fixed_reg_n_0_[0] ;
  wire \size_length_cntr_fixed_reg_n_0_[1] ;
  wire [23:0]spi_addr_wrap_1;
  wire \spi_addr_wrap_1[0]_i_1_n_0 ;
  wire \spi_addr_wrap_1[10]_i_1_n_0 ;
  wire \spi_addr_wrap_1[11]_i_1_n_0 ;
  wire \spi_addr_wrap_1[12]_i_1_n_0 ;
  wire \spi_addr_wrap_1[13]_i_1_n_0 ;
  wire \spi_addr_wrap_1[14]_i_1_n_0 ;
  wire \spi_addr_wrap_1[15]_i_1_n_0 ;
  wire \spi_addr_wrap_1[16]_i_1_n_0 ;
  wire \spi_addr_wrap_1[17]_i_1_n_0 ;
  wire \spi_addr_wrap_1[18]_i_1_n_0 ;
  wire \spi_addr_wrap_1[19]_i_1_n_0 ;
  wire \spi_addr_wrap_1[1]_i_1_n_0 ;
  wire \spi_addr_wrap_1[20]_i_1_n_0 ;
  wire \spi_addr_wrap_1[21]_i_1_n_0 ;
  wire \spi_addr_wrap_1[22]_i_1_n_0 ;
  wire \spi_addr_wrap_1[23]_i_1_n_0 ;
  wire \spi_addr_wrap_1[2]_i_1_n_0 ;
  wire \spi_addr_wrap_1[3]_i_1_n_0 ;
  wire \spi_addr_wrap_1[3]_i_3_n_0 ;
  wire \spi_addr_wrap_1[4]_i_1_n_0 ;
  wire \spi_addr_wrap_1[4]_i_4_n_0 ;
  wire \spi_addr_wrap_1[5]_i_1_n_0 ;
  wire \spi_addr_wrap_1[6]_i_1_n_0 ;
  wire \spi_addr_wrap_1[7]_i_1_n_0 ;
  wire \spi_addr_wrap_1[8]_i_1_n_0 ;
  wire \spi_addr_wrap_1[9]_i_1_n_0 ;
  wire \spi_addr_wrap_1_reg[11]_i_2_n_0 ;
  wire \spi_addr_wrap_1_reg[11]_i_2_n_1 ;
  wire \spi_addr_wrap_1_reg[11]_i_2_n_2 ;
  wire \spi_addr_wrap_1_reg[11]_i_2_n_3 ;
  wire \spi_addr_wrap_1_reg[11]_i_2_n_4 ;
  wire \spi_addr_wrap_1_reg[11]_i_2_n_5 ;
  wire \spi_addr_wrap_1_reg[11]_i_2_n_6 ;
  wire \spi_addr_wrap_1_reg[11]_i_2_n_7 ;
  wire \spi_addr_wrap_1_reg[12]_i_2_n_0 ;
  wire \spi_addr_wrap_1_reg[12]_i_2_n_1 ;
  wire \spi_addr_wrap_1_reg[12]_i_2_n_2 ;
  wire \spi_addr_wrap_1_reg[12]_i_2_n_3 ;
  wire \spi_addr_wrap_1_reg[12]_i_3_n_0 ;
  wire \spi_addr_wrap_1_reg[12]_i_3_n_1 ;
  wire \spi_addr_wrap_1_reg[12]_i_3_n_2 ;
  wire \spi_addr_wrap_1_reg[12]_i_3_n_3 ;
  wire \spi_addr_wrap_1_reg[12]_i_3_n_4 ;
  wire \spi_addr_wrap_1_reg[12]_i_3_n_5 ;
  wire \spi_addr_wrap_1_reg[12]_i_3_n_6 ;
  wire \spi_addr_wrap_1_reg[12]_i_3_n_7 ;
  wire \spi_addr_wrap_1_reg[15]_i_2_n_0 ;
  wire \spi_addr_wrap_1_reg[15]_i_2_n_1 ;
  wire \spi_addr_wrap_1_reg[15]_i_2_n_2 ;
  wire \spi_addr_wrap_1_reg[15]_i_2_n_3 ;
  wire \spi_addr_wrap_1_reg[15]_i_2_n_4 ;
  wire \spi_addr_wrap_1_reg[15]_i_2_n_5 ;
  wire \spi_addr_wrap_1_reg[15]_i_2_n_6 ;
  wire \spi_addr_wrap_1_reg[15]_i_2_n_7 ;
  wire \spi_addr_wrap_1_reg[16]_i_2_n_0 ;
  wire \spi_addr_wrap_1_reg[16]_i_2_n_1 ;
  wire \spi_addr_wrap_1_reg[16]_i_2_n_2 ;
  wire \spi_addr_wrap_1_reg[16]_i_2_n_3 ;
  wire \spi_addr_wrap_1_reg[16]_i_2_n_4 ;
  wire \spi_addr_wrap_1_reg[16]_i_2_n_5 ;
  wire \spi_addr_wrap_1_reg[16]_i_2_n_6 ;
  wire \spi_addr_wrap_1_reg[16]_i_2_n_7 ;
  wire \spi_addr_wrap_1_reg[16]_i_3_n_0 ;
  wire \spi_addr_wrap_1_reg[16]_i_3_n_1 ;
  wire \spi_addr_wrap_1_reg[16]_i_3_n_2 ;
  wire \spi_addr_wrap_1_reg[16]_i_3_n_3 ;
  wire \spi_addr_wrap_1_reg[19]_i_2_n_0 ;
  wire \spi_addr_wrap_1_reg[19]_i_2_n_1 ;
  wire \spi_addr_wrap_1_reg[19]_i_2_n_2 ;
  wire \spi_addr_wrap_1_reg[19]_i_2_n_3 ;
  wire \spi_addr_wrap_1_reg[19]_i_2_n_4 ;
  wire \spi_addr_wrap_1_reg[19]_i_2_n_5 ;
  wire \spi_addr_wrap_1_reg[19]_i_2_n_6 ;
  wire \spi_addr_wrap_1_reg[19]_i_2_n_7 ;
  wire \spi_addr_wrap_1_reg[20]_i_2_n_0 ;
  wire \spi_addr_wrap_1_reg[20]_i_2_n_1 ;
  wire \spi_addr_wrap_1_reg[20]_i_2_n_2 ;
  wire \spi_addr_wrap_1_reg[20]_i_2_n_3 ;
  wire \spi_addr_wrap_1_reg[20]_i_3_n_0 ;
  wire \spi_addr_wrap_1_reg[20]_i_3_n_1 ;
  wire \spi_addr_wrap_1_reg[20]_i_3_n_2 ;
  wire \spi_addr_wrap_1_reg[20]_i_3_n_3 ;
  wire \spi_addr_wrap_1_reg[20]_i_3_n_4 ;
  wire \spi_addr_wrap_1_reg[20]_i_3_n_5 ;
  wire \spi_addr_wrap_1_reg[20]_i_3_n_6 ;
  wire \spi_addr_wrap_1_reg[20]_i_3_n_7 ;
  wire \spi_addr_wrap_1_reg[23]_i_2_n_2 ;
  wire \spi_addr_wrap_1_reg[23]_i_2_n_3 ;
  wire \spi_addr_wrap_1_reg[23]_i_3_n_2 ;
  wire \spi_addr_wrap_1_reg[23]_i_3_n_3 ;
  wire \spi_addr_wrap_1_reg[23]_i_3_n_5 ;
  wire \spi_addr_wrap_1_reg[23]_i_3_n_6 ;
  wire \spi_addr_wrap_1_reg[23]_i_3_n_7 ;
  wire \spi_addr_wrap_1_reg[23]_i_4_n_1 ;
  wire \spi_addr_wrap_1_reg[23]_i_4_n_2 ;
  wire \spi_addr_wrap_1_reg[23]_i_4_n_3 ;
  wire \spi_addr_wrap_1_reg[23]_i_4_n_4 ;
  wire \spi_addr_wrap_1_reg[23]_i_4_n_5 ;
  wire \spi_addr_wrap_1_reg[23]_i_4_n_6 ;
  wire \spi_addr_wrap_1_reg[23]_i_4_n_7 ;
  wire \spi_addr_wrap_1_reg[3]_i_2_n_0 ;
  wire \spi_addr_wrap_1_reg[3]_i_2_n_1 ;
  wire \spi_addr_wrap_1_reg[3]_i_2_n_2 ;
  wire \spi_addr_wrap_1_reg[3]_i_2_n_3 ;
  wire \spi_addr_wrap_1_reg[3]_i_2_n_4 ;
  wire \spi_addr_wrap_1_reg[3]_i_2_n_5 ;
  wire \spi_addr_wrap_1_reg[3]_i_2_n_6 ;
  wire \spi_addr_wrap_1_reg[3]_i_2_n_7 ;
  wire \spi_addr_wrap_1_reg[4]_i_2_n_0 ;
  wire \spi_addr_wrap_1_reg[4]_i_2_n_1 ;
  wire \spi_addr_wrap_1_reg[4]_i_2_n_2 ;
  wire \spi_addr_wrap_1_reg[4]_i_2_n_3 ;
  wire \spi_addr_wrap_1_reg[4]_i_2_n_4 ;
  wire \spi_addr_wrap_1_reg[4]_i_2_n_5 ;
  wire \spi_addr_wrap_1_reg[4]_i_2_n_6 ;
  wire \spi_addr_wrap_1_reg[4]_i_2_n_7 ;
  wire \spi_addr_wrap_1_reg[4]_i_3_n_0 ;
  wire \spi_addr_wrap_1_reg[4]_i_3_n_1 ;
  wire \spi_addr_wrap_1_reg[4]_i_3_n_2 ;
  wire \spi_addr_wrap_1_reg[4]_i_3_n_3 ;
  wire \spi_addr_wrap_1_reg[7]_i_2_n_0 ;
  wire \spi_addr_wrap_1_reg[7]_i_2_n_1 ;
  wire \spi_addr_wrap_1_reg[7]_i_2_n_2 ;
  wire \spi_addr_wrap_1_reg[7]_i_2_n_3 ;
  wire \spi_addr_wrap_1_reg[7]_i_2_n_4 ;
  wire \spi_addr_wrap_1_reg[7]_i_2_n_5 ;
  wire \spi_addr_wrap_1_reg[7]_i_2_n_6 ;
  wire \spi_addr_wrap_1_reg[7]_i_2_n_7 ;
  wire \spi_addr_wrap_1_reg[8]_i_2_n_0 ;
  wire \spi_addr_wrap_1_reg[8]_i_2_n_1 ;
  wire \spi_addr_wrap_1_reg[8]_i_2_n_2 ;
  wire \spi_addr_wrap_1_reg[8]_i_2_n_3 ;
  wire \spi_addr_wrap_1_reg[8]_i_3_n_0 ;
  wire \spi_addr_wrap_1_reg[8]_i_3_n_1 ;
  wire \spi_addr_wrap_1_reg[8]_i_3_n_2 ;
  wire \spi_addr_wrap_1_reg[8]_i_3_n_3 ;
  wire \spi_addr_wrap_1_reg[8]_i_3_n_4 ;
  wire \spi_addr_wrap_1_reg[8]_i_3_n_5 ;
  wire \spi_addr_wrap_1_reg[8]_i_3_n_6 ;
  wire \spi_addr_wrap_1_reg[8]_i_3_n_7 ;
  wire [0:0]ss_o;
  wire ss_t;
  wire start_after_wrap;
  wire start_after_wrap_d1;
  wire store_date_in_drr_fifo_d1;
  wire store_date_in_drr_fifo_d2;
  wire store_date_in_drr_fifo_d3;
  wire transfer_start;
  wire transfer_start_d1;
  wire transfer_start_d2;
  wire two_byte_xfer;
  wire type_of_burst;
  wire [1:0]wb_cntrl_ns;
  wire wr_rst_busy;
  wire wrap_around_d1;
  wire wrap_around_d2;
  wire wrap_around_d3;
  wire wrap_around_i_11_n_0;
  wire wrap_around_i_2_n_0;
  wire wrap_around_i_7_n_0;
  wire wrap_around_i_9_n_0;
  wire wrap_around_reg_n_0;
  wire xip_sm_ns;
  wire xip_sm_ps;
  wire [3:2]\NLW_spi_addr_wrap_1_reg[23]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_spi_addr_wrap_1_reg[23]_i_2_O_UNCONNECTED ;
  wire [3:2]\NLW_spi_addr_wrap_1_reg[23]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_spi_addr_wrap_1_reg[23]_i_3_O_UNCONNECTED ;
  wire [3:3]\NLW_spi_addr_wrap_1_reg[23]_i_4_CO_UNCONNECTED ;

  FDRE \AXI_24_BIT_ADDR_STORE_GEN.Transmit_addr_int_reg[0] 
       (.C(s_axi4_aclk),
        .CE(load_axi_data_frm_axi_clk),
        .D(s_axi4_araddr[0]),
        .Q(Transmit_addr_int[0]),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE \AXI_24_BIT_ADDR_STORE_GEN.Transmit_addr_int_reg[10] 
       (.C(s_axi4_aclk),
        .CE(load_axi_data_frm_axi_clk),
        .D(s_axi4_araddr[10]),
        .Q(Transmit_addr_int[10]),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE \AXI_24_BIT_ADDR_STORE_GEN.Transmit_addr_int_reg[11] 
       (.C(s_axi4_aclk),
        .CE(load_axi_data_frm_axi_clk),
        .D(s_axi4_araddr[11]),
        .Q(Transmit_addr_int[11]),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE \AXI_24_BIT_ADDR_STORE_GEN.Transmit_addr_int_reg[12] 
       (.C(s_axi4_aclk),
        .CE(load_axi_data_frm_axi_clk),
        .D(s_axi4_araddr[12]),
        .Q(Transmit_addr_int[12]),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE \AXI_24_BIT_ADDR_STORE_GEN.Transmit_addr_int_reg[13] 
       (.C(s_axi4_aclk),
        .CE(load_axi_data_frm_axi_clk),
        .D(s_axi4_araddr[13]),
        .Q(Transmit_addr_int[13]),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE \AXI_24_BIT_ADDR_STORE_GEN.Transmit_addr_int_reg[14] 
       (.C(s_axi4_aclk),
        .CE(load_axi_data_frm_axi_clk),
        .D(s_axi4_araddr[14]),
        .Q(Transmit_addr_int[14]),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE \AXI_24_BIT_ADDR_STORE_GEN.Transmit_addr_int_reg[15] 
       (.C(s_axi4_aclk),
        .CE(load_axi_data_frm_axi_clk),
        .D(s_axi4_araddr[15]),
        .Q(Transmit_addr_int[15]),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE \AXI_24_BIT_ADDR_STORE_GEN.Transmit_addr_int_reg[16] 
       (.C(s_axi4_aclk),
        .CE(load_axi_data_frm_axi_clk),
        .D(s_axi4_araddr[16]),
        .Q(Transmit_addr_int[16]),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE \AXI_24_BIT_ADDR_STORE_GEN.Transmit_addr_int_reg[17] 
       (.C(s_axi4_aclk),
        .CE(load_axi_data_frm_axi_clk),
        .D(s_axi4_araddr[17]),
        .Q(Transmit_addr_int[17]),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE \AXI_24_BIT_ADDR_STORE_GEN.Transmit_addr_int_reg[18] 
       (.C(s_axi4_aclk),
        .CE(load_axi_data_frm_axi_clk),
        .D(s_axi4_araddr[18]),
        .Q(Transmit_addr_int[18]),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE \AXI_24_BIT_ADDR_STORE_GEN.Transmit_addr_int_reg[19] 
       (.C(s_axi4_aclk),
        .CE(load_axi_data_frm_axi_clk),
        .D(s_axi4_araddr[19]),
        .Q(Transmit_addr_int[19]),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE \AXI_24_BIT_ADDR_STORE_GEN.Transmit_addr_int_reg[1] 
       (.C(s_axi4_aclk),
        .CE(load_axi_data_frm_axi_clk),
        .D(s_axi4_araddr[1]),
        .Q(Transmit_addr_int[1]),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE \AXI_24_BIT_ADDR_STORE_GEN.Transmit_addr_int_reg[20] 
       (.C(s_axi4_aclk),
        .CE(load_axi_data_frm_axi_clk),
        .D(s_axi4_araddr[20]),
        .Q(Transmit_addr_int[20]),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE \AXI_24_BIT_ADDR_STORE_GEN.Transmit_addr_int_reg[21] 
       (.C(s_axi4_aclk),
        .CE(load_axi_data_frm_axi_clk),
        .D(s_axi4_araddr[21]),
        .Q(Transmit_addr_int[21]),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE \AXI_24_BIT_ADDR_STORE_GEN.Transmit_addr_int_reg[22] 
       (.C(s_axi4_aclk),
        .CE(load_axi_data_frm_axi_clk),
        .D(s_axi4_araddr[22]),
        .Q(Transmit_addr_int[22]),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE \AXI_24_BIT_ADDR_STORE_GEN.Transmit_addr_int_reg[23] 
       (.C(s_axi4_aclk),
        .CE(load_axi_data_frm_axi_clk),
        .D(s_axi4_araddr[23]),
        .Q(Transmit_addr_int[23]),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE \AXI_24_BIT_ADDR_STORE_GEN.Transmit_addr_int_reg[2] 
       (.C(s_axi4_aclk),
        .CE(load_axi_data_frm_axi_clk),
        .D(s_axi4_araddr[2]),
        .Q(Transmit_addr_int[2]),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE \AXI_24_BIT_ADDR_STORE_GEN.Transmit_addr_int_reg[3] 
       (.C(s_axi4_aclk),
        .CE(load_axi_data_frm_axi_clk),
        .D(s_axi4_araddr[3]),
        .Q(Transmit_addr_int[3]),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE \AXI_24_BIT_ADDR_STORE_GEN.Transmit_addr_int_reg[4] 
       (.C(s_axi4_aclk),
        .CE(load_axi_data_frm_axi_clk),
        .D(s_axi4_araddr[4]),
        .Q(Transmit_addr_int[4]),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE \AXI_24_BIT_ADDR_STORE_GEN.Transmit_addr_int_reg[5] 
       (.C(s_axi4_aclk),
        .CE(load_axi_data_frm_axi_clk),
        .D(s_axi4_araddr[5]),
        .Q(Transmit_addr_int[5]),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE \AXI_24_BIT_ADDR_STORE_GEN.Transmit_addr_int_reg[6] 
       (.C(s_axi4_aclk),
        .CE(load_axi_data_frm_axi_clk),
        .D(s_axi4_araddr[6]),
        .Q(Transmit_addr_int[6]),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE \AXI_24_BIT_ADDR_STORE_GEN.Transmit_addr_int_reg[7] 
       (.C(s_axi4_aclk),
        .CE(load_axi_data_frm_axi_clk),
        .D(s_axi4_araddr[7]),
        .Q(Transmit_addr_int[7]),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE \AXI_24_BIT_ADDR_STORE_GEN.Transmit_addr_int_reg[8] 
       (.C(s_axi4_aclk),
        .CE(load_axi_data_frm_axi_clk),
        .D(s_axi4_araddr[8]),
        .Q(Transmit_addr_int[8]),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE \AXI_24_BIT_ADDR_STORE_GEN.Transmit_addr_int_reg[9] 
       (.C(s_axi4_aclk),
        .CE(load_axi_data_frm_axi_clk),
        .D(s_axi4_araddr[9]),
        .Q(Transmit_addr_int[9]),
        .R(bus2ip_reset_ipif4_inverted));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps[0]_i_3 
       (.I0(\SR_5_TX_EMPTY_24_BIT_ADDR_GEN.SR_5_Tx_Empty_reg_0 ),
        .I1(new_tr),
        .I2(transfer_start),
        .O(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4000FFFF40004000)) 
    \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps[1]_i_1 
       (.I0(\SR_5_TX_EMPTY_24_BIT_ADDR_GEN.SR_5_Tx_Empty_reg_0 ),
        .I1(new_tr),
        .I2(transfer_start),
        .I3(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[0]_0 ),
        .I4(p_33_in),
        .I5(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[1] ),
        .O(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44F4444444444444)) 
    \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps[2]_i_1 
       (.I0(\SR_5_TX_EMPTY_24_BIT_ADDR_GEN.SR_5_Tx_Empty_reg_0 ),
        .I1(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[2] ),
        .I2(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[1] ),
        .I3(SPIXfer_done_int_d1),
        .I4(SPIXfer_done_int),
        .I5(hpm_under_process_d1),
        .O(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT5 #(
    .INIT(32'hAAAAAEAA)) 
    \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps[3]_i_1 
       (.I0(\RATIO_OF_2_GENERATE.QSPI_IO0_T_i_2_n_0 ),
        .I1(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[1] ),
        .I2(SPIXfer_done_int_d1),
        .I3(SPIXfer_done_int),
        .I4(hpm_under_process_d1),
        .O(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88F888F888FF88F8)) 
    \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps[4]_i_1 
       (.I0(pr_state_addr_ph),
        .I1(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps[4]_i_2_n_0 ),
        .I2(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[5] ),
        .I3(\SR_5_TX_EMPTY_24_BIT_ADDR_GEN.SR_5_Tx_Empty_reg_0 ),
        .I4(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[4] ),
        .I5(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps[4]_i_3_n_0 ),
        .O(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps[4]_i_2 
       (.I0(\RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.addr_cnt_reg [1]),
        .I1(\RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.addr_cnt_reg [0]),
        .I2(\RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.addr_cnt_reg [2]),
        .O(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps[4]_i_3 
       (.I0(wrap_around_d2),
        .I1(wrap_around_d3),
        .O(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps[4]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "addr_send:001000,temp_addr_send:0100,hpm_dummy:000100,cmd_send:000010,idle:000001,data_receive:010000,temp_data_send:0110,temp_data_receive:100000,data_send:0101" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[0] 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_109),
        .Q(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[0]_0 ),
        .S(Rst_to_spi));
  (* FSM_ENCODED_STATES = "addr_send:001000,temp_addr_send:0100,hpm_dummy:000100,cmd_send:000010,idle:000001,data_receive:010000,temp_data_send:0110,temp_data_receive:100000,data_send:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[1] 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps[1]_i_1_n_0 ),
        .Q(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[1] ),
        .R(Rst_to_spi));
  (* FSM_ENCODED_STATES = "addr_send:001000,temp_addr_send:0100,hpm_dummy:000100,cmd_send:000010,idle:000001,data_receive:010000,temp_data_send:0110,temp_data_receive:100000,data_send:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[2] 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps[2]_i_1_n_0 ),
        .Q(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[2] ),
        .R(Rst_to_spi));
  (* FSM_ENCODED_STATES = "addr_send:001000,temp_addr_send:0100,hpm_dummy:000100,cmd_send:000010,idle:000001,data_receive:010000,temp_data_send:0110,temp_data_receive:100000,data_send:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[3] 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps[3]_i_1_n_0 ),
        .Q(pr_state_addr_ph),
        .R(Rst_to_spi));
  (* FSM_ENCODED_STATES = "addr_send:001000,temp_addr_send:0100,hpm_dummy:000100,cmd_send:000010,idle:000001,data_receive:010000,temp_data_send:0110,temp_data_receive:100000,data_send:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[4] 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps[4]_i_1_n_0 ),
        .Q(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[4] ),
        .R(Rst_to_spi));
  (* FSM_ENCODED_STATES = "addr_send:001000,temp_addr_send:0100,hpm_dummy:000100,cmd_send:000010,idle:000001,data_receive:010000,temp_data_send:0110,temp_data_receive:100000,data_send:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5] 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_108),
        .Q(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[5] ),
        .R(Rst_to_spi));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'h15)) 
    \FSM_sequential_QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.wb_cntrl_ps[0]_i_1 
       (.I0(Q[1]),
        .I1(\SR_5_TX_EMPTY_24_BIT_ADDR_GEN.SR_5_Tx_Empty_reg_0 ),
        .I2(Q[0]),
        .O(wb_cntrl_ns[0]));
  (* FSM_ENCODED_STATES = "wb_wr_hpm:01,wb_done:10,wb_idle:00" *) 
  FDRE \FSM_sequential_QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.wb_cntrl_ps_reg[0] 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(wb_cntrl_ns[0]),
        .Q(Q[0]),
        .R(Rst_to_spi));
  (* FSM_ENCODED_STATES = "wb_wr_hpm:01,wb_done:10,wb_idle:00" *) 
  FDRE \FSM_sequential_QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.wb_cntrl_ps_reg[1] 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(wb_cntrl_ns[1]),
        .Q(Q[1]),
        .R(Rst_to_spi));
  icyradio_axi_quad_spi_0_0_qspi_address_decoder I_DECODER
       (.\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 (XIP_CLK_DOMAIN_SIGNALS_n_73),
        .SS_frm_axi(SS_frm_axi),
        .s_axi4_aclk(s_axi4_aclk));
  LUT3 #(
    .INIT(8'hFE)) 
    \LEN_CNTR_24_BIT_GEN.length_cntr[3]_i_2 
       (.I0(\LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[2] ),
        .I1(\LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[0] ),
        .I2(\LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[1] ),
        .O(\LEN_CNTR_24_BIT_GEN.length_cntr[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \LEN_CNTR_24_BIT_GEN.length_cntr[4]_i_2 
       (.I0(\LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[3] ),
        .I1(\LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[1] ),
        .I2(\LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[0] ),
        .I3(\LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[2] ),
        .O(\LEN_CNTR_24_BIT_GEN.length_cntr[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \LEN_CNTR_24_BIT_GEN.length_cntr[5]_i_2 
       (.I0(\LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[4] ),
        .I1(\LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[2] ),
        .I2(\LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[0] ),
        .I3(\LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[1] ),
        .I4(\LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[3] ),
        .O(\LEN_CNTR_24_BIT_GEN.length_cntr[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \LEN_CNTR_24_BIT_GEN.length_cntr[7]_i_3 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\LEN_CNTR_24_BIT_GEN.length_cntr[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \LEN_CNTR_24_BIT_GEN.length_cntr[7]_i_4 
       (.I0(\LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[5] ),
        .I1(\LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[3] ),
        .I2(\LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[1] ),
        .I3(\LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[0] ),
        .I4(\LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[2] ),
        .I5(\LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[4] ),
        .O(\LEN_CNTR_24_BIT_GEN.length_cntr[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h54)) 
    \LEN_CNTR_24_BIT_GEN.length_cntr[7]_i_5 
       (.I0(Rst_to_spi),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\LEN_CNTR_24_BIT_GEN.length_cntr[7]_i_5_n_0 ));
  FDRE \LEN_CNTR_24_BIT_GEN.length_cntr_reg[0] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_35),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_43),
        .Q(\LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \LEN_CNTR_24_BIT_GEN.length_cntr_reg[1] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_35),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_42),
        .Q(\LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \LEN_CNTR_24_BIT_GEN.length_cntr_reg[2] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_35),
        .D(length_cntr[2]),
        .Q(\LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \LEN_CNTR_24_BIT_GEN.length_cntr_reg[3] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_35),
        .D(length_cntr[3]),
        .Q(\LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \LEN_CNTR_24_BIT_GEN.length_cntr_reg[4] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_35),
        .D(length_cntr[4]),
        .Q(\LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \LEN_CNTR_24_BIT_GEN.length_cntr_reg[5] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_35),
        .D(length_cntr[5]),
        .Q(\LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \LEN_CNTR_24_BIT_GEN.length_cntr_reg[6] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_35),
        .D(length_cntr[6]),
        .Q(\LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_35),
        .D(length_cntr[7]),
        .Q(\LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[7] ),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.CPHA_CPOL_ERR_AXI2AXI4_1 
       (.C(s_axi4_aclk),
        .CE(1'b1),
        .D(XIPSR_CPHA_CPOL_ERR_d1),
        .Q(XIPSR_CPHA_CPOL_ERR_d2),
        .R(bus2ip_reset_ipif4_inverted));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.CPHA_CPOL_ERR_AXI2AXI4_CDC 
       (.C(s_axi4_aclk),
        .CE(1'b1),
        .D(\LOGIC_GENERATION_FDR.CPHA_CPOL_ERR_AXI2AXI4_CDC_0 ),
        .Q(XIPSR_CPHA_CPOL_ERR_d1),
        .R(bus2ip_reset_ipif4_inverted));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.XIP_TRANS_ERROR_AXI2AXI4_1 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(XIP_trans_error_d1),
        .Q(XIP_trans_error_d2),
        .R(bus2ip_reset_ipif_inverted));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.XIP_TRANS_ERROR_AXI2AXI4_2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(XIP_trans_error_d2),
        .Q(XIP_trans_error_d3),
        .R(bus2ip_reset_ipif_inverted));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.XIP_TRANS_ERROR_AXI2AXI4_CDC 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D_0),
        .Q(XIP_trans_error_d1),
        .R(bus2ip_reset_ipif_inverted));
  LUT4 #(
    .INIT(16'hAA9A)) 
    \LOGIC_GENERATION_FDR.XIP_trans_error_int_2_i_1 
       (.I0(D_0),
        .I1(s_axi4_arburst[0]),
        .I2(s_axi4_arvalid),
        .I3(s_axi4_arburst[1]),
        .O(D03_out));
  FDRE \LOGIC_GENERATION_FDR.XIP_trans_error_int_2_reg 
       (.C(s_axi4_aclk),
        .CE(1'b1),
        .D(D03_out),
        .Q(D_0),
        .R(bus2ip_reset_ipif4_inverted));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[23]_i_4 
       (.I0(hw_wd_cntr[1]),
        .I1(hw_wd_cntr[0]),
        .O(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[23]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[7]_i_3 
       (.I0(hw_wd_cntr[0]),
        .I1(hw_wd_cntr[1]),
        .O(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[7]_i_3_n_0 ));
  FDRE \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[0] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_107),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_141),
        .Q(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[0] ),
        .R(load_axi_data_to_spi_clk));
  FDRE \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[10] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_106),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_131),
        .Q(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[10] ),
        .R(load_axi_data_to_spi_clk));
  FDRE \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[11] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_106),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_130),
        .Q(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[11] ),
        .R(load_axi_data_to_spi_clk));
  FDRE \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[12] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_106),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_129),
        .Q(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[12] ),
        .R(load_axi_data_to_spi_clk));
  FDRE \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[13] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_106),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_128),
        .Q(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[13] ),
        .R(load_axi_data_to_spi_clk));
  FDRE \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[14] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_106),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_127),
        .Q(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[14] ),
        .R(load_axi_data_to_spi_clk));
  FDRE \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[15] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_106),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_126),
        .Q(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[15] ),
        .R(load_axi_data_to_spi_clk));
  FDRE \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[16] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_105),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_125),
        .Q(p_5_in[0]),
        .R(load_axi_data_to_spi_clk));
  FDRE \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[17] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_105),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_124),
        .Q(p_5_in[1]),
        .R(load_axi_data_to_spi_clk));
  FDRE \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[18] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_105),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_123),
        .Q(p_5_in[2]),
        .R(load_axi_data_to_spi_clk));
  FDRE \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[19] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_105),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_122),
        .Q(p_5_in[3]),
        .R(load_axi_data_to_spi_clk));
  FDRE \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[1] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_107),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_140),
        .Q(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[1] ),
        .R(load_axi_data_to_spi_clk));
  FDRE \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[20] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_105),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_121),
        .Q(p_5_in[4]),
        .R(load_axi_data_to_spi_clk));
  FDRE \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[21] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_105),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_120),
        .Q(p_5_in[5]),
        .R(load_axi_data_to_spi_clk));
  FDRE \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[22] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_105),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_119),
        .Q(p_5_in[6]),
        .R(load_axi_data_to_spi_clk));
  FDRE \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[23] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_105),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_118),
        .Q(p_5_in[7]),
        .R(load_axi_data_to_spi_clk));
  FDRE \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[24] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_104),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_117),
        .Q(p_5_in[8]),
        .R(load_axi_data_to_spi_clk));
  FDRE \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[25] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_104),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_116),
        .Q(p_5_in[9]),
        .R(load_axi_data_to_spi_clk));
  FDRE \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[26] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_104),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_115),
        .Q(p_5_in[10]),
        .R(load_axi_data_to_spi_clk));
  FDRE \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[27] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_104),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_114),
        .Q(p_5_in[11]),
        .R(load_axi_data_to_spi_clk));
  FDRE \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[28] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_104),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_113),
        .Q(p_5_in[12]),
        .R(load_axi_data_to_spi_clk));
  FDRE \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[29] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_104),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_112),
        .Q(p_5_in[13]),
        .R(load_axi_data_to_spi_clk));
  FDRE \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[2] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_107),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_139),
        .Q(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[2] ),
        .R(load_axi_data_to_spi_clk));
  FDRE \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[30] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_104),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_111),
        .Q(p_5_in[14]),
        .R(load_axi_data_to_spi_clk));
  FDRE \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_104),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_110),
        .Q(p_5_in[15]),
        .R(load_axi_data_to_spi_clk));
  FDRE \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[3] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_107),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_138),
        .Q(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[3] ),
        .R(load_axi_data_to_spi_clk));
  FDRE \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[4] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_107),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_137),
        .Q(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[4] ),
        .R(load_axi_data_to_spi_clk));
  FDRE \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[5] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_107),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_136),
        .Q(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[5] ),
        .R(load_axi_data_to_spi_clk));
  FDRE \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[6] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_107),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_135),
        .Q(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[6] ),
        .R(load_axi_data_to_spi_clk));
  FDRE \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[7] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_107),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_134),
        .Q(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[7] ),
        .R(load_axi_data_to_spi_clk));
  FDRE \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[8] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_106),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_133),
        .Q(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[8] ),
        .R(load_axi_data_to_spi_clk));
  FDRE \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[9] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_106),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_132),
        .Q(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[9] ),
        .R(load_axi_data_to_spi_clk));
  FDRE \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[0] 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_55),
        .Q(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[1] 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_56),
        .Q(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[2] 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_54),
        .Q(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg_n_0_[2] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h08)) 
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_sent_i_2 
       (.I0(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg_n_0_[2] ),
        .I1(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg_n_0_[1] ),
        .I2(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg_n_0_[0] ),
        .O(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[2]_0 ));
  FDRE \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_sent_reg 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_sent_reg_0 ),
        .Q(cmd_addr_sent),
        .R(cmd_addr_cntr1));
  FDRE \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.hpm_under_process_d1_reg 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(wb_cntrl_ns[0]),
        .Q(hpm_under_process_d1),
        .R(Rst_to_spi));
  LUT2 #(
    .INIT(4'h8)) 
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.hw_wd_cntr[0]_i_2 
       (.I0(cmd_addr_sent),
        .I1(SPIXfer_done_int_pulse_d2),
        .O(hw_wd_cntr0));
  FDRE \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.hw_wd_cntr_reg[0] 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_58),
        .Q(hw_wd_cntr[0]),
        .R(1'b0));
  FDRE \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.hw_wd_cntr_reg[1] 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_57),
        .Q(hw_wd_cntr[1]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFB08)) 
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[0]_i_1 
       (.I0(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[7] ),
        .I1(SPIXfer_done_int),
        .I2(SPIXfer_done_int_d1),
        .I3(io0_i_sync),
        .O(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[1]_i_1 
       (.I0(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[6] ),
        .I1(SPIXfer_done_int),
        .I2(SPIXfer_done_int_d1),
        .I3(io1_i_sync),
        .O(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[2]_i_1 
       (.I0(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[5] ),
        .I1(SPIXfer_done_int),
        .I2(SPIXfer_done_int_d1),
        .I3(io2_i_sync),
        .O(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[3]_i_1 
       (.I0(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[4] ),
        .I1(SPIXfer_done_int),
        .I2(SPIXfer_done_int_d1),
        .I3(io3_i_sync),
        .O(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[4]_i_1 
       (.I0(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[3] ),
        .I1(SPIXfer_done_int),
        .I2(SPIXfer_done_int_d1),
        .I3(receive_Data_int[0]),
        .O(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[5]_i_1 
       (.I0(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[2] ),
        .I1(SPIXfer_done_int),
        .I2(SPIXfer_done_int_d1),
        .I3(receive_Data_int[1]),
        .O(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[6]_i_1 
       (.I0(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[1] ),
        .I1(SPIXfer_done_int),
        .I2(SPIXfer_done_int_d1),
        .I3(receive_Data_int[2]),
        .O(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF444)) 
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[7]_i_2 
       (.I0(SPIXfer_done_int_d1),
        .I1(SPIXfer_done_int),
        .I2(SPIXfer_done_int_pulse_d1),
        .I3(cmd_addr_sent),
        .O(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[7]_i_3 
       (.I0(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[0] ),
        .I1(SPIXfer_done_int),
        .I2(SPIXfer_done_int_d1),
        .I3(receive_Data_int[3]),
        .O(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[7]_i_3_n_0 ));
  FDRE \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[0] 
       (.C(ext_spi_clk),
        .CE(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[7]_i_2_n_0 ),
        .D(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[0]_i_1_n_0 ),
        .Q(receive_Data_int[0]),
        .R(load_axi_data_to_spi_clk));
  FDRE \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[1] 
       (.C(ext_spi_clk),
        .CE(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[7]_i_2_n_0 ),
        .D(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[1]_i_1_n_0 ),
        .Q(receive_Data_int[1]),
        .R(load_axi_data_to_spi_clk));
  FDRE \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[2] 
       (.C(ext_spi_clk),
        .CE(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[7]_i_2_n_0 ),
        .D(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[2]_i_1_n_0 ),
        .Q(receive_Data_int[2]),
        .R(load_axi_data_to_spi_clk));
  FDRE \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[3] 
       (.C(ext_spi_clk),
        .CE(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[7]_i_2_n_0 ),
        .D(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[3]_i_1_n_0 ),
        .Q(receive_Data_int[3]),
        .R(load_axi_data_to_spi_clk));
  FDRE \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[4] 
       (.C(ext_spi_clk),
        .CE(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[7]_i_2_n_0 ),
        .D(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[4]_i_1_n_0 ),
        .Q(receive_Data_int[4]),
        .R(load_axi_data_to_spi_clk));
  FDRE \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[5] 
       (.C(ext_spi_clk),
        .CE(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[7]_i_2_n_0 ),
        .D(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[5]_i_1_n_0 ),
        .Q(receive_Data_int[5]),
        .R(load_axi_data_to_spi_clk));
  FDRE \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[6] 
       (.C(ext_spi_clk),
        .CE(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[7]_i_2_n_0 ),
        .D(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[6]_i_1_n_0 ),
        .Q(receive_Data_int[6]),
        .R(load_axi_data_to_spi_clk));
  FDRE \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7] 
       (.C(ext_spi_clk),
        .CE(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[7]_i_2_n_0 ),
        .D(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[7]_i_3_n_0 ),
        .Q(receive_Data_int[7]),
        .R(load_axi_data_to_spi_clk));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \RATIO_OF_2_GENERATE.Count[0]_i_1 
       (.I0(\RATIO_OF_2_GENERATE.Count_reg[0]_0 ),
        .O(SPIXfer_done_int1));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \RATIO_OF_2_GENERATE.Count[1]_i_1 
       (.I0(\RATIO_OF_2_GENERATE.Count_reg [1]),
        .I1(\RATIO_OF_2_GENERATE.Count_reg[0]_0 ),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \RATIO_OF_2_GENERATE.Count[2]_i_1 
       (.I0(\RATIO_OF_2_GENERATE.Count_reg [2]),
        .I1(\RATIO_OF_2_GENERATE.Count_reg[0]_0 ),
        .I2(\RATIO_OF_2_GENERATE.Count_reg [1]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \RATIO_OF_2_GENERATE.Count[3]_i_1 
       (.I0(\RATIO_OF_2_GENERATE.Count_reg [3]),
        .I1(\RATIO_OF_2_GENERATE.Count_reg [1]),
        .I2(\RATIO_OF_2_GENERATE.Count_reg[0]_0 ),
        .I3(\RATIO_OF_2_GENERATE.Count_reg [2]),
        .O(plusOp[3]));
  LUT5 #(
    .INIT(32'hFFFFF2FF)) 
    \RATIO_OF_2_GENERATE.Count[4]_i_1 
       (.I0(wrap_around_d3),
        .I1(wrap_around_d2),
        .I2(Rst_to_spi),
        .I3(transfer_start),
        .I4(SPIXfer_done_int),
        .O(\RATIO_OF_2_GENERATE.Count[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \RATIO_OF_2_GENERATE.Count[4]_i_3 
       (.I0(\RATIO_OF_2_GENERATE.Count_reg [2]),
        .I1(\RATIO_OF_2_GENERATE.Count_reg [3]),
        .I2(\RATIO_OF_2_GENERATE.Count_reg [1]),
        .I3(\RATIO_OF_2_GENERATE.Count_reg[0]_0 ),
        .O(plusOp[4]));
  FDRE \RATIO_OF_2_GENERATE.Count_reg[0] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_83),
        .D(SPIXfer_done_int1),
        .Q(\RATIO_OF_2_GENERATE.Count_reg[0]_0 ),
        .R(\RATIO_OF_2_GENERATE.Count[4]_i_1_n_0 ));
  FDRE \RATIO_OF_2_GENERATE.Count_reg[1] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_83),
        .D(plusOp[1]),
        .Q(\RATIO_OF_2_GENERATE.Count_reg [1]),
        .R(\RATIO_OF_2_GENERATE.Count[4]_i_1_n_0 ));
  FDRE \RATIO_OF_2_GENERATE.Count_reg[2] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_83),
        .D(plusOp[2]),
        .Q(\RATIO_OF_2_GENERATE.Count_reg [2]),
        .R(\RATIO_OF_2_GENERATE.Count[4]_i_1_n_0 ));
  FDRE \RATIO_OF_2_GENERATE.Count_reg[3] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_83),
        .D(plusOp[3]),
        .Q(\RATIO_OF_2_GENERATE.Count_reg [3]),
        .R(\RATIO_OF_2_GENERATE.Count[4]_i_1_n_0 ));
  FDRE \RATIO_OF_2_GENERATE.Count_reg[4] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_83),
        .D(plusOp[4]),
        .Q(\RATIO_OF_2_GENERATE.Count_reg__0 ),
        .R(\RATIO_OF_2_GENERATE.Count[4]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    \RATIO_OF_2_GENERATE.QSPI_IO0_T 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\RATIO_OF_2_GENERATE.QSPI_IO0_T_i_1_n_0 ),
        .Q(io0_t),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0001)) 
    \RATIO_OF_2_GENERATE.QSPI_IO0_T_i_1 
       (.I0(\RATIO_OF_2_GENERATE.QSPI_IO0_T_i_2_n_0 ),
        .I1(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[1] ),
        .I2(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[2] ),
        .I3(\RATIO_OF_2_GENERATE.QSPI_IO0_T_i_3_n_0 ),
        .O(\RATIO_OF_2_GENERATE.QSPI_IO0_T_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'h8AAA)) 
    \RATIO_OF_2_GENERATE.QSPI_IO0_T_i_2 
       (.I0(pr_state_addr_ph),
        .I1(\RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.addr_cnt_reg [2]),
        .I2(\RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.addr_cnt_reg [0]),
        .I3(\RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.addr_cnt_reg [1]),
        .O(\RATIO_OF_2_GENERATE.QSPI_IO0_T_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \RATIO_OF_2_GENERATE.QSPI_IO0_T_i_3 
       (.I0(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[0]_0 ),
        .I1(transfer_start),
        .I2(new_tr),
        .I3(\SR_5_TX_EMPTY_24_BIT_ADDR_GEN.SR_5_Tx_Empty_reg_0 ),
        .O(\RATIO_OF_2_GENERATE.QSPI_IO0_T_i_3_n_0 ));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    \RATIO_OF_2_GENERATE.QSPI_IO1_T 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\RATIO_OF_2_GENERATE.QSPI_IO1_T_i_1_n_0 ),
        .Q(io1_t),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'h08FF)) 
    \RATIO_OF_2_GENERATE.QSPI_IO1_T_i_1 
       (.I0(\RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.addr_cnt_reg [1]),
        .I1(\RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.addr_cnt_reg [0]),
        .I2(\RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.addr_cnt_reg [2]),
        .I3(pr_state_addr_ph),
        .O(\RATIO_OF_2_GENERATE.QSPI_IO1_T_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    \RATIO_OF_2_GENERATE.QSPI_MODE_2_T_CONTROL.QSPI_IO2_T 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\RATIO_OF_2_GENERATE.QSPI_IO1_T_i_1_n_0 ),
        .Q(io2_t),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    \RATIO_OF_2_GENERATE.QSPI_MODE_2_T_CONTROL.QSPI_IO3_T 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\RATIO_OF_2_GENERATE.QSPI_IO1_T_i_1_n_0 ),
        .Q(io3_t),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    \RATIO_OF_2_GENERATE.QSPI_SS_T 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\RATIO_OF_2_GENERATE.QSPI_SS_T_i_1_n_0 ),
        .Q(ss_t),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h5D)) 
    \RATIO_OF_2_GENERATE.QSPI_SS_T_i_1 
       (.I0(transfer_start),
        .I1(wrap_around_d1),
        .I2(wrap_around_d2),
        .O(\RATIO_OF_2_GENERATE.QSPI_SS_T_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_0_i_2 
       (.I0(\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg_n_0_[0] ),
        .I1(\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg_n_0_[3] ),
        .I2(SPIXfer_done_int_d1_reg_0),
        .I3(Transmit_Data[0]),
        .I4(\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_3_i_4_n_0 ),
        .I5(Transmit_Data[3]),
        .O(\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg[0]_0 ));
  FDRE \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_0_reg 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_0_reg_0 ),
        .Q(io0_o),
        .R(Rst_to_spi));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_1_i_2 
       (.I0(SPIXfer_done_int_d1),
        .I1(transfer_start_d1),
        .I2(transfer_start),
        .O(SPIXfer_done_int_d1_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT5 #(
    .INIT(32'h0000A2AA)) 
    \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_1_i_3 
       (.I0(transfer_start),
        .I1(transfer_start_d1),
        .I2(SPIXfer_done_int_d1),
        .I3(\RATIO_OF_2_GENERATE.Count_reg[0]_0 ),
        .I4(\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_3_i_4_n_0 ),
        .O(Serial_Dout_1));
  FDRE \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_1_reg 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_1_reg_0 ),
        .Q(io1_o),
        .R(Rst_to_spi));
  FDRE \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_2_reg 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_2_reg_0 ),
        .Q(io2_o),
        .R(Rst_to_spi));
  LUT5 #(
    .INIT(32'h00003B08)) 
    \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_3_i_1 
       (.I0(\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_3_i_2_n_0 ),
        .I1(Serial_Dout_09_out),
        .I2(\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_3_i_4_n_0 ),
        .I3(io3_o),
        .I4(Rst_to_spi),
        .O(\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_3_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT5 #(
    .INIT(32'hEFEE2022)) 
    \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_3_i_2 
       (.I0(\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg_n_0_[0] ),
        .I1(SPIXfer_done_int_d1),
        .I2(transfer_start_d1),
        .I3(transfer_start),
        .I4(Transmit_Data[0]),
        .O(\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_3_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'hDF00)) 
    \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_3_i_3 
       (.I0(\RATIO_OF_2_GENERATE.Count_reg[0]_0 ),
        .I1(SPIXfer_done_int_d1),
        .I2(transfer_start_d1),
        .I3(transfer_start),
        .O(Serial_Dout_09_out));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_3_i_4 
       (.I0(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[5] ),
        .I1(pr_state_addr_ph),
        .I2(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[4] ),
        .O(\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_3_i_4_n_0 ));
  FDRE \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_3_reg 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_3_i_1_n_0 ),
        .Q(io3_o),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hEF00)) 
    \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg[0]_i_1 
       (.I0(\RATIO_OF_2_GENERATE.Count_reg[0]_0 ),
        .I1(SPIXfer_done_int_d1),
        .I2(transfer_start_d1),
        .I3(transfer_start),
        .O(Shift_Reg));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg[0]_i_2 
       (.I0(\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg[1]_0 [1]),
        .I1(\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_3_i_4_n_0 ),
        .I2(\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg_n_0_[4] ),
        .I3(SPIXfer_done_int_d1_reg_0),
        .I4(Transmit_Data[0]),
        .O(\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg[1]_i_1 
       (.I0(\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg[1]_0 [0]),
        .I1(\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_3_i_4_n_0 ),
        .I2(\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg_n_0_[5] ),
        .I3(SPIXfer_done_int_d1_reg_0),
        .I4(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[30]_0 [1]),
        .O(\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg[2]_i_1 
       (.I0(\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg_n_0_[3] ),
        .I1(\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_3_i_4_n_0 ),
        .I2(\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg_n_0_[6] ),
        .I3(SPIXfer_done_int_d1_reg_0),
        .I4(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[30]_0 [0]),
        .O(\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg[3]_i_1 
       (.I0(\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg_n_0_[4] ),
        .I1(\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_3_i_4_n_0 ),
        .I2(\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg_n_0_[7] ),
        .I3(SPIXfer_done_int_d1_reg_0),
        .I4(Transmit_Data[3]),
        .O(\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg[4]_i_1 
       (.I0(\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg_n_0_[5] ),
        .I1(\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_3_i_4_n_0 ),
        .I2(io3_i_sync),
        .I3(SPIXfer_done_int_d1_reg_0),
        .I4(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[27] ),
        .O(\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg[5]_i_1 
       (.I0(\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg_n_0_[6] ),
        .I1(\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_3_i_4_n_0 ),
        .I2(io2_i_sync),
        .I3(SPIXfer_done_int_d1_reg_0),
        .I4(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[26] ),
        .O(\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg[6]_i_1 
       (.I0(\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg_n_0_[7] ),
        .I1(\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_3_i_4_n_0 ),
        .I2(io1_i_sync),
        .I3(SPIXfer_done_int_d1_reg_0),
        .I4(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[25] ),
        .O(\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg[7]_i_1 
       (.I0(io1_i_sync),
        .I1(\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_3_i_4_n_0 ),
        .I2(io0_i_sync),
        .I3(SPIXfer_done_int_d1_reg_0),
        .I4(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[24] ),
        .O(\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg[7]_i_1_n_0 ));
  FDRE \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg[0] 
       (.C(ext_spi_clk),
        .CE(Shift_Reg),
        .D(\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg[0]_i_2_n_0 ),
        .Q(\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg_n_0_[0] ),
        .R(Rst_to_spi));
  FDRE \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg[1] 
       (.C(ext_spi_clk),
        .CE(Shift_Reg),
        .D(\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg[1]_i_1_n_0 ),
        .Q(\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg[1]_0 [1]),
        .R(Rst_to_spi));
  FDRE \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg[2] 
       (.C(ext_spi_clk),
        .CE(Shift_Reg),
        .D(\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg[2]_i_1_n_0 ),
        .Q(\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg[1]_0 [0]),
        .R(Rst_to_spi));
  FDRE \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg[3] 
       (.C(ext_spi_clk),
        .CE(Shift_Reg),
        .D(\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg[3]_i_1_n_0 ),
        .Q(\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg_n_0_[3] ),
        .R(Rst_to_spi));
  FDRE \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg[4] 
       (.C(ext_spi_clk),
        .CE(Shift_Reg),
        .D(\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg[4]_i_1_n_0 ),
        .Q(\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg_n_0_[4] ),
        .R(Rst_to_spi));
  FDRE \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg[5] 
       (.C(ext_spi_clk),
        .CE(Shift_Reg),
        .D(\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg[5]_i_1_n_0 ),
        .Q(\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg_n_0_[5] ),
        .R(Rst_to_spi));
  FDRE \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg[6] 
       (.C(ext_spi_clk),
        .CE(Shift_Reg),
        .D(\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg[6]_i_1_n_0 ),
        .Q(\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg_n_0_[6] ),
        .R(Rst_to_spi));
  FDRE \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg[7] 
       (.C(ext_spi_clk),
        .CE(Shift_Reg),
        .D(\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg[7]_i_1_n_0 ),
        .Q(\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg_n_0_[7] ),
        .R(Rst_to_spi));
  FDRE \RATIO_OF_2_GENERATE.SCK_O_NQ_4_STARTUP_USED.SCK_O_reg_reg 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_85),
        .Q(SCK_O_int),
        .R(1'b0));
  FDRE \RATIO_OF_2_GENERATE.SS_O_24_BIT_ADDR_GEN.SS_O_reg[0] 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_84),
        .Q(ss_o),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'hD200)) 
    \RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.addr_cnt[0]_i_1 
       (.I0(SPIXfer_done_int),
        .I1(SPIXfer_done_int_d1),
        .I2(\RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.addr_cnt_reg [0]),
        .I3(pr_state_addr_ph),
        .O(\RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.addr_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT5 #(
    .INIT(32'hDF200000)) 
    \RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.addr_cnt[1]_i_1 
       (.I0(\RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.addr_cnt_reg [0]),
        .I1(SPIXfer_done_int_d1),
        .I2(SPIXfer_done_int),
        .I3(\RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.addr_cnt_reg [1]),
        .I4(pr_state_addr_ph),
        .O(\RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.addr_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF7FF080000000000)) 
    \RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.addr_cnt[2]_i_1 
       (.I0(\RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.addr_cnt_reg [1]),
        .I1(SPIXfer_done_int),
        .I2(SPIXfer_done_int_d1),
        .I3(\RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.addr_cnt_reg [0]),
        .I4(\RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.addr_cnt_reg [2]),
        .I5(pr_state_addr_ph),
        .O(\RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.addr_cnt[2]_i_1_n_0 ));
  FDRE \RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.addr_cnt_reg[0] 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.addr_cnt[0]_i_1_n_0 ),
        .Q(\RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.addr_cnt_reg [0]),
        .R(1'b0));
  FDRE \RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.addr_cnt_reg[1] 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.addr_cnt[1]_i_1_n_0 ),
        .Q(\RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.addr_cnt_reg [1]),
        .R(1'b0));
  FDRE \RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.addr_cnt_reg[2] 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.addr_cnt[2]_i_1_n_0 ),
        .Q(\RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.addr_cnt_reg [2]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFE0002)) 
    \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[0]_i_2 
       (.I0(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[1] ),
        .I1(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[5] ),
        .I2(pr_state_addr_ph),
        .I3(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[4] ),
        .I4(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[4] ),
        .O(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0002)) 
    \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[1]_i_1 
       (.I0(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[2] ),
        .I1(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[5] ),
        .I2(pr_state_addr_ph),
        .I3(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[4] ),
        .I4(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[5] ),
        .O(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0002)) 
    \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[2]_i_1 
       (.I0(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[3] ),
        .I1(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[5] ),
        .I2(pr_state_addr_ph),
        .I3(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[4] ),
        .I4(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[6] ),
        .O(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0002)) 
    \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[3]_i_1 
       (.I0(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[4] ),
        .I1(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[5] ),
        .I2(pr_state_addr_ph),
        .I3(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[4] ),
        .I4(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[7] ),
        .O(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0002)) 
    \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[4]_i_1 
       (.I0(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[5] ),
        .I1(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[5] ),
        .I2(pr_state_addr_ph),
        .I3(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[4] ),
        .I4(io3_i_sync),
        .O(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0002)) 
    \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[5]_i_1 
       (.I0(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[6] ),
        .I1(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[5] ),
        .I2(pr_state_addr_ph),
        .I3(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[4] ),
        .I4(io2_i_sync),
        .O(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0002)) 
    \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[6]_i_1 
       (.I0(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[7] ),
        .I1(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[5] ),
        .I2(pr_state_addr_ph),
        .I3(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[4] ),
        .I4(io1_i_sync),
        .O(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT5 #(
    .INIT(32'hFFFE0002)) 
    \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[7]_i_1 
       (.I0(io1_i_sync),
        .I1(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[5] ),
        .I2(pr_state_addr_ph),
        .I3(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[4] ),
        .I4(io0_i_sync),
        .O(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[7]_i_1_n_0 ));
  FDRE \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg[0] 
       (.C(ext_spi_clk),
        .CE(E),
        .D(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[0]_i_2_n_0 ),
        .Q(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[0] ),
        .R(Rst_to_spi));
  FDRE \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg[1] 
       (.C(ext_spi_clk),
        .CE(E),
        .D(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[1]_i_1_n_0 ),
        .Q(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[1] ),
        .R(Rst_to_spi));
  FDRE \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg[2] 
       (.C(ext_spi_clk),
        .CE(E),
        .D(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[2]_i_1_n_0 ),
        .Q(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[2] ),
        .R(Rst_to_spi));
  FDRE \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg[3] 
       (.C(ext_spi_clk),
        .CE(E),
        .D(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[3]_i_1_n_0 ),
        .Q(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[3] ),
        .R(Rst_to_spi));
  FDRE \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg[4] 
       (.C(ext_spi_clk),
        .CE(E),
        .D(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[4]_i_1_n_0 ),
        .Q(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[4] ),
        .R(Rst_to_spi));
  FDRE \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg[5] 
       (.C(ext_spi_clk),
        .CE(E),
        .D(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[5]_i_1_n_0 ),
        .Q(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[5] ),
        .R(Rst_to_spi));
  FDRE \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg[6] 
       (.C(ext_spi_clk),
        .CE(E),
        .D(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[6]_i_1_n_0 ),
        .Q(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[6] ),
        .R(Rst_to_spi));
  FDRE \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg[7] 
       (.C(ext_spi_clk),
        .CE(E),
        .D(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[7]_i_1_n_0 ),
        .Q(\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[7] ),
        .R(Rst_to_spi));
  FDRE \RATIO_OF_2_GENERATE.sck_d1_reg 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(sck_o_int),
        .Q(sck_d1),
        .R(Rst_to_spi));
  FDRE \RATIO_OF_2_GENERATE.sck_d2_reg 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(sck_d1),
        .Q(sck_d2),
        .R(Rst_to_spi));
  FDRE \RATIO_OF_2_GENERATE.sck_o_int_reg 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_74),
        .Q(sck_o_int),
        .R(1'b0));
  icyradio_axi_quad_spi_0_0_cdc_sync RX_FIFO_EMPTY_SYNC_AXI4_2_AXI_CDC
       (.D(D[0]),
        .prmry_in(empty),
        .s_axi_aclk(s_axi_aclk));
  icyradio_axi_quad_spi_0_0_cdc_sync_0 RX_FIFO_EMPTY_SYNC_AXI_2_SPI_CDC
       (.ext_spi_clk(ext_spi_clk),
        .prmry_in(empty),
        .scndry_out(scndry_out));
  LUT3 #(
    .INIT(8'hF1)) 
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[30]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Rst_to_spi),
        .O(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[30]_i_1_n_0 ));
  FDRE \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[0] 
       (.C(ext_spi_clk),
        .CE(Tx_Data_d1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_34),
        .Q(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[0] ),
        .R(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[30]_i_1_n_0 ));
  FDRE \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[10] 
       (.C(ext_spi_clk),
        .CE(Tx_Data_d1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_12),
        .Q(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[10] ),
        .R(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[30]_i_1_n_0 ));
  FDRE \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[11] 
       (.C(ext_spi_clk),
        .CE(Tx_Data_d1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_13),
        .Q(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[11] ),
        .R(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[30]_i_1_n_0 ));
  FDRE \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[12] 
       (.C(ext_spi_clk),
        .CE(Tx_Data_d1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_14),
        .Q(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[12] ),
        .R(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[30]_i_1_n_0 ));
  FDRE \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[13] 
       (.C(ext_spi_clk),
        .CE(Tx_Data_d1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_15),
        .Q(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[13] ),
        .R(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[30]_i_1_n_0 ));
  FDRE \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[14] 
       (.C(ext_spi_clk),
        .CE(Tx_Data_d1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_16),
        .Q(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[14] ),
        .R(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[30]_i_1_n_0 ));
  FDRE \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[15] 
       (.C(ext_spi_clk),
        .CE(Tx_Data_d1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_17),
        .Q(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[15] ),
        .R(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[30]_i_1_n_0 ));
  FDRE \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[16] 
       (.C(ext_spi_clk),
        .CE(Tx_Data_d1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_18),
        .Q(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[16] ),
        .R(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[30]_i_1_n_0 ));
  FDRE \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[17] 
       (.C(ext_spi_clk),
        .CE(Tx_Data_d1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_19),
        .Q(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[17] ),
        .R(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[30]_i_1_n_0 ));
  FDRE \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[18] 
       (.C(ext_spi_clk),
        .CE(Tx_Data_d1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_20),
        .Q(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[18] ),
        .R(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[30]_i_1_n_0 ));
  FDRE \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[19] 
       (.C(ext_spi_clk),
        .CE(Tx_Data_d1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_21),
        .Q(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[19] ),
        .R(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[30]_i_1_n_0 ));
  FDRE \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[1] 
       (.C(ext_spi_clk),
        .CE(Tx_Data_d1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_33),
        .Q(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[1] ),
        .R(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[30]_i_1_n_0 ));
  FDRE \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[20] 
       (.C(ext_spi_clk),
        .CE(Tx_Data_d1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_22),
        .Q(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[20] ),
        .R(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[30]_i_1_n_0 ));
  FDRE \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[21] 
       (.C(ext_spi_clk),
        .CE(Tx_Data_d1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_23),
        .Q(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[21] ),
        .R(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[30]_i_1_n_0 ));
  FDRE \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[22] 
       (.C(ext_spi_clk),
        .CE(Tx_Data_d1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_24),
        .Q(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[22] ),
        .R(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[30]_i_1_n_0 ));
  FDRE \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[23] 
       (.C(ext_spi_clk),
        .CE(Tx_Data_d1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_25),
        .Q(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[23] ),
        .R(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[30]_i_1_n_0 ));
  FDRE \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[24] 
       (.C(ext_spi_clk),
        .CE(Tx_Data_d1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_26),
        .Q(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[24] ),
        .R(Rst_to_spi));
  FDRE \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[25] 
       (.C(ext_spi_clk),
        .CE(Tx_Data_d1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_27),
        .Q(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[25] ),
        .R(Rst_to_spi));
  FDRE \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[26] 
       (.C(ext_spi_clk),
        .CE(Tx_Data_d1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_6),
        .Q(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[26] ),
        .R(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[30]_i_1_n_0 ));
  FDRE \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[27] 
       (.C(ext_spi_clk),
        .CE(Tx_Data_d1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_7),
        .Q(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[27] ),
        .R(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[30]_i_1_n_0 ));
  FDRE \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[28] 
       (.C(ext_spi_clk),
        .CE(Tx_Data_d1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_8),
        .Q(Transmit_Data[3]),
        .R(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[30]_i_1_n_0 ));
  FDRE \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[29] 
       (.C(ext_spi_clk),
        .CE(Tx_Data_d1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_28),
        .Q(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[30]_0 [0]),
        .R(Rst_to_spi));
  FDRE \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[2] 
       (.C(ext_spi_clk),
        .CE(Tx_Data_d1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_32),
        .Q(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[2] ),
        .R(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[30]_i_1_n_0 ));
  FDRE \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[30] 
       (.C(ext_spi_clk),
        .CE(Tx_Data_d1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_9),
        .Q(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[30]_0 [1]),
        .R(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[30]_i_1_n_0 ));
  FDRE \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[31] 
       (.C(ext_spi_clk),
        .CE(Tx_Data_d1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_29),
        .Q(Transmit_Data[0]),
        .R(Rst_to_spi));
  FDRE \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[3] 
       (.C(ext_spi_clk),
        .CE(Tx_Data_d1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_81),
        .Q(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[3] ),
        .R(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[30]_i_1_n_0 ));
  FDRE \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[4] 
       (.C(ext_spi_clk),
        .CE(Tx_Data_d1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_80),
        .Q(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[4] ),
        .R(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[30]_i_1_n_0 ));
  FDRE \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[5] 
       (.C(ext_spi_clk),
        .CE(Tx_Data_d1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_79),
        .Q(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[5] ),
        .R(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[30]_i_1_n_0 ));
  FDRE \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[6] 
       (.C(ext_spi_clk),
        .CE(Tx_Data_d1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_31),
        .Q(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[6] ),
        .R(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[30]_i_1_n_0 ));
  FDRE \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[7] 
       (.C(ext_spi_clk),
        .CE(Tx_Data_d1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_30),
        .Q(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[7] ),
        .R(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[30]_i_1_n_0 ));
  FDRE \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[8] 
       (.C(ext_spi_clk),
        .CE(Tx_Data_d1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_10),
        .Q(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[8] ),
        .R(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[30]_i_1_n_0 ));
  FDRE \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[9] 
       (.C(ext_spi_clk),
        .CE(Tx_Data_d1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_11),
        .Q(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[9] ),
        .R(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[30]_i_1_n_0 ));
  FDRE SPIXfer_done_int_d1_reg
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(SPIXfer_done_int),
        .Q(SPIXfer_done_int_d1),
        .R(cmd_addr_cntr1));
  LUT6 #(
    .INIT(64'h00000000FFFEFEFE)) 
    SPIXfer_done_int_i_1
       (.I0(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[5] ),
        .I1(pr_state_addr_ph),
        .I2(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[4] ),
        .I3(\RATIO_OF_2_GENERATE.Count_reg [2]),
        .I4(\RATIO_OF_2_GENERATE.Count_reg [3]),
        .I5(SPIXfer_done_int_i_2_n_0),
        .O(SPIXfer_done_int_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT5 #(
    .INIT(32'hFFFFDDFD)) 
    SPIXfer_done_int_i_2
       (.I0(\RATIO_OF_2_GENERATE.Count_reg [1]),
        .I1(\RATIO_OF_2_GENERATE.Count_reg[0]_0 ),
        .I2(transfer_start),
        .I3(transfer_start_d1),
        .I4(Rst_to_spi),
        .O(SPIXfer_done_int_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h2)) 
    SPIXfer_done_int_pulse_d1_i_1
       (.I0(SPIXfer_done_int),
        .I1(SPIXfer_done_int_d1),
        .O(p_33_in));
  FDRE SPIXfer_done_int_pulse_d1_reg
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(p_33_in),
        .Q(SPIXfer_done_int_pulse_d1),
        .R(cmd_addr_cntr1));
  FDRE SPIXfer_done_int_pulse_d2_reg
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(SPIXfer_done_int_pulse_d1),
        .Q(SPIXfer_done_int_pulse_d2),
        .R(cmd_addr_cntr1));
  FDRE SPIXfer_done_int_reg
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(SPIXfer_done_int_i_1_n_0),
        .Q(SPIXfer_done_int),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[0]_i_3 
       (.I0(size_length_cntr[1]),
        .I1(size_length_cntr[0]),
        .O(\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[0]_i_3_n_0 ));
  FDRE \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[0] 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_61),
        .Q(\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg_n_0_[0] ),
        .R(Rst_to_spi));
  FDRE \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[1] 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_60),
        .Q(p_3_in1_in),
        .R(Rst_to_spi));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[0]_i_3 
       (.I0(\size_length_cntr_fixed_reg_n_0_[1] ),
        .I1(\size_length_cntr_fixed_reg_n_0_[0] ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0E02)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[10]_i_3 
       (.I0(data4[10]),
        .I1(\size_length_cntr_fixed_reg_n_0_[0] ),
        .I2(\size_length_cntr_fixed_reg_n_0_[1] ),
        .I3(\spi_addr_wrap_1_reg[11]_i_2_n_5 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[10]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0E02)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[11]_i_3 
       (.I0(data4[11]),
        .I1(\size_length_cntr_fixed_reg_n_0_[0] ),
        .I2(\size_length_cntr_fixed_reg_n_0_[1] ),
        .I3(\spi_addr_wrap_1_reg[11]_i_2_n_4 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[11]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0E02)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[12]_i_3 
       (.I0(data4[12]),
        .I1(\size_length_cntr_fixed_reg_n_0_[0] ),
        .I2(\size_length_cntr_fixed_reg_n_0_[1] ),
        .I3(\spi_addr_wrap_1_reg[15]_i_2_n_7 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[12]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h1D1D0C3F)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[13]_i_3 
       (.I0(\spi_addr_wrap_1_reg[15]_i_2_n_6 ),
        .I1(\size_length_cntr_fixed_reg_n_0_[1] ),
        .I2(\spi_addr_wrap_1_reg[16]_i_2_n_7 ),
        .I3(data4[13]),
        .I4(\size_length_cntr_fixed_reg_n_0_[0] ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[13]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h1D1D0C3F)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[14]_i_3 
       (.I0(\spi_addr_wrap_1_reg[15]_i_2_n_5 ),
        .I1(\size_length_cntr_fixed_reg_n_0_[1] ),
        .I2(\spi_addr_wrap_1_reg[16]_i_2_n_6 ),
        .I3(data4[14]),
        .I4(\size_length_cntr_fixed_reg_n_0_[0] ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[14]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h1D1D0C3F)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[15]_i_3 
       (.I0(\spi_addr_wrap_1_reg[15]_i_2_n_4 ),
        .I1(\size_length_cntr_fixed_reg_n_0_[1] ),
        .I2(\spi_addr_wrap_1_reg[16]_i_2_n_5 ),
        .I3(data4[15]),
        .I4(\size_length_cntr_fixed_reg_n_0_[0] ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h1D1D0C3F)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[16]_i_3 
       (.I0(\spi_addr_wrap_1_reg[19]_i_2_n_7 ),
        .I1(\size_length_cntr_fixed_reg_n_0_[1] ),
        .I2(\spi_addr_wrap_1_reg[16]_i_2_n_4 ),
        .I3(data4[16]),
        .I4(\size_length_cntr_fixed_reg_n_0_[0] ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[16]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h1D1D0C3F)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[17]_i_3 
       (.I0(\spi_addr_wrap_1_reg[19]_i_2_n_6 ),
        .I1(\size_length_cntr_fixed_reg_n_0_[1] ),
        .I2(\spi_addr_wrap_1_reg[20]_i_3_n_7 ),
        .I3(data4[17]),
        .I4(\size_length_cntr_fixed_reg_n_0_[0] ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[17]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h1D1D0C3F)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[18]_i_3 
       (.I0(\spi_addr_wrap_1_reg[19]_i_2_n_5 ),
        .I1(\size_length_cntr_fixed_reg_n_0_[1] ),
        .I2(\spi_addr_wrap_1_reg[20]_i_3_n_6 ),
        .I3(data4[18]),
        .I4(\size_length_cntr_fixed_reg_n_0_[0] ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[18]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0C1D3F1D)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[19]_i_3 
       (.I0(data4[19]),
        .I1(\size_length_cntr_fixed_reg_n_0_[1] ),
        .I2(\spi_addr_wrap_1_reg[20]_i_3_n_5 ),
        .I3(\size_length_cntr_fixed_reg_n_0_[0] ),
        .I4(\spi_addr_wrap_1_reg[19]_i_2_n_4 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[19]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_7 
       (.I0(\size_length_cntr_fixed_reg_n_0_[1] ),
        .I1(\size_length_cntr_fixed_reg_n_0_[0] ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h0C1D3F1D)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[20]_i_3 
       (.I0(data4[20]),
        .I1(\size_length_cntr_fixed_reg_n_0_[1] ),
        .I2(\spi_addr_wrap_1_reg[20]_i_3_n_4 ),
        .I3(\size_length_cntr_fixed_reg_n_0_[0] ),
        .I4(\spi_addr_wrap_1_reg[23]_i_4_n_7 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[20]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT5 #(
    .INIT(32'h1D1D0C3F)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[21]_i_3 
       (.I0(\spi_addr_wrap_1_reg[23]_i_4_n_6 ),
        .I1(\size_length_cntr_fixed_reg_n_0_[1] ),
        .I2(\spi_addr_wrap_1_reg[23]_i_3_n_7 ),
        .I3(data4[21]),
        .I4(\size_length_cntr_fixed_reg_n_0_[0] ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[21]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT5 #(
    .INIT(32'hE2E2F3C0)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[22]_i_3 
       (.I0(\spi_addr_wrap_1_reg[23]_i_4_n_5 ),
        .I1(\size_length_cntr_fixed_reg_n_0_[1] ),
        .I2(\spi_addr_wrap_1_reg[23]_i_3_n_6 ),
        .I3(data4[22]),
        .I4(\size_length_cntr_fixed_reg_n_0_[0] ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[22]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_3 
       (.I0(size_length_cntr[0]),
        .I1(size_length_cntr[1]),
        .I2(cmd_addr_sent),
        .I3(SPIXfer_done_int),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT5 #(
    .INIT(32'hF3E2C0E2)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_8 
       (.I0(data4[23]),
        .I1(\size_length_cntr_fixed_reg_n_0_[1] ),
        .I2(\spi_addr_wrap_1_reg[23]_i_3_n_5 ),
        .I3(\size_length_cntr_fixed_reg_n_0_[0] ),
        .I4(\spi_addr_wrap_1_reg[23]_i_4_n_4 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_8 
       (.I0(p_8_in),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[0] ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_9 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[0] ),
        .I1(p_8_in),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[2] ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_13 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[2] ),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[3] ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_9 
       (.I0(\size_length_cntr_fixed_reg_n_0_[0] ),
        .I1(\size_length_cntr_fixed_reg_n_0_[1] ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_12 
       (.I0(data2[4]),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[3] ),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[2] ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hABFB)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_6 
       (.I0(\size_length_cntr_fixed_reg_n_0_[1] ),
        .I1(data4[5]),
        .I2(\size_length_cntr_fixed_reg_n_0_[0] ),
        .I3(\spi_addr_wrap_1_reg[7]_i_2_n_6 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h0E02)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[6]_i_3 
       (.I0(data4[6]),
        .I1(\size_length_cntr_fixed_reg_n_0_[0] ),
        .I2(\size_length_cntr_fixed_reg_n_0_[1] ),
        .I3(\spi_addr_wrap_1_reg[7]_i_2_n_5 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[6]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0E02)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[7]_i_3 
       (.I0(data4[7]),
        .I1(\size_length_cntr_fixed_reg_n_0_[0] ),
        .I2(\size_length_cntr_fixed_reg_n_0_[1] ),
        .I3(\spi_addr_wrap_1_reg[7]_i_2_n_4 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0E02)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[8]_i_3 
       (.I0(data4[8]),
        .I1(\size_length_cntr_fixed_reg_n_0_[0] ),
        .I2(\size_length_cntr_fixed_reg_n_0_[1] ),
        .I3(\spi_addr_wrap_1_reg[11]_i_2_n_7 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[8]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0E02)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[9]_i_3 
       (.I0(data4[9]),
        .I1(\size_length_cntr_fixed_reg_n_0_[0] ),
        .I2(\size_length_cntr_fixed_reg_n_0_[1] ),
        .I3(\spi_addr_wrap_1_reg[11]_i_2_n_6 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[9]_i_3_n_0 ));
  FDRE \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0] 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_53),
        .Q(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[0] ),
        .R(Rst_to_spi));
  FDRE \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[10] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_82),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_90),
        .Q(data2[10]),
        .R(Rst_to_spi));
  FDRE \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[11] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_82),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_91),
        .Q(data2[11]),
        .R(Rst_to_spi));
  FDRE \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[12] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_82),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_92),
        .Q(data2[12]),
        .R(Rst_to_spi));
  FDRE \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[13] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_82),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_93),
        .Q(data2[13]),
        .R(Rst_to_spi));
  FDRE \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[14] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_82),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_94),
        .Q(data2[14]),
        .R(Rst_to_spi));
  FDRE \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[15] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_82),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_95),
        .Q(data2[15]),
        .R(Rst_to_spi));
  FDRE \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[16] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_82),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_96),
        .Q(data2[16]),
        .R(Rst_to_spi));
  FDRE \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[17] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_82),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_97),
        .Q(data2[17]),
        .R(Rst_to_spi));
  FDRE \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[18] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_82),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_98),
        .Q(data2[18]),
        .R(Rst_to_spi));
  FDRE \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[19] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_82),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_99),
        .Q(data2[19]),
        .R(Rst_to_spi));
  FDRE \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[1] 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_52),
        .Q(p_8_in),
        .R(Rst_to_spi));
  FDRE \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_82),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_100),
        .Q(data2[20]),
        .R(Rst_to_spi));
  FDRE \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[21] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_82),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_101),
        .Q(data2[21]),
        .R(Rst_to_spi));
  FDRE \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[22] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_82),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_102),
        .Q(data2[22]),
        .R(Rst_to_spi));
  FDRE \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_82),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_103),
        .Q(data2[23]),
        .R(Rst_to_spi));
  FDRE \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[2] 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_51),
        .Q(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[2] ),
        .R(Rst_to_spi));
  FDRE \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3] 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_50),
        .Q(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[3] ),
        .R(Rst_to_spi));
  FDRE \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[4] 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_49),
        .Q(data2[4]),
        .R(Rst_to_spi));
  FDRE \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[5] 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_48),
        .Q(data2[5]),
        .R(Rst_to_spi));
  FDRE \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[6] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_82),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_86),
        .Q(data2[6]),
        .R(Rst_to_spi));
  FDRE \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[7] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_82),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_87),
        .Q(data2[7]),
        .R(Rst_to_spi));
  FDRE \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_82),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_88),
        .Q(data2[8]),
        .R(Rst_to_spi));
  FDRE \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9] 
       (.C(ext_spi_clk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_82),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_89),
        .Q(data2[9]),
        .R(Rst_to_spi));
  LUT6 #(
    .INIT(64'h0400000004040404)) 
    \SR_5_TX_EMPTY_24_BIT_ADDR_GEN.SR_5_Tx_Empty_i_2 
       (.I0(\LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[7] ),
        .I1(\LEN_CNTR_24_BIT_GEN.length_cntr[7]_i_4_n_0 ),
        .I2(\LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[6] ),
        .I3(wb_cntrl_ns[0]),
        .I4(p_33_in),
        .I5(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_3_n_0 ),
        .O(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_0 ));
  FDSE \SR_5_TX_EMPTY_24_BIT_ADDR_GEN.SR_5_Tx_Empty_reg 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\SR_5_TX_EMPTY_24_BIT_ADDR_GEN.SR_5_Tx_Empty_reg_1 ),
        .Q(\SR_5_TX_EMPTY_24_BIT_ADDR_GEN.SR_5_Tx_Empty_reg_0 ),
        .S(Rst_to_spi));
  FDRE \STORE_NEW_TR_24_BIT_ADDR_GEN.new_tr_reg 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\STORE_NEW_TR_24_BIT_ADDR_GEN.new_tr_reg_0 ),
        .Q(new_tr),
        .R(Rst_to_spi));
  FDRE S_AXI4_ARREADY_i_reg
       (.C(s_axi4_aclk),
        .CE(1'b1),
        .D(load_axi_data_frm_axi_clk),
        .Q(S_AXI4_ARREADY_i_reg_0),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE \TRANSFER_START_24_BIT_ADDR_GEN.transfer_start_reg 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_76),
        .Q(transfer_start),
        .R(1'b0));
  icyradio_axi_quad_spi_0_0_xip_cross_clk_sync XIP_CLK_DOMAIN_SIGNALS
       (.D(D[1]),
        .E(XIP_CLK_DOMAIN_SIGNALS_n_35),
        .\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[0] (\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps[0]_i_3_n_0 ),
        .\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5] ({\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[5] ,\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[4] ,\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[2] ,\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[0]_0 }),
        .\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_0 (\SR_5_TX_EMPTY_24_BIT_ADDR_GEN.SR_5_Tx_Empty_reg_0 ),
        .\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1 (wrap_around_d2),
        .\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2 (wrap_around_d3),
        .\LEN_CNTR_24_BIT_GEN.length_cntr_reg[0] (Q),
        .\LEN_CNTR_24_BIT_GEN.length_cntr_reg[3] (\LEN_CNTR_24_BIT_GEN.length_cntr[3]_i_2_n_0 ),
        .\LEN_CNTR_24_BIT_GEN.length_cntr_reg[4] (\LEN_CNTR_24_BIT_GEN.length_cntr[4]_i_2_n_0 ),
        .\LEN_CNTR_24_BIT_GEN.length_cntr_reg[5] (\LEN_CNTR_24_BIT_GEN.length_cntr[5]_i_2_n_0 ),
        .\LEN_CNTR_24_BIT_GEN.length_cntr_reg[7] ({length_cntr,XIP_CLK_DOMAIN_SIGNALS_n_42,XIP_CLK_DOMAIN_SIGNALS_n_43}),
        .\LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_0 ({\LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[7] ,\LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[6] ,\LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[5] ,\LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[4] ,\LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[3] ,\LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[2] ,\LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[1] ,\LEN_CNTR_24_BIT_GEN.length_cntr_reg_n_0_[0] }),
        .\LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_1 (\LEN_CNTR_24_BIT_GEN.length_cntr[7]_i_4_n_0 ),
        .\LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_2 (\LEN_CNTR_24_BIT_GEN.length_cntr[7]_i_5_n_0 ),
        .\LOGIC_GENERATION_FDR.AXI_LEN_SYNC_AXI_SPI_GEN[3].AXI_LEN_SYNC_AXI2SPI_0 (axi_length),
        .\LOGIC_GENERATION_FDR.CPOL_SYNC_AXI2SPI_1_0 (XIP_CLK_DOMAIN_SIGNALS_n_74),
        .\LOGIC_GENERATION_FDR.CPOL_SYNC_AXI2SPI_1_1 (XIP_CLK_DOMAIN_SIGNALS_n_83),
        .\LOGIC_GENERATION_FDR.CPOL_SYNC_AXI2SPI_1_2 (XIP_CLK_DOMAIN_SIGNALS_n_85),
        .\LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[7].DTR_LEN_SYNC_AXI2SPI_0 (dtr_length),
        .\LOGIC_GENERATION_FDR.HW_XFER_SYNC_AXI2SPI_1_0 (XIP_CLK_DOMAIN_SIGNALS_n_47),
        .\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_1_0 (load_axi_data_cdc_to_spi_d2),
        .\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_2_0 (load_axi_data_cdc_to_spi_d3),
        .\LOGIC_GENERATION_FDR.LD_CMD_SYNC_AXI2SPI_1_0 (load_cmd_cdc_from_axi_d2),
        .\LOGIC_GENERATION_FDR.LD_CMD_SYNC_AXI2SPI_2_0 (load_cmd_cdc_from_axi_d3),
        .\LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[0].TRANS_ADDR_SYNC_AXI2SPI_CDC_0 (XIP_CLK_DOMAIN_SIGNALS_n_61),
        .\LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[1].TRANS_ADDR_SYNC_AXI2SPI_CDC_0 (XIP_CLK_DOMAIN_SIGNALS_n_52),
        .\LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[1].TRANS_ADDR_SYNC_AXI2SPI_CDC_1 (XIP_CLK_DOMAIN_SIGNALS_n_60),
        .\LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[2].TRANS_ADDR_SYNC_AXI2SPI_CDC_0 (XIP_CLK_DOMAIN_SIGNALS_n_51),
        .\LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[3].TRANS_ADDR_SYNC_AXI2SPI_CDC_0 (XIP_CLK_DOMAIN_SIGNALS_n_50),
        .\LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[4].TRANS_ADDR_SYNC_AXI2SPI_CDC_0 (XIP_CLK_DOMAIN_SIGNALS_n_49),
        .\LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[5].TRANS_ADDR_SYNC_AXI2SPI_CDC_0 (XIP_CLK_DOMAIN_SIGNALS_n_48),
        .\LOGIC_GENERATION_FDR.TYP_OF_XFER_SYNC_AXI2SPI_1_0 (XIP_CLK_DOMAIN_SIGNALS_n_53),
        .\LOGIC_GENERATION_FDR.WORD_XFER_SYNC_AXI2SPI_1_0 (XIP_CLK_DOMAIN_SIGNALS_n_44),
        .O({\spi_addr_wrap_1_reg[3]_i_2_n_4 ,\spi_addr_wrap_1_reg[3]_i_2_n_5 ,\spi_addr_wrap_1_reg[3]_i_2_n_6 ,\spi_addr_wrap_1_reg[3]_i_2_n_7 }),
        .Q(Transmit_addr_int),
        .\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[15] (receive_Data_int),
        .\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[23] (cmd_addr_sent),
        .\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[23]_0 (\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[23]_i_4_n_0 ),
        .\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31] ({p_5_in,\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[15] ,\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[14] ,\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[13] ,\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[12] ,\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[11] ,\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[10] ,\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[9] ,\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[8] ,\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[7] ,\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[6] ,\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[5] ,\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[4] ,\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[3] ,\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[2] ,\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[1] ,\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[0] }),
        .\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[7] (\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[7]_i_3_n_0 ),
        .\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[0] (XIP_CLK_DOMAIN_SIGNALS_n_55),
        .\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[1] (XIP_CLK_DOMAIN_SIGNALS_n_56),
        .\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[1]_0 (SPIXfer_done_int_pulse_d2),
        .\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[2] (XIP_CLK_DOMAIN_SIGNALS_n_54),
        .\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[2]_0 (\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg_n_0_[2] ),
        .\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[2]_1 (\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg_n_0_[1] ),
        .\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[2]_2 (\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg_n_0_[0] ),
        .\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.hw_wd_cntr_reg[0] (XIP_CLK_DOMAIN_SIGNALS_n_58),
        .\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.hw_wd_cntr_reg[1] (XIP_CLK_DOMAIN_SIGNALS_n_57),
        .\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7] ({XIP_CLK_DOMAIN_SIGNALS_n_110,XIP_CLK_DOMAIN_SIGNALS_n_111,XIP_CLK_DOMAIN_SIGNALS_n_112,XIP_CLK_DOMAIN_SIGNALS_n_113,XIP_CLK_DOMAIN_SIGNALS_n_114,XIP_CLK_DOMAIN_SIGNALS_n_115,XIP_CLK_DOMAIN_SIGNALS_n_116,XIP_CLK_DOMAIN_SIGNALS_n_117,XIP_CLK_DOMAIN_SIGNALS_n_118,XIP_CLK_DOMAIN_SIGNALS_n_119,XIP_CLK_DOMAIN_SIGNALS_n_120,XIP_CLK_DOMAIN_SIGNALS_n_121,XIP_CLK_DOMAIN_SIGNALS_n_122,XIP_CLK_DOMAIN_SIGNALS_n_123,XIP_CLK_DOMAIN_SIGNALS_n_124,XIP_CLK_DOMAIN_SIGNALS_n_125,XIP_CLK_DOMAIN_SIGNALS_n_126,XIP_CLK_DOMAIN_SIGNALS_n_127,XIP_CLK_DOMAIN_SIGNALS_n_128,XIP_CLK_DOMAIN_SIGNALS_n_129,XIP_CLK_DOMAIN_SIGNALS_n_130,XIP_CLK_DOMAIN_SIGNALS_n_131,XIP_CLK_DOMAIN_SIGNALS_n_132,XIP_CLK_DOMAIN_SIGNALS_n_133,XIP_CLK_DOMAIN_SIGNALS_n_134,XIP_CLK_DOMAIN_SIGNALS_n_135,XIP_CLK_DOMAIN_SIGNALS_n_136,XIP_CLK_DOMAIN_SIGNALS_n_137,XIP_CLK_DOMAIN_SIGNALS_n_138,XIP_CLK_DOMAIN_SIGNALS_n_139,XIP_CLK_DOMAIN_SIGNALS_n_140,XIP_CLK_DOMAIN_SIGNALS_n_141}),
        .\RATIO_OF_2_GENERATE.Count_reg[0] (\RATIO_OF_2_GENERATE.Count_reg__0 ),
        .\RATIO_OF_2_GENERATE.SCK_O_NQ_4_STARTUP_USED.SCK_O_reg_reg (transfer_start),
        .\RATIO_OF_2_GENERATE.sck_o_int_reg (\LEN_CNTR_24_BIT_GEN.length_cntr[7]_i_3_n_0 ),
        .\RATIO_OF_2_GENERATE.sck_o_int_reg_0 (new_tr),
        .RESET_SYNC_AX2S_2(wb_cntrl_ns[1]),
        .RESET_SYNC_AX2S_2_0(XIP_CLK_DOMAIN_SIGNALS_n_76),
        .Rst_to_spi(Rst_to_spi),
        .Rx_FIFO_Full(Rx_FIFO_Full),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[10] (\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[2] ),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[11] (\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[3] ),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[12] (\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[4] ),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[13] (\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[5] ),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[14] (\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[6] ),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[15] (\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[7] ),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[16] (XIP_CLK_DOMAIN_SIGNALS_n_26),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[16]_0 (\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[8] ),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[17] (XIP_CLK_DOMAIN_SIGNALS_n_27),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[17]_0 (\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[9] ),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[18] (XIP_CLK_DOMAIN_SIGNALS_n_6),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[18]_0 (\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[10] ),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[19] (XIP_CLK_DOMAIN_SIGNALS_n_7),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[19]_0 (\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[11] ),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[20] (XIP_CLK_DOMAIN_SIGNALS_n_8),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[20]_0 (\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[12] ),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[21] (XIP_CLK_DOMAIN_SIGNALS_n_28),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[21]_0 (\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[13] ),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[22] (XIP_CLK_DOMAIN_SIGNALS_n_9),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[22]_0 (\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[14] ),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[23] (XIP_CLK_DOMAIN_SIGNALS_n_29),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[23]_0 (\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[15] ),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[24] (\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[16] ),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[25] (\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[17] ),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[26] (\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[18] ),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[27] (\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[19] ),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[28] (\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[20] ),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[29] (\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[21] ),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[30] (\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[22] ),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[31] (\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[23] ),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[8] (\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[0] ),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[9] (\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg_n_0_[1] ),
        .SPIXfer_done_int(SPIXfer_done_int),
        .SPIXfer_done_int_pulse_d2_reg({XIP_CLK_DOMAIN_SIGNALS_n_104,XIP_CLK_DOMAIN_SIGNALS_n_105,XIP_CLK_DOMAIN_SIGNALS_n_106,XIP_CLK_DOMAIN_SIGNALS_n_107}),
        .\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[0] (\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[0]_i_3_n_0 ),
        .\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[0]_0 (\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg_n_0_[0] ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_2_0 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_9_n_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_2_1 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_8_n_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_3_0 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_9_n_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_0 ({\spi_addr_wrap_1_reg[4]_i_2_n_4 ,\spi_addr_wrap_1_reg[4]_i_2_n_5 ,\spi_addr_wrap_1_reg[4]_i_2_n_6 ,\spi_addr_wrap_1_reg[4]_i_2_n_7 }),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_1 (data4[4:1]),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_2 (\spi_addr_wrap_1_reg[7]_i_2_n_7 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_3 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_13_n_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_3_0 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_12_n_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0] (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[0] ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0]_0 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_3_n_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0]_1 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[0]_i_3_n_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[10] (XIP_CLK_DOMAIN_SIGNALS_n_12),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[10]_0 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[10]_i_3_n_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[11] (XIP_CLK_DOMAIN_SIGNALS_n_13),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[11]_0 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[11]_i_3_n_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[12] (XIP_CLK_DOMAIN_SIGNALS_n_14),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[12]_0 ({\spi_addr_wrap_1_reg[12]_i_3_n_4 ,\spi_addr_wrap_1_reg[12]_i_3_n_5 ,\spi_addr_wrap_1_reg[12]_i_3_n_6 ,\spi_addr_wrap_1_reg[12]_i_3_n_7 }),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[12]_1 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[12]_i_3_n_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[13] (XIP_CLK_DOMAIN_SIGNALS_n_15),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[13]_0 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[13]_i_3_n_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[14] (XIP_CLK_DOMAIN_SIGNALS_n_16),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[14]_0 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[14]_i_3_n_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[15] (XIP_CLK_DOMAIN_SIGNALS_n_17),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[15]_0 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[15]_i_3_n_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[16] (XIP_CLK_DOMAIN_SIGNALS_n_18),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[16]_0 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[16]_i_3_n_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[17] (XIP_CLK_DOMAIN_SIGNALS_n_19),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[17]_0 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[17]_i_3_n_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[18] (XIP_CLK_DOMAIN_SIGNALS_n_20),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[18]_0 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[18]_i_3_n_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[19] (XIP_CLK_DOMAIN_SIGNALS_n_21),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[19]_0 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[19]_i_3_n_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20] (XIP_CLK_DOMAIN_SIGNALS_n_22),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20]_0 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[20]_i_3_n_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[21] (XIP_CLK_DOMAIN_SIGNALS_n_23),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[21]_0 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[21]_i_3_n_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[22] (XIP_CLK_DOMAIN_SIGNALS_n_24),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[22]_0 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[22]_i_3_n_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23] (XIP_CLK_DOMAIN_SIGNALS_n_25),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_0 (spi_addr_wrap_1),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_1 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_8_n_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[2] (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[2] ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3] (XIP_CLK_DOMAIN_SIGNALS_n_81),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3]_0 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[3] ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[4] (XIP_CLK_DOMAIN_SIGNALS_n_80),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[4]_0 (\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps[4]_i_3_n_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[5] (XIP_CLK_DOMAIN_SIGNALS_n_79),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[5]_0 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_6_n_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[6] (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[6]_i_3_n_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[7] (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[7]_i_3_n_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8] (XIP_CLK_DOMAIN_SIGNALS_n_10),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8]_0 ({\spi_addr_wrap_1_reg[8]_i_3_n_4 ,\spi_addr_wrap_1_reg[8]_i_3_n_5 ,\spi_addr_wrap_1_reg[8]_i_3_n_6 ,\spi_addr_wrap_1_reg[8]_i_3_n_7 }),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8]_1 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[8]_i_3_n_0 ),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9] (XIP_CLK_DOMAIN_SIGNALS_n_11),
        .\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9]_0 (\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[9]_i_3_n_0 ),
        .\SR_5_TX_EMPTY_24_BIT_ADDR_GEN.SR_5_Tx_Empty_reg (XIP_CLK_DOMAIN_SIGNALS_n_84),
        .\SR_5_TX_EMPTY_24_BIT_ADDR_GEN.SR_5_Tx_Empty_reg_0 ({XIP_CLK_DOMAIN_SIGNALS_n_108,XIP_CLK_DOMAIN_SIGNALS_n_109}),
        .SS_frm_axi(SS_frm_axi),
        .\TRANSFER_START_24_BIT_ADDR_GEN.transfer_start_reg (\LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_0 ),
        .Tx_Data_d1(Tx_Data_d1),
        .XIPCR_0_CPHA_int(XIPCR_0_CPHA_int),
        .XIPCR_1_CPOL_int(XIPCR_1_CPOL_int),
        .XIPSR_CPHA_CPOL_ERR_d2(XIPSR_CPHA_CPOL_ERR_d2),
        .bus2ip_reset_ipif4_inverted(bus2ip_reset_ipif4_inverted),
        .bus2ip_reset_ipif_inverted(bus2ip_reset_ipif_inverted),
        .cmd_addr_cntr1(cmd_addr_cntr1),
        .data2(data2),
        .\dtr_length_reg[3] (\dtr_length[3]_i_2_n_0 ),
        .\dtr_length_reg[5] ({XIP_CLK_DOMAIN_SIGNALS_n_65,XIP_CLK_DOMAIN_SIGNALS_n_66,XIP_CLK_DOMAIN_SIGNALS_n_67,XIP_CLK_DOMAIN_SIGNALS_n_68,XIP_CLK_DOMAIN_SIGNALS_n_69,XIP_CLK_DOMAIN_SIGNALS_n_70,XIP_CLK_DOMAIN_SIGNALS_n_71,XIP_CLK_DOMAIN_SIGNALS_n_72}),
        .\dtr_length_reg[5]_0 (\dtr_length[5]_i_2_n_0 ),
        .\dtr_length_reg[7] (s_axi4_rlast_INST_0_i_3_n_0),
        .empty(empty),
        .ext_spi_clk(ext_spi_clk),
        .four_byte_xfer(four_byte_xfer),
        .\gen_fwft.empty_fwft_i_reg (XIP_CLK_DOMAIN_SIGNALS_n_63),
        .hpm_under_process_d1(hpm_under_process_d1),
        .hw_wd_cntr(hw_wd_cntr),
        .hw_wd_cntr0(hw_wd_cntr0),
        .last_data_acked(last_data_acked),
        .load_axi_data_frm_axi_clk(load_axi_data_frm_axi_clk),
        .load_axi_data_to_spi_clk(load_axi_data_to_spi_clk),
        .one_byte_xfer(one_byte_xfer),
        .p_3_in1_in(p_3_in1_in),
        .p_8_in(p_8_in),
        .s_axi4_aclk(s_axi4_aclk),
        .s_axi4_arburst(s_axi4_arburst),
        .s_axi4_arlen(s_axi4_arlen),
        .s_axi4_arvalid(s_axi4_arvalid),
        .s_axi4_rready(s_axi4_rready),
        .s_axi4_rready_0(XIP_CLK_DOMAIN_SIGNALS_n_73),
        .s_axi_aclk(s_axi_aclk),
        .sck_o_int(sck_o_int),
        .size_length_cntr(size_length_cntr),
        .\size_length_cntr_fixed_reg[0] (\size_length_cntr_fixed_reg_n_0_[0] ),
        .\size_length_cntr_fixed_reg[1] (XIP_CLK_DOMAIN_SIGNALS_n_46),
        .\size_length_cntr_fixed_reg[1]_0 (XIP_CLK_DOMAIN_SIGNALS_n_82),
        .\size_length_cntr_fixed_reg[1]_1 (\size_length_cntr_fixed_reg_n_0_[1] ),
        .\size_length_cntr_reg[0] (\size_length_cntr[1]_i_3_n_0 ),
        .\size_length_cntr_reg[1] (XIP_CLK_DOMAIN_SIGNALS_n_45),
        .\spi_addr_wrap_1_reg[13] (XIP_CLK_DOMAIN_SIGNALS_n_93),
        .\spi_addr_wrap_1_reg[14] (XIP_CLK_DOMAIN_SIGNALS_n_94),
        .\spi_addr_wrap_1_reg[15] (XIP_CLK_DOMAIN_SIGNALS_n_95),
        .\spi_addr_wrap_1_reg[16] (XIP_CLK_DOMAIN_SIGNALS_n_96),
        .\spi_addr_wrap_1_reg[17] (XIP_CLK_DOMAIN_SIGNALS_n_97),
        .\spi_addr_wrap_1_reg[18] (XIP_CLK_DOMAIN_SIGNALS_n_98),
        .\spi_addr_wrap_1_reg[19] (XIP_CLK_DOMAIN_SIGNALS_n_99),
        .\spi_addr_wrap_1_reg[20] (XIP_CLK_DOMAIN_SIGNALS_n_100),
        .\spi_addr_wrap_1_reg[21] (XIP_CLK_DOMAIN_SIGNALS_n_101),
        .\spi_addr_wrap_1_reg[22] (XIP_CLK_DOMAIN_SIGNALS_n_102),
        .\spi_addr_wrap_1_reg[23] (XIP_CLK_DOMAIN_SIGNALS_n_103),
        .start_after_wrap_d1(start_after_wrap_d1),
        .transfer_start_d2(transfer_start_d2),
        .two_byte_xfer(two_byte_xfer),
        .type_of_burst(type_of_burst),
        .wrap_around_d1(wrap_around_d1),
        .wrap_around_d2_reg(XIP_CLK_DOMAIN_SIGNALS_n_86),
        .wrap_around_d2_reg_0(XIP_CLK_DOMAIN_SIGNALS_n_87),
        .wrap_around_d2_reg_1(XIP_CLK_DOMAIN_SIGNALS_n_88),
        .wrap_around_d2_reg_2(XIP_CLK_DOMAIN_SIGNALS_n_89),
        .wrap_around_d2_reg_3(XIP_CLK_DOMAIN_SIGNALS_n_90),
        .wrap_around_d2_reg_4(XIP_CLK_DOMAIN_SIGNALS_n_91),
        .wrap_around_d2_reg_5(XIP_CLK_DOMAIN_SIGNALS_n_92),
        .wrap_around_reg(XIP_CLK_DOMAIN_SIGNALS_n_30),
        .wrap_around_reg_0(XIP_CLK_DOMAIN_SIGNALS_n_31),
        .wrap_around_reg_1(XIP_CLK_DOMAIN_SIGNALS_n_32),
        .wrap_around_reg_10(wrap_around_i_11_n_0),
        .wrap_around_reg_2(XIP_CLK_DOMAIN_SIGNALS_n_33),
        .wrap_around_reg_3(XIP_CLK_DOMAIN_SIGNALS_n_34),
        .wrap_around_reg_4(XIP_CLK_DOMAIN_SIGNALS_n_75),
        .wrap_around_reg_5(wrap_around_reg_n_0),
        .wrap_around_reg_6(wrap_around_i_2_n_0),
        .wrap_around_reg_7(wrap_around_i_7_n_0),
        .wrap_around_reg_8(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_7_n_0 ),
        .wrap_around_reg_9(wrap_around_i_9_n_0),
        .xip_sm_ns(xip_sm_ns),
        .xip_sm_ps(xip_sm_ps));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT5 #(
    .INIT(32'h8080BF80)) 
    \XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[0]_i_1 
       (.I0(s_axi4_arlen[0]),
        .I1(s_axi4_arvalid),
        .I2(S_AXI4_ARREADY_i_reg_0),
        .I3(s_axi_rvalid_ii0),
        .I4(S_AXI4_ARLEN_ii[0]),
        .O(p_2_in[0]));
  LUT6 #(
    .INIT(64'hBF8080808080BF80)) 
    \XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[1]_i_1 
       (.I0(s_axi4_arlen[1]),
        .I1(s_axi4_arvalid),
        .I2(S_AXI4_ARREADY_i_reg_0),
        .I3(s_axi_rvalid_ii0),
        .I4(S_AXI4_ARLEN_ii[0]),
        .I5(S_AXI4_ARLEN_ii[1]),
        .O(p_2_in[1]));
  LUT6 #(
    .INIT(64'hB8B8B888888888B8)) 
    \XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[2]_i_1 
       (.I0(s_axi4_arlen[2]),
        .I1(\XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[7]_i_6_n_0 ),
        .I2(s_axi_rvalid_ii0),
        .I3(S_AXI4_ARLEN_ii[1]),
        .I4(S_AXI4_ARLEN_ii[0]),
        .I5(S_AXI4_ARLEN_ii[2]),
        .O(p_2_in[2]));
  LUT6 #(
    .INIT(64'hB888B8B888B88888)) 
    \XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[3]_i_1 
       (.I0(s_axi4_arlen[3]),
        .I1(\XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[7]_i_6_n_0 ),
        .I2(s_axi_rvalid_ii0),
        .I3(S_AXI4_ARLEN_ii[2]),
        .I4(\XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[3]_i_2_n_0 ),
        .I5(S_AXI4_ARLEN_ii[3]),
        .O(p_2_in[3]));
  LUT2 #(
    .INIT(4'h1)) 
    \XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[3]_i_2 
       (.I0(S_AXI4_ARLEN_ii[1]),
        .I1(S_AXI4_ARLEN_ii[0]),
        .O(\XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8080BF80BF808080)) 
    \XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[4]_i_1 
       (.I0(s_axi4_arlen[4]),
        .I1(s_axi4_arvalid),
        .I2(S_AXI4_ARREADY_i_reg_0),
        .I3(s_axi_rvalid_ii0),
        .I4(\XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[4]_i_2_n_0 ),
        .I5(S_AXI4_ARLEN_ii[4]),
        .O(p_2_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[4]_i_2 
       (.I0(S_AXI4_ARLEN_ii[0]),
        .I1(S_AXI4_ARLEN_ii[1]),
        .I2(S_AXI4_ARLEN_ii[3]),
        .I3(S_AXI4_ARLEN_ii[2]),
        .O(\XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8080BF80BF808080)) 
    \XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[5]_i_1 
       (.I0(s_axi4_arlen[5]),
        .I1(s_axi4_arvalid),
        .I2(S_AXI4_ARREADY_i_reg_0),
        .I3(s_axi_rvalid_ii0),
        .I4(s_axi4_rlast_INST_0_i_1_n_0),
        .I5(S_AXI4_ARLEN_ii[5]),
        .O(p_2_in[5]));
  LUT6 #(
    .INIT(64'hB8B888B88888B888)) 
    \XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[6]_i_1 
       (.I0(s_axi4_arlen[6]),
        .I1(\XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[7]_i_6_n_0 ),
        .I2(s_axi_rvalid_ii0),
        .I3(s_axi4_rlast_INST_0_i_1_n_0),
        .I4(S_AXI4_ARLEN_ii[5]),
        .I5(S_AXI4_ARLEN_ii[6]),
        .O(p_2_in[6]));
  LUT5 #(
    .INIT(32'hAAAAAAEA)) 
    \XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[7]_i_1 
       (.I0(bus2ip_reset_ipif4_inverted),
        .I1(s_axi4_arvalid),
        .I2(S_AXI4_ARREADY_i_reg_0),
        .I3(s_axi4_arlen[7]),
        .I4(s_axi4_arlen[6]),
        .O(\XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAACF000000)) 
    \XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[7]_i_3 
       (.I0(s_axi4_arlen[7]),
        .I1(S_AXI4_ARLEN_ii[6]),
        .I2(\XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[7]_i_5_n_0 ),
        .I3(S_AXI4_ARLEN_ii[7]),
        .I4(s_axi_rvalid_ii0),
        .I5(\XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[7]_i_6_n_0 ),
        .O(p_2_in[7]));
  LUT6 #(
    .INIT(64'hFEFF000000000000)) 
    \XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[7]_i_4 
       (.I0(S_AXI4_ARLEN_ii[5]),
        .I1(S_AXI4_ARLEN_ii[7]),
        .I2(S_AXI4_ARLEN_ii[6]),
        .I3(s_axi4_rlast_INST_0_i_1_n_0),
        .I4(S_AXI4_RLAST_iii),
        .I5(s_axi4_rready),
        .O(s_axi_rvalid_ii0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[7]_i_5 
       (.I0(S_AXI4_ARLEN_ii[4]),
        .I1(S_AXI4_ARLEN_ii[0]),
        .I2(S_AXI4_ARLEN_ii[1]),
        .I3(S_AXI4_ARLEN_ii[3]),
        .I4(S_AXI4_ARLEN_ii[2]),
        .I5(S_AXI4_ARLEN_ii[5]),
        .O(\XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[7]_i_6 
       (.I0(s_axi4_arvalid),
        .I1(S_AXI4_ARREADY_i_reg_0),
        .O(\XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[7]_i_6_n_0 ));
  FDRE \XIP_NORMAL_MODE.S_AXI4_ARLEN_ii_reg[0] 
       (.C(s_axi4_aclk),
        .CE(XIP_RECEIVE_FIFO_II_n_6),
        .D(p_2_in[0]),
        .Q(S_AXI4_ARLEN_ii[0]),
        .R(\XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[7]_i_1_n_0 ));
  FDRE \XIP_NORMAL_MODE.S_AXI4_ARLEN_ii_reg[1] 
       (.C(s_axi4_aclk),
        .CE(XIP_RECEIVE_FIFO_II_n_6),
        .D(p_2_in[1]),
        .Q(S_AXI4_ARLEN_ii[1]),
        .R(\XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[7]_i_1_n_0 ));
  FDRE \XIP_NORMAL_MODE.S_AXI4_ARLEN_ii_reg[2] 
       (.C(s_axi4_aclk),
        .CE(XIP_RECEIVE_FIFO_II_n_6),
        .D(p_2_in[2]),
        .Q(S_AXI4_ARLEN_ii[2]),
        .R(\XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[7]_i_1_n_0 ));
  FDRE \XIP_NORMAL_MODE.S_AXI4_ARLEN_ii_reg[3] 
       (.C(s_axi4_aclk),
        .CE(XIP_RECEIVE_FIFO_II_n_6),
        .D(p_2_in[3]),
        .Q(S_AXI4_ARLEN_ii[3]),
        .R(\XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[7]_i_1_n_0 ));
  FDRE \XIP_NORMAL_MODE.S_AXI4_ARLEN_ii_reg[4] 
       (.C(s_axi4_aclk),
        .CE(XIP_RECEIVE_FIFO_II_n_6),
        .D(p_2_in[4]),
        .Q(S_AXI4_ARLEN_ii[4]),
        .R(\XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[7]_i_1_n_0 ));
  FDRE \XIP_NORMAL_MODE.S_AXI4_ARLEN_ii_reg[5] 
       (.C(s_axi4_aclk),
        .CE(XIP_RECEIVE_FIFO_II_n_6),
        .D(p_2_in[5]),
        .Q(S_AXI4_ARLEN_ii[5]),
        .R(\XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[7]_i_1_n_0 ));
  FDRE \XIP_NORMAL_MODE.S_AXI4_ARLEN_ii_reg[6] 
       (.C(s_axi4_aclk),
        .CE(XIP_RECEIVE_FIFO_II_n_6),
        .D(p_2_in[6]),
        .Q(S_AXI4_ARLEN_ii[6]),
        .R(\XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[7]_i_1_n_0 ));
  FDRE \XIP_NORMAL_MODE.S_AXI4_ARLEN_ii_reg[7] 
       (.C(s_axi4_aclk),
        .CE(XIP_RECEIVE_FIFO_II_n_6),
        .D(p_2_in[7]),
        .Q(S_AXI4_ARLEN_ii[7]),
        .R(\XIP_NORMAL_MODE.S_AXI4_ARLEN_ii[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \XIP_NORMAL_MODE.S_AXI4_RLAST_iii_i_2 
       (.I0(s_axi4_rlast_INST_0_i_1_n_0),
        .I1(S_AXI4_ARLEN_ii[6]),
        .I2(S_AXI4_ARLEN_ii[7]),
        .I3(S_AXI4_ARLEN_ii[5]),
        .O(\XIP_NORMAL_MODE.S_AXI4_ARLEN_ii_reg[6]_0 ));
  FDRE \XIP_NORMAL_MODE.S_AXI4_RLAST_iii_reg 
       (.C(s_axi4_aclk),
        .CE(1'b1),
        .D(\XIP_NORMAL_MODE.S_AXI4_RLAST_iii_reg_0 ),
        .Q(S_AXI4_RLAST_iii),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE \XIP_NORMAL_MODE.S_AXI4_RRESP_i_reg 
       (.C(s_axi4_aclk),
        .CE(1'b1),
        .D(\XIP_NORMAL_MODE.S_AXI4_RRESP_i_reg_0 ),
        .Q(s_axi4_rresp),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE \XIP_NORMAL_MODE.s_axi_rvalid_ii_reg 
       (.C(s_axi4_aclk),
        .CE(1'b1),
        .D(XIP_RECEIVE_FIFO_II_n_4),
        .Q(s_axi_rvalid_ii),
        .R(1'b0));
  icyradio_axi_quad_spi_0_0_async_fifo_fg XIP_RECEIVE_FIFO_II
       (.E(XIP_RECEIVE_FIFO_II_n_6),
        .Q({p_5_in,\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[15] ,\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[14] ,\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[13] ,\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[12] ,\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[11] ,\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[10] ,\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[9] ,\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[8] ,\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[7] ,\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[6] ,\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[5] ,\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[4] ,\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[3] ,\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[2] ,\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[1] ,\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg_n_0_[0] }),
        .Rst_to_spi(Rst_to_spi),
        .\XIP_MODE_GEN.bus2ip_reset_ipif4_inverted_reg (XIP_RECEIVE_FIFO_II_n_3),
        .\XIP_NORMAL_MODE.s_axi_rvalid_ii_reg (XIP_RECEIVE_FIFO_II_n_4),
        .\XIP_NORMAL_MODE.s_axi_rvalid_ii_reg_0 (S_AXI4_ARREADY_i_reg_0),
        .bus2ip_reset_ipif4_inverted(bus2ip_reset_ipif4_inverted),
        .empty(empty),
        .ext_spi_clk(ext_spi_clk),
        .full(full),
        .last_data_acked(last_data_acked),
        .last_data_acked_reg(last_data_acked_i_2_n_0),
        .s_axi4_aclk(s_axi4_aclk),
        .s_axi4_arvalid(s_axi4_arvalid),
        .s_axi4_rdata(s_axi4_rdata),
        .s_axi4_rlast(s_axi4_rlast),
        .s_axi4_rready(s_axi4_rready),
        .s_axi4_rready_0(s_axi4_rready_0),
        .s_axi4_rvalid(s_axi4_rvalid),
        .s_axi_rvalid_ii(s_axi_rvalid_ii),
        .s_axi_rvalid_ii0(s_axi_rvalid_ii0),
        .wr_en(store_date_in_drr_fifo_d3),
        .wr_rst_busy(wr_rst_busy));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_length[0]_i_1 
       (.I0(s_axi4_arlen[0]),
        .I1(s_axi4_arlen[6]),
        .I2(s_axi4_arlen[7]),
        .O(S_AXI4_ARLEN_i[0]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_length[1]_i_1 
       (.I0(s_axi4_arlen[1]),
        .I1(s_axi4_arlen[6]),
        .I2(s_axi4_arlen[7]),
        .O(S_AXI4_ARLEN_i[1]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_length[2]_i_1 
       (.I0(s_axi4_arlen[2]),
        .I1(s_axi4_arlen[6]),
        .I2(s_axi4_arlen[7]),
        .O(S_AXI4_ARLEN_i[2]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_length[3]_i_1 
       (.I0(s_axi4_arlen[3]),
        .I1(s_axi4_arlen[6]),
        .I2(s_axi4_arlen[7]),
        .O(S_AXI4_ARLEN_i[3]));
  FDRE \axi_length_reg[0] 
       (.C(s_axi4_aclk),
        .CE(load_axi_data_frm_axi_clk),
        .D(S_AXI4_ARLEN_i[0]),
        .Q(axi_length[0]),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE \axi_length_reg[1] 
       (.C(s_axi4_aclk),
        .CE(load_axi_data_frm_axi_clk),
        .D(S_AXI4_ARLEN_i[1]),
        .Q(axi_length[1]),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE \axi_length_reg[2] 
       (.C(s_axi4_aclk),
        .CE(load_axi_data_frm_axi_clk),
        .D(S_AXI4_ARLEN_i[2]),
        .Q(axi_length[2]),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE \axi_length_reg[3] 
       (.C(s_axi4_aclk),
        .CE(load_axi_data_frm_axi_clk),
        .D(S_AXI4_ARLEN_i[3]),
        .Q(axi_length[3]),
        .R(bus2ip_reset_ipif4_inverted));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \dtr_length[3]_i_2 
       (.I0(dtr_length[1]),
        .I1(dtr_length[0]),
        .O(\dtr_length[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \dtr_length[5]_i_2 
       (.I0(s_axi4_arlen[7]),
        .I1(s_axi4_arlen[6]),
        .O(\dtr_length[5]_i_2_n_0 ));
  FDRE \dtr_length_reg[0] 
       (.C(s_axi4_aclk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_63),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_72),
        .Q(dtr_length[0]),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE \dtr_length_reg[1] 
       (.C(s_axi4_aclk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_63),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_71),
        .Q(dtr_length[1]),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE \dtr_length_reg[2] 
       (.C(s_axi4_aclk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_63),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_70),
        .Q(dtr_length[2]),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE \dtr_length_reg[3] 
       (.C(s_axi4_aclk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_63),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_69),
        .Q(dtr_length[3]),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE \dtr_length_reg[4] 
       (.C(s_axi4_aclk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_63),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_68),
        .Q(dtr_length[4]),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE \dtr_length_reg[5] 
       (.C(s_axi4_aclk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_63),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_67),
        .Q(dtr_length[5]),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE \dtr_length_reg[6] 
       (.C(s_axi4_aclk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_63),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_66),
        .Q(dtr_length[6]),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE \dtr_length_reg[7] 
       (.C(s_axi4_aclk),
        .CE(XIP_CLK_DOMAIN_SIGNALS_n_63),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_65),
        .Q(dtr_length[7]),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE four_byte_xfer_reg
       (.C(s_axi4_aclk),
        .CE(load_axi_data_frm_axi_clk),
        .D(s_axi4_arsize[1]),
        .Q(four_byte_xfer),
        .R(bus2ip_reset_ipif4_inverted));
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    last_data_acked_i_2
       (.I0(s_axi4_rlast_INST_0_i_3_n_0),
        .I1(dtr_length[4]),
        .I2(dtr_length[5]),
        .I3(dtr_length[6]),
        .I4(dtr_length[7]),
        .O(last_data_acked_i_2_n_0));
  FDRE last_data_acked_reg
       (.C(s_axi4_aclk),
        .CE(1'b1),
        .D(XIP_RECEIVE_FIFO_II_n_3),
        .Q(last_data_acked),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    one_byte_xfer_i_1
       (.I0(s_axi4_arsize[0]),
        .I1(s_axi4_arsize[1]),
        .O(one_byte_xfer_i_1_n_0));
  FDRE one_byte_xfer_reg
       (.C(s_axi4_aclk),
        .CE(load_axi_data_frm_axi_clk),
        .D(one_byte_xfer_i_1_n_0),
        .Q(one_byte_xfer),
        .R(bus2ip_reset_ipif4_inverted));
  LUT6 #(
    .INIT(64'h0002FFFF00020000)) 
    s_axi4_rlast_INST_0
       (.I0(s_axi4_rlast_INST_0_i_1_n_0),
        .I1(S_AXI4_ARLEN_ii[6]),
        .I2(S_AXI4_ARLEN_ii[7]),
        .I3(S_AXI4_ARLEN_ii[5]),
        .I4(s_axi4_rresp),
        .I5(\XIP_MODE_GEN.bus2ip_reset_ipif4_inverted_reg ),
        .O(s_axi4_rlast));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    s_axi4_rlast_INST_0_i_1
       (.I0(S_AXI4_ARLEN_ii[2]),
        .I1(S_AXI4_ARLEN_ii[3]),
        .I2(S_AXI4_ARLEN_ii[1]),
        .I3(S_AXI4_ARLEN_ii[0]),
        .I4(S_AXI4_ARLEN_ii[4]),
        .O(s_axi4_rlast_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    s_axi4_rlast_INST_0_i_2
       (.I0(bus2ip_reset_ipif4_inverted),
        .I1(dtr_length[7]),
        .I2(dtr_length[6]),
        .I3(dtr_length[5]),
        .I4(dtr_length[4]),
        .I5(s_axi4_rlast_INST_0_i_3_n_0),
        .O(\XIP_MODE_GEN.bus2ip_reset_ipif4_inverted_reg ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    s_axi4_rlast_INST_0_i_3
       (.I0(dtr_length[0]),
        .I1(dtr_length[1]),
        .I2(dtr_length[3]),
        .I3(dtr_length[2]),
        .O(s_axi4_rlast_INST_0_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'h5455)) 
    \size_length_cntr[1]_i_3 
       (.I0(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[0]_0 ),
        .I1(size_length_cntr[1]),
        .I2(size_length_cntr[0]),
        .I3(SPIXfer_done_int),
        .O(\size_length_cntr[1]_i_3_n_0 ));
  FDRE \size_length_cntr_fixed_reg[0] 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_47),
        .Q(\size_length_cntr_fixed_reg_n_0_[0] ),
        .R(Rst_to_spi));
  FDRE \size_length_cntr_fixed_reg[1] 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_46),
        .Q(\size_length_cntr_fixed_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \size_length_cntr_reg[0] 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_44),
        .Q(size_length_cntr[0]),
        .R(Rst_to_spi));
  FDRE \size_length_cntr_reg[1] 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_45),
        .Q(size_length_cntr[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'hEC23)) 
    \spi_addr_wrap_1[0]_i_1 
       (.I0(\spi_addr_wrap_1_reg[3]_i_2_n_7 ),
        .I1(\size_length_cntr_fixed_reg_n_0_[1] ),
        .I2(\size_length_cntr_fixed_reg_n_0_[0] ),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[0] ),
        .O(\spi_addr_wrap_1[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    \spi_addr_wrap_1[10]_i_1 
       (.I0(\spi_addr_wrap_1_reg[11]_i_2_n_5 ),
        .I1(data4[10]),
        .I2(\size_length_cntr_fixed_reg_n_0_[0] ),
        .I3(\size_length_cntr_fixed_reg_n_0_[1] ),
        .I4(data2[10]),
        .I5(\spi_addr_wrap_1_reg[12]_i_3_n_6 ),
        .O(\spi_addr_wrap_1[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    \spi_addr_wrap_1[11]_i_1 
       (.I0(\spi_addr_wrap_1_reg[11]_i_2_n_4 ),
        .I1(data4[11]),
        .I2(\size_length_cntr_fixed_reg_n_0_[0] ),
        .I3(\size_length_cntr_fixed_reg_n_0_[1] ),
        .I4(data2[11]),
        .I5(\spi_addr_wrap_1_reg[12]_i_3_n_5 ),
        .O(\spi_addr_wrap_1[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \spi_addr_wrap_1[12]_i_1 
       (.I0(\spi_addr_wrap_1_reg[15]_i_2_n_7 ),
        .I1(data4[12]),
        .I2(data2[12]),
        .I3(\size_length_cntr_fixed_reg_n_0_[0] ),
        .I4(\size_length_cntr_fixed_reg_n_0_[1] ),
        .I5(\spi_addr_wrap_1_reg[12]_i_3_n_4 ),
        .O(\spi_addr_wrap_1[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00AAAACCCCF0F0)) 
    \spi_addr_wrap_1[13]_i_1 
       (.I0(\spi_addr_wrap_1_reg[15]_i_2_n_6 ),
        .I1(\spi_addr_wrap_1_reg[16]_i_2_n_7 ),
        .I2(data4[13]),
        .I3(data2[13]),
        .I4(\size_length_cntr_fixed_reg_n_0_[1] ),
        .I5(\size_length_cntr_fixed_reg_n_0_[0] ),
        .O(\spi_addr_wrap_1[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00AAAACCCCF0F0)) 
    \spi_addr_wrap_1[14]_i_1 
       (.I0(\spi_addr_wrap_1_reg[15]_i_2_n_5 ),
        .I1(\spi_addr_wrap_1_reg[16]_i_2_n_6 ),
        .I2(data4[14]),
        .I3(data2[14]),
        .I4(\size_length_cntr_fixed_reg_n_0_[1] ),
        .I5(\size_length_cntr_fixed_reg_n_0_[0] ),
        .O(\spi_addr_wrap_1[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00AAAACCCCF0F0)) 
    \spi_addr_wrap_1[15]_i_1 
       (.I0(\spi_addr_wrap_1_reg[15]_i_2_n_4 ),
        .I1(\spi_addr_wrap_1_reg[16]_i_2_n_5 ),
        .I2(data4[15]),
        .I3(data2[15]),
        .I4(\size_length_cntr_fixed_reg_n_0_[1] ),
        .I5(\size_length_cntr_fixed_reg_n_0_[0] ),
        .O(\spi_addr_wrap_1[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00AAAACCCCF0F0)) 
    \spi_addr_wrap_1[16]_i_1 
       (.I0(\spi_addr_wrap_1_reg[19]_i_2_n_7 ),
        .I1(\spi_addr_wrap_1_reg[16]_i_2_n_4 ),
        .I2(data4[16]),
        .I3(data2[16]),
        .I4(\size_length_cntr_fixed_reg_n_0_[1] ),
        .I5(\size_length_cntr_fixed_reg_n_0_[0] ),
        .O(\spi_addr_wrap_1[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00AAAACCCCF0F0)) 
    \spi_addr_wrap_1[17]_i_1 
       (.I0(\spi_addr_wrap_1_reg[19]_i_2_n_6 ),
        .I1(\spi_addr_wrap_1_reg[20]_i_3_n_7 ),
        .I2(data4[17]),
        .I3(data2[17]),
        .I4(\size_length_cntr_fixed_reg_n_0_[1] ),
        .I5(\size_length_cntr_fixed_reg_n_0_[0] ),
        .O(\spi_addr_wrap_1[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00AAAACCCCF0F0)) 
    \spi_addr_wrap_1[18]_i_1 
       (.I0(\spi_addr_wrap_1_reg[19]_i_2_n_5 ),
        .I1(\spi_addr_wrap_1_reg[20]_i_3_n_6 ),
        .I2(data4[18]),
        .I3(data2[18]),
        .I4(\size_length_cntr_fixed_reg_n_0_[1] ),
        .I5(\size_length_cntr_fixed_reg_n_0_[0] ),
        .O(\spi_addr_wrap_1[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \spi_addr_wrap_1[19]_i_1 
       (.I0(data4[19]),
        .I1(\spi_addr_wrap_1_reg[20]_i_3_n_5 ),
        .I2(\spi_addr_wrap_1_reg[19]_i_2_n_4 ),
        .I3(data2[19]),
        .I4(\size_length_cntr_fixed_reg_n_0_[1] ),
        .I5(\size_length_cntr_fixed_reg_n_0_[0] ),
        .O(\spi_addr_wrap_1[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \spi_addr_wrap_1[1]_i_1 
       (.I0(\spi_addr_wrap_1_reg[3]_i_2_n_6 ),
        .I1(p_8_in),
        .I2(data4[1]),
        .I3(\size_length_cntr_fixed_reg_n_0_[0] ),
        .I4(\size_length_cntr_fixed_reg_n_0_[1] ),
        .I5(\spi_addr_wrap_1_reg[4]_i_2_n_7 ),
        .O(\spi_addr_wrap_1[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \spi_addr_wrap_1[20]_i_1 
       (.I0(data4[20]),
        .I1(\spi_addr_wrap_1_reg[20]_i_3_n_4 ),
        .I2(\spi_addr_wrap_1_reg[23]_i_4_n_7 ),
        .I3(data2[20]),
        .I4(\size_length_cntr_fixed_reg_n_0_[1] ),
        .I5(\size_length_cntr_fixed_reg_n_0_[0] ),
        .O(\spi_addr_wrap_1[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00AAAACCCCF0F0)) 
    \spi_addr_wrap_1[21]_i_1 
       (.I0(\spi_addr_wrap_1_reg[23]_i_4_n_6 ),
        .I1(\spi_addr_wrap_1_reg[23]_i_3_n_7 ),
        .I2(data4[21]),
        .I3(data2[21]),
        .I4(\size_length_cntr_fixed_reg_n_0_[1] ),
        .I5(\size_length_cntr_fixed_reg_n_0_[0] ),
        .O(\spi_addr_wrap_1[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \spi_addr_wrap_1[22]_i_1 
       (.I0(data2[22]),
        .I1(\size_length_cntr_fixed_reg_n_0_[1] ),
        .I2(\size_length_cntr_fixed_reg_n_0_[0] ),
        .I3(\spi_addr_wrap_1_reg[23]_i_4_n_5 ),
        .I4(\spi_addr_wrap_1_reg[23]_i_3_n_6 ),
        .I5(data4[22]),
        .O(\spi_addr_wrap_1[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFBCB3B08F8C8380)) 
    \spi_addr_wrap_1[23]_i_1 
       (.I0(data2[23]),
        .I1(\size_length_cntr_fixed_reg_n_0_[1] ),
        .I2(\size_length_cntr_fixed_reg_n_0_[0] ),
        .I3(data4[23]),
        .I4(\spi_addr_wrap_1_reg[23]_i_3_n_5 ),
        .I5(\spi_addr_wrap_1_reg[23]_i_4_n_4 ),
        .O(\spi_addr_wrap_1[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \spi_addr_wrap_1[2]_i_1 
       (.I0(\spi_addr_wrap_1_reg[3]_i_2_n_5 ),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[2] ),
        .I2(data4[2]),
        .I3(\size_length_cntr_fixed_reg_n_0_[0] ),
        .I4(\size_length_cntr_fixed_reg_n_0_[1] ),
        .I5(\spi_addr_wrap_1_reg[4]_i_2_n_6 ),
        .O(\spi_addr_wrap_1[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \spi_addr_wrap_1[3]_i_1 
       (.I0(\spi_addr_wrap_1_reg[3]_i_2_n_4 ),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[3] ),
        .I2(data4[3]),
        .I3(\size_length_cntr_fixed_reg_n_0_[0] ),
        .I4(\size_length_cntr_fixed_reg_n_0_[1] ),
        .I5(\spi_addr_wrap_1_reg[4]_i_2_n_5 ),
        .O(\spi_addr_wrap_1[3]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \spi_addr_wrap_1[3]_i_3 
       (.I0(p_8_in),
        .O(\spi_addr_wrap_1[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0CCFFAAF0CC00)) 
    \spi_addr_wrap_1[4]_i_1 
       (.I0(data2[4]),
        .I1(\spi_addr_wrap_1_reg[4]_i_2_n_4 ),
        .I2(\spi_addr_wrap_1_reg[7]_i_2_n_7 ),
        .I3(\size_length_cntr_fixed_reg_n_0_[1] ),
        .I4(\size_length_cntr_fixed_reg_n_0_[0] ),
        .I5(data4[4]),
        .O(\spi_addr_wrap_1[4]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \spi_addr_wrap_1[4]_i_4 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[2] ),
        .O(\spi_addr_wrap_1[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \spi_addr_wrap_1[5]_i_1 
       (.I0(\spi_addr_wrap_1_reg[7]_i_2_n_6 ),
        .I1(data4[5]),
        .I2(data2[5]),
        .I3(\size_length_cntr_fixed_reg_n_0_[0] ),
        .I4(\size_length_cntr_fixed_reg_n_0_[1] ),
        .I5(\spi_addr_wrap_1_reg[8]_i_3_n_7 ),
        .O(\spi_addr_wrap_1[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    \spi_addr_wrap_1[6]_i_1 
       (.I0(\spi_addr_wrap_1_reg[7]_i_2_n_5 ),
        .I1(data4[6]),
        .I2(\size_length_cntr_fixed_reg_n_0_[0] ),
        .I3(\size_length_cntr_fixed_reg_n_0_[1] ),
        .I4(data2[6]),
        .I5(\spi_addr_wrap_1_reg[8]_i_3_n_6 ),
        .O(\spi_addr_wrap_1[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    \spi_addr_wrap_1[7]_i_1 
       (.I0(\spi_addr_wrap_1_reg[7]_i_2_n_4 ),
        .I1(data4[7]),
        .I2(\size_length_cntr_fixed_reg_n_0_[0] ),
        .I3(\size_length_cntr_fixed_reg_n_0_[1] ),
        .I4(data2[7]),
        .I5(\spi_addr_wrap_1_reg[8]_i_3_n_5 ),
        .O(\spi_addr_wrap_1[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    \spi_addr_wrap_1[8]_i_1 
       (.I0(\spi_addr_wrap_1_reg[11]_i_2_n_7 ),
        .I1(data4[8]),
        .I2(\size_length_cntr_fixed_reg_n_0_[0] ),
        .I3(\size_length_cntr_fixed_reg_n_0_[1] ),
        .I4(data2[8]),
        .I5(\spi_addr_wrap_1_reg[8]_i_3_n_4 ),
        .O(\spi_addr_wrap_1[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    \spi_addr_wrap_1[9]_i_1 
       (.I0(\spi_addr_wrap_1_reg[11]_i_2_n_6 ),
        .I1(data4[9]),
        .I2(\size_length_cntr_fixed_reg_n_0_[0] ),
        .I3(\size_length_cntr_fixed_reg_n_0_[1] ),
        .I4(data2[9]),
        .I5(\spi_addr_wrap_1_reg[12]_i_3_n_7 ),
        .O(\spi_addr_wrap_1[9]_i_1_n_0 ));
  FDRE \spi_addr_wrap_1_reg[0] 
       (.C(ext_spi_clk),
        .CE(wrap_around_reg_n_0),
        .D(\spi_addr_wrap_1[0]_i_1_n_0 ),
        .Q(spi_addr_wrap_1[0]),
        .R(Rst_to_spi));
  FDRE \spi_addr_wrap_1_reg[10] 
       (.C(ext_spi_clk),
        .CE(wrap_around_reg_n_0),
        .D(\spi_addr_wrap_1[10]_i_1_n_0 ),
        .Q(spi_addr_wrap_1[10]),
        .R(Rst_to_spi));
  FDRE \spi_addr_wrap_1_reg[11] 
       (.C(ext_spi_clk),
        .CE(wrap_around_reg_n_0),
        .D(\spi_addr_wrap_1[11]_i_1_n_0 ),
        .Q(spi_addr_wrap_1[11]),
        .R(Rst_to_spi));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \spi_addr_wrap_1_reg[11]_i_2 
       (.CI(\spi_addr_wrap_1_reg[7]_i_2_n_0 ),
        .CO({\spi_addr_wrap_1_reg[11]_i_2_n_0 ,\spi_addr_wrap_1_reg[11]_i_2_n_1 ,\spi_addr_wrap_1_reg[11]_i_2_n_2 ,\spi_addr_wrap_1_reg[11]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\spi_addr_wrap_1_reg[11]_i_2_n_4 ,\spi_addr_wrap_1_reg[11]_i_2_n_5 ,\spi_addr_wrap_1_reg[11]_i_2_n_6 ,\spi_addr_wrap_1_reg[11]_i_2_n_7 }),
        .S(data2[11:8]));
  FDRE \spi_addr_wrap_1_reg[12] 
       (.C(ext_spi_clk),
        .CE(wrap_around_reg_n_0),
        .D(\spi_addr_wrap_1[12]_i_1_n_0 ),
        .Q(spi_addr_wrap_1[12]),
        .R(Rst_to_spi));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \spi_addr_wrap_1_reg[12]_i_2 
       (.CI(\spi_addr_wrap_1_reg[8]_i_2_n_0 ),
        .CO({\spi_addr_wrap_1_reg[12]_i_2_n_0 ,\spi_addr_wrap_1_reg[12]_i_2_n_1 ,\spi_addr_wrap_1_reg[12]_i_2_n_2 ,\spi_addr_wrap_1_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data4[12:9]),
        .S(data2[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \spi_addr_wrap_1_reg[12]_i_3 
       (.CI(\spi_addr_wrap_1_reg[8]_i_3_n_0 ),
        .CO({\spi_addr_wrap_1_reg[12]_i_3_n_0 ,\spi_addr_wrap_1_reg[12]_i_3_n_1 ,\spi_addr_wrap_1_reg[12]_i_3_n_2 ,\spi_addr_wrap_1_reg[12]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\spi_addr_wrap_1_reg[12]_i_3_n_4 ,\spi_addr_wrap_1_reg[12]_i_3_n_5 ,\spi_addr_wrap_1_reg[12]_i_3_n_6 ,\spi_addr_wrap_1_reg[12]_i_3_n_7 }),
        .S(data2[12:9]));
  FDRE \spi_addr_wrap_1_reg[13] 
       (.C(ext_spi_clk),
        .CE(wrap_around_reg_n_0),
        .D(\spi_addr_wrap_1[13]_i_1_n_0 ),
        .Q(spi_addr_wrap_1[13]),
        .R(Rst_to_spi));
  FDRE \spi_addr_wrap_1_reg[14] 
       (.C(ext_spi_clk),
        .CE(wrap_around_reg_n_0),
        .D(\spi_addr_wrap_1[14]_i_1_n_0 ),
        .Q(spi_addr_wrap_1[14]),
        .R(Rst_to_spi));
  FDRE \spi_addr_wrap_1_reg[15] 
       (.C(ext_spi_clk),
        .CE(wrap_around_reg_n_0),
        .D(\spi_addr_wrap_1[15]_i_1_n_0 ),
        .Q(spi_addr_wrap_1[15]),
        .R(Rst_to_spi));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \spi_addr_wrap_1_reg[15]_i_2 
       (.CI(\spi_addr_wrap_1_reg[11]_i_2_n_0 ),
        .CO({\spi_addr_wrap_1_reg[15]_i_2_n_0 ,\spi_addr_wrap_1_reg[15]_i_2_n_1 ,\spi_addr_wrap_1_reg[15]_i_2_n_2 ,\spi_addr_wrap_1_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\spi_addr_wrap_1_reg[15]_i_2_n_4 ,\spi_addr_wrap_1_reg[15]_i_2_n_5 ,\spi_addr_wrap_1_reg[15]_i_2_n_6 ,\spi_addr_wrap_1_reg[15]_i_2_n_7 }),
        .S(data2[15:12]));
  FDRE \spi_addr_wrap_1_reg[16] 
       (.C(ext_spi_clk),
        .CE(wrap_around_reg_n_0),
        .D(\spi_addr_wrap_1[16]_i_1_n_0 ),
        .Q(spi_addr_wrap_1[16]),
        .R(Rst_to_spi));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \spi_addr_wrap_1_reg[16]_i_2 
       (.CI(\spi_addr_wrap_1_reg[12]_i_3_n_0 ),
        .CO({\spi_addr_wrap_1_reg[16]_i_2_n_0 ,\spi_addr_wrap_1_reg[16]_i_2_n_1 ,\spi_addr_wrap_1_reg[16]_i_2_n_2 ,\spi_addr_wrap_1_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\spi_addr_wrap_1_reg[16]_i_2_n_4 ,\spi_addr_wrap_1_reg[16]_i_2_n_5 ,\spi_addr_wrap_1_reg[16]_i_2_n_6 ,\spi_addr_wrap_1_reg[16]_i_2_n_7 }),
        .S(data2[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \spi_addr_wrap_1_reg[16]_i_3 
       (.CI(\spi_addr_wrap_1_reg[12]_i_2_n_0 ),
        .CO({\spi_addr_wrap_1_reg[16]_i_3_n_0 ,\spi_addr_wrap_1_reg[16]_i_3_n_1 ,\spi_addr_wrap_1_reg[16]_i_3_n_2 ,\spi_addr_wrap_1_reg[16]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data4[16:13]),
        .S(data2[16:13]));
  FDRE \spi_addr_wrap_1_reg[17] 
       (.C(ext_spi_clk),
        .CE(wrap_around_reg_n_0),
        .D(\spi_addr_wrap_1[17]_i_1_n_0 ),
        .Q(spi_addr_wrap_1[17]),
        .R(Rst_to_spi));
  FDRE \spi_addr_wrap_1_reg[18] 
       (.C(ext_spi_clk),
        .CE(wrap_around_reg_n_0),
        .D(\spi_addr_wrap_1[18]_i_1_n_0 ),
        .Q(spi_addr_wrap_1[18]),
        .R(Rst_to_spi));
  FDRE \spi_addr_wrap_1_reg[19] 
       (.C(ext_spi_clk),
        .CE(wrap_around_reg_n_0),
        .D(\spi_addr_wrap_1[19]_i_1_n_0 ),
        .Q(spi_addr_wrap_1[19]),
        .R(Rst_to_spi));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \spi_addr_wrap_1_reg[19]_i_2 
       (.CI(\spi_addr_wrap_1_reg[15]_i_2_n_0 ),
        .CO({\spi_addr_wrap_1_reg[19]_i_2_n_0 ,\spi_addr_wrap_1_reg[19]_i_2_n_1 ,\spi_addr_wrap_1_reg[19]_i_2_n_2 ,\spi_addr_wrap_1_reg[19]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\spi_addr_wrap_1_reg[19]_i_2_n_4 ,\spi_addr_wrap_1_reg[19]_i_2_n_5 ,\spi_addr_wrap_1_reg[19]_i_2_n_6 ,\spi_addr_wrap_1_reg[19]_i_2_n_7 }),
        .S(data2[19:16]));
  FDRE \spi_addr_wrap_1_reg[1] 
       (.C(ext_spi_clk),
        .CE(wrap_around_reg_n_0),
        .D(\spi_addr_wrap_1[1]_i_1_n_0 ),
        .Q(spi_addr_wrap_1[1]),
        .R(Rst_to_spi));
  FDRE \spi_addr_wrap_1_reg[20] 
       (.C(ext_spi_clk),
        .CE(wrap_around_reg_n_0),
        .D(\spi_addr_wrap_1[20]_i_1_n_0 ),
        .Q(spi_addr_wrap_1[20]),
        .R(Rst_to_spi));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \spi_addr_wrap_1_reg[20]_i_2 
       (.CI(\spi_addr_wrap_1_reg[16]_i_3_n_0 ),
        .CO({\spi_addr_wrap_1_reg[20]_i_2_n_0 ,\spi_addr_wrap_1_reg[20]_i_2_n_1 ,\spi_addr_wrap_1_reg[20]_i_2_n_2 ,\spi_addr_wrap_1_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data4[20:17]),
        .S(data2[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \spi_addr_wrap_1_reg[20]_i_3 
       (.CI(\spi_addr_wrap_1_reg[16]_i_2_n_0 ),
        .CO({\spi_addr_wrap_1_reg[20]_i_3_n_0 ,\spi_addr_wrap_1_reg[20]_i_3_n_1 ,\spi_addr_wrap_1_reg[20]_i_3_n_2 ,\spi_addr_wrap_1_reg[20]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\spi_addr_wrap_1_reg[20]_i_3_n_4 ,\spi_addr_wrap_1_reg[20]_i_3_n_5 ,\spi_addr_wrap_1_reg[20]_i_3_n_6 ,\spi_addr_wrap_1_reg[20]_i_3_n_7 }),
        .S(data2[20:17]));
  FDRE \spi_addr_wrap_1_reg[21] 
       (.C(ext_spi_clk),
        .CE(wrap_around_reg_n_0),
        .D(\spi_addr_wrap_1[21]_i_1_n_0 ),
        .Q(spi_addr_wrap_1[21]),
        .R(Rst_to_spi));
  FDRE \spi_addr_wrap_1_reg[22] 
       (.C(ext_spi_clk),
        .CE(wrap_around_reg_n_0),
        .D(\spi_addr_wrap_1[22]_i_1_n_0 ),
        .Q(spi_addr_wrap_1[22]),
        .R(Rst_to_spi));
  FDRE \spi_addr_wrap_1_reg[23] 
       (.C(ext_spi_clk),
        .CE(wrap_around_reg_n_0),
        .D(\spi_addr_wrap_1[23]_i_1_n_0 ),
        .Q(spi_addr_wrap_1[23]),
        .R(Rst_to_spi));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \spi_addr_wrap_1_reg[23]_i_2 
       (.CI(\spi_addr_wrap_1_reg[20]_i_2_n_0 ),
        .CO({\NLW_spi_addr_wrap_1_reg[23]_i_2_CO_UNCONNECTED [3:2],\spi_addr_wrap_1_reg[23]_i_2_n_2 ,\spi_addr_wrap_1_reg[23]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_spi_addr_wrap_1_reg[23]_i_2_O_UNCONNECTED [3],data4[23:21]}),
        .S({1'b0,data2[23:21]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \spi_addr_wrap_1_reg[23]_i_3 
       (.CI(\spi_addr_wrap_1_reg[20]_i_3_n_0 ),
        .CO({\NLW_spi_addr_wrap_1_reg[23]_i_3_CO_UNCONNECTED [3:2],\spi_addr_wrap_1_reg[23]_i_3_n_2 ,\spi_addr_wrap_1_reg[23]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_spi_addr_wrap_1_reg[23]_i_3_O_UNCONNECTED [3],\spi_addr_wrap_1_reg[23]_i_3_n_5 ,\spi_addr_wrap_1_reg[23]_i_3_n_6 ,\spi_addr_wrap_1_reg[23]_i_3_n_7 }),
        .S({1'b0,data2[23:21]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \spi_addr_wrap_1_reg[23]_i_4 
       (.CI(\spi_addr_wrap_1_reg[19]_i_2_n_0 ),
        .CO({\NLW_spi_addr_wrap_1_reg[23]_i_4_CO_UNCONNECTED [3],\spi_addr_wrap_1_reg[23]_i_4_n_1 ,\spi_addr_wrap_1_reg[23]_i_4_n_2 ,\spi_addr_wrap_1_reg[23]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\spi_addr_wrap_1_reg[23]_i_4_n_4 ,\spi_addr_wrap_1_reg[23]_i_4_n_5 ,\spi_addr_wrap_1_reg[23]_i_4_n_6 ,\spi_addr_wrap_1_reg[23]_i_4_n_7 }),
        .S(data2[23:20]));
  FDRE \spi_addr_wrap_1_reg[2] 
       (.C(ext_spi_clk),
        .CE(wrap_around_reg_n_0),
        .D(\spi_addr_wrap_1[2]_i_1_n_0 ),
        .Q(spi_addr_wrap_1[2]),
        .R(Rst_to_spi));
  FDRE \spi_addr_wrap_1_reg[3] 
       (.C(ext_spi_clk),
        .CE(wrap_around_reg_n_0),
        .D(\spi_addr_wrap_1[3]_i_1_n_0 ),
        .Q(spi_addr_wrap_1[3]),
        .R(Rst_to_spi));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \spi_addr_wrap_1_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\spi_addr_wrap_1_reg[3]_i_2_n_0 ,\spi_addr_wrap_1_reg[3]_i_2_n_1 ,\spi_addr_wrap_1_reg[3]_i_2_n_2 ,\spi_addr_wrap_1_reg[3]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,p_8_in,1'b0}),
        .O({\spi_addr_wrap_1_reg[3]_i_2_n_4 ,\spi_addr_wrap_1_reg[3]_i_2_n_5 ,\spi_addr_wrap_1_reg[3]_i_2_n_6 ,\spi_addr_wrap_1_reg[3]_i_2_n_7 }),
        .S({\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[3] ,\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[2] ,\spi_addr_wrap_1[3]_i_3_n_0 ,\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[0] }));
  FDRE \spi_addr_wrap_1_reg[4] 
       (.C(ext_spi_clk),
        .CE(wrap_around_reg_n_0),
        .D(\spi_addr_wrap_1[4]_i_1_n_0 ),
        .Q(spi_addr_wrap_1[4]),
        .R(Rst_to_spi));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \spi_addr_wrap_1_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\spi_addr_wrap_1_reg[4]_i_2_n_0 ,\spi_addr_wrap_1_reg[4]_i_2_n_1 ,\spi_addr_wrap_1_reg[4]_i_2_n_2 ,\spi_addr_wrap_1_reg[4]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[2] ,1'b0}),
        .O({\spi_addr_wrap_1_reg[4]_i_2_n_4 ,\spi_addr_wrap_1_reg[4]_i_2_n_5 ,\spi_addr_wrap_1_reg[4]_i_2_n_6 ,\spi_addr_wrap_1_reg[4]_i_2_n_7 }),
        .S({data2[4],\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[3] ,\spi_addr_wrap_1[4]_i_4_n_0 ,p_8_in}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \spi_addr_wrap_1_reg[4]_i_3 
       (.CI(1'b0),
        .CO({\spi_addr_wrap_1_reg[4]_i_3_n_0 ,\spi_addr_wrap_1_reg[4]_i_3_n_1 ,\spi_addr_wrap_1_reg[4]_i_3_n_2 ,\spi_addr_wrap_1_reg[4]_i_3_n_3 }),
        .CYINIT(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data4[4:1]),
        .S({data2[4],\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[3] ,\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[2] ,p_8_in}));
  FDRE \spi_addr_wrap_1_reg[5] 
       (.C(ext_spi_clk),
        .CE(wrap_around_reg_n_0),
        .D(\spi_addr_wrap_1[5]_i_1_n_0 ),
        .Q(spi_addr_wrap_1[5]),
        .R(Rst_to_spi));
  FDRE \spi_addr_wrap_1_reg[6] 
       (.C(ext_spi_clk),
        .CE(wrap_around_reg_n_0),
        .D(\spi_addr_wrap_1[6]_i_1_n_0 ),
        .Q(spi_addr_wrap_1[6]),
        .R(Rst_to_spi));
  FDRE \spi_addr_wrap_1_reg[7] 
       (.C(ext_spi_clk),
        .CE(wrap_around_reg_n_0),
        .D(\spi_addr_wrap_1[7]_i_1_n_0 ),
        .Q(spi_addr_wrap_1[7]),
        .R(Rst_to_spi));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \spi_addr_wrap_1_reg[7]_i_2 
       (.CI(\spi_addr_wrap_1_reg[3]_i_2_n_0 ),
        .CO({\spi_addr_wrap_1_reg[7]_i_2_n_0 ,\spi_addr_wrap_1_reg[7]_i_2_n_1 ,\spi_addr_wrap_1_reg[7]_i_2_n_2 ,\spi_addr_wrap_1_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\spi_addr_wrap_1_reg[7]_i_2_n_4 ,\spi_addr_wrap_1_reg[7]_i_2_n_5 ,\spi_addr_wrap_1_reg[7]_i_2_n_6 ,\spi_addr_wrap_1_reg[7]_i_2_n_7 }),
        .S(data2[7:4]));
  FDRE \spi_addr_wrap_1_reg[8] 
       (.C(ext_spi_clk),
        .CE(wrap_around_reg_n_0),
        .D(\spi_addr_wrap_1[8]_i_1_n_0 ),
        .Q(spi_addr_wrap_1[8]),
        .R(Rst_to_spi));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \spi_addr_wrap_1_reg[8]_i_2 
       (.CI(\spi_addr_wrap_1_reg[4]_i_3_n_0 ),
        .CO({\spi_addr_wrap_1_reg[8]_i_2_n_0 ,\spi_addr_wrap_1_reg[8]_i_2_n_1 ,\spi_addr_wrap_1_reg[8]_i_2_n_2 ,\spi_addr_wrap_1_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data4[8:5]),
        .S(data2[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \spi_addr_wrap_1_reg[8]_i_3 
       (.CI(\spi_addr_wrap_1_reg[4]_i_2_n_0 ),
        .CO({\spi_addr_wrap_1_reg[8]_i_3_n_0 ,\spi_addr_wrap_1_reg[8]_i_3_n_1 ,\spi_addr_wrap_1_reg[8]_i_3_n_2 ,\spi_addr_wrap_1_reg[8]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\spi_addr_wrap_1_reg[8]_i_3_n_4 ,\spi_addr_wrap_1_reg[8]_i_3_n_5 ,\spi_addr_wrap_1_reg[8]_i_3_n_6 ,\spi_addr_wrap_1_reg[8]_i_3_n_7 }),
        .S(data2[8:5]));
  FDRE \spi_addr_wrap_1_reg[9] 
       (.C(ext_spi_clk),
        .CE(wrap_around_reg_n_0),
        .D(\spi_addr_wrap_1[9]_i_1_n_0 ),
        .Q(spi_addr_wrap_1[9]),
        .R(Rst_to_spi));
  LUT3 #(
    .INIT(8'h04)) 
    start_after_wrap_d1_i_1
       (.I0(\SR_5_TX_EMPTY_24_BIT_ADDR_GEN.SR_5_Tx_Empty_reg_0 ),
        .I1(wrap_around_d2),
        .I2(wrap_around_d1),
        .O(start_after_wrap));
  FDRE start_after_wrap_d1_reg
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(start_after_wrap),
        .Q(start_after_wrap_d1),
        .R(Rst_to_spi));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    store_date_in_drr_fifo_d1_i_1
       (.I0(SPIXfer_done_int),
        .I1(cmd_addr_sent),
        .I2(size_length_cntr[1]),
        .I3(size_length_cntr[0]),
        .O(p_72_in));
  FDRE store_date_in_drr_fifo_d1_reg
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(p_72_in),
        .Q(store_date_in_drr_fifo_d1),
        .R(Rst_to_spi));
  FDRE store_date_in_drr_fifo_d2_reg
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(store_date_in_drr_fifo_d1),
        .Q(store_date_in_drr_fifo_d2),
        .R(Rst_to_spi));
  FDRE store_date_in_drr_fifo_d3_reg
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(store_date_in_drr_fifo_d2),
        .Q(store_date_in_drr_fifo_d3),
        .R(Rst_to_spi));
  FDRE transfer_start_d1_reg
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(transfer_start),
        .Q(transfer_start_d1),
        .R(cmd_addr_cntr1));
  FDRE transfer_start_d2_reg
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(transfer_start_d1),
        .Q(transfer_start_d2),
        .R(cmd_addr_cntr1));
  FDRE two_byte_xfer_reg
       (.C(s_axi4_aclk),
        .CE(load_axi_data_frm_axi_clk),
        .D(s_axi4_arsize[0]),
        .Q(two_byte_xfer),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE type_of_burst_reg
       (.C(s_axi4_aclk),
        .CE(load_axi_data_frm_axi_clk),
        .D(s_axi4_arburst[1]),
        .Q(type_of_burst),
        .R(bus2ip_reset_ipif4_inverted));
  FDRE wrap_around_d1_reg
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(wrap_around_reg_n_0),
        .Q(wrap_around_d1),
        .R(cmd_addr_cntr1));
  FDRE wrap_around_d2_reg
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(wrap_around_d1),
        .Q(wrap_around_d2),
        .R(cmd_addr_cntr1));
  FDRE wrap_around_d3_reg
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(wrap_around_d2),
        .Q(wrap_around_d3),
        .R(cmd_addr_cntr1));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'hFBFF)) 
    wrap_around_i_11
       (.I0(\size_length_cntr_fixed_reg_n_0_[1] ),
        .I1(\size_length_cntr_fixed_reg_n_0_[0] ),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[0] ),
        .I3(p_8_in),
        .O(wrap_around_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    wrap_around_i_2
       (.I0(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg_n_0_[4] ),
        .I1(wrap_around_d3),
        .I2(wrap_around_d2),
        .O(wrap_around_i_2_n_0));
  LUT6 #(
    .INIT(64'hEFFFFFFFFFFFFFFF)) 
    wrap_around_i_7
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_3_n_0 ),
        .I1(\SR_5_TX_EMPTY_24_BIT_ADDR_GEN.SR_5_Tx_Empty_reg_0 ),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[2] ),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[3] ),
        .I4(p_8_in),
        .I5(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[0] ),
        .O(wrap_around_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    wrap_around_i_9
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[2] ),
        .I1(p_8_in),
        .I2(\size_length_cntr_fixed_reg_n_0_[1] ),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg_n_0_[0] ),
        .O(wrap_around_i_9_n_0));
  FDRE wrap_around_reg
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(XIP_CLK_DOMAIN_SIGNALS_n_75),
        .Q(wrap_around_reg_n_0),
        .R(1'b0));
  FDRE xip_sm_ps_reg
       (.C(s_axi4_aclk),
        .CE(1'b1),
        .D(xip_sm_ns),
        .Q(xip_sm_ps),
        .R(bus2ip_reset_ipif4_inverted));
endmodule

(* Async_Clk = "0" *) (* C_BYTE_LEVEL_INTERRUPT_EN = "0" *) (* C_DUAL_QUAD_MODE = "0" *) 
(* C_FAMILY = "artix7" *) (* C_FIFO_DEPTH = "16" *) (* C_INSTANCE = "axi_quad_spi_inst" *) 
(* C_LSB_STUP = "0" *) (* C_NEW_SEQ_EN = "1" *) (* C_NUM_SS_BITS = "1" *) 
(* C_NUM_TRANSFER_BITS = "8" *) (* C_SCK_RATIO = "2" *) (* C_SELECT_XPM = "1" *) 
(* C_SHARED_STARTUP = "1" *) (* C_SPI_MEMORY = "1" *) (* C_SPI_MEM_ADDR_BITS = "24" *) 
(* C_SPI_MODE = "2" *) (* C_SUB_FAMILY = "artix7" *) (* C_S_AXI4_ADDR_WIDTH = "24" *) 
(* C_S_AXI4_BASEADDR = "0" *) (* C_S_AXI4_DATA_WIDTH = "32" *) (* C_S_AXI4_HIGHADDR = "1048575" *) 
(* C_S_AXI4_ID_WIDTH = "1" *) (* C_S_AXI_ADDR_WIDTH = "7" *) (* C_S_AXI_DATA_WIDTH = "32" *) 
(* C_TYPE_OF_AXI4_INTERFACE = "1" *) (* C_UC_FAMILY = "0" *) (* C_USE_STARTUP = "1" *) 
(* C_USE_STARTUP_EXT = "0" *) (* C_XIP_MODE = "1" *) (* C_XIP_PERF_MODE = "0" *) 
(* ORIG_REF_NAME = "axi_quad_spi" *) (* downgradeipidentifiedwarnings = "yes" *) 
module icyradio_axi_quad_spi_0_0_axi_quad_spi
   (ext_spi_clk,
    s_axi_aclk,
    s_axi_aresetn,
    s_axi4_aclk,
    s_axi4_aresetn,
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
    s_axi4_awid,
    s_axi4_awaddr,
    s_axi4_awlen,
    s_axi4_awsize,
    s_axi4_awburst,
    s_axi4_awlock,
    s_axi4_awcache,
    s_axi4_awprot,
    s_axi4_awvalid,
    s_axi4_awready,
    s_axi4_wdata,
    s_axi4_wstrb,
    s_axi4_wlast,
    s_axi4_wvalid,
    s_axi4_wready,
    s_axi4_bid,
    s_axi4_bresp,
    s_axi4_bvalid,
    s_axi4_bready,
    s_axi4_arid,
    s_axi4_araddr,
    s_axi4_arlen,
    s_axi4_arsize,
    s_axi4_arburst,
    s_axi4_arlock,
    s_axi4_arcache,
    s_axi4_arprot,
    s_axi4_arvalid,
    s_axi4_arready,
    s_axi4_rid,
    s_axi4_rdata,
    s_axi4_rresp,
    s_axi4_rlast,
    s_axi4_rvalid,
    s_axi4_rready,
    io0_i,
    io0_o,
    io0_t,
    io1_i,
    io1_o,
    io1_t,
    io2_i,
    io2_o,
    io2_t,
    io3_i,
    io3_o,
    io3_t,
    io0_1_i,
    io0_1_o,
    io0_1_t,
    io1_1_i,
    io1_1_o,
    io1_1_t,
    io2_1_i,
    io2_1_o,
    io2_1_t,
    io3_1_i,
    io3_1_o,
    io3_1_t,
    spisel,
    sck_i,
    sck_o,
    sck_t,
    ss_i,
    ss_o,
    ss_t,
    ss_1_i,
    ss_1_o,
    ss_1_t,
    cfgclk,
    cfgmclk,
    eos,
    preq,
    clk,
    gsr,
    gts,
    keyclearb,
    usrcclkts,
    usrdoneo,
    usrdonets,
    pack,
    ip2intc_irpt);
  input ext_spi_clk;
  input s_axi_aclk;
  input s_axi_aresetn;
  input s_axi4_aclk;
  input s_axi4_aresetn;
  input [6:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [6:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  input [0:0]s_axi4_awid;
  input [23:0]s_axi4_awaddr;
  input [7:0]s_axi4_awlen;
  input [2:0]s_axi4_awsize;
  input [1:0]s_axi4_awburst;
  input s_axi4_awlock;
  input [3:0]s_axi4_awcache;
  input [2:0]s_axi4_awprot;
  input s_axi4_awvalid;
  output s_axi4_awready;
  input [31:0]s_axi4_wdata;
  input [3:0]s_axi4_wstrb;
  input s_axi4_wlast;
  input s_axi4_wvalid;
  output s_axi4_wready;
  output [0:0]s_axi4_bid;
  output [1:0]s_axi4_bresp;
  output s_axi4_bvalid;
  input s_axi4_bready;
  input [0:0]s_axi4_arid;
  input [23:0]s_axi4_araddr;
  input [7:0]s_axi4_arlen;
  input [2:0]s_axi4_arsize;
  input [1:0]s_axi4_arburst;
  input s_axi4_arlock;
  input [3:0]s_axi4_arcache;
  input [2:0]s_axi4_arprot;
  input s_axi4_arvalid;
  output s_axi4_arready;
  output [0:0]s_axi4_rid;
  output [31:0]s_axi4_rdata;
  output [1:0]s_axi4_rresp;
  output s_axi4_rlast;
  output s_axi4_rvalid;
  input s_axi4_rready;
  input io0_i;
  output io0_o;
  output io0_t;
  input io1_i;
  output io1_o;
  output io1_t;
  input io2_i;
  output io2_o;
  output io2_t;
  input io3_i;
  output io3_o;
  output io3_t;
  input io0_1_i;
  output io0_1_o;
  output io0_1_t;
  input io1_1_i;
  output io1_1_o;
  output io1_1_t;
  input io2_1_i;
  output io2_1_o;
  output io2_1_t;
  input io3_1_i;
  output io3_1_o;
  output io3_1_t;
  (* initialval = "VCC" *) input spisel;
  input sck_i;
  output sck_o;
  output sck_t;
  input [0:0]ss_i;
  output [0:0]ss_o;
  output ss_t;
  input ss_1_i;
  output ss_1_o;
  output ss_1_t;
  output cfgclk;
  output cfgmclk;
  output eos;
  output preq;
  input clk;
  input gsr;
  input gts;
  input keyclearb;
  input usrcclkts;
  input usrdoneo;
  input usrdonets;
  input pack;
  output ip2intc_irpt;

  wire \<const0> ;
  wire cfgclk;
  wire cfgmclk;
  wire clk;
  wire eos;
  wire ext_spi_clk;
  wire gsr;
  wire gts;
  wire io0_i;
  wire io0_o;
  wire io0_t;
  wire io1_i;
  wire io1_o;
  wire io1_t;
  wire io2_i;
  wire io2_o;
  wire io2_t;
  wire io3_i;
  wire io3_o;
  wire io3_t;
  wire keyclearb;
  wire preq;
  wire s_axi4_aclk;
  wire [23:0]s_axi4_araddr;
  wire [1:0]s_axi4_arburst;
  wire s_axi4_aresetn;
  wire [7:0]s_axi4_arlen;
  wire s_axi4_arready;
  wire [2:0]s_axi4_arsize;
  wire s_axi4_arvalid;
  wire [31:0]s_axi4_rdata;
  wire s_axi4_rlast;
  wire s_axi4_rready;
  wire [1:1]\^s_axi4_rresp ;
  wire s_axi4_rvalid;
  wire s_axi_aclk;
  wire [6:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [6:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [4:0]\^s_axi_rdata ;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire [0:0]ss_o;
  wire ss_t;
  wire usrcclkts;
  wire usrdoneo;
  wire usrdonets;

  assign io0_1_o = \<const0> ;
  assign io0_1_t = \<const0> ;
  assign io1_1_o = \<const0> ;
  assign io1_1_t = \<const0> ;
  assign io2_1_o = \<const0> ;
  assign io2_1_t = \<const0> ;
  assign io3_1_o = \<const0> ;
  assign io3_1_t = \<const0> ;
  assign ip2intc_irpt = \<const0> ;
  assign s_axi4_awready = \<const0> ;
  assign s_axi4_bid[0] = \<const0> ;
  assign s_axi4_bresp[1] = \<const0> ;
  assign s_axi4_bresp[0] = \<const0> ;
  assign s_axi4_bvalid = \<const0> ;
  assign s_axi4_rid[0] = \<const0> ;
  assign s_axi4_rresp[1] = \^s_axi4_rresp [1];
  assign s_axi4_rresp[0] = \<const0> ;
  assign s_axi4_wready = \<const0> ;
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
  assign s_axi_rdata[4:3] = \^s_axi_rdata [4:3];
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1:0] = \^s_axi_rdata [1:0];
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign sck_o = \<const0> ;
  assign sck_t = \<const0> ;
  assign ss_1_o = \<const0> ;
  assign ss_1_t = \<const0> ;
  GND GND
       (.G(\<const0> ));
  icyradio_axi_quad_spi_0_0_axi_quad_spi_top \NO_DUAL_QUAD_MODE.QSPI_NORMAL 
       (.S_AXI4_ARREADY(s_axi4_arready),
        .\XIP_MODE_GEN.ip2Bus_RdAck_core_reg_d3_reg_0 (s_axi_arready),
        .\XIP_MODE_GEN.ip2bus_wrack_core_reg_reg_0 (s_axi_wready),
        .cfgclk(cfgclk),
        .cfgmclk(cfgmclk),
        .clk(clk),
        .eos(eos),
        .ext_spi_clk(ext_spi_clk),
        .gsr(gsr),
        .gts(gts),
        .io0_i(io0_i),
        .io0_o(io0_o),
        .io0_t(io0_t),
        .io1_i(io1_i),
        .io1_o(io1_o),
        .io1_t(io1_t),
        .io2_i(io2_i),
        .io2_o(io2_o),
        .io2_t(io2_t),
        .io3_i(io3_i),
        .io3_o(io3_o),
        .io3_t(io3_t),
        .keyclearb(keyclearb),
        .preq(preq),
        .s_axi4_aclk(s_axi4_aclk),
        .s_axi4_araddr(s_axi4_araddr),
        .s_axi4_arburst(s_axi4_arburst),
        .s_axi4_aresetn(s_axi4_aresetn),
        .s_axi4_arlen(s_axi4_arlen),
        .s_axi4_arsize(s_axi4_arsize[1:0]),
        .s_axi4_arvalid(s_axi4_arvalid),
        .s_axi4_rdata(s_axi4_rdata),
        .s_axi4_rlast(s_axi4_rlast),
        .s_axi4_rready(s_axi4_rready),
        .s_axi4_rresp(\^s_axi4_rresp ),
        .s_axi4_rvalid(s_axi4_rvalid),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[2]),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[2]),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid_i_reg(s_axi_bvalid),
        .s_axi_rdata({\^s_axi_rdata [4:3],\^s_axi_rdata [1:0]}),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid_i_reg(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata[1:0]),
        .s_axi_wvalid(s_axi_wvalid),
        .ss_o(ss_o),
        .ss_t(ss_t),
        .usrcclkts(usrcclkts),
        .usrdoneo(usrdoneo),
        .usrdonets(usrdonets));
endmodule

(* ORIG_REF_NAME = "axi_quad_spi_top" *) 
module icyradio_axi_quad_spi_0_0_axi_quad_spi_top
   (ss_t,
    io0_t,
    io1_t,
    io2_t,
    io3_t,
    S_AXI4_ARREADY,
    s_axi4_rlast,
    s_axi4_rresp,
    s_axi4_rvalid,
    s_axi4_rdata,
    io3_o,
    io0_o,
    io2_o,
    io1_o,
    ss_o,
    cfgclk,
    cfgmclk,
    eos,
    preq,
    s_axi_rdata,
    \XIP_MODE_GEN.ip2Bus_RdAck_core_reg_d3_reg_0 ,
    \XIP_MODE_GEN.ip2bus_wrack_core_reg_reg_0 ,
    s_axi_bvalid_i_reg,
    s_axi_rvalid_i_reg,
    s_axi4_arsize,
    s_axi_aclk,
    ext_spi_clk,
    s_axi4_aclk,
    s_axi4_araddr,
    s_axi4_arburst,
    s_axi4_rready,
    s_axi4_arvalid,
    s_axi4_arlen,
    clk,
    gsr,
    gts,
    keyclearb,
    usrcclkts,
    usrdoneo,
    usrdonets,
    io0_i,
    io1_i,
    io2_i,
    io3_i,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_arvalid,
    s_axi_araddr,
    s_axi_awaddr,
    s_axi_wdata,
    s_axi_aresetn,
    s_axi_bready,
    s_axi_rready,
    s_axi4_aresetn);
  output ss_t;
  output io0_t;
  output io1_t;
  output io2_t;
  output io3_t;
  output S_AXI4_ARREADY;
  output s_axi4_rlast;
  output [0:0]s_axi4_rresp;
  output s_axi4_rvalid;
  output [31:0]s_axi4_rdata;
  output io3_o;
  output io0_o;
  output io2_o;
  output io1_o;
  output [0:0]ss_o;
  output cfgclk;
  output cfgmclk;
  output eos;
  output preq;
  output [3:0]s_axi_rdata;
  output \XIP_MODE_GEN.ip2Bus_RdAck_core_reg_d3_reg_0 ;
  output \XIP_MODE_GEN.ip2bus_wrack_core_reg_reg_0 ;
  output s_axi_bvalid_i_reg;
  output s_axi_rvalid_i_reg;
  input [1:0]s_axi4_arsize;
  input s_axi_aclk;
  input ext_spi_clk;
  input s_axi4_aclk;
  input [23:0]s_axi4_araddr;
  input [1:0]s_axi4_arburst;
  input s_axi4_rready;
  input s_axi4_arvalid;
  input [7:0]s_axi4_arlen;
  input clk;
  input gsr;
  input gts;
  input keyclearb;
  input usrcclkts;
  input usrdoneo;
  input usrdonets;
  input io0_i;
  input io1_i;
  input io2_i;
  input io3_i;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input s_axi_arvalid;
  input [0:0]s_axi_araddr;
  input [0:0]s_axi_awaddr;
  input [1:0]s_axi_wdata;
  input s_axi_aresetn;
  input s_axi_bready;
  input s_axi_rready;
  input s_axi4_aresetn;

  wire [4:3]IP2Bus_XIPSR_Data_int;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  wire \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_sent_i_1_n_0 ;
  wire [0:0]\RATIO_OF_2_GENERATE.Count_reg ;
  wire \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_0_i_1_n_0 ;
  wire \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_1_i_1_n_0 ;
  wire \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_2_i_1_n_0 ;
  wire Rst_to_spi_int;
  wire Rx_FIFO_Empty;
  wire Rx_FIFO_Empty_Synced_in_SPI_domain;
  wire Rx_FIFO_Full;
  wire SCK_O_int;
  wire SPIXfer_done_int_d1;
  wire SPIXfer_done_int_pulse_d2;
  wire \SR_5_TX_EMPTY_24_BIT_ADDR_GEN.SR_5_Tx_Empty_i_1_n_0 ;
  wire \STORE_NEW_TR_24_BIT_ADDR_GEN.new_tr_i_1_n_0 ;
  wire S_AXI4_ARREADY;
  wire S_AXI4_RLAST_iii;
  wire Serial_Dout_1;
  wire TO_XIPSR_AXI_TR_ERR_int;
  wire TO_XIPSR_CPHA_CPOL_ERR_int;
  wire TO_XIPSR_axi_rx_empty_int;
  wire TO_XIPSR_axi_rx_full_int;
  wire [1:2]Transmit_Data;
  wire XIPCR_0_CPHA_int;
  wire XIPCR_1_CPOL_int;
  wire \XIP_CLK_DOMAIN_SIGNALS/load_axi_data_cdc_to_spi_d2 ;
  wire \XIP_CLK_DOMAIN_SIGNALS/load_axi_data_cdc_to_spi_d3 ;
  wire \XIP_CLK_DOMAIN_SIGNALS/load_cmd_cdc_from_axi_d2 ;
  wire \XIP_CLK_DOMAIN_SIGNALS/load_cmd_cdc_from_axi_d3 ;
  wire \XIP_MODE_GEN.AXI_LITE_IPIF_I_n_14 ;
  wire \XIP_MODE_GEN.AXI_LITE_IPIF_I_n_15 ;
  wire \XIP_MODE_GEN.AXI_LITE_IPIF_I_n_7 ;
  wire \XIP_MODE_GEN.AXI_QSPI_XIP_I_n_26 ;
  wire \XIP_MODE_GEN.AXI_QSPI_XIP_I_n_41 ;
  wire \XIP_MODE_GEN.AXI_QSPI_XIP_I_n_42 ;
  wire \XIP_MODE_GEN.AXI_QSPI_XIP_I_n_43 ;
  wire \XIP_MODE_GEN.AXI_QSPI_XIP_I_n_45 ;
  wire \XIP_MODE_GEN.AXI_QSPI_XIP_I_n_46 ;
  wire \XIP_MODE_GEN.AXI_QSPI_XIP_I_n_81 ;
  wire \XIP_MODE_GEN.AXI_QSPI_XIP_I_n_82 ;
  wire \XIP_MODE_GEN.AXI_QSPI_XIP_I_n_83 ;
  wire \XIP_MODE_GEN.AXI_QSPI_XIP_I_n_85 ;
  wire \XIP_MODE_GEN.XIP_SR_I_n_0 ;
  wire \XIP_MODE_GEN.XIP_SR_I_n_3 ;
  wire \XIP_MODE_GEN.bus2ip_reset_ipif4_inverted_i_1_n_0 ;
  wire \XIP_MODE_GEN.ip2Bus_RdAck_core_reg_d3_reg_0 ;
  wire \XIP_MODE_GEN.ip2bus_wrack_core_reg_reg_0 ;
  wire \XIP_NORMAL_MODE.S_AXI4_RLAST_iii_i_1_n_0 ;
  wire \XIP_NORMAL_MODE.S_AXI4_RRESP_i_i_1_n_0 ;
  wire \XIP_RECEIVE_FIFO_II/full ;
  wire \XIP_RECEIVE_FIFO_II/wr_rst_busy ;
  wire XIP_trans_error_d2;
  wire XIP_trans_error_d3;
  wire bus2ip_reset_ipif4_inverted;
  wire bus2ip_reset_ipif_inverted;
  wire cfgclk;
  wire cfgmclk;
  wire clk;
  wire cmd_addr_sent;
  wire eos;
  wire ext_spi_clk;
  wire gsr;
  wire gts;
  wire io0_i;
  wire io0_i_sync;
  wire io0_o;
  wire io0_t;
  wire io1_i;
  wire io1_i_sync;
  wire io1_o;
  wire io1_t;
  wire io2_i;
  wire io2_i_sync;
  wire io2_o;
  wire io2_t;
  wire io3_i;
  wire io3_i_sync;
  wire io3_o;
  wire io3_t;
  wire ip2Bus_RdAck_core_reg_d3;
  wire [4:0]ip2bus_data_int;
  wire ip2bus_rdack_core_reg_d1;
  wire ip2bus_rdack_core_reg_d10;
  wire ip2bus_rdack_core_reg_d2;
  wire ip2bus_rdack_core_reg_d20;
  wire ip2bus_wrack_core_reg;
  wire ip2bus_wrack_core_reg0;
  wire ip2bus_wrack_core_reg_d1;
  wire ip2bus_wrack_core_reg_d10;
  wire keyclearb;
  wire new_tr;
  wire p_1_in;
  wire p_3_in;
  wire pr_state_idle;
  wire preq;
  wire rx_shft_reg_mode_0011;
  wire s_axi4_aclk;
  wire [23:0]s_axi4_araddr;
  wire [1:0]s_axi4_arburst;
  wire s_axi4_aresetn;
  wire [7:0]s_axi4_arlen;
  wire [1:0]s_axi4_arsize;
  wire s_axi4_arvalid;
  wire [31:0]s_axi4_rdata;
  wire s_axi4_rlast;
  wire s_axi4_rready;
  wire [0:0]s_axi4_rresp;
  wire s_axi4_rvalid;
  wire s_axi_aclk;
  wire [0:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arvalid;
  wire [0:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid_i_reg;
  wire [3:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid_i_reg;
  wire [1:0]s_axi_wdata;
  wire s_axi_wvalid;
  wire sck_d2;
  wire [0:0]ss_o;
  wire ss_t;
  wire transfer_start;
  wire transfer_start_d1;
  wire usrcclkts;
  wire usrdoneo;
  wire usrdonets;
  wire [1:0]wb_cntrl_ps;
  wire wrap_around_d2;
  wire wrap_around_d3;

  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    IO0_I_REG
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(io0_i),
        .Q(io0_i_sync),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    IO1_I_REG
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(io1_i),
        .Q(io1_i_sync),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    IO2_I_REG
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(io2_i),
        .Q(io2_i_sync),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    IO3_I_REG
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(io3_i),
        .Q(io3_i_sync),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h0E)) 
    \LOGIC_GENERATION_FDR.Rx_FIFO_Full_SYNC_SPI2AXI_i_1 
       (.I0(\XIP_RECEIVE_FIFO_II/wr_rst_busy ),
        .I1(\XIP_RECEIVE_FIFO_II/full ),
        .I2(Rx_FIFO_Empty_Synced_in_SPI_domain),
        .O(Rx_FIFO_Full));
  LUT6 #(
    .INIT(64'h2222F0FF2222F000)) 
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_sent_i_1 
       (.I0(wrap_around_d3),
        .I1(wrap_around_d2),
        .I2(\XIP_MODE_GEN.AXI_QSPI_XIP_I_n_82 ),
        .I3(SPIXfer_done_int_pulse_d2),
        .I4(pr_state_idle),
        .I5(cmd_addr_sent),
        .O(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_sent_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAEAAFFFFA2AA0000)) 
    \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_0_i_1 
       (.I0(\XIP_MODE_GEN.AXI_QSPI_XIP_I_n_85 ),
        .I1(\RATIO_OF_2_GENERATE.Count_reg ),
        .I2(SPIXfer_done_int_d1),
        .I3(transfer_start_d1),
        .I4(transfer_start),
        .I5(io0_o),
        .O(\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_1_i_1 
       (.I0(\XIP_MODE_GEN.AXI_QSPI_XIP_I_n_42 ),
        .I1(\XIP_MODE_GEN.AXI_QSPI_XIP_I_n_83 ),
        .I2(Transmit_Data[2]),
        .I3(Serial_Dout_1),
        .I4(io1_o),
        .O(\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_1_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_2_i_1 
       (.I0(\XIP_MODE_GEN.AXI_QSPI_XIP_I_n_41 ),
        .I1(\XIP_MODE_GEN.AXI_QSPI_XIP_I_n_83 ),
        .I2(Transmit_Data[1]),
        .I3(Serial_Dout_1),
        .I4(io2_o),
        .O(\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_2_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[0]_i_1 
       (.I0(sck_d2),
        .O(rx_shft_reg_mode_0011));
  LUT6 #(
    .INIT(64'hC3C3C30082828200)) 
    \SR_5_TX_EMPTY_24_BIT_ADDR_GEN.SR_5_Tx_Empty_i_1 
       (.I0(\XIP_MODE_GEN.AXI_QSPI_XIP_I_n_81 ),
        .I1(\XIP_CLK_DOMAIN_SIGNALS/load_cmd_cdc_from_axi_d3 ),
        .I2(\XIP_CLK_DOMAIN_SIGNALS/load_cmd_cdc_from_axi_d2 ),
        .I3(wb_cntrl_ps[1]),
        .I4(wb_cntrl_ps[0]),
        .I5(\XIP_MODE_GEN.AXI_QSPI_XIP_I_n_26 ),
        .O(\SR_5_TX_EMPTY_24_BIT_ADDR_GEN.SR_5_Tx_Empty_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1FF1FFFF1FF11FF1)) 
    \STORE_NEW_TR_24_BIT_ADDR_GEN.new_tr_i_1 
       (.I0(wb_cntrl_ps[1]),
        .I1(wb_cntrl_ps[0]),
        .I2(\XIP_CLK_DOMAIN_SIGNALS/load_axi_data_cdc_to_spi_d3 ),
        .I3(\XIP_CLK_DOMAIN_SIGNALS/load_axi_data_cdc_to_spi_d2 ),
        .I4(\XIP_MODE_GEN.AXI_QSPI_XIP_I_n_81 ),
        .I5(new_tr),
        .O(\STORE_NEW_TR_24_BIT_ADDR_GEN.new_tr_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \XIPSR_data_int[4]_i_2 
       (.I0(XIP_trans_error_d3),
        .I1(XIP_trans_error_d2),
        .O(TO_XIPSR_AXI_TR_ERR_int));
  icyradio_axi_quad_spi_0_0_axi_lite_ipif \XIP_MODE_GEN.AXI_LITE_IPIF_I 
       (.Bus_RNW_reg(\I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ),
        .D({IP2Bus_XIPSR_Data_int,\XIP_MODE_GEN.AXI_LITE_IPIF_I_n_14 ,\XIP_MODE_GEN.AXI_LITE_IPIF_I_n_15 }),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg (\I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .Q({\XIP_MODE_GEN.XIP_SR_I_n_0 ,p_3_in,p_1_in,\XIP_MODE_GEN.XIP_SR_I_n_3 }),
        .SR(\XIP_MODE_GEN.AXI_LITE_IPIF_I_n_7 ),
        .XIPCR_0_CPHA_int(XIPCR_0_CPHA_int),
        .XIPCR_1_CPOL_int(XIPCR_1_CPOL_int),
        .\XIP_MODE_GEN.ip2Bus_RdAck_core_reg_d3_reg (\XIP_MODE_GEN.ip2Bus_RdAck_core_reg_d3_reg_0 ),
        .\XIP_MODE_GEN.ip2bus_wrack_core_reg_reg (\XIP_MODE_GEN.ip2bus_wrack_core_reg_reg_0 ),
        .bus2ip_reset_ipif_inverted(bus2ip_reset_ipif_inverted),
        .ip2Bus_RdAck_core_reg_d3(ip2Bus_RdAck_core_reg_d3),
        .ip2bus_rdack_core_reg_d1(ip2bus_rdack_core_reg_d1),
        .ip2bus_rdack_core_reg_d10(ip2bus_rdack_core_reg_d10),
        .ip2bus_rdack_core_reg_d20(ip2bus_rdack_core_reg_d20),
        .ip2bus_wrack_core_reg(ip2bus_wrack_core_reg),
        .ip2bus_wrack_core_reg0(ip2bus_wrack_core_reg0),
        .ip2bus_wrack_core_reg_d1(ip2bus_wrack_core_reg_d1),
        .ip2bus_wrack_core_reg_d10(ip2bus_wrack_core_reg_d10),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid_i_reg(s_axi_bvalid_i_reg),
        .s_axi_rdata(s_axi_rdata),
        .\s_axi_rdata_i_reg[4] ({ip2bus_data_int[4:3],ip2bus_data_int[1:0]}),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid_i_reg(s_axi_rvalid_i_reg),
        .s_axi_wvalid(s_axi_wvalid));
  icyradio_axi_quad_spi_0_0_axi_qspi_xip_if \XIP_MODE_GEN.AXI_QSPI_XIP_I 
       (.D({TO_XIPSR_axi_rx_full_int,TO_XIPSR_axi_rx_empty_int}),
        .E(rx_shft_reg_mode_0011),
        .\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[0]_0 (pr_state_idle),
        .\LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_0 (\XIP_MODE_GEN.AXI_QSPI_XIP_I_n_81 ),
        .\LOGIC_GENERATION_FDR.CPHA_CPOL_ERR_AXI2AXI4_CDC_0 (TO_XIPSR_CPHA_CPOL_ERR_int),
        .Q(wb_cntrl_ps),
        .\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[2]_0 (\XIP_MODE_GEN.AXI_QSPI_XIP_I_n_82 ),
        .\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_sent_reg_0 (\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_sent_i_1_n_0 ),
        .\RATIO_OF_2_GENERATE.Count_reg[0]_0 (\RATIO_OF_2_GENERATE.Count_reg ),
        .\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_0_reg_0 (\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_0_i_1_n_0 ),
        .\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_1_reg_0 (\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_1_i_1_n_0 ),
        .\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_2_reg_0 (\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Serial_Dout_2_i_1_n_0 ),
        .\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg[0]_0 (\XIP_MODE_GEN.AXI_QSPI_XIP_I_n_85 ),
        .\RATIO_OF_2_GENERATE.QSPI_WINBOND_MEM_DATA_CAP_GEN.Shift_Reg_reg[1]_0 ({\XIP_MODE_GEN.AXI_QSPI_XIP_I_n_41 ,\XIP_MODE_GEN.AXI_QSPI_XIP_I_n_42 }),
        .Rst_to_spi(Rst_to_spi_int),
        .Rx_FIFO_Full(Rx_FIFO_Full),
        .SCK_O_int(SCK_O_int),
        .\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[30]_0 ({Transmit_Data[1],Transmit_Data[2]}),
        .SPIXfer_done_int_d1(SPIXfer_done_int_d1),
        .SPIXfer_done_int_d1_reg_0(\XIP_MODE_GEN.AXI_QSPI_XIP_I_n_83 ),
        .SPIXfer_done_int_pulse_d2(SPIXfer_done_int_pulse_d2),
        .\SR_5_TX_EMPTY_24_BIT_ADDR_GEN.SR_5_Tx_Empty_reg_0 (\XIP_MODE_GEN.AXI_QSPI_XIP_I_n_26 ),
        .\SR_5_TX_EMPTY_24_BIT_ADDR_GEN.SR_5_Tx_Empty_reg_1 (\SR_5_TX_EMPTY_24_BIT_ADDR_GEN.SR_5_Tx_Empty_i_1_n_0 ),
        .\STORE_NEW_TR_24_BIT_ADDR_GEN.new_tr_reg_0 (\STORE_NEW_TR_24_BIT_ADDR_GEN.new_tr_i_1_n_0 ),
        .S_AXI4_ARREADY_i_reg_0(S_AXI4_ARREADY),
        .S_AXI4_RLAST_iii(S_AXI4_RLAST_iii),
        .Serial_Dout_1(Serial_Dout_1),
        .XIPCR_0_CPHA_int(XIPCR_0_CPHA_int),
        .XIPCR_1_CPOL_int(XIPCR_1_CPOL_int),
        .\XIP_MODE_GEN.bus2ip_reset_ipif4_inverted_reg (\XIP_MODE_GEN.AXI_QSPI_XIP_I_n_45 ),
        .\XIP_NORMAL_MODE.S_AXI4_ARLEN_ii_reg[6]_0 (\XIP_MODE_GEN.AXI_QSPI_XIP_I_n_46 ),
        .\XIP_NORMAL_MODE.S_AXI4_RLAST_iii_reg_0 (\XIP_NORMAL_MODE.S_AXI4_RLAST_iii_i_1_n_0 ),
        .\XIP_NORMAL_MODE.S_AXI4_RRESP_i_reg_0 (\XIP_NORMAL_MODE.S_AXI4_RRESP_i_i_1_n_0 ),
        .XIP_trans_error_d2(XIP_trans_error_d2),
        .XIP_trans_error_d3(XIP_trans_error_d3),
        .bus2ip_reset_ipif4_inverted(bus2ip_reset_ipif4_inverted),
        .bus2ip_reset_ipif_inverted(bus2ip_reset_ipif_inverted),
        .cmd_addr_sent(cmd_addr_sent),
        .empty(Rx_FIFO_Empty),
        .ext_spi_clk(ext_spi_clk),
        .full(\XIP_RECEIVE_FIFO_II/full ),
        .io0_i_sync(io0_i_sync),
        .io0_o(io0_o),
        .io0_t(io0_t),
        .io1_i_sync(io1_i_sync),
        .io1_o(io1_o),
        .io1_t(io1_t),
        .io2_i_sync(io2_i_sync),
        .io2_o(io2_o),
        .io2_t(io2_t),
        .io3_i_sync(io3_i_sync),
        .io3_o(io3_o),
        .io3_t(io3_t),
        .load_axi_data_cdc_to_spi_d2(\XIP_CLK_DOMAIN_SIGNALS/load_axi_data_cdc_to_spi_d2 ),
        .load_axi_data_cdc_to_spi_d3(\XIP_CLK_DOMAIN_SIGNALS/load_axi_data_cdc_to_spi_d3 ),
        .load_cmd_cdc_from_axi_d2(\XIP_CLK_DOMAIN_SIGNALS/load_cmd_cdc_from_axi_d2 ),
        .load_cmd_cdc_from_axi_d3(\XIP_CLK_DOMAIN_SIGNALS/load_cmd_cdc_from_axi_d3 ),
        .new_tr(new_tr),
        .s_axi4_aclk(s_axi4_aclk),
        .s_axi4_araddr(s_axi4_araddr),
        .s_axi4_arburst(s_axi4_arburst),
        .s_axi4_arlen(s_axi4_arlen),
        .s_axi4_arsize(s_axi4_arsize),
        .s_axi4_arvalid(s_axi4_arvalid),
        .s_axi4_rdata(s_axi4_rdata),
        .s_axi4_rlast(s_axi4_rlast),
        .s_axi4_rready(s_axi4_rready),
        .s_axi4_rready_0(\XIP_MODE_GEN.AXI_QSPI_XIP_I_n_43 ),
        .s_axi4_rresp(s_axi4_rresp),
        .s_axi4_rvalid(s_axi4_rvalid),
        .s_axi_aclk(s_axi_aclk),
        .sck_d2(sck_d2),
        .scndry_out(Rx_FIFO_Empty_Synced_in_SPI_domain),
        .ss_o(ss_o),
        .ss_t(ss_t),
        .transfer_start(transfer_start),
        .transfer_start_d1(transfer_start_d1),
        .wr_rst_busy(\XIP_RECEIVE_FIFO_II/wr_rst_busy ),
        .wrap_around_d2(wrap_around_d2),
        .wrap_around_d3(wrap_around_d3));
  icyradio_axi_quad_spi_0_0_reset_sync_module \XIP_MODE_GEN.RESET_SYNC_AXI_SPI_CLK_INST 
       (.Rst_to_spi(Rst_to_spi_int),
        .Soft_Reset_frm_axi(bus2ip_reset_ipif4_inverted),
        .ext_spi_clk(ext_spi_clk));
  icyradio_axi_quad_spi_0_0_qspi_startup_block \XIP_MODE_GEN.SCK_MISO_STARTUP_USED.QSPI_STARTUP_BLOCK_I 
       (.SCK_O_int(SCK_O_int),
        .cfgclk(cfgclk),
        .cfgmclk(cfgmclk),
        .clk(clk),
        .eos(eos),
        .gsr(gsr),
        .gts(gts),
        .keyclearb(keyclearb),
        .preq(preq),
        .usrcclkts(usrcclkts),
        .usrdoneo(usrdoneo),
        .usrdonets(usrdonets));
  icyradio_axi_quad_spi_0_0_xip_cntrl_reg \XIP_MODE_GEN.XIP_CR_I 
       (.Bus_RNW_reg(\I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ),
        .D(TO_XIPSR_CPHA_CPOL_ERR_int),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg (\I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .XIPCR_0_CPHA_int(XIPCR_0_CPHA_int),
        .XIPCR_1_CPOL_int(XIPCR_1_CPOL_int),
        .bus2ip_reset_ipif_inverted(bus2ip_reset_ipif_inverted),
        .ip2bus_wrack_core_reg(ip2bus_wrack_core_reg),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata));
  icyradio_axi_quad_spi_0_0_xip_status_reg \XIP_MODE_GEN.XIP_SR_I 
       (.D({TO_XIPSR_AXI_TR_ERR_int,TO_XIPSR_CPHA_CPOL_ERR_int,TO_XIPSR_axi_rx_full_int,TO_XIPSR_axi_rx_empty_int}),
        .Q({\XIP_MODE_GEN.XIP_SR_I_n_0 ,p_3_in,p_1_in,\XIP_MODE_GEN.XIP_SR_I_n_3 }),
        .SR(\XIP_MODE_GEN.AXI_LITE_IPIF_I_n_7 ),
        .s_axi_aclk(s_axi_aclk));
  LUT1 #(
    .INIT(2'h1)) 
    \XIP_MODE_GEN.bus2ip_reset_ipif4_inverted_i_1 
       (.I0(s_axi4_aresetn),
        .O(\XIP_MODE_GEN.bus2ip_reset_ipif4_inverted_i_1_n_0 ));
  FDRE \XIP_MODE_GEN.bus2ip_reset_ipif4_inverted_reg 
       (.C(s_axi4_aclk),
        .CE(1'b1),
        .D(\XIP_MODE_GEN.bus2ip_reset_ipif4_inverted_i_1_n_0 ),
        .Q(bus2ip_reset_ipif4_inverted),
        .R(1'b0));
  FDRE \XIP_MODE_GEN.ip2Bus_RdAck_core_reg_d3_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_rdack_core_reg_d2),
        .Q(ip2Bus_RdAck_core_reg_d3),
        .R(bus2ip_reset_ipif_inverted));
  FDRE \XIP_MODE_GEN.ip2bus_data_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(ip2bus_rdack_core_reg_d2),
        .D(\XIP_MODE_GEN.AXI_LITE_IPIF_I_n_15 ),
        .Q(ip2bus_data_int[0]),
        .R(bus2ip_reset_ipif_inverted));
  FDRE \XIP_MODE_GEN.ip2bus_data_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(ip2bus_rdack_core_reg_d2),
        .D(\XIP_MODE_GEN.AXI_LITE_IPIF_I_n_14 ),
        .Q(ip2bus_data_int[1]),
        .R(bus2ip_reset_ipif_inverted));
  FDRE \XIP_MODE_GEN.ip2bus_data_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(ip2bus_rdack_core_reg_d2),
        .D(IP2Bus_XIPSR_Data_int[3]),
        .Q(ip2bus_data_int[3]),
        .R(bus2ip_reset_ipif_inverted));
  FDRE \XIP_MODE_GEN.ip2bus_data_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(ip2bus_rdack_core_reg_d2),
        .D(IP2Bus_XIPSR_Data_int[4]),
        .Q(ip2bus_data_int[4]),
        .R(bus2ip_reset_ipif_inverted));
  FDRE \XIP_MODE_GEN.ip2bus_rdack_core_reg_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_rdack_core_reg_d10),
        .Q(ip2bus_rdack_core_reg_d1),
        .R(bus2ip_reset_ipif_inverted));
  FDRE \XIP_MODE_GEN.ip2bus_rdack_core_reg_d2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_rdack_core_reg_d20),
        .Q(ip2bus_rdack_core_reg_d2),
        .R(bus2ip_reset_ipif_inverted));
  FDRE \XIP_MODE_GEN.ip2bus_wrack_core_reg_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_wrack_core_reg_d10),
        .Q(ip2bus_wrack_core_reg_d1),
        .R(bus2ip_reset_ipif_inverted));
  FDRE \XIP_MODE_GEN.ip2bus_wrack_core_reg_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_wrack_core_reg0),
        .Q(ip2bus_wrack_core_reg),
        .R(bus2ip_reset_ipif_inverted));
  LUT5 #(
    .INIT(32'h11F100F0)) 
    \XIP_NORMAL_MODE.S_AXI4_RLAST_iii_i_1 
       (.I0(\XIP_MODE_GEN.AXI_QSPI_XIP_I_n_43 ),
        .I1(\XIP_MODE_GEN.AXI_QSPI_XIP_I_n_46 ),
        .I2(\XIP_MODE_GEN.AXI_QSPI_XIP_I_n_45 ),
        .I3(Rx_FIFO_Empty),
        .I4(S_AXI4_RLAST_iii),
        .O(\XIP_NORMAL_MODE.S_AXI4_RLAST_iii_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hE0FFE0E0)) 
    \XIP_NORMAL_MODE.S_AXI4_RRESP_i_i_1 
       (.I0(s_axi4_arlen[7]),
        .I1(s_axi4_arlen[6]),
        .I2(s_axi4_arvalid),
        .I3(\XIP_MODE_GEN.AXI_QSPI_XIP_I_n_43 ),
        .I4(s_axi4_rresp),
        .O(\XIP_NORMAL_MODE.S_AXI4_RRESP_i_i_1_n_0 ));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module icyradio_axi_quad_spi_0_0_cdc_sync
   (D,
    prmry_in,
    s_axi_aclk);
  output [0:0]D;
  input prmry_in;
  input s_axi_aclk;

  wire [0:0]D;
  wire prmry_in;
  wire s_axi_aclk;
  wire s_level_out_d1_cdc_to;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(prmry_in),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(D),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module icyradio_axi_quad_spi_0_0_cdc_sync_0
   (scndry_out,
    prmry_in,
    ext_spi_clk);
  output scndry_out;
  input prmry_in;
  input ext_spi_clk;

  wire ext_spi_clk;
  wire prmry_in;
  wire s_level_out_d1_cdc_to;
  wire scndry_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(prmry_in),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(scndry_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "qspi_address_decoder" *) 
module icyradio_axi_quad_spi_0_0_qspi_address_decoder
   (SS_frm_axi,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ,
    s_axi4_aclk);
  output SS_frm_axi;
  input \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ;
  input s_axi4_aclk;

  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ;
  wire SS_frm_axi;
  wire s_axi4_aclk;

  FDRE \MEM_DECODE_GEN[0].cs_out_i_reg[0] 
       (.C(s_axi4_aclk),
        .CE(1'b1),
        .D(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .Q(SS_frm_axi),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "qspi_startup_block" *) 
module icyradio_axi_quad_spi_0_0_qspi_startup_block
   (cfgclk,
    cfgmclk,
    eos,
    preq,
    clk,
    gsr,
    gts,
    keyclearb,
    SCK_O_int,
    usrcclkts,
    usrdoneo,
    usrdonets);
  output cfgclk;
  output cfgmclk;
  output eos;
  output preq;
  input clk;
  input gsr;
  input gts;
  input keyclearb;
  input SCK_O_int;
  input usrcclkts;
  input usrdoneo;
  input usrdonets;

  wire SCK_O_int;
  wire cfgclk;
  wire cfgmclk;
  wire clk;
  wire eos;
  wire gsr;
  wire gts;
  wire keyclearb;
  wire preq;
  wire usrcclkts;
  wire usrdoneo;
  wire usrdonets;

  (* box_type = "PRIMITIVE" *) 
  STARTUPE2 #(
    .PROG_USR("FALSE"),
    .SIM_CCLK_FREQ(0.000000)) 
    \STARTUP_SHARE_7SERIES_GEN.STARTUP2_7SERIES_inst 
       (.CFGCLK(cfgclk),
        .CFGMCLK(cfgmclk),
        .CLK(clk),
        .EOS(eos),
        .GSR(gsr),
        .GTS(gts),
        .KEYCLEARB(keyclearb),
        .PACK(1'b0),
        .PREQ(preq),
        .USRCCLKO(SCK_O_int),
        .USRCCLKTS(usrcclkts),
        .USRDONEO(usrdoneo),
        .USRDONETS(usrdonets));
endmodule

(* ORIG_REF_NAME = "reset_sync_module" *) 
module icyradio_axi_quad_spi_0_0_reset_sync_module
   (Rst_to_spi,
    Soft_Reset_frm_axi,
    ext_spi_clk);
  output Rst_to_spi;
  input Soft_Reset_frm_axi;
  input ext_spi_clk;

  wire Rst_to_spi;
  wire Soft_Reset_frm_axi;
  wire Soft_Reset_frm_axi_d1;
  wire ext_spi_clk;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    RESET_SYNC_AX2S_1
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(Soft_Reset_frm_axi),
        .Q(Soft_Reset_frm_axi_d1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    RESET_SYNC_AX2S_2
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(Soft_Reset_frm_axi_d1),
        .Q(Rst_to_spi),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "slave_attachment" *) 
module icyradio_axi_quad_spi_0_0_slave_attachment
   (SR,
    Bus_RNW_reg_reg,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ,
    s_axi_rvalid_i_reg_0,
    s_axi_bvalid_i_reg_0,
    \XIP_MODE_GEN.ip2Bus_RdAck_core_reg_d3_reg ,
    \XIP_MODE_GEN.ip2bus_wrack_core_reg_reg ,
    rst_reg_0,
    ip2bus_rdack_core_reg_d20,
    ip2bus_rdack_core_reg_d10,
    ip2bus_wrack_core_reg0,
    ip2bus_wrack_core_reg_d10,
    D,
    s_axi_rdata,
    s_axi_aclk,
    s_axi_arvalid,
    s_axi_wvalid,
    s_axi_awvalid,
    ip2Bus_RdAck_core_reg_d3,
    ip2bus_rdack_core_reg_d1,
    ip2bus_wrack_core_reg_d1,
    s_axi_aresetn,
    s_axi_bready,
    s_axi_rready,
    Q,
    XIPCR_0_CPHA_int,
    XIPCR_1_CPOL_int,
    ip2bus_wrack_core_reg,
    \s_axi_rdata_i_reg[4]_0 ,
    s_axi_araddr,
    s_axi_awaddr);
  output [0:0]SR;
  output Bus_RNW_reg_reg;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  output s_axi_rvalid_i_reg_0;
  output s_axi_bvalid_i_reg_0;
  output \XIP_MODE_GEN.ip2Bus_RdAck_core_reg_d3_reg ;
  output \XIP_MODE_GEN.ip2bus_wrack_core_reg_reg ;
  output [0:0]rst_reg_0;
  output ip2bus_rdack_core_reg_d20;
  output ip2bus_rdack_core_reg_d10;
  output ip2bus_wrack_core_reg0;
  output ip2bus_wrack_core_reg_d10;
  output [3:0]D;
  output [3:0]s_axi_rdata;
  input s_axi_aclk;
  input s_axi_arvalid;
  input s_axi_wvalid;
  input s_axi_awvalid;
  input ip2Bus_RdAck_core_reg_d3;
  input ip2bus_rdack_core_reg_d1;
  input ip2bus_wrack_core_reg_d1;
  input s_axi_aresetn;
  input s_axi_bready;
  input s_axi_rready;
  input [3:0]Q;
  input XIPCR_0_CPHA_int;
  input XIPCR_1_CPOL_int;
  input ip2bus_wrack_core_reg;
  input [3:0]\s_axi_rdata_i_reg[4]_0 ;
  input [0:0]s_axi_araddr;
  input [0:0]s_axi_awaddr;

  wire Bus_RNW_reg_reg;
  wire [3:0]D;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  wire [5:0]\INCLUDE_DPHASE_TIMER.dpto_cnt_reg ;
  wire [3:0]Q;
  wire [0:0]SR;
  wire XIPCR_0_CPHA_int;
  wire XIPCR_1_CPOL_int;
  wire \XIP_MODE_GEN.ip2Bus_RdAck_core_reg_d3_reg ;
  wire \XIP_MODE_GEN.ip2bus_wrack_core_reg_reg ;
  wire \bus2ip_addr_i[2]_i_1_n_0 ;
  wire \bus2ip_addr_i[2]_i_2_n_0 ;
  wire \bus2ip_addr_i_reg_n_0_[2] ;
  wire bus2ip_rnw_i_i_1_n_0;
  wire bus2ip_rnw_i_reg_n_0;
  wire clear;
  wire ip2Bus_RdAck_core_reg_d3;
  wire ip2bus_rdack_core_reg_d1;
  wire ip2bus_rdack_core_reg_d10;
  wire ip2bus_rdack_core_reg_d20;
  wire ip2bus_wrack_core_reg;
  wire ip2bus_wrack_core_reg0;
  wire ip2bus_wrack_core_reg_d1;
  wire ip2bus_wrack_core_reg_d10;
  wire is_read_i_1_n_0;
  wire is_read_reg_n_0;
  wire is_write_i_1_n_0;
  wire is_write_i_2_n_0;
  wire is_write_reg_n_0;
  wire p_0_in;
  wire [1:0]p_0_out;
  wire p_5_in;
  wire [5:0]plusOp;
  wire [0:0]rst_reg_0;
  wire s_axi_aclk;
  wire [0:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arvalid;
  wire [0:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bresp_i;
  wire s_axi_bvalid_i_i_1_n_0;
  wire s_axi_bvalid_i_reg_0;
  wire [3:0]s_axi_rdata;
  wire [3:0]\s_axi_rdata_i_reg[4]_0 ;
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
        .I2(\XIP_MODE_GEN.ip2Bus_RdAck_core_reg_d3_reg ),
        .I3(s_axi_rresp_i),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0800FFFF08000800)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(s_axi_wvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_arvalid),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(\XIP_MODE_GEN.ip2bus_wrack_core_reg_reg ),
        .I5(s_axi_bresp_i),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888F888FFFFF888)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(\XIP_MODE_GEN.ip2bus_wrack_core_reg_reg ),
        .I1(s_axi_bresp_i),
        .I2(s_axi_rresp_i),
        .I3(\XIP_MODE_GEN.ip2Bus_RdAck_core_reg_d3_reg ),
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
  LUT1 #(
    .INIT(2'h1)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [3]),
        .I4(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [4]),
        .O(plusOp[4]));
  LUT2 #(
    .INIT(4'h9)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[5]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .O(clear));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[5]_i_2 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [3]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .I4(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [4]),
        .I5(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [5]),
        .O(plusOp[5]));
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
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[4]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [4]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[5]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [5]),
        .R(clear));
  icyradio_axi_quad_spi_0_0_address_decoder I_DECODER
       (.Bus_RNW_reg_reg_0(Bus_RNW_reg_reg),
        .Bus_RNW_reg_reg_1(bus2ip_rnw_i_reg_n_0),
        .D(D),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 (start2),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2 (\bus2ip_addr_i_reg_n_0_[2] ),
        .Q(Q),
        .XIPCR_0_CPHA_int(XIPCR_0_CPHA_int),
        .XIPCR_1_CPOL_int(XIPCR_1_CPOL_int),
        .\XIP_MODE_GEN.ip2Bus_RdAck_core_reg_d3_reg (\XIP_MODE_GEN.ip2Bus_RdAck_core_reg_d3_reg ),
        .\XIP_MODE_GEN.ip2bus_wrack_core_reg_reg (\XIP_MODE_GEN.ip2bus_wrack_core_reg_reg ),
        .ip2Bus_RdAck_core_reg_d3(ip2Bus_RdAck_core_reg_d3),
        .ip2bus_rdack_core_reg_d1(ip2bus_rdack_core_reg_d1),
        .ip2bus_rdack_core_reg_d10(ip2bus_rdack_core_reg_d10),
        .ip2bus_rdack_core_reg_d20(ip2bus_rdack_core_reg_d20),
        .ip2bus_wrack_core_reg(ip2bus_wrack_core_reg),
        .ip2bus_wrack_core_reg0(ip2bus_wrack_core_reg0),
        .ip2bus_wrack_core_reg_d1(ip2bus_wrack_core_reg_d1),
        .ip2bus_wrack_core_reg_d10(ip2bus_wrack_core_reg_d10),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(is_read_reg_n_0),
        .s_axi_wready(is_write_reg_n_0),
        .s_axi_wready_0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg ));
  LUT2 #(
    .INIT(4'hE)) 
    \XIPSR_data_int[4]_i_1 
       (.I0(SR),
        .I1(ip2Bus_RdAck_core_reg_d3),
        .O(rst_reg_0));
  LUT6 #(
    .INIT(64'hACAFFFFFACA00000)) 
    \bus2ip_addr_i[2]_i_1 
       (.I0(s_axi_araddr),
        .I1(s_axi_awaddr),
        .I2(s_axi_arvalid),
        .I3(p_5_in),
        .I4(\bus2ip_addr_i[2]_i_2_n_0 ),
        .I5(\bus2ip_addr_i_reg_n_0_[2] ),
        .O(\bus2ip_addr_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \bus2ip_addr_i[2]_i_2 
       (.I0(state[1]),
        .I1(state[0]),
        .O(\bus2ip_addr_i[2]_i_2_n_0 ));
  FDRE \bus2ip_addr_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\bus2ip_addr_i[2]_i_1_n_0 ),
        .Q(\bus2ip_addr_i_reg_n_0_[2] ),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFFFFBF000000AA)) 
    bus2ip_rnw_i_i_1
       (.I0(s_axi_arvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_wvalid),
        .I3(state[1]),
        .I4(state[0]),
        .I5(bus2ip_rnw_i_reg_n_0),
        .O(bus2ip_rnw_i_i_1_n_0));
  FDRE bus2ip_rnw_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bus2ip_rnw_i_i_1_n_0),
        .Q(bus2ip_rnw_i_reg_n_0),
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
       (.I0(\XIP_MODE_GEN.ip2bus_wrack_core_reg_reg ),
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
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[4]_0 [0]),
        .Q(s_axi_rdata[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[4]_0 [1]),
        .Q(s_axi_rdata[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[4]_0 [2]),
        .Q(s_axi_rdata[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[4]_0 [3]),
        .Q(s_axi_rdata[3]),
        .R(SR));
  LUT5 #(
    .INIT(32'h08FF0808)) 
    s_axi_rvalid_i_i_1
       (.I0(\XIP_MODE_GEN.ip2Bus_RdAck_core_reg_d3_reg ),
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
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h77FC44FC)) 
    \state[0]_i_1 
       (.I0(state1__2),
        .I1(state[0]),
        .I2(s_axi_arvalid),
        .I3(state[1]),
        .I4(\XIP_MODE_GEN.ip2bus_wrack_core_reg_reg ),
        .O(p_0_out[0]));
  LUT6 #(
    .INIT(64'h55FFFF0C5500FF0C)) 
    \state[1]_i_1 
       (.I0(state1__2),
        .I1(p_5_in),
        .I2(s_axi_arvalid),
        .I3(state[1]),
        .I4(state[0]),
        .I5(\XIP_MODE_GEN.ip2Bus_RdAck_core_reg_d3_reg ),
        .O(p_0_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
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

(* ORIG_REF_NAME = "xip_cntrl_reg" *) 
module icyradio_axi_quad_spi_0_0_xip_cntrl_reg
   (D,
    XIPCR_0_CPHA_int,
    XIPCR_1_CPOL_int,
    s_axi_wdata,
    ip2bus_wrack_core_reg,
    Bus_RNW_reg,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ,
    bus2ip_reset_ipif_inverted,
    s_axi_aclk);
  output [0:0]D;
  output XIPCR_0_CPHA_int;
  output XIPCR_1_CPOL_int;
  input [1:0]s_axi_wdata;
  input ip2bus_wrack_core_reg;
  input Bus_RNW_reg;
  input \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  input bus2ip_reset_ipif_inverted;
  input s_axi_aclk;

  wire Bus_RNW_reg;
  wire [0:0]D;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  wire XIPCR_0_CPHA_int;
  wire XIPCR_1_CPOL_int;
  wire \XIPCR_data_int[0]_i_1_n_0 ;
  wire \XIPCR_data_int[1]_i_1_n_0 ;
  wire bus2ip_reset_ipif_inverted;
  wire ip2bus_wrack_core_reg;
  wire s_axi_aclk;
  wire [1:0]s_axi_wdata;

  LUT2 #(
    .INIT(4'h6)) 
    \LOGIC_GENERATION_FDR.CPHA_CPOL_ERR_AXI2AXI4_CDC_i_1 
       (.I0(XIPCR_0_CPHA_int),
        .I1(XIPCR_1_CPOL_int),
        .O(D));
  LUT5 #(
    .INIT(32'hFBFF0800)) 
    \XIPCR_data_int[0]_i_1 
       (.I0(s_axi_wdata[0]),
        .I1(ip2bus_wrack_core_reg),
        .I2(Bus_RNW_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I4(XIPCR_0_CPHA_int),
        .O(\XIPCR_data_int[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFBFF0800)) 
    \XIPCR_data_int[1]_i_1 
       (.I0(s_axi_wdata[1]),
        .I1(ip2bus_wrack_core_reg),
        .I2(Bus_RNW_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I4(XIPCR_1_CPOL_int),
        .O(\XIPCR_data_int[1]_i_1_n_0 ));
  FDRE \XIPCR_data_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\XIPCR_data_int[0]_i_1_n_0 ),
        .Q(XIPCR_0_CPHA_int),
        .R(bus2ip_reset_ipif_inverted));
  FDRE \XIPCR_data_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\XIPCR_data_int[1]_i_1_n_0 ),
        .Q(XIPCR_1_CPOL_int),
        .R(bus2ip_reset_ipif_inverted));
endmodule

(* ORIG_REF_NAME = "xip_cross_clk_sync" *) 
module icyradio_axi_quad_spi_0_0_xip_cross_clk_sync
   (\LOGIC_GENERATION_FDR.LD_CMD_SYNC_AXI2SPI_1_0 ,
    \LOGIC_GENERATION_FDR.LD_CMD_SYNC_AXI2SPI_2_0 ,
    \LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_1_0 ,
    \LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_2_0 ,
    D,
    RESET_SYNC_AX2S_2,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[18] ,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[19] ,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[20] ,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[22] ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8] ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9] ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[10] ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[11] ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[12] ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[13] ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[14] ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[15] ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[16] ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[17] ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[18] ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[19] ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20] ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[21] ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[22] ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23] ,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[16] ,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[17] ,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[21] ,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[23] ,
    wrap_around_reg,
    wrap_around_reg_0,
    wrap_around_reg_1,
    wrap_around_reg_2,
    wrap_around_reg_3,
    E,
    \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7] ,
    \LOGIC_GENERATION_FDR.WORD_XFER_SYNC_AXI2SPI_1_0 ,
    \size_length_cntr_reg[1] ,
    \size_length_cntr_fixed_reg[1] ,
    \LOGIC_GENERATION_FDR.HW_XFER_SYNC_AXI2SPI_1_0 ,
    \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[5].TRANS_ADDR_SYNC_AXI2SPI_CDC_0 ,
    \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[4].TRANS_ADDR_SYNC_AXI2SPI_CDC_0 ,
    \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[3].TRANS_ADDR_SYNC_AXI2SPI_CDC_0 ,
    \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[2].TRANS_ADDR_SYNC_AXI2SPI_CDC_0 ,
    \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[1].TRANS_ADDR_SYNC_AXI2SPI_CDC_0 ,
    \LOGIC_GENERATION_FDR.TYP_OF_XFER_SYNC_AXI2SPI_1_0 ,
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[2] ,
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[0] ,
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[1] ,
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.hw_wd_cntr_reg[1] ,
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.hw_wd_cntr_reg[0] ,
    load_axi_data_to_spi_clk,
    \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[1].TRANS_ADDR_SYNC_AXI2SPI_CDC_1 ,
    \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[0].TRANS_ADDR_SYNC_AXI2SPI_CDC_0 ,
    load_axi_data_frm_axi_clk,
    \gen_fwft.empty_fwft_i_reg ,
    xip_sm_ns,
    \dtr_length_reg[5] ,
    s_axi4_rready_0,
    \LOGIC_GENERATION_FDR.CPOL_SYNC_AXI2SPI_1_0 ,
    wrap_around_reg_4,
    RESET_SYNC_AX2S_2_0,
    cmd_addr_cntr1,
    Tx_Data_d1,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[5] ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[4] ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3] ,
    \size_length_cntr_fixed_reg[1]_0 ,
    \LOGIC_GENERATION_FDR.CPOL_SYNC_AXI2SPI_1_1 ,
    \SR_5_TX_EMPTY_24_BIT_ADDR_GEN.SR_5_Tx_Empty_reg ,
    \LOGIC_GENERATION_FDR.CPOL_SYNC_AXI2SPI_1_2 ,
    wrap_around_d2_reg,
    wrap_around_d2_reg_0,
    wrap_around_d2_reg_1,
    wrap_around_d2_reg_2,
    wrap_around_d2_reg_3,
    wrap_around_d2_reg_4,
    wrap_around_d2_reg_5,
    \spi_addr_wrap_1_reg[13] ,
    \spi_addr_wrap_1_reg[14] ,
    \spi_addr_wrap_1_reg[15] ,
    \spi_addr_wrap_1_reg[16] ,
    \spi_addr_wrap_1_reg[17] ,
    \spi_addr_wrap_1_reg[18] ,
    \spi_addr_wrap_1_reg[19] ,
    \spi_addr_wrap_1_reg[20] ,
    \spi_addr_wrap_1_reg[21] ,
    \spi_addr_wrap_1_reg[22] ,
    \spi_addr_wrap_1_reg[23] ,
    SPIXfer_done_int_pulse_d2_reg,
    \SR_5_TX_EMPTY_24_BIT_ADDR_GEN.SR_5_Tx_Empty_reg_0 ,
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7] ,
    Rst_to_spi,
    one_byte_xfer,
    ext_spi_clk,
    two_byte_xfer,
    four_byte_xfer,
    Q,
    XIPCR_1_CPOL_int,
    XIPCR_0_CPHA_int,
    SS_frm_axi,
    type_of_burst,
    \LOGIC_GENERATION_FDR.AXI_LEN_SYNC_AXI_SPI_GEN[3].AXI_LEN_SYNC_AXI2SPI_0 ,
    \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[7].DTR_LEN_SYNC_AXI2SPI_0 ,
    bus2ip_reset_ipif_inverted,
    Rx_FIFO_Full,
    s_axi_aclk,
    bus2ip_reset_ipif4_inverted,
    s_axi4_aclk,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[26] ,
    wrap_around_reg_5,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[27] ,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[28] ,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[30] ,
    data2,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[8] ,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[9] ,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[10] ,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[11] ,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[12] ,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[13] ,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[14] ,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[15] ,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[16]_0 ,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[17]_0 ,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[18]_0 ,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[19]_0 ,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[20]_0 ,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[21]_0 ,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[22]_0 ,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[23]_0 ,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[24] ,
    \LEN_CNTR_24_BIT_GEN.length_cntr_reg[0] ,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[25] ,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[29] ,
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[31] ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[2] ,
    p_8_in,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0] ,
    \size_length_cntr_fixed_reg[1]_1 ,
    \size_length_cntr_fixed_reg[0] ,
    SPIXfer_done_int,
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[23] ,
    size_length_cntr,
    hpm_under_process_d1,
    \RATIO_OF_2_GENERATE.sck_o_int_reg ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0]_0 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[4]_0 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0]_1 ,
    \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_0 ,
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[1]_0 ,
    O,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_3_0 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8]_0 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_0 ,
    \size_length_cntr_reg[0] ,
    \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5] ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3]_0 ,
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[2]_0 ,
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[2]_1 ,
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[2]_2 ,
    hw_wd_cntr,
    hw_wd_cntr0,
    \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_0 ,
    \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1 ,
    wrap_around_d1,
    p_3_in1_in,
    \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[0] ,
    \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[0]_0 ,
    empty,
    s_axi4_rready,
    last_data_acked,
    xip_sm_ps,
    \dtr_length_reg[7] ,
    s_axi4_arlen,
    \dtr_length_reg[5]_0 ,
    \dtr_length_reg[3] ,
    s_axi4_arburst,
    s_axi4_arvalid,
    XIPSR_CPHA_CPOL_ERR_d2,
    \RATIO_OF_2_GENERATE.sck_o_int_reg_0 ,
    \RATIO_OF_2_GENERATE.SCK_O_NQ_4_STARTUP_USED.SCK_O_reg_reg ,
    sck_o_int,
    wrap_around_reg_6,
    \TRANSFER_START_24_BIT_ADDR_GEN.transfer_start_reg ,
    start_after_wrap_d1,
    wrap_around_reg_7,
    wrap_around_reg_8,
    wrap_around_reg_9,
    wrap_around_reg_10,
    \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_1 ,
    \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_2 ,
    \LEN_CNTR_24_BIT_GEN.length_cntr_reg[5] ,
    \LEN_CNTR_24_BIT_GEN.length_cntr_reg[4] ,
    \LEN_CNTR_24_BIT_GEN.length_cntr_reg[3] ,
    transfer_start_d2,
    \RATIO_OF_2_GENERATE.Count_reg[0] ,
    \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_0 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_1 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[22]_0 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[12]_0 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[12]_1 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[11]_0 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[10]_0 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9]_0 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8]_1 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[7] ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[6] ,
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[7] ,
    \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[0] ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_1 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[5]_0 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[13]_0 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[14]_0 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[15]_0 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[16]_0 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[17]_0 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[18]_0 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[19]_0 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20]_0 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[21]_0 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_2_0 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_2 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_3 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_2_1 ,
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_3_0 ,
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[15] ,
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31] ,
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[23]_0 );
  output \LOGIC_GENERATION_FDR.LD_CMD_SYNC_AXI2SPI_1_0 ;
  output \LOGIC_GENERATION_FDR.LD_CMD_SYNC_AXI2SPI_2_0 ;
  output \LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_1_0 ;
  output \LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_2_0 ;
  output [0:0]D;
  output [0:0]RESET_SYNC_AX2S_2;
  output \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[18] ;
  output \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[19] ;
  output \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[20] ;
  output \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[22] ;
  output \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8] ;
  output \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9] ;
  output \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[10] ;
  output \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[11] ;
  output \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[12] ;
  output \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[13] ;
  output \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[14] ;
  output \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[15] ;
  output \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[16] ;
  output \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[17] ;
  output \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[18] ;
  output \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[19] ;
  output \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20] ;
  output \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[21] ;
  output \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[22] ;
  output \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23] ;
  output \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[16] ;
  output \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[17] ;
  output \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[21] ;
  output \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[23] ;
  output wrap_around_reg;
  output wrap_around_reg_0;
  output wrap_around_reg_1;
  output wrap_around_reg_2;
  output wrap_around_reg_3;
  output [0:0]E;
  output [7:0]\LEN_CNTR_24_BIT_GEN.length_cntr_reg[7] ;
  output \LOGIC_GENERATION_FDR.WORD_XFER_SYNC_AXI2SPI_1_0 ;
  output \size_length_cntr_reg[1] ;
  output \size_length_cntr_fixed_reg[1] ;
  output \LOGIC_GENERATION_FDR.HW_XFER_SYNC_AXI2SPI_1_0 ;
  output \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[5].TRANS_ADDR_SYNC_AXI2SPI_CDC_0 ;
  output \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[4].TRANS_ADDR_SYNC_AXI2SPI_CDC_0 ;
  output \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[3].TRANS_ADDR_SYNC_AXI2SPI_CDC_0 ;
  output \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[2].TRANS_ADDR_SYNC_AXI2SPI_CDC_0 ;
  output \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[1].TRANS_ADDR_SYNC_AXI2SPI_CDC_0 ;
  output \LOGIC_GENERATION_FDR.TYP_OF_XFER_SYNC_AXI2SPI_1_0 ;
  output \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[2] ;
  output \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[0] ;
  output \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[1] ;
  output \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.hw_wd_cntr_reg[1] ;
  output \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.hw_wd_cntr_reg[0] ;
  output load_axi_data_to_spi_clk;
  output \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[1].TRANS_ADDR_SYNC_AXI2SPI_CDC_1 ;
  output \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[0].TRANS_ADDR_SYNC_AXI2SPI_CDC_0 ;
  output load_axi_data_frm_axi_clk;
  output [0:0]\gen_fwft.empty_fwft_i_reg ;
  output xip_sm_ns;
  output [7:0]\dtr_length_reg[5] ;
  output s_axi4_rready_0;
  output \LOGIC_GENERATION_FDR.CPOL_SYNC_AXI2SPI_1_0 ;
  output wrap_around_reg_4;
  output RESET_SYNC_AX2S_2_0;
  output cmd_addr_cntr1;
  output Tx_Data_d1;
  output \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[5] ;
  output \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[4] ;
  output \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3] ;
  output \size_length_cntr_fixed_reg[1]_0 ;
  output [0:0]\LOGIC_GENERATION_FDR.CPOL_SYNC_AXI2SPI_1_1 ;
  output \SR_5_TX_EMPTY_24_BIT_ADDR_GEN.SR_5_Tx_Empty_reg ;
  output \LOGIC_GENERATION_FDR.CPOL_SYNC_AXI2SPI_1_2 ;
  output wrap_around_d2_reg;
  output wrap_around_d2_reg_0;
  output wrap_around_d2_reg_1;
  output wrap_around_d2_reg_2;
  output wrap_around_d2_reg_3;
  output wrap_around_d2_reg_4;
  output wrap_around_d2_reg_5;
  output \spi_addr_wrap_1_reg[13] ;
  output \spi_addr_wrap_1_reg[14] ;
  output \spi_addr_wrap_1_reg[15] ;
  output \spi_addr_wrap_1_reg[16] ;
  output \spi_addr_wrap_1_reg[17] ;
  output \spi_addr_wrap_1_reg[18] ;
  output \spi_addr_wrap_1_reg[19] ;
  output \spi_addr_wrap_1_reg[20] ;
  output \spi_addr_wrap_1_reg[21] ;
  output \spi_addr_wrap_1_reg[22] ;
  output \spi_addr_wrap_1_reg[23] ;
  output [3:0]SPIXfer_done_int_pulse_d2_reg;
  output [1:0]\SR_5_TX_EMPTY_24_BIT_ADDR_GEN.SR_5_Tx_Empty_reg_0 ;
  output [31:0]\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7] ;
  input Rst_to_spi;
  input one_byte_xfer;
  input ext_spi_clk;
  input two_byte_xfer;
  input four_byte_xfer;
  input [23:0]Q;
  input XIPCR_1_CPOL_int;
  input XIPCR_0_CPHA_int;
  input SS_frm_axi;
  input type_of_burst;
  input [3:0]\LOGIC_GENERATION_FDR.AXI_LEN_SYNC_AXI_SPI_GEN[3].AXI_LEN_SYNC_AXI2SPI_0 ;
  input [7:0]\LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[7].DTR_LEN_SYNC_AXI2SPI_0 ;
  input bus2ip_reset_ipif_inverted;
  input Rx_FIFO_Full;
  input s_axi_aclk;
  input bus2ip_reset_ipif4_inverted;
  input s_axi4_aclk;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[26] ;
  input wrap_around_reg_5;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[27] ;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[28] ;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[30] ;
  input [19:0]data2;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[8] ;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[9] ;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[10] ;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[11] ;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[12] ;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[13] ;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[14] ;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[15] ;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[16]_0 ;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[17]_0 ;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[18]_0 ;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[19]_0 ;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[20]_0 ;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[21]_0 ;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[22]_0 ;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[23]_0 ;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[24] ;
  input [1:0]\LEN_CNTR_24_BIT_GEN.length_cntr_reg[0] ;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[25] ;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[29] ;
  input \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[31] ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[2] ;
  input p_8_in;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0] ;
  input \size_length_cntr_fixed_reg[1]_1 ;
  input \size_length_cntr_fixed_reg[0] ;
  input SPIXfer_done_int;
  input \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[23] ;
  input [1:0]size_length_cntr;
  input hpm_under_process_d1;
  input \RATIO_OF_2_GENERATE.sck_o_int_reg ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0]_0 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[4]_0 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0]_1 ;
  input [7:0]\LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_0 ;
  input \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[1]_0 ;
  input [3:0]O;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_3_0 ;
  input [3:0]\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8]_0 ;
  input [3:0]\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_0 ;
  input \size_length_cntr_reg[0] ;
  input [3:0]\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5] ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3]_0 ;
  input \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[2]_0 ;
  input \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[2]_1 ;
  input \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[2]_2 ;
  input [1:0]hw_wd_cntr;
  input hw_wd_cntr0;
  input \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_0 ;
  input \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1 ;
  input wrap_around_d1;
  input p_3_in1_in;
  input \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[0] ;
  input \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[0]_0 ;
  input empty;
  input s_axi4_rready;
  input last_data_acked;
  input xip_sm_ps;
  input \dtr_length_reg[7] ;
  input [7:0]s_axi4_arlen;
  input \dtr_length_reg[5]_0 ;
  input \dtr_length_reg[3] ;
  input [1:0]s_axi4_arburst;
  input s_axi4_arvalid;
  input XIPSR_CPHA_CPOL_ERR_d2;
  input \RATIO_OF_2_GENERATE.sck_o_int_reg_0 ;
  input \RATIO_OF_2_GENERATE.SCK_O_NQ_4_STARTUP_USED.SCK_O_reg_reg ;
  input sck_o_int;
  input wrap_around_reg_6;
  input \TRANSFER_START_24_BIT_ADDR_GEN.transfer_start_reg ;
  input start_after_wrap_d1;
  input wrap_around_reg_7;
  input wrap_around_reg_8;
  input wrap_around_reg_9;
  input wrap_around_reg_10;
  input \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_1 ;
  input \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_2 ;
  input \LEN_CNTR_24_BIT_GEN.length_cntr_reg[5] ;
  input \LEN_CNTR_24_BIT_GEN.length_cntr_reg[4] ;
  input \LEN_CNTR_24_BIT_GEN.length_cntr_reg[3] ;
  input transfer_start_d2;
  input [0:0]\RATIO_OF_2_GENERATE.Count_reg[0] ;
  input \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2 ;
  input [23:0]\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_0 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_1 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[22]_0 ;
  input [3:0]\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[12]_0 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[12]_1 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[11]_0 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[10]_0 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9]_0 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8]_1 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[7] ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[6] ;
  input \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[7] ;
  input \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[0] ;
  input [3:0]\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_1 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[5]_0 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[13]_0 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[14]_0 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[15]_0 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[16]_0 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[17]_0 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[18]_0 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[19]_0 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20]_0 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[21]_0 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_2_0 ;
  input [0:0]\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_2 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_3 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_2_1 ;
  input \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_3_0 ;
  input [7:0]\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[15] ;
  input [31:0]\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31] ;
  input \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[23]_0 ;

  wire CPHA_cdc_to_spi_d1;
  wire CPHA_to_spi_clk;
  wire CPOL_cdc_to_spi_d1;
  wire CPOL_to_spi_clk;
  wire [0:0]D;
  wire D0;
  wire D01_out;
  wire [0:0]E;
  wire \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps[0]_i_2_n_0 ;
  wire \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[0] ;
  wire [3:0]\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5] ;
  wire \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_0 ;
  wire \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1 ;
  wire \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2 ;
  wire [1:0]\LEN_CNTR_24_BIT_GEN.length_cntr_reg[0] ;
  wire \LEN_CNTR_24_BIT_GEN.length_cntr_reg[3] ;
  wire \LEN_CNTR_24_BIT_GEN.length_cntr_reg[4] ;
  wire \LEN_CNTR_24_BIT_GEN.length_cntr_reg[5] ;
  wire [7:0]\LEN_CNTR_24_BIT_GEN.length_cntr_reg[7] ;
  wire [7:0]\LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_0 ;
  wire \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_1 ;
  wire \LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_2 ;
  wire [3:0]\LOGIC_GENERATION_FDR.AXI_LEN_SYNC_AXI_SPI_GEN[3].AXI_LEN_SYNC_AXI2SPI_0 ;
  wire \LOGIC_GENERATION_FDR.CPOL_SYNC_AXI2SPI_1_0 ;
  wire [0:0]\LOGIC_GENERATION_FDR.CPOL_SYNC_AXI2SPI_1_1 ;
  wire \LOGIC_GENERATION_FDR.CPOL_SYNC_AXI2SPI_1_2 ;
  wire [7:0]\LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[7].DTR_LEN_SYNC_AXI2SPI_0 ;
  wire \LOGIC_GENERATION_FDR.HW_XFER_SYNC_AXI2SPI_1_0 ;
  wire \LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_1_0 ;
  wire \LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_2_0 ;
  wire \LOGIC_GENERATION_FDR.LD_CMD_SYNC_AXI2SPI_1_0 ;
  wire \LOGIC_GENERATION_FDR.LD_CMD_SYNC_AXI2SPI_2_0 ;
  wire \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[0].TRANS_ADDR_SYNC_AXI2SPI_CDC_0 ;
  wire \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[1].TRANS_ADDR_SYNC_AXI2SPI_CDC_0 ;
  wire \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[1].TRANS_ADDR_SYNC_AXI2SPI_CDC_1 ;
  wire \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[2].TRANS_ADDR_SYNC_AXI2SPI_CDC_0 ;
  wire \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[3].TRANS_ADDR_SYNC_AXI2SPI_CDC_0 ;
  wire \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[4].TRANS_ADDR_SYNC_AXI2SPI_CDC_0 ;
  wire \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[5].TRANS_ADDR_SYNC_AXI2SPI_CDC_0 ;
  wire \LOGIC_GENERATION_FDR.TYP_OF_XFER_SYNC_AXI2SPI_1_0 ;
  wire \LOGIC_GENERATION_FDR.WORD_XFER_SYNC_AXI2SPI_1_0 ;
  wire \LOGIC_GENERATION_FDR.ld_axi_data_cdc_from_axi_int_2_reg_n_0 ;
  wire \LOGIC_GENERATION_FDR.load_cmd_cdc_from_axi_int_2_reg_n_0 ;
  wire [3:0]O;
  wire [23:0]Q;
  wire \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[10]_i_2_n_0 ;
  wire \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[11]_i_2_n_0 ;
  wire \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[12]_i_2_n_0 ;
  wire \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[13]_i_2_n_0 ;
  wire \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[14]_i_2_n_0 ;
  wire \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[14]_i_3_n_0 ;
  wire \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[15]_i_3_n_0 ;
  wire \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[15]_i_4_n_0 ;
  wire \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[15]_i_5_n_0 ;
  wire \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[15]_i_6_n_0 ;
  wire \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[23]_i_3_n_0 ;
  wire \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_3_n_0 ;
  wire \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_4_n_0 ;
  wire \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[7]_i_4_n_0 ;
  wire \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[8]_i_2_n_0 ;
  wire \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[9]_i_2_n_0 ;
  wire [7:0]\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[15] ;
  wire \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[23] ;
  wire \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[23]_0 ;
  wire [31:0]\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31] ;
  wire \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[7] ;
  wire \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr[2]_i_2_n_0 ;
  wire \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[0] ;
  wire \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[1] ;
  wire \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[1]_0 ;
  wire \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[2] ;
  wire \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[2]_0 ;
  wire \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[2]_1 ;
  wire \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[2]_2 ;
  wire \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.hw_wd_cntr[1]_i_2_n_0 ;
  wire \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.hw_wd_cntr_reg[0] ;
  wire \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.hw_wd_cntr_reg[1] ;
  wire [31:0]\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7] ;
  wire [0:0]\RATIO_OF_2_GENERATE.Count_reg[0] ;
  wire \RATIO_OF_2_GENERATE.SCK_O_NQ_4_STARTUP_USED.SCK_O_reg_reg ;
  wire \RATIO_OF_2_GENERATE.sck_o_int_i_2_n_0 ;
  wire \RATIO_OF_2_GENERATE.sck_o_int_reg ;
  wire \RATIO_OF_2_GENERATE.sck_o_int_reg_0 ;
  wire [0:0]RESET_SYNC_AX2S_2;
  wire RESET_SYNC_AX2S_2_0;
  wire Rst_to_spi;
  wire Rx_FIFO_Full;
  wire Rx_FIFO_Full_to_axi4_clk;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[10] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[11] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[12] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[13] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[14] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[15] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[16] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[16]_0 ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[17] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[17]_0 ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[18] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[18]_0 ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[19] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[19]_0 ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[20] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[20]_0 ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[21] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[21]_0 ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[22] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[22]_0 ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[23] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[23]_0 ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[24] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[25] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[26] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[27] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[28] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[29] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[30] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[31] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[8] ;
  wire \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[9] ;
  wire SPIXfer_done_int;
  wire [3:0]SPIXfer_done_int_pulse_d2_reg;
  wire \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[0]_i_2_n_0 ;
  wire \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[0]_i_4_n_0 ;
  wire \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[1]_i_2_n_0 ;
  wire \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[1]_i_3_n_0 ;
  wire \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[1]_i_4_n_0 ;
  wire \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[1]_i_5_n_0 ;
  wire \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[0] ;
  wire \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[0]_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[0]_i_2_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[0]_i_4_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[10]_i_2_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[11]_i_2_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[12]_i_2_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[13]_i_2_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[14]_i_2_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[15]_i_2_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[16]_i_2_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[17]_i_2_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[18]_i_2_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[19]_i_2_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_2_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_3_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_4_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_5_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_6_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_8_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[20]_i_2_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[21]_i_2_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[22]_i_2_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_4_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_5_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_6_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_9_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_2_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_2_1 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_2_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_3_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_4_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_5_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_6_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_7_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_10_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_2_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_3_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_3_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_4_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_5_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_6_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_7_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_8_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_10_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_11_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_12_n_0 ;
  wire [3:0]\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_0 ;
  wire [3:0]\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_1 ;
  wire [0:0]\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_2 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_3 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_3_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_4_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_5_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_6_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_7_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_8_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_10_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_11_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_2_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_3_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_3_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_4_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_5_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_7_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_8_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_9_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[6]_i_2_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[7]_i_2_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[8]_i_2_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[9]_i_2_n_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0]_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0]_1 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[10] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[10]_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[11] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[11]_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[12] ;
  wire [3:0]\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[12]_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[12]_1 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[13] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[13]_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[14] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[14]_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[15] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[15]_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[16] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[16]_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[17] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[17]_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[18] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[18]_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[19] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[19]_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20]_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[21] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[21]_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[22] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[22]_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23] ;
  wire [23:0]\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_1 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[2] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3]_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[4] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[4]_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[5] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[5]_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[6] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[7] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8] ;
  wire [3:0]\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8]_0 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8]_1 ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9] ;
  wire \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9]_0 ;
  wire \SR_5_TX_EMPTY_24_BIT_ADDR_GEN.SR_5_Tx_Empty_reg ;
  wire [1:0]\SR_5_TX_EMPTY_24_BIT_ADDR_GEN.SR_5_Tx_Empty_reg_0 ;
  wire SS_cdc_from_spi_d1;
  wire SS_frm_axi;
  wire SS_to_spi_clk;
  wire S_AXI4_ARREADY_i_i_2_n_0;
  wire Sync_Set;
  wire \TRANSFER_START_24_BIT_ADDR_GEN.transfer_start_i_2_n_0 ;
  wire \TRANSFER_START_24_BIT_ADDR_GEN.transfer_start_reg ;
  wire [23:0]Transmit_Addr_to_spi_clk;
  wire Tx_Data_d1;
  wire XIPCR_0_CPHA_int;
  wire XIPCR_1_CPOL_int;
  wire XIPSR_CPHA_CPOL_ERR_d2;
  wire axi_length_cdc_to_spi_d1_0;
  wire axi_length_cdc_to_spi_d1_1;
  wire axi_length_cdc_to_spi_d1_2;
  wire axi_length_cdc_to_spi_d1_3;
  wire [3:0]axi_length_to_spi_clk;
  wire bus2ip_reset_ipif4_inverted;
  wire bus2ip_reset_ipif_inverted;
  wire byte_xfer_cdc_from_axi_d1;
  wire cmd_addr_cntr1;
  wire [19:0]data2;
  wire dtr_length_cdc_from_axi_d1_0;
  wire dtr_length_cdc_from_axi_d1_1;
  wire dtr_length_cdc_from_axi_d1_2;
  wire dtr_length_cdc_from_axi_d1_3;
  wire dtr_length_cdc_from_axi_d1_4;
  wire dtr_length_cdc_from_axi_d1_5;
  wire dtr_length_cdc_from_axi_d1_6;
  wire dtr_length_cdc_from_axi_d1_7;
  wire \dtr_length_reg[3] ;
  wire [7:0]\dtr_length_reg[5] ;
  wire \dtr_length_reg[5]_0 ;
  wire \dtr_length_reg[7] ;
  wire [7:0]dtr_length_to_spi_clk;
  wire empty;
  wire ext_spi_clk;
  wire four_byte_xfer;
  wire four_byte_xfer_to_spi_clk;
  wire [0:0]\gen_fwft.empty_fwft_i_reg ;
  wire hpm_under_process_d1;
  wire [1:0]hw_wd_cntr;
  wire hw_wd_cntr0;
  wire hw_xfer_cdc_from_axi_d1;
  wire last_data_acked;
  wire load_axi_data_cdc_to_spi_d1;
  wire load_axi_data_frm_axi_clk;
  wire load_axi_data_to_spi_clk;
  wire load_cmd_cdc_from_axi_d1;
  wire new_tr0;
  wire one_byte_xfer;
  wire one_byte_xfer_to_spi_clk;
  wire p_3_in1_in;
  wire p_8_in;
  wire rx_fifo_full_d1;
  wire rx_fifo_full_d3;
  wire s_axi4_aclk;
  wire [1:0]s_axi4_arburst;
  wire [7:0]s_axi4_arlen;
  wire s_axi4_arvalid;
  wire s_axi4_rready;
  wire s_axi4_rready_0;
  wire s_axi_aclk;
  wire sck_o_int;
  wire [1:0]size_length_cntr;
  wire \size_length_cntr[1]_i_2_n_0 ;
  wire \size_length_cntr[1]_i_4_n_0 ;
  wire \size_length_cntr_fixed_reg[0] ;
  wire \size_length_cntr_fixed_reg[1] ;
  wire \size_length_cntr_fixed_reg[1]_0 ;
  wire \size_length_cntr_fixed_reg[1]_1 ;
  wire \size_length_cntr_reg[0] ;
  wire \size_length_cntr_reg[1] ;
  wire \spi_addr_wrap_1_reg[13] ;
  wire \spi_addr_wrap_1_reg[14] ;
  wire \spi_addr_wrap_1_reg[15] ;
  wire \spi_addr_wrap_1_reg[16] ;
  wire \spi_addr_wrap_1_reg[17] ;
  wire \spi_addr_wrap_1_reg[18] ;
  wire \spi_addr_wrap_1_reg[19] ;
  wire \spi_addr_wrap_1_reg[20] ;
  wire \spi_addr_wrap_1_reg[21] ;
  wire \spi_addr_wrap_1_reg[22] ;
  wire \spi_addr_wrap_1_reg[23] ;
  wire start_after_wrap_d1;
  wire transfer_start_d2;
  wire two_byte_xfer;
  wire two_byte_xfer_to_spi_clk;
  wire type_of_burst;
  wire type_of_burst_cdc_to_spi_d1;
  wire type_of_burst_to_spi_clk;
  wire wb_hpm_done_cdc_from_spi_d1;
  wire wb_hpm_done_to_axi;
  wire word_xfer_cdc_from_axi_d1;
  wire wrap_around25_out;
  wire wrap_around_d1;
  wire wrap_around_d2_reg;
  wire wrap_around_d2_reg_0;
  wire wrap_around_d2_reg_1;
  wire wrap_around_d2_reg_2;
  wire wrap_around_d2_reg_3;
  wire wrap_around_d2_reg_4;
  wire wrap_around_d2_reg_5;
  wire wrap_around_i_10_n_0;
  wire wrap_around_i_12_n_0;
  wire wrap_around_i_13_n_0;
  wire wrap_around_i_14_n_0;
  wire wrap_around_i_3_n_0;
  wire wrap_around_i_4_n_0;
  wire wrap_around_i_6_n_0;
  wire wrap_around_i_8_n_0;
  wire wrap_around_reg;
  wire wrap_around_reg_0;
  wire wrap_around_reg_1;
  wire wrap_around_reg_10;
  wire wrap_around_reg_2;
  wire wrap_around_reg_3;
  wire wrap_around_reg_4;
  wire wrap_around_reg_5;
  wire wrap_around_reg_6;
  wire wrap_around_reg_7;
  wire wrap_around_reg_8;
  wire wrap_around_reg_9;
  wire xip_sm_ns;
  wire xip_sm_ps;

  LUT6 #(
    .INIT(64'hFFFFFFFFBA003000)) 
    \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps[0]_i_1 
       (.I0(SS_to_spi_clk),
        .I1(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2 ),
        .I2(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1 ),
        .I3(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5] [2]),
        .I4(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_0 ),
        .I5(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps[0]_i_2_n_0 ),
        .O(\SR_5_TX_EMPTY_24_BIT_ADDR_GEN.SR_5_Tx_Empty_reg_0 [0]));
  LUT6 #(
    .INIT(64'hF080FFFFF080F080)) 
    \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps[0]_i_2 
       (.I0(SS_to_spi_clk),
        .I1(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5] [3]),
        .I2(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_0 ),
        .I3(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5] [1]),
        .I4(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[0] ),
        .I5(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5] [0]),
        .O(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAA8A00)) 
    \FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps[5]_i_1 
       (.I0(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_0 ),
        .I1(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2 ),
        .I2(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1 ),
        .I3(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5] [2]),
        .I4(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5] [3]),
        .I5(SS_to_spi_clk),
        .O(\SR_5_TX_EMPTY_24_BIT_ADDR_GEN.SR_5_Tx_Empty_reg_0 [1]));
  LUT6 #(
    .INIT(64'h5501010155550155)) 
    \LEN_CNTR_24_BIT_GEN.length_cntr[0]_i_1 
       (.I0(Rst_to_spi),
        .I1(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[0] [0]),
        .I2(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[0] [1]),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0 ),
        .I4(dtr_length_to_spi_clk[0]),
        .I5(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_0 [0]),
        .O(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[7] [0]));
  LUT6 #(
    .INIT(64'h5555444454455445)) 
    \LEN_CNTR_24_BIT_GEN.length_cntr[1]_i_1 
       (.I0(Rst_to_spi),
        .I1(\RATIO_OF_2_GENERATE.sck_o_int_reg ),
        .I2(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_0 [1]),
        .I3(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_0 [0]),
        .I4(dtr_length_to_spi_clk[1]),
        .I5(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0 ),
        .O(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[7] [1]));
  LUT6 #(
    .INIT(64'hFF00A9A900000000)) 
    \LEN_CNTR_24_BIT_GEN.length_cntr[2]_i_1 
       (.I0(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_0 [2]),
        .I1(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_0 [0]),
        .I2(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_0 [1]),
        .I3(dtr_length_to_spi_clk[2]),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0 ),
        .I5(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_2 ),
        .O(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[7] [2]));
  LUT6 #(
    .INIT(64'h99F0F09900000000)) 
    \LEN_CNTR_24_BIT_GEN.length_cntr[3]_i_1 
       (.I0(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_0 [3]),
        .I1(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[3] ),
        .I2(dtr_length_to_spi_clk[3]),
        .I3(\LOGIC_GENERATION_FDR.LD_CMD_SYNC_AXI2SPI_1_0 ),
        .I4(\LOGIC_GENERATION_FDR.LD_CMD_SYNC_AXI2SPI_2_0 ),
        .I5(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_2 ),
        .O(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[7] [3]));
  LUT6 #(
    .INIT(64'h99F0F09900000000)) 
    \LEN_CNTR_24_BIT_GEN.length_cntr[4]_i_1 
       (.I0(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_0 [4]),
        .I1(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[4] ),
        .I2(dtr_length_to_spi_clk[4]),
        .I3(\LOGIC_GENERATION_FDR.LD_CMD_SYNC_AXI2SPI_1_0 ),
        .I4(\LOGIC_GENERATION_FDR.LD_CMD_SYNC_AXI2SPI_2_0 ),
        .I5(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_2 ),
        .O(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[7] [4]));
  LUT6 #(
    .INIT(64'h99F0F09900000000)) 
    \LEN_CNTR_24_BIT_GEN.length_cntr[5]_i_1 
       (.I0(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_0 [5]),
        .I1(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[5] ),
        .I2(dtr_length_to_spi_clk[5]),
        .I3(\LOGIC_GENERATION_FDR.LD_CMD_SYNC_AXI2SPI_1_0 ),
        .I4(\LOGIC_GENERATION_FDR.LD_CMD_SYNC_AXI2SPI_2_0 ),
        .I5(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_2 ),
        .O(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[7] [5]));
  LUT6 #(
    .INIT(64'h66F0F06600000000)) 
    \LEN_CNTR_24_BIT_GEN.length_cntr[6]_i_1 
       (.I0(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_0 [6]),
        .I1(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_1 ),
        .I2(dtr_length_to_spi_clk[6]),
        .I3(\LOGIC_GENERATION_FDR.LD_CMD_SYNC_AXI2SPI_1_0 ),
        .I4(\LOGIC_GENERATION_FDR.LD_CMD_SYNC_AXI2SPI_2_0 ),
        .I5(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_2 ),
        .O(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[7] [6]));
  LUT6 #(
    .INIT(64'hFFFFFFEAFFFFFFFF)) 
    \LEN_CNTR_24_BIT_GEN.length_cntr[7]_i_1 
       (.I0(Rst_to_spi),
        .I1(hpm_under_process_d1),
        .I2(SPIXfer_done_int),
        .I3(\RATIO_OF_2_GENERATE.sck_o_int_reg ),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0 ),
        .I5(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0]_0 ),
        .O(E));
  LUT6 #(
    .INIT(64'hFF009A9A00000000)) 
    \LEN_CNTR_24_BIT_GEN.length_cntr[7]_i_2 
       (.I0(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_0 [7]),
        .I1(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_0 [6]),
        .I2(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_1 ),
        .I3(dtr_length_to_spi_clk[7]),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0 ),
        .I5(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[7]_2 ),
        .O(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[7] [7]));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    \LOGIC_GENERATION_FDR.AXI_LEN_SYNC_AXI_SPI_GEN[0].AXI_LEN_SYNC_AXI2SPI 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\LOGIC_GENERATION_FDR.AXI_LEN_SYNC_AXI_SPI_GEN[3].AXI_LEN_SYNC_AXI2SPI_0 [0]),
        .Q(axi_length_cdc_to_spi_d1_0),
        .R(Rst_to_spi));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    \LOGIC_GENERATION_FDR.AXI_LEN_SYNC_AXI_SPI_GEN[0].AXI_LEN_SYNC_AXI2SPI_1 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(axi_length_cdc_to_spi_d1_0),
        .Q(axi_length_to_spi_clk[0]),
        .R(Rst_to_spi));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    \LOGIC_GENERATION_FDR.AXI_LEN_SYNC_AXI_SPI_GEN[1].AXI_LEN_SYNC_AXI2SPI 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\LOGIC_GENERATION_FDR.AXI_LEN_SYNC_AXI_SPI_GEN[3].AXI_LEN_SYNC_AXI2SPI_0 [1]),
        .Q(axi_length_cdc_to_spi_d1_1),
        .R(Rst_to_spi));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    \LOGIC_GENERATION_FDR.AXI_LEN_SYNC_AXI_SPI_GEN[1].AXI_LEN_SYNC_AXI2SPI_1 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(axi_length_cdc_to_spi_d1_1),
        .Q(axi_length_to_spi_clk[1]),
        .R(Rst_to_spi));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    \LOGIC_GENERATION_FDR.AXI_LEN_SYNC_AXI_SPI_GEN[2].AXI_LEN_SYNC_AXI2SPI 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\LOGIC_GENERATION_FDR.AXI_LEN_SYNC_AXI_SPI_GEN[3].AXI_LEN_SYNC_AXI2SPI_0 [2]),
        .Q(axi_length_cdc_to_spi_d1_2),
        .R(Rst_to_spi));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    \LOGIC_GENERATION_FDR.AXI_LEN_SYNC_AXI_SPI_GEN[2].AXI_LEN_SYNC_AXI2SPI_1 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(axi_length_cdc_to_spi_d1_2),
        .Q(axi_length_to_spi_clk[2]),
        .R(Rst_to_spi));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    \LOGIC_GENERATION_FDR.AXI_LEN_SYNC_AXI_SPI_GEN[3].AXI_LEN_SYNC_AXI2SPI 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\LOGIC_GENERATION_FDR.AXI_LEN_SYNC_AXI_SPI_GEN[3].AXI_LEN_SYNC_AXI2SPI_0 [3]),
        .Q(axi_length_cdc_to_spi_d1_3),
        .R(Rst_to_spi));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    \LOGIC_GENERATION_FDR.AXI_LEN_SYNC_AXI_SPI_GEN[3].AXI_LEN_SYNC_AXI2SPI_1 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(axi_length_cdc_to_spi_d1_3),
        .Q(axi_length_to_spi_clk[3]),
        .R(Rst_to_spi));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.BYTE_XFER_SYNC_AXI2SPI 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(one_byte_xfer),
        .Q(byte_xfer_cdc_from_axi_d1),
        .R(Rst_to_spi));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.BYTE_XFER_SYNC_AXI2SPI_1 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(byte_xfer_cdc_from_axi_d1),
        .Q(one_byte_xfer_to_spi_clk),
        .R(Rst_to_spi));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.CPHA_SYNC_AXI2SPI 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(XIPCR_0_CPHA_int),
        .Q(CPHA_cdc_to_spi_d1),
        .R(Rst_to_spi));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.CPHA_SYNC_AXI2SPI_1 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(CPHA_cdc_to_spi_d1),
        .Q(CPHA_to_spi_clk),
        .R(Rst_to_spi));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.CPOL_SYNC_AXI2SPI 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(XIPCR_1_CPOL_int),
        .Q(CPOL_cdc_to_spi_d1),
        .R(Rst_to_spi));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.CPOL_SYNC_AXI2SPI_1 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(CPOL_cdc_to_spi_d1),
        .Q(CPOL_to_spi_clk),
        .R(Rst_to_spi));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[0].DTR_LEN_SYNC_AXI2SPI 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[7].DTR_LEN_SYNC_AXI2SPI_0 [0]),
        .Q(dtr_length_cdc_from_axi_d1_0),
        .R(Rst_to_spi));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[0].DTR_LEN_SYNC_AXI2SPI_1 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(dtr_length_cdc_from_axi_d1_0),
        .Q(dtr_length_to_spi_clk[0]),
        .R(Rst_to_spi));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[1].DTR_LEN_SYNC_AXI2SPI 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[7].DTR_LEN_SYNC_AXI2SPI_0 [1]),
        .Q(dtr_length_cdc_from_axi_d1_1),
        .R(Rst_to_spi));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[1].DTR_LEN_SYNC_AXI2SPI_1 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(dtr_length_cdc_from_axi_d1_1),
        .Q(dtr_length_to_spi_clk[1]),
        .R(Rst_to_spi));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[2].DTR_LEN_SYNC_AXI2SPI 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[7].DTR_LEN_SYNC_AXI2SPI_0 [2]),
        .Q(dtr_length_cdc_from_axi_d1_2),
        .R(Rst_to_spi));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[2].DTR_LEN_SYNC_AXI2SPI_1 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(dtr_length_cdc_from_axi_d1_2),
        .Q(dtr_length_to_spi_clk[2]),
        .R(Rst_to_spi));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[3].DTR_LEN_SYNC_AXI2SPI 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[7].DTR_LEN_SYNC_AXI2SPI_0 [3]),
        .Q(dtr_length_cdc_from_axi_d1_3),
        .R(Rst_to_spi));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[3].DTR_LEN_SYNC_AXI2SPI_1 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(dtr_length_cdc_from_axi_d1_3),
        .Q(dtr_length_to_spi_clk[3]),
        .R(Rst_to_spi));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[4].DTR_LEN_SYNC_AXI2SPI 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[7].DTR_LEN_SYNC_AXI2SPI_0 [4]),
        .Q(dtr_length_cdc_from_axi_d1_4),
        .R(Rst_to_spi));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[4].DTR_LEN_SYNC_AXI2SPI_1 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(dtr_length_cdc_from_axi_d1_4),
        .Q(dtr_length_to_spi_clk[4]),
        .R(Rst_to_spi));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[5].DTR_LEN_SYNC_AXI2SPI 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[7].DTR_LEN_SYNC_AXI2SPI_0 [5]),
        .Q(dtr_length_cdc_from_axi_d1_5),
        .R(Rst_to_spi));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[5].DTR_LEN_SYNC_AXI2SPI_1 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(dtr_length_cdc_from_axi_d1_5),
        .Q(dtr_length_to_spi_clk[5]),
        .R(Rst_to_spi));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[6].DTR_LEN_SYNC_AXI2SPI 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[7].DTR_LEN_SYNC_AXI2SPI_0 [6]),
        .Q(dtr_length_cdc_from_axi_d1_6),
        .R(Rst_to_spi));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[6].DTR_LEN_SYNC_AXI2SPI_1 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(dtr_length_cdc_from_axi_d1_6),
        .Q(dtr_length_to_spi_clk[6]),
        .R(Rst_to_spi));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[7].DTR_LEN_SYNC_AXI2SPI 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[7].DTR_LEN_SYNC_AXI2SPI_0 [7]),
        .Q(dtr_length_cdc_from_axi_d1_7),
        .R(Rst_to_spi));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    \LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[7].DTR_LEN_SYNC_AXI2SPI_1 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(dtr_length_cdc_from_axi_d1_7),
        .Q(dtr_length_to_spi_clk[7]),
        .R(Rst_to_spi));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.HW_XFER_SYNC_AXI2SPI 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(two_byte_xfer),
        .Q(hw_xfer_cdc_from_axi_d1),
        .R(Rst_to_spi));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.HW_XFER_SYNC_AXI2SPI_1 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(hw_xfer_cdc_from_axi_d1),
        .Q(two_byte_xfer_to_spi_clk),
        .R(Rst_to_spi));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\LOGIC_GENERATION_FDR.ld_axi_data_cdc_from_axi_int_2_reg_n_0 ),
        .Q(load_axi_data_cdc_to_spi_d1),
        .R(Rst_to_spi));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_1 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(load_axi_data_cdc_to_spi_d1),
        .Q(\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_1_0 ),
        .R(Rst_to_spi));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_1_0 ),
        .Q(\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_2_0 ),
        .R(Rst_to_spi));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.LD_CMD_SYNC_AXI2SPI 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\LOGIC_GENERATION_FDR.load_cmd_cdc_from_axi_int_2_reg_n_0 ),
        .Q(load_cmd_cdc_from_axi_d1),
        .R(Rst_to_spi));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.LD_CMD_SYNC_AXI2SPI_1 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(load_cmd_cdc_from_axi_d1),
        .Q(\LOGIC_GENERATION_FDR.LD_CMD_SYNC_AXI2SPI_1_0 ),
        .R(Rst_to_spi));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.LD_CMD_SYNC_AXI2SPI_2 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(\LOGIC_GENERATION_FDR.LD_CMD_SYNC_AXI2SPI_1_0 ),
        .Q(\LOGIC_GENERATION_FDR.LD_CMD_SYNC_AXI2SPI_2_0 ),
        .R(Rst_to_spi));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.Rx_FIFO_Full_SYNC_SPI2AXI 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Rx_FIFO_Full),
        .Q(rx_fifo_full_d1),
        .R(bus2ip_reset_ipif_inverted));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.Rx_FIFO_Full_SYNC_SPI2AXI4 
       (.C(s_axi4_aclk),
        .CE(1'b1),
        .D(Rx_FIFO_Full),
        .Q(rx_fifo_full_d3),
        .R(bus2ip_reset_ipif4_inverted));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.Rx_FIFO_Full_SYNC_SPI2AXI4_1 
       (.C(s_axi4_aclk),
        .CE(1'b1),
        .D(rx_fifo_full_d3),
        .Q(Rx_FIFO_Full_to_axi4_clk),
        .R(bus2ip_reset_ipif4_inverted));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.Rx_FIFO_Full_SYNC_SPI2AXI_1 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rx_fifo_full_d1),
        .Q(D),
        .R(bus2ip_reset_ipif_inverted));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    \LOGIC_GENERATION_FDR.SS_SYNC_AXI_SPI_GEN[0].SS_SYNC_AXI2SPI_1 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(SS_cdc_from_spi_d1),
        .Q(SS_to_spi_clk),
        .R(Rst_to_spi));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1)) 
    \LOGIC_GENERATION_FDR.SS_SYNC_AXI_SPI_GEN[0].SS_SYNC_AXI2SPI_CDC 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(SS_frm_axi),
        .Q(SS_cdc_from_spi_d1),
        .R(Rst_to_spi));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[0].TRANS_ADDR_SYNC_AXI2SPI_CDC 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(Q[0]),
        .Q(Transmit_Addr_to_spi_clk[0]),
        .R(Rst_to_spi));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[10].TRANS_ADDR_SYNC_AXI2SPI_CDC 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(Q[10]),
        .Q(Transmit_Addr_to_spi_clk[10]),
        .R(Rst_to_spi));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[11].TRANS_ADDR_SYNC_AXI2SPI_CDC 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(Q[11]),
        .Q(Transmit_Addr_to_spi_clk[11]),
        .R(Rst_to_spi));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[12].TRANS_ADDR_SYNC_AXI2SPI_CDC 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(Q[12]),
        .Q(Transmit_Addr_to_spi_clk[12]),
        .R(Rst_to_spi));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[13].TRANS_ADDR_SYNC_AXI2SPI_CDC 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(Q[13]),
        .Q(Transmit_Addr_to_spi_clk[13]),
        .R(Rst_to_spi));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[14].TRANS_ADDR_SYNC_AXI2SPI_CDC 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(Q[14]),
        .Q(Transmit_Addr_to_spi_clk[14]),
        .R(Rst_to_spi));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[15].TRANS_ADDR_SYNC_AXI2SPI_CDC 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(Q[15]),
        .Q(Transmit_Addr_to_spi_clk[15]),
        .R(Rst_to_spi));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[16].TRANS_ADDR_SYNC_AXI2SPI_CDC 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(Q[16]),
        .Q(Transmit_Addr_to_spi_clk[16]),
        .R(Rst_to_spi));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[17].TRANS_ADDR_SYNC_AXI2SPI_CDC 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(Q[17]),
        .Q(Transmit_Addr_to_spi_clk[17]),
        .R(Rst_to_spi));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[18].TRANS_ADDR_SYNC_AXI2SPI_CDC 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(Q[18]),
        .Q(Transmit_Addr_to_spi_clk[18]),
        .R(Rst_to_spi));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[19].TRANS_ADDR_SYNC_AXI2SPI_CDC 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(Q[19]),
        .Q(Transmit_Addr_to_spi_clk[19]),
        .R(Rst_to_spi));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[1].TRANS_ADDR_SYNC_AXI2SPI_CDC 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(Q[1]),
        .Q(Transmit_Addr_to_spi_clk[1]),
        .R(Rst_to_spi));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[20].TRANS_ADDR_SYNC_AXI2SPI_CDC 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(Q[20]),
        .Q(Transmit_Addr_to_spi_clk[20]),
        .R(Rst_to_spi));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[21].TRANS_ADDR_SYNC_AXI2SPI_CDC 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(Q[21]),
        .Q(Transmit_Addr_to_spi_clk[21]),
        .R(Rst_to_spi));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[22].TRANS_ADDR_SYNC_AXI2SPI_CDC 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(Q[22]),
        .Q(Transmit_Addr_to_spi_clk[22]),
        .R(Rst_to_spi));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[23].TRANS_ADDR_SYNC_AXI2SPI_CDC 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(Q[23]),
        .Q(Transmit_Addr_to_spi_clk[23]),
        .R(Rst_to_spi));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[2].TRANS_ADDR_SYNC_AXI2SPI_CDC 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(Q[2]),
        .Q(Transmit_Addr_to_spi_clk[2]),
        .R(Rst_to_spi));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[3].TRANS_ADDR_SYNC_AXI2SPI_CDC 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(Q[3]),
        .Q(Transmit_Addr_to_spi_clk[3]),
        .R(Rst_to_spi));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[4].TRANS_ADDR_SYNC_AXI2SPI_CDC 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(Q[4]),
        .Q(Transmit_Addr_to_spi_clk[4]),
        .R(Rst_to_spi));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[5].TRANS_ADDR_SYNC_AXI2SPI_CDC 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(Q[5]),
        .Q(Transmit_Addr_to_spi_clk[5]),
        .R(Rst_to_spi));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[6].TRANS_ADDR_SYNC_AXI2SPI_CDC 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(Q[6]),
        .Q(Transmit_Addr_to_spi_clk[6]),
        .R(Rst_to_spi));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[7].TRANS_ADDR_SYNC_AXI2SPI_CDC 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(Q[7]),
        .Q(Transmit_Addr_to_spi_clk[7]),
        .R(Rst_to_spi));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[8].TRANS_ADDR_SYNC_AXI2SPI_CDC 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(Q[8]),
        .Q(Transmit_Addr_to_spi_clk[8]),
        .R(Rst_to_spi));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[9].TRANS_ADDR_SYNC_AXI2SPI_CDC 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(Q[9]),
        .Q(Transmit_Addr_to_spi_clk[9]),
        .R(Rst_to_spi));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.TYP_OF_XFER_SYNC_AXI2SPI 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(type_of_burst),
        .Q(type_of_burst_cdc_to_spi_d1),
        .R(Rst_to_spi));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.TYP_OF_XFER_SYNC_AXI2SPI_1 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(type_of_burst_cdc_to_spi_d1),
        .Q(type_of_burst_to_spi_clk),
        .R(Rst_to_spi));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.WB_HPM_DONE_SYNC_SPI2AXI 
       (.C(s_axi4_aclk),
        .CE(1'b1),
        .D(RESET_SYNC_AX2S_2),
        .Q(wb_hpm_done_cdc_from_spi_d1),
        .R(bus2ip_reset_ipif4_inverted));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.WB_HPM_DONE_SYNC_SPI2AXI_1 
       (.C(s_axi4_aclk),
        .CE(1'b1),
        .D(wb_hpm_done_cdc_from_spi_d1),
        .Q(wb_hpm_done_to_axi),
        .R(bus2ip_reset_ipif4_inverted));
  LUT4 #(
    .INIT(16'h3404)) 
    \LOGIC_GENERATION_FDR.WB_HPM_DONE_SYNC_SPI2AXI_i_1 
       (.I0(Rst_to_spi),
        .I1(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[0] [1]),
        .I2(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[0] [0]),
        .I3(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_0 ),
        .O(RESET_SYNC_AX2S_2));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.WORD_XFER_SYNC_AXI2SPI 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(four_byte_xfer),
        .Q(word_xfer_cdc_from_axi_d1),
        .R(Rst_to_spi));
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \LOGIC_GENERATION_FDR.WORD_XFER_SYNC_AXI2SPI_1 
       (.C(ext_spi_clk),
        .CE(1'b1),
        .D(word_xfer_cdc_from_axi_d1),
        .Q(four_byte_xfer_to_spi_clk),
        .R(Rst_to_spi));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \LOGIC_GENERATION_FDR.ld_axi_data_cdc_from_axi_int_2_i_1 
       (.I0(\LOGIC_GENERATION_FDR.ld_axi_data_cdc_from_axi_int_2_reg_n_0 ),
        .I1(load_axi_data_frm_axi_clk),
        .O(D0));
  FDRE \LOGIC_GENERATION_FDR.ld_axi_data_cdc_from_axi_int_2_reg 
       (.C(s_axi4_aclk),
        .CE(1'b1),
        .D(D0),
        .Q(\LOGIC_GENERATION_FDR.ld_axi_data_cdc_from_axi_int_2_reg_n_0 ),
        .R(bus2ip_reset_ipif4_inverted));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \LOGIC_GENERATION_FDR.load_cmd_cdc_from_axi_int_2_i_1 
       (.I0(\LOGIC_GENERATION_FDR.load_cmd_cdc_from_axi_int_2_reg_n_0 ),
        .I1(load_axi_data_frm_axi_clk),
        .O(D01_out));
  FDRE \LOGIC_GENERATION_FDR.load_cmd_cdc_from_axi_int_2_reg 
       (.C(s_axi4_aclk),
        .CE(1'b1),
        .D(D01_out),
        .Q(\LOGIC_GENERATION_FDR.load_cmd_cdc_from_axi_int_2_reg_n_0 ),
        .R(bus2ip_reset_ipif4_inverted));
  LUT6 #(
    .INIT(64'h000000007F7F7F00)) 
    \MEM_DECODE_GEN[0].cs_out_i[0]_i_1 
       (.I0(s_axi4_rready),
        .I1(last_data_acked),
        .I2(xip_sm_ps),
        .I3(load_axi_data_frm_axi_clk),
        .I4(SS_frm_axi),
        .I5(bus2ip_reset_ipif4_inverted),
        .O(s_axi4_rready_0));
  LUT6 #(
    .INIT(64'hCDC8DDDDCDC88888)) 
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[0]_i_1 
       (.I0(one_byte_xfer_to_spi_clk),
        .I1(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[15] [0]),
        .I2(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[7] ),
        .I3(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31] [0]),
        .I4(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_4_n_0 ),
        .I5(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31] [8]),
        .O(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7] [0]));
  LUT6 #(
    .INIT(64'h1011FFFF10111011)) 
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[10]_i_1 
       (.I0(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[10]_i_2_n_0 ),
        .I1(one_byte_xfer_to_spi_clk),
        .I2(type_of_burst_to_spi_clk),
        .I3(two_byte_xfer_to_spi_clk),
        .I4(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[14]_i_2_n_0 ),
        .I5(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[15] [2]),
        .O(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7] [10]));
  LUT6 #(
    .INIT(64'h35F53535F5F5F5F5)) 
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[10]_i_2 
       (.I0(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31] [18]),
        .I1(type_of_burst_to_spi_clk),
        .I2(two_byte_xfer_to_spi_clk),
        .I3(hw_wd_cntr[1]),
        .I4(hw_wd_cntr[0]),
        .I5(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31] [10]),
        .O(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFAEAEAE)) 
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[11]_i_1 
       (.I0(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[11]_i_2_n_0 ),
        .I1(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31] [19]),
        .I2(two_byte_xfer_to_spi_clk),
        .I3(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[15]_i_3_n_0 ),
        .I4(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31] [11]),
        .I5(one_byte_xfer_to_spi_clk),
        .O(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7] [11]));
  LUT6 #(
    .INIT(64'hAAAAAAAA20AA0000)) 
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[11]_i_2 
       (.I0(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[15] [3]),
        .I1(hw_wd_cntr[1]),
        .I2(hw_wd_cntr[0]),
        .I3(type_of_burst_to_spi_clk),
        .I4(two_byte_xfer_to_spi_clk),
        .I5(one_byte_xfer_to_spi_clk),
        .O(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h444F4444444F444F)) 
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[12]_i_1 
       (.I0(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[14]_i_2_n_0 ),
        .I1(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[15] [4]),
        .I2(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[12]_i_2_n_0 ),
        .I3(one_byte_xfer_to_spi_clk),
        .I4(type_of_burst_to_spi_clk),
        .I5(two_byte_xfer_to_spi_clk),
        .O(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7] [12]));
  LUT6 #(
    .INIT(64'h35F53535F5F5F5F5)) 
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[12]_i_2 
       (.I0(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31] [20]),
        .I1(type_of_burst_to_spi_clk),
        .I2(two_byte_xfer_to_spi_clk),
        .I3(hw_wd_cntr[1]),
        .I4(hw_wd_cntr[0]),
        .I5(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31] [12]),
        .O(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFAEAEAE)) 
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[13]_i_1 
       (.I0(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[13]_i_2_n_0 ),
        .I1(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31] [21]),
        .I2(two_byte_xfer_to_spi_clk),
        .I3(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[15]_i_3_n_0 ),
        .I4(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31] [13]),
        .I5(one_byte_xfer_to_spi_clk),
        .O(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7] [13]));
  LUT6 #(
    .INIT(64'hAAAAAAAA20AA0000)) 
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[13]_i_2 
       (.I0(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[15] [5]),
        .I1(hw_wd_cntr[1]),
        .I2(hw_wd_cntr[0]),
        .I3(type_of_burst_to_spi_clk),
        .I4(two_byte_xfer_to_spi_clk),
        .I5(one_byte_xfer_to_spi_clk),
        .O(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h444F4444444F444F)) 
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[14]_i_1 
       (.I0(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[14]_i_2_n_0 ),
        .I1(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[15] [6]),
        .I2(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[14]_i_3_n_0 ),
        .I3(one_byte_xfer_to_spi_clk),
        .I4(type_of_burst_to_spi_clk),
        .I5(two_byte_xfer_to_spi_clk),
        .O(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7] [14]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h51511151)) 
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[14]_i_2 
       (.I0(one_byte_xfer_to_spi_clk),
        .I1(two_byte_xfer_to_spi_clk),
        .I2(type_of_burst_to_spi_clk),
        .I3(hw_wd_cntr[0]),
        .I4(hw_wd_cntr[1]),
        .O(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h35F53535F5F5F5F5)) 
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[14]_i_3 
       (.I0(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31] [22]),
        .I1(type_of_burst_to_spi_clk),
        .I2(two_byte_xfer_to_spi_clk),
        .I3(hw_wd_cntr[1]),
        .I4(hw_wd_cntr[0]),
        .I5(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31] [14]),
        .O(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0A0A022200000222)) 
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[15]_i_1 
       (.I0(hw_wd_cntr0),
        .I1(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[15]_i_3_n_0 ),
        .I2(p_3_in1_in),
        .I3(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[15]_i_4_n_0 ),
        .I4(one_byte_xfer_to_spi_clk),
        .I5(\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[0]_0 ),
        .O(SPIXfer_done_int_pulse_d2_reg[1]));
  LUT6 #(
    .INIT(64'h44444444FFFFF444)) 
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[15]_i_2 
       (.I0(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[15]_i_5_n_0 ),
        .I1(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[15] [7]),
        .I2(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[15]_i_3_n_0 ),
        .I3(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31] [15]),
        .I4(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[15]_i_6_n_0 ),
        .I5(one_byte_xfer_to_spi_clk),
        .O(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7] [15]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h8088)) 
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[15]_i_3 
       (.I0(type_of_burst_to_spi_clk),
        .I1(two_byte_xfer_to_spi_clk),
        .I2(hw_wd_cntr[1]),
        .I3(hw_wd_cntr[0]),
        .O(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[15]_i_4 
       (.I0(two_byte_xfer_to_spi_clk),
        .I1(type_of_burst_to_spi_clk),
        .O(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[15]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[15]_i_5 
       (.I0(one_byte_xfer_to_spi_clk),
        .I1(type_of_burst_to_spi_clk),
        .I2(two_byte_xfer_to_spi_clk),
        .O(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h3000AAAA0000AAAA)) 
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[15]_i_6 
       (.I0(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31] [23]),
        .I1(hw_wd_cntr[1]),
        .I2(hw_wd_cntr[0]),
        .I3(type_of_burst_to_spi_clk),
        .I4(two_byte_xfer_to_spi_clk),
        .I5(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[15] [7]),
        .O(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFAEEEE05004444)) 
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[16]_i_1 
       (.I0(one_byte_xfer_to_spi_clk),
        .I1(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31] [24]),
        .I2(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[23]_0 ),
        .I3(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31] [16]),
        .I4(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_4_n_0 ),
        .I5(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[15] [0]),
        .O(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7] [16]));
  LUT6 #(
    .INIT(64'hFFFAEEEE05004444)) 
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[17]_i_1 
       (.I0(one_byte_xfer_to_spi_clk),
        .I1(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31] [25]),
        .I2(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[23]_0 ),
        .I3(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31] [17]),
        .I4(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_4_n_0 ),
        .I5(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[15] [1]),
        .O(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7] [17]));
  LUT6 #(
    .INIT(64'hFFFAEEEE05004444)) 
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[18]_i_1 
       (.I0(one_byte_xfer_to_spi_clk),
        .I1(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31] [26]),
        .I2(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[23]_0 ),
        .I3(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31] [18]),
        .I4(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_4_n_0 ),
        .I5(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[15] [2]),
        .O(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7] [18]));
  LUT6 #(
    .INIT(64'hFFFAEEEE05004444)) 
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[19]_i_1 
       (.I0(one_byte_xfer_to_spi_clk),
        .I1(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31] [27]),
        .I2(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[23]_0 ),
        .I3(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31] [19]),
        .I4(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_4_n_0 ),
        .I5(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[15] [3]),
        .O(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7] [19]));
  LUT6 #(
    .INIT(64'hCDC8DDDDCDC88888)) 
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[1]_i_1 
       (.I0(one_byte_xfer_to_spi_clk),
        .I1(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[15] [1]),
        .I2(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[7] ),
        .I3(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31] [1]),
        .I4(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_4_n_0 ),
        .I5(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31] [9]),
        .O(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7] [1]));
  LUT6 #(
    .INIT(64'hCDC8DDDDCDC88888)) 
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[20]_i_1 
       (.I0(one_byte_xfer_to_spi_clk),
        .I1(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[15] [4]),
        .I2(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[23]_0 ),
        .I3(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31] [20]),
        .I4(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_4_n_0 ),
        .I5(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31] [28]),
        .O(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7] [20]));
  LUT6 #(
    .INIT(64'hFFFAEEEE05004444)) 
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[21]_i_1 
       (.I0(one_byte_xfer_to_spi_clk),
        .I1(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31] [29]),
        .I2(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[23]_0 ),
        .I3(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31] [21]),
        .I4(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_4_n_0 ),
        .I5(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[15] [5]),
        .O(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7] [21]));
  LUT6 #(
    .INIT(64'hFFFAEEEE05004444)) 
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[22]_i_1 
       (.I0(one_byte_xfer_to_spi_clk),
        .I1(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31] [30]),
        .I2(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[23]_0 ),
        .I3(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31] [22]),
        .I4(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_4_n_0 ),
        .I5(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[15] [6]),
        .O(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7] [22]));
  LUT6 #(
    .INIT(64'h0000800088888888)) 
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[23]_i_1 
       (.I0(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[1]_0 ),
        .I1(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[23] ),
        .I2(one_byte_xfer_to_spi_clk),
        .I3(p_3_in1_in),
        .I4(\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[0]_0 ),
        .I5(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[23]_i_3_n_0 ),
        .O(SPIXfer_done_int_pulse_d2_reg[2]));
  LUT6 #(
    .INIT(64'hFFFAEEEE05004444)) 
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[23]_i_2 
       (.I0(one_byte_xfer_to_spi_clk),
        .I1(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31] [31]),
        .I2(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[23]_0 ),
        .I3(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31] [23]),
        .I4(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_4_n_0 ),
        .I5(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[15] [7]),
        .O(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7] [23]));
  LUT6 #(
    .INIT(64'hFFCFCCCCDDDDCCCC)) 
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[23]_i_3 
       (.I0(p_3_in1_in),
        .I1(one_byte_xfer_to_spi_clk),
        .I2(hw_wd_cntr[1]),
        .I3(hw_wd_cntr[0]),
        .I4(two_byte_xfer_to_spi_clk),
        .I5(type_of_burst_to_spi_clk),
        .O(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAABFAAAAAA80AA)) 
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[24]_i_1 
       (.I0(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[15] [0]),
        .I1(hw_wd_cntr[1]),
        .I2(hw_wd_cntr[0]),
        .I3(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_4_n_0 ),
        .I4(one_byte_xfer_to_spi_clk),
        .I5(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31] [24]),
        .O(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7] [24]));
  LUT6 #(
    .INIT(64'hAAAABFAAAAAA80AA)) 
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[25]_i_1 
       (.I0(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[15] [1]),
        .I1(hw_wd_cntr[1]),
        .I2(hw_wd_cntr[0]),
        .I3(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_4_n_0 ),
        .I4(one_byte_xfer_to_spi_clk),
        .I5(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31] [25]),
        .O(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7] [25]));
  LUT6 #(
    .INIT(64'hAAAABFAAAAAA80AA)) 
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[26]_i_1 
       (.I0(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[15] [2]),
        .I1(hw_wd_cntr[1]),
        .I2(hw_wd_cntr[0]),
        .I3(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_4_n_0 ),
        .I4(one_byte_xfer_to_spi_clk),
        .I5(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31] [26]),
        .O(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7] [26]));
  LUT6 #(
    .INIT(64'hAAAABFAAAAAA80AA)) 
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[27]_i_1 
       (.I0(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[15] [3]),
        .I1(hw_wd_cntr[1]),
        .I2(hw_wd_cntr[0]),
        .I3(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_4_n_0 ),
        .I4(one_byte_xfer_to_spi_clk),
        .I5(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31] [27]),
        .O(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7] [27]));
  LUT6 #(
    .INIT(64'hAAAABFAAAAAA80AA)) 
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[28]_i_1 
       (.I0(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[15] [4]),
        .I1(hw_wd_cntr[1]),
        .I2(hw_wd_cntr[0]),
        .I3(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_4_n_0 ),
        .I4(one_byte_xfer_to_spi_clk),
        .I5(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31] [28]),
        .O(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7] [28]));
  LUT6 #(
    .INIT(64'hAAAABFAAAAAA80AA)) 
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[29]_i_1 
       (.I0(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[15] [5]),
        .I1(hw_wd_cntr[1]),
        .I2(hw_wd_cntr[0]),
        .I3(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_4_n_0 ),
        .I4(one_byte_xfer_to_spi_clk),
        .I5(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31] [29]),
        .O(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7] [29]));
  LUT6 #(
    .INIT(64'hCDC8DDDDCDC88888)) 
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[2]_i_1 
       (.I0(one_byte_xfer_to_spi_clk),
        .I1(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[15] [2]),
        .I2(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[7] ),
        .I3(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31] [2]),
        .I4(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_4_n_0 ),
        .I5(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31] [10]),
        .O(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7] [2]));
  LUT6 #(
    .INIT(64'hAAAABFAAAAAA80AA)) 
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[30]_i_1 
       (.I0(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[15] [6]),
        .I1(hw_wd_cntr[1]),
        .I2(hw_wd_cntr[0]),
        .I3(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_4_n_0 ),
        .I4(one_byte_xfer_to_spi_clk),
        .I5(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31] [30]),
        .O(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7] [30]));
  LUT6 #(
    .INIT(64'h8000000088888888)) 
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_1 
       (.I0(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[1]_0 ),
        .I1(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[23] ),
        .I2(\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[0]_0 ),
        .I3(one_byte_xfer_to_spi_clk),
        .I4(p_3_in1_in),
        .I5(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_3_n_0 ),
        .O(SPIXfer_done_int_pulse_d2_reg[3]));
  LUT6 #(
    .INIT(64'hAAAABFAAAAAA80AA)) 
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_2 
       (.I0(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[15] [7]),
        .I1(hw_wd_cntr[1]),
        .I2(hw_wd_cntr[0]),
        .I3(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_4_n_0 ),
        .I4(one_byte_xfer_to_spi_clk),
        .I5(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31] [31]),
        .O(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7] [31]));
  LUT6 #(
    .INIT(64'hFFFFFFFF70007F00)) 
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_3 
       (.I0(hw_wd_cntr[0]),
        .I1(hw_wd_cntr[1]),
        .I2(type_of_burst_to_spi_clk),
        .I3(two_byte_xfer_to_spi_clk),
        .I4(p_3_in1_in),
        .I5(one_byte_xfer_to_spi_clk),
        .O(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_4 
       (.I0(two_byte_xfer_to_spi_clk),
        .I1(type_of_burst_to_spi_clk),
        .O(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCDC8DDDDCDC88888)) 
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[3]_i_1 
       (.I0(one_byte_xfer_to_spi_clk),
        .I1(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[15] [3]),
        .I2(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[7] ),
        .I3(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31] [3]),
        .I4(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_4_n_0 ),
        .I5(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31] [11]),
        .O(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7] [3]));
  LUT6 #(
    .INIT(64'hCDC8DDDDCDC88888)) 
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[4]_i_1 
       (.I0(one_byte_xfer_to_spi_clk),
        .I1(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[15] [4]),
        .I2(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[7] ),
        .I3(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31] [4]),
        .I4(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_4_n_0 ),
        .I5(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31] [12]),
        .O(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7] [4]));
  LUT6 #(
    .INIT(64'hCDC8DDDDCDC88888)) 
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[5]_i_1 
       (.I0(one_byte_xfer_to_spi_clk),
        .I1(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[15] [5]),
        .I2(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[7] ),
        .I3(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31] [5]),
        .I4(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_4_n_0 ),
        .I5(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31] [13]),
        .O(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7] [5]));
  LUT6 #(
    .INIT(64'hCDC8DDDDCDC88888)) 
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[6]_i_1 
       (.I0(one_byte_xfer_to_spi_clk),
        .I1(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[15] [6]),
        .I2(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[7] ),
        .I3(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31] [6]),
        .I4(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_4_n_0 ),
        .I5(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31] [14]),
        .O(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7] [6]));
  LUT6 #(
    .INIT(64'h000000005555CF5F)) 
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[7]_i_1 
       (.I0(p_3_in1_in),
        .I1(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[7] ),
        .I2(two_byte_xfer_to_spi_clk),
        .I3(type_of_burst_to_spi_clk),
        .I4(one_byte_xfer_to_spi_clk),
        .I5(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[7]_i_4_n_0 ),
        .O(SPIXfer_done_int_pulse_d2_reg[0]));
  LUT6 #(
    .INIT(64'hCDC8DDDDCDC88888)) 
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[7]_i_2 
       (.I0(one_byte_xfer_to_spi_clk),
        .I1(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[15] [7]),
        .I2(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[7] ),
        .I3(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31] [7]),
        .I4(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[31]_i_4_n_0 ),
        .I5(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31] [15]),
        .O(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7] [7]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h8FFF)) 
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[7]_i_4 
       (.I0(\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[0]_0 ),
        .I1(one_byte_xfer_to_spi_clk),
        .I2(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[1]_0 ),
        .I3(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[23] ),
        .O(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFAEAEAE)) 
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[8]_i_1 
       (.I0(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[8]_i_2_n_0 ),
        .I1(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31] [16]),
        .I2(two_byte_xfer_to_spi_clk),
        .I3(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[15]_i_3_n_0 ),
        .I4(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31] [8]),
        .I5(one_byte_xfer_to_spi_clk),
        .O(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7] [8]));
  LUT6 #(
    .INIT(64'hAAAAAAAA20AA0000)) 
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[8]_i_2 
       (.I0(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[15] [0]),
        .I1(hw_wd_cntr[1]),
        .I2(hw_wd_cntr[0]),
        .I3(type_of_burst_to_spi_clk),
        .I4(two_byte_xfer_to_spi_clk),
        .I5(one_byte_xfer_to_spi_clk),
        .O(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFAEAEAE)) 
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[9]_i_1 
       (.I0(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[9]_i_2_n_0 ),
        .I1(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31] [17]),
        .I2(two_byte_xfer_to_spi_clk),
        .I3(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[15]_i_3_n_0 ),
        .I4(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[31] [9]),
        .I5(one_byte_xfer_to_spi_clk),
        .O(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int_reg[7] [9]));
  LUT6 #(
    .INIT(64'hAAAAAAAA20AA0000)) 
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[9]_i_2 
       (.I0(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[15] [1]),
        .I1(hw_wd_cntr[1]),
        .I2(hw_wd_cntr[0]),
        .I3(type_of_burst_to_spi_clk),
        .I4(two_byte_xfer_to_spi_clk),
        .I5(one_byte_xfer_to_spi_clk),
        .O(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00002666)) 
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr[0]_i_1 
       (.I0(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[2]_2 ),
        .I1(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[1]_0 ),
        .I2(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[2]_1 ),
        .I3(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[2]_0 ),
        .I4(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr[2]_i_2_n_0 ),
        .O(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[0] ));
  LUT4 #(
    .INIT(16'h006A)) 
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr[1]_i_1 
       (.I0(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[2]_1 ),
        .I1(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[2]_2 ),
        .I2(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[1]_0 ),
        .I3(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr[2]_i_2_n_0 ),
        .O(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr[2]_i_1 
       (.I0(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[2]_0 ),
        .I1(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[2]_1 ),
        .I2(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[2]_2 ),
        .I3(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[1]_0 ),
        .I4(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr[2]_i_2_n_0 ),
        .O(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[2] ));
  LUT4 #(
    .INIT(16'hFFF6)) 
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr[2]_i_2 
       (.I0(\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_1_0 ),
        .I1(\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_2_0 ),
        .I2(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5] [0]),
        .I3(Rst_to_spi),
        .O(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000066666066)) 
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.hw_wd_cntr[0]_i_1 
       (.I0(hw_wd_cntr[0]),
        .I1(hw_wd_cntr0),
        .I2(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_0 ),
        .I3(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1 ),
        .I4(wrap_around_d1),
        .I5(load_axi_data_to_spi_clk),
        .O(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.hw_wd_cntr_reg[0] ));
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.hw_wd_cntr[1]_i_1 
       (.I0(hw_wd_cntr[1]),
        .I1(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[1]_0 ),
        .I2(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[23] ),
        .I3(hw_wd_cntr[0]),
        .I4(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.hw_wd_cntr[1]_i_2_n_0 ),
        .O(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.hw_wd_cntr_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h66666F66)) 
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.hw_wd_cntr[1]_i_2 
       (.I0(\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_1_0 ),
        .I1(\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_2_0 ),
        .I2(wrap_around_d1),
        .I3(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1 ),
        .I4(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_0 ),
        .O(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.hw_wd_cntr[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.receive_Data_int[7]_i_1 
       (.I0(\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_2_0 ),
        .I1(\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_1_0 ),
        .O(load_axi_data_to_spi_clk));
  LUT4 #(
    .INIT(16'h00F7)) 
    \RATIO_OF_2_GENERATE.Count[4]_i_2 
       (.I0(CPOL_to_spi_clk),
        .I1(CPHA_to_spi_clk),
        .I2(transfer_start_d2),
        .I3(\RATIO_OF_2_GENERATE.Count_reg[0] ),
        .O(\LOGIC_GENERATION_FDR.CPOL_SYNC_AXI2SPI_1_1 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \RATIO_OF_2_GENERATE.SCK_O_NQ_4_STARTUP_USED.SCK_O_reg_i_1 
       (.I0(CPOL_to_spi_clk),
        .I1(\RATIO_OF_2_GENERATE.SCK_O_NQ_4_STARTUP_USED.SCK_O_reg_reg ),
        .I2(sck_o_int),
        .I3(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5] [0]),
        .I4(Rst_to_spi),
        .O(\LOGIC_GENERATION_FDR.CPOL_SYNC_AXI2SPI_1_2 ));
  LUT6 #(
    .INIT(64'hFFEBFFFFFFFFFFEB)) 
    \RATIO_OF_2_GENERATE.SS_O_24_BIT_ADDR_GEN.SS_O[0]_i_1 
       (.I0(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_0 ),
        .I1(hpm_under_process_d1),
        .I2(SS_to_spi_clk),
        .I3(Rst_to_spi),
        .I4(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1 ),
        .I5(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2 ),
        .O(\SR_5_TX_EMPTY_24_BIT_ADDR_GEN.SR_5_Tx_Empty_reg ));
  LUT6 #(
    .INIT(64'h000000006666666F)) 
    \RATIO_OF_2_GENERATE.sck_o_int_i_1 
       (.I0(CPOL_to_spi_clk),
        .I1(CPHA_to_spi_clk),
        .I2(SPIXfer_done_int),
        .I3(\RATIO_OF_2_GENERATE.sck_o_int_reg ),
        .I4(load_axi_data_to_spi_clk),
        .I5(\RATIO_OF_2_GENERATE.sck_o_int_i_2_n_0 ),
        .O(\LOGIC_GENERATION_FDR.CPOL_SYNC_AXI2SPI_1_0 ));
  LUT6 #(
    .INIT(64'hFBFBFFFBFBFBFBFF)) 
    \RATIO_OF_2_GENERATE.sck_o_int_i_2 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[4]_0 ),
        .I1(\RATIO_OF_2_GENERATE.sck_o_int_reg_0 ),
        .I2(Rst_to_spi),
        .I3(\RATIO_OF_2_GENERATE.SCK_O_NQ_4_STARTUP_USED.SCK_O_reg_reg ),
        .I4(Sync_Set),
        .I5(sck_o_int),
        .O(\RATIO_OF_2_GENERATE.sck_o_int_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6666666660606066)) 
    \RATIO_OF_2_GENERATE.sck_o_int_i_3 
       (.I0(CPHA_to_spi_clk),
        .I1(CPOL_to_spi_clk),
        .I2(load_axi_data_to_spi_clk),
        .I3(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[0] [0]),
        .I4(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[0] [1]),
        .I5(SPIXfer_done_int),
        .O(Sync_Set));
  LUT5 #(
    .INIT(32'hDDF0F0DD)) 
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[0]_i_1 
       (.I0(wrap_around_reg_5),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0] ),
        .I2(Transmit_Addr_to_spi_clk[0]),
        .I3(\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_2_0 ),
        .I4(\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_1_0 ),
        .O(wrap_around_reg_3));
  LUT6 #(
    .INIT(64'hAAF0CCCCCCCCAAF0)) 
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[10]_i_1 
       (.I0(data2[6]),
        .I1(Transmit_Addr_to_spi_clk[10]),
        .I2(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[10] ),
        .I3(wrap_around_reg_5),
        .I4(\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_1_0 ),
        .I5(\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_2_0 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[10] ));
  LUT6 #(
    .INIT(64'hAAF0CCCCCCCCAAF0)) 
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[11]_i_1 
       (.I0(data2[7]),
        .I1(Transmit_Addr_to_spi_clk[11]),
        .I2(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[11] ),
        .I3(wrap_around_reg_5),
        .I4(\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_1_0 ),
        .I5(\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_2_0 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[11] ));
  LUT6 #(
    .INIT(64'hAAF0CCCCCCCCAAF0)) 
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[12]_i_1 
       (.I0(data2[8]),
        .I1(Transmit_Addr_to_spi_clk[12]),
        .I2(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[12] ),
        .I3(wrap_around_reg_5),
        .I4(\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_1_0 ),
        .I5(\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_2_0 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[12] ));
  LUT6 #(
    .INIT(64'hAAF0CCCCCCCCAAF0)) 
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[13]_i_1 
       (.I0(data2[9]),
        .I1(Transmit_Addr_to_spi_clk[13]),
        .I2(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[13] ),
        .I3(wrap_around_reg_5),
        .I4(\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_1_0 ),
        .I5(\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_2_0 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[13] ));
  LUT6 #(
    .INIT(64'hAAF0CCCCCCCCAAF0)) 
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[14]_i_1 
       (.I0(data2[10]),
        .I1(Transmit_Addr_to_spi_clk[14]),
        .I2(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[14] ),
        .I3(wrap_around_reg_5),
        .I4(\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_1_0 ),
        .I5(\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_2_0 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[14] ));
  LUT6 #(
    .INIT(64'hAAF0CCCCCCCCAAF0)) 
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[15]_i_1 
       (.I0(data2[11]),
        .I1(Transmit_Addr_to_spi_clk[15]),
        .I2(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[15] ),
        .I3(wrap_around_reg_5),
        .I4(\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_1_0 ),
        .I5(\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_2_0 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[15] ));
  LUT6 #(
    .INIT(64'hAAF0CCCCCCCCAAF0)) 
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[16]_i_1 
       (.I0(data2[12]),
        .I1(Transmit_Addr_to_spi_clk[16]),
        .I2(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[16]_0 ),
        .I3(wrap_around_reg_5),
        .I4(\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_1_0 ),
        .I5(\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_2_0 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[16] ));
  LUT6 #(
    .INIT(64'hAAF0CCCCCCCCAAF0)) 
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[17]_i_1 
       (.I0(data2[13]),
        .I1(Transmit_Addr_to_spi_clk[17]),
        .I2(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[17]_0 ),
        .I3(wrap_around_reg_5),
        .I4(\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_1_0 ),
        .I5(\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_2_0 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[17] ));
  LUT6 #(
    .INIT(64'hAAF0CCCCCCCCAAF0)) 
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[18]_i_1 
       (.I0(data2[14]),
        .I1(Transmit_Addr_to_spi_clk[18]),
        .I2(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[18]_0 ),
        .I3(wrap_around_reg_5),
        .I4(\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_1_0 ),
        .I5(\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_2_0 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[18] ));
  LUT6 #(
    .INIT(64'hAAF0CCCCCCCCAAF0)) 
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[19]_i_1 
       (.I0(data2[15]),
        .I1(Transmit_Addr_to_spi_clk[19]),
        .I2(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[19]_0 ),
        .I3(wrap_around_reg_5),
        .I4(\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_1_0 ),
        .I5(\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_2_0 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[19] ));
  LUT5 #(
    .INIT(32'hDDF0F0DD)) 
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[1]_i_1 
       (.I0(wrap_around_reg_5),
        .I1(p_8_in),
        .I2(Transmit_Addr_to_spi_clk[1]),
        .I3(\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_2_0 ),
        .I4(\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_1_0 ),
        .O(wrap_around_reg_2));
  LUT6 #(
    .INIT(64'hAAF0CCCCCCCCAAF0)) 
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[20]_i_1 
       (.I0(data2[16]),
        .I1(Transmit_Addr_to_spi_clk[20]),
        .I2(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[20]_0 ),
        .I3(wrap_around_reg_5),
        .I4(\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_1_0 ),
        .I5(\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_2_0 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20] ));
  LUT6 #(
    .INIT(64'hAAF0CCCCCCCCAAF0)) 
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[21]_i_1 
       (.I0(data2[17]),
        .I1(Transmit_Addr_to_spi_clk[21]),
        .I2(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[21]_0 ),
        .I3(wrap_around_reg_5),
        .I4(\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_1_0 ),
        .I5(\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_2_0 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[21] ));
  LUT6 #(
    .INIT(64'hAAF0CCCCCCCCAAF0)) 
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[22]_i_1 
       (.I0(data2[18]),
        .I1(Transmit_Addr_to_spi_clk[22]),
        .I2(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[22]_0 ),
        .I3(wrap_around_reg_5),
        .I4(\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_1_0 ),
        .I5(\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_2_0 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[22] ));
  LUT6 #(
    .INIT(64'hAAF0CCCCCCCCAAF0)) 
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[23]_i_1 
       (.I0(data2[19]),
        .I1(Transmit_Addr_to_spi_clk[23]),
        .I2(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[23]_0 ),
        .I3(wrap_around_reg_5),
        .I4(\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_1_0 ),
        .I5(\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_2_0 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23] ));
  LUT6 #(
    .INIT(64'hEFFEEFFEEFFEFFFF)) 
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[24]_i_1 
       (.I0(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[24] ),
        .I1(wrap_around_reg_5),
        .I2(\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_1_0 ),
        .I3(\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_2_0 ),
        .I4(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[0] [1]),
        .I5(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[0] [0]),
        .O(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[16] ));
  LUT6 #(
    .INIT(64'hEFFEEFFEEFFEFFFF)) 
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[25]_i_1 
       (.I0(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[25] ),
        .I1(wrap_around_reg_5),
        .I2(\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_1_0 ),
        .I3(\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_2_0 ),
        .I4(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[0] [1]),
        .I5(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[0] [0]),
        .O(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[17] ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0082)) 
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[26]_i_1 
       (.I0(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[26] ),
        .I1(\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_2_0 ),
        .I2(\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_1_0 ),
        .I3(wrap_around_reg_5),
        .O(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[18] ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hFFBE)) 
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[27]_i_1 
       (.I0(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[27] ),
        .I1(\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_2_0 ),
        .I2(\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_1_0 ),
        .I3(wrap_around_reg_5),
        .O(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[19] ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0082)) 
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[28]_i_1 
       (.I0(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[28] ),
        .I1(\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_2_0 ),
        .I2(\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_1_0 ),
        .I3(wrap_around_reg_5),
        .O(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[20] ));
  LUT6 #(
    .INIT(64'hEFFEEFFEEFFEFFFF)) 
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[29]_i_1 
       (.I0(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[29] ),
        .I1(wrap_around_reg_5),
        .I2(\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_1_0 ),
        .I3(\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_2_0 ),
        .I4(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[0] [1]),
        .I5(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[0] [0]),
        .O(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[21] ));
  LUT5 #(
    .INIT(32'hDDF0F0DD)) 
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[2]_i_1 
       (.I0(wrap_around_reg_5),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[2] ),
        .I2(Transmit_Addr_to_spi_clk[2]),
        .I3(\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_2_0 ),
        .I4(\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_1_0 ),
        .O(wrap_around_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hFFBE)) 
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[30]_i_2 
       (.I0(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[30] ),
        .I1(\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_2_0 ),
        .I2(\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_1_0 ),
        .I3(wrap_around_reg_5),
        .O(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[22] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFEFEFF)) 
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[31]_i_1 
       (.I0(wrap_around_reg_5),
        .I1(Rst_to_spi),
        .I2(load_axi_data_to_spi_clk),
        .I3(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[0] [0]),
        .I4(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[0] [1]),
        .I5(SPIXfer_done_int),
        .O(Tx_Data_d1));
  LUT6 #(
    .INIT(64'hEFFEEFFEEFFEFFFF)) 
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[31]_i_2 
       (.I0(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[31] ),
        .I1(wrap_around_reg_5),
        .I2(\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_1_0 ),
        .I3(\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_2_0 ),
        .I4(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[0] [1]),
        .I5(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[0] [0]),
        .O(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[23] ));
  LUT5 #(
    .INIT(32'hBFFBB00B)) 
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[3]_i_1 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3]_0 ),
        .I1(wrap_around_reg_5),
        .I2(\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_1_0 ),
        .I3(\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_2_0 ),
        .I4(Transmit_Addr_to_spi_clk[3]),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3] ));
  LUT5 #(
    .INIT(32'hBFFBB00B)) 
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[4]_i_1 
       (.I0(data2[0]),
        .I1(wrap_around_reg_5),
        .I2(\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_1_0 ),
        .I3(\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_2_0 ),
        .I4(Transmit_Addr_to_spi_clk[4]),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[4] ));
  LUT5 #(
    .INIT(32'hBFFBB00B)) 
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[5]_i_1 
       (.I0(data2[1]),
        .I1(wrap_around_reg_5),
        .I2(\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_1_0 ),
        .I3(\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_2_0 ),
        .I4(Transmit_Addr_to_spi_clk[5]),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[5] ));
  LUT5 #(
    .INIT(32'hDDF0F0DD)) 
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[6]_i_1 
       (.I0(wrap_around_reg_5),
        .I1(data2[2]),
        .I2(Transmit_Addr_to_spi_clk[6]),
        .I3(\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_2_0 ),
        .I4(\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_1_0 ),
        .O(wrap_around_reg_0));
  LUT5 #(
    .INIT(32'hDDF0F0DD)) 
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[7]_i_1 
       (.I0(wrap_around_reg_5),
        .I1(data2[3]),
        .I2(Transmit_Addr_to_spi_clk[7]),
        .I3(\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_2_0 ),
        .I4(\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_1_0 ),
        .O(wrap_around_reg));
  LUT6 #(
    .INIT(64'hAAF0CCCCCCCCAAF0)) 
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[8]_i_1 
       (.I0(data2[4]),
        .I1(Transmit_Addr_to_spi_clk[8]),
        .I2(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[8] ),
        .I3(wrap_around_reg_5),
        .I4(\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_1_0 ),
        .I5(\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_2_0 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8] ));
  LUT6 #(
    .INIT(64'hAAF0CCCCCCCCAAF0)) 
    \SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1[9]_i_1 
       (.I0(data2[5]),
        .I1(Transmit_Addr_to_spi_clk[9]),
        .I2(\SHIFT_TX_REG_24_BIT_GEN.Tx_Data_d1_reg[9] ),
        .I3(wrap_around_reg_5),
        .I4(\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_1_0 ),
        .I5(\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_2_0 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9] ));
  LUT6 #(
    .INIT(64'hB888FFFF8BBB0000)) 
    \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[0]_i_1 
       (.I0(Transmit_Addr_to_spi_clk[0]),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0 ),
        .I2(\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[0]_i_2_n_0 ),
        .I3(\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[0] ),
        .I4(\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[0]_i_4_n_0 ),
        .I5(\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[0]_0 ),
        .O(\LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[0].TRANS_ADDR_SYNC_AXI2SPI_CDC_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[0]_i_2 
       (.I0(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[1]_0 ),
        .I1(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[23] ),
        .I2(type_of_burst_to_spi_clk),
        .O(\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF7000F000)) 
    \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[0]_i_4 
       (.I0(size_length_cntr[1]),
        .I1(size_length_cntr[0]),
        .I2(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.cmd_addr_cntr_reg[1]_0 ),
        .I3(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[23] ),
        .I4(type_of_burst_to_spi_clk),
        .I5(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0 ),
        .O(\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEB28FFFFEB280000)) 
    \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[1]_i_1 
       (.I0(Transmit_Addr_to_spi_clk[1]),
        .I1(\LOGIC_GENERATION_FDR.LD_CMD_SYNC_AXI2SPI_2_0 ),
        .I2(\LOGIC_GENERATION_FDR.LD_CMD_SYNC_AXI2SPI_1_0 ),
        .I3(\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[1]_i_2_n_0 ),
        .I4(\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[1]_i_3_n_0 ),
        .I5(p_3_in1_in),
        .O(\LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[1].TRANS_ADDR_SYNC_AXI2SPI_CDC_1 ));
  LUT6 #(
    .INIT(64'h44777744447F7F44)) 
    \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[1]_i_2 
       (.I0(\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[1]_i_4_n_0 ),
        .I1(\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[0]_i_2_n_0 ),
        .I2(\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[0] ),
        .I3(p_3_in1_in),
        .I4(\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[0]_0 ),
        .I5(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_9_n_0 ),
        .O(\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF76FFFFFF00FF00)) 
    \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[1]_i_3 
       (.I0(size_length_cntr[0]),
        .I1(size_length_cntr[1]),
        .I2(\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[1]_i_5_n_0 ),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0 ),
        .I4(type_of_burst_to_spi_clk),
        .I5(hw_wd_cntr0),
        .O(\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5455ABBB4444BBBB)) 
    \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[1]_i_4 
       (.I0(size_length_cntr[1]),
        .I1(size_length_cntr[0]),
        .I2(\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i_reg[0]_0 ),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_9_n_0 ),
        .I4(p_3_in1_in),
        .I5(\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[1]_i_5_n_0 ),
        .O(\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFFFBFFFF)) 
    \SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[1]_i_5 
       (.I0(axi_length_to_spi_clk[1]),
        .I1(type_of_burst_to_spi_clk),
        .I2(axi_length_to_spi_clk[3]),
        .I3(axi_length_to_spi_clk[2]),
        .I4(axi_length_to_spi_clk[0]),
        .O(\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFAAAA0020AAAA)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[0]_i_1 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[0]_i_2_n_0 ),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0]_0 ),
        .I2(type_of_burst_to_spi_clk),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0]_1 ),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_5_n_0 ),
        .I5(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0] ),
        .O(\LOGIC_GENERATION_FDR.TYP_OF_XFER_SYNC_AXI2SPI_1_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8B888B8B8)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[0]_i_2 
       (.I0(Transmit_Addr_to_spi_clk[0]),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0 ),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[0]_i_4_n_0 ),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_0 [0]),
        .I4(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1 ),
        .I5(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF0F0E40F)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[0]_i_4 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_9_n_0 ),
        .I1(O[0]),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0] ),
        .I3(\size_length_cntr_fixed_reg[0] ),
        .I4(\size_length_cntr_fixed_reg[1]_1 ),
        .I5(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[4]_0 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF200020)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[10]_i_1 
       (.I0(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1 ),
        .I1(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2 ),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_0 [10]),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0 ),
        .I4(Transmit_Addr_to_spi_clk[10]),
        .I5(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[10]_i_2_n_0 ),
        .O(wrap_around_d2_reg_3));
  LUT6 #(
    .INIT(64'hFF000000EA00EA00)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[10]_i_2 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[10]_0 ),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[12]_0 [1]),
        .I2(\size_length_cntr_fixed_reg[1]_1 ),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_5_n_0 ),
        .I4(data2[6]),
        .I5(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_9_n_0 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAEAAAAAAAEAA)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[11]_i_1 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[11]_i_2_n_0 ),
        .I1(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1 ),
        .I2(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2 ),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_0 [11]),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0 ),
        .I5(Transmit_Addr_to_spi_clk[11]),
        .O(wrap_around_d2_reg_4));
  LUT6 #(
    .INIT(64'hFF000000EA00EA00)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[11]_i_2 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[11]_0 ),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[12]_0 [2]),
        .I2(\size_length_cntr_fixed_reg[1]_1 ),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_5_n_0 ),
        .I4(data2[7]),
        .I5(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_9_n_0 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAEAAAAAAAEAA)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[12]_i_1 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[12]_i_2_n_0 ),
        .I1(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1 ),
        .I2(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2 ),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_0 [12]),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0 ),
        .I5(Transmit_Addr_to_spi_clk[12]),
        .O(wrap_around_d2_reg_5));
  LUT6 #(
    .INIT(64'hC8C8C8C8C8080808)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[12]_i_2 
       (.I0(data2[8]),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_5_n_0 ),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_4_n_0 ),
        .I3(\size_length_cntr_fixed_reg[1]_1 ),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[12]_0 [3]),
        .I5(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[12]_1 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFB000000FB00)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[13]_i_1 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_0 [13]),
        .I1(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1 ),
        .I2(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2 ),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[13]_i_2_n_0 ),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0 ),
        .I5(Transmit_Addr_to_spi_clk[13]),
        .O(\spi_addr_wrap_1_reg[13] ));
  LUT5 #(
    .INIT(32'h5C5CFF5C)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[13]_i_2 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[13]_0 ),
        .I1(data2[9]),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_4_n_0 ),
        .I3(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1 ),
        .I4(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFB000000FB00)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[14]_i_1 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_0 [14]),
        .I1(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1 ),
        .I2(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2 ),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[14]_i_2_n_0 ),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0 ),
        .I5(Transmit_Addr_to_spi_clk[14]),
        .O(\spi_addr_wrap_1_reg[14] ));
  LUT5 #(
    .INIT(32'h5C5CFF5C)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[14]_i_2 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[14]_0 ),
        .I1(data2[10]),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_4_n_0 ),
        .I3(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1 ),
        .I4(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFB000000FB00)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[15]_i_1 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_0 [15]),
        .I1(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1 ),
        .I2(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2 ),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[15]_i_2_n_0 ),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0 ),
        .I5(Transmit_Addr_to_spi_clk[15]),
        .O(\spi_addr_wrap_1_reg[15] ));
  LUT5 #(
    .INIT(32'h5C5CFF5C)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[15]_i_2 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[15]_0 ),
        .I1(data2[11]),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_4_n_0 ),
        .I3(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1 ),
        .I4(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFB000000FB00)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[16]_i_1 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_0 [16]),
        .I1(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1 ),
        .I2(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2 ),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[16]_i_2_n_0 ),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0 ),
        .I5(Transmit_Addr_to_spi_clk[16]),
        .O(\spi_addr_wrap_1_reg[16] ));
  LUT5 #(
    .INIT(32'h5C5CFF5C)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[16]_i_2 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[16]_0 ),
        .I1(data2[12]),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_4_n_0 ),
        .I3(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1 ),
        .I4(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFB000000FB00)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[17]_i_1 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_0 [17]),
        .I1(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1 ),
        .I2(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2 ),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[17]_i_2_n_0 ),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0 ),
        .I5(Transmit_Addr_to_spi_clk[17]),
        .O(\spi_addr_wrap_1_reg[17] ));
  LUT5 #(
    .INIT(32'h5C5CFF5C)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[17]_i_2 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[17]_0 ),
        .I1(data2[13]),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_4_n_0 ),
        .I3(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1 ),
        .I4(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFB000000FB00)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[18]_i_1 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_0 [18]),
        .I1(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1 ),
        .I2(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2 ),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[18]_i_2_n_0 ),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0 ),
        .I5(Transmit_Addr_to_spi_clk[18]),
        .O(\spi_addr_wrap_1_reg[18] ));
  LUT5 #(
    .INIT(32'h5C5CFF5C)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[18]_i_2 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[18]_0 ),
        .I1(data2[14]),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_4_n_0 ),
        .I3(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1 ),
        .I4(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFB000000FB00)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[19]_i_1 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_0 [19]),
        .I1(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1 ),
        .I2(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2 ),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[19]_i_2_n_0 ),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0 ),
        .I5(Transmit_Addr_to_spi_clk[19]),
        .O(\spi_addr_wrap_1_reg[19] ));
  LUT5 #(
    .INIT(32'h5C5CFF5C)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[19]_i_2 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[19]_0 ),
        .I1(data2[15]),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_4_n_0 ),
        .I3(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1 ),
        .I4(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_1 
       (.I0(Transmit_Addr_to_spi_clk[1]),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0 ),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_2_n_0 ),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_3_n_0 ),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_4_n_0 ),
        .I5(p_8_in),
        .O(\LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[1].TRANS_ADDR_SYNC_AXI2SPI_CDC_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000EEEFEEEF)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_2 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_5_n_0 ),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_6_n_0 ),
        .I2(wrap_around_reg_8),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_8_n_0 ),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_0 [1]),
        .I5(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[4]_0 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0444)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_3 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0]_0 ),
        .I1(type_of_burst_to_spi_clk),
        .I2(\size_length_cntr_fixed_reg[0] ),
        .I3(\size_length_cntr_fixed_reg[1]_1 ),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[4]_0 ),
        .I5(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_4 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[4]_0 ),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0 ),
        .I2(\size_length_cntr_fixed_reg[0] ),
        .I3(\size_length_cntr_fixed_reg[1]_1 ),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_8_n_0 ),
        .I5(axi_length_to_spi_clk[1]),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_5 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_0 [0]),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_9_n_0 ),
        .I2(p_8_in),
        .I3(\size_length_cntr_fixed_reg[1]_1 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h002E0000)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_6 
       (.I0(O[1]),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_9_n_0 ),
        .I2(p_8_in),
        .I3(\size_length_cntr_fixed_reg[1]_1 ),
        .I4(\size_length_cntr_fixed_reg[0] ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hA353A353A35300F3)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_8 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0] ),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_1 [0]),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_9_n_0 ),
        .I3(p_8_in),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_8_n_0 ),
        .I5(axi_length_to_spi_clk[1]),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFB000000FB00)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[20]_i_1 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_0 [20]),
        .I1(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1 ),
        .I2(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2 ),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[20]_i_2_n_0 ),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0 ),
        .I5(Transmit_Addr_to_spi_clk[20]),
        .O(\spi_addr_wrap_1_reg[20] ));
  LUT5 #(
    .INIT(32'h5C5CFF5C)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[20]_i_2 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[20]_0 ),
        .I1(data2[16]),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_4_n_0 ),
        .I3(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1 ),
        .I4(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFB000000FB00)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[21]_i_1 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_0 [21]),
        .I1(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1 ),
        .I2(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2 ),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[21]_i_2_n_0 ),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0 ),
        .I5(Transmit_Addr_to_spi_clk[21]),
        .O(\spi_addr_wrap_1_reg[21] ));
  LUT5 #(
    .INIT(32'h5C5CFF5C)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[21]_i_2 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[21]_0 ),
        .I1(data2[17]),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_4_n_0 ),
        .I3(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1 ),
        .I4(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAA8A0000AA8A)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[22]_i_1 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[22]_i_2_n_0 ),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_0 [22]),
        .I2(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1 ),
        .I3(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2 ),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0 ),
        .I5(Transmit_Addr_to_spi_clk[22]),
        .O(\spi_addr_wrap_1_reg[22] ));
  LUT6 #(
    .INIT(64'hFFFFCFCCEFEEEFEE)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[22]_i_2 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[22]_0 ),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0 ),
        .I2(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2 ),
        .I3(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1 ),
        .I4(data2[18]),
        .I5(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_9_n_0 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00700000FFFFFFFF)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_1 
       (.I0(\size_length_cntr_fixed_reg[1]_1 ),
        .I1(\size_length_cntr_fixed_reg[0] ),
        .I2(type_of_burst_to_spi_clk),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0]_0 ),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_4_n_0 ),
        .I5(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_5_n_0 ),
        .O(\size_length_cntr_fixed_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hAAAAAA8A0000AA8A)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_2 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_6_n_0 ),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_0 [23]),
        .I2(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1 ),
        .I3(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2 ),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0 ),
        .I5(Transmit_Addr_to_spi_clk[23]),
        .O(\spi_addr_wrap_1_reg[23] ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h75FFFDFF)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_4 
       (.I0(axi_length_to_spi_clk[0]),
        .I1(axi_length_to_spi_clk[2]),
        .I2(axi_length_to_spi_clk[3]),
        .I3(type_of_burst_to_spi_clk),
        .I4(axi_length_to_spi_clk[1]),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h9099)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_5 
       (.I0(\LOGIC_GENERATION_FDR.LD_CMD_SYNC_AXI2SPI_1_0 ),
        .I1(\LOGIC_GENERATION_FDR.LD_CMD_SYNC_AXI2SPI_2_0 ),
        .I2(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2 ),
        .I3(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFCFCCEFEEEFEE)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_6 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_1 ),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0 ),
        .I2(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2 ),
        .I3(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1 ),
        .I4(data2[19]),
        .I5(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_9_n_0 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7 
       (.I0(\LOGIC_GENERATION_FDR.LD_CMD_SYNC_AXI2SPI_2_0 ),
        .I1(\LOGIC_GENERATION_FDR.LD_CMD_SYNC_AXI2SPI_1_0 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h880C0000)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_9 
       (.I0(axi_length_to_spi_clk[1]),
        .I1(type_of_burst_to_spi_clk),
        .I2(axi_length_to_spi_clk[3]),
        .I3(axi_length_to_spi_clk[2]),
        .I4(axi_length_to_spi_clk[0]),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAACCCFAAAACCC0)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_1 
       (.I0(Transmit_Addr_to_spi_clk[2]),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_2_n_0 ),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_3_n_0 ),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[4]_0 ),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0 ),
        .I5(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[2] ),
        .O(\LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[2].TRANS_ADDR_SYNC_AXI2SPI_CDC_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFFEFFFE)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_2 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_4_n_0 ),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_5_n_0 ),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_6_n_0 ),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_7_n_0 ),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_0 [2]),
        .I5(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[4]_0 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00003F3800000000)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_3 
       (.I0(axi_length_to_spi_clk[1]),
        .I1(\size_length_cntr_fixed_reg[0] ),
        .I2(\size_length_cntr_fixed_reg[1]_1 ),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_8_n_0 ),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0]_0 ),
        .I5(type_of_burst_to_spi_clk),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hC404)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_4 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[2] ),
        .I1(\size_length_cntr_fixed_reg[1]_1 ),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_4_n_0 ),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_0 [1]),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_5 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[2] ),
        .I1(axi_length_to_spi_clk[0]),
        .I2(axi_length_to_spi_clk[2]),
        .I3(axi_length_to_spi_clk[3]),
        .I4(type_of_burst_to_spi_clk),
        .I5(wrap_around_reg_8),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0090009000F00000)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_6 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[2] ),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_2_1 ),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_8_n_0 ),
        .I3(wrap_around_reg_8),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_1 [1]),
        .I5(wrap_around_i_6_n_0),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h28AA2820A0AAA020)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_7 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_2_0 ),
        .I1(\SPI_24_BIT_ADDRESS_REG_GEN.spi_addr_i[1]_i_5_n_0 ),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[2] ),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_9_n_0 ),
        .I4(O[2]),
        .I5(p_8_in),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF444FFFFF4440000)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_1 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_2_n_0 ),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_3_n_0 ),
        .I2(Transmit_Addr_to_spi_clk[3]),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0 ),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_4_n_0 ),
        .I5(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3]_0 ),
        .O(\LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[3].TRANS_ADDR_SYNC_AXI2SPI_CDC_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_10 
       (.I0(axi_length_to_spi_clk[3]),
        .I1(axi_length_to_spi_clk[0]),
        .I2(axi_length_to_spi_clk[2]),
        .I3(axi_length_to_spi_clk[1]),
        .I4(type_of_burst_to_spi_clk),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h66666F66)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_2 
       (.I0(\LOGIC_GENERATION_FDR.LD_CMD_SYNC_AXI2SPI_1_0 ),
        .I1(\LOGIC_GENERATION_FDR.LD_CMD_SYNC_AXI2SPI_2_0 ),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_0 [3]),
        .I3(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1 ),
        .I4(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF001BFF1B)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_3 
       (.I0(\size_length_cntr_fixed_reg[0] ),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_5_n_0 ),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_6_n_0 ),
        .I3(\size_length_cntr_fixed_reg[1]_1 ),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_7_n_0 ),
        .I5(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[4]_0 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h11004544FFFFFFFF)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_4 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_8_n_0 ),
        .I1(\size_length_cntr_fixed_reg[1]_1 ),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_7_n_0 ),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_8_n_0 ),
        .I4(\size_length_cntr_fixed_reg[0] ),
        .I5(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_5_n_0 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hDD0DEE0E0000EE0E)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_5 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_3_0 ),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_10_n_0 ),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_1 [2]),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_9_n_0 ),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3]_0 ),
        .I5(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_11_n_0 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h88000F0077770FFF)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_6 
       (.I0(p_8_in),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[2] ),
        .I2(O[3]),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_8_n_0 ),
        .I4(wrap_around_i_6_n_0),
        .I5(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3]_0 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF70404F7C40407F7)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_7 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_0 [2]),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_8_n_0 ),
        .I2(wrap_around_i_6_n_0),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[2] ),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3]_0 ),
        .I5(axi_length_to_spi_clk[1]),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0100FFFF)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_8 
       (.I0(axi_length_to_spi_clk[1]),
        .I1(axi_length_to_spi_clk[3]),
        .I2(axi_length_to_spi_clk[2]),
        .I3(axi_length_to_spi_clk[0]),
        .I4(type_of_burst_to_spi_clk),
        .I5(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0]_0 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEAAAFEEEEAAA0)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_1 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_n_0 ),
        .I1(Transmit_Addr_to_spi_clk[4]),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_3_n_0 ),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[4]_0 ),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0 ),
        .I5(data2[0]),
        .O(\LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[4].TRANS_ADDR_SYNC_AXI2SPI_CDC_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_10 
       (.I0(axi_length_to_spi_clk[0]),
        .I1(axi_length_to_spi_clk[2]),
        .I2(axi_length_to_spi_clk[1]),
        .I3(type_of_burst_to_spi_clk),
        .I4(axi_length_to_spi_clk[3]),
        .I5(data2[0]),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hF77777777FFFFFFF)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_11 
       (.I0(wrap_around_i_6_n_0),
        .I1(axi_length_to_spi_clk[3]),
        .I2(p_8_in),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3]_0 ),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[2] ),
        .I5(data2[0]),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h444444444F444444)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_12 
       (.I0(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2 ),
        .I1(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1 ),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_8_n_0 ),
        .I3(data2[0]),
        .I4(\size_length_cntr_fixed_reg[0] ),
        .I5(\size_length_cntr_fixed_reg[1]_1 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FEFE00FE)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_4_n_0 ),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_5_n_0 ),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_6_n_0 ),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[4]_0 ),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_0 [4]),
        .I5(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000037260000)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_3 
       (.I0(\size_length_cntr_fixed_reg[1]_1 ),
        .I1(\size_length_cntr_fixed_reg[0] ),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_7_n_0 ),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_7_n_0 ),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_8_n_0 ),
        .I5(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_8_n_0 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8088808088888888)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_4 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_8_n_0 ),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[2]_i_2_0 ),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_10_n_0 ),
        .I3(wrap_around_i_6_n_0),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_2 ),
        .I5(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_11_n_0 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF10111000)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_5 
       (.I0(\size_length_cntr_fixed_reg[0] ),
        .I1(\size_length_cntr_fixed_reg[1]_1 ),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_1 [3]),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_4_n_0 ),
        .I4(data2[0]),
        .I5(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_12_n_0 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h88A888082AA82A08)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_6 
       (.I0(\size_length_cntr_fixed_reg[1]_1 ),
        .I1(data2[0]),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_8_n_0 ),
        .I3(wrap_around_i_6_n_0),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_0 [3]),
        .I5(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_2_3 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_7 
       (.I0(axi_length_to_spi_clk[3]),
        .I1(type_of_burst_to_spi_clk),
        .I2(axi_length_to_spi_clk[1]),
        .I3(axi_length_to_spi_clk[2]),
        .I4(axi_length_to_spi_clk[0]),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFF7FFFF)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_8 
       (.I0(SPIXfer_done_int),
        .I1(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[23] ),
        .I2(size_length_cntr[1]),
        .I3(size_length_cntr[0]),
        .I4(type_of_burst_to_spi_clk),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h8F88FFFF8F880000)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_1 
       (.I0(Transmit_Addr_to_spi_clk[5]),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0 ),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_2_n_0 ),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_3_n_0 ),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_4_n_0 ),
        .I5(data2[1]),
        .O(\LOGIC_GENERATION_FDR.TRANS_ADDR_SYNC_GEN[5].TRANS_ADDR_SYNC_AXI2SPI_CDC_0 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_10 
       (.I0(\size_length_cntr_fixed_reg[1]_1 ),
        .I1(type_of_burst_to_spi_clk),
        .I2(axi_length_to_spi_clk[1]),
        .I3(axi_length_to_spi_clk[2]),
        .I4(axi_length_to_spi_clk[0]),
        .I5(axi_length_to_spi_clk[3]),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFFFF5DFF)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_11 
       (.I0(axi_length_to_spi_clk[0]),
        .I1(axi_length_to_spi_clk[2]),
        .I2(axi_length_to_spi_clk[1]),
        .I3(type_of_burst_to_spi_clk),
        .I4(axi_length_to_spi_clk[3]),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h66666F66)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_2 
       (.I0(\LOGIC_GENERATION_FDR.LD_CMD_SYNC_AXI2SPI_1_0 ),
        .I1(\LOGIC_GENERATION_FDR.LD_CMD_SYNC_AXI2SPI_2_0 ),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_0 [5]),
        .I3(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1 ),
        .I4(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF7500)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_3 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_5_n_0 ),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[5]_0 ),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_7_n_0 ),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_8_n_0 ),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_9_n_0 ),
        .I5(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[4]_0 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00100000FFFFFFFF)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_4 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_10_n_0 ),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0]_0 ),
        .I2(type_of_burst_to_spi_clk),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0]_1 ),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_11_n_0 ),
        .I5(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_5_n_0 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5515FFBFFFFFFFFF)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_5 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_7_n_0 ),
        .I1(axi_length_to_spi_clk[3]),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_3_0 ),
        .I3(data2[1]),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8]_0 [0]),
        .I5(\size_length_cntr_fixed_reg[1]_1 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_7 
       (.I0(axi_length_to_spi_clk[0]),
        .I1(axi_length_to_spi_clk[2]),
        .I2(axi_length_to_spi_clk[1]),
        .I3(type_of_burst_to_spi_clk),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hFDFF)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_8 
       (.I0(axi_length_to_spi_clk[0]),
        .I1(axi_length_to_spi_clk[2]),
        .I2(axi_length_to_spi_clk[3]),
        .I3(type_of_burst_to_spi_clk),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0080AAAA8080AAAA)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_9 
       (.I0(data2[1]),
        .I1(wrap_around_i_6_n_0),
        .I2(axi_length_to_spi_clk[3]),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_3_0 ),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_11_n_0 ),
        .I5(\size_length_cntr_fixed_reg[1]_1 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAEAAAAAAAEAA)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[6]_i_1 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[6]_i_2_n_0 ),
        .I1(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1 ),
        .I2(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2 ),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_0 [6]),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0 ),
        .I5(Transmit_Addr_to_spi_clk[6]),
        .O(wrap_around_d2_reg));
  LUT6 #(
    .INIT(64'hFF000000EA00EA00)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[6]_i_2 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[6] ),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8]_0 [1]),
        .I2(\size_length_cntr_fixed_reg[1]_1 ),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_5_n_0 ),
        .I4(data2[2]),
        .I5(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_9_n_0 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAEAAAAAAAEAA)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[7]_i_1 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[7]_i_2_n_0 ),
        .I1(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1 ),
        .I2(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2 ),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_0 [7]),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0 ),
        .I5(Transmit_Addr_to_spi_clk[7]),
        .O(wrap_around_d2_reg_0));
  LUT6 #(
    .INIT(64'hFF000000EA00EA00)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[7]_i_2 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[7] ),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8]_0 [2]),
        .I2(\size_length_cntr_fixed_reg[1]_1 ),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_5_n_0 ),
        .I4(data2[3]),
        .I5(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_9_n_0 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAEAAAAAAAEAA)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[8]_i_1 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[8]_i_2_n_0 ),
        .I1(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1 ),
        .I2(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2 ),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_0 [8]),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0 ),
        .I5(Transmit_Addr_to_spi_clk[8]),
        .O(wrap_around_d2_reg_1));
  LUT6 #(
    .INIT(64'hFF000000EA00EA00)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[8]_i_2 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8]_1 ),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[8]_0 [3]),
        .I2(\size_length_cntr_fixed_reg[1]_1 ),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_5_n_0 ),
        .I4(data2[4]),
        .I5(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_9_n_0 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAEAAAAAAAEAA)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[9]_i_1 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[9]_i_2_n_0 ),
        .I1(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_1 ),
        .I2(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_2 ),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[23]_0 [9]),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_7_n_0 ),
        .I5(Transmit_Addr_to_spi_clk[9]),
        .O(wrap_around_d2_reg_2));
  LUT6 #(
    .INIT(64'hFF000000EA00EA00)) 
    \SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[9]_i_2 
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[9]_0 ),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[12]_0 [0]),
        .I2(\size_length_cntr_fixed_reg[1]_1 ),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_5_n_0 ),
        .I4(data2[5]),
        .I5(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[23]_i_9_n_0 ),
        .O(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[9]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h00FB)) 
    S_AXI4_ARREADY_i_i_1
       (.I0(s_axi4_arburst[0]),
        .I1(s_axi4_arvalid),
        .I2(s_axi4_arburst[1]),
        .I3(S_AXI4_ARREADY_i_i_2_n_0),
        .O(load_axi_data_frm_axi_clk));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF7FF)) 
    S_AXI4_ARREADY_i_i_2
       (.I0(wb_hpm_done_to_axi),
        .I1(empty),
        .I2(XIPSR_CPHA_CPOL_ERR_d2),
        .I3(s_axi4_arvalid),
        .I4(xip_sm_ps),
        .I5(Rx_FIFO_Full_to_axi4_clk),
        .O(S_AXI4_ARREADY_i_i_2_n_0));
  LUT6 #(
    .INIT(64'h00000000CBFBFFFF)) 
    \TRANSFER_START_24_BIT_ADDR_GEN.transfer_start_i_1 
       (.I0(Rst_to_spi),
        .I1(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[0] [1]),
        .I2(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[0] [0]),
        .I3(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_0 ),
        .I4(hpm_under_process_d1),
        .I5(\TRANSFER_START_24_BIT_ADDR_GEN.transfer_start_i_2_n_0 ),
        .O(RESET_SYNC_AX2S_2_0));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEFFEEEF)) 
    \TRANSFER_START_24_BIT_ADDR_GEN.transfer_start_i_2 
       (.I0(wrap_around_reg_5),
        .I1(Rst_to_spi),
        .I2(\RATIO_OF_2_GENERATE.SCK_O_NQ_4_STARTUP_USED.SCK_O_reg_reg ),
        .I3(new_tr0),
        .I4(\TRANSFER_START_24_BIT_ADDR_GEN.transfer_start_reg ),
        .I5(start_after_wrap_d1),
        .O(\TRANSFER_START_24_BIT_ADDR_GEN.transfer_start_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h666F)) 
    \TRANSFER_START_24_BIT_ADDR_GEN.transfer_start_i_3 
       (.I0(\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_1_0 ),
        .I1(\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_2_0 ),
        .I2(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[0] [0]),
        .I3(\LEN_CNTR_24_BIT_GEN.length_cntr_reg[0] [1]),
        .O(new_tr0));
  LUT5 #(
    .INIT(32'h020002FF)) 
    \dtr_length[0]_i_1 
       (.I0(s_axi4_arlen[0]),
        .I1(s_axi4_arlen[6]),
        .I2(s_axi4_arlen[7]),
        .I3(load_axi_data_frm_axi_clk),
        .I4(\LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[7].DTR_LEN_SYNC_AXI2SPI_0 [0]),
        .O(\dtr_length_reg[5] [0]));
  LUT6 #(
    .INIT(64'h02FF0200020002FF)) 
    \dtr_length[1]_i_1 
       (.I0(s_axi4_arlen[1]),
        .I1(s_axi4_arlen[6]),
        .I2(s_axi4_arlen[7]),
        .I3(load_axi_data_frm_axi_clk),
        .I4(\LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[7].DTR_LEN_SYNC_AXI2SPI_0 [1]),
        .I5(\LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[7].DTR_LEN_SYNC_AXI2SPI_0 [0]),
        .O(\dtr_length_reg[5] [1]));
  LUT6 #(
    .INIT(64'h8F8F8F808080808F)) 
    \dtr_length[2]_i_1 
       (.I0(s_axi4_arlen[2]),
        .I1(\dtr_length_reg[5]_0 ),
        .I2(load_axi_data_frm_axi_clk),
        .I3(\LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[7].DTR_LEN_SYNC_AXI2SPI_0 [1]),
        .I4(\LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[7].DTR_LEN_SYNC_AXI2SPI_0 [0]),
        .I5(\LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[7].DTR_LEN_SYNC_AXI2SPI_0 [2]),
        .O(\dtr_length_reg[5] [2]));
  LUT6 #(
    .INIT(64'h8F808F808F80808F)) 
    \dtr_length[3]_i_1 
       (.I0(s_axi4_arlen[3]),
        .I1(\dtr_length_reg[5]_0 ),
        .I2(load_axi_data_frm_axi_clk),
        .I3(\LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[7].DTR_LEN_SYNC_AXI2SPI_0 [3]),
        .I4(\dtr_length_reg[3] ),
        .I5(\LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[7].DTR_LEN_SYNC_AXI2SPI_0 [2]),
        .O(\dtr_length_reg[5] [3]));
  LUT6 #(
    .INIT(64'h020002FF02FF0200)) 
    \dtr_length[4]_i_1 
       (.I0(s_axi4_arlen[4]),
        .I1(s_axi4_arlen[6]),
        .I2(s_axi4_arlen[7]),
        .I3(load_axi_data_frm_axi_clk),
        .I4(\LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[7].DTR_LEN_SYNC_AXI2SPI_0 [4]),
        .I5(\dtr_length_reg[7] ),
        .O(\dtr_length_reg[5] [4]));
  LUT6 #(
    .INIT(64'h8F80808F8F808F80)) 
    \dtr_length[5]_i_1 
       (.I0(s_axi4_arlen[5]),
        .I1(\dtr_length_reg[5]_0 ),
        .I2(load_axi_data_frm_axi_clk),
        .I3(\LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[7].DTR_LEN_SYNC_AXI2SPI_0 [5]),
        .I4(\LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[7].DTR_LEN_SYNC_AXI2SPI_0 [4]),
        .I5(\dtr_length_reg[7] ),
        .O(\dtr_length_reg[5] [5]));
  LUT5 #(
    .INIT(32'h0000FB04)) 
    \dtr_length[6]_i_1 
       (.I0(\LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[7].DTR_LEN_SYNC_AXI2SPI_0 [4]),
        .I1(\dtr_length_reg[7] ),
        .I2(\LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[7].DTR_LEN_SYNC_AXI2SPI_0 [5]),
        .I3(\LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[7].DTR_LEN_SYNC_AXI2SPI_0 [6]),
        .I4(load_axi_data_frm_axi_clk),
        .O(\dtr_length_reg[5] [6]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \dtr_length[7]_i_1 
       (.I0(load_axi_data_frm_axi_clk),
        .I1(empty),
        .I2(s_axi4_rready),
        .O(\gen_fwft.empty_fwft_i_reg ));
  LUT6 #(
    .INIT(64'h00000000FFFB0004)) 
    \dtr_length[7]_i_2 
       (.I0(\LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[7].DTR_LEN_SYNC_AXI2SPI_0 [5]),
        .I1(\dtr_length_reg[7] ),
        .I2(\LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[7].DTR_LEN_SYNC_AXI2SPI_0 [4]),
        .I3(\LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[7].DTR_LEN_SYNC_AXI2SPI_0 [6]),
        .I4(\LOGIC_GENERATION_FDR.DTR_LEN_SYNC_AXI_SPI_GEN[7].DTR_LEN_SYNC_AXI2SPI_0 [7]),
        .I5(load_axi_data_frm_axi_clk),
        .O(\dtr_length_reg[5] [7]));
  LUT5 #(
    .INIT(32'h3F3BCFC8)) 
    \size_length_cntr[0]_i_1 
       (.I0(four_byte_xfer_to_spi_clk),
        .I1(\size_length_cntr[1]_i_2_n_0 ),
        .I2(\size_length_cntr_reg[0] ),
        .I3(two_byte_xfer_to_spi_clk),
        .I4(size_length_cntr[0]),
        .O(\LOGIC_GENERATION_FDR.WORD_XFER_SYNC_AXI2SPI_1_0 ));
  LUT6 #(
    .INIT(64'h00000000AAE266E2)) 
    \size_length_cntr[1]_i_1 
       (.I0(size_length_cntr[1]),
        .I1(\size_length_cntr[1]_i_2_n_0 ),
        .I2(four_byte_xfer_to_spi_clk),
        .I3(\size_length_cntr_reg[0] ),
        .I4(size_length_cntr[0]),
        .I5(\size_length_cntr[1]_i_4_n_0 ),
        .O(\size_length_cntr_reg[1] ));
  LUT6 #(
    .INIT(64'hF1F0F1F0FFF0F1F0)) 
    \size_length_cntr[1]_i_2 
       (.I0(size_length_cntr[0]),
        .I1(size_length_cntr[1]),
        .I2(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5] [0]),
        .I3(SPIXfer_done_int),
        .I4(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[23] ),
        .I5(one_byte_xfer_to_spi_clk),
        .O(\size_length_cntr[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEEFEEEEAAAAAAAA)) 
    \size_length_cntr[1]_i_4 
       (.I0(Rst_to_spi),
        .I1(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5] [0]),
        .I2(size_length_cntr[1]),
        .I3(size_length_cntr[0]),
        .I4(SPIXfer_done_int),
        .I5(two_byte_xfer_to_spi_clk),
        .O(\size_length_cntr[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFFFBAAAA0008)) 
    \size_length_cntr_fixed[0]_i_1 
       (.I0(two_byte_xfer_to_spi_clk),
        .I1(SPIXfer_done_int),
        .I2(size_length_cntr[0]),
        .I3(size_length_cntr[1]),
        .I4(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5] [0]),
        .I5(\size_length_cntr_fixed_reg[0] ),
        .O(\LOGIC_GENERATION_FDR.HW_XFER_SYNC_AXI2SPI_1_0 ));
  LUT5 #(
    .INIT(32'h0000AA0C)) 
    \size_length_cntr_fixed[1]_i_1 
       (.I0(\size_length_cntr_fixed_reg[1]_1 ),
        .I1(four_byte_xfer_to_spi_clk),
        .I2(two_byte_xfer_to_spi_clk),
        .I3(\size_length_cntr_reg[0] ),
        .I4(Rst_to_spi),
        .O(\size_length_cntr_fixed_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hBE)) 
    wrap_around_d1_i_1
       (.I0(Rst_to_spi),
        .I1(\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_1_0 ),
        .I2(\LOGIC_GENERATION_FDR.LD_AXI_DATA_SYNC_AXI2SPI_2_0 ),
        .O(cmd_addr_cntr1));
  LUT6 #(
    .INIT(64'h00000000A8AAA800)) 
    wrap_around_i_1
       (.I0(wrap_around_reg_6),
        .I1(wrap_around_i_3_n_0),
        .I2(wrap_around_i_4_n_0),
        .I3(wrap_around25_out),
        .I4(wrap_around_reg_5),
        .I5(Rst_to_spi),
        .O(wrap_around_reg_4));
  LUT6 #(
    .INIT(64'hF8F8AAFF8888AAFF)) 
    wrap_around_i_10
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3]_0 ),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_10_n_0 ),
        .I2(data2[1]),
        .I3(axi_length_to_spi_clk[1]),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_8_n_0 ),
        .I5(wrap_around_i_14_n_0),
        .O(wrap_around_i_10_n_0));
  LUT6 #(
    .INIT(64'hEA00FF00EA00FFFF)) 
    wrap_around_i_12
       (.I0(wrap_around_i_14_n_0),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_7_n_0 ),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3]_0 ),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[2] ),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_8_n_0 ),
        .I5(axi_length_to_spi_clk[1]),
        .O(wrap_around_i_12_n_0));
  LUT6 #(
    .INIT(64'h55DDDDDDFDFDFDFD)) 
    wrap_around_i_13
       (.I0(p_8_in),
        .I1(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_8_n_0 ),
        .I2(axi_length_to_spi_clk[1]),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[4]_i_7_n_0 ),
        .I4(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[2] ),
        .I5(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0] ),
        .O(wrap_around_i_13_n_0));
  LUT4 #(
    .INIT(16'h4000)) 
    wrap_around_i_14
       (.I0(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap[5]_i_7_n_0 ),
        .I1(axi_length_to_spi_clk[3]),
        .I2(data2[0]),
        .I3(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[3]_0 ),
        .O(wrap_around_i_14_n_0));
  LUT6 #(
    .INIT(64'h00000000080800FF)) 
    wrap_around_i_3
       (.I0(wrap_around_i_6_n_0),
        .I1(axi_length_to_spi_clk[3]),
        .I2(wrap_around_reg_7),
        .I3(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_0 ),
        .I4(wrap_around_i_8_n_0),
        .I5(wrap_around_reg_8),
        .O(wrap_around_i_3_n_0));
  LUT6 #(
    .INIT(64'h0004000F00040004)) 
    wrap_around_i_4
       (.I0(wrap_around_reg_9),
        .I1(wrap_around_i_10_n_0),
        .I2(\SPI_24_WRAP_ADDR_REG_GEN.spi_addr_wrap_reg[0]_0 ),
        .I3(\FSM_onehot_RATIO_OF_2_GENERATE.XIP_QUAD_MODE_WB_MEM_GEN.qspi_cntrl_ps_reg[5]_0 ),
        .I4(wrap_around_reg_10),
        .I5(wrap_around_i_12_n_0),
        .O(wrap_around_i_4_n_0));
  LUT3 #(
    .INIT(8'h2A)) 
    wrap_around_i_5
       (.I0(type_of_burst_to_spi_clk),
        .I1(\size_length_cntr_fixed_reg[0] ),
        .I2(\size_length_cntr_fixed_reg[1]_1 ),
        .O(wrap_around25_out));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    wrap_around_i_6
       (.I0(type_of_burst_to_spi_clk),
        .I1(axi_length_to_spi_clk[1]),
        .I2(axi_length_to_spi_clk[2]),
        .I3(axi_length_to_spi_clk[0]),
        .O(wrap_around_i_6_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFF7)) 
    wrap_around_i_8
       (.I0(SPIXfer_done_int),
        .I1(\QUAD_MODE_CONTROL_GEN.WB_MEM_QUAD_MD_GEN.Data_To_Rx_FIFO_int_reg[23] ),
        .I2(size_length_cntr[1]),
        .I3(size_length_cntr[0]),
        .I4(wrap_around_i_13_n_0),
        .O(wrap_around_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hBFAA)) 
    xip_sm_ps_i_1
       (.I0(load_axi_data_frm_axi_clk),
        .I1(s_axi4_rready),
        .I2(last_data_acked),
        .I3(xip_sm_ps),
        .O(xip_sm_ns));
endmodule

(* ORIG_REF_NAME = "xip_status_reg" *) 
module icyradio_axi_quad_spi_0_0_xip_status_reg
   (Q,
    SR,
    D,
    s_axi_aclk);
  output [3:0]Q;
  input [0:0]SR;
  input [3:0]D;
  input s_axi_aclk;

  wire [3:0]D;
  wire [3:0]Q;
  wire [0:0]SR;
  wire s_axi_aclk;

  FDRE \XIPSR_data_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \XIPSR_data_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \XIPSR_data_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \XIPSR_data_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[3]),
        .R(SR));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "0" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "6" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module icyradio_axi_quad_spi_0_0_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [5:0]src_in_bin;
  input dest_clk;
  output [5:0]dest_out_bin;

  wire [5:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [5:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [5:0]\dest_graysync_ff[1] ;
  wire [4:0]\^dest_out_bin ;
  wire [4:0]gray_enc;
  wire src_clk;
  wire [5:0]src_in_bin;

  assign dest_out_bin[5] = \dest_graysync_ff[1] [5];
  assign dest_out_bin[4:0] = \^dest_out_bin [4:0];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [5]),
        .I4(\dest_graysync_ff[1] [3]),
        .I5(\dest_graysync_ff[1] [1]),
        .O(\^dest_out_bin [0]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [5]),
        .I3(\dest_graysync_ff[1] [4]),
        .I4(\dest_graysync_ff[1] [2]),
        .O(\^dest_out_bin [1]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [5]),
        .I3(\dest_graysync_ff[1] [3]),
        .O(\^dest_out_bin [2]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[3]_INST_0 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(\dest_graysync_ff[1] [4]),
        .O(\^dest_out_bin [3]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[4]_INST_0 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [5]),
        .O(\^dest_out_bin [4]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[5]),
        .Q(async_path[5]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "0" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "6" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module icyradio_axi_quad_spi_0_0_xpm_cdc_gray__1
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [5:0]src_in_bin;
  input dest_clk;
  output [5:0]dest_out_bin;

  wire [5:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [5:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [5:0]\dest_graysync_ff[1] ;
  wire [4:0]\^dest_out_bin ;
  wire [4:0]gray_enc;
  wire src_clk;
  wire [5:0]src_in_bin;

  assign dest_out_bin[5] = \dest_graysync_ff[1] [5];
  assign dest_out_bin[4:0] = \^dest_out_bin [4:0];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [5]),
        .I4(\dest_graysync_ff[1] [3]),
        .I5(\dest_graysync_ff[1] [1]),
        .O(\^dest_out_bin [0]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [5]),
        .I3(\dest_graysync_ff[1] [4]),
        .I4(\dest_graysync_ff[1] [2]),
        .O(\^dest_out_bin [1]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [5]),
        .I3(\dest_graysync_ff[1] [3]),
        .O(\^dest_out_bin [2]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[3]_INST_0 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(\dest_graysync_ff[1] [4]),
        .O(\^dest_out_bin [3]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[4]_INST_0 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [5]),
        .O(\^dest_out_bin [4]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[5]),
        .Q(async_path[5]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "0" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "7" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module icyradio_axi_quad_spi_0_0_xpm_cdc_gray__parameterized0
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [6:0]src_in_bin;
  input dest_clk;
  output [6:0]dest_out_bin;

  wire [6:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [6:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [6:0]\dest_graysync_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [6:0]\dest_graysync_ff[2] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [6:0]\dest_graysync_ff[3] ;
  wire [5:0]\^dest_out_bin ;
  wire [5:0]gray_enc;
  wire src_clk;
  wire [6:0]src_in_bin;

  assign dest_out_bin[6] = \dest_graysync_ff[3] [6];
  assign dest_out_bin[5:0] = \^dest_out_bin [5:0];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [0]),
        .Q(\dest_graysync_ff[2] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [1]),
        .Q(\dest_graysync_ff[2] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [2]),
        .Q(\dest_graysync_ff[2] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [3]),
        .Q(\dest_graysync_ff[2] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [4]),
        .Q(\dest_graysync_ff[2] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [5]),
        .Q(\dest_graysync_ff[2] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [6]),
        .Q(\dest_graysync_ff[2] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [0]),
        .Q(\dest_graysync_ff[3] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [1]),
        .Q(\dest_graysync_ff[3] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [2]),
        .Q(\dest_graysync_ff[3] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [3]),
        .Q(\dest_graysync_ff[3] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [4]),
        .Q(\dest_graysync_ff[3] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [5]),
        .Q(\dest_graysync_ff[3] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [6]),
        .Q(\dest_graysync_ff[3] [6]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[3] [0]),
        .I1(\^dest_out_bin [1]),
        .O(\^dest_out_bin [0]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[3] [1]),
        .I1(\dest_graysync_ff[3] [3]),
        .I2(\dest_graysync_ff[3] [5]),
        .I3(\dest_graysync_ff[3] [6]),
        .I4(\dest_graysync_ff[3] [4]),
        .I5(\dest_graysync_ff[3] [2]),
        .O(\^dest_out_bin [1]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[3] [2]),
        .I1(\dest_graysync_ff[3] [4]),
        .I2(\dest_graysync_ff[3] [6]),
        .I3(\dest_graysync_ff[3] [5]),
        .I4(\dest_graysync_ff[3] [3]),
        .O(\^dest_out_bin [2]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[3]_INST_0 
       (.I0(\dest_graysync_ff[3] [3]),
        .I1(\dest_graysync_ff[3] [5]),
        .I2(\dest_graysync_ff[3] [6]),
        .I3(\dest_graysync_ff[3] [4]),
        .O(\^dest_out_bin [3]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[4]_INST_0 
       (.I0(\dest_graysync_ff[3] [4]),
        .I1(\dest_graysync_ff[3] [6]),
        .I2(\dest_graysync_ff[3] [5]),
        .O(\^dest_out_bin [4]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[5]_INST_0 
       (.I0(\dest_graysync_ff[3] [5]),
        .I1(\dest_graysync_ff[3] [6]),
        .O(\^dest_out_bin [5]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[6]),
        .Q(async_path[6]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "0" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "7" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module icyradio_axi_quad_spi_0_0_xpm_cdc_gray__parameterized1
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [6:0]src_in_bin;
  input dest_clk;
  output [6:0]dest_out_bin;

  wire [6:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [6:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [6:0]\dest_graysync_ff[1] ;
  wire [5:0]\^dest_out_bin ;
  wire [5:0]gray_enc;
  wire src_clk;
  wire [6:0]src_in_bin;

  assign dest_out_bin[6] = \dest_graysync_ff[1] [6];
  assign dest_out_bin[5:0] = \^dest_out_bin [5:0];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\^dest_out_bin [1]),
        .O(\^dest_out_bin [0]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [5]),
        .I3(\dest_graysync_ff[1] [6]),
        .I4(\dest_graysync_ff[1] [4]),
        .I5(\dest_graysync_ff[1] [2]),
        .O(\^dest_out_bin [1]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [6]),
        .I3(\dest_graysync_ff[1] [5]),
        .I4(\dest_graysync_ff[1] [3]),
        .O(\^dest_out_bin [2]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[3]_INST_0 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(\dest_graysync_ff[1] [6]),
        .I3(\dest_graysync_ff[1] [4]),
        .O(\^dest_out_bin [3]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[4]_INST_0 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [5]),
        .O(\^dest_out_bin [4]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[5]_INST_0 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [6]),
        .O(\^dest_out_bin [5]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[6]),
        .Q(async_path[6]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT = "0" *) 
(* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SYNC_RST" *) 
module icyradio_axi_quad_spi_0_0_xpm_cdc_sync_rst
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [1:0]syncstages_ff;

  assign dest_rst = syncstages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT = "0" *) 
(* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SYNC_RST" *) 
module icyradio_axi_quad_spi_0_0_xpm_cdc_sync_rst__2
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [1:0]syncstages_ff;

  assign dest_rst = syncstages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module icyradio_axi_quad_spi_0_0_xpm_counter_updn
   (\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ,
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg ,
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0 ,
    rst,
    clr_full,
    almost_full,
    wr_en,
    rst_d1,
    wrst_busy,
    \count_value_i_reg[2]_0 ,
    Q,
    E,
    wr_clk);
  output \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ;
  input \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg ;
  input \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0 ;
  input rst;
  input clr_full;
  input almost_full;
  input wr_en;
  input rst_d1;
  input wrst_busy;
  input \count_value_i_reg[2]_0 ;
  input [5:0]Q;
  input [0:0]E;
  input wr_clk;

  wire [0:0]E;
  wire [5:0]Q;
  wire almost_full;
  wire clr_full;
  wire [5:0]count_value_i;
  wire \count_value_i[0]_i_1__4_n_0 ;
  wire \count_value_i[1]_i_1__2_n_0 ;
  wire \count_value_i[2]_i_1__2_n_0 ;
  wire \count_value_i[3]_i_1__2_n_0 ;
  wire \count_value_i[4]_i_1__2_n_0 ;
  wire \count_value_i[5]_i_1__2_n_0 ;
  wire \count_value_i[5]_i_2__1_n_0 ;
  wire \count_value_i_reg[2]_0 ;
  wire \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_2_n_0 ;
  wire \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_3_n_0 ;
  wire \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_4_n_0 ;
  wire \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg ;
  wire \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ;
  wire rst;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;
  wire wrst_busy;

  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__4 
       (.I0(count_value_i[0]),
        .O(\count_value_i[0]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__2 
       (.I0(count_value_i[0]),
        .I1(count_value_i[1]),
        .O(\count_value_i[1]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h9AAA)) 
    \count_value_i[2]_i_1__2 
       (.I0(count_value_i[2]),
        .I1(\count_value_i_reg[2]_0 ),
        .I2(count_value_i[0]),
        .I3(count_value_i[1]),
        .O(\count_value_i[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'hAA6AAAAA)) 
    \count_value_i[3]_i_1__2 
       (.I0(count_value_i[3]),
        .I1(count_value_i[1]),
        .I2(count_value_i[0]),
        .I3(\count_value_i_reg[2]_0 ),
        .I4(count_value_i[2]),
        .O(\count_value_i[3]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'hA6AAAAAAAAAAAAAA)) 
    \count_value_i[4]_i_1__2 
       (.I0(count_value_i[4]),
        .I1(count_value_i[2]),
        .I2(\count_value_i_reg[2]_0 ),
        .I3(count_value_i[0]),
        .I4(count_value_i[1]),
        .I5(count_value_i[3]),
        .O(\count_value_i[4]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \count_value_i[5]_i_1__2 
       (.I0(count_value_i[5]),
        .I1(count_value_i[3]),
        .I2(\count_value_i[5]_i_2__1_n_0 ),
        .I3(count_value_i[2]),
        .I4(count_value_i[4]),
        .O(\count_value_i[5]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[5]_i_2__1 
       (.I0(count_value_i[1]),
        .I1(count_value_i[0]),
        .I2(wrst_busy),
        .I3(rst_d1),
        .I4(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0 ),
        .I5(wr_en),
        .O(\count_value_i[5]_i_2__1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1__4_n_0 ),
        .Q(count_value_i[0]),
        .S(wrst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1__2_n_0 ),
        .Q(count_value_i[1]),
        .S(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1__2_n_0 ),
        .Q(count_value_i[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1__2_n_0 ),
        .Q(count_value_i[3]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[4]_i_1__2_n_0 ),
        .Q(count_value_i[4]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[5]_i_1__2_n_0 ),
        .Q(count_value_i[5]),
        .R(wrst_busy));
  LUT6 #(
    .INIT(64'h0000FFF700000007)) 
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_1 
       (.I0(\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_2_n_0 ),
        .I1(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg ),
        .I2(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0 ),
        .I3(rst),
        .I4(clr_full),
        .I5(almost_full),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_2 
       (.I0(wr_en),
        .I1(\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0 ),
        .I2(rst_d1),
        .I3(wrst_busy),
        .I4(\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_3_n_0 ),
        .I5(\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_4_n_0 ),
        .O(\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_3 
       (.I0(count_value_i[0]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(count_value_i[2]),
        .I4(Q[1]),
        .I5(count_value_i[1]),
        .O(\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_4 
       (.I0(count_value_i[3]),
        .I1(Q[3]),
        .I2(Q[5]),
        .I3(count_value_i[5]),
        .I4(Q[4]),
        .I5(count_value_i[4]),
        .O(\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_4_n_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module icyradio_axi_quad_spi_0_0_xpm_counter_updn__parameterized0
   (\count_value_i_reg[3]_0 ,
    \count_value_i_reg[2]_0 ,
    wrst_busy,
    rst_d1,
    \count_value_i_reg[5]_0 ,
    wr_en,
    Q,
    E,
    wr_clk);
  output \count_value_i_reg[3]_0 ;
  input \count_value_i_reg[2]_0 ;
  input wrst_busy;
  input rst_d1;
  input \count_value_i_reg[5]_0 ;
  input wr_en;
  input [5:0]Q;
  input [0:0]E;
  input wr_clk;

  wire [0:0]E;
  wire [5:0]Q;
  wire \count_value_i[0]_i_1__1_n_0 ;
  wire \count_value_i[1]_i_1_n_0 ;
  wire \count_value_i[2]_i_1_n_0 ;
  wire \count_value_i[3]_i_1_n_0 ;
  wire \count_value_i[4]_i_1_n_0 ;
  wire \count_value_i[5]_i_1_n_0 ;
  wire \count_value_i[5]_i_2_n_0 ;
  wire \count_value_i_reg[2]_0 ;
  wire \count_value_i_reg[3]_0 ;
  wire \count_value_i_reg[5]_0 ;
  wire \count_value_i_reg_n_0_[0] ;
  wire \count_value_i_reg_n_0_[1] ;
  wire \count_value_i_reg_n_0_[2] ;
  wire \count_value_i_reg_n_0_[3] ;
  wire \count_value_i_reg_n_0_[4] ;
  wire \count_value_i_reg_n_0_[5] ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_7_n_0 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_8_n_0 ;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;
  wire wrst_busy;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__1 
       (.I0(\count_value_i_reg_n_0_[0] ),
        .O(\count_value_i[0]_i_1__1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1 
       (.I0(\count_value_i_reg_n_0_[0] ),
        .I1(\count_value_i_reg_n_0_[1] ),
        .O(\count_value_i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h9AAA)) 
    \count_value_i[2]_i_1 
       (.I0(\count_value_i_reg_n_0_[2] ),
        .I1(\count_value_i_reg[2]_0 ),
        .I2(\count_value_i_reg_n_0_[0] ),
        .I3(\count_value_i_reg_n_0_[1] ),
        .O(\count_value_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'hAA6AAAAA)) 
    \count_value_i[3]_i_1 
       (.I0(\count_value_i_reg_n_0_[3] ),
        .I1(\count_value_i_reg_n_0_[1] ),
        .I2(\count_value_i_reg_n_0_[0] ),
        .I3(\count_value_i_reg[2]_0 ),
        .I4(\count_value_i_reg_n_0_[2] ),
        .O(\count_value_i[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA6AAAAAAAAAAAAAA)) 
    \count_value_i[4]_i_1 
       (.I0(\count_value_i_reg_n_0_[4] ),
        .I1(\count_value_i_reg_n_0_[2] ),
        .I2(\count_value_i_reg[2]_0 ),
        .I3(\count_value_i_reg_n_0_[0] ),
        .I4(\count_value_i_reg_n_0_[1] ),
        .I5(\count_value_i_reg_n_0_[3] ),
        .O(\count_value_i[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \count_value_i[5]_i_1 
       (.I0(\count_value_i_reg_n_0_[5] ),
        .I1(\count_value_i_reg_n_0_[3] ),
        .I2(\count_value_i[5]_i_2_n_0 ),
        .I3(\count_value_i_reg_n_0_[2] ),
        .I4(\count_value_i_reg_n_0_[4] ),
        .O(\count_value_i[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[5]_i_2 
       (.I0(\count_value_i_reg_n_0_[1] ),
        .I1(\count_value_i_reg_n_0_[0] ),
        .I2(wrst_busy),
        .I3(rst_d1),
        .I4(\count_value_i_reg[5]_0 ),
        .I5(wr_en),
        .O(\count_value_i[5]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1__1_n_0 ),
        .Q(\count_value_i_reg_n_0_[0] ),
        .R(wrst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1_n_0 ),
        .Q(\count_value_i_reg_n_0_[1] ),
        .S(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1_n_0 ),
        .Q(\count_value_i_reg_n_0_[2] ),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1_n_0 ),
        .Q(\count_value_i_reg_n_0_[3] ),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[4]_i_1_n_0 ),
        .Q(\count_value_i_reg_n_0_[4] ),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[5]_i_1_n_0 ),
        .Q(\count_value_i_reg_n_0_[5] ),
        .R(wrst_busy));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_5 
       (.I0(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_7_n_0 ),
        .I1(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_8_n_0 ),
        .O(\count_value_i_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_7 
       (.I0(\count_value_i_reg_n_0_[3] ),
        .I1(Q[3]),
        .I2(Q[5]),
        .I3(\count_value_i_reg_n_0_[5] ),
        .I4(Q[4]),
        .I5(\count_value_i_reg_n_0_[4] ),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_8 
       (.I0(\count_value_i_reg_n_0_[0] ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\count_value_i_reg_n_0_[1] ),
        .I4(Q[2]),
        .I5(\count_value_i_reg_n_0_[2] ),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_8_n_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module icyradio_axi_quad_spi_0_0_xpm_counter_updn__parameterized1
   (src_in_bin,
    \count_value_i_reg[0]_0 ,
    DI,
    \count_value_i_reg[1]_0 ,
    Q,
    \count_value_i_reg[1]_1 ,
    \count_value_i_reg[1]_2 ,
    rd_en,
    ram_empty_i,
    rd_clk);
  output [0:0]src_in_bin;
  output \count_value_i_reg[0]_0 ;
  output [1:0]DI;
  output \count_value_i_reg[1]_0 ;
  input [0:0]Q;
  input \count_value_i_reg[1]_1 ;
  input [1:0]\count_value_i_reg[1]_2 ;
  input rd_en;
  input ram_empty_i;
  input rd_clk;

  wire [1:0]DI;
  wire [0:0]Q;
  wire \count_value_i[0]_i_1_n_0 ;
  wire \count_value_i[1]_i_1_n_0 ;
  wire \count_value_i[1]_i_2_n_0 ;
  wire \count_value_i_reg[0]_0 ;
  wire \count_value_i_reg[1]_0 ;
  wire \count_value_i_reg[1]_1 ;
  wire [1:0]\count_value_i_reg[1]_2 ;
  wire ram_empty_i;
  wire rd_clk;
  wire rd_en;
  wire [0:0]src_in_bin;

  LUT6 #(
    .INIT(64'h1210222021211121)) 
    \count_value_i[0]_i_1 
       (.I0(\count_value_i_reg[0]_0 ),
        .I1(\count_value_i_reg[1]_1 ),
        .I2(\count_value_i_reg[1]_2 [1]),
        .I3(\count_value_i_reg[1]_2 [0]),
        .I4(rd_en),
        .I5(ram_empty_i),
        .O(\count_value_i[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2220222022222222)) 
    \count_value_i[1]_i_1 
       (.I0(\count_value_i[1]_i_2_n_0 ),
        .I1(\count_value_i_reg[1]_1 ),
        .I2(\count_value_i_reg[1]_2 [1]),
        .I3(\count_value_i_reg[1]_2 [0]),
        .I4(rd_en),
        .I5(ram_empty_i),
        .O(\count_value_i[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBDBFDDDD42402222)) 
    \count_value_i[1]_i_2 
       (.I0(\count_value_i_reg[0]_0 ),
        .I1(ram_empty_i),
        .I2(rd_en),
        .I3(\count_value_i_reg[1]_2 [0]),
        .I4(\count_value_i_reg[1]_2 [1]),
        .I5(\count_value_i_reg[1]_0 ),
        .O(\count_value_i[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\count_value_i[0]_i_1_n_0 ),
        .Q(\count_value_i_reg[0]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\count_value_i[1]_i_1_n_0 ),
        .Q(\count_value_i_reg[1]_0 ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_7 
       (.I0(\count_value_i_reg[0]_0 ),
        .I1(Q),
        .O(src_in_bin));
  LUT2 #(
    .INIT(4'hB)) 
    \grdc.rd_data_count_i[3]_i_4 
       (.I0(\count_value_i_reg[0]_0 ),
        .I1(Q),
        .O(DI[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \grdc.rd_data_count_i[3]_i_5 
       (.I0(\count_value_i_reg[0]_0 ),
        .I1(Q),
        .O(DI[0]));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module icyradio_axi_quad_spi_0_0_xpm_counter_updn__parameterized2
   (Q,
    E,
    src_in_bin,
    \count_value_i_reg[1]_0 ,
    D,
    \count_value_i_reg[3]_0 ,
    \count_value_i_reg[4]_0 ,
    \count_value_i_reg[0]_0 ,
    rd_en,
    ram_empty_i,
    \grdc.rd_data_count_i_reg[3] ,
    \grdc.rd_data_count_i_reg[3]_0 ,
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5] ,
    DI,
    \grdc.rd_data_count_i_reg[6] ,
    S,
    \grdc.rd_data_count_i_reg[6]_0 ,
    \count_value_i_reg[6]_0 ,
    rd_clk);
  output [6:0]Q;
  output [0:0]E;
  output [5:0]src_in_bin;
  output \count_value_i_reg[1]_0 ;
  output [5:0]D;
  output [3:0]\count_value_i_reg[3]_0 ;
  output [0:0]\count_value_i_reg[4]_0 ;
  input [1:0]\count_value_i_reg[0]_0 ;
  input rd_en;
  input ram_empty_i;
  input \grdc.rd_data_count_i_reg[3] ;
  input \grdc.rd_data_count_i_reg[3]_0 ;
  input [4:0]\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5] ;
  input [3:0]DI;
  input [1:0]\grdc.rd_data_count_i_reg[6] ;
  input [0:0]S;
  input [5:0]\grdc.rd_data_count_i_reg[6]_0 ;
  input \count_value_i_reg[6]_0 ;
  input rd_clk;

  wire [5:0]D;
  wire [3:0]DI;
  wire [0:0]E;
  wire [6:0]Q;
  wire [0:0]S;
  wire \count_value_i[0]_i_1__0_n_0 ;
  wire \count_value_i[1]_i_1__4_n_0 ;
  wire \count_value_i[2]_i_1__4_n_0 ;
  wire \count_value_i[3]_i_1__4_n_0 ;
  wire \count_value_i[4]_i_1__4_n_0 ;
  wire \count_value_i[5]_i_1__4_n_0 ;
  wire \count_value_i[6]_i_1__0_n_0 ;
  wire \count_value_i[6]_i_2__0_n_0 ;
  wire [1:0]\count_value_i_reg[0]_0 ;
  wire \count_value_i_reg[1]_0 ;
  wire [3:0]\count_value_i_reg[3]_0 ;
  wire [0:0]\count_value_i_reg[4]_0 ;
  wire \count_value_i_reg[6]_0 ;
  wire \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_8_n_0 ;
  wire [4:0]\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5] ;
  wire \grdc.rd_data_count_i[3]_i_6_n_0 ;
  wire \grdc.rd_data_count_i[3]_i_7_n_0 ;
  wire \grdc.rd_data_count_i[3]_i_8_n_0 ;
  wire \grdc.rd_data_count_i[3]_i_9_n_0 ;
  wire \grdc.rd_data_count_i[6]_i_6_n_0 ;
  wire \grdc.rd_data_count_i[6]_i_7_n_0 ;
  wire \grdc.rd_data_count_i_reg[3] ;
  wire \grdc.rd_data_count_i_reg[3]_0 ;
  wire \grdc.rd_data_count_i_reg[3]_i_1_n_0 ;
  wire \grdc.rd_data_count_i_reg[3]_i_1_n_1 ;
  wire \grdc.rd_data_count_i_reg[3]_i_1_n_2 ;
  wire \grdc.rd_data_count_i_reg[3]_i_1_n_3 ;
  wire [1:0]\grdc.rd_data_count_i_reg[6] ;
  wire [5:0]\grdc.rd_data_count_i_reg[6]_0 ;
  wire \grdc.rd_data_count_i_reg[6]_i_2_n_2 ;
  wire \grdc.rd_data_count_i_reg[6]_i_2_n_3 ;
  wire ram_empty_i;
  wire rd_clk;
  wire rd_en;
  wire [5:0]src_in_bin;
  wire [0:0]\NLW_grdc.rd_data_count_i_reg[3]_i_1_O_UNCONNECTED ;
  wire [3:2]\NLW_grdc.rd_data_count_i_reg[6]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_grdc.rd_data_count_i_reg[6]_i_2_O_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hAABA5545)) 
    \count_value_i[0]_i_1__0 
       (.I0(ram_empty_i),
        .I1(rd_en),
        .I2(\count_value_i_reg[0]_0 [1]),
        .I3(\count_value_i_reg[0]_0 [0]),
        .I4(Q[0]),
        .O(\count_value_i[0]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h04FFFB00)) 
    \count_value_i[1]_i_1__4 
       (.I0(\count_value_i_reg[0]_0 [0]),
        .I1(\count_value_i_reg[0]_0 [1]),
        .I2(rd_en),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\count_value_i[1]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__4 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__4 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__4 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__4_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__4 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(\count_value_i[6]_i_2__0_n_0 ),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__4_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__0 
       (.I0(Q[5]),
        .I1(\count_value_i[6]_i_2__0_n_0 ),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000AA8A00000000)) 
    \count_value_i[6]_i_2__0 
       (.I0(Q[1]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(\count_value_i_reg[0]_0 [1]),
        .I3(rd_en),
        .I4(ram_empty_i),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1__0_n_0 ),
        .Q(Q[0]),
        .R(\count_value_i_reg[6]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1__4_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[6]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1__4_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[6]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1__4_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[6]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[4]_i_1__4_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[6]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[5]_i_1__4_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[6]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[6]_i_1__0_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[6]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_8_n_0 ),
        .I3(Q[4]),
        .I4(Q[6]),
        .O(src_in_bin[5]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_8_n_0 ),
        .I3(Q[4]),
        .O(src_in_bin[4]));
  LUT3 #(
    .INIT(8'hA9)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3 
       (.I0(Q[4]),
        .I1(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_8_n_0 ),
        .I2(Q[3]),
        .O(src_in_bin[3]));
  LUT6 #(
    .INIT(64'hEFAAFFEF10550010)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_4 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(\grdc.rd_data_count_i_reg[3]_0 ),
        .I3(Q[1]),
        .I4(\grdc.rd_data_count_i_reg[3] ),
        .I5(Q[3]),
        .O(src_in_bin[2]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h9A55AA9A)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_5 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(\grdc.rd_data_count_i_reg[3]_0 ),
        .I3(Q[1]),
        .I4(\grdc.rd_data_count_i_reg[3] ),
        .O(src_in_bin[1]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h6696)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6 
       (.I0(Q[1]),
        .I1(\grdc.rd_data_count_i_reg[3] ),
        .I2(\grdc.rd_data_count_i_reg[3]_0 ),
        .I3(Q[0]),
        .O(src_in_bin[0]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'hFFFFDD4D)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_8 
       (.I0(\grdc.rd_data_count_i_reg[3] ),
        .I1(Q[1]),
        .I2(\grdc.rd_data_count_i_reg[3]_0 ),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_3 
       (.I0(Q[3]),
        .I1(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5] [3]),
        .O(\count_value_i_reg[3]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_4 
       (.I0(Q[2]),
        .I1(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5] [2]),
        .O(\count_value_i_reg[3]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_5 
       (.I0(Q[1]),
        .I1(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5] [1]),
        .O(\count_value_i_reg[3]_0 [1]));
  LUT5 #(
    .INIT(32'hAABA5545)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_6 
       (.I0(ram_empty_i),
        .I1(rd_en),
        .I2(\count_value_i_reg[0]_0 [1]),
        .I3(\count_value_i_reg[0]_0 [0]),
        .I4(Q[0]),
        .O(\count_value_i_reg[3]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[5]_i_3 
       (.I0(Q[4]),
        .I1(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5] [4]),
        .O(\count_value_i_reg[4]_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ram_empty_i_i_4 
       (.I0(Q[1]),
        .I1(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5] [1]),
        .I2(Q[0]),
        .I3(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5] [0]),
        .I4(Q[2]),
        .I5(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5] [2]),
        .O(\count_value_i_reg[1]_0 ));
  LUT4 #(
    .INIT(16'h00FB)) 
    \gen_sdpram.xpm_memory_base_inst_i_2 
       (.I0(\count_value_i_reg[0]_0 [0]),
        .I1(\count_value_i_reg[0]_0 [1]),
        .I2(rd_en),
        .I3(ram_empty_i),
        .O(E));
  LUT4 #(
    .INIT(16'hB44B)) 
    \grdc.rd_data_count_i[3]_i_6 
       (.I0(Q[2]),
        .I1(\grdc.rd_data_count_i_reg[6]_0 [2]),
        .I2(Q[3]),
        .I3(\grdc.rd_data_count_i_reg[6]_0 [3]),
        .O(\grdc.rd_data_count_i[3]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h2BD4D42B)) 
    \grdc.rd_data_count_i[3]_i_7 
       (.I0(Q[1]),
        .I1(\grdc.rd_data_count_i_reg[3] ),
        .I2(\grdc.rd_data_count_i_reg[6]_0 [1]),
        .I3(Q[2]),
        .I4(\grdc.rd_data_count_i_reg[6]_0 [2]),
        .O(\grdc.rd_data_count_i[3]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hD22D2DD2)) 
    \grdc.rd_data_count_i[3]_i_8 
       (.I0(Q[0]),
        .I1(\grdc.rd_data_count_i_reg[3]_0 ),
        .I2(\grdc.rd_data_count_i_reg[6]_0 [1]),
        .I3(\grdc.rd_data_count_i_reg[3] ),
        .I4(Q[1]),
        .O(\grdc.rd_data_count_i[3]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \grdc.rd_data_count_i[3]_i_9 
       (.I0(Q[0]),
        .I1(\grdc.rd_data_count_i_reg[3]_0 ),
        .I2(\grdc.rd_data_count_i_reg[6]_0 [0]),
        .O(\grdc.rd_data_count_i[3]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \grdc.rd_data_count_i[6]_i_6 
       (.I0(Q[4]),
        .I1(\grdc.rd_data_count_i_reg[6]_0 [4]),
        .I2(Q[5]),
        .I3(\grdc.rd_data_count_i_reg[6]_0 [5]),
        .O(\grdc.rd_data_count_i[6]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \grdc.rd_data_count_i[6]_i_7 
       (.I0(Q[3]),
        .I1(\grdc.rd_data_count_i_reg[6]_0 [3]),
        .I2(Q[4]),
        .I3(\grdc.rd_data_count_i_reg[6]_0 [4]),
        .O(\grdc.rd_data_count_i[6]_i_7_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \grdc.rd_data_count_i_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\grdc.rd_data_count_i_reg[3]_i_1_n_0 ,\grdc.rd_data_count_i_reg[3]_i_1_n_1 ,\grdc.rd_data_count_i_reg[3]_i_1_n_2 ,\grdc.rd_data_count_i_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(DI),
        .O({D[2:0],\NLW_grdc.rd_data_count_i_reg[3]_i_1_O_UNCONNECTED [0]}),
        .S({\grdc.rd_data_count_i[3]_i_6_n_0 ,\grdc.rd_data_count_i[3]_i_7_n_0 ,\grdc.rd_data_count_i[3]_i_8_n_0 ,\grdc.rd_data_count_i[3]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \grdc.rd_data_count_i_reg[6]_i_2 
       (.CI(\grdc.rd_data_count_i_reg[3]_i_1_n_0 ),
        .CO({\NLW_grdc.rd_data_count_i_reg[6]_i_2_CO_UNCONNECTED [3:2],\grdc.rd_data_count_i_reg[6]_i_2_n_2 ,\grdc.rd_data_count_i_reg[6]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\grdc.rd_data_count_i_reg[6] }),
        .O({\NLW_grdc.rd_data_count_i_reg[6]_i_2_O_UNCONNECTED [3],D[5:3]}),
        .S({1'b0,S,\grdc.rd_data_count_i[6]_i_6_n_0 ,\grdc.rd_data_count_i[6]_i_7_n_0 }));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module icyradio_axi_quad_spi_0_0_xpm_counter_updn__parameterized2_3
   (Q,
    D,
    \count_value_i_reg[2]_0 ,
    wrst_busy,
    rst_d1,
    \count_value_i_reg[6]_0 ,
    wr_en,
    \gwdc.wr_data_count_i_reg[6] ,
    E,
    wr_clk);
  output [6:0]Q;
  output [5:0]D;
  input \count_value_i_reg[2]_0 ;
  input wrst_busy;
  input rst_d1;
  input \count_value_i_reg[6]_0 ;
  input wr_en;
  input [6:0]\gwdc.wr_data_count_i_reg[6] ;
  input [0:0]E;
  input wr_clk;

  wire [5:0]D;
  wire [0:0]E;
  wire [6:0]Q;
  wire \count_value_i[0]_i_1__3_n_0 ;
  wire \count_value_i[1]_i_1__1_n_0 ;
  wire \count_value_i[2]_i_1__1_n_0 ;
  wire \count_value_i[3]_i_1__1_n_0 ;
  wire \count_value_i[4]_i_1__1_n_0 ;
  wire \count_value_i[5]_i_1__1_n_0 ;
  wire \count_value_i[6]_i_1_n_0 ;
  wire \count_value_i[6]_i_2_n_0 ;
  wire \count_value_i_reg[2]_0 ;
  wire \count_value_i_reg[6]_0 ;
  wire \gwdc.wr_data_count_i[3]_i_2_n_0 ;
  wire \gwdc.wr_data_count_i[3]_i_3_n_0 ;
  wire \gwdc.wr_data_count_i[3]_i_4_n_0 ;
  wire \gwdc.wr_data_count_i[3]_i_5_n_0 ;
  wire \gwdc.wr_data_count_i[6]_i_2_n_0 ;
  wire \gwdc.wr_data_count_i[6]_i_3_n_0 ;
  wire \gwdc.wr_data_count_i[6]_i_4_n_0 ;
  wire \gwdc.wr_data_count_i_reg[3]_i_1_n_0 ;
  wire \gwdc.wr_data_count_i_reg[3]_i_1_n_1 ;
  wire \gwdc.wr_data_count_i_reg[3]_i_1_n_2 ;
  wire \gwdc.wr_data_count_i_reg[3]_i_1_n_3 ;
  wire [6:0]\gwdc.wr_data_count_i_reg[6] ;
  wire \gwdc.wr_data_count_i_reg[6]_i_1_n_2 ;
  wire \gwdc.wr_data_count_i_reg[6]_i_1_n_3 ;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;
  wire wrst_busy;
  wire [0:0]\NLW_gwdc.wr_data_count_i_reg[3]_i_1_O_UNCONNECTED ;
  wire [3:2]\NLW_gwdc.wr_data_count_i_reg[6]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_gwdc.wr_data_count_i_reg[6]_i_1_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__3 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h9AAA)) 
    \count_value_i[2]_i_1__1 
       (.I0(Q[2]),
        .I1(\count_value_i_reg[2]_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\count_value_i[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'hAA6AAAAA)) 
    \count_value_i[3]_i_1__1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\count_value_i_reg[2]_0 ),
        .I4(Q[2]),
        .O(\count_value_i[3]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hA6AAAAAAAAAAAAAA)) 
    \count_value_i[4]_i_1__1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i_reg[2]_0 ),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[4]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \count_value_i[5]_i_1__1 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(\count_value_i[6]_i_2_n_0 ),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(\count_value_i[5]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \count_value_i[6]_i_1 
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(\count_value_i[6]_i_2_n_0 ),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(\count_value_i[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[6]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(wrst_busy),
        .I3(rst_d1),
        .I4(\count_value_i_reg[6]_0 ),
        .I5(wr_en),
        .O(\count_value_i[6]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1__3_n_0 ),
        .Q(Q[0]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1__1_n_0 ),
        .Q(Q[1]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1__1_n_0 ),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1__1_n_0 ),
        .Q(Q[3]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[4]_i_1__1_n_0 ),
        .Q(Q[4]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[5]_i_1__1_n_0 ),
        .Q(Q[5]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(wrst_busy));
  LUT2 #(
    .INIT(4'h9)) 
    \gwdc.wr_data_count_i[3]_i_2 
       (.I0(Q[3]),
        .I1(\gwdc.wr_data_count_i_reg[6] [3]),
        .O(\gwdc.wr_data_count_i[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gwdc.wr_data_count_i[3]_i_3 
       (.I0(Q[2]),
        .I1(\gwdc.wr_data_count_i_reg[6] [2]),
        .O(\gwdc.wr_data_count_i[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gwdc.wr_data_count_i[3]_i_4 
       (.I0(Q[1]),
        .I1(\gwdc.wr_data_count_i_reg[6] [1]),
        .O(\gwdc.wr_data_count_i[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gwdc.wr_data_count_i[3]_i_5 
       (.I0(Q[0]),
        .I1(\gwdc.wr_data_count_i_reg[6] [0]),
        .O(\gwdc.wr_data_count_i[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gwdc.wr_data_count_i[6]_i_2 
       (.I0(Q[6]),
        .I1(\gwdc.wr_data_count_i_reg[6] [6]),
        .O(\gwdc.wr_data_count_i[6]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gwdc.wr_data_count_i[6]_i_3 
       (.I0(Q[5]),
        .I1(\gwdc.wr_data_count_i_reg[6] [5]),
        .O(\gwdc.wr_data_count_i[6]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gwdc.wr_data_count_i[6]_i_4 
       (.I0(Q[4]),
        .I1(\gwdc.wr_data_count_i_reg[6] [4]),
        .O(\gwdc.wr_data_count_i[6]_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gwdc.wr_data_count_i_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\gwdc.wr_data_count_i_reg[3]_i_1_n_0 ,\gwdc.wr_data_count_i_reg[3]_i_1_n_1 ,\gwdc.wr_data_count_i_reg[3]_i_1_n_2 ,\gwdc.wr_data_count_i_reg[3]_i_1_n_3 }),
        .CYINIT(1'b1),
        .DI(Q[3:0]),
        .O({D[2:0],\NLW_gwdc.wr_data_count_i_reg[3]_i_1_O_UNCONNECTED [0]}),
        .S({\gwdc.wr_data_count_i[3]_i_2_n_0 ,\gwdc.wr_data_count_i[3]_i_3_n_0 ,\gwdc.wr_data_count_i[3]_i_4_n_0 ,\gwdc.wr_data_count_i[3]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gwdc.wr_data_count_i_reg[6]_i_1 
       (.CI(\gwdc.wr_data_count_i_reg[3]_i_1_n_0 ),
        .CO({\NLW_gwdc.wr_data_count_i_reg[6]_i_1_CO_UNCONNECTED [3:2],\gwdc.wr_data_count_i_reg[6]_i_1_n_2 ,\gwdc.wr_data_count_i_reg[6]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,Q[5:4]}),
        .O({\NLW_gwdc.wr_data_count_i_reg[6]_i_1_O_UNCONNECTED [3],D[5:3]}),
        .S({1'b0,\gwdc.wr_data_count_i[6]_i_2_n_0 ,\gwdc.wr_data_count_i[6]_i_3_n_0 ,\gwdc.wr_data_count_i[6]_i_4_n_0 }));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module icyradio_axi_quad_spi_0_0_xpm_counter_updn__parameterized3
   (ram_empty_i0,
    E,
    \gen_pf_ic_rc.ram_empty_i_reg ,
    \gen_pf_ic_rc.ram_empty_i_reg_0 ,
    Q,
    rd_en,
    ram_empty_i,
    \gen_pf_ic_rc.ram_empty_i_reg_1 ,
    \count_value_i_reg[0]_0 ,
    rd_clk);
  output ram_empty_i0;
  input [0:0]E;
  input \gen_pf_ic_rc.ram_empty_i_reg ;
  input \gen_pf_ic_rc.ram_empty_i_reg_0 ;
  input [1:0]Q;
  input rd_en;
  input ram_empty_i;
  input [5:0]\gen_pf_ic_rc.ram_empty_i_reg_1 ;
  input \count_value_i_reg[0]_0 ;
  input rd_clk;

  wire [0:0]E;
  wire [1:0]Q;
  wire \count_value_i[0]_i_1_n_0 ;
  wire \count_value_i[1]_i_1__3_n_0 ;
  wire \count_value_i[2]_i_1__3_n_0 ;
  wire \count_value_i[3]_i_1__3_n_0 ;
  wire \count_value_i[4]_i_1__3_n_0 ;
  wire \count_value_i[5]_i_1__3_n_0 ;
  wire \count_value_i[5]_i_2__2_n_0 ;
  wire \count_value_i_reg[0]_0 ;
  wire \count_value_i_reg_n_0_[0] ;
  wire \count_value_i_reg_n_0_[1] ;
  wire \count_value_i_reg_n_0_[2] ;
  wire \count_value_i_reg_n_0_[3] ;
  wire \count_value_i_reg_n_0_[4] ;
  wire \count_value_i_reg_n_0_[5] ;
  wire \gen_pf_ic_rc.ram_empty_i_i_2_n_0 ;
  wire \gen_pf_ic_rc.ram_empty_i_i_3_n_0 ;
  wire \gen_pf_ic_rc.ram_empty_i_reg ;
  wire \gen_pf_ic_rc.ram_empty_i_reg_0 ;
  wire [5:0]\gen_pf_ic_rc.ram_empty_i_reg_1 ;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire rd_clk;
  wire rd_en;

  LUT4 #(
    .INIT(16'h04FB)) 
    \count_value_i[0]_i_1 
       (.I0(rd_en),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\count_value_i_reg_n_0_[0] ),
        .O(\count_value_i[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h04FFFB00)) 
    \count_value_i[1]_i_1__3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(rd_en),
        .I3(\count_value_i_reg_n_0_[0] ),
        .I4(\count_value_i_reg_n_0_[1] ),
        .O(\count_value_i[1]_i_1__3_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__3 
       (.I0(\count_value_i_reg_n_0_[0] ),
        .I1(\count_value_i_reg_n_0_[1] ),
        .I2(\count_value_i_reg_n_0_[2] ),
        .O(\count_value_i[2]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__3 
       (.I0(\count_value_i_reg_n_0_[2] ),
        .I1(\count_value_i_reg_n_0_[1] ),
        .I2(\count_value_i_reg_n_0_[0] ),
        .I3(\count_value_i_reg_n_0_[3] ),
        .O(\count_value_i[3]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__3 
       (.I0(\count_value_i_reg_n_0_[0] ),
        .I1(\count_value_i_reg_n_0_[1] ),
        .I2(\count_value_i_reg_n_0_[2] ),
        .I3(\count_value_i_reg_n_0_[3] ),
        .I4(\count_value_i_reg_n_0_[4] ),
        .O(\count_value_i[4]_i_1__3_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__3 
       (.I0(\count_value_i_reg_n_0_[4] ),
        .I1(\count_value_i_reg_n_0_[3] ),
        .I2(\count_value_i_reg_n_0_[2] ),
        .I3(\count_value_i[5]_i_2__2_n_0 ),
        .I4(\count_value_i_reg_n_0_[5] ),
        .O(\count_value_i[5]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'h0000AA8A00000000)) 
    \count_value_i[5]_i_2__2 
       (.I0(\count_value_i_reg_n_0_[1] ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(rd_en),
        .I4(ram_empty_i),
        .I5(\count_value_i_reg_n_0_[0] ),
        .O(\count_value_i[5]_i_2__2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1_n_0 ),
        .Q(\count_value_i_reg_n_0_[0] ),
        .S(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1__3_n_0 ),
        .Q(\count_value_i_reg_n_0_[1] ),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1__3_n_0 ),
        .Q(\count_value_i_reg_n_0_[2] ),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1__3_n_0 ),
        .Q(\count_value_i_reg_n_0_[3] ),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[4]_i_1__3_n_0 ),
        .Q(\count_value_i_reg_n_0_[4] ),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[5]_i_1__3_n_0 ),
        .Q(\count_value_i_reg_n_0_[5] ),
        .R(\count_value_i_reg[0]_0 ));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \gen_pf_ic_rc.ram_empty_i_i_1 
       (.I0(\gen_pf_ic_rc.ram_empty_i_i_2_n_0 ),
        .I1(\gen_pf_ic_rc.ram_empty_i_i_3_n_0 ),
        .I2(E),
        .I3(\gen_pf_ic_rc.ram_empty_i_reg ),
        .I4(\gen_pf_ic_rc.ram_empty_i_reg_0 ),
        .O(ram_empty_i0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ram_empty_i_i_2 
       (.I0(\count_value_i_reg_n_0_[1] ),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg_1 [1]),
        .I2(\count_value_i_reg_n_0_[0] ),
        .I3(\gen_pf_ic_rc.ram_empty_i_reg_1 [0]),
        .I4(\gen_pf_ic_rc.ram_empty_i_reg_1 [2]),
        .I5(\count_value_i_reg_n_0_[2] ),
        .O(\gen_pf_ic_rc.ram_empty_i_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ram_empty_i_i_3 
       (.I0(\count_value_i_reg_n_0_[4] ),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg_1 [4]),
        .I2(\count_value_i_reg_n_0_[3] ),
        .I3(\gen_pf_ic_rc.ram_empty_i_reg_1 [3]),
        .I4(\gen_pf_ic_rc.ram_empty_i_reg_1 [5]),
        .I5(\count_value_i_reg_n_0_[5] ),
        .O(\gen_pf_ic_rc.ram_empty_i_i_3_n_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module icyradio_axi_quad_spi_0_0_xpm_counter_updn__parameterized3_4
   (Q,
    \count_value_i_reg[0]_0 ,
    D,
    \count_value_i_reg[2]_0 ,
    wrst_busy,
    rst_d1,
    \count_value_i_reg[5]_0 ,
    wr_en,
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6] ,
    E,
    S,
    wr_clk);
  output [2:0]Q;
  output \count_value_i_reg[0]_0 ;
  output [2:0]D;
  input \count_value_i_reg[2]_0 ;
  input wrst_busy;
  input rst_d1;
  input \count_value_i_reg[5]_0 ;
  input wr_en;
  input [4:0]\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6] ;
  input [0:0]E;
  input [0:0]S;
  input wr_clk;

  wire [2:0]D;
  wire [0:0]E;
  wire [2:0]Q;
  wire [0:0]S;
  wire \count_value_i[0]_i_1__2_n_0 ;
  wire \count_value_i[1]_i_1__0_n_0 ;
  wire \count_value_i[2]_i_1__0_n_0 ;
  wire \count_value_i[3]_i_1__0_n_0 ;
  wire \count_value_i[4]_i_1__0_n_0 ;
  wire \count_value_i[5]_i_1__0_n_0 ;
  wire \count_value_i[5]_i_2__0_n_0 ;
  wire \count_value_i_reg[0]_0 ;
  wire \count_value_i_reg[2]_0 ;
  wire \count_value_i_reg[5]_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_3_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_4_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_5_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[6]_i_3_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_1 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_2 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_3 ;
  wire [4:0]\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6] ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6]_i_1_n_3 ;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;
  wire [3:1]wr_pntr_plus1_pf;
  wire wrst_busy;
  wire [2:0]\NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_O_UNCONNECTED ;
  wire [3:1]\NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6]_i_1_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__2 
       (.I0(wr_pntr_plus1_pf[1]),
        .O(\count_value_i[0]_i_1__2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__0 
       (.I0(wr_pntr_plus1_pf[1]),
        .I1(wr_pntr_plus1_pf[2]),
        .O(\count_value_i[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h9AAA)) 
    \count_value_i[2]_i_1__0 
       (.I0(wr_pntr_plus1_pf[3]),
        .I1(\count_value_i_reg[2]_0 ),
        .I2(wr_pntr_plus1_pf[1]),
        .I3(wr_pntr_plus1_pf[2]),
        .O(\count_value_i[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'hAA6AAAAA)) 
    \count_value_i[3]_i_1__0 
       (.I0(Q[0]),
        .I1(wr_pntr_plus1_pf[2]),
        .I2(wr_pntr_plus1_pf[1]),
        .I3(\count_value_i_reg[2]_0 ),
        .I4(wr_pntr_plus1_pf[3]),
        .O(\count_value_i[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hA6AAAAAAAAAAAAAA)) 
    \count_value_i[4]_i_1__0 
       (.I0(Q[1]),
        .I1(wr_pntr_plus1_pf[3]),
        .I2(\count_value_i_reg[2]_0 ),
        .I3(wr_pntr_plus1_pf[1]),
        .I4(wr_pntr_plus1_pf[2]),
        .I5(Q[0]),
        .O(\count_value_i[4]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \count_value_i[5]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(\count_value_i[5]_i_2__0_n_0 ),
        .I3(wr_pntr_plus1_pf[3]),
        .I4(Q[1]),
        .O(\count_value_i[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[5]_i_2__0 
       (.I0(wr_pntr_plus1_pf[2]),
        .I1(wr_pntr_plus1_pf[1]),
        .I2(wrst_busy),
        .I3(rst_d1),
        .I4(\count_value_i_reg[5]_0 ),
        .I5(wr_en),
        .O(\count_value_i[5]_i_2__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1__2_n_0 ),
        .Q(wr_pntr_plus1_pf[1]),
        .S(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1__0_n_0 ),
        .Q(wr_pntr_plus1_pf[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1__0_n_0 ),
        .Q(wr_pntr_plus1_pf[3]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1__0_n_0 ),
        .Q(Q[0]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[4]_i_1__0_n_0 ),
        .Q(Q[1]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[5]_i_1__0_n_0 ),
        .Q(Q[2]),
        .R(wrst_busy));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_3 
       (.I0(wr_pntr_plus1_pf[1]),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6] [0]),
        .I2(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6] [2]),
        .I3(wr_pntr_plus1_pf[3]),
        .I4(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6] [1]),
        .I5(wr_pntr_plus1_pf[2]),
        .O(\count_value_i_reg[0]_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2 
       (.I0(Q[0]),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6] [3]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_3 
       (.I0(wr_pntr_plus1_pf[3]),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6] [2]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_4 
       (.I0(wr_pntr_plus1_pf[2]),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6] [1]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_5 
       (.I0(wr_pntr_plus1_pf[1]),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6] [0]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[6]_i_3 
       (.I0(Q[1]),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6] [4]),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[6]_i_3_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_0 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_1 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_2 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_3 }),
        .CYINIT(E),
        .DI({Q[0],wr_pntr_plus1_pf}),
        .O({D[0],\NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_O_UNCONNECTED [2:0]}),
        .S({\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2_n_0 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_3_n_0 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_4_n_0 ,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6]_i_1 
       (.CI(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_0 ),
        .CO({\NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6]_i_1_CO_UNCONNECTED [3:1],\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,Q[1]}),
        .O({\NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6]_i_1_O_UNCONNECTED [3:2],D[2:1]}),
        .S({1'b0,1'b0,S,\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[6]_i_3_n_0 }));
endmodule

(* CASCADE_HEIGHT = "0" *) (* CDC_SYNC_STAGES = "2" *) (* DOUT_RESET_VALUE = "0" *) 
(* ECC_MODE = "no_ecc" *) (* EN_ADV_FEATURE_ASYNC = "16'b0001111100011111" *) (* FIFO_MEMORY_TYPE = "auto" *) 
(* FIFO_READ_LATENCY = "0" *) (* FIFO_WRITE_DEPTH = "64" *) (* FULL_RESET_VALUE = "1" *) 
(* ORIG_REF_NAME = "xpm_fifo_async" *) (* PROG_EMPTY_THRESH = "10" *) (* PROG_FULL_THRESH = "10" *) 
(* P_COMMON_CLOCK = "0" *) (* P_ECC_MODE = "0" *) (* P_FIFO_MEMORY_TYPE = "0" *) 
(* P_READ_MODE = "1" *) (* P_WAKEUP_TIME = "2" *) (* RD_DATA_COUNT_WIDTH = "6" *) 
(* READ_DATA_WIDTH = "32" *) (* READ_MODE = "fwft" *) (* RELATED_CLOCKS = "0" *) 
(* SIM_ASSERT_CHK = "0" *) (* USE_ADV_FEATURES = "1F1F" *) (* WAKEUP_TIME = "0" *) 
(* WRITE_DATA_WIDTH = "32" *) (* WR_DATA_COUNT_WIDTH = "6" *) (* XPM_MODULE = "TRUE" *) 
(* dont_touch = "true" *) 
module icyradio_axi_quad_spi_0_0_xpm_fifo_async
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_clk,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [31:0]din;
  output full;
  output prog_full;
  output [5:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_clk;
  input rd_en;
  output [31:0]dout;
  output empty;
  output prog_empty;
  output [5:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire almost_empty;
  wire almost_full;
  wire data_valid;
  wire [31:0]din;
  wire [31:0]dout;
  wire empty;
  wire full;
  wire overflow;
  wire prog_empty;
  wire prog_full;
  wire rd_clk;
  wire [5:0]rd_data_count;
  wire rd_en;
  wire rd_rst_busy;
  wire rst;
  wire sleep;
  wire underflow;
  wire wr_ack;
  wire wr_clk;
  wire [5:0]wr_data_count;
  wire wr_en;
  wire wr_rst_busy;
  wire \NLW_gnuram_async_fifo.xpm_fifo_base_inst_dbiterr_UNCONNECTED ;
  wire \NLW_gnuram_async_fifo.xpm_fifo_base_inst_full_n_UNCONNECTED ;
  wire \NLW_gnuram_async_fifo.xpm_fifo_base_inst_sbiterr_UNCONNECTED ;

  assign dbiterr = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* CASCADE_HEIGHT = "0" *) 
  (* CDC_DEST_SYNC_FF = "2" *) 
  (* COMMON_CLOCK = "0" *) 
  (* DOUT_RESET_VALUE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* ENABLE_ECC = "0" *) 
  (* EN_ADV_FEATURE = "16'b0001111100011111" *) 
  (* EN_AE = "1'b1" *) 
  (* EN_AF = "1'b1" *) 
  (* EN_DVLD = "1'b1" *) 
  (* EN_OF = "1'b1" *) 
  (* EN_PE = "1'b1" *) 
  (* EN_PF = "1'b1" *) 
  (* EN_RDC = "1'b1" *) 
  (* EN_UF = "1'b1" *) 
  (* EN_WACK = "1'b1" *) 
  (* EN_WDC = "1'b1" *) 
  (* FG_EQ_ASYM_DOUT = "1'b0" *) 
  (* FIFO_MEMORY_TYPE = "0" *) 
  (* FIFO_MEM_TYPE = "0" *) 
  (* FIFO_READ_DEPTH = "64" *) 
  (* FIFO_READ_LATENCY = "0" *) 
  (* FIFO_SIZE = "2048" *) 
  (* FIFO_WRITE_DEPTH = "64" *) 
  (* FULL_RESET_VALUE = "1" *) 
  (* FULL_RST_VAL = "1'b1" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* PE_THRESH_ADJ = "8" *) 
  (* PE_THRESH_MAX = "59" *) 
  (* PE_THRESH_MIN = "5" *) 
  (* PF_THRESH_ADJ = "8" *) 
  (* PF_THRESH_MAX = "59" *) 
  (* PF_THRESH_MIN = "7" *) 
  (* PROG_EMPTY_THRESH = "10" *) 
  (* PROG_FULL_THRESH = "10" *) 
  (* RD_DATA_COUNT_WIDTH = "6" *) 
  (* RD_DC_WIDTH_EXT = "7" *) 
  (* RD_LATENCY = "2" *) 
  (* RD_MODE = "1" *) 
  (* RD_PNTR_WIDTH = "6" *) 
  (* READ_DATA_WIDTH = "32" *) 
  (* READ_MODE = "1" *) 
  (* READ_MODE_LL = "1" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "1F1F" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WIDTH_RATIO = "1" *) 
  (* WRITE_DATA_WIDTH = "32" *) 
  (* WR_DATA_COUNT_WIDTH = "6" *) 
  (* WR_DC_WIDTH_EXT = "7" *) 
  (* WR_DEPTH_LOG = "6" *) 
  (* WR_PNTR_WIDTH = "6" *) 
  (* WR_RD_RATIO = "0" *) 
  (* WR_WIDTH_LOG = "5" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* both_stages_valid = "3" *) 
  (* invalid = "0" *) 
  (* stage1_valid = "2" *) 
  (* stage2_valid = "1" *) 
  icyradio_axi_quad_spi_0_0_xpm_fifo_base \gnuram_async_fifo.xpm_fifo_base_inst 
       (.almost_empty(almost_empty),
        .almost_full(almost_full),
        .data_valid(data_valid),
        .dbiterr(\NLW_gnuram_async_fifo.xpm_fifo_base_inst_dbiterr_UNCONNECTED ),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .full_n(\NLW_gnuram_async_fifo.xpm_fifo_base_inst_full_n_UNCONNECTED ),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(overflow),
        .prog_empty(prog_empty),
        .prog_full(prog_full),
        .rd_clk(rd_clk),
        .rd_data_count(rd_data_count),
        .rd_en(rd_en),
        .rd_rst_busy(rd_rst_busy),
        .rst(rst),
        .sbiterr(\NLW_gnuram_async_fifo.xpm_fifo_base_inst_sbiterr_UNCONNECTED ),
        .sleep(sleep),
        .underflow(underflow),
        .wr_ack(wr_ack),
        .wr_clk(wr_clk),
        .wr_data_count(wr_data_count),
        .wr_en(wr_en),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* CASCADE_HEIGHT = "0" *) (* CDC_DEST_SYNC_FF = "2" *) (* COMMON_CLOCK = "0" *) 
(* DOUT_RESET_VALUE = "0" *) (* ECC_MODE = "0" *) (* ENABLE_ECC = "0" *) 
(* EN_ADV_FEATURE = "16'b0001111100011111" *) (* EN_AE = "1'b1" *) (* EN_AF = "1'b1" *) 
(* EN_DVLD = "1'b1" *) (* EN_OF = "1'b1" *) (* EN_PE = "1'b1" *) 
(* EN_PF = "1'b1" *) (* EN_RDC = "1'b1" *) (* EN_UF = "1'b1" *) 
(* EN_WACK = "1'b1" *) (* EN_WDC = "1'b1" *) (* FG_EQ_ASYM_DOUT = "1'b0" *) 
(* FIFO_MEMORY_TYPE = "0" *) (* FIFO_MEM_TYPE = "0" *) (* FIFO_READ_DEPTH = "64" *) 
(* FIFO_READ_LATENCY = "0" *) (* FIFO_SIZE = "2048" *) (* FIFO_WRITE_DEPTH = "64" *) 
(* FULL_RESET_VALUE = "1" *) (* FULL_RST_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_fifo_base" *) 
(* PE_THRESH_ADJ = "8" *) (* PE_THRESH_MAX = "59" *) (* PE_THRESH_MIN = "5" *) 
(* PF_THRESH_ADJ = "8" *) (* PF_THRESH_MAX = "59" *) (* PF_THRESH_MIN = "7" *) 
(* PROG_EMPTY_THRESH = "10" *) (* PROG_FULL_THRESH = "10" *) (* RD_DATA_COUNT_WIDTH = "6" *) 
(* RD_DC_WIDTH_EXT = "7" *) (* RD_LATENCY = "2" *) (* RD_MODE = "1" *) 
(* RD_PNTR_WIDTH = "6" *) (* READ_DATA_WIDTH = "32" *) (* READ_MODE = "1" *) 
(* READ_MODE_LL = "1" *) (* RELATED_CLOCKS = "0" *) (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
(* SIM_ASSERT_CHK = "0" *) (* USE_ADV_FEATURES = "1F1F" *) (* VERSION = "0" *) 
(* WAKEUP_TIME = "0" *) (* WIDTH_RATIO = "1" *) (* WRITE_DATA_WIDTH = "32" *) 
(* WR_DATA_COUNT_WIDTH = "6" *) (* WR_DC_WIDTH_EXT = "7" *) (* WR_DEPTH_LOG = "6" *) 
(* WR_PNTR_WIDTH = "6" *) (* WR_RD_RATIO = "0" *) (* WR_WIDTH_LOG = "5" *) 
(* XPM_MODULE = "TRUE" *) (* both_stages_valid = "3" *) (* invalid = "0" *) 
(* keep_hierarchy = "soft" *) (* stage1_valid = "2" *) (* stage2_valid = "1" *) 
module icyradio_axi_quad_spi_0_0_xpm_fifo_base
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    full_n,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_clk,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [31:0]din;
  output full;
  output full_n;
  output prog_full;
  output [5:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_clk;
  input rd_en;
  output [31:0]dout;
  output empty;
  output prog_empty;
  output [5:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire aempty_fwft_i0;
  wire almost_empty;
  wire almost_full;
  wire clr_full;
  wire [1:0]curr_fwft_state;
  wire data_valid;
  wire data_valid_fwft1;
  wire [5:0]diff_pntr_pe;
  wire [6:4]diff_pntr_pf_q;
  wire [6:4]diff_pntr_pf_q0;
  wire [31:0]din;
  wire [31:0]dout;
  wire empty;
  wire full;
  wire \gaf_wptr_p3.wrpp3_inst_n_0 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_0 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_1 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_2 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_3 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_4 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_5 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_6 ;
  wire \gen_cdc_pntr.rpw_gray_reg_n_6 ;
  wire \gen_cdc_pntr.rpw_gray_reg_n_7 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_0 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_1 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_10 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_2 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_3 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_4 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_5 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_6 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_7 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_8 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_9 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_0 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_1 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_2 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_3 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_4 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_5 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_6 ;
  wire \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0 ;
  wire \gen_fwft.ram_regout_en ;
  wire \gen_fwft.rdpp1_inst_n_1 ;
  wire \gen_fwft.rdpp1_inst_n_2 ;
  wire \gen_fwft.rdpp1_inst_n_3 ;
  wire \gen_fwft.rdpp1_inst_n_4 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[0] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[1] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[2] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[3] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[4] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[5] ;
  wire \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_2_n_0 ;
  wire [6:1]\grdc.diff_wr_rd_pntr_rdc ;
  wire \grdc.rd_data_count_i0 ;
  wire [6:1]\gwdc.diff_wr_rd_pntr1_out ;
  wire [1:0]next_fwft_state__0;
  wire overflow;
  wire p_1_in;
  wire prog_empty;
  wire prog_full;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire ram_rd_en_i;
  wire rd_clk;
  wire [5:0]rd_data_count;
  wire rd_en;
  wire [5:0]rd_pntr_ext;
  wire [5:0]rd_pntr_wr;
  wire [5:0]rd_pntr_wr_cdc;
  wire [6:0]rd_pntr_wr_cdc_dc;
  wire rd_rst_busy;
  wire rdp_inst_n_0;
  wire rdp_inst_n_14;
  wire rdp_inst_n_21;
  wire rdp_inst_n_22;
  wire rdp_inst_n_23;
  wire rdp_inst_n_24;
  wire rdp_inst_n_25;
  wire rst;
  wire rst_d1;
  wire rst_d1_inst_n_1;
  wire sleep;
  wire [6:0]src_in_bin00_out;
  wire underflow;
  wire underflow_i0;
  wire wr_ack;
  wire wr_clk;
  wire [5:0]wr_data_count;
  wire wr_en;
  wire [6:0]wr_pntr_ext;
  wire [6:4]wr_pntr_plus1_pf;
  wire wr_pntr_plus1_pf_carry;
  wire [5:0]wr_pntr_rd_cdc;
  wire [6:0]wr_pntr_rd_cdc_dc;
  wire wr_rst_busy;
  wire wrpp1_inst_n_3;
  wire wrpp2_inst_n_0;
  wire wrst_busy;
  wire xpm_fifo_rst_inst_n_2;
  wire xpm_fifo_rst_inst_n_6;
  wire xpm_fifo_rst_inst_n_7;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ;
  wire [31:0]\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED ;

  assign dbiterr = \<const0> ;
  assign full_n = \<const0> ;
  assign sbiterr = \<const0> ;
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h7883)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1 
       (.I0(rd_en),
        .I1(curr_fwft_state[1]),
        .I2(ram_empty_i),
        .I3(curr_fwft_state[0]),
        .O(next_fwft_state__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h3FF0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1 
       (.I0(ram_empty_i),
        .I1(rd_en),
        .I2(curr_fwft_state[0]),
        .I3(curr_fwft_state[1]),
        .O(next_fwft_state__0[1]));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[0]),
        .Q(curr_fwft_state[0]),
        .R(rd_rst_busy));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[1]),
        .Q(curr_fwft_state[1]),
        .R(rd_rst_busy));
  GND GND
       (.G(\<const0> ));
  icyradio_axi_quad_spi_0_0_xpm_counter_updn \gaf_wptr_p3.wrpp3_inst 
       (.E(wr_pntr_plus1_pf_carry),
        .Q(rd_pntr_wr),
        .almost_full(almost_full),
        .clr_full(clr_full),
        .\count_value_i_reg[2]_0 (xpm_fifo_rst_inst_n_6),
        .\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg (wrpp2_inst_n_0),
        .\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0 (full),
        .\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg (\gaf_wptr_p3.wrpp3_inst_n_0 ),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wrst_busy(wrst_busy));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "7" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  icyradio_axi_quad_spi_0_0_xpm_cdc_gray__parameterized1 \gen_cdc_pntr.rd_pntr_cdc_dc_inst 
       (.dest_clk(wr_clk),
        .dest_out_bin(rd_pntr_wr_cdc_dc),
        .src_clk(rd_clk),
        .src_in_bin(src_in_bin00_out));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "6" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  icyradio_axi_quad_spi_0_0_xpm_cdc_gray \gen_cdc_pntr.rd_pntr_cdc_inst 
       (.dest_clk(wr_clk),
        .dest_out_bin(rd_pntr_wr_cdc),
        .src_clk(rd_clk),
        .src_in_bin(rd_pntr_ext));
  icyradio_axi_quad_spi_0_0_xpm_fifo_reg_vec \gen_cdc_pntr.rpw_gray_reg 
       (.D(rd_pntr_wr_cdc),
        .Q(rd_pntr_wr),
        .S(\gen_cdc_pntr.rpw_gray_reg_n_6 ),
        .clr_full(clr_full),
        .\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg (wr_pntr_plus1_pf),
        .\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 (wrpp1_inst_n_3),
        .\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_1 (xpm_fifo_rst_inst_n_6),
        .\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_2 (wrpp2_inst_n_0),
        .\reg_out_i_reg[4]_0 (\gen_cdc_pntr.rpw_gray_reg_n_7 ),
        .wr_clk(wr_clk),
        .wrst_busy(wrst_busy));
  icyradio_axi_quad_spi_0_0_xpm_fifo_reg_vec__parameterized0 \gen_cdc_pntr.rpw_gray_reg_dc 
       (.D(rd_pntr_wr_cdc_dc),
        .Q({\gen_cdc_pntr.rpw_gray_reg_dc_n_0 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_1 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_2 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_3 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_4 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_5 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_6 }),
        .wr_clk(wr_clk),
        .wrst_busy(wrst_busy));
  icyradio_axi_quad_spi_0_0_xpm_fifo_reg_vec_1 \gen_cdc_pntr.wpr_gray_reg 
       (.D(diff_pntr_pe),
        .DI(p_1_in),
        .Q({\gen_cdc_pntr.wpr_gray_reg_n_1 ,\gen_cdc_pntr.wpr_gray_reg_n_2 ,\gen_cdc_pntr.wpr_gray_reg_n_3 ,\gen_cdc_pntr.wpr_gray_reg_n_4 ,\gen_cdc_pntr.wpr_gray_reg_n_5 ,\gen_cdc_pntr.wpr_gray_reg_n_6 }),
        .S({rdp_inst_n_21,rdp_inst_n_22,rdp_inst_n_23,rdp_inst_n_24}),
        .\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5] (rdp_inst_n_25),
        .\gen_pf_ic_rc.ram_empty_i_reg (rd_pntr_ext[5:3]),
        .rd_clk(rd_clk),
        .\reg_out_i_reg[0]_0 (rd_rst_busy),
        .\reg_out_i_reg[5]_0 (\gen_cdc_pntr.wpr_gray_reg_n_0 ),
        .\reg_out_i_reg[5]_1 (wr_pntr_rd_cdc));
  icyradio_axi_quad_spi_0_0_xpm_fifo_reg_vec__parameterized0_2 \gen_cdc_pntr.wpr_gray_reg_dc 
       (.D(wr_pntr_rd_cdc_dc),
        .DI({\gen_cdc_pntr.wpr_gray_reg_dc_n_0 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_1 }),
        .Q({\gen_cdc_pntr.wpr_gray_reg_dc_n_2 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_3 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_4 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_5 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_6 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_7 }),
        .S(\gen_cdc_pntr.wpr_gray_reg_dc_n_10 ),
        .\grdc.rd_data_count_i_reg[3] (\gen_fwft.rdpp1_inst_n_4 ),
        .\grdc.rd_data_count_i_reg[6] ({rdp_inst_n_0,rd_pntr_ext[5:1]}),
        .rd_clk(rd_clk),
        .\reg_out_i_reg[4]_0 ({\gen_cdc_pntr.wpr_gray_reg_dc_n_8 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_9 }),
        .\reg_out_i_reg[6]_0 (rd_rst_busy));
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "7" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  icyradio_axi_quad_spi_0_0_xpm_cdc_gray__parameterized0 \gen_cdc_pntr.wr_pntr_cdc_dc_inst 
       (.dest_clk(rd_clk),
        .dest_out_bin(wr_pntr_rd_cdc_dc),
        .src_clk(wr_clk),
        .src_in_bin(wr_pntr_ext));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "6" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  icyradio_axi_quad_spi_0_0_xpm_cdc_gray__1 \gen_cdc_pntr.wr_pntr_cdc_inst 
       (.dest_clk(rd_clk),
        .dest_out_bin(wr_pntr_rd_cdc),
        .src_clk(wr_clk),
        .src_in_bin(wr_pntr_ext[5:0]));
  LUT4 #(
    .INIT(16'hE0CC)) 
    \gen_fwft.empty_fwft_i_i_1 
       (.I0(rd_en),
        .I1(empty),
        .I2(curr_fwft_state[1]),
        .I3(curr_fwft_state[0]),
        .O(data_valid_fwft1));
  FDSE #(
    .INIT(1'b1)) 
    \gen_fwft.empty_fwft_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(data_valid_fwft1),
        .Q(empty),
        .S(rd_rst_busy));
  LUT5 #(
    .INIT(32'hDCCCC444)) 
    \gen_fwft.gae_fwft.aempty_fwft_i_i_1 
       (.I0(curr_fwft_state[0]),
        .I1(almost_empty),
        .I2(rd_en),
        .I3(curr_fwft_state[1]),
        .I4(ram_empty_i),
        .O(aempty_fwft_i0));
  FDSE #(
    .INIT(1'b1)) 
    \gen_fwft.gae_fwft.aempty_fwft_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(aempty_fwft_i0),
        .Q(almost_empty),
        .S(rd_rst_busy));
  LUT4 #(
    .INIT(16'h15F5)) 
    \gen_fwft.gdvld_fwft.data_valid_fwft_i_1 
       (.I0(empty),
        .I1(rd_en),
        .I2(curr_fwft_state[0]),
        .I3(curr_fwft_state[1]),
        .O(\gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fwft.gdvld_fwft.data_valid_fwft_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0 ),
        .Q(data_valid),
        .R(rd_rst_busy));
  icyradio_axi_quad_spi_0_0_xpm_counter_updn__parameterized1 \gen_fwft.rdpp1_inst 
       (.DI({\gen_fwft.rdpp1_inst_n_2 ,\gen_fwft.rdpp1_inst_n_3 }),
        .Q(rd_pntr_ext[0]),
        .\count_value_i_reg[0]_0 (\gen_fwft.rdpp1_inst_n_1 ),
        .\count_value_i_reg[1]_0 (\gen_fwft.rdpp1_inst_n_4 ),
        .\count_value_i_reg[1]_1 (rd_rst_busy),
        .\count_value_i_reg[1]_2 (curr_fwft_state),
        .ram_empty_i(ram_empty_i),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .src_in_bin(src_in_bin00_out[0]));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gaf_wptr_p3.wrpp3_inst_n_0 ),
        .Q(almost_full),
        .S(wrst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_cdc_pntr.rpw_gray_reg_n_7 ),
        .Q(full),
        .S(wrst_busy));
  LUT4 #(
    .INIT(16'hAABA)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2 
       (.I0(ram_empty_i),
        .I1(rd_en),
        .I2(curr_fwft_state[1]),
        .I3(curr_fwft_state[0]),
        .O(p_1_in));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[0]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[0] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[1]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[1] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[2]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[2] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[3]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[3] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[4]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[4] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[5]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[5] ),
        .R(rd_rst_busy));
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1 
       (.I0(prog_empty),
        .I1(empty),
        .I2(\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_2_n_0 ),
        .O(\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000005557)) 
    \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_2 
       (.I0(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[3] ),
        .I1(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[2] ),
        .I2(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[1] ),
        .I3(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[0] ),
        .I4(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[5] ),
        .I5(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[4] ),
        .O(\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.gpe_ic.prog_empty_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0 ),
        .Q(prog_empty),
        .S(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[4]),
        .Q(diff_pntr_pf_q[4]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[5]),
        .Q(diff_pntr_pf_q[5]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[6]),
        .Q(diff_pntr_pf_q[6]),
        .R(wrst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.gpf_ic.prog_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rst_d1_inst_n_1),
        .Q(prog_full),
        .S(wrst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.ram_empty_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(ram_empty_i0),
        .Q(ram_empty_i),
        .S(rd_rst_busy));
  (* ADDR_WIDTH_A = "6" *) 
  (* ADDR_WIDTH_B = "6" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "32" *) 
  (* BYTE_WRITE_WIDTH_B = "32" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CLOCKING_MODE = "1" *) 
  (* ECC_MODE = "0" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* MAX_NUM_CHAR = "0" *) 
  (* \MEM.ADDRESS_SPACE  *) 
  (* \MEM.ADDRESS_SPACE_BEGIN  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_LSB  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_MSB  = "31" *) 
  (* \MEM.ADDRESS_SPACE_END  = "511" *) 
  (* \MEM.CORE_MEMORY_WIDTH  = "32" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "0" *) 
  (* MEMORY_SIZE = "2048" *) 
  (* MEMORY_TYPE = "1" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "64" *) 
  (* P_MEMORY_OPT = "yes" *) 
  (* P_MEMORY_PRIMITIVE = "auto" *) 
  (* P_MIN_WIDTH_DATA = "32" *) 
  (* P_MIN_WIDTH_DATA_A = "32" *) 
  (* P_MIN_WIDTH_DATA_B = "32" *) 
  (* P_MIN_WIDTH_DATA_ECC = "32" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "32" *) 
  (* P_NUM_COLS_WRITE_A = "1" *) 
  (* P_NUM_COLS_WRITE_B = "1" *) 
  (* P_NUM_ROWS_READ_A = "1" *) 
  (* P_NUM_ROWS_READ_B = "1" *) 
  (* P_NUM_ROWS_WRITE_A = "1" *) 
  (* P_NUM_ROWS_WRITE_B = "1" *) 
  (* P_SDP_WRITE_MODE = "yes" *) 
  (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) 
  (* P_WIDTH_ADDR_READ_A = "6" *) 
  (* P_WIDTH_ADDR_READ_B = "6" *) 
  (* P_WIDTH_ADDR_WRITE_A = "6" *) 
  (* P_WIDTH_ADDR_WRITE_B = "6" *) 
  (* P_WIDTH_COL_WRITE_A = "32" *) 
  (* P_WIDTH_COL_WRITE_B = "32" *) 
  (* READ_DATA_WIDTH_A = "32" *) 
  (* READ_DATA_WIDTH_B = "32" *) 
  (* READ_LATENCY_A = "2" *) 
  (* READ_LATENCY_B = "2" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "0" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "0" *) 
  (* USE_MEM_INIT_MMI = "0" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH_A = "32" *) 
  (* WRITE_DATA_WIDTH_B = "32" *) 
  (* WRITE_MODE_A = "2" *) 
  (* WRITE_MODE_B = "2" *) 
  (* WRITE_PROTECT = "1" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* rsta_loop_iter = "32" *) 
  (* rstb_loop_iter = "32" *) 
  icyradio_axi_quad_spi_0_0_xpm_memory_base \gen_sdpram.xpm_memory_base_inst 
       (.addra(wr_pntr_ext[5:0]),
        .addrb(rd_pntr_ext),
        .clka(wr_clk),
        .clkb(rd_clk),
        .dbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ),
        .dbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ),
        .dina(din),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED [31:0]),
        .doutb(dout),
        .ena(1'b0),
        .enb(ram_rd_en_i),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b0),
        .regceb(\gen_fwft.ram_regout_en ),
        .rsta(1'b0),
        .rstb(rd_rst_busy),
        .sbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ),
        .sbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ),
        .sleep(sleep),
        .wea(wr_pntr_plus1_pf_carry),
        .web(1'b0));
  LUT3 #(
    .INIT(8'h2C)) 
    \gen_sdpram.xpm_memory_base_inst_i_3 
       (.I0(rd_en),
        .I1(curr_fwft_state[0]),
        .I2(curr_fwft_state[1]),
        .O(\gen_fwft.ram_regout_en ));
  FDRE #(
    .INIT(1'b0)) 
    \gof.overflow_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(xpm_fifo_rst_inst_n_7),
        .Q(overflow),
        .R(1'b0));
  FDRE \grdc.rd_data_count_i_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [1]),
        .Q(rd_data_count[0]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [2]),
        .Q(rd_data_count[1]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [3]),
        .Q(rd_data_count[2]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [4]),
        .Q(rd_data_count[3]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[5] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [5]),
        .Q(rd_data_count[4]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[6] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [6]),
        .Q(rd_data_count[5]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE #(
    .INIT(1'b0)) 
    \guf.underflow_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(underflow_i0),
        .Q(underflow),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gwack.wr_ack_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(xpm_fifo_rst_inst_n_2),
        .Q(wr_ack),
        .R(1'b0));
  FDRE \gwdc.wr_data_count_i_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [1]),
        .Q(wr_data_count[0]),
        .R(wrst_busy));
  FDRE \gwdc.wr_data_count_i_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [2]),
        .Q(wr_data_count[1]),
        .R(wrst_busy));
  FDRE \gwdc.wr_data_count_i_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [3]),
        .Q(wr_data_count[2]),
        .R(wrst_busy));
  FDRE \gwdc.wr_data_count_i_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [4]),
        .Q(wr_data_count[3]),
        .R(wrst_busy));
  FDRE \gwdc.wr_data_count_i_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [5]),
        .Q(wr_data_count[4]),
        .R(wrst_busy));
  FDRE \gwdc.wr_data_count_i_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [6]),
        .Q(wr_data_count[5]),
        .R(wrst_busy));
  icyradio_axi_quad_spi_0_0_xpm_counter_updn__parameterized2 rdp_inst
       (.D(\grdc.diff_wr_rd_pntr_rdc ),
        .DI({\gen_cdc_pntr.wpr_gray_reg_dc_n_0 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_1 ,\gen_fwft.rdpp1_inst_n_2 ,\gen_fwft.rdpp1_inst_n_3 }),
        .E(ram_rd_en_i),
        .Q({rdp_inst_n_0,rd_pntr_ext}),
        .S(\gen_cdc_pntr.wpr_gray_reg_dc_n_10 ),
        .\count_value_i_reg[0]_0 (curr_fwft_state),
        .\count_value_i_reg[1]_0 (rdp_inst_n_14),
        .\count_value_i_reg[3]_0 ({rdp_inst_n_21,rdp_inst_n_22,rdp_inst_n_23,rdp_inst_n_24}),
        .\count_value_i_reg[4]_0 (rdp_inst_n_25),
        .\count_value_i_reg[6]_0 (rd_rst_busy),
        .\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5] ({\gen_cdc_pntr.wpr_gray_reg_n_2 ,\gen_cdc_pntr.wpr_gray_reg_n_3 ,\gen_cdc_pntr.wpr_gray_reg_n_4 ,\gen_cdc_pntr.wpr_gray_reg_n_5 ,\gen_cdc_pntr.wpr_gray_reg_n_6 }),
        .\grdc.rd_data_count_i_reg[3] (\gen_fwft.rdpp1_inst_n_4 ),
        .\grdc.rd_data_count_i_reg[3]_0 (\gen_fwft.rdpp1_inst_n_1 ),
        .\grdc.rd_data_count_i_reg[6] ({\gen_cdc_pntr.wpr_gray_reg_dc_n_8 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_9 }),
        .\grdc.rd_data_count_i_reg[6]_0 ({\gen_cdc_pntr.wpr_gray_reg_dc_n_2 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_3 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_4 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_5 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_6 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_7 }),
        .ram_empty_i(ram_empty_i),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .src_in_bin(src_in_bin00_out[6:1]));
  icyradio_axi_quad_spi_0_0_xpm_counter_updn__parameterized3 rdpp1_inst
       (.E(ram_rd_en_i),
        .Q(curr_fwft_state),
        .\count_value_i_reg[0]_0 (rd_rst_busy),
        .\gen_pf_ic_rc.ram_empty_i_reg (rdp_inst_n_14),
        .\gen_pf_ic_rc.ram_empty_i_reg_0 (\gen_cdc_pntr.wpr_gray_reg_n_0 ),
        .\gen_pf_ic_rc.ram_empty_i_reg_1 ({\gen_cdc_pntr.wpr_gray_reg_n_1 ,\gen_cdc_pntr.wpr_gray_reg_n_2 ,\gen_cdc_pntr.wpr_gray_reg_n_3 ,\gen_cdc_pntr.wpr_gray_reg_n_4 ,\gen_cdc_pntr.wpr_gray_reg_n_5 ,\gen_cdc_pntr.wpr_gray_reg_n_6 }),
        .ram_empty_i(ram_empty_i),
        .ram_empty_i0(ram_empty_i0),
        .rd_clk(rd_clk),
        .rd_en(rd_en));
  icyradio_axi_quad_spi_0_0_xpm_fifo_reg_bit rst_d1_inst
       (.E(wr_pntr_plus1_pf_carry),
        .Q(diff_pntr_pf_q),
        .clr_full(clr_full),
        .\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6] (rst_d1_inst_n_1),
        .\gen_pf_ic_rc.gpf_ic.prog_full_i_reg (full),
        .prog_full(prog_full),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wrst_busy(wrst_busy));
  icyradio_axi_quad_spi_0_0_xpm_counter_updn__parameterized2_3 wrp_inst
       (.D(\gwdc.diff_wr_rd_pntr1_out ),
        .E(wr_pntr_plus1_pf_carry),
        .Q(wr_pntr_ext),
        .\count_value_i_reg[2]_0 (xpm_fifo_rst_inst_n_6),
        .\count_value_i_reg[6]_0 (full),
        .\gwdc.wr_data_count_i_reg[6] ({\gen_cdc_pntr.rpw_gray_reg_dc_n_0 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_1 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_2 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_3 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_4 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_5 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_6 }),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wrst_busy(wrst_busy));
  icyradio_axi_quad_spi_0_0_xpm_counter_updn__parameterized3_4 wrpp1_inst
       (.D(diff_pntr_pf_q0),
        .E(wr_pntr_plus1_pf_carry),
        .Q(wr_pntr_plus1_pf),
        .S(\gen_cdc_pntr.rpw_gray_reg_n_6 ),
        .\count_value_i_reg[0]_0 (wrpp1_inst_n_3),
        .\count_value_i_reg[2]_0 (xpm_fifo_rst_inst_n_6),
        .\count_value_i_reg[5]_0 (full),
        .\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6] (rd_pntr_wr[4:0]),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wrst_busy(wrst_busy));
  icyradio_axi_quad_spi_0_0_xpm_counter_updn__parameterized0 wrpp2_inst
       (.E(wr_pntr_plus1_pf_carry),
        .Q(rd_pntr_wr),
        .\count_value_i_reg[2]_0 (xpm_fifo_rst_inst_n_6),
        .\count_value_i_reg[3]_0 (wrpp2_inst_n_0),
        .\count_value_i_reg[5]_0 (full),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wrst_busy(wrst_busy));
  icyradio_axi_quad_spi_0_0_xpm_fifo_rst xpm_fifo_rst_inst
       (.Q(curr_fwft_state),
        .RESET_SYNC_AX2S_2(xpm_fifo_rst_inst_n_2),
        .SR(\grdc.rd_data_count_i0 ),
        .\gen_rst_ic.fifo_rd_rst_ic_reg_0 (rd_rst_busy),
        .\gen_rst_ic.wr_rst_busy_ic_reg_0 (xpm_fifo_rst_inst_n_6),
        .\gen_rst_ic.wr_rst_busy_ic_reg_1 (xpm_fifo_rst_inst_n_7),
        .\guf.underflow_i_reg (empty),
        .\gwack.wr_ack_i_reg (full),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .rst(rst),
        .rst_d1(rst_d1),
        .underflow_i0(underflow_i0),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_rst_busy(wr_rst_busy),
        .wrst_busy(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_bit" *) 
module icyradio_axi_quad_spi_0_0_xpm_fifo_reg_bit
   (rst_d1,
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6] ,
    clr_full,
    E,
    wrst_busy,
    wr_clk,
    Q,
    \gen_pf_ic_rc.gpf_ic.prog_full_i_reg ,
    prog_full,
    wr_en,
    rst);
  output rst_d1;
  output \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6] ;
  output clr_full;
  output [0:0]E;
  input wrst_busy;
  input wr_clk;
  input [2:0]Q;
  input \gen_pf_ic_rc.gpf_ic.prog_full_i_reg ;
  input prog_full;
  input wr_en;
  input rst;

  wire [0:0]E;
  wire [2:0]Q;
  wire clr_full;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6] ;
  wire \gen_pf_ic_rc.gpf_ic.prog_full_i_reg ;
  wire prog_full;
  wire rst;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;
  wire wrst_busy;

  FDRE #(
    .INIT(1'b0)) 
    d_out_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(wrst_busy),
        .Q(rst_d1),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h02)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_6 
       (.I0(rst_d1),
        .I1(wrst_busy),
        .I2(rst),
        .O(clr_full));
  LUT6 #(
    .INIT(64'h00FF00FE000000FE)) 
    \gen_pf_ic_rc.gpf_ic.prog_full_i_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(clr_full),
        .I4(\gen_pf_ic_rc.gpf_ic.prog_full_i_reg ),
        .I5(prog_full),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6] ));
  LUT4 #(
    .INIT(16'h0002)) 
    \gen_sdpram.xpm_memory_base_inst_i_1 
       (.I0(wr_en),
        .I1(\gen_pf_ic_rc.gpf_ic.prog_full_i_reg ),
        .I2(rst_d1),
        .I3(wrst_busy),
        .O(E));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_vec" *) 
module icyradio_axi_quad_spi_0_0_xpm_fifo_reg_vec
   (Q,
    S,
    \reg_out_i_reg[4]_0 ,
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ,
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 ,
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_1 ,
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_2 ,
    clr_full,
    wrst_busy,
    D,
    wr_clk);
  output [5:0]Q;
  output [0:0]S;
  output \reg_out_i_reg[4]_0 ;
  input [2:0]\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ;
  input \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 ;
  input \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_1 ;
  input \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_2 ;
  input clr_full;
  input wrst_busy;
  input [5:0]D;
  input wr_clk;

  wire [5:0]D;
  wire [5:0]Q;
  wire [0:0]S;
  wire clr_full;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_2_n_0 ;
  wire [2:0]\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_1 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_2 ;
  wire \reg_out_i_reg[4]_0 ;
  wire wr_clk;
  wire wrst_busy;

  LUT5 #(
    .INIT(32'h0000222F)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_1 
       (.I0(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_2_n_0 ),
        .I1(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_0 ),
        .I2(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_1 ),
        .I3(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg_2 ),
        .I4(clr_full),
        .O(\reg_out_i_reg[4]_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_2 
       (.I0(Q[4]),
        .I1(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg [1]),
        .I2(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg [2]),
        .I3(Q[5]),
        .I4(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg [0]),
        .I5(Q[3]),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[6]_i_2 
       (.I0(Q[5]),
        .I1(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg [2]),
        .O(S));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[3]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[4]),
        .Q(Q[4]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[5]),
        .Q(Q[5]),
        .R(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_vec" *) 
module icyradio_axi_quad_spi_0_0_xpm_fifo_reg_vec_1
   (\reg_out_i_reg[5]_0 ,
    Q,
    D,
    \gen_pf_ic_rc.ram_empty_i_reg ,
    DI,
    S,
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5] ,
    \reg_out_i_reg[0]_0 ,
    \reg_out_i_reg[5]_1 ,
    rd_clk);
  output \reg_out_i_reg[5]_0 ;
  output [5:0]Q;
  output [5:0]D;
  input [2:0]\gen_pf_ic_rc.ram_empty_i_reg ;
  input [0:0]DI;
  input [3:0]S;
  input [0:0]\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5] ;
  input \reg_out_i_reg[0]_0 ;
  input [5:0]\reg_out_i_reg[5]_1 ;
  input rd_clk;

  wire [5:0]D;
  wire [0:0]DI;
  wire [5:0]Q;
  wire [3:0]S;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[5]_i_2_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_1 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_2 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_3 ;
  wire [0:0]\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5]_i_1_n_3 ;
  wire [2:0]\gen_pf_ic_rc.ram_empty_i_reg ;
  wire rd_clk;
  wire \reg_out_i_reg[0]_0 ;
  wire \reg_out_i_reg[5]_0 ;
  wire [5:0]\reg_out_i_reg[5]_1 ;
  wire [3:1]\NLW_gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5]_i_1_O_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[5]_i_2 
       (.I0(Q[5]),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg [2]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[5]_i_2_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_0 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_1 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_2 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_3 }),
        .CYINIT(Q[0]),
        .DI({Q[3:1],DI}),
        .O(D[3:0]),
        .S(S));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5]_i_1 
       (.CI(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_0 ),
        .CO({\NLW_gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5]_i_1_CO_UNCONNECTED [3:1],\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,Q[4]}),
        .O({\NLW_gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5]_i_1_O_UNCONNECTED [3:2],D[5:4]}),
        .S({1'b0,1'b0,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[5]_i_2_n_0 ,\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5] }));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ram_empty_i_i_5 
       (.I0(Q[5]),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg [2]),
        .I2(\gen_pf_ic_rc.ram_empty_i_reg [1]),
        .I3(Q[4]),
        .I4(Q[3]),
        .I5(\gen_pf_ic_rc.ram_empty_i_reg [0]),
        .O(\reg_out_i_reg[5]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[5]_1 [0]),
        .Q(Q[0]),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[5]_1 [1]),
        .Q(Q[1]),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[5]_1 [2]),
        .Q(Q[2]),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[5]_1 [3]),
        .Q(Q[3]),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[5]_1 [4]),
        .Q(Q[4]),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[5] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[5]_1 [5]),
        .Q(Q[5]),
        .R(\reg_out_i_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_vec" *) 
module icyradio_axi_quad_spi_0_0_xpm_fifo_reg_vec__parameterized0
   (Q,
    wrst_busy,
    D,
    wr_clk);
  output [6:0]Q;
  input wrst_busy;
  input [6:0]D;
  input wr_clk;

  wire [6:0]D;
  wire [6:0]Q;
  wire wr_clk;
  wire wrst_busy;

  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[3]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[4]),
        .Q(Q[4]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[5]),
        .Q(Q[5]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[6]),
        .Q(Q[6]),
        .R(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_vec" *) 
module icyradio_axi_quad_spi_0_0_xpm_fifo_reg_vec__parameterized0_2
   (DI,
    Q,
    \reg_out_i_reg[4]_0 ,
    S,
    \grdc.rd_data_count_i_reg[3] ,
    \grdc.rd_data_count_i_reg[6] ,
    \reg_out_i_reg[6]_0 ,
    D,
    rd_clk);
  output [1:0]DI;
  output [5:0]Q;
  output [1:0]\reg_out_i_reg[4]_0 ;
  output [0:0]S;
  input \grdc.rd_data_count_i_reg[3] ;
  input [5:0]\grdc.rd_data_count_i_reg[6] ;
  input \reg_out_i_reg[6]_0 ;
  input [6:0]D;
  input rd_clk;

  wire [6:0]D;
  wire [1:0]DI;
  wire [5:0]Q;
  wire [0:0]S;
  wire \grdc.rd_data_count_i_reg[3] ;
  wire [5:0]\grdc.rd_data_count_i_reg[6] ;
  wire rd_clk;
  wire [1:0]\reg_out_i_reg[4]_0 ;
  wire \reg_out_i_reg[6]_0 ;
  wire \reg_out_i_reg_n_0_[6] ;

  LUT2 #(
    .INIT(4'h2)) 
    \grdc.rd_data_count_i[3]_i_2 
       (.I0(Q[2]),
        .I1(\grdc.rd_data_count_i_reg[6] [1]),
        .O(DI[1]));
  LUT3 #(
    .INIT(8'h8E)) 
    \grdc.rd_data_count_i[3]_i_3 
       (.I0(Q[1]),
        .I1(\grdc.rd_data_count_i_reg[3] ),
        .I2(\grdc.rd_data_count_i_reg[6] [0]),
        .O(DI[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \grdc.rd_data_count_i[6]_i_3 
       (.I0(Q[4]),
        .I1(\grdc.rd_data_count_i_reg[6] [3]),
        .O(\reg_out_i_reg[4]_0 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    \grdc.rd_data_count_i[6]_i_4 
       (.I0(Q[3]),
        .I1(\grdc.rd_data_count_i_reg[6] [2]),
        .O(\reg_out_i_reg[4]_0 [0]));
  LUT4 #(
    .INIT(16'hD22D)) 
    \grdc.rd_data_count_i[6]_i_5 
       (.I0(Q[5]),
        .I1(\grdc.rd_data_count_i_reg[6] [4]),
        .I2(\grdc.rd_data_count_i_reg[6] [5]),
        .I3(\reg_out_i_reg_n_0_[6] ),
        .O(S));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(\reg_out_i_reg[6]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(\reg_out_i_reg[6]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(\reg_out_i_reg[6]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[3]),
        .R(\reg_out_i_reg[6]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[4]),
        .Q(Q[4]),
        .R(\reg_out_i_reg[6]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[5] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[5]),
        .Q(Q[5]),
        .R(\reg_out_i_reg[6]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[6] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[6]),
        .Q(\reg_out_i_reg_n_0_[6] ),
        .R(\reg_out_i_reg[6]_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_rst" *) 
module icyradio_axi_quad_spi_0_0_xpm_fifo_rst
   (\gen_rst_ic.fifo_rd_rst_ic_reg_0 ,
    wrst_busy,
    RESET_SYNC_AX2S_2,
    wr_rst_busy,
    SR,
    underflow_i0,
    \gen_rst_ic.wr_rst_busy_ic_reg_0 ,
    \gen_rst_ic.wr_rst_busy_ic_reg_1 ,
    rd_clk,
    wr_clk,
    rst,
    wr_en,
    \gwack.wr_ack_i_reg ,
    rst_d1,
    Q,
    \guf.underflow_i_reg ,
    rd_en);
  output \gen_rst_ic.fifo_rd_rst_ic_reg_0 ;
  output wrst_busy;
  output RESET_SYNC_AX2S_2;
  output wr_rst_busy;
  output [0:0]SR;
  output underflow_i0;
  output \gen_rst_ic.wr_rst_busy_ic_reg_0 ;
  output \gen_rst_ic.wr_rst_busy_ic_reg_1 ;
  input rd_clk;
  input wr_clk;
  input rst;
  input wr_en;
  input \gwack.wr_ack_i_reg ;
  input rst_d1;
  input [1:0]Q;
  input \guf.underflow_i_reg ;
  input rd_en;

  wire \/i__n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ;
  wire [1:0]Q;
  wire RESET_SYNC_AX2S_2;
  wire [0:0]SR;
  (* RTL_KEEP = "yes" *) wire [1:0]\gen_rst_ic.curr_rrst_state ;
  wire \gen_rst_ic.fifo_rd_rst_i ;
  wire \gen_rst_ic.fifo_rd_rst_ic_reg_0 ;
  wire \gen_rst_ic.fifo_rd_rst_wr_i ;
  wire \gen_rst_ic.fifo_wr_rst_ic ;
  wire \gen_rst_ic.fifo_wr_rst_ic_i_1_n_0 ;
  wire \gen_rst_ic.fifo_wr_rst_ic_i_2_n_0 ;
  wire \gen_rst_ic.fifo_wr_rst_ic_i_3_n_0 ;
  wire \gen_rst_ic.fifo_wr_rst_rd ;
  wire [1:0]\gen_rst_ic.next_rrst_state ;
  wire \gen_rst_ic.rst_seq_reentered ;
  wire \gen_rst_ic.rst_seq_reentered_i_1_n_0 ;
  wire \gen_rst_ic.rst_seq_reentered_reg_n_0 ;
  wire \gen_rst_ic.wr_rst_busy_ic_i_1_n_0 ;
  wire \gen_rst_ic.wr_rst_busy_ic_i_2_n_0 ;
  wire \gen_rst_ic.wr_rst_busy_ic_reg_0 ;
  wire \gen_rst_ic.wr_rst_busy_ic_reg_1 ;
  wire \guf.underflow_i_reg ;
  wire \gwack.wr_ack_i_reg ;
  wire p_0_in;
  wire \power_on_rst_reg_n_0_[0] ;
  wire rd_clk;
  wire rd_en;
  wire rst;
  wire rst_d1;
  wire underflow_i0;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;
  wire wrst_busy;

  LUT5 #(
    .INIT(32'h00010116)) 
    \/i_ 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .O(\/i__n_0 ));
  LUT6 #(
    .INIT(64'h333F333B333B333B)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I1(\/i__n_0 ),
        .I2(p_0_in),
        .I3(rst),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I5(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A888A8A8A8A8)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1 
       (.I0(\/i__n_0 ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2_n_0 ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I3(rst),
        .I4(p_0_in),
        .I5(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFEFE00)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I3(p_0_in),
        .I4(rst),
        .I5(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0200020002000000)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1 
       (.I0(\/i__n_0 ),
        .I1(rst),
        .I2(p_0_in),
        .I3(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I5(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000200)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1 
       (.I0(\/i__n_0 ),
        .I1(rst),
        .I2(p_0_in),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I4(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000200)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1 
       (.I0(\/i__n_0 ),
        .I1(rst),
        .I2(p_0_in),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I4(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_sequential_gen_rst_ic.curr_rrst_state[1]_i_1 
       (.I0(\gen_rst_ic.curr_rrst_state [0]),
        .I1(\gen_rst_ic.curr_rrst_state [1]),
        .O(\gen_rst_ic.next_rrst_state [1]));
  (* FSM_ENCODED_STATES = "RRST_IDLE:00,RRST_IN:01,RRST_OUT:10,RRST_EXIT:11" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.next_rrst_state [0]),
        .Q(\gen_rst_ic.curr_rrst_state [0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "RRST_IDLE:00,RRST_IN:01,RRST_OUT:10,RRST_EXIT:11" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.next_rrst_state [1]),
        .Q(\gen_rst_ic.curr_rrst_state [1]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h06)) 
    \__0/i_ 
       (.I0(\gen_rst_ic.fifo_wr_rst_rd ),
        .I1(\gen_rst_ic.curr_rrst_state [1]),
        .I2(\gen_rst_ic.curr_rrst_state [0]),
        .O(\gen_rst_ic.next_rrst_state [0]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hFEFF)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_4 
       (.I0(wrst_busy),
        .I1(rst_d1),
        .I2(\gwack.wr_ack_i_reg ),
        .I3(wr_en),
        .O(\gen_rst_ic.wr_rst_busy_ic_reg_0 ));
  LUT3 #(
    .INIT(8'h3E)) 
    \gen_rst_ic.fifo_rd_rst_ic_i_1 
       (.I0(\gen_rst_ic.fifo_wr_rst_rd ),
        .I1(\gen_rst_ic.curr_rrst_state [1]),
        .I2(\gen_rst_ic.curr_rrst_state [0]),
        .O(\gen_rst_ic.fifo_rd_rst_i ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.fifo_rd_rst_ic_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.fifo_rd_rst_i ),
        .Q(\gen_rst_ic.fifo_rd_rst_ic_reg_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFAEFFFFFFAE0000)) 
    \gen_rst_ic.fifo_wr_rst_ic_i_1 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I2(\gen_rst_ic.fifo_wr_rst_ic_i_2_n_0 ),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .I4(\gen_rst_ic.fifo_wr_rst_ic_i_3_n_0 ),
        .I5(\gen_rst_ic.fifo_wr_rst_ic ),
        .O(\gen_rst_ic.fifo_wr_rst_ic_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \gen_rst_ic.fifo_wr_rst_ic_i_2 
       (.I0(rst),
        .I1(p_0_in),
        .O(\gen_rst_ic.fifo_wr_rst_ic_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00010116)) 
    \gen_rst_ic.fifo_wr_rst_ic_i_3 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .O(\gen_rst_ic.fifo_wr_rst_ic_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.fifo_wr_rst_ic_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.fifo_wr_rst_ic_i_1_n_0 ),
        .Q(\gen_rst_ic.fifo_wr_rst_ic ),
        .R(1'b0));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "2" *) 
  (* INIT = "0" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  icyradio_axi_quad_spi_0_0_xpm_cdc_sync_rst \gen_rst_ic.rrst_wr_inst 
       (.dest_clk(wr_clk),
        .dest_rst(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .src_rst(\gen_rst_ic.fifo_rd_rst_ic_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h000E)) 
    \gen_rst_ic.rst_seq_reentered_i_1 
       (.I0(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .I1(\gen_rst_ic.rst_seq_reentered ),
        .I2(p_0_in),
        .I3(rst),
        .O(\gen_rst_ic.rst_seq_reentered_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000100)) 
    \gen_rst_ic.rst_seq_reentered_i_2 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .O(\gen_rst_ic.rst_seq_reentered ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.rst_seq_reentered_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.rst_seq_reentered_i_1_n_0 ),
        .Q(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hEFFFEF00)) 
    \gen_rst_ic.wr_rst_busy_ic_i_1 
       (.I0(rst),
        .I1(p_0_in),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I3(\gen_rst_ic.wr_rst_busy_ic_i_2_n_0 ),
        .I4(wrst_busy),
        .O(\gen_rst_ic.wr_rst_busy_ic_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000116)) 
    \gen_rst_ic.wr_rst_busy_ic_i_2 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .O(\gen_rst_ic.wr_rst_busy_ic_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.wr_rst_busy_ic_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.wr_rst_busy_ic_i_1_n_0 ),
        .Q(wrst_busy),
        .R(1'b0));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "2" *) 
  (* INIT = "0" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  icyradio_axi_quad_spi_0_0_xpm_cdc_sync_rst__2 \gen_rst_ic.wrst_rd_inst 
       (.dest_clk(rd_clk),
        .dest_rst(\gen_rst_ic.fifo_wr_rst_rd ),
        .src_rst(\gen_rst_ic.fifo_wr_rst_ic ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \gof.overflow_i_i_1 
       (.I0(wrst_busy),
        .I1(rst_d1),
        .I2(\gwack.wr_ack_i_reg ),
        .I3(wr_en),
        .O(\gen_rst_ic.wr_rst_busy_ic_reg_1 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hF1)) 
    \grdc.rd_data_count_i[6]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\gen_rst_ic.fifo_rd_rst_ic_reg_0 ),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \guf.underflow_i_i_1 
       (.I0(\gen_rst_ic.fifo_rd_rst_ic_reg_0 ),
        .I1(\guf.underflow_i_reg ),
        .I2(rd_en),
        .O(underflow_i0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \gwack.wr_ack_i_i_1 
       (.I0(rst),
        .I1(\gen_rst_ic.fifo_wr_rst_ic ),
        .I2(wr_en),
        .I3(\gwack.wr_ack_i_reg ),
        .I4(rst_d1),
        .I5(wrst_busy),
        .O(RESET_SYNC_AX2S_2));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\power_on_rst_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\power_on_rst_reg_n_0_[0] ),
        .Q(p_0_in),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    wr_rst_busy_INST_0
       (.I0(wrst_busy),
        .I1(rst_d1),
        .O(wr_rst_busy));
endmodule

(* ADDR_WIDTH_A = "6" *) (* ADDR_WIDTH_B = "6" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "32" *) (* BYTE_WRITE_WIDTH_B = "32" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "1" *) (* ECC_MODE = "0" *) (* MAX_NUM_CHAR = "0" *) 
(* MEMORY_INIT_FILE = "none" *) (* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) 
(* MEMORY_PRIMITIVE = "0" *) (* MEMORY_SIZE = "2048" *) (* MEMORY_TYPE = "1" *) 
(* MESSAGE_CONTROL = "0" *) (* NUM_CHAR_LOC = "0" *) (* ORIG_REF_NAME = "xpm_memory_base" *) 
(* P_ECC_MODE = "no_ecc" *) (* P_ENABLE_BYTE_WRITE_A = "0" *) (* P_ENABLE_BYTE_WRITE_B = "0" *) 
(* P_MAX_DEPTH_DATA = "64" *) (* P_MEMORY_OPT = "yes" *) (* P_MEMORY_PRIMITIVE = "auto" *) 
(* P_MIN_WIDTH_DATA = "32" *) (* P_MIN_WIDTH_DATA_A = "32" *) (* P_MIN_WIDTH_DATA_B = "32" *) 
(* P_MIN_WIDTH_DATA_ECC = "32" *) (* P_MIN_WIDTH_DATA_LDW = "4" *) (* P_MIN_WIDTH_DATA_SHFT = "32" *) 
(* P_NUM_COLS_WRITE_A = "1" *) (* P_NUM_COLS_WRITE_B = "1" *) (* P_NUM_ROWS_READ_A = "1" *) 
(* P_NUM_ROWS_READ_B = "1" *) (* P_NUM_ROWS_WRITE_A = "1" *) (* P_NUM_ROWS_WRITE_B = "1" *) 
(* P_SDP_WRITE_MODE = "yes" *) (* P_WIDTH_ADDR_LSB_READ_A = "0" *) (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
(* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) (* P_WIDTH_ADDR_READ_A = "6" *) 
(* P_WIDTH_ADDR_READ_B = "6" *) (* P_WIDTH_ADDR_WRITE_A = "6" *) (* P_WIDTH_ADDR_WRITE_B = "6" *) 
(* P_WIDTH_COL_WRITE_A = "32" *) (* P_WIDTH_COL_WRITE_B = "32" *) (* READ_DATA_WIDTH_A = "32" *) 
(* READ_DATA_WIDTH_B = "32" *) (* READ_LATENCY_A = "2" *) (* READ_LATENCY_B = "2" *) 
(* READ_RESET_VALUE_A = "0" *) (* READ_RESET_VALUE_B = "0" *) (* RST_MODE_A = "SYNC" *) 
(* RST_MODE_B = "SYNC" *) (* SIM_ASSERT_CHK = "0" *) (* USE_EMBEDDED_CONSTRAINT = "0" *) 
(* USE_MEM_INIT = "0" *) (* USE_MEM_INIT_MMI = "0" *) (* VERSION = "0" *) 
(* WAKEUP_TIME = "0" *) (* WRITE_DATA_WIDTH_A = "32" *) (* WRITE_DATA_WIDTH_B = "32" *) 
(* WRITE_MODE_A = "2" *) (* WRITE_MODE_B = "2" *) (* WRITE_PROTECT = "1" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "soft" *) (* rsta_loop_iter = "32" *) 
(* rstb_loop_iter = "32" *) 
module icyradio_axi_quad_spi_0_0_xpm_memory_base
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    injectsbiterra,
    injectdbiterra,
    douta,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    injectsbiterrb,
    injectdbiterrb,
    doutb,
    sbiterrb,
    dbiterrb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [5:0]addra;
  input [31:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [31:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [5:0]addrb;
  input [31:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [31:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [5:0]addra;
  wire [5:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [31:0]doutb;
  wire enb;
  wire regceb;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_DOPBDOP_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign douta[31] = \<const0> ;
  assign douta[30] = \<const0> ;
  assign douta[29] = \<const0> ;
  assign douta[28] = \<const0> ;
  assign douta[27] = \<const0> ;
  assign douta[26] = \<const0> ;
  assign douta[25] = \<const0> ;
  assign douta[24] = \<const0> ;
  assign douta[23] = \<const0> ;
  assign douta[22] = \<const0> ;
  assign douta[21] = \<const0> ;
  assign douta[20] = \<const0> ;
  assign douta[19] = \<const0> ;
  assign douta[18] = \<const0> ;
  assign douta[17] = \<const0> ;
  assign douta[16] = \<const0> ;
  assign douta[15] = \<const0> ;
  assign douta[14] = \<const0> ;
  assign douta[13] = \<const0> ;
  assign douta[12] = \<const0> ;
  assign douta[11] = \<const0> ;
  assign douta[10] = \<const0> ;
  assign douta[9] = \<const0> ;
  assign douta[8] = \<const0> ;
  assign douta[7] = \<const0> ;
  assign douta[6] = \<const0> ;
  assign douta[5] = \<const0> ;
  assign douta[4] = \<const0> ;
  assign douta[3] = \<const0> ;
  assign douta[2] = \<const0> ;
  assign douta[1] = \<const0> ;
  assign douta[0] = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "511" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d32" *) 
  (* \MEM.PORTA.DATA_LSB  = "0" *) 
  (* \MEM.PORTA.DATA_MSB  = "31" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "511" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d32" *) 
  (* \MEM.PORTB.DATA_LSB  = "0" *) 
  (* \MEM.PORTB.DATA_MSB  = "31" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "31" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(36)) 
    \gen_wr_a.gen_word_narrow.mem_reg 
       (.ADDRARDADDR({1'b0,1'b0,1'b0,addrb,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,addra,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(clkb),
        .CLKBWRCLK(clka),
        .DIADI(dina[15:0]),
        .DIBDI(dina[31:16]),
        .DIPADIP({1'b1,1'b1}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO(doutb[15:0]),
        .DOBDO(doutb[31:16]),
        .DOPADOP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(enb),
        .ENBWREN(1'b1),
        .REGCEAREGCE(regceb),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(rstb),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({wea,wea,wea,wea}));
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
