// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Wed Mar 27 12:08:41 2024
// Host        : node4-dev running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/joao/icyradio/firmware/a100t/icyradio.gen/sources_1/bd/icyradio/ip/icyradio_axi_dmac_rf_rx1_0/icyradio_axi_dmac_rf_rx1_0_sim_netlist.v
// Design      : icyradio_axi_dmac_rf_rx1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "icyradio_axi_dmac_rf_rx1_0,axi_dmac,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "axi_dmac,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module icyradio_axi_dmac_rf_rx1_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awvalid,
    s_axi_awaddr,
    s_axi_awready,
    s_axi_awprot,
    s_axi_wvalid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wready,
    s_axi_bvalid,
    s_axi_bresp,
    s_axi_bready,
    s_axi_arvalid,
    s_axi_araddr,
    s_axi_arready,
    s_axi_arprot,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_rresp,
    s_axi_rdata,
    irq,
    m_dest_axi_aclk,
    m_dest_axi_aresetn,
    m_dest_axi_awaddr,
    m_dest_axi_awlen,
    m_dest_axi_awsize,
    m_dest_axi_awburst,
    m_dest_axi_awprot,
    m_dest_axi_awcache,
    m_dest_axi_awvalid,
    m_dest_axi_awready,
    m_dest_axi_wdata,
    m_dest_axi_wstrb,
    m_dest_axi_wready,
    m_dest_axi_wvalid,
    m_dest_axi_wlast,
    m_dest_axi_bvalid,
    m_dest_axi_bresp,
    m_dest_axi_bready,
    fifo_wr_clk,
    fifo_wr_en,
    fifo_wr_din,
    fifo_wr_overflow,
    fifo_wr_sync,
    fifo_wr_xfer_req);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_axi_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_aclk, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN icyradio_axi_pcie_0_0_axi_aclk_out, INSERT_VIP 0" *) input s_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s_axi_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *) input [10:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWPROT" *) input [2:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *) input [10:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARPROT" *) input [2:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 125000000, ID_WIDTH 0, ADDR_WIDTH 11, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN icyradio_axi_pcie_0_0_axi_aclk_out, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 irq INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME irq, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output irq;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 m_dest_axi_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_dest_axi_aclk, ASSOCIATED_BUSIF m_dest_axi, ASSOCIATED_RESET m_dest_axi_aresetn, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN icyradio_axi_pcie_0_0_axi_aclk_out, INSERT_VIP 0" *) input m_dest_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 m_dest_axi_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_dest_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input m_dest_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_dest_axi AWADDR" *) output [31:0]m_dest_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_dest_axi AWLEN" *) output [7:0]m_dest_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_dest_axi AWSIZE" *) output [2:0]m_dest_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_dest_axi AWBURST" *) output [1:0]m_dest_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_dest_axi AWPROT" *) output [2:0]m_dest_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_dest_axi AWCACHE" *) output [3:0]m_dest_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_dest_axi AWVALID" *) output m_dest_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_dest_axi AWREADY" *) input m_dest_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_dest_axi WDATA" *) output [63:0]m_dest_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_dest_axi WSTRB" *) output [7:0]m_dest_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_dest_axi WREADY" *) input m_dest_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_dest_axi WVALID" *) output m_dest_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_dest_axi WLAST" *) output m_dest_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_dest_axi BVALID" *) input m_dest_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_dest_axi BRESP" *) input [1:0]m_dest_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_dest_axi BREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_dest_axi, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 125000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 1, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 0, NUM_READ_OUTSTANDING 0, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 16, PHASE 0.0, CLK_DOMAIN icyradio_axi_pcie_0_0_axi_aclk_out, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output m_dest_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 fifo_wr_clk CLK, xilinx.com:signal:clock:1.0 fifo_wr_signal_clock CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fifo_wr_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, ASSOCIATED_BUSIF fifo_wr, INSERT_VIP 0, XIL_INTERFACENAME fifo_wr_signal_clock, ASSOCIATED_BUSIF fifo_wr, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN icyradio_axi_ad9361_0_l_clk, INSERT_VIP 0" *) input fifo_wr_clk;
  (* X_INTERFACE_INFO = "analog.com:interface:fifo_wr:1.0 fifo_wr EN" *) input fifo_wr_en;
  (* X_INTERFACE_INFO = "analog.com:interface:fifo_wr:1.0 fifo_wr DATA" *) input [31:0]fifo_wr_din;
  (* X_INTERFACE_INFO = "analog.com:interface:fifo_wr:1.0 fifo_wr OVERFLOW" *) output fifo_wr_overflow;
  (* X_INTERFACE_INFO = "analog.com:interface:fifo_wr:1.0 fifo_wr SYNC" *) input fifo_wr_sync;
  (* X_INTERFACE_INFO = "analog.com:interface:fifo_wr:1.0 fifo_wr XFER_REQ" *) output fifo_wr_xfer_req;

  wire \<const0> ;
  wire \<const1> ;
  wire fifo_wr_clk;
  wire [31:0]fifo_wr_din;
  wire fifo_wr_en;
  wire fifo_wr_overflow;
  wire fifo_wr_sync;
  wire fifo_wr_xfer_req;
  wire irq;
  wire m_dest_axi_aclk;
  wire [31:3]\^m_dest_axi_awaddr ;
  wire [3:0]\^m_dest_axi_awlen ;
  wire m_dest_axi_awready;
  wire m_dest_axi_awvalid;
  wire m_dest_axi_bready;
  wire m_dest_axi_bvalid;
  wire [63:0]m_dest_axi_wdata;
  wire m_dest_axi_wlast;
  wire m_dest_axi_wready;
  wire [7:4]\^m_dest_axi_wstrb ;
  wire m_dest_axi_wvalid;
  wire s_axi_aclk;
  wire [10:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [10:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire NLW_inst_fifo_rd_underflow_UNCONNECTED;
  wire NLW_inst_fifo_rd_valid_UNCONNECTED;
  wire NLW_inst_fifo_rd_xfer_req_UNCONNECTED;
  wire NLW_inst_m_axis_last_UNCONNECTED;
  wire NLW_inst_m_axis_valid_UNCONNECTED;
  wire NLW_inst_m_axis_xfer_req_UNCONNECTED;
  wire NLW_inst_m_dest_axi_arvalid_UNCONNECTED;
  wire NLW_inst_m_dest_axi_rready_UNCONNECTED;
  wire NLW_inst_m_sg_axi_arvalid_UNCONNECTED;
  wire NLW_inst_m_sg_axi_awvalid_UNCONNECTED;
  wire NLW_inst_m_sg_axi_bready_UNCONNECTED;
  wire NLW_inst_m_sg_axi_rready_UNCONNECTED;
  wire NLW_inst_m_sg_axi_wlast_UNCONNECTED;
  wire NLW_inst_m_sg_axi_wvalid_UNCONNECTED;
  wire NLW_inst_m_src_axi_arvalid_UNCONNECTED;
  wire NLW_inst_m_src_axi_awvalid_UNCONNECTED;
  wire NLW_inst_m_src_axi_bready_UNCONNECTED;
  wire NLW_inst_m_src_axi_rready_UNCONNECTED;
  wire NLW_inst_m_src_axi_wlast_UNCONNECTED;
  wire NLW_inst_m_src_axi_wvalid_UNCONNECTED;
  wire NLW_inst_s_axis_ready_UNCONNECTED;
  wire NLW_inst_s_axis_xfer_req_UNCONNECTED;
  wire [7:0]NLW_inst_dest_diag_level_bursts_UNCONNECTED;
  wire [63:0]NLW_inst_fifo_rd_dout_UNCONNECTED;
  wire [63:0]NLW_inst_m_axis_data_UNCONNECTED;
  wire [3:0]NLW_inst_m_axis_dest_UNCONNECTED;
  wire [7:0]NLW_inst_m_axis_id_UNCONNECTED;
  wire [7:0]NLW_inst_m_axis_keep_UNCONNECTED;
  wire [7:0]NLW_inst_m_axis_strb_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_user_UNCONNECTED;
  wire [31:0]NLW_inst_m_dest_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_inst_m_dest_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_inst_m_dest_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_inst_m_dest_axi_arid_UNCONNECTED;
  wire [7:0]NLW_inst_m_dest_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_inst_m_dest_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_inst_m_dest_axi_arprot_UNCONNECTED;
  wire [2:0]NLW_inst_m_dest_axi_arsize_UNCONNECTED;
  wire [2:0]NLW_inst_m_dest_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_inst_m_dest_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_inst_m_dest_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_inst_m_dest_axi_awid_UNCONNECTED;
  wire [7:4]NLW_inst_m_dest_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_inst_m_dest_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_inst_m_dest_axi_awprot_UNCONNECTED;
  wire [2:0]NLW_inst_m_dest_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_inst_m_dest_axi_wid_UNCONNECTED;
  wire [3:0]NLW_inst_m_dest_axi_wstrb_UNCONNECTED;
  wire [31:0]NLW_inst_m_sg_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_inst_m_sg_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_inst_m_sg_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_inst_m_sg_axi_arid_UNCONNECTED;
  wire [7:0]NLW_inst_m_sg_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_inst_m_sg_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_inst_m_sg_axi_arprot_UNCONNECTED;
  wire [2:0]NLW_inst_m_sg_axi_arsize_UNCONNECTED;
  wire [31:0]NLW_inst_m_sg_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_inst_m_sg_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_inst_m_sg_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_inst_m_sg_axi_awid_UNCONNECTED;
  wire [7:0]NLW_inst_m_sg_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_inst_m_sg_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_inst_m_sg_axi_awprot_UNCONNECTED;
  wire [2:0]NLW_inst_m_sg_axi_awsize_UNCONNECTED;
  wire [63:0]NLW_inst_m_sg_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_inst_m_sg_axi_wid_UNCONNECTED;
  wire [7:0]NLW_inst_m_sg_axi_wstrb_UNCONNECTED;
  wire [31:0]NLW_inst_m_src_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_inst_m_src_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_inst_m_src_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_inst_m_src_axi_arid_UNCONNECTED;
  wire [7:0]NLW_inst_m_src_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_inst_m_src_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_inst_m_src_axi_arprot_UNCONNECTED;
  wire [2:0]NLW_inst_m_src_axi_arsize_UNCONNECTED;
  wire [31:0]NLW_inst_m_src_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_inst_m_src_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_inst_m_src_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_inst_m_src_axi_awid_UNCONNECTED;
  wire [7:0]NLW_inst_m_src_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_inst_m_src_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_inst_m_src_axi_awprot_UNCONNECTED;
  wire [2:0]NLW_inst_m_src_axi_awsize_UNCONNECTED;
  wire [31:0]NLW_inst_m_src_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_inst_m_src_axi_wid_UNCONNECTED;
  wire [3:0]NLW_inst_m_src_axi_wstrb_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_bresp_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_rresp_UNCONNECTED;

  assign m_dest_axi_awaddr[31:3] = \^m_dest_axi_awaddr [31:3];
  assign m_dest_axi_awaddr[2] = \<const0> ;
  assign m_dest_axi_awaddr[1] = \<const0> ;
  assign m_dest_axi_awaddr[0] = \<const0> ;
  assign m_dest_axi_awburst[1] = \<const0> ;
  assign m_dest_axi_awburst[0] = \<const1> ;
  assign m_dest_axi_awcache[3] = \<const1> ;
  assign m_dest_axi_awcache[2] = \<const1> ;
  assign m_dest_axi_awcache[1] = \<const1> ;
  assign m_dest_axi_awcache[0] = \<const0> ;
  assign m_dest_axi_awlen[7] = \<const0> ;
  assign m_dest_axi_awlen[6] = \<const0> ;
  assign m_dest_axi_awlen[5] = \<const0> ;
  assign m_dest_axi_awlen[4] = \<const0> ;
  assign m_dest_axi_awlen[3:0] = \^m_dest_axi_awlen [3:0];
  assign m_dest_axi_awprot[2] = \<const0> ;
  assign m_dest_axi_awprot[1] = \<const0> ;
  assign m_dest_axi_awprot[0] = \<const0> ;
  assign m_dest_axi_awsize[2] = \<const0> ;
  assign m_dest_axi_awsize[1] = \<const1> ;
  assign m_dest_axi_awsize[0] = \<const1> ;
  assign m_dest_axi_wstrb[7:4] = \^m_dest_axi_wstrb [7:4];
  assign m_dest_axi_wstrb[3] = \<const1> ;
  assign m_dest_axi_wstrb[2] = \<const1> ;
  assign m_dest_axi_wstrb[1] = \<const1> ;
  assign m_dest_axi_wstrb[0] = \<const1> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* ALLOW_ASYM_MEM = "1" *) 
  (* ASYNC_CLK_DEST_REQ = "1'b0" *) 
  (* ASYNC_CLK_DEST_SG = "1'b1" *) 
  (* ASYNC_CLK_REQ_SG = "1'b1" *) 
  (* ASYNC_CLK_REQ_SRC = "1'b1" *) 
  (* ASYNC_CLK_SRC_DEST = "1'b1" *) 
  (* ASYNC_CLK_SRC_SG = "1'b1" *) 
  (* AXI_ID_WIDTH_DEST = "1" *) 
  (* AXI_ID_WIDTH_SG = "1" *) 
  (* AXI_ID_WIDTH_SRC = "1" *) 
  (* AXI_SLICE_DEST = "1'b0" *) 
  (* AXI_SLICE_SRC = "1'b0" *) 
  (* BEATS_PER_BURST_LIMIT_DEST = "256" *) 
  (* BEATS_PER_BURST_LIMIT_SRC = "1024" *) 
  (* BYTES_PER_BEAT_WIDTH_DEST = "3" *) 
  (* BYTES_PER_BEAT_WIDTH_SG = "3" *) 
  (* BYTES_PER_BEAT_WIDTH_SRC = "2" *) 
  (* BYTES_PER_BURST_LIMIT = "2048" *) 
  (* BYTES_PER_BURST_LIMIT_DEST = "2048" *) 
  (* BYTES_PER_BURST_LIMIT_SRC = "4096" *) 
  (* BYTES_PER_BURST_WIDTH = "7" *) 
  (* CACHE_COHERENT_DEST = "1'b1" *) 
  (* CYCLIC = "1'b0" *) 
  (* DBG_ID_PADDING = "4" *) 
  (* DISABLE_DEBUG_REGISTERS = "1'b1" *) 
  (* DMA_2D_TRANSFER = "1'b0" *) 
  (* DMA_AXIS_DEST_W = "4" *) 
  (* DMA_AXIS_ID_W = "8" *) 
  (* DMA_AXI_ADDR_WIDTH = "32" *) 
  (* DMA_AXI_PROTOCOL_DEST = "0" *) 
  (* DMA_AXI_PROTOCOL_SG = "0" *) 
  (* DMA_AXI_PROTOCOL_SRC = "0" *) 
  (* DMA_DATA_WIDTH_DEST = "64" *) 
  (* DMA_DATA_WIDTH_SG = "64" *) 
  (* DMA_DATA_WIDTH_SRC = "32" *) 
  (* DMA_LENGTH_ALIGN = "2" *) 
  (* DMA_LENGTH_ALIGN_DEST = "0" *) 
  (* DMA_LENGTH_ALIGN_SRC = "2" *) 
  (* DMA_LENGTH_WIDTH = "24" *) 
  (* DMA_SG_TRANSFER = "1'b0" *) 
  (* DMA_TYPE_AXI_MM = "0" *) 
  (* DMA_TYPE_AXI_STREAM = "1" *) 
  (* DMA_TYPE_DEST = "0" *) 
  (* DMA_TYPE_FIFO = "2" *) 
  (* DMA_TYPE_SRC = "2" *) 
  (* ENABLE_DIAGNOSTICS_IF = "1'b0" *) 
  (* FIFO_SIZE = "8" *) 
  (* HAS_DEST_ADDR = "1'b1" *) 
  (* HAS_SRC_ADDR = "1'b0" *) 
  (* ID = "3" *) 
  (* ID_WIDTH = "4" *) 
  (* MAX_BYTES_PER_BURST = "128" *) 
  (* REAL_MAX_BYTES_PER_BURST = "128" *) 
  (* SYNC_TRANSFER_START = "1'b1" *) 
  icyradio_axi_dmac_rf_rx1_0_axi_dmac inst
       (.dest_diag_level_bursts(NLW_inst_dest_diag_level_bursts_UNCONNECTED[7:0]),
        .fifo_rd_clk(1'b0),
        .fifo_rd_dout(NLW_inst_fifo_rd_dout_UNCONNECTED[63:0]),
        .fifo_rd_en(1'b0),
        .fifo_rd_underflow(NLW_inst_fifo_rd_underflow_UNCONNECTED),
        .fifo_rd_valid(NLW_inst_fifo_rd_valid_UNCONNECTED),
        .fifo_rd_xfer_req(NLW_inst_fifo_rd_xfer_req_UNCONNECTED),
        .fifo_wr_clk(fifo_wr_clk),
        .fifo_wr_din(fifo_wr_din),
        .fifo_wr_en(fifo_wr_en),
        .fifo_wr_overflow(fifo_wr_overflow),
        .fifo_wr_sync(fifo_wr_sync),
        .fifo_wr_xfer_req(fifo_wr_xfer_req),
        .irq(irq),
        .m_axis_aclk(1'b0),
        .m_axis_data(NLW_inst_m_axis_data_UNCONNECTED[63:0]),
        .m_axis_dest(NLW_inst_m_axis_dest_UNCONNECTED[3:0]),
        .m_axis_id(NLW_inst_m_axis_id_UNCONNECTED[7:0]),
        .m_axis_keep(NLW_inst_m_axis_keep_UNCONNECTED[7:0]),
        .m_axis_last(NLW_inst_m_axis_last_UNCONNECTED),
        .m_axis_ready(1'b0),
        .m_axis_strb(NLW_inst_m_axis_strb_UNCONNECTED[7:0]),
        .m_axis_user(NLW_inst_m_axis_user_UNCONNECTED[0]),
        .m_axis_valid(NLW_inst_m_axis_valid_UNCONNECTED),
        .m_axis_xfer_req(NLW_inst_m_axis_xfer_req_UNCONNECTED),
        .m_dest_axi_aclk(m_dest_axi_aclk),
        .m_dest_axi_araddr(NLW_inst_m_dest_axi_araddr_UNCONNECTED[31:0]),
        .m_dest_axi_arburst(NLW_inst_m_dest_axi_arburst_UNCONNECTED[1:0]),
        .m_dest_axi_arcache(NLW_inst_m_dest_axi_arcache_UNCONNECTED[3:0]),
        .m_dest_axi_aresetn(1'b0),
        .m_dest_axi_arid(NLW_inst_m_dest_axi_arid_UNCONNECTED[0]),
        .m_dest_axi_arlen(NLW_inst_m_dest_axi_arlen_UNCONNECTED[7:0]),
        .m_dest_axi_arlock(NLW_inst_m_dest_axi_arlock_UNCONNECTED[0]),
        .m_dest_axi_arprot(NLW_inst_m_dest_axi_arprot_UNCONNECTED[2:0]),
        .m_dest_axi_arready(1'b0),
        .m_dest_axi_arsize(NLW_inst_m_dest_axi_arsize_UNCONNECTED[2:0]),
        .m_dest_axi_arvalid(NLW_inst_m_dest_axi_arvalid_UNCONNECTED),
        .m_dest_axi_awaddr({\^m_dest_axi_awaddr ,NLW_inst_m_dest_axi_awaddr_UNCONNECTED[2:0]}),
        .m_dest_axi_awburst(NLW_inst_m_dest_axi_awburst_UNCONNECTED[1:0]),
        .m_dest_axi_awcache(NLW_inst_m_dest_axi_awcache_UNCONNECTED[3:0]),
        .m_dest_axi_awid(NLW_inst_m_dest_axi_awid_UNCONNECTED[0]),
        .m_dest_axi_awlen({NLW_inst_m_dest_axi_awlen_UNCONNECTED[7:4],\^m_dest_axi_awlen }),
        .m_dest_axi_awlock(NLW_inst_m_dest_axi_awlock_UNCONNECTED[0]),
        .m_dest_axi_awprot(NLW_inst_m_dest_axi_awprot_UNCONNECTED[2:0]),
        .m_dest_axi_awready(m_dest_axi_awready),
        .m_dest_axi_awsize(NLW_inst_m_dest_axi_awsize_UNCONNECTED[2:0]),
        .m_dest_axi_awvalid(m_dest_axi_awvalid),
        .m_dest_axi_bid(1'b0),
        .m_dest_axi_bready(m_dest_axi_bready),
        .m_dest_axi_bresp({1'b0,1'b0}),
        .m_dest_axi_bvalid(m_dest_axi_bvalid),
        .m_dest_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_dest_axi_rid(1'b0),
        .m_dest_axi_rlast(1'b0),
        .m_dest_axi_rready(NLW_inst_m_dest_axi_rready_UNCONNECTED),
        .m_dest_axi_rresp({1'b0,1'b0}),
        .m_dest_axi_rvalid(1'b0),
        .m_dest_axi_wdata(m_dest_axi_wdata),
        .m_dest_axi_wid(NLW_inst_m_dest_axi_wid_UNCONNECTED[0]),
        .m_dest_axi_wlast(m_dest_axi_wlast),
        .m_dest_axi_wready(m_dest_axi_wready),
        .m_dest_axi_wstrb({\^m_dest_axi_wstrb ,NLW_inst_m_dest_axi_wstrb_UNCONNECTED[3:0]}),
        .m_dest_axi_wvalid(m_dest_axi_wvalid),
        .m_sg_axi_aclk(1'b0),
        .m_sg_axi_araddr(NLW_inst_m_sg_axi_araddr_UNCONNECTED[31:0]),
        .m_sg_axi_arburst(NLW_inst_m_sg_axi_arburst_UNCONNECTED[1:0]),
        .m_sg_axi_arcache(NLW_inst_m_sg_axi_arcache_UNCONNECTED[3:0]),
        .m_sg_axi_aresetn(1'b0),
        .m_sg_axi_arid(NLW_inst_m_sg_axi_arid_UNCONNECTED[0]),
        .m_sg_axi_arlen(NLW_inst_m_sg_axi_arlen_UNCONNECTED[7:0]),
        .m_sg_axi_arlock(NLW_inst_m_sg_axi_arlock_UNCONNECTED[0]),
        .m_sg_axi_arprot(NLW_inst_m_sg_axi_arprot_UNCONNECTED[2:0]),
        .m_sg_axi_arready(1'b0),
        .m_sg_axi_arsize(NLW_inst_m_sg_axi_arsize_UNCONNECTED[2:0]),
        .m_sg_axi_arvalid(NLW_inst_m_sg_axi_arvalid_UNCONNECTED),
        .m_sg_axi_awaddr(NLW_inst_m_sg_axi_awaddr_UNCONNECTED[31:0]),
        .m_sg_axi_awburst(NLW_inst_m_sg_axi_awburst_UNCONNECTED[1:0]),
        .m_sg_axi_awcache(NLW_inst_m_sg_axi_awcache_UNCONNECTED[3:0]),
        .m_sg_axi_awid(NLW_inst_m_sg_axi_awid_UNCONNECTED[0]),
        .m_sg_axi_awlen(NLW_inst_m_sg_axi_awlen_UNCONNECTED[7:0]),
        .m_sg_axi_awlock(NLW_inst_m_sg_axi_awlock_UNCONNECTED[0]),
        .m_sg_axi_awprot(NLW_inst_m_sg_axi_awprot_UNCONNECTED[2:0]),
        .m_sg_axi_awready(1'b0),
        .m_sg_axi_awsize(NLW_inst_m_sg_axi_awsize_UNCONNECTED[2:0]),
        .m_sg_axi_awvalid(NLW_inst_m_sg_axi_awvalid_UNCONNECTED),
        .m_sg_axi_bid(1'b0),
        .m_sg_axi_bready(NLW_inst_m_sg_axi_bready_UNCONNECTED),
        .m_sg_axi_bresp({1'b0,1'b0}),
        .m_sg_axi_bvalid(1'b0),
        .m_sg_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_sg_axi_rid(1'b0),
        .m_sg_axi_rlast(1'b0),
        .m_sg_axi_rready(NLW_inst_m_sg_axi_rready_UNCONNECTED),
        .m_sg_axi_rresp({1'b0,1'b0}),
        .m_sg_axi_rvalid(1'b0),
        .m_sg_axi_wdata(NLW_inst_m_sg_axi_wdata_UNCONNECTED[63:0]),
        .m_sg_axi_wid(NLW_inst_m_sg_axi_wid_UNCONNECTED[0]),
        .m_sg_axi_wlast(NLW_inst_m_sg_axi_wlast_UNCONNECTED),
        .m_sg_axi_wready(1'b0),
        .m_sg_axi_wstrb(NLW_inst_m_sg_axi_wstrb_UNCONNECTED[7:0]),
        .m_sg_axi_wvalid(NLW_inst_m_sg_axi_wvalid_UNCONNECTED),
        .m_src_axi_aclk(1'b0),
        .m_src_axi_araddr(NLW_inst_m_src_axi_araddr_UNCONNECTED[31:0]),
        .m_src_axi_arburst(NLW_inst_m_src_axi_arburst_UNCONNECTED[1:0]),
        .m_src_axi_arcache(NLW_inst_m_src_axi_arcache_UNCONNECTED[3:0]),
        .m_src_axi_aresetn(1'b0),
        .m_src_axi_arid(NLW_inst_m_src_axi_arid_UNCONNECTED[0]),
        .m_src_axi_arlen(NLW_inst_m_src_axi_arlen_UNCONNECTED[7:0]),
        .m_src_axi_arlock(NLW_inst_m_src_axi_arlock_UNCONNECTED[0]),
        .m_src_axi_arprot(NLW_inst_m_src_axi_arprot_UNCONNECTED[2:0]),
        .m_src_axi_arready(1'b0),
        .m_src_axi_arsize(NLW_inst_m_src_axi_arsize_UNCONNECTED[2:0]),
        .m_src_axi_arvalid(NLW_inst_m_src_axi_arvalid_UNCONNECTED),
        .m_src_axi_awaddr(NLW_inst_m_src_axi_awaddr_UNCONNECTED[31:0]),
        .m_src_axi_awburst(NLW_inst_m_src_axi_awburst_UNCONNECTED[1:0]),
        .m_src_axi_awcache(NLW_inst_m_src_axi_awcache_UNCONNECTED[3:0]),
        .m_src_axi_awid(NLW_inst_m_src_axi_awid_UNCONNECTED[0]),
        .m_src_axi_awlen(NLW_inst_m_src_axi_awlen_UNCONNECTED[7:0]),
        .m_src_axi_awlock(NLW_inst_m_src_axi_awlock_UNCONNECTED[0]),
        .m_src_axi_awprot(NLW_inst_m_src_axi_awprot_UNCONNECTED[2:0]),
        .m_src_axi_awready(1'b0),
        .m_src_axi_awsize(NLW_inst_m_src_axi_awsize_UNCONNECTED[2:0]),
        .m_src_axi_awvalid(NLW_inst_m_src_axi_awvalid_UNCONNECTED),
        .m_src_axi_bid(1'b0),
        .m_src_axi_bready(NLW_inst_m_src_axi_bready_UNCONNECTED),
        .m_src_axi_bresp({1'b0,1'b0}),
        .m_src_axi_bvalid(1'b0),
        .m_src_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_src_axi_rid(1'b0),
        .m_src_axi_rlast(1'b0),
        .m_src_axi_rready(NLW_inst_m_src_axi_rready_UNCONNECTED),
        .m_src_axi_rresp({1'b0,1'b0}),
        .m_src_axi_rvalid(1'b0),
        .m_src_axi_wdata(NLW_inst_m_src_axi_wdata_UNCONNECTED[31:0]),
        .m_src_axi_wid(NLW_inst_m_src_axi_wid_UNCONNECTED[0]),
        .m_src_axi_wlast(NLW_inst_m_src_axi_wlast_UNCONNECTED),
        .m_src_axi_wready(1'b0),
        .m_src_axi_wstrb(NLW_inst_m_src_axi_wstrb_UNCONNECTED[3:0]),
        .m_src_axi_wvalid(NLW_inst_m_src_axi_wvalid_UNCONNECTED),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr({s_axi_araddr[10:2],1'b0,1'b0}),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr({s_axi_awaddr[10:2],1'b0,1'b0}),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(NLW_inst_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(NLW_inst_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(s_axi_wvalid),
        .s_axis_aclk(1'b0),
        .s_axis_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_dest({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_id({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_keep({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_last(1'b0),
        .s_axis_ready(NLW_inst_s_axis_ready_UNCONNECTED),
        .s_axis_strb({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_user(1'b1),
        .s_axis_valid(1'b0),
        .s_axis_xfer_req(NLW_inst_s_axis_xfer_req_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "ad_mem_asym" *) 
module icyradio_axi_dmac_rf_rx1_0_ad_mem_asym
   (m_dest_axi_wdata,
    E,
    m_dest_axi_aclk,
    fifo_wr_clk,
    ADDRARDADDR,
    ADDRBWRADDR,
    fifo_wr_din,
    m_ram_reg_bram_0_0,
    m_ram_reg_bram_0_1,
    m_dest_axi_wready,
    dest_valid);
  output [63:0]m_dest_axi_wdata;
  output [0:0]E;
  input m_dest_axi_aclk;
  input fifo_wr_clk;
  input [6:0]ADDRARDADDR;
  input [7:0]ADDRBWRADDR;
  input [31:0]fifo_wr_din;
  input [0:0]m_ram_reg_bram_0_0;
  input m_ram_reg_bram_0_1;
  input m_dest_axi_wready;
  input dest_valid;

  wire [6:0]ADDRARDADDR;
  wire [7:0]ADDRBWRADDR;
  wire [0:0]E;
  wire dest_valid;
  wire fifo_wr_clk;
  wire [31:0]fifo_wr_din;
  wire m_dest_axi_aclk;
  wire [63:0]m_dest_axi_wdata;
  wire m_dest_axi_wready;
  wire [0:0]m_ram_reg_bram_0_0;
  wire m_ram_reg_bram_0_1;
  wire NLW_m_ram_reg_bram_0_CASCADEINA_UNCONNECTED;
  wire NLW_m_ram_reg_bram_0_CASCADEINB_UNCONNECTED;
  wire NLW_m_ram_reg_bram_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_m_ram_reg_bram_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_m_ram_reg_bram_0_DBITERR_UNCONNECTED;
  wire NLW_m_ram_reg_bram_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_m_ram_reg_bram_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_m_ram_reg_bram_0_SBITERR_UNCONNECTED;
  wire [3:0]NLW_m_ram_reg_bram_0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_m_ram_reg_bram_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_m_ram_reg_bram_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_m_ram_reg_bram_0_RDADDRECC_UNCONNECTED;

  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "127" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d64" *) 
  (* \MEM.PORTA.DATA_LSB  = "0" *) 
  (* \MEM.PORTA.DATA_MSB  = "63" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "255" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d32" *) 
  (* \MEM.PORTB.DATA_LSB  = "0" *) 
  (* \MEM.PORTB.DATA_MSB  = "31" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst/i_transfer/i_request_arb/i_store_and_forward/i_mem/m_ram_reg_bram_0" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_aspect_ratio = "2" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "31" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(72),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(36)) 
    m_ram_reg_bram_0
       (.ADDRARDADDR({1'b1,1'b0,1'b0,ADDRARDADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b0,1'b0,ADDRBWRADDR,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(NLW_m_ram_reg_bram_0_CASCADEINA_UNCONNECTED),
        .CASCADEINB(NLW_m_ram_reg_bram_0_CASCADEINB_UNCONNECTED),
        .CASCADEOUTA(NLW_m_ram_reg_bram_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_m_ram_reg_bram_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(m_dest_axi_aclk),
        .CLKBWRCLK(fifo_wr_clk),
        .DBITERR(NLW_m_ram_reg_bram_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI(fifo_wr_din),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(m_dest_axi_wdata[31:0]),
        .DOBDO(m_dest_axi_wdata[63:32]),
        .DOPADOP(NLW_m_ram_reg_bram_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_m_ram_reg_bram_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_m_ram_reg_bram_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(E),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_m_ram_reg_bram_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_m_ram_reg_bram_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_m_ram_reg_bram_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_m_ram_reg_bram_0_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,m_ram_reg_bram_0_0,m_ram_reg_bram_0_0,m_ram_reg_bram_0_0,m_ram_reg_bram_0_0}));
  LUT3 #(
    .INIT(8'hD0)) 
    m_ram_reg_bram_0_i_1
       (.I0(m_ram_reg_bram_0_1),
        .I1(m_dest_axi_wready),
        .I2(dest_valid),
        .O(E));
endmodule

(* ORIG_REF_NAME = "address_generator" *) 
module icyradio_axi_dmac_rf_rx1_0_address_generator
   (addr_valid_reg_0,
    \id_reg[3]_0 ,
    \id_reg[2]_0 ,
    \id_reg[1]_0 ,
    \id_reg[0]_0 ,
    m_dest_axi_awaddr,
    address_enabled,
    dest_bl_ready,
    req_ready_reg_0,
    dest_burst_valid,
    m_dest_axi_awlen,
    m_dest_axi_aclk,
    \id_reg[0]_1 ,
    dest_address_eot,
    m_dest_axi_awready,
    addr_valid_reg_1,
    addr_valid_reg_2,
    addr_valid_i_2_0,
    addr_valid_i_2_1,
    dest_burst_info_write_i_4_0,
    out,
    bl_ready_reg_0,
    bl_ready_reg_1,
    req_ready_reg_1,
    req_ready_reg_2,
    E,
    \last_burst_len_reg[3]_0 );
  output addr_valid_reg_0;
  output \id_reg[3]_0 ;
  output \id_reg[2]_0 ;
  output \id_reg[1]_0 ;
  output \id_reg[0]_0 ;
  output [28:0]m_dest_axi_awaddr;
  output address_enabled;
  output dest_bl_ready;
  output req_ready_reg_0;
  output dest_burst_valid;
  output [3:0]m_dest_axi_awlen;
  input m_dest_axi_aclk;
  input [0:0]\id_reg[0]_1 ;
  input dest_address_eot;
  input m_dest_axi_awready;
  input addr_valid_reg_1;
  input addr_valid_reg_2;
  input addr_valid_i_2_0;
  input addr_valid_i_2_1;
  input [3:0]dest_burst_info_write_i_4_0;
  input [28:0]out;
  input bl_ready_reg_0;
  input bl_ready_reg_1;
  input req_ready_reg_1;
  input req_ready_reg_2;
  input [0:0]E;
  input [3:0]\last_burst_len_reg[3]_0 ;

  wire [0:0]E;
  wire addr_valid_d1;
  wire addr_valid_i_1_n_0;
  wire addr_valid_i_2_0;
  wire addr_valid_i_2_1;
  wire addr_valid_i_2_n_0;
  wire addr_valid_i_3_n_0;
  wire addr_valid_i_4_n_0;
  wire addr_valid_reg_0;
  wire addr_valid_reg_1;
  wire addr_valid_reg_2;
  wire \address[0]_i_1_n_0 ;
  wire \address[10]_i_2_n_0 ;
  wire \address[10]_i_3_n_0 ;
  wire \address[10]_i_4_n_0 ;
  wire \address[10]_i_5_n_0 ;
  wire \address[14]_i_2_n_0 ;
  wire \address[14]_i_3_n_0 ;
  wire \address[14]_i_4_n_0 ;
  wire \address[14]_i_5_n_0 ;
  wire \address[18]_i_2_n_0 ;
  wire \address[18]_i_3_n_0 ;
  wire \address[18]_i_4_n_0 ;
  wire \address[18]_i_5_n_0 ;
  wire \address[1]_i_1_n_0 ;
  wire \address[22]_i_2_n_0 ;
  wire \address[22]_i_3_n_0 ;
  wire \address[22]_i_4_n_0 ;
  wire \address[22]_i_5_n_0 ;
  wire \address[26]_i_2_n_0 ;
  wire \address[26]_i_3_n_0 ;
  wire \address[26]_i_4_n_0 ;
  wire \address[26]_i_5_n_0 ;
  wire \address[28]_i_1_n_0 ;
  wire \address[28]_i_3_n_0 ;
  wire \address[28]_i_4_n_0 ;
  wire \address[2]_i_1_n_0 ;
  wire \address[6]_i_2_n_0 ;
  wire \address[6]_i_3_n_0 ;
  wire \address[6]_i_4_n_0 ;
  wire \address[6]_i_5_n_0 ;
  wire \address[6]_i_6_n_0 ;
  wire address_enabled;
  wire \address_reg[10]_i_1_n_0 ;
  wire \address_reg[10]_i_1_n_1 ;
  wire \address_reg[10]_i_1_n_2 ;
  wire \address_reg[10]_i_1_n_3 ;
  wire \address_reg[10]_i_1_n_4 ;
  wire \address_reg[10]_i_1_n_5 ;
  wire \address_reg[10]_i_1_n_6 ;
  wire \address_reg[10]_i_1_n_7 ;
  wire \address_reg[14]_i_1_n_0 ;
  wire \address_reg[14]_i_1_n_1 ;
  wire \address_reg[14]_i_1_n_2 ;
  wire \address_reg[14]_i_1_n_3 ;
  wire \address_reg[14]_i_1_n_4 ;
  wire \address_reg[14]_i_1_n_5 ;
  wire \address_reg[14]_i_1_n_6 ;
  wire \address_reg[14]_i_1_n_7 ;
  wire \address_reg[18]_i_1_n_0 ;
  wire \address_reg[18]_i_1_n_1 ;
  wire \address_reg[18]_i_1_n_2 ;
  wire \address_reg[18]_i_1_n_3 ;
  wire \address_reg[18]_i_1_n_4 ;
  wire \address_reg[18]_i_1_n_5 ;
  wire \address_reg[18]_i_1_n_6 ;
  wire \address_reg[18]_i_1_n_7 ;
  wire \address_reg[22]_i_1_n_0 ;
  wire \address_reg[22]_i_1_n_1 ;
  wire \address_reg[22]_i_1_n_2 ;
  wire \address_reg[22]_i_1_n_3 ;
  wire \address_reg[22]_i_1_n_4 ;
  wire \address_reg[22]_i_1_n_5 ;
  wire \address_reg[22]_i_1_n_6 ;
  wire \address_reg[22]_i_1_n_7 ;
  wire \address_reg[26]_i_1_n_0 ;
  wire \address_reg[26]_i_1_n_1 ;
  wire \address_reg[26]_i_1_n_2 ;
  wire \address_reg[26]_i_1_n_3 ;
  wire \address_reg[26]_i_1_n_4 ;
  wire \address_reg[26]_i_1_n_5 ;
  wire \address_reg[26]_i_1_n_6 ;
  wire \address_reg[26]_i_1_n_7 ;
  wire \address_reg[28]_i_2_n_3 ;
  wire \address_reg[28]_i_2_n_6 ;
  wire \address_reg[28]_i_2_n_7 ;
  wire \address_reg[6]_i_1_n_0 ;
  wire \address_reg[6]_i_1_n_1 ;
  wire \address_reg[6]_i_1_n_2 ;
  wire \address_reg[6]_i_1_n_3 ;
  wire \address_reg[6]_i_1_n_4 ;
  wire \address_reg[6]_i_1_n_5 ;
  wire \address_reg[6]_i_1_n_6 ;
  wire \address_reg[6]_i_1_n_7 ;
  wire bl_ready_i_1_n_0;
  wire bl_ready_reg_0;
  wire bl_ready_reg_1;
  wire dest_address_eot;
  wire dest_bl_ready;
  wire [3:0]dest_burst_info_write_i_4_0;
  wire dest_burst_info_write_i_5_n_0;
  wire dest_burst_valid;
  wire enabled_i_1_n_0;
  wire id0;
  wire \id[3]_i_2__0_n_0 ;
  wire \id_reg[0]_0 ;
  wire [0:0]\id_reg[0]_1 ;
  wire \id_reg[1]_0 ;
  wire \id_reg[2]_0 ;
  wire \id_reg[3]_0 ;
  wire [2:0]inc_id_return;
  wire last;
  wire [3:0]last_burst_len;
  wire [3:0]\last_burst_len_reg[3]_0 ;
  wire \length[3]_i_1_n_0 ;
  wire m_dest_axi_aclk;
  wire [28:0]m_dest_axi_awaddr;
  wire [3:0]m_dest_axi_awlen;
  wire m_dest_axi_awready;
  wire [28:0]out;
  wire p_0_in0;
  wire req_ready_i_1__0_n_0;
  wire req_ready_reg_0;
  wire req_ready_reg_1;
  wire req_ready_reg_2;
  wire [3:1]\NLW_address_reg[28]_i_2_CO_UNCONNECTED ;
  wire [3:2]\NLW_address_reg[28]_i_2_O_UNCONNECTED ;

  FDRE addr_valid_d1_reg
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(addr_valid_reg_0),
        .Q(addr_valid_d1),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h5500555540404040)) 
    addr_valid_i_1
       (.I0(\id_reg[0]_1 ),
        .I1(addr_valid_i_2_n_0),
        .I2(addr_valid_i_3_n_0),
        .I3(req_ready_reg_0),
        .I4(m_dest_axi_awready),
        .I5(addr_valid_reg_0),
        .O(addr_valid_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFF6FF6)) 
    addr_valid_i_2
       (.I0(addr_valid_reg_1),
        .I1(\id_reg[1]_0 ),
        .I2(addr_valid_reg_2),
        .I3(\id_reg[0]_0 ),
        .I4(addr_valid_i_4_n_0),
        .O(addr_valid_i_2_n_0));
  LUT4 #(
    .INIT(16'h0444)) 
    addr_valid_i_3
       (.I0(req_ready_reg_0),
        .I1(bl_ready_reg_0),
        .I2(dest_bl_ready),
        .I3(dest_address_eot),
        .O(addr_valid_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h6FF6)) 
    addr_valid_i_4
       (.I0(\id_reg[2]_0 ),
        .I1(addr_valid_i_2_0),
        .I2(\id_reg[3]_0 ),
        .I3(addr_valid_i_2_1),
        .O(addr_valid_i_4_n_0));
  FDRE addr_valid_reg
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(addr_valid_i_1_n_0),
        .Q(addr_valid_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \address[0]_i_1 
       (.I0(out[0]),
        .I1(req_ready_reg_0),
        .I2(m_dest_axi_awaddr[0]),
        .O(\address[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[10]_i_2 
       (.I0(out[10]),
        .I1(req_ready_reg_0),
        .I2(m_dest_axi_awaddr[10]),
        .O(\address[10]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[10]_i_3 
       (.I0(out[9]),
        .I1(req_ready_reg_0),
        .I2(m_dest_axi_awaddr[9]),
        .O(\address[10]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[10]_i_4 
       (.I0(out[8]),
        .I1(req_ready_reg_0),
        .I2(m_dest_axi_awaddr[8]),
        .O(\address[10]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[10]_i_5 
       (.I0(out[7]),
        .I1(req_ready_reg_0),
        .I2(m_dest_axi_awaddr[7]),
        .O(\address[10]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[14]_i_2 
       (.I0(out[14]),
        .I1(req_ready_reg_0),
        .I2(m_dest_axi_awaddr[14]),
        .O(\address[14]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[14]_i_3 
       (.I0(out[13]),
        .I1(req_ready_reg_0),
        .I2(m_dest_axi_awaddr[13]),
        .O(\address[14]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[14]_i_4 
       (.I0(out[12]),
        .I1(req_ready_reg_0),
        .I2(m_dest_axi_awaddr[12]),
        .O(\address[14]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[14]_i_5 
       (.I0(out[11]),
        .I1(req_ready_reg_0),
        .I2(m_dest_axi_awaddr[11]),
        .O(\address[14]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[18]_i_2 
       (.I0(out[18]),
        .I1(req_ready_reg_0),
        .I2(m_dest_axi_awaddr[18]),
        .O(\address[18]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[18]_i_3 
       (.I0(out[17]),
        .I1(req_ready_reg_0),
        .I2(m_dest_axi_awaddr[17]),
        .O(\address[18]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[18]_i_4 
       (.I0(out[16]),
        .I1(req_ready_reg_0),
        .I2(m_dest_axi_awaddr[16]),
        .O(\address[18]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[18]_i_5 
       (.I0(out[15]),
        .I1(req_ready_reg_0),
        .I2(m_dest_axi_awaddr[15]),
        .O(\address[18]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \address[1]_i_1 
       (.I0(out[1]),
        .I1(req_ready_reg_0),
        .I2(m_dest_axi_awaddr[1]),
        .O(\address[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[22]_i_2 
       (.I0(out[22]),
        .I1(req_ready_reg_0),
        .I2(m_dest_axi_awaddr[22]),
        .O(\address[22]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[22]_i_3 
       (.I0(out[21]),
        .I1(req_ready_reg_0),
        .I2(m_dest_axi_awaddr[21]),
        .O(\address[22]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[22]_i_4 
       (.I0(out[20]),
        .I1(req_ready_reg_0),
        .I2(m_dest_axi_awaddr[20]),
        .O(\address[22]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[22]_i_5 
       (.I0(out[19]),
        .I1(req_ready_reg_0),
        .I2(m_dest_axi_awaddr[19]),
        .O(\address[22]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[26]_i_2 
       (.I0(out[26]),
        .I1(req_ready_reg_0),
        .I2(m_dest_axi_awaddr[26]),
        .O(\address[26]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[26]_i_3 
       (.I0(out[25]),
        .I1(req_ready_reg_0),
        .I2(m_dest_axi_awaddr[25]),
        .O(\address[26]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[26]_i_4 
       (.I0(out[24]),
        .I1(req_ready_reg_0),
        .I2(m_dest_axi_awaddr[24]),
        .O(\address[26]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[26]_i_5 
       (.I0(out[23]),
        .I1(req_ready_reg_0),
        .I2(m_dest_axi_awaddr[23]),
        .O(\address[26]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \address[28]_i_1 
       (.I0(req_ready_reg_0),
        .I1(addr_valid_reg_0),
        .I2(m_dest_axi_awready),
        .O(\address[28]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[28]_i_3 
       (.I0(out[28]),
        .I1(req_ready_reg_0),
        .I2(m_dest_axi_awaddr[28]),
        .O(\address[28]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[28]_i_4 
       (.I0(out[27]),
        .I1(req_ready_reg_0),
        .I2(m_dest_axi_awaddr[27]),
        .O(\address[28]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[2]_i_1 
       (.I0(out[2]),
        .I1(req_ready_reg_0),
        .I2(m_dest_axi_awaddr[2]),
        .O(\address[2]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \address[6]_i_2 
       (.I0(req_ready_reg_0),
        .O(\address[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[6]_i_3 
       (.I0(out[6]),
        .I1(req_ready_reg_0),
        .I2(m_dest_axi_awaddr[6]),
        .O(\address[6]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[6]_i_4 
       (.I0(out[5]),
        .I1(req_ready_reg_0),
        .I2(m_dest_axi_awaddr[5]),
        .O(\address[6]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \address[6]_i_5 
       (.I0(m_dest_axi_awaddr[4]),
        .I1(out[4]),
        .I2(req_ready_reg_0),
        .O(\address[6]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[6]_i_6 
       (.I0(out[3]),
        .I1(req_ready_reg_0),
        .I2(m_dest_axi_awaddr[3]),
        .O(\address[6]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[0] 
       (.C(m_dest_axi_aclk),
        .CE(\address[28]_i_1_n_0 ),
        .D(\address[0]_i_1_n_0 ),
        .Q(m_dest_axi_awaddr[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[10] 
       (.C(m_dest_axi_aclk),
        .CE(\address[28]_i_1_n_0 ),
        .D(\address_reg[10]_i_1_n_4 ),
        .Q(m_dest_axi_awaddr[10]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \address_reg[10]_i_1 
       (.CI(\address_reg[6]_i_1_n_0 ),
        .CO({\address_reg[10]_i_1_n_0 ,\address_reg[10]_i_1_n_1 ,\address_reg[10]_i_1_n_2 ,\address_reg[10]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\address_reg[10]_i_1_n_4 ,\address_reg[10]_i_1_n_5 ,\address_reg[10]_i_1_n_6 ,\address_reg[10]_i_1_n_7 }),
        .S({\address[10]_i_2_n_0 ,\address[10]_i_3_n_0 ,\address[10]_i_4_n_0 ,\address[10]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[11] 
       (.C(m_dest_axi_aclk),
        .CE(\address[28]_i_1_n_0 ),
        .D(\address_reg[14]_i_1_n_7 ),
        .Q(m_dest_axi_awaddr[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[12] 
       (.C(m_dest_axi_aclk),
        .CE(\address[28]_i_1_n_0 ),
        .D(\address_reg[14]_i_1_n_6 ),
        .Q(m_dest_axi_awaddr[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[13] 
       (.C(m_dest_axi_aclk),
        .CE(\address[28]_i_1_n_0 ),
        .D(\address_reg[14]_i_1_n_5 ),
        .Q(m_dest_axi_awaddr[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[14] 
       (.C(m_dest_axi_aclk),
        .CE(\address[28]_i_1_n_0 ),
        .D(\address_reg[14]_i_1_n_4 ),
        .Q(m_dest_axi_awaddr[14]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \address_reg[14]_i_1 
       (.CI(\address_reg[10]_i_1_n_0 ),
        .CO({\address_reg[14]_i_1_n_0 ,\address_reg[14]_i_1_n_1 ,\address_reg[14]_i_1_n_2 ,\address_reg[14]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\address_reg[14]_i_1_n_4 ,\address_reg[14]_i_1_n_5 ,\address_reg[14]_i_1_n_6 ,\address_reg[14]_i_1_n_7 }),
        .S({\address[14]_i_2_n_0 ,\address[14]_i_3_n_0 ,\address[14]_i_4_n_0 ,\address[14]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[15] 
       (.C(m_dest_axi_aclk),
        .CE(\address[28]_i_1_n_0 ),
        .D(\address_reg[18]_i_1_n_7 ),
        .Q(m_dest_axi_awaddr[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[16] 
       (.C(m_dest_axi_aclk),
        .CE(\address[28]_i_1_n_0 ),
        .D(\address_reg[18]_i_1_n_6 ),
        .Q(m_dest_axi_awaddr[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[17] 
       (.C(m_dest_axi_aclk),
        .CE(\address[28]_i_1_n_0 ),
        .D(\address_reg[18]_i_1_n_5 ),
        .Q(m_dest_axi_awaddr[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[18] 
       (.C(m_dest_axi_aclk),
        .CE(\address[28]_i_1_n_0 ),
        .D(\address_reg[18]_i_1_n_4 ),
        .Q(m_dest_axi_awaddr[18]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \address_reg[18]_i_1 
       (.CI(\address_reg[14]_i_1_n_0 ),
        .CO({\address_reg[18]_i_1_n_0 ,\address_reg[18]_i_1_n_1 ,\address_reg[18]_i_1_n_2 ,\address_reg[18]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\address_reg[18]_i_1_n_4 ,\address_reg[18]_i_1_n_5 ,\address_reg[18]_i_1_n_6 ,\address_reg[18]_i_1_n_7 }),
        .S({\address[18]_i_2_n_0 ,\address[18]_i_3_n_0 ,\address[18]_i_4_n_0 ,\address[18]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[19] 
       (.C(m_dest_axi_aclk),
        .CE(\address[28]_i_1_n_0 ),
        .D(\address_reg[22]_i_1_n_7 ),
        .Q(m_dest_axi_awaddr[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[1] 
       (.C(m_dest_axi_aclk),
        .CE(\address[28]_i_1_n_0 ),
        .D(\address[1]_i_1_n_0 ),
        .Q(m_dest_axi_awaddr[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[20] 
       (.C(m_dest_axi_aclk),
        .CE(\address[28]_i_1_n_0 ),
        .D(\address_reg[22]_i_1_n_6 ),
        .Q(m_dest_axi_awaddr[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[21] 
       (.C(m_dest_axi_aclk),
        .CE(\address[28]_i_1_n_0 ),
        .D(\address_reg[22]_i_1_n_5 ),
        .Q(m_dest_axi_awaddr[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[22] 
       (.C(m_dest_axi_aclk),
        .CE(\address[28]_i_1_n_0 ),
        .D(\address_reg[22]_i_1_n_4 ),
        .Q(m_dest_axi_awaddr[22]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \address_reg[22]_i_1 
       (.CI(\address_reg[18]_i_1_n_0 ),
        .CO({\address_reg[22]_i_1_n_0 ,\address_reg[22]_i_1_n_1 ,\address_reg[22]_i_1_n_2 ,\address_reg[22]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\address_reg[22]_i_1_n_4 ,\address_reg[22]_i_1_n_5 ,\address_reg[22]_i_1_n_6 ,\address_reg[22]_i_1_n_7 }),
        .S({\address[22]_i_2_n_0 ,\address[22]_i_3_n_0 ,\address[22]_i_4_n_0 ,\address[22]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[23] 
       (.C(m_dest_axi_aclk),
        .CE(\address[28]_i_1_n_0 ),
        .D(\address_reg[26]_i_1_n_7 ),
        .Q(m_dest_axi_awaddr[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[24] 
       (.C(m_dest_axi_aclk),
        .CE(\address[28]_i_1_n_0 ),
        .D(\address_reg[26]_i_1_n_6 ),
        .Q(m_dest_axi_awaddr[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[25] 
       (.C(m_dest_axi_aclk),
        .CE(\address[28]_i_1_n_0 ),
        .D(\address_reg[26]_i_1_n_5 ),
        .Q(m_dest_axi_awaddr[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[26] 
       (.C(m_dest_axi_aclk),
        .CE(\address[28]_i_1_n_0 ),
        .D(\address_reg[26]_i_1_n_4 ),
        .Q(m_dest_axi_awaddr[26]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \address_reg[26]_i_1 
       (.CI(\address_reg[22]_i_1_n_0 ),
        .CO({\address_reg[26]_i_1_n_0 ,\address_reg[26]_i_1_n_1 ,\address_reg[26]_i_1_n_2 ,\address_reg[26]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\address_reg[26]_i_1_n_4 ,\address_reg[26]_i_1_n_5 ,\address_reg[26]_i_1_n_6 ,\address_reg[26]_i_1_n_7 }),
        .S({\address[26]_i_2_n_0 ,\address[26]_i_3_n_0 ,\address[26]_i_4_n_0 ,\address[26]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[27] 
       (.C(m_dest_axi_aclk),
        .CE(\address[28]_i_1_n_0 ),
        .D(\address_reg[28]_i_2_n_7 ),
        .Q(m_dest_axi_awaddr[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[28] 
       (.C(m_dest_axi_aclk),
        .CE(\address[28]_i_1_n_0 ),
        .D(\address_reg[28]_i_2_n_6 ),
        .Q(m_dest_axi_awaddr[28]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \address_reg[28]_i_2 
       (.CI(\address_reg[26]_i_1_n_0 ),
        .CO({\NLW_address_reg[28]_i_2_CO_UNCONNECTED [3:1],\address_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_address_reg[28]_i_2_O_UNCONNECTED [3:2],\address_reg[28]_i_2_n_6 ,\address_reg[28]_i_2_n_7 }),
        .S({1'b0,1'b0,\address[28]_i_3_n_0 ,\address[28]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[2] 
       (.C(m_dest_axi_aclk),
        .CE(\address[28]_i_1_n_0 ),
        .D(\address[2]_i_1_n_0 ),
        .Q(m_dest_axi_awaddr[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[3] 
       (.C(m_dest_axi_aclk),
        .CE(\address[28]_i_1_n_0 ),
        .D(\address_reg[6]_i_1_n_7 ),
        .Q(m_dest_axi_awaddr[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[4] 
       (.C(m_dest_axi_aclk),
        .CE(\address[28]_i_1_n_0 ),
        .D(\address_reg[6]_i_1_n_6 ),
        .Q(m_dest_axi_awaddr[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[5] 
       (.C(m_dest_axi_aclk),
        .CE(\address[28]_i_1_n_0 ),
        .D(\address_reg[6]_i_1_n_5 ),
        .Q(m_dest_axi_awaddr[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[6] 
       (.C(m_dest_axi_aclk),
        .CE(\address[28]_i_1_n_0 ),
        .D(\address_reg[6]_i_1_n_4 ),
        .Q(m_dest_axi_awaddr[6]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \address_reg[6]_i_1 
       (.CI(1'b0),
        .CO({\address_reg[6]_i_1_n_0 ,\address_reg[6]_i_1_n_1 ,\address_reg[6]_i_1_n_2 ,\address_reg[6]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\address[6]_i_2_n_0 ,1'b0}),
        .O({\address_reg[6]_i_1_n_4 ,\address_reg[6]_i_1_n_5 ,\address_reg[6]_i_1_n_6 ,\address_reg[6]_i_1_n_7 }),
        .S({\address[6]_i_3_n_0 ,\address[6]_i_4_n_0 ,\address[6]_i_5_n_0 ,\address[6]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[7] 
       (.C(m_dest_axi_aclk),
        .CE(\address[28]_i_1_n_0 ),
        .D(\address_reg[10]_i_1_n_7 ),
        .Q(m_dest_axi_awaddr[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[8] 
       (.C(m_dest_axi_aclk),
        .CE(\address[28]_i_1_n_0 ),
        .D(\address_reg[10]_i_1_n_6 ),
        .Q(m_dest_axi_awaddr[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[9] 
       (.C(m_dest_axi_aclk),
        .CE(\address[28]_i_1_n_0 ),
        .D(\address_reg[10]_i_1_n_5 ),
        .Q(m_dest_axi_awaddr[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAAAAA0C000000)) 
    bl_ready_i_1
       (.I0(bl_ready_reg_1),
        .I1(addr_valid_i_2_n_0),
        .I2(addr_valid_reg_0),
        .I3(bl_ready_reg_0),
        .I4(dest_address_eot),
        .I5(dest_bl_ready),
        .O(bl_ready_i_1_n_0));
  FDSE bl_ready_reg
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(bl_ready_i_1_n_0),
        .Q(dest_bl_ready),
        .S(\id_reg[0]_1 ));
  LUT5 #(
    .INIT(32'hFFFF6FF6)) 
    dest_burst_info_write_i_4
       (.I0(dest_burst_info_write_i_4_0[1]),
        .I1(\id_reg[1]_0 ),
        .I2(dest_burst_info_write_i_4_0[0]),
        .I3(\id_reg[0]_0 ),
        .I4(dest_burst_info_write_i_5_n_0),
        .O(dest_burst_valid));
  LUT4 #(
    .INIT(16'h6FF6)) 
    dest_burst_info_write_i_5
       (.I0(\id_reg[2]_0 ),
        .I1(dest_burst_info_write_i_4_0[2]),
        .I2(\id_reg[3]_0 ),
        .I3(dest_burst_info_write_i_4_0[3]),
        .O(dest_burst_info_write_i_5_n_0));
  LUT3 #(
    .INIT(8'hEA)) 
    enabled_i_1
       (.I0(bl_ready_reg_0),
        .I1(addr_valid_reg_0),
        .I2(address_enabled),
        .O(enabled_i_1_n_0));
  FDRE enabled_reg
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(enabled_i_1_n_0),
        .Q(address_enabled),
        .R(\id_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \id[0]_i_1__1 
       (.I0(\id_reg[3]_0 ),
        .I1(\id_reg[2]_0 ),
        .I2(\id_reg[1]_0 ),
        .O(inc_id_return[0]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h99F0)) 
    \id[1]_i_1__0 
       (.I0(\id_reg[2]_0 ),
        .I1(\id_reg[3]_0 ),
        .I2(\id_reg[1]_0 ),
        .I3(\id_reg[0]_0 ),
        .O(inc_id_return[1]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h8ABA)) 
    \id[2]_i_1__0 
       (.I0(\id_reg[2]_0 ),
        .I1(\id_reg[0]_0 ),
        .I2(\id_reg[1]_0 ),
        .I3(\id_reg[3]_0 ),
        .O(inc_id_return[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \id[3]_i_1 
       (.I0(addr_valid_reg_0),
        .I1(addr_valid_d1),
        .O(id0));
  LUT4 #(
    .INIT(16'hABA8)) 
    \id[3]_i_2__0 
       (.I0(\id_reg[3]_0 ),
        .I1(\id_reg[0]_0 ),
        .I2(\id_reg[1]_0 ),
        .I3(\id_reg[2]_0 ),
        .O(\id[3]_i_2__0_n_0 ));
  FDRE \id_reg[0] 
       (.C(m_dest_axi_aclk),
        .CE(id0),
        .D(inc_id_return[0]),
        .Q(\id_reg[0]_0 ),
        .R(\id_reg[0]_1 ));
  FDRE \id_reg[1] 
       (.C(m_dest_axi_aclk),
        .CE(id0),
        .D(inc_id_return[1]),
        .Q(\id_reg[1]_0 ),
        .R(\id_reg[0]_1 ));
  FDRE \id_reg[2] 
       (.C(m_dest_axi_aclk),
        .CE(id0),
        .D(inc_id_return[2]),
        .Q(\id_reg[2]_0 ),
        .R(\id_reg[0]_1 ));
  FDRE \id_reg[3] 
       (.C(m_dest_axi_aclk),
        .CE(id0),
        .D(\id[3]_i_2__0_n_0 ),
        .Q(\id_reg[3]_0 ),
        .R(\id_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \last_burst_len_reg[0] 
       (.C(m_dest_axi_aclk),
        .CE(E),
        .D(\last_burst_len_reg[3]_0 [0]),
        .Q(last_burst_len[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_burst_len_reg[1] 
       (.C(m_dest_axi_aclk),
        .CE(E),
        .D(\last_burst_len_reg[3]_0 [1]),
        .Q(last_burst_len[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_burst_len_reg[2] 
       (.C(m_dest_axi_aclk),
        .CE(E),
        .D(\last_burst_len_reg[3]_0 [2]),
        .Q(last_burst_len[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_burst_len_reg[3] 
       (.C(m_dest_axi_aclk),
        .CE(E),
        .D(\last_burst_len_reg[3]_0 [3]),
        .Q(last_burst_len[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    last_reg
       (.C(m_dest_axi_aclk),
        .CE(p_0_in0),
        .D(dest_address_eot),
        .Q(last),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    \length[3]_i_1 
       (.I0(dest_address_eot),
        .I1(addr_valid_reg_0),
        .O(\length[3]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \length[3]_i_2 
       (.I0(addr_valid_reg_0),
        .O(p_0_in0));
  FDSE #(
    .INIT(1'b0)) 
    \length_reg[0] 
       (.C(m_dest_axi_aclk),
        .CE(p_0_in0),
        .D(last_burst_len[0]),
        .Q(m_dest_axi_awlen[0]),
        .S(\length[3]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \length_reg[1] 
       (.C(m_dest_axi_aclk),
        .CE(p_0_in0),
        .D(last_burst_len[1]),
        .Q(m_dest_axi_awlen[1]),
        .S(\length[3]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \length_reg[2] 
       (.C(m_dest_axi_aclk),
        .CE(p_0_in0),
        .D(last_burst_len[2]),
        .Q(m_dest_axi_awlen[2]),
        .S(\length[3]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \length_reg[3] 
       (.C(m_dest_axi_aclk),
        .CE(p_0_in0),
        .D(last_burst_len[3]),
        .Q(m_dest_axi_awlen[3]),
        .S(\length[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h99F0990099009900)) 
    req_ready_i_1__0
       (.I0(req_ready_reg_1),
        .I1(req_ready_reg_2),
        .I2(last),
        .I3(req_ready_reg_0),
        .I4(addr_valid_reg_0),
        .I5(m_dest_axi_awready),
        .O(req_ready_i_1__0_n_0));
  FDSE req_ready_reg
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(req_ready_i_1__0_n_0),
        .Q(req_ready_reg_0),
        .S(\id_reg[0]_1 ));
endmodule

(* ALLOW_ASYM_MEM = "1" *) (* ASYNC_CLK_DEST_REQ = "1'b0" *) (* ASYNC_CLK_DEST_SG = "1'b1" *) 
(* ASYNC_CLK_REQ_SG = "1'b1" *) (* ASYNC_CLK_REQ_SRC = "1'b1" *) (* ASYNC_CLK_SRC_DEST = "1'b1" *) 
(* ASYNC_CLK_SRC_SG = "1'b1" *) (* AXI_ID_WIDTH_DEST = "1" *) (* AXI_ID_WIDTH_SG = "1" *) 
(* AXI_ID_WIDTH_SRC = "1" *) (* AXI_SLICE_DEST = "1'b0" *) (* AXI_SLICE_SRC = "1'b0" *) 
(* BEATS_PER_BURST_LIMIT_DEST = "256" *) (* BEATS_PER_BURST_LIMIT_SRC = "1024" *) (* BYTES_PER_BEAT_WIDTH_DEST = "3" *) 
(* BYTES_PER_BEAT_WIDTH_SG = "3" *) (* BYTES_PER_BEAT_WIDTH_SRC = "2" *) (* BYTES_PER_BURST_LIMIT = "2048" *) 
(* BYTES_PER_BURST_LIMIT_DEST = "2048" *) (* BYTES_PER_BURST_LIMIT_SRC = "4096" *) (* BYTES_PER_BURST_WIDTH = "7" *) 
(* CACHE_COHERENT_DEST = "1'b1" *) (* CYCLIC = "1'b0" *) (* DBG_ID_PADDING = "4" *) 
(* DISABLE_DEBUG_REGISTERS = "1'b1" *) (* DMA_2D_TRANSFER = "1'b0" *) (* DMA_AXIS_DEST_W = "4" *) 
(* DMA_AXIS_ID_W = "8" *) (* DMA_AXI_ADDR_WIDTH = "32" *) (* DMA_AXI_PROTOCOL_DEST = "0" *) 
(* DMA_AXI_PROTOCOL_SG = "0" *) (* DMA_AXI_PROTOCOL_SRC = "0" *) (* DMA_DATA_WIDTH_DEST = "64" *) 
(* DMA_DATA_WIDTH_SG = "64" *) (* DMA_DATA_WIDTH_SRC = "32" *) (* DMA_LENGTH_ALIGN = "2" *) 
(* DMA_LENGTH_ALIGN_DEST = "0" *) (* DMA_LENGTH_ALIGN_SRC = "2" *) (* DMA_LENGTH_WIDTH = "24" *) 
(* DMA_SG_TRANSFER = "1'b0" *) (* DMA_TYPE_AXI_MM = "0" *) (* DMA_TYPE_AXI_STREAM = "1" *) 
(* DMA_TYPE_DEST = "0" *) (* DMA_TYPE_FIFO = "2" *) (* DMA_TYPE_SRC = "2" *) 
(* ENABLE_DIAGNOSTICS_IF = "1'b0" *) (* FIFO_SIZE = "8" *) (* HAS_DEST_ADDR = "1'b1" *) 
(* HAS_SRC_ADDR = "1'b0" *) (* ID = "3" *) (* ID_WIDTH = "4" *) 
(* MAX_BYTES_PER_BURST = "128" *) (* ORIG_REF_NAME = "axi_dmac" *) (* REAL_MAX_BYTES_PER_BURST = "128" *) 
(* SYNC_TRANSFER_START = "1'b1" *) 
module icyradio_axi_dmac_rf_rx1_0_axi_dmac
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awvalid,
    s_axi_awaddr,
    s_axi_awready,
    s_axi_awprot,
    s_axi_wvalid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wready,
    s_axi_bvalid,
    s_axi_bresp,
    s_axi_bready,
    s_axi_arvalid,
    s_axi_araddr,
    s_axi_arready,
    s_axi_arprot,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_rresp,
    s_axi_rdata,
    irq,
    m_dest_axi_aclk,
    m_dest_axi_aresetn,
    m_dest_axi_awaddr,
    m_dest_axi_awlen,
    m_dest_axi_awsize,
    m_dest_axi_awburst,
    m_dest_axi_awprot,
    m_dest_axi_awcache,
    m_dest_axi_awvalid,
    m_dest_axi_awready,
    m_dest_axi_awid,
    m_dest_axi_awlock,
    m_dest_axi_wdata,
    m_dest_axi_wstrb,
    m_dest_axi_wready,
    m_dest_axi_wvalid,
    m_dest_axi_wlast,
    m_dest_axi_wid,
    m_dest_axi_bvalid,
    m_dest_axi_bresp,
    m_dest_axi_bready,
    m_dest_axi_bid,
    m_dest_axi_arvalid,
    m_dest_axi_araddr,
    m_dest_axi_arlen,
    m_dest_axi_arsize,
    m_dest_axi_arburst,
    m_dest_axi_arcache,
    m_dest_axi_arprot,
    m_dest_axi_arready,
    m_dest_axi_rvalid,
    m_dest_axi_rresp,
    m_dest_axi_rdata,
    m_dest_axi_rready,
    m_dest_axi_arid,
    m_dest_axi_arlock,
    m_dest_axi_rid,
    m_dest_axi_rlast,
    m_src_axi_aclk,
    m_src_axi_aresetn,
    m_src_axi_arready,
    m_src_axi_arvalid,
    m_src_axi_araddr,
    m_src_axi_arlen,
    m_src_axi_arsize,
    m_src_axi_arburst,
    m_src_axi_arprot,
    m_src_axi_arcache,
    m_src_axi_arid,
    m_src_axi_arlock,
    m_src_axi_rdata,
    m_src_axi_rready,
    m_src_axi_rvalid,
    m_src_axi_rresp,
    m_src_axi_rid,
    m_src_axi_rlast,
    m_src_axi_awvalid,
    m_src_axi_awaddr,
    m_src_axi_awlen,
    m_src_axi_awsize,
    m_src_axi_awburst,
    m_src_axi_awcache,
    m_src_axi_awprot,
    m_src_axi_awready,
    m_src_axi_wvalid,
    m_src_axi_wdata,
    m_src_axi_wstrb,
    m_src_axi_wlast,
    m_src_axi_wready,
    m_src_axi_bvalid,
    m_src_axi_bresp,
    m_src_axi_bready,
    m_src_axi_awid,
    m_src_axi_awlock,
    m_src_axi_wid,
    m_src_axi_bid,
    m_sg_axi_aclk,
    m_sg_axi_aresetn,
    m_sg_axi_arready,
    m_sg_axi_arvalid,
    m_sg_axi_araddr,
    m_sg_axi_arlen,
    m_sg_axi_arsize,
    m_sg_axi_arburst,
    m_sg_axi_arprot,
    m_sg_axi_arcache,
    m_sg_axi_arid,
    m_sg_axi_arlock,
    m_sg_axi_rdata,
    m_sg_axi_rready,
    m_sg_axi_rvalid,
    m_sg_axi_rresp,
    m_sg_axi_rid,
    m_sg_axi_rlast,
    m_sg_axi_awvalid,
    m_sg_axi_awaddr,
    m_sg_axi_awlen,
    m_sg_axi_awsize,
    m_sg_axi_awburst,
    m_sg_axi_awcache,
    m_sg_axi_awprot,
    m_sg_axi_awready,
    m_sg_axi_wvalid,
    m_sg_axi_wdata,
    m_sg_axi_wstrb,
    m_sg_axi_wlast,
    m_sg_axi_wready,
    m_sg_axi_bvalid,
    m_sg_axi_bresp,
    m_sg_axi_bready,
    m_sg_axi_awid,
    m_sg_axi_awlock,
    m_sg_axi_wid,
    m_sg_axi_bid,
    s_axis_aclk,
    s_axis_ready,
    s_axis_valid,
    s_axis_data,
    s_axis_strb,
    s_axis_keep,
    s_axis_user,
    s_axis_id,
    s_axis_dest,
    s_axis_last,
    s_axis_xfer_req,
    m_axis_aclk,
    m_axis_ready,
    m_axis_valid,
    m_axis_data,
    m_axis_strb,
    m_axis_keep,
    m_axis_user,
    m_axis_id,
    m_axis_dest,
    m_axis_last,
    m_axis_xfer_req,
    fifo_wr_clk,
    fifo_wr_en,
    fifo_wr_din,
    fifo_wr_overflow,
    fifo_wr_sync,
    fifo_wr_xfer_req,
    fifo_rd_clk,
    fifo_rd_en,
    fifo_rd_valid,
    fifo_rd_dout,
    fifo_rd_underflow,
    fifo_rd_xfer_req,
    dest_diag_level_bursts);
  input s_axi_aclk;
  input s_axi_aresetn;
  input s_axi_awvalid;
  input [10:0]s_axi_awaddr;
  output s_axi_awready;
  input [2:0]s_axi_awprot;
  input s_axi_wvalid;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  output s_axi_wready;
  output s_axi_bvalid;
  output [1:0]s_axi_bresp;
  input s_axi_bready;
  input s_axi_arvalid;
  input [10:0]s_axi_araddr;
  output s_axi_arready;
  input [2:0]s_axi_arprot;
  output s_axi_rvalid;
  input s_axi_rready;
  output [1:0]s_axi_rresp;
  output [31:0]s_axi_rdata;
  output irq;
  input m_dest_axi_aclk;
  input m_dest_axi_aresetn;
  output [31:0]m_dest_axi_awaddr;
  output [7:0]m_dest_axi_awlen;
  output [2:0]m_dest_axi_awsize;
  output [1:0]m_dest_axi_awburst;
  output [2:0]m_dest_axi_awprot;
  output [3:0]m_dest_axi_awcache;
  output m_dest_axi_awvalid;
  input m_dest_axi_awready;
  output [0:0]m_dest_axi_awid;
  output [0:0]m_dest_axi_awlock;
  output [63:0]m_dest_axi_wdata;
  output [7:0]m_dest_axi_wstrb;
  input m_dest_axi_wready;
  output m_dest_axi_wvalid;
  output m_dest_axi_wlast;
  output [0:0]m_dest_axi_wid;
  input m_dest_axi_bvalid;
  input [1:0]m_dest_axi_bresp;
  output m_dest_axi_bready;
  input [0:0]m_dest_axi_bid;
  output m_dest_axi_arvalid;
  output [31:0]m_dest_axi_araddr;
  output [7:0]m_dest_axi_arlen;
  output [2:0]m_dest_axi_arsize;
  output [1:0]m_dest_axi_arburst;
  output [3:0]m_dest_axi_arcache;
  output [2:0]m_dest_axi_arprot;
  input m_dest_axi_arready;
  input m_dest_axi_rvalid;
  input [1:0]m_dest_axi_rresp;
  input [63:0]m_dest_axi_rdata;
  output m_dest_axi_rready;
  output [0:0]m_dest_axi_arid;
  output [0:0]m_dest_axi_arlock;
  input [0:0]m_dest_axi_rid;
  input m_dest_axi_rlast;
  input m_src_axi_aclk;
  input m_src_axi_aresetn;
  input m_src_axi_arready;
  output m_src_axi_arvalid;
  output [31:0]m_src_axi_araddr;
  output [7:0]m_src_axi_arlen;
  output [2:0]m_src_axi_arsize;
  output [1:0]m_src_axi_arburst;
  output [2:0]m_src_axi_arprot;
  output [3:0]m_src_axi_arcache;
  output [0:0]m_src_axi_arid;
  output [0:0]m_src_axi_arlock;
  input [31:0]m_src_axi_rdata;
  output m_src_axi_rready;
  input m_src_axi_rvalid;
  input [1:0]m_src_axi_rresp;
  input [0:0]m_src_axi_rid;
  input m_src_axi_rlast;
  output m_src_axi_awvalid;
  output [31:0]m_src_axi_awaddr;
  output [7:0]m_src_axi_awlen;
  output [2:0]m_src_axi_awsize;
  output [1:0]m_src_axi_awburst;
  output [3:0]m_src_axi_awcache;
  output [2:0]m_src_axi_awprot;
  input m_src_axi_awready;
  output m_src_axi_wvalid;
  output [31:0]m_src_axi_wdata;
  output [3:0]m_src_axi_wstrb;
  output m_src_axi_wlast;
  input m_src_axi_wready;
  input m_src_axi_bvalid;
  input [1:0]m_src_axi_bresp;
  output m_src_axi_bready;
  output [0:0]m_src_axi_awid;
  output [0:0]m_src_axi_awlock;
  output [0:0]m_src_axi_wid;
  input [0:0]m_src_axi_bid;
  input m_sg_axi_aclk;
  input m_sg_axi_aresetn;
  input m_sg_axi_arready;
  output m_sg_axi_arvalid;
  output [31:0]m_sg_axi_araddr;
  output [7:0]m_sg_axi_arlen;
  output [2:0]m_sg_axi_arsize;
  output [1:0]m_sg_axi_arburst;
  output [2:0]m_sg_axi_arprot;
  output [3:0]m_sg_axi_arcache;
  output [0:0]m_sg_axi_arid;
  output [0:0]m_sg_axi_arlock;
  input [63:0]m_sg_axi_rdata;
  output m_sg_axi_rready;
  input m_sg_axi_rvalid;
  input [1:0]m_sg_axi_rresp;
  input [0:0]m_sg_axi_rid;
  input m_sg_axi_rlast;
  output m_sg_axi_awvalid;
  output [31:0]m_sg_axi_awaddr;
  output [7:0]m_sg_axi_awlen;
  output [2:0]m_sg_axi_awsize;
  output [1:0]m_sg_axi_awburst;
  output [3:0]m_sg_axi_awcache;
  output [2:0]m_sg_axi_awprot;
  input m_sg_axi_awready;
  output m_sg_axi_wvalid;
  output [63:0]m_sg_axi_wdata;
  output [7:0]m_sg_axi_wstrb;
  output m_sg_axi_wlast;
  input m_sg_axi_wready;
  input m_sg_axi_bvalid;
  input [1:0]m_sg_axi_bresp;
  output m_sg_axi_bready;
  output [0:0]m_sg_axi_awid;
  output [0:0]m_sg_axi_awlock;
  output [0:0]m_sg_axi_wid;
  input [0:0]m_sg_axi_bid;
  input s_axis_aclk;
  output s_axis_ready;
  input s_axis_valid;
  input [31:0]s_axis_data;
  input [3:0]s_axis_strb;
  input [3:0]s_axis_keep;
  input [0:0]s_axis_user;
  input [7:0]s_axis_id;
  input [3:0]s_axis_dest;
  input s_axis_last;
  output s_axis_xfer_req;
  input m_axis_aclk;
  input m_axis_ready;
  output m_axis_valid;
  output [63:0]m_axis_data;
  output [7:0]m_axis_strb;
  output [7:0]m_axis_keep;
  output [0:0]m_axis_user;
  output [7:0]m_axis_id;
  output [3:0]m_axis_dest;
  output m_axis_last;
  output m_axis_xfer_req;
  input fifo_wr_clk;
  input fifo_wr_en;
  input [31:0]fifo_wr_din;
  output fifo_wr_overflow;
  input fifo_wr_sync;
  output fifo_wr_xfer_req;
  input fifo_rd_clk;
  input fifo_rd_en;
  output fifo_rd_valid;
  output [63:0]fifo_rd_dout;
  output fifo_rd_underflow;
  output fifo_rd_xfer_req;
  output [7:0]dest_diag_level_bursts;

  wire \<const0> ;
  wire ctrl_enable;
  wire ctrl_pause;
  wire [31:3]data3;
  wire [6:6]dbg_status;
  wire fifo_wr_clk;
  wire [31:0]fifo_wr_din;
  wire fifo_wr_en;
  wire fifo_wr_overflow;
  wire fifo_wr_sync;
  wire fifo_wr_xfer_req;
  wire i_regmap_n_0;
  wire [2:2]\i_regmap_request/p_3_in ;
  wire \i_regmap_request/p_7_in ;
  wire \i_regmap_request/up_bl_partial ;
  wire \i_regmap_request/up_clear_tl ;
  wire \i_request_arb/i_src_req_fifo/zerodeep.cdc_sync_fifo_ram_reg0 ;
  wire \i_request_arb/req_gen_ready ;
  wire i_transfer_n_105;
  wire i_transfer_n_106;
  wire i_transfer_n_110;
  wire i_transfer_n_67;
  wire i_transfer_n_68;
  wire irq;
  wire m_dest_axi_aclk;
  wire [31:3]\^m_dest_axi_awaddr ;
  wire [3:0]\^m_dest_axi_awlen ;
  wire m_dest_axi_awready;
  wire m_dest_axi_awvalid;
  wire m_dest_axi_bready;
  wire m_dest_axi_bvalid;
  wire [63:0]m_dest_axi_wdata;
  wire m_dest_axi_wlast;
  wire m_dest_axi_wready;
  wire [6:6]\^m_dest_axi_wstrb ;
  wire m_dest_axi_wvalid;
  wire [6:1]measured_burst_length;
  wire s_axi_aclk;
  wire [10:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [10:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire up_dma_last;
  wire up_dma_req_valid;
  wire [31:2]up_dma_src_address;
  wire [23:2]up_dma_x_length;
  wire up_eot;
  wire up_response_ready;
  wire up_response_valid;

  assign dest_diag_level_bursts[7] = \<const0> ;
  assign dest_diag_level_bursts[6] = \<const0> ;
  assign dest_diag_level_bursts[5] = \<const0> ;
  assign dest_diag_level_bursts[4] = \<const0> ;
  assign dest_diag_level_bursts[3] = \<const0> ;
  assign dest_diag_level_bursts[2] = \<const0> ;
  assign dest_diag_level_bursts[1] = \<const0> ;
  assign dest_diag_level_bursts[0] = \<const0> ;
  assign fifo_rd_dout[63] = \<const0> ;
  assign fifo_rd_dout[62] = \<const0> ;
  assign fifo_rd_dout[61] = \<const0> ;
  assign fifo_rd_dout[60] = \<const0> ;
  assign fifo_rd_dout[59] = \<const0> ;
  assign fifo_rd_dout[58] = \<const0> ;
  assign fifo_rd_dout[57] = \<const0> ;
  assign fifo_rd_dout[56] = \<const0> ;
  assign fifo_rd_dout[55] = \<const0> ;
  assign fifo_rd_dout[54] = \<const0> ;
  assign fifo_rd_dout[53] = \<const0> ;
  assign fifo_rd_dout[52] = \<const0> ;
  assign fifo_rd_dout[51] = \<const0> ;
  assign fifo_rd_dout[50] = \<const0> ;
  assign fifo_rd_dout[49] = \<const0> ;
  assign fifo_rd_dout[48] = \<const0> ;
  assign fifo_rd_dout[47] = \<const0> ;
  assign fifo_rd_dout[46] = \<const0> ;
  assign fifo_rd_dout[45] = \<const0> ;
  assign fifo_rd_dout[44] = \<const0> ;
  assign fifo_rd_dout[43] = \<const0> ;
  assign fifo_rd_dout[42] = \<const0> ;
  assign fifo_rd_dout[41] = \<const0> ;
  assign fifo_rd_dout[40] = \<const0> ;
  assign fifo_rd_dout[39] = \<const0> ;
  assign fifo_rd_dout[38] = \<const0> ;
  assign fifo_rd_dout[37] = \<const0> ;
  assign fifo_rd_dout[36] = \<const0> ;
  assign fifo_rd_dout[35] = \<const0> ;
  assign fifo_rd_dout[34] = \<const0> ;
  assign fifo_rd_dout[33] = \<const0> ;
  assign fifo_rd_dout[32] = \<const0> ;
  assign fifo_rd_dout[31] = \<const0> ;
  assign fifo_rd_dout[30] = \<const0> ;
  assign fifo_rd_dout[29] = \<const0> ;
  assign fifo_rd_dout[28] = \<const0> ;
  assign fifo_rd_dout[27] = \<const0> ;
  assign fifo_rd_dout[26] = \<const0> ;
  assign fifo_rd_dout[25] = \<const0> ;
  assign fifo_rd_dout[24] = \<const0> ;
  assign fifo_rd_dout[23] = \<const0> ;
  assign fifo_rd_dout[22] = \<const0> ;
  assign fifo_rd_dout[21] = \<const0> ;
  assign fifo_rd_dout[20] = \<const0> ;
  assign fifo_rd_dout[19] = \<const0> ;
  assign fifo_rd_dout[18] = \<const0> ;
  assign fifo_rd_dout[17] = \<const0> ;
  assign fifo_rd_dout[16] = \<const0> ;
  assign fifo_rd_dout[15] = \<const0> ;
  assign fifo_rd_dout[14] = \<const0> ;
  assign fifo_rd_dout[13] = \<const0> ;
  assign fifo_rd_dout[12] = \<const0> ;
  assign fifo_rd_dout[11] = \<const0> ;
  assign fifo_rd_dout[10] = \<const0> ;
  assign fifo_rd_dout[9] = \<const0> ;
  assign fifo_rd_dout[8] = \<const0> ;
  assign fifo_rd_dout[7] = \<const0> ;
  assign fifo_rd_dout[6] = \<const0> ;
  assign fifo_rd_dout[5] = \<const0> ;
  assign fifo_rd_dout[4] = \<const0> ;
  assign fifo_rd_dout[3] = \<const0> ;
  assign fifo_rd_dout[2] = \<const0> ;
  assign fifo_rd_dout[1] = \<const0> ;
  assign fifo_rd_dout[0] = \<const0> ;
  assign fifo_rd_underflow = \<const0> ;
  assign fifo_rd_valid = \<const0> ;
  assign fifo_rd_xfer_req = \<const0> ;
  assign m_axis_data[63] = \<const0> ;
  assign m_axis_data[62] = \<const0> ;
  assign m_axis_data[61] = \<const0> ;
  assign m_axis_data[60] = \<const0> ;
  assign m_axis_data[59] = \<const0> ;
  assign m_axis_data[58] = \<const0> ;
  assign m_axis_data[57] = \<const0> ;
  assign m_axis_data[56] = \<const0> ;
  assign m_axis_data[55] = \<const0> ;
  assign m_axis_data[54] = \<const0> ;
  assign m_axis_data[53] = \<const0> ;
  assign m_axis_data[52] = \<const0> ;
  assign m_axis_data[51] = \<const0> ;
  assign m_axis_data[50] = \<const0> ;
  assign m_axis_data[49] = \<const0> ;
  assign m_axis_data[48] = \<const0> ;
  assign m_axis_data[47] = \<const0> ;
  assign m_axis_data[46] = \<const0> ;
  assign m_axis_data[45] = \<const0> ;
  assign m_axis_data[44] = \<const0> ;
  assign m_axis_data[43] = \<const0> ;
  assign m_axis_data[42] = \<const0> ;
  assign m_axis_data[41] = \<const0> ;
  assign m_axis_data[40] = \<const0> ;
  assign m_axis_data[39] = \<const0> ;
  assign m_axis_data[38] = \<const0> ;
  assign m_axis_data[37] = \<const0> ;
  assign m_axis_data[36] = \<const0> ;
  assign m_axis_data[35] = \<const0> ;
  assign m_axis_data[34] = \<const0> ;
  assign m_axis_data[33] = \<const0> ;
  assign m_axis_data[32] = \<const0> ;
  assign m_axis_data[31] = \<const0> ;
  assign m_axis_data[30] = \<const0> ;
  assign m_axis_data[29] = \<const0> ;
  assign m_axis_data[28] = \<const0> ;
  assign m_axis_data[27] = \<const0> ;
  assign m_axis_data[26] = \<const0> ;
  assign m_axis_data[25] = \<const0> ;
  assign m_axis_data[24] = \<const0> ;
  assign m_axis_data[23] = \<const0> ;
  assign m_axis_data[22] = \<const0> ;
  assign m_axis_data[21] = \<const0> ;
  assign m_axis_data[20] = \<const0> ;
  assign m_axis_data[19] = \<const0> ;
  assign m_axis_data[18] = \<const0> ;
  assign m_axis_data[17] = \<const0> ;
  assign m_axis_data[16] = \<const0> ;
  assign m_axis_data[15] = \<const0> ;
  assign m_axis_data[14] = \<const0> ;
  assign m_axis_data[13] = \<const0> ;
  assign m_axis_data[12] = \<const0> ;
  assign m_axis_data[11] = \<const0> ;
  assign m_axis_data[10] = \<const0> ;
  assign m_axis_data[9] = \<const0> ;
  assign m_axis_data[8] = \<const0> ;
  assign m_axis_data[7] = \<const0> ;
  assign m_axis_data[6] = \<const0> ;
  assign m_axis_data[5] = \<const0> ;
  assign m_axis_data[4] = \<const0> ;
  assign m_axis_data[3] = \<const0> ;
  assign m_axis_data[2] = \<const0> ;
  assign m_axis_data[1] = \<const0> ;
  assign m_axis_data[0] = \<const0> ;
  assign m_axis_dest[3] = \<const0> ;
  assign m_axis_dest[2] = \<const0> ;
  assign m_axis_dest[1] = \<const0> ;
  assign m_axis_dest[0] = \<const0> ;
  assign m_axis_id[7] = \<const0> ;
  assign m_axis_id[6] = \<const0> ;
  assign m_axis_id[5] = \<const0> ;
  assign m_axis_id[4] = \<const0> ;
  assign m_axis_id[3] = \<const0> ;
  assign m_axis_id[2] = \<const0> ;
  assign m_axis_id[1] = \<const0> ;
  assign m_axis_id[0] = \<const0> ;
  assign m_axis_keep[7] = \<const0> ;
  assign m_axis_keep[6] = \<const0> ;
  assign m_axis_keep[5] = \<const0> ;
  assign m_axis_keep[4] = \<const0> ;
  assign m_axis_keep[3] = \<const0> ;
  assign m_axis_keep[2] = \<const0> ;
  assign m_axis_keep[1] = \<const0> ;
  assign m_axis_keep[0] = \<const0> ;
  assign m_axis_last = \<const0> ;
  assign m_axis_strb[7] = \<const0> ;
  assign m_axis_strb[6] = \<const0> ;
  assign m_axis_strb[5] = \<const0> ;
  assign m_axis_strb[4] = \<const0> ;
  assign m_axis_strb[3] = \<const0> ;
  assign m_axis_strb[2] = \<const0> ;
  assign m_axis_strb[1] = \<const0> ;
  assign m_axis_strb[0] = \<const0> ;
  assign m_axis_user[0] = \<const0> ;
  assign m_axis_valid = \<const0> ;
  assign m_axis_xfer_req = \<const0> ;
  assign m_dest_axi_araddr[31] = \<const0> ;
  assign m_dest_axi_araddr[30] = \<const0> ;
  assign m_dest_axi_araddr[29] = \<const0> ;
  assign m_dest_axi_araddr[28] = \<const0> ;
  assign m_dest_axi_araddr[27] = \<const0> ;
  assign m_dest_axi_araddr[26] = \<const0> ;
  assign m_dest_axi_araddr[25] = \<const0> ;
  assign m_dest_axi_araddr[24] = \<const0> ;
  assign m_dest_axi_araddr[23] = \<const0> ;
  assign m_dest_axi_araddr[22] = \<const0> ;
  assign m_dest_axi_araddr[21] = \<const0> ;
  assign m_dest_axi_araddr[20] = \<const0> ;
  assign m_dest_axi_araddr[19] = \<const0> ;
  assign m_dest_axi_araddr[18] = \<const0> ;
  assign m_dest_axi_araddr[17] = \<const0> ;
  assign m_dest_axi_araddr[16] = \<const0> ;
  assign m_dest_axi_araddr[15] = \<const0> ;
  assign m_dest_axi_araddr[14] = \<const0> ;
  assign m_dest_axi_araddr[13] = \<const0> ;
  assign m_dest_axi_araddr[12] = \<const0> ;
  assign m_dest_axi_araddr[11] = \<const0> ;
  assign m_dest_axi_araddr[10] = \<const0> ;
  assign m_dest_axi_araddr[9] = \<const0> ;
  assign m_dest_axi_araddr[8] = \<const0> ;
  assign m_dest_axi_araddr[7] = \<const0> ;
  assign m_dest_axi_araddr[6] = \<const0> ;
  assign m_dest_axi_araddr[5] = \<const0> ;
  assign m_dest_axi_araddr[4] = \<const0> ;
  assign m_dest_axi_araddr[3] = \<const0> ;
  assign m_dest_axi_araddr[2] = \<const0> ;
  assign m_dest_axi_araddr[1] = \<const0> ;
  assign m_dest_axi_araddr[0] = \<const0> ;
  assign m_dest_axi_arburst[1] = \<const0> ;
  assign m_dest_axi_arburst[0] = \<const0> ;
  assign m_dest_axi_arcache[3] = \<const0> ;
  assign m_dest_axi_arcache[2] = \<const0> ;
  assign m_dest_axi_arcache[1] = \<const0> ;
  assign m_dest_axi_arcache[0] = \<const0> ;
  assign m_dest_axi_arid[0] = \<const0> ;
  assign m_dest_axi_arlen[7] = \<const0> ;
  assign m_dest_axi_arlen[6] = \<const0> ;
  assign m_dest_axi_arlen[5] = \<const0> ;
  assign m_dest_axi_arlen[4] = \<const0> ;
  assign m_dest_axi_arlen[3] = \<const0> ;
  assign m_dest_axi_arlen[2] = \<const0> ;
  assign m_dest_axi_arlen[1] = \<const0> ;
  assign m_dest_axi_arlen[0] = \<const0> ;
  assign m_dest_axi_arlock[0] = \<const0> ;
  assign m_dest_axi_arprot[2] = \<const0> ;
  assign m_dest_axi_arprot[1] = \<const0> ;
  assign m_dest_axi_arprot[0] = \<const0> ;
  assign m_dest_axi_arsize[2] = \<const0> ;
  assign m_dest_axi_arsize[1] = \<const0> ;
  assign m_dest_axi_arsize[0] = \<const0> ;
  assign m_dest_axi_arvalid = \<const0> ;
  assign m_dest_axi_awaddr[31:3] = \^m_dest_axi_awaddr [31:3];
  assign m_dest_axi_awaddr[2] = \<const0> ;
  assign m_dest_axi_awaddr[1] = \<const0> ;
  assign m_dest_axi_awaddr[0] = \<const0> ;
  assign m_dest_axi_awburst[1] = \<const0> ;
  assign m_dest_axi_awburst[0] = \<const0> ;
  assign m_dest_axi_awcache[3] = \<const0> ;
  assign m_dest_axi_awcache[2] = \<const0> ;
  assign m_dest_axi_awcache[1] = \<const0> ;
  assign m_dest_axi_awcache[0] = \<const0> ;
  assign m_dest_axi_awid[0] = \<const0> ;
  assign m_dest_axi_awlen[7] = \<const0> ;
  assign m_dest_axi_awlen[6] = \<const0> ;
  assign m_dest_axi_awlen[5] = \<const0> ;
  assign m_dest_axi_awlen[4] = \<const0> ;
  assign m_dest_axi_awlen[3:0] = \^m_dest_axi_awlen [3:0];
  assign m_dest_axi_awlock[0] = \<const0> ;
  assign m_dest_axi_awprot[2] = \<const0> ;
  assign m_dest_axi_awprot[1] = \<const0> ;
  assign m_dest_axi_awprot[0] = \<const0> ;
  assign m_dest_axi_awsize[2] = \<const0> ;
  assign m_dest_axi_awsize[1] = \<const0> ;
  assign m_dest_axi_awsize[0] = \<const0> ;
  assign m_dest_axi_rready = \<const0> ;
  assign m_dest_axi_wid[0] = \<const0> ;
  assign m_dest_axi_wstrb[7] = \^m_dest_axi_wstrb [6];
  assign m_dest_axi_wstrb[6] = \^m_dest_axi_wstrb [6];
  assign m_dest_axi_wstrb[5] = \^m_dest_axi_wstrb [6];
  assign m_dest_axi_wstrb[4] = \^m_dest_axi_wstrb [6];
  assign m_dest_axi_wstrb[3] = \<const0> ;
  assign m_dest_axi_wstrb[2] = \<const0> ;
  assign m_dest_axi_wstrb[1] = \<const0> ;
  assign m_dest_axi_wstrb[0] = \<const0> ;
  assign m_sg_axi_araddr[31] = \<const0> ;
  assign m_sg_axi_araddr[30] = \<const0> ;
  assign m_sg_axi_araddr[29] = \<const0> ;
  assign m_sg_axi_araddr[28] = \<const0> ;
  assign m_sg_axi_araddr[27] = \<const0> ;
  assign m_sg_axi_araddr[26] = \<const0> ;
  assign m_sg_axi_araddr[25] = \<const0> ;
  assign m_sg_axi_araddr[24] = \<const0> ;
  assign m_sg_axi_araddr[23] = \<const0> ;
  assign m_sg_axi_araddr[22] = \<const0> ;
  assign m_sg_axi_araddr[21] = \<const0> ;
  assign m_sg_axi_araddr[20] = \<const0> ;
  assign m_sg_axi_araddr[19] = \<const0> ;
  assign m_sg_axi_araddr[18] = \<const0> ;
  assign m_sg_axi_araddr[17] = \<const0> ;
  assign m_sg_axi_araddr[16] = \<const0> ;
  assign m_sg_axi_araddr[15] = \<const0> ;
  assign m_sg_axi_araddr[14] = \<const0> ;
  assign m_sg_axi_araddr[13] = \<const0> ;
  assign m_sg_axi_araddr[12] = \<const0> ;
  assign m_sg_axi_araddr[11] = \<const0> ;
  assign m_sg_axi_araddr[10] = \<const0> ;
  assign m_sg_axi_araddr[9] = \<const0> ;
  assign m_sg_axi_araddr[8] = \<const0> ;
  assign m_sg_axi_araddr[7] = \<const0> ;
  assign m_sg_axi_araddr[6] = \<const0> ;
  assign m_sg_axi_araddr[5] = \<const0> ;
  assign m_sg_axi_araddr[4] = \<const0> ;
  assign m_sg_axi_araddr[3] = \<const0> ;
  assign m_sg_axi_araddr[2] = \<const0> ;
  assign m_sg_axi_araddr[1] = \<const0> ;
  assign m_sg_axi_araddr[0] = \<const0> ;
  assign m_sg_axi_arburst[1] = \<const0> ;
  assign m_sg_axi_arburst[0] = \<const0> ;
  assign m_sg_axi_arcache[3] = \<const0> ;
  assign m_sg_axi_arcache[2] = \<const0> ;
  assign m_sg_axi_arcache[1] = \<const0> ;
  assign m_sg_axi_arcache[0] = \<const0> ;
  assign m_sg_axi_arid[0] = \<const0> ;
  assign m_sg_axi_arlen[7] = \<const0> ;
  assign m_sg_axi_arlen[6] = \<const0> ;
  assign m_sg_axi_arlen[5] = \<const0> ;
  assign m_sg_axi_arlen[4] = \<const0> ;
  assign m_sg_axi_arlen[3] = \<const0> ;
  assign m_sg_axi_arlen[2] = \<const0> ;
  assign m_sg_axi_arlen[1] = \<const0> ;
  assign m_sg_axi_arlen[0] = \<const0> ;
  assign m_sg_axi_arlock[0] = \<const0> ;
  assign m_sg_axi_arprot[2] = \<const0> ;
  assign m_sg_axi_arprot[1] = \<const0> ;
  assign m_sg_axi_arprot[0] = \<const0> ;
  assign m_sg_axi_arsize[2] = \<const0> ;
  assign m_sg_axi_arsize[1] = \<const0> ;
  assign m_sg_axi_arsize[0] = \<const0> ;
  assign m_sg_axi_arvalid = \<const0> ;
  assign m_sg_axi_awaddr[31] = \<const0> ;
  assign m_sg_axi_awaddr[30] = \<const0> ;
  assign m_sg_axi_awaddr[29] = \<const0> ;
  assign m_sg_axi_awaddr[28] = \<const0> ;
  assign m_sg_axi_awaddr[27] = \<const0> ;
  assign m_sg_axi_awaddr[26] = \<const0> ;
  assign m_sg_axi_awaddr[25] = \<const0> ;
  assign m_sg_axi_awaddr[24] = \<const0> ;
  assign m_sg_axi_awaddr[23] = \<const0> ;
  assign m_sg_axi_awaddr[22] = \<const0> ;
  assign m_sg_axi_awaddr[21] = \<const0> ;
  assign m_sg_axi_awaddr[20] = \<const0> ;
  assign m_sg_axi_awaddr[19] = \<const0> ;
  assign m_sg_axi_awaddr[18] = \<const0> ;
  assign m_sg_axi_awaddr[17] = \<const0> ;
  assign m_sg_axi_awaddr[16] = \<const0> ;
  assign m_sg_axi_awaddr[15] = \<const0> ;
  assign m_sg_axi_awaddr[14] = \<const0> ;
  assign m_sg_axi_awaddr[13] = \<const0> ;
  assign m_sg_axi_awaddr[12] = \<const0> ;
  assign m_sg_axi_awaddr[11] = \<const0> ;
  assign m_sg_axi_awaddr[10] = \<const0> ;
  assign m_sg_axi_awaddr[9] = \<const0> ;
  assign m_sg_axi_awaddr[8] = \<const0> ;
  assign m_sg_axi_awaddr[7] = \<const0> ;
  assign m_sg_axi_awaddr[6] = \<const0> ;
  assign m_sg_axi_awaddr[5] = \<const0> ;
  assign m_sg_axi_awaddr[4] = \<const0> ;
  assign m_sg_axi_awaddr[3] = \<const0> ;
  assign m_sg_axi_awaddr[2] = \<const0> ;
  assign m_sg_axi_awaddr[1] = \<const0> ;
  assign m_sg_axi_awaddr[0] = \<const0> ;
  assign m_sg_axi_awburst[1] = \<const0> ;
  assign m_sg_axi_awburst[0] = \<const0> ;
  assign m_sg_axi_awcache[3] = \<const0> ;
  assign m_sg_axi_awcache[2] = \<const0> ;
  assign m_sg_axi_awcache[1] = \<const0> ;
  assign m_sg_axi_awcache[0] = \<const0> ;
  assign m_sg_axi_awid[0] = \<const0> ;
  assign m_sg_axi_awlen[7] = \<const0> ;
  assign m_sg_axi_awlen[6] = \<const0> ;
  assign m_sg_axi_awlen[5] = \<const0> ;
  assign m_sg_axi_awlen[4] = \<const0> ;
  assign m_sg_axi_awlen[3] = \<const0> ;
  assign m_sg_axi_awlen[2] = \<const0> ;
  assign m_sg_axi_awlen[1] = \<const0> ;
  assign m_sg_axi_awlen[0] = \<const0> ;
  assign m_sg_axi_awlock[0] = \<const0> ;
  assign m_sg_axi_awprot[2] = \<const0> ;
  assign m_sg_axi_awprot[1] = \<const0> ;
  assign m_sg_axi_awprot[0] = \<const0> ;
  assign m_sg_axi_awsize[2] = \<const0> ;
  assign m_sg_axi_awsize[1] = \<const0> ;
  assign m_sg_axi_awsize[0] = \<const0> ;
  assign m_sg_axi_awvalid = \<const0> ;
  assign m_sg_axi_bready = \<const0> ;
  assign m_sg_axi_rready = \<const0> ;
  assign m_sg_axi_wdata[63] = \<const0> ;
  assign m_sg_axi_wdata[62] = \<const0> ;
  assign m_sg_axi_wdata[61] = \<const0> ;
  assign m_sg_axi_wdata[60] = \<const0> ;
  assign m_sg_axi_wdata[59] = \<const0> ;
  assign m_sg_axi_wdata[58] = \<const0> ;
  assign m_sg_axi_wdata[57] = \<const0> ;
  assign m_sg_axi_wdata[56] = \<const0> ;
  assign m_sg_axi_wdata[55] = \<const0> ;
  assign m_sg_axi_wdata[54] = \<const0> ;
  assign m_sg_axi_wdata[53] = \<const0> ;
  assign m_sg_axi_wdata[52] = \<const0> ;
  assign m_sg_axi_wdata[51] = \<const0> ;
  assign m_sg_axi_wdata[50] = \<const0> ;
  assign m_sg_axi_wdata[49] = \<const0> ;
  assign m_sg_axi_wdata[48] = \<const0> ;
  assign m_sg_axi_wdata[47] = \<const0> ;
  assign m_sg_axi_wdata[46] = \<const0> ;
  assign m_sg_axi_wdata[45] = \<const0> ;
  assign m_sg_axi_wdata[44] = \<const0> ;
  assign m_sg_axi_wdata[43] = \<const0> ;
  assign m_sg_axi_wdata[42] = \<const0> ;
  assign m_sg_axi_wdata[41] = \<const0> ;
  assign m_sg_axi_wdata[40] = \<const0> ;
  assign m_sg_axi_wdata[39] = \<const0> ;
  assign m_sg_axi_wdata[38] = \<const0> ;
  assign m_sg_axi_wdata[37] = \<const0> ;
  assign m_sg_axi_wdata[36] = \<const0> ;
  assign m_sg_axi_wdata[35] = \<const0> ;
  assign m_sg_axi_wdata[34] = \<const0> ;
  assign m_sg_axi_wdata[33] = \<const0> ;
  assign m_sg_axi_wdata[32] = \<const0> ;
  assign m_sg_axi_wdata[31] = \<const0> ;
  assign m_sg_axi_wdata[30] = \<const0> ;
  assign m_sg_axi_wdata[29] = \<const0> ;
  assign m_sg_axi_wdata[28] = \<const0> ;
  assign m_sg_axi_wdata[27] = \<const0> ;
  assign m_sg_axi_wdata[26] = \<const0> ;
  assign m_sg_axi_wdata[25] = \<const0> ;
  assign m_sg_axi_wdata[24] = \<const0> ;
  assign m_sg_axi_wdata[23] = \<const0> ;
  assign m_sg_axi_wdata[22] = \<const0> ;
  assign m_sg_axi_wdata[21] = \<const0> ;
  assign m_sg_axi_wdata[20] = \<const0> ;
  assign m_sg_axi_wdata[19] = \<const0> ;
  assign m_sg_axi_wdata[18] = \<const0> ;
  assign m_sg_axi_wdata[17] = \<const0> ;
  assign m_sg_axi_wdata[16] = \<const0> ;
  assign m_sg_axi_wdata[15] = \<const0> ;
  assign m_sg_axi_wdata[14] = \<const0> ;
  assign m_sg_axi_wdata[13] = \<const0> ;
  assign m_sg_axi_wdata[12] = \<const0> ;
  assign m_sg_axi_wdata[11] = \<const0> ;
  assign m_sg_axi_wdata[10] = \<const0> ;
  assign m_sg_axi_wdata[9] = \<const0> ;
  assign m_sg_axi_wdata[8] = \<const0> ;
  assign m_sg_axi_wdata[7] = \<const0> ;
  assign m_sg_axi_wdata[6] = \<const0> ;
  assign m_sg_axi_wdata[5] = \<const0> ;
  assign m_sg_axi_wdata[4] = \<const0> ;
  assign m_sg_axi_wdata[3] = \<const0> ;
  assign m_sg_axi_wdata[2] = \<const0> ;
  assign m_sg_axi_wdata[1] = \<const0> ;
  assign m_sg_axi_wdata[0] = \<const0> ;
  assign m_sg_axi_wid[0] = \<const0> ;
  assign m_sg_axi_wlast = \<const0> ;
  assign m_sg_axi_wstrb[7] = \<const0> ;
  assign m_sg_axi_wstrb[6] = \<const0> ;
  assign m_sg_axi_wstrb[5] = \<const0> ;
  assign m_sg_axi_wstrb[4] = \<const0> ;
  assign m_sg_axi_wstrb[3] = \<const0> ;
  assign m_sg_axi_wstrb[2] = \<const0> ;
  assign m_sg_axi_wstrb[1] = \<const0> ;
  assign m_sg_axi_wstrb[0] = \<const0> ;
  assign m_sg_axi_wvalid = \<const0> ;
  assign m_src_axi_araddr[31] = \<const0> ;
  assign m_src_axi_araddr[30] = \<const0> ;
  assign m_src_axi_araddr[29] = \<const0> ;
  assign m_src_axi_araddr[28] = \<const0> ;
  assign m_src_axi_araddr[27] = \<const0> ;
  assign m_src_axi_araddr[26] = \<const0> ;
  assign m_src_axi_araddr[25] = \<const0> ;
  assign m_src_axi_araddr[24] = \<const0> ;
  assign m_src_axi_araddr[23] = \<const0> ;
  assign m_src_axi_araddr[22] = \<const0> ;
  assign m_src_axi_araddr[21] = \<const0> ;
  assign m_src_axi_araddr[20] = \<const0> ;
  assign m_src_axi_araddr[19] = \<const0> ;
  assign m_src_axi_araddr[18] = \<const0> ;
  assign m_src_axi_araddr[17] = \<const0> ;
  assign m_src_axi_araddr[16] = \<const0> ;
  assign m_src_axi_araddr[15] = \<const0> ;
  assign m_src_axi_araddr[14] = \<const0> ;
  assign m_src_axi_araddr[13] = \<const0> ;
  assign m_src_axi_araddr[12] = \<const0> ;
  assign m_src_axi_araddr[11] = \<const0> ;
  assign m_src_axi_araddr[10] = \<const0> ;
  assign m_src_axi_araddr[9] = \<const0> ;
  assign m_src_axi_araddr[8] = \<const0> ;
  assign m_src_axi_araddr[7] = \<const0> ;
  assign m_src_axi_araddr[6] = \<const0> ;
  assign m_src_axi_araddr[5] = \<const0> ;
  assign m_src_axi_araddr[4] = \<const0> ;
  assign m_src_axi_araddr[3] = \<const0> ;
  assign m_src_axi_araddr[2] = \<const0> ;
  assign m_src_axi_araddr[1] = \<const0> ;
  assign m_src_axi_araddr[0] = \<const0> ;
  assign m_src_axi_arburst[1] = \<const0> ;
  assign m_src_axi_arburst[0] = \<const0> ;
  assign m_src_axi_arcache[3] = \<const0> ;
  assign m_src_axi_arcache[2] = \<const0> ;
  assign m_src_axi_arcache[1] = \<const0> ;
  assign m_src_axi_arcache[0] = \<const0> ;
  assign m_src_axi_arid[0] = \<const0> ;
  assign m_src_axi_arlen[7] = \<const0> ;
  assign m_src_axi_arlen[6] = \<const0> ;
  assign m_src_axi_arlen[5] = \<const0> ;
  assign m_src_axi_arlen[4] = \<const0> ;
  assign m_src_axi_arlen[3] = \<const0> ;
  assign m_src_axi_arlen[2] = \<const0> ;
  assign m_src_axi_arlen[1] = \<const0> ;
  assign m_src_axi_arlen[0] = \<const0> ;
  assign m_src_axi_arlock[0] = \<const0> ;
  assign m_src_axi_arprot[2] = \<const0> ;
  assign m_src_axi_arprot[1] = \<const0> ;
  assign m_src_axi_arprot[0] = \<const0> ;
  assign m_src_axi_arsize[2] = \<const0> ;
  assign m_src_axi_arsize[1] = \<const0> ;
  assign m_src_axi_arsize[0] = \<const0> ;
  assign m_src_axi_arvalid = \<const0> ;
  assign m_src_axi_awaddr[31] = \<const0> ;
  assign m_src_axi_awaddr[30] = \<const0> ;
  assign m_src_axi_awaddr[29] = \<const0> ;
  assign m_src_axi_awaddr[28] = \<const0> ;
  assign m_src_axi_awaddr[27] = \<const0> ;
  assign m_src_axi_awaddr[26] = \<const0> ;
  assign m_src_axi_awaddr[25] = \<const0> ;
  assign m_src_axi_awaddr[24] = \<const0> ;
  assign m_src_axi_awaddr[23] = \<const0> ;
  assign m_src_axi_awaddr[22] = \<const0> ;
  assign m_src_axi_awaddr[21] = \<const0> ;
  assign m_src_axi_awaddr[20] = \<const0> ;
  assign m_src_axi_awaddr[19] = \<const0> ;
  assign m_src_axi_awaddr[18] = \<const0> ;
  assign m_src_axi_awaddr[17] = \<const0> ;
  assign m_src_axi_awaddr[16] = \<const0> ;
  assign m_src_axi_awaddr[15] = \<const0> ;
  assign m_src_axi_awaddr[14] = \<const0> ;
  assign m_src_axi_awaddr[13] = \<const0> ;
  assign m_src_axi_awaddr[12] = \<const0> ;
  assign m_src_axi_awaddr[11] = \<const0> ;
  assign m_src_axi_awaddr[10] = \<const0> ;
  assign m_src_axi_awaddr[9] = \<const0> ;
  assign m_src_axi_awaddr[8] = \<const0> ;
  assign m_src_axi_awaddr[7] = \<const0> ;
  assign m_src_axi_awaddr[6] = \<const0> ;
  assign m_src_axi_awaddr[5] = \<const0> ;
  assign m_src_axi_awaddr[4] = \<const0> ;
  assign m_src_axi_awaddr[3] = \<const0> ;
  assign m_src_axi_awaddr[2] = \<const0> ;
  assign m_src_axi_awaddr[1] = \<const0> ;
  assign m_src_axi_awaddr[0] = \<const0> ;
  assign m_src_axi_awburst[1] = \<const0> ;
  assign m_src_axi_awburst[0] = \<const0> ;
  assign m_src_axi_awcache[3] = \<const0> ;
  assign m_src_axi_awcache[2] = \<const0> ;
  assign m_src_axi_awcache[1] = \<const0> ;
  assign m_src_axi_awcache[0] = \<const0> ;
  assign m_src_axi_awid[0] = \<const0> ;
  assign m_src_axi_awlen[7] = \<const0> ;
  assign m_src_axi_awlen[6] = \<const0> ;
  assign m_src_axi_awlen[5] = \<const0> ;
  assign m_src_axi_awlen[4] = \<const0> ;
  assign m_src_axi_awlen[3] = \<const0> ;
  assign m_src_axi_awlen[2] = \<const0> ;
  assign m_src_axi_awlen[1] = \<const0> ;
  assign m_src_axi_awlen[0] = \<const0> ;
  assign m_src_axi_awlock[0] = \<const0> ;
  assign m_src_axi_awprot[2] = \<const0> ;
  assign m_src_axi_awprot[1] = \<const0> ;
  assign m_src_axi_awprot[0] = \<const0> ;
  assign m_src_axi_awsize[2] = \<const0> ;
  assign m_src_axi_awsize[1] = \<const0> ;
  assign m_src_axi_awsize[0] = \<const0> ;
  assign m_src_axi_awvalid = \<const0> ;
  assign m_src_axi_bready = \<const0> ;
  assign m_src_axi_rready = \<const0> ;
  assign m_src_axi_wdata[31] = \<const0> ;
  assign m_src_axi_wdata[30] = \<const0> ;
  assign m_src_axi_wdata[29] = \<const0> ;
  assign m_src_axi_wdata[28] = \<const0> ;
  assign m_src_axi_wdata[27] = \<const0> ;
  assign m_src_axi_wdata[26] = \<const0> ;
  assign m_src_axi_wdata[25] = \<const0> ;
  assign m_src_axi_wdata[24] = \<const0> ;
  assign m_src_axi_wdata[23] = \<const0> ;
  assign m_src_axi_wdata[22] = \<const0> ;
  assign m_src_axi_wdata[21] = \<const0> ;
  assign m_src_axi_wdata[20] = \<const0> ;
  assign m_src_axi_wdata[19] = \<const0> ;
  assign m_src_axi_wdata[18] = \<const0> ;
  assign m_src_axi_wdata[17] = \<const0> ;
  assign m_src_axi_wdata[16] = \<const0> ;
  assign m_src_axi_wdata[15] = \<const0> ;
  assign m_src_axi_wdata[14] = \<const0> ;
  assign m_src_axi_wdata[13] = \<const0> ;
  assign m_src_axi_wdata[12] = \<const0> ;
  assign m_src_axi_wdata[11] = \<const0> ;
  assign m_src_axi_wdata[10] = \<const0> ;
  assign m_src_axi_wdata[9] = \<const0> ;
  assign m_src_axi_wdata[8] = \<const0> ;
  assign m_src_axi_wdata[7] = \<const0> ;
  assign m_src_axi_wdata[6] = \<const0> ;
  assign m_src_axi_wdata[5] = \<const0> ;
  assign m_src_axi_wdata[4] = \<const0> ;
  assign m_src_axi_wdata[3] = \<const0> ;
  assign m_src_axi_wdata[2] = \<const0> ;
  assign m_src_axi_wdata[1] = \<const0> ;
  assign m_src_axi_wdata[0] = \<const0> ;
  assign m_src_axi_wid[0] = \<const0> ;
  assign m_src_axi_wlast = \<const0> ;
  assign m_src_axi_wstrb[3] = \<const0> ;
  assign m_src_axi_wstrb[2] = \<const0> ;
  assign m_src_axi_wstrb[1] = \<const0> ;
  assign m_src_axi_wstrb[0] = \<const0> ;
  assign m_src_axi_wvalid = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axis_ready = \<const0> ;
  assign s_axis_xfer_req = \<const0> ;
  GND GND
       (.G(\<const0> ));
  icyradio_axi_dmac_rf_rx1_0_axi_dmac_regmap i_regmap
       (.D({data3,up_dma_src_address,up_dma_x_length[6:2],up_dma_last}),
        .E(\i_regmap_request/p_7_in ),
        .Q(up_dma_x_length[23:7]),
        .SR(i_regmap_n_0),
        .ctrl_enable(ctrl_enable),
        .ctrl_pause(ctrl_pause),
        .dbg_status(dbg_status),
        .irq(irq),
        .p_3_in(\i_regmap_request/p_3_in ),
        .req_gen_ready(\i_request_arb/req_gen_ready ),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[10:2]),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[10:2]),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid),
        .up_axi_rvalid_int_reg(s_axi_rvalid),
        .up_bl_partial(\i_regmap_request/up_bl_partial ),
        .up_clear_tl(\i_regmap_request/up_clear_tl ),
        .up_clear_tl_reg(i_transfer_n_110),
        .up_dma_req_valid(up_dma_req_valid),
        .up_eot(up_eot),
        .\up_irq_source_reg[0]_0 (i_transfer_n_105),
        .\up_measured_transfer_length_reg[7] (measured_burst_length),
        .up_response_ready(up_response_ready),
        .up_response_valid(up_response_valid),
        .up_tlf_s_valid_reg(i_transfer_n_106),
        .\up_transfer_id_reg[0] (i_transfer_n_68),
        .\up_transfer_id_reg[0]_0 (i_transfer_n_67),
        .\up_transfer_id_reg[1] (\i_request_arb/i_src_req_fifo/zerodeep.cdc_sync_fifo_ram_reg0 ));
  icyradio_axi_dmac_rf_rx1_0_axi_dmac_transfer i_transfer
       (.D({data3,up_dma_src_address,up_dma_x_length[6:2],up_dma_last}),
        .E(\i_request_arb/i_src_req_fifo/zerodeep.cdc_sync_fifo_ram_reg0 ),
        .\FSM_sequential_state_reg[0] (i_transfer_n_110),
        .Q(up_dma_x_length[23:7]),
        .SS(i_regmap_n_0),
        .active_reg(fifo_wr_xfer_req),
        .addr_valid_reg(m_dest_axi_awvalid),
        .\cdc_sync_stage2_reg[0] (i_transfer_n_68),
        .\cdc_sync_stage2_reg[0]_0 (i_transfer_n_105),
        .ctrl_enable(ctrl_enable),
        .ctrl_pause(ctrl_pause),
        .dest_mem_data_valid_reg(m_dest_axi_wvalid),
        .do_enable_reg(dbg_status),
        .fifo_wr_clk(fifo_wr_clk),
        .fifo_wr_din(fifo_wr_din),
        .fifo_wr_en(fifo_wr_en),
        .fifo_wr_overflow(fifo_wr_overflow),
        .fifo_wr_sync(fifo_wr_sync),
        .m_dest_axi_aclk(m_dest_axi_aclk),
        .m_dest_axi_awaddr(\^m_dest_axi_awaddr ),
        .m_dest_axi_awlen(\^m_dest_axi_awlen ),
        .m_dest_axi_awready(m_dest_axi_awready),
        .m_dest_axi_bready(m_dest_axi_bready),
        .m_dest_axi_bvalid(m_dest_axi_bvalid),
        .m_dest_axi_wdata(m_dest_axi_wdata),
        .m_dest_axi_wlast(m_dest_axi_wlast),
        .m_dest_axi_wready(m_dest_axi_wready),
        .m_dest_axi_wstrb(\^m_dest_axi_wstrb ),
        .\measured_burst_length_reg[6] (measured_burst_length),
        .p_3_in(\i_regmap_request/p_3_in ),
        .req_gen_ready(\i_request_arb/req_gen_ready ),
        .response_valid_reg(i_transfer_n_106),
        .s_axi_aclk(s_axi_aclk),
        .up_bl_partial(\i_regmap_request/up_bl_partial ),
        .up_clear_tl(\i_regmap_request/up_clear_tl ),
        .up_clear_tl_reg(\i_regmap_request/p_7_in ),
        .up_dma_req_valid(up_dma_req_valid),
        .up_eot(up_eot),
        .up_response_ready(up_response_ready),
        .up_response_valid(up_response_valid),
        .\zerodeep.s_axis_waddr_reg (i_transfer_n_67));
endmodule

(* ORIG_REF_NAME = "axi_dmac_burst_memory" *) 
module icyradio_axi_dmac_rf_rx1_0_axi_dmac_burst_memory
   (m_dest_axi_wdata,
    Q,
    dest_burst_info_write,
    \dest_id_next_reg[3]_0 ,
    dest_mem_data_valid_reg_0,
    m_dest_axi_wlast,
    m_dest_axi_wstrb,
    \dest_burst_len_data_reg[7]_0 ,
    \src_throttled_request_id_reg[2] ,
    \src_throttled_request_id_reg[0] ,
    \cdc_sync_stage2_reg[3] ,
    \cdc_sync_stage2_reg[2] ,
    \cdc_sync_stage2_reg[1] ,
    \cdc_sync_stage2_reg[0] ,
    m_dest_axi_aclk,
    fifo_wr_clk,
    fifo_wr_din,
    E,
    \src_id_reg[0]_0 ,
    dest_mem_data_valid_reg_1,
    src_last_beat__0,
    m_dest_axi_wready,
    dest_burst_valid,
    \src_throttled_request_id_reg[0]_0 ,
    SR);
  output [63:0]m_dest_axi_wdata;
  output [3:0]Q;
  output dest_burst_info_write;
  output [3:0]\dest_id_next_reg[3]_0 ;
  output dest_mem_data_valid_reg_0;
  output m_dest_axi_wlast;
  output [0:0]m_dest_axi_wstrb;
  output [5:0]\dest_burst_len_data_reg[7]_0 ;
  output \src_throttled_request_id_reg[2] ;
  output \src_throttled_request_id_reg[0] ;
  output \cdc_sync_stage2_reg[3] ;
  output \cdc_sync_stage2_reg[2] ;
  output \cdc_sync_stage2_reg[1] ;
  output \cdc_sync_stage2_reg[0] ;
  input m_dest_axi_aclk;
  input fifo_wr_clk;
  input [31:0]fifo_wr_din;
  input [0:0]E;
  input [0:0]\src_id_reg[0]_0 ;
  input [0:0]dest_mem_data_valid_reg_1;
  input src_last_beat__0;
  input m_dest_axi_wready;
  input dest_burst_valid;
  input [3:0]\src_throttled_request_id_reg[0]_0 ;
  input [0:0]SR;

  wire [0:0]E;
  wire [3:0]Q;
  wire [0:0]SR;
  wire b2g3_return0;
  wire b2g3_return019_out;
  wire b2g3_return020_out;
  wire b2g3_return07_out;
  wire b2g3_return09_out;
  wire \cdc_sync_stage2_reg[0] ;
  wire \cdc_sync_stage2_reg[1] ;
  wire \cdc_sync_stage2_reg[2] ;
  wire \cdc_sync_stage2_reg[3] ;
  wire dest_beat;
  wire dest_beat_counter0;
  wire [3:0]dest_beat_counter_reg;
  wire dest_burst_info_write;
  wire dest_burst_info_write_i_2_n_0;
  wire dest_burst_info_write_i_3_n_0;
  wire [7:2]dest_burst_len_data;
  wire [5:0]\dest_burst_len_data_reg[7]_0 ;
  wire dest_burst_ready;
  wire dest_burst_valid;
  wire [3:0]\dest_id_next_reg[3]_0 ;
  wire dest_id_reduced_msb;
  wire dest_id_reduced_msb_next_i_1_n_0;
  wire [2:2]dest_id_reduced_next;
  wire dest_mem_data_last_i_1_n_0;
  wire \dest_mem_data_strb[7]_i_1_n_0 ;
  wire \dest_mem_data_strb[7]_i_2_n_0 ;
  wire dest_mem_data_valid_i_1_n_0;
  wire dest_mem_data_valid_reg_0;
  wire [0:0]dest_mem_data_valid_reg_1;
  wire dest_valid;
  wire dest_valid_i_1_n_0;
  wire fifo_wr_clk;
  wire [31:0]fifo_wr_din;
  wire id0;
  wire m_dest_axi_aclk;
  wire [63:0]m_dest_axi_wdata;
  wire m_dest_axi_wlast;
  wire m_dest_axi_wready;
  wire [0:0]m_dest_axi_wstrb;
  wire [3:0]p_0_in;
  wire [4:0]p_0_in_0;
  wire [4:0]p_0_in__0;
  wire p_1_in;
  wire p_1_in8_in;
  wire p_3_in;
  wire \src_id[0]_i_1_n_0 ;
  wire [2:0]src_id_reduced;
  wire src_id_reduced_msb_i_1_n_0;
  wire [0:0]\src_id_reg[0]_0 ;
  wire \src_id_reg_n_0_[2] ;
  wire src_last_beat__0;
  wire \src_throttled_request_id_reg[0] ;
  wire [3:0]\src_throttled_request_id_reg[0]_0 ;
  wire \src_throttled_request_id_reg[2] ;
  wire [1:0]NLW_burst_len_mem_reg_0_7_0_5_DOD_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "48" *) 
  (* RTL_RAM_NAME = "i_transfer/i_request_arb/i_store_and_forward/burst_len_mem_reg_0_7_0_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M burst_len_mem_reg_0_7_0_5
       (.ADDRA({1'b0,1'b0,dest_id_reduced_next,\dest_id_next_reg[3]_0 [1:0]}),
        .ADDRB({1'b0,1'b0,dest_id_reduced_next,\dest_id_next_reg[3]_0 [1:0]}),
        .ADDRC({1'b0,1'b0,dest_id_reduced_next,\dest_id_next_reg[3]_0 [1:0]}),
        .ADDRD({1'b0,1'b0,src_id_reduced}),
        .DIA(p_0_in_0[1:0]),
        .DIB(p_0_in_0[3:2]),
        .DIC({1'b0,p_0_in_0[4]}),
        .DID({1'b0,1'b0}),
        .DOA(dest_burst_len_data[3:2]),
        .DOB(dest_burst_len_data[5:4]),
        .DOC(dest_burst_len_data[7:6]),
        .DOD(NLW_burst_len_mem_reg_0_7_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(fifo_wr_clk),
        .WE(src_last_beat__0));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \dest_beat_counter[0]_i_1 
       (.I0(dest_beat_counter_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \dest_beat_counter[1]_i_1 
       (.I0(dest_beat_counter_reg[0]),
        .I1(dest_beat_counter_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \dest_beat_counter[2]_i_1 
       (.I0(dest_beat_counter_reg[1]),
        .I1(dest_beat_counter_reg[0]),
        .I2(dest_beat_counter_reg[2]),
        .O(p_0_in[2]));
  LUT5 #(
    .INIT(32'hFFFF5100)) 
    \dest_beat_counter[3]_i_1 
       (.I0(\dest_mem_data_strb[7]_i_2_n_0 ),
        .I1(dest_mem_data_valid_reg_0),
        .I2(m_dest_axi_wready),
        .I3(dest_valid),
        .I4(dest_mem_data_valid_reg_1),
        .O(dest_beat_counter0));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \dest_beat_counter[3]_i_2 
       (.I0(dest_beat_counter_reg[2]),
        .I1(dest_beat_counter_reg[0]),
        .I2(dest_beat_counter_reg[1]),
        .I3(dest_beat_counter_reg[3]),
        .O(p_0_in[3]));
  FDRE #(
    .INIT(1'b0)) 
    \dest_beat_counter_reg[0] 
       (.C(m_dest_axi_aclk),
        .CE(dest_beat),
        .D(p_0_in[0]),
        .Q(dest_beat_counter_reg[0]),
        .R(dest_beat_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_beat_counter_reg[1] 
       (.C(m_dest_axi_aclk),
        .CE(dest_beat),
        .D(p_0_in[1]),
        .Q(dest_beat_counter_reg[1]),
        .R(dest_beat_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_beat_counter_reg[2] 
       (.C(m_dest_axi_aclk),
        .CE(dest_beat),
        .D(p_0_in[2]),
        .Q(dest_beat_counter_reg[2]),
        .R(dest_beat_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_beat_counter_reg[3] 
       (.C(m_dest_axi_aclk),
        .CE(dest_beat),
        .D(p_0_in[3]),
        .Q(dest_beat_counter_reg[3]),
        .R(dest_beat_counter0));
  LUT6 #(
    .INIT(64'h0051FFFF00000000)) 
    dest_burst_info_write_i_1
       (.I0(dest_burst_info_write_i_2_n_0),
        .I1(dest_mem_data_valid_reg_0),
        .I2(m_dest_axi_wready),
        .I3(dest_burst_info_write_i_3_n_0),
        .I4(dest_valid),
        .I5(dest_burst_valid),
        .O(id0));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'h6FF6)) 
    dest_burst_info_write_i_2
       (.I0(dest_beat_counter_reg[0]),
        .I1(\dest_burst_len_data_reg[7]_0 [1]),
        .I2(dest_beat_counter_reg[1]),
        .I3(\dest_burst_len_data_reg[7]_0 [2]),
        .O(dest_burst_info_write_i_2_n_0));
  LUT4 #(
    .INIT(16'h6FF6)) 
    dest_burst_info_write_i_3
       (.I0(dest_beat_counter_reg[2]),
        .I1(\dest_burst_len_data_reg[7]_0 [3]),
        .I2(dest_beat_counter_reg[3]),
        .I3(\dest_burst_len_data_reg[7]_0 [4]),
        .O(dest_burst_info_write_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    dest_burst_info_write_reg
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(id0),
        .Q(dest_burst_info_write),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_burst_len_data_reg[2] 
       (.C(m_dest_axi_aclk),
        .CE(id0),
        .D(dest_burst_len_data[2]),
        .Q(\dest_burst_len_data_reg[7]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_burst_len_data_reg[3] 
       (.C(m_dest_axi_aclk),
        .CE(id0),
        .D(dest_burst_len_data[3]),
        .Q(\dest_burst_len_data_reg[7]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_burst_len_data_reg[4] 
       (.C(m_dest_axi_aclk),
        .CE(id0),
        .D(dest_burst_len_data[4]),
        .Q(\dest_burst_len_data_reg[7]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_burst_len_data_reg[5] 
       (.C(m_dest_axi_aclk),
        .CE(id0),
        .D(dest_burst_len_data[5]),
        .Q(\dest_burst_len_data_reg[7]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_burst_len_data_reg[6] 
       (.C(m_dest_axi_aclk),
        .CE(id0),
        .D(dest_burst_len_data[6]),
        .Q(\dest_burst_len_data_reg[7]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_burst_len_data_reg[7] 
       (.C(m_dest_axi_aclk),
        .CE(id0),
        .D(dest_burst_len_data[7]),
        .Q(\dest_burst_len_data_reg[7]_0 [5]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0051FFFF)) 
    \dest_id[3]_i_1 
       (.I0(dest_burst_info_write_i_2_n_0),
        .I1(dest_mem_data_valid_reg_0),
        .I2(m_dest_axi_wready),
        .I3(dest_burst_info_write_i_3_n_0),
        .I4(dest_valid),
        .O(dest_burst_ready));
  LUT3 #(
    .INIT(8'h69)) 
    \dest_id_next[0]_i_1 
       (.I0(\dest_id_next_reg[3]_0 [3]),
        .I1(\dest_id_next_reg[3]_0 [2]),
        .I2(\dest_id_next_reg[3]_0 [1]),
        .O(b2g3_return0));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'h99F0)) 
    \dest_id_next[1]_i_1 
       (.I0(\dest_id_next_reg[3]_0 [2]),
        .I1(\dest_id_next_reg[3]_0 [3]),
        .I2(\dest_id_next_reg[3]_0 [1]),
        .I3(\dest_id_next_reg[3]_0 [0]),
        .O(b2g3_return07_out));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'h8ABA)) 
    \dest_id_next[2]_i_1 
       (.I0(\dest_id_next_reg[3]_0 [2]),
        .I1(\dest_id_next_reg[3]_0 [0]),
        .I2(\dest_id_next_reg[3]_0 [1]),
        .I3(\dest_id_next_reg[3]_0 [3]),
        .O(b2g3_return09_out));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'hABA8)) 
    \dest_id_next[3]_i_1 
       (.I0(\dest_id_next_reg[3]_0 [3]),
        .I1(\dest_id_next_reg[3]_0 [0]),
        .I2(\dest_id_next_reg[3]_0 [1]),
        .I3(\dest_id_next_reg[3]_0 [2]),
        .O(p_1_in8_in));
  FDRE #(
    .INIT(1'b0)) 
    \dest_id_next_reg[0] 
       (.C(m_dest_axi_aclk),
        .CE(id0),
        .D(b2g3_return0),
        .Q(\dest_id_next_reg[3]_0 [0]),
        .R(dest_mem_data_valid_reg_1));
  FDRE #(
    .INIT(1'b0)) 
    \dest_id_next_reg[1] 
       (.C(m_dest_axi_aclk),
        .CE(id0),
        .D(b2g3_return07_out),
        .Q(\dest_id_next_reg[3]_0 [1]),
        .R(dest_mem_data_valid_reg_1));
  FDRE #(
    .INIT(1'b0)) 
    \dest_id_next_reg[2] 
       (.C(m_dest_axi_aclk),
        .CE(id0),
        .D(b2g3_return09_out),
        .Q(\dest_id_next_reg[3]_0 [2]),
        .R(dest_mem_data_valid_reg_1));
  FDRE #(
    .INIT(1'b0)) 
    \dest_id_next_reg[3] 
       (.C(m_dest_axi_aclk),
        .CE(id0),
        .D(p_1_in8_in),
        .Q(\dest_id_next_reg[3]_0 [3]),
        .R(dest_mem_data_valid_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'h66F0)) 
    dest_id_reduced_msb_next_i_1
       (.I0(\dest_id_next_reg[3]_0 [2]),
        .I1(\dest_id_next_reg[3]_0 [3]),
        .I2(\dest_id_next_reg[3]_0 [1]),
        .I3(\dest_id_next_reg[3]_0 [0]),
        .O(dest_id_reduced_msb_next_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    dest_id_reduced_msb_next_reg
       (.C(m_dest_axi_aclk),
        .CE(id0),
        .D(dest_id_reduced_msb_next_i_1_n_0),
        .Q(dest_id_reduced_next),
        .R(dest_mem_data_valid_reg_1));
  FDRE #(
    .INIT(1'b0)) 
    dest_id_reduced_msb_reg
       (.C(m_dest_axi_aclk),
        .CE(dest_burst_ready),
        .D(dest_id_reduced_next),
        .Q(dest_id_reduced_msb),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_id_reg[0] 
       (.C(m_dest_axi_aclk),
        .CE(dest_burst_ready),
        .D(\dest_id_next_reg[3]_0 [0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_id_reg[1] 
       (.C(m_dest_axi_aclk),
        .CE(dest_burst_ready),
        .D(\dest_id_next_reg[3]_0 [1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_id_reg[2] 
       (.C(m_dest_axi_aclk),
        .CE(dest_burst_ready),
        .D(\dest_id_next_reg[3]_0 [2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_id_reg[3] 
       (.C(m_dest_axi_aclk),
        .CE(dest_burst_ready),
        .D(\dest_id_next_reg[3]_0 [3]),
        .Q(Q[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h1111510100005500)) 
    dest_mem_data_last_i_1
       (.I0(dest_mem_data_valid_reg_1),
        .I1(\dest_mem_data_strb[7]_i_2_n_0 ),
        .I2(dest_mem_data_valid_reg_0),
        .I3(m_dest_axi_wlast),
        .I4(m_dest_axi_wready),
        .I5(dest_valid),
        .O(dest_mem_data_last_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    dest_mem_data_last_reg
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(dest_mem_data_last_i_1_n_0),
        .Q(m_dest_axi_wlast),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFCCCFCFCACCCACAC)) 
    \dest_mem_data_strb[7]_i_1 
       (.I0(\dest_mem_data_strb[7]_i_2_n_0 ),
        .I1(m_dest_axi_wstrb),
        .I2(dest_valid),
        .I3(m_dest_axi_wready),
        .I4(dest_mem_data_valid_reg_0),
        .I5(\dest_burst_len_data_reg[7]_0 [0]),
        .O(\dest_mem_data_strb[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT5 #(
    .INIT(32'hFFFF6FF6)) 
    \dest_mem_data_strb[7]_i_2 
       (.I0(\dest_burst_len_data_reg[7]_0 [2]),
        .I1(dest_beat_counter_reg[1]),
        .I2(\dest_burst_len_data_reg[7]_0 [1]),
        .I3(dest_beat_counter_reg[0]),
        .I4(dest_burst_info_write_i_3_n_0),
        .O(\dest_mem_data_strb[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \dest_mem_data_strb_reg[7] 
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(\dest_mem_data_strb[7]_i_1_n_0 ),
        .Q(m_dest_axi_wstrb),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    dest_mem_data_valid_i_1
       (.I0(dest_valid),
        .I1(m_dest_axi_wready),
        .I2(dest_mem_data_valid_reg_0),
        .O(dest_mem_data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    dest_mem_data_valid_reg
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(dest_mem_data_valid_i_1_n_0),
        .Q(dest_mem_data_valid_reg_0),
        .R(dest_mem_data_valid_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT5 #(
    .INIT(32'hFFFFAE00)) 
    dest_valid_i_1
       (.I0(\dest_mem_data_strb[7]_i_2_n_0 ),
        .I1(dest_mem_data_valid_reg_0),
        .I2(m_dest_axi_wready),
        .I3(dest_valid),
        .I4(dest_burst_valid),
        .O(dest_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    dest_valid_reg
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(dest_valid_i_1_n_0),
        .Q(dest_valid),
        .R(dest_mem_data_valid_reg_1));
  icyradio_axi_dmac_rf_rx1_0_sync_bits__parameterized1__xdcDup__1 i_dest_sync_id
       (.\cdc_sync_stage1_reg[2]_0 (\src_id_reg_n_0_[2] ),
        .\cdc_sync_stage2_reg[0]_0 (\cdc_sync_stage2_reg[0] ),
        .\cdc_sync_stage2_reg[1]_0 (\cdc_sync_stage2_reg[1] ),
        .\cdc_sync_stage2_reg[2]_0 (\cdc_sync_stage2_reg[2] ),
        .\cdc_sync_stage2_reg[3]_0 (\cdc_sync_stage2_reg[3] ),
        .m_dest_axi_aclk(m_dest_axi_aclk),
        .p_1_in(p_1_in),
        .src_id_reduced(src_id_reduced[1:0]));
  icyradio_axi_dmac_rf_rx1_0_ad_mem_asym i_mem
       (.ADDRARDADDR({dest_id_reduced_msb,Q[1:0],dest_beat_counter_reg}),
        .ADDRBWRADDR({src_id_reduced,p_0_in_0}),
        .E(dest_beat),
        .dest_valid(dest_valid),
        .fifo_wr_clk(fifo_wr_clk),
        .fifo_wr_din(fifo_wr_din),
        .m_dest_axi_aclk(m_dest_axi_aclk),
        .m_dest_axi_wdata(m_dest_axi_wdata),
        .m_dest_axi_wready(m_dest_axi_wready),
        .m_ram_reg_bram_0_0(E),
        .m_ram_reg_bram_0_1(dest_mem_data_valid_reg_0));
  icyradio_axi_dmac_rf_rx1_0_sync_bits__parameterized1__xdcDup__2 i_src_sync_id
       (.Q(Q),
        .fifo_wr_clk(fifo_wr_clk),
        .\src_throttled_request_id_reg[0] (\src_throttled_request_id_reg[0] ),
        .\src_throttled_request_id_reg[0]_0 (\src_throttled_request_id_reg[0]_0 ),
        .\src_throttled_request_id_reg[2] (\src_throttled_request_id_reg[2] ));
  LUT1 #(
    .INIT(2'h1)) 
    \src_beat_counter[0]_i_1 
       (.I0(p_0_in_0[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_beat_counter[1]_i_1 
       (.I0(p_0_in_0[0]),
        .I1(p_0_in_0[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \src_beat_counter[2]_i_1 
       (.I0(p_0_in_0[0]),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \src_beat_counter[3]_i_1 
       (.I0(p_0_in_0[1]),
        .I1(p_0_in_0[0]),
        .I2(p_0_in_0[2]),
        .I3(p_0_in_0[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \src_beat_counter[4]_i_2 
       (.I0(p_0_in_0[2]),
        .I1(p_0_in_0[0]),
        .I2(p_0_in_0[1]),
        .I3(p_0_in_0[3]),
        .I4(p_0_in_0[4]),
        .O(p_0_in__0[4]));
  FDRE #(
    .INIT(1'b0)) 
    \src_beat_counter_reg[0] 
       (.C(fifo_wr_clk),
        .CE(E),
        .D(p_0_in__0[0]),
        .Q(p_0_in_0[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \src_beat_counter_reg[1] 
       (.C(fifo_wr_clk),
        .CE(E),
        .D(p_0_in__0[1]),
        .Q(p_0_in_0[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \src_beat_counter_reg[2] 
       (.C(fifo_wr_clk),
        .CE(E),
        .D(p_0_in__0[2]),
        .Q(p_0_in_0[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \src_beat_counter_reg[3] 
       (.C(fifo_wr_clk),
        .CE(E),
        .D(p_0_in__0[3]),
        .Q(p_0_in_0[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \src_beat_counter_reg[4] 
       (.C(fifo_wr_clk),
        .CE(E),
        .D(p_0_in__0[4]),
        .Q(p_0_in_0[4]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \src_id[0]_i_1 
       (.I0(src_id_reduced[1]),
        .I1(p_1_in),
        .I2(\src_id_reg_n_0_[2] ),
        .O(\src_id[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'h99F0)) 
    \src_id[1]_i_1 
       (.I0(\src_id_reg_n_0_[2] ),
        .I1(p_1_in),
        .I2(src_id_reduced[1]),
        .I3(src_id_reduced[0]),
        .O(b2g3_return019_out));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'hD1F0)) 
    \src_id[2]_i_1 
       (.I0(p_1_in),
        .I1(src_id_reduced[0]),
        .I2(\src_id_reg_n_0_[2] ),
        .I3(src_id_reduced[1]),
        .O(b2g3_return020_out));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'hFE04)) 
    \src_id[3]_i_2 
       (.I0(src_id_reduced[1]),
        .I1(\src_id_reg_n_0_[2] ),
        .I2(src_id_reduced[0]),
        .I3(p_1_in),
        .O(p_3_in));
  LUT5 #(
    .INIT(32'h55D1AAE2)) 
    src_id_reduced_msb_i_1
       (.I0(\src_id_reg_n_0_[2] ),
        .I1(src_last_beat__0),
        .I2(src_id_reduced[1]),
        .I3(src_id_reduced[0]),
        .I4(p_1_in),
        .O(src_id_reduced_msb_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    src_id_reduced_msb_reg
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(src_id_reduced_msb_i_1_n_0),
        .Q(src_id_reduced[2]),
        .R(\src_id_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \src_id_reg[0] 
       (.C(fifo_wr_clk),
        .CE(src_last_beat__0),
        .D(\src_id[0]_i_1_n_0 ),
        .Q(src_id_reduced[0]),
        .R(\src_id_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \src_id_reg[1] 
       (.C(fifo_wr_clk),
        .CE(src_last_beat__0),
        .D(b2g3_return019_out),
        .Q(src_id_reduced[1]),
        .R(\src_id_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \src_id_reg[2] 
       (.C(fifo_wr_clk),
        .CE(src_last_beat__0),
        .D(b2g3_return020_out),
        .Q(\src_id_reg_n_0_[2] ),
        .R(\src_id_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \src_id_reg[3] 
       (.C(fifo_wr_clk),
        .CE(src_last_beat__0),
        .D(p_3_in),
        .Q(p_1_in),
        .R(\src_id_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "axi_dmac_regmap" *) 
module icyradio_axi_dmac_rf_rx1_0_axi_dmac_regmap
   (SR,
    irq,
    ctrl_enable,
    p_3_in,
    up_dma_req_valid,
    up_response_ready,
    up_clear_tl,
    s_axi_bvalid,
    s_axi_awready,
    s_axi_wready,
    up_axi_rvalid_int_reg,
    s_axi_arready,
    ctrl_pause,
    D,
    Q,
    E,
    s_axi_rdata,
    s_axi_aclk,
    up_clear_tl_reg,
    up_response_valid,
    up_bl_partial,
    up_tlf_s_valid_reg,
    s_axi_aresetn,
    \up_irq_source_reg[0]_0 ,
    up_eot,
    s_axi_bready,
    s_axi_rready,
    s_axi_wvalid,
    s_axi_awvalid,
    s_axi_arvalid,
    s_axi_wdata,
    s_axi_awaddr,
    \up_transfer_id_reg[1] ,
    \up_transfer_id_reg[0] ,
    \up_transfer_id_reg[0]_0 ,
    req_gen_ready,
    dbg_status,
    s_axi_araddr,
    \up_measured_transfer_length_reg[7] );
  output [0:0]SR;
  output irq;
  output ctrl_enable;
  output [0:0]p_3_in;
  output up_dma_req_valid;
  output up_response_ready;
  output up_clear_tl;
  output s_axi_bvalid;
  output s_axi_awready;
  output s_axi_wready;
  output up_axi_rvalid_int_reg;
  output s_axi_arready;
  output ctrl_pause;
  output [64:0]D;
  output [16:0]Q;
  output [0:0]E;
  output [31:0]s_axi_rdata;
  input s_axi_aclk;
  input up_clear_tl_reg;
  input up_response_valid;
  input up_bl_partial;
  input up_tlf_s_valid_reg;
  input s_axi_aresetn;
  input \up_irq_source_reg[0]_0 ;
  input up_eot;
  input s_axi_bready;
  input s_axi_rready;
  input s_axi_wvalid;
  input s_axi_awvalid;
  input s_axi_arvalid;
  input [31:0]s_axi_wdata;
  input [8:0]s_axi_awaddr;
  input [0:0]\up_transfer_id_reg[1] ;
  input \up_transfer_id_reg[0] ;
  input \up_transfer_id_reg[0]_0 ;
  input req_gen_ready;
  input [0:0]dbg_status;
  input [8:0]s_axi_araddr;
  input [5:0]\up_measured_transfer_length_reg[7] ;

  wire [64:0]D;
  wire [0:0]E;
  wire [16:0]Q;
  wire [0:0]SR;
  wire ctrl_enable;
  wire ctrl_pause;
  wire [1:0]data9;
  wire [0:0]dbg_status;
  wire i_regmap_request_n_119;
  wire i_regmap_request_n_120;
  wire i_regmap_request_n_121;
  wire i_regmap_request_n_122;
  wire i_regmap_request_n_125;
  wire i_regmap_request_n_126;
  wire i_regmap_request_n_127;
  wire i_regmap_request_n_128;
  wire i_regmap_request_n_129;
  wire i_regmap_request_n_130;
  wire i_regmap_request_n_131;
  wire i_regmap_request_n_132;
  wire i_regmap_request_n_133;
  wire i_regmap_request_n_134;
  wire i_regmap_request_n_135;
  wire i_regmap_request_n_136;
  wire i_regmap_request_n_137;
  wire i_regmap_request_n_138;
  wire i_regmap_request_n_139;
  wire i_regmap_request_n_140;
  wire i_regmap_request_n_141;
  wire i_regmap_request_n_142;
  wire i_regmap_request_n_143;
  wire i_regmap_request_n_144;
  wire i_regmap_request_n_145;
  wire i_regmap_request_n_146;
  wire i_regmap_request_n_147;
  wire i_regmap_request_n_148;
  wire \i_transfer_lenghts_fifo/fifo._m_axis_valid ;
  wire i_up_axi_n_10;
  wire i_up_axi_n_11;
  wire i_up_axi_n_12;
  wire i_up_axi_n_13;
  wire i_up_axi_n_14;
  wire i_up_axi_n_15;
  wire i_up_axi_n_38;
  wire i_up_axi_n_39;
  wire i_up_axi_n_7;
  wire i_up_axi_n_72;
  wire i_up_axi_n_73;
  wire i_up_axi_n_76;
  wire i_up_axi_n_77;
  wire i_up_axi_n_78;
  wire i_up_axi_n_79;
  wire i_up_axi_n_8;
  wire i_up_axi_n_80;
  wire i_up_axi_n_81;
  wire i_up_axi_n_82;
  wire i_up_axi_n_83;
  wire i_up_axi_n_84;
  wire i_up_axi_n_9;
  wire irq;
  wire irq_i_1_n_0;
  wire [0:0]p_3_in;
  wire req_gen_ready;
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
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire up_axi_rvalid_int_reg;
  wire up_bl_partial;
  wire up_clear_tl;
  wire up_clear_tl_reg;
  wire up_dma_dest_address;
  wire up_dma_req_valid;
  wire up_dma_src_address;
  wire [23:2]up_dma_x_length0_in;
  wire up_eot;
  wire \up_irq_mask[0]_i_1_n_0 ;
  wire \up_irq_mask[1]_i_1_n_0 ;
  wire \up_irq_mask_reg_n_0_[0] ;
  wire \up_irq_mask_reg_n_0_[1] ;
  wire [1:0]up_irq_source;
  wire \up_irq_source_reg[0]_0 ;
  wire [23:0]up_measured_transfer_length;
  wire [5:0]\up_measured_transfer_length_reg[7] ;
  wire up_partial_length_valid;
  wire up_rack;
  wire [31:0]up_rdata;
  wire [31:0]up_rdata_0;
  wire up_response_ready;
  wire up_response_valid;
  wire up_rreq;
  wire [31:0]up_scratch;
  wire up_tlf_s_valid_reg;
  wire up_tlf_valid;
  wire [1:0]up_transfer_id;
  wire [1:0]up_transfer_id_eot;
  wire \up_transfer_id_reg[0] ;
  wire \up_transfer_id_reg[0]_0 ;
  wire [0:0]\up_transfer_id_reg[1] ;
  wire up_wack;
  wire up_wreq;

  FDRE #(
    .INIT(1'b0)) 
    ctrl_enable_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_up_axi_n_82),
        .Q(ctrl_enable),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    ctrl_pause_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_up_axi_n_81),
        .Q(ctrl_pause),
        .R(SR));
  icyradio_axi_dmac_rf_rx1_0_axi_dmac_regmap_request i_regmap_request
       (.D(D),
        .E(E),
        .Q(up_measured_transfer_length),
        .SR(SR),
        .dbg_status(dbg_status),
        .\fifo._m_axis_valid (\i_transfer_lenghts_fifo/fifo._m_axis_valid ),
        .\fifo.sync_clocks.data_reg[0] (i_up_axi_n_72),
        .\fifo.sync_clocks.data_reg[25] ({data9,i_regmap_request_n_125,i_regmap_request_n_126,i_regmap_request_n_127,i_regmap_request_n_128,i_regmap_request_n_129,i_regmap_request_n_130,i_regmap_request_n_131,i_regmap_request_n_132,i_regmap_request_n_133,i_regmap_request_n_134,i_regmap_request_n_135,i_regmap_request_n_136,i_regmap_request_n_137,i_regmap_request_n_138,i_regmap_request_n_139,i_regmap_request_n_140,i_regmap_request_n_141,i_regmap_request_n_142,i_regmap_request_n_143,i_regmap_request_n_144,i_regmap_request_n_145,i_regmap_request_n_146,i_regmap_request_n_147,i_regmap_request_n_148}),
        .\fifo.valid_reg (i_up_axi_n_80),
        .\m_axis_raddr_reg_reg[0] (ctrl_enable),
        .p_3_in(p_3_in),
        .req_gen_ready(req_gen_ready),
        .response_ready_reg_0(up_response_ready),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .up_bl_partial(up_bl_partial),
        .up_clear_tl(up_clear_tl),
        .up_clear_tl_reg_0(up_clear_tl_reg),
        .\up_dma_dest_address_reg[31]_0 (up_dma_dest_address),
        .up_dma_enable_tlen_reporting_reg_0(i_up_axi_n_84),
        .up_dma_last_reg_0(i_up_axi_n_83),
        .up_dma_req_valid_reg_0(up_dma_req_valid),
        .up_dma_req_valid_reg_1(i_up_axi_n_7),
        .\up_dma_src_address_reg[31]_0 ({i_up_axi_n_8,i_up_axi_n_9,i_up_axi_n_10,i_up_axi_n_11,i_up_axi_n_12,i_up_axi_n_13,i_up_axi_n_14,i_up_axi_n_15,up_dma_x_length0_in}),
        .\up_dma_src_address_reg[31]_1 (up_dma_src_address),
        .\up_dma_x_length_reg[23]_0 (Q),
        .\up_dma_x_length_reg[2]_0 (i_up_axi_n_73),
        .up_eot(up_eot),
        .\up_measured_transfer_length_reg[7]_0 (\up_measured_transfer_length_reg[7] ),
        .up_partial_length_valid(up_partial_length_valid),
        .up_response_valid(up_response_valid),
        .up_rreq(up_rreq),
        .up_tlf_s_valid_reg_0(up_tlf_s_valid_reg),
        .up_tlf_valid(up_tlf_valid),
        .\up_transfer_done_bitmap_reg[0]_0 (i_regmap_request_n_122),
        .\up_transfer_done_bitmap_reg[0]_1 (\up_irq_source_reg[0]_0 ),
        .\up_transfer_done_bitmap_reg[1]_0 (i_regmap_request_n_121),
        .\up_transfer_done_bitmap_reg[2]_0 (i_regmap_request_n_120),
        .\up_transfer_done_bitmap_reg[3]_0 (i_regmap_request_n_119),
        .up_transfer_id(up_transfer_id),
        .up_transfer_id_eot(up_transfer_id_eot),
        .\up_transfer_id_reg[0]_0 (\up_transfer_id_reg[0] ),
        .\up_transfer_id_reg[0]_1 (\up_transfer_id_reg[0]_0 ),
        .\up_transfer_id_reg[1]_0 (\up_transfer_id_reg[1] ));
  icyradio_axi_dmac_rf_rx1_0_up_axi i_up_axi
       (.D(up_rdata_0),
        .E(i_up_axi_n_76),
        .Q({i_up_axi_n_8,i_up_axi_n_9,i_up_axi_n_10,i_up_axi_n_11,i_up_axi_n_12,i_up_axi_n_13,i_up_axi_n_14,i_up_axi_n_15,up_dma_x_length0_in,i_up_axi_n_38,i_up_axi_n_39}),
        .SR(SR),
        .ctrl_enable_reg(ctrl_enable),
        .ctrl_pause(ctrl_pause),
        .\fifo._m_axis_valid (\i_transfer_lenghts_fifo/fifo._m_axis_valid ),
        .p_3_in(p_3_in),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid),
        .up_axi_rvalid_int_reg_0(up_axi_rvalid_int_reg),
        .up_dma_req_valid(up_dma_req_valid),
        .up_eot(up_eot),
        .\up_irq_source_reg[0] (\up_irq_source_reg[0]_0 ),
        .\up_irq_source_reg[1] (up_irq_source),
        .up_partial_length_valid(up_partial_length_valid),
        .up_rack(up_rack),
        .\up_raddr_int_reg[4]_0 (i_up_axi_n_72),
        .\up_rdata_d_reg[31]_0 (up_rdata),
        .\up_rdata_reg[0] (\up_irq_mask_reg_n_0_[0] ),
        .\up_rdata_reg[0]_0 (i_regmap_request_n_122),
        .\up_rdata_reg[1] ({data9,i_regmap_request_n_125,i_regmap_request_n_126,i_regmap_request_n_127,i_regmap_request_n_128,i_regmap_request_n_129,i_regmap_request_n_130,i_regmap_request_n_131,i_regmap_request_n_132,i_regmap_request_n_133,i_regmap_request_n_134,i_regmap_request_n_135,i_regmap_request_n_136,i_regmap_request_n_137,i_regmap_request_n_138,i_regmap_request_n_139,i_regmap_request_n_140,i_regmap_request_n_141,i_regmap_request_n_142,i_regmap_request_n_143,i_regmap_request_n_144,i_regmap_request_n_145,i_regmap_request_n_146,i_regmap_request_n_147,i_regmap_request_n_148}),
        .\up_rdata_reg[1]_0 (\up_irq_mask_reg_n_0_[1] ),
        .\up_rdata_reg[1]_1 (i_regmap_request_n_121),
        .\up_rdata_reg[23] (up_measured_transfer_length),
        .\up_rdata_reg[23]_0 (Q),
        .\up_rdata_reg[2] (i_regmap_request_n_120),
        .\up_rdata_reg[31] (up_scratch),
        .\up_rdata_reg[31]_0 ({D[64:36],D[5:0]}),
        .\up_rdata_reg[3] (i_regmap_request_n_119),
        .up_rreq(up_rreq),
        .up_rreq_int_reg_0(i_up_axi_n_80),
        .up_tlf_valid(up_tlf_valid),
        .up_transfer_id(up_transfer_id),
        .up_transfer_id_eot(up_transfer_id_eot),
        .up_wack(up_wack),
        .\up_waddr_int_reg[5]_0 (i_up_axi_n_73),
        .\up_waddr_int_reg[5]_1 (up_dma_dest_address),
        .\up_waddr_int_reg[8]_0 (up_dma_src_address),
        .\up_waddr_int_reg[8]_1 (i_up_axi_n_79),
        .\up_wdata_int_reg[0]_0 (i_up_axi_n_7),
        .\up_wdata_int_reg[0]_1 (i_up_axi_n_82),
        .\up_wdata_int_reg[1]_0 ({i_up_axi_n_77,i_up_axi_n_78}),
        .\up_wdata_int_reg[1]_1 (i_up_axi_n_81),
        .\up_wdata_int_reg[1]_2 (i_up_axi_n_83),
        .\up_wdata_int_reg[2]_0 (i_up_axi_n_84),
        .up_wreq(up_wreq));
  LUT4 #(
    .INIT(16'h4F44)) 
    irq_i_1
       (.I0(\up_irq_mask_reg_n_0_[0] ),
        .I1(up_irq_source[0]),
        .I2(\up_irq_mask_reg_n_0_[1] ),
        .I3(up_irq_source[1]),
        .O(irq_i_1_n_0));
  FDRE irq_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(irq_i_1_n_0),
        .Q(irq),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \up_irq_mask[0]_i_1 
       (.I0(i_up_axi_n_39),
        .I1(i_up_axi_n_79),
        .I2(\up_irq_mask_reg_n_0_[0] ),
        .O(\up_irq_mask[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \up_irq_mask[1]_i_1 
       (.I0(i_up_axi_n_38),
        .I1(i_up_axi_n_79),
        .I2(\up_irq_mask_reg_n_0_[1] ),
        .O(\up_irq_mask[1]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \up_irq_mask_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_irq_mask[0]_i_1_n_0 ),
        .Q(\up_irq_mask_reg_n_0_[0] ),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \up_irq_mask_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_irq_mask[1]_i_1_n_0 ),
        .Q(\up_irq_mask_reg_n_0_[1] ),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_irq_source_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_up_axi_n_78),
        .Q(up_irq_source[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_irq_source_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_up_axi_n_77),
        .Q(up_irq_source[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    up_rack_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rreq),
        .Q(up_rack),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[0] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[0]),
        .Q(up_rdata[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[10] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[10]),
        .Q(up_rdata[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[11] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[11]),
        .Q(up_rdata[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[12] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[12]),
        .Q(up_rdata[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[13] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[13]),
        .Q(up_rdata[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[14] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[14]),
        .Q(up_rdata[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[15] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[15]),
        .Q(up_rdata[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[16] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[16]),
        .Q(up_rdata[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[17] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[17]),
        .Q(up_rdata[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[18] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[18]),
        .Q(up_rdata[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[19] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[19]),
        .Q(up_rdata[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[1] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[1]),
        .Q(up_rdata[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[20] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[20]),
        .Q(up_rdata[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[21] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[21]),
        .Q(up_rdata[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[22] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[22]),
        .Q(up_rdata[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[23] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[23]),
        .Q(up_rdata[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[24] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[24]),
        .Q(up_rdata[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[25] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[25]),
        .Q(up_rdata[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[26] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[26]),
        .Q(up_rdata[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[27] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[27]),
        .Q(up_rdata[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[28] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[28]),
        .Q(up_rdata[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[29] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[29]),
        .Q(up_rdata[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[2] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[2]),
        .Q(up_rdata[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[30] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[30]),
        .Q(up_rdata[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[31] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[31]),
        .Q(up_rdata[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[3] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[3]),
        .Q(up_rdata[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[4] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[4]),
        .Q(up_rdata[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[5] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[5]),
        .Q(up_rdata[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[6] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[6]),
        .Q(up_rdata[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[7] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[7]),
        .Q(up_rdata[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[8] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[8]),
        .Q(up_rdata[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_reg[9] 
       (.C(s_axi_aclk),
        .CE(up_rreq),
        .D(up_rdata_0[9]),
        .Q(up_rdata[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[0] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_76),
        .D(i_up_axi_n_39),
        .Q(up_scratch[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[10] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_76),
        .D(up_dma_x_length0_in[10]),
        .Q(up_scratch[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[11] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_76),
        .D(up_dma_x_length0_in[11]),
        .Q(up_scratch[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[12] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_76),
        .D(up_dma_x_length0_in[12]),
        .Q(up_scratch[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[13] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_76),
        .D(up_dma_x_length0_in[13]),
        .Q(up_scratch[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[14] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_76),
        .D(up_dma_x_length0_in[14]),
        .Q(up_scratch[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[15] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_76),
        .D(up_dma_x_length0_in[15]),
        .Q(up_scratch[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[16] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_76),
        .D(up_dma_x_length0_in[16]),
        .Q(up_scratch[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[17] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_76),
        .D(up_dma_x_length0_in[17]),
        .Q(up_scratch[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[18] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_76),
        .D(up_dma_x_length0_in[18]),
        .Q(up_scratch[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[19] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_76),
        .D(up_dma_x_length0_in[19]),
        .Q(up_scratch[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[1] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_76),
        .D(i_up_axi_n_38),
        .Q(up_scratch[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[20] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_76),
        .D(up_dma_x_length0_in[20]),
        .Q(up_scratch[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[21] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_76),
        .D(up_dma_x_length0_in[21]),
        .Q(up_scratch[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[22] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_76),
        .D(up_dma_x_length0_in[22]),
        .Q(up_scratch[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[23] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_76),
        .D(up_dma_x_length0_in[23]),
        .Q(up_scratch[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[24] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_76),
        .D(i_up_axi_n_15),
        .Q(up_scratch[24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[25] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_76),
        .D(i_up_axi_n_14),
        .Q(up_scratch[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[26] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_76),
        .D(i_up_axi_n_13),
        .Q(up_scratch[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[27] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_76),
        .D(i_up_axi_n_12),
        .Q(up_scratch[27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[28] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_76),
        .D(i_up_axi_n_11),
        .Q(up_scratch[28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[29] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_76),
        .D(i_up_axi_n_10),
        .Q(up_scratch[29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[2] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_76),
        .D(up_dma_x_length0_in[2]),
        .Q(up_scratch[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[30] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_76),
        .D(i_up_axi_n_9),
        .Q(up_scratch[30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[31] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_76),
        .D(i_up_axi_n_8),
        .Q(up_scratch[31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[3] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_76),
        .D(up_dma_x_length0_in[3]),
        .Q(up_scratch[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[4] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_76),
        .D(up_dma_x_length0_in[4]),
        .Q(up_scratch[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[5] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_76),
        .D(up_dma_x_length0_in[5]),
        .Q(up_scratch[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[6] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_76),
        .D(up_dma_x_length0_in[6]),
        .Q(up_scratch[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[7] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_76),
        .D(up_dma_x_length0_in[7]),
        .Q(up_scratch[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[8] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_76),
        .D(up_dma_x_length0_in[8]),
        .Q(up_scratch[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[9] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_76),
        .D(up_dma_x_length0_in[9]),
        .Q(up_scratch[9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    up_wack_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_wreq),
        .Q(up_wack),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "axi_dmac_regmap_request" *) 
module icyradio_axi_dmac_rf_rx1_0_axi_dmac_regmap_request
   (up_tlf_valid,
    p_3_in,
    SR,
    up_dma_req_valid_reg_0,
    response_ready_reg_0,
    up_clear_tl,
    D,
    up_partial_length_valid,
    \fifo._m_axis_valid ,
    E,
    up_transfer_id_eot,
    Q,
    up_transfer_id,
    \up_dma_x_length_reg[23]_0 ,
    \up_transfer_done_bitmap_reg[3]_0 ,
    \up_transfer_done_bitmap_reg[2]_0 ,
    \up_transfer_done_bitmap_reg[1]_0 ,
    \up_transfer_done_bitmap_reg[0]_0 ,
    \fifo.sync_clocks.data_reg[25] ,
    \fifo.valid_reg ,
    s_axi_aclk,
    up_dma_enable_tlen_reporting_reg_0,
    up_dma_req_valid_reg_1,
    up_clear_tl_reg_0,
    up_dma_last_reg_0,
    up_response_valid,
    up_bl_partial,
    up_tlf_s_valid_reg_0,
    \fifo.sync_clocks.data_reg[0] ,
    up_rreq,
    \m_axis_raddr_reg_reg[0] ,
    up_eot,
    s_axi_aresetn,
    \up_transfer_id_reg[1]_0 ,
    \up_transfer_id_reg[0]_0 ,
    \up_transfer_id_reg[0]_1 ,
    req_gen_ready,
    dbg_status,
    \up_dma_dest_address_reg[31]_0 ,
    \up_dma_src_address_reg[31]_0 ,
    \up_dma_x_length_reg[2]_0 ,
    \up_transfer_done_bitmap_reg[0]_1 ,
    \up_dma_src_address_reg[31]_1 ,
    \up_measured_transfer_length_reg[7]_0 );
  output up_tlf_valid;
  output [0:0]p_3_in;
  output [0:0]SR;
  output up_dma_req_valid_reg_0;
  output response_ready_reg_0;
  output up_clear_tl;
  output [64:0]D;
  output up_partial_length_valid;
  output \fifo._m_axis_valid ;
  output [0:0]E;
  output [1:0]up_transfer_id_eot;
  output [23:0]Q;
  output [1:0]up_transfer_id;
  output [16:0]\up_dma_x_length_reg[23]_0 ;
  output \up_transfer_done_bitmap_reg[3]_0 ;
  output \up_transfer_done_bitmap_reg[2]_0 ;
  output \up_transfer_done_bitmap_reg[1]_0 ;
  output \up_transfer_done_bitmap_reg[0]_0 ;
  output [25:0]\fifo.sync_clocks.data_reg[25] ;
  input \fifo.valid_reg ;
  input s_axi_aclk;
  input up_dma_enable_tlen_reporting_reg_0;
  input up_dma_req_valid_reg_1;
  input up_clear_tl_reg_0;
  input up_dma_last_reg_0;
  input up_response_valid;
  input up_bl_partial;
  input up_tlf_s_valid_reg_0;
  input \fifo.sync_clocks.data_reg[0] ;
  input up_rreq;
  input \m_axis_raddr_reg_reg[0] ;
  input up_eot;
  input s_axi_aresetn;
  input [0:0]\up_transfer_id_reg[1]_0 ;
  input \up_transfer_id_reg[0]_0 ;
  input \up_transfer_id_reg[0]_1 ;
  input req_gen_ready;
  input [0:0]dbg_status;
  input [0:0]\up_dma_dest_address_reg[31]_0 ;
  input [29:0]\up_dma_src_address_reg[31]_0 ;
  input [0:0]\up_dma_x_length_reg[2]_0 ;
  input \up_transfer_done_bitmap_reg[0]_1 ;
  input [0:0]\up_dma_src_address_reg[31]_1 ;
  input [5:0]\up_measured_transfer_length_reg[7]_0 ;

  wire [64:0]D;
  wire [0:0]E;
  wire [23:0]Q;
  wire [0:0]SR;
  wire [0:0]dbg_status;
  wire \fifo._m_axis_valid ;
  wire \fifo.sync_clocks.data_reg[0] ;
  wire [25:0]\fifo.sync_clocks.data_reg[25] ;
  wire \fifo.valid_reg ;
  wire i_transfer_lenghts_fifo_n_1;
  wire i_transfer_lenghts_fifo_n_2;
  wire i_transfer_lenghts_fifo_n_4;
  wire i_transfer_lenghts_fifo_n_5;
  wire \m_axis_raddr_reg_reg[0] ;
  wire [0:0]p_3_in;
  wire req_gen_ready;
  wire response_ready_reg_0;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire up_bl_partial;
  wire up_clear_tl;
  wire up_clear_tl_reg_0;
  wire [0:0]\up_dma_dest_address_reg[31]_0 ;
  wire up_dma_enable_tlen_reporting_reg_0;
  wire up_dma_last_reg_0;
  wire up_dma_req_valid_reg_0;
  wire up_dma_req_valid_reg_1;
  wire [29:0]\up_dma_src_address_reg[31]_0 ;
  wire [0:0]\up_dma_src_address_reg[31]_1 ;
  wire [16:0]\up_dma_x_length_reg[23]_0 ;
  wire [0:0]\up_dma_x_length_reg[2]_0 ;
  wire up_eot;
  wire \up_measured_transfer_length[23]_i_1_n_0 ;
  wire \up_measured_transfer_length[3]_i_2_n_0 ;
  wire \up_measured_transfer_length[3]_i_3_n_0 ;
  wire \up_measured_transfer_length[3]_i_4_n_0 ;
  wire \up_measured_transfer_length[3]_i_5_n_0 ;
  wire \up_measured_transfer_length[7]_i_2_n_0 ;
  wire \up_measured_transfer_length[7]_i_3_n_0 ;
  wire \up_measured_transfer_length[7]_i_4_n_0 ;
  wire \up_measured_transfer_length_reg[11]_i_1_n_0 ;
  wire \up_measured_transfer_length_reg[11]_i_1_n_1 ;
  wire \up_measured_transfer_length_reg[11]_i_1_n_2 ;
  wire \up_measured_transfer_length_reg[11]_i_1_n_3 ;
  wire \up_measured_transfer_length_reg[11]_i_1_n_4 ;
  wire \up_measured_transfer_length_reg[11]_i_1_n_5 ;
  wire \up_measured_transfer_length_reg[11]_i_1_n_6 ;
  wire \up_measured_transfer_length_reg[11]_i_1_n_7 ;
  wire \up_measured_transfer_length_reg[15]_i_1_n_0 ;
  wire \up_measured_transfer_length_reg[15]_i_1_n_1 ;
  wire \up_measured_transfer_length_reg[15]_i_1_n_2 ;
  wire \up_measured_transfer_length_reg[15]_i_1_n_3 ;
  wire \up_measured_transfer_length_reg[15]_i_1_n_4 ;
  wire \up_measured_transfer_length_reg[15]_i_1_n_5 ;
  wire \up_measured_transfer_length_reg[15]_i_1_n_6 ;
  wire \up_measured_transfer_length_reg[15]_i_1_n_7 ;
  wire \up_measured_transfer_length_reg[19]_i_1_n_0 ;
  wire \up_measured_transfer_length_reg[19]_i_1_n_1 ;
  wire \up_measured_transfer_length_reg[19]_i_1_n_2 ;
  wire \up_measured_transfer_length_reg[19]_i_1_n_3 ;
  wire \up_measured_transfer_length_reg[19]_i_1_n_4 ;
  wire \up_measured_transfer_length_reg[19]_i_1_n_5 ;
  wire \up_measured_transfer_length_reg[19]_i_1_n_6 ;
  wire \up_measured_transfer_length_reg[19]_i_1_n_7 ;
  wire \up_measured_transfer_length_reg[23]_i_3_n_1 ;
  wire \up_measured_transfer_length_reg[23]_i_3_n_2 ;
  wire \up_measured_transfer_length_reg[23]_i_3_n_3 ;
  wire \up_measured_transfer_length_reg[23]_i_3_n_4 ;
  wire \up_measured_transfer_length_reg[23]_i_3_n_5 ;
  wire \up_measured_transfer_length_reg[23]_i_3_n_6 ;
  wire \up_measured_transfer_length_reg[23]_i_3_n_7 ;
  wire \up_measured_transfer_length_reg[3]_i_1_n_0 ;
  wire \up_measured_transfer_length_reg[3]_i_1_n_1 ;
  wire \up_measured_transfer_length_reg[3]_i_1_n_2 ;
  wire \up_measured_transfer_length_reg[3]_i_1_n_3 ;
  wire \up_measured_transfer_length_reg[3]_i_1_n_4 ;
  wire \up_measured_transfer_length_reg[3]_i_1_n_5 ;
  wire \up_measured_transfer_length_reg[3]_i_1_n_6 ;
  wire \up_measured_transfer_length_reg[3]_i_1_n_7 ;
  wire [5:0]\up_measured_transfer_length_reg[7]_0 ;
  wire \up_measured_transfer_length_reg[7]_i_1_n_0 ;
  wire \up_measured_transfer_length_reg[7]_i_1_n_1 ;
  wire \up_measured_transfer_length_reg[7]_i_1_n_2 ;
  wire \up_measured_transfer_length_reg[7]_i_1_n_3 ;
  wire \up_measured_transfer_length_reg[7]_i_1_n_4 ;
  wire \up_measured_transfer_length_reg[7]_i_1_n_5 ;
  wire \up_measured_transfer_length_reg[7]_i_1_n_6 ;
  wire \up_measured_transfer_length_reg[7]_i_1_n_7 ;
  wire up_partial_length_valid;
  wire up_response_valid;
  wire up_rreq;
  wire up_tlf_s_valid_reg_0;
  wire up_tlf_s_valid_reg_n_0;
  wire up_tlf_valid;
  wire \up_transfer_done_bitmap[0]_i_1_n_0 ;
  wire \up_transfer_done_bitmap[0]_i_2_n_0 ;
  wire \up_transfer_done_bitmap[1]_i_1_n_0 ;
  wire \up_transfer_done_bitmap[1]_i_2_n_0 ;
  wire \up_transfer_done_bitmap[2]_i_1_n_0 ;
  wire \up_transfer_done_bitmap[2]_i_2_n_0 ;
  wire \up_transfer_done_bitmap[3]_i_1_n_0 ;
  wire \up_transfer_done_bitmap[3]_i_2_n_0 ;
  wire \up_transfer_done_bitmap_reg[0]_0 ;
  wire \up_transfer_done_bitmap_reg[0]_1 ;
  wire \up_transfer_done_bitmap_reg[1]_0 ;
  wire \up_transfer_done_bitmap_reg[2]_0 ;
  wire \up_transfer_done_bitmap_reg[3]_0 ;
  wire [1:0]up_transfer_id;
  wire \up_transfer_id[0]_i_1_n_0 ;
  wire \up_transfer_id[1]_i_1_n_0 ;
  wire [1:0]up_transfer_id_eot;
  wire \up_transfer_id_eot[0]_i_1_n_0 ;
  wire \up_transfer_id_eot[1]_i_1_n_0 ;
  wire [1:0]up_transfer_id_eot_d;
  wire \up_transfer_id_eot_d[0]_i_1_n_0 ;
  wire \up_transfer_id_eot_d[1]_i_1_n_0 ;
  wire \up_transfer_id_reg[0]_0 ;
  wire \up_transfer_id_reg[0]_1 ;
  wire [0:0]\up_transfer_id_reg[1]_0 ;
  wire [3:3]\NLW_up_measured_transfer_length_reg[23]_i_3_CO_UNCONNECTED ;

  icyradio_axi_dmac_rf_rx1_0_util_axis_fifo i_transfer_lenghts_fifo
       (.Q(Q),
        .ctrl_enable_reg(i_transfer_lenghts_fifo_n_1),
        .\fifo._m_axis_valid (\fifo._m_axis_valid ),
        .\fifo.sync_clocks.data_reg[0]_0 (\fifo.sync_clocks.data_reg[0] ),
        .\fifo.sync_clocks.data_reg[25]_0 (\fifo.sync_clocks.data_reg[25] ),
        .\fifo.valid_reg_0 (i_transfer_lenghts_fifo_n_5),
        .\fifo.valid_reg_1 (\fifo.valid_reg ),
        .\m_axis_raddr_reg_reg[0] (\m_axis_raddr_reg_reg[0] ),
        .\m_axis_raddr_reg_reg[1] (i_transfer_lenghts_fifo_n_2),
        .response_ready_reg(response_ready_reg_0),
        .response_valid_reg(i_transfer_lenghts_fifo_n_4),
        .s_axi_aclk(s_axi_aclk),
        .\s_axis_waddr_reg_reg[2] (up_tlf_s_valid_reg_n_0),
        .up_bl_partial(up_bl_partial),
        .up_partial_length_valid(up_partial_length_valid),
        .up_response_valid(up_response_valid),
        .up_rreq(up_rreq),
        .up_tlf_s_valid_reg(up_tlf_s_valid_reg_0),
        .up_tlf_valid(up_tlf_valid),
        .up_transfer_id_eot_d(up_transfer_id_eot_d));
  FDSE #(
    .INIT(1'b1)) 
    response_ready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_transfer_lenghts_fifo_n_4),
        .Q(response_ready_reg_0),
        .S(i_transfer_lenghts_fifo_n_1));
  LUT1 #(
    .INIT(2'h1)) 
    up_axi_awready_int_i_1
       (.I0(s_axi_aresetn),
        .O(SR));
  FDRE #(
    .INIT(1'b0)) 
    up_clear_tl_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_clear_tl_reg_0),
        .Q(up_clear_tl),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[10] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_address_reg[31]_0 ),
        .D(\up_dma_src_address_reg[31]_0 [8]),
        .Q(D[43]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[11] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_address_reg[31]_0 ),
        .D(\up_dma_src_address_reg[31]_0 [9]),
        .Q(D[44]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[12] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_address_reg[31]_0 ),
        .D(\up_dma_src_address_reg[31]_0 [10]),
        .Q(D[45]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[13] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_address_reg[31]_0 ),
        .D(\up_dma_src_address_reg[31]_0 [11]),
        .Q(D[46]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[14] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_address_reg[31]_0 ),
        .D(\up_dma_src_address_reg[31]_0 [12]),
        .Q(D[47]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[15] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_address_reg[31]_0 ),
        .D(\up_dma_src_address_reg[31]_0 [13]),
        .Q(D[48]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[16] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_address_reg[31]_0 ),
        .D(\up_dma_src_address_reg[31]_0 [14]),
        .Q(D[49]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[17] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_address_reg[31]_0 ),
        .D(\up_dma_src_address_reg[31]_0 [15]),
        .Q(D[50]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[18] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_address_reg[31]_0 ),
        .D(\up_dma_src_address_reg[31]_0 [16]),
        .Q(D[51]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[19] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_address_reg[31]_0 ),
        .D(\up_dma_src_address_reg[31]_0 [17]),
        .Q(D[52]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[20] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_address_reg[31]_0 ),
        .D(\up_dma_src_address_reg[31]_0 [18]),
        .Q(D[53]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[21] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_address_reg[31]_0 ),
        .D(\up_dma_src_address_reg[31]_0 [19]),
        .Q(D[54]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[22] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_address_reg[31]_0 ),
        .D(\up_dma_src_address_reg[31]_0 [20]),
        .Q(D[55]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[23] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_address_reg[31]_0 ),
        .D(\up_dma_src_address_reg[31]_0 [21]),
        .Q(D[56]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[24] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_address_reg[31]_0 ),
        .D(\up_dma_src_address_reg[31]_0 [22]),
        .Q(D[57]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[25] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_address_reg[31]_0 ),
        .D(\up_dma_src_address_reg[31]_0 [23]),
        .Q(D[58]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[26] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_address_reg[31]_0 ),
        .D(\up_dma_src_address_reg[31]_0 [24]),
        .Q(D[59]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[27] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_address_reg[31]_0 ),
        .D(\up_dma_src_address_reg[31]_0 [25]),
        .Q(D[60]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[28] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_address_reg[31]_0 ),
        .D(\up_dma_src_address_reg[31]_0 [26]),
        .Q(D[61]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[29] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_address_reg[31]_0 ),
        .D(\up_dma_src_address_reg[31]_0 [27]),
        .Q(D[62]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[30] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_address_reg[31]_0 ),
        .D(\up_dma_src_address_reg[31]_0 [28]),
        .Q(D[63]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[31] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_address_reg[31]_0 ),
        .D(\up_dma_src_address_reg[31]_0 [29]),
        .Q(D[64]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[3] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_address_reg[31]_0 ),
        .D(\up_dma_src_address_reg[31]_0 [1]),
        .Q(D[36]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[4] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_address_reg[31]_0 ),
        .D(\up_dma_src_address_reg[31]_0 [2]),
        .Q(D[37]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[5] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_address_reg[31]_0 ),
        .D(\up_dma_src_address_reg[31]_0 [3]),
        .Q(D[38]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[6] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_address_reg[31]_0 ),
        .D(\up_dma_src_address_reg[31]_0 [4]),
        .Q(D[39]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[7] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_address_reg[31]_0 ),
        .D(\up_dma_src_address_reg[31]_0 [5]),
        .Q(D[40]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[8] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_address_reg[31]_0 ),
        .D(\up_dma_src_address_reg[31]_0 [6]),
        .Q(D[41]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_dest_address_reg[9] 
       (.C(s_axi_aclk),
        .CE(\up_dma_dest_address_reg[31]_0 ),
        .D(\up_dma_src_address_reg[31]_0 [7]),
        .Q(D[42]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    up_dma_enable_tlen_reporting_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_dma_enable_tlen_reporting_reg_0),
        .Q(p_3_in),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    up_dma_last_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_dma_last_reg_0),
        .Q(D[0]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    up_dma_req_valid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_dma_req_valid_reg_1),
        .Q(up_dma_req_valid_reg_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[10] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[31]_1 ),
        .D(\up_dma_src_address_reg[31]_0 [8]),
        .Q(D[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[11] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[31]_1 ),
        .D(\up_dma_src_address_reg[31]_0 [9]),
        .Q(D[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[12] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[31]_1 ),
        .D(\up_dma_src_address_reg[31]_0 [10]),
        .Q(D[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[13] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[31]_1 ),
        .D(\up_dma_src_address_reg[31]_0 [11]),
        .Q(D[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[14] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[31]_1 ),
        .D(\up_dma_src_address_reg[31]_0 [12]),
        .Q(D[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[15] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[31]_1 ),
        .D(\up_dma_src_address_reg[31]_0 [13]),
        .Q(D[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[16] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[31]_1 ),
        .D(\up_dma_src_address_reg[31]_0 [14]),
        .Q(D[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[17] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[31]_1 ),
        .D(\up_dma_src_address_reg[31]_0 [15]),
        .Q(D[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[18] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[31]_1 ),
        .D(\up_dma_src_address_reg[31]_0 [16]),
        .Q(D[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[19] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[31]_1 ),
        .D(\up_dma_src_address_reg[31]_0 [17]),
        .Q(D[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[20] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[31]_1 ),
        .D(\up_dma_src_address_reg[31]_0 [18]),
        .Q(D[24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[21] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[31]_1 ),
        .D(\up_dma_src_address_reg[31]_0 [19]),
        .Q(D[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[22] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[31]_1 ),
        .D(\up_dma_src_address_reg[31]_0 [20]),
        .Q(D[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[23] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[31]_1 ),
        .D(\up_dma_src_address_reg[31]_0 [21]),
        .Q(D[27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[24] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[31]_1 ),
        .D(\up_dma_src_address_reg[31]_0 [22]),
        .Q(D[28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[25] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[31]_1 ),
        .D(\up_dma_src_address_reg[31]_0 [23]),
        .Q(D[29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[26] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[31]_1 ),
        .D(\up_dma_src_address_reg[31]_0 [24]),
        .Q(D[30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[27] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[31]_1 ),
        .D(\up_dma_src_address_reg[31]_0 [25]),
        .Q(D[31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[28] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[31]_1 ),
        .D(\up_dma_src_address_reg[31]_0 [26]),
        .Q(D[32]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[29] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[31]_1 ),
        .D(\up_dma_src_address_reg[31]_0 [27]),
        .Q(D[33]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[2] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[31]_1 ),
        .D(\up_dma_src_address_reg[31]_0 [0]),
        .Q(D[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[30] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[31]_1 ),
        .D(\up_dma_src_address_reg[31]_0 [28]),
        .Q(D[34]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[31] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[31]_1 ),
        .D(\up_dma_src_address_reg[31]_0 [29]),
        .Q(D[35]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[3] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[31]_1 ),
        .D(\up_dma_src_address_reg[31]_0 [1]),
        .Q(D[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[4] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[31]_1 ),
        .D(\up_dma_src_address_reg[31]_0 [2]),
        .Q(D[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[5] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[31]_1 ),
        .D(\up_dma_src_address_reg[31]_0 [3]),
        .Q(D[9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[6] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[31]_1 ),
        .D(\up_dma_src_address_reg[31]_0 [4]),
        .Q(D[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[7] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[31]_1 ),
        .D(\up_dma_src_address_reg[31]_0 [5]),
        .Q(D[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[8] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[31]_1 ),
        .D(\up_dma_src_address_reg[31]_0 [6]),
        .Q(D[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[9] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[31]_1 ),
        .D(\up_dma_src_address_reg[31]_0 [7]),
        .Q(D[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[10] 
       (.C(s_axi_aclk),
        .CE(\up_dma_x_length_reg[2]_0 ),
        .D(\up_dma_src_address_reg[31]_0 [8]),
        .Q(\up_dma_x_length_reg[23]_0 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[11] 
       (.C(s_axi_aclk),
        .CE(\up_dma_x_length_reg[2]_0 ),
        .D(\up_dma_src_address_reg[31]_0 [9]),
        .Q(\up_dma_x_length_reg[23]_0 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[12] 
       (.C(s_axi_aclk),
        .CE(\up_dma_x_length_reg[2]_0 ),
        .D(\up_dma_src_address_reg[31]_0 [10]),
        .Q(\up_dma_x_length_reg[23]_0 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[13] 
       (.C(s_axi_aclk),
        .CE(\up_dma_x_length_reg[2]_0 ),
        .D(\up_dma_src_address_reg[31]_0 [11]),
        .Q(\up_dma_x_length_reg[23]_0 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[14] 
       (.C(s_axi_aclk),
        .CE(\up_dma_x_length_reg[2]_0 ),
        .D(\up_dma_src_address_reg[31]_0 [12]),
        .Q(\up_dma_x_length_reg[23]_0 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[15] 
       (.C(s_axi_aclk),
        .CE(\up_dma_x_length_reg[2]_0 ),
        .D(\up_dma_src_address_reg[31]_0 [13]),
        .Q(\up_dma_x_length_reg[23]_0 [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[16] 
       (.C(s_axi_aclk),
        .CE(\up_dma_x_length_reg[2]_0 ),
        .D(\up_dma_src_address_reg[31]_0 [14]),
        .Q(\up_dma_x_length_reg[23]_0 [9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[17] 
       (.C(s_axi_aclk),
        .CE(\up_dma_x_length_reg[2]_0 ),
        .D(\up_dma_src_address_reg[31]_0 [15]),
        .Q(\up_dma_x_length_reg[23]_0 [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[18] 
       (.C(s_axi_aclk),
        .CE(\up_dma_x_length_reg[2]_0 ),
        .D(\up_dma_src_address_reg[31]_0 [16]),
        .Q(\up_dma_x_length_reg[23]_0 [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[19] 
       (.C(s_axi_aclk),
        .CE(\up_dma_x_length_reg[2]_0 ),
        .D(\up_dma_src_address_reg[31]_0 [17]),
        .Q(\up_dma_x_length_reg[23]_0 [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[20] 
       (.C(s_axi_aclk),
        .CE(\up_dma_x_length_reg[2]_0 ),
        .D(\up_dma_src_address_reg[31]_0 [18]),
        .Q(\up_dma_x_length_reg[23]_0 [13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[21] 
       (.C(s_axi_aclk),
        .CE(\up_dma_x_length_reg[2]_0 ),
        .D(\up_dma_src_address_reg[31]_0 [19]),
        .Q(\up_dma_x_length_reg[23]_0 [14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[22] 
       (.C(s_axi_aclk),
        .CE(\up_dma_x_length_reg[2]_0 ),
        .D(\up_dma_src_address_reg[31]_0 [20]),
        .Q(\up_dma_x_length_reg[23]_0 [15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[23] 
       (.C(s_axi_aclk),
        .CE(\up_dma_x_length_reg[2]_0 ),
        .D(\up_dma_src_address_reg[31]_0 [21]),
        .Q(\up_dma_x_length_reg[23]_0 [16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[2] 
       (.C(s_axi_aclk),
        .CE(\up_dma_x_length_reg[2]_0 ),
        .D(\up_dma_src_address_reg[31]_0 [0]),
        .Q(D[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[3] 
       (.C(s_axi_aclk),
        .CE(\up_dma_x_length_reg[2]_0 ),
        .D(\up_dma_src_address_reg[31]_0 [1]),
        .Q(D[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[4] 
       (.C(s_axi_aclk),
        .CE(\up_dma_x_length_reg[2]_0 ),
        .D(\up_dma_src_address_reg[31]_0 [2]),
        .Q(D[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[5] 
       (.C(s_axi_aclk),
        .CE(\up_dma_x_length_reg[2]_0 ),
        .D(\up_dma_src_address_reg[31]_0 [3]),
        .Q(D[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[6] 
       (.C(s_axi_aclk),
        .CE(\up_dma_x_length_reg[2]_0 ),
        .D(\up_dma_src_address_reg[31]_0 [4]),
        .Q(D[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[7] 
       (.C(s_axi_aclk),
        .CE(\up_dma_x_length_reg[2]_0 ),
        .D(\up_dma_src_address_reg[31]_0 [5]),
        .Q(\up_dma_x_length_reg[23]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[8] 
       (.C(s_axi_aclk),
        .CE(\up_dma_x_length_reg[2]_0 ),
        .D(\up_dma_src_address_reg[31]_0 [6]),
        .Q(\up_dma_x_length_reg[23]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[9] 
       (.C(s_axi_aclk),
        .CE(\up_dma_x_length_reg[2]_0 ),
        .D(\up_dma_src_address_reg[31]_0 [7]),
        .Q(\up_dma_x_length_reg[23]_0 [2]),
        .R(SR));
  LUT4 #(
    .INIT(16'h2AFF)) 
    \up_measured_transfer_length[23]_i_1 
       (.I0(up_clear_tl),
        .I1(up_response_valid),
        .I2(response_ready_reg_0),
        .I3(\m_axis_raddr_reg_reg[0] ),
        .O(\up_measured_transfer_length[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \up_measured_transfer_length[23]_i_2 
       (.I0(response_ready_reg_0),
        .I1(up_response_valid),
        .O(E));
  LUT2 #(
    .INIT(4'h6)) 
    \up_measured_transfer_length[3]_i_2 
       (.I0(Q[3]),
        .I1(\up_measured_transfer_length_reg[7]_0 [2]),
        .O(\up_measured_transfer_length[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \up_measured_transfer_length[3]_i_3 
       (.I0(Q[2]),
        .I1(\up_measured_transfer_length_reg[7]_0 [1]),
        .O(\up_measured_transfer_length[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \up_measured_transfer_length[3]_i_4 
       (.I0(Q[1]),
        .I1(\up_measured_transfer_length_reg[7]_0 [0]),
        .O(\up_measured_transfer_length[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \up_measured_transfer_length[3]_i_5 
       (.I0(Q[0]),
        .I1(\up_measured_transfer_length_reg[7]_0 [0]),
        .O(\up_measured_transfer_length[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \up_measured_transfer_length[7]_i_2 
       (.I0(Q[6]),
        .I1(\up_measured_transfer_length_reg[7]_0 [5]),
        .O(\up_measured_transfer_length[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \up_measured_transfer_length[7]_i_3 
       (.I0(Q[5]),
        .I1(\up_measured_transfer_length_reg[7]_0 [4]),
        .O(\up_measured_transfer_length[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \up_measured_transfer_length[7]_i_4 
       (.I0(Q[4]),
        .I1(\up_measured_transfer_length_reg[7]_0 [3]),
        .O(\up_measured_transfer_length[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_measured_transfer_length_reg[3]_i_1_n_7 ),
        .Q(Q[0]),
        .R(\up_measured_transfer_length[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[10] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_measured_transfer_length_reg[11]_i_1_n_5 ),
        .Q(Q[10]),
        .R(\up_measured_transfer_length[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[11] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_measured_transfer_length_reg[11]_i_1_n_4 ),
        .Q(Q[11]),
        .R(\up_measured_transfer_length[23]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \up_measured_transfer_length_reg[11]_i_1 
       (.CI(\up_measured_transfer_length_reg[7]_i_1_n_0 ),
        .CO({\up_measured_transfer_length_reg[11]_i_1_n_0 ,\up_measured_transfer_length_reg[11]_i_1_n_1 ,\up_measured_transfer_length_reg[11]_i_1_n_2 ,\up_measured_transfer_length_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\up_measured_transfer_length_reg[11]_i_1_n_4 ,\up_measured_transfer_length_reg[11]_i_1_n_5 ,\up_measured_transfer_length_reg[11]_i_1_n_6 ,\up_measured_transfer_length_reg[11]_i_1_n_7 }),
        .S(Q[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[12] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_measured_transfer_length_reg[15]_i_1_n_7 ),
        .Q(Q[12]),
        .R(\up_measured_transfer_length[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[13] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_measured_transfer_length_reg[15]_i_1_n_6 ),
        .Q(Q[13]),
        .R(\up_measured_transfer_length[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[14] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_measured_transfer_length_reg[15]_i_1_n_5 ),
        .Q(Q[14]),
        .R(\up_measured_transfer_length[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[15] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_measured_transfer_length_reg[15]_i_1_n_4 ),
        .Q(Q[15]),
        .R(\up_measured_transfer_length[23]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \up_measured_transfer_length_reg[15]_i_1 
       (.CI(\up_measured_transfer_length_reg[11]_i_1_n_0 ),
        .CO({\up_measured_transfer_length_reg[15]_i_1_n_0 ,\up_measured_transfer_length_reg[15]_i_1_n_1 ,\up_measured_transfer_length_reg[15]_i_1_n_2 ,\up_measured_transfer_length_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\up_measured_transfer_length_reg[15]_i_1_n_4 ,\up_measured_transfer_length_reg[15]_i_1_n_5 ,\up_measured_transfer_length_reg[15]_i_1_n_6 ,\up_measured_transfer_length_reg[15]_i_1_n_7 }),
        .S(Q[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[16] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_measured_transfer_length_reg[19]_i_1_n_7 ),
        .Q(Q[16]),
        .R(\up_measured_transfer_length[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[17] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_measured_transfer_length_reg[19]_i_1_n_6 ),
        .Q(Q[17]),
        .R(\up_measured_transfer_length[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[18] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_measured_transfer_length_reg[19]_i_1_n_5 ),
        .Q(Q[18]),
        .R(\up_measured_transfer_length[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[19] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_measured_transfer_length_reg[19]_i_1_n_4 ),
        .Q(Q[19]),
        .R(\up_measured_transfer_length[23]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \up_measured_transfer_length_reg[19]_i_1 
       (.CI(\up_measured_transfer_length_reg[15]_i_1_n_0 ),
        .CO({\up_measured_transfer_length_reg[19]_i_1_n_0 ,\up_measured_transfer_length_reg[19]_i_1_n_1 ,\up_measured_transfer_length_reg[19]_i_1_n_2 ,\up_measured_transfer_length_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\up_measured_transfer_length_reg[19]_i_1_n_4 ,\up_measured_transfer_length_reg[19]_i_1_n_5 ,\up_measured_transfer_length_reg[19]_i_1_n_6 ,\up_measured_transfer_length_reg[19]_i_1_n_7 }),
        .S(Q[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_measured_transfer_length_reg[3]_i_1_n_6 ),
        .Q(Q[1]),
        .R(\up_measured_transfer_length[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[20] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_measured_transfer_length_reg[23]_i_3_n_7 ),
        .Q(Q[20]),
        .R(\up_measured_transfer_length[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[21] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_measured_transfer_length_reg[23]_i_3_n_6 ),
        .Q(Q[21]),
        .R(\up_measured_transfer_length[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[22] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_measured_transfer_length_reg[23]_i_3_n_5 ),
        .Q(Q[22]),
        .R(\up_measured_transfer_length[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[23] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_measured_transfer_length_reg[23]_i_3_n_4 ),
        .Q(Q[23]),
        .R(\up_measured_transfer_length[23]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \up_measured_transfer_length_reg[23]_i_3 
       (.CI(\up_measured_transfer_length_reg[19]_i_1_n_0 ),
        .CO({\NLW_up_measured_transfer_length_reg[23]_i_3_CO_UNCONNECTED [3],\up_measured_transfer_length_reg[23]_i_3_n_1 ,\up_measured_transfer_length_reg[23]_i_3_n_2 ,\up_measured_transfer_length_reg[23]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\up_measured_transfer_length_reg[23]_i_3_n_4 ,\up_measured_transfer_length_reg[23]_i_3_n_5 ,\up_measured_transfer_length_reg[23]_i_3_n_6 ,\up_measured_transfer_length_reg[23]_i_3_n_7 }),
        .S(Q[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_measured_transfer_length_reg[3]_i_1_n_5 ),
        .Q(Q[2]),
        .R(\up_measured_transfer_length[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_measured_transfer_length_reg[3]_i_1_n_4 ),
        .Q(Q[3]),
        .R(\up_measured_transfer_length[23]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \up_measured_transfer_length_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\up_measured_transfer_length_reg[3]_i_1_n_0 ,\up_measured_transfer_length_reg[3]_i_1_n_1 ,\up_measured_transfer_length_reg[3]_i_1_n_2 ,\up_measured_transfer_length_reg[3]_i_1_n_3 }),
        .CYINIT(1'b1),
        .DI(Q[3:0]),
        .O({\up_measured_transfer_length_reg[3]_i_1_n_4 ,\up_measured_transfer_length_reg[3]_i_1_n_5 ,\up_measured_transfer_length_reg[3]_i_1_n_6 ,\up_measured_transfer_length_reg[3]_i_1_n_7 }),
        .S({\up_measured_transfer_length[3]_i_2_n_0 ,\up_measured_transfer_length[3]_i_3_n_0 ,\up_measured_transfer_length[3]_i_4_n_0 ,\up_measured_transfer_length[3]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_measured_transfer_length_reg[7]_i_1_n_7 ),
        .Q(Q[4]),
        .R(\up_measured_transfer_length[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_measured_transfer_length_reg[7]_i_1_n_6 ),
        .Q(Q[5]),
        .R(\up_measured_transfer_length[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[6] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_measured_transfer_length_reg[7]_i_1_n_5 ),
        .Q(Q[6]),
        .R(\up_measured_transfer_length[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[7] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_measured_transfer_length_reg[7]_i_1_n_4 ),
        .Q(Q[7]),
        .R(\up_measured_transfer_length[23]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \up_measured_transfer_length_reg[7]_i_1 
       (.CI(\up_measured_transfer_length_reg[3]_i_1_n_0 ),
        .CO({\up_measured_transfer_length_reg[7]_i_1_n_0 ,\up_measured_transfer_length_reg[7]_i_1_n_1 ,\up_measured_transfer_length_reg[7]_i_1_n_2 ,\up_measured_transfer_length_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,Q[6:4]}),
        .O({\up_measured_transfer_length_reg[7]_i_1_n_4 ,\up_measured_transfer_length_reg[7]_i_1_n_5 ,\up_measured_transfer_length_reg[7]_i_1_n_6 ,\up_measured_transfer_length_reg[7]_i_1_n_7 }),
        .S({Q[7],\up_measured_transfer_length[7]_i_2_n_0 ,\up_measured_transfer_length[7]_i_3_n_0 ,\up_measured_transfer_length[7]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[8] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_measured_transfer_length_reg[11]_i_1_n_7 ),
        .Q(Q[8]),
        .R(\up_measured_transfer_length[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[9] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_measured_transfer_length_reg[11]_i_1_n_6 ),
        .Q(Q[9]),
        .R(\up_measured_transfer_length[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    up_partial_length_valid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_transfer_lenghts_fifo_n_5),
        .Q(up_partial_length_valid),
        .R(i_transfer_lenghts_fifo_n_1));
  FDRE #(
    .INIT(1'b0)) 
    up_tlf_s_valid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_transfer_lenghts_fifo_n_2),
        .Q(up_tlf_s_valid_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFEAAAA)) 
    \up_transfer_done_bitmap[0]_i_1 
       (.I0(\up_transfer_done_bitmap[0]_i_2_n_0 ),
        .I1(\up_transfer_done_bitmap_reg[0]_1 ),
        .I2(up_transfer_id[0]),
        .I3(up_transfer_id[1]),
        .I4(\up_transfer_done_bitmap_reg[0]_0 ),
        .O(\up_transfer_done_bitmap[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \up_transfer_done_bitmap[0]_i_2 
       (.I0(up_transfer_id_eot[0]),
        .I1(up_eot),
        .I2(up_transfer_id_eot[1]),
        .O(\up_transfer_done_bitmap[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEFAAAA)) 
    \up_transfer_done_bitmap[1]_i_1 
       (.I0(\up_transfer_done_bitmap[1]_i_2_n_0 ),
        .I1(\up_transfer_done_bitmap_reg[0]_1 ),
        .I2(up_transfer_id[0]),
        .I3(up_transfer_id[1]),
        .I4(\up_transfer_done_bitmap_reg[1]_0 ),
        .O(\up_transfer_done_bitmap[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \up_transfer_done_bitmap[1]_i_2 
       (.I0(up_transfer_id_eot[0]),
        .I1(up_eot),
        .I2(up_transfer_id_eot[1]),
        .O(\up_transfer_done_bitmap[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEFAAAA)) 
    \up_transfer_done_bitmap[2]_i_1 
       (.I0(\up_transfer_done_bitmap[2]_i_2_n_0 ),
        .I1(\up_transfer_done_bitmap_reg[0]_1 ),
        .I2(up_transfer_id[1]),
        .I3(up_transfer_id[0]),
        .I4(\up_transfer_done_bitmap_reg[2]_0 ),
        .O(\up_transfer_done_bitmap[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \up_transfer_done_bitmap[2]_i_2 
       (.I0(up_transfer_id_eot[0]),
        .I1(up_eot),
        .I2(up_transfer_id_eot[1]),
        .O(\up_transfer_done_bitmap[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEFFFAAAA)) 
    \up_transfer_done_bitmap[3]_i_1 
       (.I0(\up_transfer_done_bitmap[3]_i_2_n_0 ),
        .I1(\up_transfer_done_bitmap_reg[0]_1 ),
        .I2(up_transfer_id[0]),
        .I3(up_transfer_id[1]),
        .I4(\up_transfer_done_bitmap_reg[3]_0 ),
        .O(\up_transfer_done_bitmap[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \up_transfer_done_bitmap[3]_i_2 
       (.I0(up_transfer_id_eot[0]),
        .I1(up_eot),
        .I2(up_transfer_id_eot[1]),
        .O(\up_transfer_done_bitmap[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_transfer_done_bitmap_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_transfer_done_bitmap[0]_i_1_n_0 ),
        .Q(\up_transfer_done_bitmap_reg[0]_0 ),
        .R(i_transfer_lenghts_fifo_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \up_transfer_done_bitmap_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_transfer_done_bitmap[1]_i_1_n_0 ),
        .Q(\up_transfer_done_bitmap_reg[1]_0 ),
        .R(i_transfer_lenghts_fifo_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \up_transfer_done_bitmap_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_transfer_done_bitmap[2]_i_1_n_0 ),
        .Q(\up_transfer_done_bitmap_reg[2]_0 ),
        .R(i_transfer_lenghts_fifo_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \up_transfer_done_bitmap_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_transfer_done_bitmap[3]_i_1_n_0 ),
        .Q(\up_transfer_done_bitmap_reg[3]_0 ),
        .R(i_transfer_lenghts_fifo_n_1));
  LUT6 #(
    .INIT(64'h6FFFFFFF90000000)) 
    \up_transfer_id[0]_i_1 
       (.I0(\up_transfer_id_reg[0]_0 ),
        .I1(\up_transfer_id_reg[0]_1 ),
        .I2(req_gen_ready),
        .I3(up_dma_req_valid_reg_0),
        .I4(dbg_status),
        .I5(up_transfer_id[0]),
        .O(\up_transfer_id[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \up_transfer_id[1]_i_1 
       (.I0(up_transfer_id[0]),
        .I1(\up_transfer_id_reg[1]_0 ),
        .I2(up_transfer_id[1]),
        .O(\up_transfer_id[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \up_transfer_id_eot[0]_i_1 
       (.I0(up_eot),
        .I1(up_transfer_id_eot[0]),
        .O(\up_transfer_id_eot[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \up_transfer_id_eot[1]_i_1 
       (.I0(up_transfer_id_eot[0]),
        .I1(up_eot),
        .I2(up_transfer_id_eot[1]),
        .O(\up_transfer_id_eot[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \up_transfer_id_eot_d[0]_i_1 
       (.I0(up_transfer_id_eot[0]),
        .I1(response_ready_reg_0),
        .I2(up_response_valid),
        .I3(up_transfer_id_eot_d[0]),
        .O(\up_transfer_id_eot_d[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \up_transfer_id_eot_d[1]_i_1 
       (.I0(up_transfer_id_eot[1]),
        .I1(response_ready_reg_0),
        .I2(up_response_valid),
        .I3(up_transfer_id_eot_d[1]),
        .O(\up_transfer_id_eot_d[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_transfer_id_eot_d_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_transfer_id_eot_d[0]_i_1_n_0 ),
        .Q(up_transfer_id_eot_d[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_transfer_id_eot_d_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_transfer_id_eot_d[1]_i_1_n_0 ),
        .Q(up_transfer_id_eot_d[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \up_transfer_id_eot_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_transfer_id_eot[0]_i_1_n_0 ),
        .Q(up_transfer_id_eot[0]),
        .R(i_transfer_lenghts_fifo_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \up_transfer_id_eot_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_transfer_id_eot[1]_i_1_n_0 ),
        .Q(up_transfer_id_eot[1]),
        .R(i_transfer_lenghts_fifo_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \up_transfer_id_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_transfer_id[0]_i_1_n_0 ),
        .Q(up_transfer_id[0]),
        .R(i_transfer_lenghts_fifo_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \up_transfer_id_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_transfer_id[1]_i_1_n_0 ),
        .Q(up_transfer_id[1]),
        .R(i_transfer_lenghts_fifo_n_1));
endmodule

(* ORIG_REF_NAME = "axi_dmac_reset_manager" *) 
module icyradio_axi_dmac_rf_rx1_0_axi_dmac_reset_manager
   (Q,
    \reset_gen[1].reset_sync_reg[0]_0 ,
    do_enable_reg_0,
    src_enable,
    \reset_gen[2].reset_sync_reg[0]_0 ,
    m_dest_axi_aclk,
    fifo_wr_clk,
    s_axi_aclk,
    \FSM_onehot_state_reg[0]_0 ,
    ctrl_enable,
    ctrl_pause,
    SS);
  output [0:0]Q;
  output [0:0]\reset_gen[1].reset_sync_reg[0]_0 ;
  output do_enable_reg_0;
  output src_enable;
  output [0:0]\reset_gen[2].reset_sync_reg[0]_0 ;
  input m_dest_axi_aclk;
  input fifo_wr_clk;
  input s_axi_aclk;
  input [0:0]\FSM_onehot_state_reg[0]_0 ;
  input ctrl_enable;
  input ctrl_pause;
  input [0:0]SS;

  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state[5]_i_3_n_0 ;
  wire [0:0]\FSM_onehot_state_reg[0]_0 ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \FSM_onehot_state_reg_n_0_[4] ;
  wire \FSM_onehot_state_reg_n_0_[5] ;
  wire [0:0]Q;
  wire [0:0]SS;
  wire ctrl_enable;
  wire ctrl_pause;
  wire [11:11]dbg_status;
  wire do_enable0;
  wire do_enable_reg_0;
  wire do_reset;
  wire do_reset_0;
  wire fifo_wr_clk;
  wire m_dest_axi_aclk;
  wire needs_reset;
  wire needs_reset_i_1_n_0;
  wire \reset_gen[0].reset_async_reg_n_0_[0] ;
  wire \reset_gen[0].reset_async_reg_n_0_[1] ;
  wire \reset_gen[0].reset_async_reg_n_0_[2] ;
  wire \reset_gen[0].reset_async_reg_n_0_[3] ;
  wire \reset_gen[0].reset_sync_in ;
  wire \reset_gen[0].reset_sync_reg_n_0_[1] ;
  wire \reset_gen[1].reset_async_reg_n_0_[0] ;
  wire \reset_gen[1].reset_async_reg_n_0_[1] ;
  wire \reset_gen[1].reset_async_reg_n_0_[2] ;
  wire \reset_gen[1].reset_async_reg_n_0_[3] ;
  wire \reset_gen[1].reset_sync_in ;
  wire [0:0]\reset_gen[1].reset_sync_reg[0]_0 ;
  wire \reset_gen[1].reset_sync_reg_n_0_[1] ;
  wire \reset_gen[2].reset_async_reg_n_0_[0] ;
  wire \reset_gen[2].reset_async_reg_n_0_[1] ;
  wire \reset_gen[2].reset_async_reg_n_0_[2] ;
  wire \reset_gen[2].reset_async_reg_n_0_[3] ;
  wire \reset_gen[2].reset_sync_in ;
  wire [0:0]\reset_gen[2].reset_sync_reg[0]_0 ;
  wire \reset_gen[2].reset_sync_reg_n_0_[1] ;
  wire s_axi_aclk;
  wire src_enable;
  wire state;

  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(dbg_status),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(needs_reset),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(dbg_status),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF080808FF08)) 
    \FSM_onehot_state[5]_i_3 
       (.I0(ctrl_enable),
        .I1(needs_reset),
        .I2(\reset_gen[2].reset_sync_reg[0]_0 ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(ctrl_pause),
        .I5(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\FSM_onehot_state[5]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "STATE_RESET:000010,STATE_DISABLED:000100,STATE_ENABLED:010000,STATE_SHUTDOWN:100000,STATE_STARTUP:001000,STATE_DO_RESET:000001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(state),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(do_reset_0),
        .S(SS));
  (* FSM_ENCODED_STATES = "STATE_RESET:000010,STATE_DISABLED:000100,STATE_ENABLED:010000,STATE_SHUTDOWN:100000,STATE_STARTUP:001000,STATE_DO_RESET:000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(state),
        .D(do_reset_0),
        .Q(needs_reset),
        .R(SS));
  (* FSM_ENCODED_STATES = "STATE_RESET:000010,STATE_DISABLED:000100,STATE_ENABLED:010000,STATE_SHUTDOWN:100000,STATE_STARTUP:001000,STATE_DO_RESET:000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(s_axi_aclk),
        .CE(state),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(SS));
  (* FSM_ENCODED_STATES = "STATE_RESET:000010,STATE_DISABLED:000100,STATE_ENABLED:010000,STATE_SHUTDOWN:100000,STATE_STARTUP:001000,STATE_DO_RESET:000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(s_axi_aclk),
        .CE(state),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(SS));
  (* FSM_ENCODED_STATES = "STATE_RESET:000010,STATE_DISABLED:000100,STATE_ENABLED:010000,STATE_SHUTDOWN:100000,STATE_STARTUP:001000,STATE_DO_RESET:000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(s_axi_aclk),
        .CE(state),
        .D(\FSM_onehot_state_reg_n_0_[3] ),
        .Q(\FSM_onehot_state_reg_n_0_[4] ),
        .R(SS));
  (* FSM_ENCODED_STATES = "STATE_RESET:000010,STATE_DISABLED:000100,STATE_ENABLED:010000,STATE_SHUTDOWN:100000,STATE_STARTUP:001000,STATE_DO_RESET:000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(s_axi_aclk),
        .CE(state),
        .D(\FSM_onehot_state_reg_n_0_[4] ),
        .Q(\FSM_onehot_state_reg_n_0_[5] ),
        .R(SS));
  LUT2 #(
    .INIT(4'hE)) 
    do_enable_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .O(do_enable0));
  FDRE #(
    .INIT(1'b0)) 
    do_enable_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(do_enable0),
        .Q(do_enable_reg_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    do_reset_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(do_reset_0),
        .Q(do_reset),
        .R(1'b0));
  icyradio_axi_dmac_rf_rx1_0_sync_bits__parameterized0__xdcDup__7 i_sync_control_src
       (.\cdc_sync_stage1_reg[0]_0 (do_enable_reg_0),
        .fifo_wr_clk(fifo_wr_clk),
        .src_enable(src_enable));
  icyradio_axi_dmac_rf_rx1_0_sync_bits__parameterized0 i_sync_status_src
       (.E(state),
        .\FSM_onehot_state_reg[0] (dbg_status),
        .\FSM_onehot_state_reg[0]_0 (\FSM_onehot_state[5]_i_3_n_0 ),
        .\FSM_onehot_state_reg[0]_1 (do_enable_reg_0),
        .\FSM_onehot_state_reg[0]_2 (\FSM_onehot_state_reg[0]_0 ),
        .Q({\FSM_onehot_state_reg_n_0_[5] ,\FSM_onehot_state_reg_n_0_[4] ,\FSM_onehot_state_reg_n_0_[3] ,\FSM_onehot_state_reg_n_0_[2] ,do_reset_0}),
        .s_axi_aclk(s_axi_aclk),
        .src_enable(src_enable));
  LUT3 #(
    .INIT(8'h0D)) 
    needs_reset_i_1
       (.I0(ctrl_enable),
        .I1(dbg_status),
        .I2(needs_reset),
        .O(needs_reset_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    needs_reset_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(needs_reset_i_1_n_0),
        .Q(dbg_status),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \reset_gen[0].reset_async_reg[0] 
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(\reset_gen[0].reset_async_reg_n_0_[1] ),
        .PRE(do_reset),
        .Q(\reset_gen[0].reset_async_reg_n_0_[0] ));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \reset_gen[0].reset_async_reg[1] 
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(\reset_gen[0].reset_async_reg_n_0_[2] ),
        .PRE(do_reset),
        .Q(\reset_gen[0].reset_async_reg_n_0_[1] ));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \reset_gen[0].reset_async_reg[2] 
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(\reset_gen[0].reset_async_reg_n_0_[3] ),
        .PRE(do_reset),
        .Q(\reset_gen[0].reset_async_reg_n_0_[2] ));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \reset_gen[0].reset_async_reg[3] 
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(do_reset),
        .Q(\reset_gen[0].reset_async_reg_n_0_[3] ));
  FDPE #(
    .INIT(1'b1)) 
    \reset_gen[0].reset_sync_in_reg 
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(\reset_gen[0].reset_async_reg_n_0_[0] ),
        .PRE(\reset_gen[2].reset_async_reg_n_0_[0] ),
        .Q(\reset_gen[0].reset_sync_in ));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b1)) 
    \reset_gen[0].reset_sync_reg[0] 
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(\reset_gen[0].reset_sync_reg_n_0_[1] ),
        .Q(Q),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b1)) 
    \reset_gen[0].reset_sync_reg[1] 
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(\reset_gen[0].reset_sync_in ),
        .Q(\reset_gen[0].reset_sync_reg_n_0_[1] ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \reset_gen[1].reset_async_reg[0] 
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(\reset_gen[1].reset_async_reg_n_0_[1] ),
        .PRE(do_reset),
        .Q(\reset_gen[1].reset_async_reg_n_0_[0] ));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \reset_gen[1].reset_async_reg[1] 
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(\reset_gen[1].reset_async_reg_n_0_[2] ),
        .PRE(do_reset),
        .Q(\reset_gen[1].reset_async_reg_n_0_[1] ));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \reset_gen[1].reset_async_reg[2] 
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(\reset_gen[1].reset_async_reg_n_0_[3] ),
        .PRE(do_reset),
        .Q(\reset_gen[1].reset_async_reg_n_0_[2] ));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \reset_gen[1].reset_async_reg[3] 
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(\reset_gen[0].reset_async_reg_n_0_[0] ),
        .PRE(do_reset),
        .Q(\reset_gen[1].reset_async_reg_n_0_[3] ));
  FDPE #(
    .INIT(1'b1)) 
    \reset_gen[1].reset_sync_in_reg 
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(\reset_gen[1].reset_async_reg_n_0_[0] ),
        .PRE(Q),
        .Q(\reset_gen[1].reset_sync_in ));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b1)) 
    \reset_gen[1].reset_sync_reg[0] 
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(\reset_gen[1].reset_sync_reg_n_0_[1] ),
        .Q(\reset_gen[1].reset_sync_reg[0]_0 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b1)) 
    \reset_gen[1].reset_sync_reg[1] 
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(\reset_gen[1].reset_sync_in ),
        .Q(\reset_gen[1].reset_sync_reg_n_0_[1] ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \reset_gen[2].reset_async_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\reset_gen[2].reset_async_reg_n_0_[1] ),
        .PRE(do_reset),
        .Q(\reset_gen[2].reset_async_reg_n_0_[0] ));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \reset_gen[2].reset_async_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\reset_gen[2].reset_async_reg_n_0_[2] ),
        .PRE(do_reset),
        .Q(\reset_gen[2].reset_async_reg_n_0_[1] ));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \reset_gen[2].reset_async_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\reset_gen[2].reset_async_reg_n_0_[3] ),
        .PRE(do_reset),
        .Q(\reset_gen[2].reset_async_reg_n_0_[2] ));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \reset_gen[2].reset_async_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\reset_gen[1].reset_async_reg_n_0_[0] ),
        .PRE(do_reset),
        .Q(\reset_gen[2].reset_async_reg_n_0_[3] ));
  FDPE #(
    .INIT(1'b1)) 
    \reset_gen[2].reset_sync_in_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\reset_gen[2].reset_async_reg_n_0_[0] ),
        .PRE(\reset_gen[1].reset_sync_reg[0]_0 ),
        .Q(\reset_gen[2].reset_sync_in ));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b1)) 
    \reset_gen[2].reset_sync_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\reset_gen[2].reset_sync_reg_n_0_[1] ),
        .Q(\reset_gen[2].reset_sync_reg[0]_0 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b1)) 
    \reset_gen[2].reset_sync_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\reset_gen[2].reset_sync_in ),
        .Q(\reset_gen[2].reset_sync_reg_n_0_[1] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_dmac_response_manager" *) 
module icyradio_axi_dmac_rf_rx1_0_axi_dmac_response_manager
   (response_valid_reg_0,
    response_valid_reg_1,
    up_bl_partial,
    up_eot,
    m_dest_axi_bready,
    id0,
    \FSM_sequential_state_reg[0]_0 ,
    \measured_burst_length_reg[6]_0 ,
    \zerodeep.axis_valid_d_reg ,
    dest_response_valid,
    m_dest_axi_aclk,
    Q,
    s_axi_aclk,
    up_response_ready,
    p_3_in,
    \id_reg[0] ,
    m_dest_axi_bvalid,
    up_clear_tl_reg,
    up_clear_tl,
    D);
  output response_valid_reg_0;
  output response_valid_reg_1;
  output up_bl_partial;
  output up_eot;
  output m_dest_axi_bready;
  output id0;
  output \FSM_sequential_state_reg[0]_0 ;
  output [5:0]\measured_burst_length_reg[6]_0 ;
  input [0:0]\zerodeep.axis_valid_d_reg ;
  input dest_response_valid;
  input m_dest_axi_aclk;
  input [0:0]Q;
  input s_axi_aclk;
  input up_response_ready;
  input [0:0]p_3_in;
  input \id_reg[0] ;
  input m_dest_axi_bvalid;
  input [0:0]up_clear_tl_reg;
  input up_clear_tl;
  input [6:0]D;

  wire [6:0]D;
  wire \FSM_sequential_state[0]_i_3__0_n_0 ;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire \FSM_sequential_state_reg[0]_0 ;
  wire [0:0]Q;
  wire dest_response_valid;
  wire i_dest_response_fifo_n_13;
  wire i_dest_response_fifo_n_2;
  wire id0;
  wire \id_reg[0] ;
  wire m_dest_axi_aclk;
  wire m_dest_axi_bready;
  wire m_dest_axi_bvalid;
  wire \measured_burst_length[6]_i_1_n_0 ;
  wire \measured_burst_length[6]_i_2_n_0 ;
  wire [5:0]\measured_burst_length_reg[6]_0 ;
  wire [2:0]nx_state__0;
  wire [0:0]p_3_in;
  wire req_eot;
  wire req_eot0;
  wire [6:1]req_response_dest_data_burst_length;
  wire req_response_partial;
  wire [6:1]response_dest_data_burst_length;
  wire response_dest_partial;
  wire response_dest_ready;
  wire response_valid_i_1_n_0;
  wire response_valid_reg_0;
  wire response_valid_reg_1;
  wire s_axi_aclk;
  wire [2:0]state;
  wire [1:0]to_complete_count;
  wire \to_complete_count[0]_i_1_n_0 ;
  wire \to_complete_count[1]_i_1_n_0 ;
  wire [1:0]transfer_id;
  wire transfer_id0;
  wire \transfer_id[0]_i_1_n_0 ;
  wire \transfer_id[1]_i_1_n_0 ;
  wire up_bl_partial;
  wire up_clear_tl;
  wire [0:0]up_clear_tl_reg;
  wire up_eot;
  wire up_partial_length_valid_i_3_n_0;
  wire up_response_ready;
  wire [0:0]\zerodeep.axis_valid_d_reg ;

  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'hEEEF)) 
    \FSM_sequential_state[0]_i_3__0 
       (.I0(transfer_id[1]),
        .I1(transfer_id[0]),
        .I2(to_complete_count[1]),
        .I3(to_complete_count[0]),
        .O(\FSM_sequential_state[0]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(to_complete_count[0]),
        .I1(to_complete_count[1]),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFFE000E000)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(to_complete_count[0]),
        .I1(to_complete_count[1]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(up_response_ready),
        .I5(state[2]),
        .O(nx_state__0[2]));
  (* FSM_ENCODED_STATES = "STATE_WRITE_RESPR:010,STATE_ACC:001,STATE_WRITE_ZRCMPL:100,STATE_IDLE:000,STATE_ZERO_COMPL:011" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(nx_state__0[0]),
        .Q(state[0]),
        .R(Q));
  (* FSM_ENCODED_STATES = "STATE_WRITE_RESPR:010,STATE_ACC:001,STATE_WRITE_ZRCMPL:100,STATE_IDLE:000,STATE_ZERO_COMPL:011" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(nx_state__0[1]),
        .Q(state[1]),
        .R(Q));
  (* FSM_ENCODED_STATES = "STATE_WRITE_RESPR:010,STATE_ACC:001,STATE_WRITE_ZRCMPL:100,STATE_IDLE:000,STATE_ZERO_COMPL:011" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(nx_state__0[2]),
        .Q(state[2]),
        .R(Q));
  icyradio_axi_dmac_rf_rx1_0_util_axis_fifo__parameterized3 i_dest_response_fifo
       (.D(nx_state__0[1:0]),
        .E(req_eot0),
        .\FSM_sequential_state_reg[0] (\FSM_sequential_state[0]_i_3__0_n_0 ),
        .\FSM_sequential_state_reg[1] (\FSM_sequential_state[1]_i_2_n_0 ),
        .Q(state),
        .dest_response_valid(dest_response_valid),
        .id0(id0),
        .\id_reg[0] (\id_reg[0] ),
        .m_dest_axi_aclk(m_dest_axi_aclk),
        .m_dest_axi_bready(m_dest_axi_bready),
        .m_dest_axi_bvalid(m_dest_axi_bvalid),
        .response_dest_ready(response_dest_ready),
        .response_ready_reg(i_dest_response_fifo_n_2),
        .up_response_ready(up_response_ready),
        .\zerodeep.axis_data_d_reg[8]_0 ({response_dest_data_burst_length,response_dest_partial,i_dest_response_fifo_n_13}),
        .\zerodeep.axis_data_d_reg[8]_1 (D),
        .\zerodeep.axis_valid_d_reg_0 (\zerodeep.axis_valid_d_reg ));
  LUT3 #(
    .INIT(8'h40)) 
    \measured_burst_length[6]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .O(\measured_burst_length[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \measured_burst_length[6]_i_2 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .O(\measured_burst_length[6]_i_2_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \measured_burst_length_reg[1] 
       (.C(s_axi_aclk),
        .CE(\measured_burst_length[6]_i_2_n_0 ),
        .D(req_response_dest_data_burst_length[1]),
        .Q(\measured_burst_length_reg[6]_0 [0]),
        .S(\measured_burst_length[6]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \measured_burst_length_reg[2] 
       (.C(s_axi_aclk),
        .CE(\measured_burst_length[6]_i_2_n_0 ),
        .D(req_response_dest_data_burst_length[2]),
        .Q(\measured_burst_length_reg[6]_0 [1]),
        .S(\measured_burst_length[6]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \measured_burst_length_reg[3] 
       (.C(s_axi_aclk),
        .CE(\measured_burst_length[6]_i_2_n_0 ),
        .D(req_response_dest_data_burst_length[3]),
        .Q(\measured_burst_length_reg[6]_0 [2]),
        .S(\measured_burst_length[6]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \measured_burst_length_reg[4] 
       (.C(s_axi_aclk),
        .CE(\measured_burst_length[6]_i_2_n_0 ),
        .D(req_response_dest_data_burst_length[4]),
        .Q(\measured_burst_length_reg[6]_0 [3]),
        .S(\measured_burst_length[6]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \measured_burst_length_reg[5] 
       (.C(s_axi_aclk),
        .CE(\measured_burst_length[6]_i_2_n_0 ),
        .D(req_response_dest_data_burst_length[5]),
        .Q(\measured_burst_length_reg[6]_0 [4]),
        .S(\measured_burst_length[6]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \measured_burst_length_reg[6] 
       (.C(s_axi_aclk),
        .CE(\measured_burst_length[6]_i_2_n_0 ),
        .D(req_response_dest_data_burst_length[6]),
        .Q(\measured_burst_length_reg[6]_0 [5]),
        .S(\measured_burst_length[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    req_eot_reg
       (.C(s_axi_aclk),
        .CE(req_eot0),
        .D(i_dest_response_fifo_n_13),
        .Q(req_eot),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \req_response_dest_data_burst_length_reg[1] 
       (.C(s_axi_aclk),
        .CE(req_eot0),
        .D(response_dest_data_burst_length[1]),
        .Q(req_response_dest_data_burst_length[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \req_response_dest_data_burst_length_reg[2] 
       (.C(s_axi_aclk),
        .CE(req_eot0),
        .D(response_dest_data_burst_length[2]),
        .Q(req_response_dest_data_burst_length[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \req_response_dest_data_burst_length_reg[3] 
       (.C(s_axi_aclk),
        .CE(req_eot0),
        .D(response_dest_data_burst_length[3]),
        .Q(req_response_dest_data_burst_length[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \req_response_dest_data_burst_length_reg[4] 
       (.C(s_axi_aclk),
        .CE(req_eot0),
        .D(response_dest_data_burst_length[4]),
        .Q(req_response_dest_data_burst_length[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \req_response_dest_data_burst_length_reg[5] 
       (.C(s_axi_aclk),
        .CE(req_eot0),
        .D(response_dest_data_burst_length[5]),
        .Q(req_response_dest_data_burst_length[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \req_response_dest_data_burst_length_reg[6] 
       (.C(s_axi_aclk),
        .CE(req_eot0),
        .D(response_dest_data_burst_length[6]),
        .Q(req_response_dest_data_burst_length[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    req_response_partial_reg
       (.C(s_axi_aclk),
        .CE(req_eot0),
        .D(response_dest_partial),
        .Q(req_response_partial),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    response_dest_ready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_dest_response_fifo_n_2),
        .Q(response_dest_ready),
        .S(Q));
  LUT6 #(
    .INIT(64'h55D555F500C505F0)) 
    response_valid_i_1
       (.I0(up_response_ready),
        .I1(\FSM_sequential_state[1]_i_2_n_0 ),
        .I2(state[0]),
        .I3(state[2]),
        .I4(state[1]),
        .I5(response_valid_reg_0),
        .O(response_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    response_valid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(response_valid_i_1_n_0),
        .Q(response_valid_reg_0),
        .R(Q));
  LUT5 #(
    .INIT(32'hFFDF0020)) 
    \to_complete_count[0]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(up_response_ready),
        .I3(state[0]),
        .I4(to_complete_count[0]),
        .O(\to_complete_count[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00100000)) 
    \to_complete_count[1]_i_1 
       (.I0(to_complete_count[0]),
        .I1(state[0]),
        .I2(up_response_ready),
        .I3(state[1]),
        .I4(state[2]),
        .I5(to_complete_count[1]),
        .O(\to_complete_count[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \to_complete_count_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\to_complete_count[0]_i_1_n_0 ),
        .Q(to_complete_count[0]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \to_complete_count_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\to_complete_count[1]_i_1_n_0 ),
        .Q(to_complete_count[1]),
        .R(Q));
  LUT6 #(
    .INIT(64'hEEDFFFDF11200020)) 
    \transfer_id[0]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(up_response_ready),
        .I3(state[0]),
        .I4(req_eot),
        .I5(transfer_id[0]),
        .O(\transfer_id[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \transfer_id[1]_i_1 
       (.I0(transfer_id[0]),
        .I1(transfer_id0),
        .I2(transfer_id[1]),
        .O(\transfer_id[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'h00300088)) 
    \transfer_id[1]_i_2 
       (.I0(req_eot),
        .I1(state[0]),
        .I2(up_response_ready),
        .I3(state[1]),
        .I4(state[2]),
        .O(transfer_id0));
  FDRE #(
    .INIT(1'b0)) 
    \transfer_id_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\transfer_id[0]_i_1_n_0 ),
        .Q(transfer_id[0]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \transfer_id_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\transfer_id[1]_i_1_n_0 ),
        .Q(transfer_id[1]),
        .R(Q));
  LUT6 #(
    .INIT(64'h0400FFFF04000000)) 
    up_clear_tl_i_1
       (.I0(state[0]),
        .I1(req_eot),
        .I2(state[2]),
        .I3(state[1]),
        .I4(up_clear_tl_reg),
        .I5(up_clear_tl),
        .O(\FSM_sequential_state_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    up_partial_length_valid_i_2
       (.I0(p_3_in),
        .I1(req_response_partial),
        .I2(response_valid_reg_0),
        .I3(up_partial_length_valid_i_3_n_0),
        .I4(up_response_ready),
        .I5(state[0]),
        .O(up_bl_partial));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h2)) 
    up_partial_length_valid_i_3
       (.I0(state[1]),
        .I1(state[2]),
        .O(up_partial_length_valid_i_3_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    up_tlf_s_valid_i_7
       (.I0(response_valid_reg_0),
        .I1(up_response_ready),
        .O(response_valid_reg_1));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \up_transfer_id_eot[1]_i_2 
       (.I0(response_valid_reg_0),
        .I1(state[2]),
        .I2(state[1]),
        .I3(up_response_ready),
        .I4(state[0]),
        .I5(req_eot),
        .O(up_eot));
endmodule

(* ORIG_REF_NAME = "axi_dmac_transfer" *) 
module icyradio_axi_dmac_rf_rx1_0_axi_dmac_transfer
   (m_dest_axi_wdata,
    do_enable_reg,
    addr_valid_reg,
    fifo_wr_overflow,
    \zerodeep.s_axis_waddr_reg ,
    \cdc_sync_stage2_reg[0] ,
    req_gen_ready,
    E,
    m_dest_axi_awaddr,
    up_response_valid,
    active_reg,
    dest_mem_data_valid_reg,
    m_dest_axi_wlast,
    m_dest_axi_wstrb,
    \cdc_sync_stage2_reg[0]_0 ,
    response_valid_reg,
    up_bl_partial,
    up_eot,
    m_dest_axi_bready,
    \FSM_sequential_state_reg[0] ,
    \measured_burst_length_reg[6] ,
    m_dest_axi_awlen,
    m_dest_axi_aclk,
    fifo_wr_clk,
    fifo_wr_din,
    s_axi_aclk,
    D,
    m_dest_axi_wready,
    up_dma_req_valid,
    up_response_ready,
    p_3_in,
    m_dest_axi_awready,
    m_dest_axi_bvalid,
    ctrl_enable,
    ctrl_pause,
    Q,
    up_clear_tl_reg,
    up_clear_tl,
    SS,
    fifo_wr_sync,
    fifo_wr_en);
  output [63:0]m_dest_axi_wdata;
  output [0:0]do_enable_reg;
  output addr_valid_reg;
  output fifo_wr_overflow;
  output \zerodeep.s_axis_waddr_reg ;
  output \cdc_sync_stage2_reg[0] ;
  output req_gen_ready;
  output [0:0]E;
  output [28:0]m_dest_axi_awaddr;
  output up_response_valid;
  output active_reg;
  output dest_mem_data_valid_reg;
  output m_dest_axi_wlast;
  output [0:0]m_dest_axi_wstrb;
  output \cdc_sync_stage2_reg[0]_0 ;
  output response_valid_reg;
  output up_bl_partial;
  output up_eot;
  output m_dest_axi_bready;
  output \FSM_sequential_state_reg[0] ;
  output [5:0]\measured_burst_length_reg[6] ;
  output [3:0]m_dest_axi_awlen;
  input m_dest_axi_aclk;
  input fifo_wr_clk;
  input [31:0]fifo_wr_din;
  input s_axi_aclk;
  input [64:0]D;
  input m_dest_axi_wready;
  input up_dma_req_valid;
  input up_response_ready;
  input [0:0]p_3_in;
  input m_dest_axi_awready;
  input m_dest_axi_bvalid;
  input ctrl_enable;
  input ctrl_pause;
  input [16:0]Q;
  input [0:0]up_clear_tl_reg;
  input up_clear_tl;
  input [0:0]SS;
  input fifo_wr_sync;
  input fifo_wr_en;

  wire [64:0]D;
  wire [0:0]E;
  wire \FSM_sequential_state_reg[0] ;
  wire [16:0]Q;
  wire [0:0]SS;
  wire active_reg;
  wire addr_valid_reg;
  wire \cdc_sync_stage2_reg[0] ;
  wire \cdc_sync_stage2_reg[0]_0 ;
  wire ctrl_enable;
  wire ctrl_pause;
  wire [4:4]dbg_status;
  wire dest_mem_data_valid_reg;
  wire [0:0]do_enable_reg;
  wire fifo_wr_clk;
  wire [31:0]fifo_wr_din;
  wire fifo_wr_en;
  wire fifo_wr_overflow;
  wire fifo_wr_sync;
  wire i_reset_manager_n_0;
  wire i_reset_manager_n_1;
  wire i_reset_manager_n_4;
  wire m_dest_axi_aclk;
  wire [28:0]m_dest_axi_awaddr;
  wire [3:0]m_dest_axi_awlen;
  wire m_dest_axi_awready;
  wire m_dest_axi_bready;
  wire m_dest_axi_bvalid;
  wire [63:0]m_dest_axi_wdata;
  wire m_dest_axi_wlast;
  wire m_dest_axi_wready;
  wire [0:0]m_dest_axi_wstrb;
  wire [5:0]\measured_burst_length_reg[6] ;
  wire [0:0]p_3_in;
  wire req_gen_ready;
  wire response_valid_reg;
  wire s_axi_aclk;
  wire src_enable;
  wire up_bl_partial;
  wire up_clear_tl;
  wire [0:0]up_clear_tl_reg;
  wire up_dma_req_valid;
  wire up_eot;
  wire up_response_ready;
  wire up_response_valid;
  wire \zerodeep.s_axis_waddr_reg ;

  icyradio_axi_dmac_rf_rx1_0_request_arb i_request_arb
       (.D(D),
        .E(E),
        .\FSM_sequential_state_reg[0] (\FSM_sequential_state_reg[0] ),
        .Q(i_reset_manager_n_4),
        .active_reg(active_reg),
        .addr_valid_reg(addr_valid_reg),
        .\burst_count_reg[16] (Q),
        .\cdc_sync_stage2_reg[0] (\cdc_sync_stage2_reg[0] ),
        .\cdc_sync_stage2_reg[0]_0 (\cdc_sync_stage2_reg[0]_0 ),
        .dbg_status(dbg_status),
        .dest_mem_data_valid_reg(dest_mem_data_valid_reg),
        .dest_mem_data_valid_reg_0(i_reset_manager_n_0),
        .fifo_wr_clk(fifo_wr_clk),
        .fifo_wr_din(fifo_wr_din),
        .fifo_wr_en(fifo_wr_en),
        .fifo_wr_overflow(fifo_wr_overflow),
        .fifo_wr_sync(fifo_wr_sync),
        .m_dest_axi_aclk(m_dest_axi_aclk),
        .m_dest_axi_awaddr(m_dest_axi_awaddr),
        .m_dest_axi_awlen(m_dest_axi_awlen),
        .m_dest_axi_awready(m_dest_axi_awready),
        .m_dest_axi_bready(m_dest_axi_bready),
        .m_dest_axi_bvalid(m_dest_axi_bvalid),
        .m_dest_axi_wdata(m_dest_axi_wdata),
        .m_dest_axi_wlast(m_dest_axi_wlast),
        .m_dest_axi_wready(m_dest_axi_wready),
        .m_dest_axi_wstrb(m_dest_axi_wstrb),
        .\measured_burst_length_reg[6] (\measured_burst_length_reg[6] ),
        .p_3_in(p_3_in),
        .req_ready_reg(req_gen_ready),
        .response_valid_reg(up_response_valid),
        .response_valid_reg_0(response_valid_reg),
        .s_axi_aclk(s_axi_aclk),
        .src_enable(src_enable),
        .\src_id_reg[0] (i_reset_manager_n_1),
        .up_bl_partial(up_bl_partial),
        .up_clear_tl(up_clear_tl),
        .up_clear_tl_reg(up_clear_tl_reg),
        .up_dma_req_valid(up_dma_req_valid),
        .up_eot(up_eot),
        .up_response_ready(up_response_ready),
        .\zerodeep.cdc_sync_fifo_ram_reg[67] (do_enable_reg),
        .\zerodeep.s_axis_waddr_reg (\zerodeep.s_axis_waddr_reg ));
  icyradio_axi_dmac_rf_rx1_0_axi_dmac_reset_manager i_reset_manager
       (.\FSM_onehot_state_reg[0]_0 (dbg_status),
        .Q(i_reset_manager_n_0),
        .SS(SS),
        .ctrl_enable(ctrl_enable),
        .ctrl_pause(ctrl_pause),
        .do_enable_reg_0(do_enable_reg),
        .fifo_wr_clk(fifo_wr_clk),
        .m_dest_axi_aclk(m_dest_axi_aclk),
        .\reset_gen[1].reset_sync_reg[0]_0 (i_reset_manager_n_1),
        .\reset_gen[2].reset_sync_reg[0]_0 (i_reset_manager_n_4),
        .s_axi_aclk(s_axi_aclk),
        .src_enable(src_enable));
endmodule

(* ORIG_REF_NAME = "data_mover" *) 
module icyradio_axi_dmac_rf_rx1_0_data_mover
   (SR,
    E,
    \id_reg[3]_0 ,
    last_non_eot_reg_0,
    \id_reg[2]_0 ,
    \id_reg[1]_0 ,
    \id_reg[0]_0 ,
    active_reg_0,
    src_bl_valid,
    \reset_gen[1].reset_sync_reg[0] ,
    active_reg_1,
    \measured_last_burst_length_reg[4]_0 ,
    fifo_wr_clk,
    active_reg_2,
    active_reg_3,
    src_eot,
    \zerodeep.s_axis_waddr ,
    bl_valid_reg_0,
    out,
    last_eot_reg_0,
    Q,
    fifo_wr_sync,
    fifo_wr_en,
    src_enable);
  output [0:0]SR;
  output [0:0]E;
  output \id_reg[3]_0 ;
  output last_non_eot_reg_0;
  output \id_reg[2]_0 ;
  output \id_reg[1]_0 ;
  output \id_reg[0]_0 ;
  output active_reg_0;
  output src_bl_valid;
  output [0:0]\reset_gen[1].reset_sync_reg[0] ;
  output active_reg_1;
  output [4:0]\measured_last_burst_length_reg[4]_0 ;
  input fifo_wr_clk;
  input [0:0]active_reg_2;
  input [0:0]active_reg_3;
  input src_eot;
  input \zerodeep.s_axis_waddr ;
  input bl_valid_reg_0;
  input [5:0]out;
  input last_eot_reg_0;
  input [3:0]Q;
  input fifo_wr_sync;
  input fifo_wr_en;
  input src_enable;

  wire [0:0]E;
  wire [3:0]Q;
  wire [0:0]SR;
  wire active_i_1_n_0;
  wire active_reg_0;
  wire active_reg_1;
  wire [0:0]active_reg_2;
  wire [0:0]active_reg_3;
  wire b2g1_return06_out;
  wire b2g1_return07_out;
  wire \beat_counter[2]_i_1_n_0 ;
  wire [4:0]beat_counter_minus_one;
  wire [4:0]beat_counter_reg;
  wire bl_valid_i_1_n_0;
  wire bl_valid_reg_0;
  wire fifo_wr_clk;
  wire fifo_wr_en;
  wire fifo_wr_sync;
  wire \id[0]_i_1__2_n_0 ;
  wire \id_reg[0]_0 ;
  wire \id_reg[1]_0 ;
  wire \id_reg[2]_0 ;
  wire \id_reg[3]_0 ;
  wire [4:0]last_burst_length;
  wire last_eot_i_1_n_0;
  wire last_eot_i_3_n_0;
  wire last_eot_i_4_n_0;
  wire last_eot_reg_0;
  wire last_eot_reg_n_0;
  wire last_load;
  wire last_non_eot;
  wire last_non_eot_i_1_n_0;
  wire last_non_eot_reg_0;
  wire [4:0]\measured_last_burst_length_reg[4]_0 ;
  wire needs_sync_i_1_n_0;
  wire needs_sync_reg_n_0;
  wire [5:0]out;
  wire [4:0]p_0_in__1;
  wire p_3_in;
  wire pending_burst;
  wire pending_burst_i_1_n_0;
  wire pending_burst_i_2_n_0;
  wire pending_burst_i_3_n_0;
  wire pending_burst_i_4_n_0;
  wire pending_burst_i_5_n_0;
  wire [0:0]\reset_gen[1].reset_sync_reg[0] ;
  wire src_bl_valid;
  wire src_enable;
  wire src_eot;
  wire \zerodeep.s_axis_waddr ;

  LUT5 #(
    .INIT(32'hBFFFAAAA)) 
    active_i_1
       (.I0(active_reg_3),
        .I1(src_eot),
        .I2(last_eot_reg_n_0),
        .I3(E),
        .I4(active_reg_0),
        .O(active_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    active_reg
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(active_i_1_n_0),
        .Q(active_reg_0),
        .R(active_reg_2));
  LUT1 #(
    .INIT(2'h1)) 
    \beat_counter[0]_i_1 
       (.I0(beat_counter_reg[0]),
        .O(p_0_in__1[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \beat_counter[1]_i_1 
       (.I0(beat_counter_reg[0]),
        .I1(beat_counter_reg[1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \beat_counter[2]_i_1 
       (.I0(beat_counter_reg[1]),
        .I1(beat_counter_reg[0]),
        .I2(beat_counter_reg[2]),
        .O(\beat_counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \beat_counter[3]_i_1 
       (.I0(beat_counter_reg[0]),
        .I1(beat_counter_reg[1]),
        .I2(beat_counter_reg[2]),
        .I3(beat_counter_reg[3]),
        .O(p_0_in__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \beat_counter[4]_i_1 
       (.I0(beat_counter_reg[2]),
        .I1(beat_counter_reg[1]),
        .I2(beat_counter_reg[0]),
        .I3(beat_counter_reg[3]),
        .I4(beat_counter_reg[4]),
        .O(p_0_in__1[4]));
  LUT5 #(
    .INIT(32'h80FF8080)) 
    \beat_counter_minus_one[4]_i_1 
       (.I0(src_eot),
        .I1(last_eot_reg_n_0),
        .I2(E),
        .I3(active_reg_0),
        .I4(pending_burst),
        .O(SR));
  FDRE #(
    .INIT(1'b0)) 
    \beat_counter_minus_one_reg[0] 
       (.C(fifo_wr_clk),
        .CE(E),
        .D(beat_counter_reg[0]),
        .Q(beat_counter_minus_one[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \beat_counter_minus_one_reg[1] 
       (.C(fifo_wr_clk),
        .CE(E),
        .D(beat_counter_reg[1]),
        .Q(beat_counter_minus_one[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \beat_counter_minus_one_reg[2] 
       (.C(fifo_wr_clk),
        .CE(E),
        .D(beat_counter_reg[2]),
        .Q(beat_counter_minus_one[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \beat_counter_minus_one_reg[3] 
       (.C(fifo_wr_clk),
        .CE(E),
        .D(beat_counter_reg[3]),
        .Q(beat_counter_minus_one[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \beat_counter_minus_one_reg[4] 
       (.C(fifo_wr_clk),
        .CE(E),
        .D(beat_counter_reg[4]),
        .Q(beat_counter_minus_one[4]),
        .R(SR));
  FDSE #(
    .INIT(1'b0)) 
    \beat_counter_reg[0] 
       (.C(fifo_wr_clk),
        .CE(E),
        .D(p_0_in__1[0]),
        .Q(beat_counter_reg[0]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \beat_counter_reg[1] 
       (.C(fifo_wr_clk),
        .CE(E),
        .D(p_0_in__1[1]),
        .Q(beat_counter_reg[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \beat_counter_reg[2] 
       (.C(fifo_wr_clk),
        .CE(E),
        .D(\beat_counter[2]_i_1_n_0 ),
        .Q(beat_counter_reg[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \beat_counter_reg[3] 
       (.C(fifo_wr_clk),
        .CE(E),
        .D(p_0_in__1[3]),
        .Q(beat_counter_reg[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \beat_counter_reg[4] 
       (.C(fifo_wr_clk),
        .CE(E),
        .D(p_0_in__1[4]),
        .Q(beat_counter_reg[4]),
        .R(SR));
  LUT6 #(
    .INIT(64'hFF60606060606060)) 
    bl_valid_i_1
       (.I0(\zerodeep.s_axis_waddr ),
        .I1(bl_valid_reg_0),
        .I2(src_bl_valid),
        .I3(src_eot),
        .I4(last_eot_reg_n_0),
        .I5(E),
        .O(bl_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    bl_valid_reg
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(bl_valid_i_1_n_0),
        .Q(src_bl_valid),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \id[0]_i_1__2 
       (.I0(\id_reg[1]_0 ),
        .I1(\id_reg[3]_0 ),
        .I2(\id_reg[2]_0 ),
        .O(\id[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'h99F0)) 
    \id[1]_i_1__2 
       (.I0(\id_reg[2]_0 ),
        .I1(\id_reg[3]_0 ),
        .I2(\id_reg[1]_0 ),
        .I3(\id_reg[0]_0 ),
        .O(b2g1_return06_out));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'hD1F0)) 
    \id[2]_i_1__2 
       (.I0(\id_reg[3]_0 ),
        .I1(\id_reg[0]_0 ),
        .I2(\id_reg[2]_0 ),
        .I3(\id_reg[1]_0 ),
        .O(b2g1_return07_out));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'hFE04)) 
    \id[3]_i_1__2 
       (.I0(\id_reg[1]_0 ),
        .I1(\id_reg[2]_0 ),
        .I2(\id_reg[0]_0 ),
        .I3(\id_reg[3]_0 ),
        .O(p_3_in));
  FDRE #(
    .INIT(1'b0)) 
    \id_reg[0] 
       (.C(fifo_wr_clk),
        .CE(last_non_eot_reg_0),
        .D(\id[0]_i_1__2_n_0 ),
        .Q(\id_reg[0]_0 ),
        .R(active_reg_2));
  FDRE #(
    .INIT(1'b0)) 
    \id_reg[1] 
       (.C(fifo_wr_clk),
        .CE(last_non_eot_reg_0),
        .D(b2g1_return06_out),
        .Q(\id_reg[1]_0 ),
        .R(active_reg_2));
  FDRE #(
    .INIT(1'b0)) 
    \id_reg[2] 
       (.C(fifo_wr_clk),
        .CE(last_non_eot_reg_0),
        .D(b2g1_return07_out),
        .Q(\id_reg[2]_0 ),
        .R(active_reg_2));
  FDRE #(
    .INIT(1'b0)) 
    \id_reg[3] 
       (.C(fifo_wr_clk),
        .CE(last_non_eot_reg_0),
        .D(p_3_in),
        .Q(\id_reg[3]_0 ),
        .R(active_reg_2));
  FDRE #(
    .INIT(1'b0)) 
    \last_burst_length_reg[0] 
       (.C(fifo_wr_clk),
        .CE(SR),
        .D(out[1]),
        .Q(last_burst_length[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_burst_length_reg[1] 
       (.C(fifo_wr_clk),
        .CE(SR),
        .D(out[2]),
        .Q(last_burst_length[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_burst_length_reg[2] 
       (.C(fifo_wr_clk),
        .CE(SR),
        .D(out[3]),
        .Q(last_burst_length[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_burst_length_reg[3] 
       (.C(fifo_wr_clk),
        .CE(SR),
        .D(out[4]),
        .Q(last_burst_length[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_burst_length_reg[4] 
       (.C(fifo_wr_clk),
        .CE(SR),
        .D(out[5]),
        .Q(last_burst_length[4]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hACAFACA0)) 
    last_eot_i_1
       (.I0(last_eot_reg_0),
        .I1(last_eot_i_3_n_0),
        .I2(SR),
        .I3(E),
        .I4(last_eot_reg_n_0),
        .O(last_eot_i_1_n_0));
  LUT5 #(
    .INIT(32'h90000090)) 
    last_eot_i_3
       (.I0(beat_counter_reg[3]),
        .I1(last_burst_length[3]),
        .I2(last_eot_i_4_n_0),
        .I3(last_burst_length[4]),
        .I4(beat_counter_reg[4]),
        .O(last_eot_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    last_eot_i_4
       (.I0(beat_counter_reg[0]),
        .I1(last_burst_length[0]),
        .I2(last_burst_length[2]),
        .I3(beat_counter_reg[2]),
        .I4(last_burst_length[1]),
        .I5(beat_counter_reg[1]),
        .O(last_eot_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    last_eot_reg
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(last_eot_i_1_n_0),
        .Q(last_eot_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    last_non_eot_i_1
       (.I0(beat_counter_reg[0]),
        .I1(beat_counter_reg[1]),
        .I2(beat_counter_reg[2]),
        .I3(beat_counter_reg[3]),
        .I4(beat_counter_reg[4]),
        .O(last_non_eot_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    last_non_eot_reg
       (.C(fifo_wr_clk),
        .CE(E),
        .D(last_non_eot_i_1_n_0),
        .Q(last_non_eot),
        .R(SR));
  LUT5 #(
    .INIT(32'hD0000000)) 
    m_ram_reg_bram_0_i_2
       (.I0(needs_sync_reg_n_0),
        .I1(fifo_wr_sync),
        .I2(fifo_wr_en),
        .I3(active_reg_0),
        .I4(pending_burst),
        .O(E));
  LUT3 #(
    .INIT(8'h80)) 
    \measured_last_burst_length[4]_i_1 
       (.I0(E),
        .I1(last_eot_reg_n_0),
        .I2(src_eot),
        .O(last_load));
  FDRE \measured_last_burst_length_reg[0] 
       (.C(fifo_wr_clk),
        .CE(last_load),
        .D(beat_counter_minus_one[0]),
        .Q(\measured_last_burst_length_reg[4]_0 [0]),
        .R(1'b0));
  FDRE \measured_last_burst_length_reg[1] 
       (.C(fifo_wr_clk),
        .CE(last_load),
        .D(beat_counter_minus_one[1]),
        .Q(\measured_last_burst_length_reg[4]_0 [1]),
        .R(1'b0));
  FDRE \measured_last_burst_length_reg[2] 
       (.C(fifo_wr_clk),
        .CE(last_load),
        .D(beat_counter_minus_one[2]),
        .Q(\measured_last_burst_length_reg[4]_0 [2]),
        .R(1'b0));
  FDRE \measured_last_burst_length_reg[3] 
       (.C(fifo_wr_clk),
        .CE(last_load),
        .D(beat_counter_minus_one[3]),
        .Q(\measured_last_burst_length_reg[4]_0 [3]),
        .R(1'b0));
  FDRE \measured_last_burst_length_reg[4] 
       (.C(fifo_wr_clk),
        .CE(last_load),
        .D(beat_counter_minus_one[4]),
        .Q(\measured_last_burst_length_reg[4]_0 [4]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hC0CA)) 
    needs_sync_i_1
       (.I0(needs_sync_reg_n_0),
        .I1(out[0]),
        .I2(SR),
        .I3(E),
        .O(needs_sync_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    needs_sync_reg
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(needs_sync_i_1_n_0),
        .Q(needs_sync_reg_n_0),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h7F00)) 
    overflow_i_1
       (.I0(active_reg_0),
        .I1(pending_burst),
        .I2(src_enable),
        .I3(fifo_wr_en),
        .O(active_reg_1));
  LUT4 #(
    .INIT(16'hFFFE)) 
    pending_burst_i_1
       (.I0(pending_burst_i_2_n_0),
        .I1(pending_burst_i_3_n_0),
        .I2(pending_burst_i_4_n_0),
        .I3(pending_burst_i_5_n_0),
        .O(pending_burst_i_1_n_0));
  LUT6 #(
    .INIT(64'h66666666665666A6)) 
    pending_burst_i_2
       (.I0(Q[3]),
        .I1(\id_reg[3]_0 ),
        .I2(last_non_eot_reg_0),
        .I3(\id_reg[0]_0 ),
        .I4(\id_reg[2]_0 ),
        .I5(\id_reg[1]_0 ),
        .O(pending_burst_i_2_n_0));
  LUT6 #(
    .INIT(64'h5666A666A6665666)) 
    pending_burst_i_3
       (.I0(Q[1]),
        .I1(\id_reg[1]_0 ),
        .I2(last_non_eot_reg_0),
        .I3(\id_reg[0]_0 ),
        .I4(\id_reg[3]_0 ),
        .I5(\id_reg[2]_0 ),
        .O(pending_burst_i_3_n_0));
  LUT6 #(
    .INIT(64'h6666A66666665666)) 
    pending_burst_i_4
       (.I0(Q[2]),
        .I1(\id_reg[2]_0 ),
        .I2(last_non_eot_reg_0),
        .I3(\id_reg[1]_0 ),
        .I4(\id_reg[0]_0 ),
        .I5(\id_reg[3]_0 ),
        .O(pending_burst_i_4_n_0));
  LUT6 #(
    .INIT(64'hA65656A656A6A656)) 
    pending_burst_i_5
       (.I0(Q[0]),
        .I1(\id_reg[0]_0 ),
        .I2(last_non_eot_reg_0),
        .I3(\id_reg[2]_0 ),
        .I4(\id_reg[3]_0 ),
        .I5(\id_reg[1]_0 ),
        .O(pending_burst_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    pending_burst_reg
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(pending_burst_i_1_n_0),
        .Q(pending_burst),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hEFEAAAAA)) 
    \src_beat_counter[4]_i_1 
       (.I0(active_reg_2),
        .I1(last_eot_reg_n_0),
        .I2(src_eot),
        .I3(last_non_eot),
        .I4(E),
        .O(\reset_gen[1].reset_sync_reg[0] ));
  LUT4 #(
    .INIT(16'hA808)) 
    \src_id[3]_i_1 
       (.I0(E),
        .I1(last_non_eot),
        .I2(src_eot),
        .I3(last_eot_reg_n_0),
        .O(last_non_eot_reg_0));
endmodule

(* ORIG_REF_NAME = "dest_axi_mm" *) 
module icyradio_axi_dmac_rf_rx1_0_dest_axi_mm
   (D,
    dbg_ids0,
    addr_valid_reg,
    m_dest_axi_awaddr,
    dbg_status,
    dest_bl_ready,
    dest_req_ready,
    dest_response_valid,
    \id_reg[1] ,
    dest_burst_valid,
    m_dest_axi_awlen,
    m_dest_axi_aclk,
    dest_burst_info_write,
    Q,
    \zerodeep.axis_data_d_reg[1] ,
    enabled_reg,
    id0,
    dest_address_eot,
    m_dest_axi_awready,
    addr_valid_reg_0,
    addr_valid_reg_1,
    addr_valid_i_2,
    addr_valid_i_2_0,
    m_dest_axi_bvalid,
    dest_burst_info_write_i_4,
    out,
    bl_ready_reg,
    bl_ready_reg_0,
    req_ready_reg,
    req_ready_reg_0,
    E,
    \last_burst_len_reg[3] );
  output [5:0]D;
  output [7:0]dbg_ids0;
  output addr_valid_reg;
  output [28:0]m_dest_axi_awaddr;
  output [0:0]dbg_status;
  output dest_bl_ready;
  output dest_req_ready;
  output dest_response_valid;
  output \id_reg[1] ;
  output dest_burst_valid;
  output [3:0]m_dest_axi_awlen;
  input m_dest_axi_aclk;
  input dest_burst_info_write;
  input [5:0]Q;
  input [3:0]\zerodeep.axis_data_d_reg[1] ;
  input [0:0]enabled_reg;
  input id0;
  input dest_address_eot;
  input m_dest_axi_awready;
  input addr_valid_reg_0;
  input addr_valid_reg_1;
  input addr_valid_i_2;
  input addr_valid_i_2_0;
  input m_dest_axi_bvalid;
  input [3:0]dest_burst_info_write_i_4;
  input [28:0]out;
  input bl_ready_reg;
  input bl_ready_reg_0;
  input req_ready_reg;
  input req_ready_reg_0;
  input [0:0]E;
  input [3:0]\last_burst_len_reg[3] ;

  wire [5:0]D;
  wire [0:0]E;
  wire [5:0]Q;
  wire addr_valid_i_2;
  wire addr_valid_i_2_0;
  wire addr_valid_reg;
  wire addr_valid_reg_0;
  wire addr_valid_reg_1;
  wire address_enabled;
  wire bl_ready_reg;
  wire bl_ready_reg_0;
  wire [7:0]dbg_ids0;
  wire [0:0]dbg_status;
  wire dest_address_eot;
  wire dest_bl_ready;
  wire dest_burst_info_write;
  wire [3:0]dest_burst_info_write_i_4;
  wire dest_burst_valid;
  wire dest_req_ready;
  wire dest_response_valid;
  wire [0:0]enabled_reg;
  wire id0;
  wire \id_reg[1] ;
  wire [3:0]\last_burst_len_reg[3] ;
  wire m_dest_axi_aclk;
  wire [28:0]m_dest_axi_awaddr;
  wire [3:0]m_dest_axi_awlen;
  wire m_dest_axi_awready;
  wire m_dest_axi_bvalid;
  wire [28:0]out;
  wire req_ready_reg;
  wire req_ready_reg_0;
  wire [3:0]\zerodeep.axis_data_d_reg[1] ;
  wire [1:0]NLW_bl_mem_reg_0_15_6_7_DOD_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "128" *) 
  (* RTL_RAM_NAME = "i_transfer/i_request_arb/i_dest_dma_mm/bl_mem_reg_0_15_6_7" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "7" *) 
  RAM32M bl_mem_reg_0_15_6_7
       (.ADDRA({1'b0,dbg_ids0[7:4]}),
        .ADDRB({1'b0,dbg_ids0[7:4]}),
        .ADDRC({1'b0,dbg_ids0[7:4]}),
        .ADDRD({1'b0,\zerodeep.axis_data_d_reg[1] }),
        .DIA(Q[5:4]),
        .DIB(Q[1:0]),
        .DIC(Q[3:2]),
        .DID({1'b0,1'b0}),
        .DOA({D[0],D[5]}),
        .DOB(D[2:1]),
        .DOC(D[4:3]),
        .DOD(NLW_bl_mem_reg_0_15_6_7_DOD_UNCONNECTED[1:0]),
        .WCLK(m_dest_axi_aclk),
        .WE(dest_burst_info_write));
  icyradio_axi_dmac_rf_rx1_0_address_generator i_addr_gen
       (.E(E),
        .addr_valid_i_2_0(addr_valid_i_2),
        .addr_valid_i_2_1(addr_valid_i_2_0),
        .addr_valid_reg_0(addr_valid_reg),
        .addr_valid_reg_1(addr_valid_reg_0),
        .addr_valid_reg_2(addr_valid_reg_1),
        .address_enabled(address_enabled),
        .bl_ready_reg_0(bl_ready_reg),
        .bl_ready_reg_1(bl_ready_reg_0),
        .dest_address_eot(dest_address_eot),
        .dest_bl_ready(dest_bl_ready),
        .dest_burst_info_write_i_4_0(dest_burst_info_write_i_4),
        .dest_burst_valid(dest_burst_valid),
        .\id_reg[0]_0 (dbg_ids0[0]),
        .\id_reg[0]_1 (enabled_reg),
        .\id_reg[1]_0 (dbg_ids0[1]),
        .\id_reg[2]_0 (dbg_ids0[2]),
        .\id_reg[3]_0 (dbg_ids0[3]),
        .\last_burst_len_reg[3]_0 (\last_burst_len_reg[3] ),
        .m_dest_axi_aclk(m_dest_axi_aclk),
        .m_dest_axi_awaddr(m_dest_axi_awaddr),
        .m_dest_axi_awlen(m_dest_axi_awlen),
        .m_dest_axi_awready(m_dest_axi_awready),
        .out(out),
        .req_ready_reg_0(dest_req_ready),
        .req_ready_reg_1(req_ready_reg),
        .req_ready_reg_2(req_ready_reg_0));
  icyradio_axi_dmac_rf_rx1_0_response_handler i_response_handler
       (.ADDRC(dbg_ids0[7:4]),
        .address_enabled(address_enabled),
        .dbg_ids0(dbg_ids0[3:0]),
        .dbg_status(dbg_status),
        .dest_response_valid(dest_response_valid),
        .enabled_reg_0(enabled_reg),
        .id0(id0),
        .\id_reg[1]_0 (\id_reg[1] ),
        .m_dest_axi_aclk(m_dest_axi_aclk),
        .m_dest_axi_bvalid(m_dest_axi_bvalid));
endmodule

(* ORIG_REF_NAME = "request_arb" *) 
module icyradio_axi_dmac_rf_rx1_0_request_arb
   (m_dest_axi_wdata,
    addr_valid_reg,
    fifo_wr_overflow,
    \zerodeep.s_axis_waddr_reg ,
    \cdc_sync_stage2_reg[0] ,
    req_ready_reg,
    E,
    m_dest_axi_awaddr,
    response_valid_reg,
    dbg_status,
    active_reg,
    dest_mem_data_valid_reg,
    m_dest_axi_wlast,
    m_dest_axi_wstrb,
    \cdc_sync_stage2_reg[0]_0 ,
    response_valid_reg_0,
    up_bl_partial,
    up_eot,
    m_dest_axi_bready,
    \FSM_sequential_state_reg[0] ,
    \measured_burst_length_reg[6] ,
    m_dest_axi_awlen,
    m_dest_axi_aclk,
    fifo_wr_clk,
    fifo_wr_din,
    Q,
    s_axi_aclk,
    \src_id_reg[0] ,
    dest_mem_data_valid_reg_0,
    D,
    m_dest_axi_wready,
    \zerodeep.cdc_sync_fifo_ram_reg[67] ,
    up_dma_req_valid,
    up_response_ready,
    p_3_in,
    m_dest_axi_awready,
    m_dest_axi_bvalid,
    \burst_count_reg[16] ,
    up_clear_tl_reg,
    up_clear_tl,
    fifo_wr_sync,
    fifo_wr_en,
    src_enable);
  output [63:0]m_dest_axi_wdata;
  output addr_valid_reg;
  output fifo_wr_overflow;
  output \zerodeep.s_axis_waddr_reg ;
  output \cdc_sync_stage2_reg[0] ;
  output req_ready_reg;
  output [0:0]E;
  output [28:0]m_dest_axi_awaddr;
  output response_valid_reg;
  output [0:0]dbg_status;
  output active_reg;
  output dest_mem_data_valid_reg;
  output m_dest_axi_wlast;
  output [0:0]m_dest_axi_wstrb;
  output \cdc_sync_stage2_reg[0]_0 ;
  output response_valid_reg_0;
  output up_bl_partial;
  output up_eot;
  output m_dest_axi_bready;
  output \FSM_sequential_state_reg[0] ;
  output [5:0]\measured_burst_length_reg[6] ;
  output [3:0]m_dest_axi_awlen;
  input m_dest_axi_aclk;
  input fifo_wr_clk;
  input [31:0]fifo_wr_din;
  input [0:0]Q;
  input s_axi_aclk;
  input [0:0]\src_id_reg[0] ;
  input [0:0]dest_mem_data_valid_reg_0;
  input [64:0]D;
  input m_dest_axi_wready;
  input \zerodeep.cdc_sync_fifo_ram_reg[67] ;
  input up_dma_req_valid;
  input up_response_ready;
  input [0:0]p_3_in;
  input m_dest_axi_awready;
  input m_dest_axi_bvalid;
  input [16:0]\burst_count_reg[16] ;
  input [0:0]up_clear_tl_reg;
  input up_clear_tl;
  input fifo_wr_sync;
  input fifo_wr_en;
  input src_enable;

  wire [64:0]D;
  wire [0:0]E;
  wire \FSM_sequential_state_reg[0] ;
  wire [0:0]Q;
  wire active_reg;
  wire addr_valid_reg;
  wire [16:0]\burst_count_reg[16] ;
  wire \cdc_sync_stage2_reg[0] ;
  wire \cdc_sync_stage2_reg[0]_0 ;
  wire cur_transfer_id;
  wire [27:8]dbg_ids0;
  wire [27:24]dbg_ids1;
  wire [0:0]dbg_status;
  wire dest_address_eot;
  wire dest_bl_ready;
  wire dest_burst_info_write;
  wire [3:0]dest_burst_len;
  wire dest_burst_valid;
  wire [3:2]dest_id;
  wire [1:0]dest_id_reduced_next;
  wire dest_mem_data_valid_reg;
  wire [0:0]dest_mem_data_valid_reg_0;
  wire [28:0]dest_req_dest_address;
  wire dest_req_ready;
  wire dest_response_eot;
  wire dest_response_valid;
  wire [4:1]dest_src_burst_length;
  wire fifo_wr_clk;
  wire [31:0]fifo_wr_din;
  wire fifo_wr_en;
  wire fifo_wr_overflow;
  wire fifo_wr_sync;
  wire \i_addr_gen/last_burst_len0 ;
  wire \i_data_mover/active0 ;
  wire i_dest_dma_mm_n_48;
  wire i_dest_req_fifo_n_29;
  wire i_dest_req_fifo_n_30;
  wire i_dest_req_fifo_n_31;
  wire i_dest_req_fifo_n_33;
  wire \i_response_handler/id0 ;
  wire i_src_dest_bl_fifo_n_5;
  wire i_src_dest_bl_fifo_n_7;
  wire i_src_req_fifo_n_35;
  wire i_src_req_fifo_n_37;
  wire i_src_req_fifo_n_38;
  wire i_src_req_fifo_n_42;
  wire i_src_req_fifo_n_43;
  wire i_src_req_fifo_n_44;
  wire i_store_and_forward_n_69;
  wire i_store_and_forward_n_76;
  wire i_store_and_forward_n_81;
  wire i_store_and_forward_n_82;
  wire i_store_and_forward_n_83;
  wire i_store_and_forward_n_84;
  wire i_store_and_forward_n_85;
  wire i_store_and_forward_n_86;
  wire i_store_and_forward_n_87;
  wire [2:1]inc_id2_return;
  wire m_dest_axi_aclk;
  wire [28:0]m_dest_axi_awaddr;
  wire [3:0]m_dest_axi_awlen;
  wire m_dest_axi_awready;
  wire m_dest_axi_bready;
  wire m_dest_axi_bvalid;
  wire [63:0]m_dest_axi_wdata;
  wire m_dest_axi_wlast;
  wire m_dest_axi_wready;
  wire [0:0]m_dest_axi_wstrb;
  wire [5:0]\measured_burst_length_reg[6] ;
  wire [4:0]measured_last_burst_length;
  wire p_0_in13_in;
  wire p_0_in1_in;
  wire p_1_in;
  wire [0:0]p_3_in;
  wire req_ready_reg;
  wire request_eot;
  wire [3:0]request_id;
  wire [7:2]response_data_burst_length;
  wire response_valid_reg;
  wire response_valid_reg_0;
  wire s_axi_aclk;
  wire src_beat_counter0;
  wire src_bl_valid;
  wire src_dest_valid_hs;
  wire src_enable;
  wire src_eot;
  wire [0:0]\src_id_reg[0] ;
  wire src_last_beat__0;
  wire [28:0]src_req_dest_address;
  wire [28:0]src_req_dest_address_cur;
  wire [4:0]src_req_last_burst_length;
  wire src_req_ready;
  wire src_req_sync_transfer_start;
  wire src_req_xlast_cur;
  wire src_throttled_request_id0;
  wire \src_throttled_request_id[0]_i_1_n_0 ;
  wire \src_throttled_request_id[3]_i_2_n_0 ;
  wire \src_throttled_request_id_reg_n_0_[0] ;
  wire \src_throttled_request_id_reg_n_0_[1] ;
  wire src_valid;
  wire up_bl_partial;
  wire up_clear_tl;
  wire [0:0]up_clear_tl_reg;
  wire up_dma_req_valid;
  wire up_eot;
  wire up_response_ready;
  wire \zerodeep.cdc_sync_fifo_ram_reg[67] ;
  wire \zerodeep.s_axis_waddr ;
  wire \zerodeep.s_axis_waddr_reg ;
  wire NLW_eot_mem_dest_reg_r1_0_15_0_0_SPO_UNCONNECTED;
  wire NLW_eot_mem_dest_reg_r2_0_15_0_0_SPO_UNCONNECTED;
  wire NLW_eot_mem_src_reg_0_15_0_0_SPO_UNCONNECTED;

  (* RTL_RAM_BITS = "16" *) 
  (* RTL_RAM_NAME = "i_transfer/i_request_arb/eot_mem_dest_reg_r1" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    eot_mem_dest_reg_r1_0_15_0_0
       (.A0(dbg_ids1[24]),
        .A1(dbg_ids1[25]),
        .A2(dbg_ids1[26]),
        .A3(dbg_ids1[27]),
        .A4(1'b0),
        .D(src_eot),
        .DPO(dest_response_eot),
        .DPRA0(dbg_ids0[24]),
        .DPRA1(dbg_ids0[25]),
        .DPRA2(dbg_ids0[26]),
        .DPRA3(dbg_ids0[27]),
        .DPRA4(1'b0),
        .SPO(NLW_eot_mem_dest_reg_r1_0_15_0_0_SPO_UNCONNECTED),
        .WCLK(fifo_wr_clk),
        .WE(1'b1));
  (* RTL_RAM_BITS = "16" *) 
  (* RTL_RAM_NAME = "i_transfer/i_request_arb/eot_mem_dest_reg_r2" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    eot_mem_dest_reg_r2_0_15_0_0
       (.A0(dbg_ids1[24]),
        .A1(dbg_ids1[25]),
        .A2(dbg_ids1[26]),
        .A3(dbg_ids1[27]),
        .A4(1'b0),
        .D(src_eot),
        .DPO(dest_address_eot),
        .DPRA0(dbg_ids0[8]),
        .DPRA1(dbg_ids0[9]),
        .DPRA2(dbg_ids0[10]),
        .DPRA3(dbg_ids0[11]),
        .DPRA4(1'b0),
        .SPO(NLW_eot_mem_dest_reg_r2_0_15_0_0_SPO_UNCONNECTED),
        .WCLK(fifo_wr_clk),
        .WE(1'b1));
  (* RTL_RAM_BITS = "16" *) 
  (* RTL_RAM_NAME = "i_transfer/i_request_arb/eot_mem_src_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    eot_mem_src_reg_0_15_0_0
       (.A0(request_id[0]),
        .A1(request_id[1]),
        .A2(request_id[2]),
        .A3(request_id[3]),
        .A4(1'b0),
        .D(request_eot),
        .DPO(src_eot),
        .DPRA0(dbg_ids1[24]),
        .DPRA1(dbg_ids1[25]),
        .DPRA2(dbg_ids1[26]),
        .DPRA3(dbg_ids1[27]),
        .DPRA4(1'b0),
        .SPO(NLW_eot_mem_src_reg_0_15_0_0_SPO_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(1'b1));
  icyradio_axi_dmac_rf_rx1_0_dest_axi_mm i_dest_dma_mm
       (.D({response_data_burst_length[6:2],response_data_burst_length[7]}),
        .E(\i_addr_gen/last_burst_len0 ),
        .Q({i_store_and_forward_n_76,dest_burst_len,i_store_and_forward_n_81}),
        .addr_valid_i_2(i_store_and_forward_n_85),
        .addr_valid_i_2_0(i_store_and_forward_n_84),
        .addr_valid_reg(addr_valid_reg),
        .addr_valid_reg_0(i_store_and_forward_n_86),
        .addr_valid_reg_1(i_store_and_forward_n_87),
        .bl_ready_reg(\zerodeep.cdc_sync_fifo_ram_reg[67] ),
        .bl_ready_reg_0(i_src_dest_bl_fifo_n_7),
        .dbg_ids0({dbg_ids0[27:24],dbg_ids0[11:8]}),
        .dbg_status(dbg_status),
        .dest_address_eot(dest_address_eot),
        .dest_bl_ready(dest_bl_ready),
        .dest_burst_info_write(dest_burst_info_write),
        .dest_burst_info_write_i_4({i_store_and_forward_n_69,p_0_in13_in,dest_id_reduced_next}),
        .dest_burst_valid(dest_burst_valid),
        .dest_req_ready(dest_req_ready),
        .dest_response_valid(dest_response_valid),
        .enabled_reg(dest_mem_data_valid_reg_0),
        .id0(\i_response_handler/id0 ),
        .\id_reg[1] (i_dest_dma_mm_n_48),
        .\last_burst_len_reg[3] (dest_src_burst_length),
        .m_dest_axi_aclk(m_dest_axi_aclk),
        .m_dest_axi_awaddr(m_dest_axi_awaddr),
        .m_dest_axi_awlen(m_dest_axi_awlen),
        .m_dest_axi_awready(m_dest_axi_awready),
        .m_dest_axi_bvalid(m_dest_axi_bvalid),
        .out(dest_req_dest_address),
        .req_ready_reg(i_dest_req_fifo_n_29),
        .req_ready_reg_0(i_dest_req_fifo_n_30),
        .\zerodeep.axis_data_d_reg[1] ({dest_id,dbg_ids0[17:16]}));
  icyradio_axi_dmac_rf_rx1_0_util_axis_fifo__parameterized1 i_dest_req_fifo
       (.D({src_req_dest_address_cur,src_req_xlast_cur}),
        .active0(\i_data_mover/active0 ),
        .\cdc_sync_stage1_reg[0] (\src_id_reg[0] ),
        .\cdc_sync_stage2_reg[0] (i_dest_req_fifo_n_29),
        .\cdc_sync_stage2_reg[0]_0 (i_dest_req_fifo_n_31),
        .\cdc_sync_stage2_reg[0]_1 (i_dest_req_fifo_n_33),
        .\cdc_sync_stage2_reg[0]_2 (dest_mem_data_valid_reg_0),
        .dest_req_ready(dest_req_ready),
        .fifo_wr_clk(fifo_wr_clk),
        .m_dest_axi_aclk(m_dest_axi_aclk),
        .out(dest_req_dest_address),
        .src_dest_valid_hs(src_dest_valid_hs),
        .src_req_ready(src_req_ready),
        .\zerodeep.m_axis_raddr_reg_0 (i_dest_req_fifo_n_30),
        .\zerodeep.m_axis_raddr_reg_1 (i_src_req_fifo_n_37),
        .\zerodeep.m_axis_raddr_reg_2 (i_src_req_fifo_n_38));
  icyradio_axi_dmac_rf_rx1_0_request_generator i_req_gen
       (.D(D[0]),
        .E(E),
        .\FSM_sequential_state[0]_i_5_0 (\zerodeep.s_axis_waddr_reg ),
        .\FSM_sequential_state[0]_i_5_1 (\cdc_sync_stage2_reg[0] ),
        .\FSM_sequential_state_reg[0]_0 (\zerodeep.cdc_sync_fifo_ram_reg[67] ),
        .\FSM_sequential_state_reg[0]_1 (\cdc_sync_stage2_reg[0]_0 ),
        .Q(Q),
        .\burst_count_reg[16]_0 (\burst_count_reg[16] ),
        .cur_transfer_id(cur_transfer_id),
        .cur_transfer_id_reg_0(i_src_req_fifo_n_43),
        .dbg_ids0(dbg_ids0[27:24]),
        .\id_reg[3]_0 (request_id),
        .req_ready_reg_0(req_ready_reg),
        .req_ready_reg_1(i_src_req_fifo_n_42),
        .request_eot(request_eot),
        .s_axi_aclk(s_axi_aclk),
        .up_dma_req_valid(up_dma_req_valid));
  icyradio_axi_dmac_rf_rx1_0_axi_dmac_response_manager i_response_manager
       (.D({response_data_burst_length[6:2],response_data_burst_length[7],dest_response_eot}),
        .\FSM_sequential_state_reg[0]_0 (\FSM_sequential_state_reg[0] ),
        .Q(Q),
        .dest_response_valid(dest_response_valid),
        .id0(\i_response_handler/id0 ),
        .\id_reg[0] (i_dest_dma_mm_n_48),
        .m_dest_axi_aclk(m_dest_axi_aclk),
        .m_dest_axi_bready(m_dest_axi_bready),
        .m_dest_axi_bvalid(m_dest_axi_bvalid),
        .\measured_burst_length_reg[6]_0 (\measured_burst_length_reg[6] ),
        .p_3_in(p_3_in),
        .response_valid_reg_0(response_valid_reg),
        .response_valid_reg_1(response_valid_reg_0),
        .s_axi_aclk(s_axi_aclk),
        .up_bl_partial(up_bl_partial),
        .up_clear_tl(up_clear_tl),
        .up_clear_tl_reg(up_clear_tl_reg),
        .up_eot(up_eot),
        .up_response_ready(up_response_ready),
        .\zerodeep.axis_valid_d_reg (dest_mem_data_valid_reg_0));
  icyradio_axi_dmac_rf_rx1_0_util_axis_fifo__parameterized0 i_src_dest_bl_fifo
       (.E(\i_addr_gen/last_burst_len0 ),
        .Q(measured_last_burst_length),
        .\cdc_sync_stage1_reg[0] (dest_mem_data_valid_reg_0),
        .\cdc_sync_stage1_reg[0]_0 (\src_id_reg[0] ),
        .\cdc_sync_stage2_reg[0] (i_src_dest_bl_fifo_n_5),
        .\cdc_sync_stage2_reg[0]_0 (i_src_dest_bl_fifo_n_7),
        .dest_bl_ready(dest_bl_ready),
        .fifo_wr_clk(fifo_wr_clk),
        .m_dest_axi_aclk(m_dest_axi_aclk),
        .out(dest_src_burst_length),
        .src_bl_valid(src_bl_valid),
        .\zerodeep.s_axis_waddr (\zerodeep.s_axis_waddr ));
  icyradio_axi_dmac_rf_rx1_0_src_fifo_inf i_src_dma_fifo
       (.E(\i_data_mover/active0 ),
        .Q({p_1_in,p_0_in1_in,\src_throttled_request_id_reg_n_0_[1] ,\src_throttled_request_id_reg_n_0_[0] }),
        .SR(src_beat_counter0),
        .active_reg(active_reg),
        .active_reg_0(\src_id_reg[0] ),
        .bl_valid_reg(i_src_dest_bl_fifo_n_5),
        .dbg_ids1(dbg_ids1),
        .fifo_wr_clk(fifo_wr_clk),
        .fifo_wr_en(fifo_wr_en),
        .fifo_wr_overflow(fifo_wr_overflow),
        .fifo_wr_sync(fifo_wr_sync),
        .last_eot_reg(i_src_req_fifo_n_44),
        .\measured_last_burst_length_reg[4] (measured_last_burst_length),
        .out({src_req_last_burst_length,src_req_sync_transfer_start}),
        .src_bl_valid(src_bl_valid),
        .src_enable(src_enable),
        .src_eot(src_eot),
        .src_last_beat__0(src_last_beat__0),
        .src_req_ready(src_req_ready),
        .src_valid(src_valid),
        .\zerodeep.s_axis_waddr (\zerodeep.s_axis_waddr ));
  icyradio_axi_dmac_rf_rx1_0_util_axis_fifo__parameterized2 i_src_req_fifo
       (.D(D),
        .E(E),
        .Q(Q),
        .\cdc_sync_stage1_reg[0] (\src_id_reg[0] ),
        .\cdc_sync_stage2_reg[0] (i_src_req_fifo_n_37),
        .\cdc_sync_stage2_reg[0]_0 (\cdc_sync_stage2_reg[0] ),
        .\cdc_sync_stage2_reg[0]_1 (\cdc_sync_stage2_reg[0]_0 ),
        .\cdc_sync_stage2_reg[0]_2 (i_src_req_fifo_n_43),
        .cur_transfer_id(cur_transfer_id),
        .fifo_wr_clk(fifo_wr_clk),
        .out({src_req_dest_address,src_req_last_burst_length,src_req_sync_transfer_start,i_src_req_fifo_n_35}),
        .s_axi_aclk(s_axi_aclk),
        .up_dma_req_valid(up_dma_req_valid),
        .up_dma_req_valid_reg(i_src_req_fifo_n_42),
        .\zerodeep.cdc_sync_fifo_ram_reg[67]_0 (\zerodeep.cdc_sync_fifo_ram_reg[67] ),
        .\zerodeep.cdc_sync_fifo_ram_reg[67]_1 (req_ready_reg),
        .\zerodeep.cdc_sync_fifo_ram_reg[7]_0 (i_src_req_fifo_n_44),
        .\zerodeep.m_axis_raddr_reg_0 (i_src_req_fifo_n_38),
        .\zerodeep.m_axis_raddr_reg_1 (i_dest_req_fifo_n_33),
        .\zerodeep.s_axis_waddr_reg_0 (\zerodeep.s_axis_waddr_reg ));
  icyradio_axi_dmac_rf_rx1_0_axi_dmac_burst_memory i_store_and_forward
       (.E(src_valid),
        .Q({dest_id,dbg_ids0[17:16]}),
        .SR(src_beat_counter0),
        .\cdc_sync_stage2_reg[0] (i_store_and_forward_n_87),
        .\cdc_sync_stage2_reg[1] (i_store_and_forward_n_86),
        .\cdc_sync_stage2_reg[2] (i_store_and_forward_n_85),
        .\cdc_sync_stage2_reg[3] (i_store_and_forward_n_84),
        .dest_burst_info_write(dest_burst_info_write),
        .\dest_burst_len_data_reg[7]_0 ({i_store_and_forward_n_76,dest_burst_len,i_store_and_forward_n_81}),
        .dest_burst_valid(dest_burst_valid),
        .\dest_id_next_reg[3]_0 ({i_store_and_forward_n_69,p_0_in13_in,dest_id_reduced_next}),
        .dest_mem_data_valid_reg_0(dest_mem_data_valid_reg),
        .dest_mem_data_valid_reg_1(dest_mem_data_valid_reg_0),
        .fifo_wr_clk(fifo_wr_clk),
        .fifo_wr_din(fifo_wr_din),
        .m_dest_axi_aclk(m_dest_axi_aclk),
        .m_dest_axi_wdata(m_dest_axi_wdata),
        .m_dest_axi_wlast(m_dest_axi_wlast),
        .m_dest_axi_wready(m_dest_axi_wready),
        .m_dest_axi_wstrb(m_dest_axi_wstrb),
        .\src_id_reg[0]_0 (\src_id_reg[0] ),
        .src_last_beat__0(src_last_beat__0),
        .\src_throttled_request_id_reg[0] (i_store_and_forward_n_83),
        .\src_throttled_request_id_reg[0]_0 ({p_1_in,p_0_in1_in,\src_throttled_request_id_reg_n_0_[1] ,\src_throttled_request_id_reg_n_0_[0] }),
        .\src_throttled_request_id_reg[2] (i_store_and_forward_n_82));
  icyradio_axi_dmac_rf_rx1_0_sync_bits__parameterized1 i_sync_src_request_id
       (.E(src_throttled_request_id0),
        .Q({p_1_in,p_0_in1_in,\src_throttled_request_id_reg_n_0_[1] ,\src_throttled_request_id_reg_n_0_[0] }),
        .\cdc_sync_stage1_reg[3]_0 (request_id),
        .fifo_wr_clk(fifo_wr_clk),
        .\src_throttled_request_id_reg[0] (i_store_and_forward_n_82),
        .\src_throttled_request_id_reg[0]_0 (i_store_and_forward_n_83));
  FDRE #(
    .INIT(1'b0)) 
    src_dest_valid_hs_reg
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(i_dest_req_fifo_n_31),
        .Q(src_dest_valid_hs),
        .R(\src_id_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \src_req_dest_address_cur_reg[0] 
       (.C(fifo_wr_clk),
        .CE(\i_data_mover/active0 ),
        .D(src_req_dest_address[0]),
        .Q(src_req_dest_address_cur[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_req_dest_address_cur_reg[10] 
       (.C(fifo_wr_clk),
        .CE(\i_data_mover/active0 ),
        .D(src_req_dest_address[10]),
        .Q(src_req_dest_address_cur[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_req_dest_address_cur_reg[11] 
       (.C(fifo_wr_clk),
        .CE(\i_data_mover/active0 ),
        .D(src_req_dest_address[11]),
        .Q(src_req_dest_address_cur[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_req_dest_address_cur_reg[12] 
       (.C(fifo_wr_clk),
        .CE(\i_data_mover/active0 ),
        .D(src_req_dest_address[12]),
        .Q(src_req_dest_address_cur[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_req_dest_address_cur_reg[13] 
       (.C(fifo_wr_clk),
        .CE(\i_data_mover/active0 ),
        .D(src_req_dest_address[13]),
        .Q(src_req_dest_address_cur[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_req_dest_address_cur_reg[14] 
       (.C(fifo_wr_clk),
        .CE(\i_data_mover/active0 ),
        .D(src_req_dest_address[14]),
        .Q(src_req_dest_address_cur[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_req_dest_address_cur_reg[15] 
       (.C(fifo_wr_clk),
        .CE(\i_data_mover/active0 ),
        .D(src_req_dest_address[15]),
        .Q(src_req_dest_address_cur[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_req_dest_address_cur_reg[16] 
       (.C(fifo_wr_clk),
        .CE(\i_data_mover/active0 ),
        .D(src_req_dest_address[16]),
        .Q(src_req_dest_address_cur[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_req_dest_address_cur_reg[17] 
       (.C(fifo_wr_clk),
        .CE(\i_data_mover/active0 ),
        .D(src_req_dest_address[17]),
        .Q(src_req_dest_address_cur[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_req_dest_address_cur_reg[18] 
       (.C(fifo_wr_clk),
        .CE(\i_data_mover/active0 ),
        .D(src_req_dest_address[18]),
        .Q(src_req_dest_address_cur[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_req_dest_address_cur_reg[19] 
       (.C(fifo_wr_clk),
        .CE(\i_data_mover/active0 ),
        .D(src_req_dest_address[19]),
        .Q(src_req_dest_address_cur[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_req_dest_address_cur_reg[1] 
       (.C(fifo_wr_clk),
        .CE(\i_data_mover/active0 ),
        .D(src_req_dest_address[1]),
        .Q(src_req_dest_address_cur[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_req_dest_address_cur_reg[20] 
       (.C(fifo_wr_clk),
        .CE(\i_data_mover/active0 ),
        .D(src_req_dest_address[20]),
        .Q(src_req_dest_address_cur[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_req_dest_address_cur_reg[21] 
       (.C(fifo_wr_clk),
        .CE(\i_data_mover/active0 ),
        .D(src_req_dest_address[21]),
        .Q(src_req_dest_address_cur[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_req_dest_address_cur_reg[22] 
       (.C(fifo_wr_clk),
        .CE(\i_data_mover/active0 ),
        .D(src_req_dest_address[22]),
        .Q(src_req_dest_address_cur[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_req_dest_address_cur_reg[23] 
       (.C(fifo_wr_clk),
        .CE(\i_data_mover/active0 ),
        .D(src_req_dest_address[23]),
        .Q(src_req_dest_address_cur[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_req_dest_address_cur_reg[24] 
       (.C(fifo_wr_clk),
        .CE(\i_data_mover/active0 ),
        .D(src_req_dest_address[24]),
        .Q(src_req_dest_address_cur[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_req_dest_address_cur_reg[25] 
       (.C(fifo_wr_clk),
        .CE(\i_data_mover/active0 ),
        .D(src_req_dest_address[25]),
        .Q(src_req_dest_address_cur[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_req_dest_address_cur_reg[26] 
       (.C(fifo_wr_clk),
        .CE(\i_data_mover/active0 ),
        .D(src_req_dest_address[26]),
        .Q(src_req_dest_address_cur[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_req_dest_address_cur_reg[27] 
       (.C(fifo_wr_clk),
        .CE(\i_data_mover/active0 ),
        .D(src_req_dest_address[27]),
        .Q(src_req_dest_address_cur[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_req_dest_address_cur_reg[28] 
       (.C(fifo_wr_clk),
        .CE(\i_data_mover/active0 ),
        .D(src_req_dest_address[28]),
        .Q(src_req_dest_address_cur[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_req_dest_address_cur_reg[2] 
       (.C(fifo_wr_clk),
        .CE(\i_data_mover/active0 ),
        .D(src_req_dest_address[2]),
        .Q(src_req_dest_address_cur[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_req_dest_address_cur_reg[3] 
       (.C(fifo_wr_clk),
        .CE(\i_data_mover/active0 ),
        .D(src_req_dest_address[3]),
        .Q(src_req_dest_address_cur[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_req_dest_address_cur_reg[4] 
       (.C(fifo_wr_clk),
        .CE(\i_data_mover/active0 ),
        .D(src_req_dest_address[4]),
        .Q(src_req_dest_address_cur[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_req_dest_address_cur_reg[5] 
       (.C(fifo_wr_clk),
        .CE(\i_data_mover/active0 ),
        .D(src_req_dest_address[5]),
        .Q(src_req_dest_address_cur[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_req_dest_address_cur_reg[6] 
       (.C(fifo_wr_clk),
        .CE(\i_data_mover/active0 ),
        .D(src_req_dest_address[6]),
        .Q(src_req_dest_address_cur[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_req_dest_address_cur_reg[7] 
       (.C(fifo_wr_clk),
        .CE(\i_data_mover/active0 ),
        .D(src_req_dest_address[7]),
        .Q(src_req_dest_address_cur[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_req_dest_address_cur_reg[8] 
       (.C(fifo_wr_clk),
        .CE(\i_data_mover/active0 ),
        .D(src_req_dest_address[8]),
        .Q(src_req_dest_address_cur[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_req_dest_address_cur_reg[9] 
       (.C(fifo_wr_clk),
        .CE(\i_data_mover/active0 ),
        .D(src_req_dest_address[9]),
        .Q(src_req_dest_address_cur[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    src_req_xlast_cur_reg
       (.C(fifo_wr_clk),
        .CE(\i_data_mover/active0 ),
        .D(i_src_req_fifo_n_35),
        .Q(src_req_xlast_cur),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \src_throttled_request_id[0]_i_1 
       (.I0(\src_throttled_request_id_reg_n_0_[1] ),
        .I1(p_1_in),
        .I2(p_0_in1_in),
        .O(\src_throttled_request_id[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'h99F0)) 
    \src_throttled_request_id[1]_i_1 
       (.I0(p_0_in1_in),
        .I1(p_1_in),
        .I2(\src_throttled_request_id_reg_n_0_[1] ),
        .I3(\src_throttled_request_id_reg_n_0_[0] ),
        .O(inc_id2_return[1]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'hD1F0)) 
    \src_throttled_request_id[2]_i_1 
       (.I0(p_1_in),
        .I1(\src_throttled_request_id_reg_n_0_[0] ),
        .I2(p_0_in1_in),
        .I3(\src_throttled_request_id_reg_n_0_[1] ),
        .O(inc_id2_return[2]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'hFE04)) 
    \src_throttled_request_id[3]_i_2 
       (.I0(\src_throttled_request_id_reg_n_0_[1] ),
        .I1(p_0_in1_in),
        .I2(\src_throttled_request_id_reg_n_0_[0] ),
        .I3(p_1_in),
        .O(\src_throttled_request_id[3]_i_2_n_0 ));
  FDRE \src_throttled_request_id_reg[0] 
       (.C(fifo_wr_clk),
        .CE(src_throttled_request_id0),
        .D(\src_throttled_request_id[0]_i_1_n_0 ),
        .Q(\src_throttled_request_id_reg_n_0_[0] ),
        .R(\src_id_reg[0] ));
  FDRE \src_throttled_request_id_reg[1] 
       (.C(fifo_wr_clk),
        .CE(src_throttled_request_id0),
        .D(inc_id2_return[1]),
        .Q(\src_throttled_request_id_reg_n_0_[1] ),
        .R(\src_id_reg[0] ));
  FDRE \src_throttled_request_id_reg[2] 
       (.C(fifo_wr_clk),
        .CE(src_throttled_request_id0),
        .D(inc_id2_return[2]),
        .Q(p_0_in1_in),
        .R(\src_id_reg[0] ));
  FDRE \src_throttled_request_id_reg[3] 
       (.C(fifo_wr_clk),
        .CE(src_throttled_request_id0),
        .D(\src_throttled_request_id[3]_i_2_n_0 ),
        .Q(p_1_in),
        .R(\src_id_reg[0] ));
endmodule

(* ORIG_REF_NAME = "request_generator" *) 
module icyradio_axi_dmac_rf_rx1_0_request_generator
   (req_ready_reg_0,
    cur_transfer_id,
    \id_reg[3]_0 ,
    request_eot,
    Q,
    s_axi_aclk,
    E,
    D,
    cur_transfer_id_reg_0,
    \FSM_sequential_state_reg[0]_0 ,
    dbg_ids0,
    req_ready_reg_1,
    up_dma_req_valid,
    \FSM_sequential_state[0]_i_5_0 ,
    \FSM_sequential_state[0]_i_5_1 ,
    \FSM_sequential_state_reg[0]_1 ,
    \burst_count_reg[16]_0 );
  output req_ready_reg_0;
  output cur_transfer_id;
  output [3:0]\id_reg[3]_0 ;
  output request_eot;
  input [0:0]Q;
  input s_axi_aclk;
  input [0:0]E;
  input [0:0]D;
  input cur_transfer_id_reg_0;
  input \FSM_sequential_state_reg[0]_0 ;
  input [3:0]dbg_ids0;
  input req_ready_reg_1;
  input up_dma_req_valid;
  input \FSM_sequential_state[0]_i_5_0 ;
  input \FSM_sequential_state[0]_i_5_1 ;
  input \FSM_sequential_state_reg[0]_1 ;
  input [16:0]\burst_count_reg[16]_0 ;

  wire [0:0]D;
  wire [0:0]E;
  wire \FSM_sequential_state[0]_i_10_n_0 ;
  wire \FSM_sequential_state[0]_i_11_n_0 ;
  wire \FSM_sequential_state[0]_i_12_n_0 ;
  wire \FSM_sequential_state[0]_i_13_n_0 ;
  wire \FSM_sequential_state[0]_i_14_n_0 ;
  wire \FSM_sequential_state[0]_i_15_n_0 ;
  wire \FSM_sequential_state[0]_i_16_n_0 ;
  wire \FSM_sequential_state[0]_i_17_n_0 ;
  wire \FSM_sequential_state[0]_i_18_n_0 ;
  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[0]_i_3_n_0 ;
  wire \FSM_sequential_state[0]_i_4_n_0 ;
  wire \FSM_sequential_state[0]_i_5_0 ;
  wire \FSM_sequential_state[0]_i_5_1 ;
  wire \FSM_sequential_state[0]_i_5_n_0 ;
  wire \FSM_sequential_state[0]_i_6_n_0 ;
  wire \FSM_sequential_state[0]_i_7_n_0 ;
  wire \FSM_sequential_state[0]_i_8_n_0 ;
  wire \FSM_sequential_state[0]_i_9_n_0 ;
  wire \FSM_sequential_state_reg[0]_0 ;
  wire \FSM_sequential_state_reg[0]_1 ;
  wire [0:0]Q;
  wire [16:0]burst_count;
  wire burst_count0_carry__0_i_1_n_0;
  wire burst_count0_carry__0_i_2_n_0;
  wire burst_count0_carry__0_i_3_n_0;
  wire burst_count0_carry__0_i_4_n_0;
  wire burst_count0_carry__0_n_0;
  wire burst_count0_carry__0_n_1;
  wire burst_count0_carry__0_n_2;
  wire burst_count0_carry__0_n_3;
  wire burst_count0_carry__1_i_1_n_0;
  wire burst_count0_carry__1_i_2_n_0;
  wire burst_count0_carry__1_i_3_n_0;
  wire burst_count0_carry__1_i_4_n_0;
  wire burst_count0_carry__1_n_0;
  wire burst_count0_carry__1_n_1;
  wire burst_count0_carry__1_n_2;
  wire burst_count0_carry__1_n_3;
  wire burst_count0_carry__2_i_1_n_0;
  wire burst_count0_carry__2_i_2_n_0;
  wire burst_count0_carry__2_i_3_n_0;
  wire burst_count0_carry__2_i_4_n_0;
  wire burst_count0_carry__2_n_1;
  wire burst_count0_carry__2_n_2;
  wire burst_count0_carry__2_n_3;
  wire burst_count0_carry_i_1_n_0;
  wire burst_count0_carry_i_2_n_0;
  wire burst_count0_carry_i_3_n_0;
  wire burst_count0_carry_i_4_n_0;
  wire burst_count0_carry_n_0;
  wire burst_count0_carry_n_1;
  wire burst_count0_carry_n_2;
  wire burst_count0_carry_n_3;
  wire \burst_count[0]_i_1_n_0 ;
  wire \burst_count[10]_i_1_n_0 ;
  wire \burst_count[11]_i_1_n_0 ;
  wire \burst_count[12]_i_1_n_0 ;
  wire \burst_count[13]_i_1_n_0 ;
  wire \burst_count[14]_i_1_n_0 ;
  wire \burst_count[15]_i_1_n_0 ;
  wire \burst_count[16]_i_2_n_0 ;
  wire \burst_count[1]_i_1_n_0 ;
  wire \burst_count[2]_i_1_n_0 ;
  wire \burst_count[3]_i_1_n_0 ;
  wire \burst_count[4]_i_1_n_0 ;
  wire \burst_count[5]_i_1_n_0 ;
  wire \burst_count[6]_i_1_n_0 ;
  wire \burst_count[7]_i_1_n_0 ;
  wire \burst_count[8]_i_1_n_0 ;
  wire \burst_count[9]_i_1_n_0 ;
  wire burst_count_0;
  wire [16:0]\burst_count_reg[16]_0 ;
  wire completion_req_last;
  wire cur_transfer_id;
  wire cur_transfer_id_reg_0;
  wire [3:0]dbg_ids0;
  wire eot_mem_src_reg_0_15_0_0_i_2_n_0;
  wire eot_mem_src_reg_0_15_0_0_i_3_n_0;
  wire eot_mem_src_reg_0_15_0_0_i_4_n_0;
  wire eot_mem_src_reg_0_15_0_0_i_5_n_0;
  wire eot_mem_src_reg_0_15_0_0_i_6_n_0;
  wire \id[0]_i_1__0_n_0 ;
  wire \id[1]_i_1_n_0 ;
  wire \id[2]_i_1_n_0 ;
  wire \id[3]_i_1__0_n_0 ;
  wire \id[3]_i_2_n_0 ;
  wire \id[3]_i_3_n_0 ;
  wire \id[3]_i_4_n_0 ;
  wire \id[3]_i_5_n_0 ;
  wire [3:0]\id_reg[3]_0 ;
  wire [16:1]in10;
  wire [0:0]nx_state__0;
  wire req_ready_i_1_n_0;
  wire req_ready_reg_0;
  wire req_ready_reg_1;
  wire request_eot;
  wire s_axi_aclk;
  wire [0:0]state;
  wire up_dma_req_valid;
  wire [3:3]NLW_burst_count0_carry__2_CO_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFEE)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(\FSM_sequential_state[0]_i_2_n_0 ),
        .I1(\FSM_sequential_state[0]_i_3_n_0 ),
        .I2(\FSM_sequential_state_reg[0]_0 ),
        .I3(state),
        .I4(\FSM_sequential_state[0]_i_4_n_0 ),
        .I5(\FSM_sequential_state[0]_i_5_n_0 ),
        .O(nx_state__0));
  LUT6 #(
    .INIT(64'h800C000080000000)) 
    \FSM_sequential_state[0]_i_10 
       (.I0(\FSM_sequential_state[0]_i_16_n_0 ),
        .I1(\FSM_sequential_state[0]_i_14_n_0 ),
        .I2(dbg_ids0[1]),
        .I3(\FSM_sequential_state[0]_i_17_n_0 ),
        .I4(\id_reg[3]_0 [0]),
        .I5(\FSM_sequential_state[0]_i_18_n_0 ),
        .O(\FSM_sequential_state[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \FSM_sequential_state[0]_i_11 
       (.I0(\id_reg[3]_0 [3]),
        .I1(dbg_ids0[3]),
        .I2(\id_reg[3]_0 [2]),
        .I3(dbg_ids0[2]),
        .I4(dbg_ids0[0]),
        .I5(\FSM_sequential_state[0]_i_15_n_0 ),
        .O(\FSM_sequential_state[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \FSM_sequential_state[0]_i_12 
       (.I0(\id_reg[3]_0 [3]),
        .I1(dbg_ids0[3]),
        .I2(dbg_ids0[2]),
        .I3(\id_reg[3]_0 [2]),
        .I4(dbg_ids0[0]),
        .I5(\FSM_sequential_state[0]_i_15_n_0 ),
        .O(\FSM_sequential_state[0]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \FSM_sequential_state[0]_i_13 
       (.I0(completion_req_last),
        .I1(state),
        .I2(\FSM_sequential_state_reg[0]_1 ),
        .O(\FSM_sequential_state[0]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAEA2AAAAA2A)) 
    \FSM_sequential_state[0]_i_14 
       (.I0(state),
        .I1(up_dma_req_valid),
        .I2(req_ready_reg_0),
        .I3(\FSM_sequential_state[0]_i_5_0 ),
        .I4(\FSM_sequential_state[0]_i_5_1 ),
        .I5(\FSM_sequential_state_reg[0]_0 ),
        .O(\FSM_sequential_state[0]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_state[0]_i_15 
       (.I0(\id_reg[3]_0 [0]),
        .I1(\id_reg[3]_0 [1]),
        .O(\FSM_sequential_state[0]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h8001)) 
    \FSM_sequential_state[0]_i_16 
       (.I0(\id_reg[3]_0 [2]),
        .I1(dbg_ids0[2]),
        .I2(\id_reg[3]_0 [3]),
        .I3(dbg_ids0[3]),
        .O(\FSM_sequential_state[0]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_sequential_state[0]_i_17 
       (.I0(\id_reg[3]_0 [1]),
        .I1(dbg_ids0[0]),
        .O(\FSM_sequential_state[0]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h1008)) 
    \FSM_sequential_state[0]_i_18 
       (.I0(\id_reg[3]_0 [2]),
        .I1(dbg_ids0[2]),
        .I2(\id_reg[3]_0 [3]),
        .I3(dbg_ids0[3]),
        .O(\FSM_sequential_state[0]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h2000000000000080)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(\FSM_sequential_state[0]_i_6_n_0 ),
        .I1(\FSM_sequential_state[0]_i_7_n_0 ),
        .I2(\FSM_sequential_state[0]_i_8_n_0 ),
        .I3(dbg_ids0[3]),
        .I4(\id_reg[3]_0 [2]),
        .I5(dbg_ids0[2]),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \FSM_sequential_state[0]_i_3 
       (.I0(cur_transfer_id),
        .I1(state),
        .I2(\FSM_sequential_state_reg[0]_1 ),
        .O(\FSM_sequential_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF808F8000)) 
    \FSM_sequential_state[0]_i_4 
       (.I0(\FSM_sequential_state[0]_i_9_n_0 ),
        .I1(dbg_ids0[1]),
        .I2(state),
        .I3(req_ready_reg_1),
        .I4(\FSM_sequential_state_reg[0]_0 ),
        .I5(\FSM_sequential_state[0]_i_10_n_0 ),
        .O(\FSM_sequential_state[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF00FFC8FF00)) 
    \FSM_sequential_state[0]_i_5 
       (.I0(\FSM_sequential_state[0]_i_11_n_0 ),
        .I1(dbg_ids0[1]),
        .I2(\FSM_sequential_state[0]_i_12_n_0 ),
        .I3(\FSM_sequential_state[0]_i_13_n_0 ),
        .I4(\FSM_sequential_state[0]_i_14_n_0 ),
        .I5(eot_mem_src_reg_0_15_0_0_i_2_n_0),
        .O(\FSM_sequential_state[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_state[0]_i_6 
       (.I0(\FSM_sequential_state[0]_i_14_n_0 ),
        .I1(dbg_ids0[1]),
        .O(\FSM_sequential_state[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_sequential_state[0]_i_7 
       (.I0(\id_reg[3]_0 [3]),
        .I1(dbg_ids0[0]),
        .O(\FSM_sequential_state[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_state[0]_i_8 
       (.I0(\id_reg[3]_0 [0]),
        .I1(\id_reg[3]_0 [1]),
        .O(\FSM_sequential_state[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0004000000004000)) 
    \FSM_sequential_state[0]_i_9 
       (.I0(\FSM_sequential_state[0]_i_15_n_0 ),
        .I1(dbg_ids0[0]),
        .I2(dbg_ids0[3]),
        .I3(\id_reg[3]_0 [3]),
        .I4(dbg_ids0[2]),
        .I5(\id_reg[3]_0 [2]),
        .O(\FSM_sequential_state[0]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "STATE_REWIND_ID:010,STATE_GEN_ID:001,STATE_WAIT_LAST:100,STATE_IDLE:000,STATE_CONSUME:011" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(nx_state__0),
        .Q(state),
        .R(Q));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 burst_count0_carry
       (.CI(1'b0),
        .CO({burst_count0_carry_n_0,burst_count0_carry_n_1,burst_count0_carry_n_2,burst_count0_carry_n_3}),
        .CYINIT(burst_count[0]),
        .DI(burst_count[4:1]),
        .O(in10[4:1]),
        .S({burst_count0_carry_i_1_n_0,burst_count0_carry_i_2_n_0,burst_count0_carry_i_3_n_0,burst_count0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 burst_count0_carry__0
       (.CI(burst_count0_carry_n_0),
        .CO({burst_count0_carry__0_n_0,burst_count0_carry__0_n_1,burst_count0_carry__0_n_2,burst_count0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(burst_count[8:5]),
        .O(in10[8:5]),
        .S({burst_count0_carry__0_i_1_n_0,burst_count0_carry__0_i_2_n_0,burst_count0_carry__0_i_3_n_0,burst_count0_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    burst_count0_carry__0_i_1
       (.I0(burst_count[8]),
        .O(burst_count0_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    burst_count0_carry__0_i_2
       (.I0(burst_count[7]),
        .O(burst_count0_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    burst_count0_carry__0_i_3
       (.I0(burst_count[6]),
        .O(burst_count0_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    burst_count0_carry__0_i_4
       (.I0(burst_count[5]),
        .O(burst_count0_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 burst_count0_carry__1
       (.CI(burst_count0_carry__0_n_0),
        .CO({burst_count0_carry__1_n_0,burst_count0_carry__1_n_1,burst_count0_carry__1_n_2,burst_count0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(burst_count[12:9]),
        .O(in10[12:9]),
        .S({burst_count0_carry__1_i_1_n_0,burst_count0_carry__1_i_2_n_0,burst_count0_carry__1_i_3_n_0,burst_count0_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    burst_count0_carry__1_i_1
       (.I0(burst_count[12]),
        .O(burst_count0_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    burst_count0_carry__1_i_2
       (.I0(burst_count[11]),
        .O(burst_count0_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    burst_count0_carry__1_i_3
       (.I0(burst_count[10]),
        .O(burst_count0_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    burst_count0_carry__1_i_4
       (.I0(burst_count[9]),
        .O(burst_count0_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 burst_count0_carry__2
       (.CI(burst_count0_carry__1_n_0),
        .CO({NLW_burst_count0_carry__2_CO_UNCONNECTED[3],burst_count0_carry__2_n_1,burst_count0_carry__2_n_2,burst_count0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,burst_count[15:13]}),
        .O(in10[16:13]),
        .S({burst_count0_carry__2_i_1_n_0,burst_count0_carry__2_i_2_n_0,burst_count0_carry__2_i_3_n_0,burst_count0_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    burst_count0_carry__2_i_1
       (.I0(burst_count[16]),
        .O(burst_count0_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    burst_count0_carry__2_i_2
       (.I0(burst_count[15]),
        .O(burst_count0_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    burst_count0_carry__2_i_3
       (.I0(burst_count[14]),
        .O(burst_count0_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    burst_count0_carry__2_i_4
       (.I0(burst_count[13]),
        .O(burst_count0_carry__2_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    burst_count0_carry_i_1
       (.I0(burst_count[4]),
        .O(burst_count0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    burst_count0_carry_i_2
       (.I0(burst_count[3]),
        .O(burst_count0_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    burst_count0_carry_i_3
       (.I0(burst_count[2]),
        .O(burst_count0_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    burst_count0_carry_i_4
       (.I0(burst_count[1]),
        .O(burst_count0_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h3A)) 
    \burst_count[0]_i_1 
       (.I0(\burst_count_reg[16]_0 [0]),
        .I1(burst_count[0]),
        .I2(state),
        .O(\burst_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \burst_count[10]_i_1 
       (.I0(\burst_count_reg[16]_0 [10]),
        .I1(in10[10]),
        .I2(state),
        .O(\burst_count[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \burst_count[11]_i_1 
       (.I0(\burst_count_reg[16]_0 [11]),
        .I1(in10[11]),
        .I2(state),
        .O(\burst_count[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \burst_count[12]_i_1 
       (.I0(\burst_count_reg[16]_0 [12]),
        .I1(in10[12]),
        .I2(state),
        .O(\burst_count[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \burst_count[13]_i_1 
       (.I0(\burst_count_reg[16]_0 [13]),
        .I1(in10[13]),
        .I2(state),
        .O(\burst_count[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \burst_count[14]_i_1 
       (.I0(\burst_count_reg[16]_0 [14]),
        .I1(in10[14]),
        .I2(state),
        .O(\burst_count[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \burst_count[15]_i_1 
       (.I0(\burst_count_reg[16]_0 [15]),
        .I1(in10[15]),
        .I2(state),
        .O(\burst_count[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8F)) 
    \burst_count[16]_i_1 
       (.I0(\id[3]_i_3_n_0 ),
        .I1(\FSM_sequential_state_reg[0]_0 ),
        .I2(state),
        .O(burst_count_0));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \burst_count[16]_i_2 
       (.I0(\burst_count_reg[16]_0 [16]),
        .I1(in10[16]),
        .I2(state),
        .O(\burst_count[16]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \burst_count[1]_i_1 
       (.I0(\burst_count_reg[16]_0 [1]),
        .I1(in10[1]),
        .I2(state),
        .O(\burst_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \burst_count[2]_i_1 
       (.I0(\burst_count_reg[16]_0 [2]),
        .I1(in10[2]),
        .I2(state),
        .O(\burst_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \burst_count[3]_i_1 
       (.I0(\burst_count_reg[16]_0 [3]),
        .I1(in10[3]),
        .I2(state),
        .O(\burst_count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \burst_count[4]_i_1 
       (.I0(\burst_count_reg[16]_0 [4]),
        .I1(in10[4]),
        .I2(state),
        .O(\burst_count[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \burst_count[5]_i_1 
       (.I0(\burst_count_reg[16]_0 [5]),
        .I1(in10[5]),
        .I2(state),
        .O(\burst_count[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \burst_count[6]_i_1 
       (.I0(\burst_count_reg[16]_0 [6]),
        .I1(in10[6]),
        .I2(state),
        .O(\burst_count[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \burst_count[7]_i_1 
       (.I0(\burst_count_reg[16]_0 [7]),
        .I1(in10[7]),
        .I2(state),
        .O(\burst_count[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \burst_count[8]_i_1 
       (.I0(\burst_count_reg[16]_0 [8]),
        .I1(in10[8]),
        .I2(state),
        .O(\burst_count[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \burst_count[9]_i_1 
       (.I0(\burst_count_reg[16]_0 [9]),
        .I1(in10[9]),
        .I2(state),
        .O(\burst_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \burst_count_reg[0] 
       (.C(s_axi_aclk),
        .CE(burst_count_0),
        .D(\burst_count[0]_i_1_n_0 ),
        .Q(burst_count[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \burst_count_reg[10] 
       (.C(s_axi_aclk),
        .CE(burst_count_0),
        .D(\burst_count[10]_i_1_n_0 ),
        .Q(burst_count[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \burst_count_reg[11] 
       (.C(s_axi_aclk),
        .CE(burst_count_0),
        .D(\burst_count[11]_i_1_n_0 ),
        .Q(burst_count[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \burst_count_reg[12] 
       (.C(s_axi_aclk),
        .CE(burst_count_0),
        .D(\burst_count[12]_i_1_n_0 ),
        .Q(burst_count[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \burst_count_reg[13] 
       (.C(s_axi_aclk),
        .CE(burst_count_0),
        .D(\burst_count[13]_i_1_n_0 ),
        .Q(burst_count[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \burst_count_reg[14] 
       (.C(s_axi_aclk),
        .CE(burst_count_0),
        .D(\burst_count[14]_i_1_n_0 ),
        .Q(burst_count[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \burst_count_reg[15] 
       (.C(s_axi_aclk),
        .CE(burst_count_0),
        .D(\burst_count[15]_i_1_n_0 ),
        .Q(burst_count[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \burst_count_reg[16] 
       (.C(s_axi_aclk),
        .CE(burst_count_0),
        .D(\burst_count[16]_i_2_n_0 ),
        .Q(burst_count[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \burst_count_reg[1] 
       (.C(s_axi_aclk),
        .CE(burst_count_0),
        .D(\burst_count[1]_i_1_n_0 ),
        .Q(burst_count[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \burst_count_reg[2] 
       (.C(s_axi_aclk),
        .CE(burst_count_0),
        .D(\burst_count[2]_i_1_n_0 ),
        .Q(burst_count[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \burst_count_reg[3] 
       (.C(s_axi_aclk),
        .CE(burst_count_0),
        .D(\burst_count[3]_i_1_n_0 ),
        .Q(burst_count[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \burst_count_reg[4] 
       (.C(s_axi_aclk),
        .CE(burst_count_0),
        .D(\burst_count[4]_i_1_n_0 ),
        .Q(burst_count[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \burst_count_reg[5] 
       (.C(s_axi_aclk),
        .CE(burst_count_0),
        .D(\burst_count[5]_i_1_n_0 ),
        .Q(burst_count[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \burst_count_reg[6] 
       (.C(s_axi_aclk),
        .CE(burst_count_0),
        .D(\burst_count[6]_i_1_n_0 ),
        .Q(burst_count[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \burst_count_reg[7] 
       (.C(s_axi_aclk),
        .CE(burst_count_0),
        .D(\burst_count[7]_i_1_n_0 ),
        .Q(burst_count[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \burst_count_reg[8] 
       (.C(s_axi_aclk),
        .CE(burst_count_0),
        .D(\burst_count[8]_i_1_n_0 ),
        .Q(burst_count[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \burst_count_reg[9] 
       (.C(s_axi_aclk),
        .CE(burst_count_0),
        .D(\burst_count[9]_i_1_n_0 ),
        .Q(burst_count[9]),
        .R(1'b0));
  FDRE cur_req_xlast_reg
       (.C(s_axi_aclk),
        .CE(E),
        .D(D),
        .Q(completion_req_last),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    cur_transfer_id_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(cur_transfer_id_reg_0),
        .Q(cur_transfer_id),
        .R(Q));
  LUT1 #(
    .INIT(2'h1)) 
    eot_mem_src_reg_0_15_0_0_i_1
       (.I0(eot_mem_src_reg_0_15_0_0_i_2_n_0),
        .O(request_eot));
  LUT4 #(
    .INIT(16'hFFFE)) 
    eot_mem_src_reg_0_15_0_0_i_2
       (.I0(eot_mem_src_reg_0_15_0_0_i_3_n_0),
        .I1(eot_mem_src_reg_0_15_0_0_i_4_n_0),
        .I2(eot_mem_src_reg_0_15_0_0_i_5_n_0),
        .I3(eot_mem_src_reg_0_15_0_0_i_6_n_0),
        .O(eot_mem_src_reg_0_15_0_0_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    eot_mem_src_reg_0_15_0_0_i_3
       (.I0(burst_count[4]),
        .I1(burst_count[3]),
        .I2(burst_count[6]),
        .I3(burst_count[5]),
        .O(eot_mem_src_reg_0_15_0_0_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    eot_mem_src_reg_0_15_0_0_i_4
       (.I0(burst_count[0]),
        .I1(burst_count[15]),
        .I2(burst_count[16]),
        .I3(burst_count[2]),
        .I4(burst_count[1]),
        .O(eot_mem_src_reg_0_15_0_0_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    eot_mem_src_reg_0_15_0_0_i_5
       (.I0(burst_count[12]),
        .I1(burst_count[11]),
        .I2(burst_count[14]),
        .I3(burst_count[13]),
        .O(eot_mem_src_reg_0_15_0_0_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    eot_mem_src_reg_0_15_0_0_i_6
       (.I0(burst_count[8]),
        .I1(burst_count[7]),
        .I2(burst_count[10]),
        .I3(burst_count[9]),
        .O(eot_mem_src_reg_0_15_0_0_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \id[0]_i_1__0 
       (.I0(\id_reg[3]_0 [2]),
        .I1(\id_reg[3]_0 [3]),
        .I2(\id_reg[3]_0 [1]),
        .O(\id[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hE22E)) 
    \id[1]_i_1 
       (.I0(\id_reg[3]_0 [1]),
        .I1(\id_reg[3]_0 [0]),
        .I2(\id_reg[3]_0 [2]),
        .I3(\id_reg[3]_0 [3]),
        .O(\id[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hA3AA)) 
    \id[2]_i_1 
       (.I0(\id_reg[3]_0 [2]),
        .I1(\id_reg[3]_0 [3]),
        .I2(\id_reg[3]_0 [0]),
        .I3(\id_reg[3]_0 [1]),
        .O(\id[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \id[3]_i_1__0 
       (.I0(\FSM_sequential_state_reg[0]_0 ),
        .I1(state),
        .I2(\id[3]_i_3_n_0 ),
        .O(\id[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hFE02)) 
    \id[3]_i_2 
       (.I0(\id_reg[3]_0 [2]),
        .I1(\id_reg[3]_0 [0]),
        .I2(\id_reg[3]_0 [1]),
        .I3(\id_reg[3]_0 [3]),
        .O(\id[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFB9DF7FE3)) 
    \id[3]_i_3 
       (.I0(dbg_ids0[0]),
        .I1(\id[3]_i_4_n_0 ),
        .I2(\id_reg[3]_0 [0]),
        .I3(dbg_ids0[1]),
        .I4(\id_reg[3]_0 [1]),
        .I5(\id[3]_i_5_n_0 ),
        .O(\id[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \id[3]_i_4 
       (.I0(\id_reg[3]_0 [2]),
        .I1(dbg_ids0[3]),
        .O(\id[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF56FAFFA5FF5FA9F)) 
    \id[3]_i_5 
       (.I0(dbg_ids0[2]),
        .I1(\id_reg[3]_0 [0]),
        .I2(\id_reg[3]_0 [1]),
        .I3(dbg_ids0[0]),
        .I4(\id_reg[3]_0 [2]),
        .I5(\id_reg[3]_0 [3]),
        .O(\id[3]_i_5_n_0 ));
  FDRE \id_reg[0] 
       (.C(s_axi_aclk),
        .CE(\id[3]_i_1__0_n_0 ),
        .D(\id[0]_i_1__0_n_0 ),
        .Q(\id_reg[3]_0 [0]),
        .R(Q));
  FDRE \id_reg[1] 
       (.C(s_axi_aclk),
        .CE(\id[3]_i_1__0_n_0 ),
        .D(\id[1]_i_1_n_0 ),
        .Q(\id_reg[3]_0 [1]),
        .R(Q));
  FDRE \id_reg[2] 
       (.C(s_axi_aclk),
        .CE(\id[3]_i_1__0_n_0 ),
        .D(\id[2]_i_1_n_0 ),
        .Q(\id_reg[3]_0 [2]),
        .R(Q));
  FDRE \id_reg[3] 
       (.C(s_axi_aclk),
        .CE(\id[3]_i_1__0_n_0 ),
        .D(\id[3]_i_2_n_0 ),
        .Q(\id_reg[3]_0 [3]),
        .R(Q));
  LUT5 #(
    .INIT(32'h00AFC0AF)) 
    req_ready_i_1
       (.I0(req_ready_reg_1),
        .I1(\id[3]_i_3_n_0 ),
        .I2(\FSM_sequential_state_reg[0]_0 ),
        .I3(state),
        .I4(eot_mem_src_reg_0_15_0_0_i_2_n_0),
        .O(req_ready_i_1_n_0));
  FDRE req_ready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(req_ready_i_1_n_0),
        .Q(req_ready_reg_0),
        .R(Q));
endmodule

(* ORIG_REF_NAME = "response_handler" *) 
module icyradio_axi_dmac_rf_rx1_0_response_handler
   (ADDRC,
    dbg_status,
    dest_response_valid,
    \id_reg[1]_0 ,
    enabled_reg_0,
    id0,
    m_dest_axi_aclk,
    m_dest_axi_bvalid,
    dbg_ids0,
    address_enabled);
  output [3:0]ADDRC;
  output [0:0]dbg_status;
  output dest_response_valid;
  output \id_reg[1]_0 ;
  input [0:0]enabled_reg_0;
  input id0;
  input m_dest_axi_aclk;
  input m_dest_axi_bvalid;
  input [3:0]dbg_ids0;
  input address_enabled;

  wire [3:0]ADDRC;
  wire address_enabled;
  wire [3:0]dbg_ids0;
  wire [0:0]dbg_status;
  wire dest_response_valid;
  wire enabled_i_1__0_n_0;
  wire [0:0]enabled_reg_0;
  wire id0;
  wire \id[3]_i_1__1_n_0 ;
  wire \id_reg[1]_0 ;
  wire [2:0]inc_id0_return;
  wire m_dest_axi_aclk;
  wire m_dest_axi_bready_INST_0_i_2_n_0;
  wire m_dest_axi_bvalid;

  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    enabled_i_1__0
       (.I0(address_enabled),
        .I1(\id_reg[1]_0 ),
        .I2(dbg_status),
        .O(enabled_i_1__0_n_0));
  FDRE enabled_reg
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(enabled_i_1__0_n_0),
        .Q(dbg_status),
        .R(enabled_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \id[0]_i_2 
       (.I0(ADDRC[3]),
        .I1(ADDRC[2]),
        .I2(ADDRC[1]),
        .O(inc_id0_return[0]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h99F0)) 
    \id[1]_i_1__1 
       (.I0(ADDRC[2]),
        .I1(ADDRC[3]),
        .I2(ADDRC[1]),
        .I3(ADDRC[0]),
        .O(inc_id0_return[1]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h8ABA)) 
    \id[2]_i_1__1 
       (.I0(ADDRC[2]),
        .I1(ADDRC[0]),
        .I2(ADDRC[1]),
        .I3(ADDRC[3]),
        .O(inc_id0_return[2]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \id[3]_i_1__1 
       (.I0(ADDRC[3]),
        .I1(ADDRC[0]),
        .I2(ADDRC[1]),
        .I3(ADDRC[2]),
        .O(\id[3]_i_1__1_n_0 ));
  FDRE \id_reg[0] 
       (.C(m_dest_axi_aclk),
        .CE(id0),
        .D(inc_id0_return[0]),
        .Q(ADDRC[0]),
        .R(enabled_reg_0));
  FDRE \id_reg[1] 
       (.C(m_dest_axi_aclk),
        .CE(id0),
        .D(inc_id0_return[1]),
        .Q(ADDRC[1]),
        .R(enabled_reg_0));
  FDRE \id_reg[2] 
       (.C(m_dest_axi_aclk),
        .CE(id0),
        .D(inc_id0_return[2]),
        .Q(ADDRC[2]),
        .R(enabled_reg_0));
  FDRE \id_reg[3] 
       (.C(m_dest_axi_aclk),
        .CE(id0),
        .D(\id[3]_i_1__1_n_0 ),
        .Q(ADDRC[3]),
        .R(enabled_reg_0));
  LUT5 #(
    .INIT(32'hFFFF6FF6)) 
    m_dest_axi_bready_INST_0_i_1
       (.I0(dbg_ids0[1]),
        .I1(ADDRC[1]),
        .I2(dbg_ids0[0]),
        .I3(ADDRC[0]),
        .I4(m_dest_axi_bready_INST_0_i_2_n_0),
        .O(\id_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h6FF6)) 
    m_dest_axi_bready_INST_0_i_2
       (.I0(ADDRC[2]),
        .I1(dbg_ids0[2]),
        .I2(ADDRC[3]),
        .I3(dbg_ids0[3]),
        .O(m_dest_axi_bready_INST_0_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \zerodeep.axis_valid_d_i_1 
       (.I0(\id_reg[1]_0 ),
        .I1(m_dest_axi_bvalid),
        .O(dest_response_valid));
endmodule

(* ORIG_REF_NAME = "src_fifo_inf" *) 
module icyradio_axi_dmac_rf_rx1_0_src_fifo_inf
   (src_req_ready,
    src_valid,
    fifo_wr_overflow,
    dbg_ids1,
    src_last_beat__0,
    active_reg,
    src_bl_valid,
    SR,
    \measured_last_burst_length_reg[4] ,
    fifo_wr_clk,
    active_reg_0,
    E,
    src_eot,
    \zerodeep.s_axis_waddr ,
    bl_valid_reg,
    out,
    last_eot_reg,
    Q,
    fifo_wr_sync,
    fifo_wr_en,
    src_enable);
  output src_req_ready;
  output src_valid;
  output fifo_wr_overflow;
  output [3:0]dbg_ids1;
  output src_last_beat__0;
  output active_reg;
  output src_bl_valid;
  output [0:0]SR;
  output [4:0]\measured_last_burst_length_reg[4] ;
  input fifo_wr_clk;
  input [0:0]active_reg_0;
  input [0:0]E;
  input src_eot;
  input \zerodeep.s_axis_waddr ;
  input bl_valid_reg;
  input [5:0]out;
  input last_eot_reg;
  input [3:0]Q;
  input fifo_wr_sync;
  input fifo_wr_en;
  input src_enable;

  wire [0:0]E;
  wire [3:0]Q;
  wire [0:0]SR;
  wire active_reg;
  wire [0:0]active_reg_0;
  wire bl_valid_reg;
  wire [3:0]dbg_ids1;
  wire fifo_wr_clk;
  wire fifo_wr_en;
  wire fifo_wr_overflow;
  wire fifo_wr_sync;
  wire i_data_mover_n_10;
  wire last_eot_reg;
  wire [4:0]\measured_last_burst_length_reg[4] ;
  wire [5:0]out;
  wire src_bl_valid;
  wire src_enable;
  wire src_eot;
  wire src_last_beat__0;
  wire src_req_ready;
  wire src_valid;
  wire \zerodeep.s_axis_waddr ;

  icyradio_axi_dmac_rf_rx1_0_data_mover i_data_mover
       (.E(src_valid),
        .Q(Q),
        .SR(src_req_ready),
        .active_reg_0(active_reg),
        .active_reg_1(i_data_mover_n_10),
        .active_reg_2(active_reg_0),
        .active_reg_3(E),
        .bl_valid_reg_0(bl_valid_reg),
        .fifo_wr_clk(fifo_wr_clk),
        .fifo_wr_en(fifo_wr_en),
        .fifo_wr_sync(fifo_wr_sync),
        .\id_reg[0]_0 (dbg_ids1[0]),
        .\id_reg[1]_0 (dbg_ids1[1]),
        .\id_reg[2]_0 (dbg_ids1[2]),
        .\id_reg[3]_0 (dbg_ids1[3]),
        .last_eot_reg_0(last_eot_reg),
        .last_non_eot_reg_0(src_last_beat__0),
        .\measured_last_burst_length_reg[4]_0 (\measured_last_burst_length_reg[4] ),
        .out(out),
        .\reset_gen[1].reset_sync_reg[0] (SR),
        .src_bl_valid(src_bl_valid),
        .src_enable(src_enable),
        .src_eot(src_eot),
        .\zerodeep.s_axis_waddr (\zerodeep.s_axis_waddr ));
  FDRE overflow_reg
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(i_data_mover_n_10),
        .Q(fifo_wr_overflow),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "sync_bits" *) 
module icyradio_axi_dmac_rf_rx1_0_sync_bits__parameterized0
   (E,
    src_enable,
    s_axi_aclk,
    \FSM_onehot_state_reg[0] ,
    Q,
    \FSM_onehot_state_reg[0]_0 ,
    \FSM_onehot_state_reg[0]_1 ,
    \FSM_onehot_state_reg[0]_2 );
  output [0:0]E;
  input src_enable;
  input s_axi_aclk;
  input [0:0]\FSM_onehot_state_reg[0] ;
  input [4:0]Q;
  input \FSM_onehot_state_reg[0]_0 ;
  input \FSM_onehot_state_reg[0]_1 ;
  input [0:0]\FSM_onehot_state_reg[0]_2 ;

  wire [0:0]E;
  wire \FSM_onehot_state[5]_i_2_n_0 ;
  wire [0:0]\FSM_onehot_state_reg[0] ;
  wire \FSM_onehot_state_reg[0]_0 ;
  wire \FSM_onehot_state_reg[0]_1 ;
  wire [0:0]\FSM_onehot_state_reg[0]_2 ;
  wire [4:0]Q;
  wire \cdc_sync_stage1_reg_n_0_[0] ;
  wire [5:5]dbg_status;
  wire s_axi_aclk;
  wire src_enable;

  LUT5 #(
    .INIT(32'hFFFFFFC8)) 
    \FSM_onehot_state[5]_i_1 
       (.I0(Q[3]),
        .I1(\FSM_onehot_state_reg[0] ),
        .I2(Q[1]),
        .I3(\FSM_onehot_state[5]_i_2_n_0 ),
        .I4(\FSM_onehot_state_reg[0]_0 ),
        .O(E));
  LUT6 #(
    .INIT(64'hFAAAAAAAAAAAAEAE)) 
    \FSM_onehot_state[5]_i_2 
       (.I0(Q[0]),
        .I1(Q[4]),
        .I2(\FSM_onehot_state_reg[0]_1 ),
        .I3(Q[2]),
        .I4(\FSM_onehot_state_reg[0]_2 ),
        .I5(dbg_status),
        .O(\FSM_onehot_state[5]_i_2_n_0 ));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage1_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(src_enable),
        .Q(\cdc_sync_stage1_reg_n_0_[0] ),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage2_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\cdc_sync_stage1_reg_n_0_[0] ),
        .Q(dbg_status),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "sync_bits" *) 
module icyradio_axi_dmac_rf_rx1_0_sync_bits__parameterized0__xdcDup__1
   (\cdc_sync_stage2_reg[0]_0 ,
    active0,
    \cdc_sync_stage2_reg[0]_1 ,
    src_dest_valid_hs_reg,
    E,
    \cdc_sync_stage1_reg[0]_0 ,
    \cdc_sync_stage1_reg[0]_1 ,
    fifo_wr_clk,
    src_dest_valid_hs_reg_0,
    src_dest_valid_hs,
    src_req_ready,
    \zerodeep.m_axis_raddr_reg ,
    \zerodeep.m_axis_raddr_reg_0 );
  output \cdc_sync_stage2_reg[0]_0 ;
  output active0;
  output \cdc_sync_stage2_reg[0]_1 ;
  output src_dest_valid_hs_reg;
  output [0:0]E;
  input [0:0]\cdc_sync_stage1_reg[0]_0 ;
  input \cdc_sync_stage1_reg[0]_1 ;
  input fifo_wr_clk;
  input src_dest_valid_hs_reg_0;
  input src_dest_valid_hs;
  input src_req_ready;
  input \zerodeep.m_axis_raddr_reg ;
  input \zerodeep.m_axis_raddr_reg_0 ;

  wire [0:0]E;
  wire active0;
  wire [0:0]\cdc_sync_stage1_reg[0]_0 ;
  wire \cdc_sync_stage1_reg[0]_1 ;
  wire \cdc_sync_stage1_reg_n_0_[0] ;
  wire \cdc_sync_stage2_reg[0]_0 ;
  wire \cdc_sync_stage2_reg[0]_1 ;
  wire \cdc_sync_stage2_reg_n_0_[0] ;
  wire fifo_wr_clk;
  wire src_dest_valid_hs;
  wire src_dest_valid_hs_reg;
  wire src_dest_valid_hs_reg_0;
  wire src_req_ready;
  wire \zerodeep.m_axis_raddr_reg ;
  wire \zerodeep.m_axis_raddr_reg_0 ;

  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage1_reg[0] 
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(\cdc_sync_stage1_reg[0]_1 ),
        .Q(\cdc_sync_stage1_reg_n_0_[0] ),
        .R(\cdc_sync_stage1_reg[0]_0 ));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage2_reg[0] 
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(\cdc_sync_stage1_reg_n_0_[0] ),
        .Q(\cdc_sync_stage2_reg_n_0_[0] ),
        .R(\cdc_sync_stage1_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hBEAA)) 
    src_dest_valid_hs_i_1
       (.I0(active0),
        .I1(\cdc_sync_stage2_reg_n_0_[0] ),
        .I2(src_dest_valid_hs_reg_0),
        .I3(src_dest_valid_hs),
        .O(\cdc_sync_stage2_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h09900000)) 
    src_req_xlast_cur_i_1
       (.I0(\cdc_sync_stage2_reg_n_0_[0] ),
        .I1(src_dest_valid_hs_reg_0),
        .I2(\zerodeep.m_axis_raddr_reg ),
        .I3(\zerodeep.m_axis_raddr_reg_0 ),
        .I4(src_req_ready),
        .O(active0));
  LUT3 #(
    .INIT(8'h90)) 
    \zerodeep.cdc_sync_fifo_ram[29]_i_1 
       (.I0(\cdc_sync_stage2_reg_n_0_[0] ),
        .I1(src_dest_valid_hs_reg_0),
        .I2(src_dest_valid_hs),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'hFF7D8200)) 
    \zerodeep.m_axis_raddr_i_1__1 
       (.I0(src_req_ready),
        .I1(\cdc_sync_stage2_reg_n_0_[0] ),
        .I2(src_dest_valid_hs_reg_0),
        .I3(\zerodeep.m_axis_raddr_reg ),
        .I4(\zerodeep.m_axis_raddr_reg_0 ),
        .O(\cdc_sync_stage2_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h72)) 
    \zerodeep.s_axis_waddr_i_1__1 
       (.I0(src_dest_valid_hs),
        .I1(\cdc_sync_stage2_reg_n_0_[0] ),
        .I2(src_dest_valid_hs_reg_0),
        .O(src_dest_valid_hs_reg));
endmodule

(* ORIG_REF_NAME = "sync_bits" *) 
module icyradio_axi_dmac_rf_rx1_0_sync_bits__parameterized0__xdcDup__2
   (\cdc_sync_stage2_reg[0]_0 ,
    \cdc_sync_stage2_reg[0]_1 ,
    \cdc_sync_stage2_reg[0]_2 ,
    \cdc_sync_stage1_reg[0]_0 ,
    m_dest_axi_aclk,
    dest_req_ready,
    \zerodeep.m_axis_raddr_reg );
  output \cdc_sync_stage2_reg[0]_0 ;
  output \cdc_sync_stage2_reg[0]_1 ;
  input [0:0]\cdc_sync_stage2_reg[0]_2 ;
  input \cdc_sync_stage1_reg[0]_0 ;
  input m_dest_axi_aclk;
  input dest_req_ready;
  input \zerodeep.m_axis_raddr_reg ;

  wire \cdc_sync_stage1_reg[0]_0 ;
  wire \cdc_sync_stage1_reg_n_0_[0] ;
  wire \cdc_sync_stage2_reg[0]_0 ;
  wire \cdc_sync_stage2_reg[0]_1 ;
  wire [0:0]\cdc_sync_stage2_reg[0]_2 ;
  wire dest_req_ready;
  wire m_dest_axi_aclk;
  wire \zerodeep.m_axis_raddr_reg ;

  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage1_reg[0] 
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(\cdc_sync_stage1_reg[0]_0 ),
        .Q(\cdc_sync_stage1_reg_n_0_[0] ),
        .R(\cdc_sync_stage2_reg[0]_2 ));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage2_reg[0] 
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(\cdc_sync_stage1_reg_n_0_[0] ),
        .Q(\cdc_sync_stage2_reg[0]_0 ),
        .R(\cdc_sync_stage2_reg[0]_2 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \zerodeep.m_axis_raddr_i_1__0 
       (.I0(\cdc_sync_stage2_reg[0]_0 ),
        .I1(dest_req_ready),
        .I2(\zerodeep.m_axis_raddr_reg ),
        .O(\cdc_sync_stage2_reg[0]_1 ));
endmodule

(* ORIG_REF_NAME = "sync_bits" *) 
module icyradio_axi_dmac_rf_rx1_0_sync_bits__parameterized0__xdcDup__3
   (\cdc_sync_stage2_reg[0]_0 ,
    E,
    bl_valid_reg,
    \cdc_sync_stage1_reg[0]_0 ,
    \zerodeep.m_axis_raddr ,
    fifo_wr_clk,
    \zerodeep.cdc_sync_fifo_ram_reg[0] ,
    src_bl_valid);
  output \cdc_sync_stage2_reg[0]_0 ;
  output [0:0]E;
  output bl_valid_reg;
  input [0:0]\cdc_sync_stage1_reg[0]_0 ;
  input \zerodeep.m_axis_raddr ;
  input fifo_wr_clk;
  input \zerodeep.cdc_sync_fifo_ram_reg[0] ;
  input src_bl_valid;

  wire [0:0]E;
  wire bl_valid_reg;
  wire [0:0]\cdc_sync_stage1_reg[0]_0 ;
  wire \cdc_sync_stage1_reg_n_0_[0] ;
  wire \cdc_sync_stage2_reg[0]_0 ;
  wire fifo_wr_clk;
  wire src_bl_valid;
  wire \zerodeep.cdc_sync_fifo_ram_reg[0] ;
  wire \zerodeep.m_axis_raddr ;

  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage1_reg[0] 
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(\zerodeep.m_axis_raddr ),
        .Q(\cdc_sync_stage1_reg_n_0_[0] ),
        .R(\cdc_sync_stage1_reg[0]_0 ));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage2_reg[0] 
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(\cdc_sync_stage1_reg_n_0_[0] ),
        .Q(\cdc_sync_stage2_reg[0]_0 ),
        .R(\cdc_sync_stage1_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h90)) 
    \zerodeep.cdc_sync_fifo_ram[4]_i_1 
       (.I0(\cdc_sync_stage2_reg[0]_0 ),
        .I1(\zerodeep.cdc_sync_fifo_ram_reg[0] ),
        .I2(src_bl_valid),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h72)) 
    \zerodeep.s_axis_waddr_i_1__0 
       (.I0(src_bl_valid),
        .I1(\cdc_sync_stage2_reg[0]_0 ),
        .I2(\zerodeep.cdc_sync_fifo_ram_reg[0] ),
        .O(bl_valid_reg));
endmodule

(* ORIG_REF_NAME = "sync_bits" *) 
module icyradio_axi_dmac_rf_rx1_0_sync_bits__parameterized0__xdcDup__4
   (E,
    \cdc_sync_stage2_reg[0]_0 ,
    \cdc_sync_stage2_reg[0]_1 ,
    \cdc_sync_stage1_reg[0]_0 ,
    \zerodeep.s_axis_waddr ,
    m_dest_axi_aclk,
    dest_bl_ready,
    \zerodeep.m_axis_raddr );
  output [0:0]E;
  output \cdc_sync_stage2_reg[0]_0 ;
  output \cdc_sync_stage2_reg[0]_1 ;
  input [0:0]\cdc_sync_stage1_reg[0]_0 ;
  input \zerodeep.s_axis_waddr ;
  input m_dest_axi_aclk;
  input dest_bl_ready;
  input \zerodeep.m_axis_raddr ;

  wire [0:0]E;
  wire [0:0]\cdc_sync_stage1_reg[0]_0 ;
  wire \cdc_sync_stage1_reg_n_0_[0] ;
  wire cdc_sync_stage2;
  wire \cdc_sync_stage2_reg[0]_0 ;
  wire \cdc_sync_stage2_reg[0]_1 ;
  wire dest_bl_ready;
  wire m_dest_axi_aclk;
  wire \zerodeep.m_axis_raddr ;
  wire \zerodeep.s_axis_waddr ;

  LUT2 #(
    .INIT(4'h9)) 
    bl_ready_i_2
       (.I0(cdc_sync_stage2),
        .I1(\zerodeep.m_axis_raddr ),
        .O(\cdc_sync_stage2_reg[0]_0 ));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage1_reg[0] 
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(\zerodeep.s_axis_waddr ),
        .Q(\cdc_sync_stage1_reg_n_0_[0] ),
        .R(\cdc_sync_stage1_reg[0]_0 ));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage2_reg[0] 
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(\cdc_sync_stage1_reg_n_0_[0] ),
        .Q(cdc_sync_stage2),
        .R(\cdc_sync_stage1_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \last_burst_len[3]_i_1 
       (.I0(dest_bl_ready),
        .I1(\zerodeep.m_axis_raddr ),
        .I2(cdc_sync_stage2),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \zerodeep.m_axis_raddr_i_1 
       (.I0(cdc_sync_stage2),
        .I1(dest_bl_ready),
        .I2(\zerodeep.m_axis_raddr ),
        .O(\cdc_sync_stage2_reg[0]_1 ));
endmodule

(* ORIG_REF_NAME = "sync_bits" *) 
module icyradio_axi_dmac_rf_rx1_0_sync_bits__parameterized0__xdcDup__5
   (\cdc_sync_stage2_reg[0]_0 ,
    E,
    \cdc_sync_stage2_reg[0]_1 ,
    up_dma_req_valid_reg,
    \cdc_sync_stage2_reg[0]_2 ,
    \cdc_sync_stage2_reg[0]_3 ,
    Q,
    \cdc_sync_stage1_reg[0]_0 ,
    s_axi_aclk,
    \zerodeep.cdc_sync_fifo_ram_reg[67] ,
    up_dma_req_valid,
    \zerodeep.cdc_sync_fifo_ram_reg[67]_0 ,
    \zerodeep.cdc_sync_fifo_ram_reg[67]_1 ,
    cur_transfer_id);
  output \cdc_sync_stage2_reg[0]_0 ;
  output [0:0]E;
  output \cdc_sync_stage2_reg[0]_1 ;
  output up_dma_req_valid_reg;
  output \cdc_sync_stage2_reg[0]_2 ;
  output \cdc_sync_stage2_reg[0]_3 ;
  input [0:0]Q;
  input \cdc_sync_stage1_reg[0]_0 ;
  input s_axi_aclk;
  input \zerodeep.cdc_sync_fifo_ram_reg[67] ;
  input up_dma_req_valid;
  input \zerodeep.cdc_sync_fifo_ram_reg[67]_0 ;
  input \zerodeep.cdc_sync_fifo_ram_reg[67]_1 ;
  input cur_transfer_id;

  wire [0:0]E;
  wire [0:0]Q;
  wire \cdc_sync_stage1_reg[0]_0 ;
  wire \cdc_sync_stage1_reg_n_0_[0] ;
  wire \cdc_sync_stage2_reg[0]_0 ;
  wire \cdc_sync_stage2_reg[0]_1 ;
  wire \cdc_sync_stage2_reg[0]_2 ;
  wire \cdc_sync_stage2_reg[0]_3 ;
  wire cur_transfer_id;
  wire s_axi_aclk;
  wire up_dma_req_valid;
  wire up_dma_req_valid_reg;
  wire \zerodeep.cdc_sync_fifo_ram_reg[67] ;
  wire \zerodeep.cdc_sync_fifo_ram_reg[67]_0 ;
  wire \zerodeep.cdc_sync_fifo_ram_reg[67]_1 ;

  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage1_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\cdc_sync_stage1_reg[0]_0 ),
        .Q(\cdc_sync_stage1_reg_n_0_[0] ),
        .R(Q));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage2_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\cdc_sync_stage1_reg_n_0_[0] ),
        .Q(\cdc_sync_stage2_reg[0]_0 ),
        .R(Q));
  LUT6 #(
    .INIT(64'h6FFFFFFF90000000)) 
    cur_transfer_id_i_1
       (.I0(\cdc_sync_stage2_reg[0]_0 ),
        .I1(\zerodeep.cdc_sync_fifo_ram_reg[67]_1 ),
        .I2(\zerodeep.cdc_sync_fifo_ram_reg[67]_0 ),
        .I3(up_dma_req_valid),
        .I4(\zerodeep.cdc_sync_fifo_ram_reg[67] ),
        .I5(cur_transfer_id),
        .O(\cdc_sync_stage2_reg[0]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'h7FF7)) 
    req_ready_i_2
       (.I0(up_dma_req_valid),
        .I1(\zerodeep.cdc_sync_fifo_ram_reg[67]_0 ),
        .I2(\zerodeep.cdc_sync_fifo_ram_reg[67]_1 ),
        .I3(\cdc_sync_stage2_reg[0]_0 ),
        .O(up_dma_req_valid_reg));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT5 #(
    .INIT(32'h6FFFFFFF)) 
    \up_irq_source[0]_i_2 
       (.I0(\cdc_sync_stage2_reg[0]_0 ),
        .I1(\zerodeep.cdc_sync_fifo_ram_reg[67]_1 ),
        .I2(\zerodeep.cdc_sync_fifo_ram_reg[67]_0 ),
        .I3(up_dma_req_valid),
        .I4(\zerodeep.cdc_sync_fifo_ram_reg[67] ),
        .O(\cdc_sync_stage2_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT5 #(
    .INIT(32'h80000080)) 
    \zerodeep.cdc_sync_fifo_ram[67]_i_1 
       (.I0(\zerodeep.cdc_sync_fifo_ram_reg[67] ),
        .I1(up_dma_req_valid),
        .I2(\zerodeep.cdc_sync_fifo_ram_reg[67]_0 ),
        .I3(\zerodeep.cdc_sync_fifo_ram_reg[67]_1 ),
        .I4(\cdc_sync_stage2_reg[0]_0 ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'h7FFF4000)) 
    \zerodeep.s_axis_waddr_i_1 
       (.I0(\cdc_sync_stage2_reg[0]_0 ),
        .I1(\zerodeep.cdc_sync_fifo_ram_reg[67]_0 ),
        .I2(up_dma_req_valid),
        .I3(\zerodeep.cdc_sync_fifo_ram_reg[67] ),
        .I4(\zerodeep.cdc_sync_fifo_ram_reg[67]_1 ),
        .O(\cdc_sync_stage2_reg[0]_3 ));
endmodule

(* ORIG_REF_NAME = "sync_bits" *) 
module icyradio_axi_dmac_rf_rx1_0_sync_bits__parameterized0__xdcDup__6
   (\cdc_sync_stage2_reg[0]_0 ,
    \cdc_sync_stage1_reg[0]_0 ,
    \cdc_sync_stage1_reg[0]_1 ,
    fifo_wr_clk);
  output \cdc_sync_stage2_reg[0]_0 ;
  input [0:0]\cdc_sync_stage1_reg[0]_0 ;
  input \cdc_sync_stage1_reg[0]_1 ;
  input fifo_wr_clk;

  wire [0:0]\cdc_sync_stage1_reg[0]_0 ;
  wire \cdc_sync_stage1_reg[0]_1 ;
  wire \cdc_sync_stage1_reg_n_0_[0] ;
  wire \cdc_sync_stage2_reg[0]_0 ;
  wire fifo_wr_clk;

  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage1_reg[0] 
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(\cdc_sync_stage1_reg[0]_1 ),
        .Q(\cdc_sync_stage1_reg_n_0_[0] ),
        .R(\cdc_sync_stage1_reg[0]_0 ));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage2_reg[0] 
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(\cdc_sync_stage1_reg_n_0_[0] ),
        .Q(\cdc_sync_stage2_reg[0]_0 ),
        .R(\cdc_sync_stage1_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "sync_bits" *) 
module icyradio_axi_dmac_rf_rx1_0_sync_bits__parameterized0__xdcDup__7
   (src_enable,
    \cdc_sync_stage1_reg[0]_0 ,
    fifo_wr_clk);
  output src_enable;
  input \cdc_sync_stage1_reg[0]_0 ;
  input fifo_wr_clk;

  wire cdc_sync_stage1;
  wire \cdc_sync_stage1_reg[0]_0 ;
  wire fifo_wr_clk;
  wire src_enable;

  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage1_reg[0] 
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(\cdc_sync_stage1_reg[0]_0 ),
        .Q(cdc_sync_stage1),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage2_reg[0] 
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(cdc_sync_stage1),
        .Q(src_enable),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "sync_bits" *) 
module icyradio_axi_dmac_rf_rx1_0_sync_bits__parameterized1
   (E,
    Q,
    \src_throttled_request_id_reg[0] ,
    \src_throttled_request_id_reg[0]_0 ,
    \cdc_sync_stage1_reg[3]_0 ,
    fifo_wr_clk);
  output [0:0]E;
  input [3:0]Q;
  input \src_throttled_request_id_reg[0] ;
  input \src_throttled_request_id_reg[0]_0 ;
  input [3:0]\cdc_sync_stage1_reg[3]_0 ;
  input fifo_wr_clk;

  wire [0:0]E;
  wire [3:0]Q;
  wire [3:0]\cdc_sync_stage1_reg[3]_0 ;
  wire \cdc_sync_stage1_reg_n_0_[0] ;
  wire \cdc_sync_stage1_reg_n_0_[1] ;
  wire \cdc_sync_stage1_reg_n_0_[2] ;
  wire \cdc_sync_stage1_reg_n_0_[3] ;
  wire fifo_wr_clk;
  wire [3:0]src_request_id;
  wire \src_throttled_request_id[3]_i_3_n_0 ;
  wire \src_throttled_request_id_reg[0] ;
  wire \src_throttled_request_id_reg[0]_0 ;

  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage1_reg[0] 
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(\cdc_sync_stage1_reg[3]_0 [0]),
        .Q(\cdc_sync_stage1_reg_n_0_[0] ),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage1_reg[1] 
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(\cdc_sync_stage1_reg[3]_0 [1]),
        .Q(\cdc_sync_stage1_reg_n_0_[1] ),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage1_reg[2] 
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(\cdc_sync_stage1_reg[3]_0 [2]),
        .Q(\cdc_sync_stage1_reg_n_0_[2] ),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage1_reg[3] 
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(\cdc_sync_stage1_reg[3]_0 [3]),
        .Q(\cdc_sync_stage1_reg_n_0_[3] ),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage2_reg[0] 
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(\cdc_sync_stage1_reg_n_0_[0] ),
        .Q(src_request_id[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage2_reg[1] 
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(\cdc_sync_stage1_reg_n_0_[1] ),
        .Q(src_request_id[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage2_reg[2] 
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(\cdc_sync_stage1_reg_n_0_[2] ),
        .Q(src_request_id[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage2_reg[3] 
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(\cdc_sync_stage1_reg_n_0_[3] ),
        .Q(src_request_id[3]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBEBEBE00)) 
    \src_throttled_request_id[3]_i_1 
       (.I0(\src_throttled_request_id[3]_i_3_n_0 ),
        .I1(src_request_id[3]),
        .I2(Q[3]),
        .I3(\src_throttled_request_id_reg[0] ),
        .I4(\src_throttled_request_id_reg[0]_0 ),
        .O(E));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \src_throttled_request_id[3]_i_3 
       (.I0(Q[0]),
        .I1(src_request_id[0]),
        .I2(src_request_id[2]),
        .I3(Q[2]),
        .I4(src_request_id[1]),
        .I5(Q[1]),
        .O(\src_throttled_request_id[3]_i_3_n_0 ));
endmodule

(* ORIG_REF_NAME = "sync_bits" *) 
module icyradio_axi_dmac_rf_rx1_0_sync_bits__parameterized1__xdcDup__1
   (\cdc_sync_stage2_reg[3]_0 ,
    \cdc_sync_stage2_reg[2]_0 ,
    \cdc_sync_stage2_reg[1]_0 ,
    \cdc_sync_stage2_reg[0]_0 ,
    p_1_in,
    m_dest_axi_aclk,
    \cdc_sync_stage1_reg[2]_0 ,
    src_id_reduced);
  output \cdc_sync_stage2_reg[3]_0 ;
  output \cdc_sync_stage2_reg[2]_0 ;
  output \cdc_sync_stage2_reg[1]_0 ;
  output \cdc_sync_stage2_reg[0]_0 ;
  input p_1_in;
  input m_dest_axi_aclk;
  input \cdc_sync_stage1_reg[2]_0 ;
  input [1:0]src_id_reduced;

  wire \cdc_sync_stage1_reg[2]_0 ;
  wire \cdc_sync_stage1_reg_n_0_[0] ;
  wire \cdc_sync_stage1_reg_n_0_[1] ;
  wire \cdc_sync_stage1_reg_n_0_[2] ;
  wire \cdc_sync_stage1_reg_n_0_[3] ;
  wire \cdc_sync_stage2_reg[0]_0 ;
  wire \cdc_sync_stage2_reg[1]_0 ;
  wire \cdc_sync_stage2_reg[2]_0 ;
  wire \cdc_sync_stage2_reg[3]_0 ;
  wire m_dest_axi_aclk;
  wire p_1_in;
  wire [1:0]src_id_reduced;

  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage1_reg[0] 
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(src_id_reduced[0]),
        .Q(\cdc_sync_stage1_reg_n_0_[0] ),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage1_reg[1] 
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(src_id_reduced[1]),
        .Q(\cdc_sync_stage1_reg_n_0_[1] ),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage1_reg[2] 
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(\cdc_sync_stage1_reg[2]_0 ),
        .Q(\cdc_sync_stage1_reg_n_0_[2] ),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage1_reg[3] 
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(p_1_in),
        .Q(\cdc_sync_stage1_reg_n_0_[3] ),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage2_reg[0] 
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(\cdc_sync_stage1_reg_n_0_[0] ),
        .Q(\cdc_sync_stage2_reg[0]_0 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage2_reg[1] 
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(\cdc_sync_stage1_reg_n_0_[1] ),
        .Q(\cdc_sync_stage2_reg[1]_0 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage2_reg[2] 
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(\cdc_sync_stage1_reg_n_0_[2] ),
        .Q(\cdc_sync_stage2_reg[2]_0 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage2_reg[3] 
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(\cdc_sync_stage1_reg_n_0_[3] ),
        .Q(\cdc_sync_stage2_reg[3]_0 ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "sync_bits" *) 
module icyradio_axi_dmac_rf_rx1_0_sync_bits__parameterized1__xdcDup__2
   (\src_throttled_request_id_reg[2] ,
    \src_throttled_request_id_reg[0] ,
    \src_throttled_request_id_reg[0]_0 ,
    Q,
    fifo_wr_clk);
  output \src_throttled_request_id_reg[2] ;
  output \src_throttled_request_id_reg[0] ;
  input [3:0]\src_throttled_request_id_reg[0]_0 ;
  input [3:0]Q;
  input fifo_wr_clk;

  wire [3:0]Q;
  wire \cdc_sync_stage1_reg_n_0_[0] ;
  wire \cdc_sync_stage1_reg_n_0_[1] ;
  wire \cdc_sync_stage1_reg_n_0_[2] ;
  wire \cdc_sync_stage1_reg_n_0_[3] ;
  wire \cdc_sync_stage2_reg_n_0_[0] ;
  wire \cdc_sync_stage2_reg_n_0_[1] ;
  wire \cdc_sync_stage2_reg_n_0_[3] ;
  wire fifo_wr_clk;
  wire p_0_in0_in;
  wire \src_throttled_request_id_reg[0] ;
  wire [3:0]\src_throttled_request_id_reg[0]_0 ;
  wire \src_throttled_request_id_reg[2] ;

  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage1_reg[0] 
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(Q[0]),
        .Q(\cdc_sync_stage1_reg_n_0_[0] ),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage1_reg[1] 
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(Q[1]),
        .Q(\cdc_sync_stage1_reg_n_0_[1] ),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage1_reg[2] 
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(Q[2]),
        .Q(\cdc_sync_stage1_reg_n_0_[2] ),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage1_reg[3] 
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(Q[3]),
        .Q(\cdc_sync_stage1_reg_n_0_[3] ),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage2_reg[0] 
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(\cdc_sync_stage1_reg_n_0_[0] ),
        .Q(\cdc_sync_stage2_reg_n_0_[0] ),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage2_reg[1] 
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(\cdc_sync_stage1_reg_n_0_[1] ),
        .Q(\cdc_sync_stage2_reg_n_0_[1] ),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage2_reg[2] 
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(\cdc_sync_stage1_reg_n_0_[2] ),
        .Q(p_0_in0_in),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage2_reg[3] 
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(\cdc_sync_stage1_reg_n_0_[3] ),
        .Q(\cdc_sync_stage2_reg_n_0_[3] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hF99F)) 
    \src_throttled_request_id[3]_i_4 
       (.I0(\src_throttled_request_id_reg[0]_0 [2]),
        .I1(p_0_in0_in),
        .I2(\src_throttled_request_id_reg[0]_0 [3]),
        .I3(\cdc_sync_stage2_reg_n_0_[3] ),
        .O(\src_throttled_request_id_reg[2] ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \src_throttled_request_id[3]_i_5 
       (.I0(\src_throttled_request_id_reg[0]_0 [0]),
        .I1(\cdc_sync_stage2_reg_n_0_[0] ),
        .I2(\src_throttled_request_id_reg[0]_0 [1]),
        .I3(\cdc_sync_stage2_reg_n_0_[1] ),
        .O(\src_throttled_request_id_reg[0] ));
endmodule

(* ORIG_REF_NAME = "up_axi" *) 
module icyradio_axi_dmac_rf_rx1_0_up_axi
   (up_wreq,
    s_axi_bvalid,
    s_axi_awready,
    s_axi_wready,
    up_rreq,
    up_axi_rvalid_int_reg_0,
    s_axi_arready,
    \up_wdata_int_reg[0]_0 ,
    Q,
    D,
    \up_raddr_int_reg[4]_0 ,
    \up_waddr_int_reg[5]_0 ,
    \up_waddr_int_reg[8]_0 ,
    \up_waddr_int_reg[5]_1 ,
    E,
    \up_wdata_int_reg[1]_0 ,
    \up_waddr_int_reg[8]_1 ,
    up_rreq_int_reg_0,
    \up_wdata_int_reg[1]_1 ,
    \up_wdata_int_reg[0]_1 ,
    \up_wdata_int_reg[1]_2 ,
    \up_wdata_int_reg[2]_0 ,
    s_axi_rdata,
    SR,
    s_axi_aclk,
    up_dma_req_valid,
    s_axi_aresetn,
    ctrl_enable_reg,
    \up_irq_source_reg[0] ,
    \up_rdata_reg[1] ,
    \up_irq_source_reg[1] ,
    \up_rdata_reg[0] ,
    \up_rdata_reg[0]_0 ,
    up_transfer_id_eot,
    \up_rdata_reg[1]_0 ,
    \up_rdata_reg[1]_1 ,
    \up_rdata_reg[23] ,
    \up_rdata_reg[31] ,
    \up_rdata_reg[31]_0 ,
    \up_rdata_reg[2] ,
    \up_rdata_reg[3] ,
    up_partial_length_valid,
    \up_rdata_reg[23]_0 ,
    up_transfer_id,
    p_3_in,
    ctrl_pause,
    up_eot,
    up_wack,
    up_rack,
    s_axi_bready,
    s_axi_rready,
    s_axi_wvalid,
    s_axi_awvalid,
    s_axi_arvalid,
    \up_rdata_d_reg[31]_0 ,
    up_tlf_valid,
    \fifo._m_axis_valid ,
    s_axi_wdata,
    s_axi_awaddr,
    s_axi_araddr);
  output up_wreq;
  output s_axi_bvalid;
  output s_axi_awready;
  output s_axi_wready;
  output up_rreq;
  output up_axi_rvalid_int_reg_0;
  output s_axi_arready;
  output \up_wdata_int_reg[0]_0 ;
  output [31:0]Q;
  output [31:0]D;
  output \up_raddr_int_reg[4]_0 ;
  output [0:0]\up_waddr_int_reg[5]_0 ;
  output [0:0]\up_waddr_int_reg[8]_0 ;
  output [0:0]\up_waddr_int_reg[5]_1 ;
  output [0:0]E;
  output [1:0]\up_wdata_int_reg[1]_0 ;
  output \up_waddr_int_reg[8]_1 ;
  output up_rreq_int_reg_0;
  output \up_wdata_int_reg[1]_1 ;
  output \up_wdata_int_reg[0]_1 ;
  output \up_wdata_int_reg[1]_2 ;
  output \up_wdata_int_reg[2]_0 ;
  output [31:0]s_axi_rdata;
  input [0:0]SR;
  input s_axi_aclk;
  input up_dma_req_valid;
  input s_axi_aresetn;
  input ctrl_enable_reg;
  input \up_irq_source_reg[0] ;
  input [25:0]\up_rdata_reg[1] ;
  input [1:0]\up_irq_source_reg[1] ;
  input \up_rdata_reg[0] ;
  input \up_rdata_reg[0]_0 ;
  input [1:0]up_transfer_id_eot;
  input \up_rdata_reg[1]_0 ;
  input \up_rdata_reg[1]_1 ;
  input [23:0]\up_rdata_reg[23] ;
  input [31:0]\up_rdata_reg[31] ;
  input [34:0]\up_rdata_reg[31]_0 ;
  input \up_rdata_reg[2] ;
  input \up_rdata_reg[3] ;
  input up_partial_length_valid;
  input [16:0]\up_rdata_reg[23]_0 ;
  input [1:0]up_transfer_id;
  input [0:0]p_3_in;
  input ctrl_pause;
  input up_eot;
  input up_wack;
  input up_rack;
  input s_axi_bready;
  input s_axi_rready;
  input s_axi_wvalid;
  input s_axi_awvalid;
  input s_axi_arvalid;
  input [31:0]\up_rdata_d_reg[31]_0 ;
  input up_tlf_valid;
  input \fifo._m_axis_valid ;
  input [31:0]s_axi_wdata;
  input [8:0]s_axi_awaddr;
  input [8:0]s_axi_araddr;

  wire [31:0]D;
  wire [0:0]E;
  wire [31:0]Q;
  wire [0:0]SR;
  wire ctrl_enable_i_2_n_0;
  wire ctrl_enable_reg;
  wire ctrl_pause;
  wire \fifo._m_axis_valid ;
  wire \fifo.sync_clocks.data[25]_i_4_n_0 ;
  wire \i_regmap_request/up_dma_req_valid0 ;
  wire p_0_in6_in;
  wire p_0_in7_in;
  wire p_1_in;
  wire [4:0]p_2_in;
  wire [0:0]p_3_in;
  wire p_5_in;
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
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire up_axi_arready_int_i_1_n_0;
  wire up_axi_awready_int_i_2_n_0;
  wire up_axi_bvalid_int_i_1_n_0;
  wire \up_axi_rdata_int[31]_i_1_n_0 ;
  wire up_axi_rvalid_int_i_1_n_0;
  wire up_axi_rvalid_int_reg_0;
  wire up_axi_wready_int_i_1_n_0;
  wire \up_dma_dest_address[31]_i_2_n_0 ;
  wire up_dma_enable_tlen_reporting_i_2_n_0;
  wire up_dma_req_valid;
  wire up_eot;
  wire \up_irq_source[1]_i_2_n_0 ;
  wire \up_irq_source_reg[0] ;
  wire [1:0]\up_irq_source_reg[1] ;
  wire up_partial_length_valid;
  wire up_rack;
  wire up_rack_d;
  wire up_rack_s;
  wire up_rack_s_1;
  wire [8:0]up_raddr;
  wire \up_raddr_int_reg[4]_0 ;
  wire \up_rcount[0]_i_1_n_0 ;
  wire \up_rcount[1]_i_1_n_0 ;
  wire \up_rcount[2]_i_1_n_0 ;
  wire \up_rcount[3]_i_1_n_0 ;
  wire \up_rcount[4]_i_1_n_0 ;
  wire \up_rcount[4]_i_2_n_0 ;
  wire \up_rcount_reg_n_0_[0] ;
  wire \up_rcount_reg_n_0_[1] ;
  wire \up_rcount_reg_n_0_[2] ;
  wire \up_rcount_reg_n_0_[3] ;
  wire \up_rdata[0]_i_2_n_0 ;
  wire \up_rdata[0]_i_3_n_0 ;
  wire \up_rdata[0]_i_4_n_0 ;
  wire \up_rdata[0]_i_5_n_0 ;
  wire \up_rdata[0]_i_6_n_0 ;
  wire \up_rdata[0]_i_7_n_0 ;
  wire \up_rdata[0]_i_8_n_0 ;
  wire \up_rdata[0]_i_9_n_0 ;
  wire \up_rdata[10]_i_2_n_0 ;
  wire \up_rdata[10]_i_3_n_0 ;
  wire \up_rdata[11]_i_2_n_0 ;
  wire \up_rdata[12]_i_2_n_0 ;
  wire \up_rdata[13]_i_2_n_0 ;
  wire \up_rdata[14]_i_2_n_0 ;
  wire \up_rdata[15]_i_2_n_0 ;
  wire \up_rdata[16]_i_2_n_0 ;
  wire \up_rdata[16]_i_3_n_0 ;
  wire \up_rdata[16]_i_4_n_0 ;
  wire \up_rdata[17]_i_2_n_0 ;
  wire \up_rdata[17]_i_3_n_0 ;
  wire \up_rdata[17]_i_4_n_0 ;
  wire \up_rdata[18]_i_2_n_0 ;
  wire \up_rdata[18]_i_3_n_0 ;
  wire \up_rdata[18]_i_4_n_0 ;
  wire \up_rdata[19]_i_2_n_0 ;
  wire \up_rdata[1]_i_10_n_0 ;
  wire \up_rdata[1]_i_11_n_0 ;
  wire \up_rdata[1]_i_12_n_0 ;
  wire \up_rdata[1]_i_13_n_0 ;
  wire \up_rdata[1]_i_2_n_0 ;
  wire \up_rdata[1]_i_3_n_0 ;
  wire \up_rdata[1]_i_4_n_0 ;
  wire \up_rdata[1]_i_5_n_0 ;
  wire \up_rdata[1]_i_6_n_0 ;
  wire \up_rdata[1]_i_7_n_0 ;
  wire \up_rdata[1]_i_8_n_0 ;
  wire \up_rdata[1]_i_9_n_0 ;
  wire \up_rdata[20]_i_2_n_0 ;
  wire \up_rdata[21]_i_2_n_0 ;
  wire \up_rdata[22]_i_2_n_0 ;
  wire \up_rdata[23]_i_2_n_0 ;
  wire \up_rdata[23]_i_3_n_0 ;
  wire \up_rdata[23]_i_4_n_0 ;
  wire \up_rdata[2]_i_2_n_0 ;
  wire \up_rdata[2]_i_3_n_0 ;
  wire \up_rdata[30]_i_2_n_0 ;
  wire \up_rdata[30]_i_3_n_0 ;
  wire \up_rdata[30]_i_4_n_0 ;
  wire \up_rdata[31]_i_2_n_0 ;
  wire \up_rdata[31]_i_3_n_0 ;
  wire \up_rdata[31]_i_4_n_0 ;
  wire \up_rdata[31]_i_5_n_0 ;
  wire \up_rdata[31]_i_6_n_0 ;
  wire \up_rdata[3]_i_2_n_0 ;
  wire \up_rdata[3]_i_3_n_0 ;
  wire \up_rdata[4]_i_2_n_0 ;
  wire \up_rdata[5]_i_2_n_0 ;
  wire \up_rdata[5]_i_3_n_0 ;
  wire \up_rdata[6]_i_2_n_0 ;
  wire \up_rdata[7]_i_2_n_0 ;
  wire \up_rdata[8]_i_2_n_0 ;
  wire \up_rdata[8]_i_3_n_0 ;
  wire \up_rdata[9]_i_2_n_0 ;
  wire [31:0]up_rdata_d;
  wire \up_rdata_d[0]_i_1_n_0 ;
  wire \up_rdata_d[10]_i_1_n_0 ;
  wire \up_rdata_d[11]_i_1_n_0 ;
  wire \up_rdata_d[12]_i_1_n_0 ;
  wire \up_rdata_d[14]_i_1_n_0 ;
  wire \up_rdata_d[15]_i_1_n_0 ;
  wire \up_rdata_d[16]_i_1_n_0 ;
  wire \up_rdata_d[18]_i_1_n_0 ;
  wire \up_rdata_d[19]_i_1_n_0 ;
  wire \up_rdata_d[21]_i_1_n_0 ;
  wire \up_rdata_d[23]_i_1_n_0 ;
  wire \up_rdata_d[25]_i_1_n_0 ;
  wire \up_rdata_d[26]_i_1_n_0 ;
  wire \up_rdata_d[27]_i_1_n_0 ;
  wire \up_rdata_d[28]_i_1_n_0 ;
  wire \up_rdata_d[29]_i_1_n_0 ;
  wire \up_rdata_d[2]_i_1_n_0 ;
  wire \up_rdata_d[30]_i_1_n_0 ;
  wire \up_rdata_d[31]_i_1_n_0 ;
  wire \up_rdata_d[31]_i_2_n_0 ;
  wire \up_rdata_d[3]_i_1_n_0 ;
  wire \up_rdata_d[5]_i_1_n_0 ;
  wire \up_rdata_d[7]_i_1_n_0 ;
  wire \up_rdata_d[9]_i_1_n_0 ;
  wire [31:0]\up_rdata_d_reg[31]_0 ;
  wire \up_rdata_reg[0] ;
  wire \up_rdata_reg[0]_0 ;
  wire [25:0]\up_rdata_reg[1] ;
  wire \up_rdata_reg[1]_0 ;
  wire \up_rdata_reg[1]_1 ;
  wire [23:0]\up_rdata_reg[23] ;
  wire [16:0]\up_rdata_reg[23]_0 ;
  wire \up_rdata_reg[2] ;
  wire [31:0]\up_rdata_reg[31] ;
  wire [34:0]\up_rdata_reg[31]_0 ;
  wire \up_rdata_reg[3] ;
  wire up_rreq;
  wire up_rreq_int_i_1_n_0;
  wire up_rreq_int_reg_0;
  wire up_rsel_inv_i_1_n_0;
  wire \up_scratch[31]_i_2_n_0 ;
  wire up_tlf_valid;
  wire [1:0]up_transfer_id;
  wire [1:0]up_transfer_id_eot;
  wire up_wack;
  wire up_wack_d;
  wire up_wack_s;
  wire up_wack_s_0;
  wire [8:0]up_waddr;
  wire [0:0]\up_waddr_int_reg[5]_0 ;
  wire [0:0]\up_waddr_int_reg[5]_1 ;
  wire [0:0]\up_waddr_int_reg[8]_0 ;
  wire \up_waddr_int_reg[8]_1 ;
  wire \up_wcount[4]_i_1_n_0 ;
  wire \up_wcount_reg_n_0_[0] ;
  wire \up_wcount_reg_n_0_[1] ;
  wire \up_wcount_reg_n_0_[2] ;
  wire \up_wcount_reg_n_0_[3] ;
  wire \up_wdata_int_reg[0]_0 ;
  wire \up_wdata_int_reg[0]_1 ;
  wire [1:0]\up_wdata_int_reg[1]_0 ;
  wire \up_wdata_int_reg[1]_1 ;
  wire \up_wdata_int_reg[1]_2 ;
  wire \up_wdata_int_reg[2]_0 ;
  wire up_wreq;
  wire up_wreq_int_i_1_n_0;
  wire up_wsel_inv_i_1_n_0;

  LUT5 #(
    .INIT(32'hFFEF0020)) 
    ctrl_enable_i_1
       (.I0(Q[0]),
        .I1(up_waddr[1]),
        .I2(ctrl_enable_i_2_n_0),
        .I3(\up_scratch[31]_i_2_n_0 ),
        .I4(ctrl_enable_reg),
        .O(\up_wdata_int_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h04)) 
    ctrl_enable_i_2
       (.I0(up_waddr[5]),
        .I1(up_waddr[8]),
        .I2(up_waddr[0]),
        .O(ctrl_enable_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    ctrl_pause_i_1
       (.I0(Q[1]),
        .I1(up_waddr[1]),
        .I2(ctrl_enable_i_2_n_0),
        .I3(\up_scratch[31]_i_2_n_0 ),
        .I4(ctrl_pause),
        .O(\up_wdata_int_reg[1]_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF7FF)) 
    \fifo.sync_clocks.data[25]_i_2 
       (.I0(up_raddr[4]),
        .I1(up_raddr[8]),
        .I2(up_raddr[1]),
        .I3(up_raddr[2]),
        .I4(up_raddr[0]),
        .I5(\fifo.sync_clocks.data[25]_i_4_n_0 ),
        .O(\up_raddr_int_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \fifo.sync_clocks.data[25]_i_4 
       (.I0(up_raddr[5]),
        .I1(up_raddr[6]),
        .I2(up_raddr[7]),
        .I3(up_raddr[3]),
        .O(\fifo.sync_clocks.data[25]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFB0)) 
    \fifo.valid_i_1 
       (.I0(\up_raddr_int_reg[4]_0 ),
        .I1(up_rreq),
        .I2(up_tlf_valid),
        .I3(\fifo._m_axis_valid ),
        .O(up_rreq_int_reg_0));
  LUT2 #(
    .INIT(4'h2)) 
    up_axi_arready_int_i_1
       (.I0(up_rack_s_1),
        .I1(s_axi_arready),
        .O(up_axi_arready_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    up_axi_arready_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_axi_arready_int_i_1_n_0),
        .Q(s_axi_arready),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    up_axi_awready_int_i_2
       (.I0(up_wack_s_0),
        .I1(s_axi_awready),
        .O(up_axi_awready_int_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    up_axi_awready_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_axi_awready_int_i_2_n_0),
        .Q(s_axi_awready),
        .R(SR));
  LUT4 #(
    .INIT(16'h08A8)) 
    up_axi_bvalid_int_i_1
       (.I0(s_axi_aresetn),
        .I1(up_wack_d),
        .I2(s_axi_bvalid),
        .I3(s_axi_bready),
        .O(up_axi_bvalid_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    up_axi_bvalid_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_axi_bvalid_int_i_1_n_0),
        .Q(s_axi_bvalid),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h8F)) 
    \up_axi_rdata_int[31]_i_1 
       (.I0(up_axi_rvalid_int_reg_0),
        .I1(s_axi_rready),
        .I2(s_axi_aresetn),
        .O(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[0]),
        .Q(s_axi_rdata[0]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[10] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[10]),
        .Q(s_axi_rdata[10]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[11] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[11]),
        .Q(s_axi_rdata[11]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[12] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[12]),
        .Q(s_axi_rdata[12]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[13] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[13]),
        .Q(s_axi_rdata[13]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[14] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[14]),
        .Q(s_axi_rdata[14]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[15] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[15]),
        .Q(s_axi_rdata[15]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[16] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[16]),
        .Q(s_axi_rdata[16]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[17] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[17]),
        .Q(s_axi_rdata[17]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[18] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[18]),
        .Q(s_axi_rdata[18]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[19] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[19]),
        .Q(s_axi_rdata[19]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[1]),
        .Q(s_axi_rdata[1]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[20] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[20]),
        .Q(s_axi_rdata[20]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[21] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[21]),
        .Q(s_axi_rdata[21]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[22] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[22]),
        .Q(s_axi_rdata[22]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[23] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[23]),
        .Q(s_axi_rdata[23]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[24] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[24]),
        .Q(s_axi_rdata[24]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[25] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[25]),
        .Q(s_axi_rdata[25]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[26] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[26]),
        .Q(s_axi_rdata[26]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[27] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[27]),
        .Q(s_axi_rdata[27]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[28] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[28]),
        .Q(s_axi_rdata[28]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[29] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[29]),
        .Q(s_axi_rdata[29]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[2]),
        .Q(s_axi_rdata[2]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[30] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[30]),
        .Q(s_axi_rdata[30]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[31] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[31]),
        .Q(s_axi_rdata[31]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[3]),
        .Q(s_axi_rdata[3]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[4]),
        .Q(s_axi_rdata[4]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[5]),
        .Q(s_axi_rdata[5]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[6]),
        .Q(s_axi_rdata[6]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[7]),
        .Q(s_axi_rdata[7]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[8]),
        .Q(s_axi_rdata[8]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_axi_rdata_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(up_rack_d),
        .D(up_rdata_d[9]),
        .Q(s_axi_rdata[9]),
        .R(\up_axi_rdata_int[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h08A8)) 
    up_axi_rvalid_int_i_1
       (.I0(s_axi_aresetn),
        .I1(up_rack_d),
        .I2(up_axi_rvalid_int_reg_0),
        .I3(s_axi_rready),
        .O(up_axi_rvalid_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    up_axi_rvalid_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_axi_rvalid_int_i_1_n_0),
        .Q(up_axi_rvalid_int_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    up_axi_wready_int_i_1
       (.I0(up_wack_s_0),
        .I1(s_axi_wready),
        .O(up_axi_wready_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    up_axi_wready_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_axi_wready_int_i_1_n_0),
        .Q(s_axi_wready),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    \up_dma_dest_address[31]_i_1 
       (.I0(up_waddr[5]),
        .I1(up_waddr[8]),
        .I2(up_waddr[0]),
        .I3(up_waddr[2]),
        .I4(up_waddr[1]),
        .I5(\up_dma_dest_address[31]_i_2_n_0 ),
        .O(\up_waddr_int_reg[5]_1 ));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \up_dma_dest_address[31]_i_2 
       (.I0(up_waddr[3]),
        .I1(up_waddr[7]),
        .I2(up_wreq),
        .I3(up_waddr[6]),
        .I4(up_waddr[4]),
        .O(\up_dma_dest_address[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    up_dma_enable_tlen_reporting_i_1
       (.I0(Q[2]),
        .I1(up_dma_enable_tlen_reporting_i_2_n_0),
        .I2(up_waddr[0]),
        .I3(up_waddr[1]),
        .I4(\up_scratch[31]_i_2_n_0 ),
        .I5(p_3_in),
        .O(\up_wdata_int_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    up_dma_enable_tlen_reporting_i_2
       (.I0(up_waddr[8]),
        .I1(up_waddr[5]),
        .O(up_dma_enable_tlen_reporting_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    up_dma_last_i_1
       (.I0(Q[1]),
        .I1(up_dma_enable_tlen_reporting_i_2_n_0),
        .I2(up_waddr[0]),
        .I3(up_waddr[1]),
        .I4(\up_scratch[31]_i_2_n_0 ),
        .I5(\up_rdata_reg[31]_0 [0]),
        .O(\up_wdata_int_reg[1]_2 ));
  LUT6 #(
    .INIT(64'hE000E000C0000000)) 
    up_dma_req_valid_i_1
       (.I0(Q[0]),
        .I1(up_dma_req_valid),
        .I2(s_axi_aresetn),
        .I3(ctrl_enable_reg),
        .I4(\up_irq_source_reg[0] ),
        .I5(\i_regmap_request/up_dma_req_valid0 ),
        .O(\up_wdata_int_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    up_dma_req_valid_i_2
       (.I0(up_waddr[1]),
        .I1(up_waddr[5]),
        .I2(up_waddr[8]),
        .I3(up_waddr[0]),
        .I4(\up_scratch[31]_i_2_n_0 ),
        .O(\i_regmap_request/up_dma_req_valid0 ));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \up_dma_src_address[31]_i_1 
       (.I0(up_waddr[8]),
        .I1(up_waddr[5]),
        .I2(up_waddr[1]),
        .I3(up_waddr[2]),
        .I4(up_waddr[0]),
        .I5(\up_dma_dest_address[31]_i_2_n_0 ),
        .O(\up_waddr_int_reg[8]_0 ));
  LUT6 #(
    .INIT(64'h0000000004000000)) 
    \up_dma_x_length[23]_i_1 
       (.I0(up_waddr[5]),
        .I1(up_waddr[8]),
        .I2(up_waddr[0]),
        .I3(up_waddr[1]),
        .I4(up_waddr[2]),
        .I5(\up_dma_dest_address[31]_i_2_n_0 ),
        .O(\up_waddr_int_reg[5]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \up_irq_mask[1]_i_2 
       (.I0(\up_scratch[31]_i_2_n_0 ),
        .I1(up_waddr[8]),
        .I2(up_waddr[1]),
        .I3(up_waddr[5]),
        .I4(up_waddr[0]),
        .O(\up_waddr_int_reg[8]_1 ));
  LUT4 #(
    .INIT(16'hF575)) 
    \up_irq_source[0]_i_1 
       (.I0(\up_irq_source_reg[0] ),
        .I1(Q[0]),
        .I2(\up_irq_source_reg[1] [0]),
        .I3(\up_irq_source[1]_i_2_n_0 ),
        .O(\up_wdata_int_reg[1]_0 [0]));
  LUT4 #(
    .INIT(16'hFABA)) 
    \up_irq_source[1]_i_1 
       (.I0(up_eot),
        .I1(Q[1]),
        .I2(\up_irq_source_reg[1] [1]),
        .I3(\up_irq_source[1]_i_2_n_0 ),
        .O(\up_wdata_int_reg[1]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hFEFFFFFF)) 
    \up_irq_source[1]_i_2 
       (.I0(\up_scratch[31]_i_2_n_0 ),
        .I1(up_waddr[8]),
        .I2(up_waddr[1]),
        .I3(up_waddr[5]),
        .I4(up_waddr[0]),
        .O(\up_irq_source[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hC888888888888888)) 
    up_rack_d_i_1
       (.I0(up_rack),
        .I1(p_0_in6_in),
        .I2(\up_rcount_reg_n_0_[2] ),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(up_rack_s_1));
  FDRE #(
    .INIT(1'b0)) 
    up_rack_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rack_s_1),
        .Q(up_rack_d),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_raddr_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(p_1_in),
        .D(s_axi_araddr[0]),
        .Q(up_raddr[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_raddr_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(p_1_in),
        .D(s_axi_araddr[1]),
        .Q(up_raddr[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_raddr_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(p_1_in),
        .D(s_axi_araddr[2]),
        .Q(up_raddr[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_raddr_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(p_1_in),
        .D(s_axi_araddr[3]),
        .Q(up_raddr[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_raddr_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(p_1_in),
        .D(s_axi_araddr[4]),
        .Q(up_raddr[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_raddr_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(p_1_in),
        .D(s_axi_araddr[5]),
        .Q(up_raddr[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_raddr_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(p_1_in),
        .D(s_axi_araddr[6]),
        .Q(up_raddr[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_raddr_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(p_1_in),
        .D(s_axi_araddr[7]),
        .Q(up_raddr[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_raddr_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(p_1_in),
        .D(s_axi_araddr[8]),
        .Q(up_raddr[8]),
        .R(SR));
  LUT3 #(
    .INIT(8'h04)) 
    \up_rcount[0]_i_1 
       (.I0(up_rack),
        .I1(p_0_in6_in),
        .I2(\up_rcount_reg_n_0_[0] ),
        .O(\up_rcount[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0220)) 
    \up_rcount[1]_i_1 
       (.I0(p_0_in6_in),
        .I1(up_rack),
        .I2(\up_rcount_reg_n_0_[0] ),
        .I3(\up_rcount_reg_n_0_[1] ),
        .O(\up_rcount[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h02222000)) 
    \up_rcount[2]_i_1 
       (.I0(p_0_in6_in),
        .I1(up_rack),
        .I2(\up_rcount_reg_n_0_[1] ),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[2] ),
        .O(\up_rcount[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h007F000000800000)) 
    \up_rcount[3]_i_1 
       (.I0(\up_rcount_reg_n_0_[1] ),
        .I1(\up_rcount_reg_n_0_[0] ),
        .I2(\up_rcount_reg_n_0_[2] ),
        .I3(up_rack),
        .I4(p_0_in6_in),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(\up_rcount[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \up_rcount[4]_i_1 
       (.I0(up_rack_s),
        .I1(up_rreq),
        .I2(p_0_in6_in),
        .O(\up_rcount[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h15555555FFFFFFFF)) 
    \up_rcount[4]_i_2 
       (.I0(up_rack),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(\up_rcount_reg_n_0_[0] ),
        .I3(\up_rcount_reg_n_0_[1] ),
        .I4(\up_rcount_reg_n_0_[3] ),
        .I5(p_0_in6_in),
        .O(\up_rcount[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE0A0A0A0A0A0A0A0)) 
    \up_rcount[4]_i_3 
       (.I0(up_rack),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(p_0_in6_in),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(up_rack_s));
  FDRE #(
    .INIT(1'b0)) 
    \up_rcount_reg[0] 
       (.C(s_axi_aclk),
        .CE(\up_rcount[4]_i_1_n_0 ),
        .D(\up_rcount[0]_i_1_n_0 ),
        .Q(\up_rcount_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rcount_reg[1] 
       (.C(s_axi_aclk),
        .CE(\up_rcount[4]_i_1_n_0 ),
        .D(\up_rcount[1]_i_1_n_0 ),
        .Q(\up_rcount_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rcount_reg[2] 
       (.C(s_axi_aclk),
        .CE(\up_rcount[4]_i_1_n_0 ),
        .D(\up_rcount[2]_i_1_n_0 ),
        .Q(\up_rcount_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rcount_reg[3] 
       (.C(s_axi_aclk),
        .CE(\up_rcount[4]_i_1_n_0 ),
        .D(\up_rcount[3]_i_1_n_0 ),
        .Q(\up_rcount_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rcount_reg[4] 
       (.C(s_axi_aclk),
        .CE(\up_rcount[4]_i_1_n_0 ),
        .D(\up_rcount[4]_i_2_n_0 ),
        .Q(p_0_in6_in),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFAE)) 
    \up_rdata[0]_i_1 
       (.I0(\up_rdata[0]_i_2_n_0 ),
        .I1(\up_rdata_reg[1] [24]),
        .I2(\up_raddr_int_reg[4]_0 ),
        .I3(\up_rdata[0]_i_3_n_0 ),
        .I4(\up_rdata[0]_i_4_n_0 ),
        .I5(\up_rdata[0]_i_5_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h88F8888888888888)) 
    \up_rdata[0]_i_2 
       (.I0(\up_rdata_reg[23] [0]),
        .I1(\up_rdata[23]_i_3_n_0 ),
        .I2(\up_rdata[30]_i_4_n_0 ),
        .I3(up_raddr[1]),
        .I4(up_transfer_id[0]),
        .I5(\up_rdata[0]_i_6_n_0 ),
        .O(\up_rdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAEAEEAAAAAAAAAAA)) 
    \up_rdata[0]_i_3 
       (.I0(\up_rdata[0]_i_7_n_0 ),
        .I1(\up_rdata[1]_i_11_n_0 ),
        .I2(up_raddr[0]),
        .I3(\up_irq_source_reg[1] [0]),
        .I4(\up_rdata_reg[0] ),
        .I5(\up_rdata[1]_i_10_n_0 ),
        .O(\up_rdata[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \up_rdata[0]_i_4 
       (.I0(\up_rdata[0]_i_8_n_0 ),
        .I1(\up_rdata[1]_i_9_n_0 ),
        .I2(\up_rdata[31]_i_3_n_0 ),
        .I3(\up_rdata_reg[0]_0 ),
        .I4(\up_rdata[0]_i_9_n_0 ),
        .O(\up_rdata[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEAAAEAAAEAAA)) 
    \up_rdata[0]_i_5 
       (.I0(\up_rdata[1]_i_5_n_0 ),
        .I1(up_raddr[0]),
        .I2(up_transfer_id_eot[0]),
        .I3(\up_rdata[1]_i_7_n_0 ),
        .I4(\up_rdata_reg[1] [0]),
        .I5(\up_rdata[23]_i_4_n_0 ),
        .O(\up_rdata[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \up_rdata[0]_i_6 
       (.I0(up_raddr[2]),
        .I1(up_raddr[4]),
        .O(\up_rdata[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000010100000301)) 
    \up_rdata[0]_i_7 
       (.I0(up_raddr[1]),
        .I1(\fifo.sync_clocks.data[25]_i_4_n_0 ),
        .I2(up_raddr[8]),
        .I3(\up_rdata_reg[31] [0]),
        .I4(up_raddr[4]),
        .I5(up_raddr[2]),
        .O(\up_rdata[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \up_rdata[0]_i_8 
       (.I0(up_raddr[5]),
        .I1(\up_irq_source_reg[1] [0]),
        .I2(up_raddr[4]),
        .I3(up_raddr[2]),
        .I4(up_raddr[1]),
        .I5(up_raddr[8]),
        .O(\up_rdata[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hF000000040404040)) 
    \up_rdata[0]_i_9 
       (.I0(up_raddr[2]),
        .I1(ctrl_enable_reg),
        .I2(\up_rdata[31]_i_5_n_0 ),
        .I3(up_dma_req_valid),
        .I4(up_raddr[8]),
        .I5(up_raddr[1]),
        .O(\up_rdata[0]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \up_rdata[10]_i_1 
       (.I0(\up_rdata[10]_i_2_n_0 ),
        .I1(\up_rdata[10]_i_3_n_0 ),
        .O(D[10]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \up_rdata[10]_i_2 
       (.I0(\up_rdata[18]_i_3_n_0 ),
        .I1(\up_rdata_reg[23]_0 [3]),
        .I2(\up_rdata[23]_i_3_n_0 ),
        .I3(\up_rdata_reg[23] [10]),
        .I4(\up_rdata_reg[1] [10]),
        .I5(\up_rdata[23]_i_4_n_0 ),
        .O(\up_rdata[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000A00C0000F00)) 
    \up_rdata[10]_i_3 
       (.I0(\up_rdata_reg[31] [10]),
        .I1(\up_rdata_reg[31]_0 [13]),
        .I2(up_raddr[8]),
        .I3(\up_rdata[31]_i_5_n_0 ),
        .I4(up_raddr[2]),
        .I5(up_raddr[1]),
        .O(\up_rdata[10]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \up_rdata[11]_i_1 
       (.I0(\up_rdata[11]_i_2_n_0 ),
        .I1(\up_rdata[23]_i_3_n_0 ),
        .I2(\up_rdata_reg[23] [11]),
        .I3(\up_rdata_reg[1] [11]),
        .I4(\up_rdata[23]_i_4_n_0 ),
        .O(D[11]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \up_rdata[11]_i_2 
       (.I0(\up_rdata[31]_i_2_n_0 ),
        .I1(\up_rdata_reg[31] [11]),
        .I2(\up_rdata[31]_i_4_n_0 ),
        .I3(\up_rdata_reg[31]_0 [14]),
        .I4(\up_rdata_reg[23]_0 [4]),
        .I5(\up_rdata[18]_i_3_n_0 ),
        .O(\up_rdata[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \up_rdata[12]_i_1 
       (.I0(\up_rdata[12]_i_2_n_0 ),
        .I1(\up_rdata[23]_i_3_n_0 ),
        .I2(\up_rdata_reg[23] [12]),
        .I3(\up_rdata_reg[1] [12]),
        .I4(\up_rdata[23]_i_4_n_0 ),
        .O(D[12]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \up_rdata[12]_i_2 
       (.I0(\up_rdata[31]_i_2_n_0 ),
        .I1(\up_rdata_reg[31] [12]),
        .I2(\up_rdata[31]_i_4_n_0 ),
        .I3(\up_rdata_reg[31]_0 [15]),
        .I4(\up_rdata_reg[23]_0 [5]),
        .I5(\up_rdata[18]_i_3_n_0 ),
        .O(\up_rdata[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAFFEAFFEA)) 
    \up_rdata[13]_i_1 
       (.I0(\up_rdata[13]_i_2_n_0 ),
        .I1(\up_rdata[17]_i_3_n_0 ),
        .I2(\up_rdata_reg[31]_0 [16]),
        .I3(\up_rdata[17]_i_4_n_0 ),
        .I4(\up_rdata[23]_i_4_n_0 ),
        .I5(\up_rdata_reg[1] [13]),
        .O(D[13]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \up_rdata[13]_i_2 
       (.I0(\up_rdata[31]_i_2_n_0 ),
        .I1(\up_rdata_reg[31] [13]),
        .I2(\up_rdata[23]_i_3_n_0 ),
        .I3(\up_rdata_reg[23] [13]),
        .I4(\up_rdata_reg[23]_0 [6]),
        .I5(\up_rdata[18]_i_3_n_0 ),
        .O(\up_rdata[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAFFEAFFEA)) 
    \up_rdata[14]_i_1 
       (.I0(\up_rdata[14]_i_2_n_0 ),
        .I1(\up_rdata[23]_i_4_n_0 ),
        .I2(\up_rdata_reg[1] [14]),
        .I3(\up_rdata[30]_i_2_n_0 ),
        .I4(\up_rdata[23]_i_3_n_0 ),
        .I5(\up_rdata_reg[23] [14]),
        .O(D[14]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \up_rdata[14]_i_2 
       (.I0(\up_rdata[30]_i_3_n_0 ),
        .I1(\up_rdata_reg[31] [14]),
        .I2(\up_rdata[31]_i_4_n_0 ),
        .I3(\up_rdata_reg[31]_0 [17]),
        .I4(\up_rdata_reg[23]_0 [7]),
        .I5(\up_rdata[18]_i_3_n_0 ),
        .O(\up_rdata[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \up_rdata[15]_i_1 
       (.I0(\up_rdata[15]_i_2_n_0 ),
        .I1(\up_rdata[23]_i_3_n_0 ),
        .I2(\up_rdata_reg[23] [15]),
        .I3(\up_rdata_reg[1] [15]),
        .I4(\up_rdata[23]_i_4_n_0 ),
        .O(D[15]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \up_rdata[15]_i_2 
       (.I0(\up_rdata[31]_i_2_n_0 ),
        .I1(\up_rdata_reg[31] [15]),
        .I2(\up_rdata[31]_i_4_n_0 ),
        .I3(\up_rdata_reg[31]_0 [18]),
        .I4(\up_rdata_reg[23]_0 [8]),
        .I5(\up_rdata[18]_i_3_n_0 ),
        .O(\up_rdata[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF40FF44)) 
    \up_rdata[16]_i_1 
       (.I0(up_raddr[1]),
        .I1(\up_rdata[16]_i_2_n_0 ),
        .I2(\up_rdata_reg[31]_0 [19]),
        .I3(\up_rdata[16]_i_3_n_0 ),
        .I4(up_raddr[8]),
        .I5(\up_rdata[16]_i_4_n_0 ),
        .O(D[16]));
  LUT2 #(
    .INIT(4'h8)) 
    \up_rdata[16]_i_2 
       (.I0(\up_rdata[31]_i_5_n_0 ),
        .I1(up_raddr[2]),
        .O(\up_rdata[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000C00)) 
    \up_rdata[16]_i_3 
       (.I0(\up_rdata_reg[1] [16]),
        .I1(\up_rdata[30]_i_4_n_0 ),
        .I2(up_raddr[8]),
        .I3(up_raddr[1]),
        .I4(up_raddr[2]),
        .I5(up_raddr[4]),
        .O(\up_rdata[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \up_rdata[16]_i_4 
       (.I0(\up_rdata[30]_i_3_n_0 ),
        .I1(\up_rdata_reg[31] [16]),
        .I2(\up_rdata[23]_i_3_n_0 ),
        .I3(\up_rdata_reg[23] [16]),
        .I4(\up_rdata_reg[23]_0 [9]),
        .I5(\up_rdata[18]_i_3_n_0 ),
        .O(\up_rdata[16]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAFFEAFFEA)) 
    \up_rdata[17]_i_1 
       (.I0(\up_rdata[17]_i_2_n_0 ),
        .I1(\up_rdata[17]_i_3_n_0 ),
        .I2(\up_rdata_reg[31]_0 [20]),
        .I3(\up_rdata[17]_i_4_n_0 ),
        .I4(\up_rdata[23]_i_4_n_0 ),
        .I5(\up_rdata_reg[1] [17]),
        .O(D[17]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \up_rdata[17]_i_2 
       (.I0(\up_rdata[31]_i_2_n_0 ),
        .I1(\up_rdata_reg[31] [17]),
        .I2(\up_rdata[23]_i_3_n_0 ),
        .I3(\up_rdata_reg[23] [17]),
        .I4(\up_rdata_reg[23]_0 [10]),
        .I5(\up_rdata[18]_i_3_n_0 ),
        .O(\up_rdata[17]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \up_rdata[17]_i_3 
       (.I0(up_raddr[2]),
        .I1(\up_rdata[31]_i_5_n_0 ),
        .I2(up_raddr[1]),
        .O(\up_rdata[17]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \up_rdata[17]_i_4 
       (.I0(up_raddr[8]),
        .I1(up_raddr[1]),
        .I2(up_raddr[2]),
        .I3(\up_rdata[31]_i_5_n_0 ),
        .O(\up_rdata[17]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEEE)) 
    \up_rdata[18]_i_1 
       (.I0(\up_rdata[30]_i_2_n_0 ),
        .I1(\up_rdata[18]_i_2_n_0 ),
        .I2(\up_rdata[18]_i_3_n_0 ),
        .I3(\up_rdata_reg[23]_0 [11]),
        .I4(\up_rdata[18]_i_4_n_0 ),
        .O(D[18]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \up_rdata[18]_i_2 
       (.I0(\up_rdata[23]_i_3_n_0 ),
        .I1(\up_rdata_reg[23] [18]),
        .I2(\up_rdata[23]_i_4_n_0 ),
        .I3(\up_rdata_reg[1] [18]),
        .I4(\up_rdata_reg[31]_0 [21]),
        .I5(\up_rdata[17]_i_3_n_0 ),
        .O(\up_rdata[18]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \up_rdata[18]_i_3 
       (.I0(up_raddr[8]),
        .I1(\up_rdata[31]_i_5_n_0 ),
        .I2(up_raddr[2]),
        .I3(up_raddr[1]),
        .O(\up_rdata[18]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFF020202)) 
    \up_rdata[18]_i_4 
       (.I0(\up_rdata[31]_i_5_n_0 ),
        .I1(up_raddr[1]),
        .I2(up_raddr[8]),
        .I3(\up_rdata_reg[31] [18]),
        .I4(\up_rdata[30]_i_3_n_0 ),
        .O(\up_rdata[18]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAFFEAFFEA)) 
    \up_rdata[19]_i_1 
       (.I0(\up_rdata[19]_i_2_n_0 ),
        .I1(\up_rdata[23]_i_4_n_0 ),
        .I2(\up_rdata_reg[1] [19]),
        .I3(\up_rdata[30]_i_2_n_0 ),
        .I4(\up_rdata[23]_i_3_n_0 ),
        .I5(\up_rdata_reg[23] [19]),
        .O(D[19]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \up_rdata[19]_i_2 
       (.I0(\up_rdata[30]_i_3_n_0 ),
        .I1(\up_rdata_reg[31] [19]),
        .I2(\up_rdata[31]_i_4_n_0 ),
        .I3(\up_rdata_reg[31]_0 [22]),
        .I4(\up_rdata_reg[23]_0 [12]),
        .I5(\up_rdata[18]_i_3_n_0 ),
        .O(\up_rdata[19]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \up_rdata[1]_i_1 
       (.I0(\up_rdata[1]_i_2_n_0 ),
        .I1(\up_rdata[1]_i_3_n_0 ),
        .I2(\up_rdata[1]_i_4_n_0 ),
        .I3(\up_rdata[1]_i_5_n_0 ),
        .I4(\up_rdata[1]_i_6_n_0 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \up_rdata[1]_i_10 
       (.I0(up_raddr[4]),
        .I1(up_raddr[2]),
        .I2(up_raddr[8]),
        .I3(up_raddr[1]),
        .O(\up_rdata[1]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \up_rdata[1]_i_11 
       (.I0(up_raddr[7]),
        .I1(up_raddr[6]),
        .I2(up_raddr[3]),
        .O(\up_rdata[1]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \up_rdata[1]_i_12 
       (.I0(up_raddr[1]),
        .I1(up_raddr[8]),
        .I2(ctrl_pause),
        .I3(up_raddr[2]),
        .I4(\up_rdata[31]_i_5_n_0 ),
        .O(\up_rdata[1]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008C80)) 
    \up_rdata[1]_i_13 
       (.I0(\up_rdata_reg[31]_0 [0]),
        .I1(\up_rdata[30]_i_4_n_0 ),
        .I2(up_raddr[1]),
        .I3(up_transfer_id[1]),
        .I4(up_raddr[4]),
        .I5(up_raddr[2]),
        .O(\up_rdata[1]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFF80808080808080)) 
    \up_rdata[1]_i_2 
       (.I0(\up_rdata[1]_i_7_n_0 ),
        .I1(up_transfer_id_eot[1]),
        .I2(up_raddr[0]),
        .I3(\up_rdata[1]_i_8_n_0 ),
        .I4(\up_rdata[1]_i_9_n_0 ),
        .I5(up_raddr[5]),
        .O(\up_rdata[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \up_rdata[1]_i_3 
       (.I0(\up_rdata[31]_i_3_n_0 ),
        .I1(\up_rdata_reg[1]_1 ),
        .I2(\up_rdata[23]_i_3_n_0 ),
        .I3(\up_rdata_reg[23] [1]),
        .I4(\up_rdata_reg[1] [1]),
        .I5(\up_rdata[23]_i_4_n_0 ),
        .O(\up_rdata[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF20000000)) 
    \up_rdata[1]_i_4 
       (.I0(\up_rdata[1]_i_10_n_0 ),
        .I1(\up_rdata_reg[1]_0 ),
        .I2(\up_irq_source_reg[1] [1]),
        .I3(up_raddr[0]),
        .I4(\up_rdata[1]_i_11_n_0 ),
        .I5(\up_rdata[17]_i_4_n_0 ),
        .O(\up_rdata[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000030)) 
    \up_rdata[1]_i_5 
       (.I0(up_raddr[1]),
        .I1(up_raddr[2]),
        .I2(up_raddr[0]),
        .I3(\fifo.sync_clocks.data[25]_i_4_n_0 ),
        .I4(up_raddr[4]),
        .I5(up_raddr[8]),
        .O(\up_rdata[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8FFFFFFF8FFF8)) 
    \up_rdata[1]_i_6 
       (.I0(\up_rdata_reg[31] [1]),
        .I1(\up_rdata[30]_i_3_n_0 ),
        .I2(\up_rdata[1]_i_12_n_0 ),
        .I3(\up_rdata[1]_i_13_n_0 ),
        .I4(\up_raddr_int_reg[4]_0 ),
        .I5(\up_rdata_reg[1] [25]),
        .O(\up_rdata[1]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \up_rdata[1]_i_7 
       (.I0(up_raddr[3]),
        .I1(\up_rdata[31]_i_6_n_0 ),
        .I2(up_raddr[5]),
        .I3(up_raddr[6]),
        .I4(up_raddr[7]),
        .O(\up_rdata[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000C0A)) 
    \up_rdata[1]_i_8 
       (.I0(\up_rdata_reg[1]_0 ),
        .I1(\up_irq_source_reg[1] [1]),
        .I2(up_raddr[8]),
        .I3(up_raddr[1]),
        .I4(up_raddr[2]),
        .I5(up_raddr[4]),
        .O(\up_rdata[1]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \up_rdata[1]_i_9 
       (.I0(up_raddr[3]),
        .I1(up_raddr[6]),
        .I2(up_raddr[7]),
        .I3(up_raddr[0]),
        .O(\up_rdata[1]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \up_rdata[20]_i_1 
       (.I0(\up_rdata[20]_i_2_n_0 ),
        .I1(\up_rdata[23]_i_3_n_0 ),
        .I2(\up_rdata_reg[23] [20]),
        .I3(\up_rdata_reg[1] [20]),
        .I4(\up_rdata[23]_i_4_n_0 ),
        .O(D[20]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \up_rdata[20]_i_2 
       (.I0(\up_rdata[31]_i_2_n_0 ),
        .I1(\up_rdata_reg[31] [20]),
        .I2(\up_rdata[31]_i_4_n_0 ),
        .I3(\up_rdata_reg[31]_0 [23]),
        .I4(\up_rdata_reg[23]_0 [13]),
        .I5(\up_rdata[18]_i_3_n_0 ),
        .O(\up_rdata[20]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \up_rdata[21]_i_1 
       (.I0(\up_rdata[21]_i_2_n_0 ),
        .I1(\up_rdata[23]_i_3_n_0 ),
        .I2(\up_rdata_reg[23] [21]),
        .I3(\up_rdata_reg[1] [21]),
        .I4(\up_rdata[23]_i_4_n_0 ),
        .O(D[21]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \up_rdata[21]_i_2 
       (.I0(\up_rdata[31]_i_2_n_0 ),
        .I1(\up_rdata_reg[31] [21]),
        .I2(\up_rdata[31]_i_4_n_0 ),
        .I3(\up_rdata_reg[31]_0 [24]),
        .I4(\up_rdata_reg[23]_0 [14]),
        .I5(\up_rdata[18]_i_3_n_0 ),
        .O(\up_rdata[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAFFEAFFEA)) 
    \up_rdata[22]_i_1 
       (.I0(\up_rdata[22]_i_2_n_0 ),
        .I1(\up_rdata[23]_i_4_n_0 ),
        .I2(\up_rdata_reg[1] [22]),
        .I3(\up_rdata[30]_i_2_n_0 ),
        .I4(\up_rdata[23]_i_3_n_0 ),
        .I5(\up_rdata_reg[23] [22]),
        .O(D[22]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \up_rdata[22]_i_2 
       (.I0(\up_rdata[30]_i_3_n_0 ),
        .I1(\up_rdata_reg[31] [22]),
        .I2(\up_rdata[31]_i_4_n_0 ),
        .I3(\up_rdata_reg[31]_0 [25]),
        .I4(\up_rdata_reg[23]_0 [15]),
        .I5(\up_rdata[18]_i_3_n_0 ),
        .O(\up_rdata[22]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \up_rdata[23]_i_1 
       (.I0(\up_rdata[23]_i_2_n_0 ),
        .I1(\up_rdata[23]_i_3_n_0 ),
        .I2(\up_rdata_reg[23] [23]),
        .I3(\up_rdata_reg[1] [23]),
        .I4(\up_rdata[23]_i_4_n_0 ),
        .O(D[23]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \up_rdata[23]_i_2 
       (.I0(\up_rdata[31]_i_2_n_0 ),
        .I1(\up_rdata_reg[31] [23]),
        .I2(\up_rdata[31]_i_4_n_0 ),
        .I3(\up_rdata_reg[31]_0 [26]),
        .I4(\up_rdata_reg[23]_0 [16]),
        .I5(\up_rdata[18]_i_3_n_0 ),
        .O(\up_rdata[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \up_rdata[23]_i_3 
       (.I0(up_raddr[4]),
        .I1(up_raddr[8]),
        .I2(up_raddr[1]),
        .I3(up_raddr[2]),
        .I4(up_raddr[0]),
        .I5(\fifo.sync_clocks.data[25]_i_4_n_0 ),
        .O(\up_rdata[23]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \up_rdata[23]_i_4 
       (.I0(\up_rdata[30]_i_4_n_0 ),
        .I1(up_raddr[4]),
        .I2(up_raddr[8]),
        .I3(up_raddr[1]),
        .I4(up_raddr[2]),
        .O(\up_rdata[23]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \up_rdata[24]_i_1 
       (.I0(\up_rdata_reg[31]_0 [27]),
        .I1(\up_rdata[31]_i_4_n_0 ),
        .I2(\up_rdata_reg[31] [24]),
        .I3(\up_rdata[31]_i_2_n_0 ),
        .O(D[24]));
  LUT4 #(
    .INIT(16'hF888)) 
    \up_rdata[25]_i_1 
       (.I0(\up_rdata_reg[31]_0 [28]),
        .I1(\up_rdata[31]_i_4_n_0 ),
        .I2(\up_rdata_reg[31] [25]),
        .I3(\up_rdata[31]_i_2_n_0 ),
        .O(D[25]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \up_rdata[26]_i_1 
       (.I0(\up_rdata[30]_i_2_n_0 ),
        .I1(\up_rdata[30]_i_3_n_0 ),
        .I2(\up_rdata_reg[31] [26]),
        .I3(\up_rdata_reg[31]_0 [29]),
        .I4(\up_rdata[31]_i_4_n_0 ),
        .O(D[26]));
  LUT4 #(
    .INIT(16'hF888)) 
    \up_rdata[27]_i_1 
       (.I0(\up_rdata_reg[31]_0 [30]),
        .I1(\up_rdata[31]_i_4_n_0 ),
        .I2(\up_rdata_reg[31] [27]),
        .I3(\up_rdata[31]_i_2_n_0 ),
        .O(D[27]));
  LUT4 #(
    .INIT(16'hF888)) 
    \up_rdata[28]_i_1 
       (.I0(\up_rdata_reg[31]_0 [31]),
        .I1(\up_rdata[31]_i_4_n_0 ),
        .I2(\up_rdata_reg[31] [28]),
        .I3(\up_rdata[31]_i_2_n_0 ),
        .O(D[28]));
  LUT4 #(
    .INIT(16'hF888)) 
    \up_rdata[29]_i_1 
       (.I0(\up_rdata_reg[31]_0 [32]),
        .I1(\up_rdata[31]_i_4_n_0 ),
        .I2(\up_rdata_reg[31] [29]),
        .I3(\up_rdata[31]_i_2_n_0 ),
        .O(D[29]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    \up_rdata[2]_i_1 
       (.I0(\up_rdata_reg[31] [2]),
        .I1(\up_rdata[31]_i_2_n_0 ),
        .I2(\up_rdata[2]_i_2_n_0 ),
        .I3(\up_rdata[23]_i_4_n_0 ),
        .I4(\up_rdata_reg[1] [2]),
        .I5(\up_rdata[2]_i_3_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \up_rdata[2]_i_2 
       (.I0(p_3_in),
        .I1(up_raddr[4]),
        .I2(up_raddr[1]),
        .I3(up_raddr[2]),
        .I4(up_raddr[8]),
        .I5(\up_rdata[30]_i_4_n_0 ),
        .O(\up_rdata[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \up_rdata[2]_i_3 
       (.I0(\up_rdata[18]_i_3_n_0 ),
        .I1(\up_rdata_reg[31]_0 [1]),
        .I2(\up_rdata[31]_i_3_n_0 ),
        .I3(\up_rdata_reg[2] ),
        .I4(\up_rdata_reg[23] [2]),
        .I5(\up_rdata[23]_i_3_n_0 ),
        .O(\up_rdata[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \up_rdata[30]_i_1 
       (.I0(\up_rdata[30]_i_2_n_0 ),
        .I1(\up_rdata[30]_i_3_n_0 ),
        .I2(\up_rdata_reg[31] [30]),
        .I3(\up_rdata_reg[31]_0 [33]),
        .I4(\up_rdata[31]_i_4_n_0 ),
        .O(D[30]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \up_rdata[30]_i_2 
       (.I0(up_raddr[4]),
        .I1(up_raddr[2]),
        .I2(up_raddr[1]),
        .I3(up_raddr[8]),
        .I4(\up_rdata[30]_i_4_n_0 ),
        .O(\up_rdata[30]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \up_rdata[30]_i_3 
       (.I0(up_raddr[4]),
        .I1(up_raddr[2]),
        .I2(up_raddr[1]),
        .I3(up_raddr[8]),
        .I4(\fifo.sync_clocks.data[25]_i_4_n_0 ),
        .O(\up_rdata[30]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \up_rdata[30]_i_4 
       (.I0(up_raddr[0]),
        .I1(up_raddr[3]),
        .I2(up_raddr[7]),
        .I3(up_raddr[6]),
        .I4(up_raddr[5]),
        .O(\up_rdata[30]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \up_rdata[31]_i_1 
       (.I0(\up_rdata[31]_i_2_n_0 ),
        .I1(\up_rdata_reg[31] [31]),
        .I2(\up_rdata[31]_i_3_n_0 ),
        .I3(up_partial_length_valid),
        .I4(\up_rdata_reg[31]_0 [34]),
        .I5(\up_rdata[31]_i_4_n_0 ),
        .O(D[31]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \up_rdata[31]_i_2 
       (.I0(up_raddr[8]),
        .I1(up_raddr[1]),
        .I2(up_raddr[2]),
        .I3(\up_rdata[31]_i_5_n_0 ),
        .O(\up_rdata[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    \up_rdata[31]_i_3 
       (.I0(up_raddr[7]),
        .I1(up_raddr[6]),
        .I2(up_raddr[5]),
        .I3(\up_rdata[31]_i_6_n_0 ),
        .I4(up_raddr[3]),
        .I5(up_raddr[0]),
        .O(\up_rdata[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \up_rdata[31]_i_4 
       (.I0(up_raddr[8]),
        .I1(\up_rdata[31]_i_5_n_0 ),
        .I2(up_raddr[2]),
        .I3(up_raddr[1]),
        .O(\up_rdata[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \up_rdata[31]_i_5 
       (.I0(up_raddr[0]),
        .I1(up_raddr[5]),
        .I2(up_raddr[6]),
        .I3(up_raddr[7]),
        .I4(up_raddr[3]),
        .I5(up_raddr[4]),
        .O(\up_rdata[31]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \up_rdata[31]_i_6 
       (.I0(up_raddr[4]),
        .I1(up_raddr[1]),
        .I2(up_raddr[2]),
        .I3(up_raddr[8]),
        .O(\up_rdata[31]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \up_rdata[3]_i_1 
       (.I0(\up_rdata[3]_i_2_n_0 ),
        .I1(\up_rdata[3]_i_3_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \up_rdata[3]_i_2 
       (.I0(\up_rdata[31]_i_3_n_0 ),
        .I1(\up_rdata_reg[3] ),
        .I2(\up_rdata[23]_i_3_n_0 ),
        .I3(\up_rdata_reg[23] [3]),
        .I4(\up_rdata_reg[1] [3]),
        .I5(\up_rdata[23]_i_4_n_0 ),
        .O(\up_rdata[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \up_rdata[3]_i_3 
       (.I0(\up_rdata[31]_i_2_n_0 ),
        .I1(\up_rdata_reg[31] [3]),
        .I2(\up_rdata[31]_i_4_n_0 ),
        .I3(\up_rdata_reg[31]_0 [6]),
        .I4(\up_rdata_reg[31]_0 [2]),
        .I5(\up_rdata[18]_i_3_n_0 ),
        .O(\up_rdata[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \up_rdata[4]_i_1 
       (.I0(\up_rdata[4]_i_2_n_0 ),
        .I1(\up_rdata[23]_i_3_n_0 ),
        .I2(\up_rdata_reg[23] [4]),
        .I3(\up_rdata_reg[1] [4]),
        .I4(\up_rdata[23]_i_4_n_0 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \up_rdata[4]_i_2 
       (.I0(\up_rdata[31]_i_2_n_0 ),
        .I1(\up_rdata_reg[31] [4]),
        .I2(\up_rdata[31]_i_4_n_0 ),
        .I3(\up_rdata_reg[31]_0 [7]),
        .I4(\up_rdata_reg[31]_0 [3]),
        .I5(\up_rdata[18]_i_3_n_0 ),
        .O(\up_rdata[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \up_rdata[5]_i_1 
       (.I0(\up_rdata[5]_i_2_n_0 ),
        .I1(\up_rdata[5]_i_3_n_0 ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \up_rdata[5]_i_2 
       (.I0(\up_rdata[18]_i_3_n_0 ),
        .I1(\up_rdata_reg[31]_0 [4]),
        .I2(\up_rdata[23]_i_3_n_0 ),
        .I3(\up_rdata_reg[23] [5]),
        .I4(\up_rdata_reg[1] [5]),
        .I5(\up_rdata[23]_i_4_n_0 ),
        .O(\up_rdata[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000A00C0000F00)) 
    \up_rdata[5]_i_3 
       (.I0(\up_rdata_reg[31] [5]),
        .I1(\up_rdata_reg[31]_0 [8]),
        .I2(up_raddr[8]),
        .I3(\up_rdata[31]_i_5_n_0 ),
        .I4(up_raddr[2]),
        .I5(up_raddr[1]),
        .O(\up_rdata[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \up_rdata[6]_i_1 
       (.I0(\up_rdata[8]_i_2_n_0 ),
        .I1(\up_rdata_reg[1] [6]),
        .I2(\up_rdata[23]_i_4_n_0 ),
        .I3(\up_rdata_reg[23] [6]),
        .I4(\up_rdata[23]_i_3_n_0 ),
        .I5(\up_rdata[6]_i_2_n_0 ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \up_rdata[6]_i_2 
       (.I0(\up_rdata[30]_i_3_n_0 ),
        .I1(\up_rdata_reg[31] [6]),
        .I2(\up_rdata[31]_i_4_n_0 ),
        .I3(\up_rdata_reg[31]_0 [9]),
        .I4(\up_rdata_reg[31]_0 [5]),
        .I5(\up_rdata[18]_i_3_n_0 ),
        .O(\up_rdata[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \up_rdata[7]_i_1 
       (.I0(\up_rdata[7]_i_2_n_0 ),
        .I1(\up_rdata[23]_i_3_n_0 ),
        .I2(\up_rdata_reg[23] [7]),
        .I3(\up_rdata_reg[1] [7]),
        .I4(\up_rdata[23]_i_4_n_0 ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \up_rdata[7]_i_2 
       (.I0(\up_rdata[31]_i_2_n_0 ),
        .I1(\up_rdata_reg[31] [7]),
        .I2(\up_rdata[31]_i_4_n_0 ),
        .I3(\up_rdata_reg[31]_0 [10]),
        .I4(\up_rdata_reg[23]_0 [0]),
        .I5(\up_rdata[18]_i_3_n_0 ),
        .O(\up_rdata[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \up_rdata[8]_i_1 
       (.I0(\up_rdata[8]_i_2_n_0 ),
        .I1(\up_rdata_reg[1] [8]),
        .I2(\up_rdata[23]_i_4_n_0 ),
        .I3(\up_rdata_reg[23] [8]),
        .I4(\up_rdata[23]_i_3_n_0 ),
        .I5(\up_rdata[8]_i_3_n_0 ),
        .O(D[8]));
  LUT6 #(
    .INIT(64'h0000000000020001)) 
    \up_rdata[8]_i_2 
       (.I0(up_raddr[1]),
        .I1(up_raddr[8]),
        .I2(up_raddr[4]),
        .I3(\fifo.sync_clocks.data[25]_i_4_n_0 ),
        .I4(up_raddr[0]),
        .I5(up_raddr[2]),
        .O(\up_rdata[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \up_rdata[8]_i_3 
       (.I0(\up_rdata[30]_i_3_n_0 ),
        .I1(\up_rdata_reg[31] [8]),
        .I2(\up_rdata[31]_i_4_n_0 ),
        .I3(\up_rdata_reg[31]_0 [11]),
        .I4(\up_rdata_reg[23]_0 [1]),
        .I5(\up_rdata[18]_i_3_n_0 ),
        .O(\up_rdata[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAFFEAFFEA)) 
    \up_rdata[9]_i_1 
       (.I0(\up_rdata[9]_i_2_n_0 ),
        .I1(\up_rdata[17]_i_3_n_0 ),
        .I2(\up_rdata_reg[31]_0 [12]),
        .I3(\up_rdata[17]_i_4_n_0 ),
        .I4(\up_rdata[23]_i_4_n_0 ),
        .I5(\up_rdata_reg[1] [9]),
        .O(D[9]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \up_rdata[9]_i_2 
       (.I0(\up_rdata[31]_i_2_n_0 ),
        .I1(\up_rdata_reg[31] [9]),
        .I2(\up_rdata[23]_i_3_n_0 ),
        .I3(\up_rdata_reg[23] [9]),
        .I4(\up_rdata_reg[23]_0 [2]),
        .I5(\up_rdata[18]_i_3_n_0 ),
        .O(\up_rdata[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \up_rdata_d[0]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [0]),
        .I1(s_axi_aresetn),
        .O(\up_rdata_d[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \up_rdata_d[10]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [10]),
        .I1(s_axi_aresetn),
        .O(\up_rdata_d[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \up_rdata_d[11]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [11]),
        .I1(s_axi_aresetn),
        .O(\up_rdata_d[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \up_rdata_d[12]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [12]),
        .I1(s_axi_aresetn),
        .O(\up_rdata_d[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \up_rdata_d[14]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [14]),
        .I1(s_axi_aresetn),
        .O(\up_rdata_d[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \up_rdata_d[15]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [15]),
        .I1(s_axi_aresetn),
        .O(\up_rdata_d[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \up_rdata_d[16]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [16]),
        .I1(s_axi_aresetn),
        .O(\up_rdata_d[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \up_rdata_d[18]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [18]),
        .I1(s_axi_aresetn),
        .O(\up_rdata_d[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \up_rdata_d[19]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [19]),
        .I1(s_axi_aresetn),
        .O(\up_rdata_d[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \up_rdata_d[21]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [21]),
        .I1(s_axi_aresetn),
        .O(\up_rdata_d[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \up_rdata_d[23]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [23]),
        .I1(s_axi_aresetn),
        .O(\up_rdata_d[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \up_rdata_d[25]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [25]),
        .I1(s_axi_aresetn),
        .O(\up_rdata_d[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \up_rdata_d[26]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [26]),
        .I1(s_axi_aresetn),
        .O(\up_rdata_d[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \up_rdata_d[27]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [27]),
        .I1(s_axi_aresetn),
        .O(\up_rdata_d[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \up_rdata_d[28]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [28]),
        .I1(s_axi_aresetn),
        .O(\up_rdata_d[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80000000FFFFFFFF)) 
    \up_rdata_d[29]_i_1 
       (.I0(p_0_in6_in),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(\up_rcount_reg_n_0_[0] ),
        .I3(\up_rcount_reg_n_0_[1] ),
        .I4(\up_rcount_reg_n_0_[3] ),
        .I5(s_axi_aresetn),
        .O(\up_rdata_d[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \up_rdata_d[2]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [2]),
        .I1(s_axi_aresetn),
        .O(\up_rdata_d[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \up_rdata_d[30]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [30]),
        .I1(s_axi_aresetn),
        .O(\up_rdata_d[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \up_rdata_d[31]_i_1 
       (.I0(s_axi_aresetn),
        .I1(p_0_in6_in),
        .I2(\up_rcount_reg_n_0_[2] ),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(\up_rdata_d[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \up_rdata_d[31]_i_2 
       (.I0(\up_rdata_d_reg[31]_0 [31]),
        .I1(s_axi_aresetn),
        .O(\up_rdata_d[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \up_rdata_d[3]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [3]),
        .I1(s_axi_aresetn),
        .O(\up_rdata_d[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \up_rdata_d[5]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [5]),
        .I1(s_axi_aresetn),
        .O(\up_rdata_d[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \up_rdata_d[7]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [7]),
        .I1(s_axi_aresetn),
        .O(\up_rdata_d[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \up_rdata_d[9]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [9]),
        .I1(s_axi_aresetn),
        .O(\up_rdata_d[9]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[0]_i_1_n_0 ),
        .Q(up_rdata_d[0]),
        .S(\up_rdata_d[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[10]_i_1_n_0 ),
        .Q(up_rdata_d[10]),
        .S(\up_rdata_d[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[11]_i_1_n_0 ),
        .Q(up_rdata_d[11]),
        .S(\up_rdata_d[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[12]_i_1_n_0 ),
        .Q(up_rdata_d[12]),
        .S(\up_rdata_d[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d_reg[31]_0 [13]),
        .Q(up_rdata_d[13]),
        .R(\up_rdata_d[29]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[14]_i_1_n_0 ),
        .Q(up_rdata_d[14]),
        .S(\up_rdata_d[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[15]_i_1_n_0 ),
        .Q(up_rdata_d[15]),
        .S(\up_rdata_d[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[16]_i_1_n_0 ),
        .Q(up_rdata_d[16]),
        .S(\up_rdata_d[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d_reg[31]_0 [17]),
        .Q(up_rdata_d[17]),
        .R(\up_rdata_d[29]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[18]_i_1_n_0 ),
        .Q(up_rdata_d[18]),
        .S(\up_rdata_d[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[19]_i_1_n_0 ),
        .Q(up_rdata_d[19]),
        .S(\up_rdata_d[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d_reg[31]_0 [1]),
        .Q(up_rdata_d[1]),
        .R(\up_rdata_d[29]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d_reg[31]_0 [20]),
        .Q(up_rdata_d[20]),
        .R(\up_rdata_d[29]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[21]_i_1_n_0 ),
        .Q(up_rdata_d[21]),
        .S(\up_rdata_d[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d_reg[31]_0 [22]),
        .Q(up_rdata_d[22]),
        .R(\up_rdata_d[29]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[23]_i_1_n_0 ),
        .Q(up_rdata_d[23]),
        .S(\up_rdata_d[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d_reg[31]_0 [24]),
        .Q(up_rdata_d[24]),
        .R(\up_rdata_d[29]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[25]_i_1_n_0 ),
        .Q(up_rdata_d[25]),
        .S(\up_rdata_d[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[26]_i_1_n_0 ),
        .Q(up_rdata_d[26]),
        .S(\up_rdata_d[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[27]_i_1_n_0 ),
        .Q(up_rdata_d[27]),
        .S(\up_rdata_d[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[28]_i_1_n_0 ),
        .Q(up_rdata_d[28]),
        .S(\up_rdata_d[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d_reg[31]_0 [29]),
        .Q(up_rdata_d[29]),
        .R(\up_rdata_d[29]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[2]_i_1_n_0 ),
        .Q(up_rdata_d[2]),
        .S(\up_rdata_d[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[30]_i_1_n_0 ),
        .Q(up_rdata_d[30]),
        .S(\up_rdata_d[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[31]_i_2_n_0 ),
        .Q(up_rdata_d[31]),
        .S(\up_rdata_d[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[3]_i_1_n_0 ),
        .Q(up_rdata_d[3]),
        .S(\up_rdata_d[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d_reg[31]_0 [4]),
        .Q(up_rdata_d[4]),
        .R(\up_rdata_d[29]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[5]_i_1_n_0 ),
        .Q(up_rdata_d[5]),
        .S(\up_rdata_d[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d_reg[31]_0 [6]),
        .Q(up_rdata_d[6]),
        .R(\up_rdata_d[29]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[7]_i_1_n_0 ),
        .Q(up_rdata_d[7]),
        .S(\up_rdata_d[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d_reg[31]_0 [8]),
        .Q(up_rdata_d[8]),
        .R(\up_rdata_d[29]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[9]_i_1_n_0 ),
        .Q(up_rdata_d[9]),
        .S(\up_rdata_d[31]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    up_rreq_int_i_1
       (.I0(s_axi_arvalid),
        .I1(s_axi_aresetn),
        .I2(p_1_in),
        .O(up_rreq_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    up_rreq_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rreq_int_i_1_n_0),
        .Q(up_rreq),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h55C0)) 
    up_rsel_inv_i_1
       (.I0(s_axi_arvalid),
        .I1(up_axi_rvalid_int_reg_0),
        .I2(s_axi_rready),
        .I3(p_1_in),
        .O(up_rsel_inv_i_1_n_0));
  (* inverted = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    up_rsel_reg_inv
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rsel_inv_i_1_n_0),
        .Q(p_1_in),
        .S(SR));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \up_scratch[31]_i_1 
       (.I0(up_waddr[0]),
        .I1(up_waddr[1]),
        .I2(up_waddr[5]),
        .I3(up_waddr[8]),
        .I4(\up_scratch[31]_i_2_n_0 ),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
    \up_scratch[31]_i_2 
       (.I0(up_waddr[4]),
        .I1(up_waddr[6]),
        .I2(up_wreq),
        .I3(up_waddr[7]),
        .I4(up_waddr[3]),
        .I5(up_waddr[2]),
        .O(\up_scratch[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAA00000000)) 
    up_wack_d_i_1
       (.I0(up_wack),
        .I1(\up_wcount_reg_n_0_[3] ),
        .I2(\up_wcount_reg_n_0_[2] ),
        .I3(\up_wcount_reg_n_0_[1] ),
        .I4(\up_wcount_reg_n_0_[0] ),
        .I5(p_0_in7_in),
        .O(up_wack_s_0));
  FDRE #(
    .INIT(1'b0)) 
    up_wack_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_wack_s_0),
        .Q(up_wack_d),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_waddr_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_awaddr[0]),
        .Q(up_waddr[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_waddr_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_awaddr[1]),
        .Q(up_waddr[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_waddr_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_awaddr[2]),
        .Q(up_waddr[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_waddr_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_awaddr[3]),
        .Q(up_waddr[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_waddr_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_awaddr[4]),
        .Q(up_waddr[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_waddr_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_awaddr[5]),
        .Q(up_waddr[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_waddr_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_awaddr[6]),
        .Q(up_waddr[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_waddr_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_awaddr[7]),
        .Q(up_waddr[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_waddr_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_awaddr[8]),
        .Q(up_waddr[8]),
        .R(SR));
  LUT3 #(
    .INIT(8'h04)) 
    \up_wcount[0]_i_1 
       (.I0(up_wack),
        .I1(p_0_in7_in),
        .I2(\up_wcount_reg_n_0_[0] ),
        .O(p_2_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0220)) 
    \up_wcount[1]_i_1 
       (.I0(p_0_in7_in),
        .I1(up_wack),
        .I2(\up_wcount_reg_n_0_[0] ),
        .I3(\up_wcount_reg_n_0_[1] ),
        .O(p_2_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h02222000)) 
    \up_wcount[2]_i_1 
       (.I0(p_0_in7_in),
        .I1(up_wack),
        .I2(\up_wcount_reg_n_0_[1] ),
        .I3(\up_wcount_reg_n_0_[0] ),
        .I4(\up_wcount_reg_n_0_[2] ),
        .O(p_2_in[2]));
  LUT6 #(
    .INIT(64'h007F000000800000)) 
    \up_wcount[3]_i_1 
       (.I0(\up_wcount_reg_n_0_[1] ),
        .I1(\up_wcount_reg_n_0_[0] ),
        .I2(\up_wcount_reg_n_0_[2] ),
        .I3(up_wack),
        .I4(p_0_in7_in),
        .I5(\up_wcount_reg_n_0_[3] ),
        .O(p_2_in[3]));
  LUT3 #(
    .INIT(8'hFE)) 
    \up_wcount[4]_i_1 
       (.I0(up_wack_s),
        .I1(up_wreq),
        .I2(p_0_in7_in),
        .O(\up_wcount[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h575F5F5F5F5F5F5F)) 
    \up_wcount[4]_i_2 
       (.I0(p_0_in7_in),
        .I1(\up_wcount_reg_n_0_[3] ),
        .I2(up_wack),
        .I3(\up_wcount_reg_n_0_[1] ),
        .I4(\up_wcount_reg_n_0_[0] ),
        .I5(\up_wcount_reg_n_0_[2] ),
        .O(p_2_in[4]));
  LUT6 #(
    .INIT(64'hE0A0A0A0A0A0A0A0)) 
    \up_wcount[4]_i_3 
       (.I0(up_wack),
        .I1(\up_wcount_reg_n_0_[2] ),
        .I2(p_0_in7_in),
        .I3(\up_wcount_reg_n_0_[0] ),
        .I4(\up_wcount_reg_n_0_[1] ),
        .I5(\up_wcount_reg_n_0_[3] ),
        .O(up_wack_s));
  FDRE #(
    .INIT(1'b0)) 
    \up_wcount_reg[0] 
       (.C(s_axi_aclk),
        .CE(\up_wcount[4]_i_1_n_0 ),
        .D(p_2_in[0]),
        .Q(\up_wcount_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wcount_reg[1] 
       (.C(s_axi_aclk),
        .CE(\up_wcount[4]_i_1_n_0 ),
        .D(p_2_in[1]),
        .Q(\up_wcount_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wcount_reg[2] 
       (.C(s_axi_aclk),
        .CE(\up_wcount[4]_i_1_n_0 ),
        .D(p_2_in[2]),
        .Q(\up_wcount_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wcount_reg[3] 
       (.C(s_axi_aclk),
        .CE(\up_wcount[4]_i_1_n_0 ),
        .D(p_2_in[3]),
        .Q(\up_wcount_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wcount_reg[4] 
       (.C(s_axi_aclk),
        .CE(\up_wcount[4]_i_1_n_0 ),
        .D(p_2_in[4]),
        .Q(p_0_in7_in),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[10] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[10]),
        .Q(Q[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[11] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[11]),
        .Q(Q[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[12] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[12]),
        .Q(Q[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[13] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[13]),
        .Q(Q[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[14] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[14]),
        .Q(Q[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[15] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[15]),
        .Q(Q[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[16] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[16]),
        .Q(Q[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[17] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[17]),
        .Q(Q[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[18] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[18]),
        .Q(Q[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[19] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[19]),
        .Q(Q[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[20] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[20]),
        .Q(Q[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[21] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[21]),
        .Q(Q[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[22] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[22]),
        .Q(Q[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[23] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[23]),
        .Q(Q[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[24] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[24]),
        .Q(Q[24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[25] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[25]),
        .Q(Q[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[26] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[26]),
        .Q(Q[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[27] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[27]),
        .Q(Q[27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[28] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[28]),
        .Q(Q[28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[29] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[29]),
        .Q(Q[29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[30] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[30]),
        .Q(Q[30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[31] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[31]),
        .Q(Q[31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[8]),
        .Q(Q[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_wdata_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(p_5_in),
        .D(s_axi_wdata[9]),
        .Q(Q[9]),
        .R(SR));
  LUT4 #(
    .INIT(16'h8000)) 
    up_wreq_int_i_1
       (.I0(p_5_in),
        .I1(s_axi_aresetn),
        .I2(s_axi_wvalid),
        .I3(s_axi_awvalid),
        .O(up_wreq_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    up_wreq_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_wreq_int_i_1_n_0),
        .Q(up_wreq),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h7777F000)) 
    up_wsel_inv_i_1
       (.I0(s_axi_wvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_bvalid),
        .I3(s_axi_bready),
        .I4(p_5_in),
        .O(up_wsel_inv_i_1_n_0));
  (* inverted = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    up_wsel_reg_inv
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_wsel_inv_i_1_n_0),
        .Q(p_5_in),
        .S(SR));
endmodule

(* ORIG_REF_NAME = "util_axis_fifo" *) 
module icyradio_axi_dmac_rf_rx1_0_util_axis_fifo
   (up_tlf_valid,
    ctrl_enable_reg,
    \m_axis_raddr_reg_reg[1] ,
    \fifo._m_axis_valid ,
    response_valid_reg,
    \fifo.valid_reg_0 ,
    \fifo.sync_clocks.data_reg[25]_0 ,
    \fifo.valid_reg_1 ,
    s_axi_aclk,
    up_transfer_id_eot_d,
    \s_axis_waddr_reg_reg[2] ,
    up_response_valid,
    response_ready_reg,
    up_bl_partial,
    up_tlf_s_valid_reg,
    \fifo.sync_clocks.data_reg[0]_0 ,
    up_rreq,
    \m_axis_raddr_reg_reg[0] ,
    up_partial_length_valid,
    Q);
  output up_tlf_valid;
  output ctrl_enable_reg;
  output \m_axis_raddr_reg_reg[1] ;
  output \fifo._m_axis_valid ;
  output response_valid_reg;
  output \fifo.valid_reg_0 ;
  output [25:0]\fifo.sync_clocks.data_reg[25]_0 ;
  input \fifo.valid_reg_1 ;
  input s_axi_aclk;
  input [1:0]up_transfer_id_eot_d;
  input \s_axis_waddr_reg_reg[2] ;
  input up_response_valid;
  input response_ready_reg;
  input up_bl_partial;
  input up_tlf_s_valid_reg;
  input \fifo.sync_clocks.data_reg[0]_0 ;
  input up_rreq;
  input \m_axis_raddr_reg_reg[0] ;
  input up_partial_length_valid;
  input [23:0]Q;

  wire [23:0]Q;
  wire ctrl_enable_reg;
  wire \fifo._m_axis_valid ;
  wire [25:0]\fifo.sync_clocks.data0 ;
  wire \fifo.sync_clocks.data_reg[0]_0 ;
  wire [25:0]\fifo.sync_clocks.data_reg[25]_0 ;
  wire \fifo.valid_reg_0 ;
  wire \fifo.valid_reg_1 ;
  wire [1:0]m_axis_raddr;
  wire \m_axis_raddr_reg_reg[0] ;
  wire \m_axis_raddr_reg_reg[1] ;
  wire m_axis_read_s;
  wire response_ready_reg;
  wire response_valid_reg;
  wire s_axi_aclk;
  wire [1:0]s_axis_waddr;
  wire \s_axis_waddr_reg_reg[2] ;
  wire s_axis_write_s;
  wire up_bl_partial;
  wire up_partial_length_valid;
  wire up_response_valid;
  wire up_rreq;
  wire up_tlf_s_valid_reg;
  wire up_tlf_valid;
  wire [1:0]up_transfer_id_eot_d;
  wire [1:0]\NLW_fifo.sync_clocks.ram_reg_0_3_0_5_DOD_UNCONNECTED ;
  wire [1:0]\NLW_fifo.sync_clocks.ram_reg_0_3_12_17_DOD_UNCONNECTED ;
  wire [1:0]\NLW_fifo.sync_clocks.ram_reg_0_3_18_23_DOD_UNCONNECTED ;
  wire \NLW_fifo.sync_clocks.ram_reg_0_3_24_25_SPO_UNCONNECTED ;
  wire \NLW_fifo.sync_clocks.ram_reg_0_3_24_25__0_SPO_UNCONNECTED ;
  wire [1:0]\NLW_fifo.sync_clocks.ram_reg_0_3_6_11_DOD_UNCONNECTED ;

  icyradio_axi_dmac_rf_rx1_0_util_axis_fifo_address_generator \fifo.i_address_gray 
       (.ctrl_enable_reg(ctrl_enable_reg),
        .\fifo._m_axis_valid (\fifo._m_axis_valid ),
        .\fifo.sync_clocks.data_reg[0] (\fifo.sync_clocks.data_reg[0]_0 ),
        .\m_axis_raddr_reg_reg[0]_0 (\m_axis_raddr_reg_reg[0] ),
        .\m_axis_raddr_reg_reg[1]_0 (\m_axis_raddr_reg_reg[1] ),
        .\m_axis_raddr_reg_reg[1]_1 (m_axis_raddr),
        .m_axis_read_s(m_axis_read_s),
        .response_ready_reg(response_ready_reg),
        .response_valid_reg(response_valid_reg),
        .s_axi_aclk(s_axi_aclk),
        .\s_axis_waddr_reg_reg[1]_0 (s_axis_waddr),
        .\s_axis_waddr_reg_reg[2]_0 (\s_axis_waddr_reg_reg[2] ),
        .s_axis_write_s(s_axis_write_s),
        .up_bl_partial(up_bl_partial),
        .up_response_valid(up_response_valid),
        .up_rreq(up_rreq),
        .up_tlf_s_valid_reg(up_tlf_s_valid_reg),
        .up_tlf_valid(up_tlf_valid));
  FDRE \fifo.sync_clocks.data_reg[0] 
       (.C(s_axi_aclk),
        .CE(m_axis_read_s),
        .D(\fifo.sync_clocks.data0 [0]),
        .Q(\fifo.sync_clocks.data_reg[25]_0 [0]),
        .R(1'b0));
  FDRE \fifo.sync_clocks.data_reg[10] 
       (.C(s_axi_aclk),
        .CE(m_axis_read_s),
        .D(\fifo.sync_clocks.data0 [10]),
        .Q(\fifo.sync_clocks.data_reg[25]_0 [10]),
        .R(1'b0));
  FDRE \fifo.sync_clocks.data_reg[11] 
       (.C(s_axi_aclk),
        .CE(m_axis_read_s),
        .D(\fifo.sync_clocks.data0 [11]),
        .Q(\fifo.sync_clocks.data_reg[25]_0 [11]),
        .R(1'b0));
  FDRE \fifo.sync_clocks.data_reg[12] 
       (.C(s_axi_aclk),
        .CE(m_axis_read_s),
        .D(\fifo.sync_clocks.data0 [12]),
        .Q(\fifo.sync_clocks.data_reg[25]_0 [12]),
        .R(1'b0));
  FDRE \fifo.sync_clocks.data_reg[13] 
       (.C(s_axi_aclk),
        .CE(m_axis_read_s),
        .D(\fifo.sync_clocks.data0 [13]),
        .Q(\fifo.sync_clocks.data_reg[25]_0 [13]),
        .R(1'b0));
  FDRE \fifo.sync_clocks.data_reg[14] 
       (.C(s_axi_aclk),
        .CE(m_axis_read_s),
        .D(\fifo.sync_clocks.data0 [14]),
        .Q(\fifo.sync_clocks.data_reg[25]_0 [14]),
        .R(1'b0));
  FDRE \fifo.sync_clocks.data_reg[15] 
       (.C(s_axi_aclk),
        .CE(m_axis_read_s),
        .D(\fifo.sync_clocks.data0 [15]),
        .Q(\fifo.sync_clocks.data_reg[25]_0 [15]),
        .R(1'b0));
  FDRE \fifo.sync_clocks.data_reg[16] 
       (.C(s_axi_aclk),
        .CE(m_axis_read_s),
        .D(\fifo.sync_clocks.data0 [16]),
        .Q(\fifo.sync_clocks.data_reg[25]_0 [16]),
        .R(1'b0));
  FDRE \fifo.sync_clocks.data_reg[17] 
       (.C(s_axi_aclk),
        .CE(m_axis_read_s),
        .D(\fifo.sync_clocks.data0 [17]),
        .Q(\fifo.sync_clocks.data_reg[25]_0 [17]),
        .R(1'b0));
  FDRE \fifo.sync_clocks.data_reg[18] 
       (.C(s_axi_aclk),
        .CE(m_axis_read_s),
        .D(\fifo.sync_clocks.data0 [18]),
        .Q(\fifo.sync_clocks.data_reg[25]_0 [18]),
        .R(1'b0));
  FDRE \fifo.sync_clocks.data_reg[19] 
       (.C(s_axi_aclk),
        .CE(m_axis_read_s),
        .D(\fifo.sync_clocks.data0 [19]),
        .Q(\fifo.sync_clocks.data_reg[25]_0 [19]),
        .R(1'b0));
  FDRE \fifo.sync_clocks.data_reg[1] 
       (.C(s_axi_aclk),
        .CE(m_axis_read_s),
        .D(\fifo.sync_clocks.data0 [1]),
        .Q(\fifo.sync_clocks.data_reg[25]_0 [1]),
        .R(1'b0));
  FDRE \fifo.sync_clocks.data_reg[20] 
       (.C(s_axi_aclk),
        .CE(m_axis_read_s),
        .D(\fifo.sync_clocks.data0 [20]),
        .Q(\fifo.sync_clocks.data_reg[25]_0 [20]),
        .R(1'b0));
  FDRE \fifo.sync_clocks.data_reg[21] 
       (.C(s_axi_aclk),
        .CE(m_axis_read_s),
        .D(\fifo.sync_clocks.data0 [21]),
        .Q(\fifo.sync_clocks.data_reg[25]_0 [21]),
        .R(1'b0));
  FDRE \fifo.sync_clocks.data_reg[22] 
       (.C(s_axi_aclk),
        .CE(m_axis_read_s),
        .D(\fifo.sync_clocks.data0 [22]),
        .Q(\fifo.sync_clocks.data_reg[25]_0 [22]),
        .R(1'b0));
  FDRE \fifo.sync_clocks.data_reg[23] 
       (.C(s_axi_aclk),
        .CE(m_axis_read_s),
        .D(\fifo.sync_clocks.data0 [23]),
        .Q(\fifo.sync_clocks.data_reg[25]_0 [23]),
        .R(1'b0));
  FDRE \fifo.sync_clocks.data_reg[24] 
       (.C(s_axi_aclk),
        .CE(m_axis_read_s),
        .D(\fifo.sync_clocks.data0 [24]),
        .Q(\fifo.sync_clocks.data_reg[25]_0 [24]),
        .R(1'b0));
  FDRE \fifo.sync_clocks.data_reg[25] 
       (.C(s_axi_aclk),
        .CE(m_axis_read_s),
        .D(\fifo.sync_clocks.data0 [25]),
        .Q(\fifo.sync_clocks.data_reg[25]_0 [25]),
        .R(1'b0));
  FDRE \fifo.sync_clocks.data_reg[2] 
       (.C(s_axi_aclk),
        .CE(m_axis_read_s),
        .D(\fifo.sync_clocks.data0 [2]),
        .Q(\fifo.sync_clocks.data_reg[25]_0 [2]),
        .R(1'b0));
  FDRE \fifo.sync_clocks.data_reg[3] 
       (.C(s_axi_aclk),
        .CE(m_axis_read_s),
        .D(\fifo.sync_clocks.data0 [3]),
        .Q(\fifo.sync_clocks.data_reg[25]_0 [3]),
        .R(1'b0));
  FDRE \fifo.sync_clocks.data_reg[4] 
       (.C(s_axi_aclk),
        .CE(m_axis_read_s),
        .D(\fifo.sync_clocks.data0 [4]),
        .Q(\fifo.sync_clocks.data_reg[25]_0 [4]),
        .R(1'b0));
  FDRE \fifo.sync_clocks.data_reg[5] 
       (.C(s_axi_aclk),
        .CE(m_axis_read_s),
        .D(\fifo.sync_clocks.data0 [5]),
        .Q(\fifo.sync_clocks.data_reg[25]_0 [5]),
        .R(1'b0));
  FDRE \fifo.sync_clocks.data_reg[6] 
       (.C(s_axi_aclk),
        .CE(m_axis_read_s),
        .D(\fifo.sync_clocks.data0 [6]),
        .Q(\fifo.sync_clocks.data_reg[25]_0 [6]),
        .R(1'b0));
  FDRE \fifo.sync_clocks.data_reg[7] 
       (.C(s_axi_aclk),
        .CE(m_axis_read_s),
        .D(\fifo.sync_clocks.data0 [7]),
        .Q(\fifo.sync_clocks.data_reg[25]_0 [7]),
        .R(1'b0));
  FDRE \fifo.sync_clocks.data_reg[8] 
       (.C(s_axi_aclk),
        .CE(m_axis_read_s),
        .D(\fifo.sync_clocks.data0 [8]),
        .Q(\fifo.sync_clocks.data_reg[25]_0 [8]),
        .R(1'b0));
  FDRE \fifo.sync_clocks.data_reg[9] 
       (.C(s_axi_aclk),
        .CE(m_axis_read_s),
        .D(\fifo.sync_clocks.data0 [9]),
        .Q(\fifo.sync_clocks.data_reg[25]_0 [9]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "104" *) 
  (* RTL_RAM_NAME = "i_regmap/i_regmap_request/i_transfer_lenghts_fifo/fifo.sync_clocks.ram_reg_0_3_0_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "3" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M \fifo.sync_clocks.ram_reg_0_3_0_5 
       (.ADDRA({1'b0,1'b0,1'b0,m_axis_raddr}),
        .ADDRB({1'b0,1'b0,1'b0,m_axis_raddr}),
        .ADDRC({1'b0,1'b0,1'b0,m_axis_raddr}),
        .ADDRD({1'b0,1'b0,1'b0,s_axis_waddr}),
        .DIA(Q[1:0]),
        .DIB(Q[3:2]),
        .DIC(Q[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(\fifo.sync_clocks.data0 [1:0]),
        .DOB(\fifo.sync_clocks.data0 [3:2]),
        .DOC(\fifo.sync_clocks.data0 [5:4]),
        .DOD(\NLW_fifo.sync_clocks.ram_reg_0_3_0_5_DOD_UNCONNECTED [1:0]),
        .WCLK(s_axi_aclk),
        .WE(s_axis_write_s));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "104" *) 
  (* RTL_RAM_NAME = "i_regmap/i_regmap_request/i_transfer_lenghts_fifo/fifo.sync_clocks.ram_reg_0_3_12_17" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "3" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M \fifo.sync_clocks.ram_reg_0_3_12_17 
       (.ADDRA({1'b0,1'b0,1'b0,m_axis_raddr}),
        .ADDRB({1'b0,1'b0,1'b0,m_axis_raddr}),
        .ADDRC({1'b0,1'b0,1'b0,m_axis_raddr}),
        .ADDRD({1'b0,1'b0,1'b0,s_axis_waddr}),
        .DIA(Q[13:12]),
        .DIB(Q[15:14]),
        .DIC(Q[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(\fifo.sync_clocks.data0 [13:12]),
        .DOB(\fifo.sync_clocks.data0 [15:14]),
        .DOC(\fifo.sync_clocks.data0 [17:16]),
        .DOD(\NLW_fifo.sync_clocks.ram_reg_0_3_12_17_DOD_UNCONNECTED [1:0]),
        .WCLK(s_axi_aclk),
        .WE(s_axis_write_s));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "104" *) 
  (* RTL_RAM_NAME = "i_regmap/i_regmap_request/i_transfer_lenghts_fifo/fifo.sync_clocks.ram_reg_0_3_18_23" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "3" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M \fifo.sync_clocks.ram_reg_0_3_18_23 
       (.ADDRA({1'b0,1'b0,1'b0,m_axis_raddr}),
        .ADDRB({1'b0,1'b0,1'b0,m_axis_raddr}),
        .ADDRC({1'b0,1'b0,1'b0,m_axis_raddr}),
        .ADDRD({1'b0,1'b0,1'b0,s_axis_waddr}),
        .DIA(Q[19:18]),
        .DIB(Q[21:20]),
        .DIC(Q[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(\fifo.sync_clocks.data0 [19:18]),
        .DOB(\fifo.sync_clocks.data0 [21:20]),
        .DOC(\fifo.sync_clocks.data0 [23:22]),
        .DOD(\NLW_fifo.sync_clocks.ram_reg_0_3_18_23_DOD_UNCONNECTED [1:0]),
        .WCLK(s_axi_aclk),
        .WE(s_axis_write_s));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "104" *) 
  (* RTL_RAM_NAME = "i_regmap/i_regmap_request/i_transfer_lenghts_fifo/fifo.sync_clocks.ram_reg_0_3_24_25" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "3" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "25" *) 
  RAM32X1D \fifo.sync_clocks.ram_reg_0_3_24_25 
       (.A0(s_axis_waddr[0]),
        .A1(s_axis_waddr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(up_transfer_id_eot_d[0]),
        .DPO(\fifo.sync_clocks.data0 [24]),
        .DPRA0(m_axis_raddr[0]),
        .DPRA1(m_axis_raddr[1]),
        .DPRA2(1'b0),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(\NLW_fifo.sync_clocks.ram_reg_0_3_24_25_SPO_UNCONNECTED ),
        .WCLK(s_axi_aclk),
        .WE(s_axis_write_s));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "104" *) 
  (* RTL_RAM_NAME = "i_regmap/i_regmap_request/i_transfer_lenghts_fifo/fifo.sync_clocks.ram_reg_0_3_24_25" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "3" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "25" *) 
  RAM32X1D \fifo.sync_clocks.ram_reg_0_3_24_25__0 
       (.A0(s_axis_waddr[0]),
        .A1(s_axis_waddr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(up_transfer_id_eot_d[1]),
        .DPO(\fifo.sync_clocks.data0 [25]),
        .DPRA0(m_axis_raddr[0]),
        .DPRA1(m_axis_raddr[1]),
        .DPRA2(1'b0),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(\NLW_fifo.sync_clocks.ram_reg_0_3_24_25__0_SPO_UNCONNECTED ),
        .WCLK(s_axi_aclk),
        .WE(s_axis_write_s));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "104" *) 
  (* RTL_RAM_NAME = "i_regmap/i_regmap_request/i_transfer_lenghts_fifo/fifo.sync_clocks.ram_reg_0_3_6_11" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "3" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M \fifo.sync_clocks.ram_reg_0_3_6_11 
       (.ADDRA({1'b0,1'b0,1'b0,m_axis_raddr}),
        .ADDRB({1'b0,1'b0,1'b0,m_axis_raddr}),
        .ADDRC({1'b0,1'b0,1'b0,m_axis_raddr}),
        .ADDRD({1'b0,1'b0,1'b0,s_axis_waddr}),
        .DIA(Q[7:6]),
        .DIB(Q[9:8]),
        .DIC(Q[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(\fifo.sync_clocks.data0 [7:6]),
        .DOB(\fifo.sync_clocks.data0 [9:8]),
        .DOC(\fifo.sync_clocks.data0 [11:10]),
        .DOD(\NLW_fifo.sync_clocks.ram_reg_0_3_6_11_DOD_UNCONNECTED [1:0]),
        .WCLK(s_axi_aclk),
        .WE(s_axis_write_s));
  FDRE #(
    .INIT(1'b0)) 
    \fifo.valid_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\fifo.valid_reg_1 ),
        .Q(up_tlf_valid),
        .R(ctrl_enable_reg));
  LUT5 #(
    .INIT(32'hFFCFEECE)) 
    up_partial_length_valid_i_1
       (.I0(up_tlf_valid),
        .I1(up_bl_partial),
        .I2(up_rreq),
        .I3(\fifo.sync_clocks.data_reg[0]_0 ),
        .I4(up_partial_length_valid),
        .O(\fifo.valid_reg_0 ));
endmodule

(* ORIG_REF_NAME = "util_axis_fifo" *) 
module icyradio_axi_dmac_rf_rx1_0_util_axis_fifo__parameterized0
   (out,
    \zerodeep.s_axis_waddr ,
    \cdc_sync_stage2_reg[0] ,
    E,
    \cdc_sync_stage2_reg[0]_0 ,
    \cdc_sync_stage1_reg[0] ,
    m_dest_axi_aclk,
    \cdc_sync_stage1_reg[0]_0 ,
    fifo_wr_clk,
    dest_bl_ready,
    src_bl_valid,
    Q);
  output [3:0]out;
  output \zerodeep.s_axis_waddr ;
  output \cdc_sync_stage2_reg[0] ;
  output [0:0]E;
  output \cdc_sync_stage2_reg[0]_0 ;
  input [0:0]\cdc_sync_stage1_reg[0] ;
  input m_dest_axi_aclk;
  input [0:0]\cdc_sync_stage1_reg[0]_0 ;
  input fifo_wr_clk;
  input dest_bl_ready;
  input src_bl_valid;
  input [4:0]Q;

  wire [0:0]E;
  wire [4:0]Q;
  wire [0:0]\cdc_sync_stage1_reg[0] ;
  wire [0:0]\cdc_sync_stage1_reg[0]_0 ;
  wire \cdc_sync_stage2_reg[0] ;
  wire \cdc_sync_stage2_reg[0]_0 ;
  wire dest_bl_ready;
  wire fifo_wr_clk;
  wire m_dest_axi_aclk;
  wire src_bl_valid;
  (* RTL_KEEP = "yes" *) wire [4:0]\zerodeep.cdc_sync_fifo_ram ;
  wire \zerodeep.cdc_sync_fifo_ram_reg0 ;
  wire \zerodeep.i_raddr_sync_n_2 ;
  wire \zerodeep.i_waddr_sync_n_2 ;
  wire \zerodeep.m_axis_raddr ;
  wire \zerodeep.s_axis_waddr ;

  assign out[3:0] = \zerodeep.cdc_sync_fifo_ram [4:1];
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[0] 
       (.C(fifo_wr_clk),
        .CE(\zerodeep.cdc_sync_fifo_ram_reg0 ),
        .D(Q[0]),
        .Q(\zerodeep.cdc_sync_fifo_ram [0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[1] 
       (.C(fifo_wr_clk),
        .CE(\zerodeep.cdc_sync_fifo_ram_reg0 ),
        .D(Q[1]),
        .Q(\zerodeep.cdc_sync_fifo_ram [1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[2] 
       (.C(fifo_wr_clk),
        .CE(\zerodeep.cdc_sync_fifo_ram_reg0 ),
        .D(Q[2]),
        .Q(\zerodeep.cdc_sync_fifo_ram [2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[3] 
       (.C(fifo_wr_clk),
        .CE(\zerodeep.cdc_sync_fifo_ram_reg0 ),
        .D(Q[3]),
        .Q(\zerodeep.cdc_sync_fifo_ram [3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[4] 
       (.C(fifo_wr_clk),
        .CE(\zerodeep.cdc_sync_fifo_ram_reg0 ),
        .D(Q[4]),
        .Q(\zerodeep.cdc_sync_fifo_ram [4]),
        .R(1'b0));
  icyradio_axi_dmac_rf_rx1_0_sync_bits__parameterized0__xdcDup__3 \zerodeep.i_raddr_sync 
       (.E(\zerodeep.cdc_sync_fifo_ram_reg0 ),
        .bl_valid_reg(\zerodeep.i_raddr_sync_n_2 ),
        .\cdc_sync_stage1_reg[0]_0 (\cdc_sync_stage1_reg[0]_0 ),
        .\cdc_sync_stage2_reg[0]_0 (\cdc_sync_stage2_reg[0] ),
        .fifo_wr_clk(fifo_wr_clk),
        .src_bl_valid(src_bl_valid),
        .\zerodeep.cdc_sync_fifo_ram_reg[0] (\zerodeep.s_axis_waddr ),
        .\zerodeep.m_axis_raddr (\zerodeep.m_axis_raddr ));
  icyradio_axi_dmac_rf_rx1_0_sync_bits__parameterized0__xdcDup__4 \zerodeep.i_waddr_sync 
       (.E(E),
        .\cdc_sync_stage1_reg[0]_0 (\cdc_sync_stage1_reg[0] ),
        .\cdc_sync_stage2_reg[0]_0 (\cdc_sync_stage2_reg[0]_0 ),
        .\cdc_sync_stage2_reg[0]_1 (\zerodeep.i_waddr_sync_n_2 ),
        .dest_bl_ready(dest_bl_ready),
        .m_dest_axi_aclk(m_dest_axi_aclk),
        .\zerodeep.m_axis_raddr (\zerodeep.m_axis_raddr ),
        .\zerodeep.s_axis_waddr (\zerodeep.s_axis_waddr ));
  FDRE #(
    .INIT(1'b0)) 
    \zerodeep.m_axis_raddr_reg 
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(\zerodeep.i_waddr_sync_n_2 ),
        .Q(\zerodeep.m_axis_raddr ),
        .R(\cdc_sync_stage1_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \zerodeep.s_axis_waddr_reg 
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(\zerodeep.i_raddr_sync_n_2 ),
        .Q(\zerodeep.s_axis_waddr ),
        .R(\cdc_sync_stage1_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "util_axis_fifo" *) 
module icyradio_axi_dmac_rf_rx1_0_util_axis_fifo__parameterized1
   (out,
    \cdc_sync_stage2_reg[0] ,
    \zerodeep.m_axis_raddr_reg_0 ,
    \cdc_sync_stage2_reg[0]_0 ,
    active0,
    \cdc_sync_stage2_reg[0]_1 ,
    \cdc_sync_stage2_reg[0]_2 ,
    m_dest_axi_aclk,
    \cdc_sync_stage1_reg[0] ,
    fifo_wr_clk,
    src_dest_valid_hs,
    dest_req_ready,
    src_req_ready,
    \zerodeep.m_axis_raddr_reg_1 ,
    \zerodeep.m_axis_raddr_reg_2 ,
    D);
  output [28:0]out;
  output \cdc_sync_stage2_reg[0] ;
  output \zerodeep.m_axis_raddr_reg_0 ;
  output \cdc_sync_stage2_reg[0]_0 ;
  output active0;
  output \cdc_sync_stage2_reg[0]_1 ;
  input [0:0]\cdc_sync_stage2_reg[0]_2 ;
  input m_dest_axi_aclk;
  input [0:0]\cdc_sync_stage1_reg[0] ;
  input fifo_wr_clk;
  input src_dest_valid_hs;
  input dest_req_ready;
  input src_req_ready;
  input \zerodeep.m_axis_raddr_reg_1 ;
  input \zerodeep.m_axis_raddr_reg_2 ;
  input [29:0]D;

  wire [29:0]D;
  wire active0;
  wire [0:0]\cdc_sync_stage1_reg[0] ;
  wire \cdc_sync_stage2_reg[0] ;
  wire \cdc_sync_stage2_reg[0]_0 ;
  wire \cdc_sync_stage2_reg[0]_1 ;
  wire [0:0]\cdc_sync_stage2_reg[0]_2 ;
  wire dest_req_ready;
  wire fifo_wr_clk;
  wire m_dest_axi_aclk;
  wire src_dest_valid_hs;
  wire src_req_ready;
  (* RTL_KEEP = "yes" *) wire [29:0]\zerodeep.cdc_sync_fifo_ram ;
  wire \zerodeep.cdc_sync_fifo_ram_reg0 ;
  wire \zerodeep.i_raddr_sync_n_3 ;
  wire \zerodeep.i_waddr_sync_n_1 ;
  wire \zerodeep.m_axis_raddr_reg_0 ;
  wire \zerodeep.m_axis_raddr_reg_1 ;
  wire \zerodeep.m_axis_raddr_reg_2 ;
  wire \zerodeep.s_axis_waddr_reg_n_0 ;

  assign out[28:0] = \zerodeep.cdc_sync_fifo_ram [29:1];
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[0] 
       (.C(fifo_wr_clk),
        .CE(\zerodeep.cdc_sync_fifo_ram_reg0 ),
        .D(D[0]),
        .Q(\zerodeep.cdc_sync_fifo_ram [0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[10] 
       (.C(fifo_wr_clk),
        .CE(\zerodeep.cdc_sync_fifo_ram_reg0 ),
        .D(D[10]),
        .Q(\zerodeep.cdc_sync_fifo_ram [10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[11] 
       (.C(fifo_wr_clk),
        .CE(\zerodeep.cdc_sync_fifo_ram_reg0 ),
        .D(D[11]),
        .Q(\zerodeep.cdc_sync_fifo_ram [11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[12] 
       (.C(fifo_wr_clk),
        .CE(\zerodeep.cdc_sync_fifo_ram_reg0 ),
        .D(D[12]),
        .Q(\zerodeep.cdc_sync_fifo_ram [12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[13] 
       (.C(fifo_wr_clk),
        .CE(\zerodeep.cdc_sync_fifo_ram_reg0 ),
        .D(D[13]),
        .Q(\zerodeep.cdc_sync_fifo_ram [13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[14] 
       (.C(fifo_wr_clk),
        .CE(\zerodeep.cdc_sync_fifo_ram_reg0 ),
        .D(D[14]),
        .Q(\zerodeep.cdc_sync_fifo_ram [14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[15] 
       (.C(fifo_wr_clk),
        .CE(\zerodeep.cdc_sync_fifo_ram_reg0 ),
        .D(D[15]),
        .Q(\zerodeep.cdc_sync_fifo_ram [15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[16] 
       (.C(fifo_wr_clk),
        .CE(\zerodeep.cdc_sync_fifo_ram_reg0 ),
        .D(D[16]),
        .Q(\zerodeep.cdc_sync_fifo_ram [16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[17] 
       (.C(fifo_wr_clk),
        .CE(\zerodeep.cdc_sync_fifo_ram_reg0 ),
        .D(D[17]),
        .Q(\zerodeep.cdc_sync_fifo_ram [17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[18] 
       (.C(fifo_wr_clk),
        .CE(\zerodeep.cdc_sync_fifo_ram_reg0 ),
        .D(D[18]),
        .Q(\zerodeep.cdc_sync_fifo_ram [18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[19] 
       (.C(fifo_wr_clk),
        .CE(\zerodeep.cdc_sync_fifo_ram_reg0 ),
        .D(D[19]),
        .Q(\zerodeep.cdc_sync_fifo_ram [19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[1] 
       (.C(fifo_wr_clk),
        .CE(\zerodeep.cdc_sync_fifo_ram_reg0 ),
        .D(D[1]),
        .Q(\zerodeep.cdc_sync_fifo_ram [1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[20] 
       (.C(fifo_wr_clk),
        .CE(\zerodeep.cdc_sync_fifo_ram_reg0 ),
        .D(D[20]),
        .Q(\zerodeep.cdc_sync_fifo_ram [20]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[21] 
       (.C(fifo_wr_clk),
        .CE(\zerodeep.cdc_sync_fifo_ram_reg0 ),
        .D(D[21]),
        .Q(\zerodeep.cdc_sync_fifo_ram [21]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[22] 
       (.C(fifo_wr_clk),
        .CE(\zerodeep.cdc_sync_fifo_ram_reg0 ),
        .D(D[22]),
        .Q(\zerodeep.cdc_sync_fifo_ram [22]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[23] 
       (.C(fifo_wr_clk),
        .CE(\zerodeep.cdc_sync_fifo_ram_reg0 ),
        .D(D[23]),
        .Q(\zerodeep.cdc_sync_fifo_ram [23]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[24] 
       (.C(fifo_wr_clk),
        .CE(\zerodeep.cdc_sync_fifo_ram_reg0 ),
        .D(D[24]),
        .Q(\zerodeep.cdc_sync_fifo_ram [24]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[25] 
       (.C(fifo_wr_clk),
        .CE(\zerodeep.cdc_sync_fifo_ram_reg0 ),
        .D(D[25]),
        .Q(\zerodeep.cdc_sync_fifo_ram [25]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[26] 
       (.C(fifo_wr_clk),
        .CE(\zerodeep.cdc_sync_fifo_ram_reg0 ),
        .D(D[26]),
        .Q(\zerodeep.cdc_sync_fifo_ram [26]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[27] 
       (.C(fifo_wr_clk),
        .CE(\zerodeep.cdc_sync_fifo_ram_reg0 ),
        .D(D[27]),
        .Q(\zerodeep.cdc_sync_fifo_ram [27]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[28] 
       (.C(fifo_wr_clk),
        .CE(\zerodeep.cdc_sync_fifo_ram_reg0 ),
        .D(D[28]),
        .Q(\zerodeep.cdc_sync_fifo_ram [28]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[29] 
       (.C(fifo_wr_clk),
        .CE(\zerodeep.cdc_sync_fifo_ram_reg0 ),
        .D(D[29]),
        .Q(\zerodeep.cdc_sync_fifo_ram [29]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[2] 
       (.C(fifo_wr_clk),
        .CE(\zerodeep.cdc_sync_fifo_ram_reg0 ),
        .D(D[2]),
        .Q(\zerodeep.cdc_sync_fifo_ram [2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[3] 
       (.C(fifo_wr_clk),
        .CE(\zerodeep.cdc_sync_fifo_ram_reg0 ),
        .D(D[3]),
        .Q(\zerodeep.cdc_sync_fifo_ram [3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[4] 
       (.C(fifo_wr_clk),
        .CE(\zerodeep.cdc_sync_fifo_ram_reg0 ),
        .D(D[4]),
        .Q(\zerodeep.cdc_sync_fifo_ram [4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[5] 
       (.C(fifo_wr_clk),
        .CE(\zerodeep.cdc_sync_fifo_ram_reg0 ),
        .D(D[5]),
        .Q(\zerodeep.cdc_sync_fifo_ram [5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[6] 
       (.C(fifo_wr_clk),
        .CE(\zerodeep.cdc_sync_fifo_ram_reg0 ),
        .D(D[6]),
        .Q(\zerodeep.cdc_sync_fifo_ram [6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[7] 
       (.C(fifo_wr_clk),
        .CE(\zerodeep.cdc_sync_fifo_ram_reg0 ),
        .D(D[7]),
        .Q(\zerodeep.cdc_sync_fifo_ram [7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[8] 
       (.C(fifo_wr_clk),
        .CE(\zerodeep.cdc_sync_fifo_ram_reg0 ),
        .D(D[8]),
        .Q(\zerodeep.cdc_sync_fifo_ram [8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[9] 
       (.C(fifo_wr_clk),
        .CE(\zerodeep.cdc_sync_fifo_ram_reg0 ),
        .D(D[9]),
        .Q(\zerodeep.cdc_sync_fifo_ram [9]),
        .R(1'b0));
  icyradio_axi_dmac_rf_rx1_0_sync_bits__parameterized0__xdcDup__1 \zerodeep.i_raddr_sync 
       (.E(\zerodeep.cdc_sync_fifo_ram_reg0 ),
        .active0(active0),
        .\cdc_sync_stage1_reg[0]_0 (\cdc_sync_stage1_reg[0] ),
        .\cdc_sync_stage1_reg[0]_1 (\zerodeep.m_axis_raddr_reg_0 ),
        .\cdc_sync_stage2_reg[0]_0 (\cdc_sync_stage2_reg[0]_0 ),
        .\cdc_sync_stage2_reg[0]_1 (\cdc_sync_stage2_reg[0]_1 ),
        .fifo_wr_clk(fifo_wr_clk),
        .src_dest_valid_hs(src_dest_valid_hs),
        .src_dest_valid_hs_reg(\zerodeep.i_raddr_sync_n_3 ),
        .src_dest_valid_hs_reg_0(\zerodeep.s_axis_waddr_reg_n_0 ),
        .src_req_ready(src_req_ready),
        .\zerodeep.m_axis_raddr_reg (\zerodeep.m_axis_raddr_reg_1 ),
        .\zerodeep.m_axis_raddr_reg_0 (\zerodeep.m_axis_raddr_reg_2 ));
  icyradio_axi_dmac_rf_rx1_0_sync_bits__parameterized0__xdcDup__2 \zerodeep.i_waddr_sync 
       (.\cdc_sync_stage1_reg[0]_0 (\zerodeep.s_axis_waddr_reg_n_0 ),
        .\cdc_sync_stage2_reg[0]_0 (\cdc_sync_stage2_reg[0] ),
        .\cdc_sync_stage2_reg[0]_1 (\zerodeep.i_waddr_sync_n_1 ),
        .\cdc_sync_stage2_reg[0]_2 (\cdc_sync_stage2_reg[0]_2 ),
        .dest_req_ready(dest_req_ready),
        .m_dest_axi_aclk(m_dest_axi_aclk),
        .\zerodeep.m_axis_raddr_reg (\zerodeep.m_axis_raddr_reg_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \zerodeep.m_axis_raddr_reg 
       (.C(m_dest_axi_aclk),
        .CE(1'b1),
        .D(\zerodeep.i_waddr_sync_n_1 ),
        .Q(\zerodeep.m_axis_raddr_reg_0 ),
        .R(\cdc_sync_stage2_reg[0]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \zerodeep.s_axis_waddr_reg 
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(\zerodeep.i_raddr_sync_n_3 ),
        .Q(\zerodeep.s_axis_waddr_reg_n_0 ),
        .R(\cdc_sync_stage1_reg[0] ));
endmodule

(* ORIG_REF_NAME = "util_axis_fifo" *) 
module icyradio_axi_dmac_rf_rx1_0_util_axis_fifo__parameterized2
   (out,
    \zerodeep.s_axis_waddr_reg_0 ,
    \cdc_sync_stage2_reg[0] ,
    \zerodeep.m_axis_raddr_reg_0 ,
    \cdc_sync_stage2_reg[0]_0 ,
    E,
    \cdc_sync_stage2_reg[0]_1 ,
    up_dma_req_valid_reg,
    \cdc_sync_stage2_reg[0]_2 ,
    \zerodeep.cdc_sync_fifo_ram_reg[7]_0 ,
    \cdc_sync_stage1_reg[0] ,
    fifo_wr_clk,
    Q,
    s_axi_aclk,
    \zerodeep.m_axis_raddr_reg_1 ,
    \zerodeep.cdc_sync_fifo_ram_reg[67]_0 ,
    up_dma_req_valid,
    \zerodeep.cdc_sync_fifo_ram_reg[67]_1 ,
    cur_transfer_id,
    D);
  output [35:0]out;
  output \zerodeep.s_axis_waddr_reg_0 ;
  output \cdc_sync_stage2_reg[0] ;
  output \zerodeep.m_axis_raddr_reg_0 ;
  output \cdc_sync_stage2_reg[0]_0 ;
  output [0:0]E;
  output \cdc_sync_stage2_reg[0]_1 ;
  output up_dma_req_valid_reg;
  output \cdc_sync_stage2_reg[0]_2 ;
  output \zerodeep.cdc_sync_fifo_ram_reg[7]_0 ;
  input [0:0]\cdc_sync_stage1_reg[0] ;
  input fifo_wr_clk;
  input [0:0]Q;
  input s_axi_aclk;
  input \zerodeep.m_axis_raddr_reg_1 ;
  input \zerodeep.cdc_sync_fifo_ram_reg[67]_0 ;
  input up_dma_req_valid;
  input \zerodeep.cdc_sync_fifo_ram_reg[67]_1 ;
  input cur_transfer_id;
  input [64:0]D;

  wire [64:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]\cdc_sync_stage1_reg[0] ;
  wire \cdc_sync_stage2_reg[0] ;
  wire \cdc_sync_stage2_reg[0]_0 ;
  wire \cdc_sync_stage2_reg[0]_1 ;
  wire \cdc_sync_stage2_reg[0]_2 ;
  wire cur_transfer_id;
  wire fifo_wr_clk;
  wire s_axi_aclk;
  wire up_dma_req_valid;
  wire up_dma_req_valid_reg;
  (* RTL_KEEP = "yes" *) wire [67:0]\zerodeep.cdc_sync_fifo_ram ;
  wire \zerodeep.cdc_sync_fifo_ram_reg[67]_0 ;
  wire \zerodeep.cdc_sync_fifo_ram_reg[67]_1 ;
  wire \zerodeep.cdc_sync_fifo_ram_reg[7]_0 ;
  wire \zerodeep.i_raddr_sync_n_5 ;
  wire \zerodeep.m_axis_raddr_reg_0 ;
  wire \zerodeep.m_axis_raddr_reg_1 ;
  wire \zerodeep.s_axis_waddr_reg_0 ;

  assign out[35:7] = \zerodeep.cdc_sync_fifo_ram [67:39];
  assign out[6:2] = \zerodeep.cdc_sync_fifo_ram [8:4];
  assign out[1:0] = \zerodeep.cdc_sync_fifo_ram [1:0];
  LUT5 #(
    .INIT(32'h00000001)) 
    last_eot_i_2
       (.I0(\zerodeep.cdc_sync_fifo_ram [7]),
        .I1(\zerodeep.cdc_sync_fifo_ram [8]),
        .I2(\zerodeep.cdc_sync_fifo_ram [4]),
        .I3(\zerodeep.cdc_sync_fifo_ram [5]),
        .I4(\zerodeep.cdc_sync_fifo_ram [6]),
        .O(\zerodeep.cdc_sync_fifo_ram_reg[7]_0 ));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[0]),
        .Q(\zerodeep.cdc_sync_fifo_ram [0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[10] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[7]),
        .Q(\zerodeep.cdc_sync_fifo_ram [10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[11] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[8]),
        .Q(\zerodeep.cdc_sync_fifo_ram [11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[12] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[9]),
        .Q(\zerodeep.cdc_sync_fifo_ram [12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[13] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[10]),
        .Q(\zerodeep.cdc_sync_fifo_ram [13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[14] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[11]),
        .Q(\zerodeep.cdc_sync_fifo_ram [14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[15] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[12]),
        .Q(\zerodeep.cdc_sync_fifo_ram [15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[16] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[13]),
        .Q(\zerodeep.cdc_sync_fifo_ram [16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[17] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[14]),
        .Q(\zerodeep.cdc_sync_fifo_ram [17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[18] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[15]),
        .Q(\zerodeep.cdc_sync_fifo_ram [18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[19] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[16]),
        .Q(\zerodeep.cdc_sync_fifo_ram [19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(1'b1),
        .Q(\zerodeep.cdc_sync_fifo_ram [1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[20] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[17]),
        .Q(\zerodeep.cdc_sync_fifo_ram [20]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[21] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[18]),
        .Q(\zerodeep.cdc_sync_fifo_ram [21]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[22] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[19]),
        .Q(\zerodeep.cdc_sync_fifo_ram [22]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[23] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[20]),
        .Q(\zerodeep.cdc_sync_fifo_ram [23]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[24] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[21]),
        .Q(\zerodeep.cdc_sync_fifo_ram [24]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[25] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[22]),
        .Q(\zerodeep.cdc_sync_fifo_ram [25]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[26] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[23]),
        .Q(\zerodeep.cdc_sync_fifo_ram [26]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[27] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[24]),
        .Q(\zerodeep.cdc_sync_fifo_ram [27]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[28] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[25]),
        .Q(\zerodeep.cdc_sync_fifo_ram [28]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[29] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[26]),
        .Q(\zerodeep.cdc_sync_fifo_ram [29]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(1'b1),
        .Q(\zerodeep.cdc_sync_fifo_ram [2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[30] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[27]),
        .Q(\zerodeep.cdc_sync_fifo_ram [30]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[31] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[28]),
        .Q(\zerodeep.cdc_sync_fifo_ram [31]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[32] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[29]),
        .Q(\zerodeep.cdc_sync_fifo_ram [32]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[33] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[30]),
        .Q(\zerodeep.cdc_sync_fifo_ram [33]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[34] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[31]),
        .Q(\zerodeep.cdc_sync_fifo_ram [34]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[35] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[32]),
        .Q(\zerodeep.cdc_sync_fifo_ram [35]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[36] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[33]),
        .Q(\zerodeep.cdc_sync_fifo_ram [36]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[37] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[34]),
        .Q(\zerodeep.cdc_sync_fifo_ram [37]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[38] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[35]),
        .Q(\zerodeep.cdc_sync_fifo_ram [38]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[39] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[36]),
        .Q(\zerodeep.cdc_sync_fifo_ram [39]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(1'b1),
        .Q(\zerodeep.cdc_sync_fifo_ram [3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[40] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[37]),
        .Q(\zerodeep.cdc_sync_fifo_ram [40]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[41] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[38]),
        .Q(\zerodeep.cdc_sync_fifo_ram [41]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[42] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[39]),
        .Q(\zerodeep.cdc_sync_fifo_ram [42]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[43] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[40]),
        .Q(\zerodeep.cdc_sync_fifo_ram [43]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[44] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[41]),
        .Q(\zerodeep.cdc_sync_fifo_ram [44]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[45] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[42]),
        .Q(\zerodeep.cdc_sync_fifo_ram [45]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[46] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[43]),
        .Q(\zerodeep.cdc_sync_fifo_ram [46]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[47] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[44]),
        .Q(\zerodeep.cdc_sync_fifo_ram [47]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[48] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[45]),
        .Q(\zerodeep.cdc_sync_fifo_ram [48]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[49] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[46]),
        .Q(\zerodeep.cdc_sync_fifo_ram [49]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[1]),
        .Q(\zerodeep.cdc_sync_fifo_ram [4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[50] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[47]),
        .Q(\zerodeep.cdc_sync_fifo_ram [50]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[51] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[48]),
        .Q(\zerodeep.cdc_sync_fifo_ram [51]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[52] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[49]),
        .Q(\zerodeep.cdc_sync_fifo_ram [52]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[53] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[50]),
        .Q(\zerodeep.cdc_sync_fifo_ram [53]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[54] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[51]),
        .Q(\zerodeep.cdc_sync_fifo_ram [54]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[55] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[52]),
        .Q(\zerodeep.cdc_sync_fifo_ram [55]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[56] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[53]),
        .Q(\zerodeep.cdc_sync_fifo_ram [56]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[57] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[54]),
        .Q(\zerodeep.cdc_sync_fifo_ram [57]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[58] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[55]),
        .Q(\zerodeep.cdc_sync_fifo_ram [58]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[59] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[56]),
        .Q(\zerodeep.cdc_sync_fifo_ram [59]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[2]),
        .Q(\zerodeep.cdc_sync_fifo_ram [5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[60] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[57]),
        .Q(\zerodeep.cdc_sync_fifo_ram [60]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[61] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[58]),
        .Q(\zerodeep.cdc_sync_fifo_ram [61]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[62] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[59]),
        .Q(\zerodeep.cdc_sync_fifo_ram [62]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[63] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[60]),
        .Q(\zerodeep.cdc_sync_fifo_ram [63]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[64] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[61]),
        .Q(\zerodeep.cdc_sync_fifo_ram [64]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[65] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[62]),
        .Q(\zerodeep.cdc_sync_fifo_ram [65]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[66] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[63]),
        .Q(\zerodeep.cdc_sync_fifo_ram [66]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[67] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[64]),
        .Q(\zerodeep.cdc_sync_fifo_ram [67]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[6] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[3]),
        .Q(\zerodeep.cdc_sync_fifo_ram [6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[7] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[4]),
        .Q(\zerodeep.cdc_sync_fifo_ram [7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[8] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[5]),
        .Q(\zerodeep.cdc_sync_fifo_ram [8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \zerodeep.cdc_sync_fifo_ram_reg[9] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[6]),
        .Q(\zerodeep.cdc_sync_fifo_ram [9]),
        .R(1'b0));
  icyradio_axi_dmac_rf_rx1_0_sync_bits__parameterized0__xdcDup__5 \zerodeep.i_raddr_sync 
       (.E(E),
        .Q(Q),
        .\cdc_sync_stage1_reg[0]_0 (\zerodeep.m_axis_raddr_reg_0 ),
        .\cdc_sync_stage2_reg[0]_0 (\cdc_sync_stage2_reg[0]_0 ),
        .\cdc_sync_stage2_reg[0]_1 (\cdc_sync_stage2_reg[0]_1 ),
        .\cdc_sync_stage2_reg[0]_2 (\cdc_sync_stage2_reg[0]_2 ),
        .\cdc_sync_stage2_reg[0]_3 (\zerodeep.i_raddr_sync_n_5 ),
        .cur_transfer_id(cur_transfer_id),
        .s_axi_aclk(s_axi_aclk),
        .up_dma_req_valid(up_dma_req_valid),
        .up_dma_req_valid_reg(up_dma_req_valid_reg),
        .\zerodeep.cdc_sync_fifo_ram_reg[67] (\zerodeep.cdc_sync_fifo_ram_reg[67]_0 ),
        .\zerodeep.cdc_sync_fifo_ram_reg[67]_0 (\zerodeep.cdc_sync_fifo_ram_reg[67]_1 ),
        .\zerodeep.cdc_sync_fifo_ram_reg[67]_1 (\zerodeep.s_axis_waddr_reg_0 ));
  icyradio_axi_dmac_rf_rx1_0_sync_bits__parameterized0__xdcDup__6 \zerodeep.i_waddr_sync 
       (.\cdc_sync_stage1_reg[0]_0 (\cdc_sync_stage1_reg[0] ),
        .\cdc_sync_stage1_reg[0]_1 (\zerodeep.s_axis_waddr_reg_0 ),
        .\cdc_sync_stage2_reg[0]_0 (\cdc_sync_stage2_reg[0] ),
        .fifo_wr_clk(fifo_wr_clk));
  FDRE #(
    .INIT(1'b0)) 
    \zerodeep.m_axis_raddr_reg 
       (.C(fifo_wr_clk),
        .CE(1'b1),
        .D(\zerodeep.m_axis_raddr_reg_1 ),
        .Q(\zerodeep.m_axis_raddr_reg_0 ),
        .R(\cdc_sync_stage1_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \zerodeep.s_axis_waddr_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\zerodeep.i_raddr_sync_n_5 ),
        .Q(\zerodeep.s_axis_waddr_reg_0 ),
        .R(Q));
endmodule

(* ORIG_REF_NAME = "util_axis_fifo" *) 
module icyradio_axi_dmac_rf_rx1_0_util_axis_fifo__parameterized3
   (D,
    response_ready_reg,
    m_dest_axi_bready,
    id0,
    E,
    \zerodeep.axis_data_d_reg[8]_0 ,
    \zerodeep.axis_valid_d_reg_0 ,
    dest_response_valid,
    m_dest_axi_aclk,
    \FSM_sequential_state_reg[0] ,
    Q,
    up_response_ready,
    \id_reg[0] ,
    response_dest_ready,
    m_dest_axi_bvalid,
    \FSM_sequential_state_reg[1] ,
    \zerodeep.axis_data_d_reg[8]_1 );
  output [1:0]D;
  output response_ready_reg;
  output m_dest_axi_bready;
  output id0;
  output [0:0]E;
  output [7:0]\zerodeep.axis_data_d_reg[8]_0 ;
  input [0:0]\zerodeep.axis_valid_d_reg_0 ;
  input dest_response_valid;
  input m_dest_axi_aclk;
  input \FSM_sequential_state_reg[0] ;
  input [2:0]Q;
  input up_response_ready;
  input \id_reg[0] ;
  input response_dest_ready;
  input m_dest_axi_bvalid;
  input \FSM_sequential_state_reg[1] ;
  input [6:0]\zerodeep.axis_data_d_reg[8]_1 ;

  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_sequential_state[0]_i_2__0_n_0 ;
  wire \FSM_sequential_state[1]_i_3_n_0 ;
  wire \FSM_sequential_state_reg[0] ;
  wire \FSM_sequential_state_reg[1] ;
  wire [2:0]Q;
  wire dest_response_ready;
  wire dest_response_valid;
  wire id0;
  wire \id_reg[0] ;
  wire m_dest_axi_aclk;
  wire m_dest_axi_bready;
  wire m_dest_axi_bvalid;
  wire response_dest_ready;
  wire response_dest_valid;
  wire response_ready_reg;
  wire up_response_ready;
  wire [7:0]\zerodeep.axis_data_d_reg[8]_0 ;
  wire [6:0]\zerodeep.axis_data_d_reg[8]_1 ;
  wire [0:0]\zerodeep.axis_valid_d_reg_0 ;

  LUT5 #(
    .INIT(32'hFAFBFAAA)) 
    \FSM_sequential_state[0]_i_1__0 
       (.I0(\FSM_sequential_state[0]_i_2__0_n_0 ),
        .I1(\FSM_sequential_state_reg[0] ),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(up_response_ready),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h00FF000000000B0B)) 
    \FSM_sequential_state[0]_i_2__0 
       (.I0(response_dest_valid),
        .I1(\FSM_sequential_state_reg[0] ),
        .I2(Q[2]),
        .I3(\FSM_sequential_state_reg[1] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\FSM_sequential_state[0]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF02230)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(Q[0]),
        .I1(\FSM_sequential_state_reg[1] ),
        .I2(Q[1]),
        .I3(up_response_ready),
        .I4(Q[2]),
        .I5(\FSM_sequential_state[1]_i_3_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h00005F0000FF5F11)) 
    \FSM_sequential_state[1]_i_3 
       (.I0(\FSM_sequential_state_reg[0] ),
        .I1(response_dest_valid),
        .I2(up_response_ready),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(\FSM_sequential_state[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h8A00)) 
    \id[0]_i_1 
       (.I0(m_dest_axi_bvalid),
        .I1(response_dest_ready),
        .I2(response_dest_valid),
        .I3(\id_reg[0] ),
        .O(id0));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hA2)) 
    m_dest_axi_bready_INST_0
       (.I0(\id_reg[0] ),
        .I1(response_dest_valid),
        .I2(response_dest_ready),
        .O(m_dest_axi_bready));
  LUT2 #(
    .INIT(4'h8)) 
    \req_response_dest_data_burst_length[6]_i_1 
       (.I0(response_dest_valid),
        .I1(response_dest_ready),
        .O(E));
  LUT6 #(
    .INIT(64'h555555000000A030)) 
    response_dest_ready_i_1
       (.I0(up_response_ready),
        .I1(response_dest_valid),
        .I2(\FSM_sequential_state_reg[0] ),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(response_ready_reg));
  LUT2 #(
    .INIT(4'hB)) 
    \zerodeep.axis_data_d[8]_i_1 
       (.I0(response_dest_ready),
        .I1(response_dest_valid),
        .O(dest_response_ready));
  FDRE \zerodeep.axis_data_d_reg[0] 
       (.C(m_dest_axi_aclk),
        .CE(dest_response_ready),
        .D(\zerodeep.axis_data_d_reg[8]_1 [0]),
        .Q(\zerodeep.axis_data_d_reg[8]_0 [0]),
        .R(\zerodeep.axis_valid_d_reg_0 ));
  FDRE \zerodeep.axis_data_d_reg[1] 
       (.C(m_dest_axi_aclk),
        .CE(dest_response_ready),
        .D(\zerodeep.axis_data_d_reg[8]_1 [1]),
        .Q(\zerodeep.axis_data_d_reg[8]_0 [1]),
        .R(\zerodeep.axis_valid_d_reg_0 ));
  FDRE \zerodeep.axis_data_d_reg[3] 
       (.C(m_dest_axi_aclk),
        .CE(dest_response_ready),
        .D(1'b1),
        .Q(\zerodeep.axis_data_d_reg[8]_0 [2]),
        .R(\zerodeep.axis_valid_d_reg_0 ));
  FDRE \zerodeep.axis_data_d_reg[4] 
       (.C(m_dest_axi_aclk),
        .CE(dest_response_ready),
        .D(\zerodeep.axis_data_d_reg[8]_1 [2]),
        .Q(\zerodeep.axis_data_d_reg[8]_0 [3]),
        .R(\zerodeep.axis_valid_d_reg_0 ));
  FDRE \zerodeep.axis_data_d_reg[5] 
       (.C(m_dest_axi_aclk),
        .CE(dest_response_ready),
        .D(\zerodeep.axis_data_d_reg[8]_1 [3]),
        .Q(\zerodeep.axis_data_d_reg[8]_0 [4]),
        .R(\zerodeep.axis_valid_d_reg_0 ));
  FDRE \zerodeep.axis_data_d_reg[6] 
       (.C(m_dest_axi_aclk),
        .CE(dest_response_ready),
        .D(\zerodeep.axis_data_d_reg[8]_1 [4]),
        .Q(\zerodeep.axis_data_d_reg[8]_0 [5]),
        .R(\zerodeep.axis_valid_d_reg_0 ));
  FDRE \zerodeep.axis_data_d_reg[7] 
       (.C(m_dest_axi_aclk),
        .CE(dest_response_ready),
        .D(\zerodeep.axis_data_d_reg[8]_1 [5]),
        .Q(\zerodeep.axis_data_d_reg[8]_0 [6]),
        .R(\zerodeep.axis_valid_d_reg_0 ));
  FDRE \zerodeep.axis_data_d_reg[8] 
       (.C(m_dest_axi_aclk),
        .CE(dest_response_ready),
        .D(\zerodeep.axis_data_d_reg[8]_1 [6]),
        .Q(\zerodeep.axis_data_d_reg[8]_0 [7]),
        .R(\zerodeep.axis_valid_d_reg_0 ));
  FDRE \zerodeep.axis_valid_d_reg 
       (.C(m_dest_axi_aclk),
        .CE(dest_response_ready),
        .D(dest_response_valid),
        .Q(response_dest_valid),
        .R(\zerodeep.axis_valid_d_reg_0 ));
endmodule

(* ORIG_REF_NAME = "util_axis_fifo_address_generator" *) 
module icyradio_axi_dmac_rf_rx1_0_util_axis_fifo_address_generator
   (\m_axis_raddr_reg_reg[1]_0 ,
    \m_axis_raddr_reg_reg[1]_1 ,
    \s_axis_waddr_reg_reg[1]_0 ,
    s_axis_write_s,
    m_axis_read_s,
    \fifo._m_axis_valid ,
    ctrl_enable_reg,
    response_valid_reg,
    \s_axis_waddr_reg_reg[2]_0 ,
    up_response_valid,
    response_ready_reg,
    up_bl_partial,
    up_tlf_s_valid_reg,
    up_tlf_valid,
    \fifo.sync_clocks.data_reg[0] ,
    up_rreq,
    \m_axis_raddr_reg_reg[0]_0 ,
    s_axi_aclk);
  output \m_axis_raddr_reg_reg[1]_0 ;
  output [1:0]\m_axis_raddr_reg_reg[1]_1 ;
  output [1:0]\s_axis_waddr_reg_reg[1]_0 ;
  output s_axis_write_s;
  output m_axis_read_s;
  output \fifo._m_axis_valid ;
  output ctrl_enable_reg;
  output response_valid_reg;
  input \s_axis_waddr_reg_reg[2]_0 ;
  input up_response_valid;
  input response_ready_reg;
  input up_bl_partial;
  input up_tlf_s_valid_reg;
  input up_tlf_valid;
  input \fifo.sync_clocks.data_reg[0] ;
  input up_rreq;
  input \m_axis_raddr_reg_reg[0]_0 ;
  input s_axi_aclk;

  wire ctrl_enable_reg;
  wire \fifo._m_axis_valid ;
  wire \fifo.sync_clocks.data_reg[0] ;
  wire \fifo.sync_clocks.ram_reg_0_3_0_5_i_2_n_0 ;
  wire [2:2]m_axis_raddr;
  wire \m_axis_raddr_reg[0]_i_1_n_0 ;
  wire \m_axis_raddr_reg[1]_i_1_n_0 ;
  wire \m_axis_raddr_reg[2]_i_2_n_0 ;
  wire \m_axis_raddr_reg_reg[0]_0 ;
  wire \m_axis_raddr_reg_reg[1]_0 ;
  wire [1:0]\m_axis_raddr_reg_reg[1]_1 ;
  wire m_axis_read_s;
  wire response_ready_i_2_n_0;
  wire response_ready_reg;
  wire response_valid_reg;
  wire s_axi_aclk;
  wire [2:2]s_axis_waddr;
  wire \s_axis_waddr_reg[0]_i_1_n_0 ;
  wire \s_axis_waddr_reg[1]_i_1_n_0 ;
  wire \s_axis_waddr_reg[2]_i_1_n_0 ;
  wire [1:0]\s_axis_waddr_reg_reg[1]_0 ;
  wire \s_axis_waddr_reg_reg[2]_0 ;
  wire s_axis_write_s;
  wire up_bl_partial;
  wire up_response_valid;
  wire up_rreq;
  wire up_tlf_s_valid_i_2_n_0;
  wire up_tlf_s_valid_i_3_n_0;
  wire up_tlf_s_valid_i_4_n_0;
  wire up_tlf_s_valid_i_5_n_0;
  wire up_tlf_s_valid_i_6_n_0;
  wire up_tlf_s_valid_i_8_n_0;
  wire up_tlf_s_valid_reg;
  wire up_tlf_valid;

  LUT4 #(
    .INIT(16'h7500)) 
    \fifo.sync_clocks.data[25]_i_1 
       (.I0(up_tlf_valid),
        .I1(\fifo.sync_clocks.data_reg[0] ),
        .I2(up_rreq),
        .I3(\fifo._m_axis_valid ),
        .O(m_axis_read_s));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \fifo.sync_clocks.data[25]_i_3 
       (.I0(s_axis_waddr),
        .I1(m_axis_raddr),
        .I2(\s_axis_waddr_reg_reg[1]_0 [1]),
        .I3(\m_axis_raddr_reg_reg[1]_1 [1]),
        .I4(\m_axis_raddr_reg_reg[1]_1 [0]),
        .I5(\s_axis_waddr_reg_reg[1]_0 [0]),
        .O(\fifo._m_axis_valid ));
  LUT6 #(
    .INIT(64'hDFEFBFF700000000)) 
    \fifo.sync_clocks.ram_reg_0_3_0_5_i_1 
       (.I0(\s_axis_waddr_reg_reg[1]_0 [1]),
        .I1(\s_axis_waddr_reg_reg[1]_0 [0]),
        .I2(\fifo.sync_clocks.ram_reg_0_3_0_5_i_2_n_0 ),
        .I3(\m_axis_raddr_reg_reg[1]_1 [1]),
        .I4(\m_axis_raddr_reg_reg[1]_1 [0]),
        .I5(\s_axis_waddr_reg_reg[2]_0 ),
        .O(s_axis_write_s));
  LUT2 #(
    .INIT(4'h6)) 
    \fifo.sync_clocks.ram_reg_0_3_0_5_i_2 
       (.I0(s_axis_waddr),
        .I1(m_axis_raddr),
        .O(\fifo.sync_clocks.ram_reg_0_3_0_5_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \m_axis_raddr_reg[0]_i_1 
       (.I0(m_axis_read_s),
        .I1(\m_axis_raddr_reg_reg[1]_1 [0]),
        .O(\m_axis_raddr_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \m_axis_raddr_reg[1]_i_1 
       (.I0(\m_axis_raddr_reg_reg[1]_1 [0]),
        .I1(m_axis_read_s),
        .I2(\m_axis_raddr_reg_reg[1]_1 [1]),
        .O(\m_axis_raddr_reg[1]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_raddr_reg[2]_i_1 
       (.I0(\m_axis_raddr_reg_reg[0]_0 ),
        .O(ctrl_enable_reg));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \m_axis_raddr_reg[2]_i_2 
       (.I0(\m_axis_raddr_reg_reg[1]_1 [1]),
        .I1(\m_axis_raddr_reg_reg[1]_1 [0]),
        .I2(m_axis_read_s),
        .I3(m_axis_raddr),
        .O(\m_axis_raddr_reg[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_raddr_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\m_axis_raddr_reg[0]_i_1_n_0 ),
        .Q(\m_axis_raddr_reg_reg[1]_1 [0]),
        .R(ctrl_enable_reg));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_raddr_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\m_axis_raddr_reg[1]_i_1_n_0 ),
        .Q(\m_axis_raddr_reg_reg[1]_1 [1]),
        .R(ctrl_enable_reg));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_raddr_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\m_axis_raddr_reg[2]_i_2_n_0 ),
        .Q(m_axis_raddr),
        .R(ctrl_enable_reg));
  LUT3 #(
    .INIT(8'h5C)) 
    response_ready_i_1
       (.I0(up_response_valid),
        .I1(response_ready_i_2_n_0),
        .I2(response_ready_reg),
        .O(response_valid_reg));
  LUT6 #(
    .INIT(64'hEFFEF77FFBBFFDDF)) 
    response_ready_i_2
       (.I0(\m_axis_raddr_reg_reg[1]_1 [0]),
        .I1(\m_axis_raddr_reg_reg[1]_1 [1]),
        .I2(s_axis_waddr),
        .I3(m_axis_raddr),
        .I4(\s_axis_waddr_reg_reg[1]_0 [0]),
        .I5(\s_axis_waddr_reg_reg[1]_0 [1]),
        .O(response_ready_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    \s_axis_waddr_reg[0]_i_1 
       (.I0(s_axis_write_s),
        .I1(\s_axis_waddr_reg_reg[1]_0 [0]),
        .O(\s_axis_waddr_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \s_axis_waddr_reg[1]_i_1 
       (.I0(\s_axis_waddr_reg_reg[1]_0 [0]),
        .I1(s_axis_write_s),
        .I2(\s_axis_waddr_reg_reg[1]_0 [1]),
        .O(\s_axis_waddr_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \s_axis_waddr_reg[2]_i_1 
       (.I0(\s_axis_waddr_reg_reg[1]_0 [1]),
        .I1(\s_axis_waddr_reg_reg[1]_0 [0]),
        .I2(s_axis_write_s),
        .I3(s_axis_waddr),
        .O(\s_axis_waddr_reg[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_axis_waddr_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\s_axis_waddr_reg[0]_i_1_n_0 ),
        .Q(\s_axis_waddr_reg_reg[1]_0 [0]),
        .R(ctrl_enable_reg));
  FDRE #(
    .INIT(1'b0)) 
    \s_axis_waddr_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\s_axis_waddr_reg[1]_i_1_n_0 ),
        .Q(\s_axis_waddr_reg_reg[1]_0 [1]),
        .R(ctrl_enable_reg));
  FDRE #(
    .INIT(1'b0)) 
    \s_axis_waddr_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\s_axis_waddr_reg[2]_i_1_n_0 ),
        .Q(s_axis_waddr),
        .R(ctrl_enable_reg));
  LUT6 #(
    .INIT(64'hFFFFFFFF80CC8080)) 
    up_tlf_s_valid_i_1
       (.I0(up_tlf_s_valid_i_2_n_0),
        .I1(\fifo.sync_clocks.ram_reg_0_3_0_5_i_2_n_0 ),
        .I2(up_tlf_s_valid_i_3_n_0),
        .I3(up_tlf_s_valid_i_4_n_0),
        .I4(up_tlf_s_valid_i_5_n_0),
        .I5(up_tlf_s_valid_i_6_n_0),
        .O(\m_axis_raddr_reg_reg[1]_0 ));
  LUT5 #(
    .INIT(32'h8AAA8000)) 
    up_tlf_s_valid_i_2
       (.I0(\m_axis_raddr_reg_reg[1]_1 [1]),
        .I1(up_bl_partial),
        .I2(response_ready_reg),
        .I3(up_response_valid),
        .I4(\s_axis_waddr_reg_reg[2]_0 ),
        .O(up_tlf_s_valid_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h10)) 
    up_tlf_s_valid_i_3
       (.I0(\m_axis_raddr_reg_reg[1]_1 [0]),
        .I1(\s_axis_waddr_reg_reg[1]_0 [1]),
        .I2(\s_axis_waddr_reg_reg[1]_0 [0]),
        .O(up_tlf_s_valid_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    up_tlf_s_valid_i_4
       (.I0(\s_axis_waddr_reg_reg[1]_0 [1]),
        .I1(\m_axis_raddr_reg_reg[1]_1 [1]),
        .O(up_tlf_s_valid_i_4_n_0));
  LUT6 #(
    .INIT(64'h00000000EA2A0000)) 
    up_tlf_s_valid_i_5
       (.I0(\s_axis_waddr_reg_reg[2]_0 ),
        .I1(up_response_valid),
        .I2(response_ready_reg),
        .I3(up_bl_partial),
        .I4(\m_axis_raddr_reg_reg[1]_1 [0]),
        .I5(\s_axis_waddr_reg_reg[1]_0 [0]),
        .O(up_tlf_s_valid_i_5_n_0));
  LUT6 #(
    .INIT(64'h11F000F000F000F0)) 
    up_tlf_s_valid_i_6
       (.I0(\m_axis_raddr_reg_reg[1]_1 [1]),
        .I1(\m_axis_raddr_reg_reg[1]_1 [0]),
        .I2(up_bl_partial),
        .I3(up_tlf_s_valid_reg),
        .I4(\s_axis_waddr_reg_reg[2]_0 ),
        .I5(up_tlf_s_valid_i_8_n_0),
        .O(up_tlf_s_valid_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8008)) 
    up_tlf_s_valid_i_8
       (.I0(\s_axis_waddr_reg_reg[1]_0 [1]),
        .I1(\s_axis_waddr_reg_reg[1]_0 [0]),
        .I2(m_axis_raddr),
        .I3(s_axis_waddr),
        .O(up_tlf_s_valid_i_8_n_0));
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
