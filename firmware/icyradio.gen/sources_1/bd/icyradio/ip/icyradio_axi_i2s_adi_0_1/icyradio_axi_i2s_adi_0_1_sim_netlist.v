// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Sat Oct  1 21:20:21 2022
// Host        : jsilva-kde running 64-bit KDE neon User - 5.25
// Command     : write_verilog -force -mode funcsim
//               /media/joao/SSD/Development/icyradio/firmware/icyradio.gen/sources_1/bd/icyradio/ip/icyradio_axi_i2s_adi_0_1/icyradio_axi_i2s_adi_0_1_sim_netlist.v
// Design      : icyradio_axi_i2s_adi_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "icyradio_axi_i2s_adi_0_1,axi_i2s_adi,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "axi_i2s_adi,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module icyradio_axi_i2s_adi_0_1
   (data_clk_i,
    bclk_o,
    lrclk_o,
    sdata_o,
    sdata_i,
    s_axis_aclk,
    s_axis_aresetn,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tlast,
    s_axis_tvalid,
    m_axis_aclk,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tlast,
    m_axis_tvalid,
    m_axis_tkeep,
    s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_rready,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_awready,
    s_axi_awprot,
    s_axi_arprot);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 i2s_signal_clock CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME i2s_signal_clock, ASSOCIATED_BUSIF i2s, FREQ_HZ 49152000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN icyradio_I2S_BCLK_IN, INSERT_VIP 0" *) input data_clk_i;
  (* x_interface_info = "analog.com:interface:i2s:1.0 i2s BCLK" *) output [0:0]bclk_o;
  (* x_interface_info = "analog.com:interface:i2s:1.0 i2s LRCLK" *) output [0:0]lrclk_o;
  (* x_interface_info = "analog.com:interface:i2s:1.0 i2s SDATA_OUT" *) output [0:0]sdata_o;
  (* x_interface_info = "analog.com:interface:i2s:1.0 i2s SDATA_IN" *) input [0:0]sdata_i;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 s_axis_aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axis_aclk, ASSOCIATED_BUSIF s_axis, ASSOCIATED_RESET s_axis_aresetn, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN icyradio_axi_pcie_0_0_axi_aclk_out, INSERT_VIP 0" *) input s_axis_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 s_axis_aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axis_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axis_aresetn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN icyradio_axi_pcie_0_0_axi_aclk_out, LAYERED_METADATA undef, INSERT_VIP 0" *) output s_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) input [31:0]s_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TLAST" *) input s_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) input s_axis_tvalid;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 m_axis_aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axis_aclk, ASSOCIATED_BUSIF m_axis, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN icyradio_axi_pcie_0_0_axi_aclk_out, INSERT_VIP 0" *) input m_axis_aclk;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN icyradio_axi_pcie_0_0_axi_aclk_out, LAYERED_METADATA undef, INSERT_VIP 0" *) input m_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) output [31:0]m_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) output m_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output m_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TKEEP" *) output [3:0]m_axis_tkeep;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 s_axi_aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axi_aclk, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN icyradio_axi_pcie_0_0_axi_aclk_out, INSERT_VIP 0" *) input s_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 s_axi_aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 125000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN icyradio_axi_pcie_0_0_axi_aclk_out, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [31:0]s_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *) input s_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi WDATA" *) input [31:0]s_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi WSTRB" *) input [3:0]s_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *) input s_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *) input s_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *) input [31:0]s_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *) input s_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *) input s_axi_rready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *) output s_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) output [31:0]s_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *) output [1:0]s_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *) output s_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *) output s_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi BRESP" *) output [1:0]s_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *) output s_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *) output s_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi AWPROT" *) input [2:0]s_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi ARPROT" *) input [2:0]s_axi_arprot;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]bclk_o;
  wire data_clk_i;
  wire [0:0]lrclk_o;
  wire m_axis_aclk;
  wire [31:8]\^m_axis_tdata ;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire s_axi_aclk;
  wire [31:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [23:0]\^s_axi_rdata ;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire s_axis_aclk;
  wire [31:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire [0:0]sdata_i;
  wire [0:0]sdata_o;
  wire NLW_U0_dma_req_rx_daready_UNCONNECTED;
  wire NLW_U0_dma_req_rx_drlast_UNCONNECTED;
  wire NLW_U0_dma_req_rx_drvalid_UNCONNECTED;
  wire NLW_U0_dma_req_tx_daready_UNCONNECTED;
  wire NLW_U0_dma_req_tx_drlast_UNCONNECTED;
  wire NLW_U0_dma_req_tx_drvalid_UNCONNECTED;
  wire [1:0]NLW_U0_dma_req_rx_drtype_UNCONNECTED;
  wire [1:0]NLW_U0_dma_req_tx_drtype_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [31:24]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  assign m_axis_tdata[31:8] = \^m_axis_tdata [31:8];
  assign m_axis_tdata[7] = \<const0> ;
  assign m_axis_tdata[6] = \<const0> ;
  assign m_axis_tdata[5] = \<const0> ;
  assign m_axis_tdata[4] = \<const0> ;
  assign m_axis_tdata[3] = \<const0> ;
  assign m_axis_tdata[2] = \<const0> ;
  assign m_axis_tdata[1] = \<const0> ;
  assign m_axis_tdata[0] = \<const0> ;
  assign m_axis_tkeep[3] = \<const1> ;
  assign m_axis_tkeep[2] = \<const1> ;
  assign m_axis_tkeep[1] = \<const1> ;
  assign m_axis_tkeep[0] = \<const1> ;
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
  assign s_axi_rdata[23:0] = \^s_axi_rdata [23:0];
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* BCLK_POL = "0" *) 
  (* DEVICE_FAMILY = "virtex6" *) 
  (* DMA_TYPE = "0" *) 
  (* HAS_RX = "1" *) 
  (* HAS_TX = "1" *) 
  (* LRCLK_POL = "0" *) 
  (* NUM_OF_CHANNEL = "1" *) 
  (* SLOT_WIDTH = "24" *) 
  (* S_AXI_ADDRESS_WIDTH = "32" *) 
  (* S_AXI_DATA_WIDTH = "32" *) 
  icyradio_axi_i2s_adi_0_1_axi_i2s_adi U0
       (.bclk_o(bclk_o),
        .data_clk_i(data_clk_i),
        .dma_req_rx_aclk(1'b0),
        .dma_req_rx_daready(NLW_U0_dma_req_rx_daready_UNCONNECTED),
        .dma_req_rx_datype({1'b0,1'b0}),
        .dma_req_rx_davalid(1'b0),
        .dma_req_rx_drlast(NLW_U0_dma_req_rx_drlast_UNCONNECTED),
        .dma_req_rx_drready(1'b0),
        .dma_req_rx_drtype(NLW_U0_dma_req_rx_drtype_UNCONNECTED[1:0]),
        .dma_req_rx_drvalid(NLW_U0_dma_req_rx_drvalid_UNCONNECTED),
        .dma_req_rx_rstn(1'b0),
        .dma_req_tx_aclk(1'b0),
        .dma_req_tx_daready(NLW_U0_dma_req_tx_daready_UNCONNECTED),
        .dma_req_tx_datype({1'b0,1'b0}),
        .dma_req_tx_davalid(1'b0),
        .dma_req_tx_drlast(NLW_U0_dma_req_tx_drlast_UNCONNECTED),
        .dma_req_tx_drready(1'b0),
        .dma_req_tx_drtype(NLW_U0_dma_req_tx_drtype_UNCONNECTED[1:0]),
        .dma_req_tx_drvalid(NLW_U0_dma_req_tx_drvalid_UNCONNECTED),
        .dma_req_tx_rstn(1'b0),
        .lrclk_o(lrclk_o),
        .m_axis_aclk(m_axis_aclk),
        .m_axis_tdata({\^m_axis_tdata ,NLW_U0_m_axis_tdata_UNCONNECTED[7:0]}),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[3:0]),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_araddr[5:2],1'b0,1'b0}),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_awaddr[5:2],1'b0,1'b0}),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata({NLW_U0_s_axi_rdata_UNCONNECTED[31:24],\^s_axi_rdata }),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_wdata[23:0]}),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(s_axi_wvalid),
        .s_axis_aclk(s_axis_aclk),
        .s_axis_aresetn(1'b0),
        .s_axis_tdata({s_axis_tdata[31:8],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid),
        .sdata_i(sdata_i),
        .sdata_o(sdata_o));
  VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "axi_ctrlif" *) 
module icyradio_axi_i2s_adi_0_1_axi_ctrlif
   (FSM_sequential_rd_state_reg_0,
    s_axi_wdata_1_sp_1,
    s_axi_wdata_0_sp_1,
    s_axi_arready,
    \s_axi_wdata[1]_0 ,
    E,
    \s_axi_awaddr[4] ,
    s_axi_rdata,
    \FSM_onehot_wr_state_reg[2]_0 ,
    \FSM_onehot_wr_state_reg[1]_0 ,
    SR,
    s_axi_aclk,
    s_axi_wdata,
    rx_enable,
    \I2S_CONTROL_REG_reg[0] ,
    s_axi_aresetn,
    s_axi_arvalid,
    s_axi_awaddr,
    \I2S_RESET_REG_reg[1] ,
    s_axi_awvalid,
    s_axi_wvalid,
    Q,
    \s_axi_rdata[15] ,
    cnt_reg,
    s_axi_rready,
    s_axi_bready,
    s_axi_araddr);
  output FSM_sequential_rd_state_reg_0;
  output s_axi_wdata_1_sp_1;
  output s_axi_wdata_0_sp_1;
  output s_axi_arready;
  output \s_axi_wdata[1]_0 ;
  output [0:0]E;
  output [0:0]\s_axi_awaddr[4] ;
  output [23:0]s_axi_rdata;
  output \FSM_onehot_wr_state_reg[2]_0 ;
  output \FSM_onehot_wr_state_reg[1]_0 ;
  input [0:0]SR;
  input s_axi_aclk;
  input [1:0]s_axi_wdata;
  input rx_enable;
  input \I2S_CONTROL_REG_reg[0] ;
  input s_axi_aresetn;
  input s_axi_arvalid;
  input [3:0]s_axi_awaddr;
  input \I2S_RESET_REG_reg[1] ;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input [15:0]Q;
  input [15:0]\s_axi_rdata[15] ;
  input [7:0]cnt_reg;
  input s_axi_rready;
  input s_axi_bready;
  input [3:0]s_axi_araddr;

  wire [0:0]E;
  wire \FSM_onehot_wr_state[0]_i_1_n_0 ;
  wire \FSM_onehot_wr_state[1]_i_1_n_0 ;
  wire \FSM_onehot_wr_state[2]_i_1_n_0 ;
  wire \FSM_onehot_wr_state_reg[1]_0 ;
  wire \FSM_onehot_wr_state_reg[2]_0 ;
  wire \FSM_onehot_wr_state_reg_n_0_[0] ;
  wire FSM_sequential_rd_state_i_2_n_0;
  wire FSM_sequential_rd_state_reg_0;
  wire \I2S_CLK_CONTROL_REG[23]_i_2_n_0 ;
  wire I2S_CONTROL_REG;
  wire \I2S_CONTROL_REG_reg[0] ;
  wire \I2S_RESET_REG_reg[1] ;
  wire [15:0]Q;
  wire [0:0]SR;
  wire [7:0]cnt_reg;
  wire [3:0]rd_addr;
  wire \rd_addr[3]_i_1_n_0 ;
  wire rx_enable;
  wire s_axi_aclk;
  wire [3:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [3:0]s_axi_awaddr;
  wire [0:0]\s_axi_awaddr[4] ;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [23:0]s_axi_rdata;
  wire \s_axi_rdata[0]_INST_0_i_1_n_0 ;
  wire [15:0]\s_axi_rdata[15] ;
  wire \s_axi_rdata[1]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[1]_INST_0_i_2_n_0 ;
  wire \s_axi_rdata[7]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[7]_INST_0_i_2_n_0 ;
  wire s_axi_rready;
  wire [1:0]s_axi_wdata;
  wire \s_axi_wdata[1]_0 ;
  wire s_axi_wdata_0_sn_1;
  wire s_axi_wdata_1_sn_1;
  wire s_axi_wvalid;

  assign s_axi_wdata_0_sp_1 = s_axi_wdata_0_sn_1;
  assign s_axi_wdata_1_sp_1 = s_axi_wdata_1_sn_1;
  LUT6 #(
    .INIT(64'hFFFF0000FFF07070)) 
    \FSM_onehot_wr_state[0]_i_1 
       (.I0(s_axi_wvalid),
        .I1(s_axi_awvalid),
        .I2(\FSM_onehot_wr_state_reg_n_0_[0] ),
        .I3(s_axi_bready),
        .I4(\FSM_onehot_wr_state_reg[2]_0 ),
        .I5(\FSM_onehot_wr_state_reg[1]_0 ),
        .O(\FSM_onehot_wr_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F0F0808080)) 
    \FSM_onehot_wr_state[1]_i_1 
       (.I0(s_axi_wvalid),
        .I1(s_axi_awvalid),
        .I2(\FSM_onehot_wr_state_reg_n_0_[0] ),
        .I3(s_axi_bready),
        .I4(\FSM_onehot_wr_state_reg[2]_0 ),
        .I5(\FSM_onehot_wr_state_reg[1]_0 ),
        .O(\FSM_onehot_wr_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF007F0000)) 
    \FSM_onehot_wr_state[2]_i_1 
       (.I0(s_axi_wvalid),
        .I1(s_axi_awvalid),
        .I2(\FSM_onehot_wr_state_reg_n_0_[0] ),
        .I3(s_axi_bready),
        .I4(\FSM_onehot_wr_state_reg[2]_0 ),
        .I5(\FSM_onehot_wr_state_reg[1]_0 ),
        .O(\FSM_onehot_wr_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "idle:001,ack:010,resp:100," *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_wr_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_wr_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_wr_state_reg_n_0_[0] ),
        .S(SR));
  (* FSM_ENCODED_STATES = "idle:001,ack:010,resp:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wr_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_wr_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_wr_state_reg[1]_0 ),
        .R(SR));
  (* FSM_ENCODED_STATES = "idle:001,ack:010,resp:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wr_state_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_wr_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_wr_state_reg[2]_0 ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h3A)) 
    FSM_sequential_rd_state_i_2
       (.I0(s_axi_arvalid),
        .I1(s_axi_rready),
        .I2(FSM_sequential_rd_state_reg_0),
        .O(FSM_sequential_rd_state_i_2_n_0));
  (* FSM_ENCODED_STATES = "idle:0,resp:1," *) 
  FDRE FSM_sequential_rd_state_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(FSM_sequential_rd_state_i_2_n_0),
        .Q(FSM_sequential_rd_state_reg_0),
        .R(SR));
  LUT5 #(
    .INIT(32'h00040000)) 
    \I2S_CLK_CONTROL_REG[23]_i_1 
       (.I0(s_axi_awaddr[2]),
        .I1(s_axi_awaddr[1]),
        .I2(s_axi_awaddr[3]),
        .I3(s_axi_awaddr[0]),
        .I4(\I2S_CLK_CONTROL_REG[23]_i_2_n_0 ),
        .O(\s_axi_awaddr[4] ));
  LUT3 #(
    .INIT(8'h80)) 
    \I2S_CLK_CONTROL_REG[23]_i_2 
       (.I0(\FSM_onehot_wr_state_reg_n_0_[0] ),
        .I1(s_axi_awvalid),
        .I2(s_axi_wvalid),
        .O(\I2S_CLK_CONTROL_REG[23]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \I2S_CONTROL_REG[0]_i_1 
       (.I0(s_axi_wdata[0]),
        .I1(I2S_CONTROL_REG),
        .I2(\I2S_CONTROL_REG_reg[0] ),
        .O(s_axi_wdata_0_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \I2S_CONTROL_REG[1]_i_1 
       (.I0(s_axi_wdata[1]),
        .I1(I2S_CONTROL_REG),
        .I2(rx_enable),
        .O(s_axi_wdata_1_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \I2S_CONTROL_REG[1]_i_2 
       (.I0(\I2S_CLK_CONTROL_REG[23]_i_2_n_0 ),
        .I1(s_axi_awaddr[3]),
        .I2(s_axi_awaddr[0]),
        .I3(s_axi_awaddr[2]),
        .I4(s_axi_awaddr[1]),
        .O(I2S_CONTROL_REG));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \I2S_RESET_REG[1]_i_1 
       (.I0(\I2S_CLK_CONTROL_REG[23]_i_2_n_0 ),
        .I1(\I2S_RESET_REG_reg[1] ),
        .I2(s_axi_wdata[1]),
        .I3(s_axi_aresetn),
        .I4(s_axi_awaddr[0]),
        .I5(s_axi_awaddr[3]),
        .O(\s_axi_wdata[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h00080000)) 
    \PERIOD_LEN_REG[15]_i_1 
       (.I0(s_axi_awaddr[2]),
        .I1(s_axi_awaddr[1]),
        .I2(s_axi_awaddr[3]),
        .I3(s_axi_awaddr[0]),
        .I4(\I2S_CLK_CONTROL_REG[23]_i_2_n_0 ),
        .O(E));
  LUT3 #(
    .INIT(8'h08)) 
    \rd_addr[3]_i_1 
       (.I0(s_axi_aresetn),
        .I1(s_axi_arvalid),
        .I2(FSM_sequential_rd_state_reg_0),
        .O(\rd_addr[3]_i_1_n_0 ));
  FDRE \rd_addr_reg[0] 
       (.C(s_axi_aclk),
        .CE(\rd_addr[3]_i_1_n_0 ),
        .D(s_axi_araddr[0]),
        .Q(rd_addr[0]),
        .R(1'b0));
  FDRE \rd_addr_reg[1] 
       (.C(s_axi_aclk),
        .CE(\rd_addr[3]_i_1_n_0 ),
        .D(s_axi_araddr[1]),
        .Q(rd_addr[1]),
        .R(1'b0));
  FDRE \rd_addr_reg[2] 
       (.C(s_axi_aclk),
        .CE(\rd_addr[3]_i_1_n_0 ),
        .D(s_axi_araddr[2]),
        .Q(rd_addr[2]),
        .R(1'b0));
  FDRE \rd_addr_reg[3] 
       (.C(s_axi_aclk),
        .CE(\rd_addr[3]_i_1_n_0 ),
        .D(s_axi_araddr[3]),
        .Q(rd_addr[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT1 #(
    .INIT(2'h1)) 
    s_axi_arready_INST_0
       (.I0(FSM_sequential_rd_state_reg_0),
        .O(s_axi_arready));
  LUT5 #(
    .INIT(32'hF4F4FFF4)) 
    \s_axi_rdata[0]_INST_0 
       (.I0(\s_axi_rdata[7]_INST_0_i_1_n_0 ),
        .I1(\s_axi_rdata[15] [0]),
        .I2(\s_axi_rdata[0]_INST_0_i_1_n_0 ),
        .I3(\I2S_CONTROL_REG_reg[0] ),
        .I4(\s_axi_rdata[1]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[0]));
  LUT6 #(
    .INIT(64'h0404040000000400)) 
    \s_axi_rdata[0]_INST_0_i_1 
       (.I0(rd_addr[0]),
        .I1(rd_addr[1]),
        .I2(rd_addr[2]),
        .I3(Q[0]),
        .I4(rd_addr[3]),
        .I5(cnt_reg[0]),
        .O(\s_axi_rdata[0]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000800)) 
    \s_axi_rdata[10]_INST_0 
       (.I0(\s_axi_rdata[15] [10]),
        .I1(rd_addr[2]),
        .I2(rd_addr[3]),
        .I3(rd_addr[1]),
        .I4(rd_addr[0]),
        .O(s_axi_rdata[10]));
  LUT5 #(
    .INIT(32'h00000800)) 
    \s_axi_rdata[11]_INST_0 
       (.I0(\s_axi_rdata[15] [11]),
        .I1(rd_addr[2]),
        .I2(rd_addr[3]),
        .I3(rd_addr[1]),
        .I4(rd_addr[0]),
        .O(s_axi_rdata[11]));
  LUT5 #(
    .INIT(32'h00000800)) 
    \s_axi_rdata[12]_INST_0 
       (.I0(\s_axi_rdata[15] [12]),
        .I1(rd_addr[2]),
        .I2(rd_addr[3]),
        .I3(rd_addr[1]),
        .I4(rd_addr[0]),
        .O(s_axi_rdata[12]));
  LUT5 #(
    .INIT(32'h00000800)) 
    \s_axi_rdata[13]_INST_0 
       (.I0(\s_axi_rdata[15] [13]),
        .I1(rd_addr[2]),
        .I2(rd_addr[3]),
        .I3(rd_addr[1]),
        .I4(rd_addr[0]),
        .O(s_axi_rdata[13]));
  LUT5 #(
    .INIT(32'h00000800)) 
    \s_axi_rdata[14]_INST_0 
       (.I0(\s_axi_rdata[15] [14]),
        .I1(rd_addr[2]),
        .I2(rd_addr[3]),
        .I3(rd_addr[1]),
        .I4(rd_addr[0]),
        .O(s_axi_rdata[14]));
  LUT5 #(
    .INIT(32'h00000800)) 
    \s_axi_rdata[15]_INST_0 
       (.I0(\s_axi_rdata[15] [15]),
        .I1(rd_addr[2]),
        .I2(rd_addr[3]),
        .I3(rd_addr[1]),
        .I4(rd_addr[0]),
        .O(s_axi_rdata[15]));
  LUT5 #(
    .INIT(32'h00000400)) 
    \s_axi_rdata[16]_INST_0 
       (.I0(rd_addr[0]),
        .I1(rd_addr[1]),
        .I2(rd_addr[2]),
        .I3(Q[8]),
        .I4(rd_addr[3]),
        .O(s_axi_rdata[16]));
  LUT5 #(
    .INIT(32'h00000400)) 
    \s_axi_rdata[17]_INST_0 
       (.I0(rd_addr[0]),
        .I1(rd_addr[1]),
        .I2(rd_addr[2]),
        .I3(Q[9]),
        .I4(rd_addr[3]),
        .O(s_axi_rdata[17]));
  LUT5 #(
    .INIT(32'h00000400)) 
    \s_axi_rdata[18]_INST_0 
       (.I0(rd_addr[0]),
        .I1(rd_addr[1]),
        .I2(rd_addr[2]),
        .I3(Q[10]),
        .I4(rd_addr[3]),
        .O(s_axi_rdata[18]));
  LUT5 #(
    .INIT(32'h00000400)) 
    \s_axi_rdata[19]_INST_0 
       (.I0(rd_addr[0]),
        .I1(rd_addr[1]),
        .I2(rd_addr[2]),
        .I3(Q[11]),
        .I4(rd_addr[3]),
        .O(s_axi_rdata[19]));
  LUT5 #(
    .INIT(32'hFFFF44F4)) 
    \s_axi_rdata[1]_INST_0 
       (.I0(\s_axi_rdata[7]_INST_0_i_1_n_0 ),
        .I1(\s_axi_rdata[15] [1]),
        .I2(rx_enable),
        .I3(\s_axi_rdata[1]_INST_0_i_1_n_0 ),
        .I4(\s_axi_rdata[1]_INST_0_i_2_n_0 ),
        .O(s_axi_rdata[1]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \s_axi_rdata[1]_INST_0_i_1 
       (.I0(rd_addr[0]),
        .I1(rd_addr[3]),
        .I2(rd_addr[1]),
        .I3(rd_addr[2]),
        .O(\s_axi_rdata[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0404040000000400)) 
    \s_axi_rdata[1]_INST_0_i_2 
       (.I0(rd_addr[0]),
        .I1(rd_addr[1]),
        .I2(rd_addr[2]),
        .I3(Q[1]),
        .I4(rd_addr[3]),
        .I5(cnt_reg[1]),
        .O(\s_axi_rdata[1]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000400)) 
    \s_axi_rdata[20]_INST_0 
       (.I0(rd_addr[0]),
        .I1(rd_addr[1]),
        .I2(rd_addr[2]),
        .I3(Q[12]),
        .I4(rd_addr[3]),
        .O(s_axi_rdata[20]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \s_axi_rdata[21]_INST_0 
       (.I0(rd_addr[0]),
        .I1(rd_addr[1]),
        .I2(rd_addr[2]),
        .I3(Q[13]),
        .I4(rd_addr[3]),
        .O(s_axi_rdata[21]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \s_axi_rdata[22]_INST_0 
       (.I0(rd_addr[0]),
        .I1(rd_addr[1]),
        .I2(rd_addr[2]),
        .I3(Q[14]),
        .I4(rd_addr[3]),
        .O(s_axi_rdata[22]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \s_axi_rdata[23]_INST_0 
       (.I0(rd_addr[0]),
        .I1(rd_addr[1]),
        .I2(rd_addr[2]),
        .I3(Q[15]),
        .I4(rd_addr[3]),
        .O(s_axi_rdata[23]));
  LUT6 #(
    .INIT(64'hF4FFF44444444444)) 
    \s_axi_rdata[2]_INST_0 
       (.I0(\s_axi_rdata[7]_INST_0_i_1_n_0 ),
        .I1(\s_axi_rdata[15] [2]),
        .I2(cnt_reg[2]),
        .I3(rd_addr[3]),
        .I4(Q[2]),
        .I5(\s_axi_rdata[7]_INST_0_i_2_n_0 ),
        .O(s_axi_rdata[2]));
  LUT6 #(
    .INIT(64'hF4FFF44444444444)) 
    \s_axi_rdata[3]_INST_0 
       (.I0(\s_axi_rdata[7]_INST_0_i_1_n_0 ),
        .I1(\s_axi_rdata[15] [3]),
        .I2(cnt_reg[3]),
        .I3(rd_addr[3]),
        .I4(Q[3]),
        .I5(\s_axi_rdata[7]_INST_0_i_2_n_0 ),
        .O(s_axi_rdata[3]));
  LUT6 #(
    .INIT(64'hF4FFF44444444444)) 
    \s_axi_rdata[4]_INST_0 
       (.I0(\s_axi_rdata[7]_INST_0_i_1_n_0 ),
        .I1(\s_axi_rdata[15] [4]),
        .I2(cnt_reg[4]),
        .I3(rd_addr[3]),
        .I4(Q[4]),
        .I5(\s_axi_rdata[7]_INST_0_i_2_n_0 ),
        .O(s_axi_rdata[4]));
  LUT6 #(
    .INIT(64'hF4FFF44444444444)) 
    \s_axi_rdata[5]_INST_0 
       (.I0(\s_axi_rdata[7]_INST_0_i_1_n_0 ),
        .I1(\s_axi_rdata[15] [5]),
        .I2(cnt_reg[5]),
        .I3(rd_addr[3]),
        .I4(Q[5]),
        .I5(\s_axi_rdata[7]_INST_0_i_2_n_0 ),
        .O(s_axi_rdata[5]));
  LUT6 #(
    .INIT(64'hF4FFF44444444444)) 
    \s_axi_rdata[6]_INST_0 
       (.I0(\s_axi_rdata[7]_INST_0_i_1_n_0 ),
        .I1(\s_axi_rdata[15] [6]),
        .I2(cnt_reg[6]),
        .I3(rd_addr[3]),
        .I4(Q[6]),
        .I5(\s_axi_rdata[7]_INST_0_i_2_n_0 ),
        .O(s_axi_rdata[6]));
  LUT6 #(
    .INIT(64'hF4FFF44444444444)) 
    \s_axi_rdata[7]_INST_0 
       (.I0(\s_axi_rdata[7]_INST_0_i_1_n_0 ),
        .I1(\s_axi_rdata[15] [7]),
        .I2(cnt_reg[7]),
        .I3(rd_addr[3]),
        .I4(Q[7]),
        .I5(\s_axi_rdata[7]_INST_0_i_2_n_0 ),
        .O(s_axi_rdata[7]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hFBFF)) 
    \s_axi_rdata[7]_INST_0_i_1 
       (.I0(rd_addr[0]),
        .I1(rd_addr[1]),
        .I2(rd_addr[3]),
        .I3(rd_addr[2]),
        .O(\s_axi_rdata[7]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \s_axi_rdata[7]_INST_0_i_2 
       (.I0(rd_addr[2]),
        .I1(rd_addr[1]),
        .I2(rd_addr[0]),
        .O(\s_axi_rdata[7]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000800)) 
    \s_axi_rdata[8]_INST_0 
       (.I0(\s_axi_rdata[15] [8]),
        .I1(rd_addr[2]),
        .I2(rd_addr[3]),
        .I3(rd_addr[1]),
        .I4(rd_addr[0]),
        .O(s_axi_rdata[8]));
  LUT5 #(
    .INIT(32'h00000800)) 
    \s_axi_rdata[9]_INST_0 
       (.I0(\s_axi_rdata[15] [9]),
        .I1(rd_addr[2]),
        .I2(rd_addr[3]),
        .I3(rd_addr[1]),
        .I4(rd_addr[0]),
        .O(s_axi_rdata[9]));
endmodule

(* BCLK_POL = "0" *) (* DEVICE_FAMILY = "virtex6" *) (* DMA_TYPE = "0" *) 
(* HAS_RX = "1" *) (* HAS_TX = "1" *) (* LRCLK_POL = "0" *) 
(* NUM_OF_CHANNEL = "1" *) (* ORIG_REF_NAME = "axi_i2s_adi" *) (* SLOT_WIDTH = "24" *) 
(* S_AXI_ADDRESS_WIDTH = "32" *) (* S_AXI_DATA_WIDTH = "32" *) 
module icyradio_axi_i2s_adi_0_1_axi_i2s_adi
   (data_clk_i,
    bclk_o,
    lrclk_o,
    sdata_o,
    sdata_i,
    s_axis_aclk,
    s_axis_aresetn,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tlast,
    s_axis_tvalid,
    m_axis_aclk,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tlast,
    m_axis_tvalid,
    m_axis_tkeep,
    dma_req_tx_aclk,
    dma_req_tx_rstn,
    dma_req_tx_davalid,
    dma_req_tx_datype,
    dma_req_tx_daready,
    dma_req_tx_drvalid,
    dma_req_tx_drtype,
    dma_req_tx_drlast,
    dma_req_tx_drready,
    dma_req_rx_aclk,
    dma_req_rx_rstn,
    dma_req_rx_davalid,
    dma_req_rx_datype,
    dma_req_rx_daready,
    dma_req_rx_drvalid,
    dma_req_rx_drtype,
    dma_req_rx_drlast,
    dma_req_rx_drready,
    s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_rready,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_awready,
    s_axi_awprot,
    s_axi_arprot);
  input data_clk_i;
  output [0:0]bclk_o;
  output [0:0]lrclk_o;
  output [0:0]sdata_o;
  input [0:0]sdata_i;
  input s_axis_aclk;
  input s_axis_aresetn;
  output s_axis_tready;
  input [31:0]s_axis_tdata;
  input s_axis_tlast;
  input s_axis_tvalid;
  input m_axis_aclk;
  input m_axis_tready;
  output [31:0]m_axis_tdata;
  output m_axis_tlast;
  output m_axis_tvalid;
  output [3:0]m_axis_tkeep;
  input dma_req_tx_aclk;
  input dma_req_tx_rstn;
  input dma_req_tx_davalid;
  input [1:0]dma_req_tx_datype;
  output dma_req_tx_daready;
  output dma_req_tx_drvalid;
  output [1:0]dma_req_tx_drtype;
  output dma_req_tx_drlast;
  input dma_req_tx_drready;
  input dma_req_rx_aclk;
  input dma_req_rx_rstn;
  input dma_req_rx_davalid;
  input [1:0]dma_req_rx_datype;
  output dma_req_rx_daready;
  output dma_req_rx_drvalid;
  output [1:0]dma_req_rx_drtype;
  output dma_req_rx_drlast;
  input dma_req_rx_drready;
  input s_axi_aclk;
  input s_axi_aresetn;
  input [31:0]s_axi_awaddr;
  input s_axi_awvalid;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  input s_axi_bready;
  input [31:0]s_axi_araddr;
  input s_axi_arvalid;
  input s_axi_rready;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  output s_axi_awready;
  input [2:0]s_axi_awprot;
  input [2:0]s_axi_arprot;

  wire \<const0> ;
  wire I2S_CLK_CONTROL_REG;
  wire [23:0]I2S_CLK_CONTROL_REG__0;
  wire \I2S_CONTROL_REG_reg_n_0_[0] ;
  wire \I2S_RESET_REG[1]_i_2_n_0 ;
  wire PERIOD_LEN_REG;
  wire \PERIOD_LEN_REG_reg_n_0_[0] ;
  wire \PERIOD_LEN_REG_reg_n_0_[10] ;
  wire \PERIOD_LEN_REG_reg_n_0_[11] ;
  wire \PERIOD_LEN_REG_reg_n_0_[12] ;
  wire \PERIOD_LEN_REG_reg_n_0_[13] ;
  wire \PERIOD_LEN_REG_reg_n_0_[14] ;
  wire \PERIOD_LEN_REG_reg_n_0_[15] ;
  wire \PERIOD_LEN_REG_reg_n_0_[1] ;
  wire \PERIOD_LEN_REG_reg_n_0_[2] ;
  wire \PERIOD_LEN_REG_reg_n_0_[3] ;
  wire \PERIOD_LEN_REG_reg_n_0_[4] ;
  wire \PERIOD_LEN_REG_reg_n_0_[5] ;
  wire \PERIOD_LEN_REG_reg_n_0_[6] ;
  wire \PERIOD_LEN_REG_reg_n_0_[7] ;
  wire \PERIOD_LEN_REG_reg_n_0_[8] ;
  wire \PERIOD_LEN_REG_reg_n_0_[9] ;
  wire [0:0]bclk_o;
  wire \cnt[0]_i_2_n_0 ;
  wire [7:0]cnt_reg;
  wire \cnt_reg[0]_i_1_n_0 ;
  wire \cnt_reg[0]_i_1_n_1 ;
  wire \cnt_reg[0]_i_1_n_2 ;
  wire \cnt_reg[0]_i_1_n_3 ;
  wire \cnt_reg[0]_i_1_n_4 ;
  wire \cnt_reg[0]_i_1_n_5 ;
  wire \cnt_reg[0]_i_1_n_6 ;
  wire \cnt_reg[0]_i_1_n_7 ;
  wire \cnt_reg[4]_i_1_n_1 ;
  wire \cnt_reg[4]_i_1_n_2 ;
  wire \cnt_reg[4]_i_1_n_3 ;
  wire \cnt_reg[4]_i_1_n_4 ;
  wire \cnt_reg[4]_i_1_n_5 ;
  wire \cnt_reg[4]_i_1_n_6 ;
  wire \cnt_reg[4]_i_1_n_7 ;
  wire ctrl_n_0;
  wire ctrlif_n_1;
  wire ctrlif_n_2;
  wire ctrlif_n_4;
  wire data_clk_i;
  wire \fifo/rd_addr0 ;
  wire [23:0]\gen[0].data_latched_reg[0] ;
  wire [0:0]lrclk_o;
  wire m_axis_aclk;
  wire [31:8]\^m_axis_tdata ;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire rx_ack;
  wire rx_enable;
  wire rx_stb;
  wire s_axi_aclk;
  wire [31:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [23:0]\^s_axi_rdata ;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire s_axis_aclk;
  wire [31:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire [0:0]sdata_i;
  wire [0:0]sdata_o;
  wire \streaming_dma_tx_gen.tx_fifo_n_1 ;
  wire \streaming_dma_tx_gen.tx_fifo_n_10 ;
  wire \streaming_dma_tx_gen.tx_fifo_n_11 ;
  wire \streaming_dma_tx_gen.tx_fifo_n_12 ;
  wire \streaming_dma_tx_gen.tx_fifo_n_13 ;
  wire \streaming_dma_tx_gen.tx_fifo_n_14 ;
  wire \streaming_dma_tx_gen.tx_fifo_n_15 ;
  wire \streaming_dma_tx_gen.tx_fifo_n_16 ;
  wire \streaming_dma_tx_gen.tx_fifo_n_17 ;
  wire \streaming_dma_tx_gen.tx_fifo_n_18 ;
  wire \streaming_dma_tx_gen.tx_fifo_n_19 ;
  wire \streaming_dma_tx_gen.tx_fifo_n_20 ;
  wire \streaming_dma_tx_gen.tx_fifo_n_21 ;
  wire \streaming_dma_tx_gen.tx_fifo_n_22 ;
  wire \streaming_dma_tx_gen.tx_fifo_n_23 ;
  wire \streaming_dma_tx_gen.tx_fifo_n_24 ;
  wire \streaming_dma_tx_gen.tx_fifo_n_25 ;
  wire \streaming_dma_tx_gen.tx_fifo_n_26 ;
  wire \streaming_dma_tx_gen.tx_fifo_n_3 ;
  wire \streaming_dma_tx_gen.tx_fifo_n_4 ;
  wire \streaming_dma_tx_gen.tx_fifo_n_5 ;
  wire \streaming_dma_tx_gen.tx_fifo_n_6 ;
  wire \streaming_dma_tx_gen.tx_fifo_n_7 ;
  wire \streaming_dma_tx_gen.tx_fifo_n_8 ;
  wire \streaming_dma_tx_gen.tx_fifo_n_9 ;
  wire tx_fifo_reset;
  wire \tx_gen.tx/channel_sync_int ;
  wire \tx_gen.tx/channel_sync_int_d1 ;
  wire \tx_gen.tx/enable_int ;
  wire tx_stb;
  wire [3:3]\NLW_cnt_reg[4]_i_1_CO_UNCONNECTED ;

  assign dma_req_rx_daready = \<const0> ;
  assign dma_req_rx_drlast = \<const0> ;
  assign dma_req_rx_drtype[1] = \<const0> ;
  assign dma_req_rx_drtype[0] = \<const0> ;
  assign dma_req_rx_drvalid = \<const0> ;
  assign dma_req_tx_daready = \<const0> ;
  assign dma_req_tx_drlast = \<const0> ;
  assign dma_req_tx_drtype[1] = \<const0> ;
  assign dma_req_tx_drtype[0] = \<const0> ;
  assign dma_req_tx_drvalid = \<const0> ;
  assign m_axis_tdata[31:8] = \^m_axis_tdata [31:8];
  assign m_axis_tdata[7] = \<const0> ;
  assign m_axis_tdata[6] = \<const0> ;
  assign m_axis_tdata[5] = \<const0> ;
  assign m_axis_tdata[4] = \<const0> ;
  assign m_axis_tdata[3] = \<const0> ;
  assign m_axis_tdata[2] = \<const0> ;
  assign m_axis_tdata[1] = \<const0> ;
  assign m_axis_tdata[0] = \<const0> ;
  assign m_axis_tkeep[3] = \<const0> ;
  assign m_axis_tkeep[2] = \<const0> ;
  assign m_axis_tkeep[1] = \<const0> ;
  assign m_axis_tkeep[0] = \<const0> ;
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
  assign s_axi_rdata[23:0] = \^s_axi_rdata [23:0];
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  FDRE \I2S_CLK_CONTROL_REG_reg[0] 
       (.C(s_axi_aclk),
        .CE(I2S_CLK_CONTROL_REG),
        .D(s_axi_wdata[0]),
        .Q(I2S_CLK_CONTROL_REG__0[0]),
        .R(ctrl_n_0));
  FDRE \I2S_CLK_CONTROL_REG_reg[16] 
       (.C(s_axi_aclk),
        .CE(I2S_CLK_CONTROL_REG),
        .D(s_axi_wdata[16]),
        .Q(I2S_CLK_CONTROL_REG__0[16]),
        .R(ctrl_n_0));
  FDRE \I2S_CLK_CONTROL_REG_reg[17] 
       (.C(s_axi_aclk),
        .CE(I2S_CLK_CONTROL_REG),
        .D(s_axi_wdata[17]),
        .Q(I2S_CLK_CONTROL_REG__0[17]),
        .R(ctrl_n_0));
  FDRE \I2S_CLK_CONTROL_REG_reg[18] 
       (.C(s_axi_aclk),
        .CE(I2S_CLK_CONTROL_REG),
        .D(s_axi_wdata[18]),
        .Q(I2S_CLK_CONTROL_REG__0[18]),
        .R(ctrl_n_0));
  FDRE \I2S_CLK_CONTROL_REG_reg[19] 
       (.C(s_axi_aclk),
        .CE(I2S_CLK_CONTROL_REG),
        .D(s_axi_wdata[19]),
        .Q(I2S_CLK_CONTROL_REG__0[19]),
        .R(ctrl_n_0));
  FDRE \I2S_CLK_CONTROL_REG_reg[1] 
       (.C(s_axi_aclk),
        .CE(I2S_CLK_CONTROL_REG),
        .D(s_axi_wdata[1]),
        .Q(I2S_CLK_CONTROL_REG__0[1]),
        .R(ctrl_n_0));
  FDRE \I2S_CLK_CONTROL_REG_reg[20] 
       (.C(s_axi_aclk),
        .CE(I2S_CLK_CONTROL_REG),
        .D(s_axi_wdata[20]),
        .Q(I2S_CLK_CONTROL_REG__0[20]),
        .R(ctrl_n_0));
  FDRE \I2S_CLK_CONTROL_REG_reg[21] 
       (.C(s_axi_aclk),
        .CE(I2S_CLK_CONTROL_REG),
        .D(s_axi_wdata[21]),
        .Q(I2S_CLK_CONTROL_REG__0[21]),
        .R(ctrl_n_0));
  FDRE \I2S_CLK_CONTROL_REG_reg[22] 
       (.C(s_axi_aclk),
        .CE(I2S_CLK_CONTROL_REG),
        .D(s_axi_wdata[22]),
        .Q(I2S_CLK_CONTROL_REG__0[22]),
        .R(ctrl_n_0));
  FDRE \I2S_CLK_CONTROL_REG_reg[23] 
       (.C(s_axi_aclk),
        .CE(I2S_CLK_CONTROL_REG),
        .D(s_axi_wdata[23]),
        .Q(I2S_CLK_CONTROL_REG__0[23]),
        .R(ctrl_n_0));
  FDRE \I2S_CLK_CONTROL_REG_reg[2] 
       (.C(s_axi_aclk),
        .CE(I2S_CLK_CONTROL_REG),
        .D(s_axi_wdata[2]),
        .Q(I2S_CLK_CONTROL_REG__0[2]),
        .R(ctrl_n_0));
  FDRE \I2S_CLK_CONTROL_REG_reg[3] 
       (.C(s_axi_aclk),
        .CE(I2S_CLK_CONTROL_REG),
        .D(s_axi_wdata[3]),
        .Q(I2S_CLK_CONTROL_REG__0[3]),
        .R(ctrl_n_0));
  FDRE \I2S_CLK_CONTROL_REG_reg[4] 
       (.C(s_axi_aclk),
        .CE(I2S_CLK_CONTROL_REG),
        .D(s_axi_wdata[4]),
        .Q(I2S_CLK_CONTROL_REG__0[4]),
        .R(ctrl_n_0));
  FDRE \I2S_CLK_CONTROL_REG_reg[5] 
       (.C(s_axi_aclk),
        .CE(I2S_CLK_CONTROL_REG),
        .D(s_axi_wdata[5]),
        .Q(I2S_CLK_CONTROL_REG__0[5]),
        .R(ctrl_n_0));
  FDRE \I2S_CLK_CONTROL_REG_reg[6] 
       (.C(s_axi_aclk),
        .CE(I2S_CLK_CONTROL_REG),
        .D(s_axi_wdata[6]),
        .Q(I2S_CLK_CONTROL_REG__0[6]),
        .R(ctrl_n_0));
  FDRE \I2S_CLK_CONTROL_REG_reg[7] 
       (.C(s_axi_aclk),
        .CE(I2S_CLK_CONTROL_REG),
        .D(s_axi_wdata[7]),
        .Q(I2S_CLK_CONTROL_REG__0[7]),
        .R(ctrl_n_0));
  FDRE \I2S_CONTROL_REG_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ctrlif_n_2),
        .Q(\I2S_CONTROL_REG_reg_n_0_[0] ),
        .R(ctrl_n_0));
  FDRE \I2S_CONTROL_REG_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ctrlif_n_1),
        .Q(rx_enable),
        .R(ctrl_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    \I2S_RESET_REG[1]_i_2 
       (.I0(s_axi_awaddr[4]),
        .I1(s_axi_awaddr[3]),
        .O(\I2S_RESET_REG[1]_i_2_n_0 ));
  FDRE \I2S_RESET_REG_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ctrlif_n_4),
        .Q(tx_fifo_reset),
        .R(1'b0));
  FDRE \PERIOD_LEN_REG_reg[0] 
       (.C(s_axi_aclk),
        .CE(PERIOD_LEN_REG),
        .D(s_axi_wdata[0]),
        .Q(\PERIOD_LEN_REG_reg_n_0_[0] ),
        .R(ctrl_n_0));
  FDRE \PERIOD_LEN_REG_reg[10] 
       (.C(s_axi_aclk),
        .CE(PERIOD_LEN_REG),
        .D(s_axi_wdata[10]),
        .Q(\PERIOD_LEN_REG_reg_n_0_[10] ),
        .R(ctrl_n_0));
  FDRE \PERIOD_LEN_REG_reg[11] 
       (.C(s_axi_aclk),
        .CE(PERIOD_LEN_REG),
        .D(s_axi_wdata[11]),
        .Q(\PERIOD_LEN_REG_reg_n_0_[11] ),
        .R(ctrl_n_0));
  FDRE \PERIOD_LEN_REG_reg[12] 
       (.C(s_axi_aclk),
        .CE(PERIOD_LEN_REG),
        .D(s_axi_wdata[12]),
        .Q(\PERIOD_LEN_REG_reg_n_0_[12] ),
        .R(ctrl_n_0));
  FDRE \PERIOD_LEN_REG_reg[13] 
       (.C(s_axi_aclk),
        .CE(PERIOD_LEN_REG),
        .D(s_axi_wdata[13]),
        .Q(\PERIOD_LEN_REG_reg_n_0_[13] ),
        .R(ctrl_n_0));
  FDRE \PERIOD_LEN_REG_reg[14] 
       (.C(s_axi_aclk),
        .CE(PERIOD_LEN_REG),
        .D(s_axi_wdata[14]),
        .Q(\PERIOD_LEN_REG_reg_n_0_[14] ),
        .R(ctrl_n_0));
  FDRE \PERIOD_LEN_REG_reg[15] 
       (.C(s_axi_aclk),
        .CE(PERIOD_LEN_REG),
        .D(s_axi_wdata[15]),
        .Q(\PERIOD_LEN_REG_reg_n_0_[15] ),
        .R(ctrl_n_0));
  FDRE \PERIOD_LEN_REG_reg[1] 
       (.C(s_axi_aclk),
        .CE(PERIOD_LEN_REG),
        .D(s_axi_wdata[1]),
        .Q(\PERIOD_LEN_REG_reg_n_0_[1] ),
        .R(ctrl_n_0));
  FDRE \PERIOD_LEN_REG_reg[2] 
       (.C(s_axi_aclk),
        .CE(PERIOD_LEN_REG),
        .D(s_axi_wdata[2]),
        .Q(\PERIOD_LEN_REG_reg_n_0_[2] ),
        .R(ctrl_n_0));
  FDRE \PERIOD_LEN_REG_reg[3] 
       (.C(s_axi_aclk),
        .CE(PERIOD_LEN_REG),
        .D(s_axi_wdata[3]),
        .Q(\PERIOD_LEN_REG_reg_n_0_[3] ),
        .R(ctrl_n_0));
  FDRE \PERIOD_LEN_REG_reg[4] 
       (.C(s_axi_aclk),
        .CE(PERIOD_LEN_REG),
        .D(s_axi_wdata[4]),
        .Q(\PERIOD_LEN_REG_reg_n_0_[4] ),
        .R(ctrl_n_0));
  FDRE \PERIOD_LEN_REG_reg[5] 
       (.C(s_axi_aclk),
        .CE(PERIOD_LEN_REG),
        .D(s_axi_wdata[5]),
        .Q(\PERIOD_LEN_REG_reg_n_0_[5] ),
        .R(ctrl_n_0));
  FDRE \PERIOD_LEN_REG_reg[6] 
       (.C(s_axi_aclk),
        .CE(PERIOD_LEN_REG),
        .D(s_axi_wdata[6]),
        .Q(\PERIOD_LEN_REG_reg_n_0_[6] ),
        .R(ctrl_n_0));
  FDRE \PERIOD_LEN_REG_reg[7] 
       (.C(s_axi_aclk),
        .CE(PERIOD_LEN_REG),
        .D(s_axi_wdata[7]),
        .Q(\PERIOD_LEN_REG_reg_n_0_[7] ),
        .R(ctrl_n_0));
  FDRE \PERIOD_LEN_REG_reg[8] 
       (.C(s_axi_aclk),
        .CE(PERIOD_LEN_REG),
        .D(s_axi_wdata[8]),
        .Q(\PERIOD_LEN_REG_reg_n_0_[8] ),
        .R(ctrl_n_0));
  FDRE \PERIOD_LEN_REG_reg[9] 
       (.C(s_axi_aclk),
        .CE(PERIOD_LEN_REG),
        .D(s_axi_wdata[9]),
        .Q(\PERIOD_LEN_REG_reg_n_0_[9] ),
        .R(ctrl_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_2 
       (.I0(cnt_reg[0]),
        .O(\cnt[0]_i_2_n_0 ));
  FDRE \cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_1_n_7 ),
        .Q(cnt_reg[0]),
        .R(ctrl_n_0));
  CARRY4 \cnt_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\cnt_reg[0]_i_1_n_0 ,\cnt_reg[0]_i_1_n_1 ,\cnt_reg[0]_i_1_n_2 ,\cnt_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\cnt_reg[0]_i_1_n_4 ,\cnt_reg[0]_i_1_n_5 ,\cnt_reg[0]_i_1_n_6 ,\cnt_reg[0]_i_1_n_7 }),
        .S({cnt_reg[3:1],\cnt[0]_i_2_n_0 }));
  FDRE \cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_1_n_6 ),
        .Q(cnt_reg[1]),
        .R(ctrl_n_0));
  FDRE \cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_1_n_5 ),
        .Q(cnt_reg[2]),
        .R(ctrl_n_0));
  FDRE \cnt_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_1_n_4 ),
        .Q(cnt_reg[3]),
        .R(ctrl_n_0));
  FDRE \cnt_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_7 ),
        .Q(cnt_reg[4]),
        .R(ctrl_n_0));
  CARRY4 \cnt_reg[4]_i_1 
       (.CI(\cnt_reg[0]_i_1_n_0 ),
        .CO({\NLW_cnt_reg[4]_i_1_CO_UNCONNECTED [3],\cnt_reg[4]_i_1_n_1 ,\cnt_reg[4]_i_1_n_2 ,\cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[4]_i_1_n_4 ,\cnt_reg[4]_i_1_n_5 ,\cnt_reg[4]_i_1_n_6 ,\cnt_reg[4]_i_1_n_7 }),
        .S(cnt_reg[7:4]));
  FDRE \cnt_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_6 ),
        .Q(cnt_reg[5]),
        .R(ctrl_n_0));
  FDRE \cnt_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_5 ),
        .Q(cnt_reg[6]),
        .R(ctrl_n_0));
  FDRE \cnt_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_4 ),
        .Q(cnt_reg[7]),
        .R(ctrl_n_0));
  icyradio_axi_i2s_adi_0_1_i2s_controller ctrl
       (.D(\streaming_dma_tx_gen.tx_fifo_n_3 ),
        .Q({I2S_CLK_CONTROL_REG__0[23:16],I2S_CLK_CONTROL_REG__0[7:0]}),
        .SR(ctrl_n_0),
        .bclk_o(bclk_o),
        .channel_sync_int(\tx_gen.tx/channel_sync_int ),
        .channel_sync_int_d1(\tx_gen.tx/channel_sync_int_d1 ),
        .data_clk_i(data_clk_i),
        .enable_int(\tx_gen.tx/enable_int ),
        .\gen[0].data_int_reg[0][8] (\I2S_CONTROL_REG_reg_n_0_[0] ),
        .\gen[0].data_latched_reg[0][23] (\gen[0].data_latched_reg[0] ),
        .lrclk_o(lrclk_o),
        .out_data({\streaming_dma_tx_gen.tx_fifo_n_4 ,\streaming_dma_tx_gen.tx_fifo_n_5 ,\streaming_dma_tx_gen.tx_fifo_n_6 ,\streaming_dma_tx_gen.tx_fifo_n_7 ,\streaming_dma_tx_gen.tx_fifo_n_8 ,\streaming_dma_tx_gen.tx_fifo_n_9 ,\streaming_dma_tx_gen.tx_fifo_n_10 ,\streaming_dma_tx_gen.tx_fifo_n_11 ,\streaming_dma_tx_gen.tx_fifo_n_12 ,\streaming_dma_tx_gen.tx_fifo_n_13 ,\streaming_dma_tx_gen.tx_fifo_n_14 ,\streaming_dma_tx_gen.tx_fifo_n_15 ,\streaming_dma_tx_gen.tx_fifo_n_16 ,\streaming_dma_tx_gen.tx_fifo_n_17 ,\streaming_dma_tx_gen.tx_fifo_n_18 ,\streaming_dma_tx_gen.tx_fifo_n_19 ,\streaming_dma_tx_gen.tx_fifo_n_20 ,\streaming_dma_tx_gen.tx_fifo_n_21 ,\streaming_dma_tx_gen.tx_fifo_n_22 ,\streaming_dma_tx_gen.tx_fifo_n_23 ,\streaming_dma_tx_gen.tx_fifo_n_24 ,\streaming_dma_tx_gen.tx_fifo_n_25 ,\streaming_dma_tx_gen.tx_fifo_n_26 }),
        .rd_addr0(\fifo/rd_addr0 ),
        .rx_ack(rx_ack),
        .rx_enable(rx_enable),
        .rx_stb(rx_stb),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .sdata_i(sdata_i),
        .sdata_o(sdata_o),
        .tx_stb(tx_stb));
  icyradio_axi_i2s_adi_0_1_axi_ctrlif ctrlif
       (.E(PERIOD_LEN_REG),
        .\FSM_onehot_wr_state_reg[1]_0 (s_axi_wready),
        .\FSM_onehot_wr_state_reg[2]_0 (s_axi_bvalid),
        .FSM_sequential_rd_state_reg_0(s_axi_rvalid),
        .\I2S_CONTROL_REG_reg[0] (\I2S_CONTROL_REG_reg_n_0_[0] ),
        .\I2S_RESET_REG_reg[1] (\I2S_RESET_REG[1]_i_2_n_0 ),
        .Q({I2S_CLK_CONTROL_REG__0[23:16],I2S_CLK_CONTROL_REG__0[7:0]}),
        .SR(ctrl_n_0),
        .cnt_reg(cnt_reg),
        .rx_enable(rx_enable),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[5:2]),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[5:2]),
        .\s_axi_awaddr[4] (I2S_CLK_CONTROL_REG),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_rdata(\^s_axi_rdata ),
        .\s_axi_rdata[15] ({\PERIOD_LEN_REG_reg_n_0_[15] ,\PERIOD_LEN_REG_reg_n_0_[14] ,\PERIOD_LEN_REG_reg_n_0_[13] ,\PERIOD_LEN_REG_reg_n_0_[12] ,\PERIOD_LEN_REG_reg_n_0_[11] ,\PERIOD_LEN_REG_reg_n_0_[10] ,\PERIOD_LEN_REG_reg_n_0_[9] ,\PERIOD_LEN_REG_reg_n_0_[8] ,\PERIOD_LEN_REG_reg_n_0_[7] ,\PERIOD_LEN_REG_reg_n_0_[6] ,\PERIOD_LEN_REG_reg_n_0_[5] ,\PERIOD_LEN_REG_reg_n_0_[4] ,\PERIOD_LEN_REG_reg_n_0_[3] ,\PERIOD_LEN_REG_reg_n_0_[2] ,\PERIOD_LEN_REG_reg_n_0_[1] ,\PERIOD_LEN_REG_reg_n_0_[0] }),
        .s_axi_rready(s_axi_rready),
        .s_axi_wdata(s_axi_wdata[1:0]),
        .\s_axi_wdata[1]_0 (ctrlif_n_4),
        .s_axi_wdata_0_sp_1(ctrlif_n_2),
        .s_axi_wdata_1_sp_1(ctrlif_n_1),
        .s_axi_wvalid(s_axi_wvalid));
  icyradio_axi_i2s_adi_0_1_axi_streaming_dma_rx_fifo \streaming_dma_rx_gen.rx_fifo 
       (.Q({\PERIOD_LEN_REG_reg_n_0_[15] ,\PERIOD_LEN_REG_reg_n_0_[14] ,\PERIOD_LEN_REG_reg_n_0_[13] ,\PERIOD_LEN_REG_reg_n_0_[12] ,\PERIOD_LEN_REG_reg_n_0_[11] ,\PERIOD_LEN_REG_reg_n_0_[10] ,\PERIOD_LEN_REG_reg_n_0_[9] ,\PERIOD_LEN_REG_reg_n_0_[8] ,\PERIOD_LEN_REG_reg_n_0_[7] ,\PERIOD_LEN_REG_reg_n_0_[6] ,\PERIOD_LEN_REG_reg_n_0_[5] ,\PERIOD_LEN_REG_reg_n_0_[4] ,\PERIOD_LEN_REG_reg_n_0_[3] ,\PERIOD_LEN_REG_reg_n_0_[2] ,\PERIOD_LEN_REG_reg_n_0_[1] ,\PERIOD_LEN_REG_reg_n_0_[0] }),
        .SR(\streaming_dma_tx_gen.tx_fifo_n_1 ),
        .\gen[0].data_latched_reg[0] (\gen[0].data_latched_reg[0] ),
        .m_axis_aclk(m_axis_aclk),
        .m_axis_tdata(\^m_axis_tdata ),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .not_empty_reg(m_axis_tvalid),
        .rx_ack(rx_ack),
        .rx_stb(rx_stb),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn));
  icyradio_axi_i2s_adi_0_1_axi_streaming_dma_tx_fifo \streaming_dma_tx_gen.tx_fifo 
       (.D(\streaming_dma_tx_gen.tx_fifo_n_3 ),
        .SR(\streaming_dma_tx_gen.tx_fifo_n_1 ),
        .channel_sync_int(\tx_gen.tx/channel_sync_int ),
        .channel_sync_int_d1(\tx_gen.tx/channel_sync_int_d1 ),
        .\drain_process.enable_d1_reg_0 (\I2S_CONTROL_REG_reg_n_0_[0] ),
        .enable_int(\tx_gen.tx/enable_int ),
        .out_data({\streaming_dma_tx_gen.tx_fifo_n_4 ,\streaming_dma_tx_gen.tx_fifo_n_5 ,\streaming_dma_tx_gen.tx_fifo_n_6 ,\streaming_dma_tx_gen.tx_fifo_n_7 ,\streaming_dma_tx_gen.tx_fifo_n_8 ,\streaming_dma_tx_gen.tx_fifo_n_9 ,\streaming_dma_tx_gen.tx_fifo_n_10 ,\streaming_dma_tx_gen.tx_fifo_n_11 ,\streaming_dma_tx_gen.tx_fifo_n_12 ,\streaming_dma_tx_gen.tx_fifo_n_13 ,\streaming_dma_tx_gen.tx_fifo_n_14 ,\streaming_dma_tx_gen.tx_fifo_n_15 ,\streaming_dma_tx_gen.tx_fifo_n_16 ,\streaming_dma_tx_gen.tx_fifo_n_17 ,\streaming_dma_tx_gen.tx_fifo_n_18 ,\streaming_dma_tx_gen.tx_fifo_n_19 ,\streaming_dma_tx_gen.tx_fifo_n_20 ,\streaming_dma_tx_gen.tx_fifo_n_21 ,\streaming_dma_tx_gen.tx_fifo_n_22 ,\streaming_dma_tx_gen.tx_fifo_n_23 ,\streaming_dma_tx_gen.tx_fifo_n_24 ,\streaming_dma_tx_gen.tx_fifo_n_25 ,\streaming_dma_tx_gen.tx_fifo_n_26 }),
        .rd_addr0(\fifo/rd_addr0 ),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axis_aclk(s_axis_aclk),
        .s_axis_tdata(s_axis_tdata[31:8]),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid),
        .tx_fifo_reset(tx_fifo_reset),
        .tx_stb(tx_stb));
endmodule

(* ORIG_REF_NAME = "axi_streaming_dma_rx_fifo" *) 
module icyradio_axi_i2s_adi_0_1_axi_streaming_dma_rx_fifo
   (not_empty_reg,
    rx_ack,
    m_axis_tlast,
    m_axis_tdata,
    SR,
    s_axi_aclk,
    m_axis_tready,
    rx_stb,
    Q,
    s_axi_aresetn,
    \gen[0].data_latched_reg[0] ,
    m_axis_aclk);
  output not_empty_reg;
  output rx_ack;
  output m_axis_tlast;
  output [23:0]m_axis_tdata;
  input [0:0]SR;
  input s_axi_aclk;
  input m_axis_tready;
  input rx_stb;
  input [15:0]Q;
  input s_axi_aresetn;
  input [23:0]\gen[0].data_latched_reg[0] ;
  input m_axis_aclk;

  wire [15:0]Q;
  wire [0:0]SR;
  wire [15:1]data1;
  wire fifo_n_2;
  wire [23:0]\gen[0].data_latched_reg[0] ;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire m_axis_aclk;
  wire [23:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tlast_INST_0_i_1_n_0;
  wire m_axis_tlast_INST_0_i_2_n_0;
  wire m_axis_tlast_INST_0_i_3_n_0;
  wire m_axis_tlast_INST_0_i_4_n_0;
  wire m_axis_tready;
  wire not_empty_reg;
  wire [15:0]period_count;
  wire \period_count0_inferred__0/i__carry__0_n_0 ;
  wire \period_count0_inferred__0/i__carry__0_n_1 ;
  wire \period_count0_inferred__0/i__carry__0_n_2 ;
  wire \period_count0_inferred__0/i__carry__0_n_3 ;
  wire \period_count0_inferred__0/i__carry__1_n_0 ;
  wire \period_count0_inferred__0/i__carry__1_n_1 ;
  wire \period_count0_inferred__0/i__carry__1_n_2 ;
  wire \period_count0_inferred__0/i__carry__1_n_3 ;
  wire \period_count0_inferred__0/i__carry__2_n_2 ;
  wire \period_count0_inferred__0/i__carry__2_n_3 ;
  wire \period_count0_inferred__0/i__carry_n_0 ;
  wire \period_count0_inferred__0/i__carry_n_1 ;
  wire \period_count0_inferred__0/i__carry_n_2 ;
  wire \period_count0_inferred__0/i__carry_n_3 ;
  wire \period_count[0]_i_1_n_0 ;
  wire \period_count[10]_i_1_n_0 ;
  wire \period_count[11]_i_1_n_0 ;
  wire \period_count[12]_i_1_n_0 ;
  wire \period_count[13]_i_1_n_0 ;
  wire \period_count[14]_i_1_n_0 ;
  wire \period_count[15]_i_2_n_0 ;
  wire \period_count[15]_i_3_n_0 ;
  wire \period_count[1]_i_1_n_0 ;
  wire \period_count[2]_i_1_n_0 ;
  wire \period_count[3]_i_1_n_0 ;
  wire \period_count[4]_i_1_n_0 ;
  wire \period_count[5]_i_1_n_0 ;
  wire \period_count[6]_i_1_n_0 ;
  wire \period_count[7]_i_1_n_0 ;
  wire \period_count[8]_i_1_n_0 ;
  wire \period_count[9]_i_1_n_0 ;
  wire rx_ack;
  wire rx_stb;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [3:2]\NLW_period_count0_inferred__0/i__carry__2_CO_UNCONNECTED ;
  wire [3:3]\NLW_period_count0_inferred__0/i__carry__2_O_UNCONNECTED ;

  icyradio_axi_i2s_adi_0_1_dma_fifo_0 fifo
       (.E(fifo_n_2),
        .SR(SR),
        .\gen[0].data_latched_reg[0] (\gen[0].data_latched_reg[0] ),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tready(m_axis_tready),
        .not_empty_reg_0(not_empty_reg),
        .not_full(rx_ack),
        .rx_stb(rx_stb),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_1
       (.I0(period_count[8]),
        .O(i__carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_2
       (.I0(period_count[7]),
        .O(i__carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_3
       (.I0(period_count[6]),
        .O(i__carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_4
       (.I0(period_count[5]),
        .O(i__carry__0_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_1
       (.I0(period_count[12]),
        .O(i__carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_2
       (.I0(period_count[11]),
        .O(i__carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_3
       (.I0(period_count[10]),
        .O(i__carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_4
       (.I0(period_count[9]),
        .O(i__carry__1_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_1
       (.I0(period_count[15]),
        .O(i__carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_2
       (.I0(period_count[14]),
        .O(i__carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_3
       (.I0(period_count[13]),
        .O(i__carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_1
       (.I0(period_count[4]),
        .O(i__carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_2
       (.I0(period_count[3]),
        .O(i__carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_3
       (.I0(period_count[2]),
        .O(i__carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_4
       (.I0(period_count[1]),
        .O(i__carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    m_axis_tlast_INST_0
       (.I0(m_axis_tlast_INST_0_i_1_n_0),
        .I1(m_axis_tlast_INST_0_i_2_n_0),
        .I2(m_axis_tlast_INST_0_i_3_n_0),
        .I3(m_axis_tlast_INST_0_i_4_n_0),
        .O(m_axis_tlast));
  LUT4 #(
    .INIT(16'hFFFE)) 
    m_axis_tlast_INST_0_i_1
       (.I0(period_count[2]),
        .I1(period_count[8]),
        .I2(period_count[7]),
        .I3(period_count[14]),
        .O(m_axis_tlast_INST_0_i_1_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    m_axis_tlast_INST_0_i_2
       (.I0(period_count[15]),
        .I1(period_count[10]),
        .I2(period_count[13]),
        .I3(period_count[5]),
        .O(m_axis_tlast_INST_0_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    m_axis_tlast_INST_0_i_3
       (.I0(period_count[6]),
        .I1(period_count[12]),
        .I2(period_count[3]),
        .I3(period_count[9]),
        .O(m_axis_tlast_INST_0_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    m_axis_tlast_INST_0_i_4
       (.I0(period_count[1]),
        .I1(period_count[0]),
        .I2(period_count[4]),
        .I3(period_count[11]),
        .O(m_axis_tlast_INST_0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \period_count0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\period_count0_inferred__0/i__carry_n_0 ,\period_count0_inferred__0/i__carry_n_1 ,\period_count0_inferred__0/i__carry_n_2 ,\period_count0_inferred__0/i__carry_n_3 }),
        .CYINIT(period_count[0]),
        .DI(period_count[4:1]),
        .O(data1[4:1]),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \period_count0_inferred__0/i__carry__0 
       (.CI(\period_count0_inferred__0/i__carry_n_0 ),
        .CO({\period_count0_inferred__0/i__carry__0_n_0 ,\period_count0_inferred__0/i__carry__0_n_1 ,\period_count0_inferred__0/i__carry__0_n_2 ,\period_count0_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(period_count[8:5]),
        .O(data1[8:5]),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \period_count0_inferred__0/i__carry__1 
       (.CI(\period_count0_inferred__0/i__carry__0_n_0 ),
        .CO({\period_count0_inferred__0/i__carry__1_n_0 ,\period_count0_inferred__0/i__carry__1_n_1 ,\period_count0_inferred__0/i__carry__1_n_2 ,\period_count0_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI(period_count[12:9]),
        .O(data1[12:9]),
        .S({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \period_count0_inferred__0/i__carry__2 
       (.CI(\period_count0_inferred__0/i__carry__1_n_0 ),
        .CO({\NLW_period_count0_inferred__0/i__carry__2_CO_UNCONNECTED [3:2],\period_count0_inferred__0/i__carry__2_n_2 ,\period_count0_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,period_count[14:13]}),
        .O({\NLW_period_count0_inferred__0/i__carry__2_O_UNCONNECTED [3],data1[15:13]}),
        .S({1'b0,i__carry__2_i_1_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \period_count[0]_i_1 
       (.I0(Q[0]),
        .I1(\period_count[15]_i_3_n_0 ),
        .I2(period_count[0]),
        .O(\period_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \period_count[10]_i_1 
       (.I0(Q[10]),
        .I1(\period_count[15]_i_3_n_0 ),
        .I2(data1[10]),
        .O(\period_count[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \period_count[11]_i_1 
       (.I0(Q[11]),
        .I1(\period_count[15]_i_3_n_0 ),
        .I2(data1[11]),
        .O(\period_count[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \period_count[12]_i_1 
       (.I0(Q[12]),
        .I1(\period_count[15]_i_3_n_0 ),
        .I2(data1[12]),
        .O(\period_count[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \period_count[13]_i_1 
       (.I0(Q[13]),
        .I1(\period_count[15]_i_3_n_0 ),
        .I2(data1[13]),
        .O(\period_count[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \period_count[14]_i_1 
       (.I0(Q[14]),
        .I1(\period_count[15]_i_3_n_0 ),
        .I2(data1[14]),
        .O(\period_count[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \period_count[15]_i_2 
       (.I0(Q[15]),
        .I1(\period_count[15]_i_3_n_0 ),
        .I2(data1[15]),
        .O(\period_count[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h0010FFFF)) 
    \period_count[15]_i_3 
       (.I0(m_axis_tlast_INST_0_i_4_n_0),
        .I1(m_axis_tlast_INST_0_i_3_n_0),
        .I2(m_axis_tlast_INST_0_i_2_n_0),
        .I3(m_axis_tlast_INST_0_i_1_n_0),
        .I4(s_axi_aresetn),
        .O(\period_count[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \period_count[1]_i_1 
       (.I0(Q[1]),
        .I1(\period_count[15]_i_3_n_0 ),
        .I2(data1[1]),
        .O(\period_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \period_count[2]_i_1 
       (.I0(Q[2]),
        .I1(\period_count[15]_i_3_n_0 ),
        .I2(data1[2]),
        .O(\period_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \period_count[3]_i_1 
       (.I0(Q[3]),
        .I1(\period_count[15]_i_3_n_0 ),
        .I2(data1[3]),
        .O(\period_count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \period_count[4]_i_1 
       (.I0(Q[4]),
        .I1(\period_count[15]_i_3_n_0 ),
        .I2(data1[4]),
        .O(\period_count[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \period_count[5]_i_1 
       (.I0(Q[5]),
        .I1(\period_count[15]_i_3_n_0 ),
        .I2(data1[5]),
        .O(\period_count[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \period_count[6]_i_1 
       (.I0(Q[6]),
        .I1(\period_count[15]_i_3_n_0 ),
        .I2(data1[6]),
        .O(\period_count[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \period_count[7]_i_1 
       (.I0(Q[7]),
        .I1(\period_count[15]_i_3_n_0 ),
        .I2(data1[7]),
        .O(\period_count[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \period_count[8]_i_1 
       (.I0(Q[8]),
        .I1(\period_count[15]_i_3_n_0 ),
        .I2(data1[8]),
        .O(\period_count[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \period_count[9]_i_1 
       (.I0(Q[9]),
        .I1(\period_count[15]_i_3_n_0 ),
        .I2(data1[9]),
        .O(\period_count[9]_i_1_n_0 ));
  FDRE \period_count_reg[0] 
       (.C(m_axis_aclk),
        .CE(fifo_n_2),
        .D(\period_count[0]_i_1_n_0 ),
        .Q(period_count[0]),
        .R(1'b0));
  FDRE \period_count_reg[10] 
       (.C(m_axis_aclk),
        .CE(fifo_n_2),
        .D(\period_count[10]_i_1_n_0 ),
        .Q(period_count[10]),
        .R(1'b0));
  FDRE \period_count_reg[11] 
       (.C(m_axis_aclk),
        .CE(fifo_n_2),
        .D(\period_count[11]_i_1_n_0 ),
        .Q(period_count[11]),
        .R(1'b0));
  FDRE \period_count_reg[12] 
       (.C(m_axis_aclk),
        .CE(fifo_n_2),
        .D(\period_count[12]_i_1_n_0 ),
        .Q(period_count[12]),
        .R(1'b0));
  FDRE \period_count_reg[13] 
       (.C(m_axis_aclk),
        .CE(fifo_n_2),
        .D(\period_count[13]_i_1_n_0 ),
        .Q(period_count[13]),
        .R(1'b0));
  FDRE \period_count_reg[14] 
       (.C(m_axis_aclk),
        .CE(fifo_n_2),
        .D(\period_count[14]_i_1_n_0 ),
        .Q(period_count[14]),
        .R(1'b0));
  FDRE \period_count_reg[15] 
       (.C(m_axis_aclk),
        .CE(fifo_n_2),
        .D(\period_count[15]_i_2_n_0 ),
        .Q(period_count[15]),
        .R(1'b0));
  FDRE \period_count_reg[1] 
       (.C(m_axis_aclk),
        .CE(fifo_n_2),
        .D(\period_count[1]_i_1_n_0 ),
        .Q(period_count[1]),
        .R(1'b0));
  FDRE \period_count_reg[2] 
       (.C(m_axis_aclk),
        .CE(fifo_n_2),
        .D(\period_count[2]_i_1_n_0 ),
        .Q(period_count[2]),
        .R(1'b0));
  FDRE \period_count_reg[3] 
       (.C(m_axis_aclk),
        .CE(fifo_n_2),
        .D(\period_count[3]_i_1_n_0 ),
        .Q(period_count[3]),
        .R(1'b0));
  FDRE \period_count_reg[4] 
       (.C(m_axis_aclk),
        .CE(fifo_n_2),
        .D(\period_count[4]_i_1_n_0 ),
        .Q(period_count[4]),
        .R(1'b0));
  FDRE \period_count_reg[5] 
       (.C(m_axis_aclk),
        .CE(fifo_n_2),
        .D(\period_count[5]_i_1_n_0 ),
        .Q(period_count[5]),
        .R(1'b0));
  FDRE \period_count_reg[6] 
       (.C(m_axis_aclk),
        .CE(fifo_n_2),
        .D(\period_count[6]_i_1_n_0 ),
        .Q(period_count[6]),
        .R(1'b0));
  FDRE \period_count_reg[7] 
       (.C(m_axis_aclk),
        .CE(fifo_n_2),
        .D(\period_count[7]_i_1_n_0 ),
        .Q(period_count[7]),
        .R(1'b0));
  FDRE \period_count_reg[8] 
       (.C(m_axis_aclk),
        .CE(fifo_n_2),
        .D(\period_count[8]_i_1_n_0 ),
        .Q(period_count[8]),
        .R(1'b0));
  FDRE \period_count_reg[9] 
       (.C(m_axis_aclk),
        .CE(fifo_n_2),
        .D(\period_count[9]_i_1_n_0 ),
        .Q(period_count[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_streaming_dma_tx_fifo" *) 
module icyradio_axi_i2s_adi_0_1_axi_streaming_dma_tx_fifo
   (tx_stb,
    SR,
    s_axis_tready,
    D,
    out_data,
    s_axi_aclk,
    s_axis_aclk,
    tx_fifo_reset,
    s_axi_aresetn,
    rd_addr0,
    s_axis_tvalid,
    channel_sync_int_d1,
    enable_int,
    s_axis_tlast,
    \drain_process.enable_d1_reg_0 ,
    channel_sync_int,
    s_axis_tdata);
  output tx_stb;
  output [0:0]SR;
  output s_axis_tready;
  output [0:0]D;
  output [22:0]out_data;
  input s_axi_aclk;
  input s_axis_aclk;
  input tx_fifo_reset;
  input s_axi_aresetn;
  input rd_addr0;
  input s_axis_tvalid;
  input channel_sync_int_d1;
  input enable_int;
  input s_axis_tlast;
  input \drain_process.enable_d1_reg_0 ;
  input channel_sync_int;
  input [23:0]s_axis_tdata;

  wire [0:0]D;
  wire [0:0]SR;
  wire channel_sync_int;
  wire channel_sync_int_d1;
  wire drain_dma;
  wire drain_dma_i_1_n_0;
  wire \drain_process.enable_d1_i_1_n_0 ;
  wire \drain_process.enable_d1_reg_0 ;
  wire enable_d1;
  wire enable_int;
  wire [22:0]out_data;
  wire rd_addr0;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire s_axis_aclk;
  wire [23:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire tx_fifo_reset;
  wire tx_stb;

  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h22020200)) 
    drain_dma_i_1
       (.I0(s_axi_aresetn),
        .I1(s_axis_tlast),
        .I2(\drain_process.enable_d1_reg_0 ),
        .I3(enable_d1),
        .I4(drain_dma),
        .O(drain_dma_i_1_n_0));
  FDRE drain_dma_reg
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(drain_dma_i_1_n_0),
        .Q(drain_dma),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \drain_process.enable_d1_i_1 
       (.I0(\drain_process.enable_d1_reg_0 ),
        .I1(s_axi_aresetn),
        .I2(enable_d1),
        .O(\drain_process.enable_d1_i_1_n_0 ));
  FDRE \drain_process.enable_d1_reg 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(\drain_process.enable_d1_i_1_n_0 ),
        .Q(enable_d1),
        .R(1'b0));
  icyradio_axi_i2s_adi_0_1_dma_fifo fifo
       (.D(D),
        .\I2S_RESET_REG_reg[1] (SR),
        .channel_sync_int(channel_sync_int),
        .channel_sync_int_d1(channel_sync_int_d1),
        .drain_dma(drain_dma),
        .enable_int(enable_int),
        .not_empty_reg_0(tx_stb),
        .out_data(out_data),
        .rd_addr0(rd_addr0),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid),
        .tx_fifo_reset(tx_fifo_reset));
endmodule

(* ORIG_REF_NAME = "dma_fifo" *) 
module icyradio_axi_i2s_adi_0_1_dma_fifo
   (not_empty_reg_0,
    \I2S_RESET_REG_reg[1] ,
    s_axis_tready,
    D,
    out_data,
    s_axi_aclk,
    tx_fifo_reset,
    s_axi_aresetn,
    rd_addr0,
    s_axis_tvalid,
    channel_sync_int_d1,
    enable_int,
    drain_dma,
    channel_sync_int,
    s_axis_tdata);
  output not_empty_reg_0;
  output \I2S_RESET_REG_reg[1] ;
  output s_axis_tready;
  output [0:0]D;
  output [22:0]out_data;
  input s_axi_aclk;
  input tx_fifo_reset;
  input s_axi_aresetn;
  input rd_addr0;
  input s_axis_tvalid;
  input channel_sync_int_d1;
  input enable_int;
  input drain_dma;
  input channel_sync_int;
  input [23:0]s_axis_tdata;

  wire [0:0]D;
  wire \I2S_RESET_REG_reg[1] ;
  wire channel_sync_int;
  wire channel_sync_int_d1;
  wire data_fifo_reg_0_7_0_5_n_1;
  wire drain_dma;
  wire enable_int;
  wire \fifo_ctrl.free_cnt[3]_i_1__0_n_0 ;
  wire \fifo_ctrl.free_cnt_reg_n_0_[0] ;
  wire \fifo_ctrl.free_cnt_reg_n_0_[1] ;
  wire \fifo_ctrl.free_cnt_reg_n_0_[2] ;
  wire \fifo_ctrl.free_cnt_reg_n_0_[3] ;
  wire [2:0]free_cnt;
  wire in_ack;
  wire not_empty0;
  wire not_empty_reg_0;
  wire not_full0;
  wire [22:0]out_data;
  wire [2:0]rd_addr;
  wire rd_addr0;
  wire \rd_addr[0]_i_1_n_0 ;
  wire \rd_addr[1]_i_1_n_0 ;
  wire \rd_addr[2]_i_1_n_0 ;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [23:0]s_axis_tdata;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire tx_fifo_reset;
  wire [2:0]wr_addr;
  wire wr_addr0;
  wire \wr_addr[0]_i_1_n_0 ;
  wire \wr_addr[1]_i_1_n_0 ;
  wire \wr_addr[2]_i_1_n_0 ;
  wire [1:0]NLW_data_fifo_reg_0_7_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_data_fifo_reg_0_7_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_data_fifo_reg_0_7_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_data_fifo_reg_0_7_6_11_DOD_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "192" *) 
  (* RTL_RAM_NAME = "streaming_dma_tx_gen.tx_fifo/fifo/data_fifo" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M data_fifo_reg_0_7_0_5
       (.ADDRA({1'b0,1'b0,rd_addr}),
        .ADDRB({1'b0,1'b0,rd_addr}),
        .ADDRC({1'b0,1'b0,rd_addr}),
        .ADDRD({1'b0,1'b0,wr_addr}),
        .DIA(s_axis_tdata[1:0]),
        .DIB(s_axis_tdata[3:2]),
        .DIC(s_axis_tdata[5:4]),
        .DID({1'b0,1'b0}),
        .DOA({out_data[0],data_fifo_reg_0_7_0_5_n_1}),
        .DOB(out_data[2:1]),
        .DOC(out_data[4:3]),
        .DOD(NLW_data_fifo_reg_0_7_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(s_axi_aclk),
        .WE(in_ack));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "192" *) 
  (* RTL_RAM_NAME = "streaming_dma_tx_gen.tx_fifo/fifo/data_fifo" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M data_fifo_reg_0_7_12_17
       (.ADDRA({1'b0,1'b0,rd_addr}),
        .ADDRB({1'b0,1'b0,rd_addr}),
        .ADDRC({1'b0,1'b0,rd_addr}),
        .ADDRD({1'b0,1'b0,wr_addr}),
        .DIA(s_axis_tdata[13:12]),
        .DIB(s_axis_tdata[15:14]),
        .DIC(s_axis_tdata[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(out_data[12:11]),
        .DOB(out_data[14:13]),
        .DOC(out_data[16:15]),
        .DOD(NLW_data_fifo_reg_0_7_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(s_axi_aclk),
        .WE(in_ack));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "192" *) 
  (* RTL_RAM_NAME = "streaming_dma_tx_gen.tx_fifo/fifo/data_fifo" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M data_fifo_reg_0_7_18_23
       (.ADDRA({1'b0,1'b0,rd_addr}),
        .ADDRB({1'b0,1'b0,rd_addr}),
        .ADDRC({1'b0,1'b0,rd_addr}),
        .ADDRD({1'b0,1'b0,wr_addr}),
        .DIA(s_axis_tdata[19:18]),
        .DIB(s_axis_tdata[21:20]),
        .DIC(s_axis_tdata[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(out_data[18:17]),
        .DOB(out_data[20:19]),
        .DOC(out_data[22:21]),
        .DOD(NLW_data_fifo_reg_0_7_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(s_axi_aclk),
        .WE(in_ack));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "192" *) 
  (* RTL_RAM_NAME = "streaming_dma_tx_gen.tx_fifo/fifo/data_fifo" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M data_fifo_reg_0_7_6_11
       (.ADDRA({1'b0,1'b0,rd_addr}),
        .ADDRB({1'b0,1'b0,rd_addr}),
        .ADDRC({1'b0,1'b0,rd_addr}),
        .ADDRD({1'b0,1'b0,wr_addr}),
        .DIA(s_axis_tdata[7:6]),
        .DIB(s_axis_tdata[9:8]),
        .DIC(s_axis_tdata[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(out_data[6:5]),
        .DOB(out_data[8:7]),
        .DOC(out_data[10:9]),
        .DOD(NLW_data_fifo_reg_0_7_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(s_axi_aclk),
        .WE(in_ack));
  LUT6 #(
    .INIT(64'h95556AAA6AAA6AAA)) 
    \fifo_ctrl.free_cnt[0]_i_1 
       (.I0(\fifo_ctrl.free_cnt_reg_n_0_[0] ),
        .I1(channel_sync_int_d1),
        .I2(enable_int),
        .I3(not_empty_reg_0),
        .I4(in_ack),
        .I5(s_axis_tvalid),
        .O(free_cnt[0]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'hA6669AAA)) 
    \fifo_ctrl.free_cnt[1]_i_1 
       (.I0(\fifo_ctrl.free_cnt_reg_n_0_[1] ),
        .I1(\fifo_ctrl.free_cnt_reg_n_0_[0] ),
        .I2(in_ack),
        .I3(s_axis_tvalid),
        .I4(rd_addr0),
        .O(free_cnt[1]));
  LUT6 #(
    .INIT(64'hD5FF2A00FFBF0040)) 
    \fifo_ctrl.free_cnt[2]_i_1 
       (.I0(\fifo_ctrl.free_cnt_reg_n_0_[0] ),
        .I1(in_ack),
        .I2(s_axis_tvalid),
        .I3(rd_addr0),
        .I4(\fifo_ctrl.free_cnt_reg_n_0_[2] ),
        .I5(\fifo_ctrl.free_cnt_reg_n_0_[1] ),
        .O(free_cnt[2]));
  LUT6 #(
    .INIT(64'hAA6AAAAAAAAAA9AA)) 
    \fifo_ctrl.free_cnt[3]_i_1__0 
       (.I0(\fifo_ctrl.free_cnt_reg_n_0_[3] ),
        .I1(\fifo_ctrl.free_cnt_reg_n_0_[2] ),
        .I2(\fifo_ctrl.free_cnt_reg_n_0_[0] ),
        .I3(wr_addr0),
        .I4(rd_addr0),
        .I5(\fifo_ctrl.free_cnt_reg_n_0_[1] ),
        .O(\fifo_ctrl.free_cnt[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_ctrl.free_cnt[3]_i_2 
       (.I0(in_ack),
        .I1(s_axis_tvalid),
        .O(wr_addr0));
  FDRE \fifo_ctrl.free_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(free_cnt[0]),
        .Q(\fifo_ctrl.free_cnt_reg_n_0_[0] ),
        .R(\I2S_RESET_REG_reg[1] ));
  FDRE \fifo_ctrl.free_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(free_cnt[1]),
        .Q(\fifo_ctrl.free_cnt_reg_n_0_[1] ),
        .R(\I2S_RESET_REG_reg[1] ));
  FDRE \fifo_ctrl.free_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(free_cnt[2]),
        .Q(\fifo_ctrl.free_cnt_reg_n_0_[2] ),
        .R(\I2S_RESET_REG_reg[1] ));
  FDSE \fifo_ctrl.free_cnt_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\fifo_ctrl.free_cnt[3]_i_1__0_n_0 ),
        .Q(\fifo_ctrl.free_cnt_reg_n_0_[3] ),
        .S(\I2S_RESET_REG_reg[1] ));
  LUT2 #(
    .INIT(4'h8)) 
    \gen[0].data_int[0][8]_i_1 
       (.I0(data_fifo_reg_0_7_0_5_n_1),
        .I1(channel_sync_int),
        .O(D));
  LUT2 #(
    .INIT(4'hB)) 
    not_empty_i_1
       (.I0(tx_fifo_reset),
        .I1(s_axi_aresetn),
        .O(\I2S_RESET_REG_reg[1] ));
  LUT6 #(
    .INIT(64'hFFFFEFBEF7FFFFFF)) 
    not_empty_i_1__0
       (.I0(\fifo_ctrl.free_cnt_reg_n_0_[1] ),
        .I1(rd_addr0),
        .I2(wr_addr0),
        .I3(\fifo_ctrl.free_cnt_reg_n_0_[0] ),
        .I4(\fifo_ctrl.free_cnt_reg_n_0_[2] ),
        .I5(\fifo_ctrl.free_cnt_reg_n_0_[3] ),
        .O(not_empty0));
  FDRE not_empty_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(not_empty0),
        .Q(not_empty_reg_0),
        .R(\I2S_RESET_REG_reg[1] ));
  LUT6 #(
    .INIT(64'hF7FFFFFFFFEFEFFE)) 
    not_full_i_1
       (.I0(\fifo_ctrl.free_cnt_reg_n_0_[3] ),
        .I1(\fifo_ctrl.free_cnt_reg_n_0_[1] ),
        .I2(wr_addr0),
        .I3(rd_addr0),
        .I4(\fifo_ctrl.free_cnt_reg_n_0_[0] ),
        .I5(\fifo_ctrl.free_cnt_reg_n_0_[2] ),
        .O(not_full0));
  FDSE not_full_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(not_full0),
        .Q(in_ack),
        .S(\I2S_RESET_REG_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \rd_addr[0]_i_1 
       (.I0(not_empty_reg_0),
        .I1(enable_int),
        .I2(channel_sync_int_d1),
        .I3(rd_addr[0]),
        .O(\rd_addr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \rd_addr[1]_i_1 
       (.I0(rd_addr[0]),
        .I1(channel_sync_int_d1),
        .I2(enable_int),
        .I3(not_empty_reg_0),
        .I4(rd_addr[1]),
        .O(\rd_addr[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \rd_addr[2]_i_1 
       (.I0(rd_addr[0]),
        .I1(rd_addr[1]),
        .I2(channel_sync_int_d1),
        .I3(enable_int),
        .I4(not_empty_reg_0),
        .I5(rd_addr[2]),
        .O(\rd_addr[2]_i_1_n_0 ));
  FDRE \rd_addr_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\rd_addr[0]_i_1_n_0 ),
        .Q(rd_addr[0]),
        .R(\I2S_RESET_REG_reg[1] ));
  FDRE \rd_addr_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\rd_addr[1]_i_1_n_0 ),
        .Q(rd_addr[1]),
        .R(\I2S_RESET_REG_reg[1] ));
  FDRE \rd_addr_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\rd_addr[2]_i_1_n_0 ),
        .Q(rd_addr[2]),
        .R(\I2S_RESET_REG_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'hE)) 
    s_axis_tready_INST_0
       (.I0(in_ack),
        .I1(drain_dma),
        .O(s_axis_tready));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \wr_addr[0]_i_1 
       (.I0(s_axis_tvalid),
        .I1(in_ack),
        .I2(wr_addr[0]),
        .O(\wr_addr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \wr_addr[1]_i_1 
       (.I0(wr_addr[0]),
        .I1(in_ack),
        .I2(s_axis_tvalid),
        .I3(wr_addr[1]),
        .O(\wr_addr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \wr_addr[2]_i_1 
       (.I0(wr_addr[0]),
        .I1(wr_addr[1]),
        .I2(in_ack),
        .I3(s_axis_tvalid),
        .I4(wr_addr[2]),
        .O(\wr_addr[2]_i_1_n_0 ));
  FDRE \wr_addr_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\wr_addr[0]_i_1_n_0 ),
        .Q(wr_addr[0]),
        .R(\I2S_RESET_REG_reg[1] ));
  FDRE \wr_addr_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\wr_addr[1]_i_1_n_0 ),
        .Q(wr_addr[1]),
        .R(\I2S_RESET_REG_reg[1] ));
  FDRE \wr_addr_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\wr_addr[2]_i_1_n_0 ),
        .Q(wr_addr[2]),
        .R(\I2S_RESET_REG_reg[1] ));
endmodule

(* ORIG_REF_NAME = "dma_fifo" *) 
module icyradio_axi_i2s_adi_0_1_dma_fifo_0
   (not_empty_reg_0,
    not_full,
    E,
    m_axis_tdata,
    SR,
    s_axi_aclk,
    m_axis_tready,
    rx_stb,
    s_axi_aresetn,
    \gen[0].data_latched_reg[0] );
  output not_empty_reg_0;
  output not_full;
  output [0:0]E;
  output [23:0]m_axis_tdata;
  input [0:0]SR;
  input s_axi_aclk;
  input m_axis_tready;
  input rx_stb;
  input s_axi_aresetn;
  input [23:0]\gen[0].data_latched_reg[0] ;

  wire [0:0]E;
  wire [0:0]SR;
  wire \fifo_ctrl.free_cnt[0]_i_1__0_n_0 ;
  wire \fifo_ctrl.free_cnt[1]_i_1__0_n_0 ;
  wire \fifo_ctrl.free_cnt[2]_i_1__0_n_0 ;
  wire \fifo_ctrl.free_cnt[3]_i_1_n_0 ;
  wire \fifo_ctrl.free_cnt_reg_n_0_[0] ;
  wire \fifo_ctrl.free_cnt_reg_n_0_[1] ;
  wire \fifo_ctrl.free_cnt_reg_n_0_[2] ;
  wire \fifo_ctrl.free_cnt_reg_n_0_[3] ;
  wire [23:0]\gen[0].data_latched_reg[0] ;
  wire [23:0]m_axis_tdata;
  wire m_axis_tready;
  wire not_empty_i_2_n_0;
  wire not_empty_reg_0;
  wire not_full;
  wire not_full_i_1__0_n_0;
  wire [2:0]rd_addr;
  wire rd_addr0;
  wire \rd_addr[0]_i_1__0_n_0 ;
  wire \rd_addr[1]_i_1__0_n_0 ;
  wire \rd_addr[2]_i_1__0_n_0 ;
  wire rx_stb;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [2:0]wr_addr;
  wire wr_addr0;
  wire \wr_addr[0]_i_1__0_n_0 ;
  wire \wr_addr[1]_i_1__0_n_0 ;
  wire \wr_addr[2]_i_1__0_n_0 ;
  wire [1:0]NLW_data_fifo_reg_0_7_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_data_fifo_reg_0_7_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_data_fifo_reg_0_7_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_data_fifo_reg_0_7_6_11_DOD_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "192" *) 
  (* RTL_RAM_NAME = "streaming_dma_rx_gen.rx_fifo/fifo/data_fifo" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M data_fifo_reg_0_7_0_5
       (.ADDRA({1'b0,1'b0,rd_addr}),
        .ADDRB({1'b0,1'b0,rd_addr}),
        .ADDRC({1'b0,1'b0,rd_addr}),
        .ADDRD({1'b0,1'b0,wr_addr}),
        .DIA(\gen[0].data_latched_reg[0] [1:0]),
        .DIB(\gen[0].data_latched_reg[0] [3:2]),
        .DIC(\gen[0].data_latched_reg[0] [5:4]),
        .DID({1'b0,1'b0}),
        .DOA(m_axis_tdata[1:0]),
        .DOB(m_axis_tdata[3:2]),
        .DOC(m_axis_tdata[5:4]),
        .DOD(NLW_data_fifo_reg_0_7_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(s_axi_aclk),
        .WE(not_full));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "192" *) 
  (* RTL_RAM_NAME = "streaming_dma_rx_gen.rx_fifo/fifo/data_fifo" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M data_fifo_reg_0_7_12_17
       (.ADDRA({1'b0,1'b0,rd_addr}),
        .ADDRB({1'b0,1'b0,rd_addr}),
        .ADDRC({1'b0,1'b0,rd_addr}),
        .ADDRD({1'b0,1'b0,wr_addr}),
        .DIA(\gen[0].data_latched_reg[0] [13:12]),
        .DIB(\gen[0].data_latched_reg[0] [15:14]),
        .DIC(\gen[0].data_latched_reg[0] [17:16]),
        .DID({1'b0,1'b0}),
        .DOA(m_axis_tdata[13:12]),
        .DOB(m_axis_tdata[15:14]),
        .DOC(m_axis_tdata[17:16]),
        .DOD(NLW_data_fifo_reg_0_7_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(s_axi_aclk),
        .WE(not_full));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "192" *) 
  (* RTL_RAM_NAME = "streaming_dma_rx_gen.rx_fifo/fifo/data_fifo" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M data_fifo_reg_0_7_18_23
       (.ADDRA({1'b0,1'b0,rd_addr}),
        .ADDRB({1'b0,1'b0,rd_addr}),
        .ADDRC({1'b0,1'b0,rd_addr}),
        .ADDRD({1'b0,1'b0,wr_addr}),
        .DIA(\gen[0].data_latched_reg[0] [19:18]),
        .DIB(\gen[0].data_latched_reg[0] [21:20]),
        .DIC(\gen[0].data_latched_reg[0] [23:22]),
        .DID({1'b0,1'b0}),
        .DOA(m_axis_tdata[19:18]),
        .DOB(m_axis_tdata[21:20]),
        .DOC(m_axis_tdata[23:22]),
        .DOD(NLW_data_fifo_reg_0_7_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(s_axi_aclk),
        .WE(not_full));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "192" *) 
  (* RTL_RAM_NAME = "streaming_dma_rx_gen.rx_fifo/fifo/data_fifo" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M data_fifo_reg_0_7_6_11
       (.ADDRA({1'b0,1'b0,rd_addr}),
        .ADDRB({1'b0,1'b0,rd_addr}),
        .ADDRC({1'b0,1'b0,rd_addr}),
        .ADDRD({1'b0,1'b0,wr_addr}),
        .DIA(\gen[0].data_latched_reg[0] [7:6]),
        .DIB(\gen[0].data_latched_reg[0] [9:8]),
        .DIC(\gen[0].data_latched_reg[0] [11:10]),
        .DID({1'b0,1'b0}),
        .DOA(m_axis_tdata[7:6]),
        .DOB(m_axis_tdata[9:8]),
        .DOC(m_axis_tdata[11:10]),
        .DOD(NLW_data_fifo_reg_0_7_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(s_axi_aclk),
        .WE(not_full));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h956A6A6A)) 
    \fifo_ctrl.free_cnt[0]_i_1__0 
       (.I0(\fifo_ctrl.free_cnt_reg_n_0_[0] ),
        .I1(rx_stb),
        .I2(not_full),
        .I3(m_axis_tready),
        .I4(not_empty_reg_0),
        .O(\fifo_ctrl.free_cnt[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hD5BFBFBF2A404040)) 
    \fifo_ctrl.free_cnt[1]_i_1__0 
       (.I0(\fifo_ctrl.free_cnt_reg_n_0_[0] ),
        .I1(rx_stb),
        .I2(not_full),
        .I3(m_axis_tready),
        .I4(not_empty_reg_0),
        .I5(\fifo_ctrl.free_cnt_reg_n_0_[1] ),
        .O(\fifo_ctrl.free_cnt[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hBFFF4000FFD5002A)) 
    \fifo_ctrl.free_cnt[2]_i_1__0 
       (.I0(wr_addr0),
        .I1(not_empty_reg_0),
        .I2(m_axis_tready),
        .I3(\fifo_ctrl.free_cnt_reg_n_0_[0] ),
        .I4(\fifo_ctrl.free_cnt_reg_n_0_[2] ),
        .I5(\fifo_ctrl.free_cnt_reg_n_0_[1] ),
        .O(\fifo_ctrl.free_cnt[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h9AAAAAAAAAAAAAA6)) 
    \fifo_ctrl.free_cnt[3]_i_1 
       (.I0(\fifo_ctrl.free_cnt_reg_n_0_[3] ),
        .I1(wr_addr0),
        .I2(rd_addr0),
        .I3(\fifo_ctrl.free_cnt_reg_n_0_[0] ),
        .I4(\fifo_ctrl.free_cnt_reg_n_0_[2] ),
        .I5(\fifo_ctrl.free_cnt_reg_n_0_[1] ),
        .O(\fifo_ctrl.free_cnt[3]_i_1_n_0 ));
  FDRE \fifo_ctrl.free_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\fifo_ctrl.free_cnt[0]_i_1__0_n_0 ),
        .Q(\fifo_ctrl.free_cnt_reg_n_0_[0] ),
        .R(SR));
  FDRE \fifo_ctrl.free_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\fifo_ctrl.free_cnt[1]_i_1__0_n_0 ),
        .Q(\fifo_ctrl.free_cnt_reg_n_0_[1] ),
        .R(SR));
  FDRE \fifo_ctrl.free_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\fifo_ctrl.free_cnt[2]_i_1__0_n_0 ),
        .Q(\fifo_ctrl.free_cnt_reg_n_0_[2] ),
        .R(SR));
  FDSE \fifo_ctrl.free_cnt_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\fifo_ctrl.free_cnt[3]_i_1_n_0 ),
        .Q(\fifo_ctrl.free_cnt_reg_n_0_[3] ),
        .S(SR));
  LUT6 #(
    .INIT(64'hFEEFFFFEFFFF7FFF)) 
    not_empty_i_2
       (.I0(\fifo_ctrl.free_cnt_reg_n_0_[1] ),
        .I1(\fifo_ctrl.free_cnt_reg_n_0_[2] ),
        .I2(\fifo_ctrl.free_cnt_reg_n_0_[0] ),
        .I3(rd_addr0),
        .I4(wr_addr0),
        .I5(\fifo_ctrl.free_cnt_reg_n_0_[3] ),
        .O(not_empty_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    not_empty_i_3
       (.I0(not_empty_reg_0),
        .I1(m_axis_tready),
        .O(rd_addr0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    not_empty_i_4
       (.I0(not_full),
        .I1(rx_stb),
        .O(wr_addr0));
  FDRE not_empty_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(not_empty_i_2_n_0),
        .Q(not_empty_reg_0),
        .R(SR));
  LUT6 #(
    .INIT(64'hFF7FFFFFFEFFEFFE)) 
    not_full_i_1__0
       (.I0(\fifo_ctrl.free_cnt_reg_n_0_[3] ),
        .I1(\fifo_ctrl.free_cnt_reg_n_0_[1] ),
        .I2(rd_addr0),
        .I3(wr_addr0),
        .I4(\fifo_ctrl.free_cnt_reg_n_0_[0] ),
        .I5(\fifo_ctrl.free_cnt_reg_n_0_[2] ),
        .O(not_full_i_1__0_n_0));
  FDSE not_full_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(not_full_i_1__0_n_0),
        .Q(not_full),
        .S(SR));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \period_count[15]_i_1 
       (.I0(m_axis_tready),
        .I1(not_empty_reg_0),
        .I2(s_axi_aresetn),
        .O(E));
  LUT3 #(
    .INIT(8'h78)) 
    \rd_addr[0]_i_1__0 
       (.I0(m_axis_tready),
        .I1(not_empty_reg_0),
        .I2(rd_addr[0]),
        .O(\rd_addr[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \rd_addr[1]_i_1__0 
       (.I0(rd_addr[0]),
        .I1(not_empty_reg_0),
        .I2(m_axis_tready),
        .I3(rd_addr[1]),
        .O(\rd_addr[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \rd_addr[2]_i_1__0 
       (.I0(rd_addr[0]),
        .I1(rd_addr[1]),
        .I2(not_empty_reg_0),
        .I3(m_axis_tready),
        .I4(rd_addr[2]),
        .O(\rd_addr[2]_i_1__0_n_0 ));
  FDRE \rd_addr_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\rd_addr[0]_i_1__0_n_0 ),
        .Q(rd_addr[0]),
        .R(SR));
  FDRE \rd_addr_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\rd_addr[1]_i_1__0_n_0 ),
        .Q(rd_addr[1]),
        .R(SR));
  FDRE \rd_addr_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\rd_addr[2]_i_1__0_n_0 ),
        .Q(rd_addr[2]),
        .R(SR));
  LUT3 #(
    .INIT(8'h78)) 
    \wr_addr[0]_i_1__0 
       (.I0(rx_stb),
        .I1(not_full),
        .I2(wr_addr[0]),
        .O(\wr_addr[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \wr_addr[1]_i_1__0 
       (.I0(wr_addr[0]),
        .I1(not_full),
        .I2(rx_stb),
        .I3(wr_addr[1]),
        .O(\wr_addr[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \wr_addr[2]_i_1__0 
       (.I0(wr_addr[0]),
        .I1(wr_addr[1]),
        .I2(not_full),
        .I3(rx_stb),
        .I4(wr_addr[2]),
        .O(\wr_addr[2]_i_1__0_n_0 ));
  FDRE \wr_addr_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\wr_addr[0]_i_1__0_n_0 ),
        .Q(wr_addr[0]),
        .R(SR));
  FDRE \wr_addr_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\wr_addr[1]_i_1__0_n_0 ),
        .Q(wr_addr[1]),
        .R(SR));
  FDRE \wr_addr_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\wr_addr[2]_i_1__0_n_0 ),
        .Q(wr_addr[2]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "fifo_synchronizer" *) 
module icyradio_axi_i2s_adi_0_1_fifo_synchronizer
   (\out_data_reg[4]_0 ,
    data_clk_i,
    s_axi_aclk,
    cdc_sync_stage3_tick,
    cdc_sync_stage2_tick,
    \wr_addr_reg[1]_0 ,
    Q,
    tx_tick,
    in_data);
  output [4:0]\out_data_reg[4]_0 ;
  input data_clk_i;
  input s_axi_aclk;
  input cdc_sync_stage3_tick;
  input cdc_sync_stage2_tick;
  input \wr_addr_reg[1]_0 ;
  input [0:0]Q;
  input tx_tick;
  input [4:0]in_data;

  wire [0:0]Q;
  wire cdc_sync_stage0_tick;
  wire cdc_sync_stage0_tick_i_1__1_n_0;
  wire cdc_sync_stage1_tick;
  wire cdc_sync_stage2_tick;
  wire cdc_sync_stage2_tick_0;
  wire cdc_sync_stage3_tick;
  wire cdc_sync_stage3_tick_1;
  wire data_clk_i;
  wire [4:0]in_data;
  wire [4:0]out_data0;
  wire \out_data[4]_i_1_n_0 ;
  wire [4:0]\out_data_reg[4]_0 ;
  wire [1:0]rd_addr;
  wire \rd_addr[0]_i_1__1_n_0 ;
  wire \rd_addr[1]_i_1__1_n_0 ;
  wire s_axi_aclk;
  wire tx_tick;
  wire [1:0]wr_addr;
  wire \wr_addr[0]_i_1__1_n_0 ;
  wire \wr_addr[1]_i_1__1_n_0 ;
  wire \wr_addr_reg[1]_0 ;
  wire [1:1]NLW_fifo_reg_0_3_0_4_DOC_UNCONNECTED;
  wire [1:0]NLW_fifo_reg_0_3_0_4_DOD_UNCONNECTED;

  LUT3 #(
    .INIT(8'h96)) 
    cdc_sync_stage0_tick_i_1__1
       (.I0(cdc_sync_stage3_tick),
        .I1(cdc_sync_stage2_tick),
        .I2(cdc_sync_stage0_tick),
        .O(cdc_sync_stage0_tick_i_1__1_n_0));
  FDRE cdc_sync_stage0_tick_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(cdc_sync_stage0_tick_i_1__1_n_0),
        .Q(cdc_sync_stage0_tick),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE cdc_sync_stage1_tick_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(cdc_sync_stage0_tick),
        .Q(cdc_sync_stage1_tick),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE cdc_sync_stage2_tick_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(cdc_sync_stage1_tick),
        .Q(cdc_sync_stage2_tick_0),
        .R(1'b0));
  FDRE cdc_sync_stage3_tick_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(cdc_sync_stage2_tick_0),
        .Q(cdc_sync_stage3_tick_1),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "20" *) 
  (* RTL_RAM_NAME = "ctrl/tx_sync/fifo" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "3" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "4" *) 
  RAM32M fifo_reg_0_3_0_4
       (.ADDRA({1'b0,1'b0,1'b0,rd_addr}),
        .ADDRB({1'b0,1'b0,1'b0,rd_addr}),
        .ADDRC({1'b0,1'b0,1'b0,rd_addr}),
        .ADDRD({1'b0,1'b0,1'b0,wr_addr}),
        .DIA(in_data[1:0]),
        .DIB(in_data[3:2]),
        .DIC({1'b0,in_data[4]}),
        .DID({1'b0,1'b0}),
        .DOA(out_data0[1:0]),
        .DOB(out_data0[3:2]),
        .DOC({NLW_fifo_reg_0_3_0_4_DOC_UNCONNECTED[1],out_data0[4]}),
        .DOD(NLW_fifo_reg_0_3_0_4_DOD_UNCONNECTED[1:0]),
        .WCLK(s_axi_aclk),
        .WE(tx_tick));
  LUT2 #(
    .INIT(4'h6)) 
    \out_data[4]_i_1 
       (.I0(cdc_sync_stage3_tick_1),
        .I1(cdc_sync_stage2_tick_0),
        .O(\out_data[4]_i_1_n_0 ));
  FDRE \out_data_reg[0] 
       (.C(data_clk_i),
        .CE(\out_data[4]_i_1_n_0 ),
        .D(out_data0[0]),
        .Q(\out_data_reg[4]_0 [0]),
        .R(1'b0));
  FDRE \out_data_reg[1] 
       (.C(data_clk_i),
        .CE(\out_data[4]_i_1_n_0 ),
        .D(out_data0[1]),
        .Q(\out_data_reg[4]_0 [1]),
        .R(1'b0));
  FDRE \out_data_reg[2] 
       (.C(data_clk_i),
        .CE(\out_data[4]_i_1_n_0 ),
        .D(out_data0[2]),
        .Q(\out_data_reg[4]_0 [2]),
        .R(1'b0));
  FDRE \out_data_reg[3] 
       (.C(data_clk_i),
        .CE(\out_data[4]_i_1_n_0 ),
        .D(out_data0[3]),
        .Q(\out_data_reg[4]_0 [3]),
        .R(1'b0));
  FDRE \out_data_reg[4] 
       (.C(data_clk_i),
        .CE(\out_data[4]_i_1_n_0 ),
        .D(out_data0[4]),
        .Q(\out_data_reg[4]_0 [4]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \rd_addr[0]_i_1__1 
       (.I0(cdc_sync_stage2_tick_0),
        .I1(cdc_sync_stage3_tick_1),
        .I2(rd_addr[0]),
        .O(\rd_addr[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hD728)) 
    \rd_addr[1]_i_1__1 
       (.I0(rd_addr[0]),
        .I1(cdc_sync_stage3_tick_1),
        .I2(cdc_sync_stage2_tick_0),
        .I3(rd_addr[1]),
        .O(\rd_addr[1]_i_1__1_n_0 ));
  FDRE \rd_addr_reg[0] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\rd_addr[0]_i_1__1_n_0 ),
        .Q(rd_addr[0]),
        .R(Q));
  FDRE \rd_addr_reg[1] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\rd_addr[1]_i_1__1_n_0 ),
        .Q(rd_addr[1]),
        .R(Q));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \wr_addr[0]_i_1__1 
       (.I0(cdc_sync_stage3_tick),
        .I1(cdc_sync_stage2_tick),
        .I2(wr_addr[0]),
        .O(\wr_addr[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hD728)) 
    \wr_addr[1]_i_1__1 
       (.I0(wr_addr[0]),
        .I1(cdc_sync_stage2_tick),
        .I2(cdc_sync_stage3_tick),
        .I3(wr_addr[1]),
        .O(\wr_addr[1]_i_1__1_n_0 ));
  FDRE \wr_addr_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\wr_addr[0]_i_1__1_n_0 ),
        .Q(wr_addr[0]),
        .R(\wr_addr_reg[1]_0 ));
  FDRE \wr_addr_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\wr_addr[1]_i_1__1_n_0 ),
        .Q(wr_addr[1]),
        .R(\wr_addr_reg[1]_0 ));
endmodule

(* ORIG_REF_NAME = "fifo_synchronizer" *) 
module icyradio_axi_i2s_adi_0_1_fifo_synchronizer__xdcDup__1
   (E,
    Q,
    data_clk_i,
    s_axi_aclk,
    bclk_d1,
    \wr_addr_reg[1]_0 ,
    \rd_addr_reg[1]_0 ,
    \out_data_reg[1]_0 );
  output [0:0]E;
  output [3:0]Q;
  input data_clk_i;
  input s_axi_aclk;
  input bclk_d1;
  input [0:0]\wr_addr_reg[1]_0 ;
  input \rd_addr_reg[1]_0 ;
  input [4:0]\out_data_reg[1]_0 ;

  wire [0:0]E;
  wire [3:0]Q;
  wire bclk_d1;
  wire cdc_sync_stage0_tick_i_1_n_0;
  wire cdc_sync_stage0_tick_reg_n_0;
  wire cdc_sync_stage1_tick_reg_n_0;
  wire cdc_sync_stage2_tick;
  wire cdc_sync_stage3_tick;
  wire data_clk_i;
  wire fifo_reg_0_3_0_4_n_2;
  wire [4:0]out_data0__0;
  wire \out_data[4]_i_1__0_n_0 ;
  wire [4:0]\out_data_reg[1]_0 ;
  wire [1:0]rd_addr;
  wire \rd_addr[0]_i_1__2_n_0 ;
  wire \rd_addr[1]_i_1__2_n_0 ;
  wire \rd_addr_reg[1]_0 ;
  wire s_axi_aclk;
  wire [1:0]wr_addr;
  wire \wr_addr[0]_i_1_n_0 ;
  wire \wr_addr[1]_i_1_n_0 ;
  wire [0:0]\wr_addr_reg[1]_0 ;
  wire [1:1]NLW_fifo_reg_0_3_0_4_DOC_UNCONNECTED;
  wire [1:0]NLW_fifo_reg_0_3_0_4_DOD_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    cdc_sync_stage0_tick_i_1
       (.I0(cdc_sync_stage0_tick_reg_n_0),
        .O(cdc_sync_stage0_tick_i_1_n_0));
  FDRE cdc_sync_stage0_tick_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(cdc_sync_stage0_tick_i_1_n_0),
        .Q(cdc_sync_stage0_tick_reg_n_0),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE cdc_sync_stage1_tick_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(cdc_sync_stage0_tick_reg_n_0),
        .Q(cdc_sync_stage1_tick_reg_n_0),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE cdc_sync_stage2_tick_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(cdc_sync_stage1_tick_reg_n_0),
        .Q(cdc_sync_stage2_tick),
        .R(1'b0));
  FDRE cdc_sync_stage3_tick_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(cdc_sync_stage2_tick),
        .Q(cdc_sync_stage3_tick),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "20" *) 
  (* RTL_RAM_NAME = "ctrl/rx_gen.rx_sync/fifo" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "3" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "4" *) 
  RAM32M fifo_reg_0_3_0_4
       (.ADDRA({1'b0,1'b0,1'b0,rd_addr}),
        .ADDRB({1'b0,1'b0,1'b0,rd_addr}),
        .ADDRC({1'b0,1'b0,1'b0,rd_addr}),
        .ADDRD({1'b0,1'b0,1'b0,wr_addr}),
        .DIA(\out_data_reg[1]_0 [1:0]),
        .DIB(\out_data_reg[1]_0 [3:2]),
        .DIC({1'b0,\out_data_reg[1]_0 [4]}),
        .DID({1'b0,1'b0}),
        .DOA(out_data0__0[1:0]),
        .DOB({fifo_reg_0_3_0_4_n_2,out_data0__0[2]}),
        .DOC({NLW_fifo_reg_0_3_0_4_DOC_UNCONNECTED[1],out_data0__0[4]}),
        .DOD(NLW_fifo_reg_0_3_0_4_DOD_UNCONNECTED[1:0]),
        .WCLK(data_clk_i),
        .WE(1'b1));
  LUT2 #(
    .INIT(4'h2)) 
    \gen[0].data_int[0][31]_i_2__0 
       (.I0(Q[2]),
        .I1(bclk_d1),
        .O(E));
  LUT2 #(
    .INIT(4'h6)) 
    \out_data[4]_i_1__0 
       (.I0(cdc_sync_stage3_tick),
        .I1(cdc_sync_stage2_tick),
        .O(\out_data[4]_i_1__0_n_0 ));
  FDRE \out_data_reg[0] 
       (.C(s_axi_aclk),
        .CE(\out_data[4]_i_1__0_n_0 ),
        .D(out_data0__0[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \out_data_reg[1] 
       (.C(s_axi_aclk),
        .CE(\out_data[4]_i_1__0_n_0 ),
        .D(out_data0__0[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \out_data_reg[2] 
       (.C(s_axi_aclk),
        .CE(\out_data[4]_i_1__0_n_0 ),
        .D(out_data0__0[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \out_data_reg[4] 
       (.C(s_axi_aclk),
        .CE(\out_data[4]_i_1__0_n_0 ),
        .D(out_data0__0[4]),
        .Q(Q[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \rd_addr[0]_i_1__2 
       (.I0(cdc_sync_stage2_tick),
        .I1(cdc_sync_stage3_tick),
        .I2(rd_addr[0]),
        .O(\rd_addr[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hD728)) 
    \rd_addr[1]_i_1__2 
       (.I0(rd_addr[0]),
        .I1(cdc_sync_stage3_tick),
        .I2(cdc_sync_stage2_tick),
        .I3(rd_addr[1]),
        .O(\rd_addr[1]_i_1__2_n_0 ));
  FDRE \rd_addr_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\rd_addr[0]_i_1__2_n_0 ),
        .Q(rd_addr[0]),
        .R(\rd_addr_reg[1]_0 ));
  FDRE \rd_addr_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\rd_addr[1]_i_1__2_n_0 ),
        .Q(rd_addr[1]),
        .R(\rd_addr_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \wr_addr[0]_i_1 
       (.I0(wr_addr[0]),
        .O(\wr_addr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_addr[1]_i_1 
       (.I0(wr_addr[0]),
        .I1(wr_addr[1]),
        .O(\wr_addr[1]_i_1_n_0 ));
  FDRE \wr_addr_reg[0] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\wr_addr[0]_i_1_n_0 ),
        .Q(wr_addr[0]),
        .R(\wr_addr_reg[1]_0 ));
  FDRE \wr_addr_reg[1] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(\wr_addr[1]_i_1_n_0 ),
        .Q(wr_addr[1]),
        .R(\wr_addr_reg[1]_0 ));
endmodule

(* ORIG_REF_NAME = "i2s_clkgen" *) 
module icyradio_axi_i2s_adi_0_1_i2s_clkgen
   (tx_bclk,
    tx_lrclk,
    tx_tick,
    D,
    \lrclk_count_reg[5]_0 ,
    enable_int_reg,
    in_data,
    s_axi_aclk,
    s_axi_aresetn,
    rx_enable,
    \bclk_count_reg[0]_0 ,
    cdc_sync_stage3_tick,
    cdc_sync_stage2_tick,
    Q,
    out_data,
    \gen[0].data_int_reg[0][31] ,
    E,
    enable_int_reg_0,
    tx_stb);
  output tx_bclk;
  output tx_lrclk;
  output tx_tick;
  output [22:0]D;
  output \lrclk_count_reg[5]_0 ;
  output enable_int_reg;
  output [1:0]in_data;
  input s_axi_aclk;
  input s_axi_aresetn;
  input rx_enable;
  input \bclk_count_reg[0]_0 ;
  input cdc_sync_stage3_tick;
  input cdc_sync_stage2_tick;
  input [15:0]Q;
  input [22:0]out_data;
  input [22:0]\gen[0].data_int_reg[0][31] ;
  input [0:0]E;
  input enable_int_reg_0;
  input tx_stb;

  wire [22:0]D;
  wire [0:0]E;
  wire [15:0]Q;
  wire [7:0]bclk_count;
  wire \bclk_count[0]_i_1_n_0 ;
  wire \bclk_count[1]_i_1_n_0 ;
  wire \bclk_count[2]_i_1_n_0 ;
  wire \bclk_count[3]_i_1_n_0 ;
  wire \bclk_count[3]_i_2_n_0 ;
  wire \bclk_count[4]_i_1_n_0 ;
  wire \bclk_count[4]_i_2_n_0 ;
  wire \bclk_count[5]_i_1_n_0 ;
  wire \bclk_count[5]_i_2_n_0 ;
  wire \bclk_count[6]_i_1_n_0 ;
  wire \bclk_count[7]_i_1_n_0 ;
  wire \bclk_count[7]_i_2_n_0 ;
  wire \bclk_count[7]_i_3_n_0 ;
  wire \bclk_count_reg[0]_0 ;
  wire bclk_int_i_1_n_0;
  wire cdc_sync_stage2_tick;
  wire cdc_sync_stage3_tick;
  wire enable_int_reg;
  wire enable_int_reg_0;
  wire fifo_reg_0_3_0_4_i_5_n_0;
  wire [22:0]\gen[0].data_int_reg[0][31] ;
  wire [1:0]in_data;
  wire [7:0]lrclk_count;
  wire \lrclk_count[0]_i_1_n_0 ;
  wire \lrclk_count[1]_i_1_n_0 ;
  wire \lrclk_count[2]_i_1_n_0 ;
  wire \lrclk_count[3]_i_1_n_0 ;
  wire \lrclk_count[3]_i_2_n_0 ;
  wire \lrclk_count[4]_i_1_n_0 ;
  wire \lrclk_count[4]_i_2_n_0 ;
  wire \lrclk_count[5]_i_1_n_0 ;
  wire \lrclk_count[5]_i_2_n_0 ;
  wire \lrclk_count[6]_i_1_n_0 ;
  wire \lrclk_count[7]_i_10_n_0 ;
  wire \lrclk_count[7]_i_1_n_0 ;
  wire \lrclk_count[7]_i_2_n_0 ;
  wire \lrclk_count[7]_i_4_n_0 ;
  wire \lrclk_count[7]_i_5_n_0 ;
  wire \lrclk_count[7]_i_6_n_0 ;
  wire \lrclk_count[7]_i_7_n_0 ;
  wire \lrclk_count[7]_i_8_n_0 ;
  wire \lrclk_count[7]_i_9_n_0 ;
  wire \lrclk_count_reg[5]_0 ;
  wire lrclk_int_i_1_n_0;
  wire [22:0]out_data;
  wire reset_int;
  wire rx_enable;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire tx_bclk;
  wire tx_lrclk;
  wire tx_stb;
  wire tx_tick;

  LUT6 #(
    .INIT(64'h02AA02AAFEAA02AA)) 
    \bclk_count[0]_i_1 
       (.I0(Q[0]),
        .I1(\bclk_count_reg[0]_0 ),
        .I2(rx_enable),
        .I3(s_axi_aresetn),
        .I4(\lrclk_count[7]_i_4_n_0 ),
        .I5(bclk_count[0]),
        .O(\bclk_count[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B8B888)) 
    \bclk_count[1]_i_1 
       (.I0(Q[1]),
        .I1(reset_int),
        .I2(\lrclk_count[7]_i_4_n_0 ),
        .I3(bclk_count[1]),
        .I4(bclk_count[0]),
        .O(\bclk_count[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88B8B8B8B8888888)) 
    \bclk_count[2]_i_1 
       (.I0(Q[2]),
        .I1(reset_int),
        .I2(\lrclk_count[7]_i_4_n_0 ),
        .I3(bclk_count[0]),
        .I4(bclk_count[1]),
        .I5(bclk_count[2]),
        .O(\bclk_count[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB88888B8)) 
    \bclk_count[3]_i_1 
       (.I0(Q[3]),
        .I1(reset_int),
        .I2(\lrclk_count[7]_i_4_n_0 ),
        .I3(\bclk_count[3]_i_2_n_0 ),
        .I4(bclk_count[3]),
        .O(\bclk_count[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \bclk_count[3]_i_2 
       (.I0(bclk_count[1]),
        .I1(bclk_count[0]),
        .I2(bclk_count[2]),
        .O(\bclk_count[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB88888B8)) 
    \bclk_count[4]_i_1 
       (.I0(Q[4]),
        .I1(reset_int),
        .I2(\lrclk_count[7]_i_4_n_0 ),
        .I3(\bclk_count[4]_i_2_n_0 ),
        .I4(bclk_count[4]),
        .O(\bclk_count[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \bclk_count[4]_i_2 
       (.I0(bclk_count[2]),
        .I1(bclk_count[0]),
        .I2(bclk_count[1]),
        .I3(bclk_count[3]),
        .O(\bclk_count[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB88888B8)) 
    \bclk_count[5]_i_1 
       (.I0(Q[5]),
        .I1(reset_int),
        .I2(\lrclk_count[7]_i_4_n_0 ),
        .I3(\bclk_count[5]_i_2_n_0 ),
        .I4(bclk_count[5]),
        .O(\bclk_count[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \bclk_count[5]_i_2 
       (.I0(bclk_count[3]),
        .I1(bclk_count[1]),
        .I2(bclk_count[0]),
        .I3(bclk_count[2]),
        .I4(bclk_count[4]),
        .O(\bclk_count[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA3C00)) 
    \bclk_count[6]_i_1 
       (.I0(Q[6]),
        .I1(bclk_count[6]),
        .I2(\bclk_count[7]_i_3_n_0 ),
        .I3(\lrclk_count[7]_i_4_n_0 ),
        .I4(reset_int),
        .O(\bclk_count[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h57FFFF57)) 
    \bclk_count[7]_i_1 
       (.I0(s_axi_aresetn),
        .I1(rx_enable),
        .I2(\bclk_count_reg[0]_0 ),
        .I3(cdc_sync_stage3_tick),
        .I4(cdc_sync_stage2_tick),
        .O(\bclk_count[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA3CCC0000)) 
    \bclk_count[7]_i_2 
       (.I0(Q[7]),
        .I1(bclk_count[7]),
        .I2(\bclk_count[7]_i_3_n_0 ),
        .I3(bclk_count[6]),
        .I4(\lrclk_count[7]_i_4_n_0 ),
        .I5(reset_int),
        .O(\bclk_count[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \bclk_count[7]_i_3 
       (.I0(bclk_count[5]),
        .I1(bclk_count[4]),
        .I2(bclk_count[2]),
        .I3(bclk_count[0]),
        .I4(bclk_count[1]),
        .I5(bclk_count[3]),
        .O(\bclk_count[7]_i_3_n_0 ));
  FDRE \bclk_count_reg[0] 
       (.C(s_axi_aclk),
        .CE(\bclk_count[7]_i_1_n_0 ),
        .D(\bclk_count[0]_i_1_n_0 ),
        .Q(bclk_count[0]),
        .R(1'b0));
  FDRE \bclk_count_reg[1] 
       (.C(s_axi_aclk),
        .CE(\bclk_count[7]_i_1_n_0 ),
        .D(\bclk_count[1]_i_1_n_0 ),
        .Q(bclk_count[1]),
        .R(1'b0));
  FDRE \bclk_count_reg[2] 
       (.C(s_axi_aclk),
        .CE(\bclk_count[7]_i_1_n_0 ),
        .D(\bclk_count[2]_i_1_n_0 ),
        .Q(bclk_count[2]),
        .R(1'b0));
  FDRE \bclk_count_reg[3] 
       (.C(s_axi_aclk),
        .CE(\bclk_count[7]_i_1_n_0 ),
        .D(\bclk_count[3]_i_1_n_0 ),
        .Q(bclk_count[3]),
        .R(1'b0));
  FDRE \bclk_count_reg[4] 
       (.C(s_axi_aclk),
        .CE(\bclk_count[7]_i_1_n_0 ),
        .D(\bclk_count[4]_i_1_n_0 ),
        .Q(bclk_count[4]),
        .R(1'b0));
  FDRE \bclk_count_reg[5] 
       (.C(s_axi_aclk),
        .CE(\bclk_count[7]_i_1_n_0 ),
        .D(\bclk_count[5]_i_1_n_0 ),
        .Q(bclk_count[5]),
        .R(1'b0));
  FDRE \bclk_count_reg[6] 
       (.C(s_axi_aclk),
        .CE(\bclk_count[7]_i_1_n_0 ),
        .D(\bclk_count[6]_i_1_n_0 ),
        .Q(bclk_count[6]),
        .R(1'b0));
  FDRE \bclk_count_reg[7] 
       (.C(s_axi_aclk),
        .CE(\bclk_count[7]_i_1_n_0 ),
        .D(\bclk_count[7]_i_2_n_0 ),
        .Q(bclk_count[7]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFFAA96)) 
    bclk_int_i_1
       (.I0(tx_bclk),
        .I1(cdc_sync_stage3_tick),
        .I2(cdc_sync_stage2_tick),
        .I3(\lrclk_count[7]_i_4_n_0 ),
        .I4(reset_int),
        .O(bclk_int_i_1_n_0));
  FDRE bclk_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bclk_int_i_1_n_0),
        .Q(tx_bclk),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    channel_sync_int_d1_i_1
       (.I0(E),
        .I1(fifo_reg_0_3_0_4_i_5_n_0),
        .I2(lrclk_count[5]),
        .I3(lrclk_count[2]),
        .I4(lrclk_count[4]),
        .I5(lrclk_count[3]),
        .O(\lrclk_count_reg[5]_0 ));
  LUT6 #(
    .INIT(64'hAEAA000000000000)) 
    enable_int_i_1
       (.I0(enable_int_reg_0),
        .I1(\lrclk_count_reg[5]_0 ),
        .I2(tx_lrclk),
        .I3(tx_stb),
        .I4(\bclk_count_reg[0]_0 ),
        .I5(s_axi_aresetn),
        .O(enable_int_reg));
  LUT2 #(
    .INIT(4'h6)) 
    fifo_reg_0_3_0_4_i_1
       (.I0(cdc_sync_stage2_tick),
        .I1(cdc_sync_stage3_tick),
        .O(tx_tick));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    fifo_reg_0_3_0_4_i_2
       (.I0(lrclk_count[3]),
        .I1(lrclk_count[4]),
        .I2(lrclk_count[2]),
        .I3(lrclk_count[5]),
        .I4(fifo_reg_0_3_0_4_i_5_n_0),
        .I5(tx_lrclk),
        .O(in_data[1]));
  LUT5 #(
    .INIT(32'h00000001)) 
    fifo_reg_0_3_0_4_i_3
       (.I0(lrclk_count[3]),
        .I1(lrclk_count[4]),
        .I2(lrclk_count[2]),
        .I3(lrclk_count[5]),
        .I4(fifo_reg_0_3_0_4_i_5_n_0),
        .O(in_data[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    fifo_reg_0_3_0_4_i_5
       (.I0(lrclk_count[0]),
        .I1(lrclk_count[1]),
        .I2(lrclk_count[6]),
        .I3(lrclk_count[7]),
        .O(fifo_reg_0_3_0_4_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen[0].data_int[0][10]_i_1 
       (.I0(out_data[1]),
        .I1(\lrclk_count_reg[5]_0 ),
        .I2(\gen[0].data_int_reg[0][31] [1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen[0].data_int[0][11]_i_1 
       (.I0(out_data[2]),
        .I1(\lrclk_count_reg[5]_0 ),
        .I2(\gen[0].data_int_reg[0][31] [2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen[0].data_int[0][12]_i_1 
       (.I0(out_data[3]),
        .I1(\lrclk_count_reg[5]_0 ),
        .I2(\gen[0].data_int_reg[0][31] [3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen[0].data_int[0][13]_i_1 
       (.I0(out_data[4]),
        .I1(\lrclk_count_reg[5]_0 ),
        .I2(\gen[0].data_int_reg[0][31] [4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen[0].data_int[0][14]_i_1 
       (.I0(out_data[5]),
        .I1(\lrclk_count_reg[5]_0 ),
        .I2(\gen[0].data_int_reg[0][31] [5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen[0].data_int[0][15]_i_1 
       (.I0(out_data[6]),
        .I1(\lrclk_count_reg[5]_0 ),
        .I2(\gen[0].data_int_reg[0][31] [6]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen[0].data_int[0][16]_i_1 
       (.I0(out_data[7]),
        .I1(\lrclk_count_reg[5]_0 ),
        .I2(\gen[0].data_int_reg[0][31] [7]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen[0].data_int[0][17]_i_1 
       (.I0(out_data[8]),
        .I1(\lrclk_count_reg[5]_0 ),
        .I2(\gen[0].data_int_reg[0][31] [8]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen[0].data_int[0][18]_i_1 
       (.I0(out_data[9]),
        .I1(\lrclk_count_reg[5]_0 ),
        .I2(\gen[0].data_int_reg[0][31] [9]),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen[0].data_int[0][19]_i_1 
       (.I0(out_data[10]),
        .I1(\lrclk_count_reg[5]_0 ),
        .I2(\gen[0].data_int_reg[0][31] [10]),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen[0].data_int[0][20]_i_1 
       (.I0(out_data[11]),
        .I1(\lrclk_count_reg[5]_0 ),
        .I2(\gen[0].data_int_reg[0][31] [11]),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen[0].data_int[0][21]_i_1 
       (.I0(out_data[12]),
        .I1(\lrclk_count_reg[5]_0 ),
        .I2(\gen[0].data_int_reg[0][31] [12]),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen[0].data_int[0][22]_i_1 
       (.I0(out_data[13]),
        .I1(\lrclk_count_reg[5]_0 ),
        .I2(\gen[0].data_int_reg[0][31] [13]),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen[0].data_int[0][23]_i_1 
       (.I0(out_data[14]),
        .I1(\lrclk_count_reg[5]_0 ),
        .I2(\gen[0].data_int_reg[0][31] [14]),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen[0].data_int[0][24]_i_1 
       (.I0(out_data[15]),
        .I1(\lrclk_count_reg[5]_0 ),
        .I2(\gen[0].data_int_reg[0][31] [15]),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen[0].data_int[0][25]_i_1 
       (.I0(out_data[16]),
        .I1(\lrclk_count_reg[5]_0 ),
        .I2(\gen[0].data_int_reg[0][31] [16]),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen[0].data_int[0][26]_i_1 
       (.I0(out_data[17]),
        .I1(\lrclk_count_reg[5]_0 ),
        .I2(\gen[0].data_int_reg[0][31] [17]),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen[0].data_int[0][27]_i_1 
       (.I0(out_data[18]),
        .I1(\lrclk_count_reg[5]_0 ),
        .I2(\gen[0].data_int_reg[0][31] [18]),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen[0].data_int[0][28]_i_1 
       (.I0(out_data[19]),
        .I1(\lrclk_count_reg[5]_0 ),
        .I2(\gen[0].data_int_reg[0][31] [19]),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen[0].data_int[0][29]_i_1 
       (.I0(out_data[20]),
        .I1(\lrclk_count_reg[5]_0 ),
        .I2(\gen[0].data_int_reg[0][31] [20]),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen[0].data_int[0][30]_i_1 
       (.I0(out_data[21]),
        .I1(\lrclk_count_reg[5]_0 ),
        .I2(\gen[0].data_int_reg[0][31] [21]),
        .O(D[21]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen[0].data_int[0][31]_i_3 
       (.I0(out_data[22]),
        .I1(\lrclk_count_reg[5]_0 ),
        .I2(\gen[0].data_int_reg[0][31] [22]),
        .O(D[22]));
  LUT3 #(
    .INIT(8'hB8)) 
    \gen[0].data_int[0][9]_i_1 
       (.I0(out_data[0]),
        .I1(\lrclk_count_reg[5]_0 ),
        .I2(\gen[0].data_int_reg[0][31] [0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h02AA02AAFEAA02AA)) 
    \lrclk_count[0]_i_1 
       (.I0(Q[8]),
        .I1(\bclk_count_reg[0]_0 ),
        .I2(rx_enable),
        .I3(s_axi_aresetn),
        .I4(\lrclk_count[7]_i_5_n_0 ),
        .I5(lrclk_count[0]),
        .O(\lrclk_count[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B8B888)) 
    \lrclk_count[1]_i_1 
       (.I0(Q[9]),
        .I1(reset_int),
        .I2(\lrclk_count[7]_i_5_n_0 ),
        .I3(lrclk_count[1]),
        .I4(lrclk_count[0]),
        .O(\lrclk_count[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88B8B8B8B8888888)) 
    \lrclk_count[2]_i_1 
       (.I0(Q[10]),
        .I1(reset_int),
        .I2(\lrclk_count[7]_i_5_n_0 ),
        .I3(lrclk_count[0]),
        .I4(lrclk_count[1]),
        .I5(lrclk_count[2]),
        .O(\lrclk_count[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB88888B8)) 
    \lrclk_count[3]_i_1 
       (.I0(Q[11]),
        .I1(reset_int),
        .I2(\lrclk_count[7]_i_5_n_0 ),
        .I3(\lrclk_count[3]_i_2_n_0 ),
        .I4(lrclk_count[3]),
        .O(\lrclk_count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \lrclk_count[3]_i_2 
       (.I0(lrclk_count[1]),
        .I1(lrclk_count[0]),
        .I2(lrclk_count[2]),
        .O(\lrclk_count[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB88888B8)) 
    \lrclk_count[4]_i_1 
       (.I0(Q[12]),
        .I1(reset_int),
        .I2(\lrclk_count[7]_i_5_n_0 ),
        .I3(\lrclk_count[4]_i_2_n_0 ),
        .I4(lrclk_count[4]),
        .O(\lrclk_count[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \lrclk_count[4]_i_2 
       (.I0(lrclk_count[2]),
        .I1(lrclk_count[0]),
        .I2(lrclk_count[1]),
        .I3(lrclk_count[3]),
        .O(\lrclk_count[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB88888B8)) 
    \lrclk_count[5]_i_1 
       (.I0(Q[13]),
        .I1(reset_int),
        .I2(\lrclk_count[7]_i_5_n_0 ),
        .I3(\lrclk_count[5]_i_2_n_0 ),
        .I4(lrclk_count[5]),
        .O(\lrclk_count[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \lrclk_count[5]_i_2 
       (.I0(lrclk_count[3]),
        .I1(lrclk_count[1]),
        .I2(lrclk_count[0]),
        .I3(lrclk_count[2]),
        .I4(lrclk_count[4]),
        .O(\lrclk_count[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h88B8B888)) 
    \lrclk_count[6]_i_1 
       (.I0(Q[14]),
        .I1(reset_int),
        .I2(\lrclk_count[7]_i_5_n_0 ),
        .I3(\lrclk_count[7]_i_6_n_0 ),
        .I4(lrclk_count[6]),
        .O(\lrclk_count[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAABEAAAA)) 
    \lrclk_count[7]_i_1 
       (.I0(reset_int),
        .I1(cdc_sync_stage3_tick),
        .I2(cdc_sync_stage2_tick),
        .I3(\lrclk_count[7]_i_4_n_0 ),
        .I4(tx_bclk),
        .O(\lrclk_count[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \lrclk_count[7]_i_10 
       (.I0(Q[11]),
        .I1(lrclk_count[3]),
        .I2(lrclk_count[4]),
        .I3(Q[12]),
        .I4(lrclk_count[5]),
        .I5(Q[13]),
        .O(\lrclk_count[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h88B8B8B8B8888888)) 
    \lrclk_count[7]_i_2 
       (.I0(Q[15]),
        .I1(reset_int),
        .I2(\lrclk_count[7]_i_5_n_0 ),
        .I3(\lrclk_count[7]_i_6_n_0 ),
        .I4(lrclk_count[6]),
        .I5(lrclk_count[7]),
        .O(\lrclk_count[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h1F)) 
    \lrclk_count[7]_i_3 
       (.I0(\bclk_count_reg[0]_0 ),
        .I1(rx_enable),
        .I2(s_axi_aresetn),
        .O(reset_int));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF6FF6)) 
    \lrclk_count[7]_i_4 
       (.I0(bclk_count[7]),
        .I1(Q[7]),
        .I2(bclk_count[6]),
        .I3(Q[6]),
        .I4(\lrclk_count[7]_i_7_n_0 ),
        .I5(\lrclk_count[7]_i_8_n_0 ),
        .O(\lrclk_count[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF6FF6)) 
    \lrclk_count[7]_i_5 
       (.I0(lrclk_count[7]),
        .I1(Q[15]),
        .I2(lrclk_count[6]),
        .I3(Q[14]),
        .I4(\lrclk_count[7]_i_9_n_0 ),
        .I5(\lrclk_count[7]_i_10_n_0 ),
        .O(\lrclk_count[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \lrclk_count[7]_i_6 
       (.I0(lrclk_count[5]),
        .I1(lrclk_count[4]),
        .I2(lrclk_count[2]),
        .I3(lrclk_count[0]),
        .I4(lrclk_count[1]),
        .I5(lrclk_count[3]),
        .O(\lrclk_count[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \lrclk_count[7]_i_7 
       (.I0(Q[0]),
        .I1(bclk_count[0]),
        .I2(bclk_count[1]),
        .I3(Q[1]),
        .I4(bclk_count[2]),
        .I5(Q[2]),
        .O(\lrclk_count[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \lrclk_count[7]_i_8 
       (.I0(Q[3]),
        .I1(bclk_count[3]),
        .I2(bclk_count[5]),
        .I3(Q[5]),
        .I4(bclk_count[4]),
        .I5(Q[4]),
        .O(\lrclk_count[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \lrclk_count[7]_i_9 
       (.I0(Q[8]),
        .I1(lrclk_count[0]),
        .I2(lrclk_count[2]),
        .I3(Q[10]),
        .I4(lrclk_count[1]),
        .I5(Q[9]),
        .O(\lrclk_count[7]_i_9_n_0 ));
  FDRE \lrclk_count_reg[0] 
       (.C(s_axi_aclk),
        .CE(\lrclk_count[7]_i_1_n_0 ),
        .D(\lrclk_count[0]_i_1_n_0 ),
        .Q(lrclk_count[0]),
        .R(1'b0));
  FDRE \lrclk_count_reg[1] 
       (.C(s_axi_aclk),
        .CE(\lrclk_count[7]_i_1_n_0 ),
        .D(\lrclk_count[1]_i_1_n_0 ),
        .Q(lrclk_count[1]),
        .R(1'b0));
  FDRE \lrclk_count_reg[2] 
       (.C(s_axi_aclk),
        .CE(\lrclk_count[7]_i_1_n_0 ),
        .D(\lrclk_count[2]_i_1_n_0 ),
        .Q(lrclk_count[2]),
        .R(1'b0));
  FDRE \lrclk_count_reg[3] 
       (.C(s_axi_aclk),
        .CE(\lrclk_count[7]_i_1_n_0 ),
        .D(\lrclk_count[3]_i_1_n_0 ),
        .Q(lrclk_count[3]),
        .R(1'b0));
  FDRE \lrclk_count_reg[4] 
       (.C(s_axi_aclk),
        .CE(\lrclk_count[7]_i_1_n_0 ),
        .D(\lrclk_count[4]_i_1_n_0 ),
        .Q(lrclk_count[4]),
        .R(1'b0));
  FDRE \lrclk_count_reg[5] 
       (.C(s_axi_aclk),
        .CE(\lrclk_count[7]_i_1_n_0 ),
        .D(\lrclk_count[5]_i_1_n_0 ),
        .Q(lrclk_count[5]),
        .R(1'b0));
  FDRE \lrclk_count_reg[6] 
       (.C(s_axi_aclk),
        .CE(\lrclk_count[7]_i_1_n_0 ),
        .D(\lrclk_count[6]_i_1_n_0 ),
        .Q(lrclk_count[6]),
        .R(1'b0));
  FDRE \lrclk_count_reg[7] 
       (.C(s_axi_aclk),
        .CE(\lrclk_count[7]_i_1_n_0 ),
        .D(\lrclk_count[7]_i_2_n_0 ),
        .Q(lrclk_count[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAA6AA)) 
    lrclk_int_i_1
       (.I0(tx_lrclk),
        .I1(tx_tick),
        .I2(\lrclk_count[7]_i_4_n_0 ),
        .I3(tx_bclk),
        .I4(\lrclk_count[7]_i_5_n_0 ),
        .I5(reset_int),
        .O(lrclk_int_i_1_n_0));
  FDRE lrclk_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(lrclk_int_i_1_n_0),
        .Q(tx_lrclk),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "i2s_controller" *) 
module icyradio_axi_i2s_adi_0_1_i2s_controller
   (SR,
    channel_sync_int_d1,
    channel_sync_int,
    bclk_o,
    lrclk_o,
    sdata_o,
    enable_int,
    rx_stb,
    rd_addr0,
    \gen[0].data_latched_reg[0][23] ,
    data_clk_i,
    s_axi_aclk,
    tx_stb,
    rx_enable,
    s_axi_aresetn,
    \gen[0].data_int_reg[0][8] ,
    Q,
    out_data,
    rx_ack,
    sdata_i,
    D);
  output [0:0]SR;
  output channel_sync_int_d1;
  output channel_sync_int;
  output [0:0]bclk_o;
  output [0:0]lrclk_o;
  output [0:0]sdata_o;
  output enable_int;
  output rx_stb;
  output rd_addr0;
  output [23:0]\gen[0].data_latched_reg[0][23] ;
  input data_clk_i;
  input s_axi_aclk;
  input tx_stb;
  input rx_enable;
  input s_axi_aresetn;
  input \gen[0].data_int_reg[0][8] ;
  input [15:0]Q;
  input [22:0]out_data;
  input rx_ack;
  input [0:0]sdata_i;
  input [0:0]D;

  wire [0:0]D;
  wire [15:0]Q;
  wire [0:0]SR;
  wire bclk_d1;
  wire [0:0]bclk_o;
  wire cdc_sync_stage0_tick_i_1__0_n_0;
  wire cdc_sync_stage0_tick_reg_n_0;
  wire cdc_sync_stage1_tick_reg_n_0;
  wire cdc_sync_stage2_tick;
  wire cdc_sync_stage3_tick;
  wire channel_sync_int;
  wire channel_sync_int_d1;
  wire clkgen_n_10;
  wire clkgen_n_11;
  wire clkgen_n_12;
  wire clkgen_n_13;
  wire clkgen_n_14;
  wire clkgen_n_15;
  wire clkgen_n_16;
  wire clkgen_n_17;
  wire clkgen_n_18;
  wire clkgen_n_19;
  wire clkgen_n_20;
  wire clkgen_n_21;
  wire clkgen_n_22;
  wire clkgen_n_23;
  wire clkgen_n_24;
  wire clkgen_n_25;
  wire clkgen_n_27;
  wire clkgen_n_3;
  wire clkgen_n_4;
  wire clkgen_n_5;
  wire clkgen_n_6;
  wire clkgen_n_7;
  wire clkgen_n_8;
  wire clkgen_n_9;
  wire data_clk_i;
  wire [2:0]data_reset_vec;
  wire data_resetn;
  wire enable_int;
  wire \gen[0].data_int_reg[0][8] ;
  wire [23:0]\gen[0].data_latched_reg[0][23] ;
  wire [0:0]lrclk_o;
  wire [22:0]out_data;
  wire p_1_in;
  wire p_3_in;
  wire p_5_in;
  wire rd_addr0;
  wire rx_ack;
  wire rx_enable;
  wire \rx_gen.rx_sync_n_1 ;
  wire rx_stb;
  wire [4:0]rx_sync_fifo_in;
  wire [2:0]rx_sync_fifo_out;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [0:0]sdata_i;
  wire [0:0]sdata_o;
  wire tx_bclk;
  wire tx_channel_sync;
  wire tx_frame_sync;
  wire \tx_gen.tx_n_10 ;
  wire \tx_gen.tx_n_11 ;
  wire \tx_gen.tx_n_12 ;
  wire \tx_gen.tx_n_13 ;
  wire \tx_gen.tx_n_14 ;
  wire \tx_gen.tx_n_15 ;
  wire \tx_gen.tx_n_16 ;
  wire \tx_gen.tx_n_17 ;
  wire \tx_gen.tx_n_18 ;
  wire \tx_gen.tx_n_19 ;
  wire \tx_gen.tx_n_20 ;
  wire \tx_gen.tx_n_21 ;
  wire \tx_gen.tx_n_22 ;
  wire \tx_gen.tx_n_23 ;
  wire \tx_gen.tx_n_24 ;
  wire \tx_gen.tx_n_25 ;
  wire \tx_gen.tx_n_26 ;
  wire \tx_gen.tx_n_27 ;
  wire \tx_gen.tx_n_28 ;
  wire \tx_gen.tx_n_6 ;
  wire \tx_gen.tx_n_7 ;
  wire \tx_gen.tx_n_8 ;
  wire \tx_gen.tx_n_9 ;
  wire tx_lrclk;
  wire tx_sdata;
  wire tx_stb;
  wire tx_sync_n_0;
  wire tx_sync_n_1;
  wire tx_sync_n_3;
  wire tx_sync_n_4;
  wire tx_tick;

  FDSE \bclk_o_reg[0] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(p_1_in),
        .Q(bclk_o),
        .S(data_reset_vec[2]));
  LUT1 #(
    .INIT(2'h1)) 
    cdc_sync_stage0_tick_i_1__0
       (.I0(cdc_sync_stage0_tick_reg_n_0),
        .O(cdc_sync_stage0_tick_i_1__0_n_0));
  FDRE cdc_sync_stage0_tick_reg
       (.C(data_clk_i),
        .CE(1'b1),
        .D(cdc_sync_stage0_tick_i_1__0_n_0),
        .Q(cdc_sync_stage0_tick_reg_n_0),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE cdc_sync_stage1_tick_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(cdc_sync_stage0_tick_reg_n_0),
        .Q(cdc_sync_stage1_tick_reg_n_0),
        .R(1'b0));
  (* ASYNC_REG *) 
  FDRE cdc_sync_stage2_tick_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(cdc_sync_stage1_tick_reg_n_0),
        .Q(cdc_sync_stage2_tick),
        .R(1'b0));
  FDRE cdc_sync_stage3_tick_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(cdc_sync_stage2_tick),
        .Q(cdc_sync_stage3_tick),
        .R(1'b0));
  icyradio_axi_i2s_adi_0_1_i2s_clkgen clkgen
       (.D({clkgen_n_3,clkgen_n_4,clkgen_n_5,clkgen_n_6,clkgen_n_7,clkgen_n_8,clkgen_n_9,clkgen_n_10,clkgen_n_11,clkgen_n_12,clkgen_n_13,clkgen_n_14,clkgen_n_15,clkgen_n_16,clkgen_n_17,clkgen_n_18,clkgen_n_19,clkgen_n_20,clkgen_n_21,clkgen_n_22,clkgen_n_23,clkgen_n_24,clkgen_n_25}),
        .E(p_3_in),
        .Q(Q),
        .\bclk_count_reg[0]_0 (\gen[0].data_int_reg[0][8] ),
        .cdc_sync_stage2_tick(cdc_sync_stage2_tick),
        .cdc_sync_stage3_tick(cdc_sync_stage3_tick),
        .enable_int_reg(clkgen_n_27),
        .enable_int_reg_0(enable_int),
        .\gen[0].data_int_reg[0][31] ({\tx_gen.tx_n_6 ,\tx_gen.tx_n_7 ,\tx_gen.tx_n_8 ,\tx_gen.tx_n_9 ,\tx_gen.tx_n_10 ,\tx_gen.tx_n_11 ,\tx_gen.tx_n_12 ,\tx_gen.tx_n_13 ,\tx_gen.tx_n_14 ,\tx_gen.tx_n_15 ,\tx_gen.tx_n_16 ,\tx_gen.tx_n_17 ,\tx_gen.tx_n_18 ,\tx_gen.tx_n_19 ,\tx_gen.tx_n_20 ,\tx_gen.tx_n_21 ,\tx_gen.tx_n_22 ,\tx_gen.tx_n_23 ,\tx_gen.tx_n_24 ,\tx_gen.tx_n_25 ,\tx_gen.tx_n_26 ,\tx_gen.tx_n_27 ,\tx_gen.tx_n_28 }),
        .in_data({tx_frame_sync,tx_channel_sync}),
        .\lrclk_count_reg[5]_0 (channel_sync_int),
        .out_data(out_data),
        .rx_enable(rx_enable),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .tx_bclk(tx_bclk),
        .tx_lrclk(tx_lrclk),
        .tx_stb(tx_stb),
        .tx_tick(tx_tick));
  FDPE \data_reset_vec_reg[0] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(1'b0),
        .PRE(SR),
        .Q(data_reset_vec[0]));
  FDPE \data_reset_vec_reg[1] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(data_reset_vec[0]),
        .PRE(SR),
        .Q(data_reset_vec[1]));
  FDPE \data_reset_vec_reg[2] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(data_reset_vec[1]),
        .PRE(SR),
        .Q(data_reset_vec[2]));
  FDSE \lrclk_o_reg[0] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(tx_sync_n_1),
        .Q(lrclk_o),
        .S(data_reset_vec[2]));
  icyradio_axi_i2s_adi_0_1_i2s_rx \rx_gen.rx 
       (.E(p_5_in),
        .bclk_d1(bclk_d1),
        .bclk_d1_reg_0(SR),
        .\gen[0].data_latched_reg[0][23]_0 (\gen[0].data_latched_reg[0][23] ),
        .out_data({\rx_gen.rx_sync_n_1 ,rx_sync_fifo_out}),
        .rx_ack(rx_ack),
        .rx_enable(rx_enable),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .sequencer_state_reg_0(rx_stb));
  icyradio_axi_i2s_adi_0_1_fifo_synchronizer__xdcDup__1 \rx_gen.rx_sync 
       (.E(p_5_in),
        .Q({\rx_gen.rx_sync_n_1 ,rx_sync_fifo_out}),
        .bclk_d1(bclk_d1),
        .data_clk_i(data_clk_i),
        .\out_data_reg[1]_0 (rx_sync_fifo_in),
        .\rd_addr_reg[1]_0 (SR),
        .s_axi_aclk(s_axi_aclk),
        .\wr_addr_reg[1]_0 (data_reset_vec[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \rx_sync_fifo_in[4]_i_1 
       (.I0(data_reset_vec[2]),
        .O(data_resetn));
  FDRE \rx_sync_fifo_in_reg[0] 
       (.C(data_clk_i),
        .CE(data_resetn),
        .D(tx_sync_n_4),
        .Q(rx_sync_fifo_in[0]),
        .R(1'b0));
  FDRE \rx_sync_fifo_in_reg[1] 
       (.C(data_clk_i),
        .CE(data_resetn),
        .D(tx_sync_n_3),
        .Q(rx_sync_fifo_in[1]),
        .R(1'b0));
  FDRE \rx_sync_fifo_in_reg[2] 
       (.C(data_clk_i),
        .CE(data_resetn),
        .D(p_1_in),
        .Q(rx_sync_fifo_in[2]),
        .R(1'b0));
  FDRE \rx_sync_fifo_in_reg[3] 
       (.C(data_clk_i),
        .CE(data_resetn),
        .D(tx_sync_n_1),
        .Q(rx_sync_fifo_in[3]),
        .R(1'b0));
  FDRE \rx_sync_fifo_in_reg[4] 
       (.C(data_clk_i),
        .CE(data_resetn),
        .D(sdata_i),
        .Q(rx_sync_fifo_in[4]),
        .R(1'b0));
  FDRE \sdata_o_reg[0] 
       (.C(data_clk_i),
        .CE(1'b1),
        .D(tx_sync_n_0),
        .Q(sdata_o),
        .R(data_reset_vec[2]));
  icyradio_axi_i2s_adi_0_1_i2s_tx \tx_gen.tx 
       (.D({clkgen_n_3,clkgen_n_4,clkgen_n_5,clkgen_n_6,clkgen_n_7,clkgen_n_8,clkgen_n_9,clkgen_n_10,clkgen_n_11,clkgen_n_12,clkgen_n_13,clkgen_n_14,clkgen_n_15,clkgen_n_16,clkgen_n_17,clkgen_n_18,clkgen_n_19,clkgen_n_20,clkgen_n_21,clkgen_n_22,clkgen_n_23,clkgen_n_24,clkgen_n_25,D}),
        .E(p_3_in),
        .Q({\tx_gen.tx_n_6 ,\tx_gen.tx_n_7 ,\tx_gen.tx_n_8 ,\tx_gen.tx_n_9 ,\tx_gen.tx_n_10 ,\tx_gen.tx_n_11 ,\tx_gen.tx_n_12 ,\tx_gen.tx_n_13 ,\tx_gen.tx_n_14 ,\tx_gen.tx_n_15 ,\tx_gen.tx_n_16 ,\tx_gen.tx_n_17 ,\tx_gen.tx_n_18 ,\tx_gen.tx_n_19 ,\tx_gen.tx_n_20 ,\tx_gen.tx_n_21 ,\tx_gen.tx_n_22 ,\tx_gen.tx_n_23 ,\tx_gen.tx_n_24 ,\tx_gen.tx_n_25 ,\tx_gen.tx_n_26 ,\tx_gen.tx_n_27 ,\tx_gen.tx_n_28 }),
        .channel_sync_int(channel_sync_int),
        .channel_sync_int_d1(channel_sync_int_d1),
        .enable_int_reg_0(enable_int),
        .enable_int_reg_1(clkgen_n_27),
        .\gen[0].data_int_reg[0][31]_0 (tx_sdata),
        .\gen[0].data_int_reg[0][8]_0 (\gen[0].data_int_reg[0][8] ),
        .in_data(tx_bclk),
        .rd_addr0(rd_addr0),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_aresetn_0(SR),
        .tx_stb(tx_stb));
  icyradio_axi_i2s_adi_0_1_fifo_synchronizer tx_sync
       (.Q(data_reset_vec[2]),
        .cdc_sync_stage2_tick(cdc_sync_stage2_tick),
        .cdc_sync_stage3_tick(cdc_sync_stage3_tick),
        .data_clk_i(data_clk_i),
        .in_data({tx_sdata,tx_lrclk,tx_bclk,tx_frame_sync,tx_channel_sync}),
        .\out_data_reg[4]_0 ({tx_sync_n_0,tx_sync_n_1,p_1_in,tx_sync_n_3,tx_sync_n_4}),
        .s_axi_aclk(s_axi_aclk),
        .tx_tick(tx_tick),
        .\wr_addr_reg[1]_0 (SR));
endmodule

(* ORIG_REF_NAME = "i2s_rx" *) 
module icyradio_axi_i2s_adi_0_1_i2s_rx
   (bclk_d1,
    sequencer_state_reg_0,
    \gen[0].data_latched_reg[0][23]_0 ,
    bclk_d1_reg_0,
    out_data,
    s_axi_aclk,
    rx_enable,
    s_axi_aresetn,
    E,
    rx_ack);
  output bclk_d1;
  output sequencer_state_reg_0;
  output [23:0]\gen[0].data_latched_reg[0][23]_0 ;
  input bclk_d1_reg_0;
  input [3:0]out_data;
  input s_axi_aclk;
  input rx_enable;
  input s_axi_aresetn;
  input [0:0]E;
  input rx_ack;

  wire [0:0]E;
  wire bclk_d1;
  wire bclk_d1_reg_0;
  wire enable_int;
  wire enable_int_i_1__0_n_0;
  wire \gen[0].data_int_reg_n_0_[0][0] ;
  wire \gen[0].data_int_reg_n_0_[0][10] ;
  wire \gen[0].data_int_reg_n_0_[0][11] ;
  wire \gen[0].data_int_reg_n_0_[0][12] ;
  wire \gen[0].data_int_reg_n_0_[0][13] ;
  wire \gen[0].data_int_reg_n_0_[0][14] ;
  wire \gen[0].data_int_reg_n_0_[0][15] ;
  wire \gen[0].data_int_reg_n_0_[0][16] ;
  wire \gen[0].data_int_reg_n_0_[0][17] ;
  wire \gen[0].data_int_reg_n_0_[0][18] ;
  wire \gen[0].data_int_reg_n_0_[0][19] ;
  wire \gen[0].data_int_reg_n_0_[0][1] ;
  wire \gen[0].data_int_reg_n_0_[0][20] ;
  wire \gen[0].data_int_reg_n_0_[0][21] ;
  wire \gen[0].data_int_reg_n_0_[0][22] ;
  wire \gen[0].data_int_reg_n_0_[0][23] ;
  wire \gen[0].data_int_reg_n_0_[0][24] ;
  wire \gen[0].data_int_reg_n_0_[0][25] ;
  wire \gen[0].data_int_reg_n_0_[0][26] ;
  wire \gen[0].data_int_reg_n_0_[0][27] ;
  wire \gen[0].data_int_reg_n_0_[0][28] ;
  wire \gen[0].data_int_reg_n_0_[0][29] ;
  wire \gen[0].data_int_reg_n_0_[0][2] ;
  wire \gen[0].data_int_reg_n_0_[0][30] ;
  wire \gen[0].data_int_reg_n_0_[0][31] ;
  wire \gen[0].data_int_reg_n_0_[0][3] ;
  wire \gen[0].data_int_reg_n_0_[0][4] ;
  wire \gen[0].data_int_reg_n_0_[0][5] ;
  wire \gen[0].data_int_reg_n_0_[0][6] ;
  wire \gen[0].data_int_reg_n_0_[0][7] ;
  wire \gen[0].data_int_reg_n_0_[0][8] ;
  wire \gen[0].data_int_reg_n_0_[0][9] ;
  wire \gen[0].data_latched[0][23]_i_1_n_0 ;
  wire [23:0]\gen[0].data_latched_reg[0][23]_0 ;
  wire [3:0]out_data;
  wire ovf_frame_cnt;
  wire \ovf_frame_cnt[0]_i_1_n_0 ;
  wire \ovf_frame_cnt[0]_i_2_n_0 ;
  wire p_1_in;
  wire rx_ack;
  wire rx_enable;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire sequencer_state0;
  wire sequencer_state_i_1_n_0;
  wire sequencer_state_reg_0;

  FDRE bclk_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(out_data[2]),
        .Q(bclk_d1),
        .R(bclk_d1_reg_0));
  LUT6 #(
    .INIT(64'hAEAA000000000000)) 
    enable_int_i_1__0
       (.I0(enable_int),
        .I1(out_data[1]),
        .I2(bclk_d1),
        .I3(out_data[2]),
        .I4(s_axi_aresetn),
        .I5(rx_enable),
        .O(enable_int_i_1__0_n_0));
  FDRE enable_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(enable_int_i_1__0_n_0),
        .Q(enable_int),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h7)) 
    \gen[0].data_int[0][31]_i_1 
       (.I0(rx_enable),
        .I1(s_axi_aresetn),
        .O(p_1_in));
  FDRE \gen[0].data_int_reg[0][0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(out_data[3]),
        .Q(\gen[0].data_int_reg_n_0_[0][0] ),
        .R(p_1_in));
  FDRE \gen[0].data_int_reg[0][10] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\gen[0].data_int_reg_n_0_[0][9] ),
        .Q(\gen[0].data_int_reg_n_0_[0][10] ),
        .R(p_1_in));
  FDRE \gen[0].data_int_reg[0][11] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\gen[0].data_int_reg_n_0_[0][10] ),
        .Q(\gen[0].data_int_reg_n_0_[0][11] ),
        .R(p_1_in));
  FDRE \gen[0].data_int_reg[0][12] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\gen[0].data_int_reg_n_0_[0][11] ),
        .Q(\gen[0].data_int_reg_n_0_[0][12] ),
        .R(p_1_in));
  FDRE \gen[0].data_int_reg[0][13] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\gen[0].data_int_reg_n_0_[0][12] ),
        .Q(\gen[0].data_int_reg_n_0_[0][13] ),
        .R(p_1_in));
  FDRE \gen[0].data_int_reg[0][14] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\gen[0].data_int_reg_n_0_[0][13] ),
        .Q(\gen[0].data_int_reg_n_0_[0][14] ),
        .R(p_1_in));
  FDRE \gen[0].data_int_reg[0][15] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\gen[0].data_int_reg_n_0_[0][14] ),
        .Q(\gen[0].data_int_reg_n_0_[0][15] ),
        .R(p_1_in));
  FDRE \gen[0].data_int_reg[0][16] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\gen[0].data_int_reg_n_0_[0][15] ),
        .Q(\gen[0].data_int_reg_n_0_[0][16] ),
        .R(p_1_in));
  FDRE \gen[0].data_int_reg[0][17] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\gen[0].data_int_reg_n_0_[0][16] ),
        .Q(\gen[0].data_int_reg_n_0_[0][17] ),
        .R(p_1_in));
  FDRE \gen[0].data_int_reg[0][18] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\gen[0].data_int_reg_n_0_[0][17] ),
        .Q(\gen[0].data_int_reg_n_0_[0][18] ),
        .R(p_1_in));
  FDRE \gen[0].data_int_reg[0][19] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\gen[0].data_int_reg_n_0_[0][18] ),
        .Q(\gen[0].data_int_reg_n_0_[0][19] ),
        .R(p_1_in));
  FDRE \gen[0].data_int_reg[0][1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\gen[0].data_int_reg_n_0_[0][0] ),
        .Q(\gen[0].data_int_reg_n_0_[0][1] ),
        .R(p_1_in));
  FDRE \gen[0].data_int_reg[0][20] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\gen[0].data_int_reg_n_0_[0][19] ),
        .Q(\gen[0].data_int_reg_n_0_[0][20] ),
        .R(p_1_in));
  FDRE \gen[0].data_int_reg[0][21] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\gen[0].data_int_reg_n_0_[0][20] ),
        .Q(\gen[0].data_int_reg_n_0_[0][21] ),
        .R(p_1_in));
  FDRE \gen[0].data_int_reg[0][22] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\gen[0].data_int_reg_n_0_[0][21] ),
        .Q(\gen[0].data_int_reg_n_0_[0][22] ),
        .R(p_1_in));
  FDRE \gen[0].data_int_reg[0][23] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\gen[0].data_int_reg_n_0_[0][22] ),
        .Q(\gen[0].data_int_reg_n_0_[0][23] ),
        .R(p_1_in));
  FDRE \gen[0].data_int_reg[0][24] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\gen[0].data_int_reg_n_0_[0][23] ),
        .Q(\gen[0].data_int_reg_n_0_[0][24] ),
        .R(p_1_in));
  FDRE \gen[0].data_int_reg[0][25] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\gen[0].data_int_reg_n_0_[0][24] ),
        .Q(\gen[0].data_int_reg_n_0_[0][25] ),
        .R(p_1_in));
  FDRE \gen[0].data_int_reg[0][26] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\gen[0].data_int_reg_n_0_[0][25] ),
        .Q(\gen[0].data_int_reg_n_0_[0][26] ),
        .R(p_1_in));
  FDRE \gen[0].data_int_reg[0][27] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\gen[0].data_int_reg_n_0_[0][26] ),
        .Q(\gen[0].data_int_reg_n_0_[0][27] ),
        .R(p_1_in));
  FDRE \gen[0].data_int_reg[0][28] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\gen[0].data_int_reg_n_0_[0][27] ),
        .Q(\gen[0].data_int_reg_n_0_[0][28] ),
        .R(p_1_in));
  FDRE \gen[0].data_int_reg[0][29] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\gen[0].data_int_reg_n_0_[0][28] ),
        .Q(\gen[0].data_int_reg_n_0_[0][29] ),
        .R(p_1_in));
  FDRE \gen[0].data_int_reg[0][2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\gen[0].data_int_reg_n_0_[0][1] ),
        .Q(\gen[0].data_int_reg_n_0_[0][2] ),
        .R(p_1_in));
  FDRE \gen[0].data_int_reg[0][30] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\gen[0].data_int_reg_n_0_[0][29] ),
        .Q(\gen[0].data_int_reg_n_0_[0][30] ),
        .R(p_1_in));
  FDRE \gen[0].data_int_reg[0][31] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\gen[0].data_int_reg_n_0_[0][30] ),
        .Q(\gen[0].data_int_reg_n_0_[0][31] ),
        .R(p_1_in));
  FDRE \gen[0].data_int_reg[0][3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\gen[0].data_int_reg_n_0_[0][2] ),
        .Q(\gen[0].data_int_reg_n_0_[0][3] ),
        .R(p_1_in));
  FDRE \gen[0].data_int_reg[0][4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\gen[0].data_int_reg_n_0_[0][3] ),
        .Q(\gen[0].data_int_reg_n_0_[0][4] ),
        .R(p_1_in));
  FDRE \gen[0].data_int_reg[0][5] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\gen[0].data_int_reg_n_0_[0][4] ),
        .Q(\gen[0].data_int_reg_n_0_[0][5] ),
        .R(p_1_in));
  FDRE \gen[0].data_int_reg[0][6] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\gen[0].data_int_reg_n_0_[0][5] ),
        .Q(\gen[0].data_int_reg_n_0_[0][6] ),
        .R(p_1_in));
  FDRE \gen[0].data_int_reg[0][7] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\gen[0].data_int_reg_n_0_[0][6] ),
        .Q(\gen[0].data_int_reg_n_0_[0][7] ),
        .R(p_1_in));
  FDRE \gen[0].data_int_reg[0][8] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\gen[0].data_int_reg_n_0_[0][7] ),
        .Q(\gen[0].data_int_reg_n_0_[0][8] ),
        .R(p_1_in));
  FDRE \gen[0].data_int_reg[0][9] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\gen[0].data_int_reg_n_0_[0][8] ),
        .Q(\gen[0].data_int_reg_n_0_[0][9] ),
        .R(p_1_in));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \gen[0].data_latched[0][23]_i_1 
       (.I0(sequencer_state_reg_0),
        .I1(out_data[0]),
        .I2(bclk_d1),
        .I3(out_data[2]),
        .I4(rx_enable),
        .I5(s_axi_aresetn),
        .O(\gen[0].data_latched[0][23]_i_1_n_0 ));
  FDRE \gen[0].data_latched_reg[0][0] 
       (.C(s_axi_aclk),
        .CE(\gen[0].data_latched[0][23]_i_1_n_0 ),
        .D(\gen[0].data_int_reg_n_0_[0][8] ),
        .Q(\gen[0].data_latched_reg[0][23]_0 [0]),
        .R(1'b0));
  FDRE \gen[0].data_latched_reg[0][10] 
       (.C(s_axi_aclk),
        .CE(\gen[0].data_latched[0][23]_i_1_n_0 ),
        .D(\gen[0].data_int_reg_n_0_[0][18] ),
        .Q(\gen[0].data_latched_reg[0][23]_0 [10]),
        .R(1'b0));
  FDRE \gen[0].data_latched_reg[0][11] 
       (.C(s_axi_aclk),
        .CE(\gen[0].data_latched[0][23]_i_1_n_0 ),
        .D(\gen[0].data_int_reg_n_0_[0][19] ),
        .Q(\gen[0].data_latched_reg[0][23]_0 [11]),
        .R(1'b0));
  FDRE \gen[0].data_latched_reg[0][12] 
       (.C(s_axi_aclk),
        .CE(\gen[0].data_latched[0][23]_i_1_n_0 ),
        .D(\gen[0].data_int_reg_n_0_[0][20] ),
        .Q(\gen[0].data_latched_reg[0][23]_0 [12]),
        .R(1'b0));
  FDRE \gen[0].data_latched_reg[0][13] 
       (.C(s_axi_aclk),
        .CE(\gen[0].data_latched[0][23]_i_1_n_0 ),
        .D(\gen[0].data_int_reg_n_0_[0][21] ),
        .Q(\gen[0].data_latched_reg[0][23]_0 [13]),
        .R(1'b0));
  FDRE \gen[0].data_latched_reg[0][14] 
       (.C(s_axi_aclk),
        .CE(\gen[0].data_latched[0][23]_i_1_n_0 ),
        .D(\gen[0].data_int_reg_n_0_[0][22] ),
        .Q(\gen[0].data_latched_reg[0][23]_0 [14]),
        .R(1'b0));
  FDRE \gen[0].data_latched_reg[0][15] 
       (.C(s_axi_aclk),
        .CE(\gen[0].data_latched[0][23]_i_1_n_0 ),
        .D(\gen[0].data_int_reg_n_0_[0][23] ),
        .Q(\gen[0].data_latched_reg[0][23]_0 [15]),
        .R(1'b0));
  FDRE \gen[0].data_latched_reg[0][16] 
       (.C(s_axi_aclk),
        .CE(\gen[0].data_latched[0][23]_i_1_n_0 ),
        .D(\gen[0].data_int_reg_n_0_[0][24] ),
        .Q(\gen[0].data_latched_reg[0][23]_0 [16]),
        .R(1'b0));
  FDRE \gen[0].data_latched_reg[0][17] 
       (.C(s_axi_aclk),
        .CE(\gen[0].data_latched[0][23]_i_1_n_0 ),
        .D(\gen[0].data_int_reg_n_0_[0][25] ),
        .Q(\gen[0].data_latched_reg[0][23]_0 [17]),
        .R(1'b0));
  FDRE \gen[0].data_latched_reg[0][18] 
       (.C(s_axi_aclk),
        .CE(\gen[0].data_latched[0][23]_i_1_n_0 ),
        .D(\gen[0].data_int_reg_n_0_[0][26] ),
        .Q(\gen[0].data_latched_reg[0][23]_0 [18]),
        .R(1'b0));
  FDRE \gen[0].data_latched_reg[0][19] 
       (.C(s_axi_aclk),
        .CE(\gen[0].data_latched[0][23]_i_1_n_0 ),
        .D(\gen[0].data_int_reg_n_0_[0][27] ),
        .Q(\gen[0].data_latched_reg[0][23]_0 [19]),
        .R(1'b0));
  FDRE \gen[0].data_latched_reg[0][1] 
       (.C(s_axi_aclk),
        .CE(\gen[0].data_latched[0][23]_i_1_n_0 ),
        .D(\gen[0].data_int_reg_n_0_[0][9] ),
        .Q(\gen[0].data_latched_reg[0][23]_0 [1]),
        .R(1'b0));
  FDRE \gen[0].data_latched_reg[0][20] 
       (.C(s_axi_aclk),
        .CE(\gen[0].data_latched[0][23]_i_1_n_0 ),
        .D(\gen[0].data_int_reg_n_0_[0][28] ),
        .Q(\gen[0].data_latched_reg[0][23]_0 [20]),
        .R(1'b0));
  FDRE \gen[0].data_latched_reg[0][21] 
       (.C(s_axi_aclk),
        .CE(\gen[0].data_latched[0][23]_i_1_n_0 ),
        .D(\gen[0].data_int_reg_n_0_[0][29] ),
        .Q(\gen[0].data_latched_reg[0][23]_0 [21]),
        .R(1'b0));
  FDRE \gen[0].data_latched_reg[0][22] 
       (.C(s_axi_aclk),
        .CE(\gen[0].data_latched[0][23]_i_1_n_0 ),
        .D(\gen[0].data_int_reg_n_0_[0][30] ),
        .Q(\gen[0].data_latched_reg[0][23]_0 [22]),
        .R(1'b0));
  FDRE \gen[0].data_latched_reg[0][23] 
       (.C(s_axi_aclk),
        .CE(\gen[0].data_latched[0][23]_i_1_n_0 ),
        .D(\gen[0].data_int_reg_n_0_[0][31] ),
        .Q(\gen[0].data_latched_reg[0][23]_0 [23]),
        .R(1'b0));
  FDRE \gen[0].data_latched_reg[0][2] 
       (.C(s_axi_aclk),
        .CE(\gen[0].data_latched[0][23]_i_1_n_0 ),
        .D(\gen[0].data_int_reg_n_0_[0][10] ),
        .Q(\gen[0].data_latched_reg[0][23]_0 [2]),
        .R(1'b0));
  FDRE \gen[0].data_latched_reg[0][3] 
       (.C(s_axi_aclk),
        .CE(\gen[0].data_latched[0][23]_i_1_n_0 ),
        .D(\gen[0].data_int_reg_n_0_[0][11] ),
        .Q(\gen[0].data_latched_reg[0][23]_0 [3]),
        .R(1'b0));
  FDRE \gen[0].data_latched_reg[0][4] 
       (.C(s_axi_aclk),
        .CE(\gen[0].data_latched[0][23]_i_1_n_0 ),
        .D(\gen[0].data_int_reg_n_0_[0][12] ),
        .Q(\gen[0].data_latched_reg[0][23]_0 [4]),
        .R(1'b0));
  FDRE \gen[0].data_latched_reg[0][5] 
       (.C(s_axi_aclk),
        .CE(\gen[0].data_latched[0][23]_i_1_n_0 ),
        .D(\gen[0].data_int_reg_n_0_[0][13] ),
        .Q(\gen[0].data_latched_reg[0][23]_0 [5]),
        .R(1'b0));
  FDRE \gen[0].data_latched_reg[0][6] 
       (.C(s_axi_aclk),
        .CE(\gen[0].data_latched[0][23]_i_1_n_0 ),
        .D(\gen[0].data_int_reg_n_0_[0][14] ),
        .Q(\gen[0].data_latched_reg[0][23]_0 [6]),
        .R(1'b0));
  FDRE \gen[0].data_latched_reg[0][7] 
       (.C(s_axi_aclk),
        .CE(\gen[0].data_latched[0][23]_i_1_n_0 ),
        .D(\gen[0].data_int_reg_n_0_[0][15] ),
        .Q(\gen[0].data_latched_reg[0][23]_0 [7]),
        .R(1'b0));
  FDRE \gen[0].data_latched_reg[0][8] 
       (.C(s_axi_aclk),
        .CE(\gen[0].data_latched[0][23]_i_1_n_0 ),
        .D(\gen[0].data_int_reg_n_0_[0][16] ),
        .Q(\gen[0].data_latched_reg[0][23]_0 [8]),
        .R(1'b0));
  FDRE \gen[0].data_latched_reg[0][9] 
       (.C(s_axi_aclk),
        .CE(\gen[0].data_latched[0][23]_i_1_n_0 ),
        .D(\gen[0].data_int_reg_n_0_[0][17] ),
        .Q(\gen[0].data_latched_reg[0][23]_0 [9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h2CCC000000000000)) 
    \ovf_frame_cnt[0]_i_1 
       (.I0(sequencer_state_reg_0),
        .I1(ovf_frame_cnt),
        .I2(out_data[0]),
        .I3(E),
        .I4(\ovf_frame_cnt[0]_i_2_n_0 ),
        .I5(enable_int),
        .O(\ovf_frame_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ovf_frame_cnt[0]_i_2 
       (.I0(s_axi_aresetn),
        .I1(rx_enable),
        .O(\ovf_frame_cnt[0]_i_2_n_0 ));
  FDRE \ovf_frame_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\ovf_frame_cnt[0]_i_1_n_0 ),
        .Q(ovf_frame_cnt),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h000000000040AAEA)) 
    sequencer_state_i_1
       (.I0(sequencer_state_reg_0),
        .I1(out_data[0]),
        .I2(E),
        .I3(ovf_frame_cnt),
        .I4(rx_ack),
        .I5(sequencer_state0),
        .O(sequencer_state_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    sequencer_state_i_2
       (.I0(enable_int),
        .I1(rx_enable),
        .I2(s_axi_aresetn),
        .O(sequencer_state0));
  FDRE sequencer_state_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sequencer_state_i_1_n_0),
        .Q(sequencer_state_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "i2s_tx" *) 
module icyradio_axi_i2s_adi_0_1_i2s_tx
   (s_axi_aresetn_0,
    channel_sync_int_d1,
    enable_int_reg_0,
    rd_addr0,
    E,
    \gen[0].data_int_reg[0][31]_0 ,
    Q,
    in_data,
    s_axi_aclk,
    channel_sync_int,
    enable_int_reg_1,
    tx_stb,
    s_axi_aresetn,
    \gen[0].data_int_reg[0][8]_0 ,
    D);
  output s_axi_aresetn_0;
  output channel_sync_int_d1;
  output enable_int_reg_0;
  output rd_addr0;
  output [0:0]E;
  output [0:0]\gen[0].data_int_reg[0][31]_0 ;
  output [22:0]Q;
  input [0:0]in_data;
  input s_axi_aclk;
  input channel_sync_int;
  input enable_int_reg_1;
  input tx_stb;
  input s_axi_aresetn;
  input \gen[0].data_int_reg[0][8]_0 ;
  input [23:0]D;

  wire [23:0]D;
  wire [0:0]E;
  wire [22:0]Q;
  wire bclk_d1;
  wire channel_sync_int;
  wire channel_sync_int_d1;
  wire enable_int_reg_0;
  wire enable_int_reg_1;
  wire [0:0]\gen[0].data_int_reg[0][31]_0 ;
  wire \gen[0].data_int_reg[0][8]_0 ;
  wire [0:0]in_data;
  wire p_0_in;
  wire rd_addr0;
  wire reset_int;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire s_axi_aresetn_0;
  wire tx_stb;

  LUT1 #(
    .INIT(2'h1)) 
    FSM_sequential_rd_state_i_1
       (.I0(s_axi_aresetn),
        .O(s_axi_aresetn_0));
  FDRE bclk_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(in_data),
        .Q(bclk_d1),
        .R(s_axi_aresetn_0));
  FDRE channel_sync_int_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(channel_sync_int),
        .Q(channel_sync_int_d1),
        .R(s_axi_aresetn_0));
  FDRE enable_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(enable_int_reg_1),
        .Q(enable_int_reg_0),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h80)) 
    \fifo_ctrl.free_cnt[3]_i_3 
       (.I0(channel_sync_int_d1),
        .I1(enable_int_reg_0),
        .I2(tx_stb),
        .O(rd_addr0));
  LUT2 #(
    .INIT(4'h8)) 
    fifo_reg_0_3_0_4_i_4
       (.I0(p_0_in),
        .I1(enable_int_reg_0),
        .O(\gen[0].data_int_reg[0][31]_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \gen[0].data_int[0][31]_i_1__0 
       (.I0(s_axi_aresetn),
        .I1(\gen[0].data_int_reg[0][8]_0 ),
        .O(reset_int));
  LUT2 #(
    .INIT(4'h2)) 
    \gen[0].data_int[0][31]_i_2 
       (.I0(bclk_d1),
        .I1(in_data),
        .O(E));
  FDRE \gen[0].data_int_reg[0][10] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[2]),
        .Q(Q[2]),
        .R(reset_int));
  FDRE \gen[0].data_int_reg[0][11] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[3]),
        .Q(Q[3]),
        .R(reset_int));
  FDRE \gen[0].data_int_reg[0][12] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[4]),
        .Q(Q[4]),
        .R(reset_int));
  FDRE \gen[0].data_int_reg[0][13] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[5]),
        .Q(Q[5]),
        .R(reset_int));
  FDRE \gen[0].data_int_reg[0][14] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[6]),
        .Q(Q[6]),
        .R(reset_int));
  FDRE \gen[0].data_int_reg[0][15] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[7]),
        .Q(Q[7]),
        .R(reset_int));
  FDRE \gen[0].data_int_reg[0][16] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[8]),
        .Q(Q[8]),
        .R(reset_int));
  FDRE \gen[0].data_int_reg[0][17] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[9]),
        .Q(Q[9]),
        .R(reset_int));
  FDRE \gen[0].data_int_reg[0][18] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[10]),
        .Q(Q[10]),
        .R(reset_int));
  FDRE \gen[0].data_int_reg[0][19] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[11]),
        .Q(Q[11]),
        .R(reset_int));
  FDRE \gen[0].data_int_reg[0][20] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[12]),
        .Q(Q[12]),
        .R(reset_int));
  FDRE \gen[0].data_int_reg[0][21] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[13]),
        .Q(Q[13]),
        .R(reset_int));
  FDRE \gen[0].data_int_reg[0][22] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[14]),
        .Q(Q[14]),
        .R(reset_int));
  FDRE \gen[0].data_int_reg[0][23] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[15]),
        .Q(Q[15]),
        .R(reset_int));
  FDRE \gen[0].data_int_reg[0][24] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[16]),
        .Q(Q[16]),
        .R(reset_int));
  FDRE \gen[0].data_int_reg[0][25] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[17]),
        .Q(Q[17]),
        .R(reset_int));
  FDRE \gen[0].data_int_reg[0][26] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[18]),
        .Q(Q[18]),
        .R(reset_int));
  FDRE \gen[0].data_int_reg[0][27] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[19]),
        .Q(Q[19]),
        .R(reset_int));
  FDRE \gen[0].data_int_reg[0][28] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[20]),
        .Q(Q[20]),
        .R(reset_int));
  FDRE \gen[0].data_int_reg[0][29] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[21]),
        .Q(Q[21]),
        .R(reset_int));
  FDRE \gen[0].data_int_reg[0][30] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[22]),
        .Q(Q[22]),
        .R(reset_int));
  FDRE \gen[0].data_int_reg[0][31] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[23]),
        .Q(p_0_in),
        .R(reset_int));
  FDRE \gen[0].data_int_reg[0][8] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[0]),
        .Q(Q[0]),
        .R(reset_int));
  FDRE \gen[0].data_int_reg[0][9] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[1]),
        .Q(Q[1]),
        .R(reset_int));
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
