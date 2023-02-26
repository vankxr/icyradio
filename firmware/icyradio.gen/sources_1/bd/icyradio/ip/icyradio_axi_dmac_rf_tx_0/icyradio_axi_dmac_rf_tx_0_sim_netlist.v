// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Wed Jan 11 17:28:11 2023
// Host        : xubuntu-dev running 64-bit Ubuntu 20.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/joao/icyradio/firmware/icyradio.gen/sources_1/bd/icyradio/ip/icyradio_axi_dmac_rf_tx_0/icyradio_axi_dmac_rf_tx_0_sim_netlist.v
// Design      : icyradio_axi_dmac_rf_tx_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "icyradio_axi_dmac_rf_tx_0,axi_dmac,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "axi_dmac,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module icyradio_axi_dmac_rf_tx_0
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
    m_src_axi_rdata,
    m_src_axi_rready,
    m_src_axi_rvalid,
    m_src_axi_rresp,
    m_src_axi_rlast,
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
    m_axis_xfer_req);
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 m_src_axi_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_src_axi_aclk, ASSOCIATED_BUSIF m_src_axi, ASSOCIATED_RESET m_src_axi_aresetn, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN icyradio_axi_pcie_0_0_axi_aclk_out, INSERT_VIP 0" *) input m_src_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 m_src_axi_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_src_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input m_src_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_src_axi ARREADY" *) input m_src_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_src_axi ARVALID" *) output m_src_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_src_axi ARADDR" *) output [30:0]m_src_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_src_axi ARLEN" *) output [7:0]m_src_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_src_axi ARSIZE" *) output [2:0]m_src_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_src_axi ARBURST" *) output [1:0]m_src_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_src_axi ARPROT" *) output [2:0]m_src_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_src_axi ARCACHE" *) output [3:0]m_src_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_src_axi RDATA" *) input [63:0]m_src_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_src_axi RREADY" *) output m_src_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_src_axi RVALID" *) input m_src_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_src_axi RRESP" *) input [1:0]m_src_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_src_axi RLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_src_axi, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 125000000, ID_WIDTH 0, ADDR_WIDTH 31, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_ONLY, HAS_BURST 1, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 0, HAS_RRESP 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 0, MAX_BURST_LENGTH 16, PHASE 0.0, CLK_DOMAIN icyradio_axi_pcie_0_0_axi_aclk_out, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input m_src_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 m_axis_aclk CLK, xilinx.com:signal:clock:1.0 m_axis_signal_clock CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_aclk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, ASSOCIATED_BUSIF m_axis, INSERT_VIP 0, XIL_INTERFACENAME m_axis_signal_clock, ASSOCIATED_BUSIF m_axis, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN icyradio_axi_pcie_0_0_axi_aclk_out, INSERT_VIP 0" *) input m_axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output m_axis_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) output [31:0]m_axis_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TSTRB" *) output [3:0]m_axis_strb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TKEEP" *) output [3:0]m_axis_keep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TUSER" *) output [0:0]m_axis_user;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TID" *) output [7:0]m_axis_id;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDEST" *) output [3:0]m_axis_dest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 4, TID_WIDTH 8, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN icyradio_axi_pcie_0_0_axi_aclk_out, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_last;
  output m_axis_xfer_req;

  wire \<const0> ;
  wire \<const1> ;
  wire irq;
  wire m_axis_aclk;
  wire [31:0]m_axis_data;
  wire m_axis_last;
  wire m_axis_ready;
  wire m_axis_valid;
  wire m_axis_xfer_req;
  wire m_src_axi_aclk;
  wire [30:3]\^m_src_axi_araddr ;
  wire [3:0]\^m_src_axi_arlen ;
  wire m_src_axi_arready;
  wire m_src_axi_arvalid;
  wire [63:0]m_src_axi_rdata;
  wire m_src_axi_rlast;
  wire m_src_axi_rvalid;
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
  wire NLW_inst_fifo_wr_overflow_UNCONNECTED;
  wire NLW_inst_fifo_wr_xfer_req_UNCONNECTED;
  wire NLW_inst_m_dest_axi_arvalid_UNCONNECTED;
  wire NLW_inst_m_dest_axi_awvalid_UNCONNECTED;
  wire NLW_inst_m_dest_axi_bready_UNCONNECTED;
  wire NLW_inst_m_dest_axi_rready_UNCONNECTED;
  wire NLW_inst_m_dest_axi_wlast_UNCONNECTED;
  wire NLW_inst_m_dest_axi_wvalid_UNCONNECTED;
  wire NLW_inst_m_src_axi_awvalid_UNCONNECTED;
  wire NLW_inst_m_src_axi_bready_UNCONNECTED;
  wire NLW_inst_m_src_axi_rready_UNCONNECTED;
  wire NLW_inst_m_src_axi_wlast_UNCONNECTED;
  wire NLW_inst_m_src_axi_wvalid_UNCONNECTED;
  wire NLW_inst_s_axis_ready_UNCONNECTED;
  wire NLW_inst_s_axis_xfer_req_UNCONNECTED;
  wire [7:0]NLW_inst_dest_diag_level_bursts_UNCONNECTED;
  wire [31:0]NLW_inst_fifo_rd_dout_UNCONNECTED;
  wire [3:0]NLW_inst_m_axis_dest_UNCONNECTED;
  wire [7:0]NLW_inst_m_axis_id_UNCONNECTED;
  wire [3:0]NLW_inst_m_axis_keep_UNCONNECTED;
  wire [3:0]NLW_inst_m_axis_strb_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_user_UNCONNECTED;
  wire [30:0]NLW_inst_m_dest_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_inst_m_dest_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_inst_m_dest_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_inst_m_dest_axi_arid_UNCONNECTED;
  wire [7:0]NLW_inst_m_dest_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_inst_m_dest_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_inst_m_dest_axi_arprot_UNCONNECTED;
  wire [2:0]NLW_inst_m_dest_axi_arsize_UNCONNECTED;
  wire [30:0]NLW_inst_m_dest_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_inst_m_dest_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_inst_m_dest_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_inst_m_dest_axi_awid_UNCONNECTED;
  wire [7:0]NLW_inst_m_dest_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_inst_m_dest_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_inst_m_dest_axi_awprot_UNCONNECTED;
  wire [2:0]NLW_inst_m_dest_axi_awsize_UNCONNECTED;
  wire [31:0]NLW_inst_m_dest_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_inst_m_dest_axi_wid_UNCONNECTED;
  wire [3:0]NLW_inst_m_dest_axi_wstrb_UNCONNECTED;
  wire [2:0]NLW_inst_m_src_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_inst_m_src_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_inst_m_src_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_inst_m_src_axi_arid_UNCONNECTED;
  wire [7:4]NLW_inst_m_src_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_inst_m_src_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_inst_m_src_axi_arprot_UNCONNECTED;
  wire [2:0]NLW_inst_m_src_axi_arsize_UNCONNECTED;
  wire [30:0]NLW_inst_m_src_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_inst_m_src_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_inst_m_src_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_inst_m_src_axi_awid_UNCONNECTED;
  wire [7:0]NLW_inst_m_src_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_inst_m_src_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_inst_m_src_axi_awprot_UNCONNECTED;
  wire [2:0]NLW_inst_m_src_axi_awsize_UNCONNECTED;
  wire [63:0]NLW_inst_m_src_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_inst_m_src_axi_wid_UNCONNECTED;
  wire [7:0]NLW_inst_m_src_axi_wstrb_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_bresp_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_rresp_UNCONNECTED;

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
  assign m_axis_keep[3] = \<const1> ;
  assign m_axis_keep[2] = \<const1> ;
  assign m_axis_keep[1] = \<const1> ;
  assign m_axis_keep[0] = \<const1> ;
  assign m_axis_strb[3] = \<const1> ;
  assign m_axis_strb[2] = \<const1> ;
  assign m_axis_strb[1] = \<const1> ;
  assign m_axis_strb[0] = \<const1> ;
  assign m_axis_user[0] = \<const0> ;
  assign m_src_axi_araddr[30:3] = \^m_src_axi_araddr [30:3];
  assign m_src_axi_araddr[2] = \<const0> ;
  assign m_src_axi_araddr[1] = \<const0> ;
  assign m_src_axi_araddr[0] = \<const0> ;
  assign m_src_axi_arburst[1] = \<const0> ;
  assign m_src_axi_arburst[0] = \<const1> ;
  assign m_src_axi_arcache[3] = \<const0> ;
  assign m_src_axi_arcache[2] = \<const0> ;
  assign m_src_axi_arcache[1] = \<const1> ;
  assign m_src_axi_arcache[0] = \<const1> ;
  assign m_src_axi_arlen[7] = \<const0> ;
  assign m_src_axi_arlen[6] = \<const0> ;
  assign m_src_axi_arlen[5] = \<const0> ;
  assign m_src_axi_arlen[4] = \<const0> ;
  assign m_src_axi_arlen[3:0] = \^m_src_axi_arlen [3:0];
  assign m_src_axi_arprot[2] = \<const0> ;
  assign m_src_axi_arprot[1] = \<const0> ;
  assign m_src_axi_arprot[0] = \<const0> ;
  assign m_src_axi_arsize[2] = \<const0> ;
  assign m_src_axi_arsize[1] = \<const1> ;
  assign m_src_axi_arsize[0] = \<const1> ;
  assign m_src_axi_rready = \<const1> ;
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
  (* ASYNC_CLK_REQ_SRC = "1'b0" *) 
  (* ASYNC_CLK_SRC_DEST = "1'b0" *) 
  (* AXI_ID_WIDTH_DEST = "1" *) 
  (* AXI_ID_WIDTH_SRC = "1" *) 
  (* AXI_SLICE_DEST = "1'b0" *) 
  (* AXI_SLICE_SRC = "1'b0" *) 
  (* BEATS_PER_BURST_LIMIT_DEST = "1024" *) 
  (* BEATS_PER_BURST_LIMIT_SRC = "256" *) 
  (* BYTES_PER_BEAT_WIDTH_DEST = "2" *) 
  (* BYTES_PER_BEAT_WIDTH_SRC = "3" *) 
  (* BYTES_PER_BURST_LIMIT = "2048" *) 
  (* BYTES_PER_BURST_LIMIT_DEST = "4096" *) 
  (* BYTES_PER_BURST_LIMIT_SRC = "2048" *) 
  (* BYTES_PER_BURST_WIDTH = "7" *) 
  (* CYCLIC = "1'b0" *) 
  (* DBG_ID_PADDING = "4" *) 
  (* DISABLE_DEBUG_REGISTERS = "1'b0" *) 
  (* DMA_2D_TRANSFER = "1'b0" *) 
  (* DMA_AXIS_DEST_W = "4" *) 
  (* DMA_AXIS_ID_W = "8" *) 
  (* DMA_AXI_ADDR_WIDTH = "31" *) 
  (* DMA_AXI_PROTOCOL_DEST = "0" *) 
  (* DMA_AXI_PROTOCOL_SRC = "0" *) 
  (* DMA_DATA_WIDTH_DEST = "32" *) 
  (* DMA_DATA_WIDTH_SRC = "64" *) 
  (* DMA_LENGTH_ALIGN = "2" *) 
  (* DMA_LENGTH_ALIGN_DEST = "2" *) 
  (* DMA_LENGTH_ALIGN_SRC = "0" *) 
  (* DMA_LENGTH_WIDTH = "24" *) 
  (* DMA_TYPE_AXI_MM = "0" *) 
  (* DMA_TYPE_AXI_STREAM = "1" *) 
  (* DMA_TYPE_DEST = "1" *) 
  (* DMA_TYPE_FIFO = "2" *) 
  (* DMA_TYPE_SRC = "0" *) 
  (* ENABLE_DIAGNOSTICS_IF = "1'b0" *) 
  (* FIFO_SIZE = "8" *) 
  (* HAS_DEST_ADDR = "1'b0" *) 
  (* HAS_SRC_ADDR = "1'b1" *) 
  (* ID = "3" *) 
  (* ID_WIDTH = "4" *) 
  (* MAX_BYTES_PER_BURST = "128" *) 
  (* REAL_MAX_BYTES_PER_BURST = "128" *) 
  (* SYNC_TRANSFER_START = "1'b0" *) 
  icyradio_axi_dmac_rf_tx_0_axi_dmac inst
       (.dest_diag_level_bursts(NLW_inst_dest_diag_level_bursts_UNCONNECTED[7:0]),
        .fifo_rd_clk(1'b0),
        .fifo_rd_dout(NLW_inst_fifo_rd_dout_UNCONNECTED[31:0]),
        .fifo_rd_en(1'b0),
        .fifo_rd_underflow(NLW_inst_fifo_rd_underflow_UNCONNECTED),
        .fifo_rd_valid(NLW_inst_fifo_rd_valid_UNCONNECTED),
        .fifo_rd_xfer_req(NLW_inst_fifo_rd_xfer_req_UNCONNECTED),
        .fifo_wr_clk(1'b0),
        .fifo_wr_din({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .fifo_wr_en(1'b0),
        .fifo_wr_overflow(NLW_inst_fifo_wr_overflow_UNCONNECTED),
        .fifo_wr_sync(1'b1),
        .fifo_wr_xfer_req(NLW_inst_fifo_wr_xfer_req_UNCONNECTED),
        .irq(irq),
        .m_axis_aclk(m_axis_aclk),
        .m_axis_data(m_axis_data),
        .m_axis_dest(NLW_inst_m_axis_dest_UNCONNECTED[3:0]),
        .m_axis_id(NLW_inst_m_axis_id_UNCONNECTED[7:0]),
        .m_axis_keep(NLW_inst_m_axis_keep_UNCONNECTED[3:0]),
        .m_axis_last(m_axis_last),
        .m_axis_ready(m_axis_ready),
        .m_axis_strb(NLW_inst_m_axis_strb_UNCONNECTED[3:0]),
        .m_axis_user(NLW_inst_m_axis_user_UNCONNECTED[0]),
        .m_axis_valid(m_axis_valid),
        .m_axis_xfer_req(m_axis_xfer_req),
        .m_dest_axi_aclk(1'b0),
        .m_dest_axi_araddr(NLW_inst_m_dest_axi_araddr_UNCONNECTED[30:0]),
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
        .m_dest_axi_awaddr(NLW_inst_m_dest_axi_awaddr_UNCONNECTED[30:0]),
        .m_dest_axi_awburst(NLW_inst_m_dest_axi_awburst_UNCONNECTED[1:0]),
        .m_dest_axi_awcache(NLW_inst_m_dest_axi_awcache_UNCONNECTED[3:0]),
        .m_dest_axi_awid(NLW_inst_m_dest_axi_awid_UNCONNECTED[0]),
        .m_dest_axi_awlen(NLW_inst_m_dest_axi_awlen_UNCONNECTED[7:0]),
        .m_dest_axi_awlock(NLW_inst_m_dest_axi_awlock_UNCONNECTED[0]),
        .m_dest_axi_awprot(NLW_inst_m_dest_axi_awprot_UNCONNECTED[2:0]),
        .m_dest_axi_awready(1'b0),
        .m_dest_axi_awsize(NLW_inst_m_dest_axi_awsize_UNCONNECTED[2:0]),
        .m_dest_axi_awvalid(NLW_inst_m_dest_axi_awvalid_UNCONNECTED),
        .m_dest_axi_bid(1'b0),
        .m_dest_axi_bready(NLW_inst_m_dest_axi_bready_UNCONNECTED),
        .m_dest_axi_bresp({1'b0,1'b0}),
        .m_dest_axi_bvalid(1'b0),
        .m_dest_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_dest_axi_rid(1'b0),
        .m_dest_axi_rlast(1'b0),
        .m_dest_axi_rready(NLW_inst_m_dest_axi_rready_UNCONNECTED),
        .m_dest_axi_rresp({1'b0,1'b0}),
        .m_dest_axi_rvalid(1'b0),
        .m_dest_axi_wdata(NLW_inst_m_dest_axi_wdata_UNCONNECTED[31:0]),
        .m_dest_axi_wid(NLW_inst_m_dest_axi_wid_UNCONNECTED[0]),
        .m_dest_axi_wlast(NLW_inst_m_dest_axi_wlast_UNCONNECTED),
        .m_dest_axi_wready(1'b0),
        .m_dest_axi_wstrb(NLW_inst_m_dest_axi_wstrb_UNCONNECTED[3:0]),
        .m_dest_axi_wvalid(NLW_inst_m_dest_axi_wvalid_UNCONNECTED),
        .m_src_axi_aclk(m_src_axi_aclk),
        .m_src_axi_araddr({\^m_src_axi_araddr ,NLW_inst_m_src_axi_araddr_UNCONNECTED[2:0]}),
        .m_src_axi_arburst(NLW_inst_m_src_axi_arburst_UNCONNECTED[1:0]),
        .m_src_axi_arcache(NLW_inst_m_src_axi_arcache_UNCONNECTED[3:0]),
        .m_src_axi_aresetn(1'b0),
        .m_src_axi_arid(NLW_inst_m_src_axi_arid_UNCONNECTED[0]),
        .m_src_axi_arlen({NLW_inst_m_src_axi_arlen_UNCONNECTED[7:4],\^m_src_axi_arlen }),
        .m_src_axi_arlock(NLW_inst_m_src_axi_arlock_UNCONNECTED[0]),
        .m_src_axi_arprot(NLW_inst_m_src_axi_arprot_UNCONNECTED[2:0]),
        .m_src_axi_arready(m_src_axi_arready),
        .m_src_axi_arsize(NLW_inst_m_src_axi_arsize_UNCONNECTED[2:0]),
        .m_src_axi_arvalid(m_src_axi_arvalid),
        .m_src_axi_awaddr(NLW_inst_m_src_axi_awaddr_UNCONNECTED[30:0]),
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
        .m_src_axi_rdata(m_src_axi_rdata),
        .m_src_axi_rid(1'b0),
        .m_src_axi_rlast(m_src_axi_rlast),
        .m_src_axi_rready(NLW_inst_m_src_axi_rready_UNCONNECTED),
        .m_src_axi_rresp({1'b0,1'b0}),
        .m_src_axi_rvalid(m_src_axi_rvalid),
        .m_src_axi_wdata(NLW_inst_m_src_axi_wdata_UNCONNECTED[63:0]),
        .m_src_axi_wid(NLW_inst_m_src_axi_wid_UNCONNECTED[0]),
        .m_src_axi_wlast(NLW_inst_m_src_axi_wlast_UNCONNECTED),
        .m_src_axi_wready(1'b0),
        .m_src_axi_wstrb(NLW_inst_m_src_axi_wstrb_UNCONNECTED[7:0]),
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
        .s_axis_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_dest({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_id({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_keep({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_last(1'b0),
        .s_axis_ready(NLW_inst_s_axis_ready_UNCONNECTED),
        .s_axis_strb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_user(1'b1),
        .s_axis_valid(1'b0),
        .s_axis_xfer_req(NLW_inst_s_axis_xfer_req_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "ad_mem_asym" *) 
module icyradio_axi_dmac_rf_tx_0_ad_mem_asym
   (m_axis_data,
    E,
    m_axis_aclk,
    m_src_axi_aclk,
    ADDRARDADDR,
    ADDRBWRADDR,
    m_src_axi_rdata,
    m_src_axi_rvalid,
    dest_valid,
    m_ram_reg_bram_0_0,
    m_axis_ready,
    m_ram_reg_bram_0_1);
  output [31:0]m_axis_data;
  output [0:0]E;
  input m_axis_aclk;
  input m_src_axi_aclk;
  input [7:0]ADDRARDADDR;
  input [6:0]ADDRBWRADDR;
  input [63:0]m_src_axi_rdata;
  input m_src_axi_rvalid;
  input dest_valid;
  input m_ram_reg_bram_0_0;
  input m_axis_ready;
  input m_ram_reg_bram_0_1;

  wire [7:0]ADDRARDADDR;
  wire [6:0]ADDRBWRADDR;
  wire [0:0]E;
  wire dest_valid;
  wire m_axis_aclk;
  wire [31:0]m_axis_data;
  wire m_axis_ready;
  wire m_ram_reg_bram_0_0;
  wire m_ram_reg_bram_0_1;
  wire m_src_axi_aclk;
  wire [63:0]m_src_axi_rdata;
  wire m_src_axi_rvalid;
  wire NLW_m_ram_reg_bram_0_CASCADEINA_UNCONNECTED;
  wire NLW_m_ram_reg_bram_0_CASCADEINB_UNCONNECTED;
  wire NLW_m_ram_reg_bram_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_m_ram_reg_bram_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_m_ram_reg_bram_0_DBITERR_UNCONNECTED;
  wire NLW_m_ram_reg_bram_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_m_ram_reg_bram_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_m_ram_reg_bram_0_SBITERR_UNCONNECTED;
  wire [31:0]NLW_m_ram_reg_bram_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_m_ram_reg_bram_0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_m_ram_reg_bram_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_m_ram_reg_bram_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_m_ram_reg_bram_0_RDADDRECC_UNCONNECTED;

  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "255" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d32" *) 
  (* \MEM.PORTA.DATA_LSB  = "0" *) 
  (* \MEM.PORTA.DATA_MSB  = "31" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "127" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d64" *) 
  (* \MEM.PORTB.DATA_LSB  = "0" *) 
  (* \MEM.PORTB.DATA_MSB  = "63" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "m_ram" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_aspect_ratio = "2" *) 
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
    .READ_WIDTH_A(36),
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
    .WRITE_WIDTH_B(72)) 
    m_ram_reg_bram_0
       (.ADDRARDADDR({1'b1,1'b0,1'b0,ADDRARDADDR,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b0,1'b0,ADDRBWRADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(NLW_m_ram_reg_bram_0_CASCADEINA_UNCONNECTED),
        .CASCADEINB(NLW_m_ram_reg_bram_0_CASCADEINB_UNCONNECTED),
        .CASCADEOUTA(NLW_m_ram_reg_bram_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_m_ram_reg_bram_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(m_axis_aclk),
        .CLKBWRCLK(m_src_axi_aclk),
        .DBITERR(NLW_m_ram_reg_bram_0_DBITERR_UNCONNECTED),
        .DIADI(m_src_axi_rdata[31:0]),
        .DIBDI(m_src_axi_rdata[63:32]),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(m_axis_data),
        .DOBDO(NLW_m_ram_reg_bram_0_DOBDO_UNCONNECTED[31:0]),
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
        .WEBWE({m_src_axi_rvalid,m_src_axi_rvalid,m_src_axi_rvalid,m_src_axi_rvalid,m_src_axi_rvalid,m_src_axi_rvalid,m_src_axi_rvalid,m_src_axi_rvalid}));
  LUT4 #(
    .INIT(16'h80AA)) 
    m_ram_reg_bram_0_i_1
       (.I0(dest_valid),
        .I1(m_ram_reg_bram_0_0),
        .I2(m_axis_ready),
        .I3(m_ram_reg_bram_0_1),
        .O(E));
endmodule

(* ALLOW_ASYM_MEM = "1" *) (* ASYNC_CLK_DEST_REQ = "1'b0" *) (* ASYNC_CLK_REQ_SRC = "1'b0" *) 
(* ASYNC_CLK_SRC_DEST = "1'b0" *) (* AXI_ID_WIDTH_DEST = "1" *) (* AXI_ID_WIDTH_SRC = "1" *) 
(* AXI_SLICE_DEST = "1'b0" *) (* AXI_SLICE_SRC = "1'b0" *) (* BEATS_PER_BURST_LIMIT_DEST = "1024" *) 
(* BEATS_PER_BURST_LIMIT_SRC = "256" *) (* BYTES_PER_BEAT_WIDTH_DEST = "2" *) (* BYTES_PER_BEAT_WIDTH_SRC = "3" *) 
(* BYTES_PER_BURST_LIMIT = "2048" *) (* BYTES_PER_BURST_LIMIT_DEST = "4096" *) (* BYTES_PER_BURST_LIMIT_SRC = "2048" *) 
(* BYTES_PER_BURST_WIDTH = "7" *) (* CYCLIC = "1'b0" *) (* DBG_ID_PADDING = "4" *) 
(* DISABLE_DEBUG_REGISTERS = "1'b0" *) (* DMA_2D_TRANSFER = "1'b0" *) (* DMA_AXIS_DEST_W = "4" *) 
(* DMA_AXIS_ID_W = "8" *) (* DMA_AXI_ADDR_WIDTH = "31" *) (* DMA_AXI_PROTOCOL_DEST = "0" *) 
(* DMA_AXI_PROTOCOL_SRC = "0" *) (* DMA_DATA_WIDTH_DEST = "32" *) (* DMA_DATA_WIDTH_SRC = "64" *) 
(* DMA_LENGTH_ALIGN = "2" *) (* DMA_LENGTH_ALIGN_DEST = "2" *) (* DMA_LENGTH_ALIGN_SRC = "0" *) 
(* DMA_LENGTH_WIDTH = "24" *) (* DMA_TYPE_AXI_MM = "0" *) (* DMA_TYPE_AXI_STREAM = "1" *) 
(* DMA_TYPE_DEST = "1" *) (* DMA_TYPE_FIFO = "2" *) (* DMA_TYPE_SRC = "0" *) 
(* ENABLE_DIAGNOSTICS_IF = "1'b0" *) (* FIFO_SIZE = "8" *) (* HAS_DEST_ADDR = "1'b0" *) 
(* HAS_SRC_ADDR = "1'b1" *) (* ID = "3" *) (* ID_WIDTH = "4" *) 
(* MAX_BYTES_PER_BURST = "128" *) (* ORIG_REF_NAME = "axi_dmac" *) (* REAL_MAX_BYTES_PER_BURST = "128" *) 
(* SYNC_TRANSFER_START = "1'b0" *) 
module icyradio_axi_dmac_rf_tx_0_axi_dmac
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
  output [30:0]m_dest_axi_awaddr;
  output [7:0]m_dest_axi_awlen;
  output [2:0]m_dest_axi_awsize;
  output [1:0]m_dest_axi_awburst;
  output [2:0]m_dest_axi_awprot;
  output [3:0]m_dest_axi_awcache;
  output m_dest_axi_awvalid;
  input m_dest_axi_awready;
  output [0:0]m_dest_axi_awid;
  output [0:0]m_dest_axi_awlock;
  output [31:0]m_dest_axi_wdata;
  output [3:0]m_dest_axi_wstrb;
  input m_dest_axi_wready;
  output m_dest_axi_wvalid;
  output m_dest_axi_wlast;
  output [0:0]m_dest_axi_wid;
  input m_dest_axi_bvalid;
  input [1:0]m_dest_axi_bresp;
  output m_dest_axi_bready;
  input [0:0]m_dest_axi_bid;
  output m_dest_axi_arvalid;
  output [30:0]m_dest_axi_araddr;
  output [7:0]m_dest_axi_arlen;
  output [2:0]m_dest_axi_arsize;
  output [1:0]m_dest_axi_arburst;
  output [3:0]m_dest_axi_arcache;
  output [2:0]m_dest_axi_arprot;
  input m_dest_axi_arready;
  input m_dest_axi_rvalid;
  input [1:0]m_dest_axi_rresp;
  input [31:0]m_dest_axi_rdata;
  output m_dest_axi_rready;
  output [0:0]m_dest_axi_arid;
  output [0:0]m_dest_axi_arlock;
  input [0:0]m_dest_axi_rid;
  input m_dest_axi_rlast;
  input m_src_axi_aclk;
  input m_src_axi_aresetn;
  input m_src_axi_arready;
  output m_src_axi_arvalid;
  output [30:0]m_src_axi_araddr;
  output [7:0]m_src_axi_arlen;
  output [2:0]m_src_axi_arsize;
  output [1:0]m_src_axi_arburst;
  output [2:0]m_src_axi_arprot;
  output [3:0]m_src_axi_arcache;
  output [0:0]m_src_axi_arid;
  output [0:0]m_src_axi_arlock;
  input [63:0]m_src_axi_rdata;
  output m_src_axi_rready;
  input m_src_axi_rvalid;
  input [1:0]m_src_axi_rresp;
  input [0:0]m_src_axi_rid;
  input m_src_axi_rlast;
  output m_src_axi_awvalid;
  output [30:0]m_src_axi_awaddr;
  output [7:0]m_src_axi_awlen;
  output [2:0]m_src_axi_awsize;
  output [1:0]m_src_axi_awburst;
  output [3:0]m_src_axi_awcache;
  output [2:0]m_src_axi_awprot;
  input m_src_axi_awready;
  output m_src_axi_wvalid;
  output [63:0]m_src_axi_wdata;
  output [7:0]m_src_axi_wstrb;
  output m_src_axi_wlast;
  input m_src_axi_wready;
  input m_src_axi_bvalid;
  input [1:0]m_src_axi_bresp;
  output m_src_axi_bready;
  output [0:0]m_src_axi_awid;
  output [0:0]m_src_axi_awlock;
  output [0:0]m_src_axi_wid;
  input [0:0]m_src_axi_bid;
  input s_axis_aclk;
  output s_axis_ready;
  input s_axis_valid;
  input [63:0]s_axis_data;
  input [7:0]s_axis_strb;
  input [7:0]s_axis_keep;
  input [0:0]s_axis_user;
  input [7:0]s_axis_id;
  input [3:0]s_axis_dest;
  input s_axis_last;
  output s_axis_xfer_req;
  input m_axis_aclk;
  input m_axis_ready;
  output m_axis_valid;
  output [31:0]m_axis_data;
  output [3:0]m_axis_strb;
  output [3:0]m_axis_keep;
  output [0:0]m_axis_user;
  output [7:0]m_axis_id;
  output [3:0]m_axis_dest;
  output m_axis_last;
  output m_axis_xfer_req;
  input fifo_wr_clk;
  input fifo_wr_en;
  input [63:0]fifo_wr_din;
  output fifo_wr_overflow;
  input fifo_wr_sync;
  output fifo_wr_xfer_req;
  input fifo_rd_clk;
  input fifo_rd_en;
  output fifo_rd_valid;
  output [31:0]fifo_rd_dout;
  output fifo_rd_underflow;
  output fifo_rd_xfer_req;
  output [7:0]dest_diag_level_bursts;

  wire \<const0> ;
  wire ctrl_enable;
  wire ctrl_pause;
  wire [30:3]data3;
  wire [27:0]dbg_ids0;
  wire [27:0]dbg_ids1;
  wire [11:0]dbg_status;
  wire [3:0]g;
  wire i_regmap_n_0;
  wire \i_regmap_request/p_7_in ;
  wire \i_regmap_request/up_clear_tl ;
  wire \i_request_arb/i_response_manager/req_eot ;
  wire [2:0]\i_request_arb/i_response_manager/state ;
  wire \i_request_arb/req_gen_ready ;
  wire \i_request_arb/req_gen_valid ;
  wire \i_request_arb/req_src_ready ;
  wire i_transfer_n_106;
  wire i_transfer_n_40;
  wire irq;
  wire m_axis_aclk;
  wire [31:0]m_axis_data;
  wire m_axis_last;
  wire m_axis_ready;
  wire m_axis_valid;
  wire m_axis_xfer_req;
  wire m_src_axi_aclk;
  wire [30:3]\^m_src_axi_araddr ;
  wire [3:0]\^m_src_axi_arlen ;
  wire m_src_axi_arready;
  wire m_src_axi_arvalid;
  wire [63:0]m_src_axi_rdata;
  wire m_src_axi_rlast;
  wire m_src_axi_rvalid;
  wire [6:6]measured_burst_length;
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
  assign fifo_wr_overflow = \<const0> ;
  assign fifo_wr_xfer_req = \<const0> ;
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
  assign m_axis_keep[3] = \<const0> ;
  assign m_axis_keep[2] = \<const0> ;
  assign m_axis_keep[1] = \<const0> ;
  assign m_axis_keep[0] = \<const0> ;
  assign m_axis_strb[3] = \<const0> ;
  assign m_axis_strb[2] = \<const0> ;
  assign m_axis_strb[1] = \<const0> ;
  assign m_axis_strb[0] = \<const0> ;
  assign m_axis_user[0] = \<const0> ;
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
  assign m_dest_axi_awaddr[30] = \<const0> ;
  assign m_dest_axi_awaddr[29] = \<const0> ;
  assign m_dest_axi_awaddr[28] = \<const0> ;
  assign m_dest_axi_awaddr[27] = \<const0> ;
  assign m_dest_axi_awaddr[26] = \<const0> ;
  assign m_dest_axi_awaddr[25] = \<const0> ;
  assign m_dest_axi_awaddr[24] = \<const0> ;
  assign m_dest_axi_awaddr[23] = \<const0> ;
  assign m_dest_axi_awaddr[22] = \<const0> ;
  assign m_dest_axi_awaddr[21] = \<const0> ;
  assign m_dest_axi_awaddr[20] = \<const0> ;
  assign m_dest_axi_awaddr[19] = \<const0> ;
  assign m_dest_axi_awaddr[18] = \<const0> ;
  assign m_dest_axi_awaddr[17] = \<const0> ;
  assign m_dest_axi_awaddr[16] = \<const0> ;
  assign m_dest_axi_awaddr[15] = \<const0> ;
  assign m_dest_axi_awaddr[14] = \<const0> ;
  assign m_dest_axi_awaddr[13] = \<const0> ;
  assign m_dest_axi_awaddr[12] = \<const0> ;
  assign m_dest_axi_awaddr[11] = \<const0> ;
  assign m_dest_axi_awaddr[10] = \<const0> ;
  assign m_dest_axi_awaddr[9] = \<const0> ;
  assign m_dest_axi_awaddr[8] = \<const0> ;
  assign m_dest_axi_awaddr[7] = \<const0> ;
  assign m_dest_axi_awaddr[6] = \<const0> ;
  assign m_dest_axi_awaddr[5] = \<const0> ;
  assign m_dest_axi_awaddr[4] = \<const0> ;
  assign m_dest_axi_awaddr[3] = \<const0> ;
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
  assign m_dest_axi_awlen[3] = \<const0> ;
  assign m_dest_axi_awlen[2] = \<const0> ;
  assign m_dest_axi_awlen[1] = \<const0> ;
  assign m_dest_axi_awlen[0] = \<const0> ;
  assign m_dest_axi_awlock[0] = \<const0> ;
  assign m_dest_axi_awprot[2] = \<const0> ;
  assign m_dest_axi_awprot[1] = \<const0> ;
  assign m_dest_axi_awprot[0] = \<const0> ;
  assign m_dest_axi_awsize[2] = \<const0> ;
  assign m_dest_axi_awsize[1] = \<const0> ;
  assign m_dest_axi_awsize[0] = \<const0> ;
  assign m_dest_axi_awvalid = \<const0> ;
  assign m_dest_axi_bready = \<const0> ;
  assign m_dest_axi_rready = \<const0> ;
  assign m_dest_axi_wdata[31] = \<const0> ;
  assign m_dest_axi_wdata[30] = \<const0> ;
  assign m_dest_axi_wdata[29] = \<const0> ;
  assign m_dest_axi_wdata[28] = \<const0> ;
  assign m_dest_axi_wdata[27] = \<const0> ;
  assign m_dest_axi_wdata[26] = \<const0> ;
  assign m_dest_axi_wdata[25] = \<const0> ;
  assign m_dest_axi_wdata[24] = \<const0> ;
  assign m_dest_axi_wdata[23] = \<const0> ;
  assign m_dest_axi_wdata[22] = \<const0> ;
  assign m_dest_axi_wdata[21] = \<const0> ;
  assign m_dest_axi_wdata[20] = \<const0> ;
  assign m_dest_axi_wdata[19] = \<const0> ;
  assign m_dest_axi_wdata[18] = \<const0> ;
  assign m_dest_axi_wdata[17] = \<const0> ;
  assign m_dest_axi_wdata[16] = \<const0> ;
  assign m_dest_axi_wdata[15] = \<const0> ;
  assign m_dest_axi_wdata[14] = \<const0> ;
  assign m_dest_axi_wdata[13] = \<const0> ;
  assign m_dest_axi_wdata[12] = \<const0> ;
  assign m_dest_axi_wdata[11] = \<const0> ;
  assign m_dest_axi_wdata[10] = \<const0> ;
  assign m_dest_axi_wdata[9] = \<const0> ;
  assign m_dest_axi_wdata[8] = \<const0> ;
  assign m_dest_axi_wdata[7] = \<const0> ;
  assign m_dest_axi_wdata[6] = \<const0> ;
  assign m_dest_axi_wdata[5] = \<const0> ;
  assign m_dest_axi_wdata[4] = \<const0> ;
  assign m_dest_axi_wdata[3] = \<const0> ;
  assign m_dest_axi_wdata[2] = \<const0> ;
  assign m_dest_axi_wdata[1] = \<const0> ;
  assign m_dest_axi_wdata[0] = \<const0> ;
  assign m_dest_axi_wid[0] = \<const0> ;
  assign m_dest_axi_wlast = \<const0> ;
  assign m_dest_axi_wstrb[3] = \<const0> ;
  assign m_dest_axi_wstrb[2] = \<const0> ;
  assign m_dest_axi_wstrb[1] = \<const0> ;
  assign m_dest_axi_wstrb[0] = \<const0> ;
  assign m_dest_axi_wvalid = \<const0> ;
  assign m_src_axi_araddr[30:3] = \^m_src_axi_araddr [30:3];
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
  assign m_src_axi_arlen[3:0] = \^m_src_axi_arlen [3:0];
  assign m_src_axi_arlock[0] = \<const0> ;
  assign m_src_axi_arprot[2] = \<const0> ;
  assign m_src_axi_arprot[1] = \<const0> ;
  assign m_src_axi_arprot[0] = \<const0> ;
  assign m_src_axi_arsize[2] = \<const0> ;
  assign m_src_axi_arsize[1] = \<const0> ;
  assign m_src_axi_arsize[0] = \<const0> ;
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
  assign m_src_axi_wdata[63] = \<const0> ;
  assign m_src_axi_wdata[62] = \<const0> ;
  assign m_src_axi_wdata[61] = \<const0> ;
  assign m_src_axi_wdata[60] = \<const0> ;
  assign m_src_axi_wdata[59] = \<const0> ;
  assign m_src_axi_wdata[58] = \<const0> ;
  assign m_src_axi_wdata[57] = \<const0> ;
  assign m_src_axi_wdata[56] = \<const0> ;
  assign m_src_axi_wdata[55] = \<const0> ;
  assign m_src_axi_wdata[54] = \<const0> ;
  assign m_src_axi_wdata[53] = \<const0> ;
  assign m_src_axi_wdata[52] = \<const0> ;
  assign m_src_axi_wdata[51] = \<const0> ;
  assign m_src_axi_wdata[50] = \<const0> ;
  assign m_src_axi_wdata[49] = \<const0> ;
  assign m_src_axi_wdata[48] = \<const0> ;
  assign m_src_axi_wdata[47] = \<const0> ;
  assign m_src_axi_wdata[46] = \<const0> ;
  assign m_src_axi_wdata[45] = \<const0> ;
  assign m_src_axi_wdata[44] = \<const0> ;
  assign m_src_axi_wdata[43] = \<const0> ;
  assign m_src_axi_wdata[42] = \<const0> ;
  assign m_src_axi_wdata[41] = \<const0> ;
  assign m_src_axi_wdata[40] = \<const0> ;
  assign m_src_axi_wdata[39] = \<const0> ;
  assign m_src_axi_wdata[38] = \<const0> ;
  assign m_src_axi_wdata[37] = \<const0> ;
  assign m_src_axi_wdata[36] = \<const0> ;
  assign m_src_axi_wdata[35] = \<const0> ;
  assign m_src_axi_wdata[34] = \<const0> ;
  assign m_src_axi_wdata[33] = \<const0> ;
  assign m_src_axi_wdata[32] = \<const0> ;
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
  assign m_src_axi_wstrb[7] = \<const0> ;
  assign m_src_axi_wstrb[6] = \<const0> ;
  assign m_src_axi_wstrb[5] = \<const0> ;
  assign m_src_axi_wstrb[4] = \<const0> ;
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
  icyradio_axi_dmac_rf_tx_0_axi_dmac_regmap i_regmap
       (.D({data3,up_dma_x_length[6:2],up_dma_last}),
        .E(\i_regmap_request/p_7_in ),
        .Q(i_transfer_n_40),
        .ctrl_enable(ctrl_enable),
        .ctrl_pause(ctrl_pause),
        .dbg_ids0({dbg_ids0[27:24],dbg_ids0[3:0]}),
        .dbg_ids1({dbg_ids1[27:24],dbg_ids1[11:8],dbg_ids1[3:0]}),
        .dbg_status({dbg_status[11],dbg_status[6:4],dbg_status[2:0]}),
        .g(g),
        .irq(irq),
        .m_src_axi_araddr(\^m_src_axi_araddr ),
        .measured_burst_length(measured_burst_length),
        .req_eot(\i_request_arb/i_response_manager/req_eot ),
        .req_gen_ready(\i_request_arb/req_gen_ready ),
        .req_gen_valid(\i_request_arb/req_gen_valid ),
        .req_src_ready(\i_request_arb/req_src_ready ),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[10:2]),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_aresetn_0(i_regmap_n_0),
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
        .up_clear_tl(\i_regmap_request/up_clear_tl ),
        .up_clear_tl_reg(i_transfer_n_106),
        .up_dma_req_valid(up_dma_req_valid),
        .\up_dma_x_length_reg[23] (up_dma_x_length[23:7]),
        .up_eot(up_eot),
        .up_response_ready(up_response_ready),
        .up_response_valid(up_response_valid),
        .\up_transfer_id_eot_reg[0] (\i_request_arb/i_response_manager/state ));
  icyradio_axi_dmac_rf_tx_0_axi_dmac_transfer i_transfer
       (.D({data3,up_dma_last}),
        .E(\i_regmap_request/p_7_in ),
        .\FSM_sequential_state_reg[0] (i_transfer_n_106),
        .\FSM_sequential_state_reg[2] (\i_request_arb/i_response_manager/state ),
        .Q(i_transfer_n_40),
        .SR(i_regmap_n_0),
        .active_reg(m_axis_xfer_req),
        .addr_valid_reg(m_src_axi_arvalid),
        .ctrl_enable(ctrl_enable),
        .ctrl_pause(ctrl_pause),
        .dbg_ids0({dbg_ids0[27:24],dbg_ids0[3:0]}),
        .dbg_ids1({dbg_ids1[27:24],dbg_ids1[11:8],dbg_ids1[3:0]}),
        .dbg_status({dbg_status[11],dbg_status[6:4],dbg_status[2:0]}),
        .g(g),
        .m_axis_aclk(m_axis_aclk),
        .m_axis_data(m_axis_data),
        .m_axis_last(m_axis_last),
        .m_axis_ready(m_axis_ready),
        .m_axis_valid(m_axis_valid),
        .m_src_axi_aclk(m_src_axi_aclk),
        .m_src_axi_araddr(\^m_src_axi_araddr ),
        .m_src_axi_arlen(\^m_src_axi_arlen ),
        .m_src_axi_arready(m_src_axi_arready),
        .m_src_axi_rdata(m_src_axi_rdata),
        .m_src_axi_rlast(m_src_axi_rlast),
        .m_src_axi_rvalid(m_src_axi_rvalid),
        .measured_burst_length(measured_burst_length),
        .req_eot(\i_request_arb/i_response_manager/req_eot ),
        .req_gen_ready(\i_request_arb/req_gen_ready ),
        .req_gen_valid(\i_request_arb/req_gen_valid ),
        .req_src_ready(\i_request_arb/req_src_ready ),
        .s_axi_aclk(s_axi_aclk),
        .up_clear_tl(\i_regmap_request/up_clear_tl ),
        .up_dma_req_valid(up_dma_req_valid),
        .up_dma_x_length(up_dma_x_length),
        .up_eot(up_eot),
        .up_response_ready(up_response_ready),
        .up_response_valid(up_response_valid));
endmodule

(* ORIG_REF_NAME = "axi_dmac_burst_memory" *) 
module icyradio_axi_dmac_rf_tx_0_axi_dmac_burst_memory
   (m_axis_data,
    Q,
    dest_fifo_valid,
    dest_fifo_last,
    p_1_in,
    E,
    m_axis_aclk,
    m_src_axi_aclk,
    m_src_axi_rdata,
    m_src_axi_rvalid,
    dest_id_reduced_msb_next_reg_0,
    dest_mem_data_last_reg_0,
    m_ram_reg_bram_0,
    m_axis_ready,
    m_src_axi_rlast,
    \src_throttled_request_id_reg[0] ,
    \src_throttled_request_id_reg[0]_0 ,
    \dest_burst_len_data_reg[3]_0 ,
    SR);
  output [31:0]m_axis_data;
  output [3:0]Q;
  output dest_fifo_valid;
  output dest_fifo_last;
  output p_1_in;
  output [0:0]E;
  input m_axis_aclk;
  input m_src_axi_aclk;
  input [63:0]m_src_axi_rdata;
  input m_src_axi_rvalid;
  input [0:0]dest_id_reduced_msb_next_reg_0;
  input dest_mem_data_last_reg_0;
  input m_ram_reg_bram_0;
  input m_axis_ready;
  input m_src_axi_rlast;
  input [3:0]\src_throttled_request_id_reg[0] ;
  input \src_throttled_request_id_reg[0]_0 ;
  input [0:0]\dest_burst_len_data_reg[3]_0 ;
  input [0:0]SR;

  wire [0:0]E;
  wire [3:0]Q;
  wire [0:0]SR;
  wire b2g1_return07_out;
  wire b2g1_return09_out;
  wire burst_len_mem_reg_0_7_0_5_n_4;
  wire dest_beat;
  wire dest_beat_counter0;
  wire [4:0]dest_beat_counter_reg;
  wire [4:0]dest_burst_len;
  wire [6:2]dest_burst_len_data;
  wire [0:0]\dest_burst_len_data_reg[3]_0 ;
  wire dest_burst_ready;
  wire dest_burst_valid;
  wire dest_fifo_last;
  wire dest_fifo_valid;
  wire \dest_id_next[0]_i_1_n_0 ;
  wire \dest_id_next[3]_i_5_n_0 ;
  wire \dest_id_next[3]_i_6_n_0 ;
  wire \dest_id_next_reg_n_0_[3] ;
  wire dest_id_reduced_msb;
  wire dest_id_reduced_msb_next_i_1_n_0;
  wire [0:0]dest_id_reduced_msb_next_reg_0;
  wire [2:2]dest_id_reduced_next;
  wire [1:0]dest_id_reduced_next_0;
  wire \dest_id_reg_n_0_[3] ;
  wire dest_last;
  wire dest_mem_data_last_i_1_n_0;
  wire dest_mem_data_last_reg_0;
  wire dest_mem_data_valid_i_1_n_0;
  wire dest_valid;
  wire dest_valid_i_1_n_0;
  wire id0;
  wire m_axis_aclk;
  wire [31:0]m_axis_data;
  wire m_axis_ready;
  wire m_ram_reg_bram_0;
  wire m_src_axi_aclk;
  wire [63:0]m_src_axi_rdata;
  wire m_src_axi_rlast;
  wire m_src_axi_rvalid;
  wire [4:0]p_0_in;
  wire p_0_in0_in;
  wire p_0_in13_in;
  wire [4:1]p_0_in_1;
  wire [3:0]p_0_in__0;
  wire p_1_in;
  wire p_1_in8_in;
  wire [1:0]src_data_request_id;
  wire [3:0]src_id_next;
  wire [2:2]src_id_reduced;
  wire src_id_reduced_msb_i_1_n_0;
  wire src_last_beat;
  wire \src_throttled_request_id[3]_i_3_n_0 ;
  wire [3:0]\src_throttled_request_id_reg[0] ;
  wire \src_throttled_request_id_reg[0]_0 ;
  wire [1:0]NLW_burst_len_mem_reg_0_7_0_5_DOD_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "48" *) 
  (* RTL_RAM_NAME = "i_transfer/i_request_arb/i_store_and_forward/burst_len_mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M burst_len_mem_reg_0_7_0_5
       (.ADDRA({1'b0,1'b0,dest_id_reduced_next,dest_id_reduced_next_0}),
        .ADDRB({1'b0,1'b0,dest_id_reduced_next,dest_id_reduced_next_0}),
        .ADDRC({1'b0,1'b0,dest_id_reduced_next,dest_id_reduced_next_0}),
        .ADDRD({1'b0,1'b0,src_id_reduced,Q[1:0]}),
        .DIA({p_0_in_1[1],\dest_burst_len_data_reg[3]_0 }),
        .DIB(p_0_in_1[3:2]),
        .DIC({1'b0,p_0_in_1[4]}),
        .DID({1'b0,1'b0}),
        .DOA(dest_burst_len_data[3:2]),
        .DOB(dest_burst_len_data[5:4]),
        .DOC({burst_len_mem_reg_0_7_0_5_n_4,dest_burst_len_data[6]}),
        .DOD(NLW_burst_len_mem_reg_0_7_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(m_src_axi_aclk),
        .WE(src_last_beat));
  LUT2 #(
    .INIT(4'h8)) 
    burst_len_mem_reg_0_7_0_5_i_1
       (.I0(m_src_axi_rvalid),
        .I1(m_src_axi_rlast),
        .O(src_last_beat));
  LUT1 #(
    .INIT(2'h1)) 
    \dest_beat_counter[0]_i_1 
       (.I0(dest_beat_counter_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \dest_beat_counter[1]_i_1 
       (.I0(dest_beat_counter_reg[0]),
        .I1(dest_beat_counter_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \dest_beat_counter[2]_i_1 
       (.I0(dest_beat_counter_reg[2]),
        .I1(dest_beat_counter_reg[1]),
        .I2(dest_beat_counter_reg[0]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \dest_beat_counter[3]_i_1 
       (.I0(dest_beat_counter_reg[3]),
        .I1(dest_beat_counter_reg[0]),
        .I2(dest_beat_counter_reg[1]),
        .I3(dest_beat_counter_reg[2]),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFFD5000000)) 
    \dest_beat_counter[4]_i_1 
       (.I0(dest_fifo_valid),
        .I1(m_axis_ready),
        .I2(m_ram_reg_bram_0),
        .I3(dest_valid),
        .I4(dest_last),
        .I5(dest_id_reduced_msb_next_reg_0),
        .O(dest_beat_counter0));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \dest_beat_counter[4]_i_2 
       (.I0(dest_beat_counter_reg[4]),
        .I1(dest_beat_counter_reg[2]),
        .I2(dest_beat_counter_reg[1]),
        .I3(dest_beat_counter_reg[0]),
        .I4(dest_beat_counter_reg[3]),
        .O(p_0_in[4]));
  FDRE #(
    .INIT(1'b0)) 
    \dest_beat_counter_reg[0] 
       (.C(m_axis_aclk),
        .CE(dest_beat),
        .D(p_0_in[0]),
        .Q(dest_beat_counter_reg[0]),
        .R(dest_beat_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_beat_counter_reg[1] 
       (.C(m_axis_aclk),
        .CE(dest_beat),
        .D(p_0_in[1]),
        .Q(dest_beat_counter_reg[1]),
        .R(dest_beat_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_beat_counter_reg[2] 
       (.C(m_axis_aclk),
        .CE(dest_beat),
        .D(p_0_in[2]),
        .Q(dest_beat_counter_reg[2]),
        .R(dest_beat_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_beat_counter_reg[3] 
       (.C(m_axis_aclk),
        .CE(dest_beat),
        .D(p_0_in[3]),
        .Q(dest_beat_counter_reg[3]),
        .R(dest_beat_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_beat_counter_reg[4] 
       (.C(m_axis_aclk),
        .CE(dest_beat),
        .D(p_0_in[4]),
        .Q(dest_beat_counter_reg[4]),
        .R(dest_beat_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_burst_len_data_reg[2] 
       (.C(m_axis_aclk),
        .CE(id0),
        .D(dest_burst_len_data[2]),
        .Q(dest_burst_len[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_burst_len_data_reg[3] 
       (.C(m_axis_aclk),
        .CE(id0),
        .D(dest_burst_len_data[3]),
        .Q(dest_burst_len[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_burst_len_data_reg[4] 
       (.C(m_axis_aclk),
        .CE(id0),
        .D(dest_burst_len_data[4]),
        .Q(dest_burst_len[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_burst_len_data_reg[5] 
       (.C(m_axis_aclk),
        .CE(id0),
        .D(dest_burst_len_data[5]),
        .Q(dest_burst_len[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_burst_len_data_reg[6] 
       (.C(m_axis_aclk),
        .CE(id0),
        .D(dest_burst_len_data[6]),
        .Q(dest_burst_len[4]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hD5FF00FF)) 
    \dest_id[3]_i_1 
       (.I0(dest_fifo_valid),
        .I1(m_axis_ready),
        .I2(m_ram_reg_bram_0),
        .I3(dest_valid),
        .I4(dest_last),
        .O(dest_burst_ready));
  LUT3 #(
    .INIT(8'h69)) 
    \dest_id_next[0]_i_1 
       (.I0(dest_id_reduced_next_0[1]),
        .I1(p_0_in13_in),
        .I2(\dest_id_next_reg_n_0_[3] ),
        .O(\dest_id_next[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'hD782)) 
    \dest_id_next[1]_i_1 
       (.I0(dest_id_reduced_next_0[0]),
        .I1(\dest_id_next_reg_n_0_[3] ),
        .I2(p_0_in13_in),
        .I3(dest_id_reduced_next_0[1]),
        .O(b2g1_return07_out));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'hCC4E)) 
    \dest_id_next[2]_i_1 
       (.I0(dest_id_reduced_next_0[1]),
        .I1(p_0_in13_in),
        .I2(\dest_id_next_reg_n_0_[3] ),
        .I3(dest_id_reduced_next_0[0]),
        .O(b2g1_return09_out));
  LUT6 #(
    .INIT(64'hD5FF00FF00000000)) 
    \dest_id_next[3]_i_1 
       (.I0(dest_fifo_valid),
        .I1(m_axis_ready),
        .I2(m_ram_reg_bram_0),
        .I3(dest_valid),
        .I4(dest_last),
        .I5(dest_burst_valid),
        .O(id0));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'hCCD8)) 
    \dest_id_next[3]_i_2 
       (.I0(dest_id_reduced_next_0[0]),
        .I1(\dest_id_next_reg_n_0_[3] ),
        .I2(p_0_in13_in),
        .I3(dest_id_reduced_next_0[1]),
        .O(p_1_in8_in));
  LUT5 #(
    .INIT(32'h09000009)) 
    \dest_id_next[3]_i_3 
       (.I0(dest_burst_len[3]),
        .I1(dest_beat_counter_reg[3]),
        .I2(\dest_id_next[3]_i_5_n_0 ),
        .I3(dest_beat_counter_reg[4]),
        .I4(dest_burst_len[4]),
        .O(dest_last));
  LUT5 #(
    .INIT(32'hFFFF6FF6)) 
    \dest_id_next[3]_i_4 
       (.I0(Q[3]),
        .I1(\dest_id_next_reg_n_0_[3] ),
        .I2(Q[2]),
        .I3(p_0_in13_in),
        .I4(\dest_id_next[3]_i_6_n_0 ),
        .O(dest_burst_valid));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \dest_id_next[3]_i_5 
       (.I0(dest_beat_counter_reg[2]),
        .I1(dest_burst_len[2]),
        .I2(dest_beat_counter_reg[1]),
        .I3(dest_burst_len[1]),
        .I4(dest_burst_len[0]),
        .I5(dest_beat_counter_reg[0]),
        .O(\dest_id_next[3]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \dest_id_next[3]_i_6 
       (.I0(Q[1]),
        .I1(dest_id_reduced_next_0[1]),
        .I2(Q[0]),
        .I3(dest_id_reduced_next_0[0]),
        .O(\dest_id_next[3]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dest_id_next_reg[0] 
       (.C(m_axis_aclk),
        .CE(id0),
        .D(\dest_id_next[0]_i_1_n_0 ),
        .Q(dest_id_reduced_next_0[0]),
        .R(dest_id_reduced_msb_next_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_id_next_reg[1] 
       (.C(m_axis_aclk),
        .CE(id0),
        .D(b2g1_return07_out),
        .Q(dest_id_reduced_next_0[1]),
        .R(dest_id_reduced_msb_next_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_id_next_reg[2] 
       (.C(m_axis_aclk),
        .CE(id0),
        .D(b2g1_return09_out),
        .Q(p_0_in13_in),
        .R(dest_id_reduced_msb_next_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_id_next_reg[3] 
       (.C(m_axis_aclk),
        .CE(id0),
        .D(p_1_in8_in),
        .Q(\dest_id_next_reg_n_0_[3] ),
        .R(dest_id_reduced_msb_next_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'h3CAA)) 
    dest_id_reduced_msb_next_i_1
       (.I0(dest_id_reduced_next_0[1]),
        .I1(p_0_in13_in),
        .I2(\dest_id_next_reg_n_0_[3] ),
        .I3(dest_id_reduced_next_0[0]),
        .O(dest_id_reduced_msb_next_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    dest_id_reduced_msb_next_reg
       (.C(m_axis_aclk),
        .CE(id0),
        .D(dest_id_reduced_msb_next_i_1_n_0),
        .Q(dest_id_reduced_next),
        .R(dest_id_reduced_msb_next_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    dest_id_reduced_msb_reg
       (.C(m_axis_aclk),
        .CE(dest_burst_ready),
        .D(dest_id_reduced_next),
        .Q(dest_id_reduced_msb),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_id_reg[0] 
       (.C(m_axis_aclk),
        .CE(dest_burst_ready),
        .D(dest_id_reduced_next_0[0]),
        .Q(src_data_request_id[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_id_reg[1] 
       (.C(m_axis_aclk),
        .CE(dest_burst_ready),
        .D(dest_id_reduced_next_0[1]),
        .Q(src_data_request_id[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_id_reg[2] 
       (.C(m_axis_aclk),
        .CE(dest_burst_ready),
        .D(p_0_in13_in),
        .Q(p_0_in0_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_id_reg[3] 
       (.C(m_axis_aclk),
        .CE(dest_burst_ready),
        .D(\dest_id_next_reg_n_0_[3] ),
        .Q(\dest_id_reg_n_0_[3] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h000000008F8B8088)) 
    dest_mem_data_last_i_1
       (.I0(dest_last),
        .I1(dest_valid),
        .I2(dest_mem_data_last_reg_0),
        .I3(dest_fifo_valid),
        .I4(dest_fifo_last),
        .I5(dest_id_reduced_msb_next_reg_0),
        .O(dest_mem_data_last_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    dest_mem_data_last_reg
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(dest_mem_data_last_i_1_n_0),
        .Q(dest_fifo_last),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'hBFAA)) 
    dest_mem_data_valid_i_1
       (.I0(dest_valid),
        .I1(m_axis_ready),
        .I2(m_ram_reg_bram_0),
        .I3(dest_fifo_valid),
        .O(dest_mem_data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    dest_mem_data_valid_reg
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(dest_mem_data_valid_i_1_n_0),
        .Q(dest_fifo_valid),
        .R(dest_id_reduced_msb_next_reg_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF2A00FF00)) 
    dest_valid_i_1
       (.I0(dest_fifo_valid),
        .I1(m_axis_ready),
        .I2(m_ram_reg_bram_0),
        .I3(dest_valid),
        .I4(dest_last),
        .I5(dest_burst_valid),
        .O(dest_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    dest_valid_reg
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(dest_valid_i_1_n_0),
        .Q(dest_valid),
        .R(dest_id_reduced_msb_next_reg_0));
  icyradio_axi_dmac_rf_tx_0_ad_mem_asym i_mem
       (.ADDRARDADDR({dest_id_reduced_msb,src_data_request_id,dest_beat_counter_reg}),
        .ADDRBWRADDR({src_id_reduced,Q[1:0],p_0_in_1}),
        .E(dest_beat),
        .dest_valid(dest_valid),
        .m_axis_aclk(m_axis_aclk),
        .m_axis_data(m_axis_data),
        .m_axis_ready(m_axis_ready),
        .m_ram_reg_bram_0_0(m_ram_reg_bram_0),
        .m_ram_reg_bram_0_1(dest_fifo_valid),
        .m_src_axi_aclk(m_src_axi_aclk),
        .m_src_axi_rdata(m_src_axi_rdata),
        .m_src_axi_rvalid(m_src_axi_rvalid));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \id[0]_i_1 
       (.I0(dest_fifo_last),
        .I1(m_axis_ready),
        .I2(m_ram_reg_bram_0),
        .O(p_1_in));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \src_beat_counter[0]_i_1 
       (.I0(p_0_in_1[1]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_beat_counter[1]_i_1 
       (.I0(p_0_in_1[1]),
        .I1(p_0_in_1[2]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \src_beat_counter[2]_i_1 
       (.I0(p_0_in_1[3]),
        .I1(p_0_in_1[2]),
        .I2(p_0_in_1[1]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \src_beat_counter[3]_i_2 
       (.I0(p_0_in_1[4]),
        .I1(p_0_in_1[1]),
        .I2(p_0_in_1[2]),
        .I3(p_0_in_1[3]),
        .O(p_0_in__0[3]));
  FDRE #(
    .INIT(1'b0)) 
    \src_beat_counter_reg[0] 
       (.C(m_src_axi_aclk),
        .CE(m_src_axi_rvalid),
        .D(p_0_in__0[0]),
        .Q(p_0_in_1[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \src_beat_counter_reg[1] 
       (.C(m_src_axi_aclk),
        .CE(m_src_axi_rvalid),
        .D(p_0_in__0[1]),
        .Q(p_0_in_1[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \src_beat_counter_reg[2] 
       (.C(m_src_axi_aclk),
        .CE(m_src_axi_rvalid),
        .D(p_0_in__0[2]),
        .Q(p_0_in_1[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \src_beat_counter_reg[3] 
       (.C(m_src_axi_aclk),
        .CE(m_src_axi_rvalid),
        .D(p_0_in__0[3]),
        .Q(p_0_in_1[4]),
        .R(SR));
  LUT6 #(
    .INIT(64'h69FFFFFF69000000)) 
    \src_id[0]_i_1 
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(m_src_axi_rlast),
        .I4(m_src_axi_rvalid),
        .I5(Q[0]),
        .O(src_id_next[0]));
  LUT6 #(
    .INIT(64'hEAAA2AAA2AAAEAAA)) 
    \src_id[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(m_src_axi_rvalid),
        .I3(m_src_axi_rlast),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(src_id_next[1]));
  LUT6 #(
    .INIT(64'hBFFFFFFF00004000)) 
    \src_id[2]_i_1 
       (.I0(Q[0]),
        .I1(m_src_axi_rlast),
        .I2(m_src_axi_rvalid),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(src_id_next[2]));
  LUT6 #(
    .INIT(64'hFFFF0040FFBF0000)) 
    \src_id[3]_i_1 
       (.I0(Q[0]),
        .I1(m_src_axi_rlast),
        .I2(m_src_axi_rvalid),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(src_id_next[3]));
  LUT6 #(
    .INIT(64'h66666666F0666666)) 
    src_id_reduced_msb_i_1
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(m_src_axi_rvalid),
        .I4(m_src_axi_rlast),
        .I5(Q[0]),
        .O(src_id_reduced_msb_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    src_id_reduced_msb_reg
       (.C(m_src_axi_aclk),
        .CE(1'b1),
        .D(src_id_reduced_msb_i_1_n_0),
        .Q(src_id_reduced),
        .R(dest_id_reduced_msb_next_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \src_id_reg[0] 
       (.C(m_src_axi_aclk),
        .CE(1'b1),
        .D(src_id_next[0]),
        .Q(Q[0]),
        .R(dest_id_reduced_msb_next_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \src_id_reg[1] 
       (.C(m_src_axi_aclk),
        .CE(1'b1),
        .D(src_id_next[1]),
        .Q(Q[1]),
        .R(dest_id_reduced_msb_next_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \src_id_reg[2] 
       (.C(m_src_axi_aclk),
        .CE(1'b1),
        .D(src_id_next[2]),
        .Q(Q[2]),
        .R(dest_id_reduced_msb_next_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \src_id_reg[3] 
       (.C(m_src_axi_aclk),
        .CE(1'b1),
        .D(src_id_next[3]),
        .Q(Q[3]),
        .R(dest_id_reduced_msb_next_reg_0));
  LUT6 #(
    .INIT(64'h00000000FFBEBEFF)) 
    \src_throttled_request_id[3]_i_1 
       (.I0(\src_throttled_request_id[3]_i_3_n_0 ),
        .I1(src_data_request_id[0]),
        .I2(\src_throttled_request_id_reg[0] [0]),
        .I3(p_0_in0_in),
        .I4(\src_throttled_request_id_reg[0] [2]),
        .I5(\src_throttled_request_id_reg[0]_0 ),
        .O(E));
  LUT4 #(
    .INIT(16'hF66F)) 
    \src_throttled_request_id[3]_i_3 
       (.I0(src_data_request_id[1]),
        .I1(\src_throttled_request_id_reg[0] [1]),
        .I2(\dest_id_reg_n_0_[3] ),
        .I3(\src_throttled_request_id_reg[0] [3]),
        .O(\src_throttled_request_id[3]_i_3_n_0 ));
endmodule

(* ORIG_REF_NAME = "axi_dmac_regmap" *) 
module icyradio_axi_dmac_rf_tx_0_axi_dmac_regmap
   (s_axi_aresetn_0,
    irq,
    ctrl_enable,
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
    \up_dma_x_length_reg[23] ,
    E,
    s_axi_rdata,
    s_axi_aclk,
    up_clear_tl_reg,
    req_gen_valid,
    s_axi_aresetn,
    m_src_axi_araddr,
    dbg_status,
    dbg_ids1,
    Q,
    dbg_ids0,
    g,
    up_eot,
    up_response_valid,
    s_axi_bready,
    s_axi_rready,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_arvalid,
    s_axi_wdata,
    s_axi_awaddr,
    \up_transfer_id_eot_reg[0] ,
    req_eot,
    req_src_ready,
    req_gen_ready,
    s_axi_araddr,
    measured_burst_length);
  output s_axi_aresetn_0;
  output irq;
  output ctrl_enable;
  output up_dma_req_valid;
  output up_response_ready;
  output up_clear_tl;
  output s_axi_bvalid;
  output s_axi_awready;
  output s_axi_wready;
  output up_axi_rvalid_int_reg;
  output s_axi_arready;
  output ctrl_pause;
  output [33:0]D;
  output [16:0]\up_dma_x_length_reg[23] ;
  output [0:0]E;
  output [31:0]s_axi_rdata;
  input s_axi_aclk;
  input up_clear_tl_reg;
  input req_gen_valid;
  input s_axi_aresetn;
  input [27:0]m_src_axi_araddr;
  input [6:0]dbg_status;
  input [11:0]dbg_ids1;
  input [0:0]Q;
  input [7:0]dbg_ids0;
  input [3:0]g;
  input up_eot;
  input up_response_valid;
  input s_axi_bready;
  input s_axi_rready;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input s_axi_arvalid;
  input [31:0]s_axi_wdata;
  input [8:0]s_axi_awaddr;
  input [2:0]\up_transfer_id_eot_reg[0] ;
  input req_eot;
  input req_src_ready;
  input req_gen_ready;
  input [8:0]s_axi_araddr;
  input [0:0]measured_burst_length;

  wire [33:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire ctrl_enable;
  wire ctrl_pause;
  wire [31:1]data5;
  wire [7:0]dbg_ids0;
  wire [11:0]dbg_ids1;
  wire [6:0]dbg_status;
  wire [3:0]g;
  wire i_regmap_request_n_40;
  wire i_regmap_request_n_41;
  wire i_regmap_request_n_42;
  wire i_regmap_request_n_46;
  wire i_regmap_request_n_68;
  wire i_regmap_request_n_69;
  wire i_up_axi_n_10;
  wire i_up_axi_n_11;
  wire i_up_axi_n_12;
  wire i_up_axi_n_13;
  wire i_up_axi_n_14;
  wire i_up_axi_n_15;
  wire i_up_axi_n_16;
  wire i_up_axi_n_39;
  wire i_up_axi_n_40;
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
  wire i_up_axi_n_86;
  wire i_up_axi_n_87;
  wire i_up_axi_n_88;
  wire i_up_axi_n_89;
  wire i_up_axi_n_9;
  wire irq;
  wire irq_i_1_n_0;
  wire [27:0]m_src_axi_araddr;
  wire [0:0]measured_burst_length;
  wire [2:2]p_3_in;
  wire req_eot;
  wire req_gen_ready;
  wire req_gen_valid;
  wire req_src_ready;
  wire s_axi_aclk;
  wire [8:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_aresetn_0;
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
  wire up_clear_tl;
  wire up_clear_tl_reg;
  wire up_dma_req_valid;
  wire up_dma_src_address;
  wire [23:2]up_dma_x_length0_in;
  wire [16:0]\up_dma_x_length_reg[23] ;
  wire up_eot;
  wire \up_irq_mask[0]_i_1_n_0 ;
  wire \up_irq_mask[1]_i_1_n_0 ;
  wire \up_irq_mask_reg_n_0_[0] ;
  wire \up_irq_mask_reg_n_0_[1] ;
  wire [1:0]up_irq_source;
  wire [23:1]up_measured_transfer_length;
  wire up_rack;
  wire [4:2]up_raddr;
  wire [31:0]up_rdata;
  wire [31:0]up_rdata_0;
  wire up_response_ready;
  wire up_response_valid;
  wire up_rreq;
  wire [31:0]up_scratch;
  wire [1:0]up_transfer_id;
  wire [1:0]up_transfer_id_eot;
  wire [2:0]\up_transfer_id_eot_reg[0] ;
  wire up_wack;
  wire up_wreq;

  FDRE #(
    .INIT(1'b0)) 
    ctrl_enable_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_up_axi_n_89),
        .Q(ctrl_enable),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    ctrl_pause_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_up_axi_n_88),
        .Q(ctrl_pause),
        .R(s_axi_aresetn_0));
  icyradio_axi_dmac_rf_tx_0_axi_dmac_regmap_request i_regmap_request
       (.D(D),
        .E(E),
        .Q({up_measured_transfer_length[23:4],up_measured_transfer_length[1]}),
        .SR(s_axi_aresetn_0),
        .dbg_status(dbg_status[5]),
        .\fifo.valid_reg (i_up_axi_n_77),
        .\fifo.valid_reg_0 (i_up_axi_n_79),
        .\m_axis_raddr_reg_reg[0] (ctrl_enable),
        .\m_axis_raddr_reg_reg[0]_0 (i_up_axi_n_78),
        .measured_burst_length(measured_burst_length),
        .p_3_in(p_3_in),
        .req_eot(req_eot),
        .req_gen_ready(req_gen_ready),
        .req_gen_valid(req_gen_valid),
        .req_src_ready(req_src_ready),
        .response_ready_reg_0(up_response_ready),
        .s_axi_aclk(s_axi_aclk),
        .up_clear_tl(up_clear_tl),
        .up_clear_tl_reg_0(up_clear_tl_reg),
        .up_dma_enable_tlen_reporting_reg_0(i_up_axi_n_87),
        .up_dma_last_reg_0(i_up_axi_n_86),
        .up_dma_req_valid_reg_0(up_dma_req_valid),
        .up_dma_req_valid_reg_1(i_up_axi_n_8),
        .\up_dma_src_address_reg[26]_0 (i_regmap_request_n_40),
        .\up_dma_src_address_reg[28]_0 (i_regmap_request_n_41),
        .\up_dma_src_address_reg[29]_0 (i_regmap_request_n_42),
        .\up_dma_src_address_reg[30]_0 ({i_up_axi_n_10,i_up_axi_n_11,i_up_axi_n_12,i_up_axi_n_13,i_up_axi_n_14,i_up_axi_n_15,i_up_axi_n_16,up_dma_x_length0_in}),
        .\up_dma_src_address_reg[30]_1 (up_dma_src_address),
        .\up_dma_x_length_reg[23]_0 (\up_dma_x_length_reg[23] ),
        .\up_dma_x_length_reg[2]_0 (i_up_axi_n_80),
        .up_eot(up_eot),
        .up_partial_length_valid_reg_0({data5[31],data5[1]}),
        .\up_rdata[0]_i_6 (up_raddr),
        .\up_rdata_reg[26] (i_up_axi_n_76),
        .up_response_valid(up_response_valid),
        .\up_transfer_done_bitmap_reg[0]_0 (i_regmap_request_n_69),
        .\up_transfer_done_bitmap_reg[2]_0 (i_regmap_request_n_68),
        .\up_transfer_done_bitmap_reg[3]_0 (i_regmap_request_n_46),
        .up_transfer_id(up_transfer_id),
        .up_transfer_id_eot(up_transfer_id_eot),
        .\up_transfer_id_eot_reg[0]_0 (\up_transfer_id_eot_reg[0] ));
  icyradio_axi_dmac_rf_tx_0_up_axi i_up_axi
       (.D(up_rdata_0),
        .E(i_up_axi_n_83),
        .Q({i_up_axi_n_9,i_up_axi_n_10,i_up_axi_n_11,i_up_axi_n_12,i_up_axi_n_13,i_up_axi_n_14,i_up_axi_n_15,i_up_axi_n_16,up_dma_x_length0_in,i_up_axi_n_39,i_up_axi_n_40}),
        .SR(s_axi_aresetn_0),
        .ctrl_enable_reg(i_up_axi_n_8),
        .ctrl_enable_reg_0(ctrl_enable),
        .ctrl_pause(ctrl_pause),
        .dbg_ids0(dbg_ids0),
        .dbg_ids1(dbg_ids1),
        .dbg_status(dbg_status),
        .g(g),
        .m_src_axi_araddr(m_src_axi_araddr),
        .p_3_in(p_3_in),
        .req_gen_valid(req_gen_valid),
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
        .\up_irq_source_reg[1] (up_irq_source),
        .up_rack(up_rack),
        .\up_raddr_int_reg[0]_0 (i_up_axi_n_79),
        .\up_raddr_int_reg[4]_0 (up_raddr),
        .\up_raddr_int_reg[4]_1 (i_up_axi_n_76),
        .\up_raddr_int_reg[7]_0 (i_up_axi_n_77),
        .\up_rdata[0]_i_3_0 (i_regmap_request_n_69),
        .\up_rdata[23]_i_3_0 ({up_measured_transfer_length[23:4],up_measured_transfer_length[1]}),
        .\up_rdata[23]_i_3_1 (\up_dma_x_length_reg[23] ),
        .\up_rdata[2]_i_2_0 (i_regmap_request_n_68),
        .\up_rdata[3]_i_2_0 (i_regmap_request_n_46),
        .\up_rdata_d_reg[31]_0 (up_rdata),
        .\up_rdata_reg[0] (\up_irq_mask_reg_n_0_[0] ),
        .\up_rdata_reg[1] (\up_irq_mask_reg_n_0_[1] ),
        .\up_rdata_reg[26] (i_regmap_request_n_40),
        .\up_rdata_reg[28] (i_regmap_request_n_41),
        .\up_rdata_reg[29] (i_regmap_request_n_42),
        .\up_rdata_reg[30] ({D[33],D[30],D[28:3],D[0]}),
        .\up_rdata_reg[31] (up_scratch),
        .\up_rdata_reg[31]_0 ({data5[31],data5[1]}),
        .\up_rdata_reg[9] (Q),
        .up_rreq(up_rreq),
        .up_rreq_int_reg_0(i_up_axi_n_78),
        .up_transfer_id(up_transfer_id),
        .up_transfer_id_eot(up_transfer_id_eot),
        .up_wack(up_wack),
        .\up_waddr_int_reg[1]_0 (i_up_axi_n_80),
        .\up_waddr_int_reg[2]_0 (i_up_axi_n_84),
        .\up_waddr_int_reg[2]_1 (up_dma_src_address),
        .\up_wdata_int_reg[0]_0 (i_up_axi_n_89),
        .\up_wdata_int_reg[1]_0 ({i_up_axi_n_81,i_up_axi_n_82}),
        .\up_wdata_int_reg[1]_1 (i_up_axi_n_86),
        .\up_wdata_int_reg[1]_2 (i_up_axi_n_88),
        .\up_wdata_int_reg[2]_0 (i_up_axi_n_87),
        .up_wreq(up_wreq));
  LUT4 #(
    .INIT(16'h4F44)) 
    irq_i_1
       (.I0(\up_irq_mask_reg_n_0_[1] ),
        .I1(up_irq_source[1]),
        .I2(\up_irq_mask_reg_n_0_[0] ),
        .I3(up_irq_source[0]),
        .O(irq_i_1_n_0));
  FDRE irq_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(irq_i_1_n_0),
        .Q(irq),
        .R(s_axi_aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \up_irq_mask[0]_i_1 
       (.I0(i_up_axi_n_40),
        .I1(i_up_axi_n_84),
        .I2(\up_irq_mask_reg_n_0_[0] ),
        .O(\up_irq_mask[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \up_irq_mask[1]_i_1 
       (.I0(i_up_axi_n_39),
        .I1(i_up_axi_n_84),
        .I2(\up_irq_mask_reg_n_0_[1] ),
        .O(\up_irq_mask[1]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \up_irq_mask_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_irq_mask[0]_i_1_n_0 ),
        .Q(\up_irq_mask_reg_n_0_[0] ),
        .S(s_axi_aresetn_0));
  FDSE #(
    .INIT(1'b1)) 
    \up_irq_mask_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_irq_mask[1]_i_1_n_0 ),
        .Q(\up_irq_mask_reg_n_0_[1] ),
        .S(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_irq_source_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_up_axi_n_82),
        .Q(up_irq_source[0]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_irq_source_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_up_axi_n_81),
        .Q(up_irq_source[1]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    up_rack_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rreq),
        .Q(up_rack),
        .R(s_axi_aresetn_0));
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
        .CE(i_up_axi_n_83),
        .D(i_up_axi_n_40),
        .Q(up_scratch[0]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[10] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_83),
        .D(up_dma_x_length0_in[10]),
        .Q(up_scratch[10]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[11] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_83),
        .D(up_dma_x_length0_in[11]),
        .Q(up_scratch[11]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[12] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_83),
        .D(up_dma_x_length0_in[12]),
        .Q(up_scratch[12]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[13] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_83),
        .D(up_dma_x_length0_in[13]),
        .Q(up_scratch[13]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[14] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_83),
        .D(up_dma_x_length0_in[14]),
        .Q(up_scratch[14]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[15] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_83),
        .D(up_dma_x_length0_in[15]),
        .Q(up_scratch[15]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[16] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_83),
        .D(up_dma_x_length0_in[16]),
        .Q(up_scratch[16]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[17] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_83),
        .D(up_dma_x_length0_in[17]),
        .Q(up_scratch[17]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[18] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_83),
        .D(up_dma_x_length0_in[18]),
        .Q(up_scratch[18]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[19] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_83),
        .D(up_dma_x_length0_in[19]),
        .Q(up_scratch[19]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[1] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_83),
        .D(i_up_axi_n_39),
        .Q(up_scratch[1]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[20] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_83),
        .D(up_dma_x_length0_in[20]),
        .Q(up_scratch[20]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[21] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_83),
        .D(up_dma_x_length0_in[21]),
        .Q(up_scratch[21]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[22] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_83),
        .D(up_dma_x_length0_in[22]),
        .Q(up_scratch[22]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[23] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_83),
        .D(up_dma_x_length0_in[23]),
        .Q(up_scratch[23]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[24] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_83),
        .D(i_up_axi_n_16),
        .Q(up_scratch[24]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[25] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_83),
        .D(i_up_axi_n_15),
        .Q(up_scratch[25]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[26] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_83),
        .D(i_up_axi_n_14),
        .Q(up_scratch[26]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[27] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_83),
        .D(i_up_axi_n_13),
        .Q(up_scratch[27]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[28] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_83),
        .D(i_up_axi_n_12),
        .Q(up_scratch[28]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[29] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_83),
        .D(i_up_axi_n_11),
        .Q(up_scratch[29]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[2] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_83),
        .D(up_dma_x_length0_in[2]),
        .Q(up_scratch[2]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[30] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_83),
        .D(i_up_axi_n_10),
        .Q(up_scratch[30]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[31] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_83),
        .D(i_up_axi_n_9),
        .Q(up_scratch[31]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[3] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_83),
        .D(up_dma_x_length0_in[3]),
        .Q(up_scratch[3]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[4] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_83),
        .D(up_dma_x_length0_in[4]),
        .Q(up_scratch[4]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[5] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_83),
        .D(up_dma_x_length0_in[5]),
        .Q(up_scratch[5]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[6] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_83),
        .D(up_dma_x_length0_in[6]),
        .Q(up_scratch[6]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[7] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_83),
        .D(up_dma_x_length0_in[7]),
        .Q(up_scratch[7]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[8] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_83),
        .D(up_dma_x_length0_in[8]),
        .Q(up_scratch[8]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_scratch_reg[9] 
       (.C(s_axi_aclk),
        .CE(i_up_axi_n_83),
        .D(up_dma_x_length0_in[9]),
        .Q(up_scratch[9]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    up_wack_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_wreq),
        .Q(up_wack),
        .R(s_axi_aresetn_0));
endmodule

(* ORIG_REF_NAME = "axi_dmac_regmap_request" *) 
module icyradio_axi_dmac_rf_tx_0_axi_dmac_regmap_request
   (p_3_in,
    up_dma_req_valid_reg_0,
    response_ready_reg_0,
    up_clear_tl,
    D,
    up_partial_length_valid_reg_0,
    \up_dma_src_address_reg[26]_0 ,
    \up_dma_src_address_reg[28]_0 ,
    \up_dma_src_address_reg[29]_0 ,
    up_transfer_id_eot,
    E,
    \up_transfer_done_bitmap_reg[3]_0 ,
    Q,
    \up_transfer_done_bitmap_reg[2]_0 ,
    \up_transfer_done_bitmap_reg[0]_0 ,
    up_transfer_id,
    \up_dma_x_length_reg[23]_0 ,
    s_axi_aclk,
    SR,
    up_dma_enable_tlen_reporting_reg_0,
    up_dma_req_valid_reg_1,
    up_clear_tl_reg_0,
    up_dma_last_reg_0,
    \up_rdata_reg[26] ,
    up_eot,
    up_response_valid,
    \m_axis_raddr_reg_reg[0] ,
    \up_rdata[0]_i_6 ,
    \fifo.valid_reg ,
    \fifo.valid_reg_0 ,
    \m_axis_raddr_reg_reg[0]_0 ,
    \up_transfer_id_eot_reg[0]_0 ,
    req_eot,
    req_src_ready,
    dbg_status,
    req_gen_ready,
    \up_dma_x_length_reg[2]_0 ,
    \up_dma_src_address_reg[30]_0 ,
    \up_dma_src_address_reg[30]_1 ,
    req_gen_valid,
    measured_burst_length);
  output [0:0]p_3_in;
  output up_dma_req_valid_reg_0;
  output response_ready_reg_0;
  output up_clear_tl;
  output [33:0]D;
  output [1:0]up_partial_length_valid_reg_0;
  output \up_dma_src_address_reg[26]_0 ;
  output \up_dma_src_address_reg[28]_0 ;
  output \up_dma_src_address_reg[29]_0 ;
  output [1:0]up_transfer_id_eot;
  output [0:0]E;
  output \up_transfer_done_bitmap_reg[3]_0 ;
  output [20:0]Q;
  output \up_transfer_done_bitmap_reg[2]_0 ;
  output \up_transfer_done_bitmap_reg[0]_0 ;
  output [1:0]up_transfer_id;
  output [16:0]\up_dma_x_length_reg[23]_0 ;
  input s_axi_aclk;
  input [0:0]SR;
  input up_dma_enable_tlen_reporting_reg_0;
  input up_dma_req_valid_reg_1;
  input up_clear_tl_reg_0;
  input up_dma_last_reg_0;
  input \up_rdata_reg[26] ;
  input up_eot;
  input up_response_valid;
  input \m_axis_raddr_reg_reg[0] ;
  input [2:0]\up_rdata[0]_i_6 ;
  input \fifo.valid_reg ;
  input \fifo.valid_reg_0 ;
  input \m_axis_raddr_reg_reg[0]_0 ;
  input [2:0]\up_transfer_id_eot_reg[0]_0 ;
  input req_eot;
  input req_src_ready;
  input [0:0]dbg_status;
  input req_gen_ready;
  input [0:0]\up_dma_x_length_reg[2]_0 ;
  input [28:0]\up_dma_src_address_reg[30]_0 ;
  input [0:0]\up_dma_src_address_reg[30]_1 ;
  input req_gen_valid;
  input [0:0]measured_burst_length;

  wire [33:0]D;
  wire [0:0]E;
  wire [20:0]Q;
  wire [0:0]SR;
  wire [3:0]data5;
  wire [0:0]dbg_status;
  wire \fifo.valid_reg ;
  wire \fifo.valid_reg_0 ;
  wire i_transfer_lenghts_fifo_n_0;
  wire i_transfer_lenghts_fifo_n_1;
  wire i_transfer_lenghts_fifo_n_2;
  wire \m_axis_raddr_reg_reg[0] ;
  wire \m_axis_raddr_reg_reg[0]_0 ;
  wire [0:0]measured_burst_length;
  wire [0:0]p_3_in;
  wire req_eot;
  wire req_gen_ready;
  wire req_gen_valid;
  wire req_src_ready;
  wire response_ready_reg_0;
  wire s_axi_aclk;
  wire up_clear_tl;
  wire up_clear_tl_reg_0;
  wire up_dma_enable_tlen_reporting_reg_0;
  wire up_dma_last_reg_0;
  wire up_dma_req_valid_reg_0;
  wire up_dma_req_valid_reg_1;
  wire \up_dma_src_address_reg[26]_0 ;
  wire \up_dma_src_address_reg[28]_0 ;
  wire \up_dma_src_address_reg[29]_0 ;
  wire [28:0]\up_dma_src_address_reg[30]_0 ;
  wire [0:0]\up_dma_src_address_reg[30]_1 ;
  wire [16:0]\up_dma_x_length_reg[23]_0 ;
  wire [0:0]\up_dma_x_length_reg[2]_0 ;
  wire up_eot;
  wire [3:0]up_measured_transfer_length;
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
  wire \up_measured_transfer_length_reg[7]_i_1_n_0 ;
  wire \up_measured_transfer_length_reg[7]_i_1_n_1 ;
  wire \up_measured_transfer_length_reg[7]_i_1_n_2 ;
  wire \up_measured_transfer_length_reg[7]_i_1_n_3 ;
  wire \up_measured_transfer_length_reg[7]_i_1_n_4 ;
  wire \up_measured_transfer_length_reg[7]_i_1_n_5 ;
  wire \up_measured_transfer_length_reg[7]_i_1_n_6 ;
  wire \up_measured_transfer_length_reg[7]_i_1_n_7 ;
  wire [1:0]up_partial_length_valid_reg_0;
  wire [2:0]\up_rdata[0]_i_6 ;
  wire \up_rdata_reg[26] ;
  wire up_response_valid;
  wire \up_transfer_done_bitmap[0]_i_1_n_0 ;
  wire \up_transfer_done_bitmap[0]_i_2_n_0 ;
  wire \up_transfer_done_bitmap[1]_i_1_n_0 ;
  wire \up_transfer_done_bitmap[1]_i_2_n_0 ;
  wire \up_transfer_done_bitmap[2]_i_1_n_0 ;
  wire \up_transfer_done_bitmap[2]_i_2_n_0 ;
  wire \up_transfer_done_bitmap[3]_i_1_n_0 ;
  wire \up_transfer_done_bitmap[3]_i_2_n_0 ;
  wire \up_transfer_done_bitmap_reg[0]_0 ;
  wire \up_transfer_done_bitmap_reg[2]_0 ;
  wire \up_transfer_done_bitmap_reg[3]_0 ;
  wire [1:0]up_transfer_id;
  wire \up_transfer_id[0]_i_1_n_0 ;
  wire \up_transfer_id[1]_i_1_n_0 ;
  wire [1:0]up_transfer_id_eot;
  wire \up_transfer_id_eot[0]_i_1_n_0 ;
  wire \up_transfer_id_eot[1]_i_1_n_0 ;
  wire [2:0]\up_transfer_id_eot_reg[0]_0 ;
  wire [3:3]\NLW_up_measured_transfer_length_reg[23]_i_3_CO_UNCONNECTED ;

  icyradio_axi_dmac_rf_tx_0_util_axis_fifo i_transfer_lenghts_fifo
       (.ctrl_enable_reg(i_transfer_lenghts_fifo_n_0),
        .\fifo.valid_reg_0 (i_transfer_lenghts_fifo_n_2),
        .\fifo.valid_reg_1 (\fifo.valid_reg ),
        .\fifo.valid_reg_2 (\fifo.valid_reg_0 ),
        .\m_axis_raddr_reg_reg[0] (\m_axis_raddr_reg_reg[0] ),
        .\m_axis_raddr_reg_reg[0]_0 (\m_axis_raddr_reg_reg[0]_0 ),
        .response_ready_reg(response_ready_reg_0),
        .response_valid_reg(i_transfer_lenghts_fifo_n_1),
        .s_axi_aclk(s_axi_aclk),
        .up_partial_length_valid_reg(up_partial_length_valid_reg_0[1]),
        .up_response_valid(up_response_valid));
  FDSE #(
    .INIT(1'b1)) 
    response_ready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_transfer_lenghts_fifo_n_1),
        .Q(response_ready_reg_0),
        .S(i_transfer_lenghts_fifo_n_0));
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
        .CE(\up_dma_src_address_reg[30]_1 ),
        .D(\up_dma_src_address_reg[30]_0 [8]),
        .Q(D[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[11] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[30]_1 ),
        .D(\up_dma_src_address_reg[30]_0 [9]),
        .Q(D[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[12] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[30]_1 ),
        .D(\up_dma_src_address_reg[30]_0 [10]),
        .Q(D[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[13] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[30]_1 ),
        .D(\up_dma_src_address_reg[30]_0 [11]),
        .Q(D[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[14] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[30]_1 ),
        .D(\up_dma_src_address_reg[30]_0 [12]),
        .Q(D[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[15] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[30]_1 ),
        .D(\up_dma_src_address_reg[30]_0 [13]),
        .Q(D[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[16] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[30]_1 ),
        .D(\up_dma_src_address_reg[30]_0 [14]),
        .Q(D[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[17] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[30]_1 ),
        .D(\up_dma_src_address_reg[30]_0 [15]),
        .Q(D[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[18] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[30]_1 ),
        .D(\up_dma_src_address_reg[30]_0 [16]),
        .Q(D[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[19] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[30]_1 ),
        .D(\up_dma_src_address_reg[30]_0 [17]),
        .Q(D[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[20] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[30]_1 ),
        .D(\up_dma_src_address_reg[30]_0 [18]),
        .Q(D[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[21] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[30]_1 ),
        .D(\up_dma_src_address_reg[30]_0 [19]),
        .Q(D[24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[22] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[30]_1 ),
        .D(\up_dma_src_address_reg[30]_0 [20]),
        .Q(D[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[23] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[30]_1 ),
        .D(\up_dma_src_address_reg[30]_0 [21]),
        .Q(D[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[24] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[30]_1 ),
        .D(\up_dma_src_address_reg[30]_0 [22]),
        .Q(D[27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[25] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[30]_1 ),
        .D(\up_dma_src_address_reg[30]_0 [23]),
        .Q(D[28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[26] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[30]_1 ),
        .D(\up_dma_src_address_reg[30]_0 [24]),
        .Q(D[29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[27] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[30]_1 ),
        .D(\up_dma_src_address_reg[30]_0 [25]),
        .Q(D[30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[28] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[30]_1 ),
        .D(\up_dma_src_address_reg[30]_0 [26]),
        .Q(D[31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[29] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[30]_1 ),
        .D(\up_dma_src_address_reg[30]_0 [27]),
        .Q(D[32]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[30] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[30]_1 ),
        .D(\up_dma_src_address_reg[30]_0 [28]),
        .Q(D[33]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[3] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[30]_1 ),
        .D(\up_dma_src_address_reg[30]_0 [1]),
        .Q(D[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[4] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[30]_1 ),
        .D(\up_dma_src_address_reg[30]_0 [2]),
        .Q(D[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[5] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[30]_1 ),
        .D(\up_dma_src_address_reg[30]_0 [3]),
        .Q(D[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[6] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[30]_1 ),
        .D(\up_dma_src_address_reg[30]_0 [4]),
        .Q(D[9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[7] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[30]_1 ),
        .D(\up_dma_src_address_reg[30]_0 [5]),
        .Q(D[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[8] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[30]_1 ),
        .D(\up_dma_src_address_reg[30]_0 [6]),
        .Q(D[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_src_address_reg[9] 
       (.C(s_axi_aclk),
        .CE(\up_dma_src_address_reg[30]_1 ),
        .D(\up_dma_src_address_reg[30]_0 [7]),
        .Q(D[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[10] 
       (.C(s_axi_aclk),
        .CE(\up_dma_x_length_reg[2]_0 ),
        .D(\up_dma_src_address_reg[30]_0 [8]),
        .Q(\up_dma_x_length_reg[23]_0 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[11] 
       (.C(s_axi_aclk),
        .CE(\up_dma_x_length_reg[2]_0 ),
        .D(\up_dma_src_address_reg[30]_0 [9]),
        .Q(\up_dma_x_length_reg[23]_0 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[12] 
       (.C(s_axi_aclk),
        .CE(\up_dma_x_length_reg[2]_0 ),
        .D(\up_dma_src_address_reg[30]_0 [10]),
        .Q(\up_dma_x_length_reg[23]_0 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[13] 
       (.C(s_axi_aclk),
        .CE(\up_dma_x_length_reg[2]_0 ),
        .D(\up_dma_src_address_reg[30]_0 [11]),
        .Q(\up_dma_x_length_reg[23]_0 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[14] 
       (.C(s_axi_aclk),
        .CE(\up_dma_x_length_reg[2]_0 ),
        .D(\up_dma_src_address_reg[30]_0 [12]),
        .Q(\up_dma_x_length_reg[23]_0 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[15] 
       (.C(s_axi_aclk),
        .CE(\up_dma_x_length_reg[2]_0 ),
        .D(\up_dma_src_address_reg[30]_0 [13]),
        .Q(\up_dma_x_length_reg[23]_0 [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[16] 
       (.C(s_axi_aclk),
        .CE(\up_dma_x_length_reg[2]_0 ),
        .D(\up_dma_src_address_reg[30]_0 [14]),
        .Q(\up_dma_x_length_reg[23]_0 [9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[17] 
       (.C(s_axi_aclk),
        .CE(\up_dma_x_length_reg[2]_0 ),
        .D(\up_dma_src_address_reg[30]_0 [15]),
        .Q(\up_dma_x_length_reg[23]_0 [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[18] 
       (.C(s_axi_aclk),
        .CE(\up_dma_x_length_reg[2]_0 ),
        .D(\up_dma_src_address_reg[30]_0 [16]),
        .Q(\up_dma_x_length_reg[23]_0 [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[19] 
       (.C(s_axi_aclk),
        .CE(\up_dma_x_length_reg[2]_0 ),
        .D(\up_dma_src_address_reg[30]_0 [17]),
        .Q(\up_dma_x_length_reg[23]_0 [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[20] 
       (.C(s_axi_aclk),
        .CE(\up_dma_x_length_reg[2]_0 ),
        .D(\up_dma_src_address_reg[30]_0 [18]),
        .Q(\up_dma_x_length_reg[23]_0 [13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[21] 
       (.C(s_axi_aclk),
        .CE(\up_dma_x_length_reg[2]_0 ),
        .D(\up_dma_src_address_reg[30]_0 [19]),
        .Q(\up_dma_x_length_reg[23]_0 [14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[22] 
       (.C(s_axi_aclk),
        .CE(\up_dma_x_length_reg[2]_0 ),
        .D(\up_dma_src_address_reg[30]_0 [20]),
        .Q(\up_dma_x_length_reg[23]_0 [15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[23] 
       (.C(s_axi_aclk),
        .CE(\up_dma_x_length_reg[2]_0 ),
        .D(\up_dma_src_address_reg[30]_0 [21]),
        .Q(\up_dma_x_length_reg[23]_0 [16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[2] 
       (.C(s_axi_aclk),
        .CE(\up_dma_x_length_reg[2]_0 ),
        .D(\up_dma_src_address_reg[30]_0 [0]),
        .Q(D[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[3] 
       (.C(s_axi_aclk),
        .CE(\up_dma_x_length_reg[2]_0 ),
        .D(\up_dma_src_address_reg[30]_0 [1]),
        .Q(D[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[4] 
       (.C(s_axi_aclk),
        .CE(\up_dma_x_length_reg[2]_0 ),
        .D(\up_dma_src_address_reg[30]_0 [2]),
        .Q(D[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[5] 
       (.C(s_axi_aclk),
        .CE(\up_dma_x_length_reg[2]_0 ),
        .D(\up_dma_src_address_reg[30]_0 [3]),
        .Q(D[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[6] 
       (.C(s_axi_aclk),
        .CE(\up_dma_x_length_reg[2]_0 ),
        .D(\up_dma_src_address_reg[30]_0 [4]),
        .Q(D[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[7] 
       (.C(s_axi_aclk),
        .CE(\up_dma_x_length_reg[2]_0 ),
        .D(\up_dma_src_address_reg[30]_0 [5]),
        .Q(\up_dma_x_length_reg[23]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[8] 
       (.C(s_axi_aclk),
        .CE(\up_dma_x_length_reg[2]_0 ),
        .D(\up_dma_src_address_reg[30]_0 [6]),
        .Q(\up_dma_x_length_reg[23]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_dma_x_length_reg[9] 
       (.C(s_axi_aclk),
        .CE(\up_dma_x_length_reg[2]_0 ),
        .D(\up_dma_src_address_reg[30]_0 [7]),
        .Q(\up_dma_x_length_reg[23]_0 [2]),
        .R(SR));
  LUT4 #(
    .INIT(16'h70FF)) 
    \up_measured_transfer_length[23]_i_1 
       (.I0(response_ready_reg_0),
        .I1(up_response_valid),
        .I2(up_clear_tl),
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
       (.I0(up_measured_transfer_length[3]),
        .I1(measured_burst_length),
        .O(\up_measured_transfer_length[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \up_measured_transfer_length[3]_i_3 
       (.I0(up_measured_transfer_length[2]),
        .I1(measured_burst_length),
        .O(\up_measured_transfer_length[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \up_measured_transfer_length[3]_i_4 
       (.I0(Q[0]),
        .I1(measured_burst_length),
        .O(\up_measured_transfer_length[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \up_measured_transfer_length[3]_i_5 
       (.I0(up_measured_transfer_length[0]),
        .I1(measured_burst_length),
        .O(\up_measured_transfer_length[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \up_measured_transfer_length[7]_i_2 
       (.I0(Q[3]),
        .I1(measured_burst_length),
        .O(\up_measured_transfer_length[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \up_measured_transfer_length[7]_i_3 
       (.I0(Q[2]),
        .I1(measured_burst_length),
        .O(\up_measured_transfer_length[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \up_measured_transfer_length[7]_i_4 
       (.I0(Q[1]),
        .I1(measured_burst_length),
        .O(\up_measured_transfer_length[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_measured_transfer_length_reg[3]_i_1_n_7 ),
        .Q(up_measured_transfer_length[0]),
        .R(\up_measured_transfer_length[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[10] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_measured_transfer_length_reg[11]_i_1_n_5 ),
        .Q(Q[7]),
        .R(\up_measured_transfer_length[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[11] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_measured_transfer_length_reg[11]_i_1_n_4 ),
        .Q(Q[8]),
        .R(\up_measured_transfer_length[23]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \up_measured_transfer_length_reg[11]_i_1 
       (.CI(\up_measured_transfer_length_reg[7]_i_1_n_0 ),
        .CO({\up_measured_transfer_length_reg[11]_i_1_n_0 ,\up_measured_transfer_length_reg[11]_i_1_n_1 ,\up_measured_transfer_length_reg[11]_i_1_n_2 ,\up_measured_transfer_length_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\up_measured_transfer_length_reg[11]_i_1_n_4 ,\up_measured_transfer_length_reg[11]_i_1_n_5 ,\up_measured_transfer_length_reg[11]_i_1_n_6 ,\up_measured_transfer_length_reg[11]_i_1_n_7 }),
        .S(Q[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[12] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_measured_transfer_length_reg[15]_i_1_n_7 ),
        .Q(Q[9]),
        .R(\up_measured_transfer_length[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[13] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_measured_transfer_length_reg[15]_i_1_n_6 ),
        .Q(Q[10]),
        .R(\up_measured_transfer_length[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[14] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_measured_transfer_length_reg[15]_i_1_n_5 ),
        .Q(Q[11]),
        .R(\up_measured_transfer_length[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[15] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_measured_transfer_length_reg[15]_i_1_n_4 ),
        .Q(Q[12]),
        .R(\up_measured_transfer_length[23]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \up_measured_transfer_length_reg[15]_i_1 
       (.CI(\up_measured_transfer_length_reg[11]_i_1_n_0 ),
        .CO({\up_measured_transfer_length_reg[15]_i_1_n_0 ,\up_measured_transfer_length_reg[15]_i_1_n_1 ,\up_measured_transfer_length_reg[15]_i_1_n_2 ,\up_measured_transfer_length_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\up_measured_transfer_length_reg[15]_i_1_n_4 ,\up_measured_transfer_length_reg[15]_i_1_n_5 ,\up_measured_transfer_length_reg[15]_i_1_n_6 ,\up_measured_transfer_length_reg[15]_i_1_n_7 }),
        .S(Q[12:9]));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[16] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_measured_transfer_length_reg[19]_i_1_n_7 ),
        .Q(Q[13]),
        .R(\up_measured_transfer_length[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[17] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_measured_transfer_length_reg[19]_i_1_n_6 ),
        .Q(Q[14]),
        .R(\up_measured_transfer_length[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[18] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_measured_transfer_length_reg[19]_i_1_n_5 ),
        .Q(Q[15]),
        .R(\up_measured_transfer_length[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[19] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_measured_transfer_length_reg[19]_i_1_n_4 ),
        .Q(Q[16]),
        .R(\up_measured_transfer_length[23]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \up_measured_transfer_length_reg[19]_i_1 
       (.CI(\up_measured_transfer_length_reg[15]_i_1_n_0 ),
        .CO({\up_measured_transfer_length_reg[19]_i_1_n_0 ,\up_measured_transfer_length_reg[19]_i_1_n_1 ,\up_measured_transfer_length_reg[19]_i_1_n_2 ,\up_measured_transfer_length_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\up_measured_transfer_length_reg[19]_i_1_n_4 ,\up_measured_transfer_length_reg[19]_i_1_n_5 ,\up_measured_transfer_length_reg[19]_i_1_n_6 ,\up_measured_transfer_length_reg[19]_i_1_n_7 }),
        .S(Q[16:13]));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_measured_transfer_length_reg[3]_i_1_n_6 ),
        .Q(Q[0]),
        .R(\up_measured_transfer_length[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[20] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_measured_transfer_length_reg[23]_i_3_n_7 ),
        .Q(Q[17]),
        .R(\up_measured_transfer_length[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[21] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_measured_transfer_length_reg[23]_i_3_n_6 ),
        .Q(Q[18]),
        .R(\up_measured_transfer_length[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[22] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_measured_transfer_length_reg[23]_i_3_n_5 ),
        .Q(Q[19]),
        .R(\up_measured_transfer_length[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[23] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_measured_transfer_length_reg[23]_i_3_n_4 ),
        .Q(Q[20]),
        .R(\up_measured_transfer_length[23]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \up_measured_transfer_length_reg[23]_i_3 
       (.CI(\up_measured_transfer_length_reg[19]_i_1_n_0 ),
        .CO({\NLW_up_measured_transfer_length_reg[23]_i_3_CO_UNCONNECTED [3],\up_measured_transfer_length_reg[23]_i_3_n_1 ,\up_measured_transfer_length_reg[23]_i_3_n_2 ,\up_measured_transfer_length_reg[23]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\up_measured_transfer_length_reg[23]_i_3_n_4 ,\up_measured_transfer_length_reg[23]_i_3_n_5 ,\up_measured_transfer_length_reg[23]_i_3_n_6 ,\up_measured_transfer_length_reg[23]_i_3_n_7 }),
        .S(Q[20:17]));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_measured_transfer_length_reg[3]_i_1_n_5 ),
        .Q(up_measured_transfer_length[2]),
        .R(\up_measured_transfer_length[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_measured_transfer_length_reg[3]_i_1_n_4 ),
        .Q(up_measured_transfer_length[3]),
        .R(\up_measured_transfer_length[23]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \up_measured_transfer_length_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\up_measured_transfer_length_reg[3]_i_1_n_0 ,\up_measured_transfer_length_reg[3]_i_1_n_1 ,\up_measured_transfer_length_reg[3]_i_1_n_2 ,\up_measured_transfer_length_reg[3]_i_1_n_3 }),
        .CYINIT(1'b1),
        .DI({up_measured_transfer_length[3:2],Q[0],up_measured_transfer_length[0]}),
        .O({\up_measured_transfer_length_reg[3]_i_1_n_4 ,\up_measured_transfer_length_reg[3]_i_1_n_5 ,\up_measured_transfer_length_reg[3]_i_1_n_6 ,\up_measured_transfer_length_reg[3]_i_1_n_7 }),
        .S({\up_measured_transfer_length[3]_i_2_n_0 ,\up_measured_transfer_length[3]_i_3_n_0 ,\up_measured_transfer_length[3]_i_4_n_0 ,\up_measured_transfer_length[3]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_measured_transfer_length_reg[7]_i_1_n_7 ),
        .Q(Q[1]),
        .R(\up_measured_transfer_length[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_measured_transfer_length_reg[7]_i_1_n_6 ),
        .Q(Q[2]),
        .R(\up_measured_transfer_length[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[6] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_measured_transfer_length_reg[7]_i_1_n_5 ),
        .Q(Q[3]),
        .R(\up_measured_transfer_length[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[7] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_measured_transfer_length_reg[7]_i_1_n_4 ),
        .Q(Q[4]),
        .R(\up_measured_transfer_length[23]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \up_measured_transfer_length_reg[7]_i_1 
       (.CI(\up_measured_transfer_length_reg[3]_i_1_n_0 ),
        .CO({\up_measured_transfer_length_reg[7]_i_1_n_0 ,\up_measured_transfer_length_reg[7]_i_1_n_1 ,\up_measured_transfer_length_reg[7]_i_1_n_2 ,\up_measured_transfer_length_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,Q[3:1]}),
        .O({\up_measured_transfer_length_reg[7]_i_1_n_4 ,\up_measured_transfer_length_reg[7]_i_1_n_5 ,\up_measured_transfer_length_reg[7]_i_1_n_6 ,\up_measured_transfer_length_reg[7]_i_1_n_7 }),
        .S({Q[4],\up_measured_transfer_length[7]_i_2_n_0 ,\up_measured_transfer_length[7]_i_3_n_0 ,\up_measured_transfer_length[7]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[8] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_measured_transfer_length_reg[11]_i_1_n_7 ),
        .Q(Q[5]),
        .R(\up_measured_transfer_length[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_measured_transfer_length_reg[9] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\up_measured_transfer_length_reg[11]_i_1_n_6 ),
        .Q(Q[6]),
        .R(\up_measured_transfer_length[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    up_partial_length_valid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_transfer_lenghts_fifo_n_2),
        .Q(up_partial_length_valid_reg_0[1]),
        .R(i_transfer_lenghts_fifo_n_0));
  LUT6 #(
    .INIT(64'h0033003330BB3088)) 
    \up_rdata[0]_i_7 
       (.I0(data5[0]),
        .I1(\up_rdata[0]_i_6 [1]),
        .I2(up_measured_transfer_length[0]),
        .I3(\up_rdata[0]_i_6 [2]),
        .I4(up_dma_req_valid_reg_0),
        .I5(\up_rdata[0]_i_6 [0]),
        .O(\up_transfer_done_bitmap_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \up_rdata[26]_i_2 
       (.I0(D[29]),
        .I1(\up_rdata_reg[26] ),
        .O(\up_dma_src_address_reg[26]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \up_rdata[28]_i_2 
       (.I0(D[31]),
        .I1(\up_rdata_reg[26] ),
        .O(\up_dma_src_address_reg[28]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \up_rdata[29]_i_2 
       (.I0(D[32]),
        .I1(\up_rdata_reg[26] ),
        .O(\up_dma_src_address_reg[29]_0 ));
  LUT6 #(
    .INIT(64'hFFF0F53FFFFFF53F)) 
    \up_rdata[2]_i_5 
       (.I0(data5[2]),
        .I1(up_measured_transfer_length[2]),
        .I2(\up_rdata[0]_i_6 [2]),
        .I3(\up_rdata[0]_i_6 [1]),
        .I4(\up_rdata[0]_i_6 [0]),
        .I5(D[1]),
        .O(\up_transfer_done_bitmap_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hFFF0F53FFFFFF53F)) 
    \up_rdata[3]_i_5 
       (.I0(data5[3]),
        .I1(up_measured_transfer_length[3]),
        .I2(\up_rdata[0]_i_6 [2]),
        .I3(\up_rdata[0]_i_6 [1]),
        .I4(\up_rdata[0]_i_6 [0]),
        .I5(D[2]),
        .O(\up_transfer_done_bitmap_reg[3]_0 ));
  LUT5 #(
    .INIT(32'hFFEFFF00)) 
    \up_transfer_done_bitmap[0]_i_1 
       (.I0(up_transfer_id[0]),
        .I1(up_transfer_id[1]),
        .I2(req_gen_valid),
        .I3(\up_transfer_done_bitmap[0]_i_2_n_0 ),
        .I4(data5[0]),
        .O(\up_transfer_done_bitmap[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \up_transfer_done_bitmap[0]_i_2 
       (.I0(up_eot),
        .I1(up_transfer_id_eot[1]),
        .I2(up_transfer_id_eot[0]),
        .O(\up_transfer_done_bitmap[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFBFFF00)) 
    \up_transfer_done_bitmap[1]_i_1 
       (.I0(up_transfer_id[1]),
        .I1(up_transfer_id[0]),
        .I2(req_gen_valid),
        .I3(\up_transfer_done_bitmap[1]_i_2_n_0 ),
        .I4(up_partial_length_valid_reg_0[0]),
        .O(\up_transfer_done_bitmap[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \up_transfer_done_bitmap[1]_i_2 
       (.I0(up_eot),
        .I1(up_transfer_id_eot[0]),
        .I2(up_transfer_id_eot[1]),
        .O(\up_transfer_done_bitmap[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFBFFF00)) 
    \up_transfer_done_bitmap[2]_i_1 
       (.I0(up_transfer_id[0]),
        .I1(up_transfer_id[1]),
        .I2(req_gen_valid),
        .I3(\up_transfer_done_bitmap[2]_i_2_n_0 ),
        .I4(data5[2]),
        .O(\up_transfer_done_bitmap[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \up_transfer_done_bitmap[2]_i_2 
       (.I0(up_eot),
        .I1(up_transfer_id_eot[1]),
        .I2(up_transfer_id_eot[0]),
        .O(\up_transfer_done_bitmap[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF7FFF00)) 
    \up_transfer_done_bitmap[3]_i_1 
       (.I0(up_transfer_id[0]),
        .I1(up_transfer_id[1]),
        .I2(req_gen_valid),
        .I3(\up_transfer_done_bitmap[3]_i_2_n_0 ),
        .I4(data5[3]),
        .O(\up_transfer_done_bitmap[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \up_transfer_done_bitmap[3]_i_2 
       (.I0(up_eot),
        .I1(up_transfer_id_eot[1]),
        .I2(up_transfer_id_eot[0]),
        .O(\up_transfer_done_bitmap[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_transfer_done_bitmap_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_transfer_done_bitmap[0]_i_1_n_0 ),
        .Q(data5[0]),
        .R(i_transfer_lenghts_fifo_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_transfer_done_bitmap_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_transfer_done_bitmap[1]_i_1_n_0 ),
        .Q(up_partial_length_valid_reg_0[0]),
        .R(i_transfer_lenghts_fifo_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_transfer_done_bitmap_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_transfer_done_bitmap[2]_i_1_n_0 ),
        .Q(data5[2]),
        .R(i_transfer_lenghts_fifo_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_transfer_done_bitmap_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_transfer_done_bitmap[3]_i_1_n_0 ),
        .Q(data5[3]),
        .R(i_transfer_lenghts_fifo_n_0));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \up_transfer_id[0]_i_1 
       (.I0(up_dma_req_valid_reg_0),
        .I1(req_gen_ready),
        .I2(dbg_status),
        .I3(req_src_ready),
        .I4(up_transfer_id[0]),
        .O(\up_transfer_id[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \up_transfer_id[1]_i_1 
       (.I0(up_transfer_id[0]),
        .I1(req_src_ready),
        .I2(dbg_status),
        .I3(req_gen_ready),
        .I4(up_dma_req_valid_reg_0),
        .I5(up_transfer_id[1]),
        .O(\up_transfer_id[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002FFFFFFFD0000)) 
    \up_transfer_id_eot[0]_i_1 
       (.I0(\up_transfer_id_eot_reg[0]_0 [1]),
        .I1(\up_transfer_id_eot_reg[0]_0 [2]),
        .I2(req_eot),
        .I3(\up_transfer_id_eot_reg[0]_0 [0]),
        .I4(E),
        .I5(up_transfer_id_eot[0]),
        .O(\up_transfer_id_eot[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \up_transfer_id_eot[1]_i_1 
       (.I0(up_transfer_id_eot[0]),
        .I1(up_eot),
        .I2(up_transfer_id_eot[1]),
        .O(\up_transfer_id_eot[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_transfer_id_eot_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_transfer_id_eot[0]_i_1_n_0 ),
        .Q(up_transfer_id_eot[0]),
        .R(i_transfer_lenghts_fifo_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_transfer_id_eot_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_transfer_id_eot[1]_i_1_n_0 ),
        .Q(up_transfer_id_eot[1]),
        .R(i_transfer_lenghts_fifo_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_transfer_id_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_transfer_id[0]_i_1_n_0 ),
        .Q(up_transfer_id[0]),
        .R(i_transfer_lenghts_fifo_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \up_transfer_id_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_transfer_id[1]_i_1_n_0 ),
        .Q(up_transfer_id[1]),
        .R(i_transfer_lenghts_fifo_n_0));
endmodule

(* ORIG_REF_NAME = "axi_dmac_reset_manager" *) 
module icyradio_axi_dmac_rf_tx_0_axi_dmac_reset_manager
   (dbg_status,
    Q,
    SR,
    \reset_gen[0].reset_sync_reg[0]_0 ,
    m_axis_aclk,
    s_axi_aclk,
    m_src_axi_rvalid,
    m_src_axi_rlast,
    ctrl_enable,
    ctrl_pause,
    \state_reg[0]_0 ,
    \state_reg[0]_1 ,
    \FSM_onehot_state_reg[1]_0 );
  output [4:0]dbg_status;
  output [1:0]Q;
  output [0:0]SR;
  output [0:0]\reset_gen[0].reset_sync_reg[0]_0 ;
  input m_axis_aclk;
  input s_axi_aclk;
  input m_src_axi_rvalid;
  input m_src_axi_rlast;
  input ctrl_enable;
  input ctrl_pause;
  input \state_reg[0]_0 ;
  input \state_reg[0]_1 ;
  input [0:0]\FSM_onehot_state_reg[1]_0 ;

  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state[5]_i_2_n_0 ;
  wire \FSM_onehot_state[5]_i_4_n_0 ;
  wire [0:0]\FSM_onehot_state_reg[1]_0 ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_n_0_[4] ;
  wire [1:0]Q;
  wire [0:0]SR;
  wire ctrl_enable;
  wire ctrl_pause;
  wire [4:0]dbg_status;
  wire do_enable0;
  wire do_reset;
  wire do_reset_0;
  wire m_axis_aclk;
  wire m_src_axi_rlast;
  wire m_src_axi_rvalid;
  wire needs_reset;
  wire needs_reset_i_1_n_0;
  wire \reset_gen[0].reset_async_reg_n_0_[1] ;
  wire \reset_gen[0].reset_async_reg_n_0_[2] ;
  wire \reset_gen[0].reset_async_reg_n_0_[3] ;
  wire \reset_gen[0].reset_sync_in ;
  wire [0:0]\reset_gen[0].reset_sync_reg[0]_0 ;
  wire \reset_gen[0].reset_sync_reg_n_0_[1] ;
  wire reset_sync_chain_0;
  wire s_axi_aclk;
  wire state;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[2]_i_1_n_0 ;
  wire \state_reg[0]_0 ;
  wire \state_reg[0]_1 ;

  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(dbg_status[4]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(needs_reset),
        .I1(Q[1]),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(dbg_status[4]),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFA8)) 
    \FSM_onehot_state[5]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(ctrl_pause),
        .I2(dbg_status[4]),
        .I3(do_reset_0),
        .I4(\FSM_onehot_state[5]_i_2_n_0 ),
        .O(state));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF08)) 
    \FSM_onehot_state[5]_i_2 
       (.I0(needs_reset),
        .I1(ctrl_enable),
        .I2(\reset_gen[0].reset_sync_reg[0]_0 ),
        .I3(\state_reg[0]_0 ),
        .I4(\FSM_onehot_state[5]_i_4_n_0 ),
        .I5(\state_reg[0]_1 ),
        .O(\FSM_onehot_state[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \FSM_onehot_state[5]_i_4 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(dbg_status[4]),
        .I2(ctrl_pause),
        .O(\FSM_onehot_state[5]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "STATE_RESET:000010,STATE_DISABLED:000100,STATE_ENABLED:010000,STATE_SHUTDOWN:100000,STATE_STARTUP:001000,STATE_DO_RESET:000001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(state),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(do_reset_0),
        .S(\FSM_onehot_state_reg[1]_0 ));
  (* FSM_ENCODED_STATES = "STATE_RESET:000010,STATE_DISABLED:000100,STATE_ENABLED:010000,STATE_SHUTDOWN:100000,STATE_STARTUP:001000,STATE_DO_RESET:000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(state),
        .D(do_reset_0),
        .Q(needs_reset),
        .R(\FSM_onehot_state_reg[1]_0 ));
  (* FSM_ENCODED_STATES = "STATE_RESET:000010,STATE_DISABLED:000100,STATE_ENABLED:010000,STATE_SHUTDOWN:100000,STATE_STARTUP:001000,STATE_DO_RESET:000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(s_axi_aclk),
        .CE(state),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(\FSM_onehot_state_reg[1]_0 ));
  (* FSM_ENCODED_STATES = "STATE_RESET:000010,STATE_DISABLED:000100,STATE_ENABLED:010000,STATE_SHUTDOWN:100000,STATE_STARTUP:001000,STATE_DO_RESET:000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(s_axi_aclk),
        .CE(state),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(Q[0]),
        .R(\FSM_onehot_state_reg[1]_0 ));
  (* FSM_ENCODED_STATES = "STATE_RESET:000010,STATE_DISABLED:000100,STATE_ENABLED:010000,STATE_SHUTDOWN:100000,STATE_STARTUP:001000,STATE_DO_RESET:000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(s_axi_aclk),
        .CE(state),
        .D(Q[0]),
        .Q(\FSM_onehot_state_reg_n_0_[4] ),
        .R(\FSM_onehot_state_reg[1]_0 ));
  (* FSM_ENCODED_STATES = "STATE_RESET:000010,STATE_DISABLED:000100,STATE_ENABLED:010000,STATE_SHUTDOWN:100000,STATE_STARTUP:001000,STATE_DO_RESET:000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(s_axi_aclk),
        .CE(state),
        .D(\FSM_onehot_state_reg_n_0_[4] ),
        .Q(Q[1]),
        .R(\FSM_onehot_state_reg[1]_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    do_enable_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(Q[0]),
        .O(do_enable0));
  FDRE #(
    .INIT(1'b0)) 
    do_enable_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(do_enable0),
        .Q(dbg_status[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    do_reset_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(do_reset_0),
        .Q(do_reset),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'h0D)) 
    needs_reset_i_1
       (.I0(ctrl_enable),
        .I1(dbg_status[4]),
        .I2(needs_reset),
        .O(needs_reset_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    needs_reset_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(needs_reset_i_1_n_0),
        .Q(dbg_status[4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \reset_gen[0].reset_async_reg[0] 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(\reset_gen[0].reset_async_reg_n_0_[1] ),
        .PRE(do_reset),
        .Q(reset_sync_chain_0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \reset_gen[0].reset_async_reg[1] 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(\reset_gen[0].reset_async_reg_n_0_[2] ),
        .PRE(do_reset),
        .Q(\reset_gen[0].reset_async_reg_n_0_[1] ));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \reset_gen[0].reset_async_reg[2] 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(\reset_gen[0].reset_async_reg_n_0_[3] ),
        .PRE(do_reset),
        .Q(\reset_gen[0].reset_async_reg_n_0_[2] ));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \reset_gen[0].reset_async_reg[3] 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(do_reset),
        .Q(\reset_gen[0].reset_async_reg_n_0_[3] ));
  FDPE #(
    .INIT(1'b1)) 
    \reset_gen[0].reset_sync_in_reg 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(reset_sync_chain_0),
        .PRE(reset_sync_chain_0),
        .Q(\reset_gen[0].reset_sync_in ));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b1)) 
    \reset_gen[0].reset_sync_reg[0] 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(\reset_gen[0].reset_sync_reg_n_0_[1] ),
        .Q(\reset_gen[0].reset_sync_reg[0]_0 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b1)) 
    \reset_gen[0].reset_sync_reg[1] 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(\reset_gen[0].reset_sync_in ),
        .Q(\reset_gen[0].reset_sync_reg_n_0_[1] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hEA)) 
    \src_beat_counter[3]_i_1 
       (.I0(\reset_gen[0].reset_sync_reg[0]_0 ),
        .I1(m_src_axi_rvalid),
        .I2(m_src_axi_rlast),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'h15)) 
    \state[0]_i_1 
       (.I0(dbg_status[0]),
        .I1(dbg_status[1]),
        .I2(dbg_status[4]),
        .O(\state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'h26)) 
    \state[1]_i_1 
       (.I0(dbg_status[0]),
        .I1(dbg_status[1]),
        .I2(dbg_status[4]),
        .O(\state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[2]_i_1 
       (.I0(dbg_status[1]),
        .I1(dbg_status[0]),
        .I2(dbg_status[2]),
        .O(\state[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(s_axi_aclk),
        .CE(state),
        .D(\state[0]_i_1_n_0 ),
        .Q(dbg_status[0]),
        .R(\FSM_onehot_state_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(s_axi_aclk),
        .CE(state),
        .D(\state[1]_i_1_n_0 ),
        .Q(dbg_status[1]),
        .R(\FSM_onehot_state_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(s_axi_aclk),
        .CE(state),
        .D(\state[2]_i_1_n_0 ),
        .Q(dbg_status[2]),
        .R(\FSM_onehot_state_reg[1]_0 ));
endmodule

(* ORIG_REF_NAME = "axi_dmac_response_manager" *) 
module icyradio_axi_dmac_rf_tx_0_axi_dmac_response_manager
   (up_response_valid,
    measured_burst_length,
    req_eot_reg_0,
    up_eot,
    Q,
    id0,
    \FSM_sequential_state_reg[0]_0 ,
    \zerodeep.axis_data_d_reg[0] ,
    s_axi_aclk,
    m_axis_aclk,
    response_eot,
    up_response_ready,
    dest_response_valid,
    up_clear_tl_reg,
    up_clear_tl);
  output up_response_valid;
  output [0:0]measured_burst_length;
  output req_eot_reg_0;
  output up_eot;
  output [2:0]Q;
  output id0;
  output \FSM_sequential_state_reg[0]_0 ;
  input [0:0]\zerodeep.axis_data_d_reg[0] ;
  input s_axi_aclk;
  input m_axis_aclk;
  input response_eot;
  input up_response_ready;
  input dest_response_valid;
  input [0:0]up_clear_tl_reg;
  input up_clear_tl;

  wire \FSM_sequential_state[0]_i_3_n_0 ;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire \FSM_sequential_state_reg[0]_0 ;
  wire [2:0]Q;
  wire dest_response_valid;
  wire i_dest_response_fifo_n_0;
  wire i_dest_response_fifo_n_4;
  wire i_dest_response_fifo_n_5;
  wire id0;
  wire m_axis_aclk;
  wire [0:0]measured_burst_length;
  wire \measured_burst_length[6]_i_1_n_0 ;
  wire [2:0]nx_state__0;
  wire req_eot_reg_0;
  wire response_dest_ready;
  wire response_dest_ready_i_4_n_0;
  wire response_eot;
  wire response_valid_i_2_n_0;
  wire s_axi_aclk;
  wire [1:0]to_complete_count;
  wire \to_complete_count[0]_i_1_n_0 ;
  wire \to_complete_count[1]_i_1_n_0 ;
  wire [1:0]transfer_id;
  wire transfer_id0;
  wire \transfer_id[0]_i_1_n_0 ;
  wire \transfer_id[1]_i_1_n_0 ;
  wire up_clear_tl;
  wire [0:0]up_clear_tl_reg;
  wire up_eot;
  wire up_response_ready;
  wire up_response_valid;
  wire [0:0]\zerodeep.axis_data_d_reg[0] ;

  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'hFFF1)) 
    \FSM_sequential_state[0]_i_3 
       (.I0(to_complete_count[0]),
        .I1(to_complete_count[1]),
        .I2(transfer_id[1]),
        .I3(transfer_id[0]),
        .O(\FSM_sequential_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFDFFFDFFFD00FF)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(up_response_ready),
        .I1(transfer_id[1]),
        .I2(transfer_id[0]),
        .I3(Q[0]),
        .I4(to_complete_count[1]),
        .I5(to_complete_count[0]),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h55555555FC000000)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(up_response_ready),
        .I1(to_complete_count[1]),
        .I2(to_complete_count[0]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(nx_state__0[2]));
  (* FSM_ENCODED_STATES = "STATE_WRITE_RESPR:010,STATE_ACC:001,STATE_WRITE_ZRCMPL:100,STATE_IDLE:000,STATE_ZERO_COMPL:011" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(nx_state__0[0]),
        .Q(Q[0]),
        .R(\zerodeep.axis_data_d_reg[0] ));
  (* FSM_ENCODED_STATES = "STATE_WRITE_RESPR:010,STATE_ACC:001,STATE_WRITE_ZRCMPL:100,STATE_IDLE:000,STATE_ZERO_COMPL:011" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(nx_state__0[1]),
        .Q(Q[1]),
        .R(\zerodeep.axis_data_d_reg[0] ));
  (* FSM_ENCODED_STATES = "STATE_WRITE_RESPR:010,STATE_ACC:001,STATE_WRITE_ZRCMPL:100,STATE_IDLE:000,STATE_ZERO_COMPL:011" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(nx_state__0[2]),
        .Q(Q[2]),
        .R(\zerodeep.axis_data_d_reg[0] ));
  icyradio_axi_dmac_rf_tx_0_util_axis_fifo__parameterized2 i_dest_response_fifo
       (.D(nx_state__0[1:0]),
        .\FSM_sequential_state_reg[0] (\FSM_sequential_state[0]_i_3_n_0 ),
        .\FSM_sequential_state_reg[1] (i_dest_response_fifo_n_0),
        .\FSM_sequential_state_reg[1]_0 (\FSM_sequential_state[1]_i_2_n_0 ),
        .Q(Q),
        .dest_response_valid(dest_response_valid),
        .id0(id0),
        .m_axis_aclk(m_axis_aclk),
        .req_eot_reg(req_eot_reg_0),
        .response_dest_ready(response_dest_ready),
        .response_dest_ready_reg(response_dest_ready_i_4_n_0),
        .response_eot(response_eot),
        .response_ready_reg(i_dest_response_fifo_n_4),
        .response_valid_reg(response_valid_i_2_n_0),
        .to_complete_count(to_complete_count),
        .transfer_id(transfer_id),
        .up_response_ready(up_response_ready),
        .up_response_valid(up_response_valid),
        .\zerodeep.axis_data_d_reg[0]_0 (i_dest_response_fifo_n_5),
        .\zerodeep.axis_data_d_reg[0]_1 (\zerodeep.axis_data_d_reg[0] ));
  LUT4 #(
    .INIT(16'hB8AA)) 
    \measured_burst_length[6]_i_1 
       (.I0(measured_burst_length),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\measured_burst_length[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \measured_burst_length_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\measured_burst_length[6]_i_1_n_0 ),
        .Q(measured_burst_length),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    req_eot_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_dest_response_fifo_n_5),
        .Q(req_eot_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h1)) 
    response_dest_ready_i_4
       (.I0(to_complete_count[1]),
        .I1(to_complete_count[0]),
        .O(response_dest_ready_i_4_n_0));
  FDSE #(
    .INIT(1'b1)) 
    response_dest_ready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_dest_response_fifo_n_0),
        .Q(response_dest_ready),
        .S(\zerodeep.axis_data_d_reg[0] ));
  LUT6 #(
    .INIT(64'h00000055FC000000)) 
    response_valid_i_2
       (.I0(up_response_ready),
        .I1(to_complete_count[1]),
        .I2(to_complete_count[0]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(response_valid_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    response_valid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i_dest_response_fifo_n_4),
        .Q(up_response_valid),
        .R(\zerodeep.axis_data_d_reg[0] ));
  LUT5 #(
    .INIT(32'hFFF70008)) 
    \to_complete_count[0]_i_1 
       (.I0(up_response_ready),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(to_complete_count[0]),
        .O(\to_complete_count[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFF01000000)) 
    \to_complete_count[1]_i_1 
       (.I0(to_complete_count[0]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(up_response_ready),
        .I5(to_complete_count[1]),
        .O(\to_complete_count[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \to_complete_count_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\to_complete_count[0]_i_1_n_0 ),
        .Q(to_complete_count[0]),
        .R(\zerodeep.axis_data_d_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \to_complete_count_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\to_complete_count[1]_i_1_n_0 ),
        .Q(to_complete_count[1]),
        .R(\zerodeep.axis_data_d_reg[0] ));
  LUT6 #(
    .INIT(64'hFFD3FFDF002C0020)) 
    \transfer_id[0]_i_1 
       (.I0(req_eot_reg_0),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(up_response_ready),
        .I5(transfer_id[0]),
        .O(\transfer_id[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \transfer_id[1]_i_1 
       (.I0(transfer_id[0]),
        .I1(transfer_id0),
        .I2(transfer_id[1]),
        .O(\transfer_id[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02300200)) 
    \transfer_id[1]_i_2 
       (.I0(up_response_ready),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(req_eot_reg_0),
        .O(transfer_id0));
  FDRE #(
    .INIT(1'b0)) 
    \transfer_id_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\transfer_id[0]_i_1_n_0 ),
        .Q(transfer_id[0]),
        .R(\zerodeep.axis_data_d_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \transfer_id_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\transfer_id[1]_i_1_n_0 ),
        .Q(transfer_id[1]),
        .R(\zerodeep.axis_data_d_reg[0] ));
  LUT6 #(
    .INIT(64'hFEFFFFFFFEFF0000)) 
    up_clear_tl_i_1
       (.I0(Q[0]),
        .I1(req_eot_reg_0),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(up_clear_tl_reg),
        .I5(up_clear_tl),
        .O(\FSM_sequential_state_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h8888888088888888)) 
    \up_transfer_id_eot[1]_i_2 
       (.I0(up_response_valid),
        .I1(up_response_ready),
        .I2(Q[0]),
        .I3(req_eot_reg_0),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(up_eot));
endmodule

(* ORIG_REF_NAME = "axi_dmac_transfer" *) 
module icyradio_axi_dmac_rf_tx_0_axi_dmac_transfer
   (m_axis_data,
    dbg_ids0,
    Q,
    dbg_status,
    addr_valid_reg,
    dbg_ids1,
    req_src_ready,
    req_gen_valid,
    req_gen_ready,
    g,
    m_src_axi_araddr,
    up_response_valid,
    measured_burst_length,
    active_reg,
    req_eot,
    m_axis_last,
    up_eot,
    \FSM_sequential_state_reg[2] ,
    m_axis_valid,
    \FSM_sequential_state_reg[0] ,
    m_src_axi_arlen,
    m_axis_aclk,
    m_src_axi_aclk,
    m_src_axi_rdata,
    m_src_axi_rvalid,
    s_axi_aclk,
    up_dma_req_valid,
    m_axis_ready,
    up_response_ready,
    m_src_axi_arready,
    m_src_axi_rlast,
    ctrl_enable,
    ctrl_pause,
    up_dma_x_length,
    E,
    up_clear_tl,
    SR,
    D);
  output [31:0]m_axis_data;
  output [7:0]dbg_ids0;
  output [0:0]Q;
  output [6:0]dbg_status;
  output addr_valid_reg;
  output [11:0]dbg_ids1;
  output req_src_ready;
  output req_gen_valid;
  output req_gen_ready;
  output [3:0]g;
  output [27:0]m_src_axi_araddr;
  output up_response_valid;
  output [0:0]measured_burst_length;
  output active_reg;
  output req_eot;
  output m_axis_last;
  output up_eot;
  output [2:0]\FSM_sequential_state_reg[2] ;
  output m_axis_valid;
  output \FSM_sequential_state_reg[0] ;
  output [3:0]m_src_axi_arlen;
  input m_axis_aclk;
  input m_src_axi_aclk;
  input [63:0]m_src_axi_rdata;
  input m_src_axi_rvalid;
  input s_axi_aclk;
  input up_dma_req_valid;
  input m_axis_ready;
  input up_response_ready;
  input m_src_axi_arready;
  input m_src_axi_rlast;
  input ctrl_enable;
  input ctrl_pause;
  input [21:0]up_dma_x_length;
  input [0:0]E;
  input up_clear_tl;
  input [0:0]SR;
  input [28:0]D;

  wire [28:0]D;
  wire [0:0]E;
  wire \FSM_sequential_state_reg[0] ;
  wire [2:0]\FSM_sequential_state_reg[2] ;
  wire [0:0]Q;
  wire [0:0]SR;
  wire active_reg;
  wire addr_valid_reg;
  wire ctrl_enable;
  wire ctrl_pause;
  wire [7:0]dbg_ids0;
  wire [11:0]dbg_ids1;
  wire [6:0]dbg_status;
  wire [3:0]g;
  wire i_request_arb_n_100;
  wire i_request_arb_n_101;
  wire i_reset_manager_n_5;
  wire i_reset_manager_n_6;
  wire \i_store_and_forward/src_beat_counter0 ;
  wire m_axis_aclk;
  wire [31:0]m_axis_data;
  wire m_axis_last;
  wire m_axis_ready;
  wire m_axis_valid;
  wire m_src_axi_aclk;
  wire [27:0]m_src_axi_araddr;
  wire [3:0]m_src_axi_arlen;
  wire m_src_axi_arready;
  wire [63:0]m_src_axi_rdata;
  wire m_src_axi_rlast;
  wire m_src_axi_rvalid;
  wire [0:0]measured_burst_length;
  wire req_eot;
  wire req_gen_ready;
  wire req_gen_valid;
  wire req_src_ready;
  wire s_axi_aclk;
  wire up_clear_tl;
  wire up_dma_req_valid;
  wire [21:0]up_dma_x_length;
  wire up_eot;
  wire up_response_ready;
  wire up_response_valid;

  icyradio_axi_dmac_rf_tx_0_dmac_request_arb i_request_arb
       (.ADDRC(dbg_ids1[11:8]),
        .D(D),
        .E(req_src_ready),
        .\FSM_onehot_state[5]_i_2 ({i_reset_manager_n_5,i_reset_manager_n_6}),
        .\FSM_sequential_state_reg[0] (\FSM_sequential_state_reg[0] ),
        .\FSM_sequential_state_reg[2] (\FSM_sequential_state_reg[2] ),
        .Q(dbg_ids0[3:0]),
        .SR(\i_store_and_forward/src_beat_counter0 ),
        .active_reg(active_reg),
        .addr_valid_reg(addr_valid_reg),
        .dest_id_reduced_msb_next_reg(Q),
        .do_enable_reg(req_gen_valid),
        .enabled_reg(dbg_status[3]),
        .enabled_reg_0(dbg_status[4]),
        .enabled_reg_1(i_request_arb_n_100),
        .enabled_reg_2(i_request_arb_n_101),
        .g(g),
        .id(dbg_ids1[7:4]),
        .\id_reg[3] (dbg_ids1[3:0]),
        .m_axis_aclk(m_axis_aclk),
        .m_axis_data(m_axis_data),
        .m_axis_last(m_axis_last),
        .m_axis_ready(m_axis_ready),
        .m_axis_valid(m_axis_valid),
        .m_src_axi_aclk(m_src_axi_aclk),
        .m_src_axi_araddr(m_src_axi_araddr),
        .m_src_axi_arlen(m_src_axi_arlen),
        .m_src_axi_arready(m_src_axi_arready),
        .m_src_axi_rdata(m_src_axi_rdata),
        .m_src_axi_rlast(m_src_axi_rlast),
        .m_src_axi_rvalid(m_src_axi_rvalid),
        .measured_burst_length(measured_burst_length),
        .req_eot_reg(req_eot),
        .req_gen_ready(req_gen_ready),
        .response_id(dbg_ids0[7:4]),
        .s_axi_aclk(s_axi_aclk),
        .up_clear_tl(up_clear_tl),
        .up_clear_tl_reg(E),
        .up_dma_req_valid(up_dma_req_valid),
        .up_dma_x_length(up_dma_x_length),
        .up_eot(up_eot),
        .up_response_ready(up_response_ready),
        .up_response_valid(up_response_valid),
        .\zerodeep.axis_valid_d_reg (dbg_status[5]));
  icyradio_axi_dmac_rf_tx_0_axi_dmac_reset_manager i_reset_manager
       (.\FSM_onehot_state_reg[1]_0 (SR),
        .Q({i_reset_manager_n_5,i_reset_manager_n_6}),
        .SR(\i_store_and_forward/src_beat_counter0 ),
        .ctrl_enable(ctrl_enable),
        .ctrl_pause(ctrl_pause),
        .dbg_status({dbg_status[6:5],dbg_status[2:0]}),
        .m_axis_aclk(m_axis_aclk),
        .m_src_axi_rlast(m_src_axi_rlast),
        .m_src_axi_rvalid(m_src_axi_rvalid),
        .\reset_gen[0].reset_sync_reg[0]_0 (Q),
        .s_axi_aclk(s_axi_aclk),
        .\state_reg[0]_0 (i_request_arb_n_101),
        .\state_reg[0]_1 (i_request_arb_n_100));
endmodule

(* ORIG_REF_NAME = "dmac_address_generator" *) 
module icyradio_axi_dmac_rf_tx_0_dmac_address_generator
   (addr_valid_reg_0,
    ADDRD,
    m_src_axi_araddr,
    bl_ready_ag,
    req_ready_ag,
    enabled_reg_0,
    m_src_axi_arlen,
    m_src_axi_aclk,
    req_ready_reg_0,
    src_address_eot,
    m_src_axi_arready,
    enabled_reg_1,
    Q,
    ADDRC,
    \address_reg[27]_0 ,
    enabled_reg_2,
    bl_ready_reg_0,
    acked,
    E);
  output addr_valid_reg_0;
  output [3:0]ADDRD;
  output [27:0]m_src_axi_araddr;
  output bl_ready_ag;
  output req_ready_ag;
  output enabled_reg_0;
  output [3:0]m_src_axi_arlen;
  input m_src_axi_aclk;
  input [0:0]req_ready_reg_0;
  input src_address_eot;
  input m_src_axi_arready;
  input enabled_reg_1;
  input [3:0]Q;
  input [3:0]ADDRC;
  input [31:0]\address_reg[27]_0 ;
  input enabled_reg_2;
  input bl_ready_reg_0;
  input [1:0]acked;
  input [0:0]E;

  wire [3:0]ADDRC;
  wire [3:0]ADDRD;
  wire [0:0]E;
  wire [3:0]Q;
  wire [1:0]acked;
  wire addr_valid_d1;
  wire addr_valid_i_1_n_0;
  wire addr_valid_i_2_n_0;
  wire addr_valid_i_3_n_0;
  wire addr_valid_i_4_n_0;
  wire addr_valid_reg_0;
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
  wire \address[27]_i_1_n_0 ;
  wire \address[27]_i_3_n_0 ;
  wire \address[2]_i_1_n_0 ;
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
  wire [31:0]\address_reg[27]_0 ;
  wire \address_reg[27]_i_2_n_7 ;
  wire \address_reg[6]_i_1_n_0 ;
  wire \address_reg[6]_i_1_n_1 ;
  wire \address_reg[6]_i_1_n_2 ;
  wire \address_reg[6]_i_1_n_3 ;
  wire \address_reg[6]_i_1_n_4 ;
  wire \address_reg[6]_i_1_n_5 ;
  wire \address_reg[6]_i_1_n_6 ;
  wire \address_reg[6]_i_1_n_7 ;
  wire bl_ready_ag;
  wire bl_ready_i_1_n_0;
  wire bl_ready_reg_0;
  wire enabled_i_1__0_n_0;
  wire enabled_i_2__0_n_0;
  wire enabled_i_3_n_0;
  wire enabled_reg_0;
  wire enabled_reg_1;
  wire enabled_reg_2;
  wire id0;
  wire \id[0]_i_1__2_n_0 ;
  wire \id[3]_i_2__0_n_0 ;
  wire [2:1]inc_id_return;
  wire last;
  wire [3:0]last_burst_len;
  wire \length[3]_i_1_n_0 ;
  wire m_src_axi_aclk;
  wire [27:0]m_src_axi_araddr;
  wire [3:0]m_src_axi_arlen;
  wire m_src_axi_arready;
  wire p_0_in0;
  wire p_1_in;
  wire req_ready_ag;
  wire req_ready_i_1__0_n_0;
  wire [0:0]req_ready_reg_0;
  wire src_address_eot;
  wire [3:0]\NLW_address_reg[27]_i_2_CO_UNCONNECTED ;
  wire [3:1]\NLW_address_reg[27]_i_2_O_UNCONNECTED ;

  FDRE addr_valid_d1_reg
       (.C(m_src_axi_aclk),
        .CE(1'b1),
        .D(addr_valid_reg_0),
        .Q(addr_valid_d1),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000DDDD0F00)) 
    addr_valid_i_1
       (.I0(m_src_axi_arready),
        .I1(req_ready_ag),
        .I2(addr_valid_i_2_n_0),
        .I3(addr_valid_i_3_n_0),
        .I4(addr_valid_reg_0),
        .I5(req_ready_reg_0),
        .O(addr_valid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    addr_valid_i_2
       (.I0(req_ready_ag),
        .I1(src_address_eot),
        .I2(bl_ready_ag),
        .O(addr_valid_i_2_n_0));
  LUT6 #(
    .INIT(64'h8AA8AAAAAAAA8AA8)) 
    addr_valid_i_3
       (.I0(enabled_reg_1),
        .I1(addr_valid_i_4_n_0),
        .I2(Q[0]),
        .I3(ADDRD[0]),
        .I4(ADDRD[3]),
        .I5(Q[3]),
        .O(addr_valid_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'h6FF6)) 
    addr_valid_i_4
       (.I0(Q[1]),
        .I1(ADDRD[1]),
        .I2(ADDRD[2]),
        .I3(Q[2]),
        .O(addr_valid_i_4_n_0));
  FDRE addr_valid_reg
       (.C(m_src_axi_aclk),
        .CE(1'b1),
        .D(addr_valid_i_1_n_0),
        .Q(addr_valid_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \address[0]_i_1 
       (.I0(\address_reg[27]_0 [4]),
        .I1(req_ready_ag),
        .I2(m_src_axi_araddr[0]),
        .O(\address[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[10]_i_2 
       (.I0(\address_reg[27]_0 [14]),
        .I1(req_ready_ag),
        .I2(m_src_axi_araddr[10]),
        .O(\address[10]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[10]_i_3 
       (.I0(\address_reg[27]_0 [13]),
        .I1(req_ready_ag),
        .I2(m_src_axi_araddr[9]),
        .O(\address[10]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[10]_i_4 
       (.I0(\address_reg[27]_0 [12]),
        .I1(req_ready_ag),
        .I2(m_src_axi_araddr[8]),
        .O(\address[10]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[10]_i_5 
       (.I0(\address_reg[27]_0 [11]),
        .I1(req_ready_ag),
        .I2(m_src_axi_araddr[7]),
        .O(\address[10]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[14]_i_2 
       (.I0(\address_reg[27]_0 [18]),
        .I1(req_ready_ag),
        .I2(m_src_axi_araddr[14]),
        .O(\address[14]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[14]_i_3 
       (.I0(\address_reg[27]_0 [17]),
        .I1(req_ready_ag),
        .I2(m_src_axi_araddr[13]),
        .O(\address[14]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[14]_i_4 
       (.I0(\address_reg[27]_0 [16]),
        .I1(req_ready_ag),
        .I2(m_src_axi_araddr[12]),
        .O(\address[14]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[14]_i_5 
       (.I0(\address_reg[27]_0 [15]),
        .I1(req_ready_ag),
        .I2(m_src_axi_araddr[11]),
        .O(\address[14]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[18]_i_2 
       (.I0(\address_reg[27]_0 [22]),
        .I1(req_ready_ag),
        .I2(m_src_axi_araddr[18]),
        .O(\address[18]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[18]_i_3 
       (.I0(\address_reg[27]_0 [21]),
        .I1(req_ready_ag),
        .I2(m_src_axi_araddr[17]),
        .O(\address[18]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[18]_i_4 
       (.I0(\address_reg[27]_0 [20]),
        .I1(req_ready_ag),
        .I2(m_src_axi_araddr[16]),
        .O(\address[18]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[18]_i_5 
       (.I0(\address_reg[27]_0 [19]),
        .I1(req_ready_ag),
        .I2(m_src_axi_araddr[15]),
        .O(\address[18]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \address[1]_i_1 
       (.I0(\address_reg[27]_0 [5]),
        .I1(req_ready_ag),
        .I2(m_src_axi_araddr[1]),
        .O(\address[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[22]_i_2 
       (.I0(\address_reg[27]_0 [26]),
        .I1(req_ready_ag),
        .I2(m_src_axi_araddr[22]),
        .O(\address[22]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[22]_i_3 
       (.I0(\address_reg[27]_0 [25]),
        .I1(req_ready_ag),
        .I2(m_src_axi_araddr[21]),
        .O(\address[22]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[22]_i_4 
       (.I0(\address_reg[27]_0 [24]),
        .I1(req_ready_ag),
        .I2(m_src_axi_araddr[20]),
        .O(\address[22]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[22]_i_5 
       (.I0(\address_reg[27]_0 [23]),
        .I1(req_ready_ag),
        .I2(m_src_axi_araddr[19]),
        .O(\address[22]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[26]_i_2 
       (.I0(\address_reg[27]_0 [30]),
        .I1(req_ready_ag),
        .I2(m_src_axi_araddr[26]),
        .O(\address[26]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[26]_i_3 
       (.I0(\address_reg[27]_0 [29]),
        .I1(req_ready_ag),
        .I2(m_src_axi_araddr[25]),
        .O(\address[26]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[26]_i_4 
       (.I0(\address_reg[27]_0 [28]),
        .I1(req_ready_ag),
        .I2(m_src_axi_araddr[24]),
        .O(\address[26]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[26]_i_5 
       (.I0(\address_reg[27]_0 [27]),
        .I1(req_ready_ag),
        .I2(m_src_axi_araddr[23]),
        .O(\address[26]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \address[27]_i_1 
       (.I0(req_ready_ag),
        .I1(m_src_axi_arready),
        .I2(addr_valid_reg_0),
        .O(\address[27]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[27]_i_3 
       (.I0(\address_reg[27]_0 [31]),
        .I1(req_ready_ag),
        .I2(m_src_axi_araddr[27]),
        .O(\address[27]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \address[2]_i_1 
       (.I0(\address_reg[27]_0 [6]),
        .I1(req_ready_ag),
        .I2(m_src_axi_araddr[2]),
        .O(\address[2]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \address[6]_i_2 
       (.I0(req_ready_ag),
        .O(p_1_in));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[6]_i_3 
       (.I0(\address_reg[27]_0 [10]),
        .I1(req_ready_ag),
        .I2(m_src_axi_araddr[6]),
        .O(\address[6]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[6]_i_4 
       (.I0(\address_reg[27]_0 [9]),
        .I1(req_ready_ag),
        .I2(m_src_axi_araddr[5]),
        .O(\address[6]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \address[6]_i_5 
       (.I0(m_src_axi_araddr[4]),
        .I1(\address_reg[27]_0 [8]),
        .I2(req_ready_ag),
        .O(\address[6]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \address[6]_i_6 
       (.I0(\address_reg[27]_0 [7]),
        .I1(req_ready_ag),
        .I2(m_src_axi_araddr[3]),
        .O(\address[6]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[0] 
       (.C(m_src_axi_aclk),
        .CE(\address[27]_i_1_n_0 ),
        .D(\address[0]_i_1_n_0 ),
        .Q(m_src_axi_araddr[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[10] 
       (.C(m_src_axi_aclk),
        .CE(\address[27]_i_1_n_0 ),
        .D(\address_reg[10]_i_1_n_4 ),
        .Q(m_src_axi_araddr[10]),
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
       (.C(m_src_axi_aclk),
        .CE(\address[27]_i_1_n_0 ),
        .D(\address_reg[14]_i_1_n_7 ),
        .Q(m_src_axi_araddr[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[12] 
       (.C(m_src_axi_aclk),
        .CE(\address[27]_i_1_n_0 ),
        .D(\address_reg[14]_i_1_n_6 ),
        .Q(m_src_axi_araddr[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[13] 
       (.C(m_src_axi_aclk),
        .CE(\address[27]_i_1_n_0 ),
        .D(\address_reg[14]_i_1_n_5 ),
        .Q(m_src_axi_araddr[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[14] 
       (.C(m_src_axi_aclk),
        .CE(\address[27]_i_1_n_0 ),
        .D(\address_reg[14]_i_1_n_4 ),
        .Q(m_src_axi_araddr[14]),
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
       (.C(m_src_axi_aclk),
        .CE(\address[27]_i_1_n_0 ),
        .D(\address_reg[18]_i_1_n_7 ),
        .Q(m_src_axi_araddr[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[16] 
       (.C(m_src_axi_aclk),
        .CE(\address[27]_i_1_n_0 ),
        .D(\address_reg[18]_i_1_n_6 ),
        .Q(m_src_axi_araddr[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[17] 
       (.C(m_src_axi_aclk),
        .CE(\address[27]_i_1_n_0 ),
        .D(\address_reg[18]_i_1_n_5 ),
        .Q(m_src_axi_araddr[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[18] 
       (.C(m_src_axi_aclk),
        .CE(\address[27]_i_1_n_0 ),
        .D(\address_reg[18]_i_1_n_4 ),
        .Q(m_src_axi_araddr[18]),
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
       (.C(m_src_axi_aclk),
        .CE(\address[27]_i_1_n_0 ),
        .D(\address_reg[22]_i_1_n_7 ),
        .Q(m_src_axi_araddr[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[1] 
       (.C(m_src_axi_aclk),
        .CE(\address[27]_i_1_n_0 ),
        .D(\address[1]_i_1_n_0 ),
        .Q(m_src_axi_araddr[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[20] 
       (.C(m_src_axi_aclk),
        .CE(\address[27]_i_1_n_0 ),
        .D(\address_reg[22]_i_1_n_6 ),
        .Q(m_src_axi_araddr[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[21] 
       (.C(m_src_axi_aclk),
        .CE(\address[27]_i_1_n_0 ),
        .D(\address_reg[22]_i_1_n_5 ),
        .Q(m_src_axi_araddr[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[22] 
       (.C(m_src_axi_aclk),
        .CE(\address[27]_i_1_n_0 ),
        .D(\address_reg[22]_i_1_n_4 ),
        .Q(m_src_axi_araddr[22]),
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
       (.C(m_src_axi_aclk),
        .CE(\address[27]_i_1_n_0 ),
        .D(\address_reg[26]_i_1_n_7 ),
        .Q(m_src_axi_araddr[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[24] 
       (.C(m_src_axi_aclk),
        .CE(\address[27]_i_1_n_0 ),
        .D(\address_reg[26]_i_1_n_6 ),
        .Q(m_src_axi_araddr[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[25] 
       (.C(m_src_axi_aclk),
        .CE(\address[27]_i_1_n_0 ),
        .D(\address_reg[26]_i_1_n_5 ),
        .Q(m_src_axi_araddr[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[26] 
       (.C(m_src_axi_aclk),
        .CE(\address[27]_i_1_n_0 ),
        .D(\address_reg[26]_i_1_n_4 ),
        .Q(m_src_axi_araddr[26]),
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
       (.C(m_src_axi_aclk),
        .CE(\address[27]_i_1_n_0 ),
        .D(\address_reg[27]_i_2_n_7 ),
        .Q(m_src_axi_araddr[27]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \address_reg[27]_i_2 
       (.CI(\address_reg[26]_i_1_n_0 ),
        .CO(\NLW_address_reg[27]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_address_reg[27]_i_2_O_UNCONNECTED [3:1],\address_reg[27]_i_2_n_7 }),
        .S({1'b0,1'b0,1'b0,\address[27]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[2] 
       (.C(m_src_axi_aclk),
        .CE(\address[27]_i_1_n_0 ),
        .D(\address[2]_i_1_n_0 ),
        .Q(m_src_axi_araddr[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[3] 
       (.C(m_src_axi_aclk),
        .CE(\address[27]_i_1_n_0 ),
        .D(\address_reg[6]_i_1_n_7 ),
        .Q(m_src_axi_araddr[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[4] 
       (.C(m_src_axi_aclk),
        .CE(\address[27]_i_1_n_0 ),
        .D(\address_reg[6]_i_1_n_6 ),
        .Q(m_src_axi_araddr[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[5] 
       (.C(m_src_axi_aclk),
        .CE(\address[27]_i_1_n_0 ),
        .D(\address_reg[6]_i_1_n_5 ),
        .Q(m_src_axi_araddr[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[6] 
       (.C(m_src_axi_aclk),
        .CE(\address[27]_i_1_n_0 ),
        .D(\address_reg[6]_i_1_n_4 ),
        .Q(m_src_axi_araddr[6]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \address_reg[6]_i_1 
       (.CI(1'b0),
        .CO({\address_reg[6]_i_1_n_0 ,\address_reg[6]_i_1_n_1 ,\address_reg[6]_i_1_n_2 ,\address_reg[6]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,p_1_in,1'b0}),
        .O({\address_reg[6]_i_1_n_4 ,\address_reg[6]_i_1_n_5 ,\address_reg[6]_i_1_n_6 ,\address_reg[6]_i_1_n_7 }),
        .S({\address[6]_i_3_n_0 ,\address[6]_i_4_n_0 ,\address[6]_i_5_n_0 ,\address[6]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[7] 
       (.C(m_src_axi_aclk),
        .CE(\address[27]_i_1_n_0 ),
        .D(\address_reg[10]_i_1_n_7 ),
        .Q(m_src_axi_araddr[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[8] 
       (.C(m_src_axi_aclk),
        .CE(\address[27]_i_1_n_0 ),
        .D(\address_reg[10]_i_1_n_6 ),
        .Q(m_src_axi_araddr[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[9] 
       (.C(m_src_axi_aclk),
        .CE(\address[27]_i_1_n_0 ),
        .D(\address_reg[10]_i_1_n_5 ),
        .Q(m_src_axi_araddr[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hD0DDD0D0D0D0D0D0)) 
    bl_ready_i_1
       (.I0(bl_ready_reg_0),
        .I1(acked[1]),
        .I2(bl_ready_ag),
        .I3(addr_valid_reg_0),
        .I4(src_address_eot),
        .I5(addr_valid_i_3_n_0),
        .O(bl_ready_i_1_n_0));
  FDSE bl_ready_reg
       (.C(m_src_axi_aclk),
        .CE(1'b1),
        .D(bl_ready_i_1_n_0),
        .Q(bl_ready_ag),
        .S(req_ready_reg_0));
  LUT3 #(
    .INIT(8'hEA)) 
    enabled_i_1__0
       (.I0(enabled_reg_1),
        .I1(addr_valid_reg_0),
        .I2(address_enabled),
        .O(enabled_i_1__0_n_0));
  LUT4 #(
    .INIT(16'hEFAA)) 
    enabled_i_1__1
       (.I0(address_enabled),
        .I1(enabled_i_2__0_n_0),
        .I2(enabled_i_3_n_0),
        .I3(enabled_reg_2),
        .O(enabled_reg_0));
  LUT4 #(
    .INIT(16'h6FF6)) 
    enabled_i_2__0
       (.I0(ADDRC[3]),
        .I1(ADDRD[3]),
        .I2(ADDRC[0]),
        .I3(ADDRD[0]),
        .O(enabled_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    enabled_i_3
       (.I0(ADDRC[2]),
        .I1(ADDRD[2]),
        .I2(ADDRC[1]),
        .I3(ADDRD[1]),
        .O(enabled_i_3_n_0));
  FDRE enabled_reg
       (.C(m_src_axi_aclk),
        .CE(1'b1),
        .D(enabled_i_1__0_n_0),
        .Q(address_enabled),
        .R(req_ready_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \id[0]_i_1__2 
       (.I0(ADDRD[1]),
        .I1(ADDRD[2]),
        .I2(ADDRD[3]),
        .O(\id[0]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hD782)) 
    \id[1]_i_1__1 
       (.I0(ADDRD[0]),
        .I1(ADDRD[3]),
        .I2(ADDRD[2]),
        .I3(ADDRD[1]),
        .O(inc_id_return[1]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'hCC4E)) 
    \id[2]_i_1__2 
       (.I0(ADDRD[1]),
        .I1(ADDRD[2]),
        .I2(ADDRD[3]),
        .I3(ADDRD[0]),
        .O(inc_id_return[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \id[3]_i_1 
       (.I0(addr_valid_reg_0),
        .I1(addr_valid_d1),
        .O(id0));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'hCCD8)) 
    \id[3]_i_2__0 
       (.I0(ADDRD[0]),
        .I1(ADDRD[3]),
        .I2(ADDRD[2]),
        .I3(ADDRD[1]),
        .O(\id[3]_i_2__0_n_0 ));
  FDRE \id_reg[0] 
       (.C(m_src_axi_aclk),
        .CE(id0),
        .D(\id[0]_i_1__2_n_0 ),
        .Q(ADDRD[0]),
        .R(req_ready_reg_0));
  FDRE \id_reg[1] 
       (.C(m_src_axi_aclk),
        .CE(id0),
        .D(inc_id_return[1]),
        .Q(ADDRD[1]),
        .R(req_ready_reg_0));
  FDRE \id_reg[2] 
       (.C(m_src_axi_aclk),
        .CE(id0),
        .D(inc_id_return[2]),
        .Q(ADDRD[2]),
        .R(req_ready_reg_0));
  FDRE \id_reg[3] 
       (.C(m_src_axi_aclk),
        .CE(id0),
        .D(\id[3]_i_2__0_n_0 ),
        .Q(ADDRD[3]),
        .R(req_ready_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \last_burst_len_reg[0] 
       (.C(m_src_axi_aclk),
        .CE(E),
        .D(\address_reg[27]_0 [0]),
        .Q(last_burst_len[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_burst_len_reg[1] 
       (.C(m_src_axi_aclk),
        .CE(E),
        .D(\address_reg[27]_0 [1]),
        .Q(last_burst_len[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_burst_len_reg[2] 
       (.C(m_src_axi_aclk),
        .CE(E),
        .D(\address_reg[27]_0 [2]),
        .Q(last_burst_len[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \last_burst_len_reg[3] 
       (.C(m_src_axi_aclk),
        .CE(E),
        .D(\address_reg[27]_0 [3]),
        .Q(last_burst_len[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    last_reg
       (.C(m_src_axi_aclk),
        .CE(p_0_in0),
        .D(src_address_eot),
        .Q(last),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    \length[3]_i_1 
       (.I0(addr_valid_reg_0),
        .I1(src_address_eot),
        .O(\length[3]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \length[3]_i_2 
       (.I0(addr_valid_reg_0),
        .O(p_0_in0));
  FDSE #(
    .INIT(1'b0)) 
    \length_reg[0] 
       (.C(m_src_axi_aclk),
        .CE(p_0_in0),
        .D(last_burst_len[0]),
        .Q(m_src_axi_arlen[0]),
        .S(\length[3]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \length_reg[1] 
       (.C(m_src_axi_aclk),
        .CE(p_0_in0),
        .D(last_burst_len[1]),
        .Q(m_src_axi_arlen[1]),
        .S(\length[3]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \length_reg[2] 
       (.C(m_src_axi_aclk),
        .CE(p_0_in0),
        .D(last_burst_len[2]),
        .Q(m_src_axi_arlen[2]),
        .S(\length[3]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \length_reg[3] 
       (.C(m_src_axi_aclk),
        .CE(p_0_in0),
        .D(last_burst_len[3]),
        .Q(m_src_axi_arlen[3]),
        .S(\length[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDDD0DD00DD00DD00)) 
    req_ready_i_1__0
       (.I0(bl_ready_reg_0),
        .I1(acked[0]),
        .I2(last),
        .I3(req_ready_ag),
        .I4(m_src_axi_arready),
        .I5(addr_valid_reg_0),
        .O(req_ready_i_1__0_n_0));
  FDSE req_ready_reg
       (.C(m_src_axi_aclk),
        .CE(1'b1),
        .D(req_ready_i_1__0_n_0),
        .Q(req_ready_ag),
        .S(req_ready_reg_0));
endmodule

(* ORIG_REF_NAME = "dmac_dest_axi_stream" *) 
module icyradio_axi_dmac_rf_tx_0_dmac_dest_axi_stream
   (\response_id_reg[3] ,
    \response_id_reg[2] ,
    \response_id_reg[1] ,
    \response_id_reg[0] ,
    \id_reg[0]_0 ,
    \id_reg[1]_0 ,
    \id_reg[2]_0 ,
    \id_reg[3]_0 ,
    enabled_reg,
    active_reg_0,
    m_axis_last,
    src_dest_ready_hs,
    active_reg_1,
    dest_response_valid,
    m_axis_valid,
    enabled_reg_0,
    enabled_reg_1,
    src_req_xlast_cur_reg,
    src_dest_valid_hs_reg,
    enabled_reg_2,
    id0,
    m_axis_aclk,
    p_1_in,
    active_reg_2,
    data_eot,
    dest_fifo_last,
    m_axis_ready,
    dest_req_valid,
    dest_fifo_valid,
    \FSM_onehot_state[5]_i_2 ,
    \FSM_onehot_state[5]_i_2_0 ,
    data_enabled_reg_0,
    req_xlast_d_reg_0,
    s_axis_data__0,
    src_dest_valid_hs);
  output \response_id_reg[3] ;
  output \response_id_reg[2] ;
  output \response_id_reg[1] ;
  output \response_id_reg[0] ;
  output \id_reg[0]_0 ;
  output \id_reg[1]_0 ;
  output \id_reg[2]_0 ;
  output \id_reg[3]_0 ;
  output enabled_reg;
  output active_reg_0;
  output m_axis_last;
  output src_dest_ready_hs;
  output active_reg_1;
  output dest_response_valid;
  output m_axis_valid;
  output enabled_reg_0;
  output enabled_reg_1;
  output src_req_xlast_cur_reg;
  output src_dest_valid_hs_reg;
  input [0:0]enabled_reg_2;
  input id0;
  input m_axis_aclk;
  input p_1_in;
  input active_reg_2;
  input data_eot;
  input dest_fifo_last;
  input m_axis_ready;
  input dest_req_valid;
  input dest_fifo_valid;
  input [1:0]\FSM_onehot_state[5]_i_2 ;
  input \FSM_onehot_state[5]_i_2_0 ;
  input data_enabled_reg_0;
  input req_xlast_d_reg_0;
  input [0:0]s_axis_data__0;
  input src_dest_valid_hs;

  wire [1:0]\FSM_onehot_state[5]_i_2 ;
  wire \FSM_onehot_state[5]_i_2_0 ;
  wire active_reg_0;
  wire active_reg_1;
  wire active_reg_2;
  wire data_enabled;
  wire data_enabled_i_1_n_0;
  wire data_enabled_reg_0;
  wire data_eot;
  wire dest_fifo_last;
  wire dest_fifo_valid;
  wire dest_req_valid;
  wire dest_response_valid;
  wire enabled_reg;
  wire enabled_reg_0;
  wire enabled_reg_1;
  wire [0:0]enabled_reg_2;
  wire id0;
  wire \id[3]_i_1__2_n_0 ;
  wire \id_reg[0]_0 ;
  wire \id_reg[1]_0 ;
  wire \id_reg[2]_0 ;
  wire \id_reg[3]_0 ;
  wire [2:0]inc_id_return;
  wire m_axis_aclk;
  wire m_axis_last;
  wire m_axis_ready;
  wire m_axis_valid;
  wire p_1_in;
  wire req_xlast_d;
  wire req_xlast_d_i_1_n_0;
  wire req_xlast_d_reg_0;
  wire \response_id_reg[0] ;
  wire \response_id_reg[1] ;
  wire \response_id_reg[2] ;
  wire \response_id_reg[3] ;
  wire [0:0]s_axis_data__0;
  wire src_dest_ready_hs;
  wire src_dest_valid_hs;
  wire src_dest_valid_hs_reg;
  wire src_req_xlast_cur_reg;

  FDRE #(
    .INIT(1'b0)) 
    active_reg
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(active_reg_2),
        .Q(active_reg_0),
        .R(enabled_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'hF0F8F0F0)) 
    data_enabled_i_1
       (.I0(dest_fifo_valid),
        .I1(active_reg_0),
        .I2(data_enabled_reg_0),
        .I3(m_axis_ready),
        .I4(data_enabled),
        .O(data_enabled_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    data_enabled_reg
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(data_enabled_i_1_n_0),
        .Q(data_enabled),
        .R(enabled_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    dest_mem_data_last_i_2
       (.I0(active_reg_0),
        .I1(m_axis_ready),
        .O(active_reg_1));
  icyradio_axi_dmac_rf_tx_0_dmac_response_generator i_response_generator
       (.\FSM_onehot_state[5]_i_2 (\FSM_onehot_state[5]_i_2 ),
        .\FSM_onehot_state[5]_i_2_0 (\FSM_onehot_state[5]_i_2_0 ),
        .\FSM_onehot_state[5]_i_2_1 (data_enabled_reg_0),
        .data_enabled(data_enabled),
        .dest_response_valid(dest_response_valid),
        .enabled_reg_0(enabled_reg),
        .enabled_reg_1(enabled_reg_0),
        .enabled_reg_2(enabled_reg_1),
        .enabled_reg_3(enabled_reg_2),
        .enabled_reg_4(\id_reg[2]_0 ),
        .enabled_reg_5(\id_reg[3]_0 ),
        .id0(id0),
        .m_axis_aclk(m_axis_aclk),
        .\response_id[3]_i_3_0 (\id_reg[1]_0 ),
        .\response_id[3]_i_3_1 (\id_reg[0]_0 ),
        .\response_id_reg[0]_0 (\response_id_reg[0] ),
        .\response_id_reg[1]_0 (\response_id_reg[1] ),
        .\response_id_reg[2]_0 (\response_id_reg[2] ),
        .\response_id_reg[3]_0 (\response_id_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \id[0]_i_2 
       (.I0(\id_reg[1]_0 ),
        .I1(\id_reg[2]_0 ),
        .I2(\id_reg[3]_0 ),
        .O(inc_id_return[0]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hD782)) 
    \id[1]_i_1__0 
       (.I0(\id_reg[0]_0 ),
        .I1(\id_reg[3]_0 ),
        .I2(\id_reg[2]_0 ),
        .I3(\id_reg[1]_0 ),
        .O(inc_id_return[1]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hCC4E)) 
    \id[2]_i_1__1 
       (.I0(\id_reg[1]_0 ),
        .I1(\id_reg[2]_0 ),
        .I2(\id_reg[3]_0 ),
        .I3(\id_reg[0]_0 ),
        .O(inc_id_return[2]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hCCD8)) 
    \id[3]_i_1__2 
       (.I0(\id_reg[0]_0 ),
        .I1(\id_reg[3]_0 ),
        .I2(\id_reg[2]_0 ),
        .I3(\id_reg[1]_0 ),
        .O(\id[3]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \id_reg[0] 
       (.C(m_axis_aclk),
        .CE(p_1_in),
        .D(inc_id_return[0]),
        .Q(\id_reg[0]_0 ),
        .R(enabled_reg_2));
  FDRE #(
    .INIT(1'b0)) 
    \id_reg[1] 
       (.C(m_axis_aclk),
        .CE(p_1_in),
        .D(inc_id_return[1]),
        .Q(\id_reg[1]_0 ),
        .R(enabled_reg_2));
  FDRE #(
    .INIT(1'b0)) 
    \id_reg[2] 
       (.C(m_axis_aclk),
        .CE(p_1_in),
        .D(inc_id_return[2]),
        .Q(\id_reg[2]_0 ),
        .R(enabled_reg_2));
  FDRE #(
    .INIT(1'b0)) 
    \id_reg[3] 
       (.C(m_axis_aclk),
        .CE(p_1_in),
        .D(\id[3]_i_1__2_n_0 ),
        .Q(\id_reg[3]_0 ),
        .R(enabled_reg_2));
  LUT3 #(
    .INIT(8'h80)) 
    m_axis_last_INST_0
       (.I0(req_xlast_d),
        .I1(data_eot),
        .I2(dest_fifo_last),
        .O(m_axis_last));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    m_axis_valid_INST_0
       (.I0(active_reg_0),
        .I1(dest_fifo_valid),
        .O(m_axis_valid));
  LUT6 #(
    .INIT(64'hBFFFAAAA8000AAAA)) 
    req_xlast_d_i_1
       (.I0(req_xlast_d_reg_0),
        .I1(dest_fifo_last),
        .I2(data_eot),
        .I3(m_axis_ready),
        .I4(active_reg_0),
        .I5(req_xlast_d),
        .O(req_xlast_d_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    req_xlast_d_reg
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(req_xlast_d_i_1_n_0),
        .Q(req_xlast_d),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \zerodeep.axis_data_d[0]_i_1__0 
       (.I0(s_axis_data__0),
        .I1(src_dest_ready_hs),
        .I2(req_xlast_d_reg_0),
        .O(src_req_xlast_cur_reg));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'hD555FFFF)) 
    \zerodeep.axis_data_d[36]_i_2 
       (.I0(active_reg_0),
        .I1(m_axis_ready),
        .I2(data_eot),
        .I3(dest_fifo_last),
        .I4(dest_req_valid),
        .O(src_dest_ready_hs));
  LUT6 #(
    .INIT(64'hAEEEEEEEAAAAAAAA)) 
    \zerodeep.axis_valid_d_i_1__0 
       (.I0(src_dest_valid_hs),
        .I1(active_reg_0),
        .I2(m_axis_ready),
        .I3(data_eot),
        .I4(dest_fifo_last),
        .I5(dest_req_valid),
        .O(src_dest_valid_hs_reg));
endmodule

(* ORIG_REF_NAME = "dmac_request_arb" *) 
module icyradio_axi_dmac_rf_tx_0_dmac_request_arb
   (m_axis_data,
    Q,
    addr_valid_reg,
    ADDRC,
    id,
    E,
    do_enable_reg,
    req_gen_ready,
    response_id,
    g,
    m_src_axi_araddr,
    up_response_valid,
    enabled_reg,
    enabled_reg_0,
    measured_burst_length,
    active_reg,
    req_eot_reg,
    m_axis_last,
    up_eot,
    \FSM_sequential_state_reg[2] ,
    m_axis_valid,
    \id_reg[3] ,
    enabled_reg_1,
    enabled_reg_2,
    \FSM_sequential_state_reg[0] ,
    m_src_axi_arlen,
    m_axis_aclk,
    m_src_axi_aclk,
    m_src_axi_rdata,
    m_src_axi_rvalid,
    dest_id_reduced_msb_next_reg,
    s_axi_aclk,
    \zerodeep.axis_valid_d_reg ,
    up_dma_req_valid,
    m_axis_ready,
    up_response_ready,
    m_src_axi_arready,
    m_src_axi_rlast,
    \FSM_onehot_state[5]_i_2 ,
    up_dma_x_length,
    up_clear_tl_reg,
    up_clear_tl,
    D,
    SR);
  output [31:0]m_axis_data;
  output [3:0]Q;
  output addr_valid_reg;
  output [3:0]ADDRC;
  output [3:0]id;
  output [0:0]E;
  output do_enable_reg;
  output req_gen_ready;
  output [3:0]response_id;
  output [3:0]g;
  output [27:0]m_src_axi_araddr;
  output up_response_valid;
  output enabled_reg;
  output enabled_reg_0;
  output [0:0]measured_burst_length;
  output active_reg;
  output req_eot_reg;
  output m_axis_last;
  output up_eot;
  output [2:0]\FSM_sequential_state_reg[2] ;
  output m_axis_valid;
  output [3:0]\id_reg[3] ;
  output enabled_reg_1;
  output enabled_reg_2;
  output \FSM_sequential_state_reg[0] ;
  output [3:0]m_src_axi_arlen;
  input m_axis_aclk;
  input m_src_axi_aclk;
  input [63:0]m_src_axi_rdata;
  input m_src_axi_rvalid;
  input [0:0]dest_id_reduced_msb_next_reg;
  input s_axi_aclk;
  input \zerodeep.axis_valid_d_reg ;
  input up_dma_req_valid;
  input m_axis_ready;
  input up_response_ready;
  input m_src_axi_arready;
  input m_src_axi_rlast;
  input [1:0]\FSM_onehot_state[5]_i_2 ;
  input [21:0]up_dma_x_length;
  input [0:0]up_clear_tl_reg;
  input up_clear_tl;
  input [28:0]D;
  input [0:0]SR;

  wire [3:0]ADDRC;
  wire [28:0]D;
  wire [0:0]E;
  wire [1:0]\FSM_onehot_state[5]_i_2 ;
  wire \FSM_sequential_state_reg[0] ;
  wire [2:0]\FSM_sequential_state_reg[2] ;
  wire [3:0]Q;
  wire [0:0]SR;
  wire active_reg;
  wire addr_valid_reg;
  wire [30:3]data;
  wire data_eot;
  wire dest_fifo_last;
  wire dest_fifo_valid;
  wire [0:0]dest_id_reduced_msb_next_reg;
  wire dest_req_valid;
  wire dest_response_valid;
  wire do_enable_reg;
  wire enabled_reg;
  wire enabled_reg_0;
  wire enabled_reg_1;
  wire enabled_reg_2;
  wire [2:2]fifo_valid_bytes;
  wire [3:0]g;
  wire i_dest_dma_stream_n_12;
  wire i_dest_dma_stream_n_17;
  wire i_dest_dma_stream_n_18;
  wire i_dest_req_fifo_n_1;
  wire i_dest_req_fifo_n_2;
  wire i_req_gen_n_2;
  wire \i_response_generator/id0 ;
  wire i_src_dma_mm_n_42;
  wire i_src_req_fifo_n_1;
  wire [3:0]id;
  wire [3:0]\id_reg[3] ;
  wire [2:1]inc_id_return;
  wire m_axis_aclk;
  wire [31:0]m_axis_data;
  wire m_axis_last;
  wire m_axis_ready;
  wire m_axis_valid;
  wire m_src_axi_aclk;
  wire [27:0]m_src_axi_araddr;
  wire [3:0]m_src_axi_arlen;
  wire m_src_axi_arready;
  wire [63:0]m_src_axi_rdata;
  wire m_src_axi_rlast;
  wire m_src_axi_rvalid;
  wire [0:0]measured_burst_length;
  wire [3:0]measured_last_burst_length;
  wire p_0_in1_in;
  wire p_1_in;
  wire p_1_in_0;
  wire req_eot_reg;
  wire req_gen_ready;
  wire [2:1]req_last_beat_bytes;
  wire request_eot;
  wire response_eot;
  wire [3:0]response_id;
  wire s_axi_aclk;
  wire [0:0]s_axis_data__0;
  wire src_address_eot;
  wire src_dest_ready_hs;
  wire src_dest_valid_hs;
  wire src_req_dest_address_cur0;
  wire src_req_spltr_valid;
  wire src_throttled_request_id0;
  wire \src_throttled_request_id[0]_i_1_n_0 ;
  wire \src_throttled_request_id[3]_i_2_n_0 ;
  wire \src_throttled_request_id_reg_n_0_[0] ;
  wire \src_throttled_request_id_reg_n_0_[1] ;
  wire up_clear_tl;
  wire [0:0]up_clear_tl_reg;
  wire up_dma_req_valid;
  wire [21:0]up_dma_x_length;
  wire up_eot;
  wire up_response_ready;
  wire up_response_valid;
  wire \zerodeep.axis_valid_d_reg ;
  wire NLW_eot_mem_dest_reg_r1_0_15_0_0_SPO_UNCONNECTED;
  wire NLW_eot_mem_dest_reg_r2_0_15_0_0_SPO_UNCONNECTED;
  wire NLW_eot_mem_src_reg_0_15_0_0_SPO_UNCONNECTED;

  (* RTL_RAM_BITS = "16" *) 
  (* RTL_RAM_NAME = "i_transfer/i_request_arb/eot_mem_dest" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    eot_mem_dest_reg_r1_0_15_0_0
       (.A0(id[0]),
        .A1(id[1]),
        .A2(id[2]),
        .A3(id[3]),
        .A4(1'b0),
        .D(src_address_eot),
        .DPO(response_eot),
        .DPRA0(response_id[0]),
        .DPRA1(response_id[1]),
        .DPRA2(response_id[2]),
        .DPRA3(response_id[3]),
        .DPRA4(1'b0),
        .SPO(NLW_eot_mem_dest_reg_r1_0_15_0_0_SPO_UNCONNECTED),
        .WCLK(m_src_axi_aclk),
        .WE(1'b1));
  (* RTL_RAM_BITS = "16" *) 
  (* RTL_RAM_NAME = "i_transfer/i_request_arb/eot_mem_dest" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    eot_mem_dest_reg_r2_0_15_0_0
       (.A0(id[0]),
        .A1(id[1]),
        .A2(id[2]),
        .A3(id[3]),
        .A4(1'b0),
        .D(src_address_eot),
        .DPO(data_eot),
        .DPRA0(g[0]),
        .DPRA1(g[1]),
        .DPRA2(g[2]),
        .DPRA3(g[3]),
        .DPRA4(1'b0),
        .SPO(NLW_eot_mem_dest_reg_r2_0_15_0_0_SPO_UNCONNECTED),
        .WCLK(m_src_axi_aclk),
        .WE(1'b1));
  (* RTL_RAM_BITS = "16" *) 
  (* RTL_RAM_NAME = "i_transfer/i_request_arb/eot_mem_src" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    eot_mem_src_reg_0_15_0_0
       (.A0(\id_reg[3] [0]),
        .A1(\id_reg[3] [1]),
        .A2(\id_reg[3] [2]),
        .A3(\id_reg[3] [3]),
        .A4(1'b0),
        .D(request_eot),
        .DPO(src_address_eot),
        .DPRA0(id[0]),
        .DPRA1(id[1]),
        .DPRA2(id[2]),
        .DPRA3(id[3]),
        .DPRA4(1'b0),
        .SPO(NLW_eot_mem_src_reg_0_15_0_0_SPO_UNCONNECTED),
        .WCLK(s_axi_aclk),
        .WE(1'b1));
  icyradio_axi_dmac_rf_tx_0_dmac_dest_axi_stream i_dest_dma_stream
       (.\FSM_onehot_state[5]_i_2 (\FSM_onehot_state[5]_i_2 ),
        .\FSM_onehot_state[5]_i_2_0 (enabled_reg_0),
        .active_reg_0(active_reg),
        .active_reg_1(i_dest_dma_stream_n_12),
        .active_reg_2(i_dest_req_fifo_n_2),
        .data_enabled_reg_0(\zerodeep.axis_valid_d_reg ),
        .data_eot(data_eot),
        .dest_fifo_last(dest_fifo_last),
        .dest_fifo_valid(dest_fifo_valid),
        .dest_req_valid(dest_req_valid),
        .dest_response_valid(dest_response_valid),
        .enabled_reg(enabled_reg),
        .enabled_reg_0(enabled_reg_1),
        .enabled_reg_1(enabled_reg_2),
        .enabled_reg_2(dest_id_reduced_msb_next_reg),
        .id0(\i_response_generator/id0 ),
        .\id_reg[0]_0 (g[0]),
        .\id_reg[1]_0 (g[1]),
        .\id_reg[2]_0 (g[2]),
        .\id_reg[3]_0 (g[3]),
        .m_axis_aclk(m_axis_aclk),
        .m_axis_last(m_axis_last),
        .m_axis_ready(m_axis_ready),
        .m_axis_valid(m_axis_valid),
        .p_1_in(p_1_in_0),
        .req_xlast_d_reg_0(i_dest_req_fifo_n_1),
        .\response_id_reg[0] (response_id[0]),
        .\response_id_reg[1] (response_id[1]),
        .\response_id_reg[2] (response_id[2]),
        .\response_id_reg[3] (response_id[3]),
        .s_axis_data__0(s_axis_data__0),
        .src_dest_ready_hs(src_dest_ready_hs),
        .src_dest_valid_hs(src_dest_valid_hs),
        .src_dest_valid_hs_reg(i_dest_dma_stream_n_18),
        .src_req_xlast_cur_reg(i_dest_dma_stream_n_17));
  icyradio_axi_dmac_rf_tx_0_util_axis_fifo__parameterized0 i_dest_req_fifo
       (.active_reg(active_reg),
        .data_eot(data_eot),
        .dest_fifo_last(dest_fifo_last),
        .dest_req_valid(dest_req_valid),
        .m_axis_ready(m_axis_ready),
        .m_src_axi_aclk(m_src_axi_aclk),
        .\zerodeep.axis_data_d_reg[0]_0 (i_dest_req_fifo_n_1),
        .\zerodeep.axis_data_d_reg[0]_1 (dest_id_reduced_msb_next_reg),
        .\zerodeep.axis_data_d_reg[0]_2 (i_dest_dma_stream_n_17),
        .\zerodeep.axis_valid_d_reg_0 (i_dest_req_fifo_n_2),
        .\zerodeep.axis_valid_d_reg_1 (i_dest_dma_stream_n_18));
  icyradio_axi_dmac_rf_tx_0_dmac_request_generator i_req_gen
       (.\FSM_sequential_state_reg[0]_0 (dest_id_reduced_msb_next_reg),
        .Q({p_1_in,p_0_in1_in,\src_throttled_request_id_reg_n_0_[1] ,\src_throttled_request_id_reg_n_0_[0] }),
        .\burst_count_reg[0]_0 (\zerodeep.axis_valid_d_reg ),
        .\id_reg[3]_0 (\id_reg[3] ),
        .req_gen_ready(req_gen_ready),
        .req_ready_reg_0(do_enable_reg),
        .request_eot(request_eot),
        .response_id(response_id),
        .s_axi_aclk(s_axi_aclk),
        .\src_throttled_request_id_reg[3] (i_req_gen_n_2),
        .up_dma_x_length(up_dma_x_length[21:5]));
  icyradio_axi_dmac_rf_tx_0_axi_dmac_response_manager i_response_manager
       (.\FSM_sequential_state_reg[0]_0 (\FSM_sequential_state_reg[0] ),
        .Q(\FSM_sequential_state_reg[2] ),
        .dest_response_valid(dest_response_valid),
        .id0(\i_response_generator/id0 ),
        .m_axis_aclk(m_axis_aclk),
        .measured_burst_length(measured_burst_length),
        .req_eot_reg_0(req_eot_reg),
        .response_eot(response_eot),
        .s_axi_aclk(s_axi_aclk),
        .up_clear_tl(up_clear_tl),
        .up_clear_tl_reg(up_clear_tl_reg),
        .up_eot(up_eot),
        .up_response_ready(up_response_ready),
        .up_response_valid(up_response_valid),
        .\zerodeep.axis_data_d_reg[0] (dest_id_reduced_msb_next_reg));
  icyradio_axi_dmac_rf_tx_0_dmac_src_mm_axi i_src_dma_mm
       (.E(E),
        .Q({p_1_in,p_0_in1_in,\src_throttled_request_id_reg_n_0_[1] ,\src_throttled_request_id_reg_n_0_[0] }),
        .addr_valid_reg(addr_valid_reg),
        .\address_reg[27] ({data,measured_last_burst_length,req_last_beat_bytes}),
        .do_enable_reg(do_enable_reg),
        .enabled_reg_0(enabled_reg_0),
        .\id_reg[0]_0 (ADDRC[0]),
        .\id_reg[0]_1 (id[0]),
        .\id_reg[1]_0 (ADDRC[1]),
        .\id_reg[1]_1 (id[1]),
        .\id_reg[2]_0 (ADDRC[2]),
        .\id_reg[2]_1 (id[2]),
        .\id_reg[3]_0 (ADDRC[3]),
        .\id_reg[3]_1 (id[3]),
        .m_src_axi_aclk(m_src_axi_aclk),
        .m_src_axi_araddr(m_src_axi_araddr),
        .m_src_axi_arlen(m_src_axi_arlen),
        .m_src_axi_arready(m_src_axi_arready),
        .m_src_axi_rlast(m_src_axi_rlast),
        .m_src_axi_rvalid(m_src_axi_rvalid),
        .p_0_in(fifo_valid_bytes),
        .req_gen_ready(req_gen_ready),
        .req_ready_reg(dest_id_reduced_msb_next_reg),
        .src_address_eot(src_address_eot),
        .src_dest_ready_hs(src_dest_ready_hs),
        .src_dest_valid_hs(src_dest_valid_hs),
        .src_dest_valid_hs_reg(i_src_dma_mm_n_42),
        .src_req_dest_address_cur0(src_req_dest_address_cur0),
        .src_req_spltr_valid(src_req_spltr_valid),
        .up_dma_req_valid(up_dma_req_valid),
        .\zerodeep.axis_valid_d_reg (\zerodeep.axis_valid_d_reg ));
  icyradio_axi_dmac_rf_tx_0_util_axis_fifo__parameterized1 i_src_req_fifo
       (.D({D[28:1],up_dma_x_length[4:0],D[0]}),
        .E(E),
        .Q({data,measured_last_burst_length,req_last_beat_bytes}),
        .s_axi_aclk(s_axi_aclk),
        .s_axis_data__0(s_axis_data__0),
        .src_req_dest_address_cur0(src_req_dest_address_cur0),
        .src_req_spltr_valid(src_req_spltr_valid),
        .\zerodeep.axis_data_d_reg[0]_0 (i_src_req_fifo_n_1),
        .\zerodeep.axis_valid_d_reg_0 (dest_id_reduced_msb_next_reg),
        .\zerodeep.axis_valid_d_reg_1 (do_enable_reg));
  icyradio_axi_dmac_rf_tx_0_axi_dmac_burst_memory i_store_and_forward
       (.E(src_throttled_request_id0),
        .Q(Q),
        .SR(SR),
        .\dest_burst_len_data_reg[3]_0 (fifo_valid_bytes),
        .dest_fifo_last(dest_fifo_last),
        .dest_fifo_valid(dest_fifo_valid),
        .dest_id_reduced_msb_next_reg_0(dest_id_reduced_msb_next_reg),
        .dest_mem_data_last_reg_0(i_dest_dma_stream_n_12),
        .m_axis_aclk(m_axis_aclk),
        .m_axis_data(m_axis_data),
        .m_axis_ready(m_axis_ready),
        .m_ram_reg_bram_0(active_reg),
        .m_src_axi_aclk(m_src_axi_aclk),
        .m_src_axi_rdata(m_src_axi_rdata),
        .m_src_axi_rlast(m_src_axi_rlast),
        .m_src_axi_rvalid(m_src_axi_rvalid),
        .p_1_in(p_1_in_0),
        .\src_throttled_request_id_reg[0] ({p_1_in,p_0_in1_in,\src_throttled_request_id_reg_n_0_[1] ,\src_throttled_request_id_reg_n_0_[0] }),
        .\src_throttled_request_id_reg[0]_0 (i_req_gen_n_2));
  FDRE #(
    .INIT(1'b0)) 
    src_dest_valid_hs_reg
       (.C(m_src_axi_aclk),
        .CE(1'b1),
        .D(i_src_dma_mm_n_42),
        .Q(src_dest_valid_hs),
        .R(dest_id_reduced_msb_next_reg));
  FDRE #(
    .INIT(1'b0)) 
    src_req_xlast_cur_reg
       (.C(m_src_axi_aclk),
        .CE(1'b1),
        .D(i_src_req_fifo_n_1),
        .Q(s_axis_data__0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \src_throttled_request_id[0]_i_1 
       (.I0(\src_throttled_request_id_reg_n_0_[1] ),
        .I1(p_1_in),
        .I2(p_0_in1_in),
        .O(\src_throttled_request_id[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'hD782)) 
    \src_throttled_request_id[1]_i_1 
       (.I0(\src_throttled_request_id_reg_n_0_[0] ),
        .I1(p_0_in1_in),
        .I2(p_1_in),
        .I3(\src_throttled_request_id_reg_n_0_[1] ),
        .O(inc_id_return[1]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'h8DCC)) 
    \src_throttled_request_id[2]_i_1 
       (.I0(\src_throttled_request_id_reg_n_0_[0] ),
        .I1(p_0_in1_in),
        .I2(p_1_in),
        .I3(\src_throttled_request_id_reg_n_0_[1] ),
        .O(inc_id_return[2]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'hF0E4)) 
    \src_throttled_request_id[3]_i_2 
       (.I0(\src_throttled_request_id_reg_n_0_[0] ),
        .I1(p_0_in1_in),
        .I2(p_1_in),
        .I3(\src_throttled_request_id_reg_n_0_[1] ),
        .O(\src_throttled_request_id[3]_i_2_n_0 ));
  FDRE \src_throttled_request_id_reg[0] 
       (.C(m_src_axi_aclk),
        .CE(src_throttled_request_id0),
        .D(\src_throttled_request_id[0]_i_1_n_0 ),
        .Q(\src_throttled_request_id_reg_n_0_[0] ),
        .R(dest_id_reduced_msb_next_reg));
  FDRE \src_throttled_request_id_reg[1] 
       (.C(m_src_axi_aclk),
        .CE(src_throttled_request_id0),
        .D(inc_id_return[1]),
        .Q(\src_throttled_request_id_reg_n_0_[1] ),
        .R(dest_id_reduced_msb_next_reg));
  FDRE \src_throttled_request_id_reg[2] 
       (.C(m_src_axi_aclk),
        .CE(src_throttled_request_id0),
        .D(inc_id_return[2]),
        .Q(p_0_in1_in),
        .R(dest_id_reduced_msb_next_reg));
  FDRE \src_throttled_request_id_reg[3] 
       (.C(m_src_axi_aclk),
        .CE(src_throttled_request_id0),
        .D(\src_throttled_request_id[3]_i_2_n_0 ),
        .Q(p_1_in),
        .R(dest_id_reduced_msb_next_reg));
endmodule

(* ORIG_REF_NAME = "dmac_request_generator" *) 
module icyradio_axi_dmac_rf_tx_0_dmac_request_generator
   (req_gen_ready,
    request_eot,
    \src_throttled_request_id_reg[3] ,
    \id_reg[3]_0 ,
    \FSM_sequential_state_reg[0]_0 ,
    s_axi_aclk,
    req_ready_reg_0,
    Q,
    response_id,
    \burst_count_reg[0]_0 ,
    up_dma_x_length);
  output req_gen_ready;
  output request_eot;
  output \src_throttled_request_id_reg[3] ;
  output [3:0]\id_reg[3]_0 ;
  input [0:0]\FSM_sequential_state_reg[0]_0 ;
  input s_axi_aclk;
  input req_ready_reg_0;
  input [3:0]Q;
  input [3:0]response_id;
  input \burst_count_reg[0]_0 ;
  input [16:0]up_dma_x_length;

  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[0]_i_2__0_n_0 ;
  wire \FSM_sequential_state[0]_i_3__0_n_0 ;
  wire [0:0]\FSM_sequential_state_reg[0]_0 ;
  wire [3:0]Q;
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
  wire \burst_count_reg[0]_0 ;
  wire eot_mem_src_reg_0_15_0_0_i_2_n_0;
  wire eot_mem_src_reg_0_15_0_0_i_3_n_0;
  wire eot_mem_src_reg_0_15_0_0_i_4_n_0;
  wire \id[0]_i_1__1_n_0 ;
  wire \id[1]_i_1__2_n_0 ;
  wire \id[2]_i_1__0_n_0 ;
  wire \id[3]_i_1__1_n_0 ;
  wire \id[3]_i_2_n_0 ;
  wire [3:0]\id_reg[3]_0 ;
  wire [16:1]in10;
  wire req_gen_ready;
  wire req_ready_i_1_n_0;
  wire req_ready_reg_0;
  wire request_eot;
  wire [3:0]response_id;
  wire s_axi_aclk;
  wire \src_throttled_request_id[3]_i_5_n_0 ;
  wire \src_throttled_request_id_reg[3] ;
  wire [0:0]state;
  wire [16:0]up_dma_x_length;
  wire [3:3]NLW_burst_count0_carry__2_CO_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hBFB0)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(\FSM_sequential_state[0]_i_2__0_n_0 ),
        .I1(request_eot),
        .I2(state),
        .I3(req_ready_reg_0),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00009009FFFFFFFF)) 
    \FSM_sequential_state[0]_i_2__0 
       (.I0(response_id[3]),
        .I1(\id[3]_i_2_n_0 ),
        .I2(\id[0]_i_1__1_n_0 ),
        .I3(response_id[0]),
        .I4(\FSM_sequential_state[0]_i_3__0_n_0 ),
        .I5(\burst_count_reg[0]_0 ),
        .O(\FSM_sequential_state[0]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h7F7BB5BBE5EEDFDE)) 
    \FSM_sequential_state[0]_i_3__0 
       (.I0(response_id[1]),
        .I1(\id_reg[3]_0 [2]),
        .I2(\id_reg[3]_0 [0]),
        .I3(\id_reg[3]_0 [1]),
        .I4(\id_reg[3]_0 [3]),
        .I5(response_id[2]),
        .O(\FSM_sequential_state[0]_i_3__0_n_0 ));
  (* FSM_ENCODED_STATES = "STATE_REWIND_ID:010,STATE_GEN_ID:001,STATE_WAIT_LAST:100,STATE_IDLE:000,STATE_CONSUME:011" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state),
        .R(\FSM_sequential_state_reg[0]_0 ));
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
    .INIT(8'h74)) 
    \burst_count[0]_i_1 
       (.I0(burst_count[0]),
        .I1(state),
        .I2(up_dma_x_length[0]),
        .O(\burst_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \burst_count[10]_i_1 
       (.I0(up_dma_x_length[10]),
        .I1(state),
        .I2(in10[10]),
        .O(\burst_count[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \burst_count[11]_i_1 
       (.I0(up_dma_x_length[11]),
        .I1(state),
        .I2(in10[11]),
        .O(\burst_count[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \burst_count[12]_i_1 
       (.I0(up_dma_x_length[12]),
        .I1(state),
        .I2(in10[12]),
        .O(\burst_count[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \burst_count[13]_i_1 
       (.I0(up_dma_x_length[13]),
        .I1(state),
        .I2(in10[13]),
        .O(\burst_count[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \burst_count[14]_i_1 
       (.I0(up_dma_x_length[14]),
        .I1(state),
        .I2(in10[14]),
        .O(\burst_count[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \burst_count[15]_i_1 
       (.I0(up_dma_x_length[15]),
        .I1(state),
        .I2(in10[15]),
        .O(\burst_count[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \burst_count[16]_i_1 
       (.I0(state),
        .I1(\FSM_sequential_state[0]_i_2__0_n_0 ),
        .O(burst_count_0));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \burst_count[16]_i_2 
       (.I0(up_dma_x_length[16]),
        .I1(state),
        .I2(in10[16]),
        .O(\burst_count[16]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \burst_count[1]_i_1 
       (.I0(up_dma_x_length[1]),
        .I1(state),
        .I2(in10[1]),
        .O(\burst_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \burst_count[2]_i_1 
       (.I0(up_dma_x_length[2]),
        .I1(state),
        .I2(in10[2]),
        .O(\burst_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \burst_count[3]_i_1 
       (.I0(up_dma_x_length[3]),
        .I1(state),
        .I2(in10[3]),
        .O(\burst_count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \burst_count[4]_i_1 
       (.I0(up_dma_x_length[4]),
        .I1(state),
        .I2(in10[4]),
        .O(\burst_count[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \burst_count[5]_i_1 
       (.I0(up_dma_x_length[5]),
        .I1(state),
        .I2(in10[5]),
        .O(\burst_count[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \burst_count[6]_i_1 
       (.I0(up_dma_x_length[6]),
        .I1(state),
        .I2(in10[6]),
        .O(\burst_count[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \burst_count[7]_i_1 
       (.I0(up_dma_x_length[7]),
        .I1(state),
        .I2(in10[7]),
        .O(\burst_count[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \burst_count[8]_i_1 
       (.I0(up_dma_x_length[8]),
        .I1(state),
        .I2(in10[8]),
        .O(\burst_count[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \burst_count[9]_i_1 
       (.I0(up_dma_x_length[9]),
        .I1(state),
        .I2(in10[9]),
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
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    eot_mem_src_reg_0_15_0_0_i_1
       (.I0(eot_mem_src_reg_0_15_0_0_i_2_n_0),
        .I1(eot_mem_src_reg_0_15_0_0_i_3_n_0),
        .I2(eot_mem_src_reg_0_15_0_0_i_4_n_0),
        .I3(burst_count[1]),
        .I4(burst_count[15]),
        .I5(burst_count[0]),
        .O(request_eot));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    eot_mem_src_reg_0_15_0_0_i_2
       (.I0(burst_count[9]),
        .I1(burst_count[3]),
        .I2(burst_count[12]),
        .I3(burst_count[14]),
        .I4(burst_count[5]),
        .I5(burst_count[7]),
        .O(eot_mem_src_reg_0_15_0_0_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    eot_mem_src_reg_0_15_0_0_i_3
       (.I0(burst_count[13]),
        .I1(burst_count[8]),
        .I2(burst_count[16]),
        .I3(burst_count[2]),
        .O(eot_mem_src_reg_0_15_0_0_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    eot_mem_src_reg_0_15_0_0_i_4
       (.I0(burst_count[11]),
        .I1(burst_count[4]),
        .I2(burst_count[10]),
        .I3(burst_count[6]),
        .O(eot_mem_src_reg_0_15_0_0_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \id[0]_i_1__1 
       (.I0(\id_reg[3]_0 [1]),
        .I1(\id_reg[3]_0 [2]),
        .I2(\id_reg[3]_0 [3]),
        .O(\id[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hE22E)) 
    \id[1]_i_1__2 
       (.I0(\id_reg[3]_0 [1]),
        .I1(\id_reg[3]_0 [0]),
        .I2(\id_reg[3]_0 [2]),
        .I3(\id_reg[3]_0 [3]),
        .O(\id[1]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h8ABA)) 
    \id[2]_i_1__0 
       (.I0(\id_reg[3]_0 [2]),
        .I1(\id_reg[3]_0 [0]),
        .I2(\id_reg[3]_0 [1]),
        .I3(\id_reg[3]_0 [3]),
        .O(\id[2]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \id[3]_i_1__1 
       (.I0(state),
        .I1(\FSM_sequential_state[0]_i_2__0_n_0 ),
        .O(\id[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hABA8)) 
    \id[3]_i_2 
       (.I0(\id_reg[3]_0 [3]),
        .I1(\id_reg[3]_0 [1]),
        .I2(\id_reg[3]_0 [0]),
        .I3(\id_reg[3]_0 [2]),
        .O(\id[3]_i_2_n_0 ));
  FDRE \id_reg[0] 
       (.C(s_axi_aclk),
        .CE(\id[3]_i_1__1_n_0 ),
        .D(\id[0]_i_1__1_n_0 ),
        .Q(\id_reg[3]_0 [0]),
        .R(\FSM_sequential_state_reg[0]_0 ));
  FDRE \id_reg[1] 
       (.C(s_axi_aclk),
        .CE(\id[3]_i_1__1_n_0 ),
        .D(\id[1]_i_1__2_n_0 ),
        .Q(\id_reg[3]_0 [1]),
        .R(\FSM_sequential_state_reg[0]_0 ));
  FDRE \id_reg[2] 
       (.C(s_axi_aclk),
        .CE(\id[3]_i_1__1_n_0 ),
        .D(\id[2]_i_1__0_n_0 ),
        .Q(\id_reg[3]_0 [2]),
        .R(\FSM_sequential_state_reg[0]_0 ));
  FDRE \id_reg[3] 
       (.C(s_axi_aclk),
        .CE(\id[3]_i_1__1_n_0 ),
        .D(\id[3]_i_2_n_0 ),
        .Q(\id_reg[3]_0 [3]),
        .R(\FSM_sequential_state_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h11D1)) 
    req_ready_i_1
       (.I0(req_ready_reg_0),
        .I1(state),
        .I2(request_eot),
        .I3(\FSM_sequential_state[0]_i_2__0_n_0 ),
        .O(req_ready_i_1_n_0));
  FDRE req_ready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(req_ready_i_1_n_0),
        .Q(req_gen_ready),
        .R(\FSM_sequential_state_reg[0]_0 ));
  LUT5 #(
    .INIT(32'h00009009)) 
    \src_throttled_request_id[3]_i_4 
       (.I0(Q[3]),
        .I1(\id_reg[3]_0 [3]),
        .I2(Q[2]),
        .I3(\id_reg[3]_0 [2]),
        .I4(\src_throttled_request_id[3]_i_5_n_0 ),
        .O(\src_throttled_request_id_reg[3] ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \src_throttled_request_id[3]_i_5 
       (.I0(Q[1]),
        .I1(\id_reg[3]_0 [1]),
        .I2(Q[0]),
        .I3(\id_reg[3]_0 [0]),
        .O(\src_throttled_request_id[3]_i_5_n_0 ));
endmodule

(* ORIG_REF_NAME = "dmac_response_generator" *) 
module icyradio_axi_dmac_rf_tx_0_dmac_response_generator
   (\response_id_reg[3]_0 ,
    \response_id_reg[2]_0 ,
    \response_id_reg[1]_0 ,
    \response_id_reg[0]_0 ,
    enabled_reg_0,
    dest_response_valid,
    enabled_reg_1,
    enabled_reg_2,
    enabled_reg_3,
    id0,
    m_axis_aclk,
    enabled_reg_4,
    enabled_reg_5,
    \response_id[3]_i_3_0 ,
    \response_id[3]_i_3_1 ,
    \FSM_onehot_state[5]_i_2 ,
    \FSM_onehot_state[5]_i_2_0 ,
    \FSM_onehot_state[5]_i_2_1 ,
    data_enabled);
  output \response_id_reg[3]_0 ;
  output \response_id_reg[2]_0 ;
  output \response_id_reg[1]_0 ;
  output \response_id_reg[0]_0 ;
  output enabled_reg_0;
  output dest_response_valid;
  output enabled_reg_1;
  output enabled_reg_2;
  input [0:0]enabled_reg_3;
  input id0;
  input m_axis_aclk;
  input enabled_reg_4;
  input enabled_reg_5;
  input \response_id[3]_i_3_0 ;
  input \response_id[3]_i_3_1 ;
  input [1:0]\FSM_onehot_state[5]_i_2 ;
  input \FSM_onehot_state[5]_i_2_0 ;
  input \FSM_onehot_state[5]_i_2_1 ;
  input data_enabled;

  wire [1:0]\FSM_onehot_state[5]_i_2 ;
  wire \FSM_onehot_state[5]_i_2_0 ;
  wire \FSM_onehot_state[5]_i_2_1 ;
  wire data_enabled;
  wire dest_response_valid;
  wire enabled_i_1_n_0;
  wire enabled_i_2_n_0;
  wire enabled_reg_0;
  wire enabled_reg_1;
  wire enabled_reg_2;
  wire [0:0]enabled_reg_3;
  wire enabled_reg_4;
  wire enabled_reg_5;
  wire id0;
  wire [2:1]inc_id0_return;
  wire m_axis_aclk;
  wire \response_id[0]_i_1_n_0 ;
  wire \response_id[3]_i_2_n_0 ;
  wire \response_id[3]_i_3_0 ;
  wire \response_id[3]_i_3_1 ;
  wire \response_id[3]_i_4_n_0 ;
  wire \response_id_reg[0]_0 ;
  wire \response_id_reg[1]_0 ;
  wire \response_id_reg[2]_0 ;
  wire \response_id_reg[3]_0 ;

  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \FSM_onehot_state[5]_i_3 
       (.I0(enabled_reg_0),
        .I1(\FSM_onehot_state[5]_i_2 [1]),
        .I2(\FSM_onehot_state[5]_i_2_0 ),
        .I3(\FSM_onehot_state[5]_i_2_1 ),
        .O(enabled_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \FSM_onehot_state[5]_i_5 
       (.I0(enabled_reg_0),
        .I1(\FSM_onehot_state[5]_i_2 [0]),
        .I2(\FSM_onehot_state[5]_i_2_0 ),
        .I3(\FSM_onehot_state[5]_i_2_1 ),
        .O(enabled_reg_1));
  LUT3 #(
    .INIT(8'hBA)) 
    enabled_i_1
       (.I0(data_enabled),
        .I1(enabled_i_2_n_0),
        .I2(enabled_reg_0),
        .O(enabled_i_1_n_0));
  LUT5 #(
    .INIT(32'h00009009)) 
    enabled_i_2
       (.I0(\response_id_reg[3]_0 ),
        .I1(enabled_reg_5),
        .I2(\response_id_reg[2]_0 ),
        .I3(enabled_reg_4),
        .I4(\response_id[3]_i_4_n_0 ),
        .O(enabled_i_2_n_0));
  FDRE enabled_reg
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(enabled_i_1_n_0),
        .Q(enabled_reg_0),
        .R(enabled_reg_3));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \response_id[0]_i_1 
       (.I0(\response_id_reg[1]_0 ),
        .I1(\response_id_reg[2]_0 ),
        .I2(\response_id_reg[3]_0 ),
        .O(\response_id[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hD782)) 
    \response_id[1]_i_1 
       (.I0(\response_id_reg[0]_0 ),
        .I1(\response_id_reg[3]_0 ),
        .I2(\response_id_reg[2]_0 ),
        .I3(\response_id_reg[1]_0 ),
        .O(inc_id0_return[1]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hCC4E)) 
    \response_id[2]_i_1 
       (.I0(\response_id_reg[1]_0 ),
        .I1(\response_id_reg[2]_0 ),
        .I2(\response_id_reg[3]_0 ),
        .I3(\response_id_reg[0]_0 ),
        .O(inc_id0_return[2]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hCCD8)) 
    \response_id[3]_i_2 
       (.I0(\response_id_reg[0]_0 ),
        .I1(\response_id_reg[3]_0 ),
        .I2(\response_id_reg[2]_0 ),
        .I3(\response_id_reg[1]_0 ),
        .O(\response_id[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8AA8AAAAAAAA8AA8)) 
    \response_id[3]_i_3 
       (.I0(enabled_reg_0),
        .I1(\response_id[3]_i_4_n_0 ),
        .I2(enabled_reg_4),
        .I3(\response_id_reg[2]_0 ),
        .I4(enabled_reg_5),
        .I5(\response_id_reg[3]_0 ),
        .O(dest_response_valid));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \response_id[3]_i_4 
       (.I0(\response_id[3]_i_3_0 ),
        .I1(\response_id_reg[1]_0 ),
        .I2(\response_id[3]_i_3_1 ),
        .I3(\response_id_reg[0]_0 ),
        .O(\response_id[3]_i_4_n_0 ));
  FDRE \response_id_reg[0] 
       (.C(m_axis_aclk),
        .CE(id0),
        .D(\response_id[0]_i_1_n_0 ),
        .Q(\response_id_reg[0]_0 ),
        .R(enabled_reg_3));
  FDRE \response_id_reg[1] 
       (.C(m_axis_aclk),
        .CE(id0),
        .D(inc_id0_return[1]),
        .Q(\response_id_reg[1]_0 ),
        .R(enabled_reg_3));
  FDRE \response_id_reg[2] 
       (.C(m_axis_aclk),
        .CE(id0),
        .D(inc_id0_return[2]),
        .Q(\response_id_reg[2]_0 ),
        .R(enabled_reg_3));
  FDRE \response_id_reg[3] 
       (.C(m_axis_aclk),
        .CE(id0),
        .D(\response_id[3]_i_2_n_0 ),
        .Q(\response_id_reg[3]_0 ),
        .R(enabled_reg_3));
endmodule

(* ORIG_REF_NAME = "dmac_src_mm_axi" *) 
module icyradio_axi_dmac_rf_tx_0_dmac_src_mm_axi
   (addr_valid_reg,
    p_0_in,
    \id_reg[3]_0 ,
    \id_reg[2]_0 ,
    \id_reg[1]_0 ,
    \id_reg[0]_0 ,
    \id_reg[3]_1 ,
    \id_reg[2]_1 ,
    \id_reg[1]_1 ,
    \id_reg[0]_1 ,
    m_src_axi_araddr,
    enabled_reg_0,
    do_enable_reg,
    E,
    src_req_dest_address_cur0,
    src_dest_valid_hs_reg,
    m_src_axi_arlen,
    m_src_axi_aclk,
    req_ready_reg,
    src_address_eot,
    \zerodeep.axis_valid_d_reg ,
    req_gen_ready,
    up_dma_req_valid,
    src_req_spltr_valid,
    src_dest_ready_hs,
    m_src_axi_arready,
    Q,
    m_src_axi_rlast,
    m_src_axi_rvalid,
    \address_reg[27] ,
    src_dest_valid_hs);
  output addr_valid_reg;
  output [0:0]p_0_in;
  output \id_reg[3]_0 ;
  output \id_reg[2]_0 ;
  output \id_reg[1]_0 ;
  output \id_reg[0]_0 ;
  output \id_reg[3]_1 ;
  output \id_reg[2]_1 ;
  output \id_reg[1]_1 ;
  output \id_reg[0]_1 ;
  output [27:0]m_src_axi_araddr;
  output enabled_reg_0;
  output do_enable_reg;
  output [0:0]E;
  output src_req_dest_address_cur0;
  output src_dest_valid_hs_reg;
  output [3:0]m_src_axi_arlen;
  input m_src_axi_aclk;
  input [0:0]req_ready_reg;
  input src_address_eot;
  input \zerodeep.axis_valid_d_reg ;
  input req_gen_ready;
  input up_dma_req_valid;
  input src_req_spltr_valid;
  input src_dest_ready_hs;
  input m_src_axi_arready;
  input [3:0]Q;
  input m_src_axi_rlast;
  input m_src_axi_rvalid;
  input [33:0]\address_reg[27] ;
  input src_dest_valid_hs;

  wire [0:0]E;
  wire [3:0]Q;
  wire [1:0]acked;
  wire addr_valid_reg;
  wire [33:0]\address_reg[27] ;
  wire b2g_return06_out;
  wire b2g_return07_out;
  wire bl_ready_ag;
  wire do_enable_reg;
  wire enabled_reg_0;
  wire g0;
  wire i_addr_gen_n_35;
  wire \id[0]_i_2__0_n_0 ;
  wire \id_reg[0]_0 ;
  wire \id_reg[0]_1 ;
  wire \id_reg[1]_0 ;
  wire \id_reg[1]_1 ;
  wire \id_reg[2]_0 ;
  wire \id_reg[2]_1 ;
  wire \id_reg[3]_0 ;
  wire \id_reg[3]_1 ;
  wire [2:1]last_beat_bytes;
  wire last_beat_bytes0;
  wire last_beat_bytes_mem_reg_0_15_0_2_n_0;
  wire last_beat_bytes_mem_reg_0_15_0_2_n_1;
  wire m_src_axi_aclk;
  wire [27:0]m_src_axi_araddr;
  wire [3:0]m_src_axi_arlen;
  wire m_src_axi_arready;
  wire m_src_axi_rlast;
  wire m_src_axi_rvalid;
  wire [0:0]p_0_in;
  wire [2:1]p_0_in_0;
  wire p_3_in;
  wire req_gen_ready;
  wire req_ready_ag;
  wire [0:0]req_ready_reg;
  wire src_address_eot;
  wire src_dest_ready_hs;
  wire src_dest_valid_hs;
  wire src_dest_valid_hs_reg;
  wire src_req_dest_address_cur0;
  wire src_req_spltr_valid;
  wire up_dma_req_valid;
  wire \zerodeep.axis_valid_d_reg ;
  wire [1:1]NLW_last_beat_bytes_mem_reg_0_15_0_2_DOB_UNCONNECTED;
  wire [1:0]NLW_last_beat_bytes_mem_reg_0_15_0_2_DOC_UNCONNECTED;
  wire [1:0]NLW_last_beat_bytes_mem_reg_0_15_0_2_DOD_UNCONNECTED;

  FDRE #(
    .INIT(1'b0)) 
    enabled_reg
       (.C(m_src_axi_aclk),
        .CE(1'b1),
        .D(i_addr_gen_n_35),
        .Q(enabled_reg_0),
        .R(req_ready_reg));
  icyradio_axi_dmac_rf_tx_0_dmac_address_generator i_addr_gen
       (.ADDRC({\id_reg[3]_0 ,\id_reg[2]_0 ,\id_reg[1]_0 ,\id_reg[0]_0 }),
        .ADDRD({\id_reg[3]_1 ,\id_reg[2]_1 ,\id_reg[1]_1 ,\id_reg[0]_1 }),
        .E(last_beat_bytes0),
        .Q(Q),
        .acked(acked),
        .addr_valid_reg_0(addr_valid_reg),
        .\address_reg[27]_0 (\address_reg[27] [33:2]),
        .bl_ready_ag(bl_ready_ag),
        .bl_ready_reg_0(src_req_dest_address_cur0),
        .enabled_reg_0(i_addr_gen_n_35),
        .enabled_reg_1(\zerodeep.axis_valid_d_reg ),
        .enabled_reg_2(enabled_reg_0),
        .m_src_axi_aclk(m_src_axi_aclk),
        .m_src_axi_araddr(m_src_axi_araddr),
        .m_src_axi_arlen(m_src_axi_arlen),
        .m_src_axi_arready(m_src_axi_arready),
        .req_ready_ag(req_ready_ag),
        .req_ready_reg_0(req_ready_reg),
        .src_address_eot(src_address_eot));
  icyradio_axi_dmac_rf_tx_0_splitter i_req_splitter
       (.E(E),
        .acked(acked),
        .\acked_reg[0]_0 (req_ready_reg),
        .\acked_reg[1]_0 (last_beat_bytes0),
        .bl_ready_ag(bl_ready_ag),
        .do_enable_reg(do_enable_reg),
        .m_src_axi_aclk(m_src_axi_aclk),
        .req_gen_ready(req_gen_ready),
        .req_ready_ag(req_ready_ag),
        .src_dest_ready_hs(src_dest_ready_hs),
        .src_dest_valid_hs(src_dest_valid_hs),
        .src_dest_valid_hs_reg(src_dest_valid_hs_reg),
        .src_req_spltr_valid(src_req_spltr_valid),
        .up_dma_req_valid(up_dma_req_valid),
        .\zerodeep.axis_valid_d_reg (src_req_dest_address_cur0),
        .\zerodeep.axis_valid_d_reg_0 (\zerodeep.axis_valid_d_reg ));
  LUT2 #(
    .INIT(4'h8)) 
    \id[0]_i_1__0 
       (.I0(m_src_axi_rlast),
        .I1(m_src_axi_rvalid),
        .O(g0));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \id[0]_i_2__0 
       (.I0(\id_reg[1]_0 ),
        .I1(\id_reg[2]_0 ),
        .I2(\id_reg[3]_0 ),
        .O(\id[0]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'hC3AA)) 
    \id[1]_i_1 
       (.I0(\id_reg[1]_0 ),
        .I1(\id_reg[3]_0 ),
        .I2(\id_reg[2]_0 ),
        .I3(\id_reg[0]_0 ),
        .O(b2g_return06_out));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'hF704)) 
    \id[2]_i_1 
       (.I0(\id_reg[3]_0 ),
        .I1(\id_reg[1]_0 ),
        .I2(\id_reg[0]_0 ),
        .I3(\id_reg[2]_0 ),
        .O(b2g_return07_out));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'hABA8)) 
    \id[3]_i_1__0 
       (.I0(\id_reg[3]_0 ),
        .I1(\id_reg[1]_0 ),
        .I2(\id_reg[0]_0 ),
        .I3(\id_reg[2]_0 ),
        .O(p_3_in));
  FDRE #(
    .INIT(1'b0)) 
    \id_reg[0] 
       (.C(m_src_axi_aclk),
        .CE(g0),
        .D(\id[0]_i_2__0_n_0 ),
        .Q(\id_reg[0]_0 ),
        .R(req_ready_reg));
  FDRE #(
    .INIT(1'b0)) 
    \id_reg[1] 
       (.C(m_src_axi_aclk),
        .CE(g0),
        .D(b2g_return06_out),
        .Q(\id_reg[1]_0 ),
        .R(req_ready_reg));
  FDRE #(
    .INIT(1'b0)) 
    \id_reg[2] 
       (.C(m_src_axi_aclk),
        .CE(g0),
        .D(b2g_return07_out),
        .Q(\id_reg[2]_0 ),
        .R(req_ready_reg));
  FDRE #(
    .INIT(1'b0)) 
    \id_reg[3] 
       (.C(m_src_axi_aclk),
        .CE(g0),
        .D(p_3_in),
        .Q(\id_reg[3]_0 ),
        .R(req_ready_reg));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "48" *) 
  (* RTL_RAM_NAME = "i_transfer/i_request_arb/i_src_dma_mm/last_beat_bytes_mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM32M last_beat_bytes_mem_reg_0_15_0_2
       (.ADDRA({1'b0,\id_reg[3]_0 ,\id_reg[2]_0 ,\id_reg[1]_0 ,\id_reg[0]_0 }),
        .ADDRB({1'b0,\id_reg[3]_0 ,\id_reg[2]_0 ,\id_reg[1]_0 ,\id_reg[0]_0 }),
        .ADDRC({1'b0,\id_reg[3]_0 ,\id_reg[2]_0 ,\id_reg[1]_0 ,\id_reg[0]_0 }),
        .ADDRD({1'b0,\id_reg[3]_1 ,\id_reg[2]_1 ,\id_reg[1]_1 ,\id_reg[0]_1 }),
        .DIA({p_0_in_0[1],p_0_in_0[1]}),
        .DIB({1'b0,p_0_in_0[2]}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA({last_beat_bytes_mem_reg_0_15_0_2_n_0,last_beat_bytes_mem_reg_0_15_0_2_n_1}),
        .DOB({NLW_last_beat_bytes_mem_reg_0_15_0_2_DOB_UNCONNECTED[1],p_0_in}),
        .DOC(NLW_last_beat_bytes_mem_reg_0_15_0_2_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_last_beat_bytes_mem_reg_0_15_0_2_DOD_UNCONNECTED[1:0]),
        .WCLK(m_src_axi_aclk),
        .WE(1'b1));
  LUT2 #(
    .INIT(4'hB)) 
    last_beat_bytes_mem_reg_0_15_0_2_i_1
       (.I0(last_beat_bytes[1]),
        .I1(src_address_eot),
        .O(p_0_in_0[1]));
  LUT2 #(
    .INIT(4'hB)) 
    last_beat_bytes_mem_reg_0_15_0_2_i_2
       (.I0(last_beat_bytes[2]),
        .I1(src_address_eot),
        .O(p_0_in_0[2]));
  FDRE \last_beat_bytes_reg[1] 
       (.C(m_src_axi_aclk),
        .CE(last_beat_bytes0),
        .D(\address_reg[27] [0]),
        .Q(last_beat_bytes[1]),
        .R(1'b0));
  FDRE \last_beat_bytes_reg[2] 
       (.C(m_src_axi_aclk),
        .CE(last_beat_bytes0),
        .D(\address_reg[27] [1]),
        .Q(last_beat_bytes[2]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "splitter" *) 
module icyradio_axi_dmac_rf_tx_0_splitter
   (do_enable_reg,
    E,
    \acked_reg[1]_0 ,
    \zerodeep.axis_valid_d_reg ,
    acked,
    src_dest_valid_hs_reg,
    \zerodeep.axis_valid_d_reg_0 ,
    req_gen_ready,
    up_dma_req_valid,
    src_req_spltr_valid,
    bl_ready_ag,
    req_ready_ag,
    src_dest_ready_hs,
    src_dest_valid_hs,
    \acked_reg[0]_0 ,
    m_src_axi_aclk);
  output do_enable_reg;
  output [0:0]E;
  output [0:0]\acked_reg[1]_0 ;
  output \zerodeep.axis_valid_d_reg ;
  output [1:0]acked;
  output src_dest_valid_hs_reg;
  input \zerodeep.axis_valid_d_reg_0 ;
  input req_gen_ready;
  input up_dma_req_valid;
  input src_req_spltr_valid;
  input bl_ready_ag;
  input req_ready_ag;
  input src_dest_ready_hs;
  input src_dest_valid_hs;
  input [0:0]\acked_reg[0]_0 ;
  input m_src_axi_aclk;

  wire [0:0]E;
  wire [1:0]acked;
  wire \acked[0]_i_1_n_0 ;
  wire \acked[1]_i_1_n_0 ;
  wire [0:0]\acked_reg[0]_0 ;
  wire [0:0]\acked_reg[1]_0 ;
  wire bl_ready_ag;
  wire do_enable_reg;
  wire m_src_axi_aclk;
  wire req_gen_ready;
  wire req_ready_ag;
  wire src_dest_ready_hs;
  wire src_dest_valid_hs;
  wire src_dest_valid_hs_reg;
  wire src_req_spltr_valid;
  wire up_dma_req_valid;
  wire \zerodeep.axis_valid_d_reg ;
  wire \zerodeep.axis_valid_d_reg_0 ;

  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \acked[0]_i_1 
       (.I0(acked[0]),
        .I1(\zerodeep.axis_valid_d_reg ),
        .I2(\acked_reg[0]_0 ),
        .O(\acked[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \acked[1]_i_1 
       (.I0(acked[1]),
        .I1(\zerodeep.axis_valid_d_reg ),
        .I2(\acked_reg[0]_0 ),
        .O(\acked[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A80000000000)) 
    \acked[1]_i_2 
       (.I0(src_req_spltr_valid),
        .I1(acked[1]),
        .I2(bl_ready_ag),
        .I3(acked[0]),
        .I4(req_ready_ag),
        .I5(src_dest_ready_hs),
        .O(\zerodeep.axis_valid_d_reg ));
  FDRE \acked_reg[0] 
       (.C(m_src_axi_aclk),
        .CE(1'b1),
        .D(\acked[0]_i_1_n_0 ),
        .Q(acked[0]),
        .R(1'b0));
  FDRE \acked_reg[1] 
       (.C(m_src_axi_aclk),
        .CE(1'b1),
        .D(\acked[1]_i_1_n_0 ),
        .Q(acked[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \last_burst_len[3]_i_1 
       (.I0(\zerodeep.axis_valid_d_reg ),
        .I1(acked[1]),
        .O(\acked_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    src_dest_valid_hs_i_1
       (.I0(\zerodeep.axis_valid_d_reg ),
        .I1(src_dest_ready_hs),
        .I2(src_dest_valid_hs),
        .O(src_dest_valid_hs_reg));
  LUT6 #(
    .INIT(64'hEEE00000FFFFFFFF)) 
    \zerodeep.axis_data_d[36]_i_1 
       (.I0(acked[1]),
        .I1(bl_ready_ag),
        .I2(acked[0]),
        .I3(req_ready_ag),
        .I4(src_dest_ready_hs),
        .I5(src_req_spltr_valid),
        .O(E));
  LUT4 #(
    .INIT(16'h8000)) 
    \zerodeep.axis_valid_d_i_1 
       (.I0(E),
        .I1(\zerodeep.axis_valid_d_reg_0 ),
        .I2(req_gen_ready),
        .I3(up_dma_req_valid),
        .O(do_enable_reg));
endmodule

(* ORIG_REF_NAME = "up_axi" *) 
module icyradio_axi_dmac_rf_tx_0_up_axi
   (SR,
    up_wreq,
    s_axi_bvalid,
    s_axi_awready,
    s_axi_wready,
    up_rreq,
    up_axi_rvalid_int_reg_0,
    s_axi_arready,
    ctrl_enable_reg,
    Q,
    D,
    \up_raddr_int_reg[4]_0 ,
    \up_raddr_int_reg[4]_1 ,
    \up_raddr_int_reg[7]_0 ,
    up_rreq_int_reg_0,
    \up_raddr_int_reg[0]_0 ,
    \up_waddr_int_reg[1]_0 ,
    \up_wdata_int_reg[1]_0 ,
    E,
    \up_waddr_int_reg[2]_0 ,
    \up_waddr_int_reg[2]_1 ,
    \up_wdata_int_reg[1]_1 ,
    \up_wdata_int_reg[2]_0 ,
    \up_wdata_int_reg[1]_2 ,
    \up_wdata_int_reg[0]_0 ,
    s_axi_rdata,
    s_axi_aclk,
    req_gen_valid,
    ctrl_enable_reg_0,
    s_axi_aresetn,
    up_dma_req_valid,
    \up_rdata_reg[31] ,
    m_src_axi_araddr,
    \up_rdata[0]_i_3_0 ,
    dbg_status,
    \up_rdata_reg[30] ,
    dbg_ids1,
    \up_rdata_reg[9] ,
    \up_rdata_reg[26] ,
    \up_rdata_reg[28] ,
    \up_rdata_reg[29] ,
    \up_irq_source_reg[1] ,
    \up_rdata_reg[0] ,
    \up_rdata_reg[1] ,
    dbg_ids0,
    g,
    \up_rdata_reg[31]_0 ,
    \up_rdata[3]_i_2_0 ,
    \up_rdata[23]_i_3_0 ,
    \up_rdata[23]_i_3_1 ,
    up_eot,
    up_wack,
    up_rack,
    s_axi_bready,
    s_axi_rready,
    up_transfer_id,
    up_transfer_id_eot,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_arvalid,
    ctrl_pause,
    p_3_in,
    \up_rdata_d_reg[31]_0 ,
    \up_rdata[2]_i_2_0 ,
    s_axi_wdata,
    s_axi_awaddr,
    s_axi_araddr);
  output [0:0]SR;
  output up_wreq;
  output s_axi_bvalid;
  output s_axi_awready;
  output s_axi_wready;
  output up_rreq;
  output up_axi_rvalid_int_reg_0;
  output s_axi_arready;
  output ctrl_enable_reg;
  output [31:0]Q;
  output [31:0]D;
  output [2:0]\up_raddr_int_reg[4]_0 ;
  output \up_raddr_int_reg[4]_1 ;
  output \up_raddr_int_reg[7]_0 ;
  output up_rreq_int_reg_0;
  output \up_raddr_int_reg[0]_0 ;
  output [0:0]\up_waddr_int_reg[1]_0 ;
  output [1:0]\up_wdata_int_reg[1]_0 ;
  output [0:0]E;
  output \up_waddr_int_reg[2]_0 ;
  output [0:0]\up_waddr_int_reg[2]_1 ;
  output \up_wdata_int_reg[1]_1 ;
  output \up_wdata_int_reg[2]_0 ;
  output \up_wdata_int_reg[1]_2 ;
  output \up_wdata_int_reg[0]_0 ;
  output [31:0]s_axi_rdata;
  input s_axi_aclk;
  input req_gen_valid;
  input ctrl_enable_reg_0;
  input s_axi_aresetn;
  input up_dma_req_valid;
  input [31:0]\up_rdata_reg[31] ;
  input [27:0]m_src_axi_araddr;
  input \up_rdata[0]_i_3_0 ;
  input [6:0]dbg_status;
  input [28:0]\up_rdata_reg[30] ;
  input [11:0]dbg_ids1;
  input [0:0]\up_rdata_reg[9] ;
  input \up_rdata_reg[26] ;
  input \up_rdata_reg[28] ;
  input \up_rdata_reg[29] ;
  input [1:0]\up_irq_source_reg[1] ;
  input \up_rdata_reg[0] ;
  input \up_rdata_reg[1] ;
  input [7:0]dbg_ids0;
  input [3:0]g;
  input [1:0]\up_rdata_reg[31]_0 ;
  input \up_rdata[3]_i_2_0 ;
  input [20:0]\up_rdata[23]_i_3_0 ;
  input [16:0]\up_rdata[23]_i_3_1 ;
  input up_eot;
  input up_wack;
  input up_rack;
  input s_axi_bready;
  input s_axi_rready;
  input [1:0]up_transfer_id;
  input [1:0]up_transfer_id_eot;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input s_axi_arvalid;
  input ctrl_pause;
  input [0:0]p_3_in;
  input [31:0]\up_rdata_d_reg[31]_0 ;
  input \up_rdata[2]_i_2_0 ;
  input [31:0]s_axi_wdata;
  input [8:0]s_axi_awaddr;
  input [8:0]s_axi_araddr;

  wire [31:0]D;
  wire [0:0]E;
  wire [31:0]Q;
  wire [0:0]SR;
  wire ctrl_enable_i_2_n_0;
  wire ctrl_enable_reg;
  wire ctrl_enable_reg_0;
  wire ctrl_pause;
  wire [7:0]dbg_ids0;
  wire [11:0]dbg_ids1;
  wire [6:0]dbg_status;
  wire \fifo.valid_i_4_n_0 ;
  wire \fifo.valid_i_5_n_0 ;
  wire [3:0]g;
  wire \i_regmap_request/up_dma_last ;
  wire \i_regmap_request/up_dma_req_valid0 ;
  wire \m_axis_raddr_reg[2]_i_4_n_0 ;
  wire \m_axis_raddr_reg[2]_i_5_n_0 ;
  wire [27:0]m_src_axi_araddr;
  wire p_0_in6_in;
  wire p_0_in7_in;
  wire p_1_in;
  wire [4:1]p_2_in;
  wire [0:0]p_3_in;
  wire p_5_in;
  wire req_gen_valid;
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
  wire up_axi_arready_int_i_2_n_0;
  wire up_axi_awready_int_i_2_n_0;
  wire up_axi_bvalid_int_i_1_n_0;
  wire \up_axi_rdata_int[31]_i_1_n_0 ;
  wire up_axi_rvalid_int_i_1_n_0;
  wire up_axi_rvalid_int_reg_0;
  wire up_axi_wready_int_i_1_n_0;
  wire up_dma_req_valid;
  wire \up_dma_src_address[30]_i_2_n_0 ;
  wire \up_dma_x_length[23]_i_2_n_0 ;
  wire \up_dma_x_length[23]_i_3_n_0 ;
  wire up_eot;
  wire \up_irq_mask[1]_i_3_n_0 ;
  wire \up_irq_source[1]_i_2_n_0 ;
  wire [1:0]\up_irq_source_reg[1] ;
  wire up_rack;
  wire up_rack_d;
  wire up_rack_s;
  wire [8:0]up_raddr;
  wire \up_raddr_int_reg[0]_0 ;
  wire [2:0]\up_raddr_int_reg[4]_0 ;
  wire \up_raddr_int_reg[4]_1 ;
  wire \up_raddr_int_reg[7]_0 ;
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
  wire \up_rdata[0]_i_3_0 ;
  wire \up_rdata[0]_i_3_n_0 ;
  wire \up_rdata[0]_i_4_n_0 ;
  wire \up_rdata[0]_i_5_n_0 ;
  wire \up_rdata[0]_i_6_n_0 ;
  wire \up_rdata[0]_i_8_n_0 ;
  wire \up_rdata[10]_i_2_n_0 ;
  wire \up_rdata[10]_i_3_n_0 ;
  wire \up_rdata[10]_i_4_n_0 ;
  wire \up_rdata[10]_i_5_n_0 ;
  wire \up_rdata[11]_i_2_n_0 ;
  wire \up_rdata[11]_i_3_n_0 ;
  wire \up_rdata[11]_i_4_n_0 ;
  wire \up_rdata[11]_i_5_n_0 ;
  wire \up_rdata[12]_i_2_n_0 ;
  wire \up_rdata[12]_i_3_n_0 ;
  wire \up_rdata[12]_i_4_n_0 ;
  wire \up_rdata[13]_i_2_n_0 ;
  wire \up_rdata[13]_i_3_n_0 ;
  wire \up_rdata[13]_i_4_n_0 ;
  wire \up_rdata[14]_i_2_n_0 ;
  wire \up_rdata[14]_i_3_n_0 ;
  wire \up_rdata[14]_i_4_n_0 ;
  wire \up_rdata[15]_i_2_n_0 ;
  wire \up_rdata[15]_i_3_n_0 ;
  wire \up_rdata[15]_i_4_n_0 ;
  wire \up_rdata[16]_i_2_n_0 ;
  wire \up_rdata[16]_i_3_n_0 ;
  wire \up_rdata[16]_i_4_n_0 ;
  wire \up_rdata[16]_i_5_n_0 ;
  wire \up_rdata[16]_i_6_n_0 ;
  wire \up_rdata[17]_i_2_n_0 ;
  wire \up_rdata[17]_i_3_n_0 ;
  wire \up_rdata[17]_i_4_n_0 ;
  wire \up_rdata[17]_i_5_n_0 ;
  wire \up_rdata[18]_i_2_n_0 ;
  wire \up_rdata[18]_i_3_n_0 ;
  wire \up_rdata[18]_i_4_n_0 ;
  wire \up_rdata[18]_i_5_n_0 ;
  wire \up_rdata[18]_i_6_n_0 ;
  wire \up_rdata[19]_i_10_n_0 ;
  wire \up_rdata[19]_i_2_n_0 ;
  wire \up_rdata[19]_i_3_n_0 ;
  wire \up_rdata[19]_i_4_n_0 ;
  wire \up_rdata[19]_i_5_n_0 ;
  wire \up_rdata[19]_i_6_n_0 ;
  wire \up_rdata[19]_i_7_n_0 ;
  wire \up_rdata[19]_i_8_n_0 ;
  wire \up_rdata[19]_i_9_n_0 ;
  wire \up_rdata[1]_i_2_n_0 ;
  wire \up_rdata[1]_i_3_n_0 ;
  wire \up_rdata[1]_i_4_n_0 ;
  wire \up_rdata[1]_i_5_n_0 ;
  wire \up_rdata[1]_i_6_n_0 ;
  wire \up_rdata[1]_i_7_n_0 ;
  wire \up_rdata[1]_i_8_n_0 ;
  wire \up_rdata[1]_i_9_n_0 ;
  wire \up_rdata[20]_i_2_n_0 ;
  wire \up_rdata[20]_i_3_n_0 ;
  wire \up_rdata[20]_i_4_n_0 ;
  wire \up_rdata[21]_i_2_n_0 ;
  wire \up_rdata[21]_i_3_n_0 ;
  wire \up_rdata[21]_i_4_n_0 ;
  wire \up_rdata[22]_i_2_n_0 ;
  wire \up_rdata[22]_i_3_n_0 ;
  wire \up_rdata[22]_i_4_n_0 ;
  wire \up_rdata[22]_i_5_n_0 ;
  wire \up_rdata[22]_i_6_n_0 ;
  wire \up_rdata[23]_i_2_n_0 ;
  wire [20:0]\up_rdata[23]_i_3_0 ;
  wire [16:0]\up_rdata[23]_i_3_1 ;
  wire \up_rdata[23]_i_3_n_0 ;
  wire \up_rdata[23]_i_4_n_0 ;
  wire \up_rdata[24]_i_2_n_0 ;
  wire \up_rdata[24]_i_3_n_0 ;
  wire \up_rdata[25]_i_2_n_0 ;
  wire \up_rdata[25]_i_3_n_0 ;
  wire \up_rdata[26]_i_3_n_0 ;
  wire \up_rdata[26]_i_4_n_0 ;
  wire \up_rdata[27]_i_2_n_0 ;
  wire \up_rdata[27]_i_3_n_0 ;
  wire \up_rdata[27]_i_4_n_0 ;
  wire \up_rdata[2]_i_2_0 ;
  wire \up_rdata[2]_i_2_n_0 ;
  wire \up_rdata[2]_i_3_n_0 ;
  wire \up_rdata[2]_i_4_n_0 ;
  wire \up_rdata[2]_i_6_n_0 ;
  wire \up_rdata[30]_i_2_n_0 ;
  wire \up_rdata[30]_i_4_n_0 ;
  wire \up_rdata[30]_i_5_n_0 ;
  wire \up_rdata[30]_i_6_n_0 ;
  wire \up_rdata[31]_i_2_n_0 ;
  wire \up_rdata[31]_i_3_n_0 ;
  wire \up_rdata[3]_i_2_0 ;
  wire \up_rdata[3]_i_2_n_0 ;
  wire \up_rdata[3]_i_3_n_0 ;
  wire \up_rdata[3]_i_4_n_0 ;
  wire \up_rdata[4]_i_2_n_0 ;
  wire \up_rdata[4]_i_3_n_0 ;
  wire \up_rdata[4]_i_4_n_0 ;
  wire \up_rdata[5]_i_2_n_0 ;
  wire \up_rdata[5]_i_3_n_0 ;
  wire \up_rdata[5]_i_4_n_0 ;
  wire \up_rdata[5]_i_5_n_0 ;
  wire \up_rdata[5]_i_6_n_0 ;
  wire \up_rdata[6]_i_10_n_0 ;
  wire \up_rdata[6]_i_11_n_0 ;
  wire \up_rdata[6]_i_12_n_0 ;
  wire \up_rdata[6]_i_13_n_0 ;
  wire \up_rdata[6]_i_14_n_0 ;
  wire \up_rdata[6]_i_15_n_0 ;
  wire \up_rdata[6]_i_16_n_0 ;
  wire \up_rdata[6]_i_2_n_0 ;
  wire \up_rdata[6]_i_3_n_0 ;
  wire \up_rdata[6]_i_4_n_0 ;
  wire \up_rdata[6]_i_5_n_0 ;
  wire \up_rdata[6]_i_6_n_0 ;
  wire \up_rdata[6]_i_7_n_0 ;
  wire \up_rdata[6]_i_8_n_0 ;
  wire \up_rdata[6]_i_9_n_0 ;
  wire \up_rdata[7]_i_2_n_0 ;
  wire \up_rdata[7]_i_3_n_0 ;
  wire \up_rdata[7]_i_4_n_0 ;
  wire \up_rdata[8]_i_2_n_0 ;
  wire \up_rdata[8]_i_3_n_0 ;
  wire \up_rdata[8]_i_4_n_0 ;
  wire \up_rdata[9]_i_2_n_0 ;
  wire \up_rdata[9]_i_3_n_0 ;
  wire \up_rdata[9]_i_4_n_0 ;
  wire \up_rdata[9]_i_5_n_0 ;
  wire \up_rdata[9]_i_6_n_0 ;
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
  wire \up_rdata_d[3]_i_1_n_0 ;
  wire \up_rdata_d[5]_i_1_n_0 ;
  wire \up_rdata_d[7]_i_1_n_0 ;
  wire \up_rdata_d[9]_i_1_n_0 ;
  wire [31:0]\up_rdata_d_reg[31]_0 ;
  wire \up_rdata_reg[0] ;
  wire \up_rdata_reg[1] ;
  wire \up_rdata_reg[26] ;
  wire \up_rdata_reg[28] ;
  wire \up_rdata_reg[29] ;
  wire [28:0]\up_rdata_reg[30] ;
  wire [31:0]\up_rdata_reg[31] ;
  wire [1:0]\up_rdata_reg[31]_0 ;
  wire [0:0]\up_rdata_reg[9] ;
  wire up_rreq;
  wire up_rreq_int_i_1_n_0;
  wire up_rreq_int_reg_0;
  wire up_rsel_inv_i_1_n_0;
  wire \up_scratch[31]_i_2_n_0 ;
  wire \up_scratch[31]_i_3_n_0 ;
  wire [1:0]up_transfer_id;
  wire [1:0]up_transfer_id_eot;
  wire up_wack;
  wire up_wack_d;
  wire up_wack_s;
  wire [8:0]up_waddr;
  wire [0:0]\up_waddr_int_reg[1]_0 ;
  wire \up_waddr_int_reg[2]_0 ;
  wire [0:0]\up_waddr_int_reg[2]_1 ;
  wire \up_wcount[0]_i_1_n_0 ;
  wire \up_wcount[4]_i_1_n_0 ;
  wire \up_wcount_reg_n_0_[0] ;
  wire \up_wcount_reg_n_0_[1] ;
  wire \up_wcount_reg_n_0_[2] ;
  wire \up_wcount_reg_n_0_[3] ;
  wire \up_wdata_int_reg[0]_0 ;
  wire [1:0]\up_wdata_int_reg[1]_0 ;
  wire \up_wdata_int_reg[1]_1 ;
  wire \up_wdata_int_reg[1]_2 ;
  wire \up_wdata_int_reg[2]_0 ;
  wire up_wreq;
  wire up_wreq_int_i_1_n_0;
  wire up_wsel_inv_i_1_n_0;

  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    ctrl_enable_i_1
       (.I0(Q[0]),
        .I1(ctrl_enable_i_2_n_0),
        .I2(up_waddr[2]),
        .I3(\up_dma_x_length[23]_i_2_n_0 ),
        .I4(up_waddr[1]),
        .I5(ctrl_enable_reg_0),
        .O(\up_wdata_int_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    ctrl_enable_i_2
       (.I0(up_waddr[5]),
        .I1(up_waddr[6]),
        .I2(up_waddr[0]),
        .I3(up_waddr[8]),
        .I4(up_waddr[7]),
        .I5(up_wreq),
        .O(ctrl_enable_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    ctrl_pause_i_1
       (.I0(Q[1]),
        .I1(ctrl_enable_i_2_n_0),
        .I2(up_waddr[2]),
        .I3(\up_dma_x_length[23]_i_2_n_0 ),
        .I4(up_waddr[1]),
        .I5(ctrl_pause),
        .O(\up_wdata_int_reg[1]_2 ));
  LUT2 #(
    .INIT(4'hE)) 
    \fifo.valid_i_2 
       (.I0(up_raddr[7]),
        .I1(up_raddr[6]),
        .O(\up_raddr_int_reg[7]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
    \fifo.valid_i_3 
       (.I0(\fifo.valid_i_4_n_0 ),
        .I1(up_raddr[0]),
        .I2(up_rreq),
        .I3(up_raddr[1]),
        .I4(up_raddr[5]),
        .I5(\fifo.valid_i_5_n_0 ),
        .O(\up_raddr_int_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \fifo.valid_i_4 
       (.I0(\up_raddr_int_reg[4]_0 [1]),
        .I1(\up_raddr_int_reg[4]_0 [2]),
        .O(\fifo.valid_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \fifo.valid_i_5 
       (.I0(up_raddr[8]),
        .I1(\up_raddr_int_reg[4]_0 [0]),
        .O(\fifo.valid_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \m_axis_raddr_reg[2]_i_3 
       (.I0(\m_axis_raddr_reg[2]_i_4_n_0 ),
        .I1(up_rreq),
        .I2(\up_raddr_int_reg[4]_0 [2]),
        .I3(\m_axis_raddr_reg[2]_i_5_n_0 ),
        .I4(\up_raddr_int_reg[7]_0 ),
        .I5(\up_raddr_int_reg[4]_0 [1]),
        .O(up_rreq_int_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \m_axis_raddr_reg[2]_i_4 
       (.I0(up_raddr[5]),
        .I1(up_raddr[8]),
        .O(\m_axis_raddr_reg[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \m_axis_raddr_reg[2]_i_5 
       (.I0(up_raddr[0]),
        .I1(\up_raddr_int_reg[4]_0 [0]),
        .I2(up_raddr[1]),
        .O(\m_axis_raddr_reg[2]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h5540)) 
    up_axi_arready_int_i_1
       (.I0(s_axi_arready),
        .I1(up_rack),
        .I2(p_0_in6_in),
        .I3(up_axi_arready_int_i_2_n_0),
        .O(up_axi_arready_int_i_1_n_0));
  LUT5 #(
    .INIT(32'h80000000)) 
    up_axi_arready_int_i_2
       (.I0(p_0_in6_in),
        .I1(\up_rcount_reg_n_0_[1] ),
        .I2(\up_rcount_reg_n_0_[0] ),
        .I3(\up_rcount_reg_n_0_[2] ),
        .I4(\up_rcount_reg_n_0_[3] ),
        .O(up_axi_arready_int_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    up_axi_arready_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_axi_arready_int_i_1_n_0),
        .Q(s_axi_arready),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    up_axi_awready_int_i_1
       (.I0(s_axi_aresetn),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h4)) 
    up_axi_awready_int_i_2
       (.I0(s_axi_awready),
        .I1(up_wack_s),
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
    .INIT(16'h0C88)) 
    up_axi_bvalid_int_i_1
       (.I0(up_wack_d),
        .I1(s_axi_aresetn),
        .I2(s_axi_bready),
        .I3(s_axi_bvalid),
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
       (.I0(s_axi_rready),
        .I1(up_axi_rvalid_int_reg_0),
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
    .INIT(16'h08C8)) 
    up_axi_rvalid_int_i_1
       (.I0(up_rack_d),
        .I1(s_axi_aresetn),
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
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h4)) 
    up_axi_wready_int_i_1
       (.I0(s_axi_wready),
        .I1(up_wack_s),
        .O(up_axi_wready_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    up_axi_wready_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_axi_wready_int_i_1_n_0),
        .Q(s_axi_wready),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    up_dma_enable_tlen_reporting_i_1
       (.I0(Q[2]),
        .I1(\i_regmap_request/up_dma_last ),
        .I2(p_3_in),
        .O(\up_wdata_int_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    up_dma_enable_tlen_reporting_i_2
       (.I0(\up_dma_src_address[30]_i_2_n_0 ),
        .I1(up_wreq),
        .I2(up_waddr[0]),
        .I3(up_waddr[2]),
        .I4(up_waddr[1]),
        .O(\i_regmap_request/up_dma_last ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    up_dma_last_i_1
       (.I0(Q[1]),
        .I1(\i_regmap_request/up_dma_last ),
        .I2(\up_rdata_reg[30] [0]),
        .O(\up_wdata_int_reg[1]_1 ));
  LUT6 #(
    .INIT(64'hC0C04000C0004000)) 
    up_dma_req_valid_i_1
       (.I0(req_gen_valid),
        .I1(ctrl_enable_reg_0),
        .I2(s_axi_aresetn),
        .I3(up_dma_req_valid),
        .I4(\i_regmap_request/up_dma_req_valid0 ),
        .I5(Q[0]),
        .O(ctrl_enable_reg));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    up_dma_req_valid_i_2
       (.I0(ctrl_enable_i_2_n_0),
        .I1(up_waddr[2]),
        .I2(up_waddr[1]),
        .I3(up_waddr[3]),
        .I4(up_waddr[4]),
        .O(\i_regmap_request/up_dma_req_valid0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    \up_dma_src_address[30]_i_1 
       (.I0(\up_dma_src_address[30]_i_2_n_0 ),
        .I1(up_waddr[2]),
        .I2(up_waddr[1]),
        .I3(up_waddr[0]),
        .I4(up_wreq),
        .O(\up_waddr_int_reg[2]_1 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \up_dma_src_address[30]_i_2 
       (.I0(up_waddr[7]),
        .I1(up_waddr[8]),
        .I2(up_waddr[3]),
        .I3(up_waddr[4]),
        .I4(up_waddr[5]),
        .I5(up_waddr[6]),
        .O(\up_dma_src_address[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \up_dma_x_length[23]_i_1 
       (.I0(\up_scratch[31]_i_2_n_0 ),
        .I1(\up_dma_x_length[23]_i_2_n_0 ),
        .I2(\up_dma_x_length[23]_i_3_n_0 ),
        .I3(up_waddr[1]),
        .I4(up_wreq),
        .I5(up_waddr[2]),
        .O(\up_waddr_int_reg[1]_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \up_dma_x_length[23]_i_2 
       (.I0(up_waddr[3]),
        .I1(up_waddr[4]),
        .O(\up_dma_x_length[23]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \up_dma_x_length[23]_i_3 
       (.I0(up_waddr[8]),
        .I1(up_waddr[7]),
        .O(\up_dma_x_length[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \up_irq_mask[1]_i_2 
       (.I0(up_waddr[2]),
        .I1(\up_dma_x_length[23]_i_2_n_0 ),
        .I2(up_waddr[1]),
        .I3(up_waddr[0]),
        .I4(up_wreq),
        .I5(\up_irq_mask[1]_i_3_n_0 ),
        .O(\up_waddr_int_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \up_irq_mask[1]_i_3 
       (.I0(up_waddr[7]),
        .I1(up_waddr[8]),
        .I2(up_waddr[5]),
        .I3(up_waddr[6]),
        .O(\up_irq_mask[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFBAA)) 
    \up_irq_source[0]_i_1 
       (.I0(req_gen_valid),
        .I1(Q[0]),
        .I2(\up_irq_source[1]_i_2_n_0 ),
        .I3(\up_irq_source_reg[1] [0]),
        .O(\up_wdata_int_reg[1]_0 [0]));
  LUT4 #(
    .INIT(16'hFBAA)) 
    \up_irq_source[1]_i_1 
       (.I0(up_eot),
        .I1(Q[1]),
        .I2(\up_irq_source[1]_i_2_n_0 ),
        .I3(\up_irq_source_reg[1] [1]),
        .O(\up_wdata_int_reg[1]_0 [1]));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFFFFFF)) 
    \up_irq_source[1]_i_2 
       (.I0(\up_irq_mask[1]_i_3_n_0 ),
        .I1(up_waddr[2]),
        .I2(\up_dma_x_length[23]_i_2_n_0 ),
        .I3(up_waddr[1]),
        .I4(up_waddr[0]),
        .I5(up_wreq),
        .O(\up_irq_source[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF000080000000)) 
    up_rack_d_i_1
       (.I0(\up_rcount_reg_n_0_[3] ),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(\up_rcount_reg_n_0_[0] ),
        .I3(\up_rcount_reg_n_0_[1] ),
        .I4(p_0_in6_in),
        .I5(up_rack),
        .O(up_rack_s));
  FDRE #(
    .INIT(1'b0)) 
    up_rack_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_rack_s),
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
        .Q(\up_raddr_int_reg[4]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_raddr_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(p_1_in),
        .D(s_axi_araddr[3]),
        .Q(\up_raddr_int_reg[4]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_raddr_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(p_1_in),
        .D(s_axi_araddr[4]),
        .Q(\up_raddr_int_reg[4]_0 [2]),
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
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0440)) 
    \up_rcount[1]_i_1 
       (.I0(up_rack),
        .I1(p_0_in6_in),
        .I2(\up_rcount_reg_n_0_[1] ),
        .I3(\up_rcount_reg_n_0_[0] ),
        .O(\up_rcount[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h04444000)) 
    \up_rcount[2]_i_1 
       (.I0(up_rack),
        .I1(p_0_in6_in),
        .I2(\up_rcount_reg_n_0_[0] ),
        .I3(\up_rcount_reg_n_0_[1] ),
        .I4(\up_rcount_reg_n_0_[2] ),
        .O(\up_rcount[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0444444440000000)) 
    \up_rcount[3]_i_1 
       (.I0(up_rack),
        .I1(p_0_in6_in),
        .I2(\up_rcount_reg_n_0_[1] ),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[2] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(\up_rcount[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \up_rcount[4]_i_1 
       (.I0(p_0_in6_in),
        .I1(up_rreq),
        .O(\up_rcount[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3777777777777777)) 
    \up_rcount[4]_i_2 
       (.I0(up_rack),
        .I1(p_0_in6_in),
        .I2(\up_rcount_reg_n_0_[1] ),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[2] ),
        .I5(\up_rcount_reg_n_0_[3] ),
        .O(\up_rcount[4]_i_2_n_0 ));
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
    .INIT(64'hFFFFFFD0D0D0FFD0)) 
    \up_rdata[0]_i_1 
       (.I0(\up_rdata[0]_i_2_n_0 ),
        .I1(\up_rdata[0]_i_3_n_0 ),
        .I2(\up_rdata[30]_i_5_n_0 ),
        .I3(\up_rdata[0]_i_4_n_0 ),
        .I4(\up_rdata[19]_i_3_n_0 ),
        .I5(\up_rdata[0]_i_5_n_0 ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h7FF57FFF)) 
    \up_rdata[0]_i_2 
       (.I0(\up_rdata[6]_i_5_n_0 ),
        .I1(\up_irq_source_reg[1] [0]),
        .I2(\up_rdata[6]_i_3_n_0 ),
        .I3(\up_rdata[6]_i_4_n_0 ),
        .I4(dbg_status[0]),
        .O(\up_rdata[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hAAEA)) 
    \up_rdata[0]_i_3 
       (.I0(\up_rdata[0]_i_6_n_0 ),
        .I1(ctrl_enable_reg_0),
        .I2(\up_rdata[6]_i_4_n_0 ),
        .I3(\up_rdata[6]_i_3_n_0 ),
        .O(\up_rdata[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF3F3F0F0C8C8CBC8)) 
    \up_rdata[0]_i_4 
       (.I0(\up_rdata_reg[31] [0]),
        .I1(\up_rdata[6]_i_5_n_0 ),
        .I2(\up_rdata[6]_i_4_n_0 ),
        .I3(\up_irq_source_reg[1] [0]),
        .I4(\up_rdata_reg[0] ),
        .I5(\up_rdata[6]_i_3_n_0 ),
        .O(\up_rdata[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00C80008)) 
    \up_rdata[0]_i_5 
       (.I0(dbg_ids1[0]),
        .I1(\up_rdata[6]_i_4_n_0 ),
        .I2(\up_rdata[6]_i_3_n_0 ),
        .I3(\up_rdata[6]_i_5_n_0 ),
        .I4(dbg_ids0[0]),
        .O(\up_rdata[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h080008000800A8A0)) 
    \up_rdata[0]_i_6 
       (.I0(\up_rdata[30]_i_6_n_0 ),
        .I1(\up_rdata[0]_i_3_0 ),
        .I2(up_raddr[0]),
        .I3(up_raddr[1]),
        .I4(\up_raddr_int_reg[4]_0 [0]),
        .I5(\up_rdata[0]_i_8_n_0 ),
        .O(\up_rdata[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hCFFFFFDD)) 
    \up_rdata[0]_i_8 
       (.I0(up_transfer_id[0]),
        .I1(\up_raddr_int_reg[4]_0 [2]),
        .I2(up_transfer_id_eot[0]),
        .I3(up_raddr[1]),
        .I4(\up_raddr_int_reg[4]_0 [1]),
        .O(\up_rdata[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \up_rdata[10]_i_1 
       (.I0(\up_rdata[10]_i_2_n_0 ),
        .I1(\up_rdata[30]_i_5_n_0 ),
        .I2(dbg_ids1[6]),
        .I3(\up_rdata[10]_i_3_n_0 ),
        .I4(\up_rdata_reg[31] [10]),
        .I5(\up_rdata[31]_i_2_n_0 ),
        .O(D[10]));
  LUT6 #(
    .INIT(64'h00000000FF7FFF4F)) 
    \up_rdata[10]_i_2 
       (.I0(m_src_axi_araddr[7]),
        .I1(\up_rdata[6]_i_3_n_0 ),
        .I2(\up_rdata[6]_i_5_n_0 ),
        .I3(\up_rdata[6]_i_4_n_0 ),
        .I4(\up_rdata_reg[9] ),
        .I5(\up_rdata[10]_i_4_n_0 ),
        .O(\up_rdata[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hFFBF)) 
    \up_rdata[10]_i_3 
       (.I0(\up_rdata[6]_i_3_n_0 ),
        .I1(\up_rdata[19]_i_3_n_0 ),
        .I2(\up_rdata[6]_i_4_n_0 ),
        .I3(\up_rdata[6]_i_5_n_0 ),
        .O(\up_rdata[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0020AAAA00200020)) 
    \up_rdata[10]_i_4 
       (.I0(\up_rdata[30]_i_6_n_0 ),
        .I1(up_raddr[0]),
        .I2(up_raddr[1]),
        .I3(\up_rdata[10]_i_5_n_0 ),
        .I4(\up_rdata[9]_i_6_n_0 ),
        .I5(\up_rdata_reg[30] [11]),
        .O(\up_rdata[10]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFC7FFF7)) 
    \up_rdata[10]_i_5 
       (.I0(\up_rdata[23]_i_3_1 [3]),
        .I1(\up_raddr_int_reg[4]_0 [0]),
        .I2(\up_raddr_int_reg[4]_0 [2]),
        .I3(\up_raddr_int_reg[4]_0 [1]),
        .I4(\up_rdata[23]_i_3_0 [7]),
        .O(\up_rdata[10]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hBFBBAAAA)) 
    \up_rdata[11]_i_1 
       (.I0(\up_rdata[11]_i_2_n_0 ),
        .I1(\up_rdata[11]_i_3_n_0 ),
        .I2(\up_rdata[22]_i_4_n_0 ),
        .I3(\up_rdata[11]_i_4_n_0 ),
        .I4(\up_rdata[30]_i_5_n_0 ),
        .O(D[11]));
  LUT6 #(
    .INIT(64'h0003080000000800)) 
    \up_rdata[11]_i_2 
       (.I0(dbg_ids1[7]),
        .I1(\up_rdata[19]_i_3_n_0 ),
        .I2(\up_rdata[6]_i_3_n_0 ),
        .I3(\up_rdata[6]_i_4_n_0 ),
        .I4(\up_rdata[6]_i_5_n_0 ),
        .I5(\up_rdata_reg[31] [11]),
        .O(\up_rdata[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hF7F3F7FF)) 
    \up_rdata[11]_i_3 
       (.I0(m_src_axi_araddr[8]),
        .I1(\up_rdata[6]_i_5_n_0 ),
        .I2(\up_rdata[6]_i_4_n_0 ),
        .I3(\up_rdata[6]_i_3_n_0 ),
        .I4(dbg_status[6]),
        .O(\up_rdata[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000550000C05500)) 
    \up_rdata[11]_i_4 
       (.I0(\up_rdata[11]_i_5_n_0 ),
        .I1(\up_rdata_reg[30] [12]),
        .I2(\up_raddr_int_reg[4]_0 [0]),
        .I3(up_raddr[1]),
        .I4(up_raddr[0]),
        .I5(\up_rdata[22]_i_5_n_0 ),
        .O(\up_rdata[11]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFC7FFF7)) 
    \up_rdata[11]_i_5 
       (.I0(\up_rdata[23]_i_3_1 [4]),
        .I1(\up_raddr_int_reg[4]_0 [0]),
        .I2(\up_raddr_int_reg[4]_0 [2]),
        .I3(\up_raddr_int_reg[4]_0 [1]),
        .I4(\up_rdata[23]_i_3_0 [8]),
        .O(\up_rdata[11]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \up_rdata[12]_i_1 
       (.I0(\up_rdata[31]_i_2_n_0 ),
        .I1(\up_rdata_reg[31] [12]),
        .I2(\up_rdata[12]_i_2_n_0 ),
        .I3(\up_rdata[30]_i_5_n_0 ),
        .O(D[12]));
  LUT6 #(
    .INIT(64'hF0BBFFFBFFBBFFFB)) 
    \up_rdata[12]_i_2 
       (.I0(\up_rdata[12]_i_3_n_0 ),
        .I1(\up_rdata[30]_i_6_n_0 ),
        .I2(\up_rdata[6]_i_4_n_0 ),
        .I3(\up_rdata[6]_i_5_n_0 ),
        .I4(\up_rdata[6]_i_3_n_0 ),
        .I5(m_src_axi_araddr[9]),
        .O(\up_rdata[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF7F7FF00FFFF)) 
    \up_rdata[12]_i_3 
       (.I0(\up_rdata_reg[30] [13]),
        .I1(\up_raddr_int_reg[4]_0 [0]),
        .I2(\up_rdata[22]_i_5_n_0 ),
        .I3(\up_rdata[12]_i_4_n_0 ),
        .I4(up_raddr[1]),
        .I5(up_raddr[0]),
        .O(\up_rdata[12]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFC7FFF7)) 
    \up_rdata[12]_i_4 
       (.I0(\up_rdata[23]_i_3_1 [5]),
        .I1(\up_raddr_int_reg[4]_0 [0]),
        .I2(\up_raddr_int_reg[4]_0 [2]),
        .I3(\up_raddr_int_reg[4]_0 [1]),
        .I4(\up_rdata[23]_i_3_0 [9]),
        .O(\up_rdata[12]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \up_rdata[13]_i_1 
       (.I0(\up_rdata[31]_i_2_n_0 ),
        .I1(\up_rdata_reg[31] [13]),
        .I2(\up_rdata[13]_i_2_n_0 ),
        .I3(\up_rdata[30]_i_5_n_0 ),
        .O(D[13]));
  LUT6 #(
    .INIT(64'hF0BBFFFBFFBBFFFB)) 
    \up_rdata[13]_i_2 
       (.I0(\up_rdata[13]_i_3_n_0 ),
        .I1(\up_rdata[30]_i_6_n_0 ),
        .I2(\up_rdata[6]_i_4_n_0 ),
        .I3(\up_rdata[6]_i_5_n_0 ),
        .I4(\up_rdata[6]_i_3_n_0 ),
        .I5(m_src_axi_araddr[10]),
        .O(\up_rdata[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF7F7FF00FFFF)) 
    \up_rdata[13]_i_3 
       (.I0(\up_rdata_reg[30] [14]),
        .I1(\up_raddr_int_reg[4]_0 [0]),
        .I2(\up_rdata[22]_i_5_n_0 ),
        .I3(\up_rdata[13]_i_4_n_0 ),
        .I4(up_raddr[1]),
        .I5(up_raddr[0]),
        .O(\up_rdata[13]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFC7FFF7)) 
    \up_rdata[13]_i_4 
       (.I0(\up_rdata[23]_i_3_1 [6]),
        .I1(\up_raddr_int_reg[4]_0 [0]),
        .I2(\up_raddr_int_reg[4]_0 [2]),
        .I3(\up_raddr_int_reg[4]_0 [1]),
        .I4(\up_rdata[23]_i_3_0 [10]),
        .O(\up_rdata[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hABFFABABAAAAAAAA)) 
    \up_rdata[14]_i_1 
       (.I0(\up_rdata[14]_i_2_n_0 ),
        .I1(\up_rdata[14]_i_3_n_0 ),
        .I2(\up_rdata[22]_i_4_n_0 ),
        .I3(\up_rdata[30]_i_4_n_0 ),
        .I4(m_src_axi_araddr[11]),
        .I5(\up_rdata[30]_i_5_n_0 ),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h00003008)) 
    \up_rdata[14]_i_2 
       (.I0(\up_rdata_reg[31] [14]),
        .I1(\up_rdata[6]_i_5_n_0 ),
        .I2(\up_rdata[6]_i_4_n_0 ),
        .I3(\up_rdata[6]_i_3_n_0 ),
        .I4(\up_rdata[19]_i_3_n_0 ),
        .O(\up_rdata[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF7F7FF00FFFF)) 
    \up_rdata[14]_i_3 
       (.I0(\up_rdata_reg[30] [15]),
        .I1(\up_raddr_int_reg[4]_0 [0]),
        .I2(\up_rdata[22]_i_5_n_0 ),
        .I3(\up_rdata[14]_i_4_n_0 ),
        .I4(up_raddr[1]),
        .I5(up_raddr[0]),
        .O(\up_rdata[14]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFC7FFF7)) 
    \up_rdata[14]_i_4 
       (.I0(\up_rdata[23]_i_3_1 [7]),
        .I1(\up_raddr_int_reg[4]_0 [0]),
        .I2(\up_raddr_int_reg[4]_0 [2]),
        .I3(\up_raddr_int_reg[4]_0 [1]),
        .I4(\up_rdata[23]_i_3_0 [11]),
        .O(\up_rdata[14]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \up_rdata[15]_i_1 
       (.I0(\up_rdata[31]_i_2_n_0 ),
        .I1(\up_rdata_reg[31] [15]),
        .I2(\up_rdata[15]_i_2_n_0 ),
        .I3(\up_rdata[30]_i_5_n_0 ),
        .O(D[15]));
  LUT6 #(
    .INIT(64'hF0BBFFFBFFBBFFFB)) 
    \up_rdata[15]_i_2 
       (.I0(\up_rdata[15]_i_3_n_0 ),
        .I1(\up_rdata[30]_i_6_n_0 ),
        .I2(\up_rdata[6]_i_4_n_0 ),
        .I3(\up_rdata[6]_i_5_n_0 ),
        .I4(\up_rdata[6]_i_3_n_0 ),
        .I5(m_src_axi_araddr[12]),
        .O(\up_rdata[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF7F7FF00FFFF)) 
    \up_rdata[15]_i_3 
       (.I0(\up_rdata_reg[30] [16]),
        .I1(\up_raddr_int_reg[4]_0 [0]),
        .I2(\up_rdata[22]_i_5_n_0 ),
        .I3(\up_rdata[15]_i_4_n_0 ),
        .I4(up_raddr[1]),
        .I5(up_raddr[0]),
        .O(\up_rdata[15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFC7FFF7)) 
    \up_rdata[15]_i_4 
       (.I0(\up_rdata[23]_i_3_1 [8]),
        .I1(\up_raddr_int_reg[4]_0 [0]),
        .I2(\up_raddr_int_reg[4]_0 [2]),
        .I3(\up_raddr_int_reg[4]_0 [1]),
        .I4(\up_rdata[23]_i_3_0 [12]),
        .O(\up_rdata[15]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h33550F55)) 
    \up_rdata[16]_i_1 
       (.I0(\up_rdata[16]_i_2_n_0 ),
        .I1(\up_rdata[16]_i_3_n_0 ),
        .I2(\up_rdata[16]_i_4_n_0 ),
        .I3(\up_rdata[19]_i_3_n_0 ),
        .I4(\up_rdata[19]_i_5_n_0 ),
        .O(D[16]));
  LUT4 #(
    .INIT(16'hE7F7)) 
    \up_rdata[16]_i_2 
       (.I0(\up_rdata[6]_i_3_n_0 ),
        .I1(\up_rdata[6]_i_4_n_0 ),
        .I2(\up_rdata[6]_i_5_n_0 ),
        .I3(\up_rdata_reg[31] [16]),
        .O(\up_rdata[16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h1011DFDD)) 
    \up_rdata[16]_i_3 
       (.I0(g[0]),
        .I1(\up_rdata[6]_i_5_n_0 ),
        .I2(\up_rdata[6]_i_3_n_0 ),
        .I3(\up_rdata[6]_i_4_n_0 ),
        .I4(dbg_ids1[8]),
        .O(\up_rdata[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF0BBFFFBFFBBFFFB)) 
    \up_rdata[16]_i_4 
       (.I0(\up_rdata[16]_i_5_n_0 ),
        .I1(\up_rdata[30]_i_6_n_0 ),
        .I2(\up_rdata[6]_i_4_n_0 ),
        .I3(\up_rdata[6]_i_5_n_0 ),
        .I4(\up_rdata[6]_i_3_n_0 ),
        .I5(m_src_axi_araddr[13]),
        .O(\up_rdata[16]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF7F7FF00FFFF)) 
    \up_rdata[16]_i_5 
       (.I0(\up_rdata_reg[30] [17]),
        .I1(\up_raddr_int_reg[4]_0 [0]),
        .I2(\up_rdata[22]_i_5_n_0 ),
        .I3(\up_rdata[16]_i_6_n_0 ),
        .I4(up_raddr[1]),
        .I5(up_raddr[0]),
        .O(\up_rdata[16]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFC7FFF7)) 
    \up_rdata[16]_i_6 
       (.I0(\up_rdata[23]_i_3_1 [9]),
        .I1(\up_raddr_int_reg[4]_0 [0]),
        .I2(\up_raddr_int_reg[4]_0 [2]),
        .I3(\up_raddr_int_reg[4]_0 [1]),
        .I4(\up_rdata[23]_i_3_0 [13]),
        .O(\up_rdata[16]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \up_rdata[17]_i_1 
       (.I0(\up_rdata[17]_i_2_n_0 ),
        .I1(\up_rdata[30]_i_5_n_0 ),
        .I2(\up_rdata[17]_i_3_n_0 ),
        .I3(\up_rdata[27]_i_3_n_0 ),
        .I4(\up_rdata_reg[31] [17]),
        .I5(\up_rdata[31]_i_2_n_0 ),
        .O(D[17]));
  LUT6 #(
    .INIT(64'hF0BBFFFBFFBBFFFB)) 
    \up_rdata[17]_i_2 
       (.I0(\up_rdata[17]_i_4_n_0 ),
        .I1(\up_rdata[30]_i_6_n_0 ),
        .I2(\up_rdata[6]_i_4_n_0 ),
        .I3(\up_rdata[6]_i_5_n_0 ),
        .I4(\up_rdata[6]_i_3_n_0 ),
        .I5(m_src_axi_araddr[14]),
        .O(\up_rdata[17]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEFEE2022)) 
    \up_rdata[17]_i_3 
       (.I0(g[1]),
        .I1(\up_rdata[6]_i_5_n_0 ),
        .I2(\up_rdata[6]_i_3_n_0 ),
        .I3(\up_rdata[6]_i_4_n_0 ),
        .I4(dbg_ids1[9]),
        .O(\up_rdata[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF7F7FF00FFFF)) 
    \up_rdata[17]_i_4 
       (.I0(\up_rdata_reg[30] [18]),
        .I1(\up_raddr_int_reg[4]_0 [0]),
        .I2(\up_rdata[22]_i_5_n_0 ),
        .I3(\up_rdata[17]_i_5_n_0 ),
        .I4(up_raddr[1]),
        .I5(up_raddr[0]),
        .O(\up_rdata[17]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFC7FFF7)) 
    \up_rdata[17]_i_5 
       (.I0(\up_rdata[23]_i_3_1 [10]),
        .I1(\up_raddr_int_reg[4]_0 [0]),
        .I2(\up_raddr_int_reg[4]_0 [2]),
        .I3(\up_raddr_int_reg[4]_0 [1]),
        .I4(\up_rdata[23]_i_3_0 [14]),
        .O(\up_rdata[17]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hCC550F55)) 
    \up_rdata[18]_i_1 
       (.I0(\up_rdata[18]_i_2_n_0 ),
        .I1(\up_rdata[18]_i_3_n_0 ),
        .I2(\up_rdata[18]_i_4_n_0 ),
        .I3(\up_rdata[19]_i_3_n_0 ),
        .I4(\up_rdata[19]_i_5_n_0 ),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h03DF)) 
    \up_rdata[18]_i_2 
       (.I0(\up_rdata_reg[31] [18]),
        .I1(\up_rdata[6]_i_3_n_0 ),
        .I2(\up_rdata[6]_i_5_n_0 ),
        .I3(\up_rdata[6]_i_4_n_0 ),
        .O(\up_rdata[18]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEFEE2022)) 
    \up_rdata[18]_i_3 
       (.I0(g[2]),
        .I1(\up_rdata[6]_i_5_n_0 ),
        .I2(\up_rdata[6]_i_3_n_0 ),
        .I3(\up_rdata[6]_i_4_n_0 ),
        .I4(dbg_ids1[10]),
        .O(\up_rdata[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF0BBFFFBFFBBFFFB)) 
    \up_rdata[18]_i_4 
       (.I0(\up_rdata[18]_i_5_n_0 ),
        .I1(\up_rdata[30]_i_6_n_0 ),
        .I2(\up_rdata[6]_i_4_n_0 ),
        .I3(\up_rdata[6]_i_5_n_0 ),
        .I4(\up_rdata[6]_i_3_n_0 ),
        .I5(m_src_axi_araddr[15]),
        .O(\up_rdata[18]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF7F7FF00FFFF)) 
    \up_rdata[18]_i_5 
       (.I0(\up_rdata_reg[30] [19]),
        .I1(\up_raddr_int_reg[4]_0 [0]),
        .I2(\up_rdata[22]_i_5_n_0 ),
        .I3(\up_rdata[18]_i_6_n_0 ),
        .I4(up_raddr[1]),
        .I5(up_raddr[0]),
        .O(\up_rdata[18]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFC7FFF7)) 
    \up_rdata[18]_i_6 
       (.I0(\up_rdata[23]_i_3_1 [11]),
        .I1(\up_raddr_int_reg[4]_0 [0]),
        .I2(\up_raddr_int_reg[4]_0 [2]),
        .I3(\up_raddr_int_reg[4]_0 [1]),
        .I4(\up_rdata[23]_i_3_0 [15]),
        .O(\up_rdata[18]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h0347CF47)) 
    \up_rdata[19]_i_1 
       (.I0(\up_rdata[19]_i_2_n_0 ),
        .I1(\up_rdata[19]_i_3_n_0 ),
        .I2(\up_rdata[19]_i_4_n_0 ),
        .I3(\up_rdata[19]_i_5_n_0 ),
        .I4(\up_rdata[19]_i_6_n_0 ),
        .O(D[19]));
  LUT5 #(
    .INIT(32'hFFC7FFF7)) 
    \up_rdata[19]_i_10 
       (.I0(\up_rdata[23]_i_3_1 [12]),
        .I1(\up_raddr_int_reg[4]_0 [0]),
        .I2(\up_raddr_int_reg[4]_0 [2]),
        .I3(\up_raddr_int_reg[4]_0 [1]),
        .I4(\up_rdata[23]_i_3_0 [16]),
        .O(\up_rdata[19]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hF0BBFFFBFFBBFFFB)) 
    \up_rdata[19]_i_2 
       (.I0(\up_rdata[19]_i_7_n_0 ),
        .I1(\up_rdata[30]_i_6_n_0 ),
        .I2(\up_rdata[6]_i_4_n_0 ),
        .I3(\up_rdata[6]_i_5_n_0 ),
        .I4(\up_rdata[6]_i_3_n_0 ),
        .I5(m_src_axi_araddr[16]),
        .O(\up_rdata[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFCC)) 
    \up_rdata[19]_i_3 
       (.I0(\up_raddr_int_reg[4]_0 [1]),
        .I1(\up_raddr_int_reg[4]_0 [2]),
        .I2(up_raddr[8]),
        .I3(\up_raddr_int_reg[7]_0 ),
        .I4(\up_rdata[19]_i_8_n_0 ),
        .I5(\up_rdata[19]_i_9_n_0 ),
        .O(\up_rdata[19]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hE7F7)) 
    \up_rdata[19]_i_4 
       (.I0(\up_rdata[6]_i_3_n_0 ),
        .I1(\up_rdata[6]_i_4_n_0 ),
        .I2(\up_rdata[6]_i_5_n_0 ),
        .I3(\up_rdata_reg[31] [19]),
        .O(\up_rdata[19]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \up_rdata[19]_i_5 
       (.I0(\up_rdata[6]_i_4_n_0 ),
        .I1(\up_rdata[6]_i_5_n_0 ),
        .O(\up_rdata[19]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h1011DFDD)) 
    \up_rdata[19]_i_6 
       (.I0(g[3]),
        .I1(\up_rdata[6]_i_5_n_0 ),
        .I2(\up_rdata[6]_i_3_n_0 ),
        .I3(\up_rdata[6]_i_4_n_0 ),
        .I4(dbg_ids1[11]),
        .O(\up_rdata[19]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF7F7FF00FFFF)) 
    \up_rdata[19]_i_7 
       (.I0(\up_rdata_reg[30] [20]),
        .I1(\up_raddr_int_reg[4]_0 [0]),
        .I2(\up_rdata[22]_i_5_n_0 ),
        .I3(\up_rdata[19]_i_10_n_0 ),
        .I4(up_raddr[1]),
        .I5(up_raddr[0]),
        .O(\up_rdata[19]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \up_rdata[19]_i_8 
       (.I0(up_raddr[8]),
        .I1(up_raddr[5]),
        .I2(\up_raddr_int_reg[4]_0 [1]),
        .I3(up_raddr[0]),
        .O(\up_rdata[19]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hFFF83C28)) 
    \up_rdata[19]_i_9 
       (.I0(up_raddr[0]),
        .I1(\up_raddr_int_reg[4]_0 [1]),
        .I2(\up_raddr_int_reg[4]_0 [0]),
        .I3(up_raddr[5]),
        .I4(up_raddr[1]),
        .O(\up_rdata[19]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFD0D0D0FFD0)) 
    \up_rdata[1]_i_1 
       (.I0(\up_rdata[1]_i_2_n_0 ),
        .I1(\up_rdata[1]_i_3_n_0 ),
        .I2(\up_rdata[30]_i_5_n_0 ),
        .I3(\up_rdata[1]_i_4_n_0 ),
        .I4(\up_rdata[19]_i_3_n_0 ),
        .I5(\up_rdata[1]_i_5_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFF0D0000FFFFFFFF)) 
    \up_rdata[1]_i_2 
       (.I0(up_transfer_id[1]),
        .I1(\up_rdata[22]_i_5_n_0 ),
        .I2(up_raddr[1]),
        .I3(\up_rdata[1]_i_6_n_0 ),
        .I4(\up_rdata[1]_i_7_n_0 ),
        .I5(\up_rdata[30]_i_6_n_0 ),
        .O(\up_rdata[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAF08A0080F080008)) 
    \up_rdata[1]_i_3 
       (.I0(\up_rdata[6]_i_5_n_0 ),
        .I1(dbg_status[1]),
        .I2(\up_rdata[6]_i_3_n_0 ),
        .I3(\up_rdata[6]_i_4_n_0 ),
        .I4(ctrl_pause),
        .I5(\up_irq_source_reg[1] [1]),
        .O(\up_rdata[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000FFFC20000FFC2)) 
    \up_rdata[1]_i_4 
       (.I0(\up_irq_source_reg[1] [1]),
        .I1(\up_rdata_reg[1] ),
        .I2(\up_rdata[6]_i_3_n_0 ),
        .I3(\up_rdata[6]_i_4_n_0 ),
        .I4(\up_rdata[6]_i_5_n_0 ),
        .I5(\up_rdata_reg[31] [1]),
        .O(\up_rdata[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00C80008)) 
    \up_rdata[1]_i_5 
       (.I0(dbg_ids1[1]),
        .I1(\up_rdata[6]_i_4_n_0 ),
        .I2(\up_rdata[6]_i_3_n_0 ),
        .I3(\up_rdata[6]_i_5_n_0 ),
        .I4(dbg_ids0[1]),
        .O(\up_rdata[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAFFAEFFFFFFAE)) 
    \up_rdata[1]_i_6 
       (.I0(\up_rdata[1]_i_8_n_0 ),
        .I1(up_raddr[1]),
        .I2(\up_rdata_reg[30] [0]),
        .I3(\up_raddr_int_reg[4]_0 [2]),
        .I4(\up_raddr_int_reg[4]_0 [1]),
        .I5(up_transfer_id_eot[1]),
        .O(\up_rdata[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0F35FFFFFFFFF)) 
    \up_rdata[1]_i_7 
       (.I0(\up_rdata_reg[31]_0 [0]),
        .I1(\up_rdata[23]_i_3_0 [0]),
        .I2(\up_raddr_int_reg[4]_0 [1]),
        .I3(\up_raddr_int_reg[4]_0 [2]),
        .I4(\up_raddr_int_reg[4]_0 [0]),
        .I5(\up_rdata[1]_i_9_n_0 ),
        .O(\up_rdata[1]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \up_rdata[1]_i_8 
       (.I0(\up_raddr_int_reg[4]_0 [0]),
        .I1(up_raddr[0]),
        .O(\up_rdata[1]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \up_rdata[1]_i_9 
       (.I0(up_raddr[1]),
        .I1(up_raddr[0]),
        .O(\up_rdata[1]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \up_rdata[20]_i_1 
       (.I0(\up_rdata[31]_i_2_n_0 ),
        .I1(\up_rdata_reg[31] [20]),
        .I2(\up_rdata[20]_i_2_n_0 ),
        .I3(\up_rdata[30]_i_5_n_0 ),
        .O(D[20]));
  LUT6 #(
    .INIT(64'hF0BBFFFBFFBBFFFB)) 
    \up_rdata[20]_i_2 
       (.I0(\up_rdata[20]_i_3_n_0 ),
        .I1(\up_rdata[30]_i_6_n_0 ),
        .I2(\up_rdata[6]_i_4_n_0 ),
        .I3(\up_rdata[6]_i_5_n_0 ),
        .I4(\up_rdata[6]_i_3_n_0 ),
        .I5(m_src_axi_araddr[17]),
        .O(\up_rdata[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF7F7FF00FFFF)) 
    \up_rdata[20]_i_3 
       (.I0(\up_rdata_reg[30] [21]),
        .I1(\up_raddr_int_reg[4]_0 [0]),
        .I2(\up_rdata[22]_i_5_n_0 ),
        .I3(\up_rdata[20]_i_4_n_0 ),
        .I4(up_raddr[1]),
        .I5(up_raddr[0]),
        .O(\up_rdata[20]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFC7FFF7)) 
    \up_rdata[20]_i_4 
       (.I0(\up_rdata[23]_i_3_1 [13]),
        .I1(\up_raddr_int_reg[4]_0 [0]),
        .I2(\up_raddr_int_reg[4]_0 [2]),
        .I3(\up_raddr_int_reg[4]_0 [1]),
        .I4(\up_rdata[23]_i_3_0 [17]),
        .O(\up_rdata[20]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \up_rdata[21]_i_1 
       (.I0(\up_rdata[31]_i_2_n_0 ),
        .I1(\up_rdata_reg[31] [21]),
        .I2(\up_rdata[21]_i_2_n_0 ),
        .I3(\up_rdata[30]_i_5_n_0 ),
        .O(D[21]));
  LUT6 #(
    .INIT(64'hF0BBFFFBFFBBFFFB)) 
    \up_rdata[21]_i_2 
       (.I0(\up_rdata[21]_i_3_n_0 ),
        .I1(\up_rdata[30]_i_6_n_0 ),
        .I2(\up_rdata[6]_i_4_n_0 ),
        .I3(\up_rdata[6]_i_5_n_0 ),
        .I4(\up_rdata[6]_i_3_n_0 ),
        .I5(m_src_axi_araddr[18]),
        .O(\up_rdata[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF7F7FF00FFFF)) 
    \up_rdata[21]_i_3 
       (.I0(\up_rdata_reg[30] [22]),
        .I1(\up_raddr_int_reg[4]_0 [0]),
        .I2(\up_rdata[22]_i_5_n_0 ),
        .I3(\up_rdata[21]_i_4_n_0 ),
        .I4(up_raddr[1]),
        .I5(up_raddr[0]),
        .O(\up_rdata[21]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFC7FFF7)) 
    \up_rdata[21]_i_4 
       (.I0(\up_rdata[23]_i_3_1 [14]),
        .I1(\up_raddr_int_reg[4]_0 [0]),
        .I2(\up_raddr_int_reg[4]_0 [2]),
        .I3(\up_raddr_int_reg[4]_0 [1]),
        .I4(\up_rdata[23]_i_3_0 [18]),
        .O(\up_rdata[21]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hABFFABABAAAAAAAA)) 
    \up_rdata[22]_i_1 
       (.I0(\up_rdata[22]_i_2_n_0 ),
        .I1(\up_rdata[22]_i_3_n_0 ),
        .I2(\up_rdata[22]_i_4_n_0 ),
        .I3(\up_rdata[30]_i_4_n_0 ),
        .I4(m_src_axi_araddr[19]),
        .I5(\up_rdata[30]_i_5_n_0 ),
        .O(D[22]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h00003008)) 
    \up_rdata[22]_i_2 
       (.I0(\up_rdata_reg[31] [22]),
        .I1(\up_rdata[6]_i_5_n_0 ),
        .I2(\up_rdata[6]_i_4_n_0 ),
        .I3(\up_rdata[6]_i_3_n_0 ),
        .I4(\up_rdata[19]_i_3_n_0 ),
        .O(\up_rdata[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF7F7FF00FFFF)) 
    \up_rdata[22]_i_3 
       (.I0(\up_rdata_reg[30] [23]),
        .I1(\up_raddr_int_reg[4]_0 [0]),
        .I2(\up_rdata[22]_i_5_n_0 ),
        .I3(\up_rdata[22]_i_6_n_0 ),
        .I4(up_raddr[1]),
        .I5(up_raddr[0]),
        .O(\up_rdata[22]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hFF5D)) 
    \up_rdata[22]_i_4 
       (.I0(\up_rdata[30]_i_6_n_0 ),
        .I1(\up_rdata[6]_i_4_n_0 ),
        .I2(\up_rdata[6]_i_3_n_0 ),
        .I3(\up_rdata[6]_i_5_n_0 ),
        .O(\up_rdata[22]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \up_rdata[22]_i_5 
       (.I0(\up_raddr_int_reg[4]_0 [1]),
        .I1(\up_raddr_int_reg[4]_0 [2]),
        .O(\up_rdata[22]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFC7FFF7)) 
    \up_rdata[22]_i_6 
       (.I0(\up_rdata[23]_i_3_1 [15]),
        .I1(\up_raddr_int_reg[4]_0 [0]),
        .I2(\up_raddr_int_reg[4]_0 [2]),
        .I3(\up_raddr_int_reg[4]_0 [1]),
        .I4(\up_rdata[23]_i_3_0 [19]),
        .O(\up_rdata[22]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \up_rdata[23]_i_1 
       (.I0(\up_rdata[31]_i_2_n_0 ),
        .I1(\up_rdata_reg[31] [23]),
        .I2(\up_rdata[23]_i_2_n_0 ),
        .I3(\up_rdata[30]_i_5_n_0 ),
        .O(D[23]));
  LUT6 #(
    .INIT(64'hF0DDFFFDFFDDFFFD)) 
    \up_rdata[23]_i_2 
       (.I0(\up_rdata[30]_i_6_n_0 ),
        .I1(\up_rdata[23]_i_3_n_0 ),
        .I2(\up_rdata[6]_i_4_n_0 ),
        .I3(\up_rdata[6]_i_5_n_0 ),
        .I4(\up_rdata[6]_i_3_n_0 ),
        .I5(m_src_axi_araddr[20]),
        .O(\up_rdata[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFAFF3AFFFAFFFAF)) 
    \up_rdata[23]_i_3 
       (.I0(\up_rdata[23]_i_4_n_0 ),
        .I1(\up_raddr_int_reg[4]_0 [0]),
        .I2(up_raddr[1]),
        .I3(up_raddr[0]),
        .I4(\up_rdata[22]_i_5_n_0 ),
        .I5(\up_rdata_reg[30] [24]),
        .O(\up_rdata[23]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFC7FFF7)) 
    \up_rdata[23]_i_4 
       (.I0(\up_rdata[23]_i_3_1 [16]),
        .I1(\up_raddr_int_reg[4]_0 [0]),
        .I2(\up_raddr_int_reg[4]_0 [2]),
        .I3(\up_raddr_int_reg[4]_0 [1]),
        .I4(\up_rdata[23]_i_3_0 [20]),
        .O(\up_rdata[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \up_rdata[24]_i_1 
       (.I0(\up_rdata_reg[31] [24]),
        .I1(\up_rdata[31]_i_2_n_0 ),
        .I2(\up_rdata[27]_i_3_n_0 ),
        .I3(\up_rdata[24]_i_2_n_0 ),
        .I4(\up_rdata[24]_i_3_n_0 ),
        .I5(\up_rdata[30]_i_5_n_0 ),
        .O(D[24]));
  LUT5 #(
    .INIT(32'h1011DFDD)) 
    \up_rdata[24]_i_2 
       (.I0(dbg_ids0[4]),
        .I1(\up_rdata[6]_i_5_n_0 ),
        .I2(\up_rdata[6]_i_3_n_0 ),
        .I3(\up_rdata[6]_i_4_n_0 ),
        .I4(dbg_ids1[8]),
        .O(\up_rdata[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hDFFF0000DFFFDFFF)) 
    \up_rdata[24]_i_3 
       (.I0(m_src_axi_araddr[21]),
        .I1(\up_rdata[6]_i_4_n_0 ),
        .I2(\up_rdata[6]_i_5_n_0 ),
        .I3(\up_rdata[6]_i_3_n_0 ),
        .I4(\up_raddr_int_reg[4]_1 ),
        .I5(\up_rdata_reg[30] [25]),
        .O(\up_rdata[24]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \up_rdata[25]_i_1 
       (.I0(\up_rdata[25]_i_2_n_0 ),
        .I1(\up_rdata[30]_i_5_n_0 ),
        .I2(\up_rdata_reg[31] [25]),
        .I3(\up_rdata[31]_i_2_n_0 ),
        .I4(\up_rdata[27]_i_3_n_0 ),
        .I5(\up_rdata[25]_i_3_n_0 ),
        .O(D[25]));
  LUT6 #(
    .INIT(64'hDFFF0000DFFFDFFF)) 
    \up_rdata[25]_i_2 
       (.I0(m_src_axi_araddr[22]),
        .I1(\up_rdata[6]_i_4_n_0 ),
        .I2(\up_rdata[6]_i_5_n_0 ),
        .I3(\up_rdata[6]_i_3_n_0 ),
        .I4(\up_raddr_int_reg[4]_1 ),
        .I5(\up_rdata_reg[30] [26]),
        .O(\up_rdata[25]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h1011DFDD)) 
    \up_rdata[25]_i_3 
       (.I0(dbg_ids0[5]),
        .I1(\up_rdata[6]_i_5_n_0 ),
        .I2(\up_rdata[6]_i_3_n_0 ),
        .I3(\up_rdata[6]_i_4_n_0 ),
        .I4(dbg_ids1[9]),
        .O(\up_rdata[25]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF200)) 
    \up_rdata[26]_i_1 
       (.I0(m_src_axi_araddr[23]),
        .I1(\up_rdata[30]_i_4_n_0 ),
        .I2(\up_rdata_reg[26] ),
        .I3(\up_rdata[30]_i_5_n_0 ),
        .I4(\up_rdata[26]_i_3_n_0 ),
        .I5(\up_rdata[26]_i_4_n_0 ),
        .O(D[26]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h05000040)) 
    \up_rdata[26]_i_3 
       (.I0(\up_rdata[19]_i_3_n_0 ),
        .I1(\up_rdata_reg[31] [26]),
        .I2(\up_rdata[6]_i_5_n_0 ),
        .I3(\up_rdata[6]_i_4_n_0 ),
        .I4(\up_rdata[6]_i_3_n_0 ),
        .O(\up_rdata[26]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000E2000000)) 
    \up_rdata[26]_i_4 
       (.I0(dbg_ids1[10]),
        .I1(\up_rdata[6]_i_3_n_0 ),
        .I2(dbg_ids0[6]),
        .I3(\up_rdata[19]_i_3_n_0 ),
        .I4(\up_rdata[6]_i_4_n_0 ),
        .I5(\up_rdata[6]_i_5_n_0 ),
        .O(\up_rdata[26]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF222FFFFF222F222)) 
    \up_rdata[27]_i_1 
       (.I0(\up_rdata_reg[31] [27]),
        .I1(\up_rdata[31]_i_2_n_0 ),
        .I2(\up_rdata[27]_i_2_n_0 ),
        .I3(\up_rdata[27]_i_3_n_0 ),
        .I4(\up_rdata[27]_i_4_n_0 ),
        .I5(\up_rdata[30]_i_5_n_0 ),
        .O(D[27]));
  LUT5 #(
    .INIT(32'hEFEE2022)) 
    \up_rdata[27]_i_2 
       (.I0(dbg_ids0[7]),
        .I1(\up_rdata[6]_i_5_n_0 ),
        .I2(\up_rdata[6]_i_3_n_0 ),
        .I3(\up_rdata[6]_i_4_n_0 ),
        .I4(dbg_ids1[11]),
        .O(\up_rdata[27]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \up_rdata[27]_i_3 
       (.I0(\up_rdata[6]_i_5_n_0 ),
        .I1(\up_rdata[6]_i_4_n_0 ),
        .I2(\up_rdata[19]_i_3_n_0 ),
        .O(\up_rdata[27]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hDFFF0000DFFFDFFF)) 
    \up_rdata[27]_i_4 
       (.I0(m_src_axi_araddr[24]),
        .I1(\up_rdata[6]_i_4_n_0 ),
        .I2(\up_rdata[6]_i_5_n_0 ),
        .I3(\up_rdata[6]_i_3_n_0 ),
        .I4(\up_raddr_int_reg[4]_1 ),
        .I5(\up_rdata_reg[30] [27]),
        .O(\up_rdata[27]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF44F444444444)) 
    \up_rdata[28]_i_1 
       (.I0(\up_rdata[31]_i_2_n_0 ),
        .I1(\up_rdata_reg[31] [28]),
        .I2(m_src_axi_araddr[25]),
        .I3(\up_rdata[30]_i_4_n_0 ),
        .I4(\up_rdata_reg[28] ),
        .I5(\up_rdata[30]_i_5_n_0 ),
        .O(D[28]));
  LUT6 #(
    .INIT(64'hFFFF44F444444444)) 
    \up_rdata[29]_i_1 
       (.I0(\up_rdata[31]_i_2_n_0 ),
        .I1(\up_rdata_reg[31] [29]),
        .I2(m_src_axi_araddr[26]),
        .I3(\up_rdata[30]_i_4_n_0 ),
        .I4(\up_rdata_reg[29] ),
        .I5(\up_rdata[30]_i_5_n_0 ),
        .O(D[29]));
  LUT6 #(
    .INIT(64'hE0E0E0E0EFE0E0E0)) 
    \up_rdata[2]_i_1 
       (.I0(\up_rdata[2]_i_2_n_0 ),
        .I1(\up_rdata[2]_i_3_n_0 ),
        .I2(\up_rdata[19]_i_3_n_0 ),
        .I3(\up_rdata[5]_i_3_n_0 ),
        .I4(\up_rdata_reg[31] [2]),
        .I5(\up_rdata[5]_i_4_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h1000FFFF10001000)) 
    \up_rdata[2]_i_2 
       (.I0(\up_rdata[6]_i_3_n_0 ),
        .I1(\up_rdata[6]_i_4_n_0 ),
        .I2(\up_rdata[6]_i_5_n_0 ),
        .I3(dbg_status[2]),
        .I4(\up_rdata[2]_i_4_n_0 ),
        .I5(\up_rdata[30]_i_6_n_0 ),
        .O(\up_rdata[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00C80008)) 
    \up_rdata[2]_i_3 
       (.I0(dbg_ids1[2]),
        .I1(\up_rdata[6]_i_4_n_0 ),
        .I2(\up_rdata[6]_i_3_n_0 ),
        .I3(\up_rdata[6]_i_5_n_0 ),
        .I4(dbg_ids0[2]),
        .O(\up_rdata[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEE2EEFFFFFFFF)) 
    \up_rdata[2]_i_4 
       (.I0(\up_rdata[2]_i_2_0 ),
        .I1(up_raddr[0]),
        .I2(\up_raddr_int_reg[4]_0 [2]),
        .I3(p_3_in),
        .I4(\up_rdata[2]_i_6_n_0 ),
        .I5(up_raddr[1]),
        .O(\up_rdata[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \up_rdata[2]_i_6 
       (.I0(\up_raddr_int_reg[4]_0 [1]),
        .I1(\up_raddr_int_reg[4]_0 [0]),
        .O(\up_rdata[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAEFFAEAEAAAAAAAA)) 
    \up_rdata[30]_i_1 
       (.I0(\up_rdata[30]_i_2_n_0 ),
        .I1(\up_rdata_reg[30] [28]),
        .I2(\up_raddr_int_reg[4]_1 ),
        .I3(\up_rdata[30]_i_4_n_0 ),
        .I4(m_src_axi_araddr[27]),
        .I5(\up_rdata[30]_i_5_n_0 ),
        .O(D[30]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h00003008)) 
    \up_rdata[30]_i_2 
       (.I0(\up_rdata_reg[31] [30]),
        .I1(\up_rdata[6]_i_5_n_0 ),
        .I2(\up_rdata[6]_i_4_n_0 ),
        .I3(\up_rdata[6]_i_3_n_0 ),
        .I4(\up_rdata[19]_i_3_n_0 ),
        .O(\up_rdata[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFBFFFFFF)) 
    \up_rdata[30]_i_3 
       (.I0(\up_raddr_int_reg[4]_0 [2]),
        .I1(up_raddr[0]),
        .I2(up_raddr[1]),
        .I3(\up_rdata[30]_i_6_n_0 ),
        .I4(\up_raddr_int_reg[4]_0 [0]),
        .I5(\up_raddr_int_reg[4]_0 [1]),
        .O(\up_raddr_int_reg[4]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \up_rdata[30]_i_4 
       (.I0(\up_rdata[6]_i_4_n_0 ),
        .I1(\up_rdata[6]_i_5_n_0 ),
        .I2(\up_rdata[6]_i_3_n_0 ),
        .O(\up_rdata[30]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \up_rdata[30]_i_5 
       (.I0(\up_rdata[19]_i_3_n_0 ),
        .I1(\up_rdata[6]_i_5_n_0 ),
        .I2(\up_rdata[6]_i_4_n_0 ),
        .O(\up_rdata[30]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \up_rdata[30]_i_6 
       (.I0(up_raddr[6]),
        .I1(up_raddr[7]),
        .I2(up_raddr[8]),
        .I3(up_raddr[5]),
        .O(\up_rdata[30]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h4444444F44444444)) 
    \up_rdata[31]_i_1 
       (.I0(\up_rdata[31]_i_2_n_0 ),
        .I1(\up_rdata_reg[31] [31]),
        .I2(\up_raddr_int_reg[4]_0 [2]),
        .I3(up_raddr[6]),
        .I4(up_raddr[7]),
        .I5(\up_rdata[31]_i_3_n_0 ),
        .O(D[31]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hFEFF)) 
    \up_rdata[31]_i_2 
       (.I0(\up_rdata[19]_i_3_n_0 ),
        .I1(\up_rdata[6]_i_3_n_0 ),
        .I2(\up_rdata[6]_i_4_n_0 ),
        .I3(\up_rdata[6]_i_5_n_0 ),
        .O(\up_rdata[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \up_rdata[31]_i_3 
       (.I0(\up_raddr_int_reg[4]_0 [1]),
        .I1(\up_rdata_reg[31]_0 [1]),
        .I2(up_raddr[0]),
        .I3(\up_raddr_int_reg[4]_0 [0]),
        .I4(up_raddr[1]),
        .I5(\m_axis_raddr_reg[2]_i_4_n_0 ),
        .O(\up_rdata[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF4F4FFF4)) 
    \up_rdata[3]_i_1 
       (.I0(\up_rdata[3]_i_2_n_0 ),
        .I1(\up_rdata[30]_i_5_n_0 ),
        .I2(\up_rdata[3]_i_3_n_0 ),
        .I3(\up_rdata_reg[31] [3]),
        .I4(\up_rdata[31]_i_2_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hF0BBFFFBFFBBFFFB)) 
    \up_rdata[3]_i_2 
       (.I0(\up_rdata[3]_i_4_n_0 ),
        .I1(\up_rdata[30]_i_6_n_0 ),
        .I2(\up_rdata[6]_i_4_n_0 ),
        .I3(\up_rdata[6]_i_5_n_0 ),
        .I4(\up_rdata[6]_i_3_n_0 ),
        .I5(m_src_axi_araddr[0]),
        .O(\up_rdata[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3000200000002000)) 
    \up_rdata[3]_i_3 
       (.I0(dbg_ids1[3]),
        .I1(\up_rdata[6]_i_5_n_0 ),
        .I2(\up_rdata[6]_i_4_n_0 ),
        .I3(\up_rdata[19]_i_3_n_0 ),
        .I4(\up_rdata[6]_i_3_n_0 ),
        .I5(dbg_ids0[3]),
        .O(\up_rdata[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFAFF3AFFFAFFFAF)) 
    \up_rdata[3]_i_4 
       (.I0(\up_rdata[3]_i_2_0 ),
        .I1(\up_raddr_int_reg[4]_0 [0]),
        .I2(up_raddr[1]),
        .I3(up_raddr[0]),
        .I4(\up_rdata[22]_i_5_n_0 ),
        .I5(\up_rdata_reg[30] [4]),
        .O(\up_rdata[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0353035003500350)) 
    \up_rdata[4]_i_1 
       (.I0(\up_rdata[4]_i_2_n_0 ),
        .I1(\up_rdata[6]_i_3_n_0 ),
        .I2(\up_rdata[19]_i_3_n_0 ),
        .I3(\up_rdata[19]_i_5_n_0 ),
        .I4(\up_rdata[5]_i_3_n_0 ),
        .I5(\up_rdata_reg[31] [4]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h00000000F4FFF7FF)) 
    \up_rdata[4]_i_2 
       (.I0(m_src_axi_araddr[1]),
        .I1(\up_rdata[6]_i_3_n_0 ),
        .I2(\up_rdata[6]_i_4_n_0 ),
        .I3(\up_rdata[6]_i_5_n_0 ),
        .I4(dbg_status[3]),
        .I5(\up_rdata[4]_i_3_n_0 ),
        .O(\up_rdata[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0020AAAA00200020)) 
    \up_rdata[4]_i_3 
       (.I0(\up_rdata[30]_i_6_n_0 ),
        .I1(up_raddr[0]),
        .I2(up_raddr[1]),
        .I3(\up_rdata[4]_i_4_n_0 ),
        .I4(\up_rdata[9]_i_6_n_0 ),
        .I5(\up_rdata_reg[30] [5]),
        .O(\up_rdata[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFFC7FFF7)) 
    \up_rdata[4]_i_4 
       (.I0(\up_rdata_reg[30] [1]),
        .I1(\up_raddr_int_reg[4]_0 [0]),
        .I2(\up_raddr_int_reg[4]_0 [2]),
        .I3(\up_raddr_int_reg[4]_0 [1]),
        .I4(\up_rdata[23]_i_3_0 [1]),
        .O(\up_rdata[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h88BBB888)) 
    \up_rdata[5]_i_1 
       (.I0(\up_rdata[5]_i_2_n_0 ),
        .I1(\up_rdata[19]_i_3_n_0 ),
        .I2(\up_rdata_reg[31] [5]),
        .I3(\up_rdata[5]_i_3_n_0 ),
        .I4(\up_rdata[5]_i_4_n_0 ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hBBBAAABAAAAAAAAA)) 
    \up_rdata[5]_i_2 
       (.I0(\up_rdata[5]_i_5_n_0 ),
        .I1(\up_rdata[6]_i_4_n_0 ),
        .I2(dbg_status[4]),
        .I3(\up_rdata[6]_i_3_n_0 ),
        .I4(m_src_axi_araddr[2]),
        .I5(\up_rdata[6]_i_5_n_0 ),
        .O(\up_rdata[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \up_rdata[5]_i_3 
       (.I0(\up_rdata[6]_i_5_n_0 ),
        .I1(\up_rdata[6]_i_4_n_0 ),
        .O(\up_rdata[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \up_rdata[5]_i_4 
       (.I0(\up_rdata[6]_i_5_n_0 ),
        .I1(\up_rdata[6]_i_3_n_0 ),
        .I2(\up_rdata[6]_i_4_n_0 ),
        .O(\up_rdata[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0020AAAA00200020)) 
    \up_rdata[5]_i_5 
       (.I0(\up_rdata[30]_i_6_n_0 ),
        .I1(up_raddr[0]),
        .I2(up_raddr[1]),
        .I3(\up_rdata[5]_i_6_n_0 ),
        .I4(\up_rdata[9]_i_6_n_0 ),
        .I5(\up_rdata_reg[30] [6]),
        .O(\up_rdata[5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFFC7FFF7)) 
    \up_rdata[5]_i_6 
       (.I0(\up_rdata_reg[30] [2]),
        .I1(\up_raddr_int_reg[4]_0 [0]),
        .I2(\up_raddr_int_reg[4]_0 [2]),
        .I3(\up_raddr_int_reg[4]_0 [1]),
        .I4(\up_rdata[23]_i_3_0 [2]),
        .O(\up_rdata[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBB8BB888BB88B888)) 
    \up_rdata[6]_i_1 
       (.I0(\up_rdata[6]_i_2_n_0 ),
        .I1(\up_rdata[19]_i_3_n_0 ),
        .I2(\up_rdata[6]_i_3_n_0 ),
        .I3(\up_rdata[6]_i_4_n_0 ),
        .I4(\up_rdata[6]_i_5_n_0 ),
        .I5(\up_rdata_reg[31] [6]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h17)) 
    \up_rdata[6]_i_10 
       (.I0(\up_raddr_int_reg[4]_0 [0]),
        .I1(up_raddr[1]),
        .I2(up_raddr[8]),
        .O(\up_rdata[6]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \up_rdata[6]_i_11 
       (.I0(up_raddr[5]),
        .I1(\up_raddr_int_reg[4]_0 [2]),
        .I2(\up_raddr_int_reg[4]_0 [1]),
        .O(\up_rdata[6]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hFBEB)) 
    \up_rdata[6]_i_12 
       (.I0(up_raddr[5]),
        .I1(up_raddr[1]),
        .I2(up_raddr[0]),
        .I3(\up_raddr_int_reg[4]_0 [2]),
        .O(\up_rdata[6]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \up_rdata[6]_i_13 
       (.I0(\up_raddr_int_reg[4]_0 [1]),
        .I1(up_raddr[6]),
        .I2(up_raddr[7]),
        .O(\up_rdata[6]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hFFCFC4C4)) 
    \up_rdata[6]_i_14 
       (.I0(up_raddr[8]),
        .I1(\up_raddr_int_reg[4]_0 [2]),
        .I2(up_raddr[1]),
        .I3(up_raddr[0]),
        .I4(up_raddr[5]),
        .O(\up_rdata[6]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFFFFFFF6)) 
    \up_rdata[6]_i_15 
       (.I0(\up_raddr_int_reg[4]_0 [0]),
        .I1(\up_raddr_int_reg[4]_0 [1]),
        .I2(up_raddr[7]),
        .I3(up_raddr[6]),
        .I4(\up_raddr_int_reg[4]_0 [2]),
        .O(\up_rdata[6]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hFFC7FFF7)) 
    \up_rdata[6]_i_16 
       (.I0(\up_rdata_reg[30] [3]),
        .I1(\up_raddr_int_reg[4]_0 [0]),
        .I2(\up_raddr_int_reg[4]_0 [2]),
        .I3(\up_raddr_int_reg[4]_0 [1]),
        .I4(\up_rdata[23]_i_3_0 [3]),
        .O(\up_rdata[6]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hBBBAAABAAAAAAAAA)) 
    \up_rdata[6]_i_2 
       (.I0(\up_rdata[6]_i_6_n_0 ),
        .I1(\up_rdata[6]_i_4_n_0 ),
        .I2(dbg_status[5]),
        .I3(\up_rdata[6]_i_3_n_0 ),
        .I4(m_src_axi_araddr[3]),
        .I5(\up_rdata[6]_i_5_n_0 ),
        .O(\up_rdata[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFEFEFEFEFEFAAEF)) 
    \up_rdata[6]_i_3 
       (.I0(\up_rdata[6]_i_7_n_0 ),
        .I1(\up_rdata[6]_i_8_n_0 ),
        .I2(\up_rdata[6]_i_9_n_0 ),
        .I3(\up_rdata[6]_i_10_n_0 ),
        .I4(\up_rdata[6]_i_11_n_0 ),
        .I5(up_raddr[0]),
        .O(\up_rdata[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200020202)) 
    \up_rdata[6]_i_4 
       (.I0(\up_rdata[6]_i_12_n_0 ),
        .I1(\up_rdata[6]_i_13_n_0 ),
        .I2(\up_rdata[6]_i_14_n_0 ),
        .I3(\up_raddr_int_reg[4]_0 [0]),
        .I4(up_raddr[1]),
        .I5(up_raddr[8]),
        .O(\up_rdata[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000044034111)) 
    \up_rdata[6]_i_5 
       (.I0(up_raddr[5]),
        .I1(\up_raddr_int_reg[4]_0 [0]),
        .I2(up_raddr[0]),
        .I3(up_raddr[8]),
        .I4(up_raddr[1]),
        .I5(\up_rdata[6]_i_15_n_0 ),
        .O(\up_rdata[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0020AAAA00200020)) 
    \up_rdata[6]_i_6 
       (.I0(\up_rdata[30]_i_6_n_0 ),
        .I1(up_raddr[0]),
        .I2(up_raddr[1]),
        .I3(\up_rdata[6]_i_16_n_0 ),
        .I4(\up_rdata[9]_i_6_n_0 ),
        .I5(\up_rdata_reg[30] [7]),
        .O(\up_rdata[6]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hEFEE)) 
    \up_rdata[6]_i_7 
       (.I0(up_raddr[6]),
        .I1(up_raddr[7]),
        .I2(up_raddr[8]),
        .I3(\up_raddr_int_reg[4]_0 [1]),
        .O(\up_rdata[6]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hFF8FBFDF)) 
    \up_rdata[6]_i_8 
       (.I0(up_raddr[5]),
        .I1(up_raddr[8]),
        .I2(up_raddr[0]),
        .I3(\up_raddr_int_reg[4]_0 [2]),
        .I4(\up_raddr_int_reg[4]_0 [1]),
        .O(\up_rdata[6]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h81)) 
    \up_rdata[6]_i_9 
       (.I0(\up_raddr_int_reg[4]_0 [0]),
        .I1(up_raddr[1]),
        .I2(\up_raddr_int_reg[4]_0 [1]),
        .O(\up_rdata[6]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \up_rdata[7]_i_1 
       (.I0(\up_rdata[31]_i_2_n_0 ),
        .I1(\up_rdata_reg[31] [7]),
        .I2(\up_rdata[7]_i_2_n_0 ),
        .I3(\up_rdata[30]_i_5_n_0 ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hF0BBFFFBFFBBFFFB)) 
    \up_rdata[7]_i_2 
       (.I0(\up_rdata[7]_i_3_n_0 ),
        .I1(\up_rdata[30]_i_6_n_0 ),
        .I2(\up_rdata[6]_i_4_n_0 ),
        .I3(\up_rdata[6]_i_5_n_0 ),
        .I4(\up_rdata[6]_i_3_n_0 ),
        .I5(m_src_axi_araddr[4]),
        .O(\up_rdata[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF7F7FF00FFFF)) 
    \up_rdata[7]_i_3 
       (.I0(\up_rdata_reg[30] [8]),
        .I1(\up_raddr_int_reg[4]_0 [0]),
        .I2(\up_rdata[22]_i_5_n_0 ),
        .I3(\up_rdata[7]_i_4_n_0 ),
        .I4(up_raddr[1]),
        .I5(up_raddr[0]),
        .O(\up_rdata[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFC7FFF7)) 
    \up_rdata[7]_i_4 
       (.I0(\up_rdata[23]_i_3_1 [0]),
        .I1(\up_raddr_int_reg[4]_0 [0]),
        .I2(\up_raddr_int_reg[4]_0 [2]),
        .I3(\up_raddr_int_reg[4]_0 [1]),
        .I4(\up_rdata[23]_i_3_0 [4]),
        .O(\up_rdata[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF2F0000)) 
    \up_rdata[8]_i_1 
       (.I0(m_src_axi_araddr[5]),
        .I1(\up_rdata[30]_i_4_n_0 ),
        .I2(\up_rdata[9]_i_2_n_0 ),
        .I3(\up_rdata[8]_i_2_n_0 ),
        .I4(\up_rdata[30]_i_5_n_0 ),
        .I5(\up_rdata[8]_i_3_n_0 ),
        .O(D[8]));
  LUT6 #(
    .INIT(64'h0020AAAA00200020)) 
    \up_rdata[8]_i_2 
       (.I0(\up_rdata[30]_i_6_n_0 ),
        .I1(up_raddr[0]),
        .I2(up_raddr[1]),
        .I3(\up_rdata[8]_i_4_n_0 ),
        .I4(\up_rdata[9]_i_6_n_0 ),
        .I5(\up_rdata_reg[30] [9]),
        .O(\up_rdata[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00300000F2F0F2F0)) 
    \up_rdata[8]_i_3 
       (.I0(\up_rdata_reg[31] [8]),
        .I1(\up_rdata[6]_i_3_n_0 ),
        .I2(\up_rdata[6]_i_4_n_0 ),
        .I3(\up_rdata[6]_i_5_n_0 ),
        .I4(dbg_ids1[4]),
        .I5(\up_rdata[19]_i_3_n_0 ),
        .O(\up_rdata[8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFC7FFF7)) 
    \up_rdata[8]_i_4 
       (.I0(\up_rdata[23]_i_3_1 [1]),
        .I1(\up_raddr_int_reg[4]_0 [0]),
        .I2(\up_raddr_int_reg[4]_0 [2]),
        .I3(\up_raddr_int_reg[4]_0 [1]),
        .I4(\up_rdata[23]_i_3_0 [5]),
        .O(\up_rdata[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF2F0000)) 
    \up_rdata[9]_i_1 
       (.I0(m_src_axi_araddr[6]),
        .I1(\up_rdata[30]_i_4_n_0 ),
        .I2(\up_rdata[9]_i_2_n_0 ),
        .I3(\up_rdata[9]_i_3_n_0 ),
        .I4(\up_rdata[30]_i_5_n_0 ),
        .I5(\up_rdata[9]_i_4_n_0 ),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hFEFF)) 
    \up_rdata[9]_i_2 
       (.I0(\up_rdata[6]_i_3_n_0 ),
        .I1(\up_rdata_reg[9] ),
        .I2(\up_rdata[6]_i_4_n_0 ),
        .I3(\up_rdata[6]_i_5_n_0 ),
        .O(\up_rdata[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0020AAAA00200020)) 
    \up_rdata[9]_i_3 
       (.I0(\up_rdata[30]_i_6_n_0 ),
        .I1(up_raddr[0]),
        .I2(up_raddr[1]),
        .I3(\up_rdata[9]_i_5_n_0 ),
        .I4(\up_rdata[9]_i_6_n_0 ),
        .I5(\up_rdata_reg[30] [10]),
        .O(\up_rdata[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0F0233000F020300)) 
    \up_rdata[9]_i_4 
       (.I0(\up_rdata_reg[31] [9]),
        .I1(\up_rdata[6]_i_3_n_0 ),
        .I2(\up_rdata[19]_i_3_n_0 ),
        .I3(\up_rdata[6]_i_4_n_0 ),
        .I4(\up_rdata[6]_i_5_n_0 ),
        .I5(dbg_ids1[5]),
        .O(\up_rdata[9]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFC7FFF7)) 
    \up_rdata[9]_i_5 
       (.I0(\up_rdata[23]_i_3_1 [2]),
        .I1(\up_raddr_int_reg[4]_0 [0]),
        .I2(\up_raddr_int_reg[4]_0 [2]),
        .I3(\up_raddr_int_reg[4]_0 [1]),
        .I4(\up_rdata[23]_i_3_0 [6]),
        .O(\up_rdata[9]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hFFFFFFDF)) 
    \up_rdata[9]_i_6 
       (.I0(\up_raddr_int_reg[4]_0 [0]),
        .I1(up_raddr[1]),
        .I2(up_raddr[0]),
        .I3(\up_raddr_int_reg[4]_0 [1]),
        .I4(\up_raddr_int_reg[4]_0 [2]),
        .O(\up_rdata[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[0]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [0]),
        .I1(\up_rcount_reg_n_0_[3] ),
        .I2(\up_rcount_reg_n_0_[2] ),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(p_0_in6_in),
        .O(\up_rdata_d[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[10]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [10]),
        .I1(\up_rcount_reg_n_0_[3] ),
        .I2(\up_rcount_reg_n_0_[2] ),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(p_0_in6_in),
        .O(\up_rdata_d[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[11]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [11]),
        .I1(\up_rcount_reg_n_0_[3] ),
        .I2(\up_rcount_reg_n_0_[2] ),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(p_0_in6_in),
        .O(\up_rdata_d[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[12]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [12]),
        .I1(\up_rcount_reg_n_0_[3] ),
        .I2(\up_rcount_reg_n_0_[2] ),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(p_0_in6_in),
        .O(\up_rdata_d[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[14]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [14]),
        .I1(\up_rcount_reg_n_0_[3] ),
        .I2(\up_rcount_reg_n_0_[2] ),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(p_0_in6_in),
        .O(\up_rdata_d[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[15]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [15]),
        .I1(\up_rcount_reg_n_0_[3] ),
        .I2(\up_rcount_reg_n_0_[2] ),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(p_0_in6_in),
        .O(\up_rdata_d[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[16]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [16]),
        .I1(\up_rcount_reg_n_0_[3] ),
        .I2(\up_rcount_reg_n_0_[2] ),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(p_0_in6_in),
        .O(\up_rdata_d[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[18]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [18]),
        .I1(\up_rcount_reg_n_0_[3] ),
        .I2(\up_rcount_reg_n_0_[2] ),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(p_0_in6_in),
        .O(\up_rdata_d[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[19]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [19]),
        .I1(\up_rcount_reg_n_0_[3] ),
        .I2(\up_rcount_reg_n_0_[2] ),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(p_0_in6_in),
        .O(\up_rdata_d[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[21]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [21]),
        .I1(\up_rcount_reg_n_0_[3] ),
        .I2(\up_rcount_reg_n_0_[2] ),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(p_0_in6_in),
        .O(\up_rdata_d[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[23]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [23]),
        .I1(\up_rcount_reg_n_0_[3] ),
        .I2(\up_rcount_reg_n_0_[2] ),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(p_0_in6_in),
        .O(\up_rdata_d[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[25]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [25]),
        .I1(\up_rcount_reg_n_0_[3] ),
        .I2(\up_rcount_reg_n_0_[2] ),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(p_0_in6_in),
        .O(\up_rdata_d[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[26]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [26]),
        .I1(\up_rcount_reg_n_0_[3] ),
        .I2(\up_rcount_reg_n_0_[2] ),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(p_0_in6_in),
        .O(\up_rdata_d[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[27]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [27]),
        .I1(\up_rcount_reg_n_0_[3] ),
        .I2(\up_rcount_reg_n_0_[2] ),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(p_0_in6_in),
        .O(\up_rdata_d[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[28]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [28]),
        .I1(\up_rcount_reg_n_0_[3] ),
        .I2(\up_rcount_reg_n_0_[2] ),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(p_0_in6_in),
        .O(\up_rdata_d[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80000000FFFFFFFF)) 
    \up_rdata_d[29]_i_1 
       (.I0(\up_rcount_reg_n_0_[3] ),
        .I1(\up_rcount_reg_n_0_[2] ),
        .I2(\up_rcount_reg_n_0_[0] ),
        .I3(\up_rcount_reg_n_0_[1] ),
        .I4(p_0_in6_in),
        .I5(s_axi_aresetn),
        .O(\up_rdata_d[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[2]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [2]),
        .I1(\up_rcount_reg_n_0_[3] ),
        .I2(\up_rcount_reg_n_0_[2] ),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(p_0_in6_in),
        .O(\up_rdata_d[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[30]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [30]),
        .I1(\up_rcount_reg_n_0_[3] ),
        .I2(\up_rcount_reg_n_0_[2] ),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(p_0_in6_in),
        .O(\up_rdata_d[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[31]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [31]),
        .I1(\up_rcount_reg_n_0_[3] ),
        .I2(\up_rcount_reg_n_0_[2] ),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(p_0_in6_in),
        .O(\up_rdata_d[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[3]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [3]),
        .I1(\up_rcount_reg_n_0_[3] ),
        .I2(\up_rcount_reg_n_0_[2] ),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(p_0_in6_in),
        .O(\up_rdata_d[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[5]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [5]),
        .I1(\up_rcount_reg_n_0_[3] ),
        .I2(\up_rcount_reg_n_0_[2] ),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(p_0_in6_in),
        .O(\up_rdata_d[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[7]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [7]),
        .I1(\up_rcount_reg_n_0_[3] ),
        .I2(\up_rcount_reg_n_0_[2] ),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(p_0_in6_in),
        .O(\up_rdata_d[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \up_rdata_d[9]_i_1 
       (.I0(\up_rdata_d_reg[31]_0 [9]),
        .I1(\up_rcount_reg_n_0_[3] ),
        .I2(\up_rcount_reg_n_0_[2] ),
        .I3(\up_rcount_reg_n_0_[0] ),
        .I4(\up_rcount_reg_n_0_[1] ),
        .I5(p_0_in6_in),
        .O(\up_rdata_d[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[0]_i_1_n_0 ),
        .Q(up_rdata_d[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[10]_i_1_n_0 ),
        .Q(up_rdata_d[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[11]_i_1_n_0 ),
        .Q(up_rdata_d[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[12]_i_1_n_0 ),
        .Q(up_rdata_d[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d_reg[31]_0 [13]),
        .Q(up_rdata_d[13]),
        .R(\up_rdata_d[29]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[14]_i_1_n_0 ),
        .Q(up_rdata_d[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[15]_i_1_n_0 ),
        .Q(up_rdata_d[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[16]_i_1_n_0 ),
        .Q(up_rdata_d[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d_reg[31]_0 [17]),
        .Q(up_rdata_d[17]),
        .R(\up_rdata_d[29]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[18]_i_1_n_0 ),
        .Q(up_rdata_d[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[19]_i_1_n_0 ),
        .Q(up_rdata_d[19]),
        .R(SR));
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
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[21]_i_1_n_0 ),
        .Q(up_rdata_d[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d_reg[31]_0 [22]),
        .Q(up_rdata_d[22]),
        .R(\up_rdata_d[29]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[23]_i_1_n_0 ),
        .Q(up_rdata_d[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d_reg[31]_0 [24]),
        .Q(up_rdata_d[24]),
        .R(\up_rdata_d[29]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[25]_i_1_n_0 ),
        .Q(up_rdata_d[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[26]_i_1_n_0 ),
        .Q(up_rdata_d[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[27]_i_1_n_0 ),
        .Q(up_rdata_d[27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[28]_i_1_n_0 ),
        .Q(up_rdata_d[28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d_reg[31]_0 [29]),
        .Q(up_rdata_d[29]),
        .R(\up_rdata_d[29]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[2]_i_1_n_0 ),
        .Q(up_rdata_d[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[30]_i_1_n_0 ),
        .Q(up_rdata_d[30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[31]_i_1_n_0 ),
        .Q(up_rdata_d[31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[3]_i_1_n_0 ),
        .Q(up_rdata_d[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d_reg[31]_0 [4]),
        .Q(up_rdata_d[4]),
        .R(\up_rdata_d[29]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[5]_i_1_n_0 ),
        .Q(up_rdata_d[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d_reg[31]_0 [6]),
        .Q(up_rdata_d[6]),
        .R(\up_rdata_d[29]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[7]_i_1_n_0 ),
        .Q(up_rdata_d[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d_reg[31]_0 [8]),
        .Q(up_rdata_d[8]),
        .R(\up_rdata_d[29]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \up_rdata_d_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\up_rdata_d[9]_i_1_n_0 ),
        .Q(up_rdata_d[9]),
        .R(SR));
  LUT3 #(
    .INIT(8'h80)) 
    up_rreq_int_i_1
       (.I0(p_1_in),
        .I1(s_axi_arvalid),
        .I2(s_axi_aresetn),
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
        .I1(s_axi_rready),
        .I2(up_axi_rvalid_int_reg_0),
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
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \up_scratch[31]_i_1 
       (.I0(\up_scratch[31]_i_2_n_0 ),
        .I1(up_waddr[7]),
        .I2(up_waddr[8]),
        .I3(up_waddr[1]),
        .I4(up_wreq),
        .I5(\up_scratch[31]_i_3_n_0 ),
        .O(E));
  LUT3 #(
    .INIT(8'h01)) 
    \up_scratch[31]_i_2 
       (.I0(up_waddr[0]),
        .I1(up_waddr[6]),
        .I2(up_waddr[5]),
        .O(\up_scratch[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \up_scratch[31]_i_3 
       (.I0(up_waddr[2]),
        .I1(up_waddr[4]),
        .I2(up_waddr[3]),
        .O(\up_scratch[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA80000000)) 
    up_wack_d_i_1
       (.I0(p_0_in7_in),
        .I1(\up_wcount_reg_n_0_[3] ),
        .I2(\up_wcount_reg_n_0_[0] ),
        .I3(\up_wcount_reg_n_0_[1] ),
        .I4(\up_wcount_reg_n_0_[2] ),
        .I5(up_wack),
        .O(up_wack_s));
  FDRE #(
    .INIT(1'b0)) 
    up_wack_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(up_wack_s),
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
        .O(\up_wcount[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h1400)) 
    \up_wcount[1]_i_1 
       (.I0(up_wack),
        .I1(\up_wcount_reg_n_0_[0] ),
        .I2(\up_wcount_reg_n_0_[1] ),
        .I3(p_0_in7_in),
        .O(p_2_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h14440000)) 
    \up_wcount[2]_i_1 
       (.I0(up_wack),
        .I1(\up_wcount_reg_n_0_[2] ),
        .I2(\up_wcount_reg_n_0_[1] ),
        .I3(\up_wcount_reg_n_0_[0] ),
        .I4(p_0_in7_in),
        .O(p_2_in[2]));
  LUT6 #(
    .INIT(64'h1444444400000000)) 
    \up_wcount[3]_i_1 
       (.I0(up_wack),
        .I1(\up_wcount_reg_n_0_[3] ),
        .I2(\up_wcount_reg_n_0_[0] ),
        .I3(\up_wcount_reg_n_0_[1] ),
        .I4(\up_wcount_reg_n_0_[2] ),
        .I5(p_0_in7_in),
        .O(p_2_in[3]));
  LUT2 #(
    .INIT(4'hE)) 
    \up_wcount[4]_i_1 
       (.I0(up_wreq),
        .I1(p_0_in7_in),
        .O(\up_wcount[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h15555555FFFFFFFF)) 
    \up_wcount[4]_i_2 
       (.I0(up_wack),
        .I1(\up_wcount_reg_n_0_[2] ),
        .I2(\up_wcount_reg_n_0_[1] ),
        .I3(\up_wcount_reg_n_0_[0] ),
        .I4(\up_wcount_reg_n_0_[3] ),
        .I5(p_0_in7_in),
        .O(p_2_in[4]));
  FDRE #(
    .INIT(1'b0)) 
    \up_wcount_reg[0] 
       (.C(s_axi_aclk),
        .CE(\up_wcount[4]_i_1_n_0 ),
        .D(\up_wcount[0]_i_1_n_0 ),
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
        .I1(s_axi_wvalid),
        .I2(s_axi_awvalid),
        .I3(s_axi_aresetn),
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
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .I2(s_axi_bready),
        .I3(s_axi_bvalid),
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
module icyradio_axi_dmac_rf_tx_0_util_axis_fifo
   (ctrl_enable_reg,
    response_valid_reg,
    \fifo.valid_reg_0 ,
    s_axi_aclk,
    \m_axis_raddr_reg_reg[0] ,
    \fifo.valid_reg_1 ,
    \fifo.valid_reg_2 ,
    up_response_valid,
    response_ready_reg,
    \m_axis_raddr_reg_reg[0]_0 ,
    up_partial_length_valid_reg);
  output ctrl_enable_reg;
  output response_valid_reg;
  output \fifo.valid_reg_0 ;
  input s_axi_aclk;
  input \m_axis_raddr_reg_reg[0] ;
  input \fifo.valid_reg_1 ;
  input \fifo.valid_reg_2 ;
  input up_response_valid;
  input response_ready_reg;
  input \m_axis_raddr_reg_reg[0]_0 ;
  input [0:0]up_partial_length_valid_reg;

  wire ctrl_enable_reg;
  wire \fifo.i_address_gray_n_1 ;
  wire \fifo.valid_reg_0 ;
  wire \fifo.valid_reg_1 ;
  wire \fifo.valid_reg_2 ;
  wire \m_axis_raddr_reg_reg[0] ;
  wire \m_axis_raddr_reg_reg[0]_0 ;
  wire response_ready_reg;
  wire response_valid_reg;
  wire s_axi_aclk;
  wire [0:0]up_partial_length_valid_reg;
  wire up_response_valid;
  wire up_tlf_valid;

  icyradio_axi_dmac_rf_tx_0_util_axis_fifo_address_generator \fifo.i_address_gray 
       (.ctrl_enable_reg(ctrl_enable_reg),
        .\fifo.valid_reg (\fifo.valid_reg_1 ),
        .\fifo.valid_reg_0 (\fifo.valid_reg_2 ),
        .\m_axis_raddr_reg_reg[0]_0 (\m_axis_raddr_reg_reg[0] ),
        .\m_axis_raddr_reg_reg[0]_1 (\m_axis_raddr_reg_reg[0]_0 ),
        .\m_axis_raddr_reg_reg[1]_0 (\fifo.i_address_gray_n_1 ),
        .response_ready_reg(response_ready_reg),
        .response_valid_reg(response_valid_reg),
        .s_axi_aclk(s_axi_aclk),
        .up_response_valid(up_response_valid),
        .up_tlf_valid(up_tlf_valid));
  FDRE #(
    .INIT(1'b0)) 
    \fifo.valid_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\fifo.i_address_gray_n_1 ),
        .Q(up_tlf_valid),
        .R(ctrl_enable_reg));
  LUT3 #(
    .INIT(8'h32)) 
    up_partial_length_valid_i_1
       (.I0(up_tlf_valid),
        .I1(\m_axis_raddr_reg_reg[0]_0 ),
        .I2(up_partial_length_valid_reg),
        .O(\fifo.valid_reg_0 ));
endmodule

(* ORIG_REF_NAME = "util_axis_fifo" *) 
module icyradio_axi_dmac_rf_tx_0_util_axis_fifo__parameterized0
   (dest_req_valid,
    \zerodeep.axis_data_d_reg[0]_0 ,
    \zerodeep.axis_valid_d_reg_0 ,
    \zerodeep.axis_data_d_reg[0]_1 ,
    \zerodeep.axis_valid_d_reg_1 ,
    m_src_axi_aclk,
    \zerodeep.axis_data_d_reg[0]_2 ,
    dest_fifo_last,
    data_eot,
    active_reg,
    m_axis_ready);
  output dest_req_valid;
  output \zerodeep.axis_data_d_reg[0]_0 ;
  output \zerodeep.axis_valid_d_reg_0 ;
  input [0:0]\zerodeep.axis_data_d_reg[0]_1 ;
  input \zerodeep.axis_valid_d_reg_1 ;
  input m_src_axi_aclk;
  input \zerodeep.axis_data_d_reg[0]_2 ;
  input dest_fifo_last;
  input data_eot;
  input active_reg;
  input m_axis_ready;

  wire active_reg;
  wire data_eot;
  wire dest_fifo_last;
  wire dest_req_valid;
  wire m_axis_ready;
  wire m_src_axi_aclk;
  wire \zerodeep.axis_data_d_reg[0]_0 ;
  wire [0:0]\zerodeep.axis_data_d_reg[0]_1 ;
  wire \zerodeep.axis_data_d_reg[0]_2 ;
  wire \zerodeep.axis_valid_d_reg_0 ;
  wire \zerodeep.axis_valid_d_reg_1 ;

  LUT5 #(
    .INIT(32'hBFAAFFAA)) 
    active_i_1
       (.I0(dest_req_valid),
        .I1(dest_fifo_last),
        .I2(data_eot),
        .I3(active_reg),
        .I4(m_axis_ready),
        .O(\zerodeep.axis_valid_d_reg_0 ));
  FDRE \zerodeep.axis_data_d_reg[0] 
       (.C(m_src_axi_aclk),
        .CE(1'b1),
        .D(\zerodeep.axis_data_d_reg[0]_2 ),
        .Q(\zerodeep.axis_data_d_reg[0]_0 ),
        .R(\zerodeep.axis_data_d_reg[0]_1 ));
  FDRE \zerodeep.axis_valid_d_reg 
       (.C(m_src_axi_aclk),
        .CE(1'b1),
        .D(\zerodeep.axis_valid_d_reg_1 ),
        .Q(dest_req_valid),
        .R(\zerodeep.axis_data_d_reg[0]_1 ));
endmodule

(* ORIG_REF_NAME = "util_axis_fifo" *) 
module icyradio_axi_dmac_rf_tx_0_util_axis_fifo__parameterized1
   (src_req_spltr_valid,
    \zerodeep.axis_data_d_reg[0]_0 ,
    Q,
    \zerodeep.axis_valid_d_reg_0 ,
    E,
    \zerodeep.axis_valid_d_reg_1 ,
    s_axi_aclk,
    src_req_dest_address_cur0,
    s_axis_data__0,
    D);
  output src_req_spltr_valid;
  output \zerodeep.axis_data_d_reg[0]_0 ;
  output [33:0]Q;
  input [0:0]\zerodeep.axis_valid_d_reg_0 ;
  input [0:0]E;
  input \zerodeep.axis_valid_d_reg_1 ;
  input s_axi_aclk;
  input src_req_dest_address_cur0;
  input [0:0]s_axis_data__0;
  input [33:0]D;

  wire [33:0]D;
  wire [0:0]E;
  wire [33:0]Q;
  wire s_axi_aclk;
  wire [0:0]s_axis_data__0;
  wire src_req_dest_address_cur0;
  wire src_req_spltr_valid;
  wire \zerodeep.axis_data_d_reg[0]_0 ;
  wire \zerodeep.axis_data_d_reg_n_0_[0] ;
  wire [0:0]\zerodeep.axis_valid_d_reg_0 ;
  wire \zerodeep.axis_valid_d_reg_1 ;

  LUT3 #(
    .INIT(8'hB8)) 
    src_req_xlast_cur_i_1
       (.I0(\zerodeep.axis_data_d_reg_n_0_[0] ),
        .I1(src_req_dest_address_cur0),
        .I2(s_axis_data__0),
        .O(\zerodeep.axis_data_d_reg[0]_0 ));
  FDRE \zerodeep.axis_data_d_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[0]),
        .Q(\zerodeep.axis_data_d_reg_n_0_[0] ),
        .R(\zerodeep.axis_valid_d_reg_0 ));
  FDRE \zerodeep.axis_data_d_reg[10] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[7]),
        .Q(Q[7]),
        .R(\zerodeep.axis_valid_d_reg_0 ));
  FDRE \zerodeep.axis_data_d_reg[11] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[8]),
        .Q(Q[8]),
        .R(\zerodeep.axis_valid_d_reg_0 ));
  FDRE \zerodeep.axis_data_d_reg[12] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[9]),
        .Q(Q[9]),
        .R(\zerodeep.axis_valid_d_reg_0 ));
  FDRE \zerodeep.axis_data_d_reg[13] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[10]),
        .Q(Q[10]),
        .R(\zerodeep.axis_valid_d_reg_0 ));
  FDRE \zerodeep.axis_data_d_reg[14] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[11]),
        .Q(Q[11]),
        .R(\zerodeep.axis_valid_d_reg_0 ));
  FDRE \zerodeep.axis_data_d_reg[15] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[12]),
        .Q(Q[12]),
        .R(\zerodeep.axis_valid_d_reg_0 ));
  FDRE \zerodeep.axis_data_d_reg[16] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[13]),
        .Q(Q[13]),
        .R(\zerodeep.axis_valid_d_reg_0 ));
  FDRE \zerodeep.axis_data_d_reg[17] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[14]),
        .Q(Q[14]),
        .R(\zerodeep.axis_valid_d_reg_0 ));
  FDRE \zerodeep.axis_data_d_reg[18] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[15]),
        .Q(Q[15]),
        .R(\zerodeep.axis_valid_d_reg_0 ));
  FDRE \zerodeep.axis_data_d_reg[19] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[16]),
        .Q(Q[16]),
        .R(\zerodeep.axis_valid_d_reg_0 ));
  FDRE \zerodeep.axis_data_d_reg[20] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[17]),
        .Q(Q[17]),
        .R(\zerodeep.axis_valid_d_reg_0 ));
  FDRE \zerodeep.axis_data_d_reg[21] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[18]),
        .Q(Q[18]),
        .R(\zerodeep.axis_valid_d_reg_0 ));
  FDRE \zerodeep.axis_data_d_reg[22] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[19]),
        .Q(Q[19]),
        .R(\zerodeep.axis_valid_d_reg_0 ));
  FDRE \zerodeep.axis_data_d_reg[23] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[20]),
        .Q(Q[20]),
        .R(\zerodeep.axis_valid_d_reg_0 ));
  FDRE \zerodeep.axis_data_d_reg[24] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[21]),
        .Q(Q[21]),
        .R(\zerodeep.axis_valid_d_reg_0 ));
  FDRE \zerodeep.axis_data_d_reg[25] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[22]),
        .Q(Q[22]),
        .R(\zerodeep.axis_valid_d_reg_0 ));
  FDRE \zerodeep.axis_data_d_reg[26] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[23]),
        .Q(Q[23]),
        .R(\zerodeep.axis_valid_d_reg_0 ));
  FDRE \zerodeep.axis_data_d_reg[27] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[24]),
        .Q(Q[24]),
        .R(\zerodeep.axis_valid_d_reg_0 ));
  FDRE \zerodeep.axis_data_d_reg[28] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[25]),
        .Q(Q[25]),
        .R(\zerodeep.axis_valid_d_reg_0 ));
  FDRE \zerodeep.axis_data_d_reg[29] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[26]),
        .Q(Q[26]),
        .R(\zerodeep.axis_valid_d_reg_0 ));
  FDRE \zerodeep.axis_data_d_reg[30] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[27]),
        .Q(Q[27]),
        .R(\zerodeep.axis_valid_d_reg_0 ));
  FDRE \zerodeep.axis_data_d_reg[31] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[28]),
        .Q(Q[28]),
        .R(\zerodeep.axis_valid_d_reg_0 ));
  FDRE \zerodeep.axis_data_d_reg[32] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[29]),
        .Q(Q[29]),
        .R(\zerodeep.axis_valid_d_reg_0 ));
  FDRE \zerodeep.axis_data_d_reg[33] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[30]),
        .Q(Q[30]),
        .R(\zerodeep.axis_valid_d_reg_0 ));
  FDRE \zerodeep.axis_data_d_reg[34] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[31]),
        .Q(Q[31]),
        .R(\zerodeep.axis_valid_d_reg_0 ));
  FDRE \zerodeep.axis_data_d_reg[35] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[32]),
        .Q(Q[32]),
        .R(\zerodeep.axis_valid_d_reg_0 ));
  FDRE \zerodeep.axis_data_d_reg[36] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[33]),
        .Q(Q[33]),
        .R(\zerodeep.axis_valid_d_reg_0 ));
  FDRE \zerodeep.axis_data_d_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(1'b1),
        .Q(Q[0]),
        .R(\zerodeep.axis_valid_d_reg_0 ));
  FDRE \zerodeep.axis_data_d_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[1]),
        .Q(Q[1]),
        .R(\zerodeep.axis_valid_d_reg_0 ));
  FDRE \zerodeep.axis_data_d_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[2]),
        .Q(Q[2]),
        .R(\zerodeep.axis_valid_d_reg_0 ));
  FDRE \zerodeep.axis_data_d_reg[6] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[3]),
        .Q(Q[3]),
        .R(\zerodeep.axis_valid_d_reg_0 ));
  FDRE \zerodeep.axis_data_d_reg[7] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[4]),
        .Q(Q[4]),
        .R(\zerodeep.axis_valid_d_reg_0 ));
  FDRE \zerodeep.axis_data_d_reg[8] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[5]),
        .Q(Q[5]),
        .R(\zerodeep.axis_valid_d_reg_0 ));
  FDRE \zerodeep.axis_data_d_reg[9] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[6]),
        .Q(Q[6]),
        .R(\zerodeep.axis_valid_d_reg_0 ));
  FDRE \zerodeep.axis_valid_d_reg 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\zerodeep.axis_valid_d_reg_1 ),
        .Q(src_req_spltr_valid),
        .R(\zerodeep.axis_valid_d_reg_0 ));
endmodule

(* ORIG_REF_NAME = "util_axis_fifo" *) 
module icyradio_axi_dmac_rf_tx_0_util_axis_fifo__parameterized2
   (\FSM_sequential_state_reg[1] ,
    id0,
    D,
    response_ready_reg,
    \zerodeep.axis_data_d_reg[0]_0 ,
    \zerodeep.axis_data_d_reg[0]_1 ,
    m_axis_aclk,
    response_eot,
    Q,
    response_dest_ready_reg,
    up_response_ready,
    dest_response_valid,
    response_dest_ready,
    \FSM_sequential_state_reg[1]_0 ,
    \FSM_sequential_state_reg[0] ,
    transfer_id,
    to_complete_count,
    response_valid_reg,
    up_response_valid,
    req_eot_reg);
  output \FSM_sequential_state_reg[1] ;
  output id0;
  output [1:0]D;
  output response_ready_reg;
  output \zerodeep.axis_data_d_reg[0]_0 ;
  input [0:0]\zerodeep.axis_data_d_reg[0]_1 ;
  input m_axis_aclk;
  input response_eot;
  input [2:0]Q;
  input response_dest_ready_reg;
  input up_response_ready;
  input dest_response_valid;
  input response_dest_ready;
  input \FSM_sequential_state_reg[1]_0 ;
  input \FSM_sequential_state_reg[0] ;
  input [1:0]transfer_id;
  input [1:0]to_complete_count;
  input response_valid_reg;
  input up_response_valid;
  input req_eot_reg;

  wire [1:0]D;
  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[1]_i_3_n_0 ;
  wire \FSM_sequential_state_reg[0] ;
  wire \FSM_sequential_state_reg[1] ;
  wire \FSM_sequential_state_reg[1]_0 ;
  wire [2:0]Q;
  wire dest_response_ready;
  wire dest_response_valid;
  wire id0;
  wire m_axis_aclk;
  wire req_eot_reg;
  wire response_dest_ready;
  wire response_dest_ready_i_2_n_0;
  wire response_dest_ready_i_3_n_0;
  wire response_dest_ready_reg;
  wire response_dest_valid;
  wire response_eot;
  wire response_ready_reg;
  wire response_valid_reg;
  wire [1:0]to_complete_count;
  wire [1:0]transfer_id;
  wire up_response_ready;
  wire up_response_valid;
  wire \zerodeep.axis_data_d_reg[0]_0 ;
  wire [0:0]\zerodeep.axis_data_d_reg[0]_1 ;
  wire \zerodeep.axis_data_d_reg_n_0_[0] ;
  wire \zerodeep.axis_valid_d_i_1__1_n_0 ;

  LUT4 #(
    .INIT(16'h00FD)) 
    \FSM_sequential_state[0]_i_1__0 
       (.I0(Q[2]),
        .I1(up_response_ready),
        .I2(Q[0]),
        .I3(\FSM_sequential_state[0]_i_2_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h00000000B8BBB8B8)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(\FSM_sequential_state_reg[1]_0 ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(response_dest_valid),
        .I4(\FSM_sequential_state_reg[0] ),
        .I5(Q[2]),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEE57FF52FA)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(Q[1]),
        .I1(up_response_ready),
        .I2(Q[0]),
        .I3(\FSM_sequential_state_reg[1]_0 ),
        .I4(\FSM_sequential_state[1]_i_3_n_0 ),
        .I5(Q[2]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h01010100)) 
    \FSM_sequential_state[1]_i_3 
       (.I0(response_dest_valid),
        .I1(transfer_id[0]),
        .I2(transfer_id[1]),
        .I3(to_complete_count[1]),
        .I4(to_complete_count[0]),
        .O(\FSM_sequential_state[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    req_eot_i_1
       (.I0(\zerodeep.axis_data_d_reg_n_0_[0] ),
        .I1(response_dest_valid),
        .I2(response_dest_ready),
        .I3(req_eot_reg),
        .O(\zerodeep.axis_data_d_reg[0]_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    response_dest_ready_i_1
       (.I0(response_dest_ready_i_2_n_0),
        .I1(response_dest_ready_i_3_n_0),
        .O(\FSM_sequential_state_reg[1] ));
  LUT6 #(
    .INIT(64'hCCCCCCCC57FF52FA)) 
    response_dest_ready_i_2
       (.I0(Q[1]),
        .I1(up_response_ready),
        .I2(Q[0]),
        .I3(\FSM_sequential_state_reg[1]_0 ),
        .I4(\FSM_sequential_state[1]_i_3_n_0 ),
        .I5(Q[2]),
        .O(response_dest_ready_i_2_n_0));
  LUT6 #(
    .INIT(64'h00FF08FF111108FF)) 
    response_dest_ready_i_3
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(response_dest_ready_reg),
        .I3(\FSM_sequential_state[0]_i_2_n_0 ),
        .I4(Q[2]),
        .I5(up_response_ready),
        .O(response_dest_ready_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \response_id[3]_i_1 
       (.I0(dest_response_valid),
        .I1(response_dest_ready),
        .I2(response_dest_valid),
        .O(id0));
  LUT6 #(
    .INIT(64'hFFFFBB33FFFFAA20)) 
    response_valid_i_1
       (.I0(response_dest_ready_i_2_n_0),
        .I1(up_response_ready),
        .I2(Q[2]),
        .I3(\FSM_sequential_state[0]_i_2_n_0 ),
        .I4(response_valid_reg),
        .I5(up_response_valid),
        .O(response_ready_reg));
  LUT2 #(
    .INIT(4'hB)) 
    \zerodeep.axis_data_d[0]_i_1 
       (.I0(response_dest_ready),
        .I1(response_dest_valid),
        .O(dest_response_ready));
  FDRE \zerodeep.axis_data_d_reg[0] 
       (.C(m_axis_aclk),
        .CE(dest_response_ready),
        .D(response_eot),
        .Q(\zerodeep.axis_data_d_reg_n_0_[0] ),
        .R(\zerodeep.axis_data_d_reg[0]_1 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \zerodeep.axis_valid_d_i_1__1 
       (.I0(dest_response_valid),
        .I1(response_dest_ready),
        .I2(response_dest_valid),
        .O(\zerodeep.axis_valid_d_i_1__1_n_0 ));
  FDRE \zerodeep.axis_valid_d_reg 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(\zerodeep.axis_valid_d_i_1__1_n_0 ),
        .Q(response_dest_valid),
        .R(\zerodeep.axis_data_d_reg[0]_1 ));
endmodule

(* ORIG_REF_NAME = "util_axis_fifo_address_generator" *) 
module icyradio_axi_dmac_rf_tx_0_util_axis_fifo_address_generator
   (ctrl_enable_reg,
    \m_axis_raddr_reg_reg[1]_0 ,
    response_valid_reg,
    \m_axis_raddr_reg_reg[0]_0 ,
    \fifo.valid_reg ,
    \fifo.valid_reg_0 ,
    up_tlf_valid,
    up_response_valid,
    response_ready_reg,
    \m_axis_raddr_reg_reg[0]_1 ,
    s_axi_aclk);
  output ctrl_enable_reg;
  output \m_axis_raddr_reg_reg[1]_0 ;
  output response_valid_reg;
  input \m_axis_raddr_reg_reg[0]_0 ;
  input \fifo.valid_reg ;
  input \fifo.valid_reg_0 ;
  input up_tlf_valid;
  input up_response_valid;
  input response_ready_reg;
  input \m_axis_raddr_reg_reg[0]_1 ;
  input s_axi_aclk;

  wire ctrl_enable_reg;
  wire \fifo.valid_reg ;
  wire \fifo.valid_reg_0 ;
  wire [2:0]m_axis_raddr;
  wire \m_axis_raddr_reg[0]_i_1_n_0 ;
  wire \m_axis_raddr_reg[1]_i_1_n_0 ;
  wire \m_axis_raddr_reg[2]_i_2_n_0 ;
  wire \m_axis_raddr_reg_reg[0]_0 ;
  wire \m_axis_raddr_reg_reg[0]_1 ;
  wire \m_axis_raddr_reg_reg[1]_0 ;
  wire response_ready_reg;
  wire response_valid_reg;
  wire s_axi_aclk;
  wire up_response_valid;
  wire up_tlf_valid;

  LUT6 #(
    .INIT(64'hFFFFFFFEFEFEFEFE)) 
    \fifo.valid_i_1 
       (.I0(m_axis_raddr[1]),
        .I1(m_axis_raddr[0]),
        .I2(m_axis_raddr[2]),
        .I3(\fifo.valid_reg ),
        .I4(\fifo.valid_reg_0 ),
        .I5(up_tlf_valid),
        .O(\m_axis_raddr_reg_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h32CC3232)) 
    \m_axis_raddr_reg[0]_i_1 
       (.I0(m_axis_raddr[1]),
        .I1(m_axis_raddr[0]),
        .I2(m_axis_raddr[2]),
        .I3(\m_axis_raddr_reg_reg[0]_1 ),
        .I4(up_tlf_valid),
        .O(\m_axis_raddr_reg[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6A66)) 
    \m_axis_raddr_reg[1]_i_1 
       (.I0(m_axis_raddr[1]),
        .I1(m_axis_raddr[0]),
        .I2(\m_axis_raddr_reg_reg[0]_1 ),
        .I3(up_tlf_valid),
        .O(\m_axis_raddr_reg[1]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_raddr_reg[2]_i_1 
       (.I0(\m_axis_raddr_reg_reg[0]_0 ),
        .O(ctrl_enable_reg));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h78F07878)) 
    \m_axis_raddr_reg[2]_i_2 
       (.I0(m_axis_raddr[1]),
        .I1(m_axis_raddr[0]),
        .I2(m_axis_raddr[2]),
        .I3(\m_axis_raddr_reg_reg[0]_1 ),
        .I4(up_tlf_valid),
        .O(\m_axis_raddr_reg[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_raddr_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\m_axis_raddr_reg[0]_i_1_n_0 ),
        .Q(m_axis_raddr[0]),
        .R(ctrl_enable_reg));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_raddr_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\m_axis_raddr_reg[1]_i_1_n_0 ),
        .Q(m_axis_raddr[1]),
        .R(ctrl_enable_reg));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_raddr_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\m_axis_raddr_reg[2]_i_2_n_0 ),
        .Q(m_axis_raddr[2]),
        .R(ctrl_enable_reg));
  LUT5 #(
    .INIT(32'h5555F3FF)) 
    response_ready_i_1
       (.I0(up_response_valid),
        .I1(m_axis_raddr[0]),
        .I2(m_axis_raddr[1]),
        .I3(m_axis_raddr[2]),
        .I4(response_ready_reg),
        .O(response_valid_reg));
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
