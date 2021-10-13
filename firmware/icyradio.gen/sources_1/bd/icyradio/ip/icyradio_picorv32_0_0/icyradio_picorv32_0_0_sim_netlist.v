// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Wed Oct 13 13:50:28 2021
// Host        : jsilva-kde running 64-bit KDE neon User Edition 5.22
// Command     : write_verilog -force -mode funcsim
//               /media/joao/SSD/Development/icyradio/firmware/icyradio.gen/sources_1/bd/icyradio/ip/icyradio_picorv32_0_0/icyradio_picorv32_0_0_sim_netlist.v
// Design      : icyradio_picorv32_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "icyradio_picorv32_0_0,picorv32_axi,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "picorv32_axi,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module icyradio_picorv32_0_0
   (clk,
    resetn,
    trap,
    mem_axi_awvalid,
    mem_axi_awready,
    mem_axi_awaddr,
    mem_axi_awprot,
    mem_axi_wvalid,
    mem_axi_wready,
    mem_axi_wdata,
    mem_axi_wstrb,
    mem_axi_bvalid,
    mem_axi_bready,
    mem_axi_arvalid,
    mem_axi_arready,
    mem_axi_araddr,
    mem_axi_arprot,
    mem_axi_rvalid,
    mem_axi_rready,
    mem_axi_rdata,
    irq,
    eoi);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 M_AXI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_CLK, ASSOCIATED_BUSIF M_AXI, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN icyradio_axi_pcie_0_0_axi_aclk_out, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 M_AXI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;
  output trap;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWVALID" *) output mem_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWREADY" *) input mem_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWADDR" *) output [31:0]mem_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWPROT" *) output [2:0]mem_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WVALID" *) output mem_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WREADY" *) input mem_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WDATA" *) output [31:0]mem_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WSTRB" *) output [3:0]mem_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BVALID" *) input mem_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BREADY" *) output mem_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARVALID" *) output mem_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARREADY" *) input mem_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARADDR" *) output [31:0]mem_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARPROT" *) output [2:0]mem_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RVALID" *) input mem_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RREADY" *) output mem_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 125000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 0, HAS_RRESP 0, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN icyradio_axi_pcie_0_0_axi_aclk_out, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [31:0]mem_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 irq INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME irq, SENSITIVITY LEVEL_HIGH, PortWidth 32" *) input [31:0]irq;
  output [31:0]eoi;

  wire \<const0> ;
  wire clk;
  wire [31:0]eoi;
  wire [31:0]irq;
  wire [2:2]\^mem_axi_arprot ;
  wire mem_axi_arready;
  wire mem_axi_arvalid;
  wire [31:2]\^mem_axi_awaddr ;
  wire mem_axi_awready;
  wire mem_axi_awvalid;
  wire mem_axi_bready;
  wire mem_axi_bvalid;
  wire [31:0]mem_axi_rdata;
  wire mem_axi_rready;
  wire mem_axi_rvalid;
  wire [31:0]mem_axi_wdata;
  wire mem_axi_wready;
  wire [3:0]mem_axi_wstrb;
  wire mem_axi_wvalid;
  wire resetn;
  wire trap;

  assign mem_axi_araddr[31:2] = \^mem_axi_awaddr [31:2];
  assign mem_axi_araddr[1] = \<const0> ;
  assign mem_axi_araddr[0] = \<const0> ;
  assign mem_axi_arprot[2] = \^mem_axi_arprot [2];
  assign mem_axi_arprot[1] = \<const0> ;
  assign mem_axi_arprot[0] = \<const0> ;
  assign mem_axi_awaddr[31:2] = \^mem_axi_awaddr [31:2];
  assign mem_axi_awaddr[1] = \<const0> ;
  assign mem_axi_awaddr[0] = \<const0> ;
  assign mem_axi_awprot[2] = \<const0> ;
  assign mem_axi_awprot[1] = \<const0> ;
  assign mem_axi_awprot[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  icyradio_picorv32_0_0_picorv32_axi inst
       (.clk(clk),
        .eoi(eoi),
        .irq(irq),
        .mem_axi_arprot(\^mem_axi_arprot ),
        .mem_axi_arready(mem_axi_arready),
        .mem_axi_arvalid(mem_axi_arvalid),
        .mem_axi_awaddr(\^mem_axi_awaddr ),
        .mem_axi_awready(mem_axi_awready),
        .mem_axi_awvalid(mem_axi_awvalid),
        .mem_axi_bready(mem_axi_bready),
        .mem_axi_bvalid(mem_axi_bvalid),
        .mem_axi_rdata(mem_axi_rdata),
        .mem_axi_rready(mem_axi_rready),
        .mem_axi_rvalid(mem_axi_rvalid),
        .mem_axi_wdata(mem_axi_wdata),
        .mem_axi_wready(mem_axi_wready),
        .mem_axi_wvalid(mem_axi_wvalid),
        .mem_wstrb(mem_axi_wstrb),
        .resetn(resetn),
        .trap(trap));
endmodule

(* ORIG_REF_NAME = "picorv32" *) 
module icyradio_picorv32_0_0_picorv32
   (is_lui_auipc_jal_jalr_addi_add_sub0,
    instr_lui0,
    instr_retirq,
    instr_lui_reg_0,
    instr_sub,
    instr_add,
    instr_addi,
    instr_jalr,
    compressed_instr,
    is_lbu_lhu_lw,
    clear_prefetched_high_word,
    trap_reg_0,
    irq_active_reg_0,
    instr_lh,
    instr_lb,
    is_beq_bne_blt_bge_bltu_bgeu,
    latched_branch_reg_0,
    latched_store_reg_0,
    latched_compr_reg_0,
    mem_do_wdata,
    mem_do_rdata,
    latched_stalu_reg_0,
    latched_is_lb_reg_0,
    latched_is_lh_reg_0,
    latched_is_lu_reg_0,
    mem_do_prefetch_reg_0,
    mem_valid,
    prefetched_high_word_reg_0,
    mem_axi_arprot,
    mem_la_firstword1,
    \mem_axi_rdata[15] ,
    mem_axi_rdata_0_sp_1,
    mem_axi_rready,
    Q,
    \cpu_state_reg[6]_0 ,
    mem_axi_awvalid,
    mem_axi_wvalid,
    mem_axi_bready,
    mem_axi_arvalid,
    mem_valid_reg_0,
    \irq_state_reg[0]_0 ,
    irq_delay_reg_0,
    mem_axi_awaddr,
    mem_axi_wdata,
    eoi,
    \mem_state_reg[0]_0 ,
    resetn_0,
    \mem_state_reg[0]_1 ,
    mem_axi_rdata_1_sp_1,
    trap_reg_1,
    mem_do_rdata_reg_0,
    mem_done,
    is_beq_bne_blt_bge_bltu_bgeu_reg_0,
    decoder_trigger1,
    mem_axi_rdata_4_sp_1,
    mem_do_wdata_reg_0,
    instr_waitirq_reg_0,
    instr_jalr_reg_0,
    \mem_state_reg[0]_2 ,
    \cpu_state_reg[3]_0 ,
    latched_branch,
    latched_store,
    \mem_state_reg[0]_3 ,
    alu_out_0,
    \cpu_state_reg[3]_1 ,
    clk,
    is_beq_bne_blt_bge_bltu_bgeu_reg_1,
    latched_branch_reg_1,
    irq_active_reg_1,
    latched_store_reg_1,
    latched_compr_reg_1,
    mem_do_wdata_reg_1,
    mem_do_rdata_reg_1,
    latched_stalu_reg_1,
    latched_is_lb_reg_1,
    latched_is_lh_reg_1,
    latched_is_lu_reg_1,
    is_lui_auipc_jal_jalr_addi_add_sub_reg_0,
    prefetched_high_word_reg_1,
    mem_instr_reg_0,
    irq,
    ack_awvalid,
    mem_axi_wvalid_0,
    mem_axi_arvalid_0,
    resetn,
    mem_axi_rvalid,
    mem_axi_bvalid,
    xfer_done,
    mem_axi_rdata,
    mem_valid_reg_1);
  output is_lui_auipc_jal_jalr_addi_add_sub0;
  output instr_lui0;
  output instr_retirq;
  output instr_lui_reg_0;
  output instr_sub;
  output instr_add;
  output instr_addi;
  output instr_jalr;
  output compressed_instr;
  output is_lbu_lhu_lw;
  output clear_prefetched_high_word;
  output trap_reg_0;
  output irq_active_reg_0;
  output instr_lh;
  output instr_lb;
  output is_beq_bne_blt_bge_bltu_bgeu;
  output latched_branch_reg_0;
  output latched_store_reg_0;
  output latched_compr_reg_0;
  output mem_do_wdata;
  output mem_do_rdata;
  output latched_stalu_reg_0;
  output latched_is_lb_reg_0;
  output latched_is_lh_reg_0;
  output latched_is_lu_reg_0;
  output mem_do_prefetch_reg_0;
  output mem_valid;
  output prefetched_high_word_reg_0;
  output [0:0]mem_axi_arprot;
  output mem_la_firstword1;
  output [1:0]\mem_axi_rdata[15] ;
  output mem_axi_rdata_0_sp_1;
  output mem_axi_rready;
  output [3:0]Q;
  output [4:0]\cpu_state_reg[6]_0 ;
  output mem_axi_awvalid;
  output mem_axi_wvalid;
  output mem_axi_bready;
  output mem_axi_arvalid;
  output mem_valid_reg_0;
  output \irq_state_reg[0]_0 ;
  output irq_delay_reg_0;
  output [29:0]mem_axi_awaddr;
  output [31:0]mem_axi_wdata;
  output [31:0]eoi;
  output \mem_state_reg[0]_0 ;
  output resetn_0;
  output \mem_state_reg[0]_1 ;
  output mem_axi_rdata_1_sp_1;
  output trap_reg_1;
  output mem_do_rdata_reg_0;
  output mem_done;
  output is_beq_bne_blt_bge_bltu_bgeu_reg_0;
  output decoder_trigger1;
  output mem_axi_rdata_4_sp_1;
  output mem_do_wdata_reg_0;
  output instr_waitirq_reg_0;
  output instr_jalr_reg_0;
  output \mem_state_reg[0]_2 ;
  output \cpu_state_reg[3]_0 ;
  output latched_branch;
  output latched_store;
  output \mem_state_reg[0]_3 ;
  output alu_out_0;
  output \cpu_state_reg[3]_1 ;
  input clk;
  input is_beq_bne_blt_bge_bltu_bgeu_reg_1;
  input latched_branch_reg_1;
  input irq_active_reg_1;
  input latched_store_reg_1;
  input latched_compr_reg_1;
  input mem_do_wdata_reg_1;
  input mem_do_rdata_reg_1;
  input latched_stalu_reg_1;
  input latched_is_lb_reg_1;
  input latched_is_lh_reg_1;
  input latched_is_lu_reg_1;
  input is_lui_auipc_jal_jalr_addi_add_sub_reg_0;
  input prefetched_high_word_reg_1;
  input mem_instr_reg_0;
  input [31:0]irq;
  input ack_awvalid;
  input mem_axi_wvalid_0;
  input mem_axi_arvalid_0;
  input resetn;
  input mem_axi_rvalid;
  input mem_axi_bvalid;
  input xfer_done;
  input [31:0]mem_axi_rdata;
  input mem_valid_reg_1;

  wire [3:0]Q;
  wire ack_awvalid;
  wire alu_eq;
  wire alu_lts;
  wire alu_ltu;
  wire alu_out_0;
  wire [31:0]alu_out_q;
  wire \alu_out_q[0]_i_10_n_0 ;
  wire \alu_out_q[0]_i_11_n_0 ;
  wire \alu_out_q[0]_i_15_n_0 ;
  wire \alu_out_q[0]_i_16_n_0 ;
  wire \alu_out_q[0]_i_17_n_0 ;
  wire \alu_out_q[0]_i_19_n_0 ;
  wire \alu_out_q[0]_i_1_n_0 ;
  wire \alu_out_q[0]_i_20_n_0 ;
  wire \alu_out_q[0]_i_21_n_0 ;
  wire \alu_out_q[0]_i_22_n_0 ;
  wire \alu_out_q[0]_i_23_n_0 ;
  wire \alu_out_q[0]_i_24_n_0 ;
  wire \alu_out_q[0]_i_25_n_0 ;
  wire \alu_out_q[0]_i_26_n_0 ;
  wire \alu_out_q[0]_i_28_n_0 ;
  wire \alu_out_q[0]_i_29_n_0 ;
  wire \alu_out_q[0]_i_2_n_0 ;
  wire \alu_out_q[0]_i_30_n_0 ;
  wire \alu_out_q[0]_i_31_n_0 ;
  wire \alu_out_q[0]_i_32_n_0 ;
  wire \alu_out_q[0]_i_33_n_0 ;
  wire \alu_out_q[0]_i_34_n_0 ;
  wire \alu_out_q[0]_i_35_n_0 ;
  wire \alu_out_q[0]_i_37_n_0 ;
  wire \alu_out_q[0]_i_38_n_0 ;
  wire \alu_out_q[0]_i_39_n_0 ;
  wire \alu_out_q[0]_i_40_n_0 ;
  wire \alu_out_q[0]_i_42_n_0 ;
  wire \alu_out_q[0]_i_43_n_0 ;
  wire \alu_out_q[0]_i_44_n_0 ;
  wire \alu_out_q[0]_i_45_n_0 ;
  wire \alu_out_q[0]_i_46_n_0 ;
  wire \alu_out_q[0]_i_47_n_0 ;
  wire \alu_out_q[0]_i_48_n_0 ;
  wire \alu_out_q[0]_i_49_n_0 ;
  wire \alu_out_q[0]_i_51_n_0 ;
  wire \alu_out_q[0]_i_52_n_0 ;
  wire \alu_out_q[0]_i_53_n_0 ;
  wire \alu_out_q[0]_i_54_n_0 ;
  wire \alu_out_q[0]_i_55_n_0 ;
  wire \alu_out_q[0]_i_56_n_0 ;
  wire \alu_out_q[0]_i_57_n_0 ;
  wire \alu_out_q[0]_i_58_n_0 ;
  wire \alu_out_q[0]_i_59_n_0 ;
  wire \alu_out_q[0]_i_5_n_0 ;
  wire \alu_out_q[0]_i_60_n_0 ;
  wire \alu_out_q[0]_i_61_n_0 ;
  wire \alu_out_q[0]_i_62_n_0 ;
  wire \alu_out_q[0]_i_64_n_0 ;
  wire \alu_out_q[0]_i_65_n_0 ;
  wire \alu_out_q[0]_i_66_n_0 ;
  wire \alu_out_q[0]_i_67_n_0 ;
  wire \alu_out_q[0]_i_68_n_0 ;
  wire \alu_out_q[0]_i_69_n_0 ;
  wire \alu_out_q[0]_i_70_n_0 ;
  wire \alu_out_q[0]_i_71_n_0 ;
  wire \alu_out_q[0]_i_73_n_0 ;
  wire \alu_out_q[0]_i_74_n_0 ;
  wire \alu_out_q[0]_i_75_n_0 ;
  wire \alu_out_q[0]_i_76_n_0 ;
  wire \alu_out_q[0]_i_77_n_0 ;
  wire \alu_out_q[0]_i_78_n_0 ;
  wire \alu_out_q[0]_i_79_n_0 ;
  wire \alu_out_q[0]_i_7_n_0 ;
  wire \alu_out_q[0]_i_80_n_0 ;
  wire \alu_out_q[0]_i_81_n_0 ;
  wire \alu_out_q[0]_i_82_n_0 ;
  wire \alu_out_q[0]_i_83_n_0 ;
  wire \alu_out_q[0]_i_84_n_0 ;
  wire \alu_out_q[0]_i_85_n_0 ;
  wire \alu_out_q[0]_i_86_n_0 ;
  wire \alu_out_q[0]_i_87_n_0 ;
  wire \alu_out_q[0]_i_88_n_0 ;
  wire \alu_out_q[0]_i_89_n_0 ;
  wire \alu_out_q[0]_i_8_n_0 ;
  wire \alu_out_q[0]_i_90_n_0 ;
  wire \alu_out_q[0]_i_91_n_0 ;
  wire \alu_out_q[0]_i_92_n_0 ;
  wire \alu_out_q[0]_i_93_n_0 ;
  wire \alu_out_q[0]_i_94_n_0 ;
  wire \alu_out_q[0]_i_95_n_0 ;
  wire \alu_out_q[0]_i_96_n_0 ;
  wire \alu_out_q[0]_i_9_n_0 ;
  wire \alu_out_q[10]_i_1_n_0 ;
  wire \alu_out_q[10]_i_2_n_0 ;
  wire \alu_out_q[11]_i_1_n_0 ;
  wire \alu_out_q[11]_i_2_n_0 ;
  wire \alu_out_q[11]_i_4_n_0 ;
  wire \alu_out_q[11]_i_5_n_0 ;
  wire \alu_out_q[11]_i_6_n_0 ;
  wire \alu_out_q[11]_i_7_n_0 ;
  wire \alu_out_q[12]_i_1_n_0 ;
  wire \alu_out_q[12]_i_2_n_0 ;
  wire \alu_out_q[13]_i_1_n_0 ;
  wire \alu_out_q[13]_i_2_n_0 ;
  wire \alu_out_q[14]_i_1_n_0 ;
  wire \alu_out_q[14]_i_2_n_0 ;
  wire \alu_out_q[15]_i_1_n_0 ;
  wire \alu_out_q[15]_i_2_n_0 ;
  wire \alu_out_q[15]_i_4_n_0 ;
  wire \alu_out_q[15]_i_5_n_0 ;
  wire \alu_out_q[15]_i_6_n_0 ;
  wire \alu_out_q[15]_i_7_n_0 ;
  wire \alu_out_q[16]_i_1_n_0 ;
  wire \alu_out_q[16]_i_2_n_0 ;
  wire \alu_out_q[17]_i_1_n_0 ;
  wire \alu_out_q[17]_i_2_n_0 ;
  wire \alu_out_q[18]_i_1_n_0 ;
  wire \alu_out_q[18]_i_2_n_0 ;
  wire \alu_out_q[19]_i_1_n_0 ;
  wire \alu_out_q[19]_i_2_n_0 ;
  wire \alu_out_q[19]_i_4_n_0 ;
  wire \alu_out_q[19]_i_5_n_0 ;
  wire \alu_out_q[19]_i_6_n_0 ;
  wire \alu_out_q[19]_i_7_n_0 ;
  wire \alu_out_q[1]_i_1_n_0 ;
  wire \alu_out_q[1]_i_2_n_0 ;
  wire \alu_out_q[20]_i_1_n_0 ;
  wire \alu_out_q[20]_i_2_n_0 ;
  wire \alu_out_q[21]_i_1_n_0 ;
  wire \alu_out_q[21]_i_2_n_0 ;
  wire \alu_out_q[22]_i_1_n_0 ;
  wire \alu_out_q[22]_i_2_n_0 ;
  wire \alu_out_q[23]_i_1_n_0 ;
  wire \alu_out_q[23]_i_2_n_0 ;
  wire \alu_out_q[23]_i_4_n_0 ;
  wire \alu_out_q[23]_i_5_n_0 ;
  wire \alu_out_q[23]_i_6_n_0 ;
  wire \alu_out_q[23]_i_7_n_0 ;
  wire \alu_out_q[24]_i_1_n_0 ;
  wire \alu_out_q[24]_i_2_n_0 ;
  wire \alu_out_q[25]_i_1_n_0 ;
  wire \alu_out_q[25]_i_2_n_0 ;
  wire \alu_out_q[26]_i_1_n_0 ;
  wire \alu_out_q[26]_i_2_n_0 ;
  wire \alu_out_q[27]_i_1_n_0 ;
  wire \alu_out_q[27]_i_2_n_0 ;
  wire \alu_out_q[27]_i_4_n_0 ;
  wire \alu_out_q[27]_i_5_n_0 ;
  wire \alu_out_q[27]_i_6_n_0 ;
  wire \alu_out_q[27]_i_7_n_0 ;
  wire \alu_out_q[28]_i_1_n_0 ;
  wire \alu_out_q[28]_i_2_n_0 ;
  wire \alu_out_q[29]_i_1_n_0 ;
  wire \alu_out_q[29]_i_2_n_0 ;
  wire \alu_out_q[2]_i_1_n_0 ;
  wire \alu_out_q[2]_i_2_n_0 ;
  wire \alu_out_q[30]_i_1_n_0 ;
  wire \alu_out_q[30]_i_2_n_0 ;
  wire \alu_out_q[31]_i_10_n_0 ;
  wire \alu_out_q[31]_i_1_n_0 ;
  wire \alu_out_q[31]_i_2_n_0 ;
  wire \alu_out_q[31]_i_3_n_0 ;
  wire \alu_out_q[31]_i_4_n_0 ;
  wire \alu_out_q[31]_i_5_n_0 ;
  wire \alu_out_q[31]_i_7_n_0 ;
  wire \alu_out_q[31]_i_8_n_0 ;
  wire \alu_out_q[31]_i_9_n_0 ;
  wire \alu_out_q[3]_i_1_n_0 ;
  wire \alu_out_q[3]_i_2_n_0 ;
  wire \alu_out_q[4]_i_1_n_0 ;
  wire \alu_out_q[4]_i_2_n_0 ;
  wire \alu_out_q[5]_i_1_n_0 ;
  wire \alu_out_q[5]_i_2_n_0 ;
  wire \alu_out_q[6]_i_1_n_0 ;
  wire \alu_out_q[6]_i_2_n_0 ;
  wire \alu_out_q[7]_i_1_n_0 ;
  wire \alu_out_q[7]_i_2_n_0 ;
  wire \alu_out_q[7]_i_4_n_0 ;
  wire \alu_out_q[7]_i_5_n_0 ;
  wire \alu_out_q[7]_i_6_n_0 ;
  wire \alu_out_q[7]_i_7_n_0 ;
  wire \alu_out_q[8]_i_1_n_0 ;
  wire \alu_out_q[8]_i_2_n_0 ;
  wire \alu_out_q[9]_i_1_n_0 ;
  wire \alu_out_q[9]_i_2_n_0 ;
  wire \alu_out_q_reg[0]_i_12_n_1 ;
  wire \alu_out_q_reg[0]_i_12_n_2 ;
  wire \alu_out_q_reg[0]_i_12_n_3 ;
  wire \alu_out_q_reg[0]_i_13_n_1 ;
  wire \alu_out_q_reg[0]_i_13_n_2 ;
  wire \alu_out_q_reg[0]_i_13_n_3 ;
  wire \alu_out_q_reg[0]_i_14_n_0 ;
  wire \alu_out_q_reg[0]_i_14_n_1 ;
  wire \alu_out_q_reg[0]_i_14_n_2 ;
  wire \alu_out_q_reg[0]_i_14_n_3 ;
  wire \alu_out_q_reg[0]_i_18_n_0 ;
  wire \alu_out_q_reg[0]_i_18_n_1 ;
  wire \alu_out_q_reg[0]_i_18_n_2 ;
  wire \alu_out_q_reg[0]_i_18_n_3 ;
  wire \alu_out_q_reg[0]_i_27_n_0 ;
  wire \alu_out_q_reg[0]_i_27_n_1 ;
  wire \alu_out_q_reg[0]_i_27_n_2 ;
  wire \alu_out_q_reg[0]_i_27_n_3 ;
  wire \alu_out_q_reg[0]_i_36_n_0 ;
  wire \alu_out_q_reg[0]_i_36_n_1 ;
  wire \alu_out_q_reg[0]_i_36_n_2 ;
  wire \alu_out_q_reg[0]_i_36_n_3 ;
  wire \alu_out_q_reg[0]_i_41_n_0 ;
  wire \alu_out_q_reg[0]_i_41_n_1 ;
  wire \alu_out_q_reg[0]_i_41_n_2 ;
  wire \alu_out_q_reg[0]_i_41_n_3 ;
  wire \alu_out_q_reg[0]_i_4_n_0 ;
  wire \alu_out_q_reg[0]_i_4_n_1 ;
  wire \alu_out_q_reg[0]_i_4_n_2 ;
  wire \alu_out_q_reg[0]_i_4_n_3 ;
  wire \alu_out_q_reg[0]_i_4_n_4 ;
  wire \alu_out_q_reg[0]_i_4_n_5 ;
  wire \alu_out_q_reg[0]_i_4_n_6 ;
  wire \alu_out_q_reg[0]_i_4_n_7 ;
  wire \alu_out_q_reg[0]_i_50_n_0 ;
  wire \alu_out_q_reg[0]_i_50_n_1 ;
  wire \alu_out_q_reg[0]_i_50_n_2 ;
  wire \alu_out_q_reg[0]_i_50_n_3 ;
  wire \alu_out_q_reg[0]_i_63_n_0 ;
  wire \alu_out_q_reg[0]_i_63_n_1 ;
  wire \alu_out_q_reg[0]_i_63_n_2 ;
  wire \alu_out_q_reg[0]_i_63_n_3 ;
  wire \alu_out_q_reg[0]_i_6_n_2 ;
  wire \alu_out_q_reg[0]_i_6_n_3 ;
  wire \alu_out_q_reg[0]_i_72_n_0 ;
  wire \alu_out_q_reg[0]_i_72_n_1 ;
  wire \alu_out_q_reg[0]_i_72_n_2 ;
  wire \alu_out_q_reg[0]_i_72_n_3 ;
  wire \alu_out_q_reg[11]_i_3_n_0 ;
  wire \alu_out_q_reg[11]_i_3_n_1 ;
  wire \alu_out_q_reg[11]_i_3_n_2 ;
  wire \alu_out_q_reg[11]_i_3_n_3 ;
  wire \alu_out_q_reg[11]_i_3_n_4 ;
  wire \alu_out_q_reg[11]_i_3_n_5 ;
  wire \alu_out_q_reg[11]_i_3_n_6 ;
  wire \alu_out_q_reg[11]_i_3_n_7 ;
  wire \alu_out_q_reg[15]_i_3_n_0 ;
  wire \alu_out_q_reg[15]_i_3_n_1 ;
  wire \alu_out_q_reg[15]_i_3_n_2 ;
  wire \alu_out_q_reg[15]_i_3_n_3 ;
  wire \alu_out_q_reg[15]_i_3_n_4 ;
  wire \alu_out_q_reg[15]_i_3_n_5 ;
  wire \alu_out_q_reg[15]_i_3_n_6 ;
  wire \alu_out_q_reg[15]_i_3_n_7 ;
  wire \alu_out_q_reg[19]_i_3_n_0 ;
  wire \alu_out_q_reg[19]_i_3_n_1 ;
  wire \alu_out_q_reg[19]_i_3_n_2 ;
  wire \alu_out_q_reg[19]_i_3_n_3 ;
  wire \alu_out_q_reg[19]_i_3_n_4 ;
  wire \alu_out_q_reg[19]_i_3_n_5 ;
  wire \alu_out_q_reg[19]_i_3_n_6 ;
  wire \alu_out_q_reg[19]_i_3_n_7 ;
  wire \alu_out_q_reg[23]_i_3_n_0 ;
  wire \alu_out_q_reg[23]_i_3_n_1 ;
  wire \alu_out_q_reg[23]_i_3_n_2 ;
  wire \alu_out_q_reg[23]_i_3_n_3 ;
  wire \alu_out_q_reg[23]_i_3_n_4 ;
  wire \alu_out_q_reg[23]_i_3_n_5 ;
  wire \alu_out_q_reg[23]_i_3_n_6 ;
  wire \alu_out_q_reg[23]_i_3_n_7 ;
  wire \alu_out_q_reg[27]_i_3_n_0 ;
  wire \alu_out_q_reg[27]_i_3_n_1 ;
  wire \alu_out_q_reg[27]_i_3_n_2 ;
  wire \alu_out_q_reg[27]_i_3_n_3 ;
  wire \alu_out_q_reg[27]_i_3_n_4 ;
  wire \alu_out_q_reg[27]_i_3_n_5 ;
  wire \alu_out_q_reg[27]_i_3_n_6 ;
  wire \alu_out_q_reg[27]_i_3_n_7 ;
  wire \alu_out_q_reg[31]_i_6_n_1 ;
  wire \alu_out_q_reg[31]_i_6_n_2 ;
  wire \alu_out_q_reg[31]_i_6_n_3 ;
  wire \alu_out_q_reg[31]_i_6_n_4 ;
  wire \alu_out_q_reg[31]_i_6_n_5 ;
  wire \alu_out_q_reg[31]_i_6_n_6 ;
  wire \alu_out_q_reg[31]_i_6_n_7 ;
  wire \alu_out_q_reg[7]_i_3_n_0 ;
  wire \alu_out_q_reg[7]_i_3_n_1 ;
  wire \alu_out_q_reg[7]_i_3_n_2 ;
  wire \alu_out_q_reg[7]_i_3_n_3 ;
  wire \alu_out_q_reg[7]_i_3_n_4 ;
  wire \alu_out_q_reg[7]_i_3_n_5 ;
  wire \alu_out_q_reg[7]_i_3_n_6 ;
  wire \alu_out_q_reg[7]_i_3_n_7 ;
  wire clear_prefetched_high_word;
  wire clear_prefetched_high_word_q;
  wire clk;
  wire compressed_instr;
  wire compressed_instr_i_1_n_0;
  wire compressed_instr_i_2_n_0;
  wire compressed_instr_i_3_n_0;
  wire \count_cycle[0]_i_2_n_0 ;
  wire [63:0]count_cycle_reg;
  wire \count_cycle_reg[0]_i_1_n_0 ;
  wire \count_cycle_reg[0]_i_1_n_1 ;
  wire \count_cycle_reg[0]_i_1_n_2 ;
  wire \count_cycle_reg[0]_i_1_n_3 ;
  wire \count_cycle_reg[0]_i_1_n_4 ;
  wire \count_cycle_reg[0]_i_1_n_5 ;
  wire \count_cycle_reg[0]_i_1_n_6 ;
  wire \count_cycle_reg[0]_i_1_n_7 ;
  wire \count_cycle_reg[12]_i_1_n_0 ;
  wire \count_cycle_reg[12]_i_1_n_1 ;
  wire \count_cycle_reg[12]_i_1_n_2 ;
  wire \count_cycle_reg[12]_i_1_n_3 ;
  wire \count_cycle_reg[12]_i_1_n_4 ;
  wire \count_cycle_reg[12]_i_1_n_5 ;
  wire \count_cycle_reg[12]_i_1_n_6 ;
  wire \count_cycle_reg[12]_i_1_n_7 ;
  wire \count_cycle_reg[16]_i_1_n_0 ;
  wire \count_cycle_reg[16]_i_1_n_1 ;
  wire \count_cycle_reg[16]_i_1_n_2 ;
  wire \count_cycle_reg[16]_i_1_n_3 ;
  wire \count_cycle_reg[16]_i_1_n_4 ;
  wire \count_cycle_reg[16]_i_1_n_5 ;
  wire \count_cycle_reg[16]_i_1_n_6 ;
  wire \count_cycle_reg[16]_i_1_n_7 ;
  wire \count_cycle_reg[20]_i_1_n_0 ;
  wire \count_cycle_reg[20]_i_1_n_1 ;
  wire \count_cycle_reg[20]_i_1_n_2 ;
  wire \count_cycle_reg[20]_i_1_n_3 ;
  wire \count_cycle_reg[20]_i_1_n_4 ;
  wire \count_cycle_reg[20]_i_1_n_5 ;
  wire \count_cycle_reg[20]_i_1_n_6 ;
  wire \count_cycle_reg[20]_i_1_n_7 ;
  wire \count_cycle_reg[24]_i_1_n_0 ;
  wire \count_cycle_reg[24]_i_1_n_1 ;
  wire \count_cycle_reg[24]_i_1_n_2 ;
  wire \count_cycle_reg[24]_i_1_n_3 ;
  wire \count_cycle_reg[24]_i_1_n_4 ;
  wire \count_cycle_reg[24]_i_1_n_5 ;
  wire \count_cycle_reg[24]_i_1_n_6 ;
  wire \count_cycle_reg[24]_i_1_n_7 ;
  wire \count_cycle_reg[28]_i_1_n_0 ;
  wire \count_cycle_reg[28]_i_1_n_1 ;
  wire \count_cycle_reg[28]_i_1_n_2 ;
  wire \count_cycle_reg[28]_i_1_n_3 ;
  wire \count_cycle_reg[28]_i_1_n_4 ;
  wire \count_cycle_reg[28]_i_1_n_5 ;
  wire \count_cycle_reg[28]_i_1_n_6 ;
  wire \count_cycle_reg[28]_i_1_n_7 ;
  wire \count_cycle_reg[32]_i_1_n_0 ;
  wire \count_cycle_reg[32]_i_1_n_1 ;
  wire \count_cycle_reg[32]_i_1_n_2 ;
  wire \count_cycle_reg[32]_i_1_n_3 ;
  wire \count_cycle_reg[32]_i_1_n_4 ;
  wire \count_cycle_reg[32]_i_1_n_5 ;
  wire \count_cycle_reg[32]_i_1_n_6 ;
  wire \count_cycle_reg[32]_i_1_n_7 ;
  wire \count_cycle_reg[36]_i_1_n_0 ;
  wire \count_cycle_reg[36]_i_1_n_1 ;
  wire \count_cycle_reg[36]_i_1_n_2 ;
  wire \count_cycle_reg[36]_i_1_n_3 ;
  wire \count_cycle_reg[36]_i_1_n_4 ;
  wire \count_cycle_reg[36]_i_1_n_5 ;
  wire \count_cycle_reg[36]_i_1_n_6 ;
  wire \count_cycle_reg[36]_i_1_n_7 ;
  wire \count_cycle_reg[40]_i_1_n_0 ;
  wire \count_cycle_reg[40]_i_1_n_1 ;
  wire \count_cycle_reg[40]_i_1_n_2 ;
  wire \count_cycle_reg[40]_i_1_n_3 ;
  wire \count_cycle_reg[40]_i_1_n_4 ;
  wire \count_cycle_reg[40]_i_1_n_5 ;
  wire \count_cycle_reg[40]_i_1_n_6 ;
  wire \count_cycle_reg[40]_i_1_n_7 ;
  wire \count_cycle_reg[44]_i_1_n_0 ;
  wire \count_cycle_reg[44]_i_1_n_1 ;
  wire \count_cycle_reg[44]_i_1_n_2 ;
  wire \count_cycle_reg[44]_i_1_n_3 ;
  wire \count_cycle_reg[44]_i_1_n_4 ;
  wire \count_cycle_reg[44]_i_1_n_5 ;
  wire \count_cycle_reg[44]_i_1_n_6 ;
  wire \count_cycle_reg[44]_i_1_n_7 ;
  wire \count_cycle_reg[48]_i_1_n_0 ;
  wire \count_cycle_reg[48]_i_1_n_1 ;
  wire \count_cycle_reg[48]_i_1_n_2 ;
  wire \count_cycle_reg[48]_i_1_n_3 ;
  wire \count_cycle_reg[48]_i_1_n_4 ;
  wire \count_cycle_reg[48]_i_1_n_5 ;
  wire \count_cycle_reg[48]_i_1_n_6 ;
  wire \count_cycle_reg[48]_i_1_n_7 ;
  wire \count_cycle_reg[4]_i_1_n_0 ;
  wire \count_cycle_reg[4]_i_1_n_1 ;
  wire \count_cycle_reg[4]_i_1_n_2 ;
  wire \count_cycle_reg[4]_i_1_n_3 ;
  wire \count_cycle_reg[4]_i_1_n_4 ;
  wire \count_cycle_reg[4]_i_1_n_5 ;
  wire \count_cycle_reg[4]_i_1_n_6 ;
  wire \count_cycle_reg[4]_i_1_n_7 ;
  wire \count_cycle_reg[52]_i_1_n_0 ;
  wire \count_cycle_reg[52]_i_1_n_1 ;
  wire \count_cycle_reg[52]_i_1_n_2 ;
  wire \count_cycle_reg[52]_i_1_n_3 ;
  wire \count_cycle_reg[52]_i_1_n_4 ;
  wire \count_cycle_reg[52]_i_1_n_5 ;
  wire \count_cycle_reg[52]_i_1_n_6 ;
  wire \count_cycle_reg[52]_i_1_n_7 ;
  wire \count_cycle_reg[56]_i_1_n_0 ;
  wire \count_cycle_reg[56]_i_1_n_1 ;
  wire \count_cycle_reg[56]_i_1_n_2 ;
  wire \count_cycle_reg[56]_i_1_n_3 ;
  wire \count_cycle_reg[56]_i_1_n_4 ;
  wire \count_cycle_reg[56]_i_1_n_5 ;
  wire \count_cycle_reg[56]_i_1_n_6 ;
  wire \count_cycle_reg[56]_i_1_n_7 ;
  wire \count_cycle_reg[60]_i_1_n_1 ;
  wire \count_cycle_reg[60]_i_1_n_2 ;
  wire \count_cycle_reg[60]_i_1_n_3 ;
  wire \count_cycle_reg[60]_i_1_n_4 ;
  wire \count_cycle_reg[60]_i_1_n_5 ;
  wire \count_cycle_reg[60]_i_1_n_6 ;
  wire \count_cycle_reg[60]_i_1_n_7 ;
  wire \count_cycle_reg[8]_i_1_n_0 ;
  wire \count_cycle_reg[8]_i_1_n_1 ;
  wire \count_cycle_reg[8]_i_1_n_2 ;
  wire \count_cycle_reg[8]_i_1_n_3 ;
  wire \count_cycle_reg[8]_i_1_n_4 ;
  wire \count_cycle_reg[8]_i_1_n_5 ;
  wire \count_cycle_reg[8]_i_1_n_6 ;
  wire \count_cycle_reg[8]_i_1_n_7 ;
  wire \count_instr[0]_i_3_n_0 ;
  wire [63:0]count_instr_reg;
  wire \count_instr_reg[0]_i_2_n_0 ;
  wire \count_instr_reg[0]_i_2_n_1 ;
  wire \count_instr_reg[0]_i_2_n_2 ;
  wire \count_instr_reg[0]_i_2_n_3 ;
  wire \count_instr_reg[0]_i_2_n_4 ;
  wire \count_instr_reg[0]_i_2_n_5 ;
  wire \count_instr_reg[0]_i_2_n_6 ;
  wire \count_instr_reg[0]_i_2_n_7 ;
  wire \count_instr_reg[12]_i_1_n_0 ;
  wire \count_instr_reg[12]_i_1_n_1 ;
  wire \count_instr_reg[12]_i_1_n_2 ;
  wire \count_instr_reg[12]_i_1_n_3 ;
  wire \count_instr_reg[12]_i_1_n_4 ;
  wire \count_instr_reg[12]_i_1_n_5 ;
  wire \count_instr_reg[12]_i_1_n_6 ;
  wire \count_instr_reg[12]_i_1_n_7 ;
  wire \count_instr_reg[16]_i_1_n_0 ;
  wire \count_instr_reg[16]_i_1_n_1 ;
  wire \count_instr_reg[16]_i_1_n_2 ;
  wire \count_instr_reg[16]_i_1_n_3 ;
  wire \count_instr_reg[16]_i_1_n_4 ;
  wire \count_instr_reg[16]_i_1_n_5 ;
  wire \count_instr_reg[16]_i_1_n_6 ;
  wire \count_instr_reg[16]_i_1_n_7 ;
  wire \count_instr_reg[20]_i_1_n_0 ;
  wire \count_instr_reg[20]_i_1_n_1 ;
  wire \count_instr_reg[20]_i_1_n_2 ;
  wire \count_instr_reg[20]_i_1_n_3 ;
  wire \count_instr_reg[20]_i_1_n_4 ;
  wire \count_instr_reg[20]_i_1_n_5 ;
  wire \count_instr_reg[20]_i_1_n_6 ;
  wire \count_instr_reg[20]_i_1_n_7 ;
  wire \count_instr_reg[24]_i_1_n_0 ;
  wire \count_instr_reg[24]_i_1_n_1 ;
  wire \count_instr_reg[24]_i_1_n_2 ;
  wire \count_instr_reg[24]_i_1_n_3 ;
  wire \count_instr_reg[24]_i_1_n_4 ;
  wire \count_instr_reg[24]_i_1_n_5 ;
  wire \count_instr_reg[24]_i_1_n_6 ;
  wire \count_instr_reg[24]_i_1_n_7 ;
  wire \count_instr_reg[28]_i_1_n_0 ;
  wire \count_instr_reg[28]_i_1_n_1 ;
  wire \count_instr_reg[28]_i_1_n_2 ;
  wire \count_instr_reg[28]_i_1_n_3 ;
  wire \count_instr_reg[28]_i_1_n_4 ;
  wire \count_instr_reg[28]_i_1_n_5 ;
  wire \count_instr_reg[28]_i_1_n_6 ;
  wire \count_instr_reg[28]_i_1_n_7 ;
  wire \count_instr_reg[32]_i_1_n_0 ;
  wire \count_instr_reg[32]_i_1_n_1 ;
  wire \count_instr_reg[32]_i_1_n_2 ;
  wire \count_instr_reg[32]_i_1_n_3 ;
  wire \count_instr_reg[32]_i_1_n_4 ;
  wire \count_instr_reg[32]_i_1_n_5 ;
  wire \count_instr_reg[32]_i_1_n_6 ;
  wire \count_instr_reg[32]_i_1_n_7 ;
  wire \count_instr_reg[36]_i_1_n_0 ;
  wire \count_instr_reg[36]_i_1_n_1 ;
  wire \count_instr_reg[36]_i_1_n_2 ;
  wire \count_instr_reg[36]_i_1_n_3 ;
  wire \count_instr_reg[36]_i_1_n_4 ;
  wire \count_instr_reg[36]_i_1_n_5 ;
  wire \count_instr_reg[36]_i_1_n_6 ;
  wire \count_instr_reg[36]_i_1_n_7 ;
  wire \count_instr_reg[40]_i_1_n_0 ;
  wire \count_instr_reg[40]_i_1_n_1 ;
  wire \count_instr_reg[40]_i_1_n_2 ;
  wire \count_instr_reg[40]_i_1_n_3 ;
  wire \count_instr_reg[40]_i_1_n_4 ;
  wire \count_instr_reg[40]_i_1_n_5 ;
  wire \count_instr_reg[40]_i_1_n_6 ;
  wire \count_instr_reg[40]_i_1_n_7 ;
  wire \count_instr_reg[44]_i_1_n_0 ;
  wire \count_instr_reg[44]_i_1_n_1 ;
  wire \count_instr_reg[44]_i_1_n_2 ;
  wire \count_instr_reg[44]_i_1_n_3 ;
  wire \count_instr_reg[44]_i_1_n_4 ;
  wire \count_instr_reg[44]_i_1_n_5 ;
  wire \count_instr_reg[44]_i_1_n_6 ;
  wire \count_instr_reg[44]_i_1_n_7 ;
  wire \count_instr_reg[48]_i_1_n_0 ;
  wire \count_instr_reg[48]_i_1_n_1 ;
  wire \count_instr_reg[48]_i_1_n_2 ;
  wire \count_instr_reg[48]_i_1_n_3 ;
  wire \count_instr_reg[48]_i_1_n_4 ;
  wire \count_instr_reg[48]_i_1_n_5 ;
  wire \count_instr_reg[48]_i_1_n_6 ;
  wire \count_instr_reg[48]_i_1_n_7 ;
  wire \count_instr_reg[4]_i_1_n_0 ;
  wire \count_instr_reg[4]_i_1_n_1 ;
  wire \count_instr_reg[4]_i_1_n_2 ;
  wire \count_instr_reg[4]_i_1_n_3 ;
  wire \count_instr_reg[4]_i_1_n_4 ;
  wire \count_instr_reg[4]_i_1_n_5 ;
  wire \count_instr_reg[4]_i_1_n_6 ;
  wire \count_instr_reg[4]_i_1_n_7 ;
  wire \count_instr_reg[52]_i_1_n_0 ;
  wire \count_instr_reg[52]_i_1_n_1 ;
  wire \count_instr_reg[52]_i_1_n_2 ;
  wire \count_instr_reg[52]_i_1_n_3 ;
  wire \count_instr_reg[52]_i_1_n_4 ;
  wire \count_instr_reg[52]_i_1_n_5 ;
  wire \count_instr_reg[52]_i_1_n_6 ;
  wire \count_instr_reg[52]_i_1_n_7 ;
  wire \count_instr_reg[56]_i_1_n_0 ;
  wire \count_instr_reg[56]_i_1_n_1 ;
  wire \count_instr_reg[56]_i_1_n_2 ;
  wire \count_instr_reg[56]_i_1_n_3 ;
  wire \count_instr_reg[56]_i_1_n_4 ;
  wire \count_instr_reg[56]_i_1_n_5 ;
  wire \count_instr_reg[56]_i_1_n_6 ;
  wire \count_instr_reg[56]_i_1_n_7 ;
  wire \count_instr_reg[60]_i_1_n_1 ;
  wire \count_instr_reg[60]_i_1_n_2 ;
  wire \count_instr_reg[60]_i_1_n_3 ;
  wire \count_instr_reg[60]_i_1_n_4 ;
  wire \count_instr_reg[60]_i_1_n_5 ;
  wire \count_instr_reg[60]_i_1_n_6 ;
  wire \count_instr_reg[60]_i_1_n_7 ;
  wire \count_instr_reg[8]_i_1_n_0 ;
  wire \count_instr_reg[8]_i_1_n_1 ;
  wire \count_instr_reg[8]_i_1_n_2 ;
  wire \count_instr_reg[8]_i_1_n_3 ;
  wire \count_instr_reg[8]_i_1_n_4 ;
  wire \count_instr_reg[8]_i_1_n_5 ;
  wire \count_instr_reg[8]_i_1_n_6 ;
  wire \count_instr_reg[8]_i_1_n_7 ;
  wire cpu_state;
  wire [7:0]cpu_state1_in;
  wire \cpu_state[0]_i_2_n_0 ;
  wire \cpu_state[1]_i_2_n_0 ;
  wire \cpu_state[1]_i_3_n_0 ;
  wire \cpu_state[2]_i_2_n_0 ;
  wire \cpu_state[2]_i_3_n_0 ;
  wire \cpu_state[3]_i_2_n_0 ;
  wire \cpu_state[3]_i_3_n_0 ;
  wire \cpu_state[6]_i_2_n_0 ;
  wire \cpu_state[6]_i_3_n_0 ;
  wire \cpu_state[6]_i_5_n_0 ;
  wire \cpu_state[7]_i_10_n_0 ;
  wire \cpu_state[7]_i_11_n_0 ;
  wire \cpu_state[7]_i_12_n_0 ;
  wire \cpu_state[7]_i_13_n_0 ;
  wire \cpu_state[7]_i_14_n_0 ;
  wire \cpu_state[7]_i_15_n_0 ;
  wire \cpu_state[7]_i_16_n_0 ;
  wire \cpu_state[7]_i_3_n_0 ;
  wire \cpu_state[7]_i_5_n_0 ;
  wire \cpu_state[7]_i_6_n_0 ;
  wire \cpu_state[7]_i_7_n_0 ;
  wire \cpu_state[7]_i_8_n_0 ;
  wire \cpu_state[7]_i_9_n_0 ;
  wire \cpu_state_reg[3]_0 ;
  wire \cpu_state_reg[3]_1 ;
  wire [4:0]\cpu_state_reg[6]_0 ;
  wire \cpu_state_reg_n_0_[2] ;
  wire \cpu_state_reg_n_0_[7] ;
  wire cpuregs_reg_r1_0_63_0_2_i_10_n_0;
  wire cpuregs_reg_r1_0_63_0_2_i_11_n_0;
  wire cpuregs_reg_r1_0_63_0_2_i_12_n_0;
  wire cpuregs_reg_r1_0_63_0_2_i_12_n_1;
  wire cpuregs_reg_r1_0_63_0_2_i_12_n_2;
  wire cpuregs_reg_r1_0_63_0_2_i_12_n_3;
  wire cpuregs_reg_r1_0_63_0_2_i_12_n_4;
  wire cpuregs_reg_r1_0_63_0_2_i_12_n_5;
  wire cpuregs_reg_r1_0_63_0_2_i_12_n_6;
  wire cpuregs_reg_r1_0_63_0_2_i_13_n_0;
  wire cpuregs_reg_r1_0_63_0_2_i_14_n_0;
  wire cpuregs_reg_r1_0_63_0_2_i_1_n_0;
  wire cpuregs_reg_r1_0_63_0_2_i_2_n_0;
  wire cpuregs_reg_r1_0_63_0_2_i_3_n_0;
  wire cpuregs_reg_r1_0_63_0_2_i_5_n_0;
  wire cpuregs_reg_r1_0_63_0_2_i_6_n_0;
  wire cpuregs_reg_r1_0_63_0_2_i_7_n_0;
  wire cpuregs_reg_r1_0_63_0_2_i_8_n_0;
  wire cpuregs_reg_r1_0_63_0_2_i_9_n_0;
  wire cpuregs_reg_r1_0_63_12_14_i_1_n_0;
  wire cpuregs_reg_r1_0_63_12_14_i_2_n_0;
  wire cpuregs_reg_r1_0_63_12_14_i_3_n_0;
  wire cpuregs_reg_r1_0_63_12_14_i_4_n_0;
  wire cpuregs_reg_r1_0_63_12_14_i_5_n_0;
  wire cpuregs_reg_r1_0_63_12_14_i_6_n_0;
  wire cpuregs_reg_r1_0_63_12_14_i_7_n_0;
  wire cpuregs_reg_r1_0_63_12_14_i_7_n_1;
  wire cpuregs_reg_r1_0_63_12_14_i_7_n_2;
  wire cpuregs_reg_r1_0_63_12_14_i_7_n_3;
  wire cpuregs_reg_r1_0_63_12_14_i_7_n_4;
  wire cpuregs_reg_r1_0_63_12_14_i_7_n_5;
  wire cpuregs_reg_r1_0_63_12_14_i_7_n_6;
  wire cpuregs_reg_r1_0_63_12_14_i_7_n_7;
  wire cpuregs_reg_r1_0_63_15_17_i_1_n_0;
  wire cpuregs_reg_r1_0_63_15_17_i_2_n_0;
  wire cpuregs_reg_r1_0_63_15_17_i_3_n_0;
  wire cpuregs_reg_r1_0_63_15_17_i_4_n_0;
  wire cpuregs_reg_r1_0_63_15_17_i_5_n_0;
  wire cpuregs_reg_r1_0_63_15_17_i_6_n_0;
  wire cpuregs_reg_r1_0_63_15_17_i_7_n_0;
  wire cpuregs_reg_r1_0_63_15_17_i_7_n_1;
  wire cpuregs_reg_r1_0_63_15_17_i_7_n_2;
  wire cpuregs_reg_r1_0_63_15_17_i_7_n_3;
  wire cpuregs_reg_r1_0_63_15_17_i_7_n_4;
  wire cpuregs_reg_r1_0_63_15_17_i_7_n_5;
  wire cpuregs_reg_r1_0_63_15_17_i_7_n_6;
  wire cpuregs_reg_r1_0_63_15_17_i_7_n_7;
  wire cpuregs_reg_r1_0_63_18_20_i_1_n_0;
  wire cpuregs_reg_r1_0_63_18_20_i_2_n_0;
  wire cpuregs_reg_r1_0_63_18_20_i_3_n_0;
  wire cpuregs_reg_r1_0_63_18_20_i_4_n_0;
  wire cpuregs_reg_r1_0_63_18_20_i_5_n_0;
  wire cpuregs_reg_r1_0_63_18_20_i_6_n_0;
  wire cpuregs_reg_r1_0_63_18_20_i_7_n_0;
  wire cpuregs_reg_r1_0_63_18_20_i_7_n_1;
  wire cpuregs_reg_r1_0_63_18_20_i_7_n_2;
  wire cpuregs_reg_r1_0_63_18_20_i_7_n_3;
  wire cpuregs_reg_r1_0_63_18_20_i_7_n_4;
  wire cpuregs_reg_r1_0_63_18_20_i_7_n_5;
  wire cpuregs_reg_r1_0_63_18_20_i_7_n_6;
  wire cpuregs_reg_r1_0_63_18_20_i_7_n_7;
  wire cpuregs_reg_r1_0_63_21_23_i_1_n_0;
  wire cpuregs_reg_r1_0_63_21_23_i_2_n_0;
  wire cpuregs_reg_r1_0_63_21_23_i_3_n_0;
  wire cpuregs_reg_r1_0_63_21_23_i_4_n_0;
  wire cpuregs_reg_r1_0_63_21_23_i_5_n_0;
  wire cpuregs_reg_r1_0_63_21_23_i_6_n_0;
  wire cpuregs_reg_r1_0_63_24_26_i_1_n_0;
  wire cpuregs_reg_r1_0_63_24_26_i_2_n_0;
  wire cpuregs_reg_r1_0_63_24_26_i_3_n_0;
  wire cpuregs_reg_r1_0_63_24_26_i_4_n_0;
  wire cpuregs_reg_r1_0_63_24_26_i_5_n_0;
  wire cpuregs_reg_r1_0_63_24_26_i_6_n_0;
  wire cpuregs_reg_r1_0_63_24_26_i_7_n_0;
  wire cpuregs_reg_r1_0_63_24_26_i_7_n_1;
  wire cpuregs_reg_r1_0_63_24_26_i_7_n_2;
  wire cpuregs_reg_r1_0_63_24_26_i_7_n_3;
  wire cpuregs_reg_r1_0_63_24_26_i_7_n_4;
  wire cpuregs_reg_r1_0_63_24_26_i_7_n_5;
  wire cpuregs_reg_r1_0_63_24_26_i_7_n_6;
  wire cpuregs_reg_r1_0_63_24_26_i_7_n_7;
  wire cpuregs_reg_r1_0_63_27_29_i_1_n_0;
  wire cpuregs_reg_r1_0_63_27_29_i_2_n_0;
  wire cpuregs_reg_r1_0_63_27_29_i_3_n_0;
  wire cpuregs_reg_r1_0_63_27_29_i_4_n_0;
  wire cpuregs_reg_r1_0_63_27_29_i_5_n_0;
  wire cpuregs_reg_r1_0_63_27_29_i_6_n_0;
  wire cpuregs_reg_r1_0_63_27_29_i_7_n_1;
  wire cpuregs_reg_r1_0_63_27_29_i_7_n_2;
  wire cpuregs_reg_r1_0_63_27_29_i_7_n_3;
  wire cpuregs_reg_r1_0_63_27_29_i_7_n_4;
  wire cpuregs_reg_r1_0_63_27_29_i_7_n_5;
  wire cpuregs_reg_r1_0_63_27_29_i_7_n_6;
  wire cpuregs_reg_r1_0_63_27_29_i_7_n_7;
  wire cpuregs_reg_r1_0_63_30_31_i_1_n_0;
  wire cpuregs_reg_r1_0_63_30_31_i_2_n_0;
  wire cpuregs_reg_r1_0_63_30_31_i_3_n_0;
  wire cpuregs_reg_r1_0_63_30_31_i_4_n_0;
  wire cpuregs_reg_r1_0_63_3_5_i_1_n_0;
  wire cpuregs_reg_r1_0_63_3_5_i_2_n_0;
  wire cpuregs_reg_r1_0_63_3_5_i_3_n_0;
  wire cpuregs_reg_r1_0_63_3_5_i_4_n_0;
  wire cpuregs_reg_r1_0_63_3_5_i_5_n_0;
  wire cpuregs_reg_r1_0_63_3_5_i_6_n_0;
  wire cpuregs_reg_r1_0_63_3_5_i_7_n_0;
  wire cpuregs_reg_r1_0_63_3_5_i_7_n_1;
  wire cpuregs_reg_r1_0_63_3_5_i_7_n_2;
  wire cpuregs_reg_r1_0_63_3_5_i_7_n_3;
  wire cpuregs_reg_r1_0_63_3_5_i_7_n_4;
  wire cpuregs_reg_r1_0_63_3_5_i_7_n_5;
  wire cpuregs_reg_r1_0_63_3_5_i_7_n_6;
  wire cpuregs_reg_r1_0_63_3_5_i_7_n_7;
  wire cpuregs_reg_r1_0_63_6_8_i_1_n_0;
  wire cpuregs_reg_r1_0_63_6_8_i_2_n_0;
  wire cpuregs_reg_r1_0_63_6_8_i_3_n_0;
  wire cpuregs_reg_r1_0_63_6_8_i_4_n_0;
  wire cpuregs_reg_r1_0_63_6_8_i_5_n_0;
  wire cpuregs_reg_r1_0_63_6_8_i_6_n_0;
  wire cpuregs_reg_r1_0_63_6_8_i_7_n_0;
  wire cpuregs_reg_r1_0_63_6_8_i_7_n_1;
  wire cpuregs_reg_r1_0_63_6_8_i_7_n_2;
  wire cpuregs_reg_r1_0_63_6_8_i_7_n_3;
  wire cpuregs_reg_r1_0_63_6_8_i_7_n_4;
  wire cpuregs_reg_r1_0_63_6_8_i_7_n_5;
  wire cpuregs_reg_r1_0_63_6_8_i_7_n_6;
  wire cpuregs_reg_r1_0_63_6_8_i_7_n_7;
  wire cpuregs_reg_r1_0_63_9_11_i_1_n_0;
  wire cpuregs_reg_r1_0_63_9_11_i_2_n_0;
  wire cpuregs_reg_r1_0_63_9_11_i_3_n_0;
  wire cpuregs_reg_r1_0_63_9_11_i_4_n_0;
  wire cpuregs_reg_r1_0_63_9_11_i_5_n_0;
  wire cpuregs_reg_r1_0_63_9_11_i_6_n_0;
  wire [31:1]current_pc;
  wire [31:1]data0;
  wire data10;
  wire [31:0]decoded_imm;
  wire \decoded_imm[0]_i_1_n_0 ;
  wire \decoded_imm[10]_i_1_n_0 ;
  wire \decoded_imm[10]_i_2_n_0 ;
  wire \decoded_imm[11]_i_1_n_0 ;
  wire \decoded_imm[11]_i_2_n_0 ;
  wire \decoded_imm[12]_i_1_n_0 ;
  wire \decoded_imm[13]_i_1_n_0 ;
  wire \decoded_imm[14]_i_1_n_0 ;
  wire \decoded_imm[15]_i_1_n_0 ;
  wire \decoded_imm[16]_i_1_n_0 ;
  wire \decoded_imm[17]_i_1_n_0 ;
  wire \decoded_imm[18]_i_1_n_0 ;
  wire \decoded_imm[19]_i_1_n_0 ;
  wire \decoded_imm[1]_i_1_n_0 ;
  wire \decoded_imm[20]_i_1_n_0 ;
  wire \decoded_imm[21]_i_1_n_0 ;
  wire \decoded_imm[22]_i_1_n_0 ;
  wire \decoded_imm[23]_i_1_n_0 ;
  wire \decoded_imm[24]_i_1_n_0 ;
  wire \decoded_imm[25]_i_1_n_0 ;
  wire \decoded_imm[26]_i_1_n_0 ;
  wire \decoded_imm[27]_i_1_n_0 ;
  wire \decoded_imm[28]_i_1_n_0 ;
  wire \decoded_imm[29]_i_1_n_0 ;
  wire \decoded_imm[2]_i_1_n_0 ;
  wire \decoded_imm[30]_i_1_n_0 ;
  wire \decoded_imm[30]_i_2_n_0 ;
  wire \decoded_imm[31]_i_1_n_0 ;
  wire \decoded_imm[31]_i_2_n_0 ;
  wire \decoded_imm[3]_i_1_n_0 ;
  wire \decoded_imm[4]_i_1_n_0 ;
  wire \decoded_imm[4]_i_2_n_0 ;
  wire \decoded_imm[4]_i_3_n_0 ;
  wire \decoded_imm[5]_i_1_n_0 ;
  wire \decoded_imm[6]_i_1_n_0 ;
  wire \decoded_imm[7]_i_1_n_0 ;
  wire \decoded_imm[8]_i_1_n_0 ;
  wire \decoded_imm[9]_i_1_n_0 ;
  wire [20:1]decoded_imm_uj;
  wire \decoded_imm_uj[10]_i_1_n_0 ;
  wire \decoded_imm_uj[11]_i_1_n_0 ;
  wire \decoded_imm_uj[12]_i_2_n_0 ;
  wire \decoded_imm_uj[13]_i_1_n_0 ;
  wire \decoded_imm_uj[14]_i_1_n_0 ;
  wire \decoded_imm_uj[15]_i_1_n_0 ;
  wire \decoded_imm_uj[16]_i_1_n_0 ;
  wire \decoded_imm_uj[17]_i_1_n_0 ;
  wire \decoded_imm_uj[18]_i_1_n_0 ;
  wire \decoded_imm_uj[19]_i_1_n_0 ;
  wire \decoded_imm_uj[1]_i_1_n_0 ;
  wire \decoded_imm_uj[20]_i_1_n_0 ;
  wire \decoded_imm_uj[20]_i_2_n_0 ;
  wire \decoded_imm_uj[20]_i_3_n_0 ;
  wire \decoded_imm_uj[2]_i_1_n_0 ;
  wire \decoded_imm_uj[3]_i_1_n_0 ;
  wire \decoded_imm_uj[4]_i_1_n_0 ;
  wire \decoded_imm_uj[4]_i_2_n_0 ;
  wire \decoded_imm_uj[4]_i_3_n_0 ;
  wire \decoded_imm_uj[5]_i_1_n_0 ;
  wire \decoded_imm_uj[6]_i_1_n_0 ;
  wire \decoded_imm_uj[7]_i_1_n_0 ;
  wire \decoded_imm_uj[8]_i_1_n_0 ;
  wire \decoded_imm_uj[9]_i_1_n_0 ;
  wire \decoded_rd[0]_i_10_n_0 ;
  wire \decoded_rd[0]_i_1_n_0 ;
  wire \decoded_rd[0]_i_2_n_0 ;
  wire \decoded_rd[0]_i_3_n_0 ;
  wire \decoded_rd[0]_i_4_n_0 ;
  wire \decoded_rd[0]_i_5_n_0 ;
  wire \decoded_rd[0]_i_6_n_0 ;
  wire \decoded_rd[0]_i_7_n_0 ;
  wire \decoded_rd[0]_i_8_n_0 ;
  wire \decoded_rd[0]_i_9_n_0 ;
  wire \decoded_rd[1]_i_1_n_0 ;
  wire \decoded_rd[1]_i_2_n_0 ;
  wire \decoded_rd[2]_i_1_n_0 ;
  wire \decoded_rd[2]_i_2_n_0 ;
  wire \decoded_rd[2]_i_3_n_0 ;
  wire \decoded_rd[3]_i_1_n_0 ;
  wire \decoded_rd[3]_i_2_n_0 ;
  wire \decoded_rd[3]_i_3_n_0 ;
  wire \decoded_rd[3]_i_4_n_0 ;
  wire \decoded_rd[4]_i_1_n_0 ;
  wire \decoded_rd[4]_i_2_n_0 ;
  wire \decoded_rd[4]_i_3_n_0 ;
  wire \decoded_rd[4]_i_4_n_0 ;
  wire \decoded_rd[4]_i_5_n_0 ;
  wire \decoded_rd[4]_i_6_n_0 ;
  wire \decoded_rd[4]_i_7_n_0 ;
  wire \decoded_rd[4]_i_8_n_0 ;
  wire \decoded_rd_reg_n_0_[0] ;
  wire \decoded_rd_reg_n_0_[1] ;
  wire \decoded_rd_reg_n_0_[2] ;
  wire \decoded_rd_reg_n_0_[3] ;
  wire \decoded_rd_reg_n_0_[4] ;
  wire \decoded_rs1[0]_i_1_n_0 ;
  wire \decoded_rs1[0]_i_2_n_0 ;
  wire \decoded_rs1[0]_i_3_n_0 ;
  wire \decoded_rs1[0]_i_4_n_0 ;
  wire \decoded_rs1[0]_i_5_n_0 ;
  wire \decoded_rs1[0]_i_6_n_0 ;
  wire \decoded_rs1[0]_i_7_n_0 ;
  wire \decoded_rs1[0]_i_8_n_0 ;
  wire \decoded_rs1[1]_i_10_n_0 ;
  wire \decoded_rs1[1]_i_1_n_0 ;
  wire \decoded_rs1[1]_i_2_n_0 ;
  wire \decoded_rs1[1]_i_3_n_0 ;
  wire \decoded_rs1[1]_i_4_n_0 ;
  wire \decoded_rs1[1]_i_5_n_0 ;
  wire \decoded_rs1[1]_i_6_n_0 ;
  wire \decoded_rs1[1]_i_7_n_0 ;
  wire \decoded_rs1[1]_i_8_n_0 ;
  wire \decoded_rs1[1]_i_9_n_0 ;
  wire \decoded_rs1[2]_i_1_n_0 ;
  wire \decoded_rs1[2]_i_2_n_0 ;
  wire \decoded_rs1[2]_i_3_n_0 ;
  wire \decoded_rs1[3]_i_1_n_0 ;
  wire \decoded_rs1[3]_i_2_n_0 ;
  wire \decoded_rs1[3]_i_3_n_0 ;
  wire \decoded_rs1[4]_i_1_n_0 ;
  wire \decoded_rs1[4]_i_2_n_0 ;
  wire \decoded_rs1[5]_i_1_n_0 ;
  wire \decoded_rs1_reg_n_0_[0] ;
  wire \decoded_rs1_reg_n_0_[1] ;
  wire \decoded_rs1_reg_n_0_[2] ;
  wire \decoded_rs1_reg_n_0_[3] ;
  wire \decoded_rs1_reg_n_0_[4] ;
  wire \decoded_rs1_reg_n_0_[5] ;
  wire \decoded_rs2[0]_i_1_n_0 ;
  wire \decoded_rs2[0]_i_2_n_0 ;
  wire \decoded_rs2[0]_i_3_n_0 ;
  wire \decoded_rs2[1]_i_1_n_0 ;
  wire \decoded_rs2[2]_i_1_n_0 ;
  wire \decoded_rs2[3]_i_1_n_0 ;
  wire \decoded_rs2[3]_i_2_n_0 ;
  wire \decoded_rs2[3]_i_3_n_0 ;
  wire \decoded_rs2[3]_i_4_n_0 ;
  wire \decoded_rs2[3]_i_5_n_0 ;
  wire \decoded_rs2[3]_i_6_n_0 ;
  wire \decoded_rs2[3]_i_7_n_0 ;
  wire \decoded_rs2[4]_i_1_n_0 ;
  wire \decoded_rs2[4]_i_2_n_0 ;
  wire \decoded_rs2[4]_i_3_n_0 ;
  wire \decoded_rs2[5]_i_1_n_0 ;
  wire [5:5]decoded_rs2__1;
  wire \decoded_rs2_reg_n_0_[0] ;
  wire \decoded_rs2_reg_n_0_[1] ;
  wire \decoded_rs2_reg_n_0_[2] ;
  wire \decoded_rs2_reg_n_0_[3] ;
  wire \decoded_rs2_reg_n_0_[4] ;
  wire decoder_pseudo_trigger;
  wire decoder_pseudo_trigger_i_2_n_0;
  wire decoder_pseudo_trigger_reg_n_0;
  wire decoder_trigger1;
  wire decoder_trigger_i_1_n_0;
  wire decoder_trigger_i_3_n_0;
  wire decoder_trigger_reg_n_0;
  wire do_waitirq;
  wire do_waitirq1;
  wire do_waitirq130_out;
  wire [31:2]do_waitirq4;
  wire do_waitirq_i_3_n_0;
  wire do_waitirq_i_4_n_0;
  wire do_waitirq_i_5_n_0;
  wire do_waitirq_i_6_n_0;
  wire do_waitirq_i_7_n_0;
  wire do_waitirq_i_8_n_0;
  wire do_waitirq_i_9_n_0;
  wire do_waitirq_reg_n_0;
  wire [31:0]eoi;
  wire \eoi[0]_i_1_n_0 ;
  wire \eoi[10]_i_1_n_0 ;
  wire \eoi[11]_i_1_n_0 ;
  wire \eoi[12]_i_1_n_0 ;
  wire \eoi[13]_i_1_n_0 ;
  wire \eoi[14]_i_1_n_0 ;
  wire \eoi[15]_i_1_n_0 ;
  wire \eoi[16]_i_1_n_0 ;
  wire \eoi[17]_i_1_n_0 ;
  wire \eoi[18]_i_1_n_0 ;
  wire \eoi[19]_i_1_n_0 ;
  wire \eoi[1]_i_1_n_0 ;
  wire \eoi[20]_i_1_n_0 ;
  wire \eoi[21]_i_1_n_0 ;
  wire \eoi[22]_i_1_n_0 ;
  wire \eoi[23]_i_1_n_0 ;
  wire \eoi[24]_i_1_n_0 ;
  wire \eoi[25]_i_1_n_0 ;
  wire \eoi[26]_i_1_n_0 ;
  wire \eoi[27]_i_1_n_0 ;
  wire \eoi[28]_i_1_n_0 ;
  wire \eoi[29]_i_1_n_0 ;
  wire \eoi[2]_i_1_n_0 ;
  wire \eoi[30]_i_1_n_0 ;
  wire \eoi[31]_i_1_n_0 ;
  wire \eoi[31]_i_2_n_0 ;
  wire \eoi[3]_i_1_n_0 ;
  wire \eoi[4]_i_1_n_0 ;
  wire \eoi[5]_i_1_n_0 ;
  wire \eoi[6]_i_1_n_0 ;
  wire \eoi[7]_i_1_n_0 ;
  wire \eoi[8]_i_1_n_0 ;
  wire \eoi[9]_i_1_n_0 ;
  wire instr_add;
  wire instr_add0;
  wire instr_addi;
  wire instr_addi0;
  wire instr_and;
  wire instr_and0;
  wire instr_andi;
  wire instr_andi0;
  wire instr_auipc;
  wire instr_auipc_i_1_n_0;
  wire instr_auipc_i_2_n_0;
  wire instr_beq;
  wire instr_beq0;
  wire instr_bge;
  wire instr_bge0;
  wire instr_bgeu;
  wire instr_bgeu0;
  wire instr_blt;
  wire instr_blt0;
  wire instr_bltu;
  wire instr_bltu0;
  wire instr_bne;
  wire instr_bne0;
  wire instr_getq;
  wire instr_jal;
  wire instr_jal_i_1_n_0;
  wire instr_jal_i_4_n_0;
  wire instr_jal_i_5_n_0;
  wire instr_jal_i_6_n_0;
  wire instr_jalr;
  wire instr_jalr_i_1_n_0;
  wire instr_jalr_i_3_n_0;
  wire instr_jalr_i_4_n_0;
  wire instr_jalr_i_5_n_0;
  wire instr_jalr_i_6_n_0;
  wire instr_jalr_reg_0;
  wire instr_lb;
  wire instr_lb_i_1_n_0;
  wire instr_lbu;
  wire instr_lbu_i_1_n_0;
  wire instr_lh;
  wire instr_lh_i_1_n_0;
  wire instr_lhu;
  wire instr_lhu_i_1_n_0;
  wire instr_lhu_i_2_n_0;
  wire instr_lui;
  wire instr_lui0;
  wire instr_lui_i_1_n_0;
  wire instr_lui_i_2_n_0;
  wire instr_lui_i_3_n_0;
  wire instr_lui_i_4_n_0;
  wire instr_lui_i_6_n_0;
  wire instr_lui_reg_0;
  wire instr_lw;
  wire instr_lw_i_1_n_0;
  wire instr_maskirq;
  wire instr_maskirq_i_1_n_0;
  wire instr_or;
  wire instr_or0;
  wire instr_ori;
  wire instr_ori0;
  wire instr_rdcycle;
  wire instr_rdcycle0;
  wire instr_rdcycle_i_2_n_0;
  wire instr_rdcycle_i_3_n_0;
  wire instr_rdcycle_i_4_n_0;
  wire instr_rdcycleh;
  wire instr_rdcycleh0;
  wire instr_rdcycleh_i_2_n_0;
  wire instr_rdcycleh_i_3_n_0;
  wire instr_rdcycleh_i_4_n_0;
  wire instr_rdcycleh_i_5_n_0;
  wire instr_rdinstr;
  wire instr_rdinstr0;
  wire instr_rdinstr_i_2_n_0;
  wire instr_rdinstr_i_3_n_0;
  wire instr_rdinstr_i_4_n_0;
  wire instr_rdinstr_i_5_n_0;
  wire instr_rdinstrh;
  wire instr_rdinstrh0;
  wire instr_rdinstrh_i_2_n_0;
  wire instr_rdinstrh_i_3_n_0;
  wire instr_rdinstrh_i_4_n_0;
  wire instr_retirq;
  wire instr_retirq0;
  wire instr_retirq_i_2_n_0;
  wire instr_retirq_i_3_n_0;
  wire instr_retirq_i_4_n_0;
  wire instr_retirq_i_5_n_0;
  wire instr_retirq_i_6_n_0;
  wire instr_retirq_i_7_n_0;
  wire instr_retirq_i_8_n_0;
  wire instr_sb;
  wire instr_sb0;
  wire instr_setq;
  wire instr_setq_i_1_n_0;
  wire instr_sh;
  wire instr_sh0;
  wire instr_sll;
  wire instr_sll0;
  wire instr_slli;
  wire instr_slli0;
  wire instr_slli1;
  wire instr_slt;
  wire instr_slt0;
  wire instr_slti;
  wire instr_slti0;
  wire instr_sltiu;
  wire instr_sltiu0;
  wire instr_sltu;
  wire instr_sltu0;
  wire instr_sra;
  wire instr_sra0;
  wire instr_srai;
  wire instr_srai0;
  wire instr_srl;
  wire instr_srl0;
  wire instr_srli;
  wire instr_srli0;
  wire instr_sub;
  wire instr_sub0;
  wire instr_sw;
  wire instr_sw0;
  wire instr_timer;
  wire instr_timer_i_1_n_0;
  wire instr_timer_i_2_n_0;
  wire instr_timer_i_3_n_0;
  wire instr_timer_i_4_n_0;
  wire instr_timer_i_5_n_0;
  wire instr_trap;
  wire instr_waitirq;
  wire instr_waitirq0;
  wire instr_waitirq_i_2_n_0;
  wire instr_waitirq_i_3_n_0;
  wire instr_waitirq_i_4_n_0;
  wire instr_waitirq_i_5_n_0;
  wire instr_waitirq_i_6_n_0;
  wire instr_waitirq_reg_0;
  wire instr_xor;
  wire instr_xor0;
  wire instr_xori;
  wire instr_xori0;
  wire [31:0]irq;
  wire irq_active_reg_0;
  wire irq_active_reg_1;
  wire irq_delay;
  wire irq_delay_reg_0;
  wire irq_delay_reg_n_0;
  wire irq_mask;
  wire \irq_mask[0]_i_1_n_0 ;
  wire \irq_mask[10]_i_1_n_0 ;
  wire \irq_mask[11]_i_1_n_0 ;
  wire \irq_mask[12]_i_1_n_0 ;
  wire \irq_mask[13]_i_1_n_0 ;
  wire \irq_mask[14]_i_1_n_0 ;
  wire \irq_mask[15]_i_1_n_0 ;
  wire \irq_mask[16]_i_1_n_0 ;
  wire \irq_mask[17]_i_1_n_0 ;
  wire \irq_mask[18]_i_1_n_0 ;
  wire \irq_mask[19]_i_1_n_0 ;
  wire \irq_mask[1]_i_1_n_0 ;
  wire \irq_mask[20]_i_1_n_0 ;
  wire \irq_mask[21]_i_1_n_0 ;
  wire \irq_mask[22]_i_1_n_0 ;
  wire \irq_mask[23]_i_1_n_0 ;
  wire \irq_mask[24]_i_1_n_0 ;
  wire \irq_mask[25]_i_1_n_0 ;
  wire \irq_mask[26]_i_1_n_0 ;
  wire \irq_mask[27]_i_1_n_0 ;
  wire \irq_mask[28]_i_1_n_0 ;
  wire \irq_mask[29]_i_1_n_0 ;
  wire \irq_mask[2]_i_1_n_0 ;
  wire \irq_mask[30]_i_1_n_0 ;
  wire \irq_mask[31]_i_2_n_0 ;
  wire \irq_mask[3]_i_1_n_0 ;
  wire \irq_mask[4]_i_1_n_0 ;
  wire \irq_mask[5]_i_1_n_0 ;
  wire \irq_mask[6]_i_1_n_0 ;
  wire \irq_mask[7]_i_1_n_0 ;
  wire \irq_mask[8]_i_1_n_0 ;
  wire \irq_mask[9]_i_1_n_0 ;
  wire \irq_mask_reg_n_0_[0] ;
  wire \irq_mask_reg_n_0_[10] ;
  wire \irq_mask_reg_n_0_[11] ;
  wire \irq_mask_reg_n_0_[12] ;
  wire \irq_mask_reg_n_0_[13] ;
  wire \irq_mask_reg_n_0_[14] ;
  wire \irq_mask_reg_n_0_[15] ;
  wire \irq_mask_reg_n_0_[16] ;
  wire \irq_mask_reg_n_0_[17] ;
  wire \irq_mask_reg_n_0_[18] ;
  wire \irq_mask_reg_n_0_[19] ;
  wire \irq_mask_reg_n_0_[1] ;
  wire \irq_mask_reg_n_0_[20] ;
  wire \irq_mask_reg_n_0_[21] ;
  wire \irq_mask_reg_n_0_[22] ;
  wire \irq_mask_reg_n_0_[23] ;
  wire \irq_mask_reg_n_0_[24] ;
  wire \irq_mask_reg_n_0_[25] ;
  wire \irq_mask_reg_n_0_[26] ;
  wire \irq_mask_reg_n_0_[27] ;
  wire \irq_mask_reg_n_0_[28] ;
  wire \irq_mask_reg_n_0_[29] ;
  wire \irq_mask_reg_n_0_[2] ;
  wire \irq_mask_reg_n_0_[30] ;
  wire \irq_mask_reg_n_0_[31] ;
  wire \irq_mask_reg_n_0_[3] ;
  wire \irq_mask_reg_n_0_[4] ;
  wire \irq_mask_reg_n_0_[5] ;
  wire \irq_mask_reg_n_0_[6] ;
  wire \irq_mask_reg_n_0_[7] ;
  wire \irq_mask_reg_n_0_[8] ;
  wire \irq_mask_reg_n_0_[9] ;
  wire [31:0]irq_pending;
  wire \irq_pending[0]_i_10_n_0 ;
  wire \irq_pending[0]_i_11_n_0 ;
  wire \irq_pending[0]_i_2_n_0 ;
  wire \irq_pending[0]_i_3_n_0 ;
  wire \irq_pending[0]_i_4_n_0 ;
  wire \irq_pending[0]_i_5_n_0 ;
  wire \irq_pending[0]_i_6_n_0 ;
  wire \irq_pending[0]_i_7_n_0 ;
  wire \irq_pending[0]_i_8_n_0 ;
  wire \irq_pending[0]_i_9_n_0 ;
  wire \irq_pending[1]_i_2_n_0 ;
  wire \irq_pending[1]_i_3_n_0 ;
  wire \irq_pending[31]_i_2_n_0 ;
  wire \irq_state[0]_i_1_n_0 ;
  wire \irq_state[1]_i_1_n_0 ;
  wire \irq_state_reg[0]_0 ;
  wire \irq_state_reg_n_0_[1] ;
  wire is_alu_reg_imm;
  wire is_alu_reg_imm1;
  wire is_alu_reg_imm_i_10_n_0;
  wire is_alu_reg_imm_i_11_n_0;
  wire is_alu_reg_imm_i_13_n_0;
  wire is_alu_reg_imm_i_14_n_0;
  wire is_alu_reg_imm_i_15_n_0;
  wire is_alu_reg_imm_i_16_n_0;
  wire is_alu_reg_imm_i_1_n_0;
  wire is_alu_reg_imm_i_2_n_0;
  wire is_alu_reg_imm_i_3_n_0;
  wire is_alu_reg_imm_i_4_n_0;
  wire is_alu_reg_imm_i_5_n_0;
  wire is_alu_reg_imm_i_6_n_0;
  wire is_alu_reg_imm_i_7_n_0;
  wire is_alu_reg_imm_i_8_n_0;
  wire is_alu_reg_imm_i_9_n_0;
  wire is_alu_reg_reg;
  wire is_alu_reg_reg_i_1_n_0;
  wire is_alu_reg_reg_i_2_n_0;
  wire is_alu_reg_reg_i_3_n_0;
  wire is_alu_reg_reg_i_4_n_0;
  wire is_alu_reg_reg_i_5_n_0;
  wire is_beq_bne_blt_bge_bltu_bgeu;
  wire is_beq_bne_blt_bge_bltu_bgeu_reg_0;
  wire is_beq_bne_blt_bge_bltu_bgeu_reg_1;
  wire is_compare;
  wire is_compare_i_1_n_0;
  wire is_compare_i_2_n_0;
  wire is_jalr_addi_slti_sltiu_xori_ori_andi;
  wire is_jalr_addi_slti_sltiu_xori_ori_andi0;
  wire is_lb_lh_lw_lbu_lhu;
  wire is_lb_lh_lw_lbu_lhu_i_1_n_0;
  wire is_lb_lh_lw_lbu_lhu_i_2_n_0;
  wire is_lb_lh_lw_lbu_lhu_i_3_n_0;
  wire is_lb_lh_lw_lbu_lhu_i_4_n_0;
  wire is_lb_lh_lw_lbu_lhu_i_5_n_0;
  wire is_lbu_lhu_lw;
  wire is_lbu_lhu_lw_i_1_n_0;
  wire is_lui_auipc_jal;
  wire is_lui_auipc_jal_jalr_addi_add_sub;
  wire is_lui_auipc_jal_jalr_addi_add_sub0;
  wire is_lui_auipc_jal_jalr_addi_add_sub_reg_0;
  wire is_rdcycle_rdcycleh_rdinstr_rdinstrh;
  wire is_sb_sh_sw;
  wire is_sb_sh_sw_i_2_n_0;
  wire is_sb_sh_sw_i_4_n_0;
  wire is_sb_sh_sw_i_5_n_0;
  wire is_sll_srl_sra;
  wire is_sll_srl_sra0;
  wire is_sll_srl_sra_i_3_n_0;
  wire is_sll_srl_sra_i_4_n_0;
  wire is_slli_srli_srai;
  wire is_slli_srli_srai0;
  wire is_slti_blt_slt;
  wire is_slti_blt_slt_i_1_n_0;
  wire is_sltiu_bltu_sltu;
  wire is_sltiu_bltu_sltu_i_1_n_0;
  wire last_mem_valid;
  wire last_mem_valid0;
  wire latched_branch;
  wire latched_branch_i_4_n_0;
  wire latched_branch_reg_0;
  wire latched_branch_reg_1;
  wire latched_compr_reg_0;
  wire latched_compr_reg_1;
  wire latched_is_lb_reg_0;
  wire latched_is_lb_reg_1;
  wire latched_is_lh_reg_0;
  wire latched_is_lh_reg_1;
  wire latched_is_lu_reg_0;
  wire latched_is_lu_reg_1;
  wire [5:0]latched_rd;
  wire \latched_rd[5]_i_10_n_0 ;
  wire \latched_rd[5]_i_1_n_0 ;
  wire \latched_rd[5]_i_22_n_0 ;
  wire \latched_rd[5]_i_23_n_0 ;
  wire \latched_rd[5]_i_24_n_0 ;
  wire \latched_rd[5]_i_4_n_0 ;
  wire \latched_rd[5]_i_5_n_0 ;
  wire \latched_rd[5]_i_6_n_0 ;
  wire \latched_rd[5]_i_7_n_0 ;
  wire \latched_rd[5]_i_8_n_0 ;
  wire \latched_rd[5]_i_9_n_0 ;
  wire [5:0]latched_rd__0;
  wire latched_stalu_reg_0;
  wire latched_stalu_reg_1;
  wire latched_store;
  wire latched_store_reg_0;
  wire latched_store_reg_1;
  wire mem_16bit_buffer;
  wire \mem_16bit_buffer_reg_n_0_[0] ;
  wire \mem_16bit_buffer_reg_n_0_[10] ;
  wire \mem_16bit_buffer_reg_n_0_[11] ;
  wire \mem_16bit_buffer_reg_n_0_[12] ;
  wire \mem_16bit_buffer_reg_n_0_[13] ;
  wire \mem_16bit_buffer_reg_n_0_[14] ;
  wire \mem_16bit_buffer_reg_n_0_[15] ;
  wire \mem_16bit_buffer_reg_n_0_[1] ;
  wire \mem_16bit_buffer_reg_n_0_[2] ;
  wire \mem_16bit_buffer_reg_n_0_[3] ;
  wire \mem_16bit_buffer_reg_n_0_[4] ;
  wire \mem_16bit_buffer_reg_n_0_[5] ;
  wire \mem_16bit_buffer_reg_n_0_[6] ;
  wire \mem_16bit_buffer_reg_n_0_[7] ;
  wire \mem_16bit_buffer_reg_n_0_[8] ;
  wire \mem_16bit_buffer_reg_n_0_[9] ;
  wire \mem_addr[10]_i_1_n_0 ;
  wire \mem_addr[11]_i_1_n_0 ;
  wire \mem_addr[12]_i_1_n_0 ;
  wire \mem_addr[13]_i_1_n_0 ;
  wire \mem_addr[14]_i_1_n_0 ;
  wire \mem_addr[15]_i_1_n_0 ;
  wire \mem_addr[16]_i_1_n_0 ;
  wire \mem_addr[17]_i_1_n_0 ;
  wire \mem_addr[18]_i_1_n_0 ;
  wire \mem_addr[19]_i_1_n_0 ;
  wire \mem_addr[20]_i_1_n_0 ;
  wire \mem_addr[21]_i_1_n_0 ;
  wire \mem_addr[22]_i_1_n_0 ;
  wire \mem_addr[23]_i_1_n_0 ;
  wire \mem_addr[24]_i_1_n_0 ;
  wire \mem_addr[25]_i_1_n_0 ;
  wire \mem_addr[26]_i_1_n_0 ;
  wire \mem_addr[27]_i_1_n_0 ;
  wire \mem_addr[28]_i_1_n_0 ;
  wire \mem_addr[29]_i_1_n_0 ;
  wire \mem_addr[2]_i_1_n_0 ;
  wire \mem_addr[30]_i_1_n_0 ;
  wire \mem_addr[31]_i_1_n_0 ;
  wire \mem_addr[31]_i_2_n_0 ;
  wire \mem_addr[31]_i_5_n_0 ;
  wire \mem_addr[3]_i_1_n_0 ;
  wire \mem_addr[4]_i_1_n_0 ;
  wire \mem_addr[5]_i_1_n_0 ;
  wire \mem_addr[5]_i_7_n_0 ;
  wire \mem_addr[6]_i_1_n_0 ;
  wire \mem_addr[7]_i_1_n_0 ;
  wire \mem_addr[8]_i_1_n_0 ;
  wire \mem_addr[9]_i_1_n_0 ;
  wire \mem_addr_reg[13]_i_2_n_0 ;
  wire \mem_addr_reg[13]_i_2_n_1 ;
  wire \mem_addr_reg[13]_i_2_n_2 ;
  wire \mem_addr_reg[13]_i_2_n_3 ;
  wire \mem_addr_reg[17]_i_2_n_0 ;
  wire \mem_addr_reg[17]_i_2_n_1 ;
  wire \mem_addr_reg[17]_i_2_n_2 ;
  wire \mem_addr_reg[17]_i_2_n_3 ;
  wire \mem_addr_reg[21]_i_2_n_0 ;
  wire \mem_addr_reg[21]_i_2_n_1 ;
  wire \mem_addr_reg[21]_i_2_n_2 ;
  wire \mem_addr_reg[21]_i_2_n_3 ;
  wire \mem_addr_reg[25]_i_2_n_0 ;
  wire \mem_addr_reg[25]_i_2_n_1 ;
  wire \mem_addr_reg[25]_i_2_n_2 ;
  wire \mem_addr_reg[25]_i_2_n_3 ;
  wire \mem_addr_reg[29]_i_2_n_0 ;
  wire \mem_addr_reg[29]_i_2_n_1 ;
  wire \mem_addr_reg[29]_i_2_n_2 ;
  wire \mem_addr_reg[29]_i_2_n_3 ;
  wire \mem_addr_reg[31]_i_4_n_3 ;
  wire \mem_addr_reg[5]_i_2_n_0 ;
  wire \mem_addr_reg[5]_i_2_n_1 ;
  wire \mem_addr_reg[5]_i_2_n_2 ;
  wire \mem_addr_reg[5]_i_2_n_3 ;
  wire \mem_addr_reg[9]_i_2_n_0 ;
  wire \mem_addr_reg[9]_i_2_n_1 ;
  wire \mem_addr_reg[9]_i_2_n_2 ;
  wire \mem_addr_reg[9]_i_2_n_3 ;
  wire [0:0]mem_axi_arprot;
  wire mem_axi_arvalid;
  wire mem_axi_arvalid_0;
  wire [29:0]mem_axi_awaddr;
  wire mem_axi_awvalid;
  wire mem_axi_bready;
  wire mem_axi_bvalid;
  wire [31:0]mem_axi_rdata;
  wire [1:0]\mem_axi_rdata[15] ;
  wire mem_axi_rdata_0_sn_1;
  wire mem_axi_rdata_1_sn_1;
  wire mem_axi_rdata_4_sn_1;
  wire mem_axi_rready;
  wire mem_axi_rvalid;
  wire [31:0]mem_axi_wdata;
  wire mem_axi_wvalid;
  wire mem_axi_wvalid_0;
  wire mem_do_prefetch_i_1_n_0;
  wire mem_do_prefetch_i_2_n_0;
  wire mem_do_prefetch_i_3_n_0;
  wire mem_do_prefetch_reg_0;
  wire mem_do_rdata;
  wire mem_do_rdata_reg_0;
  wire mem_do_rdata_reg_1;
  wire mem_do_rinst4_out;
  wire mem_do_rinst_i_10_n_0;
  wire mem_do_rinst_i_11_n_0;
  wire mem_do_rinst_i_12_n_0;
  wire mem_do_rinst_i_13_n_0;
  wire mem_do_rinst_i_14_n_0;
  wire mem_do_rinst_i_1_n_0;
  wire mem_do_rinst_i_2_n_0;
  wire mem_do_rinst_i_4_n_0;
  wire mem_do_rinst_i_5_n_0;
  wire mem_do_rinst_i_6_n_0;
  wire mem_do_rinst_i_7_n_0;
  wire mem_do_rinst_i_8_n_0;
  wire mem_do_rinst_reg_n_0;
  wire mem_do_wdata;
  wire mem_do_wdata_reg_0;
  wire mem_do_wdata_reg_1;
  wire mem_done;
  wire mem_done17_out;
  wire mem_instr_reg_0;
  wire [29:0]mem_la_addr0;
  wire mem_la_firstword1;
  wire mem_la_firstword_reg;
  wire mem_la_firstword_reg_reg_n_0;
  wire mem_la_secondword;
  wire mem_la_secondword_i_1_n_0;
  wire mem_la_use_prefetched_high_word;
  wire mem_rdata_q1;
  wire mem_rdata_q164_out;
  wire mem_rdata_q3;
  wire \mem_rdata_q[0]_i_1_n_0 ;
  wire \mem_rdata_q[0]_i_2_n_0 ;
  wire \mem_rdata_q[10]_i_2_n_0 ;
  wire \mem_rdata_q[11]_i_1_n_0 ;
  wire \mem_rdata_q[11]_i_3_n_0 ;
  wire \mem_rdata_q[11]_i_4_n_0 ;
  wire \mem_rdata_q[11]_i_5_n_0 ;
  wire \mem_rdata_q[11]_i_6_n_0 ;
  wire \mem_rdata_q[11]_i_7_n_0 ;
  wire \mem_rdata_q[11]_i_8_n_0 ;
  wire \mem_rdata_q[11]_i_9_n_0 ;
  wire \mem_rdata_q[12]_i_1_n_0 ;
  wire \mem_rdata_q[12]_i_2_n_0 ;
  wire \mem_rdata_q[12]_i_3_n_0 ;
  wire \mem_rdata_q[12]_i_4_n_0 ;
  wire \mem_rdata_q[12]_i_5_n_0 ;
  wire \mem_rdata_q[12]_i_6_n_0 ;
  wire \mem_rdata_q[12]_i_7_n_0 ;
  wire \mem_rdata_q[13]_i_1_n_0 ;
  wire \mem_rdata_q[13]_i_2_n_0 ;
  wire \mem_rdata_q[13]_i_3_n_0 ;
  wire \mem_rdata_q[13]_i_4_n_0 ;
  wire \mem_rdata_q[13]_i_5_n_0 ;
  wire \mem_rdata_q[13]_i_6_n_0 ;
  wire \mem_rdata_q[14]_i_1_n_0 ;
  wire \mem_rdata_q[14]_i_2_n_0 ;
  wire \mem_rdata_q[14]_i_3_n_0 ;
  wire \mem_rdata_q[14]_i_4_n_0 ;
  wire \mem_rdata_q[14]_i_5_n_0 ;
  wire \mem_rdata_q[15]_i_1_n_0 ;
  wire \mem_rdata_q[16]_i_1_n_0 ;
  wire \mem_rdata_q[16]_i_2_n_0 ;
  wire \mem_rdata_q[16]_i_3_n_0 ;
  wire \mem_rdata_q[17]_i_1_n_0 ;
  wire \mem_rdata_q[17]_i_2_n_0 ;
  wire \mem_rdata_q[17]_i_3_n_0 ;
  wire \mem_rdata_q[18]_i_1_n_0 ;
  wire \mem_rdata_q[18]_i_2_n_0 ;
  wire \mem_rdata_q[18]_i_3_n_0 ;
  wire \mem_rdata_q[19]_i_1_n_0 ;
  wire \mem_rdata_q[19]_i_2_n_0 ;
  wire \mem_rdata_q[19]_i_3_n_0 ;
  wire \mem_rdata_q[19]_i_4_n_0 ;
  wire \mem_rdata_q[19]_i_6_n_0 ;
  wire \mem_rdata_q[19]_i_7_n_0 ;
  wire \mem_rdata_q[19]_i_8_n_0 ;
  wire \mem_rdata_q[19]_i_9_n_0 ;
  wire \mem_rdata_q[1]_i_1_n_0 ;
  wire \mem_rdata_q[1]_i_2_n_0 ;
  wire \mem_rdata_q[20]_i_1_n_0 ;
  wire \mem_rdata_q[20]_i_2_n_0 ;
  wire \mem_rdata_q[20]_i_3_n_0 ;
  wire \mem_rdata_q[20]_i_4_n_0 ;
  wire \mem_rdata_q[21]_i_10_n_0 ;
  wire \mem_rdata_q[21]_i_1_n_0 ;
  wire \mem_rdata_q[21]_i_2_n_0 ;
  wire \mem_rdata_q[21]_i_3_n_0 ;
  wire \mem_rdata_q[21]_i_4_n_0 ;
  wire \mem_rdata_q[21]_i_5_n_0 ;
  wire \mem_rdata_q[21]_i_6_n_0 ;
  wire \mem_rdata_q[21]_i_7_n_0 ;
  wire \mem_rdata_q[21]_i_8_n_0 ;
  wire \mem_rdata_q[21]_i_9_n_0 ;
  wire \mem_rdata_q[22]_i_1_n_0 ;
  wire \mem_rdata_q[22]_i_2_n_0 ;
  wire \mem_rdata_q[22]_i_3_n_0 ;
  wire \mem_rdata_q[22]_i_4_n_0 ;
  wire \mem_rdata_q[22]_i_5_n_0 ;
  wire \mem_rdata_q[22]_i_6_n_0 ;
  wire \mem_rdata_q[23]_i_10_n_0 ;
  wire \mem_rdata_q[23]_i_1_n_0 ;
  wire \mem_rdata_q[23]_i_2_n_0 ;
  wire \mem_rdata_q[23]_i_3_n_0 ;
  wire \mem_rdata_q[23]_i_4_n_0 ;
  wire \mem_rdata_q[23]_i_5_n_0 ;
  wire \mem_rdata_q[23]_i_6_n_0 ;
  wire \mem_rdata_q[23]_i_7_n_0 ;
  wire \mem_rdata_q[23]_i_8_n_0 ;
  wire \mem_rdata_q[23]_i_9_n_0 ;
  wire \mem_rdata_q[24]_i_10_n_0 ;
  wire \mem_rdata_q[24]_i_11_n_0 ;
  wire \mem_rdata_q[24]_i_12_n_0 ;
  wire \mem_rdata_q[24]_i_13_n_0 ;
  wire \mem_rdata_q[24]_i_14_n_0 ;
  wire \mem_rdata_q[24]_i_15_n_0 ;
  wire \mem_rdata_q[24]_i_16_n_0 ;
  wire \mem_rdata_q[24]_i_1_n_0 ;
  wire \mem_rdata_q[24]_i_2_n_0 ;
  wire \mem_rdata_q[24]_i_4_n_0 ;
  wire \mem_rdata_q[24]_i_5_n_0 ;
  wire \mem_rdata_q[24]_i_6_n_0 ;
  wire \mem_rdata_q[24]_i_7_n_0 ;
  wire \mem_rdata_q[24]_i_8_n_0 ;
  wire \mem_rdata_q[24]_i_9_n_0 ;
  wire \mem_rdata_q[25]_i_1_n_0 ;
  wire \mem_rdata_q[25]_i_2_n_0 ;
  wire \mem_rdata_q[25]_i_3_n_0 ;
  wire \mem_rdata_q[25]_i_4_n_0 ;
  wire \mem_rdata_q[25]_i_5_n_0 ;
  wire \mem_rdata_q[25]_i_6_n_0 ;
  wire \mem_rdata_q[25]_i_7_n_0 ;
  wire \mem_rdata_q[25]_i_8_n_0 ;
  wire \mem_rdata_q[26]_i_10_n_0 ;
  wire \mem_rdata_q[26]_i_11_n_0 ;
  wire \mem_rdata_q[26]_i_12_n_0 ;
  wire \mem_rdata_q[26]_i_13_n_0 ;
  wire \mem_rdata_q[26]_i_1_n_0 ;
  wire \mem_rdata_q[26]_i_2_n_0 ;
  wire \mem_rdata_q[26]_i_3_n_0 ;
  wire \mem_rdata_q[26]_i_4_n_0 ;
  wire \mem_rdata_q[26]_i_5_n_0 ;
  wire \mem_rdata_q[26]_i_6_n_0 ;
  wire \mem_rdata_q[26]_i_7_n_0 ;
  wire \mem_rdata_q[26]_i_8_n_0 ;
  wire \mem_rdata_q[26]_i_9_n_0 ;
  wire \mem_rdata_q[27]_i_1_n_0 ;
  wire \mem_rdata_q[27]_i_2_n_0 ;
  wire \mem_rdata_q[27]_i_3_n_0 ;
  wire \mem_rdata_q[27]_i_4_n_0 ;
  wire \mem_rdata_q[27]_i_5_n_0 ;
  wire \mem_rdata_q[27]_i_6_n_0 ;
  wire \mem_rdata_q[27]_i_7_n_0 ;
  wire \mem_rdata_q[27]_i_8_n_0 ;
  wire \mem_rdata_q[27]_i_9_n_0 ;
  wire \mem_rdata_q[28]_i_1_n_0 ;
  wire \mem_rdata_q[28]_i_2_n_0 ;
  wire \mem_rdata_q[28]_i_3_n_0 ;
  wire \mem_rdata_q[28]_i_4_n_0 ;
  wire \mem_rdata_q[28]_i_5_n_0 ;
  wire \mem_rdata_q[28]_i_6_n_0 ;
  wire \mem_rdata_q[28]_i_7_n_0 ;
  wire \mem_rdata_q[28]_i_8_n_0 ;
  wire \mem_rdata_q[28]_i_9_n_0 ;
  wire \mem_rdata_q[29]_i_10_n_0 ;
  wire \mem_rdata_q[29]_i_11_n_0 ;
  wire \mem_rdata_q[29]_i_1_n_0 ;
  wire \mem_rdata_q[29]_i_2_n_0 ;
  wire \mem_rdata_q[29]_i_3_n_0 ;
  wire \mem_rdata_q[29]_i_4_n_0 ;
  wire \mem_rdata_q[29]_i_5_n_0 ;
  wire \mem_rdata_q[29]_i_6_n_0 ;
  wire \mem_rdata_q[29]_i_7_n_0 ;
  wire \mem_rdata_q[29]_i_8_n_0 ;
  wire \mem_rdata_q[29]_i_9_n_0 ;
  wire \mem_rdata_q[2]_i_2_n_0 ;
  wire \mem_rdata_q[30]_i_1_n_0 ;
  wire \mem_rdata_q[30]_i_2_n_0 ;
  wire \mem_rdata_q[30]_i_3_n_0 ;
  wire \mem_rdata_q[30]_i_4_n_0 ;
  wire \mem_rdata_q[30]_i_5_n_0 ;
  wire \mem_rdata_q[30]_i_6_n_0 ;
  wire \mem_rdata_q[31]_i_10_n_0 ;
  wire \mem_rdata_q[31]_i_11_n_0 ;
  wire \mem_rdata_q[31]_i_12_n_0 ;
  wire \mem_rdata_q[31]_i_13_n_0 ;
  wire \mem_rdata_q[31]_i_14_n_0 ;
  wire \mem_rdata_q[31]_i_15_n_0 ;
  wire \mem_rdata_q[31]_i_16_n_0 ;
  wire \mem_rdata_q[31]_i_17_n_0 ;
  wire \mem_rdata_q[31]_i_18_n_0 ;
  wire \mem_rdata_q[31]_i_19_n_0 ;
  wire \mem_rdata_q[31]_i_1_n_0 ;
  wire \mem_rdata_q[31]_i_20_n_0 ;
  wire \mem_rdata_q[31]_i_21_n_0 ;
  wire \mem_rdata_q[31]_i_22_n_0 ;
  wire \mem_rdata_q[31]_i_23_n_0 ;
  wire \mem_rdata_q[31]_i_24_n_0 ;
  wire \mem_rdata_q[31]_i_25_n_0 ;
  wire \mem_rdata_q[31]_i_26_n_0 ;
  wire \mem_rdata_q[31]_i_27_n_0 ;
  wire \mem_rdata_q[31]_i_28_n_0 ;
  wire \mem_rdata_q[31]_i_29_n_0 ;
  wire \mem_rdata_q[31]_i_2_n_0 ;
  wire \mem_rdata_q[31]_i_30_n_0 ;
  wire \mem_rdata_q[31]_i_31_n_0 ;
  wire \mem_rdata_q[31]_i_3_n_0 ;
  wire \mem_rdata_q[31]_i_4_n_0 ;
  wire \mem_rdata_q[31]_i_5_n_0 ;
  wire \mem_rdata_q[31]_i_6_n_0 ;
  wire \mem_rdata_q[31]_i_7_n_0 ;
  wire \mem_rdata_q[31]_i_8_n_0 ;
  wire \mem_rdata_q[31]_i_9_n_0 ;
  wire \mem_rdata_q[3]_i_2_n_0 ;
  wire \mem_rdata_q[4]_i_2_n_0 ;
  wire \mem_rdata_q[5]_i_2_n_0 ;
  wire \mem_rdata_q[6]_i_3_n_0 ;
  wire \mem_rdata_q[6]_i_4_n_0 ;
  wire \mem_rdata_q[6]_i_5_n_0 ;
  wire \mem_rdata_q[6]_i_6_n_0 ;
  wire \mem_rdata_q[7]_i_1_n_0 ;
  wire \mem_rdata_q[7]_i_2_n_0 ;
  wire \mem_rdata_q[7]_i_3_n_0 ;
  wire \mem_rdata_q[8]_i_1_n_0 ;
  wire \mem_rdata_q[8]_i_2_n_0 ;
  wire \mem_rdata_q[8]_i_3_n_0 ;
  wire \mem_rdata_q[8]_i_4_n_0 ;
  wire \mem_rdata_q[8]_i_5_n_0 ;
  wire \mem_rdata_q[9]_i_1_n_0 ;
  wire \mem_rdata_q[9]_i_2_n_0 ;
  wire \mem_rdata_q[9]_i_3_n_0 ;
  wire \mem_rdata_q[9]_i_4_n_0 ;
  wire \mem_rdata_q[9]_i_5_n_0 ;
  wire \mem_rdata_q[9]_i_6_n_0 ;
  wire \mem_rdata_q_reg_n_0_[0] ;
  wire \mem_rdata_q_reg_n_0_[10] ;
  wire \mem_rdata_q_reg_n_0_[11] ;
  wire \mem_rdata_q_reg_n_0_[12] ;
  wire \mem_rdata_q_reg_n_0_[13] ;
  wire \mem_rdata_q_reg_n_0_[14] ;
  wire \mem_rdata_q_reg_n_0_[15] ;
  wire \mem_rdata_q_reg_n_0_[16] ;
  wire \mem_rdata_q_reg_n_0_[17] ;
  wire \mem_rdata_q_reg_n_0_[18] ;
  wire \mem_rdata_q_reg_n_0_[19] ;
  wire \mem_rdata_q_reg_n_0_[1] ;
  wire \mem_rdata_q_reg_n_0_[20] ;
  wire \mem_rdata_q_reg_n_0_[21] ;
  wire \mem_rdata_q_reg_n_0_[22] ;
  wire \mem_rdata_q_reg_n_0_[23] ;
  wire \mem_rdata_q_reg_n_0_[24] ;
  wire \mem_rdata_q_reg_n_0_[25] ;
  wire \mem_rdata_q_reg_n_0_[26] ;
  wire \mem_rdata_q_reg_n_0_[27] ;
  wire \mem_rdata_q_reg_n_0_[28] ;
  wire \mem_rdata_q_reg_n_0_[29] ;
  wire \mem_rdata_q_reg_n_0_[2] ;
  wire \mem_rdata_q_reg_n_0_[30] ;
  wire \mem_rdata_q_reg_n_0_[31] ;
  wire \mem_rdata_q_reg_n_0_[3] ;
  wire \mem_rdata_q_reg_n_0_[4] ;
  wire \mem_rdata_q_reg_n_0_[5] ;
  wire \mem_rdata_q_reg_n_0_[6] ;
  wire \mem_rdata_q_reg_n_0_[7] ;
  wire \mem_rdata_q_reg_n_0_[8] ;
  wire \mem_rdata_q_reg_n_0_[9] ;
  wire [7:7]mem_rdata_word;
  wire mem_state;
  wire \mem_state[0]_i_1_n_0 ;
  wire \mem_state[1]_i_1_n_0 ;
  wire \mem_state[1]_i_4_n_0 ;
  wire \mem_state_reg[0]_0 ;
  wire \mem_state_reg[0]_1 ;
  wire \mem_state_reg[0]_2 ;
  wire \mem_state_reg[0]_3 ;
  wire \mem_state_reg_n_0_[0] ;
  wire \mem_state_reg_n_0_[1] ;
  wire mem_valid;
  wire mem_valid_i_1_n_0;
  wire mem_valid_reg_0;
  wire mem_valid_reg_1;
  wire \mem_wdata[10]_i_1_n_0 ;
  wire \mem_wdata[11]_i_1_n_0 ;
  wire \mem_wdata[12]_i_1_n_0 ;
  wire \mem_wdata[13]_i_1_n_0 ;
  wire \mem_wdata[14]_i_1_n_0 ;
  wire \mem_wdata[15]_i_1_n_0 ;
  wire \mem_wdata[16]_i_1_n_0 ;
  wire \mem_wdata[17]_i_1_n_0 ;
  wire \mem_wdata[18]_i_1_n_0 ;
  wire \mem_wdata[19]_i_1_n_0 ;
  wire \mem_wdata[20]_i_1_n_0 ;
  wire \mem_wdata[21]_i_1_n_0 ;
  wire \mem_wdata[22]_i_1_n_0 ;
  wire \mem_wdata[23]_i_1_n_0 ;
  wire \mem_wdata[24]_i_1_n_0 ;
  wire \mem_wdata[25]_i_1_n_0 ;
  wire \mem_wdata[26]_i_1_n_0 ;
  wire \mem_wdata[27]_i_1_n_0 ;
  wire \mem_wdata[28]_i_1_n_0 ;
  wire \mem_wdata[29]_i_1_n_0 ;
  wire \mem_wdata[30]_i_1_n_0 ;
  wire \mem_wdata[31]_i_1_n_0 ;
  wire \mem_wdata[31]_i_2_n_0 ;
  wire \mem_wdata[8]_i_1_n_0 ;
  wire \mem_wdata[9]_i_1_n_0 ;
  wire [1:0]mem_wordsize;
  wire \mem_wordsize[0]_i_1_n_0 ;
  wire \mem_wordsize[1]_i_1_n_0 ;
  wire \mem_wordsize[1]_i_3_n_0 ;
  wire \mem_wordsize[1]_i_4_n_0 ;
  wire \mem_wordsize[1]_i_5_n_0 ;
  wire \mem_wordsize[1]_i_6_n_0 ;
  wire \mem_wordsize_reg_n_0_[0] ;
  wire \mem_wordsize_reg_n_0_[1] ;
  wire \mem_wstrb[0]_i_1_n_0 ;
  wire \mem_wstrb[1]_i_1_n_0 ;
  wire \mem_wstrb[1]_i_2_n_0 ;
  wire \mem_wstrb[2]_i_1_n_0 ;
  wire \mem_wstrb[3]_i_1_n_0 ;
  wire \mem_wstrb[3]_i_2_n_0 ;
  wire \mem_wstrb[3]_i_5_n_0 ;
  wire \mem_wstrb[3]_i_6_n_0 ;
  wire [31:0]next_irq_pending;
  wire p_0_in;
  wire [29:0]p_0_in__0;
  wire p_10_in;
  wire p_11_in;
  wire p_12_in;
  wire [1:0]p_13_in;
  wire [2:0]p_3_in;
  wire [0:0]p_5_in;
  wire [31:1]p_5_out;
  wire p_72_in;
  wire prefetched_high_word_reg_0;
  wire prefetched_high_word_reg_1;
  wire \reg_next_pc[10]_i_2_n_0 ;
  wire \reg_next_pc[11]_i_2_n_0 ;
  wire \reg_next_pc[12]_i_10_n_0 ;
  wire \reg_next_pc[12]_i_11_n_0 ;
  wire \reg_next_pc[12]_i_2_n_0 ;
  wire \reg_next_pc[12]_i_4_n_0 ;
  wire \reg_next_pc[12]_i_5_n_0 ;
  wire \reg_next_pc[12]_i_6_n_0 ;
  wire \reg_next_pc[12]_i_7_n_0 ;
  wire \reg_next_pc[12]_i_8_n_0 ;
  wire \reg_next_pc[12]_i_9_n_0 ;
  wire \reg_next_pc[13]_i_2_n_0 ;
  wire \reg_next_pc[14]_i_2_n_0 ;
  wire \reg_next_pc[15]_i_2_n_0 ;
  wire \reg_next_pc[16]_i_10_n_0 ;
  wire \reg_next_pc[16]_i_11_n_0 ;
  wire \reg_next_pc[16]_i_2_n_0 ;
  wire \reg_next_pc[16]_i_4_n_0 ;
  wire \reg_next_pc[16]_i_5_n_0 ;
  wire \reg_next_pc[16]_i_6_n_0 ;
  wire \reg_next_pc[16]_i_7_n_0 ;
  wire \reg_next_pc[16]_i_8_n_0 ;
  wire \reg_next_pc[16]_i_9_n_0 ;
  wire \reg_next_pc[17]_i_2_n_0 ;
  wire \reg_next_pc[18]_i_2_n_0 ;
  wire \reg_next_pc[19]_i_2_n_0 ;
  wire \reg_next_pc[1]_i_2_n_0 ;
  wire \reg_next_pc[20]_i_10_n_0 ;
  wire \reg_next_pc[20]_i_11_n_0 ;
  wire \reg_next_pc[20]_i_2_n_0 ;
  wire \reg_next_pc[20]_i_4_n_0 ;
  wire \reg_next_pc[20]_i_5_n_0 ;
  wire \reg_next_pc[20]_i_6_n_0 ;
  wire \reg_next_pc[20]_i_7_n_0 ;
  wire \reg_next_pc[20]_i_8_n_0 ;
  wire \reg_next_pc[20]_i_9_n_0 ;
  wire \reg_next_pc[21]_i_2_n_0 ;
  wire \reg_next_pc[22]_i_2_n_0 ;
  wire \reg_next_pc[23]_i_2_n_0 ;
  wire \reg_next_pc[24]_i_10_n_0 ;
  wire \reg_next_pc[24]_i_11_n_0 ;
  wire \reg_next_pc[24]_i_2_n_0 ;
  wire \reg_next_pc[24]_i_4_n_0 ;
  wire \reg_next_pc[24]_i_5_n_0 ;
  wire \reg_next_pc[24]_i_6_n_0 ;
  wire \reg_next_pc[24]_i_7_n_0 ;
  wire \reg_next_pc[24]_i_8_n_0 ;
  wire \reg_next_pc[24]_i_9_n_0 ;
  wire \reg_next_pc[25]_i_2_n_0 ;
  wire \reg_next_pc[26]_i_2_n_0 ;
  wire \reg_next_pc[27]_i_2_n_0 ;
  wire \reg_next_pc[28]_i_2_n_0 ;
  wire \reg_next_pc[29]_i_2_n_0 ;
  wire \reg_next_pc[2]_i_2_n_0 ;
  wire \reg_next_pc[30]_i_2_n_0 ;
  wire \reg_next_pc[30]_i_3_n_0 ;
  wire \reg_next_pc[30]_i_4_n_0 ;
  wire \reg_next_pc[31]_i_10_n_0 ;
  wire \reg_next_pc[31]_i_11_n_0 ;
  wire \reg_next_pc[31]_i_12_n_0 ;
  wire \reg_next_pc[31]_i_13_n_0 ;
  wire \reg_next_pc[31]_i_14_n_0 ;
  wire \reg_next_pc[31]_i_15_n_0 ;
  wire \reg_next_pc[31]_i_16_n_0 ;
  wire \reg_next_pc[31]_i_4_n_0 ;
  wire \reg_next_pc[31]_i_5_n_0 ;
  wire \reg_next_pc[31]_i_6_n_0 ;
  wire \reg_next_pc[31]_i_7_n_0 ;
  wire \reg_next_pc[31]_i_8_n_0 ;
  wire \reg_next_pc[31]_i_9_n_0 ;
  wire \reg_next_pc[3]_i_2_n_0 ;
  wire \reg_next_pc[4]_i_10_n_0 ;
  wire \reg_next_pc[4]_i_11_n_0 ;
  wire \reg_next_pc[4]_i_12_n_0 ;
  wire \reg_next_pc[4]_i_2_n_0 ;
  wire \reg_next_pc[4]_i_4_n_0 ;
  wire \reg_next_pc[4]_i_5_n_0 ;
  wire \reg_next_pc[4]_i_6_n_0 ;
  wire \reg_next_pc[4]_i_7_n_0 ;
  wire \reg_next_pc[4]_i_8_n_0 ;
  wire \reg_next_pc[4]_i_9_n_0 ;
  wire \reg_next_pc[5]_i_2_n_0 ;
  wire \reg_next_pc[6]_i_2_n_0 ;
  wire \reg_next_pc[7]_i_2_n_0 ;
  wire \reg_next_pc[8]_i_10_n_0 ;
  wire \reg_next_pc[8]_i_11_n_0 ;
  wire \reg_next_pc[8]_i_2_n_0 ;
  wire \reg_next_pc[8]_i_4_n_0 ;
  wire \reg_next_pc[8]_i_5_n_0 ;
  wire \reg_next_pc[8]_i_6_n_0 ;
  wire \reg_next_pc[8]_i_7_n_0 ;
  wire \reg_next_pc[8]_i_8_n_0 ;
  wire \reg_next_pc[8]_i_9_n_0 ;
  wire \reg_next_pc[9]_i_2_n_0 ;
  wire \reg_next_pc_reg[12]_i_3_n_0 ;
  wire \reg_next_pc_reg[12]_i_3_n_1 ;
  wire \reg_next_pc_reg[12]_i_3_n_2 ;
  wire \reg_next_pc_reg[12]_i_3_n_3 ;
  wire \reg_next_pc_reg[12]_i_3_n_4 ;
  wire \reg_next_pc_reg[12]_i_3_n_5 ;
  wire \reg_next_pc_reg[12]_i_3_n_6 ;
  wire \reg_next_pc_reg[12]_i_3_n_7 ;
  wire \reg_next_pc_reg[16]_i_3_n_0 ;
  wire \reg_next_pc_reg[16]_i_3_n_1 ;
  wire \reg_next_pc_reg[16]_i_3_n_2 ;
  wire \reg_next_pc_reg[16]_i_3_n_3 ;
  wire \reg_next_pc_reg[16]_i_3_n_4 ;
  wire \reg_next_pc_reg[16]_i_3_n_5 ;
  wire \reg_next_pc_reg[16]_i_3_n_6 ;
  wire \reg_next_pc_reg[16]_i_3_n_7 ;
  wire \reg_next_pc_reg[20]_i_3_n_0 ;
  wire \reg_next_pc_reg[20]_i_3_n_1 ;
  wire \reg_next_pc_reg[20]_i_3_n_2 ;
  wire \reg_next_pc_reg[20]_i_3_n_3 ;
  wire \reg_next_pc_reg[20]_i_3_n_4 ;
  wire \reg_next_pc_reg[20]_i_3_n_5 ;
  wire \reg_next_pc_reg[20]_i_3_n_6 ;
  wire \reg_next_pc_reg[20]_i_3_n_7 ;
  wire \reg_next_pc_reg[24]_i_3_n_0 ;
  wire \reg_next_pc_reg[24]_i_3_n_1 ;
  wire \reg_next_pc_reg[24]_i_3_n_2 ;
  wire \reg_next_pc_reg[24]_i_3_n_3 ;
  wire \reg_next_pc_reg[24]_i_3_n_4 ;
  wire \reg_next_pc_reg[24]_i_3_n_5 ;
  wire \reg_next_pc_reg[24]_i_3_n_6 ;
  wire \reg_next_pc_reg[24]_i_3_n_7 ;
  wire \reg_next_pc_reg[31]_i_2_n_2 ;
  wire \reg_next_pc_reg[31]_i_2_n_3 ;
  wire \reg_next_pc_reg[31]_i_2_n_5 ;
  wire \reg_next_pc_reg[31]_i_2_n_6 ;
  wire \reg_next_pc_reg[31]_i_2_n_7 ;
  wire \reg_next_pc_reg[31]_i_3_n_0 ;
  wire \reg_next_pc_reg[31]_i_3_n_1 ;
  wire \reg_next_pc_reg[31]_i_3_n_2 ;
  wire \reg_next_pc_reg[31]_i_3_n_3 ;
  wire \reg_next_pc_reg[31]_i_3_n_4 ;
  wire \reg_next_pc_reg[31]_i_3_n_5 ;
  wire \reg_next_pc_reg[31]_i_3_n_6 ;
  wire \reg_next_pc_reg[31]_i_3_n_7 ;
  wire \reg_next_pc_reg[4]_i_3_n_0 ;
  wire \reg_next_pc_reg[4]_i_3_n_1 ;
  wire \reg_next_pc_reg[4]_i_3_n_2 ;
  wire \reg_next_pc_reg[4]_i_3_n_3 ;
  wire \reg_next_pc_reg[4]_i_3_n_4 ;
  wire \reg_next_pc_reg[4]_i_3_n_5 ;
  wire \reg_next_pc_reg[4]_i_3_n_6 ;
  wire \reg_next_pc_reg[4]_i_3_n_7 ;
  wire \reg_next_pc_reg[8]_i_3_n_0 ;
  wire \reg_next_pc_reg[8]_i_3_n_1 ;
  wire \reg_next_pc_reg[8]_i_3_n_2 ;
  wire \reg_next_pc_reg[8]_i_3_n_3 ;
  wire \reg_next_pc_reg[8]_i_3_n_4 ;
  wire \reg_next_pc_reg[8]_i_3_n_5 ;
  wire \reg_next_pc_reg[8]_i_3_n_6 ;
  wire \reg_next_pc_reg[8]_i_3_n_7 ;
  wire \reg_next_pc_reg_n_0_[10] ;
  wire \reg_next_pc_reg_n_0_[11] ;
  wire \reg_next_pc_reg_n_0_[12] ;
  wire \reg_next_pc_reg_n_0_[13] ;
  wire \reg_next_pc_reg_n_0_[14] ;
  wire \reg_next_pc_reg_n_0_[15] ;
  wire \reg_next_pc_reg_n_0_[16] ;
  wire \reg_next_pc_reg_n_0_[17] ;
  wire \reg_next_pc_reg_n_0_[18] ;
  wire \reg_next_pc_reg_n_0_[19] ;
  wire \reg_next_pc_reg_n_0_[1] ;
  wire \reg_next_pc_reg_n_0_[20] ;
  wire \reg_next_pc_reg_n_0_[21] ;
  wire \reg_next_pc_reg_n_0_[22] ;
  wire \reg_next_pc_reg_n_0_[23] ;
  wire \reg_next_pc_reg_n_0_[24] ;
  wire \reg_next_pc_reg_n_0_[25] ;
  wire \reg_next_pc_reg_n_0_[26] ;
  wire \reg_next_pc_reg_n_0_[27] ;
  wire \reg_next_pc_reg_n_0_[28] ;
  wire \reg_next_pc_reg_n_0_[29] ;
  wire \reg_next_pc_reg_n_0_[2] ;
  wire \reg_next_pc_reg_n_0_[30] ;
  wire \reg_next_pc_reg_n_0_[31] ;
  wire \reg_next_pc_reg_n_0_[3] ;
  wire \reg_next_pc_reg_n_0_[4] ;
  wire \reg_next_pc_reg_n_0_[5] ;
  wire \reg_next_pc_reg_n_0_[6] ;
  wire \reg_next_pc_reg_n_0_[7] ;
  wire \reg_next_pc_reg_n_0_[8] ;
  wire \reg_next_pc_reg_n_0_[9] ;
  wire [31:0]reg_op1;
  wire \reg_op1[0]_i_2_n_0 ;
  wire \reg_op1[10]_i_2_n_0 ;
  wire \reg_op1[10]_i_3_n_0 ;
  wire \reg_op1[10]_i_4_n_0 ;
  wire \reg_op1[11]_i_2_n_0 ;
  wire \reg_op1[11]_i_3_n_0 ;
  wire \reg_op1[11]_i_4_n_0 ;
  wire \reg_op1[11]_i_6_n_0 ;
  wire \reg_op1[11]_i_7_n_0 ;
  wire \reg_op1[11]_i_8_n_0 ;
  wire \reg_op1[11]_i_9_n_0 ;
  wire \reg_op1[12]_i_2_n_0 ;
  wire \reg_op1[12]_i_3_n_0 ;
  wire \reg_op1[12]_i_4_n_0 ;
  wire \reg_op1[13]_i_2_n_0 ;
  wire \reg_op1[13]_i_3_n_0 ;
  wire \reg_op1[13]_i_4_n_0 ;
  wire \reg_op1[14]_i_2_n_0 ;
  wire \reg_op1[14]_i_3_n_0 ;
  wire \reg_op1[14]_i_4_n_0 ;
  wire \reg_op1[15]_i_2_n_0 ;
  wire \reg_op1[15]_i_3_n_0 ;
  wire \reg_op1[15]_i_4_n_0 ;
  wire \reg_op1[15]_i_6_n_0 ;
  wire \reg_op1[15]_i_7_n_0 ;
  wire \reg_op1[15]_i_8_n_0 ;
  wire \reg_op1[15]_i_9_n_0 ;
  wire \reg_op1[16]_i_2_n_0 ;
  wire \reg_op1[16]_i_3_n_0 ;
  wire \reg_op1[16]_i_4_n_0 ;
  wire \reg_op1[17]_i_2_n_0 ;
  wire \reg_op1[17]_i_3_n_0 ;
  wire \reg_op1[17]_i_4_n_0 ;
  wire \reg_op1[18]_i_2_n_0 ;
  wire \reg_op1[18]_i_3_n_0 ;
  wire \reg_op1[18]_i_4_n_0 ;
  wire \reg_op1[19]_i_2_n_0 ;
  wire \reg_op1[19]_i_3_n_0 ;
  wire \reg_op1[19]_i_4_n_0 ;
  wire \reg_op1[19]_i_6_n_0 ;
  wire \reg_op1[19]_i_7_n_0 ;
  wire \reg_op1[19]_i_8_n_0 ;
  wire \reg_op1[19]_i_9_n_0 ;
  wire \reg_op1[1]_i_2_n_0 ;
  wire \reg_op1[1]_i_3_n_0 ;
  wire \reg_op1[20]_i_2_n_0 ;
  wire \reg_op1[20]_i_3_n_0 ;
  wire \reg_op1[20]_i_4_n_0 ;
  wire \reg_op1[21]_i_2_n_0 ;
  wire \reg_op1[21]_i_3_n_0 ;
  wire \reg_op1[21]_i_4_n_0 ;
  wire \reg_op1[22]_i_2_n_0 ;
  wire \reg_op1[22]_i_3_n_0 ;
  wire \reg_op1[22]_i_4_n_0 ;
  wire \reg_op1[23]_i_2_n_0 ;
  wire \reg_op1[23]_i_3_n_0 ;
  wire \reg_op1[23]_i_4_n_0 ;
  wire \reg_op1[23]_i_6_n_0 ;
  wire \reg_op1[23]_i_7_n_0 ;
  wire \reg_op1[23]_i_8_n_0 ;
  wire \reg_op1[23]_i_9_n_0 ;
  wire \reg_op1[24]_i_2_n_0 ;
  wire \reg_op1[24]_i_3_n_0 ;
  wire \reg_op1[24]_i_4_n_0 ;
  wire \reg_op1[25]_i_2_n_0 ;
  wire \reg_op1[25]_i_3_n_0 ;
  wire \reg_op1[25]_i_4_n_0 ;
  wire \reg_op1[26]_i_2_n_0 ;
  wire \reg_op1[26]_i_3_n_0 ;
  wire \reg_op1[26]_i_4_n_0 ;
  wire \reg_op1[27]_i_2_n_0 ;
  wire \reg_op1[27]_i_3_n_0 ;
  wire \reg_op1[27]_i_4_n_0 ;
  wire \reg_op1[27]_i_6_n_0 ;
  wire \reg_op1[27]_i_7_n_0 ;
  wire \reg_op1[27]_i_8_n_0 ;
  wire \reg_op1[27]_i_9_n_0 ;
  wire \reg_op1[28]_i_2_n_0 ;
  wire \reg_op1[28]_i_3_n_0 ;
  wire \reg_op1[29]_i_2_n_0 ;
  wire \reg_op1[29]_i_3_n_0 ;
  wire \reg_op1[2]_i_2_n_0 ;
  wire \reg_op1[2]_i_3_n_0 ;
  wire \reg_op1[30]_i_2_n_0 ;
  wire \reg_op1[30]_i_3_n_0 ;
  wire \reg_op1[30]_i_4_n_0 ;
  wire \reg_op1[30]_i_5_n_0 ;
  wire \reg_op1[30]_i_6_n_0 ;
  wire \reg_op1[30]_i_7_n_0 ;
  wire \reg_op1[31]_i_10_n_0 ;
  wire \reg_op1[31]_i_12_n_0 ;
  wire \reg_op1[31]_i_13_n_0 ;
  wire \reg_op1[31]_i_14_n_0 ;
  wire \reg_op1[31]_i_15_n_0 ;
  wire \reg_op1[31]_i_1_n_0 ;
  wire \reg_op1[31]_i_3_n_0 ;
  wire \reg_op1[31]_i_4_n_0 ;
  wire \reg_op1[31]_i_5_n_0 ;
  wire \reg_op1[31]_i_6_n_0 ;
  wire \reg_op1[31]_i_7_n_0 ;
  wire \reg_op1[31]_i_8_n_0 ;
  wire \reg_op1[31]_i_9_n_0 ;
  wire \reg_op1[3]_i_10_n_0 ;
  wire \reg_op1[3]_i_2_n_0 ;
  wire \reg_op1[3]_i_3_n_0 ;
  wire \reg_op1[3]_i_4_n_0 ;
  wire \reg_op1[3]_i_5_n_0 ;
  wire \reg_op1[3]_i_7_n_0 ;
  wire \reg_op1[3]_i_8_n_0 ;
  wire \reg_op1[3]_i_9_n_0 ;
  wire \reg_op1[4]_i_2_n_0 ;
  wire \reg_op1[4]_i_3_n_0 ;
  wire \reg_op1[4]_i_4_n_0 ;
  wire \reg_op1[5]_i_2_n_0 ;
  wire \reg_op1[5]_i_3_n_0 ;
  wire \reg_op1[5]_i_4_n_0 ;
  wire \reg_op1[6]_i_2_n_0 ;
  wire \reg_op1[6]_i_3_n_0 ;
  wire \reg_op1[6]_i_4_n_0 ;
  wire \reg_op1[7]_i_2_n_0 ;
  wire \reg_op1[7]_i_3_n_0 ;
  wire \reg_op1[7]_i_4_n_0 ;
  wire \reg_op1[7]_i_6_n_0 ;
  wire \reg_op1[7]_i_7_n_0 ;
  wire \reg_op1[7]_i_8_n_0 ;
  wire \reg_op1[7]_i_9_n_0 ;
  wire \reg_op1[8]_i_2_n_0 ;
  wire \reg_op1[8]_i_3_n_0 ;
  wire \reg_op1[8]_i_4_n_0 ;
  wire \reg_op1[9]_i_2_n_0 ;
  wire \reg_op1[9]_i_3_n_0 ;
  wire \reg_op1[9]_i_4_n_0 ;
  wire \reg_op1_reg[11]_i_5_n_0 ;
  wire \reg_op1_reg[11]_i_5_n_1 ;
  wire \reg_op1_reg[11]_i_5_n_2 ;
  wire \reg_op1_reg[11]_i_5_n_3 ;
  wire \reg_op1_reg[11]_i_5_n_4 ;
  wire \reg_op1_reg[11]_i_5_n_5 ;
  wire \reg_op1_reg[11]_i_5_n_6 ;
  wire \reg_op1_reg[11]_i_5_n_7 ;
  wire \reg_op1_reg[15]_i_5_n_0 ;
  wire \reg_op1_reg[15]_i_5_n_1 ;
  wire \reg_op1_reg[15]_i_5_n_2 ;
  wire \reg_op1_reg[15]_i_5_n_3 ;
  wire \reg_op1_reg[15]_i_5_n_4 ;
  wire \reg_op1_reg[15]_i_5_n_5 ;
  wire \reg_op1_reg[15]_i_5_n_6 ;
  wire \reg_op1_reg[15]_i_5_n_7 ;
  wire \reg_op1_reg[19]_i_5_n_0 ;
  wire \reg_op1_reg[19]_i_5_n_1 ;
  wire \reg_op1_reg[19]_i_5_n_2 ;
  wire \reg_op1_reg[19]_i_5_n_3 ;
  wire \reg_op1_reg[19]_i_5_n_4 ;
  wire \reg_op1_reg[19]_i_5_n_5 ;
  wire \reg_op1_reg[19]_i_5_n_6 ;
  wire \reg_op1_reg[19]_i_5_n_7 ;
  wire \reg_op1_reg[23]_i_5_n_0 ;
  wire \reg_op1_reg[23]_i_5_n_1 ;
  wire \reg_op1_reg[23]_i_5_n_2 ;
  wire \reg_op1_reg[23]_i_5_n_3 ;
  wire \reg_op1_reg[23]_i_5_n_4 ;
  wire \reg_op1_reg[23]_i_5_n_5 ;
  wire \reg_op1_reg[23]_i_5_n_6 ;
  wire \reg_op1_reg[23]_i_5_n_7 ;
  wire \reg_op1_reg[27]_i_5_n_0 ;
  wire \reg_op1_reg[27]_i_5_n_1 ;
  wire \reg_op1_reg[27]_i_5_n_2 ;
  wire \reg_op1_reg[27]_i_5_n_3 ;
  wire \reg_op1_reg[27]_i_5_n_4 ;
  wire \reg_op1_reg[27]_i_5_n_5 ;
  wire \reg_op1_reg[27]_i_5_n_6 ;
  wire \reg_op1_reg[27]_i_5_n_7 ;
  wire \reg_op1_reg[31]_i_11_n_1 ;
  wire \reg_op1_reg[31]_i_11_n_2 ;
  wire \reg_op1_reg[31]_i_11_n_3 ;
  wire \reg_op1_reg[31]_i_11_n_4 ;
  wire \reg_op1_reg[31]_i_11_n_5 ;
  wire \reg_op1_reg[31]_i_11_n_6 ;
  wire \reg_op1_reg[31]_i_11_n_7 ;
  wire \reg_op1_reg[3]_i_6_n_0 ;
  wire \reg_op1_reg[3]_i_6_n_1 ;
  wire \reg_op1_reg[3]_i_6_n_2 ;
  wire \reg_op1_reg[3]_i_6_n_3 ;
  wire \reg_op1_reg[3]_i_6_n_4 ;
  wire \reg_op1_reg[3]_i_6_n_5 ;
  wire \reg_op1_reg[3]_i_6_n_6 ;
  wire \reg_op1_reg[3]_i_6_n_7 ;
  wire \reg_op1_reg[7]_i_5_n_0 ;
  wire \reg_op1_reg[7]_i_5_n_1 ;
  wire \reg_op1_reg[7]_i_5_n_2 ;
  wire \reg_op1_reg[7]_i_5_n_3 ;
  wire \reg_op1_reg[7]_i_5_n_4 ;
  wire \reg_op1_reg[7]_i_5_n_5 ;
  wire \reg_op1_reg[7]_i_5_n_6 ;
  wire \reg_op1_reg[7]_i_5_n_7 ;
  wire \reg_op1_reg_n_0_[0] ;
  wire \reg_op1_reg_n_0_[10] ;
  wire \reg_op1_reg_n_0_[11] ;
  wire \reg_op1_reg_n_0_[12] ;
  wire \reg_op1_reg_n_0_[13] ;
  wire \reg_op1_reg_n_0_[14] ;
  wire \reg_op1_reg_n_0_[15] ;
  wire \reg_op1_reg_n_0_[16] ;
  wire \reg_op1_reg_n_0_[17] ;
  wire \reg_op1_reg_n_0_[18] ;
  wire \reg_op1_reg_n_0_[19] ;
  wire \reg_op1_reg_n_0_[1] ;
  wire \reg_op1_reg_n_0_[20] ;
  wire \reg_op1_reg_n_0_[21] ;
  wire \reg_op1_reg_n_0_[22] ;
  wire \reg_op1_reg_n_0_[23] ;
  wire \reg_op1_reg_n_0_[24] ;
  wire \reg_op1_reg_n_0_[25] ;
  wire \reg_op1_reg_n_0_[26] ;
  wire \reg_op1_reg_n_0_[27] ;
  wire \reg_op1_reg_n_0_[28] ;
  wire \reg_op1_reg_n_0_[29] ;
  wire \reg_op1_reg_n_0_[2] ;
  wire \reg_op1_reg_n_0_[30] ;
  wire \reg_op1_reg_n_0_[31] ;
  wire \reg_op1_reg_n_0_[3] ;
  wire \reg_op1_reg_n_0_[4] ;
  wire \reg_op1_reg_n_0_[5] ;
  wire \reg_op1_reg_n_0_[6] ;
  wire \reg_op1_reg_n_0_[7] ;
  wire \reg_op1_reg_n_0_[8] ;
  wire \reg_op1_reg_n_0_[9] ;
  wire \reg_op2[0]_i_1_n_0 ;
  wire \reg_op2[10]_i_1_n_0 ;
  wire \reg_op2[11]_i_1_n_0 ;
  wire \reg_op2[12]_i_1_n_0 ;
  wire \reg_op2[13]_i_1_n_0 ;
  wire \reg_op2[14]_i_1_n_0 ;
  wire \reg_op2[15]_i_1_n_0 ;
  wire \reg_op2[16]_i_1_n_0 ;
  wire \reg_op2[17]_i_1_n_0 ;
  wire \reg_op2[18]_i_1_n_0 ;
  wire \reg_op2[19]_i_1_n_0 ;
  wire \reg_op2[1]_i_1_n_0 ;
  wire \reg_op2[20]_i_1_n_0 ;
  wire \reg_op2[21]_i_1_n_0 ;
  wire \reg_op2[22]_i_1_n_0 ;
  wire \reg_op2[23]_i_1_n_0 ;
  wire \reg_op2[24]_i_1_n_0 ;
  wire \reg_op2[25]_i_1_n_0 ;
  wire \reg_op2[26]_i_1_n_0 ;
  wire \reg_op2[27]_i_1_n_0 ;
  wire \reg_op2[28]_i_1_n_0 ;
  wire \reg_op2[29]_i_1_n_0 ;
  wire \reg_op2[2]_i_1_n_0 ;
  wire \reg_op2[30]_i_1_n_0 ;
  wire \reg_op2[31]_i_1_n_0 ;
  wire \reg_op2[31]_i_2_n_0 ;
  wire \reg_op2[3]_i_1_n_0 ;
  wire \reg_op2[4]_i_1_n_0 ;
  wire \reg_op2[5]_i_1_n_0 ;
  wire \reg_op2[6]_i_1_n_0 ;
  wire \reg_op2[7]_i_1_n_0 ;
  wire \reg_op2[8]_i_1_n_0 ;
  wire \reg_op2[9]_i_1_n_0 ;
  wire \reg_op2_reg_n_0_[0] ;
  wire \reg_op2_reg_n_0_[10] ;
  wire \reg_op2_reg_n_0_[11] ;
  wire \reg_op2_reg_n_0_[12] ;
  wire \reg_op2_reg_n_0_[13] ;
  wire \reg_op2_reg_n_0_[14] ;
  wire \reg_op2_reg_n_0_[15] ;
  wire \reg_op2_reg_n_0_[16] ;
  wire \reg_op2_reg_n_0_[17] ;
  wire \reg_op2_reg_n_0_[18] ;
  wire \reg_op2_reg_n_0_[19] ;
  wire \reg_op2_reg_n_0_[1] ;
  wire \reg_op2_reg_n_0_[20] ;
  wire \reg_op2_reg_n_0_[21] ;
  wire \reg_op2_reg_n_0_[22] ;
  wire \reg_op2_reg_n_0_[23] ;
  wire \reg_op2_reg_n_0_[24] ;
  wire \reg_op2_reg_n_0_[25] ;
  wire \reg_op2_reg_n_0_[26] ;
  wire \reg_op2_reg_n_0_[27] ;
  wire \reg_op2_reg_n_0_[28] ;
  wire \reg_op2_reg_n_0_[29] ;
  wire \reg_op2_reg_n_0_[2] ;
  wire \reg_op2_reg_n_0_[30] ;
  wire \reg_op2_reg_n_0_[31] ;
  wire \reg_op2_reg_n_0_[3] ;
  wire \reg_op2_reg_n_0_[4] ;
  wire \reg_op2_reg_n_0_[5] ;
  wire \reg_op2_reg_n_0_[6] ;
  wire \reg_op2_reg_n_0_[7] ;
  wire \reg_op2_reg_n_0_[8] ;
  wire \reg_op2_reg_n_0_[9] ;
  wire [31:0]reg_out;
  wire [31:0]reg_out1;
  wire \reg_out[0]_i_2_n_0 ;
  wire \reg_out[0]_i_3_n_0 ;
  wire \reg_out[0]_i_4_n_0 ;
  wire \reg_out[0]_i_5_n_0 ;
  wire \reg_out[0]_i_6_n_0 ;
  wire \reg_out[0]_i_7_n_0 ;
  wire \reg_out[10]_i_2_n_0 ;
  wire \reg_out[10]_i_3_n_0 ;
  wire \reg_out[10]_i_4_n_0 ;
  wire \reg_out[10]_i_5_n_0 ;
  wire \reg_out[10]_i_6_n_0 ;
  wire \reg_out[10]_i_7_n_0 ;
  wire \reg_out[10]_i_8_n_0 ;
  wire \reg_out[11]_i_2_n_0 ;
  wire \reg_out[11]_i_3_n_0 ;
  wire \reg_out[11]_i_4_n_0 ;
  wire \reg_out[11]_i_5_n_0 ;
  wire \reg_out[11]_i_6_n_0 ;
  wire \reg_out[11]_i_7_n_0 ;
  wire \reg_out[11]_i_8_n_0 ;
  wire \reg_out[12]_i_2_n_0 ;
  wire \reg_out[12]_i_3_n_0 ;
  wire \reg_out[12]_i_4_n_0 ;
  wire \reg_out[12]_i_5_n_0 ;
  wire \reg_out[12]_i_6_n_0 ;
  wire \reg_out[12]_i_7_n_0 ;
  wire \reg_out[12]_i_8_n_0 ;
  wire \reg_out[13]_i_2_n_0 ;
  wire \reg_out[13]_i_3_n_0 ;
  wire \reg_out[13]_i_4_n_0 ;
  wire \reg_out[13]_i_5_n_0 ;
  wire \reg_out[13]_i_6_n_0 ;
  wire \reg_out[13]_i_7_n_0 ;
  wire \reg_out[13]_i_8_n_0 ;
  wire \reg_out[14]_i_10_n_0 ;
  wire \reg_out[14]_i_2_n_0 ;
  wire \reg_out[14]_i_3_n_0 ;
  wire \reg_out[14]_i_4_n_0 ;
  wire \reg_out[14]_i_5_n_0 ;
  wire \reg_out[14]_i_6_n_0 ;
  wire \reg_out[14]_i_7_n_0 ;
  wire \reg_out[14]_i_8_n_0 ;
  wire \reg_out[14]_i_9_n_0 ;
  wire \reg_out[15]_i_10_n_0 ;
  wire \reg_out[15]_i_2_n_0 ;
  wire \reg_out[15]_i_3_n_0 ;
  wire \reg_out[15]_i_4_n_0 ;
  wire \reg_out[15]_i_5_n_0 ;
  wire \reg_out[15]_i_6_n_0 ;
  wire \reg_out[15]_i_7_n_0 ;
  wire \reg_out[15]_i_8_n_0 ;
  wire \reg_out[15]_i_9_n_0 ;
  wire \reg_out[16]_i_10_n_0 ;
  wire \reg_out[16]_i_11_n_0 ;
  wire \reg_out[16]_i_12_n_0 ;
  wire \reg_out[16]_i_13_n_0 ;
  wire \reg_out[16]_i_14_n_0 ;
  wire \reg_out[16]_i_15_n_0 ;
  wire \reg_out[16]_i_16_n_0 ;
  wire \reg_out[16]_i_17_n_0 ;
  wire \reg_out[16]_i_2_n_0 ;
  wire \reg_out[16]_i_3_n_0 ;
  wire \reg_out[16]_i_4_n_0 ;
  wire \reg_out[16]_i_5_n_0 ;
  wire \reg_out[16]_i_6_n_0 ;
  wire \reg_out[16]_i_8_n_0 ;
  wire \reg_out[17]_i_2_n_0 ;
  wire \reg_out[17]_i_3_n_0 ;
  wire \reg_out[17]_i_4_n_0 ;
  wire \reg_out[17]_i_5_n_0 ;
  wire \reg_out[17]_i_6_n_0 ;
  wire \reg_out[17]_i_7_n_0 ;
  wire \reg_out[18]_i_2_n_0 ;
  wire \reg_out[18]_i_3_n_0 ;
  wire \reg_out[18]_i_4_n_0 ;
  wire \reg_out[18]_i_5_n_0 ;
  wire \reg_out[18]_i_6_n_0 ;
  wire \reg_out[18]_i_7_n_0 ;
  wire \reg_out[19]_i_2_n_0 ;
  wire \reg_out[19]_i_3_n_0 ;
  wire \reg_out[19]_i_4_n_0 ;
  wire \reg_out[19]_i_5_n_0 ;
  wire \reg_out[19]_i_6_n_0 ;
  wire \reg_out[19]_i_7_n_0 ;
  wire \reg_out[1]_i_2_n_0 ;
  wire \reg_out[1]_i_3_n_0 ;
  wire \reg_out[1]_i_4_n_0 ;
  wire \reg_out[1]_i_5_n_0 ;
  wire \reg_out[1]_i_6_n_0 ;
  wire \reg_out[1]_i_7_n_0 ;
  wire \reg_out[20]_i_10_n_0 ;
  wire \reg_out[20]_i_11_n_0 ;
  wire \reg_out[20]_i_12_n_0 ;
  wire \reg_out[20]_i_2_n_0 ;
  wire \reg_out[20]_i_3_n_0 ;
  wire \reg_out[20]_i_4_n_0 ;
  wire \reg_out[20]_i_5_n_0 ;
  wire \reg_out[20]_i_6_n_0 ;
  wire \reg_out[20]_i_8_n_0 ;
  wire \reg_out[20]_i_9_n_0 ;
  wire \reg_out[21]_i_2_n_0 ;
  wire \reg_out[21]_i_3_n_0 ;
  wire \reg_out[21]_i_4_n_0 ;
  wire \reg_out[21]_i_5_n_0 ;
  wire \reg_out[21]_i_6_n_0 ;
  wire \reg_out[21]_i_7_n_0 ;
  wire \reg_out[22]_i_2_n_0 ;
  wire \reg_out[22]_i_3_n_0 ;
  wire \reg_out[22]_i_4_n_0 ;
  wire \reg_out[22]_i_5_n_0 ;
  wire \reg_out[22]_i_6_n_0 ;
  wire \reg_out[22]_i_7_n_0 ;
  wire \reg_out[23]_i_2_n_0 ;
  wire \reg_out[23]_i_3_n_0 ;
  wire \reg_out[23]_i_4_n_0 ;
  wire \reg_out[23]_i_5_n_0 ;
  wire \reg_out[23]_i_6_n_0 ;
  wire \reg_out[23]_i_7_n_0 ;
  wire \reg_out[24]_i_10_n_0 ;
  wire \reg_out[24]_i_11_n_0 ;
  wire \reg_out[24]_i_12_n_0 ;
  wire \reg_out[24]_i_2_n_0 ;
  wire \reg_out[24]_i_3_n_0 ;
  wire \reg_out[24]_i_4_n_0 ;
  wire \reg_out[24]_i_5_n_0 ;
  wire \reg_out[24]_i_6_n_0 ;
  wire \reg_out[24]_i_8_n_0 ;
  wire \reg_out[24]_i_9_n_0 ;
  wire \reg_out[25]_i_2_n_0 ;
  wire \reg_out[25]_i_3_n_0 ;
  wire \reg_out[25]_i_4_n_0 ;
  wire \reg_out[25]_i_5_n_0 ;
  wire \reg_out[25]_i_6_n_0 ;
  wire \reg_out[25]_i_7_n_0 ;
  wire \reg_out[26]_i_2_n_0 ;
  wire \reg_out[26]_i_3_n_0 ;
  wire \reg_out[26]_i_4_n_0 ;
  wire \reg_out[26]_i_5_n_0 ;
  wire \reg_out[26]_i_6_n_0 ;
  wire \reg_out[26]_i_7_n_0 ;
  wire \reg_out[27]_i_2_n_0 ;
  wire \reg_out[27]_i_3_n_0 ;
  wire \reg_out[27]_i_4_n_0 ;
  wire \reg_out[27]_i_5_n_0 ;
  wire \reg_out[27]_i_6_n_0 ;
  wire \reg_out[27]_i_7_n_0 ;
  wire \reg_out[28]_i_10_n_0 ;
  wire \reg_out[28]_i_11_n_0 ;
  wire \reg_out[28]_i_12_n_0 ;
  wire \reg_out[28]_i_2_n_0 ;
  wire \reg_out[28]_i_3_n_0 ;
  wire \reg_out[28]_i_4_n_0 ;
  wire \reg_out[28]_i_5_n_0 ;
  wire \reg_out[28]_i_6_n_0 ;
  wire \reg_out[28]_i_8_n_0 ;
  wire \reg_out[28]_i_9_n_0 ;
  wire \reg_out[29]_i_2_n_0 ;
  wire \reg_out[29]_i_3_n_0 ;
  wire \reg_out[29]_i_4_n_0 ;
  wire \reg_out[29]_i_5_n_0 ;
  wire \reg_out[29]_i_6_n_0 ;
  wire \reg_out[29]_i_7_n_0 ;
  wire \reg_out[2]_i_2_n_0 ;
  wire \reg_out[2]_i_3_n_0 ;
  wire \reg_out[2]_i_4_n_0 ;
  wire \reg_out[2]_i_5_n_0 ;
  wire \reg_out[2]_i_6_n_0 ;
  wire \reg_out[2]_i_7_n_0 ;
  wire \reg_out[30]_i_2_n_0 ;
  wire \reg_out[30]_i_3_n_0 ;
  wire \reg_out[30]_i_4_n_0 ;
  wire \reg_out[30]_i_5_n_0 ;
  wire \reg_out[30]_i_6_n_0 ;
  wire \reg_out[30]_i_7_n_0 ;
  wire \reg_out[31]_i_10_n_0 ;
  wire \reg_out[31]_i_12_n_0 ;
  wire \reg_out[31]_i_13_n_0 ;
  wire \reg_out[31]_i_14_n_0 ;
  wire \reg_out[31]_i_15_n_0 ;
  wire \reg_out[31]_i_16_n_0 ;
  wire \reg_out[31]_i_17_n_0 ;
  wire \reg_out[31]_i_2_n_0 ;
  wire \reg_out[31]_i_3_n_0 ;
  wire \reg_out[31]_i_4_n_0 ;
  wire \reg_out[31]_i_5_n_0 ;
  wire \reg_out[31]_i_6_n_0 ;
  wire \reg_out[31]_i_7_n_0 ;
  wire \reg_out[31]_i_8_n_0 ;
  wire \reg_out[3]_i_2_n_0 ;
  wire \reg_out[3]_i_3_n_0 ;
  wire \reg_out[3]_i_4_n_0 ;
  wire \reg_out[3]_i_5_n_0 ;
  wire \reg_out[3]_i_6_n_0 ;
  wire \reg_out[3]_i_7_n_0 ;
  wire \reg_out[4]_i_10_n_0 ;
  wire \reg_out[4]_i_11_n_0 ;
  wire \reg_out[4]_i_12_n_0 ;
  wire \reg_out[4]_i_2_n_0 ;
  wire \reg_out[4]_i_3_n_0 ;
  wire \reg_out[4]_i_4_n_0 ;
  wire \reg_out[4]_i_5_n_0 ;
  wire \reg_out[4]_i_7_n_0 ;
  wire \reg_out[4]_i_8_n_0 ;
  wire \reg_out[4]_i_9_n_0 ;
  wire \reg_out[5]_i_2_n_0 ;
  wire \reg_out[5]_i_3_n_0 ;
  wire \reg_out[5]_i_4_n_0 ;
  wire \reg_out[5]_i_5_n_0 ;
  wire \reg_out[5]_i_6_n_0 ;
  wire \reg_out[5]_i_7_n_0 ;
  wire \reg_out[6]_i_10_n_0 ;
  wire \reg_out[6]_i_2_n_0 ;
  wire \reg_out[6]_i_3_n_0 ;
  wire \reg_out[6]_i_4_n_0 ;
  wire \reg_out[6]_i_5_n_0 ;
  wire \reg_out[6]_i_6_n_0 ;
  wire \reg_out[6]_i_7_n_0 ;
  wire \reg_out[6]_i_8_n_0 ;
  wire \reg_out[6]_i_9_n_0 ;
  wire \reg_out[7]_i_10_n_0 ;
  wire \reg_out[7]_i_11_n_0 ;
  wire \reg_out[7]_i_12_n_0 ;
  wire \reg_out[7]_i_2_n_0 ;
  wire \reg_out[7]_i_3_n_0 ;
  wire \reg_out[7]_i_4_n_0 ;
  wire \reg_out[7]_i_6_n_0 ;
  wire \reg_out[7]_i_7_n_0 ;
  wire \reg_out[7]_i_8_n_0 ;
  wire \reg_out[7]_i_9_n_0 ;
  wire \reg_out[8]_i_2_n_0 ;
  wire \reg_out[8]_i_3_n_0 ;
  wire \reg_out[8]_i_4_n_0 ;
  wire \reg_out[8]_i_5_n_0 ;
  wire \reg_out[8]_i_6_n_0 ;
  wire \reg_out[8]_i_7_n_0 ;
  wire \reg_out[8]_i_8_n_0 ;
  wire \reg_out[9]_i_2_n_0 ;
  wire \reg_out[9]_i_3_n_0 ;
  wire \reg_out[9]_i_4_n_0 ;
  wire \reg_out[9]_i_5_n_0 ;
  wire \reg_out[9]_i_6_n_0 ;
  wire \reg_out[9]_i_7_n_0 ;
  wire \reg_out[9]_i_8_n_0 ;
  wire \reg_out_reg[16]_i_7_n_0 ;
  wire \reg_out_reg[16]_i_7_n_1 ;
  wire \reg_out_reg[16]_i_7_n_2 ;
  wire \reg_out_reg[16]_i_7_n_3 ;
  wire \reg_out_reg[16]_i_7_n_4 ;
  wire \reg_out_reg[16]_i_7_n_5 ;
  wire \reg_out_reg[16]_i_7_n_6 ;
  wire \reg_out_reg[16]_i_7_n_7 ;
  wire \reg_out_reg[16]_i_9_n_0 ;
  wire \reg_out_reg[16]_i_9_n_1 ;
  wire \reg_out_reg[16]_i_9_n_2 ;
  wire \reg_out_reg[16]_i_9_n_3 ;
  wire \reg_out_reg[16]_i_9_n_4 ;
  wire \reg_out_reg[16]_i_9_n_5 ;
  wire \reg_out_reg[16]_i_9_n_6 ;
  wire \reg_out_reg[16]_i_9_n_7 ;
  wire \reg_out_reg[20]_i_7_n_0 ;
  wire \reg_out_reg[20]_i_7_n_1 ;
  wire \reg_out_reg[20]_i_7_n_2 ;
  wire \reg_out_reg[20]_i_7_n_3 ;
  wire \reg_out_reg[20]_i_7_n_4 ;
  wire \reg_out_reg[20]_i_7_n_5 ;
  wire \reg_out_reg[20]_i_7_n_6 ;
  wire \reg_out_reg[20]_i_7_n_7 ;
  wire \reg_out_reg[24]_i_7_n_0 ;
  wire \reg_out_reg[24]_i_7_n_1 ;
  wire \reg_out_reg[24]_i_7_n_2 ;
  wire \reg_out_reg[24]_i_7_n_3 ;
  wire \reg_out_reg[24]_i_7_n_4 ;
  wire \reg_out_reg[24]_i_7_n_5 ;
  wire \reg_out_reg[24]_i_7_n_6 ;
  wire \reg_out_reg[24]_i_7_n_7 ;
  wire \reg_out_reg[28]_i_7_n_0 ;
  wire \reg_out_reg[28]_i_7_n_1 ;
  wire \reg_out_reg[28]_i_7_n_2 ;
  wire \reg_out_reg[28]_i_7_n_3 ;
  wire \reg_out_reg[28]_i_7_n_4 ;
  wire \reg_out_reg[28]_i_7_n_5 ;
  wire \reg_out_reg[28]_i_7_n_6 ;
  wire \reg_out_reg[28]_i_7_n_7 ;
  wire \reg_out_reg[31]_i_11_n_2 ;
  wire \reg_out_reg[31]_i_11_n_3 ;
  wire \reg_out_reg[31]_i_11_n_5 ;
  wire \reg_out_reg[31]_i_11_n_6 ;
  wire \reg_out_reg[31]_i_11_n_7 ;
  wire \reg_out_reg[4]_i_6_n_0 ;
  wire \reg_out_reg[4]_i_6_n_1 ;
  wire \reg_out_reg[4]_i_6_n_2 ;
  wire \reg_out_reg[4]_i_6_n_3 ;
  wire \reg_out_reg[4]_i_6_n_4 ;
  wire \reg_out_reg[4]_i_6_n_5 ;
  wire \reg_out_reg[4]_i_6_n_6 ;
  wire \reg_out_reg[4]_i_6_n_7 ;
  wire \reg_out_reg[7]_i_5_n_0 ;
  wire \reg_out_reg[7]_i_5_n_1 ;
  wire \reg_out_reg[7]_i_5_n_2 ;
  wire \reg_out_reg[7]_i_5_n_3 ;
  wire \reg_out_reg[7]_i_5_n_4 ;
  wire \reg_out_reg[7]_i_5_n_5 ;
  wire \reg_out_reg[7]_i_5_n_6 ;
  wire \reg_out_reg[7]_i_5_n_7 ;
  wire \reg_out_reg_n_0_[0] ;
  wire \reg_out_reg_n_0_[10] ;
  wire \reg_out_reg_n_0_[11] ;
  wire \reg_out_reg_n_0_[12] ;
  wire \reg_out_reg_n_0_[13] ;
  wire \reg_out_reg_n_0_[14] ;
  wire \reg_out_reg_n_0_[15] ;
  wire \reg_out_reg_n_0_[16] ;
  wire \reg_out_reg_n_0_[17] ;
  wire \reg_out_reg_n_0_[18] ;
  wire \reg_out_reg_n_0_[19] ;
  wire \reg_out_reg_n_0_[1] ;
  wire \reg_out_reg_n_0_[20] ;
  wire \reg_out_reg_n_0_[21] ;
  wire \reg_out_reg_n_0_[22] ;
  wire \reg_out_reg_n_0_[23] ;
  wire \reg_out_reg_n_0_[24] ;
  wire \reg_out_reg_n_0_[25] ;
  wire \reg_out_reg_n_0_[26] ;
  wire \reg_out_reg_n_0_[27] ;
  wire \reg_out_reg_n_0_[28] ;
  wire \reg_out_reg_n_0_[29] ;
  wire \reg_out_reg_n_0_[2] ;
  wire \reg_out_reg_n_0_[30] ;
  wire \reg_out_reg_n_0_[31] ;
  wire \reg_out_reg_n_0_[3] ;
  wire \reg_out_reg_n_0_[4] ;
  wire \reg_out_reg_n_0_[5] ;
  wire \reg_out_reg_n_0_[6] ;
  wire \reg_out_reg_n_0_[7] ;
  wire \reg_out_reg_n_0_[8] ;
  wire \reg_out_reg_n_0_[9] ;
  wire \reg_pc[31]_i_2_n_0 ;
  wire \reg_pc[31]_i_3_n_0 ;
  wire \reg_pc[4]_i_2_n_0 ;
  wire \reg_pc_reg_n_0_[10] ;
  wire \reg_pc_reg_n_0_[11] ;
  wire \reg_pc_reg_n_0_[12] ;
  wire \reg_pc_reg_n_0_[13] ;
  wire \reg_pc_reg_n_0_[14] ;
  wire \reg_pc_reg_n_0_[15] ;
  wire \reg_pc_reg_n_0_[16] ;
  wire \reg_pc_reg_n_0_[17] ;
  wire \reg_pc_reg_n_0_[18] ;
  wire \reg_pc_reg_n_0_[19] ;
  wire \reg_pc_reg_n_0_[1] ;
  wire \reg_pc_reg_n_0_[20] ;
  wire \reg_pc_reg_n_0_[21] ;
  wire \reg_pc_reg_n_0_[22] ;
  wire \reg_pc_reg_n_0_[23] ;
  wire \reg_pc_reg_n_0_[24] ;
  wire \reg_pc_reg_n_0_[25] ;
  wire \reg_pc_reg_n_0_[26] ;
  wire \reg_pc_reg_n_0_[27] ;
  wire \reg_pc_reg_n_0_[28] ;
  wire \reg_pc_reg_n_0_[29] ;
  wire \reg_pc_reg_n_0_[2] ;
  wire \reg_pc_reg_n_0_[30] ;
  wire \reg_pc_reg_n_0_[31] ;
  wire \reg_pc_reg_n_0_[3] ;
  wire \reg_pc_reg_n_0_[4] ;
  wire \reg_pc_reg_n_0_[5] ;
  wire \reg_pc_reg_n_0_[6] ;
  wire \reg_pc_reg_n_0_[7] ;
  wire \reg_pc_reg_n_0_[8] ;
  wire \reg_pc_reg_n_0_[9] ;
  wire [4:0]reg_sh;
  wire [31:0]reg_sh1;
  wire \reg_sh[0]_i_2_n_0 ;
  wire \reg_sh[1]_i_2_n_0 ;
  wire \reg_sh[2]_i_2_n_0 ;
  wire \reg_sh[3]_i_2_n_0 ;
  wire \reg_sh[3]_i_3_n_0 ;
  wire \reg_sh[4]_i_2_n_0 ;
  wire \reg_sh[4]_i_3_n_0 ;
  wire \reg_sh_reg_n_0_[0] ;
  wire \reg_sh_reg_n_0_[1] ;
  wire \reg_sh_reg_n_0_[2] ;
  wire \reg_sh_reg_n_0_[3] ;
  wire \reg_sh_reg_n_0_[4] ;
  wire resetn;
  wire resetn_0;
  wire timer;
  wire \timer[0]_i_1_n_0 ;
  wire \timer[10]_i_1_n_0 ;
  wire \timer[11]_i_1_n_0 ;
  wire \timer[12]_i_1_n_0 ;
  wire \timer[12]_i_3_n_0 ;
  wire \timer[12]_i_4_n_0 ;
  wire \timer[12]_i_5_n_0 ;
  wire \timer[12]_i_6_n_0 ;
  wire \timer[13]_i_1_n_0 ;
  wire \timer[14]_i_1_n_0 ;
  wire \timer[15]_i_1_n_0 ;
  wire \timer[16]_i_1_n_0 ;
  wire \timer[16]_i_3_n_0 ;
  wire \timer[16]_i_4_n_0 ;
  wire \timer[16]_i_5_n_0 ;
  wire \timer[16]_i_6_n_0 ;
  wire \timer[17]_i_1_n_0 ;
  wire \timer[18]_i_1_n_0 ;
  wire \timer[19]_i_1_n_0 ;
  wire \timer[1]_i_1_n_0 ;
  wire \timer[20]_i_1_n_0 ;
  wire \timer[20]_i_3_n_0 ;
  wire \timer[20]_i_4_n_0 ;
  wire \timer[20]_i_5_n_0 ;
  wire \timer[20]_i_6_n_0 ;
  wire \timer[21]_i_1_n_0 ;
  wire \timer[22]_i_1_n_0 ;
  wire \timer[23]_i_1_n_0 ;
  wire \timer[24]_i_1_n_0 ;
  wire \timer[24]_i_3_n_0 ;
  wire \timer[24]_i_4_n_0 ;
  wire \timer[24]_i_5_n_0 ;
  wire \timer[24]_i_6_n_0 ;
  wire \timer[25]_i_1_n_0 ;
  wire \timer[26]_i_1_n_0 ;
  wire \timer[27]_i_1_n_0 ;
  wire \timer[28]_i_1_n_0 ;
  wire \timer[28]_i_3_n_0 ;
  wire \timer[28]_i_4_n_0 ;
  wire \timer[28]_i_5_n_0 ;
  wire \timer[28]_i_6_n_0 ;
  wire \timer[29]_i_1_n_0 ;
  wire \timer[2]_i_1_n_0 ;
  wire \timer[30]_i_1_n_0 ;
  wire \timer[31]_i_10_n_0 ;
  wire \timer[31]_i_11_n_0 ;
  wire \timer[31]_i_12_n_0 ;
  wire \timer[31]_i_13_n_0 ;
  wire \timer[31]_i_14_n_0 ;
  wire \timer[31]_i_15_n_0 ;
  wire \timer[31]_i_2_n_0 ;
  wire \timer[31]_i_3_n_0 ;
  wire \timer[31]_i_4_n_0 ;
  wire \timer[31]_i_5_n_0 ;
  wire \timer[31]_i_7_n_0 ;
  wire \timer[31]_i_8_n_0 ;
  wire \timer[31]_i_9_n_0 ;
  wire \timer[3]_i_1_n_0 ;
  wire \timer[4]_i_1_n_0 ;
  wire \timer[4]_i_3_n_0 ;
  wire \timer[4]_i_4_n_0 ;
  wire \timer[4]_i_5_n_0 ;
  wire \timer[4]_i_6_n_0 ;
  wire \timer[5]_i_1_n_0 ;
  wire \timer[6]_i_1_n_0 ;
  wire \timer[7]_i_1_n_0 ;
  wire \timer[8]_i_1_n_0 ;
  wire \timer[8]_i_3_n_0 ;
  wire \timer[8]_i_4_n_0 ;
  wire \timer[8]_i_5_n_0 ;
  wire \timer[8]_i_6_n_0 ;
  wire \timer[9]_i_1_n_0 ;
  wire \timer_reg[12]_i_2_n_0 ;
  wire \timer_reg[12]_i_2_n_1 ;
  wire \timer_reg[12]_i_2_n_2 ;
  wire \timer_reg[12]_i_2_n_3 ;
  wire \timer_reg[16]_i_2_n_0 ;
  wire \timer_reg[16]_i_2_n_1 ;
  wire \timer_reg[16]_i_2_n_2 ;
  wire \timer_reg[16]_i_2_n_3 ;
  wire \timer_reg[20]_i_2_n_0 ;
  wire \timer_reg[20]_i_2_n_1 ;
  wire \timer_reg[20]_i_2_n_2 ;
  wire \timer_reg[20]_i_2_n_3 ;
  wire \timer_reg[24]_i_2_n_0 ;
  wire \timer_reg[24]_i_2_n_1 ;
  wire \timer_reg[24]_i_2_n_2 ;
  wire \timer_reg[24]_i_2_n_3 ;
  wire \timer_reg[28]_i_2_n_0 ;
  wire \timer_reg[28]_i_2_n_1 ;
  wire \timer_reg[28]_i_2_n_2 ;
  wire \timer_reg[28]_i_2_n_3 ;
  wire \timer_reg[31]_i_6_n_2 ;
  wire \timer_reg[31]_i_6_n_3 ;
  wire \timer_reg[4]_i_2_n_0 ;
  wire \timer_reg[4]_i_2_n_1 ;
  wire \timer_reg[4]_i_2_n_2 ;
  wire \timer_reg[4]_i_2_n_3 ;
  wire \timer_reg[8]_i_2_n_0 ;
  wire \timer_reg[8]_i_2_n_1 ;
  wire \timer_reg[8]_i_2_n_2 ;
  wire \timer_reg[8]_i_2_n_3 ;
  wire \timer_reg_n_0_[0] ;
  wire \timer_reg_n_0_[10] ;
  wire \timer_reg_n_0_[11] ;
  wire \timer_reg_n_0_[12] ;
  wire \timer_reg_n_0_[13] ;
  wire \timer_reg_n_0_[14] ;
  wire \timer_reg_n_0_[15] ;
  wire \timer_reg_n_0_[16] ;
  wire \timer_reg_n_0_[17] ;
  wire \timer_reg_n_0_[18] ;
  wire \timer_reg_n_0_[19] ;
  wire \timer_reg_n_0_[1] ;
  wire \timer_reg_n_0_[20] ;
  wire \timer_reg_n_0_[21] ;
  wire \timer_reg_n_0_[22] ;
  wire \timer_reg_n_0_[23] ;
  wire \timer_reg_n_0_[24] ;
  wire \timer_reg_n_0_[25] ;
  wire \timer_reg_n_0_[26] ;
  wire \timer_reg_n_0_[27] ;
  wire \timer_reg_n_0_[28] ;
  wire \timer_reg_n_0_[29] ;
  wire \timer_reg_n_0_[2] ;
  wire \timer_reg_n_0_[30] ;
  wire \timer_reg_n_0_[31] ;
  wire \timer_reg_n_0_[3] ;
  wire \timer_reg_n_0_[4] ;
  wire \timer_reg_n_0_[5] ;
  wire \timer_reg_n_0_[6] ;
  wire \timer_reg_n_0_[7] ;
  wire \timer_reg_n_0_[8] ;
  wire \timer_reg_n_0_[9] ;
  wire trap_i_1_n_0;
  wire trap_reg_0;
  wire trap_reg_1;
  wire xfer_done;
  wire [3:0]\NLW_alu_out_q_reg[0]_i_12_O_UNCONNECTED ;
  wire [3:0]\NLW_alu_out_q_reg[0]_i_13_O_UNCONNECTED ;
  wire [3:0]\NLW_alu_out_q_reg[0]_i_14_O_UNCONNECTED ;
  wire [3:0]\NLW_alu_out_q_reg[0]_i_18_O_UNCONNECTED ;
  wire [3:0]\NLW_alu_out_q_reg[0]_i_27_O_UNCONNECTED ;
  wire [3:0]\NLW_alu_out_q_reg[0]_i_36_O_UNCONNECTED ;
  wire [3:0]\NLW_alu_out_q_reg[0]_i_41_O_UNCONNECTED ;
  wire [3:0]\NLW_alu_out_q_reg[0]_i_50_O_UNCONNECTED ;
  wire [3:3]\NLW_alu_out_q_reg[0]_i_6_CO_UNCONNECTED ;
  wire [3:0]\NLW_alu_out_q_reg[0]_i_6_O_UNCONNECTED ;
  wire [3:0]\NLW_alu_out_q_reg[0]_i_63_O_UNCONNECTED ;
  wire [3:0]\NLW_alu_out_q_reg[0]_i_72_O_UNCONNECTED ;
  wire [3:3]\NLW_alu_out_q_reg[31]_i_6_CO_UNCONNECTED ;
  wire [3:3]\NLW_count_cycle_reg[60]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_count_instr_reg[60]_i_1_CO_UNCONNECTED ;
  wire NLW_cpuregs_reg_r1_0_63_0_2_DOD_UNCONNECTED;
  wire [0:0]NLW_cpuregs_reg_r1_0_63_0_2_i_12_O_UNCONNECTED;
  wire NLW_cpuregs_reg_r1_0_63_12_14_DOD_UNCONNECTED;
  wire NLW_cpuregs_reg_r1_0_63_15_17_DOD_UNCONNECTED;
  wire NLW_cpuregs_reg_r1_0_63_18_20_DOD_UNCONNECTED;
  wire NLW_cpuregs_reg_r1_0_63_21_23_DOD_UNCONNECTED;
  wire NLW_cpuregs_reg_r1_0_63_24_26_DOD_UNCONNECTED;
  wire NLW_cpuregs_reg_r1_0_63_27_29_DOD_UNCONNECTED;
  wire [3:3]NLW_cpuregs_reg_r1_0_63_27_29_i_7_CO_UNCONNECTED;
  wire NLW_cpuregs_reg_r1_0_63_30_31_DOC_UNCONNECTED;
  wire NLW_cpuregs_reg_r1_0_63_30_31_DOD_UNCONNECTED;
  wire NLW_cpuregs_reg_r1_0_63_3_5_DOD_UNCONNECTED;
  wire NLW_cpuregs_reg_r1_0_63_6_8_DOD_UNCONNECTED;
  wire NLW_cpuregs_reg_r1_0_63_9_11_DOD_UNCONNECTED;
  wire NLW_cpuregs_reg_r2_0_63_0_2_DOD_UNCONNECTED;
  wire NLW_cpuregs_reg_r2_0_63_12_14_DOD_UNCONNECTED;
  wire NLW_cpuregs_reg_r2_0_63_15_17_DOD_UNCONNECTED;
  wire NLW_cpuregs_reg_r2_0_63_18_20_DOD_UNCONNECTED;
  wire NLW_cpuregs_reg_r2_0_63_21_23_DOD_UNCONNECTED;
  wire NLW_cpuregs_reg_r2_0_63_24_26_DOD_UNCONNECTED;
  wire NLW_cpuregs_reg_r2_0_63_27_29_DOD_UNCONNECTED;
  wire NLW_cpuregs_reg_r2_0_63_30_31_DOC_UNCONNECTED;
  wire NLW_cpuregs_reg_r2_0_63_30_31_DOD_UNCONNECTED;
  wire NLW_cpuregs_reg_r2_0_63_3_5_DOD_UNCONNECTED;
  wire NLW_cpuregs_reg_r2_0_63_6_8_DOD_UNCONNECTED;
  wire NLW_cpuregs_reg_r2_0_63_9_11_DOD_UNCONNECTED;
  wire [3:1]\NLW_mem_addr_reg[31]_i_4_CO_UNCONNECTED ;
  wire [3:2]\NLW_mem_addr_reg[31]_i_4_O_UNCONNECTED ;
  wire [3:2]\NLW_reg_next_pc_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_reg_next_pc_reg[31]_i_2_O_UNCONNECTED ;
  wire [3:3]\NLW_reg_op1_reg[31]_i_11_CO_UNCONNECTED ;
  wire [3:2]\NLW_reg_out_reg[31]_i_11_CO_UNCONNECTED ;
  wire [3:3]\NLW_reg_out_reg[31]_i_11_O_UNCONNECTED ;
  wire [3:2]\NLW_timer_reg[31]_i_6_CO_UNCONNECTED ;
  wire [3:3]\NLW_timer_reg[31]_i_6_O_UNCONNECTED ;

  assign mem_axi_rdata_0_sp_1 = mem_axi_rdata_0_sn_1;
  assign mem_axi_rdata_1_sp_1 = mem_axi_rdata_1_sn_1;
  assign mem_axi_rdata_4_sp_1 = mem_axi_rdata_4_sn_1;
  LUT5 #(
    .INIT(32'hFEFAAEAA)) 
    \alu_out_q[0]_i_1 
       (.I0(\alu_out_q[0]_i_2_n_0 ),
        .I1(is_compare),
        .I2(is_lui_auipc_jal_jalr_addi_add_sub),
        .I3(alu_out_0),
        .I4(\alu_out_q_reg[0]_i_4_n_7 ),
        .O(\alu_out_q[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \alu_out_q[0]_i_10 
       (.I0(\reg_op2_reg_n_0_[1] ),
        .I1(instr_sub),
        .I2(\reg_op1_reg_n_0_[1] ),
        .O(\alu_out_q[0]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \alu_out_q[0]_i_11 
       (.I0(\reg_op2_reg_n_0_[0] ),
        .O(\alu_out_q[0]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \alu_out_q[0]_i_15 
       (.I0(\reg_op1_reg_n_0_[30] ),
        .I1(\reg_op2_reg_n_0_[30] ),
        .I2(\reg_op2_reg_n_0_[31] ),
        .I3(\reg_op1_reg_n_0_[31] ),
        .O(\alu_out_q[0]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \alu_out_q[0]_i_16 
       (.I0(\reg_op1_reg_n_0_[27] ),
        .I1(\reg_op2_reg_n_0_[27] ),
        .I2(\reg_op1_reg_n_0_[28] ),
        .I3(\reg_op2_reg_n_0_[28] ),
        .I4(\reg_op2_reg_n_0_[29] ),
        .I5(\reg_op1_reg_n_0_[29] ),
        .O(\alu_out_q[0]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \alu_out_q[0]_i_17 
       (.I0(\reg_op1_reg_n_0_[24] ),
        .I1(\reg_op2_reg_n_0_[24] ),
        .I2(\reg_op1_reg_n_0_[25] ),
        .I3(\reg_op2_reg_n_0_[25] ),
        .I4(\reg_op2_reg_n_0_[26] ),
        .I5(\reg_op1_reg_n_0_[26] ),
        .O(\alu_out_q[0]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h20F2)) 
    \alu_out_q[0]_i_19 
       (.I0(\reg_op2_reg_n_0_[30] ),
        .I1(\reg_op1_reg_n_0_[30] ),
        .I2(\reg_op1_reg_n_0_[31] ),
        .I3(\reg_op2_reg_n_0_[31] ),
        .O(\alu_out_q[0]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hFAFCFC00)) 
    \alu_out_q[0]_i_2 
       (.I0(\alu_out_q[31]_i_3_n_0 ),
        .I1(\alu_out_q[31]_i_4_n_0 ),
        .I2(\alu_out_q[31]_i_5_n_0 ),
        .I3(\reg_op2_reg_n_0_[0] ),
        .I4(\reg_op1_reg_n_0_[0] ),
        .O(\alu_out_q[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \alu_out_q[0]_i_20 
       (.I0(\reg_op2_reg_n_0_[29] ),
        .I1(\reg_op1_reg_n_0_[29] ),
        .I2(\reg_op2_reg_n_0_[28] ),
        .I3(\reg_op1_reg_n_0_[28] ),
        .O(\alu_out_q[0]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \alu_out_q[0]_i_21 
       (.I0(\reg_op2_reg_n_0_[27] ),
        .I1(\reg_op1_reg_n_0_[27] ),
        .I2(\reg_op2_reg_n_0_[26] ),
        .I3(\reg_op1_reg_n_0_[26] ),
        .O(\alu_out_q[0]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \alu_out_q[0]_i_22 
       (.I0(\reg_op2_reg_n_0_[25] ),
        .I1(\reg_op1_reg_n_0_[25] ),
        .I2(\reg_op2_reg_n_0_[24] ),
        .I3(\reg_op1_reg_n_0_[24] ),
        .O(\alu_out_q[0]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \alu_out_q[0]_i_23 
       (.I0(\reg_op1_reg_n_0_[30] ),
        .I1(\reg_op2_reg_n_0_[30] ),
        .I2(\reg_op2_reg_n_0_[31] ),
        .I3(\reg_op1_reg_n_0_[31] ),
        .O(\alu_out_q[0]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \alu_out_q[0]_i_24 
       (.I0(\reg_op2_reg_n_0_[29] ),
        .I1(\reg_op1_reg_n_0_[29] ),
        .I2(\reg_op2_reg_n_0_[28] ),
        .I3(\reg_op1_reg_n_0_[28] ),
        .O(\alu_out_q[0]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \alu_out_q[0]_i_25 
       (.I0(\reg_op2_reg_n_0_[26] ),
        .I1(\reg_op1_reg_n_0_[26] ),
        .I2(\reg_op2_reg_n_0_[27] ),
        .I3(\reg_op1_reg_n_0_[27] ),
        .O(\alu_out_q[0]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \alu_out_q[0]_i_26 
       (.I0(\reg_op2_reg_n_0_[25] ),
        .I1(\reg_op1_reg_n_0_[25] ),
        .I2(\reg_op2_reg_n_0_[24] ),
        .I3(\reg_op1_reg_n_0_[24] ),
        .O(\alu_out_q[0]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h20F2)) 
    \alu_out_q[0]_i_28 
       (.I0(\reg_op2_reg_n_0_[30] ),
        .I1(\reg_op1_reg_n_0_[30] ),
        .I2(\reg_op2_reg_n_0_[31] ),
        .I3(\reg_op1_reg_n_0_[31] ),
        .O(\alu_out_q[0]_i_28_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \alu_out_q[0]_i_29 
       (.I0(\reg_op2_reg_n_0_[29] ),
        .I1(\reg_op1_reg_n_0_[29] ),
        .I2(\reg_op2_reg_n_0_[28] ),
        .I3(\reg_op1_reg_n_0_[28] ),
        .O(\alu_out_q[0]_i_29_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEFEA)) 
    \alu_out_q[0]_i_3 
       (.I0(\alu_out_q[0]_i_5_n_0 ),
        .I1(instr_beq),
        .I2(alu_eq),
        .I3(instr_bne),
        .I4(\alu_out_q[0]_i_7_n_0 ),
        .O(alu_out_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    \alu_out_q[0]_i_30 
       (.I0(\reg_op2_reg_n_0_[27] ),
        .I1(\reg_op1_reg_n_0_[27] ),
        .I2(\reg_op2_reg_n_0_[26] ),
        .I3(\reg_op1_reg_n_0_[26] ),
        .O(\alu_out_q[0]_i_30_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \alu_out_q[0]_i_31 
       (.I0(\reg_op2_reg_n_0_[25] ),
        .I1(\reg_op1_reg_n_0_[25] ),
        .I2(\reg_op2_reg_n_0_[24] ),
        .I3(\reg_op1_reg_n_0_[24] ),
        .O(\alu_out_q[0]_i_31_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \alu_out_q[0]_i_32 
       (.I0(\reg_op1_reg_n_0_[30] ),
        .I1(\reg_op2_reg_n_0_[30] ),
        .I2(\reg_op2_reg_n_0_[31] ),
        .I3(\reg_op1_reg_n_0_[31] ),
        .O(\alu_out_q[0]_i_32_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \alu_out_q[0]_i_33 
       (.I0(\reg_op2_reg_n_0_[29] ),
        .I1(\reg_op1_reg_n_0_[29] ),
        .I2(\reg_op2_reg_n_0_[28] ),
        .I3(\reg_op1_reg_n_0_[28] ),
        .O(\alu_out_q[0]_i_33_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \alu_out_q[0]_i_34 
       (.I0(\reg_op2_reg_n_0_[26] ),
        .I1(\reg_op1_reg_n_0_[26] ),
        .I2(\reg_op2_reg_n_0_[27] ),
        .I3(\reg_op1_reg_n_0_[27] ),
        .O(\alu_out_q[0]_i_34_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \alu_out_q[0]_i_35 
       (.I0(\reg_op2_reg_n_0_[25] ),
        .I1(\reg_op1_reg_n_0_[25] ),
        .I2(\reg_op2_reg_n_0_[24] ),
        .I3(\reg_op1_reg_n_0_[24] ),
        .O(\alu_out_q[0]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \alu_out_q[0]_i_37 
       (.I0(\reg_op1_reg_n_0_[21] ),
        .I1(\reg_op2_reg_n_0_[21] ),
        .I2(\reg_op1_reg_n_0_[22] ),
        .I3(\reg_op2_reg_n_0_[22] ),
        .I4(\reg_op2_reg_n_0_[23] ),
        .I5(\reg_op1_reg_n_0_[23] ),
        .O(\alu_out_q[0]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \alu_out_q[0]_i_38 
       (.I0(\reg_op1_reg_n_0_[18] ),
        .I1(\reg_op2_reg_n_0_[18] ),
        .I2(\reg_op1_reg_n_0_[19] ),
        .I3(\reg_op2_reg_n_0_[19] ),
        .I4(\reg_op2_reg_n_0_[20] ),
        .I5(\reg_op1_reg_n_0_[20] ),
        .O(\alu_out_q[0]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \alu_out_q[0]_i_39 
       (.I0(\reg_op1_reg_n_0_[15] ),
        .I1(\reg_op2_reg_n_0_[15] ),
        .I2(\reg_op1_reg_n_0_[16] ),
        .I3(\reg_op2_reg_n_0_[16] ),
        .I4(\reg_op2_reg_n_0_[17] ),
        .I5(\reg_op1_reg_n_0_[17] ),
        .O(\alu_out_q[0]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \alu_out_q[0]_i_40 
       (.I0(\reg_op1_reg_n_0_[12] ),
        .I1(\reg_op2_reg_n_0_[12] ),
        .I2(\reg_op1_reg_n_0_[13] ),
        .I3(\reg_op2_reg_n_0_[13] ),
        .I4(\reg_op2_reg_n_0_[14] ),
        .I5(\reg_op1_reg_n_0_[14] ),
        .O(\alu_out_q[0]_i_40_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \alu_out_q[0]_i_42 
       (.I0(\reg_op2_reg_n_0_[23] ),
        .I1(\reg_op1_reg_n_0_[23] ),
        .I2(\reg_op2_reg_n_0_[22] ),
        .I3(\reg_op1_reg_n_0_[22] ),
        .O(\alu_out_q[0]_i_42_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \alu_out_q[0]_i_43 
       (.I0(\reg_op2_reg_n_0_[21] ),
        .I1(\reg_op1_reg_n_0_[21] ),
        .I2(\reg_op2_reg_n_0_[20] ),
        .I3(\reg_op1_reg_n_0_[20] ),
        .O(\alu_out_q[0]_i_43_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \alu_out_q[0]_i_44 
       (.I0(\reg_op2_reg_n_0_[19] ),
        .I1(\reg_op1_reg_n_0_[19] ),
        .I2(\reg_op2_reg_n_0_[18] ),
        .I3(\reg_op1_reg_n_0_[18] ),
        .O(\alu_out_q[0]_i_44_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \alu_out_q[0]_i_45 
       (.I0(\reg_op2_reg_n_0_[17] ),
        .I1(\reg_op1_reg_n_0_[17] ),
        .I2(\reg_op2_reg_n_0_[16] ),
        .I3(\reg_op1_reg_n_0_[16] ),
        .O(\alu_out_q[0]_i_45_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \alu_out_q[0]_i_46 
       (.I0(\reg_op2_reg_n_0_[23] ),
        .I1(\reg_op1_reg_n_0_[23] ),
        .I2(\reg_op2_reg_n_0_[22] ),
        .I3(\reg_op1_reg_n_0_[22] ),
        .O(\alu_out_q[0]_i_46_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \alu_out_q[0]_i_47 
       (.I0(\reg_op2_reg_n_0_[20] ),
        .I1(\reg_op1_reg_n_0_[20] ),
        .I2(\reg_op2_reg_n_0_[21] ),
        .I3(\reg_op1_reg_n_0_[21] ),
        .O(\alu_out_q[0]_i_47_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \alu_out_q[0]_i_48 
       (.I0(\reg_op2_reg_n_0_[19] ),
        .I1(\reg_op1_reg_n_0_[19] ),
        .I2(\reg_op2_reg_n_0_[18] ),
        .I3(\reg_op1_reg_n_0_[18] ),
        .O(\alu_out_q[0]_i_48_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \alu_out_q[0]_i_49 
       (.I0(\reg_op2_reg_n_0_[17] ),
        .I1(\reg_op1_reg_n_0_[17] ),
        .I2(\reg_op2_reg_n_0_[16] ),
        .I3(\reg_op1_reg_n_0_[16] ),
        .O(\alu_out_q[0]_i_49_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \alu_out_q[0]_i_5 
       (.I0(alu_lts),
        .I1(instr_bge),
        .I2(alu_ltu),
        .I3(instr_bgeu),
        .O(\alu_out_q[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \alu_out_q[0]_i_51 
       (.I0(\reg_op2_reg_n_0_[23] ),
        .I1(\reg_op1_reg_n_0_[23] ),
        .I2(\reg_op2_reg_n_0_[22] ),
        .I3(\reg_op1_reg_n_0_[22] ),
        .O(\alu_out_q[0]_i_51_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \alu_out_q[0]_i_52 
       (.I0(\reg_op2_reg_n_0_[21] ),
        .I1(\reg_op1_reg_n_0_[21] ),
        .I2(\reg_op2_reg_n_0_[20] ),
        .I3(\reg_op1_reg_n_0_[20] ),
        .O(\alu_out_q[0]_i_52_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \alu_out_q[0]_i_53 
       (.I0(\reg_op2_reg_n_0_[19] ),
        .I1(\reg_op1_reg_n_0_[19] ),
        .I2(\reg_op2_reg_n_0_[18] ),
        .I3(\reg_op1_reg_n_0_[18] ),
        .O(\alu_out_q[0]_i_53_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \alu_out_q[0]_i_54 
       (.I0(\reg_op2_reg_n_0_[17] ),
        .I1(\reg_op1_reg_n_0_[17] ),
        .I2(\reg_op2_reg_n_0_[16] ),
        .I3(\reg_op1_reg_n_0_[16] ),
        .O(\alu_out_q[0]_i_54_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \alu_out_q[0]_i_55 
       (.I0(\reg_op2_reg_n_0_[23] ),
        .I1(\reg_op1_reg_n_0_[23] ),
        .I2(\reg_op2_reg_n_0_[22] ),
        .I3(\reg_op1_reg_n_0_[22] ),
        .O(\alu_out_q[0]_i_55_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \alu_out_q[0]_i_56 
       (.I0(\reg_op2_reg_n_0_[20] ),
        .I1(\reg_op1_reg_n_0_[20] ),
        .I2(\reg_op2_reg_n_0_[21] ),
        .I3(\reg_op1_reg_n_0_[21] ),
        .O(\alu_out_q[0]_i_56_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \alu_out_q[0]_i_57 
       (.I0(\reg_op2_reg_n_0_[19] ),
        .I1(\reg_op1_reg_n_0_[19] ),
        .I2(\reg_op2_reg_n_0_[18] ),
        .I3(\reg_op1_reg_n_0_[18] ),
        .O(\alu_out_q[0]_i_57_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \alu_out_q[0]_i_58 
       (.I0(\reg_op2_reg_n_0_[17] ),
        .I1(\reg_op1_reg_n_0_[17] ),
        .I2(\reg_op2_reg_n_0_[16] ),
        .I3(\reg_op1_reg_n_0_[16] ),
        .O(\alu_out_q[0]_i_58_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \alu_out_q[0]_i_59 
       (.I0(\reg_op1_reg_n_0_[9] ),
        .I1(\reg_op2_reg_n_0_[9] ),
        .I2(\reg_op1_reg_n_0_[10] ),
        .I3(\reg_op2_reg_n_0_[10] ),
        .I4(\reg_op2_reg_n_0_[11] ),
        .I5(\reg_op1_reg_n_0_[11] ),
        .O(\alu_out_q[0]_i_59_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \alu_out_q[0]_i_60 
       (.I0(\reg_op1_reg_n_0_[6] ),
        .I1(\reg_op2_reg_n_0_[6] ),
        .I2(\reg_op1_reg_n_0_[7] ),
        .I3(\reg_op2_reg_n_0_[7] ),
        .I4(\reg_op2_reg_n_0_[8] ),
        .I5(\reg_op1_reg_n_0_[8] ),
        .O(\alu_out_q[0]_i_60_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \alu_out_q[0]_i_61 
       (.I0(\reg_op1_reg_n_0_[3] ),
        .I1(\reg_op2_reg_n_0_[3] ),
        .I2(\reg_op1_reg_n_0_[4] ),
        .I3(\reg_op2_reg_n_0_[4] ),
        .I4(\reg_op2_reg_n_0_[5] ),
        .I5(\reg_op1_reg_n_0_[5] ),
        .O(\alu_out_q[0]_i_61_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \alu_out_q[0]_i_62 
       (.I0(\reg_op1_reg_n_0_[0] ),
        .I1(\reg_op2_reg_n_0_[0] ),
        .I2(\reg_op1_reg_n_0_[1] ),
        .I3(\reg_op2_reg_n_0_[1] ),
        .I4(\reg_op2_reg_n_0_[2] ),
        .I5(\reg_op1_reg_n_0_[2] ),
        .O(\alu_out_q[0]_i_62_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \alu_out_q[0]_i_64 
       (.I0(\reg_op2_reg_n_0_[15] ),
        .I1(\reg_op1_reg_n_0_[15] ),
        .I2(\reg_op2_reg_n_0_[14] ),
        .I3(\reg_op1_reg_n_0_[14] ),
        .O(\alu_out_q[0]_i_64_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \alu_out_q[0]_i_65 
       (.I0(\reg_op2_reg_n_0_[13] ),
        .I1(\reg_op1_reg_n_0_[13] ),
        .I2(\reg_op2_reg_n_0_[12] ),
        .I3(\reg_op1_reg_n_0_[12] ),
        .O(\alu_out_q[0]_i_65_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \alu_out_q[0]_i_66 
       (.I0(\reg_op2_reg_n_0_[11] ),
        .I1(\reg_op1_reg_n_0_[11] ),
        .I2(\reg_op2_reg_n_0_[10] ),
        .I3(\reg_op1_reg_n_0_[10] ),
        .O(\alu_out_q[0]_i_66_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \alu_out_q[0]_i_67 
       (.I0(\reg_op2_reg_n_0_[9] ),
        .I1(\reg_op1_reg_n_0_[9] ),
        .I2(\reg_op2_reg_n_0_[8] ),
        .I3(\reg_op1_reg_n_0_[8] ),
        .O(\alu_out_q[0]_i_67_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \alu_out_q[0]_i_68 
       (.I0(\reg_op2_reg_n_0_[14] ),
        .I1(\reg_op1_reg_n_0_[14] ),
        .I2(\reg_op2_reg_n_0_[15] ),
        .I3(\reg_op1_reg_n_0_[15] ),
        .O(\alu_out_q[0]_i_68_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \alu_out_q[0]_i_69 
       (.I0(\reg_op2_reg_n_0_[13] ),
        .I1(\reg_op1_reg_n_0_[13] ),
        .I2(\reg_op2_reg_n_0_[12] ),
        .I3(\reg_op1_reg_n_0_[12] ),
        .O(\alu_out_q[0]_i_69_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \alu_out_q[0]_i_7 
       (.I0(alu_lts),
        .I1(is_slti_blt_slt),
        .I2(alu_ltu),
        .I3(is_sltiu_bltu_sltu),
        .O(\alu_out_q[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \alu_out_q[0]_i_70 
       (.I0(\reg_op2_reg_n_0_[11] ),
        .I1(\reg_op1_reg_n_0_[11] ),
        .I2(\reg_op2_reg_n_0_[10] ),
        .I3(\reg_op1_reg_n_0_[10] ),
        .O(\alu_out_q[0]_i_70_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \alu_out_q[0]_i_71 
       (.I0(\reg_op2_reg_n_0_[8] ),
        .I1(\reg_op1_reg_n_0_[8] ),
        .I2(\reg_op2_reg_n_0_[9] ),
        .I3(\reg_op1_reg_n_0_[9] ),
        .O(\alu_out_q[0]_i_71_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \alu_out_q[0]_i_73 
       (.I0(\reg_op2_reg_n_0_[15] ),
        .I1(\reg_op1_reg_n_0_[15] ),
        .I2(\reg_op2_reg_n_0_[14] ),
        .I3(\reg_op1_reg_n_0_[14] ),
        .O(\alu_out_q[0]_i_73_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \alu_out_q[0]_i_74 
       (.I0(\reg_op2_reg_n_0_[13] ),
        .I1(\reg_op1_reg_n_0_[13] ),
        .I2(\reg_op2_reg_n_0_[12] ),
        .I3(\reg_op1_reg_n_0_[12] ),
        .O(\alu_out_q[0]_i_74_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \alu_out_q[0]_i_75 
       (.I0(\reg_op2_reg_n_0_[11] ),
        .I1(\reg_op1_reg_n_0_[11] ),
        .I2(\reg_op2_reg_n_0_[10] ),
        .I3(\reg_op1_reg_n_0_[10] ),
        .O(\alu_out_q[0]_i_75_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \alu_out_q[0]_i_76 
       (.I0(\reg_op2_reg_n_0_[9] ),
        .I1(\reg_op1_reg_n_0_[9] ),
        .I2(\reg_op2_reg_n_0_[8] ),
        .I3(\reg_op1_reg_n_0_[8] ),
        .O(\alu_out_q[0]_i_76_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \alu_out_q[0]_i_77 
       (.I0(\reg_op2_reg_n_0_[14] ),
        .I1(\reg_op1_reg_n_0_[14] ),
        .I2(\reg_op2_reg_n_0_[15] ),
        .I3(\reg_op1_reg_n_0_[15] ),
        .O(\alu_out_q[0]_i_77_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \alu_out_q[0]_i_78 
       (.I0(\reg_op2_reg_n_0_[13] ),
        .I1(\reg_op1_reg_n_0_[13] ),
        .I2(\reg_op2_reg_n_0_[12] ),
        .I3(\reg_op1_reg_n_0_[12] ),
        .O(\alu_out_q[0]_i_78_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \alu_out_q[0]_i_79 
       (.I0(\reg_op2_reg_n_0_[11] ),
        .I1(\reg_op1_reg_n_0_[11] ),
        .I2(\reg_op2_reg_n_0_[10] ),
        .I3(\reg_op1_reg_n_0_[10] ),
        .O(\alu_out_q[0]_i_79_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \alu_out_q[0]_i_8 
       (.I0(\reg_op2_reg_n_0_[3] ),
        .I1(instr_sub),
        .I2(\reg_op1_reg_n_0_[3] ),
        .O(\alu_out_q[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \alu_out_q[0]_i_80 
       (.I0(\reg_op2_reg_n_0_[8] ),
        .I1(\reg_op1_reg_n_0_[8] ),
        .I2(\reg_op2_reg_n_0_[9] ),
        .I3(\reg_op1_reg_n_0_[9] ),
        .O(\alu_out_q[0]_i_80_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \alu_out_q[0]_i_81 
       (.I0(\reg_op2_reg_n_0_[7] ),
        .I1(\reg_op1_reg_n_0_[7] ),
        .I2(\reg_op2_reg_n_0_[6] ),
        .I3(\reg_op1_reg_n_0_[6] ),
        .O(\alu_out_q[0]_i_81_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \alu_out_q[0]_i_82 
       (.I0(\reg_op2_reg_n_0_[5] ),
        .I1(\reg_op1_reg_n_0_[5] ),
        .I2(\reg_op2_reg_n_0_[4] ),
        .I3(\reg_op1_reg_n_0_[4] ),
        .O(\alu_out_q[0]_i_82_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \alu_out_q[0]_i_83 
       (.I0(\reg_op2_reg_n_0_[3] ),
        .I1(\reg_op1_reg_n_0_[3] ),
        .I2(\reg_op2_reg_n_0_[2] ),
        .I3(\reg_op1_reg_n_0_[2] ),
        .O(\alu_out_q[0]_i_83_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \alu_out_q[0]_i_84 
       (.I0(\reg_op2_reg_n_0_[1] ),
        .I1(\reg_op1_reg_n_0_[1] ),
        .I2(\reg_op2_reg_n_0_[0] ),
        .I3(\reg_op1_reg_n_0_[0] ),
        .O(\alu_out_q[0]_i_84_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \alu_out_q[0]_i_85 
       (.I0(\reg_op2_reg_n_0_[7] ),
        .I1(\reg_op1_reg_n_0_[7] ),
        .I2(\reg_op2_reg_n_0_[6] ),
        .I3(\reg_op1_reg_n_0_[6] ),
        .O(\alu_out_q[0]_i_85_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \alu_out_q[0]_i_86 
       (.I0(\reg_op2_reg_n_0_[5] ),
        .I1(\reg_op1_reg_n_0_[5] ),
        .I2(\reg_op2_reg_n_0_[4] ),
        .I3(\reg_op1_reg_n_0_[4] ),
        .O(\alu_out_q[0]_i_86_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \alu_out_q[0]_i_87 
       (.I0(\reg_op2_reg_n_0_[2] ),
        .I1(\reg_op1_reg_n_0_[2] ),
        .I2(\reg_op2_reg_n_0_[3] ),
        .I3(\reg_op1_reg_n_0_[3] ),
        .O(\alu_out_q[0]_i_87_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \alu_out_q[0]_i_88 
       (.I0(\reg_op2_reg_n_0_[1] ),
        .I1(\reg_op1_reg_n_0_[1] ),
        .I2(\reg_op2_reg_n_0_[0] ),
        .I3(\reg_op1_reg_n_0_[0] ),
        .O(\alu_out_q[0]_i_88_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \alu_out_q[0]_i_89 
       (.I0(\reg_op2_reg_n_0_[7] ),
        .I1(\reg_op1_reg_n_0_[7] ),
        .I2(\reg_op2_reg_n_0_[6] ),
        .I3(\reg_op1_reg_n_0_[6] ),
        .O(\alu_out_q[0]_i_89_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \alu_out_q[0]_i_9 
       (.I0(\reg_op2_reg_n_0_[2] ),
        .I1(instr_sub),
        .I2(\reg_op1_reg_n_0_[2] ),
        .O(\alu_out_q[0]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \alu_out_q[0]_i_90 
       (.I0(\reg_op2_reg_n_0_[5] ),
        .I1(\reg_op1_reg_n_0_[5] ),
        .I2(\reg_op2_reg_n_0_[4] ),
        .I3(\reg_op1_reg_n_0_[4] ),
        .O(\alu_out_q[0]_i_90_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \alu_out_q[0]_i_91 
       (.I0(\reg_op2_reg_n_0_[3] ),
        .I1(\reg_op1_reg_n_0_[3] ),
        .I2(\reg_op2_reg_n_0_[2] ),
        .I3(\reg_op1_reg_n_0_[2] ),
        .O(\alu_out_q[0]_i_91_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \alu_out_q[0]_i_92 
       (.I0(\reg_op2_reg_n_0_[1] ),
        .I1(\reg_op1_reg_n_0_[1] ),
        .I2(\reg_op2_reg_n_0_[0] ),
        .I3(\reg_op1_reg_n_0_[0] ),
        .O(\alu_out_q[0]_i_92_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \alu_out_q[0]_i_93 
       (.I0(\reg_op2_reg_n_0_[7] ),
        .I1(\reg_op1_reg_n_0_[7] ),
        .I2(\reg_op2_reg_n_0_[6] ),
        .I3(\reg_op1_reg_n_0_[6] ),
        .O(\alu_out_q[0]_i_93_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \alu_out_q[0]_i_94 
       (.I0(\reg_op2_reg_n_0_[5] ),
        .I1(\reg_op1_reg_n_0_[5] ),
        .I2(\reg_op2_reg_n_0_[4] ),
        .I3(\reg_op1_reg_n_0_[4] ),
        .O(\alu_out_q[0]_i_94_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \alu_out_q[0]_i_95 
       (.I0(\reg_op2_reg_n_0_[2] ),
        .I1(\reg_op1_reg_n_0_[2] ),
        .I2(\reg_op2_reg_n_0_[3] ),
        .I3(\reg_op1_reg_n_0_[3] ),
        .O(\alu_out_q[0]_i_95_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \alu_out_q[0]_i_96 
       (.I0(\reg_op2_reg_n_0_[1] ),
        .I1(\reg_op1_reg_n_0_[1] ),
        .I2(\reg_op2_reg_n_0_[0] ),
        .I3(\reg_op1_reg_n_0_[0] ),
        .O(\alu_out_q[0]_i_96_n_0 ));
  LUT5 #(
    .INIT(32'hFEBEEAAA)) 
    \alu_out_q[10]_i_1 
       (.I0(\alu_out_q[10]_i_2_n_0 ),
        .I1(\reg_op1_reg_n_0_[10] ),
        .I2(\reg_op2_reg_n_0_[10] ),
        .I3(\alu_out_q[31]_i_3_n_0 ),
        .I4(\alu_out_q[31]_i_4_n_0 ),
        .O(\alu_out_q[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFA8A8A8)) 
    \alu_out_q[10]_i_2 
       (.I0(\alu_out_q[31]_i_5_n_0 ),
        .I1(\reg_op2_reg_n_0_[10] ),
        .I2(\reg_op1_reg_n_0_[10] ),
        .I3(\alu_out_q_reg[11]_i_3_n_5 ),
        .I4(is_lui_auipc_jal_jalr_addi_add_sub),
        .O(\alu_out_q[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFEBEEAAA)) 
    \alu_out_q[11]_i_1 
       (.I0(\alu_out_q[11]_i_2_n_0 ),
        .I1(\reg_op1_reg_n_0_[11] ),
        .I2(\reg_op2_reg_n_0_[11] ),
        .I3(\alu_out_q[31]_i_3_n_0 ),
        .I4(\alu_out_q[31]_i_4_n_0 ),
        .O(\alu_out_q[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFA8A8A8)) 
    \alu_out_q[11]_i_2 
       (.I0(\alu_out_q[31]_i_5_n_0 ),
        .I1(\reg_op2_reg_n_0_[11] ),
        .I2(\reg_op1_reg_n_0_[11] ),
        .I3(\alu_out_q_reg[11]_i_3_n_4 ),
        .I4(is_lui_auipc_jal_jalr_addi_add_sub),
        .O(\alu_out_q[11]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \alu_out_q[11]_i_4 
       (.I0(\reg_op2_reg_n_0_[11] ),
        .I1(instr_sub),
        .I2(\reg_op1_reg_n_0_[11] ),
        .O(\alu_out_q[11]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \alu_out_q[11]_i_5 
       (.I0(\reg_op2_reg_n_0_[10] ),
        .I1(instr_sub),
        .I2(\reg_op1_reg_n_0_[10] ),
        .O(\alu_out_q[11]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \alu_out_q[11]_i_6 
       (.I0(\reg_op2_reg_n_0_[9] ),
        .I1(instr_sub),
        .I2(\reg_op1_reg_n_0_[9] ),
        .O(\alu_out_q[11]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \alu_out_q[11]_i_7 
       (.I0(\reg_op2_reg_n_0_[8] ),
        .I1(instr_sub),
        .I2(\reg_op1_reg_n_0_[8] ),
        .O(\alu_out_q[11]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFEBEEAAA)) 
    \alu_out_q[12]_i_1 
       (.I0(\alu_out_q[12]_i_2_n_0 ),
        .I1(\reg_op1_reg_n_0_[12] ),
        .I2(\reg_op2_reg_n_0_[12] ),
        .I3(\alu_out_q[31]_i_3_n_0 ),
        .I4(\alu_out_q[31]_i_4_n_0 ),
        .O(\alu_out_q[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFA8A8A8)) 
    \alu_out_q[12]_i_2 
       (.I0(\alu_out_q[31]_i_5_n_0 ),
        .I1(\reg_op2_reg_n_0_[12] ),
        .I2(\reg_op1_reg_n_0_[12] ),
        .I3(\alu_out_q_reg[15]_i_3_n_7 ),
        .I4(is_lui_auipc_jal_jalr_addi_add_sub),
        .O(\alu_out_q[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFEBEEAAA)) 
    \alu_out_q[13]_i_1 
       (.I0(\alu_out_q[13]_i_2_n_0 ),
        .I1(\reg_op1_reg_n_0_[13] ),
        .I2(\reg_op2_reg_n_0_[13] ),
        .I3(\alu_out_q[31]_i_3_n_0 ),
        .I4(\alu_out_q[31]_i_4_n_0 ),
        .O(\alu_out_q[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFA8A8A8)) 
    \alu_out_q[13]_i_2 
       (.I0(\alu_out_q[31]_i_5_n_0 ),
        .I1(\reg_op2_reg_n_0_[13] ),
        .I2(\reg_op1_reg_n_0_[13] ),
        .I3(\alu_out_q_reg[15]_i_3_n_6 ),
        .I4(is_lui_auipc_jal_jalr_addi_add_sub),
        .O(\alu_out_q[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFEBEEAAA)) 
    \alu_out_q[14]_i_1 
       (.I0(\alu_out_q[14]_i_2_n_0 ),
        .I1(\reg_op1_reg_n_0_[14] ),
        .I2(\reg_op2_reg_n_0_[14] ),
        .I3(\alu_out_q[31]_i_3_n_0 ),
        .I4(\alu_out_q[31]_i_4_n_0 ),
        .O(\alu_out_q[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFA8A8A8)) 
    \alu_out_q[14]_i_2 
       (.I0(\alu_out_q[31]_i_5_n_0 ),
        .I1(\reg_op2_reg_n_0_[14] ),
        .I2(\reg_op1_reg_n_0_[14] ),
        .I3(\alu_out_q_reg[15]_i_3_n_5 ),
        .I4(is_lui_auipc_jal_jalr_addi_add_sub),
        .O(\alu_out_q[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFEBEEAAA)) 
    \alu_out_q[15]_i_1 
       (.I0(\alu_out_q[15]_i_2_n_0 ),
        .I1(\reg_op1_reg_n_0_[15] ),
        .I2(\reg_op2_reg_n_0_[15] ),
        .I3(\alu_out_q[31]_i_3_n_0 ),
        .I4(\alu_out_q[31]_i_4_n_0 ),
        .O(\alu_out_q[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFA8A8A8)) 
    \alu_out_q[15]_i_2 
       (.I0(\alu_out_q[31]_i_5_n_0 ),
        .I1(\reg_op2_reg_n_0_[15] ),
        .I2(\reg_op1_reg_n_0_[15] ),
        .I3(\alu_out_q_reg[15]_i_3_n_4 ),
        .I4(is_lui_auipc_jal_jalr_addi_add_sub),
        .O(\alu_out_q[15]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \alu_out_q[15]_i_4 
       (.I0(\reg_op2_reg_n_0_[15] ),
        .I1(instr_sub),
        .I2(\reg_op1_reg_n_0_[15] ),
        .O(\alu_out_q[15]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \alu_out_q[15]_i_5 
       (.I0(\reg_op2_reg_n_0_[14] ),
        .I1(instr_sub),
        .I2(\reg_op1_reg_n_0_[14] ),
        .O(\alu_out_q[15]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \alu_out_q[15]_i_6 
       (.I0(\reg_op2_reg_n_0_[13] ),
        .I1(instr_sub),
        .I2(\reg_op1_reg_n_0_[13] ),
        .O(\alu_out_q[15]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \alu_out_q[15]_i_7 
       (.I0(\reg_op2_reg_n_0_[12] ),
        .I1(instr_sub),
        .I2(\reg_op1_reg_n_0_[12] ),
        .O(\alu_out_q[15]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFEBEEAAA)) 
    \alu_out_q[16]_i_1 
       (.I0(\alu_out_q[16]_i_2_n_0 ),
        .I1(\reg_op1_reg_n_0_[16] ),
        .I2(\reg_op2_reg_n_0_[16] ),
        .I3(\alu_out_q[31]_i_3_n_0 ),
        .I4(\alu_out_q[31]_i_4_n_0 ),
        .O(\alu_out_q[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFA8A8A8)) 
    \alu_out_q[16]_i_2 
       (.I0(\alu_out_q[31]_i_5_n_0 ),
        .I1(\reg_op2_reg_n_0_[16] ),
        .I2(\reg_op1_reg_n_0_[16] ),
        .I3(\alu_out_q_reg[19]_i_3_n_7 ),
        .I4(is_lui_auipc_jal_jalr_addi_add_sub),
        .O(\alu_out_q[16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFEBEEAAA)) 
    \alu_out_q[17]_i_1 
       (.I0(\alu_out_q[17]_i_2_n_0 ),
        .I1(\reg_op1_reg_n_0_[17] ),
        .I2(\reg_op2_reg_n_0_[17] ),
        .I3(\alu_out_q[31]_i_3_n_0 ),
        .I4(\alu_out_q[31]_i_4_n_0 ),
        .O(\alu_out_q[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFA8A8A8)) 
    \alu_out_q[17]_i_2 
       (.I0(\alu_out_q[31]_i_5_n_0 ),
        .I1(\reg_op2_reg_n_0_[17] ),
        .I2(\reg_op1_reg_n_0_[17] ),
        .I3(\alu_out_q_reg[19]_i_3_n_6 ),
        .I4(is_lui_auipc_jal_jalr_addi_add_sub),
        .O(\alu_out_q[17]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFEBEEAAA)) 
    \alu_out_q[18]_i_1 
       (.I0(\alu_out_q[18]_i_2_n_0 ),
        .I1(\reg_op1_reg_n_0_[18] ),
        .I2(\reg_op2_reg_n_0_[18] ),
        .I3(\alu_out_q[31]_i_3_n_0 ),
        .I4(\alu_out_q[31]_i_4_n_0 ),
        .O(\alu_out_q[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFA8A8A8)) 
    \alu_out_q[18]_i_2 
       (.I0(\alu_out_q[31]_i_5_n_0 ),
        .I1(\reg_op2_reg_n_0_[18] ),
        .I2(\reg_op1_reg_n_0_[18] ),
        .I3(\alu_out_q_reg[19]_i_3_n_5 ),
        .I4(is_lui_auipc_jal_jalr_addi_add_sub),
        .O(\alu_out_q[18]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFEBEEAAA)) 
    \alu_out_q[19]_i_1 
       (.I0(\alu_out_q[19]_i_2_n_0 ),
        .I1(\reg_op1_reg_n_0_[19] ),
        .I2(\reg_op2_reg_n_0_[19] ),
        .I3(\alu_out_q[31]_i_3_n_0 ),
        .I4(\alu_out_q[31]_i_4_n_0 ),
        .O(\alu_out_q[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFA8A8A8)) 
    \alu_out_q[19]_i_2 
       (.I0(\alu_out_q[31]_i_5_n_0 ),
        .I1(\reg_op2_reg_n_0_[19] ),
        .I2(\reg_op1_reg_n_0_[19] ),
        .I3(\alu_out_q_reg[19]_i_3_n_4 ),
        .I4(is_lui_auipc_jal_jalr_addi_add_sub),
        .O(\alu_out_q[19]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \alu_out_q[19]_i_4 
       (.I0(\reg_op2_reg_n_0_[19] ),
        .I1(instr_sub),
        .I2(\reg_op1_reg_n_0_[19] ),
        .O(\alu_out_q[19]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \alu_out_q[19]_i_5 
       (.I0(\reg_op2_reg_n_0_[18] ),
        .I1(instr_sub),
        .I2(\reg_op1_reg_n_0_[18] ),
        .O(\alu_out_q[19]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \alu_out_q[19]_i_6 
       (.I0(\reg_op2_reg_n_0_[17] ),
        .I1(instr_sub),
        .I2(\reg_op1_reg_n_0_[17] ),
        .O(\alu_out_q[19]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \alu_out_q[19]_i_7 
       (.I0(\reg_op2_reg_n_0_[16] ),
        .I1(instr_sub),
        .I2(\reg_op1_reg_n_0_[16] ),
        .O(\alu_out_q[19]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFEBEEAAA)) 
    \alu_out_q[1]_i_1 
       (.I0(\alu_out_q[1]_i_2_n_0 ),
        .I1(\reg_op1_reg_n_0_[1] ),
        .I2(\reg_op2_reg_n_0_[1] ),
        .I3(\alu_out_q[31]_i_3_n_0 ),
        .I4(\alu_out_q[31]_i_4_n_0 ),
        .O(\alu_out_q[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFA8A8A8)) 
    \alu_out_q[1]_i_2 
       (.I0(\alu_out_q[31]_i_5_n_0 ),
        .I1(\reg_op2_reg_n_0_[1] ),
        .I2(\reg_op1_reg_n_0_[1] ),
        .I3(\alu_out_q_reg[0]_i_4_n_6 ),
        .I4(is_lui_auipc_jal_jalr_addi_add_sub),
        .O(\alu_out_q[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFEBEEAAA)) 
    \alu_out_q[20]_i_1 
       (.I0(\alu_out_q[20]_i_2_n_0 ),
        .I1(\reg_op1_reg_n_0_[20] ),
        .I2(\reg_op2_reg_n_0_[20] ),
        .I3(\alu_out_q[31]_i_3_n_0 ),
        .I4(\alu_out_q[31]_i_4_n_0 ),
        .O(\alu_out_q[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFA8A8A8)) 
    \alu_out_q[20]_i_2 
       (.I0(\alu_out_q[31]_i_5_n_0 ),
        .I1(\reg_op2_reg_n_0_[20] ),
        .I2(\reg_op1_reg_n_0_[20] ),
        .I3(\alu_out_q_reg[23]_i_3_n_7 ),
        .I4(is_lui_auipc_jal_jalr_addi_add_sub),
        .O(\alu_out_q[20]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFEBEEAAA)) 
    \alu_out_q[21]_i_1 
       (.I0(\alu_out_q[21]_i_2_n_0 ),
        .I1(\reg_op1_reg_n_0_[21] ),
        .I2(\reg_op2_reg_n_0_[21] ),
        .I3(\alu_out_q[31]_i_3_n_0 ),
        .I4(\alu_out_q[31]_i_4_n_0 ),
        .O(\alu_out_q[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFA8A8A8)) 
    \alu_out_q[21]_i_2 
       (.I0(\alu_out_q[31]_i_5_n_0 ),
        .I1(\reg_op2_reg_n_0_[21] ),
        .I2(\reg_op1_reg_n_0_[21] ),
        .I3(\alu_out_q_reg[23]_i_3_n_6 ),
        .I4(is_lui_auipc_jal_jalr_addi_add_sub),
        .O(\alu_out_q[21]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFEBEEAAA)) 
    \alu_out_q[22]_i_1 
       (.I0(\alu_out_q[22]_i_2_n_0 ),
        .I1(\reg_op1_reg_n_0_[22] ),
        .I2(\reg_op2_reg_n_0_[22] ),
        .I3(\alu_out_q[31]_i_3_n_0 ),
        .I4(\alu_out_q[31]_i_4_n_0 ),
        .O(\alu_out_q[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFA8A8A8)) 
    \alu_out_q[22]_i_2 
       (.I0(\alu_out_q[31]_i_5_n_0 ),
        .I1(\reg_op2_reg_n_0_[22] ),
        .I2(\reg_op1_reg_n_0_[22] ),
        .I3(\alu_out_q_reg[23]_i_3_n_5 ),
        .I4(is_lui_auipc_jal_jalr_addi_add_sub),
        .O(\alu_out_q[22]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFEBEEAAA)) 
    \alu_out_q[23]_i_1 
       (.I0(\alu_out_q[23]_i_2_n_0 ),
        .I1(\reg_op1_reg_n_0_[23] ),
        .I2(\reg_op2_reg_n_0_[23] ),
        .I3(\alu_out_q[31]_i_3_n_0 ),
        .I4(\alu_out_q[31]_i_4_n_0 ),
        .O(\alu_out_q[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFA8A8A8)) 
    \alu_out_q[23]_i_2 
       (.I0(\alu_out_q[31]_i_5_n_0 ),
        .I1(\reg_op2_reg_n_0_[23] ),
        .I2(\reg_op1_reg_n_0_[23] ),
        .I3(\alu_out_q_reg[23]_i_3_n_4 ),
        .I4(is_lui_auipc_jal_jalr_addi_add_sub),
        .O(\alu_out_q[23]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \alu_out_q[23]_i_4 
       (.I0(\reg_op2_reg_n_0_[23] ),
        .I1(instr_sub),
        .I2(\reg_op1_reg_n_0_[23] ),
        .O(\alu_out_q[23]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \alu_out_q[23]_i_5 
       (.I0(\reg_op2_reg_n_0_[22] ),
        .I1(instr_sub),
        .I2(\reg_op1_reg_n_0_[22] ),
        .O(\alu_out_q[23]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \alu_out_q[23]_i_6 
       (.I0(\reg_op2_reg_n_0_[21] ),
        .I1(instr_sub),
        .I2(\reg_op1_reg_n_0_[21] ),
        .O(\alu_out_q[23]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \alu_out_q[23]_i_7 
       (.I0(\reg_op2_reg_n_0_[20] ),
        .I1(instr_sub),
        .I2(\reg_op1_reg_n_0_[20] ),
        .O(\alu_out_q[23]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFEBEEAAA)) 
    \alu_out_q[24]_i_1 
       (.I0(\alu_out_q[24]_i_2_n_0 ),
        .I1(\reg_op1_reg_n_0_[24] ),
        .I2(\reg_op2_reg_n_0_[24] ),
        .I3(\alu_out_q[31]_i_3_n_0 ),
        .I4(\alu_out_q[31]_i_4_n_0 ),
        .O(\alu_out_q[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFA8A8A8)) 
    \alu_out_q[24]_i_2 
       (.I0(\alu_out_q[31]_i_5_n_0 ),
        .I1(\reg_op2_reg_n_0_[24] ),
        .I2(\reg_op1_reg_n_0_[24] ),
        .I3(\alu_out_q_reg[27]_i_3_n_7 ),
        .I4(is_lui_auipc_jal_jalr_addi_add_sub),
        .O(\alu_out_q[24]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFEBEEAAA)) 
    \alu_out_q[25]_i_1 
       (.I0(\alu_out_q[25]_i_2_n_0 ),
        .I1(\reg_op1_reg_n_0_[25] ),
        .I2(\reg_op2_reg_n_0_[25] ),
        .I3(\alu_out_q[31]_i_3_n_0 ),
        .I4(\alu_out_q[31]_i_4_n_0 ),
        .O(\alu_out_q[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFA8A8A8)) 
    \alu_out_q[25]_i_2 
       (.I0(\alu_out_q[31]_i_5_n_0 ),
        .I1(\reg_op2_reg_n_0_[25] ),
        .I2(\reg_op1_reg_n_0_[25] ),
        .I3(\alu_out_q_reg[27]_i_3_n_6 ),
        .I4(is_lui_auipc_jal_jalr_addi_add_sub),
        .O(\alu_out_q[25]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFEBEEAAA)) 
    \alu_out_q[26]_i_1 
       (.I0(\alu_out_q[26]_i_2_n_0 ),
        .I1(\reg_op1_reg_n_0_[26] ),
        .I2(\reg_op2_reg_n_0_[26] ),
        .I3(\alu_out_q[31]_i_3_n_0 ),
        .I4(\alu_out_q[31]_i_4_n_0 ),
        .O(\alu_out_q[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFA8A8A8)) 
    \alu_out_q[26]_i_2 
       (.I0(\alu_out_q[31]_i_5_n_0 ),
        .I1(\reg_op2_reg_n_0_[26] ),
        .I2(\reg_op1_reg_n_0_[26] ),
        .I3(\alu_out_q_reg[27]_i_3_n_5 ),
        .I4(is_lui_auipc_jal_jalr_addi_add_sub),
        .O(\alu_out_q[26]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFEBEEAAA)) 
    \alu_out_q[27]_i_1 
       (.I0(\alu_out_q[27]_i_2_n_0 ),
        .I1(\reg_op1_reg_n_0_[27] ),
        .I2(\reg_op2_reg_n_0_[27] ),
        .I3(\alu_out_q[31]_i_3_n_0 ),
        .I4(\alu_out_q[31]_i_4_n_0 ),
        .O(\alu_out_q[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFA8A8A8)) 
    \alu_out_q[27]_i_2 
       (.I0(\alu_out_q[31]_i_5_n_0 ),
        .I1(\reg_op2_reg_n_0_[27] ),
        .I2(\reg_op1_reg_n_0_[27] ),
        .I3(\alu_out_q_reg[27]_i_3_n_4 ),
        .I4(is_lui_auipc_jal_jalr_addi_add_sub),
        .O(\alu_out_q[27]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \alu_out_q[27]_i_4 
       (.I0(\reg_op2_reg_n_0_[27] ),
        .I1(instr_sub),
        .I2(\reg_op1_reg_n_0_[27] ),
        .O(\alu_out_q[27]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \alu_out_q[27]_i_5 
       (.I0(\reg_op2_reg_n_0_[26] ),
        .I1(instr_sub),
        .I2(\reg_op1_reg_n_0_[26] ),
        .O(\alu_out_q[27]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \alu_out_q[27]_i_6 
       (.I0(\reg_op2_reg_n_0_[25] ),
        .I1(instr_sub),
        .I2(\reg_op1_reg_n_0_[25] ),
        .O(\alu_out_q[27]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \alu_out_q[27]_i_7 
       (.I0(\reg_op2_reg_n_0_[24] ),
        .I1(instr_sub),
        .I2(\reg_op1_reg_n_0_[24] ),
        .O(\alu_out_q[27]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFEBEEAAA)) 
    \alu_out_q[28]_i_1 
       (.I0(\alu_out_q[28]_i_2_n_0 ),
        .I1(\reg_op1_reg_n_0_[28] ),
        .I2(\reg_op2_reg_n_0_[28] ),
        .I3(\alu_out_q[31]_i_3_n_0 ),
        .I4(\alu_out_q[31]_i_4_n_0 ),
        .O(\alu_out_q[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFA8A8A8)) 
    \alu_out_q[28]_i_2 
       (.I0(\alu_out_q[31]_i_5_n_0 ),
        .I1(\reg_op2_reg_n_0_[28] ),
        .I2(\reg_op1_reg_n_0_[28] ),
        .I3(\alu_out_q_reg[31]_i_6_n_7 ),
        .I4(is_lui_auipc_jal_jalr_addi_add_sub),
        .O(\alu_out_q[28]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFEBEEAAA)) 
    \alu_out_q[29]_i_1 
       (.I0(\alu_out_q[29]_i_2_n_0 ),
        .I1(\reg_op1_reg_n_0_[29] ),
        .I2(\reg_op2_reg_n_0_[29] ),
        .I3(\alu_out_q[31]_i_3_n_0 ),
        .I4(\alu_out_q[31]_i_4_n_0 ),
        .O(\alu_out_q[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFA8A8A8)) 
    \alu_out_q[29]_i_2 
       (.I0(\alu_out_q[31]_i_5_n_0 ),
        .I1(\reg_op2_reg_n_0_[29] ),
        .I2(\reg_op1_reg_n_0_[29] ),
        .I3(\alu_out_q_reg[31]_i_6_n_6 ),
        .I4(is_lui_auipc_jal_jalr_addi_add_sub),
        .O(\alu_out_q[29]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFEBEEAAA)) 
    \alu_out_q[2]_i_1 
       (.I0(\alu_out_q[2]_i_2_n_0 ),
        .I1(\reg_op1_reg_n_0_[2] ),
        .I2(\reg_op2_reg_n_0_[2] ),
        .I3(\alu_out_q[31]_i_3_n_0 ),
        .I4(\alu_out_q[31]_i_4_n_0 ),
        .O(\alu_out_q[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFA8A8A8)) 
    \alu_out_q[2]_i_2 
       (.I0(\alu_out_q[31]_i_5_n_0 ),
        .I1(\reg_op2_reg_n_0_[2] ),
        .I2(\reg_op1_reg_n_0_[2] ),
        .I3(\alu_out_q_reg[0]_i_4_n_5 ),
        .I4(is_lui_auipc_jal_jalr_addi_add_sub),
        .O(\alu_out_q[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFEBEEAAA)) 
    \alu_out_q[30]_i_1 
       (.I0(\alu_out_q[30]_i_2_n_0 ),
        .I1(\reg_op1_reg_n_0_[30] ),
        .I2(\reg_op2_reg_n_0_[30] ),
        .I3(\alu_out_q[31]_i_3_n_0 ),
        .I4(\alu_out_q[31]_i_4_n_0 ),
        .O(\alu_out_q[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFA8A8A8)) 
    \alu_out_q[30]_i_2 
       (.I0(\alu_out_q[31]_i_5_n_0 ),
        .I1(\reg_op2_reg_n_0_[30] ),
        .I2(\reg_op1_reg_n_0_[30] ),
        .I3(\alu_out_q_reg[31]_i_6_n_5 ),
        .I4(is_lui_auipc_jal_jalr_addi_add_sub),
        .O(\alu_out_q[30]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFEBEEAAA)) 
    \alu_out_q[31]_i_1 
       (.I0(\alu_out_q[31]_i_2_n_0 ),
        .I1(\reg_op1_reg_n_0_[31] ),
        .I2(\reg_op2_reg_n_0_[31] ),
        .I3(\alu_out_q[31]_i_3_n_0 ),
        .I4(\alu_out_q[31]_i_4_n_0 ),
        .O(\alu_out_q[31]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \alu_out_q[31]_i_10 
       (.I0(\reg_op2_reg_n_0_[28] ),
        .I1(instr_sub),
        .I2(\reg_op1_reg_n_0_[28] ),
        .O(\alu_out_q[31]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFA8A8A8)) 
    \alu_out_q[31]_i_2 
       (.I0(\alu_out_q[31]_i_5_n_0 ),
        .I1(\reg_op1_reg_n_0_[31] ),
        .I2(\reg_op2_reg_n_0_[31] ),
        .I3(\alu_out_q_reg[31]_i_6_n_4 ),
        .I4(is_lui_auipc_jal_jalr_addi_add_sub),
        .O(\alu_out_q[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0001000100010000)) 
    \alu_out_q[31]_i_3 
       (.I0(is_compare),
        .I1(is_lui_auipc_jal_jalr_addi_add_sub),
        .I2(instr_xori),
        .I3(instr_xor),
        .I4(instr_and),
        .I5(instr_andi),
        .O(\alu_out_q[31]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h1110)) 
    \alu_out_q[31]_i_4 
       (.I0(is_compare),
        .I1(is_lui_auipc_jal_jalr_addi_add_sub),
        .I2(instr_xori),
        .I3(instr_xor),
        .O(\alu_out_q[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0001000100010000)) 
    \alu_out_q[31]_i_5 
       (.I0(is_compare),
        .I1(is_lui_auipc_jal_jalr_addi_add_sub),
        .I2(instr_xori),
        .I3(instr_xor),
        .I4(instr_or),
        .I5(instr_ori),
        .O(\alu_out_q[31]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \alu_out_q[31]_i_7 
       (.I0(\reg_op2_reg_n_0_[31] ),
        .I1(\reg_op1_reg_n_0_[31] ),
        .I2(instr_sub),
        .O(\alu_out_q[31]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \alu_out_q[31]_i_8 
       (.I0(\reg_op2_reg_n_0_[30] ),
        .I1(instr_sub),
        .I2(\reg_op1_reg_n_0_[30] ),
        .O(\alu_out_q[31]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \alu_out_q[31]_i_9 
       (.I0(\reg_op2_reg_n_0_[29] ),
        .I1(instr_sub),
        .I2(\reg_op1_reg_n_0_[29] ),
        .O(\alu_out_q[31]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFEBEEAAA)) 
    \alu_out_q[3]_i_1 
       (.I0(\alu_out_q[3]_i_2_n_0 ),
        .I1(\reg_op1_reg_n_0_[3] ),
        .I2(\reg_op2_reg_n_0_[3] ),
        .I3(\alu_out_q[31]_i_3_n_0 ),
        .I4(\alu_out_q[31]_i_4_n_0 ),
        .O(\alu_out_q[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFA8A8A8)) 
    \alu_out_q[3]_i_2 
       (.I0(\alu_out_q[31]_i_5_n_0 ),
        .I1(\reg_op2_reg_n_0_[3] ),
        .I2(\reg_op1_reg_n_0_[3] ),
        .I3(\alu_out_q_reg[0]_i_4_n_4 ),
        .I4(is_lui_auipc_jal_jalr_addi_add_sub),
        .O(\alu_out_q[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFEBEEAAA)) 
    \alu_out_q[4]_i_1 
       (.I0(\alu_out_q[4]_i_2_n_0 ),
        .I1(\reg_op1_reg_n_0_[4] ),
        .I2(\reg_op2_reg_n_0_[4] ),
        .I3(\alu_out_q[31]_i_3_n_0 ),
        .I4(\alu_out_q[31]_i_4_n_0 ),
        .O(\alu_out_q[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFA8A8A8)) 
    \alu_out_q[4]_i_2 
       (.I0(\alu_out_q[31]_i_5_n_0 ),
        .I1(\reg_op2_reg_n_0_[4] ),
        .I2(\reg_op1_reg_n_0_[4] ),
        .I3(\alu_out_q_reg[7]_i_3_n_7 ),
        .I4(is_lui_auipc_jal_jalr_addi_add_sub),
        .O(\alu_out_q[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFEBEEAAA)) 
    \alu_out_q[5]_i_1 
       (.I0(\alu_out_q[5]_i_2_n_0 ),
        .I1(\reg_op1_reg_n_0_[5] ),
        .I2(\reg_op2_reg_n_0_[5] ),
        .I3(\alu_out_q[31]_i_3_n_0 ),
        .I4(\alu_out_q[31]_i_4_n_0 ),
        .O(\alu_out_q[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFA8A8A8)) 
    \alu_out_q[5]_i_2 
       (.I0(\alu_out_q[31]_i_5_n_0 ),
        .I1(\reg_op2_reg_n_0_[5] ),
        .I2(\reg_op1_reg_n_0_[5] ),
        .I3(\alu_out_q_reg[7]_i_3_n_6 ),
        .I4(is_lui_auipc_jal_jalr_addi_add_sub),
        .O(\alu_out_q[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFEBEEAAA)) 
    \alu_out_q[6]_i_1 
       (.I0(\alu_out_q[6]_i_2_n_0 ),
        .I1(\reg_op1_reg_n_0_[6] ),
        .I2(\reg_op2_reg_n_0_[6] ),
        .I3(\alu_out_q[31]_i_3_n_0 ),
        .I4(\alu_out_q[31]_i_4_n_0 ),
        .O(\alu_out_q[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFA8A8A8)) 
    \alu_out_q[6]_i_2 
       (.I0(\alu_out_q[31]_i_5_n_0 ),
        .I1(\reg_op2_reg_n_0_[6] ),
        .I2(\reg_op1_reg_n_0_[6] ),
        .I3(\alu_out_q_reg[7]_i_3_n_5 ),
        .I4(is_lui_auipc_jal_jalr_addi_add_sub),
        .O(\alu_out_q[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFEBEEAAA)) 
    \alu_out_q[7]_i_1 
       (.I0(\alu_out_q[7]_i_2_n_0 ),
        .I1(\reg_op1_reg_n_0_[7] ),
        .I2(\reg_op2_reg_n_0_[7] ),
        .I3(\alu_out_q[31]_i_3_n_0 ),
        .I4(\alu_out_q[31]_i_4_n_0 ),
        .O(\alu_out_q[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFA8A8A8)) 
    \alu_out_q[7]_i_2 
       (.I0(\alu_out_q[31]_i_5_n_0 ),
        .I1(\reg_op2_reg_n_0_[7] ),
        .I2(\reg_op1_reg_n_0_[7] ),
        .I3(\alu_out_q_reg[7]_i_3_n_4 ),
        .I4(is_lui_auipc_jal_jalr_addi_add_sub),
        .O(\alu_out_q[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \alu_out_q[7]_i_4 
       (.I0(\reg_op2_reg_n_0_[7] ),
        .I1(instr_sub),
        .I2(\reg_op1_reg_n_0_[7] ),
        .O(\alu_out_q[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \alu_out_q[7]_i_5 
       (.I0(\reg_op2_reg_n_0_[6] ),
        .I1(instr_sub),
        .I2(\reg_op1_reg_n_0_[6] ),
        .O(\alu_out_q[7]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \alu_out_q[7]_i_6 
       (.I0(\reg_op2_reg_n_0_[5] ),
        .I1(instr_sub),
        .I2(\reg_op1_reg_n_0_[5] ),
        .O(\alu_out_q[7]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \alu_out_q[7]_i_7 
       (.I0(\reg_op2_reg_n_0_[4] ),
        .I1(instr_sub),
        .I2(\reg_op1_reg_n_0_[4] ),
        .O(\alu_out_q[7]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFEBEEAAA)) 
    \alu_out_q[8]_i_1 
       (.I0(\alu_out_q[8]_i_2_n_0 ),
        .I1(\reg_op1_reg_n_0_[8] ),
        .I2(\reg_op2_reg_n_0_[8] ),
        .I3(\alu_out_q[31]_i_3_n_0 ),
        .I4(\alu_out_q[31]_i_4_n_0 ),
        .O(\alu_out_q[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFA8A8A8)) 
    \alu_out_q[8]_i_2 
       (.I0(\alu_out_q[31]_i_5_n_0 ),
        .I1(\reg_op2_reg_n_0_[8] ),
        .I2(\reg_op1_reg_n_0_[8] ),
        .I3(\alu_out_q_reg[11]_i_3_n_7 ),
        .I4(is_lui_auipc_jal_jalr_addi_add_sub),
        .O(\alu_out_q[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFEBEEAAA)) 
    \alu_out_q[9]_i_1 
       (.I0(\alu_out_q[9]_i_2_n_0 ),
        .I1(\reg_op1_reg_n_0_[9] ),
        .I2(\reg_op2_reg_n_0_[9] ),
        .I3(\alu_out_q[31]_i_3_n_0 ),
        .I4(\alu_out_q[31]_i_4_n_0 ),
        .O(\alu_out_q[9]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFA8A8A8)) 
    \alu_out_q[9]_i_2 
       (.I0(\alu_out_q[31]_i_5_n_0 ),
        .I1(\reg_op2_reg_n_0_[9] ),
        .I2(\reg_op1_reg_n_0_[9] ),
        .I3(\alu_out_q_reg[11]_i_3_n_6 ),
        .I4(is_lui_auipc_jal_jalr_addi_add_sub),
        .O(\alu_out_q[9]_i_2_n_0 ));
  FDRE \alu_out_q_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\alu_out_q[0]_i_1_n_0 ),
        .Q(alu_out_q[0]),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \alu_out_q_reg[0]_i_12 
       (.CI(\alu_out_q_reg[0]_i_18_n_0 ),
        .CO({alu_lts,\alu_out_q_reg[0]_i_12_n_1 ,\alu_out_q_reg[0]_i_12_n_2 ,\alu_out_q_reg[0]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI({\alu_out_q[0]_i_19_n_0 ,\alu_out_q[0]_i_20_n_0 ,\alu_out_q[0]_i_21_n_0 ,\alu_out_q[0]_i_22_n_0 }),
        .O(\NLW_alu_out_q_reg[0]_i_12_O_UNCONNECTED [3:0]),
        .S({\alu_out_q[0]_i_23_n_0 ,\alu_out_q[0]_i_24_n_0 ,\alu_out_q[0]_i_25_n_0 ,\alu_out_q[0]_i_26_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \alu_out_q_reg[0]_i_13 
       (.CI(\alu_out_q_reg[0]_i_27_n_0 ),
        .CO({alu_ltu,\alu_out_q_reg[0]_i_13_n_1 ,\alu_out_q_reg[0]_i_13_n_2 ,\alu_out_q_reg[0]_i_13_n_3 }),
        .CYINIT(1'b0),
        .DI({\alu_out_q[0]_i_28_n_0 ,\alu_out_q[0]_i_29_n_0 ,\alu_out_q[0]_i_30_n_0 ,\alu_out_q[0]_i_31_n_0 }),
        .O(\NLW_alu_out_q_reg[0]_i_13_O_UNCONNECTED [3:0]),
        .S({\alu_out_q[0]_i_32_n_0 ,\alu_out_q[0]_i_33_n_0 ,\alu_out_q[0]_i_34_n_0 ,\alu_out_q[0]_i_35_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \alu_out_q_reg[0]_i_14 
       (.CI(\alu_out_q_reg[0]_i_36_n_0 ),
        .CO({\alu_out_q_reg[0]_i_14_n_0 ,\alu_out_q_reg[0]_i_14_n_1 ,\alu_out_q_reg[0]_i_14_n_2 ,\alu_out_q_reg[0]_i_14_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_alu_out_q_reg[0]_i_14_O_UNCONNECTED [3:0]),
        .S({\alu_out_q[0]_i_37_n_0 ,\alu_out_q[0]_i_38_n_0 ,\alu_out_q[0]_i_39_n_0 ,\alu_out_q[0]_i_40_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \alu_out_q_reg[0]_i_18 
       (.CI(\alu_out_q_reg[0]_i_41_n_0 ),
        .CO({\alu_out_q_reg[0]_i_18_n_0 ,\alu_out_q_reg[0]_i_18_n_1 ,\alu_out_q_reg[0]_i_18_n_2 ,\alu_out_q_reg[0]_i_18_n_3 }),
        .CYINIT(1'b0),
        .DI({\alu_out_q[0]_i_42_n_0 ,\alu_out_q[0]_i_43_n_0 ,\alu_out_q[0]_i_44_n_0 ,\alu_out_q[0]_i_45_n_0 }),
        .O(\NLW_alu_out_q_reg[0]_i_18_O_UNCONNECTED [3:0]),
        .S({\alu_out_q[0]_i_46_n_0 ,\alu_out_q[0]_i_47_n_0 ,\alu_out_q[0]_i_48_n_0 ,\alu_out_q[0]_i_49_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \alu_out_q_reg[0]_i_27 
       (.CI(\alu_out_q_reg[0]_i_50_n_0 ),
        .CO({\alu_out_q_reg[0]_i_27_n_0 ,\alu_out_q_reg[0]_i_27_n_1 ,\alu_out_q_reg[0]_i_27_n_2 ,\alu_out_q_reg[0]_i_27_n_3 }),
        .CYINIT(1'b0),
        .DI({\alu_out_q[0]_i_51_n_0 ,\alu_out_q[0]_i_52_n_0 ,\alu_out_q[0]_i_53_n_0 ,\alu_out_q[0]_i_54_n_0 }),
        .O(\NLW_alu_out_q_reg[0]_i_27_O_UNCONNECTED [3:0]),
        .S({\alu_out_q[0]_i_55_n_0 ,\alu_out_q[0]_i_56_n_0 ,\alu_out_q[0]_i_57_n_0 ,\alu_out_q[0]_i_58_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \alu_out_q_reg[0]_i_36 
       (.CI(1'b0),
        .CO({\alu_out_q_reg[0]_i_36_n_0 ,\alu_out_q_reg[0]_i_36_n_1 ,\alu_out_q_reg[0]_i_36_n_2 ,\alu_out_q_reg[0]_i_36_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_alu_out_q_reg[0]_i_36_O_UNCONNECTED [3:0]),
        .S({\alu_out_q[0]_i_59_n_0 ,\alu_out_q[0]_i_60_n_0 ,\alu_out_q[0]_i_61_n_0 ,\alu_out_q[0]_i_62_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \alu_out_q_reg[0]_i_4 
       (.CI(1'b0),
        .CO({\alu_out_q_reg[0]_i_4_n_0 ,\alu_out_q_reg[0]_i_4_n_1 ,\alu_out_q_reg[0]_i_4_n_2 ,\alu_out_q_reg[0]_i_4_n_3 }),
        .CYINIT(\reg_op1_reg_n_0_[0] ),
        .DI({\reg_op1_reg_n_0_[3] ,\reg_op1_reg_n_0_[2] ,\reg_op1_reg_n_0_[1] ,instr_sub}),
        .O({\alu_out_q_reg[0]_i_4_n_4 ,\alu_out_q_reg[0]_i_4_n_5 ,\alu_out_q_reg[0]_i_4_n_6 ,\alu_out_q_reg[0]_i_4_n_7 }),
        .S({\alu_out_q[0]_i_8_n_0 ,\alu_out_q[0]_i_9_n_0 ,\alu_out_q[0]_i_10_n_0 ,\alu_out_q[0]_i_11_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \alu_out_q_reg[0]_i_41 
       (.CI(\alu_out_q_reg[0]_i_63_n_0 ),
        .CO({\alu_out_q_reg[0]_i_41_n_0 ,\alu_out_q_reg[0]_i_41_n_1 ,\alu_out_q_reg[0]_i_41_n_2 ,\alu_out_q_reg[0]_i_41_n_3 }),
        .CYINIT(1'b0),
        .DI({\alu_out_q[0]_i_64_n_0 ,\alu_out_q[0]_i_65_n_0 ,\alu_out_q[0]_i_66_n_0 ,\alu_out_q[0]_i_67_n_0 }),
        .O(\NLW_alu_out_q_reg[0]_i_41_O_UNCONNECTED [3:0]),
        .S({\alu_out_q[0]_i_68_n_0 ,\alu_out_q[0]_i_69_n_0 ,\alu_out_q[0]_i_70_n_0 ,\alu_out_q[0]_i_71_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \alu_out_q_reg[0]_i_50 
       (.CI(\alu_out_q_reg[0]_i_72_n_0 ),
        .CO({\alu_out_q_reg[0]_i_50_n_0 ,\alu_out_q_reg[0]_i_50_n_1 ,\alu_out_q_reg[0]_i_50_n_2 ,\alu_out_q_reg[0]_i_50_n_3 }),
        .CYINIT(1'b0),
        .DI({\alu_out_q[0]_i_73_n_0 ,\alu_out_q[0]_i_74_n_0 ,\alu_out_q[0]_i_75_n_0 ,\alu_out_q[0]_i_76_n_0 }),
        .O(\NLW_alu_out_q_reg[0]_i_50_O_UNCONNECTED [3:0]),
        .S({\alu_out_q[0]_i_77_n_0 ,\alu_out_q[0]_i_78_n_0 ,\alu_out_q[0]_i_79_n_0 ,\alu_out_q[0]_i_80_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \alu_out_q_reg[0]_i_6 
       (.CI(\alu_out_q_reg[0]_i_14_n_0 ),
        .CO({\NLW_alu_out_q_reg[0]_i_6_CO_UNCONNECTED [3],alu_eq,\alu_out_q_reg[0]_i_6_n_2 ,\alu_out_q_reg[0]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_alu_out_q_reg[0]_i_6_O_UNCONNECTED [3:0]),
        .S({1'b0,\alu_out_q[0]_i_15_n_0 ,\alu_out_q[0]_i_16_n_0 ,\alu_out_q[0]_i_17_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \alu_out_q_reg[0]_i_63 
       (.CI(1'b0),
        .CO({\alu_out_q_reg[0]_i_63_n_0 ,\alu_out_q_reg[0]_i_63_n_1 ,\alu_out_q_reg[0]_i_63_n_2 ,\alu_out_q_reg[0]_i_63_n_3 }),
        .CYINIT(1'b0),
        .DI({\alu_out_q[0]_i_81_n_0 ,\alu_out_q[0]_i_82_n_0 ,\alu_out_q[0]_i_83_n_0 ,\alu_out_q[0]_i_84_n_0 }),
        .O(\NLW_alu_out_q_reg[0]_i_63_O_UNCONNECTED [3:0]),
        .S({\alu_out_q[0]_i_85_n_0 ,\alu_out_q[0]_i_86_n_0 ,\alu_out_q[0]_i_87_n_0 ,\alu_out_q[0]_i_88_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \alu_out_q_reg[0]_i_72 
       (.CI(1'b0),
        .CO({\alu_out_q_reg[0]_i_72_n_0 ,\alu_out_q_reg[0]_i_72_n_1 ,\alu_out_q_reg[0]_i_72_n_2 ,\alu_out_q_reg[0]_i_72_n_3 }),
        .CYINIT(1'b0),
        .DI({\alu_out_q[0]_i_89_n_0 ,\alu_out_q[0]_i_90_n_0 ,\alu_out_q[0]_i_91_n_0 ,\alu_out_q[0]_i_92_n_0 }),
        .O(\NLW_alu_out_q_reg[0]_i_72_O_UNCONNECTED [3:0]),
        .S({\alu_out_q[0]_i_93_n_0 ,\alu_out_q[0]_i_94_n_0 ,\alu_out_q[0]_i_95_n_0 ,\alu_out_q[0]_i_96_n_0 }));
  FDRE \alu_out_q_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\alu_out_q[10]_i_1_n_0 ),
        .Q(alu_out_q[10]),
        .R(1'b0));
  FDRE \alu_out_q_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\alu_out_q[11]_i_1_n_0 ),
        .Q(alu_out_q[11]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \alu_out_q_reg[11]_i_3 
       (.CI(\alu_out_q_reg[7]_i_3_n_0 ),
        .CO({\alu_out_q_reg[11]_i_3_n_0 ,\alu_out_q_reg[11]_i_3_n_1 ,\alu_out_q_reg[11]_i_3_n_2 ,\alu_out_q_reg[11]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\reg_op1_reg_n_0_[11] ,\reg_op1_reg_n_0_[10] ,\reg_op1_reg_n_0_[9] ,\reg_op1_reg_n_0_[8] }),
        .O({\alu_out_q_reg[11]_i_3_n_4 ,\alu_out_q_reg[11]_i_3_n_5 ,\alu_out_q_reg[11]_i_3_n_6 ,\alu_out_q_reg[11]_i_3_n_7 }),
        .S({\alu_out_q[11]_i_4_n_0 ,\alu_out_q[11]_i_5_n_0 ,\alu_out_q[11]_i_6_n_0 ,\alu_out_q[11]_i_7_n_0 }));
  FDRE \alu_out_q_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\alu_out_q[12]_i_1_n_0 ),
        .Q(alu_out_q[12]),
        .R(1'b0));
  FDRE \alu_out_q_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\alu_out_q[13]_i_1_n_0 ),
        .Q(alu_out_q[13]),
        .R(1'b0));
  FDRE \alu_out_q_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\alu_out_q[14]_i_1_n_0 ),
        .Q(alu_out_q[14]),
        .R(1'b0));
  FDRE \alu_out_q_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\alu_out_q[15]_i_1_n_0 ),
        .Q(alu_out_q[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \alu_out_q_reg[15]_i_3 
       (.CI(\alu_out_q_reg[11]_i_3_n_0 ),
        .CO({\alu_out_q_reg[15]_i_3_n_0 ,\alu_out_q_reg[15]_i_3_n_1 ,\alu_out_q_reg[15]_i_3_n_2 ,\alu_out_q_reg[15]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\reg_op1_reg_n_0_[15] ,\reg_op1_reg_n_0_[14] ,\reg_op1_reg_n_0_[13] ,\reg_op1_reg_n_0_[12] }),
        .O({\alu_out_q_reg[15]_i_3_n_4 ,\alu_out_q_reg[15]_i_3_n_5 ,\alu_out_q_reg[15]_i_3_n_6 ,\alu_out_q_reg[15]_i_3_n_7 }),
        .S({\alu_out_q[15]_i_4_n_0 ,\alu_out_q[15]_i_5_n_0 ,\alu_out_q[15]_i_6_n_0 ,\alu_out_q[15]_i_7_n_0 }));
  FDRE \alu_out_q_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\alu_out_q[16]_i_1_n_0 ),
        .Q(alu_out_q[16]),
        .R(1'b0));
  FDRE \alu_out_q_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\alu_out_q[17]_i_1_n_0 ),
        .Q(alu_out_q[17]),
        .R(1'b0));
  FDRE \alu_out_q_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\alu_out_q[18]_i_1_n_0 ),
        .Q(alu_out_q[18]),
        .R(1'b0));
  FDRE \alu_out_q_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\alu_out_q[19]_i_1_n_0 ),
        .Q(alu_out_q[19]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \alu_out_q_reg[19]_i_3 
       (.CI(\alu_out_q_reg[15]_i_3_n_0 ),
        .CO({\alu_out_q_reg[19]_i_3_n_0 ,\alu_out_q_reg[19]_i_3_n_1 ,\alu_out_q_reg[19]_i_3_n_2 ,\alu_out_q_reg[19]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\reg_op1_reg_n_0_[19] ,\reg_op1_reg_n_0_[18] ,\reg_op1_reg_n_0_[17] ,\reg_op1_reg_n_0_[16] }),
        .O({\alu_out_q_reg[19]_i_3_n_4 ,\alu_out_q_reg[19]_i_3_n_5 ,\alu_out_q_reg[19]_i_3_n_6 ,\alu_out_q_reg[19]_i_3_n_7 }),
        .S({\alu_out_q[19]_i_4_n_0 ,\alu_out_q[19]_i_5_n_0 ,\alu_out_q[19]_i_6_n_0 ,\alu_out_q[19]_i_7_n_0 }));
  FDRE \alu_out_q_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\alu_out_q[1]_i_1_n_0 ),
        .Q(alu_out_q[1]),
        .R(1'b0));
  FDRE \alu_out_q_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\alu_out_q[20]_i_1_n_0 ),
        .Q(alu_out_q[20]),
        .R(1'b0));
  FDRE \alu_out_q_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\alu_out_q[21]_i_1_n_0 ),
        .Q(alu_out_q[21]),
        .R(1'b0));
  FDRE \alu_out_q_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\alu_out_q[22]_i_1_n_0 ),
        .Q(alu_out_q[22]),
        .R(1'b0));
  FDRE \alu_out_q_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\alu_out_q[23]_i_1_n_0 ),
        .Q(alu_out_q[23]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \alu_out_q_reg[23]_i_3 
       (.CI(\alu_out_q_reg[19]_i_3_n_0 ),
        .CO({\alu_out_q_reg[23]_i_3_n_0 ,\alu_out_q_reg[23]_i_3_n_1 ,\alu_out_q_reg[23]_i_3_n_2 ,\alu_out_q_reg[23]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\reg_op1_reg_n_0_[23] ,\reg_op1_reg_n_0_[22] ,\reg_op1_reg_n_0_[21] ,\reg_op1_reg_n_0_[20] }),
        .O({\alu_out_q_reg[23]_i_3_n_4 ,\alu_out_q_reg[23]_i_3_n_5 ,\alu_out_q_reg[23]_i_3_n_6 ,\alu_out_q_reg[23]_i_3_n_7 }),
        .S({\alu_out_q[23]_i_4_n_0 ,\alu_out_q[23]_i_5_n_0 ,\alu_out_q[23]_i_6_n_0 ,\alu_out_q[23]_i_7_n_0 }));
  FDRE \alu_out_q_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\alu_out_q[24]_i_1_n_0 ),
        .Q(alu_out_q[24]),
        .R(1'b0));
  FDRE \alu_out_q_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\alu_out_q[25]_i_1_n_0 ),
        .Q(alu_out_q[25]),
        .R(1'b0));
  FDRE \alu_out_q_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\alu_out_q[26]_i_1_n_0 ),
        .Q(alu_out_q[26]),
        .R(1'b0));
  FDRE \alu_out_q_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\alu_out_q[27]_i_1_n_0 ),
        .Q(alu_out_q[27]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \alu_out_q_reg[27]_i_3 
       (.CI(\alu_out_q_reg[23]_i_3_n_0 ),
        .CO({\alu_out_q_reg[27]_i_3_n_0 ,\alu_out_q_reg[27]_i_3_n_1 ,\alu_out_q_reg[27]_i_3_n_2 ,\alu_out_q_reg[27]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\reg_op1_reg_n_0_[27] ,\reg_op1_reg_n_0_[26] ,\reg_op1_reg_n_0_[25] ,\reg_op1_reg_n_0_[24] }),
        .O({\alu_out_q_reg[27]_i_3_n_4 ,\alu_out_q_reg[27]_i_3_n_5 ,\alu_out_q_reg[27]_i_3_n_6 ,\alu_out_q_reg[27]_i_3_n_7 }),
        .S({\alu_out_q[27]_i_4_n_0 ,\alu_out_q[27]_i_5_n_0 ,\alu_out_q[27]_i_6_n_0 ,\alu_out_q[27]_i_7_n_0 }));
  FDRE \alu_out_q_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(\alu_out_q[28]_i_1_n_0 ),
        .Q(alu_out_q[28]),
        .R(1'b0));
  FDRE \alu_out_q_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(\alu_out_q[29]_i_1_n_0 ),
        .Q(alu_out_q[29]),
        .R(1'b0));
  FDRE \alu_out_q_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\alu_out_q[2]_i_1_n_0 ),
        .Q(alu_out_q[2]),
        .R(1'b0));
  FDRE \alu_out_q_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(\alu_out_q[30]_i_1_n_0 ),
        .Q(alu_out_q[30]),
        .R(1'b0));
  FDRE \alu_out_q_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(\alu_out_q[31]_i_1_n_0 ),
        .Q(alu_out_q[31]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \alu_out_q_reg[31]_i_6 
       (.CI(\alu_out_q_reg[27]_i_3_n_0 ),
        .CO({\NLW_alu_out_q_reg[31]_i_6_CO_UNCONNECTED [3],\alu_out_q_reg[31]_i_6_n_1 ,\alu_out_q_reg[31]_i_6_n_2 ,\alu_out_q_reg[31]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\reg_op1_reg_n_0_[30] ,\reg_op1_reg_n_0_[29] ,\reg_op1_reg_n_0_[28] }),
        .O({\alu_out_q_reg[31]_i_6_n_4 ,\alu_out_q_reg[31]_i_6_n_5 ,\alu_out_q_reg[31]_i_6_n_6 ,\alu_out_q_reg[31]_i_6_n_7 }),
        .S({\alu_out_q[31]_i_7_n_0 ,\alu_out_q[31]_i_8_n_0 ,\alu_out_q[31]_i_9_n_0 ,\alu_out_q[31]_i_10_n_0 }));
  FDRE \alu_out_q_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\alu_out_q[3]_i_1_n_0 ),
        .Q(alu_out_q[3]),
        .R(1'b0));
  FDRE \alu_out_q_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\alu_out_q[4]_i_1_n_0 ),
        .Q(alu_out_q[4]),
        .R(1'b0));
  FDRE \alu_out_q_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\alu_out_q[5]_i_1_n_0 ),
        .Q(alu_out_q[5]),
        .R(1'b0));
  FDRE \alu_out_q_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\alu_out_q[6]_i_1_n_0 ),
        .Q(alu_out_q[6]),
        .R(1'b0));
  FDRE \alu_out_q_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\alu_out_q[7]_i_1_n_0 ),
        .Q(alu_out_q[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \alu_out_q_reg[7]_i_3 
       (.CI(\alu_out_q_reg[0]_i_4_n_0 ),
        .CO({\alu_out_q_reg[7]_i_3_n_0 ,\alu_out_q_reg[7]_i_3_n_1 ,\alu_out_q_reg[7]_i_3_n_2 ,\alu_out_q_reg[7]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\reg_op1_reg_n_0_[7] ,\reg_op1_reg_n_0_[6] ,\reg_op1_reg_n_0_[5] ,\reg_op1_reg_n_0_[4] }),
        .O({\alu_out_q_reg[7]_i_3_n_4 ,\alu_out_q_reg[7]_i_3_n_5 ,\alu_out_q_reg[7]_i_3_n_6 ,\alu_out_q_reg[7]_i_3_n_7 }),
        .S({\alu_out_q[7]_i_4_n_0 ,\alu_out_q[7]_i_5_n_0 ,\alu_out_q[7]_i_6_n_0 ,\alu_out_q[7]_i_7_n_0 }));
  FDRE \alu_out_q_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\alu_out_q[8]_i_1_n_0 ),
        .Q(alu_out_q[8]),
        .R(1'b0));
  FDRE \alu_out_q_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\alu_out_q[9]_i_1_n_0 ),
        .Q(alu_out_q[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFD5)) 
    clear_prefetched_high_word_q_i_1
       (.I0(resetn),
        .I1(clear_prefetched_high_word_q),
        .I2(prefetched_high_word_reg_0),
        .I3(\irq_state_reg[0]_0 ),
        .I4(\irq_state_reg_n_0_[1] ),
        .I5(latched_branch_reg_0),
        .O(clear_prefetched_high_word));
  FDRE clear_prefetched_high_word_q_reg
       (.C(clk),
        .CE(1'b1),
        .D(clear_prefetched_high_word),
        .Q(clear_prefetched_high_word_q),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h111F)) 
    compressed_instr_i_1
       (.I0(compressed_instr_i_2_n_0),
        .I1(\mem_rdata_q[0]_i_2_n_0 ),
        .I2(compressed_instr_i_3_n_0),
        .I3(\mem_rdata_q[1]_i_2_n_0 ),
        .O(compressed_instr_i_1_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    compressed_instr_i_2
       (.I0(mem_axi_rdata[16]),
        .I1(\mem_rdata_q[11]_i_6_n_0 ),
        .I2(mem_axi_rdata[0]),
        .I3(\mem_rdata_q[11]_i_5_n_0 ),
        .O(compressed_instr_i_2_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    compressed_instr_i_3
       (.I0(mem_axi_rdata[17]),
        .I1(\mem_rdata_q[11]_i_6_n_0 ),
        .I2(mem_axi_rdata[1]),
        .I3(\mem_rdata_q[11]_i_5_n_0 ),
        .O(compressed_instr_i_3_n_0));
  FDRE compressed_instr_reg
       (.C(clk),
        .CE(instr_lui0),
        .D(compressed_instr_i_1_n_0),
        .Q(compressed_instr),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \count_cycle[0]_i_2 
       (.I0(count_cycle_reg[0]),
        .O(\count_cycle[0]_i_2_n_0 ));
  FDRE \count_cycle_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[0]_i_1_n_7 ),
        .Q(count_cycle_reg[0]),
        .R(trap_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_cycle_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\count_cycle_reg[0]_i_1_n_0 ,\count_cycle_reg[0]_i_1_n_1 ,\count_cycle_reg[0]_i_1_n_2 ,\count_cycle_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\count_cycle_reg[0]_i_1_n_4 ,\count_cycle_reg[0]_i_1_n_5 ,\count_cycle_reg[0]_i_1_n_6 ,\count_cycle_reg[0]_i_1_n_7 }),
        .S({count_cycle_reg[3:1],\count_cycle[0]_i_2_n_0 }));
  FDRE \count_cycle_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[8]_i_1_n_5 ),
        .Q(count_cycle_reg[10]),
        .R(trap_i_1_n_0));
  FDRE \count_cycle_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[8]_i_1_n_4 ),
        .Q(count_cycle_reg[11]),
        .R(trap_i_1_n_0));
  FDRE \count_cycle_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[12]_i_1_n_7 ),
        .Q(count_cycle_reg[12]),
        .R(trap_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_cycle_reg[12]_i_1 
       (.CI(\count_cycle_reg[8]_i_1_n_0 ),
        .CO({\count_cycle_reg[12]_i_1_n_0 ,\count_cycle_reg[12]_i_1_n_1 ,\count_cycle_reg[12]_i_1_n_2 ,\count_cycle_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_cycle_reg[12]_i_1_n_4 ,\count_cycle_reg[12]_i_1_n_5 ,\count_cycle_reg[12]_i_1_n_6 ,\count_cycle_reg[12]_i_1_n_7 }),
        .S(count_cycle_reg[15:12]));
  FDRE \count_cycle_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[12]_i_1_n_6 ),
        .Q(count_cycle_reg[13]),
        .R(trap_i_1_n_0));
  FDRE \count_cycle_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[12]_i_1_n_5 ),
        .Q(count_cycle_reg[14]),
        .R(trap_i_1_n_0));
  FDRE \count_cycle_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[12]_i_1_n_4 ),
        .Q(count_cycle_reg[15]),
        .R(trap_i_1_n_0));
  FDRE \count_cycle_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[16]_i_1_n_7 ),
        .Q(count_cycle_reg[16]),
        .R(trap_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_cycle_reg[16]_i_1 
       (.CI(\count_cycle_reg[12]_i_1_n_0 ),
        .CO({\count_cycle_reg[16]_i_1_n_0 ,\count_cycle_reg[16]_i_1_n_1 ,\count_cycle_reg[16]_i_1_n_2 ,\count_cycle_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_cycle_reg[16]_i_1_n_4 ,\count_cycle_reg[16]_i_1_n_5 ,\count_cycle_reg[16]_i_1_n_6 ,\count_cycle_reg[16]_i_1_n_7 }),
        .S(count_cycle_reg[19:16]));
  FDRE \count_cycle_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[16]_i_1_n_6 ),
        .Q(count_cycle_reg[17]),
        .R(trap_i_1_n_0));
  FDRE \count_cycle_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[16]_i_1_n_5 ),
        .Q(count_cycle_reg[18]),
        .R(trap_i_1_n_0));
  FDRE \count_cycle_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[16]_i_1_n_4 ),
        .Q(count_cycle_reg[19]),
        .R(trap_i_1_n_0));
  FDRE \count_cycle_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[0]_i_1_n_6 ),
        .Q(count_cycle_reg[1]),
        .R(trap_i_1_n_0));
  FDRE \count_cycle_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[20]_i_1_n_7 ),
        .Q(count_cycle_reg[20]),
        .R(trap_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_cycle_reg[20]_i_1 
       (.CI(\count_cycle_reg[16]_i_1_n_0 ),
        .CO({\count_cycle_reg[20]_i_1_n_0 ,\count_cycle_reg[20]_i_1_n_1 ,\count_cycle_reg[20]_i_1_n_2 ,\count_cycle_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_cycle_reg[20]_i_1_n_4 ,\count_cycle_reg[20]_i_1_n_5 ,\count_cycle_reg[20]_i_1_n_6 ,\count_cycle_reg[20]_i_1_n_7 }),
        .S(count_cycle_reg[23:20]));
  FDRE \count_cycle_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[20]_i_1_n_6 ),
        .Q(count_cycle_reg[21]),
        .R(trap_i_1_n_0));
  FDRE \count_cycle_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[20]_i_1_n_5 ),
        .Q(count_cycle_reg[22]),
        .R(trap_i_1_n_0));
  FDRE \count_cycle_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[20]_i_1_n_4 ),
        .Q(count_cycle_reg[23]),
        .R(trap_i_1_n_0));
  FDRE \count_cycle_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[24]_i_1_n_7 ),
        .Q(count_cycle_reg[24]),
        .R(trap_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_cycle_reg[24]_i_1 
       (.CI(\count_cycle_reg[20]_i_1_n_0 ),
        .CO({\count_cycle_reg[24]_i_1_n_0 ,\count_cycle_reg[24]_i_1_n_1 ,\count_cycle_reg[24]_i_1_n_2 ,\count_cycle_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_cycle_reg[24]_i_1_n_4 ,\count_cycle_reg[24]_i_1_n_5 ,\count_cycle_reg[24]_i_1_n_6 ,\count_cycle_reg[24]_i_1_n_7 }),
        .S(count_cycle_reg[27:24]));
  FDRE \count_cycle_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[24]_i_1_n_6 ),
        .Q(count_cycle_reg[25]),
        .R(trap_i_1_n_0));
  FDRE \count_cycle_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[24]_i_1_n_5 ),
        .Q(count_cycle_reg[26]),
        .R(trap_i_1_n_0));
  FDRE \count_cycle_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[24]_i_1_n_4 ),
        .Q(count_cycle_reg[27]),
        .R(trap_i_1_n_0));
  FDRE \count_cycle_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[28]_i_1_n_7 ),
        .Q(count_cycle_reg[28]),
        .R(trap_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_cycle_reg[28]_i_1 
       (.CI(\count_cycle_reg[24]_i_1_n_0 ),
        .CO({\count_cycle_reg[28]_i_1_n_0 ,\count_cycle_reg[28]_i_1_n_1 ,\count_cycle_reg[28]_i_1_n_2 ,\count_cycle_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_cycle_reg[28]_i_1_n_4 ,\count_cycle_reg[28]_i_1_n_5 ,\count_cycle_reg[28]_i_1_n_6 ,\count_cycle_reg[28]_i_1_n_7 }),
        .S(count_cycle_reg[31:28]));
  FDRE \count_cycle_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[28]_i_1_n_6 ),
        .Q(count_cycle_reg[29]),
        .R(trap_i_1_n_0));
  FDRE \count_cycle_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[0]_i_1_n_5 ),
        .Q(count_cycle_reg[2]),
        .R(trap_i_1_n_0));
  FDRE \count_cycle_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[28]_i_1_n_5 ),
        .Q(count_cycle_reg[30]),
        .R(trap_i_1_n_0));
  FDRE \count_cycle_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[28]_i_1_n_4 ),
        .Q(count_cycle_reg[31]),
        .R(trap_i_1_n_0));
  FDRE \count_cycle_reg[32] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[32]_i_1_n_7 ),
        .Q(count_cycle_reg[32]),
        .R(trap_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_cycle_reg[32]_i_1 
       (.CI(\count_cycle_reg[28]_i_1_n_0 ),
        .CO({\count_cycle_reg[32]_i_1_n_0 ,\count_cycle_reg[32]_i_1_n_1 ,\count_cycle_reg[32]_i_1_n_2 ,\count_cycle_reg[32]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_cycle_reg[32]_i_1_n_4 ,\count_cycle_reg[32]_i_1_n_5 ,\count_cycle_reg[32]_i_1_n_6 ,\count_cycle_reg[32]_i_1_n_7 }),
        .S(count_cycle_reg[35:32]));
  FDRE \count_cycle_reg[33] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[32]_i_1_n_6 ),
        .Q(count_cycle_reg[33]),
        .R(trap_i_1_n_0));
  FDRE \count_cycle_reg[34] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[32]_i_1_n_5 ),
        .Q(count_cycle_reg[34]),
        .R(trap_i_1_n_0));
  FDRE \count_cycle_reg[35] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[32]_i_1_n_4 ),
        .Q(count_cycle_reg[35]),
        .R(trap_i_1_n_0));
  FDRE \count_cycle_reg[36] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[36]_i_1_n_7 ),
        .Q(count_cycle_reg[36]),
        .R(trap_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_cycle_reg[36]_i_1 
       (.CI(\count_cycle_reg[32]_i_1_n_0 ),
        .CO({\count_cycle_reg[36]_i_1_n_0 ,\count_cycle_reg[36]_i_1_n_1 ,\count_cycle_reg[36]_i_1_n_2 ,\count_cycle_reg[36]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_cycle_reg[36]_i_1_n_4 ,\count_cycle_reg[36]_i_1_n_5 ,\count_cycle_reg[36]_i_1_n_6 ,\count_cycle_reg[36]_i_1_n_7 }),
        .S(count_cycle_reg[39:36]));
  FDRE \count_cycle_reg[37] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[36]_i_1_n_6 ),
        .Q(count_cycle_reg[37]),
        .R(trap_i_1_n_0));
  FDRE \count_cycle_reg[38] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[36]_i_1_n_5 ),
        .Q(count_cycle_reg[38]),
        .R(trap_i_1_n_0));
  FDRE \count_cycle_reg[39] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[36]_i_1_n_4 ),
        .Q(count_cycle_reg[39]),
        .R(trap_i_1_n_0));
  FDRE \count_cycle_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[0]_i_1_n_4 ),
        .Q(count_cycle_reg[3]),
        .R(trap_i_1_n_0));
  FDRE \count_cycle_reg[40] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[40]_i_1_n_7 ),
        .Q(count_cycle_reg[40]),
        .R(trap_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_cycle_reg[40]_i_1 
       (.CI(\count_cycle_reg[36]_i_1_n_0 ),
        .CO({\count_cycle_reg[40]_i_1_n_0 ,\count_cycle_reg[40]_i_1_n_1 ,\count_cycle_reg[40]_i_1_n_2 ,\count_cycle_reg[40]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_cycle_reg[40]_i_1_n_4 ,\count_cycle_reg[40]_i_1_n_5 ,\count_cycle_reg[40]_i_1_n_6 ,\count_cycle_reg[40]_i_1_n_7 }),
        .S(count_cycle_reg[43:40]));
  FDRE \count_cycle_reg[41] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[40]_i_1_n_6 ),
        .Q(count_cycle_reg[41]),
        .R(trap_i_1_n_0));
  FDRE \count_cycle_reg[42] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[40]_i_1_n_5 ),
        .Q(count_cycle_reg[42]),
        .R(trap_i_1_n_0));
  FDRE \count_cycle_reg[43] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[40]_i_1_n_4 ),
        .Q(count_cycle_reg[43]),
        .R(trap_i_1_n_0));
  FDRE \count_cycle_reg[44] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[44]_i_1_n_7 ),
        .Q(count_cycle_reg[44]),
        .R(trap_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_cycle_reg[44]_i_1 
       (.CI(\count_cycle_reg[40]_i_1_n_0 ),
        .CO({\count_cycle_reg[44]_i_1_n_0 ,\count_cycle_reg[44]_i_1_n_1 ,\count_cycle_reg[44]_i_1_n_2 ,\count_cycle_reg[44]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_cycle_reg[44]_i_1_n_4 ,\count_cycle_reg[44]_i_1_n_5 ,\count_cycle_reg[44]_i_1_n_6 ,\count_cycle_reg[44]_i_1_n_7 }),
        .S(count_cycle_reg[47:44]));
  FDRE \count_cycle_reg[45] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[44]_i_1_n_6 ),
        .Q(count_cycle_reg[45]),
        .R(trap_i_1_n_0));
  FDRE \count_cycle_reg[46] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[44]_i_1_n_5 ),
        .Q(count_cycle_reg[46]),
        .R(trap_i_1_n_0));
  FDRE \count_cycle_reg[47] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[44]_i_1_n_4 ),
        .Q(count_cycle_reg[47]),
        .R(trap_i_1_n_0));
  FDRE \count_cycle_reg[48] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[48]_i_1_n_7 ),
        .Q(count_cycle_reg[48]),
        .R(trap_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_cycle_reg[48]_i_1 
       (.CI(\count_cycle_reg[44]_i_1_n_0 ),
        .CO({\count_cycle_reg[48]_i_1_n_0 ,\count_cycle_reg[48]_i_1_n_1 ,\count_cycle_reg[48]_i_1_n_2 ,\count_cycle_reg[48]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_cycle_reg[48]_i_1_n_4 ,\count_cycle_reg[48]_i_1_n_5 ,\count_cycle_reg[48]_i_1_n_6 ,\count_cycle_reg[48]_i_1_n_7 }),
        .S(count_cycle_reg[51:48]));
  FDRE \count_cycle_reg[49] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[48]_i_1_n_6 ),
        .Q(count_cycle_reg[49]),
        .R(trap_i_1_n_0));
  FDRE \count_cycle_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[4]_i_1_n_7 ),
        .Q(count_cycle_reg[4]),
        .R(trap_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_cycle_reg[4]_i_1 
       (.CI(\count_cycle_reg[0]_i_1_n_0 ),
        .CO({\count_cycle_reg[4]_i_1_n_0 ,\count_cycle_reg[4]_i_1_n_1 ,\count_cycle_reg[4]_i_1_n_2 ,\count_cycle_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_cycle_reg[4]_i_1_n_4 ,\count_cycle_reg[4]_i_1_n_5 ,\count_cycle_reg[4]_i_1_n_6 ,\count_cycle_reg[4]_i_1_n_7 }),
        .S(count_cycle_reg[7:4]));
  FDRE \count_cycle_reg[50] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[48]_i_1_n_5 ),
        .Q(count_cycle_reg[50]),
        .R(trap_i_1_n_0));
  FDRE \count_cycle_reg[51] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[48]_i_1_n_4 ),
        .Q(count_cycle_reg[51]),
        .R(trap_i_1_n_0));
  FDRE \count_cycle_reg[52] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[52]_i_1_n_7 ),
        .Q(count_cycle_reg[52]),
        .R(trap_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_cycle_reg[52]_i_1 
       (.CI(\count_cycle_reg[48]_i_1_n_0 ),
        .CO({\count_cycle_reg[52]_i_1_n_0 ,\count_cycle_reg[52]_i_1_n_1 ,\count_cycle_reg[52]_i_1_n_2 ,\count_cycle_reg[52]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_cycle_reg[52]_i_1_n_4 ,\count_cycle_reg[52]_i_1_n_5 ,\count_cycle_reg[52]_i_1_n_6 ,\count_cycle_reg[52]_i_1_n_7 }),
        .S(count_cycle_reg[55:52]));
  FDRE \count_cycle_reg[53] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[52]_i_1_n_6 ),
        .Q(count_cycle_reg[53]),
        .R(trap_i_1_n_0));
  FDRE \count_cycle_reg[54] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[52]_i_1_n_5 ),
        .Q(count_cycle_reg[54]),
        .R(trap_i_1_n_0));
  FDRE \count_cycle_reg[55] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[52]_i_1_n_4 ),
        .Q(count_cycle_reg[55]),
        .R(trap_i_1_n_0));
  FDRE \count_cycle_reg[56] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[56]_i_1_n_7 ),
        .Q(count_cycle_reg[56]),
        .R(trap_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_cycle_reg[56]_i_1 
       (.CI(\count_cycle_reg[52]_i_1_n_0 ),
        .CO({\count_cycle_reg[56]_i_1_n_0 ,\count_cycle_reg[56]_i_1_n_1 ,\count_cycle_reg[56]_i_1_n_2 ,\count_cycle_reg[56]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_cycle_reg[56]_i_1_n_4 ,\count_cycle_reg[56]_i_1_n_5 ,\count_cycle_reg[56]_i_1_n_6 ,\count_cycle_reg[56]_i_1_n_7 }),
        .S(count_cycle_reg[59:56]));
  FDRE \count_cycle_reg[57] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[56]_i_1_n_6 ),
        .Q(count_cycle_reg[57]),
        .R(trap_i_1_n_0));
  FDRE \count_cycle_reg[58] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[56]_i_1_n_5 ),
        .Q(count_cycle_reg[58]),
        .R(trap_i_1_n_0));
  FDRE \count_cycle_reg[59] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[56]_i_1_n_4 ),
        .Q(count_cycle_reg[59]),
        .R(trap_i_1_n_0));
  FDRE \count_cycle_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[4]_i_1_n_6 ),
        .Q(count_cycle_reg[5]),
        .R(trap_i_1_n_0));
  FDRE \count_cycle_reg[60] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[60]_i_1_n_7 ),
        .Q(count_cycle_reg[60]),
        .R(trap_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_cycle_reg[60]_i_1 
       (.CI(\count_cycle_reg[56]_i_1_n_0 ),
        .CO({\NLW_count_cycle_reg[60]_i_1_CO_UNCONNECTED [3],\count_cycle_reg[60]_i_1_n_1 ,\count_cycle_reg[60]_i_1_n_2 ,\count_cycle_reg[60]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_cycle_reg[60]_i_1_n_4 ,\count_cycle_reg[60]_i_1_n_5 ,\count_cycle_reg[60]_i_1_n_6 ,\count_cycle_reg[60]_i_1_n_7 }),
        .S(count_cycle_reg[63:60]));
  FDRE \count_cycle_reg[61] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[60]_i_1_n_6 ),
        .Q(count_cycle_reg[61]),
        .R(trap_i_1_n_0));
  FDRE \count_cycle_reg[62] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[60]_i_1_n_5 ),
        .Q(count_cycle_reg[62]),
        .R(trap_i_1_n_0));
  FDRE \count_cycle_reg[63] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[60]_i_1_n_4 ),
        .Q(count_cycle_reg[63]),
        .R(trap_i_1_n_0));
  FDRE \count_cycle_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[4]_i_1_n_5 ),
        .Q(count_cycle_reg[6]),
        .R(trap_i_1_n_0));
  FDRE \count_cycle_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[4]_i_1_n_4 ),
        .Q(count_cycle_reg[7]),
        .R(trap_i_1_n_0));
  FDRE \count_cycle_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[8]_i_1_n_7 ),
        .Q(count_cycle_reg[8]),
        .R(trap_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_cycle_reg[8]_i_1 
       (.CI(\count_cycle_reg[4]_i_1_n_0 ),
        .CO({\count_cycle_reg[8]_i_1_n_0 ,\count_cycle_reg[8]_i_1_n_1 ,\count_cycle_reg[8]_i_1_n_2 ,\count_cycle_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_cycle_reg[8]_i_1_n_4 ,\count_cycle_reg[8]_i_1_n_5 ,\count_cycle_reg[8]_i_1_n_6 ,\count_cycle_reg[8]_i_1_n_7 }),
        .S(count_cycle_reg[11:8]));
  FDRE \count_cycle_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[8]_i_1_n_6 ),
        .Q(count_cycle_reg[9]),
        .R(trap_i_1_n_0));
  LUT4 #(
    .INIT(16'h0040)) 
    \count_instr[0]_i_1 
       (.I0(irq_delay_reg_0),
        .I1(\cpu_state_reg[6]_0 [4]),
        .I2(decoder_trigger_reg_n_0),
        .I3(instr_waitirq),
        .O(irq_delay));
  LUT1 #(
    .INIT(2'h1)) 
    \count_instr[0]_i_3 
       (.I0(count_instr_reg[0]),
        .O(\count_instr[0]_i_3_n_0 ));
  FDRE \count_instr_reg[0] 
       (.C(clk),
        .CE(irq_delay),
        .D(\count_instr_reg[0]_i_2_n_7 ),
        .Q(count_instr_reg[0]),
        .R(trap_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_instr_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\count_instr_reg[0]_i_2_n_0 ,\count_instr_reg[0]_i_2_n_1 ,\count_instr_reg[0]_i_2_n_2 ,\count_instr_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\count_instr_reg[0]_i_2_n_4 ,\count_instr_reg[0]_i_2_n_5 ,\count_instr_reg[0]_i_2_n_6 ,\count_instr_reg[0]_i_2_n_7 }),
        .S({count_instr_reg[3:1],\count_instr[0]_i_3_n_0 }));
  FDRE \count_instr_reg[10] 
       (.C(clk),
        .CE(irq_delay),
        .D(\count_instr_reg[8]_i_1_n_5 ),
        .Q(count_instr_reg[10]),
        .R(trap_i_1_n_0));
  FDRE \count_instr_reg[11] 
       (.C(clk),
        .CE(irq_delay),
        .D(\count_instr_reg[8]_i_1_n_4 ),
        .Q(count_instr_reg[11]),
        .R(trap_i_1_n_0));
  FDRE \count_instr_reg[12] 
       (.C(clk),
        .CE(irq_delay),
        .D(\count_instr_reg[12]_i_1_n_7 ),
        .Q(count_instr_reg[12]),
        .R(trap_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_instr_reg[12]_i_1 
       (.CI(\count_instr_reg[8]_i_1_n_0 ),
        .CO({\count_instr_reg[12]_i_1_n_0 ,\count_instr_reg[12]_i_1_n_1 ,\count_instr_reg[12]_i_1_n_2 ,\count_instr_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_instr_reg[12]_i_1_n_4 ,\count_instr_reg[12]_i_1_n_5 ,\count_instr_reg[12]_i_1_n_6 ,\count_instr_reg[12]_i_1_n_7 }),
        .S(count_instr_reg[15:12]));
  FDRE \count_instr_reg[13] 
       (.C(clk),
        .CE(irq_delay),
        .D(\count_instr_reg[12]_i_1_n_6 ),
        .Q(count_instr_reg[13]),
        .R(trap_i_1_n_0));
  FDRE \count_instr_reg[14] 
       (.C(clk),
        .CE(irq_delay),
        .D(\count_instr_reg[12]_i_1_n_5 ),
        .Q(count_instr_reg[14]),
        .R(trap_i_1_n_0));
  FDRE \count_instr_reg[15] 
       (.C(clk),
        .CE(irq_delay),
        .D(\count_instr_reg[12]_i_1_n_4 ),
        .Q(count_instr_reg[15]),
        .R(trap_i_1_n_0));
  FDRE \count_instr_reg[16] 
       (.C(clk),
        .CE(irq_delay),
        .D(\count_instr_reg[16]_i_1_n_7 ),
        .Q(count_instr_reg[16]),
        .R(trap_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_instr_reg[16]_i_1 
       (.CI(\count_instr_reg[12]_i_1_n_0 ),
        .CO({\count_instr_reg[16]_i_1_n_0 ,\count_instr_reg[16]_i_1_n_1 ,\count_instr_reg[16]_i_1_n_2 ,\count_instr_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_instr_reg[16]_i_1_n_4 ,\count_instr_reg[16]_i_1_n_5 ,\count_instr_reg[16]_i_1_n_6 ,\count_instr_reg[16]_i_1_n_7 }),
        .S(count_instr_reg[19:16]));
  FDRE \count_instr_reg[17] 
       (.C(clk),
        .CE(irq_delay),
        .D(\count_instr_reg[16]_i_1_n_6 ),
        .Q(count_instr_reg[17]),
        .R(trap_i_1_n_0));
  FDRE \count_instr_reg[18] 
       (.C(clk),
        .CE(irq_delay),
        .D(\count_instr_reg[16]_i_1_n_5 ),
        .Q(count_instr_reg[18]),
        .R(trap_i_1_n_0));
  FDRE \count_instr_reg[19] 
       (.C(clk),
        .CE(irq_delay),
        .D(\count_instr_reg[16]_i_1_n_4 ),
        .Q(count_instr_reg[19]),
        .R(trap_i_1_n_0));
  FDRE \count_instr_reg[1] 
       (.C(clk),
        .CE(irq_delay),
        .D(\count_instr_reg[0]_i_2_n_6 ),
        .Q(count_instr_reg[1]),
        .R(trap_i_1_n_0));
  FDRE \count_instr_reg[20] 
       (.C(clk),
        .CE(irq_delay),
        .D(\count_instr_reg[20]_i_1_n_7 ),
        .Q(count_instr_reg[20]),
        .R(trap_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_instr_reg[20]_i_1 
       (.CI(\count_instr_reg[16]_i_1_n_0 ),
        .CO({\count_instr_reg[20]_i_1_n_0 ,\count_instr_reg[20]_i_1_n_1 ,\count_instr_reg[20]_i_1_n_2 ,\count_instr_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_instr_reg[20]_i_1_n_4 ,\count_instr_reg[20]_i_1_n_5 ,\count_instr_reg[20]_i_1_n_6 ,\count_instr_reg[20]_i_1_n_7 }),
        .S(count_instr_reg[23:20]));
  FDRE \count_instr_reg[21] 
       (.C(clk),
        .CE(irq_delay),
        .D(\count_instr_reg[20]_i_1_n_6 ),
        .Q(count_instr_reg[21]),
        .R(trap_i_1_n_0));
  FDRE \count_instr_reg[22] 
       (.C(clk),
        .CE(irq_delay),
        .D(\count_instr_reg[20]_i_1_n_5 ),
        .Q(count_instr_reg[22]),
        .R(trap_i_1_n_0));
  FDRE \count_instr_reg[23] 
       (.C(clk),
        .CE(irq_delay),
        .D(\count_instr_reg[20]_i_1_n_4 ),
        .Q(count_instr_reg[23]),
        .R(trap_i_1_n_0));
  FDRE \count_instr_reg[24] 
       (.C(clk),
        .CE(irq_delay),
        .D(\count_instr_reg[24]_i_1_n_7 ),
        .Q(count_instr_reg[24]),
        .R(trap_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_instr_reg[24]_i_1 
       (.CI(\count_instr_reg[20]_i_1_n_0 ),
        .CO({\count_instr_reg[24]_i_1_n_0 ,\count_instr_reg[24]_i_1_n_1 ,\count_instr_reg[24]_i_1_n_2 ,\count_instr_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_instr_reg[24]_i_1_n_4 ,\count_instr_reg[24]_i_1_n_5 ,\count_instr_reg[24]_i_1_n_6 ,\count_instr_reg[24]_i_1_n_7 }),
        .S(count_instr_reg[27:24]));
  FDRE \count_instr_reg[25] 
       (.C(clk),
        .CE(irq_delay),
        .D(\count_instr_reg[24]_i_1_n_6 ),
        .Q(count_instr_reg[25]),
        .R(trap_i_1_n_0));
  FDRE \count_instr_reg[26] 
       (.C(clk),
        .CE(irq_delay),
        .D(\count_instr_reg[24]_i_1_n_5 ),
        .Q(count_instr_reg[26]),
        .R(trap_i_1_n_0));
  FDRE \count_instr_reg[27] 
       (.C(clk),
        .CE(irq_delay),
        .D(\count_instr_reg[24]_i_1_n_4 ),
        .Q(count_instr_reg[27]),
        .R(trap_i_1_n_0));
  FDRE \count_instr_reg[28] 
       (.C(clk),
        .CE(irq_delay),
        .D(\count_instr_reg[28]_i_1_n_7 ),
        .Q(count_instr_reg[28]),
        .R(trap_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_instr_reg[28]_i_1 
       (.CI(\count_instr_reg[24]_i_1_n_0 ),
        .CO({\count_instr_reg[28]_i_1_n_0 ,\count_instr_reg[28]_i_1_n_1 ,\count_instr_reg[28]_i_1_n_2 ,\count_instr_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_instr_reg[28]_i_1_n_4 ,\count_instr_reg[28]_i_1_n_5 ,\count_instr_reg[28]_i_1_n_6 ,\count_instr_reg[28]_i_1_n_7 }),
        .S(count_instr_reg[31:28]));
  FDRE \count_instr_reg[29] 
       (.C(clk),
        .CE(irq_delay),
        .D(\count_instr_reg[28]_i_1_n_6 ),
        .Q(count_instr_reg[29]),
        .R(trap_i_1_n_0));
  FDRE \count_instr_reg[2] 
       (.C(clk),
        .CE(irq_delay),
        .D(\count_instr_reg[0]_i_2_n_5 ),
        .Q(count_instr_reg[2]),
        .R(trap_i_1_n_0));
  FDRE \count_instr_reg[30] 
       (.C(clk),
        .CE(irq_delay),
        .D(\count_instr_reg[28]_i_1_n_5 ),
        .Q(count_instr_reg[30]),
        .R(trap_i_1_n_0));
  FDRE \count_instr_reg[31] 
       (.C(clk),
        .CE(irq_delay),
        .D(\count_instr_reg[28]_i_1_n_4 ),
        .Q(count_instr_reg[31]),
        .R(trap_i_1_n_0));
  FDRE \count_instr_reg[32] 
       (.C(clk),
        .CE(irq_delay),
        .D(\count_instr_reg[32]_i_1_n_7 ),
        .Q(count_instr_reg[32]),
        .R(trap_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_instr_reg[32]_i_1 
       (.CI(\count_instr_reg[28]_i_1_n_0 ),
        .CO({\count_instr_reg[32]_i_1_n_0 ,\count_instr_reg[32]_i_1_n_1 ,\count_instr_reg[32]_i_1_n_2 ,\count_instr_reg[32]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_instr_reg[32]_i_1_n_4 ,\count_instr_reg[32]_i_1_n_5 ,\count_instr_reg[32]_i_1_n_6 ,\count_instr_reg[32]_i_1_n_7 }),
        .S(count_instr_reg[35:32]));
  FDRE \count_instr_reg[33] 
       (.C(clk),
        .CE(irq_delay),
        .D(\count_instr_reg[32]_i_1_n_6 ),
        .Q(count_instr_reg[33]),
        .R(trap_i_1_n_0));
  FDRE \count_instr_reg[34] 
       (.C(clk),
        .CE(irq_delay),
        .D(\count_instr_reg[32]_i_1_n_5 ),
        .Q(count_instr_reg[34]),
        .R(trap_i_1_n_0));
  FDRE \count_instr_reg[35] 
       (.C(clk),
        .CE(irq_delay),
        .D(\count_instr_reg[32]_i_1_n_4 ),
        .Q(count_instr_reg[35]),
        .R(trap_i_1_n_0));
  FDRE \count_instr_reg[36] 
       (.C(clk),
        .CE(irq_delay),
        .D(\count_instr_reg[36]_i_1_n_7 ),
        .Q(count_instr_reg[36]),
        .R(trap_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_instr_reg[36]_i_1 
       (.CI(\count_instr_reg[32]_i_1_n_0 ),
        .CO({\count_instr_reg[36]_i_1_n_0 ,\count_instr_reg[36]_i_1_n_1 ,\count_instr_reg[36]_i_1_n_2 ,\count_instr_reg[36]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_instr_reg[36]_i_1_n_4 ,\count_instr_reg[36]_i_1_n_5 ,\count_instr_reg[36]_i_1_n_6 ,\count_instr_reg[36]_i_1_n_7 }),
        .S(count_instr_reg[39:36]));
  FDRE \count_instr_reg[37] 
       (.C(clk),
        .CE(irq_delay),
        .D(\count_instr_reg[36]_i_1_n_6 ),
        .Q(count_instr_reg[37]),
        .R(trap_i_1_n_0));
  FDRE \count_instr_reg[38] 
       (.C(clk),
        .CE(irq_delay),
        .D(\count_instr_reg[36]_i_1_n_5 ),
        .Q(count_instr_reg[38]),
        .R(trap_i_1_n_0));
  FDRE \count_instr_reg[39] 
       (.C(clk),
        .CE(irq_delay),
        .D(\count_instr_reg[36]_i_1_n_4 ),
        .Q(count_instr_reg[39]),
        .R(trap_i_1_n_0));
  FDRE \count_instr_reg[3] 
       (.C(clk),
        .CE(irq_delay),
        .D(\count_instr_reg[0]_i_2_n_4 ),
        .Q(count_instr_reg[3]),
        .R(trap_i_1_n_0));
  FDRE \count_instr_reg[40] 
       (.C(clk),
        .CE(irq_delay),
        .D(\count_instr_reg[40]_i_1_n_7 ),
        .Q(count_instr_reg[40]),
        .R(trap_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_instr_reg[40]_i_1 
       (.CI(\count_instr_reg[36]_i_1_n_0 ),
        .CO({\count_instr_reg[40]_i_1_n_0 ,\count_instr_reg[40]_i_1_n_1 ,\count_instr_reg[40]_i_1_n_2 ,\count_instr_reg[40]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_instr_reg[40]_i_1_n_4 ,\count_instr_reg[40]_i_1_n_5 ,\count_instr_reg[40]_i_1_n_6 ,\count_instr_reg[40]_i_1_n_7 }),
        .S(count_instr_reg[43:40]));
  FDRE \count_instr_reg[41] 
       (.C(clk),
        .CE(irq_delay),
        .D(\count_instr_reg[40]_i_1_n_6 ),
        .Q(count_instr_reg[41]),
        .R(trap_i_1_n_0));
  FDRE \count_instr_reg[42] 
       (.C(clk),
        .CE(irq_delay),
        .D(\count_instr_reg[40]_i_1_n_5 ),
        .Q(count_instr_reg[42]),
        .R(trap_i_1_n_0));
  FDRE \count_instr_reg[43] 
       (.C(clk),
        .CE(irq_delay),
        .D(\count_instr_reg[40]_i_1_n_4 ),
        .Q(count_instr_reg[43]),
        .R(trap_i_1_n_0));
  FDRE \count_instr_reg[44] 
       (.C(clk),
        .CE(irq_delay),
        .D(\count_instr_reg[44]_i_1_n_7 ),
        .Q(count_instr_reg[44]),
        .R(trap_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_instr_reg[44]_i_1 
       (.CI(\count_instr_reg[40]_i_1_n_0 ),
        .CO({\count_instr_reg[44]_i_1_n_0 ,\count_instr_reg[44]_i_1_n_1 ,\count_instr_reg[44]_i_1_n_2 ,\count_instr_reg[44]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_instr_reg[44]_i_1_n_4 ,\count_instr_reg[44]_i_1_n_5 ,\count_instr_reg[44]_i_1_n_6 ,\count_instr_reg[44]_i_1_n_7 }),
        .S(count_instr_reg[47:44]));
  FDRE \count_instr_reg[45] 
       (.C(clk),
        .CE(irq_delay),
        .D(\count_instr_reg[44]_i_1_n_6 ),
        .Q(count_instr_reg[45]),
        .R(trap_i_1_n_0));
  FDRE \count_instr_reg[46] 
       (.C(clk),
        .CE(irq_delay),
        .D(\count_instr_reg[44]_i_1_n_5 ),
        .Q(count_instr_reg[46]),
        .R(trap_i_1_n_0));
  FDRE \count_instr_reg[47] 
       (.C(clk),
        .CE(irq_delay),
        .D(\count_instr_reg[44]_i_1_n_4 ),
        .Q(count_instr_reg[47]),
        .R(trap_i_1_n_0));
  FDRE \count_instr_reg[48] 
       (.C(clk),
        .CE(irq_delay),
        .D(\count_instr_reg[48]_i_1_n_7 ),
        .Q(count_instr_reg[48]),
        .R(trap_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_instr_reg[48]_i_1 
       (.CI(\count_instr_reg[44]_i_1_n_0 ),
        .CO({\count_instr_reg[48]_i_1_n_0 ,\count_instr_reg[48]_i_1_n_1 ,\count_instr_reg[48]_i_1_n_2 ,\count_instr_reg[48]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_instr_reg[48]_i_1_n_4 ,\count_instr_reg[48]_i_1_n_5 ,\count_instr_reg[48]_i_1_n_6 ,\count_instr_reg[48]_i_1_n_7 }),
        .S(count_instr_reg[51:48]));
  FDRE \count_instr_reg[49] 
       (.C(clk),
        .CE(irq_delay),
        .D(\count_instr_reg[48]_i_1_n_6 ),
        .Q(count_instr_reg[49]),
        .R(trap_i_1_n_0));
  FDRE \count_instr_reg[4] 
       (.C(clk),
        .CE(irq_delay),
        .D(\count_instr_reg[4]_i_1_n_7 ),
        .Q(count_instr_reg[4]),
        .R(trap_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_instr_reg[4]_i_1 
       (.CI(\count_instr_reg[0]_i_2_n_0 ),
        .CO({\count_instr_reg[4]_i_1_n_0 ,\count_instr_reg[4]_i_1_n_1 ,\count_instr_reg[4]_i_1_n_2 ,\count_instr_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_instr_reg[4]_i_1_n_4 ,\count_instr_reg[4]_i_1_n_5 ,\count_instr_reg[4]_i_1_n_6 ,\count_instr_reg[4]_i_1_n_7 }),
        .S(count_instr_reg[7:4]));
  FDRE \count_instr_reg[50] 
       (.C(clk),
        .CE(irq_delay),
        .D(\count_instr_reg[48]_i_1_n_5 ),
        .Q(count_instr_reg[50]),
        .R(trap_i_1_n_0));
  FDRE \count_instr_reg[51] 
       (.C(clk),
        .CE(irq_delay),
        .D(\count_instr_reg[48]_i_1_n_4 ),
        .Q(count_instr_reg[51]),
        .R(trap_i_1_n_0));
  FDRE \count_instr_reg[52] 
       (.C(clk),
        .CE(irq_delay),
        .D(\count_instr_reg[52]_i_1_n_7 ),
        .Q(count_instr_reg[52]),
        .R(trap_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_instr_reg[52]_i_1 
       (.CI(\count_instr_reg[48]_i_1_n_0 ),
        .CO({\count_instr_reg[52]_i_1_n_0 ,\count_instr_reg[52]_i_1_n_1 ,\count_instr_reg[52]_i_1_n_2 ,\count_instr_reg[52]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_instr_reg[52]_i_1_n_4 ,\count_instr_reg[52]_i_1_n_5 ,\count_instr_reg[52]_i_1_n_6 ,\count_instr_reg[52]_i_1_n_7 }),
        .S(count_instr_reg[55:52]));
  FDRE \count_instr_reg[53] 
       (.C(clk),
        .CE(irq_delay),
        .D(\count_instr_reg[52]_i_1_n_6 ),
        .Q(count_instr_reg[53]),
        .R(trap_i_1_n_0));
  FDRE \count_instr_reg[54] 
       (.C(clk),
        .CE(irq_delay),
        .D(\count_instr_reg[52]_i_1_n_5 ),
        .Q(count_instr_reg[54]),
        .R(trap_i_1_n_0));
  FDRE \count_instr_reg[55] 
       (.C(clk),
        .CE(irq_delay),
        .D(\count_instr_reg[52]_i_1_n_4 ),
        .Q(count_instr_reg[55]),
        .R(trap_i_1_n_0));
  FDRE \count_instr_reg[56] 
       (.C(clk),
        .CE(irq_delay),
        .D(\count_instr_reg[56]_i_1_n_7 ),
        .Q(count_instr_reg[56]),
        .R(trap_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_instr_reg[56]_i_1 
       (.CI(\count_instr_reg[52]_i_1_n_0 ),
        .CO({\count_instr_reg[56]_i_1_n_0 ,\count_instr_reg[56]_i_1_n_1 ,\count_instr_reg[56]_i_1_n_2 ,\count_instr_reg[56]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_instr_reg[56]_i_1_n_4 ,\count_instr_reg[56]_i_1_n_5 ,\count_instr_reg[56]_i_1_n_6 ,\count_instr_reg[56]_i_1_n_7 }),
        .S(count_instr_reg[59:56]));
  FDRE \count_instr_reg[57] 
       (.C(clk),
        .CE(irq_delay),
        .D(\count_instr_reg[56]_i_1_n_6 ),
        .Q(count_instr_reg[57]),
        .R(trap_i_1_n_0));
  FDRE \count_instr_reg[58] 
       (.C(clk),
        .CE(irq_delay),
        .D(\count_instr_reg[56]_i_1_n_5 ),
        .Q(count_instr_reg[58]),
        .R(trap_i_1_n_0));
  FDRE \count_instr_reg[59] 
       (.C(clk),
        .CE(irq_delay),
        .D(\count_instr_reg[56]_i_1_n_4 ),
        .Q(count_instr_reg[59]),
        .R(trap_i_1_n_0));
  FDRE \count_instr_reg[5] 
       (.C(clk),
        .CE(irq_delay),
        .D(\count_instr_reg[4]_i_1_n_6 ),
        .Q(count_instr_reg[5]),
        .R(trap_i_1_n_0));
  FDRE \count_instr_reg[60] 
       (.C(clk),
        .CE(irq_delay),
        .D(\count_instr_reg[60]_i_1_n_7 ),
        .Q(count_instr_reg[60]),
        .R(trap_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_instr_reg[60]_i_1 
       (.CI(\count_instr_reg[56]_i_1_n_0 ),
        .CO({\NLW_count_instr_reg[60]_i_1_CO_UNCONNECTED [3],\count_instr_reg[60]_i_1_n_1 ,\count_instr_reg[60]_i_1_n_2 ,\count_instr_reg[60]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_instr_reg[60]_i_1_n_4 ,\count_instr_reg[60]_i_1_n_5 ,\count_instr_reg[60]_i_1_n_6 ,\count_instr_reg[60]_i_1_n_7 }),
        .S(count_instr_reg[63:60]));
  FDRE \count_instr_reg[61] 
       (.C(clk),
        .CE(irq_delay),
        .D(\count_instr_reg[60]_i_1_n_6 ),
        .Q(count_instr_reg[61]),
        .R(trap_i_1_n_0));
  FDRE \count_instr_reg[62] 
       (.C(clk),
        .CE(irq_delay),
        .D(\count_instr_reg[60]_i_1_n_5 ),
        .Q(count_instr_reg[62]),
        .R(trap_i_1_n_0));
  FDRE \count_instr_reg[63] 
       (.C(clk),
        .CE(irq_delay),
        .D(\count_instr_reg[60]_i_1_n_4 ),
        .Q(count_instr_reg[63]),
        .R(trap_i_1_n_0));
  FDRE \count_instr_reg[6] 
       (.C(clk),
        .CE(irq_delay),
        .D(\count_instr_reg[4]_i_1_n_5 ),
        .Q(count_instr_reg[6]),
        .R(trap_i_1_n_0));
  FDRE \count_instr_reg[7] 
       (.C(clk),
        .CE(irq_delay),
        .D(\count_instr_reg[4]_i_1_n_4 ),
        .Q(count_instr_reg[7]),
        .R(trap_i_1_n_0));
  FDRE \count_instr_reg[8] 
       (.C(clk),
        .CE(irq_delay),
        .D(\count_instr_reg[8]_i_1_n_7 ),
        .Q(count_instr_reg[8]),
        .R(trap_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_instr_reg[8]_i_1 
       (.CI(\count_instr_reg[4]_i_1_n_0 ),
        .CO({\count_instr_reg[8]_i_1_n_0 ,\count_instr_reg[8]_i_1_n_1 ,\count_instr_reg[8]_i_1_n_2 ,\count_instr_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_instr_reg[8]_i_1_n_4 ,\count_instr_reg[8]_i_1_n_5 ,\count_instr_reg[8]_i_1_n_6 ,\count_instr_reg[8]_i_1_n_7 }),
        .S(count_instr_reg[11:8]));
  FDRE \count_instr_reg[9] 
       (.C(clk),
        .CE(irq_delay),
        .D(\count_instr_reg[8]_i_1_n_6 ),
        .Q(count_instr_reg[9]),
        .R(trap_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair212" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cpu_state[0]_i_1 
       (.I0(\cpu_state_reg[6]_0 [3]),
        .I1(\cpu_state[0]_i_2_n_0 ),
        .O(cpu_state1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cpu_state[0]_i_2 
       (.I0(is_lb_lh_lw_lbu_lhu),
        .I1(instr_trap),
        .O(\cpu_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \cpu_state[1]_i_1 
       (.I0(\cpu_state[1]_i_2_n_0 ),
        .I1(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I2(is_lui_auipc_jal),
        .I3(is_sb_sh_sw),
        .I4(\cpu_state[1]_i_3_n_0 ),
        .I5(\cpu_state[3]_i_3_n_0 ),
        .O(cpu_state1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair212" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \cpu_state[1]_i_2 
       (.I0(instr_trap),
        .I1(\cpu_state_reg[6]_0 [3]),
        .O(\cpu_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \cpu_state[1]_i_3 
       (.I0(instr_retirq),
        .I1(instr_maskirq),
        .I2(is_rdcycle_rdcycleh_rdinstr_rdinstrh),
        .I3(instr_setq),
        .I4(instr_getq),
        .I5(instr_timer),
        .O(\cpu_state[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'hFF040404)) 
    \cpu_state[2]_i_1 
       (.I0(instr_trap),
        .I1(\cpu_state[2]_i_2_n_0 ),
        .I2(is_lb_lh_lw_lbu_lhu),
        .I3(\cpu_state_reg[6]_0 [3]),
        .I4(is_slli_srli_srai),
        .O(cpu_state1_in[2]));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    \cpu_state[2]_i_2 
       (.I0(\cpu_state[6]_i_2_n_0 ),
        .I1(is_sll_srl_sra),
        .I2(\cpu_state[2]_i_3_n_0 ),
        .I3(\cpu_state_reg[6]_0 [3]),
        .I4(instr_maskirq),
        .I5(instr_retirq),
        .O(\cpu_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \cpu_state[2]_i_3 
       (.I0(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I1(is_lui_auipc_jal),
        .O(\cpu_state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hC8C8C8C8C8FFC8C8)) 
    \cpu_state[3]_i_1 
       (.I0(is_lui_auipc_jal),
        .I1(\cpu_state_reg[6]_0 [3]),
        .I2(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I3(instr_trap),
        .I4(\cpu_state[3]_i_2_n_0 ),
        .I5(\cpu_state[3]_i_3_n_0 ),
        .O(cpu_state1_in[3]));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \cpu_state[3]_i_2 
       (.I0(\cpu_state[6]_i_2_n_0 ),
        .I1(is_sll_srl_sra),
        .I2(is_sb_sh_sw),
        .I3(\cpu_state_reg[6]_0 [3]),
        .I4(instr_maskirq),
        .I5(instr_retirq),
        .O(\cpu_state[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \cpu_state[3]_i_3 
       (.I0(is_slli_srli_srai),
        .I1(\cpu_state[0]_i_2_n_0 ),
        .O(\cpu_state[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCEEEEEEFE)) 
    \cpu_state[6]_i_1 
       (.I0(\cpu_state[6]_i_2_n_0 ),
        .I1(\cpu_state[6]_i_3_n_0 ),
        .I2(instr_trap),
        .I3(\irq_mask_reg_n_0_[1] ),
        .I4(irq_active_reg_0),
        .I5(\cpu_state_reg[6]_0 [4]),
        .O(cpu_state1_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cpu_state[6]_i_2 
       (.I0(instr_timer),
        .I1(instr_getq),
        .I2(instr_setq),
        .I3(is_rdcycle_rdcycleh_rdinstr_rdinstrh),
        .O(\cpu_state[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFEFFFE)) 
    \cpu_state[6]_i_3 
       (.I0(\cpu_state_reg[6]_0 [2]),
        .I1(\cpu_state_reg_n_0_[2] ),
        .I2(\cpu_state_reg[6]_0 [0]),
        .I3(\cpu_state_reg[6]_0 [1]),
        .I4(\cpu_state_reg[6]_0 [4]),
        .I5(\cpu_state[6]_i_5_n_0 ),
        .O(\cpu_state[6]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cpu_state[6]_i_4 
       (.I0(instr_rdcycle),
        .I1(instr_rdcycleh),
        .I2(instr_rdinstr),
        .I3(instr_rdinstrh),
        .O(is_rdcycle_rdcycleh_rdinstr_rdinstrh));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \cpu_state[6]_i_5 
       (.I0(instr_maskirq),
        .I1(instr_retirq),
        .O(\cpu_state[6]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAFFEA)) 
    \cpu_state[7]_i_1 
       (.I0(\cpu_state[7]_i_3_n_0 ),
        .I1(\cpu_state_reg[6]_0 [2]),
        .I2(mem_done),
        .I3(irq_delay),
        .I4(instr_jal),
        .O(cpu_state));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \cpu_state[7]_i_10 
       (.I0(instr_add),
        .I1(instr_slli),
        .I2(is_compare_i_2_n_0),
        .I3(instr_sub),
        .I4(\cpu_state[7]_i_15_n_0 ),
        .I5(\cpu_state[7]_i_16_n_0 ),
        .O(\cpu_state[7]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \cpu_state[7]_i_11 
       (.I0(instr_rdcycleh),
        .I1(instr_rdinstr),
        .I2(instr_maskirq),
        .I3(instr_retirq),
        .I4(instr_waitirq),
        .O(\cpu_state[7]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \cpu_state[7]_i_12 
       (.I0(instr_and),
        .I1(instr_rdcycle),
        .I2(instr_setq),
        .I3(instr_getq),
        .I4(instr_timer),
        .I5(instr_rdinstrh),
        .O(\cpu_state[7]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \cpu_state[7]_i_13 
       (.I0(instr_bne),
        .I1(instr_blt),
        .I2(instr_bge),
        .I3(instr_bltu),
        .O(\cpu_state[7]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \cpu_state[7]_i_14 
       (.I0(instr_auipc),
        .I1(instr_lui),
        .O(\cpu_state[7]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cpu_state[7]_i_15 
       (.I0(instr_andi),
        .I1(instr_xori),
        .I2(instr_srli),
        .I3(instr_ori),
        .O(\cpu_state[7]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \cpu_state[7]_i_16 
       (.I0(instr_sw),
        .I1(instr_srai),
        .I2(instr_sll),
        .I3(instr_addi),
        .I4(instr_sh),
        .O(\cpu_state[7]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'hA800)) 
    \cpu_state[7]_i_2 
       (.I0(\cpu_state_reg[6]_0 [3]),
        .I1(irq_active_reg_0),
        .I2(\irq_mask_reg_n_0_[1] ),
        .I3(instr_trap),
        .O(cpu_state1_in[7]));
  LUT6 #(
    .INIT(64'hFEFEFEFEFFFEFEFE)) 
    \cpu_state[7]_i_3 
       (.I0(\cpu_state[7]_i_5_n_0 ),
        .I1(\cpu_state_reg[6]_0 [3]),
        .I2(\cpu_state[7]_i_6_n_0 ),
        .I3(mem_done),
        .I4(decoder_trigger_i_3_n_0),
        .I5(mem_do_prefetch_reg_0),
        .O(\cpu_state[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \cpu_state[7]_i_4 
       (.I0(\cpu_state[7]_i_7_n_0 ),
        .I1(\cpu_state[7]_i_8_n_0 ),
        .I2(\cpu_state[7]_i_9_n_0 ),
        .I3(\cpu_state[7]_i_10_n_0 ),
        .O(instr_trap));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cpu_state[7]_i_5 
       (.I0(\cpu_state_reg[6]_0 [2]),
        .I1(is_beq_bne_blt_bge_bltu_bgeu),
        .O(\cpu_state[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \cpu_state[7]_i_6 
       (.I0(\cpu_state_reg_n_0_[2] ),
        .I1(\reg_sh_reg_n_0_[0] ),
        .I2(\reg_sh_reg_n_0_[1] ),
        .I3(\reg_sh_reg_n_0_[2] ),
        .I4(\reg_sh_reg_n_0_[3] ),
        .I5(\reg_sh_reg_n_0_[4] ),
        .O(\cpu_state[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \cpu_state[7]_i_7 
       (.I0(\cpu_state[7]_i_11_n_0 ),
        .I1(instr_xor),
        .I2(instr_srl),
        .I3(instr_sra),
        .I4(instr_or),
        .I5(\cpu_state[7]_i_12_n_0 ),
        .O(\cpu_state[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \cpu_state[7]_i_8 
       (.I0(\cpu_state[7]_i_13_n_0 ),
        .I1(instr_bgeu),
        .I2(instr_lw),
        .I3(instr_sb),
        .I4(instr_jal),
        .I5(\cpu_state[7]_i_14_n_0 ),
        .O(\cpu_state[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \cpu_state[7]_i_9 
       (.I0(instr_lh),
        .I1(instr_lhu),
        .I2(instr_beq),
        .I3(instr_jalr),
        .I4(instr_lbu),
        .I5(instr_lb),
        .O(\cpu_state[7]_i_9_n_0 ));
  FDRE \cpu_state_reg[0] 
       (.C(clk),
        .CE(cpu_state),
        .D(cpu_state1_in[0]),
        .Q(\cpu_state_reg[6]_0 [0]),
        .R(trap_i_1_n_0));
  FDRE \cpu_state_reg[1] 
       (.C(clk),
        .CE(cpu_state),
        .D(cpu_state1_in[1]),
        .Q(\cpu_state_reg[6]_0 [1]),
        .R(trap_i_1_n_0));
  FDRE \cpu_state_reg[2] 
       (.C(clk),
        .CE(cpu_state),
        .D(cpu_state1_in[2]),
        .Q(\cpu_state_reg_n_0_[2] ),
        .R(trap_i_1_n_0));
  FDRE \cpu_state_reg[3] 
       (.C(clk),
        .CE(cpu_state),
        .D(cpu_state1_in[3]),
        .Q(\cpu_state_reg[6]_0 [2]),
        .R(trap_i_1_n_0));
  FDRE \cpu_state_reg[5] 
       (.C(clk),
        .CE(cpu_state),
        .D(\cpu_state_reg[6]_0 [4]),
        .Q(\cpu_state_reg[6]_0 [3]),
        .R(trap_i_1_n_0));
  FDSE \cpu_state_reg[6] 
       (.C(clk),
        .CE(cpu_state),
        .D(cpu_state1_in[6]),
        .Q(\cpu_state_reg[6]_0 [4]),
        .S(trap_i_1_n_0));
  FDRE \cpu_state_reg[7] 
       (.C(clk),
        .CE(cpu_state),
        .D(cpu_state1_in[7]),
        .Q(\cpu_state_reg_n_0_[7] ),
        .R(trap_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1152" *) 
  (* RTL_RAM_NAME = "cpuregs" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "35" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M cpuregs_reg_r1_0_63_0_2
       (.ADDRA({decoded_rs2__1,\decoded_rs2_reg_n_0_[4] ,\decoded_rs2_reg_n_0_[3] ,\decoded_rs2_reg_n_0_[2] ,\decoded_rs2_reg_n_0_[1] ,\decoded_rs2_reg_n_0_[0] }),
        .ADDRB({decoded_rs2__1,\decoded_rs2_reg_n_0_[4] ,\decoded_rs2_reg_n_0_[3] ,\decoded_rs2_reg_n_0_[2] ,\decoded_rs2_reg_n_0_[1] ,\decoded_rs2_reg_n_0_[0] }),
        .ADDRC({decoded_rs2__1,\decoded_rs2_reg_n_0_[4] ,\decoded_rs2_reg_n_0_[3] ,\decoded_rs2_reg_n_0_[2] ,\decoded_rs2_reg_n_0_[1] ,\decoded_rs2_reg_n_0_[0] }),
        .ADDRD(latched_rd),
        .DIA(cpuregs_reg_r1_0_63_0_2_i_1_n_0),
        .DIB(cpuregs_reg_r1_0_63_0_2_i_2_n_0),
        .DIC(cpuregs_reg_r1_0_63_0_2_i_3_n_0),
        .DID(1'b0),
        .DOA(reg_sh1[0]),
        .DOB(reg_sh1[1]),
        .DOC(reg_sh1[2]),
        .DOD(NLW_cpuregs_reg_r1_0_63_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(p_0_in));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF404040)) 
    cpuregs_reg_r1_0_63_0_2_i_1
       (.I0(\irq_mask_reg_n_0_[0] ),
        .I1(\irq_state_reg_n_0_[1] ),
        .I2(irq_pending[0]),
        .I3(cpuregs_reg_r1_0_63_0_2_i_5_n_0),
        .I4(alu_out_q[0]),
        .I5(cpuregs_reg_r1_0_63_0_2_i_6_n_0),
        .O(cpuregs_reg_r1_0_63_0_2_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    cpuregs_reg_r1_0_63_0_2_i_10
       (.I0(\cpu_state_reg[6]_0 [3]),
        .I1(\cpu_state_reg_n_0_[2] ),
        .I2(\cpu_state_reg_n_0_[7] ),
        .I3(\cpu_state_reg[6]_0 [4]),
        .I4(\cpu_state_reg[6]_0 [2]),
        .I5(\reg_op1[31]_i_9_n_0 ),
        .O(cpuregs_reg_r1_0_63_0_2_i_10_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    cpuregs_reg_r1_0_63_0_2_i_11
       (.I0(latched_rd[1]),
        .I1(latched_rd[0]),
        .I2(latched_rd[4]),
        .I3(latched_rd[5]),
        .I4(latched_rd[2]),
        .I5(latched_rd[3]),
        .O(cpuregs_reg_r1_0_63_0_2_i_11_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 cpuregs_reg_r1_0_63_0_2_i_12
       (.CI(1'b0),
        .CO({cpuregs_reg_r1_0_63_0_2_i_12_n_0,cpuregs_reg_r1_0_63_0_2_i_12_n_1,cpuregs_reg_r1_0_63_0_2_i_12_n_2,cpuregs_reg_r1_0_63_0_2_i_12_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\reg_pc_reg_n_0_[2] ,\reg_pc_reg_n_0_[1] ,1'b0}),
        .O({cpuregs_reg_r1_0_63_0_2_i_12_n_4,cpuregs_reg_r1_0_63_0_2_i_12_n_5,cpuregs_reg_r1_0_63_0_2_i_12_n_6,NLW_cpuregs_reg_r1_0_63_0_2_i_12_O_UNCONNECTED[0]}),
        .S({\reg_pc_reg_n_0_[3] ,cpuregs_reg_r1_0_63_0_2_i_13_n_0,cpuregs_reg_r1_0_63_0_2_i_14_n_0,1'b0}));
  LUT2 #(
    .INIT(4'h9)) 
    cpuregs_reg_r1_0_63_0_2_i_13
       (.I0(\reg_pc_reg_n_0_[2] ),
        .I1(latched_compr_reg_0),
        .O(cpuregs_reg_r1_0_63_0_2_i_13_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    cpuregs_reg_r1_0_63_0_2_i_14
       (.I0(\reg_pc_reg_n_0_[1] ),
        .I1(latched_compr_reg_0),
        .O(cpuregs_reg_r1_0_63_0_2_i_14_n_0));
  LUT6 #(
    .INIT(64'hEAFFEAEAEAEAEAEA)) 
    cpuregs_reg_r1_0_63_0_2_i_2
       (.I0(cpuregs_reg_r1_0_63_0_2_i_7_n_0),
        .I1(cpuregs_reg_r1_0_63_0_2_i_8_n_0),
        .I2(\reg_out_reg_n_0_[1] ),
        .I3(\irq_mask_reg_n_0_[1] ),
        .I4(\irq_state_reg_n_0_[1] ),
        .I5(irq_pending[1]),
        .O(cpuregs_reg_r1_0_63_0_2_i_2_n_0));
  LUT6 #(
    .INIT(64'hEAFFEAEAEAEAEAEA)) 
    cpuregs_reg_r1_0_63_0_2_i_3
       (.I0(cpuregs_reg_r1_0_63_0_2_i_9_n_0),
        .I1(cpuregs_reg_r1_0_63_0_2_i_8_n_0),
        .I2(\reg_out_reg_n_0_[2] ),
        .I3(\irq_mask_reg_n_0_[2] ),
        .I4(irq_pending[2]),
        .I5(\irq_state_reg_n_0_[1] ),
        .O(cpuregs_reg_r1_0_63_0_2_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    cpuregs_reg_r1_0_63_0_2_i_4
       (.I0(\irq_state_reg[0]_0 ),
        .I1(latched_store_reg_0),
        .I2(latched_branch_reg_0),
        .I3(\irq_state_reg_n_0_[1] ),
        .I4(cpuregs_reg_r1_0_63_0_2_i_10_n_0),
        .I5(cpuregs_reg_r1_0_63_0_2_i_11_n_0),
        .O(p_0_in));
  LUT3 #(
    .INIT(8'h20)) 
    cpuregs_reg_r1_0_63_0_2_i_5
       (.I0(latched_stalu_reg_0),
        .I1(latched_branch_reg_0),
        .I2(latched_store_reg_0),
        .O(cpuregs_reg_r1_0_63_0_2_i_5_n_0));
  LUT6 #(
    .INIT(64'h8888888888F88888)) 
    cpuregs_reg_r1_0_63_0_2_i_6
       (.I0(\irq_state_reg[0]_0 ),
        .I1(latched_compr_reg_0),
        .I2(\reg_out_reg_n_0_[0] ),
        .I3(latched_branch_reg_0),
        .I4(latched_store_reg_0),
        .I5(latched_stalu_reg_0),
        .O(cpuregs_reg_r1_0_63_0_2_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    cpuregs_reg_r1_0_63_0_2_i_7
       (.I0(cpuregs_reg_r1_0_63_0_2_i_12_n_6),
        .I1(latched_branch_reg_0),
        .I2(\irq_state_reg[0]_0 ),
        .I3(\reg_next_pc_reg_n_0_[1] ),
        .I4(alu_out_q[1]),
        .I5(cpuregs_reg_r1_0_63_0_2_i_5_n_0),
        .O(cpuregs_reg_r1_0_63_0_2_i_7_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    cpuregs_reg_r1_0_63_0_2_i_8
       (.I0(latched_branch_reg_0),
        .I1(latched_store_reg_0),
        .I2(latched_stalu_reg_0),
        .O(cpuregs_reg_r1_0_63_0_2_i_8_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    cpuregs_reg_r1_0_63_0_2_i_9
       (.I0(cpuregs_reg_r1_0_63_0_2_i_12_n_5),
        .I1(latched_branch_reg_0),
        .I2(\reg_next_pc_reg_n_0_[2] ),
        .I3(\irq_state_reg[0]_0 ),
        .I4(alu_out_q[2]),
        .I5(cpuregs_reg_r1_0_63_0_2_i_5_n_0),
        .O(cpuregs_reg_r1_0_63_0_2_i_9_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1152" *) 
  (* RTL_RAM_NAME = "cpuregs" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "35" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "14" *) 
  RAM64M cpuregs_reg_r1_0_63_12_14
       (.ADDRA({decoded_rs2__1,\decoded_rs2_reg_n_0_[4] ,\decoded_rs2_reg_n_0_[3] ,\decoded_rs2_reg_n_0_[2] ,\decoded_rs2_reg_n_0_[1] ,\decoded_rs2_reg_n_0_[0] }),
        .ADDRB({decoded_rs2__1,\decoded_rs2_reg_n_0_[4] ,\decoded_rs2_reg_n_0_[3] ,\decoded_rs2_reg_n_0_[2] ,\decoded_rs2_reg_n_0_[1] ,\decoded_rs2_reg_n_0_[0] }),
        .ADDRC({decoded_rs2__1,\decoded_rs2_reg_n_0_[4] ,\decoded_rs2_reg_n_0_[3] ,\decoded_rs2_reg_n_0_[2] ,\decoded_rs2_reg_n_0_[1] ,\decoded_rs2_reg_n_0_[0] }),
        .ADDRD(latched_rd),
        .DIA(cpuregs_reg_r1_0_63_12_14_i_1_n_0),
        .DIB(cpuregs_reg_r1_0_63_12_14_i_2_n_0),
        .DIC(cpuregs_reg_r1_0_63_12_14_i_3_n_0),
        .DID(1'b0),
        .DOA(reg_sh1[12]),
        .DOB(reg_sh1[13]),
        .DOC(reg_sh1[14]),
        .DOD(NLW_cpuregs_reg_r1_0_63_12_14_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(p_0_in));
  LUT6 #(
    .INIT(64'hEAFFEAEAEAEAEAEA)) 
    cpuregs_reg_r1_0_63_12_14_i_1
       (.I0(cpuregs_reg_r1_0_63_12_14_i_4_n_0),
        .I1(cpuregs_reg_r1_0_63_0_2_i_8_n_0),
        .I2(\reg_out_reg_n_0_[12] ),
        .I3(\irq_mask_reg_n_0_[12] ),
        .I4(irq_pending[12]),
        .I5(\irq_state_reg_n_0_[1] ),
        .O(cpuregs_reg_r1_0_63_12_14_i_1_n_0));
  LUT6 #(
    .INIT(64'hEAFFEAEAEAEAEAEA)) 
    cpuregs_reg_r1_0_63_12_14_i_2
       (.I0(cpuregs_reg_r1_0_63_12_14_i_5_n_0),
        .I1(cpuregs_reg_r1_0_63_0_2_i_8_n_0),
        .I2(\reg_out_reg_n_0_[13] ),
        .I3(\irq_mask_reg_n_0_[13] ),
        .I4(irq_pending[13]),
        .I5(\irq_state_reg_n_0_[1] ),
        .O(cpuregs_reg_r1_0_63_12_14_i_2_n_0));
  LUT6 #(
    .INIT(64'hEAFFEAEAEAEAEAEA)) 
    cpuregs_reg_r1_0_63_12_14_i_3
       (.I0(cpuregs_reg_r1_0_63_12_14_i_6_n_0),
        .I1(cpuregs_reg_r1_0_63_0_2_i_8_n_0),
        .I2(\reg_out_reg_n_0_[14] ),
        .I3(\irq_mask_reg_n_0_[14] ),
        .I4(irq_pending[14]),
        .I5(\irq_state_reg_n_0_[1] ),
        .O(cpuregs_reg_r1_0_63_12_14_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    cpuregs_reg_r1_0_63_12_14_i_4
       (.I0(cpuregs_reg_r1_0_63_12_14_i_7_n_7),
        .I1(latched_branch_reg_0),
        .I2(\reg_next_pc_reg_n_0_[12] ),
        .I3(\irq_state_reg[0]_0 ),
        .I4(alu_out_q[12]),
        .I5(cpuregs_reg_r1_0_63_0_2_i_5_n_0),
        .O(cpuregs_reg_r1_0_63_12_14_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    cpuregs_reg_r1_0_63_12_14_i_5
       (.I0(cpuregs_reg_r1_0_63_12_14_i_7_n_6),
        .I1(latched_branch_reg_0),
        .I2(\reg_next_pc_reg_n_0_[13] ),
        .I3(\irq_state_reg[0]_0 ),
        .I4(alu_out_q[13]),
        .I5(cpuregs_reg_r1_0_63_0_2_i_5_n_0),
        .O(cpuregs_reg_r1_0_63_12_14_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    cpuregs_reg_r1_0_63_12_14_i_6
       (.I0(cpuregs_reg_r1_0_63_12_14_i_7_n_5),
        .I1(latched_branch_reg_0),
        .I2(\reg_next_pc_reg_n_0_[14] ),
        .I3(\irq_state_reg[0]_0 ),
        .I4(alu_out_q[14]),
        .I5(cpuregs_reg_r1_0_63_0_2_i_5_n_0),
        .O(cpuregs_reg_r1_0_63_12_14_i_6_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 cpuregs_reg_r1_0_63_12_14_i_7
       (.CI(cpuregs_reg_r1_0_63_6_8_i_7_n_0),
        .CO({cpuregs_reg_r1_0_63_12_14_i_7_n_0,cpuregs_reg_r1_0_63_12_14_i_7_n_1,cpuregs_reg_r1_0_63_12_14_i_7_n_2,cpuregs_reg_r1_0_63_12_14_i_7_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({cpuregs_reg_r1_0_63_12_14_i_7_n_4,cpuregs_reg_r1_0_63_12_14_i_7_n_5,cpuregs_reg_r1_0_63_12_14_i_7_n_6,cpuregs_reg_r1_0_63_12_14_i_7_n_7}),
        .S({\reg_pc_reg_n_0_[15] ,\reg_pc_reg_n_0_[14] ,\reg_pc_reg_n_0_[13] ,\reg_pc_reg_n_0_[12] }));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1152" *) 
  (* RTL_RAM_NAME = "cpuregs" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "35" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "17" *) 
  RAM64M cpuregs_reg_r1_0_63_15_17
       (.ADDRA({decoded_rs2__1,\decoded_rs2_reg_n_0_[4] ,\decoded_rs2_reg_n_0_[3] ,\decoded_rs2_reg_n_0_[2] ,\decoded_rs2_reg_n_0_[1] ,\decoded_rs2_reg_n_0_[0] }),
        .ADDRB({decoded_rs2__1,\decoded_rs2_reg_n_0_[4] ,\decoded_rs2_reg_n_0_[3] ,\decoded_rs2_reg_n_0_[2] ,\decoded_rs2_reg_n_0_[1] ,\decoded_rs2_reg_n_0_[0] }),
        .ADDRC({decoded_rs2__1,\decoded_rs2_reg_n_0_[4] ,\decoded_rs2_reg_n_0_[3] ,\decoded_rs2_reg_n_0_[2] ,\decoded_rs2_reg_n_0_[1] ,\decoded_rs2_reg_n_0_[0] }),
        .ADDRD(latched_rd),
        .DIA(cpuregs_reg_r1_0_63_15_17_i_1_n_0),
        .DIB(cpuregs_reg_r1_0_63_15_17_i_2_n_0),
        .DIC(cpuregs_reg_r1_0_63_15_17_i_3_n_0),
        .DID(1'b0),
        .DOA(reg_sh1[15]),
        .DOB(reg_sh1[16]),
        .DOC(reg_sh1[17]),
        .DOD(NLW_cpuregs_reg_r1_0_63_15_17_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(p_0_in));
  LUT6 #(
    .INIT(64'hEAFFEAEAEAEAEAEA)) 
    cpuregs_reg_r1_0_63_15_17_i_1
       (.I0(cpuregs_reg_r1_0_63_15_17_i_4_n_0),
        .I1(cpuregs_reg_r1_0_63_0_2_i_8_n_0),
        .I2(\reg_out_reg_n_0_[15] ),
        .I3(\irq_mask_reg_n_0_[15] ),
        .I4(irq_pending[15]),
        .I5(\irq_state_reg_n_0_[1] ),
        .O(cpuregs_reg_r1_0_63_15_17_i_1_n_0));
  LUT6 #(
    .INIT(64'hEAFFEAEAEAEAEAEA)) 
    cpuregs_reg_r1_0_63_15_17_i_2
       (.I0(cpuregs_reg_r1_0_63_15_17_i_5_n_0),
        .I1(cpuregs_reg_r1_0_63_0_2_i_8_n_0),
        .I2(\reg_out_reg_n_0_[16] ),
        .I3(\irq_mask_reg_n_0_[16] ),
        .I4(irq_pending[16]),
        .I5(\irq_state_reg_n_0_[1] ),
        .O(cpuregs_reg_r1_0_63_15_17_i_2_n_0));
  LUT6 #(
    .INIT(64'hEAEAEAEAFFEAEAEA)) 
    cpuregs_reg_r1_0_63_15_17_i_3
       (.I0(cpuregs_reg_r1_0_63_15_17_i_6_n_0),
        .I1(cpuregs_reg_r1_0_63_0_2_i_8_n_0),
        .I2(\reg_out_reg_n_0_[17] ),
        .I3(\irq_state_reg_n_0_[1] ),
        .I4(irq_pending[17]),
        .I5(\irq_mask_reg_n_0_[17] ),
        .O(cpuregs_reg_r1_0_63_15_17_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    cpuregs_reg_r1_0_63_15_17_i_4
       (.I0(cpuregs_reg_r1_0_63_12_14_i_7_n_4),
        .I1(latched_branch_reg_0),
        .I2(\reg_next_pc_reg_n_0_[15] ),
        .I3(\irq_state_reg[0]_0 ),
        .I4(alu_out_q[15]),
        .I5(cpuregs_reg_r1_0_63_0_2_i_5_n_0),
        .O(cpuregs_reg_r1_0_63_15_17_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    cpuregs_reg_r1_0_63_15_17_i_5
       (.I0(cpuregs_reg_r1_0_63_15_17_i_7_n_7),
        .I1(latched_branch_reg_0),
        .I2(\reg_next_pc_reg_n_0_[16] ),
        .I3(\irq_state_reg[0]_0 ),
        .I4(alu_out_q[16]),
        .I5(cpuregs_reg_r1_0_63_0_2_i_5_n_0),
        .O(cpuregs_reg_r1_0_63_15_17_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    cpuregs_reg_r1_0_63_15_17_i_6
       (.I0(cpuregs_reg_r1_0_63_15_17_i_7_n_6),
        .I1(latched_branch_reg_0),
        .I2(\reg_next_pc_reg_n_0_[17] ),
        .I3(\irq_state_reg[0]_0 ),
        .I4(alu_out_q[17]),
        .I5(cpuregs_reg_r1_0_63_0_2_i_5_n_0),
        .O(cpuregs_reg_r1_0_63_15_17_i_6_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 cpuregs_reg_r1_0_63_15_17_i_7
       (.CI(cpuregs_reg_r1_0_63_12_14_i_7_n_0),
        .CO({cpuregs_reg_r1_0_63_15_17_i_7_n_0,cpuregs_reg_r1_0_63_15_17_i_7_n_1,cpuregs_reg_r1_0_63_15_17_i_7_n_2,cpuregs_reg_r1_0_63_15_17_i_7_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({cpuregs_reg_r1_0_63_15_17_i_7_n_4,cpuregs_reg_r1_0_63_15_17_i_7_n_5,cpuregs_reg_r1_0_63_15_17_i_7_n_6,cpuregs_reg_r1_0_63_15_17_i_7_n_7}),
        .S({\reg_pc_reg_n_0_[19] ,\reg_pc_reg_n_0_[18] ,\reg_pc_reg_n_0_[17] ,\reg_pc_reg_n_0_[16] }));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1152" *) 
  (* RTL_RAM_NAME = "cpuregs" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "35" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "20" *) 
  RAM64M cpuregs_reg_r1_0_63_18_20
       (.ADDRA({decoded_rs2__1,\decoded_rs2_reg_n_0_[4] ,\decoded_rs2_reg_n_0_[3] ,\decoded_rs2_reg_n_0_[2] ,\decoded_rs2_reg_n_0_[1] ,\decoded_rs2_reg_n_0_[0] }),
        .ADDRB({decoded_rs2__1,\decoded_rs2_reg_n_0_[4] ,\decoded_rs2_reg_n_0_[3] ,\decoded_rs2_reg_n_0_[2] ,\decoded_rs2_reg_n_0_[1] ,\decoded_rs2_reg_n_0_[0] }),
        .ADDRC({decoded_rs2__1,\decoded_rs2_reg_n_0_[4] ,\decoded_rs2_reg_n_0_[3] ,\decoded_rs2_reg_n_0_[2] ,\decoded_rs2_reg_n_0_[1] ,\decoded_rs2_reg_n_0_[0] }),
        .ADDRD(latched_rd),
        .DIA(cpuregs_reg_r1_0_63_18_20_i_1_n_0),
        .DIB(cpuregs_reg_r1_0_63_18_20_i_2_n_0),
        .DIC(cpuregs_reg_r1_0_63_18_20_i_3_n_0),
        .DID(1'b0),
        .DOA(reg_sh1[18]),
        .DOB(reg_sh1[19]),
        .DOC(reg_sh1[20]),
        .DOD(NLW_cpuregs_reg_r1_0_63_18_20_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(p_0_in));
  LUT6 #(
    .INIT(64'hEAFFEAEAEAEAEAEA)) 
    cpuregs_reg_r1_0_63_18_20_i_1
       (.I0(cpuregs_reg_r1_0_63_18_20_i_4_n_0),
        .I1(cpuregs_reg_r1_0_63_0_2_i_8_n_0),
        .I2(\reg_out_reg_n_0_[18] ),
        .I3(\irq_mask_reg_n_0_[18] ),
        .I4(irq_pending[18]),
        .I5(\irq_state_reg_n_0_[1] ),
        .O(cpuregs_reg_r1_0_63_18_20_i_1_n_0));
  LUT6 #(
    .INIT(64'hEAFFEAEAEAEAEAEA)) 
    cpuregs_reg_r1_0_63_18_20_i_2
       (.I0(cpuregs_reg_r1_0_63_18_20_i_5_n_0),
        .I1(cpuregs_reg_r1_0_63_0_2_i_8_n_0),
        .I2(\reg_out_reg_n_0_[19] ),
        .I3(\irq_mask_reg_n_0_[19] ),
        .I4(irq_pending[19]),
        .I5(\irq_state_reg_n_0_[1] ),
        .O(cpuregs_reg_r1_0_63_18_20_i_2_n_0));
  LUT6 #(
    .INIT(64'hEAFFEAEAEAEAEAEA)) 
    cpuregs_reg_r1_0_63_18_20_i_3
       (.I0(cpuregs_reg_r1_0_63_18_20_i_6_n_0),
        .I1(cpuregs_reg_r1_0_63_0_2_i_8_n_0),
        .I2(\reg_out_reg_n_0_[20] ),
        .I3(\irq_mask_reg_n_0_[20] ),
        .I4(irq_pending[20]),
        .I5(\irq_state_reg_n_0_[1] ),
        .O(cpuregs_reg_r1_0_63_18_20_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    cpuregs_reg_r1_0_63_18_20_i_4
       (.I0(cpuregs_reg_r1_0_63_15_17_i_7_n_5),
        .I1(latched_branch_reg_0),
        .I2(\reg_next_pc_reg_n_0_[18] ),
        .I3(\irq_state_reg[0]_0 ),
        .I4(alu_out_q[18]),
        .I5(cpuregs_reg_r1_0_63_0_2_i_5_n_0),
        .O(cpuregs_reg_r1_0_63_18_20_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    cpuregs_reg_r1_0_63_18_20_i_5
       (.I0(cpuregs_reg_r1_0_63_15_17_i_7_n_4),
        .I1(latched_branch_reg_0),
        .I2(\reg_next_pc_reg_n_0_[19] ),
        .I3(\irq_state_reg[0]_0 ),
        .I4(alu_out_q[19]),
        .I5(cpuregs_reg_r1_0_63_0_2_i_5_n_0),
        .O(cpuregs_reg_r1_0_63_18_20_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    cpuregs_reg_r1_0_63_18_20_i_6
       (.I0(cpuregs_reg_r1_0_63_18_20_i_7_n_7),
        .I1(latched_branch_reg_0),
        .I2(\reg_next_pc_reg_n_0_[20] ),
        .I3(\irq_state_reg[0]_0 ),
        .I4(alu_out_q[20]),
        .I5(cpuregs_reg_r1_0_63_0_2_i_5_n_0),
        .O(cpuregs_reg_r1_0_63_18_20_i_6_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 cpuregs_reg_r1_0_63_18_20_i_7
       (.CI(cpuregs_reg_r1_0_63_15_17_i_7_n_0),
        .CO({cpuregs_reg_r1_0_63_18_20_i_7_n_0,cpuregs_reg_r1_0_63_18_20_i_7_n_1,cpuregs_reg_r1_0_63_18_20_i_7_n_2,cpuregs_reg_r1_0_63_18_20_i_7_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({cpuregs_reg_r1_0_63_18_20_i_7_n_4,cpuregs_reg_r1_0_63_18_20_i_7_n_5,cpuregs_reg_r1_0_63_18_20_i_7_n_6,cpuregs_reg_r1_0_63_18_20_i_7_n_7}),
        .S({\reg_pc_reg_n_0_[23] ,\reg_pc_reg_n_0_[22] ,\reg_pc_reg_n_0_[21] ,\reg_pc_reg_n_0_[20] }));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1152" *) 
  (* RTL_RAM_NAME = "cpuregs" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "35" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "23" *) 
  RAM64M cpuregs_reg_r1_0_63_21_23
       (.ADDRA({decoded_rs2__1,\decoded_rs2_reg_n_0_[4] ,\decoded_rs2_reg_n_0_[3] ,\decoded_rs2_reg_n_0_[2] ,\decoded_rs2_reg_n_0_[1] ,\decoded_rs2_reg_n_0_[0] }),
        .ADDRB({decoded_rs2__1,\decoded_rs2_reg_n_0_[4] ,\decoded_rs2_reg_n_0_[3] ,\decoded_rs2_reg_n_0_[2] ,\decoded_rs2_reg_n_0_[1] ,\decoded_rs2_reg_n_0_[0] }),
        .ADDRC({decoded_rs2__1,\decoded_rs2_reg_n_0_[4] ,\decoded_rs2_reg_n_0_[3] ,\decoded_rs2_reg_n_0_[2] ,\decoded_rs2_reg_n_0_[1] ,\decoded_rs2_reg_n_0_[0] }),
        .ADDRD(latched_rd),
        .DIA(cpuregs_reg_r1_0_63_21_23_i_1_n_0),
        .DIB(cpuregs_reg_r1_0_63_21_23_i_2_n_0),
        .DIC(cpuregs_reg_r1_0_63_21_23_i_3_n_0),
        .DID(1'b0),
        .DOA(reg_sh1[21]),
        .DOB(reg_sh1[22]),
        .DOC(reg_sh1[23]),
        .DOD(NLW_cpuregs_reg_r1_0_63_21_23_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(p_0_in));
  LUT6 #(
    .INIT(64'hEAFFEAEAEAEAEAEA)) 
    cpuregs_reg_r1_0_63_21_23_i_1
       (.I0(cpuregs_reg_r1_0_63_21_23_i_4_n_0),
        .I1(cpuregs_reg_r1_0_63_0_2_i_8_n_0),
        .I2(\reg_out_reg_n_0_[21] ),
        .I3(\irq_mask_reg_n_0_[21] ),
        .I4(irq_pending[21]),
        .I5(\irq_state_reg_n_0_[1] ),
        .O(cpuregs_reg_r1_0_63_21_23_i_1_n_0));
  LUT6 #(
    .INIT(64'hEAFFEAEAEAEAEAEA)) 
    cpuregs_reg_r1_0_63_21_23_i_2
       (.I0(cpuregs_reg_r1_0_63_21_23_i_5_n_0),
        .I1(cpuregs_reg_r1_0_63_0_2_i_8_n_0),
        .I2(\reg_out_reg_n_0_[22] ),
        .I3(\irq_mask_reg_n_0_[22] ),
        .I4(irq_pending[22]),
        .I5(\irq_state_reg_n_0_[1] ),
        .O(cpuregs_reg_r1_0_63_21_23_i_2_n_0));
  LUT6 #(
    .INIT(64'hEAFFEAEAEAEAEAEA)) 
    cpuregs_reg_r1_0_63_21_23_i_3
       (.I0(cpuregs_reg_r1_0_63_21_23_i_6_n_0),
        .I1(cpuregs_reg_r1_0_63_0_2_i_8_n_0),
        .I2(\reg_out_reg_n_0_[23] ),
        .I3(\irq_mask_reg_n_0_[23] ),
        .I4(irq_pending[23]),
        .I5(\irq_state_reg_n_0_[1] ),
        .O(cpuregs_reg_r1_0_63_21_23_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    cpuregs_reg_r1_0_63_21_23_i_4
       (.I0(cpuregs_reg_r1_0_63_18_20_i_7_n_6),
        .I1(latched_branch_reg_0),
        .I2(\reg_next_pc_reg_n_0_[21] ),
        .I3(\irq_state_reg[0]_0 ),
        .I4(alu_out_q[21]),
        .I5(cpuregs_reg_r1_0_63_0_2_i_5_n_0),
        .O(cpuregs_reg_r1_0_63_21_23_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    cpuregs_reg_r1_0_63_21_23_i_5
       (.I0(cpuregs_reg_r1_0_63_18_20_i_7_n_5),
        .I1(latched_branch_reg_0),
        .I2(\reg_next_pc_reg_n_0_[22] ),
        .I3(\irq_state_reg[0]_0 ),
        .I4(alu_out_q[22]),
        .I5(cpuregs_reg_r1_0_63_0_2_i_5_n_0),
        .O(cpuregs_reg_r1_0_63_21_23_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    cpuregs_reg_r1_0_63_21_23_i_6
       (.I0(cpuregs_reg_r1_0_63_18_20_i_7_n_4),
        .I1(latched_branch_reg_0),
        .I2(\reg_next_pc_reg_n_0_[23] ),
        .I3(\irq_state_reg[0]_0 ),
        .I4(alu_out_q[23]),
        .I5(cpuregs_reg_r1_0_63_0_2_i_5_n_0),
        .O(cpuregs_reg_r1_0_63_21_23_i_6_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1152" *) 
  (* RTL_RAM_NAME = "cpuregs" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "35" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "26" *) 
  RAM64M cpuregs_reg_r1_0_63_24_26
       (.ADDRA({decoded_rs2__1,\decoded_rs2_reg_n_0_[4] ,\decoded_rs2_reg_n_0_[3] ,\decoded_rs2_reg_n_0_[2] ,\decoded_rs2_reg_n_0_[1] ,\decoded_rs2_reg_n_0_[0] }),
        .ADDRB({decoded_rs2__1,\decoded_rs2_reg_n_0_[4] ,\decoded_rs2_reg_n_0_[3] ,\decoded_rs2_reg_n_0_[2] ,\decoded_rs2_reg_n_0_[1] ,\decoded_rs2_reg_n_0_[0] }),
        .ADDRC({decoded_rs2__1,\decoded_rs2_reg_n_0_[4] ,\decoded_rs2_reg_n_0_[3] ,\decoded_rs2_reg_n_0_[2] ,\decoded_rs2_reg_n_0_[1] ,\decoded_rs2_reg_n_0_[0] }),
        .ADDRD(latched_rd),
        .DIA(cpuregs_reg_r1_0_63_24_26_i_1_n_0),
        .DIB(cpuregs_reg_r1_0_63_24_26_i_2_n_0),
        .DIC(cpuregs_reg_r1_0_63_24_26_i_3_n_0),
        .DID(1'b0),
        .DOA(reg_sh1[24]),
        .DOB(reg_sh1[25]),
        .DOC(reg_sh1[26]),
        .DOD(NLW_cpuregs_reg_r1_0_63_24_26_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(p_0_in));
  LUT6 #(
    .INIT(64'hEAFFEAEAEAEAEAEA)) 
    cpuregs_reg_r1_0_63_24_26_i_1
       (.I0(cpuregs_reg_r1_0_63_24_26_i_4_n_0),
        .I1(cpuregs_reg_r1_0_63_0_2_i_8_n_0),
        .I2(\reg_out_reg_n_0_[24] ),
        .I3(\irq_mask_reg_n_0_[24] ),
        .I4(irq_pending[24]),
        .I5(\irq_state_reg_n_0_[1] ),
        .O(cpuregs_reg_r1_0_63_24_26_i_1_n_0));
  LUT6 #(
    .INIT(64'hEAFFEAEAEAEAEAEA)) 
    cpuregs_reg_r1_0_63_24_26_i_2
       (.I0(cpuregs_reg_r1_0_63_24_26_i_5_n_0),
        .I1(cpuregs_reg_r1_0_63_0_2_i_8_n_0),
        .I2(\reg_out_reg_n_0_[25] ),
        .I3(\irq_mask_reg_n_0_[25] ),
        .I4(irq_pending[25]),
        .I5(\irq_state_reg_n_0_[1] ),
        .O(cpuregs_reg_r1_0_63_24_26_i_2_n_0));
  LUT6 #(
    .INIT(64'hEAFFEAEAEAEAEAEA)) 
    cpuregs_reg_r1_0_63_24_26_i_3
       (.I0(cpuregs_reg_r1_0_63_24_26_i_6_n_0),
        .I1(cpuregs_reg_r1_0_63_0_2_i_8_n_0),
        .I2(\reg_out_reg_n_0_[26] ),
        .I3(\irq_mask_reg_n_0_[26] ),
        .I4(irq_pending[26]),
        .I5(\irq_state_reg_n_0_[1] ),
        .O(cpuregs_reg_r1_0_63_24_26_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    cpuregs_reg_r1_0_63_24_26_i_4
       (.I0(cpuregs_reg_r1_0_63_24_26_i_7_n_7),
        .I1(latched_branch_reg_0),
        .I2(\reg_next_pc_reg_n_0_[24] ),
        .I3(\irq_state_reg[0]_0 ),
        .I4(alu_out_q[24]),
        .I5(cpuregs_reg_r1_0_63_0_2_i_5_n_0),
        .O(cpuregs_reg_r1_0_63_24_26_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    cpuregs_reg_r1_0_63_24_26_i_5
       (.I0(cpuregs_reg_r1_0_63_24_26_i_7_n_6),
        .I1(latched_branch_reg_0),
        .I2(\reg_next_pc_reg_n_0_[25] ),
        .I3(\irq_state_reg[0]_0 ),
        .I4(alu_out_q[25]),
        .I5(cpuregs_reg_r1_0_63_0_2_i_5_n_0),
        .O(cpuregs_reg_r1_0_63_24_26_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    cpuregs_reg_r1_0_63_24_26_i_6
       (.I0(cpuregs_reg_r1_0_63_24_26_i_7_n_5),
        .I1(latched_branch_reg_0),
        .I2(\reg_next_pc_reg_n_0_[26] ),
        .I3(\irq_state_reg[0]_0 ),
        .I4(alu_out_q[26]),
        .I5(cpuregs_reg_r1_0_63_0_2_i_5_n_0),
        .O(cpuregs_reg_r1_0_63_24_26_i_6_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 cpuregs_reg_r1_0_63_24_26_i_7
       (.CI(cpuregs_reg_r1_0_63_18_20_i_7_n_0),
        .CO({cpuregs_reg_r1_0_63_24_26_i_7_n_0,cpuregs_reg_r1_0_63_24_26_i_7_n_1,cpuregs_reg_r1_0_63_24_26_i_7_n_2,cpuregs_reg_r1_0_63_24_26_i_7_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({cpuregs_reg_r1_0_63_24_26_i_7_n_4,cpuregs_reg_r1_0_63_24_26_i_7_n_5,cpuregs_reg_r1_0_63_24_26_i_7_n_6,cpuregs_reg_r1_0_63_24_26_i_7_n_7}),
        .S({\reg_pc_reg_n_0_[27] ,\reg_pc_reg_n_0_[26] ,\reg_pc_reg_n_0_[25] ,\reg_pc_reg_n_0_[24] }));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1152" *) 
  (* RTL_RAM_NAME = "cpuregs" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "35" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "27" *) 
  (* ram_slice_end = "29" *) 
  RAM64M cpuregs_reg_r1_0_63_27_29
       (.ADDRA({decoded_rs2__1,\decoded_rs2_reg_n_0_[4] ,\decoded_rs2_reg_n_0_[3] ,\decoded_rs2_reg_n_0_[2] ,\decoded_rs2_reg_n_0_[1] ,\decoded_rs2_reg_n_0_[0] }),
        .ADDRB({decoded_rs2__1,\decoded_rs2_reg_n_0_[4] ,\decoded_rs2_reg_n_0_[3] ,\decoded_rs2_reg_n_0_[2] ,\decoded_rs2_reg_n_0_[1] ,\decoded_rs2_reg_n_0_[0] }),
        .ADDRC({decoded_rs2__1,\decoded_rs2_reg_n_0_[4] ,\decoded_rs2_reg_n_0_[3] ,\decoded_rs2_reg_n_0_[2] ,\decoded_rs2_reg_n_0_[1] ,\decoded_rs2_reg_n_0_[0] }),
        .ADDRD(latched_rd),
        .DIA(cpuregs_reg_r1_0_63_27_29_i_1_n_0),
        .DIB(cpuregs_reg_r1_0_63_27_29_i_2_n_0),
        .DIC(cpuregs_reg_r1_0_63_27_29_i_3_n_0),
        .DID(1'b0),
        .DOA(reg_sh1[27]),
        .DOB(reg_sh1[28]),
        .DOC(reg_sh1[29]),
        .DOD(NLW_cpuregs_reg_r1_0_63_27_29_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(p_0_in));
  LUT6 #(
    .INIT(64'hEAFFEAEAEAEAEAEA)) 
    cpuregs_reg_r1_0_63_27_29_i_1
       (.I0(cpuregs_reg_r1_0_63_27_29_i_4_n_0),
        .I1(cpuregs_reg_r1_0_63_0_2_i_8_n_0),
        .I2(\reg_out_reg_n_0_[27] ),
        .I3(\irq_mask_reg_n_0_[27] ),
        .I4(irq_pending[27]),
        .I5(\irq_state_reg_n_0_[1] ),
        .O(cpuregs_reg_r1_0_63_27_29_i_1_n_0));
  LUT6 #(
    .INIT(64'hEAFFEAEAEAEAEAEA)) 
    cpuregs_reg_r1_0_63_27_29_i_2
       (.I0(cpuregs_reg_r1_0_63_27_29_i_5_n_0),
        .I1(cpuregs_reg_r1_0_63_0_2_i_8_n_0),
        .I2(\reg_out_reg_n_0_[28] ),
        .I3(\irq_mask_reg_n_0_[28] ),
        .I4(irq_pending[28]),
        .I5(\irq_state_reg_n_0_[1] ),
        .O(cpuregs_reg_r1_0_63_27_29_i_2_n_0));
  LUT6 #(
    .INIT(64'hEAFFEAEAEAEAEAEA)) 
    cpuregs_reg_r1_0_63_27_29_i_3
       (.I0(cpuregs_reg_r1_0_63_27_29_i_6_n_0),
        .I1(cpuregs_reg_r1_0_63_0_2_i_8_n_0),
        .I2(\reg_out_reg_n_0_[29] ),
        .I3(\irq_mask_reg_n_0_[29] ),
        .I4(irq_pending[29]),
        .I5(\irq_state_reg_n_0_[1] ),
        .O(cpuregs_reg_r1_0_63_27_29_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    cpuregs_reg_r1_0_63_27_29_i_4
       (.I0(cpuregs_reg_r1_0_63_24_26_i_7_n_4),
        .I1(latched_branch_reg_0),
        .I2(\reg_next_pc_reg_n_0_[27] ),
        .I3(\irq_state_reg[0]_0 ),
        .I4(alu_out_q[27]),
        .I5(cpuregs_reg_r1_0_63_0_2_i_5_n_0),
        .O(cpuregs_reg_r1_0_63_27_29_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    cpuregs_reg_r1_0_63_27_29_i_5
       (.I0(cpuregs_reg_r1_0_63_27_29_i_7_n_7),
        .I1(latched_branch_reg_0),
        .I2(\reg_next_pc_reg_n_0_[28] ),
        .I3(\irq_state_reg[0]_0 ),
        .I4(alu_out_q[28]),
        .I5(cpuregs_reg_r1_0_63_0_2_i_5_n_0),
        .O(cpuregs_reg_r1_0_63_27_29_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    cpuregs_reg_r1_0_63_27_29_i_6
       (.I0(cpuregs_reg_r1_0_63_27_29_i_7_n_6),
        .I1(latched_branch_reg_0),
        .I2(\reg_next_pc_reg_n_0_[29] ),
        .I3(\irq_state_reg[0]_0 ),
        .I4(alu_out_q[29]),
        .I5(cpuregs_reg_r1_0_63_0_2_i_5_n_0),
        .O(cpuregs_reg_r1_0_63_27_29_i_6_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 cpuregs_reg_r1_0_63_27_29_i_7
       (.CI(cpuregs_reg_r1_0_63_24_26_i_7_n_0),
        .CO({NLW_cpuregs_reg_r1_0_63_27_29_i_7_CO_UNCONNECTED[3],cpuregs_reg_r1_0_63_27_29_i_7_n_1,cpuregs_reg_r1_0_63_27_29_i_7_n_2,cpuregs_reg_r1_0_63_27_29_i_7_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({cpuregs_reg_r1_0_63_27_29_i_7_n_4,cpuregs_reg_r1_0_63_27_29_i_7_n_5,cpuregs_reg_r1_0_63_27_29_i_7_n_6,cpuregs_reg_r1_0_63_27_29_i_7_n_7}),
        .S({\reg_pc_reg_n_0_[31] ,\reg_pc_reg_n_0_[30] ,\reg_pc_reg_n_0_[29] ,\reg_pc_reg_n_0_[28] }));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1152" *) 
  (* RTL_RAM_NAME = "cpuregs" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "35" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM64M cpuregs_reg_r1_0_63_30_31
       (.ADDRA({decoded_rs2__1,\decoded_rs2_reg_n_0_[4] ,\decoded_rs2_reg_n_0_[3] ,\decoded_rs2_reg_n_0_[2] ,\decoded_rs2_reg_n_0_[1] ,\decoded_rs2_reg_n_0_[0] }),
        .ADDRB({decoded_rs2__1,\decoded_rs2_reg_n_0_[4] ,\decoded_rs2_reg_n_0_[3] ,\decoded_rs2_reg_n_0_[2] ,\decoded_rs2_reg_n_0_[1] ,\decoded_rs2_reg_n_0_[0] }),
        .ADDRC({decoded_rs2__1,\decoded_rs2_reg_n_0_[4] ,\decoded_rs2_reg_n_0_[3] ,\decoded_rs2_reg_n_0_[2] ,\decoded_rs2_reg_n_0_[1] ,\decoded_rs2_reg_n_0_[0] }),
        .ADDRD(latched_rd),
        .DIA(cpuregs_reg_r1_0_63_30_31_i_1_n_0),
        .DIB(cpuregs_reg_r1_0_63_30_31_i_2_n_0),
        .DIC(1'b0),
        .DID(1'b0),
        .DOA(reg_sh1[30]),
        .DOB(reg_sh1[31]),
        .DOC(NLW_cpuregs_reg_r1_0_63_30_31_DOC_UNCONNECTED),
        .DOD(NLW_cpuregs_reg_r1_0_63_30_31_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(p_0_in));
  LUT6 #(
    .INIT(64'hEAFFEAEAEAEAEAEA)) 
    cpuregs_reg_r1_0_63_30_31_i_1
       (.I0(cpuregs_reg_r1_0_63_30_31_i_3_n_0),
        .I1(cpuregs_reg_r1_0_63_0_2_i_8_n_0),
        .I2(\reg_out_reg_n_0_[30] ),
        .I3(\irq_mask_reg_n_0_[30] ),
        .I4(irq_pending[30]),
        .I5(\irq_state_reg_n_0_[1] ),
        .O(cpuregs_reg_r1_0_63_30_31_i_1_n_0));
  LUT6 #(
    .INIT(64'hEAFFEAEAEAEAEAEA)) 
    cpuregs_reg_r1_0_63_30_31_i_2
       (.I0(cpuregs_reg_r1_0_63_30_31_i_4_n_0),
        .I1(cpuregs_reg_r1_0_63_0_2_i_8_n_0),
        .I2(\reg_out_reg_n_0_[31] ),
        .I3(\irq_mask_reg_n_0_[31] ),
        .I4(irq_pending[31]),
        .I5(\irq_state_reg_n_0_[1] ),
        .O(cpuregs_reg_r1_0_63_30_31_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    cpuregs_reg_r1_0_63_30_31_i_3
       (.I0(cpuregs_reg_r1_0_63_27_29_i_7_n_5),
        .I1(latched_branch_reg_0),
        .I2(\reg_next_pc_reg_n_0_[30] ),
        .I3(\irq_state_reg[0]_0 ),
        .I4(alu_out_q[30]),
        .I5(cpuregs_reg_r1_0_63_0_2_i_5_n_0),
        .O(cpuregs_reg_r1_0_63_30_31_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    cpuregs_reg_r1_0_63_30_31_i_4
       (.I0(cpuregs_reg_r1_0_63_27_29_i_7_n_4),
        .I1(latched_branch_reg_0),
        .I2(\reg_next_pc_reg_n_0_[31] ),
        .I3(\irq_state_reg[0]_0 ),
        .I4(alu_out_q[31]),
        .I5(cpuregs_reg_r1_0_63_0_2_i_5_n_0),
        .O(cpuregs_reg_r1_0_63_30_31_i_4_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1152" *) 
  (* RTL_RAM_NAME = "cpuregs" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "35" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M cpuregs_reg_r1_0_63_3_5
       (.ADDRA({decoded_rs2__1,\decoded_rs2_reg_n_0_[4] ,\decoded_rs2_reg_n_0_[3] ,\decoded_rs2_reg_n_0_[2] ,\decoded_rs2_reg_n_0_[1] ,\decoded_rs2_reg_n_0_[0] }),
        .ADDRB({decoded_rs2__1,\decoded_rs2_reg_n_0_[4] ,\decoded_rs2_reg_n_0_[3] ,\decoded_rs2_reg_n_0_[2] ,\decoded_rs2_reg_n_0_[1] ,\decoded_rs2_reg_n_0_[0] }),
        .ADDRC({decoded_rs2__1,\decoded_rs2_reg_n_0_[4] ,\decoded_rs2_reg_n_0_[3] ,\decoded_rs2_reg_n_0_[2] ,\decoded_rs2_reg_n_0_[1] ,\decoded_rs2_reg_n_0_[0] }),
        .ADDRD(latched_rd),
        .DIA(cpuregs_reg_r1_0_63_3_5_i_1_n_0),
        .DIB(cpuregs_reg_r1_0_63_3_5_i_2_n_0),
        .DIC(cpuregs_reg_r1_0_63_3_5_i_3_n_0),
        .DID(1'b0),
        .DOA(reg_sh1[3]),
        .DOB(reg_sh1[4]),
        .DOC(reg_sh1[5]),
        .DOD(NLW_cpuregs_reg_r1_0_63_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(p_0_in));
  LUT6 #(
    .INIT(64'hEAFFEAEAEAEAEAEA)) 
    cpuregs_reg_r1_0_63_3_5_i_1
       (.I0(cpuregs_reg_r1_0_63_3_5_i_4_n_0),
        .I1(cpuregs_reg_r1_0_63_0_2_i_8_n_0),
        .I2(\reg_out_reg_n_0_[3] ),
        .I3(\irq_mask_reg_n_0_[3] ),
        .I4(\irq_state_reg_n_0_[1] ),
        .I5(irq_pending[3]),
        .O(cpuregs_reg_r1_0_63_3_5_i_1_n_0));
  LUT6 #(
    .INIT(64'hEAFFEAEAEAEAEAEA)) 
    cpuregs_reg_r1_0_63_3_5_i_2
       (.I0(cpuregs_reg_r1_0_63_3_5_i_5_n_0),
        .I1(cpuregs_reg_r1_0_63_0_2_i_8_n_0),
        .I2(\reg_out_reg_n_0_[4] ),
        .I3(\irq_mask_reg_n_0_[4] ),
        .I4(irq_pending[4]),
        .I5(\irq_state_reg_n_0_[1] ),
        .O(cpuregs_reg_r1_0_63_3_5_i_2_n_0));
  LUT6 #(
    .INIT(64'hEAFFEAEAEAEAEAEA)) 
    cpuregs_reg_r1_0_63_3_5_i_3
       (.I0(cpuregs_reg_r1_0_63_3_5_i_6_n_0),
        .I1(cpuregs_reg_r1_0_63_0_2_i_8_n_0),
        .I2(\reg_out_reg_n_0_[5] ),
        .I3(\irq_mask_reg_n_0_[5] ),
        .I4(irq_pending[5]),
        .I5(\irq_state_reg_n_0_[1] ),
        .O(cpuregs_reg_r1_0_63_3_5_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    cpuregs_reg_r1_0_63_3_5_i_4
       (.I0(cpuregs_reg_r1_0_63_0_2_i_12_n_4),
        .I1(latched_branch_reg_0),
        .I2(\reg_next_pc_reg_n_0_[3] ),
        .I3(\irq_state_reg[0]_0 ),
        .I4(alu_out_q[3]),
        .I5(cpuregs_reg_r1_0_63_0_2_i_5_n_0),
        .O(cpuregs_reg_r1_0_63_3_5_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    cpuregs_reg_r1_0_63_3_5_i_5
       (.I0(cpuregs_reg_r1_0_63_3_5_i_7_n_7),
        .I1(latched_branch_reg_0),
        .I2(\reg_next_pc_reg_n_0_[4] ),
        .I3(\irq_state_reg[0]_0 ),
        .I4(alu_out_q[4]),
        .I5(cpuregs_reg_r1_0_63_0_2_i_5_n_0),
        .O(cpuregs_reg_r1_0_63_3_5_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    cpuregs_reg_r1_0_63_3_5_i_6
       (.I0(cpuregs_reg_r1_0_63_3_5_i_7_n_6),
        .I1(latched_branch_reg_0),
        .I2(\reg_next_pc_reg_n_0_[5] ),
        .I3(\irq_state_reg[0]_0 ),
        .I4(alu_out_q[5]),
        .I5(cpuregs_reg_r1_0_63_0_2_i_5_n_0),
        .O(cpuregs_reg_r1_0_63_3_5_i_6_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 cpuregs_reg_r1_0_63_3_5_i_7
       (.CI(cpuregs_reg_r1_0_63_0_2_i_12_n_0),
        .CO({cpuregs_reg_r1_0_63_3_5_i_7_n_0,cpuregs_reg_r1_0_63_3_5_i_7_n_1,cpuregs_reg_r1_0_63_3_5_i_7_n_2,cpuregs_reg_r1_0_63_3_5_i_7_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({cpuregs_reg_r1_0_63_3_5_i_7_n_4,cpuregs_reg_r1_0_63_3_5_i_7_n_5,cpuregs_reg_r1_0_63_3_5_i_7_n_6,cpuregs_reg_r1_0_63_3_5_i_7_n_7}),
        .S({\reg_pc_reg_n_0_[7] ,\reg_pc_reg_n_0_[6] ,\reg_pc_reg_n_0_[5] ,\reg_pc_reg_n_0_[4] }));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1152" *) 
  (* RTL_RAM_NAME = "cpuregs" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "35" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M cpuregs_reg_r1_0_63_6_8
       (.ADDRA({decoded_rs2__1,\decoded_rs2_reg_n_0_[4] ,\decoded_rs2_reg_n_0_[3] ,\decoded_rs2_reg_n_0_[2] ,\decoded_rs2_reg_n_0_[1] ,\decoded_rs2_reg_n_0_[0] }),
        .ADDRB({decoded_rs2__1,\decoded_rs2_reg_n_0_[4] ,\decoded_rs2_reg_n_0_[3] ,\decoded_rs2_reg_n_0_[2] ,\decoded_rs2_reg_n_0_[1] ,\decoded_rs2_reg_n_0_[0] }),
        .ADDRC({decoded_rs2__1,\decoded_rs2_reg_n_0_[4] ,\decoded_rs2_reg_n_0_[3] ,\decoded_rs2_reg_n_0_[2] ,\decoded_rs2_reg_n_0_[1] ,\decoded_rs2_reg_n_0_[0] }),
        .ADDRD(latched_rd),
        .DIA(cpuregs_reg_r1_0_63_6_8_i_1_n_0),
        .DIB(cpuregs_reg_r1_0_63_6_8_i_2_n_0),
        .DIC(cpuregs_reg_r1_0_63_6_8_i_3_n_0),
        .DID(1'b0),
        .DOA(reg_sh1[6]),
        .DOB(reg_sh1[7]),
        .DOC(reg_sh1[8]),
        .DOD(NLW_cpuregs_reg_r1_0_63_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(p_0_in));
  LUT6 #(
    .INIT(64'hEAFFEAEAEAEAEAEA)) 
    cpuregs_reg_r1_0_63_6_8_i_1
       (.I0(cpuregs_reg_r1_0_63_6_8_i_4_n_0),
        .I1(cpuregs_reg_r1_0_63_0_2_i_8_n_0),
        .I2(\reg_out_reg_n_0_[6] ),
        .I3(\irq_mask_reg_n_0_[6] ),
        .I4(irq_pending[6]),
        .I5(\irq_state_reg_n_0_[1] ),
        .O(cpuregs_reg_r1_0_63_6_8_i_1_n_0));
  LUT6 #(
    .INIT(64'hEAFFEAEAEAEAEAEA)) 
    cpuregs_reg_r1_0_63_6_8_i_2
       (.I0(cpuregs_reg_r1_0_63_6_8_i_5_n_0),
        .I1(cpuregs_reg_r1_0_63_0_2_i_8_n_0),
        .I2(\reg_out_reg_n_0_[7] ),
        .I3(\irq_mask_reg_n_0_[7] ),
        .I4(irq_pending[7]),
        .I5(\irq_state_reg_n_0_[1] ),
        .O(cpuregs_reg_r1_0_63_6_8_i_2_n_0));
  LUT6 #(
    .INIT(64'hEAFFEAEAEAEAEAEA)) 
    cpuregs_reg_r1_0_63_6_8_i_3
       (.I0(cpuregs_reg_r1_0_63_6_8_i_6_n_0),
        .I1(cpuregs_reg_r1_0_63_0_2_i_8_n_0),
        .I2(\reg_out_reg_n_0_[8] ),
        .I3(\irq_mask_reg_n_0_[8] ),
        .I4(irq_pending[8]),
        .I5(\irq_state_reg_n_0_[1] ),
        .O(cpuregs_reg_r1_0_63_6_8_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    cpuregs_reg_r1_0_63_6_8_i_4
       (.I0(cpuregs_reg_r1_0_63_3_5_i_7_n_5),
        .I1(latched_branch_reg_0),
        .I2(\reg_next_pc_reg_n_0_[6] ),
        .I3(\irq_state_reg[0]_0 ),
        .I4(alu_out_q[6]),
        .I5(cpuregs_reg_r1_0_63_0_2_i_5_n_0),
        .O(cpuregs_reg_r1_0_63_6_8_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    cpuregs_reg_r1_0_63_6_8_i_5
       (.I0(cpuregs_reg_r1_0_63_3_5_i_7_n_4),
        .I1(latched_branch_reg_0),
        .I2(\reg_next_pc_reg_n_0_[7] ),
        .I3(\irq_state_reg[0]_0 ),
        .I4(alu_out_q[7]),
        .I5(cpuregs_reg_r1_0_63_0_2_i_5_n_0),
        .O(cpuregs_reg_r1_0_63_6_8_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    cpuregs_reg_r1_0_63_6_8_i_6
       (.I0(cpuregs_reg_r1_0_63_6_8_i_7_n_7),
        .I1(latched_branch_reg_0),
        .I2(\reg_next_pc_reg_n_0_[8] ),
        .I3(\irq_state_reg[0]_0 ),
        .I4(alu_out_q[8]),
        .I5(cpuregs_reg_r1_0_63_0_2_i_5_n_0),
        .O(cpuregs_reg_r1_0_63_6_8_i_6_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 cpuregs_reg_r1_0_63_6_8_i_7
       (.CI(cpuregs_reg_r1_0_63_3_5_i_7_n_0),
        .CO({cpuregs_reg_r1_0_63_6_8_i_7_n_0,cpuregs_reg_r1_0_63_6_8_i_7_n_1,cpuregs_reg_r1_0_63_6_8_i_7_n_2,cpuregs_reg_r1_0_63_6_8_i_7_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({cpuregs_reg_r1_0_63_6_8_i_7_n_4,cpuregs_reg_r1_0_63_6_8_i_7_n_5,cpuregs_reg_r1_0_63_6_8_i_7_n_6,cpuregs_reg_r1_0_63_6_8_i_7_n_7}),
        .S({\reg_pc_reg_n_0_[11] ,\reg_pc_reg_n_0_[10] ,\reg_pc_reg_n_0_[9] ,\reg_pc_reg_n_0_[8] }));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1152" *) 
  (* RTL_RAM_NAME = "cpuregs" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "35" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M cpuregs_reg_r1_0_63_9_11
       (.ADDRA({decoded_rs2__1,\decoded_rs2_reg_n_0_[4] ,\decoded_rs2_reg_n_0_[3] ,\decoded_rs2_reg_n_0_[2] ,\decoded_rs2_reg_n_0_[1] ,\decoded_rs2_reg_n_0_[0] }),
        .ADDRB({decoded_rs2__1,\decoded_rs2_reg_n_0_[4] ,\decoded_rs2_reg_n_0_[3] ,\decoded_rs2_reg_n_0_[2] ,\decoded_rs2_reg_n_0_[1] ,\decoded_rs2_reg_n_0_[0] }),
        .ADDRC({decoded_rs2__1,\decoded_rs2_reg_n_0_[4] ,\decoded_rs2_reg_n_0_[3] ,\decoded_rs2_reg_n_0_[2] ,\decoded_rs2_reg_n_0_[1] ,\decoded_rs2_reg_n_0_[0] }),
        .ADDRD(latched_rd),
        .DIA(cpuregs_reg_r1_0_63_9_11_i_1_n_0),
        .DIB(cpuregs_reg_r1_0_63_9_11_i_2_n_0),
        .DIC(cpuregs_reg_r1_0_63_9_11_i_3_n_0),
        .DID(1'b0),
        .DOA(reg_sh1[9]),
        .DOB(reg_sh1[10]),
        .DOC(reg_sh1[11]),
        .DOD(NLW_cpuregs_reg_r1_0_63_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(p_0_in));
  LUT6 #(
    .INIT(64'hEAFFEAEAEAEAEAEA)) 
    cpuregs_reg_r1_0_63_9_11_i_1
       (.I0(cpuregs_reg_r1_0_63_9_11_i_4_n_0),
        .I1(cpuregs_reg_r1_0_63_0_2_i_8_n_0),
        .I2(\reg_out_reg_n_0_[9] ),
        .I3(\irq_mask_reg_n_0_[9] ),
        .I4(irq_pending[9]),
        .I5(\irq_state_reg_n_0_[1] ),
        .O(cpuregs_reg_r1_0_63_9_11_i_1_n_0));
  LUT6 #(
    .INIT(64'hEAFFEAEAEAEAEAEA)) 
    cpuregs_reg_r1_0_63_9_11_i_2
       (.I0(cpuregs_reg_r1_0_63_9_11_i_5_n_0),
        .I1(cpuregs_reg_r1_0_63_0_2_i_8_n_0),
        .I2(\reg_out_reg_n_0_[10] ),
        .I3(\irq_mask_reg_n_0_[10] ),
        .I4(irq_pending[10]),
        .I5(\irq_state_reg_n_0_[1] ),
        .O(cpuregs_reg_r1_0_63_9_11_i_2_n_0));
  LUT6 #(
    .INIT(64'hEAFFEAEAEAEAEAEA)) 
    cpuregs_reg_r1_0_63_9_11_i_3
       (.I0(cpuregs_reg_r1_0_63_9_11_i_6_n_0),
        .I1(cpuregs_reg_r1_0_63_0_2_i_8_n_0),
        .I2(\reg_out_reg_n_0_[11] ),
        .I3(\irq_mask_reg_n_0_[11] ),
        .I4(irq_pending[11]),
        .I5(\irq_state_reg_n_0_[1] ),
        .O(cpuregs_reg_r1_0_63_9_11_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    cpuregs_reg_r1_0_63_9_11_i_4
       (.I0(cpuregs_reg_r1_0_63_6_8_i_7_n_6),
        .I1(latched_branch_reg_0),
        .I2(\reg_next_pc_reg_n_0_[9] ),
        .I3(\irq_state_reg[0]_0 ),
        .I4(alu_out_q[9]),
        .I5(cpuregs_reg_r1_0_63_0_2_i_5_n_0),
        .O(cpuregs_reg_r1_0_63_9_11_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    cpuregs_reg_r1_0_63_9_11_i_5
       (.I0(cpuregs_reg_r1_0_63_6_8_i_7_n_5),
        .I1(latched_branch_reg_0),
        .I2(\reg_next_pc_reg_n_0_[10] ),
        .I3(\irq_state_reg[0]_0 ),
        .I4(alu_out_q[10]),
        .I5(cpuregs_reg_r1_0_63_0_2_i_5_n_0),
        .O(cpuregs_reg_r1_0_63_9_11_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    cpuregs_reg_r1_0_63_9_11_i_6
       (.I0(cpuregs_reg_r1_0_63_6_8_i_7_n_4),
        .I1(latched_branch_reg_0),
        .I2(\reg_next_pc_reg_n_0_[11] ),
        .I3(\irq_state_reg[0]_0 ),
        .I4(alu_out_q[11]),
        .I5(cpuregs_reg_r1_0_63_0_2_i_5_n_0),
        .O(cpuregs_reg_r1_0_63_9_11_i_6_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1152" *) 
  (* RTL_RAM_NAME = "cpuregs" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "35" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M cpuregs_reg_r2_0_63_0_2
       (.ADDRA({\decoded_rs1_reg_n_0_[5] ,\decoded_rs1_reg_n_0_[4] ,\decoded_rs1_reg_n_0_[3] ,\decoded_rs1_reg_n_0_[2] ,\decoded_rs1_reg_n_0_[1] ,\decoded_rs1_reg_n_0_[0] }),
        .ADDRB({\decoded_rs1_reg_n_0_[5] ,\decoded_rs1_reg_n_0_[4] ,\decoded_rs1_reg_n_0_[3] ,\decoded_rs1_reg_n_0_[2] ,\decoded_rs1_reg_n_0_[1] ,\decoded_rs1_reg_n_0_[0] }),
        .ADDRC({\decoded_rs1_reg_n_0_[5] ,\decoded_rs1_reg_n_0_[4] ,\decoded_rs1_reg_n_0_[3] ,\decoded_rs1_reg_n_0_[2] ,\decoded_rs1_reg_n_0_[1] ,\decoded_rs1_reg_n_0_[0] }),
        .ADDRD(latched_rd),
        .DIA(cpuregs_reg_r1_0_63_0_2_i_1_n_0),
        .DIB(cpuregs_reg_r1_0_63_0_2_i_2_n_0),
        .DIC(cpuregs_reg_r1_0_63_0_2_i_3_n_0),
        .DID(1'b0),
        .DOA(reg_out1[0]),
        .DOB(reg_out1[1]),
        .DOC(reg_out1[2]),
        .DOD(NLW_cpuregs_reg_r2_0_63_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1152" *) 
  (* RTL_RAM_NAME = "cpuregs" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "35" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "14" *) 
  RAM64M cpuregs_reg_r2_0_63_12_14
       (.ADDRA({\decoded_rs1_reg_n_0_[5] ,\decoded_rs1_reg_n_0_[4] ,\decoded_rs1_reg_n_0_[3] ,\decoded_rs1_reg_n_0_[2] ,\decoded_rs1_reg_n_0_[1] ,\decoded_rs1_reg_n_0_[0] }),
        .ADDRB({\decoded_rs1_reg_n_0_[5] ,\decoded_rs1_reg_n_0_[4] ,\decoded_rs1_reg_n_0_[3] ,\decoded_rs1_reg_n_0_[2] ,\decoded_rs1_reg_n_0_[1] ,\decoded_rs1_reg_n_0_[0] }),
        .ADDRC({\decoded_rs1_reg_n_0_[5] ,\decoded_rs1_reg_n_0_[4] ,\decoded_rs1_reg_n_0_[3] ,\decoded_rs1_reg_n_0_[2] ,\decoded_rs1_reg_n_0_[1] ,\decoded_rs1_reg_n_0_[0] }),
        .ADDRD(latched_rd),
        .DIA(cpuregs_reg_r1_0_63_12_14_i_1_n_0),
        .DIB(cpuregs_reg_r1_0_63_12_14_i_2_n_0),
        .DIC(cpuregs_reg_r1_0_63_12_14_i_3_n_0),
        .DID(1'b0),
        .DOA(reg_out1[12]),
        .DOB(reg_out1[13]),
        .DOC(reg_out1[14]),
        .DOD(NLW_cpuregs_reg_r2_0_63_12_14_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1152" *) 
  (* RTL_RAM_NAME = "cpuregs" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "35" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "17" *) 
  RAM64M cpuregs_reg_r2_0_63_15_17
       (.ADDRA({\decoded_rs1_reg_n_0_[5] ,\decoded_rs1_reg_n_0_[4] ,\decoded_rs1_reg_n_0_[3] ,\decoded_rs1_reg_n_0_[2] ,\decoded_rs1_reg_n_0_[1] ,\decoded_rs1_reg_n_0_[0] }),
        .ADDRB({\decoded_rs1_reg_n_0_[5] ,\decoded_rs1_reg_n_0_[4] ,\decoded_rs1_reg_n_0_[3] ,\decoded_rs1_reg_n_0_[2] ,\decoded_rs1_reg_n_0_[1] ,\decoded_rs1_reg_n_0_[0] }),
        .ADDRC({\decoded_rs1_reg_n_0_[5] ,\decoded_rs1_reg_n_0_[4] ,\decoded_rs1_reg_n_0_[3] ,\decoded_rs1_reg_n_0_[2] ,\decoded_rs1_reg_n_0_[1] ,\decoded_rs1_reg_n_0_[0] }),
        .ADDRD(latched_rd),
        .DIA(cpuregs_reg_r1_0_63_15_17_i_1_n_0),
        .DIB(cpuregs_reg_r1_0_63_15_17_i_2_n_0),
        .DIC(cpuregs_reg_r1_0_63_15_17_i_3_n_0),
        .DID(1'b0),
        .DOA(reg_out1[15]),
        .DOB(reg_out1[16]),
        .DOC(reg_out1[17]),
        .DOD(NLW_cpuregs_reg_r2_0_63_15_17_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1152" *) 
  (* RTL_RAM_NAME = "cpuregs" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "35" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "20" *) 
  RAM64M cpuregs_reg_r2_0_63_18_20
       (.ADDRA({\decoded_rs1_reg_n_0_[5] ,\decoded_rs1_reg_n_0_[4] ,\decoded_rs1_reg_n_0_[3] ,\decoded_rs1_reg_n_0_[2] ,\decoded_rs1_reg_n_0_[1] ,\decoded_rs1_reg_n_0_[0] }),
        .ADDRB({\decoded_rs1_reg_n_0_[5] ,\decoded_rs1_reg_n_0_[4] ,\decoded_rs1_reg_n_0_[3] ,\decoded_rs1_reg_n_0_[2] ,\decoded_rs1_reg_n_0_[1] ,\decoded_rs1_reg_n_0_[0] }),
        .ADDRC({\decoded_rs1_reg_n_0_[5] ,\decoded_rs1_reg_n_0_[4] ,\decoded_rs1_reg_n_0_[3] ,\decoded_rs1_reg_n_0_[2] ,\decoded_rs1_reg_n_0_[1] ,\decoded_rs1_reg_n_0_[0] }),
        .ADDRD(latched_rd),
        .DIA(cpuregs_reg_r1_0_63_18_20_i_1_n_0),
        .DIB(cpuregs_reg_r1_0_63_18_20_i_2_n_0),
        .DIC(cpuregs_reg_r1_0_63_18_20_i_3_n_0),
        .DID(1'b0),
        .DOA(reg_out1[18]),
        .DOB(reg_out1[19]),
        .DOC(reg_out1[20]),
        .DOD(NLW_cpuregs_reg_r2_0_63_18_20_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1152" *) 
  (* RTL_RAM_NAME = "cpuregs" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "35" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "23" *) 
  RAM64M cpuregs_reg_r2_0_63_21_23
       (.ADDRA({\decoded_rs1_reg_n_0_[5] ,\decoded_rs1_reg_n_0_[4] ,\decoded_rs1_reg_n_0_[3] ,\decoded_rs1_reg_n_0_[2] ,\decoded_rs1_reg_n_0_[1] ,\decoded_rs1_reg_n_0_[0] }),
        .ADDRB({\decoded_rs1_reg_n_0_[5] ,\decoded_rs1_reg_n_0_[4] ,\decoded_rs1_reg_n_0_[3] ,\decoded_rs1_reg_n_0_[2] ,\decoded_rs1_reg_n_0_[1] ,\decoded_rs1_reg_n_0_[0] }),
        .ADDRC({\decoded_rs1_reg_n_0_[5] ,\decoded_rs1_reg_n_0_[4] ,\decoded_rs1_reg_n_0_[3] ,\decoded_rs1_reg_n_0_[2] ,\decoded_rs1_reg_n_0_[1] ,\decoded_rs1_reg_n_0_[0] }),
        .ADDRD(latched_rd),
        .DIA(cpuregs_reg_r1_0_63_21_23_i_1_n_0),
        .DIB(cpuregs_reg_r1_0_63_21_23_i_2_n_0),
        .DIC(cpuregs_reg_r1_0_63_21_23_i_3_n_0),
        .DID(1'b0),
        .DOA(reg_out1[21]),
        .DOB(reg_out1[22]),
        .DOC(reg_out1[23]),
        .DOD(NLW_cpuregs_reg_r2_0_63_21_23_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1152" *) 
  (* RTL_RAM_NAME = "cpuregs" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "35" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "26" *) 
  RAM64M cpuregs_reg_r2_0_63_24_26
       (.ADDRA({\decoded_rs1_reg_n_0_[5] ,\decoded_rs1_reg_n_0_[4] ,\decoded_rs1_reg_n_0_[3] ,\decoded_rs1_reg_n_0_[2] ,\decoded_rs1_reg_n_0_[1] ,\decoded_rs1_reg_n_0_[0] }),
        .ADDRB({\decoded_rs1_reg_n_0_[5] ,\decoded_rs1_reg_n_0_[4] ,\decoded_rs1_reg_n_0_[3] ,\decoded_rs1_reg_n_0_[2] ,\decoded_rs1_reg_n_0_[1] ,\decoded_rs1_reg_n_0_[0] }),
        .ADDRC({\decoded_rs1_reg_n_0_[5] ,\decoded_rs1_reg_n_0_[4] ,\decoded_rs1_reg_n_0_[3] ,\decoded_rs1_reg_n_0_[2] ,\decoded_rs1_reg_n_0_[1] ,\decoded_rs1_reg_n_0_[0] }),
        .ADDRD(latched_rd),
        .DIA(cpuregs_reg_r1_0_63_24_26_i_1_n_0),
        .DIB(cpuregs_reg_r1_0_63_24_26_i_2_n_0),
        .DIC(cpuregs_reg_r1_0_63_24_26_i_3_n_0),
        .DID(1'b0),
        .DOA(reg_out1[24]),
        .DOB(reg_out1[25]),
        .DOC(reg_out1[26]),
        .DOD(NLW_cpuregs_reg_r2_0_63_24_26_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1152" *) 
  (* RTL_RAM_NAME = "cpuregs" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "35" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "27" *) 
  (* ram_slice_end = "29" *) 
  RAM64M cpuregs_reg_r2_0_63_27_29
       (.ADDRA({\decoded_rs1_reg_n_0_[5] ,\decoded_rs1_reg_n_0_[4] ,\decoded_rs1_reg_n_0_[3] ,\decoded_rs1_reg_n_0_[2] ,\decoded_rs1_reg_n_0_[1] ,\decoded_rs1_reg_n_0_[0] }),
        .ADDRB({\decoded_rs1_reg_n_0_[5] ,\decoded_rs1_reg_n_0_[4] ,\decoded_rs1_reg_n_0_[3] ,\decoded_rs1_reg_n_0_[2] ,\decoded_rs1_reg_n_0_[1] ,\decoded_rs1_reg_n_0_[0] }),
        .ADDRC({\decoded_rs1_reg_n_0_[5] ,\decoded_rs1_reg_n_0_[4] ,\decoded_rs1_reg_n_0_[3] ,\decoded_rs1_reg_n_0_[2] ,\decoded_rs1_reg_n_0_[1] ,\decoded_rs1_reg_n_0_[0] }),
        .ADDRD(latched_rd),
        .DIA(cpuregs_reg_r1_0_63_27_29_i_1_n_0),
        .DIB(cpuregs_reg_r1_0_63_27_29_i_2_n_0),
        .DIC(cpuregs_reg_r1_0_63_27_29_i_3_n_0),
        .DID(1'b0),
        .DOA(reg_out1[27]),
        .DOB(reg_out1[28]),
        .DOC(reg_out1[29]),
        .DOD(NLW_cpuregs_reg_r2_0_63_27_29_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1152" *) 
  (* RTL_RAM_NAME = "cpuregs" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "35" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM64M cpuregs_reg_r2_0_63_30_31
       (.ADDRA({\decoded_rs1_reg_n_0_[5] ,\decoded_rs1_reg_n_0_[4] ,\decoded_rs1_reg_n_0_[3] ,\decoded_rs1_reg_n_0_[2] ,\decoded_rs1_reg_n_0_[1] ,\decoded_rs1_reg_n_0_[0] }),
        .ADDRB({\decoded_rs1_reg_n_0_[5] ,\decoded_rs1_reg_n_0_[4] ,\decoded_rs1_reg_n_0_[3] ,\decoded_rs1_reg_n_0_[2] ,\decoded_rs1_reg_n_0_[1] ,\decoded_rs1_reg_n_0_[0] }),
        .ADDRC({\decoded_rs1_reg_n_0_[5] ,\decoded_rs1_reg_n_0_[4] ,\decoded_rs1_reg_n_0_[3] ,\decoded_rs1_reg_n_0_[2] ,\decoded_rs1_reg_n_0_[1] ,\decoded_rs1_reg_n_0_[0] }),
        .ADDRD(latched_rd),
        .DIA(cpuregs_reg_r1_0_63_30_31_i_1_n_0),
        .DIB(cpuregs_reg_r1_0_63_30_31_i_2_n_0),
        .DIC(1'b0),
        .DID(1'b0),
        .DOA(reg_out1[30]),
        .DOB(reg_out1[31]),
        .DOC(NLW_cpuregs_reg_r2_0_63_30_31_DOC_UNCONNECTED),
        .DOD(NLW_cpuregs_reg_r2_0_63_30_31_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1152" *) 
  (* RTL_RAM_NAME = "cpuregs" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "35" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M cpuregs_reg_r2_0_63_3_5
       (.ADDRA({\decoded_rs1_reg_n_0_[5] ,\decoded_rs1_reg_n_0_[4] ,\decoded_rs1_reg_n_0_[3] ,\decoded_rs1_reg_n_0_[2] ,\decoded_rs1_reg_n_0_[1] ,\decoded_rs1_reg_n_0_[0] }),
        .ADDRB({\decoded_rs1_reg_n_0_[5] ,\decoded_rs1_reg_n_0_[4] ,\decoded_rs1_reg_n_0_[3] ,\decoded_rs1_reg_n_0_[2] ,\decoded_rs1_reg_n_0_[1] ,\decoded_rs1_reg_n_0_[0] }),
        .ADDRC({\decoded_rs1_reg_n_0_[5] ,\decoded_rs1_reg_n_0_[4] ,\decoded_rs1_reg_n_0_[3] ,\decoded_rs1_reg_n_0_[2] ,\decoded_rs1_reg_n_0_[1] ,\decoded_rs1_reg_n_0_[0] }),
        .ADDRD(latched_rd),
        .DIA(cpuregs_reg_r1_0_63_3_5_i_1_n_0),
        .DIB(cpuregs_reg_r1_0_63_3_5_i_2_n_0),
        .DIC(cpuregs_reg_r1_0_63_3_5_i_3_n_0),
        .DID(1'b0),
        .DOA(reg_out1[3]),
        .DOB(reg_out1[4]),
        .DOC(reg_out1[5]),
        .DOD(NLW_cpuregs_reg_r2_0_63_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1152" *) 
  (* RTL_RAM_NAME = "cpuregs" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "35" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M cpuregs_reg_r2_0_63_6_8
       (.ADDRA({\decoded_rs1_reg_n_0_[5] ,\decoded_rs1_reg_n_0_[4] ,\decoded_rs1_reg_n_0_[3] ,\decoded_rs1_reg_n_0_[2] ,\decoded_rs1_reg_n_0_[1] ,\decoded_rs1_reg_n_0_[0] }),
        .ADDRB({\decoded_rs1_reg_n_0_[5] ,\decoded_rs1_reg_n_0_[4] ,\decoded_rs1_reg_n_0_[3] ,\decoded_rs1_reg_n_0_[2] ,\decoded_rs1_reg_n_0_[1] ,\decoded_rs1_reg_n_0_[0] }),
        .ADDRC({\decoded_rs1_reg_n_0_[5] ,\decoded_rs1_reg_n_0_[4] ,\decoded_rs1_reg_n_0_[3] ,\decoded_rs1_reg_n_0_[2] ,\decoded_rs1_reg_n_0_[1] ,\decoded_rs1_reg_n_0_[0] }),
        .ADDRD(latched_rd),
        .DIA(cpuregs_reg_r1_0_63_6_8_i_1_n_0),
        .DIB(cpuregs_reg_r1_0_63_6_8_i_2_n_0),
        .DIC(cpuregs_reg_r1_0_63_6_8_i_3_n_0),
        .DID(1'b0),
        .DOA(reg_out1[6]),
        .DOB(reg_out1[7]),
        .DOC(reg_out1[8]),
        .DOD(NLW_cpuregs_reg_r2_0_63_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1152" *) 
  (* RTL_RAM_NAME = "cpuregs" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "35" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M cpuregs_reg_r2_0_63_9_11
       (.ADDRA({\decoded_rs1_reg_n_0_[5] ,\decoded_rs1_reg_n_0_[4] ,\decoded_rs1_reg_n_0_[3] ,\decoded_rs1_reg_n_0_[2] ,\decoded_rs1_reg_n_0_[1] ,\decoded_rs1_reg_n_0_[0] }),
        .ADDRB({\decoded_rs1_reg_n_0_[5] ,\decoded_rs1_reg_n_0_[4] ,\decoded_rs1_reg_n_0_[3] ,\decoded_rs1_reg_n_0_[2] ,\decoded_rs1_reg_n_0_[1] ,\decoded_rs1_reg_n_0_[0] }),
        .ADDRC({\decoded_rs1_reg_n_0_[5] ,\decoded_rs1_reg_n_0_[4] ,\decoded_rs1_reg_n_0_[3] ,\decoded_rs1_reg_n_0_[2] ,\decoded_rs1_reg_n_0_[1] ,\decoded_rs1_reg_n_0_[0] }),
        .ADDRD(latched_rd),
        .DIA(cpuregs_reg_r1_0_63_9_11_i_1_n_0),
        .DIB(cpuregs_reg_r1_0_63_9_11_i_2_n_0),
        .DIC(cpuregs_reg_r1_0_63_9_11_i_3_n_0),
        .DID(1'b0),
        .DOA(reg_out1[9]),
        .DOB(reg_out1[10]),
        .DOC(reg_out1[11]),
        .DOD(NLW_cpuregs_reg_r2_0_63_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(p_0_in));
  LUT6 #(
    .INIT(64'hF8F8F8F8F8F8F888)) 
    \decoded_imm[0]_i_1 
       (.I0(is_sb_sh_sw),
        .I1(\mem_rdata_q_reg_n_0_[7] ),
        .I2(\mem_rdata_q_reg_n_0_[20] ),
        .I3(is_alu_reg_imm),
        .I4(is_lb_lh_lw_lbu_lhu),
        .I5(instr_jalr),
        .O(\decoded_imm[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \decoded_imm[10]_i_1 
       (.I0(\decoded_imm[10]_i_2_n_0 ),
        .I1(\mem_rdata_q_reg_n_0_[30] ),
        .I2(decoded_imm_uj[10]),
        .I3(instr_jal),
        .O(\decoded_imm[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \decoded_imm[10]_i_2 
       (.I0(is_sb_sh_sw),
        .I1(is_beq_bne_blt_bge_bltu_bgeu),
        .I2(instr_jalr),
        .I3(is_lb_lh_lw_lbu_lhu),
        .I4(is_alu_reg_imm),
        .O(\decoded_imm[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \decoded_imm[11]_i_1 
       (.I0(\decoded_imm[11]_i_2_n_0 ),
        .I1(\mem_rdata_q_reg_n_0_[7] ),
        .I2(is_beq_bne_blt_bge_bltu_bgeu),
        .I3(decoded_imm_uj[11]),
        .I4(instr_jal),
        .O(\decoded_imm[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT5 #(
    .INIT(32'hCCCCCCC8)) 
    \decoded_imm[11]_i_2 
       (.I0(is_sb_sh_sw),
        .I1(\mem_rdata_q_reg_n_0_[31] ),
        .I2(is_alu_reg_imm),
        .I3(is_lb_lh_lw_lbu_lhu),
        .I4(instr_jalr),
        .O(\decoded_imm[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEAAFEAAFEAA)) 
    \decoded_imm[12]_i_1 
       (.I0(\decoded_imm[31]_i_2_n_0 ),
        .I1(instr_lui),
        .I2(instr_auipc),
        .I3(\mem_rdata_q_reg_n_0_[12] ),
        .I4(instr_jal),
        .I5(decoded_imm_uj[12]),
        .O(\decoded_imm[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEAAFEAAFEAA)) 
    \decoded_imm[13]_i_1 
       (.I0(\decoded_imm[31]_i_2_n_0 ),
        .I1(instr_lui),
        .I2(instr_auipc),
        .I3(\mem_rdata_q_reg_n_0_[13] ),
        .I4(instr_jal),
        .I5(decoded_imm_uj[13]),
        .O(\decoded_imm[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEAAFEAAFEAA)) 
    \decoded_imm[14]_i_1 
       (.I0(\decoded_imm[31]_i_2_n_0 ),
        .I1(instr_lui),
        .I2(instr_auipc),
        .I3(\mem_rdata_q_reg_n_0_[14] ),
        .I4(instr_jal),
        .I5(decoded_imm_uj[14]),
        .O(\decoded_imm[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEEEAEEEAEEEA)) 
    \decoded_imm[15]_i_1 
       (.I0(\decoded_imm[31]_i_2_n_0 ),
        .I1(\mem_rdata_q_reg_n_0_[15] ),
        .I2(instr_lui),
        .I3(instr_auipc),
        .I4(instr_jal),
        .I5(decoded_imm_uj[15]),
        .O(\decoded_imm[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEAAFEAAFEAA)) 
    \decoded_imm[16]_i_1 
       (.I0(\decoded_imm[31]_i_2_n_0 ),
        .I1(instr_lui),
        .I2(instr_auipc),
        .I3(\mem_rdata_q_reg_n_0_[16] ),
        .I4(instr_jal),
        .I5(decoded_imm_uj[16]),
        .O(\decoded_imm[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEAAFEAAFEAA)) 
    \decoded_imm[17]_i_1 
       (.I0(\decoded_imm[31]_i_2_n_0 ),
        .I1(instr_lui),
        .I2(instr_auipc),
        .I3(\mem_rdata_q_reg_n_0_[17] ),
        .I4(instr_jal),
        .I5(decoded_imm_uj[17]),
        .O(\decoded_imm[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEEEAEEEAEEEA)) 
    \decoded_imm[18]_i_1 
       (.I0(\decoded_imm[31]_i_2_n_0 ),
        .I1(\mem_rdata_q_reg_n_0_[18] ),
        .I2(instr_lui),
        .I3(instr_auipc),
        .I4(instr_jal),
        .I5(decoded_imm_uj[18]),
        .O(\decoded_imm[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEEEAEEEAEEEA)) 
    \decoded_imm[19]_i_1 
       (.I0(\decoded_imm[31]_i_2_n_0 ),
        .I1(\mem_rdata_q_reg_n_0_[19] ),
        .I2(instr_lui),
        .I3(instr_auipc),
        .I4(instr_jal),
        .I5(decoded_imm_uj[19]),
        .O(\decoded_imm[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \decoded_imm[1]_i_1 
       (.I0(\decoded_imm[4]_i_2_n_0 ),
        .I1(\mem_rdata_q_reg_n_0_[21] ),
        .I2(decoded_imm_uj[1]),
        .I3(instr_jal),
        .I4(\mem_rdata_q_reg_n_0_[8] ),
        .I5(\decoded_imm[4]_i_3_n_0 ),
        .O(\decoded_imm[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair199" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \decoded_imm[20]_i_1 
       (.I0(\mem_rdata_q_reg_n_0_[20] ),
        .I1(instr_lui),
        .I2(instr_auipc),
        .O(\decoded_imm[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair199" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \decoded_imm[21]_i_1 
       (.I0(\mem_rdata_q_reg_n_0_[21] ),
        .I1(instr_lui),
        .I2(instr_auipc),
        .O(\decoded_imm[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair200" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \decoded_imm[22]_i_1 
       (.I0(\mem_rdata_q_reg_n_0_[22] ),
        .I1(instr_lui),
        .I2(instr_auipc),
        .O(\decoded_imm[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair200" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \decoded_imm[23]_i_1 
       (.I0(\mem_rdata_q_reg_n_0_[23] ),
        .I1(instr_lui),
        .I2(instr_auipc),
        .O(\decoded_imm[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair201" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \decoded_imm[24]_i_1 
       (.I0(\mem_rdata_q_reg_n_0_[24] ),
        .I1(instr_lui),
        .I2(instr_auipc),
        .O(\decoded_imm[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair201" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \decoded_imm[25]_i_1 
       (.I0(instr_lui),
        .I1(instr_auipc),
        .I2(\mem_rdata_q_reg_n_0_[25] ),
        .O(\decoded_imm[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair202" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \decoded_imm[26]_i_1 
       (.I0(instr_lui),
        .I1(instr_auipc),
        .I2(\mem_rdata_q_reg_n_0_[26] ),
        .O(\decoded_imm[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair202" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \decoded_imm[27]_i_1 
       (.I0(instr_lui),
        .I1(instr_auipc),
        .I2(\mem_rdata_q_reg_n_0_[27] ),
        .O(\decoded_imm[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair203" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \decoded_imm[28]_i_1 
       (.I0(instr_lui),
        .I1(instr_auipc),
        .I2(\mem_rdata_q_reg_n_0_[28] ),
        .O(\decoded_imm[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair203" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \decoded_imm[29]_i_1 
       (.I0(instr_lui),
        .I1(instr_auipc),
        .I2(\mem_rdata_q_reg_n_0_[29] ),
        .O(\decoded_imm[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \decoded_imm[2]_i_1 
       (.I0(\decoded_imm[4]_i_2_n_0 ),
        .I1(\mem_rdata_q_reg_n_0_[22] ),
        .I2(decoded_imm_uj[2]),
        .I3(instr_jal),
        .I4(\mem_rdata_q_reg_n_0_[9] ),
        .I5(\decoded_imm[4]_i_3_n_0 ),
        .O(\decoded_imm[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000F800)) 
    \decoded_imm[30]_i_1 
       (.I0(decoded_imm_uj[20]),
        .I1(instr_jal),
        .I2(\decoded_imm[31]_i_2_n_0 ),
        .I3(decoder_trigger_reg_n_0),
        .I4(decoder_pseudo_trigger_reg_n_0),
        .O(\decoded_imm[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair204" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \decoded_imm[30]_i_2 
       (.I0(instr_lui),
        .I1(instr_auipc),
        .I2(\mem_rdata_q_reg_n_0_[30] ),
        .O(\decoded_imm[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF88888)) 
    \decoded_imm[31]_i_1 
       (.I0(decoded_imm_uj[20]),
        .I1(instr_jal),
        .I2(instr_lui),
        .I3(instr_auipc),
        .I4(\mem_rdata_q_reg_n_0_[31] ),
        .I5(\decoded_imm[31]_i_2_n_0 ),
        .O(\decoded_imm[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \decoded_imm[31]_i_2 
       (.I0(is_alu_reg_imm),
        .I1(is_lb_lh_lw_lbu_lhu),
        .I2(instr_jalr),
        .I3(is_beq_bne_blt_bge_bltu_bgeu),
        .I4(is_sb_sh_sw),
        .I5(\mem_rdata_q_reg_n_0_[31] ),
        .O(\decoded_imm[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \decoded_imm[3]_i_1 
       (.I0(\decoded_imm[4]_i_2_n_0 ),
        .I1(\mem_rdata_q_reg_n_0_[23] ),
        .I2(decoded_imm_uj[3]),
        .I3(instr_jal),
        .I4(\mem_rdata_q_reg_n_0_[10] ),
        .I5(\decoded_imm[4]_i_3_n_0 ),
        .O(\decoded_imm[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \decoded_imm[4]_i_1 
       (.I0(\decoded_imm[4]_i_2_n_0 ),
        .I1(\mem_rdata_q_reg_n_0_[24] ),
        .I2(decoded_imm_uj[4]),
        .I3(instr_jal),
        .I4(\mem_rdata_q_reg_n_0_[11] ),
        .I5(\decoded_imm[4]_i_3_n_0 ),
        .O(\decoded_imm[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \decoded_imm[4]_i_2 
       (.I0(is_alu_reg_imm),
        .I1(is_lb_lh_lw_lbu_lhu),
        .I2(instr_jalr),
        .O(\decoded_imm[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \decoded_imm[4]_i_3 
       (.I0(is_beq_bne_blt_bge_bltu_bgeu),
        .I1(is_sb_sh_sw),
        .O(\decoded_imm[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \decoded_imm[5]_i_1 
       (.I0(\decoded_imm[10]_i_2_n_0 ),
        .I1(\mem_rdata_q_reg_n_0_[25] ),
        .I2(decoded_imm_uj[5]),
        .I3(instr_jal),
        .O(\decoded_imm[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \decoded_imm[6]_i_1 
       (.I0(\decoded_imm[10]_i_2_n_0 ),
        .I1(\mem_rdata_q_reg_n_0_[26] ),
        .I2(decoded_imm_uj[6]),
        .I3(instr_jal),
        .O(\decoded_imm[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \decoded_imm[7]_i_1 
       (.I0(\decoded_imm[10]_i_2_n_0 ),
        .I1(\mem_rdata_q_reg_n_0_[27] ),
        .I2(decoded_imm_uj[7]),
        .I3(instr_jal),
        .O(\decoded_imm[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \decoded_imm[8]_i_1 
       (.I0(\decoded_imm[10]_i_2_n_0 ),
        .I1(\mem_rdata_q_reg_n_0_[28] ),
        .I2(decoded_imm_uj[8]),
        .I3(instr_jal),
        .O(\decoded_imm[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \decoded_imm[9]_i_1 
       (.I0(\decoded_imm[10]_i_2_n_0 ),
        .I1(\mem_rdata_q_reg_n_0_[29] ),
        .I2(decoded_imm_uj[9]),
        .I3(instr_jal),
        .O(\decoded_imm[9]_i_1_n_0 ));
  FDRE \decoded_imm_reg[0] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[0]_i_1_n_0 ),
        .Q(decoded_imm[0]),
        .R(1'b0));
  FDRE \decoded_imm_reg[10] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[10]_i_1_n_0 ),
        .Q(decoded_imm[10]),
        .R(1'b0));
  FDRE \decoded_imm_reg[11] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[11]_i_1_n_0 ),
        .Q(decoded_imm[11]),
        .R(1'b0));
  FDRE \decoded_imm_reg[12] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[12]_i_1_n_0 ),
        .Q(decoded_imm[12]),
        .R(1'b0));
  FDRE \decoded_imm_reg[13] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[13]_i_1_n_0 ),
        .Q(decoded_imm[13]),
        .R(1'b0));
  FDRE \decoded_imm_reg[14] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[14]_i_1_n_0 ),
        .Q(decoded_imm[14]),
        .R(1'b0));
  FDRE \decoded_imm_reg[15] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[15]_i_1_n_0 ),
        .Q(decoded_imm[15]),
        .R(1'b0));
  FDRE \decoded_imm_reg[16] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[16]_i_1_n_0 ),
        .Q(decoded_imm[16]),
        .R(1'b0));
  FDRE \decoded_imm_reg[17] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[17]_i_1_n_0 ),
        .Q(decoded_imm[17]),
        .R(1'b0));
  FDRE \decoded_imm_reg[18] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[18]_i_1_n_0 ),
        .Q(decoded_imm[18]),
        .R(1'b0));
  FDRE \decoded_imm_reg[19] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[19]_i_1_n_0 ),
        .Q(decoded_imm[19]),
        .R(1'b0));
  FDRE \decoded_imm_reg[1] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[1]_i_1_n_0 ),
        .Q(decoded_imm[1]),
        .R(1'b0));
  FDSE \decoded_imm_reg[20] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[20]_i_1_n_0 ),
        .Q(decoded_imm[20]),
        .S(\decoded_imm[30]_i_1_n_0 ));
  FDSE \decoded_imm_reg[21] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[21]_i_1_n_0 ),
        .Q(decoded_imm[21]),
        .S(\decoded_imm[30]_i_1_n_0 ));
  FDSE \decoded_imm_reg[22] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[22]_i_1_n_0 ),
        .Q(decoded_imm[22]),
        .S(\decoded_imm[30]_i_1_n_0 ));
  FDSE \decoded_imm_reg[23] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[23]_i_1_n_0 ),
        .Q(decoded_imm[23]),
        .S(\decoded_imm[30]_i_1_n_0 ));
  FDSE \decoded_imm_reg[24] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[24]_i_1_n_0 ),
        .Q(decoded_imm[24]),
        .S(\decoded_imm[30]_i_1_n_0 ));
  FDSE \decoded_imm_reg[25] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[25]_i_1_n_0 ),
        .Q(decoded_imm[25]),
        .S(\decoded_imm[30]_i_1_n_0 ));
  FDSE \decoded_imm_reg[26] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[26]_i_1_n_0 ),
        .Q(decoded_imm[26]),
        .S(\decoded_imm[30]_i_1_n_0 ));
  FDSE \decoded_imm_reg[27] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[27]_i_1_n_0 ),
        .Q(decoded_imm[27]),
        .S(\decoded_imm[30]_i_1_n_0 ));
  FDSE \decoded_imm_reg[28] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[28]_i_1_n_0 ),
        .Q(decoded_imm[28]),
        .S(\decoded_imm[30]_i_1_n_0 ));
  FDSE \decoded_imm_reg[29] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[29]_i_1_n_0 ),
        .Q(decoded_imm[29]),
        .S(\decoded_imm[30]_i_1_n_0 ));
  FDRE \decoded_imm_reg[2] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[2]_i_1_n_0 ),
        .Q(decoded_imm[2]),
        .R(1'b0));
  FDSE \decoded_imm_reg[30] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[30]_i_2_n_0 ),
        .Q(decoded_imm[30]),
        .S(\decoded_imm[30]_i_1_n_0 ));
  FDRE \decoded_imm_reg[31] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[31]_i_1_n_0 ),
        .Q(decoded_imm[31]),
        .R(1'b0));
  FDRE \decoded_imm_reg[3] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[3]_i_1_n_0 ),
        .Q(decoded_imm[3]),
        .R(1'b0));
  FDRE \decoded_imm_reg[4] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[4]_i_1_n_0 ),
        .Q(decoded_imm[4]),
        .R(1'b0));
  FDRE \decoded_imm_reg[5] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[5]_i_1_n_0 ),
        .Q(decoded_imm[5]),
        .R(1'b0));
  FDRE \decoded_imm_reg[6] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[6]_i_1_n_0 ),
        .Q(decoded_imm[6]),
        .R(1'b0));
  FDRE \decoded_imm_reg[7] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[7]_i_1_n_0 ),
        .Q(decoded_imm[7]),
        .R(1'b0));
  FDRE \decoded_imm_reg[8] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[8]_i_1_n_0 ),
        .Q(decoded_imm[8]),
        .R(1'b0));
  FDRE \decoded_imm_reg[9] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[9]_i_1_n_0 ),
        .Q(decoded_imm[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \decoded_imm_uj[10]_i_1 
       (.I0(\mem_rdata_q[8]_i_2_n_0 ),
        .I1(compressed_instr_i_1_n_0),
        .I2(instr_retirq_i_4_n_0),
        .O(\decoded_imm_uj[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair207" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \decoded_imm_uj[11]_i_1 
       (.I0(\mem_rdata_q[20]_i_3_n_0 ),
        .I1(compressed_instr_i_1_n_0),
        .O(\decoded_imm_uj[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \decoded_imm_uj[12]_i_1 
       (.I0(\decoded_imm_uj[12]_i_2_n_0 ),
        .I1(\mem_rdata_q[11]_i_5_n_0 ),
        .I2(mem_axi_rdata[12]),
        .I3(\mem_rdata_q[11]_i_6_n_0 ),
        .I4(mem_axi_rdata[28]),
        .O(p_3_in[2]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \decoded_imm_uj[12]_i_2 
       (.I0(\mem_rdata_q[11]_i_7_n_0 ),
        .I1(\mem_rdata_q_reg_n_0_[12] ),
        .I2(\mem_rdata_q[11]_i_8_n_0 ),
        .I3(\mem_rdata_q_reg_n_0_[28] ),
        .I4(\mem_16bit_buffer_reg_n_0_[12] ),
        .I5(\mem_rdata_q[11]_i_9_n_0 ),
        .O(\decoded_imm_uj[12]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair210" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \decoded_imm_uj[13]_i_1 
       (.I0(p_5_in),
        .I1(compressed_instr_i_1_n_0),
        .O(\decoded_imm_uj[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \decoded_imm_uj[14]_i_1 
       (.I0(\mem_axi_rdata[15] [0]),
        .I1(compressed_instr_i_1_n_0),
        .O(\decoded_imm_uj[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair210" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \decoded_imm_uj[15]_i_1 
       (.I0(\mem_axi_rdata[15] [1]),
        .I1(compressed_instr_i_1_n_0),
        .O(\decoded_imm_uj[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair207" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \decoded_imm_uj[16]_i_1 
       (.I0(\mem_rdata_q[16]_i_2_n_0 ),
        .I1(compressed_instr_i_1_n_0),
        .O(\decoded_imm_uj[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair208" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \decoded_imm_uj[17]_i_1 
       (.I0(\mem_rdata_q[17]_i_2_n_0 ),
        .I1(compressed_instr_i_1_n_0),
        .O(\decoded_imm_uj[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \decoded_imm_uj[18]_i_1 
       (.I0(\mem_rdata_q[18]_i_2_n_0 ),
        .I1(compressed_instr_i_1_n_0),
        .O(\decoded_imm_uj[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \decoded_imm_uj[19]_i_1 
       (.I0(\mem_rdata_q[19]_i_6_n_0 ),
        .I1(compressed_instr_i_1_n_0),
        .O(\decoded_imm_uj[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \decoded_imm_uj[1]_i_1 
       (.I0(p_13_in[0]),
        .I1(compressed_instr_i_1_n_0),
        .I2(\mem_rdata_q[21]_i_5_n_0 ),
        .O(\decoded_imm_uj[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \decoded_imm_uj[20]_i_1 
       (.I0(compressed_instr_i_1_n_0),
        .I1(p_3_in[2]),
        .I2(\decoded_imm_uj[20]_i_3_n_0 ),
        .O(\decoded_imm_uj[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair208" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \decoded_imm_uj[20]_i_2 
       (.I0(\mem_rdata_q[31]_i_12_n_0 ),
        .I1(compressed_instr_i_1_n_0),
        .O(\decoded_imm_uj[20]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \decoded_imm_uj[20]_i_3 
       (.I0(mem_done),
        .I1(mem_do_rinst_reg_n_0),
        .O(\decoded_imm_uj[20]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \decoded_imm_uj[2]_i_1 
       (.I0(p_13_in[1]),
        .I1(compressed_instr_i_1_n_0),
        .I2(\mem_rdata_q[22]_i_4_n_0 ),
        .O(\decoded_imm_uj[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \decoded_imm_uj[3]_i_1 
       (.I0(p_12_in),
        .I1(compressed_instr_i_1_n_0),
        .I2(\mem_rdata_q[23]_i_4_n_0 ),
        .O(\decoded_imm_uj[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \decoded_imm_uj[4]_i_1 
       (.I0(p_3_in[1]),
        .I1(compressed_instr_i_1_n_0),
        .I2(\decoded_imm_uj[4]_i_2_n_0 ),
        .O(\decoded_imm_uj[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \decoded_imm_uj[4]_i_2 
       (.I0(\mem_rdata_q[11]_i_5_n_0 ),
        .I1(mem_axi_rdata[24]),
        .I2(instr_retirq_i_6_n_0),
        .I3(mem_axi_rdata[8]),
        .I4(\decoded_imm_uj[4]_i_3_n_0 ),
        .O(\decoded_imm_uj[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF404040)) 
    \decoded_imm_uj[4]_i_3 
       (.I0(\mem_rdata_q[6]_i_5_n_0 ),
        .I1(mem_la_secondword),
        .I2(\mem_rdata_q_reg_n_0_[8] ),
        .I3(\mem_rdata_q_reg_n_0_[24] ),
        .I4(\mem_rdata_q[11]_i_7_n_0 ),
        .O(\decoded_imm_uj[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \decoded_imm_uj[5]_i_1 
       (.I0(p_11_in),
        .I1(compressed_instr_i_1_n_0),
        .I2(instr_waitirq_i_2_n_0),
        .O(\decoded_imm_uj[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \decoded_imm_uj[6]_i_1 
       (.I0(\mem_rdata_q[7]_i_2_n_0 ),
        .I1(compressed_instr_i_1_n_0),
        .I2(instr_retirq_i_5_n_0),
        .O(\decoded_imm_uj[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \decoded_imm_uj[7]_i_1 
       (.I0(p_10_in),
        .I1(compressed_instr_i_1_n_0),
        .I2(instr_waitirq_i_3_n_0),
        .O(\decoded_imm_uj[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \decoded_imm_uj[8]_i_1 
       (.I0(\mem_rdata_q[9]_i_3_n_0 ),
        .I1(compressed_instr_i_1_n_0),
        .I2(\mem_rdata_q[28]_i_5_n_0 ),
        .O(\decoded_imm_uj[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \decoded_imm_uj[9]_i_1 
       (.I0(p_3_in[0]),
        .I1(compressed_instr_i_1_n_0),
        .I2(\mem_rdata_q[29]_i_5_n_0 ),
        .O(\decoded_imm_uj[9]_i_1_n_0 ));
  FDRE \decoded_imm_uj_reg[10] 
       (.C(clk),
        .CE(instr_lui0),
        .D(\decoded_imm_uj[10]_i_1_n_0 ),
        .Q(decoded_imm_uj[10]),
        .R(1'b0));
  FDSE \decoded_imm_uj_reg[11] 
       (.C(clk),
        .CE(instr_lui0),
        .D(\decoded_imm_uj[11]_i_1_n_0 ),
        .Q(decoded_imm_uj[11]),
        .S(\decoded_imm_uj[20]_i_1_n_0 ));
  FDRE \decoded_imm_uj_reg[12] 
       (.C(clk),
        .CE(instr_lui0),
        .D(p_3_in[2]),
        .Q(decoded_imm_uj[12]),
        .R(1'b0));
  FDSE \decoded_imm_uj_reg[13] 
       (.C(clk),
        .CE(instr_lui0),
        .D(\decoded_imm_uj[13]_i_1_n_0 ),
        .Q(decoded_imm_uj[13]),
        .S(\decoded_imm_uj[20]_i_1_n_0 ));
  FDSE \decoded_imm_uj_reg[14] 
       (.C(clk),
        .CE(instr_lui0),
        .D(\decoded_imm_uj[14]_i_1_n_0 ),
        .Q(decoded_imm_uj[14]),
        .S(\decoded_imm_uj[20]_i_1_n_0 ));
  FDSE \decoded_imm_uj_reg[15] 
       (.C(clk),
        .CE(instr_lui0),
        .D(\decoded_imm_uj[15]_i_1_n_0 ),
        .Q(decoded_imm_uj[15]),
        .S(\decoded_imm_uj[20]_i_1_n_0 ));
  FDSE \decoded_imm_uj_reg[16] 
       (.C(clk),
        .CE(instr_lui0),
        .D(\decoded_imm_uj[16]_i_1_n_0 ),
        .Q(decoded_imm_uj[16]),
        .S(\decoded_imm_uj[20]_i_1_n_0 ));
  FDSE \decoded_imm_uj_reg[17] 
       (.C(clk),
        .CE(instr_lui0),
        .D(\decoded_imm_uj[17]_i_1_n_0 ),
        .Q(decoded_imm_uj[17]),
        .S(\decoded_imm_uj[20]_i_1_n_0 ));
  FDSE \decoded_imm_uj_reg[18] 
       (.C(clk),
        .CE(instr_lui0),
        .D(\decoded_imm_uj[18]_i_1_n_0 ),
        .Q(decoded_imm_uj[18]),
        .S(\decoded_imm_uj[20]_i_1_n_0 ));
  FDSE \decoded_imm_uj_reg[19] 
       (.C(clk),
        .CE(instr_lui0),
        .D(\decoded_imm_uj[19]_i_1_n_0 ),
        .Q(decoded_imm_uj[19]),
        .S(\decoded_imm_uj[20]_i_1_n_0 ));
  FDRE \decoded_imm_uj_reg[1] 
       (.C(clk),
        .CE(instr_lui0),
        .D(\decoded_imm_uj[1]_i_1_n_0 ),
        .Q(decoded_imm_uj[1]),
        .R(1'b0));
  FDSE \decoded_imm_uj_reg[20] 
       (.C(clk),
        .CE(instr_lui0),
        .D(\decoded_imm_uj[20]_i_2_n_0 ),
        .Q(decoded_imm_uj[20]),
        .S(\decoded_imm_uj[20]_i_1_n_0 ));
  FDRE \decoded_imm_uj_reg[2] 
       (.C(clk),
        .CE(instr_lui0),
        .D(\decoded_imm_uj[2]_i_1_n_0 ),
        .Q(decoded_imm_uj[2]),
        .R(1'b0));
  FDRE \decoded_imm_uj_reg[3] 
       (.C(clk),
        .CE(instr_lui0),
        .D(\decoded_imm_uj[3]_i_1_n_0 ),
        .Q(decoded_imm_uj[3]),
        .R(1'b0));
  FDRE \decoded_imm_uj_reg[4] 
       (.C(clk),
        .CE(instr_lui0),
        .D(\decoded_imm_uj[4]_i_1_n_0 ),
        .Q(decoded_imm_uj[4]),
        .R(1'b0));
  FDRE \decoded_imm_uj_reg[5] 
       (.C(clk),
        .CE(instr_lui0),
        .D(\decoded_imm_uj[5]_i_1_n_0 ),
        .Q(decoded_imm_uj[5]),
        .R(1'b0));
  FDRE \decoded_imm_uj_reg[6] 
       (.C(clk),
        .CE(instr_lui0),
        .D(\decoded_imm_uj[6]_i_1_n_0 ),
        .Q(decoded_imm_uj[6]),
        .R(1'b0));
  FDRE \decoded_imm_uj_reg[7] 
       (.C(clk),
        .CE(instr_lui0),
        .D(\decoded_imm_uj[7]_i_1_n_0 ),
        .Q(decoded_imm_uj[7]),
        .R(1'b0));
  FDRE \decoded_imm_uj_reg[8] 
       (.C(clk),
        .CE(instr_lui0),
        .D(\decoded_imm_uj[8]_i_1_n_0 ),
        .Q(decoded_imm_uj[8]),
        .R(1'b0));
  FDRE \decoded_imm_uj_reg[9] 
       (.C(clk),
        .CE(instr_lui0),
        .D(\decoded_imm_uj[9]_i_1_n_0 ),
        .Q(decoded_imm_uj[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEA)) 
    \decoded_rd[0]_i_1 
       (.I0(\decoded_rd[0]_i_2_n_0 ),
        .I1(\mem_rdata_q[7]_i_2_n_0 ),
        .I2(\decoded_rd[0]_i_3_n_0 ),
        .I3(\decoded_rd[0]_i_4_n_0 ),
        .I4(\decoded_rd[0]_i_5_n_0 ),
        .I5(\decoded_rd[0]_i_6_n_0 ),
        .O(\decoded_rd[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \decoded_rd[0]_i_10 
       (.I0(\mem_rdata_q[7]_i_2_n_0 ),
        .I1(\mem_rdata_q[0]_i_1_n_0 ),
        .I2(\mem_rdata_q[1]_i_1_n_0 ),
        .O(\decoded_rd[0]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \decoded_rd[0]_i_2 
       (.I0(\mem_axi_rdata[15] [1]),
        .I1(p_11_in),
        .I2(\decoded_rd[2]_i_2_n_0 ),
        .O(\decoded_rd[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h8B00FFFF)) 
    \decoded_rd[0]_i_3 
       (.I0(mem_rdata_q3),
        .I1(\mem_axi_rdata[15] [0]),
        .I2(p_3_in[2]),
        .I3(\decoded_rd[4]_i_6_n_0 ),
        .I4(compressed_instr_i_1_n_0),
        .O(\decoded_rd[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF40000000)) 
    \decoded_rd[0]_i_4 
       (.I0(instr_jalr_i_3_n_0),
        .I1(p_3_in[2]),
        .I2(mem_rdata_q3),
        .I3(\decoded_rd[0]_i_7_n_0 ),
        .I4(\decoded_rd[0]_i_8_n_0 ),
        .I5(\decoded_rd[0]_i_9_n_0 ),
        .O(\decoded_rd[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h002A002A222A002A)) 
    \decoded_rd[0]_i_5 
       (.I0(\decoded_rd[0]_i_10_n_0 ),
        .I1(p_5_in),
        .I2(mem_rdata_q1),
        .I3(\mem_axi_rdata[15] [1]),
        .I4(\decoded_rd[3]_i_3_n_0 ),
        .I5(\mem_axi_rdata[15] [0]),
        .O(\decoded_rd[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \decoded_rd[0]_i_6 
       (.I0(\mem_rdata_q[7]_i_2_n_0 ),
        .I1(\decoded_rd[4]_i_4_n_0 ),
        .I2(is_alu_reg_reg_i_5_n_0),
        .O(\decoded_rd[0]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \decoded_rd[0]_i_7 
       (.I0(\mem_rdata_q[1]_i_1_n_0 ),
        .I1(\mem_axi_rdata[15] [1]),
        .I2(\mem_axi_rdata[15] [0]),
        .O(\decoded_rd[0]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \decoded_rd[0]_i_8 
       (.I0(compressed_instr_i_1_n_0),
        .I1(\mem_rdata_q[0]_i_1_n_0 ),
        .I2(p_5_in),
        .O(\decoded_rd[0]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h00040000)) 
    \decoded_rd[0]_i_9 
       (.I0(\mem_axi_rdata[15] [1]),
        .I1(\mem_rdata_q[0]_i_1_n_0 ),
        .I2(\mem_rdata_q[1]_i_1_n_0 ),
        .I3(\mem_axi_rdata[15] [0]),
        .I4(p_5_in),
        .O(\decoded_rd[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8888F8888888)) 
    \decoded_rd[1]_i_1 
       (.I0(\decoded_rd[1]_i_2_n_0 ),
        .I1(\decoded_rd[2]_i_2_n_0 ),
        .I2(\decoded_rd[3]_i_2_n_0 ),
        .I3(\decoded_rd[3]_i_3_n_0 ),
        .I4(\mem_rdata_q[8]_i_2_n_0 ),
        .I5(\decoded_rd[4]_i_2_n_0 ),
        .O(\decoded_rd[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \decoded_rd[1]_i_2 
       (.I0(p_13_in[0]),
        .I1(\mem_axi_rdata[15] [1]),
        .O(\decoded_rd[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF40FF40FF40)) 
    \decoded_rd[2]_i_1 
       (.I0(\mem_axi_rdata[15] [1]),
        .I1(p_13_in[1]),
        .I2(\decoded_rd[2]_i_2_n_0 ),
        .I3(\decoded_rd[2]_i_3_n_0 ),
        .I4(\mem_rdata_q[9]_i_3_n_0 ),
        .I5(\decoded_rd[4]_i_2_n_0 ),
        .O(\decoded_rd[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \decoded_rd[2]_i_2 
       (.I0(p_5_in),
        .I1(\mem_rdata_q[0]_i_1_n_0 ),
        .I2(\mem_rdata_q[1]_i_1_n_0 ),
        .O(\decoded_rd[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    \decoded_rd[2]_i_3 
       (.I0(\mem_rdata_q[9]_i_3_n_0 ),
        .I1(\mem_axi_rdata[15] [0]),
        .I2(p_5_in),
        .I3(\mem_rdata_q[0]_i_1_n_0 ),
        .I4(\mem_rdata_q[1]_i_1_n_0 ),
        .I5(\decoded_rd[3]_i_3_n_0 ),
        .O(\decoded_rd[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \decoded_rd[3]_i_1 
       (.I0(\mem_rdata_q[24]_i_4_n_0 ),
        .I1(compressed_instr_i_1_n_0),
        .I2(\decoded_rd[3]_i_2_n_0 ),
        .I3(\decoded_rd[3]_i_3_n_0 ),
        .I4(p_3_in[0]),
        .I5(\decoded_rd[4]_i_2_n_0 ),
        .O(\decoded_rd[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \decoded_rd[3]_i_2 
       (.I0(\decoded_rd[3]_i_4_n_0 ),
        .I1(\mem_axi_rdata[15] [1]),
        .O(\decoded_rd[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'h5D)) 
    \decoded_rd[3]_i_3 
       (.I0(p_3_in[2]),
        .I1(p_3_in[1]),
        .I2(p_3_in[0]),
        .O(\decoded_rd[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \decoded_rd[3]_i_4 
       (.I0(\mem_rdata_q[1]_i_1_n_0 ),
        .I1(\mem_rdata_q[0]_i_1_n_0 ),
        .I2(\mem_axi_rdata[15] [0]),
        .I3(p_5_in),
        .O(\decoded_rd[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \decoded_rd[4]_i_1 
       (.I0(\decoded_rd[4]_i_2_n_0 ),
        .I1(p_3_in[1]),
        .O(\decoded_rd[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF888FFFF)) 
    \decoded_rd[4]_i_2 
       (.I0(\decoded_rd[4]_i_3_n_0 ),
        .I1(\decoded_rd[4]_i_4_n_0 ),
        .I2(\decoded_rd[4]_i_5_n_0 ),
        .I3(\decoded_rd[4]_i_6_n_0 ),
        .I4(compressed_instr_i_1_n_0),
        .I5(\decoded_rd[4]_i_7_n_0 ),
        .O(\decoded_rd[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \decoded_rd[4]_i_3 
       (.I0(\mem_rdata_q[31]_i_26_n_0 ),
        .I1(is_alu_reg_imm_i_8_n_0),
        .O(\decoded_rd[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \decoded_rd[4]_i_4 
       (.I0(\mem_axi_rdata[15] [0]),
        .I1(\mem_axi_rdata[15] [1]),
        .I2(\mem_rdata_q[1]_i_1_n_0 ),
        .I3(\mem_rdata_q[0]_i_1_n_0 ),
        .I4(p_5_in),
        .O(\decoded_rd[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hFE00FEFF)) 
    \decoded_rd[4]_i_5 
       (.I0(p_3_in[1]),
        .I1(\mem_rdata_q[21]_i_6_n_0 ),
        .I2(\mem_rdata_q[8]_i_2_n_0 ),
        .I3(\mem_axi_rdata[15] [0]),
        .I4(p_3_in[2]),
        .O(\decoded_rd[4]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \decoded_rd[4]_i_6 
       (.I0(\mem_axi_rdata[15] [1]),
        .I1(\mem_rdata_q[1]_i_1_n_0 ),
        .I2(\mem_rdata_q[0]_i_1_n_0 ),
        .I3(p_5_in),
        .O(\decoded_rd[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hA2A2A2A2A2A2A222)) 
    \decoded_rd[4]_i_7 
       (.I0(\decoded_rd[4]_i_8_n_0 ),
        .I1(p_5_in),
        .I2(\mem_axi_rdata[15] [0]),
        .I3(p_3_in[2]),
        .I4(\mem_rdata_q[31]_i_26_n_0 ),
        .I5(is_alu_reg_imm_i_8_n_0),
        .O(\decoded_rd[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001110)) 
    \decoded_rd[4]_i_8 
       (.I0(is_lb_lh_lw_lbu_lhu_i_5_n_0),
        .I1(\mem_rdata_q[19]_i_8_n_0 ),
        .I2(\mem_rdata_q[0]_i_2_n_0 ),
        .I3(compressed_instr_i_2_n_0),
        .I4(\mem_rdata_q[1]_i_2_n_0 ),
        .I5(compressed_instr_i_3_n_0),
        .O(\decoded_rd[4]_i_8_n_0 ));
  FDRE \decoded_rd_reg[0] 
       (.C(clk),
        .CE(instr_lui0),
        .D(\decoded_rd[0]_i_1_n_0 ),
        .Q(\decoded_rd_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \decoded_rd_reg[1] 
       (.C(clk),
        .CE(instr_lui0),
        .D(\decoded_rd[1]_i_1_n_0 ),
        .Q(\decoded_rd_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \decoded_rd_reg[2] 
       (.C(clk),
        .CE(instr_lui0),
        .D(\decoded_rd[2]_i_1_n_0 ),
        .Q(\decoded_rd_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \decoded_rd_reg[3] 
       (.C(clk),
        .CE(instr_lui0),
        .D(\decoded_rd[3]_i_1_n_0 ),
        .Q(\decoded_rd_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \decoded_rd_reg[4] 
       (.C(clk),
        .CE(instr_lui0),
        .D(\decoded_rd[4]_i_1_n_0 ),
        .Q(\decoded_rd_reg_n_0_[4] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0008)) 
    \decoded_rs1[0]_i_1 
       (.I0(\decoded_rs1[0]_i_3_n_0 ),
        .I1(instr_retirq_i_2_n_0),
        .I2(compressed_instr_i_1_n_0),
        .I3(\decoded_imm_uj[20]_i_3_n_0 ),
        .O(\decoded_rs1[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF00FF80FF00)) 
    \decoded_rs1[0]_i_2 
       (.I0(\decoded_rs1[0]_i_4_n_0 ),
        .I1(\decoded_rs1[0]_i_5_n_0 ),
        .I2(\decoded_rs1[0]_i_6_n_0 ),
        .I3(\decoded_rs1[0]_i_7_n_0 ),
        .I4(\mem_rdata_q[7]_i_2_n_0 ),
        .I5(\decoded_rs1[0]_i_8_n_0 ),
        .O(\decoded_rs1[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \decoded_rs1[0]_i_3 
       (.I0(instr_retirq_i_5_n_0),
        .I1(instr_retirq_i_4_n_0),
        .I2(instr_retirq_i_3_n_0),
        .I3(p_13_in[0]),
        .O(\decoded_rs1[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \decoded_rs1[0]_i_4 
       (.I0(\mem_axi_rdata[15] [0]),
        .I1(p_5_in),
        .I2(\mem_rdata_q[0]_i_1_n_0 ),
        .O(\decoded_rs1[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hEEE0)) 
    \decoded_rs1[0]_i_5 
       (.I0(is_lb_lh_lw_lbu_lhu_i_5_n_0),
        .I1(\mem_rdata_q[19]_i_8_n_0 ),
        .I2(compressed_instr_i_3_n_0),
        .I3(\mem_rdata_q[1]_i_2_n_0 ),
        .O(\decoded_rs1[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hD8)) 
    \decoded_rs1[0]_i_6 
       (.I0(instr_jalr_i_3_n_0),
        .I1(p_3_in[2]),
        .I2(mem_rdata_q3),
        .O(\decoded_rs1[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFF00000000100000)) 
    \decoded_rs1[0]_i_7 
       (.I0(\mem_rdata_q[13]_i_6_n_0 ),
        .I1(p_3_in[2]),
        .I2(\mem_rdata_q[7]_i_2_n_0 ),
        .I3(\mem_rdata_q[0]_i_1_n_0 ),
        .I4(\mem_rdata_q[1]_i_1_n_0 ),
        .I5(\mem_axi_rdata[15] [1]),
        .O(\decoded_rs1[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h3033002000030030)) 
    \decoded_rs1[0]_i_8 
       (.I0(\decoded_rd[3]_i_3_n_0 ),
        .I1(\mem_rdata_q[1]_i_1_n_0 ),
        .I2(\mem_rdata_q[0]_i_1_n_0 ),
        .I3(p_5_in),
        .I4(\mem_axi_rdata[15] [0]),
        .I5(\mem_axi_rdata[15] [1]),
        .O(\decoded_rs1[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFEFEEE)) 
    \decoded_rs1[1]_i_1 
       (.I0(\decoded_rs1[1]_i_2_n_0 ),
        .I1(\decoded_rs1[1]_i_3_n_0 ),
        .I2(\decoded_rs1[1]_i_4_n_0 ),
        .I3(\decoded_rs1[1]_i_5_n_0 ),
        .I4(\decoded_rs1[1]_i_6_n_0 ),
        .I5(\decoded_rs1[1]_i_7_n_0 ),
        .O(\decoded_rs1[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \decoded_rs1[1]_i_10 
       (.I0(p_5_in),
        .I1(\mem_axi_rdata[15] [1]),
        .I2(\mem_rdata_q[1]_i_1_n_0 ),
        .I3(\mem_rdata_q[8]_i_2_n_0 ),
        .O(\decoded_rs1[1]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    \decoded_rs1[1]_i_2 
       (.I0(\mem_rdata_q[19]_i_4_n_0 ),
        .I1(mem_rdata_q1),
        .I2(\mem_axi_rdata[15] [0]),
        .I3(mem_axi_rdata_0_sn_1),
        .I4(p_5_in),
        .O(\decoded_rs1[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBFB00F000F000F0)) 
    \decoded_rs1[1]_i_3 
       (.I0(\mem_axi_rdata[15] [0]),
        .I1(\mem_axi_rdata[15] [1]),
        .I2(\mem_rdata_q[16]_i_2_n_0 ),
        .I3(compressed_instr_i_1_n_0),
        .I4(\decoded_rd[3]_i_4_n_0 ),
        .I5(\mem_rdata_q[8]_i_2_n_0 ),
        .O(\decoded_rs1[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \decoded_rs1[1]_i_4 
       (.I0(compressed_instr_i_1_n_0),
        .I1(\mem_rdata_q[0]_i_1_n_0 ),
        .O(\decoded_rs1[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F000004F)) 
    \decoded_rs1[1]_i_5 
       (.I0(p_3_in[2]),
        .I1(\mem_rdata_q[8]_i_2_n_0 ),
        .I2(\mem_rdata_q[1]_i_1_n_0 ),
        .I3(\mem_axi_rdata[15] [1]),
        .I4(\mem_axi_rdata[15] [0]),
        .I5(p_5_in),
        .O(\decoded_rs1[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFAAAEEEEAAAA)) 
    \decoded_rs1[1]_i_6 
       (.I0(\decoded_rs1[1]_i_8_n_0 ),
        .I1(\decoded_rs1[1]_i_9_n_0 ),
        .I2(instr_jalr_i_3_n_0),
        .I3(p_3_in[2]),
        .I4(mem_rdata_q3),
        .I5(\decoded_rs1[1]_i_10_n_0 ),
        .O(\decoded_rs1[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hC0C0000040000000)) 
    \decoded_rs1[1]_i_7 
       (.I0(p_5_in),
        .I1(mem_axi_rdata_0_sn_1),
        .I2(\mem_rdata_q[8]_i_2_n_0 ),
        .I3(\decoded_rd[3]_i_3_n_0 ),
        .I4(\mem_axi_rdata[15] [1]),
        .I5(\mem_axi_rdata[15] [0]),
        .O(\decoded_rs1[1]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \decoded_rs1[1]_i_8 
       (.I0(\mem_rdata_q[1]_i_1_n_0 ),
        .I1(\mem_axi_rdata[15] [0]),
        .I2(p_5_in),
        .I3(\mem_rdata_q[8]_i_2_n_0 ),
        .O(\decoded_rs1[1]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \decoded_rs1[1]_i_9 
       (.I0(\mem_rdata_q[1]_i_1_n_0 ),
        .I1(p_5_in),
        .I2(\mem_axi_rdata[15] [0]),
        .O(\decoded_rs1[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFF2F2F222222222)) 
    \decoded_rs1[2]_i_1 
       (.I0(\mem_rdata_q[17]_i_2_n_0 ),
        .I1(compressed_instr_i_1_n_0),
        .I2(\decoded_rs1[0]_i_8_n_0 ),
        .I3(\decoded_rs1[2]_i_2_n_0 ),
        .I4(\decoded_rs1[2]_i_3_n_0 ),
        .I5(\mem_rdata_q[9]_i_3_n_0 ),
        .O(\decoded_rs1[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hE4000F00)) 
    \decoded_rs1[2]_i_2 
       (.I0(instr_jalr_i_3_n_0),
        .I1(mem_rdata_q3),
        .I2(p_3_in[2]),
        .I3(\mem_rdata_q[1]_i_1_n_0 ),
        .I4(\mem_axi_rdata[15] [1]),
        .O(\decoded_rs1[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \decoded_rs1[2]_i_3 
       (.I0(\mem_rdata_q[0]_i_1_n_0 ),
        .I1(p_5_in),
        .I2(\mem_axi_rdata[15] [0]),
        .I3(compressed_instr_i_1_n_0),
        .O(\decoded_rs1[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEAAA)) 
    \decoded_rs1[3]_i_1 
       (.I0(\decoded_rs1[3]_i_2_n_0 ),
        .I1(p_3_in[0]),
        .I2(\decoded_rs1[2]_i_3_n_0 ),
        .I3(\decoded_rs1[2]_i_2_n_0 ),
        .I4(\decoded_rs1[3]_i_3_n_0 ),
        .O(\decoded_rs1[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEFEEEAAAAFAAA)) 
    \decoded_rs1[3]_i_2 
       (.I0(\decoded_imm_uj[18]_i_1_n_0 ),
        .I1(\decoded_rd[2]_i_2_n_0 ),
        .I2(\decoded_rd[3]_i_4_n_0 ),
        .I3(p_3_in[0]),
        .I4(\mem_axi_rdata[15] [1]),
        .I5(\mem_axi_rdata[15] [0]),
        .O(\decoded_rs1[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hC400C000)) 
    \decoded_rs1[3]_i_3 
       (.I0(p_5_in),
        .I1(mem_axi_rdata_0_sn_1),
        .I2(\mem_axi_rdata[15] [0]),
        .I3(\mem_axi_rdata[15] [1]),
        .I4(\decoded_rd[3]_i_3_n_0 ),
        .O(\decoded_rs1[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'hEAAA)) 
    \decoded_rs1[4]_i_1 
       (.I0(\decoded_rs1[4]_i_2_n_0 ),
        .I1(\decoded_rs1[2]_i_2_n_0 ),
        .I2(\decoded_rs1[2]_i_3_n_0 ),
        .I3(p_3_in[1]),
        .O(\decoded_rs1[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF01000000)) 
    \decoded_rs1[4]_i_2 
       (.I0(\mem_axi_rdata[15] [0]),
        .I1(p_5_in),
        .I2(\mem_axi_rdata[15] [1]),
        .I3(p_3_in[1]),
        .I4(mem_axi_rdata_0_sn_1),
        .I5(\decoded_imm_uj[19]_i_1_n_0 ),
        .O(\decoded_rs1[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFAA00AA0CAA00)) 
    \decoded_rs1[5]_i_1 
       (.I0(\decoded_rs1_reg_n_0_[5] ),
        .I1(\decoded_rs1[0]_i_3_n_0 ),
        .I2(compressed_instr_i_1_n_0),
        .I3(\decoded_imm_uj[20]_i_3_n_0 ),
        .I4(instr_retirq_i_2_n_0),
        .I5(instr_waitirq_i_4_n_0),
        .O(\decoded_rs1[5]_i_1_n_0 ));
  FDRE \decoded_rs1_reg[0] 
       (.C(clk),
        .CE(instr_lui0),
        .D(\decoded_rs1[0]_i_2_n_0 ),
        .Q(\decoded_rs1_reg_n_0_[0] ),
        .R(\decoded_rs1[0]_i_1_n_0 ));
  FDRE \decoded_rs1_reg[1] 
       (.C(clk),
        .CE(instr_lui0),
        .D(\decoded_rs1[1]_i_1_n_0 ),
        .Q(\decoded_rs1_reg_n_0_[1] ),
        .R(\decoded_rs1[0]_i_1_n_0 ));
  FDRE \decoded_rs1_reg[2] 
       (.C(clk),
        .CE(instr_lui0),
        .D(\decoded_rs1[2]_i_1_n_0 ),
        .Q(\decoded_rs1_reg_n_0_[2] ),
        .R(\decoded_rs1[0]_i_1_n_0 ));
  FDRE \decoded_rs1_reg[3] 
       (.C(clk),
        .CE(instr_lui0),
        .D(\decoded_rs1[3]_i_1_n_0 ),
        .Q(\decoded_rs1_reg_n_0_[3] ),
        .R(\decoded_rs1[0]_i_1_n_0 ));
  FDRE \decoded_rs1_reg[4] 
       (.C(clk),
        .CE(instr_lui0),
        .D(\decoded_rs1[4]_i_1_n_0 ),
        .Q(\decoded_rs1_reg_n_0_[4] ),
        .R(\decoded_rs1[0]_i_1_n_0 ));
  FDRE \decoded_rs1_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\decoded_rs1[5]_i_1_n_0 ),
        .Q(\decoded_rs1_reg_n_0_[5] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hA888FFFFA888A888)) 
    \decoded_rs2[0]_i_1 
       (.I0(p_11_in),
        .I1(\decoded_rs2[0]_i_2_n_0 ),
        .I2(\decoded_rs2[0]_i_3_n_0 ),
        .I3(\decoded_rd[3]_i_2_n_0 ),
        .I4(compressed_instr_i_1_n_0),
        .I5(\mem_rdata_q[20]_i_3_n_0 ),
        .O(\decoded_rs2[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00A02200000000)) 
    \decoded_rs2[0]_i_2 
       (.I0(\mem_rdata_q[1]_i_1_n_0 ),
        .I1(p_3_in[2]),
        .I2(instr_jalr_i_3_n_0),
        .I3(\mem_axi_rdata[15] [1]),
        .I4(\mem_axi_rdata[15] [0]),
        .I5(\decoded_rd[0]_i_8_n_0 ),
        .O(\decoded_rs2[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \decoded_rs2[0]_i_3 
       (.I0(p_3_in[2]),
        .I1(p_3_in[0]),
        .I2(p_3_in[1]),
        .O(\decoded_rs2[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA888FFFFA888A888)) 
    \decoded_rs2[1]_i_1 
       (.I0(p_13_in[0]),
        .I1(\decoded_rs2[0]_i_2_n_0 ),
        .I2(\decoded_rs2[0]_i_3_n_0 ),
        .I3(\decoded_rd[3]_i_2_n_0 ),
        .I4(compressed_instr_i_1_n_0),
        .I5(\mem_rdata_q[21]_i_5_n_0 ),
        .O(\decoded_rs2[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA888FFFFA888A888)) 
    \decoded_rs2[2]_i_1 
       (.I0(p_13_in[1]),
        .I1(\decoded_rs2[0]_i_2_n_0 ),
        .I2(\decoded_rs2[0]_i_3_n_0 ),
        .I3(\decoded_rd[3]_i_2_n_0 ),
        .I4(compressed_instr_i_1_n_0),
        .I5(\mem_rdata_q[22]_i_4_n_0 ),
        .O(\decoded_rs2[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF80)) 
    \decoded_rs2[3]_i_1 
       (.I0(p_12_in),
        .I1(\decoded_rs2[3]_i_2_n_0 ),
        .I2(\decoded_rs2[3]_i_3_n_0 ),
        .I3(\decoded_rs2[3]_i_4_n_0 ),
        .I4(\decoded_rs2[3]_i_5_n_0 ),
        .I5(\decoded_rs2[3]_i_6_n_0 ),
        .O(\decoded_rs2[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \decoded_rs2[3]_i_2 
       (.I0(p_5_in),
        .I1(\mem_rdata_q[0]_i_1_n_0 ),
        .I2(\mem_rdata_q[1]_i_1_n_0 ),
        .I3(\mem_axi_rdata[15] [1]),
        .O(\decoded_rs2[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \decoded_rs2[3]_i_3 
       (.I0(is_alu_reg_imm_i_8_n_0),
        .I1(p_13_in[1]),
        .I2(p_11_in),
        .I3(p_13_in[0]),
        .I4(\mem_axi_rdata[15] [0]),
        .O(\decoded_rs2[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00E2000000000000)) 
    \decoded_rs2[3]_i_4 
       (.I0(p_12_in),
        .I1(p_3_in[1]),
        .I2(p_3_in[0]),
        .I3(p_3_in[2]),
        .I4(\decoded_rd[3]_i_4_n_0 ),
        .I5(\mem_axi_rdata[15] [1]),
        .O(\decoded_rs2[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \decoded_rs2[3]_i_5 
       (.I0(p_12_in),
        .I1(\decoded_rd[0]_i_8_n_0 ),
        .I2(\mem_axi_rdata[15] [0]),
        .I3(\decoded_rs2[3]_i_7_n_0 ),
        .O(\decoded_rs2[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFF00000800000008)) 
    \decoded_rs2[3]_i_6 
       (.I0(\mem_axi_rdata[15] [1]),
        .I1(\mem_axi_rdata[15] [0]),
        .I2(p_5_in),
        .I3(\mem_rdata_q[0]_i_1_n_0 ),
        .I4(\mem_rdata_q[1]_i_1_n_0 ),
        .I5(\mem_rdata_q[23]_i_4_n_0 ),
        .O(\decoded_rs2[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \decoded_rs2[3]_i_7 
       (.I0(\mem_axi_rdata[15] [1]),
        .I1(\mem_rdata_q[1]_i_1_n_0 ),
        .I2(p_3_in[2]),
        .O(\decoded_rs2[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAA808080)) 
    \decoded_rs2[4]_i_1 
       (.I0(p_10_in),
        .I1(\decoded_rs2[4]_i_2_n_0 ),
        .I2(\decoded_rd[3]_i_2_n_0 ),
        .I3(\decoded_rs2[3]_i_2_n_0 ),
        .I4(\decoded_rs2[3]_i_3_n_0 ),
        .I5(\decoded_rs2[4]_i_3_n_0 ),
        .O(\decoded_rs2[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \decoded_rs2[4]_i_2 
       (.I0(p_3_in[2]),
        .I1(p_3_in[1]),
        .O(\decoded_rs2[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2000FFFF20002000)) 
    \decoded_rs2[4]_i_3 
       (.I0(\decoded_rs2[3]_i_7_n_0 ),
        .I1(\mem_axi_rdata[15] [0]),
        .I2(\decoded_rd[0]_i_8_n_0 ),
        .I3(p_10_in),
        .I4(compressed_instr_i_1_n_0),
        .I5(\decoded_imm_uj[4]_i_2_n_0 ),
        .O(\decoded_rs2[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF800000008000)) 
    \decoded_rs2[5]_i_1 
       (.I0(compressed_instr_i_1_n_0),
        .I1(\decoded_rd[3]_i_2_n_0 ),
        .I2(\decoded_rs2[4]_i_2_n_0 ),
        .I3(p_3_in[2]),
        .I4(\decoded_imm_uj[20]_i_3_n_0 ),
        .I5(decoded_rs2__1),
        .O(\decoded_rs2[5]_i_1_n_0 ));
  FDRE \decoded_rs2_reg[0] 
       (.C(clk),
        .CE(instr_lui0),
        .D(\decoded_rs2[0]_i_1_n_0 ),
        .Q(\decoded_rs2_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \decoded_rs2_reg[1] 
       (.C(clk),
        .CE(instr_lui0),
        .D(\decoded_rs2[1]_i_1_n_0 ),
        .Q(\decoded_rs2_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \decoded_rs2_reg[2] 
       (.C(clk),
        .CE(instr_lui0),
        .D(\decoded_rs2[2]_i_1_n_0 ),
        .Q(\decoded_rs2_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \decoded_rs2_reg[3] 
       (.C(clk),
        .CE(instr_lui0),
        .D(\decoded_rs2[3]_i_1_n_0 ),
        .Q(\decoded_rs2_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \decoded_rs2_reg[4] 
       (.C(clk),
        .CE(instr_lui0),
        .D(\decoded_rs2[4]_i_1_n_0 ),
        .Q(\decoded_rs2_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \decoded_rs2_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\decoded_rs2[5]_i_1_n_0 ),
        .Q(decoded_rs2__1),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    decoder_pseudo_trigger_i_1
       (.I0(decoder_pseudo_trigger_i_2_n_0),
        .I1(\cpu_state_reg_n_0_[7] ),
        .I2(\cpu_state_reg[6]_0 [4]),
        .I3(\cpu_state_reg[6]_0 [2]),
        .I4(mem_do_prefetch_reg_0),
        .I5(mem_done),
        .O(decoder_pseudo_trigger));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'hE)) 
    decoder_pseudo_trigger_i_2
       (.I0(\cpu_state_reg[6]_0 [3]),
        .I1(\cpu_state_reg_n_0_[2] ),
        .O(decoder_pseudo_trigger_i_2_n_0));
  FDRE decoder_pseudo_trigger_reg
       (.C(clk),
        .CE(1'b1),
        .D(decoder_pseudo_trigger),
        .Q(decoder_pseudo_trigger_reg_n_0),
        .R(trap_i_1_n_0));
  LUT6 #(
    .INIT(64'hCF00CC008800CC00)) 
    decoder_trigger_i_1
       (.I0(is_beq_bne_blt_bge_bltu_bgeu_reg_0),
        .I1(mem_do_rinst_reg_n_0),
        .I2(mem_do_prefetch_reg_0),
        .I3(mem_done),
        .I4(resetn),
        .I5(decoder_trigger_i_3_n_0),
        .O(decoder_trigger_i_1_n_0));
  LUT3 #(
    .INIT(8'h7F)) 
    decoder_trigger_i_2
       (.I0(is_beq_bne_blt_bge_bltu_bgeu),
        .I1(\cpu_state_reg[6]_0 [2]),
        .I2(alu_out_0),
        .O(is_beq_bne_blt_bge_bltu_bgeu_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair198" *) 
  LUT2 #(
    .INIT(4'hE)) 
    decoder_trigger_i_3
       (.I0(\cpu_state_reg[6]_0 [0]),
        .I1(\cpu_state_reg[6]_0 [1]),
        .O(decoder_trigger_i_3_n_0));
  FDRE decoder_trigger_reg
       (.C(clk),
        .CE(1'b1),
        .D(decoder_trigger_i_1_n_0),
        .Q(decoder_trigger_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h000000000000E000)) 
    do_waitirq_i_1
       (.I0(do_waitirq_reg_n_0),
        .I1(decoder_trigger_reg_n_0),
        .I2(instr_waitirq),
        .I3(\cpu_state_reg[6]_0 [4]),
        .I4(irq_delay_reg_0),
        .I5(do_waitirq1),
        .O(do_waitirq));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    do_waitirq_i_2
       (.I0(do_waitirq_i_3_n_0),
        .I1(do_waitirq_i_4_n_0),
        .I2(irq_pending[25]),
        .I3(irq_pending[24]),
        .I4(irq_pending[23]),
        .I5(irq_pending[22]),
        .O(do_waitirq1));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    do_waitirq_i_3
       (.I0(do_waitirq_i_5_n_0),
        .I1(irq_pending[26]),
        .I2(irq_pending[27]),
        .I3(irq_pending[28]),
        .I4(irq_pending[29]),
        .O(do_waitirq_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    do_waitirq_i_4
       (.I0(irq_pending[17]),
        .I1(irq_pending[16]),
        .I2(do_waitirq_i_6_n_0),
        .I3(do_waitirq_i_7_n_0),
        .I4(do_waitirq_i_8_n_0),
        .I5(do_waitirq_i_9_n_0),
        .O(do_waitirq_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    do_waitirq_i_5
       (.I0(irq_pending[18]),
        .I1(irq_pending[19]),
        .I2(irq_pending[20]),
        .I3(irq_pending[21]),
        .I4(irq_pending[31]),
        .I5(irq_pending[30]),
        .O(do_waitirq_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    do_waitirq_i_6
       (.I0(irq_pending[7]),
        .I1(irq_pending[6]),
        .I2(irq_pending[5]),
        .I3(irq_pending[4]),
        .O(do_waitirq_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    do_waitirq_i_7
       (.I0(irq_pending[3]),
        .I1(irq_pending[2]),
        .I2(irq_pending[1]),
        .I3(irq_pending[0]),
        .O(do_waitirq_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    do_waitirq_i_8
       (.I0(irq_pending[15]),
        .I1(irq_pending[14]),
        .I2(irq_pending[13]),
        .I3(irq_pending[12]),
        .O(do_waitirq_i_8_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    do_waitirq_i_9
       (.I0(irq_pending[11]),
        .I1(irq_pending[10]),
        .I2(irq_pending[9]),
        .I3(irq_pending[8]),
        .O(do_waitirq_i_9_n_0));
  FDRE do_waitirq_reg
       (.C(clk),
        .CE(1'b1),
        .D(do_waitirq),
        .Q(do_waitirq_reg_n_0),
        .R(trap_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair205" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \eoi[0]_i_1 
       (.I0(\irq_mask_reg_n_0_[0] ),
        .I1(\cpu_state_reg[6]_0 [4]),
        .I2(irq_pending[0]),
        .O(\eoi[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair194" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \eoi[10]_i_1 
       (.I0(\cpu_state_reg[6]_0 [4]),
        .I1(\irq_mask_reg_n_0_[10] ),
        .I2(irq_pending[10]),
        .O(\eoi[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair193" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \eoi[11]_i_1 
       (.I0(\cpu_state_reg[6]_0 [4]),
        .I1(\irq_mask_reg_n_0_[11] ),
        .I2(irq_pending[11]),
        .O(\eoi[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair195" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \eoi[12]_i_1 
       (.I0(\cpu_state_reg[6]_0 [4]),
        .I1(\irq_mask_reg_n_0_[12] ),
        .I2(irq_pending[12]),
        .O(\eoi[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair194" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \eoi[13]_i_1 
       (.I0(\cpu_state_reg[6]_0 [4]),
        .I1(\irq_mask_reg_n_0_[13] ),
        .I2(irq_pending[13]),
        .O(\eoi[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair196" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \eoi[14]_i_1 
       (.I0(\cpu_state_reg[6]_0 [4]),
        .I1(\irq_mask_reg_n_0_[14] ),
        .I2(irq_pending[14]),
        .O(\eoi[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair195" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \eoi[15]_i_1 
       (.I0(\cpu_state_reg[6]_0 [4]),
        .I1(\irq_mask_reg_n_0_[15] ),
        .I2(irq_pending[15]),
        .O(\eoi[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \eoi[16]_i_1 
       (.I0(\cpu_state_reg[6]_0 [4]),
        .I1(\irq_mask_reg_n_0_[16] ),
        .I2(irq_pending[16]),
        .O(\eoi[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \eoi[17]_i_1 
       (.I0(\cpu_state_reg[6]_0 [4]),
        .I1(irq_pending[17]),
        .I2(\irq_mask_reg_n_0_[17] ),
        .O(\eoi[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \eoi[18]_i_1 
       (.I0(\cpu_state_reg[6]_0 [4]),
        .I1(\irq_mask_reg_n_0_[18] ),
        .I2(irq_pending[18]),
        .O(\eoi[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \eoi[19]_i_1 
       (.I0(\cpu_state_reg[6]_0 [4]),
        .I1(\irq_mask_reg_n_0_[19] ),
        .I2(irq_pending[19]),
        .O(\eoi[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair205" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \eoi[1]_i_1 
       (.I0(\irq_mask_reg_n_0_[1] ),
        .I1(\cpu_state_reg[6]_0 [4]),
        .I2(irq_pending[1]),
        .O(\eoi[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \eoi[20]_i_1 
       (.I0(\cpu_state_reg[6]_0 [4]),
        .I1(\irq_mask_reg_n_0_[20] ),
        .I2(irq_pending[20]),
        .O(\eoi[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \eoi[21]_i_1 
       (.I0(\cpu_state_reg[6]_0 [4]),
        .I1(\irq_mask_reg_n_0_[21] ),
        .I2(irq_pending[21]),
        .O(\eoi[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \eoi[22]_i_1 
       (.I0(\cpu_state_reg[6]_0 [4]),
        .I1(\irq_mask_reg_n_0_[22] ),
        .I2(irq_pending[22]),
        .O(\eoi[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \eoi[23]_i_1 
       (.I0(\cpu_state_reg[6]_0 [4]),
        .I1(\irq_mask_reg_n_0_[23] ),
        .I2(irq_pending[23]),
        .O(\eoi[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \eoi[24]_i_1 
       (.I0(\cpu_state_reg[6]_0 [4]),
        .I1(\irq_mask_reg_n_0_[24] ),
        .I2(irq_pending[24]),
        .O(\eoi[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \eoi[25]_i_1 
       (.I0(\cpu_state_reg[6]_0 [4]),
        .I1(\irq_mask_reg_n_0_[25] ),
        .I2(irq_pending[25]),
        .O(\eoi[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \eoi[26]_i_1 
       (.I0(\cpu_state_reg[6]_0 [4]),
        .I1(\irq_mask_reg_n_0_[26] ),
        .I2(irq_pending[26]),
        .O(\eoi[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \eoi[27]_i_1 
       (.I0(\cpu_state_reg[6]_0 [4]),
        .I1(\irq_mask_reg_n_0_[27] ),
        .I2(irq_pending[27]),
        .O(\eoi[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \eoi[28]_i_1 
       (.I0(\cpu_state_reg[6]_0 [4]),
        .I1(\irq_mask_reg_n_0_[28] ),
        .I2(irq_pending[28]),
        .O(\eoi[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \eoi[29]_i_1 
       (.I0(\cpu_state_reg[6]_0 [4]),
        .I1(\irq_mask_reg_n_0_[29] ),
        .I2(irq_pending[29]),
        .O(\eoi[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \eoi[2]_i_1 
       (.I0(\cpu_state_reg[6]_0 [4]),
        .I1(\irq_mask_reg_n_0_[2] ),
        .I2(irq_pending[2]),
        .O(\eoi[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \eoi[30]_i_1 
       (.I0(\cpu_state_reg[6]_0 [4]),
        .I1(\irq_mask_reg_n_0_[30] ),
        .I2(irq_pending[30]),
        .O(\eoi[30]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \eoi[31]_i_1 
       (.I0(\irq_state_reg_n_0_[1] ),
        .I1(\cpu_state_reg[6]_0 [4]),
        .I2(instr_retirq),
        .I3(\cpu_state_reg[6]_0 [3]),
        .O(\eoi[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \eoi[31]_i_2 
       (.I0(\cpu_state_reg[6]_0 [4]),
        .I1(\irq_mask_reg_n_0_[31] ),
        .I2(irq_pending[31]),
        .O(\eoi[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \eoi[3]_i_1 
       (.I0(\irq_mask_reg_n_0_[3] ),
        .I1(\cpu_state_reg[6]_0 [4]),
        .I2(irq_pending[3]),
        .O(\eoi[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair191" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \eoi[4]_i_1 
       (.I0(\cpu_state_reg[6]_0 [4]),
        .I1(\irq_mask_reg_n_0_[4] ),
        .I2(irq_pending[4]),
        .O(\eoi[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \eoi[5]_i_1 
       (.I0(\cpu_state_reg[6]_0 [4]),
        .I1(\irq_mask_reg_n_0_[5] ),
        .I2(irq_pending[5]),
        .O(\eoi[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair192" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \eoi[6]_i_1 
       (.I0(\cpu_state_reg[6]_0 [4]),
        .I1(\irq_mask_reg_n_0_[6] ),
        .I2(irq_pending[6]),
        .O(\eoi[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair191" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \eoi[7]_i_1 
       (.I0(\cpu_state_reg[6]_0 [4]),
        .I1(\irq_mask_reg_n_0_[7] ),
        .I2(irq_pending[7]),
        .O(\eoi[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair193" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \eoi[8]_i_1 
       (.I0(\cpu_state_reg[6]_0 [4]),
        .I1(\irq_mask_reg_n_0_[8] ),
        .I2(irq_pending[8]),
        .O(\eoi[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair192" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \eoi[9]_i_1 
       (.I0(\cpu_state_reg[6]_0 [4]),
        .I1(\irq_mask_reg_n_0_[9] ),
        .I2(irq_pending[9]),
        .O(\eoi[9]_i_1_n_0 ));
  FDRE \eoi_reg[0] 
       (.C(clk),
        .CE(\eoi[31]_i_1_n_0 ),
        .D(\eoi[0]_i_1_n_0 ),
        .Q(eoi[0]),
        .R(trap_i_1_n_0));
  FDRE \eoi_reg[10] 
       (.C(clk),
        .CE(\eoi[31]_i_1_n_0 ),
        .D(\eoi[10]_i_1_n_0 ),
        .Q(eoi[10]),
        .R(trap_i_1_n_0));
  FDRE \eoi_reg[11] 
       (.C(clk),
        .CE(\eoi[31]_i_1_n_0 ),
        .D(\eoi[11]_i_1_n_0 ),
        .Q(eoi[11]),
        .R(trap_i_1_n_0));
  FDRE \eoi_reg[12] 
       (.C(clk),
        .CE(\eoi[31]_i_1_n_0 ),
        .D(\eoi[12]_i_1_n_0 ),
        .Q(eoi[12]),
        .R(trap_i_1_n_0));
  FDRE \eoi_reg[13] 
       (.C(clk),
        .CE(\eoi[31]_i_1_n_0 ),
        .D(\eoi[13]_i_1_n_0 ),
        .Q(eoi[13]),
        .R(trap_i_1_n_0));
  FDRE \eoi_reg[14] 
       (.C(clk),
        .CE(\eoi[31]_i_1_n_0 ),
        .D(\eoi[14]_i_1_n_0 ),
        .Q(eoi[14]),
        .R(trap_i_1_n_0));
  FDRE \eoi_reg[15] 
       (.C(clk),
        .CE(\eoi[31]_i_1_n_0 ),
        .D(\eoi[15]_i_1_n_0 ),
        .Q(eoi[15]),
        .R(trap_i_1_n_0));
  FDRE \eoi_reg[16] 
       (.C(clk),
        .CE(\eoi[31]_i_1_n_0 ),
        .D(\eoi[16]_i_1_n_0 ),
        .Q(eoi[16]),
        .R(trap_i_1_n_0));
  FDRE \eoi_reg[17] 
       (.C(clk),
        .CE(\eoi[31]_i_1_n_0 ),
        .D(\eoi[17]_i_1_n_0 ),
        .Q(eoi[17]),
        .R(trap_i_1_n_0));
  FDRE \eoi_reg[18] 
       (.C(clk),
        .CE(\eoi[31]_i_1_n_0 ),
        .D(\eoi[18]_i_1_n_0 ),
        .Q(eoi[18]),
        .R(trap_i_1_n_0));
  FDRE \eoi_reg[19] 
       (.C(clk),
        .CE(\eoi[31]_i_1_n_0 ),
        .D(\eoi[19]_i_1_n_0 ),
        .Q(eoi[19]),
        .R(trap_i_1_n_0));
  FDRE \eoi_reg[1] 
       (.C(clk),
        .CE(\eoi[31]_i_1_n_0 ),
        .D(\eoi[1]_i_1_n_0 ),
        .Q(eoi[1]),
        .R(trap_i_1_n_0));
  FDRE \eoi_reg[20] 
       (.C(clk),
        .CE(\eoi[31]_i_1_n_0 ),
        .D(\eoi[20]_i_1_n_0 ),
        .Q(eoi[20]),
        .R(trap_i_1_n_0));
  FDRE \eoi_reg[21] 
       (.C(clk),
        .CE(\eoi[31]_i_1_n_0 ),
        .D(\eoi[21]_i_1_n_0 ),
        .Q(eoi[21]),
        .R(trap_i_1_n_0));
  FDRE \eoi_reg[22] 
       (.C(clk),
        .CE(\eoi[31]_i_1_n_0 ),
        .D(\eoi[22]_i_1_n_0 ),
        .Q(eoi[22]),
        .R(trap_i_1_n_0));
  FDRE \eoi_reg[23] 
       (.C(clk),
        .CE(\eoi[31]_i_1_n_0 ),
        .D(\eoi[23]_i_1_n_0 ),
        .Q(eoi[23]),
        .R(trap_i_1_n_0));
  FDRE \eoi_reg[24] 
       (.C(clk),
        .CE(\eoi[31]_i_1_n_0 ),
        .D(\eoi[24]_i_1_n_0 ),
        .Q(eoi[24]),
        .R(trap_i_1_n_0));
  FDRE \eoi_reg[25] 
       (.C(clk),
        .CE(\eoi[31]_i_1_n_0 ),
        .D(\eoi[25]_i_1_n_0 ),
        .Q(eoi[25]),
        .R(trap_i_1_n_0));
  FDRE \eoi_reg[26] 
       (.C(clk),
        .CE(\eoi[31]_i_1_n_0 ),
        .D(\eoi[26]_i_1_n_0 ),
        .Q(eoi[26]),
        .R(trap_i_1_n_0));
  FDRE \eoi_reg[27] 
       (.C(clk),
        .CE(\eoi[31]_i_1_n_0 ),
        .D(\eoi[27]_i_1_n_0 ),
        .Q(eoi[27]),
        .R(trap_i_1_n_0));
  FDRE \eoi_reg[28] 
       (.C(clk),
        .CE(\eoi[31]_i_1_n_0 ),
        .D(\eoi[28]_i_1_n_0 ),
        .Q(eoi[28]),
        .R(trap_i_1_n_0));
  FDRE \eoi_reg[29] 
       (.C(clk),
        .CE(\eoi[31]_i_1_n_0 ),
        .D(\eoi[29]_i_1_n_0 ),
        .Q(eoi[29]),
        .R(trap_i_1_n_0));
  FDRE \eoi_reg[2] 
       (.C(clk),
        .CE(\eoi[31]_i_1_n_0 ),
        .D(\eoi[2]_i_1_n_0 ),
        .Q(eoi[2]),
        .R(trap_i_1_n_0));
  FDRE \eoi_reg[30] 
       (.C(clk),
        .CE(\eoi[31]_i_1_n_0 ),
        .D(\eoi[30]_i_1_n_0 ),
        .Q(eoi[30]),
        .R(trap_i_1_n_0));
  FDRE \eoi_reg[31] 
       (.C(clk),
        .CE(\eoi[31]_i_1_n_0 ),
        .D(\eoi[31]_i_2_n_0 ),
        .Q(eoi[31]),
        .R(trap_i_1_n_0));
  FDRE \eoi_reg[3] 
       (.C(clk),
        .CE(\eoi[31]_i_1_n_0 ),
        .D(\eoi[3]_i_1_n_0 ),
        .Q(eoi[3]),
        .R(trap_i_1_n_0));
  FDRE \eoi_reg[4] 
       (.C(clk),
        .CE(\eoi[31]_i_1_n_0 ),
        .D(\eoi[4]_i_1_n_0 ),
        .Q(eoi[4]),
        .R(trap_i_1_n_0));
  FDRE \eoi_reg[5] 
       (.C(clk),
        .CE(\eoi[31]_i_1_n_0 ),
        .D(\eoi[5]_i_1_n_0 ),
        .Q(eoi[5]),
        .R(trap_i_1_n_0));
  FDRE \eoi_reg[6] 
       (.C(clk),
        .CE(\eoi[31]_i_1_n_0 ),
        .D(\eoi[6]_i_1_n_0 ),
        .Q(eoi[6]),
        .R(trap_i_1_n_0));
  FDRE \eoi_reg[7] 
       (.C(clk),
        .CE(\eoi[31]_i_1_n_0 ),
        .D(\eoi[7]_i_1_n_0 ),
        .Q(eoi[7]),
        .R(trap_i_1_n_0));
  FDRE \eoi_reg[8] 
       (.C(clk),
        .CE(\eoi[31]_i_1_n_0 ),
        .D(\eoi[8]_i_1_n_0 ),
        .Q(eoi[8]),
        .R(trap_i_1_n_0));
  FDRE \eoi_reg[9] 
       (.C(clk),
        .CE(\eoi[31]_i_1_n_0 ),
        .D(\eoi[9]_i_1_n_0 ),
        .Q(eoi[9]),
        .R(trap_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    instr_add_i_1
       (.I0(\mem_rdata_q_reg_n_0_[13] ),
        .I1(\mem_rdata_q_reg_n_0_[14] ),
        .I2(\mem_rdata_q_reg_n_0_[12] ),
        .I3(is_sll_srl_sra_i_4_n_0),
        .O(instr_add0));
  FDRE instr_add_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_add0),
        .Q(instr_add),
        .R(trap_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    instr_addi_i_1
       (.I0(\mem_rdata_q_reg_n_0_[13] ),
        .I1(\mem_rdata_q_reg_n_0_[14] ),
        .I2(\mem_rdata_q_reg_n_0_[12] ),
        .I3(is_alu_reg_imm),
        .O(instr_addi0));
  FDRE instr_addi_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_addi0),
        .Q(instr_addi),
        .R(trap_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    instr_and_i_1
       (.I0(\mem_rdata_q_reg_n_0_[14] ),
        .I1(\mem_rdata_q_reg_n_0_[13] ),
        .I2(\mem_rdata_q_reg_n_0_[12] ),
        .I3(is_sll_srl_sra_i_4_n_0),
        .O(instr_and0));
  FDRE instr_and_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_and0),
        .Q(instr_and),
        .R(trap_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    instr_andi_i_1
       (.I0(is_alu_reg_imm),
        .I1(\mem_rdata_q_reg_n_0_[14] ),
        .I2(\mem_rdata_q_reg_n_0_[12] ),
        .I3(\mem_rdata_q_reg_n_0_[13] ),
        .O(instr_andi0));
  FDRE instr_andi_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_andi0),
        .Q(instr_andi),
        .R(trap_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    instr_auipc_i_1
       (.I0(p_13_in[1]),
        .I1(p_13_in[0]),
        .I2(p_11_in),
        .I3(instr_auipc_i_2_n_0),
        .O(instr_auipc_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT3 #(
    .INIT(8'h01)) 
    instr_auipc_i_2
       (.I0(compressed_instr_i_1_n_0),
        .I1(p_10_in),
        .I2(p_12_in),
        .O(instr_auipc_i_2_n_0));
  FDRE instr_auipc_reg
       (.C(clk),
        .CE(instr_lui0),
        .D(instr_auipc_i_1_n_0),
        .Q(instr_auipc),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    instr_beq_i_1
       (.I0(\mem_rdata_q_reg_n_0_[13] ),
        .I1(\mem_rdata_q_reg_n_0_[14] ),
        .I2(\mem_rdata_q_reg_n_0_[12] ),
        .I3(is_beq_bne_blt_bge_bltu_bgeu),
        .O(instr_beq0));
  FDRE instr_beq_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_beq0),
        .Q(instr_beq),
        .R(trap_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    instr_bge_i_1
       (.I0(\mem_rdata_q_reg_n_0_[13] ),
        .I1(\mem_rdata_q_reg_n_0_[12] ),
        .I2(\mem_rdata_q_reg_n_0_[14] ),
        .I3(is_beq_bne_blt_bge_bltu_bgeu),
        .O(instr_bge0));
  FDRE instr_bge_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_bge0),
        .Q(instr_bge),
        .R(trap_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    instr_bgeu_i_1
       (.I0(is_beq_bne_blt_bge_bltu_bgeu),
        .I1(\mem_rdata_q_reg_n_0_[14] ),
        .I2(\mem_rdata_q_reg_n_0_[12] ),
        .I3(\mem_rdata_q_reg_n_0_[13] ),
        .O(instr_bgeu0));
  FDRE instr_bgeu_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_bgeu0),
        .Q(instr_bgeu),
        .R(trap_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    instr_blt_i_1
       (.I0(\mem_rdata_q_reg_n_0_[13] ),
        .I1(\mem_rdata_q_reg_n_0_[14] ),
        .I2(\mem_rdata_q_reg_n_0_[12] ),
        .I3(is_beq_bne_blt_bge_bltu_bgeu),
        .O(instr_blt0));
  FDRE instr_blt_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_blt0),
        .Q(instr_blt),
        .R(trap_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    instr_bltu_i_1
       (.I0(is_beq_bne_blt_bge_bltu_bgeu),
        .I1(\mem_rdata_q_reg_n_0_[13] ),
        .I2(\mem_rdata_q_reg_n_0_[12] ),
        .I3(\mem_rdata_q_reg_n_0_[14] ),
        .O(instr_bltu0));
  FDRE instr_bltu_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_bltu0),
        .Q(instr_bltu),
        .R(trap_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    instr_bne_i_1
       (.I0(\mem_rdata_q_reg_n_0_[14] ),
        .I1(\mem_rdata_q_reg_n_0_[13] ),
        .I2(\mem_rdata_q_reg_n_0_[12] ),
        .I3(is_beq_bne_blt_bge_bltu_bgeu),
        .O(instr_bne0));
  FDRE instr_bne_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_bne0),
        .Q(instr_bne),
        .R(trap_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    instr_getq_i_1
       (.I0(instr_timer_i_5_n_0),
        .I1(\mem_rdata_q_reg_n_0_[27] ),
        .I2(\mem_rdata_q_reg_n_0_[25] ),
        .I3(\mem_rdata_q_reg_n_0_[26] ),
        .O(instr_slli1));
  FDRE instr_getq_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_slli1),
        .Q(instr_getq),
        .R(instr_timer_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hFFFF0008)) 
    instr_jal_i_1
       (.I0(p_5_in),
        .I1(\mem_rdata_q[0]_i_1_n_0 ),
        .I2(\mem_rdata_q[1]_i_1_n_0 ),
        .I3(\mem_axi_rdata[15] [0]),
        .I4(instr_jal_i_4_n_0),
        .O(instr_jal_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    instr_jal_i_2
       (.I0(instr_jal_i_5_n_0),
        .I1(\mem_rdata_q[11]_i_5_n_0 ),
        .I2(mem_axi_rdata[13]),
        .I3(\mem_rdata_q[11]_i_6_n_0 ),
        .I4(mem_axi_rdata[29]),
        .O(p_5_in));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    instr_jal_i_3
       (.I0(instr_jal_i_6_n_0),
        .I1(\mem_rdata_q[11]_i_5_n_0 ),
        .I2(mem_axi_rdata[14]),
        .I3(\mem_rdata_q[11]_i_6_n_0 ),
        .I4(mem_axi_rdata[30]),
        .O(\mem_axi_rdata[15] [0]));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    instr_jal_i_4
       (.I0(p_13_in[1]),
        .I1(p_11_in),
        .I2(p_13_in[0]),
        .I3(p_10_in),
        .I4(p_12_in),
        .I5(compressed_instr_i_1_n_0),
        .O(instr_jal_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    instr_jal_i_5
       (.I0(\mem_rdata_q[11]_i_7_n_0 ),
        .I1(\mem_rdata_q_reg_n_0_[13] ),
        .I2(\mem_rdata_q[11]_i_8_n_0 ),
        .I3(\mem_rdata_q_reg_n_0_[29] ),
        .I4(\mem_16bit_buffer_reg_n_0_[13] ),
        .I5(\mem_rdata_q[11]_i_9_n_0 ),
        .O(instr_jal_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    instr_jal_i_6
       (.I0(\mem_rdata_q[11]_i_7_n_0 ),
        .I1(\mem_rdata_q_reg_n_0_[14] ),
        .I2(\mem_rdata_q[11]_i_8_n_0 ),
        .I3(\mem_rdata_q_reg_n_0_[30] ),
        .I4(\mem_16bit_buffer_reg_n_0_[14] ),
        .I5(\mem_rdata_q[11]_i_9_n_0 ),
        .O(instr_jal_i_6_n_0));
  FDRE instr_jal_reg
       (.C(clk),
        .CE(instr_lui0),
        .D(instr_jal_i_1_n_0),
        .Q(instr_jal),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00800000)) 
    instr_jalr_i_1
       (.I0(instr_lui_i_4_n_0),
        .I1(compressed_instr_i_1_n_0),
        .I2(mem_rdata_q3),
        .I3(instr_jalr_i_3_n_0),
        .I4(instr_jalr_i_4_n_0),
        .I5(instr_jalr_i_5_n_0),
        .O(instr_jalr_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    instr_jalr_i_2
       (.I0(p_3_in[1]),
        .I1(p_3_in[0]),
        .I2(\mem_rdata_q[7]_i_2_n_0 ),
        .I3(\mem_rdata_q[9]_i_3_n_0 ),
        .I4(\mem_rdata_q[8]_i_2_n_0 ),
        .O(mem_rdata_q3));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    instr_jalr_i_3
       (.I0(p_13_in[0]),
        .I1(p_11_in),
        .I2(p_13_in[1]),
        .I3(p_10_in),
        .I4(p_12_in),
        .O(instr_jalr_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'h02)) 
    instr_jalr_i_4
       (.I0(\mem_axi_rdata[15] [1]),
        .I1(\mem_axi_rdata[15] [0]),
        .I2(p_5_in),
        .O(instr_jalr_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    instr_jalr_i_5
       (.I0(instr_jalr_i_6_n_0),
        .I1(p_13_in[0]),
        .I2(p_13_in[1]),
        .I3(p_11_in),
        .O(instr_jalr_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    instr_jalr_i_6
       (.I0(p_5_in),
        .I1(\mem_axi_rdata[15] [0]),
        .I2(p_10_in),
        .I3(p_12_in),
        .I4(compressed_instr_i_1_n_0),
        .I5(p_3_in[2]),
        .O(instr_jalr_i_6_n_0));
  FDRE instr_jalr_reg
       (.C(clk),
        .CE(instr_lui0),
        .D(instr_jalr_i_1_n_0),
        .Q(instr_jalr),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'h01)) 
    instr_lb_i_1
       (.I0(\mem_rdata_q_reg_n_0_[12] ),
        .I1(\mem_rdata_q_reg_n_0_[14] ),
        .I2(\mem_rdata_q_reg_n_0_[13] ),
        .O(instr_lb_i_1_n_0));
  FDRE instr_lb_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_lb_i_1_n_0),
        .Q(instr_lb),
        .R(instr_lhu_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair197" *) 
  LUT3 #(
    .INIT(8'h04)) 
    instr_lbu_i_1
       (.I0(\mem_rdata_q_reg_n_0_[12] ),
        .I1(\mem_rdata_q_reg_n_0_[14] ),
        .I2(\mem_rdata_q_reg_n_0_[13] ),
        .O(instr_lbu_i_1_n_0));
  FDRE instr_lbu_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_lbu_i_1_n_0),
        .Q(instr_lbu),
        .R(instr_lhu_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair197" *) 
  LUT3 #(
    .INIT(8'h02)) 
    instr_lh_i_1
       (.I0(\mem_rdata_q_reg_n_0_[12] ),
        .I1(\mem_rdata_q_reg_n_0_[13] ),
        .I2(\mem_rdata_q_reg_n_0_[14] ),
        .O(instr_lh_i_1_n_0));
  FDRE instr_lh_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_lh_i_1_n_0),
        .Q(instr_lh),
        .R(instr_lhu_i_1_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    instr_lhu_i_1
       (.I0(is_lb_lh_lw_lbu_lhu),
        .I1(decoder_trigger_reg_n_0),
        .I2(decoder_pseudo_trigger_reg_n_0),
        .O(instr_lhu_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'h08)) 
    instr_lhu_i_2
       (.I0(\mem_rdata_q_reg_n_0_[14] ),
        .I1(\mem_rdata_q_reg_n_0_[12] ),
        .I2(\mem_rdata_q_reg_n_0_[13] ),
        .O(instr_lhu_i_2_n_0));
  FDRE instr_lhu_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_lhu_i_2_n_0),
        .Q(instr_lhu),
        .R(instr_lhu_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFF00FFC7FF00)) 
    instr_lui_i_1
       (.I0(p_5_in),
        .I1(\mem_rdata_q[0]_i_1_n_0 ),
        .I2(\mem_rdata_q[1]_i_1_n_0 ),
        .I3(instr_lui_i_2_n_0),
        .I4(instr_lui_i_3_n_0),
        .I5(instr_lui_i_4_n_0),
        .O(instr_lui_i_1_n_0));
  LUT6 #(
    .INIT(64'hF0F0F0A800000000)) 
    instr_lui_i_2
       (.I0(compressed_instr_i_1_n_0),
        .I1(\mem_rdata_q[19]_i_4_n_0 ),
        .I2(instr_lui_i_3_n_0),
        .I3(mem_rdata_q1),
        .I4(instr_lui_i_6_n_0),
        .I5(is_alu_reg_reg_i_4_n_0),
        .O(instr_lui_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    instr_lui_i_3
       (.I0(p_12_in),
        .I1(p_10_in),
        .I2(compressed_instr_i_1_n_0),
        .I3(p_13_in[1]),
        .I4(p_13_in[0]),
        .I5(p_11_in),
        .O(instr_lui_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    instr_lui_i_4
       (.I0(\mem_rdata_q[1]_i_1_n_0 ),
        .I1(\mem_rdata_q[0]_i_1_n_0 ),
        .O(instr_lui_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    instr_lui_i_5
       (.I0(p_12_in),
        .I1(p_10_in),
        .I2(p_13_in[1]),
        .I3(p_11_in),
        .I4(p_13_in[0]),
        .I5(p_3_in[2]),
        .O(mem_rdata_q1));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'hB)) 
    instr_lui_i_6
       (.I0(\mem_axi_rdata[15] [1]),
        .I1(\mem_axi_rdata[15] [0]),
        .O(instr_lui_i_6_n_0));
  FDRE instr_lui_reg
       (.C(clk),
        .CE(instr_lui0),
        .D(instr_lui_i_1_n_0),
        .Q(instr_lui),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h10)) 
    instr_lw_i_1
       (.I0(\mem_rdata_q_reg_n_0_[12] ),
        .I1(\mem_rdata_q_reg_n_0_[14] ),
        .I2(\mem_rdata_q_reg_n_0_[13] ),
        .O(instr_lw_i_1_n_0));
  FDRE instr_lw_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_lw_i_1_n_0),
        .Q(instr_lw),
        .R(instr_lhu_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    instr_maskirq_i_1
       (.I0(\mem_rdata_q_reg_n_0_[25] ),
        .I1(\mem_rdata_q_reg_n_0_[26] ),
        .I2(\mem_rdata_q_reg_n_0_[27] ),
        .I3(instr_timer_i_5_n_0),
        .O(instr_maskirq_i_1_n_0));
  FDRE instr_maskirq_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_maskirq_i_1_n_0),
        .Q(instr_maskirq),
        .R(instr_timer_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    instr_or_i_1
       (.I0(\mem_rdata_q_reg_n_0_[13] ),
        .I1(\mem_rdata_q_reg_n_0_[14] ),
        .I2(\mem_rdata_q_reg_n_0_[12] ),
        .I3(is_sll_srl_sra_i_4_n_0),
        .O(instr_or0));
  FDRE instr_or_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_or0),
        .Q(instr_or),
        .R(trap_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    instr_ori_i_1
       (.I0(is_alu_reg_imm),
        .I1(\mem_rdata_q_reg_n_0_[13] ),
        .I2(\mem_rdata_q_reg_n_0_[12] ),
        .I3(\mem_rdata_q_reg_n_0_[14] ),
        .O(instr_ori0));
  FDRE instr_ori_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_ori0),
        .Q(instr_ori),
        .R(trap_i_1_n_0));
  LUT6 #(
    .INIT(64'h00F0002000000000)) 
    instr_rdcycle_i_1
       (.I0(instr_rdcycle_i_2_n_0),
        .I1(\mem_rdata_q_reg_n_0_[12] ),
        .I2(instr_rdinstr_i_5_n_0),
        .I3(instr_rdcycle_i_3_n_0),
        .I4(instr_rdcycle_i_4_n_0),
        .I5(instr_rdinstr_i_4_n_0),
        .O(instr_rdcycle0));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    instr_rdcycle_i_2
       (.I0(\mem_rdata_q_reg_n_0_[21] ),
        .I1(\mem_rdata_q_reg_n_0_[20] ),
        .I2(\mem_rdata_q_reg_n_0_[14] ),
        .I3(\mem_rdata_q_reg_n_0_[24] ),
        .O(instr_rdcycle_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    instr_rdcycle_i_3
       (.I0(\mem_rdata_q_reg_n_0_[28] ),
        .I1(\mem_rdata_q_reg_n_0_[29] ),
        .I2(\mem_rdata_q_reg_n_0_[15] ),
        .O(instr_rdcycle_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    instr_rdcycle_i_4
       (.I0(\mem_rdata_q_reg_n_0_[20] ),
        .I1(\mem_rdata_q_reg_n_0_[21] ),
        .I2(\mem_rdata_q_reg_n_0_[24] ),
        .I3(\mem_rdata_q_reg_n_0_[12] ),
        .I4(\mem_rdata_q_reg_n_0_[14] ),
        .O(instr_rdcycle_i_4_n_0));
  FDRE instr_rdcycle_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_rdcycle0),
        .Q(instr_rdcycle),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000000C0008)) 
    instr_rdcycleh_i_1
       (.I0(instr_rdcycleh_i_2_n_0),
        .I1(instr_rdinstrh_i_3_n_0),
        .I2(instr_rdcycleh_i_3_n_0),
        .I3(instr_rdcycleh_i_4_n_0),
        .I4(instr_rdcycleh_i_5_n_0),
        .I5(instr_rdinstr_i_2_n_0),
        .O(instr_rdcycleh0));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    instr_rdcycleh_i_2
       (.I0(\mem_rdata_q_reg_n_0_[21] ),
        .I1(\mem_rdata_q_reg_n_0_[20] ),
        .I2(\mem_rdata_q_reg_n_0_[30] ),
        .I3(\mem_rdata_q_reg_n_0_[27] ),
        .O(instr_rdcycleh_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    instr_rdcycleh_i_3
       (.I0(\mem_rdata_q_reg_n_0_[18] ),
        .I1(\mem_rdata_q_reg_n_0_[19] ),
        .I2(\mem_rdata_q_reg_n_0_[17] ),
        .I3(\mem_rdata_q_reg_n_0_[16] ),
        .O(instr_rdcycleh_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    instr_rdcycleh_i_4
       (.I0(\mem_rdata_q_reg_n_0_[14] ),
        .I1(\mem_rdata_q_reg_n_0_[24] ),
        .I2(\mem_rdata_q_reg_n_0_[26] ),
        .I3(\mem_rdata_q_reg_n_0_[25] ),
        .O(instr_rdcycleh_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    instr_rdcycleh_i_5
       (.I0(\mem_rdata_q_reg_n_0_[21] ),
        .I1(\mem_rdata_q_reg_n_0_[20] ),
        .I2(\mem_rdata_q_reg_n_0_[30] ),
        .I3(\mem_rdata_q_reg_n_0_[27] ),
        .O(instr_rdcycleh_i_5_n_0));
  FDRE instr_rdcycleh_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_rdcycleh0),
        .Q(instr_rdcycleh),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    instr_rdinstr_i_1
       (.I0(instr_rdinstr_i_2_n_0),
        .I1(instr_rdinstr_i_3_n_0),
        .I2(\mem_rdata_q_reg_n_0_[21] ),
        .I3(\mem_rdata_q_reg_n_0_[20] ),
        .I4(instr_rdinstr_i_4_n_0),
        .I5(instr_rdinstr_i_5_n_0),
        .O(instr_rdinstr0));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    instr_rdinstr_i_2
       (.I0(\mem_rdata_q_reg_n_0_[15] ),
        .I1(\mem_rdata_q_reg_n_0_[29] ),
        .I2(\mem_rdata_q_reg_n_0_[28] ),
        .I3(\mem_rdata_q_reg_n_0_[12] ),
        .O(instr_rdinstr_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'hE)) 
    instr_rdinstr_i_3
       (.I0(\mem_rdata_q_reg_n_0_[24] ),
        .I1(\mem_rdata_q_reg_n_0_[14] ),
        .O(instr_rdinstr_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    instr_rdinstr_i_4
       (.I0(\mem_rdata_q_reg_n_0_[27] ),
        .I1(\mem_rdata_q_reg_n_0_[25] ),
        .I2(\mem_rdata_q_reg_n_0_[26] ),
        .I3(\mem_rdata_q_reg_n_0_[30] ),
        .O(instr_rdinstr_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    instr_rdinstr_i_5
       (.I0(instr_rdinstrh_i_3_n_0),
        .I1(\mem_rdata_q_reg_n_0_[16] ),
        .I2(\mem_rdata_q_reg_n_0_[17] ),
        .I3(\mem_rdata_q_reg_n_0_[19] ),
        .I4(\mem_rdata_q_reg_n_0_[18] ),
        .O(instr_rdinstr_i_5_n_0));
  FDRE instr_rdinstr_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_rdinstr0),
        .Q(instr_rdinstr),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    instr_rdinstrh_i_1
       (.I0(\mem_rdata_q_reg_n_0_[15] ),
        .I1(\mem_rdata_q_reg_n_0_[29] ),
        .I2(\mem_rdata_q_reg_n_0_[28] ),
        .I3(\mem_rdata_q_reg_n_0_[12] ),
        .I4(instr_rdinstrh_i_2_n_0),
        .I5(instr_rdinstrh_i_3_n_0),
        .O(instr_rdinstrh0));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    instr_rdinstrh_i_2
       (.I0(instr_rdcycleh_i_4_n_0),
        .I1(\mem_rdata_q_reg_n_0_[20] ),
        .I2(\mem_rdata_q_reg_n_0_[21] ),
        .I3(\mem_rdata_q_reg_n_0_[30] ),
        .I4(\mem_rdata_q_reg_n_0_[27] ),
        .I5(instr_rdcycleh_i_3_n_0),
        .O(instr_rdinstrh_i_2_n_0));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    instr_rdinstrh_i_3
       (.I0(\mem_rdata_q_reg_n_0_[22] ),
        .I1(\mem_rdata_q_reg_n_0_[23] ),
        .I2(\mem_rdata_q_reg_n_0_[13] ),
        .I3(\mem_rdata_q_reg_n_0_[31] ),
        .I4(instr_rdinstrh_i_4_n_0),
        .I5(instr_timer_i_3_n_0),
        .O(instr_rdinstrh_i_3_n_0));
  LUT4 #(
    .INIT(16'h4000)) 
    instr_rdinstrh_i_4
       (.I0(\mem_rdata_q_reg_n_0_[3] ),
        .I1(\mem_rdata_q_reg_n_0_[4] ),
        .I2(\mem_rdata_q_reg_n_0_[6] ),
        .I3(\mem_rdata_q_reg_n_0_[5] ),
        .O(instr_rdinstrh_i_4_n_0));
  FDRE instr_rdinstrh_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_rdinstrh0),
        .Q(instr_rdinstrh),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    instr_retirq_i_1
       (.I0(instr_retirq_i_2_n_0),
        .I1(p_13_in[0]),
        .I2(instr_retirq_i_3_n_0),
        .I3(instr_retirq_i_4_n_0),
        .I4(instr_retirq_i_5_n_0),
        .O(instr_retirq0));
  LUT5 #(
    .INIT(32'h00000010)) 
    instr_retirq_i_2
       (.I0(\mem_rdata_q[29]_i_5_n_0 ),
        .I1(\mem_rdata_q[28]_i_5_n_0 ),
        .I2(instr_auipc_i_2_n_0),
        .I3(instr_waitirq_i_3_n_0),
        .I4(instr_waitirq_i_2_n_0),
        .O(instr_retirq_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT3 #(
    .INIT(8'h01)) 
    instr_retirq_i_3
       (.I0(\mem_rdata_q[31]_i_12_n_0 ),
        .I1(p_13_in[1]),
        .I2(p_11_in),
        .O(instr_retirq_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    instr_retirq_i_4
       (.I0(\mem_rdata_q[11]_i_5_n_0 ),
        .I1(mem_axi_rdata[30]),
        .I2(instr_retirq_i_6_n_0),
        .I3(mem_axi_rdata[14]),
        .I4(instr_retirq_i_7_n_0),
        .O(instr_retirq_i_4_n_0));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    instr_retirq_i_5
       (.I0(\mem_rdata_q[11]_i_5_n_0 ),
        .I1(mem_axi_rdata[26]),
        .I2(instr_retirq_i_6_n_0),
        .I3(mem_axi_rdata[10]),
        .I4(instr_retirq_i_8_n_0),
        .O(instr_retirq_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT5 #(
    .INIT(32'h00008880)) 
    instr_retirq_i_6
       (.I0(mem_la_secondword),
        .I1(mem_valid),
        .I2(mem_axi_rvalid),
        .I3(mem_axi_bvalid),
        .I4(mem_la_use_prefetched_high_word),
        .O(instr_retirq_i_6_n_0));
  LUT5 #(
    .INIT(32'hFF404040)) 
    instr_retirq_i_7
       (.I0(\mem_rdata_q[6]_i_5_n_0 ),
        .I1(mem_la_secondword),
        .I2(\mem_rdata_q_reg_n_0_[14] ),
        .I3(\mem_rdata_q_reg_n_0_[30] ),
        .I4(\mem_rdata_q[11]_i_7_n_0 ),
        .O(instr_retirq_i_7_n_0));
  LUT5 #(
    .INIT(32'hFF404040)) 
    instr_retirq_i_8
       (.I0(\mem_rdata_q[6]_i_5_n_0 ),
        .I1(mem_la_secondword),
        .I2(\mem_rdata_q_reg_n_0_[10] ),
        .I3(\mem_rdata_q_reg_n_0_[26] ),
        .I4(\mem_rdata_q[11]_i_7_n_0 ),
        .O(instr_retirq_i_8_n_0));
  FDRE instr_retirq_reg
       (.C(clk),
        .CE(instr_lui0),
        .D(instr_retirq0),
        .Q(instr_retirq),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    instr_sb_i_1
       (.I0(\mem_rdata_q_reg_n_0_[13] ),
        .I1(\mem_rdata_q_reg_n_0_[14] ),
        .I2(\mem_rdata_q_reg_n_0_[12] ),
        .I3(is_sb_sh_sw),
        .O(instr_sb0));
  FDRE instr_sb_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_sb0),
        .Q(instr_sb),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    instr_setq_i_1
       (.I0(\mem_rdata_q_reg_n_0_[25] ),
        .I1(\mem_rdata_q_reg_n_0_[26] ),
        .I2(\mem_rdata_q_reg_n_0_[27] ),
        .I3(instr_timer_i_5_n_0),
        .O(instr_setq_i_1_n_0));
  FDRE instr_setq_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_setq_i_1_n_0),
        .Q(instr_setq),
        .R(instr_timer_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    instr_sh_i_1
       (.I0(\mem_rdata_q_reg_n_0_[14] ),
        .I1(\mem_rdata_q_reg_n_0_[13] ),
        .I2(\mem_rdata_q_reg_n_0_[12] ),
        .I3(is_sb_sh_sw),
        .O(instr_sh0));
  FDRE instr_sh_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_sh0),
        .Q(instr_sh),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    instr_sll_i_1
       (.I0(\mem_rdata_q_reg_n_0_[14] ),
        .I1(\mem_rdata_q_reg_n_0_[13] ),
        .I2(\mem_rdata_q_reg_n_0_[12] ),
        .I3(is_sll_srl_sra_i_4_n_0),
        .O(instr_sll0));
  FDRE instr_sll_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_sll0),
        .Q(instr_sll),
        .R(trap_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h00080000)) 
    instr_slli_i_1
       (.I0(is_alu_reg_imm),
        .I1(\mem_rdata_q_reg_n_0_[12] ),
        .I2(\mem_rdata_q_reg_n_0_[13] ),
        .I3(\mem_rdata_q_reg_n_0_[14] ),
        .I4(instr_slli1),
        .O(instr_slli0));
  FDRE instr_slli_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_slli0),
        .Q(instr_slli),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    instr_slt_i_1
       (.I0(\mem_rdata_q_reg_n_0_[13] ),
        .I1(\mem_rdata_q_reg_n_0_[14] ),
        .I2(\mem_rdata_q_reg_n_0_[12] ),
        .I3(is_sll_srl_sra_i_4_n_0),
        .O(instr_slt0));
  FDRE instr_slt_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_slt0),
        .Q(instr_slt),
        .R(trap_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    instr_slti_i_1
       (.I0(\mem_rdata_q_reg_n_0_[13] ),
        .I1(\mem_rdata_q_reg_n_0_[14] ),
        .I2(\mem_rdata_q_reg_n_0_[12] ),
        .I3(is_alu_reg_imm),
        .O(instr_slti0));
  FDRE instr_slti_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_slti0),
        .Q(instr_slti),
        .R(trap_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    instr_sltiu_i_1
       (.I0(\mem_rdata_q_reg_n_0_[14] ),
        .I1(is_alu_reg_imm),
        .I2(\mem_rdata_q_reg_n_0_[12] ),
        .I3(\mem_rdata_q_reg_n_0_[13] ),
        .O(instr_sltiu0));
  FDRE instr_sltiu_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_sltiu0),
        .Q(instr_sltiu),
        .R(trap_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    instr_sltu_i_1
       (.I0(\mem_rdata_q_reg_n_0_[14] ),
        .I1(\mem_rdata_q_reg_n_0_[13] ),
        .I2(\mem_rdata_q_reg_n_0_[12] ),
        .I3(is_sll_srl_sra_i_4_n_0),
        .O(instr_sltu0));
  FDRE instr_sltu_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_sltu0),
        .Q(instr_sltu),
        .R(trap_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    instr_sra_i_1
       (.I0(instr_lhu_i_2_n_0),
        .I1(instr_rdinstr_i_4_n_0),
        .I2(\mem_rdata_q_reg_n_0_[31] ),
        .I3(\mem_rdata_q_reg_n_0_[29] ),
        .I4(\mem_rdata_q_reg_n_0_[28] ),
        .I5(is_alu_reg_reg),
        .O(instr_sra0));
  FDRE instr_sra_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_sra0),
        .Q(instr_sra),
        .R(trap_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    instr_srai_i_1
       (.I0(instr_lhu_i_2_n_0),
        .I1(instr_rdinstr_i_4_n_0),
        .I2(\mem_rdata_q_reg_n_0_[31] ),
        .I3(\mem_rdata_q_reg_n_0_[29] ),
        .I4(\mem_rdata_q_reg_n_0_[28] ),
        .I5(is_alu_reg_imm),
        .O(instr_srai0));
  FDRE instr_srai_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_srai0),
        .Q(instr_srai),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    instr_srl_i_1
       (.I0(\mem_rdata_q_reg_n_0_[13] ),
        .I1(\mem_rdata_q_reg_n_0_[12] ),
        .I2(\mem_rdata_q_reg_n_0_[14] ),
        .I3(is_sll_srl_sra_i_4_n_0),
        .O(instr_srl0));
  FDRE instr_srl_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_srl0),
        .Q(instr_srl),
        .R(trap_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    instr_srli_i_1
       (.I0(is_alu_reg_imm),
        .I1(\mem_rdata_q_reg_n_0_[14] ),
        .I2(\mem_rdata_q_reg_n_0_[12] ),
        .I3(\mem_rdata_q_reg_n_0_[13] ),
        .I4(instr_slli1),
        .O(instr_srli0));
  FDRE instr_srli_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_srli0),
        .Q(instr_srli),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    instr_sub_i_1
       (.I0(is_alu_reg_reg),
        .I1(instr_lb_i_1_n_0),
        .I2(\mem_rdata_q_reg_n_0_[28] ),
        .I3(\mem_rdata_q_reg_n_0_[29] ),
        .I4(\mem_rdata_q_reg_n_0_[31] ),
        .I5(instr_rdinstr_i_4_n_0),
        .O(instr_sub0));
  FDRE instr_sub_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_sub0),
        .Q(instr_sub),
        .R(trap_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    instr_sw_i_1
       (.I0(\mem_rdata_q_reg_n_0_[13] ),
        .I1(\mem_rdata_q_reg_n_0_[14] ),
        .I2(\mem_rdata_q_reg_n_0_[12] ),
        .I3(is_sb_sh_sw),
        .O(instr_sw0));
  FDRE instr_sw_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_sw0),
        .Q(instr_sw),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000FFFDFFFF)) 
    instr_timer_i_1
       (.I0(instr_timer_i_3_n_0),
        .I1(\mem_rdata_q_reg_n_0_[6] ),
        .I2(\mem_rdata_q_reg_n_0_[4] ),
        .I3(\mem_rdata_q_reg_n_0_[5] ),
        .I4(\mem_rdata_q_reg_n_0_[3] ),
        .I5(instr_timer_i_4_n_0),
        .O(instr_timer_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    instr_timer_i_2
       (.I0(\mem_rdata_q_reg_n_0_[25] ),
        .I1(\mem_rdata_q_reg_n_0_[27] ),
        .I2(\mem_rdata_q_reg_n_0_[26] ),
        .I3(instr_timer_i_5_n_0),
        .O(instr_timer_i_2_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    instr_timer_i_3
       (.I0(\mem_rdata_q_reg_n_0_[2] ),
        .I1(\mem_rdata_q_reg_n_0_[0] ),
        .I2(\mem_rdata_q_reg_n_0_[1] ),
        .O(instr_timer_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'hB)) 
    instr_timer_i_4
       (.I0(decoder_pseudo_trigger_reg_n_0),
        .I1(decoder_trigger_reg_n_0),
        .O(instr_timer_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    instr_timer_i_5
       (.I0(\mem_rdata_q_reg_n_0_[31] ),
        .I1(\mem_rdata_q_reg_n_0_[29] ),
        .I2(\mem_rdata_q_reg_n_0_[28] ),
        .I3(\mem_rdata_q_reg_n_0_[30] ),
        .O(instr_timer_i_5_n_0));
  FDRE instr_timer_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_timer_i_2_n_0),
        .Q(instr_timer),
        .R(instr_timer_i_1_n_0));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    instr_waitirq_i_1
       (.I0(\mem_rdata_q[29]_i_5_n_0 ),
        .I1(\mem_rdata_q[28]_i_5_n_0 ),
        .I2(instr_waitirq_i_2_n_0),
        .I3(instr_waitirq_i_3_n_0),
        .I4(instr_auipc_i_2_n_0),
        .I5(instr_waitirq_i_4_n_0),
        .O(instr_waitirq0));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    instr_waitirq_i_2
       (.I0(\mem_rdata_q[11]_i_5_n_0 ),
        .I1(mem_axi_rdata[25]),
        .I2(instr_retirq_i_6_n_0),
        .I3(mem_axi_rdata[9]),
        .I4(instr_waitirq_i_5_n_0),
        .O(instr_waitirq_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    instr_waitirq_i_3
       (.I0(\mem_rdata_q[11]_i_5_n_0 ),
        .I1(mem_axi_rdata[27]),
        .I2(instr_retirq_i_6_n_0),
        .I3(mem_axi_rdata[11]),
        .I4(instr_waitirq_i_6_n_0),
        .O(instr_waitirq_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    instr_waitirq_i_4
       (.I0(instr_retirq_i_5_n_0),
        .I1(instr_retirq_i_4_n_0),
        .I2(instr_retirq_i_3_n_0),
        .I3(p_13_in[0]),
        .O(instr_waitirq_i_4_n_0));
  LUT5 #(
    .INIT(32'hFF404040)) 
    instr_waitirq_i_5
       (.I0(\mem_rdata_q[6]_i_5_n_0 ),
        .I1(mem_la_secondword),
        .I2(\mem_rdata_q_reg_n_0_[9] ),
        .I3(\mem_rdata_q_reg_n_0_[25] ),
        .I4(\mem_rdata_q[11]_i_7_n_0 ),
        .O(instr_waitirq_i_5_n_0));
  LUT5 #(
    .INIT(32'hFF404040)) 
    instr_waitirq_i_6
       (.I0(\mem_rdata_q[6]_i_5_n_0 ),
        .I1(mem_la_secondword),
        .I2(\mem_rdata_q_reg_n_0_[11] ),
        .I3(\mem_rdata_q_reg_n_0_[27] ),
        .I4(\mem_rdata_q[11]_i_7_n_0 ),
        .O(instr_waitirq_i_6_n_0));
  FDRE instr_waitirq_reg
       (.C(clk),
        .CE(instr_lui0),
        .D(instr_waitirq0),
        .Q(instr_waitirq),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    instr_xor_i_1
       (.I0(\mem_rdata_q_reg_n_0_[13] ),
        .I1(\mem_rdata_q_reg_n_0_[14] ),
        .I2(\mem_rdata_q_reg_n_0_[12] ),
        .I3(is_sll_srl_sra_i_4_n_0),
        .O(instr_xor0));
  FDRE instr_xor_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_xor0),
        .Q(instr_xor),
        .R(trap_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    instr_xori_i_1
       (.I0(\mem_rdata_q_reg_n_0_[13] ),
        .I1(\mem_rdata_q_reg_n_0_[14] ),
        .I2(\mem_rdata_q_reg_n_0_[12] ),
        .I3(is_alu_reg_imm),
        .O(instr_xori0));
  FDRE instr_xori_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_xori0),
        .Q(instr_xori),
        .R(trap_i_1_n_0));
  FDRE irq_active_reg
       (.C(clk),
        .CE(1'b1),
        .D(irq_active_reg_1),
        .Q(irq_active_reg_0),
        .R(trap_i_1_n_0));
  FDRE irq_delay_reg
       (.C(clk),
        .CE(irq_delay),
        .D(irq_active_reg_0),
        .Q(irq_delay_reg_n_0),
        .R(trap_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair224" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \irq_mask[0]_i_1 
       (.I0(\timer[31]_i_5_n_0 ),
        .I1(reg_out1[0]),
        .O(\irq_mask[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \irq_mask[10]_i_1 
       (.I0(\timer[31]_i_5_n_0 ),
        .I1(reg_out1[10]),
        .O(\irq_mask[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \irq_mask[11]_i_1 
       (.I0(\timer[31]_i_5_n_0 ),
        .I1(reg_out1[11]),
        .O(\irq_mask[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \irq_mask[12]_i_1 
       (.I0(\timer[31]_i_5_n_0 ),
        .I1(reg_out1[12]),
        .O(\irq_mask[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \irq_mask[13]_i_1 
       (.I0(\timer[31]_i_5_n_0 ),
        .I1(reg_out1[13]),
        .O(\irq_mask[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \irq_mask[14]_i_1 
       (.I0(\timer[31]_i_5_n_0 ),
        .I1(reg_out1[14]),
        .O(\irq_mask[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \irq_mask[15]_i_1 
       (.I0(\timer[31]_i_5_n_0 ),
        .I1(reg_out1[15]),
        .O(\irq_mask[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair220" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \irq_mask[16]_i_1 
       (.I0(\timer[31]_i_5_n_0 ),
        .I1(reg_out1[16]),
        .O(\irq_mask[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair220" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \irq_mask[17]_i_1 
       (.I0(\timer[31]_i_5_n_0 ),
        .I1(reg_out1[17]),
        .O(\irq_mask[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair219" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \irq_mask[18]_i_1 
       (.I0(\timer[31]_i_5_n_0 ),
        .I1(reg_out1[18]),
        .O(\irq_mask[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair219" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \irq_mask[19]_i_1 
       (.I0(\timer[31]_i_5_n_0 ),
        .I1(reg_out1[19]),
        .O(\irq_mask[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair224" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \irq_mask[1]_i_1 
       (.I0(\timer[31]_i_5_n_0 ),
        .I1(reg_out1[1]),
        .O(\irq_mask[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair218" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \irq_mask[20]_i_1 
       (.I0(\timer[31]_i_5_n_0 ),
        .I1(reg_out1[20]),
        .O(\irq_mask[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair218" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \irq_mask[21]_i_1 
       (.I0(\timer[31]_i_5_n_0 ),
        .I1(reg_out1[21]),
        .O(\irq_mask[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair217" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \irq_mask[22]_i_1 
       (.I0(\timer[31]_i_5_n_0 ),
        .I1(reg_out1[22]),
        .O(\irq_mask[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair217" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \irq_mask[23]_i_1 
       (.I0(\timer[31]_i_5_n_0 ),
        .I1(reg_out1[23]),
        .O(\irq_mask[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair216" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \irq_mask[24]_i_1 
       (.I0(\timer[31]_i_5_n_0 ),
        .I1(reg_out1[24]),
        .O(\irq_mask[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair216" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \irq_mask[25]_i_1 
       (.I0(\timer[31]_i_5_n_0 ),
        .I1(reg_out1[25]),
        .O(\irq_mask[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair215" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \irq_mask[26]_i_1 
       (.I0(\timer[31]_i_5_n_0 ),
        .I1(reg_out1[26]),
        .O(\irq_mask[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair215" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \irq_mask[27]_i_1 
       (.I0(\timer[31]_i_5_n_0 ),
        .I1(reg_out1[27]),
        .O(\irq_mask[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair214" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \irq_mask[28]_i_1 
       (.I0(\timer[31]_i_5_n_0 ),
        .I1(reg_out1[28]),
        .O(\irq_mask[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair214" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \irq_mask[29]_i_1 
       (.I0(\timer[31]_i_5_n_0 ),
        .I1(reg_out1[29]),
        .O(\irq_mask[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair223" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \irq_mask[2]_i_1 
       (.I0(\timer[31]_i_5_n_0 ),
        .I1(reg_out1[2]),
        .O(\irq_mask[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair213" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \irq_mask[30]_i_1 
       (.I0(\timer[31]_i_5_n_0 ),
        .I1(reg_out1[30]),
        .O(\irq_mask[30]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \irq_mask[31]_i_1 
       (.I0(\cpu_state_reg[6]_0 [3]),
        .I1(instr_maskirq),
        .O(irq_mask));
  (* SOFT_HLUTNM = "soft_lutpair213" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \irq_mask[31]_i_2 
       (.I0(\timer[31]_i_5_n_0 ),
        .I1(reg_out1[31]),
        .O(\irq_mask[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair223" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \irq_mask[3]_i_1 
       (.I0(\timer[31]_i_5_n_0 ),
        .I1(reg_out1[3]),
        .O(\irq_mask[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair222" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \irq_mask[4]_i_1 
       (.I0(\timer[31]_i_5_n_0 ),
        .I1(reg_out1[4]),
        .O(\irq_mask[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair222" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \irq_mask[5]_i_1 
       (.I0(\timer[31]_i_5_n_0 ),
        .I1(reg_out1[5]),
        .O(\irq_mask[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair221" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \irq_mask[6]_i_1 
       (.I0(\timer[31]_i_5_n_0 ),
        .I1(reg_out1[6]),
        .O(\irq_mask[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair221" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \irq_mask[7]_i_1 
       (.I0(\timer[31]_i_5_n_0 ),
        .I1(reg_out1[7]),
        .O(\irq_mask[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \irq_mask[8]_i_1 
       (.I0(\timer[31]_i_5_n_0 ),
        .I1(reg_out1[8]),
        .O(\irq_mask[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \irq_mask[9]_i_1 
       (.I0(\timer[31]_i_5_n_0 ),
        .I1(reg_out1[9]),
        .O(\irq_mask[9]_i_1_n_0 ));
  FDSE \irq_mask_reg[0] 
       (.C(clk),
        .CE(irq_mask),
        .D(\irq_mask[0]_i_1_n_0 ),
        .Q(\irq_mask_reg_n_0_[0] ),
        .S(trap_i_1_n_0));
  FDSE \irq_mask_reg[10] 
       (.C(clk),
        .CE(irq_mask),
        .D(\irq_mask[10]_i_1_n_0 ),
        .Q(\irq_mask_reg_n_0_[10] ),
        .S(trap_i_1_n_0));
  FDSE \irq_mask_reg[11] 
       (.C(clk),
        .CE(irq_mask),
        .D(\irq_mask[11]_i_1_n_0 ),
        .Q(\irq_mask_reg_n_0_[11] ),
        .S(trap_i_1_n_0));
  FDSE \irq_mask_reg[12] 
       (.C(clk),
        .CE(irq_mask),
        .D(\irq_mask[12]_i_1_n_0 ),
        .Q(\irq_mask_reg_n_0_[12] ),
        .S(trap_i_1_n_0));
  FDSE \irq_mask_reg[13] 
       (.C(clk),
        .CE(irq_mask),
        .D(\irq_mask[13]_i_1_n_0 ),
        .Q(\irq_mask_reg_n_0_[13] ),
        .S(trap_i_1_n_0));
  FDSE \irq_mask_reg[14] 
       (.C(clk),
        .CE(irq_mask),
        .D(\irq_mask[14]_i_1_n_0 ),
        .Q(\irq_mask_reg_n_0_[14] ),
        .S(trap_i_1_n_0));
  FDSE \irq_mask_reg[15] 
       (.C(clk),
        .CE(irq_mask),
        .D(\irq_mask[15]_i_1_n_0 ),
        .Q(\irq_mask_reg_n_0_[15] ),
        .S(trap_i_1_n_0));
  FDSE \irq_mask_reg[16] 
       (.C(clk),
        .CE(irq_mask),
        .D(\irq_mask[16]_i_1_n_0 ),
        .Q(\irq_mask_reg_n_0_[16] ),
        .S(trap_i_1_n_0));
  FDSE \irq_mask_reg[17] 
       (.C(clk),
        .CE(irq_mask),
        .D(\irq_mask[17]_i_1_n_0 ),
        .Q(\irq_mask_reg_n_0_[17] ),
        .S(trap_i_1_n_0));
  FDSE \irq_mask_reg[18] 
       (.C(clk),
        .CE(irq_mask),
        .D(\irq_mask[18]_i_1_n_0 ),
        .Q(\irq_mask_reg_n_0_[18] ),
        .S(trap_i_1_n_0));
  FDSE \irq_mask_reg[19] 
       (.C(clk),
        .CE(irq_mask),
        .D(\irq_mask[19]_i_1_n_0 ),
        .Q(\irq_mask_reg_n_0_[19] ),
        .S(trap_i_1_n_0));
  FDSE \irq_mask_reg[1] 
       (.C(clk),
        .CE(irq_mask),
        .D(\irq_mask[1]_i_1_n_0 ),
        .Q(\irq_mask_reg_n_0_[1] ),
        .S(trap_i_1_n_0));
  FDSE \irq_mask_reg[20] 
       (.C(clk),
        .CE(irq_mask),
        .D(\irq_mask[20]_i_1_n_0 ),
        .Q(\irq_mask_reg_n_0_[20] ),
        .S(trap_i_1_n_0));
  FDSE \irq_mask_reg[21] 
       (.C(clk),
        .CE(irq_mask),
        .D(\irq_mask[21]_i_1_n_0 ),
        .Q(\irq_mask_reg_n_0_[21] ),
        .S(trap_i_1_n_0));
  FDSE \irq_mask_reg[22] 
       (.C(clk),
        .CE(irq_mask),
        .D(\irq_mask[22]_i_1_n_0 ),
        .Q(\irq_mask_reg_n_0_[22] ),
        .S(trap_i_1_n_0));
  FDSE \irq_mask_reg[23] 
       (.C(clk),
        .CE(irq_mask),
        .D(\irq_mask[23]_i_1_n_0 ),
        .Q(\irq_mask_reg_n_0_[23] ),
        .S(trap_i_1_n_0));
  FDSE \irq_mask_reg[24] 
       (.C(clk),
        .CE(irq_mask),
        .D(\irq_mask[24]_i_1_n_0 ),
        .Q(\irq_mask_reg_n_0_[24] ),
        .S(trap_i_1_n_0));
  FDSE \irq_mask_reg[25] 
       (.C(clk),
        .CE(irq_mask),
        .D(\irq_mask[25]_i_1_n_0 ),
        .Q(\irq_mask_reg_n_0_[25] ),
        .S(trap_i_1_n_0));
  FDSE \irq_mask_reg[26] 
       (.C(clk),
        .CE(irq_mask),
        .D(\irq_mask[26]_i_1_n_0 ),
        .Q(\irq_mask_reg_n_0_[26] ),
        .S(trap_i_1_n_0));
  FDSE \irq_mask_reg[27] 
       (.C(clk),
        .CE(irq_mask),
        .D(\irq_mask[27]_i_1_n_0 ),
        .Q(\irq_mask_reg_n_0_[27] ),
        .S(trap_i_1_n_0));
  FDSE \irq_mask_reg[28] 
       (.C(clk),
        .CE(irq_mask),
        .D(\irq_mask[28]_i_1_n_0 ),
        .Q(\irq_mask_reg_n_0_[28] ),
        .S(trap_i_1_n_0));
  FDSE \irq_mask_reg[29] 
       (.C(clk),
        .CE(irq_mask),
        .D(\irq_mask[29]_i_1_n_0 ),
        .Q(\irq_mask_reg_n_0_[29] ),
        .S(trap_i_1_n_0));
  FDSE \irq_mask_reg[2] 
       (.C(clk),
        .CE(irq_mask),
        .D(\irq_mask[2]_i_1_n_0 ),
        .Q(\irq_mask_reg_n_0_[2] ),
        .S(trap_i_1_n_0));
  FDSE \irq_mask_reg[30] 
       (.C(clk),
        .CE(irq_mask),
        .D(\irq_mask[30]_i_1_n_0 ),
        .Q(\irq_mask_reg_n_0_[30] ),
        .S(trap_i_1_n_0));
  FDSE \irq_mask_reg[31] 
       (.C(clk),
        .CE(irq_mask),
        .D(\irq_mask[31]_i_2_n_0 ),
        .Q(\irq_mask_reg_n_0_[31] ),
        .S(trap_i_1_n_0));
  FDSE \irq_mask_reg[3] 
       (.C(clk),
        .CE(irq_mask),
        .D(\irq_mask[3]_i_1_n_0 ),
        .Q(\irq_mask_reg_n_0_[3] ),
        .S(trap_i_1_n_0));
  FDSE \irq_mask_reg[4] 
       (.C(clk),
        .CE(irq_mask),
        .D(\irq_mask[4]_i_1_n_0 ),
        .Q(\irq_mask_reg_n_0_[4] ),
        .S(trap_i_1_n_0));
  FDSE \irq_mask_reg[5] 
       (.C(clk),
        .CE(irq_mask),
        .D(\irq_mask[5]_i_1_n_0 ),
        .Q(\irq_mask_reg_n_0_[5] ),
        .S(trap_i_1_n_0));
  FDSE \irq_mask_reg[6] 
       (.C(clk),
        .CE(irq_mask),
        .D(\irq_mask[6]_i_1_n_0 ),
        .Q(\irq_mask_reg_n_0_[6] ),
        .S(trap_i_1_n_0));
  FDSE \irq_mask_reg[7] 
       (.C(clk),
        .CE(irq_mask),
        .D(\irq_mask[7]_i_1_n_0 ),
        .Q(\irq_mask_reg_n_0_[7] ),
        .S(trap_i_1_n_0));
  FDSE \irq_mask_reg[8] 
       (.C(clk),
        .CE(irq_mask),
        .D(\irq_mask[8]_i_1_n_0 ),
        .Q(\irq_mask_reg_n_0_[8] ),
        .S(trap_i_1_n_0));
  FDSE \irq_mask_reg[9] 
       (.C(clk),
        .CE(irq_mask),
        .D(\irq_mask[9]_i_1_n_0 ),
        .Q(\irq_mask_reg_n_0_[9] ),
        .S(trap_i_1_n_0));
  LUT6 #(
    .INIT(64'hF0E0F0A0F0A0F0A0)) 
    \irq_pending[0]_i_1 
       (.I0(irq[0]),
        .I1(\timer[31]_i_3_n_0 ),
        .I2(\irq_pending[0]_i_2_n_0 ),
        .I3(irq_pending[0]),
        .I4(\irq_pending[0]_i_3_n_0 ),
        .I5(\irq_pending[0]_i_4_n_0 ),
        .O(next_irq_pending[0]));
  LUT5 #(
    .INIT(32'h00010000)) 
    \irq_pending[0]_i_10 
       (.I0(\timer_reg_n_0_[28] ),
        .I1(\timer_reg_n_0_[29] ),
        .I2(\timer_reg_n_0_[30] ),
        .I3(\timer_reg_n_0_[31] ),
        .I4(\irq_pending[0]_i_11_n_0 ),
        .O(\irq_pending[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \irq_pending[0]_i_11 
       (.I0(\timer_reg_n_0_[27] ),
        .I1(\timer_reg_n_0_[26] ),
        .I2(\timer_reg_n_0_[25] ),
        .I3(\timer_reg_n_0_[24] ),
        .O(\irq_pending[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFDFFFF)) 
    \irq_pending[0]_i_2 
       (.I0(\cpu_state_reg[6]_0 [4]),
        .I1(\irq_state_reg[0]_0 ),
        .I2(latched_store_reg_0),
        .I3(latched_branch_reg_0),
        .I4(\irq_state_reg_n_0_[1] ),
        .I5(\irq_mask_reg_n_0_[0] ),
        .O(\irq_pending[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \irq_pending[0]_i_3 
       (.I0(\irq_pending[0]_i_5_n_0 ),
        .I1(\timer_reg_n_0_[1] ),
        .I2(\timer_reg_n_0_[0] ),
        .I3(\irq_pending[0]_i_6_n_0 ),
        .I4(\irq_pending[0]_i_7_n_0 ),
        .I5(\irq_pending[0]_i_8_n_0 ),
        .O(\irq_pending[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \irq_pending[0]_i_4 
       (.I0(\irq_pending[0]_i_9_n_0 ),
        .I1(\timer_reg_n_0_[17] ),
        .I2(\timer_reg_n_0_[16] ),
        .I3(\timer_reg_n_0_[19] ),
        .I4(\timer_reg_n_0_[18] ),
        .I5(\irq_pending[0]_i_10_n_0 ),
        .O(\irq_pending[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \irq_pending[0]_i_5 
       (.I0(\timer_reg_n_0_[7] ),
        .I1(\timer_reg_n_0_[6] ),
        .I2(\timer_reg_n_0_[5] ),
        .I3(\timer_reg_n_0_[4] ),
        .O(\irq_pending[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \irq_pending[0]_i_6 
       (.I0(\timer_reg_n_0_[2] ),
        .I1(\timer_reg_n_0_[3] ),
        .O(\irq_pending[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \irq_pending[0]_i_7 
       (.I0(\timer_reg_n_0_[11] ),
        .I1(\timer_reg_n_0_[10] ),
        .I2(\timer_reg_n_0_[9] ),
        .I3(\timer_reg_n_0_[8] ),
        .O(\irq_pending[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \irq_pending[0]_i_8 
       (.I0(\timer_reg_n_0_[15] ),
        .I1(\timer_reg_n_0_[14] ),
        .I2(\timer_reg_n_0_[13] ),
        .I3(\timer_reg_n_0_[12] ),
        .O(\irq_pending[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \irq_pending[0]_i_9 
       (.I0(\timer_reg_n_0_[23] ),
        .I1(\timer_reg_n_0_[22] ),
        .I2(\timer_reg_n_0_[21] ),
        .I3(\timer_reg_n_0_[20] ),
        .O(\irq_pending[0]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT4 #(
    .INIT(16'hEEE0)) 
    \irq_pending[10]_i_1 
       (.I0(\irq_pending[31]_i_2_n_0 ),
        .I1(\irq_mask_reg_n_0_[10] ),
        .I2(irq[10]),
        .I3(irq_pending[10]),
        .O(next_irq_pending[10]));
  LUT4 #(
    .INIT(16'hEEE0)) 
    \irq_pending[11]_i_1 
       (.I0(\irq_pending[31]_i_2_n_0 ),
        .I1(\irq_mask_reg_n_0_[11] ),
        .I2(irq[11]),
        .I3(irq_pending[11]),
        .O(next_irq_pending[11]));
  LUT4 #(
    .INIT(16'hEEE0)) 
    \irq_pending[12]_i_1 
       (.I0(\irq_pending[31]_i_2_n_0 ),
        .I1(\irq_mask_reg_n_0_[12] ),
        .I2(irq[12]),
        .I3(irq_pending[12]),
        .O(next_irq_pending[12]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT4 #(
    .INIT(16'hEEE0)) 
    \irq_pending[13]_i_1 
       (.I0(\irq_pending[31]_i_2_n_0 ),
        .I1(\irq_mask_reg_n_0_[13] ),
        .I2(irq[13]),
        .I3(irq_pending[13]),
        .O(next_irq_pending[13]));
  LUT4 #(
    .INIT(16'hEEE0)) 
    \irq_pending[14]_i_1 
       (.I0(\irq_pending[31]_i_2_n_0 ),
        .I1(\irq_mask_reg_n_0_[14] ),
        .I2(irq[14]),
        .I3(irq_pending[14]),
        .O(next_irq_pending[14]));
  LUT4 #(
    .INIT(16'hEEE0)) 
    \irq_pending[15]_i_1 
       (.I0(\irq_pending[31]_i_2_n_0 ),
        .I1(\irq_mask_reg_n_0_[15] ),
        .I2(irq[15]),
        .I3(irq_pending[15]),
        .O(next_irq_pending[15]));
  LUT4 #(
    .INIT(16'hEEE0)) 
    \irq_pending[16]_i_1 
       (.I0(\irq_pending[31]_i_2_n_0 ),
        .I1(\irq_mask_reg_n_0_[16] ),
        .I2(irq[16]),
        .I3(irq_pending[16]),
        .O(next_irq_pending[16]));
  LUT4 #(
    .INIT(16'hEEE0)) 
    \irq_pending[17]_i_1 
       (.I0(\irq_pending[31]_i_2_n_0 ),
        .I1(\irq_mask_reg_n_0_[17] ),
        .I2(irq[17]),
        .I3(irq_pending[17]),
        .O(next_irq_pending[17]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT4 #(
    .INIT(16'hEEE0)) 
    \irq_pending[18]_i_1 
       (.I0(\irq_pending[31]_i_2_n_0 ),
        .I1(\irq_mask_reg_n_0_[18] ),
        .I2(irq[18]),
        .I3(irq_pending[18]),
        .O(next_irq_pending[18]));
  LUT4 #(
    .INIT(16'hEEE0)) 
    \irq_pending[19]_i_1 
       (.I0(\irq_pending[31]_i_2_n_0 ),
        .I1(\irq_mask_reg_n_0_[19] ),
        .I2(irq[19]),
        .I3(irq_pending[19]),
        .O(next_irq_pending[19]));
  LUT6 #(
    .INIT(64'hFEFEFEF0FEFEFEFE)) 
    \irq_pending[1]_i_1 
       (.I0(irq[1]),
        .I1(irq_pending[1]),
        .I2(\irq_pending[1]_i_2_n_0 ),
        .I3(\irq_pending[1]_i_3_n_0 ),
        .I4(\irq_mask_reg_n_0_[1] ),
        .I5(\cpu_state_reg[6]_0 [4]),
        .O(next_irq_pending[1]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \irq_pending[1]_i_2 
       (.I0(irq_active_reg_0),
        .I1(\irq_mask_reg_n_0_[1] ),
        .I2(\cpu_state_reg[6]_0 [3]),
        .I3(\cpu_state_reg[6]_0 [4]),
        .I4(instr_trap),
        .O(\irq_pending[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hFEFF)) 
    \irq_pending[1]_i_3 
       (.I0(\irq_state_reg[0]_0 ),
        .I1(latched_store_reg_0),
        .I2(latched_branch_reg_0),
        .I3(\irq_state_reg_n_0_[1] ),
        .O(\irq_pending[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hEEE0)) 
    \irq_pending[20]_i_1 
       (.I0(\irq_pending[31]_i_2_n_0 ),
        .I1(\irq_mask_reg_n_0_[20] ),
        .I2(irq[20]),
        .I3(irq_pending[20]),
        .O(next_irq_pending[20]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT4 #(
    .INIT(16'hEEE0)) 
    \irq_pending[21]_i_1 
       (.I0(\irq_pending[31]_i_2_n_0 ),
        .I1(\irq_mask_reg_n_0_[21] ),
        .I2(irq[21]),
        .I3(irq_pending[21]),
        .O(next_irq_pending[21]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT4 #(
    .INIT(16'hEEE0)) 
    \irq_pending[22]_i_1 
       (.I0(\irq_pending[31]_i_2_n_0 ),
        .I1(\irq_mask_reg_n_0_[22] ),
        .I2(irq[22]),
        .I3(irq_pending[22]),
        .O(next_irq_pending[22]));
  LUT4 #(
    .INIT(16'hEEE0)) 
    \irq_pending[23]_i_1 
       (.I0(\irq_pending[31]_i_2_n_0 ),
        .I1(\irq_mask_reg_n_0_[23] ),
        .I2(irq[23]),
        .I3(irq_pending[23]),
        .O(next_irq_pending[23]));
  LUT4 #(
    .INIT(16'hEEE0)) 
    \irq_pending[24]_i_1 
       (.I0(\irq_pending[31]_i_2_n_0 ),
        .I1(\irq_mask_reg_n_0_[24] ),
        .I2(irq[24]),
        .I3(irq_pending[24]),
        .O(next_irq_pending[24]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT4 #(
    .INIT(16'hEEE0)) 
    \irq_pending[25]_i_1 
       (.I0(\irq_pending[31]_i_2_n_0 ),
        .I1(\irq_mask_reg_n_0_[25] ),
        .I2(irq[25]),
        .I3(irq_pending[25]),
        .O(next_irq_pending[25]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT4 #(
    .INIT(16'hEEE0)) 
    \irq_pending[26]_i_1 
       (.I0(\irq_pending[31]_i_2_n_0 ),
        .I1(\irq_mask_reg_n_0_[26] ),
        .I2(irq[26]),
        .I3(irq_pending[26]),
        .O(next_irq_pending[26]));
  LUT4 #(
    .INIT(16'hEEE0)) 
    \irq_pending[27]_i_1 
       (.I0(\irq_pending[31]_i_2_n_0 ),
        .I1(\irq_mask_reg_n_0_[27] ),
        .I2(irq[27]),
        .I3(irq_pending[27]),
        .O(next_irq_pending[27]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT4 #(
    .INIT(16'hEEE0)) 
    \irq_pending[28]_i_1 
       (.I0(\irq_pending[31]_i_2_n_0 ),
        .I1(\irq_mask_reg_n_0_[28] ),
        .I2(irq[28]),
        .I3(irq_pending[28]),
        .O(next_irq_pending[28]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT4 #(
    .INIT(16'hEEE0)) 
    \irq_pending[29]_i_1 
       (.I0(\irq_pending[31]_i_2_n_0 ),
        .I1(\irq_mask_reg_n_0_[29] ),
        .I2(irq[29]),
        .I3(irq_pending[29]),
        .O(next_irq_pending[29]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT4 #(
    .INIT(16'hEEE0)) 
    \irq_pending[2]_i_1 
       (.I0(\irq_pending[31]_i_2_n_0 ),
        .I1(\irq_mask_reg_n_0_[2] ),
        .I2(irq[2]),
        .I3(irq_pending[2]),
        .O(next_irq_pending[2]));
  LUT4 #(
    .INIT(16'hEEE0)) 
    \irq_pending[30]_i_1 
       (.I0(\irq_pending[31]_i_2_n_0 ),
        .I1(\irq_mask_reg_n_0_[30] ),
        .I2(irq[30]),
        .I3(irq_pending[30]),
        .O(next_irq_pending[30]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT4 #(
    .INIT(16'hEEE0)) 
    \irq_pending[31]_i_1 
       (.I0(\irq_pending[31]_i_2_n_0 ),
        .I1(\irq_mask_reg_n_0_[31] ),
        .I2(irq[31]),
        .I3(irq_pending[31]),
        .O(next_irq_pending[31]));
  LUT5 #(
    .INIT(32'hFFFDFFFF)) 
    \irq_pending[31]_i_2 
       (.I0(\irq_state_reg_n_0_[1] ),
        .I1(latched_branch_reg_0),
        .I2(latched_store_reg_0),
        .I3(\irq_state_reg[0]_0 ),
        .I4(\cpu_state_reg[6]_0 [4]),
        .O(\irq_pending[31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hEEE0)) 
    \irq_pending[3]_i_1 
       (.I0(\irq_pending[31]_i_2_n_0 ),
        .I1(\irq_mask_reg_n_0_[3] ),
        .I2(irq[3]),
        .I3(irq_pending[3]),
        .O(next_irq_pending[3]));
  LUT4 #(
    .INIT(16'hEEE0)) 
    \irq_pending[4]_i_1 
       (.I0(\irq_pending[31]_i_2_n_0 ),
        .I1(\irq_mask_reg_n_0_[4] ),
        .I2(irq[4]),
        .I3(irq_pending[4]),
        .O(next_irq_pending[4]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT4 #(
    .INIT(16'hEEE0)) 
    \irq_pending[5]_i_1 
       (.I0(\irq_pending[31]_i_2_n_0 ),
        .I1(\irq_mask_reg_n_0_[5] ),
        .I2(irq[5]),
        .I3(irq_pending[5]),
        .O(next_irq_pending[5]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT4 #(
    .INIT(16'hEEE0)) 
    \irq_pending[6]_i_1 
       (.I0(\irq_pending[31]_i_2_n_0 ),
        .I1(\irq_mask_reg_n_0_[6] ),
        .I2(irq[6]),
        .I3(irq_pending[6]),
        .O(next_irq_pending[6]));
  LUT4 #(
    .INIT(16'hEEE0)) 
    \irq_pending[7]_i_1 
       (.I0(\irq_pending[31]_i_2_n_0 ),
        .I1(\irq_mask_reg_n_0_[7] ),
        .I2(irq[7]),
        .I3(irq_pending[7]),
        .O(next_irq_pending[7]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT4 #(
    .INIT(16'hEEE0)) 
    \irq_pending[8]_i_1 
       (.I0(\irq_pending[31]_i_2_n_0 ),
        .I1(\irq_mask_reg_n_0_[8] ),
        .I2(irq[8]),
        .I3(irq_pending[8]),
        .O(next_irq_pending[8]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT4 #(
    .INIT(16'hEEE0)) 
    \irq_pending[9]_i_1 
       (.I0(\irq_pending[31]_i_2_n_0 ),
        .I1(\irq_mask_reg_n_0_[9] ),
        .I2(irq[9]),
        .I3(irq_pending[9]),
        .O(next_irq_pending[9]));
  FDRE \irq_pending_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(next_irq_pending[0]),
        .Q(irq_pending[0]),
        .R(trap_i_1_n_0));
  FDRE \irq_pending_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(next_irq_pending[10]),
        .Q(irq_pending[10]),
        .R(trap_i_1_n_0));
  FDRE \irq_pending_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(next_irq_pending[11]),
        .Q(irq_pending[11]),
        .R(trap_i_1_n_0));
  FDRE \irq_pending_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(next_irq_pending[12]),
        .Q(irq_pending[12]),
        .R(trap_i_1_n_0));
  FDRE \irq_pending_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(next_irq_pending[13]),
        .Q(irq_pending[13]),
        .R(trap_i_1_n_0));
  FDRE \irq_pending_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(next_irq_pending[14]),
        .Q(irq_pending[14]),
        .R(trap_i_1_n_0));
  FDRE \irq_pending_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(next_irq_pending[15]),
        .Q(irq_pending[15]),
        .R(trap_i_1_n_0));
  FDRE \irq_pending_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(next_irq_pending[16]),
        .Q(irq_pending[16]),
        .R(trap_i_1_n_0));
  FDRE \irq_pending_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(next_irq_pending[17]),
        .Q(irq_pending[17]),
        .R(trap_i_1_n_0));
  FDRE \irq_pending_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(next_irq_pending[18]),
        .Q(irq_pending[18]),
        .R(trap_i_1_n_0));
  FDRE \irq_pending_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(next_irq_pending[19]),
        .Q(irq_pending[19]),
        .R(trap_i_1_n_0));
  FDRE \irq_pending_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(next_irq_pending[1]),
        .Q(irq_pending[1]),
        .R(trap_i_1_n_0));
  FDRE \irq_pending_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(next_irq_pending[20]),
        .Q(irq_pending[20]),
        .R(trap_i_1_n_0));
  FDRE \irq_pending_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(next_irq_pending[21]),
        .Q(irq_pending[21]),
        .R(trap_i_1_n_0));
  FDRE \irq_pending_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(next_irq_pending[22]),
        .Q(irq_pending[22]),
        .R(trap_i_1_n_0));
  FDRE \irq_pending_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(next_irq_pending[23]),
        .Q(irq_pending[23]),
        .R(trap_i_1_n_0));
  FDRE \irq_pending_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(next_irq_pending[24]),
        .Q(irq_pending[24]),
        .R(trap_i_1_n_0));
  FDRE \irq_pending_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(next_irq_pending[25]),
        .Q(irq_pending[25]),
        .R(trap_i_1_n_0));
  FDRE \irq_pending_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(next_irq_pending[26]),
        .Q(irq_pending[26]),
        .R(trap_i_1_n_0));
  FDRE \irq_pending_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(next_irq_pending[27]),
        .Q(irq_pending[27]),
        .R(trap_i_1_n_0));
  FDRE \irq_pending_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(next_irq_pending[28]),
        .Q(irq_pending[28]),
        .R(trap_i_1_n_0));
  FDRE \irq_pending_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(next_irq_pending[29]),
        .Q(irq_pending[29]),
        .R(trap_i_1_n_0));
  FDRE \irq_pending_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(next_irq_pending[2]),
        .Q(irq_pending[2]),
        .R(trap_i_1_n_0));
  FDRE \irq_pending_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(next_irq_pending[30]),
        .Q(irq_pending[30]),
        .R(trap_i_1_n_0));
  FDRE \irq_pending_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(next_irq_pending[31]),
        .Q(irq_pending[31]),
        .R(trap_i_1_n_0));
  FDRE \irq_pending_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(next_irq_pending[3]),
        .Q(irq_pending[3]),
        .R(trap_i_1_n_0));
  FDRE \irq_pending_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(next_irq_pending[4]),
        .Q(irq_pending[4]),
        .R(trap_i_1_n_0));
  FDRE \irq_pending_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(next_irq_pending[5]),
        .Q(irq_pending[5]),
        .R(trap_i_1_n_0));
  FDRE \irq_pending_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(next_irq_pending[6]),
        .Q(irq_pending[6]),
        .R(trap_i_1_n_0));
  FDRE \irq_pending_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(next_irq_pending[7]),
        .Q(irq_pending[7]),
        .R(trap_i_1_n_0));
  FDRE \irq_pending_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(next_irq_pending[8]),
        .Q(irq_pending[8]),
        .R(trap_i_1_n_0));
  FDRE \irq_pending_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(next_irq_pending[9]),
        .Q(irq_pending[9]),
        .R(trap_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'h3F40)) 
    \irq_state[0]_i_1 
       (.I0(\irq_state_reg_n_0_[1] ),
        .I1(\cpu_state_reg[6]_0 [4]),
        .I2(irq_delay_reg_0),
        .I3(\irq_state_reg[0]_0 ),
        .O(\irq_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'h3F80)) 
    \irq_state[1]_i_1 
       (.I0(\irq_state_reg[0]_0 ),
        .I1(\cpu_state_reg[6]_0 [4]),
        .I2(irq_delay_reg_0),
        .I3(\irq_state_reg_n_0_[1] ),
        .O(\irq_state[1]_i_1_n_0 ));
  FDRE \irq_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\irq_state[0]_i_1_n_0 ),
        .Q(\irq_state_reg[0]_0 ),
        .R(trap_i_1_n_0));
  FDRE \irq_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\irq_state[1]_i_1_n_0 ),
        .Q(\irq_state_reg_n_0_[1] ),
        .R(trap_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFEFC00FCFEFC)) 
    is_alu_reg_imm_i_1
       (.I0(is_alu_reg_imm_i_2_n_0),
        .I1(is_alu_reg_imm_i_3_n_0),
        .I2(is_alu_reg_imm_i_4_n_0),
        .I3(\mem_rdata_q[0]_i_1_n_0 ),
        .I4(\mem_rdata_q[1]_i_1_n_0 ),
        .I5(is_alu_reg_imm_i_5_n_0),
        .O(is_alu_reg_imm_i_1_n_0));
  LUT6 #(
    .INIT(64'h0101010101010100)) 
    is_alu_reg_imm_i_10
       (.I0(\mem_rdata_q[26]_i_7_n_0 ),
        .I1(\mem_rdata_q[13]_i_6_n_0 ),
        .I2(\mem_axi_rdata[15] [1]),
        .I3(\mem_rdata_q[9]_i_3_n_0 ),
        .I4(\mem_rdata_q[7]_i_2_n_0 ),
        .I5(p_3_in[0]),
        .O(is_alu_reg_imm_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    is_alu_reg_imm_i_11
       (.I0(\mem_axi_rdata[15] [1]),
        .I1(p_5_in),
        .I2(\mem_axi_rdata[15] [0]),
        .I3(\mem_rdata_q[1]_i_1_n_0 ),
        .I4(\mem_rdata_q[0]_i_1_n_0 ),
        .O(is_alu_reg_imm_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h1)) 
    is_alu_reg_imm_i_12
       (.I0(p_3_in[2]),
        .I1(p_3_in[1]),
        .O(is_alu_reg_imm1));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h000000FE)) 
    is_alu_reg_imm_i_13
       (.I0(\mem_axi_rdata[15] [0]),
        .I1(p_5_in),
        .I2(\mem_axi_rdata[15] [1]),
        .I3(\mem_rdata_q[1]_i_1_n_0 ),
        .I4(\mem_rdata_q[0]_i_1_n_0 ),
        .O(is_alu_reg_imm_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair209" *) 
  LUT2 #(
    .INIT(4'h7)) 
    is_alu_reg_imm_i_14
       (.I0(\mem_rdata_q[0]_i_1_n_0 ),
        .I1(\mem_rdata_q[1]_i_1_n_0 ),
        .O(is_alu_reg_imm_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    is_alu_reg_imm_i_15
       (.I0(mem_axi_rdata[21]),
        .I1(\mem_rdata_q[11]_i_6_n_0 ),
        .I2(mem_axi_rdata[5]),
        .I3(\mem_rdata_q[11]_i_5_n_0 ),
        .O(is_alu_reg_imm_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    is_alu_reg_imm_i_16
       (.I0(mem_axi_rdata[22]),
        .I1(\mem_rdata_q[11]_i_6_n_0 ),
        .I2(mem_axi_rdata[6]),
        .I3(\mem_rdata_q[11]_i_5_n_0 ),
        .O(is_alu_reg_imm_i_16_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF111F)) 
    is_alu_reg_imm_i_2
       (.I0(is_alu_reg_imm_i_6_n_0),
        .I1(\mem_rdata_q[19]_i_4_n_0 ),
        .I2(\mem_axi_rdata[15] [1]),
        .I3(p_5_in),
        .I4(is_alu_reg_imm_i_5_n_0),
        .I5(is_alu_reg_imm_i_7_n_0),
        .O(is_alu_reg_imm_i_2_n_0));
  LUT6 #(
    .INIT(64'h00000F000000EE00)) 
    is_alu_reg_imm_i_3
       (.I0(\mem_rdata_q[8]_i_2_n_0 ),
        .I1(is_alu_reg_imm_i_8_n_0),
        .I2(p_3_in[2]),
        .I3(is_alu_reg_imm_i_9_n_0),
        .I4(\mem_rdata_q[0]_i_1_n_0 ),
        .I5(\mem_rdata_q[1]_i_1_n_0 ),
        .O(is_alu_reg_imm_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFAEAEAEFFFFAEAE)) 
    is_alu_reg_imm_i_4
       (.I0(is_alu_reg_imm_i_10_n_0),
        .I1(is_alu_reg_imm_i_11_n_0),
        .I2(is_alu_reg_imm1),
        .I3(is_alu_reg_imm_i_13_n_0),
        .I4(is_alu_reg_imm_i_5_n_0),
        .I5(is_alu_reg_imm_i_14_n_0),
        .O(is_alu_reg_imm_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    is_alu_reg_imm_i_5
       (.I0(p_11_in),
        .I1(p_13_in[1]),
        .I2(p_13_in[0]),
        .I3(p_12_in),
        .I4(p_10_in),
        .I5(compressed_instr_i_1_n_0),
        .O(is_alu_reg_imm_i_5_n_0));
  LUT6 #(
    .INIT(64'hDDDDDDDDDDDDDDDF)) 
    is_alu_reg_imm_i_6
       (.I0(\mem_axi_rdata[15] [0]),
        .I1(\mem_axi_rdata[15] [1]),
        .I2(p_3_in[2]),
        .I3(\mem_rdata_q[31]_i_26_n_0 ),
        .I4(p_10_in),
        .I5(p_12_in),
        .O(is_alu_reg_imm_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h01010003)) 
    is_alu_reg_imm_i_7
       (.I0(p_3_in[0]),
        .I1(p_5_in),
        .I2(\mem_axi_rdata[15] [0]),
        .I3(p_3_in[2]),
        .I4(p_3_in[1]),
        .O(is_alu_reg_imm_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    is_alu_reg_imm_i_8
       (.I0(is_alu_reg_imm_i_15_n_0),
        .I1(\mem_rdata_q[5]_i_2_n_0 ),
        .I2(is_alu_reg_imm_i_16_n_0),
        .I3(\mem_rdata_q[6]_i_6_n_0 ),
        .O(is_alu_reg_imm_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h01)) 
    is_alu_reg_imm_i_9
       (.I0(\mem_axi_rdata[15] [0]),
        .I1(p_5_in),
        .I2(\mem_axi_rdata[15] [1]),
        .O(is_alu_reg_imm_i_9_n_0));
  FDRE is_alu_reg_imm_reg
       (.C(clk),
        .CE(instr_lui0),
        .D(is_alu_reg_imm_i_1_n_0),
        .Q(is_alu_reg_imm),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFF00FFC7FF00)) 
    is_alu_reg_reg_i_1
       (.I0(p_5_in),
        .I1(\mem_rdata_q[0]_i_1_n_0 ),
        .I2(\mem_rdata_q[1]_i_1_n_0 ),
        .I3(is_alu_reg_reg_i_2_n_0),
        .I4(is_alu_reg_reg_i_3_n_0),
        .I5(is_alu_reg_reg_i_4_n_0),
        .O(is_alu_reg_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000A0A0FCCC0000)) 
    is_alu_reg_reg_i_2
       (.I0(\mem_rdata_q[31]_i_17_n_0 ),
        .I1(is_alu_reg_reg_i_3_n_0),
        .I2(instr_jalr_i_4_n_0),
        .I3(is_alu_reg_reg_i_5_n_0),
        .I4(\mem_rdata_q[1]_i_1_n_0 ),
        .I5(\mem_rdata_q[0]_i_1_n_0 ),
        .O(is_alu_reg_reg_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    is_alu_reg_reg_i_3
       (.I0(p_12_in),
        .I1(p_10_in),
        .I2(compressed_instr_i_1_n_0),
        .I3(p_11_in),
        .I4(p_13_in[1]),
        .I5(p_13_in[0]),
        .O(is_alu_reg_reg_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT3 #(
    .INIT(8'h08)) 
    is_alu_reg_reg_i_4
       (.I0(p_5_in),
        .I1(\mem_rdata_q[0]_i_1_n_0 ),
        .I2(\mem_rdata_q[1]_i_1_n_0 ),
        .O(is_alu_reg_reg_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    is_alu_reg_reg_i_5
       (.I0(p_13_in[0]),
        .I1(p_11_in),
        .I2(p_13_in[1]),
        .I3(p_10_in),
        .I4(p_12_in),
        .O(is_alu_reg_reg_i_5_n_0));
  FDRE is_alu_reg_reg_reg
       (.C(clk),
        .CE(instr_lui0),
        .D(is_alu_reg_reg_i_1_n_0),
        .Q(is_alu_reg_reg),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    is_beq_bne_blt_bge_bltu_bgeu_i_2
       (.I0(\mem_rdata_q[0]_i_1_n_0 ),
        .I1(\mem_rdata_q[1]_i_1_n_0 ),
        .O(mem_axi_rdata_0_sn_1));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    is_beq_bne_blt_bge_bltu_bgeu_i_3
       (.I0(p_13_in[1]),
        .I1(p_11_in),
        .I2(p_13_in[0]),
        .I3(p_12_in),
        .I4(p_10_in),
        .I5(compressed_instr_i_1_n_0),
        .O(mem_axi_rdata_4_sn_1));
  FDRE is_beq_bne_blt_bge_bltu_bgeu_reg
       (.C(clk),
        .CE(1'b1),
        .D(is_beq_bne_blt_bge_bltu_bgeu_reg_1),
        .Q(is_beq_bne_blt_bge_bltu_bgeu),
        .R(trap_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'h8A8A8A00)) 
    is_compare_i_1
       (.I0(resetn),
        .I1(decoder_pseudo_trigger_reg_n_0),
        .I2(decoder_trigger_reg_n_0),
        .I3(is_beq_bne_blt_bge_bltu_bgeu),
        .I4(is_compare_i_2_n_0),
        .O(is_compare_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    is_compare_i_2
       (.I0(instr_sltu),
        .I1(instr_sltiu),
        .I2(instr_slt),
        .I3(instr_slti),
        .O(is_compare_i_2_n_0));
  FDRE is_compare_reg
       (.C(clk),
        .CE(1'b1),
        .D(is_compare_i_1_n_0),
        .Q(is_compare),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT4 #(
    .INIT(16'hFF8A)) 
    is_jalr_addi_slti_sltiu_xori_ori_andi_i_1
       (.I0(is_alu_reg_imm),
        .I1(\mem_rdata_q_reg_n_0_[13] ),
        .I2(\mem_rdata_q_reg_n_0_[12] ),
        .I3(instr_jalr),
        .O(is_jalr_addi_slti_sltiu_xori_ori_andi0));
  FDRE is_jalr_addi_slti_sltiu_xori_ori_andi_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(is_jalr_addi_slti_sltiu_xori_ori_andi0),
        .Q(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFF00FF00FF80FFC0)) 
    is_lb_lh_lw_lbu_lhu_i_1
       (.I0(mem_rdata_q3),
        .I1(\mem_axi_rdata[15] [0]),
        .I2(is_lb_lh_lw_lbu_lhu_i_2_n_0),
        .I3(is_lb_lh_lw_lbu_lhu_i_3_n_0),
        .I4(\mem_rdata_q[1]_i_1_n_0 ),
        .I5(\mem_rdata_q[0]_i_1_n_0 ),
        .O(is_lb_lh_lw_lbu_lhu_i_1_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    is_lb_lh_lw_lbu_lhu_i_2
       (.I0(is_lb_lh_lw_lbu_lhu_i_4_n_0),
        .I1(instr_jal_i_5_n_0),
        .I2(is_lb_lh_lw_lbu_lhu_i_5_n_0),
        .I3(\mem_rdata_q[19]_i_8_n_0 ),
        .O(is_lb_lh_lw_lbu_lhu_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    is_lb_lh_lw_lbu_lhu_i_3
       (.I0(instr_auipc_i_2_n_0),
        .I1(p_13_in[0]),
        .I2(p_11_in),
        .I3(p_13_in[1]),
        .O(is_lb_lh_lw_lbu_lhu_i_3_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    is_lb_lh_lw_lbu_lhu_i_4
       (.I0(mem_axi_rdata[29]),
        .I1(\mem_rdata_q[11]_i_6_n_0 ),
        .I2(mem_axi_rdata[13]),
        .I3(\mem_rdata_q[11]_i_5_n_0 ),
        .O(is_lb_lh_lw_lbu_lhu_i_4_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    is_lb_lh_lw_lbu_lhu_i_5
       (.I0(mem_axi_rdata[31]),
        .I1(\mem_rdata_q[11]_i_6_n_0 ),
        .I2(mem_axi_rdata[15]),
        .I3(\mem_rdata_q[11]_i_5_n_0 ),
        .O(is_lb_lh_lw_lbu_lhu_i_5_n_0));
  FDRE is_lb_lh_lw_lbu_lhu_reg
       (.C(clk),
        .CE(instr_lui0),
        .D(is_lb_lh_lw_lbu_lhu_i_1_n_0),
        .Q(is_lb_lh_lw_lbu_lhu),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hFE)) 
    is_lbu_lhu_lw_i_1
       (.I0(instr_lbu),
        .I1(instr_lhu),
        .I2(instr_lw),
        .O(is_lbu_lhu_lw_i_1_n_0));
  FDRE is_lbu_lhu_lw_reg
       (.C(clk),
        .CE(1'b1),
        .D(is_lbu_lhu_lw_i_1_n_0),
        .Q(is_lbu_lhu_lw),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair204" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    is_lui_auipc_jal_i_1
       (.I0(instr_lui),
        .I1(instr_auipc),
        .I2(instr_jal),
        .O(instr_lui_reg_0));
  FDRE is_lui_auipc_jal_jalr_addi_add_sub_reg
       (.C(clk),
        .CE(1'b1),
        .D(is_lui_auipc_jal_jalr_addi_add_sub_reg_0),
        .Q(is_lui_auipc_jal_jalr_addi_add_sub),
        .R(1'b0));
  FDRE is_lui_auipc_jal_reg
       (.C(clk),
        .CE(1'b1),
        .D(instr_lui_reg_0),
        .Q(is_lui_auipc_jal),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    is_sb_sh_sw_i_1
       (.I0(mem_do_rinst_reg_n_0),
        .I1(mem_done),
        .O(instr_lui0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h2200F0F0)) 
    is_sb_sh_sw_i_2
       (.I0(is_sb_sh_sw_i_4_n_0),
        .I1(p_10_in),
        .I2(is_sb_sh_sw_i_5_n_0),
        .I3(\mem_rdata_q[1]_i_1_n_0 ),
        .I4(\mem_rdata_q[0]_i_1_n_0 ),
        .O(is_sb_sh_sw_i_2_n_0));
  LUT5 #(
    .INIT(32'h88080808)) 
    is_sb_sh_sw_i_3
       (.I0(resetn),
        .I1(mem_done17_out),
        .I2(p_72_in),
        .I3(compressed_instr_i_1_n_0),
        .I4(data10),
        .O(mem_done));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    is_sb_sh_sw_i_4
       (.I0(p_12_in),
        .I1(p_13_in[0]),
        .I2(p_11_in),
        .I3(p_13_in[1]),
        .O(is_sb_sh_sw_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT3 #(
    .INIT(8'h40)) 
    is_sb_sh_sw_i_5
       (.I0(p_5_in),
        .I1(\mem_axi_rdata[15] [0]),
        .I2(\mem_axi_rdata[15] [1]),
        .O(is_sb_sh_sw_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFAAAA00A8A8A800)) 
    is_sb_sh_sw_i_6
       (.I0(data10),
        .I1(mem_do_wdata),
        .I2(mem_do_rdata),
        .I3(\mem_state_reg_n_0_[0] ),
        .I4(\mem_state_reg_n_0_[1] ),
        .I5(mem_do_rinst_reg_n_0),
        .O(mem_done17_out));
  FDRE is_sb_sh_sw_reg
       (.C(clk),
        .CE(instr_lui0),
        .D(is_sb_sh_sw_i_2_n_0),
        .Q(is_sb_sh_sw),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    is_sll_srl_sra_i_1
       (.I0(decoder_trigger_reg_n_0),
        .I1(decoder_pseudo_trigger_reg_n_0),
        .O(is_lui_auipc_jal_jalr_addi_add_sub0));
  LUT6 #(
    .INIT(64'h00FF000000800000)) 
    is_sll_srl_sra_i_2
       (.I0(is_alu_reg_reg),
        .I1(is_sll_srl_sra_i_3_n_0),
        .I2(\mem_rdata_q_reg_n_0_[14] ),
        .I3(\mem_rdata_q_reg_n_0_[13] ),
        .I4(\mem_rdata_q_reg_n_0_[12] ),
        .I5(is_sll_srl_sra_i_4_n_0),
        .O(is_sll_srl_sra0));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    is_sll_srl_sra_i_3
       (.I0(instr_rdinstr_i_4_n_0),
        .I1(\mem_rdata_q_reg_n_0_[31] ),
        .I2(\mem_rdata_q_reg_n_0_[29] ),
        .I3(\mem_rdata_q_reg_n_0_[28] ),
        .O(is_sll_srl_sra_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    is_sll_srl_sra_i_4
       (.I0(is_alu_reg_reg),
        .I1(\mem_rdata_q_reg_n_0_[26] ),
        .I2(\mem_rdata_q_reg_n_0_[25] ),
        .I3(\mem_rdata_q_reg_n_0_[27] ),
        .I4(instr_timer_i_5_n_0),
        .O(is_sll_srl_sra_i_4_n_0));
  FDRE is_sll_srl_sra_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(is_sll_srl_sra0),
        .Q(is_sll_srl_sra),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000F8000000)) 
    is_slli_srli_srai_i_1
       (.I0(is_sll_srl_sra_i_3_n_0),
        .I1(\mem_rdata_q_reg_n_0_[14] ),
        .I2(instr_slli1),
        .I3(is_alu_reg_imm),
        .I4(\mem_rdata_q_reg_n_0_[12] ),
        .I5(\mem_rdata_q_reg_n_0_[13] ),
        .O(is_slli_srli_srai0));
  FDRE is_slli_srli_srai_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(is_slli_srli_srai0),
        .Q(is_slli_srli_srai),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hFE)) 
    is_slti_blt_slt_i_1
       (.I0(instr_slt),
        .I1(instr_slti),
        .I2(instr_blt),
        .O(is_slti_blt_slt_i_1_n_0));
  FDRE is_slti_blt_slt_reg
       (.C(clk),
        .CE(1'b1),
        .D(is_slti_blt_slt_i_1_n_0),
        .Q(is_slti_blt_slt),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    is_sltiu_bltu_sltu_i_1
       (.I0(instr_sltu),
        .I1(instr_sltiu),
        .I2(instr_bltu),
        .O(is_sltiu_bltu_sltu_i_1_n_0));
  FDRE is_sltiu_bltu_sltu_reg
       (.C(clk),
        .CE(1'b1),
        .D(is_sltiu_bltu_sltu_i_1_n_0),
        .Q(is_sltiu_bltu_sltu),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'h02)) 
    last_mem_valid_i_1
       (.I0(mem_valid),
        .I1(mem_axi_rvalid),
        .I2(mem_axi_bvalid),
        .O(last_mem_valid0));
  FDRE last_mem_valid_reg
       (.C(clk),
        .CE(1'b1),
        .D(last_mem_valid0),
        .Q(last_mem_valid),
        .R(trap_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h2222000F)) 
    latched_branch_i_2
       (.I0(instr_jalr),
        .I1(is_beq_bne_blt_bge_bltu_bgeu),
        .I2(irq_delay_reg_0),
        .I3(latched_branch_i_4_n_0),
        .I4(\cpu_state_reg[6]_0 [2]),
        .O(instr_jalr_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT4 #(
    .INIT(16'hFFF8)) 
    latched_branch_i_3
       (.I0(\cpu_state_reg[6]_0 [3]),
        .I1(instr_retirq),
        .I2(\cpu_state_reg[6]_0 [4]),
        .I3(\cpu_state_reg[6]_0 [2]),
        .O(latched_branch));
  (* SOFT_HLUTNM = "soft_lutpair206" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    latched_branch_i_4
       (.I0(decoder_trigger_reg_n_0),
        .I1(instr_waitirq),
        .I2(instr_jal),
        .O(latched_branch_i_4_n_0));
  FDRE latched_branch_reg
       (.C(clk),
        .CE(1'b1),
        .D(latched_branch_reg_1),
        .Q(latched_branch_reg_0),
        .R(trap_i_1_n_0));
  FDRE latched_compr_reg
       (.C(clk),
        .CE(1'b1),
        .D(latched_compr_reg_1),
        .Q(latched_compr_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'hB)) 
    latched_is_lb_i_2
       (.I0(mem_done),
        .I1(mem_do_prefetch_reg_0),
        .O(decoder_trigger1));
  FDRE latched_is_lb_reg
       (.C(clk),
        .CE(1'b1),
        .D(latched_is_lb_reg_1),
        .Q(latched_is_lb_reg_0),
        .R(trap_i_1_n_0));
  FDRE latched_is_lh_reg
       (.C(clk),
        .CE(1'b1),
        .D(latched_is_lh_reg_1),
        .Q(latched_is_lh_reg_0),
        .R(trap_i_1_n_0));
  FDRE latched_is_lu_reg
       (.C(clk),
        .CE(1'b1),
        .D(latched_is_lu_reg_1),
        .Q(latched_is_lu_reg_0),
        .R(trap_i_1_n_0));
  LUT6 #(
    .INIT(64'hFF888888F8F88888)) 
    \latched_rd[0]_i_1 
       (.I0(latched_rd[0]),
        .I1(\cpu_state_reg[6]_0 [3]),
        .I2(\decoded_rd_reg_n_0_[0] ),
        .I3(\irq_state_reg[0]_0 ),
        .I4(\cpu_state_reg[6]_0 [4]),
        .I5(irq_delay_reg_0),
        .O(latched_rd__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'hFF080808)) 
    \latched_rd[1]_i_1 
       (.I0(\decoded_rd_reg_n_0_[1] ),
        .I1(\cpu_state_reg[6]_0 [4]),
        .I2(irq_delay_reg_0),
        .I3(\cpu_state_reg[6]_0 [3]),
        .I4(latched_rd[1]),
        .O(latched_rd__0[1]));
  LUT5 #(
    .INIT(32'hFF080808)) 
    \latched_rd[2]_i_1 
       (.I0(\decoded_rd_reg_n_0_[2] ),
        .I1(\cpu_state_reg[6]_0 [4]),
        .I2(irq_delay_reg_0),
        .I3(\cpu_state_reg[6]_0 [3]),
        .I4(latched_rd[2]),
        .O(latched_rd__0[2]));
  LUT5 #(
    .INIT(32'hFF080808)) 
    \latched_rd[3]_i_1 
       (.I0(\decoded_rd_reg_n_0_[3] ),
        .I1(\cpu_state_reg[6]_0 [4]),
        .I2(irq_delay_reg_0),
        .I3(\cpu_state_reg[6]_0 [3]),
        .I4(latched_rd[3]),
        .O(latched_rd__0[3]));
  LUT5 #(
    .INIT(32'hFF080808)) 
    \latched_rd[4]_i_1 
       (.I0(\decoded_rd_reg_n_0_[4] ),
        .I1(\cpu_state_reg[6]_0 [4]),
        .I2(irq_delay_reg_0),
        .I3(\cpu_state_reg[6]_0 [3]),
        .I4(latched_rd[4]),
        .O(latched_rd__0[4]));
  LUT6 #(
    .INIT(64'hFFEAEAEA00000000)) 
    \latched_rd[5]_i_1 
       (.I0(\cpu_state_reg[6]_0 [4]),
        .I1(\cpu_state_reg[6]_0 [3]),
        .I2(instr_setq),
        .I3(\cpu_state_reg[6]_0 [2]),
        .I4(is_beq_bne_blt_bge_bltu_bgeu),
        .I5(resetn),
        .O(\latched_rd[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBAFFBABA)) 
    \latched_rd[5]_i_10 
       (.I0(\latched_rd[5]_i_23_n_0 ),
        .I1(\irq_mask_reg_n_0_[1] ),
        .I2(irq_pending[1]),
        .I3(\irq_mask_reg_n_0_[0] ),
        .I4(irq_pending[0]),
        .I5(\latched_rd[5]_i_24_n_0 ),
        .O(\latched_rd[5]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \latched_rd[5]_i_11 
       (.I0(irq_pending[18]),
        .I1(\irq_mask_reg_n_0_[18] ),
        .O(do_waitirq4[18]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \latched_rd[5]_i_12 
       (.I0(irq_pending[21]),
        .I1(\irq_mask_reg_n_0_[21] ),
        .O(do_waitirq4[21]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \latched_rd[5]_i_13 
       (.I0(irq_pending[22]),
        .I1(\irq_mask_reg_n_0_[22] ),
        .O(do_waitirq4[22]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \latched_rd[5]_i_14 
       (.I0(irq_pending[25]),
        .I1(\irq_mask_reg_n_0_[25] ),
        .O(do_waitirq4[25]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \latched_rd[5]_i_15 
       (.I0(irq_pending[28]),
        .I1(\irq_mask_reg_n_0_[28] ),
        .O(do_waitirq4[28]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \latched_rd[5]_i_16 
       (.I0(irq_pending[31]),
        .I1(\irq_mask_reg_n_0_[31] ),
        .O(do_waitirq4[31]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \latched_rd[5]_i_17 
       (.I0(irq_pending[26]),
        .I1(\irq_mask_reg_n_0_[26] ),
        .O(do_waitirq4[26]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \latched_rd[5]_i_18 
       (.I0(irq_pending[29]),
        .I1(\irq_mask_reg_n_0_[29] ),
        .O(do_waitirq4[29]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \latched_rd[5]_i_19 
       (.I0(irq_pending[9]),
        .I1(\irq_mask_reg_n_0_[9] ),
        .O(do_waitirq4[9]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \latched_rd[5]_i_2 
       (.I0(irq_delay_reg_0),
        .I1(\cpu_state_reg[6]_0 [4]),
        .I2(\cpu_state_reg[6]_0 [3]),
        .O(latched_rd__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \latched_rd[5]_i_20 
       (.I0(irq_pending[6]),
        .I1(\irq_mask_reg_n_0_[6] ),
        .O(do_waitirq4[6]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \latched_rd[5]_i_21 
       (.I0(irq_pending[8]),
        .I1(\irq_mask_reg_n_0_[8] ),
        .O(do_waitirq4[8]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF22F2)) 
    \latched_rd[5]_i_22 
       (.I0(irq_pending[4]),
        .I1(\irq_mask_reg_n_0_[4] ),
        .I2(irq_pending[7]),
        .I3(\irq_mask_reg_n_0_[7] ),
        .I4(do_waitirq4[2]),
        .I5(do_waitirq4[5]),
        .O(\latched_rd[5]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \latched_rd[5]_i_23 
       (.I0(\irq_mask_reg_n_0_[3] ),
        .I1(irq_pending[3]),
        .I2(\irq_mask_reg_n_0_[14] ),
        .I3(irq_pending[14]),
        .O(\latched_rd[5]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF22F2)) 
    \latched_rd[5]_i_24 
       (.I0(irq_pending[12]),
        .I1(\irq_mask_reg_n_0_[12] ),
        .I2(irq_pending[15]),
        .I3(\irq_mask_reg_n_0_[15] ),
        .I4(do_waitirq4[10]),
        .I5(do_waitirq4[13]),
        .O(\latched_rd[5]_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \latched_rd[5]_i_25 
       (.I0(irq_pending[2]),
        .I1(\irq_mask_reg_n_0_[2] ),
        .O(do_waitirq4[2]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \latched_rd[5]_i_26 
       (.I0(irq_pending[5]),
        .I1(\irq_mask_reg_n_0_[5] ),
        .O(do_waitirq4[5]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \latched_rd[5]_i_27 
       (.I0(irq_pending[10]),
        .I1(\irq_mask_reg_n_0_[10] ),
        .O(do_waitirq4[10]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \latched_rd[5]_i_28 
       (.I0(irq_pending[13]),
        .I1(\irq_mask_reg_n_0_[13] ),
        .O(do_waitirq4[13]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0010)) 
    \latched_rd[5]_i_3 
       (.I0(\latched_rd[5]_i_4_n_0 ),
        .I1(irq_delay_reg_n_0),
        .I2(decoder_trigger_reg_n_0),
        .I3(irq_active_reg_0),
        .I4(\irq_state_reg_n_0_[1] ),
        .I5(\irq_state_reg[0]_0 ),
        .O(irq_delay_reg_0));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \latched_rd[5]_i_4 
       (.I0(\latched_rd[5]_i_5_n_0 ),
        .I1(\latched_rd[5]_i_6_n_0 ),
        .I2(\latched_rd[5]_i_7_n_0 ),
        .I3(\latched_rd[5]_i_8_n_0 ),
        .I4(\latched_rd[5]_i_9_n_0 ),
        .I5(\latched_rd[5]_i_10_n_0 ),
        .O(\latched_rd[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000DD0D)) 
    \latched_rd[5]_i_5 
       (.I0(irq_pending[16]),
        .I1(\irq_mask_reg_n_0_[16] ),
        .I2(irq_pending[19]),
        .I3(\irq_mask_reg_n_0_[19] ),
        .I4(do_waitirq4[18]),
        .I5(do_waitirq4[21]),
        .O(\latched_rd[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000DD0D)) 
    \latched_rd[5]_i_6 
       (.I0(irq_pending[20]),
        .I1(\irq_mask_reg_n_0_[20] ),
        .I2(irq_pending[23]),
        .I3(\irq_mask_reg_n_0_[23] ),
        .I4(do_waitirq4[22]),
        .I5(do_waitirq4[25]),
        .O(\latched_rd[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000D0DD)) 
    \latched_rd[5]_i_7 
       (.I0(irq_pending[30]),
        .I1(\irq_mask_reg_n_0_[30] ),
        .I2(\irq_mask_reg_n_0_[17] ),
        .I3(irq_pending[17]),
        .I4(do_waitirq4[28]),
        .I5(do_waitirq4[31]),
        .O(\latched_rd[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000DD0D)) 
    \latched_rd[5]_i_8 
       (.I0(irq_pending[24]),
        .I1(\irq_mask_reg_n_0_[24] ),
        .I2(irq_pending[27]),
        .I3(\irq_mask_reg_n_0_[27] ),
        .I4(do_waitirq4[26]),
        .I5(do_waitirq4[29]),
        .O(\latched_rd[5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFEE)) 
    \latched_rd[5]_i_9 
       (.I0(do_waitirq4[9]),
        .I1(do_waitirq4[6]),
        .I2(\irq_mask_reg_n_0_[11] ),
        .I3(irq_pending[11]),
        .I4(do_waitirq4[8]),
        .I5(\latched_rd[5]_i_22_n_0 ),
        .O(\latched_rd[5]_i_9_n_0 ));
  FDRE \latched_rd_reg[0] 
       (.C(clk),
        .CE(\latched_rd[5]_i_1_n_0 ),
        .D(latched_rd__0[0]),
        .Q(latched_rd[0]),
        .R(1'b0));
  FDRE \latched_rd_reg[1] 
       (.C(clk),
        .CE(\latched_rd[5]_i_1_n_0 ),
        .D(latched_rd__0[1]),
        .Q(latched_rd[1]),
        .R(1'b0));
  FDRE \latched_rd_reg[2] 
       (.C(clk),
        .CE(\latched_rd[5]_i_1_n_0 ),
        .D(latched_rd__0[2]),
        .Q(latched_rd[2]),
        .R(1'b0));
  FDRE \latched_rd_reg[3] 
       (.C(clk),
        .CE(\latched_rd[5]_i_1_n_0 ),
        .D(latched_rd__0[3]),
        .Q(latched_rd[3]),
        .R(1'b0));
  FDRE \latched_rd_reg[4] 
       (.C(clk),
        .CE(\latched_rd[5]_i_1_n_0 ),
        .D(latched_rd__0[4]),
        .Q(latched_rd[4]),
        .R(1'b0));
  FDRE \latched_rd_reg[5] 
       (.C(clk),
        .CE(\latched_rd[5]_i_1_n_0 ),
        .D(latched_rd__0[5]),
        .Q(latched_rd[5]),
        .R(1'b0));
  FDRE latched_stalu_reg
       (.C(clk),
        .CE(1'b1),
        .D(latched_stalu_reg_1),
        .Q(latched_stalu_reg_0),
        .R(trap_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFF72)) 
    latched_store_i_2
       (.I0(\cpu_state_reg[6]_0 [2]),
        .I1(is_beq_bne_blt_bge_bltu_bgeu),
        .I2(\cpu_state_reg[6]_0 [3]),
        .I3(\cpu_state_reg[6]_0 [0]),
        .I4(\cpu_state_reg_n_0_[2] ),
        .O(\cpu_state_reg[3]_1 ));
  LUT6 #(
    .INIT(64'h0000000000008880)) 
    latched_store_i_3
       (.I0(do_waitirq1),
        .I1(instr_waitirq),
        .I2(decoder_trigger_reg_n_0),
        .I3(do_waitirq_reg_n_0),
        .I4(\cpu_state_reg[6]_0 [2]),
        .I5(irq_delay_reg_0),
        .O(instr_waitirq_reg_0));
  LUT6 #(
    .INIT(64'h00000000EEEEFFEF)) 
    latched_store_i_4
       (.I0(\cpu_state_reg_n_0_[2] ),
        .I1(\cpu_state_reg[6]_0 [2]),
        .I2(\cpu_state_reg[6]_0 [3]),
        .I3(\cpu_state[1]_i_3_n_0 ),
        .I4(\cpu_state_reg_n_0_[7] ),
        .I5(\cpu_state_reg[6]_0 [1]),
        .O(latched_store));
  FDRE latched_store_reg
       (.C(clk),
        .CE(1'b1),
        .D(latched_store_reg_1),
        .Q(latched_store_reg_0),
        .R(trap_i_1_n_0));
  LUT5 #(
    .INIT(32'h47440000)) 
    \mem_16bit_buffer[15]_i_1 
       (.I0(mem_la_use_prefetched_high_word),
        .I1(resetn_0),
        .I2(mem_do_rdata),
        .I3(mem_axi_rdata_1_sn_1),
        .I4(\mem_state_reg[0]_0 ),
        .O(mem_16bit_buffer));
  LUT6 #(
    .INIT(64'h000000008A800000)) 
    \mem_16bit_buffer[15]_i_2 
       (.I0(\mem_rdata_q[6]_i_3_n_0 ),
        .I1(\reg_next_pc_reg_n_0_[1] ),
        .I2(\reg_pc[31]_i_3_n_0 ),
        .I3(\reg_out_reg_n_0_[1] ),
        .I4(mem_la_firstword1),
        .I5(mem_la_secondword),
        .O(mem_la_use_prefetched_high_word));
  LUT3 #(
    .INIT(8'hDF)) 
    \mem_16bit_buffer[15]_i_3 
       (.I0(mem_axi_rdata[1]),
        .I1(mem_la_secondword),
        .I2(mem_axi_rdata[0]),
        .O(mem_axi_rdata_1_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00000800)) 
    \mem_16bit_buffer[15]_i_4 
       (.I0(data10),
        .I1(\mem_state_reg_n_0_[0] ),
        .I2(\mem_state_reg_n_0_[1] ),
        .I3(resetn),
        .I4(trap_reg_0),
        .O(\mem_state_reg[0]_0 ));
  FDRE \mem_16bit_buffer_reg[0] 
       (.C(clk),
        .CE(mem_16bit_buffer),
        .D(mem_axi_rdata[16]),
        .Q(\mem_16bit_buffer_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \mem_16bit_buffer_reg[10] 
       (.C(clk),
        .CE(mem_16bit_buffer),
        .D(mem_axi_rdata[26]),
        .Q(\mem_16bit_buffer_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \mem_16bit_buffer_reg[11] 
       (.C(clk),
        .CE(mem_16bit_buffer),
        .D(mem_axi_rdata[27]),
        .Q(\mem_16bit_buffer_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \mem_16bit_buffer_reg[12] 
       (.C(clk),
        .CE(mem_16bit_buffer),
        .D(mem_axi_rdata[28]),
        .Q(\mem_16bit_buffer_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \mem_16bit_buffer_reg[13] 
       (.C(clk),
        .CE(mem_16bit_buffer),
        .D(mem_axi_rdata[29]),
        .Q(\mem_16bit_buffer_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \mem_16bit_buffer_reg[14] 
       (.C(clk),
        .CE(mem_16bit_buffer),
        .D(mem_axi_rdata[30]),
        .Q(\mem_16bit_buffer_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \mem_16bit_buffer_reg[15] 
       (.C(clk),
        .CE(mem_16bit_buffer),
        .D(mem_axi_rdata[31]),
        .Q(\mem_16bit_buffer_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \mem_16bit_buffer_reg[1] 
       (.C(clk),
        .CE(mem_16bit_buffer),
        .D(mem_axi_rdata[17]),
        .Q(\mem_16bit_buffer_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \mem_16bit_buffer_reg[2] 
       (.C(clk),
        .CE(mem_16bit_buffer),
        .D(mem_axi_rdata[18]),
        .Q(\mem_16bit_buffer_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \mem_16bit_buffer_reg[3] 
       (.C(clk),
        .CE(mem_16bit_buffer),
        .D(mem_axi_rdata[19]),
        .Q(\mem_16bit_buffer_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \mem_16bit_buffer_reg[4] 
       (.C(clk),
        .CE(mem_16bit_buffer),
        .D(mem_axi_rdata[20]),
        .Q(\mem_16bit_buffer_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \mem_16bit_buffer_reg[5] 
       (.C(clk),
        .CE(mem_16bit_buffer),
        .D(mem_axi_rdata[21]),
        .Q(\mem_16bit_buffer_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \mem_16bit_buffer_reg[6] 
       (.C(clk),
        .CE(mem_16bit_buffer),
        .D(mem_axi_rdata[22]),
        .Q(\mem_16bit_buffer_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \mem_16bit_buffer_reg[7] 
       (.C(clk),
        .CE(mem_16bit_buffer),
        .D(mem_axi_rdata[23]),
        .Q(\mem_16bit_buffer_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \mem_16bit_buffer_reg[8] 
       (.C(clk),
        .CE(mem_16bit_buffer),
        .D(mem_axi_rdata[24]),
        .Q(\mem_16bit_buffer_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \mem_16bit_buffer_reg[9] 
       (.C(clk),
        .CE(mem_16bit_buffer),
        .D(mem_axi_rdata[25]),
        .Q(\mem_16bit_buffer_reg_n_0_[9] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hABA8)) 
    \mem_addr[10]_i_1 
       (.I0(mem_la_addr0[8]),
        .I1(mem_do_prefetch_reg_0),
        .I2(mem_do_rinst_reg_n_0),
        .I3(\reg_op1_reg_n_0_[10] ),
        .O(\mem_addr[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \mem_addr[11]_i_1 
       (.I0(mem_la_addr0[9]),
        .I1(mem_do_prefetch_reg_0),
        .I2(mem_do_rinst_reg_n_0),
        .I3(\reg_op1_reg_n_0_[11] ),
        .O(\mem_addr[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \mem_addr[12]_i_1 
       (.I0(mem_la_addr0[10]),
        .I1(mem_do_prefetch_reg_0),
        .I2(mem_do_rinst_reg_n_0),
        .I3(\reg_op1_reg_n_0_[12] ),
        .O(\mem_addr[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \mem_addr[13]_i_1 
       (.I0(mem_la_addr0[11]),
        .I1(mem_do_prefetch_reg_0),
        .I2(mem_do_rinst_reg_n_0),
        .I3(\reg_op1_reg_n_0_[13] ),
        .O(\mem_addr[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \mem_addr[13]_i_3 
       (.I0(\reg_next_pc_reg_n_0_[13] ),
        .I1(latched_store_reg_0),
        .I2(latched_branch_reg_0),
        .I3(\reg_out_reg_n_0_[13] ),
        .O(p_0_in__0[11]));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \mem_addr[13]_i_4 
       (.I0(\reg_next_pc_reg_n_0_[12] ),
        .I1(latched_store_reg_0),
        .I2(latched_branch_reg_0),
        .I3(\reg_out_reg_n_0_[12] ),
        .O(p_0_in__0[10]));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \mem_addr[13]_i_5 
       (.I0(\reg_next_pc_reg_n_0_[11] ),
        .I1(latched_store_reg_0),
        .I2(latched_branch_reg_0),
        .I3(\reg_out_reg_n_0_[11] ),
        .O(p_0_in__0[9]));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \mem_addr[13]_i_6 
       (.I0(\reg_next_pc_reg_n_0_[10] ),
        .I1(latched_store_reg_0),
        .I2(latched_branch_reg_0),
        .I3(\reg_out_reg_n_0_[10] ),
        .O(p_0_in__0[8]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \mem_addr[14]_i_1 
       (.I0(mem_la_addr0[12]),
        .I1(mem_do_prefetch_reg_0),
        .I2(mem_do_rinst_reg_n_0),
        .I3(\reg_op1_reg_n_0_[14] ),
        .O(\mem_addr[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \mem_addr[15]_i_1 
       (.I0(mem_la_addr0[13]),
        .I1(mem_do_prefetch_reg_0),
        .I2(mem_do_rinst_reg_n_0),
        .I3(\reg_op1_reg_n_0_[15] ),
        .O(\mem_addr[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \mem_addr[16]_i_1 
       (.I0(mem_la_addr0[14]),
        .I1(mem_do_prefetch_reg_0),
        .I2(mem_do_rinst_reg_n_0),
        .I3(\reg_op1_reg_n_0_[16] ),
        .O(\mem_addr[16]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \mem_addr[17]_i_1 
       (.I0(mem_la_addr0[15]),
        .I1(mem_do_prefetch_reg_0),
        .I2(mem_do_rinst_reg_n_0),
        .I3(\reg_op1_reg_n_0_[17] ),
        .O(\mem_addr[17]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \mem_addr[17]_i_3 
       (.I0(\reg_next_pc_reg_n_0_[17] ),
        .I1(latched_store_reg_0),
        .I2(latched_branch_reg_0),
        .I3(\reg_out_reg_n_0_[17] ),
        .O(p_0_in__0[15]));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \mem_addr[17]_i_4 
       (.I0(\reg_next_pc_reg_n_0_[16] ),
        .I1(latched_store_reg_0),
        .I2(latched_branch_reg_0),
        .I3(\reg_out_reg_n_0_[16] ),
        .O(p_0_in__0[14]));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \mem_addr[17]_i_5 
       (.I0(\reg_next_pc_reg_n_0_[15] ),
        .I1(latched_store_reg_0),
        .I2(latched_branch_reg_0),
        .I3(\reg_out_reg_n_0_[15] ),
        .O(p_0_in__0[13]));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \mem_addr[17]_i_6 
       (.I0(\reg_next_pc_reg_n_0_[14] ),
        .I1(latched_store_reg_0),
        .I2(latched_branch_reg_0),
        .I3(\reg_out_reg_n_0_[14] ),
        .O(p_0_in__0[12]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \mem_addr[18]_i_1 
       (.I0(mem_la_addr0[16]),
        .I1(mem_do_prefetch_reg_0),
        .I2(mem_do_rinst_reg_n_0),
        .I3(\reg_op1_reg_n_0_[18] ),
        .O(\mem_addr[18]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \mem_addr[19]_i_1 
       (.I0(mem_la_addr0[17]),
        .I1(mem_do_prefetch_reg_0),
        .I2(mem_do_rinst_reg_n_0),
        .I3(\reg_op1_reg_n_0_[19] ),
        .O(\mem_addr[19]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \mem_addr[20]_i_1 
       (.I0(mem_la_addr0[18]),
        .I1(mem_do_prefetch_reg_0),
        .I2(mem_do_rinst_reg_n_0),
        .I3(\reg_op1_reg_n_0_[20] ),
        .O(\mem_addr[20]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \mem_addr[21]_i_1 
       (.I0(mem_la_addr0[19]),
        .I1(mem_do_prefetch_reg_0),
        .I2(mem_do_rinst_reg_n_0),
        .I3(\reg_op1_reg_n_0_[21] ),
        .O(\mem_addr[21]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \mem_addr[21]_i_3 
       (.I0(\reg_next_pc_reg_n_0_[21] ),
        .I1(latched_store_reg_0),
        .I2(latched_branch_reg_0),
        .I3(\reg_out_reg_n_0_[21] ),
        .O(p_0_in__0[19]));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \mem_addr[21]_i_4 
       (.I0(\reg_next_pc_reg_n_0_[20] ),
        .I1(latched_store_reg_0),
        .I2(latched_branch_reg_0),
        .I3(\reg_out_reg_n_0_[20] ),
        .O(p_0_in__0[18]));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \mem_addr[21]_i_5 
       (.I0(\reg_next_pc_reg_n_0_[19] ),
        .I1(latched_store_reg_0),
        .I2(latched_branch_reg_0),
        .I3(\reg_out_reg_n_0_[19] ),
        .O(p_0_in__0[17]));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \mem_addr[21]_i_6 
       (.I0(\reg_next_pc_reg_n_0_[18] ),
        .I1(latched_store_reg_0),
        .I2(latched_branch_reg_0),
        .I3(\reg_out_reg_n_0_[18] ),
        .O(p_0_in__0[16]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \mem_addr[22]_i_1 
       (.I0(mem_la_addr0[20]),
        .I1(mem_do_prefetch_reg_0),
        .I2(mem_do_rinst_reg_n_0),
        .I3(\reg_op1_reg_n_0_[22] ),
        .O(\mem_addr[22]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \mem_addr[23]_i_1 
       (.I0(mem_la_addr0[21]),
        .I1(mem_do_prefetch_reg_0),
        .I2(mem_do_rinst_reg_n_0),
        .I3(\reg_op1_reg_n_0_[23] ),
        .O(\mem_addr[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \mem_addr[24]_i_1 
       (.I0(mem_la_addr0[22]),
        .I1(mem_do_prefetch_reg_0),
        .I2(mem_do_rinst_reg_n_0),
        .I3(\reg_op1_reg_n_0_[24] ),
        .O(\mem_addr[24]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \mem_addr[25]_i_1 
       (.I0(mem_la_addr0[23]),
        .I1(mem_do_prefetch_reg_0),
        .I2(mem_do_rinst_reg_n_0),
        .I3(\reg_op1_reg_n_0_[25] ),
        .O(\mem_addr[25]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \mem_addr[25]_i_3 
       (.I0(\reg_next_pc_reg_n_0_[25] ),
        .I1(latched_store_reg_0),
        .I2(latched_branch_reg_0),
        .I3(\reg_out_reg_n_0_[25] ),
        .O(p_0_in__0[23]));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \mem_addr[25]_i_4 
       (.I0(\reg_next_pc_reg_n_0_[24] ),
        .I1(latched_store_reg_0),
        .I2(latched_branch_reg_0),
        .I3(\reg_out_reg_n_0_[24] ),
        .O(p_0_in__0[22]));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \mem_addr[25]_i_5 
       (.I0(\reg_next_pc_reg_n_0_[23] ),
        .I1(latched_store_reg_0),
        .I2(latched_branch_reg_0),
        .I3(\reg_out_reg_n_0_[23] ),
        .O(p_0_in__0[21]));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \mem_addr[25]_i_6 
       (.I0(\reg_next_pc_reg_n_0_[22] ),
        .I1(latched_store_reg_0),
        .I2(latched_branch_reg_0),
        .I3(\reg_out_reg_n_0_[22] ),
        .O(p_0_in__0[20]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \mem_addr[26]_i_1 
       (.I0(mem_la_addr0[24]),
        .I1(mem_do_prefetch_reg_0),
        .I2(mem_do_rinst_reg_n_0),
        .I3(\reg_op1_reg_n_0_[26] ),
        .O(\mem_addr[26]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \mem_addr[27]_i_1 
       (.I0(mem_la_addr0[25]),
        .I1(mem_do_prefetch_reg_0),
        .I2(mem_do_rinst_reg_n_0),
        .I3(\reg_op1_reg_n_0_[27] ),
        .O(\mem_addr[27]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \mem_addr[28]_i_1 
       (.I0(mem_la_addr0[26]),
        .I1(mem_do_prefetch_reg_0),
        .I2(mem_do_rinst_reg_n_0),
        .I3(\reg_op1_reg_n_0_[28] ),
        .O(\mem_addr[28]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \mem_addr[29]_i_1 
       (.I0(mem_la_addr0[27]),
        .I1(mem_do_prefetch_reg_0),
        .I2(mem_do_rinst_reg_n_0),
        .I3(\reg_op1_reg_n_0_[29] ),
        .O(\mem_addr[29]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \mem_addr[29]_i_3 
       (.I0(\reg_next_pc_reg_n_0_[29] ),
        .I1(latched_store_reg_0),
        .I2(latched_branch_reg_0),
        .I3(\reg_out_reg_n_0_[29] ),
        .O(p_0_in__0[27]));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \mem_addr[29]_i_4 
       (.I0(\reg_next_pc_reg_n_0_[28] ),
        .I1(latched_store_reg_0),
        .I2(latched_branch_reg_0),
        .I3(\reg_out_reg_n_0_[28] ),
        .O(p_0_in__0[26]));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \mem_addr[29]_i_5 
       (.I0(\reg_next_pc_reg_n_0_[27] ),
        .I1(latched_store_reg_0),
        .I2(latched_branch_reg_0),
        .I3(\reg_out_reg_n_0_[27] ),
        .O(p_0_in__0[25]));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \mem_addr[29]_i_6 
       (.I0(\reg_next_pc_reg_n_0_[26] ),
        .I1(latched_store_reg_0),
        .I2(latched_branch_reg_0),
        .I3(\reg_out_reg_n_0_[26] ),
        .O(p_0_in__0[24]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT4 #(
    .INIT(16'hABA8)) 
    \mem_addr[2]_i_1 
       (.I0(mem_la_addr0[0]),
        .I1(mem_do_prefetch_reg_0),
        .I2(mem_do_rinst_reg_n_0),
        .I3(\reg_op1_reg_n_0_[2] ),
        .O(\mem_addr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \mem_addr[30]_i_1 
       (.I0(mem_la_addr0[28]),
        .I1(mem_do_prefetch_reg_0),
        .I2(mem_do_rinst_reg_n_0),
        .I3(\reg_op1_reg_n_0_[30] ),
        .O(\mem_addr[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAE0000)) 
    \mem_addr[31]_i_1 
       (.I0(resetn_0),
        .I1(mem_do_wdata),
        .I2(\mem_state_reg_n_0_[1] ),
        .I3(\mem_state_reg_n_0_[0] ),
        .I4(resetn),
        .I5(trap_reg_0),
        .O(\mem_addr[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \mem_addr[31]_i_2 
       (.I0(mem_la_addr0[29]),
        .I1(mem_do_prefetch_reg_0),
        .I2(mem_do_rinst_reg_n_0),
        .I3(\reg_op1_reg_n_0_[31] ),
        .O(\mem_addr[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h44444F44)) 
    \mem_addr[31]_i_3 
       (.I0(compressed_instr_i_1_n_0),
        .I1(\mem_addr[31]_i_5_n_0 ),
        .I2(mem_la_use_prefetched_high_word),
        .I3(resetn),
        .I4(\mem_wstrb[3]_i_5_n_0 ),
        .O(resetn_0));
  LUT6 #(
    .INIT(64'h0000B80000000000)) 
    \mem_addr[31]_i_5 
       (.I0(mem_la_firstword_reg_reg_n_0),
        .I1(last_mem_valid),
        .I2(p_72_in),
        .I3(resetn),
        .I4(mem_la_secondword),
        .I5(data10),
        .O(\mem_addr[31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \mem_addr[31]_i_6 
       (.I0(\reg_next_pc_reg_n_0_[31] ),
        .I1(latched_store_reg_0),
        .I2(latched_branch_reg_0),
        .I3(\reg_out_reg_n_0_[31] ),
        .O(p_0_in__0[29]));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \mem_addr[31]_i_7 
       (.I0(\reg_next_pc_reg_n_0_[30] ),
        .I1(latched_store_reg_0),
        .I2(latched_branch_reg_0),
        .I3(\reg_out_reg_n_0_[30] ),
        .O(p_0_in__0[28]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT4 #(
    .INIT(16'hABA8)) 
    \mem_addr[3]_i_1 
       (.I0(mem_la_addr0[1]),
        .I1(mem_do_prefetch_reg_0),
        .I2(mem_do_rinst_reg_n_0),
        .I3(\reg_op1_reg_n_0_[3] ),
        .O(\mem_addr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT4 #(
    .INIT(16'hABA8)) 
    \mem_addr[4]_i_1 
       (.I0(mem_la_addr0[2]),
        .I1(mem_do_prefetch_reg_0),
        .I2(mem_do_rinst_reg_n_0),
        .I3(\reg_op1_reg_n_0_[4] ),
        .O(\mem_addr[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \mem_addr[5]_i_1 
       (.I0(mem_la_addr0[3]),
        .I1(mem_do_prefetch_reg_0),
        .I2(mem_do_rinst_reg_n_0),
        .I3(\reg_op1_reg_n_0_[5] ),
        .O(\mem_addr[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \mem_addr[5]_i_3 
       (.I0(\reg_next_pc_reg_n_0_[2] ),
        .I1(latched_store_reg_0),
        .I2(latched_branch_reg_0),
        .I3(\reg_out_reg_n_0_[2] ),
        .O(p_0_in__0[0]));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \mem_addr[5]_i_4 
       (.I0(\reg_next_pc_reg_n_0_[5] ),
        .I1(latched_store_reg_0),
        .I2(latched_branch_reg_0),
        .I3(\reg_out_reg_n_0_[5] ),
        .O(p_0_in__0[3]));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \mem_addr[5]_i_5 
       (.I0(\reg_next_pc_reg_n_0_[4] ),
        .I1(latched_store_reg_0),
        .I2(latched_branch_reg_0),
        .I3(\reg_out_reg_n_0_[4] ),
        .O(p_0_in__0[2]));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \mem_addr[5]_i_6 
       (.I0(\reg_next_pc_reg_n_0_[3] ),
        .I1(latched_store_reg_0),
        .I2(latched_branch_reg_0),
        .I3(\reg_out_reg_n_0_[3] ),
        .O(p_0_in__0[1]));
  LUT6 #(
    .INIT(64'h407FBF80BF80BF80)) 
    \mem_addr[5]_i_7 
       (.I0(\reg_out_reg_n_0_[2] ),
        .I1(latched_branch_reg_0),
        .I2(latched_store_reg_0),
        .I3(\reg_next_pc_reg_n_0_[2] ),
        .I4(data10),
        .I5(mem_la_firstword_reg),
        .O(\mem_addr[5]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \mem_addr[6]_i_1 
       (.I0(mem_la_addr0[4]),
        .I1(mem_do_prefetch_reg_0),
        .I2(mem_do_rinst_reg_n_0),
        .I3(\reg_op1_reg_n_0_[6] ),
        .O(\mem_addr[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \mem_addr[7]_i_1 
       (.I0(mem_la_addr0[5]),
        .I1(mem_do_prefetch_reg_0),
        .I2(mem_do_rinst_reg_n_0),
        .I3(\reg_op1_reg_n_0_[7] ),
        .O(\mem_addr[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \mem_addr[8]_i_1 
       (.I0(mem_la_addr0[6]),
        .I1(mem_do_prefetch_reg_0),
        .I2(mem_do_rinst_reg_n_0),
        .I3(\reg_op1_reg_n_0_[8] ),
        .O(\mem_addr[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \mem_addr[9]_i_1 
       (.I0(mem_la_addr0[7]),
        .I1(mem_do_prefetch_reg_0),
        .I2(mem_do_rinst_reg_n_0),
        .I3(\reg_op1_reg_n_0_[9] ),
        .O(\mem_addr[9]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \mem_addr[9]_i_3 
       (.I0(\reg_next_pc_reg_n_0_[9] ),
        .I1(latched_store_reg_0),
        .I2(latched_branch_reg_0),
        .I3(\reg_out_reg_n_0_[9] ),
        .O(p_0_in__0[7]));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \mem_addr[9]_i_4 
       (.I0(\reg_next_pc_reg_n_0_[8] ),
        .I1(latched_store_reg_0),
        .I2(latched_branch_reg_0),
        .I3(\reg_out_reg_n_0_[8] ),
        .O(p_0_in__0[6]));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \mem_addr[9]_i_5 
       (.I0(\reg_next_pc_reg_n_0_[7] ),
        .I1(latched_store_reg_0),
        .I2(latched_branch_reg_0),
        .I3(\reg_out_reg_n_0_[7] ),
        .O(p_0_in__0[5]));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \mem_addr[9]_i_6 
       (.I0(\reg_next_pc_reg_n_0_[6] ),
        .I1(latched_store_reg_0),
        .I2(latched_branch_reg_0),
        .I3(\reg_out_reg_n_0_[6] ),
        .O(p_0_in__0[4]));
  FDRE \mem_addr_reg[10] 
       (.C(clk),
        .CE(\mem_addr[31]_i_1_n_0 ),
        .D(\mem_addr[10]_i_1_n_0 ),
        .Q(mem_axi_awaddr[8]),
        .R(1'b0));
  FDRE \mem_addr_reg[11] 
       (.C(clk),
        .CE(\mem_addr[31]_i_1_n_0 ),
        .D(\mem_addr[11]_i_1_n_0 ),
        .Q(mem_axi_awaddr[9]),
        .R(1'b0));
  FDRE \mem_addr_reg[12] 
       (.C(clk),
        .CE(\mem_addr[31]_i_1_n_0 ),
        .D(\mem_addr[12]_i_1_n_0 ),
        .Q(mem_axi_awaddr[10]),
        .R(1'b0));
  FDRE \mem_addr_reg[13] 
       (.C(clk),
        .CE(\mem_addr[31]_i_1_n_0 ),
        .D(\mem_addr[13]_i_1_n_0 ),
        .Q(mem_axi_awaddr[11]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \mem_addr_reg[13]_i_2 
       (.CI(\mem_addr_reg[9]_i_2_n_0 ),
        .CO({\mem_addr_reg[13]_i_2_n_0 ,\mem_addr_reg[13]_i_2_n_1 ,\mem_addr_reg[13]_i_2_n_2 ,\mem_addr_reg[13]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(mem_la_addr0[11:8]),
        .S(p_0_in__0[11:8]));
  FDRE \mem_addr_reg[14] 
       (.C(clk),
        .CE(\mem_addr[31]_i_1_n_0 ),
        .D(\mem_addr[14]_i_1_n_0 ),
        .Q(mem_axi_awaddr[12]),
        .R(1'b0));
  FDRE \mem_addr_reg[15] 
       (.C(clk),
        .CE(\mem_addr[31]_i_1_n_0 ),
        .D(\mem_addr[15]_i_1_n_0 ),
        .Q(mem_axi_awaddr[13]),
        .R(1'b0));
  FDRE \mem_addr_reg[16] 
       (.C(clk),
        .CE(\mem_addr[31]_i_1_n_0 ),
        .D(\mem_addr[16]_i_1_n_0 ),
        .Q(mem_axi_awaddr[14]),
        .R(1'b0));
  FDRE \mem_addr_reg[17] 
       (.C(clk),
        .CE(\mem_addr[31]_i_1_n_0 ),
        .D(\mem_addr[17]_i_1_n_0 ),
        .Q(mem_axi_awaddr[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \mem_addr_reg[17]_i_2 
       (.CI(\mem_addr_reg[13]_i_2_n_0 ),
        .CO({\mem_addr_reg[17]_i_2_n_0 ,\mem_addr_reg[17]_i_2_n_1 ,\mem_addr_reg[17]_i_2_n_2 ,\mem_addr_reg[17]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(mem_la_addr0[15:12]),
        .S(p_0_in__0[15:12]));
  FDRE \mem_addr_reg[18] 
       (.C(clk),
        .CE(\mem_addr[31]_i_1_n_0 ),
        .D(\mem_addr[18]_i_1_n_0 ),
        .Q(mem_axi_awaddr[16]),
        .R(1'b0));
  FDRE \mem_addr_reg[19] 
       (.C(clk),
        .CE(\mem_addr[31]_i_1_n_0 ),
        .D(\mem_addr[19]_i_1_n_0 ),
        .Q(mem_axi_awaddr[17]),
        .R(1'b0));
  FDRE \mem_addr_reg[20] 
       (.C(clk),
        .CE(\mem_addr[31]_i_1_n_0 ),
        .D(\mem_addr[20]_i_1_n_0 ),
        .Q(mem_axi_awaddr[18]),
        .R(1'b0));
  FDRE \mem_addr_reg[21] 
       (.C(clk),
        .CE(\mem_addr[31]_i_1_n_0 ),
        .D(\mem_addr[21]_i_1_n_0 ),
        .Q(mem_axi_awaddr[19]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \mem_addr_reg[21]_i_2 
       (.CI(\mem_addr_reg[17]_i_2_n_0 ),
        .CO({\mem_addr_reg[21]_i_2_n_0 ,\mem_addr_reg[21]_i_2_n_1 ,\mem_addr_reg[21]_i_2_n_2 ,\mem_addr_reg[21]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(mem_la_addr0[19:16]),
        .S(p_0_in__0[19:16]));
  FDRE \mem_addr_reg[22] 
       (.C(clk),
        .CE(\mem_addr[31]_i_1_n_0 ),
        .D(\mem_addr[22]_i_1_n_0 ),
        .Q(mem_axi_awaddr[20]),
        .R(1'b0));
  FDRE \mem_addr_reg[23] 
       (.C(clk),
        .CE(\mem_addr[31]_i_1_n_0 ),
        .D(\mem_addr[23]_i_1_n_0 ),
        .Q(mem_axi_awaddr[21]),
        .R(1'b0));
  FDRE \mem_addr_reg[24] 
       (.C(clk),
        .CE(\mem_addr[31]_i_1_n_0 ),
        .D(\mem_addr[24]_i_1_n_0 ),
        .Q(mem_axi_awaddr[22]),
        .R(1'b0));
  FDRE \mem_addr_reg[25] 
       (.C(clk),
        .CE(\mem_addr[31]_i_1_n_0 ),
        .D(\mem_addr[25]_i_1_n_0 ),
        .Q(mem_axi_awaddr[23]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \mem_addr_reg[25]_i_2 
       (.CI(\mem_addr_reg[21]_i_2_n_0 ),
        .CO({\mem_addr_reg[25]_i_2_n_0 ,\mem_addr_reg[25]_i_2_n_1 ,\mem_addr_reg[25]_i_2_n_2 ,\mem_addr_reg[25]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(mem_la_addr0[23:20]),
        .S(p_0_in__0[23:20]));
  FDRE \mem_addr_reg[26] 
       (.C(clk),
        .CE(\mem_addr[31]_i_1_n_0 ),
        .D(\mem_addr[26]_i_1_n_0 ),
        .Q(mem_axi_awaddr[24]),
        .R(1'b0));
  FDRE \mem_addr_reg[27] 
       (.C(clk),
        .CE(\mem_addr[31]_i_1_n_0 ),
        .D(\mem_addr[27]_i_1_n_0 ),
        .Q(mem_axi_awaddr[25]),
        .R(1'b0));
  FDRE \mem_addr_reg[28] 
       (.C(clk),
        .CE(\mem_addr[31]_i_1_n_0 ),
        .D(\mem_addr[28]_i_1_n_0 ),
        .Q(mem_axi_awaddr[26]),
        .R(1'b0));
  FDRE \mem_addr_reg[29] 
       (.C(clk),
        .CE(\mem_addr[31]_i_1_n_0 ),
        .D(\mem_addr[29]_i_1_n_0 ),
        .Q(mem_axi_awaddr[27]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \mem_addr_reg[29]_i_2 
       (.CI(\mem_addr_reg[25]_i_2_n_0 ),
        .CO({\mem_addr_reg[29]_i_2_n_0 ,\mem_addr_reg[29]_i_2_n_1 ,\mem_addr_reg[29]_i_2_n_2 ,\mem_addr_reg[29]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(mem_la_addr0[27:24]),
        .S(p_0_in__0[27:24]));
  FDRE \mem_addr_reg[2] 
       (.C(clk),
        .CE(\mem_addr[31]_i_1_n_0 ),
        .D(\mem_addr[2]_i_1_n_0 ),
        .Q(mem_axi_awaddr[0]),
        .R(1'b0));
  FDRE \mem_addr_reg[30] 
       (.C(clk),
        .CE(\mem_addr[31]_i_1_n_0 ),
        .D(\mem_addr[30]_i_1_n_0 ),
        .Q(mem_axi_awaddr[28]),
        .R(1'b0));
  FDRE \mem_addr_reg[31] 
       (.C(clk),
        .CE(\mem_addr[31]_i_1_n_0 ),
        .D(\mem_addr[31]_i_2_n_0 ),
        .Q(mem_axi_awaddr[29]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \mem_addr_reg[31]_i_4 
       (.CI(\mem_addr_reg[29]_i_2_n_0 ),
        .CO({\NLW_mem_addr_reg[31]_i_4_CO_UNCONNECTED [3:1],\mem_addr_reg[31]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_mem_addr_reg[31]_i_4_O_UNCONNECTED [3:2],mem_la_addr0[29:28]}),
        .S({1'b0,1'b0,p_0_in__0[29:28]}));
  FDRE \mem_addr_reg[3] 
       (.C(clk),
        .CE(\mem_addr[31]_i_1_n_0 ),
        .D(\mem_addr[3]_i_1_n_0 ),
        .Q(mem_axi_awaddr[1]),
        .R(1'b0));
  FDRE \mem_addr_reg[4] 
       (.C(clk),
        .CE(\mem_addr[31]_i_1_n_0 ),
        .D(\mem_addr[4]_i_1_n_0 ),
        .Q(mem_axi_awaddr[2]),
        .R(1'b0));
  FDRE \mem_addr_reg[5] 
       (.C(clk),
        .CE(\mem_addr[31]_i_1_n_0 ),
        .D(\mem_addr[5]_i_1_n_0 ),
        .Q(mem_axi_awaddr[3]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \mem_addr_reg[5]_i_2 
       (.CI(1'b0),
        .CO({\mem_addr_reg[5]_i_2_n_0 ,\mem_addr_reg[5]_i_2_n_1 ,\mem_addr_reg[5]_i_2_n_2 ,\mem_addr_reg[5]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,p_0_in__0[0]}),
        .O(mem_la_addr0[3:0]),
        .S({p_0_in__0[3:1],\mem_addr[5]_i_7_n_0 }));
  FDRE \mem_addr_reg[6] 
       (.C(clk),
        .CE(\mem_addr[31]_i_1_n_0 ),
        .D(\mem_addr[6]_i_1_n_0 ),
        .Q(mem_axi_awaddr[4]),
        .R(1'b0));
  FDRE \mem_addr_reg[7] 
       (.C(clk),
        .CE(\mem_addr[31]_i_1_n_0 ),
        .D(\mem_addr[7]_i_1_n_0 ),
        .Q(mem_axi_awaddr[5]),
        .R(1'b0));
  FDRE \mem_addr_reg[8] 
       (.C(clk),
        .CE(\mem_addr[31]_i_1_n_0 ),
        .D(\mem_addr[8]_i_1_n_0 ),
        .Q(mem_axi_awaddr[6]),
        .R(1'b0));
  FDRE \mem_addr_reg[9] 
       (.C(clk),
        .CE(\mem_addr[31]_i_1_n_0 ),
        .D(\mem_addr[9]_i_1_n_0 ),
        .Q(mem_axi_awaddr[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \mem_addr_reg[9]_i_2 
       (.CI(\mem_addr_reg[5]_i_2_n_0 ),
        .CO({\mem_addr_reg[9]_i_2_n_0 ,\mem_addr_reg[9]_i_2_n_1 ,\mem_addr_reg[9]_i_2_n_2 ,\mem_addr_reg[9]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(mem_la_addr0[7:4]),
        .S(p_0_in__0[7:4]));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    mem_axi_arvalid_INST_0
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(mem_valid),
        .I5(mem_axi_arvalid_0),
        .O(mem_axi_arvalid));
  LUT6 #(
    .INIT(64'h00000000FFFE0000)) 
    mem_axi_awvalid_INST_0
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(mem_valid),
        .I5(ack_awvalid),
        .O(mem_axi_awvalid));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    mem_axi_bready_INST_0
       (.I0(mem_valid),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(mem_axi_bready));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    mem_axi_rready_INST_0
       (.I0(mem_valid),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(mem_axi_rready));
  LUT6 #(
    .INIT(64'h00000000FFFE0000)) 
    mem_axi_wvalid_INST_0
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(mem_valid),
        .I5(mem_axi_wvalid_0),
        .O(mem_axi_wvalid));
  LUT6 #(
    .INIT(64'h000000002A2A2AEA)) 
    mem_do_prefetch_i_1
       (.I0(mem_do_prefetch_reg_0),
        .I1(irq_delay),
        .I2(mem_do_prefetch_i_2_n_0),
        .I3(instr_jalr),
        .I4(instr_retirq),
        .I5(mem_do_prefetch_i_3_n_0),
        .O(mem_do_prefetch_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT2 #(
    .INIT(4'h2)) 
    mem_do_prefetch_i_2
       (.I0(resetn),
        .I1(instr_jal),
        .O(mem_do_prefetch_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT2 #(
    .INIT(4'hB)) 
    mem_do_prefetch_i_3
       (.I0(mem_done),
        .I1(resetn),
        .O(mem_do_prefetch_i_3_n_0));
  FDRE mem_do_prefetch_reg
       (.C(clk),
        .CE(1'b1),
        .D(mem_do_prefetch_i_1_n_0),
        .Q(mem_do_prefetch_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    mem_do_rdata_i_2
       (.I0(\cpu_state_reg[6]_0 [2]),
        .I1(\cpu_state_reg[6]_0 [4]),
        .I2(\cpu_state_reg_n_0_[7] ),
        .I3(\cpu_state_reg[6]_0 [1]),
        .I4(mem_do_rdata),
        .I5(decoder_pseudo_trigger_i_2_n_0),
        .O(\cpu_state_reg[3]_0 ));
  FDRE mem_do_rdata_reg
       (.C(clk),
        .CE(1'b1),
        .D(mem_do_rdata_reg_1),
        .Q(mem_do_rdata),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAFAEAFAEAFAEAAAE)) 
    mem_do_rinst_i_1
       (.I0(mem_do_rinst_i_2_n_0),
        .I1(mem_do_rinst_reg_n_0),
        .I2(mem_do_prefetch_i_3_n_0),
        .I3(mem_do_rinst4_out),
        .I4(mem_do_rinst_i_4_n_0),
        .I5(mem_do_rinst_i_5_n_0),
        .O(mem_do_rinst_i_1_n_0));
  LUT6 #(
    .INIT(64'h2222222222222022)) 
    mem_do_rinst_i_10
       (.I0(\cpu_state_reg[6]_0 [4]),
        .I1(mem_do_rinst_i_14_n_0),
        .I2(irq_active_reg_0),
        .I3(decoder_trigger_reg_n_0),
        .I4(irq_delay_reg_n_0),
        .I5(\latched_rd[5]_i_4_n_0 ),
        .O(mem_do_rinst_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    mem_do_rinst_i_11
       (.I0(is_sb_sh_sw),
        .I1(\cpu_state_reg[6]_0 [3]),
        .I2(is_lui_auipc_jal),
        .I3(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .O(mem_do_rinst_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair206" *) 
  LUT2 #(
    .INIT(4'hB)) 
    mem_do_rinst_i_12
       (.I0(instr_waitirq),
        .I1(decoder_trigger_reg_n_0),
        .O(mem_do_rinst_i_12_n_0));
  LUT6 #(
    .INIT(64'hFF10FF10FF101010)) 
    mem_do_rinst_i_13
       (.I0(decoder_trigger_reg_n_0),
        .I1(do_waitirq_reg_n_0),
        .I2(\cpu_state_reg[6]_0 [4]),
        .I3(mem_do_prefetch_reg_0),
        .I4(\cpu_state_reg[6]_0 [3]),
        .I5(\cpu_state_reg_n_0_[2] ),
        .O(mem_do_rinst_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair211" *) 
  LUT2 #(
    .INIT(4'hE)) 
    mem_do_rinst_i_14
       (.I0(\irq_state_reg[0]_0 ),
        .I1(\irq_state_reg_n_0_[1] ),
        .O(mem_do_rinst_i_14_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    mem_do_rinst_i_2
       (.I0(resetn),
        .I1(is_beq_bne_blt_bge_bltu_bgeu_reg_0),
        .O(mem_do_rinst_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF8080FF80)) 
    mem_do_rinst_i_3
       (.I0(resetn),
        .I1(\cpu_state_reg[6]_0 [3]),
        .I2(\cpu_state[0]_i_2_n_0 ),
        .I3(mem_do_rinst_i_6_n_0),
        .I4(\cpu_state[1]_i_2_n_0 ),
        .I5(mem_do_rinst_i_7_n_0),
        .O(mem_do_rinst4_out));
  LUT6 #(
    .INIT(64'hFFFFFFFFFDCCDDCC)) 
    mem_do_rinst_i_4
       (.I0(latched_branch_i_4_n_0),
        .I1(mem_do_rinst_i_8_n_0),
        .I2(do_waitirq130_out),
        .I3(mem_do_rinst_i_10_n_0),
        .I4(do_waitirq1),
        .I5(mem_do_rinst_i_11_n_0),
        .O(mem_do_rinst_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8888888)) 
    mem_do_rinst_i_5
       (.I0(\cpu_state[0]_i_2_n_0 ),
        .I1(\cpu_state_reg[6]_0 [3]),
        .I2(\cpu_state_reg[6]_0 [4]),
        .I3(\irq_state_reg[0]_0 ),
        .I4(mem_do_rinst_i_12_n_0),
        .I5(mem_do_rinst_i_13_n_0),
        .O(mem_do_rinst_i_5_n_0));
  LUT5 #(
    .INIT(32'h000000B0)) 
    mem_do_rinst_i_6
       (.I0(is_sb_sh_sw),
        .I1(is_sll_srl_sra),
        .I2(resetn),
        .I3(is_slli_srli_srai),
        .I4(\cpu_state[1]_i_3_n_0 ),
        .O(mem_do_rinst_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFF0000EEEA0000)) 
    mem_do_rinst_i_7
       (.I0(\cpu_state_reg[6]_0 [4]),
        .I1(\cpu_state_reg[6]_0 [3]),
        .I2(is_lui_auipc_jal),
        .I3(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I4(resetn),
        .I5(\cpu_state[7]_i_6_n_0 ),
        .O(mem_do_rinst_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair211" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mem_do_rinst_i_8
       (.I0(\cpu_state_reg[6]_0 [4]),
        .I1(\irq_state_reg[0]_0 ),
        .O(mem_do_rinst_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    mem_do_rinst_i_9
       (.I0(do_waitirq_reg_n_0),
        .I1(decoder_trigger_reg_n_0),
        .I2(instr_waitirq),
        .O(do_waitirq130_out));
  FDRE mem_do_rinst_reg
       (.C(clk),
        .CE(1'b1),
        .D(mem_do_rinst_i_1_n_0),
        .Q(mem_do_rinst_reg_n_0),
        .R(1'b0));
  FDRE mem_do_wdata_reg
       (.C(clk),
        .CE(1'b1),
        .D(mem_do_wdata_reg_1),
        .Q(mem_do_wdata),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hE)) 
    mem_instr_i_2
       (.I0(\mem_state_reg_n_0_[0] ),
        .I1(\mem_state_reg_n_0_[1] ),
        .O(\mem_state_reg[0]_2 ));
  FDRE mem_instr_reg
       (.C(clk),
        .CE(1'b1),
        .D(mem_instr_reg_0),
        .Q(mem_axi_arprot),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_la_firstword_reg_i_1
       (.I0(mem_la_firstword_reg_reg_n_0),
        .I1(last_mem_valid),
        .I2(p_72_in),
        .O(mem_la_firstword_reg));
  LUT6 #(
    .INIT(64'h5454540000005400)) 
    mem_la_firstword_reg_i_2
       (.I0(mem_la_secondword),
        .I1(mem_do_prefetch_reg_0),
        .I2(mem_do_rinst_reg_n_0),
        .I3(\reg_out_reg_n_0_[1] ),
        .I4(\reg_pc[31]_i_3_n_0 ),
        .I5(\reg_next_pc_reg_n_0_[1] ),
        .O(p_72_in));
  FDRE mem_la_firstword_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(mem_la_firstword_reg),
        .Q(mem_la_firstword_reg_reg_n_0),
        .R(trap_i_1_n_0));
  LUT6 #(
    .INIT(64'h00000000AAEAAA2A)) 
    mem_la_secondword_i_1
       (.I0(mem_la_secondword),
        .I1(data10),
        .I2(\mem_state_reg_n_0_[0] ),
        .I3(\mem_state_reg_n_0_[1] ),
        .I4(resetn_0),
        .I5(trap_reg_1),
        .O(mem_la_secondword_i_1_n_0));
  FDRE mem_la_secondword_reg
       (.C(clk),
        .CE(1'b1),
        .D(mem_la_secondword_i_1_n_0),
        .Q(mem_la_secondword),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \mem_rdata_q[0]_i_1 
       (.I0(\mem_rdata_q[0]_i_2_n_0 ),
        .I1(\mem_rdata_q[11]_i_5_n_0 ),
        .I2(mem_axi_rdata[0]),
        .I3(\mem_rdata_q[11]_i_6_n_0 ),
        .I4(mem_axi_rdata[16]),
        .O(\mem_rdata_q[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mem_rdata_q[0]_i_2 
       (.I0(\mem_rdata_q[11]_i_7_n_0 ),
        .I1(\mem_rdata_q_reg_n_0_[0] ),
        .I2(\mem_rdata_q[11]_i_8_n_0 ),
        .I3(\mem_rdata_q_reg_n_0_[16] ),
        .I4(\mem_16bit_buffer_reg_n_0_[0] ),
        .I5(\mem_rdata_q[11]_i_9_n_0 ),
        .O(\mem_rdata_q[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \mem_rdata_q[10]_i_1 
       (.I0(\mem_rdata_q[10]_i_2_n_0 ),
        .I1(\mem_rdata_q[11]_i_5_n_0 ),
        .I2(mem_axi_rdata[10]),
        .I3(\mem_rdata_q[11]_i_6_n_0 ),
        .I4(mem_axi_rdata[26]),
        .O(p_3_in[0]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mem_rdata_q[10]_i_2 
       (.I0(\mem_rdata_q[11]_i_7_n_0 ),
        .I1(\mem_rdata_q_reg_n_0_[10] ),
        .I2(\mem_rdata_q[11]_i_8_n_0 ),
        .I3(\mem_rdata_q_reg_n_0_[26] ),
        .I4(\mem_16bit_buffer_reg_n_0_[10] ),
        .I5(\mem_rdata_q[11]_i_9_n_0 ),
        .O(\mem_rdata_q[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEEFEEEEEEEEEEEE)) 
    \mem_rdata_q[11]_i_1 
       (.I0(data10),
        .I1(\mem_rdata_q[11]_i_3_n_0 ),
        .I2(\mem_rdata_q[0]_i_1_n_0 ),
        .I3(\mem_rdata_q[1]_i_1_n_0 ),
        .I4(is_sb_sh_sw_i_5_n_0),
        .I5(mem_rdata_q164_out),
        .O(\mem_rdata_q[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \mem_rdata_q[11]_i_2 
       (.I0(\mem_rdata_q[11]_i_4_n_0 ),
        .I1(\mem_rdata_q[11]_i_5_n_0 ),
        .I2(mem_axi_rdata[11]),
        .I3(\mem_rdata_q[11]_i_6_n_0 ),
        .I4(mem_axi_rdata[27]),
        .O(p_3_in[1]));
  LUT6 #(
    .INIT(64'h00004000C0000000)) 
    \mem_rdata_q[11]_i_3 
       (.I0(p_5_in),
        .I1(\mem_axi_rdata[15] [0]),
        .I2(\mem_axi_rdata[15] [1]),
        .I3(mem_rdata_q164_out),
        .I4(\mem_rdata_q[0]_i_1_n_0 ),
        .I5(\mem_rdata_q[1]_i_1_n_0 ),
        .O(\mem_rdata_q[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mem_rdata_q[11]_i_4 
       (.I0(\mem_rdata_q[11]_i_7_n_0 ),
        .I1(\mem_rdata_q_reg_n_0_[11] ),
        .I2(\mem_rdata_q[11]_i_8_n_0 ),
        .I3(\mem_rdata_q_reg_n_0_[27] ),
        .I4(\mem_16bit_buffer_reg_n_0_[11] ),
        .I5(\mem_rdata_q[11]_i_9_n_0 ),
        .O(\mem_rdata_q[11]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00022222)) 
    \mem_rdata_q[11]_i_5 
       (.I0(\mem_rdata_q[6]_i_5_n_0 ),
        .I1(mem_la_secondword),
        .I2(mem_do_prefetch_reg_0),
        .I3(mem_do_rinst_reg_n_0),
        .I4(\mem_rdata_q[6]_i_4_n_0 ),
        .O(\mem_rdata_q[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022200000)) 
    \mem_rdata_q[11]_i_6 
       (.I0(\mem_rdata_q[6]_i_5_n_0 ),
        .I1(mem_la_secondword),
        .I2(mem_do_prefetch_reg_0),
        .I3(mem_do_rinst_reg_n_0),
        .I4(\mem_rdata_q[6]_i_4_n_0 ),
        .I5(\mem_rdata_q[6]_i_3_n_0 ),
        .O(\mem_rdata_q[11]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00011111)) 
    \mem_rdata_q[11]_i_7 
       (.I0(\mem_rdata_q[6]_i_5_n_0 ),
        .I1(mem_la_secondword),
        .I2(mem_do_prefetch_reg_0),
        .I3(mem_do_rinst_reg_n_0),
        .I4(\mem_rdata_q[6]_i_4_n_0 ),
        .O(\mem_rdata_q[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000011100000)) 
    \mem_rdata_q[11]_i_8 
       (.I0(\mem_rdata_q[6]_i_5_n_0 ),
        .I1(mem_la_secondword),
        .I2(mem_do_prefetch_reg_0),
        .I3(mem_do_rinst_reg_n_0),
        .I4(\mem_rdata_q[6]_i_4_n_0 ),
        .I5(\mem_rdata_q[6]_i_3_n_0 ),
        .O(\mem_rdata_q[11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFA8080000)) 
    \mem_rdata_q[11]_i_9 
       (.I0(mem_la_firstword1),
        .I1(\reg_out_reg_n_0_[1] ),
        .I2(\reg_pc[31]_i_3_n_0 ),
        .I3(\reg_next_pc_reg_n_0_[1] ),
        .I4(\mem_rdata_q[6]_i_3_n_0 ),
        .I5(mem_la_secondword),
        .O(\mem_rdata_q[11]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFAEAEAE)) 
    \mem_rdata_q[12]_i_1 
       (.I0(\mem_rdata_q[12]_i_2_n_0 ),
        .I1(\mem_rdata_q[12]_i_3_n_0 ),
        .I2(\mem_rdata_q[31]_i_9_n_0 ),
        .I3(\mem_rdata_q[14]_i_3_n_0 ),
        .I4(p_3_in[2]),
        .I5(\mem_rdata_q[12]_i_4_n_0 ),
        .O(\mem_rdata_q[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \mem_rdata_q[12]_i_2 
       (.I0(\mem_axi_rdata[15] [0]),
        .I1(\mem_rdata_q[1]_i_1_n_0 ),
        .I2(instr_jalr_i_3_n_0),
        .I3(p_3_in[2]),
        .I4(mem_rdata_q3),
        .O(\mem_rdata_q[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \mem_rdata_q[12]_i_3 
       (.I0(\mem_rdata_q[12]_i_5_n_0 ),
        .I1(\mem_rdata_q[19]_i_4_n_0 ),
        .I2(instr_jalr_i_4_n_0),
        .I3(\mem_rdata_q[12]_i_6_n_0 ),
        .I4(\mem_rdata_q[14]_i_5_n_0 ),
        .I5(\mem_rdata_q[12]_i_7_n_0 ),
        .O(\mem_rdata_q[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \mem_rdata_q[12]_i_4 
       (.I0(\mem_axi_rdata[15] [0]),
        .I1(\mem_axi_rdata[15] [1]),
        .I2(\mem_rdata_q[1]_i_1_n_0 ),
        .I3(\mem_rdata_q[0]_i_1_n_0 ),
        .I4(p_5_in),
        .I5(mem_rdata_q164_out),
        .O(\mem_rdata_q[12]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \mem_rdata_q[12]_i_5 
       (.I0(\mem_axi_rdata[15] [0]),
        .I1(p_11_in),
        .I2(p_5_in),
        .O(\mem_rdata_q[12]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mem_rdata_q[12]_i_6 
       (.I0(p_12_in),
        .I1(p_10_in),
        .O(\mem_rdata_q[12]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h8A80)) 
    \mem_rdata_q[12]_i_7 
       (.I0(p_5_in),
        .I1(\mem_axi_rdata[15] [1]),
        .I2(\mem_axi_rdata[15] [0]),
        .I3(p_3_in[2]),
        .O(\mem_rdata_q[12]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEEEEEEE)) 
    \mem_rdata_q[13]_i_1 
       (.I0(\mem_rdata_q[13]_i_2_n_0 ),
        .I1(\mem_rdata_q[13]_i_3_n_0 ),
        .I2(\mem_rdata_q[0]_i_1_n_0 ),
        .I3(p_5_in),
        .I4(\mem_rdata_q[13]_i_4_n_0 ),
        .I5(\mem_rdata_q[13]_i_5_n_0 ),
        .O(\mem_rdata_q[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hF888F0F0)) 
    \mem_rdata_q[13]_i_2 
       (.I0(\mem_axi_rdata[15] [0]),
        .I1(instr_lui_i_4_n_0),
        .I2(p_5_in),
        .I3(\mem_rdata_q[1]_i_1_n_0 ),
        .I4(mem_rdata_q164_out),
        .O(\mem_rdata_q[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0200000033000000)) 
    \mem_rdata_q[13]_i_3 
       (.I0(p_10_in),
        .I1(\mem_rdata_q[31]_i_9_n_0 ),
        .I2(p_3_in[2]),
        .I3(instr_jalr_i_4_n_0),
        .I4(p_3_in[1]),
        .I5(p_3_in[0]),
        .O(\mem_rdata_q[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF80AA80AA80AA)) 
    \mem_rdata_q[13]_i_4 
       (.I0(\mem_rdata_q[13]_i_6_n_0 ),
        .I1(\mem_rdata_q[19]_i_4_n_0 ),
        .I2(\decoded_rd[1]_i_2_n_0 ),
        .I3(\mem_rdata_q[30]_i_5_n_0 ),
        .I4(p_3_in[1]),
        .I5(\mem_rdata_q[14]_i_5_n_0 ),
        .O(\mem_rdata_q[13]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h0F0F0200)) 
    \mem_rdata_q[13]_i_5 
       (.I0(mem_rdata_q164_out),
        .I1(\mem_rdata_q[1]_i_1_n_0 ),
        .I2(\mem_rdata_q[0]_i_1_n_0 ),
        .I3(\mem_axi_rdata[15] [0]),
        .I4(p_5_in),
        .O(\mem_rdata_q[13]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \mem_rdata_q[13]_i_6 
       (.I0(is_lb_lh_lw_lbu_lhu_i_4_n_0),
        .I1(instr_jal_i_5_n_0),
        .I2(\mem_rdata_q[30]_i_6_n_0 ),
        .I3(instr_jal_i_6_n_0),
        .O(\mem_rdata_q[13]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF2F2F2)) 
    \mem_rdata_q[14]_i_1 
       (.I0(p_13_in[1]),
        .I1(\mem_rdata_q[19]_i_7_n_0 ),
        .I2(\mem_rdata_q[14]_i_2_n_0 ),
        .I3(\mem_axi_rdata[15] [0]),
        .I4(\mem_rdata_q[14]_i_3_n_0 ),
        .I5(\mem_rdata_q[14]_i_4_n_0 ),
        .O(\mem_rdata_q[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT4 #(
    .INIT(16'h0070)) 
    \mem_rdata_q[14]_i_2 
       (.I0(p_3_in[0]),
        .I1(p_3_in[1]),
        .I2(\mem_rdata_q[14]_i_5_n_0 ),
        .I3(\mem_rdata_q[31]_i_9_n_0 ),
        .O(\mem_rdata_q[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF0F0FFF0F2F)) 
    \mem_rdata_q[14]_i_3 
       (.I0(\mem_axi_rdata[15] [1]),
        .I1(\mem_axi_rdata[15] [0]),
        .I2(mem_rdata_q164_out),
        .I3(\mem_rdata_q[0]_i_1_n_0 ),
        .I4(p_5_in),
        .I5(\mem_rdata_q[1]_i_1_n_0 ),
        .O(\mem_rdata_q[14]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT5 #(
    .INIT(32'h54000000)) 
    \mem_rdata_q[14]_i_4 
       (.I0(\mem_rdata_q[31]_i_9_n_0 ),
        .I1(p_12_in),
        .I2(p_10_in),
        .I3(\mem_rdata_q[31]_i_17_n_0 ),
        .I4(instr_jalr_i_4_n_0),
        .O(\mem_rdata_q[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h1000101010101010)) 
    \mem_rdata_q[14]_i_5 
       (.I0(p_5_in),
        .I1(\mem_axi_rdata[15] [0]),
        .I2(\mem_axi_rdata[15] [1]),
        .I3(p_3_in[2]),
        .I4(p_3_in[0]),
        .I5(p_3_in[1]),
        .O(\mem_rdata_q[14]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF40000000)) 
    \mem_rdata_q[15]_i_1 
       (.I0(\mem_rdata_q[31]_i_9_n_0 ),
        .I1(\mem_axi_rdata[15] [0]),
        .I2(p_5_in),
        .I3(p_12_in),
        .I4(\mem_rdata_q[19]_i_4_n_0 ),
        .I5(\mem_axi_rdata[15] [1]),
        .O(\mem_rdata_q[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_rdata_q[16]_i_1 
       (.I0(\mem_rdata_q[16]_i_2_n_0 ),
        .I1(\mem_rdata_q[19]_i_7_n_0 ),
        .I2(p_10_in),
        .O(\mem_rdata_q[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \mem_rdata_q[16]_i_2 
       (.I0(\mem_rdata_q[11]_i_5_n_0 ),
        .I1(mem_axi_rdata[16]),
        .I2(instr_retirq_i_6_n_0),
        .I3(mem_axi_rdata[0]),
        .I4(\mem_rdata_q[16]_i_3_n_0 ),
        .O(\mem_rdata_q[16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF404040)) 
    \mem_rdata_q[16]_i_3 
       (.I0(\mem_rdata_q[6]_i_5_n_0 ),
        .I1(mem_la_secondword),
        .I2(\mem_rdata_q_reg_n_0_[0] ),
        .I3(\mem_rdata_q_reg_n_0_[16] ),
        .I4(\mem_rdata_q[11]_i_7_n_0 ),
        .O(\mem_rdata_q[16]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_rdata_q[17]_i_1 
       (.I0(\mem_rdata_q[17]_i_2_n_0 ),
        .I1(\mem_rdata_q[19]_i_7_n_0 ),
        .I2(p_3_in[2]),
        .O(\mem_rdata_q[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \mem_rdata_q[17]_i_2 
       (.I0(\mem_rdata_q[11]_i_5_n_0 ),
        .I1(mem_axi_rdata[17]),
        .I2(instr_retirq_i_6_n_0),
        .I3(mem_axi_rdata[1]),
        .I4(\mem_rdata_q[17]_i_3_n_0 ),
        .O(\mem_rdata_q[17]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF404040)) 
    \mem_rdata_q[17]_i_3 
       (.I0(\mem_rdata_q[6]_i_5_n_0 ),
        .I1(mem_la_secondword),
        .I2(\mem_rdata_q_reg_n_0_[1] ),
        .I3(\mem_rdata_q_reg_n_0_[17] ),
        .I4(\mem_rdata_q[11]_i_7_n_0 ),
        .O(\mem_rdata_q[17]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_rdata_q[18]_i_1 
       (.I0(\mem_rdata_q[18]_i_2_n_0 ),
        .I1(\mem_rdata_q[19]_i_7_n_0 ),
        .I2(p_3_in[2]),
        .O(\mem_rdata_q[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \mem_rdata_q[18]_i_2 
       (.I0(\mem_rdata_q[11]_i_5_n_0 ),
        .I1(mem_axi_rdata[18]),
        .I2(instr_retirq_i_6_n_0),
        .I3(mem_axi_rdata[2]),
        .I4(\mem_rdata_q[18]_i_3_n_0 ),
        .O(\mem_rdata_q[18]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF404040)) 
    \mem_rdata_q[18]_i_3 
       (.I0(\mem_rdata_q[6]_i_5_n_0 ),
        .I1(mem_la_secondword),
        .I2(\mem_rdata_q_reg_n_0_[2] ),
        .I3(\mem_rdata_q_reg_n_0_[18] ),
        .I4(\mem_rdata_q[11]_i_7_n_0 ),
        .O(\mem_rdata_q[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAEAAAAAAA)) 
    \mem_rdata_q[19]_i_1 
       (.I0(data10),
        .I1(\mem_rdata_q[19]_i_3_n_0 ),
        .I2(\mem_rdata_q[19]_i_4_n_0 ),
        .I3(p_5_in),
        .I4(\mem_axi_rdata[15] [0]),
        .I5(\mem_axi_rdata[15] [1]),
        .O(\mem_rdata_q[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_rdata_q[19]_i_2 
       (.I0(\mem_rdata_q[19]_i_6_n_0 ),
        .I1(\mem_rdata_q[19]_i_7_n_0 ),
        .I2(p_3_in[2]),
        .O(\mem_rdata_q[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000088080000)) 
    \mem_rdata_q[19]_i_3 
       (.I0(mem_la_firstword1),
        .I1(\mem_rdata_q[31]_i_22_n_0 ),
        .I2(p_72_in),
        .I3(data10),
        .I4(\mem_rdata_q[0]_i_1_n_0 ),
        .I5(\mem_rdata_q[1]_i_1_n_0 ),
        .O(\mem_rdata_q[19]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \mem_rdata_q[19]_i_4 
       (.I0(p_3_in[1]),
        .I1(p_3_in[0]),
        .I2(\mem_rdata_q[7]_i_2_n_0 ),
        .I3(\mem_rdata_q[9]_i_3_n_0 ),
        .I4(\mem_rdata_q[8]_i_2_n_0 ),
        .O(\mem_rdata_q[19]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \mem_rdata_q[19]_i_5 
       (.I0(\mem_rdata_q[19]_i_8_n_0 ),
        .I1(\mem_rdata_q[11]_i_5_n_0 ),
        .I2(mem_axi_rdata[15]),
        .I3(\mem_rdata_q[11]_i_6_n_0 ),
        .I4(mem_axi_rdata[31]),
        .O(\mem_axi_rdata[15] [1]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \mem_rdata_q[19]_i_6 
       (.I0(\mem_rdata_q[11]_i_5_n_0 ),
        .I1(mem_axi_rdata[19]),
        .I2(instr_retirq_i_6_n_0),
        .I3(mem_axi_rdata[3]),
        .I4(\mem_rdata_q[19]_i_9_n_0 ),
        .O(\mem_rdata_q[19]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFFFFFF7F)) 
    \mem_rdata_q[19]_i_7 
       (.I0(\mem_rdata_q[19]_i_4_n_0 ),
        .I1(p_5_in),
        .I2(\mem_axi_rdata[15] [0]),
        .I3(\mem_axi_rdata[15] [1]),
        .I4(\mem_rdata_q[31]_i_9_n_0 ),
        .O(\mem_rdata_q[19]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mem_rdata_q[19]_i_8 
       (.I0(\mem_rdata_q[11]_i_7_n_0 ),
        .I1(\mem_rdata_q_reg_n_0_[15] ),
        .I2(\mem_rdata_q[11]_i_8_n_0 ),
        .I3(\mem_rdata_q_reg_n_0_[31] ),
        .I4(\mem_16bit_buffer_reg_n_0_[15] ),
        .I5(\mem_rdata_q[11]_i_9_n_0 ),
        .O(\mem_rdata_q[19]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFF404040)) 
    \mem_rdata_q[19]_i_9 
       (.I0(\mem_rdata_q[6]_i_5_n_0 ),
        .I1(mem_la_secondword),
        .I2(\mem_rdata_q_reg_n_0_[3] ),
        .I3(\mem_rdata_q_reg_n_0_[19] ),
        .I4(\mem_rdata_q[11]_i_7_n_0 ),
        .O(\mem_rdata_q[19]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \mem_rdata_q[1]_i_1 
       (.I0(\mem_rdata_q[1]_i_2_n_0 ),
        .I1(\mem_rdata_q[11]_i_5_n_0 ),
        .I2(mem_axi_rdata[1]),
        .I3(\mem_rdata_q[11]_i_6_n_0 ),
        .I4(mem_axi_rdata[17]),
        .O(\mem_rdata_q[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mem_rdata_q[1]_i_2 
       (.I0(\mem_rdata_q[11]_i_7_n_0 ),
        .I1(\mem_rdata_q_reg_n_0_[1] ),
        .I2(\mem_rdata_q[11]_i_8_n_0 ),
        .I3(\mem_rdata_q_reg_n_0_[17] ),
        .I4(\mem_16bit_buffer_reg_n_0_[1] ),
        .I5(\mem_rdata_q[11]_i_9_n_0 ),
        .O(\mem_rdata_q[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF554455545544)) 
    \mem_rdata_q[20]_i_1 
       (.I0(\mem_rdata_q[31]_i_9_n_0 ),
        .I1(\mem_rdata_q[21]_i_2_n_0 ),
        .I2(\mem_rdata_q[21]_i_3_n_0 ),
        .I3(\mem_rdata_q[20]_i_2_n_0 ),
        .I4(\mem_rdata_q[20]_i_3_n_0 ),
        .I5(\mem_rdata_q[23]_i_5_n_0 ),
        .O(\mem_rdata_q[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mem_rdata_q[20]_i_2 
       (.I0(\mem_rdata_q[23]_i_8_n_0 ),
        .I1(p_11_in),
        .O(\mem_rdata_q[20]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \mem_rdata_q[20]_i_3 
       (.I0(\mem_rdata_q[11]_i_5_n_0 ),
        .I1(mem_axi_rdata[20]),
        .I2(instr_retirq_i_6_n_0),
        .I3(mem_axi_rdata[4]),
        .I4(\mem_rdata_q[20]_i_4_n_0 ),
        .O(\mem_rdata_q[20]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFF404040)) 
    \mem_rdata_q[20]_i_4 
       (.I0(\mem_rdata_q[6]_i_5_n_0 ),
        .I1(mem_la_secondword),
        .I2(\mem_rdata_q_reg_n_0_[4] ),
        .I3(\mem_rdata_q_reg_n_0_[20] ),
        .I4(\mem_rdata_q[11]_i_7_n_0 ),
        .O(\mem_rdata_q[20]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF554455545544)) 
    \mem_rdata_q[21]_i_1 
       (.I0(\mem_rdata_q[31]_i_9_n_0 ),
        .I1(\mem_rdata_q[21]_i_2_n_0 ),
        .I2(\mem_rdata_q[21]_i_3_n_0 ),
        .I3(\mem_rdata_q[21]_i_4_n_0 ),
        .I4(\mem_rdata_q[21]_i_5_n_0 ),
        .I5(\mem_rdata_q[23]_i_5_n_0 ),
        .O(\mem_rdata_q[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \mem_rdata_q[21]_i_10 
       (.I0(mem_axi_rdata[25]),
        .I1(\mem_rdata_q[11]_i_6_n_0 ),
        .I2(mem_axi_rdata[9]),
        .I3(\mem_rdata_q[11]_i_5_n_0 ),
        .O(\mem_rdata_q[21]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAA20000)) 
    \mem_rdata_q[21]_i_2 
       (.I0(p_3_in[2]),
        .I1(\mem_rdata_q[8]_i_2_n_0 ),
        .I2(\mem_rdata_q[21]_i_6_n_0 ),
        .I3(p_3_in[1]),
        .I4(p_5_in),
        .I5(\mem_rdata_q[21]_i_7_n_0 ),
        .O(\mem_rdata_q[21]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hF4F4E4F4)) 
    \mem_rdata_q[21]_i_3 
       (.I0(\mem_axi_rdata[15] [0]),
        .I1(p_5_in),
        .I2(\mem_axi_rdata[15] [1]),
        .I3(p_3_in[1]),
        .I4(p_3_in[0]),
        .O(\mem_rdata_q[21]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mem_rdata_q[21]_i_4 
       (.I0(\mem_rdata_q[23]_i_8_n_0 ),
        .I1(p_13_in[0]),
        .O(\mem_rdata_q[21]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \mem_rdata_q[21]_i_5 
       (.I0(\mem_rdata_q[11]_i_5_n_0 ),
        .I1(mem_axi_rdata[21]),
        .I2(instr_retirq_i_6_n_0),
        .I3(mem_axi_rdata[5]),
        .I4(\mem_rdata_q[21]_i_8_n_0 ),
        .O(\mem_rdata_q[21]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \mem_rdata_q[21]_i_6 
       (.I0(\mem_rdata_q[10]_i_2_n_0 ),
        .I1(\mem_rdata_q[31]_i_14_n_0 ),
        .I2(\mem_rdata_q[7]_i_3_n_0 ),
        .I3(\mem_rdata_q[21]_i_9_n_0 ),
        .I4(\mem_rdata_q[21]_i_10_n_0 ),
        .I5(\mem_rdata_q[9]_i_6_n_0 ),
        .O(\mem_rdata_q[21]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFF1)) 
    \mem_rdata_q[21]_i_7 
       (.I0(\mem_rdata_q[30]_i_6_n_0 ),
        .I1(instr_jal_i_6_n_0),
        .I2(is_lb_lh_lw_lbu_lhu_i_5_n_0),
        .I3(\mem_rdata_q[19]_i_8_n_0 ),
        .O(\mem_rdata_q[21]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFF404040)) 
    \mem_rdata_q[21]_i_8 
       (.I0(\mem_rdata_q[6]_i_5_n_0 ),
        .I1(mem_la_secondword),
        .I2(\mem_rdata_q_reg_n_0_[5] ),
        .I3(\mem_rdata_q_reg_n_0_[21] ),
        .I4(\mem_rdata_q[11]_i_7_n_0 ),
        .O(\mem_rdata_q[21]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \mem_rdata_q[21]_i_9 
       (.I0(mem_axi_rdata[23]),
        .I1(\mem_rdata_q[11]_i_6_n_0 ),
        .I2(mem_axi_rdata[7]),
        .I3(\mem_rdata_q[11]_i_5_n_0 ),
        .O(\mem_rdata_q[21]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF2F2F2)) 
    \mem_rdata_q[22]_i_1 
       (.I0(\mem_rdata_q[22]_i_2_n_0 ),
        .I1(\mem_rdata_q[31]_i_9_n_0 ),
        .I2(\mem_rdata_q[22]_i_3_n_0 ),
        .I3(\mem_rdata_q[23]_i_5_n_0 ),
        .I4(\mem_rdata_q[22]_i_4_n_0 ),
        .I5(\mem_rdata_q[22]_i_5_n_0 ),
        .O(\mem_rdata_q[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \mem_rdata_q[22]_i_2 
       (.I0(p_3_in[2]),
        .I1(\mem_rdata_q[24]_i_14_n_0 ),
        .I2(\mem_rdata_q[21]_i_3_n_0 ),
        .I3(\mem_rdata_q[22]_i_4_n_0 ),
        .I4(p_13_in[1]),
        .I5(\mem_rdata_q[23]_i_8_n_0 ),
        .O(\mem_rdata_q[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \mem_rdata_q[22]_i_3 
       (.I0(\mem_rdata_q[1]_i_1_n_0 ),
        .I1(\mem_axi_rdata[15] [1]),
        .I2(\mem_rdata_q[31]_i_20_n_0 ),
        .I3(\mem_rdata_q[0]_i_1_n_0 ),
        .I4(p_5_in),
        .I5(p_13_in[1]),
        .O(\mem_rdata_q[22]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \mem_rdata_q[22]_i_4 
       (.I0(\mem_rdata_q[11]_i_5_n_0 ),
        .I1(mem_axi_rdata[22]),
        .I2(instr_retirq_i_6_n_0),
        .I3(mem_axi_rdata[6]),
        .I4(\mem_rdata_q[22]_i_6_n_0 ),
        .O(\mem_rdata_q[22]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \mem_rdata_q[22]_i_5 
       (.I0(p_5_in),
        .I1(\mem_axi_rdata[15] [1]),
        .I2(mem_rdata_q164_out),
        .I3(\mem_rdata_q[1]_i_1_n_0 ),
        .I4(\mem_rdata_q[0]_i_1_n_0 ),
        .I5(p_10_in),
        .O(\mem_rdata_q[22]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFF404040)) 
    \mem_rdata_q[22]_i_6 
       (.I0(\mem_rdata_q[6]_i_5_n_0 ),
        .I1(mem_la_secondword),
        .I2(\mem_rdata_q_reg_n_0_[6] ),
        .I3(\mem_rdata_q_reg_n_0_[22] ),
        .I4(\mem_rdata_q[11]_i_7_n_0 ),
        .O(\mem_rdata_q[22]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \mem_rdata_q[23]_i_1 
       (.I0(\mem_rdata_q[23]_i_2_n_0 ),
        .I1(\mem_rdata_q[23]_i_3_n_0 ),
        .I2(\mem_rdata_q[23]_i_4_n_0 ),
        .I3(\mem_rdata_q[23]_i_5_n_0 ),
        .I4(\mem_rdata_q[23]_i_6_n_0 ),
        .I5(\mem_rdata_q[23]_i_7_n_0 ),
        .O(\mem_rdata_q[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT4 #(
    .INIT(16'h1110)) 
    \mem_rdata_q[23]_i_10 
       (.I0(\mem_rdata_q[1]_i_1_n_0 ),
        .I1(\mem_rdata_q[0]_i_1_n_0 ),
        .I2(\mem_axi_rdata[15] [1]),
        .I3(p_5_in),
        .O(\mem_rdata_q[23]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFF888)) 
    \mem_rdata_q[23]_i_2 
       (.I0(\mem_rdata_q[23]_i_8_n_0 ),
        .I1(p_12_in),
        .I2(\mem_rdata_q[23]_i_4_n_0 ),
        .I3(\mem_rdata_q[21]_i_3_n_0 ),
        .I4(\mem_rdata_q[21]_i_2_n_0 ),
        .I5(\mem_rdata_q[31]_i_9_n_0 ),
        .O(\mem_rdata_q[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    \mem_rdata_q[23]_i_3 
       (.I0(\mem_axi_rdata[15] [0]),
        .I1(p_12_in),
        .I2(p_5_in),
        .I3(\mem_axi_rdata[15] [1]),
        .I4(mem_rdata_q164_out),
        .I5(\mem_rdata_q[26]_i_7_n_0 ),
        .O(\mem_rdata_q[23]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \mem_rdata_q[23]_i_4 
       (.I0(\mem_rdata_q[11]_i_5_n_0 ),
        .I1(mem_axi_rdata[23]),
        .I2(instr_retirq_i_6_n_0),
        .I3(mem_axi_rdata[7]),
        .I4(\mem_rdata_q[23]_i_9_n_0 ),
        .O(\mem_rdata_q[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFEFAFBFAFFFAFBFA)) 
    \mem_rdata_q[23]_i_5 
       (.I0(\mem_rdata_q[26]_i_8_n_0 ),
        .I1(\mem_axi_rdata[15] [0]),
        .I2(\mem_rdata_q[23]_i_10_n_0 ),
        .I3(\mem_rdata_q[1]_i_1_n_0 ),
        .I4(\mem_axi_rdata[15] [1]),
        .I5(\mem_rdata_q[31]_i_16_n_0 ),
        .O(\mem_rdata_q[23]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \mem_rdata_q[23]_i_6 
       (.I0(p_3_in[0]),
        .I1(\mem_axi_rdata[15] [0]),
        .I2(p_5_in),
        .I3(\mem_axi_rdata[15] [1]),
        .I4(mem_rdata_q164_out),
        .I5(\mem_rdata_q[26]_i_7_n_0 ),
        .O(\mem_rdata_q[23]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \mem_rdata_q[23]_i_7 
       (.I0(\mem_rdata_q[1]_i_1_n_0 ),
        .I1(\mem_axi_rdata[15] [1]),
        .I2(\mem_rdata_q[31]_i_20_n_0 ),
        .I3(\mem_rdata_q[0]_i_1_n_0 ),
        .I4(p_5_in),
        .I5(p_12_in),
        .O(\mem_rdata_q[23]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h00000F4F)) 
    \mem_rdata_q[23]_i_8 
       (.I0(p_3_in[0]),
        .I1(p_3_in[1]),
        .I2(\mem_axi_rdata[15] [1]),
        .I3(\mem_axi_rdata[15] [0]),
        .I4(p_5_in),
        .O(\mem_rdata_q[23]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFF404040)) 
    \mem_rdata_q[23]_i_9 
       (.I0(\mem_rdata_q[6]_i_5_n_0 ),
        .I1(mem_la_secondword),
        .I2(\mem_rdata_q_reg_n_0_[7] ),
        .I3(\mem_rdata_q_reg_n_0_[23] ),
        .I4(\mem_rdata_q[11]_i_7_n_0 ),
        .O(\mem_rdata_q[23]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEA)) 
    \mem_rdata_q[24]_i_1 
       (.I0(data10),
        .I1(mem_rdata_q164_out),
        .I2(\mem_rdata_q[24]_i_4_n_0 ),
        .I3(\mem_rdata_q[24]_i_5_n_0 ),
        .I4(\mem_rdata_q[24]_i_6_n_0 ),
        .I5(\mem_rdata_q[24]_i_7_n_0 ),
        .O(\mem_rdata_q[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000A2A0A000A2A)) 
    \mem_rdata_q[24]_i_10 
       (.I0(\mem_rdata_q[24]_i_15_n_0 ),
        .I1(\mem_rdata_q[24]_i_13_n_0 ),
        .I2(\mem_axi_rdata[15] [1]),
        .I3(\mem_axi_rdata[15] [0]),
        .I4(p_5_in),
        .I5(\mem_rdata_q[19]_i_4_n_0 ),
        .O(\mem_rdata_q[24]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \mem_rdata_q[24]_i_11 
       (.I0(\mem_rdata_q[1]_i_1_n_0 ),
        .I1(\mem_axi_rdata[15] [1]),
        .I2(\mem_rdata_q[31]_i_20_n_0 ),
        .I3(\mem_rdata_q[0]_i_1_n_0 ),
        .I4(p_5_in),
        .I5(p_10_in),
        .O(\mem_rdata_q[24]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCC0004C00)) 
    \mem_rdata_q[24]_i_12 
       (.I0(\mem_rdata_q[31]_i_16_n_0 ),
        .I1(\decoded_imm_uj[4]_i_2_n_0 ),
        .I2(\mem_axi_rdata[15] [1]),
        .I3(\mem_rdata_q[1]_i_1_n_0 ),
        .I4(\mem_axi_rdata[15] [0]),
        .I5(\mem_rdata_q[26]_i_8_n_0 ),
        .O(\mem_rdata_q[24]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \mem_rdata_q[24]_i_13 
       (.I0(p_3_in[0]),
        .I1(p_3_in[1]),
        .O(\mem_rdata_q[24]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAAA)) 
    \mem_rdata_q[24]_i_14 
       (.I0(\mem_rdata_q[24]_i_16_n_0 ),
        .I1(p_3_in[1]),
        .I2(p_3_in[0]),
        .I3(\mem_rdata_q[7]_i_2_n_0 ),
        .I4(\mem_rdata_q[9]_i_3_n_0 ),
        .I5(\mem_rdata_q[8]_i_2_n_0 ),
        .O(\mem_rdata_q[24]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mem_rdata_q[24]_i_15 
       (.I0(\mem_rdata_q[0]_i_1_n_0 ),
        .I1(p_10_in),
        .O(\mem_rdata_q[24]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hEEEFEEEFEEEFFFFF)) 
    \mem_rdata_q[24]_i_16 
       (.I0(\mem_rdata_q[19]_i_8_n_0 ),
        .I1(is_lb_lh_lw_lbu_lhu_i_5_n_0),
        .I2(instr_jal_i_6_n_0),
        .I3(\mem_rdata_q[30]_i_6_n_0 ),
        .I4(is_lb_lh_lw_lbu_lhu_i_4_n_0),
        .I5(instr_jal_i_5_n_0),
        .O(\mem_rdata_q[24]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF00FE)) 
    \mem_rdata_q[24]_i_2 
       (.I0(\mem_rdata_q[24]_i_8_n_0 ),
        .I1(\mem_rdata_q[24]_i_9_n_0 ),
        .I2(\mem_rdata_q[24]_i_10_n_0 ),
        .I3(\mem_rdata_q[29]_i_2_n_0 ),
        .I4(\mem_rdata_q[24]_i_11_n_0 ),
        .I5(\mem_rdata_q[24]_i_12_n_0 ),
        .O(\mem_rdata_q[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8F00000000000000)) 
    \mem_rdata_q[24]_i_3 
       (.I0(data10),
        .I1(compressed_instr_i_1_n_0),
        .I2(p_72_in),
        .I3(mem_done17_out),
        .I4(resetn),
        .I5(mem_la_firstword1),
        .O(mem_rdata_q164_out));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \mem_rdata_q[24]_i_4 
       (.I0(\mem_axi_rdata[15] [1]),
        .I1(p_5_in),
        .I2(\mem_rdata_q[1]_i_1_n_0 ),
        .I3(\mem_rdata_q[0]_i_1_n_0 ),
        .O(\mem_rdata_q[24]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00130000)) 
    \mem_rdata_q[24]_i_5 
       (.I0(\mem_rdata_q[24]_i_13_n_0 ),
        .I1(p_5_in),
        .I2(\mem_axi_rdata[15] [1]),
        .I3(\mem_axi_rdata[15] [0]),
        .I4(\mem_rdata_q[19]_i_3_n_0 ),
        .O(\mem_rdata_q[24]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    \mem_rdata_q[24]_i_6 
       (.I0(mem_rdata_q164_out),
        .I1(p_5_in),
        .I2(\mem_axi_rdata[15] [0]),
        .I3(instr_lui_i_4_n_0),
        .I4(\mem_axi_rdata[15] [1]),
        .I5(\mem_rdata_q[31]_i_16_n_0 ),
        .O(\mem_rdata_q[24]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000880800)) 
    \mem_rdata_q[24]_i_7 
       (.I0(mem_rdata_q164_out),
        .I1(\mem_axi_rdata[15] [0]),
        .I2(p_5_in),
        .I3(\mem_rdata_q[1]_i_1_n_0 ),
        .I4(\mem_rdata_q[0]_i_1_n_0 ),
        .I5(\mem_axi_rdata[15] [1]),
        .O(\mem_rdata_q[24]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hF4004400)) 
    \mem_rdata_q[24]_i_8 
       (.I0(\mem_rdata_q[24]_i_14_n_0 ),
        .I1(p_3_in[2]),
        .I2(\mem_rdata_q[21]_i_3_n_0 ),
        .I3(\mem_rdata_q[0]_i_1_n_0 ),
        .I4(\decoded_imm_uj[4]_i_2_n_0 ),
        .O(\mem_rdata_q[24]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h0000CCCA)) 
    \mem_rdata_q[24]_i_9 
       (.I0(p_3_in[1]),
        .I1(\decoded_imm_uj[4]_i_2_n_0 ),
        .I2(\mem_axi_rdata[15] [1]),
        .I3(p_5_in),
        .I4(\mem_rdata_q[0]_i_1_n_0 ),
        .O(\mem_rdata_q[24]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF0E)) 
    \mem_rdata_q[25]_i_1 
       (.I0(\mem_rdata_q[25]_i_2_n_0 ),
        .I1(\mem_rdata_q[25]_i_3_n_0 ),
        .I2(\mem_rdata_q[31]_i_9_n_0 ),
        .I3(\mem_rdata_q[25]_i_4_n_0 ),
        .I4(\mem_rdata_q[25]_i_5_n_0 ),
        .I5(\mem_rdata_q[25]_i_6_n_0 ),
        .O(\mem_rdata_q[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBABBAABB00000000)) 
    \mem_rdata_q[25]_i_2 
       (.I0(\mem_rdata_q[25]_i_7_n_0 ),
        .I1(\mem_axi_rdata[15] [1]),
        .I2(\mem_axi_rdata[15] [0]),
        .I3(p_5_in),
        .I4(\mem_rdata_q[19]_i_4_n_0 ),
        .I5(p_3_in[2]),
        .O(\mem_rdata_q[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF20AA20AA20AA)) 
    \mem_rdata_q[25]_i_3 
       (.I0(p_11_in),
        .I1(\mem_rdata_q[19]_i_4_n_0 ),
        .I2(\mem_rdata_q[25]_i_8_n_0 ),
        .I3(\mem_rdata_q[8]_i_4_n_0 ),
        .I4(instr_waitirq_i_2_n_0),
        .I5(\mem_rdata_q[31]_i_11_n_0 ),
        .O(\mem_rdata_q[25]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h00040000)) 
    \mem_rdata_q[25]_i_4 
       (.I0(\mem_rdata_q[29]_i_8_n_0 ),
        .I1(p_3_in[2]),
        .I2(\mem_rdata_q[0]_i_1_n_0 ),
        .I3(\mem_rdata_q[1]_i_1_n_0 ),
        .I4(mem_rdata_q164_out),
        .O(\mem_rdata_q[25]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEFEE00000000)) 
    \mem_rdata_q[25]_i_5 
       (.I0(\mem_rdata_q[31]_i_25_n_0 ),
        .I1(\mem_rdata_q[26]_i_8_n_0 ),
        .I2(\decoded_rs2[3]_i_3_n_0 ),
        .I3(\decoded_rs1[0]_i_5_n_0 ),
        .I4(\mem_rdata_q[31]_i_16_n_0 ),
        .I5(instr_waitirq_i_2_n_0),
        .O(\mem_rdata_q[25]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF000002000000)) 
    \mem_rdata_q[25]_i_6 
       (.I0(\mem_rdata_q[31]_i_20_n_0 ),
        .I1(\mem_rdata_q[0]_i_1_n_0 ),
        .I2(p_5_in),
        .I3(\mem_rdata_q[1]_i_1_n_0 ),
        .I4(p_3_in[2]),
        .I5(\mem_rdata_q[26]_i_9_n_0 ),
        .O(\mem_rdata_q[25]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \mem_rdata_q[25]_i_7 
       (.I0(p_5_in),
        .I1(\mem_axi_rdata[15] [0]),
        .I2(p_3_in[0]),
        .I3(p_3_in[1]),
        .O(\mem_rdata_q[25]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mem_rdata_q[25]_i_8 
       (.I0(p_5_in),
        .I1(\mem_axi_rdata[15] [0]),
        .O(\mem_rdata_q[25]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFEFFFE)) 
    \mem_rdata_q[26]_i_1 
       (.I0(\mem_rdata_q[26]_i_2_n_0 ),
        .I1(\mem_rdata_q[26]_i_3_n_0 ),
        .I2(\mem_rdata_q[26]_i_4_n_0 ),
        .I3(\mem_rdata_q[26]_i_5_n_0 ),
        .I4(\mem_rdata_q[31]_i_9_n_0 ),
        .I5(\mem_rdata_q[26]_i_6_n_0 ),
        .O(\mem_rdata_q[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6222222200000000)) 
    \mem_rdata_q[26]_i_10 
       (.I0(\mem_rdata_q[13]_i_6_n_0 ),
        .I1(\mem_rdata_q[30]_i_5_n_0 ),
        .I2(p_3_in[2]),
        .I3(p_3_in[1]),
        .I4(p_3_in[0]),
        .I5(instr_retirq_i_5_n_0),
        .O(\mem_rdata_q[26]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFF100000FF000000)) 
    \mem_rdata_q[26]_i_11 
       (.I0(p_3_in[1]),
        .I1(\mem_rdata_q[21]_i_6_n_0 ),
        .I2(\mem_rdata_q[8]_i_2_n_0 ),
        .I3(\mem_axi_rdata[15] [1]),
        .I4(\mem_axi_rdata[15] [0]),
        .I5(p_5_in),
        .O(\mem_rdata_q[26]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFD)) 
    \mem_rdata_q[26]_i_12 
       (.I0(\mem_rdata_q[8]_i_2_n_0 ),
        .I1(\mem_rdata_q[9]_i_3_n_0 ),
        .I2(\mem_rdata_q[7]_i_2_n_0 ),
        .I3(p_3_in[0]),
        .I4(p_3_in[1]),
        .I5(\mem_rdata_q[21]_i_7_n_0 ),
        .O(\mem_rdata_q[26]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h020202AAFFFFFFFF)) 
    \mem_rdata_q[26]_i_13 
       (.I0(data10),
        .I1(compressed_instr_i_2_n_0),
        .I2(\mem_rdata_q[0]_i_2_n_0 ),
        .I3(compressed_instr_i_3_n_0),
        .I4(\mem_rdata_q[1]_i_2_n_0 ),
        .I5(p_72_in),
        .O(\mem_rdata_q[26]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \mem_rdata_q[26]_i_2 
       (.I0(mem_rdata_q164_out),
        .I1(\mem_rdata_q[26]_i_7_n_0 ),
        .I2(\mem_axi_rdata[15] [0]),
        .I3(p_5_in),
        .I4(p_12_in),
        .O(\mem_rdata_q[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEFEE00000000)) 
    \mem_rdata_q[26]_i_3 
       (.I0(\mem_rdata_q[31]_i_25_n_0 ),
        .I1(\mem_rdata_q[26]_i_8_n_0 ),
        .I2(\decoded_rs2[3]_i_3_n_0 ),
        .I3(\decoded_rs1[0]_i_5_n_0 ),
        .I4(\mem_rdata_q[31]_i_16_n_0 ),
        .I5(instr_retirq_i_5_n_0),
        .O(\mem_rdata_q[26]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h20200000FF200000)) 
    \mem_rdata_q[26]_i_4 
       (.I0(\mem_rdata_q[31]_i_20_n_0 ),
        .I1(\mem_rdata_q[29]_i_11_n_0 ),
        .I2(\decoded_rs1[0]_i_5_n_0 ),
        .I3(\mem_rdata_q[26]_i_9_n_0 ),
        .I4(\mem_rdata_q[7]_i_2_n_0 ),
        .I5(\mem_rdata_q[29]_i_8_n_0 ),
        .O(\mem_rdata_q[26]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAFFEAFFEAEAEA)) 
    \mem_rdata_q[26]_i_5 
       (.I0(\mem_rdata_q[26]_i_10_n_0 ),
        .I1(\mem_rdata_q[26]_i_11_n_0 ),
        .I2(p_12_in),
        .I3(p_3_in[2]),
        .I4(\mem_rdata_q[26]_i_12_n_0 ),
        .I5(\mem_rdata_q[27]_i_9_n_0 ),
        .O(\mem_rdata_q[26]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \mem_rdata_q[26]_i_6 
       (.I0(\mem_rdata_q[1]_i_1_n_0 ),
        .I1(\mem_axi_rdata[15] [1]),
        .I2(\mem_rdata_q[31]_i_20_n_0 ),
        .I3(\mem_rdata_q[0]_i_1_n_0 ),
        .I4(p_5_in),
        .I5(p_11_in),
        .O(\mem_rdata_q[26]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \mem_rdata_q[26]_i_7 
       (.I0(compressed_instr_i_2_n_0),
        .I1(\mem_rdata_q[0]_i_2_n_0 ),
        .I2(compressed_instr_i_3_n_0),
        .I3(\mem_rdata_q[1]_i_2_n_0 ),
        .O(\mem_rdata_q[26]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hA8FFFFFFFFFFFFFF)) 
    \mem_rdata_q[26]_i_8 
       (.I0(\mem_rdata_q[1]_i_1_n_0 ),
        .I1(p_5_in),
        .I2(\mem_rdata_q[0]_i_1_n_0 ),
        .I3(mem_la_firstword1),
        .I4(\mem_rdata_q[31]_i_22_n_0 ),
        .I5(\mem_rdata_q[26]_i_13_n_0 ),
        .O(\mem_rdata_q[26]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \mem_rdata_q[26]_i_9 
       (.I0(\mem_rdata_q[26]_i_7_n_0 ),
        .I1(\mem_rdata_q[26]_i_13_n_0 ),
        .I2(mem_done17_out),
        .I3(resetn),
        .I4(mem_la_firstword1),
        .I5(is_lb_lh_lw_lbu_lhu_i_2_n_0),
        .O(\mem_rdata_q[26]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF0E)) 
    \mem_rdata_q[27]_i_1 
       (.I0(\mem_rdata_q[27]_i_2_n_0 ),
        .I1(\mem_rdata_q[27]_i_3_n_0 ),
        .I2(\mem_rdata_q[29]_i_2_n_0 ),
        .I3(\mem_rdata_q[27]_i_4_n_0 ),
        .I4(\mem_rdata_q[27]_i_5_n_0 ),
        .I5(\mem_rdata_q[27]_i_6_n_0 ),
        .O(\mem_rdata_q[27]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF444)) 
    \mem_rdata_q[27]_i_2 
       (.I0(\mem_rdata_q[19]_i_4_n_0 ),
        .I1(\mem_rdata_q[27]_i_7_n_0 ),
        .I2(instr_waitirq_i_3_n_0),
        .I3(\mem_rdata_q[29]_i_4_n_0 ),
        .O(\mem_rdata_q[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFABAAAAAAAAAA)) 
    \mem_rdata_q[27]_i_3 
       (.I0(\mem_rdata_q[27]_i_8_n_0 ),
        .I1(\mem_rdata_q[28]_i_8_n_0 ),
        .I2(\mem_axi_rdata[15] [1]),
        .I3(\mem_rdata_q[19]_i_4_n_0 ),
        .I4(\mem_rdata_q[27]_i_9_n_0 ),
        .I5(\mem_rdata_q[29]_i_7_n_0 ),
        .O(\mem_rdata_q[27]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \mem_rdata_q[27]_i_4 
       (.I0(\decoded_rs1[0]_i_5_n_0 ),
        .I1(\mem_rdata_q[8]_i_2_n_0 ),
        .I2(p_5_in),
        .I3(\mem_rdata_q[0]_i_1_n_0 ),
        .I4(mem_rdata_q164_out),
        .I5(\mem_axi_rdata[15] [0]),
        .O(\mem_rdata_q[27]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBFBB00000000)) 
    \mem_rdata_q[27]_i_5 
       (.I0(\mem_rdata_q[31]_i_24_n_0 ),
        .I1(mem_rdata_q164_out),
        .I2(\decoded_rs2[3]_i_3_n_0 ),
        .I3(\decoded_rs1[0]_i_5_n_0 ),
        .I4(\mem_rdata_q[31]_i_16_n_0 ),
        .I5(instr_waitirq_i_3_n_0),
        .O(\mem_rdata_q[27]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \mem_rdata_q[27]_i_6 
       (.I0(\mem_rdata_q[1]_i_1_n_0 ),
        .I1(\mem_axi_rdata[15] [1]),
        .I2(\mem_rdata_q[31]_i_20_n_0 ),
        .I3(\mem_rdata_q[0]_i_1_n_0 ),
        .I4(p_5_in),
        .I5(p_13_in[0]),
        .O(\mem_rdata_q[27]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \mem_rdata_q[27]_i_7 
       (.I0(p_13_in[0]),
        .I1(\mem_rdata_q[0]_i_1_n_0 ),
        .I2(p_5_in),
        .I3(\mem_axi_rdata[15] [0]),
        .I4(\mem_axi_rdata[15] [1]),
        .O(\mem_rdata_q[27]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hA000A00000030000)) 
    \mem_rdata_q[27]_i_8 
       (.I0(p_10_in),
        .I1(p_5_in),
        .I2(\mem_axi_rdata[15] [1]),
        .I3(\mem_axi_rdata[15] [0]),
        .I4(\mem_rdata_q[8]_i_2_n_0 ),
        .I5(\mem_rdata_q[0]_i_1_n_0 ),
        .O(\mem_rdata_q[27]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT5 #(
    .INIT(32'h00000F2F)) 
    \mem_rdata_q[27]_i_9 
       (.I0(p_3_in[1]),
        .I1(p_3_in[0]),
        .I2(\mem_axi_rdata[15] [1]),
        .I3(\mem_axi_rdata[15] [0]),
        .I4(p_5_in),
        .O(\mem_rdata_q[27]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF555455545554)) 
    \mem_rdata_q[28]_i_1 
       (.I0(\mem_rdata_q[29]_i_2_n_0 ),
        .I1(\mem_rdata_q[28]_i_2_n_0 ),
        .I2(\mem_rdata_q[28]_i_3_n_0 ),
        .I3(\mem_rdata_q[28]_i_4_n_0 ),
        .I4(\mem_rdata_q[28]_i_5_n_0 ),
        .I5(\mem_rdata_q[29]_i_6_n_0 ),
        .O(\mem_rdata_q[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA000A00000030000)) 
    \mem_rdata_q[28]_i_2 
       (.I0(p_3_in[2]),
        .I1(p_5_in),
        .I2(\mem_axi_rdata[15] [1]),
        .I3(\mem_axi_rdata[15] [0]),
        .I4(\mem_rdata_q[9]_i_3_n_0 ),
        .I5(\mem_rdata_q[0]_i_1_n_0 ),
        .O(\mem_rdata_q[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h444444444444F444)) 
    \mem_rdata_q[28]_i_3 
       (.I0(\mem_rdata_q[19]_i_4_n_0 ),
        .I1(\mem_rdata_q[28]_i_6_n_0 ),
        .I2(\mem_rdata_q[28]_i_7_n_0 ),
        .I3(\mem_rdata_q[29]_i_7_n_0 ),
        .I4(\mem_axi_rdata[15] [0]),
        .I5(p_5_in),
        .O(\mem_rdata_q[28]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00B000B000B0)) 
    \mem_rdata_q[28]_i_4 
       (.I0(\mem_rdata_q[19]_i_4_n_0 ),
        .I1(p_5_in),
        .I2(\mem_rdata_q[29]_i_7_n_0 ),
        .I3(\mem_rdata_q[28]_i_8_n_0 ),
        .I4(\mem_rdata_q[28]_i_5_n_0 ),
        .I5(\mem_rdata_q[29]_i_4_n_0 ),
        .O(\mem_rdata_q[28]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \mem_rdata_q[28]_i_5 
       (.I0(\mem_rdata_q[11]_i_5_n_0 ),
        .I1(mem_axi_rdata[28]),
        .I2(instr_retirq_i_6_n_0),
        .I3(mem_axi_rdata[12]),
        .I4(\mem_rdata_q[28]_i_9_n_0 ),
        .O(\mem_rdata_q[28]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \mem_rdata_q[28]_i_6 
       (.I0(\mem_rdata_q[0]_i_1_n_0 ),
        .I1(p_13_in[1]),
        .I2(p_5_in),
        .I3(\mem_axi_rdata[15] [0]),
        .I4(\mem_axi_rdata[15] [1]),
        .O(\mem_rdata_q[28]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT5 #(
    .INIT(32'h2F2F222F)) 
    \mem_rdata_q[28]_i_7 
       (.I0(p_3_in[1]),
        .I1(p_3_in[0]),
        .I2(\mem_axi_rdata[15] [0]),
        .I3(\mem_axi_rdata[15] [1]),
        .I4(p_5_in),
        .O(\mem_rdata_q[28]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \mem_rdata_q[28]_i_8 
       (.I0(instr_jal_i_6_n_0),
        .I1(\mem_rdata_q[30]_i_6_n_0 ),
        .O(\mem_rdata_q[28]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFF404040)) 
    \mem_rdata_q[28]_i_9 
       (.I0(\mem_rdata_q[6]_i_5_n_0 ),
        .I1(mem_la_secondword),
        .I2(\mem_rdata_q_reg_n_0_[12] ),
        .I3(\mem_rdata_q_reg_n_0_[28] ),
        .I4(\mem_rdata_q[11]_i_7_n_0 ),
        .O(\mem_rdata_q[28]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFF445444)) 
    \mem_rdata_q[29]_i_1 
       (.I0(\mem_rdata_q[29]_i_2_n_0 ),
        .I1(\mem_rdata_q[29]_i_3_n_0 ),
        .I2(\mem_rdata_q[29]_i_4_n_0 ),
        .I3(\mem_rdata_q[29]_i_5_n_0 ),
        .I4(\mem_rdata_q[29]_i_6_n_0 ),
        .O(\mem_rdata_q[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF404040)) 
    \mem_rdata_q[29]_i_10 
       (.I0(\mem_rdata_q[6]_i_5_n_0 ),
        .I1(mem_la_secondword),
        .I2(\mem_rdata_q_reg_n_0_[13] ),
        .I3(\mem_rdata_q_reg_n_0_[29] ),
        .I4(\mem_rdata_q[11]_i_7_n_0 ),
        .O(\mem_rdata_q[29]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \mem_rdata_q[29]_i_11 
       (.I0(is_lb_lh_lw_lbu_lhu_i_4_n_0),
        .I1(instr_jal_i_5_n_0),
        .I2(compressed_instr_i_2_n_0),
        .I3(\mem_rdata_q[0]_i_2_n_0 ),
        .O(\mem_rdata_q[29]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair209" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \mem_rdata_q[29]_i_2 
       (.I0(\mem_rdata_q[1]_i_1_n_0 ),
        .I1(mem_rdata_q164_out),
        .O(\mem_rdata_q[29]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8F888888)) 
    \mem_rdata_q[29]_i_3 
       (.I0(\mem_rdata_q[29]_i_7_n_0 ),
        .I1(\mem_rdata_q[31]_i_10_n_0 ),
        .I2(\mem_rdata_q[29]_i_8_n_0 ),
        .I3(p_3_in[0]),
        .I4(\mem_rdata_q[29]_i_9_n_0 ),
        .O(\mem_rdata_q[29]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h55005500FF75FF00)) 
    \mem_rdata_q[29]_i_4 
       (.I0(\mem_rdata_q[0]_i_1_n_0 ),
        .I1(\mem_rdata_q[31]_i_3_n_0 ),
        .I2(p_3_in[2]),
        .I3(p_5_in),
        .I4(\mem_axi_rdata[15] [1]),
        .I5(\mem_axi_rdata[15] [0]),
        .O(\mem_rdata_q[29]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \mem_rdata_q[29]_i_5 
       (.I0(\mem_rdata_q[11]_i_5_n_0 ),
        .I1(mem_axi_rdata[29]),
        .I2(instr_retirq_i_6_n_0),
        .I3(mem_axi_rdata[13]),
        .I4(\mem_rdata_q[29]_i_10_n_0 ),
        .O(\mem_rdata_q[29]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF04FF00FF00FF)) 
    \mem_rdata_q[29]_i_6 
       (.I0(\mem_rdata_q[31]_i_16_n_0 ),
        .I1(\mem_axi_rdata[15] [1]),
        .I2(\decoded_rs2[3]_i_3_n_0 ),
        .I3(mem_rdata_q164_out),
        .I4(\mem_rdata_q[29]_i_11_n_0 ),
        .I5(\mem_rdata_q[1]_i_1_n_0 ),
        .O(\mem_rdata_q[29]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mem_rdata_q[29]_i_7 
       (.I0(p_3_in[2]),
        .I1(\mem_rdata_q[0]_i_1_n_0 ),
        .O(\mem_rdata_q[29]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hBE)) 
    \mem_rdata_q[29]_i_8 
       (.I0(p_5_in),
        .I1(\mem_axi_rdata[15] [1]),
        .I2(\mem_axi_rdata[15] [0]),
        .O(\mem_rdata_q[29]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \mem_rdata_q[29]_i_9 
       (.I0(\mem_axi_rdata[15] [1]),
        .I1(p_5_in),
        .I2(\mem_rdata_q[0]_i_1_n_0 ),
        .O(\mem_rdata_q[29]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \mem_rdata_q[2]_i_1 
       (.I0(\mem_rdata_q[2]_i_2_n_0 ),
        .I1(\mem_rdata_q[11]_i_5_n_0 ),
        .I2(mem_axi_rdata[2]),
        .I3(\mem_rdata_q[11]_i_6_n_0 ),
        .I4(mem_axi_rdata[18]),
        .O(p_11_in));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mem_rdata_q[2]_i_2 
       (.I0(\mem_rdata_q[11]_i_7_n_0 ),
        .I1(\mem_rdata_q_reg_n_0_[2] ),
        .I2(\mem_rdata_q[11]_i_8_n_0 ),
        .I3(\mem_rdata_q_reg_n_0_[18] ),
        .I4(\mem_16bit_buffer_reg_n_0_[2] ),
        .I5(\mem_rdata_q[11]_i_9_n_0 ),
        .O(\mem_rdata_q[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF555455545554)) 
    \mem_rdata_q[30]_i_1 
       (.I0(\mem_rdata_q[31]_i_9_n_0 ),
        .I1(\mem_rdata_q[30]_i_2_n_0 ),
        .I2(\mem_rdata_q[30]_i_3_n_0 ),
        .I3(\mem_rdata_q[30]_i_4_n_0 ),
        .I4(instr_retirq_i_4_n_0),
        .I5(\mem_rdata_q[31]_i_13_n_0 ),
        .O(\mem_rdata_q[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \mem_rdata_q[30]_i_2 
       (.I0(p_12_in),
        .I1(p_10_in),
        .I2(p_3_in[1]),
        .I3(p_3_in[0]),
        .I4(p_3_in[2]),
        .I5(instr_jalr_i_4_n_0),
        .O(\mem_rdata_q[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88F0AA000000AA00)) 
    \mem_rdata_q[30]_i_3 
       (.I0(instr_jalr_i_4_n_0),
        .I1(instr_retirq_i_4_n_0),
        .I2(\mem_rdata_q[30]_i_5_n_0 ),
        .I3(p_3_in[0]),
        .I4(p_3_in[1]),
        .I5(p_3_in[2]),
        .O(\mem_rdata_q[30]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hCCA0CCAC)) 
    \mem_rdata_q[30]_i_4 
       (.I0(instr_retirq_i_4_n_0),
        .I1(p_3_in[2]),
        .I2(p_5_in),
        .I3(\mem_axi_rdata[15] [0]),
        .I4(\mem_axi_rdata[15] [1]),
        .O(\mem_rdata_q[30]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF1110)) 
    \mem_rdata_q[30]_i_5 
       (.I0(instr_jal_i_5_n_0),
        .I1(is_lb_lh_lw_lbu_lhu_i_4_n_0),
        .I2(\mem_rdata_q[19]_i_8_n_0 ),
        .I3(is_lb_lh_lw_lbu_lhu_i_5_n_0),
        .I4(\mem_rdata_q[30]_i_6_n_0 ),
        .I5(instr_jal_i_6_n_0),
        .O(\mem_rdata_q[30]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \mem_rdata_q[30]_i_6 
       (.I0(mem_axi_rdata[30]),
        .I1(\mem_rdata_q[11]_i_6_n_0 ),
        .I2(mem_axi_rdata[14]),
        .I3(\mem_rdata_q[11]_i_5_n_0 ),
        .O(\mem_rdata_q[30]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \mem_rdata_q[31]_i_1 
       (.I0(\mem_rdata_q[31]_i_3_n_0 ),
        .I1(\mem_rdata_q[31]_i_4_n_0 ),
        .I2(\mem_rdata_q[31]_i_5_n_0 ),
        .I3(\mem_rdata_q[31]_i_6_n_0 ),
        .I4(\mem_rdata_q[31]_i_7_n_0 ),
        .I5(\mem_rdata_q[31]_i_8_n_0 ),
        .O(\mem_rdata_q[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT5 #(
    .INIT(32'hFF02FF0F)) 
    \mem_rdata_q[31]_i_10 
       (.I0(p_3_in[1]),
        .I1(p_3_in[0]),
        .I2(p_5_in),
        .I3(\mem_axi_rdata[15] [0]),
        .I4(\mem_axi_rdata[15] [1]),
        .O(\mem_rdata_q[31]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF80FF00)) 
    \mem_rdata_q[31]_i_11 
       (.I0(p_3_in[0]),
        .I1(p_3_in[1]),
        .I2(p_3_in[2]),
        .I3(p_5_in),
        .I4(\mem_axi_rdata[15] [1]),
        .I5(\mem_axi_rdata[15] [0]),
        .O(\mem_rdata_q[31]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \mem_rdata_q[31]_i_12 
       (.I0(\mem_rdata_q[11]_i_5_n_0 ),
        .I1(mem_axi_rdata[31]),
        .I2(instr_retirq_i_6_n_0),
        .I3(mem_axi_rdata[15]),
        .I4(\mem_rdata_q[31]_i_23_n_0 ),
        .O(\mem_rdata_q[31]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF04FFFF)) 
    \mem_rdata_q[31]_i_13 
       (.I0(\mem_rdata_q[31]_i_16_n_0 ),
        .I1(\decoded_rs1[0]_i_5_n_0 ),
        .I2(\decoded_rs2[3]_i_3_n_0 ),
        .I3(\mem_rdata_q[31]_i_24_n_0 ),
        .I4(mem_rdata_q164_out),
        .I5(\mem_rdata_q[31]_i_25_n_0 ),
        .O(\mem_rdata_q[31]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \mem_rdata_q[31]_i_14 
       (.I0(mem_axi_rdata[26]),
        .I1(\mem_rdata_q[11]_i_6_n_0 ),
        .I2(mem_axi_rdata[10]),
        .I3(\mem_rdata_q[11]_i_5_n_0 ),
        .O(\mem_rdata_q[31]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \mem_rdata_q[31]_i_15 
       (.I0(mem_axi_rdata[27]),
        .I1(\mem_rdata_q[11]_i_6_n_0 ),
        .I2(mem_axi_rdata[11]),
        .I3(\mem_rdata_q[11]_i_5_n_0 ),
        .O(\mem_rdata_q[31]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FEFF)) 
    \mem_rdata_q[31]_i_16 
       (.I0(p_3_in[1]),
        .I1(\mem_rdata_q[21]_i_6_n_0 ),
        .I2(\mem_rdata_q[8]_i_2_n_0 ),
        .I3(p_3_in[2]),
        .I4(\mem_rdata_q[31]_i_26_n_0 ),
        .I5(is_alu_reg_imm_i_8_n_0),
        .O(\mem_rdata_q[31]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000EEE0)) 
    \mem_rdata_q[31]_i_17 
       (.I0(\mem_rdata_q[11]_i_4_n_0 ),
        .I1(\mem_rdata_q[31]_i_15_n_0 ),
        .I2(\mem_rdata_q[10]_i_2_n_0 ),
        .I3(\mem_rdata_q[31]_i_14_n_0 ),
        .I4(\mem_rdata_q[31]_i_27_n_0 ),
        .I5(\decoded_imm_uj[12]_i_2_n_0 ),
        .O(\mem_rdata_q[31]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF77FFFFFFF7FF)) 
    \mem_rdata_q[31]_i_18 
       (.I0(mem_la_firstword1),
        .I1(\mem_rdata_q[31]_i_22_n_0 ),
        .I2(p_72_in),
        .I3(\mem_rdata_q[1]_i_1_n_0 ),
        .I4(\mem_rdata_q[0]_i_1_n_0 ),
        .I5(data10),
        .O(\mem_rdata_q[31]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \mem_rdata_q[31]_i_19 
       (.I0(p_5_in),
        .I1(\mem_rdata_q[1]_i_1_n_0 ),
        .I2(\mem_rdata_q[0]_i_1_n_0 ),
        .O(\mem_rdata_q[31]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF404055404040)) 
    \mem_rdata_q[31]_i_2 
       (.I0(\mem_rdata_q[31]_i_9_n_0 ),
        .I1(p_3_in[2]),
        .I2(\mem_rdata_q[31]_i_10_n_0 ),
        .I3(\mem_rdata_q[31]_i_11_n_0 ),
        .I4(\mem_rdata_q[31]_i_12_n_0 ),
        .I5(\mem_rdata_q[31]_i_13_n_0 ),
        .O(\mem_rdata_q[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8808080800000000)) 
    \mem_rdata_q[31]_i_20 
       (.I0(mem_la_firstword1),
        .I1(\mem_rdata_q[31]_i_22_n_0 ),
        .I2(p_72_in),
        .I3(compressed_instr_i_1_n_0),
        .I4(data10),
        .I5(\mem_axi_rdata[15] [0]),
        .O(\mem_rdata_q[31]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hCD)) 
    \mem_rdata_q[31]_i_21 
       (.I0(p_5_in),
        .I1(\mem_axi_rdata[15] [0]),
        .I2(\mem_axi_rdata[15] [1]),
        .O(\mem_rdata_q[31]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFF80808000000000)) 
    \mem_rdata_q[31]_i_22 
       (.I0(mem_do_rinst_reg_n_0),
        .I1(\mem_state_reg_n_0_[1] ),
        .I2(\mem_state_reg_n_0_[0] ),
        .I3(\mem_rdata_q[31]_i_28_n_0 ),
        .I4(data10),
        .I5(resetn),
        .O(\mem_rdata_q[31]_i_22_n_0 ));
  LUT5 #(
    .INIT(32'hFF404040)) 
    \mem_rdata_q[31]_i_23 
       (.I0(\mem_rdata_q[6]_i_5_n_0 ),
        .I1(mem_la_secondword),
        .I2(\mem_rdata_q_reg_n_0_[15] ),
        .I3(\mem_rdata_q_reg_n_0_[31] ),
        .I4(\mem_rdata_q[11]_i_7_n_0 ),
        .O(\mem_rdata_q[31]_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \mem_rdata_q[31]_i_24 
       (.I0(\mem_rdata_q[0]_i_1_n_0 ),
        .I1(p_5_in),
        .I2(\mem_rdata_q[1]_i_1_n_0 ),
        .O(\mem_rdata_q[31]_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h11110100)) 
    \mem_rdata_q[31]_i_25 
       (.I0(\mem_rdata_q[0]_i_1_n_0 ),
        .I1(\mem_rdata_q[1]_i_1_n_0 ),
        .I2(\mem_axi_rdata[15] [0]),
        .I3(\mem_axi_rdata[15] [1]),
        .I4(p_5_in),
        .O(\mem_rdata_q[31]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \mem_rdata_q[31]_i_26 
       (.I0(\mem_rdata_q[4]_i_2_n_0 ),
        .I1(\mem_rdata_q[31]_i_29_n_0 ),
        .I2(\mem_rdata_q[2]_i_2_n_0 ),
        .I3(\mem_rdata_q[31]_i_30_n_0 ),
        .I4(\mem_rdata_q[31]_i_31_n_0 ),
        .I5(\mem_rdata_q[3]_i_2_n_0 ),
        .O(\mem_rdata_q[31]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \mem_rdata_q[31]_i_27 
       (.I0(mem_axi_rdata[28]),
        .I1(\mem_rdata_q[11]_i_6_n_0 ),
        .I2(mem_axi_rdata[12]),
        .I3(\mem_rdata_q[11]_i_5_n_0 ),
        .O(\mem_rdata_q[31]_i_27_n_0 ));
  LUT5 #(
    .INIT(32'hFEFEFE00)) 
    \mem_rdata_q[31]_i_28 
       (.I0(mem_do_wdata),
        .I1(mem_do_rdata),
        .I2(mem_do_rinst_reg_n_0),
        .I3(\mem_state_reg_n_0_[1] ),
        .I4(\mem_state_reg_n_0_[0] ),
        .O(\mem_rdata_q[31]_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \mem_rdata_q[31]_i_29 
       (.I0(mem_axi_rdata[20]),
        .I1(\mem_rdata_q[11]_i_6_n_0 ),
        .I2(mem_axi_rdata[4]),
        .I3(\mem_rdata_q[11]_i_5_n_0 ),
        .O(\mem_rdata_q[31]_i_29_n_0 ));
  LUT4 #(
    .INIT(16'h111F)) 
    \mem_rdata_q[31]_i_3 
       (.I0(\mem_rdata_q[31]_i_14_n_0 ),
        .I1(\mem_rdata_q[10]_i_2_n_0 ),
        .I2(\mem_rdata_q[31]_i_15_n_0 ),
        .I3(\mem_rdata_q[11]_i_4_n_0 ),
        .O(\mem_rdata_q[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \mem_rdata_q[31]_i_30 
       (.I0(mem_axi_rdata[18]),
        .I1(\mem_rdata_q[11]_i_6_n_0 ),
        .I2(mem_axi_rdata[2]),
        .I3(\mem_rdata_q[11]_i_5_n_0 ),
        .O(\mem_rdata_q[31]_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \mem_rdata_q[31]_i_31 
       (.I0(mem_axi_rdata[19]),
        .I1(\mem_rdata_q[11]_i_6_n_0 ),
        .I2(mem_axi_rdata[3]),
        .I3(\mem_rdata_q[11]_i_5_n_0 ),
        .O(\mem_rdata_q[31]_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \mem_rdata_q[31]_i_4 
       (.I0(\mem_rdata_q[1]_i_1_n_0 ),
        .I1(\mem_rdata_q[0]_i_1_n_0 ),
        .I2(mem_rdata_q164_out),
        .I3(\mem_axi_rdata[15] [0]),
        .I4(p_5_in),
        .O(\mem_rdata_q[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000FEFF000000FF)) 
    \mem_rdata_q[31]_i_5 
       (.I0(\mem_rdata_q[31]_i_16_n_0 ),
        .I1(\decoded_rs2[3]_i_3_n_0 ),
        .I2(data10),
        .I3(\mem_axi_rdata[15] [1]),
        .I4(\mem_rdata_q[0]_i_1_n_0 ),
        .I5(\mem_rdata_q[1]_i_1_n_0 ),
        .O(\mem_rdata_q[31]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \mem_rdata_q[31]_i_6 
       (.I0(mem_rdata_q164_out),
        .I1(p_5_in),
        .O(\mem_rdata_q[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h888888880000F000)) 
    \mem_rdata_q[31]_i_7 
       (.I0(instr_lui_i_4_n_0),
        .I1(data10),
        .I2(\mem_rdata_q[31]_i_17_n_0 ),
        .I3(\mem_rdata_q[19]_i_3_n_0 ),
        .I4(\mem_axi_rdata[15] [0]),
        .I5(p_5_in),
        .O(\mem_rdata_q[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mem_rdata_q[31]_i_8 
       (.I0(\mem_rdata_q[31]_i_18_n_0 ),
        .I1(data10),
        .I2(\mem_rdata_q[31]_i_19_n_0 ),
        .I3(\mem_rdata_q[31]_i_20_n_0 ),
        .I4(\mem_rdata_q[19]_i_3_n_0 ),
        .I5(\mem_rdata_q[31]_i_21_n_0 ),
        .O(\mem_rdata_q[31]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hBFBBFFFFFFFFFFFF)) 
    \mem_rdata_q[31]_i_9 
       (.I0(\mem_rdata_q[1]_i_1_n_0 ),
        .I1(\mem_rdata_q[0]_i_1_n_0 ),
        .I2(data10),
        .I3(p_72_in),
        .I4(\mem_rdata_q[31]_i_22_n_0 ),
        .I5(mem_la_firstword1),
        .O(\mem_rdata_q[31]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \mem_rdata_q[3]_i_1 
       (.I0(\mem_rdata_q[3]_i_2_n_0 ),
        .I1(\mem_rdata_q[11]_i_5_n_0 ),
        .I2(mem_axi_rdata[3]),
        .I3(\mem_rdata_q[11]_i_6_n_0 ),
        .I4(mem_axi_rdata[19]),
        .O(p_13_in[0]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mem_rdata_q[3]_i_2 
       (.I0(\mem_rdata_q[11]_i_7_n_0 ),
        .I1(\mem_rdata_q_reg_n_0_[3] ),
        .I2(\mem_rdata_q[11]_i_8_n_0 ),
        .I3(\mem_rdata_q_reg_n_0_[19] ),
        .I4(\mem_16bit_buffer_reg_n_0_[3] ),
        .I5(\mem_rdata_q[11]_i_9_n_0 ),
        .O(\mem_rdata_q[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \mem_rdata_q[4]_i_1 
       (.I0(\mem_rdata_q[4]_i_2_n_0 ),
        .I1(\mem_rdata_q[11]_i_5_n_0 ),
        .I2(mem_axi_rdata[4]),
        .I3(\mem_rdata_q[11]_i_6_n_0 ),
        .I4(mem_axi_rdata[20]),
        .O(p_13_in[1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mem_rdata_q[4]_i_2 
       (.I0(\mem_rdata_q[11]_i_7_n_0 ),
        .I1(\mem_rdata_q_reg_n_0_[4] ),
        .I2(\mem_rdata_q[11]_i_8_n_0 ),
        .I3(\mem_rdata_q_reg_n_0_[20] ),
        .I4(\mem_16bit_buffer_reg_n_0_[4] ),
        .I5(\mem_rdata_q[11]_i_9_n_0 ),
        .O(\mem_rdata_q[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \mem_rdata_q[5]_i_1 
       (.I0(\mem_rdata_q[5]_i_2_n_0 ),
        .I1(\mem_rdata_q[11]_i_5_n_0 ),
        .I2(mem_axi_rdata[5]),
        .I3(\mem_rdata_q[11]_i_6_n_0 ),
        .I4(mem_axi_rdata[21]),
        .O(p_12_in));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mem_rdata_q[5]_i_2 
       (.I0(\mem_rdata_q[11]_i_7_n_0 ),
        .I1(\mem_rdata_q_reg_n_0_[5] ),
        .I2(\mem_rdata_q[11]_i_8_n_0 ),
        .I3(\mem_rdata_q_reg_n_0_[21] ),
        .I4(\mem_16bit_buffer_reg_n_0_[5] ),
        .I5(\mem_rdata_q[11]_i_9_n_0 ),
        .O(\mem_rdata_q[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0080)) 
    \mem_rdata_q[6]_i_1 
       (.I0(\mem_rdata_q[6]_i_3_n_0 ),
        .I1(\mem_rdata_q[6]_i_4_n_0 ),
        .I2(mem_do_rinst_reg_n_0),
        .I3(mem_la_secondword),
        .I4(\mem_rdata_q[6]_i_5_n_0 ),
        .O(data10));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \mem_rdata_q[6]_i_2 
       (.I0(\mem_rdata_q[6]_i_6_n_0 ),
        .I1(\mem_rdata_q[11]_i_5_n_0 ),
        .I2(mem_axi_rdata[6]),
        .I3(\mem_rdata_q[11]_i_6_n_0 ),
        .I4(mem_axi_rdata[22]),
        .O(p_10_in));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \mem_rdata_q[6]_i_3 
       (.I0(latched_branch_reg_0),
        .I1(\irq_state_reg_n_0_[1] ),
        .I2(\irq_state_reg[0]_0 ),
        .I3(prefetched_high_word_reg_0),
        .I4(clear_prefetched_high_word_q),
        .I5(resetn),
        .O(\mem_rdata_q[6]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \mem_rdata_q[6]_i_4 
       (.I0(\reg_next_pc_reg_n_0_[1] ),
        .I1(latched_store_reg_0),
        .I2(latched_branch_reg_0),
        .I3(\reg_out_reg_n_0_[1] ),
        .O(\mem_rdata_q[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \mem_rdata_q[6]_i_5 
       (.I0(mem_valid),
        .I1(mem_axi_rvalid),
        .I2(mem_axi_bvalid),
        .O(\mem_rdata_q[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mem_rdata_q[6]_i_6 
       (.I0(\mem_rdata_q[11]_i_7_n_0 ),
        .I1(\mem_rdata_q_reg_n_0_[6] ),
        .I2(\mem_rdata_q[11]_i_8_n_0 ),
        .I3(\mem_rdata_q_reg_n_0_[22] ),
        .I4(\mem_16bit_buffer_reg_n_0_[6] ),
        .I5(\mem_rdata_q[11]_i_9_n_0 ),
        .O(\mem_rdata_q[6]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h88888F88)) 
    \mem_rdata_q[7]_i_1 
       (.I0(\mem_rdata_q[7]_i_2_n_0 ),
        .I1(\mem_rdata_q[8]_i_3_n_0 ),
        .I2(\mem_rdata_q[31]_i_9_n_0 ),
        .I3(p_3_in[2]),
        .I4(\mem_rdata_q[8]_i_4_n_0 ),
        .O(\mem_rdata_q[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \mem_rdata_q[7]_i_2 
       (.I0(\mem_rdata_q[7]_i_3_n_0 ),
        .I1(\mem_rdata_q[11]_i_5_n_0 ),
        .I2(mem_axi_rdata[7]),
        .I3(\mem_rdata_q[11]_i_6_n_0 ),
        .I4(mem_axi_rdata[23]),
        .O(\mem_rdata_q[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mem_rdata_q[7]_i_3 
       (.I0(\mem_rdata_q[11]_i_7_n_0 ),
        .I1(\mem_rdata_q_reg_n_0_[7] ),
        .I2(\mem_rdata_q[11]_i_8_n_0 ),
        .I3(\mem_rdata_q_reg_n_0_[23] ),
        .I4(\mem_16bit_buffer_reg_n_0_[7] ),
        .I5(\mem_rdata_q[11]_i_9_n_0 ),
        .O(\mem_rdata_q[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h88888F88)) 
    \mem_rdata_q[8]_i_1 
       (.I0(\mem_rdata_q[8]_i_2_n_0 ),
        .I1(\mem_rdata_q[8]_i_3_n_0 ),
        .I2(\mem_rdata_q[31]_i_9_n_0 ),
        .I3(p_13_in[0]),
        .I4(\mem_rdata_q[8]_i_4_n_0 ),
        .O(\mem_rdata_q[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \mem_rdata_q[8]_i_2 
       (.I0(\mem_rdata_q[8]_i_5_n_0 ),
        .I1(\mem_rdata_q[11]_i_5_n_0 ),
        .I2(mem_axi_rdata[8]),
        .I3(\mem_rdata_q[11]_i_6_n_0 ),
        .I4(mem_axi_rdata[24]),
        .O(\mem_rdata_q[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hDFDFFFFFFF5FFFFF)) 
    \mem_rdata_q[8]_i_3 
       (.I0(mem_rdata_q164_out),
        .I1(\mem_rdata_q[1]_i_1_n_0 ),
        .I2(\mem_axi_rdata[15] [0]),
        .I3(p_5_in),
        .I4(\mem_axi_rdata[15] [1]),
        .I5(\mem_rdata_q[0]_i_1_n_0 ),
        .O(\mem_rdata_q[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \mem_rdata_q[8]_i_4 
       (.I0(\mem_axi_rdata[15] [0]),
        .I1(\mem_axi_rdata[15] [1]),
        .O(\mem_rdata_q[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mem_rdata_q[8]_i_5 
       (.I0(\mem_rdata_q[11]_i_7_n_0 ),
        .I1(\mem_rdata_q_reg_n_0_[8] ),
        .I2(\mem_rdata_q[11]_i_8_n_0 ),
        .I3(\mem_rdata_q_reg_n_0_[24] ),
        .I4(\mem_16bit_buffer_reg_n_0_[8] ),
        .I5(\mem_rdata_q[11]_i_9_n_0 ),
        .O(\mem_rdata_q[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEAFFEAEAEAEAEAEA)) 
    \mem_rdata_q[9]_i_1 
       (.I0(\mem_rdata_q[9]_i_2_n_0 ),
        .I1(\mem_rdata_q[29]_i_2_n_0 ),
        .I2(\mem_rdata_q[9]_i_3_n_0 ),
        .I3(\mem_rdata_q[9]_i_4_n_0 ),
        .I4(p_10_in),
        .I5(\mem_rdata_q[9]_i_5_n_0 ),
        .O(\mem_rdata_q[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE0E0E0E040FF4040)) 
    \mem_rdata_q[9]_i_2 
       (.I0(\mem_rdata_q[0]_i_1_n_0 ),
        .I1(\mem_rdata_q[9]_i_4_n_0 ),
        .I2(\mem_rdata_q[9]_i_3_n_0 ),
        .I3(\mem_rdata_q[31]_i_9_n_0 ),
        .I4(p_13_in[1]),
        .I5(\mem_rdata_q[8]_i_4_n_0 ),
        .O(\mem_rdata_q[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \mem_rdata_q[9]_i_3 
       (.I0(\mem_rdata_q[9]_i_6_n_0 ),
        .I1(\mem_rdata_q[11]_i_5_n_0 ),
        .I2(mem_axi_rdata[9]),
        .I3(\mem_rdata_q[11]_i_6_n_0 ),
        .I4(mem_axi_rdata[25]),
        .O(\mem_rdata_q[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \mem_rdata_q[9]_i_4 
       (.I0(\mem_axi_rdata[15] [0]),
        .I1(\mem_axi_rdata[15] [1]),
        .I2(p_5_in),
        .O(\mem_rdata_q[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008808)) 
    \mem_rdata_q[9]_i_5 
       (.I0(mem_la_firstword1),
        .I1(\mem_rdata_q[31]_i_22_n_0 ),
        .I2(p_72_in),
        .I3(data10),
        .I4(\mem_rdata_q[1]_i_1_n_0 ),
        .I5(\mem_rdata_q[0]_i_1_n_0 ),
        .O(\mem_rdata_q[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mem_rdata_q[9]_i_6 
       (.I0(\mem_rdata_q[11]_i_7_n_0 ),
        .I1(\mem_rdata_q_reg_n_0_[9] ),
        .I2(\mem_rdata_q[11]_i_8_n_0 ),
        .I3(\mem_rdata_q_reg_n_0_[25] ),
        .I4(\mem_16bit_buffer_reg_n_0_[9] ),
        .I5(\mem_rdata_q[11]_i_9_n_0 ),
        .O(\mem_rdata_q[9]_i_6_n_0 ));
  FDRE \mem_rdata_q_reg[0] 
       (.C(clk),
        .CE(data10),
        .D(\mem_rdata_q[0]_i_1_n_0 ),
        .Q(\mem_rdata_q_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \mem_rdata_q_reg[10] 
       (.C(clk),
        .CE(\mem_rdata_q[11]_i_1_n_0 ),
        .D(p_3_in[0]),
        .Q(\mem_rdata_q_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \mem_rdata_q_reg[11] 
       (.C(clk),
        .CE(\mem_rdata_q[11]_i_1_n_0 ),
        .D(p_3_in[1]),
        .Q(\mem_rdata_q_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \mem_rdata_q_reg[12] 
       (.C(clk),
        .CE(\mem_rdata_q[31]_i_1_n_0 ),
        .D(\mem_rdata_q[12]_i_1_n_0 ),
        .Q(\mem_rdata_q_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \mem_rdata_q_reg[13] 
       (.C(clk),
        .CE(\mem_rdata_q[31]_i_1_n_0 ),
        .D(\mem_rdata_q[13]_i_1_n_0 ),
        .Q(\mem_rdata_q_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \mem_rdata_q_reg[14] 
       (.C(clk),
        .CE(\mem_rdata_q[31]_i_1_n_0 ),
        .D(\mem_rdata_q[14]_i_1_n_0 ),
        .Q(\mem_rdata_q_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \mem_rdata_q_reg[15] 
       (.C(clk),
        .CE(\mem_rdata_q[19]_i_1_n_0 ),
        .D(\mem_rdata_q[15]_i_1_n_0 ),
        .Q(\mem_rdata_q_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \mem_rdata_q_reg[16] 
       (.C(clk),
        .CE(\mem_rdata_q[19]_i_1_n_0 ),
        .D(\mem_rdata_q[16]_i_1_n_0 ),
        .Q(\mem_rdata_q_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \mem_rdata_q_reg[17] 
       (.C(clk),
        .CE(\mem_rdata_q[19]_i_1_n_0 ),
        .D(\mem_rdata_q[17]_i_1_n_0 ),
        .Q(\mem_rdata_q_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \mem_rdata_q_reg[18] 
       (.C(clk),
        .CE(\mem_rdata_q[19]_i_1_n_0 ),
        .D(\mem_rdata_q[18]_i_1_n_0 ),
        .Q(\mem_rdata_q_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \mem_rdata_q_reg[19] 
       (.C(clk),
        .CE(\mem_rdata_q[19]_i_1_n_0 ),
        .D(\mem_rdata_q[19]_i_2_n_0 ),
        .Q(\mem_rdata_q_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \mem_rdata_q_reg[1] 
       (.C(clk),
        .CE(data10),
        .D(\mem_rdata_q[1]_i_1_n_0 ),
        .Q(\mem_rdata_q_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \mem_rdata_q_reg[20] 
       (.C(clk),
        .CE(\mem_rdata_q[24]_i_1_n_0 ),
        .D(\mem_rdata_q[20]_i_1_n_0 ),
        .Q(\mem_rdata_q_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \mem_rdata_q_reg[21] 
       (.C(clk),
        .CE(\mem_rdata_q[24]_i_1_n_0 ),
        .D(\mem_rdata_q[21]_i_1_n_0 ),
        .Q(\mem_rdata_q_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \mem_rdata_q_reg[22] 
       (.C(clk),
        .CE(\mem_rdata_q[24]_i_1_n_0 ),
        .D(\mem_rdata_q[22]_i_1_n_0 ),
        .Q(\mem_rdata_q_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \mem_rdata_q_reg[23] 
       (.C(clk),
        .CE(\mem_rdata_q[24]_i_1_n_0 ),
        .D(\mem_rdata_q[23]_i_1_n_0 ),
        .Q(\mem_rdata_q_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \mem_rdata_q_reg[24] 
       (.C(clk),
        .CE(\mem_rdata_q[24]_i_1_n_0 ),
        .D(\mem_rdata_q[24]_i_2_n_0 ),
        .Q(\mem_rdata_q_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \mem_rdata_q_reg[25] 
       (.C(clk),
        .CE(\mem_rdata_q[31]_i_1_n_0 ),
        .D(\mem_rdata_q[25]_i_1_n_0 ),
        .Q(\mem_rdata_q_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \mem_rdata_q_reg[26] 
       (.C(clk),
        .CE(\mem_rdata_q[31]_i_1_n_0 ),
        .D(\mem_rdata_q[26]_i_1_n_0 ),
        .Q(\mem_rdata_q_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \mem_rdata_q_reg[27] 
       (.C(clk),
        .CE(\mem_rdata_q[31]_i_1_n_0 ),
        .D(\mem_rdata_q[27]_i_1_n_0 ),
        .Q(\mem_rdata_q_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \mem_rdata_q_reg[28] 
       (.C(clk),
        .CE(\mem_rdata_q[31]_i_1_n_0 ),
        .D(\mem_rdata_q[28]_i_1_n_0 ),
        .Q(\mem_rdata_q_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \mem_rdata_q_reg[29] 
       (.C(clk),
        .CE(\mem_rdata_q[31]_i_1_n_0 ),
        .D(\mem_rdata_q[29]_i_1_n_0 ),
        .Q(\mem_rdata_q_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \mem_rdata_q_reg[2] 
       (.C(clk),
        .CE(data10),
        .D(p_11_in),
        .Q(\mem_rdata_q_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \mem_rdata_q_reg[30] 
       (.C(clk),
        .CE(\mem_rdata_q[31]_i_1_n_0 ),
        .D(\mem_rdata_q[30]_i_1_n_0 ),
        .Q(\mem_rdata_q_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \mem_rdata_q_reg[31] 
       (.C(clk),
        .CE(\mem_rdata_q[31]_i_1_n_0 ),
        .D(\mem_rdata_q[31]_i_2_n_0 ),
        .Q(\mem_rdata_q_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \mem_rdata_q_reg[3] 
       (.C(clk),
        .CE(data10),
        .D(p_13_in[0]),
        .Q(\mem_rdata_q_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \mem_rdata_q_reg[4] 
       (.C(clk),
        .CE(data10),
        .D(p_13_in[1]),
        .Q(\mem_rdata_q_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \mem_rdata_q_reg[5] 
       (.C(clk),
        .CE(data10),
        .D(p_12_in),
        .Q(\mem_rdata_q_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \mem_rdata_q_reg[6] 
       (.C(clk),
        .CE(data10),
        .D(p_10_in),
        .Q(\mem_rdata_q_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \mem_rdata_q_reg[7] 
       (.C(clk),
        .CE(\mem_rdata_q[11]_i_1_n_0 ),
        .D(\mem_rdata_q[7]_i_1_n_0 ),
        .Q(\mem_rdata_q_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \mem_rdata_q_reg[8] 
       (.C(clk),
        .CE(\mem_rdata_q[11]_i_1_n_0 ),
        .D(\mem_rdata_q[8]_i_1_n_0 ),
        .Q(\mem_rdata_q_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \mem_rdata_q_reg[9] 
       (.C(clk),
        .CE(\mem_rdata_q[11]_i_1_n_0 ),
        .D(\mem_rdata_q[9]_i_1_n_0 ),
        .Q(\mem_rdata_q_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0011FFFF000F0000)) 
    \mem_state[0]_i_1 
       (.I0(mem_do_rdata),
        .I1(mem_do_rinst_reg_n_0),
        .I2(mem_do_wdata),
        .I3(\mem_state_reg_n_0_[1] ),
        .I4(mem_state),
        .I5(\mem_state_reg_n_0_[0] ),
        .O(\mem_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF1F100000)) 
    \mem_state[1]_i_1 
       (.I0(mem_do_rdata),
        .I1(mem_do_rinst_reg_n_0),
        .I2(\mem_state_reg_n_0_[0] ),
        .I3(mem_do_wdata),
        .I4(mem_state),
        .I5(\mem_state_reg_n_0_[1] ),
        .O(\mem_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF2FFF2F2F2F2F2F2)) 
    \mem_state[1]_i_2 
       (.I0(\mem_state_reg[0]_0 ),
        .I1(resetn_0),
        .I2(\mem_state_reg[0]_1 ),
        .I3(trap_reg_0),
        .I4(resetn),
        .I5(\mem_state[1]_i_4_n_0 ),
        .O(mem_state));
  LUT6 #(
    .INIT(64'h0000000054FF10FF)) 
    \mem_state[1]_i_3 
       (.I0(\mem_state_reg_n_0_[0] ),
        .I1(\mem_state_reg_n_0_[1] ),
        .I2(mem_do_wdata),
        .I3(\mem_wstrb[3]_i_5_n_0 ),
        .I4(data10),
        .I5(trap_reg_1),
        .O(\mem_state_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \mem_state[1]_i_4 
       (.I0(mem_do_rinst_reg_n_0),
        .I1(\mem_state_reg_n_0_[1] ),
        .I2(\mem_state_reg_n_0_[0] ),
        .O(\mem_state[1]_i_4_n_0 ));
  FDRE \mem_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\mem_state[0]_i_1_n_0 ),
        .Q(\mem_state_reg_n_0_[0] ),
        .R(trap_i_1_n_0));
  FDRE \mem_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\mem_state[1]_i_1_n_0 ),
        .Q(\mem_state_reg_n_0_[1] ),
        .R(trap_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h1F000000)) 
    mem_valid_i_1
       (.I0(mem_axi_rvalid),
        .I1(mem_axi_bvalid),
        .I2(trap_reg_0),
        .I3(resetn),
        .I4(mem_valid_reg_1),
        .O(mem_valid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT4 #(
    .INIT(16'h000B)) 
    mem_valid_i_3
       (.I0(mem_do_wdata),
        .I1(mem_la_use_prefetched_high_word),
        .I2(\mem_state_reg_n_0_[0] ),
        .I3(\mem_state_reg_n_0_[1] ),
        .O(mem_do_wdata_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    mem_valid_i_4
       (.I0(\mem_state_reg_n_0_[0] ),
        .I1(\mem_state_reg_n_0_[1] ),
        .O(\mem_state_reg[0]_3 ));
  FDRE mem_valid_reg
       (.C(clk),
        .CE(1'b1),
        .D(mem_valid_i_1_n_0),
        .Q(mem_valid),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_wdata[10]_i_1 
       (.I0(\reg_op2_reg_n_0_[2] ),
        .I1(\mem_wordsize_reg_n_0_[1] ),
        .I2(\reg_op2_reg_n_0_[10] ),
        .O(\mem_wdata[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_wdata[11]_i_1 
       (.I0(\reg_op2_reg_n_0_[3] ),
        .I1(\mem_wordsize_reg_n_0_[1] ),
        .I2(\reg_op2_reg_n_0_[11] ),
        .O(\mem_wdata[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_wdata[12]_i_1 
       (.I0(\reg_op2_reg_n_0_[4] ),
        .I1(\mem_wordsize_reg_n_0_[1] ),
        .I2(\reg_op2_reg_n_0_[12] ),
        .O(\mem_wdata[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_wdata[13]_i_1 
       (.I0(\reg_op2_reg_n_0_[5] ),
        .I1(\mem_wordsize_reg_n_0_[1] ),
        .I2(\reg_op2_reg_n_0_[13] ),
        .O(\mem_wdata[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_wdata[14]_i_1 
       (.I0(\reg_op2_reg_n_0_[6] ),
        .I1(\mem_wordsize_reg_n_0_[1] ),
        .I2(\reg_op2_reg_n_0_[14] ),
        .O(\mem_wdata[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_wdata[15]_i_1 
       (.I0(\reg_op2_reg_n_0_[7] ),
        .I1(\mem_wordsize_reg_n_0_[1] ),
        .I2(\reg_op2_reg_n_0_[15] ),
        .O(\mem_wdata[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \mem_wdata[16]_i_1 
       (.I0(\reg_op2_reg_n_0_[0] ),
        .I1(\mem_wordsize_reg_n_0_[1] ),
        .I2(\mem_wordsize_reg_n_0_[0] ),
        .I3(\reg_op2_reg_n_0_[16] ),
        .O(\mem_wdata[16]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \mem_wdata[17]_i_1 
       (.I0(\reg_op2_reg_n_0_[1] ),
        .I1(\mem_wordsize_reg_n_0_[1] ),
        .I2(\mem_wordsize_reg_n_0_[0] ),
        .I3(\reg_op2_reg_n_0_[17] ),
        .O(\mem_wdata[17]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \mem_wdata[18]_i_1 
       (.I0(\reg_op2_reg_n_0_[2] ),
        .I1(\mem_wordsize_reg_n_0_[1] ),
        .I2(\mem_wordsize_reg_n_0_[0] ),
        .I3(\reg_op2_reg_n_0_[18] ),
        .O(\mem_wdata[18]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \mem_wdata[19]_i_1 
       (.I0(\reg_op2_reg_n_0_[3] ),
        .I1(\mem_wordsize_reg_n_0_[1] ),
        .I2(\mem_wordsize_reg_n_0_[0] ),
        .I3(\reg_op2_reg_n_0_[19] ),
        .O(\mem_wdata[19]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \mem_wdata[20]_i_1 
       (.I0(\reg_op2_reg_n_0_[4] ),
        .I1(\mem_wordsize_reg_n_0_[1] ),
        .I2(\mem_wordsize_reg_n_0_[0] ),
        .I3(\reg_op2_reg_n_0_[20] ),
        .O(\mem_wdata[20]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \mem_wdata[21]_i_1 
       (.I0(\reg_op2_reg_n_0_[5] ),
        .I1(\mem_wordsize_reg_n_0_[1] ),
        .I2(\mem_wordsize_reg_n_0_[0] ),
        .I3(\reg_op2_reg_n_0_[21] ),
        .O(\mem_wdata[21]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \mem_wdata[22]_i_1 
       (.I0(\reg_op2_reg_n_0_[6] ),
        .I1(\mem_wordsize_reg_n_0_[1] ),
        .I2(\mem_wordsize_reg_n_0_[0] ),
        .I3(\reg_op2_reg_n_0_[22] ),
        .O(\mem_wdata[22]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \mem_wdata[23]_i_1 
       (.I0(\reg_op2_reg_n_0_[7] ),
        .I1(\mem_wordsize_reg_n_0_[1] ),
        .I2(\mem_wordsize_reg_n_0_[0] ),
        .I3(\reg_op2_reg_n_0_[23] ),
        .O(\mem_wdata[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT5 #(
    .INIT(32'hFF00E2E2)) 
    \mem_wdata[24]_i_1 
       (.I0(\reg_op2_reg_n_0_[24] ),
        .I1(\mem_wordsize_reg_n_0_[0] ),
        .I2(\reg_op2_reg_n_0_[8] ),
        .I3(\reg_op2_reg_n_0_[0] ),
        .I4(\mem_wordsize_reg_n_0_[1] ),
        .O(\mem_wdata[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT5 #(
    .INIT(32'hFF00E2E2)) 
    \mem_wdata[25]_i_1 
       (.I0(\reg_op2_reg_n_0_[25] ),
        .I1(\mem_wordsize_reg_n_0_[0] ),
        .I2(\reg_op2_reg_n_0_[9] ),
        .I3(\reg_op2_reg_n_0_[1] ),
        .I4(\mem_wordsize_reg_n_0_[1] ),
        .O(\mem_wdata[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT5 #(
    .INIT(32'hFF00E2E2)) 
    \mem_wdata[26]_i_1 
       (.I0(\reg_op2_reg_n_0_[26] ),
        .I1(\mem_wordsize_reg_n_0_[0] ),
        .I2(\reg_op2_reg_n_0_[10] ),
        .I3(\reg_op2_reg_n_0_[2] ),
        .I4(\mem_wordsize_reg_n_0_[1] ),
        .O(\mem_wdata[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT5 #(
    .INIT(32'hFF00E2E2)) 
    \mem_wdata[27]_i_1 
       (.I0(\reg_op2_reg_n_0_[27] ),
        .I1(\mem_wordsize_reg_n_0_[0] ),
        .I2(\reg_op2_reg_n_0_[11] ),
        .I3(\reg_op2_reg_n_0_[3] ),
        .I4(\mem_wordsize_reg_n_0_[1] ),
        .O(\mem_wdata[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT5 #(
    .INIT(32'hFF00E2E2)) 
    \mem_wdata[28]_i_1 
       (.I0(\reg_op2_reg_n_0_[28] ),
        .I1(\mem_wordsize_reg_n_0_[0] ),
        .I2(\reg_op2_reg_n_0_[12] ),
        .I3(\reg_op2_reg_n_0_[4] ),
        .I4(\mem_wordsize_reg_n_0_[1] ),
        .O(\mem_wdata[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT5 #(
    .INIT(32'hFF00E2E2)) 
    \mem_wdata[29]_i_1 
       (.I0(\reg_op2_reg_n_0_[29] ),
        .I1(\mem_wordsize_reg_n_0_[0] ),
        .I2(\reg_op2_reg_n_0_[13] ),
        .I3(\reg_op2_reg_n_0_[5] ),
        .I4(\mem_wordsize_reg_n_0_[1] ),
        .O(\mem_wdata[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT5 #(
    .INIT(32'hFF00E2E2)) 
    \mem_wdata[30]_i_1 
       (.I0(\reg_op2_reg_n_0_[30] ),
        .I1(\mem_wordsize_reg_n_0_[0] ),
        .I2(\reg_op2_reg_n_0_[14] ),
        .I3(\reg_op2_reg_n_0_[6] ),
        .I4(\mem_wordsize_reg_n_0_[1] ),
        .O(\mem_wdata[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00001000)) 
    \mem_wdata[31]_i_1 
       (.I0(\mem_state_reg_n_0_[0] ),
        .I1(\mem_state_reg_n_0_[1] ),
        .I2(mem_do_wdata),
        .I3(resetn),
        .I4(trap_reg_0),
        .O(\mem_wdata[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT5 #(
    .INIT(32'hFF00E2E2)) 
    \mem_wdata[31]_i_2 
       (.I0(\reg_op2_reg_n_0_[31] ),
        .I1(\mem_wordsize_reg_n_0_[0] ),
        .I2(\reg_op2_reg_n_0_[15] ),
        .I3(\reg_op2_reg_n_0_[7] ),
        .I4(\mem_wordsize_reg_n_0_[1] ),
        .O(\mem_wdata[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_wdata[8]_i_1 
       (.I0(\reg_op2_reg_n_0_[0] ),
        .I1(\mem_wordsize_reg_n_0_[1] ),
        .I2(\reg_op2_reg_n_0_[8] ),
        .O(\mem_wdata[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_wdata[9]_i_1 
       (.I0(\reg_op2_reg_n_0_[1] ),
        .I1(\mem_wordsize_reg_n_0_[1] ),
        .I2(\reg_op2_reg_n_0_[9] ),
        .O(\mem_wdata[9]_i_1_n_0 ));
  FDRE \mem_wdata_reg[0] 
       (.C(clk),
        .CE(\mem_wdata[31]_i_1_n_0 ),
        .D(\reg_op2_reg_n_0_[0] ),
        .Q(mem_axi_wdata[0]),
        .R(1'b0));
  FDRE \mem_wdata_reg[10] 
       (.C(clk),
        .CE(\mem_wdata[31]_i_1_n_0 ),
        .D(\mem_wdata[10]_i_1_n_0 ),
        .Q(mem_axi_wdata[10]),
        .R(1'b0));
  FDRE \mem_wdata_reg[11] 
       (.C(clk),
        .CE(\mem_wdata[31]_i_1_n_0 ),
        .D(\mem_wdata[11]_i_1_n_0 ),
        .Q(mem_axi_wdata[11]),
        .R(1'b0));
  FDRE \mem_wdata_reg[12] 
       (.C(clk),
        .CE(\mem_wdata[31]_i_1_n_0 ),
        .D(\mem_wdata[12]_i_1_n_0 ),
        .Q(mem_axi_wdata[12]),
        .R(1'b0));
  FDRE \mem_wdata_reg[13] 
       (.C(clk),
        .CE(\mem_wdata[31]_i_1_n_0 ),
        .D(\mem_wdata[13]_i_1_n_0 ),
        .Q(mem_axi_wdata[13]),
        .R(1'b0));
  FDRE \mem_wdata_reg[14] 
       (.C(clk),
        .CE(\mem_wdata[31]_i_1_n_0 ),
        .D(\mem_wdata[14]_i_1_n_0 ),
        .Q(mem_axi_wdata[14]),
        .R(1'b0));
  FDRE \mem_wdata_reg[15] 
       (.C(clk),
        .CE(\mem_wdata[31]_i_1_n_0 ),
        .D(\mem_wdata[15]_i_1_n_0 ),
        .Q(mem_axi_wdata[15]),
        .R(1'b0));
  FDRE \mem_wdata_reg[16] 
       (.C(clk),
        .CE(\mem_wdata[31]_i_1_n_0 ),
        .D(\mem_wdata[16]_i_1_n_0 ),
        .Q(mem_axi_wdata[16]),
        .R(1'b0));
  FDRE \mem_wdata_reg[17] 
       (.C(clk),
        .CE(\mem_wdata[31]_i_1_n_0 ),
        .D(\mem_wdata[17]_i_1_n_0 ),
        .Q(mem_axi_wdata[17]),
        .R(1'b0));
  FDRE \mem_wdata_reg[18] 
       (.C(clk),
        .CE(\mem_wdata[31]_i_1_n_0 ),
        .D(\mem_wdata[18]_i_1_n_0 ),
        .Q(mem_axi_wdata[18]),
        .R(1'b0));
  FDRE \mem_wdata_reg[19] 
       (.C(clk),
        .CE(\mem_wdata[31]_i_1_n_0 ),
        .D(\mem_wdata[19]_i_1_n_0 ),
        .Q(mem_axi_wdata[19]),
        .R(1'b0));
  FDRE \mem_wdata_reg[1] 
       (.C(clk),
        .CE(\mem_wdata[31]_i_1_n_0 ),
        .D(\reg_op2_reg_n_0_[1] ),
        .Q(mem_axi_wdata[1]),
        .R(1'b0));
  FDRE \mem_wdata_reg[20] 
       (.C(clk),
        .CE(\mem_wdata[31]_i_1_n_0 ),
        .D(\mem_wdata[20]_i_1_n_0 ),
        .Q(mem_axi_wdata[20]),
        .R(1'b0));
  FDRE \mem_wdata_reg[21] 
       (.C(clk),
        .CE(\mem_wdata[31]_i_1_n_0 ),
        .D(\mem_wdata[21]_i_1_n_0 ),
        .Q(mem_axi_wdata[21]),
        .R(1'b0));
  FDRE \mem_wdata_reg[22] 
       (.C(clk),
        .CE(\mem_wdata[31]_i_1_n_0 ),
        .D(\mem_wdata[22]_i_1_n_0 ),
        .Q(mem_axi_wdata[22]),
        .R(1'b0));
  FDRE \mem_wdata_reg[23] 
       (.C(clk),
        .CE(\mem_wdata[31]_i_1_n_0 ),
        .D(\mem_wdata[23]_i_1_n_0 ),
        .Q(mem_axi_wdata[23]),
        .R(1'b0));
  FDRE \mem_wdata_reg[24] 
       (.C(clk),
        .CE(\mem_wdata[31]_i_1_n_0 ),
        .D(\mem_wdata[24]_i_1_n_0 ),
        .Q(mem_axi_wdata[24]),
        .R(1'b0));
  FDRE \mem_wdata_reg[25] 
       (.C(clk),
        .CE(\mem_wdata[31]_i_1_n_0 ),
        .D(\mem_wdata[25]_i_1_n_0 ),
        .Q(mem_axi_wdata[25]),
        .R(1'b0));
  FDRE \mem_wdata_reg[26] 
       (.C(clk),
        .CE(\mem_wdata[31]_i_1_n_0 ),
        .D(\mem_wdata[26]_i_1_n_0 ),
        .Q(mem_axi_wdata[26]),
        .R(1'b0));
  FDRE \mem_wdata_reg[27] 
       (.C(clk),
        .CE(\mem_wdata[31]_i_1_n_0 ),
        .D(\mem_wdata[27]_i_1_n_0 ),
        .Q(mem_axi_wdata[27]),
        .R(1'b0));
  FDRE \mem_wdata_reg[28] 
       (.C(clk),
        .CE(\mem_wdata[31]_i_1_n_0 ),
        .D(\mem_wdata[28]_i_1_n_0 ),
        .Q(mem_axi_wdata[28]),
        .R(1'b0));
  FDRE \mem_wdata_reg[29] 
       (.C(clk),
        .CE(\mem_wdata[31]_i_1_n_0 ),
        .D(\mem_wdata[29]_i_1_n_0 ),
        .Q(mem_axi_wdata[29]),
        .R(1'b0));
  FDRE \mem_wdata_reg[2] 
       (.C(clk),
        .CE(\mem_wdata[31]_i_1_n_0 ),
        .D(\reg_op2_reg_n_0_[2] ),
        .Q(mem_axi_wdata[2]),
        .R(1'b0));
  FDRE \mem_wdata_reg[30] 
       (.C(clk),
        .CE(\mem_wdata[31]_i_1_n_0 ),
        .D(\mem_wdata[30]_i_1_n_0 ),
        .Q(mem_axi_wdata[30]),
        .R(1'b0));
  FDRE \mem_wdata_reg[31] 
       (.C(clk),
        .CE(\mem_wdata[31]_i_1_n_0 ),
        .D(\mem_wdata[31]_i_2_n_0 ),
        .Q(mem_axi_wdata[31]),
        .R(1'b0));
  FDRE \mem_wdata_reg[3] 
       (.C(clk),
        .CE(\mem_wdata[31]_i_1_n_0 ),
        .D(\reg_op2_reg_n_0_[3] ),
        .Q(mem_axi_wdata[3]),
        .R(1'b0));
  FDRE \mem_wdata_reg[4] 
       (.C(clk),
        .CE(\mem_wdata[31]_i_1_n_0 ),
        .D(\reg_op2_reg_n_0_[4] ),
        .Q(mem_axi_wdata[4]),
        .R(1'b0));
  FDRE \mem_wdata_reg[5] 
       (.C(clk),
        .CE(\mem_wdata[31]_i_1_n_0 ),
        .D(\reg_op2_reg_n_0_[5] ),
        .Q(mem_axi_wdata[5]),
        .R(1'b0));
  FDRE \mem_wdata_reg[6] 
       (.C(clk),
        .CE(\mem_wdata[31]_i_1_n_0 ),
        .D(\reg_op2_reg_n_0_[6] ),
        .Q(mem_axi_wdata[6]),
        .R(1'b0));
  FDRE \mem_wdata_reg[7] 
       (.C(clk),
        .CE(\mem_wdata[31]_i_1_n_0 ),
        .D(\reg_op2_reg_n_0_[7] ),
        .Q(mem_axi_wdata[7]),
        .R(1'b0));
  FDRE \mem_wdata_reg[8] 
       (.C(clk),
        .CE(\mem_wdata[31]_i_1_n_0 ),
        .D(\mem_wdata[8]_i_1_n_0 ),
        .Q(mem_axi_wdata[8]),
        .R(1'b0));
  FDRE \mem_wdata_reg[9] 
       (.C(clk),
        .CE(\mem_wdata[31]_i_1_n_0 ),
        .D(\mem_wdata[9]_i_1_n_0 ),
        .Q(mem_axi_wdata[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAABBABBBAA88A888)) 
    \mem_wordsize[0]_i_1 
       (.I0(mem_wordsize[0]),
        .I1(\mem_wordsize[1]_i_3_n_0 ),
        .I2(\mem_wordsize[1]_i_4_n_0 ),
        .I3(\mem_wordsize[1]_i_5_n_0 ),
        .I4(\mem_wordsize[1]_i_6_n_0 ),
        .I5(\mem_wordsize_reg_n_0_[0] ),
        .O(\mem_wordsize[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hE0E0EFE0)) 
    \mem_wordsize[0]_i_2 
       (.I0(instr_lh),
        .I1(instr_lhu),
        .I2(\cpu_state_reg[6]_0 [0]),
        .I3(instr_sh),
        .I4(\cpu_state_reg[6]_0 [4]),
        .O(mem_wordsize[0]));
  LUT6 #(
    .INIT(64'hAABBABBBAA88A888)) 
    \mem_wordsize[1]_i_1 
       (.I0(mem_wordsize[1]),
        .I1(\mem_wordsize[1]_i_3_n_0 ),
        .I2(\mem_wordsize[1]_i_4_n_0 ),
        .I3(\mem_wordsize[1]_i_5_n_0 ),
        .I4(\mem_wordsize[1]_i_6_n_0 ),
        .I5(\mem_wordsize_reg_n_0_[1] ),
        .O(\mem_wordsize[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hE0E0EFE0)) 
    \mem_wordsize[1]_i_2 
       (.I0(instr_lb),
        .I1(instr_lbu),
        .I2(\cpu_state_reg[6]_0 [0]),
        .I3(instr_sb),
        .I4(\cpu_state_reg[6]_0 [4]),
        .O(mem_wordsize[1]));
  (* SOFT_HLUTNM = "soft_lutpair196" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mem_wordsize[1]_i_3 
       (.I0(\cpu_state_reg[6]_0 [4]),
        .I1(resetn),
        .O(\mem_wordsize[1]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mem_wordsize[1]_i_4 
       (.I0(\cpu_state_reg[6]_0 [1]),
        .I1(mem_do_wdata),
        .O(\mem_wordsize[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \mem_wordsize[1]_i_5 
       (.I0(mem_do_prefetch_reg_0),
        .I1(mem_done),
        .I2(resetn),
        .O(\mem_wordsize[1]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mem_wordsize[1]_i_6 
       (.I0(\cpu_state_reg[6]_0 [0]),
        .I1(mem_do_rdata),
        .O(\mem_wordsize[1]_i_6_n_0 ));
  FDRE \mem_wordsize_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\mem_wordsize[0]_i_1_n_0 ),
        .Q(\mem_wordsize_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \mem_wordsize_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\mem_wordsize[1]_i_1_n_0 ),
        .Q(\mem_wordsize_reg_n_0_[1] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h1010B0F0)) 
    \mem_wstrb[0]_i_1 
       (.I0(\mem_wordsize_reg_n_0_[0] ),
        .I1(\mem_wordsize_reg_n_0_[1] ),
        .I2(\mem_wstrb[1]_i_2_n_0 ),
        .I3(\reg_op1_reg_n_0_[0] ),
        .I4(\reg_op1_reg_n_0_[1] ),
        .O(\mem_wstrb[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h1010F0B0)) 
    \mem_wstrb[1]_i_1 
       (.I0(\mem_wordsize_reg_n_0_[0] ),
        .I1(\mem_wordsize_reg_n_0_[1] ),
        .I2(\mem_wstrb[1]_i_2_n_0 ),
        .I3(\reg_op1_reg_n_0_[0] ),
        .I4(\reg_op1_reg_n_0_[1] ),
        .O(\mem_wstrb[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \mem_wstrb[1]_i_2 
       (.I0(mem_la_firstword1),
        .I1(mem_do_rdata),
        .I2(\mem_state_reg_n_0_[0] ),
        .I3(\mem_state_reg_n_0_[1] ),
        .I4(mem_do_wdata),
        .I5(resetn),
        .O(\mem_wstrb[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF000000070005000)) 
    \mem_wstrb[2]_i_1 
       (.I0(\mem_wordsize_reg_n_0_[1] ),
        .I1(\reg_op1_reg_n_0_[0] ),
        .I2(\mem_wstrb[3]_i_5_n_0 ),
        .I3(\mem_wstrb[3]_i_6_n_0 ),
        .I4(\reg_op1_reg_n_0_[1] ),
        .I5(\mem_wordsize_reg_n_0_[0] ),
        .O(\mem_wstrb[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001110)) 
    \mem_wstrb[3]_i_1 
       (.I0(\mem_state_reg_n_0_[1] ),
        .I1(\mem_state_reg_n_0_[0] ),
        .I2(mem_do_rdata),
        .I3(mem_la_firstword1),
        .I4(trap_reg_1),
        .I5(\mem_addr[31]_i_1_n_0 ),
        .O(\mem_wstrb[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0000000D0005000)) 
    \mem_wstrb[3]_i_2 
       (.I0(\mem_wordsize_reg_n_0_[1] ),
        .I1(\reg_op1_reg_n_0_[0] ),
        .I2(\mem_wstrb[3]_i_5_n_0 ),
        .I3(\mem_wstrb[3]_i_6_n_0 ),
        .I4(\reg_op1_reg_n_0_[1] ),
        .I5(\mem_wordsize_reg_n_0_[0] ),
        .O(\mem_wstrb[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \mem_wstrb[3]_i_3 
       (.I0(mem_do_prefetch_reg_0),
        .I1(mem_do_rinst_reg_n_0),
        .O(mem_la_firstword1));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \mem_wstrb[3]_i_4 
       (.I0(trap_reg_0),
        .I1(resetn),
        .O(trap_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'hEEEEEEEF)) 
    \mem_wstrb[3]_i_5 
       (.I0(\mem_state_reg_n_0_[1] ),
        .I1(\mem_state_reg_n_0_[0] ),
        .I2(mem_do_rdata),
        .I3(mem_do_prefetch_reg_0),
        .I4(mem_do_rinst_reg_n_0),
        .O(\mem_wstrb[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \mem_wstrb[3]_i_6 
       (.I0(resetn),
        .I1(mem_do_wdata),
        .I2(\mem_state_reg_n_0_[1] ),
        .I3(\mem_state_reg_n_0_[0] ),
        .O(\mem_wstrb[3]_i_6_n_0 ));
  FDRE \mem_wstrb_reg[0] 
       (.C(clk),
        .CE(\mem_wstrb[3]_i_1_n_0 ),
        .D(\mem_wstrb[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \mem_wstrb_reg[1] 
       (.C(clk),
        .CE(\mem_wstrb[3]_i_1_n_0 ),
        .D(\mem_wstrb[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \mem_wstrb_reg[2] 
       (.C(clk),
        .CE(\mem_wstrb[3]_i_1_n_0 ),
        .D(\mem_wstrb[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \mem_wstrb_reg[3] 
       (.C(clk),
        .CE(\mem_wstrb[3]_i_1_n_0 ),
        .D(\mem_wstrb[3]_i_2_n_0 ),
        .Q(Q[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    prefetched_high_word_i_2
       (.I0(mem_do_rdata),
        .I1(\mem_state_reg_n_0_[1] ),
        .I2(\mem_state_reg_n_0_[0] ),
        .I3(data10),
        .I4(resetn_0),
        .O(mem_do_rdata_reg_0));
  FDRE prefetched_high_word_reg
       (.C(clk),
        .CE(1'b1),
        .D(prefetched_high_word_reg_1),
        .Q(prefetched_high_word_reg_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \reg_next_pc[10]_i_1 
       (.I0(\reg_next_pc[30]_i_2_n_0 ),
        .I1(\reg_out_reg_n_0_[10] ),
        .I2(\reg_next_pc[30]_i_3_n_0 ),
        .I3(alu_out_q[10]),
        .I4(\reg_next_pc[10]_i_2_n_0 ),
        .O(p_5_out[10]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \reg_next_pc[10]_i_2 
       (.I0(\reg_next_pc_reg_n_0_[10] ),
        .I1(\reg_pc[31]_i_2_n_0 ),
        .I2(irq_delay_reg_0),
        .I3(\reg_next_pc_reg[12]_i_3_n_6 ),
        .O(\reg_next_pc[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \reg_next_pc[11]_i_1 
       (.I0(\reg_next_pc[30]_i_2_n_0 ),
        .I1(\reg_out_reg_n_0_[11] ),
        .I2(\reg_next_pc[30]_i_3_n_0 ),
        .I3(alu_out_q[11]),
        .I4(\reg_next_pc[11]_i_2_n_0 ),
        .O(p_5_out[11]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \reg_next_pc[11]_i_2 
       (.I0(\reg_next_pc_reg_n_0_[11] ),
        .I1(\reg_pc[31]_i_2_n_0 ),
        .I2(irq_delay_reg_0),
        .I3(\reg_next_pc_reg[12]_i_3_n_5 ),
        .O(\reg_next_pc[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \reg_next_pc[12]_i_1 
       (.I0(\reg_next_pc[30]_i_2_n_0 ),
        .I1(\reg_out_reg_n_0_[12] ),
        .I2(\reg_next_pc[30]_i_3_n_0 ),
        .I3(alu_out_q[12]),
        .I4(\reg_next_pc[12]_i_2_n_0 ),
        .O(p_5_out[12]));
  LUT5 #(
    .INIT(32'hDFFF2000)) 
    \reg_next_pc[12]_i_10 
       (.I0(decoder_trigger_reg_n_0),
        .I1(instr_waitirq),
        .I2(instr_jal),
        .I3(decoded_imm_uj[10]),
        .I4(current_pc[10]),
        .O(\reg_next_pc[12]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hDFFF2000)) 
    \reg_next_pc[12]_i_11 
       (.I0(decoder_trigger_reg_n_0),
        .I1(instr_waitirq),
        .I2(instr_jal),
        .I3(decoded_imm_uj[9]),
        .I4(current_pc[9]),
        .O(\reg_next_pc[12]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \reg_next_pc[12]_i_2 
       (.I0(\reg_next_pc_reg_n_0_[12] ),
        .I1(\reg_pc[31]_i_2_n_0 ),
        .I2(irq_delay_reg_0),
        .I3(\reg_next_pc_reg[12]_i_3_n_4 ),
        .O(\reg_next_pc[12]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \reg_next_pc[12]_i_4 
       (.I0(decoded_imm_uj[12]),
        .I1(instr_jal),
        .I2(instr_waitirq),
        .I3(decoder_trigger_reg_n_0),
        .O(\reg_next_pc[12]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \reg_next_pc[12]_i_5 
       (.I0(decoded_imm_uj[11]),
        .I1(instr_jal),
        .I2(instr_waitirq),
        .I3(decoder_trigger_reg_n_0),
        .O(\reg_next_pc[12]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \reg_next_pc[12]_i_6 
       (.I0(decoded_imm_uj[10]),
        .I1(instr_jal),
        .I2(instr_waitirq),
        .I3(decoder_trigger_reg_n_0),
        .O(\reg_next_pc[12]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \reg_next_pc[12]_i_7 
       (.I0(decoded_imm_uj[9]),
        .I1(instr_jal),
        .I2(instr_waitirq),
        .I3(decoder_trigger_reg_n_0),
        .O(\reg_next_pc[12]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hDFFF2000)) 
    \reg_next_pc[12]_i_8 
       (.I0(decoder_trigger_reg_n_0),
        .I1(instr_waitirq),
        .I2(instr_jal),
        .I3(decoded_imm_uj[12]),
        .I4(current_pc[12]),
        .O(\reg_next_pc[12]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hDFFF2000)) 
    \reg_next_pc[12]_i_9 
       (.I0(decoder_trigger_reg_n_0),
        .I1(instr_waitirq),
        .I2(instr_jal),
        .I3(decoded_imm_uj[11]),
        .I4(current_pc[11]),
        .O(\reg_next_pc[12]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \reg_next_pc[13]_i_1 
       (.I0(\reg_next_pc[30]_i_2_n_0 ),
        .I1(\reg_out_reg_n_0_[13] ),
        .I2(\reg_next_pc[30]_i_3_n_0 ),
        .I3(alu_out_q[13]),
        .I4(\reg_next_pc[13]_i_2_n_0 ),
        .O(p_5_out[13]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \reg_next_pc[13]_i_2 
       (.I0(\reg_next_pc_reg_n_0_[13] ),
        .I1(\reg_pc[31]_i_2_n_0 ),
        .I2(irq_delay_reg_0),
        .I3(\reg_next_pc_reg[16]_i_3_n_7 ),
        .O(\reg_next_pc[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \reg_next_pc[14]_i_1 
       (.I0(\reg_next_pc[30]_i_2_n_0 ),
        .I1(\reg_out_reg_n_0_[14] ),
        .I2(\reg_next_pc[30]_i_3_n_0 ),
        .I3(alu_out_q[14]),
        .I4(\reg_next_pc[14]_i_2_n_0 ),
        .O(p_5_out[14]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \reg_next_pc[14]_i_2 
       (.I0(\reg_next_pc_reg_n_0_[14] ),
        .I1(\reg_pc[31]_i_2_n_0 ),
        .I2(irq_delay_reg_0),
        .I3(\reg_next_pc_reg[16]_i_3_n_6 ),
        .O(\reg_next_pc[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \reg_next_pc[15]_i_1 
       (.I0(\reg_next_pc[30]_i_2_n_0 ),
        .I1(\reg_out_reg_n_0_[15] ),
        .I2(\reg_next_pc[30]_i_3_n_0 ),
        .I3(alu_out_q[15]),
        .I4(\reg_next_pc[15]_i_2_n_0 ),
        .O(p_5_out[15]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \reg_next_pc[15]_i_2 
       (.I0(\reg_next_pc_reg_n_0_[15] ),
        .I1(\reg_pc[31]_i_2_n_0 ),
        .I2(irq_delay_reg_0),
        .I3(\reg_next_pc_reg[16]_i_3_n_5 ),
        .O(\reg_next_pc[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \reg_next_pc[16]_i_1 
       (.I0(\reg_next_pc[30]_i_2_n_0 ),
        .I1(\reg_out_reg_n_0_[16] ),
        .I2(\reg_next_pc[30]_i_3_n_0 ),
        .I3(alu_out_q[16]),
        .I4(\reg_next_pc[16]_i_2_n_0 ),
        .O(p_5_out[16]));
  LUT5 #(
    .INIT(32'hDFFF2000)) 
    \reg_next_pc[16]_i_10 
       (.I0(decoder_trigger_reg_n_0),
        .I1(instr_waitirq),
        .I2(instr_jal),
        .I3(decoded_imm_uj[14]),
        .I4(current_pc[14]),
        .O(\reg_next_pc[16]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hDFFF2000)) 
    \reg_next_pc[16]_i_11 
       (.I0(decoder_trigger_reg_n_0),
        .I1(instr_waitirq),
        .I2(instr_jal),
        .I3(decoded_imm_uj[13]),
        .I4(current_pc[13]),
        .O(\reg_next_pc[16]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \reg_next_pc[16]_i_2 
       (.I0(\reg_next_pc_reg_n_0_[16] ),
        .I1(\reg_pc[31]_i_2_n_0 ),
        .I2(irq_delay_reg_0),
        .I3(\reg_next_pc_reg[16]_i_3_n_4 ),
        .O(\reg_next_pc[16]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \reg_next_pc[16]_i_4 
       (.I0(decoded_imm_uj[16]),
        .I1(instr_jal),
        .I2(instr_waitirq),
        .I3(decoder_trigger_reg_n_0),
        .O(\reg_next_pc[16]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \reg_next_pc[16]_i_5 
       (.I0(decoded_imm_uj[15]),
        .I1(instr_jal),
        .I2(instr_waitirq),
        .I3(decoder_trigger_reg_n_0),
        .O(\reg_next_pc[16]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \reg_next_pc[16]_i_6 
       (.I0(decoded_imm_uj[14]),
        .I1(instr_jal),
        .I2(instr_waitirq),
        .I3(decoder_trigger_reg_n_0),
        .O(\reg_next_pc[16]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \reg_next_pc[16]_i_7 
       (.I0(decoded_imm_uj[13]),
        .I1(instr_jal),
        .I2(instr_waitirq),
        .I3(decoder_trigger_reg_n_0),
        .O(\reg_next_pc[16]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hDFFF2000)) 
    \reg_next_pc[16]_i_8 
       (.I0(decoder_trigger_reg_n_0),
        .I1(instr_waitirq),
        .I2(instr_jal),
        .I3(decoded_imm_uj[16]),
        .I4(current_pc[16]),
        .O(\reg_next_pc[16]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hDFFF2000)) 
    \reg_next_pc[16]_i_9 
       (.I0(decoder_trigger_reg_n_0),
        .I1(instr_waitirq),
        .I2(instr_jal),
        .I3(decoded_imm_uj[15]),
        .I4(current_pc[15]),
        .O(\reg_next_pc[16]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \reg_next_pc[17]_i_1 
       (.I0(\reg_next_pc[30]_i_2_n_0 ),
        .I1(\reg_out_reg_n_0_[17] ),
        .I2(\reg_next_pc[30]_i_3_n_0 ),
        .I3(alu_out_q[17]),
        .I4(\reg_next_pc[17]_i_2_n_0 ),
        .O(p_5_out[17]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \reg_next_pc[17]_i_2 
       (.I0(\reg_next_pc_reg_n_0_[17] ),
        .I1(\reg_pc[31]_i_2_n_0 ),
        .I2(irq_delay_reg_0),
        .I3(\reg_next_pc_reg[20]_i_3_n_7 ),
        .O(\reg_next_pc[17]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \reg_next_pc[18]_i_1 
       (.I0(\reg_next_pc[30]_i_2_n_0 ),
        .I1(\reg_out_reg_n_0_[18] ),
        .I2(\reg_next_pc[30]_i_3_n_0 ),
        .I3(alu_out_q[18]),
        .I4(\reg_next_pc[18]_i_2_n_0 ),
        .O(p_5_out[18]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \reg_next_pc[18]_i_2 
       (.I0(\reg_next_pc_reg_n_0_[18] ),
        .I1(\reg_pc[31]_i_2_n_0 ),
        .I2(irq_delay_reg_0),
        .I3(\reg_next_pc_reg[20]_i_3_n_6 ),
        .O(\reg_next_pc[18]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \reg_next_pc[19]_i_1 
       (.I0(\reg_next_pc[30]_i_2_n_0 ),
        .I1(\reg_out_reg_n_0_[19] ),
        .I2(\reg_next_pc[30]_i_3_n_0 ),
        .I3(alu_out_q[19]),
        .I4(\reg_next_pc[19]_i_2_n_0 ),
        .O(p_5_out[19]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \reg_next_pc[19]_i_2 
       (.I0(\reg_next_pc_reg_n_0_[19] ),
        .I1(\reg_pc[31]_i_2_n_0 ),
        .I2(irq_delay_reg_0),
        .I3(\reg_next_pc_reg[20]_i_3_n_5 ),
        .O(\reg_next_pc[19]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \reg_next_pc[1]_i_1 
       (.I0(\reg_next_pc[30]_i_2_n_0 ),
        .I1(\reg_out_reg_n_0_[1] ),
        .I2(\reg_next_pc[30]_i_3_n_0 ),
        .I3(alu_out_q[1]),
        .I4(\reg_next_pc[1]_i_2_n_0 ),
        .O(p_5_out[1]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \reg_next_pc[1]_i_2 
       (.I0(\reg_next_pc_reg_n_0_[1] ),
        .I1(\reg_pc[31]_i_2_n_0 ),
        .I2(irq_delay_reg_0),
        .I3(\reg_next_pc_reg[4]_i_3_n_7 ),
        .O(\reg_next_pc[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \reg_next_pc[20]_i_1 
       (.I0(\reg_next_pc[30]_i_2_n_0 ),
        .I1(\reg_out_reg_n_0_[20] ),
        .I2(\reg_next_pc[30]_i_3_n_0 ),
        .I3(alu_out_q[20]),
        .I4(\reg_next_pc[20]_i_2_n_0 ),
        .O(p_5_out[20]));
  LUT5 #(
    .INIT(32'hDFFF2000)) 
    \reg_next_pc[20]_i_10 
       (.I0(decoder_trigger_reg_n_0),
        .I1(instr_waitirq),
        .I2(instr_jal),
        .I3(decoded_imm_uj[18]),
        .I4(current_pc[18]),
        .O(\reg_next_pc[20]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hDFFF2000)) 
    \reg_next_pc[20]_i_11 
       (.I0(decoder_trigger_reg_n_0),
        .I1(instr_waitirq),
        .I2(instr_jal),
        .I3(decoded_imm_uj[17]),
        .I4(current_pc[17]),
        .O(\reg_next_pc[20]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \reg_next_pc[20]_i_2 
       (.I0(\reg_next_pc_reg_n_0_[20] ),
        .I1(\reg_pc[31]_i_2_n_0 ),
        .I2(irq_delay_reg_0),
        .I3(\reg_next_pc_reg[20]_i_3_n_4 ),
        .O(\reg_next_pc[20]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \reg_next_pc[20]_i_4 
       (.I0(decoded_imm_uj[20]),
        .I1(decoder_trigger_reg_n_0),
        .I2(instr_waitirq),
        .I3(instr_jal),
        .O(\reg_next_pc[20]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \reg_next_pc[20]_i_5 
       (.I0(decoded_imm_uj[19]),
        .I1(instr_jal),
        .I2(instr_waitirq),
        .I3(decoder_trigger_reg_n_0),
        .O(\reg_next_pc[20]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \reg_next_pc[20]_i_6 
       (.I0(decoded_imm_uj[18]),
        .I1(instr_jal),
        .I2(instr_waitirq),
        .I3(decoder_trigger_reg_n_0),
        .O(\reg_next_pc[20]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \reg_next_pc[20]_i_7 
       (.I0(decoded_imm_uj[17]),
        .I1(instr_jal),
        .I2(instr_waitirq),
        .I3(decoder_trigger_reg_n_0),
        .O(\reg_next_pc[20]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \reg_next_pc[20]_i_8 
       (.I0(decoded_imm_uj[20]),
        .I1(decoder_trigger_reg_n_0),
        .I2(instr_waitirq),
        .I3(instr_jal),
        .I4(current_pc[20]),
        .O(\reg_next_pc[20]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hDFFF2000)) 
    \reg_next_pc[20]_i_9 
       (.I0(decoder_trigger_reg_n_0),
        .I1(instr_waitirq),
        .I2(instr_jal),
        .I3(decoded_imm_uj[19]),
        .I4(current_pc[19]),
        .O(\reg_next_pc[20]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \reg_next_pc[21]_i_1 
       (.I0(\reg_next_pc[30]_i_2_n_0 ),
        .I1(\reg_out_reg_n_0_[21] ),
        .I2(\reg_next_pc[30]_i_3_n_0 ),
        .I3(alu_out_q[21]),
        .I4(\reg_next_pc[21]_i_2_n_0 ),
        .O(p_5_out[21]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \reg_next_pc[21]_i_2 
       (.I0(\reg_next_pc_reg_n_0_[21] ),
        .I1(\reg_pc[31]_i_2_n_0 ),
        .I2(irq_delay_reg_0),
        .I3(\reg_next_pc_reg[24]_i_3_n_7 ),
        .O(\reg_next_pc[21]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \reg_next_pc[22]_i_1 
       (.I0(\reg_next_pc[30]_i_2_n_0 ),
        .I1(\reg_out_reg_n_0_[22] ),
        .I2(\reg_next_pc[30]_i_3_n_0 ),
        .I3(alu_out_q[22]),
        .I4(\reg_next_pc[22]_i_2_n_0 ),
        .O(p_5_out[22]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \reg_next_pc[22]_i_2 
       (.I0(\reg_next_pc_reg_n_0_[22] ),
        .I1(\reg_pc[31]_i_2_n_0 ),
        .I2(irq_delay_reg_0),
        .I3(\reg_next_pc_reg[24]_i_3_n_6 ),
        .O(\reg_next_pc[22]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \reg_next_pc[23]_i_1 
       (.I0(\reg_next_pc[30]_i_2_n_0 ),
        .I1(\reg_out_reg_n_0_[23] ),
        .I2(\reg_next_pc[30]_i_3_n_0 ),
        .I3(alu_out_q[23]),
        .I4(\reg_next_pc[23]_i_2_n_0 ),
        .O(p_5_out[23]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \reg_next_pc[23]_i_2 
       (.I0(\reg_next_pc_reg_n_0_[23] ),
        .I1(\reg_pc[31]_i_2_n_0 ),
        .I2(irq_delay_reg_0),
        .I3(\reg_next_pc_reg[24]_i_3_n_5 ),
        .O(\reg_next_pc[23]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \reg_next_pc[24]_i_1 
       (.I0(\reg_next_pc[30]_i_2_n_0 ),
        .I1(\reg_out_reg_n_0_[24] ),
        .I2(\reg_next_pc[30]_i_3_n_0 ),
        .I3(alu_out_q[24]),
        .I4(\reg_next_pc[24]_i_2_n_0 ),
        .O(p_5_out[24]));
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \reg_next_pc[24]_i_10 
       (.I0(decoded_imm_uj[20]),
        .I1(decoder_trigger_reg_n_0),
        .I2(instr_waitirq),
        .I3(instr_jal),
        .I4(current_pc[22]),
        .O(\reg_next_pc[24]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \reg_next_pc[24]_i_11 
       (.I0(decoded_imm_uj[20]),
        .I1(decoder_trigger_reg_n_0),
        .I2(instr_waitirq),
        .I3(instr_jal),
        .I4(current_pc[21]),
        .O(\reg_next_pc[24]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \reg_next_pc[24]_i_2 
       (.I0(\reg_next_pc_reg_n_0_[24] ),
        .I1(\reg_pc[31]_i_2_n_0 ),
        .I2(irq_delay_reg_0),
        .I3(\reg_next_pc_reg[24]_i_3_n_4 ),
        .O(\reg_next_pc[24]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \reg_next_pc[24]_i_4 
       (.I0(decoded_imm_uj[20]),
        .I1(decoder_trigger_reg_n_0),
        .I2(instr_waitirq),
        .I3(instr_jal),
        .O(\reg_next_pc[24]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \reg_next_pc[24]_i_5 
       (.I0(decoded_imm_uj[20]),
        .I1(decoder_trigger_reg_n_0),
        .I2(instr_waitirq),
        .I3(instr_jal),
        .O(\reg_next_pc[24]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \reg_next_pc[24]_i_6 
       (.I0(decoded_imm_uj[20]),
        .I1(decoder_trigger_reg_n_0),
        .I2(instr_waitirq),
        .I3(instr_jal),
        .O(\reg_next_pc[24]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \reg_next_pc[24]_i_7 
       (.I0(decoded_imm_uj[20]),
        .I1(decoder_trigger_reg_n_0),
        .I2(instr_waitirq),
        .I3(instr_jal),
        .O(\reg_next_pc[24]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \reg_next_pc[24]_i_8 
       (.I0(decoded_imm_uj[20]),
        .I1(decoder_trigger_reg_n_0),
        .I2(instr_waitirq),
        .I3(instr_jal),
        .I4(current_pc[24]),
        .O(\reg_next_pc[24]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \reg_next_pc[24]_i_9 
       (.I0(decoded_imm_uj[20]),
        .I1(decoder_trigger_reg_n_0),
        .I2(instr_waitirq),
        .I3(instr_jal),
        .I4(current_pc[23]),
        .O(\reg_next_pc[24]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \reg_next_pc[25]_i_1 
       (.I0(\reg_next_pc[30]_i_2_n_0 ),
        .I1(\reg_out_reg_n_0_[25] ),
        .I2(\reg_next_pc[30]_i_3_n_0 ),
        .I3(alu_out_q[25]),
        .I4(\reg_next_pc[25]_i_2_n_0 ),
        .O(p_5_out[25]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \reg_next_pc[25]_i_2 
       (.I0(\reg_next_pc_reg_n_0_[25] ),
        .I1(\reg_pc[31]_i_2_n_0 ),
        .I2(irq_delay_reg_0),
        .I3(\reg_next_pc_reg[31]_i_3_n_7 ),
        .O(\reg_next_pc[25]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \reg_next_pc[26]_i_1 
       (.I0(\reg_next_pc[30]_i_2_n_0 ),
        .I1(\reg_out_reg_n_0_[26] ),
        .I2(\reg_next_pc[30]_i_3_n_0 ),
        .I3(alu_out_q[26]),
        .I4(\reg_next_pc[26]_i_2_n_0 ),
        .O(p_5_out[26]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \reg_next_pc[26]_i_2 
       (.I0(\reg_next_pc_reg_n_0_[26] ),
        .I1(\reg_pc[31]_i_2_n_0 ),
        .I2(irq_delay_reg_0),
        .I3(\reg_next_pc_reg[31]_i_3_n_6 ),
        .O(\reg_next_pc[26]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \reg_next_pc[27]_i_1 
       (.I0(\reg_next_pc[30]_i_2_n_0 ),
        .I1(\reg_out_reg_n_0_[27] ),
        .I2(\reg_next_pc[30]_i_3_n_0 ),
        .I3(alu_out_q[27]),
        .I4(\reg_next_pc[27]_i_2_n_0 ),
        .O(p_5_out[27]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \reg_next_pc[27]_i_2 
       (.I0(\reg_next_pc_reg_n_0_[27] ),
        .I1(\reg_pc[31]_i_2_n_0 ),
        .I2(irq_delay_reg_0),
        .I3(\reg_next_pc_reg[31]_i_3_n_5 ),
        .O(\reg_next_pc[27]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \reg_next_pc[28]_i_1 
       (.I0(\reg_next_pc[30]_i_2_n_0 ),
        .I1(\reg_out_reg_n_0_[28] ),
        .I2(\reg_next_pc[30]_i_3_n_0 ),
        .I3(alu_out_q[28]),
        .I4(\reg_next_pc[28]_i_2_n_0 ),
        .O(p_5_out[28]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \reg_next_pc[28]_i_2 
       (.I0(\reg_next_pc_reg_n_0_[28] ),
        .I1(\reg_pc[31]_i_2_n_0 ),
        .I2(irq_delay_reg_0),
        .I3(\reg_next_pc_reg[31]_i_3_n_4 ),
        .O(\reg_next_pc[28]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \reg_next_pc[29]_i_1 
       (.I0(\reg_next_pc[30]_i_2_n_0 ),
        .I1(\reg_out_reg_n_0_[29] ),
        .I2(\reg_next_pc[30]_i_3_n_0 ),
        .I3(alu_out_q[29]),
        .I4(\reg_next_pc[29]_i_2_n_0 ),
        .O(p_5_out[29]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \reg_next_pc[29]_i_2 
       (.I0(\reg_next_pc_reg_n_0_[29] ),
        .I1(\reg_pc[31]_i_2_n_0 ),
        .I2(irq_delay_reg_0),
        .I3(\reg_next_pc_reg[31]_i_2_n_7 ),
        .O(\reg_next_pc[29]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \reg_next_pc[2]_i_1 
       (.I0(\reg_next_pc[30]_i_2_n_0 ),
        .I1(\reg_out_reg_n_0_[2] ),
        .I2(\reg_next_pc[30]_i_3_n_0 ),
        .I3(alu_out_q[2]),
        .I4(\reg_next_pc[2]_i_2_n_0 ),
        .O(p_5_out[2]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \reg_next_pc[2]_i_2 
       (.I0(\reg_next_pc_reg_n_0_[2] ),
        .I1(\reg_pc[31]_i_2_n_0 ),
        .I2(irq_delay_reg_0),
        .I3(\reg_next_pc_reg[4]_i_3_n_6 ),
        .O(\reg_next_pc[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \reg_next_pc[30]_i_1 
       (.I0(\reg_next_pc[30]_i_2_n_0 ),
        .I1(\reg_out_reg_n_0_[30] ),
        .I2(\reg_next_pc[30]_i_3_n_0 ),
        .I3(alu_out_q[30]),
        .I4(\reg_next_pc[30]_i_4_n_0 ),
        .O(p_5_out[30]));
  LUT4 #(
    .INIT(16'h4000)) 
    \reg_next_pc[30]_i_2 
       (.I0(latched_stalu_reg_0),
        .I1(latched_store_reg_0),
        .I2(latched_branch_reg_0),
        .I3(irq_delay_reg_0),
        .O(\reg_next_pc[30]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \reg_next_pc[30]_i_3 
       (.I0(latched_store_reg_0),
        .I1(latched_branch_reg_0),
        .I2(latched_stalu_reg_0),
        .I3(irq_delay_reg_0),
        .O(\reg_next_pc[30]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \reg_next_pc[30]_i_4 
       (.I0(\reg_next_pc_reg_n_0_[30] ),
        .I1(\reg_pc[31]_i_2_n_0 ),
        .I2(irq_delay_reg_0),
        .I3(\reg_next_pc_reg[31]_i_2_n_6 ),
        .O(\reg_next_pc[30]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair189" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_next_pc[31]_i_1 
       (.I0(current_pc[31]),
        .I1(irq_delay_reg_0),
        .I2(\reg_next_pc_reg[31]_i_2_n_5 ),
        .O(p_5_out[31]));
  LUT4 #(
    .INIT(16'h0800)) 
    \reg_next_pc[31]_i_10 
       (.I0(decoded_imm_uj[20]),
        .I1(decoder_trigger_reg_n_0),
        .I2(instr_waitirq),
        .I3(instr_jal),
        .O(\reg_next_pc[31]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \reg_next_pc[31]_i_11 
       (.I0(decoded_imm_uj[20]),
        .I1(decoder_trigger_reg_n_0),
        .I2(instr_waitirq),
        .I3(instr_jal),
        .O(\reg_next_pc[31]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \reg_next_pc[31]_i_12 
       (.I0(decoded_imm_uj[20]),
        .I1(decoder_trigger_reg_n_0),
        .I2(instr_waitirq),
        .I3(instr_jal),
        .O(\reg_next_pc[31]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \reg_next_pc[31]_i_13 
       (.I0(decoded_imm_uj[20]),
        .I1(decoder_trigger_reg_n_0),
        .I2(instr_waitirq),
        .I3(instr_jal),
        .I4(current_pc[28]),
        .O(\reg_next_pc[31]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \reg_next_pc[31]_i_14 
       (.I0(decoded_imm_uj[20]),
        .I1(decoder_trigger_reg_n_0),
        .I2(instr_waitirq),
        .I3(instr_jal),
        .I4(current_pc[27]),
        .O(\reg_next_pc[31]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \reg_next_pc[31]_i_15 
       (.I0(decoded_imm_uj[20]),
        .I1(decoder_trigger_reg_n_0),
        .I2(instr_waitirq),
        .I3(instr_jal),
        .I4(current_pc[26]),
        .O(\reg_next_pc[31]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \reg_next_pc[31]_i_16 
       (.I0(decoded_imm_uj[20]),
        .I1(decoder_trigger_reg_n_0),
        .I2(instr_waitirq),
        .I3(instr_jal),
        .I4(current_pc[25]),
        .O(\reg_next_pc[31]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \reg_next_pc[31]_i_4 
       (.I0(decoded_imm_uj[20]),
        .I1(decoder_trigger_reg_n_0),
        .I2(instr_waitirq),
        .I3(instr_jal),
        .O(\reg_next_pc[31]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \reg_next_pc[31]_i_5 
       (.I0(decoded_imm_uj[20]),
        .I1(decoder_trigger_reg_n_0),
        .I2(instr_waitirq),
        .I3(instr_jal),
        .O(\reg_next_pc[31]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \reg_next_pc[31]_i_6 
       (.I0(decoded_imm_uj[20]),
        .I1(decoder_trigger_reg_n_0),
        .I2(instr_waitirq),
        .I3(instr_jal),
        .I4(current_pc[31]),
        .O(\reg_next_pc[31]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \reg_next_pc[31]_i_7 
       (.I0(decoded_imm_uj[20]),
        .I1(decoder_trigger_reg_n_0),
        .I2(instr_waitirq),
        .I3(instr_jal),
        .I4(current_pc[30]),
        .O(\reg_next_pc[31]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \reg_next_pc[31]_i_8 
       (.I0(decoded_imm_uj[20]),
        .I1(decoder_trigger_reg_n_0),
        .I2(instr_waitirq),
        .I3(instr_jal),
        .I4(current_pc[29]),
        .O(\reg_next_pc[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \reg_next_pc[31]_i_9 
       (.I0(decoded_imm_uj[20]),
        .I1(decoder_trigger_reg_n_0),
        .I2(instr_waitirq),
        .I3(instr_jal),
        .O(\reg_next_pc[31]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \reg_next_pc[3]_i_1 
       (.I0(\reg_next_pc[30]_i_2_n_0 ),
        .I1(\reg_out_reg_n_0_[3] ),
        .I2(\reg_next_pc[30]_i_3_n_0 ),
        .I3(alu_out_q[3]),
        .I4(\reg_next_pc[3]_i_2_n_0 ),
        .O(p_5_out[3]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \reg_next_pc[3]_i_2 
       (.I0(\reg_next_pc_reg_n_0_[3] ),
        .I1(\reg_pc[31]_i_2_n_0 ),
        .I2(irq_delay_reg_0),
        .I3(\reg_next_pc_reg[4]_i_3_n_5 ),
        .O(\reg_next_pc[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \reg_next_pc[4]_i_1 
       (.I0(\reg_next_pc[30]_i_2_n_0 ),
        .I1(\reg_out_reg_n_0_[4] ),
        .I2(\reg_next_pc[30]_i_3_n_0 ),
        .I3(alu_out_q[4]),
        .I4(\reg_next_pc[4]_i_2_n_0 ),
        .O(p_5_out[4]));
  LUT5 #(
    .INIT(32'hB0BB4F44)) 
    \reg_next_pc[4]_i_10 
       (.I0(compressed_instr),
        .I1(\reg_next_pc[4]_i_12_n_0 ),
        .I2(latched_branch_i_4_n_0),
        .I3(decoded_imm_uj[2]),
        .I4(current_pc[2]),
        .O(\reg_next_pc[4]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h70778F88)) 
    \reg_next_pc[4]_i_11 
       (.I0(compressed_instr),
        .I1(\reg_next_pc[4]_i_12_n_0 ),
        .I2(latched_branch_i_4_n_0),
        .I3(decoded_imm_uj[1]),
        .I4(current_pc[1]),
        .O(\reg_next_pc[4]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'hFC500050)) 
    \reg_next_pc[4]_i_12 
       (.I0(instr_jal),
        .I1(do_waitirq_reg_n_0),
        .I2(decoder_trigger_reg_n_0),
        .I3(instr_waitirq),
        .I4(do_waitirq1),
        .O(\reg_next_pc[4]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair189" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_next_pc[4]_i_2 
       (.I0(\reg_pc[4]_i_2_n_0 ),
        .I1(irq_delay_reg_0),
        .I2(\reg_next_pc_reg[4]_i_3_n_4 ),
        .O(\reg_next_pc[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \reg_next_pc[4]_i_4 
       (.I0(decoded_imm_uj[4]),
        .I1(instr_jal),
        .I2(instr_waitirq),
        .I3(decoder_trigger_reg_n_0),
        .O(\reg_next_pc[4]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \reg_next_pc[4]_i_5 
       (.I0(decoded_imm_uj[3]),
        .I1(instr_jal),
        .I2(instr_waitirq),
        .I3(decoder_trigger_reg_n_0),
        .O(\reg_next_pc[4]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \reg_next_pc[4]_i_6 
       (.I0(compressed_instr),
        .I1(\reg_next_pc[4]_i_12_n_0 ),
        .I2(latched_branch_i_4_n_0),
        .I3(decoded_imm_uj[2]),
        .O(\reg_next_pc[4]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \reg_next_pc[4]_i_7 
       (.I0(compressed_instr),
        .I1(\reg_next_pc[4]_i_12_n_0 ),
        .I2(latched_branch_i_4_n_0),
        .I3(decoded_imm_uj[1]),
        .O(\reg_next_pc[4]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hDFFF2000)) 
    \reg_next_pc[4]_i_8 
       (.I0(decoder_trigger_reg_n_0),
        .I1(instr_waitirq),
        .I2(instr_jal),
        .I3(decoded_imm_uj[4]),
        .I4(current_pc[4]),
        .O(\reg_next_pc[4]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hDFFF2000)) 
    \reg_next_pc[4]_i_9 
       (.I0(decoder_trigger_reg_n_0),
        .I1(instr_waitirq),
        .I2(instr_jal),
        .I3(decoded_imm_uj[3]),
        .I4(current_pc[3]),
        .O(\reg_next_pc[4]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \reg_next_pc[5]_i_1 
       (.I0(\reg_next_pc[30]_i_2_n_0 ),
        .I1(\reg_out_reg_n_0_[5] ),
        .I2(\reg_next_pc[30]_i_3_n_0 ),
        .I3(alu_out_q[5]),
        .I4(\reg_next_pc[5]_i_2_n_0 ),
        .O(p_5_out[5]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \reg_next_pc[5]_i_2 
       (.I0(\reg_next_pc_reg_n_0_[5] ),
        .I1(\reg_pc[31]_i_2_n_0 ),
        .I2(irq_delay_reg_0),
        .I3(\reg_next_pc_reg[8]_i_3_n_7 ),
        .O(\reg_next_pc[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \reg_next_pc[6]_i_1 
       (.I0(\reg_next_pc[30]_i_2_n_0 ),
        .I1(\reg_out_reg_n_0_[6] ),
        .I2(\reg_next_pc[30]_i_3_n_0 ),
        .I3(alu_out_q[6]),
        .I4(\reg_next_pc[6]_i_2_n_0 ),
        .O(p_5_out[6]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \reg_next_pc[6]_i_2 
       (.I0(\reg_next_pc_reg_n_0_[6] ),
        .I1(\reg_pc[31]_i_2_n_0 ),
        .I2(irq_delay_reg_0),
        .I3(\reg_next_pc_reg[8]_i_3_n_6 ),
        .O(\reg_next_pc[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \reg_next_pc[7]_i_1 
       (.I0(\reg_next_pc[30]_i_2_n_0 ),
        .I1(\reg_out_reg_n_0_[7] ),
        .I2(\reg_next_pc[30]_i_3_n_0 ),
        .I3(alu_out_q[7]),
        .I4(\reg_next_pc[7]_i_2_n_0 ),
        .O(p_5_out[7]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \reg_next_pc[7]_i_2 
       (.I0(\reg_next_pc_reg_n_0_[7] ),
        .I1(\reg_pc[31]_i_2_n_0 ),
        .I2(irq_delay_reg_0),
        .I3(\reg_next_pc_reg[8]_i_3_n_5 ),
        .O(\reg_next_pc[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \reg_next_pc[8]_i_1 
       (.I0(\reg_next_pc[30]_i_2_n_0 ),
        .I1(\reg_out_reg_n_0_[8] ),
        .I2(\reg_next_pc[30]_i_3_n_0 ),
        .I3(alu_out_q[8]),
        .I4(\reg_next_pc[8]_i_2_n_0 ),
        .O(p_5_out[8]));
  LUT5 #(
    .INIT(32'hDFFF2000)) 
    \reg_next_pc[8]_i_10 
       (.I0(decoder_trigger_reg_n_0),
        .I1(instr_waitirq),
        .I2(instr_jal),
        .I3(decoded_imm_uj[6]),
        .I4(current_pc[6]),
        .O(\reg_next_pc[8]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hDFFF2000)) 
    \reg_next_pc[8]_i_11 
       (.I0(decoder_trigger_reg_n_0),
        .I1(instr_waitirq),
        .I2(instr_jal),
        .I3(decoded_imm_uj[5]),
        .I4(current_pc[5]),
        .O(\reg_next_pc[8]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \reg_next_pc[8]_i_2 
       (.I0(\reg_next_pc_reg_n_0_[8] ),
        .I1(\reg_pc[31]_i_2_n_0 ),
        .I2(irq_delay_reg_0),
        .I3(\reg_next_pc_reg[8]_i_3_n_4 ),
        .O(\reg_next_pc[8]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \reg_next_pc[8]_i_4 
       (.I0(decoded_imm_uj[8]),
        .I1(instr_jal),
        .I2(instr_waitirq),
        .I3(decoder_trigger_reg_n_0),
        .O(\reg_next_pc[8]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \reg_next_pc[8]_i_5 
       (.I0(decoded_imm_uj[7]),
        .I1(instr_jal),
        .I2(instr_waitirq),
        .I3(decoder_trigger_reg_n_0),
        .O(\reg_next_pc[8]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \reg_next_pc[8]_i_6 
       (.I0(decoded_imm_uj[6]),
        .I1(instr_jal),
        .I2(instr_waitirq),
        .I3(decoder_trigger_reg_n_0),
        .O(\reg_next_pc[8]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \reg_next_pc[8]_i_7 
       (.I0(decoded_imm_uj[5]),
        .I1(instr_jal),
        .I2(instr_waitirq),
        .I3(decoder_trigger_reg_n_0),
        .O(\reg_next_pc[8]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hDFFF2000)) 
    \reg_next_pc[8]_i_8 
       (.I0(decoder_trigger_reg_n_0),
        .I1(instr_waitirq),
        .I2(instr_jal),
        .I3(decoded_imm_uj[8]),
        .I4(current_pc[8]),
        .O(\reg_next_pc[8]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hDFFF2000)) 
    \reg_next_pc[8]_i_9 
       (.I0(decoder_trigger_reg_n_0),
        .I1(instr_waitirq),
        .I2(instr_jal),
        .I3(decoded_imm_uj[7]),
        .I4(current_pc[7]),
        .O(\reg_next_pc[8]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \reg_next_pc[9]_i_1 
       (.I0(\reg_next_pc[30]_i_2_n_0 ),
        .I1(\reg_out_reg_n_0_[9] ),
        .I2(\reg_next_pc[30]_i_3_n_0 ),
        .I3(alu_out_q[9]),
        .I4(\reg_next_pc[9]_i_2_n_0 ),
        .O(p_5_out[9]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \reg_next_pc[9]_i_2 
       (.I0(\reg_next_pc_reg_n_0_[9] ),
        .I1(\reg_pc[31]_i_2_n_0 ),
        .I2(irq_delay_reg_0),
        .I3(\reg_next_pc_reg[12]_i_3_n_7 ),
        .O(\reg_next_pc[9]_i_2_n_0 ));
  FDRE \reg_next_pc_reg[10] 
       (.C(clk),
        .CE(\cpu_state_reg[6]_0 [4]),
        .D(p_5_out[10]),
        .Q(\reg_next_pc_reg_n_0_[10] ),
        .R(trap_i_1_n_0));
  FDRE \reg_next_pc_reg[11] 
       (.C(clk),
        .CE(\cpu_state_reg[6]_0 [4]),
        .D(p_5_out[11]),
        .Q(\reg_next_pc_reg_n_0_[11] ),
        .R(trap_i_1_n_0));
  FDRE \reg_next_pc_reg[12] 
       (.C(clk),
        .CE(\cpu_state_reg[6]_0 [4]),
        .D(p_5_out[12]),
        .Q(\reg_next_pc_reg_n_0_[12] ),
        .R(trap_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \reg_next_pc_reg[12]_i_3 
       (.CI(\reg_next_pc_reg[8]_i_3_n_0 ),
        .CO({\reg_next_pc_reg[12]_i_3_n_0 ,\reg_next_pc_reg[12]_i_3_n_1 ,\reg_next_pc_reg[12]_i_3_n_2 ,\reg_next_pc_reg[12]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\reg_next_pc[12]_i_4_n_0 ,\reg_next_pc[12]_i_5_n_0 ,\reg_next_pc[12]_i_6_n_0 ,\reg_next_pc[12]_i_7_n_0 }),
        .O({\reg_next_pc_reg[12]_i_3_n_4 ,\reg_next_pc_reg[12]_i_3_n_5 ,\reg_next_pc_reg[12]_i_3_n_6 ,\reg_next_pc_reg[12]_i_3_n_7 }),
        .S({\reg_next_pc[12]_i_8_n_0 ,\reg_next_pc[12]_i_9_n_0 ,\reg_next_pc[12]_i_10_n_0 ,\reg_next_pc[12]_i_11_n_0 }));
  FDRE \reg_next_pc_reg[13] 
       (.C(clk),
        .CE(\cpu_state_reg[6]_0 [4]),
        .D(p_5_out[13]),
        .Q(\reg_next_pc_reg_n_0_[13] ),
        .R(trap_i_1_n_0));
  FDRE \reg_next_pc_reg[14] 
       (.C(clk),
        .CE(\cpu_state_reg[6]_0 [4]),
        .D(p_5_out[14]),
        .Q(\reg_next_pc_reg_n_0_[14] ),
        .R(trap_i_1_n_0));
  FDRE \reg_next_pc_reg[15] 
       (.C(clk),
        .CE(\cpu_state_reg[6]_0 [4]),
        .D(p_5_out[15]),
        .Q(\reg_next_pc_reg_n_0_[15] ),
        .R(trap_i_1_n_0));
  FDRE \reg_next_pc_reg[16] 
       (.C(clk),
        .CE(\cpu_state_reg[6]_0 [4]),
        .D(p_5_out[16]),
        .Q(\reg_next_pc_reg_n_0_[16] ),
        .R(trap_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \reg_next_pc_reg[16]_i_3 
       (.CI(\reg_next_pc_reg[12]_i_3_n_0 ),
        .CO({\reg_next_pc_reg[16]_i_3_n_0 ,\reg_next_pc_reg[16]_i_3_n_1 ,\reg_next_pc_reg[16]_i_3_n_2 ,\reg_next_pc_reg[16]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\reg_next_pc[16]_i_4_n_0 ,\reg_next_pc[16]_i_5_n_0 ,\reg_next_pc[16]_i_6_n_0 ,\reg_next_pc[16]_i_7_n_0 }),
        .O({\reg_next_pc_reg[16]_i_3_n_4 ,\reg_next_pc_reg[16]_i_3_n_5 ,\reg_next_pc_reg[16]_i_3_n_6 ,\reg_next_pc_reg[16]_i_3_n_7 }),
        .S({\reg_next_pc[16]_i_8_n_0 ,\reg_next_pc[16]_i_9_n_0 ,\reg_next_pc[16]_i_10_n_0 ,\reg_next_pc[16]_i_11_n_0 }));
  FDRE \reg_next_pc_reg[17] 
       (.C(clk),
        .CE(\cpu_state_reg[6]_0 [4]),
        .D(p_5_out[17]),
        .Q(\reg_next_pc_reg_n_0_[17] ),
        .R(trap_i_1_n_0));
  FDRE \reg_next_pc_reg[18] 
       (.C(clk),
        .CE(\cpu_state_reg[6]_0 [4]),
        .D(p_5_out[18]),
        .Q(\reg_next_pc_reg_n_0_[18] ),
        .R(trap_i_1_n_0));
  FDRE \reg_next_pc_reg[19] 
       (.C(clk),
        .CE(\cpu_state_reg[6]_0 [4]),
        .D(p_5_out[19]),
        .Q(\reg_next_pc_reg_n_0_[19] ),
        .R(trap_i_1_n_0));
  FDRE \reg_next_pc_reg[1] 
       (.C(clk),
        .CE(\cpu_state_reg[6]_0 [4]),
        .D(p_5_out[1]),
        .Q(\reg_next_pc_reg_n_0_[1] ),
        .R(trap_i_1_n_0));
  FDRE \reg_next_pc_reg[20] 
       (.C(clk),
        .CE(\cpu_state_reg[6]_0 [4]),
        .D(p_5_out[20]),
        .Q(\reg_next_pc_reg_n_0_[20] ),
        .R(trap_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \reg_next_pc_reg[20]_i_3 
       (.CI(\reg_next_pc_reg[16]_i_3_n_0 ),
        .CO({\reg_next_pc_reg[20]_i_3_n_0 ,\reg_next_pc_reg[20]_i_3_n_1 ,\reg_next_pc_reg[20]_i_3_n_2 ,\reg_next_pc_reg[20]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\reg_next_pc[20]_i_4_n_0 ,\reg_next_pc[20]_i_5_n_0 ,\reg_next_pc[20]_i_6_n_0 ,\reg_next_pc[20]_i_7_n_0 }),
        .O({\reg_next_pc_reg[20]_i_3_n_4 ,\reg_next_pc_reg[20]_i_3_n_5 ,\reg_next_pc_reg[20]_i_3_n_6 ,\reg_next_pc_reg[20]_i_3_n_7 }),
        .S({\reg_next_pc[20]_i_8_n_0 ,\reg_next_pc[20]_i_9_n_0 ,\reg_next_pc[20]_i_10_n_0 ,\reg_next_pc[20]_i_11_n_0 }));
  FDRE \reg_next_pc_reg[21] 
       (.C(clk),
        .CE(\cpu_state_reg[6]_0 [4]),
        .D(p_5_out[21]),
        .Q(\reg_next_pc_reg_n_0_[21] ),
        .R(trap_i_1_n_0));
  FDRE \reg_next_pc_reg[22] 
       (.C(clk),
        .CE(\cpu_state_reg[6]_0 [4]),
        .D(p_5_out[22]),
        .Q(\reg_next_pc_reg_n_0_[22] ),
        .R(trap_i_1_n_0));
  FDRE \reg_next_pc_reg[23] 
       (.C(clk),
        .CE(\cpu_state_reg[6]_0 [4]),
        .D(p_5_out[23]),
        .Q(\reg_next_pc_reg_n_0_[23] ),
        .R(trap_i_1_n_0));
  FDRE \reg_next_pc_reg[24] 
       (.C(clk),
        .CE(\cpu_state_reg[6]_0 [4]),
        .D(p_5_out[24]),
        .Q(\reg_next_pc_reg_n_0_[24] ),
        .R(trap_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \reg_next_pc_reg[24]_i_3 
       (.CI(\reg_next_pc_reg[20]_i_3_n_0 ),
        .CO({\reg_next_pc_reg[24]_i_3_n_0 ,\reg_next_pc_reg[24]_i_3_n_1 ,\reg_next_pc_reg[24]_i_3_n_2 ,\reg_next_pc_reg[24]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\reg_next_pc[24]_i_4_n_0 ,\reg_next_pc[24]_i_5_n_0 ,\reg_next_pc[24]_i_6_n_0 ,\reg_next_pc[24]_i_7_n_0 }),
        .O({\reg_next_pc_reg[24]_i_3_n_4 ,\reg_next_pc_reg[24]_i_3_n_5 ,\reg_next_pc_reg[24]_i_3_n_6 ,\reg_next_pc_reg[24]_i_3_n_7 }),
        .S({\reg_next_pc[24]_i_8_n_0 ,\reg_next_pc[24]_i_9_n_0 ,\reg_next_pc[24]_i_10_n_0 ,\reg_next_pc[24]_i_11_n_0 }));
  FDRE \reg_next_pc_reg[25] 
       (.C(clk),
        .CE(\cpu_state_reg[6]_0 [4]),
        .D(p_5_out[25]),
        .Q(\reg_next_pc_reg_n_0_[25] ),
        .R(trap_i_1_n_0));
  FDRE \reg_next_pc_reg[26] 
       (.C(clk),
        .CE(\cpu_state_reg[6]_0 [4]),
        .D(p_5_out[26]),
        .Q(\reg_next_pc_reg_n_0_[26] ),
        .R(trap_i_1_n_0));
  FDRE \reg_next_pc_reg[27] 
       (.C(clk),
        .CE(\cpu_state_reg[6]_0 [4]),
        .D(p_5_out[27]),
        .Q(\reg_next_pc_reg_n_0_[27] ),
        .R(trap_i_1_n_0));
  FDRE \reg_next_pc_reg[28] 
       (.C(clk),
        .CE(\cpu_state_reg[6]_0 [4]),
        .D(p_5_out[28]),
        .Q(\reg_next_pc_reg_n_0_[28] ),
        .R(trap_i_1_n_0));
  FDRE \reg_next_pc_reg[29] 
       (.C(clk),
        .CE(\cpu_state_reg[6]_0 [4]),
        .D(p_5_out[29]),
        .Q(\reg_next_pc_reg_n_0_[29] ),
        .R(trap_i_1_n_0));
  FDRE \reg_next_pc_reg[2] 
       (.C(clk),
        .CE(\cpu_state_reg[6]_0 [4]),
        .D(p_5_out[2]),
        .Q(\reg_next_pc_reg_n_0_[2] ),
        .R(trap_i_1_n_0));
  FDRE \reg_next_pc_reg[30] 
       (.C(clk),
        .CE(\cpu_state_reg[6]_0 [4]),
        .D(p_5_out[30]),
        .Q(\reg_next_pc_reg_n_0_[30] ),
        .R(trap_i_1_n_0));
  FDRE \reg_next_pc_reg[31] 
       (.C(clk),
        .CE(\cpu_state_reg[6]_0 [4]),
        .D(p_5_out[31]),
        .Q(\reg_next_pc_reg_n_0_[31] ),
        .R(trap_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \reg_next_pc_reg[31]_i_2 
       (.CI(\reg_next_pc_reg[31]_i_3_n_0 ),
        .CO({\NLW_reg_next_pc_reg[31]_i_2_CO_UNCONNECTED [3:2],\reg_next_pc_reg[31]_i_2_n_2 ,\reg_next_pc_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\reg_next_pc[31]_i_4_n_0 ,\reg_next_pc[31]_i_5_n_0 }),
        .O({\NLW_reg_next_pc_reg[31]_i_2_O_UNCONNECTED [3],\reg_next_pc_reg[31]_i_2_n_5 ,\reg_next_pc_reg[31]_i_2_n_6 ,\reg_next_pc_reg[31]_i_2_n_7 }),
        .S({1'b0,\reg_next_pc[31]_i_6_n_0 ,\reg_next_pc[31]_i_7_n_0 ,\reg_next_pc[31]_i_8_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \reg_next_pc_reg[31]_i_3 
       (.CI(\reg_next_pc_reg[24]_i_3_n_0 ),
        .CO({\reg_next_pc_reg[31]_i_3_n_0 ,\reg_next_pc_reg[31]_i_3_n_1 ,\reg_next_pc_reg[31]_i_3_n_2 ,\reg_next_pc_reg[31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\reg_next_pc[31]_i_9_n_0 ,\reg_next_pc[31]_i_10_n_0 ,\reg_next_pc[31]_i_11_n_0 ,\reg_next_pc[31]_i_12_n_0 }),
        .O({\reg_next_pc_reg[31]_i_3_n_4 ,\reg_next_pc_reg[31]_i_3_n_5 ,\reg_next_pc_reg[31]_i_3_n_6 ,\reg_next_pc_reg[31]_i_3_n_7 }),
        .S({\reg_next_pc[31]_i_13_n_0 ,\reg_next_pc[31]_i_14_n_0 ,\reg_next_pc[31]_i_15_n_0 ,\reg_next_pc[31]_i_16_n_0 }));
  FDRE \reg_next_pc_reg[3] 
       (.C(clk),
        .CE(\cpu_state_reg[6]_0 [4]),
        .D(p_5_out[3]),
        .Q(\reg_next_pc_reg_n_0_[3] ),
        .R(trap_i_1_n_0));
  FDRE \reg_next_pc_reg[4] 
       (.C(clk),
        .CE(\cpu_state_reg[6]_0 [4]),
        .D(p_5_out[4]),
        .Q(\reg_next_pc_reg_n_0_[4] ),
        .R(trap_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \reg_next_pc_reg[4]_i_3 
       (.CI(1'b0),
        .CO({\reg_next_pc_reg[4]_i_3_n_0 ,\reg_next_pc_reg[4]_i_3_n_1 ,\reg_next_pc_reg[4]_i_3_n_2 ,\reg_next_pc_reg[4]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\reg_next_pc[4]_i_4_n_0 ,\reg_next_pc[4]_i_5_n_0 ,\reg_next_pc[4]_i_6_n_0 ,\reg_next_pc[4]_i_7_n_0 }),
        .O({\reg_next_pc_reg[4]_i_3_n_4 ,\reg_next_pc_reg[4]_i_3_n_5 ,\reg_next_pc_reg[4]_i_3_n_6 ,\reg_next_pc_reg[4]_i_3_n_7 }),
        .S({\reg_next_pc[4]_i_8_n_0 ,\reg_next_pc[4]_i_9_n_0 ,\reg_next_pc[4]_i_10_n_0 ,\reg_next_pc[4]_i_11_n_0 }));
  FDRE \reg_next_pc_reg[5] 
       (.C(clk),
        .CE(\cpu_state_reg[6]_0 [4]),
        .D(p_5_out[5]),
        .Q(\reg_next_pc_reg_n_0_[5] ),
        .R(trap_i_1_n_0));
  FDRE \reg_next_pc_reg[6] 
       (.C(clk),
        .CE(\cpu_state_reg[6]_0 [4]),
        .D(p_5_out[6]),
        .Q(\reg_next_pc_reg_n_0_[6] ),
        .R(trap_i_1_n_0));
  FDRE \reg_next_pc_reg[7] 
       (.C(clk),
        .CE(\cpu_state_reg[6]_0 [4]),
        .D(p_5_out[7]),
        .Q(\reg_next_pc_reg_n_0_[7] ),
        .R(trap_i_1_n_0));
  FDRE \reg_next_pc_reg[8] 
       (.C(clk),
        .CE(\cpu_state_reg[6]_0 [4]),
        .D(p_5_out[8]),
        .Q(\reg_next_pc_reg_n_0_[8] ),
        .R(trap_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \reg_next_pc_reg[8]_i_3 
       (.CI(\reg_next_pc_reg[4]_i_3_n_0 ),
        .CO({\reg_next_pc_reg[8]_i_3_n_0 ,\reg_next_pc_reg[8]_i_3_n_1 ,\reg_next_pc_reg[8]_i_3_n_2 ,\reg_next_pc_reg[8]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\reg_next_pc[8]_i_4_n_0 ,\reg_next_pc[8]_i_5_n_0 ,\reg_next_pc[8]_i_6_n_0 ,\reg_next_pc[8]_i_7_n_0 }),
        .O({\reg_next_pc_reg[8]_i_3_n_4 ,\reg_next_pc_reg[8]_i_3_n_5 ,\reg_next_pc_reg[8]_i_3_n_6 ,\reg_next_pc_reg[8]_i_3_n_7 }),
        .S({\reg_next_pc[8]_i_8_n_0 ,\reg_next_pc[8]_i_9_n_0 ,\reg_next_pc[8]_i_10_n_0 ,\reg_next_pc[8]_i_11_n_0 }));
  FDRE \reg_next_pc_reg[9] 
       (.C(clk),
        .CE(\cpu_state_reg[6]_0 [4]),
        .D(p_5_out[9]),
        .Q(\reg_next_pc_reg_n_0_[9] ),
        .R(trap_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFF8F8F8)) 
    \reg_op1[0]_i_1 
       (.I0(\reg_op1[3]_i_3_n_0 ),
        .I1(\reg_op1_reg_n_0_[4] ),
        .I2(\reg_op1[0]_i_2_n_0 ),
        .I3(reg_out1[0]),
        .I4(\reg_op1[31]_i_4_n_0 ),
        .O(reg_op1[0]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'h888F8888)) 
    \reg_op1[0]_i_2 
       (.I0(\reg_op1_reg_n_0_[1] ),
        .I1(\reg_op1[30]_i_5_n_0 ),
        .I2(\cpu_state_reg[6]_0 [3]),
        .I3(\cpu_state_reg_n_0_[2] ),
        .I4(\reg_op1_reg[3]_i_6_n_7 ),
        .O(\reg_op1[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFEA)) 
    \reg_op1[10]_i_1 
       (.I0(\reg_op1[10]_i_2_n_0 ),
        .I1(\reg_op1[31]_i_4_n_0 ),
        .I2(reg_out1[10]),
        .I3(\reg_op1[10]_i_3_n_0 ),
        .O(reg_op1[10]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \reg_op1[10]_i_2 
       (.I0(\reg_op1[30]_i_3_n_0 ),
        .I1(\reg_op1_reg_n_0_[6] ),
        .I2(\reg_op1[3]_i_3_n_0 ),
        .I3(\reg_op1_reg_n_0_[14] ),
        .I4(\reg_op1[10]_i_4_n_0 ),
        .O(\reg_op1[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h080008FF08000800)) 
    \reg_op1[10]_i_3 
       (.I0(\reg_pc_reg_n_0_[10] ),
        .I1(is_lui_auipc_jal),
        .I2(instr_lui),
        .I3(\cpu_state_reg[6]_0 [3]),
        .I4(\cpu_state_reg_n_0_[2] ),
        .I5(\reg_op1_reg[11]_i_5_n_5 ),
        .O(\reg_op1[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_op1[10]_i_4 
       (.I0(\reg_op1_reg_n_0_[9] ),
        .I1(\reg_op1[31]_i_10_n_0 ),
        .I2(\reg_op1_reg_n_0_[11] ),
        .I3(\reg_op1[30]_i_5_n_0 ),
        .O(\reg_op1[10]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFEA)) 
    \reg_op1[11]_i_1 
       (.I0(\reg_op1[11]_i_2_n_0 ),
        .I1(\reg_op1[31]_i_4_n_0 ),
        .I2(reg_out1[11]),
        .I3(\reg_op1[11]_i_3_n_0 ),
        .O(reg_op1[11]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \reg_op1[11]_i_2 
       (.I0(\reg_op1[30]_i_3_n_0 ),
        .I1(\reg_op1_reg_n_0_[7] ),
        .I2(\reg_op1[3]_i_3_n_0 ),
        .I3(\reg_op1_reg_n_0_[15] ),
        .I4(\reg_op1[11]_i_4_n_0 ),
        .O(\reg_op1[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h080008FF08000800)) 
    \reg_op1[11]_i_3 
       (.I0(\reg_pc_reg_n_0_[11] ),
        .I1(is_lui_auipc_jal),
        .I2(instr_lui),
        .I3(\cpu_state_reg[6]_0 [3]),
        .I4(\cpu_state_reg_n_0_[2] ),
        .I5(\reg_op1_reg[11]_i_5_n_4 ),
        .O(\reg_op1[11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_op1[11]_i_4 
       (.I0(\reg_op1_reg_n_0_[10] ),
        .I1(\reg_op1[31]_i_10_n_0 ),
        .I2(\reg_op1_reg_n_0_[12] ),
        .I3(\reg_op1[30]_i_5_n_0 ),
        .O(\reg_op1[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_op1[11]_i_6 
       (.I0(\reg_op1_reg_n_0_[11] ),
        .I1(decoded_imm[11]),
        .O(\reg_op1[11]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_op1[11]_i_7 
       (.I0(\reg_op1_reg_n_0_[10] ),
        .I1(decoded_imm[10]),
        .O(\reg_op1[11]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_op1[11]_i_8 
       (.I0(\reg_op1_reg_n_0_[9] ),
        .I1(decoded_imm[9]),
        .O(\reg_op1[11]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_op1[11]_i_9 
       (.I0(\reg_op1_reg_n_0_[8] ),
        .I1(decoded_imm[8]),
        .O(\reg_op1[11]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFFEA)) 
    \reg_op1[12]_i_1 
       (.I0(\reg_op1[12]_i_2_n_0 ),
        .I1(\reg_op1[31]_i_4_n_0 ),
        .I2(reg_out1[12]),
        .I3(\reg_op1[12]_i_3_n_0 ),
        .O(reg_op1[12]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \reg_op1[12]_i_2 
       (.I0(\reg_op1[30]_i_3_n_0 ),
        .I1(\reg_op1_reg_n_0_[8] ),
        .I2(\reg_op1[3]_i_3_n_0 ),
        .I3(\reg_op1_reg_n_0_[16] ),
        .I4(\reg_op1[12]_i_4_n_0 ),
        .O(\reg_op1[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h080008FF08000800)) 
    \reg_op1[12]_i_3 
       (.I0(\reg_pc_reg_n_0_[12] ),
        .I1(is_lui_auipc_jal),
        .I2(instr_lui),
        .I3(\cpu_state_reg[6]_0 [3]),
        .I4(\cpu_state_reg_n_0_[2] ),
        .I5(\reg_op1_reg[15]_i_5_n_7 ),
        .O(\reg_op1[12]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_op1[12]_i_4 
       (.I0(\reg_op1_reg_n_0_[11] ),
        .I1(\reg_op1[31]_i_10_n_0 ),
        .I2(\reg_op1_reg_n_0_[13] ),
        .I3(\reg_op1[30]_i_5_n_0 ),
        .O(\reg_op1[12]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFEA)) 
    \reg_op1[13]_i_1 
       (.I0(\reg_op1[13]_i_2_n_0 ),
        .I1(\reg_op1[31]_i_4_n_0 ),
        .I2(reg_out1[13]),
        .I3(\reg_op1[13]_i_3_n_0 ),
        .O(reg_op1[13]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \reg_op1[13]_i_2 
       (.I0(\reg_op1[30]_i_3_n_0 ),
        .I1(\reg_op1_reg_n_0_[9] ),
        .I2(\reg_op1[3]_i_3_n_0 ),
        .I3(\reg_op1_reg_n_0_[17] ),
        .I4(\reg_op1[13]_i_4_n_0 ),
        .O(\reg_op1[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h080008FF08000800)) 
    \reg_op1[13]_i_3 
       (.I0(\reg_pc_reg_n_0_[13] ),
        .I1(is_lui_auipc_jal),
        .I2(instr_lui),
        .I3(\cpu_state_reg[6]_0 [3]),
        .I4(\cpu_state_reg_n_0_[2] ),
        .I5(\reg_op1_reg[15]_i_5_n_6 ),
        .O(\reg_op1[13]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_op1[13]_i_4 
       (.I0(\reg_op1_reg_n_0_[12] ),
        .I1(\reg_op1[31]_i_10_n_0 ),
        .I2(\reg_op1_reg_n_0_[14] ),
        .I3(\reg_op1[30]_i_5_n_0 ),
        .O(\reg_op1[13]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFEA)) 
    \reg_op1[14]_i_1 
       (.I0(\reg_op1[14]_i_2_n_0 ),
        .I1(\reg_op1[31]_i_4_n_0 ),
        .I2(reg_out1[14]),
        .I3(\reg_op1[14]_i_3_n_0 ),
        .O(reg_op1[14]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \reg_op1[14]_i_2 
       (.I0(\reg_op1[30]_i_3_n_0 ),
        .I1(\reg_op1_reg_n_0_[10] ),
        .I2(\reg_op1[3]_i_3_n_0 ),
        .I3(\reg_op1_reg_n_0_[18] ),
        .I4(\reg_op1[14]_i_4_n_0 ),
        .O(\reg_op1[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h080008FF08000800)) 
    \reg_op1[14]_i_3 
       (.I0(\reg_pc_reg_n_0_[14] ),
        .I1(is_lui_auipc_jal),
        .I2(instr_lui),
        .I3(\cpu_state_reg[6]_0 [3]),
        .I4(\cpu_state_reg_n_0_[2] ),
        .I5(\reg_op1_reg[15]_i_5_n_5 ),
        .O(\reg_op1[14]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_op1[14]_i_4 
       (.I0(\reg_op1_reg_n_0_[13] ),
        .I1(\reg_op1[31]_i_10_n_0 ),
        .I2(\reg_op1_reg_n_0_[15] ),
        .I3(\reg_op1[30]_i_5_n_0 ),
        .O(\reg_op1[14]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFEA)) 
    \reg_op1[15]_i_1 
       (.I0(\reg_op1[15]_i_2_n_0 ),
        .I1(\reg_op1[31]_i_4_n_0 ),
        .I2(reg_out1[15]),
        .I3(\reg_op1[15]_i_3_n_0 ),
        .O(reg_op1[15]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \reg_op1[15]_i_2 
       (.I0(\reg_op1[30]_i_3_n_0 ),
        .I1(\reg_op1_reg_n_0_[11] ),
        .I2(\reg_op1[3]_i_3_n_0 ),
        .I3(\reg_op1_reg_n_0_[19] ),
        .I4(\reg_op1[15]_i_4_n_0 ),
        .O(\reg_op1[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h080008FF08000800)) 
    \reg_op1[15]_i_3 
       (.I0(\reg_pc_reg_n_0_[15] ),
        .I1(is_lui_auipc_jal),
        .I2(instr_lui),
        .I3(\cpu_state_reg[6]_0 [3]),
        .I4(\cpu_state_reg_n_0_[2] ),
        .I5(\reg_op1_reg[15]_i_5_n_4 ),
        .O(\reg_op1[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_op1[15]_i_4 
       (.I0(\reg_op1_reg_n_0_[14] ),
        .I1(\reg_op1[31]_i_10_n_0 ),
        .I2(\reg_op1_reg_n_0_[16] ),
        .I3(\reg_op1[30]_i_5_n_0 ),
        .O(\reg_op1[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_op1[15]_i_6 
       (.I0(\reg_op1_reg_n_0_[15] ),
        .I1(decoded_imm[15]),
        .O(\reg_op1[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_op1[15]_i_7 
       (.I0(\reg_op1_reg_n_0_[14] ),
        .I1(decoded_imm[14]),
        .O(\reg_op1[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_op1[15]_i_8 
       (.I0(\reg_op1_reg_n_0_[13] ),
        .I1(decoded_imm[13]),
        .O(\reg_op1[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_op1[15]_i_9 
       (.I0(\reg_op1_reg_n_0_[12] ),
        .I1(decoded_imm[12]),
        .O(\reg_op1[15]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFFEA)) 
    \reg_op1[16]_i_1 
       (.I0(\reg_op1[16]_i_2_n_0 ),
        .I1(\reg_op1[31]_i_4_n_0 ),
        .I2(reg_out1[16]),
        .I3(\reg_op1[16]_i_3_n_0 ),
        .O(reg_op1[16]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \reg_op1[16]_i_2 
       (.I0(\reg_op1[30]_i_3_n_0 ),
        .I1(\reg_op1_reg_n_0_[12] ),
        .I2(\reg_op1[3]_i_3_n_0 ),
        .I3(\reg_op1_reg_n_0_[20] ),
        .I4(\reg_op1[16]_i_4_n_0 ),
        .O(\reg_op1[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h080008FF08000800)) 
    \reg_op1[16]_i_3 
       (.I0(\reg_pc_reg_n_0_[16] ),
        .I1(is_lui_auipc_jal),
        .I2(instr_lui),
        .I3(\cpu_state_reg[6]_0 [3]),
        .I4(\cpu_state_reg_n_0_[2] ),
        .I5(\reg_op1_reg[19]_i_5_n_7 ),
        .O(\reg_op1[16]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_op1[16]_i_4 
       (.I0(\reg_op1_reg_n_0_[15] ),
        .I1(\reg_op1[31]_i_10_n_0 ),
        .I2(\reg_op1_reg_n_0_[17] ),
        .I3(\reg_op1[30]_i_5_n_0 ),
        .O(\reg_op1[16]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFEA)) 
    \reg_op1[17]_i_1 
       (.I0(\reg_op1[17]_i_2_n_0 ),
        .I1(\reg_op1[31]_i_4_n_0 ),
        .I2(reg_out1[17]),
        .I3(\reg_op1[17]_i_3_n_0 ),
        .O(reg_op1[17]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \reg_op1[17]_i_2 
       (.I0(\reg_op1[30]_i_3_n_0 ),
        .I1(\reg_op1_reg_n_0_[13] ),
        .I2(\reg_op1[3]_i_3_n_0 ),
        .I3(\reg_op1_reg_n_0_[21] ),
        .I4(\reg_op1[17]_i_4_n_0 ),
        .O(\reg_op1[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h080008FF08000800)) 
    \reg_op1[17]_i_3 
       (.I0(\reg_pc_reg_n_0_[17] ),
        .I1(is_lui_auipc_jal),
        .I2(instr_lui),
        .I3(\cpu_state_reg[6]_0 [3]),
        .I4(\cpu_state_reg_n_0_[2] ),
        .I5(\reg_op1_reg[19]_i_5_n_6 ),
        .O(\reg_op1[17]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_op1[17]_i_4 
       (.I0(\reg_op1_reg_n_0_[16] ),
        .I1(\reg_op1[31]_i_10_n_0 ),
        .I2(\reg_op1_reg_n_0_[18] ),
        .I3(\reg_op1[30]_i_5_n_0 ),
        .O(\reg_op1[17]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFEA)) 
    \reg_op1[18]_i_1 
       (.I0(\reg_op1[18]_i_2_n_0 ),
        .I1(\reg_op1[31]_i_4_n_0 ),
        .I2(reg_out1[18]),
        .I3(\reg_op1[18]_i_3_n_0 ),
        .O(reg_op1[18]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \reg_op1[18]_i_2 
       (.I0(\reg_op1[30]_i_3_n_0 ),
        .I1(\reg_op1_reg_n_0_[14] ),
        .I2(\reg_op1[3]_i_3_n_0 ),
        .I3(\reg_op1_reg_n_0_[22] ),
        .I4(\reg_op1[18]_i_4_n_0 ),
        .O(\reg_op1[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h080008FF08000800)) 
    \reg_op1[18]_i_3 
       (.I0(\reg_pc_reg_n_0_[18] ),
        .I1(is_lui_auipc_jal),
        .I2(instr_lui),
        .I3(\cpu_state_reg[6]_0 [3]),
        .I4(\cpu_state_reg_n_0_[2] ),
        .I5(\reg_op1_reg[19]_i_5_n_5 ),
        .O(\reg_op1[18]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_op1[18]_i_4 
       (.I0(\reg_op1_reg_n_0_[17] ),
        .I1(\reg_op1[31]_i_10_n_0 ),
        .I2(\reg_op1_reg_n_0_[19] ),
        .I3(\reg_op1[30]_i_5_n_0 ),
        .O(\reg_op1[18]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFEA)) 
    \reg_op1[19]_i_1 
       (.I0(\reg_op1[19]_i_2_n_0 ),
        .I1(\reg_op1[31]_i_4_n_0 ),
        .I2(reg_out1[19]),
        .I3(\reg_op1[19]_i_3_n_0 ),
        .O(reg_op1[19]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \reg_op1[19]_i_2 
       (.I0(\reg_op1[30]_i_3_n_0 ),
        .I1(\reg_op1_reg_n_0_[15] ),
        .I2(\reg_op1[3]_i_3_n_0 ),
        .I3(\reg_op1_reg_n_0_[23] ),
        .I4(\reg_op1[19]_i_4_n_0 ),
        .O(\reg_op1[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h080008FF08000800)) 
    \reg_op1[19]_i_3 
       (.I0(\reg_pc_reg_n_0_[19] ),
        .I1(is_lui_auipc_jal),
        .I2(instr_lui),
        .I3(\cpu_state_reg[6]_0 [3]),
        .I4(\cpu_state_reg_n_0_[2] ),
        .I5(\reg_op1_reg[19]_i_5_n_4 ),
        .O(\reg_op1[19]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_op1[19]_i_4 
       (.I0(\reg_op1_reg_n_0_[18] ),
        .I1(\reg_op1[31]_i_10_n_0 ),
        .I2(\reg_op1_reg_n_0_[20] ),
        .I3(\reg_op1[30]_i_5_n_0 ),
        .O(\reg_op1[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_op1[19]_i_6 
       (.I0(\reg_op1_reg_n_0_[19] ),
        .I1(decoded_imm[19]),
        .O(\reg_op1[19]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_op1[19]_i_7 
       (.I0(\reg_op1_reg_n_0_[18] ),
        .I1(decoded_imm[18]),
        .O(\reg_op1[19]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_op1[19]_i_8 
       (.I0(\reg_op1_reg_n_0_[17] ),
        .I1(decoded_imm[17]),
        .O(\reg_op1[19]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_op1[19]_i_9 
       (.I0(\reg_op1_reg_n_0_[16] ),
        .I1(decoded_imm[16]),
        .O(\reg_op1[19]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    \reg_op1[1]_i_1 
       (.I0(\reg_op1[31]_i_4_n_0 ),
        .I1(reg_out1[1]),
        .I2(\reg_op1[1]_i_2_n_0 ),
        .I3(\reg_op1[3]_i_3_n_0 ),
        .I4(\reg_op1_reg_n_0_[5] ),
        .I5(\reg_op1[1]_i_3_n_0 ),
        .O(reg_op1[1]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_op1[1]_i_2 
       (.I0(\reg_op1_reg_n_0_[0] ),
        .I1(\reg_op1[31]_i_10_n_0 ),
        .I2(\reg_op1_reg_n_0_[2] ),
        .I3(\reg_op1[30]_i_5_n_0 ),
        .O(\reg_op1[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h080008FF08000800)) 
    \reg_op1[1]_i_3 
       (.I0(\reg_pc_reg_n_0_[1] ),
        .I1(is_lui_auipc_jal),
        .I2(instr_lui),
        .I3(\cpu_state_reg[6]_0 [3]),
        .I4(\cpu_state_reg_n_0_[2] ),
        .I5(\reg_op1_reg[3]_i_6_n_6 ),
        .O(\reg_op1[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFEA)) 
    \reg_op1[20]_i_1 
       (.I0(\reg_op1[20]_i_2_n_0 ),
        .I1(\reg_op1[31]_i_4_n_0 ),
        .I2(reg_out1[20]),
        .I3(\reg_op1[20]_i_3_n_0 ),
        .O(reg_op1[20]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \reg_op1[20]_i_2 
       (.I0(\reg_op1[30]_i_3_n_0 ),
        .I1(\reg_op1_reg_n_0_[16] ),
        .I2(\reg_op1[3]_i_3_n_0 ),
        .I3(\reg_op1_reg_n_0_[24] ),
        .I4(\reg_op1[20]_i_4_n_0 ),
        .O(\reg_op1[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h080008FF08000800)) 
    \reg_op1[20]_i_3 
       (.I0(\reg_pc_reg_n_0_[20] ),
        .I1(is_lui_auipc_jal),
        .I2(instr_lui),
        .I3(\cpu_state_reg[6]_0 [3]),
        .I4(\cpu_state_reg_n_0_[2] ),
        .I5(\reg_op1_reg[23]_i_5_n_7 ),
        .O(\reg_op1[20]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_op1[20]_i_4 
       (.I0(\reg_op1_reg_n_0_[19] ),
        .I1(\reg_op1[31]_i_10_n_0 ),
        .I2(\reg_op1_reg_n_0_[21] ),
        .I3(\reg_op1[30]_i_5_n_0 ),
        .O(\reg_op1[20]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFEA)) 
    \reg_op1[21]_i_1 
       (.I0(\reg_op1[21]_i_2_n_0 ),
        .I1(\reg_op1[31]_i_4_n_0 ),
        .I2(reg_out1[21]),
        .I3(\reg_op1[21]_i_3_n_0 ),
        .O(reg_op1[21]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \reg_op1[21]_i_2 
       (.I0(\reg_op1[30]_i_3_n_0 ),
        .I1(\reg_op1_reg_n_0_[17] ),
        .I2(\reg_op1[3]_i_3_n_0 ),
        .I3(\reg_op1_reg_n_0_[25] ),
        .I4(\reg_op1[21]_i_4_n_0 ),
        .O(\reg_op1[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h080008FF08000800)) 
    \reg_op1[21]_i_3 
       (.I0(\reg_pc_reg_n_0_[21] ),
        .I1(is_lui_auipc_jal),
        .I2(instr_lui),
        .I3(\cpu_state_reg[6]_0 [3]),
        .I4(\cpu_state_reg_n_0_[2] ),
        .I5(\reg_op1_reg[23]_i_5_n_6 ),
        .O(\reg_op1[21]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_op1[21]_i_4 
       (.I0(\reg_op1_reg_n_0_[20] ),
        .I1(\reg_op1[31]_i_10_n_0 ),
        .I2(\reg_op1_reg_n_0_[22] ),
        .I3(\reg_op1[30]_i_5_n_0 ),
        .O(\reg_op1[21]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFEA)) 
    \reg_op1[22]_i_1 
       (.I0(\reg_op1[22]_i_2_n_0 ),
        .I1(\reg_op1[31]_i_4_n_0 ),
        .I2(reg_out1[22]),
        .I3(\reg_op1[22]_i_3_n_0 ),
        .O(reg_op1[22]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \reg_op1[22]_i_2 
       (.I0(\reg_op1[30]_i_3_n_0 ),
        .I1(\reg_op1_reg_n_0_[18] ),
        .I2(\reg_op1[3]_i_3_n_0 ),
        .I3(\reg_op1_reg_n_0_[26] ),
        .I4(\reg_op1[22]_i_4_n_0 ),
        .O(\reg_op1[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h080008FF08000800)) 
    \reg_op1[22]_i_3 
       (.I0(\reg_pc_reg_n_0_[22] ),
        .I1(is_lui_auipc_jal),
        .I2(instr_lui),
        .I3(\cpu_state_reg[6]_0 [3]),
        .I4(\cpu_state_reg_n_0_[2] ),
        .I5(\reg_op1_reg[23]_i_5_n_5 ),
        .O(\reg_op1[22]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_op1[22]_i_4 
       (.I0(\reg_op1_reg_n_0_[21] ),
        .I1(\reg_op1[31]_i_10_n_0 ),
        .I2(\reg_op1_reg_n_0_[23] ),
        .I3(\reg_op1[30]_i_5_n_0 ),
        .O(\reg_op1[22]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFEA)) 
    \reg_op1[23]_i_1 
       (.I0(\reg_op1[23]_i_2_n_0 ),
        .I1(\reg_op1[31]_i_4_n_0 ),
        .I2(reg_out1[23]),
        .I3(\reg_op1[23]_i_3_n_0 ),
        .O(reg_op1[23]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \reg_op1[23]_i_2 
       (.I0(\reg_op1[30]_i_3_n_0 ),
        .I1(\reg_op1_reg_n_0_[19] ),
        .I2(\reg_op1[3]_i_3_n_0 ),
        .I3(\reg_op1_reg_n_0_[27] ),
        .I4(\reg_op1[23]_i_4_n_0 ),
        .O(\reg_op1[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h080008FF08000800)) 
    \reg_op1[23]_i_3 
       (.I0(\reg_pc_reg_n_0_[23] ),
        .I1(is_lui_auipc_jal),
        .I2(instr_lui),
        .I3(\cpu_state_reg[6]_0 [3]),
        .I4(\cpu_state_reg_n_0_[2] ),
        .I5(\reg_op1_reg[23]_i_5_n_4 ),
        .O(\reg_op1[23]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_op1[23]_i_4 
       (.I0(\reg_op1_reg_n_0_[22] ),
        .I1(\reg_op1[31]_i_10_n_0 ),
        .I2(\reg_op1_reg_n_0_[24] ),
        .I3(\reg_op1[30]_i_5_n_0 ),
        .O(\reg_op1[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_op1[23]_i_6 
       (.I0(\reg_op1_reg_n_0_[23] ),
        .I1(decoded_imm[23]),
        .O(\reg_op1[23]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_op1[23]_i_7 
       (.I0(\reg_op1_reg_n_0_[22] ),
        .I1(decoded_imm[22]),
        .O(\reg_op1[23]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_op1[23]_i_8 
       (.I0(\reg_op1_reg_n_0_[21] ),
        .I1(decoded_imm[21]),
        .O(\reg_op1[23]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_op1[23]_i_9 
       (.I0(\reg_op1_reg_n_0_[20] ),
        .I1(decoded_imm[20]),
        .O(\reg_op1[23]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFFEA)) 
    \reg_op1[24]_i_1 
       (.I0(\reg_op1[24]_i_2_n_0 ),
        .I1(\reg_op1[31]_i_4_n_0 ),
        .I2(reg_out1[24]),
        .I3(\reg_op1[24]_i_3_n_0 ),
        .O(reg_op1[24]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \reg_op1[24]_i_2 
       (.I0(\reg_op1[30]_i_3_n_0 ),
        .I1(\reg_op1_reg_n_0_[20] ),
        .I2(\reg_op1[3]_i_3_n_0 ),
        .I3(\reg_op1_reg_n_0_[28] ),
        .I4(\reg_op1[24]_i_4_n_0 ),
        .O(\reg_op1[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h080008FF08000800)) 
    \reg_op1[24]_i_3 
       (.I0(\reg_pc_reg_n_0_[24] ),
        .I1(is_lui_auipc_jal),
        .I2(instr_lui),
        .I3(\cpu_state_reg[6]_0 [3]),
        .I4(\cpu_state_reg_n_0_[2] ),
        .I5(\reg_op1_reg[27]_i_5_n_7 ),
        .O(\reg_op1[24]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_op1[24]_i_4 
       (.I0(\reg_op1_reg_n_0_[23] ),
        .I1(\reg_op1[31]_i_10_n_0 ),
        .I2(\reg_op1_reg_n_0_[25] ),
        .I3(\reg_op1[30]_i_5_n_0 ),
        .O(\reg_op1[24]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFEA)) 
    \reg_op1[25]_i_1 
       (.I0(\reg_op1[25]_i_2_n_0 ),
        .I1(\reg_op1[31]_i_4_n_0 ),
        .I2(reg_out1[25]),
        .I3(\reg_op1[25]_i_3_n_0 ),
        .O(reg_op1[25]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \reg_op1[25]_i_2 
       (.I0(\reg_op1[30]_i_3_n_0 ),
        .I1(\reg_op1_reg_n_0_[21] ),
        .I2(\reg_op1[3]_i_3_n_0 ),
        .I3(\reg_op1_reg_n_0_[29] ),
        .I4(\reg_op1[25]_i_4_n_0 ),
        .O(\reg_op1[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h080008FF08000800)) 
    \reg_op1[25]_i_3 
       (.I0(\reg_pc_reg_n_0_[25] ),
        .I1(is_lui_auipc_jal),
        .I2(instr_lui),
        .I3(\cpu_state_reg[6]_0 [3]),
        .I4(\cpu_state_reg_n_0_[2] ),
        .I5(\reg_op1_reg[27]_i_5_n_6 ),
        .O(\reg_op1[25]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_op1[25]_i_4 
       (.I0(\reg_op1_reg_n_0_[24] ),
        .I1(\reg_op1[31]_i_10_n_0 ),
        .I2(\reg_op1_reg_n_0_[26] ),
        .I3(\reg_op1[30]_i_5_n_0 ),
        .O(\reg_op1[25]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFEA)) 
    \reg_op1[26]_i_1 
       (.I0(\reg_op1[26]_i_2_n_0 ),
        .I1(\reg_op1[31]_i_4_n_0 ),
        .I2(reg_out1[26]),
        .I3(\reg_op1[26]_i_3_n_0 ),
        .O(reg_op1[26]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \reg_op1[26]_i_2 
       (.I0(\reg_op1[30]_i_3_n_0 ),
        .I1(\reg_op1_reg_n_0_[22] ),
        .I2(\reg_op1[3]_i_3_n_0 ),
        .I3(\reg_op1_reg_n_0_[30] ),
        .I4(\reg_op1[26]_i_4_n_0 ),
        .O(\reg_op1[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h080008FF08000800)) 
    \reg_op1[26]_i_3 
       (.I0(\reg_pc_reg_n_0_[26] ),
        .I1(is_lui_auipc_jal),
        .I2(instr_lui),
        .I3(\cpu_state_reg[6]_0 [3]),
        .I4(\cpu_state_reg_n_0_[2] ),
        .I5(\reg_op1_reg[27]_i_5_n_5 ),
        .O(\reg_op1[26]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_op1[26]_i_4 
       (.I0(\reg_op1_reg_n_0_[25] ),
        .I1(\reg_op1[31]_i_10_n_0 ),
        .I2(\reg_op1_reg_n_0_[27] ),
        .I3(\reg_op1[30]_i_5_n_0 ),
        .O(\reg_op1[26]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFEA)) 
    \reg_op1[27]_i_1 
       (.I0(\reg_op1[27]_i_2_n_0 ),
        .I1(\reg_op1[31]_i_4_n_0 ),
        .I2(reg_out1[27]),
        .I3(\reg_op1[27]_i_3_n_0 ),
        .O(reg_op1[27]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \reg_op1[27]_i_2 
       (.I0(\reg_op1[30]_i_3_n_0 ),
        .I1(\reg_op1_reg_n_0_[23] ),
        .I2(\reg_op1[3]_i_3_n_0 ),
        .I3(\reg_op1_reg_n_0_[31] ),
        .I4(\reg_op1[27]_i_4_n_0 ),
        .O(\reg_op1[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h080008FF08000800)) 
    \reg_op1[27]_i_3 
       (.I0(\reg_pc_reg_n_0_[27] ),
        .I1(is_lui_auipc_jal),
        .I2(instr_lui),
        .I3(\cpu_state_reg[6]_0 [3]),
        .I4(\cpu_state_reg_n_0_[2] ),
        .I5(\reg_op1_reg[27]_i_5_n_4 ),
        .O(\reg_op1[27]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_op1[27]_i_4 
       (.I0(\reg_op1_reg_n_0_[26] ),
        .I1(\reg_op1[31]_i_10_n_0 ),
        .I2(\reg_op1_reg_n_0_[28] ),
        .I3(\reg_op1[30]_i_5_n_0 ),
        .O(\reg_op1[27]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_op1[27]_i_6 
       (.I0(\reg_op1_reg_n_0_[27] ),
        .I1(decoded_imm[27]),
        .O(\reg_op1[27]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_op1[27]_i_7 
       (.I0(\reg_op1_reg_n_0_[26] ),
        .I1(decoded_imm[26]),
        .O(\reg_op1[27]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_op1[27]_i_8 
       (.I0(\reg_op1_reg_n_0_[25] ),
        .I1(decoded_imm[25]),
        .O(\reg_op1[27]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_op1[27]_i_9 
       (.I0(\reg_op1_reg_n_0_[24] ),
        .I1(decoded_imm[24]),
        .O(\reg_op1[27]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    \reg_op1[28]_i_1 
       (.I0(\reg_op1[31]_i_4_n_0 ),
        .I1(reg_out1[28]),
        .I2(\reg_op1[28]_i_2_n_0 ),
        .I3(\reg_op1[30]_i_3_n_0 ),
        .I4(\reg_op1_reg_n_0_[24] ),
        .I5(\reg_op1[28]_i_3_n_0 ),
        .O(reg_op1[28]));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_op1[28]_i_2 
       (.I0(\reg_op1_reg_n_0_[27] ),
        .I1(\reg_op1[31]_i_10_n_0 ),
        .I2(\reg_op1_reg_n_0_[29] ),
        .I3(\reg_op1[30]_i_5_n_0 ),
        .O(\reg_op1[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF020202)) 
    \reg_op1[28]_i_3 
       (.I0(\reg_op1_reg[31]_i_11_n_7 ),
        .I1(\cpu_state_reg_n_0_[2] ),
        .I2(\cpu_state_reg[6]_0 [3]),
        .I3(\reg_op1[31]_i_6_n_0 ),
        .I4(\reg_pc_reg_n_0_[28] ),
        .I5(\reg_op1[30]_i_6_n_0 ),
        .O(\reg_op1[28]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    \reg_op1[29]_i_1 
       (.I0(\reg_op1[31]_i_4_n_0 ),
        .I1(reg_out1[29]),
        .I2(\reg_op1[29]_i_2_n_0 ),
        .I3(\reg_op1[30]_i_3_n_0 ),
        .I4(\reg_op1_reg_n_0_[25] ),
        .I5(\reg_op1[29]_i_3_n_0 ),
        .O(reg_op1[29]));
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_op1[29]_i_2 
       (.I0(\reg_op1_reg_n_0_[30] ),
        .I1(\reg_op1[30]_i_5_n_0 ),
        .I2(\reg_op1_reg_n_0_[28] ),
        .I3(\reg_op1[31]_i_10_n_0 ),
        .O(\reg_op1[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF020202)) 
    \reg_op1[29]_i_3 
       (.I0(\reg_op1_reg[31]_i_11_n_6 ),
        .I1(\cpu_state_reg_n_0_[2] ),
        .I2(\cpu_state_reg[6]_0 [3]),
        .I3(\reg_op1[31]_i_6_n_0 ),
        .I4(\reg_pc_reg_n_0_[29] ),
        .I5(\reg_op1[30]_i_6_n_0 ),
        .O(\reg_op1[29]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    \reg_op1[2]_i_1 
       (.I0(\reg_op1[31]_i_4_n_0 ),
        .I1(reg_out1[2]),
        .I2(\reg_op1[2]_i_2_n_0 ),
        .I3(\reg_op1[3]_i_3_n_0 ),
        .I4(\reg_op1_reg_n_0_[6] ),
        .I5(\reg_op1[2]_i_3_n_0 ),
        .O(reg_op1[2]));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_op1[2]_i_2 
       (.I0(\reg_op1_reg_n_0_[1] ),
        .I1(\reg_op1[31]_i_10_n_0 ),
        .I2(\reg_op1_reg_n_0_[3] ),
        .I3(\reg_op1[30]_i_5_n_0 ),
        .O(\reg_op1[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h080008FF08000800)) 
    \reg_op1[2]_i_3 
       (.I0(\reg_pc_reg_n_0_[2] ),
        .I1(is_lui_auipc_jal),
        .I2(instr_lui),
        .I3(\cpu_state_reg[6]_0 [3]),
        .I4(\cpu_state_reg_n_0_[2] ),
        .I5(\reg_op1_reg[3]_i_6_n_5 ),
        .O(\reg_op1[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    \reg_op1[30]_i_1 
       (.I0(\reg_op1[31]_i_4_n_0 ),
        .I1(reg_out1[30]),
        .I2(\reg_op1[30]_i_2_n_0 ),
        .I3(\reg_op1[30]_i_3_n_0 ),
        .I4(\reg_op1_reg_n_0_[26] ),
        .I5(\reg_op1[30]_i_4_n_0 ),
        .O(reg_op1[30]));
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_op1[30]_i_2 
       (.I0(\reg_op1_reg_n_0_[31] ),
        .I1(\reg_op1[30]_i_5_n_0 ),
        .I2(\reg_op1_reg_n_0_[29] ),
        .I3(\reg_op1[31]_i_10_n_0 ),
        .O(\reg_op1[30]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h08080800)) 
    \reg_op1[30]_i_3 
       (.I0(\reg_op1[31]_i_8_n_0 ),
        .I1(\cpu_state_reg_n_0_[2] ),
        .I2(\cpu_state_reg[6]_0 [3]),
        .I3(instr_sll),
        .I4(instr_slli),
        .O(\reg_op1[30]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF020202)) 
    \reg_op1[30]_i_4 
       (.I0(\reg_op1_reg[31]_i_11_n_5 ),
        .I1(\cpu_state_reg_n_0_[2] ),
        .I2(\cpu_state_reg[6]_0 [3]),
        .I3(\reg_op1[31]_i_6_n_0 ),
        .I4(\reg_pc_reg_n_0_[30] ),
        .I5(\reg_op1[30]_i_6_n_0 ),
        .O(\reg_op1[30]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0404040404040400)) 
    \reg_op1[30]_i_5 
       (.I0(\reg_op1[31]_i_8_n_0 ),
        .I1(\cpu_state_reg_n_0_[2] ),
        .I2(\cpu_state_reg[6]_0 [3]),
        .I3(instr_srli),
        .I4(instr_srl),
        .I5(\reg_op1[30]_i_7_n_0 ),
        .O(\reg_op1[30]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000A8000000)) 
    \reg_op1[30]_i_6 
       (.I0(\reg_op1_reg_n_0_[31] ),
        .I1(instr_sra),
        .I2(instr_srai),
        .I3(\reg_op1[31]_i_8_n_0 ),
        .I4(\cpu_state_reg_n_0_[2] ),
        .I5(\cpu_state_reg[6]_0 [3]),
        .O(\reg_op1[30]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \reg_op1[30]_i_7 
       (.I0(instr_sra),
        .I1(instr_srai),
        .O(\reg_op1[30]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0400AE00)) 
    \reg_op1[31]_i_1 
       (.I0(\cpu_state_reg[6]_0 [0]),
        .I1(\cpu_state_reg[6]_0 [1]),
        .I2(mem_do_wdata),
        .I3(\mem_wordsize[1]_i_5_n_0 ),
        .I4(mem_do_rdata),
        .I5(\reg_op1[31]_i_3_n_0 ),
        .O(\reg_op1[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h04040400)) 
    \reg_op1[31]_i_10 
       (.I0(\reg_op1[31]_i_8_n_0 ),
        .I1(\cpu_state_reg_n_0_[2] ),
        .I2(\cpu_state_reg[6]_0 [3]),
        .I3(instr_sll),
        .I4(instr_slli),
        .O(\reg_op1[31]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_op1[31]_i_12 
       (.I0(\reg_op1_reg_n_0_[31] ),
        .I1(decoded_imm[31]),
        .O(\reg_op1[31]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_op1[31]_i_13 
       (.I0(\reg_op1_reg_n_0_[30] ),
        .I1(decoded_imm[30]),
        .O(\reg_op1[31]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_op1[31]_i_14 
       (.I0(\reg_op1_reg_n_0_[29] ),
        .I1(decoded_imm[29]),
        .O(\reg_op1[31]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_op1[31]_i_15 
       (.I0(\reg_op1_reg_n_0_[28] ),
        .I1(decoded_imm[28]),
        .O(\reg_op1[31]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    \reg_op1[31]_i_2 
       (.I0(\reg_op1[31]_i_4_n_0 ),
        .I1(reg_out1[31]),
        .I2(\reg_op1[31]_i_5_n_0 ),
        .I3(\reg_op1[31]_i_6_n_0 ),
        .I4(\reg_pc_reg_n_0_[31] ),
        .I5(\reg_op1[31]_i_7_n_0 ),
        .O(reg_op1[31]));
  LUT6 #(
    .INIT(64'h00FE00FE00FF0000)) 
    \reg_op1[31]_i_3 
       (.I0(\reg_op1[31]_i_8_n_0 ),
        .I1(\reg_sh_reg_n_0_[1] ),
        .I2(\reg_sh_reg_n_0_[0] ),
        .I3(\reg_op1[31]_i_9_n_0 ),
        .I4(\cpu_state_reg[6]_0 [3]),
        .I5(\cpu_state_reg_n_0_[2] ),
        .O(\reg_op1[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h88888808)) 
    \reg_op1[31]_i_4 
       (.I0(\cpu_state_reg[6]_0 [3]),
        .I1(\timer[31]_i_5_n_0 ),
        .I2(is_lui_auipc_jal),
        .I3(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I4(\cpu_state[3]_i_3_n_0 ),
        .O(\reg_op1[31]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_op1[31]_i_5 
       (.I0(\reg_op1_reg_n_0_[27] ),
        .I1(\reg_op1[30]_i_3_n_0 ),
        .I2(\reg_op1_reg_n_0_[30] ),
        .I3(\reg_op1[31]_i_10_n_0 ),
        .O(\reg_op1[31]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \reg_op1[31]_i_6 
       (.I0(\cpu_state_reg[6]_0 [3]),
        .I1(is_lui_auipc_jal),
        .I2(instr_lui),
        .O(\reg_op1[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00E000FF00E00000)) 
    \reg_op1[31]_i_7 
       (.I0(instr_sra),
        .I1(instr_srai),
        .I2(\reg_op1_reg_n_0_[31] ),
        .I3(\cpu_state_reg[6]_0 [3]),
        .I4(\cpu_state_reg_n_0_[2] ),
        .I5(\reg_op1_reg[31]_i_11_n_4 ),
        .O(\reg_op1[31]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \reg_op1[31]_i_8 
       (.I0(\reg_sh_reg_n_0_[2] ),
        .I1(\reg_sh_reg_n_0_[3] ),
        .I2(\reg_sh_reg_n_0_[4] ),
        .O(\reg_op1[31]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair198" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \reg_op1[31]_i_9 
       (.I0(\cpu_state_reg[6]_0 [1]),
        .I1(\cpu_state_reg[6]_0 [0]),
        .I2(resetn),
        .O(\reg_op1[31]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    \reg_op1[3]_i_1 
       (.I0(\reg_op1[31]_i_4_n_0 ),
        .I1(reg_out1[3]),
        .I2(\reg_op1[3]_i_2_n_0 ),
        .I3(\reg_op1[3]_i_3_n_0 ),
        .I4(\reg_op1_reg_n_0_[7] ),
        .I5(\reg_op1[3]_i_4_n_0 ),
        .O(reg_op1[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_op1[3]_i_10 
       (.I0(\reg_op1_reg_n_0_[0] ),
        .I1(decoded_imm[0]),
        .O(\reg_op1[3]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_op1[3]_i_2 
       (.I0(\reg_op1_reg_n_0_[2] ),
        .I1(\reg_op1[31]_i_10_n_0 ),
        .I2(\reg_op1_reg_n_0_[4] ),
        .I3(\reg_op1[30]_i_5_n_0 ),
        .O(\reg_op1[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \reg_op1[3]_i_3 
       (.I0(\reg_op1[3]_i_5_n_0 ),
        .I1(instr_srli),
        .I2(instr_srl),
        .I3(instr_srai),
        .I4(instr_sra),
        .O(\reg_op1[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h080008FF08000800)) 
    \reg_op1[3]_i_4 
       (.I0(\reg_pc_reg_n_0_[3] ),
        .I1(is_lui_auipc_jal),
        .I2(instr_lui),
        .I3(\cpu_state_reg[6]_0 [3]),
        .I4(\cpu_state_reg_n_0_[2] ),
        .I5(\reg_op1_reg[3]_i_6_n_4 ),
        .O(\reg_op1[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h44444440)) 
    \reg_op1[3]_i_5 
       (.I0(\cpu_state_reg[6]_0 [3]),
        .I1(\cpu_state_reg_n_0_[2] ),
        .I2(\reg_sh_reg_n_0_[4] ),
        .I3(\reg_sh_reg_n_0_[3] ),
        .I4(\reg_sh_reg_n_0_[2] ),
        .O(\reg_op1[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_op1[3]_i_7 
       (.I0(\reg_op1_reg_n_0_[3] ),
        .I1(decoded_imm[3]),
        .O(\reg_op1[3]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_op1[3]_i_8 
       (.I0(\reg_op1_reg_n_0_[2] ),
        .I1(decoded_imm[2]),
        .O(\reg_op1[3]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_op1[3]_i_9 
       (.I0(\reg_op1_reg_n_0_[1] ),
        .I1(decoded_imm[1]),
        .O(\reg_op1[3]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFFEA)) 
    \reg_op1[4]_i_1 
       (.I0(\reg_op1[4]_i_2_n_0 ),
        .I1(\reg_op1[31]_i_4_n_0 ),
        .I2(reg_out1[4]),
        .I3(\reg_op1[4]_i_3_n_0 ),
        .O(reg_op1[4]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \reg_op1[4]_i_2 
       (.I0(\reg_op1[30]_i_3_n_0 ),
        .I1(\reg_op1_reg_n_0_[0] ),
        .I2(\reg_op1[3]_i_3_n_0 ),
        .I3(\reg_op1_reg_n_0_[8] ),
        .I4(\reg_op1[4]_i_4_n_0 ),
        .O(\reg_op1[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h080008FF08000800)) 
    \reg_op1[4]_i_3 
       (.I0(\reg_pc_reg_n_0_[4] ),
        .I1(is_lui_auipc_jal),
        .I2(instr_lui),
        .I3(\cpu_state_reg[6]_0 [3]),
        .I4(\cpu_state_reg_n_0_[2] ),
        .I5(\reg_op1_reg[7]_i_5_n_7 ),
        .O(\reg_op1[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_op1[4]_i_4 
       (.I0(\reg_op1_reg_n_0_[3] ),
        .I1(\reg_op1[31]_i_10_n_0 ),
        .I2(\reg_op1_reg_n_0_[5] ),
        .I3(\reg_op1[30]_i_5_n_0 ),
        .O(\reg_op1[4]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFEA)) 
    \reg_op1[5]_i_1 
       (.I0(\reg_op1[5]_i_2_n_0 ),
        .I1(\reg_op1[31]_i_4_n_0 ),
        .I2(reg_out1[5]),
        .I3(\reg_op1[5]_i_3_n_0 ),
        .O(reg_op1[5]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \reg_op1[5]_i_2 
       (.I0(\reg_op1[30]_i_3_n_0 ),
        .I1(\reg_op1_reg_n_0_[1] ),
        .I2(\reg_op1[3]_i_3_n_0 ),
        .I3(\reg_op1_reg_n_0_[9] ),
        .I4(\reg_op1[5]_i_4_n_0 ),
        .O(\reg_op1[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h080008FF08000800)) 
    \reg_op1[5]_i_3 
       (.I0(\reg_pc_reg_n_0_[5] ),
        .I1(is_lui_auipc_jal),
        .I2(instr_lui),
        .I3(\cpu_state_reg[6]_0 [3]),
        .I4(\cpu_state_reg_n_0_[2] ),
        .I5(\reg_op1_reg[7]_i_5_n_6 ),
        .O(\reg_op1[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_op1[5]_i_4 
       (.I0(\reg_op1_reg_n_0_[4] ),
        .I1(\reg_op1[31]_i_10_n_0 ),
        .I2(\reg_op1_reg_n_0_[6] ),
        .I3(\reg_op1[30]_i_5_n_0 ),
        .O(\reg_op1[5]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFEA)) 
    \reg_op1[6]_i_1 
       (.I0(\reg_op1[6]_i_2_n_0 ),
        .I1(\reg_op1[31]_i_4_n_0 ),
        .I2(reg_out1[6]),
        .I3(\reg_op1[6]_i_3_n_0 ),
        .O(reg_op1[6]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \reg_op1[6]_i_2 
       (.I0(\reg_op1[30]_i_3_n_0 ),
        .I1(\reg_op1_reg_n_0_[2] ),
        .I2(\reg_op1[3]_i_3_n_0 ),
        .I3(\reg_op1_reg_n_0_[10] ),
        .I4(\reg_op1[6]_i_4_n_0 ),
        .O(\reg_op1[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h080008FF08000800)) 
    \reg_op1[6]_i_3 
       (.I0(\reg_pc_reg_n_0_[6] ),
        .I1(is_lui_auipc_jal),
        .I2(instr_lui),
        .I3(\cpu_state_reg[6]_0 [3]),
        .I4(\cpu_state_reg_n_0_[2] ),
        .I5(\reg_op1_reg[7]_i_5_n_5 ),
        .O(\reg_op1[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_op1[6]_i_4 
       (.I0(\reg_op1_reg_n_0_[5] ),
        .I1(\reg_op1[31]_i_10_n_0 ),
        .I2(\reg_op1_reg_n_0_[7] ),
        .I3(\reg_op1[30]_i_5_n_0 ),
        .O(\reg_op1[6]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFEA)) 
    \reg_op1[7]_i_1 
       (.I0(\reg_op1[7]_i_2_n_0 ),
        .I1(\reg_op1[31]_i_4_n_0 ),
        .I2(reg_out1[7]),
        .I3(\reg_op1[7]_i_3_n_0 ),
        .O(reg_op1[7]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \reg_op1[7]_i_2 
       (.I0(\reg_op1[30]_i_3_n_0 ),
        .I1(\reg_op1_reg_n_0_[3] ),
        .I2(\reg_op1[3]_i_3_n_0 ),
        .I3(\reg_op1_reg_n_0_[11] ),
        .I4(\reg_op1[7]_i_4_n_0 ),
        .O(\reg_op1[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h080008FF08000800)) 
    \reg_op1[7]_i_3 
       (.I0(\reg_pc_reg_n_0_[7] ),
        .I1(is_lui_auipc_jal),
        .I2(instr_lui),
        .I3(\cpu_state_reg[6]_0 [3]),
        .I4(\cpu_state_reg_n_0_[2] ),
        .I5(\reg_op1_reg[7]_i_5_n_4 ),
        .O(\reg_op1[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_op1[7]_i_4 
       (.I0(\reg_op1_reg_n_0_[6] ),
        .I1(\reg_op1[31]_i_10_n_0 ),
        .I2(\reg_op1_reg_n_0_[8] ),
        .I3(\reg_op1[30]_i_5_n_0 ),
        .O(\reg_op1[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_op1[7]_i_6 
       (.I0(\reg_op1_reg_n_0_[7] ),
        .I1(decoded_imm[7]),
        .O(\reg_op1[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_op1[7]_i_7 
       (.I0(\reg_op1_reg_n_0_[6] ),
        .I1(decoded_imm[6]),
        .O(\reg_op1[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_op1[7]_i_8 
       (.I0(\reg_op1_reg_n_0_[5] ),
        .I1(decoded_imm[5]),
        .O(\reg_op1[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_op1[7]_i_9 
       (.I0(\reg_op1_reg_n_0_[4] ),
        .I1(decoded_imm[4]),
        .O(\reg_op1[7]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFFEA)) 
    \reg_op1[8]_i_1 
       (.I0(\reg_op1[8]_i_2_n_0 ),
        .I1(\reg_op1[31]_i_4_n_0 ),
        .I2(reg_out1[8]),
        .I3(\reg_op1[8]_i_3_n_0 ),
        .O(reg_op1[8]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \reg_op1[8]_i_2 
       (.I0(\reg_op1[30]_i_3_n_0 ),
        .I1(\reg_op1_reg_n_0_[4] ),
        .I2(\reg_op1[3]_i_3_n_0 ),
        .I3(\reg_op1_reg_n_0_[12] ),
        .I4(\reg_op1[8]_i_4_n_0 ),
        .O(\reg_op1[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h080008FF08000800)) 
    \reg_op1[8]_i_3 
       (.I0(\reg_pc_reg_n_0_[8] ),
        .I1(is_lui_auipc_jal),
        .I2(instr_lui),
        .I3(\cpu_state_reg[6]_0 [3]),
        .I4(\cpu_state_reg_n_0_[2] ),
        .I5(\reg_op1_reg[11]_i_5_n_7 ),
        .O(\reg_op1[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_op1[8]_i_4 
       (.I0(\reg_op1_reg_n_0_[7] ),
        .I1(\reg_op1[31]_i_10_n_0 ),
        .I2(\reg_op1_reg_n_0_[9] ),
        .I3(\reg_op1[30]_i_5_n_0 ),
        .O(\reg_op1[8]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFEA)) 
    \reg_op1[9]_i_1 
       (.I0(\reg_op1[9]_i_2_n_0 ),
        .I1(\reg_op1[31]_i_4_n_0 ),
        .I2(reg_out1[9]),
        .I3(\reg_op1[9]_i_3_n_0 ),
        .O(reg_op1[9]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \reg_op1[9]_i_2 
       (.I0(\reg_op1[30]_i_3_n_0 ),
        .I1(\reg_op1_reg_n_0_[5] ),
        .I2(\reg_op1[3]_i_3_n_0 ),
        .I3(\reg_op1_reg_n_0_[13] ),
        .I4(\reg_op1[9]_i_4_n_0 ),
        .O(\reg_op1[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h080008FF08000800)) 
    \reg_op1[9]_i_3 
       (.I0(\reg_pc_reg_n_0_[9] ),
        .I1(is_lui_auipc_jal),
        .I2(instr_lui),
        .I3(\cpu_state_reg[6]_0 [3]),
        .I4(\cpu_state_reg_n_0_[2] ),
        .I5(\reg_op1_reg[11]_i_5_n_6 ),
        .O(\reg_op1[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_op1[9]_i_4 
       (.I0(\reg_op1_reg_n_0_[8] ),
        .I1(\reg_op1[31]_i_10_n_0 ),
        .I2(\reg_op1_reg_n_0_[10] ),
        .I3(\reg_op1[30]_i_5_n_0 ),
        .O(\reg_op1[9]_i_4_n_0 ));
  FDRE \reg_op1_reg[0] 
       (.C(clk),
        .CE(\reg_op1[31]_i_1_n_0 ),
        .D(reg_op1[0]),
        .Q(\reg_op1_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \reg_op1_reg[10] 
       (.C(clk),
        .CE(\reg_op1[31]_i_1_n_0 ),
        .D(reg_op1[10]),
        .Q(\reg_op1_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \reg_op1_reg[11] 
       (.C(clk),
        .CE(\reg_op1[31]_i_1_n_0 ),
        .D(reg_op1[11]),
        .Q(\reg_op1_reg_n_0_[11] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \reg_op1_reg[11]_i_5 
       (.CI(\reg_op1_reg[7]_i_5_n_0 ),
        .CO({\reg_op1_reg[11]_i_5_n_0 ,\reg_op1_reg[11]_i_5_n_1 ,\reg_op1_reg[11]_i_5_n_2 ,\reg_op1_reg[11]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({\reg_op1_reg_n_0_[11] ,\reg_op1_reg_n_0_[10] ,\reg_op1_reg_n_0_[9] ,\reg_op1_reg_n_0_[8] }),
        .O({\reg_op1_reg[11]_i_5_n_4 ,\reg_op1_reg[11]_i_5_n_5 ,\reg_op1_reg[11]_i_5_n_6 ,\reg_op1_reg[11]_i_5_n_7 }),
        .S({\reg_op1[11]_i_6_n_0 ,\reg_op1[11]_i_7_n_0 ,\reg_op1[11]_i_8_n_0 ,\reg_op1[11]_i_9_n_0 }));
  FDRE \reg_op1_reg[12] 
       (.C(clk),
        .CE(\reg_op1[31]_i_1_n_0 ),
        .D(reg_op1[12]),
        .Q(\reg_op1_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \reg_op1_reg[13] 
       (.C(clk),
        .CE(\reg_op1[31]_i_1_n_0 ),
        .D(reg_op1[13]),
        .Q(\reg_op1_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \reg_op1_reg[14] 
       (.C(clk),
        .CE(\reg_op1[31]_i_1_n_0 ),
        .D(reg_op1[14]),
        .Q(\reg_op1_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \reg_op1_reg[15] 
       (.C(clk),
        .CE(\reg_op1[31]_i_1_n_0 ),
        .D(reg_op1[15]),
        .Q(\reg_op1_reg_n_0_[15] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \reg_op1_reg[15]_i_5 
       (.CI(\reg_op1_reg[11]_i_5_n_0 ),
        .CO({\reg_op1_reg[15]_i_5_n_0 ,\reg_op1_reg[15]_i_5_n_1 ,\reg_op1_reg[15]_i_5_n_2 ,\reg_op1_reg[15]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({\reg_op1_reg_n_0_[15] ,\reg_op1_reg_n_0_[14] ,\reg_op1_reg_n_0_[13] ,\reg_op1_reg_n_0_[12] }),
        .O({\reg_op1_reg[15]_i_5_n_4 ,\reg_op1_reg[15]_i_5_n_5 ,\reg_op1_reg[15]_i_5_n_6 ,\reg_op1_reg[15]_i_5_n_7 }),
        .S({\reg_op1[15]_i_6_n_0 ,\reg_op1[15]_i_7_n_0 ,\reg_op1[15]_i_8_n_0 ,\reg_op1[15]_i_9_n_0 }));
  FDRE \reg_op1_reg[16] 
       (.C(clk),
        .CE(\reg_op1[31]_i_1_n_0 ),
        .D(reg_op1[16]),
        .Q(\reg_op1_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \reg_op1_reg[17] 
       (.C(clk),
        .CE(\reg_op1[31]_i_1_n_0 ),
        .D(reg_op1[17]),
        .Q(\reg_op1_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \reg_op1_reg[18] 
       (.C(clk),
        .CE(\reg_op1[31]_i_1_n_0 ),
        .D(reg_op1[18]),
        .Q(\reg_op1_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \reg_op1_reg[19] 
       (.C(clk),
        .CE(\reg_op1[31]_i_1_n_0 ),
        .D(reg_op1[19]),
        .Q(\reg_op1_reg_n_0_[19] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \reg_op1_reg[19]_i_5 
       (.CI(\reg_op1_reg[15]_i_5_n_0 ),
        .CO({\reg_op1_reg[19]_i_5_n_0 ,\reg_op1_reg[19]_i_5_n_1 ,\reg_op1_reg[19]_i_5_n_2 ,\reg_op1_reg[19]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({\reg_op1_reg_n_0_[19] ,\reg_op1_reg_n_0_[18] ,\reg_op1_reg_n_0_[17] ,\reg_op1_reg_n_0_[16] }),
        .O({\reg_op1_reg[19]_i_5_n_4 ,\reg_op1_reg[19]_i_5_n_5 ,\reg_op1_reg[19]_i_5_n_6 ,\reg_op1_reg[19]_i_5_n_7 }),
        .S({\reg_op1[19]_i_6_n_0 ,\reg_op1[19]_i_7_n_0 ,\reg_op1[19]_i_8_n_0 ,\reg_op1[19]_i_9_n_0 }));
  FDRE \reg_op1_reg[1] 
       (.C(clk),
        .CE(\reg_op1[31]_i_1_n_0 ),
        .D(reg_op1[1]),
        .Q(\reg_op1_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \reg_op1_reg[20] 
       (.C(clk),
        .CE(\reg_op1[31]_i_1_n_0 ),
        .D(reg_op1[20]),
        .Q(\reg_op1_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \reg_op1_reg[21] 
       (.C(clk),
        .CE(\reg_op1[31]_i_1_n_0 ),
        .D(reg_op1[21]),
        .Q(\reg_op1_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \reg_op1_reg[22] 
       (.C(clk),
        .CE(\reg_op1[31]_i_1_n_0 ),
        .D(reg_op1[22]),
        .Q(\reg_op1_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \reg_op1_reg[23] 
       (.C(clk),
        .CE(\reg_op1[31]_i_1_n_0 ),
        .D(reg_op1[23]),
        .Q(\reg_op1_reg_n_0_[23] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \reg_op1_reg[23]_i_5 
       (.CI(\reg_op1_reg[19]_i_5_n_0 ),
        .CO({\reg_op1_reg[23]_i_5_n_0 ,\reg_op1_reg[23]_i_5_n_1 ,\reg_op1_reg[23]_i_5_n_2 ,\reg_op1_reg[23]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({\reg_op1_reg_n_0_[23] ,\reg_op1_reg_n_0_[22] ,\reg_op1_reg_n_0_[21] ,\reg_op1_reg_n_0_[20] }),
        .O({\reg_op1_reg[23]_i_5_n_4 ,\reg_op1_reg[23]_i_5_n_5 ,\reg_op1_reg[23]_i_5_n_6 ,\reg_op1_reg[23]_i_5_n_7 }),
        .S({\reg_op1[23]_i_6_n_0 ,\reg_op1[23]_i_7_n_0 ,\reg_op1[23]_i_8_n_0 ,\reg_op1[23]_i_9_n_0 }));
  FDRE \reg_op1_reg[24] 
       (.C(clk),
        .CE(\reg_op1[31]_i_1_n_0 ),
        .D(reg_op1[24]),
        .Q(\reg_op1_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \reg_op1_reg[25] 
       (.C(clk),
        .CE(\reg_op1[31]_i_1_n_0 ),
        .D(reg_op1[25]),
        .Q(\reg_op1_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \reg_op1_reg[26] 
       (.C(clk),
        .CE(\reg_op1[31]_i_1_n_0 ),
        .D(reg_op1[26]),
        .Q(\reg_op1_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \reg_op1_reg[27] 
       (.C(clk),
        .CE(\reg_op1[31]_i_1_n_0 ),
        .D(reg_op1[27]),
        .Q(\reg_op1_reg_n_0_[27] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \reg_op1_reg[27]_i_5 
       (.CI(\reg_op1_reg[23]_i_5_n_0 ),
        .CO({\reg_op1_reg[27]_i_5_n_0 ,\reg_op1_reg[27]_i_5_n_1 ,\reg_op1_reg[27]_i_5_n_2 ,\reg_op1_reg[27]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({\reg_op1_reg_n_0_[27] ,\reg_op1_reg_n_0_[26] ,\reg_op1_reg_n_0_[25] ,\reg_op1_reg_n_0_[24] }),
        .O({\reg_op1_reg[27]_i_5_n_4 ,\reg_op1_reg[27]_i_5_n_5 ,\reg_op1_reg[27]_i_5_n_6 ,\reg_op1_reg[27]_i_5_n_7 }),
        .S({\reg_op1[27]_i_6_n_0 ,\reg_op1[27]_i_7_n_0 ,\reg_op1[27]_i_8_n_0 ,\reg_op1[27]_i_9_n_0 }));
  FDRE \reg_op1_reg[28] 
       (.C(clk),
        .CE(\reg_op1[31]_i_1_n_0 ),
        .D(reg_op1[28]),
        .Q(\reg_op1_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \reg_op1_reg[29] 
       (.C(clk),
        .CE(\reg_op1[31]_i_1_n_0 ),
        .D(reg_op1[29]),
        .Q(\reg_op1_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \reg_op1_reg[2] 
       (.C(clk),
        .CE(\reg_op1[31]_i_1_n_0 ),
        .D(reg_op1[2]),
        .Q(\reg_op1_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \reg_op1_reg[30] 
       (.C(clk),
        .CE(\reg_op1[31]_i_1_n_0 ),
        .D(reg_op1[30]),
        .Q(\reg_op1_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \reg_op1_reg[31] 
       (.C(clk),
        .CE(\reg_op1[31]_i_1_n_0 ),
        .D(reg_op1[31]),
        .Q(\reg_op1_reg_n_0_[31] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \reg_op1_reg[31]_i_11 
       (.CI(\reg_op1_reg[27]_i_5_n_0 ),
        .CO({\NLW_reg_op1_reg[31]_i_11_CO_UNCONNECTED [3],\reg_op1_reg[31]_i_11_n_1 ,\reg_op1_reg[31]_i_11_n_2 ,\reg_op1_reg[31]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\reg_op1_reg_n_0_[30] ,\reg_op1_reg_n_0_[29] ,\reg_op1_reg_n_0_[28] }),
        .O({\reg_op1_reg[31]_i_11_n_4 ,\reg_op1_reg[31]_i_11_n_5 ,\reg_op1_reg[31]_i_11_n_6 ,\reg_op1_reg[31]_i_11_n_7 }),
        .S({\reg_op1[31]_i_12_n_0 ,\reg_op1[31]_i_13_n_0 ,\reg_op1[31]_i_14_n_0 ,\reg_op1[31]_i_15_n_0 }));
  FDRE \reg_op1_reg[3] 
       (.C(clk),
        .CE(\reg_op1[31]_i_1_n_0 ),
        .D(reg_op1[3]),
        .Q(\reg_op1_reg_n_0_[3] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \reg_op1_reg[3]_i_6 
       (.CI(1'b0),
        .CO({\reg_op1_reg[3]_i_6_n_0 ,\reg_op1_reg[3]_i_6_n_1 ,\reg_op1_reg[3]_i_6_n_2 ,\reg_op1_reg[3]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({\reg_op1_reg_n_0_[3] ,\reg_op1_reg_n_0_[2] ,\reg_op1_reg_n_0_[1] ,\reg_op1_reg_n_0_[0] }),
        .O({\reg_op1_reg[3]_i_6_n_4 ,\reg_op1_reg[3]_i_6_n_5 ,\reg_op1_reg[3]_i_6_n_6 ,\reg_op1_reg[3]_i_6_n_7 }),
        .S({\reg_op1[3]_i_7_n_0 ,\reg_op1[3]_i_8_n_0 ,\reg_op1[3]_i_9_n_0 ,\reg_op1[3]_i_10_n_0 }));
  FDRE \reg_op1_reg[4] 
       (.C(clk),
        .CE(\reg_op1[31]_i_1_n_0 ),
        .D(reg_op1[4]),
        .Q(\reg_op1_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \reg_op1_reg[5] 
       (.C(clk),
        .CE(\reg_op1[31]_i_1_n_0 ),
        .D(reg_op1[5]),
        .Q(\reg_op1_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \reg_op1_reg[6] 
       (.C(clk),
        .CE(\reg_op1[31]_i_1_n_0 ),
        .D(reg_op1[6]),
        .Q(\reg_op1_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \reg_op1_reg[7] 
       (.C(clk),
        .CE(\reg_op1[31]_i_1_n_0 ),
        .D(reg_op1[7]),
        .Q(\reg_op1_reg_n_0_[7] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \reg_op1_reg[7]_i_5 
       (.CI(\reg_op1_reg[3]_i_6_n_0 ),
        .CO({\reg_op1_reg[7]_i_5_n_0 ,\reg_op1_reg[7]_i_5_n_1 ,\reg_op1_reg[7]_i_5_n_2 ,\reg_op1_reg[7]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({\reg_op1_reg_n_0_[7] ,\reg_op1_reg_n_0_[6] ,\reg_op1_reg_n_0_[5] ,\reg_op1_reg_n_0_[4] }),
        .O({\reg_op1_reg[7]_i_5_n_4 ,\reg_op1_reg[7]_i_5_n_5 ,\reg_op1_reg[7]_i_5_n_6 ,\reg_op1_reg[7]_i_5_n_7 }),
        .S({\reg_op1[7]_i_6_n_0 ,\reg_op1[7]_i_7_n_0 ,\reg_op1[7]_i_8_n_0 ,\reg_op1[7]_i_9_n_0 }));
  FDRE \reg_op1_reg[8] 
       (.C(clk),
        .CE(\reg_op1[31]_i_1_n_0 ),
        .D(reg_op1[8]),
        .Q(\reg_op1_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \reg_op1_reg[9] 
       (.C(clk),
        .CE(\reg_op1[31]_i_1_n_0 ),
        .D(reg_op1[9]),
        .Q(\reg_op1_reg_n_0_[9] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFE02FC00)) 
    \reg_op2[0]_i_1 
       (.I0(\reg_sh[3]_i_2_n_0 ),
        .I1(is_lui_auipc_jal),
        .I2(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I3(decoded_imm[0]),
        .I4(reg_sh1[0]),
        .O(\reg_op2[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE02FC00)) 
    \reg_op2[10]_i_1 
       (.I0(\reg_sh[3]_i_2_n_0 ),
        .I1(is_lui_auipc_jal),
        .I2(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I3(decoded_imm[10]),
        .I4(reg_sh1[10]),
        .O(\reg_op2[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE02FC00)) 
    \reg_op2[11]_i_1 
       (.I0(\reg_sh[3]_i_2_n_0 ),
        .I1(is_lui_auipc_jal),
        .I2(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I3(decoded_imm[11]),
        .I4(reg_sh1[11]),
        .O(\reg_op2[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE02FC00)) 
    \reg_op2[12]_i_1 
       (.I0(\reg_sh[3]_i_2_n_0 ),
        .I1(is_lui_auipc_jal),
        .I2(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I3(decoded_imm[12]),
        .I4(reg_sh1[12]),
        .O(\reg_op2[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE02FC00)) 
    \reg_op2[13]_i_1 
       (.I0(\reg_sh[3]_i_2_n_0 ),
        .I1(is_lui_auipc_jal),
        .I2(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I3(decoded_imm[13]),
        .I4(reg_sh1[13]),
        .O(\reg_op2[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE02FC00)) 
    \reg_op2[14]_i_1 
       (.I0(\reg_sh[3]_i_2_n_0 ),
        .I1(is_lui_auipc_jal),
        .I2(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I3(decoded_imm[14]),
        .I4(reg_sh1[14]),
        .O(\reg_op2[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE02FC00)) 
    \reg_op2[15]_i_1 
       (.I0(\reg_sh[3]_i_2_n_0 ),
        .I1(is_lui_auipc_jal),
        .I2(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I3(decoded_imm[15]),
        .I4(reg_sh1[15]),
        .O(\reg_op2[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE02FC00)) 
    \reg_op2[16]_i_1 
       (.I0(\reg_sh[3]_i_2_n_0 ),
        .I1(is_lui_auipc_jal),
        .I2(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I3(decoded_imm[16]),
        .I4(reg_sh1[16]),
        .O(\reg_op2[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE02FC00)) 
    \reg_op2[17]_i_1 
       (.I0(\reg_sh[3]_i_2_n_0 ),
        .I1(is_lui_auipc_jal),
        .I2(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I3(decoded_imm[17]),
        .I4(reg_sh1[17]),
        .O(\reg_op2[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE02FC00)) 
    \reg_op2[18]_i_1 
       (.I0(\reg_sh[3]_i_2_n_0 ),
        .I1(is_lui_auipc_jal),
        .I2(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I3(decoded_imm[18]),
        .I4(reg_sh1[18]),
        .O(\reg_op2[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE02FC00)) 
    \reg_op2[19]_i_1 
       (.I0(\reg_sh[3]_i_2_n_0 ),
        .I1(is_lui_auipc_jal),
        .I2(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I3(decoded_imm[19]),
        .I4(reg_sh1[19]),
        .O(\reg_op2[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE02FC00)) 
    \reg_op2[1]_i_1 
       (.I0(\reg_sh[3]_i_2_n_0 ),
        .I1(is_lui_auipc_jal),
        .I2(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I3(decoded_imm[1]),
        .I4(reg_sh1[1]),
        .O(\reg_op2[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE02FC00)) 
    \reg_op2[20]_i_1 
       (.I0(\reg_sh[3]_i_2_n_0 ),
        .I1(is_lui_auipc_jal),
        .I2(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I3(decoded_imm[20]),
        .I4(reg_sh1[20]),
        .O(\reg_op2[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE02FC00)) 
    \reg_op2[21]_i_1 
       (.I0(\reg_sh[3]_i_2_n_0 ),
        .I1(is_lui_auipc_jal),
        .I2(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I3(decoded_imm[21]),
        .I4(reg_sh1[21]),
        .O(\reg_op2[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE02FC00)) 
    \reg_op2[22]_i_1 
       (.I0(\reg_sh[3]_i_2_n_0 ),
        .I1(is_lui_auipc_jal),
        .I2(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I3(decoded_imm[22]),
        .I4(reg_sh1[22]),
        .O(\reg_op2[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE02FC00)) 
    \reg_op2[23]_i_1 
       (.I0(\reg_sh[3]_i_2_n_0 ),
        .I1(is_lui_auipc_jal),
        .I2(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I3(decoded_imm[23]),
        .I4(reg_sh1[23]),
        .O(\reg_op2[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE02FC00)) 
    \reg_op2[24]_i_1 
       (.I0(\reg_sh[3]_i_2_n_0 ),
        .I1(is_lui_auipc_jal),
        .I2(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I3(decoded_imm[24]),
        .I4(reg_sh1[24]),
        .O(\reg_op2[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE02FC00)) 
    \reg_op2[25]_i_1 
       (.I0(\reg_sh[3]_i_2_n_0 ),
        .I1(is_lui_auipc_jal),
        .I2(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I3(decoded_imm[25]),
        .I4(reg_sh1[25]),
        .O(\reg_op2[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE02FC00)) 
    \reg_op2[26]_i_1 
       (.I0(\reg_sh[3]_i_2_n_0 ),
        .I1(is_lui_auipc_jal),
        .I2(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I3(decoded_imm[26]),
        .I4(reg_sh1[26]),
        .O(\reg_op2[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE02FC00)) 
    \reg_op2[27]_i_1 
       (.I0(\reg_sh[3]_i_2_n_0 ),
        .I1(is_lui_auipc_jal),
        .I2(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I3(decoded_imm[27]),
        .I4(reg_sh1[27]),
        .O(\reg_op2[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE02FC00)) 
    \reg_op2[28]_i_1 
       (.I0(\reg_sh[3]_i_2_n_0 ),
        .I1(is_lui_auipc_jal),
        .I2(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I3(decoded_imm[28]),
        .I4(reg_sh1[28]),
        .O(\reg_op2[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE02FC00)) 
    \reg_op2[29]_i_1 
       (.I0(\reg_sh[3]_i_2_n_0 ),
        .I1(is_lui_auipc_jal),
        .I2(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I3(decoded_imm[29]),
        .I4(reg_sh1[29]),
        .O(\reg_op2[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE02FC00)) 
    \reg_op2[2]_i_1 
       (.I0(\reg_sh[3]_i_2_n_0 ),
        .I1(is_lui_auipc_jal),
        .I2(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I3(decoded_imm[2]),
        .I4(reg_sh1[2]),
        .O(\reg_op2[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE02FC00)) 
    \reg_op2[30]_i_1 
       (.I0(\reg_sh[3]_i_2_n_0 ),
        .I1(is_lui_auipc_jal),
        .I2(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I3(decoded_imm[30]),
        .I4(reg_sh1[30]),
        .O(\reg_op2[30]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \reg_op2[31]_i_1 
       (.I0(\cpu_state_reg[6]_0 [3]),
        .I1(resetn),
        .O(\reg_op2[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFE02FC00)) 
    \reg_op2[31]_i_2 
       (.I0(\reg_sh[3]_i_2_n_0 ),
        .I1(is_lui_auipc_jal),
        .I2(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I3(decoded_imm[31]),
        .I4(reg_sh1[31]),
        .O(\reg_op2[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFE02FC00)) 
    \reg_op2[3]_i_1 
       (.I0(\reg_sh[3]_i_2_n_0 ),
        .I1(is_lui_auipc_jal),
        .I2(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I3(decoded_imm[3]),
        .I4(reg_sh1[3]),
        .O(\reg_op2[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE02FC00)) 
    \reg_op2[4]_i_1 
       (.I0(\reg_sh[3]_i_2_n_0 ),
        .I1(is_lui_auipc_jal),
        .I2(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I3(decoded_imm[4]),
        .I4(reg_sh1[4]),
        .O(\reg_op2[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE02FC00)) 
    \reg_op2[5]_i_1 
       (.I0(\reg_sh[3]_i_2_n_0 ),
        .I1(is_lui_auipc_jal),
        .I2(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I3(decoded_imm[5]),
        .I4(reg_sh1[5]),
        .O(\reg_op2[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE02FC00)) 
    \reg_op2[6]_i_1 
       (.I0(\reg_sh[3]_i_2_n_0 ),
        .I1(is_lui_auipc_jal),
        .I2(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I3(decoded_imm[6]),
        .I4(reg_sh1[6]),
        .O(\reg_op2[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE02FC00)) 
    \reg_op2[7]_i_1 
       (.I0(\reg_sh[3]_i_2_n_0 ),
        .I1(is_lui_auipc_jal),
        .I2(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I3(decoded_imm[7]),
        .I4(reg_sh1[7]),
        .O(\reg_op2[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE02FC00)) 
    \reg_op2[8]_i_1 
       (.I0(\reg_sh[3]_i_2_n_0 ),
        .I1(is_lui_auipc_jal),
        .I2(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I3(decoded_imm[8]),
        .I4(reg_sh1[8]),
        .O(\reg_op2[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE02FC00)) 
    \reg_op2[9]_i_1 
       (.I0(\reg_sh[3]_i_2_n_0 ),
        .I1(is_lui_auipc_jal),
        .I2(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I3(decoded_imm[9]),
        .I4(reg_sh1[9]),
        .O(\reg_op2[9]_i_1_n_0 ));
  FDRE \reg_op2_reg[0] 
       (.C(clk),
        .CE(\reg_op2[31]_i_1_n_0 ),
        .D(\reg_op2[0]_i_1_n_0 ),
        .Q(\reg_op2_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \reg_op2_reg[10] 
       (.C(clk),
        .CE(\reg_op2[31]_i_1_n_0 ),
        .D(\reg_op2[10]_i_1_n_0 ),
        .Q(\reg_op2_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \reg_op2_reg[11] 
       (.C(clk),
        .CE(\reg_op2[31]_i_1_n_0 ),
        .D(\reg_op2[11]_i_1_n_0 ),
        .Q(\reg_op2_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \reg_op2_reg[12] 
       (.C(clk),
        .CE(\reg_op2[31]_i_1_n_0 ),
        .D(\reg_op2[12]_i_1_n_0 ),
        .Q(\reg_op2_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \reg_op2_reg[13] 
       (.C(clk),
        .CE(\reg_op2[31]_i_1_n_0 ),
        .D(\reg_op2[13]_i_1_n_0 ),
        .Q(\reg_op2_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \reg_op2_reg[14] 
       (.C(clk),
        .CE(\reg_op2[31]_i_1_n_0 ),
        .D(\reg_op2[14]_i_1_n_0 ),
        .Q(\reg_op2_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \reg_op2_reg[15] 
       (.C(clk),
        .CE(\reg_op2[31]_i_1_n_0 ),
        .D(\reg_op2[15]_i_1_n_0 ),
        .Q(\reg_op2_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \reg_op2_reg[16] 
       (.C(clk),
        .CE(\reg_op2[31]_i_1_n_0 ),
        .D(\reg_op2[16]_i_1_n_0 ),
        .Q(\reg_op2_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \reg_op2_reg[17] 
       (.C(clk),
        .CE(\reg_op2[31]_i_1_n_0 ),
        .D(\reg_op2[17]_i_1_n_0 ),
        .Q(\reg_op2_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \reg_op2_reg[18] 
       (.C(clk),
        .CE(\reg_op2[31]_i_1_n_0 ),
        .D(\reg_op2[18]_i_1_n_0 ),
        .Q(\reg_op2_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \reg_op2_reg[19] 
       (.C(clk),
        .CE(\reg_op2[31]_i_1_n_0 ),
        .D(\reg_op2[19]_i_1_n_0 ),
        .Q(\reg_op2_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \reg_op2_reg[1] 
       (.C(clk),
        .CE(\reg_op2[31]_i_1_n_0 ),
        .D(\reg_op2[1]_i_1_n_0 ),
        .Q(\reg_op2_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \reg_op2_reg[20] 
       (.C(clk),
        .CE(\reg_op2[31]_i_1_n_0 ),
        .D(\reg_op2[20]_i_1_n_0 ),
        .Q(\reg_op2_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \reg_op2_reg[21] 
       (.C(clk),
        .CE(\reg_op2[31]_i_1_n_0 ),
        .D(\reg_op2[21]_i_1_n_0 ),
        .Q(\reg_op2_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \reg_op2_reg[22] 
       (.C(clk),
        .CE(\reg_op2[31]_i_1_n_0 ),
        .D(\reg_op2[22]_i_1_n_0 ),
        .Q(\reg_op2_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \reg_op2_reg[23] 
       (.C(clk),
        .CE(\reg_op2[31]_i_1_n_0 ),
        .D(\reg_op2[23]_i_1_n_0 ),
        .Q(\reg_op2_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \reg_op2_reg[24] 
       (.C(clk),
        .CE(\reg_op2[31]_i_1_n_0 ),
        .D(\reg_op2[24]_i_1_n_0 ),
        .Q(\reg_op2_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \reg_op2_reg[25] 
       (.C(clk),
        .CE(\reg_op2[31]_i_1_n_0 ),
        .D(\reg_op2[25]_i_1_n_0 ),
        .Q(\reg_op2_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \reg_op2_reg[26] 
       (.C(clk),
        .CE(\reg_op2[31]_i_1_n_0 ),
        .D(\reg_op2[26]_i_1_n_0 ),
        .Q(\reg_op2_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \reg_op2_reg[27] 
       (.C(clk),
        .CE(\reg_op2[31]_i_1_n_0 ),
        .D(\reg_op2[27]_i_1_n_0 ),
        .Q(\reg_op2_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \reg_op2_reg[28] 
       (.C(clk),
        .CE(\reg_op2[31]_i_1_n_0 ),
        .D(\reg_op2[28]_i_1_n_0 ),
        .Q(\reg_op2_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \reg_op2_reg[29] 
       (.C(clk),
        .CE(\reg_op2[31]_i_1_n_0 ),
        .D(\reg_op2[29]_i_1_n_0 ),
        .Q(\reg_op2_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \reg_op2_reg[2] 
       (.C(clk),
        .CE(\reg_op2[31]_i_1_n_0 ),
        .D(\reg_op2[2]_i_1_n_0 ),
        .Q(\reg_op2_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \reg_op2_reg[30] 
       (.C(clk),
        .CE(\reg_op2[31]_i_1_n_0 ),
        .D(\reg_op2[30]_i_1_n_0 ),
        .Q(\reg_op2_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \reg_op2_reg[31] 
       (.C(clk),
        .CE(\reg_op2[31]_i_1_n_0 ),
        .D(\reg_op2[31]_i_2_n_0 ),
        .Q(\reg_op2_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \reg_op2_reg[3] 
       (.C(clk),
        .CE(\reg_op2[31]_i_1_n_0 ),
        .D(\reg_op2[3]_i_1_n_0 ),
        .Q(\reg_op2_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \reg_op2_reg[4] 
       (.C(clk),
        .CE(\reg_op2[31]_i_1_n_0 ),
        .D(\reg_op2[4]_i_1_n_0 ),
        .Q(\reg_op2_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \reg_op2_reg[5] 
       (.C(clk),
        .CE(\reg_op2[31]_i_1_n_0 ),
        .D(\reg_op2[5]_i_1_n_0 ),
        .Q(\reg_op2_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \reg_op2_reg[6] 
       (.C(clk),
        .CE(\reg_op2[31]_i_1_n_0 ),
        .D(\reg_op2[6]_i_1_n_0 ),
        .Q(\reg_op2_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \reg_op2_reg[7] 
       (.C(clk),
        .CE(\reg_op2[31]_i_1_n_0 ),
        .D(\reg_op2[7]_i_1_n_0 ),
        .Q(\reg_op2_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \reg_op2_reg[8] 
       (.C(clk),
        .CE(\reg_op2[31]_i_1_n_0 ),
        .D(\reg_op2[8]_i_1_n_0 ),
        .Q(\reg_op2_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \reg_op2_reg[9] 
       (.C(clk),
        .CE(\reg_op2[31]_i_1_n_0 ),
        .D(\reg_op2[9]_i_1_n_0 ),
        .Q(\reg_op2_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \reg_out[0]_i_1 
       (.I0(irq_pending[0]),
        .I1(\cpu_state_reg[6]_0 [4]),
        .I2(\reg_out[0]_i_2_n_0 ),
        .I3(\reg_out[0]_i_3_n_0 ),
        .I4(\reg_out[0]_i_4_n_0 ),
        .I5(\reg_out[0]_i_5_n_0 ),
        .O(reg_out[0]));
  LUT5 #(
    .INIT(32'hF8880000)) 
    \reg_out[0]_i_2 
       (.I0(instr_maskirq),
        .I1(\irq_mask_reg_n_0_[0] ),
        .I2(instr_timer),
        .I3(\timer_reg_n_0_[0] ),
        .I4(\cpu_state_reg[6]_0 [3]),
        .O(\reg_out[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \reg_out[0]_i_3 
       (.I0(\reg_op1_reg_n_0_[0] ),
        .I1(\cpu_state_reg_n_0_[2] ),
        .I2(decoded_imm[0]),
        .I3(\cpu_state_reg[6]_0 [2]),
        .I4(reg_out1[0]),
        .I5(\reg_out[7]_i_6_n_0 ),
        .O(\reg_out[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \reg_out[0]_i_4 
       (.I0(\reg_out[6]_i_6_n_0 ),
        .I1(\reg_out[0]_i_6_n_0 ),
        .I2(mem_axi_rdata[24]),
        .I3(\reg_out[6]_i_8_n_0 ),
        .I4(mem_axi_rdata[16]),
        .I5(\reg_out[6]_i_9_n_0 ),
        .O(\reg_out[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \reg_out[0]_i_5 
       (.I0(\reg_out[15]_i_5_n_0 ),
        .I1(\reg_out[0]_i_7_n_0 ),
        .I2(count_cycle_reg[0]),
        .I3(instr_rdcycle),
        .I4(count_cycle_reg[32]),
        .I5(instr_rdcycleh),
        .O(\reg_out[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000C000CACACCCCC)) 
    \reg_out[0]_i_6 
       (.I0(mem_axi_rdata[8]),
        .I1(mem_axi_rdata[0]),
        .I2(\mem_wordsize_reg_n_0_[1] ),
        .I3(\mem_wordsize_reg_n_0_[0] ),
        .I4(\reg_op1_reg_n_0_[0] ),
        .I5(\reg_op1_reg_n_0_[1] ),
        .O(\reg_out[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_out[0]_i_7 
       (.I0(count_instr_reg[32]),
        .I1(instr_rdinstrh),
        .I2(count_instr_reg[0]),
        .I3(instr_rdinstr),
        .O(\reg_out[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \reg_out[10]_i_1 
       (.I0(\cpu_state_reg_n_0_[2] ),
        .I1(\reg_op1_reg_n_0_[10] ),
        .I2(\reg_out[14]_i_2_n_0 ),
        .I3(\reg_out[10]_i_2_n_0 ),
        .I4(\reg_out[10]_i_3_n_0 ),
        .I5(\reg_out[10]_i_4_n_0 ),
        .O(reg_out[10]));
  LUT5 #(
    .INIT(32'hAA808080)) 
    \reg_out[10]_i_2 
       (.I0(\cpu_state_reg[6]_0 [3]),
        .I1(\timer_reg_n_0_[10] ),
        .I2(instr_timer),
        .I3(\irq_mask_reg_n_0_[10] ),
        .I4(instr_maskirq),
        .O(\reg_out[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \reg_out[10]_i_3 
       (.I0(\reg_out[15]_i_5_n_0 ),
        .I1(\reg_out[10]_i_5_n_0 ),
        .I2(count_cycle_reg[10]),
        .I3(instr_rdcycle),
        .I4(count_cycle_reg[42]),
        .I5(instr_rdcycleh),
        .O(\reg_out[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'hEAAAAAAA)) 
    \reg_out[10]_i_4 
       (.I0(\reg_out[10]_i_6_n_0 ),
        .I1(\reg_out[10]_i_7_n_0 ),
        .I2(\cpu_state_reg[6]_0 [3]),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(reg_out1[10]),
        .O(\reg_out[10]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_out[10]_i_5 
       (.I0(count_instr_reg[42]),
        .I1(instr_rdinstrh),
        .I2(count_instr_reg[10]),
        .I3(instr_rdinstr),
        .O(\reg_out[10]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \reg_out[10]_i_6 
       (.I0(\reg_out_reg[16]_i_9_n_6 ),
        .I1(\cpu_state_reg[6]_0 [2]),
        .I2(\cpu_state_reg[6]_0 [4]),
        .I3(irq_pending[10]),
        .I4(\reg_out[10]_i_8_n_0 ),
        .O(\reg_out[10]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \reg_out[10]_i_7 
       (.I0(\reg_out[31]_i_13_n_0 ),
        .I1(instr_maskirq),
        .I2(\irq_mask_reg_n_0_[10] ),
        .I3(instr_timer),
        .I4(\timer_reg_n_0_[10] ),
        .O(\reg_out[10]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h8AAA8000)) 
    \reg_out[10]_i_8 
       (.I0(\reg_out[14]_i_10_n_0 ),
        .I1(mem_axi_rdata[26]),
        .I2(\reg_op1_reg_n_0_[1] ),
        .I3(\mem_wordsize_reg_n_0_[0] ),
        .I4(mem_axi_rdata[10]),
        .O(\reg_out[10]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \reg_out[11]_i_1 
       (.I0(\cpu_state_reg_n_0_[2] ),
        .I1(\reg_op1_reg_n_0_[11] ),
        .I2(\reg_out[14]_i_2_n_0 ),
        .I3(\reg_out[11]_i_2_n_0 ),
        .I4(\reg_out[11]_i_3_n_0 ),
        .I5(\reg_out[11]_i_4_n_0 ),
        .O(reg_out[11]));
  LUT5 #(
    .INIT(32'hAA808080)) 
    \reg_out[11]_i_2 
       (.I0(\cpu_state_reg[6]_0 [3]),
        .I1(\timer_reg_n_0_[11] ),
        .I2(instr_timer),
        .I3(\irq_mask_reg_n_0_[11] ),
        .I4(instr_maskirq),
        .O(\reg_out[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \reg_out[11]_i_3 
       (.I0(\reg_out[15]_i_5_n_0 ),
        .I1(\reg_out[11]_i_5_n_0 ),
        .I2(count_cycle_reg[11]),
        .I3(instr_rdcycle),
        .I4(count_cycle_reg[43]),
        .I5(instr_rdcycleh),
        .O(\reg_out[11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'hEAAAAAAA)) 
    \reg_out[11]_i_4 
       (.I0(\reg_out[11]_i_6_n_0 ),
        .I1(\reg_out[11]_i_7_n_0 ),
        .I2(\cpu_state_reg[6]_0 [3]),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(reg_out1[11]),
        .O(\reg_out[11]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_out[11]_i_5 
       (.I0(count_instr_reg[43]),
        .I1(instr_rdinstrh),
        .I2(count_instr_reg[11]),
        .I3(instr_rdinstr),
        .O(\reg_out[11]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \reg_out[11]_i_6 
       (.I0(\reg_out_reg[16]_i_9_n_5 ),
        .I1(\cpu_state_reg[6]_0 [2]),
        .I2(\cpu_state_reg[6]_0 [4]),
        .I3(irq_pending[11]),
        .I4(\reg_out[11]_i_8_n_0 ),
        .O(\reg_out[11]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \reg_out[11]_i_7 
       (.I0(\reg_out[31]_i_13_n_0 ),
        .I1(instr_maskirq),
        .I2(\irq_mask_reg_n_0_[11] ),
        .I3(instr_timer),
        .I4(\timer_reg_n_0_[11] ),
        .O(\reg_out[11]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h8AAA8000)) 
    \reg_out[11]_i_8 
       (.I0(\reg_out[14]_i_10_n_0 ),
        .I1(mem_axi_rdata[27]),
        .I2(\reg_op1_reg_n_0_[1] ),
        .I3(\mem_wordsize_reg_n_0_[0] ),
        .I4(mem_axi_rdata[11]),
        .O(\reg_out[11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \reg_out[12]_i_1 
       (.I0(\cpu_state_reg_n_0_[2] ),
        .I1(\reg_op1_reg_n_0_[12] ),
        .I2(\reg_out[14]_i_2_n_0 ),
        .I3(\reg_out[12]_i_2_n_0 ),
        .I4(\reg_out[12]_i_3_n_0 ),
        .I5(\reg_out[12]_i_4_n_0 ),
        .O(reg_out[12]));
  LUT5 #(
    .INIT(32'hAA808080)) 
    \reg_out[12]_i_2 
       (.I0(\cpu_state_reg[6]_0 [3]),
        .I1(\timer_reg_n_0_[12] ),
        .I2(instr_timer),
        .I3(\irq_mask_reg_n_0_[12] ),
        .I4(instr_maskirq),
        .O(\reg_out[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \reg_out[12]_i_3 
       (.I0(\reg_out[15]_i_5_n_0 ),
        .I1(\reg_out[12]_i_5_n_0 ),
        .I2(count_cycle_reg[12]),
        .I3(instr_rdcycle),
        .I4(count_cycle_reg[44]),
        .I5(instr_rdcycleh),
        .O(\reg_out[12]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'hEAAAAAAA)) 
    \reg_out[12]_i_4 
       (.I0(\reg_out[12]_i_6_n_0 ),
        .I1(\reg_out[12]_i_7_n_0 ),
        .I2(\cpu_state_reg[6]_0 [3]),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(reg_out1[12]),
        .O(\reg_out[12]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_out[12]_i_5 
       (.I0(count_instr_reg[44]),
        .I1(instr_rdinstrh),
        .I2(count_instr_reg[12]),
        .I3(instr_rdinstr),
        .O(\reg_out[12]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \reg_out[12]_i_6 
       (.I0(\reg_out_reg[16]_i_9_n_4 ),
        .I1(\cpu_state_reg[6]_0 [2]),
        .I2(\cpu_state_reg[6]_0 [4]),
        .I3(irq_pending[12]),
        .I4(\reg_out[12]_i_8_n_0 ),
        .O(\reg_out[12]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \reg_out[12]_i_7 
       (.I0(\reg_out[31]_i_13_n_0 ),
        .I1(instr_maskirq),
        .I2(\irq_mask_reg_n_0_[12] ),
        .I3(instr_timer),
        .I4(\timer_reg_n_0_[12] ),
        .O(\reg_out[12]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h8AAA8000)) 
    \reg_out[12]_i_8 
       (.I0(\reg_out[14]_i_10_n_0 ),
        .I1(mem_axi_rdata[28]),
        .I2(\reg_op1_reg_n_0_[1] ),
        .I3(\mem_wordsize_reg_n_0_[0] ),
        .I4(mem_axi_rdata[12]),
        .O(\reg_out[12]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \reg_out[13]_i_1 
       (.I0(\cpu_state_reg_n_0_[2] ),
        .I1(\reg_op1_reg_n_0_[13] ),
        .I2(\reg_out[14]_i_2_n_0 ),
        .I3(\reg_out[13]_i_2_n_0 ),
        .I4(\reg_out[13]_i_3_n_0 ),
        .I5(\reg_out[13]_i_4_n_0 ),
        .O(reg_out[13]));
  LUT5 #(
    .INIT(32'hAA808080)) 
    \reg_out[13]_i_2 
       (.I0(\cpu_state_reg[6]_0 [3]),
        .I1(\timer_reg_n_0_[13] ),
        .I2(instr_timer),
        .I3(\irq_mask_reg_n_0_[13] ),
        .I4(instr_maskirq),
        .O(\reg_out[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \reg_out[13]_i_3 
       (.I0(\reg_out[15]_i_5_n_0 ),
        .I1(\reg_out[13]_i_5_n_0 ),
        .I2(count_cycle_reg[13]),
        .I3(instr_rdcycle),
        .I4(count_cycle_reg[45]),
        .I5(instr_rdcycleh),
        .O(\reg_out[13]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT5 #(
    .INIT(32'hEAAAAAAA)) 
    \reg_out[13]_i_4 
       (.I0(\reg_out[13]_i_6_n_0 ),
        .I1(\reg_out[13]_i_7_n_0 ),
        .I2(\cpu_state_reg[6]_0 [3]),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(reg_out1[13]),
        .O(\reg_out[13]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_out[13]_i_5 
       (.I0(count_instr_reg[45]),
        .I1(instr_rdinstrh),
        .I2(count_instr_reg[13]),
        .I3(instr_rdinstr),
        .O(\reg_out[13]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \reg_out[13]_i_6 
       (.I0(\reg_out_reg[16]_i_7_n_7 ),
        .I1(\cpu_state_reg[6]_0 [2]),
        .I2(\cpu_state_reg[6]_0 [4]),
        .I3(irq_pending[13]),
        .I4(\reg_out[13]_i_8_n_0 ),
        .O(\reg_out[13]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \reg_out[13]_i_7 
       (.I0(\reg_out[31]_i_13_n_0 ),
        .I1(instr_maskirq),
        .I2(\irq_mask_reg_n_0_[13] ),
        .I3(instr_timer),
        .I4(\timer_reg_n_0_[13] ),
        .O(\reg_out[13]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h8AAA8000)) 
    \reg_out[13]_i_8 
       (.I0(\reg_out[14]_i_10_n_0 ),
        .I1(mem_axi_rdata[29]),
        .I2(\reg_op1_reg_n_0_[1] ),
        .I3(\mem_wordsize_reg_n_0_[0] ),
        .I4(mem_axi_rdata[13]),
        .O(\reg_out[13]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \reg_out[14]_i_1 
       (.I0(\cpu_state_reg_n_0_[2] ),
        .I1(\reg_op1_reg_n_0_[14] ),
        .I2(\reg_out[14]_i_2_n_0 ),
        .I3(\reg_out[14]_i_3_n_0 ),
        .I4(\reg_out[14]_i_4_n_0 ),
        .I5(\reg_out[14]_i_5_n_0 ),
        .O(reg_out[14]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'h4440)) 
    \reg_out[14]_i_10 
       (.I0(\mem_wordsize_reg_n_0_[1] ),
        .I1(\cpu_state_reg[6]_0 [0]),
        .I2(latched_is_lh_reg_0),
        .I3(latched_is_lu_reg_0),
        .O(\reg_out[14]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_out[14]_i_2 
       (.I0(latched_is_lb_reg_0),
        .I1(mem_rdata_word),
        .I2(\cpu_state_reg[6]_0 [0]),
        .O(\reg_out[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAA808080)) 
    \reg_out[14]_i_3 
       (.I0(\cpu_state_reg[6]_0 [3]),
        .I1(\timer_reg_n_0_[14] ),
        .I2(instr_timer),
        .I3(\irq_mask_reg_n_0_[14] ),
        .I4(instr_maskirq),
        .O(\reg_out[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \reg_out[14]_i_4 
       (.I0(\reg_out[15]_i_5_n_0 ),
        .I1(\reg_out[14]_i_6_n_0 ),
        .I2(count_cycle_reg[14]),
        .I3(instr_rdcycle),
        .I4(count_cycle_reg[46]),
        .I5(instr_rdcycleh),
        .O(\reg_out[14]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'hEAAAAAAA)) 
    \reg_out[14]_i_5 
       (.I0(\reg_out[14]_i_7_n_0 ),
        .I1(\reg_out[14]_i_8_n_0 ),
        .I2(\cpu_state_reg[6]_0 [3]),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(reg_out1[14]),
        .O(\reg_out[14]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_out[14]_i_6 
       (.I0(count_instr_reg[46]),
        .I1(instr_rdinstrh),
        .I2(count_instr_reg[14]),
        .I3(instr_rdinstr),
        .O(\reg_out[14]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \reg_out[14]_i_7 
       (.I0(\reg_out_reg[16]_i_7_n_6 ),
        .I1(\cpu_state_reg[6]_0 [2]),
        .I2(\cpu_state_reg[6]_0 [4]),
        .I3(irq_pending[14]),
        .I4(\reg_out[14]_i_9_n_0 ),
        .O(\reg_out[14]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \reg_out[14]_i_8 
       (.I0(\reg_out[31]_i_13_n_0 ),
        .I1(instr_maskirq),
        .I2(\irq_mask_reg_n_0_[14] ),
        .I3(instr_timer),
        .I4(\timer_reg_n_0_[14] ),
        .O(\reg_out[14]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h8AAA8000)) 
    \reg_out[14]_i_9 
       (.I0(\reg_out[14]_i_10_n_0 ),
        .I1(mem_axi_rdata[30]),
        .I2(\reg_op1_reg_n_0_[1] ),
        .I3(\mem_wordsize_reg_n_0_[0] ),
        .I4(mem_axi_rdata[14]),
        .O(\reg_out[14]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \reg_out[15]_i_1 
       (.I0(\cpu_state_reg_n_0_[2] ),
        .I1(\reg_op1_reg_n_0_[15] ),
        .I2(\reg_out[31]_i_4_n_0 ),
        .I3(\reg_out[15]_i_2_n_0 ),
        .I4(\reg_out[15]_i_3_n_0 ),
        .I5(\reg_out[15]_i_4_n_0 ),
        .O(reg_out[15]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \reg_out[15]_i_10 
       (.I0(\mem_wordsize_reg_n_0_[0] ),
        .I1(\reg_op1_reg_n_0_[1] ),
        .O(\reg_out[15]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hAA808080)) 
    \reg_out[15]_i_2 
       (.I0(\cpu_state_reg[6]_0 [3]),
        .I1(\timer_reg_n_0_[15] ),
        .I2(instr_timer),
        .I3(\irq_mask_reg_n_0_[15] ),
        .I4(instr_maskirq),
        .O(\reg_out[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \reg_out[15]_i_3 
       (.I0(\reg_out[15]_i_5_n_0 ),
        .I1(\reg_out[15]_i_6_n_0 ),
        .I2(count_cycle_reg[15]),
        .I3(instr_rdcycle),
        .I4(count_cycle_reg[47]),
        .I5(instr_rdcycleh),
        .O(\reg_out[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT5 #(
    .INIT(32'hEAAAAAAA)) 
    \reg_out[15]_i_4 
       (.I0(\reg_out[15]_i_7_n_0 ),
        .I1(\reg_out[15]_i_8_n_0 ),
        .I2(\cpu_state_reg[6]_0 [3]),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(reg_out1[15]),
        .O(\reg_out[15]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \reg_out[15]_i_5 
       (.I0(instr_rdinstrh),
        .I1(instr_rdinstr),
        .I2(instr_rdcycleh),
        .I3(instr_rdcycle),
        .I4(\cpu_state_reg[6]_0 [3]),
        .O(\reg_out[15]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_out[15]_i_6 
       (.I0(count_instr_reg[47]),
        .I1(instr_rdinstrh),
        .I2(count_instr_reg[15]),
        .I3(instr_rdinstr),
        .O(\reg_out[15]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \reg_out[15]_i_7 
       (.I0(\reg_out_reg[16]_i_7_n_5 ),
        .I1(\cpu_state_reg[6]_0 [2]),
        .I2(\cpu_state_reg[6]_0 [4]),
        .I3(irq_pending[15]),
        .I4(\reg_out[15]_i_9_n_0 ),
        .O(\reg_out[15]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \reg_out[15]_i_8 
       (.I0(\reg_out[31]_i_13_n_0 ),
        .I1(instr_maskirq),
        .I2(\irq_mask_reg_n_0_[15] ),
        .I3(instr_timer),
        .I4(\timer_reg_n_0_[15] ),
        .O(\reg_out[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h4040400000004000)) 
    \reg_out[15]_i_9 
       (.I0(\mem_wordsize_reg_n_0_[1] ),
        .I1(latched_is_lu_reg_0),
        .I2(\cpu_state_reg[6]_0 [0]),
        .I3(mem_axi_rdata[31]),
        .I4(\reg_out[15]_i_10_n_0 ),
        .I5(mem_axi_rdata[15]),
        .O(\reg_out[15]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \reg_out[16]_i_1 
       (.I0(\reg_out[16]_i_2_n_0 ),
        .I1(\reg_out[16]_i_3_n_0 ),
        .I2(\cpu_state_reg_n_0_[2] ),
        .I3(\reg_op1_reg_n_0_[16] ),
        .I4(\reg_out[31]_i_4_n_0 ),
        .I5(\reg_out[16]_i_4_n_0 ),
        .O(reg_out[16]));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[16]_i_10 
       (.I0(\reg_pc_reg_n_0_[16] ),
        .I1(decoded_imm[16]),
        .O(\reg_out[16]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[16]_i_11 
       (.I0(\reg_pc_reg_n_0_[15] ),
        .I1(decoded_imm[15]),
        .O(\reg_out[16]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[16]_i_12 
       (.I0(\reg_pc_reg_n_0_[14] ),
        .I1(decoded_imm[14]),
        .O(\reg_out[16]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[16]_i_13 
       (.I0(\reg_pc_reg_n_0_[13] ),
        .I1(decoded_imm[13]),
        .O(\reg_out[16]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[16]_i_14 
       (.I0(\reg_pc_reg_n_0_[12] ),
        .I1(decoded_imm[12]),
        .O(\reg_out[16]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[16]_i_15 
       (.I0(\reg_pc_reg_n_0_[11] ),
        .I1(decoded_imm[11]),
        .O(\reg_out[16]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[16]_i_16 
       (.I0(\reg_pc_reg_n_0_[10] ),
        .I1(decoded_imm[10]),
        .O(\reg_out[16]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[16]_i_17 
       (.I0(\reg_pc_reg_n_0_[9] ),
        .I1(decoded_imm[9]),
        .O(\reg_out[16]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8880000)) 
    \reg_out[16]_i_2 
       (.I0(\timer_reg_n_0_[16] ),
        .I1(instr_timer),
        .I2(\irq_mask_reg_n_0_[16] ),
        .I3(instr_maskirq),
        .I4(\cpu_state_reg[6]_0 [3]),
        .I5(\reg_out[16]_i_5_n_0 ),
        .O(\reg_out[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF800080008000)) 
    \reg_out[16]_i_3 
       (.I0(\reg_out[16]_i_6_n_0 ),
        .I1(\cpu_state_reg[6]_0 [3]),
        .I2(\timer[31]_i_5_n_0 ),
        .I3(reg_out1[16]),
        .I4(mem_axi_rdata[16]),
        .I5(\reg_out[31]_i_8_n_0 ),
        .O(\reg_out[16]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_out[16]_i_4 
       (.I0(irq_pending[16]),
        .I1(\cpu_state_reg[6]_0 [4]),
        .I2(\cpu_state_reg[6]_0 [2]),
        .I3(\reg_out_reg[16]_i_7_n_4 ),
        .O(\reg_out[16]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \reg_out[16]_i_5 
       (.I0(\reg_out[15]_i_5_n_0 ),
        .I1(\reg_out[16]_i_8_n_0 ),
        .I2(count_cycle_reg[16]),
        .I3(instr_rdcycle),
        .I4(count_cycle_reg[48]),
        .I5(instr_rdcycleh),
        .O(\reg_out[16]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \reg_out[16]_i_6 
       (.I0(\reg_out[31]_i_13_n_0 ),
        .I1(instr_maskirq),
        .I2(\irq_mask_reg_n_0_[16] ),
        .I3(instr_timer),
        .I4(\timer_reg_n_0_[16] ),
        .O(\reg_out[16]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_out[16]_i_8 
       (.I0(count_instr_reg[48]),
        .I1(instr_rdinstrh),
        .I2(count_instr_reg[16]),
        .I3(instr_rdinstr),
        .O(\reg_out[16]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \reg_out[17]_i_1 
       (.I0(\reg_out[17]_i_2_n_0 ),
        .I1(\reg_out[17]_i_3_n_0 ),
        .I2(\cpu_state_reg_n_0_[2] ),
        .I3(\reg_op1_reg_n_0_[17] ),
        .I4(\reg_out[31]_i_4_n_0 ),
        .I5(\reg_out[17]_i_4_n_0 ),
        .O(reg_out[17]));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8880000)) 
    \reg_out[17]_i_2 
       (.I0(\timer_reg_n_0_[17] ),
        .I1(instr_timer),
        .I2(\irq_mask_reg_n_0_[17] ),
        .I3(instr_maskirq),
        .I4(\cpu_state_reg[6]_0 [3]),
        .I5(\reg_out[17]_i_5_n_0 ),
        .O(\reg_out[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF800080008000)) 
    \reg_out[17]_i_3 
       (.I0(\reg_out[17]_i_6_n_0 ),
        .I1(\cpu_state_reg[6]_0 [3]),
        .I2(\timer[31]_i_5_n_0 ),
        .I3(reg_out1[17]),
        .I4(mem_axi_rdata[17]),
        .I5(\reg_out[31]_i_8_n_0 ),
        .O(\reg_out[17]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_out[17]_i_4 
       (.I0(irq_pending[17]),
        .I1(\cpu_state_reg[6]_0 [4]),
        .I2(\cpu_state_reg[6]_0 [2]),
        .I3(\reg_out_reg[20]_i_7_n_7 ),
        .O(\reg_out[17]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \reg_out[17]_i_5 
       (.I0(\reg_out[15]_i_5_n_0 ),
        .I1(\reg_out[17]_i_7_n_0 ),
        .I2(count_cycle_reg[17]),
        .I3(instr_rdcycle),
        .I4(count_cycle_reg[49]),
        .I5(instr_rdcycleh),
        .O(\reg_out[17]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \reg_out[17]_i_6 
       (.I0(\reg_out[31]_i_13_n_0 ),
        .I1(instr_maskirq),
        .I2(\irq_mask_reg_n_0_[17] ),
        .I3(instr_timer),
        .I4(\timer_reg_n_0_[17] ),
        .O(\reg_out[17]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_out[17]_i_7 
       (.I0(count_instr_reg[49]),
        .I1(instr_rdinstrh),
        .I2(count_instr_reg[17]),
        .I3(instr_rdinstr),
        .O(\reg_out[17]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \reg_out[18]_i_1 
       (.I0(\reg_out[18]_i_2_n_0 ),
        .I1(\reg_out[18]_i_3_n_0 ),
        .I2(\cpu_state_reg_n_0_[2] ),
        .I3(\reg_op1_reg_n_0_[18] ),
        .I4(\reg_out[31]_i_4_n_0 ),
        .I5(\reg_out[18]_i_4_n_0 ),
        .O(reg_out[18]));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8880000)) 
    \reg_out[18]_i_2 
       (.I0(\timer_reg_n_0_[18] ),
        .I1(instr_timer),
        .I2(\irq_mask_reg_n_0_[18] ),
        .I3(instr_maskirq),
        .I4(\cpu_state_reg[6]_0 [3]),
        .I5(\reg_out[18]_i_5_n_0 ),
        .O(\reg_out[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF800080008000)) 
    \reg_out[18]_i_3 
       (.I0(\reg_out[18]_i_6_n_0 ),
        .I1(\cpu_state_reg[6]_0 [3]),
        .I2(\timer[31]_i_5_n_0 ),
        .I3(reg_out1[18]),
        .I4(mem_axi_rdata[18]),
        .I5(\reg_out[31]_i_8_n_0 ),
        .O(\reg_out[18]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_out[18]_i_4 
       (.I0(irq_pending[18]),
        .I1(\cpu_state_reg[6]_0 [4]),
        .I2(\cpu_state_reg[6]_0 [2]),
        .I3(\reg_out_reg[20]_i_7_n_6 ),
        .O(\reg_out[18]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \reg_out[18]_i_5 
       (.I0(\reg_out[15]_i_5_n_0 ),
        .I1(\reg_out[18]_i_7_n_0 ),
        .I2(count_cycle_reg[18]),
        .I3(instr_rdcycle),
        .I4(count_cycle_reg[50]),
        .I5(instr_rdcycleh),
        .O(\reg_out[18]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \reg_out[18]_i_6 
       (.I0(\reg_out[31]_i_13_n_0 ),
        .I1(instr_maskirq),
        .I2(\irq_mask_reg_n_0_[18] ),
        .I3(instr_timer),
        .I4(\timer_reg_n_0_[18] ),
        .O(\reg_out[18]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_out[18]_i_7 
       (.I0(count_instr_reg[50]),
        .I1(instr_rdinstrh),
        .I2(count_instr_reg[18]),
        .I3(instr_rdinstr),
        .O(\reg_out[18]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \reg_out[19]_i_1 
       (.I0(\reg_out[19]_i_2_n_0 ),
        .I1(\reg_out[19]_i_3_n_0 ),
        .I2(\cpu_state_reg_n_0_[2] ),
        .I3(\reg_op1_reg_n_0_[19] ),
        .I4(\reg_out[31]_i_4_n_0 ),
        .I5(\reg_out[19]_i_4_n_0 ),
        .O(reg_out[19]));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8880000)) 
    \reg_out[19]_i_2 
       (.I0(\timer_reg_n_0_[19] ),
        .I1(instr_timer),
        .I2(\irq_mask_reg_n_0_[19] ),
        .I3(instr_maskirq),
        .I4(\cpu_state_reg[6]_0 [3]),
        .I5(\reg_out[19]_i_5_n_0 ),
        .O(\reg_out[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF800080008000)) 
    \reg_out[19]_i_3 
       (.I0(\reg_out[19]_i_6_n_0 ),
        .I1(\cpu_state_reg[6]_0 [3]),
        .I2(\timer[31]_i_5_n_0 ),
        .I3(reg_out1[19]),
        .I4(mem_axi_rdata[19]),
        .I5(\reg_out[31]_i_8_n_0 ),
        .O(\reg_out[19]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_out[19]_i_4 
       (.I0(irq_pending[19]),
        .I1(\cpu_state_reg[6]_0 [4]),
        .I2(\cpu_state_reg[6]_0 [2]),
        .I3(\reg_out_reg[20]_i_7_n_5 ),
        .O(\reg_out[19]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \reg_out[19]_i_5 
       (.I0(\reg_out[15]_i_5_n_0 ),
        .I1(\reg_out[19]_i_7_n_0 ),
        .I2(count_cycle_reg[19]),
        .I3(instr_rdcycle),
        .I4(count_cycle_reg[51]),
        .I5(instr_rdcycleh),
        .O(\reg_out[19]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \reg_out[19]_i_6 
       (.I0(\reg_out[31]_i_13_n_0 ),
        .I1(instr_maskirq),
        .I2(\irq_mask_reg_n_0_[19] ),
        .I3(instr_timer),
        .I4(\timer_reg_n_0_[19] ),
        .O(\reg_out[19]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_out[19]_i_7 
       (.I0(count_instr_reg[51]),
        .I1(instr_rdinstrh),
        .I2(count_instr_reg[19]),
        .I3(instr_rdinstr),
        .O(\reg_out[19]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \reg_out[1]_i_1 
       (.I0(irq_pending[1]),
        .I1(\cpu_state_reg[6]_0 [4]),
        .I2(\reg_out[1]_i_2_n_0 ),
        .I3(\reg_out[1]_i_3_n_0 ),
        .I4(\reg_out[1]_i_4_n_0 ),
        .I5(\reg_out[1]_i_5_n_0 ),
        .O(reg_out[1]));
  LUT5 #(
    .INIT(32'hF8880000)) 
    \reg_out[1]_i_2 
       (.I0(instr_maskirq),
        .I1(\irq_mask_reg_n_0_[1] ),
        .I2(instr_timer),
        .I3(\timer_reg_n_0_[1] ),
        .I4(\cpu_state_reg[6]_0 [3]),
        .O(\reg_out[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \reg_out[1]_i_3 
       (.I0(\reg_op1_reg_n_0_[1] ),
        .I1(\cpu_state_reg_n_0_[2] ),
        .I2(\reg_out_reg[4]_i_6_n_7 ),
        .I3(\cpu_state_reg[6]_0 [2]),
        .I4(reg_out1[1]),
        .I5(\reg_out[7]_i_6_n_0 ),
        .O(\reg_out[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \reg_out[1]_i_4 
       (.I0(\reg_out[6]_i_6_n_0 ),
        .I1(\reg_out[1]_i_6_n_0 ),
        .I2(mem_axi_rdata[25]),
        .I3(\reg_out[6]_i_8_n_0 ),
        .I4(mem_axi_rdata[17]),
        .I5(\reg_out[6]_i_9_n_0 ),
        .O(\reg_out[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \reg_out[1]_i_5 
       (.I0(\reg_out[15]_i_5_n_0 ),
        .I1(\reg_out[1]_i_7_n_0 ),
        .I2(count_cycle_reg[1]),
        .I3(instr_rdcycle),
        .I4(count_cycle_reg[33]),
        .I5(instr_rdcycleh),
        .O(\reg_out[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000C000CACACCCCC)) 
    \reg_out[1]_i_6 
       (.I0(mem_axi_rdata[9]),
        .I1(mem_axi_rdata[1]),
        .I2(\mem_wordsize_reg_n_0_[1] ),
        .I3(\mem_wordsize_reg_n_0_[0] ),
        .I4(\reg_op1_reg_n_0_[0] ),
        .I5(\reg_op1_reg_n_0_[1] ),
        .O(\reg_out[1]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_out[1]_i_7 
       (.I0(count_instr_reg[33]),
        .I1(instr_rdinstrh),
        .I2(count_instr_reg[1]),
        .I3(instr_rdinstr),
        .O(\reg_out[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \reg_out[20]_i_1 
       (.I0(\reg_out[20]_i_2_n_0 ),
        .I1(\reg_out[20]_i_3_n_0 ),
        .I2(\cpu_state_reg_n_0_[2] ),
        .I3(\reg_op1_reg_n_0_[20] ),
        .I4(\reg_out[31]_i_4_n_0 ),
        .I5(\reg_out[20]_i_4_n_0 ),
        .O(reg_out[20]));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[20]_i_10 
       (.I0(\reg_pc_reg_n_0_[19] ),
        .I1(decoded_imm[19]),
        .O(\reg_out[20]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[20]_i_11 
       (.I0(\reg_pc_reg_n_0_[18] ),
        .I1(decoded_imm[18]),
        .O(\reg_out[20]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[20]_i_12 
       (.I0(\reg_pc_reg_n_0_[17] ),
        .I1(decoded_imm[17]),
        .O(\reg_out[20]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8880000)) 
    \reg_out[20]_i_2 
       (.I0(\timer_reg_n_0_[20] ),
        .I1(instr_timer),
        .I2(\irq_mask_reg_n_0_[20] ),
        .I3(instr_maskirq),
        .I4(\cpu_state_reg[6]_0 [3]),
        .I5(\reg_out[20]_i_5_n_0 ),
        .O(\reg_out[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF800080008000)) 
    \reg_out[20]_i_3 
       (.I0(\reg_out[20]_i_6_n_0 ),
        .I1(\cpu_state_reg[6]_0 [3]),
        .I2(\timer[31]_i_5_n_0 ),
        .I3(reg_out1[20]),
        .I4(mem_axi_rdata[20]),
        .I5(\reg_out[31]_i_8_n_0 ),
        .O(\reg_out[20]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_out[20]_i_4 
       (.I0(irq_pending[20]),
        .I1(\cpu_state_reg[6]_0 [4]),
        .I2(\cpu_state_reg[6]_0 [2]),
        .I3(\reg_out_reg[20]_i_7_n_4 ),
        .O(\reg_out[20]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \reg_out[20]_i_5 
       (.I0(\reg_out[15]_i_5_n_0 ),
        .I1(\reg_out[20]_i_8_n_0 ),
        .I2(count_cycle_reg[20]),
        .I3(instr_rdcycle),
        .I4(count_cycle_reg[52]),
        .I5(instr_rdcycleh),
        .O(\reg_out[20]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \reg_out[20]_i_6 
       (.I0(\reg_out[31]_i_13_n_0 ),
        .I1(instr_maskirq),
        .I2(\irq_mask_reg_n_0_[20] ),
        .I3(instr_timer),
        .I4(\timer_reg_n_0_[20] ),
        .O(\reg_out[20]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_out[20]_i_8 
       (.I0(count_instr_reg[52]),
        .I1(instr_rdinstrh),
        .I2(count_instr_reg[20]),
        .I3(instr_rdinstr),
        .O(\reg_out[20]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[20]_i_9 
       (.I0(\reg_pc_reg_n_0_[20] ),
        .I1(decoded_imm[20]),
        .O(\reg_out[20]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \reg_out[21]_i_1 
       (.I0(\reg_out[21]_i_2_n_0 ),
        .I1(\reg_out[21]_i_3_n_0 ),
        .I2(\cpu_state_reg_n_0_[2] ),
        .I3(\reg_op1_reg_n_0_[21] ),
        .I4(\reg_out[31]_i_4_n_0 ),
        .I5(\reg_out[21]_i_4_n_0 ),
        .O(reg_out[21]));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8880000)) 
    \reg_out[21]_i_2 
       (.I0(\timer_reg_n_0_[21] ),
        .I1(instr_timer),
        .I2(\irq_mask_reg_n_0_[21] ),
        .I3(instr_maskirq),
        .I4(\cpu_state_reg[6]_0 [3]),
        .I5(\reg_out[21]_i_5_n_0 ),
        .O(\reg_out[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF800080008000)) 
    \reg_out[21]_i_3 
       (.I0(\reg_out[21]_i_6_n_0 ),
        .I1(\cpu_state_reg[6]_0 [3]),
        .I2(\timer[31]_i_5_n_0 ),
        .I3(reg_out1[21]),
        .I4(mem_axi_rdata[21]),
        .I5(\reg_out[31]_i_8_n_0 ),
        .O(\reg_out[21]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_out[21]_i_4 
       (.I0(irq_pending[21]),
        .I1(\cpu_state_reg[6]_0 [4]),
        .I2(\cpu_state_reg[6]_0 [2]),
        .I3(\reg_out_reg[24]_i_7_n_7 ),
        .O(\reg_out[21]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \reg_out[21]_i_5 
       (.I0(\reg_out[15]_i_5_n_0 ),
        .I1(\reg_out[21]_i_7_n_0 ),
        .I2(count_cycle_reg[21]),
        .I3(instr_rdcycle),
        .I4(count_cycle_reg[53]),
        .I5(instr_rdcycleh),
        .O(\reg_out[21]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \reg_out[21]_i_6 
       (.I0(\reg_out[31]_i_13_n_0 ),
        .I1(instr_maskirq),
        .I2(\irq_mask_reg_n_0_[21] ),
        .I3(instr_timer),
        .I4(\timer_reg_n_0_[21] ),
        .O(\reg_out[21]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_out[21]_i_7 
       (.I0(count_instr_reg[53]),
        .I1(instr_rdinstrh),
        .I2(count_instr_reg[21]),
        .I3(instr_rdinstr),
        .O(\reg_out[21]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \reg_out[22]_i_1 
       (.I0(\reg_out[22]_i_2_n_0 ),
        .I1(\reg_out[22]_i_3_n_0 ),
        .I2(\cpu_state_reg_n_0_[2] ),
        .I3(\reg_op1_reg_n_0_[22] ),
        .I4(\reg_out[31]_i_4_n_0 ),
        .I5(\reg_out[22]_i_4_n_0 ),
        .O(reg_out[22]));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8880000)) 
    \reg_out[22]_i_2 
       (.I0(\timer_reg_n_0_[22] ),
        .I1(instr_timer),
        .I2(\irq_mask_reg_n_0_[22] ),
        .I3(instr_maskirq),
        .I4(\cpu_state_reg[6]_0 [3]),
        .I5(\reg_out[22]_i_5_n_0 ),
        .O(\reg_out[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF800080008000)) 
    \reg_out[22]_i_3 
       (.I0(\reg_out[22]_i_6_n_0 ),
        .I1(\cpu_state_reg[6]_0 [3]),
        .I2(\timer[31]_i_5_n_0 ),
        .I3(reg_out1[22]),
        .I4(mem_axi_rdata[22]),
        .I5(\reg_out[31]_i_8_n_0 ),
        .O(\reg_out[22]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_out[22]_i_4 
       (.I0(irq_pending[22]),
        .I1(\cpu_state_reg[6]_0 [4]),
        .I2(\cpu_state_reg[6]_0 [2]),
        .I3(\reg_out_reg[24]_i_7_n_6 ),
        .O(\reg_out[22]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \reg_out[22]_i_5 
       (.I0(\reg_out[15]_i_5_n_0 ),
        .I1(\reg_out[22]_i_7_n_0 ),
        .I2(count_cycle_reg[22]),
        .I3(instr_rdcycle),
        .I4(count_cycle_reg[54]),
        .I5(instr_rdcycleh),
        .O(\reg_out[22]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \reg_out[22]_i_6 
       (.I0(\reg_out[31]_i_13_n_0 ),
        .I1(instr_maskirq),
        .I2(\irq_mask_reg_n_0_[22] ),
        .I3(instr_timer),
        .I4(\timer_reg_n_0_[22] ),
        .O(\reg_out[22]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_out[22]_i_7 
       (.I0(count_instr_reg[54]),
        .I1(instr_rdinstrh),
        .I2(count_instr_reg[22]),
        .I3(instr_rdinstr),
        .O(\reg_out[22]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \reg_out[23]_i_1 
       (.I0(\reg_out[23]_i_2_n_0 ),
        .I1(\reg_out[23]_i_3_n_0 ),
        .I2(\cpu_state_reg_n_0_[2] ),
        .I3(\reg_op1_reg_n_0_[23] ),
        .I4(\reg_out[31]_i_4_n_0 ),
        .I5(\reg_out[23]_i_4_n_0 ),
        .O(reg_out[23]));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8880000)) 
    \reg_out[23]_i_2 
       (.I0(\timer_reg_n_0_[23] ),
        .I1(instr_timer),
        .I2(\irq_mask_reg_n_0_[23] ),
        .I3(instr_maskirq),
        .I4(\cpu_state_reg[6]_0 [3]),
        .I5(\reg_out[23]_i_5_n_0 ),
        .O(\reg_out[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF800080008000)) 
    \reg_out[23]_i_3 
       (.I0(\reg_out[23]_i_6_n_0 ),
        .I1(\cpu_state_reg[6]_0 [3]),
        .I2(\timer[31]_i_5_n_0 ),
        .I3(reg_out1[23]),
        .I4(mem_axi_rdata[23]),
        .I5(\reg_out[31]_i_8_n_0 ),
        .O(\reg_out[23]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_out[23]_i_4 
       (.I0(irq_pending[23]),
        .I1(\cpu_state_reg[6]_0 [4]),
        .I2(\cpu_state_reg[6]_0 [2]),
        .I3(\reg_out_reg[24]_i_7_n_5 ),
        .O(\reg_out[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \reg_out[23]_i_5 
       (.I0(\reg_out[15]_i_5_n_0 ),
        .I1(\reg_out[23]_i_7_n_0 ),
        .I2(count_cycle_reg[23]),
        .I3(instr_rdcycle),
        .I4(count_cycle_reg[55]),
        .I5(instr_rdcycleh),
        .O(\reg_out[23]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \reg_out[23]_i_6 
       (.I0(\reg_out[31]_i_13_n_0 ),
        .I1(instr_maskirq),
        .I2(\irq_mask_reg_n_0_[23] ),
        .I3(instr_timer),
        .I4(\timer_reg_n_0_[23] ),
        .O(\reg_out[23]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_out[23]_i_7 
       (.I0(count_instr_reg[55]),
        .I1(instr_rdinstrh),
        .I2(count_instr_reg[23]),
        .I3(instr_rdinstr),
        .O(\reg_out[23]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \reg_out[24]_i_1 
       (.I0(\reg_out[24]_i_2_n_0 ),
        .I1(\reg_out[24]_i_3_n_0 ),
        .I2(\cpu_state_reg_n_0_[2] ),
        .I3(\reg_op1_reg_n_0_[24] ),
        .I4(\reg_out[31]_i_4_n_0 ),
        .I5(\reg_out[24]_i_4_n_0 ),
        .O(reg_out[24]));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[24]_i_10 
       (.I0(\reg_pc_reg_n_0_[23] ),
        .I1(decoded_imm[23]),
        .O(\reg_out[24]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[24]_i_11 
       (.I0(\reg_pc_reg_n_0_[22] ),
        .I1(decoded_imm[22]),
        .O(\reg_out[24]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[24]_i_12 
       (.I0(\reg_pc_reg_n_0_[21] ),
        .I1(decoded_imm[21]),
        .O(\reg_out[24]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8880000)) 
    \reg_out[24]_i_2 
       (.I0(\timer_reg_n_0_[24] ),
        .I1(instr_timer),
        .I2(\irq_mask_reg_n_0_[24] ),
        .I3(instr_maskirq),
        .I4(\cpu_state_reg[6]_0 [3]),
        .I5(\reg_out[24]_i_5_n_0 ),
        .O(\reg_out[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF800080008000)) 
    \reg_out[24]_i_3 
       (.I0(\reg_out[24]_i_6_n_0 ),
        .I1(\cpu_state_reg[6]_0 [3]),
        .I2(\timer[31]_i_5_n_0 ),
        .I3(reg_out1[24]),
        .I4(mem_axi_rdata[24]),
        .I5(\reg_out[31]_i_8_n_0 ),
        .O(\reg_out[24]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_out[24]_i_4 
       (.I0(irq_pending[24]),
        .I1(\cpu_state_reg[6]_0 [4]),
        .I2(\cpu_state_reg[6]_0 [2]),
        .I3(\reg_out_reg[24]_i_7_n_4 ),
        .O(\reg_out[24]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \reg_out[24]_i_5 
       (.I0(\reg_out[15]_i_5_n_0 ),
        .I1(\reg_out[24]_i_8_n_0 ),
        .I2(count_cycle_reg[24]),
        .I3(instr_rdcycle),
        .I4(count_cycle_reg[56]),
        .I5(instr_rdcycleh),
        .O(\reg_out[24]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \reg_out[24]_i_6 
       (.I0(\reg_out[31]_i_13_n_0 ),
        .I1(instr_maskirq),
        .I2(\irq_mask_reg_n_0_[24] ),
        .I3(instr_timer),
        .I4(\timer_reg_n_0_[24] ),
        .O(\reg_out[24]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_out[24]_i_8 
       (.I0(count_instr_reg[56]),
        .I1(instr_rdinstrh),
        .I2(count_instr_reg[24]),
        .I3(instr_rdinstr),
        .O(\reg_out[24]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[24]_i_9 
       (.I0(\reg_pc_reg_n_0_[24] ),
        .I1(decoded_imm[24]),
        .O(\reg_out[24]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \reg_out[25]_i_1 
       (.I0(\reg_out[25]_i_2_n_0 ),
        .I1(\reg_out[25]_i_3_n_0 ),
        .I2(\cpu_state_reg_n_0_[2] ),
        .I3(\reg_op1_reg_n_0_[25] ),
        .I4(\reg_out[31]_i_4_n_0 ),
        .I5(\reg_out[25]_i_4_n_0 ),
        .O(reg_out[25]));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8880000)) 
    \reg_out[25]_i_2 
       (.I0(\timer_reg_n_0_[25] ),
        .I1(instr_timer),
        .I2(\irq_mask_reg_n_0_[25] ),
        .I3(instr_maskirq),
        .I4(\cpu_state_reg[6]_0 [3]),
        .I5(\reg_out[25]_i_5_n_0 ),
        .O(\reg_out[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF800080008000)) 
    \reg_out[25]_i_3 
       (.I0(\reg_out[25]_i_6_n_0 ),
        .I1(\cpu_state_reg[6]_0 [3]),
        .I2(\timer[31]_i_5_n_0 ),
        .I3(reg_out1[25]),
        .I4(mem_axi_rdata[25]),
        .I5(\reg_out[31]_i_8_n_0 ),
        .O(\reg_out[25]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_out[25]_i_4 
       (.I0(irq_pending[25]),
        .I1(\cpu_state_reg[6]_0 [4]),
        .I2(\cpu_state_reg[6]_0 [2]),
        .I3(\reg_out_reg[28]_i_7_n_7 ),
        .O(\reg_out[25]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \reg_out[25]_i_5 
       (.I0(\reg_out[15]_i_5_n_0 ),
        .I1(\reg_out[25]_i_7_n_0 ),
        .I2(count_cycle_reg[25]),
        .I3(instr_rdcycle),
        .I4(count_cycle_reg[57]),
        .I5(instr_rdcycleh),
        .O(\reg_out[25]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \reg_out[25]_i_6 
       (.I0(\reg_out[31]_i_13_n_0 ),
        .I1(instr_maskirq),
        .I2(\irq_mask_reg_n_0_[25] ),
        .I3(instr_timer),
        .I4(\timer_reg_n_0_[25] ),
        .O(\reg_out[25]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_out[25]_i_7 
       (.I0(count_instr_reg[57]),
        .I1(instr_rdinstrh),
        .I2(count_instr_reg[25]),
        .I3(instr_rdinstr),
        .O(\reg_out[25]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \reg_out[26]_i_1 
       (.I0(\reg_out[26]_i_2_n_0 ),
        .I1(\reg_out[26]_i_3_n_0 ),
        .I2(\cpu_state_reg_n_0_[2] ),
        .I3(\reg_op1_reg_n_0_[26] ),
        .I4(\reg_out[31]_i_4_n_0 ),
        .I5(\reg_out[26]_i_4_n_0 ),
        .O(reg_out[26]));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8880000)) 
    \reg_out[26]_i_2 
       (.I0(\timer_reg_n_0_[26] ),
        .I1(instr_timer),
        .I2(\irq_mask_reg_n_0_[26] ),
        .I3(instr_maskirq),
        .I4(\cpu_state_reg[6]_0 [3]),
        .I5(\reg_out[26]_i_5_n_0 ),
        .O(\reg_out[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF800080008000)) 
    \reg_out[26]_i_3 
       (.I0(\reg_out[26]_i_6_n_0 ),
        .I1(\cpu_state_reg[6]_0 [3]),
        .I2(\timer[31]_i_5_n_0 ),
        .I3(reg_out1[26]),
        .I4(mem_axi_rdata[26]),
        .I5(\reg_out[31]_i_8_n_0 ),
        .O(\reg_out[26]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_out[26]_i_4 
       (.I0(irq_pending[26]),
        .I1(\cpu_state_reg[6]_0 [4]),
        .I2(\cpu_state_reg[6]_0 [2]),
        .I3(\reg_out_reg[28]_i_7_n_6 ),
        .O(\reg_out[26]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \reg_out[26]_i_5 
       (.I0(\reg_out[15]_i_5_n_0 ),
        .I1(\reg_out[26]_i_7_n_0 ),
        .I2(count_cycle_reg[26]),
        .I3(instr_rdcycle),
        .I4(count_cycle_reg[58]),
        .I5(instr_rdcycleh),
        .O(\reg_out[26]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \reg_out[26]_i_6 
       (.I0(\reg_out[31]_i_13_n_0 ),
        .I1(instr_maskirq),
        .I2(\irq_mask_reg_n_0_[26] ),
        .I3(instr_timer),
        .I4(\timer_reg_n_0_[26] ),
        .O(\reg_out[26]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_out[26]_i_7 
       (.I0(count_instr_reg[58]),
        .I1(instr_rdinstrh),
        .I2(count_instr_reg[26]),
        .I3(instr_rdinstr),
        .O(\reg_out[26]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \reg_out[27]_i_1 
       (.I0(\reg_out[27]_i_2_n_0 ),
        .I1(\reg_out[27]_i_3_n_0 ),
        .I2(\cpu_state_reg_n_0_[2] ),
        .I3(\reg_op1_reg_n_0_[27] ),
        .I4(\reg_out[31]_i_4_n_0 ),
        .I5(\reg_out[27]_i_4_n_0 ),
        .O(reg_out[27]));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8880000)) 
    \reg_out[27]_i_2 
       (.I0(\timer_reg_n_0_[27] ),
        .I1(instr_timer),
        .I2(\irq_mask_reg_n_0_[27] ),
        .I3(instr_maskirq),
        .I4(\cpu_state_reg[6]_0 [3]),
        .I5(\reg_out[27]_i_5_n_0 ),
        .O(\reg_out[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF800080008000)) 
    \reg_out[27]_i_3 
       (.I0(\reg_out[27]_i_6_n_0 ),
        .I1(\cpu_state_reg[6]_0 [3]),
        .I2(\timer[31]_i_5_n_0 ),
        .I3(reg_out1[27]),
        .I4(mem_axi_rdata[27]),
        .I5(\reg_out[31]_i_8_n_0 ),
        .O(\reg_out[27]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_out[27]_i_4 
       (.I0(irq_pending[27]),
        .I1(\cpu_state_reg[6]_0 [4]),
        .I2(\cpu_state_reg[6]_0 [2]),
        .I3(\reg_out_reg[28]_i_7_n_5 ),
        .O(\reg_out[27]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \reg_out[27]_i_5 
       (.I0(\reg_out[15]_i_5_n_0 ),
        .I1(\reg_out[27]_i_7_n_0 ),
        .I2(count_cycle_reg[27]),
        .I3(instr_rdcycle),
        .I4(count_cycle_reg[59]),
        .I5(instr_rdcycleh),
        .O(\reg_out[27]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \reg_out[27]_i_6 
       (.I0(\reg_out[31]_i_13_n_0 ),
        .I1(instr_maskirq),
        .I2(\irq_mask_reg_n_0_[27] ),
        .I3(instr_timer),
        .I4(\timer_reg_n_0_[27] ),
        .O(\reg_out[27]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_out[27]_i_7 
       (.I0(count_instr_reg[59]),
        .I1(instr_rdinstrh),
        .I2(count_instr_reg[27]),
        .I3(instr_rdinstr),
        .O(\reg_out[27]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \reg_out[28]_i_1 
       (.I0(\reg_out[28]_i_2_n_0 ),
        .I1(\reg_out[28]_i_3_n_0 ),
        .I2(\cpu_state_reg_n_0_[2] ),
        .I3(\reg_op1_reg_n_0_[28] ),
        .I4(\reg_out[31]_i_4_n_0 ),
        .I5(\reg_out[28]_i_4_n_0 ),
        .O(reg_out[28]));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[28]_i_10 
       (.I0(\reg_pc_reg_n_0_[27] ),
        .I1(decoded_imm[27]),
        .O(\reg_out[28]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[28]_i_11 
       (.I0(\reg_pc_reg_n_0_[26] ),
        .I1(decoded_imm[26]),
        .O(\reg_out[28]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[28]_i_12 
       (.I0(\reg_pc_reg_n_0_[25] ),
        .I1(decoded_imm[25]),
        .O(\reg_out[28]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8880000)) 
    \reg_out[28]_i_2 
       (.I0(\timer_reg_n_0_[28] ),
        .I1(instr_timer),
        .I2(\irq_mask_reg_n_0_[28] ),
        .I3(instr_maskirq),
        .I4(\cpu_state_reg[6]_0 [3]),
        .I5(\reg_out[28]_i_5_n_0 ),
        .O(\reg_out[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF800080008000)) 
    \reg_out[28]_i_3 
       (.I0(\reg_out[28]_i_6_n_0 ),
        .I1(\cpu_state_reg[6]_0 [3]),
        .I2(\timer[31]_i_5_n_0 ),
        .I3(reg_out1[28]),
        .I4(mem_axi_rdata[28]),
        .I5(\reg_out[31]_i_8_n_0 ),
        .O(\reg_out[28]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_out[28]_i_4 
       (.I0(irq_pending[28]),
        .I1(\cpu_state_reg[6]_0 [4]),
        .I2(\cpu_state_reg[6]_0 [2]),
        .I3(\reg_out_reg[28]_i_7_n_4 ),
        .O(\reg_out[28]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \reg_out[28]_i_5 
       (.I0(\reg_out[15]_i_5_n_0 ),
        .I1(\reg_out[28]_i_8_n_0 ),
        .I2(count_cycle_reg[28]),
        .I3(instr_rdcycle),
        .I4(count_cycle_reg[60]),
        .I5(instr_rdcycleh),
        .O(\reg_out[28]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \reg_out[28]_i_6 
       (.I0(\reg_out[31]_i_13_n_0 ),
        .I1(instr_maskirq),
        .I2(\irq_mask_reg_n_0_[28] ),
        .I3(instr_timer),
        .I4(\timer_reg_n_0_[28] ),
        .O(\reg_out[28]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_out[28]_i_8 
       (.I0(count_instr_reg[60]),
        .I1(instr_rdinstrh),
        .I2(count_instr_reg[28]),
        .I3(instr_rdinstr),
        .O(\reg_out[28]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[28]_i_9 
       (.I0(\reg_pc_reg_n_0_[28] ),
        .I1(decoded_imm[28]),
        .O(\reg_out[28]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \reg_out[29]_i_1 
       (.I0(\reg_out[29]_i_2_n_0 ),
        .I1(\reg_out[29]_i_3_n_0 ),
        .I2(\cpu_state_reg_n_0_[2] ),
        .I3(\reg_op1_reg_n_0_[29] ),
        .I4(\reg_out[31]_i_4_n_0 ),
        .I5(\reg_out[29]_i_4_n_0 ),
        .O(reg_out[29]));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8880000)) 
    \reg_out[29]_i_2 
       (.I0(\timer_reg_n_0_[29] ),
        .I1(instr_timer),
        .I2(\irq_mask_reg_n_0_[29] ),
        .I3(instr_maskirq),
        .I4(\cpu_state_reg[6]_0 [3]),
        .I5(\reg_out[29]_i_5_n_0 ),
        .O(\reg_out[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF800080008000)) 
    \reg_out[29]_i_3 
       (.I0(\reg_out[29]_i_6_n_0 ),
        .I1(\cpu_state_reg[6]_0 [3]),
        .I2(\timer[31]_i_5_n_0 ),
        .I3(reg_out1[29]),
        .I4(mem_axi_rdata[29]),
        .I5(\reg_out[31]_i_8_n_0 ),
        .O(\reg_out[29]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_out[29]_i_4 
       (.I0(irq_pending[29]),
        .I1(\cpu_state_reg[6]_0 [4]),
        .I2(\cpu_state_reg[6]_0 [2]),
        .I3(\reg_out_reg[31]_i_11_n_7 ),
        .O(\reg_out[29]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \reg_out[29]_i_5 
       (.I0(\reg_out[15]_i_5_n_0 ),
        .I1(\reg_out[29]_i_7_n_0 ),
        .I2(count_cycle_reg[29]),
        .I3(instr_rdcycle),
        .I4(count_cycle_reg[61]),
        .I5(instr_rdcycleh),
        .O(\reg_out[29]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \reg_out[29]_i_6 
       (.I0(\reg_out[31]_i_13_n_0 ),
        .I1(instr_maskirq),
        .I2(\irq_mask_reg_n_0_[29] ),
        .I3(instr_timer),
        .I4(\timer_reg_n_0_[29] ),
        .O(\reg_out[29]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_out[29]_i_7 
       (.I0(count_instr_reg[61]),
        .I1(instr_rdinstrh),
        .I2(count_instr_reg[29]),
        .I3(instr_rdinstr),
        .O(\reg_out[29]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \reg_out[2]_i_1 
       (.I0(irq_pending[2]),
        .I1(\cpu_state_reg[6]_0 [4]),
        .I2(\reg_out[2]_i_2_n_0 ),
        .I3(\reg_out[2]_i_3_n_0 ),
        .I4(\reg_out[2]_i_4_n_0 ),
        .I5(\reg_out[2]_i_5_n_0 ),
        .O(reg_out[2]));
  LUT5 #(
    .INIT(32'hF8880000)) 
    \reg_out[2]_i_2 
       (.I0(instr_maskirq),
        .I1(\irq_mask_reg_n_0_[2] ),
        .I2(instr_timer),
        .I3(\timer_reg_n_0_[2] ),
        .I4(\cpu_state_reg[6]_0 [3]),
        .O(\reg_out[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \reg_out[2]_i_3 
       (.I0(\reg_op1_reg_n_0_[2] ),
        .I1(\cpu_state_reg_n_0_[2] ),
        .I2(\reg_out_reg[4]_i_6_n_6 ),
        .I3(\cpu_state_reg[6]_0 [2]),
        .I4(reg_out1[2]),
        .I5(\reg_out[7]_i_6_n_0 ),
        .O(\reg_out[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \reg_out[2]_i_4 
       (.I0(\reg_out[6]_i_6_n_0 ),
        .I1(\reg_out[2]_i_6_n_0 ),
        .I2(mem_axi_rdata[26]),
        .I3(\reg_out[6]_i_8_n_0 ),
        .I4(mem_axi_rdata[18]),
        .I5(\reg_out[6]_i_9_n_0 ),
        .O(\reg_out[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \reg_out[2]_i_5 
       (.I0(\reg_out[15]_i_5_n_0 ),
        .I1(\reg_out[2]_i_7_n_0 ),
        .I2(count_cycle_reg[2]),
        .I3(instr_rdcycle),
        .I4(count_cycle_reg[34]),
        .I5(instr_rdcycleh),
        .O(\reg_out[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000C000CACACCCCC)) 
    \reg_out[2]_i_6 
       (.I0(mem_axi_rdata[10]),
        .I1(mem_axi_rdata[2]),
        .I2(\mem_wordsize_reg_n_0_[1] ),
        .I3(\mem_wordsize_reg_n_0_[0] ),
        .I4(\reg_op1_reg_n_0_[0] ),
        .I5(\reg_op1_reg_n_0_[1] ),
        .O(\reg_out[2]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_out[2]_i_7 
       (.I0(count_instr_reg[34]),
        .I1(instr_rdinstrh),
        .I2(count_instr_reg[2]),
        .I3(instr_rdinstr),
        .O(\reg_out[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \reg_out[30]_i_1 
       (.I0(\reg_out[30]_i_2_n_0 ),
        .I1(\reg_out[30]_i_3_n_0 ),
        .I2(\cpu_state_reg_n_0_[2] ),
        .I3(\reg_op1_reg_n_0_[30] ),
        .I4(\reg_out[31]_i_4_n_0 ),
        .I5(\reg_out[30]_i_4_n_0 ),
        .O(reg_out[30]));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8880000)) 
    \reg_out[30]_i_2 
       (.I0(\timer_reg_n_0_[30] ),
        .I1(instr_timer),
        .I2(\irq_mask_reg_n_0_[30] ),
        .I3(instr_maskirq),
        .I4(\cpu_state_reg[6]_0 [3]),
        .I5(\reg_out[30]_i_5_n_0 ),
        .O(\reg_out[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF800080008000)) 
    \reg_out[30]_i_3 
       (.I0(\reg_out[30]_i_6_n_0 ),
        .I1(\cpu_state_reg[6]_0 [3]),
        .I2(\timer[31]_i_5_n_0 ),
        .I3(reg_out1[30]),
        .I4(mem_axi_rdata[30]),
        .I5(\reg_out[31]_i_8_n_0 ),
        .O(\reg_out[30]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_out[30]_i_4 
       (.I0(irq_pending[30]),
        .I1(\cpu_state_reg[6]_0 [4]),
        .I2(\cpu_state_reg[6]_0 [2]),
        .I3(\reg_out_reg[31]_i_11_n_6 ),
        .O(\reg_out[30]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \reg_out[30]_i_5 
       (.I0(\reg_out[15]_i_5_n_0 ),
        .I1(\reg_out[30]_i_7_n_0 ),
        .I2(count_cycle_reg[30]),
        .I3(instr_rdcycle),
        .I4(count_cycle_reg[62]),
        .I5(instr_rdcycleh),
        .O(\reg_out[30]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \reg_out[30]_i_6 
       (.I0(\reg_out[31]_i_13_n_0 ),
        .I1(instr_maskirq),
        .I2(\irq_mask_reg_n_0_[30] ),
        .I3(instr_timer),
        .I4(\timer_reg_n_0_[30] ),
        .O(\reg_out[30]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_out[30]_i_7 
       (.I0(count_instr_reg[62]),
        .I1(instr_rdinstrh),
        .I2(count_instr_reg[30]),
        .I3(instr_rdinstr),
        .O(\reg_out[30]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \reg_out[31]_i_1 
       (.I0(\reg_out[31]_i_2_n_0 ),
        .I1(\reg_out[31]_i_3_n_0 ),
        .I2(\cpu_state_reg_n_0_[2] ),
        .I3(\reg_op1_reg_n_0_[31] ),
        .I4(\reg_out[31]_i_4_n_0 ),
        .I5(\reg_out[31]_i_5_n_0 ),
        .O(reg_out[31]));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \reg_out[31]_i_10 
       (.I0(mem_axi_rdata[15]),
        .I1(\mem_wordsize_reg_n_0_[0] ),
        .I2(\reg_op1_reg_n_0_[1] ),
        .I3(mem_axi_rdata[31]),
        .O(\reg_out[31]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_out[31]_i_12 
       (.I0(count_instr_reg[63]),
        .I1(instr_rdinstrh),
        .I2(count_instr_reg[31]),
        .I3(instr_rdinstr),
        .O(\reg_out[31]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \reg_out[31]_i_13 
       (.I0(instr_retirq),
        .I1(instr_getq),
        .I2(instr_setq),
        .O(\reg_out[31]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h000C000CACACCCCC)) 
    \reg_out[31]_i_14 
       (.I0(mem_axi_rdata[15]),
        .I1(mem_axi_rdata[7]),
        .I2(\mem_wordsize_reg_n_0_[1] ),
        .I3(\mem_wordsize_reg_n_0_[0] ),
        .I4(\reg_op1_reg_n_0_[0] ),
        .I5(\reg_op1_reg_n_0_[1] ),
        .O(\reg_out[31]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[31]_i_15 
       (.I0(\reg_pc_reg_n_0_[31] ),
        .I1(decoded_imm[31]),
        .O(\reg_out[31]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[31]_i_16 
       (.I0(\reg_pc_reg_n_0_[30] ),
        .I1(decoded_imm[30]),
        .O(\reg_out[31]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[31]_i_17 
       (.I0(\reg_pc_reg_n_0_[29] ),
        .I1(decoded_imm[29]),
        .O(\reg_out[31]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8880000)) 
    \reg_out[31]_i_2 
       (.I0(\timer_reg_n_0_[31] ),
        .I1(instr_timer),
        .I2(\irq_mask_reg_n_0_[31] ),
        .I3(instr_maskirq),
        .I4(\cpu_state_reg[6]_0 [3]),
        .I5(\reg_out[31]_i_6_n_0 ),
        .O(\reg_out[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF800080008000)) 
    \reg_out[31]_i_3 
       (.I0(\reg_out[31]_i_7_n_0 ),
        .I1(\cpu_state_reg[6]_0 [3]),
        .I2(\timer[31]_i_5_n_0 ),
        .I3(reg_out1[31]),
        .I4(mem_axi_rdata[31]),
        .I5(\reg_out[31]_i_8_n_0 ),
        .O(\reg_out[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8F88888800000000)) 
    \reg_out[31]_i_4 
       (.I0(latched_is_lb_reg_0),
        .I1(mem_rdata_word),
        .I2(\mem_wordsize_reg_n_0_[1] ),
        .I3(latched_is_lh_reg_0),
        .I4(\reg_out[31]_i_10_n_0 ),
        .I5(\cpu_state_reg[6]_0 [0]),
        .O(\reg_out[31]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_out[31]_i_5 
       (.I0(irq_pending[31]),
        .I1(\cpu_state_reg[6]_0 [4]),
        .I2(\cpu_state_reg[6]_0 [2]),
        .I3(\reg_out_reg[31]_i_11_n_5 ),
        .O(\reg_out[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \reg_out[31]_i_6 
       (.I0(\reg_out[15]_i_5_n_0 ),
        .I1(\reg_out[31]_i_12_n_0 ),
        .I2(count_cycle_reg[31]),
        .I3(instr_rdcycle),
        .I4(count_cycle_reg[63]),
        .I5(instr_rdcycleh),
        .O(\reg_out[31]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \reg_out[31]_i_7 
       (.I0(\reg_out[31]_i_13_n_0 ),
        .I1(instr_maskirq),
        .I2(\irq_mask_reg_n_0_[31] ),
        .I3(instr_timer),
        .I4(\timer_reg_n_0_[31] ),
        .O(\reg_out[31]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \reg_out[31]_i_8 
       (.I0(\cpu_state_reg[6]_0 [0]),
        .I1(latched_is_lu_reg_0),
        .I2(\mem_wordsize_reg_n_0_[0] ),
        .I3(\mem_wordsize_reg_n_0_[1] ),
        .O(\reg_out[31]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \reg_out[31]_i_9 
       (.I0(\reg_out[6]_i_9_n_0 ),
        .I1(mem_axi_rdata[23]),
        .I2(\reg_out[6]_i_8_n_0 ),
        .I3(mem_axi_rdata[31]),
        .I4(\reg_out[31]_i_14_n_0 ),
        .O(mem_rdata_word));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \reg_out[3]_i_1 
       (.I0(irq_pending[3]),
        .I1(\cpu_state_reg[6]_0 [4]),
        .I2(\reg_out[3]_i_2_n_0 ),
        .I3(\reg_out[3]_i_3_n_0 ),
        .I4(\reg_out[3]_i_4_n_0 ),
        .I5(\reg_out[3]_i_5_n_0 ),
        .O(reg_out[3]));
  LUT5 #(
    .INIT(32'hF8880000)) 
    \reg_out[3]_i_2 
       (.I0(instr_maskirq),
        .I1(\irq_mask_reg_n_0_[3] ),
        .I2(instr_timer),
        .I3(\timer_reg_n_0_[3] ),
        .I4(\cpu_state_reg[6]_0 [3]),
        .O(\reg_out[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \reg_out[3]_i_3 
       (.I0(\reg_op1_reg_n_0_[3] ),
        .I1(\cpu_state_reg_n_0_[2] ),
        .I2(\reg_out_reg[4]_i_6_n_5 ),
        .I3(\cpu_state_reg[6]_0 [2]),
        .I4(reg_out1[3]),
        .I5(\reg_out[7]_i_6_n_0 ),
        .O(\reg_out[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \reg_out[3]_i_4 
       (.I0(\reg_out[6]_i_6_n_0 ),
        .I1(\reg_out[3]_i_6_n_0 ),
        .I2(mem_axi_rdata[27]),
        .I3(\reg_out[6]_i_8_n_0 ),
        .I4(mem_axi_rdata[19]),
        .I5(\reg_out[6]_i_9_n_0 ),
        .O(\reg_out[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \reg_out[3]_i_5 
       (.I0(\reg_out[15]_i_5_n_0 ),
        .I1(\reg_out[3]_i_7_n_0 ),
        .I2(count_cycle_reg[3]),
        .I3(instr_rdcycle),
        .I4(count_cycle_reg[35]),
        .I5(instr_rdcycleh),
        .O(\reg_out[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000C000CACACCCCC)) 
    \reg_out[3]_i_6 
       (.I0(mem_axi_rdata[11]),
        .I1(mem_axi_rdata[3]),
        .I2(\mem_wordsize_reg_n_0_[1] ),
        .I3(\mem_wordsize_reg_n_0_[0] ),
        .I4(\reg_op1_reg_n_0_[0] ),
        .I5(\reg_op1_reg_n_0_[1] ),
        .O(\reg_out[3]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_out[3]_i_7 
       (.I0(count_instr_reg[35]),
        .I1(instr_rdinstrh),
        .I2(count_instr_reg[3]),
        .I3(instr_rdinstr),
        .O(\reg_out[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \reg_out[4]_i_1 
       (.I0(irq_pending[4]),
        .I1(\cpu_state_reg[6]_0 [4]),
        .I2(\reg_out[4]_i_2_n_0 ),
        .I3(\reg_out[4]_i_3_n_0 ),
        .I4(\reg_out[4]_i_4_n_0 ),
        .I5(\reg_out[4]_i_5_n_0 ),
        .O(reg_out[4]));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[4]_i_10 
       (.I0(\reg_pc_reg_n_0_[3] ),
        .I1(decoded_imm[3]),
        .O(\reg_out[4]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[4]_i_11 
       (.I0(\reg_pc_reg_n_0_[2] ),
        .I1(decoded_imm[2]),
        .O(\reg_out[4]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[4]_i_12 
       (.I0(\reg_pc_reg_n_0_[1] ),
        .I1(decoded_imm[1]),
        .O(\reg_out[4]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hF8880000)) 
    \reg_out[4]_i_2 
       (.I0(instr_maskirq),
        .I1(\irq_mask_reg_n_0_[4] ),
        .I2(instr_timer),
        .I3(\timer_reg_n_0_[4] ),
        .I4(\cpu_state_reg[6]_0 [3]),
        .O(\reg_out[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \reg_out[4]_i_3 
       (.I0(\reg_op1_reg_n_0_[4] ),
        .I1(\cpu_state_reg_n_0_[2] ),
        .I2(\reg_out_reg[4]_i_6_n_4 ),
        .I3(\cpu_state_reg[6]_0 [2]),
        .I4(reg_out1[4]),
        .I5(\reg_out[7]_i_6_n_0 ),
        .O(\reg_out[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \reg_out[4]_i_4 
       (.I0(\reg_out[6]_i_6_n_0 ),
        .I1(\reg_out[4]_i_7_n_0 ),
        .I2(mem_axi_rdata[28]),
        .I3(\reg_out[6]_i_8_n_0 ),
        .I4(mem_axi_rdata[20]),
        .I5(\reg_out[6]_i_9_n_0 ),
        .O(\reg_out[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \reg_out[4]_i_5 
       (.I0(\reg_out[15]_i_5_n_0 ),
        .I1(\reg_out[4]_i_8_n_0 ),
        .I2(count_cycle_reg[4]),
        .I3(instr_rdcycle),
        .I4(count_cycle_reg[36]),
        .I5(instr_rdcycleh),
        .O(\reg_out[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000C000CACACCCCC)) 
    \reg_out[4]_i_7 
       (.I0(mem_axi_rdata[12]),
        .I1(mem_axi_rdata[4]),
        .I2(\mem_wordsize_reg_n_0_[1] ),
        .I3(\mem_wordsize_reg_n_0_[0] ),
        .I4(\reg_op1_reg_n_0_[0] ),
        .I5(\reg_op1_reg_n_0_[1] ),
        .O(\reg_out[4]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_out[4]_i_8 
       (.I0(count_instr_reg[36]),
        .I1(instr_rdinstrh),
        .I2(count_instr_reg[4]),
        .I3(instr_rdinstr),
        .O(\reg_out[4]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[4]_i_9 
       (.I0(\reg_pc_reg_n_0_[4] ),
        .I1(decoded_imm[4]),
        .O(\reg_out[4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \reg_out[5]_i_1 
       (.I0(irq_pending[5]),
        .I1(\cpu_state_reg[6]_0 [4]),
        .I2(\reg_out[5]_i_2_n_0 ),
        .I3(\reg_out[5]_i_3_n_0 ),
        .I4(\reg_out[5]_i_4_n_0 ),
        .I5(\reg_out[5]_i_5_n_0 ),
        .O(reg_out[5]));
  LUT5 #(
    .INIT(32'hF8880000)) 
    \reg_out[5]_i_2 
       (.I0(instr_maskirq),
        .I1(\irq_mask_reg_n_0_[5] ),
        .I2(instr_timer),
        .I3(\timer_reg_n_0_[5] ),
        .I4(\cpu_state_reg[6]_0 [3]),
        .O(\reg_out[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \reg_out[5]_i_3 
       (.I0(\reg_op1_reg_n_0_[5] ),
        .I1(\cpu_state_reg_n_0_[2] ),
        .I2(\reg_out_reg[7]_i_5_n_7 ),
        .I3(\cpu_state_reg[6]_0 [2]),
        .I4(reg_out1[5]),
        .I5(\reg_out[7]_i_6_n_0 ),
        .O(\reg_out[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \reg_out[5]_i_4 
       (.I0(\reg_out[6]_i_6_n_0 ),
        .I1(\reg_out[5]_i_6_n_0 ),
        .I2(mem_axi_rdata[29]),
        .I3(\reg_out[6]_i_8_n_0 ),
        .I4(mem_axi_rdata[21]),
        .I5(\reg_out[6]_i_9_n_0 ),
        .O(\reg_out[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \reg_out[5]_i_5 
       (.I0(\reg_out[15]_i_5_n_0 ),
        .I1(\reg_out[5]_i_7_n_0 ),
        .I2(count_cycle_reg[5]),
        .I3(instr_rdcycle),
        .I4(count_cycle_reg[37]),
        .I5(instr_rdcycleh),
        .O(\reg_out[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000C000CACACCCCC)) 
    \reg_out[5]_i_6 
       (.I0(mem_axi_rdata[13]),
        .I1(mem_axi_rdata[5]),
        .I2(\mem_wordsize_reg_n_0_[1] ),
        .I3(\mem_wordsize_reg_n_0_[0] ),
        .I4(\reg_op1_reg_n_0_[0] ),
        .I5(\reg_op1_reg_n_0_[1] ),
        .O(\reg_out[5]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_out[5]_i_7 
       (.I0(count_instr_reg[37]),
        .I1(instr_rdinstrh),
        .I2(count_instr_reg[5]),
        .I3(instr_rdinstr),
        .O(\reg_out[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \reg_out[6]_i_1 
       (.I0(irq_pending[6]),
        .I1(\cpu_state_reg[6]_0 [4]),
        .I2(\reg_out[6]_i_2_n_0 ),
        .I3(\reg_out[6]_i_3_n_0 ),
        .I4(\reg_out[6]_i_4_n_0 ),
        .I5(\reg_out[6]_i_5_n_0 ),
        .O(reg_out[6]));
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_out[6]_i_10 
       (.I0(count_instr_reg[38]),
        .I1(instr_rdinstrh),
        .I2(count_instr_reg[6]),
        .I3(instr_rdinstr),
        .O(\reg_out[6]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hF8880000)) 
    \reg_out[6]_i_2 
       (.I0(instr_maskirq),
        .I1(\irq_mask_reg_n_0_[6] ),
        .I2(instr_timer),
        .I3(\timer_reg_n_0_[6] ),
        .I4(\cpu_state_reg[6]_0 [3]),
        .O(\reg_out[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \reg_out[6]_i_3 
       (.I0(\reg_op1_reg_n_0_[6] ),
        .I1(\cpu_state_reg_n_0_[2] ),
        .I2(\reg_out_reg[7]_i_5_n_6 ),
        .I3(\cpu_state_reg[6]_0 [2]),
        .I4(reg_out1[6]),
        .I5(\reg_out[7]_i_6_n_0 ),
        .O(\reg_out[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \reg_out[6]_i_4 
       (.I0(\reg_out[6]_i_6_n_0 ),
        .I1(\reg_out[6]_i_7_n_0 ),
        .I2(mem_axi_rdata[30]),
        .I3(\reg_out[6]_i_8_n_0 ),
        .I4(mem_axi_rdata[22]),
        .I5(\reg_out[6]_i_9_n_0 ),
        .O(\reg_out[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \reg_out[6]_i_5 
       (.I0(\reg_out[15]_i_5_n_0 ),
        .I1(\reg_out[6]_i_10_n_0 ),
        .I2(count_cycle_reg[6]),
        .I3(instr_rdcycle),
        .I4(count_cycle_reg[38]),
        .I5(instr_rdcycleh),
        .O(\reg_out[6]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \reg_out[6]_i_6 
       (.I0(latched_is_lb_reg_0),
        .I1(latched_is_lu_reg_0),
        .I2(latched_is_lh_reg_0),
        .I3(\cpu_state_reg[6]_0 [0]),
        .O(\reg_out[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h000C000CACACCCCC)) 
    \reg_out[6]_i_7 
       (.I0(mem_axi_rdata[14]),
        .I1(mem_axi_rdata[6]),
        .I2(\mem_wordsize_reg_n_0_[1] ),
        .I3(\mem_wordsize_reg_n_0_[0] ),
        .I4(\reg_op1_reg_n_0_[0] ),
        .I5(\reg_op1_reg_n_0_[1] ),
        .O(\reg_out[6]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reg_out[6]_i_8 
       (.I0(\reg_op1_reg_n_0_[1] ),
        .I1(\mem_wordsize_reg_n_0_[1] ),
        .I2(\reg_op1_reg_n_0_[0] ),
        .O(\reg_out[6]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT4 #(
    .INIT(16'h3A00)) 
    \reg_out[6]_i_9 
       (.I0(\mem_wordsize_reg_n_0_[0] ),
        .I1(\reg_op1_reg_n_0_[0] ),
        .I2(\mem_wordsize_reg_n_0_[1] ),
        .I3(\reg_op1_reg_n_0_[1] ),
        .O(\reg_out[6]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFF8)) 
    \reg_out[7]_i_1 
       (.I0(irq_pending[7]),
        .I1(\cpu_state_reg[6]_0 [4]),
        .I2(\reg_out[7]_i_2_n_0 ),
        .I3(\reg_out[7]_i_3_n_0 ),
        .I4(\reg_out[7]_i_4_n_0 ),
        .O(reg_out[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[7]_i_10 
       (.I0(\reg_pc_reg_n_0_[6] ),
        .I1(decoded_imm[6]),
        .O(\reg_out[7]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[7]_i_11 
       (.I0(\reg_pc_reg_n_0_[5] ),
        .I1(decoded_imm[5]),
        .O(\reg_out[7]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_out[7]_i_12 
       (.I0(count_instr_reg[39]),
        .I1(instr_rdinstrh),
        .I2(count_instr_reg[7]),
        .I3(instr_rdinstr),
        .O(\reg_out[7]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hF8880000)) 
    \reg_out[7]_i_2 
       (.I0(instr_maskirq),
        .I1(\irq_mask_reg_n_0_[7] ),
        .I2(instr_timer),
        .I3(\timer_reg_n_0_[7] ),
        .I4(\cpu_state_reg[6]_0 [3]),
        .O(\reg_out[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \reg_out[7]_i_3 
       (.I0(\reg_op1_reg_n_0_[7] ),
        .I1(\cpu_state_reg_n_0_[2] ),
        .I2(\reg_out_reg[7]_i_5_n_5 ),
        .I3(\cpu_state_reg[6]_0 [2]),
        .I4(reg_out1[7]),
        .I5(\reg_out[7]_i_6_n_0 ),
        .O(\reg_out[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEAAAAAAAAA)) 
    \reg_out[7]_i_4 
       (.I0(\reg_out[7]_i_7_n_0 ),
        .I1(mem_rdata_word),
        .I2(latched_is_lb_reg_0),
        .I3(latched_is_lu_reg_0),
        .I4(latched_is_lh_reg_0),
        .I5(\cpu_state_reg[6]_0 [0]),
        .O(\reg_out[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'hFE000000)) 
    \reg_out[7]_i_6 
       (.I0(instr_setq),
        .I1(instr_getq),
        .I2(instr_retirq),
        .I3(\cpu_state_reg[6]_0 [3]),
        .I4(\timer[31]_i_5_n_0 ),
        .O(\reg_out[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \reg_out[7]_i_7 
       (.I0(\reg_out[15]_i_5_n_0 ),
        .I1(\reg_out[7]_i_12_n_0 ),
        .I2(count_cycle_reg[7]),
        .I3(instr_rdcycle),
        .I4(count_cycle_reg[39]),
        .I5(instr_rdcycleh),
        .O(\reg_out[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[7]_i_8 
       (.I0(\reg_pc_reg_n_0_[8] ),
        .I1(decoded_imm[8]),
        .O(\reg_out[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[7]_i_9 
       (.I0(\reg_pc_reg_n_0_[7] ),
        .I1(decoded_imm[7]),
        .O(\reg_out[7]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \reg_out[8]_i_1 
       (.I0(\cpu_state_reg_n_0_[2] ),
        .I1(\reg_op1_reg_n_0_[8] ),
        .I2(\reg_out[14]_i_2_n_0 ),
        .I3(\reg_out[8]_i_2_n_0 ),
        .I4(\reg_out[8]_i_3_n_0 ),
        .I5(\reg_out[8]_i_4_n_0 ),
        .O(reg_out[8]));
  LUT5 #(
    .INIT(32'hAA808080)) 
    \reg_out[8]_i_2 
       (.I0(\cpu_state_reg[6]_0 [3]),
        .I1(\timer_reg_n_0_[8] ),
        .I2(instr_timer),
        .I3(\irq_mask_reg_n_0_[8] ),
        .I4(instr_maskirq),
        .O(\reg_out[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \reg_out[8]_i_3 
       (.I0(\reg_out[15]_i_5_n_0 ),
        .I1(\reg_out[8]_i_5_n_0 ),
        .I2(count_cycle_reg[8]),
        .I3(instr_rdcycle),
        .I4(count_cycle_reg[40]),
        .I5(instr_rdcycleh),
        .O(\reg_out[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'hEAAAAAAA)) 
    \reg_out[8]_i_4 
       (.I0(\reg_out[8]_i_6_n_0 ),
        .I1(\reg_out[8]_i_7_n_0 ),
        .I2(\cpu_state_reg[6]_0 [3]),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(reg_out1[8]),
        .O(\reg_out[8]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_out[8]_i_5 
       (.I0(count_instr_reg[40]),
        .I1(instr_rdinstrh),
        .I2(count_instr_reg[8]),
        .I3(instr_rdinstr),
        .O(\reg_out[8]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \reg_out[8]_i_6 
       (.I0(\reg_out_reg[7]_i_5_n_4 ),
        .I1(\cpu_state_reg[6]_0 [2]),
        .I2(\cpu_state_reg[6]_0 [4]),
        .I3(irq_pending[8]),
        .I4(\reg_out[8]_i_8_n_0 ),
        .O(\reg_out[8]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \reg_out[8]_i_7 
       (.I0(\reg_out[31]_i_13_n_0 ),
        .I1(instr_maskirq),
        .I2(\irq_mask_reg_n_0_[8] ),
        .I3(instr_timer),
        .I4(\timer_reg_n_0_[8] ),
        .O(\reg_out[8]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT5 #(
    .INIT(32'h8AAA8000)) 
    \reg_out[8]_i_8 
       (.I0(\reg_out[14]_i_10_n_0 ),
        .I1(mem_axi_rdata[24]),
        .I2(\reg_op1_reg_n_0_[1] ),
        .I3(\mem_wordsize_reg_n_0_[0] ),
        .I4(mem_axi_rdata[8]),
        .O(\reg_out[8]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \reg_out[9]_i_1 
       (.I0(\cpu_state_reg_n_0_[2] ),
        .I1(\reg_op1_reg_n_0_[9] ),
        .I2(\reg_out[14]_i_2_n_0 ),
        .I3(\reg_out[9]_i_2_n_0 ),
        .I4(\reg_out[9]_i_3_n_0 ),
        .I5(\reg_out[9]_i_4_n_0 ),
        .O(reg_out[9]));
  LUT5 #(
    .INIT(32'hAA808080)) 
    \reg_out[9]_i_2 
       (.I0(\cpu_state_reg[6]_0 [3]),
        .I1(\timer_reg_n_0_[9] ),
        .I2(instr_timer),
        .I3(\irq_mask_reg_n_0_[9] ),
        .I4(instr_maskirq),
        .O(\reg_out[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \reg_out[9]_i_3 
       (.I0(\reg_out[15]_i_5_n_0 ),
        .I1(\reg_out[9]_i_5_n_0 ),
        .I2(count_cycle_reg[9]),
        .I3(instr_rdcycle),
        .I4(count_cycle_reg[41]),
        .I5(instr_rdcycleh),
        .O(\reg_out[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'hEAAAAAAA)) 
    \reg_out[9]_i_4 
       (.I0(\reg_out[9]_i_6_n_0 ),
        .I1(\reg_out[9]_i_7_n_0 ),
        .I2(\cpu_state_reg[6]_0 [3]),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(reg_out1[9]),
        .O(\reg_out[9]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_out[9]_i_5 
       (.I0(count_instr_reg[41]),
        .I1(instr_rdinstrh),
        .I2(count_instr_reg[9]),
        .I3(instr_rdinstr),
        .O(\reg_out[9]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \reg_out[9]_i_6 
       (.I0(\reg_out_reg[16]_i_9_n_7 ),
        .I1(\cpu_state_reg[6]_0 [2]),
        .I2(\cpu_state_reg[6]_0 [4]),
        .I3(irq_pending[9]),
        .I4(\reg_out[9]_i_8_n_0 ),
        .O(\reg_out[9]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \reg_out[9]_i_7 
       (.I0(\reg_out[31]_i_13_n_0 ),
        .I1(instr_maskirq),
        .I2(\irq_mask_reg_n_0_[9] ),
        .I3(instr_timer),
        .I4(\timer_reg_n_0_[9] ),
        .O(\reg_out[9]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h8AAA8000)) 
    \reg_out[9]_i_8 
       (.I0(\reg_out[14]_i_10_n_0 ),
        .I1(mem_axi_rdata[25]),
        .I2(\reg_op1_reg_n_0_[1] ),
        .I3(\mem_wordsize_reg_n_0_[0] ),
        .I4(mem_axi_rdata[9]),
        .O(\reg_out[9]_i_8_n_0 ));
  FDRE \reg_out_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(reg_out[0]),
        .Q(\reg_out_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \reg_out_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(reg_out[10]),
        .Q(\reg_out_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \reg_out_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(reg_out[11]),
        .Q(\reg_out_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \reg_out_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(reg_out[12]),
        .Q(\reg_out_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \reg_out_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(reg_out[13]),
        .Q(\reg_out_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \reg_out_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(reg_out[14]),
        .Q(\reg_out_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \reg_out_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(reg_out[15]),
        .Q(\reg_out_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \reg_out_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(reg_out[16]),
        .Q(\reg_out_reg_n_0_[16] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \reg_out_reg[16]_i_7 
       (.CI(\reg_out_reg[16]_i_9_n_0 ),
        .CO({\reg_out_reg[16]_i_7_n_0 ,\reg_out_reg[16]_i_7_n_1 ,\reg_out_reg[16]_i_7_n_2 ,\reg_out_reg[16]_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI({\reg_pc_reg_n_0_[16] ,\reg_pc_reg_n_0_[15] ,\reg_pc_reg_n_0_[14] ,\reg_pc_reg_n_0_[13] }),
        .O({\reg_out_reg[16]_i_7_n_4 ,\reg_out_reg[16]_i_7_n_5 ,\reg_out_reg[16]_i_7_n_6 ,\reg_out_reg[16]_i_7_n_7 }),
        .S({\reg_out[16]_i_10_n_0 ,\reg_out[16]_i_11_n_0 ,\reg_out[16]_i_12_n_0 ,\reg_out[16]_i_13_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \reg_out_reg[16]_i_9 
       (.CI(\reg_out_reg[7]_i_5_n_0 ),
        .CO({\reg_out_reg[16]_i_9_n_0 ,\reg_out_reg[16]_i_9_n_1 ,\reg_out_reg[16]_i_9_n_2 ,\reg_out_reg[16]_i_9_n_3 }),
        .CYINIT(1'b0),
        .DI({\reg_pc_reg_n_0_[12] ,\reg_pc_reg_n_0_[11] ,\reg_pc_reg_n_0_[10] ,\reg_pc_reg_n_0_[9] }),
        .O({\reg_out_reg[16]_i_9_n_4 ,\reg_out_reg[16]_i_9_n_5 ,\reg_out_reg[16]_i_9_n_6 ,\reg_out_reg[16]_i_9_n_7 }),
        .S({\reg_out[16]_i_14_n_0 ,\reg_out[16]_i_15_n_0 ,\reg_out[16]_i_16_n_0 ,\reg_out[16]_i_17_n_0 }));
  FDRE \reg_out_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(reg_out[17]),
        .Q(\reg_out_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \reg_out_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(reg_out[18]),
        .Q(\reg_out_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \reg_out_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(reg_out[19]),
        .Q(\reg_out_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \reg_out_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(reg_out[1]),
        .Q(\reg_out_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \reg_out_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(reg_out[20]),
        .Q(\reg_out_reg_n_0_[20] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \reg_out_reg[20]_i_7 
       (.CI(\reg_out_reg[16]_i_7_n_0 ),
        .CO({\reg_out_reg[20]_i_7_n_0 ,\reg_out_reg[20]_i_7_n_1 ,\reg_out_reg[20]_i_7_n_2 ,\reg_out_reg[20]_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI({\reg_pc_reg_n_0_[20] ,\reg_pc_reg_n_0_[19] ,\reg_pc_reg_n_0_[18] ,\reg_pc_reg_n_0_[17] }),
        .O({\reg_out_reg[20]_i_7_n_4 ,\reg_out_reg[20]_i_7_n_5 ,\reg_out_reg[20]_i_7_n_6 ,\reg_out_reg[20]_i_7_n_7 }),
        .S({\reg_out[20]_i_9_n_0 ,\reg_out[20]_i_10_n_0 ,\reg_out[20]_i_11_n_0 ,\reg_out[20]_i_12_n_0 }));
  FDRE \reg_out_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(reg_out[21]),
        .Q(\reg_out_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \reg_out_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(reg_out[22]),
        .Q(\reg_out_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \reg_out_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(reg_out[23]),
        .Q(\reg_out_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \reg_out_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(reg_out[24]),
        .Q(\reg_out_reg_n_0_[24] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \reg_out_reg[24]_i_7 
       (.CI(\reg_out_reg[20]_i_7_n_0 ),
        .CO({\reg_out_reg[24]_i_7_n_0 ,\reg_out_reg[24]_i_7_n_1 ,\reg_out_reg[24]_i_7_n_2 ,\reg_out_reg[24]_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI({\reg_pc_reg_n_0_[24] ,\reg_pc_reg_n_0_[23] ,\reg_pc_reg_n_0_[22] ,\reg_pc_reg_n_0_[21] }),
        .O({\reg_out_reg[24]_i_7_n_4 ,\reg_out_reg[24]_i_7_n_5 ,\reg_out_reg[24]_i_7_n_6 ,\reg_out_reg[24]_i_7_n_7 }),
        .S({\reg_out[24]_i_9_n_0 ,\reg_out[24]_i_10_n_0 ,\reg_out[24]_i_11_n_0 ,\reg_out[24]_i_12_n_0 }));
  FDRE \reg_out_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(reg_out[25]),
        .Q(\reg_out_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \reg_out_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(reg_out[26]),
        .Q(\reg_out_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \reg_out_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(reg_out[27]),
        .Q(\reg_out_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \reg_out_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(reg_out[28]),
        .Q(\reg_out_reg_n_0_[28] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \reg_out_reg[28]_i_7 
       (.CI(\reg_out_reg[24]_i_7_n_0 ),
        .CO({\reg_out_reg[28]_i_7_n_0 ,\reg_out_reg[28]_i_7_n_1 ,\reg_out_reg[28]_i_7_n_2 ,\reg_out_reg[28]_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI({\reg_pc_reg_n_0_[28] ,\reg_pc_reg_n_0_[27] ,\reg_pc_reg_n_0_[26] ,\reg_pc_reg_n_0_[25] }),
        .O({\reg_out_reg[28]_i_7_n_4 ,\reg_out_reg[28]_i_7_n_5 ,\reg_out_reg[28]_i_7_n_6 ,\reg_out_reg[28]_i_7_n_7 }),
        .S({\reg_out[28]_i_9_n_0 ,\reg_out[28]_i_10_n_0 ,\reg_out[28]_i_11_n_0 ,\reg_out[28]_i_12_n_0 }));
  FDRE \reg_out_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(reg_out[29]),
        .Q(\reg_out_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \reg_out_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(reg_out[2]),
        .Q(\reg_out_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \reg_out_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(reg_out[30]),
        .Q(\reg_out_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \reg_out_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(reg_out[31]),
        .Q(\reg_out_reg_n_0_[31] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \reg_out_reg[31]_i_11 
       (.CI(\reg_out_reg[28]_i_7_n_0 ),
        .CO({\NLW_reg_out_reg[31]_i_11_CO_UNCONNECTED [3:2],\reg_out_reg[31]_i_11_n_2 ,\reg_out_reg[31]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\reg_pc_reg_n_0_[30] ,\reg_pc_reg_n_0_[29] }),
        .O({\NLW_reg_out_reg[31]_i_11_O_UNCONNECTED [3],\reg_out_reg[31]_i_11_n_5 ,\reg_out_reg[31]_i_11_n_6 ,\reg_out_reg[31]_i_11_n_7 }),
        .S({1'b0,\reg_out[31]_i_15_n_0 ,\reg_out[31]_i_16_n_0 ,\reg_out[31]_i_17_n_0 }));
  FDRE \reg_out_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(reg_out[3]),
        .Q(\reg_out_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \reg_out_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(reg_out[4]),
        .Q(\reg_out_reg_n_0_[4] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \reg_out_reg[4]_i_6 
       (.CI(1'b0),
        .CO({\reg_out_reg[4]_i_6_n_0 ,\reg_out_reg[4]_i_6_n_1 ,\reg_out_reg[4]_i_6_n_2 ,\reg_out_reg[4]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({\reg_pc_reg_n_0_[4] ,\reg_pc_reg_n_0_[3] ,\reg_pc_reg_n_0_[2] ,\reg_pc_reg_n_0_[1] }),
        .O({\reg_out_reg[4]_i_6_n_4 ,\reg_out_reg[4]_i_6_n_5 ,\reg_out_reg[4]_i_6_n_6 ,\reg_out_reg[4]_i_6_n_7 }),
        .S({\reg_out[4]_i_9_n_0 ,\reg_out[4]_i_10_n_0 ,\reg_out[4]_i_11_n_0 ,\reg_out[4]_i_12_n_0 }));
  FDRE \reg_out_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(reg_out[5]),
        .Q(\reg_out_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \reg_out_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(reg_out[6]),
        .Q(\reg_out_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \reg_out_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(reg_out[7]),
        .Q(\reg_out_reg_n_0_[7] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \reg_out_reg[7]_i_5 
       (.CI(\reg_out_reg[4]_i_6_n_0 ),
        .CO({\reg_out_reg[7]_i_5_n_0 ,\reg_out_reg[7]_i_5_n_1 ,\reg_out_reg[7]_i_5_n_2 ,\reg_out_reg[7]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({\reg_pc_reg_n_0_[8] ,\reg_pc_reg_n_0_[7] ,\reg_pc_reg_n_0_[6] ,\reg_pc_reg_n_0_[5] }),
        .O({\reg_out_reg[7]_i_5_n_4 ,\reg_out_reg[7]_i_5_n_5 ,\reg_out_reg[7]_i_5_n_6 ,\reg_out_reg[7]_i_5_n_7 }),
        .S({\reg_out[7]_i_8_n_0 ,\reg_out[7]_i_9_n_0 ,\reg_out[7]_i_10_n_0 ,\reg_out[7]_i_11_n_0 }));
  FDRE \reg_out_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(reg_out[8]),
        .Q(\reg_out_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \reg_out_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(reg_out[9]),
        .Q(\reg_out_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h88888888FF88F8F8)) 
    \reg_pc[10]_i_1 
       (.I0(\reg_pc[31]_i_2_n_0 ),
        .I1(\reg_next_pc_reg_n_0_[10] ),
        .I2(\reg_out_reg_n_0_[10] ),
        .I3(alu_out_q[10]),
        .I4(latched_stalu_reg_0),
        .I5(\reg_pc[31]_i_3_n_0 ),
        .O(current_pc[10]));
  LUT6 #(
    .INIT(64'h88888888FF88F8F8)) 
    \reg_pc[11]_i_1 
       (.I0(\reg_pc[31]_i_2_n_0 ),
        .I1(\reg_next_pc_reg_n_0_[11] ),
        .I2(\reg_out_reg_n_0_[11] ),
        .I3(alu_out_q[11]),
        .I4(latched_stalu_reg_0),
        .I5(\reg_pc[31]_i_3_n_0 ),
        .O(current_pc[11]));
  LUT6 #(
    .INIT(64'h88888888FF88F8F8)) 
    \reg_pc[12]_i_1 
       (.I0(\reg_pc[31]_i_2_n_0 ),
        .I1(\reg_next_pc_reg_n_0_[12] ),
        .I2(\reg_out_reg_n_0_[12] ),
        .I3(alu_out_q[12]),
        .I4(latched_stalu_reg_0),
        .I5(\reg_pc[31]_i_3_n_0 ),
        .O(current_pc[12]));
  LUT6 #(
    .INIT(64'h88888888FF88F8F8)) 
    \reg_pc[13]_i_1 
       (.I0(\reg_pc[31]_i_2_n_0 ),
        .I1(\reg_next_pc_reg_n_0_[13] ),
        .I2(\reg_out_reg_n_0_[13] ),
        .I3(alu_out_q[13]),
        .I4(latched_stalu_reg_0),
        .I5(\reg_pc[31]_i_3_n_0 ),
        .O(current_pc[13]));
  LUT6 #(
    .INIT(64'h88888888FF88F8F8)) 
    \reg_pc[14]_i_1 
       (.I0(\reg_pc[31]_i_2_n_0 ),
        .I1(\reg_next_pc_reg_n_0_[14] ),
        .I2(\reg_out_reg_n_0_[14] ),
        .I3(alu_out_q[14]),
        .I4(latched_stalu_reg_0),
        .I5(\reg_pc[31]_i_3_n_0 ),
        .O(current_pc[14]));
  LUT6 #(
    .INIT(64'h88888888FF88F8F8)) 
    \reg_pc[15]_i_1 
       (.I0(\reg_pc[31]_i_2_n_0 ),
        .I1(\reg_next_pc_reg_n_0_[15] ),
        .I2(\reg_out_reg_n_0_[15] ),
        .I3(alu_out_q[15]),
        .I4(latched_stalu_reg_0),
        .I5(\reg_pc[31]_i_3_n_0 ),
        .O(current_pc[15]));
  LUT6 #(
    .INIT(64'h88888888FF88F8F8)) 
    \reg_pc[16]_i_1 
       (.I0(\reg_pc[31]_i_2_n_0 ),
        .I1(\reg_next_pc_reg_n_0_[16] ),
        .I2(\reg_out_reg_n_0_[16] ),
        .I3(alu_out_q[16]),
        .I4(latched_stalu_reg_0),
        .I5(\reg_pc[31]_i_3_n_0 ),
        .O(current_pc[16]));
  LUT6 #(
    .INIT(64'h88888888FF88F8F8)) 
    \reg_pc[17]_i_1 
       (.I0(\reg_pc[31]_i_2_n_0 ),
        .I1(\reg_next_pc_reg_n_0_[17] ),
        .I2(\reg_out_reg_n_0_[17] ),
        .I3(alu_out_q[17]),
        .I4(latched_stalu_reg_0),
        .I5(\reg_pc[31]_i_3_n_0 ),
        .O(current_pc[17]));
  LUT6 #(
    .INIT(64'h88888888FF88F8F8)) 
    \reg_pc[18]_i_1 
       (.I0(\reg_pc[31]_i_2_n_0 ),
        .I1(\reg_next_pc_reg_n_0_[18] ),
        .I2(\reg_out_reg_n_0_[18] ),
        .I3(alu_out_q[18]),
        .I4(latched_stalu_reg_0),
        .I5(\reg_pc[31]_i_3_n_0 ),
        .O(current_pc[18]));
  LUT6 #(
    .INIT(64'h88888888FF88F8F8)) 
    \reg_pc[19]_i_1 
       (.I0(\reg_pc[31]_i_2_n_0 ),
        .I1(\reg_next_pc_reg_n_0_[19] ),
        .I2(\reg_out_reg_n_0_[19] ),
        .I3(alu_out_q[19]),
        .I4(latched_stalu_reg_0),
        .I5(\reg_pc[31]_i_3_n_0 ),
        .O(current_pc[19]));
  LUT6 #(
    .INIT(64'h88888888FF88F8F8)) 
    \reg_pc[1]_i_1 
       (.I0(\reg_pc[31]_i_2_n_0 ),
        .I1(\reg_next_pc_reg_n_0_[1] ),
        .I2(\reg_out_reg_n_0_[1] ),
        .I3(alu_out_q[1]),
        .I4(latched_stalu_reg_0),
        .I5(\reg_pc[31]_i_3_n_0 ),
        .O(current_pc[1]));
  LUT6 #(
    .INIT(64'h88888888FF88F8F8)) 
    \reg_pc[20]_i_1 
       (.I0(\reg_pc[31]_i_2_n_0 ),
        .I1(\reg_next_pc_reg_n_0_[20] ),
        .I2(\reg_out_reg_n_0_[20] ),
        .I3(alu_out_q[20]),
        .I4(latched_stalu_reg_0),
        .I5(\reg_pc[31]_i_3_n_0 ),
        .O(current_pc[20]));
  LUT6 #(
    .INIT(64'h88888888FF88F8F8)) 
    \reg_pc[21]_i_1 
       (.I0(\reg_pc[31]_i_2_n_0 ),
        .I1(\reg_next_pc_reg_n_0_[21] ),
        .I2(\reg_out_reg_n_0_[21] ),
        .I3(alu_out_q[21]),
        .I4(latched_stalu_reg_0),
        .I5(\reg_pc[31]_i_3_n_0 ),
        .O(current_pc[21]));
  LUT6 #(
    .INIT(64'h88888888FF88F8F8)) 
    \reg_pc[22]_i_1 
       (.I0(\reg_pc[31]_i_2_n_0 ),
        .I1(\reg_next_pc_reg_n_0_[22] ),
        .I2(\reg_out_reg_n_0_[22] ),
        .I3(alu_out_q[22]),
        .I4(latched_stalu_reg_0),
        .I5(\reg_pc[31]_i_3_n_0 ),
        .O(current_pc[22]));
  LUT6 #(
    .INIT(64'h88888888FF88F8F8)) 
    \reg_pc[23]_i_1 
       (.I0(\reg_pc[31]_i_2_n_0 ),
        .I1(\reg_next_pc_reg_n_0_[23] ),
        .I2(\reg_out_reg_n_0_[23] ),
        .I3(alu_out_q[23]),
        .I4(latched_stalu_reg_0),
        .I5(\reg_pc[31]_i_3_n_0 ),
        .O(current_pc[23]));
  LUT6 #(
    .INIT(64'h88888888FF88F8F8)) 
    \reg_pc[24]_i_1 
       (.I0(\reg_pc[31]_i_2_n_0 ),
        .I1(\reg_next_pc_reg_n_0_[24] ),
        .I2(\reg_out_reg_n_0_[24] ),
        .I3(alu_out_q[24]),
        .I4(latched_stalu_reg_0),
        .I5(\reg_pc[31]_i_3_n_0 ),
        .O(current_pc[24]));
  LUT6 #(
    .INIT(64'h88888888FF88F8F8)) 
    \reg_pc[25]_i_1 
       (.I0(\reg_pc[31]_i_2_n_0 ),
        .I1(\reg_next_pc_reg_n_0_[25] ),
        .I2(\reg_out_reg_n_0_[25] ),
        .I3(alu_out_q[25]),
        .I4(latched_stalu_reg_0),
        .I5(\reg_pc[31]_i_3_n_0 ),
        .O(current_pc[25]));
  LUT6 #(
    .INIT(64'h88888888FF88F8F8)) 
    \reg_pc[26]_i_1 
       (.I0(\reg_pc[31]_i_2_n_0 ),
        .I1(\reg_next_pc_reg_n_0_[26] ),
        .I2(\reg_out_reg_n_0_[26] ),
        .I3(alu_out_q[26]),
        .I4(latched_stalu_reg_0),
        .I5(\reg_pc[31]_i_3_n_0 ),
        .O(current_pc[26]));
  LUT6 #(
    .INIT(64'h88888888FF88F8F8)) 
    \reg_pc[27]_i_1 
       (.I0(\reg_pc[31]_i_2_n_0 ),
        .I1(\reg_next_pc_reg_n_0_[27] ),
        .I2(\reg_out_reg_n_0_[27] ),
        .I3(alu_out_q[27]),
        .I4(latched_stalu_reg_0),
        .I5(\reg_pc[31]_i_3_n_0 ),
        .O(current_pc[27]));
  LUT6 #(
    .INIT(64'h88888888FF88F8F8)) 
    \reg_pc[28]_i_1 
       (.I0(\reg_pc[31]_i_2_n_0 ),
        .I1(\reg_next_pc_reg_n_0_[28] ),
        .I2(\reg_out_reg_n_0_[28] ),
        .I3(alu_out_q[28]),
        .I4(latched_stalu_reg_0),
        .I5(\reg_pc[31]_i_3_n_0 ),
        .O(current_pc[28]));
  LUT6 #(
    .INIT(64'h88888888FF88F8F8)) 
    \reg_pc[29]_i_1 
       (.I0(\reg_pc[31]_i_2_n_0 ),
        .I1(\reg_next_pc_reg_n_0_[29] ),
        .I2(\reg_out_reg_n_0_[29] ),
        .I3(alu_out_q[29]),
        .I4(latched_stalu_reg_0),
        .I5(\reg_pc[31]_i_3_n_0 ),
        .O(current_pc[29]));
  LUT6 #(
    .INIT(64'h88888888FF88F8F8)) 
    \reg_pc[2]_i_1 
       (.I0(\reg_pc[31]_i_2_n_0 ),
        .I1(\reg_next_pc_reg_n_0_[2] ),
        .I2(\reg_out_reg_n_0_[2] ),
        .I3(alu_out_q[2]),
        .I4(latched_stalu_reg_0),
        .I5(\reg_pc[31]_i_3_n_0 ),
        .O(current_pc[2]));
  LUT6 #(
    .INIT(64'h88888888FF88F8F8)) 
    \reg_pc[30]_i_1 
       (.I0(\reg_pc[31]_i_2_n_0 ),
        .I1(\reg_next_pc_reg_n_0_[30] ),
        .I2(\reg_out_reg_n_0_[30] ),
        .I3(alu_out_q[30]),
        .I4(latched_stalu_reg_0),
        .I5(\reg_pc[31]_i_3_n_0 ),
        .O(current_pc[30]));
  LUT6 #(
    .INIT(64'h88888888FF88F8F8)) 
    \reg_pc[31]_i_1 
       (.I0(\reg_pc[31]_i_2_n_0 ),
        .I1(\reg_next_pc_reg_n_0_[31] ),
        .I2(\reg_out_reg_n_0_[31] ),
        .I3(alu_out_q[31]),
        .I4(latched_stalu_reg_0),
        .I5(\reg_pc[31]_i_3_n_0 ),
        .O(current_pc[31]));
  LUT4 #(
    .INIT(16'hF6F7)) 
    \reg_pc[31]_i_2 
       (.I0(latched_branch_reg_0),
        .I1(latched_store_reg_0),
        .I2(\irq_state_reg_n_0_[1] ),
        .I3(\irq_state_reg[0]_0 ),
        .O(\reg_pc[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \reg_pc[31]_i_3 
       (.I0(latched_store_reg_0),
        .I1(latched_branch_reg_0),
        .O(\reg_pc[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h88888888FF88F8F8)) 
    \reg_pc[3]_i_1 
       (.I0(\reg_pc[31]_i_2_n_0 ),
        .I1(\reg_next_pc_reg_n_0_[3] ),
        .I2(\reg_out_reg_n_0_[3] ),
        .I3(alu_out_q[3]),
        .I4(latched_stalu_reg_0),
        .I5(\reg_pc[31]_i_3_n_0 ),
        .O(current_pc[3]));
  LUT6 #(
    .INIT(64'hFAEEAAAAAAAAAAAA)) 
    \reg_pc[4]_i_1 
       (.I0(\reg_pc[4]_i_2_n_0 ),
        .I1(\reg_out_reg_n_0_[4] ),
        .I2(alu_out_q[4]),
        .I3(latched_stalu_reg_0),
        .I4(latched_branch_reg_0),
        .I5(latched_store_reg_0),
        .O(current_pc[4]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'hFFFF8AAA)) 
    \reg_pc[4]_i_2 
       (.I0(\reg_next_pc_reg_n_0_[4] ),
        .I1(\irq_state_reg_n_0_[1] ),
        .I2(latched_branch_reg_0),
        .I3(latched_store_reg_0),
        .I4(\irq_state_reg[0]_0 ),
        .O(\reg_pc[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88888888FF88F8F8)) 
    \reg_pc[5]_i_1 
       (.I0(\reg_pc[31]_i_2_n_0 ),
        .I1(\reg_next_pc_reg_n_0_[5] ),
        .I2(\reg_out_reg_n_0_[5] ),
        .I3(alu_out_q[5]),
        .I4(latched_stalu_reg_0),
        .I5(\reg_pc[31]_i_3_n_0 ),
        .O(current_pc[5]));
  LUT6 #(
    .INIT(64'h88888888FF88F8F8)) 
    \reg_pc[6]_i_1 
       (.I0(\reg_pc[31]_i_2_n_0 ),
        .I1(\reg_next_pc_reg_n_0_[6] ),
        .I2(\reg_out_reg_n_0_[6] ),
        .I3(alu_out_q[6]),
        .I4(latched_stalu_reg_0),
        .I5(\reg_pc[31]_i_3_n_0 ),
        .O(current_pc[6]));
  LUT6 #(
    .INIT(64'h88888888FF88F8F8)) 
    \reg_pc[7]_i_1 
       (.I0(\reg_pc[31]_i_2_n_0 ),
        .I1(\reg_next_pc_reg_n_0_[7] ),
        .I2(\reg_out_reg_n_0_[7] ),
        .I3(alu_out_q[7]),
        .I4(latched_stalu_reg_0),
        .I5(\reg_pc[31]_i_3_n_0 ),
        .O(current_pc[7]));
  LUT6 #(
    .INIT(64'h88888888FF88F8F8)) 
    \reg_pc[8]_i_1 
       (.I0(\reg_pc[31]_i_2_n_0 ),
        .I1(\reg_next_pc_reg_n_0_[8] ),
        .I2(\reg_out_reg_n_0_[8] ),
        .I3(alu_out_q[8]),
        .I4(latched_stalu_reg_0),
        .I5(\reg_pc[31]_i_3_n_0 ),
        .O(current_pc[8]));
  LUT6 #(
    .INIT(64'h88888888FF88F8F8)) 
    \reg_pc[9]_i_1 
       (.I0(\reg_pc[31]_i_2_n_0 ),
        .I1(\reg_next_pc_reg_n_0_[9] ),
        .I2(\reg_out_reg_n_0_[9] ),
        .I3(alu_out_q[9]),
        .I4(latched_stalu_reg_0),
        .I5(\reg_pc[31]_i_3_n_0 ),
        .O(current_pc[9]));
  FDRE \reg_pc_reg[10] 
       (.C(clk),
        .CE(\cpu_state_reg[6]_0 [4]),
        .D(current_pc[10]),
        .Q(\reg_pc_reg_n_0_[10] ),
        .R(trap_i_1_n_0));
  FDRE \reg_pc_reg[11] 
       (.C(clk),
        .CE(\cpu_state_reg[6]_0 [4]),
        .D(current_pc[11]),
        .Q(\reg_pc_reg_n_0_[11] ),
        .R(trap_i_1_n_0));
  FDRE \reg_pc_reg[12] 
       (.C(clk),
        .CE(\cpu_state_reg[6]_0 [4]),
        .D(current_pc[12]),
        .Q(\reg_pc_reg_n_0_[12] ),
        .R(trap_i_1_n_0));
  FDRE \reg_pc_reg[13] 
       (.C(clk),
        .CE(\cpu_state_reg[6]_0 [4]),
        .D(current_pc[13]),
        .Q(\reg_pc_reg_n_0_[13] ),
        .R(trap_i_1_n_0));
  FDRE \reg_pc_reg[14] 
       (.C(clk),
        .CE(\cpu_state_reg[6]_0 [4]),
        .D(current_pc[14]),
        .Q(\reg_pc_reg_n_0_[14] ),
        .R(trap_i_1_n_0));
  FDRE \reg_pc_reg[15] 
       (.C(clk),
        .CE(\cpu_state_reg[6]_0 [4]),
        .D(current_pc[15]),
        .Q(\reg_pc_reg_n_0_[15] ),
        .R(trap_i_1_n_0));
  FDRE \reg_pc_reg[16] 
       (.C(clk),
        .CE(\cpu_state_reg[6]_0 [4]),
        .D(current_pc[16]),
        .Q(\reg_pc_reg_n_0_[16] ),
        .R(trap_i_1_n_0));
  FDRE \reg_pc_reg[17] 
       (.C(clk),
        .CE(\cpu_state_reg[6]_0 [4]),
        .D(current_pc[17]),
        .Q(\reg_pc_reg_n_0_[17] ),
        .R(trap_i_1_n_0));
  FDRE \reg_pc_reg[18] 
       (.C(clk),
        .CE(\cpu_state_reg[6]_0 [4]),
        .D(current_pc[18]),
        .Q(\reg_pc_reg_n_0_[18] ),
        .R(trap_i_1_n_0));
  FDRE \reg_pc_reg[19] 
       (.C(clk),
        .CE(\cpu_state_reg[6]_0 [4]),
        .D(current_pc[19]),
        .Q(\reg_pc_reg_n_0_[19] ),
        .R(trap_i_1_n_0));
  FDRE \reg_pc_reg[1] 
       (.C(clk),
        .CE(\cpu_state_reg[6]_0 [4]),
        .D(current_pc[1]),
        .Q(\reg_pc_reg_n_0_[1] ),
        .R(trap_i_1_n_0));
  FDRE \reg_pc_reg[20] 
       (.C(clk),
        .CE(\cpu_state_reg[6]_0 [4]),
        .D(current_pc[20]),
        .Q(\reg_pc_reg_n_0_[20] ),
        .R(trap_i_1_n_0));
  FDRE \reg_pc_reg[21] 
       (.C(clk),
        .CE(\cpu_state_reg[6]_0 [4]),
        .D(current_pc[21]),
        .Q(\reg_pc_reg_n_0_[21] ),
        .R(trap_i_1_n_0));
  FDRE \reg_pc_reg[22] 
       (.C(clk),
        .CE(\cpu_state_reg[6]_0 [4]),
        .D(current_pc[22]),
        .Q(\reg_pc_reg_n_0_[22] ),
        .R(trap_i_1_n_0));
  FDRE \reg_pc_reg[23] 
       (.C(clk),
        .CE(\cpu_state_reg[6]_0 [4]),
        .D(current_pc[23]),
        .Q(\reg_pc_reg_n_0_[23] ),
        .R(trap_i_1_n_0));
  FDRE \reg_pc_reg[24] 
       (.C(clk),
        .CE(\cpu_state_reg[6]_0 [4]),
        .D(current_pc[24]),
        .Q(\reg_pc_reg_n_0_[24] ),
        .R(trap_i_1_n_0));
  FDRE \reg_pc_reg[25] 
       (.C(clk),
        .CE(\cpu_state_reg[6]_0 [4]),
        .D(current_pc[25]),
        .Q(\reg_pc_reg_n_0_[25] ),
        .R(trap_i_1_n_0));
  FDRE \reg_pc_reg[26] 
       (.C(clk),
        .CE(\cpu_state_reg[6]_0 [4]),
        .D(current_pc[26]),
        .Q(\reg_pc_reg_n_0_[26] ),
        .R(trap_i_1_n_0));
  FDRE \reg_pc_reg[27] 
       (.C(clk),
        .CE(\cpu_state_reg[6]_0 [4]),
        .D(current_pc[27]),
        .Q(\reg_pc_reg_n_0_[27] ),
        .R(trap_i_1_n_0));
  FDRE \reg_pc_reg[28] 
       (.C(clk),
        .CE(\cpu_state_reg[6]_0 [4]),
        .D(current_pc[28]),
        .Q(\reg_pc_reg_n_0_[28] ),
        .R(trap_i_1_n_0));
  FDRE \reg_pc_reg[29] 
       (.C(clk),
        .CE(\cpu_state_reg[6]_0 [4]),
        .D(current_pc[29]),
        .Q(\reg_pc_reg_n_0_[29] ),
        .R(trap_i_1_n_0));
  FDRE \reg_pc_reg[2] 
       (.C(clk),
        .CE(\cpu_state_reg[6]_0 [4]),
        .D(current_pc[2]),
        .Q(\reg_pc_reg_n_0_[2] ),
        .R(trap_i_1_n_0));
  FDRE \reg_pc_reg[30] 
       (.C(clk),
        .CE(\cpu_state_reg[6]_0 [4]),
        .D(current_pc[30]),
        .Q(\reg_pc_reg_n_0_[30] ),
        .R(trap_i_1_n_0));
  FDRE \reg_pc_reg[31] 
       (.C(clk),
        .CE(\cpu_state_reg[6]_0 [4]),
        .D(current_pc[31]),
        .Q(\reg_pc_reg_n_0_[31] ),
        .R(trap_i_1_n_0));
  FDRE \reg_pc_reg[3] 
       (.C(clk),
        .CE(\cpu_state_reg[6]_0 [4]),
        .D(current_pc[3]),
        .Q(\reg_pc_reg_n_0_[3] ),
        .R(trap_i_1_n_0));
  FDRE \reg_pc_reg[4] 
       (.C(clk),
        .CE(\cpu_state_reg[6]_0 [4]),
        .D(current_pc[4]),
        .Q(\reg_pc_reg_n_0_[4] ),
        .R(trap_i_1_n_0));
  FDRE \reg_pc_reg[5] 
       (.C(clk),
        .CE(\cpu_state_reg[6]_0 [4]),
        .D(current_pc[5]),
        .Q(\reg_pc_reg_n_0_[5] ),
        .R(trap_i_1_n_0));
  FDRE \reg_pc_reg[6] 
       (.C(clk),
        .CE(\cpu_state_reg[6]_0 [4]),
        .D(current_pc[6]),
        .Q(\reg_pc_reg_n_0_[6] ),
        .R(trap_i_1_n_0));
  FDRE \reg_pc_reg[7] 
       (.C(clk),
        .CE(\cpu_state_reg[6]_0 [4]),
        .D(current_pc[7]),
        .Q(\reg_pc_reg_n_0_[7] ),
        .R(trap_i_1_n_0));
  FDRE \reg_pc_reg[8] 
       (.C(clk),
        .CE(\cpu_state_reg[6]_0 [4]),
        .D(current_pc[8]),
        .Q(\reg_pc_reg_n_0_[8] ),
        .R(trap_i_1_n_0));
  FDRE \reg_pc_reg[9] 
       (.C(clk),
        .CE(\cpu_state_reg[6]_0 [4]),
        .D(current_pc[9]),
        .Q(\reg_pc_reg_n_0_[9] ),
        .R(trap_i_1_n_0));
  LUT6 #(
    .INIT(64'hFF0EFF0AFF04FF00)) 
    \reg_sh[0]_i_1 
       (.I0(is_slli_srli_srai),
        .I1(\reg_sh[3]_i_2_n_0 ),
        .I2(\cpu_state_reg_n_0_[2] ),
        .I3(\reg_sh[0]_i_2_n_0 ),
        .I4(reg_sh1[0]),
        .I5(\decoded_rs2_reg_n_0_[0] ),
        .O(reg_sh[0]));
  LUT5 #(
    .INIT(32'hFE010000)) 
    \reg_sh[0]_i_2 
       (.I0(\reg_sh_reg_n_0_[4] ),
        .I1(\reg_sh_reg_n_0_[3] ),
        .I2(\reg_sh_reg_n_0_[2] ),
        .I3(\reg_sh_reg_n_0_[0] ),
        .I4(\cpu_state_reg_n_0_[2] ),
        .O(\reg_sh[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF0EFF0AFF04FF00)) 
    \reg_sh[1]_i_1 
       (.I0(is_slli_srli_srai),
        .I1(\reg_sh[3]_i_2_n_0 ),
        .I2(\cpu_state_reg_n_0_[2] ),
        .I3(\reg_sh[1]_i_2_n_0 ),
        .I4(reg_sh1[1]),
        .I5(\decoded_rs2_reg_n_0_[1] ),
        .O(reg_sh[1]));
  LUT6 #(
    .INIT(64'hFF000000FE000100)) 
    \reg_sh[1]_i_2 
       (.I0(\reg_sh_reg_n_0_[2] ),
        .I1(\reg_sh_reg_n_0_[3] ),
        .I2(\reg_sh_reg_n_0_[4] ),
        .I3(\cpu_state_reg_n_0_[2] ),
        .I4(\reg_sh_reg_n_0_[1] ),
        .I5(\reg_sh_reg_n_0_[0] ),
        .O(\reg_sh[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF0EFF0AFF04FF00)) 
    \reg_sh[2]_i_1 
       (.I0(is_slli_srli_srai),
        .I1(\reg_sh[3]_i_2_n_0 ),
        .I2(\cpu_state_reg_n_0_[2] ),
        .I3(\reg_sh[2]_i_2_n_0 ),
        .I4(reg_sh1[2]),
        .I5(\decoded_rs2_reg_n_0_[2] ),
        .O(reg_sh[2]));
  LUT6 #(
    .INIT(64'h0F0F0F0100000000)) 
    \reg_sh[2]_i_2 
       (.I0(\reg_sh_reg_n_0_[0] ),
        .I1(\reg_sh_reg_n_0_[1] ),
        .I2(\reg_sh_reg_n_0_[2] ),
        .I3(\reg_sh_reg_n_0_[3] ),
        .I4(\reg_sh_reg_n_0_[4] ),
        .I5(\cpu_state_reg_n_0_[2] ),
        .O(\reg_sh[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF0EFF0AFF04FF00)) 
    \reg_sh[3]_i_1 
       (.I0(is_slli_srli_srai),
        .I1(\reg_sh[3]_i_2_n_0 ),
        .I2(\cpu_state_reg_n_0_[2] ),
        .I3(\reg_sh[3]_i_3_n_0 ),
        .I4(reg_sh1[3]),
        .I5(\decoded_rs2_reg_n_0_[3] ),
        .O(reg_sh[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \reg_sh[3]_i_2 
       (.I0(\decoded_rs2_reg_n_0_[0] ),
        .I1(\decoded_rs2_reg_n_0_[1] ),
        .I2(\decoded_rs2_reg_n_0_[2] ),
        .I3(\decoded_rs2_reg_n_0_[3] ),
        .I4(decoded_rs2__1),
        .I5(\decoded_rs2_reg_n_0_[4] ),
        .O(\reg_sh[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF00FF00100000000)) 
    \reg_sh[3]_i_3 
       (.I0(\reg_sh_reg_n_0_[0] ),
        .I1(\reg_sh_reg_n_0_[1] ),
        .I2(\reg_sh_reg_n_0_[2] ),
        .I3(\reg_sh_reg_n_0_[3] ),
        .I4(\reg_sh_reg_n_0_[4] ),
        .I5(\cpu_state_reg_n_0_[2] ),
        .O(\reg_sh[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFAAAAABAAAAAA)) 
    \reg_sh[4]_i_1 
       (.I0(\reg_sh[4]_i_2_n_0 ),
        .I1(\reg_sh_reg_n_0_[2] ),
        .I2(\reg_sh_reg_n_0_[3] ),
        .I3(\reg_sh[4]_i_3_n_0 ),
        .I4(\cpu_state_reg_n_0_[2] ),
        .I5(\reg_sh_reg_n_0_[4] ),
        .O(reg_sh[4]));
  LUT5 #(
    .INIT(32'h0E040A00)) 
    \reg_sh[4]_i_2 
       (.I0(is_slli_srli_srai),
        .I1(\reg_sh[3]_i_2_n_0 ),
        .I2(\cpu_state_reg_n_0_[2] ),
        .I3(\decoded_rs2_reg_n_0_[4] ),
        .I4(reg_sh1[4]),
        .O(\reg_sh[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'hFEFEFEFF)) 
    \reg_sh[4]_i_3 
       (.I0(\reg_sh_reg_n_0_[4] ),
        .I1(\reg_sh_reg_n_0_[3] ),
        .I2(\reg_sh_reg_n_0_[2] ),
        .I3(\reg_sh_reg_n_0_[1] ),
        .I4(\reg_sh_reg_n_0_[0] ),
        .O(\reg_sh[4]_i_3_n_0 ));
  FDRE \reg_sh_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(reg_sh[0]),
        .Q(\reg_sh_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \reg_sh_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(reg_sh[1]),
        .Q(\reg_sh_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \reg_sh_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(reg_sh[2]),
        .Q(\reg_sh_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \reg_sh_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(reg_sh[3]),
        .Q(\reg_sh_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \reg_sh_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(reg_sh[4]),
        .Q(\reg_sh_reg_n_0_[4] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hC0000000FFAAAAAA)) 
    \timer[0]_i_1 
       (.I0(\timer[31]_i_4_n_0 ),
        .I1(instr_timer),
        .I2(\cpu_state_reg[6]_0 [3]),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(reg_out1[0]),
        .I5(\timer_reg_n_0_[0] ),
        .O(\timer[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAC000AAAA0000)) 
    \timer[10]_i_1 
       (.I0(\timer[31]_i_4_n_0 ),
        .I1(instr_timer),
        .I2(\cpu_state_reg[6]_0 [3]),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(data0[10]),
        .I5(reg_out1[10]),
        .O(\timer[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAC000AAAA0000)) 
    \timer[11]_i_1 
       (.I0(\timer[31]_i_4_n_0 ),
        .I1(instr_timer),
        .I2(\cpu_state_reg[6]_0 [3]),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(data0[11]),
        .I5(reg_out1[11]),
        .O(\timer[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAC000AAAA0000)) 
    \timer[12]_i_1 
       (.I0(\timer[31]_i_4_n_0 ),
        .I1(instr_timer),
        .I2(\cpu_state_reg[6]_0 [3]),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(data0[12]),
        .I5(reg_out1[12]),
        .O(\timer[12]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[12]_i_3 
       (.I0(\timer_reg_n_0_[12] ),
        .O(\timer[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[12]_i_4 
       (.I0(\timer_reg_n_0_[11] ),
        .O(\timer[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[12]_i_5 
       (.I0(\timer_reg_n_0_[10] ),
        .O(\timer[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[12]_i_6 
       (.I0(\timer_reg_n_0_[9] ),
        .O(\timer[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAC000AAAA0000)) 
    \timer[13]_i_1 
       (.I0(\timer[31]_i_4_n_0 ),
        .I1(instr_timer),
        .I2(\cpu_state_reg[6]_0 [3]),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(data0[13]),
        .I5(reg_out1[13]),
        .O(\timer[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAC000AAAA0000)) 
    \timer[14]_i_1 
       (.I0(\timer[31]_i_4_n_0 ),
        .I1(instr_timer),
        .I2(\cpu_state_reg[6]_0 [3]),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(data0[14]),
        .I5(reg_out1[14]),
        .O(\timer[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAC000AAAA0000)) 
    \timer[15]_i_1 
       (.I0(\timer[31]_i_4_n_0 ),
        .I1(instr_timer),
        .I2(\cpu_state_reg[6]_0 [3]),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(data0[15]),
        .I5(reg_out1[15]),
        .O(\timer[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAC000AAAA0000)) 
    \timer[16]_i_1 
       (.I0(\timer[31]_i_4_n_0 ),
        .I1(instr_timer),
        .I2(\cpu_state_reg[6]_0 [3]),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(data0[16]),
        .I5(reg_out1[16]),
        .O(\timer[16]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[16]_i_3 
       (.I0(\timer_reg_n_0_[16] ),
        .O(\timer[16]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[16]_i_4 
       (.I0(\timer_reg_n_0_[15] ),
        .O(\timer[16]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[16]_i_5 
       (.I0(\timer_reg_n_0_[14] ),
        .O(\timer[16]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[16]_i_6 
       (.I0(\timer_reg_n_0_[13] ),
        .O(\timer[16]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAC000AAAA0000)) 
    \timer[17]_i_1 
       (.I0(\timer[31]_i_4_n_0 ),
        .I1(instr_timer),
        .I2(\cpu_state_reg[6]_0 [3]),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(data0[17]),
        .I5(reg_out1[17]),
        .O(\timer[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAC000AAAA0000)) 
    \timer[18]_i_1 
       (.I0(\timer[31]_i_4_n_0 ),
        .I1(instr_timer),
        .I2(\cpu_state_reg[6]_0 [3]),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(data0[18]),
        .I5(reg_out1[18]),
        .O(\timer[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAC000AAAA0000)) 
    \timer[19]_i_1 
       (.I0(\timer[31]_i_4_n_0 ),
        .I1(instr_timer),
        .I2(\cpu_state_reg[6]_0 [3]),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(data0[19]),
        .I5(reg_out1[19]),
        .O(\timer[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAC000AAAA0000)) 
    \timer[1]_i_1 
       (.I0(\timer[31]_i_4_n_0 ),
        .I1(instr_timer),
        .I2(\cpu_state_reg[6]_0 [3]),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(data0[1]),
        .I5(reg_out1[1]),
        .O(\timer[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAC000AAAA0000)) 
    \timer[20]_i_1 
       (.I0(\timer[31]_i_4_n_0 ),
        .I1(instr_timer),
        .I2(\cpu_state_reg[6]_0 [3]),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(data0[20]),
        .I5(reg_out1[20]),
        .O(\timer[20]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[20]_i_3 
       (.I0(\timer_reg_n_0_[20] ),
        .O(\timer[20]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[20]_i_4 
       (.I0(\timer_reg_n_0_[19] ),
        .O(\timer[20]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[20]_i_5 
       (.I0(\timer_reg_n_0_[18] ),
        .O(\timer[20]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[20]_i_6 
       (.I0(\timer_reg_n_0_[17] ),
        .O(\timer[20]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAC000AAAA0000)) 
    \timer[21]_i_1 
       (.I0(\timer[31]_i_4_n_0 ),
        .I1(instr_timer),
        .I2(\cpu_state_reg[6]_0 [3]),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(data0[21]),
        .I5(reg_out1[21]),
        .O(\timer[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAC000AAAA0000)) 
    \timer[22]_i_1 
       (.I0(\timer[31]_i_4_n_0 ),
        .I1(instr_timer),
        .I2(\cpu_state_reg[6]_0 [3]),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(data0[22]),
        .I5(reg_out1[22]),
        .O(\timer[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAC000AAAA0000)) 
    \timer[23]_i_1 
       (.I0(\timer[31]_i_4_n_0 ),
        .I1(instr_timer),
        .I2(\cpu_state_reg[6]_0 [3]),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(data0[23]),
        .I5(reg_out1[23]),
        .O(\timer[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAC000AAAA0000)) 
    \timer[24]_i_1 
       (.I0(\timer[31]_i_4_n_0 ),
        .I1(instr_timer),
        .I2(\cpu_state_reg[6]_0 [3]),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(data0[24]),
        .I5(reg_out1[24]),
        .O(\timer[24]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[24]_i_3 
       (.I0(\timer_reg_n_0_[24] ),
        .O(\timer[24]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[24]_i_4 
       (.I0(\timer_reg_n_0_[23] ),
        .O(\timer[24]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[24]_i_5 
       (.I0(\timer_reg_n_0_[22] ),
        .O(\timer[24]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[24]_i_6 
       (.I0(\timer_reg_n_0_[21] ),
        .O(\timer[24]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAC000AAAA0000)) 
    \timer[25]_i_1 
       (.I0(\timer[31]_i_4_n_0 ),
        .I1(instr_timer),
        .I2(\cpu_state_reg[6]_0 [3]),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(data0[25]),
        .I5(reg_out1[25]),
        .O(\timer[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAC000AAAA0000)) 
    \timer[26]_i_1 
       (.I0(\timer[31]_i_4_n_0 ),
        .I1(instr_timer),
        .I2(\cpu_state_reg[6]_0 [3]),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(data0[26]),
        .I5(reg_out1[26]),
        .O(\timer[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAC000AAAA0000)) 
    \timer[27]_i_1 
       (.I0(\timer[31]_i_4_n_0 ),
        .I1(instr_timer),
        .I2(\cpu_state_reg[6]_0 [3]),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(data0[27]),
        .I5(reg_out1[27]),
        .O(\timer[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAC000AAAA0000)) 
    \timer[28]_i_1 
       (.I0(\timer[31]_i_4_n_0 ),
        .I1(instr_timer),
        .I2(\cpu_state_reg[6]_0 [3]),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(data0[28]),
        .I5(reg_out1[28]),
        .O(\timer[28]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[28]_i_3 
       (.I0(\timer_reg_n_0_[28] ),
        .O(\timer[28]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[28]_i_4 
       (.I0(\timer_reg_n_0_[27] ),
        .O(\timer[28]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[28]_i_5 
       (.I0(\timer_reg_n_0_[26] ),
        .O(\timer[28]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[28]_i_6 
       (.I0(\timer_reg_n_0_[25] ),
        .O(\timer[28]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAC000AAAA0000)) 
    \timer[29]_i_1 
       (.I0(\timer[31]_i_4_n_0 ),
        .I1(instr_timer),
        .I2(\cpu_state_reg[6]_0 [3]),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(data0[29]),
        .I5(reg_out1[29]),
        .O(\timer[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAC000AAAA0000)) 
    \timer[2]_i_1 
       (.I0(\timer[31]_i_4_n_0 ),
        .I1(instr_timer),
        .I2(\cpu_state_reg[6]_0 [3]),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(data0[2]),
        .I5(reg_out1[2]),
        .O(\timer[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAC000AAAA0000)) 
    \timer[30]_i_1 
       (.I0(\timer[31]_i_4_n_0 ),
        .I1(instr_timer),
        .I2(\cpu_state_reg[6]_0 [3]),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(data0[30]),
        .I5(reg_out1[30]),
        .O(\timer[30]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hF8)) 
    \timer[31]_i_1 
       (.I0(instr_timer),
        .I1(\cpu_state_reg[6]_0 [3]),
        .I2(\timer[31]_i_3_n_0 ),
        .O(timer));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \timer[31]_i_10 
       (.I0(instr_retirq),
        .I1(instr_maskirq),
        .I2(\cpu_state_reg[6]_0 [3]),
        .O(\timer[31]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[31]_i_11 
       (.I0(\timer_reg_n_0_[31] ),
        .O(\timer[31]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[31]_i_12 
       (.I0(\timer_reg_n_0_[30] ),
        .O(\timer[31]_i_12_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[31]_i_13 
       (.I0(\timer_reg_n_0_[29] ),
        .O(\timer[31]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \timer[31]_i_14 
       (.I0(\timer_reg_n_0_[18] ),
        .I1(\timer_reg_n_0_[19] ),
        .I2(\timer_reg_n_0_[20] ),
        .I3(\timer_reg_n_0_[21] ),
        .I4(\timer_reg_n_0_[31] ),
        .I5(\timer_reg_n_0_[30] ),
        .O(\timer[31]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \timer[31]_i_15 
       (.I0(\timer_reg_n_0_[3] ),
        .I1(\timer_reg_n_0_[2] ),
        .I2(\timer_reg_n_0_[1] ),
        .I3(\timer_reg_n_0_[0] ),
        .O(\timer[31]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAC000AAAA0000)) 
    \timer[31]_i_2 
       (.I0(\timer[31]_i_4_n_0 ),
        .I1(instr_timer),
        .I2(\cpu_state_reg[6]_0 [3]),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(data0[31]),
        .I5(reg_out1[31]),
        .O(\timer[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \timer[31]_i_3 
       (.I0(\timer[31]_i_7_n_0 ),
        .I1(\timer[31]_i_8_n_0 ),
        .I2(\timer_reg_n_0_[25] ),
        .I3(\timer_reg_n_0_[24] ),
        .I4(\timer_reg_n_0_[23] ),
        .I5(\timer_reg_n_0_[22] ),
        .O(\timer[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \timer[31]_i_4 
       (.I0(\timer[31]_i_9_n_0 ),
        .I1(instr_trap),
        .I2(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I3(is_lb_lh_lw_lbu_lhu),
        .I4(is_slli_srli_srai),
        .I5(\timer[31]_i_10_n_0 ),
        .O(\timer[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \timer[31]_i_5 
       (.I0(\decoded_rs1_reg_n_0_[0] ),
        .I1(\decoded_rs1_reg_n_0_[1] ),
        .I2(\decoded_rs1_reg_n_0_[2] ),
        .I3(\decoded_rs1_reg_n_0_[3] ),
        .I4(\decoded_rs1_reg_n_0_[5] ),
        .I5(\decoded_rs1_reg_n_0_[4] ),
        .O(\timer[31]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \timer[31]_i_7 
       (.I0(\timer[31]_i_14_n_0 ),
        .I1(\timer_reg_n_0_[26] ),
        .I2(\timer_reg_n_0_[27] ),
        .I3(\timer_reg_n_0_[28] ),
        .I4(\timer_reg_n_0_[29] ),
        .O(\timer[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \timer[31]_i_8 
       (.I0(\timer_reg_n_0_[17] ),
        .I1(\timer_reg_n_0_[16] ),
        .I2(\irq_pending[0]_i_5_n_0 ),
        .I3(\timer[31]_i_15_n_0 ),
        .I4(\irq_pending[0]_i_8_n_0 ),
        .I5(\irq_pending[0]_i_7_n_0 ),
        .O(\timer[31]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \timer[31]_i_9 
       (.I0(instr_getq),
        .I1(instr_setq),
        .I2(instr_timer),
        .I3(is_lui_auipc_jal),
        .I4(is_rdcycle_rdcycleh_rdinstr_rdinstrh),
        .O(\timer[31]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAC000AAAA0000)) 
    \timer[3]_i_1 
       (.I0(\timer[31]_i_4_n_0 ),
        .I1(instr_timer),
        .I2(\cpu_state_reg[6]_0 [3]),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(data0[3]),
        .I5(reg_out1[3]),
        .O(\timer[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAC000AAAA0000)) 
    \timer[4]_i_1 
       (.I0(\timer[31]_i_4_n_0 ),
        .I1(instr_timer),
        .I2(\cpu_state_reg[6]_0 [3]),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(data0[4]),
        .I5(reg_out1[4]),
        .O(\timer[4]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[4]_i_3 
       (.I0(\timer_reg_n_0_[4] ),
        .O(\timer[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[4]_i_4 
       (.I0(\timer_reg_n_0_[3] ),
        .O(\timer[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[4]_i_5 
       (.I0(\timer_reg_n_0_[2] ),
        .O(\timer[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[4]_i_6 
       (.I0(\timer_reg_n_0_[1] ),
        .O(\timer[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAC000AAAA0000)) 
    \timer[5]_i_1 
       (.I0(\timer[31]_i_4_n_0 ),
        .I1(instr_timer),
        .I2(\cpu_state_reg[6]_0 [3]),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(data0[5]),
        .I5(reg_out1[5]),
        .O(\timer[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAC000AAAA0000)) 
    \timer[6]_i_1 
       (.I0(\timer[31]_i_4_n_0 ),
        .I1(instr_timer),
        .I2(\cpu_state_reg[6]_0 [3]),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(data0[6]),
        .I5(reg_out1[6]),
        .O(\timer[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAC000AAAA0000)) 
    \timer[7]_i_1 
       (.I0(\timer[31]_i_4_n_0 ),
        .I1(instr_timer),
        .I2(\cpu_state_reg[6]_0 [3]),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(data0[7]),
        .I5(reg_out1[7]),
        .O(\timer[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAC000AAAA0000)) 
    \timer[8]_i_1 
       (.I0(\timer[31]_i_4_n_0 ),
        .I1(instr_timer),
        .I2(\cpu_state_reg[6]_0 [3]),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(data0[8]),
        .I5(reg_out1[8]),
        .O(\timer[8]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[8]_i_3 
       (.I0(\timer_reg_n_0_[8] ),
        .O(\timer[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[8]_i_4 
       (.I0(\timer_reg_n_0_[7] ),
        .O(\timer[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[8]_i_5 
       (.I0(\timer_reg_n_0_[6] ),
        .O(\timer[8]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[8]_i_6 
       (.I0(\timer_reg_n_0_[5] ),
        .O(\timer[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAC000AAAA0000)) 
    \timer[9]_i_1 
       (.I0(\timer[31]_i_4_n_0 ),
        .I1(instr_timer),
        .I2(\cpu_state_reg[6]_0 [3]),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(data0[9]),
        .I5(reg_out1[9]),
        .O(\timer[9]_i_1_n_0 ));
  FDRE \timer_reg[0] 
       (.C(clk),
        .CE(timer),
        .D(\timer[0]_i_1_n_0 ),
        .Q(\timer_reg_n_0_[0] ),
        .R(trap_i_1_n_0));
  FDRE \timer_reg[10] 
       (.C(clk),
        .CE(timer),
        .D(\timer[10]_i_1_n_0 ),
        .Q(\timer_reg_n_0_[10] ),
        .R(trap_i_1_n_0));
  FDRE \timer_reg[11] 
       (.C(clk),
        .CE(timer),
        .D(\timer[11]_i_1_n_0 ),
        .Q(\timer_reg_n_0_[11] ),
        .R(trap_i_1_n_0));
  FDRE \timer_reg[12] 
       (.C(clk),
        .CE(timer),
        .D(\timer[12]_i_1_n_0 ),
        .Q(\timer_reg_n_0_[12] ),
        .R(trap_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \timer_reg[12]_i_2 
       (.CI(\timer_reg[8]_i_2_n_0 ),
        .CO({\timer_reg[12]_i_2_n_0 ,\timer_reg[12]_i_2_n_1 ,\timer_reg[12]_i_2_n_2 ,\timer_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\timer_reg_n_0_[12] ,\timer_reg_n_0_[11] ,\timer_reg_n_0_[10] ,\timer_reg_n_0_[9] }),
        .O(data0[12:9]),
        .S({\timer[12]_i_3_n_0 ,\timer[12]_i_4_n_0 ,\timer[12]_i_5_n_0 ,\timer[12]_i_6_n_0 }));
  FDRE \timer_reg[13] 
       (.C(clk),
        .CE(timer),
        .D(\timer[13]_i_1_n_0 ),
        .Q(\timer_reg_n_0_[13] ),
        .R(trap_i_1_n_0));
  FDRE \timer_reg[14] 
       (.C(clk),
        .CE(timer),
        .D(\timer[14]_i_1_n_0 ),
        .Q(\timer_reg_n_0_[14] ),
        .R(trap_i_1_n_0));
  FDRE \timer_reg[15] 
       (.C(clk),
        .CE(timer),
        .D(\timer[15]_i_1_n_0 ),
        .Q(\timer_reg_n_0_[15] ),
        .R(trap_i_1_n_0));
  FDRE \timer_reg[16] 
       (.C(clk),
        .CE(timer),
        .D(\timer[16]_i_1_n_0 ),
        .Q(\timer_reg_n_0_[16] ),
        .R(trap_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \timer_reg[16]_i_2 
       (.CI(\timer_reg[12]_i_2_n_0 ),
        .CO({\timer_reg[16]_i_2_n_0 ,\timer_reg[16]_i_2_n_1 ,\timer_reg[16]_i_2_n_2 ,\timer_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\timer_reg_n_0_[16] ,\timer_reg_n_0_[15] ,\timer_reg_n_0_[14] ,\timer_reg_n_0_[13] }),
        .O(data0[16:13]),
        .S({\timer[16]_i_3_n_0 ,\timer[16]_i_4_n_0 ,\timer[16]_i_5_n_0 ,\timer[16]_i_6_n_0 }));
  FDRE \timer_reg[17] 
       (.C(clk),
        .CE(timer),
        .D(\timer[17]_i_1_n_0 ),
        .Q(\timer_reg_n_0_[17] ),
        .R(trap_i_1_n_0));
  FDRE \timer_reg[18] 
       (.C(clk),
        .CE(timer),
        .D(\timer[18]_i_1_n_0 ),
        .Q(\timer_reg_n_0_[18] ),
        .R(trap_i_1_n_0));
  FDRE \timer_reg[19] 
       (.C(clk),
        .CE(timer),
        .D(\timer[19]_i_1_n_0 ),
        .Q(\timer_reg_n_0_[19] ),
        .R(trap_i_1_n_0));
  FDRE \timer_reg[1] 
       (.C(clk),
        .CE(timer),
        .D(\timer[1]_i_1_n_0 ),
        .Q(\timer_reg_n_0_[1] ),
        .R(trap_i_1_n_0));
  FDRE \timer_reg[20] 
       (.C(clk),
        .CE(timer),
        .D(\timer[20]_i_1_n_0 ),
        .Q(\timer_reg_n_0_[20] ),
        .R(trap_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \timer_reg[20]_i_2 
       (.CI(\timer_reg[16]_i_2_n_0 ),
        .CO({\timer_reg[20]_i_2_n_0 ,\timer_reg[20]_i_2_n_1 ,\timer_reg[20]_i_2_n_2 ,\timer_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\timer_reg_n_0_[20] ,\timer_reg_n_0_[19] ,\timer_reg_n_0_[18] ,\timer_reg_n_0_[17] }),
        .O(data0[20:17]),
        .S({\timer[20]_i_3_n_0 ,\timer[20]_i_4_n_0 ,\timer[20]_i_5_n_0 ,\timer[20]_i_6_n_0 }));
  FDRE \timer_reg[21] 
       (.C(clk),
        .CE(timer),
        .D(\timer[21]_i_1_n_0 ),
        .Q(\timer_reg_n_0_[21] ),
        .R(trap_i_1_n_0));
  FDRE \timer_reg[22] 
       (.C(clk),
        .CE(timer),
        .D(\timer[22]_i_1_n_0 ),
        .Q(\timer_reg_n_0_[22] ),
        .R(trap_i_1_n_0));
  FDRE \timer_reg[23] 
       (.C(clk),
        .CE(timer),
        .D(\timer[23]_i_1_n_0 ),
        .Q(\timer_reg_n_0_[23] ),
        .R(trap_i_1_n_0));
  FDRE \timer_reg[24] 
       (.C(clk),
        .CE(timer),
        .D(\timer[24]_i_1_n_0 ),
        .Q(\timer_reg_n_0_[24] ),
        .R(trap_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \timer_reg[24]_i_2 
       (.CI(\timer_reg[20]_i_2_n_0 ),
        .CO({\timer_reg[24]_i_2_n_0 ,\timer_reg[24]_i_2_n_1 ,\timer_reg[24]_i_2_n_2 ,\timer_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\timer_reg_n_0_[24] ,\timer_reg_n_0_[23] ,\timer_reg_n_0_[22] ,\timer_reg_n_0_[21] }),
        .O(data0[24:21]),
        .S({\timer[24]_i_3_n_0 ,\timer[24]_i_4_n_0 ,\timer[24]_i_5_n_0 ,\timer[24]_i_6_n_0 }));
  FDRE \timer_reg[25] 
       (.C(clk),
        .CE(timer),
        .D(\timer[25]_i_1_n_0 ),
        .Q(\timer_reg_n_0_[25] ),
        .R(trap_i_1_n_0));
  FDRE \timer_reg[26] 
       (.C(clk),
        .CE(timer),
        .D(\timer[26]_i_1_n_0 ),
        .Q(\timer_reg_n_0_[26] ),
        .R(trap_i_1_n_0));
  FDRE \timer_reg[27] 
       (.C(clk),
        .CE(timer),
        .D(\timer[27]_i_1_n_0 ),
        .Q(\timer_reg_n_0_[27] ),
        .R(trap_i_1_n_0));
  FDRE \timer_reg[28] 
       (.C(clk),
        .CE(timer),
        .D(\timer[28]_i_1_n_0 ),
        .Q(\timer_reg_n_0_[28] ),
        .R(trap_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \timer_reg[28]_i_2 
       (.CI(\timer_reg[24]_i_2_n_0 ),
        .CO({\timer_reg[28]_i_2_n_0 ,\timer_reg[28]_i_2_n_1 ,\timer_reg[28]_i_2_n_2 ,\timer_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\timer_reg_n_0_[28] ,\timer_reg_n_0_[27] ,\timer_reg_n_0_[26] ,\timer_reg_n_0_[25] }),
        .O(data0[28:25]),
        .S({\timer[28]_i_3_n_0 ,\timer[28]_i_4_n_0 ,\timer[28]_i_5_n_0 ,\timer[28]_i_6_n_0 }));
  FDRE \timer_reg[29] 
       (.C(clk),
        .CE(timer),
        .D(\timer[29]_i_1_n_0 ),
        .Q(\timer_reg_n_0_[29] ),
        .R(trap_i_1_n_0));
  FDRE \timer_reg[2] 
       (.C(clk),
        .CE(timer),
        .D(\timer[2]_i_1_n_0 ),
        .Q(\timer_reg_n_0_[2] ),
        .R(trap_i_1_n_0));
  FDRE \timer_reg[30] 
       (.C(clk),
        .CE(timer),
        .D(\timer[30]_i_1_n_0 ),
        .Q(\timer_reg_n_0_[30] ),
        .R(trap_i_1_n_0));
  FDRE \timer_reg[31] 
       (.C(clk),
        .CE(timer),
        .D(\timer[31]_i_2_n_0 ),
        .Q(\timer_reg_n_0_[31] ),
        .R(trap_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \timer_reg[31]_i_6 
       (.CI(\timer_reg[28]_i_2_n_0 ),
        .CO({\NLW_timer_reg[31]_i_6_CO_UNCONNECTED [3:2],\timer_reg[31]_i_6_n_2 ,\timer_reg[31]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\timer_reg_n_0_[30] ,\timer_reg_n_0_[29] }),
        .O({\NLW_timer_reg[31]_i_6_O_UNCONNECTED [3],data0[31:29]}),
        .S({1'b0,\timer[31]_i_11_n_0 ,\timer[31]_i_12_n_0 ,\timer[31]_i_13_n_0 }));
  FDRE \timer_reg[3] 
       (.C(clk),
        .CE(timer),
        .D(\timer[3]_i_1_n_0 ),
        .Q(\timer_reg_n_0_[3] ),
        .R(trap_i_1_n_0));
  FDRE \timer_reg[4] 
       (.C(clk),
        .CE(timer),
        .D(\timer[4]_i_1_n_0 ),
        .Q(\timer_reg_n_0_[4] ),
        .R(trap_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \timer_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\timer_reg[4]_i_2_n_0 ,\timer_reg[4]_i_2_n_1 ,\timer_reg[4]_i_2_n_2 ,\timer_reg[4]_i_2_n_3 }),
        .CYINIT(\timer_reg_n_0_[0] ),
        .DI({\timer_reg_n_0_[4] ,\timer_reg_n_0_[3] ,\timer_reg_n_0_[2] ,\timer_reg_n_0_[1] }),
        .O(data0[4:1]),
        .S({\timer[4]_i_3_n_0 ,\timer[4]_i_4_n_0 ,\timer[4]_i_5_n_0 ,\timer[4]_i_6_n_0 }));
  FDRE \timer_reg[5] 
       (.C(clk),
        .CE(timer),
        .D(\timer[5]_i_1_n_0 ),
        .Q(\timer_reg_n_0_[5] ),
        .R(trap_i_1_n_0));
  FDRE \timer_reg[6] 
       (.C(clk),
        .CE(timer),
        .D(\timer[6]_i_1_n_0 ),
        .Q(\timer_reg_n_0_[6] ),
        .R(trap_i_1_n_0));
  FDRE \timer_reg[7] 
       (.C(clk),
        .CE(timer),
        .D(\timer[7]_i_1_n_0 ),
        .Q(\timer_reg_n_0_[7] ),
        .R(trap_i_1_n_0));
  FDRE \timer_reg[8] 
       (.C(clk),
        .CE(timer),
        .D(\timer[8]_i_1_n_0 ),
        .Q(\timer_reg_n_0_[8] ),
        .R(trap_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \timer_reg[8]_i_2 
       (.CI(\timer_reg[4]_i_2_n_0 ),
        .CO({\timer_reg[8]_i_2_n_0 ,\timer_reg[8]_i_2_n_1 ,\timer_reg[8]_i_2_n_2 ,\timer_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\timer_reg_n_0_[8] ,\timer_reg_n_0_[7] ,\timer_reg_n_0_[6] ,\timer_reg_n_0_[5] }),
        .O(data0[8:5]),
        .S({\timer[8]_i_3_n_0 ,\timer[8]_i_4_n_0 ,\timer[8]_i_5_n_0 ,\timer[8]_i_6_n_0 }));
  FDRE \timer_reg[9] 
       (.C(clk),
        .CE(timer),
        .D(\timer[9]_i_1_n_0 ),
        .Q(\timer_reg_n_0_[9] ),
        .R(trap_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    trap_i_1
       (.I0(resetn),
        .O(trap_i_1_n_0));
  FDRE trap_reg
       (.C(clk),
        .CE(1'b1),
        .D(\cpu_state_reg_n_0_[7] ),
        .Q(trap_reg_0),
        .R(trap_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hA8FFA800)) 
    xfer_done_i_1
       (.I0(mem_valid),
        .I1(mem_axi_rvalid),
        .I2(mem_axi_bvalid),
        .I3(resetn),
        .I4(xfer_done),
        .O(mem_valid_reg_0));
endmodule

(* ORIG_REF_NAME = "picorv32_axi" *) 
module icyradio_picorv32_0_0_picorv32_axi
   (mem_axi_rready,
    mem_wstrb,
    mem_axi_bready,
    mem_axi_awvalid,
    mem_axi_wvalid,
    mem_axi_arvalid,
    trap,
    mem_axi_awaddr,
    mem_axi_wdata,
    eoi,
    mem_axi_arprot,
    irq,
    mem_axi_awready,
    resetn,
    mem_axi_rvalid,
    mem_axi_bvalid,
    mem_axi_arready,
    mem_axi_wready,
    clk,
    mem_axi_rdata);
  output mem_axi_rready;
  output [3:0]mem_wstrb;
  output mem_axi_bready;
  output mem_axi_awvalid;
  output mem_axi_wvalid;
  output mem_axi_arvalid;
  output trap;
  output [29:0]mem_axi_awaddr;
  output [31:0]mem_axi_wdata;
  output [31:0]eoi;
  output [0:0]mem_axi_arprot;
  input [31:0]irq;
  input mem_axi_awready;
  input resetn;
  input mem_axi_rvalid;
  input mem_axi_bvalid;
  input mem_axi_arready;
  input mem_axi_wready;
  input clk;
  input [31:0]mem_axi_rdata;

  wire ack_awvalid;
  wire alu_out_0;
  wire axi_adapter_n_2;
  wire axi_adapter_n_3;
  wire clear_prefetched_high_word;
  wire clk;
  wire compressed_instr;
  wire decoder_trigger1;
  wire [31:0]eoi;
  wire instr_add;
  wire instr_addi;
  wire instr_jalr;
  wire instr_lb;
  wire instr_lh;
  wire instr_lui0;
  wire instr_retirq;
  wire instr_sub;
  wire [31:0]irq;
  wire irq_active_i_1_n_0;
  wire is_beq_bne_blt_bge_bltu_bgeu;
  wire is_beq_bne_blt_bge_bltu_bgeu_i_1_n_0;
  wire is_lbu_lhu_lw;
  wire is_lui_auipc_jal_jalr_addi_add_sub0;
  wire is_lui_auipc_jal_jalr_addi_add_sub_i_1_n_0;
  wire latched_branch;
  wire latched_branch_i_1_n_0;
  wire latched_compr_i_1_n_0;
  wire latched_is_lb_i_1_n_0;
  wire latched_is_lh_i_1_n_0;
  wire latched_is_lu_i_1_n_0;
  wire latched_stalu_i_1_n_0;
  wire latched_store;
  wire latched_store_i_1_n_0;
  wire [0:0]mem_axi_arprot;
  wire mem_axi_arready;
  wire mem_axi_arvalid;
  wire [29:0]mem_axi_awaddr;
  wire mem_axi_awready;
  wire mem_axi_awvalid;
  wire mem_axi_bready;
  wire mem_axi_bvalid;
  wire [31:0]mem_axi_rdata;
  wire mem_axi_rready;
  wire mem_axi_rvalid;
  wire [31:0]mem_axi_wdata;
  wire mem_axi_wready;
  wire mem_axi_wvalid;
  wire mem_do_rdata;
  wire mem_do_rdata_i_1_n_0;
  wire mem_do_wdata;
  wire mem_do_wdata_i_1_n_0;
  wire mem_done;
  wire mem_instr_i_1_n_0;
  wire mem_la_firstword1;
  wire mem_valid;
  wire mem_valid_i_2_n_0;
  wire [3:0]mem_wstrb;
  wire p_3_out0;
  wire [2:1]p_5_in;
  wire picorv32_core_n_12;
  wire picorv32_core_n_144;
  wire picorv32_core_n_145;
  wire picorv32_core_n_146;
  wire picorv32_core_n_147;
  wire picorv32_core_n_148;
  wire picorv32_core_n_149;
  wire picorv32_core_n_151;
  wire picorv32_core_n_153;
  wire picorv32_core_n_154;
  wire picorv32_core_n_155;
  wire picorv32_core_n_156;
  wire picorv32_core_n_157;
  wire picorv32_core_n_158;
  wire picorv32_core_n_16;
  wire picorv32_core_n_161;
  wire picorv32_core_n_163;
  wire picorv32_core_n_17;
  wire picorv32_core_n_18;
  wire picorv32_core_n_21;
  wire picorv32_core_n_22;
  wire picorv32_core_n_23;
  wire picorv32_core_n_24;
  wire picorv32_core_n_25;
  wire picorv32_core_n_27;
  wire picorv32_core_n_3;
  wire picorv32_core_n_32;
  wire picorv32_core_n_39;
  wire picorv32_core_n_40;
  wire picorv32_core_n_41;
  wire picorv32_core_n_42;
  wire picorv32_core_n_47;
  wire picorv32_core_n_48;
  wire picorv32_core_n_49;
  wire prefetched_high_word_i_1_n_0;
  wire resetn;
  wire trap;
  wire xfer_done;

  icyradio_picorv32_0_0_picorv32_axi_adapter axi_adapter
       (.ack_arvalid_reg_0(axi_adapter_n_3),
        .ack_awvalid(ack_awvalid),
        .ack_wvalid_reg_0(axi_adapter_n_2),
        .clk(clk),
        .mem_axi_arready(mem_axi_arready),
        .mem_axi_arvalid(mem_axi_arvalid),
        .mem_axi_awready(mem_axi_awready),
        .mem_axi_bready(mem_axi_bready),
        .mem_axi_wready(mem_axi_wready),
        .mem_valid(mem_valid),
        .resetn(resetn),
        .xfer_done(xfer_done),
        .xfer_done_reg_0(picorv32_core_n_47));
  LUT5 #(
    .INIT(32'hCFFFC888)) 
    irq_active_i_1
       (.I0(picorv32_core_n_48),
        .I1(p_3_out0),
        .I2(instr_retirq),
        .I3(picorv32_core_n_39),
        .I4(picorv32_core_n_12),
        .O(irq_active_i_1_n_0));
  LUT6 #(
    .INIT(64'hFF80FFFFFF800000)) 
    is_beq_bne_blt_bge_bltu_bgeu_i_1
       (.I0(p_5_in[1]),
        .I1(picorv32_core_n_32),
        .I2(p_5_in[2]),
        .I3(picorv32_core_n_153),
        .I4(instr_lui0),
        .I5(is_beq_bne_blt_bge_bltu_bgeu),
        .O(is_beq_bne_blt_bge_bltu_bgeu_i_1_n_0));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
    is_lui_auipc_jal_jalr_addi_add_sub_i_1
       (.I0(instr_jalr),
        .I1(picorv32_core_n_3),
        .I2(instr_addi),
        .I3(instr_add),
        .I4(instr_sub),
        .I5(is_lui_auipc_jal_jalr_addi_add_sub0),
        .O(is_lui_auipc_jal_jalr_addi_add_sub_i_1_n_0));
  LUT6 #(
    .INIT(64'hBBFBFFFFBBFB0000)) 
    latched_branch_i_1
       (.I0(picorv32_core_n_156),
        .I1(picorv32_core_n_151),
        .I2(picorv32_core_n_39),
        .I3(picorv32_core_n_40),
        .I4(latched_branch),
        .I5(picorv32_core_n_16),
        .O(latched_branch_i_1_n_0));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    latched_compr_i_1
       (.I0(compressed_instr),
        .I1(picorv32_core_n_49),
        .I2(p_3_out0),
        .I3(resetn),
        .I4(picorv32_core_n_18),
        .O(latched_compr_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000FFBF00000080)) 
    latched_is_lb_i_1
       (.I0(instr_lb),
        .I1(decoder_trigger1),
        .I2(picorv32_core_n_42),
        .I3(mem_do_rdata),
        .I4(p_3_out0),
        .I5(picorv32_core_n_22),
        .O(latched_is_lb_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000FFBF00000080)) 
    latched_is_lh_i_1
       (.I0(instr_lh),
        .I1(decoder_trigger1),
        .I2(picorv32_core_n_42),
        .I3(mem_do_rdata),
        .I4(p_3_out0),
        .I5(picorv32_core_n_23),
        .O(latched_is_lh_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000FFBF00000080)) 
    latched_is_lu_i_1
       (.I0(is_lbu_lhu_lw),
        .I1(decoder_trigger1),
        .I2(picorv32_core_n_42),
        .I3(mem_do_rdata),
        .I4(p_3_out0),
        .I5(picorv32_core_n_24),
        .O(latched_is_lu_i_1_n_0));
  LUT4 #(
    .INIT(16'h0F04)) 
    latched_stalu_i_1
       (.I0(is_beq_bne_blt_bge_bltu_bgeu),
        .I1(picorv32_core_n_40),
        .I2(p_3_out0),
        .I3(picorv32_core_n_21),
        .O(latched_stalu_i_1_n_0));
  LUT6 #(
    .INIT(64'hFEEEFFFFFEEE0000)) 
    latched_store_i_1
       (.I0(picorv32_core_n_163),
        .I1(picorv32_core_n_155),
        .I2(alu_out_0),
        .I3(picorv32_core_n_40),
        .I4(latched_store),
        .I5(picorv32_core_n_17),
        .O(latched_store_i_1_n_0));
  LUT5 #(
    .INIT(32'hC0F0C040)) 
    mem_do_rdata_i_1
       (.I0(picorv32_core_n_25),
        .I1(picorv32_core_n_158),
        .I2(resetn),
        .I3(mem_done),
        .I4(mem_do_rdata),
        .O(mem_do_rdata_i_1_n_0));
  LUT5 #(
    .INIT(32'h0C00F400)) 
    mem_do_wdata_i_1
       (.I0(picorv32_core_n_25),
        .I1(picorv32_core_n_41),
        .I2(mem_do_wdata),
        .I3(resetn),
        .I4(mem_done),
        .O(mem_do_wdata_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFAAFB00000050)) 
    mem_instr_i_1
       (.I0(picorv32_core_n_157),
        .I1(mem_do_rdata),
        .I2(mem_la_firstword1),
        .I3(mem_do_wdata),
        .I4(picorv32_core_n_148),
        .I5(mem_axi_arprot),
        .O(mem_instr_i_1_n_0));
  LUT6 #(
    .INIT(64'hEAEAEAFFEAEAEA00)) 
    mem_valid_i_2
       (.I0(picorv32_core_n_154),
        .I1(picorv32_core_n_145),
        .I2(picorv32_core_n_161),
        .I3(picorv32_core_n_146),
        .I4(picorv32_core_n_144),
        .I5(mem_valid),
        .O(mem_valid_i_2_n_0));
  icyradio_picorv32_0_0_picorv32 picorv32_core
       (.Q(mem_wstrb),
        .ack_awvalid(ack_awvalid),
        .alu_out_0(alu_out_0),
        .clear_prefetched_high_word(clear_prefetched_high_word),
        .clk(clk),
        .compressed_instr(compressed_instr),
        .\cpu_state_reg[3]_0 (picorv32_core_n_158),
        .\cpu_state_reg[3]_1 (picorv32_core_n_163),
        .\cpu_state_reg[6]_0 ({p_3_out0,picorv32_core_n_39,picorv32_core_n_40,picorv32_core_n_41,picorv32_core_n_42}),
        .decoder_trigger1(decoder_trigger1),
        .eoi(eoi),
        .instr_add(instr_add),
        .instr_addi(instr_addi),
        .instr_jalr(instr_jalr),
        .instr_jalr_reg_0(picorv32_core_n_156),
        .instr_lb(instr_lb),
        .instr_lh(instr_lh),
        .instr_lui0(instr_lui0),
        .instr_lui_reg_0(picorv32_core_n_3),
        .instr_retirq(instr_retirq),
        .instr_sub(instr_sub),
        .instr_waitirq_reg_0(picorv32_core_n_155),
        .irq(irq),
        .irq_active_reg_0(picorv32_core_n_12),
        .irq_active_reg_1(irq_active_i_1_n_0),
        .irq_delay_reg_0(picorv32_core_n_49),
        .\irq_state_reg[0]_0 (picorv32_core_n_48),
        .is_beq_bne_blt_bge_bltu_bgeu(is_beq_bne_blt_bge_bltu_bgeu),
        .is_beq_bne_blt_bge_bltu_bgeu_reg_0(picorv32_core_n_151),
        .is_beq_bne_blt_bge_bltu_bgeu_reg_1(is_beq_bne_blt_bge_bltu_bgeu_i_1_n_0),
        .is_lbu_lhu_lw(is_lbu_lhu_lw),
        .is_lui_auipc_jal_jalr_addi_add_sub0(is_lui_auipc_jal_jalr_addi_add_sub0),
        .is_lui_auipc_jal_jalr_addi_add_sub_reg_0(is_lui_auipc_jal_jalr_addi_add_sub_i_1_n_0),
        .latched_branch(latched_branch),
        .latched_branch_reg_0(picorv32_core_n_16),
        .latched_branch_reg_1(latched_branch_i_1_n_0),
        .latched_compr_reg_0(picorv32_core_n_18),
        .latched_compr_reg_1(latched_compr_i_1_n_0),
        .latched_is_lb_reg_0(picorv32_core_n_22),
        .latched_is_lb_reg_1(latched_is_lb_i_1_n_0),
        .latched_is_lh_reg_0(picorv32_core_n_23),
        .latched_is_lh_reg_1(latched_is_lh_i_1_n_0),
        .latched_is_lu_reg_0(picorv32_core_n_24),
        .latched_is_lu_reg_1(latched_is_lu_i_1_n_0),
        .latched_stalu_reg_0(picorv32_core_n_21),
        .latched_stalu_reg_1(latched_stalu_i_1_n_0),
        .latched_store(latched_store),
        .latched_store_reg_0(picorv32_core_n_17),
        .latched_store_reg_1(latched_store_i_1_n_0),
        .mem_axi_arprot(mem_axi_arprot),
        .mem_axi_arvalid(mem_axi_arvalid),
        .mem_axi_arvalid_0(axi_adapter_n_3),
        .mem_axi_awaddr(mem_axi_awaddr),
        .mem_axi_awvalid(mem_axi_awvalid),
        .mem_axi_bready(mem_axi_bready),
        .mem_axi_bvalid(mem_axi_bvalid),
        .mem_axi_rdata(mem_axi_rdata),
        .\mem_axi_rdata[15] (p_5_in),
        .mem_axi_rdata_0_sp_1(picorv32_core_n_32),
        .mem_axi_rdata_1_sp_1(picorv32_core_n_147),
        .mem_axi_rdata_4_sp_1(picorv32_core_n_153),
        .mem_axi_rready(mem_axi_rready),
        .mem_axi_rvalid(mem_axi_rvalid),
        .mem_axi_wdata(mem_axi_wdata),
        .mem_axi_wvalid(mem_axi_wvalid),
        .mem_axi_wvalid_0(axi_adapter_n_2),
        .mem_do_prefetch_reg_0(picorv32_core_n_25),
        .mem_do_rdata(mem_do_rdata),
        .mem_do_rdata_reg_0(picorv32_core_n_149),
        .mem_do_rdata_reg_1(mem_do_rdata_i_1_n_0),
        .mem_do_wdata(mem_do_wdata),
        .mem_do_wdata_reg_0(picorv32_core_n_154),
        .mem_do_wdata_reg_1(mem_do_wdata_i_1_n_0),
        .mem_done(mem_done),
        .mem_instr_reg_0(mem_instr_i_1_n_0),
        .mem_la_firstword1(mem_la_firstword1),
        .\mem_state_reg[0]_0 (picorv32_core_n_144),
        .\mem_state_reg[0]_1 (picorv32_core_n_146),
        .\mem_state_reg[0]_2 (picorv32_core_n_157),
        .\mem_state_reg[0]_3 (picorv32_core_n_161),
        .mem_valid(mem_valid),
        .mem_valid_reg_0(picorv32_core_n_47),
        .mem_valid_reg_1(mem_valid_i_2_n_0),
        .prefetched_high_word_reg_0(picorv32_core_n_27),
        .prefetched_high_word_reg_1(prefetched_high_word_i_1_n_0),
        .resetn(resetn),
        .resetn_0(picorv32_core_n_145),
        .trap_reg_0(trap),
        .trap_reg_1(picorv32_core_n_148),
        .xfer_done(xfer_done));
  LUT6 #(
    .INIT(64'h0020003000200000)) 
    prefetched_high_word_i_1
       (.I0(picorv32_core_n_147),
        .I1(trap),
        .I2(resetn),
        .I3(clear_prefetched_high_word),
        .I4(picorv32_core_n_149),
        .I5(picorv32_core_n_27),
        .O(prefetched_high_word_i_1_n_0));
endmodule

(* ORIG_REF_NAME = "picorv32_axi_adapter" *) 
module icyradio_picorv32_0_0_picorv32_axi_adapter
   (xfer_done,
    ack_awvalid,
    ack_wvalid_reg_0,
    ack_arvalid_reg_0,
    xfer_done_reg_0,
    clk,
    mem_axi_awready,
    mem_axi_bready,
    resetn,
    mem_valid,
    mem_axi_arvalid,
    mem_axi_arready,
    mem_axi_wready);
  output xfer_done;
  output ack_awvalid;
  output ack_wvalid_reg_0;
  output ack_arvalid_reg_0;
  input xfer_done_reg_0;
  input clk;
  input mem_axi_awready;
  input mem_axi_bready;
  input resetn;
  input mem_valid;
  input mem_axi_arvalid;
  input mem_axi_arready;
  input mem_axi_wready;

  wire ack_arvalid_i_1_n_0;
  wire ack_arvalid_reg_0;
  wire ack_awvalid;
  wire ack_awvalid_i_1_n_0;
  wire ack_wvalid_i_1_n_0;
  wire ack_wvalid_reg_0;
  wire clk;
  wire mem_axi_arready;
  wire mem_axi_arvalid;
  wire mem_axi_awready;
  wire mem_axi_bready;
  wire mem_axi_wready;
  wire mem_valid;
  wire resetn;
  wire xfer_done;
  wire xfer_done_reg_0;

  LUT6 #(
    .INIT(64'h00EA0000AAAAAAAA)) 
    ack_arvalid_i_1
       (.I0(ack_arvalid_reg_0),
        .I1(mem_axi_arvalid),
        .I2(mem_axi_arready),
        .I3(xfer_done),
        .I4(mem_valid),
        .I5(resetn),
        .O(ack_arvalid_i_1_n_0));
  FDRE ack_arvalid_reg
       (.C(clk),
        .CE(1'b1),
        .D(ack_arvalid_i_1_n_0),
        .Q(ack_arvalid_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000EA0000000000)) 
    ack_awvalid_i_1
       (.I0(ack_awvalid),
        .I1(mem_axi_awready),
        .I2(mem_axi_bready),
        .I3(resetn),
        .I4(xfer_done),
        .I5(mem_valid),
        .O(ack_awvalid_i_1_n_0));
  FDRE ack_awvalid_reg
       (.C(clk),
        .CE(1'b1),
        .D(ack_awvalid_i_1_n_0),
        .Q(ack_awvalid),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00EA0000AAAAAAAA)) 
    ack_wvalid_i_1
       (.I0(ack_wvalid_reg_0),
        .I1(mem_axi_bready),
        .I2(mem_axi_wready),
        .I3(xfer_done),
        .I4(mem_valid),
        .I5(resetn),
        .O(ack_wvalid_i_1_n_0));
  FDRE ack_wvalid_reg
       (.C(clk),
        .CE(1'b1),
        .D(ack_wvalid_i_1_n_0),
        .Q(ack_wvalid_reg_0),
        .R(1'b0));
  FDRE xfer_done_reg
       (.C(clk),
        .CE(1'b1),
        .D(xfer_done_reg_0),
        .Q(xfer_done),
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
